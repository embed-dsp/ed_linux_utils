#!/bin/bash

# Copyright (c) 2018-2019 embed-dsp, All Rights Reserved.
# Author: Gudmundur Bogason <gb@embed-dsp.com>
#
# This file is part of ed_linux_utils.

# Run the CPU's at the minimum frequency.

# Get number of processors.
N=`nproc --all`

# ...
for (( id=0; id<$N; id++ ))
do
    echo powersave > /sys/devices/system/cpu/cpu$id/cpufreq/scaling_governor
done
