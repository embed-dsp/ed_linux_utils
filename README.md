
# Linux Utilities

This package contains a set of utilities for use with the Linux operating system.


# Scripts

The following scripts are located in the `bin` directory:

<img src="doc/utilities.png" alt="utilities" width="650"/>

List the current frequencies for all of the CPU's in the system.
```sh
cpu_get_curr_freq.sh
```

List the available scaling frequencies for all of the CPU's in the system.
```sh
cpu_get_frequencies.sh
```

List the available frequency scaling governors for all of the CPU's in the system.
```sh
cpu_get_governors.sh
```

Set the frequency scaling governors for all of the CPU's to `ondemand` so that 
the frequency of the CPU's is changed dynamical according to current load.
```sh
cpu_set_ondemand.sh
```

Set the frequency scaling governors for all of the CPU's to `performance` so that 
the CPU's run at the maximum frequency.
```sh
cpu_set_performance.sh
```

Set the frequency scaling governors for all of the CPU's to `powersave` so that 
the CPU's run at the minimum frequency.
```sh
cpu_set_powersave.sh
```
