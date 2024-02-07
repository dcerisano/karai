# atariVT

- A project to repurpose my Atari 400 as a server monitor.
- Uses AspectQT on the host with sio2usb connector (FTDI) to the 400 SIO.
- Host acts as 810 floppy drive to boot the 400 (D1:/../ATR/ATARIVT.ATR)
- Server script (atarivt.sh) streams data frames to shared folder (D2:/../ATR)
- Used Atari800 (Altirra) for development with real 8K Atari 400 for testing.
- Should run on ANY 8-bit Atari computer with minimum 8K RAM.

- Page flipping frame buffer (40x24 text frame)
- DONE: Animated GR.7 autorun.bas boot splash using DLI
- DONE: dithertron.sh for converting dithertron file to Atari-readable file
- TODO: Animated LCARS graphics, of course.

https://github.com/dcerisano/atariVT/assets/1641613/5dabed1b-acfc-47c6-b7b9-8cb8448e9d7d

