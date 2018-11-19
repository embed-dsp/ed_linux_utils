#!/bin/bash

# Copyright (c) 2017 embed-dsp
# All Rights Reserved

# $Author:   Gudmundur Bogason <gb@embed-dsp.com> $
# $Date:     $
# $Revision: $

# Get number of processors.
N=`nproc --all`

for (( id=0; id<$N; id++ ))
do
    freq=`cat /sys/devices/system/cpu/cpu$id/cpufreq/scaling_cur_freq`
    echo "CPU$id: $freq Hz"
done
