module viterbi_viterbi_Pipeline_L_prev_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_6,empty_9,llike_address0,llike_ce0,llike_q0,llike_address1,llike_ce1,llike_q1,lshr_ln,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,transition_4_address0,transition_4_ce0,transition_4_q0,transition_4_address1,transition_4_ce1,transition_4_q1,transition_5_address0,transition_5_ce0,transition_5_q0,transition_5_address1,transition_5_ce1,transition_5_q1,transition_6_address0,transition_6_ce0,transition_6_q0,transition_6_address1,transition_6_ce1,transition_6_q1,transition_7_address0,transition_7_ce0,transition_7_q0,transition_7_address1,transition_7_ce1,transition_7_q1,empty_10,tmp_s,empty,min_p_14_out,min_p_14_out_ap_vld,grp_fu_921_p_din0,grp_fu_921_p_din1,grp_fu_921_p_opcode,grp_fu_921_p_dout0,grp_fu_921_p_ce,grp_fu_1926_p_din0,grp_fu_1926_p_din1,grp_fu_1926_p_opcode,grp_fu_1926_p_dout0,grp_fu_1926_p_ce); 
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
input  [63:0] min_p_6;
input  [7:0] empty_9;
output  [13:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [13:0] llike_address1;
output   llike_ce1;
input  [63:0] llike_q1;
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
input  [63:0] tmp_s;
input  [13:0] empty;
output  [63:0] min_p_14_out;
output   min_p_14_out_ap_vld;
output  [63:0] grp_fu_921_p_din0;
output  [63:0] grp_fu_921_p_din1;
output  [1:0] grp_fu_921_p_opcode;
input  [63:0] grp_fu_921_p_dout0;
output   grp_fu_921_p_ce;
output  [63:0] grp_fu_1926_p_din0;
output  [63:0] grp_fu_1926_p_din1;
output  [4:0] grp_fu_1926_p_opcode;
input  [0:0] grp_fu_1926_p_dout0;
output   grp_fu_1926_p_ce;
reg ap_idle;
reg min_p_14_out_ap_vld;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] tmp_9_reg_1514;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] prev_1_reg_1412;
wire   [6:0] add_ln25_2_fu_629_p2;
reg   [6:0] add_ln25_2_reg_1508;
reg   [0:0] tmp_9_reg_1514_pp0_iter1_reg;
reg   [0:0] tmp_9_reg_1514_pp0_iter2_reg;
reg   [0:0] tmp_9_reg_1514_pp0_iter3_reg;
reg   [63:0] llike_load_1_reg_1518;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_2_fu_675_p19;
reg   [63:0] tmp_2_reg_1523;
reg   [63:0] llike_load_reg_1528;
wire   [63:0] tmp_4_fu_746_p19;
reg   [63:0] tmp_4_reg_1533;
reg   [63:0] llike_load_2_reg_1628;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_6_fu_888_p19;
reg   [63:0] tmp_6_reg_1633;
reg   [63:0] llike_load_3_reg_1638;
wire   [63:0] tmp_12_fu_959_p19;
reg   [63:0] tmp_12_reg_1643;
reg   [63:0] add1_reg_1648;
reg   [63:0] add52_1_reg_1653;
reg   [63:0] add52_2_reg_1658;
reg   [63:0] add52_3_reg_1663;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] p_reg_1668;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] min_p_7_reg_1675;
wire   [0:0] and_ln29_1_fu_1088_p2;
reg   [0:0] and_ln29_1_reg_1682;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] p_2_reg_1687;
wire   [63:0] min_p_9_fu_1094_p3;
reg   [63:0] min_p_9_reg_1694;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] p_3_reg_1701;
wire   [0:0] and_ln29_3_fu_1176_p2;
reg   [0:0] and_ln29_3_reg_1708;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] p_4_reg_1713;
wire   [63:0] min_p_11_fu_1182_p3;
reg   [63:0] min_p_11_reg_1720;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] and_ln29_5_fu_1264_p2;
reg   [0:0] and_ln29_5_reg_1727;
wire   [63:0] min_p_13_fu_1270_p3;
reg   [63:0] min_p_13_reg_1732;
reg   [0:0] tmp_25_reg_1739;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter3_stage0;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln26_fu_561_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_578_p1;
wire   [63:0] zext_ln26_1_fu_604_p1;
wire   [63:0] zext_ln27_1_fu_617_p1;
wire   [63:0] zext_ln26_2_fu_797_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln27_2_fu_809_p1;
wire   [63:0] zext_ln26_4_fu_829_p1;
wire   [63:0] zext_ln27_3_fu_844_p1;
reg   [63:0] min_p_fu_112;
wire   [63:0] min_p_15_fu_1358_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage3;
reg   [5:0] prev_fu_116;
wire   [5:0] add_ln25_3_fu_998_p2;
reg   [5:0] ap_sig_allocacmp_prev_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
wire    ap_block_pp0_stage0_01001;
reg    llike_ce1_local;
reg   [13:0] llike_address1_local;
reg    llike_ce0_local;
reg   [13:0] llike_address0_local;
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
reg   [63:0] grp_fu_532_p0;
reg   [63:0] grp_fu_532_p1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
reg   [63:0] grp_fu_536_p0;
reg   [63:0] grp_fu_536_p1;
wire   [13:0] tmp_10_fu_553_p3;
wire   [8:0] add_ln_fu_570_p3;
wire   [5:0] add_ln25_fu_590_p2;
wire   [13:0] tmp_15_fu_596_p3;
wire   [8:0] add_ln27_1_fu_609_p3;
wire   [6:0] zext_ln15_fu_566_p1;
wire   [63:0] tmp_2_fu_675_p2;
wire   [63:0] tmp_2_fu_675_p4;
wire   [63:0] tmp_2_fu_675_p6;
wire   [63:0] tmp_2_fu_675_p8;
wire   [63:0] tmp_2_fu_675_p10;
wire   [63:0] tmp_2_fu_675_p12;
wire   [63:0] tmp_2_fu_675_p14;
wire   [63:0] tmp_2_fu_675_p16;
wire   [63:0] tmp_2_fu_675_p17;
wire   [63:0] tmp_4_fu_746_p2;
wire   [63:0] tmp_4_fu_746_p4;
wire   [63:0] tmp_4_fu_746_p6;
wire   [63:0] tmp_4_fu_746_p8;
wire   [63:0] tmp_4_fu_746_p10;
wire   [63:0] tmp_4_fu_746_p12;
wire   [63:0] tmp_4_fu_746_p14;
wire   [63:0] tmp_4_fu_746_p16;
wire   [63:0] tmp_4_fu_746_p17;
wire   [5:0] add_ln25_1_fu_785_p2;
wire   [13:0] tmp_19_fu_790_p3;
wire   [8:0] add_ln27_2_fu_802_p3;
wire   [13:0] zext_ln26_3_fu_821_p1;
wire   [13:0] add_ln26_fu_824_p2;
wire   [5:0] trunc_ln27_fu_834_p1;
wire   [8:0] add_ln27_3_fu_837_p3;
wire   [63:0] tmp_6_fu_888_p2;
wire   [63:0] tmp_6_fu_888_p4;
wire   [63:0] tmp_6_fu_888_p6;
wire   [63:0] tmp_6_fu_888_p8;
wire   [63:0] tmp_6_fu_888_p10;
wire   [63:0] tmp_6_fu_888_p12;
wire   [63:0] tmp_6_fu_888_p14;
wire   [63:0] tmp_6_fu_888_p16;
wire   [63:0] tmp_6_fu_888_p17;
wire   [63:0] tmp_12_fu_959_p2;
wire   [63:0] tmp_12_fu_959_p4;
wire   [63:0] tmp_12_fu_959_p6;
wire   [63:0] tmp_12_fu_959_p8;
wire   [63:0] tmp_12_fu_959_p10;
wire   [63:0] tmp_12_fu_959_p12;
wire   [63:0] tmp_12_fu_959_p14;
wire   [63:0] tmp_12_fu_959_p16;
wire   [63:0] tmp_12_fu_959_p17;
wire   [63:0] bitcast_ln29_fu_1012_p1;
wire   [63:0] bitcast_ln29_1_fu_1029_p1;
wire   [10:0] tmp_11_fu_1015_p4;
wire   [51:0] trunc_ln29_fu_1025_p1;
wire   [0:0] icmp_ln29_1_fu_1052_p2;
wire   [0:0] icmp_ln29_fu_1046_p2;
wire   [10:0] tmp_13_fu_1032_p4;
wire   [51:0] trunc_ln29_1_fu_1042_p1;
wire   [0:0] icmp_ln29_3_fu_1070_p2;
wire   [0:0] icmp_ln29_2_fu_1064_p2;
wire   [0:0] or_ln29_fu_1058_p2;
wire   [0:0] and_ln29_fu_1082_p2;
wire   [0:0] or_ln29_1_fu_1076_p2;
wire   [63:0] bitcast_ln29_2_fu_1100_p1;
wire   [63:0] bitcast_ln29_3_fu_1117_p1;
wire   [10:0] tmp_16_fu_1103_p4;
wire   [51:0] trunc_ln29_2_fu_1113_p1;
wire   [0:0] icmp_ln29_5_fu_1140_p2;
wire   [0:0] icmp_ln29_4_fu_1134_p2;
wire   [10:0] tmp_17_fu_1120_p4;
wire   [51:0] trunc_ln29_3_fu_1130_p1;
wire   [0:0] icmp_ln29_7_fu_1158_p2;
wire   [0:0] icmp_ln29_6_fu_1152_p2;
wire   [0:0] or_ln29_3_fu_1164_p2;
wire   [0:0] or_ln29_2_fu_1146_p2;
wire   [0:0] and_ln29_2_fu_1170_p2;
wire   [63:0] bitcast_ln29_4_fu_1188_p1;
wire   [63:0] bitcast_ln29_5_fu_1205_p1;
wire   [10:0] tmp_20_fu_1191_p4;
wire   [51:0] trunc_ln29_4_fu_1201_p1;
wire   [0:0] icmp_ln29_9_fu_1228_p2;
wire   [0:0] icmp_ln29_8_fu_1222_p2;
wire   [10:0] tmp_21_fu_1208_p4;
wire   [51:0] trunc_ln29_5_fu_1218_p1;
wire   [0:0] icmp_ln29_11_fu_1246_p2;
wire   [0:0] icmp_ln29_10_fu_1240_p2;
wire   [0:0] or_ln29_5_fu_1252_p2;
wire   [0:0] or_ln29_4_fu_1234_p2;
wire   [0:0] and_ln29_4_fu_1258_p2;
wire   [63:0] bitcast_ln29_6_fu_1277_p1;
wire   [63:0] bitcast_ln29_7_fu_1294_p1;
wire   [10:0] tmp_23_fu_1280_p4;
wire   [51:0] trunc_ln29_6_fu_1290_p1;
wire   [0:0] icmp_ln29_13_fu_1317_p2;
wire   [0:0] icmp_ln29_12_fu_1311_p2;
wire   [10:0] tmp_24_fu_1297_p4;
wire   [51:0] trunc_ln29_7_fu_1307_p1;
wire   [0:0] icmp_ln29_15_fu_1335_p2;
wire   [0:0] icmp_ln29_14_fu_1329_p2;
wire   [0:0] or_ln29_7_fu_1341_p2;
wire   [0:0] or_ln29_6_fu_1323_p2;
wire   [0:0] and_ln29_6_fu_1347_p2;
wire   [0:0] and_ln29_7_fu_1353_p2;
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
wire   [2:0] tmp_2_fu_675_p1;
wire   [2:0] tmp_2_fu_675_p3;
wire   [2:0] tmp_2_fu_675_p5;
wire   [2:0] tmp_2_fu_675_p7;
wire  signed [2:0] tmp_2_fu_675_p9;
wire  signed [2:0] tmp_2_fu_675_p11;
wire  signed [2:0] tmp_2_fu_675_p13;
wire  signed [2:0] tmp_2_fu_675_p15;
wire   [2:0] tmp_4_fu_746_p1;
wire   [2:0] tmp_4_fu_746_p3;
wire   [2:0] tmp_4_fu_746_p5;
wire   [2:0] tmp_4_fu_746_p7;
wire  signed [2:0] tmp_4_fu_746_p9;
wire  signed [2:0] tmp_4_fu_746_p11;
wire  signed [2:0] tmp_4_fu_746_p13;
wire  signed [2:0] tmp_4_fu_746_p15;
wire   [2:0] tmp_6_fu_888_p1;
wire   [2:0] tmp_6_fu_888_p3;
wire   [2:0] tmp_6_fu_888_p5;
wire   [2:0] tmp_6_fu_888_p7;
wire  signed [2:0] tmp_6_fu_888_p9;
wire  signed [2:0] tmp_6_fu_888_p11;
wire  signed [2:0] tmp_6_fu_888_p13;
wire  signed [2:0] tmp_6_fu_888_p15;
wire   [2:0] tmp_12_fu_959_p1;
wire   [2:0] tmp_12_fu_959_p3;
wire   [2:0] tmp_12_fu_959_p5;
wire   [2:0] tmp_12_fu_959_p7;
wire  signed [2:0] tmp_12_fu_959_p9;
wire  signed [2:0] tmp_12_fu_959_p11;
wire  signed [2:0] tmp_12_fu_959_p13;
wire  signed [2:0] tmp_12_fu_959_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_112 = 64'd0;
#0 prev_fu_116 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U31(.din0(tmp_2_fu_675_p2),.din1(tmp_2_fu_675_p4),.din2(tmp_2_fu_675_p6),.din3(tmp_2_fu_675_p8),.din4(tmp_2_fu_675_p10),.din5(tmp_2_fu_675_p12),.din6(tmp_2_fu_675_p14),.din7(tmp_2_fu_675_p16),.def(tmp_2_fu_675_p17),.sel(empty_10),.dout(tmp_2_fu_675_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U32(.din0(tmp_4_fu_746_p2),.din1(tmp_4_fu_746_p4),.din2(tmp_4_fu_746_p6),.din3(tmp_4_fu_746_p8),.din4(tmp_4_fu_746_p10),.din5(tmp_4_fu_746_p12),.din6(tmp_4_fu_746_p14),.din7(tmp_4_fu_746_p16),.def(tmp_4_fu_746_p17),.sel(empty_10),.dout(tmp_4_fu_746_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U33(.din0(tmp_6_fu_888_p2),.din1(tmp_6_fu_888_p4),.din2(tmp_6_fu_888_p6),.din3(tmp_6_fu_888_p8),.din4(tmp_6_fu_888_p10),.din5(tmp_6_fu_888_p12),.din6(tmp_6_fu_888_p14),.din7(tmp_6_fu_888_p16),.def(tmp_6_fu_888_p17),.sel(empty_10),.dout(tmp_6_fu_888_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U34(.din0(tmp_12_fu_959_p2),.din1(tmp_12_fu_959_p4),.din2(tmp_12_fu_959_p6),.din3(tmp_12_fu_959_p8),.din4(tmp_12_fu_959_p10),.din5(tmp_12_fu_959_p12),.din6(tmp_12_fu_959_p14),.din7(tmp_12_fu_959_p16),.def(tmp_12_fu_959_p17),.sel(empty_10),.dout(tmp_12_fu_959_p19));
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
        min_p_fu_112 <= min_p_6;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (tmp_9_reg_1514_pp0_iter3_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        min_p_fu_112 <= min_p_15_fu_1358_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prev_fu_116 <= 6'd1;
    end else if (((tmp_9_reg_1514 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        prev_fu_116 <= add_ln25_3_fu_998_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add1_reg_1648 <= grp_fu_921_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add52_1_reg_1653 <= grp_fu_921_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add52_2_reg_1658 <= grp_fu_921_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add52_3_reg_1663 <= grp_fu_921_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln25_2_reg_1508 <= add_ln25_2_fu_629_p2;
        prev_1_reg_1412 <= ap_sig_allocacmp_prev_1;
        tmp_9_reg_1514 <= add_ln25_2_fu_629_p2[32'd6];
        tmp_9_reg_1514_pp0_iter1_reg <= tmp_9_reg_1514;
        tmp_9_reg_1514_pp0_iter2_reg <= tmp_9_reg_1514_pp0_iter1_reg;
        tmp_9_reg_1514_pp0_iter3_reg <= tmp_9_reg_1514_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln29_1_reg_1682 <= and_ln29_1_fu_1088_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln29_3_reg_1708 <= and_ln29_3_fu_1176_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        and_ln29_5_reg_1727 <= and_ln29_5_fu_1264_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_load_1_reg_1518 <= llike_q1;
        llike_load_reg_1528 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_load_2_reg_1628 <= llike_q1;
        llike_load_3_reg_1638 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_11_reg_1720 <= min_p_11_fu_1182_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_13_reg_1732 <= min_p_13_fu_1270_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_7_reg_1675 <= min_p_fu_112;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_9_reg_1694 <= min_p_9_fu_1094_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        p_2_reg_1687 <= grp_fu_921_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        p_3_reg_1701 <= grp_fu_921_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        p_4_reg_1713 <= grp_fu_921_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        p_reg_1668 <= grp_fu_921_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_12_reg_1643 <= tmp_12_fu_959_p19;
        tmp_6_reg_1633 <= tmp_6_fu_888_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_25_reg_1739 <= grp_fu_1926_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_2_reg_1523 <= tmp_2_fu_675_p19;
        tmp_4_reg_1533 <= tmp_4_fu_746_p19;
    end
end
always @ (*) begin
    if (((tmp_9_reg_1514 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (tmp_9_reg_1514_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_prev_1 = prev_fu_116;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_532_p0 = add52_3_reg_1663;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_532_p0 = add52_2_reg_1658;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_532_p0 = add52_1_reg_1653;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_532_p0 = add1_reg_1648;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_532_p0 = llike_load_3_reg_1638;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_532_p0 = llike_load_2_reg_1628;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_532_p0 = llike_load_reg_1528;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_532_p0 = llike_load_1_reg_1518;
    end else begin
        grp_fu_532_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_532_p1 = tmp_s;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_532_p1 = tmp_12_reg_1643;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_532_p1 = tmp_6_reg_1633;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_532_p1 = tmp_4_reg_1533;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_532_p1 = tmp_2_reg_1523;
    end else begin
        grp_fu_532_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_536_p0 = p_4_reg_1713;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_536_p0 = p_3_reg_1701;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_536_p0 = p_2_reg_1687;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_536_p0 = p_reg_1668;
    end else begin
        grp_fu_536_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_536_p1 = min_p_13_fu_1270_p3;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_536_p1 = min_p_11_fu_1182_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_536_p1 = min_p_9_fu_1094_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_536_p1 = min_p_fu_112;
    end else begin
        grp_fu_536_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln26_4_fu_829_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln26_1_fu_604_p1;
        end else begin
            llike_address0_local = 'bx;
        end
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address1_local = zext_ln26_2_fu_797_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address1_local = zext_ln26_fu_561_p1;
        end else begin
            llike_address1_local = 'bx;
        end
    end else begin
        llike_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_ce1_local = 1'b1;
    end else begin
        llike_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (tmp_9_reg_1514_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_14_out_ap_vld = 1'b1;
    end else begin
        min_p_14_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln27_3_fu_844_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln27_1_fu_617_p1;
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
            transition_0_address1_local = zext_ln27_2_fu_809_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address1_local = zext_ln27_fu_578_p1;
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
            transition_1_address0_local = zext_ln27_3_fu_844_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln27_1_fu_617_p1;
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
            transition_1_address1_local = zext_ln27_2_fu_809_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address1_local = zext_ln27_fu_578_p1;
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
            transition_2_address0_local = zext_ln27_3_fu_844_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address0_local = zext_ln27_1_fu_617_p1;
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
            transition_2_address1_local = zext_ln27_2_fu_809_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address1_local = zext_ln27_fu_578_p1;
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
            transition_3_address0_local = zext_ln27_3_fu_844_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address0_local = zext_ln27_1_fu_617_p1;
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
            transition_3_address1_local = zext_ln27_2_fu_809_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address1_local = zext_ln27_fu_578_p1;
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
            transition_4_address0_local = zext_ln27_3_fu_844_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_4_address0_local = zext_ln27_1_fu_617_p1;
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
            transition_4_address1_local = zext_ln27_2_fu_809_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_4_address1_local = zext_ln27_fu_578_p1;
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
            transition_5_address0_local = zext_ln27_3_fu_844_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_5_address0_local = zext_ln27_1_fu_617_p1;
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
            transition_5_address1_local = zext_ln27_2_fu_809_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_5_address1_local = zext_ln27_fu_578_p1;
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
            transition_6_address0_local = zext_ln27_3_fu_844_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_6_address0_local = zext_ln27_1_fu_617_p1;
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
            transition_6_address1_local = zext_ln27_2_fu_809_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_6_address1_local = zext_ln27_fu_578_p1;
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
            transition_7_address0_local = zext_ln27_3_fu_844_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_7_address0_local = zext_ln27_1_fu_617_p1;
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
            transition_7_address1_local = zext_ln27_2_fu_809_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_7_address1_local = zext_ln27_fu_578_p1;
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
assign add_ln25_1_fu_785_p2 = (prev_1_reg_1412 + 6'd2);
assign add_ln25_2_fu_629_p2 = (zext_ln15_fu_566_p1 + 7'd3);
assign add_ln25_3_fu_998_p2 = (prev_1_reg_1412 + 6'd4);
assign add_ln25_fu_590_p2 = (ap_sig_allocacmp_prev_1 + 6'd1);
assign add_ln26_fu_824_p2 = (empty + zext_ln26_3_fu_821_p1);
assign add_ln27_1_fu_609_p3 = {{add_ln25_fu_590_p2}, {lshr_ln}};
assign add_ln27_2_fu_802_p3 = {{add_ln25_1_fu_785_p2}, {lshr_ln}};
assign add_ln27_3_fu_837_p3 = {{trunc_ln27_fu_834_p1}, {lshr_ln}};
assign add_ln_fu_570_p3 = {{ap_sig_allocacmp_prev_1}, {lshr_ln}};
assign and_ln29_1_fu_1088_p2 = (or_ln29_1_fu_1076_p2 & and_ln29_fu_1082_p2);
assign and_ln29_2_fu_1170_p2 = (or_ln29_3_fu_1164_p2 & or_ln29_2_fu_1146_p2);
assign and_ln29_3_fu_1176_p2 = (grp_fu_1926_p_dout0 & and_ln29_2_fu_1170_p2);
assign and_ln29_4_fu_1258_p2 = (or_ln29_5_fu_1252_p2 & or_ln29_4_fu_1234_p2);
assign and_ln29_5_fu_1264_p2 = (grp_fu_1926_p_dout0 & and_ln29_4_fu_1258_p2);
assign and_ln29_6_fu_1347_p2 = (or_ln29_7_fu_1341_p2 & or_ln29_6_fu_1323_p2);
assign and_ln29_7_fu_1353_p2 = (tmp_25_reg_1739 & and_ln29_6_fu_1347_p2);
assign and_ln29_fu_1082_p2 = (or_ln29_fu_1058_p2 & grp_fu_1926_p_dout0);
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
assign bitcast_ln29_1_fu_1029_p1 = min_p_7_reg_1675;
assign bitcast_ln29_2_fu_1100_p1 = p_2_reg_1687;
assign bitcast_ln29_3_fu_1117_p1 = min_p_9_reg_1694;
assign bitcast_ln29_4_fu_1188_p1 = p_3_reg_1701;
assign bitcast_ln29_5_fu_1205_p1 = min_p_11_reg_1720;
assign bitcast_ln29_6_fu_1277_p1 = p_4_reg_1713;
assign bitcast_ln29_7_fu_1294_p1 = min_p_13_reg_1732;
assign bitcast_ln29_fu_1012_p1 = p_reg_1668;
assign grp_fu_1926_p_ce = 1'b1;
assign grp_fu_1926_p_din0 = grp_fu_536_p0;
assign grp_fu_1926_p_din1 = grp_fu_536_p1;
assign grp_fu_1926_p_opcode = 5'd4;
assign grp_fu_921_p_ce = 1'b1;
assign grp_fu_921_p_din0 = grp_fu_532_p0;
assign grp_fu_921_p_din1 = grp_fu_532_p1;
assign grp_fu_921_p_opcode = 2'd0;
assign icmp_ln29_10_fu_1240_p2 = ((tmp_21_fu_1208_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_11_fu_1246_p2 = ((trunc_ln29_5_fu_1218_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_12_fu_1311_p2 = ((tmp_23_fu_1280_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_13_fu_1317_p2 = ((trunc_ln29_6_fu_1290_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_14_fu_1329_p2 = ((tmp_24_fu_1297_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_15_fu_1335_p2 = ((trunc_ln29_7_fu_1307_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_1052_p2 = ((trunc_ln29_fu_1025_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_1064_p2 = ((tmp_13_fu_1032_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_1070_p2 = ((trunc_ln29_1_fu_1042_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_1134_p2 = ((tmp_16_fu_1103_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_1140_p2 = ((trunc_ln29_2_fu_1113_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_1152_p2 = ((tmp_17_fu_1120_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_1158_p2 = ((trunc_ln29_3_fu_1130_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_8_fu_1222_p2 = ((tmp_20_fu_1191_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_9_fu_1228_p2 = ((trunc_ln29_4_fu_1201_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_1046_p2 = ((tmp_11_fu_1015_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_address0 = llike_address0_local;
assign llike_address1 = llike_address1_local;
assign llike_ce0 = llike_ce0_local;
assign llike_ce1 = llike_ce1_local;
assign min_p_11_fu_1182_p3 = ((and_ln29_3_reg_1708[0:0] == 1'b1) ? p_2_reg_1687 : min_p_9_reg_1694);
assign min_p_13_fu_1270_p3 = ((and_ln29_5_reg_1727[0:0] == 1'b1) ? p_3_reg_1701 : min_p_11_reg_1720);
assign min_p_14_out = ((and_ln29_5_reg_1727[0:0] == 1'b1) ? p_3_reg_1701 : min_p_11_reg_1720);
assign min_p_15_fu_1358_p3 = ((and_ln29_7_fu_1353_p2[0:0] == 1'b1) ? p_4_reg_1713 : min_p_13_reg_1732);
assign min_p_9_fu_1094_p3 = ((and_ln29_1_reg_1682[0:0] == 1'b1) ? p_reg_1668 : min_p_7_reg_1675);
assign or_ln29_1_fu_1076_p2 = (icmp_ln29_3_fu_1070_p2 | icmp_ln29_2_fu_1064_p2);
assign or_ln29_2_fu_1146_p2 = (icmp_ln29_5_fu_1140_p2 | icmp_ln29_4_fu_1134_p2);
assign or_ln29_3_fu_1164_p2 = (icmp_ln29_7_fu_1158_p2 | icmp_ln29_6_fu_1152_p2);
assign or_ln29_4_fu_1234_p2 = (icmp_ln29_9_fu_1228_p2 | icmp_ln29_8_fu_1222_p2);
assign or_ln29_5_fu_1252_p2 = (icmp_ln29_11_fu_1246_p2 | icmp_ln29_10_fu_1240_p2);
assign or_ln29_6_fu_1323_p2 = (icmp_ln29_13_fu_1317_p2 | icmp_ln29_12_fu_1311_p2);
assign or_ln29_7_fu_1341_p2 = (icmp_ln29_15_fu_1335_p2 | icmp_ln29_14_fu_1329_p2);
assign or_ln29_fu_1058_p2 = (icmp_ln29_fu_1046_p2 | icmp_ln29_1_fu_1052_p2);
assign tmp_10_fu_553_p3 = {{empty_9}, {ap_sig_allocacmp_prev_1}};
assign tmp_11_fu_1015_p4 = {{bitcast_ln29_fu_1012_p1[62:52]}};
assign tmp_12_fu_959_p10 = transition_4_q0;
assign tmp_12_fu_959_p12 = transition_5_q0;
assign tmp_12_fu_959_p14 = transition_6_q0;
assign tmp_12_fu_959_p16 = transition_7_q0;
assign tmp_12_fu_959_p17 = 'bx;
assign tmp_12_fu_959_p2 = transition_0_q0;
assign tmp_12_fu_959_p4 = transition_1_q0;
assign tmp_12_fu_959_p6 = transition_2_q0;
assign tmp_12_fu_959_p8 = transition_3_q0;
assign tmp_13_fu_1032_p4 = {{bitcast_ln29_1_fu_1029_p1[62:52]}};
assign tmp_15_fu_596_p3 = {{empty_9}, {add_ln25_fu_590_p2}};
assign tmp_16_fu_1103_p4 = {{bitcast_ln29_2_fu_1100_p1[62:52]}};
assign tmp_17_fu_1120_p4 = {{bitcast_ln29_3_fu_1117_p1[62:52]}};
assign tmp_19_fu_790_p3 = {{empty_9}, {add_ln25_1_fu_785_p2}};
assign tmp_20_fu_1191_p4 = {{bitcast_ln29_4_fu_1188_p1[62:52]}};
assign tmp_21_fu_1208_p4 = {{bitcast_ln29_5_fu_1205_p1[62:52]}};
assign tmp_23_fu_1280_p4 = {{bitcast_ln29_6_fu_1277_p1[62:52]}};
assign tmp_24_fu_1297_p4 = {{bitcast_ln29_7_fu_1294_p1[62:52]}};
assign tmp_2_fu_675_p10 = transition_4_q1;
assign tmp_2_fu_675_p12 = transition_5_q1;
assign tmp_2_fu_675_p14 = transition_6_q1;
assign tmp_2_fu_675_p16 = transition_7_q1;
assign tmp_2_fu_675_p17 = 'bx;
assign tmp_2_fu_675_p2 = transition_0_q1;
assign tmp_2_fu_675_p4 = transition_1_q1;
assign tmp_2_fu_675_p6 = transition_2_q1;
assign tmp_2_fu_675_p8 = transition_3_q1;
assign tmp_4_fu_746_p10 = transition_4_q0;
assign tmp_4_fu_746_p12 = transition_5_q0;
assign tmp_4_fu_746_p14 = transition_6_q0;
assign tmp_4_fu_746_p16 = transition_7_q0;
assign tmp_4_fu_746_p17 = 'bx;
assign tmp_4_fu_746_p2 = transition_0_q0;
assign tmp_4_fu_746_p4 = transition_1_q0;
assign tmp_4_fu_746_p6 = transition_2_q0;
assign tmp_4_fu_746_p8 = transition_3_q0;
assign tmp_6_fu_888_p10 = transition_4_q1;
assign tmp_6_fu_888_p12 = transition_5_q1;
assign tmp_6_fu_888_p14 = transition_6_q1;
assign tmp_6_fu_888_p16 = transition_7_q1;
assign tmp_6_fu_888_p17 = 'bx;
assign tmp_6_fu_888_p2 = transition_0_q1;
assign tmp_6_fu_888_p4 = transition_1_q1;
assign tmp_6_fu_888_p6 = transition_2_q1;
assign tmp_6_fu_888_p8 = transition_3_q1;
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
assign trunc_ln27_fu_834_p1 = add_ln25_2_reg_1508[5:0];
assign trunc_ln29_1_fu_1042_p1 = bitcast_ln29_1_fu_1029_p1[51:0];
assign trunc_ln29_2_fu_1113_p1 = bitcast_ln29_2_fu_1100_p1[51:0];
assign trunc_ln29_3_fu_1130_p1 = bitcast_ln29_3_fu_1117_p1[51:0];
assign trunc_ln29_4_fu_1201_p1 = bitcast_ln29_4_fu_1188_p1[51:0];
assign trunc_ln29_5_fu_1218_p1 = bitcast_ln29_5_fu_1205_p1[51:0];
assign trunc_ln29_6_fu_1290_p1 = bitcast_ln29_6_fu_1277_p1[51:0];
assign trunc_ln29_7_fu_1307_p1 = bitcast_ln29_7_fu_1294_p1[51:0];
assign trunc_ln29_fu_1025_p1 = bitcast_ln29_fu_1012_p1[51:0];
assign zext_ln15_fu_566_p1 = ap_sig_allocacmp_prev_1;
assign zext_ln26_1_fu_604_p1 = tmp_15_fu_596_p3;
assign zext_ln26_2_fu_797_p1 = tmp_19_fu_790_p3;
assign zext_ln26_3_fu_821_p1 = add_ln25_2_reg_1508;
assign zext_ln26_4_fu_829_p1 = add_ln26_fu_824_p2;
assign zext_ln26_fu_561_p1 = tmp_10_fu_553_p3;
assign zext_ln27_1_fu_617_p1 = add_ln27_1_fu_609_p3;
assign zext_ln27_2_fu_809_p1 = add_ln27_2_fu_802_p3;
assign zext_ln27_3_fu_844_p1 = add_ln27_3_fu_837_p3;
assign zext_ln27_fu_578_p1 = add_ln_fu_570_p3;
endmodule 