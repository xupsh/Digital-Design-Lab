############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2013 Xilinx Inc. All rights reserved.
############################################################

# Create a Vivado HLS project
open_project -reset fir_prj
set_top fir
add_files fir.c
add_files -tb out.gold.dat
add_files -tb fir_test.c

# Solution1 *************************
open_solution -reset "solution1"
set_part  {xc7k160tfbg484-2}
create_clock -period 10

# Run C simulation
csim_design
# Run Synthesis
csynth_design
# Run RTL verification
cosim_design
# Create the IP package
export_design

exit



