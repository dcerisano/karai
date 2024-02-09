# This bash script converts 8bitworkshop.com/dithertron ANTIC display memory files
# (mode D / GR.7 memory) to ATARI Atari DOS files that can be read by Atari BASIC.
# Reformats dithertron file (atari.bin) to Atari DOS file 
# 40-byte EOL (/233) terminated GR.7 rasters (ATARI.GR7). 

split -b 40 --filter='cat;echo -n " "' atari.bin |  tr ' ' '\233' > ATARI.GR7
