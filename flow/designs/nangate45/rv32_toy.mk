export DESIGN_NICKNAME = rv32_toy
export DESIGN_NAME = Core
export PLATFORM    = nangate45

export VERILOG_FILES = $(wildcard ./designs/src/rv32_toy/*.v)
export SDC_FILE      = ./designs/src/rv32_toy/rv32_toy.sdc

# These values must be multiples of placement site
# x=0.19 y=1.4
export DIE_AREA    = 0 0 663 663
export CORE_AREA   = 10.07 11.2 653 653

export CLOCK_PERIOD = 10.000
