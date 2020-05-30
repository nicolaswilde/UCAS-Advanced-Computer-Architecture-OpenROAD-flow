export DESIGN_NICKNAME = darkriscv
export DESIGN_NAME = darkriscv
export PLATFORM    = nangate45

export VERILOG_FILES = $(wildcard ./designs/src/darkriscv/rtl/darkriscv.v)
export SDC_FILE      = ./designs/src/darkriscv/darkriscv.sdc

# These values must be multiples of placement site
# x=0.19 y=1.4
export DIE_AREA    = 0 0 369 369
export CORE_AREA   = 10.07 11.2 359 359

export CLOCK_PERIOD = 10.000
