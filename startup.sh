#!/bin/bash

PID=$(pgrep -f Hello | awk '{print $1}')
if [[ "" != "$PID" ]]; then
  echo "killing $PID"
  sudo kill $PID
fi
echo "starting jar"
nohup sudo java -jar ./target/HelloECTwo-1.0-SNAPSHOT-jar-with-dependencies.jar &
