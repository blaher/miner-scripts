echo "Starting restart check script..."
# TODO: Code to check for amount of GPUs

file1=`md5sum /home/blaher/claymore/nohup.out | awk '{ print $1 }'`
file2=`md5sum /home/blaher/claymore/nohup.prev.out | awk '{ print $1 }'`

echo "Checking if previous output file exists..."
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
    cp /home/blaher/claymore/nohup.out /home/blaher/claymore/nohup.prev.out
    sudo shutdown -r now
  else
    echo "Miner is still running..."
    cp /home/blaher/claymore/nohup.out /home/blaher/claymore/nohup.prev.out
  fi
fi
