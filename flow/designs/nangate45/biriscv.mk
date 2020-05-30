export DESIGN_NICKNAME = biriscv
export DESIGN_NAME = riscv_core
export PLATFORM    = nangate45

export VERILOG_FILES = $(wildcard ./designs/src/biriscv/*/*.v)
export SDC_FILE      = ./designs/src/biriscv/biriscv.sdc

# These values must be multiples of placement site
# x=0.19 y=1.4
export DIE_AREA    = 0 0 830 830
export CORE_AREA   = 10.07 11.2 820 820

export CLOCK_PERIOD = 10.000
