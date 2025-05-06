
module k3mm_k3mm_Pipeline_lp1_lp2_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_B_address0,buff_B_ce0,buff_B_q0,buff_B_address1,buff_B_ce1,buff_B_q1,buff_B_1_address0,buff_B_1_ce0,buff_B_1_q0,buff_B_1_address1,buff_B_1_ce1,buff_B_1_q1,buff_B_2_address0,buff_B_2_ce0,buff_B_2_q0,buff_B_2_address1,buff_B_2_ce1,buff_B_2_q1,buff_B_3_address0,buff_B_3_ce0,buff_B_3_q0,buff_B_3_address1,buff_B_3_ce1,buff_B_3_q1,buff_B_4_address0,buff_B_4_ce0,buff_B_4_q0,buff_B_4_address1,buff_B_4_ce1,buff_B_4_q1,buff_B_5_address0,buff_B_5_ce0,buff_B_5_q0,buff_B_5_address1,buff_B_5_ce1,buff_B_5_q1,buff_B_6_address0,buff_B_6_ce0,buff_B_6_q0,buff_B_6_address1,buff_B_6_ce1,buff_B_6_q1,buff_B_7_address0,buff_B_7_ce0,buff_B_7_q0,buff_B_7_address1,buff_B_7_ce1,buff_B_7_q1,buff_B_8_address0,buff_B_8_ce0,buff_B_8_q0,buff_B_8_address1,buff_B_8_ce1,buff_B_8_q1,buff_B_9_address0,buff_B_9_ce0,buff_B_9_q0,buff_B_9_address1,buff_B_9_ce1,buff_B_9_q1,buff_B_10_address0,buff_B_10_ce0,buff_B_10_q0,buff_B_10_address1,buff_B_10_ce1,buff_B_10_q1,buff_B_11_address0,buff_B_11_ce0,buff_B_11_q0,buff_B_11_address1,buff_B_11_ce1,buff_B_11_q1,buff_B_12_address0,buff_B_12_ce0,buff_B_12_q0,buff_B_12_address1,buff_B_12_ce1,buff_B_12_q1,buff_B_13_address0,buff_B_13_ce0,buff_B_13_q0,buff_B_13_address1,buff_B_13_ce1,buff_B_13_q1,buff_B_14_address0,buff_B_14_ce0,buff_B_14_q0,buff_B_14_address1,buff_B_14_ce1,buff_B_14_q1,buff_B_15_address0,buff_B_15_ce0,buff_B_15_q0,buff_B_15_address1,buff_B_15_ce1,buff_B_15_q1,buff_A_address0,buff_A_ce0,buff_A_q0,buff_A_1_address0,buff_A_1_ce0,buff_A_1_q0,buff_A_2_address0,buff_A_2_ce0,buff_A_2_q0,buff_A_3_address0,buff_A_3_ce0,buff_A_3_q0,buff_A_4_address0,buff_A_4_ce0,buff_A_4_q0,buff_A_5_address0,buff_A_5_ce0,buff_A_5_q0,buff_A_6_address0,buff_A_6_ce0,buff_A_6_q0,buff_A_7_address0,buff_A_7_ce0,buff_A_7_q0,tmp1_address0,tmp1_ce0,tmp1_we0,tmp1_d0,tmp1_q0,tmp1_1_address0,tmp1_1_ce0,tmp1_1_we0,tmp1_1_d0,tmp1_1_q0,tmp1_2_address0,tmp1_2_ce0,tmp1_2_we0,tmp1_2_d0,tmp1_2_q0,tmp1_3_address0,tmp1_3_ce0,tmp1_3_we0,tmp1_3_d0,tmp1_3_q0,tmp1_4_address0,tmp1_4_ce0,tmp1_4_we0,tmp1_4_d0,tmp1_4_q0,tmp1_5_address0,tmp1_5_ce0,tmp1_5_we0,tmp1_5_d0,tmp1_5_q0,tmp1_6_address0,tmp1_6_ce0,tmp1_6_we0,tmp1_6_d0,tmp1_6_q0,tmp1_7_address0,tmp1_7_ce0,tmp1_7_we0,tmp1_7_d0,tmp1_7_q0,grp_fu_8244_p_din0,grp_fu_8244_p_din1,grp_fu_8244_p_opcode,grp_fu_8244_p_dout0,grp_fu_8244_p_ce,grp_fu_8248_p_din0,grp_fu_8248_p_din1,grp_fu_8248_p_dout0,grp_fu_8248_p_ce);  
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
output  [7:0] buff_B_address0;
output   buff_B_ce0;
input  [31:0] buff_B_q0;
output  [7:0] buff_B_address1;
output   buff_B_ce1;
input  [31:0] buff_B_q1;
output  [7:0] buff_B_1_address0;
output   buff_B_1_ce0;
input  [31:0] buff_B_1_q0;
output  [7:0] buff_B_1_address1;
output   buff_B_1_ce1;
input  [31:0] buff_B_1_q1;
output  [7:0] buff_B_2_address0;
output   buff_B_2_ce0;
input  [31:0] buff_B_2_q0;
output  [7:0] buff_B_2_address1;
output   buff_B_2_ce1;
input  [31:0] buff_B_2_q1;
output  [7:0] buff_B_3_address0;
output   buff_B_3_ce0;
input  [31:0] buff_B_3_q0;
output  [7:0] buff_B_3_address1;
output   buff_B_3_ce1;
input  [31:0] buff_B_3_q1;
output  [7:0] buff_B_4_address0;
output   buff_B_4_ce0;
input  [31:0] buff_B_4_q0;
output  [7:0] buff_B_4_address1;
output   buff_B_4_ce1;
input  [31:0] buff_B_4_q1;
output  [7:0] buff_B_5_address0;
output   buff_B_5_ce0;
input  [31:0] buff_B_5_q0;
output  [7:0] buff_B_5_address1;
output   buff_B_5_ce1;
input  [31:0] buff_B_5_q1;
output  [7:0] buff_B_6_address0;
output   buff_B_6_ce0;
input  [31:0] buff_B_6_q0;
output  [7:0] buff_B_6_address1;
output   buff_B_6_ce1;
input  [31:0] buff_B_6_q1;
output  [7:0] buff_B_7_address0;
output   buff_B_7_ce0;
input  [31:0] buff_B_7_q0;
output  [7:0] buff_B_7_address1;
output   buff_B_7_ce1;
input  [31:0] buff_B_7_q1;
output  [7:0] buff_B_8_address0;
output   buff_B_8_ce0;
input  [31:0] buff_B_8_q0;
output  [7:0] buff_B_8_address1;
output   buff_B_8_ce1;
input  [31:0] buff_B_8_q1;
output  [7:0] buff_B_9_address0;
output   buff_B_9_ce0;
input  [31:0] buff_B_9_q0;
output  [7:0] buff_B_9_address1;
output   buff_B_9_ce1;
input  [31:0] buff_B_9_q1;
output  [7:0] buff_B_10_address0;
output   buff_B_10_ce0;
input  [31:0] buff_B_10_q0;
output  [7:0] buff_B_10_address1;
output   buff_B_10_ce1;
input  [31:0] buff_B_10_q1;
output  [7:0] buff_B_11_address0;
output   buff_B_11_ce0;
input  [31:0] buff_B_11_q0;
output  [7:0] buff_B_11_address1;
output   buff_B_11_ce1;
input  [31:0] buff_B_11_q1;
output  [7:0] buff_B_12_address0;
output   buff_B_12_ce0;
input  [31:0] buff_B_12_q0;
output  [7:0] buff_B_12_address1;
output   buff_B_12_ce1;
input  [31:0] buff_B_12_q1;
output  [7:0] buff_B_13_address0;
output   buff_B_13_ce0;
input  [31:0] buff_B_13_q0;
output  [7:0] buff_B_13_address1;
output   buff_B_13_ce1;
input  [31:0] buff_B_13_q1;
output  [7:0] buff_B_14_address0;
output   buff_B_14_ce0;
input  [31:0] buff_B_14_q0;
output  [7:0] buff_B_14_address1;
output   buff_B_14_ce1;
input  [31:0] buff_B_14_q1;
output  [7:0] buff_B_15_address0;
output   buff_B_15_ce0;
input  [31:0] buff_B_15_q0;
output  [7:0] buff_B_15_address1;
output   buff_B_15_ce1;
input  [31:0] buff_B_15_q1;
output  [8:0] buff_A_address0;
output   buff_A_ce0;
input  [31:0] buff_A_q0;
output  [8:0] buff_A_1_address0;
output   buff_A_1_ce0;
input  [31:0] buff_A_1_q0;
output  [8:0] buff_A_2_address0;
output   buff_A_2_ce0;
input  [31:0] buff_A_2_q0;
output  [8:0] buff_A_3_address0;
output   buff_A_3_ce0;
input  [31:0] buff_A_3_q0;
output  [8:0] buff_A_4_address0;
output   buff_A_4_ce0;
input  [31:0] buff_A_4_q0;
output  [8:0] buff_A_5_address0;
output   buff_A_5_ce0;
input  [31:0] buff_A_5_q0;
output  [8:0] buff_A_6_address0;
output   buff_A_6_ce0;
input  [31:0] buff_A_6_q0;
output  [8:0] buff_A_7_address0;
output   buff_A_7_ce0;
input  [31:0] buff_A_7_q0;
output  [8:0] tmp1_address0;
output   tmp1_ce0;
output   tmp1_we0;
output  [31:0] tmp1_d0;
input  [31:0] tmp1_q0;
output  [8:0] tmp1_1_address0;
output   tmp1_1_ce0;
output   tmp1_1_we0;
output  [31:0] tmp1_1_d0;
input  [31:0] tmp1_1_q0;
output  [8:0] tmp1_2_address0;
output   tmp1_2_ce0;
output   tmp1_2_we0;
output  [31:0] tmp1_2_d0;
input  [31:0] tmp1_2_q0;
output  [8:0] tmp1_3_address0;
output   tmp1_3_ce0;
output   tmp1_3_we0;
output  [31:0] tmp1_3_d0;
input  [31:0] tmp1_3_q0;
output  [8:0] tmp1_4_address0;
output   tmp1_4_ce0;
output   tmp1_4_we0;
output  [31:0] tmp1_4_d0;
input  [31:0] tmp1_4_q0;
output  [8:0] tmp1_5_address0;
output   tmp1_5_ce0;
output   tmp1_5_we0;
output  [31:0] tmp1_5_d0;
input  [31:0] tmp1_5_q0;
output  [8:0] tmp1_6_address0;
output   tmp1_6_ce0;
output   tmp1_6_we0;
output  [31:0] tmp1_6_d0;
input  [31:0] tmp1_6_q0;
output  [8:0] tmp1_7_address0;
output   tmp1_7_ce0;
output   tmp1_7_we0;
output  [31:0] tmp1_7_d0;
input  [31:0] tmp1_7_q0;
output  [31:0] grp_fu_8244_p_din0;
output  [31:0] grp_fu_8244_p_din1;
output  [1:0] grp_fu_8244_p_opcode;
input  [31:0] grp_fu_8244_p_dout0;
output   grp_fu_8244_p_ce;
output  [31:0] grp_fu_8248_p_din0;
output  [31:0] grp_fu_8248_p_din1;
input  [31:0] grp_fu_8248_p_dout0;
output   grp_fu_8248_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [28:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] icmp_ln32_reg_1418;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_subdone;
reg   [31:0] reg_786;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln32_fu_830_p2;
wire   [0:0] icmp_ln33_fu_842_p2;
reg   [0:0] icmp_ln33_reg_1422;
wire   [0:0] first_iter_1_fu_953_p2;
reg   [0:0] first_iter_1_reg_1430;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [2:0] trunc_ln33_1_fu_959_p1;
reg   [2:0] trunc_ln33_1_reg_1434;
reg   [2:0] trunc_ln33_1_reg_1434_pp0_iter1_reg;
reg   [8:0] tmp1_addr_1_reg_1443;
reg   [8:0] tmp1_addr_1_reg_1443_pp0_iter1_reg;
reg   [8:0] tmp1_1_addr_1_reg_1448;
reg   [8:0] tmp1_1_addr_1_reg_1448_pp0_iter1_reg;
reg   [8:0] tmp1_2_addr_1_reg_1453;
reg   [8:0] tmp1_2_addr_1_reg_1453_pp0_iter1_reg;
reg   [8:0] tmp1_3_addr_1_reg_1458;
reg   [8:0] tmp1_3_addr_1_reg_1458_pp0_iter1_reg;
reg   [8:0] tmp1_4_addr_1_reg_1463;
reg   [8:0] tmp1_4_addr_1_reg_1463_pp0_iter1_reg;
reg   [8:0] tmp1_5_addr_1_reg_1468;
reg   [8:0] tmp1_5_addr_1_reg_1468_pp0_iter1_reg;
reg   [8:0] tmp1_6_addr_1_reg_1473;
reg   [8:0] tmp1_6_addr_1_reg_1473_pp0_iter1_reg;
reg   [8:0] tmp1_7_addr_reg_1478;
reg   [8:0] tmp1_7_addr_reg_1478_pp0_iter1_reg;
wire   [0:0] icmp_ln35_1_fu_1065_p2;
reg   [0:0] icmp_ln35_1_reg_1603;
reg   [0:0] tmp_2_reg_1691;
reg   [0:0] tmp_2_reg_1691_pp0_iter1_reg;
wire   [31:0] tmp_fu_1140_p19;
reg   [31:0] tmp_reg_1695;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] select_ln35_fu_1179_p3;
reg   [31:0] select_ln35_reg_1700;
wire   [31:0] tmp_73_fu_1186_p19;
reg   [31:0] tmp_73_reg_1705;
wire   [31:0] select_ln35_1_fu_1225_p3;
reg   [31:0] select_ln35_1_reg_1710;
wire   [31:0] tmp_74_fu_1232_p19;
reg   [31:0] tmp_74_reg_1715;
wire   [31:0] select_ln35_2_fu_1271_p3;
reg   [31:0] select_ln35_2_reg_1720;
wire   [31:0] tmp_75_fu_1278_p19;
reg   [31:0] tmp_75_reg_1725;
wire   [31:0] select_ln35_3_fu_1317_p3;
reg   [31:0] select_ln35_3_reg_1730;
wire   [31:0] tmp_76_fu_1324_p19;
reg   [31:0] tmp_76_reg_1735;
reg   [31:0] mul_reg_1740;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [31:0] mul_1_reg_1750;
reg   [31:0] mul_2_reg_1755;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [31:0] mul_3_reg_1760;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] tmp_80_cast_fu_981_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln35_fu_1015_p1;
wire   [63:0] zext_ln35_1_fu_1053_p1;
wire   [63:0] zext_ln35_2_fu_1091_p1;
reg   [6:0] k_fu_146;
wire   [6:0] add_ln34_fu_1111_p2;
wire    ap_loop_init;
reg   [6:0] j_fu_150;
wire   [6:0] select_ln33_fu_945_p3;
reg   [11:0] indvar_flatten9_fu_154;
wire   [11:0] select_ln33_1_fu_854_p3;
reg   [11:0] ap_sig_allocacmp_indvar_flatten9_load;
wire    ap_block_pp0_stage0;
reg   [6:0] i_fu_158;
wire   [6:0] select_ln32_fu_920_p3;
reg   [16:0] indvar_flatten23_fu_162;
wire   [16:0] add_ln32_1_fu_836_p2;
reg   [16:0] ap_sig_allocacmp_indvar_flatten23_load;
reg   [31:0] empty_fu_166;
wire    ap_block_pp0_stage7;
reg    tmp1_ce0_local;
reg   [8:0] tmp1_address0_local;
reg    tmp1_we0_local;
wire    ap_block_pp0_stage6;
reg    tmp1_1_ce0_local;
reg   [8:0] tmp1_1_address0_local;
reg    tmp1_1_we0_local;
reg    tmp1_2_ce0_local;
reg   [8:0] tmp1_2_address0_local;
reg    tmp1_2_we0_local;
reg    tmp1_3_ce0_local;
reg   [8:0] tmp1_3_address0_local;
reg    tmp1_3_we0_local;
reg    tmp1_4_ce0_local;
reg   [8:0] tmp1_4_address0_local;
reg    tmp1_4_we0_local;
reg    tmp1_5_ce0_local;
reg   [8:0] tmp1_5_address0_local;
reg    tmp1_5_we0_local;
reg    tmp1_6_ce0_local;
reg   [8:0] tmp1_6_address0_local;
reg    tmp1_6_we0_local;
reg    tmp1_7_ce0_local;
reg   [8:0] tmp1_7_address0_local;
reg    tmp1_7_we0_local;
reg    buff_A_ce0_local;
reg    buff_A_4_ce0_local;
reg    buff_B_ce1_local;
reg    buff_B_ce0_local;
reg    buff_B_2_ce1_local;
reg    buff_B_2_ce0_local;
reg    buff_B_4_ce1_local;
reg    buff_B_4_ce0_local;
reg    buff_B_6_ce1_local;
reg    buff_B_6_ce0_local;
reg    buff_B_8_ce1_local;
reg    buff_B_8_ce0_local;
reg    buff_B_10_ce1_local;
reg    buff_B_10_ce0_local;
reg    buff_B_12_ce1_local;
reg    buff_B_12_ce0_local;
reg    buff_B_14_ce1_local;
reg    buff_B_14_ce0_local;
reg    buff_A_1_ce0_local;
reg    buff_A_5_ce0_local;
reg    buff_B_1_ce1_local;
reg    buff_B_1_ce0_local;
reg    buff_B_3_ce1_local;
reg    buff_B_3_ce0_local;
reg    buff_B_5_ce1_local;
reg    buff_B_5_ce0_local;
reg    buff_B_7_ce1_local;
reg    buff_B_7_ce0_local;
reg    buff_B_9_ce1_local;
reg    buff_B_9_ce0_local;
reg    buff_B_11_ce1_local;
reg    buff_B_11_ce0_local;
reg    buff_B_13_ce1_local;
reg    buff_B_13_ce0_local;
reg    buff_B_15_ce1_local;
reg    buff_B_15_ce0_local;
reg    buff_A_2_ce0_local;
reg    buff_A_6_ce0_local;
reg    buff_A_3_ce0_local;
reg    buff_A_7_ce0_local;
reg   [31:0] grp_fu_778_p0;
reg   [31:0] grp_fu_778_p1;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21;
wire    ap_block_pp0_stage28;
reg   [31:0] grp_fu_782_p0;
reg   [31:0] grp_fu_782_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire   [11:0] add_ln33_1_fu_848_p2;
wire   [0:0] tmp_1_fu_901_p3;
wire   [0:0] xor_ln34_fu_909_p2;
wire   [6:0] add_ln32_fu_881_p2;
wire   [6:0] select_ln10_fu_887_p3;
wire   [0:0] or_ln10_fu_915_p2;
wire   [6:0] select_ln10_1_fu_894_p3;
wire   [6:0] add_ln33_fu_931_p2;
wire   [6:0] k_mid2_fu_937_p3;
wire   [5:0] trunc_ln33_fu_927_p1;
wire   [2:0] lshr_ln10_2_fu_963_p4;
wire   [8:0] tmp_80_fu_973_p3;
wire   [4:0] lshr_ln10_4_fu_997_p4;
wire   [7:0] tmp_s_fu_1007_p3;
wire   [2:0] lshr_ln10_5_fu_1035_p4;
wire   [8:0] tmp_81_fu_1045_p3;
wire   [2:0] trunc_ln34_fu_993_p1;
wire   [3:0] tmp_82_fu_1071_p4;
wire   [7:0] tmp_83_fu_1081_p4;
wire   [31:0] tmp_fu_1140_p17;
wire    ap_block_pp0_stage2;
wire   [31:0] tmp_73_fu_1186_p17;
wire   [31:0] tmp_74_fu_1232_p17;
wire   [31:0] tmp_75_fu_1278_p17;
wire   [31:0] tmp_76_fu_1324_p17;
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
reg    ap_condition_1484;
wire   [2:0] tmp_fu_1140_p1;
wire   [2:0] tmp_fu_1140_p3;
wire   [2:0] tmp_fu_1140_p5;
wire   [2:0] tmp_fu_1140_p7;
wire  signed [2:0] tmp_fu_1140_p9;
wire  signed [2:0] tmp_fu_1140_p11;
wire  signed [2:0] tmp_fu_1140_p13;
wire  signed [2:0] tmp_fu_1140_p15;
wire   [2:0] tmp_73_fu_1186_p1;
wire   [2:0] tmp_73_fu_1186_p3;
wire   [2:0] tmp_73_fu_1186_p5;
wire   [2:0] tmp_73_fu_1186_p7;
wire  signed [2:0] tmp_73_fu_1186_p9;
wire  signed [2:0] tmp_73_fu_1186_p11;
wire  signed [2:0] tmp_73_fu_1186_p13;
wire  signed [2:0] tmp_73_fu_1186_p15;
wire   [2:0] tmp_74_fu_1232_p1;
wire   [2:0] tmp_74_fu_1232_p3;
wire   [2:0] tmp_74_fu_1232_p5;
wire   [2:0] tmp_74_fu_1232_p7;
wire  signed [2:0] tmp_74_fu_1232_p9;
wire  signed [2:0] tmp_74_fu_1232_p11;
wire  signed [2:0] tmp_74_fu_1232_p13;
wire  signed [2:0] tmp_74_fu_1232_p15;
wire   [2:0] tmp_75_fu_1278_p1;
wire   [2:0] tmp_75_fu_1278_p3;
wire   [2:0] tmp_75_fu_1278_p5;
wire   [2:0] tmp_75_fu_1278_p7;
wire  signed [2:0] tmp_75_fu_1278_p9;
wire  signed [2:0] tmp_75_fu_1278_p11;
wire  signed [2:0] tmp_75_fu_1278_p13;
wire  signed [2:0] tmp_75_fu_1278_p15;
wire   [2:0] tmp_76_fu_1324_p1;
wire   [2:0] tmp_76_fu_1324_p3;
wire   [2:0] tmp_76_fu_1324_p5;
wire   [2:0] tmp_76_fu_1324_p7;
wire  signed [2:0] tmp_76_fu_1324_p9;
wire  signed [2:0] tmp_76_fu_1324_p11;
wire  signed [2:0] tmp_76_fu_1324_p13;
wire  signed [2:0] tmp_76_fu_1324_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 29'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_146 = 7'd0;
#0 j_fu_150 = 7'd0;
#0 indvar_flatten9_fu_154 = 12'd0;
#0 i_fu_158 = 7'd0;
#0 indvar_flatten23_fu_162 = 17'd0;
#0 empty_fu_166 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) k3mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1107(.din0(tmp1_q0),.din1(tmp1_1_q0),.din2(tmp1_2_q0),.din3(tmp1_3_q0),.din4(tmp1_4_q0),.din5(tmp1_5_q0),.din6(tmp1_6_q0),.din7(tmp1_7_q0),.def(tmp_fu_1140_p17),.sel(trunc_ln33_1_reg_1434),.dout(tmp_fu_1140_p19));
(* dissolve_hierarchy = "yes" *) k3mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1108(.din0(buff_B_q1),.din1(buff_B_2_q1),.din2(buff_B_4_q1),.din3(buff_B_6_q1),.din4(buff_B_8_q1),.din5(buff_B_10_q1),.din6(buff_B_12_q1),.din7(buff_B_14_q1),.def(tmp_73_fu_1186_p17),.sel(trunc_ln33_1_reg_1434),.dout(tmp_73_fu_1186_p19));
(* dissolve_hierarchy = "yes" *) k3mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1109(.din0(buff_B_1_q1),.din1(buff_B_3_q1),.din2(buff_B_5_q1),.din3(buff_B_7_q1),.din4(buff_B_9_q1),.din5(buff_B_11_q1),.din6(buff_B_13_q1),.din7(buff_B_15_q1),.def(tmp_74_fu_1232_p17),.sel(trunc_ln33_1_reg_1434),.dout(tmp_74_fu_1232_p19));
(* dissolve_hierarchy = "yes" *) k3mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1110(.din0(buff_B_q0),.din1(buff_B_2_q0),.din2(buff_B_4_q0),.din3(buff_B_6_q0),.din4(buff_B_8_q0),.din5(buff_B_10_q0),.din6(buff_B_12_q0),.din7(buff_B_14_q0),.def(tmp_75_fu_1278_p17),.sel(trunc_ln33_1_reg_1434),.dout(tmp_75_fu_1278_p19));
(* dissolve_hierarchy = "yes" *) k3mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1111(.din0(buff_B_1_q0),.din1(buff_B_3_q0),.din2(buff_B_5_q0),.din3(buff_B_7_q0),.din4(buff_B_9_q0),.din5(buff_B_11_q0),.din6(buff_B_13_q0),.din7(buff_B_15_q0),.def(tmp_76_fu_1324_p17),.sel(trunc_ln33_1_reg_1434),.dout(tmp_76_fu_1324_p19));
k3mm_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage6),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if ((1'b1 == ap_condition_1484)) begin
            empty_fu_166 <= tmp_reg_1695;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_fu_166 <= reg_786;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_158 <= 7'd0;
    end else if (((icmp_ln32_reg_1418 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_158 <= select_ln32_fu_920_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln32_fu_830_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten23_fu_162 <= add_ln32_1_fu_836_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten23_fu_162 <= 17'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln32_fu_830_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten9_fu_154 <= select_ln33_1_fu_854_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten9_fu_154 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_150 <= 7'd0;
    end else if (((icmp_ln32_reg_1418 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_150 <= select_ln33_fu_945_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_146 <= 7'd0;
    end else if (((icmp_ln32_reg_1418 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        k_fu_146 <= add_ln34_fu_1111_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        first_iter_1_reg_1430 <= first_iter_1_fu_953_p2;
        icmp_ln35_1_reg_1603 <= icmp_ln35_1_fu_1065_p2;
        tmp1_1_addr_1_reg_1448 <= tmp_80_cast_fu_981_p1;
        tmp1_1_addr_1_reg_1448_pp0_iter1_reg <= tmp1_1_addr_1_reg_1448;
        tmp1_2_addr_1_reg_1453 <= tmp_80_cast_fu_981_p1;
        tmp1_2_addr_1_reg_1453_pp0_iter1_reg <= tmp1_2_addr_1_reg_1453;
        tmp1_3_addr_1_reg_1458 <= tmp_80_cast_fu_981_p1;
        tmp1_3_addr_1_reg_1458_pp0_iter1_reg <= tmp1_3_addr_1_reg_1458;
        tmp1_4_addr_1_reg_1463 <= tmp_80_cast_fu_981_p1;
        tmp1_4_addr_1_reg_1463_pp0_iter1_reg <= tmp1_4_addr_1_reg_1463;
        tmp1_5_addr_1_reg_1468 <= tmp_80_cast_fu_981_p1;
        tmp1_5_addr_1_reg_1468_pp0_iter1_reg <= tmp1_5_addr_1_reg_1468;
        tmp1_6_addr_1_reg_1473 <= tmp_80_cast_fu_981_p1;
        tmp1_6_addr_1_reg_1473_pp0_iter1_reg <= tmp1_6_addr_1_reg_1473;
        tmp1_7_addr_reg_1478 <= tmp_80_cast_fu_981_p1;
        tmp1_7_addr_reg_1478_pp0_iter1_reg <= tmp1_7_addr_reg_1478;
        tmp1_addr_1_reg_1443 <= tmp_80_cast_fu_981_p1;
        tmp1_addr_1_reg_1443_pp0_iter1_reg <= tmp1_addr_1_reg_1443;
        tmp_2_reg_1691 <= add_ln34_fu_1111_p2[32'd6];
        tmp_2_reg_1691_pp0_iter1_reg <= tmp_2_reg_1691;
        trunc_ln33_1_reg_1434 <= trunc_ln33_1_fu_959_p1;
        trunc_ln33_1_reg_1434_pp0_iter1_reg <= trunc_ln33_1_reg_1434;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln32_reg_1418 <= icmp_ln32_fu_830_p2;
        icmp_ln33_reg_1422 <= icmp_ln33_fu_842_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul_1_reg_1750 <= grp_fu_8248_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul_2_reg_1755 <= grp_fu_8248_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul_3_reg_1760 <= grp_fu_8248_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul_reg_1740 <= grp_fu_8248_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_786 <= grp_fu_8244_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln35_1_reg_1710 <= select_ln35_1_fu_1225_p3;
        select_ln35_2_reg_1720 <= select_ln35_2_fu_1271_p3;
        select_ln35_3_reg_1730 <= select_ln35_3_fu_1317_p3;
        select_ln35_reg_1700 <= select_ln35_fu_1179_p3;
        tmp_73_reg_1705 <= tmp_73_fu_1186_p19;
        tmp_74_reg_1715 <= tmp_74_fu_1232_p19;
        tmp_75_reg_1725 <= tmp_75_fu_1278_p19;
        tmp_76_reg_1735 <= tmp_76_fu_1324_p19;
        tmp_reg_1695 <= tmp_fu_1140_p19;
    end
end
always @ (*) begin
    if (((icmp_ln32_reg_1418 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
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
        ap_sig_allocacmp_indvar_flatten23_load = 17'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten23_load = indvar_flatten23_fu_162;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten9_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten9_load = indvar_flatten9_fu_154;
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
        buff_A_2_ce0_local = 1'b1;
    end else begin
        buff_A_2_ce0_local = 1'b0;
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
        buff_A_4_ce0_local = 1'b1;
    end else begin
        buff_A_4_ce0_local = 1'b0;
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
        buff_A_6_ce0_local = 1'b1;
    end else begin
        buff_A_6_ce0_local = 1'b0;
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
        buff_A_ce0_local = 1'b1;
    end else begin
        buff_A_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_10_ce0_local = 1'b1;
    end else begin
        buff_B_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_10_ce1_local = 1'b1;
    end else begin
        buff_B_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_11_ce0_local = 1'b1;
    end else begin
        buff_B_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_11_ce1_local = 1'b1;
    end else begin
        buff_B_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_12_ce0_local = 1'b1;
    end else begin
        buff_B_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_12_ce1_local = 1'b1;
    end else begin
        buff_B_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_13_ce0_local = 1'b1;
    end else begin
        buff_B_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_13_ce1_local = 1'b1;
    end else begin
        buff_B_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_14_ce0_local = 1'b1;
    end else begin
        buff_B_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_14_ce1_local = 1'b1;
    end else begin
        buff_B_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_15_ce0_local = 1'b1;
    end else begin
        buff_B_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_15_ce1_local = 1'b1;
    end else begin
        buff_B_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_1_ce0_local = 1'b1;
    end else begin
        buff_B_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_1_ce1_local = 1'b1;
    end else begin
        buff_B_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_2_ce0_local = 1'b1;
    end else begin
        buff_B_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_2_ce1_local = 1'b1;
    end else begin
        buff_B_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_3_ce0_local = 1'b1;
    end else begin
        buff_B_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_3_ce1_local = 1'b1;
    end else begin
        buff_B_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_4_ce0_local = 1'b1;
    end else begin
        buff_B_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_4_ce1_local = 1'b1;
    end else begin
        buff_B_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_5_ce0_local = 1'b1;
    end else begin
        buff_B_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_5_ce1_local = 1'b1;
    end else begin
        buff_B_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_6_ce0_local = 1'b1;
    end else begin
        buff_B_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_6_ce1_local = 1'b1;
    end else begin
        buff_B_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_7_ce0_local = 1'b1;
    end else begin
        buff_B_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_7_ce1_local = 1'b1;
    end else begin
        buff_B_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_8_ce0_local = 1'b1;
    end else begin
        buff_B_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_8_ce1_local = 1'b1;
    end else begin
        buff_B_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_9_ce0_local = 1'b1;
    end else begin
        buff_B_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_9_ce1_local = 1'b1;
    end else begin
        buff_B_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_ce0_local = 1'b1;
    end else begin
        buff_B_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_B_ce1_local = 1'b1;
    end else begin
        buff_B_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        grp_fu_778_p0 = reg_786;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_778_p0 = empty_fu_166;
    end else begin
        grp_fu_778_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage28) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
            grp_fu_778_p1 = mul_3_reg_1760;
        end else if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            grp_fu_778_p1 = mul_2_reg_1755;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_778_p1 = mul_1_reg_1750;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_778_p1 = mul_reg_1740;
        end else begin
            grp_fu_778_p1 = 'bx;
        end
    end else begin
        grp_fu_778_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_782_p0 = select_ln35_3_reg_1730;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_782_p0 = select_ln35_2_reg_1720;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_782_p0 = select_ln35_1_reg_1710;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_782_p0 = select_ln35_reg_1700;
        end else begin
            grp_fu_782_p0 = 'bx;
        end
    end else begin
        grp_fu_782_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_782_p1 = tmp_76_reg_1735;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_782_p1 = tmp_75_reg_1725;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_782_p1 = tmp_74_reg_1715;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_782_p1 = tmp_73_reg_1705;
        end else begin
            grp_fu_782_p1 = 'bx;
        end
    end else begin
        grp_fu_782_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp1_1_address0_local = tmp1_1_addr_1_reg_1448_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_1_address0_local = tmp_80_cast_fu_981_p1;
    end else begin
        tmp1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        tmp1_1_ce0_local = 1'b1;
    end else begin
        tmp1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_2_reg_1691_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln33_1_reg_1434_pp0_iter1_reg == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp1_1_we0_local = 1'b1;
    end else begin
        tmp1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp1_2_address0_local = tmp1_2_addr_1_reg_1453_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_2_address0_local = tmp_80_cast_fu_981_p1;
    end else begin
        tmp1_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        tmp1_2_ce0_local = 1'b1;
    end else begin
        tmp1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_2_reg_1691_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln33_1_reg_1434_pp0_iter1_reg == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp1_2_we0_local = 1'b1;
    end else begin
        tmp1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp1_3_address0_local = tmp1_3_addr_1_reg_1458_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_3_address0_local = tmp_80_cast_fu_981_p1;
    end else begin
        tmp1_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        tmp1_3_ce0_local = 1'b1;
    end else begin
        tmp1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_2_reg_1691_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln33_1_reg_1434_pp0_iter1_reg == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp1_3_we0_local = 1'b1;
    end else begin
        tmp1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp1_4_address0_local = tmp1_4_addr_1_reg_1463_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_4_address0_local = tmp_80_cast_fu_981_p1;
    end else begin
        tmp1_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        tmp1_4_ce0_local = 1'b1;
    end else begin
        tmp1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_2_reg_1691_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln33_1_reg_1434_pp0_iter1_reg == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp1_4_we0_local = 1'b1;
    end else begin
        tmp1_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp1_5_address0_local = tmp1_5_addr_1_reg_1468_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_5_address0_local = tmp_80_cast_fu_981_p1;
    end else begin
        tmp1_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        tmp1_5_ce0_local = 1'b1;
    end else begin
        tmp1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_2_reg_1691_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln33_1_reg_1434_pp0_iter1_reg == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp1_5_we0_local = 1'b1;
    end else begin
        tmp1_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp1_6_address0_local = tmp1_6_addr_1_reg_1473_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_6_address0_local = tmp_80_cast_fu_981_p1;
    end else begin
        tmp1_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        tmp1_6_ce0_local = 1'b1;
    end else begin
        tmp1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_2_reg_1691_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln33_1_reg_1434_pp0_iter1_reg == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp1_6_we0_local = 1'b1;
    end else begin
        tmp1_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp1_7_address0_local = tmp1_7_addr_reg_1478_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_7_address0_local = tmp_80_cast_fu_981_p1;
    end else begin
        tmp1_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        tmp1_7_ce0_local = 1'b1;
    end else begin
        tmp1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_2_reg_1691_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln33_1_reg_1434_pp0_iter1_reg == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp1_7_we0_local = 1'b1;
    end else begin
        tmp1_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp1_address0_local = tmp1_addr_1_reg_1443_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_address0_local = tmp_80_cast_fu_981_p1;
    end else begin
        tmp1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        tmp1_ce0_local = 1'b1;
    end else begin
        tmp1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_2_reg_1691_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (trunc_ln33_1_reg_1434_pp0_iter1_reg == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp1_we0_local = 1'b1;
    end else begin
        tmp1_we0_local = 1'b0;
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
assign add_ln32_1_fu_836_p2 = (ap_sig_allocacmp_indvar_flatten23_load + 17'd1);
assign add_ln32_fu_881_p2 = (i_fu_158 + 7'd1);
assign add_ln33_1_fu_848_p2 = (ap_sig_allocacmp_indvar_flatten9_load + 12'd1);
assign add_ln33_fu_931_p2 = (select_ln10_fu_887_p3 + 7'd1);
assign add_ln34_fu_1111_p2 = (k_mid2_fu_937_p3 + 7'd4);
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
    ap_condition_1484 = ((icmp_ln32_reg_1418 == 1'd0) & (first_iter_1_reg_1430 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign buff_A_1_address0 = zext_ln35_1_fu_1053_p1;
assign buff_A_1_ce0 = buff_A_1_ce0_local;
assign buff_A_2_address0 = zext_ln35_1_fu_1053_p1;
assign buff_A_2_ce0 = buff_A_2_ce0_local;
assign buff_A_3_address0 = zext_ln35_1_fu_1053_p1;
assign buff_A_3_ce0 = buff_A_3_ce0_local;
assign buff_A_4_address0 = zext_ln35_1_fu_1053_p1;
assign buff_A_4_ce0 = buff_A_4_ce0_local;
assign buff_A_5_address0 = zext_ln35_1_fu_1053_p1;
assign buff_A_5_ce0 = buff_A_5_ce0_local;
assign buff_A_6_address0 = zext_ln35_1_fu_1053_p1;
assign buff_A_6_ce0 = buff_A_6_ce0_local;
assign buff_A_7_address0 = zext_ln35_1_fu_1053_p1;
assign buff_A_7_ce0 = buff_A_7_ce0_local;
assign buff_A_address0 = zext_ln35_1_fu_1053_p1;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_B_10_address0 = zext_ln35_2_fu_1091_p1;
assign buff_B_10_address1 = zext_ln35_fu_1015_p1;
assign buff_B_10_ce0 = buff_B_10_ce0_local;
assign buff_B_10_ce1 = buff_B_10_ce1_local;
assign buff_B_11_address0 = zext_ln35_2_fu_1091_p1;
assign buff_B_11_address1 = zext_ln35_fu_1015_p1;
assign buff_B_11_ce0 = buff_B_11_ce0_local;
assign buff_B_11_ce1 = buff_B_11_ce1_local;
assign buff_B_12_address0 = zext_ln35_2_fu_1091_p1;
assign buff_B_12_address1 = zext_ln35_fu_1015_p1;
assign buff_B_12_ce0 = buff_B_12_ce0_local;
assign buff_B_12_ce1 = buff_B_12_ce1_local;
assign buff_B_13_address0 = zext_ln35_2_fu_1091_p1;
assign buff_B_13_address1 = zext_ln35_fu_1015_p1;
assign buff_B_13_ce0 = buff_B_13_ce0_local;
assign buff_B_13_ce1 = buff_B_13_ce1_local;
assign buff_B_14_address0 = zext_ln35_2_fu_1091_p1;
assign buff_B_14_address1 = zext_ln35_fu_1015_p1;
assign buff_B_14_ce0 = buff_B_14_ce0_local;
assign buff_B_14_ce1 = buff_B_14_ce1_local;
assign buff_B_15_address0 = zext_ln35_2_fu_1091_p1;
assign buff_B_15_address1 = zext_ln35_fu_1015_p1;
assign buff_B_15_ce0 = buff_B_15_ce0_local;
assign buff_B_15_ce1 = buff_B_15_ce1_local;
assign buff_B_1_address0 = zext_ln35_2_fu_1091_p1;
assign buff_B_1_address1 = zext_ln35_fu_1015_p1;
assign buff_B_1_ce0 = buff_B_1_ce0_local;
assign buff_B_1_ce1 = buff_B_1_ce1_local;
assign buff_B_2_address0 = zext_ln35_2_fu_1091_p1;
assign buff_B_2_address1 = zext_ln35_fu_1015_p1;
assign buff_B_2_ce0 = buff_B_2_ce0_local;
assign buff_B_2_ce1 = buff_B_2_ce1_local;
assign buff_B_3_address0 = zext_ln35_2_fu_1091_p1;
assign buff_B_3_address1 = zext_ln35_fu_1015_p1;
assign buff_B_3_ce0 = buff_B_3_ce0_local;
assign buff_B_3_ce1 = buff_B_3_ce1_local;
assign buff_B_4_address0 = zext_ln35_2_fu_1091_p1;
assign buff_B_4_address1 = zext_ln35_fu_1015_p1;
assign buff_B_4_ce0 = buff_B_4_ce0_local;
assign buff_B_4_ce1 = buff_B_4_ce1_local;
assign buff_B_5_address0 = zext_ln35_2_fu_1091_p1;
assign buff_B_5_address1 = zext_ln35_fu_1015_p1;
assign buff_B_5_ce0 = buff_B_5_ce0_local;
assign buff_B_5_ce1 = buff_B_5_ce1_local;
assign buff_B_6_address0 = zext_ln35_2_fu_1091_p1;
assign buff_B_6_address1 = zext_ln35_fu_1015_p1;
assign buff_B_6_ce0 = buff_B_6_ce0_local;
assign buff_B_6_ce1 = buff_B_6_ce1_local;
assign buff_B_7_address0 = zext_ln35_2_fu_1091_p1;
assign buff_B_7_address1 = zext_ln35_fu_1015_p1;
assign buff_B_7_ce0 = buff_B_7_ce0_local;
assign buff_B_7_ce1 = buff_B_7_ce1_local;
assign buff_B_8_address0 = zext_ln35_2_fu_1091_p1;
assign buff_B_8_address1 = zext_ln35_fu_1015_p1;
assign buff_B_8_ce0 = buff_B_8_ce0_local;
assign buff_B_8_ce1 = buff_B_8_ce1_local;
assign buff_B_9_address0 = zext_ln35_2_fu_1091_p1;
assign buff_B_9_address1 = zext_ln35_fu_1015_p1;
assign buff_B_9_ce0 = buff_B_9_ce0_local;
assign buff_B_9_ce1 = buff_B_9_ce1_local;
assign buff_B_address0 = zext_ln35_2_fu_1091_p1;
assign buff_B_address1 = zext_ln35_fu_1015_p1;
assign buff_B_ce0 = buff_B_ce0_local;
assign buff_B_ce1 = buff_B_ce1_local;
assign first_iter_1_fu_953_p2 = ((k_mid2_fu_937_p3 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_8244_p_ce = 1'b1;
assign grp_fu_8244_p_din0 = grp_fu_778_p0;
assign grp_fu_8244_p_din1 = grp_fu_778_p1;
assign grp_fu_8244_p_opcode = 2'd0;
assign grp_fu_8248_p_ce = 1'b1;
assign grp_fu_8248_p_din0 = grp_fu_782_p0;
assign grp_fu_8248_p_din1 = grp_fu_782_p1;
assign icmp_ln32_fu_830_p2 = ((ap_sig_allocacmp_indvar_flatten23_load == 17'd65536) ? 1'b1 : 1'b0);
assign icmp_ln33_fu_842_p2 = ((ap_sig_allocacmp_indvar_flatten9_load == 12'd1024) ? 1'b1 : 1'b0);
assign icmp_ln35_1_fu_1065_p2 = ((trunc_ln34_fu_993_p1 != 3'd0) ? 1'b1 : 1'b0);
assign k_mid2_fu_937_p3 = ((or_ln10_fu_915_p2[0:0] == 1'b1) ? select_ln10_1_fu_894_p3 : 7'd0);
assign lshr_ln10_2_fu_963_p4 = {{select_ln33_fu_945_p3[5:3]}};
assign lshr_ln10_4_fu_997_p4 = {{k_mid2_fu_937_p3[5:1]}};
assign lshr_ln10_5_fu_1035_p4 = {{k_mid2_fu_937_p3[5:3]}};
assign or_ln10_fu_915_p2 = (xor_ln34_fu_909_p2 | icmp_ln33_reg_1422);
assign select_ln10_1_fu_894_p3 = ((icmp_ln33_reg_1422[0:0] == 1'b1) ? 7'd0 : k_fu_146);
assign select_ln10_fu_887_p3 = ((icmp_ln33_reg_1422[0:0] == 1'b1) ? 7'd0 : j_fu_150);
assign select_ln32_fu_920_p3 = ((icmp_ln33_reg_1422[0:0] == 1'b1) ? add_ln32_fu_881_p2 : i_fu_158);
assign select_ln33_1_fu_854_p3 = ((icmp_ln33_fu_842_p2[0:0] == 1'b1) ? 12'd1 : add_ln33_1_fu_848_p2);
assign select_ln33_fu_945_p3 = ((or_ln10_fu_915_p2[0:0] == 1'b1) ? select_ln10_fu_887_p3 : add_ln33_fu_931_p2);
assign select_ln35_1_fu_1225_p3 = ((icmp_ln35_1_reg_1603[0:0] == 1'b1) ? buff_A_5_q0 : buff_A_1_q0);
assign select_ln35_2_fu_1271_p3 = ((icmp_ln35_1_reg_1603[0:0] == 1'b1) ? buff_A_6_q0 : buff_A_2_q0);
assign select_ln35_3_fu_1317_p3 = ((icmp_ln35_1_reg_1603[0:0] == 1'b1) ? buff_A_7_q0 : buff_A_3_q0);
assign select_ln35_fu_1179_p3 = ((icmp_ln35_1_reg_1603[0:0] == 1'b1) ? buff_A_4_q0 : buff_A_q0);
assign tmp1_1_address0 = tmp1_1_address0_local;
assign tmp1_1_ce0 = tmp1_1_ce0_local;
assign tmp1_1_d0 = reg_786;
assign tmp1_1_we0 = tmp1_1_we0_local;
assign tmp1_2_address0 = tmp1_2_address0_local;
assign tmp1_2_ce0 = tmp1_2_ce0_local;
assign tmp1_2_d0 = reg_786;
assign tmp1_2_we0 = tmp1_2_we0_local;
assign tmp1_3_address0 = tmp1_3_address0_local;
assign tmp1_3_ce0 = tmp1_3_ce0_local;
assign tmp1_3_d0 = reg_786;
assign tmp1_3_we0 = tmp1_3_we0_local;
assign tmp1_4_address0 = tmp1_4_address0_local;
assign tmp1_4_ce0 = tmp1_4_ce0_local;
assign tmp1_4_d0 = reg_786;
assign tmp1_4_we0 = tmp1_4_we0_local;
assign tmp1_5_address0 = tmp1_5_address0_local;
assign tmp1_5_ce0 = tmp1_5_ce0_local;
assign tmp1_5_d0 = reg_786;
assign tmp1_5_we0 = tmp1_5_we0_local;
assign tmp1_6_address0 = tmp1_6_address0_local;
assign tmp1_6_ce0 = tmp1_6_ce0_local;
assign tmp1_6_d0 = reg_786;
assign tmp1_6_we0 = tmp1_6_we0_local;
assign tmp1_7_address0 = tmp1_7_address0_local;
assign tmp1_7_ce0 = tmp1_7_ce0_local;
assign tmp1_7_d0 = reg_786;
assign tmp1_7_we0 = tmp1_7_we0_local;
assign tmp1_address0 = tmp1_address0_local;
assign tmp1_ce0 = tmp1_ce0_local;
assign tmp1_d0 = reg_786;
assign tmp1_we0 = tmp1_we0_local;
assign tmp_1_fu_901_p3 = k_fu_146[32'd6];
assign tmp_73_fu_1186_p17 = 'bx;
assign tmp_74_fu_1232_p17 = 'bx;
assign tmp_75_fu_1278_p17 = 'bx;
assign tmp_76_fu_1324_p17 = 'bx;
assign tmp_80_cast_fu_981_p1 = tmp_80_fu_973_p3;
assign tmp_80_fu_973_p3 = {{trunc_ln33_fu_927_p1}, {lshr_ln10_2_fu_963_p4}};
assign tmp_81_fu_1045_p3 = {{trunc_ln33_fu_927_p1}, {lshr_ln10_5_fu_1035_p4}};
assign tmp_82_fu_1071_p4 = {{k_mid2_fu_937_p3[5:2]}};
assign tmp_83_fu_1081_p4 = {{{tmp_82_fu_1071_p4}, {1'd1}}, {lshr_ln10_2_fu_963_p4}};
assign tmp_fu_1140_p17 = 'bx;
assign tmp_s_fu_1007_p3 = {{lshr_ln10_4_fu_997_p4}, {lshr_ln10_2_fu_963_p4}};
assign trunc_ln33_1_fu_959_p1 = select_ln33_fu_945_p3[2:0];
assign trunc_ln33_fu_927_p1 = select_ln32_fu_920_p3[5:0];
assign trunc_ln34_fu_993_p1 = k_mid2_fu_937_p3[2:0];
assign xor_ln34_fu_909_p2 = (tmp_1_fu_901_p3 ^ 1'd1);
assign zext_ln35_1_fu_1053_p1 = tmp_81_fu_1045_p3;
assign zext_ln35_2_fu_1091_p1 = tmp_83_fu_1081_p4;
assign zext_ln35_fu_1015_p1 = tmp_s_fu_1007_p3;
endmodule 
