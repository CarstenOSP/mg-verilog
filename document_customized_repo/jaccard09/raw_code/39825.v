module backprop_update_weights_45_46_1_Pipeline_up_weight_loop2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,biases1_15_address0,biases1_15_ce0,biases1_15_we0,biases1_15_d0,biases1_15_q0,biases1_14_address0,biases1_14_ce0,biases1_14_we0,biases1_14_d0,biases1_14_q0,biases1_13_address0,biases1_13_ce0,biases1_13_we0,biases1_13_d0,biases1_13_q0,biases1_12_address0,biases1_12_ce0,biases1_12_we0,biases1_12_d0,biases1_12_q0,biases1_11_address0,biases1_11_ce0,biases1_11_we0,biases1_11_d0,biases1_11_q0,biases1_10_address0,biases1_10_ce0,biases1_10_we0,biases1_10_d0,biases1_10_q0,biases1_9_address0,biases1_9_ce0,biases1_9_we0,biases1_9_d0,biases1_9_q0,biases1_8_address0,biases1_8_ce0,biases1_8_we0,biases1_8_d0,biases1_8_q0,biases1_7_address0,biases1_7_ce0,biases1_7_we0,biases1_7_d0,biases1_7_q0,biases1_6_address0,biases1_6_ce0,biases1_6_we0,biases1_6_d0,biases1_6_q0,biases1_5_address0,biases1_5_ce0,biases1_5_we0,biases1_5_d0,biases1_5_q0,biases1_4_address0,biases1_4_ce0,biases1_4_we0,biases1_4_d0,biases1_4_q0,biases1_3_address0,biases1_3_ce0,biases1_3_we0,biases1_3_d0,biases1_3_q0,biases1_2_address0,biases1_2_ce0,biases1_2_we0,biases1_2_d0,biases1_2_q0,biases1_1_address0,biases1_1_ce0,biases1_1_we0,biases1_1_d0,biases1_1_q0,biases1_0_address0,biases1_0_ce0,biases1_0_we0,biases1_0_d0,biases1_0_q0,d_biases1_0_address0,d_biases1_0_ce0,d_biases1_0_q0,d_biases1_1_address0,d_biases1_1_ce0,d_biases1_1_q0,d_biases1_2_address0,d_biases1_2_ce0,d_biases1_2_q0,d_biases1_3_address0,d_biases1_3_ce0,d_biases1_3_q0,d_biases1_4_address0,d_biases1_4_ce0,d_biases1_4_q0,d_biases1_5_address0,d_biases1_5_ce0,d_biases1_5_q0,d_biases1_6_address0,d_biases1_6_ce0,d_biases1_6_q0,d_biases1_7_address0,d_biases1_7_ce0,d_biases1_7_q0,d_biases1_8_address0,d_biases1_8_ce0,d_biases1_8_q0,d_biases1_9_address0,d_biases1_9_ce0,d_biases1_9_q0,d_biases1_10_address0,d_biases1_10_ce0,d_biases1_10_q0,d_biases1_11_address0,d_biases1_11_ce0,d_biases1_11_q0,d_biases1_12_address0,d_biases1_12_ce0,d_biases1_12_q0,d_biases1_13_address0,d_biases1_13_ce0,d_biases1_13_q0,d_biases1_14_address0,d_biases1_14_ce0,d_biases1_14_q0,d_biases1_15_address0,d_biases1_15_ce0,d_biases1_15_q0,bias_norm_1_out,bias_norm_1_out_ap_vld,grp_fu_1127_p_din0,grp_fu_1127_p_din1,grp_fu_1127_p_opcode,grp_fu_1127_p_dout0,grp_fu_1127_p_ce,grp_fu_1131_p_din0,grp_fu_1131_p_din1,grp_fu_1131_p_dout0,grp_fu_1131_p_ce); 
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
output  [1:0] biases1_15_address0;
output   biases1_15_ce0;
output   biases1_15_we0;
output  [63:0] biases1_15_d0;
input  [63:0] biases1_15_q0;
output  [1:0] biases1_14_address0;
output   biases1_14_ce0;
output   biases1_14_we0;
output  [63:0] biases1_14_d0;
input  [63:0] biases1_14_q0;
output  [1:0] biases1_13_address0;
output   biases1_13_ce0;
output   biases1_13_we0;
output  [63:0] biases1_13_d0;
input  [63:0] biases1_13_q0;
output  [1:0] biases1_12_address0;
output   biases1_12_ce0;
output   biases1_12_we0;
output  [63:0] biases1_12_d0;
input  [63:0] biases1_12_q0;
output  [1:0] biases1_11_address0;
output   biases1_11_ce0;
output   biases1_11_we0;
output  [63:0] biases1_11_d0;
input  [63:0] biases1_11_q0;
output  [1:0] biases1_10_address0;
output   biases1_10_ce0;
output   biases1_10_we0;
output  [63:0] biases1_10_d0;
input  [63:0] biases1_10_q0;
output  [1:0] biases1_9_address0;
output   biases1_9_ce0;
output   biases1_9_we0;
output  [63:0] biases1_9_d0;
input  [63:0] biases1_9_q0;
output  [1:0] biases1_8_address0;
output   biases1_8_ce0;
output   biases1_8_we0;
output  [63:0] biases1_8_d0;
input  [63:0] biases1_8_q0;
output  [1:0] biases1_7_address0;
output   biases1_7_ce0;
output   biases1_7_we0;
output  [63:0] biases1_7_d0;
input  [63:0] biases1_7_q0;
output  [1:0] biases1_6_address0;
output   biases1_6_ce0;
output   biases1_6_we0;
output  [63:0] biases1_6_d0;
input  [63:0] biases1_6_q0;
output  [1:0] biases1_5_address0;
output   biases1_5_ce0;
output   biases1_5_we0;
output  [63:0] biases1_5_d0;
input  [63:0] biases1_5_q0;
output  [1:0] biases1_4_address0;
output   biases1_4_ce0;
output   biases1_4_we0;
output  [63:0] biases1_4_d0;
input  [63:0] biases1_4_q0;
output  [1:0] biases1_3_address0;
output   biases1_3_ce0;
output   biases1_3_we0;
output  [63:0] biases1_3_d0;
input  [63:0] biases1_3_q0;
output  [1:0] biases1_2_address0;
output   biases1_2_ce0;
output   biases1_2_we0;
output  [63:0] biases1_2_d0;
input  [63:0] biases1_2_q0;
output  [1:0] biases1_1_address0;
output   biases1_1_ce0;
output   biases1_1_we0;
output  [63:0] biases1_1_d0;
input  [63:0] biases1_1_q0;
output  [1:0] biases1_0_address0;
output   biases1_0_ce0;
output   biases1_0_we0;
output  [63:0] biases1_0_d0;
input  [63:0] biases1_0_q0;
output  [1:0] d_biases1_0_address0;
output   d_biases1_0_ce0;
input  [63:0] d_biases1_0_q0;
output  [1:0] d_biases1_1_address0;
output   d_biases1_1_ce0;
input  [63:0] d_biases1_1_q0;
output  [1:0] d_biases1_2_address0;
output   d_biases1_2_ce0;
input  [63:0] d_biases1_2_q0;
output  [1:0] d_biases1_3_address0;
output   d_biases1_3_ce0;
input  [63:0] d_biases1_3_q0;
output  [1:0] d_biases1_4_address0;
output   d_biases1_4_ce0;
input  [63:0] d_biases1_4_q0;
output  [1:0] d_biases1_5_address0;
output   d_biases1_5_ce0;
input  [63:0] d_biases1_5_q0;
output  [1:0] d_biases1_6_address0;
output   d_biases1_6_ce0;
input  [63:0] d_biases1_6_q0;
output  [1:0] d_biases1_7_address0;
output   d_biases1_7_ce0;
input  [63:0] d_biases1_7_q0;
output  [1:0] d_biases1_8_address0;
output   d_biases1_8_ce0;
input  [63:0] d_biases1_8_q0;
output  [1:0] d_biases1_9_address0;
output   d_biases1_9_ce0;
input  [63:0] d_biases1_9_q0;
output  [1:0] d_biases1_10_address0;
output   d_biases1_10_ce0;
input  [63:0] d_biases1_10_q0;
output  [1:0] d_biases1_11_address0;
output   d_biases1_11_ce0;
input  [63:0] d_biases1_11_q0;
output  [1:0] d_biases1_12_address0;
output   d_biases1_12_ce0;
input  [63:0] d_biases1_12_q0;
output  [1:0] d_biases1_13_address0;
output   d_biases1_13_ce0;
input  [63:0] d_biases1_13_q0;
output  [1:0] d_biases1_14_address0;
output   d_biases1_14_ce0;
input  [63:0] d_biases1_14_q0;
output  [1:0] d_biases1_15_address0;
output   d_biases1_15_ce0;
input  [63:0] d_biases1_15_q0;
output  [63:0] bias_norm_1_out;
output   bias_norm_1_out_ap_vld;
output  [63:0] grp_fu_1127_p_din0;
output  [63:0] grp_fu_1127_p_din1;
output  [1:0] grp_fu_1127_p_opcode;
input  [63:0] grp_fu_1127_p_dout0;
output   grp_fu_1127_p_ce;
output  [63:0] grp_fu_1131_p_din0;
output  [63:0] grp_fu_1131_p_din1;
input  [63:0] grp_fu_1131_p_dout0;
output   grp_fu_1131_p_ce;
reg ap_idle;
reg bias_norm_1_out_ap_vld;
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
reg   [0:0] icmp_ln132_reg_900;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln132_fu_581_p2;
reg   [0:0] icmp_ln132_reg_900_pp0_iter1_reg;
reg   [0:0] icmp_ln132_reg_900_pp0_iter2_reg;
reg   [0:0] icmp_ln132_reg_900_pp0_iter3_reg;
wire   [6:0] add_ln132_fu_587_p2;
reg   [6:0] add_ln132_reg_904;
wire   [3:0] trunc_ln132_fu_593_p1;
reg   [3:0] trunc_ln132_reg_909;
reg   [3:0] trunc_ln132_reg_909_pp0_iter1_reg;
reg   [3:0] trunc_ln132_reg_909_pp0_iter2_reg;
reg   [1:0] biases1_0_addr_reg_995;
reg   [1:0] biases1_0_addr_reg_995_pp0_iter1_reg;
reg   [1:0] biases1_0_addr_reg_995_pp0_iter2_reg;
reg   [1:0] biases1_1_addr_reg_1000;
reg   [1:0] biases1_1_addr_reg_1000_pp0_iter1_reg;
reg   [1:0] biases1_1_addr_reg_1000_pp0_iter2_reg;
reg   [1:0] biases1_2_addr_reg_1005;
reg   [1:0] biases1_2_addr_reg_1005_pp0_iter1_reg;
reg   [1:0] biases1_2_addr_reg_1005_pp0_iter2_reg;
reg   [1:0] biases1_3_addr_reg_1010;
reg   [1:0] biases1_3_addr_reg_1010_pp0_iter1_reg;
reg   [1:0] biases1_3_addr_reg_1010_pp0_iter2_reg;
reg   [1:0] biases1_4_addr_reg_1015;
reg   [1:0] biases1_4_addr_reg_1015_pp0_iter1_reg;
reg   [1:0] biases1_4_addr_reg_1015_pp0_iter2_reg;
reg   [1:0] biases1_5_addr_reg_1020;
reg   [1:0] biases1_5_addr_reg_1020_pp0_iter1_reg;
reg   [1:0] biases1_5_addr_reg_1020_pp0_iter2_reg;
reg   [1:0] biases1_6_addr_reg_1025;
reg   [1:0] biases1_6_addr_reg_1025_pp0_iter1_reg;
reg   [1:0] biases1_6_addr_reg_1025_pp0_iter2_reg;
reg   [1:0] biases1_7_addr_reg_1030;
reg   [1:0] biases1_7_addr_reg_1030_pp0_iter1_reg;
reg   [1:0] biases1_7_addr_reg_1030_pp0_iter2_reg;
reg   [1:0] biases1_8_addr_reg_1035;
reg   [1:0] biases1_8_addr_reg_1035_pp0_iter1_reg;
reg   [1:0] biases1_8_addr_reg_1035_pp0_iter2_reg;
reg   [1:0] biases1_9_addr_reg_1040;
reg   [1:0] biases1_9_addr_reg_1040_pp0_iter1_reg;
reg   [1:0] biases1_9_addr_reg_1040_pp0_iter2_reg;
reg   [1:0] biases1_10_addr_reg_1045;
reg   [1:0] biases1_10_addr_reg_1045_pp0_iter1_reg;
reg   [1:0] biases1_10_addr_reg_1045_pp0_iter2_reg;
reg   [1:0] biases1_11_addr_reg_1050;
reg   [1:0] biases1_11_addr_reg_1050_pp0_iter1_reg;
reg   [1:0] biases1_11_addr_reg_1050_pp0_iter2_reg;
reg   [1:0] biases1_12_addr_reg_1055;
reg   [1:0] biases1_12_addr_reg_1055_pp0_iter1_reg;
reg   [1:0] biases1_12_addr_reg_1055_pp0_iter2_reg;
reg   [1:0] biases1_13_addr_reg_1060;
reg   [1:0] biases1_13_addr_reg_1060_pp0_iter1_reg;
reg   [1:0] biases1_13_addr_reg_1060_pp0_iter2_reg;
reg   [1:0] biases1_14_addr_reg_1065;
reg   [1:0] biases1_14_addr_reg_1065_pp0_iter1_reg;
reg   [1:0] biases1_14_addr_reg_1065_pp0_iter2_reg;
reg   [1:0] biases1_15_addr_reg_1070;
reg   [1:0] biases1_15_addr_reg_1070_pp0_iter1_reg;
reg   [1:0] biases1_15_addr_reg_1070_pp0_iter2_reg;
wire   [63:0] tmp_fu_643_p35;
reg   [63:0] tmp_reg_1075;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] mul_reg_1080;
wire   [63:0] tmp_1_fu_782_p35;
reg   [63:0] tmp_1_reg_1085;
reg   [63:0] sub1_reg_1090;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] mul1_reg_1097;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage3_subdone;
wire   [63:0] zext_ln121_fu_607_p1;
wire    ap_block_pp0_stage0;
reg   [63:0] bias_norm_1_fu_144;
reg   [63:0] ap_sig_allocacmp_bias_norm_1_load;
wire    ap_block_pp0_stage3;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage6_11001;
reg    ap_condition_exit_pp0_iter3_stage3;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [6:0] i_1_fu_148;
reg   [6:0] ap_sig_allocacmp_i;
wire    ap_block_pp0_stage3_01001;
reg    d_biases1_0_ce0_local;
reg    d_biases1_1_ce0_local;
reg    d_biases1_2_ce0_local;
reg    d_biases1_3_ce0_local;
reg    d_biases1_4_ce0_local;
reg    d_biases1_5_ce0_local;
reg    d_biases1_6_ce0_local;
reg    d_biases1_7_ce0_local;
reg    d_biases1_8_ce0_local;
reg    d_biases1_9_ce0_local;
reg    d_biases1_10_ce0_local;
reg    d_biases1_11_ce0_local;
reg    d_biases1_12_ce0_local;
reg    d_biases1_13_ce0_local;
reg    d_biases1_14_ce0_local;
reg    d_biases1_15_ce0_local;
reg    biases1_0_ce0_local;
reg   [1:0] biases1_0_address0_local;
reg    biases1_0_we0_local;
wire   [63:0] bitcast_ln133_16_fu_853_p1;
reg    biases1_1_ce0_local;
reg   [1:0] biases1_1_address0_local;
reg    biases1_1_we0_local;
reg    biases1_2_ce0_local;
reg   [1:0] biases1_2_address0_local;
reg    biases1_2_we0_local;
reg    biases1_3_ce0_local;
reg   [1:0] biases1_3_address0_local;
reg    biases1_3_we0_local;
reg    biases1_4_ce0_local;
reg   [1:0] biases1_4_address0_local;
reg    biases1_4_we0_local;
reg    biases1_5_ce0_local;
reg   [1:0] biases1_5_address0_local;
reg    biases1_5_we0_local;
reg    biases1_6_ce0_local;
reg   [1:0] biases1_6_address0_local;
reg    biases1_6_we0_local;
reg    biases1_7_ce0_local;
reg   [1:0] biases1_7_address0_local;
reg    biases1_7_we0_local;
reg    biases1_8_ce0_local;
reg   [1:0] biases1_8_address0_local;
reg    biases1_8_we0_local;
reg    biases1_9_ce0_local;
reg   [1:0] biases1_9_address0_local;
reg    biases1_9_we0_local;
reg    biases1_10_ce0_local;
reg   [1:0] biases1_10_address0_local;
reg    biases1_10_we0_local;
reg    biases1_11_ce0_local;
reg   [1:0] biases1_11_address0_local;
reg    biases1_11_we0_local;
reg    biases1_12_ce0_local;
reg   [1:0] biases1_12_address0_local;
reg    biases1_12_we0_local;
reg    biases1_13_ce0_local;
reg   [1:0] biases1_13_address0_local;
reg    biases1_13_we0_local;
reg    biases1_14_ce0_local;
reg   [1:0] biases1_14_address0_local;
reg    biases1_14_we0_local;
reg    biases1_15_ce0_local;
reg   [1:0] biases1_15_address0_local;
reg    biases1_15_we0_local;
reg   [63:0] grp_fu_559_p0;
reg   [63:0] grp_fu_559_p1;
wire    ap_block_pp0_stage2;
reg   [63:0] grp_fu_563_p0;
reg   [63:0] grp_fu_563_p1;
wire   [1:0] lshr_ln1_fu_597_p4;
wire   [63:0] tmp_fu_643_p33;
wire    ap_block_pp0_stage1;
wire   [63:0] tmp_1_fu_782_p2;
wire   [63:0] tmp_1_fu_782_p4;
wire   [63:0] tmp_1_fu_782_p6;
wire   [63:0] tmp_1_fu_782_p8;
wire   [63:0] tmp_1_fu_782_p10;
wire   [63:0] tmp_1_fu_782_p12;
wire   [63:0] tmp_1_fu_782_p14;
wire   [63:0] tmp_1_fu_782_p16;
wire   [63:0] tmp_1_fu_782_p18;
wire   [63:0] tmp_1_fu_782_p20;
wire   [63:0] tmp_1_fu_782_p22;
wire   [63:0] tmp_1_fu_782_p24;
wire   [63:0] tmp_1_fu_782_p26;
wire   [63:0] tmp_1_fu_782_p28;
wire   [63:0] tmp_1_fu_782_p30;
wire   [63:0] tmp_1_fu_782_p32;
wire   [63:0] tmp_1_fu_782_p33;
reg   [1:0] grp_fu_559_opcode;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage2_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [6:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [3:0] tmp_fu_643_p1;
wire   [3:0] tmp_fu_643_p3;
wire   [3:0] tmp_fu_643_p5;
wire   [3:0] tmp_fu_643_p7;
wire   [3:0] tmp_fu_643_p9;
wire   [3:0] tmp_fu_643_p11;
wire   [3:0] tmp_fu_643_p13;
wire   [3:0] tmp_fu_643_p15;
wire  signed [3:0] tmp_fu_643_p17;
wire  signed [3:0] tmp_fu_643_p19;
wire  signed [3:0] tmp_fu_643_p21;
wire  signed [3:0] tmp_fu_643_p23;
wire  signed [3:0] tmp_fu_643_p25;
wire  signed [3:0] tmp_fu_643_p27;
wire  signed [3:0] tmp_fu_643_p29;
wire  signed [3:0] tmp_fu_643_p31;
wire   [3:0] tmp_1_fu_782_p1;
wire   [3:0] tmp_1_fu_782_p3;
wire   [3:0] tmp_1_fu_782_p5;
wire   [3:0] tmp_1_fu_782_p7;
wire   [3:0] tmp_1_fu_782_p9;
wire   [3:0] tmp_1_fu_782_p11;
wire   [3:0] tmp_1_fu_782_p13;
wire   [3:0] tmp_1_fu_782_p15;
wire  signed [3:0] tmp_1_fu_782_p17;
wire  signed [3:0] tmp_1_fu_782_p19;
wire  signed [3:0] tmp_1_fu_782_p21;
wire  signed [3:0] tmp_1_fu_782_p23;
wire  signed [3:0] tmp_1_fu_782_p25;
wire  signed [3:0] tmp_1_fu_782_p27;
wire  signed [3:0] tmp_1_fu_782_p29;
wire  signed [3:0] tmp_1_fu_782_p31;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 bias_norm_1_fu_144 = 64'd0;
#0 i_1_fu_148 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.CASE13( 4'hD ),.din13_WIDTH( 64 ),.CASE14( 4'hE ),.din14_WIDTH( 64 ),.CASE15( 4'hF ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U902(.din0(d_biases1_0_q0),.din1(d_biases1_1_q0),.din2(d_biases1_2_q0),.din3(d_biases1_3_q0),.din4(d_biases1_4_q0),.din5(d_biases1_5_q0),.din6(d_biases1_6_q0),.din7(d_biases1_7_q0),.din8(d_biases1_8_q0),.din9(d_biases1_9_q0),.din10(d_biases1_10_q0),.din11(d_biases1_11_q0),.din12(d_biases1_12_q0),.din13(d_biases1_13_q0),.din14(d_biases1_14_q0),.din15(d_biases1_15_q0),.def(tmp_fu_643_p33),.sel(trunc_ln132_reg_909),.dout(tmp_fu_643_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.CASE13( 4'hD ),.din13_WIDTH( 64 ),.CASE14( 4'hE ),.din14_WIDTH( 64 ),.CASE15( 4'hF ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U903(.din0(tmp_1_fu_782_p2),.din1(tmp_1_fu_782_p4),.din2(tmp_1_fu_782_p6),.din3(tmp_1_fu_782_p8),.din4(tmp_1_fu_782_p10),.din5(tmp_1_fu_782_p12),.din6(tmp_1_fu_782_p14),.din7(tmp_1_fu_782_p16),.din8(tmp_1_fu_782_p18),.din9(tmp_1_fu_782_p20),.din10(tmp_1_fu_782_p22),.din11(tmp_1_fu_782_p24),.din12(tmp_1_fu_782_p26),.din13(tmp_1_fu_782_p28),.din14(tmp_1_fu_782_p30),.din15(tmp_1_fu_782_p32),.def(tmp_1_fu_782_p33),.sel(trunc_ln132_reg_909_pp0_iter1_reg),.dout(tmp_1_fu_782_p35));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bias_norm_1_fu_144 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bias_norm_1_fu_144 <= grp_fu_1127_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_1_fu_148 <= 7'd0;
    end else if (((icmp_ln132_reg_900 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_1_fu_148 <= add_ln132_reg_904;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln132_reg_904 <= add_ln132_fu_587_p2;
        biases1_0_addr_reg_995 <= zext_ln121_fu_607_p1;
        biases1_0_addr_reg_995_pp0_iter1_reg <= biases1_0_addr_reg_995;
        biases1_0_addr_reg_995_pp0_iter2_reg <= biases1_0_addr_reg_995_pp0_iter1_reg;
        biases1_10_addr_reg_1045 <= zext_ln121_fu_607_p1;
        biases1_10_addr_reg_1045_pp0_iter1_reg <= biases1_10_addr_reg_1045;
        biases1_10_addr_reg_1045_pp0_iter2_reg <= biases1_10_addr_reg_1045_pp0_iter1_reg;
        biases1_11_addr_reg_1050 <= zext_ln121_fu_607_p1;
        biases1_11_addr_reg_1050_pp0_iter1_reg <= biases1_11_addr_reg_1050;
        biases1_11_addr_reg_1050_pp0_iter2_reg <= biases1_11_addr_reg_1050_pp0_iter1_reg;
        biases1_12_addr_reg_1055 <= zext_ln121_fu_607_p1;
        biases1_12_addr_reg_1055_pp0_iter1_reg <= biases1_12_addr_reg_1055;
        biases1_12_addr_reg_1055_pp0_iter2_reg <= biases1_12_addr_reg_1055_pp0_iter1_reg;
        biases1_13_addr_reg_1060 <= zext_ln121_fu_607_p1;
        biases1_13_addr_reg_1060_pp0_iter1_reg <= biases1_13_addr_reg_1060;
        biases1_13_addr_reg_1060_pp0_iter2_reg <= biases1_13_addr_reg_1060_pp0_iter1_reg;
        biases1_14_addr_reg_1065 <= zext_ln121_fu_607_p1;
        biases1_14_addr_reg_1065_pp0_iter1_reg <= biases1_14_addr_reg_1065;
        biases1_14_addr_reg_1065_pp0_iter2_reg <= biases1_14_addr_reg_1065_pp0_iter1_reg;
        biases1_15_addr_reg_1070 <= zext_ln121_fu_607_p1;
        biases1_15_addr_reg_1070_pp0_iter1_reg <= biases1_15_addr_reg_1070;
        biases1_15_addr_reg_1070_pp0_iter2_reg <= biases1_15_addr_reg_1070_pp0_iter1_reg;
        biases1_1_addr_reg_1000 <= zext_ln121_fu_607_p1;
        biases1_1_addr_reg_1000_pp0_iter1_reg <= biases1_1_addr_reg_1000;
        biases1_1_addr_reg_1000_pp0_iter2_reg <= biases1_1_addr_reg_1000_pp0_iter1_reg;
        biases1_2_addr_reg_1005 <= zext_ln121_fu_607_p1;
        biases1_2_addr_reg_1005_pp0_iter1_reg <= biases1_2_addr_reg_1005;
        biases1_2_addr_reg_1005_pp0_iter2_reg <= biases1_2_addr_reg_1005_pp0_iter1_reg;
        biases1_3_addr_reg_1010 <= zext_ln121_fu_607_p1;
        biases1_3_addr_reg_1010_pp0_iter1_reg <= biases1_3_addr_reg_1010;
        biases1_3_addr_reg_1010_pp0_iter2_reg <= biases1_3_addr_reg_1010_pp0_iter1_reg;
        biases1_4_addr_reg_1015 <= zext_ln121_fu_607_p1;
        biases1_4_addr_reg_1015_pp0_iter1_reg <= biases1_4_addr_reg_1015;
        biases1_4_addr_reg_1015_pp0_iter2_reg <= biases1_4_addr_reg_1015_pp0_iter1_reg;
        biases1_5_addr_reg_1020 <= zext_ln121_fu_607_p1;
        biases1_5_addr_reg_1020_pp0_iter1_reg <= biases1_5_addr_reg_1020;
        biases1_5_addr_reg_1020_pp0_iter2_reg <= biases1_5_addr_reg_1020_pp0_iter1_reg;
        biases1_6_addr_reg_1025 <= zext_ln121_fu_607_p1;
        biases1_6_addr_reg_1025_pp0_iter1_reg <= biases1_6_addr_reg_1025;
        biases1_6_addr_reg_1025_pp0_iter2_reg <= biases1_6_addr_reg_1025_pp0_iter1_reg;
        biases1_7_addr_reg_1030 <= zext_ln121_fu_607_p1;
        biases1_7_addr_reg_1030_pp0_iter1_reg <= biases1_7_addr_reg_1030;
        biases1_7_addr_reg_1030_pp0_iter2_reg <= biases1_7_addr_reg_1030_pp0_iter1_reg;
        biases1_8_addr_reg_1035 <= zext_ln121_fu_607_p1;
        biases1_8_addr_reg_1035_pp0_iter1_reg <= biases1_8_addr_reg_1035;
        biases1_8_addr_reg_1035_pp0_iter2_reg <= biases1_8_addr_reg_1035_pp0_iter1_reg;
        biases1_9_addr_reg_1040 <= zext_ln121_fu_607_p1;
        biases1_9_addr_reg_1040_pp0_iter1_reg <= biases1_9_addr_reg_1040;
        biases1_9_addr_reg_1040_pp0_iter2_reg <= biases1_9_addr_reg_1040_pp0_iter1_reg;
        icmp_ln132_reg_900 <= icmp_ln132_fu_581_p2;
        icmp_ln132_reg_900_pp0_iter1_reg <= icmp_ln132_reg_900;
        icmp_ln132_reg_900_pp0_iter2_reg <= icmp_ln132_reg_900_pp0_iter1_reg;
        icmp_ln132_reg_900_pp0_iter3_reg <= icmp_ln132_reg_900_pp0_iter2_reg;
        trunc_ln132_reg_909 <= trunc_ln132_fu_593_p1;
        trunc_ln132_reg_909_pp0_iter1_reg <= trunc_ln132_reg_909;
        trunc_ln132_reg_909_pp0_iter2_reg <= trunc_ln132_reg_909_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul1_reg_1097 <= grp_fu_1131_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_reg_1080 <= grp_fu_1131_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sub1_reg_1090 <= grp_fu_1127_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_1_reg_1085 <= tmp_1_fu_782_p35;
        tmp_reg_1075 <= tmp_fu_643_p35;
    end
end
always @ (*) begin
    if (((icmp_ln132_reg_900 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln132_reg_900_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter3_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_sig_allocacmp_bias_norm_1_load = grp_fu_1127_p_dout0;
    end else begin
        ap_sig_allocacmp_bias_norm_1_load = bias_norm_1_fu_144;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i = 7'd0;
    end else begin
        ap_sig_allocacmp_i = i_1_fu_148;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln132_reg_900_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bias_norm_1_out_ap_vld = 1'b1;
    end else begin
        bias_norm_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases1_0_address0_local = biases1_0_addr_reg_995_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_0_address0_local = biases1_0_addr_reg_995;
    end else begin
        biases1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases1_0_ce0_local = 1'b1;
    end else begin
        biases1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln132_reg_909_pp0_iter2_reg == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases1_0_we0_local = 1'b1;
    end else begin
        biases1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases1_10_address0_local = biases1_10_addr_reg_1045_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_10_address0_local = biases1_10_addr_reg_1045;
    end else begin
        biases1_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases1_10_ce0_local = 1'b1;
    end else begin
        biases1_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln132_reg_909_pp0_iter2_reg == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases1_10_we0_local = 1'b1;
    end else begin
        biases1_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases1_11_address0_local = biases1_11_addr_reg_1050_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_11_address0_local = biases1_11_addr_reg_1050;
    end else begin
        biases1_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases1_11_ce0_local = 1'b1;
    end else begin
        biases1_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln132_reg_909_pp0_iter2_reg == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases1_11_we0_local = 1'b1;
    end else begin
        biases1_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases1_12_address0_local = biases1_12_addr_reg_1055_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_12_address0_local = biases1_12_addr_reg_1055;
    end else begin
        biases1_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases1_12_ce0_local = 1'b1;
    end else begin
        biases1_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln132_reg_909_pp0_iter2_reg == 4'd12) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases1_12_we0_local = 1'b1;
    end else begin
        biases1_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases1_13_address0_local = biases1_13_addr_reg_1060_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_13_address0_local = biases1_13_addr_reg_1060;
    end else begin
        biases1_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases1_13_ce0_local = 1'b1;
    end else begin
        biases1_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln132_reg_909_pp0_iter2_reg == 4'd13) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases1_13_we0_local = 1'b1;
    end else begin
        biases1_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases1_14_address0_local = biases1_14_addr_reg_1065_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_14_address0_local = biases1_14_addr_reg_1065;
    end else begin
        biases1_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases1_14_ce0_local = 1'b1;
    end else begin
        biases1_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln132_reg_909_pp0_iter2_reg == 4'd14) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases1_14_we0_local = 1'b1;
    end else begin
        biases1_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases1_15_address0_local = biases1_15_addr_reg_1070_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_15_address0_local = biases1_15_addr_reg_1070;
    end else begin
        biases1_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases1_15_ce0_local = 1'b1;
    end else begin
        biases1_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln132_reg_909_pp0_iter2_reg == 4'd15) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases1_15_we0_local = 1'b1;
    end else begin
        biases1_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases1_1_address0_local = biases1_1_addr_reg_1000_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_1_address0_local = biases1_1_addr_reg_1000;
    end else begin
        biases1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases1_1_ce0_local = 1'b1;
    end else begin
        biases1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln132_reg_909_pp0_iter2_reg == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases1_1_we0_local = 1'b1;
    end else begin
        biases1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases1_2_address0_local = biases1_2_addr_reg_1005_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_2_address0_local = biases1_2_addr_reg_1005;
    end else begin
        biases1_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases1_2_ce0_local = 1'b1;
    end else begin
        biases1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln132_reg_909_pp0_iter2_reg == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases1_2_we0_local = 1'b1;
    end else begin
        biases1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases1_3_address0_local = biases1_3_addr_reg_1010_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_3_address0_local = biases1_3_addr_reg_1010;
    end else begin
        biases1_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases1_3_ce0_local = 1'b1;
    end else begin
        biases1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln132_reg_909_pp0_iter2_reg == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases1_3_we0_local = 1'b1;
    end else begin
        biases1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases1_4_address0_local = biases1_4_addr_reg_1015_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_4_address0_local = biases1_4_addr_reg_1015;
    end else begin
        biases1_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases1_4_ce0_local = 1'b1;
    end else begin
        biases1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln132_reg_909_pp0_iter2_reg == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases1_4_we0_local = 1'b1;
    end else begin
        biases1_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases1_5_address0_local = biases1_5_addr_reg_1020_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_5_address0_local = biases1_5_addr_reg_1020;
    end else begin
        biases1_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases1_5_ce0_local = 1'b1;
    end else begin
        biases1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln132_reg_909_pp0_iter2_reg == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases1_5_we0_local = 1'b1;
    end else begin
        biases1_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases1_6_address0_local = biases1_6_addr_reg_1025_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_6_address0_local = biases1_6_addr_reg_1025;
    end else begin
        biases1_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases1_6_ce0_local = 1'b1;
    end else begin
        biases1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln132_reg_909_pp0_iter2_reg == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases1_6_we0_local = 1'b1;
    end else begin
        biases1_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases1_7_address0_local = biases1_7_addr_reg_1030_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_7_address0_local = biases1_7_addr_reg_1030;
    end else begin
        biases1_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases1_7_ce0_local = 1'b1;
    end else begin
        biases1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln132_reg_909_pp0_iter2_reg == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases1_7_we0_local = 1'b1;
    end else begin
        biases1_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases1_8_address0_local = biases1_8_addr_reg_1035_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_8_address0_local = biases1_8_addr_reg_1035;
    end else begin
        biases1_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases1_8_ce0_local = 1'b1;
    end else begin
        biases1_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln132_reg_909_pp0_iter2_reg == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases1_8_we0_local = 1'b1;
    end else begin
        biases1_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases1_9_address0_local = biases1_9_addr_reg_1040_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_9_address0_local = biases1_9_addr_reg_1040;
    end else begin
        biases1_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases1_9_ce0_local = 1'b1;
    end else begin
        biases1_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln132_reg_909_pp0_iter2_reg == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases1_9_we0_local = 1'b1;
    end else begin
        biases1_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases1_0_ce0_local = 1'b1;
    end else begin
        d_biases1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases1_10_ce0_local = 1'b1;
    end else begin
        d_biases1_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases1_11_ce0_local = 1'b1;
    end else begin
        d_biases1_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases1_12_ce0_local = 1'b1;
    end else begin
        d_biases1_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases1_13_ce0_local = 1'b1;
    end else begin
        d_biases1_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases1_14_ce0_local = 1'b1;
    end else begin
        d_biases1_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases1_15_ce0_local = 1'b1;
    end else begin
        d_biases1_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases1_1_ce0_local = 1'b1;
    end else begin
        d_biases1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases1_2_ce0_local = 1'b1;
    end else begin
        d_biases1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases1_3_ce0_local = 1'b1;
    end else begin
        d_biases1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases1_4_ce0_local = 1'b1;
    end else begin
        d_biases1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases1_5_ce0_local = 1'b1;
    end else begin
        d_biases1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases1_6_ce0_local = 1'b1;
    end else begin
        d_biases1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases1_7_ce0_local = 1'b1;
    end else begin
        d_biases1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases1_8_ce0_local = 1'b1;
    end else begin
        d_biases1_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases1_9_ce0_local = 1'b1;
    end else begin
        d_biases1_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_559_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_559_opcode = 2'd0;
    end else begin
        grp_fu_559_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_559_p0 = ap_sig_allocacmp_bias_norm_1_load;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_559_p0 = tmp_1_reg_1085;
    end else begin
        grp_fu_559_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_559_p1 = mul1_reg_1097;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_559_p1 = mul_reg_1080;
    end else begin
        grp_fu_559_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_563_p0 = sub1_reg_1090;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_563_p0 = tmp_reg_1075;
    end else begin
        grp_fu_563_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_563_p1 = sub1_reg_1090;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_563_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_563_p1 = 'bx;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage3))) begin
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
assign add_ln132_fu_587_p2 = (ap_sig_allocacmp_i + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign bias_norm_1_out = bias_norm_1_fu_144;
assign biases1_0_address0 = biases1_0_address0_local;
assign biases1_0_ce0 = biases1_0_ce0_local;
assign biases1_0_d0 = bitcast_ln133_16_fu_853_p1;
assign biases1_0_we0 = biases1_0_we0_local;
assign biases1_10_address0 = biases1_10_address0_local;
assign biases1_10_ce0 = biases1_10_ce0_local;
assign biases1_10_d0 = bitcast_ln133_16_fu_853_p1;
assign biases1_10_we0 = biases1_10_we0_local;
assign biases1_11_address0 = biases1_11_address0_local;
assign biases1_11_ce0 = biases1_11_ce0_local;
assign biases1_11_d0 = bitcast_ln133_16_fu_853_p1;
assign biases1_11_we0 = biases1_11_we0_local;
assign biases1_12_address0 = biases1_12_address0_local;
assign biases1_12_ce0 = biases1_12_ce0_local;
assign biases1_12_d0 = bitcast_ln133_16_fu_853_p1;
assign biases1_12_we0 = biases1_12_we0_local;
assign biases1_13_address0 = biases1_13_address0_local;
assign biases1_13_ce0 = biases1_13_ce0_local;
assign biases1_13_d0 = bitcast_ln133_16_fu_853_p1;
assign biases1_13_we0 = biases1_13_we0_local;
assign biases1_14_address0 = biases1_14_address0_local;
assign biases1_14_ce0 = biases1_14_ce0_local;
assign biases1_14_d0 = bitcast_ln133_16_fu_853_p1;
assign biases1_14_we0 = biases1_14_we0_local;
assign biases1_15_address0 = biases1_15_address0_local;
assign biases1_15_ce0 = biases1_15_ce0_local;
assign biases1_15_d0 = bitcast_ln133_16_fu_853_p1;
assign biases1_15_we0 = biases1_15_we0_local;
assign biases1_1_address0 = biases1_1_address0_local;
assign biases1_1_ce0 = biases1_1_ce0_local;
assign biases1_1_d0 = bitcast_ln133_16_fu_853_p1;
assign biases1_1_we0 = biases1_1_we0_local;
assign biases1_2_address0 = biases1_2_address0_local;
assign biases1_2_ce0 = biases1_2_ce0_local;
assign biases1_2_d0 = bitcast_ln133_16_fu_853_p1;
assign biases1_2_we0 = biases1_2_we0_local;
assign biases1_3_address0 = biases1_3_address0_local;
assign biases1_3_ce0 = biases1_3_ce0_local;
assign biases1_3_d0 = bitcast_ln133_16_fu_853_p1;
assign biases1_3_we0 = biases1_3_we0_local;
assign biases1_4_address0 = biases1_4_address0_local;
assign biases1_4_ce0 = biases1_4_ce0_local;
assign biases1_4_d0 = bitcast_ln133_16_fu_853_p1;
assign biases1_4_we0 = biases1_4_we0_local;
assign biases1_5_address0 = biases1_5_address0_local;
assign biases1_5_ce0 = biases1_5_ce0_local;
assign biases1_5_d0 = bitcast_ln133_16_fu_853_p1;
assign biases1_5_we0 = biases1_5_we0_local;
assign biases1_6_address0 = biases1_6_address0_local;
assign biases1_6_ce0 = biases1_6_ce0_local;
assign biases1_6_d0 = bitcast_ln133_16_fu_853_p1;
assign biases1_6_we0 = biases1_6_we0_local;
assign biases1_7_address0 = biases1_7_address0_local;
assign biases1_7_ce0 = biases1_7_ce0_local;
assign biases1_7_d0 = bitcast_ln133_16_fu_853_p1;
assign biases1_7_we0 = biases1_7_we0_local;
assign biases1_8_address0 = biases1_8_address0_local;
assign biases1_8_ce0 = biases1_8_ce0_local;
assign biases1_8_d0 = bitcast_ln133_16_fu_853_p1;
assign biases1_8_we0 = biases1_8_we0_local;
assign biases1_9_address0 = biases1_9_address0_local;
assign biases1_9_ce0 = biases1_9_ce0_local;
assign biases1_9_d0 = bitcast_ln133_16_fu_853_p1;
assign biases1_9_we0 = biases1_9_we0_local;
assign bitcast_ln133_16_fu_853_p1 = sub1_reg_1090;
assign d_biases1_0_address0 = zext_ln121_fu_607_p1;
assign d_biases1_0_ce0 = d_biases1_0_ce0_local;
assign d_biases1_10_address0 = zext_ln121_fu_607_p1;
assign d_biases1_10_ce0 = d_biases1_10_ce0_local;
assign d_biases1_11_address0 = zext_ln121_fu_607_p1;
assign d_biases1_11_ce0 = d_biases1_11_ce0_local;
assign d_biases1_12_address0 = zext_ln121_fu_607_p1;
assign d_biases1_12_ce0 = d_biases1_12_ce0_local;
assign d_biases1_13_address0 = zext_ln121_fu_607_p1;
assign d_biases1_13_ce0 = d_biases1_13_ce0_local;
assign d_biases1_14_address0 = zext_ln121_fu_607_p1;
assign d_biases1_14_ce0 = d_biases1_14_ce0_local;
assign d_biases1_15_address0 = zext_ln121_fu_607_p1;
assign d_biases1_15_ce0 = d_biases1_15_ce0_local;
assign d_biases1_1_address0 = zext_ln121_fu_607_p1;
assign d_biases1_1_ce0 = d_biases1_1_ce0_local;
assign d_biases1_2_address0 = zext_ln121_fu_607_p1;
assign d_biases1_2_ce0 = d_biases1_2_ce0_local;
assign d_biases1_3_address0 = zext_ln121_fu_607_p1;
assign d_biases1_3_ce0 = d_biases1_3_ce0_local;
assign d_biases1_4_address0 = zext_ln121_fu_607_p1;
assign d_biases1_4_ce0 = d_biases1_4_ce0_local;
assign d_biases1_5_address0 = zext_ln121_fu_607_p1;
assign d_biases1_5_ce0 = d_biases1_5_ce0_local;
assign d_biases1_6_address0 = zext_ln121_fu_607_p1;
assign d_biases1_6_ce0 = d_biases1_6_ce0_local;
assign d_biases1_7_address0 = zext_ln121_fu_607_p1;
assign d_biases1_7_ce0 = d_biases1_7_ce0_local;
assign d_biases1_8_address0 = zext_ln121_fu_607_p1;
assign d_biases1_8_ce0 = d_biases1_8_ce0_local;
assign d_biases1_9_address0 = zext_ln121_fu_607_p1;
assign d_biases1_9_ce0 = d_biases1_9_ce0_local;
assign grp_fu_1127_p_ce = 1'b1;
assign grp_fu_1127_p_din0 = grp_fu_559_p0;
assign grp_fu_1127_p_din1 = grp_fu_559_p1;
assign grp_fu_1127_p_opcode = grp_fu_559_opcode;
assign grp_fu_1131_p_ce = 1'b1;
assign grp_fu_1131_p_din0 = grp_fu_563_p0;
assign grp_fu_1131_p_din1 = grp_fu_563_p1;
assign icmp_ln132_fu_581_p2 = ((ap_sig_allocacmp_i == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_597_p4 = {{ap_sig_allocacmp_i[5:4]}};
assign tmp_1_fu_782_p10 = biases1_4_q0;
assign tmp_1_fu_782_p12 = biases1_5_q0;
assign tmp_1_fu_782_p14 = biases1_6_q0;
assign tmp_1_fu_782_p16 = biases1_7_q0;
assign tmp_1_fu_782_p18 = biases1_8_q0;
assign tmp_1_fu_782_p2 = biases1_0_q0;
assign tmp_1_fu_782_p20 = biases1_9_q0;
assign tmp_1_fu_782_p22 = biases1_10_q0;
assign tmp_1_fu_782_p24 = biases1_11_q0;
assign tmp_1_fu_782_p26 = biases1_12_q0;
assign tmp_1_fu_782_p28 = biases1_13_q0;
assign tmp_1_fu_782_p30 = biases1_14_q0;
assign tmp_1_fu_782_p32 = biases1_15_q0;
assign tmp_1_fu_782_p33 = 'bx;
assign tmp_1_fu_782_p4 = biases1_1_q0;
assign tmp_1_fu_782_p6 = biases1_2_q0;
assign tmp_1_fu_782_p8 = biases1_3_q0;
assign tmp_fu_643_p33 = 'bx;
assign trunc_ln132_fu_593_p1 = ap_sig_allocacmp_i[3:0];
assign zext_ln121_fu_607_p1 = lshr_ln1_fu_597_p4;
endmodule 