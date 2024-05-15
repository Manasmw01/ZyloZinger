# TCL File Generated by Component Editor 21.1
# Fri Apr 14 18:12:04 EDT 2023
# DO NOT MODIFY


# 
# aud "AUD" v1.0
#  2023.04.14.18:12:04
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module aud
# 
set_module_property DESCRIPTION ""
set_module_property NAME aud
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME AUD
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false
set_module_assignment embeddedsw.dts.vendor "csee4840"
set_module_assignment embeddedsw.dts.name "aud"
set_module_assignment embeddedsw.dts.group "aud"

# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL audio_control
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file aud.sv SYSTEM_VERILOG PATH aud.sv TOP_LEVEL_FILE


# 
# parameters
# 
add_parameter readOutSize STD_LOGIC_VECTOR 65535 ""
set_parameter_property readOutSize DEFAULT_VALUE 65535
set_parameter_property readOutSize DISPLAY_NAME readOutSize
set_parameter_property readOutSize WIDTH 32
set_parameter_property readOutSize TYPE STD_LOGIC_VECTOR
set_parameter_property readOutSize UNITS None
set_parameter_property readOutSize DESCRIPTION ""
set_parameter_property readOutSize HDL_PARAMETER true


# 
# module assignments
# 
set_module_assignment embeddedsw.dts.group aud
set_module_assignment embeddedsw.dts.name aud
set_module_assignment embeddedsw.dts.vendor csee4840


# 
# display items
# 


# 
# connection point avalon_slave_0
# 
add_interface avalon_slave_0 avalon end
set_interface_property avalon_slave_0 addressUnits WORDS
set_interface_property avalon_slave_0 associatedClock clock
set_interface_property avalon_slave_0 associatedReset reset
set_interface_property avalon_slave_0 bitsPerSymbol 8
set_interface_property avalon_slave_0 burstOnBurstBoundariesOnly false
set_interface_property avalon_slave_0 burstcountUnits WORDS
set_interface_property avalon_slave_0 explicitAddressSpan 0
set_interface_property avalon_slave_0 holdTime 0
set_interface_property avalon_slave_0 linewrapBursts false
set_interface_property avalon_slave_0 maximumPendingReadTransactions 0
set_interface_property avalon_slave_0 maximumPendingWriteTransactions 0
set_interface_property avalon_slave_0 readLatency 0
set_interface_property avalon_slave_0 readWaitTime 1
set_interface_property avalon_slave_0 setupTime 0
set_interface_property avalon_slave_0 timingUnits Cycles
set_interface_property avalon_slave_0 writeWaitTime 0
set_interface_property avalon_slave_0 ENABLED true
set_interface_property avalon_slave_0 EXPORT_OF ""
set_interface_property avalon_slave_0 PORT_NAME_MAP ""
set_interface_property avalon_slave_0 CMSIS_SVD_VARIABLES ""
set_interface_property avalon_slave_0 SVD_ADDRESS_GROUP ""

add_interface_port avalon_slave_0 writedata writedata Input 32
add_interface_port avalon_slave_0 write write Input 1
add_interface_port avalon_slave_0 read read Input 1
add_interface_port avalon_slave_0 address address Input 16
add_interface_port avalon_slave_0 readdata readdata Output 32
add_interface_port avalon_slave_0 chipselect chipselect Input 1
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isFlash 0
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isPrintableDevice 0


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clk clk Input 1


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset reset reset Input 1


# 
# connection point aud
# 
add_interface aud conduit end
set_interface_property aud associatedClock clock
set_interface_property aud associatedReset ""
set_interface_property aud ENABLED true
set_interface_property aud EXPORT_OF ""
set_interface_property aud PORT_NAME_MAP ""
set_interface_property aud CMSIS_SVD_VARIABLES ""
set_interface_property aud SVD_ADDRESS_GROUP ""

add_interface_port aud AUD_ADCDAT adcdat Input 1
add_interface_port aud AUD_ADCLRCK adclrck Input 1
add_interface_port aud AUD_BCLK bclk Input 1
add_interface_port aud AUD_DACDAT dacdat Output 1
add_interface_port aud AUD_XCK xck Output 1
add_interface_port aud AUD_DACLRCK daclrck Input 1


# 
# connection point fpga
# 
add_interface fpga conduit end
set_interface_property fpga associatedClock clock
set_interface_property fpga associatedReset ""
set_interface_property fpga ENABLED true
set_interface_property fpga EXPORT_OF ""
set_interface_property fpga PORT_NAME_MAP ""
set_interface_property fpga CMSIS_SVD_VARIABLES ""
set_interface_property fpga SVD_ADDRESS_GROUP ""

add_interface_port fpga FPGA_I2C_SCLK i2c_sclk Output 1
add_interface_port fpga FPGA_I2C_SDAT i2c_sdat Bidir 1


# 
# connection point hex1
# 
add_interface hex1 conduit end
set_interface_property hex1 associatedClock clock
set_interface_property hex1 associatedReset ""
set_interface_property hex1 ENABLED true
set_interface_property hex1 EXPORT_OF ""
set_interface_property hex1 PORT_NAME_MAP ""
set_interface_property hex1 CMSIS_SVD_VARIABLES ""
set_interface_property hex1 SVD_ADDRESS_GROUP ""

