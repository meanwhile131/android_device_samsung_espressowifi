#!/bin/sh
# loggy.sh.

date=`date +%F_%H-%M-%S`
# Permission to write under /cache is granted to loggy_domain in init.te.
logcat -b all -v time -f  /cache/logcat_${date}.txt &
dmesg -w > /cache/kmsg_${date}.txt &
