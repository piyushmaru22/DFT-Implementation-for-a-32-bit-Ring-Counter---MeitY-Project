# Cadence Genus(TM) Synthesis Solution, Version 21.14-s082_1, built Jun 23 2022 14:32:08

# Date: Mon Oct 21 11:18:48 2024
# Host: c2snirma1.nirmauni.ac.in (x86_64 w/Linux 4.18.0-425.3.1.el8.x86_64) (12cores*20cpus*1physical cpu*12th Gen Intel(R) Core(TM) i7-12700 25600KB)
# OS:   Red Hat Enterprise Linux release 8.7 (Ootpa)

set_attribute lib_search_path /home/install/FOUNDRY/digital/180nm/dig/lib
set_attribute init_hdl_search_path /home/temp/Desktop/Testing_32_bit_ring_counter
set_attribute library slow.lib
read_hdl ring_counter_32_bit.v
elaborate
read_sdc /home/temp/Desktop/Testing_32_bit_ring_counter/constraints_top.sdc
syn_generic
syn_map
syn_opt -effort medium
history
write_sdf -timescale ns -nonegchecks -recrem split -edges check_edge > /home/temp/Desktop/Testing_32_bit_ring_counter/delays.sdf
write_hdl > /home/temp/Desktop/Testing_32_bit_ring_counter/ring_counter_netlist.v
write_sdc > /home/temp/Desktop/Testing_32_bit_ring_counter/ring_counter_sdc.sdc
gui_show
