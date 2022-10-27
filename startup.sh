#!/bin/bash
BUILD_ID=dontKillMe nohup java -jar ./target/HelloECTwo-1.0-SNAPSHOT-jar-with-dependencies.jar 1>logs.out 2>error.out &
