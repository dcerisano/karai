# I.R.A.T.A. Integrated Repository And Targeting for Atari

- A dev repo and build targeting environment for Atari 8-bit made of popular components (Git, Altirra, AspeQT, bash, etc)
- Develop on modern laptops or desktops using emulator, deploy to authentic vintage 8-bit targets.
- Produces self booting Atari floppy images (bootable ATR files)
- A sample project (atariVT) to repurpose an 8K Atari 400 as a server monitor.
- Should run on ANY 8-bit Atari computer with minimum 8K RAM.
- For creating and distributing legit retro apps with optional modern host integration.

![irata](https://github.com/dcerisano/IRATA/assets/1641613/7c16af95-4f06-459b-a8f2-cc557cf877fe)

https://github.com/dcerisano/IRATA/assets/1641613/958b9b29-7123-4d48-b003-43f87c0dc282

- Uses AspectQT on the host with sio2usb connector (FTDI) to the 400 SIO (see diagram)
- Host acts as 810 floppy drive to boot the 400 (D1:/../ATR/ATARIVT.ATR)
- Server script (atarivt.sh) streams data frames to shared folder (D2:/../ATR)
- Used Altirra Emulator for development with real 8K Atari 400 for testing.

- DONE: Page flipped data frame buffering (40x24 text frame)
- DONE: Animated GR.7 autorun.bas boot splash using DLI
- DONE: dithertron.sh for converting [dithertron](https://8bitworkshop.com/dithertron/#sys=atari8.d&image=seurat.jpg) images to Atari-readable files
- TODO: Port BASH script to MSDOS batch file
- TODO: Animated LCARS graphics, of course.
