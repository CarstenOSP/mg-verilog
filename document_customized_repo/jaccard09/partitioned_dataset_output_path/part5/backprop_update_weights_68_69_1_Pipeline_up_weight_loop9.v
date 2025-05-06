
module backprop_update_weights_68_69_1_Pipeline_up_weight_loop9 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights3_7_address0,weights3_7_ce0,weights3_7_we0,weights3_7_d0,weights3_7_q0,weights3_7_address1,weights3_7_ce1,weights3_7_we1,weights3_7_d1,weights3_7_q1,weights3_6_address0,weights3_6_ce0,weights3_6_we0,weights3_6_d0,weights3_6_q0,weights3_6_address1,weights3_6_ce1,weights3_6_we1,weights3_6_d1,weights3_6_q1,weights3_5_address0,weights3_5_ce0,weights3_5_we0,weights3_5_d0,weights3_5_q0,weights3_5_address1,weights3_5_ce1,weights3_5_we1,weights3_5_d1,weights3_5_q1,weights3_4_address0,weights3_4_ce0,weights3_4_we0,weights3_4_d0,weights3_4_q0,weights3_4_address1,weights3_4_ce1,weights3_4_we1,weights3_4_d1,weights3_4_q1,weights3_3_address0,weights3_3_ce0,weights3_3_we0,weights3_3_d0,weights3_3_q0,weights3_3_address1,weights3_3_ce1,weights3_3_we1,weights3_3_d1,weights3_3_q1,weights3_2_address0,weights3_2_ce0,weights3_2_we0,weights3_2_d0,weights3_2_q0,weights3_2_address1,weights3_2_ce1,weights3_2_we1,weights3_2_d1,weights3_2_q1,weights3_1_address0,weights3_1_ce0,weights3_1_we0,weights3_1_d0,weights3_1_q0,weights3_1_address1,weights3_1_ce1,weights3_1_we1,weights3_1_d1,weights3_1_q1,weights3_0_address0,weights3_0_ce0,weights3_0_we0,weights3_0_d0,weights3_0_q0,weights3_0_address1,weights3_0_ce1,weights3_0_we1,weights3_0_d1,weights3_0_q1,d_weights3_0_address0,d_weights3_0_ce0,d_weights3_0_q0,d_weights3_0_address1,d_weights3_0_ce1,d_weights3_0_q1,d_weights3_2_address0,d_weights3_2_ce0,d_weights3_2_q0,d_weights3_2_address1,d_weights3_2_ce1,d_weights3_2_q1,d_weights3_4_address0,d_weights3_4_ce0,d_weights3_4_q0,d_weights3_4_address1,d_weights3_4_ce1,d_weights3_4_q1,d_weights3_6_address0,d_weights3_6_ce0,d_weights3_6_q0,d_weights3_6_address1,d_weights3_6_ce1,d_weights3_6_q1,d_weights3_1_address0,d_weights3_1_ce0,d_weights3_1_q0,d_weights3_1_address1,d_weights3_1_ce1,d_weights3_1_q1,d_weights3_3_address0,d_weights3_3_ce0,d_weights3_3_q0,d_weights3_3_address1,d_weights3_3_ce1,d_weights3_3_q1,d_weights3_5_address0,d_weights3_5_ce0,d_weights3_5_q0,d_weights3_5_address1,d_weights3_5_ce1,d_weights3_5_q1,d_weights3_7_address0,d_weights3_7_ce0,d_weights3_7_q0,d_weights3_7_address1,d_weights3_7_ce1,d_weights3_7_q1,norm_8_out,norm_8_out_ap_vld,grp_fu_755_p_din0,grp_fu_755_p_din1,grp_fu_755_p_opcode,grp_fu_755_p_dout0,grp_fu_755_p_ce,grp_fu_759_p_din0,grp_fu_759_p_din1,grp_fu_759_p_dout0,grp_fu_759_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 48'd1;
parameter    ap_ST_fsm_pp0_stage1 = 48'd2;
parameter    ap_ST_fsm_pp0_stage2 = 48'd4;
parameter    ap_ST_fsm_pp0_stage3 = 48'd8;
parameter    ap_ST_fsm_pp0_stage4 = 48'd16;
parameter    ap_ST_fsm_pp0_stage5 = 48'd32;
parameter    ap_ST_fsm_pp0_stage6 = 48'd64;
parameter    ap_ST_fsm_pp0_stage7 = 48'd128;
parameter    ap_ST_fsm_pp0_stage8 = 48'd256;
parameter    ap_ST_fsm_pp0_stage9 = 48'd512;
parameter    ap_ST_fsm_pp0_stage10 = 48'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 48'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 48'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 48'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 48'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 48'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 48'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 48'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 48'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 48'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 48'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 48'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 48'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 48'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 48'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 48'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 48'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 48'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 48'd268435456;
parameter    ap_ST_fsm_pp0_stage29 = 48'd536870912;
parameter    ap_ST_fsm_pp0_stage30 = 48'd1073741824;
parameter    ap_ST_fsm_pp0_stage31 = 48'd2147483648;
parameter    ap_ST_fsm_pp0_stage32 = 48'd4294967296;
parameter    ap_ST_fsm_pp0_stage33 = 48'd8589934592;
parameter    ap_ST_fsm_pp0_stage34 = 48'd17179869184;
parameter    ap_ST_fsm_pp0_stage35 = 48'd34359738368;
parameter    ap_ST_fsm_pp0_stage36 = 48'd68719476736;
parameter    ap_ST_fsm_pp0_stage37 = 48'd137438953472;
parameter    ap_ST_fsm_pp0_stage38 = 48'd274877906944;
parameter    ap_ST_fsm_pp0_stage39 = 48'd549755813888;
parameter    ap_ST_fsm_pp0_stage40 = 48'd1099511627776;
parameter    ap_ST_fsm_pp0_stage41 = 48'd2199023255552;
parameter    ap_ST_fsm_pp0_stage42 = 48'd4398046511104;
parameter    ap_ST_fsm_pp0_stage43 = 48'd8796093022208;
parameter    ap_ST_fsm_pp0_stage44 = 48'd17592186044416;
parameter    ap_ST_fsm_pp0_stage45 = 48'd35184372088832;
parameter    ap_ST_fsm_pp0_stage46 = 48'd70368744177664;
parameter    ap_ST_fsm_pp0_stage47 = 48'd140737488355328;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] weights3_7_address0;
output   weights3_7_ce0;
output   weights3_7_we0;
output  [63:0] weights3_7_d0;
input  [63:0] weights3_7_q0;
output  [4:0] weights3_7_address1;
output   weights3_7_ce1;
output   weights3_7_we1;
output  [63:0] weights3_7_d1;
input  [63:0] weights3_7_q1;
output  [4:0] weights3_6_address0;
output   weights3_6_ce0;
output   weights3_6_we0;
output  [63:0] weights3_6_d0;
input  [63:0] weights3_6_q0;
output  [4:0] weights3_6_address1;
output   weights3_6_ce1;
output   weights3_6_we1;
output  [63:0] weights3_6_d1;
input  [63:0] weights3_6_q1;
output  [4:0] weights3_5_address0;
output   weights3_5_ce0;
output   weights3_5_we0;
output  [63:0] weights3_5_d0;
input  [63:0] weights3_5_q0;
output  [4:0] weights3_5_address1;
output   weights3_5_ce1;
output   weights3_5_we1;
output  [63:0] weights3_5_d1;
input  [63:0] weights3_5_q1;
output  [4:0] weights3_4_address0;
output   weights3_4_ce0;
output   weights3_4_we0;
output  [63:0] weights3_4_d0;
input  [63:0] weights3_4_q0;
output  [4:0] weights3_4_address1;
output   weights3_4_ce1;
output   weights3_4_we1;
output  [63:0] weights3_4_d1;
input  [63:0] weights3_4_q1;
output  [4:0] weights3_3_address0;
output   weights3_3_ce0;
output   weights3_3_we0;
output  [63:0] weights3_3_d0;
input  [63:0] weights3_3_q0;
output  [4:0] weights3_3_address1;
output   weights3_3_ce1;
output   weights3_3_we1;
output  [63:0] weights3_3_d1;
input  [63:0] weights3_3_q1;
output  [4:0] weights3_2_address0;
output   weights3_2_ce0;
output   weights3_2_we0;
output  [63:0] weights3_2_d0;
input  [63:0] weights3_2_q0;
output  [4:0] weights3_2_address1;
output   weights3_2_ce1;
output   weights3_2_we1;
output  [63:0] weights3_2_d1;
input  [63:0] weights3_2_q1;
output  [4:0] weights3_1_address0;
output   weights3_1_ce0;
output   weights3_1_we0;
output  [63:0] weights3_1_d0;
input  [63:0] weights3_1_q0;
output  [4:0] weights3_1_address1;
output   weights3_1_ce1;
output   weights3_1_we1;
output  [63:0] weights3_1_d1;
input  [63:0] weights3_1_q1;
output  [4:0] weights3_0_address0;
output   weights3_0_ce0;
output   weights3_0_we0;
output  [63:0] weights3_0_d0;
input  [63:0] weights3_0_q0;
output  [4:0] weights3_0_address1;
output   weights3_0_ce1;
output   weights3_0_we1;
output  [63:0] weights3_0_d1;
input  [63:0] weights3_0_q1;
output  [4:0] d_weights3_0_address0;
output   d_weights3_0_ce0;
input  [63:0] d_weights3_0_q0;
output  [4:0] d_weights3_0_address1;
output   d_weights3_0_ce1;
input  [63:0] d_weights3_0_q1;
output  [4:0] d_weights3_2_address0;
output   d_weights3_2_ce0;
input  [63:0] d_weights3_2_q0;
output  [4:0] d_weights3_2_address1;
output   d_weights3_2_ce1;
input  [63:0] d_weights3_2_q1;
output  [4:0] d_weights3_4_address0;
output   d_weights3_4_ce0;
input  [63:0] d_weights3_4_q0;
output  [4:0] d_weights3_4_address1;
output   d_weights3_4_ce1;
input  [63:0] d_weights3_4_q1;
output  [4:0] d_weights3_6_address0;
output   d_weights3_6_ce0;
input  [63:0] d_weights3_6_q0;
output  [4:0] d_weights3_6_address1;
output   d_weights3_6_ce1;
input  [63:0] d_weights3_6_q1;
output  [4:0] d_weights3_1_address0;
output   d_weights3_1_ce0;
input  [63:0] d_weights3_1_q0;
output  [4:0] d_weights3_1_address1;
output   d_weights3_1_ce1;
input  [63:0] d_weights3_1_q1;
output  [4:0] d_weights3_3_address0;
output   d_weights3_3_ce0;
input  [63:0] d_weights3_3_q0;
output  [4:0] d_weights3_3_address1;
output   d_weights3_3_ce1;
input  [63:0] d_weights3_3_q1;
output  [4:0] d_weights3_5_address0;
output   d_weights3_5_ce0;
input  [63:0] d_weights3_5_q0;
output  [4:0] d_weights3_5_address1;
output   d_weights3_5_ce1;
input  [63:0] d_weights3_5_q1;
output  [4:0] d_weights3_7_address0;
output   d_weights3_7_ce0;
input  [63:0] d_weights3_7_q0;
output  [4:0] d_weights3_7_address1;
output   d_weights3_7_ce1;
input  [63:0] d_weights3_7_q1;
output  [63:0] norm_8_out;
output   norm_8_out_ap_vld;
output  [63:0] grp_fu_755_p_din0;
output  [63:0] grp_fu_755_p_din1;
output  [1:0] grp_fu_755_p_opcode;
input  [63:0] grp_fu_755_p_dout0;
output   grp_fu_755_p_ce;
output  [63:0] grp_fu_759_p_din0;
output  [63:0] grp_fu_759_p_din1;
input  [63:0] grp_fu_759_p_dout0;
output   grp_fu_759_p_ce;
reg ap_idle;
reg norm_8_out_ap_vld;
(* fsm_encoding = "none" *) reg   [47:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_subdone;
reg   [0:0] tmp_reg_1328;
reg    ap_condition_exit_pp0_iter0_stage23;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage47;
wire    ap_block_pp0_stage47_subdone;
reg   [63:0] reg_654;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_block_pp0_stage23_11001;
reg   [63:0] reg_659;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
reg   [63:0] reg_664;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
reg   [63:0] reg_669;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
reg   [63:0] reg_674;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_11001;
wire    ap_CS_fsm_pp0_stage39;
wire    ap_block_pp0_stage39_11001;
wire    ap_block_pp0_stage47_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] i_1_reg_1322;
wire   [7:0] sub_ln122_fu_718_p2;
reg   [7:0] sub_ln122_reg_1332;
reg   [4:0] weights3_0_addr_reg_1360;
reg   [4:0] weights3_2_addr_reg_1366;
reg   [4:0] weights3_4_addr_reg_1372;
reg   [4:0] weights3_6_addr_reg_1378;
reg   [4:0] weights3_1_addr_reg_1404;
reg   [4:0] weights3_3_addr_reg_1410;
reg   [4:0] weights3_5_addr_reg_1416;
reg   [4:0] weights3_7_addr_reg_1422;
wire   [2:0] trunc_ln178_fu_754_p1;
reg   [2:0] trunc_ln178_reg_1428;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_s_fu_757_p11;
reg   [63:0] tmp_s_reg_1440;
wire   [63:0] tmp_1_fu_797_p11;
reg   [63:0] tmp_1_reg_1445;
wire   [63:0] tmp_2_fu_929_p11;
reg   [63:0] tmp_2_reg_1530;
wire   [63:0] tmp_7_fu_969_p11;
reg   [63:0] tmp_7_reg_1535;
reg   [4:0] weights3_0_addr_1_reg_1540;
reg   [4:0] weights3_2_addr_1_reg_1546;
reg   [4:0] weights3_4_addr_1_reg_1552;
reg   [4:0] weights3_6_addr_1_reg_1558;
reg   [4:0] weights3_1_addr_1_reg_1564;
reg   [4:0] weights3_3_addr_1_reg_1570;
reg   [4:0] weights3_5_addr_1_reg_1576;
reg   [4:0] weights3_7_addr_1_reg_1582;
reg   [4:0] weights3_0_addr_2_reg_1588;
reg   [4:0] weights3_2_addr_2_reg_1594;
reg   [4:0] weights3_4_addr_2_reg_1600;
reg   [4:0] weights3_6_addr_2_reg_1606;
reg   [4:0] weights3_1_addr_2_reg_1612;
reg   [4:0] weights3_3_addr_2_reg_1618;
reg   [4:0] weights3_5_addr_2_reg_1624;
reg   [4:0] weights3_7_addr_2_reg_1630;
wire   [63:0] tmp_3_fu_993_p11;
reg   [63:0] tmp_3_reg_1636;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_4_fu_1016_p11;
reg   [63:0] tmp_4_reg_1641;
wire   [63:0] tmp_5_fu_1039_p11;
reg   [63:0] tmp_5_reg_1646;
wire   [63:0] tmp_6_fu_1062_p11;
reg   [63:0] tmp_6_reg_1651;
wire   [63:0] tmp_8_fu_1101_p11;
reg   [63:0] tmp_8_reg_1656;
wire   [63:0] tmp_9_fu_1140_p11;
reg   [63:0] tmp_9_reg_1661;
wire   [63:0] tmp_10_fu_1179_p11;
reg   [63:0] tmp_10_reg_1666;
wire   [63:0] tmp_11_fu_1218_p11;
reg   [63:0] tmp_11_reg_1671;
reg   [63:0] mul163_1_1_reg_1676;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] mul163_1_2_reg_1681;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] sub168_s_reg_1686;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
reg   [63:0] sub168_2_reg_1693;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
reg   [63:0] sub168_1_reg_1700;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
reg   [63:0] sub168_1_1_reg_1707;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
reg   [63:0] sub168_1_2_reg_1714;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
reg   [63:0] mul177_1_1_reg_1726;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
reg   [63:0] mul177_1_2_reg_1731;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
reg   [63:0] norm_5_reg_1736;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln122_1_fu_734_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln180_fu_836_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln180_1_fu_863_p1;
wire   [63:0] zext_ln180_2_fu_890_p1;
wire   [63:0] zext_ln180_3_fu_917_p1;
reg   [63:0] norm_fu_102;
wire    ap_block_pp0_stage23;
wire    ap_loop_init;
wire    ap_block_pp0_stage24;
reg   [6:0] i_fu_106;
wire   [6:0] add_ln178_fu_1288_p2;
reg   [6:0] ap_sig_allocacmp_i_1;
wire    ap_block_pp0_stage23_01001;
reg    d_weights3_0_ce0_local;
reg   [4:0] d_weights3_0_address0_local;
reg    d_weights3_0_ce1_local;
reg    d_weights3_2_ce0_local;
reg   [4:0] d_weights3_2_address0_local;
reg    d_weights3_2_ce1_local;
reg    d_weights3_4_ce0_local;
reg   [4:0] d_weights3_4_address0_local;
reg    d_weights3_4_ce1_local;
reg    d_weights3_6_ce0_local;
reg   [4:0] d_weights3_6_address0_local;
reg    d_weights3_6_ce1_local;
reg    weights3_0_ce0_local;
reg   [4:0] weights3_0_address0_local;
reg    weights3_0_ce1_local;
reg   [4:0] weights3_0_address1_local;
reg    weights3_0_we1_local;
reg   [63:0] weights3_0_d1_local;
wire   [63:0] bitcast_ln180_24_fu_1241_p1;
wire    ap_block_pp0_stage17;
reg    weights3_0_we0_local;
wire   [63:0] bitcast_ln180_26_fu_1256_p1;
wire    ap_block_pp0_stage19;
wire   [63:0] bitcast_ln180_28_fu_1270_p1;
wire    ap_block_pp0_stage21;
reg    weights3_2_ce0_local;
reg   [4:0] weights3_2_address0_local;
reg    weights3_2_ce1_local;
reg   [4:0] weights3_2_address1_local;
reg    weights3_2_we1_local;
reg   [63:0] weights3_2_d1_local;
reg    weights3_2_we0_local;
reg    weights3_4_ce0_local;
reg   [4:0] weights3_4_address0_local;
reg    weights3_4_ce1_local;
reg   [4:0] weights3_4_address1_local;
reg    weights3_4_we1_local;
reg   [63:0] weights3_4_d1_local;
reg    weights3_4_we0_local;
reg    weights3_6_ce0_local;
reg   [4:0] weights3_6_address0_local;
reg    weights3_6_ce1_local;
reg   [4:0] weights3_6_address1_local;
reg    weights3_6_we1_local;
reg   [63:0] weights3_6_d1_local;
reg    weights3_6_we0_local;
reg    d_weights3_1_ce0_local;
reg   [4:0] d_weights3_1_address0_local;
reg    d_weights3_1_ce1_local;
reg    d_weights3_3_ce0_local;
reg   [4:0] d_weights3_3_address0_local;
reg    d_weights3_3_ce1_local;
reg    d_weights3_5_ce0_local;
reg   [4:0] d_weights3_5_address0_local;
reg    d_weights3_5_ce1_local;
reg    d_weights3_7_ce0_local;
reg   [4:0] d_weights3_7_address0_local;
reg    d_weights3_7_ce1_local;
reg    weights3_1_ce0_local;
reg   [4:0] weights3_1_address0_local;
reg    weights3_1_ce1_local;
reg   [4:0] weights3_1_address1_local;
reg    weights3_1_we1_local;
reg   [63:0] weights3_1_d1_local;
wire   [63:0] bitcast_ln180_25_fu_1249_p1;
wire    ap_block_pp0_stage18;
reg    weights3_1_we0_local;
wire   [63:0] bitcast_ln180_27_fu_1263_p1;
wire    ap_block_pp0_stage20;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
wire   [63:0] bitcast_ln180_29_fu_1277_p1;
wire    ap_block_pp0_stage22;
reg    weights3_3_ce0_local;
reg   [4:0] weights3_3_address0_local;
reg    weights3_3_ce1_local;
reg   [4:0] weights3_3_address1_local;
reg    weights3_3_we1_local;
reg   [63:0] weights3_3_d1_local;
reg    weights3_3_we0_local;
reg    weights3_5_ce0_local;
reg   [4:0] weights3_5_address0_local;
reg    weights3_5_ce1_local;
reg   [4:0] weights3_5_address1_local;
reg    weights3_5_we1_local;
reg   [63:0] weights3_5_d1_local;
reg    weights3_5_we0_local;
reg    weights3_7_ce0_local;
reg   [4:0] weights3_7_address0_local;
reg    weights3_7_ce1_local;
reg   [4:0] weights3_7_address1_local;
reg    weights3_7_we1_local;
reg   [63:0] weights3_7_d1_local;
reg    weights3_7_we0_local;
reg   [63:0] grp_fu_645_p0;
reg   [63:0] grp_fu_645_p1;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage13;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14;
wire    ap_CS_fsm_pp0_stage32;
wire    ap_block_pp0_stage32;
wire    ap_CS_fsm_pp0_stage40;
wire    ap_block_pp0_stage40;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage16;
reg   [63:0] grp_fu_649_p0;
reg   [63:0] grp_fu_649_p1;
wire    ap_block_pp0_stage2;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire   [5:0] trunc_ln122_fu_706_p1;
wire   [7:0] p_shl_fu_710_p3;
wire   [7:0] zext_ln122_fu_702_p1;
wire   [4:0] lshr_ln5_fu_724_p4;
wire   [63:0] tmp_s_fu_757_p9;
wire   [63:0] tmp_1_fu_797_p2;
wire   [63:0] tmp_1_fu_797_p4;
wire   [63:0] tmp_1_fu_797_p6;
wire   [63:0] tmp_1_fu_797_p8;
wire   [63:0] tmp_1_fu_797_p9;
wire   [7:0] add_ln180_fu_821_p2;
wire   [4:0] lshr_ln6_fu_826_p4;
wire   [7:0] empty_fu_848_p2;
wire   [4:0] lshr_ln122_1_fu_853_p4;
wire   [7:0] add_ln180_1_fu_875_p2;
wire   [4:0] lshr_ln180_1_fu_880_p4;
wire   [7:0] add_ln180_2_fu_902_p2;
wire   [4:0] lshr_ln180_2_fu_907_p4;
wire   [63:0] tmp_2_fu_929_p9;
wire   [63:0] tmp_7_fu_969_p2;
wire   [63:0] tmp_7_fu_969_p4;
wire   [63:0] tmp_7_fu_969_p6;
wire   [63:0] tmp_7_fu_969_p8;
wire   [63:0] tmp_7_fu_969_p9;
wire   [63:0] tmp_3_fu_993_p9;
wire   [63:0] tmp_4_fu_1016_p9;
wire   [63:0] tmp_5_fu_1039_p9;
wire   [63:0] tmp_6_fu_1062_p9;
wire   [63:0] tmp_8_fu_1101_p2;
wire   [63:0] tmp_8_fu_1101_p4;
wire   [63:0] tmp_8_fu_1101_p6;
wire   [63:0] tmp_8_fu_1101_p8;
wire   [63:0] tmp_8_fu_1101_p9;
wire   [63:0] tmp_9_fu_1140_p2;
wire   [63:0] tmp_9_fu_1140_p4;
wire   [63:0] tmp_9_fu_1140_p6;
wire   [63:0] tmp_9_fu_1140_p8;
wire   [63:0] tmp_9_fu_1140_p9;
wire   [63:0] tmp_10_fu_1179_p2;
wire   [63:0] tmp_10_fu_1179_p4;
wire   [63:0] tmp_10_fu_1179_p6;
wire   [63:0] tmp_10_fu_1179_p8;
wire   [63:0] tmp_10_fu_1179_p9;
wire   [63:0] tmp_11_fu_1218_p2;
wire   [63:0] tmp_11_fu_1218_p4;
wire   [63:0] tmp_11_fu_1218_p6;
wire   [63:0] tmp_11_fu_1218_p8;
wire   [63:0] tmp_11_fu_1218_p9;
wire    ap_block_pp0_stage47;
reg   [1:0] grp_fu_645_opcode;
wire    ap_block_pp0_stage24_00001;
wire    ap_block_pp0_stage32_00001;
wire    ap_block_pp0_stage40_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage16_00001;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage13_00001;
wire    ap_block_pp0_stage14_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [47:0] ap_NS_fsm;
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
wire    ap_block_pp0_stage31_subdone;
wire    ap_block_pp0_stage32_subdone;
wire    ap_block_pp0_stage33_subdone;
wire    ap_block_pp0_stage34_subdone;
wire    ap_block_pp0_stage35_subdone;
wire    ap_block_pp0_stage36_subdone;
wire    ap_block_pp0_stage37_subdone;
wire    ap_block_pp0_stage38_subdone;
wire    ap_block_pp0_stage39_subdone;
wire    ap_block_pp0_stage40_subdone;
wire    ap_block_pp0_stage41_subdone;
wire    ap_block_pp0_stage42_subdone;
wire    ap_block_pp0_stage43_subdone;
wire    ap_block_pp0_stage44_subdone;
wire    ap_block_pp0_stage45_subdone;
wire    ap_block_pp0_stage46_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] tmp_s_fu_757_p1;
wire  signed [2:0] tmp_s_fu_757_p3;
wire  signed [2:0] tmp_s_fu_757_p5;
wire   [2:0] tmp_s_fu_757_p7;
wire   [2:0] tmp_1_fu_797_p1;
wire  signed [2:0] tmp_1_fu_797_p3;
wire  signed [2:0] tmp_1_fu_797_p5;
wire   [2:0] tmp_1_fu_797_p7;
wire   [2:0] tmp_2_fu_929_p1;
wire  signed [2:0] tmp_2_fu_929_p3;
wire  signed [2:0] tmp_2_fu_929_p5;
wire   [2:0] tmp_2_fu_929_p7;
wire   [2:0] tmp_7_fu_969_p1;
wire  signed [2:0] tmp_7_fu_969_p3;
wire  signed [2:0] tmp_7_fu_969_p5;
wire   [2:0] tmp_7_fu_969_p7;
wire   [2:0] tmp_3_fu_993_p1;
wire   [2:0] tmp_3_fu_993_p3;
wire  signed [2:0] tmp_3_fu_993_p5;
wire  signed [2:0] tmp_3_fu_993_p7;
wire   [2:0] tmp_4_fu_1016_p1;
wire   [2:0] tmp_4_fu_1016_p3;
wire  signed [2:0] tmp_4_fu_1016_p5;
wire  signed [2:0] tmp_4_fu_1016_p7;
wire  signed [2:0] tmp_5_fu_1039_p1;
wire   [2:0] tmp_5_fu_1039_p3;
wire   [2:0] tmp_5_fu_1039_p5;
wire  signed [2:0] tmp_5_fu_1039_p7;
wire  signed [2:0] tmp_6_fu_1062_p1;
wire   [2:0] tmp_6_fu_1062_p3;
wire   [2:0] tmp_6_fu_1062_p5;
wire  signed [2:0] tmp_6_fu_1062_p7;
wire   [2:0] tmp_8_fu_1101_p1;
wire   [2:0] tmp_8_fu_1101_p3;
wire  signed [2:0] tmp_8_fu_1101_p5;
wire  signed [2:0] tmp_8_fu_1101_p7;
wire   [2:0] tmp_9_fu_1140_p1;
wire   [2:0] tmp_9_fu_1140_p3;
wire  signed [2:0] tmp_9_fu_1140_p5;
wire  signed [2:0] tmp_9_fu_1140_p7;
wire  signed [2:0] tmp_10_fu_1179_p1;
wire   [2:0] tmp_10_fu_1179_p3;
wire   [2:0] tmp_10_fu_1179_p5;
wire  signed [2:0] tmp_10_fu_1179_p7;
wire  signed [2:0] tmp_11_fu_1218_p1;
wire   [2:0] tmp_11_fu_1218_p3;
wire   [2:0] tmp_11_fu_1218_p5;
wire  signed [2:0] tmp_11_fu_1218_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 48'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 norm_fu_102 = 64'd0;
#0 i_fu_106 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_3_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_9_3_64_1_1_x_U794(.din0(d_weights3_0_q0),.din1(d_weights3_2_q0),.din2(d_weights3_4_q0),.din3(d_weights3_6_q0),.def(tmp_s_fu_757_p9),.sel(trunc_ln178_fu_754_p1),.dout(tmp_s_fu_757_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_3_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_9_3_64_1_1_x_U795(.din0(tmp_1_fu_797_p2),.din1(tmp_1_fu_797_p4),.din2(tmp_1_fu_797_p6),.din3(tmp_1_fu_797_p8),.def(tmp_1_fu_797_p9),.sel(trunc_ln178_fu_754_p1),.dout(tmp_1_fu_797_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_3_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_9_3_64_1_1_x_U796(.din0(d_weights3_1_q0),.din1(d_weights3_3_q0),.din2(d_weights3_5_q0),.din3(d_weights3_7_q0),.def(tmp_2_fu_929_p9),.sel(trunc_ln178_fu_754_p1),.dout(tmp_2_fu_929_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_3_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_9_3_64_1_1_x_U797(.din0(tmp_7_fu_969_p2),.din1(tmp_7_fu_969_p4),.din2(tmp_7_fu_969_p6),.din3(tmp_7_fu_969_p8),.def(tmp_7_fu_969_p9),.sel(trunc_ln178_fu_754_p1),.dout(tmp_7_fu_969_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h6 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_9_3_64_1_1_U798(.din0(d_weights3_0_q1),.din1(d_weights3_2_q1),.din2(d_weights3_4_q1),.din3(d_weights3_6_q1),.def(tmp_3_fu_993_p9),.sel(trunc_ln178_reg_1428),.dout(tmp_3_fu_993_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h6 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_9_3_64_1_1_U799(.din0(d_weights3_1_q1),.din1(d_weights3_3_q1),.din2(d_weights3_5_q1),.din3(d_weights3_7_q1),.def(tmp_4_fu_1016_p9),.sel(trunc_ln178_reg_1428),.dout(tmp_4_fu_1016_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_3_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_9_3_64_1_1_x_U800(.din0(d_weights3_0_q0),.din1(d_weights3_2_q0),.din2(d_weights3_4_q0),.din3(d_weights3_6_q0),.def(tmp_5_fu_1039_p9),.sel(trunc_ln178_reg_1428),.dout(tmp_5_fu_1039_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_3_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_9_3_64_1_1_x_U801(.din0(d_weights3_1_q0),.din1(d_weights3_3_q0),.din2(d_weights3_5_q0),.din3(d_weights3_7_q0),.def(tmp_6_fu_1062_p9),.sel(trunc_ln178_reg_1428),.dout(tmp_6_fu_1062_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h6 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_9_3_64_1_1_U802(.din0(tmp_8_fu_1101_p2),.din1(tmp_8_fu_1101_p4),.din2(tmp_8_fu_1101_p6),.din3(tmp_8_fu_1101_p8),.def(tmp_8_fu_1101_p9),.sel(trunc_ln178_reg_1428),.dout(tmp_8_fu_1101_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h6 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_9_3_64_1_1_U803(.din0(tmp_9_fu_1140_p2),.din1(tmp_9_fu_1140_p4),.din2(tmp_9_fu_1140_p6),.din3(tmp_9_fu_1140_p8),.def(tmp_9_fu_1140_p9),.sel(trunc_ln178_reg_1428),.dout(tmp_9_fu_1140_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_3_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_9_3_64_1_1_x_U804(.din0(tmp_10_fu_1179_p2),.din1(tmp_10_fu_1179_p4),.din2(tmp_10_fu_1179_p6),.din3(tmp_10_fu_1179_p8),.def(tmp_10_fu_1179_p9),.sel(trunc_ln178_reg_1428),.dout(tmp_10_fu_1179_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_3_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_9_3_64_1_1_x_U805(.din0(tmp_11_fu_1218_p2),.din1(tmp_11_fu_1218_p4),.din2(tmp_11_fu_1218_p6),.din3(tmp_11_fu_1218_p8),.def(tmp_11_fu_1218_p9),.sel(trunc_ln178_reg_1428),.dout(tmp_11_fu_1218_p11));
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
        end else if (((1'b0 == ap_block_pp0_stage47_subdone) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_106 <= 7'd0;
    end else if (((tmp_reg_1328 == 1'd0) & (1'b0 == ap_block_pp0_stage47_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
        i_fu_106 <= add_ln178_fu_1288_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        norm_fu_102 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        norm_fu_102 <= grp_fu_755_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_1_reg_1322 <= ap_sig_allocacmp_i_1;
        sub_ln122_reg_1332 <= sub_ln122_fu_718_p2;
        tmp_reg_1328 <= ap_sig_allocacmp_i_1[32'd6];
        weights3_0_addr_reg_1360 <= zext_ln122_1_fu_734_p1;
        weights3_1_addr_reg_1404 <= zext_ln122_1_fu_734_p1;
        weights3_2_addr_reg_1366 <= zext_ln122_1_fu_734_p1;
        weights3_3_addr_reg_1410 <= zext_ln122_1_fu_734_p1;
        weights3_4_addr_reg_1372 <= zext_ln122_1_fu_734_p1;
        weights3_5_addr_reg_1416 <= zext_ln122_1_fu_734_p1;
        weights3_6_addr_reg_1378 <= zext_ln122_1_fu_734_p1;
        weights3_7_addr_reg_1422 <= zext_ln122_1_fu_734_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        mul163_1_1_reg_1676 <= grp_fu_759_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        mul163_1_2_reg_1681 <= grp_fu_759_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        mul177_1_1_reg_1726 <= grp_fu_759_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        mul177_1_2_reg_1731 <= grp_fu_759_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        norm_5_reg_1736 <= grp_fu_755_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_654 <= grp_fu_759_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_659 <= grp_fu_759_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_664 <= grp_fu_759_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_669 <= grp_fu_759_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage47_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47)) | ((1'b0 == ap_block_pp0_stage39_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage39)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        reg_674 <= grp_fu_755_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        sub168_1_1_reg_1707 <= grp_fu_755_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        sub168_1_2_reg_1714 <= grp_fu_755_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        sub168_1_reg_1700 <= grp_fu_755_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        sub168_2_reg_1693 <= grp_fu_755_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        sub168_s_reg_1686 <= grp_fu_755_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_10_reg_1666 <= tmp_10_fu_1179_p11;
        tmp_11_reg_1671 <= tmp_11_fu_1218_p11;
        tmp_3_reg_1636 <= tmp_3_fu_993_p11;
        tmp_4_reg_1641 <= tmp_4_fu_1016_p11;
        tmp_5_reg_1646 <= tmp_5_fu_1039_p11;
        tmp_6_reg_1651 <= tmp_6_fu_1062_p11;
        tmp_8_reg_1656 <= tmp_8_fu_1101_p11;
        tmp_9_reg_1661 <= tmp_9_fu_1140_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_1_reg_1445 <= tmp_1_fu_797_p11;
        tmp_2_reg_1530 <= tmp_2_fu_929_p11;
        tmp_7_reg_1535 <= tmp_7_fu_969_p11;
        tmp_s_reg_1440 <= tmp_s_fu_757_p11;
        trunc_ln178_reg_1428 <= trunc_ln178_fu_754_p1;
        weights3_0_addr_1_reg_1540 <= zext_ln180_fu_836_p1;
        weights3_0_addr_2_reg_1588 <= zext_ln180_2_fu_890_p1;
        weights3_1_addr_1_reg_1564 <= zext_ln180_1_fu_863_p1;
        weights3_1_addr_2_reg_1612 <= zext_ln180_3_fu_917_p1;
        weights3_2_addr_1_reg_1546 <= zext_ln180_fu_836_p1;
        weights3_2_addr_2_reg_1594 <= zext_ln180_2_fu_890_p1;
        weights3_3_addr_1_reg_1570 <= zext_ln180_1_fu_863_p1;
        weights3_3_addr_2_reg_1618 <= zext_ln180_3_fu_917_p1;
        weights3_4_addr_1_reg_1552 <= zext_ln180_fu_836_p1;
        weights3_4_addr_2_reg_1600 <= zext_ln180_2_fu_890_p1;
        weights3_5_addr_1_reg_1576 <= zext_ln180_1_fu_863_p1;
        weights3_5_addr_2_reg_1624 <= zext_ln180_3_fu_917_p1;
        weights3_6_addr_1_reg_1558 <= zext_ln180_fu_836_p1;
        weights3_6_addr_2_reg_1606 <= zext_ln180_2_fu_890_p1;
        weights3_7_addr_1_reg_1582 <= zext_ln180_1_fu_863_p1;
        weights3_7_addr_2_reg_1630 <= zext_ln180_3_fu_917_p1;
    end
end
always @ (*) begin
    if (((tmp_reg_1328 == 1'd1) & (1'b0 == ap_block_pp0_stage23_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
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
    if (((1'b0 == ap_block_pp0_stage47_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_106;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            d_weights3_0_address0_local = zext_ln180_2_fu_890_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            d_weights3_0_address0_local = zext_ln122_1_fu_734_p1;
        end else begin
            d_weights3_0_address0_local = 'bx;
        end
    end else begin
        d_weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        d_weights3_0_ce0_local = 1'b1;
    end else begin
        d_weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_0_ce1_local = 1'b1;
    end else begin
        d_weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            d_weights3_1_address0_local = zext_ln180_3_fu_917_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            d_weights3_1_address0_local = zext_ln122_1_fu_734_p1;
        end else begin
            d_weights3_1_address0_local = 'bx;
        end
    end else begin
        d_weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        d_weights3_1_ce0_local = 1'b1;
    end else begin
        d_weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_1_ce1_local = 1'b1;
    end else begin
        d_weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            d_weights3_2_address0_local = zext_ln180_2_fu_890_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            d_weights3_2_address0_local = zext_ln122_1_fu_734_p1;
        end else begin
            d_weights3_2_address0_local = 'bx;
        end
    end else begin
        d_weights3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        d_weights3_2_ce0_local = 1'b1;
    end else begin
        d_weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_2_ce1_local = 1'b1;
    end else begin
        d_weights3_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            d_weights3_3_address0_local = zext_ln180_3_fu_917_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            d_weights3_3_address0_local = zext_ln122_1_fu_734_p1;
        end else begin
            d_weights3_3_address0_local = 'bx;
        end
    end else begin
        d_weights3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        d_weights3_3_ce0_local = 1'b1;
    end else begin
        d_weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_3_ce1_local = 1'b1;
    end else begin
        d_weights3_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            d_weights3_4_address0_local = zext_ln180_2_fu_890_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            d_weights3_4_address0_local = zext_ln122_1_fu_734_p1;
        end else begin
            d_weights3_4_address0_local = 'bx;
        end
    end else begin
        d_weights3_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        d_weights3_4_ce0_local = 1'b1;
    end else begin
        d_weights3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_4_ce1_local = 1'b1;
    end else begin
        d_weights3_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            d_weights3_5_address0_local = zext_ln180_3_fu_917_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            d_weights3_5_address0_local = zext_ln122_1_fu_734_p1;
        end else begin
            d_weights3_5_address0_local = 'bx;
        end
    end else begin
        d_weights3_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        d_weights3_5_ce0_local = 1'b1;
    end else begin
        d_weights3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_5_ce1_local = 1'b1;
    end else begin
        d_weights3_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            d_weights3_6_address0_local = zext_ln180_2_fu_890_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            d_weights3_6_address0_local = zext_ln122_1_fu_734_p1;
        end else begin
            d_weights3_6_address0_local = 'bx;
        end
    end else begin
        d_weights3_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        d_weights3_6_ce0_local = 1'b1;
    end else begin
        d_weights3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_6_ce1_local = 1'b1;
    end else begin
        d_weights3_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            d_weights3_7_address0_local = zext_ln180_3_fu_917_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            d_weights3_7_address0_local = zext_ln122_1_fu_734_p1;
        end else begin
            d_weights3_7_address0_local = 'bx;
        end
    end else begin
        d_weights3_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        d_weights3_7_ce0_local = 1'b1;
    end else begin
        d_weights3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_7_ce1_local = 1'b1;
    end else begin
        d_weights3_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_1328 == 1'd0) & (1'b0 == ap_block_pp0_stage14_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_1328 == 1'd0) & (1'b0 == ap_block_pp0_stage13_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_1328 == 1'd0) & (1'b0 == ap_block_pp0_stage12_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_1328 == 1'd0) & (1'b0 == ap_block_pp0_stage11_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_1328 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_1328 == 1'd0) & (1'b0 == ap_block_pp0_stage9_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        grp_fu_645_opcode = 2'd1;
    end else if ((((tmp_reg_1328 == 1'd0) & (1'b0 == ap_block_pp0_stage40_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40)) | ((tmp_reg_1328 == 1'd0) & (1'b0 == ap_block_pp0_stage32_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((tmp_reg_1328 == 1'd0) & (1'b0 == ap_block_pp0_stage24_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage16_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_645_opcode = 2'd0;
    end else begin
        grp_fu_645_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_645_p0 = norm_5_reg_1736;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage40) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40)) | ((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)))) begin
        grp_fu_645_p0 = reg_674;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_645_p0 = norm_fu_102;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_645_p0 = tmp_11_reg_1671;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_645_p0 = tmp_10_reg_1666;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_645_p0 = tmp_9_reg_1661;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_645_p0 = tmp_8_reg_1656;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_645_p0 = tmp_7_reg_1535;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_645_p0 = tmp_1_reg_1445;
    end else begin
        grp_fu_645_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_645_p1 = mul177_1_2_reg_1731;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_645_p1 = mul177_1_1_reg_1726;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_645_p1 = mul163_1_2_reg_1681;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_645_p1 = mul163_1_1_reg_1676;
    end else if ((((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_645_p1 = reg_669;
    end else if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage40) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40)))) begin
        grp_fu_645_p1 = reg_664;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)))) begin
        grp_fu_645_p1 = reg_659;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)))) begin
        grp_fu_645_p1 = reg_654;
    end else begin
        grp_fu_645_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            grp_fu_649_p0 = sub168_1_2_reg_1714;
        end else if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            grp_fu_649_p0 = sub168_1_1_reg_1707;
        end else if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            grp_fu_649_p0 = sub168_1_reg_1700;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            grp_fu_649_p0 = sub168_2_reg_1693;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            grp_fu_649_p0 = sub168_s_reg_1686;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_649_p0 = reg_674;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_649_p0 = tmp_6_reg_1651;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_649_p0 = tmp_5_reg_1646;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_649_p0 = tmp_4_reg_1641;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_649_p0 = tmp_3_reg_1636;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_649_p0 = tmp_2_reg_1530;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_649_p0 = tmp_s_reg_1440;
        end else begin
            grp_fu_649_p0 = 'bx;
        end
    end else begin
        grp_fu_649_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_649_p1 = sub168_1_2_reg_1714;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_649_p1 = sub168_1_1_reg_1707;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_649_p1 = sub168_1_reg_1700;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_649_p1 = sub168_2_reg_1693;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_649_p1 = sub168_s_reg_1686;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_649_p1 = reg_674;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_649_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_649_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_1328 == 1'd1) & (1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        norm_8_out_ap_vld = 1'b1;
    end else begin
        norm_8_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights3_0_address0_local = weights3_0_addr_1_reg_1540;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_0_address0_local = zext_ln180_2_fu_890_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_0_address0_local = zext_ln122_1_fu_734_p1;
        end else begin
            weights3_0_address0_local = 'bx;
        end
    end else begin
        weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_0_address1_local = weights3_0_addr_2_reg_1588;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_0_address1_local = weights3_0_addr_reg_1360;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_0_address1_local = zext_ln180_fu_836_p1;
        end else begin
            weights3_0_address1_local = 'bx;
        end
    end else begin
        weights3_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights3_0_ce0_local = 1'b1;
    end else begin
        weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_0_ce1_local = 1'b1;
    end else begin
        weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_0_d1_local = bitcast_ln180_28_fu_1270_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_0_d1_local = bitcast_ln180_24_fu_1241_p1;
        end else begin
            weights3_0_d1_local = 'bx;
        end
    end else begin
        weights3_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((tmp_reg_1328 == 1'd0) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln178_reg_1428 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_0_we0_local = 1'b1;
    end else begin
        weights3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_1328 == 1'd0) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln178_reg_1428 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((tmp_reg_1328 == 1'd0) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln178_reg_1428 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        weights3_0_we1_local = 1'b1;
    end else begin
        weights3_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights3_1_address0_local = weights3_1_addr_1_reg_1564;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_1_address0_local = zext_ln180_3_fu_917_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_1_address0_local = zext_ln122_1_fu_734_p1;
        end else begin
            weights3_1_address0_local = 'bx;
        end
    end else begin
        weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights3_1_address1_local = weights3_1_addr_2_reg_1612;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_1_address1_local = weights3_1_addr_reg_1404;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_1_address1_local = zext_ln180_1_fu_863_p1;
        end else begin
            weights3_1_address1_local = 'bx;
        end
    end else begin
        weights3_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights3_1_ce0_local = 1'b1;
    end else begin
        weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_1_ce1_local = 1'b1;
    end else begin
        weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights3_1_d1_local = bitcast_ln180_29_fu_1277_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_1_d1_local = bitcast_ln180_25_fu_1249_p1;
        end else begin
            weights3_1_d1_local = 'bx;
        end
    end else begin
        weights3_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((tmp_reg_1328 == 1'd0) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln178_reg_1428 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_1_we0_local = 1'b1;
    end else begin
        weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_1328 == 1'd0) & (1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln178_reg_1428 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((tmp_reg_1328 == 1'd0) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln178_reg_1428 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        weights3_1_we1_local = 1'b1;
    end else begin
        weights3_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights3_2_address0_local = weights3_2_addr_1_reg_1546;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_2_address0_local = zext_ln180_2_fu_890_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_2_address0_local = zext_ln122_1_fu_734_p1;
        end else begin
            weights3_2_address0_local = 'bx;
        end
    end else begin
        weights3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_2_address1_local = weights3_2_addr_2_reg_1594;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_2_address1_local = weights3_2_addr_reg_1366;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_2_address1_local = zext_ln180_fu_836_p1;
        end else begin
            weights3_2_address1_local = 'bx;
        end
    end else begin
        weights3_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights3_2_ce0_local = 1'b1;
    end else begin
        weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_2_ce1_local = 1'b1;
    end else begin
        weights3_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_2_d1_local = bitcast_ln180_28_fu_1270_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_2_d1_local = bitcast_ln180_24_fu_1241_p1;
        end else begin
            weights3_2_d1_local = 'bx;
        end
    end else begin
        weights3_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((tmp_reg_1328 == 1'd0) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln178_reg_1428 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_2_we0_local = 1'b1;
    end else begin
        weights3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(trunc_ln178_reg_1428 == 3'd4) & ~(trunc_ln178_reg_1428 == 3'd2) & ~(trunc_ln178_reg_1428 == 3'd0) & (tmp_reg_1328 == 1'd0) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((tmp_reg_1328 == 1'd0) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln178_reg_1428 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage21)))) begin
        weights3_2_we1_local = 1'b1;
    end else begin
        weights3_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights3_3_address0_local = weights3_3_addr_1_reg_1570;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_3_address0_local = zext_ln180_3_fu_917_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_3_address0_local = zext_ln122_1_fu_734_p1;
        end else begin
            weights3_3_address0_local = 'bx;
        end
    end else begin
        weights3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights3_3_address1_local = weights3_3_addr_2_reg_1618;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_3_address1_local = weights3_3_addr_reg_1410;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_3_address1_local = zext_ln180_1_fu_863_p1;
        end else begin
            weights3_3_address1_local = 'bx;
        end
    end else begin
        weights3_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights3_3_ce0_local = 1'b1;
    end else begin
        weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_3_ce1_local = 1'b1;
    end else begin
        weights3_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights3_3_d1_local = bitcast_ln180_29_fu_1277_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_3_d1_local = bitcast_ln180_25_fu_1249_p1;
        end else begin
            weights3_3_d1_local = 'bx;
        end
    end else begin
        weights3_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((tmp_reg_1328 == 1'd0) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln178_reg_1428 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_3_we0_local = 1'b1;
    end else begin
        weights3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(trunc_ln178_reg_1428 == 3'd4) & ~(trunc_ln178_reg_1428 == 3'd2) & ~(trunc_ln178_reg_1428 == 3'd0) & (tmp_reg_1328 == 1'd0) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((tmp_reg_1328 == 1'd0) & (1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln178_reg_1428 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage22)))) begin
        weights3_3_we1_local = 1'b1;
    end else begin
        weights3_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights3_4_address0_local = weights3_4_addr_1_reg_1552;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_4_address0_local = zext_ln180_2_fu_890_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_4_address0_local = zext_ln122_1_fu_734_p1;
        end else begin
            weights3_4_address0_local = 'bx;
        end
    end else begin
        weights3_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_4_address1_local = weights3_4_addr_2_reg_1600;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_4_address1_local = weights3_4_addr_reg_1372;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_4_address1_local = zext_ln180_fu_836_p1;
        end else begin
            weights3_4_address1_local = 'bx;
        end
    end else begin
        weights3_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights3_4_ce0_local = 1'b1;
    end else begin
        weights3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_4_ce1_local = 1'b1;
    end else begin
        weights3_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_4_d1_local = bitcast_ln180_28_fu_1270_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_4_d1_local = bitcast_ln180_24_fu_1241_p1;
        end else begin
            weights3_4_d1_local = 'bx;
        end
    end else begin
        weights3_4_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((~(trunc_ln178_reg_1428 == 3'd4) & ~(trunc_ln178_reg_1428 == 3'd2) & ~(trunc_ln178_reg_1428 == 3'd0) & (tmp_reg_1328 == 1'd0) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_4_we0_local = 1'b1;
    end else begin
        weights3_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_1328 == 1'd0) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln178_reg_1428 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((tmp_reg_1328 == 1'd0) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln178_reg_1428 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        weights3_4_we1_local = 1'b1;
    end else begin
        weights3_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights3_5_address0_local = weights3_5_addr_1_reg_1576;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_5_address0_local = zext_ln180_3_fu_917_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_5_address0_local = zext_ln122_1_fu_734_p1;
        end else begin
            weights3_5_address0_local = 'bx;
        end
    end else begin
        weights3_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights3_5_address1_local = weights3_5_addr_2_reg_1624;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_5_address1_local = weights3_5_addr_reg_1416;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_5_address1_local = zext_ln180_1_fu_863_p1;
        end else begin
            weights3_5_address1_local = 'bx;
        end
    end else begin
        weights3_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights3_5_ce0_local = 1'b1;
    end else begin
        weights3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_5_ce1_local = 1'b1;
    end else begin
        weights3_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights3_5_d1_local = bitcast_ln180_29_fu_1277_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_5_d1_local = bitcast_ln180_25_fu_1249_p1;
        end else begin
            weights3_5_d1_local = 'bx;
        end
    end else begin
        weights3_5_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((~(trunc_ln178_reg_1428 == 3'd4) & ~(trunc_ln178_reg_1428 == 3'd2) & ~(trunc_ln178_reg_1428 == 3'd0) & (tmp_reg_1328 == 1'd0) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_5_we0_local = 1'b1;
    end else begin
        weights3_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_1328 == 1'd0) & (1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln178_reg_1428 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((tmp_reg_1328 == 1'd0) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln178_reg_1428 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        weights3_5_we1_local = 1'b1;
    end else begin
        weights3_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights3_6_address0_local = weights3_6_addr_1_reg_1558;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_6_address0_local = zext_ln180_2_fu_890_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_6_address0_local = zext_ln122_1_fu_734_p1;
        end else begin
            weights3_6_address0_local = 'bx;
        end
    end else begin
        weights3_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_6_address1_local = weights3_6_addr_2_reg_1606;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_6_address1_local = weights3_6_addr_reg_1378;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_6_address1_local = zext_ln180_fu_836_p1;
        end else begin
            weights3_6_address1_local = 'bx;
        end
    end else begin
        weights3_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights3_6_ce0_local = 1'b1;
    end else begin
        weights3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_6_ce1_local = 1'b1;
    end else begin
        weights3_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_6_d1_local = bitcast_ln180_28_fu_1270_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_6_d1_local = bitcast_ln180_24_fu_1241_p1;
        end else begin
            weights3_6_d1_local = 'bx;
        end
    end else begin
        weights3_6_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((tmp_reg_1328 == 1'd0) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln178_reg_1428 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_6_we0_local = 1'b1;
    end else begin
        weights3_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(trunc_ln178_reg_1428 == 3'd4) & ~(trunc_ln178_reg_1428 == 3'd2) & ~(trunc_ln178_reg_1428 == 3'd0) & (tmp_reg_1328 == 1'd0) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((tmp_reg_1328 == 1'd0) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln178_reg_1428 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        weights3_6_we1_local = 1'b1;
    end else begin
        weights3_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights3_7_address0_local = weights3_7_addr_1_reg_1582;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_7_address0_local = zext_ln180_3_fu_917_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_7_address0_local = zext_ln122_1_fu_734_p1;
        end else begin
            weights3_7_address0_local = 'bx;
        end
    end else begin
        weights3_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights3_7_address1_local = weights3_7_addr_2_reg_1630;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_7_address1_local = weights3_7_addr_reg_1422;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_7_address1_local = zext_ln180_1_fu_863_p1;
        end else begin
            weights3_7_address1_local = 'bx;
        end
    end else begin
        weights3_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights3_7_ce0_local = 1'b1;
    end else begin
        weights3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_7_ce1_local = 1'b1;
    end else begin
        weights3_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights3_7_d1_local = bitcast_ln180_29_fu_1277_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_7_d1_local = bitcast_ln180_25_fu_1249_p1;
        end else begin
            weights3_7_d1_local = 'bx;
        end
    end else begin
        weights3_7_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((tmp_reg_1328 == 1'd0) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln178_reg_1428 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_7_we0_local = 1'b1;
    end else begin
        weights3_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(trunc_ln178_reg_1428 == 3'd4) & ~(trunc_ln178_reg_1428 == 3'd2) & ~(trunc_ln178_reg_1428 == 3'd0) & (tmp_reg_1328 == 1'd0) & (1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((tmp_reg_1328 == 1'd0) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln178_reg_1428 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        weights3_7_we1_local = 1'b1;
    end else begin
        weights3_7_we1_local = 1'b0;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage32;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end
        end
        ap_ST_fsm_pp0_stage32 : begin
            if ((1'b0 == ap_block_pp0_stage32_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage33;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage32;
            end
        end
        ap_ST_fsm_pp0_stage33 : begin
            if ((1'b0 == ap_block_pp0_stage33_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage34;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage33;
            end
        end
        ap_ST_fsm_pp0_stage34 : begin
            if ((1'b0 == ap_block_pp0_stage34_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage35;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage34;
            end
        end
        ap_ST_fsm_pp0_stage35 : begin
            if ((1'b0 == ap_block_pp0_stage35_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage36;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage35;
            end
        end
        ap_ST_fsm_pp0_stage36 : begin
            if ((1'b0 == ap_block_pp0_stage36_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage37;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage36;
            end
        end
        ap_ST_fsm_pp0_stage37 : begin
            if ((1'b0 == ap_block_pp0_stage37_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage38;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage37;
            end
        end
        ap_ST_fsm_pp0_stage38 : begin
            if ((1'b0 == ap_block_pp0_stage38_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage39;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage38;
            end
        end
        ap_ST_fsm_pp0_stage39 : begin
            if ((1'b0 == ap_block_pp0_stage39_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage40;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage39;
            end
        end
        ap_ST_fsm_pp0_stage40 : begin
            if ((1'b0 == ap_block_pp0_stage40_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage41;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage40;
            end
        end
        ap_ST_fsm_pp0_stage41 : begin
            if ((1'b0 == ap_block_pp0_stage41_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage42;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage41;
            end
        end
        ap_ST_fsm_pp0_stage42 : begin
            if ((1'b0 == ap_block_pp0_stage42_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage43;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage42;
            end
        end
        ap_ST_fsm_pp0_stage43 : begin
            if ((1'b0 == ap_block_pp0_stage43_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage44;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage43;
            end
        end
        ap_ST_fsm_pp0_stage44 : begin
            if ((1'b0 == ap_block_pp0_stage44_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage45;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage44;
            end
        end
        ap_ST_fsm_pp0_stage45 : begin
            if ((1'b0 == ap_block_pp0_stage45_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage46;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage45;
            end
        end
        ap_ST_fsm_pp0_stage46 : begin
            if ((1'b0 == ap_block_pp0_stage46_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage47;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage46;
            end
        end
        ap_ST_fsm_pp0_stage47 : begin
            if ((1'b0 == ap_block_pp0_stage47_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage47;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln178_fu_1288_p2 = (i_1_reg_1322 + 7'd2);
assign add_ln180_1_fu_875_p2 = (sub_ln122_reg_1332 + 8'd4);
assign add_ln180_2_fu_902_p2 = (sub_ln122_reg_1332 + 8'd5);
assign add_ln180_fu_821_p2 = (sub_ln122_reg_1332 + 8'd2);
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
assign ap_CS_fsm_pp0_stage24 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_pp0_stage25 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_pp0_stage26 = ap_CS_fsm[32'd26];
assign ap_CS_fsm_pp0_stage27 = ap_CS_fsm[32'd27];
assign ap_CS_fsm_pp0_stage28 = ap_CS_fsm[32'd28];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage31 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_pp0_stage32 = ap_CS_fsm[32'd32];
assign ap_CS_fsm_pp0_stage39 = ap_CS_fsm[32'd39];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage40 = ap_CS_fsm[32'd40];
assign ap_CS_fsm_pp0_stage47 = ap_CS_fsm[32'd47];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
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
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_00001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage21 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_11001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage27_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage34_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage35_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage36_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage37_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage38_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage39_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage39_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage40 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage40_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage40_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage41_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage42_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage43_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage44_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage45_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage46_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
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
assign bitcast_ln180_24_fu_1241_p1 = reg_674;
assign bitcast_ln180_25_fu_1249_p1 = sub168_s_reg_1686;
assign bitcast_ln180_26_fu_1256_p1 = sub168_2_reg_1693;
assign bitcast_ln180_27_fu_1263_p1 = sub168_1_reg_1700;
assign bitcast_ln180_28_fu_1270_p1 = sub168_1_1_reg_1707;
assign bitcast_ln180_29_fu_1277_p1 = sub168_1_2_reg_1714;
assign d_weights3_0_address0 = d_weights3_0_address0_local;
assign d_weights3_0_address1 = zext_ln180_fu_836_p1;
assign d_weights3_0_ce0 = d_weights3_0_ce0_local;
assign d_weights3_0_ce1 = d_weights3_0_ce1_local;
assign d_weights3_1_address0 = d_weights3_1_address0_local;
assign d_weights3_1_address1 = zext_ln180_1_fu_863_p1;
assign d_weights3_1_ce0 = d_weights3_1_ce0_local;
assign d_weights3_1_ce1 = d_weights3_1_ce1_local;
assign d_weights3_2_address0 = d_weights3_2_address0_local;
assign d_weights3_2_address1 = zext_ln180_fu_836_p1;
assign d_weights3_2_ce0 = d_weights3_2_ce0_local;
assign d_weights3_2_ce1 = d_weights3_2_ce1_local;
assign d_weights3_3_address0 = d_weights3_3_address0_local;
assign d_weights3_3_address1 = zext_ln180_1_fu_863_p1;
assign d_weights3_3_ce0 = d_weights3_3_ce0_local;
assign d_weights3_3_ce1 = d_weights3_3_ce1_local;
assign d_weights3_4_address0 = d_weights3_4_address0_local;
assign d_weights3_4_address1 = zext_ln180_fu_836_p1;
assign d_weights3_4_ce0 = d_weights3_4_ce0_local;
assign d_weights3_4_ce1 = d_weights3_4_ce1_local;
assign d_weights3_5_address0 = d_weights3_5_address0_local;
assign d_weights3_5_address1 = zext_ln180_1_fu_863_p1;
assign d_weights3_5_ce0 = d_weights3_5_ce0_local;
assign d_weights3_5_ce1 = d_weights3_5_ce1_local;
assign d_weights3_6_address0 = d_weights3_6_address0_local;
assign d_weights3_6_address1 = zext_ln180_fu_836_p1;
assign d_weights3_6_ce0 = d_weights3_6_ce0_local;
assign d_weights3_6_ce1 = d_weights3_6_ce1_local;
assign d_weights3_7_address0 = d_weights3_7_address0_local;
assign d_weights3_7_address1 = zext_ln180_1_fu_863_p1;
assign d_weights3_7_ce0 = d_weights3_7_ce0_local;
assign d_weights3_7_ce1 = d_weights3_7_ce1_local;
assign empty_fu_848_p2 = (sub_ln122_reg_1332 + 8'd3);
assign grp_fu_755_p_ce = 1'b1;
assign grp_fu_755_p_din0 = grp_fu_645_p0;
assign grp_fu_755_p_din1 = grp_fu_645_p1;
assign grp_fu_755_p_opcode = grp_fu_645_opcode;
assign grp_fu_759_p_ce = 1'b1;
assign grp_fu_759_p_din0 = grp_fu_649_p0;
assign grp_fu_759_p_din1 = grp_fu_649_p1;
assign lshr_ln122_1_fu_853_p4 = {{empty_fu_848_p2[7:3]}};
assign lshr_ln180_1_fu_880_p4 = {{add_ln180_1_fu_875_p2[7:3]}};
assign lshr_ln180_2_fu_907_p4 = {{add_ln180_2_fu_902_p2[7:3]}};
assign lshr_ln5_fu_724_p4 = {{sub_ln122_fu_718_p2[7:3]}};
assign lshr_ln6_fu_826_p4 = {{add_ln180_fu_821_p2[7:3]}};
assign norm_8_out = norm_fu_102;
assign p_shl_fu_710_p3 = {{trunc_ln122_fu_706_p1}, {2'd0}};
assign sub_ln122_fu_718_p2 = (p_shl_fu_710_p3 - zext_ln122_fu_702_p1);
assign tmp_10_fu_1179_p2 = weights3_0_q0;
assign tmp_10_fu_1179_p4 = weights3_2_q0;
assign tmp_10_fu_1179_p6 = weights3_4_q0;
assign tmp_10_fu_1179_p8 = weights3_6_q0;
assign tmp_10_fu_1179_p9 = 'bx;
assign tmp_11_fu_1218_p2 = weights3_1_q0;
assign tmp_11_fu_1218_p4 = weights3_3_q0;
assign tmp_11_fu_1218_p6 = weights3_5_q0;
assign tmp_11_fu_1218_p8 = weights3_7_q0;
assign tmp_11_fu_1218_p9 = 'bx;
assign tmp_1_fu_797_p2 = weights3_0_q0;
assign tmp_1_fu_797_p4 = weights3_2_q0;
assign tmp_1_fu_797_p6 = weights3_4_q0;
assign tmp_1_fu_797_p8 = weights3_6_q0;
assign tmp_1_fu_797_p9 = 'bx;
assign tmp_2_fu_929_p9 = 'bx;
assign tmp_3_fu_993_p9 = 'bx;
assign tmp_4_fu_1016_p9 = 'bx;
assign tmp_5_fu_1039_p9 = 'bx;
assign tmp_6_fu_1062_p9 = 'bx;
assign tmp_7_fu_969_p2 = weights3_1_q0;
assign tmp_7_fu_969_p4 = weights3_3_q0;
assign tmp_7_fu_969_p6 = weights3_5_q0;
assign tmp_7_fu_969_p8 = weights3_7_q0;
assign tmp_7_fu_969_p9 = 'bx;
assign tmp_8_fu_1101_p2 = weights3_0_q1;
assign tmp_8_fu_1101_p4 = weights3_2_q1;
assign tmp_8_fu_1101_p6 = weights3_4_q1;
assign tmp_8_fu_1101_p8 = weights3_6_q1;
assign tmp_8_fu_1101_p9 = 'bx;
assign tmp_9_fu_1140_p2 = weights3_1_q1;
assign tmp_9_fu_1140_p4 = weights3_3_q1;
assign tmp_9_fu_1140_p6 = weights3_5_q1;
assign tmp_9_fu_1140_p8 = weights3_7_q1;
assign tmp_9_fu_1140_p9 = 'bx;
assign tmp_s_fu_757_p9 = 'bx;
assign trunc_ln122_fu_706_p1 = ap_sig_allocacmp_i_1[5:0];
assign trunc_ln178_fu_754_p1 = i_1_reg_1322[2:0];
assign weights3_0_address0 = weights3_0_address0_local;
assign weights3_0_address1 = weights3_0_address1_local;
assign weights3_0_ce0 = weights3_0_ce0_local;
assign weights3_0_ce1 = weights3_0_ce1_local;
assign weights3_0_d0 = bitcast_ln180_26_fu_1256_p1;
assign weights3_0_d1 = weights3_0_d1_local;
assign weights3_0_we0 = weights3_0_we0_local;
assign weights3_0_we1 = weights3_0_we1_local;
assign weights3_1_address0 = weights3_1_address0_local;
assign weights3_1_address1 = weights3_1_address1_local;
assign weights3_1_ce0 = weights3_1_ce0_local;
assign weights3_1_ce1 = weights3_1_ce1_local;
assign weights3_1_d0 = bitcast_ln180_27_fu_1263_p1;
assign weights3_1_d1 = weights3_1_d1_local;
assign weights3_1_we0 = weights3_1_we0_local;
assign weights3_1_we1 = weights3_1_we1_local;
assign weights3_2_address0 = weights3_2_address0_local;
assign weights3_2_address1 = weights3_2_address1_local;
assign weights3_2_ce0 = weights3_2_ce0_local;
assign weights3_2_ce1 = weights3_2_ce1_local;
assign weights3_2_d0 = bitcast_ln180_26_fu_1256_p1;
assign weights3_2_d1 = weights3_2_d1_local;
assign weights3_2_we0 = weights3_2_we0_local;
assign weights3_2_we1 = weights3_2_we1_local;
assign weights3_3_address0 = weights3_3_address0_local;
assign weights3_3_address1 = weights3_3_address1_local;
assign weights3_3_ce0 = weights3_3_ce0_local;
assign weights3_3_ce1 = weights3_3_ce1_local;
assign weights3_3_d0 = bitcast_ln180_27_fu_1263_p1;
assign weights3_3_d1 = weights3_3_d1_local;
assign weights3_3_we0 = weights3_3_we0_local;
assign weights3_3_we1 = weights3_3_we1_local;
assign weights3_4_address0 = weights3_4_address0_local;
assign weights3_4_address1 = weights3_4_address1_local;
assign weights3_4_ce0 = weights3_4_ce0_local;
assign weights3_4_ce1 = weights3_4_ce1_local;
assign weights3_4_d0 = bitcast_ln180_26_fu_1256_p1;
assign weights3_4_d1 = weights3_4_d1_local;
assign weights3_4_we0 = weights3_4_we0_local;
assign weights3_4_we1 = weights3_4_we1_local;
assign weights3_5_address0 = weights3_5_address0_local;
assign weights3_5_address1 = weights3_5_address1_local;
assign weights3_5_ce0 = weights3_5_ce0_local;
assign weights3_5_ce1 = weights3_5_ce1_local;
assign weights3_5_d0 = bitcast_ln180_27_fu_1263_p1;
assign weights3_5_d1 = weights3_5_d1_local;
assign weights3_5_we0 = weights3_5_we0_local;
assign weights3_5_we1 = weights3_5_we1_local;
assign weights3_6_address0 = weights3_6_address0_local;
assign weights3_6_address1 = weights3_6_address1_local;
assign weights3_6_ce0 = weights3_6_ce0_local;
assign weights3_6_ce1 = weights3_6_ce1_local;
assign weights3_6_d0 = bitcast_ln180_26_fu_1256_p1;
assign weights3_6_d1 = weights3_6_d1_local;
assign weights3_6_we0 = weights3_6_we0_local;
assign weights3_6_we1 = weights3_6_we1_local;
assign weights3_7_address0 = weights3_7_address0_local;
assign weights3_7_address1 = weights3_7_address1_local;
assign weights3_7_ce0 = weights3_7_ce0_local;
assign weights3_7_ce1 = weights3_7_ce1_local;
assign weights3_7_d0 = bitcast_ln180_27_fu_1263_p1;
assign weights3_7_d1 = weights3_7_d1_local;
assign weights3_7_we0 = weights3_7_we0_local;
assign weights3_7_we1 = weights3_7_we1_local;
assign zext_ln122_1_fu_734_p1 = lshr_ln5_fu_724_p4;
assign zext_ln122_fu_702_p1 = ap_sig_allocacmp_i_1;
assign zext_ln180_1_fu_863_p1 = lshr_ln122_1_fu_853_p4;
assign zext_ln180_2_fu_890_p1 = lshr_ln180_1_fu_880_p4;
assign zext_ln180_3_fu_917_p1 = lshr_ln180_2_fu_907_p4;
assign zext_ln180_fu_836_p1 = lshr_ln6_fu_826_p4;
endmodule 
