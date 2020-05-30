export DESIGN_NICKNAME = serv
export DESIGN_NAME = serv_top
export PLATFORM    = nangate45

export VERILOG_FILES = $(wildcard ./designs/src/serv/*.v)
export SDC_FILE      = ./designs/src/serv/serv.sdc

# These values must be multiples of placement site
# x=0.19 y=1.4
export DIE_AREA    = 0 0 120 120
export CORE_AREA   = 10.07 11.2 110 110

export CLOCK_PERIOD = 10.000
