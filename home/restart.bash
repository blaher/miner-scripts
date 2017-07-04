# TODO: Code to check for amount of GPUs

file1=`md5 /home/blaher/claymore/nohup.out`
file2=`md5 /home/blaher/claymore/nohup.prev.out`

if [ ! -f /home/blaher/claymore/nohup.prev.out ]
then
  echo "Creating previous output file to compare..."
  cp /home/blaher/claymore/nohup.out /home/blaher/claymore/nohup.prev.out
else
  echo "Previous output file to compare exists..."
  echo "Files: $file1 to $file2"
  if [ "$file1" = "$file2" ]
  then
    echo "Miner is down, restarting..."
    sudo shutdown -r now
  fi
fi
