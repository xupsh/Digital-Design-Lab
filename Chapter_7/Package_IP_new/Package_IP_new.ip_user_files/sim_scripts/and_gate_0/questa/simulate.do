onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib and_gate_0_opt

do {wave.do}

view wave
view structure
view signals

do {and_gate_0.udo}

run -all

quit -force
