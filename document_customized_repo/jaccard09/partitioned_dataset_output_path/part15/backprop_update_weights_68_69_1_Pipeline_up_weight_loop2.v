
module backprop_update_weights_68_69_1_Pipeline_up_weight_loop2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,biases1_15_address0,biases1_15_ce0,biases1_15_we0,biases1_15_d0,biases1_15_q0,biases1_14_address0,biases1_14_ce0,biases1_14_we0,biases1_14_d0,biases1_14_q0,biases1_13_address0,biases1_13_ce0,biases1_13_we0,biases1_13_d0,biases1_13_q0,biases1_12_address0,biases1_12_ce0,biases1_12_we0,biases1_12_d0,biases1_12_q0,biases1_11_address0,biases1_11_ce0,biases1_11_we0,biases1_11_d0,biases1_11_q0,biases1_10_address0,biases1_10_ce0,biases1_10_we0,biases1_10_d0,biases1_10_q0,biases1_9_address0,biases1_9_ce0,biases1_9_we0,biases1_9_d0,biases1_9_q0,biases1_8_address0,biases1_8_ce0,biases1_8_we0,biases1_8_d0,biases1_8_q0,biases1_7_address0,biases1_7_ce0,biases1_7_we0,biases1_7_d0,biases1_7_q0,biases1_6_address0,biases1_6_ce0,biases1_6_we0,biases1_6_d0,biases1_6_q0,biases1_5_address0,biases1_5_ce0,biases1_5_we0,biases1_5_d0,biases1_5_q0,biases1_4_address0,biases1_4_ce0,biases1_4_we0,biases1_4_d0,biases1_4_q0,biases1_3_address0,biases1_3_ce0,biases1_3_we0,biases1_3_d0,biases1_3_q0,biases1_2_address0,biases1_2_ce0,biases1_2_we0,biases1_2_d0,biases1_2_q0,biases1_1_address0,biases1_1_ce0,biases1_1_we0,biases1_1_d0,biases1_1_q0,biases1_0_address0,biases1_0_ce0,biases1_0_we0,biases1_0_d0,biases1_0_q0,d_biases1_0_address0,d_biases1_0_ce0,d_biases1_0_q0,d_biases1_4_address0,d_biases1_4_ce0,d_biases1_4_q0,d_biases1_8_address0,d_biases1_8_ce0,d_biases1_8_q0,d_biases1_12_address0,d_biases1_12_ce0,d_biases1_12_q0,d_biases1_1_address0,d_biases1_1_ce0,d_biases1_1_q0,d_biases1_5_address0,d_biases1_5_ce0,d_biases1_5_q0,d_biases1_9_address0,d_biases1_9_ce0,d_biases1_9_q0,d_biases1_13_address0,d_biases1_13_ce0,d_biases1_13_q0,d_biases1_2_address0,d_biases1_2_ce0,d_biases1_2_q0,d_biases1_6_address0,d_biases1_6_ce0,d_biases1_6_q0,d_biases1_10_address0,d_biases1_10_ce0,d_biases1_10_q0,d_biases1_14_address0,d_biases1_14_ce0,d_biases1_14_q0,d_biases1_3_address0,d_biases1_3_ce0,d_biases1_3_q0,d_biases1_7_address0,d_biases1_7_ce0,d_biases1_7_q0,d_biases1_11_address0,d_biases1_11_ce0,d_biases1_11_q0,d_biases1_15_address0,d_biases1_15_ce0,d_biases1_15_q0,bias_norm_out,bias_norm_out_ap_vld,grp_fu_1127_p_din0,grp_fu_1127_p_din1,grp_fu_1127_p_opcode,grp_fu_1127_p_dout0,grp_fu_1127_p_ce,grp_fu_1131_p_din0,grp_fu_1131_p_din1,grp_fu_1131_p_dout0,grp_fu_1131_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 32'd1;
parameter    ap_ST_fsm_pp0_stage1 = 32'd2;
parameter    ap_ST_fsm_pp0_stage2 = 32'd4;
parameter    ap_ST_fsm_pp0_stage3 = 32'd8;
parameter    ap_ST_fsm_pp0_stage4 = 32'd16;
parameter    ap_ST_fsm_pp0_stage5 = 32'd32;
parameter    ap_ST_fsm_pp0_stage6 = 32'd64;
parameter    ap_ST_fsm_pp0_stage7 = 32'd128;
parameter    ap_ST_fsm_pp0_stage8 = 32'd256;
parameter    ap_ST_fsm_pp0_stage9 = 32'd512;
parameter    ap_ST_fsm_pp0_stage10 = 32'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 32'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 32'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 32'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 32'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 32'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 32'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 32'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 32'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 32'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 32'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 32'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 32'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 32'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 32'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 32'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 32'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 32'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 32'd268435456;
parameter    ap_ST_fsm_pp0_stage29 = 32'd536870912;
parameter    ap_ST_fsm_pp0_stage30 = 32'd1073741824;
parameter    ap_ST_fsm_pp0_stage31 = 32'd2147483648;
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
output  [1:0] d_biases1_4_address0;
output   d_biases1_4_ce0;
input  [63:0] d_biases1_4_q0;
output  [1:0] d_biases1_8_address0;
output   d_biases1_8_ce0;
input  [63:0] d_biases1_8_q0;
output  [1:0] d_biases1_12_address0;
output   d_biases1_12_ce0;
input  [63:0] d_biases1_12_q0;
output  [1:0] d_biases1_1_address0;
output   d_biases1_1_ce0;
input  [63:0] d_biases1_1_q0;
output  [1:0] d_biases1_5_address0;
output   d_biases1_5_ce0;
input  [63:0] d_biases1_5_q0;
output  [1:0] d_biases1_9_address0;
output   d_biases1_9_ce0;
input  [63:0] d_biases1_9_q0;
output  [1:0] d_biases1_13_address0;
output   d_biases1_13_ce0;
input  [63:0] d_biases1_13_q0;
output  [1:0] d_biases1_2_address0;
output   d_biases1_2_ce0;
input  [63:0] d_biases1_2_q0;
output  [1:0] d_biases1_6_address0;
output   d_biases1_6_ce0;
input  [63:0] d_biases1_6_q0;
output  [1:0] d_biases1_10_address0;
output   d_biases1_10_ce0;
input  [63:0] d_biases1_10_q0;
output  [1:0] d_biases1_14_address0;
output   d_biases1_14_ce0;
input  [63:0] d_biases1_14_q0;
output  [1:0] d_biases1_3_address0;
output   d_biases1_3_ce0;
input  [63:0] d_biases1_3_q0;
output  [1:0] d_biases1_7_address0;
output   d_biases1_7_ce0;
input  [63:0] d_biases1_7_q0;
output  [1:0] d_biases1_11_address0;
output   d_biases1_11_ce0;
input  [63:0] d_biases1_11_q0;
output  [1:0] d_biases1_15_address0;
output   d_biases1_15_ce0;
input  [63:0] d_biases1_15_q0;
output  [63:0] bias_norm_out;
output   bias_norm_out_ap_vld;
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
reg bias_norm_out_ap_vld;
(* fsm_encoding = "none" *) reg   [31:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_subdone;
reg   [0:0] tmp_8_reg_978;
reg    ap_condition_exit_pp0_iter0_stage23;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_subdone;
reg   [63:0] reg_562;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_block_pp0_stage23_11001;
reg   [63:0] reg_567;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
reg   [63:0] reg_572;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire    ap_block_pp0_stage31_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] i_reg_972;
reg   [1:0] biases1_0_addr_reg_1002;
reg   [1:0] biases1_4_addr_reg_1007;
reg   [1:0] biases1_8_addr_reg_1012;
reg   [1:0] biases1_12_addr_reg_1017;
reg   [1:0] biases1_1_addr_reg_1082;
reg   [1:0] biases1_5_addr_reg_1087;
reg   [1:0] biases1_9_addr_reg_1092;
reg   [1:0] biases1_13_addr_reg_1097;
reg   [1:0] biases1_2_addr_reg_1102;
reg   [1:0] biases1_6_addr_reg_1107;
reg   [1:0] biases1_10_addr_reg_1112;
reg   [1:0] biases1_14_addr_reg_1117;
reg   [1:0] biases1_3_addr_reg_1122;
reg   [1:0] biases1_7_addr_reg_1127;
reg   [1:0] biases1_11_addr_reg_1132;
reg   [1:0] biases1_15_addr_reg_1137;
wire   [3:0] trunc_ln132_fu_646_p1;
reg   [3:0] trunc_ln132_reg_1142;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_fu_649_p11;
reg   [63:0] tmp_reg_1146;
wire   [63:0] tmp_1_fu_689_p11;
reg   [63:0] tmp_1_reg_1151;
wire   [63:0] tmp_2_fu_713_p11;
reg   [63:0] tmp_2_reg_1156;
wire   [63:0] tmp_3_fu_737_p11;
reg   [63:0] tmp_3_reg_1161;
wire   [63:0] tmp_4_fu_761_p11;
reg   [63:0] tmp_4_reg_1166;
wire   [63:0] tmp_5_fu_801_p11;
reg   [63:0] tmp_5_reg_1171;
wire   [63:0] tmp_6_fu_841_p11;
reg   [63:0] tmp_6_reg_1176;
wire   [63:0] tmp_7_fu_881_p11;
reg   [63:0] tmp_7_reg_1181;
reg   [63:0] mul27_2_reg_1186;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] mul27_3_reg_1191;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] sub30_1_reg_1196;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
reg   [63:0] sub30_2_reg_1203;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
reg   [63:0] sub30_3_reg_1210;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
reg   [63:0] mul35_2_reg_1222;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
reg   [63:0] mul35_3_reg_1227;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
reg   [63:0] bias_norm_3_reg_1232;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln121_fu_610_p1;
wire    ap_block_pp0_stage0;
reg   [63:0] bias_norm_fu_122;
wire    ap_block_pp0_stage23;
wire    ap_loop_init;
wire    ap_block_pp0_stage24;
reg   [6:0] i_1_fu_126;
wire   [6:0] add_ln132_fu_938_p2;
reg   [6:0] ap_sig_allocacmp_i;
wire    ap_block_pp0_stage23_01001;
reg    d_biases1_0_ce0_local;
reg    d_biases1_4_ce0_local;
reg    d_biases1_8_ce0_local;
reg    d_biases1_12_ce0_local;
reg    biases1_0_ce0_local;
reg   [1:0] biases1_0_address0_local;
reg    biases1_0_we0_local;
reg    ap_predicate_pred649_state18;
wire   [63:0] bitcast_ln133_16_fu_905_p1;
wire    ap_block_pp0_stage17;
reg    biases1_4_ce0_local;
reg   [1:0] biases1_4_address0_local;
reg    biases1_4_we0_local;
reg    ap_predicate_pred667_state18;
reg    biases1_8_ce0_local;
reg   [1:0] biases1_8_address0_local;
reg    biases1_8_we0_local;
reg    ap_predicate_pred678_state18;
reg    biases1_12_ce0_local;
reg   [1:0] biases1_12_address0_local;
reg    biases1_12_we0_local;
reg    ap_predicate_pred692_state18;
reg    d_biases1_1_ce0_local;
reg    d_biases1_5_ce0_local;
reg    d_biases1_9_ce0_local;
reg    d_biases1_13_ce0_local;
reg    d_biases1_2_ce0_local;
reg    d_biases1_6_ce0_local;
reg    d_biases1_10_ce0_local;
reg    d_biases1_14_ce0_local;
reg    d_biases1_3_ce0_local;
reg    d_biases1_7_ce0_local;
reg    d_biases1_11_ce0_local;
reg    d_biases1_15_ce0_local;
reg    biases1_1_ce0_local;
reg   [1:0] biases1_1_address0_local;
reg    biases1_1_we0_local;
reg    ap_predicate_pred649_state19;
wire   [63:0] bitcast_ln133_17_fu_913_p1;
wire    ap_block_pp0_stage18;
reg    biases1_5_ce0_local;
reg   [1:0] biases1_5_address0_local;
reg    biases1_5_we0_local;
reg    ap_predicate_pred667_state19;
reg    biases1_9_ce0_local;
reg   [1:0] biases1_9_address0_local;
reg    biases1_9_we0_local;
reg    ap_predicate_pred678_state19;
reg    biases1_13_ce0_local;
reg   [1:0] biases1_13_address0_local;
reg    biases1_13_we0_local;
reg    ap_predicate_pred692_state19;
reg    biases1_2_ce0_local;
reg   [1:0] biases1_2_address0_local;
reg    biases1_2_we0_local;
reg    ap_predicate_pred649_state20;
wire   [63:0] bitcast_ln133_18_fu_920_p1;
wire    ap_block_pp0_stage19;
reg    biases1_6_ce0_local;
reg   [1:0] biases1_6_address0_local;
reg    biases1_6_we0_local;
reg    ap_predicate_pred667_state20;
reg    biases1_10_ce0_local;
reg   [1:0] biases1_10_address0_local;
reg    biases1_10_we0_local;
reg    ap_predicate_pred678_state20;
reg    biases1_14_ce0_local;
reg   [1:0] biases1_14_address0_local;
reg    biases1_14_we0_local;
reg    ap_predicate_pred692_state20;
reg    biases1_3_ce0_local;
reg   [1:0] biases1_3_address0_local;
reg    biases1_3_we0_local;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
reg    ap_predicate_pred649_state21;
wire   [63:0] bitcast_ln133_19_fu_927_p1;
wire    ap_block_pp0_stage20;
reg    biases1_7_ce0_local;
reg   [1:0] biases1_7_address0_local;
reg    biases1_7_we0_local;
reg    ap_predicate_pred667_state21;
reg    biases1_11_ce0_local;
reg   [1:0] biases1_11_address0_local;
reg    biases1_11_we0_local;
reg    ap_predicate_pred678_state21;
reg    biases1_15_ce0_local;
reg   [1:0] biases1_15_address0_local;
reg    biases1_15_we0_local;
reg    ap_predicate_pred692_state21;
reg   [63:0] grp_fu_553_p0;
reg   [63:0] grp_fu_553_p1;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage11;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage16;
reg   [63:0] grp_fu_557_p0;
reg   [63:0] grp_fu_557_p1;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5;
wire   [1:0] lshr_ln1_fu_600_p4;
wire    ap_block_pp0_stage1;
wire   [63:0] tmp_fu_649_p9;
wire   [63:0] tmp_1_fu_689_p2;
wire   [63:0] tmp_1_fu_689_p4;
wire   [63:0] tmp_1_fu_689_p6;
wire   [63:0] tmp_1_fu_689_p8;
wire   [63:0] tmp_1_fu_689_p9;
wire   [63:0] tmp_2_fu_713_p9;
wire   [63:0] tmp_3_fu_737_p9;
wire   [63:0] tmp_4_fu_761_p9;
wire   [63:0] tmp_5_fu_801_p2;
wire   [63:0] tmp_5_fu_801_p4;
wire   [63:0] tmp_5_fu_801_p6;
wire   [63:0] tmp_5_fu_801_p8;
wire   [63:0] tmp_5_fu_801_p9;
wire   [63:0] tmp_6_fu_841_p2;
wire   [63:0] tmp_6_fu_841_p4;
wire   [63:0] tmp_6_fu_841_p6;
wire   [63:0] tmp_6_fu_841_p8;
wire   [63:0] tmp_6_fu_841_p9;
wire   [63:0] tmp_7_fu_881_p2;
wire   [63:0] tmp_7_fu_881_p4;
wire   [63:0] tmp_7_fu_881_p6;
wire   [63:0] tmp_7_fu_881_p8;
wire   [63:0] tmp_7_fu_881_p9;
wire    ap_block_pp0_stage31;
reg   [1:0] grp_fu_553_opcode;
wire    ap_block_pp0_stage24_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage16_00001;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage12_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [31:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage16_subdone;
wire    ap_block_pp0_stage17_subdone;
wire    ap_block_pp0_stage18_subdone;
wire    ap_block_pp0_stage19_subdone;
wire    ap_block_pp0_stage20_subdone;
wire    ap_block_pp0_stage21_subdone;
wire    ap_block_pp0_stage22_subdone;
wire    ap_block_pp0_stage24_subdone;
wire    ap_block_pp0_stage25_subdone;
wire    ap_block_pp0_stage26_subdone;
wire    ap_block_pp0_stage27_subdone;
wire    ap_block_pp0_stage28_subdone;
wire    ap_block_pp0_stage29_subdone;
wire    ap_block_pp0_stage30_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [3:0] tmp_fu_649_p1;
wire   [3:0] tmp_fu_649_p3;
wire  signed [3:0] tmp_fu_649_p5;
wire  signed [3:0] tmp_fu_649_p7;
wire   [3:0] tmp_1_fu_689_p1;
wire   [3:0] tmp_1_fu_689_p3;
wire  signed [3:0] tmp_1_fu_689_p5;
wire  signed [3:0] tmp_1_fu_689_p7;
wire   [3:0] tmp_2_fu_713_p1;
wire   [3:0] tmp_2_fu_713_p3;
wire  signed [3:0] tmp_2_fu_713_p5;
wire  signed [3:0] tmp_2_fu_713_p7;
wire   [3:0] tmp_3_fu_737_p1;
wire   [3:0] tmp_3_fu_737_p3;
wire  signed [3:0] tmp_3_fu_737_p5;
wire  signed [3:0] tmp_3_fu_737_p7;
wire   [3:0] tmp_4_fu_761_p1;
wire   [3:0] tmp_4_fu_761_p3;
wire  signed [3:0] tmp_4_fu_761_p5;
wire  signed [3:0] tmp_4_fu_761_p7;
wire   [3:0] tmp_5_fu_801_p1;
wire   [3:0] tmp_5_fu_801_p3;
wire  signed [3:0] tmp_5_fu_801_p5;
wire  signed [3:0] tmp_5_fu_801_p7;
wire   [3:0] tmp_6_fu_841_p1;
wire   [3:0] tmp_6_fu_841_p3;
wire  signed [3:0] tmp_6_fu_841_p5;
wire  signed [3:0] tmp_6_fu_841_p7;
wire   [3:0] tmp_7_fu_881_p1;
wire   [3:0] tmp_7_fu_881_p3;
wire  signed [3:0] tmp_7_fu_881_p5;
wire  signed [3:0] tmp_7_fu_881_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 32'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 bias_norm_fu_122 = 64'd0;
#0 i_1_fu_126 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U1874(.din0(d_biases1_0_q0),.din1(d_biases1_4_q0),.din2(d_biases1_8_q0),.din3(d_biases1_12_q0),.def(tmp_fu_649_p9),.sel(trunc_ln132_fu_646_p1),.dout(tmp_fu_649_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U1875(.din0(tmp_1_fu_689_p2),.din1(tmp_1_fu_689_p4),.din2(tmp_1_fu_689_p6),.din3(tmp_1_fu_689_p8),.def(tmp_1_fu_689_p9),.sel(trunc_ln132_fu_646_p1),.dout(tmp_1_fu_689_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U1876(.din0(d_biases1_1_q0),.din1(d_biases1_5_q0),.din2(d_biases1_9_q0),.din3(d_biases1_13_q0),.def(tmp_2_fu_713_p9),.sel(trunc_ln132_fu_646_p1),.dout(tmp_2_fu_713_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U1877(.din0(d_biases1_2_q0),.din1(d_biases1_6_q0),.din2(d_biases1_10_q0),.din3(d_biases1_14_q0),.def(tmp_3_fu_737_p9),.sel(trunc_ln132_fu_646_p1),.dout(tmp_3_fu_737_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U1878(.din0(d_biases1_3_q0),.din1(d_biases1_7_q0),.din2(d_biases1_11_q0),.din3(d_biases1_15_q0),.def(tmp_4_fu_761_p9),.sel(trunc_ln132_fu_646_p1),.dout(tmp_4_fu_761_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U1879(.din0(tmp_5_fu_801_p2),.din1(tmp_5_fu_801_p4),.din2(tmp_5_fu_801_p6),.din3(tmp_5_fu_801_p8),.def(tmp_5_fu_801_p9),.sel(trunc_ln132_fu_646_p1),.dout(tmp_5_fu_801_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U1880(.din0(tmp_6_fu_841_p2),.din1(tmp_6_fu_841_p4),.din2(tmp_6_fu_841_p6),.din3(tmp_6_fu_841_p8),.def(tmp_6_fu_841_p9),.sel(trunc_ln132_fu_646_p1),.dout(tmp_6_fu_841_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U1881(.din0(tmp_7_fu_881_p2),.din1(tmp_7_fu_881_p4),.din2(tmp_7_fu_881_p6),.din3(tmp_7_fu_881_p8),.def(tmp_7_fu_881_p9),.sel(trunc_ln132_fu_646_p1),.dout(tmp_7_fu_881_p11));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage23),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage23_subdone) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage23)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage23_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage31_subdone) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bias_norm_fu_122 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        bias_norm_fu_122 <= grp_fu_1127_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_1_fu_126 <= 7'd0;
    end else if (((tmp_8_reg_978 == 1'd0) & (1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        i_1_fu_126 <= add_ln132_fu_938_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_predicate_pred649_state18 <= ((tmp_8_reg_978 == 1'd0) & (trunc_ln132_reg_1142 == 4'd0));
        ap_predicate_pred667_state18 <= ((tmp_8_reg_978 == 1'd0) & (trunc_ln132_reg_1142 == 4'd4));
        ap_predicate_pred678_state18 <= ((tmp_8_reg_978 == 1'd0) & (trunc_ln132_reg_1142 == 4'd8));
        ap_predicate_pred692_state18 <= (~(trunc_ln132_reg_1142 == 4'd8) & ~(trunc_ln132_reg_1142 == 4'd4) & ~(trunc_ln132_reg_1142 == 4'd0) & (tmp_8_reg_978 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        ap_predicate_pred649_state19 <= ((tmp_8_reg_978 == 1'd0) & (trunc_ln132_reg_1142 == 4'd0));
        ap_predicate_pred667_state19 <= ((tmp_8_reg_978 == 1'd0) & (trunc_ln132_reg_1142 == 4'd4));
        ap_predicate_pred678_state19 <= ((tmp_8_reg_978 == 1'd0) & (trunc_ln132_reg_1142 == 4'd8));
        ap_predicate_pred692_state19 <= (~(trunc_ln132_reg_1142 == 4'd8) & ~(trunc_ln132_reg_1142 == 4'd4) & ~(trunc_ln132_reg_1142 == 4'd0) & (tmp_8_reg_978 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        ap_predicate_pred649_state20 <= ((tmp_8_reg_978 == 1'd0) & (trunc_ln132_reg_1142 == 4'd0));
        ap_predicate_pred667_state20 <= ((tmp_8_reg_978 == 1'd0) & (trunc_ln132_reg_1142 == 4'd4));
        ap_predicate_pred678_state20 <= ((tmp_8_reg_978 == 1'd0) & (trunc_ln132_reg_1142 == 4'd8));
        ap_predicate_pred692_state20 <= (~(trunc_ln132_reg_1142 == 4'd8) & ~(trunc_ln132_reg_1142 == 4'd4) & ~(trunc_ln132_reg_1142 == 4'd0) & (tmp_8_reg_978 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        ap_predicate_pred649_state21 <= ((tmp_8_reg_978 == 1'd0) & (trunc_ln132_reg_1142 == 4'd0));
        ap_predicate_pred667_state21 <= ((tmp_8_reg_978 == 1'd0) & (trunc_ln132_reg_1142 == 4'd4));
        ap_predicate_pred678_state21 <= ((tmp_8_reg_978 == 1'd0) & (trunc_ln132_reg_1142 == 4'd8));
        ap_predicate_pred692_state21 <= (~(trunc_ln132_reg_1142 == 4'd8) & ~(trunc_ln132_reg_1142 == 4'd4) & ~(trunc_ln132_reg_1142 == 4'd0) & (tmp_8_reg_978 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        bias_norm_3_reg_1232 <= grp_fu_1127_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_0_addr_reg_1002 <= zext_ln121_fu_610_p1;
        biases1_10_addr_reg_1112 <= zext_ln121_fu_610_p1;
        biases1_11_addr_reg_1132 <= zext_ln121_fu_610_p1;
        biases1_12_addr_reg_1017 <= zext_ln121_fu_610_p1;
        biases1_13_addr_reg_1097 <= zext_ln121_fu_610_p1;
        biases1_14_addr_reg_1117 <= zext_ln121_fu_610_p1;
        biases1_15_addr_reg_1137 <= zext_ln121_fu_610_p1;
        biases1_1_addr_reg_1082 <= zext_ln121_fu_610_p1;
        biases1_2_addr_reg_1102 <= zext_ln121_fu_610_p1;
        biases1_3_addr_reg_1122 <= zext_ln121_fu_610_p1;
        biases1_4_addr_reg_1007 <= zext_ln121_fu_610_p1;
        biases1_5_addr_reg_1087 <= zext_ln121_fu_610_p1;
        biases1_6_addr_reg_1107 <= zext_ln121_fu_610_p1;
        biases1_7_addr_reg_1127 <= zext_ln121_fu_610_p1;
        biases1_8_addr_reg_1012 <= zext_ln121_fu_610_p1;
        biases1_9_addr_reg_1092 <= zext_ln121_fu_610_p1;
        i_reg_972 <= ap_sig_allocacmp_i;
        tmp_8_reg_978 <= ap_sig_allocacmp_i[32'd6];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        mul27_2_reg_1186 <= grp_fu_1131_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        mul27_3_reg_1191 <= grp_fu_1131_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        mul35_2_reg_1222 <= grp_fu_1131_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        mul35_3_reg_1227 <= grp_fu_1131_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_562 <= grp_fu_1131_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_567 <= grp_fu_1131_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        reg_572 <= grp_fu_1127_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        sub30_1_reg_1196 <= grp_fu_1127_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        sub30_2_reg_1203 <= grp_fu_1127_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        sub30_3_reg_1210 <= grp_fu_1127_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_1_reg_1151 <= tmp_1_fu_689_p11;
        tmp_2_reg_1156 <= tmp_2_fu_713_p11;
        tmp_3_reg_1161 <= tmp_3_fu_737_p11;
        tmp_4_reg_1166 <= tmp_4_fu_761_p11;
        tmp_5_reg_1171 <= tmp_5_fu_801_p11;
        tmp_6_reg_1176 <= tmp_6_fu_841_p11;
        tmp_7_reg_1181 <= tmp_7_fu_881_p11;
        tmp_reg_1146 <= tmp_fu_649_p11;
        trunc_ln132_reg_1142 <= trunc_ln132_fu_646_p1;
    end
end
always @ (*) begin
    if (((tmp_8_reg_978 == 1'd1) & (1'b0 == ap_block_pp0_stage23_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        ap_condition_exit_pp0_iter0_stage23 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage23 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage23_subdone) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage31_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i = 7'd0;
    end else begin
        ap_sig_allocacmp_i = i_1_fu_126;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_8_reg_978 == 1'd1) & (1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        bias_norm_out_ap_vld = 1'b1;
    end else begin
        bias_norm_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            biases1_0_address0_local = biases1_0_addr_reg_1002;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases1_0_address0_local = zext_ln121_fu_610_p1;
        end else begin
            biases1_0_address0_local = 'bx;
        end
    end else begin
        biases1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases1_0_ce0_local = 1'b1;
    end else begin
        biases1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_predicate_pred649_state18 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        biases1_0_we0_local = 1'b1;
    end else begin
        biases1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            biases1_10_address0_local = biases1_10_addr_reg_1112;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases1_10_address0_local = zext_ln121_fu_610_p1;
        end else begin
            biases1_10_address0_local = 'bx;
        end
    end else begin
        biases1_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases1_10_ce0_local = 1'b1;
    end else begin
        biases1_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred678_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        biases1_10_we0_local = 1'b1;
    end else begin
        biases1_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            biases1_11_address0_local = biases1_11_addr_reg_1132;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases1_11_address0_local = zext_ln121_fu_610_p1;
        end else begin
            biases1_11_address0_local = 'bx;
        end
    end else begin
        biases1_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases1_11_ce0_local = 1'b1;
    end else begin
        biases1_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred678_state21 == 1'b1) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        biases1_11_we0_local = 1'b1;
    end else begin
        biases1_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            biases1_12_address0_local = biases1_12_addr_reg_1017;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases1_12_address0_local = zext_ln121_fu_610_p1;
        end else begin
            biases1_12_address0_local = 'bx;
        end
    end else begin
        biases1_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases1_12_ce0_local = 1'b1;
    end else begin
        biases1_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred692_state18 == 1'b1) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        biases1_12_we0_local = 1'b1;
    end else begin
        biases1_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            biases1_13_address0_local = biases1_13_addr_reg_1097;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases1_13_address0_local = zext_ln121_fu_610_p1;
        end else begin
            biases1_13_address0_local = 'bx;
        end
    end else begin
        biases1_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases1_13_ce0_local = 1'b1;
    end else begin
        biases1_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred692_state19 == 1'b1) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        biases1_13_we0_local = 1'b1;
    end else begin
        biases1_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            biases1_14_address0_local = biases1_14_addr_reg_1117;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases1_14_address0_local = zext_ln121_fu_610_p1;
        end else begin
            biases1_14_address0_local = 'bx;
        end
    end else begin
        biases1_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases1_14_ce0_local = 1'b1;
    end else begin
        biases1_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred692_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        biases1_14_we0_local = 1'b1;
    end else begin
        biases1_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            biases1_15_address0_local = biases1_15_addr_reg_1137;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases1_15_address0_local = zext_ln121_fu_610_p1;
        end else begin
            biases1_15_address0_local = 'bx;
        end
    end else begin
        biases1_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases1_15_ce0_local = 1'b1;
    end else begin
        biases1_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred692_state21 == 1'b1) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        biases1_15_we0_local = 1'b1;
    end else begin
        biases1_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            biases1_1_address0_local = biases1_1_addr_reg_1082;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases1_1_address0_local = zext_ln121_fu_610_p1;
        end else begin
            biases1_1_address0_local = 'bx;
        end
    end else begin
        biases1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases1_1_ce0_local = 1'b1;
    end else begin
        biases1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred649_state19 == 1'b1) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        biases1_1_we0_local = 1'b1;
    end else begin
        biases1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            biases1_2_address0_local = biases1_2_addr_reg_1102;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases1_2_address0_local = zext_ln121_fu_610_p1;
        end else begin
            biases1_2_address0_local = 'bx;
        end
    end else begin
        biases1_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases1_2_ce0_local = 1'b1;
    end else begin
        biases1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred649_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        biases1_2_we0_local = 1'b1;
    end else begin
        biases1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            biases1_3_address0_local = biases1_3_addr_reg_1122;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases1_3_address0_local = zext_ln121_fu_610_p1;
        end else begin
            biases1_3_address0_local = 'bx;
        end
    end else begin
        biases1_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases1_3_ce0_local = 1'b1;
    end else begin
        biases1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred649_state21 == 1'b1) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        biases1_3_we0_local = 1'b1;
    end else begin
        biases1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            biases1_4_address0_local = biases1_4_addr_reg_1007;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases1_4_address0_local = zext_ln121_fu_610_p1;
        end else begin
            biases1_4_address0_local = 'bx;
        end
    end else begin
        biases1_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases1_4_ce0_local = 1'b1;
    end else begin
        biases1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_predicate_pred667_state18 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        biases1_4_we0_local = 1'b1;
    end else begin
        biases1_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            biases1_5_address0_local = biases1_5_addr_reg_1087;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases1_5_address0_local = zext_ln121_fu_610_p1;
        end else begin
            biases1_5_address0_local = 'bx;
        end
    end else begin
        biases1_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases1_5_ce0_local = 1'b1;
    end else begin
        biases1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred667_state19 == 1'b1) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        biases1_5_we0_local = 1'b1;
    end else begin
        biases1_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            biases1_6_address0_local = biases1_6_addr_reg_1107;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases1_6_address0_local = zext_ln121_fu_610_p1;
        end else begin
            biases1_6_address0_local = 'bx;
        end
    end else begin
        biases1_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases1_6_ce0_local = 1'b1;
    end else begin
        biases1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred667_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        biases1_6_we0_local = 1'b1;
    end else begin
        biases1_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            biases1_7_address0_local = biases1_7_addr_reg_1127;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases1_7_address0_local = zext_ln121_fu_610_p1;
        end else begin
            biases1_7_address0_local = 'bx;
        end
    end else begin
        biases1_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases1_7_ce0_local = 1'b1;
    end else begin
        biases1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred667_state21 == 1'b1) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        biases1_7_we0_local = 1'b1;
    end else begin
        biases1_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            biases1_8_address0_local = biases1_8_addr_reg_1012;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases1_8_address0_local = zext_ln121_fu_610_p1;
        end else begin
            biases1_8_address0_local = 'bx;
        end
    end else begin
        biases1_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases1_8_ce0_local = 1'b1;
    end else begin
        biases1_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_predicate_pred678_state18 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        biases1_8_we0_local = 1'b1;
    end else begin
        biases1_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            biases1_9_address0_local = biases1_9_addr_reg_1092;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            biases1_9_address0_local = zext_ln121_fu_610_p1;
        end else begin
            biases1_9_address0_local = 'bx;
        end
    end else begin
        biases1_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases1_9_ce0_local = 1'b1;
    end else begin
        biases1_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred678_state19 == 1'b1) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
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
    if ((((tmp_8_reg_978 == 1'd0) & (1'b0 == ap_block_pp0_stage12_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_8_reg_978 == 1'd0) & (1'b0 == ap_block_pp0_stage11_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_8_reg_978 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_8_reg_978 == 1'd0) & (1'b0 == ap_block_pp0_stage9_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        grp_fu_553_opcode = 2'd1;
    end else if ((((tmp_8_reg_978 == 1'd0) & (1'b0 == ap_block_pp0_stage24_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage16_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_553_opcode = 2'd0;
    end else begin
        grp_fu_553_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_553_p0 = bias_norm_3_reg_1232;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_553_p0 = reg_572;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_553_p0 = bias_norm_fu_122;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_553_p0 = tmp_7_reg_1181;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_553_p0 = tmp_6_reg_1176;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_553_p0 = tmp_5_reg_1171;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_553_p0 = tmp_1_reg_1151;
    end else begin
        grp_fu_553_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_553_p1 = mul35_3_reg_1227;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_553_p1 = mul35_2_reg_1222;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_553_p1 = mul27_3_reg_1191;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_553_p1 = mul27_2_reg_1186;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_553_p1 = reg_567;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)))) begin
        grp_fu_553_p1 = reg_562;
    end else begin
        grp_fu_553_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            grp_fu_557_p0 = sub30_3_reg_1210;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            grp_fu_557_p0 = sub30_2_reg_1203;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            grp_fu_557_p0 = sub30_1_reg_1196;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_557_p0 = reg_572;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_557_p0 = tmp_4_reg_1166;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_557_p0 = tmp_3_reg_1161;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_557_p0 = tmp_2_reg_1156;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_557_p0 = tmp_reg_1146;
        end else begin
            grp_fu_557_p0 = 'bx;
        end
    end else begin
        grp_fu_557_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_557_p1 = sub30_3_reg_1210;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_557_p1 = sub30_2_reg_1203;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_557_p1 = sub30_1_reg_1196;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_557_p1 = reg_572;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_557_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_557_p1 = 'bx;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        ap_ST_fsm_pp0_stage16 : begin
            if ((1'b0 == ap_block_pp0_stage16_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end
        end
        ap_ST_fsm_pp0_stage17 : begin
            if ((1'b0 == ap_block_pp0_stage17_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end
        end
        ap_ST_fsm_pp0_stage18 : begin
            if ((1'b0 == ap_block_pp0_stage18_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end
        end
        ap_ST_fsm_pp0_stage19 : begin
            if ((1'b0 == ap_block_pp0_stage19_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end
        end
        ap_ST_fsm_pp0_stage20 : begin
            if ((1'b0 == ap_block_pp0_stage20_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end
        end
        ap_ST_fsm_pp0_stage21 : begin
            if ((1'b0 == ap_block_pp0_stage21_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end
        end
        ap_ST_fsm_pp0_stage22 : begin
            if ((1'b0 == ap_block_pp0_stage22_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end
        end
        ap_ST_fsm_pp0_stage23 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage23)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage23_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end
        end
        ap_ST_fsm_pp0_stage24 : begin
            if ((1'b0 == ap_block_pp0_stage24_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end
        end
        ap_ST_fsm_pp0_stage25 : begin
            if ((1'b0 == ap_block_pp0_stage25_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end
        end
        ap_ST_fsm_pp0_stage26 : begin
            if ((1'b0 == ap_block_pp0_stage26_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end
        end
        ap_ST_fsm_pp0_stage27 : begin
            if ((1'b0 == ap_block_pp0_stage27_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end
        end
        ap_ST_fsm_pp0_stage28 : begin
            if ((1'b0 == ap_block_pp0_stage28_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end
        end
        ap_ST_fsm_pp0_stage29 : begin
            if ((1'b0 == ap_block_pp0_stage29_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end
        end
        ap_ST_fsm_pp0_stage30 : begin
            if ((1'b0 == ap_block_pp0_stage30_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end
        end
        ap_ST_fsm_pp0_stage31 : begin
            if ((1'b0 == ap_block_pp0_stage31_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln132_fu_938_p2 = (i_reg_972 + 7'd4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_pp0_stage18 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_pp0_stage19 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage20 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_pp0_stage23 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_pp0_stage24 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_pp0_stage25 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_pp0_stage26 = ap_CS_fsm[32'd26];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage31 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage23;
assign ap_ready = ap_ready_sig;
assign bias_norm_out = bias_norm_fu_122;
assign biases1_0_address0 = biases1_0_address0_local;
assign biases1_0_ce0 = biases1_0_ce0_local;
assign biases1_0_d0 = bitcast_ln133_16_fu_905_p1;
assign biases1_0_we0 = biases1_0_we0_local;
assign biases1_10_address0 = biases1_10_address0_local;
assign biases1_10_ce0 = biases1_10_ce0_local;
assign biases1_10_d0 = bitcast_ln133_18_fu_920_p1;
assign biases1_10_we0 = biases1_10_we0_local;
assign biases1_11_address0 = biases1_11_address0_local;
assign biases1_11_ce0 = biases1_11_ce0_local;
assign biases1_11_d0 = bitcast_ln133_19_fu_927_p1;
assign biases1_11_we0 = biases1_11_we0_local;
assign biases1_12_address0 = biases1_12_address0_local;
assign biases1_12_ce0 = biases1_12_ce0_local;
assign biases1_12_d0 = bitcast_ln133_16_fu_905_p1;
assign biases1_12_we0 = biases1_12_we0_local;
assign biases1_13_address0 = biases1_13_address0_local;
assign biases1_13_ce0 = biases1_13_ce0_local;
assign biases1_13_d0 = bitcast_ln133_17_fu_913_p1;
assign biases1_13_we0 = biases1_13_we0_local;
assign biases1_14_address0 = biases1_14_address0_local;
assign biases1_14_ce0 = biases1_14_ce0_local;
assign biases1_14_d0 = bitcast_ln133_18_fu_920_p1;
assign biases1_14_we0 = biases1_14_we0_local;
assign biases1_15_address0 = biases1_15_address0_local;
assign biases1_15_ce0 = biases1_15_ce0_local;
assign biases1_15_d0 = bitcast_ln133_19_fu_927_p1;
assign biases1_15_we0 = biases1_15_we0_local;
assign biases1_1_address0 = biases1_1_address0_local;
assign biases1_1_ce0 = biases1_1_ce0_local;
assign biases1_1_d0 = bitcast_ln133_17_fu_913_p1;
assign biases1_1_we0 = biases1_1_we0_local;
assign biases1_2_address0 = biases1_2_address0_local;
assign biases1_2_ce0 = biases1_2_ce0_local;
assign biases1_2_d0 = bitcast_ln133_18_fu_920_p1;
assign biases1_2_we0 = biases1_2_we0_local;
assign biases1_3_address0 = biases1_3_address0_local;
assign biases1_3_ce0 = biases1_3_ce0_local;
assign biases1_3_d0 = bitcast_ln133_19_fu_927_p1;
assign biases1_3_we0 = biases1_3_we0_local;
assign biases1_4_address0 = biases1_4_address0_local;
assign biases1_4_ce0 = biases1_4_ce0_local;
assign biases1_4_d0 = bitcast_ln133_16_fu_905_p1;
assign biases1_4_we0 = biases1_4_we0_local;
assign biases1_5_address0 = biases1_5_address0_local;
assign biases1_5_ce0 = biases1_5_ce0_local;
assign biases1_5_d0 = bitcast_ln133_17_fu_913_p1;
assign biases1_5_we0 = biases1_5_we0_local;
assign biases1_6_address0 = biases1_6_address0_local;
assign biases1_6_ce0 = biases1_6_ce0_local;
assign biases1_6_d0 = bitcast_ln133_18_fu_920_p1;
assign biases1_6_we0 = biases1_6_we0_local;
assign biases1_7_address0 = biases1_7_address0_local;
assign biases1_7_ce0 = biases1_7_ce0_local;
assign biases1_7_d0 = bitcast_ln133_19_fu_927_p1;
assign biases1_7_we0 = biases1_7_we0_local;
assign biases1_8_address0 = biases1_8_address0_local;
assign biases1_8_ce0 = biases1_8_ce0_local;
assign biases1_8_d0 = bitcast_ln133_16_fu_905_p1;
assign biases1_8_we0 = biases1_8_we0_local;
assign biases1_9_address0 = biases1_9_address0_local;
assign biases1_9_ce0 = biases1_9_ce0_local;
assign biases1_9_d0 = bitcast_ln133_17_fu_913_p1;
assign biases1_9_we0 = biases1_9_we0_local;
assign bitcast_ln133_16_fu_905_p1 = reg_572;
assign bitcast_ln133_17_fu_913_p1 = sub30_1_reg_1196;
assign bitcast_ln133_18_fu_920_p1 = sub30_2_reg_1203;
assign bitcast_ln133_19_fu_927_p1 = sub30_3_reg_1210;
assign d_biases1_0_address0 = zext_ln121_fu_610_p1;
assign d_biases1_0_ce0 = d_biases1_0_ce0_local;
assign d_biases1_10_address0 = zext_ln121_fu_610_p1;
assign d_biases1_10_ce0 = d_biases1_10_ce0_local;
assign d_biases1_11_address0 = zext_ln121_fu_610_p1;
assign d_biases1_11_ce0 = d_biases1_11_ce0_local;
assign d_biases1_12_address0 = zext_ln121_fu_610_p1;
assign d_biases1_12_ce0 = d_biases1_12_ce0_local;
assign d_biases1_13_address0 = zext_ln121_fu_610_p1;
assign d_biases1_13_ce0 = d_biases1_13_ce0_local;
assign d_biases1_14_address0 = zext_ln121_fu_610_p1;
assign d_biases1_14_ce0 = d_biases1_14_ce0_local;
assign d_biases1_15_address0 = zext_ln121_fu_610_p1;
assign d_biases1_15_ce0 = d_biases1_15_ce0_local;
assign d_biases1_1_address0 = zext_ln121_fu_610_p1;
assign d_biases1_1_ce0 = d_biases1_1_ce0_local;
assign d_biases1_2_address0 = zext_ln121_fu_610_p1;
assign d_biases1_2_ce0 = d_biases1_2_ce0_local;
assign d_biases1_3_address0 = zext_ln121_fu_610_p1;
assign d_biases1_3_ce0 = d_biases1_3_ce0_local;
assign d_biases1_4_address0 = zext_ln121_fu_610_p1;
assign d_biases1_4_ce0 = d_biases1_4_ce0_local;
assign d_biases1_5_address0 = zext_ln121_fu_610_p1;
assign d_biases1_5_ce0 = d_biases1_5_ce0_local;
assign d_biases1_6_address0 = zext_ln121_fu_610_p1;
assign d_biases1_6_ce0 = d_biases1_6_ce0_local;
assign d_biases1_7_address0 = zext_ln121_fu_610_p1;
assign d_biases1_7_ce0 = d_biases1_7_ce0_local;
assign d_biases1_8_address0 = zext_ln121_fu_610_p1;
assign d_biases1_8_ce0 = d_biases1_8_ce0_local;
assign d_biases1_9_address0 = zext_ln121_fu_610_p1;
assign d_biases1_9_ce0 = d_biases1_9_ce0_local;
assign grp_fu_1127_p_ce = 1'b1;
assign grp_fu_1127_p_din0 = grp_fu_553_p0;
assign grp_fu_1127_p_din1 = grp_fu_553_p1;
assign grp_fu_1127_p_opcode = grp_fu_553_opcode;
assign grp_fu_1131_p_ce = 1'b1;
assign grp_fu_1131_p_din0 = grp_fu_557_p0;
assign grp_fu_1131_p_din1 = grp_fu_557_p1;
assign lshr_ln1_fu_600_p4 = {{ap_sig_allocacmp_i[5:4]}};
assign tmp_1_fu_689_p2 = biases1_0_q0;
assign tmp_1_fu_689_p4 = biases1_4_q0;
assign tmp_1_fu_689_p6 = biases1_8_q0;
assign tmp_1_fu_689_p8 = biases1_12_q0;
assign tmp_1_fu_689_p9 = 'bx;
assign tmp_2_fu_713_p9 = 'bx;
assign tmp_3_fu_737_p9 = 'bx;
assign tmp_4_fu_761_p9 = 'bx;
assign tmp_5_fu_801_p2 = biases1_1_q0;
assign tmp_5_fu_801_p4 = biases1_5_q0;
assign tmp_5_fu_801_p6 = biases1_9_q0;
assign tmp_5_fu_801_p8 = biases1_13_q0;
assign tmp_5_fu_801_p9 = 'bx;
assign tmp_6_fu_841_p2 = biases1_2_q0;
assign tmp_6_fu_841_p4 = biases1_6_q0;
assign tmp_6_fu_841_p6 = biases1_10_q0;
assign tmp_6_fu_841_p8 = biases1_14_q0;
assign tmp_6_fu_841_p9 = 'bx;
assign tmp_7_fu_881_p2 = biases1_3_q0;
assign tmp_7_fu_881_p4 = biases1_7_q0;
assign tmp_7_fu_881_p6 = biases1_11_q0;
assign tmp_7_fu_881_p8 = biases1_15_q0;
assign tmp_7_fu_881_p9 = 'bx;
assign tmp_fu_649_p9 = 'bx;
assign trunc_ln132_fu_646_p1 = i_reg_972[3:0];
assign zext_ln121_fu_610_p1 = lshr_ln1_fu_600_p4;
endmodule 
