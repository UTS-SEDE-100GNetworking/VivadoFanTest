set_property PACKAGE_PIN AH9 [get_ports clk25in]
set_property IOSTANDARD LVCMOS18 [get_ports clk25in]

set_property PACKAGE_PIN AL33 [get_ports fan]
set_property IOSTANDARD LVCMOS18 [get_ports fan]
set_property DRIVE 4 [get_ports fan]

create_clock -period 1.600 [get_ports mgtrefclk0p]
create_clock -period 1.600 [get_ports mgtrefclk0n]
create_clock -period 6.400 [get_ports mgtrefclk1p]
create_clock -period 6.400 [get_ports mgtrefclk1n]



