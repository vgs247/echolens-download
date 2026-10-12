# Security

## Download safely
- Only download EchoLens from this repository's
  [Releases](https://github.com/YOUR-USERNAME/echolens-download/releases) page or from our website,
  which links here.
- Every release lists the **SHA-256** fingerprint of `EchoLensSetup.exe`. Check yours with:

  ```powershell
  Get-FileHash .\EchoLensSetup.exe -Algorithm SHA256
  ```
- EchoLens will **never** ask you to disable your antivirus, give remote access to your PC, or send
  your password. Payments are only made to the details shown inside the app under **Buy time**.

## Why Windows shows a warning
The installer isn't code-signed yet, so Windows SmartScreen shows "Windows protected your PC" for
new versions. Click **More info → Run anyway** only if you downloaded it from the links above.

## Report a vulnerability
Please don't open a public issue. Email **support@echolens.app** with the subject
"Security", a description and steps to reproduce. We'll reply within a few days.
