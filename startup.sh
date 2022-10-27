#!/bin/bash
PID=$(pgrep -f Hello | awk '{print $1}')
if [ "" != "$PID" ]; then
  echo "killing $PID"
  kill $PID
fi
echo "starting jar"
nohup java -jar ./target/HelloECTwo-1.0-SNAPSHOT-jar-with-dependencies.jar 1>logs.out 2>error.out &
