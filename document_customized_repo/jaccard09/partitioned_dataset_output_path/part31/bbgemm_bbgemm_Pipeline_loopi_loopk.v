
module bbgemm_bbgemm_Pipeline_loopi_loopk (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,indvars_iv77_udiv,m1_1_address0,m1_1_ce0,m1_1_q0,m1_3_address0,m1_3_ce0,m1_3_q0,m1_5_address0,m1_5_ce0,m1_5_q0,m1_7_address0,m1_7_ce0,m1_7_q0,m1_0_address0,m1_0_ce0,m1_0_q0,m1_2_address0,m1_2_ce0,m1_2_q0,m1_4_address0,m1_4_ce0,m1_4_q0,m1_6_address0,m1_6_ce0,m1_6_q0,indvars_iv79_udiv,m2_0_address0,m2_0_ce0,m2_0_q0,m2_0_address1,m2_0_ce1,m2_0_q1,m2_1_address0,m2_1_ce0,m2_1_q0,m2_1_address1,m2_1_ce1,m2_1_q1,m2_2_address0,m2_2_ce0,m2_2_q0,m2_2_address1,m2_2_ce1,m2_2_q1,m2_3_address0,m2_3_ce0,m2_3_q0,m2_3_address1,m2_3_ce1,m2_3_q1,m2_4_address0,m2_4_ce0,m2_4_q0,m2_4_address1,m2_4_ce1,m2_4_q1,m2_5_address0,m2_5_ce0,m2_5_q0,m2_5_address1,m2_5_ce1,m2_5_q1,m2_6_address0,m2_6_ce0,m2_6_q0,m2_6_address1,m2_6_ce1,m2_6_q1,m2_7_address0,m2_7_ce0,m2_7_q0,m2_7_address1,m2_7_ce1,m2_7_q1,prod_0_address0,prod_0_ce0,prod_0_we0,prod_0_d0,prod_0_q0,prod_1_address0,prod_1_ce0,prod_1_we0,prod_1_d0,prod_1_q0,prod_2_address0,prod_2_ce0,prod_2_we0,prod_2_d0,prod_2_q0,prod_3_address0,prod_3_ce0,prod_3_we0,prod_3_d0,prod_3_q0,prod_4_address0,prod_4_ce0,prod_4_we0,prod_4_d0,prod_4_q0,prod_5_address0,prod_5_ce0,prod_5_we0,prod_5_d0,prod_5_q0,prod_6_address0,prod_6_ce0,prod_6_we0,prod_6_d0,prod_6_q0,prod_7_address0,prod_7_ce0,prod_7_we0,prod_7_d0,prod_7_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 19'd1;
parameter    ap_ST_fsm_pp0_stage1 = 19'd2;
parameter    ap_ST_fsm_pp0_stage2 = 19'd4;
parameter    ap_ST_fsm_pp0_stage3 = 19'd8;
parameter    ap_ST_fsm_pp0_stage4 = 19'd16;
parameter    ap_ST_fsm_pp0_stage5 = 19'd32;
parameter    ap_ST_fsm_pp0_stage6 = 19'd64;
parameter    ap_ST_fsm_pp0_stage7 = 19'd128;
parameter    ap_ST_fsm_pp0_stage8 = 19'd256;
parameter    ap_ST_fsm_pp0_stage9 = 19'd512;
parameter    ap_ST_fsm_pp0_stage10 = 19'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 19'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 19'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 19'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 19'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 19'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 19'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 19'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 19'd262144;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [2:0] indvars_iv77_udiv;
output  [8:0] m1_1_address0;
output   m1_1_ce0;
input  [63:0] m1_1_q0;
output  [8:0] m1_3_address0;
output   m1_3_ce0;
input  [63:0] m1_3_q0;
output  [8:0] m1_5_address0;
output   m1_5_ce0;
input  [63:0] m1_5_q0;
output  [8:0] m1_7_address0;
output   m1_7_ce0;
input  [63:0] m1_7_q0;
output  [8:0] m1_0_address0;
output   m1_0_ce0;
input  [63:0] m1_0_q0;
output  [8:0] m1_2_address0;
output   m1_2_ce0;
input  [63:0] m1_2_q0;
output  [8:0] m1_4_address0;
output   m1_4_ce0;
input  [63:0] m1_4_q0;
output  [8:0] m1_6_address0;
output   m1_6_ce0;
input  [63:0] m1_6_q0;
input  [2:0] indvars_iv79_udiv;
output  [8:0] m2_0_address0;
output   m2_0_ce0;
input  [63:0] m2_0_q0;
output  [8:0] m2_0_address1;
output   m2_0_ce1;
input  [63:0] m2_0_q1;
output  [8:0] m2_1_address0;
output   m2_1_ce0;
input  [63:0] m2_1_q0;
output  [8:0] m2_1_address1;
output   m2_1_ce1;
input  [63:0] m2_1_q1;
output  [8:0] m2_2_address0;
output   m2_2_ce0;
input  [63:0] m2_2_q0;
output  [8:0] m2_2_address1;
output   m2_2_ce1;
input  [63:0] m2_2_q1;
output  [8:0] m2_3_address0;
output   m2_3_ce0;
input  [63:0] m2_3_q0;
output  [8:0] m2_3_address1;
output   m2_3_ce1;
input  [63:0] m2_3_q1;
output  [8:0] m2_4_address0;
output   m2_4_ce0;
input  [63:0] m2_4_q0;
output  [8:0] m2_4_address1;
output   m2_4_ce1;
input  [63:0] m2_4_q1;
output  [8:0] m2_5_address0;
output   m2_5_ce0;
input  [63:0] m2_5_q0;
output  [8:0] m2_5_address1;
output   m2_5_ce1;
input  [63:0] m2_5_q1;
output  [8:0] m2_6_address0;
output   m2_6_ce0;
input  [63:0] m2_6_q0;
output  [8:0] m2_6_address1;
output   m2_6_ce1;
input  [63:0] m2_6_q1;
output  [8:0] m2_7_address0;
output   m2_7_ce0;
input  [63:0] m2_7_q0;
output  [8:0] m2_7_address1;
output   m2_7_ce1;
input  [63:0] m2_7_q1;
output  [8:0] prod_0_address0;
output   prod_0_ce0;
output   prod_0_we0;
output  [63:0] prod_0_d0;
input  [63:0] prod_0_q0;
output  [8:0] prod_1_address0;
output   prod_1_ce0;
output   prod_1_we0;
output  [63:0] prod_1_d0;
input  [63:0] prod_1_q0;
output  [8:0] prod_2_address0;
output   prod_2_ce0;
output   prod_2_we0;
output  [63:0] prod_2_d0;
input  [63:0] prod_2_q0;
output  [8:0] prod_3_address0;
output   prod_3_ce0;
output   prod_3_we0;
output  [63:0] prod_3_d0;
input  [63:0] prod_3_q0;
output  [8:0] prod_4_address0;
output   prod_4_ce0;
output   prod_4_we0;
output  [63:0] prod_4_d0;
input  [63:0] prod_4_q0;
output  [8:0] prod_5_address0;
output   prod_5_ce0;
output   prod_5_we0;
output  [63:0] prod_5_d0;
input  [63:0] prod_5_q0;
output  [8:0] prod_6_address0;
output   prod_6_ce0;
output   prod_6_we0;
output  [63:0] prod_6_d0;
input  [63:0] prod_6_q0;
output  [8:0] prod_7_address0;
output   prod_7_ce0;
output   prod_7_we0;
output  [63:0] prod_7_d0;
input  [63:0] prod_7_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [18:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_subdone;
reg   [0:0] icmp_ln17_reg_1243;
reg    ap_condition_exit_pp0_iter0_stage14;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_subdone;
wire   [63:0] grp_fu_581_p2;
reg   [63:0] reg_585;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
reg   [63:0] reg_590;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_block_pp0_stage18_11001;
reg   [63:0] reg_595;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_600;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] reg_605;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] reg_610;
wire    ap_block_pp0_stage14_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_615;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_620;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] grp_fu_577_p2;
reg   [63:0] reg_625;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [0:0] icmp_ln17_fu_648_p2;
wire   [0:0] tmp_fu_663_p3;
reg   [0:0] tmp_reg_1247;
wire   [3:0] select_ln11_fu_671_p3;
reg   [3:0] select_ln11_reg_1252;
wire   [0:0] first_iter_0_fu_679_p2;
reg   [0:0] first_iter_0_reg_1257;
wire   [2:0] trunc_ln18_fu_685_p1;
reg   [2:0] trunc_ln18_reg_1261;
wire   [5:0] empty_18_fu_766_p1;
reg   [5:0] empty_18_reg_1347;
reg   [63:0] m2_0_load_reg_1392;
reg   [63:0] m2_1_load_reg_1397;
reg   [63:0] m2_2_load_reg_1402;
reg   [63:0] m2_3_load_reg_1407;
reg   [63:0] m2_4_load_reg_1412;
reg   [63:0] m2_5_load_reg_1417;
reg   [63:0] m2_6_load_reg_1422;
reg   [63:0] m2_7_load_reg_1427;
reg   [63:0] m2_0_load_1_reg_1432;
reg   [63:0] m2_1_load_1_reg_1437;
reg   [63:0] m2_2_load_1_reg_1442;
reg   [63:0] m2_3_load_1_reg_1447;
reg   [63:0] m2_4_load_1_reg_1452;
reg   [63:0] m2_5_load_1_reg_1457;
reg   [63:0] m2_6_load_1_reg_1462;
reg   [63:0] m2_7_load_1_reg_1467;
wire   [63:0] temp_x_fu_826_p11;
reg   [63:0] temp_x_reg_1472;
wire   [63:0] temp_x_1_fu_849_p11;
reg   [63:0] temp_x_1_reg_1477;
wire   [63:0] bitcast_ln23_fu_872_p1;
wire   [63:0] bitcast_ln23_1_fu_876_p1;
wire   [63:0] bitcast_ln23_2_fu_880_p1;
wire   [63:0] bitcast_ln23_3_fu_884_p1;
wire   [63:0] bitcast_ln23_4_fu_888_p1;
reg   [8:0] prod_0_addr_reg_1507;
reg   [8:0] prod_1_addr_reg_1512;
reg   [8:0] prod_2_addr_reg_1517;
reg   [8:0] prod_2_addr_reg_1517_pp0_iter1_reg;
reg   [8:0] prod_3_addr_reg_1522;
reg   [8:0] prod_3_addr_reg_1522_pp0_iter1_reg;
reg   [8:0] prod_4_addr_reg_1527;
reg   [8:0] prod_4_addr_reg_1527_pp0_iter1_reg;
reg   [8:0] prod_5_addr_reg_1532;
reg   [8:0] prod_5_addr_reg_1532_pp0_iter1_reg;
reg   [8:0] prod_6_addr_reg_1537;
reg   [8:0] prod_6_addr_reg_1537_pp0_iter1_reg;
reg   [8:0] prod_7_addr_reg_1542;
reg   [8:0] prod_7_addr_reg_1542_pp0_iter1_reg;
wire   [63:0] bitcast_ln23_5_fu_910_p1;
wire   [63:0] bitcast_ln23_6_fu_923_p1;
wire   [63:0] bitcast_ln23_7_fu_940_p1;
wire   [63:0] bitcast_ln23_8_fu_957_p1;
wire   [63:0] bitcast_ln23_9_fu_974_p1;
wire   [63:0] bitcast_ln23_10_fu_991_p1;
wire   [63:0] bitcast_ln23_11_fu_1008_p1;
wire   [63:0] bitcast_ln23_12_fu_1025_p1;
wire   [63:0] bitcast_ln23_13_fu_1042_p1;
wire   [63:0] bitcast_ln23_14_fu_1050_p1;
reg   [63:0] add26_s_reg_1637;
wire   [63:0] bitcast_ln23_15_fu_1054_p1;
reg   [0:0] tmp_2_reg_1647;
reg   [63:0] add26_2_reg_1651;
reg   [63:0] add26_3_reg_1656;
reg   [63:0] add26_4_reg_1661;
reg   [63:0] add26_5_reg_1666;
reg   [63:0] add26_6_reg_1671;
reg   [63:0] add26_7_reg_1676;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln23_fu_699_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln23_1_fu_733_p1;
wire   [63:0] p_cast4_fu_777_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] p_cast_fu_898_p1;
wire    ap_block_pp0_stage8;
reg   [3:0] k_fu_120;
wire   [3:0] add_ln18_fu_1058_p2;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_k_load;
reg   [6:0] i_fu_124;
wire   [6:0] select_ln17_fu_759_p3;
reg   [8:0] indvar_flatten_fu_128;
wire   [8:0] add_ln17_fu_654_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten_load;
reg   [63:0] add26_194_fu_132;
wire   [63:0] bitcast_ln24_fu_914_p1;
wire    ap_block_pp0_stage10;
reg   [63:0] add26_1_195_fu_136;
wire   [63:0] bitcast_ln24_1_fu_927_p1;
wire    ap_block_pp0_stage11;
reg   [63:0] add26_1_296_fu_140;
wire   [63:0] bitcast_ln24_2_fu_944_p1;
wire    ap_block_pp0_stage12;
reg   [63:0] add26_1_397_fu_144;
wire   [63:0] bitcast_ln24_3_fu_961_p1;
wire    ap_block_pp0_stage13;
reg   [63:0] add26_1_498_fu_148;
wire   [63:0] bitcast_ln24_4_fu_978_p1;
wire    ap_block_pp0_stage14;
reg   [63:0] add26_1_599_fu_152;
wire   [63:0] bitcast_ln24_5_fu_995_p1;
wire    ap_block_pp0_stage15;
reg   [63:0] add26_1_6100_fu_156;
wire   [63:0] bitcast_ln24_6_fu_1012_p1;
wire    ap_block_pp0_stage16;
reg   [63:0] add26_1_7101_fu_160;
wire   [63:0] bitcast_ln24_7_fu_1029_p1;
wire    ap_block_pp0_stage17;
reg    m2_0_ce1_local;
reg    m2_0_ce0_local;
reg    m2_1_ce1_local;
reg    m2_1_ce0_local;
reg    m2_2_ce1_local;
reg    m2_2_ce0_local;
reg    m2_3_ce1_local;
reg    m2_3_ce0_local;
reg    m2_4_ce1_local;
reg    m2_4_ce0_local;
reg    m2_5_ce1_local;
reg    m2_5_ce0_local;
reg    m2_6_ce1_local;
reg    m2_6_ce0_local;
reg    m2_7_ce1_local;
reg    m2_7_ce0_local;
reg    m1_1_ce0_local;
reg    m1_3_ce0_local;
reg    m1_5_ce0_local;
reg    m1_7_ce0_local;
reg    m1_0_ce0_local;
reg    m1_2_ce0_local;
reg    m1_4_ce0_local;
reg    m1_6_ce0_local;
reg    prod_0_ce0_local;
reg   [8:0] prod_0_address0_local;
reg    prod_0_we0_local;
wire   [63:0] bitcast_ln24_8_fu_1081_p1;
wire    ap_block_pp0_stage7;
reg    prod_1_ce0_local;
wire    ap_block_pp0_stage9;
reg    prod_1_we0_local;
wire   [63:0] bitcast_ln24_9_fu_1091_p1;
reg    prod_2_ce0_local;
reg   [8:0] prod_2_address0_local;
reg    prod_2_we0_local;
wire   [63:0] bitcast_ln24_10_fu_1101_p1;
reg    prod_3_ce0_local;
reg   [8:0] prod_3_address0_local;
reg    prod_3_we0_local;
wire   [63:0] bitcast_ln24_11_fu_1111_p1;
reg    prod_4_ce0_local;
reg   [8:0] prod_4_address0_local;
reg    prod_4_we0_local;
wire   [63:0] bitcast_ln24_12_fu_1121_p1;
reg    prod_5_ce0_local;
reg   [8:0] prod_5_address0_local;
reg    prod_5_we0_local;
wire   [63:0] bitcast_ln24_13_fu_1131_p1;
reg    prod_6_ce0_local;
reg   [8:0] prod_6_address0_local;
reg    prod_6_we0_local;
wire   [63:0] bitcast_ln24_14_fu_1141_p1;
reg    prod_7_ce0_local;
reg   [8:0] prod_7_address0_local;
reg    prod_7_we0_local;
wire   [63:0] bitcast_ln24_15_fu_1151_p1;
reg   [63:0] grp_fu_577_p0;
reg   [63:0] grp_fu_577_p1;
wire    ap_block_pp0_stage18;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
reg   [63:0] grp_fu_581_p0;
reg   [63:0] grp_fu_581_p1;
wire   [8:0] add_ln_fu_689_p4;
wire   [1:0] tmp_5_fu_711_p4;
wire   [8:0] add_ln23_1_fu_721_p5;
wire   [6:0] add_ln17_1_fu_753_p2;
wire   [8:0] tmp_3_fu_770_p3;
wire   [63:0] temp_x_fu_826_p2;
wire   [63:0] temp_x_fu_826_p4;
wire   [63:0] temp_x_fu_826_p6;
wire   [63:0] temp_x_fu_826_p8;
wire   [63:0] temp_x_fu_826_p9;
wire   [63:0] temp_x_1_fu_849_p2;
wire   [63:0] temp_x_1_fu_849_p4;
wire   [63:0] temp_x_1_fu_849_p6;
wire   [63:0] temp_x_1_fu_849_p8;
wire   [63:0] temp_x_1_fu_849_p9;
wire   [8:0] tmp_1_fu_892_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [18:0] ap_NS_fsm;
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
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage16_subdone;
wire    ap_block_pp0_stage17_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] temp_x_fu_826_p1;
wire   [2:0] temp_x_fu_826_p3;
wire  signed [2:0] temp_x_fu_826_p5;
wire  signed [2:0] temp_x_fu_826_p7;
wire   [2:0] temp_x_1_fu_849_p1;
wire   [2:0] temp_x_1_fu_849_p3;
wire  signed [2:0] temp_x_1_fu_849_p5;
wire  signed [2:0] temp_x_1_fu_849_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 19'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_120 = 4'd0;
#0 i_fu_124 = 7'd0;
#0 indvar_flatten_fu_128 = 9'd0;
#0 add26_194_fu_132 = 64'd0;
#0 add26_1_195_fu_136 = 64'd0;
#0 add26_1_296_fu_140 = 64'd0;
#0 add26_1_397_fu_144 = 64'd0;
#0 add26_1_498_fu_148 = 64'd0;
#0 add26_1_599_fu_152 = 64'd0;
#0 add26_1_6100_fu_156 = 64'd0;
#0 add26_1_7101_fu_160 = 64'd0;
#0 ap_done_reg = 1'b0;
end
bbgemm_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_577_p0),.din1(grp_fu_577_p1),.ce(1'b1),.dout(grp_fu_577_p2));
bbgemm_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_581_p0),.din1(grp_fu_581_p1),.ce(1'b1),.dout(grp_fu_581_p2));
(* dissolve_hierarchy = "yes" *) bbgemm_sparsemux_9_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_9_3_64_1_1_U3(.din0(temp_x_fu_826_p2),.din1(temp_x_fu_826_p4),.din2(temp_x_fu_826_p6),.din3(temp_x_fu_826_p8),.def(temp_x_fu_826_p9),.sel(trunc_ln18_reg_1261),.dout(temp_x_fu_826_p11));
(* dissolve_hierarchy = "yes" *) bbgemm_sparsemux_9_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_9_3_64_1_1_U4(.din0(temp_x_1_fu_849_p2),.din1(temp_x_1_fu_849_p4),.din2(temp_x_1_fu_849_p6),.din3(temp_x_1_fu_849_p8),.def(temp_x_1_fu_849_p9),.sel(trunc_ln18_reg_1261),.dout(temp_x_1_fu_849_p11));
bbgemm_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage14),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage14_subdone) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage14)) begin
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
        if (((1'b0 == ap_block_pp0_stage14_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage18_subdone) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln17_reg_1243 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (first_iter_0_reg_1257 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add26_194_fu_132 <= bitcast_ln24_fu_914_p1;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add26_194_fu_132 <= grp_fu_577_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln17_reg_1243 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (first_iter_0_reg_1257 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add26_1_195_fu_136 <= bitcast_ln24_1_fu_927_p1;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add26_1_195_fu_136 <= grp_fu_577_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln17_reg_1243 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (first_iter_0_reg_1257 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        add26_1_296_fu_140 <= bitcast_ln24_2_fu_944_p1;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add26_1_296_fu_140 <= grp_fu_577_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln17_reg_1243 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (first_iter_0_reg_1257 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        add26_1_397_fu_144 <= bitcast_ln24_3_fu_961_p1;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add26_1_397_fu_144 <= grp_fu_577_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln17_reg_1243 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (first_iter_0_reg_1257 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        add26_1_498_fu_148 <= bitcast_ln24_4_fu_978_p1;
    end else if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add26_1_498_fu_148 <= grp_fu_577_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln17_reg_1243 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (first_iter_0_reg_1257 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        add26_1_599_fu_152 <= bitcast_ln24_5_fu_995_p1;
    end else if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        add26_1_599_fu_152 <= grp_fu_577_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln17_reg_1243 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (first_iter_0_reg_1257 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        add26_1_6100_fu_156 <= bitcast_ln24_6_fu_1012_p1;
    end else if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        add26_1_6100_fu_156 <= grp_fu_577_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln17_reg_1243 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (first_iter_0_reg_1257 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        add26_1_7101_fu_160 <= bitcast_ln24_7_fu_1029_p1;
    end else if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        add26_1_7101_fu_160 <= grp_fu_577_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_124 <= 7'd0;
    end else if (((icmp_ln17_reg_1243 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_124 <= select_ln17_fu_759_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln17_fu_648_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_128 <= add_ln17_fu_654_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_128 <= 9'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_120 <= 4'd0;
    end else if (((icmp_ln17_reg_1243 == 1'd0) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        k_fu_120 <= add_ln18_fu_1058_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add26_2_reg_1651 <= grp_fu_577_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add26_3_reg_1656 <= grp_fu_577_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add26_4_reg_1661 <= grp_fu_577_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add26_5_reg_1666 <= grp_fu_577_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add26_6_reg_1671 <= grp_fu_577_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add26_7_reg_1676 <= grp_fu_577_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        add26_s_reg_1637 <= grp_fu_577_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        empty_18_reg_1347 <= empty_18_fu_766_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        first_iter_0_reg_1257 <= first_iter_0_fu_679_p2;
        icmp_ln17_reg_1243 <= icmp_ln17_fu_648_p2;
        select_ln11_reg_1252 <= select_ln11_fu_671_p3;
        tmp_reg_1247 <= ap_sig_allocacmp_k_load[32'd3];
        trunc_ln18_reg_1261 <= trunc_ln18_fu_685_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m2_0_load_1_reg_1432 <= m2_0_q0;
        m2_0_load_reg_1392 <= m2_0_q1;
        m2_1_load_1_reg_1437 <= m2_1_q0;
        m2_1_load_reg_1397 <= m2_1_q1;
        m2_2_load_1_reg_1442 <= m2_2_q0;
        m2_2_load_reg_1402 <= m2_2_q1;
        m2_3_load_1_reg_1447 <= m2_3_q0;
        m2_3_load_reg_1407 <= m2_3_q1;
        m2_4_load_1_reg_1452 <= m2_4_q0;
        m2_4_load_reg_1412 <= m2_4_q1;
        m2_5_load_1_reg_1457 <= m2_5_q0;
        m2_5_load_reg_1417 <= m2_5_q1;
        m2_6_load_1_reg_1462 <= m2_6_q0;
        m2_6_load_reg_1422 <= m2_6_q1;
        m2_7_load_1_reg_1467 <= m2_7_q0;
        m2_7_load_reg_1427 <= m2_7_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        prod_0_addr_reg_1507 <= p_cast_fu_898_p1;
        prod_1_addr_reg_1512 <= p_cast_fu_898_p1;
        prod_2_addr_reg_1517 <= p_cast_fu_898_p1;
        prod_2_addr_reg_1517_pp0_iter1_reg <= prod_2_addr_reg_1517;
        prod_3_addr_reg_1522 <= p_cast_fu_898_p1;
        prod_3_addr_reg_1522_pp0_iter1_reg <= prod_3_addr_reg_1522;
        prod_4_addr_reg_1527 <= p_cast_fu_898_p1;
        prod_4_addr_reg_1527_pp0_iter1_reg <= prod_4_addr_reg_1527;
        prod_5_addr_reg_1532 <= p_cast_fu_898_p1;
        prod_5_addr_reg_1532_pp0_iter1_reg <= prod_5_addr_reg_1532;
        prod_6_addr_reg_1537 <= p_cast_fu_898_p1;
        prod_6_addr_reg_1537_pp0_iter1_reg <= prod_6_addr_reg_1537;
        prod_7_addr_reg_1542 <= p_cast_fu_898_p1;
        prod_7_addr_reg_1542_pp0_iter1_reg <= prod_7_addr_reg_1542;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_585 <= grp_fu_581_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_590 <= grp_fu_581_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_595 <= grp_fu_581_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        reg_600 <= grp_fu_581_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_605 <= grp_fu_581_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        reg_610 <= grp_fu_581_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_615 <= grp_fu_581_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        reg_620 <= grp_fu_581_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_625 <= grp_fu_577_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        temp_x_1_reg_1477 <= temp_x_1_fu_849_p11;
        temp_x_reg_1472 <= temp_x_fu_826_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        tmp_2_reg_1647 <= add_ln18_fu_1058_p2[32'd3];
    end
end
always @ (*) begin
    if (((icmp_ln17_reg_1243 == 1'd1) & (1'b0 == ap_block_pp0_stage14_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        ap_condition_exit_pp0_iter0_stage14 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage14 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage14_subdone) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
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
    if (((1'b0 == ap_block_pp0_stage18_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_128;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_k_load = 4'd0;
    end else begin
        ap_sig_allocacmp_k_load = k_fu_120;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_577_p0 = add26_7_reg_1676;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_577_p0 = add26_6_reg_1671;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_577_p0 = add26_5_reg_1666;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_577_p0 = add26_4_reg_1661;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_577_p0 = add26_3_reg_1656;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_577_p0 = add26_2_reg_1651;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_577_p0 = add26_s_reg_1637;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_577_p0 = reg_625;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_577_p0 = add26_1_7101_fu_160;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_577_p0 = add26_1_6100_fu_156;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_577_p0 = add26_1_599_fu_152;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_577_p0 = add26_1_498_fu_148;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_577_p0 = add26_1_397_fu_144;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_577_p0 = add26_1_296_fu_140;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_577_p0 = add26_1_195_fu_136;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_577_p0 = add26_194_fu_132;
    end else begin
        grp_fu_577_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        grp_fu_577_p1 = reg_620;
    end else if ((((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_577_p1 = reg_615;
    end else if ((((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_577_p1 = reg_610;
    end else if ((((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_577_p1 = reg_605;
    end else if ((((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_577_p1 = reg_600;
    end else if ((((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_577_p1 = reg_595;
    end else if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_577_p1 = reg_590;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        grp_fu_577_p1 = reg_585;
    end else begin
        grp_fu_577_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        grp_fu_581_p0 = temp_x_1_reg_1477;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_581_p0 = temp_x_reg_1472;
    end else begin
        grp_fu_581_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            grp_fu_581_p1 = bitcast_ln23_15_fu_1054_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_581_p1 = bitcast_ln23_14_fu_1050_p1;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_581_p1 = bitcast_ln23_13_fu_1042_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_581_p1 = bitcast_ln23_12_fu_1025_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_581_p1 = bitcast_ln23_11_fu_1008_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_581_p1 = bitcast_ln23_10_fu_991_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_581_p1 = bitcast_ln23_9_fu_974_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_581_p1 = bitcast_ln23_8_fu_957_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_581_p1 = bitcast_ln23_7_fu_940_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_581_p1 = bitcast_ln23_6_fu_923_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_581_p1 = bitcast_ln23_5_fu_910_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_581_p1 = bitcast_ln23_4_fu_888_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_581_p1 = bitcast_ln23_3_fu_884_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_581_p1 = bitcast_ln23_2_fu_880_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_581_p1 = bitcast_ln23_1_fu_876_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_581_p1 = bitcast_ln23_fu_872_p1;
        end else begin
            grp_fu_581_p1 = 'bx;
        end
    end else begin
        grp_fu_581_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_0_ce0_local = 1'b1;
    end else begin
        m1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_1_ce0_local = 1'b1;
    end else begin
        m1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_2_ce0_local = 1'b1;
    end else begin
        m1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_3_ce0_local = 1'b1;
    end else begin
        m1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_4_ce0_local = 1'b1;
    end else begin
        m1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_5_ce0_local = 1'b1;
    end else begin
        m1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_6_ce0_local = 1'b1;
    end else begin
        m1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_7_ce0_local = 1'b1;
    end else begin
        m1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m2_0_ce0_local = 1'b1;
    end else begin
        m2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m2_0_ce1_local = 1'b1;
    end else begin
        m2_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m2_1_ce0_local = 1'b1;
    end else begin
        m2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m2_1_ce1_local = 1'b1;
    end else begin
        m2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m2_2_ce0_local = 1'b1;
    end else begin
        m2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m2_2_ce1_local = 1'b1;
    end else begin
        m2_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m2_3_ce0_local = 1'b1;
    end else begin
        m2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m2_3_ce1_local = 1'b1;
    end else begin
        m2_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m2_4_ce0_local = 1'b1;
    end else begin
        m2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m2_4_ce1_local = 1'b1;
    end else begin
        m2_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m2_5_ce0_local = 1'b1;
    end else begin
        m2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m2_5_ce1_local = 1'b1;
    end else begin
        m2_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m2_6_ce0_local = 1'b1;
    end else begin
        m2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m2_6_ce1_local = 1'b1;
    end else begin
        m2_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m2_7_ce0_local = 1'b1;
    end else begin
        m2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m2_7_ce1_local = 1'b1;
    end else begin
        m2_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        prod_0_address0_local = prod_0_addr_reg_1507;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        prod_0_address0_local = p_cast_fu_898_p1;
    end else begin
        prod_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        prod_0_ce0_local = 1'b1;
    end else begin
        prod_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_2_reg_1647 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        prod_0_we0_local = 1'b1;
    end else begin
        prod_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        prod_1_ce0_local = 1'b1;
    end else begin
        prod_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_2_reg_1647 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        prod_1_we0_local = 1'b1;
    end else begin
        prod_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        prod_2_address0_local = prod_2_addr_reg_1517_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        prod_2_address0_local = prod_2_addr_reg_1517;
    end else begin
        prod_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        prod_2_ce0_local = 1'b1;
    end else begin
        prod_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_2_reg_1647 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        prod_2_we0_local = 1'b1;
    end else begin
        prod_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        prod_3_address0_local = prod_3_addr_reg_1522_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        prod_3_address0_local = prod_3_addr_reg_1522;
    end else begin
        prod_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        prod_3_ce0_local = 1'b1;
    end else begin
        prod_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_2_reg_1647 == 1'd1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        prod_3_we0_local = 1'b1;
    end else begin
        prod_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        prod_4_address0_local = prod_4_addr_reg_1527_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        prod_4_address0_local = prod_4_addr_reg_1527;
    end else begin
        prod_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        prod_4_ce0_local = 1'b1;
    end else begin
        prod_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_2_reg_1647 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        prod_4_we0_local = 1'b1;
    end else begin
        prod_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        prod_5_address0_local = prod_5_addr_reg_1532_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        prod_5_address0_local = prod_5_addr_reg_1532;
    end else begin
        prod_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        prod_5_ce0_local = 1'b1;
    end else begin
        prod_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_2_reg_1647 == 1'd1) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        prod_5_we0_local = 1'b1;
    end else begin
        prod_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        prod_6_address0_local = prod_6_addr_reg_1537_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        prod_6_address0_local = prod_6_addr_reg_1537;
    end else begin
        prod_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        prod_6_ce0_local = 1'b1;
    end else begin
        prod_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_2_reg_1647 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        prod_6_we0_local = 1'b1;
    end else begin
        prod_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        prod_7_address0_local = prod_7_addr_reg_1542_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        prod_7_address0_local = prod_7_addr_reg_1542;
    end else begin
        prod_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        prod_7_ce0_local = 1'b1;
    end else begin
        prod_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_2_reg_1647 == 1'd1) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        prod_7_we0_local = 1'b1;
    end else begin
        prod_7_we0_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage14)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln17_1_fu_753_p2 = (i_fu_124 + 7'd1);
assign add_ln17_fu_654_p2 = (ap_sig_allocacmp_indvar_flatten_load + 9'd1);
assign add_ln18_fu_1058_p2 = (select_ln11_reg_1252 + 4'd2);
assign add_ln23_1_fu_721_p5 = {{{{indvars_iv77_udiv}, {tmp_5_fu_711_p4}}, {1'd1}}, {indvars_iv79_udiv}};
assign add_ln_fu_689_p4 = {{{indvars_iv77_udiv}, {trunc_ln18_fu_685_p1}}, {indvars_iv79_udiv}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_pp0_stage18 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
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
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage14;
assign ap_ready = ap_ready_sig;
assign bitcast_ln23_10_fu_991_p1 = m2_2_load_1_reg_1442;
assign bitcast_ln23_11_fu_1008_p1 = m2_3_load_1_reg_1447;
assign bitcast_ln23_12_fu_1025_p1 = m2_4_load_1_reg_1452;
assign bitcast_ln23_13_fu_1042_p1 = m2_5_load_1_reg_1457;
assign bitcast_ln23_14_fu_1050_p1 = m2_6_load_1_reg_1462;
assign bitcast_ln23_15_fu_1054_p1 = m2_7_load_1_reg_1467;
assign bitcast_ln23_1_fu_876_p1 = m2_1_load_reg_1397;
assign bitcast_ln23_2_fu_880_p1 = m2_2_load_reg_1402;
assign bitcast_ln23_3_fu_884_p1 = m2_3_load_reg_1407;
assign bitcast_ln23_4_fu_888_p1 = m2_4_load_reg_1412;
assign bitcast_ln23_5_fu_910_p1 = m2_5_load_reg_1417;
assign bitcast_ln23_6_fu_923_p1 = m2_6_load_reg_1422;
assign bitcast_ln23_7_fu_940_p1 = m2_7_load_reg_1427;
assign bitcast_ln23_8_fu_957_p1 = m2_0_load_1_reg_1432;
assign bitcast_ln23_9_fu_974_p1 = m2_1_load_1_reg_1437;
assign bitcast_ln23_fu_872_p1 = m2_0_load_reg_1392;
assign bitcast_ln24_10_fu_1101_p1 = reg_625;
assign bitcast_ln24_11_fu_1111_p1 = reg_625;
assign bitcast_ln24_12_fu_1121_p1 = reg_625;
assign bitcast_ln24_13_fu_1131_p1 = reg_625;
assign bitcast_ln24_14_fu_1141_p1 = reg_625;
assign bitcast_ln24_15_fu_1151_p1 = reg_625;
assign bitcast_ln24_1_fu_927_p1 = prod_1_q0;
assign bitcast_ln24_2_fu_944_p1 = prod_2_q0;
assign bitcast_ln24_3_fu_961_p1 = prod_3_q0;
assign bitcast_ln24_4_fu_978_p1 = prod_4_q0;
assign bitcast_ln24_5_fu_995_p1 = prod_5_q0;
assign bitcast_ln24_6_fu_1012_p1 = prod_6_q0;
assign bitcast_ln24_7_fu_1029_p1 = prod_7_q0;
assign bitcast_ln24_8_fu_1081_p1 = reg_625;
assign bitcast_ln24_9_fu_1091_p1 = reg_625;
assign bitcast_ln24_fu_914_p1 = prod_0_q0;
assign empty_18_fu_766_p1 = select_ln17_fu_759_p3[5:0];
assign first_iter_0_fu_679_p2 = ((select_ln11_fu_671_p3 == 4'd0) ? 1'b1 : 1'b0);
assign icmp_ln17_fu_648_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 9'd256) ? 1'b1 : 1'b0);
assign m1_0_address0 = p_cast4_fu_777_p1;
assign m1_0_ce0 = m1_0_ce0_local;
assign m1_1_address0 = p_cast4_fu_777_p1;
assign m1_1_ce0 = m1_1_ce0_local;
assign m1_2_address0 = p_cast4_fu_777_p1;
assign m1_2_ce0 = m1_2_ce0_local;
assign m1_3_address0 = p_cast4_fu_777_p1;
assign m1_3_ce0 = m1_3_ce0_local;
assign m1_4_address0 = p_cast4_fu_777_p1;
assign m1_4_ce0 = m1_4_ce0_local;
assign m1_5_address0 = p_cast4_fu_777_p1;
assign m1_5_ce0 = m1_5_ce0_local;
assign m1_6_address0 = p_cast4_fu_777_p1;
assign m1_6_ce0 = m1_6_ce0_local;
assign m1_7_address0 = p_cast4_fu_777_p1;
assign m1_7_ce0 = m1_7_ce0_local;
assign m2_0_address0 = zext_ln23_1_fu_733_p1;
assign m2_0_address1 = zext_ln23_fu_699_p1;
assign m2_0_ce0 = m2_0_ce0_local;
assign m2_0_ce1 = m2_0_ce1_local;
assign m2_1_address0 = zext_ln23_1_fu_733_p1;
assign m2_1_address1 = zext_ln23_fu_699_p1;
assign m2_1_ce0 = m2_1_ce0_local;
assign m2_1_ce1 = m2_1_ce1_local;
assign m2_2_address0 = zext_ln23_1_fu_733_p1;
assign m2_2_address1 = zext_ln23_fu_699_p1;
assign m2_2_ce0 = m2_2_ce0_local;
assign m2_2_ce1 = m2_2_ce1_local;
assign m2_3_address0 = zext_ln23_1_fu_733_p1;
assign m2_3_address1 = zext_ln23_fu_699_p1;
assign m2_3_ce0 = m2_3_ce0_local;
assign m2_3_ce1 = m2_3_ce1_local;
assign m2_4_address0 = zext_ln23_1_fu_733_p1;
assign m2_4_address1 = zext_ln23_fu_699_p1;
assign m2_4_ce0 = m2_4_ce0_local;
assign m2_4_ce1 = m2_4_ce1_local;
assign m2_5_address0 = zext_ln23_1_fu_733_p1;
assign m2_5_address1 = zext_ln23_fu_699_p1;
assign m2_5_ce0 = m2_5_ce0_local;
assign m2_5_ce1 = m2_5_ce1_local;
assign m2_6_address0 = zext_ln23_1_fu_733_p1;
assign m2_6_address1 = zext_ln23_fu_699_p1;
assign m2_6_ce0 = m2_6_ce0_local;
assign m2_6_ce1 = m2_6_ce1_local;
assign m2_7_address0 = zext_ln23_1_fu_733_p1;
assign m2_7_address1 = zext_ln23_fu_699_p1;
assign m2_7_ce0 = m2_7_ce0_local;
assign m2_7_ce1 = m2_7_ce1_local;
assign p_cast4_fu_777_p1 = tmp_3_fu_770_p3;
assign p_cast_fu_898_p1 = tmp_1_fu_892_p3;
assign prod_0_address0 = prod_0_address0_local;
assign prod_0_ce0 = prod_0_ce0_local;
assign prod_0_d0 = bitcast_ln24_8_fu_1081_p1;
assign prod_0_we0 = prod_0_we0_local;
assign prod_1_address0 = prod_1_addr_reg_1512;
assign prod_1_ce0 = prod_1_ce0_local;
assign prod_1_d0 = bitcast_ln24_9_fu_1091_p1;
assign prod_1_we0 = prod_1_we0_local;
assign prod_2_address0 = prod_2_address0_local;
assign prod_2_ce0 = prod_2_ce0_local;
assign prod_2_d0 = bitcast_ln24_10_fu_1101_p1;
assign prod_2_we0 = prod_2_we0_local;
assign prod_3_address0 = prod_3_address0_local;
assign prod_3_ce0 = prod_3_ce0_local;
assign prod_3_d0 = bitcast_ln24_11_fu_1111_p1;
assign prod_3_we0 = prod_3_we0_local;
assign prod_4_address0 = prod_4_address0_local;
assign prod_4_ce0 = prod_4_ce0_local;
assign prod_4_d0 = bitcast_ln24_12_fu_1121_p1;
assign prod_4_we0 = prod_4_we0_local;
assign prod_5_address0 = prod_5_address0_local;
assign prod_5_ce0 = prod_5_ce0_local;
assign prod_5_d0 = bitcast_ln24_13_fu_1131_p1;
assign prod_5_we0 = prod_5_we0_local;
assign prod_6_address0 = prod_6_address0_local;
assign prod_6_ce0 = prod_6_ce0_local;
assign prod_6_d0 = bitcast_ln24_14_fu_1141_p1;
assign prod_6_we0 = prod_6_we0_local;
assign prod_7_address0 = prod_7_address0_local;
assign prod_7_ce0 = prod_7_ce0_local;
assign prod_7_d0 = bitcast_ln24_15_fu_1151_p1;
assign prod_7_we0 = prod_7_we0_local;
assign select_ln11_fu_671_p3 = ((tmp_fu_663_p3[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_k_load);
assign select_ln17_fu_759_p3 = ((tmp_reg_1247[0:0] == 1'b1) ? add_ln17_1_fu_753_p2 : i_fu_124);
assign temp_x_1_fu_849_p2 = m1_1_q0;
assign temp_x_1_fu_849_p4 = m1_3_q0;
assign temp_x_1_fu_849_p6 = m1_5_q0;
assign temp_x_1_fu_849_p8 = m1_7_q0;
assign temp_x_1_fu_849_p9 = 'bx;
assign temp_x_fu_826_p2 = m1_0_q0;
assign temp_x_fu_826_p4 = m1_2_q0;
assign temp_x_fu_826_p6 = m1_4_q0;
assign temp_x_fu_826_p8 = m1_6_q0;
assign temp_x_fu_826_p9 = 'bx;
assign tmp_1_fu_892_p3 = {{empty_18_reg_1347}, {indvars_iv79_udiv}};
assign tmp_3_fu_770_p3 = {{empty_18_fu_766_p1}, {indvars_iv77_udiv}};
assign tmp_5_fu_711_p4 = {{select_ln11_fu_671_p3[2:1]}};
assign tmp_fu_663_p3 = ap_sig_allocacmp_k_load[32'd3];
assign trunc_ln18_fu_685_p1 = select_ln11_fu_671_p3[2:0];
assign zext_ln23_1_fu_733_p1 = add_ln23_1_fu_721_p5;
assign zext_ln23_fu_699_p1 = add_ln_fu_689_p4;
endmodule 
