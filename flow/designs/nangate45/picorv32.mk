export DESIGN_NICKNAME = picorv32
export DESIGN_NAME = picorv32
export PLATFORM    = nangate45

export VERILOG_FILES = $(wildcard ./designs/src/picorv32/*.v)
export SDC_FILE      = ./designs/src/picorv32/picorv32.sdc

# These values must be multiples of placement site
# x=0.19 y=1.4
export DIE_AREA    = 0 0 309 309
export CORE_AREA   = 10.07 11.2 299 299

export CLOCK_PERIOD = 10.000
