<div align="center">

<img src="docs/images/logo.png" alt="EchoLens" width="96" height="96">

# EchoLens

**Be anyone on camera.**
An AI camera for Windows. Upload a photo, start the AI, and appear as that person in Zoom, WhatsApp, Teams, Google Meet and any other app that uses a webcam.

[![Download for Windows](https://img.shields.io/badge/Download-Windows%2011-7C5CFF?style=for-the-badge&logo=windows11&logoColor=white)](https://github.com/vgs247/echolens-download/releases/download/v2.1.0/EchoLensSetup-2.1.0.exe)

[![Latest version](https://img.shields.io/github/v/release/YOUR-USERNAME/echolens-download?label=version&color=00D4FF)](https://github.com/vgs247/echolens-download/releases/tag/v2.1.0
)
[![Downloads](https://img.shields.io/github/downloads/YOUR-USERNAME/echolens-download/total?color=22C55E)](https://github.com/vgs247/echolens-download/releases/tag/v2.1.0)

[Website](https://echolens-eo3ptzk25-seas1.vercel.app/) · [Install guide](#install) · [Troubleshooting](#troubleshooting) · [Support](#support)

<img src="docs/images/screenshot-app.png" alt="The EchoLens app" width="820">

</div>

---

## What it does

- **Become anyone, live.** Pick a clear photo of a person and the AI turns your webcam video into them, following your head and mouth movements in real time.
- **Works in your usual apps.** EchoLens adds a camera called **EchoLens Camera** to Windows. Choose it in Zoom, WhatsApp, Teams, Meet, OBS and other apps, the same way you'd choose any webcam.
- **Private by design.** Other people only ever see the AI video. Before the AI starts, when you stop it, or if anything goes wrong, EchoLens Camera shows **black**, never your real webcam.
- **Pay only for the time you use.** The countdown runs only while the AI camera is on. You get warnings at 5 minutes and 1 minute left.
- **Smooth mode** for slower PCs or internet connections.

## Requirements

| | |
|---|---|
| **Windows** | Windows 11, 64-bit (EchoLens Camera uses a camera feature that Windows 10 doesn't have) |
| **Webcam** | Any built-in or USB webcam (720p recommended) |
| **Internet** | A stable connection. About 3–4 Mbps upload is recommended during calls |
| **Account** | Free to create in the app, plus AI camera time ([buying time](#buying-time)) |

## Install

1. **Download** [`EchoLensSetup.exe`](https://github.com/vgs247/echolens-download/releases/download/v2.1.0/EchoLensSetup-2.1.0.exe) (always the latest version).
2. **Open it.** Windows may show a blue box, **"Windows protected your PC"**. This happens because EchoLens is new and not yet code-signed. Click **More info**, then **Run anyway**.

   <img src="docs/images/smartscreen.png" alt="Windows protected your PC → More info → Run anyway" width="520">

3. Click **Yes** when Windows asks for permission. The installer needs this to add *EchoLens Camera* for all apps on your PC.
4. Follow the steps and click **Finish**. EchoLens opens.
5. **Restart your PC** if Zoom or another app doesn't list *EchoLens Camera* yet.

> **Is it safe?** Only download EchoLens from this page or from our website. To check that your file wasn't changed, compare its fingerprint with the one in the [release notes](https://github.com/vgs247/echolens-download/releases). See [Verify your download](#verify-your-download).
>
> **Your antivirus blocked it?** Don't turn your antivirus off. Open your antivirus, find EchoLens under *Quarantine* or *Protection history*, and choose **Restore** or **Allow**. We submit every version to Microsoft for checking, so warnings usually go away within a few days of a release.

## Quick start

1. **Create your account** in the app (or sign in). Your **username** is important: it's your payment reference.
2. **Buy time.** Click **Buy time**, choose how much, pay, and send us the screenshot (see below).
3. **Upload a photo** of who you want to become. Use a clear, well-lit photo of one person facing the camera. Full body is best.
4. Click **START AI CAMERA** and wait until you see yourself transformed in the preview.
5. **Then** pick **EchoLens Camera** in your video app:
   - **Zoom:** Settings → Video → Camera
   - **WhatsApp:** during a video call → ⋯ → Camera
   - **Teams / Meet:** Settings → Devices → Camera
6. Click **STOP AI CAMERA** when you're done. Other people see black, never your real camera.

<img src="docs/images/screenshot-zoom.png" alt="EchoLens Camera selected in Zoom" width="640">

## Buying time

1. In the app, click **Buy time** and enter the minutes or hours you want. The price shows immediately. The minimum purchase is shown in the app.
2. Pay with one of the payment methods listed, and use **your username** as the payment reference.
3. Send a **screenshot of the payment** to one of our contacts. The app has buttons for WhatsApp, Telegram, Snapchat and the others we use.
4. Click **I've sent the payment**.
5. Your time is added **within about 30 minutes** after we confirm the payment. Click the refresh button on the time card to see it.

## Tips for the best result

- **Light your face** from the front, and avoid a bright window behind you.
- **Photo:** sharp, well lit, one person, facing forward. Small or blurry photos give a noisy result.
- **Choppy video?** The bar under the preview shows *AI fps* and *Camera fps*:
  - **AI fps low:** usually your internet. Close downloads and streams, or move closer to the router or use a cable.
  - **Camera fps low but AI fps fine:** your PC is busy. Close other apps, plug in your laptop, set Windows power mode to *Best performance*, and turn on **Smooth mode**.
- Start the AI **before** you join the call or switch cameras.

## Troubleshooting

<details>
<summary><b>"EchoLens Camera" is not in the camera list</b></summary>

- Restart your PC once after installing.
- Make sure you're on **Windows 11** (Settings → System → About).
- Re-run the installer (it repairs the camera).
- Start menu → **EchoLens Camera Diagnostics** creates a report on your Desktop. Send it to support.
</details>

<details>
<summary><b>The other person sees a black screen</b></summary>

That's expected until the AI is running. Click **START AI CAMERA** in EchoLens and wait for the preview to transform. If it's still black, check that you have time left and that the app says *Streaming the AI video*.
</details>

<details>
<summary><b>"Camera not available" / "Camera in use"</b></summary>

- In **Settings → Privacy & security → Camera**, turn on *Camera access*, *Let apps access your camera* and *Let desktop apps access your camera*.
- Close other apps that use your real webcam. EchoLens needs it for the AI input.
</details>

<details>
<summary><b>"Windows protected your PC" or the antivirus blocks the installer</b></summary>

See [Install](#install). Click **More info → Run anyway**. For antivirus, restore or allow the file from quarantine. Please don't disable your antivirus.
</details>

<details>
<summary><b>I paid but my time isn't showing</b></summary>

Time is added within about 30 minutes after we confirm the payment. Click refresh on the time card. If it's been longer, message us with your **username** and the payment screenshot.
</details>

## Verify your download

Every release lists the file's **SHA-256** fingerprint. To check yours, open PowerShell in your Downloads folder and run:

```powershell
Get-FileHash .\EchoLensSetup.exe -Algorithm SHA256
```

The long code must match the one in the release notes exactly. If it doesn't, delete the file and download it again from this page.

## Uninstall

Settings → Apps → Installed apps → **EchoLens** → Uninstall. This also removes *EchoLens Camera* from Windows.

## Privacy

- Your real webcam is only used as the input to the AI. It's never sent to the apps you call with.
- Your photo is uploaded only to generate the AI video during your session.
- Read the full [Privacy policy](https://YOUR-WEBSITE/privacy) and [Terms](https://YOUR-WEBSITE/terms).
- Use EchoLens responsibly: don't impersonate real people without their consent or use it to mislead or defraud anyone.

## Support

- **Email:** support@echolens.app
- **Payments & help:** our contacts are listed in the app under **Buy time**.
- **Found a bug?** [Open an issue](https://github.com/YOUR-USERNAME/echolens-download/issues/new/choose).

When you write, include your **username**, your Windows version and, for camera problems, the report from **EchoLens Camera Diagnostics**.

---

<div align="center">
<sub>© EchoLens. All rights reserved. This repository hosts the Windows installer only. See <a href="LICENSE.md">LICENSE.md</a>.</sub>
</div>
