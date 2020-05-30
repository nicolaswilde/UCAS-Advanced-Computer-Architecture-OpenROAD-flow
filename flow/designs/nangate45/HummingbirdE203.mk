export DESIGN_NICKNAME = HummingbirdE203
export DESIGN_NAME = e203_cpu
export PLATFORM    = nangate45

export VERILOG_FILES = $(wildcard ./designs/src/HummingbirdE203/*/*.v)
export SDC_FILE      = ./designs/src/HummingbirdE203/HummingbirdE203.sdc

# These values must be multiples of placement site
# x=0.19 y=1.4
export DIE_AREA    = 0 0 444 444
export CORE_AREA   = 10.07 11.2 434 434

export CLOCK_PERIOD = 10.000
