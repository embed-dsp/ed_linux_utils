#!/bin/bash

# Copyright (c) 2017 embed-dsp
# All Rights Reserved

# $Author:   Gudmundur Bogason <gb@embed-dsp.com> $
# $Date:     $
# $Revision: $

# Run the CPU's at the maximum frequency.

# Get number of processors.
N=`nproc --all`

for (( id=0; id<$N; id++ ))
do
    echo performance > /sys/devices/system/cpu/cpu$id/cpufreq/scaling_governor
done
