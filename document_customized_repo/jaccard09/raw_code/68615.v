module backprop_backprop_Pipeline_VITIS_LOOP_66_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,output_difference_2_promoted,output_difference_0_promoted,output_difference_1_promoted,output_difference_idx62_val120,output_difference_idx61_val117,output_difference_idx_val114,mux_case_07988_reload,mux_case_18092_reload,mux_case_28196_reload,mul_ln66,training_targets_0_address0,training_targets_0_ce0,training_targets_0_q0,training_targets_1_address0,training_targets_1_ce0,training_targets_1_q0,training_targets_2_address0,training_targets_2_ce0,training_targets_2_q0,training_targets_3_address0,training_targets_3_ce0,training_targets_3_q0,training_targets_4_address0,training_targets_4_ce0,training_targets_4_q0,training_targets_5_address0,training_targets_5_ce0,training_targets_5_q0,training_targets_6_address0,training_targets_6_ce0,training_targets_6_q0,training_targets_7_address0,training_targets_7_ce0,training_targets_7_q0,training_targets_8_address0,training_targets_8_ce0,training_targets_8_q0,training_targets_9_address0,training_targets_9_ce0,training_targets_9_q0,training_targets_10_address0,training_targets_10_ce0,training_targets_10_q0,training_targets_11_address0,training_targets_11_ce0,training_targets_11_q0,training_targets_12_address0,training_targets_12_ce0,training_targets_12_q0,training_targets_13_address0,training_targets_13_ce0,training_targets_13_q0,training_targets_14_address0,training_targets_14_ce0,training_targets_14_q0,training_targets_15_address0,training_targets_15_ce0,training_targets_15_q0,training_targets_16_address0,training_targets_16_ce0,training_targets_16_q0,training_targets_17_address0,training_targets_17_ce0,training_targets_17_q0,training_targets_18_address0,training_targets_18_ce0,training_targets_18_q0,training_targets_19_address0,training_targets_19_ce0,training_targets_19_q0,training_targets_20_address0,training_targets_20_ce0,training_targets_20_q0,training_targets_21_address0,training_targets_21_ce0,training_targets_21_q0,training_targets_22_address0,training_targets_22_ce0,training_targets_22_q0,training_targets_23_address0,training_targets_23_ce0,training_targets_23_q0,training_targets_24_address0,training_targets_24_ce0,training_targets_24_q0,training_targets_25_address0,training_targets_25_ce0,training_targets_25_q0,training_targets_26_address0,training_targets_26_ce0,training_targets_26_q0,training_targets_27_address0,training_targets_27_ce0,training_targets_27_q0,training_targets_28_address0,training_targets_28_ce0,training_targets_28_q0,training_targets_29_address0,training_targets_29_ce0,training_targets_29_q0,training_targets_30_address0,training_targets_30_ce0,training_targets_30_q0,training_targets_31_address0,training_targets_31_ce0,training_targets_31_q0,mux_case_082100_reload,mux_case_183104_reload,mux_case_284108_reload,output_difference_2_out,output_difference_2_out_ap_vld,output_difference_1_out,output_difference_1_out_ap_vld,output_difference_out,output_difference_out_ap_vld,output_difference_idx62_val118_out,output_difference_idx62_val118_out_ap_vld,output_difference_idx61_val115_out,output_difference_idx61_val115_out_ap_vld,output_difference_idx_val112_out,output_difference_idx_val112_out_ap_vld,grp_fu_6592_p_din0,grp_fu_6592_p_din1,grp_fu_6592_p_opcode,grp_fu_6592_p_dout0,grp_fu_6592_p_ce,grp_fu_6784_p_din0,grp_fu_6784_p_din1,grp_fu_6784_p_dout0,grp_fu_6784_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] output_difference_2_promoted;
input  [63:0] output_difference_0_promoted;
input  [63:0] output_difference_1_promoted;
input  [63:0] output_difference_idx62_val120;
input  [63:0] output_difference_idx61_val117;
input  [63:0] output_difference_idx_val114;
input  [63:0] mux_case_07988_reload;
input  [63:0] mux_case_18092_reload;
input  [63:0] mux_case_28196_reload;
input  [8:0] mul_ln66;
output  [3:0] training_targets_0_address0;
output   training_targets_0_ce0;
input  [63:0] training_targets_0_q0;
output  [3:0] training_targets_1_address0;
output   training_targets_1_ce0;
input  [63:0] training_targets_1_q0;
output  [3:0] training_targets_2_address0;
output   training_targets_2_ce0;
input  [63:0] training_targets_2_q0;
output  [3:0] training_targets_3_address0;
output   training_targets_3_ce0;
input  [63:0] training_targets_3_q0;
output  [3:0] training_targets_4_address0;
output   training_targets_4_ce0;
input  [63:0] training_targets_4_q0;
output  [3:0] training_targets_5_address0;
output   training_targets_5_ce0;
input  [63:0] training_targets_5_q0;
output  [3:0] training_targets_6_address0;
output   training_targets_6_ce0;
input  [63:0] training_targets_6_q0;
output  [3:0] training_targets_7_address0;
output   training_targets_7_ce0;
input  [63:0] training_targets_7_q0;
output  [3:0] training_targets_8_address0;
output   training_targets_8_ce0;
input  [63:0] training_targets_8_q0;
output  [3:0] training_targets_9_address0;
output   training_targets_9_ce0;
input  [63:0] training_targets_9_q0;
output  [3:0] training_targets_10_address0;
output   training_targets_10_ce0;
input  [63:0] training_targets_10_q0;
output  [3:0] training_targets_11_address0;
output   training_targets_11_ce0;
input  [63:0] training_targets_11_q0;
output  [3:0] training_targets_12_address0;
output   training_targets_12_ce0;
input  [63:0] training_targets_12_q0;
output  [3:0] training_targets_13_address0;
output   training_targets_13_ce0;
input  [63:0] training_targets_13_q0;
output  [3:0] training_targets_14_address0;
output   training_targets_14_ce0;
input  [63:0] training_targets_14_q0;
output  [3:0] training_targets_15_address0;
output   training_targets_15_ce0;
input  [63:0] training_targets_15_q0;
output  [3:0] training_targets_16_address0;
output   training_targets_16_ce0;
input  [63:0] training_targets_16_q0;
output  [3:0] training_targets_17_address0;
output   training_targets_17_ce0;
input  [63:0] training_targets_17_q0;
output  [3:0] training_targets_18_address0;
output   training_targets_18_ce0;
input  [63:0] training_targets_18_q0;
output  [3:0] training_targets_19_address0;
output   training_targets_19_ce0;
input  [63:0] training_targets_19_q0;
output  [3:0] training_targets_20_address0;
output   training_targets_20_ce0;
input  [63:0] training_targets_20_q0;
output  [3:0] training_targets_21_address0;
output   training_targets_21_ce0;
input  [63:0] training_targets_21_q0;
output  [3:0] training_targets_22_address0;
output   training_targets_22_ce0;
input  [63:0] training_targets_22_q0;
output  [3:0] training_targets_23_address0;
output   training_targets_23_ce0;
input  [63:0] training_targets_23_q0;
output  [3:0] training_targets_24_address0;
output   training_targets_24_ce0;
input  [63:0] training_targets_24_q0;
output  [3:0] training_targets_25_address0;
output   training_targets_25_ce0;
input  [63:0] training_targets_25_q0;
output  [3:0] training_targets_26_address0;
output   training_targets_26_ce0;
input  [63:0] training_targets_26_q0;
output  [3:0] training_targets_27_address0;
output   training_targets_27_ce0;
input  [63:0] training_targets_27_q0;
output  [3:0] training_targets_28_address0;
output   training_targets_28_ce0;
input  [63:0] training_targets_28_q0;
output  [3:0] training_targets_29_address0;
output   training_targets_29_ce0;
input  [63:0] training_targets_29_q0;
output  [3:0] training_targets_30_address0;
output   training_targets_30_ce0;
input  [63:0] training_targets_30_q0;
output  [3:0] training_targets_31_address0;
output   training_targets_31_ce0;
input  [63:0] training_targets_31_q0;
input  [63:0] mux_case_082100_reload;
input  [63:0] mux_case_183104_reload;
input  [63:0] mux_case_284108_reload;
output  [63:0] output_difference_2_out;
output   output_difference_2_out_ap_vld;
output  [63:0] output_difference_1_out;
output   output_difference_1_out_ap_vld;
output  [63:0] output_difference_out;
output   output_difference_out_ap_vld;
output  [63:0] output_difference_idx62_val118_out;
output   output_difference_idx62_val118_out_ap_vld;
output  [63:0] output_difference_idx61_val115_out;
output   output_difference_idx61_val115_out_ap_vld;
output  [63:0] output_difference_idx_val112_out;
output   output_difference_idx_val112_out_ap_vld;
output  [63:0] grp_fu_6592_p_din0;
output  [63:0] grp_fu_6592_p_din1;
output  [0:0] grp_fu_6592_p_opcode;
input  [63:0] grp_fu_6592_p_dout0;
output   grp_fu_6592_p_ce;
output  [63:0] grp_fu_6784_p_din0;
output  [63:0] grp_fu_6784_p_din1;
input  [63:0] grp_fu_6784_p_dout0;
output   grp_fu_6784_p_ce;
reg ap_idle;
reg output_difference_2_out_ap_vld;
reg output_difference_1_out_ap_vld;
reg output_difference_out_ap_vld;
reg output_difference_idx62_val118_out_ap_vld;
reg output_difference_idx61_val115_out_ap_vld;
reg output_difference_idx_val112_out_ap_vld;
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
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
reg    ap_enable_reg_pp0_iter17;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln66_fu_834_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [1:0] i_15_reg_1367;
reg   [1:0] i_15_reg_1367_pp0_iter1_reg;
reg   [1:0] i_15_reg_1367_pp0_iter2_reg;
reg   [1:0] i_15_reg_1367_pp0_iter3_reg;
reg   [1:0] i_15_reg_1367_pp0_iter4_reg;
reg   [1:0] i_15_reg_1367_pp0_iter5_reg;
reg   [1:0] i_15_reg_1367_pp0_iter6_reg;
reg   [1:0] i_15_reg_1367_pp0_iter7_reg;
reg   [1:0] i_15_reg_1367_pp0_iter8_reg;
reg   [1:0] i_15_reg_1367_pp0_iter9_reg;
reg   [1:0] i_15_reg_1367_pp0_iter10_reg;
reg   [1:0] i_15_reg_1367_pp0_iter11_reg;
reg   [1:0] i_15_reg_1367_pp0_iter12_reg;
reg   [1:0] i_15_reg_1367_pp0_iter13_reg;
reg   [1:0] i_15_reg_1367_pp0_iter14_reg;
reg   [1:0] i_15_reg_1367_pp0_iter15_reg;
reg   [1:0] i_15_reg_1367_pp0_iter16_reg;
reg   [0:0] icmp_ln66_reg_1373;
reg   [0:0] icmp_ln66_reg_1373_pp0_iter1_reg;
reg   [0:0] icmp_ln66_reg_1373_pp0_iter2_reg;
reg   [0:0] icmp_ln66_reg_1373_pp0_iter3_reg;
reg   [0:0] icmp_ln66_reg_1373_pp0_iter4_reg;
reg   [0:0] icmp_ln66_reg_1373_pp0_iter5_reg;
reg   [0:0] icmp_ln66_reg_1373_pp0_iter6_reg;
reg   [0:0] icmp_ln66_reg_1373_pp0_iter7_reg;
reg   [0:0] icmp_ln66_reg_1373_pp0_iter8_reg;
reg   [0:0] icmp_ln66_reg_1373_pp0_iter9_reg;
reg   [0:0] icmp_ln66_reg_1373_pp0_iter10_reg;
reg   [0:0] icmp_ln66_reg_1373_pp0_iter11_reg;
reg   [0:0] icmp_ln66_reg_1373_pp0_iter12_reg;
reg   [0:0] icmp_ln66_reg_1373_pp0_iter13_reg;
reg   [0:0] icmp_ln66_reg_1373_pp0_iter14_reg;
reg   [0:0] icmp_ln66_reg_1373_pp0_iter15_reg;
wire   [4:0] trunc_ln67_fu_856_p1;
reg   [4:0] trunc_ln67_reg_1377;
wire   [63:0] tmp_46_fu_1039_p67;
reg   [63:0] tmp_46_reg_1542;
wire   [63:0] tmp_s_fu_1174_p9;
wire   [0:0] xor_ln67_fu_1203_p2;
reg   [0:0] xor_ln67_reg_1552;
wire   [62:0] trunc_ln67_1_fu_1209_p1;
reg   [62:0] trunc_ln67_1_reg_1557;
wire   [63:0] tmp_47_fu_1213_p9;
reg   [63:0] tmp_47_reg_1562;
wire   [63:0] bitcast_ln67_33_fu_1235_p1;
reg   [63:0] mul5_i_reg_1572;
wire   [63:0] zext_ln67_fu_870_p1;
wire    ap_block_pp0_stage0;
reg   [1:0] i_fu_224;
wire   [1:0] add_ln66_fu_840_p2;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_i_15;
reg   [63:0] output_difference_idx_val112_fu_228;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg    ap_loop_exit_ready_pp0_iter15_reg;
reg    ap_loop_exit_ready_pp0_iter16_reg;
reg   [63:0] output_difference_idx61_val115_fu_232;
reg   [63:0] output_difference_idx62_val118_fu_236;
reg   [63:0] output_difference_fu_240;
reg   [63:0] output_difference_1_fu_244;
reg   [63:0] output_difference_2_fu_248;
wire    ap_block_pp0_stage0_01001;
reg    training_targets_0_ce0_local;
reg    training_targets_1_ce0_local;
reg    training_targets_2_ce0_local;
reg    training_targets_3_ce0_local;
reg    training_targets_4_ce0_local;
reg    training_targets_5_ce0_local;
reg    training_targets_6_ce0_local;
reg    training_targets_7_ce0_local;
reg    training_targets_8_ce0_local;
reg    training_targets_9_ce0_local;
reg    training_targets_10_ce0_local;
reg    training_targets_11_ce0_local;
reg    training_targets_12_ce0_local;
reg    training_targets_13_ce0_local;
reg    training_targets_14_ce0_local;
reg    training_targets_15_ce0_local;
reg    training_targets_16_ce0_local;
reg    training_targets_17_ce0_local;
reg    training_targets_18_ce0_local;
reg    training_targets_19_ce0_local;
reg    training_targets_20_ce0_local;
reg    training_targets_21_ce0_local;
reg    training_targets_22_ce0_local;
reg    training_targets_23_ce0_local;
reg    training_targets_24_ce0_local;
reg    training_targets_25_ce0_local;
reg    training_targets_26_ce0_local;
reg    training_targets_27_ce0_local;
reg    training_targets_28_ce0_local;
reg    training_targets_29_ce0_local;
reg    training_targets_30_ce0_local;
reg    training_targets_31_ce0_local;
wire   [8:0] zext_ln66_fu_846_p1;
wire   [8:0] add_ln67_fu_850_p2;
wire   [3:0] lshr_ln_fu_860_p4;
wire   [63:0] tmp_46_fu_1039_p2;
wire   [63:0] tmp_46_fu_1039_p4;
wire   [63:0] tmp_46_fu_1039_p6;
wire   [63:0] tmp_46_fu_1039_p8;
wire   [63:0] tmp_46_fu_1039_p10;
wire   [63:0] tmp_46_fu_1039_p12;
wire   [63:0] tmp_46_fu_1039_p14;
wire   [63:0] tmp_46_fu_1039_p16;
wire   [63:0] tmp_46_fu_1039_p18;
wire   [63:0] tmp_46_fu_1039_p20;
wire   [63:0] tmp_46_fu_1039_p22;
wire   [63:0] tmp_46_fu_1039_p24;
wire   [63:0] tmp_46_fu_1039_p26;
wire   [63:0] tmp_46_fu_1039_p28;
wire   [63:0] tmp_46_fu_1039_p30;
wire   [63:0] tmp_46_fu_1039_p32;
wire   [63:0] tmp_46_fu_1039_p34;
wire   [63:0] tmp_46_fu_1039_p36;
wire   [63:0] tmp_46_fu_1039_p38;
wire   [63:0] tmp_46_fu_1039_p40;
wire   [63:0] tmp_46_fu_1039_p42;
wire   [63:0] tmp_46_fu_1039_p44;
wire   [63:0] tmp_46_fu_1039_p46;
wire   [63:0] tmp_46_fu_1039_p48;
wire   [63:0] tmp_46_fu_1039_p50;
wire   [63:0] tmp_46_fu_1039_p52;
wire   [63:0] tmp_46_fu_1039_p54;
wire   [63:0] tmp_46_fu_1039_p56;
wire   [63:0] tmp_46_fu_1039_p58;
wire   [63:0] tmp_46_fu_1039_p60;
wire   [63:0] tmp_46_fu_1039_p62;
wire   [63:0] tmp_46_fu_1039_p64;
wire   [63:0] tmp_46_fu_1039_p65;
wire   [63:0] tmp_s_fu_1174_p7;
wire   [63:0] bitcast_ln67_32_fu_1191_p1;
wire   [0:0] bit_sel3_fu_1195_p3;
wire   [63:0] tmp_47_fu_1213_p7;
wire   [63:0] xor_ln2_fu_1229_p3;
wire    ap_block_pp0_stage0_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1146;
wire   [4:0] tmp_46_fu_1039_p1;
wire   [4:0] tmp_46_fu_1039_p3;
wire   [4:0] tmp_46_fu_1039_p5;
wire   [4:0] tmp_46_fu_1039_p7;
wire   [4:0] tmp_46_fu_1039_p9;
wire   [4:0] tmp_46_fu_1039_p11;
wire   [4:0] tmp_46_fu_1039_p13;
wire   [4:0] tmp_46_fu_1039_p15;
wire   [4:0] tmp_46_fu_1039_p17;
wire   [4:0] tmp_46_fu_1039_p19;
wire   [4:0] tmp_46_fu_1039_p21;
wire   [4:0] tmp_46_fu_1039_p23;
wire   [4:0] tmp_46_fu_1039_p25;
wire   [4:0] tmp_46_fu_1039_p27;
wire   [4:0] tmp_46_fu_1039_p29;
wire   [4:0] tmp_46_fu_1039_p31;
wire  signed [4:0] tmp_46_fu_1039_p33;
wire  signed [4:0] tmp_46_fu_1039_p35;
wire  signed [4:0] tmp_46_fu_1039_p37;
wire  signed [4:0] tmp_46_fu_1039_p39;
wire  signed [4:0] tmp_46_fu_1039_p41;
wire  signed [4:0] tmp_46_fu_1039_p43;
wire  signed [4:0] tmp_46_fu_1039_p45;
wire  signed [4:0] tmp_46_fu_1039_p47;
wire  signed [4:0] tmp_46_fu_1039_p49;
wire  signed [4:0] tmp_46_fu_1039_p51;
wire  signed [4:0] tmp_46_fu_1039_p53;
wire  signed [4:0] tmp_46_fu_1039_p55;
wire  signed [4:0] tmp_46_fu_1039_p57;
wire  signed [4:0] tmp_46_fu_1039_p59;
wire  signed [4:0] tmp_46_fu_1039_p61;
wire  signed [4:0] tmp_46_fu_1039_p63;
wire   [1:0] tmp_s_fu_1174_p1;
wire   [1:0] tmp_s_fu_1174_p3;
wire  signed [1:0] tmp_s_fu_1174_p5;
wire   [1:0] tmp_47_fu_1213_p1;
wire   [1:0] tmp_47_fu_1213_p3;
wire  signed [1:0] tmp_47_fu_1213_p5;
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
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_enable_reg_pp0_iter17 = 1'b0;
#0 i_fu_224 = 2'd0;
#0 output_difference_idx_val112_fu_228 = 64'd0;
#0 output_difference_idx61_val115_fu_232 = 64'd0;
#0 output_difference_idx62_val118_fu_236 = 64'd0;
#0 output_difference_fu_240 = 64'd0;
#0 output_difference_1_fu_244 = 64'd0;
#0 output_difference_2_fu_248 = 64'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_65_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h1 ),.din1_WIDTH( 64 ),.CASE2( 5'h2 ),.din2_WIDTH( 64 ),.CASE3( 5'h3 ),.din3_WIDTH( 64 ),.CASE4( 5'h4 ),.din4_WIDTH( 64 ),.CASE5( 5'h5 ),.din5_WIDTH( 64 ),.CASE6( 5'h6 ),.din6_WIDTH( 64 ),.CASE7( 5'h7 ),.din7_WIDTH( 64 ),.CASE8( 5'h8 ),.din8_WIDTH( 64 ),.CASE9( 5'h9 ),.din9_WIDTH( 64 ),.CASE10( 5'hA ),.din10_WIDTH( 64 ),.CASE11( 5'hB ),.din11_WIDTH( 64 ),.CASE12( 5'hC ),.din12_WIDTH( 64 ),.CASE13( 5'hD ),.din13_WIDTH( 64 ),.CASE14( 5'hE ),.din14_WIDTH( 64 ),.CASE15( 5'hF ),.din15_WIDTH( 64 ),.CASE16( 5'h10 ),.din16_WIDTH( 64 ),.CASE17( 5'h11 ),.din17_WIDTH( 64 ),.CASE18( 5'h12 ),.din18_WIDTH( 64 ),.CASE19( 5'h13 ),.din19_WIDTH( 64 ),.CASE20( 5'h14 ),.din20_WIDTH( 64 ),.CASE21( 5'h15 ),.din21_WIDTH( 64 ),.CASE22( 5'h16 ),.din22_WIDTH( 64 ),.CASE23( 5'h17 ),.din23_WIDTH( 64 ),.CASE24( 5'h18 ),.din24_WIDTH( 64 ),.CASE25( 5'h19 ),.din25_WIDTH( 64 ),.CASE26( 5'h1A ),.din26_WIDTH( 64 ),.CASE27( 5'h1B ),.din27_WIDTH( 64 ),.CASE28( 5'h1C ),.din28_WIDTH( 64 ),.CASE29( 5'h1D ),.din29_WIDTH( 64 ),.CASE30( 5'h1E ),.din30_WIDTH( 64 ),.CASE31( 5'h1F ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_65_5_64_1_1_U1119(.din0(tmp_46_fu_1039_p2),.din1(tmp_46_fu_1039_p4),.din2(tmp_46_fu_1039_p6),.din3(tmp_46_fu_1039_p8),.din4(tmp_46_fu_1039_p10),.din5(tmp_46_fu_1039_p12),.din6(tmp_46_fu_1039_p14),.din7(tmp_46_fu_1039_p16),.din8(tmp_46_fu_1039_p18),.din9(tmp_46_fu_1039_p20),.din10(tmp_46_fu_1039_p22),.din11(tmp_46_fu_1039_p24),.din12(tmp_46_fu_1039_p26),.din13(tmp_46_fu_1039_p28),.din14(tmp_46_fu_1039_p30),.din15(tmp_46_fu_1039_p32),.din16(tmp_46_fu_1039_p34),.din17(tmp_46_fu_1039_p36),.din18(tmp_46_fu_1039_p38),.din19(tmp_46_fu_1039_p40),.din20(tmp_46_fu_1039_p42),.din21(tmp_46_fu_1039_p44),.din22(tmp_46_fu_1039_p46),.din23(tmp_46_fu_1039_p48),.din24(tmp_46_fu_1039_p50),.din25(tmp_46_fu_1039_p52),.din26(tmp_46_fu_1039_p54),.din27(tmp_46_fu_1039_p56),.din28(tmp_46_fu_1039_p58),.din29(tmp_46_fu_1039_p60),.din30(tmp_46_fu_1039_p62),.din31(tmp_46_fu_1039_p64),.def(tmp_46_fu_1039_p65),.sel(trunc_ln67_reg_1377),.dout(tmp_46_fu_1039_p67));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U1120(.din0(mux_case_07988_reload),.din1(mux_case_18092_reload),.din2(mux_case_28196_reload),.def(tmp_s_fu_1174_p7),.sel(i_15_reg_1367_pp0_iter1_reg),.dout(tmp_s_fu_1174_p9));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U1121(.din0(mux_case_082100_reload),.din1(mux_case_183104_reload),.din2(mux_case_284108_reload),.def(tmp_47_fu_1213_p7),.sel(i_15_reg_1367_pp0_iter8_reg),.dout(tmp_47_fu_1213_p9));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1))) begin
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
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
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
        if (((icmp_ln66_fu_834_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_224 <= add_ln66_fu_840_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_224 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_1_fu_244 <= output_difference_0_promoted;
        end else if (((ap_enable_reg_pp0_iter17 == 1'b1) & (i_15_reg_1367_pp0_iter16_reg == 2'd0))) begin
            output_difference_1_fu_244 <= mul5_i_reg_1572;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_2_fu_248 <= output_difference_2_promoted;
        end else if ((1'b1 == ap_condition_1146)) begin
            output_difference_2_fu_248 <= mul5_i_reg_1572;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_fu_240 <= output_difference_1_promoted;
        end else if (((ap_enable_reg_pp0_iter17 == 1'b1) & (i_15_reg_1367_pp0_iter16_reg == 2'd1))) begin
            output_difference_fu_240 <= mul5_i_reg_1572;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_idx61_val115_fu_232 <= output_difference_idx61_val117;
        end else if (((ap_enable_reg_pp0_iter17 == 1'b1) & (i_15_reg_1367_pp0_iter16_reg == 2'd1))) begin
            output_difference_idx61_val115_fu_232 <= mul5_i_reg_1572;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_idx62_val118_fu_236 <= output_difference_idx62_val120;
        end else if ((1'b1 == ap_condition_1146)) begin
            output_difference_idx62_val118_fu_236 <= mul5_i_reg_1572;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_idx_val112_fu_228 <= output_difference_idx_val114;
        end else if (((ap_enable_reg_pp0_iter17 == 1'b1) & (i_15_reg_1367_pp0_iter16_reg == 2'd0))) begin
            output_difference_idx_val112_fu_228 <= mul5_i_reg_1572;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
        ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        i_15_reg_1367_pp0_iter10_reg <= i_15_reg_1367_pp0_iter9_reg;
        i_15_reg_1367_pp0_iter11_reg <= i_15_reg_1367_pp0_iter10_reg;
        i_15_reg_1367_pp0_iter12_reg <= i_15_reg_1367_pp0_iter11_reg;
        i_15_reg_1367_pp0_iter13_reg <= i_15_reg_1367_pp0_iter12_reg;
        i_15_reg_1367_pp0_iter14_reg <= i_15_reg_1367_pp0_iter13_reg;
        i_15_reg_1367_pp0_iter15_reg <= i_15_reg_1367_pp0_iter14_reg;
        i_15_reg_1367_pp0_iter16_reg <= i_15_reg_1367_pp0_iter15_reg;
        i_15_reg_1367_pp0_iter2_reg <= i_15_reg_1367_pp0_iter1_reg;
        i_15_reg_1367_pp0_iter3_reg <= i_15_reg_1367_pp0_iter2_reg;
        i_15_reg_1367_pp0_iter4_reg <= i_15_reg_1367_pp0_iter3_reg;
        i_15_reg_1367_pp0_iter5_reg <= i_15_reg_1367_pp0_iter4_reg;
        i_15_reg_1367_pp0_iter6_reg <= i_15_reg_1367_pp0_iter5_reg;
        i_15_reg_1367_pp0_iter7_reg <= i_15_reg_1367_pp0_iter6_reg;
        i_15_reg_1367_pp0_iter8_reg <= i_15_reg_1367_pp0_iter7_reg;
        i_15_reg_1367_pp0_iter9_reg <= i_15_reg_1367_pp0_iter8_reg;
        icmp_ln66_reg_1373_pp0_iter10_reg <= icmp_ln66_reg_1373_pp0_iter9_reg;
        icmp_ln66_reg_1373_pp0_iter11_reg <= icmp_ln66_reg_1373_pp0_iter10_reg;
        icmp_ln66_reg_1373_pp0_iter12_reg <= icmp_ln66_reg_1373_pp0_iter11_reg;
        icmp_ln66_reg_1373_pp0_iter13_reg <= icmp_ln66_reg_1373_pp0_iter12_reg;
        icmp_ln66_reg_1373_pp0_iter14_reg <= icmp_ln66_reg_1373_pp0_iter13_reg;
        icmp_ln66_reg_1373_pp0_iter15_reg <= icmp_ln66_reg_1373_pp0_iter14_reg;
        icmp_ln66_reg_1373_pp0_iter2_reg <= icmp_ln66_reg_1373_pp0_iter1_reg;
        icmp_ln66_reg_1373_pp0_iter3_reg <= icmp_ln66_reg_1373_pp0_iter2_reg;
        icmp_ln66_reg_1373_pp0_iter4_reg <= icmp_ln66_reg_1373_pp0_iter3_reg;
        icmp_ln66_reg_1373_pp0_iter5_reg <= icmp_ln66_reg_1373_pp0_iter4_reg;
        icmp_ln66_reg_1373_pp0_iter6_reg <= icmp_ln66_reg_1373_pp0_iter5_reg;
        icmp_ln66_reg_1373_pp0_iter7_reg <= icmp_ln66_reg_1373_pp0_iter6_reg;
        icmp_ln66_reg_1373_pp0_iter8_reg <= icmp_ln66_reg_1373_pp0_iter7_reg;
        icmp_ln66_reg_1373_pp0_iter9_reg <= icmp_ln66_reg_1373_pp0_iter8_reg;
        mul5_i_reg_1572 <= grp_fu_6784_p_dout0;
        tmp_47_reg_1562 <= tmp_47_fu_1213_p9;
        trunc_ln67_1_reg_1557 <= trunc_ln67_1_fu_1209_p1;
        xor_ln67_reg_1552 <= xor_ln67_fu_1203_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        i_15_reg_1367 <= ap_sig_allocacmp_i_15;
        i_15_reg_1367_pp0_iter1_reg <= i_15_reg_1367;
        icmp_ln66_reg_1373 <= icmp_ln66_fu_834_p2;
        icmp_ln66_reg_1373_pp0_iter1_reg <= icmp_ln66_reg_1373;
        tmp_46_reg_1542 <= tmp_46_fu_1039_p67;
        trunc_ln67_reg_1377 <= trunc_ln67_fu_856_p1;
    end
end
always @ (*) begin
    if (((icmp_ln66_fu_834_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_15 = 2'd0;
    end else begin
        ap_sig_allocacmp_i_15 = i_fu_224;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (icmp_ln66_reg_1373_pp0_iter15_reg == 1'd1))) begin
        output_difference_1_out_ap_vld = 1'b1;
    end else begin
        output_difference_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (icmp_ln66_reg_1373_pp0_iter15_reg == 1'd1))) begin
        output_difference_2_out_ap_vld = 1'b1;
    end else begin
        output_difference_2_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (icmp_ln66_reg_1373_pp0_iter15_reg == 1'd1))) begin
        output_difference_idx61_val115_out_ap_vld = 1'b1;
    end else begin
        output_difference_idx61_val115_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (icmp_ln66_reg_1373_pp0_iter15_reg == 1'd1))) begin
        output_difference_idx62_val118_out_ap_vld = 1'b1;
    end else begin
        output_difference_idx62_val118_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (icmp_ln66_reg_1373_pp0_iter15_reg == 1'd1))) begin
        output_difference_idx_val112_out_ap_vld = 1'b1;
    end else begin
        output_difference_idx_val112_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (icmp_ln66_reg_1373_pp0_iter15_reg == 1'd1))) begin
        output_difference_out_ap_vld = 1'b1;
    end else begin
        output_difference_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_0_ce0_local = 1'b1;
    end else begin
        training_targets_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_10_ce0_local = 1'b1;
    end else begin
        training_targets_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_11_ce0_local = 1'b1;
    end else begin
        training_targets_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_12_ce0_local = 1'b1;
    end else begin
        training_targets_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_13_ce0_local = 1'b1;
    end else begin
        training_targets_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_14_ce0_local = 1'b1;
    end else begin
        training_targets_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_15_ce0_local = 1'b1;
    end else begin
        training_targets_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_16_ce0_local = 1'b1;
    end else begin
        training_targets_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_17_ce0_local = 1'b1;
    end else begin
        training_targets_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_18_ce0_local = 1'b1;
    end else begin
        training_targets_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_19_ce0_local = 1'b1;
    end else begin
        training_targets_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_1_ce0_local = 1'b1;
    end else begin
        training_targets_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_20_ce0_local = 1'b1;
    end else begin
        training_targets_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_21_ce0_local = 1'b1;
    end else begin
        training_targets_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_22_ce0_local = 1'b1;
    end else begin
        training_targets_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_23_ce0_local = 1'b1;
    end else begin
        training_targets_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_24_ce0_local = 1'b1;
    end else begin
        training_targets_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_25_ce0_local = 1'b1;
    end else begin
        training_targets_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_26_ce0_local = 1'b1;
    end else begin
        training_targets_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_27_ce0_local = 1'b1;
    end else begin
        training_targets_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_28_ce0_local = 1'b1;
    end else begin
        training_targets_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_29_ce0_local = 1'b1;
    end else begin
        training_targets_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_2_ce0_local = 1'b1;
    end else begin
        training_targets_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_30_ce0_local = 1'b1;
    end else begin
        training_targets_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_31_ce0_local = 1'b1;
    end else begin
        training_targets_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_3_ce0_local = 1'b1;
    end else begin
        training_targets_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_4_ce0_local = 1'b1;
    end else begin
        training_targets_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_5_ce0_local = 1'b1;
    end else begin
        training_targets_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_6_ce0_local = 1'b1;
    end else begin
        training_targets_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_7_ce0_local = 1'b1;
    end else begin
        training_targets_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_8_ce0_local = 1'b1;
    end else begin
        training_targets_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_9_ce0_local = 1'b1;
    end else begin
        training_targets_9_ce0_local = 1'b0;
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
assign add_ln66_fu_840_p2 = (ap_sig_allocacmp_i_15 + 2'd1);
assign add_ln67_fu_850_p2 = (zext_ln66_fu_846_p1 + mul_ln66);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1146 = (~(i_15_reg_1367_pp0_iter16_reg == 2'd1) & ~(i_15_reg_1367_pp0_iter16_reg == 2'd0) & (ap_enable_reg_pp0_iter17 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bit_sel3_fu_1195_p3 = bitcast_ln67_32_fu_1191_p1[64'd63];
assign bitcast_ln67_32_fu_1191_p1 = grp_fu_6592_p_dout0;
assign bitcast_ln67_33_fu_1235_p1 = xor_ln2_fu_1229_p3;
assign grp_fu_6592_p_ce = 1'b1;
assign grp_fu_6592_p_din0 = tmp_s_fu_1174_p9;
assign grp_fu_6592_p_din1 = tmp_46_reg_1542;
assign grp_fu_6592_p_opcode = 2'd1;
assign grp_fu_6784_p_ce = 1'b1;
assign grp_fu_6784_p_din0 = bitcast_ln67_33_fu_1235_p1;
assign grp_fu_6784_p_din1 = tmp_47_reg_1562;
assign icmp_ln66_fu_834_p2 = ((ap_sig_allocacmp_i_15 == 2'd3) ? 1'b1 : 1'b0);
assign lshr_ln_fu_860_p4 = {{add_ln67_fu_850_p2[8:5]}};
assign output_difference_1_out = output_difference_1_fu_244;
assign output_difference_2_out = output_difference_2_fu_248;
assign output_difference_idx61_val115_out = output_difference_idx61_val115_fu_232;
assign output_difference_idx62_val118_out = output_difference_idx62_val118_fu_236;
assign output_difference_idx_val112_out = output_difference_idx_val112_fu_228;
assign output_difference_out = output_difference_fu_240;
assign tmp_46_fu_1039_p10 = training_targets_4_q0;
assign tmp_46_fu_1039_p12 = training_targets_5_q0;
assign tmp_46_fu_1039_p14 = training_targets_6_q0;
assign tmp_46_fu_1039_p16 = training_targets_7_q0;
assign tmp_46_fu_1039_p18 = training_targets_8_q0;
assign tmp_46_fu_1039_p2 = training_targets_0_q0;
assign tmp_46_fu_1039_p20 = training_targets_9_q0;
assign tmp_46_fu_1039_p22 = training_targets_10_q0;
assign tmp_46_fu_1039_p24 = training_targets_11_q0;
assign tmp_46_fu_1039_p26 = training_targets_12_q0;
assign tmp_46_fu_1039_p28 = training_targets_13_q0;
assign tmp_46_fu_1039_p30 = training_targets_14_q0;
assign tmp_46_fu_1039_p32 = training_targets_15_q0;
assign tmp_46_fu_1039_p34 = training_targets_16_q0;
assign tmp_46_fu_1039_p36 = training_targets_17_q0;
assign tmp_46_fu_1039_p38 = training_targets_18_q0;
assign tmp_46_fu_1039_p4 = training_targets_1_q0;
assign tmp_46_fu_1039_p40 = training_targets_19_q0;
assign tmp_46_fu_1039_p42 = training_targets_20_q0;
assign tmp_46_fu_1039_p44 = training_targets_21_q0;
assign tmp_46_fu_1039_p46 = training_targets_22_q0;
assign tmp_46_fu_1039_p48 = training_targets_23_q0;
assign tmp_46_fu_1039_p50 = training_targets_24_q0;
assign tmp_46_fu_1039_p52 = training_targets_25_q0;
assign tmp_46_fu_1039_p54 = training_targets_26_q0;
assign tmp_46_fu_1039_p56 = training_targets_27_q0;
assign tmp_46_fu_1039_p58 = training_targets_28_q0;
assign tmp_46_fu_1039_p6 = training_targets_2_q0;
assign tmp_46_fu_1039_p60 = training_targets_29_q0;
assign tmp_46_fu_1039_p62 = training_targets_30_q0;
assign tmp_46_fu_1039_p64 = training_targets_31_q0;
assign tmp_46_fu_1039_p65 = 'bx;
assign tmp_46_fu_1039_p8 = training_targets_3_q0;
assign tmp_47_fu_1213_p7 = 'bx;
assign tmp_s_fu_1174_p7 = 'bx;
assign training_targets_0_address0 = zext_ln67_fu_870_p1;
assign training_targets_0_ce0 = training_targets_0_ce0_local;
assign training_targets_10_address0 = zext_ln67_fu_870_p1;
assign training_targets_10_ce0 = training_targets_10_ce0_local;
assign training_targets_11_address0 = zext_ln67_fu_870_p1;
assign training_targets_11_ce0 = training_targets_11_ce0_local;
assign training_targets_12_address0 = zext_ln67_fu_870_p1;
assign training_targets_12_ce0 = training_targets_12_ce0_local;
assign training_targets_13_address0 = zext_ln67_fu_870_p1;
assign training_targets_13_ce0 = training_targets_13_ce0_local;
assign training_targets_14_address0 = zext_ln67_fu_870_p1;
assign training_targets_14_ce0 = training_targets_14_ce0_local;
assign training_targets_15_address0 = zext_ln67_fu_870_p1;
assign training_targets_15_ce0 = training_targets_15_ce0_local;
assign training_targets_16_address0 = zext_ln67_fu_870_p1;
assign training_targets_16_ce0 = training_targets_16_ce0_local;
assign training_targets_17_address0 = zext_ln67_fu_870_p1;
assign training_targets_17_ce0 = training_targets_17_ce0_local;
assign training_targets_18_address0 = zext_ln67_fu_870_p1;
assign training_targets_18_ce0 = training_targets_18_ce0_local;
assign training_targets_19_address0 = zext_ln67_fu_870_p1;
assign training_targets_19_ce0 = training_targets_19_ce0_local;
assign training_targets_1_address0 = zext_ln67_fu_870_p1;
assign training_targets_1_ce0 = training_targets_1_ce0_local;
assign training_targets_20_address0 = zext_ln67_fu_870_p1;
assign training_targets_20_ce0 = training_targets_20_ce0_local;
assign training_targets_21_address0 = zext_ln67_fu_870_p1;
assign training_targets_21_ce0 = training_targets_21_ce0_local;
assign training_targets_22_address0 = zext_ln67_fu_870_p1;
assign training_targets_22_ce0 = training_targets_22_ce0_local;
assign training_targets_23_address0 = zext_ln67_fu_870_p1;
assign training_targets_23_ce0 = training_targets_23_ce0_local;
assign training_targets_24_address0 = zext_ln67_fu_870_p1;
assign training_targets_24_ce0 = training_targets_24_ce0_local;
assign training_targets_25_address0 = zext_ln67_fu_870_p1;
assign training_targets_25_ce0 = training_targets_25_ce0_local;
assign training_targets_26_address0 = zext_ln67_fu_870_p1;
assign training_targets_26_ce0 = training_targets_26_ce0_local;
assign training_targets_27_address0 = zext_ln67_fu_870_p1;
assign training_targets_27_ce0 = training_targets_27_ce0_local;
assign training_targets_28_address0 = zext_ln67_fu_870_p1;
assign training_targets_28_ce0 = training_targets_28_ce0_local;
assign training_targets_29_address0 = zext_ln67_fu_870_p1;
assign training_targets_29_ce0 = training_targets_29_ce0_local;
assign training_targets_2_address0 = zext_ln67_fu_870_p1;
assign training_targets_2_ce0 = training_targets_2_ce0_local;
assign training_targets_30_address0 = zext_ln67_fu_870_p1;
assign training_targets_30_ce0 = training_targets_30_ce0_local;
assign training_targets_31_address0 = zext_ln67_fu_870_p1;
assign training_targets_31_ce0 = training_targets_31_ce0_local;
assign training_targets_3_address0 = zext_ln67_fu_870_p1;
assign training_targets_3_ce0 = training_targets_3_ce0_local;
assign training_targets_4_address0 = zext_ln67_fu_870_p1;
assign training_targets_4_ce0 = training_targets_4_ce0_local;
assign training_targets_5_address0 = zext_ln67_fu_870_p1;
assign training_targets_5_ce0 = training_targets_5_ce0_local;
assign training_targets_6_address0 = zext_ln67_fu_870_p1;
assign training_targets_6_ce0 = training_targets_6_ce0_local;
assign training_targets_7_address0 = zext_ln67_fu_870_p1;
assign training_targets_7_ce0 = training_targets_7_ce0_local;
assign training_targets_8_address0 = zext_ln67_fu_870_p1;
assign training_targets_8_ce0 = training_targets_8_ce0_local;
assign training_targets_9_address0 = zext_ln67_fu_870_p1;
assign training_targets_9_ce0 = training_targets_9_ce0_local;
assign trunc_ln67_1_fu_1209_p1 = bitcast_ln67_32_fu_1191_p1[62:0];
assign trunc_ln67_fu_856_p1 = add_ln67_fu_850_p2[4:0];
assign xor_ln2_fu_1229_p3 = {{xor_ln67_reg_1552}, {trunc_ln67_1_reg_1557}};
assign xor_ln67_fu_1203_p2 = (bit_sel3_fu_1195_p3 ^ 1'd1);
assign zext_ln66_fu_846_p1 = ap_sig_allocacmp_i_15;
assign zext_ln67_fu_870_p1 = lshr_ln_fu_860_p4;
endmodule 