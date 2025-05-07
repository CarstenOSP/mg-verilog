module syr2k_syr2k_Pipeline_lp1_lp2_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_A0_address0,buff_A0_ce0,buff_A0_q0,buff_A0_1_address0,buff_A0_1_ce0,buff_A0_1_q0,buff_A0_2_address0,buff_A0_2_ce0,buff_A0_2_q0,buff_A0_3_address0,buff_A0_3_ce0,buff_A0_3_q0,buff_B0_address0,buff_B0_ce0,buff_B0_q0,buff_B0_1_address0,buff_B0_1_ce0,buff_B0_1_q0,buff_B0_2_address0,buff_B0_2_ce0,buff_B0_2_q0,buff_B0_3_address0,buff_B0_3_ce0,buff_B0_3_q0,alpha,tmp1_address0,tmp1_ce0,tmp1_we0,tmp1_d0,tmp1_q0,tmp1_1_address0,tmp1_1_ce0,tmp1_1_we0,tmp1_1_d0,tmp1_1_q0,tmp1_2_address0,tmp1_2_ce0,tmp1_2_we0,tmp1_2_d0,tmp1_2_q0,tmp1_3_address0,tmp1_3_ce0,tmp1_3_we0,tmp1_3_d0,tmp1_3_q0,tmp1_4_address0,tmp1_4_ce0,tmp1_4_we0,tmp1_4_d0,tmp1_4_q0,tmp1_5_address0,tmp1_5_ce0,tmp1_5_we0,tmp1_5_d0,tmp1_5_q0,tmp1_6_address0,tmp1_6_ce0,tmp1_6_we0,tmp1_6_d0,tmp1_6_q0,tmp1_7_address0,tmp1_7_ce0,tmp1_7_we0,tmp1_7_d0,tmp1_7_q0,tmp1_8_address0,tmp1_8_ce0,tmp1_8_we0,tmp1_8_d0,tmp1_8_q0,tmp1_9_address0,tmp1_9_ce0,tmp1_9_we0,tmp1_9_d0,tmp1_9_q0,tmp1_10_address0,tmp1_10_ce0,tmp1_10_we0,tmp1_10_d0,tmp1_10_q0,tmp1_11_address0,tmp1_11_ce0,tmp1_11_we0,tmp1_11_d0,tmp1_11_q0,tmp1_12_address0,tmp1_12_ce0,tmp1_12_we0,tmp1_12_d0,tmp1_12_q0,tmp1_13_address0,tmp1_13_ce0,tmp1_13_we0,tmp1_13_d0,tmp1_13_q0,tmp1_14_address0,tmp1_14_ce0,tmp1_14_we0,tmp1_14_d0,tmp1_14_q0,tmp1_15_address0,tmp1_15_ce0,tmp1_15_we0,tmp1_15_d0,tmp1_15_q0,grp_fu_736_p_din0,grp_fu_736_p_din1,grp_fu_736_p_opcode,grp_fu_736_p_dout0,grp_fu_736_p_ce,grp_fu_740_p_din0,grp_fu_740_p_din1,grp_fu_740_p_dout0,grp_fu_740_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] buff_A0_address0;
output   buff_A0_ce0;
input  [31:0] buff_A0_q0;
output  [9:0] buff_A0_1_address0;
output   buff_A0_1_ce0;
input  [31:0] buff_A0_1_q0;
output  [9:0] buff_A0_2_address0;
output   buff_A0_2_ce0;
input  [31:0] buff_A0_2_q0;
output  [9:0] buff_A0_3_address0;
output   buff_A0_3_ce0;
input  [31:0] buff_A0_3_q0;
output  [9:0] buff_B0_address0;
output   buff_B0_ce0;
input  [31:0] buff_B0_q0;
output  [9:0] buff_B0_1_address0;
output   buff_B0_1_ce0;
input  [31:0] buff_B0_1_q0;
output  [9:0] buff_B0_2_address0;
output   buff_B0_2_ce0;
input  [31:0] buff_B0_2_q0;
output  [9:0] buff_B0_3_address0;
output   buff_B0_3_ce0;
input  [31:0] buff_B0_3_q0;
input  [31:0] alpha;
output  [7:0] tmp1_address0;
output   tmp1_ce0;
output   tmp1_we0;
output  [31:0] tmp1_d0;
input  [31:0] tmp1_q0;
output  [7:0] tmp1_1_address0;
output   tmp1_1_ce0;
output   tmp1_1_we0;
output  [31:0] tmp1_1_d0;
input  [31:0] tmp1_1_q0;
output  [7:0] tmp1_2_address0;
output   tmp1_2_ce0;
output   tmp1_2_we0;
output  [31:0] tmp1_2_d0;
input  [31:0] tmp1_2_q0;
output  [7:0] tmp1_3_address0;
output   tmp1_3_ce0;
output   tmp1_3_we0;
output  [31:0] tmp1_3_d0;
input  [31:0] tmp1_3_q0;
output  [7:0] tmp1_4_address0;
output   tmp1_4_ce0;
output   tmp1_4_we0;
output  [31:0] tmp1_4_d0;
input  [31:0] tmp1_4_q0;
output  [7:0] tmp1_5_address0;
output   tmp1_5_ce0;
output   tmp1_5_we0;
output  [31:0] tmp1_5_d0;
input  [31:0] tmp1_5_q0;
output  [7:0] tmp1_6_address0;
output   tmp1_6_ce0;
output   tmp1_6_we0;
output  [31:0] tmp1_6_d0;
input  [31:0] tmp1_6_q0;
output  [7:0] tmp1_7_address0;
output   tmp1_7_ce0;
output   tmp1_7_we0;
output  [31:0] tmp1_7_d0;
input  [31:0] tmp1_7_q0;
output  [7:0] tmp1_8_address0;
output   tmp1_8_ce0;
output   tmp1_8_we0;
output  [31:0] tmp1_8_d0;
input  [31:0] tmp1_8_q0;
output  [7:0] tmp1_9_address0;
output   tmp1_9_ce0;
output   tmp1_9_we0;
output  [31:0] tmp1_9_d0;
input  [31:0] tmp1_9_q0;
output  [7:0] tmp1_10_address0;
output   tmp1_10_ce0;
output   tmp1_10_we0;
output  [31:0] tmp1_10_d0;
input  [31:0] tmp1_10_q0;
output  [7:0] tmp1_11_address0;
output   tmp1_11_ce0;
output   tmp1_11_we0;
output  [31:0] tmp1_11_d0;
input  [31:0] tmp1_11_q0;
output  [7:0] tmp1_12_address0;
output   tmp1_12_ce0;
output   tmp1_12_we0;
output  [31:0] tmp1_12_d0;
input  [31:0] tmp1_12_q0;
output  [7:0] tmp1_13_address0;
output   tmp1_13_ce0;
output   tmp1_13_we0;
output  [31:0] tmp1_13_d0;
input  [31:0] tmp1_13_q0;
output  [7:0] tmp1_14_address0;
output   tmp1_14_ce0;
output   tmp1_14_we0;
output  [31:0] tmp1_14_d0;
input  [31:0] tmp1_14_q0;
output  [7:0] tmp1_15_address0;
output   tmp1_15_ce0;
output   tmp1_15_we0;
output  [31:0] tmp1_15_d0;
input  [31:0] tmp1_15_q0;
output  [31:0] grp_fu_736_p_din0;
output  [31:0] grp_fu_736_p_din1;
output  [1:0] grp_fu_736_p_opcode;
input  [31:0] grp_fu_736_p_dout0;
output   grp_fu_736_p_ce;
output  [31:0] grp_fu_740_p_din0;
output  [31:0] grp_fu_740_p_din1;
input  [31:0] grp_fu_740_p_dout0;
output   grp_fu_740_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln27_reg_972;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln27_fu_495_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [0:0] icmp_ln27_reg_972_pp0_iter1_reg;
wire   [0:0] icmp_ln28_fu_510_p2;
reg   [0:0] icmp_ln28_reg_976;
wire   [0:0] and_ln5_fu_528_p2;
reg   [0:0] and_ln5_reg_982;
wire   [6:0] k_mid2_fu_540_p3;
reg   [6:0] k_mid2_reg_987;
wire   [0:0] first_iter_1_fu_619_p2;
reg   [0:0] first_iter_1_reg_995;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [0:0] first_iter_1_reg_995_pp0_iter1_reg;
wire   [1:0] trunc_ln27_fu_624_p1;
reg   [1:0] trunc_ln27_reg_999;
reg   [1:0] trunc_ln27_reg_999_pp0_iter1_reg;
wire   [1:0] trunc_ln28_1_fu_628_p1;
reg   [1:0] trunc_ln28_1_reg_1007;
reg   [1:0] trunc_ln28_1_reg_1007_pp0_iter1_reg;
reg   [7:0] tmp1_addr_1_reg_1012;
reg   [7:0] tmp1_addr_1_reg_1012_pp0_iter1_reg;
reg   [7:0] tmp1_addr_1_reg_1012_pp0_iter2_reg;
reg   [7:0] tmp1_1_addr_1_reg_1017;
reg   [7:0] tmp1_1_addr_1_reg_1017_pp0_iter1_reg;
reg   [7:0] tmp1_1_addr_1_reg_1017_pp0_iter2_reg;
reg   [7:0] tmp1_2_addr_1_reg_1022;
reg   [7:0] tmp1_2_addr_1_reg_1022_pp0_iter1_reg;
reg   [7:0] tmp1_2_addr_1_reg_1022_pp0_iter2_reg;
reg   [7:0] tmp1_3_addr_1_reg_1027;
reg   [7:0] tmp1_3_addr_1_reg_1027_pp0_iter1_reg;
reg   [7:0] tmp1_3_addr_1_reg_1027_pp0_iter2_reg;
reg   [7:0] tmp1_4_addr_1_reg_1032;
reg   [7:0] tmp1_4_addr_1_reg_1032_pp0_iter1_reg;
reg   [7:0] tmp1_4_addr_1_reg_1032_pp0_iter2_reg;
reg   [7:0] tmp1_5_addr_1_reg_1037;
reg   [7:0] tmp1_5_addr_1_reg_1037_pp0_iter1_reg;
reg   [7:0] tmp1_5_addr_1_reg_1037_pp0_iter2_reg;
reg   [7:0] tmp1_6_addr_1_reg_1042;
reg   [7:0] tmp1_6_addr_1_reg_1042_pp0_iter1_reg;
reg   [7:0] tmp1_6_addr_1_reg_1042_pp0_iter2_reg;
reg   [7:0] tmp1_7_addr_1_reg_1047;
reg   [7:0] tmp1_7_addr_1_reg_1047_pp0_iter1_reg;
reg   [7:0] tmp1_7_addr_1_reg_1047_pp0_iter2_reg;
reg   [7:0] tmp1_8_addr_1_reg_1052;
reg   [7:0] tmp1_8_addr_1_reg_1052_pp0_iter1_reg;
reg   [7:0] tmp1_8_addr_1_reg_1052_pp0_iter2_reg;
reg   [7:0] tmp1_9_addr_1_reg_1057;
reg   [7:0] tmp1_9_addr_1_reg_1057_pp0_iter1_reg;
reg   [7:0] tmp1_9_addr_1_reg_1057_pp0_iter2_reg;
reg   [7:0] tmp1_10_addr_1_reg_1062;
reg   [7:0] tmp1_10_addr_1_reg_1062_pp0_iter1_reg;
reg   [7:0] tmp1_10_addr_1_reg_1062_pp0_iter2_reg;
reg   [7:0] tmp1_11_addr_1_reg_1067;
reg   [7:0] tmp1_11_addr_1_reg_1067_pp0_iter1_reg;
reg   [7:0] tmp1_11_addr_1_reg_1067_pp0_iter2_reg;
reg   [7:0] tmp1_12_addr_1_reg_1072;
reg   [7:0] tmp1_12_addr_1_reg_1072_pp0_iter1_reg;
reg   [7:0] tmp1_12_addr_1_reg_1072_pp0_iter2_reg;
reg   [7:0] tmp1_13_addr_1_reg_1077;
reg   [7:0] tmp1_13_addr_1_reg_1077_pp0_iter1_reg;
reg   [7:0] tmp1_13_addr_1_reg_1077_pp0_iter2_reg;
reg   [7:0] tmp1_14_addr_1_reg_1082;
reg   [7:0] tmp1_14_addr_1_reg_1082_pp0_iter1_reg;
reg   [7:0] tmp1_14_addr_1_reg_1082_pp0_iter2_reg;
reg   [7:0] tmp1_15_addr_1_reg_1087;
reg   [7:0] tmp1_15_addr_1_reg_1087_pp0_iter1_reg;
reg   [7:0] tmp1_15_addr_1_reg_1087_pp0_iter2_reg;
wire   [0:0] icmp_ln30_1_fu_726_p2;
reg   [0:0] icmp_ln30_1_reg_1132;
reg   [0:0] icmp_ln30_1_reg_1132_pp0_iter1_reg;
wire   [31:0] tmp_4_fu_839_p11;
reg   [31:0] tmp_4_reg_1136;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] tmp_s_fu_865_p11;
reg   [31:0] tmp_s_reg_1141;
wire   [31:0] tmp_10_fu_889_p11;
reg   [31:0] tmp_10_reg_1146;
reg   [31:0] mul_reg_1151;
wire    ap_block_pp0_stage7_11001;
reg   [31:0] mul4_reg_1156;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] add_reg_1166;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage3_subdone;
wire   [63:0] tmp_19_cast_fu_660_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln31_fu_697_p1;
wire   [63:0] zext_ln31_1_fu_713_p1;
reg   [6:0] k_fu_114;
wire   [6:0] add_ln30_fu_721_p2;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [6:0] j_fu_118;
wire   [6:0] select_ln28_fu_608_p3;
reg   [13:0] indvar_flatten7_fu_122;
wire   [13:0] select_ln28_1_fu_554_p3;
reg   [6:0] i_1_fu_126;
wire   [6:0] select_ln27_fu_591_p3;
reg   [18:0] indvar_flatten21_fu_130;
wire   [18:0] add_ln27_1_fu_501_p2;
reg   [31:0] empty_fu_134;
wire    ap_block_pp0_stage4;
reg    tmp1_ce0_local;
reg   [7:0] tmp1_address0_local;
reg    tmp1_we0_local;
reg    ap_predicate_pred808_state20;
wire    ap_block_pp0_stage3;
reg    tmp1_1_ce0_local;
reg   [7:0] tmp1_1_address0_local;
reg    tmp1_1_we0_local;
reg    ap_predicate_pred824_state20;
reg    tmp1_2_ce0_local;
reg   [7:0] tmp1_2_address0_local;
reg    tmp1_2_we0_local;
reg    ap_predicate_pred835_state20;
reg    tmp1_3_ce0_local;
reg   [7:0] tmp1_3_address0_local;
reg    tmp1_3_we0_local;
reg    ap_predicate_pred846_state20;
reg    tmp1_4_ce0_local;
reg   [7:0] tmp1_4_address0_local;
reg    tmp1_4_we0_local;
reg    ap_predicate_pred857_state20;
reg    tmp1_5_ce0_local;
reg   [7:0] tmp1_5_address0_local;
reg    tmp1_5_we0_local;
reg    ap_predicate_pred866_state20;
reg    tmp1_6_ce0_local;
reg   [7:0] tmp1_6_address0_local;
reg    tmp1_6_we0_local;
reg    ap_predicate_pred875_state20;
reg    tmp1_7_ce0_local;
reg   [7:0] tmp1_7_address0_local;
reg    tmp1_7_we0_local;
reg    ap_predicate_pred884_state20;
reg    tmp1_8_ce0_local;
reg   [7:0] tmp1_8_address0_local;
reg    tmp1_8_we0_local;
reg    ap_predicate_pred895_state20;
reg    tmp1_9_ce0_local;
reg   [7:0] tmp1_9_address0_local;
reg    tmp1_9_we0_local;
reg    ap_predicate_pred904_state20;
reg    tmp1_10_ce0_local;
reg   [7:0] tmp1_10_address0_local;
reg    tmp1_10_we0_local;
reg    ap_predicate_pred913_state20;
reg    tmp1_11_ce0_local;
reg   [7:0] tmp1_11_address0_local;
reg    tmp1_11_we0_local;
reg    ap_predicate_pred922_state20;
reg    tmp1_12_ce0_local;
reg   [7:0] tmp1_12_address0_local;
reg    tmp1_12_we0_local;
reg    ap_predicate_pred933_state20;
reg    tmp1_13_ce0_local;
reg   [7:0] tmp1_13_address0_local;
reg    tmp1_13_we0_local;
reg    ap_predicate_pred942_state20;
reg    tmp1_14_ce0_local;
reg   [7:0] tmp1_14_address0_local;
reg    tmp1_14_we0_local;
reg    ap_predicate_pred951_state20;
reg    tmp1_15_ce0_local;
reg   [7:0] tmp1_15_address0_local;
reg    tmp1_15_we0_local;
reg    ap_predicate_pred960_state20;
reg    buff_A0_ce0_local;
reg    buff_A0_1_ce0_local;
reg    buff_A0_2_ce0_local;
reg    buff_A0_3_ce0_local;
reg    buff_B0_ce0_local;
reg    buff_B0_1_ce0_local;
reg    buff_B0_2_ce0_local;
reg    buff_B0_3_ce0_local;
wire    ap_block_pp0_stage0;
reg   [31:0] grp_fu_460_p0;
reg   [31:0] grp_fu_460_p1;
wire   [0:0] icmp_ln30_fu_522_p2;
wire   [0:0] xor_ln5_fu_516_p2;
wire   [0:0] empty_13_fu_534_p2;
wire   [13:0] add_ln28_1_fu_548_p2;
wire   [6:0] add_ln27_fu_578_p2;
wire   [6:0] select_ln5_fu_584_p3;
wire   [6:0] add_ln28_fu_602_p2;
wire   [3:0] tmp_18_fu_642_p4;
wire   [3:0] lshr_ln5_4_fu_632_p4;
wire   [7:0] tmp_19_fu_652_p3;
wire   [5:0] trunc_ln28_fu_598_p1;
wire   [3:0] lshr_ln5_7_fu_680_p4;
wire   [9:0] tmp_20_fu_689_p3;
wire   [5:0] empty_14_fu_615_p1;
wire   [9:0] tmp_21_fu_705_p3;
wire   [31:0] tmp_fu_747_p9;
wire   [31:0] tmp_1_fu_770_p9;
wire   [31:0] tmp_2_fu_793_p9;
wire   [31:0] tmp_3_fu_816_p9;
wire   [31:0] tmp_fu_747_p11;
wire   [31:0] tmp_1_fu_770_p11;
wire   [31:0] tmp_2_fu_793_p11;
wire   [31:0] tmp_3_fu_816_p11;
wire   [31:0] tmp_4_fu_839_p9;
wire   [31:0] tmp_s_fu_865_p9;
wire   [1:0] trunc_ln30_fu_862_p1;
wire   [31:0] tmp_10_fu_889_p9;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage3;
reg    ap_idle_pp0_0to0;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage4_00001;
wire   [1:0] tmp_fu_747_p1;
wire   [1:0] tmp_fu_747_p3;
wire  signed [1:0] tmp_fu_747_p5;
wire  signed [1:0] tmp_fu_747_p7;
wire   [1:0] tmp_1_fu_770_p1;
wire   [1:0] tmp_1_fu_770_p3;
wire  signed [1:0] tmp_1_fu_770_p5;
wire  signed [1:0] tmp_1_fu_770_p7;
wire   [1:0] tmp_2_fu_793_p1;
wire   [1:0] tmp_2_fu_793_p3;
wire  signed [1:0] tmp_2_fu_793_p5;
wire  signed [1:0] tmp_2_fu_793_p7;
wire   [1:0] tmp_3_fu_816_p1;
wire   [1:0] tmp_3_fu_816_p3;
wire  signed [1:0] tmp_3_fu_816_p5;
wire  signed [1:0] tmp_3_fu_816_p7;
wire   [1:0] tmp_4_fu_839_p1;
wire   [1:0] tmp_4_fu_839_p3;
wire  signed [1:0] tmp_4_fu_839_p5;
wire  signed [1:0] tmp_4_fu_839_p7;
wire   [1:0] tmp_s_fu_865_p1;
wire   [1:0] tmp_s_fu_865_p3;
wire  signed [1:0] tmp_s_fu_865_p5;
wire  signed [1:0] tmp_s_fu_865_p7;
wire   [1:0] tmp_10_fu_889_p1;
wire   [1:0] tmp_10_fu_889_p3;
wire  signed [1:0] tmp_10_fu_889_p5;
wire  signed [1:0] tmp_10_fu_889_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_114 = 7'd0;
#0 j_fu_118 = 7'd0;
#0 indvar_flatten7_fu_122 = 14'd0;
#0 i_1_fu_126 = 7'd0;
#0 indvar_flatten21_fu_130 = 19'd0;
#0 empty_fu_134 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) syr2k_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U91(.din0(tmp1_q0),.din1(tmp1_1_q0),.din2(tmp1_2_q0),.din3(tmp1_3_q0),.def(tmp_fu_747_p9),.sel(trunc_ln27_reg_999),.dout(tmp_fu_747_p11));
(* dissolve_hierarchy = "yes" *) syr2k_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U92(.din0(tmp1_4_q0),.din1(tmp1_5_q0),.din2(tmp1_6_q0),.din3(tmp1_7_q0),.def(tmp_1_fu_770_p9),.sel(trunc_ln27_reg_999),.dout(tmp_1_fu_770_p11));
(* dissolve_hierarchy = "yes" *) syr2k_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U93(.din0(tmp1_8_q0),.din1(tmp1_9_q0),.din2(tmp1_10_q0),.din3(tmp1_11_q0),.def(tmp_2_fu_793_p9),.sel(trunc_ln27_reg_999),.dout(tmp_2_fu_793_p11));
(* dissolve_hierarchy = "yes" *) syr2k_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U94(.din0(tmp1_12_q0),.din1(tmp1_13_q0),.din2(tmp1_14_q0),.din3(tmp1_15_q0),.def(tmp_3_fu_816_p9),.sel(trunc_ln27_reg_999),.dout(tmp_3_fu_816_p11));
(* dissolve_hierarchy = "yes" *) syr2k_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U95(.din0(tmp_fu_747_p11),.din1(tmp_1_fu_770_p11),.din2(tmp_2_fu_793_p11),.din3(tmp_3_fu_816_p11),.def(tmp_4_fu_839_p9),.sel(trunc_ln28_1_reg_1007),.dout(tmp_4_fu_839_p11));
(* dissolve_hierarchy = "yes" *) syr2k_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U96(.din0(buff_A0_q0),.din1(buff_A0_1_q0),.din2(buff_A0_2_q0),.din3(buff_A0_3_q0),.def(tmp_s_fu_865_p9),.sel(trunc_ln30_fu_862_p1),.dout(tmp_s_fu_865_p11));
(* dissolve_hierarchy = "yes" *) syr2k_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U97(.din0(buff_B0_q0),.din1(buff_B0_1_q0),.din2(buff_B0_2_q0),.din3(buff_B0_3_q0),.def(tmp_10_fu_889_p9),.sel(trunc_ln30_fu_862_p1),.dout(tmp_10_fu_889_p11));
syr2k_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage7)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter1_stage3) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        if (((first_iter_1_reg_995_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            empty_fu_134 <= tmp_4_reg_1136;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            empty_fu_134 <= add_reg_1166;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_1_fu_126 <= 7'd0;
    end else if (((icmp_ln27_reg_972 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        i_1_fu_126 <= select_ln27_fu_591_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten21_fu_130 <= 19'd0;
    end else if (((icmp_ln27_fu_495_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten21_fu_130 <= add_ln27_1_fu_501_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten7_fu_122 <= 14'd0;
    end else if (((icmp_ln27_fu_495_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten7_fu_122 <= select_ln28_1_fu_554_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_118 <= 7'd0;
    end else if (((icmp_ln27_reg_972 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        j_fu_118 <= select_ln28_fu_608_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_114 <= 7'd0;
    end else if (((icmp_ln27_reg_972 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        k_fu_114 <= add_ln30_fu_721_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_reg_1166 <= grp_fu_736_p_dout0;
        ap_predicate_pred808_state20 <= ((icmp_ln30_1_reg_1132_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_1007_pp0_iter1_reg == 2'd0) & (trunc_ln27_reg_999_pp0_iter1_reg == 2'd0));
        ap_predicate_pred824_state20 <= ((icmp_ln30_1_reg_1132_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_1007_pp0_iter1_reg == 2'd0) & (trunc_ln27_reg_999_pp0_iter1_reg == 2'd1));
        ap_predicate_pred835_state20 <= ((icmp_ln30_1_reg_1132_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_1007_pp0_iter1_reg == 2'd0) & (trunc_ln27_reg_999_pp0_iter1_reg == 2'd2));
        ap_predicate_pred846_state20 <= ((icmp_ln30_1_reg_1132_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_1007_pp0_iter1_reg == 2'd0) & (trunc_ln27_reg_999_pp0_iter1_reg == 2'd3));
        ap_predicate_pred857_state20 <= ((icmp_ln30_1_reg_1132_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_1007_pp0_iter1_reg == 2'd1) & (trunc_ln27_reg_999_pp0_iter1_reg == 2'd0));
        ap_predicate_pred866_state20 <= ((icmp_ln30_1_reg_1132_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_1007_pp0_iter1_reg == 2'd1) & (trunc_ln27_reg_999_pp0_iter1_reg == 2'd1));
        ap_predicate_pred875_state20 <= ((icmp_ln30_1_reg_1132_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_1007_pp0_iter1_reg == 2'd1) & (trunc_ln27_reg_999_pp0_iter1_reg == 2'd2));
        ap_predicate_pred884_state20 <= ((icmp_ln30_1_reg_1132_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_1007_pp0_iter1_reg == 2'd1) & (trunc_ln27_reg_999_pp0_iter1_reg == 2'd3));
        ap_predicate_pred895_state20 <= ((icmp_ln30_1_reg_1132_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_1007_pp0_iter1_reg == 2'd2) & (trunc_ln27_reg_999_pp0_iter1_reg == 2'd0));
        ap_predicate_pred904_state20 <= ((icmp_ln30_1_reg_1132_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_1007_pp0_iter1_reg == 2'd2) & (trunc_ln27_reg_999_pp0_iter1_reg == 2'd1));
        ap_predicate_pred913_state20 <= ((icmp_ln30_1_reg_1132_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_1007_pp0_iter1_reg == 2'd2) & (trunc_ln27_reg_999_pp0_iter1_reg == 2'd2));
        ap_predicate_pred922_state20 <= ((icmp_ln30_1_reg_1132_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_1007_pp0_iter1_reg == 2'd2) & (trunc_ln27_reg_999_pp0_iter1_reg == 2'd3));
        ap_predicate_pred933_state20 <= ((icmp_ln30_1_reg_1132_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_1007_pp0_iter1_reg == 2'd3) & (trunc_ln27_reg_999_pp0_iter1_reg == 2'd0));
        ap_predicate_pred942_state20 <= ((icmp_ln30_1_reg_1132_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_1007_pp0_iter1_reg == 2'd3) & (trunc_ln27_reg_999_pp0_iter1_reg == 2'd1));
        ap_predicate_pred951_state20 <= ((icmp_ln30_1_reg_1132_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_1007_pp0_iter1_reg == 2'd3) & (trunc_ln27_reg_999_pp0_iter1_reg == 2'd2));
        ap_predicate_pred960_state20 <= ((icmp_ln30_1_reg_1132_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_1007_pp0_iter1_reg == 2'd3) & (trunc_ln27_reg_999_pp0_iter1_reg == 2'd3));
        first_iter_1_reg_995 <= first_iter_1_fu_619_p2;
        first_iter_1_reg_995_pp0_iter1_reg <= first_iter_1_reg_995;
        icmp_ln30_1_reg_1132 <= icmp_ln30_1_fu_726_p2;
        icmp_ln30_1_reg_1132_pp0_iter1_reg <= icmp_ln30_1_reg_1132;
        tmp1_10_addr_1_reg_1062 <= tmp_19_cast_fu_660_p1;
        tmp1_10_addr_1_reg_1062_pp0_iter1_reg <= tmp1_10_addr_1_reg_1062;
        tmp1_10_addr_1_reg_1062_pp0_iter2_reg <= tmp1_10_addr_1_reg_1062_pp0_iter1_reg;
        tmp1_11_addr_1_reg_1067 <= tmp_19_cast_fu_660_p1;
        tmp1_11_addr_1_reg_1067_pp0_iter1_reg <= tmp1_11_addr_1_reg_1067;
        tmp1_11_addr_1_reg_1067_pp0_iter2_reg <= tmp1_11_addr_1_reg_1067_pp0_iter1_reg;
        tmp1_12_addr_1_reg_1072 <= tmp_19_cast_fu_660_p1;
        tmp1_12_addr_1_reg_1072_pp0_iter1_reg <= tmp1_12_addr_1_reg_1072;
        tmp1_12_addr_1_reg_1072_pp0_iter2_reg <= tmp1_12_addr_1_reg_1072_pp0_iter1_reg;
        tmp1_13_addr_1_reg_1077 <= tmp_19_cast_fu_660_p1;
        tmp1_13_addr_1_reg_1077_pp0_iter1_reg <= tmp1_13_addr_1_reg_1077;
        tmp1_13_addr_1_reg_1077_pp0_iter2_reg <= tmp1_13_addr_1_reg_1077_pp0_iter1_reg;
        tmp1_14_addr_1_reg_1082 <= tmp_19_cast_fu_660_p1;
        tmp1_14_addr_1_reg_1082_pp0_iter1_reg <= tmp1_14_addr_1_reg_1082;
        tmp1_14_addr_1_reg_1082_pp0_iter2_reg <= tmp1_14_addr_1_reg_1082_pp0_iter1_reg;
        tmp1_15_addr_1_reg_1087 <= tmp_19_cast_fu_660_p1;
        tmp1_15_addr_1_reg_1087_pp0_iter1_reg <= tmp1_15_addr_1_reg_1087;
        tmp1_15_addr_1_reg_1087_pp0_iter2_reg <= tmp1_15_addr_1_reg_1087_pp0_iter1_reg;
        tmp1_1_addr_1_reg_1017 <= tmp_19_cast_fu_660_p1;
        tmp1_1_addr_1_reg_1017_pp0_iter1_reg <= tmp1_1_addr_1_reg_1017;
        tmp1_1_addr_1_reg_1017_pp0_iter2_reg <= tmp1_1_addr_1_reg_1017_pp0_iter1_reg;
        tmp1_2_addr_1_reg_1022 <= tmp_19_cast_fu_660_p1;
        tmp1_2_addr_1_reg_1022_pp0_iter1_reg <= tmp1_2_addr_1_reg_1022;
        tmp1_2_addr_1_reg_1022_pp0_iter2_reg <= tmp1_2_addr_1_reg_1022_pp0_iter1_reg;
        tmp1_3_addr_1_reg_1027 <= tmp_19_cast_fu_660_p1;
        tmp1_3_addr_1_reg_1027_pp0_iter1_reg <= tmp1_3_addr_1_reg_1027;
        tmp1_3_addr_1_reg_1027_pp0_iter2_reg <= tmp1_3_addr_1_reg_1027_pp0_iter1_reg;
        tmp1_4_addr_1_reg_1032 <= tmp_19_cast_fu_660_p1;
        tmp1_4_addr_1_reg_1032_pp0_iter1_reg <= tmp1_4_addr_1_reg_1032;
        tmp1_4_addr_1_reg_1032_pp0_iter2_reg <= tmp1_4_addr_1_reg_1032_pp0_iter1_reg;
        tmp1_5_addr_1_reg_1037 <= tmp_19_cast_fu_660_p1;
        tmp1_5_addr_1_reg_1037_pp0_iter1_reg <= tmp1_5_addr_1_reg_1037;
        tmp1_5_addr_1_reg_1037_pp0_iter2_reg <= tmp1_5_addr_1_reg_1037_pp0_iter1_reg;
        tmp1_6_addr_1_reg_1042 <= tmp_19_cast_fu_660_p1;
        tmp1_6_addr_1_reg_1042_pp0_iter1_reg <= tmp1_6_addr_1_reg_1042;
        tmp1_6_addr_1_reg_1042_pp0_iter2_reg <= tmp1_6_addr_1_reg_1042_pp0_iter1_reg;
        tmp1_7_addr_1_reg_1047 <= tmp_19_cast_fu_660_p1;
        tmp1_7_addr_1_reg_1047_pp0_iter1_reg <= tmp1_7_addr_1_reg_1047;
        tmp1_7_addr_1_reg_1047_pp0_iter2_reg <= tmp1_7_addr_1_reg_1047_pp0_iter1_reg;
        tmp1_8_addr_1_reg_1052 <= tmp_19_cast_fu_660_p1;
        tmp1_8_addr_1_reg_1052_pp0_iter1_reg <= tmp1_8_addr_1_reg_1052;
        tmp1_8_addr_1_reg_1052_pp0_iter2_reg <= tmp1_8_addr_1_reg_1052_pp0_iter1_reg;
        tmp1_9_addr_1_reg_1057 <= tmp_19_cast_fu_660_p1;
        tmp1_9_addr_1_reg_1057_pp0_iter1_reg <= tmp1_9_addr_1_reg_1057;
        tmp1_9_addr_1_reg_1057_pp0_iter2_reg <= tmp1_9_addr_1_reg_1057_pp0_iter1_reg;
        tmp1_addr_1_reg_1012 <= tmp_19_cast_fu_660_p1;
        tmp1_addr_1_reg_1012_pp0_iter1_reg <= tmp1_addr_1_reg_1012;
        tmp1_addr_1_reg_1012_pp0_iter2_reg <= tmp1_addr_1_reg_1012_pp0_iter1_reg;
        trunc_ln27_reg_999 <= trunc_ln27_fu_624_p1;
        trunc_ln27_reg_999_pp0_iter1_reg <= trunc_ln27_reg_999;
        trunc_ln28_1_reg_1007 <= trunc_ln28_1_fu_628_p1;
        trunc_ln28_1_reg_1007_pp0_iter1_reg <= trunc_ln28_1_reg_1007;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        and_ln5_reg_982 <= and_ln5_fu_528_p2;
        icmp_ln27_reg_972 <= icmp_ln27_fu_495_p2;
        icmp_ln27_reg_972_pp0_iter1_reg <= icmp_ln27_reg_972;
        icmp_ln28_reg_976 <= icmp_ln28_fu_510_p2;
        k_mid2_reg_987 <= k_mid2_fu_540_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul4_reg_1156 <= grp_fu_740_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul_reg_1151 <= grp_fu_740_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_10_reg_1146 <= tmp_10_fu_889_p11;
        tmp_4_reg_1136 <= tmp_4_fu_839_p11;
        tmp_s_reg_1141 <= tmp_s_fu_865_p11;
    end
end
always @ (*) begin
    if (((icmp_ln27_reg_972 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln27_reg_972_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter1_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_1_ce0_local = 1'b1;
    end else begin
        buff_A0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_2_ce0_local = 1'b1;
    end else begin
        buff_A0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_3_ce0_local = 1'b1;
    end else begin
        buff_A0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_ce0_local = 1'b1;
    end else begin
        buff_A0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_1_ce0_local = 1'b1;
    end else begin
        buff_B0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_2_ce0_local = 1'b1;
    end else begin
        buff_B0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_3_ce0_local = 1'b1;
    end else begin
        buff_B0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_ce0_local = 1'b1;
    end else begin
        buff_B0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_460_p0 = mul_reg_1151;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_460_p0 = tmp_s_reg_1141;
    end else begin
        grp_fu_460_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_460_p1 = tmp_10_reg_1146;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_460_p1 = alpha;
    end else begin
        grp_fu_460_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_10_address0_local = tmp1_10_addr_1_reg_1062_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_10_address0_local = tmp_19_cast_fu_660_p1;
    end else begin
        tmp1_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        tmp1_10_ce0_local = 1'b1;
    end else begin
        tmp1_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred913_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_10_we0_local = 1'b1;
    end else begin
        tmp1_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_11_address0_local = tmp1_11_addr_1_reg_1067_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_11_address0_local = tmp_19_cast_fu_660_p1;
    end else begin
        tmp1_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        tmp1_11_ce0_local = 1'b1;
    end else begin
        tmp1_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred922_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_11_we0_local = 1'b1;
    end else begin
        tmp1_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_12_address0_local = tmp1_12_addr_1_reg_1072_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_12_address0_local = tmp_19_cast_fu_660_p1;
    end else begin
        tmp1_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        tmp1_12_ce0_local = 1'b1;
    end else begin
        tmp1_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred933_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_12_we0_local = 1'b1;
    end else begin
        tmp1_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_13_address0_local = tmp1_13_addr_1_reg_1077_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_13_address0_local = tmp_19_cast_fu_660_p1;
    end else begin
        tmp1_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        tmp1_13_ce0_local = 1'b1;
    end else begin
        tmp1_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred942_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_13_we0_local = 1'b1;
    end else begin
        tmp1_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_14_address0_local = tmp1_14_addr_1_reg_1082_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_14_address0_local = tmp_19_cast_fu_660_p1;
    end else begin
        tmp1_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        tmp1_14_ce0_local = 1'b1;
    end else begin
        tmp1_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred951_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_14_we0_local = 1'b1;
    end else begin
        tmp1_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_15_address0_local = tmp1_15_addr_1_reg_1087_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_15_address0_local = tmp_19_cast_fu_660_p1;
    end else begin
        tmp1_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        tmp1_15_ce0_local = 1'b1;
    end else begin
        tmp1_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred960_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_15_we0_local = 1'b1;
    end else begin
        tmp1_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_1_address0_local = tmp1_1_addr_1_reg_1017_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_1_address0_local = tmp_19_cast_fu_660_p1;
    end else begin
        tmp1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        tmp1_1_ce0_local = 1'b1;
    end else begin
        tmp1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred824_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_1_we0_local = 1'b1;
    end else begin
        tmp1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_2_address0_local = tmp1_2_addr_1_reg_1022_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_2_address0_local = tmp_19_cast_fu_660_p1;
    end else begin
        tmp1_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        tmp1_2_ce0_local = 1'b1;
    end else begin
        tmp1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred835_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_2_we0_local = 1'b1;
    end else begin
        tmp1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_3_address0_local = tmp1_3_addr_1_reg_1027_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_3_address0_local = tmp_19_cast_fu_660_p1;
    end else begin
        tmp1_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        tmp1_3_ce0_local = 1'b1;
    end else begin
        tmp1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred846_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_3_we0_local = 1'b1;
    end else begin
        tmp1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_4_address0_local = tmp1_4_addr_1_reg_1032_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_4_address0_local = tmp_19_cast_fu_660_p1;
    end else begin
        tmp1_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        tmp1_4_ce0_local = 1'b1;
    end else begin
        tmp1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred857_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_4_we0_local = 1'b1;
    end else begin
        tmp1_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_5_address0_local = tmp1_5_addr_1_reg_1037_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_5_address0_local = tmp_19_cast_fu_660_p1;
    end else begin
        tmp1_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        tmp1_5_ce0_local = 1'b1;
    end else begin
        tmp1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred866_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_5_we0_local = 1'b1;
    end else begin
        tmp1_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_6_address0_local = tmp1_6_addr_1_reg_1042_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_6_address0_local = tmp_19_cast_fu_660_p1;
    end else begin
        tmp1_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        tmp1_6_ce0_local = 1'b1;
    end else begin
        tmp1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred875_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_6_we0_local = 1'b1;
    end else begin
        tmp1_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_7_address0_local = tmp1_7_addr_1_reg_1047_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_7_address0_local = tmp_19_cast_fu_660_p1;
    end else begin
        tmp1_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        tmp1_7_ce0_local = 1'b1;
    end else begin
        tmp1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred884_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_7_we0_local = 1'b1;
    end else begin
        tmp1_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_8_address0_local = tmp1_8_addr_1_reg_1052_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_8_address0_local = tmp_19_cast_fu_660_p1;
    end else begin
        tmp1_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        tmp1_8_ce0_local = 1'b1;
    end else begin
        tmp1_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred895_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_8_we0_local = 1'b1;
    end else begin
        tmp1_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_9_address0_local = tmp1_9_addr_1_reg_1057_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_9_address0_local = tmp_19_cast_fu_660_p1;
    end else begin
        tmp1_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        tmp1_9_ce0_local = 1'b1;
    end else begin
        tmp1_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred904_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_9_we0_local = 1'b1;
    end else begin
        tmp1_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_address0_local = tmp1_addr_1_reg_1012_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_address0_local = tmp_19_cast_fu_660_p1;
    end else begin
        tmp1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        tmp1_ce0_local = 1'b1;
    end else begin
        tmp1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred808_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_we0_local = 1'b1;
    end else begin
        tmp1_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter1_stage3) & (ap_idle_pp0_0to0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln27_1_fu_501_p2 = (indvar_flatten21_fu_130 + 19'd1);
assign add_ln27_fu_578_p2 = (i_1_fu_126 + 7'd1);
assign add_ln28_1_fu_548_p2 = (indvar_flatten7_fu_122 + 14'd1);
assign add_ln28_fu_602_p2 = (select_ln5_fu_584_p3 + 7'd1);
assign add_ln30_fu_721_p2 = (k_mid2_reg_987 + 7'd1);
assign and_ln5_fu_528_p2 = (xor_ln5_fu_516_p2 & icmp_ln30_fu_522_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign buff_A0_1_address0 = zext_ln31_fu_697_p1;
assign buff_A0_1_ce0 = buff_A0_1_ce0_local;
assign buff_A0_2_address0 = zext_ln31_fu_697_p1;
assign buff_A0_2_ce0 = buff_A0_2_ce0_local;
assign buff_A0_3_address0 = zext_ln31_fu_697_p1;
assign buff_A0_3_ce0 = buff_A0_3_ce0_local;
assign buff_A0_address0 = zext_ln31_fu_697_p1;
assign buff_A0_ce0 = buff_A0_ce0_local;
assign buff_B0_1_address0 = zext_ln31_1_fu_713_p1;
assign buff_B0_1_ce0 = buff_B0_1_ce0_local;
assign buff_B0_2_address0 = zext_ln31_1_fu_713_p1;
assign buff_B0_2_ce0 = buff_B0_2_ce0_local;
assign buff_B0_3_address0 = zext_ln31_1_fu_713_p1;
assign buff_B0_3_ce0 = buff_B0_3_ce0_local;
assign buff_B0_address0 = zext_ln31_1_fu_713_p1;
assign buff_B0_ce0 = buff_B0_ce0_local;
assign empty_13_fu_534_p2 = (icmp_ln28_fu_510_p2 | and_ln5_fu_528_p2);
assign empty_14_fu_615_p1 = select_ln28_fu_608_p3[5:0];
assign first_iter_1_fu_619_p2 = ((k_mid2_reg_987 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_736_p_ce = 1'b1;
assign grp_fu_736_p_din0 = empty_fu_134;
assign grp_fu_736_p_din1 = mul4_reg_1156;
assign grp_fu_736_p_opcode = 2'd0;
assign grp_fu_740_p_ce = 1'b1;
assign grp_fu_740_p_din0 = grp_fu_460_p0;
assign grp_fu_740_p_din1 = grp_fu_460_p1;
assign icmp_ln27_fu_495_p2 = ((indvar_flatten21_fu_130 == 19'd262144) ? 1'b1 : 1'b0);
assign icmp_ln28_fu_510_p2 = ((indvar_flatten7_fu_122 == 14'd4096) ? 1'b1 : 1'b0);
assign icmp_ln30_1_fu_726_p2 = ((add_ln30_fu_721_p2 == 7'd64) ? 1'b1 : 1'b0);
assign icmp_ln30_fu_522_p2 = ((k_fu_114 == 7'd64) ? 1'b1 : 1'b0);
assign k_mid2_fu_540_p3 = ((empty_13_fu_534_p2[0:0] == 1'b1) ? 7'd0 : k_fu_114);
assign lshr_ln5_4_fu_632_p4 = {{select_ln28_fu_608_p3[5:2]}};
assign lshr_ln5_7_fu_680_p4 = {{k_mid2_reg_987[5:2]}};
assign select_ln27_fu_591_p3 = ((icmp_ln28_reg_976[0:0] == 1'b1) ? add_ln27_fu_578_p2 : i_1_fu_126);
assign select_ln28_1_fu_554_p3 = ((icmp_ln28_fu_510_p2[0:0] == 1'b1) ? 14'd1 : add_ln28_1_fu_548_p2);
assign select_ln28_fu_608_p3 = ((and_ln5_reg_982[0:0] == 1'b1) ? add_ln28_fu_602_p2 : select_ln5_fu_584_p3);
assign select_ln5_fu_584_p3 = ((icmp_ln28_reg_976[0:0] == 1'b1) ? 7'd0 : j_fu_118);
assign tmp1_10_address0 = tmp1_10_address0_local;
assign tmp1_10_ce0 = tmp1_10_ce0_local;
assign tmp1_10_d0 = add_reg_1166;
assign tmp1_10_we0 = tmp1_10_we0_local;
assign tmp1_11_address0 = tmp1_11_address0_local;
assign tmp1_11_ce0 = tmp1_11_ce0_local;
assign tmp1_11_d0 = add_reg_1166;
assign tmp1_11_we0 = tmp1_11_we0_local;
assign tmp1_12_address0 = tmp1_12_address0_local;
assign tmp1_12_ce0 = tmp1_12_ce0_local;
assign tmp1_12_d0 = add_reg_1166;
assign tmp1_12_we0 = tmp1_12_we0_local;
assign tmp1_13_address0 = tmp1_13_address0_local;
assign tmp1_13_ce0 = tmp1_13_ce0_local;
assign tmp1_13_d0 = add_reg_1166;
assign tmp1_13_we0 = tmp1_13_we0_local;
assign tmp1_14_address0 = tmp1_14_address0_local;
assign tmp1_14_ce0 = tmp1_14_ce0_local;
assign tmp1_14_d0 = add_reg_1166;
assign tmp1_14_we0 = tmp1_14_we0_local;
assign tmp1_15_address0 = tmp1_15_address0_local;
assign tmp1_15_ce0 = tmp1_15_ce0_local;
assign tmp1_15_d0 = add_reg_1166;
assign tmp1_15_we0 = tmp1_15_we0_local;
assign tmp1_1_address0 = tmp1_1_address0_local;
assign tmp1_1_ce0 = tmp1_1_ce0_local;
assign tmp1_1_d0 = add_reg_1166;
assign tmp1_1_we0 = tmp1_1_we0_local;
assign tmp1_2_address0 = tmp1_2_address0_local;
assign tmp1_2_ce0 = tmp1_2_ce0_local;
assign tmp1_2_d0 = add_reg_1166;
assign tmp1_2_we0 = tmp1_2_we0_local;
assign tmp1_3_address0 = tmp1_3_address0_local;
assign tmp1_3_ce0 = tmp1_3_ce0_local;
assign tmp1_3_d0 = add_reg_1166;
assign tmp1_3_we0 = tmp1_3_we0_local;
assign tmp1_4_address0 = tmp1_4_address0_local;
assign tmp1_4_ce0 = tmp1_4_ce0_local;
assign tmp1_4_d0 = add_reg_1166;
assign tmp1_4_we0 = tmp1_4_we0_local;
assign tmp1_5_address0 = tmp1_5_address0_local;
assign tmp1_5_ce0 = tmp1_5_ce0_local;
assign tmp1_5_d0 = add_reg_1166;
assign tmp1_5_we0 = tmp1_5_we0_local;
assign tmp1_6_address0 = tmp1_6_address0_local;
assign tmp1_6_ce0 = tmp1_6_ce0_local;
assign tmp1_6_d0 = add_reg_1166;
assign tmp1_6_we0 = tmp1_6_we0_local;
assign tmp1_7_address0 = tmp1_7_address0_local;
assign tmp1_7_ce0 = tmp1_7_ce0_local;
assign tmp1_7_d0 = add_reg_1166;
assign tmp1_7_we0 = tmp1_7_we0_local;
assign tmp1_8_address0 = tmp1_8_address0_local;
assign tmp1_8_ce0 = tmp1_8_ce0_local;
assign tmp1_8_d0 = add_reg_1166;
assign tmp1_8_we0 = tmp1_8_we0_local;
assign tmp1_9_address0 = tmp1_9_address0_local;
assign tmp1_9_ce0 = tmp1_9_ce0_local;
assign tmp1_9_d0 = add_reg_1166;
assign tmp1_9_we0 = tmp1_9_we0_local;
assign tmp1_address0 = tmp1_address0_local;
assign tmp1_ce0 = tmp1_ce0_local;
assign tmp1_d0 = add_reg_1166;
assign tmp1_we0 = tmp1_we0_local;
assign tmp_10_fu_889_p9 = 'bx;
assign tmp_18_fu_642_p4 = {{select_ln27_fu_591_p3[5:2]}};
assign tmp_19_cast_fu_660_p1 = tmp_19_fu_652_p3;
assign tmp_19_fu_652_p3 = {{tmp_18_fu_642_p4}, {lshr_ln5_4_fu_632_p4}};
assign tmp_1_fu_770_p9 = 'bx;
assign tmp_20_fu_689_p3 = {{trunc_ln28_fu_598_p1}, {lshr_ln5_7_fu_680_p4}};
assign tmp_21_fu_705_p3 = {{empty_14_fu_615_p1}, {lshr_ln5_7_fu_680_p4}};
assign tmp_2_fu_793_p9 = 'bx;
assign tmp_3_fu_816_p9 = 'bx;
assign tmp_4_fu_839_p9 = 'bx;
assign tmp_fu_747_p9 = 'bx;
assign tmp_s_fu_865_p9 = 'bx;
assign trunc_ln27_fu_624_p1 = select_ln27_fu_591_p3[1:0];
assign trunc_ln28_1_fu_628_p1 = select_ln28_fu_608_p3[1:0];
assign trunc_ln28_fu_598_p1 = select_ln27_fu_591_p3[5:0];
assign trunc_ln30_fu_862_p1 = k_mid2_reg_987[1:0];
assign xor_ln5_fu_516_p2 = (icmp_ln28_fu_510_p2 ^ 1'd1);
assign zext_ln31_1_fu_713_p1 = tmp_21_fu_705_p3;
assign zext_ln31_fu_697_p1 = tmp_20_fu_689_p3;
endmodule 