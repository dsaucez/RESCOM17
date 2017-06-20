#!/bin/bash
if [ -d config ]
then
   sudo rm -rf config
fi
mkdir config

if [ -d log ]
then
  sudo rm -rf log
fi
mkdir log

python myController.py &
controller=$!
sudo ./cleanup2.sh && sudo ./run_demo2.sh
sudo killall cplane.py
kill $!
