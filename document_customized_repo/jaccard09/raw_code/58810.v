module viterbi_viterbi_Pipeline_L_prev_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_66,empty_9,llike_address0,llike_ce0,llike_q0,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,llike_4_address0,llike_4_ce0,llike_4_q0,llike_5_address0,llike_5_ce0,llike_5_q0,llike_6_address0,llike_6_ce0,llike_6_q0,llike_7_address0,llike_7_ce0,llike_7_q0,lshr_ln,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,empty_10,tmp_5,empty,min_p_74_out,min_p_74_out_ap_vld,grp_fu_728_p_din0,grp_fu_728_p_din1,grp_fu_728_p_opcode,grp_fu_728_p_dout0,grp_fu_728_p_ce,grp_fu_1497_p_din0,grp_fu_1497_p_din1,grp_fu_1497_p_opcode,grp_fu_1497_p_dout0,grp_fu_1497_p_ce); 
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
input  [63:0] min_p_66;
input  [7:0] empty_9;
output  [10:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [10:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [10:0] llike_2_address0;
output   llike_2_ce0;
input  [63:0] llike_2_q0;
output  [10:0] llike_3_address0;
output   llike_3_ce0;
input  [63:0] llike_3_q0;
output  [10:0] llike_4_address0;
output   llike_4_ce0;
input  [63:0] llike_4_q0;
output  [10:0] llike_5_address0;
output   llike_5_ce0;
input  [63:0] llike_5_q0;
output  [10:0] llike_6_address0;
output   llike_6_ce0;
input  [63:0] llike_6_q0;
output  [10:0] llike_7_address0;
output   llike_7_ce0;
input  [63:0] llike_7_q0;
input  [3:0] lshr_ln;
output  [9:0] transition_0_address0;
output   transition_0_ce0;
input  [63:0] transition_0_q0;
output  [9:0] transition_0_address1;
output   transition_0_ce1;
input  [63:0] transition_0_q1;
output  [9:0] transition_1_address0;
output   transition_1_ce0;
input  [63:0] transition_1_q0;
output  [9:0] transition_1_address1;
output   transition_1_ce1;
input  [63:0] transition_1_q1;
output  [9:0] transition_2_address0;
output   transition_2_ce0;
input  [63:0] transition_2_q0;
output  [9:0] transition_2_address1;
output   transition_2_ce1;
input  [63:0] transition_2_q1;
output  [9:0] transition_3_address0;
output   transition_3_ce0;
input  [63:0] transition_3_q0;
output  [9:0] transition_3_address1;
output   transition_3_ce1;
input  [63:0] transition_3_q1;
input  [1:0] empty_10;
input  [63:0] tmp_5;
input  [10:0] empty;
output  [63:0] min_p_74_out;
output   min_p_74_out_ap_vld;
output  [63:0] grp_fu_728_p_din0;
output  [63:0] grp_fu_728_p_din1;
output  [1:0] grp_fu_728_p_opcode;
input  [63:0] grp_fu_728_p_dout0;
output   grp_fu_728_p_ce;
output  [63:0] grp_fu_1497_p_din0;
output  [63:0] grp_fu_1497_p_din1;
output  [4:0] grp_fu_1497_p_opcode;
input  [0:0] grp_fu_1497_p_dout0;
output   grp_fu_1497_p_ce;
reg ap_idle;
reg min_p_74_out_ap_vld;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] tmp_163_reg_1563;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] prev_1_reg_1459;
wire   [2:0] trunc_ln16_fu_556_p1;
reg   [2:0] trunc_ln16_reg_1464;
reg   [5:0] tmp_162_reg_1552;
wire   [6:0] add_ln25_fu_662_p2;
reg   [6:0] add_ln25_reg_1557;
reg   [0:0] tmp_163_reg_1563_pp0_iter1_reg;
reg   [0:0] tmp_163_reg_1563_pp0_iter2_reg;
reg   [0:0] tmp_163_reg_1563_pp0_iter3_reg;
wire   [63:0] tmp_6_fu_676_p19;
reg   [63:0] tmp_6_reg_1567;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_7_fu_731_p11;
reg   [63:0] tmp_7_reg_1572;
wire   [63:0] tmp_8_fu_754_p19;
reg   [63:0] tmp_8_reg_1577;
wire   [63:0] tmp_9_fu_809_p11;
reg   [63:0] tmp_9_reg_1582;
wire   [63:0] tmp_10_fu_832_p19;
reg   [63:0] tmp_10_reg_1587;
wire   [63:0] tmp_11_fu_949_p11;
reg   [63:0] tmp_11_reg_1672;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_14_fu_972_p19;
reg   [63:0] tmp_14_reg_1677;
wire   [63:0] tmp_15_fu_1027_p11;
reg   [63:0] tmp_15_reg_1682;
reg   [63:0] add1_reg_1687;
reg   [63:0] add52_1_reg_1692;
reg   [63:0] add52_2_reg_1697;
reg   [63:0] add52_3_reg_1702;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] p_reg_1707;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] min_p_67_reg_1714;
wire   [0:0] and_ln29_1_fu_1140_p2;
reg   [0:0] and_ln29_1_reg_1721;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] p_32_reg_1726;
wire   [63:0] min_p_69_fu_1146_p3;
reg   [63:0] min_p_69_reg_1733;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] p_33_reg_1740;
wire   [0:0] and_ln29_3_fu_1228_p2;
reg   [0:0] and_ln29_3_reg_1747;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] p_34_reg_1752;
wire   [63:0] min_p_71_fu_1234_p3;
reg   [63:0] min_p_71_reg_1759;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] and_ln29_5_fu_1316_p2;
reg   [0:0] and_ln29_5_reg_1766;
wire   [63:0] min_p_73_fu_1322_p3;
reg   [63:0] min_p_73_reg_1771;
reg   [0:0] tmp_160_reg_1778;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter3_stage0;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln26_fu_578_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_606_p1;
wire   [63:0] zext_ln27_1_fu_638_p1;
wire   [63:0] zext_ln27_2_fu_877_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln26_2_fu_903_p1;
wire   [63:0] zext_ln27_3_fu_925_p1;
reg   [63:0] min_p_fu_148;
wire   [63:0] min_p_75_fu_1410_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage3;
reg   [5:0] prev_fu_152;
wire   [5:0] add_ln25_1_fu_1050_p2;
reg   [5:0] ap_sig_allocacmp_prev_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
wire    ap_block_pp0_stage0_01001;
reg    llike_ce0_local;
reg   [10:0] llike_address0_local;
reg    llike_1_ce0_local;
reg   [10:0] llike_1_address0_local;
reg    llike_2_ce0_local;
reg   [10:0] llike_2_address0_local;
reg    llike_3_ce0_local;
reg   [10:0] llike_3_address0_local;
reg    llike_4_ce0_local;
reg   [10:0] llike_4_address0_local;
reg    llike_5_ce0_local;
reg   [10:0] llike_5_address0_local;
reg    llike_6_ce0_local;
reg   [10:0] llike_6_address0_local;
reg    llike_7_ce0_local;
reg   [10:0] llike_7_address0_local;
reg    transition_0_ce1_local;
reg   [9:0] transition_0_address1_local;
reg    transition_0_ce0_local;
reg   [9:0] transition_0_address0_local;
reg    transition_1_ce1_local;
reg   [9:0] transition_1_address1_local;
reg    transition_1_ce0_local;
reg   [9:0] transition_1_address0_local;
reg    transition_2_ce1_local;
reg   [9:0] transition_2_address1_local;
reg    transition_2_ce0_local;
reg   [9:0] transition_2_address0_local;
reg    transition_3_ce1_local;
reg   [9:0] transition_3_address1_local;
reg    transition_3_ce0_local;
reg   [9:0] transition_3_address0_local;
reg   [63:0] grp_fu_531_p0;
reg   [63:0] grp_fu_531_p1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
reg   [63:0] grp_fu_535_p0;
reg   [63:0] grp_fu_535_p1;
wire   [2:0] lshr_ln7_1_fu_560_p4;
wire   [10:0] tmp_s_fu_570_p3;
wire   [9:0] add_ln_fu_598_p3;
wire   [9:0] shl_ln1_fu_590_p3;
wire   [9:0] add_ln27_fu_614_p2;
wire   [5:0] tmp_161_fu_620_p4;
wire   [9:0] add_ln27_2_fu_630_p3;
wire   [9:0] add_ln27_1_fu_646_p2;
wire   [6:0] zext_ln16_fu_552_p1;
wire   [63:0] tmp_6_fu_676_p17;
wire   [63:0] tmp_7_fu_731_p2;
wire   [63:0] tmp_7_fu_731_p4;
wire   [63:0] tmp_7_fu_731_p6;
wire   [63:0] tmp_7_fu_731_p8;
wire   [63:0] tmp_7_fu_731_p9;
wire   [63:0] tmp_8_fu_754_p17;
wire   [63:0] tmp_9_fu_809_p2;
wire   [63:0] tmp_9_fu_809_p4;
wire   [63:0] tmp_9_fu_809_p6;
wire   [63:0] tmp_9_fu_809_p8;
wire   [63:0] tmp_9_fu_809_p9;
wire   [63:0] tmp_10_fu_832_p17;
wire   [9:0] add_ln27_4_fu_871_p3;
wire   [3:0] lshr_ln8_s_fu_885_p4;
wire   [10:0] zext_ln26_1_fu_894_p1;
wire   [10:0] add_ln26_fu_898_p2;
wire   [5:0] trunc_ln27_fu_915_p1;
wire   [9:0] add_ln27_5_fu_918_p3;
wire   [63:0] tmp_11_fu_949_p2;
wire   [63:0] tmp_11_fu_949_p4;
wire   [63:0] tmp_11_fu_949_p6;
wire   [63:0] tmp_11_fu_949_p8;
wire   [63:0] tmp_11_fu_949_p9;
wire   [63:0] tmp_14_fu_972_p17;
wire   [63:0] tmp_15_fu_1027_p2;
wire   [63:0] tmp_15_fu_1027_p4;
wire   [63:0] tmp_15_fu_1027_p6;
wire   [63:0] tmp_15_fu_1027_p8;
wire   [63:0] tmp_15_fu_1027_p9;
wire   [63:0] bitcast_ln29_fu_1064_p1;
wire   [63:0] bitcast_ln29_1_fu_1081_p1;
wire   [10:0] tmp_146_fu_1067_p4;
wire   [51:0] trunc_ln29_fu_1077_p1;
wire   [0:0] icmp_ln29_1_fu_1104_p2;
wire   [0:0] icmp_ln29_fu_1098_p2;
wire   [10:0] tmp_147_fu_1084_p4;
wire   [51:0] trunc_ln29_1_fu_1094_p1;
wire   [0:0] icmp_ln29_3_fu_1122_p2;
wire   [0:0] icmp_ln29_2_fu_1116_p2;
wire   [0:0] or_ln29_fu_1110_p2;
wire   [0:0] and_ln29_fu_1134_p2;
wire   [0:0] or_ln29_1_fu_1128_p2;
wire   [63:0] bitcast_ln29_2_fu_1152_p1;
wire   [63:0] bitcast_ln29_3_fu_1169_p1;
wire   [10:0] tmp_150_fu_1155_p4;
wire   [51:0] trunc_ln29_2_fu_1165_p1;
wire   [0:0] icmp_ln29_5_fu_1192_p2;
wire   [0:0] icmp_ln29_4_fu_1186_p2;
wire   [10:0] tmp_151_fu_1172_p4;
wire   [51:0] trunc_ln29_3_fu_1182_p1;
wire   [0:0] icmp_ln29_7_fu_1210_p2;
wire   [0:0] icmp_ln29_6_fu_1204_p2;
wire   [0:0] or_ln29_3_fu_1216_p2;
wire   [0:0] or_ln29_2_fu_1198_p2;
wire   [0:0] and_ln29_2_fu_1222_p2;
wire   [63:0] bitcast_ln29_4_fu_1240_p1;
wire   [63:0] bitcast_ln29_5_fu_1257_p1;
wire   [10:0] tmp_154_fu_1243_p4;
wire   [51:0] trunc_ln29_4_fu_1253_p1;
wire   [0:0] icmp_ln29_9_fu_1280_p2;
wire   [0:0] icmp_ln29_8_fu_1274_p2;
wire   [10:0] tmp_155_fu_1260_p4;
wire   [51:0] trunc_ln29_5_fu_1270_p1;
wire   [0:0] icmp_ln29_11_fu_1298_p2;
wire   [0:0] icmp_ln29_10_fu_1292_p2;
wire   [0:0] or_ln29_5_fu_1304_p2;
wire   [0:0] or_ln29_4_fu_1286_p2;
wire   [0:0] and_ln29_4_fu_1310_p2;
wire   [63:0] bitcast_ln29_6_fu_1329_p1;
wire   [63:0] bitcast_ln29_7_fu_1346_p1;
wire   [10:0] tmp_158_fu_1332_p4;
wire   [51:0] trunc_ln29_6_fu_1342_p1;
wire   [0:0] icmp_ln29_13_fu_1369_p2;
wire   [0:0] icmp_ln29_12_fu_1363_p2;
wire   [10:0] tmp_159_fu_1349_p4;
wire   [51:0] trunc_ln29_7_fu_1359_p1;
wire   [0:0] icmp_ln29_15_fu_1387_p2;
wire   [0:0] icmp_ln29_14_fu_1381_p2;
wire   [0:0] or_ln29_7_fu_1393_p2;
wire   [0:0] or_ln29_6_fu_1375_p2;
wire   [0:0] and_ln29_6_fu_1399_p2;
wire   [0:0] and_ln29_7_fu_1405_p2;
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
wire   [2:0] tmp_6_fu_676_p1;
wire   [2:0] tmp_6_fu_676_p3;
wire   [2:0] tmp_6_fu_676_p5;
wire   [2:0] tmp_6_fu_676_p7;
wire  signed [2:0] tmp_6_fu_676_p9;
wire  signed [2:0] tmp_6_fu_676_p11;
wire  signed [2:0] tmp_6_fu_676_p13;
wire  signed [2:0] tmp_6_fu_676_p15;
wire   [1:0] tmp_7_fu_731_p1;
wire   [1:0] tmp_7_fu_731_p3;
wire  signed [1:0] tmp_7_fu_731_p5;
wire  signed [1:0] tmp_7_fu_731_p7;
wire  signed [2:0] tmp_8_fu_754_p1;
wire   [2:0] tmp_8_fu_754_p3;
wire   [2:0] tmp_8_fu_754_p5;
wire   [2:0] tmp_8_fu_754_p7;
wire   [2:0] tmp_8_fu_754_p9;
wire  signed [2:0] tmp_8_fu_754_p11;
wire  signed [2:0] tmp_8_fu_754_p13;
wire  signed [2:0] tmp_8_fu_754_p15;
wire   [1:0] tmp_9_fu_809_p1;
wire   [1:0] tmp_9_fu_809_p3;
wire  signed [1:0] tmp_9_fu_809_p5;
wire  signed [1:0] tmp_9_fu_809_p7;
wire  signed [2:0] tmp_10_fu_832_p1;
wire  signed [2:0] tmp_10_fu_832_p3;
wire   [2:0] tmp_10_fu_832_p5;
wire   [2:0] tmp_10_fu_832_p7;
wire   [2:0] tmp_10_fu_832_p9;
wire   [2:0] tmp_10_fu_832_p11;
wire  signed [2:0] tmp_10_fu_832_p13;
wire  signed [2:0] tmp_10_fu_832_p15;
wire   [1:0] tmp_11_fu_949_p1;
wire   [1:0] tmp_11_fu_949_p3;
wire  signed [1:0] tmp_11_fu_949_p5;
wire  signed [1:0] tmp_11_fu_949_p7;
wire  signed [2:0] tmp_14_fu_972_p1;
wire  signed [2:0] tmp_14_fu_972_p3;
wire  signed [2:0] tmp_14_fu_972_p5;
wire   [2:0] tmp_14_fu_972_p7;
wire   [2:0] tmp_14_fu_972_p9;
wire   [2:0] tmp_14_fu_972_p11;
wire   [2:0] tmp_14_fu_972_p13;
wire  signed [2:0] tmp_14_fu_972_p15;
wire   [1:0] tmp_15_fu_1027_p1;
wire   [1:0] tmp_15_fu_1027_p3;
wire  signed [1:0] tmp_15_fu_1027_p5;
wire  signed [1:0] tmp_15_fu_1027_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_148 = 64'd0;
#0 prev_fu_152 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U30(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.def(tmp_6_fu_676_p17),.sel(trunc_ln16_reg_1464),.dout(tmp_6_fu_676_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U31(.din0(tmp_7_fu_731_p2),.din1(tmp_7_fu_731_p4),.din2(tmp_7_fu_731_p6),.din3(tmp_7_fu_731_p8),.def(tmp_7_fu_731_p9),.sel(empty_10),.dout(tmp_7_fu_731_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.CASE7( 3'h6 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U32(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.def(tmp_8_fu_754_p17),.sel(trunc_ln16_reg_1464),.dout(tmp_8_fu_754_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U33(.din0(tmp_9_fu_809_p2),.din1(tmp_9_fu_809_p4),.din2(tmp_9_fu_809_p6),.din3(tmp_9_fu_809_p8),.def(tmp_9_fu_809_p9),.sel(empty_10),.dout(tmp_9_fu_809_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h7 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.CASE7( 3'h5 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U34(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.def(tmp_10_fu_832_p17),.sel(trunc_ln16_reg_1464),.dout(tmp_10_fu_832_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U35(.din0(tmp_11_fu_949_p2),.din1(tmp_11_fu_949_p4),.din2(tmp_11_fu_949_p6),.din3(tmp_11_fu_949_p8),.def(tmp_11_fu_949_p9),.sel(empty_10),.dout(tmp_11_fu_949_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h7 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.CASE5( 3'h2 ),.din5_WIDTH( 64 ),.CASE6( 3'h3 ),.din6_WIDTH( 64 ),.CASE7( 3'h4 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U36(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.def(tmp_14_fu_972_p17),.sel(trunc_ln16_reg_1464),.dout(tmp_14_fu_972_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U37(.din0(tmp_15_fu_1027_p2),.din1(tmp_15_fu_1027_p4),.din2(tmp_15_fu_1027_p6),.din3(tmp_15_fu_1027_p8),.def(tmp_15_fu_1027_p9),.sel(empty_10),.dout(tmp_15_fu_1027_p11));
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_fu_148 <= min_p_66;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (tmp_163_reg_1563_pp0_iter3_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        min_p_fu_148 <= min_p_75_fu_1410_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prev_fu_152 <= 6'd1;
    end else if (((tmp_163_reg_1563 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        prev_fu_152 <= add_ln25_1_fu_1050_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add1_reg_1687 <= grp_fu_728_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add52_1_reg_1692 <= grp_fu_728_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add52_2_reg_1697 <= grp_fu_728_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add52_3_reg_1702 <= grp_fu_728_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln25_reg_1557 <= add_ln25_fu_662_p2;
        prev_1_reg_1459 <= ap_sig_allocacmp_prev_1;
        tmp_162_reg_1552 <= {{add_ln27_1_fu_646_p2[9:4]}};
        tmp_163_reg_1563 <= add_ln25_fu_662_p2[32'd6];
        tmp_163_reg_1563_pp0_iter1_reg <= tmp_163_reg_1563;
        tmp_163_reg_1563_pp0_iter2_reg <= tmp_163_reg_1563_pp0_iter1_reg;
        tmp_163_reg_1563_pp0_iter3_reg <= tmp_163_reg_1563_pp0_iter2_reg;
        trunc_ln16_reg_1464 <= trunc_ln16_fu_556_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln29_1_reg_1721 <= and_ln29_1_fu_1140_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln29_3_reg_1747 <= and_ln29_3_fu_1228_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        and_ln29_5_reg_1766 <= and_ln29_5_fu_1316_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_67_reg_1714 <= min_p_fu_148;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_69_reg_1733 <= min_p_69_fu_1146_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_71_reg_1759 <= min_p_71_fu_1234_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_73_reg_1771 <= min_p_73_fu_1322_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        p_32_reg_1726 <= grp_fu_728_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        p_33_reg_1740 <= grp_fu_728_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        p_34_reg_1752 <= grp_fu_728_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        p_reg_1707 <= grp_fu_728_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_10_reg_1587 <= tmp_10_fu_832_p19;
        tmp_6_reg_1567 <= tmp_6_fu_676_p19;
        tmp_7_reg_1572 <= tmp_7_fu_731_p11;
        tmp_8_reg_1577 <= tmp_8_fu_754_p19;
        tmp_9_reg_1582 <= tmp_9_fu_809_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_11_reg_1672 <= tmp_11_fu_949_p11;
        tmp_14_reg_1677 <= tmp_14_fu_972_p19;
        tmp_15_reg_1682 <= tmp_15_fu_1027_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_160_reg_1778 <= grp_fu_1497_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_163_reg_1563 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (tmp_163_reg_1563_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_prev_1 = 6'd1;
    end else begin
        ap_sig_allocacmp_prev_1 = prev_fu_152;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_531_p0 = add52_3_reg_1702;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_531_p0 = add52_2_reg_1697;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_531_p0 = add52_1_reg_1692;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_531_p0 = add1_reg_1687;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_531_p0 = tmp_14_reg_1677;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_531_p0 = tmp_10_reg_1587;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_531_p0 = tmp_8_reg_1577;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_531_p0 = tmp_6_reg_1567;
    end else begin
        grp_fu_531_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_531_p1 = tmp_5;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_531_p1 = tmp_15_reg_1682;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_531_p1 = tmp_11_reg_1672;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_531_p1 = tmp_9_reg_1582;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_531_p1 = tmp_7_reg_1572;
    end else begin
        grp_fu_531_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_535_p0 = p_34_reg_1752;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_535_p0 = p_33_reg_1740;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_535_p0 = p_32_reg_1726;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_535_p0 = p_reg_1707;
    end else begin
        grp_fu_535_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_535_p1 = min_p_73_fu_1322_p3;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_535_p1 = min_p_71_fu_1234_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_535_p1 = min_p_69_fu_1146_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_535_p1 = min_p_fu_148;
    end else begin
        grp_fu_535_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address0_local = zext_ln26_2_fu_903_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln26_fu_578_p1;
        end else begin
            llike_1_address0_local = 'bx;
        end
    end else begin
        llike_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_2_address0_local = zext_ln26_2_fu_903_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_2_address0_local = zext_ln26_fu_578_p1;
        end else begin
            llike_2_address0_local = 'bx;
        end
    end else begin
        llike_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_3_address0_local = zext_ln26_2_fu_903_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_3_address0_local = zext_ln26_fu_578_p1;
        end else begin
            llike_3_address0_local = 'bx;
        end
    end else begin
        llike_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_4_address0_local = zext_ln26_2_fu_903_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_4_address0_local = zext_ln26_fu_578_p1;
        end else begin
            llike_4_address0_local = 'bx;
        end
    end else begin
        llike_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_4_ce0_local = 1'b1;
    end else begin
        llike_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_5_address0_local = zext_ln26_2_fu_903_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_5_address0_local = zext_ln26_fu_578_p1;
        end else begin
            llike_5_address0_local = 'bx;
        end
    end else begin
        llike_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_5_ce0_local = 1'b1;
    end else begin
        llike_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_6_address0_local = zext_ln26_2_fu_903_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_6_address0_local = zext_ln26_fu_578_p1;
        end else begin
            llike_6_address0_local = 'bx;
        end
    end else begin
        llike_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_6_ce0_local = 1'b1;
    end else begin
        llike_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_7_address0_local = zext_ln26_2_fu_903_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_7_address0_local = zext_ln26_fu_578_p1;
        end else begin
            llike_7_address0_local = 'bx;
        end
    end else begin
        llike_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_7_ce0_local = 1'b1;
    end else begin
        llike_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln26_2_fu_903_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln26_fu_578_p1;
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
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (tmp_163_reg_1563_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_74_out_ap_vld = 1'b1;
    end else begin
        min_p_74_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln27_3_fu_925_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln27_1_fu_638_p1;
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
            transition_0_address1_local = zext_ln27_2_fu_877_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address1_local = zext_ln27_fu_606_p1;
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
            transition_1_address0_local = zext_ln27_3_fu_925_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln27_1_fu_638_p1;
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
            transition_1_address1_local = zext_ln27_2_fu_877_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address1_local = zext_ln27_fu_606_p1;
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
            transition_2_address0_local = zext_ln27_3_fu_925_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address0_local = zext_ln27_1_fu_638_p1;
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
            transition_2_address1_local = zext_ln27_2_fu_877_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address1_local = zext_ln27_fu_606_p1;
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
            transition_3_address0_local = zext_ln27_3_fu_925_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address0_local = zext_ln27_1_fu_638_p1;
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
            transition_3_address1_local = zext_ln27_2_fu_877_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address1_local = zext_ln27_fu_606_p1;
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
assign add_ln25_1_fu_1050_p2 = (prev_1_reg_1459 + 6'd4);
assign add_ln25_fu_662_p2 = (zext_ln16_fu_552_p1 + 7'd3);
assign add_ln26_fu_898_p2 = (empty + zext_ln26_1_fu_894_p1);
assign add_ln27_1_fu_646_p2 = (shl_ln1_fu_590_p3 + 10'd32);
assign add_ln27_2_fu_630_p3 = {{tmp_161_fu_620_p4}, {lshr_ln}};
assign add_ln27_4_fu_871_p3 = {{tmp_162_reg_1552}, {lshr_ln}};
assign add_ln27_5_fu_918_p3 = {{trunc_ln27_fu_915_p1}, {lshr_ln}};
assign add_ln27_fu_614_p2 = (shl_ln1_fu_590_p3 + 10'd16);
assign add_ln_fu_598_p3 = {{ap_sig_allocacmp_prev_1}, {lshr_ln}};
assign and_ln29_1_fu_1140_p2 = (or_ln29_1_fu_1128_p2 & and_ln29_fu_1134_p2);
assign and_ln29_2_fu_1222_p2 = (or_ln29_3_fu_1216_p2 & or_ln29_2_fu_1198_p2);
assign and_ln29_3_fu_1228_p2 = (grp_fu_1497_p_dout0 & and_ln29_2_fu_1222_p2);
assign and_ln29_4_fu_1310_p2 = (or_ln29_5_fu_1304_p2 & or_ln29_4_fu_1286_p2);
assign and_ln29_5_fu_1316_p2 = (grp_fu_1497_p_dout0 & and_ln29_4_fu_1310_p2);
assign and_ln29_6_fu_1399_p2 = (or_ln29_7_fu_1393_p2 & or_ln29_6_fu_1375_p2);
assign and_ln29_7_fu_1405_p2 = (tmp_160_reg_1778 & and_ln29_6_fu_1399_p2);
assign and_ln29_fu_1134_p2 = (or_ln29_fu_1110_p2 & grp_fu_1497_p_dout0);
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
assign bitcast_ln29_1_fu_1081_p1 = min_p_67_reg_1714;
assign bitcast_ln29_2_fu_1152_p1 = p_32_reg_1726;
assign bitcast_ln29_3_fu_1169_p1 = min_p_69_reg_1733;
assign bitcast_ln29_4_fu_1240_p1 = p_33_reg_1740;
assign bitcast_ln29_5_fu_1257_p1 = min_p_71_reg_1759;
assign bitcast_ln29_6_fu_1329_p1 = p_34_reg_1752;
assign bitcast_ln29_7_fu_1346_p1 = min_p_73_reg_1771;
assign bitcast_ln29_fu_1064_p1 = p_reg_1707;
assign grp_fu_1497_p_ce = 1'b1;
assign grp_fu_1497_p_din0 = grp_fu_535_p0;
assign grp_fu_1497_p_din1 = grp_fu_535_p1;
assign grp_fu_1497_p_opcode = 5'd4;
assign grp_fu_728_p_ce = 1'b1;
assign grp_fu_728_p_din0 = grp_fu_531_p0;
assign grp_fu_728_p_din1 = grp_fu_531_p1;
assign grp_fu_728_p_opcode = 2'd0;
assign icmp_ln29_10_fu_1292_p2 = ((tmp_155_fu_1260_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_11_fu_1298_p2 = ((trunc_ln29_5_fu_1270_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_12_fu_1363_p2 = ((tmp_158_fu_1332_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_13_fu_1369_p2 = ((trunc_ln29_6_fu_1342_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_14_fu_1381_p2 = ((tmp_159_fu_1349_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_15_fu_1387_p2 = ((trunc_ln29_7_fu_1359_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_1104_p2 = ((trunc_ln29_fu_1077_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_1116_p2 = ((tmp_147_fu_1084_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_1122_p2 = ((trunc_ln29_1_fu_1094_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_1186_p2 = ((tmp_150_fu_1155_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_1192_p2 = ((trunc_ln29_2_fu_1165_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_1204_p2 = ((tmp_151_fu_1172_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_1210_p2 = ((trunc_ln29_3_fu_1182_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_8_fu_1274_p2 = ((tmp_154_fu_1243_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_9_fu_1280_p2 = ((trunc_ln29_4_fu_1253_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_1098_p2 = ((tmp_146_fu_1067_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = llike_1_address0_local;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_2_address0 = llike_2_address0_local;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_3_address0 = llike_3_address0_local;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_4_address0 = llike_4_address0_local;
assign llike_4_ce0 = llike_4_ce0_local;
assign llike_5_address0 = llike_5_address0_local;
assign llike_5_ce0 = llike_5_ce0_local;
assign llike_6_address0 = llike_6_address0_local;
assign llike_6_ce0 = llike_6_ce0_local;
assign llike_7_address0 = llike_7_address0_local;
assign llike_7_ce0 = llike_7_ce0_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln7_1_fu_560_p4 = {{ap_sig_allocacmp_prev_1[5:3]}};
assign lshr_ln8_s_fu_885_p4 = {{add_ln25_reg_1557[6:3]}};
assign min_p_69_fu_1146_p3 = ((and_ln29_1_reg_1721[0:0] == 1'b1) ? p_reg_1707 : min_p_67_reg_1714);
assign min_p_71_fu_1234_p3 = ((and_ln29_3_reg_1747[0:0] == 1'b1) ? p_32_reg_1726 : min_p_69_reg_1733);
assign min_p_73_fu_1322_p3 = ((and_ln29_5_reg_1766[0:0] == 1'b1) ? p_33_reg_1740 : min_p_71_reg_1759);
assign min_p_74_out = ((and_ln29_5_reg_1766[0:0] == 1'b1) ? p_33_reg_1740 : min_p_71_reg_1759);
assign min_p_75_fu_1410_p3 = ((and_ln29_7_fu_1405_p2[0:0] == 1'b1) ? p_34_reg_1752 : min_p_73_reg_1771);
assign or_ln29_1_fu_1128_p2 = (icmp_ln29_3_fu_1122_p2 | icmp_ln29_2_fu_1116_p2);
assign or_ln29_2_fu_1198_p2 = (icmp_ln29_5_fu_1192_p2 | icmp_ln29_4_fu_1186_p2);
assign or_ln29_3_fu_1216_p2 = (icmp_ln29_7_fu_1210_p2 | icmp_ln29_6_fu_1204_p2);
assign or_ln29_4_fu_1286_p2 = (icmp_ln29_9_fu_1280_p2 | icmp_ln29_8_fu_1274_p2);
assign or_ln29_5_fu_1304_p2 = (icmp_ln29_11_fu_1298_p2 | icmp_ln29_10_fu_1292_p2);
assign or_ln29_6_fu_1375_p2 = (icmp_ln29_13_fu_1369_p2 | icmp_ln29_12_fu_1363_p2);
assign or_ln29_7_fu_1393_p2 = (icmp_ln29_15_fu_1387_p2 | icmp_ln29_14_fu_1381_p2);
assign or_ln29_fu_1110_p2 = (icmp_ln29_fu_1098_p2 | icmp_ln29_1_fu_1104_p2);
assign shl_ln1_fu_590_p3 = {{ap_sig_allocacmp_prev_1}, {4'd0}};
assign tmp_10_fu_832_p17 = 'bx;
assign tmp_11_fu_949_p2 = transition_0_q1;
assign tmp_11_fu_949_p4 = transition_1_q1;
assign tmp_11_fu_949_p6 = transition_2_q1;
assign tmp_11_fu_949_p8 = transition_3_q1;
assign tmp_11_fu_949_p9 = 'bx;
assign tmp_146_fu_1067_p4 = {{bitcast_ln29_fu_1064_p1[62:52]}};
assign tmp_147_fu_1084_p4 = {{bitcast_ln29_1_fu_1081_p1[62:52]}};
assign tmp_14_fu_972_p17 = 'bx;
assign tmp_150_fu_1155_p4 = {{bitcast_ln29_2_fu_1152_p1[62:52]}};
assign tmp_151_fu_1172_p4 = {{bitcast_ln29_3_fu_1169_p1[62:52]}};
assign tmp_154_fu_1243_p4 = {{bitcast_ln29_4_fu_1240_p1[62:52]}};
assign tmp_155_fu_1260_p4 = {{bitcast_ln29_5_fu_1257_p1[62:52]}};
assign tmp_158_fu_1332_p4 = {{bitcast_ln29_6_fu_1329_p1[62:52]}};
assign tmp_159_fu_1349_p4 = {{bitcast_ln29_7_fu_1346_p1[62:52]}};
assign tmp_15_fu_1027_p2 = transition_0_q0;
assign tmp_15_fu_1027_p4 = transition_1_q0;
assign tmp_15_fu_1027_p6 = transition_2_q0;
assign tmp_15_fu_1027_p8 = transition_3_q0;
assign tmp_15_fu_1027_p9 = 'bx;
assign tmp_161_fu_620_p4 = {{add_ln27_fu_614_p2[9:4]}};
assign tmp_6_fu_676_p17 = 'bx;
assign tmp_7_fu_731_p2 = transition_0_q1;
assign tmp_7_fu_731_p4 = transition_1_q1;
assign tmp_7_fu_731_p6 = transition_2_q1;
assign tmp_7_fu_731_p8 = transition_3_q1;
assign tmp_7_fu_731_p9 = 'bx;
assign tmp_8_fu_754_p17 = 'bx;
assign tmp_9_fu_809_p2 = transition_0_q0;
assign tmp_9_fu_809_p4 = transition_1_q0;
assign tmp_9_fu_809_p6 = transition_2_q0;
assign tmp_9_fu_809_p8 = transition_3_q0;
assign tmp_9_fu_809_p9 = 'bx;
assign tmp_s_fu_570_p3 = {{empty_9}, {lshr_ln7_1_fu_560_p4}};
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
assign trunc_ln16_fu_556_p1 = ap_sig_allocacmp_prev_1[2:0];
assign trunc_ln27_fu_915_p1 = add_ln25_reg_1557[5:0];
assign trunc_ln29_1_fu_1094_p1 = bitcast_ln29_1_fu_1081_p1[51:0];
assign trunc_ln29_2_fu_1165_p1 = bitcast_ln29_2_fu_1152_p1[51:0];
assign trunc_ln29_3_fu_1182_p1 = bitcast_ln29_3_fu_1169_p1[51:0];
assign trunc_ln29_4_fu_1253_p1 = bitcast_ln29_4_fu_1240_p1[51:0];
assign trunc_ln29_5_fu_1270_p1 = bitcast_ln29_5_fu_1257_p1[51:0];
assign trunc_ln29_6_fu_1342_p1 = bitcast_ln29_6_fu_1329_p1[51:0];
assign trunc_ln29_7_fu_1359_p1 = bitcast_ln29_7_fu_1346_p1[51:0];
assign trunc_ln29_fu_1077_p1 = bitcast_ln29_fu_1064_p1[51:0];
assign zext_ln16_fu_552_p1 = ap_sig_allocacmp_prev_1;
assign zext_ln26_1_fu_894_p1 = lshr_ln8_s_fu_885_p4;
assign zext_ln26_2_fu_903_p1 = add_ln26_fu_898_p2;
assign zext_ln26_fu_578_p1 = tmp_s_fu_570_p3;
assign zext_ln27_1_fu_638_p1 = add_ln27_2_fu_630_p3;
assign zext_ln27_2_fu_877_p1 = add_ln27_4_fu_871_p3;
assign zext_ln27_3_fu_925_p1 = add_ln27_5_fu_918_p3;
assign zext_ln27_fu_606_p1 = add_ln_fu_598_p3;
endmodule 