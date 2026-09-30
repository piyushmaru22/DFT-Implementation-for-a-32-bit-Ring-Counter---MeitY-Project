set_attribute lib_search_path /home/install/FOUNDRY/digital/180nm/dig/lib
set_attribute init_hdl_search_path /root/Desktop/genus_syn_ring_count/Testing_32_bit_ring_counter
set_attribute library slow.lib

read_hdl ring_counter_32_bit.v
elaborate

read_sdc /root/Desktop/genus_syn_ring_count/Testing_32_bit_ring_counter/constraints_top.sdc
syn_generic
syn_map
syn_opt -effort medium 

write_sdf -timescale ns -nonegchecks -recrem split -edges check_edge > /root/Desktop/genus_syn_ring_count/Testing_32_bit_ring_counter/delays.sdf
write_hdl > /root/Desktop/genus_syn_ring_count/Testing_32_bit_ring_counter/ring_counter_32_bit_netlist.v
write_sdc > /root/Desktop/genus_syn_ring_count/Testing_32_bit_ring_counter/ring_counter_32_bit_sdc.sdc

gui_show
report timing > /root/Desktop/genus_syn_ring_count/Testing_32_bit_ring_counter/ring_counter_32_bit_timing.rep
report_power > /root/Desktop/genus_syn_ring_count/Testing_32_bit_ring_counter/ring_counter_32_bit_power.rep
report_area > /root/Desktop/genus_syn_ring_count/Testing_32_bit_ring_counter/ring_counter_32_bit_cell.rep
report_messages > /root/Desktop/genus_syn_ring_count/Testing_32_bit_ring_counter/ring_counter_32_bit_message.rep
