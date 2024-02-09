# Integrated Repository And Targeting for Atari

![irata](https://github.com/dcerisano/IRATA/assets/1641613/37469582-07de-4a31-b626-396587d05414)

https://github.com/dcerisano/IRATA/assets/1641613/958b9b29-7123-4d48-b003-43f87c0dc282

- A dev repo and build targeting environment for Atari 8-bit
- Popular components (Git, Altirra, AspeQT, bash, etc)
- Develop on laptops or desktops using modern 8-bit emulator, deploy to vintage 8-bit targets.
- Produces self booting Atari floppy images (bootable ATR files)
- A sample project (atariVT) to repurpose an 8K Atari 400 as a server monitor.
- For creating and distributing legit Atari floppy disk apps that can leverage modern resources.
- Uses AspectQT on the host with sio2usb connector (FTDI) to the 400 SIO (see diagram)
- Host acts as 810 floppy drive to boot the 400 (D1:/../ATR/ATARIVT.ATR)
- Server script (atarivt.sh) streams data frames to shared folder (D2:/../ATR)
- Used Altirra Emulator for development with real 8K Atari 400 for testing.

- TODO: Port BASH script to MSDOS batch file

