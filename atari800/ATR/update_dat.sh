HOME=~/git/atariVT/atari800/ATR
cd $HOME
while true
do
  echo "HOST: $(hostname)"                                                                                    > RAW.DAT
  echo "  OS: $(lsb_release -ds)"                                                                            >> RAW.DAT
  echo "  UP: $(uptime -p)"                                                                                  >> RAW.DAT
  echo "TIME: $(date)"                                                                                       >> RAW.DAT
  top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print "%CPU: TOTAL " 100 - $1 "%"}' >> RAW.DAT
  top -b -n 5 | head -n 12  | tail -n 5 | cut  -c51-56,72-100                                                >> RAW.DAT
  tail -n 5 /var/log/apache2/access.log | cut -c2-22,30-80 | cut -d' ' -f1,2                                 >> RAW.DAT
  awk '{printf "%-37s\n",$0}' RAW.DAT                                                                         > FIXED.DAT 
  tr '\n' '\233' < FIXED.DAT                                                                                  > FRAME.DAT 
  sleep 1
  echo TICK
done
