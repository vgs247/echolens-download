<#
  Publishes a new EchoLens version to GitHub Releases in one step.

  What it does:
    1. Takes the installer Inno Setup built  (dist\EchoLensSetup-<version>.exe)
    2. Copies it as EchoLensSetup.exe        (same name every time -> the
       "latest/download/EchoLensSetup.exe" link on the website never changes)
    3. Computes its SHA-256 fingerprint and adds it to the release notes
    4. Creates the release on GitHub and uploads the file

  Needs the GitHub CLI once:  winget install --id GitHub.cli   then   gh auth login

  Usage (from the echolens-download folder):
    .\scripts\publish-release.ps1 -Version 2.1.0 -Installer "C:\Users\josep\AndroidStudioProjects\echolens_app\dist\EchoLensSetup-2.1.0.exe"
  Add -Draft to review the release on GitHub before it goes public.
#>
param(
    [Parameter(Mandatory = $true)][string]$Version,
    [Parameter(Mandatory = $true)][string]$Installer,
    [string]$Repo = "",
    [switch]$Draft
)

$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $PSScriptRoot

if ($Version -notmatch '^\d+\.\d+\.\d+$') { throw "Version must look like 2.1.0" }
if (-not (Test-Path $Installer)) { throw "Installer not found: $Installer" }
if (-not (Get-Command gh -ErrorAction SilentlyContinue)) {
    throw "GitHub CLI not found. Install it with:  winget install --id GitHub.cli   then run:  gh auth login"
}

$notes = Join-Path $root "release-notes\v$Version.md"
if (-not (Test-Path $notes)) { throw "Write the release notes first: $notes" }

# 1-2. Fixed file name for the "latest" download link.
$out = Join-Path $root "out\v$Version"
New-Item -ItemType Directory -Force -Path $out | Out-Null
$exe = Join-Path $out "EchoLensSetup.exe"
Copy-Item $Installer $exe -Force

# 3. Fingerprint, added to the notes (the README tells people to compare it).
$hash = (Get-FileHash $exe -Algorithm SHA256).Hash
$sizeMb = [math]::Round((Get-Item $exe).Length / 1MB, 1)
"$hash  EchoLensSetup.exe" | Set-Content -Path (Join-Path $out "SHA256SUMS.txt") -Encoding ascii
$finalNotes = Join-Path $out "notes.md"
(Get-Content $notes -Raw) + @"

## Verify your download
``EchoLensSetup.exe`` ($sizeMb MB), SHA-256:
``````
$hash
``````
Check it in PowerShell: ``Get-FileHash .\EchoLensSetup.exe -Algorithm SHA256``
"@ | Set-Content -Path $finalNotes -Encoding utf8

# 4. Release.
$ghArgs = @("release", "create", "v$Version", $exe, (Join-Path $out "SHA256SUMS.txt"),
          "--title", "EchoLens $Version", "--notes-file", $finalNotes, "--latest")
if ($Repo) { $ghArgs += @("--repo", $Repo) }
if ($Draft) { $ghArgs += "--draft" }
& gh @ghArgs
if ($LASTEXITCODE -ne 0) { throw "gh release create failed" }

Write-Host ""
Write-Host "Published EchoLens $Version" -ForegroundColor Green
Write-Host "SHA-256: $hash"
Write-Host "Download link (never changes):"
$name = if ($Repo) { $Repo } else { (gh repo view --json nameWithOwner -q .nameWithOwner) }
Write-Host "  https://github.com/$name/releases/latest/download/EchoLensSetup.exe"
Write-Host ""
Write-Host "Next: submit the file to Microsoft so antivirus warnings clear:"
Write-Host "  https://www.microsoft.com/wdsi/filesubmission  (Software developer)"
