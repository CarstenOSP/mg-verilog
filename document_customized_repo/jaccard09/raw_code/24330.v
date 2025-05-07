module bfs_bfs_Pipeline_loop_neighbors (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,e,cnt,tmp_end,edges_0_address0,edges_0_ce0,edges_0_q0,edges_1_address0,edges_1_ce0,edges_1_q0,edges_2_address0,edges_2_ce0,edges_2_q0,edges_3_address0,edges_3_ce0,edges_3_q0,level_address0,level_ce0,level_we0,level_d0,level_q0,indvars_iv_next11_cast4,cnt_14_out,cnt_14_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 24'd1;
parameter    ap_ST_fsm_pp0_stage1 = 24'd2;
parameter    ap_ST_fsm_pp0_stage2 = 24'd4;
parameter    ap_ST_fsm_pp0_stage3 = 24'd8;
parameter    ap_ST_fsm_pp0_stage4 = 24'd16;
parameter    ap_ST_fsm_pp0_stage5 = 24'd32;
parameter    ap_ST_fsm_pp0_stage6 = 24'd64;
parameter    ap_ST_fsm_pp0_stage7 = 24'd128;
parameter    ap_ST_fsm_pp0_stage8 = 24'd256;
parameter    ap_ST_fsm_pp0_stage9 = 24'd512;
parameter    ap_ST_fsm_pp0_stage10 = 24'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 24'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 24'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 24'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 24'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 24'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 24'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 24'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 24'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 24'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 24'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 24'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 24'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 24'd8388608;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] e;
input  [63:0] cnt;
input  [63:0] tmp_end;
output  [9:0] edges_0_address0;
output   edges_0_ce0;
input  [63:0] edges_0_q0;
output  [9:0] edges_1_address0;
output   edges_1_ce0;
input  [63:0] edges_1_q0;
output  [9:0] edges_2_address0;
output   edges_2_ce0;
input  [63:0] edges_2_q0;
output  [9:0] edges_3_address0;
output   edges_3_ce0;
input  [63:0] edges_3_q0;
output  [7:0] level_address0;
output   level_ce0;
output   level_we0;
output  [7:0] level_d0;
input  [7:0] level_q0;
input  [3:0] indvars_iv_next11_cast4;
output  [63:0] cnt_14_out;
output   cnt_14_out_ap_vld;
reg ap_idle;
reg cnt_14_out_ap_vld;
(* fsm_encoding = "none" *) reg   [23:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_subdone;
reg   [0:0] icmp_ln28_reg_1473;
reg    ap_condition_exit_pp0_iter0_stage23;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] cnt_14_reg_556;
reg   [7:0] reg_604;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
wire    ap_block_pp0_stage0_11001;
wire   [7:0] indvars_iv_next11_cast4_cast_fu_614_p1;
reg   [7:0] indvars_iv_next11_cast4_cast_reg_1335;
reg   [63:0] e_10_reg_1340;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [1:0] trunc_ln11_fu_636_p1;
reg   [1:0] trunc_ln11_reg_1352;
wire   [0:0] icmp_ln29_fu_658_p2;
reg   [0:0] icmp_ln29_reg_1364;
wire   [7:0] tmp_dst_fu_682_p11;
reg   [7:0] tmp_dst_reg_1388;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [0:0] icmp_ln29_1_fu_728_p2;
reg   [0:0] icmp_ln29_1_reg_1393;
wire   [0:0] icmp_ln29_2_fu_756_p2;
reg   [0:0] icmp_ln29_2_reg_1417;
reg   [9:0] lshr_ln14_3_reg_1441;
wire   [0:0] icmp_ln29_3_fu_776_p2;
reg   [0:0] icmp_ln29_3_reg_1446;
reg   [9:0] lshr_ln14_4_reg_1450;
wire   [0:0] icmp_ln29_4_fu_796_p2;
reg   [0:0] icmp_ln29_4_reg_1455;
reg   [9:0] lshr_ln14_5_reg_1459;
wire   [0:0] icmp_ln29_5_fu_816_p2;
reg   [0:0] icmp_ln29_5_reg_1464;
reg   [9:0] lshr_ln2_reg_1468;
wire   [0:0] icmp_ln28_fu_854_p2;
wire   [0:0] icmp_ln29_6_fu_860_p2;
reg   [0:0] icmp_ln29_6_reg_1477;
reg   [9:0] lshr_ln14_6_reg_1481;
wire   [0:0] icmp_ln29_7_fu_880_p2;
reg   [0:0] icmp_ln29_7_reg_1486;
reg   [7:0] level_addr_reg_1490;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [7:0] tmp_dst_1_fu_916_p11;
reg   [7:0] tmp_dst_1_reg_1495;
wire   [7:0] tmp_dst_2_fu_955_p11;
reg   [7:0] tmp_dst_2_reg_1500;
wire   [0:0] grp_fu_598_p2;
reg   [0:0] icmp_ln34_reg_1545;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [7:0] tmp_dst_3_fu_1008_p11;
reg   [7:0] tmp_dst_3_reg_1549;
wire   [7:0] tmp_dst_4_fu_1047_p11;
reg   [7:0] tmp_dst_4_reg_1554;
wire   [7:0] tmp_dst_5_fu_1100_p11;
reg   [7:0] tmp_dst_5_reg_1599;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [7:0] tmp_dst_6_fu_1139_p11;
reg   [7:0] tmp_dst_6_reg_1604;
reg   [7:0] level_addr_1_reg_1629;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [7:0] tmp_dst_7_fu_1189_p11;
reg   [7:0] tmp_dst_7_reg_1634;
wire   [0:0] grp_fu_608_p2;
reg   [0:0] icmp_ln34_1_reg_1639;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [7:0] level_addr_2_reg_1643;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [0:0] icmp_ln34_2_reg_1648;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [7:0] level_addr_3_reg_1652;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [0:0] icmp_ln34_3_reg_1657;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [7:0] level_addr_4_reg_1661;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg   [0:0] icmp_ln34_4_reg_1666;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire   [63:0] cnt_19_fu_1227_p2;
reg   [7:0] level_addr_5_reg_1681;
wire   [63:0] cnt_20_fu_1237_p2;
wire   [63:0] cnt_21_fu_1243_p2;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
reg   [0:0] icmp_ln34_5_reg_1696;
wire   [63:0] cnt_22_fu_1249_p2;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
reg   [7:0] level_addr_6_reg_1705;
wire   [63:0] cnt_23_fu_1259_p2;
wire   [63:0] cnt_24_fu_1265_p2;
wire    ap_block_pp0_stage23_11001;
reg   [0:0] icmp_ln34_6_reg_1720;
wire   [63:0] cnt_25_fu_1271_p2;
reg   [7:0] level_addr_7_reg_1729;
reg   [0:0] icmp_ln34_7_reg_1734;
wire   [63:0] cnt_26_fu_1291_p2;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_block_pp0_stage2_subdone;
reg   [63:0] ap_phi_reg_pp0_iter0_cnt_3_reg_488;
reg   [63:0] ap_phi_reg_pp0_iter0_cnt_6_reg_500;
reg   [63:0] ap_phi_reg_pp0_iter0_cnt_8_reg_514;
reg   [63:0] ap_phi_reg_pp0_iter0_cnt_10_reg_528;
reg   [63:0] ap_phi_reg_pp0_iter0_cnt_12_reg_542;
wire   [63:0] ap_phi_reg_pp0_iter0_cnt_14_reg_556;
reg   [63:0] ap_phi_reg_pp0_iter1_cnt_14_reg_556;
wire   [63:0] ap_phi_reg_pp0_iter0_cnt_16_reg_571;
reg   [63:0] ap_phi_reg_pp0_iter1_cnt_16_reg_571;
wire   [63:0] ap_phi_reg_pp0_iter0_cnt_18_reg_585;
reg   [63:0] ap_phi_reg_pp0_iter1_cnt_18_reg_585;
wire   [63:0] zext_ln14_fu_650_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_1_fu_720_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_2_fu_748_p1;
wire   [63:0] zext_ln31_fu_896_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_3_fu_978_p1;
wire   [63:0] zext_ln14_4_fu_985_p1;
wire   [63:0] zext_ln14_5_fu_1070_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln28_fu_1077_p1;
wire   [63:0] zext_ln14_6_fu_1162_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln31_1_fu_1169_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln31_2_fu_1212_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln31_3_fu_1216_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln31_4_fu_1220_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln31_5_fu_1233_p1;
wire    ap_block_pp0_stage18;
wire   [63:0] zext_ln31_6_fu_1255_p1;
wire    ap_block_pp0_stage21;
wire   [63:0] zext_ln31_7_fu_1277_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] i_fu_100;
wire   [31:0] i_4_fu_885_p2;
wire    ap_loop_init;
reg   [63:0] e_1_fu_104;
wire   [63:0] e_18_fu_1281_p2;
reg   [63:0] cnt_1_fu_108;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage0_01001;
reg    edges_0_ce0_local;
reg   [9:0] edges_0_address0_local;
reg    edges_1_ce0_local;
reg   [9:0] edges_1_address0_local;
reg    edges_2_ce0_local;
reg   [9:0] edges_2_address0_local;
reg    edges_3_ce0_local;
reg   [9:0] edges_3_address0_local;
reg    level_ce0_local;
reg   [7:0] level_address0_local;
reg    level_we0_local;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage17;
wire    ap_block_pp0_stage20;
wire    ap_block_pp0_stage23;
wire   [9:0] lshr_ln1_fu_640_p4;
wire   [7:0] tmp_dst_fu_682_p2;
wire   [7:0] tmp_dst_fu_682_p4;
wire   [7:0] tmp_dst_fu_682_p6;
wire   [7:0] tmp_dst_fu_682_p8;
wire   [7:0] tmp_dst_fu_682_p9;
wire   [63:0] e_11_fu_705_p2;
wire   [9:0] lshr_ln14_1_fu_710_p4;
wire   [63:0] e_12_fu_733_p2;
wire   [9:0] lshr_ln14_2_fu_738_p4;
wire   [63:0] e_13_fu_761_p2;
wire   [63:0] e_14_fu_781_p2;
wire   [63:0] e_15_fu_801_p2;
wire   [63:0] e_16_fu_821_p2;
wire   [28:0] tmp_fu_836_p4;
wire   [31:0] i_1_fu_846_p3;
wire   [63:0] e_17_fu_865_p2;
wire   [7:0] tmp_dst_1_fu_916_p2;
wire   [7:0] tmp_dst_1_fu_916_p4;
wire   [7:0] tmp_dst_1_fu_916_p6;
wire   [7:0] tmp_dst_1_fu_916_p8;
wire   [7:0] tmp_dst_1_fu_916_p9;
wire   [7:0] tmp_dst_2_fu_955_p2;
wire   [7:0] tmp_dst_2_fu_955_p4;
wire   [7:0] tmp_dst_2_fu_955_p6;
wire   [7:0] tmp_dst_2_fu_955_p8;
wire   [7:0] tmp_dst_2_fu_955_p9;
wire   [7:0] tmp_dst_3_fu_1008_p2;
wire   [7:0] tmp_dst_3_fu_1008_p4;
wire   [7:0] tmp_dst_3_fu_1008_p6;
wire   [7:0] tmp_dst_3_fu_1008_p8;
wire   [7:0] tmp_dst_3_fu_1008_p9;
wire   [7:0] tmp_dst_4_fu_1047_p2;
wire   [7:0] tmp_dst_4_fu_1047_p4;
wire   [7:0] tmp_dst_4_fu_1047_p6;
wire   [7:0] tmp_dst_4_fu_1047_p8;
wire   [7:0] tmp_dst_4_fu_1047_p9;
wire   [7:0] tmp_dst_5_fu_1100_p2;
wire   [7:0] tmp_dst_5_fu_1100_p4;
wire   [7:0] tmp_dst_5_fu_1100_p6;
wire   [7:0] tmp_dst_5_fu_1100_p8;
wire   [7:0] tmp_dst_5_fu_1100_p9;
wire   [7:0] tmp_dst_6_fu_1139_p2;
wire   [7:0] tmp_dst_6_fu_1139_p4;
wire   [7:0] tmp_dst_6_fu_1139_p6;
wire   [7:0] tmp_dst_6_fu_1139_p8;
wire   [7:0] tmp_dst_6_fu_1139_p9;
wire   [7:0] tmp_dst_7_fu_1189_p2;
wire   [7:0] tmp_dst_7_fu_1189_p4;
wire   [7:0] tmp_dst_7_fu_1189_p6;
wire   [7:0] tmp_dst_7_fu_1189_p8;
wire   [7:0] tmp_dst_7_fu_1189_p9;
wire    ap_block_pp0_stage19;
wire    ap_block_pp0_stage22;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [23:0] ap_NS_fsm;
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
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1527;
reg    ap_condition_1532;
reg    ap_condition_1537;
reg    ap_condition_1542;
reg    ap_condition_1547;
reg    ap_condition_1553;
reg    ap_condition_1558;
reg    ap_condition_1562;
reg    ap_condition_1566;
reg    ap_condition_1570;
reg    ap_condition_1574;
reg    ap_condition_1578;
reg    ap_condition_1582;
reg    ap_condition_1586;
reg    ap_condition_1590;
reg    ap_condition_1594;
reg    ap_condition_1598;
reg    ap_condition_1602;
reg    ap_condition_1606;
reg    ap_condition_1610;
reg    ap_condition_1614;
reg    ap_condition_1618;
reg    ap_condition_1622;
reg    ap_condition_1626;
wire   [1:0] tmp_dst_fu_682_p1;
wire   [1:0] tmp_dst_fu_682_p3;
wire  signed [1:0] tmp_dst_fu_682_p5;
wire  signed [1:0] tmp_dst_fu_682_p7;
wire  signed [1:0] tmp_dst_1_fu_916_p1;
wire   [1:0] tmp_dst_1_fu_916_p3;
wire   [1:0] tmp_dst_1_fu_916_p5;
wire  signed [1:0] tmp_dst_1_fu_916_p7;
wire  signed [1:0] tmp_dst_2_fu_955_p1;
wire  signed [1:0] tmp_dst_2_fu_955_p3;
wire   [1:0] tmp_dst_2_fu_955_p5;
wire   [1:0] tmp_dst_2_fu_955_p7;
wire   [1:0] tmp_dst_3_fu_1008_p1;
wire  signed [1:0] tmp_dst_3_fu_1008_p3;
wire  signed [1:0] tmp_dst_3_fu_1008_p5;
wire   [1:0] tmp_dst_3_fu_1008_p7;
wire   [1:0] tmp_dst_4_fu_1047_p1;
wire   [1:0] tmp_dst_4_fu_1047_p3;
wire  signed [1:0] tmp_dst_4_fu_1047_p5;
wire  signed [1:0] tmp_dst_4_fu_1047_p7;
wire  signed [1:0] tmp_dst_5_fu_1100_p1;
wire   [1:0] tmp_dst_5_fu_1100_p3;
wire   [1:0] tmp_dst_5_fu_1100_p5;
wire  signed [1:0] tmp_dst_5_fu_1100_p7;
wire  signed [1:0] tmp_dst_6_fu_1139_p1;
wire  signed [1:0] tmp_dst_6_fu_1139_p3;
wire   [1:0] tmp_dst_6_fu_1139_p5;
wire   [1:0] tmp_dst_6_fu_1139_p7;
wire   [1:0] tmp_dst_7_fu_1189_p1;
wire  signed [1:0] tmp_dst_7_fu_1189_p3;
wire  signed [1:0] tmp_dst_7_fu_1189_p5;
wire   [1:0] tmp_dst_7_fu_1189_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 24'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_100 = 32'd0;
#0 e_1_fu_104 = 64'd0;
#0 cnt_1_fu_108 = 64'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 8 ),.CASE1( 2'h1 ),.din1_WIDTH( 8 ),.CASE2( 2'h2 ),.din2_WIDTH( 8 ),.CASE3( 2'h3 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U1(.din0(tmp_dst_fu_682_p2),.din1(tmp_dst_fu_682_p4),.din2(tmp_dst_fu_682_p6),.din3(tmp_dst_fu_682_p8),.def(tmp_dst_fu_682_p9),.sel(trunc_ln11_reg_1352),.dout(tmp_dst_fu_682_p11));
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 8 ),.CASE1( 2'h0 ),.din1_WIDTH( 8 ),.CASE2( 2'h1 ),.din2_WIDTH( 8 ),.CASE3( 2'h2 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U2(.din0(tmp_dst_1_fu_916_p2),.din1(tmp_dst_1_fu_916_p4),.din2(tmp_dst_1_fu_916_p6),.din3(tmp_dst_1_fu_916_p8),.def(tmp_dst_1_fu_916_p9),.sel(trunc_ln11_reg_1352),.dout(tmp_dst_1_fu_916_p11));
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 8 ),.CASE1( 2'h3 ),.din1_WIDTH( 8 ),.CASE2( 2'h0 ),.din2_WIDTH( 8 ),.CASE3( 2'h1 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U3(.din0(tmp_dst_2_fu_955_p2),.din1(tmp_dst_2_fu_955_p4),.din2(tmp_dst_2_fu_955_p6),.din3(tmp_dst_2_fu_955_p8),.def(tmp_dst_2_fu_955_p9),.sel(trunc_ln11_reg_1352),.dout(tmp_dst_2_fu_955_p11));
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U4(.din0(tmp_dst_3_fu_1008_p2),.din1(tmp_dst_3_fu_1008_p4),.din2(tmp_dst_3_fu_1008_p6),.din3(tmp_dst_3_fu_1008_p8),.def(tmp_dst_3_fu_1008_p9),.sel(trunc_ln11_reg_1352),.dout(tmp_dst_3_fu_1008_p11));
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 8 ),.CASE1( 2'h1 ),.din1_WIDTH( 8 ),.CASE2( 2'h2 ),.din2_WIDTH( 8 ),.CASE3( 2'h3 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U5(.din0(tmp_dst_4_fu_1047_p2),.din1(tmp_dst_4_fu_1047_p4),.din2(tmp_dst_4_fu_1047_p6),.din3(tmp_dst_4_fu_1047_p8),.def(tmp_dst_4_fu_1047_p9),.sel(trunc_ln11_reg_1352),.dout(tmp_dst_4_fu_1047_p11));
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 8 ),.CASE1( 2'h0 ),.din1_WIDTH( 8 ),.CASE2( 2'h1 ),.din2_WIDTH( 8 ),.CASE3( 2'h2 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U6(.din0(tmp_dst_5_fu_1100_p2),.din1(tmp_dst_5_fu_1100_p4),.din2(tmp_dst_5_fu_1100_p6),.din3(tmp_dst_5_fu_1100_p8),.def(tmp_dst_5_fu_1100_p9),.sel(trunc_ln11_reg_1352),.dout(tmp_dst_5_fu_1100_p11));
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 8 ),.CASE1( 2'h3 ),.din1_WIDTH( 8 ),.CASE2( 2'h0 ),.din2_WIDTH( 8 ),.CASE3( 2'h1 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U7(.din0(tmp_dst_6_fu_1139_p2),.din1(tmp_dst_6_fu_1139_p4),.din2(tmp_dst_6_fu_1139_p6),.din3(tmp_dst_6_fu_1139_p8),.def(tmp_dst_6_fu_1139_p9),.sel(trunc_ln11_reg_1352),.dout(tmp_dst_6_fu_1139_p11));
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U8(.din0(tmp_dst_7_fu_1189_p2),.din1(tmp_dst_7_fu_1189_p4),.din2(tmp_dst_7_fu_1189_p6),.din3(tmp_dst_7_fu_1189_p8),.def(tmp_dst_7_fu_1189_p9),.sel(trunc_ln11_reg_1352),.dout(tmp_dst_7_fu_1189_p11));
bfs_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage23),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage23_subdone) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln34_3_reg_1657 == 1'd0) & (icmp_ln29_3_reg_1446 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_3_reg_1446 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage21)))) begin
        ap_phi_reg_pp0_iter0_cnt_10_reg_528 <= ap_phi_reg_pp0_iter0_cnt_8_reg_514;
    end else if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln34_3_reg_1657 == 1'd1) & (icmp_ln29_3_reg_1446 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        ap_phi_reg_pp0_iter0_cnt_10_reg_528 <= cnt_22_fu_1249_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_4_reg_1455 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage22_11001) & (icmp_ln34_4_reg_1666 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_4_reg_1455 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage22)))) begin
        ap_phi_reg_pp0_iter0_cnt_12_reg_542 <= ap_phi_reg_pp0_iter0_cnt_10_reg_528;
    end else if (((1'b0 == ap_block_pp0_stage22_11001) & (icmp_ln34_4_reg_1666 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_4_reg_1455 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        ap_phi_reg_pp0_iter0_cnt_12_reg_542 <= cnt_23_fu_1259_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln34_reg_1545 == 1'd0) & (icmp_ln29_reg_1364 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_reg_1364 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        ap_phi_reg_pp0_iter0_cnt_3_reg_488 <= cnt_1_fu_108;
    end else if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln34_reg_1545 == 1'd1) & (icmp_ln29_reg_1364 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        ap_phi_reg_pp0_iter0_cnt_3_reg_488 <= cnt_19_fu_1227_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln34_1_reg_1639 == 1'd0) & (icmp_ln29_1_reg_1393 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_1_reg_1393 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage19)))) begin
        ap_phi_reg_pp0_iter0_cnt_6_reg_500 <= ap_phi_reg_pp0_iter0_cnt_3_reg_488;
    end else if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln34_1_reg_1639 == 1'd1) & (icmp_ln29_1_reg_1393 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        ap_phi_reg_pp0_iter0_cnt_6_reg_500 <= cnt_20_fu_1237_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln34_2_reg_1648 == 1'd0) & (icmp_ln29_2_reg_1417 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_2_reg_1417 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage20)))) begin
        ap_phi_reg_pp0_iter0_cnt_8_reg_514 <= ap_phi_reg_pp0_iter0_cnt_6_reg_500;
    end else if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln34_2_reg_1648 == 1'd1) & (icmp_ln29_2_reg_1417 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        ap_phi_reg_pp0_iter0_cnt_8_reg_514 <= cnt_21_fu_1243_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_5_reg_1464 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage23_11001) & (icmp_ln34_5_reg_1696 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_5_reg_1464 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        ap_phi_reg_pp0_iter1_cnt_14_reg_556 <= ap_phi_reg_pp0_iter0_cnt_12_reg_542;
    end else if (((1'b0 == ap_block_pp0_stage23_11001) & (icmp_ln34_5_reg_1696 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_5_reg_1464 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        ap_phi_reg_pp0_iter1_cnt_14_reg_556 <= cnt_24_fu_1265_p2;
    end else if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        ap_phi_reg_pp0_iter1_cnt_14_reg_556 <= ap_phi_reg_pp0_iter0_cnt_14_reg_556;
    end
end
always @ (posedge ap_clk) begin
    if ((((icmp_ln28_reg_1473 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln34_6_reg_1720 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln29_6_reg_1477 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln28_reg_1473 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln29_6_reg_1477 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ap_phi_reg_pp0_iter1_cnt_16_reg_571 <= ap_phi_reg_pp0_iter1_cnt_14_reg_556;
    end else if (((icmp_ln28_reg_1473 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln34_6_reg_1720 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln29_6_reg_1477 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_reg_pp0_iter1_cnt_16_reg_571 <= cnt_25_fu_1271_p2;
    end else if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        ap_phi_reg_pp0_iter1_cnt_16_reg_571 <= ap_phi_reg_pp0_iter0_cnt_16_reg_571;
    end
end
always @ (posedge ap_clk) begin
    if ((((icmp_ln28_reg_1473 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (grp_fu_598_p2 == 1'd0) & (icmp_ln29_7_reg_1486 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln28_reg_1473 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln29_7_reg_1486 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        ap_phi_reg_pp0_iter1_cnt_18_reg_585 <= ap_phi_reg_pp0_iter1_cnt_16_reg_571;
    end else if (((icmp_ln28_reg_1473 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (grp_fu_598_p2 == 1'd1) & (icmp_ln29_7_reg_1486 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_phi_reg_pp0_iter1_cnt_18_reg_585 <= cnt_26_fu_1291_p2;
    end else if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        ap_phi_reg_pp0_iter1_cnt_18_reg_585 <= ap_phi_reg_pp0_iter0_cnt_18_reg_585;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cnt_1_fu_108 <= cnt;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        cnt_1_fu_108 <= ap_phi_reg_pp0_iter1_cnt_18_reg_585;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            e_1_fu_104 <= e;
        end else if (((icmp_ln28_reg_1473 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            e_1_fu_104 <= e_18_fu_1281_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_100 <= 32'd0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln28_fu_854_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        i_fu_100 <= i_4_fu_885_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cnt_14_reg_556 <= ap_phi_reg_pp0_iter1_cnt_14_reg_556;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        e_10_reg_1340 <= e_1_fu_104;
        icmp_ln29_reg_1364 <= icmp_ln29_fu_658_p2;
        trunc_ln11_reg_1352 <= trunc_ln11_fu_636_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln28_reg_1473 <= icmp_ln28_fu_854_p2;
        icmp_ln29_1_reg_1393 <= icmp_ln29_1_fu_728_p2;
        icmp_ln29_2_reg_1417 <= icmp_ln29_2_fu_756_p2;
        icmp_ln29_3_reg_1446 <= icmp_ln29_3_fu_776_p2;
        icmp_ln29_4_reg_1455 <= icmp_ln29_4_fu_796_p2;
        icmp_ln29_5_reg_1464 <= icmp_ln29_5_fu_816_p2;
        icmp_ln29_6_reg_1477 <= icmp_ln29_6_fu_860_p2;
        icmp_ln29_7_reg_1486 <= icmp_ln29_7_fu_880_p2;
        lshr_ln14_3_reg_1441 <= {{e_13_fu_761_p2[11:2]}};
        lshr_ln14_4_reg_1450 <= {{e_14_fu_781_p2[11:2]}};
        lshr_ln14_5_reg_1459 <= {{e_15_fu_801_p2[11:2]}};
        lshr_ln14_6_reg_1481 <= {{e_17_fu_865_p2[11:2]}};
        lshr_ln2_reg_1468 <= {{e_16_fu_821_p2[11:2]}};
        tmp_dst_reg_1388 <= tmp_dst_fu_682_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        icmp_ln34_1_reg_1639 <= grp_fu_608_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        icmp_ln34_2_reg_1648 <= grp_fu_608_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        icmp_ln34_3_reg_1657 <= grp_fu_608_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        icmp_ln34_4_reg_1666 <= grp_fu_608_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        icmp_ln34_5_reg_1696 <= grp_fu_608_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        icmp_ln34_6_reg_1720 <= grp_fu_608_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln34_7_reg_1734 <= grp_fu_598_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        icmp_ln34_reg_1545 <= grp_fu_598_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvars_iv_next11_cast4_cast_reg_1335[3 : 0] <= indvars_iv_next11_cast4_cast_fu_614_p1[3 : 0];
        level_addr_7_reg_1729 <= zext_ln31_7_fu_1277_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        level_addr_1_reg_1629 <= zext_ln31_1_fu_1169_p1;
        tmp_dst_7_reg_1634 <= tmp_dst_7_fu_1189_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        level_addr_2_reg_1643 <= zext_ln31_2_fu_1212_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        level_addr_3_reg_1652 <= zext_ln31_3_fu_1216_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        level_addr_4_reg_1661 <= zext_ln31_4_fu_1220_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        level_addr_5_reg_1681 <= zext_ln31_5_fu_1233_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        level_addr_6_reg_1705 <= zext_ln31_6_fu_1255_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        level_addr_reg_1490 <= zext_ln31_fu_896_p1;
        tmp_dst_1_reg_1495 <= tmp_dst_1_fu_916_p11;
        tmp_dst_2_reg_1500 <= tmp_dst_2_fu_955_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_604 <= level_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_dst_3_reg_1549 <= tmp_dst_3_fu_1008_p11;
        tmp_dst_4_reg_1554 <= tmp_dst_4_fu_1047_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_dst_5_reg_1599 <= tmp_dst_5_fu_1100_p11;
        tmp_dst_6_reg_1604 <= tmp_dst_6_fu_1139_p11;
    end
end
always @ (*) begin
    if (((icmp_ln28_reg_1473 == 1'd0) & (1'b0 == ap_block_pp0_stage23_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        ap_condition_exit_pp0_iter0_stage23 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage23 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln28_reg_1473 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage23_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (icmp_ln28_reg_1473 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cnt_14_out_ap_vld = 1'b1;
    end else begin
        cnt_14_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            edges_0_address0_local = zext_ln14_6_fu_1162_p1;
        end else if ((1'b1 == ap_condition_1553)) begin
            edges_0_address0_local = zext_ln28_fu_1077_p1;
        end else if ((1'b1 == ap_condition_1547)) begin
            edges_0_address0_local = zext_ln14_5_fu_1070_p1;
        end else if ((1'b1 == ap_condition_1542)) begin
            edges_0_address0_local = zext_ln14_4_fu_985_p1;
        end else if ((1'b1 == ap_condition_1537)) begin
            edges_0_address0_local = zext_ln14_3_fu_978_p1;
        end else if ((1'b1 == ap_condition_1532)) begin
            edges_0_address0_local = zext_ln14_2_fu_748_p1;
        end else if ((1'b1 == ap_condition_1527)) begin
            edges_0_address0_local = zext_ln14_1_fu_720_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_0_address0_local = zext_ln14_fu_650_p1;
        end else begin
            edges_0_address0_local = 'bx;
        end
    end else begin
        edges_0_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln28_reg_1473 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_6_reg_1477 == 1'd1) & (trunc_ln11_reg_1352 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_5_reg_1464 == 1'd1) & (trunc_ln11_reg_1352 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_4_reg_1455 == 1'd1) & (trunc_ln11_reg_1352 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_3_reg_1446 == 1'd1) & (trunc_ln11_reg_1352 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_2_fu_756_p2 == 1'd1) & (trunc_ln11_reg_1352 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_1_fu_728_p2 == 1'd1) & (trunc_ln11_reg_1352 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_0_ce0_local = 1'b1;
    end else begin
        edges_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            edges_1_address0_local = zext_ln14_6_fu_1162_p1;
        end else if ((1'b1 == ap_condition_1578)) begin
            edges_1_address0_local = zext_ln28_fu_1077_p1;
        end else if ((1'b1 == ap_condition_1574)) begin
            edges_1_address0_local = zext_ln14_5_fu_1070_p1;
        end else if ((1'b1 == ap_condition_1570)) begin
            edges_1_address0_local = zext_ln14_4_fu_985_p1;
        end else if ((1'b1 == ap_condition_1566)) begin
            edges_1_address0_local = zext_ln14_3_fu_978_p1;
        end else if ((1'b1 == ap_condition_1562)) begin
            edges_1_address0_local = zext_ln14_2_fu_748_p1;
        end else if ((1'b1 == ap_condition_1558)) begin
            edges_1_address0_local = zext_ln14_1_fu_720_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_1_address0_local = zext_ln14_fu_650_p1;
        end else begin
            edges_1_address0_local = 'bx;
        end
    end else begin
        edges_1_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln28_reg_1473 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_6_reg_1477 == 1'd1) & (trunc_ln11_reg_1352 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_5_reg_1464 == 1'd1) & (trunc_ln11_reg_1352 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_4_reg_1455 == 1'd1) & (trunc_ln11_reg_1352 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_3_reg_1446 == 1'd1) & (trunc_ln11_reg_1352 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_2_fu_756_p2 == 1'd1) & (trunc_ln11_reg_1352 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_1_fu_728_p2 == 1'd1) & (trunc_ln11_reg_1352 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_1_ce0_local = 1'b1;
    end else begin
        edges_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            edges_2_address0_local = zext_ln14_6_fu_1162_p1;
        end else if ((1'b1 == ap_condition_1602)) begin
            edges_2_address0_local = zext_ln28_fu_1077_p1;
        end else if ((1'b1 == ap_condition_1598)) begin
            edges_2_address0_local = zext_ln14_5_fu_1070_p1;
        end else if ((1'b1 == ap_condition_1594)) begin
            edges_2_address0_local = zext_ln14_4_fu_985_p1;
        end else if ((1'b1 == ap_condition_1590)) begin
            edges_2_address0_local = zext_ln14_3_fu_978_p1;
        end else if ((1'b1 == ap_condition_1586)) begin
            edges_2_address0_local = zext_ln14_2_fu_748_p1;
        end else if ((1'b1 == ap_condition_1582)) begin
            edges_2_address0_local = zext_ln14_1_fu_720_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_2_address0_local = zext_ln14_fu_650_p1;
        end else begin
            edges_2_address0_local = 'bx;
        end
    end else begin
        edges_2_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln28_reg_1473 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_6_reg_1477 == 1'd1) & (trunc_ln11_reg_1352 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_5_reg_1464 == 1'd1) & (trunc_ln11_reg_1352 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_4_reg_1455 == 1'd1) & (trunc_ln11_reg_1352 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_3_reg_1446 == 1'd1) & (trunc_ln11_reg_1352 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_2_fu_756_p2 == 1'd1) & (trunc_ln11_reg_1352 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_1_fu_728_p2 == 1'd1) & (trunc_ln11_reg_1352 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_2_ce0_local = 1'b1;
    end else begin
        edges_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            edges_3_address0_local = zext_ln14_6_fu_1162_p1;
        end else if ((1'b1 == ap_condition_1626)) begin
            edges_3_address0_local = zext_ln28_fu_1077_p1;
        end else if ((1'b1 == ap_condition_1622)) begin
            edges_3_address0_local = zext_ln14_5_fu_1070_p1;
        end else if ((1'b1 == ap_condition_1618)) begin
            edges_3_address0_local = zext_ln14_4_fu_985_p1;
        end else if ((1'b1 == ap_condition_1614)) begin
            edges_3_address0_local = zext_ln14_3_fu_978_p1;
        end else if ((1'b1 == ap_condition_1610)) begin
            edges_3_address0_local = zext_ln14_2_fu_748_p1;
        end else if ((1'b1 == ap_condition_1606)) begin
            edges_3_address0_local = zext_ln14_1_fu_720_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_3_address0_local = zext_ln14_fu_650_p1;
        end else begin
            edges_3_address0_local = 'bx;
        end
    end else begin
        edges_3_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln28_reg_1473 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_6_reg_1477 == 1'd1) & (trunc_ln11_reg_1352 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_5_reg_1464 == 1'd1) & (trunc_ln11_reg_1352 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_4_reg_1455 == 1'd1) & (trunc_ln11_reg_1352 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_3_reg_1446 == 1'd1) & (trunc_ln11_reg_1352 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_2_fu_756_p2 == 1'd1) & (trunc_ln11_reg_1352 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_1_fu_728_p2 == 1'd1) & (trunc_ln11_reg_1352 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_3_ce0_local = 1'b1;
    end else begin
        edges_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        level_address0_local = level_addr_7_reg_1729;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        level_address0_local = zext_ln31_7_fu_1277_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        level_address0_local = level_addr_6_reg_1705;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        level_address0_local = zext_ln31_6_fu_1255_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        level_address0_local = level_addr_5_reg_1681;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        level_address0_local = zext_ln31_5_fu_1233_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        level_address0_local = level_addr_4_reg_1661;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        level_address0_local = zext_ln31_4_fu_1220_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        level_address0_local = level_addr_3_reg_1652;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        level_address0_local = zext_ln31_3_fu_1216_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        level_address0_local = level_addr_2_reg_1643;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        level_address0_local = zext_ln31_2_fu_1212_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        level_address0_local = level_addr_1_reg_1629;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        level_address0_local = zext_ln31_1_fu_1169_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        level_address0_local = level_addr_reg_1490;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        level_address0_local = zext_ln31_fu_896_p1;
    end else begin
        level_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        level_ce0_local = 1'b1;
    end else begin
        level_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((icmp_ln28_reg_1473 == 1'd1) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (grp_fu_608_p2 == 1'd1) & (icmp_ln29_6_reg_1477 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((icmp_ln28_reg_1473 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln34_7_reg_1734 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln29_7_reg_1486 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (grp_fu_608_p2 == 1'd1) & (icmp_ln29_5_reg_1464 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (grp_fu_608_p2 == 1'd1) & (icmp_ln29_4_reg_1455 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (grp_fu_608_p2 == 1'd1) & (icmp_ln29_3_reg_1446 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (grp_fu_608_p2 == 1'd1) & (icmp_ln29_2_reg_1417== 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (grp_fu_608_p2 == 1'd1) & (icmp_ln29_1_reg_1393 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln34_reg_1545 == 1'd1) & (icmp_ln29_reg_1364 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
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
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_pp0_stage18 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_pp0_stage19 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage20 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_pp0_stage21 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_pp0_stage22 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_pp0_stage23 = ap_CS_fsm[32'd23];
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
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage21 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
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
    ap_condition_1527 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_1_fu_728_p2 == 1'd1) & (trunc_ln11_reg_1352 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1532 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_2_fu_756_p2 == 1'd1) & (trunc_ln11_reg_1352 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1537 = ((1'b0 == ap_block_pp0_stage3) & (icmp_ln29_3_reg_1446 == 1'd1) & (trunc_ln11_reg_1352 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1542 = ((1'b0 == ap_block_pp0_stage3) & (icmp_ln29_4_reg_1455 == 1'd1) & (trunc_ln11_reg_1352 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1547 = ((1'b0 == ap_block_pp0_stage4) & (icmp_ln29_5_reg_1464 == 1'd1) & (trunc_ln11_reg_1352 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1553 = ((icmp_ln28_reg_1473 == 1'd1) & (1'b0 == ap_block_pp0_stage4) & (icmp_ln29_6_reg_1477 == 1'd1) & (trunc_ln11_reg_1352 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1558 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_1_fu_728_p2 == 1'd1) & (trunc_ln11_reg_1352 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1562 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_2_fu_756_p2 == 1'd1) & (trunc_ln11_reg_1352 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1566 = ((1'b0 == ap_block_pp0_stage3) & (icmp_ln29_3_reg_1446 == 1'd1) & (trunc_ln11_reg_1352 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1570 = ((1'b0 == ap_block_pp0_stage3) & (icmp_ln29_4_reg_1455 == 1'd1) & (trunc_ln11_reg_1352 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1574 = ((1'b0 == ap_block_pp0_stage4) & (icmp_ln29_5_reg_1464 == 1'd1) & (trunc_ln11_reg_1352 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1578 = ((icmp_ln28_reg_1473 == 1'd1) & (1'b0 == ap_block_pp0_stage4) & (icmp_ln29_6_reg_1477 == 1'd1) & (trunc_ln11_reg_1352 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1582 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_1_fu_728_p2 == 1'd1) & (trunc_ln11_reg_1352 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1586 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_2_fu_756_p2 == 1'd1) & (trunc_ln11_reg_1352 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1590 = ((1'b0 == ap_block_pp0_stage3) & (icmp_ln29_3_reg_1446 == 1'd1) & (trunc_ln11_reg_1352 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1594 = ((1'b0 == ap_block_pp0_stage3) & (icmp_ln29_4_reg_1455 == 1'd1) & (trunc_ln11_reg_1352 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1598 = ((1'b0 == ap_block_pp0_stage4) & (icmp_ln29_5_reg_1464 == 1'd1) & (trunc_ln11_reg_1352 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1602 = ((icmp_ln28_reg_1473 == 1'd1) & (1'b0 == ap_block_pp0_stage4) & (icmp_ln29_6_reg_1477 == 1'd1) & (trunc_ln11_reg_1352 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1606 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_1_fu_728_p2 == 1'd1) & (trunc_ln11_reg_1352 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1610 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln29_2_fu_756_p2 == 1'd1) & (trunc_ln11_reg_1352 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1614 = ((1'b0 == ap_block_pp0_stage3) & (icmp_ln29_3_reg_1446 == 1'd1) & (trunc_ln11_reg_1352 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1618 = ((1'b0 == ap_block_pp0_stage3) & (icmp_ln29_4_reg_1455 == 1'd1) & (trunc_ln11_reg_1352 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1622 = ((1'b0 == ap_block_pp0_stage4) & (icmp_ln29_5_reg_1464 == 1'd1) & (trunc_ln11_reg_1352 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1626 = ((icmp_ln28_reg_1473 == 1'd1) & (1'b0 == ap_block_pp0_stage4) & (icmp_ln29_6_reg_1477 == 1'd1) & (trunc_ln11_reg_1352 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage23;
assign ap_phi_reg_pp0_iter0_cnt_14_reg_556 = 'bx;
assign ap_phi_reg_pp0_iter0_cnt_16_reg_571 = 'bx;
assign ap_phi_reg_pp0_iter0_cnt_18_reg_585 = 'bx;
assign ap_ready = ap_ready_sig;
assign cnt_14_out = cnt_14_reg_556;
assign cnt_19_fu_1227_p2 = (cnt_1_fu_108 + 64'd1);
assign cnt_20_fu_1237_p2 = (ap_phi_reg_pp0_iter0_cnt_3_reg_488 + 64'd1);
assign cnt_21_fu_1243_p2 = (ap_phi_reg_pp0_iter0_cnt_6_reg_500 + 64'd1);
assign cnt_22_fu_1249_p2 = (ap_phi_reg_pp0_iter0_cnt_8_reg_514 + 64'd1);
assign cnt_23_fu_1259_p2 = (ap_phi_reg_pp0_iter0_cnt_10_reg_528 + 64'd1);
assign cnt_24_fu_1265_p2 = (ap_phi_reg_pp0_iter0_cnt_12_reg_542 + 64'd1);
assign cnt_25_fu_1271_p2 = (ap_phi_reg_pp0_iter1_cnt_14_reg_556 + 64'd1);
assign cnt_26_fu_1291_p2 = (ap_phi_reg_pp0_iter1_cnt_16_reg_571 + 64'd1);
assign e_11_fu_705_p2 = (e_10_reg_1340 + 64'd1);
assign e_12_fu_733_p2 = (e_10_reg_1340 + 64'd2);
assign e_13_fu_761_p2 = (e_10_reg_1340 + 64'd3);
assign e_14_fu_781_p2 = (e_10_reg_1340 + 64'd4);
assign e_15_fu_801_p2 = (e_10_reg_1340 + 64'd5);
assign e_16_fu_821_p2 = (e_10_reg_1340 + 64'd6);
assign e_17_fu_865_p2 = (e_10_reg_1340 + 64'd7);
assign e_18_fu_1281_p2 = (e_10_reg_1340 + 64'd8);
assign edges_0_address0 = edges_0_address0_local;
assign edges_0_ce0 = edges_0_ce0_local;
assign edges_1_address0 = edges_1_address0_local;
assign edges_1_ce0 = edges_1_ce0_local;
assign edges_2_address0 = edges_2_address0_local;
assign edges_2_ce0 = edges_2_ce0_local;
assign edges_3_address0 = edges_3_address0_local;
assign edges_3_ce0 = edges_3_ce0_local;
assign grp_fu_598_p2 = ((level_q0 == 8'd127) ? 1'b1 : 1'b0);
assign grp_fu_608_p2 = ((reg_604 == 8'd127) ? 1'b1 : 1'b0);
assign i_1_fu_846_p3 = {{tmp_fu_836_p4}, {3'd6}};
assign i_4_fu_885_p2 = (i_fu_100 + 32'd8);
assign icmp_ln28_fu_854_p2 = (($signed(i_1_fu_846_p3) < $signed(32'd158)) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_728_p2 = ((e_11_fu_705_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_756_p2 = ((e_12_fu_733_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_776_p2 = ((e_13_fu_761_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_796_p2 = ((e_14_fu_781_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_816_p2 = ((e_15_fu_801_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_860_p2 = ((e_16_fu_821_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_880_p2 = ((e_17_fu_865_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_658_p2 = ((e_1_fu_104 < tmp_end) ? 1'b1 : 1'b0);
assign indvars_iv_next11_cast4_cast_fu_614_p1 = indvars_iv_next11_cast4;
assign level_address0 = level_address0_local;
assign level_ce0 = level_ce0_local;
assign level_d0 = indvars_iv_next11_cast4_cast_reg_1335;
assign level_we0 = level_we0_local;
assign lshr_ln14_1_fu_710_p4 = {{e_11_fu_705_p2[11:2]}};
assign lshr_ln14_2_fu_738_p4 = {{e_12_fu_733_p2[11:2]}};
assign lshr_ln1_fu_640_p4 = {{e_1_fu_104[11:2]}};
assign tmp_dst_1_fu_916_p2 = edges_0_q0[7:0];
assign tmp_dst_1_fu_916_p4 = edges_1_q0[7:0];
assign tmp_dst_1_fu_916_p6 = edges_2_q0[7:0];
assign tmp_dst_1_fu_916_p8 = edges_3_q0[7:0];
assign tmp_dst_1_fu_916_p9 = 'bx;
assign tmp_dst_2_fu_955_p2 = edges_0_q0[7:0];
assign tmp_dst_2_fu_955_p4 = edges_1_q0[7:0];
assign tmp_dst_2_fu_955_p6 = edges_2_q0[7:0];
assign tmp_dst_2_fu_955_p8 = edges_3_q0[7:0];
assign tmp_dst_2_fu_955_p9 = 'bx;
assign tmp_dst_3_fu_1008_p2 = edges_0_q0[7:0];
assign tmp_dst_3_fu_1008_p4 = edges_1_q0[7:0];
assign tmp_dst_3_fu_1008_p6 = edges_2_q0[7:0];
assign tmp_dst_3_fu_1008_p8 = edges_3_q0[7:0];
assign tmp_dst_3_fu_1008_p9 = 'bx;
assign tmp_dst_4_fu_1047_p2 = edges_0_q0[7:0];
assign tmp_dst_4_fu_1047_p4 = edges_1_q0[7:0];
assign tmp_dst_4_fu_1047_p6 = edges_2_q0[7:0];
assign tmp_dst_4_fu_1047_p8 = edges_3_q0[7:0];
assign tmp_dst_4_fu_1047_p9 = 'bx;
assign tmp_dst_5_fu_1100_p2 = edges_0_q0[7:0];
assign tmp_dst_5_fu_1100_p4 = edges_1_q0[7:0];
assign tmp_dst_5_fu_1100_p6 = edges_2_q0[7:0];
assign tmp_dst_5_fu_1100_p8 = edges_3_q0[7:0];
assign tmp_dst_5_fu_1100_p9 = 'bx;
assign tmp_dst_6_fu_1139_p2 = edges_0_q0[7:0];
assign tmp_dst_6_fu_1139_p4 = edges_1_q0[7:0];
assign tmp_dst_6_fu_1139_p6 = edges_2_q0[7:0];
assign tmp_dst_6_fu_1139_p8 = edges_3_q0[7:0];
assign tmp_dst_6_fu_1139_p9 = 'bx;
assign tmp_dst_7_fu_1189_p2 = edges_0_q0[7:0];
assign tmp_dst_7_fu_1189_p4 = edges_1_q0[7:0];
assign tmp_dst_7_fu_1189_p6 = edges_2_q0[7:0];
assign tmp_dst_7_fu_1189_p8 = edges_3_q0[7:0];
assign tmp_dst_7_fu_1189_p9 = 'bx;
assign tmp_dst_fu_682_p2 = edges_0_q0[7:0];
assign tmp_dst_fu_682_p4 = edges_1_q0[7:0];
assign tmp_dst_fu_682_p6 = edges_2_q0[7:0];
assign tmp_dst_fu_682_p8 = edges_3_q0[7:0];
assign tmp_dst_fu_682_p9 = 'bx;
assign tmp_fu_836_p4 = {{i_fu_100[31:3]}};
assign trunc_ln11_fu_636_p1 = e_1_fu_104[1:0];
assign zext_ln14_1_fu_720_p1 = lshr_ln14_1_fu_710_p4;
assign zext_ln14_2_fu_748_p1 = lshr_ln14_2_fu_738_p4;
assign zext_ln14_3_fu_978_p1 = lshr_ln14_3_reg_1441;
assign zext_ln14_4_fu_985_p1 = lshr_ln14_4_reg_1450;
assign zext_ln14_5_fu_1070_p1 = lshr_ln14_5_reg_1459;
assign zext_ln14_6_fu_1162_p1 = lshr_ln14_6_reg_1481;
assign zext_ln14_fu_650_p1 = lshr_ln1_fu_640_p4;
assign zext_ln28_fu_1077_p1 = lshr_ln2_reg_1468;
assign zext_ln31_1_fu_1169_p1 = tmp_dst_1_reg_1495;
assign zext_ln31_2_fu_1212_p1 = tmp_dst_2_reg_1500;
assign zext_ln31_3_fu_1216_p1 = tmp_dst_3_reg_1549;
assign zext_ln31_4_fu_1220_p1 = tmp_dst_4_reg_1554;
assign zext_ln31_5_fu_1233_p1 = tmp_dst_5_reg_1599;
assign zext_ln31_6_fu_1255_p1 = tmp_dst_6_reg_1604;
assign zext_ln31_7_fu_1277_p1 = tmp_dst_7_reg_1634;
assign zext_ln31_fu_896_p1 = tmp_dst_reg_1388;
always @ (posedge ap_clk) begin
    indvars_iv_next11_cast4_cast_reg_1335[7:4] <= 4'b0000;
end
endmodule 