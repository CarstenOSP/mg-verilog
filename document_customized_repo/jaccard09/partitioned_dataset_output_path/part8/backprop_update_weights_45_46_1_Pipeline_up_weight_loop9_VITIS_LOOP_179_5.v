
module backprop_update_weights_45_46_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights3_15_address0,weights3_15_ce0,weights3_15_we0,weights3_15_d0,weights3_15_q0,weights3_14_address0,weights3_14_ce0,weights3_14_we0,weights3_14_d0,weights3_14_q0,weights3_13_address0,weights3_13_ce0,weights3_13_we0,weights3_13_d0,weights3_13_q0,weights3_12_address0,weights3_12_ce0,weights3_12_we0,weights3_12_d0,weights3_12_q0,weights3_11_address0,weights3_11_ce0,weights3_11_we0,weights3_11_d0,weights3_11_q0,weights3_10_address0,weights3_10_ce0,weights3_10_we0,weights3_10_d0,weights3_10_q0,weights3_9_address0,weights3_9_ce0,weights3_9_we0,weights3_9_d0,weights3_9_q0,weights3_8_address0,weights3_8_ce0,weights3_8_we0,weights3_8_d0,weights3_8_q0,weights3_7_address0,weights3_7_ce0,weights3_7_we0,weights3_7_d0,weights3_7_q0,weights3_6_address0,weights3_6_ce0,weights3_6_we0,weights3_6_d0,weights3_6_q0,weights3_5_address0,weights3_5_ce0,weights3_5_we0,weights3_5_d0,weights3_5_q0,weights3_4_address0,weights3_4_ce0,weights3_4_we0,weights3_4_d0,weights3_4_q0,weights3_3_address0,weights3_3_ce0,weights3_3_we0,weights3_3_d0,weights3_3_q0,weights3_2_address0,weights3_2_ce0,weights3_2_we0,weights3_2_d0,weights3_2_q0,weights3_1_address0,weights3_1_ce0,weights3_1_we0,weights3_1_d0,weights3_1_q0,weights3_0_address0,weights3_0_ce0,weights3_0_we0,weights3_0_d0,weights3_0_q0,d_weights3_0_address0,d_weights3_0_ce0,d_weights3_0_q0,d_weights3_1_address0,d_weights3_1_ce0,d_weights3_1_q0,d_weights3_2_address0,d_weights3_2_ce0,d_weights3_2_q0,d_weights3_3_address0,d_weights3_3_ce0,d_weights3_3_q0,d_weights3_4_address0,d_weights3_4_ce0,d_weights3_4_q0,d_weights3_5_address0,d_weights3_5_ce0,d_weights3_5_q0,d_weights3_6_address0,d_weights3_6_ce0,d_weights3_6_q0,d_weights3_7_address0,d_weights3_7_ce0,d_weights3_7_q0,d_weights3_8_address0,d_weights3_8_ce0,d_weights3_8_q0,d_weights3_9_address0,d_weights3_9_ce0,d_weights3_9_q0,d_weights3_10_address0,d_weights3_10_ce0,d_weights3_10_q0,d_weights3_11_address0,d_weights3_11_ce0,d_weights3_11_q0,d_weights3_12_address0,d_weights3_12_ce0,d_weights3_12_q0,d_weights3_13_address0,d_weights3_13_ce0,d_weights3_13_q0,d_weights3_14_address0,d_weights3_14_ce0,d_weights3_14_q0,d_weights3_15_address0,d_weights3_15_ce0,d_weights3_15_q0,norm_7_out,norm_7_out_ap_vld,grp_fu_1155_p_din0,grp_fu_1155_p_din1,grp_fu_1155_p_opcode,grp_fu_1155_p_dout0,grp_fu_1155_p_ce,grp_fu_1159_p_din0,grp_fu_1159_p_din1,grp_fu_1159_p_dout0,grp_fu_1159_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 7'd1;
parameter    ap_ST_fsm_pp0_stage1 = 7'd2;
parameter    ap_ST_fsm_pp0_stage2 = 7'd4;
parameter    ap_ST_fsm_pp0_stage3 = 7'd8;
parameter    ap_ST_fsm_pp0_stage4 = 7'd16;
parameter    ap_ST_fsm_pp0_stage5 = 7'd32;
parameter    ap_ST_fsm_pp0_stage6 = 7'd64;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] weights3_15_address0;
output   weights3_15_ce0;
output   weights3_15_we0;
output  [63:0] weights3_15_d0;
input  [63:0] weights3_15_q0;
output  [3:0] weights3_14_address0;
output   weights3_14_ce0;
output   weights3_14_we0;
output  [63:0] weights3_14_d0;
input  [63:0] weights3_14_q0;
output  [3:0] weights3_13_address0;
output   weights3_13_ce0;
output   weights3_13_we0;
output  [63:0] weights3_13_d0;
input  [63:0] weights3_13_q0;
output  [3:0] weights3_12_address0;
output   weights3_12_ce0;
output   weights3_12_we0;
output  [63:0] weights3_12_d0;
input  [63:0] weights3_12_q0;
output  [3:0] weights3_11_address0;
output   weights3_11_ce0;
output   weights3_11_we0;
output  [63:0] weights3_11_d0;
input  [63:0] weights3_11_q0;
output  [3:0] weights3_10_address0;
output   weights3_10_ce0;
output   weights3_10_we0;
output  [63:0] weights3_10_d0;
input  [63:0] weights3_10_q0;
output  [3:0] weights3_9_address0;
output   weights3_9_ce0;
output   weights3_9_we0;
output  [63:0] weights3_9_d0;
input  [63:0] weights3_9_q0;
output  [3:0] weights3_8_address0;
output   weights3_8_ce0;
output   weights3_8_we0;
output  [63:0] weights3_8_d0;
input  [63:0] weights3_8_q0;
output  [3:0] weights3_7_address0;
output   weights3_7_ce0;
output   weights3_7_we0;
output  [63:0] weights3_7_d0;
input  [63:0] weights3_7_q0;
output  [3:0] weights3_6_address0;
output   weights3_6_ce0;
output   weights3_6_we0;
output  [63:0] weights3_6_d0;
input  [63:0] weights3_6_q0;
output  [3:0] weights3_5_address0;
output   weights3_5_ce0;
output   weights3_5_we0;
output  [63:0] weights3_5_d0;
input  [63:0] weights3_5_q0;
output  [3:0] weights3_4_address0;
output   weights3_4_ce0;
output   weights3_4_we0;
output  [63:0] weights3_4_d0;
input  [63:0] weights3_4_q0;
output  [3:0] weights3_3_address0;
output   weights3_3_ce0;
output   weights3_3_we0;
output  [63:0] weights3_3_d0;
input  [63:0] weights3_3_q0;
output  [3:0] weights3_2_address0;
output   weights3_2_ce0;
output   weights3_2_we0;
output  [63:0] weights3_2_d0;
input  [63:0] weights3_2_q0;
output  [3:0] weights3_1_address0;
output   weights3_1_ce0;
output   weights3_1_we0;
output  [63:0] weights3_1_d0;
input  [63:0] weights3_1_q0;
output  [3:0] weights3_0_address0;
output   weights3_0_ce0;
output   weights3_0_we0;
output  [63:0] weights3_0_d0;
input  [63:0] weights3_0_q0;
output  [3:0] d_weights3_0_address0;
output   d_weights3_0_ce0;
input  [63:0] d_weights3_0_q0;
output  [3:0] d_weights3_1_address0;
output   d_weights3_1_ce0;
input  [63:0] d_weights3_1_q0;
output  [3:0] d_weights3_2_address0;
output   d_weights3_2_ce0;
input  [63:0] d_weights3_2_q0;
output  [3:0] d_weights3_3_address0;
output   d_weights3_3_ce0;
input  [63:0] d_weights3_3_q0;
output  [3:0] d_weights3_4_address0;
output   d_weights3_4_ce0;
input  [63:0] d_weights3_4_q0;
output  [3:0] d_weights3_5_address0;
output   d_weights3_5_ce0;
input  [63:0] d_weights3_5_q0;
output  [3:0] d_weights3_6_address0;
output   d_weights3_6_ce0;
input  [63:0] d_weights3_6_q0;
output  [3:0] d_weights3_7_address0;
output   d_weights3_7_ce0;
input  [63:0] d_weights3_7_q0;
output  [3:0] d_weights3_8_address0;
output   d_weights3_8_ce0;
input  [63:0] d_weights3_8_q0;
output  [3:0] d_weights3_9_address0;
output   d_weights3_9_ce0;
input  [63:0] d_weights3_9_q0;
output  [3:0] d_weights3_10_address0;
output   d_weights3_10_ce0;
input  [63:0] d_weights3_10_q0;
output  [3:0] d_weights3_11_address0;
output   d_weights3_11_ce0;
input  [63:0] d_weights3_11_q0;
output  [3:0] d_weights3_12_address0;
output   d_weights3_12_ce0;
input  [63:0] d_weights3_12_q0;
output  [3:0] d_weights3_13_address0;
output   d_weights3_13_ce0;
input  [63:0] d_weights3_13_q0;
output  [3:0] d_weights3_14_address0;
output   d_weights3_14_ce0;
input  [63:0] d_weights3_14_q0;
output  [3:0] d_weights3_15_address0;
output   d_weights3_15_ce0;
input  [63:0] d_weights3_15_q0;
output  [63:0] norm_7_out;
output   norm_7_out_ap_vld;
output  [63:0] grp_fu_1155_p_din0;
output  [63:0] grp_fu_1155_p_din1;
output  [1:0] grp_fu_1155_p_opcode;
input  [63:0] grp_fu_1155_p_dout0;
output   grp_fu_1155_p_ce;
output  [63:0] grp_fu_1159_p_din0;
output  [63:0] grp_fu_1159_p_din1;
input  [63:0] grp_fu_1159_p_dout0;
output   grp_fu_1159_p_ce;
reg ap_idle;
reg norm_7_out_ap_vld;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] icmp_ln178_reg_1021;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln178_fu_627_p2;
reg   [0:0] icmp_ln178_reg_1021_pp0_iter1_reg;
reg   [0:0] icmp_ln178_reg_1021_pp0_iter2_reg;
reg   [0:0] icmp_ln178_reg_1021_pp0_iter3_reg;
wire   [7:0] add_ln178_fu_633_p2;
reg   [7:0] add_ln178_reg_1025;
wire   [1:0] select_ln121_fu_651_p3;
reg   [1:0] select_ln121_reg_1030;
wire   [6:0] select_ln178_fu_665_p3;
reg   [6:0] select_ln178_reg_1036;
wire   [5:0] trunc_ln179_fu_673_p1;
reg   [5:0] trunc_ln179_reg_1042;
wire   [3:0] trunc_ln180_fu_702_p1;
reg   [3:0] trunc_ln180_reg_1047;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [3:0] trunc_ln180_reg_1047_pp0_iter1_reg;
reg   [3:0] trunc_ln180_reg_1047_pp0_iter2_reg;
wire   [63:0] zext_ln180_fu_716_p1;
reg   [63:0] zext_ln180_reg_1053;
wire   [63:0] tmp_s_fu_736_p35;
reg   [63:0] tmp_s_reg_1153;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [3:0] weights3_0_addr_reg_1158;
reg   [3:0] weights3_0_addr_reg_1158_pp0_iter2_reg;
reg   [3:0] weights3_1_addr_reg_1163;
reg   [3:0] weights3_1_addr_reg_1163_pp0_iter2_reg;
reg   [3:0] weights3_2_addr_reg_1168;
reg   [3:0] weights3_2_addr_reg_1168_pp0_iter2_reg;
reg   [3:0] weights3_3_addr_reg_1173;
reg   [3:0] weights3_3_addr_reg_1173_pp0_iter2_reg;
reg   [3:0] weights3_4_addr_reg_1178;
reg   [3:0] weights3_4_addr_reg_1178_pp0_iter2_reg;
reg   [3:0] weights3_5_addr_reg_1183;
reg   [3:0] weights3_5_addr_reg_1183_pp0_iter2_reg;
reg   [3:0] weights3_6_addr_reg_1188;
reg   [3:0] weights3_6_addr_reg_1188_pp0_iter2_reg;
reg   [3:0] weights3_7_addr_reg_1193;
reg   [3:0] weights3_7_addr_reg_1193_pp0_iter2_reg;
reg   [3:0] weights3_8_addr_reg_1198;
reg   [3:0] weights3_8_addr_reg_1198_pp0_iter2_reg;
reg   [3:0] weights3_9_addr_reg_1203;
reg   [3:0] weights3_9_addr_reg_1203_pp0_iter2_reg;
reg   [3:0] weights3_10_addr_reg_1208;
reg   [3:0] weights3_10_addr_reg_1208_pp0_iter2_reg;
reg   [3:0] weights3_11_addr_reg_1213;
reg   [3:0] weights3_11_addr_reg_1213_pp0_iter2_reg;
reg   [3:0] weights3_12_addr_reg_1218;
reg   [3:0] weights3_12_addr_reg_1218_pp0_iter2_reg;
reg   [3:0] weights3_13_addr_reg_1223;
reg   [3:0] weights3_13_addr_reg_1223_pp0_iter2_reg;
reg   [3:0] weights3_14_addr_reg_1228;
reg   [3:0] weights3_14_addr_reg_1228_pp0_iter2_reg;
reg   [3:0] weights3_15_addr_reg_1233;
reg   [3:0] weights3_15_addr_reg_1233_pp0_iter2_reg;
reg   [63:0] mul_reg_1238;
wire   [63:0] tmp_1_fu_889_p35;
reg   [63:0] tmp_1_reg_1243;
reg   [63:0] sub5_reg_1248;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] mul1_reg_1255;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage1;
reg   [63:0] norm_fu_156;
reg   [63:0] ap_sig_allocacmp_norm_load_1;
wire    ap_block_pp0_stage4;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage6_11001;
reg    ap_condition_exit_pp0_iter3_stage4;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [1:0] j_fu_160;
wire   [1:0] add_ln179_fu_807_p2;
reg   [1:0] ap_sig_allocacmp_j_load;
wire    ap_block_pp0_stage0;
reg   [6:0] i_fu_164;
reg   [6:0] ap_sig_allocacmp_i_load;
reg   [7:0] indvar_flatten27_fu_168;
reg   [7:0] ap_sig_allocacmp_indvar_flatten27_load;
wire    ap_block_pp0_stage4_01001;
reg    d_weights3_0_ce0_local;
reg    d_weights3_1_ce0_local;
reg    d_weights3_2_ce0_local;
reg    d_weights3_3_ce0_local;
reg    d_weights3_4_ce0_local;
reg    d_weights3_5_ce0_local;
reg    d_weights3_6_ce0_local;
reg    d_weights3_7_ce0_local;
reg    d_weights3_8_ce0_local;
reg    d_weights3_9_ce0_local;
reg    d_weights3_10_ce0_local;
reg    d_weights3_11_ce0_local;
reg    d_weights3_12_ce0_local;
reg    d_weights3_13_ce0_local;
reg    d_weights3_14_ce0_local;
reg    d_weights3_15_ce0_local;
reg    weights3_0_ce0_local;
reg   [3:0] weights3_0_address0_local;
reg    weights3_0_we0_local;
wire   [63:0] bitcast_ln180_16_fu_960_p1;
reg    weights3_1_ce0_local;
reg   [3:0] weights3_1_address0_local;
reg    weights3_1_we0_local;
reg    weights3_2_ce0_local;
reg   [3:0] weights3_2_address0_local;
reg    weights3_2_we0_local;
reg    weights3_3_ce0_local;
reg   [3:0] weights3_3_address0_local;
reg    weights3_3_we0_local;
reg    weights3_4_ce0_local;
reg   [3:0] weights3_4_address0_local;
reg    weights3_4_we0_local;
reg    weights3_5_ce0_local;
reg   [3:0] weights3_5_address0_local;
reg    weights3_5_we0_local;
reg    weights3_6_ce0_local;
reg   [3:0] weights3_6_address0_local;
reg    weights3_6_we0_local;
reg    weights3_7_ce0_local;
reg   [3:0] weights3_7_address0_local;
reg    weights3_7_we0_local;
reg    weights3_8_ce0_local;
reg   [3:0] weights3_8_address0_local;
reg    weights3_8_we0_local;
reg    weights3_9_ce0_local;
reg   [3:0] weights3_9_address0_local;
reg    weights3_9_we0_local;
reg    weights3_10_ce0_local;
reg   [3:0] weights3_10_address0_local;
reg    weights3_10_we0_local;
reg    weights3_11_ce0_local;
reg   [3:0] weights3_11_address0_local;
reg    weights3_11_we0_local;
reg    weights3_12_ce0_local;
reg   [3:0] weights3_12_address0_local;
reg    weights3_12_we0_local;
reg    weights3_13_ce0_local;
reg   [3:0] weights3_13_address0_local;
reg    weights3_13_we0_local;
reg    weights3_14_ce0_local;
reg   [3:0] weights3_14_address0_local;
reg    weights3_14_we0_local;
reg    weights3_15_ce0_local;
reg   [3:0] weights3_15_address0_local;
reg    weights3_15_we0_local;
reg   [63:0] grp_fu_595_p0;
reg   [63:0] grp_fu_595_p1;
wire    ap_block_pp0_stage3;
reg   [63:0] grp_fu_599_p0;
reg   [63:0] grp_fu_599_p1;
wire   [0:0] icmp_ln179_fu_645_p2;
wire   [6:0] add_ln178_1_fu_659_p2;
wire   [7:0] p_shl_fu_680_p3;
wire   [7:0] zext_ln179_fu_677_p1;
wire   [7:0] zext_ln179_1_fu_693_p1;
wire   [7:0] sub_ln179_fu_687_p2;
wire   [7:0] add_ln180_fu_696_p2;
wire   [3:0] lshr_ln5_fu_706_p4;
wire   [63:0] tmp_s_fu_736_p33;
wire    ap_block_pp0_stage2;
wire   [63:0] tmp_1_fu_889_p2;
wire   [63:0] tmp_1_fu_889_p4;
wire   [63:0] tmp_1_fu_889_p6;
wire   [63:0] tmp_1_fu_889_p8;
wire   [63:0] tmp_1_fu_889_p10;
wire   [63:0] tmp_1_fu_889_p12;
wire   [63:0] tmp_1_fu_889_p14;
wire   [63:0] tmp_1_fu_889_p16;
wire   [63:0] tmp_1_fu_889_p18;
wire   [63:0] tmp_1_fu_889_p20;
wire   [63:0] tmp_1_fu_889_p22;
wire   [63:0] tmp_1_fu_889_p24;
wire   [63:0] tmp_1_fu_889_p26;
wire   [63:0] tmp_1_fu_889_p28;
wire   [63:0] tmp_1_fu_889_p30;
wire   [63:0] tmp_1_fu_889_p32;
wire   [63:0] tmp_1_fu_889_p33;
reg   [1:0] grp_fu_595_opcode;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage3_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [6:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [3:0] tmp_s_fu_736_p1;
wire   [3:0] tmp_s_fu_736_p3;
wire   [3:0] tmp_s_fu_736_p5;
wire   [3:0] tmp_s_fu_736_p7;
wire   [3:0] tmp_s_fu_736_p9;
wire   [3:0] tmp_s_fu_736_p11;
wire   [3:0] tmp_s_fu_736_p13;
wire   [3:0] tmp_s_fu_736_p15;
wire  signed [3:0] tmp_s_fu_736_p17;
wire  signed [3:0] tmp_s_fu_736_p19;
wire  signed [3:0] tmp_s_fu_736_p21;
wire  signed [3:0] tmp_s_fu_736_p23;
wire  signed [3:0] tmp_s_fu_736_p25;
wire  signed [3:0] tmp_s_fu_736_p27;
wire  signed [3:0] tmp_s_fu_736_p29;
wire  signed [3:0] tmp_s_fu_736_p31;
wire   [3:0] tmp_1_fu_889_p1;
wire   [3:0] tmp_1_fu_889_p3;
wire   [3:0] tmp_1_fu_889_p5;
wire   [3:0] tmp_1_fu_889_p7;
wire   [3:0] tmp_1_fu_889_p9;
wire   [3:0] tmp_1_fu_889_p11;
wire   [3:0] tmp_1_fu_889_p13;
wire   [3:0] tmp_1_fu_889_p15;
wire  signed [3:0] tmp_1_fu_889_p17;
wire  signed [3:0] tmp_1_fu_889_p19;
wire  signed [3:0] tmp_1_fu_889_p21;
wire  signed [3:0] tmp_1_fu_889_p23;
wire  signed [3:0] tmp_1_fu_889_p25;
wire  signed [3:0] tmp_1_fu_889_p27;
wire  signed [3:0] tmp_1_fu_889_p29;
wire  signed [3:0] tmp_1_fu_889_p31;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 norm_fu_156 = 64'd0;
#0 j_fu_160 = 2'd0;
#0 i_fu_164 = 7'd0;
#0 indvar_flatten27_fu_168 = 8'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.CASE13( 4'hD ),.din13_WIDTH( 64 ),.CASE14( 4'hE ),.din14_WIDTH( 64 ),.CASE15( 4'hF ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U1089(.din0(d_weights3_0_q0),.din1(d_weights3_1_q0),.din2(d_weights3_2_q0),.din3(d_weights3_3_q0),.din4(d_weights3_4_q0),.din5(d_weights3_5_q0),.din6(d_weights3_6_q0),.din7(d_weights3_7_q0),.din8(d_weights3_8_q0),.din9(d_weights3_9_q0),.din10(d_weights3_10_q0),.din11(d_weights3_11_q0),.din12(d_weights3_12_q0),.din13(d_weights3_13_q0),.din14(d_weights3_14_q0),.din15(d_weights3_15_q0),.def(tmp_s_fu_736_p33),.sel(trunc_ln180_reg_1047),.dout(tmp_s_fu_736_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.CASE13( 4'hD ),.din13_WIDTH( 64 ),.CASE14( 4'hE ),.din14_WIDTH( 64 ),.CASE15( 4'hF ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U1090(.din0(tmp_1_fu_889_p2),.din1(tmp_1_fu_889_p4),.din2(tmp_1_fu_889_p6),.din3(tmp_1_fu_889_p8),.din4(tmp_1_fu_889_p10),.din5(tmp_1_fu_889_p12),.din6(tmp_1_fu_889_p14),.din7(tmp_1_fu_889_p16),.din8(tmp_1_fu_889_p18),.din9(tmp_1_fu_889_p20),.din10(tmp_1_fu_889_p22),.din11(tmp_1_fu_889_p24),.din12(tmp_1_fu_889_p26),.din13(tmp_1_fu_889_p28),.din14(tmp_1_fu_889_p30),.din15(tmp_1_fu_889_p32),.def(tmp_1_fu_889_p33),.sel(trunc_ln180_reg_1047_pp0_iter1_reg),.dout(tmp_1_fu_889_p35));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage6),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage6)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage4))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage4))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage4))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_164 <= 7'd0;
    end else if (((icmp_ln178_reg_1021 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        i_fu_164 <= select_ln178_reg_1036;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten27_fu_168 <= 8'd0;
    end else if (((icmp_ln178_reg_1021 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        indvar_flatten27_fu_168 <= add_ln178_reg_1025;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_160 <= 2'd0;
    end else if (((icmp_ln178_reg_1021 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        j_fu_160 <= add_ln179_fu_807_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        norm_fu_156 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        norm_fu_156 <= grp_fu_1155_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln178_reg_1025 <= add_ln178_fu_633_p2;
        icmp_ln178_reg_1021 <= icmp_ln178_fu_627_p2;
        icmp_ln178_reg_1021_pp0_iter1_reg <= icmp_ln178_reg_1021;
        icmp_ln178_reg_1021_pp0_iter2_reg <= icmp_ln178_reg_1021_pp0_iter1_reg;
        icmp_ln178_reg_1021_pp0_iter3_reg <= icmp_ln178_reg_1021_pp0_iter2_reg;
        select_ln121_reg_1030 <= select_ln121_fu_651_p3;
        select_ln178_reg_1036 <= select_ln178_fu_665_p3;
        trunc_ln179_reg_1042 <= trunc_ln179_fu_673_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul1_reg_1255 <= grp_fu_1159_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_reg_1238 <= grp_fu_1159_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub5_reg_1248 <= grp_fu_1155_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_1_reg_1243 <= tmp_1_fu_889_p35;
        tmp_s_reg_1153 <= tmp_s_fu_736_p35;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        trunc_ln180_reg_1047 <= trunc_ln180_fu_702_p1;
        trunc_ln180_reg_1047_pp0_iter1_reg <= trunc_ln180_reg_1047;
        trunc_ln180_reg_1047_pp0_iter2_reg <= trunc_ln180_reg_1047_pp0_iter1_reg;
        weights3_0_addr_reg_1158 <= zext_ln180_reg_1053;
        weights3_0_addr_reg_1158_pp0_iter2_reg <= weights3_0_addr_reg_1158;
        weights3_10_addr_reg_1208 <= zext_ln180_reg_1053;
        weights3_10_addr_reg_1208_pp0_iter2_reg <= weights3_10_addr_reg_1208;
        weights3_11_addr_reg_1213 <= zext_ln180_reg_1053;
        weights3_11_addr_reg_1213_pp0_iter2_reg <= weights3_11_addr_reg_1213;
        weights3_12_addr_reg_1218 <= zext_ln180_reg_1053;
        weights3_12_addr_reg_1218_pp0_iter2_reg <= weights3_12_addr_reg_1218;
        weights3_13_addr_reg_1223 <= zext_ln180_reg_1053;
        weights3_13_addr_reg_1223_pp0_iter2_reg <= weights3_13_addr_reg_1223;
        weights3_14_addr_reg_1228 <= zext_ln180_reg_1053;
        weights3_14_addr_reg_1228_pp0_iter2_reg <= weights3_14_addr_reg_1228;
        weights3_15_addr_reg_1233 <= zext_ln180_reg_1053;
        weights3_15_addr_reg_1233_pp0_iter2_reg <= weights3_15_addr_reg_1233;
        weights3_1_addr_reg_1163 <= zext_ln180_reg_1053;
        weights3_1_addr_reg_1163_pp0_iter2_reg <= weights3_1_addr_reg_1163;
        weights3_2_addr_reg_1168 <= zext_ln180_reg_1053;
        weights3_2_addr_reg_1168_pp0_iter2_reg <= weights3_2_addr_reg_1168;
        weights3_3_addr_reg_1173 <= zext_ln180_reg_1053;
        weights3_3_addr_reg_1173_pp0_iter2_reg <= weights3_3_addr_reg_1173;
        weights3_4_addr_reg_1178 <= zext_ln180_reg_1053;
        weights3_4_addr_reg_1178_pp0_iter2_reg <= weights3_4_addr_reg_1178;
        weights3_5_addr_reg_1183 <= zext_ln180_reg_1053;
        weights3_5_addr_reg_1183_pp0_iter2_reg <= weights3_5_addr_reg_1183;
        weights3_6_addr_reg_1188 <= zext_ln180_reg_1053;
        weights3_6_addr_reg_1188_pp0_iter2_reg <= weights3_6_addr_reg_1188;
        weights3_7_addr_reg_1193 <= zext_ln180_reg_1053;
        weights3_7_addr_reg_1193_pp0_iter2_reg <= weights3_7_addr_reg_1193;
        weights3_8_addr_reg_1198 <= zext_ln180_reg_1053;
        weights3_8_addr_reg_1198_pp0_iter2_reg <= weights3_8_addr_reg_1198;
        weights3_9_addr_reg_1203 <= zext_ln180_reg_1053;
        weights3_9_addr_reg_1203_pp0_iter2_reg <= weights3_9_addr_reg_1203;
        zext_ln180_reg_1053[3 : 0] <= zext_ln180_fu_716_p1[3 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln178_reg_1021 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln178_reg_1021_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_condition_exit_pp0_iter3_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage4 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to4 = 1'b1;
    end else begin
        ap_idle_pp0_1to4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_164;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten27_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten27_load = indvar_flatten27_fu_168;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 2'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_160;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_sig_allocacmp_norm_load_1 = grp_fu_1155_p_dout0;
    end else begin
        ap_sig_allocacmp_norm_load_1 = norm_fu_156;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_0_ce0_local = 1'b1;
    end else begin
        d_weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_10_ce0_local = 1'b1;
    end else begin
        d_weights3_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_11_ce0_local = 1'b1;
    end else begin
        d_weights3_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_12_ce0_local = 1'b1;
    end else begin
        d_weights3_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_13_ce0_local = 1'b1;
    end else begin
        d_weights3_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_14_ce0_local = 1'b1;
    end else begin
        d_weights3_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_15_ce0_local = 1'b1;
    end else begin
        d_weights3_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_1_ce0_local = 1'b1;
    end else begin
        d_weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_2_ce0_local = 1'b1;
    end else begin
        d_weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_3_ce0_local = 1'b1;
    end else begin
        d_weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_4_ce0_local = 1'b1;
    end else begin
        d_weights3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_5_ce0_local = 1'b1;
    end else begin
        d_weights3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_6_ce0_local = 1'b1;
    end else begin
        d_weights3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_7_ce0_local = 1'b1;
    end else begin
        d_weights3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_8_ce0_local = 1'b1;
    end else begin
        d_weights3_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_9_ce0_local = 1'b1;
    end else begin
        d_weights3_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_595_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_595_opcode = 2'd0;
    end else begin
        grp_fu_595_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_595_p0 = ap_sig_allocacmp_norm_load_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_595_p0 = tmp_1_reg_1243;
    end else begin
        grp_fu_595_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_595_p1 = mul1_reg_1255;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_595_p1 = mul_reg_1238;
    end else begin
        grp_fu_595_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_599_p0 = sub5_reg_1248;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_599_p0 = tmp_s_reg_1153;
    end else begin
        grp_fu_599_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_599_p1 = sub5_reg_1248;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_599_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_599_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage4_11001) & (icmp_ln178_reg_1021_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        norm_7_out_ap_vld = 1'b1;
    end else begin
        norm_7_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_0_address0_local = weights3_0_addr_reg_1158_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_0_address0_local = zext_ln180_reg_1053;
    end else begin
        weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_0_ce0_local = 1'b1;
    end else begin
        weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln180_reg_1047_pp0_iter2_reg == 4'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_0_we0_local = 1'b1;
    end else begin
        weights3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_10_address0_local = weights3_10_addr_reg_1208_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_10_address0_local = zext_ln180_reg_1053;
    end else begin
        weights3_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_10_ce0_local = 1'b1;
    end else begin
        weights3_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln180_reg_1047_pp0_iter2_reg == 4'd10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_10_we0_local = 1'b1;
    end else begin
        weights3_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_11_address0_local = weights3_11_addr_reg_1213_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_11_address0_local = zext_ln180_reg_1053;
    end else begin
        weights3_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_11_ce0_local = 1'b1;
    end else begin
        weights3_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln180_reg_1047_pp0_iter2_reg == 4'd11) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_11_we0_local = 1'b1;
    end else begin
        weights3_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_12_address0_local = weights3_12_addr_reg_1218_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_12_address0_local = zext_ln180_reg_1053;
    end else begin
        weights3_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_12_ce0_local = 1'b1;
    end else begin
        weights3_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln180_reg_1047_pp0_iter2_reg == 4'd12) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_12_we0_local = 1'b1;
    end else begin
        weights3_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_13_address0_local = weights3_13_addr_reg_1223_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_13_address0_local = zext_ln180_reg_1053;
    end else begin
        weights3_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_13_ce0_local = 1'b1;
    end else begin
        weights3_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln180_reg_1047_pp0_iter2_reg == 4'd13) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_13_we0_local = 1'b1;
    end else begin
        weights3_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_14_address0_local = weights3_14_addr_reg_1228_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_14_address0_local = zext_ln180_reg_1053;
    end else begin
        weights3_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_14_ce0_local = 1'b1;
    end else begin
        weights3_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln180_reg_1047_pp0_iter2_reg == 4'd14) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_14_we0_local = 1'b1;
    end else begin
        weights3_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_15_address0_local = weights3_15_addr_reg_1233_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_15_address0_local = zext_ln180_reg_1053;
    end else begin
        weights3_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_15_ce0_local = 1'b1;
    end else begin
        weights3_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln180_reg_1047_pp0_iter2_reg == 4'd15) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_15_we0_local = 1'b1;
    end else begin
        weights3_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_1_address0_local = weights3_1_addr_reg_1163_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_1_address0_local = zext_ln180_reg_1053;
    end else begin
        weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_1_ce0_local = 1'b1;
    end else begin
        weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln180_reg_1047_pp0_iter2_reg == 4'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_1_we0_local = 1'b1;
    end else begin
        weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_2_address0_local = weights3_2_addr_reg_1168_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_2_address0_local = zext_ln180_reg_1053;
    end else begin
        weights3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_2_ce0_local = 1'b1;
    end else begin
        weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln180_reg_1047_pp0_iter2_reg == 4'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_2_we0_local = 1'b1;
    end else begin
        weights3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_3_address0_local = weights3_3_addr_reg_1173_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_3_address0_local = zext_ln180_reg_1053;
    end else begin
        weights3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_3_ce0_local = 1'b1;
    end else begin
        weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln180_reg_1047_pp0_iter2_reg == 4'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_3_we0_local = 1'b1;
    end else begin
        weights3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_4_address0_local = weights3_4_addr_reg_1178_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_4_address0_local = zext_ln180_reg_1053;
    end else begin
        weights3_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_4_ce0_local = 1'b1;
    end else begin
        weights3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln180_reg_1047_pp0_iter2_reg == 4'd4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_4_we0_local = 1'b1;
    end else begin
        weights3_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_5_address0_local = weights3_5_addr_reg_1183_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_5_address0_local = zext_ln180_reg_1053;
    end else begin
        weights3_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_5_ce0_local = 1'b1;
    end else begin
        weights3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln180_reg_1047_pp0_iter2_reg == 4'd5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_5_we0_local = 1'b1;
    end else begin
        weights3_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_6_address0_local = weights3_6_addr_reg_1188_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_6_address0_local = zext_ln180_reg_1053;
    end else begin
        weights3_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_6_ce0_local = 1'b1;
    end else begin
        weights3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln180_reg_1047_pp0_iter2_reg == 4'd6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_6_we0_local = 1'b1;
    end else begin
        weights3_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_7_address0_local = weights3_7_addr_reg_1193_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_7_address0_local = zext_ln180_reg_1053;
    end else begin
        weights3_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_7_ce0_local = 1'b1;
    end else begin
        weights3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln180_reg_1047_pp0_iter2_reg == 4'd7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_7_we0_local = 1'b1;
    end else begin
        weights3_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_8_address0_local = weights3_8_addr_reg_1198_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_8_address0_local = zext_ln180_reg_1053;
    end else begin
        weights3_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_8_ce0_local = 1'b1;
    end else begin
        weights3_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln180_reg_1047_pp0_iter2_reg == 4'd8) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_8_we0_local = 1'b1;
    end else begin
        weights3_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_9_address0_local = weights3_9_addr_reg_1203_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_9_address0_local = zext_ln180_reg_1053;
    end else begin
        weights3_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_9_ce0_local = 1'b1;
    end else begin
        weights3_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (trunc_ln180_reg_1047_pp0_iter2_reg == 4'd9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_9_we0_local = 1'b1;
    end else begin
        weights3_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_idle_pp0_1to4 == 1'b1) & (ap_start_int == 1'b0)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage4))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln178_1_fu_659_p2 = (ap_sig_allocacmp_i_load + 7'd1);
assign add_ln178_fu_633_p2 = (ap_sig_allocacmp_indvar_flatten27_load + 8'd1);
assign add_ln179_fu_807_p2 = (select_ln121_reg_1030 + 2'd1);
assign add_ln180_fu_696_p2 = (zext_ln179_1_fu_693_p1 + sub_ln179_fu_687_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
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
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign bitcast_ln180_16_fu_960_p1 = sub5_reg_1248;
assign d_weights3_0_address0 = zext_ln180_fu_716_p1;
assign d_weights3_0_ce0 = d_weights3_0_ce0_local;
assign d_weights3_10_address0 = zext_ln180_fu_716_p1;
assign d_weights3_10_ce0 = d_weights3_10_ce0_local;
assign d_weights3_11_address0 = zext_ln180_fu_716_p1;
assign d_weights3_11_ce0 = d_weights3_11_ce0_local;
assign d_weights3_12_address0 = zext_ln180_fu_716_p1;
assign d_weights3_12_ce0 = d_weights3_12_ce0_local;
assign d_weights3_13_address0 = zext_ln180_fu_716_p1;
assign d_weights3_13_ce0 = d_weights3_13_ce0_local;
assign d_weights3_14_address0 = zext_ln180_fu_716_p1;
assign d_weights3_14_ce0 = d_weights3_14_ce0_local;
assign d_weights3_15_address0 = zext_ln180_fu_716_p1;
assign d_weights3_15_ce0 = d_weights3_15_ce0_local;
assign d_weights3_1_address0 = zext_ln180_fu_716_p1;
assign d_weights3_1_ce0 = d_weights3_1_ce0_local;
assign d_weights3_2_address0 = zext_ln180_fu_716_p1;
assign d_weights3_2_ce0 = d_weights3_2_ce0_local;
assign d_weights3_3_address0 = zext_ln180_fu_716_p1;
assign d_weights3_3_ce0 = d_weights3_3_ce0_local;
assign d_weights3_4_address0 = zext_ln180_fu_716_p1;
assign d_weights3_4_ce0 = d_weights3_4_ce0_local;
assign d_weights3_5_address0 = zext_ln180_fu_716_p1;
assign d_weights3_5_ce0 = d_weights3_5_ce0_local;
assign d_weights3_6_address0 = zext_ln180_fu_716_p1;
assign d_weights3_6_ce0 = d_weights3_6_ce0_local;
assign d_weights3_7_address0 = zext_ln180_fu_716_p1;
assign d_weights3_7_ce0 = d_weights3_7_ce0_local;
assign d_weights3_8_address0 = zext_ln180_fu_716_p1;
assign d_weights3_8_ce0 = d_weights3_8_ce0_local;
assign d_weights3_9_address0 = zext_ln180_fu_716_p1;
assign d_weights3_9_ce0 = d_weights3_9_ce0_local;
assign grp_fu_1155_p_ce = 1'b1;
assign grp_fu_1155_p_din0 = grp_fu_595_p0;
assign grp_fu_1155_p_din1 = grp_fu_595_p1;
assign grp_fu_1155_p_opcode = grp_fu_595_opcode;
assign grp_fu_1159_p_ce = 1'b1;
assign grp_fu_1159_p_din0 = grp_fu_599_p0;
assign grp_fu_1159_p_din1 = grp_fu_599_p1;
assign icmp_ln178_fu_627_p2 = ((ap_sig_allocacmp_indvar_flatten27_load == 8'd192) ? 1'b1 : 1'b0);
assign icmp_ln179_fu_645_p2 = ((ap_sig_allocacmp_j_load == 2'd3) ? 1'b1 : 1'b0);
assign lshr_ln5_fu_706_p4 = {{add_ln180_fu_696_p2[7:4]}};
assign norm_7_out = norm_fu_156;
assign p_shl_fu_680_p3 = {{trunc_ln179_reg_1042}, {2'd0}};
assign select_ln121_fu_651_p3 = ((icmp_ln179_fu_645_p2[0:0] == 1'b1) ? 2'd0 : ap_sig_allocacmp_j_load);
assign select_ln178_fu_665_p3 = ((icmp_ln179_fu_645_p2[0:0] == 1'b1) ? add_ln178_1_fu_659_p2 : ap_sig_allocacmp_i_load);
assign sub_ln179_fu_687_p2 = (p_shl_fu_680_p3 - zext_ln179_fu_677_p1);
assign tmp_1_fu_889_p10 = weights3_4_q0;
assign tmp_1_fu_889_p12 = weights3_5_q0;
assign tmp_1_fu_889_p14 = weights3_6_q0;
assign tmp_1_fu_889_p16 = weights3_7_q0;
assign tmp_1_fu_889_p18 = weights3_8_q0;
assign tmp_1_fu_889_p2 = weights3_0_q0;
assign tmp_1_fu_889_p20 = weights3_9_q0;
assign tmp_1_fu_889_p22 = weights3_10_q0;
assign tmp_1_fu_889_p24 = weights3_11_q0;
assign tmp_1_fu_889_p26 = weights3_12_q0;
assign tmp_1_fu_889_p28 = weights3_13_q0;
assign tmp_1_fu_889_p30 = weights3_14_q0;
assign tmp_1_fu_889_p32 = weights3_15_q0;
assign tmp_1_fu_889_p33 = 'bx;
assign tmp_1_fu_889_p4 = weights3_1_q0;
assign tmp_1_fu_889_p6 = weights3_2_q0;
assign tmp_1_fu_889_p8 = weights3_3_q0;
assign tmp_s_fu_736_p33 = 'bx;
assign trunc_ln179_fu_673_p1 = select_ln178_fu_665_p3[5:0];
assign trunc_ln180_fu_702_p1 = add_ln180_fu_696_p2[3:0];
assign weights3_0_address0 = weights3_0_address0_local;
assign weights3_0_ce0 = weights3_0_ce0_local;
assign weights3_0_d0 = bitcast_ln180_16_fu_960_p1;
assign weights3_0_we0 = weights3_0_we0_local;
assign weights3_10_address0 = weights3_10_address0_local;
assign weights3_10_ce0 = weights3_10_ce0_local;
assign weights3_10_d0 = bitcast_ln180_16_fu_960_p1;
assign weights3_10_we0 = weights3_10_we0_local;
assign weights3_11_address0 = weights3_11_address0_local;
assign weights3_11_ce0 = weights3_11_ce0_local;
assign weights3_11_d0 = bitcast_ln180_16_fu_960_p1;
assign weights3_11_we0 = weights3_11_we0_local;
assign weights3_12_address0 = weights3_12_address0_local;
assign weights3_12_ce0 = weights3_12_ce0_local;
assign weights3_12_d0 = bitcast_ln180_16_fu_960_p1;
assign weights3_12_we0 = weights3_12_we0_local;
assign weights3_13_address0 = weights3_13_address0_local;
assign weights3_13_ce0 = weights3_13_ce0_local;
assign weights3_13_d0 = bitcast_ln180_16_fu_960_p1;
assign weights3_13_we0 = weights3_13_we0_local;
assign weights3_14_address0 = weights3_14_address0_local;
assign weights3_14_ce0 = weights3_14_ce0_local;
assign weights3_14_d0 = bitcast_ln180_16_fu_960_p1;
assign weights3_14_we0 = weights3_14_we0_local;
assign weights3_15_address0 = weights3_15_address0_local;
assign weights3_15_ce0 = weights3_15_ce0_local;
assign weights3_15_d0 = bitcast_ln180_16_fu_960_p1;
assign weights3_15_we0 = weights3_15_we0_local;
assign weights3_1_address0 = weights3_1_address0_local;
assign weights3_1_ce0 = weights3_1_ce0_local;
assign weights3_1_d0 = bitcast_ln180_16_fu_960_p1;
assign weights3_1_we0 = weights3_1_we0_local;
assign weights3_2_address0 = weights3_2_address0_local;
assign weights3_2_ce0 = weights3_2_ce0_local;
assign weights3_2_d0 = bitcast_ln180_16_fu_960_p1;
assign weights3_2_we0 = weights3_2_we0_local;
assign weights3_3_address0 = weights3_3_address0_local;
assign weights3_3_ce0 = weights3_3_ce0_local;
assign weights3_3_d0 = bitcast_ln180_16_fu_960_p1;
assign weights3_3_we0 = weights3_3_we0_local;
assign weights3_4_address0 = weights3_4_address0_local;
assign weights3_4_ce0 = weights3_4_ce0_local;
assign weights3_4_d0 = bitcast_ln180_16_fu_960_p1;
assign weights3_4_we0 = weights3_4_we0_local;
assign weights3_5_address0 = weights3_5_address0_local;
assign weights3_5_ce0 = weights3_5_ce0_local;
assign weights3_5_d0 = bitcast_ln180_16_fu_960_p1;
assign weights3_5_we0 = weights3_5_we0_local;
assign weights3_6_address0 = weights3_6_address0_local;
assign weights3_6_ce0 = weights3_6_ce0_local;
assign weights3_6_d0 = bitcast_ln180_16_fu_960_p1;
assign weights3_6_we0 = weights3_6_we0_local;
assign weights3_7_address0 = weights3_7_address0_local;
assign weights3_7_ce0 = weights3_7_ce0_local;
assign weights3_7_d0 = bitcast_ln180_16_fu_960_p1;
assign weights3_7_we0 = weights3_7_we0_local;
assign weights3_8_address0 = weights3_8_address0_local;
assign weights3_8_ce0 = weights3_8_ce0_local;
assign weights3_8_d0 = bitcast_ln180_16_fu_960_p1;
assign weights3_8_we0 = weights3_8_we0_local;
assign weights3_9_address0 = weights3_9_address0_local;
assign weights3_9_ce0 = weights3_9_ce0_local;
assign weights3_9_d0 = bitcast_ln180_16_fu_960_p1;
assign weights3_9_we0 = weights3_9_we0_local;
assign zext_ln179_1_fu_693_p1 = select_ln121_reg_1030;
assign zext_ln179_fu_677_p1 = select_ln178_reg_1036;
assign zext_ln180_fu_716_p1 = lshr_ln5_fu_706_p4;
always @ (posedge ap_clk) begin
    zext_ln180_reg_1053[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end
endmodule 
