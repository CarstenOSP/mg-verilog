module bfs_bfs_Pipeline_loop_neighbors (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,e,cnt,tmp_end,edges_0_address0,edges_0_ce0,edges_0_q0,edges_1_address0,edges_1_ce0,edges_1_q0,edges_2_address0,edges_2_ce0,edges_2_q0,edges_3_address0,edges_3_ce0,edges_3_q0,edges_4_address0,edges_4_ce0,edges_4_q0,edges_5_address0,edges_5_ce0,edges_5_q0,edges_6_address0,edges_6_ce0,edges_6_q0,edges_7_address0,edges_7_ce0,edges_7_q0,edges_8_address0,edges_8_ce0,edges_8_q0,edges_9_address0,edges_9_ce0,edges_9_q0,edges_10_address0,edges_10_ce0,edges_10_q0,edges_11_address0,edges_11_ce0,edges_11_q0,edges_12_address0,edges_12_ce0,edges_12_q0,edges_13_address0,edges_13_ce0,edges_13_q0,edges_14_address0,edges_14_ce0,edges_14_q0,edges_15_address0,edges_15_ce0,edges_15_q0,level_address0,level_ce0,level_we0,level_d0,level_q0,indvars_iv_next11_cast4,cnt_6_out,cnt_6_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 12'd1;
parameter    ap_ST_fsm_pp0_stage1 = 12'd2;
parameter    ap_ST_fsm_pp0_stage2 = 12'd4;
parameter    ap_ST_fsm_pp0_stage3 = 12'd8;
parameter    ap_ST_fsm_pp0_stage4 = 12'd16;
parameter    ap_ST_fsm_pp0_stage5 = 12'd32;
parameter    ap_ST_fsm_pp0_stage6 = 12'd64;
parameter    ap_ST_fsm_pp0_stage7 = 12'd128;
parameter    ap_ST_fsm_pp0_stage8 = 12'd256;
parameter    ap_ST_fsm_pp0_stage9 = 12'd512;
parameter    ap_ST_fsm_pp0_stage10 = 12'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 12'd2048;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] e;
input  [63:0] cnt;
input  [63:0] tmp_end;
output  [7:0] edges_0_address0;
output   edges_0_ce0;
input  [63:0] edges_0_q0;
output  [7:0] edges_1_address0;
output   edges_1_ce0;
input  [63:0] edges_1_q0;
output  [7:0] edges_2_address0;
output   edges_2_ce0;
input  [63:0] edges_2_q0;
output  [7:0] edges_3_address0;
output   edges_3_ce0;
input  [63:0] edges_3_q0;
output  [7:0] edges_4_address0;
output   edges_4_ce0;
input  [63:0] edges_4_q0;
output  [7:0] edges_5_address0;
output   edges_5_ce0;
input  [63:0] edges_5_q0;
output  [7:0] edges_6_address0;
output   edges_6_ce0;
input  [63:0] edges_6_q0;
output  [7:0] edges_7_address0;
output   edges_7_ce0;
input  [63:0] edges_7_q0;
output  [7:0] edges_8_address0;
output   edges_8_ce0;
input  [63:0] edges_8_q0;
output  [7:0] edges_9_address0;
output   edges_9_ce0;
input  [63:0] edges_9_q0;
output  [7:0] edges_10_address0;
output   edges_10_ce0;
input  [63:0] edges_10_q0;
output  [7:0] edges_11_address0;
output   edges_11_ce0;
input  [63:0] edges_11_q0;
output  [7:0] edges_12_address0;
output   edges_12_ce0;
input  [63:0] edges_12_q0;
output  [7:0] edges_13_address0;
output   edges_13_ce0;
input  [63:0] edges_13_q0;
output  [7:0] edges_14_address0;
output   edges_14_ce0;
input  [63:0] edges_14_q0;
output  [7:0] edges_15_address0;
output   edges_15_ce0;
input  [63:0] edges_15_q0;
output  [7:0] level_address0;
output   level_ce0;
output   level_we0;
output  [7:0] level_d0;
input  [7:0] level_q0;
input  [3:0] indvars_iv_next11_cast4;
output  [63:0] cnt_6_out;
output   cnt_6_out_ap_vld;
reg ap_idle;
reg cnt_6_out_ap_vld;
(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_subdone;
reg   [0:0] icmp_ln28_reg_1919;
reg    ap_condition_exit_pp0_iter0_stage11;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] cnt_6_reg_822;
reg   [7:0] reg_870;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_block_pp0_stage0_11001;
wire   [7:0] indvars_iv_next11_cast4_cast_fu_880_p1;
reg   [7:0] indvars_iv_next11_cast4_cast_reg_1725;
reg   [63:0] e_6_reg_1730;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [3:0] trunc_ln11_fu_902_p1;
reg   [3:0] trunc_ln11_reg_1738;
wire   [0:0] icmp_ln29_fu_936_p2;
reg   [0:0] icmp_ln29_reg_1746;
wire   [7:0] tmp_dst_fu_1008_p35;
reg   [7:0] tmp_dst_reg_1830;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [0:0] icmp_ln29_1_fu_1114_p2;
reg   [0:0] icmp_ln29_1_reg_1835;
wire   [0:0] icmp_ln28_fu_1172_p2;
wire   [0:0] icmp_ln29_2_fu_1178_p2;
reg   [0:0] icmp_ln29_2_reg_1923;
reg   [7:0] lshr_ln14_2_reg_2007;
wire   [0:0] icmp_ln29_3_fu_1198_p2;
reg   [0:0] icmp_ln29_3_reg_2012;
reg   [7:0] level_addr_reg_2016;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [7:0] tmp_dst_1_fu_1282_p35;
reg   [7:0] tmp_dst_1_reg_2021;
wire   [7:0] tmp_dst_2_fu_1417_p35;
reg   [7:0] tmp_dst_2_reg_2026;
wire   [0:0] grp_fu_864_p2;
reg   [0:0] icmp_ln34_reg_2111;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [7:0] tmp_dst_3_fu_1571_p35;
reg   [7:0] tmp_dst_3_reg_2115;
reg   [7:0] level_addr_1_reg_2120;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [0:0] grp_fu_874_p2;
reg   [0:0] icmp_ln34_1_reg_2125;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [7:0] level_addr_2_reg_2129;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [63:0] cnt_11_fu_1653_p2;
wire   [63:0] cnt_12_fu_1659_p2;
wire    ap_block_pp0_stage11_11001;
reg   [0:0] icmp_ln34_2_reg_2150;
wire   [63:0] cnt_13_fu_1665_p2;
reg   [7:0] level_addr_3_reg_2159;
reg   [0:0] icmp_ln34_3_reg_2164;
wire   [63:0] cnt_14_fu_1685_p2;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_block_pp0_stage2_subdone;
reg   [63:0] ap_phi_reg_pp0_iter0_cnt_3_reg_810;
wire   [63:0] ap_phi_reg_pp0_iter0_cnt_6_reg_822;
reg   [63:0] ap_phi_reg_pp0_iter1_cnt_6_reg_822;
wire   [63:0] ap_phi_reg_pp0_iter0_cnt_8_reg_837;
reg   [63:0] ap_phi_reg_pp0_iter1_cnt_8_reg_837;
wire   [63:0] ap_phi_reg_pp0_iter0_cnt_10_reg_851;
reg   [63:0] ap_phi_reg_pp0_iter1_cnt_10_reg_851;
wire   [63:0] zext_ln14_fu_916_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_1_fu_1094_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln28_fu_1134_p1;
wire   [63:0] zext_ln31_fu_1214_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_2_fu_1488_p1;
wire   [63:0] zext_ln31_1_fu_1642_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln31_2_fu_1646_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln31_3_fu_1671_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] i_fu_138;
wire   [31:0] i_4_fu_1203_p2;
wire    ap_loop_init;
reg   [63:0] e_1_fu_142;
wire   [63:0] e_10_fu_1675_p2;
reg   [63:0] cnt_1_fu_146;
wire    ap_block_pp0_stage10;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage0_01001;
reg    edges_0_ce0_local;
reg   [7:0] edges_0_address0_local;
reg    edges_1_ce0_local;
reg   [7:0] edges_1_address0_local;
reg    edges_2_ce0_local;
reg   [7:0] edges_2_address0_local;
reg    edges_3_ce0_local;
reg   [7:0] edges_3_address0_local;
reg    edges_4_ce0_local;
reg   [7:0] edges_4_address0_local;
reg    edges_5_ce0_local;
reg   [7:0] edges_5_address0_local;
reg    edges_6_ce0_local;
reg   [7:0] edges_6_address0_local;
reg    edges_7_ce0_local;
reg   [7:0] edges_7_address0_local;
reg    edges_8_ce0_local;
reg   [7:0] edges_8_address0_local;
reg    edges_9_ce0_local;
reg   [7:0] edges_9_address0_local;
reg    edges_10_ce0_local;
reg   [7:0] edges_10_address0_local;
reg    edges_11_ce0_local;
reg   [7:0] edges_11_address0_local;
reg    edges_12_ce0_local;
reg   [7:0] edges_12_address0_local;
reg    edges_13_ce0_local;
reg   [7:0] edges_13_address0_local;
reg    edges_14_ce0_local;
reg   [7:0] edges_14_address0_local;
reg    edges_15_ce0_local;
reg   [7:0] edges_15_address0_local;
reg    level_ce0_local;
reg   [7:0] level_address0_local;
reg    level_we0_local;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage4;
wire   [7:0] lshr_ln1_fu_906_p4;
wire   [7:0] tmp_dst_fu_1008_p2;
wire   [7:0] tmp_dst_fu_1008_p4;
wire   [7:0] tmp_dst_fu_1008_p6;
wire   [7:0] tmp_dst_fu_1008_p8;
wire   [7:0] tmp_dst_fu_1008_p10;
wire   [7:0] tmp_dst_fu_1008_p12;
wire   [7:0] tmp_dst_fu_1008_p14;
wire   [7:0] tmp_dst_fu_1008_p16;
wire   [7:0] tmp_dst_fu_1008_p18;
wire   [7:0] tmp_dst_fu_1008_p20;
wire   [7:0] tmp_dst_fu_1008_p22;
wire   [7:0] tmp_dst_fu_1008_p24;
wire   [7:0] tmp_dst_fu_1008_p26;
wire   [7:0] tmp_dst_fu_1008_p28;
wire   [7:0] tmp_dst_fu_1008_p30;
wire   [7:0] tmp_dst_fu_1008_p32;
wire   [7:0] tmp_dst_fu_1008_p33;
wire   [63:0] e_7_fu_1079_p2;
wire   [7:0] lshr_ln14_1_fu_1084_p4;
wire   [63:0] e_8_fu_1119_p2;
wire   [7:0] lshr_ln2_fu_1124_p4;
wire   [29:0] tmp_fu_1154_p4;
wire   [31:0] i_1_fu_1164_p3;
wire   [63:0] e_9_fu_1183_p2;
wire   [7:0] tmp_dst_1_fu_1282_p2;
wire   [7:0] tmp_dst_1_fu_1282_p4;
wire   [7:0] tmp_dst_1_fu_1282_p6;
wire   [7:0] tmp_dst_1_fu_1282_p8;
wire   [7:0] tmp_dst_1_fu_1282_p10;
wire   [7:0] tmp_dst_1_fu_1282_p12;
wire   [7:0] tmp_dst_1_fu_1282_p14;
wire   [7:0] tmp_dst_1_fu_1282_p16;
wire   [7:0] tmp_dst_1_fu_1282_p18;
wire   [7:0] tmp_dst_1_fu_1282_p20;
wire   [7:0] tmp_dst_1_fu_1282_p22;
wire   [7:0] tmp_dst_1_fu_1282_p24;
wire   [7:0] tmp_dst_1_fu_1282_p26;
wire   [7:0] tmp_dst_1_fu_1282_p28;
wire   [7:0] tmp_dst_1_fu_1282_p30;
wire   [7:0] tmp_dst_1_fu_1282_p32;
wire   [7:0] tmp_dst_1_fu_1282_p33;
wire   [7:0] tmp_dst_2_fu_1417_p2;
wire   [7:0] tmp_dst_2_fu_1417_p4;
wire   [7:0] tmp_dst_2_fu_1417_p6;
wire   [7:0] tmp_dst_2_fu_1417_p8;
wire   [7:0] tmp_dst_2_fu_1417_p10;
wire   [7:0] tmp_dst_2_fu_1417_p12;
wire   [7:0] tmp_dst_2_fu_1417_p14;
wire   [7:0] tmp_dst_2_fu_1417_p16;
wire   [7:0] tmp_dst_2_fu_1417_p18;
wire   [7:0] tmp_dst_2_fu_1417_p20;
wire   [7:0] tmp_dst_2_fu_1417_p22;
wire   [7:0] tmp_dst_2_fu_1417_p24;
wire   [7:0] tmp_dst_2_fu_1417_p26;
wire   [7:0] tmp_dst_2_fu_1417_p28;
wire   [7:0] tmp_dst_2_fu_1417_p30;
wire   [7:0] tmp_dst_2_fu_1417_p32;
wire   [7:0] tmp_dst_2_fu_1417_p33;
wire   [7:0] tmp_dst_3_fu_1571_p2;
wire   [7:0] tmp_dst_3_fu_1571_p4;
wire   [7:0] tmp_dst_3_fu_1571_p6;
wire   [7:0] tmp_dst_3_fu_1571_p8;
wire   [7:0] tmp_dst_3_fu_1571_p10;
wire   [7:0] tmp_dst_3_fu_1571_p12;
wire   [7:0] tmp_dst_3_fu_1571_p14;
wire   [7:0] tmp_dst_3_fu_1571_p16;
wire   [7:0] tmp_dst_3_fu_1571_p18;
wire   [7:0] tmp_dst_3_fu_1571_p20;
wire   [7:0] tmp_dst_3_fu_1571_p22;
wire   [7:0] tmp_dst_3_fu_1571_p24;
wire   [7:0] tmp_dst_3_fu_1571_p26;
wire   [7:0] tmp_dst_3_fu_1571_p28;
wire   [7:0] tmp_dst_3_fu_1571_p30;
wire   [7:0] tmp_dst_3_fu_1571_p32;
wire   [7:0] tmp_dst_3_fu_1571_p33;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [11:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1481;
reg    ap_condition_1487;
reg    ap_condition_1492;
reg    ap_condition_1496;
reg    ap_condition_1500;
reg    ap_condition_1504;
reg    ap_condition_1508;
reg    ap_condition_1512;
reg    ap_condition_1516;
reg    ap_condition_1520;
reg    ap_condition_1524;
reg    ap_condition_1528;
reg    ap_condition_1532;
reg    ap_condition_1536;
reg    ap_condition_1540;
reg    ap_condition_1544;
reg    ap_condition_1548;
reg    ap_condition_1552;
reg    ap_condition_1556;
reg    ap_condition_1560;
reg    ap_condition_1564;
reg    ap_condition_1568;
reg    ap_condition_1572;
reg    ap_condition_1576;
reg    ap_condition_1580;
reg    ap_condition_1584;
reg    ap_condition_1588;
reg    ap_condition_1592;
reg    ap_condition_1596;
reg    ap_condition_1600;
reg    ap_condition_1604;
reg    ap_condition_1608;
wire   [3:0] tmp_dst_fu_1008_p1;
wire   [3:0] tmp_dst_fu_1008_p3;
wire   [3:0] tmp_dst_fu_1008_p5;
wire   [3:0] tmp_dst_fu_1008_p7;
wire   [3:0] tmp_dst_fu_1008_p9;
wire   [3:0] tmp_dst_fu_1008_p11;
wire   [3:0] tmp_dst_fu_1008_p13;
wire   [3:0] tmp_dst_fu_1008_p15;
wire  signed [3:0] tmp_dst_fu_1008_p17;
wire  signed [3:0] tmp_dst_fu_1008_p19;
wire  signed [3:0] tmp_dst_fu_1008_p21;
wire  signed [3:0] tmp_dst_fu_1008_p23;
wire  signed [3:0] tmp_dst_fu_1008_p25;
wire  signed [3:0] tmp_dst_fu_1008_p27;
wire  signed [3:0] tmp_dst_fu_1008_p29;
wire  signed [3:0] tmp_dst_fu_1008_p31;
wire  signed [3:0] tmp_dst_1_fu_1282_p1;
wire   [3:0] tmp_dst_1_fu_1282_p3;
wire   [3:0] tmp_dst_1_fu_1282_p5;
wire   [3:0] tmp_dst_1_fu_1282_p7;
wire   [3:0] tmp_dst_1_fu_1282_p9;
wire   [3:0] tmp_dst_1_fu_1282_p11;
wire   [3:0] tmp_dst_1_fu_1282_p13;
wire   [3:0] tmp_dst_1_fu_1282_p15;
wire   [3:0] tmp_dst_1_fu_1282_p17;
wire  signed [3:0] tmp_dst_1_fu_1282_p19;
wire  signed [3:0] tmp_dst_1_fu_1282_p21;
wire  signed [3:0] tmp_dst_1_fu_1282_p23;
wire  signed [3:0] tmp_dst_1_fu_1282_p25;
wire  signed [3:0] tmp_dst_1_fu_1282_p27;
wire  signed [3:0] tmp_dst_1_fu_1282_p29;
wire  signed [3:0] tmp_dst_1_fu_1282_p31;
wire  signed [3:0] tmp_dst_2_fu_1417_p1;
wire  signed [3:0] tmp_dst_2_fu_1417_p3;
wire   [3:0] tmp_dst_2_fu_1417_p5;
wire   [3:0] tmp_dst_2_fu_1417_p7;
wire   [3:0] tmp_dst_2_fu_1417_p9;
wire   [3:0] tmp_dst_2_fu_1417_p11;
wire   [3:0] tmp_dst_2_fu_1417_p13;
wire   [3:0] tmp_dst_2_fu_1417_p15;
wire   [3:0] tmp_dst_2_fu_1417_p17;
wire   [3:0] tmp_dst_2_fu_1417_p19;
wire  signed [3:0] tmp_dst_2_fu_1417_p21;
wire  signed [3:0] tmp_dst_2_fu_1417_p23;
wire  signed [3:0] tmp_dst_2_fu_1417_p25;
wire  signed [3:0] tmp_dst_2_fu_1417_p27;
wire  signed [3:0] tmp_dst_2_fu_1417_p29;
wire  signed [3:0] tmp_dst_2_fu_1417_p31;
wire  signed [3:0] tmp_dst_3_fu_1571_p1;
wire  signed [3:0] tmp_dst_3_fu_1571_p3;
wire  signed [3:0] tmp_dst_3_fu_1571_p5;
wire   [3:0] tmp_dst_3_fu_1571_p7;
wire   [3:0] tmp_dst_3_fu_1571_p9;
wire   [3:0] tmp_dst_3_fu_1571_p11;
wire   [3:0] tmp_dst_3_fu_1571_p13;
wire   [3:0] tmp_dst_3_fu_1571_p15;
wire   [3:0] tmp_dst_3_fu_1571_p17;
wire   [3:0] tmp_dst_3_fu_1571_p19;
wire   [3:0] tmp_dst_3_fu_1571_p21;
wire  signed [3:0] tmp_dst_3_fu_1571_p23;
wire  signed [3:0] tmp_dst_3_fu_1571_p25;
wire  signed [3:0] tmp_dst_3_fu_1571_p27;
wire  signed [3:0] tmp_dst_3_fu_1571_p29;
wire  signed [3:0] tmp_dst_3_fu_1571_p31;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 12'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_138 = 32'd0;
#0 e_1_fu_142 = 64'd0;
#0 cnt_1_fu_146 = 64'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_33_4_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 8 ),.CASE1( 4'h1 ),.din1_WIDTH( 8 ),.CASE2( 4'h2 ),.din2_WIDTH( 8 ),.CASE3( 4'h3 ),.din3_WIDTH( 8 ),.CASE4( 4'h4 ),.din4_WIDTH( 8 ),.CASE5( 4'h5 ),.din5_WIDTH( 8 ),.CASE6( 4'h6 ),.din6_WIDTH( 8 ),.CASE7( 4'h7 ),.din7_WIDTH( 8 ),.CASE8( 4'h8 ),.din8_WIDTH( 8 ),.CASE9( 4'h9 ),.din9_WIDTH( 8 ),.CASE10( 4'hA ),.din10_WIDTH( 8 ),.CASE11( 4'hB ),.din11_WIDTH( 8 ),.CASE12( 4'hC ),.din12_WIDTH( 8 ),.CASE13( 4'hD ),.din13_WIDTH( 8 ),.CASE14( 4'hE ),.din14_WIDTH( 8 ),.CASE15( 4'hF ),.din15_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 4 ),.dout_WIDTH( 8 ))
sparsemux_33_4_8_1_1_U1(.din0(tmp_dst_fu_1008_p2),.din1(tmp_dst_fu_1008_p4),.din2(tmp_dst_fu_1008_p6),.din3(tmp_dst_fu_1008_p8),.din4(tmp_dst_fu_1008_p10),.din5(tmp_dst_fu_1008_p12),.din6(tmp_dst_fu_1008_p14),.din7(tmp_dst_fu_1008_p16),.din8(tmp_dst_fu_1008_p18),.din9(tmp_dst_fu_1008_p20),.din10(tmp_dst_fu_1008_p22),.din11(tmp_dst_fu_1008_p24),.din12(tmp_dst_fu_1008_p26),.din13(tmp_dst_fu_1008_p28),.din14(tmp_dst_fu_1008_p30),.din15(tmp_dst_fu_1008_p32),.def(tmp_dst_fu_1008_p33),.sel(trunc_ln11_reg_1738),.dout(tmp_dst_fu_1008_p35));
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_33_4_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hF ),.din0_WIDTH( 8 ),.CASE1( 4'h0 ),.din1_WIDTH( 8 ),.CASE2( 4'h1 ),.din2_WIDTH( 8 ),.CASE3( 4'h2 ),.din3_WIDTH( 8 ),.CASE4( 4'h3 ),.din4_WIDTH( 8 ),.CASE5( 4'h4 ),.din5_WIDTH( 8 ),.CASE6( 4'h5 ),.din6_WIDTH( 8 ),.CASE7( 4'h6 ),.din7_WIDTH( 8 ),.CASE8( 4'h7 ),.din8_WIDTH( 8 ),.CASE9( 4'h8 ),.din9_WIDTH( 8 ),.CASE10( 4'h9 ),.din10_WIDTH( 8 ),.CASE11( 4'hA ),.din11_WIDTH( 8 ),.CASE12( 4'hB ),.din12_WIDTH( 8 ),.CASE13( 4'hC ),.din13_WIDTH( 8 ),.CASE14( 4'hD ),.din14_WIDTH( 8 ),.CASE15( 4'hE ),.din15_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 4 ),.dout_WIDTH( 8 ))
sparsemux_33_4_8_1_1_U2(.din0(tmp_dst_1_fu_1282_p2),.din1(tmp_dst_1_fu_1282_p4),.din2(tmp_dst_1_fu_1282_p6),.din3(tmp_dst_1_fu_1282_p8),.din4(tmp_dst_1_fu_1282_p10),.din5(tmp_dst_1_fu_1282_p12),.din6(tmp_dst_1_fu_1282_p14),.din7(tmp_dst_1_fu_1282_p16),.din8(tmp_dst_1_fu_1282_p18),.din9(tmp_dst_1_fu_1282_p20),.din10(tmp_dst_1_fu_1282_p22),.din11(tmp_dst_1_fu_1282_p24),.din12(tmp_dst_1_fu_1282_p26),.din13(tmp_dst_1_fu_1282_p28),.din14(tmp_dst_1_fu_1282_p30),.din15(tmp_dst_1_fu_1282_p32),.def(tmp_dst_1_fu_1282_p33),.sel(trunc_ln11_reg_1738),.dout(tmp_dst_1_fu_1282_p35));
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_33_4_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hE ),.din0_WIDTH( 8 ),.CASE1( 4'hF ),.din1_WIDTH( 8 ),.CASE2( 4'h0 ),.din2_WIDTH( 8 ),.CASE3( 4'h1 ),.din3_WIDTH( 8 ),.CASE4( 4'h2 ),.din4_WIDTH( 8 ),.CASE5( 4'h3 ),.din5_WIDTH( 8 ),.CASE6( 4'h4 ),.din6_WIDTH( 8 ),.CASE7( 4'h5 ),.din7_WIDTH( 8 ),.CASE8( 4'h6 ),.din8_WIDTH( 8 ),.CASE9( 4'h7 ),.din9_WIDTH( 8 ),.CASE10( 4'h8 ),.din10_WIDTH( 8 ),.CASE11( 4'h9 ),.din11_WIDTH( 8 ),.CASE12( 4'hA ),.din12_WIDTH( 8 ),.CASE13( 4'hB ),.din13_WIDTH( 8 ),.CASE14( 4'hC ),.din14_WIDTH( 8 ),.CASE15( 4'hD ),.din15_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 4 ),.dout_WIDTH( 8 ))
sparsemux_33_4_8_1_1_U3(.din0(tmp_dst_2_fu_1417_p2),.din1(tmp_dst_2_fu_1417_p4),.din2(tmp_dst_2_fu_1417_p6),.din3(tmp_dst_2_fu_1417_p8),.din4(tmp_dst_2_fu_1417_p10),.din5(tmp_dst_2_fu_1417_p12),.din6(tmp_dst_2_fu_1417_p14),.din7(tmp_dst_2_fu_1417_p16),.din8(tmp_dst_2_fu_1417_p18),.din9(tmp_dst_2_fu_1417_p20),.din10(tmp_dst_2_fu_1417_p22),.din11(tmp_dst_2_fu_1417_p24),.din12(tmp_dst_2_fu_1417_p26),.din13(tmp_dst_2_fu_1417_p28),.din14(tmp_dst_2_fu_1417_p30),.din15(tmp_dst_2_fu_1417_p32),.def(tmp_dst_2_fu_1417_p33),.sel(trunc_ln11_reg_1738),.dout(tmp_dst_2_fu_1417_p35));
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_33_4_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hD ),.din0_WIDTH( 8 ),.CASE1( 4'hE ),.din1_WIDTH( 8 ),.CASE2( 4'hF ),.din2_WIDTH( 8 ),.CASE3( 4'h0 ),.din3_WIDTH( 8 ),.CASE4( 4'h1 ),.din4_WIDTH( 8 ),.CASE5( 4'h2 ),.din5_WIDTH( 8 ),.CASE6( 4'h3 ),.din6_WIDTH( 8 ),.CASE7( 4'h4 ),.din7_WIDTH( 8 ),.CASE8( 4'h5 ),.din8_WIDTH( 8 ),.CASE9( 4'h6 ),.din9_WIDTH( 8 ),.CASE10( 4'h7 ),.din10_WIDTH( 8 ),.CASE11( 4'h8 ),.din11_WIDTH( 8 ),.CASE12( 4'h9 ),.din12_WIDTH( 8 ),.CASE13( 4'hA ),.din13_WIDTH( 8 ),.CASE14( 4'hB ),.din14_WIDTH( 8 ),.CASE15( 4'hC ),.din15_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 4 ),.dout_WIDTH( 8 ))
sparsemux_33_4_8_1_1_U4(.din0(tmp_dst_3_fu_1571_p2),.din1(tmp_dst_3_fu_1571_p4),.din2(tmp_dst_3_fu_1571_p6),.din3(tmp_dst_3_fu_1571_p8),.din4(tmp_dst_3_fu_1571_p10),.din5(tmp_dst_3_fu_1571_p12),.din6(tmp_dst_3_fu_1571_p14),.din7(tmp_dst_3_fu_1571_p16),.din8(tmp_dst_3_fu_1571_p18),.din9(tmp_dst_3_fu_1571_p20),.din10(tmp_dst_3_fu_1571_p22),.din11(tmp_dst_3_fu_1571_p24),.din12(tmp_dst_3_fu_1571_p26),.din13(tmp_dst_3_fu_1571_p28),.din14(tmp_dst_3_fu_1571_p30),.din15(tmp_dst_3_fu_1571_p32),.def(tmp_dst_3_fu_1571_p33),.sel(trunc_ln11_reg_1738),.dout(tmp_dst_3_fu_1571_p35));
bfs_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage11),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b1 == ap_condition_exit_pp0_iter1_stage0) | ((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_reg_1746 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage10_11001) & (icmp_ln34_reg_2111 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_reg_1746 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        ap_phi_reg_pp0_iter0_cnt_3_reg_810 <= cnt_1_fu_146;
    end else if (((1'b0 == ap_block_pp0_stage10_11001) & (icmp_ln34_reg_2111 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_reg_1746 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_phi_reg_pp0_iter0_cnt_3_reg_810 <= cnt_11_fu_1653_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((icmp_ln28_reg_1919 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (grp_fu_864_p2 == 1'd0) & (icmp_ln29_3_reg_2012 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln28_reg_1919 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln29_3_reg_2012 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        ap_phi_reg_pp0_iter1_cnt_10_reg_851 <= ap_phi_reg_pp0_iter1_cnt_8_reg_837;
    end else if (((icmp_ln28_reg_1919 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (grp_fu_864_p2 == 1'd1) & (icmp_ln29_3_reg_2012 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_phi_reg_pp0_iter1_cnt_10_reg_851 <= cnt_14_fu_1685_p2;
    end else if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_phi_reg_pp0_iter1_cnt_10_reg_851 <= ap_phi_reg_pp0_iter0_cnt_10_reg_851;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (icmp_ln34_1_reg_2125 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_1_reg_1835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_1_reg_1835 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        ap_phi_reg_pp0_iter1_cnt_6_reg_822 <= ap_phi_reg_pp0_iter0_cnt_3_reg_810;
    end else if (((1'b0 == ap_block_pp0_stage11_11001) & (icmp_ln34_1_reg_2125 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_1_reg_1835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_phi_reg_pp0_iter1_cnt_6_reg_822 <= cnt_12_fu_1659_p2;
    end else if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_phi_reg_pp0_iter1_cnt_6_reg_822 <= ap_phi_reg_pp0_iter0_cnt_6_reg_822;
    end
end
always @ (posedge ap_clk) begin
    if ((((icmp_ln28_reg_1919 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln34_2_reg_2150 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln29_2_reg_1923 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln28_reg_1919 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln29_2_reg_1923 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ap_phi_reg_pp0_iter1_cnt_8_reg_837 <= ap_phi_reg_pp0_iter1_cnt_6_reg_822;
    end else if (((icmp_ln28_reg_1919 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln34_2_reg_2150 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln29_2_reg_1923 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_reg_pp0_iter1_cnt_8_reg_837 <= cnt_13_fu_1665_p2;
    end else if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_phi_reg_pp0_iter1_cnt_8_reg_837 <= ap_phi_reg_pp0_iter0_cnt_8_reg_837;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cnt_1_fu_146 <= cnt;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        cnt_1_fu_146 <= ap_phi_reg_pp0_iter1_cnt_10_reg_851;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            e_1_fu_142 <= e;
        end else if (((icmp_ln28_reg_1919 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            e_1_fu_142 <= e_10_fu_1675_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_138 <= 32'd0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln28_fu_1172_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        i_fu_138 <= i_4_fu_1203_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cnt_6_reg_822 <= ap_phi_reg_pp0_iter1_cnt_6_reg_822;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        e_6_reg_1730 <= e_1_fu_142;
        icmp_ln29_reg_1746 <= icmp_ln29_fu_936_p2;
        trunc_ln11_reg_1738 <= trunc_ln11_fu_902_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln28_reg_1919 <= icmp_ln28_fu_1172_p2;
        icmp_ln29_1_reg_1835 <= icmp_ln29_1_fu_1114_p2;
        icmp_ln29_2_reg_1923 <= icmp_ln29_2_fu_1178_p2;
        icmp_ln29_3_reg_2012 <= icmp_ln29_3_fu_1198_p2;
        lshr_ln14_2_reg_2007 <= {{e_9_fu_1183_p2[11:4]}};
        tmp_dst_reg_1830 <= tmp_dst_fu_1008_p35;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        icmp_ln34_1_reg_2125 <= grp_fu_874_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        icmp_ln34_2_reg_2150 <= grp_fu_874_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln34_3_reg_2164 <= grp_fu_864_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        icmp_ln34_reg_2111 <= grp_fu_864_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvars_iv_next11_cast4_cast_reg_1725[3 : 0] <= indvars_iv_next11_cast4_cast_fu_880_p1[3 : 0];
        level_addr_3_reg_2159 <= zext_ln31_3_fu_1671_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        level_addr_1_reg_2120 <= zext_ln31_1_fu_1642_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        level_addr_2_reg_2129 <= zext_ln31_2_fu_1646_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        level_addr_reg_2016 <= zext_ln31_fu_1214_p1;
        tmp_dst_1_reg_2021 <= tmp_dst_1_fu_1282_p35;
        tmp_dst_2_reg_2026 <= tmp_dst_2_fu_1417_p35;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_870 <= level_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_dst_3_reg_2115 <= tmp_dst_3_fu_1571_p35;
    end
end
always @ (*) begin
    if (((icmp_ln28_reg_1919 == 1'd0) & (1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_condition_exit_pp0_iter0_stage11 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage11 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln28_reg_1919 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (icmp_ln28_reg_1919 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cnt_6_out_ap_vld = 1'b1;
    end else begin
        cnt_6_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            edges_0_address0_local = zext_ln14_2_fu_1488_p1;
        end else if ((1'b1 == ap_condition_1487)) begin
            edges_0_address0_local = zext_ln28_fu_1134_p1;
        end else if ((1'b1 == ap_condition_1481)) begin
            edges_0_address0_local = zext_ln14_1_fu_1094_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_0_address0_local = zext_ln14_fu_916_p1;
        end else begin
            edges_0_address0_local = 'bx;
        end
    end else begin
        edges_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_2_fu_1178_p2 == 1'd1) & (icmp_ln28_fu_1172_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd14) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_1_fu_1114_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd15) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_0_ce0_local = 1'b1;
    end else begin
        edges_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            edges_10_address0_local = zext_ln14_2_fu_1488_p1;
        end else if ((1'b1 == ap_condition_1496)) begin
            edges_10_address0_local = zext_ln28_fu_1134_p1;
        end else if ((1'b1 == ap_condition_1492)) begin
            edges_10_address0_local = zext_ln14_1_fu_1094_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_10_address0_local = zext_ln14_fu_916_p1;
        end else begin
            edges_10_address0_local = 'bx;
        end
    end else begin
        edges_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_2_fu_1178_p2 == 1'd1) & (icmp_ln28_fu_1172_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_1_fu_1114_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_10_ce0_local = 1'b1;
    end else begin
        edges_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            edges_11_address0_local = zext_ln14_2_fu_1488_p1;
        end else if ((1'b1 == ap_condition_1504)) begin
            edges_11_address0_local = zext_ln28_fu_1134_p1;
        end else if ((1'b1 == ap_condition_1500)) begin
            edges_11_address0_local = zext_ln14_1_fu_1094_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_11_address0_local = zext_ln14_fu_916_p1;
        end else begin
            edges_11_address0_local = 'bx;
        end
    end else begin
        edges_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_2_fu_1178_p2 == 1'd1) & (icmp_ln28_fu_1172_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_1_fu_1114_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_11_ce0_local = 1'b1;
    end else begin
        edges_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            edges_12_address0_local = zext_ln14_2_fu_1488_p1;
        end else if ((1'b1 == ap_condition_1512)) begin
            edges_12_address0_local = zext_ln28_fu_1134_p1;
        end else if ((1'b1 == ap_condition_1508)) begin
            edges_12_address0_local = zext_ln14_1_fu_1094_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_12_address0_local = zext_ln14_fu_916_p1;
        end else begin
            edges_12_address0_local = 'bx;
        end
    end else begin
        edges_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_2_fu_1178_p2 == 1'd1) & (icmp_ln28_fu_1172_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_1_fu_1114_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_12_ce0_local = 1'b1;
    end else begin
        edges_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            edges_13_address0_local = zext_ln14_2_fu_1488_p1;
        end else if ((1'b1 == ap_condition_1520)) begin
            edges_13_address0_local = zext_ln28_fu_1134_p1;
        end else if ((1'b1 == ap_condition_1516)) begin
            edges_13_address0_local = zext_ln14_1_fu_1094_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_13_address0_local = zext_ln14_fu_916_p1;
        end else begin
            edges_13_address0_local = 'bx;
        end
    end else begin
        edges_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_2_fu_1178_p2 == 1'd1) & (icmp_ln28_fu_1172_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_1_fu_1114_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd12) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_13_ce0_local = 1'b1;
    end else begin
        edges_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            edges_14_address0_local = zext_ln14_2_fu_1488_p1;
        end else if ((1'b1 == ap_condition_1528)) begin
            edges_14_address0_local = zext_ln28_fu_1134_p1;
        end else if ((1'b1 == ap_condition_1524)) begin
            edges_14_address0_local = zext_ln14_1_fu_1094_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_14_address0_local = zext_ln14_fu_916_p1;
        end else begin
            edges_14_address0_local = 'bx;
        end
    end else begin
        edges_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_2_fu_1178_p2 == 1'd1) & (icmp_ln28_fu_1172_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd12) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_1_fu_1114_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd13) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_14_ce0_local = 1'b1;
    end else begin
        edges_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            edges_15_address0_local = zext_ln14_2_fu_1488_p1;
        end else if ((1'b1 == ap_condition_1536)) begin
            edges_15_address0_local = zext_ln28_fu_1134_p1;
        end else if ((1'b1 == ap_condition_1532)) begin
            edges_15_address0_local = zext_ln14_1_fu_1094_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_15_address0_local = zext_ln14_fu_916_p1;
        end else begin
            edges_15_address0_local = 'bx;
        end
    end else begin
        edges_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_2_fu_1178_p2 == 1'd1) & (icmp_ln28_fu_1172_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd13) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_1_fu_1114_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd14) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_15_ce0_local = 1'b1;
    end else begin
        edges_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            edges_1_address0_local = zext_ln14_2_fu_1488_p1;
        end else if ((1'b1 == ap_condition_1544)) begin
            edges_1_address0_local = zext_ln28_fu_1134_p1;
        end else if ((1'b1 == ap_condition_1540)) begin
            edges_1_address0_local = zext_ln14_1_fu_1094_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_1_address0_local = zext_ln14_fu_916_p1;
        end else begin
            edges_1_address0_local = 'bx;
        end
    end else begin
        edges_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_2_fu_1178_p2 == 1'd1) & (icmp_ln28_fu_1172_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd15) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_1_fu_1114_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_1_ce0_local = 1'b1;
    end else begin
        edges_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            edges_2_address0_local = zext_ln14_2_fu_1488_p1;
        end else if ((1'b1 == ap_condition_1552)) begin
            edges_2_address0_local = zext_ln28_fu_1134_p1;
        end else if ((1'b1 == ap_condition_1548)) begin
            edges_2_address0_local = zext_ln14_1_fu_1094_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_2_address0_local = zext_ln14_fu_916_p1;
        end else begin
            edges_2_address0_local = 'bx;
        end
    end else begin
        edges_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_2_fu_1178_p2 == 1'd1) & (icmp_ln28_fu_1172_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_1_fu_1114_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_2_ce0_local = 1'b1;
    end else begin
        edges_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            edges_3_address0_local = zext_ln14_2_fu_1488_p1;
        end else if ((1'b1 == ap_condition_1560)) begin
            edges_3_address0_local = zext_ln28_fu_1134_p1;
        end else if ((1'b1 == ap_condition_1556)) begin
            edges_3_address0_local = zext_ln14_1_fu_1094_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_3_address0_local = zext_ln14_fu_916_p1;
        end else begin
            edges_3_address0_local = 'bx;
        end
    end else begin
        edges_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_2_fu_1178_p2 == 1'd1) & (icmp_ln28_fu_1172_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_1_fu_1114_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_3_ce0_local = 1'b1;
    end else begin
        edges_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            edges_4_address0_local = zext_ln14_2_fu_1488_p1;
        end else if ((1'b1 == ap_condition_1568)) begin
            edges_4_address0_local = zext_ln28_fu_1134_p1;
        end else if ((1'b1 == ap_condition_1564)) begin
            edges_4_address0_local = zext_ln14_1_fu_1094_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_4_address0_local = zext_ln14_fu_916_p1;
        end else begin
            edges_4_address0_local = 'bx;
        end
    end else begin
        edges_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_2_fu_1178_p2 == 1'd1) & (icmp_ln28_fu_1172_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_1_fu_1114_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_4_ce0_local = 1'b1;
    end else begin
        edges_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            edges_5_address0_local = zext_ln14_2_fu_1488_p1;
        end else if ((1'b1 == ap_condition_1576)) begin
            edges_5_address0_local = zext_ln28_fu_1134_p1;
        end else if ((1'b1 == ap_condition_1572)) begin
            edges_5_address0_local = zext_ln14_1_fu_1094_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_5_address0_local = zext_ln14_fu_916_p1;
        end else begin
            edges_5_address0_local = 'bx;
        end
    end else begin
        edges_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_2_fu_1178_p2 == 1'd1) & (icmp_ln28_fu_1172_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_1_fu_1114_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_5_ce0_local = 1'b1;
    end else begin
        edges_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            edges_6_address0_local = zext_ln14_2_fu_1488_p1;
        end else if ((1'b1 == ap_condition_1584)) begin
            edges_6_address0_local = zext_ln28_fu_1134_p1;
        end else if ((1'b1 == ap_condition_1580)) begin
            edges_6_address0_local = zext_ln14_1_fu_1094_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_6_address0_local = zext_ln14_fu_916_p1;
        end else begin
            edges_6_address0_local = 'bx;
        end
    end else begin
        edges_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_2_fu_1178_p2 == 1'd1) & (icmp_ln28_fu_1172_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_1_fu_1114_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_6_ce0_local = 1'b1;
    end else begin
        edges_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            edges_7_address0_local = zext_ln14_2_fu_1488_p1;
        end else if ((1'b1 == ap_condition_1592)) begin
            edges_7_address0_local = zext_ln28_fu_1134_p1;
        end else if ((1'b1 == ap_condition_1588)) begin
            edges_7_address0_local = zext_ln14_1_fu_1094_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_7_address0_local = zext_ln14_fu_916_p1;
        end else begin
            edges_7_address0_local = 'bx;
        end
    end else begin
        edges_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_2_fu_1178_p2 == 1'd1) & (icmp_ln28_fu_1172_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_1_fu_1114_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_7_ce0_local = 1'b1;
    end else begin
        edges_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            edges_8_address0_local = zext_ln14_2_fu_1488_p1;
        end else if ((1'b1 == ap_condition_1600)) begin
            edges_8_address0_local = zext_ln28_fu_1134_p1;
        end else if ((1'b1 == ap_condition_1596)) begin
            edges_8_address0_local = zext_ln14_1_fu_1094_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_8_address0_local = zext_ln14_fu_916_p1;
        end else begin
            edges_8_address0_local = 'bx;
        end
    end else begin
        edges_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_2_fu_1178_p2 == 1'd1) & (icmp_ln28_fu_1172_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_1_fu_1114_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_8_ce0_local = 1'b1;
    end else begin
        edges_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            edges_9_address0_local = zext_ln14_2_fu_1488_p1;
        end else if ((1'b1 == ap_condition_1608)) begin
            edges_9_address0_local = zext_ln28_fu_1134_p1;
        end else if ((1'b1 == ap_condition_1604)) begin
            edges_9_address0_local = zext_ln14_1_fu_1094_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_9_address0_local = zext_ln14_fu_916_p1;
        end else begin
            edges_9_address0_local = 'bx;
        end
    end else begin
        edges_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_2_fu_1178_p2 == 1'd1) & (icmp_ln28_fu_1172_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_1_fu_1114_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_9_ce0_local = 1'b1;
    end else begin
        edges_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        level_address0_local = level_addr_3_reg_2159;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        level_address0_local = zext_ln31_3_fu_1671_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        level_address0_local = level_addr_2_reg_2129;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        level_address0_local = zext_ln31_2_fu_1646_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        level_address0_local = level_addr_1_reg_2120;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        level_address0_local = zext_ln31_1_fu_1642_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        level_address0_local = level_addr_reg_2016;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        level_address0_local = zext_ln31_fu_1214_p1;
    end else begin
        level_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        level_ce0_local = 1'b1;
    end else begin
        level_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (icmp_ln34_reg_2111 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_reg_1746 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln28_reg_1919 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (grp_fu_874_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_2_reg_1923 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((icmp_ln28_reg_1919 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln34_3_reg_2164 == 1'd1) & (icmp_ln29_3_reg_2012 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage8_11001) & (grp_fu_874_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_1_reg_1835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        level_we0_local = 1'b1;
    end else begin
        level_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1481 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_1_fu_1114_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd15) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1487 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_2_fu_1178_p2 == 1'd1) & (icmp_ln28_fu_1172_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd14) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1492 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_1_fu_1114_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1496 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_2_fu_1178_p2 == 1'd1) & (icmp_ln28_fu_1172_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1500 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_1_fu_1114_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1504 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_2_fu_1178_p2 == 1'd1) & (icmp_ln28_fu_1172_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1508 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_1_fu_1114_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1512 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_2_fu_1178_p2 == 1'd1) & (icmp_ln28_fu_1172_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1516 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_1_fu_1114_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd12) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1520 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_2_fu_1178_p2 == 1'd1) & (icmp_ln28_fu_1172_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1524 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_1_fu_1114_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd13) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1528 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_2_fu_1178_p2 == 1'd1) & (icmp_ln28_fu_1172_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd12) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1532 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_1_fu_1114_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd14) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1536 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_2_fu_1178_p2 == 1'd1) & (icmp_ln28_fu_1172_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd13) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1540 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_1_fu_1114_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1544 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_2_fu_1178_p2 == 1'd1) & (icmp_ln28_fu_1172_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd15) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1548 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_1_fu_1114_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1552 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_2_fu_1178_p2 == 1'd1) & (icmp_ln28_fu_1172_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1556 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_1_fu_1114_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1560 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_2_fu_1178_p2 == 1'd1) & (icmp_ln28_fu_1172_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1564 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_1_fu_1114_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1568 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_2_fu_1178_p2 == 1'd1) & (icmp_ln28_fu_1172_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1572 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_1_fu_1114_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1576 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_2_fu_1178_p2 == 1'd1) & (icmp_ln28_fu_1172_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1580 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_1_fu_1114_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1584 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_2_fu_1178_p2 == 1'd1) & (icmp_ln28_fu_1172_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1588 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_1_fu_1114_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1592 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_2_fu_1178_p2 == 1'd1) & (icmp_ln28_fu_1172_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1596 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_1_fu_1114_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1600 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_2_fu_1178_p2 == 1'd1) & (icmp_ln28_fu_1172_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1604 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_1_fu_1114_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1608 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_2_fu_1178_p2 == 1'd1) & (icmp_ln28_fu_1172_p2 == 1'd1) & (trunc_ln11_reg_1738 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage11;
assign ap_phi_reg_pp0_iter0_cnt_10_reg_851 = 'bx;
assign ap_phi_reg_pp0_iter0_cnt_6_reg_822 = 'bx;
assign ap_phi_reg_pp0_iter0_cnt_8_reg_837 = 'bx;
assign ap_ready = ap_ready_sig;
assign cnt_11_fu_1653_p2 = (cnt_1_fu_146 + 64'd1);
assign cnt_12_fu_1659_p2 = (ap_phi_reg_pp0_iter0_cnt_3_reg_810 + 64'd1);
assign cnt_13_fu_1665_p2 = (ap_phi_reg_pp0_iter1_cnt_6_reg_822 + 64'd1);
assign cnt_14_fu_1685_p2 = (ap_phi_reg_pp0_iter1_cnt_8_reg_837 + 64'd1);
assign cnt_6_out = cnt_6_reg_822;
assign e_10_fu_1675_p2 = (e_6_reg_1730 + 64'd4);
assign e_7_fu_1079_p2 = (e_6_reg_1730 + 64'd1);
assign e_8_fu_1119_p2 = (e_6_reg_1730 + 64'd2);
assign e_9_fu_1183_p2 = (e_6_reg_1730 + 64'd3);
assign edges_0_address0 = edges_0_address0_local;
assign edges_0_ce0 = edges_0_ce0_local;
assign edges_10_address0 = edges_10_address0_local;
assign edges_10_ce0 = edges_10_ce0_local;
assign edges_11_address0 = edges_11_address0_local;
assign edges_11_ce0 = edges_11_ce0_local;
assign edges_12_address0 = edges_12_address0_local;
assign edges_12_ce0 = edges_12_ce0_local;
assign edges_13_address0 = edges_13_address0_local;
assign edges_13_ce0 = edges_13_ce0_local;
assign edges_14_address0 = edges_14_address0_local;
assign edges_14_ce0 = edges_14_ce0_local;
assign edges_15_address0 = edges_15_address0_local;
assign edges_15_ce0 = edges_15_ce0_local;
assign edges_1_address0 = edges_1_address0_local;
assign edges_1_ce0 = edges_1_ce0_local;
assign edges_2_address0 = edges_2_address0_local;
assign edges_2_ce0 = edges_2_ce0_local;
assign edges_3_address0 = edges_3_address0_local;
assign edges_3_ce0 = edges_3_ce0_local;
assign edges_4_address0 = edges_4_address0_local;
assign edges_4_ce0 = edges_4_ce0_local;
assign edges_5_address0 = edges_5_address0_local;
assign edges_5_ce0 = edges_5_ce0_local;
assign edges_6_address0 = edges_6_address0_local;
assign edges_6_ce0 = edges_6_ce0_local;
assign edges_7_address0 = edges_7_address0_local;
assign edges_7_ce0 = edges_7_ce0_local;
assign edges_8_address0 = edges_8_address0_local;
assign edges_8_ce0 = edges_8_ce0_local;
assign edges_9_address0 = edges_9_address0_local;
assign edges_9_ce0 = edges_9_ce0_local;
assign grp_fu_864_p2 = ((level_q0 == 8'd127) ? 1'b1 : 1'b0);
assign grp_fu_874_p2 = ((reg_870 == 8'd127) ? 1'b1 : 1'b0);
assign i_1_fu_1164_p3 = {{tmp_fu_1154_p4}, {2'd2}};
assign i_4_fu_1203_p2 = (i_fu_138 + 32'd4);
assign icmp_ln28_fu_1172_p2 = (($signed(i_1_fu_1164_p3) < $signed(32'd158)) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_1114_p2 = ((e_7_fu_1079_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_1178_p2 = ((e_8_fu_1119_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_1198_p2 = ((e_9_fu_1183_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_936_p2 = ((e_1_fu_142 < tmp_end) ? 1'b1 : 1'b0);
assign indvars_iv_next11_cast4_cast_fu_880_p1 = indvars_iv_next11_cast4;
assign level_address0 = level_address0_local;
assign level_ce0 = level_ce0_local;
assign level_d0 = indvars_iv_next11_cast4_cast_reg_1725;
assign level_we0 = level_we0_local;
assign lshr_ln14_1_fu_1084_p4 = {{e_7_fu_1079_p2[11:4]}};
assign lshr_ln1_fu_906_p4 = {{e_1_fu_142[11:4]}};
assign lshr_ln2_fu_1124_p4 = {{e_8_fu_1119_p2[11:4]}};
assign tmp_dst_1_fu_1282_p10 = edges_4_q0[7:0];
assign tmp_dst_1_fu_1282_p12 = edges_5_q0[7:0];
assign tmp_dst_1_fu_1282_p14 = edges_6_q0[7:0];
assign tmp_dst_1_fu_1282_p16 = edges_7_q0[7:0];
assign tmp_dst_1_fu_1282_p18 = edges_8_q0[7:0];
assign tmp_dst_1_fu_1282_p2 = edges_0_q0[7:0];
assign tmp_dst_1_fu_1282_p20 = edges_9_q0[7:0];
assign tmp_dst_1_fu_1282_p22 = edges_10_q0[7:0];
assign tmp_dst_1_fu_1282_p24 = edges_11_q0[7:0];
assign tmp_dst_1_fu_1282_p26 = edges_12_q0[7:0];
assign tmp_dst_1_fu_1282_p28 = edges_13_q0[7:0];
assign tmp_dst_1_fu_1282_p30 = edges_14_q0[7:0];
assign tmp_dst_1_fu_1282_p32 = edges_15_q0[7:0];
assign tmp_dst_1_fu_1282_p33 = 'bx;
assign tmp_dst_1_fu_1282_p4 = edges_1_q0[7:0];
assign tmp_dst_1_fu_1282_p6 = edges_2_q0[7:0];
assign tmp_dst_1_fu_1282_p8 = edges_3_q0[7:0];
assign tmp_dst_2_fu_1417_p10 = edges_4_q0[7:0];
assign tmp_dst_2_fu_1417_p12 = edges_5_q0[7:0];
assign tmp_dst_2_fu_1417_p14 = edges_6_q0[7:0];
assign tmp_dst_2_fu_1417_p16 = edges_7_q0[7:0];
assign tmp_dst_2_fu_1417_p18 = edges_8_q0[7:0];
assign tmp_dst_2_fu_1417_p2 = edges_0_q0[7:0];
assign tmp_dst_2_fu_1417_p20 = edges_9_q0[7:0];
assign tmp_dst_2_fu_1417_p22 = edges_10_q0[7:0];
assign tmp_dst_2_fu_1417_p24 = edges_11_q0[7:0];
assign tmp_dst_2_fu_1417_p26 = edges_12_q0[7:0];
assign tmp_dst_2_fu_1417_p28 = edges_13_q0[7:0];
assign tmp_dst_2_fu_1417_p30 = edges_14_q0[7:0];
assign tmp_dst_2_fu_1417_p32 = edges_15_q0[7:0];
assign tmp_dst_2_fu_1417_p33 = 'bx;
assign tmp_dst_2_fu_1417_p4 = edges_1_q0[7:0];
assign tmp_dst_2_fu_1417_p6 = edges_2_q0[7:0];
assign tmp_dst_2_fu_1417_p8 = edges_3_q0[7:0];
assign tmp_dst_3_fu_1571_p10 = edges_4_q0[7:0];
assign tmp_dst_3_fu_1571_p12 = edges_5_q0[7:0];
assign tmp_dst_3_fu_1571_p14 = edges_6_q0[7:0];
assign tmp_dst_3_fu_1571_p16 = edges_7_q0[7:0];
assign tmp_dst_3_fu_1571_p18 = edges_8_q0[7:0];
assign tmp_dst_3_fu_1571_p2 = edges_0_q0[7:0];
assign tmp_dst_3_fu_1571_p20 = edges_9_q0[7:0];
assign tmp_dst_3_fu_1571_p22 = edges_10_q0[7:0];
assign tmp_dst_3_fu_1571_p24 = edges_11_q0[7:0];
assign tmp_dst_3_fu_1571_p26 = edges_12_q0[7:0];
assign tmp_dst_3_fu_1571_p28 = edges_13_q0[7:0];
assign tmp_dst_3_fu_1571_p30 = edges_14_q0[7:0];
assign tmp_dst_3_fu_1571_p32 = edges_15_q0[7:0];
assign tmp_dst_3_fu_1571_p33 = 'bx;
assign tmp_dst_3_fu_1571_p4 = edges_1_q0[7:0];
assign tmp_dst_3_fu_1571_p6 = edges_2_q0[7:0];
assign tmp_dst_3_fu_1571_p8 = edges_3_q0[7:0];
assign tmp_dst_fu_1008_p10 = edges_4_q0[7:0];
assign tmp_dst_fu_1008_p12 = edges_5_q0[7:0];
assign tmp_dst_fu_1008_p14 = edges_6_q0[7:0];
assign tmp_dst_fu_1008_p16 = edges_7_q0[7:0];
assign tmp_dst_fu_1008_p18 = edges_8_q0[7:0];
assign tmp_dst_fu_1008_p2 = edges_0_q0[7:0];
assign tmp_dst_fu_1008_p20 = edges_9_q0[7:0];
assign tmp_dst_fu_1008_p22 = edges_10_q0[7:0];
assign tmp_dst_fu_1008_p24 = edges_11_q0[7:0];
assign tmp_dst_fu_1008_p26 = edges_12_q0[7:0];
assign tmp_dst_fu_1008_p28 = edges_13_q0[7:0];
assign tmp_dst_fu_1008_p30 = edges_14_q0[7:0];
assign tmp_dst_fu_1008_p32 = edges_15_q0[7:0];
assign tmp_dst_fu_1008_p33 = 'bx;
assign tmp_dst_fu_1008_p4 = edges_1_q0[7:0];
assign tmp_dst_fu_1008_p6 = edges_2_q0[7:0];
assign tmp_dst_fu_1008_p8 = edges_3_q0[7:0];
assign tmp_fu_1154_p4 = {{i_fu_138[31:2]}};
assign trunc_ln11_fu_902_p1 = e_1_fu_142[3:0];
assign zext_ln14_1_fu_1094_p1 = lshr_ln14_1_fu_1084_p4;
assign zext_ln14_2_fu_1488_p1 = lshr_ln14_2_reg_2007;
assign zext_ln14_fu_916_p1 = lshr_ln1_fu_906_p4;
assign zext_ln28_fu_1134_p1 = lshr_ln2_fu_1124_p4;
assign zext_ln31_1_fu_1642_p1 = tmp_dst_1_reg_2021;
assign zext_ln31_2_fu_1646_p1 = tmp_dst_2_reg_2026;
assign zext_ln31_3_fu_1671_p1 = tmp_dst_3_reg_2115;
assign zext_ln31_fu_1214_p1 = tmp_dst_reg_1830;
always @ (posedge ap_clk) begin
    indvars_iv_next11_cast4_cast_reg_1725[7:4] <= 4'b0000;
end
endmodule 