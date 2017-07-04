# TODO: Code to check for amount of GPUs

if [ ! -f /home/blaher/claymore/nohup.prev.out ]; then
  cp /home/blaher/claymore/nohup.out /home/blaher/claymore/nohup.prev.out
else
  if cmp /home/blaher/claymore/nohup.out /home/blaher/claymore/nohup.prev.out >/dev/null 2>&1
  then
    sudo shutdown -r now
  fi
fi