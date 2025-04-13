## Map in_data[7:0] to the corresponding switch pins
set_property PACKAGE_PIN F22 [get_ports {in_data[0]}];  # "SW0"
set_property IOSTANDARD LVCMOS33 [get_ports in_data[0]];

set_property PACKAGE_PIN G22 [get_ports {in_data[1]}];  # "SW1"
set_property IOSTANDARD LVCMOS33 [get_ports in_data[1]];

set_property PACKAGE_PIN H22 [get_ports {in_data[2]}];  # "SW2"
set_property IOSTANDARD LVCMOS33 [get_ports in_data[2]];

set_property PACKAGE_PIN F21 [get_ports {in_data[3]}];  # "SW3"
set_property IOSTANDARD LVCMOS33 [get_ports in_data[3]];

set_property PACKAGE_PIN H19 [get_ports {in_data[4]}];  # "SW4"
set_property IOSTANDARD LVCMOS33 [get_ports in_data[4]];

set_property PACKAGE_PIN H18 [get_ports {in_data[5]}];  # "SW5"
set_property IOSTANDARD LVCMOS33 [get_ports in_data[5]];

set_property PACKAGE_PIN H17 [get_ports {in_data[6]}];  # "SW6"
set_property IOSTANDARD LVCMOS33 [get_ports in_data[6]];

set_property PACKAGE_PIN M15 [get_ports {in_data[7]}];  # "SW7"
set_property IOSTANDARD LVCMOS33 [get_ports in_data[7]];

## Map out_data[7:0] to the corresponding lcd pins
set_property PACKAGE_PIN T22 [get_ports {out_data[0]}];  # "LD0"
set_property IOSTANDARD LVCMOS33 [get_ports out_data[0]];

set_property PACKAGE_PIN T21 [get_ports {out_data[1]}];  # "LD1"
set_property IOSTANDARD LVCMOS33 [get_ports out_data[1]];

set_property PACKAGE_PIN U22 [get_ports {out_data[2]}];  # "LD2"
set_property IOSTANDARD LVCMOS33 [get_ports out_data[2]];

set_property PACKAGE_PIN U21 [get_ports {out_data[3]}];  # "LD3"
set_property IOSTANDARD LVCMOS33 [get_ports out_data[3]];

set_property PACKAGE_PIN V22 [get_ports {out_data[4]}];  # "LD4"
set_property IOSTANDARD LVCMOS33 [get_ports out_data[4]];

set_property PACKAGE_PIN W22 [get_ports {out_data[5]}];  # "LD5"
set_property IOSTANDARD LVCMOS33 [get_ports out_data[5]];

set_property PACKAGE_PIN U19 [get_ports {out_data[6]}];  # "LD6"
set_property IOSTANDARD LVCMOS33 [get_ports out_data[6]];

set_property PACKAGE_PIN U14 [get_ports {out_data[7]}];  # "LD7"
set_property IOSTANDARD LVCMOS33 [get_ports out_data[7]];

#Port and inialise load_button
set_property PACKAGE_PIN P16 [get_ports {load_button}];  # "BTNC"
set_property IOSTANDARD LVCMOS33 [get_ports load_button];

#Port and inialise clock
set_property PACKAGE_PIN Y9 [get_ports {clk}];  # "GCLK"
set_property IOSTANDARD LVCMOS33 [get_ports clk];

#Port and inialise reset
set_property PACKAGE_PIN L16 [get_ports {reset}];  # "OTG-VBUSOC"
set_property IOSTANDARD LVCMOS33 [get_ports reset];