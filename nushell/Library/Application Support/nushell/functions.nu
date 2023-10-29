export def stream [password: string] {
  ffmpeg -re -stream_loop -1 -i ~/smrtzr/resources/videos/10min-count-up.mp4 -c:v libx264 -c:a aac -f flv $"rtmp://stream.smartzer.com:5222/app/($password)"
}

export def yi [] {
  yarn install;
  yarn pluginRebuild;
  yarn core;
}

export def kills [] {
  echo "Stopping smrtzr shit";
  echo "Killing all node processes";
  pkill -f "node";
  echo "Killing all java processes";
  pkill -f "java";
  echo "Killing all webpack processes";
  pkill -f "webpack";
  echo "Killing ports";
  cd ~/smrtzr/smrtzr;
  yarn kill;
  cd ~
}

export def hello [name: string] {
    $"hello ($name)!"
}