add_interface_port hex1 HEX1 hex1 Output 7


# 
# connection point hex2
# 
add_interface hex2 conduit end
set_interface_property hex2 associatedClock clock
set_interface_property hex2 associatedReset ""
set_interface_property hex2 ENABLED true
set_interface_property hex2 EXPORT_OF ""
set_interface_property hex2 PORT_NAME_MAP ""
set_interface_property hex2 CMSIS_SVD_VARIABLES ""
set_interface_property hex2 SVD_ADDRESS_GROUP ""

add_interface_port hex2 HEX2 hex2 Output 7


# 
# connection point hex3
# 
add_interface hex3 conduit end
set_interface_property hex3 associatedClock clock
set_interface_property hex3 associatedReset ""
set_interface_property hex3 ENABLED true
set_interface_property hex3 EXPORT_OF ""
set_interface_property hex3 PORT_NAME_MAP ""
set_interface_property hex3 CMSIS_SVD_VARIABLES ""
set_interface_property hex3 SVD_ADDRESS_GROUP ""

add_interface_port hex3 HEX3 hex3 Output 7


# 
# connection point hex0
# 
add_interface hex0 conduit end
set_interface_property hex0 associatedClock clock
set_interface_property hex0 associatedReset ""
set_interface_property hex0 ENABLED true
set_interface_property hex0 EXPORT_OF ""
set_interface_property hex0 PORT_NAME_MAP ""
set_interface_property hex0 CMSIS_SVD_VARIABLES ""
set_interface_property hex0 SVD_ADDRESS_GROUP ""

add_interface_port hex0 HEX0 hex0 Output 7


# 
# connection point hex4
# 
add_interface hex4 conduit end
set_interface_property hex4 associatedClock clock
set_interface_property hex4 associatedReset ""
set_interface_property hex4 ENABLED true
set_interface_property hex4 EXPORT_OF ""
set_interface_property hex4 PORT_NAME_MAP ""
set_interface_property hex4 CMSIS_SVD_VARIABLES ""
set_interface_property hex4 SVD_ADDRESS_GROUP ""

add_interface_port hex4 HEX4 hex4 Output 7


# 
# connection point hex5
# 
add_interface hex5 conduit end
set_interface_property hex5 associatedClock clock
set_interface_property hex5 associatedReset ""
set_interface_property hex5 ENABLED true
set_interface_property hex5 EXPORT_OF ""
set_interface_property hex5 PORT_NAME_MAP ""
set_interface_property hex5 CMSIS_SVD_VARIABLES ""
set_interface_property hex5 SVD_ADDRESS_GROUP ""

add_interface_port hex5 HEX5 hex5 Output 7


# 
# connection point key
# 
add_interface key conduit end
set_interface_property key associatedClock clock
set_interface_property key associatedReset ""
set_interface_property key ENABLED true
set_interface_property key EXPORT_OF ""
set_interface_property key PORT_NAME_MAP ""
set_interface_property key CMSIS_SVD_VARIABLES ""
set_interface_property key SVD_ADDRESS_GROUP ""

add_interface_port key KEY key Input 4


# 
# connection point bram_control
# 
add_interface bram_control conduit end
set_interface_property bram_control associatedClock clock
set_interface_property bram_control associatedReset ""
set_interface_property bram_control ENABLED true
set_interface_property bram_control EXPORT_OF ""
set_interface_property bram_control PORT_NAME_MAP ""
set_interface_property bram_control CMSIS_SVD_VARIABLES ""
set_interface_property bram_control SVD_ADDRESS_GROUP ""

add_interface_port bram_control bram_data_in data_in Output 24
add_interface_port bram_control bram_data_out data_out Input 24
add_interface_port bram_control bram_ra read_address Output 16
add_interface_port bram_control bram_wa write_address Output 16
add_interface_port bram_control bram_write write_enable Output 1


# 
# connection point goertzel_signal_out
# 
add_interface goertzel_signal_out conduit end
set_interface_property goertzel_signal_out associatedClock clock
set_interface_property goertzel_signal_out associatedReset ""
set_interface_property goertzel_signal_out ENABLED true
set_interface_property goertzel_signal_out EXPORT_OF ""
set_interface_property goertzel_signal_out PORT_NAME_MAP ""
set_interface_property goertzel_signal_out CMSIS_SVD_VARIABLES ""
set_interface_property goertzel_signal_out SVD_ADDRESS_GROUP ""

add_interface_port goertzel_signal_out adc_out_buffer input_sig Output 24
add_interface_port goertzel_signal_out advance advance Output 1


# 
# connection point detection_results
# 
add_interface detection_results conduit end
set_interface_property detection_results associatedClock clock
set_interface_property detection_results associatedReset ""
set_interface_property detection_results ENABLED true
set_interface_property detection_results EXPORT_OF ""
set_interface_property detection_results PORT_NAME_MAP ""
set_interface_property detection_results CMSIS_SVD_VARIABLES ""
set_interface_property detection_results SVD_ADDRESS_GROUP ""

add_interface_port detection_results flag flag Input 1
add_interface_port detection_results overall_result overall_result Input 3
add_interface_port detection_results result result Input 3

