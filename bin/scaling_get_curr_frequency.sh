#!/bin/bash

# Copyright (c) 2018-2019 embed-dsp, All Rights Reserved.
# Author: Gudmundur Bogason <gb@embed-dsp.com>
#
# This file is part of ed_linux_utils.

# Get number of processors.
N=`nproc --all`

# Determine number of digits for displaying CPU id.
if [ $N -lt 10 ] ; then
    digits=1
elif [ $N -lt 100 ] ; then
    digits=2
else
    digits=3
fi

# ...
for (( id=0; id<$N; id++ ))
do
    freq=`cat /sys/devices/system/cpu/cpu$id/cpufreq/scaling_cur_freq`
    cpu_id=`printf "CPU%0*d:" $digits $id`
    echo "$cpu_id $freq kHz"
done
