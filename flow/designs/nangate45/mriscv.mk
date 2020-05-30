export DESIGN_NICKNAME = mriscv
export DESIGN_NAME = mriscvcore
export PLATFORM    = nangate45

export VERILOG_FILES = $(wildcard ./designs/src/mriscv/*.v)
export SDC_FILE      = ./designs/src/mriscv/mriscv.sdc

# These values must be multiples of placement site
# x=0.19 y=1.4
export DIE_AREA    = 0 0 135 135
export CORE_AREA   = 10.07 11.2 125 125

export CLOCK_PERIOD = 10.000
