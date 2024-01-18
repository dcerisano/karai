while true
do
  echo "HOST: $(hostname)"                                                                                    > ~/atari800/ATR/RAW.DAT
  echo "  OS: $(lsb_release -ds)"                                                                            >> ~/atari800/ATR/RAW.DAT
  echo "  UP: $(uptime -p)"                                                                                  >> ~/atari800/ATR/RAW.DAT
  echo "TIME: $(date)"                                                                                       >> ~/atari800/ATR/RAW.DAT
  top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print "%CPU: TOTAL " 100 - $1 "%"}' >> ~/atari800/ATR/RAW.DAT
  top -b -n 5 | head -n 12  | tail -n 5 | cut  -c51-56,72-100                                                >> ~/atari800/ATR/RAW.DAT
  tail -n 5 /var/log/apache2/access.log | cut -c2-22,30-80 | cut -d' ' -f1,2                                 >> ~/atari800/ATR/RAW.DAT
  awk '{printf "%-37s\n",$0}' RAW.DAT                                                                         > ~/atari800/ATR/FIXED.DAT 
  tr '\n' '\233' < ~/atari800/ATR/FIXED.DAT                                                                   > ~/atari800/ATR/FRAME.DAT 
  sleep 1
done
