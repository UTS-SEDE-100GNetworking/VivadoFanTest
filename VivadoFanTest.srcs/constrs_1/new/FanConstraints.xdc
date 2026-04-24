set_property PACKAGE_PIN AH9 [get_ports clk25in]
set_property IOSTANDARD LVCMOS18 [get_ports clk25in]

set_property PACKAGE_PIN AL33 [get_ports fan]
set_property IOSTANDARD LVCMOS18 [get_ports fan]
set_property DRIVE 4 [get_ports fan]

create_clock -period 1.600 [get_ports mgtrefclk0p]
create_clock -period 1.600 [get_ports mgtrefclk0n]
create_clock -period 6.400 [get_ports mgtrefclk1p]
create_clock -period 6.400 [get_ports mgtrefclk1n]

create_clock -period 6.000 -name eth_gt0_txoutclk [get_pins -hier -filter name=~*gt0_vx690tffg1157_i*gthe2_i*TXOUTCLK]
create_clock -period 3.103 -name eth_gt0_rxoutclk [get_pins -hier -filter name=~*gt0_vx690tffg1157_i*gthe2_i*RXOUTCLK]
create_clock -period 3.103 -name eth_gt1_rxoutclk [get_pins -hier -filter name=~*gt1_vx690tffg1157_i*gthe2_i*RXOUTCLK]
create_clock -period 3.103 -name eth_gt2_rxoutclk [get_pins -hier -filter name=~*gt2_vx690tffg1157_i*gthe2_i*RXOUTCLK]
create_clock -period 3.103 -name eth_gt3_rxoutclk [get_pins -hier -filter name=~*gt3_vx690tffg1157_i*gthe2_i*RXOUTCLK]

