#!/bin/bash
#adb root
#adb shell setenforce 0
./analyze_suspend.py -verbose -adb  /usr/bin/adb -rtcwake 10 -multi 5 20 -f -m mem
./analyze_suspend.py -verbose -adb  /usr/bin/adb -rtcwake 10 -multi 5 20 -f -m freeze
