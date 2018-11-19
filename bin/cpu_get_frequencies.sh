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
    frequencies=`cat /sys/devices/system/cpu/cpu$id/cpufreq/scaling_available_frequencies`
    echo "CPU$id: $frequencies Hz"
done
