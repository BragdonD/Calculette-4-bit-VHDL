transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/thoma/OneDrive/Documents/VHDL-FPGA/Projet-VHDL/composant_project/mult_intern/mult_unsigned/multi_4bits.vhd}

