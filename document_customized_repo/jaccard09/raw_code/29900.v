module backprop_backprop_Pipeline_VITIS_LOOP_26_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,activations2_15_address0,activations2_15_ce0,activations2_15_we0,activations2_15_d0,activations2_15_address1,activations2_15_ce1,activations2_15_q1,activations2_14_address0,activations2_14_ce0,activations2_14_we0,activations2_14_d0,activations2_14_address1,activations2_14_ce1,activations2_14_q1,activations2_13_address0,activations2_13_ce0,activations2_13_we0,activations2_13_d0,activations2_13_address1,activations2_13_ce1,activations2_13_q1,activations2_12_address0,activations2_12_ce0,activations2_12_we0,activations2_12_d0,activations2_12_address1,activations2_12_ce1,activations2_12_q1,activations2_11_address0,activations2_11_ce0,activations2_11_we0,activations2_11_d0,activations2_11_address1,activations2_11_ce1,activations2_11_q1,activations2_10_address0,activations2_10_ce0,activations2_10_we0,activations2_10_d0,activations2_10_address1,activations2_10_ce1,activations2_10_q1,activations2_9_address0,activations2_9_ce0,activations2_9_we0,activations2_9_d0,activations2_9_address1,activations2_9_ce1,activations2_9_q1,activations2_8_address0,activations2_8_ce0,activations2_8_we0,activations2_8_d0,activations2_8_address1,activations2_8_ce1,activations2_8_q1,activations2_7_address0,activations2_7_ce0,activations2_7_we0,activations2_7_d0,activations2_7_address1,activations2_7_ce1,activations2_7_q1,activations2_6_address0,activations2_6_ce0,activations2_6_we0,activations2_6_d0,activations2_6_address1,activations2_6_ce1,activations2_6_q1,activations2_5_address0,activations2_5_ce0,activations2_5_we0,activations2_5_d0,activations2_5_address1,activations2_5_ce1,activations2_5_q1,activations2_4_address0,activations2_4_ce0,activations2_4_we0,activations2_4_d0,activations2_4_address1,activations2_4_ce1,activations2_4_q1,activations2_3_address0,activations2_3_ce0,activations2_3_we0,activations2_3_d0,activations2_3_address1,activations2_3_ce1,activations2_3_q1,activations2_2_address0,activations2_2_ce0,activations2_2_we0,activations2_2_d0,activations2_2_address1,activations2_2_ce1,activations2_2_q1,activations2_1_address0,activations2_1_ce0,activations2_1_we0,activations2_1_d0,activations2_1_address1,activations2_1_ce1,activations2_1_q1,activations2_address0,activations2_ce0,activations2_we0,activations2_d0,activations2_address1,activations2_ce1,activations2_q1,biases2_0_address0,biases2_0_ce0,biases2_0_q0,biases2_1_address0,biases2_1_ce0,biases2_1_q0,biases2_2_address0,biases2_2_ce0,biases2_2_q0,biases2_3_address0,biases2_3_ce0,biases2_3_q0,biases2_4_address0,biases2_4_ce0,biases2_4_q0,biases2_5_address0,biases2_5_ce0,biases2_5_q0,biases2_6_address0,biases2_6_ce0,biases2_6_q0,biases2_7_address0,biases2_7_ce0,biases2_7_q0,biases2_8_address0,biases2_8_ce0,biases2_8_q0,biases2_9_address0,biases2_9_ce0,biases2_9_q0,biases2_10_address0,biases2_10_ce0,biases2_10_q0,biases2_11_address0,biases2_11_ce0,biases2_11_q0,biases2_12_address0,biases2_12_ce0,biases2_12_q0,biases2_13_address0,biases2_13_ce0,biases2_13_q0,biases2_14_address0,biases2_14_ce0,biases2_14_q0,biases2_15_address0,biases2_15_ce0,biases2_15_q0,grp_fu_5581_p_din0,grp_fu_5581_p_din1,grp_fu_5581_p_opcode,grp_fu_5581_p_dout0,grp_fu_5581_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [1:0] activations2_15_address0;
output   activations2_15_ce0;
output   activations2_15_we0;
output  [63:0] activations2_15_d0;
output  [1:0] activations2_15_address1;
output   activations2_15_ce1;
input  [63:0] activations2_15_q1;
output  [1:0] activations2_14_address0;
output   activations2_14_ce0;
output   activations2_14_we0;
output  [63:0] activations2_14_d0;
output  [1:0] activations2_14_address1;
output   activations2_14_ce1;
input  [63:0] activations2_14_q1;
output  [1:0] activations2_13_address0;
output   activations2_13_ce0;
output   activations2_13_we0;
output  [63:0] activations2_13_d0;
output  [1:0] activations2_13_address1;
output   activations2_13_ce1;
input  [63:0] activations2_13_q1;
output  [1:0] activations2_12_address0;
output   activations2_12_ce0;
output   activations2_12_we0;
output  [63:0] activations2_12_d0;
output  [1:0] activations2_12_address1;
output   activations2_12_ce1;
input  [63:0] activations2_12_q1;
output  [1:0] activations2_11_address0;
output   activations2_11_ce0;
output   activations2_11_we0;
output  [63:0] activations2_11_d0;
output  [1:0] activations2_11_address1;
output   activations2_11_ce1;
input  [63:0] activations2_11_q1;
output  [1:0] activations2_10_address0;
output   activations2_10_ce0;
output   activations2_10_we0;
output  [63:0] activations2_10_d0;
output  [1:0] activations2_10_address1;
output   activations2_10_ce1;
input  [63:0] activations2_10_q1;
output  [1:0] activations2_9_address0;
output   activations2_9_ce0;
output   activations2_9_we0;
output  [63:0] activations2_9_d0;
output  [1:0] activations2_9_address1;
output   activations2_9_ce1;
input  [63:0] activations2_9_q1;
output  [1:0] activations2_8_address0;
output   activations2_8_ce0;
output   activations2_8_we0;
output  [63:0] activations2_8_d0;
output  [1:0] activations2_8_address1;
output   activations2_8_ce1;
input  [63:0] activations2_8_q1;
output  [1:0] activations2_7_address0;
output   activations2_7_ce0;
output   activations2_7_we0;
output  [63:0] activations2_7_d0;
output  [1:0] activations2_7_address1;
output   activations2_7_ce1;
input  [63:0] activations2_7_q1;
output  [1:0] activations2_6_address0;
output   activations2_6_ce0;
output   activations2_6_we0;
output  [63:0] activations2_6_d0;
output  [1:0] activations2_6_address1;
output   activations2_6_ce1;
input  [63:0] activations2_6_q1;
output  [1:0] activations2_5_address0;
output   activations2_5_ce0;
output   activations2_5_we0;
output  [63:0] activations2_5_d0;
output  [1:0] activations2_5_address1;
output   activations2_5_ce1;
input  [63:0] activations2_5_q1;
output  [1:0] activations2_4_address0;
output   activations2_4_ce0;
output   activations2_4_we0;
output  [63:0] activations2_4_d0;
output  [1:0] activations2_4_address1;
output   activations2_4_ce1;
input  [63:0] activations2_4_q1;
output  [1:0] activations2_3_address0;
output   activations2_3_ce0;
output   activations2_3_we0;
output  [63:0] activations2_3_d0;
output  [1:0] activations2_3_address1;
output   activations2_3_ce1;
input  [63:0] activations2_3_q1;
output  [1:0] activations2_2_address0;
output   activations2_2_ce0;
output   activations2_2_we0;
output  [63:0] activations2_2_d0;
output  [1:0] activations2_2_address1;
output   activations2_2_ce1;
input  [63:0] activations2_2_q1;
output  [1:0] activations2_1_address0;
output   activations2_1_ce0;
output   activations2_1_we0;
output  [63:0] activations2_1_d0;
output  [1:0] activations2_1_address1;
output   activations2_1_ce1;
input  [63:0] activations2_1_q1;
output  [1:0] activations2_address0;
output   activations2_ce0;
output   activations2_we0;
output  [63:0] activations2_d0;
output  [1:0] activations2_address1;
output   activations2_ce1;
input  [63:0] activations2_q1;
output  [1:0] biases2_0_address0;
output   biases2_0_ce0;
input  [63:0] biases2_0_q0;
output  [1:0] biases2_1_address0;
output   biases2_1_ce0;
input  [63:0] biases2_1_q0;
output  [1:0] biases2_2_address0;
output   biases2_2_ce0;
input  [63:0] biases2_2_q0;
output  [1:0] biases2_3_address0;
output   biases2_3_ce0;
input  [63:0] biases2_3_q0;
output  [1:0] biases2_4_address0;
output   biases2_4_ce0;
input  [63:0] biases2_4_q0;
output  [1:0] biases2_5_address0;
output   biases2_5_ce0;
input  [63:0] biases2_5_q0;
output  [1:0] biases2_6_address0;
output   biases2_6_ce0;
input  [63:0] biases2_6_q0;
output  [1:0] biases2_7_address0;
output   biases2_7_ce0;
input  [63:0] biases2_7_q0;
output  [1:0] biases2_8_address0;
output   biases2_8_ce0;
input  [63:0] biases2_8_q0;
output  [1:0] biases2_9_address0;
output   biases2_9_ce0;
input  [63:0] biases2_9_q0;
output  [1:0] biases2_10_address0;
output   biases2_10_ce0;
input  [63:0] biases2_10_q0;
output  [1:0] biases2_11_address0;
output   biases2_11_ce0;
input  [63:0] biases2_11_q0;
output  [1:0] biases2_12_address0;
output   biases2_12_ce0;
input  [63:0] biases2_12_q0;
output  [1:0] biases2_13_address0;
output   biases2_13_ce0;
input  [63:0] biases2_13_q0;
output  [1:0] biases2_14_address0;
output   biases2_14_ce0;
input  [63:0] biases2_14_q0;
output  [1:0] biases2_15_address0;
output   biases2_15_ce0;
input  [63:0] biases2_15_q0;
output  [63:0] grp_fu_5581_p_din0;
output  [63:0] grp_fu_5581_p_din1;
output  [0:0] grp_fu_5581_p_opcode;
input  [63:0] grp_fu_5581_p_dout0;
output   grp_fu_5581_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln26_fu_632_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] trunc_ln26_fu_644_p1;
reg   [3:0] trunc_ln26_reg_916;
reg   [3:0] trunc_ln26_reg_916_pp0_iter1_reg;
reg   [3:0] trunc_ln26_reg_916_pp0_iter2_reg;
reg   [3:0] trunc_ln26_reg_916_pp0_iter3_reg;
reg   [3:0] trunc_ln26_reg_916_pp0_iter4_reg;
reg   [3:0] trunc_ln26_reg_916_pp0_iter5_reg;
reg   [3:0] trunc_ln26_reg_916_pp0_iter6_reg;
reg   [3:0] trunc_ln26_reg_916_pp0_iter7_reg;
reg   [3:0] trunc_ln26_reg_916_pp0_iter8_reg;
reg   [3:0] trunc_ln26_reg_916_pp0_iter9_reg;
reg   [1:0] activations2_addr_reg_922;
reg   [1:0] activations2_addr_reg_922_pp0_iter1_reg;
reg   [1:0] activations2_addr_reg_922_pp0_iter2_reg;
reg   [1:0] activations2_addr_reg_922_pp0_iter3_reg;
reg   [1:0] activations2_addr_reg_922_pp0_iter4_reg;
reg   [1:0] activations2_addr_reg_922_pp0_iter5_reg;
reg   [1:0] activations2_addr_reg_922_pp0_iter6_reg;
reg   [1:0] activations2_addr_reg_922_pp0_iter7_reg;
reg   [1:0] activations2_addr_reg_922_pp0_iter8_reg;
reg   [1:0] activations2_addr_reg_922_pp0_iter9_reg;
reg   [1:0] activations2_1_addr_reg_928;
reg   [1:0] activations2_1_addr_reg_928_pp0_iter1_reg;
reg   [1:0] activations2_1_addr_reg_928_pp0_iter2_reg;
reg   [1:0] activations2_1_addr_reg_928_pp0_iter3_reg;
reg   [1:0] activations2_1_addr_reg_928_pp0_iter4_reg;
reg   [1:0] activations2_1_addr_reg_928_pp0_iter5_reg;
reg   [1:0] activations2_1_addr_reg_928_pp0_iter6_reg;
reg   [1:0] activations2_1_addr_reg_928_pp0_iter7_reg;
reg   [1:0] activations2_1_addr_reg_928_pp0_iter8_reg;
reg   [1:0] activations2_1_addr_reg_928_pp0_iter9_reg;
reg   [1:0] activations2_2_addr_reg_934;
reg   [1:0] activations2_2_addr_reg_934_pp0_iter1_reg;
reg   [1:0] activations2_2_addr_reg_934_pp0_iter2_reg;
reg   [1:0] activations2_2_addr_reg_934_pp0_iter3_reg;
reg   [1:0] activations2_2_addr_reg_934_pp0_iter4_reg;
reg   [1:0] activations2_2_addr_reg_934_pp0_iter5_reg;
reg   [1:0] activations2_2_addr_reg_934_pp0_iter6_reg;
reg   [1:0] activations2_2_addr_reg_934_pp0_iter7_reg;
reg   [1:0] activations2_2_addr_reg_934_pp0_iter8_reg;
reg   [1:0] activations2_2_addr_reg_934_pp0_iter9_reg;
reg   [1:0] activations2_3_addr_reg_940;
reg   [1:0] activations2_3_addr_reg_940_pp0_iter1_reg;
reg   [1:0] activations2_3_addr_reg_940_pp0_iter2_reg;
reg   [1:0] activations2_3_addr_reg_940_pp0_iter3_reg;
reg   [1:0] activations2_3_addr_reg_940_pp0_iter4_reg;
reg   [1:0] activations2_3_addr_reg_940_pp0_iter5_reg;
reg   [1:0] activations2_3_addr_reg_940_pp0_iter6_reg;
reg   [1:0] activations2_3_addr_reg_940_pp0_iter7_reg;
reg   [1:0] activations2_3_addr_reg_940_pp0_iter8_reg;
reg   [1:0] activations2_3_addr_reg_940_pp0_iter9_reg;
reg   [1:0] activations2_4_addr_reg_946;
reg   [1:0] activations2_4_addr_reg_946_pp0_iter1_reg;
reg   [1:0] activations2_4_addr_reg_946_pp0_iter2_reg;
reg   [1:0] activations2_4_addr_reg_946_pp0_iter3_reg;
reg   [1:0] activations2_4_addr_reg_946_pp0_iter4_reg;
reg   [1:0] activations2_4_addr_reg_946_pp0_iter5_reg;
reg   [1:0] activations2_4_addr_reg_946_pp0_iter6_reg;
reg   [1:0] activations2_4_addr_reg_946_pp0_iter7_reg;
reg   [1:0] activations2_4_addr_reg_946_pp0_iter8_reg;
reg   [1:0] activations2_4_addr_reg_946_pp0_iter9_reg;
reg   [1:0] activations2_5_addr_reg_952;
reg   [1:0] activations2_5_addr_reg_952_pp0_iter1_reg;
reg   [1:0] activations2_5_addr_reg_952_pp0_iter2_reg;
reg   [1:0] activations2_5_addr_reg_952_pp0_iter3_reg;
reg   [1:0] activations2_5_addr_reg_952_pp0_iter4_reg;
reg   [1:0] activations2_5_addr_reg_952_pp0_iter5_reg;
reg   [1:0] activations2_5_addr_reg_952_pp0_iter6_reg;
reg   [1:0] activations2_5_addr_reg_952_pp0_iter7_reg;
reg   [1:0] activations2_5_addr_reg_952_pp0_iter8_reg;
reg   [1:0] activations2_5_addr_reg_952_pp0_iter9_reg;
reg   [1:0] activations2_6_addr_reg_958;
reg   [1:0] activations2_6_addr_reg_958_pp0_iter1_reg;
reg   [1:0] activations2_6_addr_reg_958_pp0_iter2_reg;
reg   [1:0] activations2_6_addr_reg_958_pp0_iter3_reg;
reg   [1:0] activations2_6_addr_reg_958_pp0_iter4_reg;
reg   [1:0] activations2_6_addr_reg_958_pp0_iter5_reg;
reg   [1:0] activations2_6_addr_reg_958_pp0_iter6_reg;
reg   [1:0] activations2_6_addr_reg_958_pp0_iter7_reg;
reg   [1:0] activations2_6_addr_reg_958_pp0_iter8_reg;
reg   [1:0] activations2_6_addr_reg_958_pp0_iter9_reg;
reg   [1:0] activations2_7_addr_reg_964;
reg   [1:0] activations2_7_addr_reg_964_pp0_iter1_reg;
reg   [1:0] activations2_7_addr_reg_964_pp0_iter2_reg;
reg   [1:0] activations2_7_addr_reg_964_pp0_iter3_reg;
reg   [1:0] activations2_7_addr_reg_964_pp0_iter4_reg;
reg   [1:0] activations2_7_addr_reg_964_pp0_iter5_reg;
reg   [1:0] activations2_7_addr_reg_964_pp0_iter6_reg;
reg   [1:0] activations2_7_addr_reg_964_pp0_iter7_reg;
reg   [1:0] activations2_7_addr_reg_964_pp0_iter8_reg;
reg   [1:0] activations2_7_addr_reg_964_pp0_iter9_reg;
reg   [1:0] activations2_8_addr_reg_970;
reg   [1:0] activations2_8_addr_reg_970_pp0_iter1_reg;
reg   [1:0] activations2_8_addr_reg_970_pp0_iter2_reg;
reg   [1:0] activations2_8_addr_reg_970_pp0_iter3_reg;
reg   [1:0] activations2_8_addr_reg_970_pp0_iter4_reg;
reg   [1:0] activations2_8_addr_reg_970_pp0_iter5_reg;
reg   [1:0] activations2_8_addr_reg_970_pp0_iter6_reg;
reg   [1:0] activations2_8_addr_reg_970_pp0_iter7_reg;
reg   [1:0] activations2_8_addr_reg_970_pp0_iter8_reg;
reg   [1:0] activations2_8_addr_reg_970_pp0_iter9_reg;
reg   [1:0] activations2_9_addr_reg_976;
reg   [1:0] activations2_9_addr_reg_976_pp0_iter1_reg;
reg   [1:0] activations2_9_addr_reg_976_pp0_iter2_reg;
reg   [1:0] activations2_9_addr_reg_976_pp0_iter3_reg;
reg   [1:0] activations2_9_addr_reg_976_pp0_iter4_reg;
reg   [1:0] activations2_9_addr_reg_976_pp0_iter5_reg;
reg   [1:0] activations2_9_addr_reg_976_pp0_iter6_reg;
reg   [1:0] activations2_9_addr_reg_976_pp0_iter7_reg;
reg   [1:0] activations2_9_addr_reg_976_pp0_iter8_reg;
reg   [1:0] activations2_9_addr_reg_976_pp0_iter9_reg;
reg   [1:0] activations2_10_addr_reg_982;
reg   [1:0] activations2_10_addr_reg_982_pp0_iter1_reg;
reg   [1:0] activations2_10_addr_reg_982_pp0_iter2_reg;
reg   [1:0] activations2_10_addr_reg_982_pp0_iter3_reg;
reg   [1:0] activations2_10_addr_reg_982_pp0_iter4_reg;
reg   [1:0] activations2_10_addr_reg_982_pp0_iter5_reg;
reg   [1:0] activations2_10_addr_reg_982_pp0_iter6_reg;
reg   [1:0] activations2_10_addr_reg_982_pp0_iter7_reg;
reg   [1:0] activations2_10_addr_reg_982_pp0_iter8_reg;
reg   [1:0] activations2_10_addr_reg_982_pp0_iter9_reg;
reg   [1:0] activations2_11_addr_reg_988;
reg   [1:0] activations2_11_addr_reg_988_pp0_iter1_reg;
reg   [1:0] activations2_11_addr_reg_988_pp0_iter2_reg;
reg   [1:0] activations2_11_addr_reg_988_pp0_iter3_reg;
reg   [1:0] activations2_11_addr_reg_988_pp0_iter4_reg;
reg   [1:0] activations2_11_addr_reg_988_pp0_iter5_reg;
reg   [1:0] activations2_11_addr_reg_988_pp0_iter6_reg;
reg   [1:0] activations2_11_addr_reg_988_pp0_iter7_reg;
reg   [1:0] activations2_11_addr_reg_988_pp0_iter8_reg;
reg   [1:0] activations2_11_addr_reg_988_pp0_iter9_reg;
reg   [1:0] activations2_12_addr_reg_994;
reg   [1:0] activations2_12_addr_reg_994_pp0_iter1_reg;
reg   [1:0] activations2_12_addr_reg_994_pp0_iter2_reg;
reg   [1:0] activations2_12_addr_reg_994_pp0_iter3_reg;
reg   [1:0] activations2_12_addr_reg_994_pp0_iter4_reg;
reg   [1:0] activations2_12_addr_reg_994_pp0_iter5_reg;
reg   [1:0] activations2_12_addr_reg_994_pp0_iter6_reg;
reg   [1:0] activations2_12_addr_reg_994_pp0_iter7_reg;
reg   [1:0] activations2_12_addr_reg_994_pp0_iter8_reg;
reg   [1:0] activations2_12_addr_reg_994_pp0_iter9_reg;
reg   [1:0] activations2_13_addr_reg_1000;
reg   [1:0] activations2_13_addr_reg_1000_pp0_iter1_reg;
reg   [1:0] activations2_13_addr_reg_1000_pp0_iter2_reg;
reg   [1:0] activations2_13_addr_reg_1000_pp0_iter3_reg;
reg   [1:0] activations2_13_addr_reg_1000_pp0_iter4_reg;
reg   [1:0] activations2_13_addr_reg_1000_pp0_iter5_reg;
reg   [1:0] activations2_13_addr_reg_1000_pp0_iter6_reg;
reg   [1:0] activations2_13_addr_reg_1000_pp0_iter7_reg;
reg   [1:0] activations2_13_addr_reg_1000_pp0_iter8_reg;
reg   [1:0] activations2_13_addr_reg_1000_pp0_iter9_reg;
reg   [1:0] activations2_14_addr_reg_1006;
reg   [1:0] activations2_14_addr_reg_1006_pp0_iter1_reg;
reg   [1:0] activations2_14_addr_reg_1006_pp0_iter2_reg;
reg   [1:0] activations2_14_addr_reg_1006_pp0_iter3_reg;
reg   [1:0] activations2_14_addr_reg_1006_pp0_iter4_reg;
reg   [1:0] activations2_14_addr_reg_1006_pp0_iter5_reg;
reg   [1:0] activations2_14_addr_reg_1006_pp0_iter6_reg;
reg   [1:0] activations2_14_addr_reg_1006_pp0_iter7_reg;
reg   [1:0] activations2_14_addr_reg_1006_pp0_iter8_reg;
reg   [1:0] activations2_14_addr_reg_1006_pp0_iter9_reg;
reg   [1:0] activations2_15_addr_reg_1012;
reg   [1:0] activations2_15_addr_reg_1012_pp0_iter1_reg;
reg   [1:0] activations2_15_addr_reg_1012_pp0_iter2_reg;
reg   [1:0] activations2_15_addr_reg_1012_pp0_iter3_reg;
reg   [1:0] activations2_15_addr_reg_1012_pp0_iter4_reg;
reg   [1:0] activations2_15_addr_reg_1012_pp0_iter5_reg;
reg   [1:0] activations2_15_addr_reg_1012_pp0_iter6_reg;
reg   [1:0] activations2_15_addr_reg_1012_pp0_iter7_reg;
reg   [1:0] activations2_15_addr_reg_1012_pp0_iter8_reg;
reg   [1:0] activations2_15_addr_reg_1012_pp0_iter9_reg;
wire   [63:0] tmp_149_fu_699_p35;
reg   [63:0] tmp_149_reg_1098;
wire   [63:0] tmp_150_fu_834_p35;
reg   [63:0] tmp_150_reg_1103;
reg   [63:0] add_i_i_reg_1108;
wire   [63:0] zext_ln25_fu_658_p1;
wire    ap_block_pp0_stage0;
reg   [6:0] i_fu_136;
wire   [6:0] add_ln26_fu_638_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_13;
reg    activations2_ce1_local;
reg    activations2_we0_local;
reg    activations2_ce0_local;
reg    activations2_1_ce1_local;
reg    activations2_1_we0_local;
reg    activations2_1_ce0_local;
reg    activations2_2_ce1_local;
reg    activations2_2_we0_local;
reg    activations2_2_ce0_local;
reg    activations2_3_ce1_local;
reg    activations2_3_we0_local;
reg    activations2_3_ce0_local;
reg    activations2_4_ce1_local;
reg    activations2_4_we0_local;
reg    activations2_4_ce0_local;
reg    activations2_5_ce1_local;
reg    activations2_5_we0_local;
reg    activations2_5_ce0_local;
reg    activations2_6_ce1_local;
reg    activations2_6_we0_local;
reg    activations2_6_ce0_local;
reg    activations2_7_ce1_local;
reg    activations2_7_we0_local;
reg    activations2_7_ce0_local;
reg    activations2_8_ce1_local;
reg    activations2_8_we0_local;
reg    activations2_8_ce0_local;
reg    activations2_9_ce1_local;
reg    activations2_9_we0_local;
reg    activations2_9_ce0_local;
reg    activations2_10_ce1_local;
reg    activations2_10_we0_local;
reg    activations2_10_ce0_local;
reg    activations2_11_ce1_local;
reg    activations2_11_we0_local;
reg    activations2_11_ce0_local;
reg    activations2_12_ce1_local;
reg    activations2_12_we0_local;
reg    activations2_12_ce0_local;
reg    activations2_13_ce1_local;
reg    activations2_13_we0_local;
reg    activations2_13_ce0_local;
reg    activations2_14_ce1_local;
reg    activations2_14_we0_local;
reg    activations2_14_ce0_local;
reg    activations2_15_ce1_local;
reg    activations2_15_we0_local;
reg    activations2_15_ce0_local;
reg    biases2_0_ce0_local;
reg    biases2_1_ce0_local;
reg    biases2_2_ce0_local;
reg    biases2_3_ce0_local;
reg    biases2_4_ce0_local;
reg    biases2_5_ce0_local;
reg    biases2_6_ce0_local;
reg    biases2_7_ce0_local;
reg    biases2_8_ce0_local;
reg    biases2_9_ce0_local;
reg    biases2_10_ce0_local;
reg    biases2_11_ce0_local;
reg    biases2_12_ce0_local;
reg    biases2_13_ce0_local;
reg    biases2_14_ce0_local;
reg    biases2_15_ce0_local;
wire   [1:0] lshr_ln_fu_648_p4;
wire   [63:0] tmp_149_fu_699_p33;
wire   [63:0] tmp_150_fu_834_p2;
wire   [63:0] tmp_150_fu_834_p4;
wire   [63:0] tmp_150_fu_834_p6;
wire   [63:0] tmp_150_fu_834_p8;
wire   [63:0] tmp_150_fu_834_p10;
wire   [63:0] tmp_150_fu_834_p12;
wire   [63:0] tmp_150_fu_834_p14;
wire   [63:0] tmp_150_fu_834_p16;
wire   [63:0] tmp_150_fu_834_p18;
wire   [63:0] tmp_150_fu_834_p20;
wire   [63:0] tmp_150_fu_834_p22;
wire   [63:0] tmp_150_fu_834_p24;
wire   [63:0] tmp_150_fu_834_p26;
wire   [63:0] tmp_150_fu_834_p28;
wire   [63:0] tmp_150_fu_834_p30;
wire   [63:0] tmp_150_fu_834_p32;
wire   [63:0] tmp_150_fu_834_p33;
wire    ap_block_pp0_stage0_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [3:0] tmp_149_fu_699_p1;
wire   [3:0] tmp_149_fu_699_p3;
wire   [3:0] tmp_149_fu_699_p5;
wire   [3:0] tmp_149_fu_699_p7;
wire   [3:0] tmp_149_fu_699_p9;
wire   [3:0] tmp_149_fu_699_p11;
wire   [3:0] tmp_149_fu_699_p13;
wire   [3:0] tmp_149_fu_699_p15;
wire  signed [3:0] tmp_149_fu_699_p17;
wire  signed [3:0] tmp_149_fu_699_p19;
wire  signed [3:0] tmp_149_fu_699_p21;
wire  signed [3:0] tmp_149_fu_699_p23;
wire  signed [3:0] tmp_149_fu_699_p25;
wire  signed [3:0] tmp_149_fu_699_p27;
wire  signed [3:0] tmp_149_fu_699_p29;
wire  signed [3:0] tmp_149_fu_699_p31;
wire   [3:0] tmp_150_fu_834_p1;
wire   [3:0] tmp_150_fu_834_p3;
wire   [3:0] tmp_150_fu_834_p5;
wire   [3:0] tmp_150_fu_834_p7;
wire   [3:0] tmp_150_fu_834_p9;
wire   [3:0] tmp_150_fu_834_p11;
wire   [3:0] tmp_150_fu_834_p13;
wire   [3:0] tmp_150_fu_834_p15;
wire  signed [3:0] tmp_150_fu_834_p17;
wire  signed [3:0] tmp_150_fu_834_p19;
wire  signed [3:0] tmp_150_fu_834_p21;
wire  signed [3:0] tmp_150_fu_834_p23;
wire  signed [3:0] tmp_150_fu_834_p25;
wire  signed [3:0] tmp_150_fu_834_p27;
wire  signed [3:0] tmp_150_fu_834_p29;
wire  signed [3:0] tmp_150_fu_834_p31;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 i_fu_136 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.CASE13( 4'hD ),.din13_WIDTH( 64 ),.CASE14( 4'hE ),.din14_WIDTH( 64 ),.CASE15( 4'hF ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U404(.din0(activations2_q1),.din1(activations2_1_q1),.din2(activations2_2_q1),.din3(activations2_3_q1),.din4(activations2_4_q1),.din5(activations2_5_q1),.din6(activations2_6_q1),.din7(activations2_7_q1),.din8(activations2_8_q1),.din9(activations2_9_q1),.din10(activations2_10_q1),.din11(activations2_11_q1),.din12(activations2_12_q1),.din13(activations2_13_q1),.din14(activations2_14_q1),.din15(activations2_15_q1),.def(tmp_149_fu_699_p33),.sel(trunc_ln26_reg_916),.dout(tmp_149_fu_699_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.CASE13( 4'hD ),.din13_WIDTH( 64 ),.CASE14( 4'hE ),.din14_WIDTH( 64 ),.CASE15( 4'hF ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U405(.din0(tmp_150_fu_834_p2),.din1(tmp_150_fu_834_p4),.din2(tmp_150_fu_834_p6),.din3(tmp_150_fu_834_p8),.din4(tmp_150_fu_834_p10),.din5(tmp_150_fu_834_p12),.din6(tmp_150_fu_834_p14),.din7(tmp_150_fu_834_p16),.din8(tmp_150_fu_834_p18),.din9(tmp_150_fu_834_p20),.din10(tmp_150_fu_834_p22),.din11(tmp_150_fu_834_p24),.din12(tmp_150_fu_834_p26),.din13(tmp_150_fu_834_p28),.din14(tmp_150_fu_834_p30),.din15(tmp_150_fu_834_p32),.def(tmp_150_fu_834_p33),.sel(trunc_ln26_reg_916),.dout(tmp_150_fu_834_p35));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln26_fu_632_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_136 <= add_ln26_fu_638_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_136 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_10_addr_reg_982 <= zext_ln25_fu_658_p1;
        activations2_10_addr_reg_982_pp0_iter1_reg <= activations2_10_addr_reg_982;
        activations2_11_addr_reg_988 <= zext_ln25_fu_658_p1;
        activations2_11_addr_reg_988_pp0_iter1_reg <= activations2_11_addr_reg_988;
        activations2_12_addr_reg_994 <= zext_ln25_fu_658_p1;
        activations2_12_addr_reg_994_pp0_iter1_reg <= activations2_12_addr_reg_994;
        activations2_13_addr_reg_1000 <= zext_ln25_fu_658_p1;
        activations2_13_addr_reg_1000_pp0_iter1_reg <= activations2_13_addr_reg_1000;
        activations2_14_addr_reg_1006 <= zext_ln25_fu_658_p1;
        activations2_14_addr_reg_1006_pp0_iter1_reg <= activations2_14_addr_reg_1006;
        activations2_15_addr_reg_1012 <= zext_ln25_fu_658_p1;
        activations2_15_addr_reg_1012_pp0_iter1_reg <= activations2_15_addr_reg_1012;
        activations2_1_addr_reg_928 <= zext_ln25_fu_658_p1;
        activations2_1_addr_reg_928_pp0_iter1_reg <= activations2_1_addr_reg_928;
        activations2_2_addr_reg_934 <= zext_ln25_fu_658_p1;
        activations2_2_addr_reg_934_pp0_iter1_reg <= activations2_2_addr_reg_934;
        activations2_3_addr_reg_940 <= zext_ln25_fu_658_p1;
        activations2_3_addr_reg_940_pp0_iter1_reg <= activations2_3_addr_reg_940;
        activations2_4_addr_reg_946 <= zext_ln25_fu_658_p1;
        activations2_4_addr_reg_946_pp0_iter1_reg <= activations2_4_addr_reg_946;
        activations2_5_addr_reg_952 <= zext_ln25_fu_658_p1;
        activations2_5_addr_reg_952_pp0_iter1_reg <= activations2_5_addr_reg_952;
        activations2_6_addr_reg_958 <= zext_ln25_fu_658_p1;
        activations2_6_addr_reg_958_pp0_iter1_reg <= activations2_6_addr_reg_958;
        activations2_7_addr_reg_964 <= zext_ln25_fu_658_p1;
        activations2_7_addr_reg_964_pp0_iter1_reg <= activations2_7_addr_reg_964;
        activations2_8_addr_reg_970 <= zext_ln25_fu_658_p1;
        activations2_8_addr_reg_970_pp0_iter1_reg <= activations2_8_addr_reg_970;
        activations2_9_addr_reg_976 <= zext_ln25_fu_658_p1;
        activations2_9_addr_reg_976_pp0_iter1_reg <= activations2_9_addr_reg_976;
        activations2_addr_reg_922 <= zext_ln25_fu_658_p1;
        activations2_addr_reg_922_pp0_iter1_reg <= activations2_addr_reg_922;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        tmp_149_reg_1098 <= tmp_149_fu_699_p35;
        tmp_150_reg_1103 <= tmp_150_fu_834_p35;
        trunc_ln26_reg_916 <= trunc_ln26_fu_644_p1;
        trunc_ln26_reg_916_pp0_iter1_reg <= trunc_ln26_reg_916;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        activations2_10_addr_reg_982_pp0_iter2_reg <= activations2_10_addr_reg_982_pp0_iter1_reg;
        activations2_10_addr_reg_982_pp0_iter3_reg <= activations2_10_addr_reg_982_pp0_iter2_reg;
        activations2_10_addr_reg_982_pp0_iter4_reg <= activations2_10_addr_reg_982_pp0_iter3_reg;
        activations2_10_addr_reg_982_pp0_iter5_reg <= activations2_10_addr_reg_982_pp0_iter4_reg;
        activations2_10_addr_reg_982_pp0_iter6_reg <= activations2_10_addr_reg_982_pp0_iter5_reg;
        activations2_10_addr_reg_982_pp0_iter7_reg <= activations2_10_addr_reg_982_pp0_iter6_reg;
        activations2_10_addr_reg_982_pp0_iter8_reg <= activations2_10_addr_reg_982_pp0_iter7_reg;
        activations2_10_addr_reg_982_pp0_iter9_reg <= activations2_10_addr_reg_982_pp0_iter8_reg;
        activations2_11_addr_reg_988_pp0_iter2_reg <= activations2_11_addr_reg_988_pp0_iter1_reg;
        activations2_11_addr_reg_988_pp0_iter3_reg <= activations2_11_addr_reg_988_pp0_iter2_reg;
        activations2_11_addr_reg_988_pp0_iter4_reg <= activations2_11_addr_reg_988_pp0_iter3_reg;
        activations2_11_addr_reg_988_pp0_iter5_reg <= activations2_11_addr_reg_988_pp0_iter4_reg;
        activations2_11_addr_reg_988_pp0_iter6_reg <= activations2_11_addr_reg_988_pp0_iter5_reg;
        activations2_11_addr_reg_988_pp0_iter7_reg <= activations2_11_addr_reg_988_pp0_iter6_reg;
        activations2_11_addr_reg_988_pp0_iter8_reg <= activations2_11_addr_reg_988_pp0_iter7_reg;
        activations2_11_addr_reg_988_pp0_iter9_reg <= activations2_11_addr_reg_988_pp0_iter8_reg;
        activations2_12_addr_reg_994_pp0_iter2_reg <= activations2_12_addr_reg_994_pp0_iter1_reg;
        activations2_12_addr_reg_994_pp0_iter3_reg <= activations2_12_addr_reg_994_pp0_iter2_reg;
        activations2_12_addr_reg_994_pp0_iter4_reg <= activations2_12_addr_reg_994_pp0_iter3_reg;
        activations2_12_addr_reg_994_pp0_iter5_reg <= activations2_12_addr_reg_994_pp0_iter4_reg;
        activations2_12_addr_reg_994_pp0_iter6_reg <= activations2_12_addr_reg_994_pp0_iter5_reg;
        activations2_12_addr_reg_994_pp0_iter7_reg <= activations2_12_addr_reg_994_pp0_iter6_reg;
        activations2_12_addr_reg_994_pp0_iter8_reg <= activations2_12_addr_reg_994_pp0_iter7_reg;
        activations2_12_addr_reg_994_pp0_iter9_reg <= activations2_12_addr_reg_994_pp0_iter8_reg;
        activations2_13_addr_reg_1000_pp0_iter2_reg <= activations2_13_addr_reg_1000_pp0_iter1_reg;
        activations2_13_addr_reg_1000_pp0_iter3_reg <= activations2_13_addr_reg_1000_pp0_iter2_reg;
        activations2_13_addr_reg_1000_pp0_iter4_reg <= activations2_13_addr_reg_1000_pp0_iter3_reg;
        activations2_13_addr_reg_1000_pp0_iter5_reg <= activations2_13_addr_reg_1000_pp0_iter4_reg;
        activations2_13_addr_reg_1000_pp0_iter6_reg <= activations2_13_addr_reg_1000_pp0_iter5_reg;
        activations2_13_addr_reg_1000_pp0_iter7_reg <= activations2_13_addr_reg_1000_pp0_iter6_reg;
        activations2_13_addr_reg_1000_pp0_iter8_reg <= activations2_13_addr_reg_1000_pp0_iter7_reg;
        activations2_13_addr_reg_1000_pp0_iter9_reg <= activations2_13_addr_reg_1000_pp0_iter8_reg;
        activations2_14_addr_reg_1006_pp0_iter2_reg <= activations2_14_addr_reg_1006_pp0_iter1_reg;
        activations2_14_addr_reg_1006_pp0_iter3_reg <= activations2_14_addr_reg_1006_pp0_iter2_reg;
        activations2_14_addr_reg_1006_pp0_iter4_reg <= activations2_14_addr_reg_1006_pp0_iter3_reg;
        activations2_14_addr_reg_1006_pp0_iter5_reg <= activations2_14_addr_reg_1006_pp0_iter4_reg;
        activations2_14_addr_reg_1006_pp0_iter6_reg <= activations2_14_addr_reg_1006_pp0_iter5_reg;
        activations2_14_addr_reg_1006_pp0_iter7_reg <= activations2_14_addr_reg_1006_pp0_iter6_reg;
        activations2_14_addr_reg_1006_pp0_iter8_reg <= activations2_14_addr_reg_1006_pp0_iter7_reg;
        activations2_14_addr_reg_1006_pp0_iter9_reg <= activations2_14_addr_reg_1006_pp0_iter8_reg;
        activations2_15_addr_reg_1012_pp0_iter2_reg <= activations2_15_addr_reg_1012_pp0_iter1_reg;
        activations2_15_addr_reg_1012_pp0_iter3_reg <= activations2_15_addr_reg_1012_pp0_iter2_reg;
        activations2_15_addr_reg_1012_pp0_iter4_reg <= activations2_15_addr_reg_1012_pp0_iter3_reg;
        activations2_15_addr_reg_1012_pp0_iter5_reg <= activations2_15_addr_reg_1012_pp0_iter4_reg;
        activations2_15_addr_reg_1012_pp0_iter6_reg <= activations2_15_addr_reg_1012_pp0_iter5_reg;
        activations2_15_addr_reg_1012_pp0_iter7_reg <= activations2_15_addr_reg_1012_pp0_iter6_reg;
        activations2_15_addr_reg_1012_pp0_iter8_reg <= activations2_15_addr_reg_1012_pp0_iter7_reg;
        activations2_15_addr_reg_1012_pp0_iter9_reg <= activations2_15_addr_reg_1012_pp0_iter8_reg;
        activations2_1_addr_reg_928_pp0_iter2_reg <= activations2_1_addr_reg_928_pp0_iter1_reg;
        activations2_1_addr_reg_928_pp0_iter3_reg <= activations2_1_addr_reg_928_pp0_iter2_reg;
        activations2_1_addr_reg_928_pp0_iter4_reg <= activations2_1_addr_reg_928_pp0_iter3_reg;
        activations2_1_addr_reg_928_pp0_iter5_reg <= activations2_1_addr_reg_928_pp0_iter4_reg;
        activations2_1_addr_reg_928_pp0_iter6_reg <= activations2_1_addr_reg_928_pp0_iter5_reg;
        activations2_1_addr_reg_928_pp0_iter7_reg <= activations2_1_addr_reg_928_pp0_iter6_reg;
        activations2_1_addr_reg_928_pp0_iter8_reg <= activations2_1_addr_reg_928_pp0_iter7_reg;
        activations2_1_addr_reg_928_pp0_iter9_reg <= activations2_1_addr_reg_928_pp0_iter8_reg;
        activations2_2_addr_reg_934_pp0_iter2_reg <= activations2_2_addr_reg_934_pp0_iter1_reg;
        activations2_2_addr_reg_934_pp0_iter3_reg <= activations2_2_addr_reg_934_pp0_iter2_reg;
        activations2_2_addr_reg_934_pp0_iter4_reg <= activations2_2_addr_reg_934_pp0_iter3_reg;
        activations2_2_addr_reg_934_pp0_iter5_reg <= activations2_2_addr_reg_934_pp0_iter4_reg;
        activations2_2_addr_reg_934_pp0_iter6_reg <= activations2_2_addr_reg_934_pp0_iter5_reg;
        activations2_2_addr_reg_934_pp0_iter7_reg <= activations2_2_addr_reg_934_pp0_iter6_reg;
        activations2_2_addr_reg_934_pp0_iter8_reg <= activations2_2_addr_reg_934_pp0_iter7_reg;
        activations2_2_addr_reg_934_pp0_iter9_reg <= activations2_2_addr_reg_934_pp0_iter8_reg;
        activations2_3_addr_reg_940_pp0_iter2_reg <= activations2_3_addr_reg_940_pp0_iter1_reg;
        activations2_3_addr_reg_940_pp0_iter3_reg <= activations2_3_addr_reg_940_pp0_iter2_reg;
        activations2_3_addr_reg_940_pp0_iter4_reg <= activations2_3_addr_reg_940_pp0_iter3_reg;
        activations2_3_addr_reg_940_pp0_iter5_reg <= activations2_3_addr_reg_940_pp0_iter4_reg;
        activations2_3_addr_reg_940_pp0_iter6_reg <= activations2_3_addr_reg_940_pp0_iter5_reg;
        activations2_3_addr_reg_940_pp0_iter7_reg <= activations2_3_addr_reg_940_pp0_iter6_reg;
        activations2_3_addr_reg_940_pp0_iter8_reg <= activations2_3_addr_reg_940_pp0_iter7_reg;
        activations2_3_addr_reg_940_pp0_iter9_reg <= activations2_3_addr_reg_940_pp0_iter8_reg;
        activations2_4_addr_reg_946_pp0_iter2_reg <= activations2_4_addr_reg_946_pp0_iter1_reg;
        activations2_4_addr_reg_946_pp0_iter3_reg <= activations2_4_addr_reg_946_pp0_iter2_reg;
        activations2_4_addr_reg_946_pp0_iter4_reg <= activations2_4_addr_reg_946_pp0_iter3_reg;
        activations2_4_addr_reg_946_pp0_iter5_reg <= activations2_4_addr_reg_946_pp0_iter4_reg;
        activations2_4_addr_reg_946_pp0_iter6_reg <= activations2_4_addr_reg_946_pp0_iter5_reg;
        activations2_4_addr_reg_946_pp0_iter7_reg <= activations2_4_addr_reg_946_pp0_iter6_reg;
        activations2_4_addr_reg_946_pp0_iter8_reg <= activations2_4_addr_reg_946_pp0_iter7_reg;
        activations2_4_addr_reg_946_pp0_iter9_reg <= activations2_4_addr_reg_946_pp0_iter8_reg;
        activations2_5_addr_reg_952_pp0_iter2_reg <= activations2_5_addr_reg_952_pp0_iter1_reg;
        activations2_5_addr_reg_952_pp0_iter3_reg <= activations2_5_addr_reg_952_pp0_iter2_reg;
        activations2_5_addr_reg_952_pp0_iter4_reg <= activations2_5_addr_reg_952_pp0_iter3_reg;
        activations2_5_addr_reg_952_pp0_iter5_reg <= activations2_5_addr_reg_952_pp0_iter4_reg;
        activations2_5_addr_reg_952_pp0_iter6_reg <= activations2_5_addr_reg_952_pp0_iter5_reg;
        activations2_5_addr_reg_952_pp0_iter7_reg <= activations2_5_addr_reg_952_pp0_iter6_reg;
        activations2_5_addr_reg_952_pp0_iter8_reg <= activations2_5_addr_reg_952_pp0_iter7_reg;
        activations2_5_addr_reg_952_pp0_iter9_reg <= activations2_5_addr_reg_952_pp0_iter8_reg;
        activations2_6_addr_reg_958_pp0_iter2_reg <= activations2_6_addr_reg_958_pp0_iter1_reg;
        activations2_6_addr_reg_958_pp0_iter3_reg <= activations2_6_addr_reg_958_pp0_iter2_reg;
        activations2_6_addr_reg_958_pp0_iter4_reg <= activations2_6_addr_reg_958_pp0_iter3_reg;
        activations2_6_addr_reg_958_pp0_iter5_reg <= activations2_6_addr_reg_958_pp0_iter4_reg;
        activations2_6_addr_reg_958_pp0_iter6_reg <= activations2_6_addr_reg_958_pp0_iter5_reg;
        activations2_6_addr_reg_958_pp0_iter7_reg <= activations2_6_addr_reg_958_pp0_iter6_reg;
        activations2_6_addr_reg_958_pp0_iter8_reg <= activations2_6_addr_reg_958_pp0_iter7_reg;
        activations2_6_addr_reg_958_pp0_iter9_reg <= activations2_6_addr_reg_958_pp0_iter8_reg;
        activations2_7_addr_reg_964_pp0_iter2_reg <= activations2_7_addr_reg_964_pp0_iter1_reg;
        activations2_7_addr_reg_964_pp0_iter3_reg <= activations2_7_addr_reg_964_pp0_iter2_reg;
        activations2_7_addr_reg_964_pp0_iter4_reg <= activations2_7_addr_reg_964_pp0_iter3_reg;
        activations2_7_addr_reg_964_pp0_iter5_reg <= activations2_7_addr_reg_964_pp0_iter4_reg;
        activations2_7_addr_reg_964_pp0_iter6_reg <= activations2_7_addr_reg_964_pp0_iter5_reg;
        activations2_7_addr_reg_964_pp0_iter7_reg <= activations2_7_addr_reg_964_pp0_iter6_reg;
        activations2_7_addr_reg_964_pp0_iter8_reg <= activations2_7_addr_reg_964_pp0_iter7_reg;
        activations2_7_addr_reg_964_pp0_iter9_reg <= activations2_7_addr_reg_964_pp0_iter8_reg;
        activations2_8_addr_reg_970_pp0_iter2_reg <= activations2_8_addr_reg_970_pp0_iter1_reg;
        activations2_8_addr_reg_970_pp0_iter3_reg <= activations2_8_addr_reg_970_pp0_iter2_reg;
        activations2_8_addr_reg_970_pp0_iter4_reg <= activations2_8_addr_reg_970_pp0_iter3_reg;
        activations2_8_addr_reg_970_pp0_iter5_reg <= activations2_8_addr_reg_970_pp0_iter4_reg;
        activations2_8_addr_reg_970_pp0_iter6_reg <= activations2_8_addr_reg_970_pp0_iter5_reg;
        activations2_8_addr_reg_970_pp0_iter7_reg <= activations2_8_addr_reg_970_pp0_iter6_reg;
        activations2_8_addr_reg_970_pp0_iter8_reg <= activations2_8_addr_reg_970_pp0_iter7_reg;
        activations2_8_addr_reg_970_pp0_iter9_reg <= activations2_8_addr_reg_970_pp0_iter8_reg;
        activations2_9_addr_reg_976_pp0_iter2_reg <= activations2_9_addr_reg_976_pp0_iter1_reg;
        activations2_9_addr_reg_976_pp0_iter3_reg <= activations2_9_addr_reg_976_pp0_iter2_reg;
        activations2_9_addr_reg_976_pp0_iter4_reg <= activations2_9_addr_reg_976_pp0_iter3_reg;
        activations2_9_addr_reg_976_pp0_iter5_reg <= activations2_9_addr_reg_976_pp0_iter4_reg;
        activations2_9_addr_reg_976_pp0_iter6_reg <= activations2_9_addr_reg_976_pp0_iter5_reg;
        activations2_9_addr_reg_976_pp0_iter7_reg <= activations2_9_addr_reg_976_pp0_iter6_reg;
        activations2_9_addr_reg_976_pp0_iter8_reg <= activations2_9_addr_reg_976_pp0_iter7_reg;
        activations2_9_addr_reg_976_pp0_iter9_reg <= activations2_9_addr_reg_976_pp0_iter8_reg;
        activations2_addr_reg_922_pp0_iter2_reg <= activations2_addr_reg_922_pp0_iter1_reg;
        activations2_addr_reg_922_pp0_iter3_reg <= activations2_addr_reg_922_pp0_iter2_reg;
        activations2_addr_reg_922_pp0_iter4_reg <= activations2_addr_reg_922_pp0_iter3_reg;
        activations2_addr_reg_922_pp0_iter5_reg <= activations2_addr_reg_922_pp0_iter4_reg;
        activations2_addr_reg_922_pp0_iter6_reg <= activations2_addr_reg_922_pp0_iter5_reg;
        activations2_addr_reg_922_pp0_iter7_reg <= activations2_addr_reg_922_pp0_iter6_reg;
        activations2_addr_reg_922_pp0_iter8_reg <= activations2_addr_reg_922_pp0_iter7_reg;
        activations2_addr_reg_922_pp0_iter9_reg <= activations2_addr_reg_922_pp0_iter8_reg;
        add_i_i_reg_1108 <= grp_fu_5581_p_dout0;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        trunc_ln26_reg_916_pp0_iter2_reg <= trunc_ln26_reg_916_pp0_iter1_reg;
        trunc_ln26_reg_916_pp0_iter3_reg <= trunc_ln26_reg_916_pp0_iter2_reg;
        trunc_ln26_reg_916_pp0_iter4_reg <= trunc_ln26_reg_916_pp0_iter3_reg;
        trunc_ln26_reg_916_pp0_iter5_reg <= trunc_ln26_reg_916_pp0_iter4_reg;
        trunc_ln26_reg_916_pp0_iter6_reg <= trunc_ln26_reg_916_pp0_iter5_reg;
        trunc_ln26_reg_916_pp0_iter7_reg <= trunc_ln26_reg_916_pp0_iter6_reg;
        trunc_ln26_reg_916_pp0_iter8_reg <= trunc_ln26_reg_916_pp0_iter7_reg;
        trunc_ln26_reg_916_pp0_iter9_reg <= trunc_ln26_reg_916_pp0_iter8_reg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        activations2_10_ce0_local = 1'b1;
    end else begin
        activations2_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_10_ce1_local = 1'b1;
    end else begin
        activations2_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln26_reg_916_pp0_iter9_reg == 4'd10))) begin
        activations2_10_we0_local = 1'b1;
    end else begin
        activations2_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        activations2_11_ce0_local = 1'b1;
    end else begin
        activations2_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_11_ce1_local = 1'b1;
    end else begin
        activations2_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln26_reg_916_pp0_iter9_reg == 4'd11))) begin
        activations2_11_we0_local = 1'b1;
    end else begin
        activations2_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        activations2_12_ce0_local = 1'b1;
    end else begin
        activations2_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_12_ce1_local = 1'b1;
    end else begin
        activations2_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln26_reg_916_pp0_iter9_reg == 4'd12))) begin
        activations2_12_we0_local = 1'b1;
    end else begin
        activations2_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        activations2_13_ce0_local = 1'b1;
    end else begin
        activations2_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_13_ce1_local = 1'b1;
    end else begin
        activations2_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln26_reg_916_pp0_iter9_reg == 4'd13))) begin
        activations2_13_we0_local = 1'b1;
    end else begin
        activations2_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        activations2_14_ce0_local = 1'b1;
    end else begin
        activations2_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_14_ce1_local = 1'b1;
    end else begin
        activations2_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln26_reg_916_pp0_iter9_reg == 4'd14))) begin
        activations2_14_we0_local = 1'b1;
    end else begin
        activations2_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        activations2_15_ce0_local = 1'b1;
    end else begin
        activations2_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_15_ce1_local = 1'b1;
    end else begin
        activations2_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln26_reg_916_pp0_iter9_reg == 4'd15))) begin
        activations2_15_we0_local = 1'b1;
    end else begin
        activations2_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        activations2_1_ce0_local = 1'b1;
    end else begin
        activations2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_1_ce1_local = 1'b1;
    end else begin
        activations2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln26_reg_916_pp0_iter9_reg == 4'd1))) begin
        activations2_1_we0_local = 1'b1;
    end else begin
        activations2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        activations2_2_ce0_local = 1'b1;
    end else begin
        activations2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_2_ce1_local = 1'b1;
    end else begin
        activations2_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln26_reg_916_pp0_iter9_reg == 4'd2))) begin
        activations2_2_we0_local = 1'b1;
    end else begin
        activations2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        activations2_3_ce0_local = 1'b1;
    end else begin
        activations2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_3_ce1_local = 1'b1;
    end else begin
        activations2_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln26_reg_916_pp0_iter9_reg == 4'd3))) begin
        activations2_3_we0_local = 1'b1;
    end else begin
        activations2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        activations2_4_ce0_local = 1'b1;
    end else begin
        activations2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_4_ce1_local = 1'b1;
    end else begin
        activations2_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln26_reg_916_pp0_iter9_reg == 4'd4))) begin
        activations2_4_we0_local = 1'b1;
    end else begin
        activations2_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        activations2_5_ce0_local = 1'b1;
    end else begin
        activations2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_5_ce1_local = 1'b1;
    end else begin
        activations2_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln26_reg_916_pp0_iter9_reg == 4'd5))) begin
        activations2_5_we0_local = 1'b1;
    end else begin
        activations2_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        activations2_6_ce0_local = 1'b1;
    end else begin
        activations2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_6_ce1_local = 1'b1;
    end else begin
        activations2_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln26_reg_916_pp0_iter9_reg == 4'd6))) begin
        activations2_6_we0_local = 1'b1;
    end else begin
        activations2_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        activations2_7_ce0_local = 1'b1;
    end else begin
        activations2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_7_ce1_local = 1'b1;
    end else begin
        activations2_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln26_reg_916_pp0_iter9_reg == 4'd7))) begin
        activations2_7_we0_local = 1'b1;
    end else begin
        activations2_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        activations2_8_ce0_local = 1'b1;
    end else begin
        activations2_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_8_ce1_local = 1'b1;
    end else begin
        activations2_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln26_reg_916_pp0_iter9_reg == 4'd8))) begin
        activations2_8_we0_local = 1'b1;
    end else begin
        activations2_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        activations2_9_ce0_local = 1'b1;
    end else begin
        activations2_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_9_ce1_local = 1'b1;
    end else begin
        activations2_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln26_reg_916_pp0_iter9_reg == 4'd9))) begin
        activations2_9_we0_local = 1'b1;
    end else begin
        activations2_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        activations2_ce0_local = 1'b1;
    end else begin
        activations2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_ce1_local = 1'b1;
    end else begin
        activations2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln26_reg_916_pp0_iter9_reg == 4'd0))) begin
        activations2_we0_local = 1'b1;
    end else begin
        activations2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln26_fu_632_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_13 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_13 = i_fu_136;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_0_ce0_local = 1'b1;
    end else begin
        biases2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_10_ce0_local = 1'b1;
    end else begin
        biases2_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_11_ce0_local = 1'b1;
    end else begin
        biases2_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_12_ce0_local = 1'b1;
    end else begin
        biases2_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_13_ce0_local = 1'b1;
    end else begin
        biases2_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_14_ce0_local = 1'b1;
    end else begin
        biases2_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_15_ce0_local = 1'b1;
    end else begin
        biases2_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_1_ce0_local = 1'b1;
    end else begin
        biases2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_2_ce0_local = 1'b1;
    end else begin
        biases2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_3_ce0_local = 1'b1;
    end else begin
        biases2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_4_ce0_local = 1'b1;
    end else begin
        biases2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_5_ce0_local = 1'b1;
    end else begin
        biases2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_6_ce0_local = 1'b1;
    end else begin
        biases2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_7_ce0_local = 1'b1;
    end else begin
        biases2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_8_ce0_local = 1'b1;
    end else begin
        biases2_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_9_ce0_local = 1'b1;
    end else begin
        biases2_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign activations2_10_address0 = activations2_10_addr_reg_982_pp0_iter9_reg;
assign activations2_10_address1 = zext_ln25_fu_658_p1;
assign activations2_10_ce0 = activations2_10_ce0_local;
assign activations2_10_ce1 = activations2_10_ce1_local;
assign activations2_10_d0 = add_i_i_reg_1108;
assign activations2_10_we0 = activations2_10_we0_local;
assign activations2_11_address0 = activations2_11_addr_reg_988_pp0_iter9_reg;
assign activations2_11_address1 = zext_ln25_fu_658_p1;
assign activations2_11_ce0 = activations2_11_ce0_local;
assign activations2_11_ce1 = activations2_11_ce1_local;
assign activations2_11_d0 = add_i_i_reg_1108;
assign activations2_11_we0 = activations2_11_we0_local;
assign activations2_12_address0 = activations2_12_addr_reg_994_pp0_iter9_reg;
assign activations2_12_address1 = zext_ln25_fu_658_p1;
assign activations2_12_ce0 = activations2_12_ce0_local;
assign activations2_12_ce1 = activations2_12_ce1_local;
assign activations2_12_d0 = add_i_i_reg_1108;
assign activations2_12_we0 = activations2_12_we0_local;
assign activations2_13_address0 = activations2_13_addr_reg_1000_pp0_iter9_reg;
assign activations2_13_address1 = zext_ln25_fu_658_p1;
assign activations2_13_ce0 = activations2_13_ce0_local;
assign activations2_13_ce1 = activations2_13_ce1_local;
assign activations2_13_d0 = add_i_i_reg_1108;
assign activations2_13_we0 = activations2_13_we0_local;
assign activations2_14_address0 = activations2_14_addr_reg_1006_pp0_iter9_reg;
assign activations2_14_address1 = zext_ln25_fu_658_p1;
assign activations2_14_ce0 = activations2_14_ce0_local;
assign activations2_14_ce1 = activations2_14_ce1_local;
assign activations2_14_d0 = add_i_i_reg_1108;
assign activations2_14_we0 = activations2_14_we0_local;
assign activations2_15_address0 = activations2_15_addr_reg_1012_pp0_iter9_reg;
assign activations2_15_address1 = zext_ln25_fu_658_p1;
assign activations2_15_ce0 = activations2_15_ce0_local;
assign activations2_15_ce1 = activations2_15_ce1_local;
assign activations2_15_d0 = add_i_i_reg_1108;
assign activations2_15_we0 = activations2_15_we0_local;
assign activations2_1_address0 = activations2_1_addr_reg_928_pp0_iter9_reg;
assign activations2_1_address1 = zext_ln25_fu_658_p1;
assign activations2_1_ce0 = activations2_1_ce0_local;
assign activations2_1_ce1 = activations2_1_ce1_local;
assign activations2_1_d0 = add_i_i_reg_1108;
assign activations2_1_we0 = activations2_1_we0_local;
assign activations2_2_address0 = activations2_2_addr_reg_934_pp0_iter9_reg;
assign activations2_2_address1 = zext_ln25_fu_658_p1;
assign activations2_2_ce0 = activations2_2_ce0_local;
assign activations2_2_ce1 = activations2_2_ce1_local;
assign activations2_2_d0 = add_i_i_reg_1108;
assign activations2_2_we0 = activations2_2_we0_local;
assign activations2_3_address0 = activations2_3_addr_reg_940_pp0_iter9_reg;
assign activations2_3_address1 = zext_ln25_fu_658_p1;
assign activations2_3_ce0 = activations2_3_ce0_local;
assign activations2_3_ce1 = activations2_3_ce1_local;
assign activations2_3_d0 = add_i_i_reg_1108;
assign activations2_3_we0 = activations2_3_we0_local;
assign activations2_4_address0 = activations2_4_addr_reg_946_pp0_iter9_reg;
assign activations2_4_address1 = zext_ln25_fu_658_p1;
assign activations2_4_ce0 = activations2_4_ce0_local;
assign activations2_4_ce1 = activations2_4_ce1_local;
assign activations2_4_d0 = add_i_i_reg_1108;
assign activations2_4_we0 = activations2_4_we0_local;
assign activations2_5_address0 = activations2_5_addr_reg_952_pp0_iter9_reg;
assign activations2_5_address1 = zext_ln25_fu_658_p1;
assign activations2_5_ce0 = activations2_5_ce0_local;
assign activations2_5_ce1 = activations2_5_ce1_local;
assign activations2_5_d0 = add_i_i_reg_1108;
assign activations2_5_we0 = activations2_5_we0_local;
assign activations2_6_address0 = activations2_6_addr_reg_958_pp0_iter9_reg;
assign activations2_6_address1 = zext_ln25_fu_658_p1;
assign activations2_6_ce0 = activations2_6_ce0_local;
assign activations2_6_ce1 = activations2_6_ce1_local;
assign activations2_6_d0 = add_i_i_reg_1108;
assign activations2_6_we0 = activations2_6_we0_local;
assign activations2_7_address0 = activations2_7_addr_reg_964_pp0_iter9_reg;
assign activations2_7_address1 = zext_ln25_fu_658_p1;
assign activations2_7_ce0 = activations2_7_ce0_local;
assign activations2_7_ce1 = activations2_7_ce1_local;
assign activations2_7_d0 = add_i_i_reg_1108;
assign activations2_7_we0 = activations2_7_we0_local;
assign activations2_8_address0 = activations2_8_addr_reg_970_pp0_iter9_reg;
assign activations2_8_address1 = zext_ln25_fu_658_p1;
assign activations2_8_ce0 = activations2_8_ce0_local;
assign activations2_8_ce1 = activations2_8_ce1_local;
assign activations2_8_d0 = add_i_i_reg_1108;
assign activations2_8_we0 = activations2_8_we0_local;
assign activations2_9_address0 = activations2_9_addr_reg_976_pp0_iter9_reg;
assign activations2_9_address1 = zext_ln25_fu_658_p1;
assign activations2_9_ce0 = activations2_9_ce0_local;
assign activations2_9_ce1 = activations2_9_ce1_local;
assign activations2_9_d0 = add_i_i_reg_1108;
assign activations2_9_we0 = activations2_9_we0_local;
assign activations2_address0 = activations2_addr_reg_922_pp0_iter9_reg;
assign activations2_address1 = zext_ln25_fu_658_p1;
assign activations2_ce0 = activations2_ce0_local;
assign activations2_ce1 = activations2_ce1_local;
assign activations2_d0 = add_i_i_reg_1108;
assign activations2_we0 = activations2_we0_local;
assign add_ln26_fu_638_p2 = (ap_sig_allocacmp_i_13 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign biases2_0_address0 = zext_ln25_fu_658_p1;
assign biases2_0_ce0 = biases2_0_ce0_local;
assign biases2_10_address0 = zext_ln25_fu_658_p1;
assign biases2_10_ce0 = biases2_10_ce0_local;
assign biases2_11_address0 = zext_ln25_fu_658_p1;
assign biases2_11_ce0 = biases2_11_ce0_local;
assign biases2_12_address0 = zext_ln25_fu_658_p1;
assign biases2_12_ce0 = biases2_12_ce0_local;
assign biases2_13_address0 = zext_ln25_fu_658_p1;
assign biases2_13_ce0 = biases2_13_ce0_local;
assign biases2_14_address0 = zext_ln25_fu_658_p1;
assign biases2_14_ce0 = biases2_14_ce0_local;
assign biases2_15_address0 = zext_ln25_fu_658_p1;
assign biases2_15_ce0 = biases2_15_ce0_local;
assign biases2_1_address0 = zext_ln25_fu_658_p1;
assign biases2_1_ce0 = biases2_1_ce0_local;
assign biases2_2_address0 = zext_ln25_fu_658_p1;
assign biases2_2_ce0 = biases2_2_ce0_local;
assign biases2_3_address0 = zext_ln25_fu_658_p1;
assign biases2_3_ce0 = biases2_3_ce0_local;
assign biases2_4_address0 = zext_ln25_fu_658_p1;
assign biases2_4_ce0 = biases2_4_ce0_local;
assign biases2_5_address0 = zext_ln25_fu_658_p1;
assign biases2_5_ce0 = biases2_5_ce0_local;
assign biases2_6_address0 = zext_ln25_fu_658_p1;
assign biases2_6_ce0 = biases2_6_ce0_local;
assign biases2_7_address0 = zext_ln25_fu_658_p1;
assign biases2_7_ce0 = biases2_7_ce0_local;
assign biases2_8_address0 = zext_ln25_fu_658_p1;
assign biases2_8_ce0 = biases2_8_ce0_local;
assign biases2_9_address0 = zext_ln25_fu_658_p1;
assign biases2_9_ce0 = biases2_9_ce0_local;
assign grp_fu_5581_p_ce = 1'b1;
assign grp_fu_5581_p_din0 = tmp_149_reg_1098;
assign grp_fu_5581_p_din1 = tmp_150_reg_1103;
assign grp_fu_5581_p_opcode = 2'd0;
assign icmp_ln26_fu_632_p2 = ((ap_sig_allocacmp_i_13 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln_fu_648_p4 = {{ap_sig_allocacmp_i_13[5:4]}};
assign tmp_149_fu_699_p33 = 'bx;
assign tmp_150_fu_834_p10 = biases2_4_q0;
assign tmp_150_fu_834_p12 = biases2_5_q0;
assign tmp_150_fu_834_p14 = biases2_6_q0;
assign tmp_150_fu_834_p16 = biases2_7_q0;
assign tmp_150_fu_834_p18 = biases2_8_q0;
assign tmp_150_fu_834_p2 = biases2_0_q0;
assign tmp_150_fu_834_p20 = biases2_9_q0;
assign tmp_150_fu_834_p22 = biases2_10_q0;
assign tmp_150_fu_834_p24 = biases2_11_q0;
assign tmp_150_fu_834_p26 = biases2_12_q0;
assign tmp_150_fu_834_p28 = biases2_13_q0;
assign tmp_150_fu_834_p30 = biases2_14_q0;
assign tmp_150_fu_834_p32 = biases2_15_q0;
assign tmp_150_fu_834_p33 = 'bx;
assign tmp_150_fu_834_p4 = biases2_1_q0;
assign tmp_150_fu_834_p6 = biases2_2_q0;
assign tmp_150_fu_834_p8 = biases2_3_q0;
assign trunc_ln26_fu_644_p1 = ap_sig_allocacmp_i_13[3:0];
assign zext_ln25_fu_658_p1 = lshr_ln_fu_648_p4;
endmodule 