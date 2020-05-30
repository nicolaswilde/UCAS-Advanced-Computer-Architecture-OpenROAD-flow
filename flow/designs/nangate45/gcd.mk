export DESIGN_NAME = gcd
export PLATFORM    = nangate45

export VERILOG_FILES = ./designs/src/gcd/gcd.v
export SDC_FILE      = ./designs/src/gcd/gcd.sdc

# These values must be multiples of placement site
# x=0.19 y=1.4
export DIE_AREA    = 0 0 70 70
export CORE_AREA   = 10.07 11.2 60 60

export CLOCK_PERIOD = 10.000
