#!/bin/sh
pwd
date=`date +'%d-%m-%Y_%H:%M'`
#path=`sudo find / -iname "ABC.exe" |ls -lrt |tail -1 |awk -F " " '{print $NF}'`
path=`pwd`
sudo cp  $path/ABC.exe $path/ABC_$date.exe
sudo cp -p $path/ABC_$date.exe /home/ec2-user/jenkinsBackup/
make clean
sudo rm -rf ABC_$date.exe ABC.exe
sudo ls /home/ec2-user/jenkinsBackup/
