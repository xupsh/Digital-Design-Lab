vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib -v2k5 \
"../../../../Package_IP_new.srcs/sources_1/ip/and_gate_0/Package_IP_new.srcs/sources_1/new/and_gate.v" \
"../../../../Package_IP_new.srcs/sources_1/ip/and_gate_0/sim/and_gate_0.v" \


vlog -work xil_defaultlib "glbl.v"

