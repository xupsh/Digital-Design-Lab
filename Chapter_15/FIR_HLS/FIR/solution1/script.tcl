############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project FIR
set_top fir
add_files fir.c
add_files fir.h
add_files -tb fir_test.c
add_files -tb out.gold.dat
open_solution "solution1"
set_part {xc7a35tcpg236-1}
create_clock -period 10 -name default
#source "./FIR/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
