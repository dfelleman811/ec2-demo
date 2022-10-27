#!/bin/bash
PID=$( ps -ef | grep .jar | awk '{print $2}')
if [ "" != "$PID" ]; then
  echo "killing $PID"
  kill $PID
fi
echo "starting jar"
nohup java -jar ./target/HelloECTwo-1.0-SNAPSHOT-jar-with-dependencies.jar 1>logs.out 2>error.out &
