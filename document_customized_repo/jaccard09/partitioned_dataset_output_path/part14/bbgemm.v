
module bbgemm (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,m1_0_address0,m1_0_ce0,m1_0_q0,m1_1_address0,m1_1_ce0,m1_1_q0,m1_2_address0,m1_2_ce0,m1_2_q0,m1_3_address0,m1_3_ce0,m1_3_q0,m2_0_address0,m2_0_ce0,m2_0_q0,m2_0_address1,m2_0_ce1,m2_0_q1,m2_1_address0,m2_1_ce0,m2_1_q0,m2_1_address1,m2_1_ce1,m2_1_q1,m2_2_address0,m2_2_ce0,m2_2_q0,m2_2_address1,m2_2_ce1,m2_2_q1,m2_3_address0,m2_3_ce0,m2_3_q0,m2_3_address1,m2_3_ce1,m2_3_q1,prod_0_address0,prod_0_ce0,prod_0_we0,prod_0_d0,prod_0_q0,prod_0_address1,prod_0_ce1,prod_0_q1,prod_1_address0,prod_1_ce0,prod_1_we0,prod_1_d0,prod_1_q0,prod_1_address1,prod_1_ce1,prod_1_q1,prod_2_address0,prod_2_ce0,prod_2_we0,prod_2_d0,prod_2_q0,prod_2_address1,prod_2_ce1,prod_2_q1,prod_3_address0,prod_3_ce0,prod_3_we0,prod_3_d0,prod_3_q0,prod_3_address1,prod_3_ce1,prod_3_q1);  
parameter    ap_ST_fsm_pp0_stage0 = 20'd1;
parameter    ap_ST_fsm_pp0_stage1 = 20'd2;
parameter    ap_ST_fsm_pp0_stage2 = 20'd4;
parameter    ap_ST_fsm_pp0_stage3 = 20'd8;
parameter    ap_ST_fsm_pp0_stage4 = 20'd16;
parameter    ap_ST_fsm_pp0_stage5 = 20'd32;
parameter    ap_ST_fsm_pp0_stage6 = 20'd64;
parameter    ap_ST_fsm_pp0_stage7 = 20'd128;
parameter    ap_ST_fsm_pp0_stage8 = 20'd256;
parameter    ap_ST_fsm_pp0_stage9 = 20'd512;
parameter    ap_ST_fsm_pp0_stage10 = 20'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 20'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 20'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 20'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 20'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 20'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 20'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 20'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 20'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 20'd524288;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] m1_0_address0;
output   m1_0_ce0;
input  [63:0] m1_0_q0;
output  [9:0] m1_1_address0;
output   m1_1_ce0;
input  [63:0] m1_1_q0;
output  [9:0] m1_2_address0;
output   m1_2_ce0;
input  [63:0] m1_2_q0;
output  [9:0] m1_3_address0;
output   m1_3_ce0;
input  [63:0] m1_3_q0;
output  [9:0] m2_0_address0;
output   m2_0_ce0;
input  [63:0] m2_0_q0;
output  [9:0] m2_0_address1;
output   m2_0_ce1;
input  [63:0] m2_0_q1;
output  [9:0] m2_1_address0;
output   m2_1_ce0;
input  [63:0] m2_1_q0;
output  [9:0] m2_1_address1;
output   m2_1_ce1;
input  [63:0] m2_1_q1;
output  [9:0] m2_2_address0;
output   m2_2_ce0;
input  [63:0] m2_2_q0;
output  [9:0] m2_2_address1;
output   m2_2_ce1;
input  [63:0] m2_2_q1;
output  [9:0] m2_3_address0;
output   m2_3_ce0;
input  [63:0] m2_3_q0;
output  [9:0] m2_3_address1;
output   m2_3_ce1;
input  [63:0] m2_3_q1;
output  [9:0] prod_0_address0;
output   prod_0_ce0;
output   prod_0_we0;
output  [63:0] prod_0_d0;
input  [63:0] prod_0_q0;
output  [9:0] prod_0_address1;
output   prod_0_ce1;
input  [63:0] prod_0_q1;
output  [9:0] prod_1_address0;
output   prod_1_ce0;
output   prod_1_we0;
output  [63:0] prod_1_d0;
input  [63:0] prod_1_q0;
output  [9:0] prod_1_address1;
output   prod_1_ce1;
input  [63:0] prod_1_q1;
output  [9:0] prod_2_address0;
output   prod_2_ce0;
output   prod_2_we0;
output  [63:0] prod_2_d0;
input  [63:0] prod_2_q0;
output  [9:0] prod_2_address1;
output   prod_2_ce1;
input  [63:0] prod_2_q1;
output  [9:0] prod_3_address0;
output   prod_3_ce0;
output   prod_3_we0;
output  [63:0] prod_3_d0;
input  [63:0] prod_3_q0;
output  [9:0] prod_3_address1;
output   prod_3_ce1;
input  [63:0] prod_3_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [19:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_subdone;
wire   [0:0] icmp_ln15_fu_1109_p2;
reg    ap_condition_exit_pp0_iter0_stage19;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln1647_reg_458;
reg   [63:0] reg_501;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] grp_fu_497_p2;
reg   [63:0] reg_505;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] reg_511;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] reg_517;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] reg_523;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] grp_fu_489_p2;
reg   [63:0] reg_528;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] grp_fu_493_p2;
reg   [63:0] reg_533;
wire   [0:0] empty_fu_613_p2;
reg   [0:0] empty_reg_1226;
wire   [0:0] icmp_ln18_mid211_fu_619_p2;
reg   [0:0] icmp_ln18_mid211_reg_1233;
reg   [0:0] tmp_3_reg_1239;
reg   [2:0] tmp_8_reg_1244;
wire   [3:0] indvars_iv79_udiv_fu_710_p4;
reg   [3:0] indvars_iv79_udiv_reg_1253;
wire   [5:0] empty_8_fu_720_p1;
reg   [5:0] empty_8_reg_1259;
wire   [2:0] tmp_1_fu_724_p4;
reg   [2:0] tmp_1_reg_1265;
wire   [0:0] icmp_ln21_fu_768_p2;
reg   [0:0] icmp_ln21_reg_1281;
reg   [1:0] tmp_s_reg_1337;
reg   [0:0] tmp_5_reg_1343;
wire   [63:0] select_ln21_fu_864_p3;
reg   [63:0] select_ln21_reg_1348;
reg   [63:0] m2_1_load_reg_1353;
reg   [63:0] m2_2_load_reg_1358;
reg   [63:0] m2_3_load_reg_1363;
reg   [63:0] m2_0_load_1_reg_1368;
reg   [63:0] m2_1_load_1_reg_1373;
reg   [63:0] m2_2_load_1_reg_1378;
reg   [63:0] m2_3_load_1_reg_1383;
wire   [63:0] select_ln21_1_fu_871_p3;
reg   [63:0] select_ln21_1_reg_1388;
wire   [63:0] temp_x_fu_914_p1;
reg   [63:0] temp_x_reg_1433;
wire   [63:0] bitcast_ln23_fu_918_p1;
reg   [63:0] m2_1_load_2_reg_1443;
reg   [63:0] m2_2_load_2_reg_1448;
reg   [63:0] m2_3_load_2_reg_1453;
reg   [63:0] m2_0_load_3_reg_1458;
reg   [63:0] m2_1_load_3_reg_1463;
reg   [63:0] m2_2_load_3_reg_1468;
reg   [63:0] m2_3_load_3_reg_1473;
wire   [63:0] bitcast_ln23_1_fu_923_p1;
wire   [63:0] bitcast_ln23_2_fu_927_p1;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] bitcast_ln23_3_fu_931_p1;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [63:0] bitcast_ln23_4_fu_935_p1;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] bitcast_ln23_5_fu_939_p1;
wire   [63:0] bitcast_ln23_6_fu_943_p1;
wire   [63:0] bitcast_ln23_7_fu_947_p1;
reg   [9:0] prod_0_addr_reg_1513;
reg   [9:0] prod_1_addr_reg_1519;
reg   [9:0] prod_2_addr_reg_1525;
reg   [9:0] prod_3_addr_reg_1531;
reg   [9:0] prod_3_addr_reg_1531_pp0_iter1_reg;
reg   [9:0] prod_0_addr_1_reg_1537;
reg   [9:0] prod_1_addr_1_reg_1542;
reg   [9:0] prod_2_addr_1_reg_1547;
reg   [9:0] prod_2_addr_1_reg_1547_pp0_iter1_reg;
reg   [9:0] prod_3_addr_1_reg_1552;
reg   [9:0] prod_3_addr_1_reg_1552_pp0_iter1_reg;
wire   [63:0] temp_x_1_fu_981_p1;
reg   [63:0] temp_x_1_reg_1557;
wire   [63:0] bitcast_ln23_8_fu_985_p1;
reg   [63:0] prod_0_load_reg_1567;
reg   [63:0] prod_0_load_1_reg_1572;
wire   [63:0] bitcast_ln23_9_fu_990_p1;
wire   [63:0] bitcast_ln24_fu_994_p1;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] prod_1_load_reg_1587;
reg   [63:0] mul_4_reg_1592;
reg   [63:0] prod_1_load_1_reg_1597;
wire   [63:0] bitcast_ln23_10_fu_998_p1;
wire   [63:0] bitcast_ln24_1_fu_1002_p1;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] prod_2_load_reg_1612;
wire   [63:0] bitcast_ln24_4_fu_1006_p1;
reg   [63:0] mul_5_reg_1622;
reg   [63:0] prod_2_load_1_reg_1627;
wire   [63:0] bitcast_ln23_11_fu_1010_p1;
wire   [63:0] bitcast_ln24_2_fu_1014_p1;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] prod_3_load_reg_1642;
wire   [63:0] bitcast_ln24_5_fu_1018_p1;
reg   [63:0] mul_6_reg_1652;
reg   [63:0] prod_3_load_1_reg_1657;
wire   [63:0] bitcast_ln23_12_fu_1022_p1;
wire   [63:0] bitcast_ln24_3_fu_1026_p1;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire   [63:0] bitcast_ln24_6_fu_1030_p1;
reg   [63:0] mul_7_reg_1677;
wire   [63:0] bitcast_ln23_13_fu_1034_p1;
wire   [63:0] bitcast_ln24_7_fu_1038_p1;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
reg   [63:0] mul_8_reg_1692;
wire   [63:0] bitcast_ln23_14_fu_1042_p1;
reg   [63:0] mul_9_reg_1702;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire   [63:0] bitcast_ln23_15_fu_1046_p1;
reg   [63:0] mul_10_reg_1712;
wire    ap_block_pp0_stage19_11001;
wire   [0:0] xor_ln18_fu_1092_p2;
reg   [0:0] xor_ln18_reg_1717;
wire   [0:0] icmp_ln17_fu_1097_p2;
reg   [0:0] icmp_ln17_reg_1722;
wire   [0:0] icmp_ln16_fu_1103_p2;
reg   [0:0] icmp_ln16_reg_1727;
reg   [0:0] icmp_ln15_reg_1732;
reg   [63:0] mul_11_reg_1736;
reg   [63:0] add26_s_reg_1741;
reg   [63:0] add26_2_reg_1746;
reg   [63:0] add26_5_reg_1751;
reg   [63:0] add26_3_reg_1756;
reg   [63:0] add26_6_reg_1761;
reg   [63:0] add26_7_reg_1766;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage13_subdone;
reg   [0:0] ap_phi_mux_icmp_ln1647_phi_fu_461_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1746_phi_fu_472_p4;
reg   [0:0] ap_phi_mux_icmp_ln1845_phi_fu_482_p4;
wire   [63:0] zext_ln21_fu_760_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln23_fu_787_p1;
wire   [63:0] zext_ln23_1_fu_806_p1;
wire   [63:0] zext_ln23_2_fu_887_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln23_3_fu_906_p1;
wire   [63:0] p_cast_fu_957_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] p_cast4_fu_973_p1;
reg   [13:0] indvar_flatten3538_fu_116;
wire   [13:0] add_ln15_1_fu_1086_p2;
wire    ap_block_pp0_stage19;
reg   [6:0] jj39_fu_120;
wire   [6:0] jj_fu_668_p3;
reg   [12:0] indvar_flatten1240_fu_124;
wire   [12:0] select_ln16_1_fu_1078_p3;
reg   [6:0] kk41_fu_128;
wire   [6:0] kk_fu_625_p3;
reg   [6:0] ap_sig_allocacmp_kk41_load;
reg   [9:0] indvar_flatten42_fu_132;
wire   [9:0] select_ln17_1_fu_1065_p3;
reg   [6:0] i43_fu_136;
wire   [6:0] i_fu_703_p3;
reg   [3:0] k44_fu_140;
wire   [3:0] k_fu_824_p2;
reg   [6:0] add_ln1548_fu_144;
wire   [6:0] add_ln15_fu_838_p2;
reg    m1_0_ce0_local;
reg    m1_2_ce0_local;
reg    m2_0_ce1_local;
reg   [9:0] m2_0_address1_local;
reg    m2_0_ce0_local;
reg   [9:0] m2_0_address0_local;
reg    m2_1_ce1_local;
reg   [9:0] m2_1_address1_local;
reg    m2_1_ce0_local;
reg   [9:0] m2_1_address0_local;
reg    m2_2_ce1_local;
reg   [9:0] m2_2_address1_local;
reg    m2_2_ce0_local;
reg   [9:0] m2_2_address0_local;
reg    m2_3_ce1_local;
reg   [9:0] m2_3_address1_local;
reg    m2_3_ce0_local;
reg   [9:0] m2_3_address0_local;
reg    m1_1_ce0_local;
reg    m1_3_ce0_local;
reg    prod_0_ce1_local;
reg    prod_0_ce0_local;
reg   [9:0] prod_0_address0_local;
reg    prod_0_we0_local;
reg   [63:0] prod_0_d0_local;
wire   [63:0] bitcast_ln24_8_fu_1130_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] bitcast_ln24_12_fu_1140_p1;
wire    ap_block_pp0_stage10;
reg    prod_1_ce1_local;
wire    ap_block_pp0_stage12;
reg    prod_1_ce0_local;
reg   [9:0] prod_1_address0_local;
reg    prod_1_we0_local;
reg   [63:0] prod_1_d0_local;
wire   [63:0] bitcast_ln24_9_fu_1135_p1;
wire   [63:0] bitcast_ln24_13_fu_1150_p1;
reg    prod_2_ce1_local;
wire    ap_block_pp0_stage13;
reg    prod_2_ce0_local;
reg   [9:0] prod_2_address0_local;
reg    prod_2_we0_local;
reg   [63:0] prod_2_d0_local;
wire   [63:0] bitcast_ln24_10_fu_1145_p1;
wire   [63:0] bitcast_ln24_14_fu_1160_p1;
reg    prod_3_ce1_local;
wire    ap_block_pp0_stage14;
reg    prod_3_ce0_local;
reg   [9:0] prod_3_address0_local;
reg    prod_3_we0_local;
reg   [63:0] prod_3_d0_local;
wire   [63:0] bitcast_ln24_11_fu_1155_p1;
wire   [63:0] bitcast_ln24_15_fu_1165_p1;
reg   [63:0] grp_fu_489_p0;
reg   [63:0] grp_fu_489_p1;
wire    ap_block_pp0_stage15;
wire    ap_block_pp0_stage16;
wire    ap_block_pp0_stage17;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
reg   [63:0] grp_fu_493_p0;
reg   [63:0] grp_fu_493_p1;
reg   [63:0] grp_fu_497_p0;
reg   [63:0] grp_fu_497_p1;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage18;
wire   [0:0] xor_ln11_fu_595_p2;
wire   [6:0] select_ln11_fu_581_p3;
wire   [0:0] and_ln11_fu_601_p2;
wire   [0:0] or_ln11_fu_589_p2;
wire   [6:0] add_ln16_fu_607_p2;
wire   [6:0] i_mid26_fu_676_p3;
wire   [3:0] k_mid27_fu_683_p3;
wire   [6:0] add_ln17_fu_690_p2;
wire   [3:0] k_mid2_fu_696_p3;
wire   [0:0] tmp_fu_738_p3;
wire   [0:0] or_ln21_fu_746_p2;
wire   [9:0] add_ln21_1_fu_751_p4;
wire   [1:0] trunc_ln18_fu_734_p1;
wire   [2:0] trunc_ln23_fu_774_p1;
wire   [9:0] add_ln_fu_778_p4;
wire   [9:0] or_ln_fu_795_p5;
wire   [9:0] add_ln23_2_fu_878_p5;
wire   [9:0] or_ln23_7_fu_895_p6;
wire   [9:0] tmp_2_fu_951_p3;
wire   [9:0] tmp_4_fu_965_p4;
wire   [9:0] add_ln17_1_fu_1059_p2;
wire   [12:0] add_ln16_1_fu_1072_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage13;
reg    ap_idle_pp0_0to0;
reg   [19:0] ap_NS_fsm;
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
wire    ap_block_pp0_stage14_subdone;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage16_subdone;
wire    ap_block_pp0_stage17_subdone;
wire    ap_block_pp0_stage18_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1301;
reg    ap_condition_1305;
reg    ap_condition_1326;
reg    ap_condition_663;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 20'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 indvar_flatten3538_fu_116 = 14'd0;
#0 jj39_fu_120 = 7'd0;
#0 indvar_flatten1240_fu_124 = 13'd0;
#0 kk41_fu_128 = 7'd0;
#0 indvar_flatten42_fu_132 = 10'd0;
#0 i43_fu_136 = 7'd0;
#0 k44_fu_140 = 4'd0;
#0 add_ln1548_fu_144 = 7'd0;
#0 ap_done_reg = 1'b0;
end
bbgemm_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_489_p0),.din1(grp_fu_489_p1),.ce(1'b1),.dout(grp_fu_489_p2));
bbgemm_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_493_p0),.din1(grp_fu_493_p1),.ce(1'b1),.dout(grp_fu_493_p2));
bbgemm_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_497_p0),.din1(grp_fu_497_p1),.ce(1'b1),.dout(grp_fu_497_p2));
bbgemm_flow_control_loop_pipe flow_control_loop_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage19),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(1'b1));
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
        end else if (((1'b0 == ap_block_pp0_stage13_subdone) & (1'b1 == ap_CS_fsm_pp0_stage13) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage13_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage19_subdone) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1301)) begin
            add_ln1548_fu_144 <= 7'd8;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            add_ln1548_fu_144 <= add_ln15_fu_838_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage13_subdone) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b1 == ap_condition_exit_pp0_iter1_stage13) & (ap_idle_pp0_0to0 == 1'b1)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1301)) begin
            i43_fu_136 <= 7'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            i43_fu_136 <= i_fu_703_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1326)) begin
            icmp_ln1647_reg_458 <= icmp_ln16_reg_1727;
        end else if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            icmp_ln1647_reg_458 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1301)) begin
            indvar_flatten1240_fu_124 <= 13'd0;
        end else if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            indvar_flatten1240_fu_124 <= select_ln16_1_fu_1078_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1301)) begin
            indvar_flatten3538_fu_116 <= 14'd0;
        end else if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            indvar_flatten3538_fu_116 <= add_ln15_1_fu_1086_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1301)) begin
            indvar_flatten42_fu_132 <= 10'd0;
        end else if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            indvar_flatten42_fu_132 <= select_ln17_1_fu_1065_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1301)) begin
            jj39_fu_120 <= 7'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            jj39_fu_120 <= jj_fu_668_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1301)) begin
            k44_fu_140 <= 4'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            k44_fu_140 <= k_fu_824_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_663)) begin
        kk41_fu_128 <= kk_fu_625_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add26_2_reg_1746 <= grp_fu_489_p2;
        add26_5_reg_1751 <= grp_fu_493_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add26_3_reg_1756 <= grp_fu_489_p2;
        add26_6_reg_1761 <= grp_fu_493_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add26_7_reg_1766 <= grp_fu_489_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add26_s_reg_1741 <= grp_fu_489_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        empty_8_reg_1259 <= empty_8_fu_720_p1;
        icmp_ln21_reg_1281 <= icmp_ln21_fu_768_p2;
        indvars_iv79_udiv_reg_1253 <= {{jj_fu_668_p3[5:2]}};
        tmp_1_reg_1265 <= {{jj_fu_668_p3[5:3]}};
        tmp_5_reg_1343 <= k_fu_824_p2[32'd3];
        tmp_s_reg_1337 <= {{k_mid2_fu_696_p3[2:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_1226 <= empty_fu_613_p2;
        icmp_ln18_mid211_reg_1233 <= icmp_ln18_mid211_fu_619_p2;
        tmp_3_reg_1239 <= kk_fu_625_p3[32'd2];
        tmp_8_reg_1244 <= {{kk_fu_625_p3[5:3]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        icmp_ln15_reg_1732 <= icmp_ln15_fu_1109_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        icmp_ln16_reg_1727 <= icmp_ln16_fu_1103_p2;
        icmp_ln17_reg_1722 <= icmp_ln17_fu_1097_p2;
        mul_10_reg_1712 <= grp_fu_497_p2;
        xor_ln18_reg_1717 <= xor_ln18_fu_1092_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        m2_0_load_1_reg_1368 <= m2_0_q0;
        m2_1_load_1_reg_1373 <= m2_1_q0;
        m2_1_load_reg_1353 <= m2_1_q1;
        m2_2_load_1_reg_1378 <= m2_2_q0;
        m2_2_load_reg_1358 <= m2_2_q1;
        m2_3_load_1_reg_1383 <= m2_3_q0;
        m2_3_load_reg_1363 <= m2_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        m2_0_load_3_reg_1458 <= m2_0_q0;
        m2_1_load_2_reg_1443 <= m2_1_q1;
        m2_1_load_3_reg_1463 <= m2_1_q0;
        m2_2_load_2_reg_1448 <= m2_2_q1;
        m2_2_load_3_reg_1468 <= m2_2_q0;
        m2_3_load_2_reg_1453 <= m2_3_q1;
        m2_3_load_3_reg_1473 <= m2_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_11_reg_1736 <= grp_fu_497_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        mul_4_reg_1592 <= grp_fu_497_p2;
        prod_1_load_1_reg_1597 <= prod_1_q0;
        prod_1_load_reg_1587 <= prod_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        mul_5_reg_1622 <= grp_fu_497_p2;
        prod_2_load_1_reg_1627 <= prod_2_q0;
        prod_2_load_reg_1612 <= prod_2_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        mul_6_reg_1652 <= grp_fu_497_p2;
        prod_3_load_1_reg_1657 <= prod_3_q0;
        prod_3_load_reg_1642 <= prod_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        mul_7_reg_1677 <= grp_fu_497_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        mul_8_reg_1692 <= grp_fu_497_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        mul_9_reg_1702 <= grp_fu_497_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        prod_0_addr_1_reg_1537[9 : 1] <= p_cast4_fu_973_p1[9 : 1];
        prod_0_addr_reg_1513 <= p_cast_fu_957_p1;
        prod_1_addr_1_reg_1542[9 : 1] <= p_cast4_fu_973_p1[9 : 1];
        prod_1_addr_reg_1519 <= p_cast_fu_957_p1;
        prod_2_addr_1_reg_1547[9 : 1] <= p_cast4_fu_973_p1[9 : 1];
        prod_2_addr_1_reg_1547_pp0_iter1_reg[9 : 1] <= prod_2_addr_1_reg_1547[9 : 1];
        prod_2_addr_reg_1525 <= p_cast_fu_957_p1;
        prod_3_addr_1_reg_1552[9 : 1] <= p_cast4_fu_973_p1[9 : 1];
        prod_3_addr_1_reg_1552_pp0_iter1_reg[9 : 1] <= prod_3_addr_1_reg_1552[9 : 1];
        prod_3_addr_reg_1531 <= p_cast_fu_957_p1;
        prod_3_addr_reg_1531_pp0_iter1_reg <= prod_3_addr_reg_1531;
        temp_x_1_reg_1557 <= temp_x_1_fu_981_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        prod_0_load_1_reg_1572 <= prod_0_q0;
        prod_0_load_reg_1567 <= prod_0_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_501 <= m2_0_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_505 <= grp_fu_497_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_511 <= grp_fu_497_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_517 <= grp_fu_497_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        reg_523 <= grp_fu_497_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_528 <= grp_fu_489_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_533 <= grp_fu_493_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln21_1_reg_1388 <= select_ln21_1_fu_871_p3;
        select_ln21_reg_1348 <= select_ln21_fu_864_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        temp_x_reg_1433 <= temp_x_fu_914_p1;
    end
end
always @ (*) begin
    if (((icmp_ln15_fu_1109_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage19_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        ap_condition_exit_pp0_iter0_stage19 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage19 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln15_reg_1732 == 1'd1) & (1'b0 == ap_block_pp0_stage13_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        ap_condition_exit_pp0_iter1_stage13 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage13 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage13_subdone) & (1'b1 == ap_CS_fsm_pp0_stage13) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1305)) begin
            ap_phi_mux_icmp_ln1647_phi_fu_461_p4 = icmp_ln16_reg_1727;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1647_phi_fu_461_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1647_phi_fu_461_p4 = icmp_ln16_reg_1727;
        end
    end else begin
        ap_phi_mux_icmp_ln1647_phi_fu_461_p4 = icmp_ln16_reg_1727;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1305)) begin
            ap_phi_mux_icmp_ln1746_phi_fu_472_p4 = icmp_ln17_reg_1722;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1746_phi_fu_472_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1746_phi_fu_472_p4 = icmp_ln17_reg_1722;
        end
    end else begin
        ap_phi_mux_icmp_ln1746_phi_fu_472_p4 = icmp_ln17_reg_1722;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1305)) begin
            ap_phi_mux_icmp_ln1845_phi_fu_482_p4 = xor_ln18_reg_1717;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1845_phi_fu_482_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln1845_phi_fu_482_p4 = xor_ln18_reg_1717;
        end
    end else begin
        ap_phi_mux_icmp_ln1845_phi_fu_482_p4 = xor_ln18_reg_1717;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_kk41_load = 7'd0;
    end else begin
        ap_sig_allocacmp_kk41_load = kk41_fu_128;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_489_p0 = add26_7_reg_1766;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_489_p0 = add26_3_reg_1756;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_489_p0 = add26_2_reg_1746;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_489_p0 = add26_s_reg_1741;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_489_p0 = reg_528;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_489_p0 = bitcast_ln24_7_fu_1038_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_489_p0 = bitcast_ln24_3_fu_1026_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_489_p0 = bitcast_ln24_2_fu_1014_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_489_p0 = bitcast_ln24_1_fu_1002_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_489_p0 = bitcast_ln24_fu_994_p1;
    end else begin
        grp_fu_489_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_489_p1 = mul_11_reg_1736;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_489_p1 = mul_10_reg_1712;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_489_p1 = mul_9_reg_1702;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_489_p1 = mul_8_reg_1692;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_489_p1 = mul_7_reg_1677;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        grp_fu_489_p1 = reg_523;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_489_p1 = reg_517;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_489_p1 = reg_511;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_489_p1 = reg_505;
    end else begin
        grp_fu_489_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_493_p0 = add26_6_reg_1761;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_493_p0 = add26_5_reg_1751;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_493_p0 = reg_533;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_493_p0 = bitcast_ln24_6_fu_1030_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_493_p0 = bitcast_ln24_5_fu_1018_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_493_p0 = bitcast_ln24_4_fu_1006_p1;
    end else begin
        grp_fu_493_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_493_p1 = reg_517;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_493_p1 = reg_511;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_493_p1 = reg_505;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_493_p1 = mul_6_reg_1652;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_493_p1 = mul_5_reg_1622;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_493_p1 = mul_4_reg_1592;
    end else begin
        grp_fu_493_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        grp_fu_497_p0 = temp_x_1_reg_1557;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_497_p0 = temp_x_1_fu_981_p1;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        grp_fu_497_p0 = temp_x_reg_1433;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_497_p0 = temp_x_fu_914_p1;
    end else begin
        grp_fu_497_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            grp_fu_497_p1 = bitcast_ln23_15_fu_1046_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_497_p1 = bitcast_ln23_14_fu_1042_p1;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_497_p1 = bitcast_ln23_13_fu_1034_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_497_p1 = bitcast_ln23_12_fu_1022_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_497_p1 = bitcast_ln23_11_fu_1010_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_497_p1 = bitcast_ln23_10_fu_998_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_497_p1 = bitcast_ln23_9_fu_990_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_497_p1 = bitcast_ln23_8_fu_985_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_497_p1 = bitcast_ln23_7_fu_947_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_497_p1 = bitcast_ln23_6_fu_943_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_497_p1 = bitcast_ln23_5_fu_939_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_497_p1 = bitcast_ln23_4_fu_935_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_497_p1 = bitcast_ln23_3_fu_931_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_497_p1 = bitcast_ln23_2_fu_927_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_497_p1 = bitcast_ln23_1_fu_923_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_497_p1 = bitcast_ln23_fu_918_p1;
        end else begin
            grp_fu_497_p1 = 'bx;
        end
    end else begin
        grp_fu_497_p1 = 'bx;
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
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            m2_0_address0_local = zext_ln23_3_fu_906_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_0_address0_local = zext_ln23_1_fu_806_p1;
        end else begin
            m2_0_address0_local = 'bx;
        end
    end else begin
        m2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            m2_0_address1_local = zext_ln23_2_fu_887_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_0_address1_local = zext_ln23_fu_787_p1;
        end else begin
            m2_0_address1_local = 'bx;
        end
    end else begin
        m2_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        m2_0_ce0_local = 1'b1;
    end else begin
        m2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        m2_0_ce1_local = 1'b1;
    end else begin
        m2_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            m2_1_address0_local = zext_ln23_3_fu_906_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_1_address0_local = zext_ln23_1_fu_806_p1;
        end else begin
            m2_1_address0_local = 'bx;
        end
    end else begin
        m2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            m2_1_address1_local = zext_ln23_2_fu_887_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_1_address1_local = zext_ln23_fu_787_p1;
        end else begin
            m2_1_address1_local = 'bx;
        end
    end else begin
        m2_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        m2_1_ce0_local = 1'b1;
    end else begin
        m2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        m2_1_ce1_local = 1'b1;
    end else begin
        m2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            m2_2_address0_local = zext_ln23_3_fu_906_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_2_address0_local = zext_ln23_1_fu_806_p1;
        end else begin
            m2_2_address0_local = 'bx;
        end
    end else begin
        m2_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            m2_2_address1_local = zext_ln23_2_fu_887_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_2_address1_local = zext_ln23_fu_787_p1;
        end else begin
            m2_2_address1_local = 'bx;
        end
    end else begin
        m2_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        m2_2_ce0_local = 1'b1;
    end else begin
        m2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        m2_2_ce1_local = 1'b1;
    end else begin
        m2_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            m2_3_address0_local = zext_ln23_3_fu_906_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_3_address0_local = zext_ln23_1_fu_806_p1;
        end else begin
            m2_3_address0_local = 'bx;
        end
    end else begin
        m2_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            m2_3_address1_local = zext_ln23_2_fu_887_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_3_address1_local = zext_ln23_fu_787_p1;
        end else begin
            m2_3_address1_local = 'bx;
        end
    end else begin
        m2_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        m2_3_ce0_local = 1'b1;
    end else begin
        m2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        m2_3_ce1_local = 1'b1;
    end else begin
        m2_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        prod_0_address0_local = prod_0_addr_1_reg_1537;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        prod_0_address0_local = prod_0_addr_reg_1513;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        prod_0_address0_local = p_cast4_fu_973_p1;
    end else begin
        prod_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        prod_0_ce0_local = 1'b1;
    end else begin
        prod_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        prod_0_ce1_local = 1'b1;
    end else begin
        prod_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            prod_0_d0_local = bitcast_ln24_12_fu_1140_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            prod_0_d0_local = bitcast_ln24_8_fu_1130_p1;
        end else begin
            prod_0_d0_local = 'bx;
        end
    end else begin
        prod_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        prod_0_we0_local = 1'b1;
    end else begin
        prod_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        prod_1_address0_local = prod_1_addr_reg_1519;
    end else if ((((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        prod_1_address0_local = prod_1_addr_1_reg_1542;
    end else begin
        prod_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        prod_1_ce0_local = 1'b1;
    end else begin
        prod_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        prod_1_ce1_local = 1'b1;
    end else begin
        prod_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            prod_1_d0_local = bitcast_ln24_13_fu_1150_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            prod_1_d0_local = bitcast_ln24_9_fu_1135_p1;
        end else begin
            prod_1_d0_local = 'bx;
        end
    end else begin
        prod_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        prod_1_we0_local = 1'b1;
    end else begin
        prod_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        prod_2_address0_local = prod_2_addr_1_reg_1547_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        prod_2_address0_local = prod_2_addr_reg_1525;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        prod_2_address0_local = prod_2_addr_1_reg_1547;
    end else begin
        prod_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        prod_2_ce0_local = 1'b1;
    end else begin
        prod_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        prod_2_ce1_local = 1'b1;
    end else begin
        prod_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            prod_2_d0_local = bitcast_ln24_14_fu_1160_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            prod_2_d0_local = bitcast_ln24_10_fu_1145_p1;
        end else begin
            prod_2_d0_local = 'bx;
        end
    end else begin
        prod_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        prod_2_we0_local = 1'b1;
    end else begin
        prod_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        prod_3_address0_local = prod_3_addr_1_reg_1552_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        prod_3_address0_local = prod_3_addr_reg_1531_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        prod_3_address0_local = prod_3_addr_1_reg_1552;
    end else begin
        prod_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        prod_3_ce0_local = 1'b1;
    end else begin
        prod_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        prod_3_ce1_local = 1'b1;
    end else begin
        prod_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            prod_3_d0_local = bitcast_ln24_15_fu_1165_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            prod_3_d0_local = bitcast_ln24_11_fu_1155_p1;
        end else begin
            prod_3_d0_local = 'bx;
        end
    end else begin
        prod_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        prod_3_we0_local = 1'b1;
    end else begin
        prod_3_we0_local = 1'b0;
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
            if (((1'b1 == ap_condition_exit_pp0_iter1_stage13) & (ap_idle_pp0_0to0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln15_1_fu_1086_p2 = (indvar_flatten3538_fu_116 + 14'd1);
assign add_ln15_fu_838_p2 = (jj_fu_668_p3 + 7'd8);
assign add_ln16_1_fu_1072_p2 = (indvar_flatten1240_fu_124 + 13'd1);
assign add_ln16_fu_607_p2 = (select_ln11_fu_581_p3 + 7'd8);
assign add_ln17_1_fu_1059_p2 = (indvar_flatten42_fu_132 + 10'd1);
assign add_ln17_fu_690_p2 = (i_mid26_fu_676_p3 + 7'd1);
assign add_ln21_1_fu_751_p4 = {{{empty_8_fu_720_p1}, {tmp_8_reg_1244}}, {or_ln21_fu_746_p2}};
assign add_ln23_2_fu_878_p5 = {{{{tmp_8_reg_1244}, {tmp_s_reg_1337}}, {1'd1}}, {indvars_iv79_udiv_reg_1253}};
assign add_ln_fu_778_p4 = {{{tmp_8_reg_1244}, {trunc_ln23_fu_774_p1}}, {indvars_iv79_udiv_fu_710_p4}};
assign and_ln11_fu_601_p2 = (xor_ln11_fu_595_p2 & ap_phi_mux_icmp_ln1746_phi_fu_472_p4);
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
assign ap_block_pp0_stage19 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
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
always @ (*) begin
    ap_condition_1301 = ((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1305 = ((icmp_ln15_reg_1732 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_1326 = ((icmp_ln15_reg_1732 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_663 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage19;
assign ap_ready = ap_ready_sig;
assign bitcast_ln23_10_fu_998_p1 = m2_2_load_2_reg_1448;
assign bitcast_ln23_11_fu_1010_p1 = m2_3_load_2_reg_1453;
assign bitcast_ln23_12_fu_1022_p1 = m2_0_load_3_reg_1458;
assign bitcast_ln23_13_fu_1034_p1 = m2_1_load_3_reg_1463;
assign bitcast_ln23_14_fu_1042_p1 = m2_2_load_3_reg_1468;
assign bitcast_ln23_15_fu_1046_p1 = m2_3_load_3_reg_1473;
assign bitcast_ln23_1_fu_923_p1 = m2_1_load_reg_1353;
assign bitcast_ln23_2_fu_927_p1 = m2_2_load_reg_1358;
assign bitcast_ln23_3_fu_931_p1 = m2_3_load_reg_1363;
assign bitcast_ln23_4_fu_935_p1 = m2_0_load_1_reg_1368;
assign bitcast_ln23_5_fu_939_p1 = m2_1_load_1_reg_1373;
assign bitcast_ln23_6_fu_943_p1 = m2_2_load_1_reg_1378;
assign bitcast_ln23_7_fu_947_p1 = m2_3_load_1_reg_1383;
assign bitcast_ln23_8_fu_985_p1 = reg_501;
assign bitcast_ln23_9_fu_990_p1 = m2_1_load_2_reg_1443;
assign bitcast_ln23_fu_918_p1 = reg_501;
assign bitcast_ln24_10_fu_1145_p1 = reg_528;
assign bitcast_ln24_11_fu_1155_p1 = reg_528;
assign bitcast_ln24_12_fu_1140_p1 = reg_533;
assign bitcast_ln24_13_fu_1150_p1 = reg_533;
assign bitcast_ln24_14_fu_1160_p1 = reg_533;
assign bitcast_ln24_15_fu_1165_p1 = reg_528;
assign bitcast_ln24_1_fu_1002_p1 = prod_1_load_reg_1587;
assign bitcast_ln24_2_fu_1014_p1 = prod_2_load_reg_1612;
assign bitcast_ln24_3_fu_1026_p1 = prod_3_load_reg_1642;
assign bitcast_ln24_4_fu_1006_p1 = prod_0_load_1_reg_1572;
assign bitcast_ln24_5_fu_1018_p1 = prod_1_load_1_reg_1597;
assign bitcast_ln24_6_fu_1030_p1 = prod_2_load_1_reg_1627;
assign bitcast_ln24_7_fu_1038_p1 = prod_3_load_1_reg_1657;
assign bitcast_ln24_8_fu_1130_p1 = reg_528;
assign bitcast_ln24_9_fu_1135_p1 = reg_528;
assign bitcast_ln24_fu_994_p1 = prod_0_load_reg_1567;
assign empty_8_fu_720_p1 = i_fu_703_p3[5:0];
assign empty_fu_613_p2 = (ap_phi_mux_icmp_ln1647_phi_fu_461_p4 | and_ln11_fu_601_p2);
assign i_fu_703_p3 = ((icmp_ln18_mid211_reg_1233[0:0] == 1'b1) ? i_mid26_fu_676_p3 : add_ln17_fu_690_p2);
assign i_mid26_fu_676_p3 = ((empty_reg_1226[0:0] == 1'b1) ? 7'd0 : i43_fu_136);
assign icmp_ln15_fu_1109_p2 = ((indvar_flatten3538_fu_116 == 14'd16383) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_1103_p2 = ((select_ln16_1_fu_1078_p3 == 13'd2048) ? 1'b1 : 1'b0);
assign icmp_ln17_fu_1097_p2 = ((select_ln17_1_fu_1065_p3 == 10'd256) ? 1'b1 : 1'b0);
assign icmp_ln18_mid211_fu_619_p2 = (or_ln11_fu_589_p2 | and_ln11_fu_601_p2);
assign icmp_ln21_fu_768_p2 = ((trunc_ln18_fu_734_p1 != 2'd0) ? 1'b1 : 1'b0);
assign indvars_iv79_udiv_fu_710_p4 = {{jj_fu_668_p3[5:2]}};
assign jj_fu_668_p3 = ((icmp_ln1647_reg_458[0:0] == 1'b1) ? add_ln1548_fu_144 : jj39_fu_120);
assign k_fu_824_p2 = (k_mid2_fu_696_p3 + 4'd2);
assign k_mid27_fu_683_p3 = ((empty_reg_1226[0:0] == 1'b1) ? 4'd0 : k44_fu_140);
assign k_mid2_fu_696_p3 = ((icmp_ln18_mid211_reg_1233[0:0] == 1'b1) ? k_mid27_fu_683_p3 : 4'd0);
assign kk_fu_625_p3 = ((and_ln11_fu_601_p2[0:0] == 1'b1) ? add_ln16_fu_607_p2 : select_ln11_fu_581_p3);
assign m1_0_address0 = zext_ln21_fu_760_p1;
assign m1_0_ce0 = m1_0_ce0_local;
assign m1_1_address0 = zext_ln21_fu_760_p1;
assign m1_1_ce0 = m1_1_ce0_local;
assign m1_2_address0 = zext_ln21_fu_760_p1;
assign m1_2_ce0 = m1_2_ce0_local;
assign m1_3_address0 = zext_ln21_fu_760_p1;
assign m1_3_ce0 = m1_3_ce0_local;
assign m2_0_address0 = m2_0_address0_local;
assign m2_0_address1 = m2_0_address1_local;
assign m2_0_ce0 = m2_0_ce0_local;
assign m2_0_ce1 = m2_0_ce1_local;
assign m2_1_address0 = m2_1_address0_local;
assign m2_1_address1 = m2_1_address1_local;
assign m2_1_ce0 = m2_1_ce0_local;
assign m2_1_ce1 = m2_1_ce1_local;
assign m2_2_address0 = m2_2_address0_local;
assign m2_2_address1 = m2_2_address1_local;
assign m2_2_ce0 = m2_2_ce0_local;
assign m2_2_ce1 = m2_2_ce1_local;
assign m2_3_address0 = m2_3_address0_local;
assign m2_3_address1 = m2_3_address1_local;
assign m2_3_ce0 = m2_3_ce0_local;
assign m2_3_ce1 = m2_3_ce1_local;
assign or_ln11_fu_589_p2 = (ap_phi_mux_icmp_ln1845_phi_fu_482_p4 | ap_phi_mux_icmp_ln1647_phi_fu_461_p4);
assign or_ln21_fu_746_p2 = (tmp_fu_738_p3 | tmp_3_reg_1239);
assign or_ln23_7_fu_895_p6 = {{{{{tmp_8_reg_1244}, {tmp_s_reg_1337}}, {1'd1}}, {tmp_1_reg_1265}}, {1'd1}};
assign or_ln_fu_795_p5 = {{{{tmp_8_reg_1244}, {trunc_ln23_fu_774_p1}}, {tmp_1_fu_724_p4}}, {1'd1}};
assign p_cast4_fu_973_p1 = tmp_4_fu_965_p4;
assign p_cast_fu_957_p1 = tmp_2_fu_951_p3;
assign prod_0_address0 = prod_0_address0_local;
assign prod_0_address1 = p_cast_fu_957_p1;
assign prod_0_ce0 = prod_0_ce0_local;
assign prod_0_ce1 = prod_0_ce1_local;
assign prod_0_d0 = prod_0_d0_local;
assign prod_0_we0 = prod_0_we0_local;
assign prod_1_address0 = prod_1_address0_local;
assign prod_1_address1 = prod_1_addr_reg_1519;
assign prod_1_ce0 = prod_1_ce0_local;
assign prod_1_ce1 = prod_1_ce1_local;
assign prod_1_d0 = prod_1_d0_local;
assign prod_1_we0 = prod_1_we0_local;
assign prod_2_address0 = prod_2_address0_local;
assign prod_2_address1 = prod_2_addr_reg_1525;
assign prod_2_ce0 = prod_2_ce0_local;
assign prod_2_ce1 = prod_2_ce1_local;
assign prod_2_d0 = prod_2_d0_local;
assign prod_2_we0 = prod_2_we0_local;
assign prod_3_address0 = prod_3_address0_local;
assign prod_3_address1 = prod_3_addr_reg_1531;
assign prod_3_ce0 = prod_3_ce0_local;
assign prod_3_ce1 = prod_3_ce1_local;
assign prod_3_d0 = prod_3_d0_local;
assign prod_3_we0 = prod_3_we0_local;
assign select_ln11_fu_581_p3 = ((ap_phi_mux_icmp_ln1647_phi_fu_461_p4[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_kk41_load);
assign select_ln16_1_fu_1078_p3 = ((icmp_ln1647_reg_458[0:0] == 1'b1) ? 13'd1 : add_ln16_1_fu_1072_p2);
assign select_ln17_1_fu_1065_p3 = ((empty_reg_1226[0:0] == 1'b1) ? 10'd1 : add_ln17_1_fu_1059_p2);
assign select_ln21_1_fu_871_p3 = ((icmp_ln21_reg_1281[0:0] == 1'b1) ? m1_3_q0 : m1_1_q0);
assign select_ln21_fu_864_p3 = ((icmp_ln21_reg_1281[0:0] == 1'b1) ? m1_2_q0 : m1_0_q0);
assign temp_x_1_fu_981_p1 = select_ln21_1_reg_1388;
assign temp_x_fu_914_p1 = select_ln21_reg_1348;
assign tmp_1_fu_724_p4 = {{jj_fu_668_p3[5:3]}};
assign tmp_2_fu_951_p3 = {{empty_8_reg_1259}, {indvars_iv79_udiv_reg_1253}};
assign tmp_4_fu_965_p4 = {{{empty_8_reg_1259}, {tmp_1_reg_1265}}, {1'd1}};
assign tmp_fu_738_p3 = k_mid2_fu_696_p3[32'd2];
assign trunc_ln18_fu_734_p1 = k_mid2_fu_696_p3[1:0];
assign trunc_ln23_fu_774_p1 = k_mid2_fu_696_p3[2:0];
assign xor_ln11_fu_595_p2 = (ap_phi_mux_icmp_ln1647_phi_fu_461_p4 ^ 1'd1);
assign xor_ln18_fu_1092_p2 = (tmp_5_reg_1343 ^ 1'd1);
assign zext_ln21_fu_760_p1 = add_ln21_1_fu_751_p4;
assign zext_ln23_1_fu_806_p1 = or_ln_fu_795_p5;
assign zext_ln23_2_fu_887_p1 = add_ln23_2_fu_878_p5;
assign zext_ln23_3_fu_906_p1 = or_ln23_7_fu_895_p6;
assign zext_ln23_fu_787_p1 = add_ln_fu_778_p4;
always @ (posedge ap_clk) begin
    prod_0_addr_1_reg_1537[0] <= 1'b1;
    prod_1_addr_1_reg_1542[0] <= 1'b1;
    prod_2_addr_1_reg_1547[0] <= 1'b1;
    prod_2_addr_1_reg_1547_pp0_iter1_reg[0] <= 1'b1;
    prod_3_addr_1_reg_1552[0] <= 1'b1;
    prod_3_addr_1_reg_1552_pp0_iter1_reg[0] <= 1'b1;
end
endmodule 
