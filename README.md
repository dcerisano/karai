# Integrated Repository And Targeting for Atari (IRATA)

![irata](https://github.com/dcerisano/IRATA/assets/1641613/37469582-07de-4a31-b626-396587d05414)

## Example Project - Atari VT
- A sample project (atariVT) included to repurpose an 8K Atari 400 as a host monitor.
  
https://github.com/dcerisano/IRATA/assets/1641613/958b9b29-7123-4d48-b003-43f87c0dc282

## Features
- Develop using modern 8-bit emulator, deploy to vintage 8-bit targets.
- Create and distribute legit Atari floppy disk apps that can leverage modern resources.
- Popular components (Git, bash, Atari BASIC, Altirra, AspeQT, etc)
- Produces Atari bootable floppy disk apps (ATR files)
- 
## Notes
- Uses AspectQT on host with USB-to-TTL cable (FTDI) connected to Atari SIO port (see diagram)
- Host acts as 810 floppy drive to boot Atari (D1:/../ATR/ATARIVT.ATR)
- Server script (atarivt.sh) streams preformatted Atari data frames to shared folder (D2:/../ATR)
- Used Altirra Emulator for development with real 8K Atari 400 for testing.

## TODO
- Port BASH script to MSDOS batch file
- SIO to WebUSB (eg. web-based 810 drive, )

