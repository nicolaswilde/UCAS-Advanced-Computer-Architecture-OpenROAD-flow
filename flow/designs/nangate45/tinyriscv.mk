export DESIGN_NICKNAME = tinyriscv
export DESIGN_NAME = tinyriscv
export PLATFORM    = nangate45

export VERILOG_FILES = $(wildcard ./designs/src/tinyriscv/core/*.v)
export SDC_FILE      = ./designs/src/tinyriscv/tinyriscv.sdc

# These values must be multiples of placement site
# x=0.19 y=1.4
export DIE_AREA    = 0 0 435 435
export CORE_AREA   = 10.07 11.2 425 425

export CLOCK_PERIOD = 10.000
