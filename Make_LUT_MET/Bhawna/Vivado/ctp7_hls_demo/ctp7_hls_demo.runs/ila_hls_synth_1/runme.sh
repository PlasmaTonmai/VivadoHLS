#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/data/tools/SDK/2016.4/bin:/data/tools/Vivado/2016.4/ids_lite/ISE/bin/lin64:/data/tools/Vivado/2016.4/bin
else
  PATH=/data/tools/SDK/2016.4/bin:/data/tools/Vivado/2016.4/ids_lite/ISE/bin/lin64:/data/tools/Vivado/2016.4/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/data/tools/Vivado/2016.4/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/data/tools/Vivado/2016.4/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/data/skamat/Github/VivadoHLS/Make_LUT_MET/Bhawna/Vivado/ctp7_hls_demo/ctp7_hls_demo.runs/ila_hls_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log ila_hls.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source ila_hls.tcl
