@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.1 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Sat Apr 04 16:55:30 -0600 2020
REM SW Build 2552052 on Fri May 24 14:49:42 MDT 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
echo "xelab -wto 09589d4c229e4f24b8a7e740cb7e27f0 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot test_bench_func_synth xil_defaultlib.test_bench -log elaborate.log"
call xelab  -wto 09589d4c229e4f24b8a7e740cb7e27f0 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot test_bench_func_synth xil_defaultlib.test_bench -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
