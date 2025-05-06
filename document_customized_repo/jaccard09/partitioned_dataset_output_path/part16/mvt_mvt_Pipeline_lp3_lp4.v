
module mvt_mvt_Pipeline_lp3_lp4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_A_address0,buff_A_ce0,buff_A_q0,buff_A_address1,buff_A_ce1,buff_A_q1,buff_A_1_address0,buff_A_1_ce0,buff_A_1_q0,buff_A_1_address1,buff_A_1_ce1,buff_A_1_q1,buff_A_2_address0,buff_A_2_ce0,buff_A_2_q0,buff_A_2_address1,buff_A_2_ce1,buff_A_2_q1,buff_A_3_address0,buff_A_3_ce0,buff_A_3_q0,buff_A_3_address1,buff_A_3_ce1,buff_A_3_q1,buff_A_4_address0,buff_A_4_ce0,buff_A_4_q0,buff_A_4_address1,buff_A_4_ce1,buff_A_4_q1,buff_A_5_address0,buff_A_5_ce0,buff_A_5_q0,buff_A_5_address1,buff_A_5_ce1,buff_A_5_q1,buff_A_6_address0,buff_A_6_ce0,buff_A_6_q0,buff_A_6_address1,buff_A_6_ce1,buff_A_6_q1,buff_A_7_address0,buff_A_7_ce0,buff_A_7_q0,buff_A_7_address1,buff_A_7_ce1,buff_A_7_q1,buff_A_8_address0,buff_A_8_ce0,buff_A_8_q0,buff_A_8_address1,buff_A_8_ce1,buff_A_8_q1,buff_A_9_address0,buff_A_9_ce0,buff_A_9_q0,buff_A_9_address1,buff_A_9_ce1,buff_A_9_q1,buff_A_10_address0,buff_A_10_ce0,buff_A_10_q0,buff_A_10_address1,buff_A_10_ce1,buff_A_10_q1,buff_A_11_address0,buff_A_11_ce0,buff_A_11_q0,buff_A_11_address1,buff_A_11_ce1,buff_A_11_q1,buff_A_12_address0,buff_A_12_ce0,buff_A_12_q0,buff_A_12_address1,buff_A_12_ce1,buff_A_12_q1,buff_A_13_address0,buff_A_13_ce0,buff_A_13_q0,buff_A_13_address1,buff_A_13_ce1,buff_A_13_q1,buff_A_14_address0,buff_A_14_ce0,buff_A_14_q0,buff_A_14_address1,buff_A_14_ce1,buff_A_14_q1,buff_A_15_address0,buff_A_15_ce0,buff_A_15_q0,buff_A_15_address1,buff_A_15_ce1,buff_A_15_q1,buff_y2_address0,buff_y2_ce0,buff_y2_q0,buff_y2_4_address0,buff_y2_4_ce0,buff_y2_4_q0,buff_y2_1_address0,buff_y2_1_ce0,buff_y2_1_q0,buff_y2_5_address0,buff_y2_5_ce0,buff_y2_5_q0,buff_y2_2_address0,buff_y2_2_ce0,buff_y2_2_q0,buff_y2_6_address0,buff_y2_6_ce0,buff_y2_6_q0,buff_y2_3_address0,buff_y2_3_ce0,buff_y2_3_q0,buff_y2_7_address0,buff_y2_7_ce0,buff_y2_7_q0,buff_x2_address0,buff_x2_ce0,buff_x2_we0,buff_x2_d0,buff_x2_q0,buff_x2_1_address0,buff_x2_1_ce0,buff_x2_1_we0,buff_x2_1_d0,buff_x2_1_q0,buff_x2_2_address0,buff_x2_2_ce0,buff_x2_2_we0,buff_x2_2_d0,buff_x2_2_q0,buff_x2_3_address0,buff_x2_3_ce0,buff_x2_3_we0,buff_x2_3_d0,buff_x2_3_q0,buff_x2_4_address0,buff_x2_4_ce0,buff_x2_4_we0,buff_x2_4_d0,buff_x2_4_q0,buff_x2_5_address0,buff_x2_5_ce0,buff_x2_5_we0,buff_x2_5_d0,buff_x2_5_q0,buff_x2_6_address0,buff_x2_6_ce0,buff_x2_6_we0,buff_x2_6_d0,buff_x2_6_q0,buff_x2_7_address0,buff_x2_7_ce0,buff_x2_7_we0,buff_x2_7_d0,buff_x2_7_q0,grp_fu_2304_p_din0,grp_fu_2304_p_din1,grp_fu_2304_p_opcode,grp_fu_2304_p_dout0,grp_fu_2304_p_ce,grp_fu_2308_p_din0,grp_fu_2308_p_din1,grp_fu_2308_p_dout0,grp_fu_2308_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 29'd1;
parameter    ap_ST_fsm_pp0_stage1 = 29'd2;
parameter    ap_ST_fsm_pp0_stage2 = 29'd4;
parameter    ap_ST_fsm_pp0_stage3 = 29'd8;
parameter    ap_ST_fsm_pp0_stage4 = 29'd16;
parameter    ap_ST_fsm_pp0_stage5 = 29'd32;
parameter    ap_ST_fsm_pp0_stage6 = 29'd64;
parameter    ap_ST_fsm_pp0_stage7 = 29'd128;
parameter    ap_ST_fsm_pp0_stage8 = 29'd256;
parameter    ap_ST_fsm_pp0_stage9 = 29'd512;
parameter    ap_ST_fsm_pp0_stage10 = 29'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 29'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 29'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 29'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 29'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 29'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 29'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 29'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 29'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 29'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 29'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 29'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 29'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 29'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 29'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 29'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 29'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 29'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 29'd268435456;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] buff_A_address0;
output   buff_A_ce0;
input  [31:0] buff_A_q0;
output  [7:0] buff_A_address1;
output   buff_A_ce1;
input  [31:0] buff_A_q1;
output  [7:0] buff_A_1_address0;
output   buff_A_1_ce0;
input  [31:0] buff_A_1_q0;
output  [7:0] buff_A_1_address1;
output   buff_A_1_ce1;
input  [31:0] buff_A_1_q1;
output  [7:0] buff_A_2_address0;
output   buff_A_2_ce0;
input  [31:0] buff_A_2_q0;
output  [7:0] buff_A_2_address1;
output   buff_A_2_ce1;
input  [31:0] buff_A_2_q1;
output  [7:0] buff_A_3_address0;
output   buff_A_3_ce0;
input  [31:0] buff_A_3_q0;
output  [7:0] buff_A_3_address1;
output   buff_A_3_ce1;
input  [31:0] buff_A_3_q1;
output  [7:0] buff_A_4_address0;
output   buff_A_4_ce0;
input  [31:0] buff_A_4_q0;
output  [7:0] buff_A_4_address1;
output   buff_A_4_ce1;
input  [31:0] buff_A_4_q1;
output  [7:0] buff_A_5_address0;
output   buff_A_5_ce0;
input  [31:0] buff_A_5_q0;
output  [7:0] buff_A_5_address1;
output   buff_A_5_ce1;
input  [31:0] buff_A_5_q1;
output  [7:0] buff_A_6_address0;
output   buff_A_6_ce0;
input  [31:0] buff_A_6_q0;
output  [7:0] buff_A_6_address1;
output   buff_A_6_ce1;
input  [31:0] buff_A_6_q1;
output  [7:0] buff_A_7_address0;
output   buff_A_7_ce0;
input  [31:0] buff_A_7_q0;
output  [7:0] buff_A_7_address1;
output   buff_A_7_ce1;
input  [31:0] buff_A_7_q1;
output  [7:0] buff_A_8_address0;
output   buff_A_8_ce0;
input  [31:0] buff_A_8_q0;
output  [7:0] buff_A_8_address1;
output   buff_A_8_ce1;
input  [31:0] buff_A_8_q1;
output  [7:0] buff_A_9_address0;
output   buff_A_9_ce0;
input  [31:0] buff_A_9_q0;
output  [7:0] buff_A_9_address1;
output   buff_A_9_ce1;
input  [31:0] buff_A_9_q1;
output  [7:0] buff_A_10_address0;
output   buff_A_10_ce0;
input  [31:0] buff_A_10_q0;
output  [7:0] buff_A_10_address1;
output   buff_A_10_ce1;
input  [31:0] buff_A_10_q1;
output  [7:0] buff_A_11_address0;
output   buff_A_11_ce0;
input  [31:0] buff_A_11_q0;
output  [7:0] buff_A_11_address1;
output   buff_A_11_ce1;
input  [31:0] buff_A_11_q1;
output  [7:0] buff_A_12_address0;
output   buff_A_12_ce0;
input  [31:0] buff_A_12_q0;
output  [7:0] buff_A_12_address1;
output   buff_A_12_ce1;
input  [31:0] buff_A_12_q1;
output  [7:0] buff_A_13_address0;
output   buff_A_13_ce0;
input  [31:0] buff_A_13_q0;
output  [7:0] buff_A_13_address1;
output   buff_A_13_ce1;
input  [31:0] buff_A_13_q1;
output  [7:0] buff_A_14_address0;
output   buff_A_14_ce0;
input  [31:0] buff_A_14_q0;
output  [7:0] buff_A_14_address1;
output   buff_A_14_ce1;
input  [31:0] buff_A_14_q1;
output  [7:0] buff_A_15_address0;
output   buff_A_15_ce0;
input  [31:0] buff_A_15_q0;
output  [7:0] buff_A_15_address1;
output   buff_A_15_ce1;
input  [31:0] buff_A_15_q1;
output  [2:0] buff_y2_address0;
output   buff_y2_ce0;
input  [31:0] buff_y2_q0;
output  [2:0] buff_y2_4_address0;
output   buff_y2_4_ce0;
input  [31:0] buff_y2_4_q0;
output  [2:0] buff_y2_1_address0;
output   buff_y2_1_ce0;
input  [31:0] buff_y2_1_q0;
output  [2:0] buff_y2_5_address0;
output   buff_y2_5_ce0;
input  [31:0] buff_y2_5_q0;
output  [2:0] buff_y2_2_address0;
output   buff_y2_2_ce0;
input  [31:0] buff_y2_2_q0;
output  [2:0] buff_y2_6_address0;
output   buff_y2_6_ce0;
input  [31:0] buff_y2_6_q0;
output  [2:0] buff_y2_3_address0;
output   buff_y2_3_ce0;
input  [31:0] buff_y2_3_q0;
output  [2:0] buff_y2_7_address0;
output   buff_y2_7_ce0;
input  [31:0] buff_y2_7_q0;
output  [2:0] buff_x2_address0;
output   buff_x2_ce0;
output   buff_x2_we0;
output  [31:0] buff_x2_d0;
input  [31:0] buff_x2_q0;
output  [2:0] buff_x2_1_address0;
output   buff_x2_1_ce0;
output   buff_x2_1_we0;
output  [31:0] buff_x2_1_d0;
input  [31:0] buff_x2_1_q0;
output  [2:0] buff_x2_2_address0;
output   buff_x2_2_ce0;
output   buff_x2_2_we0;
output  [31:0] buff_x2_2_d0;
input  [31:0] buff_x2_2_q0;
output  [2:0] buff_x2_3_address0;
output   buff_x2_3_ce0;
output   buff_x2_3_we0;
output  [31:0] buff_x2_3_d0;
input  [31:0] buff_x2_3_q0;
output  [2:0] buff_x2_4_address0;
output   buff_x2_4_ce0;
output   buff_x2_4_we0;
output  [31:0] buff_x2_4_d0;
input  [31:0] buff_x2_4_q0;
output  [2:0] buff_x2_5_address0;
output   buff_x2_5_ce0;
output   buff_x2_5_we0;
output  [31:0] buff_x2_5_d0;
input  [31:0] buff_x2_5_q0;
output  [2:0] buff_x2_6_address0;
output   buff_x2_6_ce0;
output   buff_x2_6_we0;
output  [31:0] buff_x2_6_d0;
input  [31:0] buff_x2_6_q0;
output  [2:0] buff_x2_7_address0;
output   buff_x2_7_ce0;
output   buff_x2_7_we0;
output  [31:0] buff_x2_7_d0;
input  [31:0] buff_x2_7_q0;
output  [31:0] grp_fu_2304_p_din0;
output  [31:0] grp_fu_2304_p_din1;
output  [1:0] grp_fu_2304_p_opcode;
input  [31:0] grp_fu_2304_p_dout0;
output   grp_fu_2304_p_ce;
output  [31:0] grp_fu_2308_p_din0;
output  [31:0] grp_fu_2308_p_din1;
input  [31:0] grp_fu_2308_p_dout0;
output   grp_fu_2308_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [28:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] icmp_ln29_reg_1282;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_subdone;
reg   [31:0] reg_770;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln29_fu_801_p2;
wire   [6:0] select_ln6_fu_833_p3;
reg   [6:0] select_ln6_reg_1286;
wire   [0:0] first_iter_0_fu_849_p2;
reg   [0:0] first_iter_0_reg_1294;
wire   [2:0] trunc_ln29_fu_855_p1;
reg   [2:0] trunc_ln29_reg_1298;
reg   [2:0] trunc_ln29_reg_1298_pp0_iter1_reg;
wire   [2:0] lshr_ln6_4_fu_859_p4;
reg   [2:0] lshr_ln6_4_reg_1307;
reg   [2:0] buff_x2_addr_reg_1313;
reg   [2:0] buff_x2_addr_reg_1313_pp0_iter1_reg;
reg   [2:0] buff_x2_1_addr_reg_1318;
reg   [2:0] buff_x2_1_addr_reg_1318_pp0_iter1_reg;
reg   [2:0] buff_x2_2_addr_reg_1323;
reg   [2:0] buff_x2_2_addr_reg_1323_pp0_iter1_reg;
reg   [2:0] buff_x2_3_addr_reg_1328;
reg   [2:0] buff_x2_3_addr_reg_1328_pp0_iter1_reg;
reg   [2:0] buff_x2_4_addr_reg_1333;
reg   [2:0] buff_x2_4_addr_reg_1333_pp0_iter1_reg;
reg   [2:0] buff_x2_5_addr_reg_1338;
reg   [2:0] buff_x2_5_addr_reg_1338_pp0_iter1_reg;
reg   [2:0] buff_x2_6_addr_reg_1343;
reg   [2:0] buff_x2_6_addr_reg_1343_pp0_iter1_reg;
reg   [2:0] buff_x2_7_addr_reg_1348;
reg   [2:0] buff_x2_7_addr_reg_1348_pp0_iter1_reg;
wire   [31:0] tmp_4_fu_913_p19;
reg   [31:0] tmp_4_reg_1393;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] select_ln31_fu_997_p3;
reg   [31:0] select_ln31_reg_1478;
wire   [31:0] select_ln31_1_fu_1005_p3;
reg   [31:0] select_ln31_1_reg_1483;
wire   [31:0] select_ln31_2_fu_1051_p3;
reg   [31:0] select_ln31_2_reg_1568;
wire   [31:0] select_ln31_3_fu_1059_p3;
reg   [31:0] select_ln31_3_reg_1573;
wire   [31:0] tmp_5_fu_1067_p19;
reg   [31:0] tmp_5_reg_1578;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] tmp_7_fu_1106_p19;
reg   [31:0] tmp_7_reg_1583;
wire   [31:0] tmp_9_fu_1145_p19;
reg   [31:0] tmp_9_reg_1588;
wire   [31:0] tmp_s_fu_1184_p19;
reg   [31:0] tmp_s_reg_1593;
reg   [31:0] mul1_reg_1598;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [31:0] mul65_1_reg_1608;
reg   [31:0] mul65_2_reg_1613;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [31:0] mul65_3_reg_1618;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [0:0] tmp_3_reg_1623;
wire    ap_block_pp0_stage28_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln6_fu_869_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln6_1_fu_891_p1;
wire   [63:0] zext_ln31_fu_971_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln31_1_fu_1031_p1;
reg   [6:0] j_1_fu_138;
wire   [6:0] add_ln30_fu_1231_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_1_load;
reg   [6:0] i_fu_142;
wire   [6:0] select_ln29_fu_841_p3;
reg   [6:0] ap_sig_allocacmp_i_load;
reg   [10:0] indvar_flatten_fu_146;
wire   [10:0] add_ln29_1_fu_807_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten_load;
reg   [31:0] empty_fu_150;
wire    ap_block_pp0_stage7;
reg    buff_x2_ce0_local;
reg   [2:0] buff_x2_address0_local;
reg    buff_x2_we0_local;
wire    ap_block_pp0_stage6;
reg    buff_x2_1_ce0_local;
reg   [2:0] buff_x2_1_address0_local;
reg    buff_x2_1_we0_local;
reg    buff_x2_2_ce0_local;
reg   [2:0] buff_x2_2_address0_local;
reg    buff_x2_2_we0_local;
reg    buff_x2_3_ce0_local;
reg   [2:0] buff_x2_3_address0_local;
reg    buff_x2_3_we0_local;
reg    buff_x2_4_ce0_local;
reg   [2:0] buff_x2_4_address0_local;
reg    buff_x2_4_we0_local;
reg    buff_x2_5_ce0_local;
reg   [2:0] buff_x2_5_address0_local;
reg    buff_x2_5_we0_local;
reg    buff_x2_6_ce0_local;
reg   [2:0] buff_x2_6_address0_local;
reg    buff_x2_6_we0_local;
reg    buff_x2_7_ce0_local;
reg   [2:0] buff_x2_7_address0_local;
reg    buff_x2_7_we0_local;
reg    buff_y2_ce0_local;
reg    buff_y2_4_ce0_local;
reg    buff_y2_1_ce0_local;
reg    buff_y2_5_ce0_local;
reg    buff_y2_2_ce0_local;
reg    buff_y2_6_ce0_local;
reg    buff_y2_3_ce0_local;
reg    buff_y2_7_ce0_local;
reg    buff_A_ce1_local;
reg    buff_A_ce0_local;
reg    buff_A_2_ce1_local;
reg    buff_A_2_ce0_local;
reg    buff_A_4_ce1_local;
reg    buff_A_4_ce0_local;
reg    buff_A_6_ce1_local;
reg    buff_A_6_ce0_local;
reg    buff_A_8_ce1_local;
reg    buff_A_8_ce0_local;
reg    buff_A_10_ce1_local;
reg    buff_A_10_ce0_local;
reg    buff_A_12_ce1_local;
reg    buff_A_12_ce0_local;
reg    buff_A_14_ce1_local;
reg    buff_A_14_ce0_local;
reg    buff_A_1_ce1_local;
reg    buff_A_1_ce0_local;
reg    buff_A_3_ce1_local;
reg    buff_A_3_ce0_local;
reg    buff_A_5_ce1_local;
reg    buff_A_5_ce0_local;
reg    buff_A_7_ce1_local;
reg    buff_A_7_ce0_local;
reg    buff_A_9_ce1_local;
reg    buff_A_9_ce0_local;
reg    buff_A_11_ce1_local;
reg    buff_A_11_ce0_local;
reg    buff_A_13_ce1_local;
reg    buff_A_13_ce0_local;
reg    buff_A_15_ce1_local;
reg    buff_A_15_ce0_local;
reg   [31:0] grp_fu_762_p0;
reg   [31:0] grp_fu_762_p1;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21;
wire    ap_block_pp0_stage28;
reg   [31:0] grp_fu_766_p0;
reg   [31:0] grp_fu_766_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire   [0:0] tmp_fu_825_p3;
wire   [6:0] add_ln29_fu_819_p2;
wire   [2:0] lshr_ln6_8_fu_881_p4;
wire   [31:0] tmp_4_fu_913_p17;
wire   [4:0] lshr_ln6_7_fu_955_p4;
wire   [7:0] tmp_6_fu_964_p3;
wire   [2:0] trunc_ln30_fu_952_p1;
wire   [0:0] icmp_ln31_1_fu_991_p2;
wire   [3:0] tmp_8_fu_1013_p4;
wire   [7:0] tmp_10_fu_1022_p4;
wire   [31:0] tmp_5_fu_1067_p17;
wire    ap_block_pp0_stage2;
wire   [31:0] tmp_7_fu_1106_p17;
wire   [31:0] tmp_9_fu_1145_p17;
wire   [31:0] tmp_s_fu_1184_p17;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [28:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
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
wire    ap_block_pp0_stage23_subdone;
wire    ap_block_pp0_stage24_subdone;
wire    ap_block_pp0_stage25_subdone;
wire    ap_block_pp0_stage26_subdone;
wire    ap_block_pp0_stage27_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage14_00001;
wire    ap_block_pp0_stage21_00001;
wire    ap_block_pp0_stage28_00001;
reg    ap_condition_1567;
wire   [2:0] tmp_4_fu_913_p1;
wire   [2:0] tmp_4_fu_913_p3;
wire   [2:0] tmp_4_fu_913_p5;
wire   [2:0] tmp_4_fu_913_p7;
wire  signed [2:0] tmp_4_fu_913_p9;
wire  signed [2:0] tmp_4_fu_913_p11;
wire  signed [2:0] tmp_4_fu_913_p13;
wire  signed [2:0] tmp_4_fu_913_p15;
wire   [2:0] tmp_5_fu_1067_p1;
wire   [2:0] tmp_5_fu_1067_p3;
wire   [2:0] tmp_5_fu_1067_p5;
wire   [2:0] tmp_5_fu_1067_p7;
wire  signed [2:0] tmp_5_fu_1067_p9;
wire  signed [2:0] tmp_5_fu_1067_p11;
wire  signed [2:0] tmp_5_fu_1067_p13;
wire  signed [2:0] tmp_5_fu_1067_p15;
wire   [2:0] tmp_7_fu_1106_p1;
wire   [2:0] tmp_7_fu_1106_p3;
wire   [2:0] tmp_7_fu_1106_p5;
wire   [2:0] tmp_7_fu_1106_p7;
wire  signed [2:0] tmp_7_fu_1106_p9;
wire  signed [2:0] tmp_7_fu_1106_p11;
wire  signed [2:0] tmp_7_fu_1106_p13;
wire  signed [2:0] tmp_7_fu_1106_p15;
wire   [2:0] tmp_9_fu_1145_p1;
wire   [2:0] tmp_9_fu_1145_p3;
wire   [2:0] tmp_9_fu_1145_p5;
wire   [2:0] tmp_9_fu_1145_p7;
wire  signed [2:0] tmp_9_fu_1145_p9;
wire  signed [2:0] tmp_9_fu_1145_p11;
wire  signed [2:0] tmp_9_fu_1145_p13;
wire  signed [2:0] tmp_9_fu_1145_p15;
wire   [2:0] tmp_s_fu_1184_p1;
wire   [2:0] tmp_s_fu_1184_p3;
wire   [2:0] tmp_s_fu_1184_p5;
wire   [2:0] tmp_s_fu_1184_p7;
wire  signed [2:0] tmp_s_fu_1184_p9;
wire  signed [2:0] tmp_s_fu_1184_p11;
wire  signed [2:0] tmp_s_fu_1184_p13;
wire  signed [2:0] tmp_s_fu_1184_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 29'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_1_fu_138 = 7'd0;
#0 i_fu_142 = 7'd0;
#0 indvar_flatten_fu_146 = 11'd0;
#0 empty_fu_150 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) mvt_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U631(.din0(buff_x2_q0),.din1(buff_x2_1_q0),.din2(buff_x2_2_q0),.din3(buff_x2_3_q0),.din4(buff_x2_4_q0),.din5(buff_x2_5_q0),.din6(buff_x2_6_q0),.din7(buff_x2_7_q0),.def(tmp_4_fu_913_p17),.sel(trunc_ln29_reg_1298),.dout(tmp_4_fu_913_p19));
(* dissolve_hierarchy = "yes" *) mvt_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U632(.din0(buff_A_q1),.din1(buff_A_2_q1),.din2(buff_A_4_q1),.din3(buff_A_6_q1),.din4(buff_A_8_q1),.din5(buff_A_10_q1),.din6(buff_A_12_q1),.din7(buff_A_14_q1),.def(tmp_5_fu_1067_p17),.sel(trunc_ln29_reg_1298),.dout(tmp_5_fu_1067_p19));
(* dissolve_hierarchy = "yes" *) mvt_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U633(.din0(buff_A_1_q1),.din1(buff_A_3_q1),.din2(buff_A_5_q1),.din3(buff_A_7_q1),.din4(buff_A_9_q1),.din5(buff_A_11_q1),.din6(buff_A_13_q1),.din7(buff_A_15_q1),.def(tmp_7_fu_1106_p17),.sel(trunc_ln29_reg_1298),.dout(tmp_7_fu_1106_p19));
(* dissolve_hierarchy = "yes" *) mvt_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U634(.din0(buff_A_q0),.din1(buff_A_2_q0),.din2(buff_A_4_q0),.din3(buff_A_6_q0),.din4(buff_A_8_q0),.din5(buff_A_10_q0),.din6(buff_A_12_q0),.din7(buff_A_14_q0),.def(tmp_9_fu_1145_p17),.sel(trunc_ln29_reg_1298),.dout(tmp_9_fu_1145_p19));
(* dissolve_hierarchy = "yes" *) mvt_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U635(.din0(buff_A_1_q0),.din1(buff_A_3_q0),.din2(buff_A_5_q0),.din3(buff_A_7_q0),.din4(buff_A_9_q0),.din5(buff_A_11_q0),.din6(buff_A_13_q0),.din7(buff_A_15_q0),.def(tmp_s_fu_1184_p17),.sel(trunc_ln29_reg_1298),.dout(tmp_s_fu_1184_p19));
mvt_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage6),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage6)) begin
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
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage28_subdone) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        if ((1'b1 == ap_condition_1567)) begin
            empty_fu_150 <= tmp_4_reg_1393;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_fu_150 <= reg_770;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln29_fu_801_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_142 <= select_ln29_fu_841_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_142 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln29_fu_801_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_146 <= add_ln29_1_fu_807_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_146 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_1_fu_138 <= 7'd0;
    end else if (((icmp_ln29_reg_1282 == 1'd0) & (1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        j_1_fu_138 <= add_ln30_fu_1231_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x2_1_addr_reg_1318 <= zext_ln6_fu_869_p1;
        buff_x2_1_addr_reg_1318_pp0_iter1_reg <= buff_x2_1_addr_reg_1318;
        buff_x2_2_addr_reg_1323 <= zext_ln6_fu_869_p1;
        buff_x2_2_addr_reg_1323_pp0_iter1_reg <= buff_x2_2_addr_reg_1323;
        buff_x2_3_addr_reg_1328 <= zext_ln6_fu_869_p1;
        buff_x2_3_addr_reg_1328_pp0_iter1_reg <= buff_x2_3_addr_reg_1328;
        buff_x2_4_addr_reg_1333 <= zext_ln6_fu_869_p1;
        buff_x2_4_addr_reg_1333_pp0_iter1_reg <= buff_x2_4_addr_reg_1333;
        buff_x2_5_addr_reg_1338 <= zext_ln6_fu_869_p1;
        buff_x2_5_addr_reg_1338_pp0_iter1_reg <= buff_x2_5_addr_reg_1338;
        buff_x2_6_addr_reg_1343 <= zext_ln6_fu_869_p1;
        buff_x2_6_addr_reg_1343_pp0_iter1_reg <= buff_x2_6_addr_reg_1343;
        buff_x2_7_addr_reg_1348 <= zext_ln6_fu_869_p1;
        buff_x2_7_addr_reg_1348_pp0_iter1_reg <= buff_x2_7_addr_reg_1348;
        buff_x2_addr_reg_1313 <= zext_ln6_fu_869_p1;
        buff_x2_addr_reg_1313_pp0_iter1_reg <= buff_x2_addr_reg_1313;
        first_iter_0_reg_1294 <= first_iter_0_fu_849_p2;
        icmp_ln29_reg_1282 <= icmp_ln29_fu_801_p2;
        lshr_ln6_4_reg_1307 <= {{select_ln29_fu_841_p3[5:3]}};
        select_ln6_reg_1286 <= select_ln6_fu_833_p3;
        trunc_ln29_reg_1298 <= trunc_ln29_fu_855_p1;
        trunc_ln29_reg_1298_pp0_iter1_reg <= trunc_ln29_reg_1298;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul1_reg_1598 <= grp_fu_2308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul65_1_reg_1608 <= grp_fu_2308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul65_2_reg_1613 <= grp_fu_2308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul65_3_reg_1618 <= grp_fu_2308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_770 <= grp_fu_2304_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        select_ln31_1_reg_1483 <= select_ln31_1_fu_1005_p3;
        select_ln31_2_reg_1568 <= select_ln31_2_fu_1051_p3;
        select_ln31_3_reg_1573 <= select_ln31_3_fu_1059_p3;
        select_ln31_reg_1478 <= select_ln31_fu_997_p3;
        tmp_4_reg_1393 <= tmp_4_fu_913_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage28_11001) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        tmp_3_reg_1623 <= add_ln30_fu_1231_p2[32'd6];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_5_reg_1578 <= tmp_5_fu_1067_p19;
        tmp_7_reg_1583 <= tmp_7_fu_1106_p19;
        tmp_9_reg_1588 <= tmp_9_fu_1145_p19;
        tmp_s_reg_1593 <= tmp_s_fu_1184_p19;
    end
end
always @ (*) begin
    if (((icmp_ln29_reg_1282 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
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
    if (((1'b0 == ap_block_pp0_stage28_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_142;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_146;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_1_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_1_load = j_1_fu_138;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_10_ce0_local = 1'b1;
    end else begin
        buff_A_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_10_ce1_local = 1'b1;
    end else begin
        buff_A_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_11_ce0_local = 1'b1;
    end else begin
        buff_A_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_11_ce1_local = 1'b1;
    end else begin
        buff_A_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_12_ce0_local = 1'b1;
    end else begin
        buff_A_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_12_ce1_local = 1'b1;
    end else begin
        buff_A_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_13_ce0_local = 1'b1;
    end else begin
        buff_A_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_13_ce1_local = 1'b1;
    end else begin
        buff_A_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_14_ce0_local = 1'b1;
    end else begin
        buff_A_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_14_ce1_local = 1'b1;
    end else begin
        buff_A_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_15_ce0_local = 1'b1;
    end else begin
        buff_A_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_15_ce1_local = 1'b1;
    end else begin
        buff_A_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_1_ce0_local = 1'b1;
    end else begin
        buff_A_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_1_ce1_local = 1'b1;
    end else begin
        buff_A_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_2_ce0_local = 1'b1;
    end else begin
        buff_A_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_2_ce1_local = 1'b1;
    end else begin
        buff_A_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_3_ce0_local = 1'b1;
    end else begin
        buff_A_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_3_ce1_local = 1'b1;
    end else begin
        buff_A_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_4_ce0_local = 1'b1;
    end else begin
        buff_A_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_4_ce1_local = 1'b1;
    end else begin
        buff_A_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_5_ce0_local = 1'b1;
    end else begin
        buff_A_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_5_ce1_local = 1'b1;
    end else begin
        buff_A_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_6_ce0_local = 1'b1;
    end else begin
        buff_A_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_6_ce1_local = 1'b1;
    end else begin
        buff_A_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_7_ce0_local = 1'b1;
    end else begin
        buff_A_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_7_ce1_local = 1'b1;
    end else begin
        buff_A_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_8_ce0_local = 1'b1;
    end else begin
        buff_A_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_8_ce1_local = 1'b1;
    end else begin
        buff_A_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_9_ce0_local = 1'b1;
    end else begin
        buff_A_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_9_ce1_local = 1'b1;
    end else begin
        buff_A_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_ce0_local = 1'b1;
    end else begin
        buff_A_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_ce1_local = 1'b1;
    end else begin
        buff_A_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_1_address0_local = buff_x2_1_addr_reg_1318_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x2_1_address0_local = zext_ln6_fu_869_p1;
    end else begin
        buff_x2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_x2_1_ce0_local = 1'b1;
    end else begin
        buff_x2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_3_reg_1623 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln29_reg_1298_pp0_iter1_reg == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_1_we0_local = 1'b1;
    end else begin
        buff_x2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_2_address0_local = buff_x2_2_addr_reg_1323_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x2_2_address0_local = zext_ln6_fu_869_p1;
    end else begin
        buff_x2_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_x2_2_ce0_local = 1'b1;
    end else begin
        buff_x2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_3_reg_1623 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln29_reg_1298_pp0_iter1_reg == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_2_we0_local = 1'b1;
    end else begin
        buff_x2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_3_address0_local = buff_x2_3_addr_reg_1328_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x2_3_address0_local = zext_ln6_fu_869_p1;
    end else begin
        buff_x2_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_x2_3_ce0_local = 1'b1;
    end else begin
        buff_x2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_3_reg_1623 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln29_reg_1298_pp0_iter1_reg == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_3_we0_local = 1'b1;
    end else begin
        buff_x2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_4_address0_local = buff_x2_4_addr_reg_1333_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x2_4_address0_local = zext_ln6_fu_869_p1;
    end else begin
        buff_x2_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_x2_4_ce0_local = 1'b1;
    end else begin
        buff_x2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_3_reg_1623 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln29_reg_1298_pp0_iter1_reg == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_4_we0_local = 1'b1;
    end else begin
        buff_x2_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_5_address0_local = buff_x2_5_addr_reg_1338_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x2_5_address0_local = zext_ln6_fu_869_p1;
    end else begin
        buff_x2_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_x2_5_ce0_local = 1'b1;
    end else begin
        buff_x2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_3_reg_1623 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln29_reg_1298_pp0_iter1_reg == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_5_we0_local = 1'b1;
    end else begin
        buff_x2_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_6_address0_local = buff_x2_6_addr_reg_1343_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x2_6_address0_local = zext_ln6_fu_869_p1;
    end else begin
        buff_x2_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_x2_6_ce0_local = 1'b1;
    end else begin
        buff_x2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_3_reg_1623 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln29_reg_1298_pp0_iter1_reg == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_6_we0_local = 1'b1;
    end else begin
        buff_x2_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_7_address0_local = buff_x2_7_addr_reg_1348_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x2_7_address0_local = zext_ln6_fu_869_p1;
    end else begin
        buff_x2_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_x2_7_ce0_local = 1'b1;
    end else begin
        buff_x2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_3_reg_1623 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln29_reg_1298_pp0_iter1_reg == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_7_we0_local = 1'b1;
    end else begin
        buff_x2_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_address0_local = buff_x2_addr_reg_1313_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x2_address0_local = zext_ln6_fu_869_p1;
    end else begin
        buff_x2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_x2_ce0_local = 1'b1;
    end else begin
        buff_x2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_3_reg_1623 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln29_reg_1298_pp0_iter1_reg == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_we0_local = 1'b1;
    end else begin
        buff_x2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y2_1_ce0_local = 1'b1;
    end else begin
        buff_y2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y2_2_ce0_local = 1'b1;
    end else begin
        buff_y2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y2_3_ce0_local = 1'b1;
    end else begin
        buff_y2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y2_4_ce0_local = 1'b1;
    end else begin
        buff_y2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y2_5_ce0_local = 1'b1;
    end else begin
        buff_y2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y2_6_ce0_local = 1'b1;
    end else begin
        buff_y2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y2_7_ce0_local = 1'b1;
    end else begin
        buff_y2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y2_ce0_local = 1'b1;
    end else begin
        buff_y2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        grp_fu_762_p0 = reg_770;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_762_p0 = empty_fu_150;
    end else begin
        grp_fu_762_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage28) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
            grp_fu_762_p1 = mul65_3_reg_1618;
        end else if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            grp_fu_762_p1 = mul65_2_reg_1613;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_762_p1 = mul65_1_reg_1608;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_762_p1 = mul1_reg_1598;
        end else begin
            grp_fu_762_p1 = 'bx;
        end
    end else begin
        grp_fu_762_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_766_p0 = tmp_s_reg_1593;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_766_p0 = tmp_9_reg_1588;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_766_p0 = tmp_7_reg_1583;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_766_p0 = tmp_5_reg_1578;
        end else begin
            grp_fu_766_p0 = 'bx;
        end
    end else begin
        grp_fu_766_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_766_p1 = select_ln31_3_reg_1573;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_766_p1 = select_ln31_2_reg_1568;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_766_p1 = select_ln31_1_reg_1483;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_766_p1 = select_ln31_reg_1478;
        end else begin
            grp_fu_766_p1 = 'bx;
        end
    end else begin
        grp_fu_766_p1 = 'bx;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage6)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
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
            if ((1'b0 == ap_block_pp0_stage23_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln29_1_fu_807_p2 = (ap_sig_allocacmp_indvar_flatten_load + 11'd1);
assign add_ln29_fu_819_p2 = (ap_sig_allocacmp_i_load + 7'd1);
assign add_ln30_fu_1231_p2 = (select_ln6_reg_1286 + 7'd4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage20 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_pp0_stage21 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_pp0_stage27 = ap_CS_fsm[32'd27];
assign ap_CS_fsm_pp0_stage28 = ap_CS_fsm[32'd28];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1567 = ((icmp_ln29_reg_1282 == 1'd0) & (first_iter_0_reg_1294 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign buff_A_10_address0 = zext_ln31_1_fu_1031_p1;
assign buff_A_10_address1 = zext_ln31_fu_971_p1;
assign buff_A_10_ce0 = buff_A_10_ce0_local;
assign buff_A_10_ce1 = buff_A_10_ce1_local;
assign buff_A_11_address0 = zext_ln31_1_fu_1031_p1;
assign buff_A_11_address1 = zext_ln31_fu_971_p1;
assign buff_A_11_ce0 = buff_A_11_ce0_local;
assign buff_A_11_ce1 = buff_A_11_ce1_local;
assign buff_A_12_address0 = zext_ln31_1_fu_1031_p1;
assign buff_A_12_address1 = zext_ln31_fu_971_p1;
assign buff_A_12_ce0 = buff_A_12_ce0_local;
assign buff_A_12_ce1 = buff_A_12_ce1_local;
assign buff_A_13_address0 = zext_ln31_1_fu_1031_p1;
assign buff_A_13_address1 = zext_ln31_fu_971_p1;
assign buff_A_13_ce0 = buff_A_13_ce0_local;
assign buff_A_13_ce1 = buff_A_13_ce1_local;
assign buff_A_14_address0 = zext_ln31_1_fu_1031_p1;
assign buff_A_14_address1 = zext_ln31_fu_971_p1;
assign buff_A_14_ce0 = buff_A_14_ce0_local;
assign buff_A_14_ce1 = buff_A_14_ce1_local;
assign buff_A_15_address0 = zext_ln31_1_fu_1031_p1;
assign buff_A_15_address1 = zext_ln31_fu_971_p1;
assign buff_A_15_ce0 = buff_A_15_ce0_local;
assign buff_A_15_ce1 = buff_A_15_ce1_local;
assign buff_A_1_address0 = zext_ln31_1_fu_1031_p1;
assign buff_A_1_address1 = zext_ln31_fu_971_p1;
assign buff_A_1_ce0 = buff_A_1_ce0_local;
assign buff_A_1_ce1 = buff_A_1_ce1_local;
assign buff_A_2_address0 = zext_ln31_1_fu_1031_p1;
assign buff_A_2_address1 = zext_ln31_fu_971_p1;
assign buff_A_2_ce0 = buff_A_2_ce0_local;
assign buff_A_2_ce1 = buff_A_2_ce1_local;
assign buff_A_3_address0 = zext_ln31_1_fu_1031_p1;
assign buff_A_3_address1 = zext_ln31_fu_971_p1;
assign buff_A_3_ce0 = buff_A_3_ce0_local;
assign buff_A_3_ce1 = buff_A_3_ce1_local;
assign buff_A_4_address0 = zext_ln31_1_fu_1031_p1;
assign buff_A_4_address1 = zext_ln31_fu_971_p1;
assign buff_A_4_ce0 = buff_A_4_ce0_local;
assign buff_A_4_ce1 = buff_A_4_ce1_local;
assign buff_A_5_address0 = zext_ln31_1_fu_1031_p1;
assign buff_A_5_address1 = zext_ln31_fu_971_p1;
assign buff_A_5_ce0 = buff_A_5_ce0_local;
assign buff_A_5_ce1 = buff_A_5_ce1_local;
assign buff_A_6_address0 = zext_ln31_1_fu_1031_p1;
assign buff_A_6_address1 = zext_ln31_fu_971_p1;
assign buff_A_6_ce0 = buff_A_6_ce0_local;
assign buff_A_6_ce1 = buff_A_6_ce1_local;
assign buff_A_7_address0 = zext_ln31_1_fu_1031_p1;
assign buff_A_7_address1 = zext_ln31_fu_971_p1;
assign buff_A_7_ce0 = buff_A_7_ce0_local;
assign buff_A_7_ce1 = buff_A_7_ce1_local;
assign buff_A_8_address0 = zext_ln31_1_fu_1031_p1;
assign buff_A_8_address1 = zext_ln31_fu_971_p1;
assign buff_A_8_ce0 = buff_A_8_ce0_local;
assign buff_A_8_ce1 = buff_A_8_ce1_local;
assign buff_A_9_address0 = zext_ln31_1_fu_1031_p1;
assign buff_A_9_address1 = zext_ln31_fu_971_p1;
assign buff_A_9_ce0 = buff_A_9_ce0_local;
assign buff_A_9_ce1 = buff_A_9_ce1_local;
assign buff_A_address0 = zext_ln31_1_fu_1031_p1;
assign buff_A_address1 = zext_ln31_fu_971_p1;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_A_ce1 = buff_A_ce1_local;
assign buff_x2_1_address0 = buff_x2_1_address0_local;
assign buff_x2_1_ce0 = buff_x2_1_ce0_local;
assign buff_x2_1_d0 = reg_770;
assign buff_x2_1_we0 = buff_x2_1_we0_local;
assign buff_x2_2_address0 = buff_x2_2_address0_local;
assign buff_x2_2_ce0 = buff_x2_2_ce0_local;
assign buff_x2_2_d0 = reg_770;
assign buff_x2_2_we0 = buff_x2_2_we0_local;
assign buff_x2_3_address0 = buff_x2_3_address0_local;
assign buff_x2_3_ce0 = buff_x2_3_ce0_local;
assign buff_x2_3_d0 = reg_770;
assign buff_x2_3_we0 = buff_x2_3_we0_local;
assign buff_x2_4_address0 = buff_x2_4_address0_local;
assign buff_x2_4_ce0 = buff_x2_4_ce0_local;
assign buff_x2_4_d0 = reg_770;
assign buff_x2_4_we0 = buff_x2_4_we0_local;
assign buff_x2_5_address0 = buff_x2_5_address0_local;
assign buff_x2_5_ce0 = buff_x2_5_ce0_local;
assign buff_x2_5_d0 = reg_770;
assign buff_x2_5_we0 = buff_x2_5_we0_local;
assign buff_x2_6_address0 = buff_x2_6_address0_local;
assign buff_x2_6_ce0 = buff_x2_6_ce0_local;
assign buff_x2_6_d0 = reg_770;
assign buff_x2_6_we0 = buff_x2_6_we0_local;
assign buff_x2_7_address0 = buff_x2_7_address0_local;
assign buff_x2_7_ce0 = buff_x2_7_ce0_local;
assign buff_x2_7_d0 = reg_770;
assign buff_x2_7_we0 = buff_x2_7_we0_local;
assign buff_x2_address0 = buff_x2_address0_local;
assign buff_x2_ce0 = buff_x2_ce0_local;
assign buff_x2_d0 = reg_770;
assign buff_x2_we0 = buff_x2_we0_local;
assign buff_y2_1_address0 = zext_ln6_1_fu_891_p1;
assign buff_y2_1_ce0 = buff_y2_1_ce0_local;
assign buff_y2_2_address0 = zext_ln6_1_fu_891_p1;
assign buff_y2_2_ce0 = buff_y2_2_ce0_local;
assign buff_y2_3_address0 = zext_ln6_1_fu_891_p1;
assign buff_y2_3_ce0 = buff_y2_3_ce0_local;
assign buff_y2_4_address0 = zext_ln6_1_fu_891_p1;
assign buff_y2_4_ce0 = buff_y2_4_ce0_local;
assign buff_y2_5_address0 = zext_ln6_1_fu_891_p1;
assign buff_y2_5_ce0 = buff_y2_5_ce0_local;
assign buff_y2_6_address0 = zext_ln6_1_fu_891_p1;
assign buff_y2_6_ce0 = buff_y2_6_ce0_local;
assign buff_y2_7_address0 = zext_ln6_1_fu_891_p1;
assign buff_y2_7_ce0 = buff_y2_7_ce0_local;
assign buff_y2_address0 = zext_ln6_1_fu_891_p1;
assign buff_y2_ce0 = buff_y2_ce0_local;
assign first_iter_0_fu_849_p2 = ((select_ln6_fu_833_p3 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_2304_p_ce = 1'b1;
assign grp_fu_2304_p_din0 = grp_fu_762_p0;
assign grp_fu_2304_p_din1 = grp_fu_762_p1;
assign grp_fu_2304_p_opcode = 2'd0;
assign grp_fu_2308_p_ce = 1'b1;
assign grp_fu_2308_p_din0 = grp_fu_766_p0;
assign grp_fu_2308_p_din1 = grp_fu_766_p1;
assign icmp_ln29_fu_801_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 11'd1024) ? 1'b1 : 1'b0);
assign icmp_ln31_1_fu_991_p2 = ((trunc_ln30_fu_952_p1 != 3'd0) ? 1'b1 : 1'b0);
assign lshr_ln6_4_fu_859_p4 = {{select_ln29_fu_841_p3[5:3]}};
assign lshr_ln6_7_fu_955_p4 = {{select_ln6_reg_1286[5:1]}};
assign lshr_ln6_8_fu_881_p4 = {{select_ln6_fu_833_p3[5:3]}};
assign select_ln29_fu_841_p3 = ((tmp_fu_825_p3[0:0] == 1'b1) ? add_ln29_fu_819_p2 : ap_sig_allocacmp_i_load);
assign select_ln31_1_fu_1005_p3 = ((icmp_ln31_1_fu_991_p2[0:0] == 1'b1) ? buff_y2_5_q0 : buff_y2_1_q0);
assign select_ln31_2_fu_1051_p3 = ((icmp_ln31_1_fu_991_p2[0:0] == 1'b1) ? buff_y2_6_q0 : buff_y2_2_q0);
assign select_ln31_3_fu_1059_p3 = ((icmp_ln31_1_fu_991_p2[0:0] == 1'b1) ? buff_y2_7_q0 : buff_y2_3_q0);
assign select_ln31_fu_997_p3 = ((icmp_ln31_1_fu_991_p2[0:0] == 1'b1) ? buff_y2_4_q0 : buff_y2_q0);
assign select_ln6_fu_833_p3 = ((tmp_fu_825_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_1_load);
assign tmp_10_fu_1022_p4 = {{{tmp_8_fu_1013_p4}, {1'd1}}, {lshr_ln6_4_reg_1307}};
assign tmp_4_fu_913_p17 = 'bx;
assign tmp_5_fu_1067_p17 = 'bx;
assign tmp_6_fu_964_p3 = {{lshr_ln6_7_fu_955_p4}, {lshr_ln6_4_reg_1307}};
assign tmp_7_fu_1106_p17 = 'bx;
assign tmp_8_fu_1013_p4 = {{select_ln6_reg_1286[5:2]}};
assign tmp_9_fu_1145_p17 = 'bx;
assign tmp_fu_825_p3 = ap_sig_allocacmp_j_1_load[32'd6];
assign tmp_s_fu_1184_p17 = 'bx;
assign trunc_ln29_fu_855_p1 = select_ln29_fu_841_p3[2:0];
assign trunc_ln30_fu_952_p1 = select_ln6_reg_1286[2:0];
assign zext_ln31_1_fu_1031_p1 = tmp_10_fu_1022_p4;
assign zext_ln31_fu_971_p1 = tmp_6_fu_964_p3;
assign zext_ln6_1_fu_891_p1 = lshr_ln6_8_fu_881_p4;
assign zext_ln6_fu_869_p1 = lshr_ln6_4_fu_859_p4;
endmodule 
