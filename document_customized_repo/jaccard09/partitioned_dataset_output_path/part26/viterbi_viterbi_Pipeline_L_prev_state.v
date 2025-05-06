
module viterbi_viterbi_Pipeline_L_prev_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_18,empty_9,llike_1_address0,llike_1_ce0,llike_1_q0,llike_1_address1,llike_1_ce1,llike_1_q1,lshr_ln,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,transition_4_address0,transition_4_ce0,transition_4_q0,transition_4_address1,transition_4_ce1,transition_4_q1,transition_5_address0,transition_5_ce0,transition_5_q0,transition_5_address1,transition_5_ce1,transition_5_q1,transition_6_address0,transition_6_ce0,transition_6_q0,transition_6_address1,transition_6_ce1,transition_6_q1,transition_7_address0,transition_7_ce0,transition_7_q0,transition_7_address1,transition_7_ce1,transition_7_q1,empty_10,tmp_9,llike_address0,llike_ce0,llike_q0,empty,min_p_26_out,min_p_26_out_ap_vld,grp_fu_944_p_din0,grp_fu_944_p_din1,grp_fu_944_p_opcode,grp_fu_944_p_dout0,grp_fu_944_p_ce,grp_fu_1957_p_din0,grp_fu_1957_p_din1,grp_fu_1957_p_opcode,grp_fu_1957_p_dout0,grp_fu_1957_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 9'd1;
parameter    ap_ST_fsm_pp0_stage1 = 9'd2;
parameter    ap_ST_fsm_pp0_stage2 = 9'd4;
parameter    ap_ST_fsm_pp0_stage3 = 9'd8;
parameter    ap_ST_fsm_pp0_stage4 = 9'd16;
parameter    ap_ST_fsm_pp0_stage5 = 9'd32;
parameter    ap_ST_fsm_pp0_stage6 = 9'd64;
parameter    ap_ST_fsm_pp0_stage7 = 9'd128;
parameter    ap_ST_fsm_pp0_stage8 = 9'd256;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] min_p_18;
input  [7:0] empty_9;
output  [12:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [12:0] llike_1_address1;
output   llike_1_ce1;
input  [63:0] llike_1_q1;
input  [2:0] lshr_ln;
output  [8:0] transition_0_address0;
output   transition_0_ce0;
input  [63:0] transition_0_q0;
output  [8:0] transition_0_address1;
output   transition_0_ce1;
input  [63:0] transition_0_q1;
output  [8:0] transition_1_address0;
output   transition_1_ce0;
input  [63:0] transition_1_q0;
output  [8:0] transition_1_address1;
output   transition_1_ce1;
input  [63:0] transition_1_q1;
output  [8:0] transition_2_address0;
output   transition_2_ce0;
input  [63:0] transition_2_q0;
output  [8:0] transition_2_address1;
output   transition_2_ce1;
input  [63:0] transition_2_q1;
output  [8:0] transition_3_address0;
output   transition_3_ce0;
input  [63:0] transition_3_q0;
output  [8:0] transition_3_address1;
output   transition_3_ce1;
input  [63:0] transition_3_q1;
output  [8:0] transition_4_address0;
output   transition_4_ce0;
input  [63:0] transition_4_q0;
output  [8:0] transition_4_address1;
output   transition_4_ce1;
input  [63:0] transition_4_q1;
output  [8:0] transition_5_address0;
output   transition_5_ce0;
input  [63:0] transition_5_q0;
output  [8:0] transition_5_address1;
output   transition_5_ce1;
input  [63:0] transition_5_q1;
output  [8:0] transition_6_address0;
output   transition_6_ce0;
input  [63:0] transition_6_q0;
output  [8:0] transition_6_address1;
output   transition_6_ce1;
input  [63:0] transition_6_q1;
output  [8:0] transition_7_address0;
output   transition_7_ce0;
input  [63:0] transition_7_q0;
output  [8:0] transition_7_address1;
output   transition_7_ce1;
input  [63:0] transition_7_q1;
input  [2:0] empty_10;
input  [63:0] tmp_9;
output  [12:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
input  [12:0] empty;
output  [63:0] min_p_26_out;
output   min_p_26_out_ap_vld;
output  [63:0] grp_fu_944_p_din0;
output  [63:0] grp_fu_944_p_din1;
output  [1:0] grp_fu_944_p_opcode;
input  [63:0] grp_fu_944_p_dout0;
output   grp_fu_944_p_ce;
output  [63:0] grp_fu_1957_p_din0;
output  [63:0] grp_fu_1957_p_din1;
output  [4:0] grp_fu_1957_p_opcode;
input  [0:0] grp_fu_1957_p_dout0;
output   grp_fu_1957_p_ce;
reg ap_idle;
reg min_p_26_out_ap_vld;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] tmp_39_reg_1590;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] prev_1_reg_1483;
wire   [6:0] add_ln25_1_fu_689_p2;
reg   [6:0] add_ln25_1_reg_1584;
reg   [0:0] tmp_39_reg_1590_pp0_iter1_reg;
reg   [0:0] tmp_39_reg_1590_pp0_iter2_reg;
reg   [0:0] tmp_39_reg_1590_pp0_iter3_reg;
reg   [63:0] llike_1_load_reg_1594;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_4_fu_742_p19;
reg   [63:0] tmp_4_reg_1599;
reg   [63:0] llike_load_1_reg_1604;
wire   [63:0] tmp_5_fu_813_p19;
reg   [63:0] tmp_5_reg_1609;
reg   [63:0] llike_1_load_1_reg_1614;
wire   [63:0] tmp_6_fu_964_p19;
reg   [63:0] tmp_6_reg_1704;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] llike_load_3_reg_1709;
wire   [63:0] tmp_12_fu_1035_p19;
reg   [63:0] tmp_12_reg_1714;
reg   [63:0] add1_reg_1719;
reg   [63:0] add52_1_reg_1724;
reg   [63:0] add52_2_reg_1729;
reg   [63:0] add52_3_reg_1734;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] p_reg_1739;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] min_p_19_reg_1746;
wire   [0:0] and_ln29_1_fu_1164_p2;
reg   [0:0] and_ln29_1_reg_1753;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] p_8_reg_1758;
wire   [63:0] min_p_21_fu_1170_p3;
reg   [63:0] min_p_21_reg_1765;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] p_9_reg_1772;
wire   [0:0] and_ln29_3_fu_1252_p2;
reg   [0:0] and_ln29_3_reg_1779;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] p_10_reg_1784;
wire   [63:0] min_p_23_fu_1258_p3;
reg   [63:0] min_p_23_reg_1791;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] and_ln29_5_fu_1340_p2;
reg   [0:0] and_ln29_5_reg_1798;
wire   [63:0] min_p_25_fu_1346_p3;
reg   [63:0] min_p_25_reg_1803;
reg   [0:0] tmp_54_reg_1810;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter3_stage0;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln26_fu_596_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_609_p1;
wire   [63:0] zext_ln26_1_fu_645_p1;
wire   [63:0] zext_ln27_1_fu_658_p1;
wire   [63:0] zext_ln26_2_fu_684_p1;
wire   [63:0] zext_ln27_2_fu_875_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln26_4_fu_905_p1;
wire   [63:0] zext_ln27_3_fu_920_p1;
reg   [63:0] min_p_fu_128;
wire   [63:0] min_p_27_fu_1434_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage3;
reg   [5:0] prev_fu_132;
wire   [5:0] add_ln25_2_fu_1074_p2;
reg   [5:0] ap_sig_allocacmp_prev_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
wire    ap_block_pp0_stage0_01001;
reg    llike_1_ce1_local;
reg    llike_1_ce0_local;
reg    transition_0_ce1_local;
reg   [8:0] transition_0_address1_local;
reg    transition_0_ce0_local;
reg   [8:0] transition_0_address0_local;
reg    transition_1_ce1_local;
reg   [8:0] transition_1_address1_local;
reg    transition_1_ce0_local;
reg   [8:0] transition_1_address0_local;
reg    transition_2_ce1_local;
reg   [8:0] transition_2_address1_local;
reg    transition_2_ce0_local;
reg   [8:0] transition_2_address0_local;
reg    transition_3_ce1_local;
reg   [8:0] transition_3_address1_local;
reg    transition_3_ce0_local;
reg   [8:0] transition_3_address0_local;
reg    transition_4_ce1_local;
reg   [8:0] transition_4_address1_local;
reg    transition_4_ce0_local;
reg   [8:0] transition_4_address0_local;
reg    transition_5_ce1_local;
reg   [8:0] transition_5_address1_local;
reg    transition_5_ce0_local;
reg   [8:0] transition_5_address0_local;
reg    transition_6_ce1_local;
reg   [8:0] transition_6_address1_local;
reg    transition_6_ce0_local;
reg   [8:0] transition_6_address0_local;
reg    transition_7_ce1_local;
reg   [8:0] transition_7_address1_local;
reg    transition_7_ce0_local;
reg   [8:0] transition_7_address0_local;
reg    llike_ce0_local;
reg   [12:0] llike_address0_local;
reg   [63:0] grp_fu_553_p0;
reg   [63:0] grp_fu_553_p1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
reg   [63:0] grp_fu_557_p0;
reg   [63:0] grp_fu_557_p1;
wire   [4:0] lshr_ln7_1_fu_578_p4;
wire   [12:0] tmp_s_fu_588_p3;
wire   [8:0] add_ln_fu_601_p3;
wire   [5:0] add_ln25_fu_621_p2;
wire   [4:0] lshr_ln8_4_fu_627_p4;
wire   [12:0] tmp_43_fu_637_p3;
wire   [8:0] add_ln27_1_fu_650_p3;
wire   [4:0] add_ln8_fu_670_p2;
wire   [12:0] tmp_47_fu_676_p3;
wire   [6:0] zext_ln16_fu_574_p1;
wire   [63:0] tmp_4_fu_742_p2;
wire   [63:0] tmp_4_fu_742_p4;
wire   [63:0] tmp_4_fu_742_p6;
wire   [63:0] tmp_4_fu_742_p8;
wire   [63:0] tmp_4_fu_742_p10;
wire   [63:0] tmp_4_fu_742_p12;
wire   [63:0] tmp_4_fu_742_p14;
wire   [63:0] tmp_4_fu_742_p16;
wire   [63:0] tmp_4_fu_742_p17;
wire   [63:0] tmp_5_fu_813_p2;
wire   [63:0] tmp_5_fu_813_p4;
wire   [63:0] tmp_5_fu_813_p6;
wire   [63:0] tmp_5_fu_813_p8;
wire   [63:0] tmp_5_fu_813_p10;
wire   [63:0] tmp_5_fu_813_p12;
wire   [63:0] tmp_5_fu_813_p14;
wire   [63:0] tmp_5_fu_813_p16;
wire   [63:0] tmp_5_fu_813_p17;
wire   [8:0] shl_ln1_fu_703_p3;
wire   [8:0] add_ln27_fu_852_p2;
wire   [5:0] tmp_48_fu_858_p4;
wire   [8:0] add_ln27_3_fu_868_p3;
wire   [5:0] lshr_ln8_5_fu_887_p4;
wire   [12:0] zext_ln26_3_fu_896_p1;
wire   [12:0] add_ln26_fu_900_p2;
wire   [5:0] trunc_ln27_fu_910_p1;
wire   [8:0] add_ln27_4_fu_913_p3;
wire   [63:0] tmp_6_fu_964_p2;
wire   [63:0] tmp_6_fu_964_p4;
wire   [63:0] tmp_6_fu_964_p6;
wire   [63:0] tmp_6_fu_964_p8;
wire   [63:0] tmp_6_fu_964_p10;
wire   [63:0] tmp_6_fu_964_p12;
wire   [63:0] tmp_6_fu_964_p14;
wire   [63:0] tmp_6_fu_964_p16;
wire   [63:0] tmp_6_fu_964_p17;
wire   [63:0] tmp_12_fu_1035_p2;
wire   [63:0] tmp_12_fu_1035_p4;
wire   [63:0] tmp_12_fu_1035_p6;
wire   [63:0] tmp_12_fu_1035_p8;
wire   [63:0] tmp_12_fu_1035_p10;
wire   [63:0] tmp_12_fu_1035_p12;
wire   [63:0] tmp_12_fu_1035_p14;
wire   [63:0] tmp_12_fu_1035_p16;
wire   [63:0] tmp_12_fu_1035_p17;
wire   [63:0] bitcast_ln29_fu_1088_p1;
wire   [63:0] bitcast_ln29_1_fu_1105_p1;
wire   [10:0] tmp_40_fu_1091_p4;
wire   [51:0] trunc_ln29_fu_1101_p1;
wire   [0:0] icmp_ln29_1_fu_1128_p2;
wire   [0:0] icmp_ln29_fu_1122_p2;
wire   [10:0] tmp_41_fu_1108_p4;
wire   [51:0] trunc_ln29_1_fu_1118_p1;
wire   [0:0] icmp_ln29_3_fu_1146_p2;
wire   [0:0] icmp_ln29_2_fu_1140_p2;
wire   [0:0] or_ln29_fu_1134_p2;
wire   [0:0] and_ln29_fu_1158_p2;
wire   [0:0] or_ln29_1_fu_1152_p2;
wire   [63:0] bitcast_ln29_2_fu_1176_p1;
wire   [63:0] bitcast_ln29_3_fu_1193_p1;
wire   [10:0] tmp_44_fu_1179_p4;
wire   [51:0] trunc_ln29_2_fu_1189_p1;
wire   [0:0] icmp_ln29_5_fu_1216_p2;
wire   [0:0] icmp_ln29_4_fu_1210_p2;
wire   [10:0] tmp_45_fu_1196_p4;
wire   [51:0] trunc_ln29_3_fu_1206_p1;
wire   [0:0] icmp_ln29_7_fu_1234_p2;
wire   [0:0] icmp_ln29_6_fu_1228_p2;
wire   [0:0] or_ln29_3_fu_1240_p2;
wire   [0:0] or_ln29_2_fu_1222_p2;
wire   [0:0] and_ln29_2_fu_1246_p2;
wire   [63:0] bitcast_ln29_4_fu_1264_p1;
wire   [63:0] bitcast_ln29_5_fu_1281_p1;
wire   [10:0] tmp_49_fu_1267_p4;
wire   [51:0] trunc_ln29_4_fu_1277_p1;
wire   [0:0] icmp_ln29_9_fu_1304_p2;
wire   [0:0] icmp_ln29_8_fu_1298_p2;
wire   [10:0] tmp_50_fu_1284_p4;
wire   [51:0] trunc_ln29_5_fu_1294_p1;
wire   [0:0] icmp_ln29_11_fu_1322_p2;
wire   [0:0] icmp_ln29_10_fu_1316_p2;
wire   [0:0] or_ln29_5_fu_1328_p2;
wire   [0:0] or_ln29_4_fu_1310_p2;
wire   [0:0] and_ln29_4_fu_1334_p2;
wire   [63:0] bitcast_ln29_6_fu_1353_p1;
wire   [63:0] bitcast_ln29_7_fu_1370_p1;
wire   [10:0] tmp_52_fu_1356_p4;
wire   [51:0] trunc_ln29_6_fu_1366_p1;
wire   [0:0] icmp_ln29_13_fu_1393_p2;
wire   [0:0] icmp_ln29_12_fu_1387_p2;
wire   [10:0] tmp_53_fu_1373_p4;
wire   [51:0] trunc_ln29_7_fu_1383_p1;
wire   [0:0] icmp_ln29_15_fu_1411_p2;
wire   [0:0] icmp_ln29_14_fu_1405_p2;
wire   [0:0] or_ln29_7_fu_1417_p2;
wire   [0:0] or_ln29_6_fu_1399_p2;
wire   [0:0] and_ln29_6_fu_1423_p2;
wire   [0:0] and_ln29_7_fu_1429_p2;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage0_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [8:0] ap_NS_fsm;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage8_00001;
wire   [2:0] tmp_4_fu_742_p1;
wire   [2:0] tmp_4_fu_742_p3;
wire   [2:0] tmp_4_fu_742_p5;
wire   [2:0] tmp_4_fu_742_p7;
wire  signed [2:0] tmp_4_fu_742_p9;
wire  signed [2:0] tmp_4_fu_742_p11;
wire  signed [2:0] tmp_4_fu_742_p13;
wire  signed [2:0] tmp_4_fu_742_p15;
wire   [2:0] tmp_5_fu_813_p1;
wire   [2:0] tmp_5_fu_813_p3;
wire   [2:0] tmp_5_fu_813_p5;
wire   [2:0] tmp_5_fu_813_p7;
wire  signed [2:0] tmp_5_fu_813_p9;
wire  signed [2:0] tmp_5_fu_813_p11;
wire  signed [2:0] tmp_5_fu_813_p13;
wire  signed [2:0] tmp_5_fu_813_p15;
wire   [2:0] tmp_6_fu_964_p1;
wire   [2:0] tmp_6_fu_964_p3;
wire   [2:0] tmp_6_fu_964_p5;
wire   [2:0] tmp_6_fu_964_p7;
wire  signed [2:0] tmp_6_fu_964_p9;
wire  signed [2:0] tmp_6_fu_964_p11;
wire  signed [2:0] tmp_6_fu_964_p13;
wire  signed [2:0] tmp_6_fu_964_p15;
wire   [2:0] tmp_12_fu_1035_p1;
wire   [2:0] tmp_12_fu_1035_p3;
wire   [2:0] tmp_12_fu_1035_p5;
wire   [2:0] tmp_12_fu_1035_p7;
wire  signed [2:0] tmp_12_fu_1035_p9;
wire  signed [2:0] tmp_12_fu_1035_p11;
wire  signed [2:0] tmp_12_fu_1035_p13;
wire  signed [2:0] tmp_12_fu_1035_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_128 = 64'd0;
#0 prev_fu_132 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U32(.din0(tmp_4_fu_742_p2),.din1(tmp_4_fu_742_p4),.din2(tmp_4_fu_742_p6),.din3(tmp_4_fu_742_p8),.din4(tmp_4_fu_742_p10),.din5(tmp_4_fu_742_p12),.din6(tmp_4_fu_742_p14),.din7(tmp_4_fu_742_p16),.def(tmp_4_fu_742_p17),.sel(empty_10),.dout(tmp_4_fu_742_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U33(.din0(tmp_5_fu_813_p2),.din1(tmp_5_fu_813_p4),.din2(tmp_5_fu_813_p6),.din3(tmp_5_fu_813_p8),.din4(tmp_5_fu_813_p10),.din5(tmp_5_fu_813_p12),.din6(tmp_5_fu_813_p14),.din7(tmp_5_fu_813_p16),.def(tmp_5_fu_813_p17),.sel(empty_10),.dout(tmp_5_fu_813_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U34(.din0(tmp_6_fu_964_p2),.din1(tmp_6_fu_964_p4),.din2(tmp_6_fu_964_p6),.din3(tmp_6_fu_964_p8),.din4(tmp_6_fu_964_p10),.din5(tmp_6_fu_964_p12),.din6(tmp_6_fu_964_p14),.din7(tmp_6_fu_964_p16),.def(tmp_6_fu_964_p17),.sel(empty_10),.dout(tmp_6_fu_964_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U35(.din0(tmp_12_fu_1035_p2),.din1(tmp_12_fu_1035_p4),.din2(tmp_12_fu_1035_p6),.din3(tmp_12_fu_1035_p8),.din4(tmp_12_fu_1035_p10),.din5(tmp_12_fu_1035_p12),.din6(tmp_12_fu_1035_p14),.din7(tmp_12_fu_1035_p16),.def(tmp_12_fu_1035_p17),.sel(empty_10),.dout(tmp_12_fu_1035_p19));
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage8),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_exit_pp0_iter3_stage0) | ((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0)))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_fu_128 <= min_p_18;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (tmp_39_reg_1590_pp0_iter3_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        min_p_fu_128 <= min_p_27_fu_1434_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prev_fu_132 <= 6'd1;
    end else if (((tmp_39_reg_1590 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        prev_fu_132 <= add_ln25_2_fu_1074_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add1_reg_1719 <= grp_fu_944_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add52_1_reg_1724 <= grp_fu_944_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add52_2_reg_1729 <= grp_fu_944_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add52_3_reg_1734 <= grp_fu_944_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln25_1_reg_1584 <= add_ln25_1_fu_689_p2;
        prev_1_reg_1483 <= ap_sig_allocacmp_prev_1;
        tmp_39_reg_1590 <= add_ln25_1_fu_689_p2[32'd6];
        tmp_39_reg_1590_pp0_iter1_reg <= tmp_39_reg_1590;
        tmp_39_reg_1590_pp0_iter2_reg <= tmp_39_reg_1590_pp0_iter1_reg;
        tmp_39_reg_1590_pp0_iter3_reg <= tmp_39_reg_1590_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln29_1_reg_1753 <= and_ln29_1_fu_1164_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln29_3_reg_1779 <= and_ln29_3_fu_1252_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        and_ln29_5_reg_1798 <= and_ln29_5_fu_1340_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_1_reg_1614 <= llike_1_q0;
        llike_1_load_reg_1594 <= llike_1_q1;
        llike_load_1_reg_1604 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_load_3_reg_1709 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_19_reg_1746 <= min_p_fu_128;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_21_reg_1765 <= min_p_21_fu_1170_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_23_reg_1791 <= min_p_23_fu_1258_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_25_reg_1803 <= min_p_25_fu_1346_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        p_10_reg_1784 <= grp_fu_944_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        p_8_reg_1758 <= grp_fu_944_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        p_9_reg_1772 <= grp_fu_944_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        p_reg_1739 <= grp_fu_944_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_12_reg_1714 <= tmp_12_fu_1035_p19;
        tmp_6_reg_1704 <= tmp_6_fu_964_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_4_reg_1599 <= tmp_4_fu_742_p19;
        tmp_5_reg_1609 <= tmp_5_fu_813_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_54_reg_1810 <= grp_fu_1957_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_39_reg_1590 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (tmp_39_reg_1590_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_prev_1 = 6'd1;
    end else begin
        ap_sig_allocacmp_prev_1 = prev_fu_132;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_553_p0 = add52_3_reg_1734;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_553_p0 = add52_2_reg_1729;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_553_p0 = add52_1_reg_1724;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_553_p0 = add1_reg_1719;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_553_p0 = llike_load_3_reg_1709;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_553_p0 = llike_1_load_1_reg_1614;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_553_p0 = llike_load_1_reg_1604;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_553_p0 = llike_1_load_reg_1594;
    end else begin
        grp_fu_553_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_553_p1 = tmp_9;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_553_p1 = tmp_12_reg_1714;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_553_p1 = tmp_6_reg_1704;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_553_p1 = tmp_5_reg_1609;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_553_p1 = tmp_4_reg_1599;
    end else begin
        grp_fu_553_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_557_p0 = p_10_reg_1784;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_557_p0 = p_9_reg_1772;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_557_p0 = p_8_reg_1758;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_557_p0 = p_reg_1739;
    end else begin
        grp_fu_557_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_557_p1 = min_p_25_fu_1346_p3;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_557_p1 = min_p_23_fu_1258_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_557_p1 = min_p_21_fu_1170_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_557_p1 = min_p_fu_128;
    end else begin
        grp_fu_557_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_1_ce1_local = 1'b1;
    end else begin
        llike_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln26_4_fu_905_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln26_1_fu_645_p1;
        end else begin
            llike_address0_local = 'bx;
        end
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (tmp_39_reg_1590_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_26_out_ap_vld = 1'b1;
    end else begin
        min_p_26_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln27_3_fu_920_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln27_1_fu_658_p1;
        end else begin
            transition_0_address0_local = 'bx;
        end
    end else begin
        transition_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln27_2_fu_875_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address1_local = zext_ln27_fu_609_p1;
        end else begin
            transition_0_address1_local = 'bx;
        end
    end else begin
        transition_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_0_ce0_local = 1'b1;
    end else begin
        transition_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_0_ce1_local = 1'b1;
    end else begin
        transition_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln27_3_fu_920_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln27_1_fu_658_p1;
        end else begin
            transition_1_address0_local = 'bx;
        end
    end else begin
        transition_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln27_2_fu_875_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address1_local = zext_ln27_fu_609_p1;
        end else begin
            transition_1_address1_local = 'bx;
        end
    end else begin
        transition_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_1_ce0_local = 1'b1;
    end else begin
        transition_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_1_ce1_local = 1'b1;
    end else begin
        transition_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address0_local = zext_ln27_3_fu_920_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address0_local = zext_ln27_1_fu_658_p1;
        end else begin
            transition_2_address0_local = 'bx;
        end
    end else begin
        transition_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address1_local = zext_ln27_2_fu_875_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address1_local = zext_ln27_fu_609_p1;
        end else begin
            transition_2_address1_local = 'bx;
        end
    end else begin
        transition_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_2_ce0_local = 1'b1;
    end else begin
        transition_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_2_ce1_local = 1'b1;
    end else begin
        transition_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address0_local = zext_ln27_3_fu_920_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address0_local = zext_ln27_1_fu_658_p1;
        end else begin
            transition_3_address0_local = 'bx;
        end
    end else begin
        transition_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address1_local = zext_ln27_2_fu_875_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address1_local = zext_ln27_fu_609_p1;
        end else begin
            transition_3_address1_local = 'bx;
        end
    end else begin
        transition_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_3_ce0_local = 1'b1;
    end else begin
        transition_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_3_ce1_local = 1'b1;
    end else begin
        transition_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_4_address0_local = zext_ln27_3_fu_920_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_4_address0_local = zext_ln27_1_fu_658_p1;
        end else begin
            transition_4_address0_local = 'bx;
        end
    end else begin
        transition_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_4_address1_local = zext_ln27_2_fu_875_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_4_address1_local = zext_ln27_fu_609_p1;
        end else begin
            transition_4_address1_local = 'bx;
        end
    end else begin
        transition_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_4_ce0_local = 1'b1;
    end else begin
        transition_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_4_ce1_local = 1'b1;
    end else begin
        transition_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_5_address0_local = zext_ln27_3_fu_920_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_5_address0_local = zext_ln27_1_fu_658_p1;
        end else begin
            transition_5_address0_local = 'bx;
        end
    end else begin
        transition_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_5_address1_local = zext_ln27_2_fu_875_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_5_address1_local = zext_ln27_fu_609_p1;
        end else begin
            transition_5_address1_local = 'bx;
        end
    end else begin
        transition_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_5_ce0_local = 1'b1;
    end else begin
        transition_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_5_ce1_local = 1'b1;
    end else begin
        transition_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_6_address0_local = zext_ln27_3_fu_920_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_6_address0_local = zext_ln27_1_fu_658_p1;
        end else begin
            transition_6_address0_local = 'bx;
        end
    end else begin
        transition_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_6_address1_local = zext_ln27_2_fu_875_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_6_address1_local = zext_ln27_fu_609_p1;
        end else begin
            transition_6_address1_local = 'bx;
        end
    end else begin
        transition_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_6_ce0_local = 1'b1;
    end else begin
        transition_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_6_ce1_local = 1'b1;
    end else begin
        transition_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_7_address0_local = zext_ln27_3_fu_920_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_7_address0_local = zext_ln27_1_fu_658_p1;
        end else begin
            transition_7_address0_local = 'bx;
        end
    end else begin
        transition_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_7_address1_local = zext_ln27_2_fu_875_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_7_address1_local = zext_ln27_fu_609_p1;
        end else begin
            transition_7_address1_local = 'bx;
        end
    end else begin
        transition_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_7_ce0_local = 1'b1;
    end else begin
        transition_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_7_ce1_local = 1'b1;
    end else begin
        transition_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln25_1_fu_689_p2 = (zext_ln16_fu_574_p1 + 7'd3);
assign add_ln25_2_fu_1074_p2 = (prev_1_reg_1483 + 6'd4);
assign add_ln25_fu_621_p2 = (ap_sig_allocacmp_prev_1 + 6'd1);
assign add_ln26_fu_900_p2 = (empty + zext_ln26_3_fu_896_p1);
assign add_ln27_1_fu_650_p3 = {{add_ln25_fu_621_p2}, {lshr_ln}};
assign add_ln27_3_fu_868_p3 = {{tmp_48_fu_858_p4}, {lshr_ln}};
assign add_ln27_4_fu_913_p3 = {{trunc_ln27_fu_910_p1}, {lshr_ln}};
assign add_ln27_fu_852_p2 = (shl_ln1_fu_703_p3 + 9'd16);
assign add_ln8_fu_670_p2 = (lshr_ln7_1_fu_578_p4 + 5'd1);
assign add_ln_fu_601_p3 = {{ap_sig_allocacmp_prev_1}, {lshr_ln}};
assign and_ln29_1_fu_1164_p2 = (or_ln29_1_fu_1152_p2 & and_ln29_fu_1158_p2);
assign and_ln29_2_fu_1246_p2 = (or_ln29_3_fu_1240_p2 & or_ln29_2_fu_1222_p2);
assign and_ln29_3_fu_1252_p2 = (grp_fu_1957_p_dout0 & and_ln29_2_fu_1246_p2);
assign and_ln29_4_fu_1334_p2 = (or_ln29_5_fu_1328_p2 & or_ln29_4_fu_1310_p2);
assign and_ln29_5_fu_1340_p2 = (grp_fu_1957_p_dout0 & and_ln29_4_fu_1334_p2);
assign and_ln29_6_fu_1423_p2 = (or_ln29_7_fu_1417_p2 & or_ln29_6_fu_1399_p2);
assign and_ln29_7_fu_1429_p2 = (tmp_54_reg_1810 & and_ln29_6_fu_1423_p2);
assign and_ln29_fu_1158_p2 = (or_ln29_fu_1134_p2 & grp_fu_1957_p_dout0);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage8;
assign ap_ready = ap_ready_sig;
assign bitcast_ln29_1_fu_1105_p1 = min_p_19_reg_1746;
assign bitcast_ln29_2_fu_1176_p1 = p_8_reg_1758;
assign bitcast_ln29_3_fu_1193_p1 = min_p_21_reg_1765;
assign bitcast_ln29_4_fu_1264_p1 = p_9_reg_1772;
assign bitcast_ln29_5_fu_1281_p1 = min_p_23_reg_1791;
assign bitcast_ln29_6_fu_1353_p1 = p_10_reg_1784;
assign bitcast_ln29_7_fu_1370_p1 = min_p_25_reg_1803;
assign bitcast_ln29_fu_1088_p1 = p_reg_1739;
assign grp_fu_1957_p_ce = 1'b1;
assign grp_fu_1957_p_din0 = grp_fu_557_p0;
assign grp_fu_1957_p_din1 = grp_fu_557_p1;
assign grp_fu_1957_p_opcode = 5'd4;
assign grp_fu_944_p_ce = 1'b1;
assign grp_fu_944_p_din0 = grp_fu_553_p0;
assign grp_fu_944_p_din1 = grp_fu_553_p1;
assign grp_fu_944_p_opcode = 2'd0;
assign icmp_ln29_10_fu_1316_p2 = ((tmp_50_fu_1284_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_11_fu_1322_p2 = ((trunc_ln29_5_fu_1294_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_12_fu_1387_p2 = ((tmp_52_fu_1356_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_13_fu_1393_p2 = ((trunc_ln29_6_fu_1366_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_14_fu_1405_p2 = ((tmp_53_fu_1373_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_15_fu_1411_p2 = ((trunc_ln29_7_fu_1383_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_1128_p2 = ((trunc_ln29_fu_1101_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_1140_p2 = ((tmp_41_fu_1108_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_1146_p2 = ((trunc_ln29_1_fu_1118_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_1210_p2 = ((tmp_44_fu_1179_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_1216_p2 = ((trunc_ln29_2_fu_1189_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_1228_p2 = ((tmp_45_fu_1196_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_1234_p2 = ((trunc_ln29_3_fu_1206_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_8_fu_1298_p2 = ((tmp_49_fu_1267_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_9_fu_1304_p2 = ((trunc_ln29_4_fu_1277_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_1122_p2 = ((tmp_40_fu_1091_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = zext_ln26_2_fu_684_p1;
assign llike_1_address1 = zext_ln26_fu_596_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_ce1 = llike_1_ce1_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln7_1_fu_578_p4 = {{ap_sig_allocacmp_prev_1[5:1]}};
assign lshr_ln8_4_fu_627_p4 = {{add_ln25_fu_621_p2[5:1]}};
assign lshr_ln8_5_fu_887_p4 = {{add_ln25_1_reg_1584[6:1]}};
assign min_p_21_fu_1170_p3 = ((and_ln29_1_reg_1753[0:0] == 1'b1) ? p_reg_1739 : min_p_19_reg_1746);
assign min_p_23_fu_1258_p3 = ((and_ln29_3_reg_1779[0:0] == 1'b1) ? p_8_reg_1758 : min_p_21_reg_1765);
assign min_p_25_fu_1346_p3 = ((and_ln29_5_reg_1798[0:0] == 1'b1) ? p_9_reg_1772 : min_p_23_reg_1791);
assign min_p_26_out = ((and_ln29_5_reg_1798[0:0] == 1'b1) ? p_9_reg_1772 : min_p_23_reg_1791);
assign min_p_27_fu_1434_p3 = ((and_ln29_7_fu_1429_p2[0:0] == 1'b1) ? p_10_reg_1784 : min_p_25_reg_1803);
assign or_ln29_1_fu_1152_p2 = (icmp_ln29_3_fu_1146_p2 | icmp_ln29_2_fu_1140_p2);
assign or_ln29_2_fu_1222_p2 = (icmp_ln29_5_fu_1216_p2 | icmp_ln29_4_fu_1210_p2);
assign or_ln29_3_fu_1240_p2 = (icmp_ln29_7_fu_1234_p2 | icmp_ln29_6_fu_1228_p2);
assign or_ln29_4_fu_1310_p2 = (icmp_ln29_9_fu_1304_p2 | icmp_ln29_8_fu_1298_p2);
assign or_ln29_5_fu_1328_p2 = (icmp_ln29_11_fu_1322_p2 | icmp_ln29_10_fu_1316_p2);
assign or_ln29_6_fu_1399_p2 = (icmp_ln29_13_fu_1393_p2 | icmp_ln29_12_fu_1387_p2);
assign or_ln29_7_fu_1417_p2 = (icmp_ln29_15_fu_1411_p2 | icmp_ln29_14_fu_1405_p2);
assign or_ln29_fu_1134_p2 = (icmp_ln29_fu_1122_p2 | icmp_ln29_1_fu_1128_p2);
assign shl_ln1_fu_703_p3 = {{prev_1_reg_1483}, {3'd0}};
assign tmp_12_fu_1035_p10 = transition_4_q0;
assign tmp_12_fu_1035_p12 = transition_5_q0;
assign tmp_12_fu_1035_p14 = transition_6_q0;
assign tmp_12_fu_1035_p16 = transition_7_q0;
assign tmp_12_fu_1035_p17 = 'bx;
assign tmp_12_fu_1035_p2 = transition_0_q0;
assign tmp_12_fu_1035_p4 = transition_1_q0;
assign tmp_12_fu_1035_p6 = transition_2_q0;
assign tmp_12_fu_1035_p8 = transition_3_q0;
assign tmp_40_fu_1091_p4 = {{bitcast_ln29_fu_1088_p1[62:52]}};
assign tmp_41_fu_1108_p4 = {{bitcast_ln29_1_fu_1105_p1[62:52]}};
assign tmp_43_fu_637_p3 = {{empty_9}, {lshr_ln8_4_fu_627_p4}};
assign tmp_44_fu_1179_p4 = {{bitcast_ln29_2_fu_1176_p1[62:52]}};
assign tmp_45_fu_1196_p4 = {{bitcast_ln29_3_fu_1193_p1[62:52]}};
assign tmp_47_fu_676_p3 = {{empty_9}, {add_ln8_fu_670_p2}};
assign tmp_48_fu_858_p4 = {{add_ln27_fu_852_p2[8:3]}};
assign tmp_49_fu_1267_p4 = {{bitcast_ln29_4_fu_1264_p1[62:52]}};
assign tmp_4_fu_742_p10 = transition_4_q1;
assign tmp_4_fu_742_p12 = transition_5_q1;
assign tmp_4_fu_742_p14 = transition_6_q1;
assign tmp_4_fu_742_p16 = transition_7_q1;
assign tmp_4_fu_742_p17 = 'bx;
assign tmp_4_fu_742_p2 = transition_0_q1;
assign tmp_4_fu_742_p4 = transition_1_q1;
assign tmp_4_fu_742_p6 = transition_2_q1;
assign tmp_4_fu_742_p8 = transition_3_q1;
assign tmp_50_fu_1284_p4 = {{bitcast_ln29_5_fu_1281_p1[62:52]}};
assign tmp_52_fu_1356_p4 = {{bitcast_ln29_6_fu_1353_p1[62:52]}};
assign tmp_53_fu_1373_p4 = {{bitcast_ln29_7_fu_1370_p1[62:52]}};
assign tmp_5_fu_813_p10 = transition_4_q0;
assign tmp_5_fu_813_p12 = transition_5_q0;
assign tmp_5_fu_813_p14 = transition_6_q0;
assign tmp_5_fu_813_p16 = transition_7_q0;
assign tmp_5_fu_813_p17 = 'bx;
assign tmp_5_fu_813_p2 = transition_0_q0;
assign tmp_5_fu_813_p4 = transition_1_q0;
assign tmp_5_fu_813_p6 = transition_2_q0;
assign tmp_5_fu_813_p8 = transition_3_q0;
assign tmp_6_fu_964_p10 = transition_4_q1;
assign tmp_6_fu_964_p12 = transition_5_q1;
assign tmp_6_fu_964_p14 = transition_6_q1;
assign tmp_6_fu_964_p16 = transition_7_q1;
assign tmp_6_fu_964_p17 = 'bx;
assign tmp_6_fu_964_p2 = transition_0_q1;
assign tmp_6_fu_964_p4 = transition_1_q1;
assign tmp_6_fu_964_p6 = transition_2_q1;
assign tmp_6_fu_964_p8 = transition_3_q1;
assign tmp_s_fu_588_p3 = {{empty_9}, {lshr_ln7_1_fu_578_p4}};
assign transition_0_address0 = transition_0_address0_local;
assign transition_0_address1 = transition_0_address1_local;
assign transition_0_ce0 = transition_0_ce0_local;
assign transition_0_ce1 = transition_0_ce1_local;
assign transition_1_address0 = transition_1_address0_local;
assign transition_1_address1 = transition_1_address1_local;
assign transition_1_ce0 = transition_1_ce0_local;
assign transition_1_ce1 = transition_1_ce1_local;
assign transition_2_address0 = transition_2_address0_local;
assign transition_2_address1 = transition_2_address1_local;
assign transition_2_ce0 = transition_2_ce0_local;
assign transition_2_ce1 = transition_2_ce1_local;
assign transition_3_address0 = transition_3_address0_local;
assign transition_3_address1 = transition_3_address1_local;
assign transition_3_ce0 = transition_3_ce0_local;
assign transition_3_ce1 = transition_3_ce1_local;
assign transition_4_address0 = transition_4_address0_local;
assign transition_4_address1 = transition_4_address1_local;
assign transition_4_ce0 = transition_4_ce0_local;
assign transition_4_ce1 = transition_4_ce1_local;
assign transition_5_address0 = transition_5_address0_local;
assign transition_5_address1 = transition_5_address1_local;
assign transition_5_ce0 = transition_5_ce0_local;
assign transition_5_ce1 = transition_5_ce1_local;
assign transition_6_address0 = transition_6_address0_local;
assign transition_6_address1 = transition_6_address1_local;
assign transition_6_ce0 = transition_6_ce0_local;
assign transition_6_ce1 = transition_6_ce1_local;
assign transition_7_address0 = transition_7_address0_local;
assign transition_7_address1 = transition_7_address1_local;
assign transition_7_ce0 = transition_7_ce0_local;
assign transition_7_ce1 = transition_7_ce1_local;
assign trunc_ln27_fu_910_p1 = add_ln25_1_reg_1584[5:0];
assign trunc_ln29_1_fu_1118_p1 = bitcast_ln29_1_fu_1105_p1[51:0];
assign trunc_ln29_2_fu_1189_p1 = bitcast_ln29_2_fu_1176_p1[51:0];
assign trunc_ln29_3_fu_1206_p1 = bitcast_ln29_3_fu_1193_p1[51:0];
assign trunc_ln29_4_fu_1277_p1 = bitcast_ln29_4_fu_1264_p1[51:0];
assign trunc_ln29_5_fu_1294_p1 = bitcast_ln29_5_fu_1281_p1[51:0];
assign trunc_ln29_6_fu_1366_p1 = bitcast_ln29_6_fu_1353_p1[51:0];
assign trunc_ln29_7_fu_1383_p1 = bitcast_ln29_7_fu_1370_p1[51:0];
assign trunc_ln29_fu_1101_p1 = bitcast_ln29_fu_1088_p1[51:0];
assign zext_ln16_fu_574_p1 = ap_sig_allocacmp_prev_1;
assign zext_ln26_1_fu_645_p1 = tmp_43_fu_637_p3;
assign zext_ln26_2_fu_684_p1 = tmp_47_fu_676_p3;
assign zext_ln26_3_fu_896_p1 = lshr_ln8_5_fu_887_p4;
assign zext_ln26_4_fu_905_p1 = add_ln26_fu_900_p2;
assign zext_ln26_fu_596_p1 = tmp_s_fu_588_p3;
assign zext_ln27_1_fu_658_p1 = add_ln27_1_fu_650_p3;
assign zext_ln27_2_fu_875_p1 = add_ln27_3_fu_868_p3;
assign zext_ln27_3_fu_920_p1 = add_ln27_4_fu_913_p3;
assign zext_ln27_fu_609_p1 = add_ln_fu_601_p3;
endmodule 
