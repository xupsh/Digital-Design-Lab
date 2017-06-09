@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto a3aa3d8fd32e42ff9637b041b1f5e681 -m64 --debug typical --relax --maxdelay -L xil_defaultlib -L simprims_ver -L secureip --snapshot tb_time_impl -transport_int_delays -pulse_r 0 -pulse_int_r 0 xil_defaultlib.tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
