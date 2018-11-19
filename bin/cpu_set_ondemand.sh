#!/bin/bash

# Copyright (c) 2017 embed-dsp
# All Rights Reserved

# $Author:   Gudmundur Bogason <gb@embed-dsp.com> $
# $Date:     $
# $Revision: $

# Scales the frequency of the CPU's dynamically according to current load.
# Jumps to the highest frequency and then possibly back off as the idle time increases.

# Get number of processors.
N=`nproc --all`

for (( id=0; id<$N; id++ ))
do
    echo ondemand > /sys/devices/system/cpu/cpu$id/cpufreq/scaling_governor
done
