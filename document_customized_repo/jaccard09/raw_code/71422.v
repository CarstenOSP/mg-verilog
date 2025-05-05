module viterbi_viterbi_Pipeline_L_prev_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_6,empty_9,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,lshr_ln,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,transition_4_address0,transition_4_ce0,transition_4_q0,transition_4_address1,transition_4_ce1,transition_4_q1,transition_5_address0,transition_5_ce0,transition_5_q0,transition_5_address1,transition_5_ce1,transition_5_q1,transition_6_address0,transition_6_ce0,transition_6_q0,transition_6_address1,transition_6_ce1,transition_6_q1,transition_7_address0,transition_7_ce0,transition_7_q0,transition_7_address1,transition_7_ce1,transition_7_q1,empty_10,tmp_9,empty,llike_address0,llike_ce0,llike_q0,min_p_14_out,min_p_14_out_ap_vld,grp_fu_992_p_din0,grp_fu_992_p_din1,grp_fu_992_p_opcode,grp_fu_992_p_dout0,grp_fu_992_p_ce,grp_fu_2009_p_din0,grp_fu_2009_p_din1,grp_fu_2009_p_opcode,grp_fu_2009_p_dout0,grp_fu_2009_p_ce); 
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
output  [11:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [11:0] llike_2_address0;
output   llike_2_ce0;
input  [63:0] llike_2_q0;
output  [11:0] llike_3_address0;
output   llike_3_ce0;
input  [63:0] llike_3_q0;
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
input  [11:0] empty;
output  [11:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [63:0] min_p_14_out;
output   min_p_14_out_ap_vld;
output  [63:0] grp_fu_992_p_din0;
output  [63:0] grp_fu_992_p_din1;
output  [1:0] grp_fu_992_p_opcode;
input  [63:0] grp_fu_992_p_dout0;
output   grp_fu_992_p_ce;
output  [63:0] grp_fu_2009_p_din0;
output  [63:0] grp_fu_2009_p_din1;
output  [4:0] grp_fu_2009_p_opcode;
input  [0:0] grp_fu_2009_p_dout0;
output   grp_fu_2009_p_ce;
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
reg   [0:0] tmp_10_reg_1576;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] prev_1_reg_1465;
reg   [5:0] tmp_20_reg_1565;
wire   [6:0] add_ln25_fu_695_p2;
reg   [6:0] add_ln25_reg_1570;
reg   [0:0] tmp_10_reg_1576_pp0_iter1_reg;
reg   [0:0] tmp_10_reg_1576_pp0_iter2_reg;
reg   [0:0] tmp_10_reg_1576_pp0_iter3_reg;
reg   [63:0] llike_1_load_reg_1580;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_4_fu_741_p19;
reg   [63:0] tmp_4_reg_1585;
reg   [63:0] llike_2_load_reg_1590;
wire   [63:0] tmp_5_fu_812_p19;
reg   [63:0] tmp_5_reg_1595;
reg   [63:0] llike_3_load_reg_1600;
wire   [63:0] tmp_6_fu_946_p19;
reg   [63:0] tmp_6_reg_1690;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] llike_load_reg_1695;
wire   [63:0] tmp_12_fu_1017_p19;
reg   [63:0] tmp_12_reg_1700;
reg   [63:0] add1_reg_1705;
reg   [63:0] add52_1_reg_1710;
reg   [63:0] add52_2_reg_1715;
reg   [63:0] add52_3_reg_1720;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] p_reg_1725;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] min_p_7_reg_1732;
wire   [0:0] and_ln29_1_fu_1146_p2;
reg   [0:0] and_ln29_1_reg_1739;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] p_2_reg_1744;
wire   [63:0] min_p_9_fu_1152_p3;
reg   [63:0] min_p_9_reg_1751;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] p_3_reg_1758;
wire   [0:0] and_ln29_3_fu_1234_p2;
reg   [0:0] and_ln29_3_reg_1765;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] p_4_reg_1770;
wire   [63:0] min_p_11_fu_1240_p3;
reg   [63:0] min_p_11_reg_1777;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] and_ln29_5_fu_1322_p2;
reg   [0:0] and_ln29_5_reg_1784;
wire   [63:0] min_p_13_fu_1328_p3;
reg   [63:0] min_p_13_reg_1789;
reg   [0:0] tmp_26_reg_1796;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter3_stage0;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln26_fu_608_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_631_p1;
wire   [63:0] zext_ln27_1_fu_667_p1;
wire   [63:0] zext_ln27_2_fu_857_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln26_2_fu_887_p1;
wire   [63:0] zext_ln27_3_fu_902_p1;
reg   [63:0] min_p_fu_134;
wire   [63:0] min_p_15_fu_1416_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage3;
reg   [5:0] prev_fu_138;
wire   [5:0] add_ln25_1_fu_1056_p2;
reg   [5:0] ap_sig_allocacmp_prev_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
wire    ap_block_pp0_stage0_01001;
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
reg    llike_2_ce0_local;
reg    llike_3_ce0_local;
reg    llike_ce0_local;
reg   [63:0] grp_fu_565_p0;
reg   [63:0] grp_fu_565_p1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
reg   [63:0] grp_fu_569_p0;
reg   [63:0] grp_fu_569_p1;
wire   [3:0] lshr_ln7_1_fu_590_p4;
wire   [11:0] tmp_s_fu_600_p3;
wire   [8:0] add_ln_fu_623_p3;
wire   [8:0] shl_ln1_fu_615_p3;
wire   [8:0] add_ln27_fu_643_p2;
wire   [5:0] tmp_16_fu_649_p4;
wire   [8:0] add_ln27_2_fu_659_p3;
wire   [8:0] add_ln27_1_fu_679_p2;
wire   [6:0] zext_ln16_fu_586_p1;
wire   [63:0] tmp_4_fu_741_p2;
wire   [63:0] tmp_4_fu_741_p4;
wire   [63:0] tmp_4_fu_741_p6;
wire   [63:0] tmp_4_fu_741_p8;
wire   [63:0] tmp_4_fu_741_p10;
wire   [63:0] tmp_4_fu_741_p12;
wire   [63:0] tmp_4_fu_741_p14;
wire   [63:0] tmp_4_fu_741_p16;
wire   [63:0] tmp_4_fu_741_p17;
wire   [63:0] tmp_5_fu_812_p2;
wire   [63:0] tmp_5_fu_812_p4;
wire   [63:0] tmp_5_fu_812_p6;
wire   [63:0] tmp_5_fu_812_p8;
wire   [63:0] tmp_5_fu_812_p10;
wire   [63:0] tmp_5_fu_812_p12;
wire   [63:0] tmp_5_fu_812_p14;
wire   [63:0] tmp_5_fu_812_p16;
wire   [63:0] tmp_5_fu_812_p17;
wire   [8:0] add_ln27_4_fu_851_p3;
wire   [4:0] lshr_ln8_1_fu_869_p4;
wire   [11:0] zext_ln26_1_fu_878_p1;
wire   [11:0] add_ln26_fu_882_p2;
wire   [5:0] trunc_ln27_fu_892_p1;
wire   [8:0] add_ln27_5_fu_895_p3;
wire   [63:0] tmp_6_fu_946_p2;
wire   [63:0] tmp_6_fu_946_p4;
wire   [63:0] tmp_6_fu_946_p6;
wire   [63:0] tmp_6_fu_946_p8;
wire   [63:0] tmp_6_fu_946_p10;
wire   [63:0] tmp_6_fu_946_p12;
wire   [63:0] tmp_6_fu_946_p14;
wire   [63:0] tmp_6_fu_946_p16;
wire   [63:0] tmp_6_fu_946_p17;
wire   [63:0] tmp_12_fu_1017_p2;
wire   [63:0] tmp_12_fu_1017_p4;
wire   [63:0] tmp_12_fu_1017_p6;
wire   [63:0] tmp_12_fu_1017_p8;
wire   [63:0] tmp_12_fu_1017_p10;
wire   [63:0] tmp_12_fu_1017_p12;
wire   [63:0] tmp_12_fu_1017_p14;
wire   [63:0] tmp_12_fu_1017_p16;
wire   [63:0] tmp_12_fu_1017_p17;
wire   [63:0] bitcast_ln29_fu_1070_p1;
wire   [63:0] bitcast_ln29_1_fu_1087_p1;
wire   [10:0] tmp_13_fu_1073_p4;
wire   [51:0] trunc_ln29_fu_1083_p1;
wire   [0:0] icmp_ln29_1_fu_1110_p2;
wire   [0:0] icmp_ln29_fu_1104_p2;
wire   [10:0] tmp_14_fu_1090_p4;
wire   [51:0] trunc_ln29_1_fu_1100_p1;
wire   [0:0] icmp_ln29_3_fu_1128_p2;
wire   [0:0] icmp_ln29_2_fu_1122_p2;
wire   [0:0] or_ln29_fu_1116_p2;
wire   [0:0] and_ln29_fu_1140_p2;
wire   [0:0] or_ln29_1_fu_1134_p2;
wire   [63:0] bitcast_ln29_2_fu_1158_p1;
wire   [63:0] bitcast_ln29_3_fu_1175_p1;
wire   [10:0] tmp_17_fu_1161_p4;
wire   [51:0] trunc_ln29_2_fu_1171_p1;
wire   [0:0] icmp_ln29_5_fu_1198_p2;
wire   [0:0] icmp_ln29_4_fu_1192_p2;
wire   [10:0] tmp_18_fu_1178_p4;
wire   [51:0] trunc_ln29_3_fu_1188_p1;
wire   [0:0] icmp_ln29_7_fu_1216_p2;
wire   [0:0] icmp_ln29_6_fu_1210_p2;
wire   [0:0] or_ln29_3_fu_1222_p2;
wire   [0:0] or_ln29_2_fu_1204_p2;
wire   [0:0] and_ln29_2_fu_1228_p2;
wire   [63:0] bitcast_ln29_4_fu_1246_p1;
wire   [63:0] bitcast_ln29_5_fu_1263_p1;
wire   [10:0] tmp_21_fu_1249_p4;
wire   [51:0] trunc_ln29_4_fu_1259_p1;
wire   [0:0] icmp_ln29_9_fu_1286_p2;
wire   [0:0] icmp_ln29_8_fu_1280_p2;
wire   [10:0] tmp_22_fu_1266_p4;
wire   [51:0] trunc_ln29_5_fu_1276_p1;
wire   [0:0] icmp_ln29_11_fu_1304_p2;
wire   [0:0] icmp_ln29_10_fu_1298_p2;
wire   [0:0] or_ln29_5_fu_1310_p2;
wire   [0:0] or_ln29_4_fu_1292_p2;
wire   [0:0] and_ln29_4_fu_1316_p2;
wire   [63:0] bitcast_ln29_6_fu_1335_p1;
wire   [63:0] bitcast_ln29_7_fu_1352_p1;
wire   [10:0] tmp_24_fu_1338_p4;
wire   [51:0] trunc_ln29_6_fu_1348_p1;
wire   [0:0] icmp_ln29_13_fu_1375_p2;
wire   [0:0] icmp_ln29_12_fu_1369_p2;
wire   [10:0] tmp_25_fu_1355_p4;
wire   [51:0] trunc_ln29_7_fu_1365_p1;
wire   [0:0] icmp_ln29_15_fu_1393_p2;
wire   [0:0] icmp_ln29_14_fu_1387_p2;
wire   [0:0] or_ln29_7_fu_1399_p2;
wire   [0:0] or_ln29_6_fu_1381_p2;
wire   [0:0] and_ln29_6_fu_1405_p2;
wire   [0:0] and_ln29_7_fu_1411_p2;
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
wire   [2:0] tmp_4_fu_741_p1;
wire   [2:0] tmp_4_fu_741_p3;
wire   [2:0] tmp_4_fu_741_p5;
wire   [2:0] tmp_4_fu_741_p7;
wire  signed [2:0] tmp_4_fu_741_p9;
wire  signed [2:0] tmp_4_fu_741_p11;
wire  signed [2:0] tmp_4_fu_741_p13;
wire  signed [2:0] tmp_4_fu_741_p15;
wire   [2:0] tmp_5_fu_812_p1;
wire   [2:0] tmp_5_fu_812_p3;
wire   [2:0] tmp_5_fu_812_p5;
wire   [2:0] tmp_5_fu_812_p7;
wire  signed [2:0] tmp_5_fu_812_p9;
wire  signed [2:0] tmp_5_fu_812_p11;
wire  signed [2:0] tmp_5_fu_812_p13;
wire  signed [2:0] tmp_5_fu_812_p15;
wire   [2:0] tmp_6_fu_946_p1;
wire   [2:0] tmp_6_fu_946_p3;
wire   [2:0] tmp_6_fu_946_p5;
wire   [2:0] tmp_6_fu_946_p7;
wire  signed [2:0] tmp_6_fu_946_p9;
wire  signed [2:0] tmp_6_fu_946_p11;
wire  signed [2:0] tmp_6_fu_946_p13;
wire  signed [2:0] tmp_6_fu_946_p15;
wire   [2:0] tmp_12_fu_1017_p1;
wire   [2:0] tmp_12_fu_1017_p3;
wire   [2:0] tmp_12_fu_1017_p5;
wire   [2:0] tmp_12_fu_1017_p7;
wire  signed [2:0] tmp_12_fu_1017_p9;
wire  signed [2:0] tmp_12_fu_1017_p11;
wire  signed [2:0] tmp_12_fu_1017_p13;
wire  signed [2:0] tmp_12_fu_1017_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_134 = 64'd0;
#0 prev_fu_138 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U34(.din0(tmp_4_fu_741_p2),.din1(tmp_4_fu_741_p4),.din2(tmp_4_fu_741_p6),.din3(tmp_4_fu_741_p8),.din4(tmp_4_fu_741_p10),.din5(tmp_4_fu_741_p12),.din6(tmp_4_fu_741_p14),.din7(tmp_4_fu_741_p16),.def(tmp_4_fu_741_p17),.sel(empty_10),.dout(tmp_4_fu_741_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U35(.din0(tmp_5_fu_812_p2),.din1(tmp_5_fu_812_p4),.din2(tmp_5_fu_812_p6),.din3(tmp_5_fu_812_p8),.din4(tmp_5_fu_812_p10),.din5(tmp_5_fu_812_p12),.din6(tmp_5_fu_812_p14),.din7(tmp_5_fu_812_p16),.def(tmp_5_fu_812_p17),.sel(empty_10),.dout(tmp_5_fu_812_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U36(.din0(tmp_6_fu_946_p2),.din1(tmp_6_fu_946_p4),.din2(tmp_6_fu_946_p6),.din3(tmp_6_fu_946_p8),.din4(tmp_6_fu_946_p10),.din5(tmp_6_fu_946_p12),.din6(tmp_6_fu_946_p14),.din7(tmp_6_fu_946_p16),.def(tmp_6_fu_946_p17),.sel(empty_10),.dout(tmp_6_fu_946_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U37(.din0(tmp_12_fu_1017_p2),.din1(tmp_12_fu_1017_p4),.din2(tmp_12_fu_1017_p6),.din3(tmp_12_fu_1017_p8),.din4(tmp_12_fu_1017_p10),.din5(tmp_12_fu_1017_p12),.din6(tmp_12_fu_1017_p14),.din7(tmp_12_fu_1017_p16),.def(tmp_12_fu_1017_p17),.sel(empty_10),.dout(tmp_12_fu_1017_p19));
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
        min_p_fu_134 <= min_p_6;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (tmp_10_reg_1576_pp0_iter3_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        min_p_fu_134 <= min_p_15_fu_1416_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prev_fu_138 <= 6'd1;
    end else if (((tmp_10_reg_1576 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        prev_fu_138 <= add_ln25_1_fu_1056_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add1_reg_1705 <= grp_fu_992_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add52_1_reg_1710 <= grp_fu_992_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add52_2_reg_1715 <= grp_fu_992_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add52_3_reg_1720 <= grp_fu_992_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln25_reg_1570 <= add_ln25_fu_695_p2;
        prev_1_reg_1465 <= ap_sig_allocacmp_prev_1;
        tmp_10_reg_1576 <= add_ln25_fu_695_p2[32'd6];
        tmp_10_reg_1576_pp0_iter1_reg <= tmp_10_reg_1576;
        tmp_10_reg_1576_pp0_iter2_reg <= tmp_10_reg_1576_pp0_iter1_reg;
        tmp_10_reg_1576_pp0_iter3_reg <= tmp_10_reg_1576_pp0_iter2_reg;
        tmp_20_reg_1565 <= {{add_ln27_1_fu_679_p2[8:3]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln29_1_reg_1739 <= and_ln29_1_fu_1146_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln29_3_reg_1765 <= and_ln29_3_fu_1234_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        and_ln29_5_reg_1784 <= and_ln29_5_fu_1322_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_reg_1580 <= llike_1_q0;
        llike_2_load_reg_1590 <= llike_2_q0;
        llike_3_load_reg_1600 <= llike_3_q0;
        tmp_4_reg_1585 <= tmp_4_fu_741_p19;
        tmp_5_reg_1595 <= tmp_5_fu_812_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_load_reg_1695 <= llike_q0;
        tmp_12_reg_1700 <= tmp_12_fu_1017_p19;
        tmp_6_reg_1690 <= tmp_6_fu_946_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_11_reg_1777 <= min_p_11_fu_1240_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_13_reg_1789 <= min_p_13_fu_1328_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_7_reg_1732 <= min_p_fu_134;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_9_reg_1751 <= min_p_9_fu_1152_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        p_2_reg_1744 <= grp_fu_992_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        p_3_reg_1758 <= grp_fu_992_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        p_4_reg_1770 <= grp_fu_992_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        p_reg_1725 <= grp_fu_992_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_26_reg_1796 <= grp_fu_2009_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_10_reg_1576 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (tmp_10_reg_1576_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_prev_1 = prev_fu_138;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_565_p0 = add52_3_reg_1720;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_565_p0 = add52_2_reg_1715;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_565_p0 = add52_1_reg_1710;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_565_p0 = add1_reg_1705;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_565_p0 = llike_load_reg_1695;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_565_p0 = llike_3_load_reg_1600;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_565_p0 = llike_2_load_reg_1590;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_565_p0 = llike_1_load_reg_1580;
    end else begin
        grp_fu_565_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_565_p1 = tmp_9;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_565_p1 = tmp_12_reg_1700;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_565_p1 = tmp_6_reg_1690;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_565_p1 = tmp_5_reg_1595;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_565_p1 = tmp_4_reg_1585;
    end else begin
        grp_fu_565_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_569_p0 = p_4_reg_1770;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_569_p0 = p_3_reg_1758;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_569_p0 = p_2_reg_1744;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_569_p0 = p_reg_1725;
    end else begin
        grp_fu_569_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_569_p1 = min_p_13_fu_1328_p3;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_569_p1 = min_p_11_fu_1240_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_569_p1 = min_p_9_fu_1152_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_569_p1 = min_p_fu_134;
    end else begin
        grp_fu_569_p1 = 'bx;
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
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (tmp_10_reg_1576_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_14_out_ap_vld = 1'b1;
    end else begin
        min_p_14_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln27_3_fu_902_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln27_1_fu_667_p1;
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
            transition_0_address1_local = zext_ln27_2_fu_857_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address1_local = zext_ln27_fu_631_p1;
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
            transition_1_address0_local = zext_ln27_3_fu_902_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln27_1_fu_667_p1;
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
            transition_1_address1_local = zext_ln27_2_fu_857_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address1_local = zext_ln27_fu_631_p1;
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
            transition_2_address0_local = zext_ln27_3_fu_902_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address0_local = zext_ln27_1_fu_667_p1;
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
            transition_2_address1_local = zext_ln27_2_fu_857_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address1_local = zext_ln27_fu_631_p1;
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
            transition_3_address0_local = zext_ln27_3_fu_902_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address0_local = zext_ln27_1_fu_667_p1;
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
            transition_3_address1_local = zext_ln27_2_fu_857_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address1_local = zext_ln27_fu_631_p1;
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
            transition_4_address0_local = zext_ln27_3_fu_902_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_4_address0_local = zext_ln27_1_fu_667_p1;
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
            transition_4_address1_local = zext_ln27_2_fu_857_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_4_address1_local = zext_ln27_fu_631_p1;
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
            transition_5_address0_local = zext_ln27_3_fu_902_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_5_address0_local = zext_ln27_1_fu_667_p1;
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
            transition_5_address1_local = zext_ln27_2_fu_857_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_5_address1_local = zext_ln27_fu_631_p1;
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
            transition_6_address0_local = zext_ln27_3_fu_902_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_6_address0_local = zext_ln27_1_fu_667_p1;
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
            transition_6_address1_local = zext_ln27_2_fu_857_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_6_address1_local = zext_ln27_fu_631_p1;
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
            transition_7_address0_local = zext_ln27_3_fu_902_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_7_address0_local = zext_ln27_1_fu_667_p1;
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
            transition_7_address1_local = zext_ln27_2_fu_857_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_7_address1_local = zext_ln27_fu_631_p1;
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
assign add_ln25_1_fu_1056_p2 = (prev_1_reg_1465 + 6'd4);
assign add_ln25_fu_695_p2 = (zext_ln16_fu_586_p1 + 7'd3);
assign add_ln26_fu_882_p2 = (empty + zext_ln26_1_fu_878_p1);
assign add_ln27_1_fu_679_p2 = (shl_ln1_fu_615_p3 + 9'd16);
assign add_ln27_2_fu_659_p3 = {{tmp_16_fu_649_p4}, {lshr_ln}};
assign add_ln27_4_fu_851_p3 = {{tmp_20_reg_1565}, {lshr_ln}};
assign add_ln27_5_fu_895_p3 = {{trunc_ln27_fu_892_p1}, {lshr_ln}};
assign add_ln27_fu_643_p2 = (shl_ln1_fu_615_p3 + 9'd8);
assign add_ln_fu_623_p3 = {{ap_sig_allocacmp_prev_1}, {lshr_ln}};
assign and_ln29_1_fu_1146_p2 = (or_ln29_1_fu_1134_p2 & and_ln29_fu_1140_p2);
assign and_ln29_2_fu_1228_p2 = (or_ln29_3_fu_1222_p2 & or_ln29_2_fu_1204_p2);
assign and_ln29_3_fu_1234_p2 = (grp_fu_2009_p_dout0 & and_ln29_2_fu_1228_p2);
assign and_ln29_4_fu_1316_p2 = (or_ln29_5_fu_1310_p2 & or_ln29_4_fu_1292_p2);
assign and_ln29_5_fu_1322_p2 = (grp_fu_2009_p_dout0 & and_ln29_4_fu_1316_p2);
assign and_ln29_6_fu_1405_p2 = (or_ln29_7_fu_1399_p2 & or_ln29_6_fu_1381_p2);
assign and_ln29_7_fu_1411_p2 = (tmp_26_reg_1796 & and_ln29_6_fu_1405_p2);
assign and_ln29_fu_1140_p2 = (or_ln29_fu_1116_p2 & grp_fu_2009_p_dout0);
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
assign bitcast_ln29_1_fu_1087_p1 = min_p_7_reg_1732;
assign bitcast_ln29_2_fu_1158_p1 = p_2_reg_1744;
assign bitcast_ln29_3_fu_1175_p1 = min_p_9_reg_1751;
assign bitcast_ln29_4_fu_1246_p1 = p_3_reg_1758;
assign bitcast_ln29_5_fu_1263_p1 = min_p_11_reg_1777;
assign bitcast_ln29_6_fu_1335_p1 = p_4_reg_1770;
assign bitcast_ln29_7_fu_1352_p1 = min_p_13_reg_1789;
assign bitcast_ln29_fu_1070_p1 = p_reg_1725;
assign grp_fu_2009_p_ce = 1'b1;
assign grp_fu_2009_p_din0 = grp_fu_569_p0;
assign grp_fu_2009_p_din1 = grp_fu_569_p1;
assign grp_fu_2009_p_opcode = 5'd4;
assign grp_fu_992_p_ce = 1'b1;
assign grp_fu_992_p_din0 = grp_fu_565_p0;
assign grp_fu_992_p_din1 = grp_fu_565_p1;
assign grp_fu_992_p_opcode = 2'd0;
assign icmp_ln29_10_fu_1298_p2 = ((tmp_22_fu_1266_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_11_fu_1304_p2 = ((trunc_ln29_5_fu_1276_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_12_fu_1369_p2 = ((tmp_24_fu_1338_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_13_fu_1375_p2 = ((trunc_ln29_6_fu_1348_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_14_fu_1387_p2 = ((tmp_25_fu_1355_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_15_fu_1393_p2 = ((trunc_ln29_7_fu_1365_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_1110_p2 = ((trunc_ln29_fu_1083_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_1122_p2 = ((tmp_14_fu_1090_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_1128_p2 = ((trunc_ln29_1_fu_1100_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_1192_p2 = ((tmp_17_fu_1161_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_1198_p2 = ((trunc_ln29_2_fu_1171_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_1210_p2 = ((tmp_18_fu_1178_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_1216_p2 = ((trunc_ln29_3_fu_1188_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_8_fu_1280_p2 = ((tmp_21_fu_1249_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_9_fu_1286_p2 = ((trunc_ln29_4_fu_1259_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_1104_p2 = ((tmp_13_fu_1073_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = zext_ln26_fu_608_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_2_address0 = zext_ln26_fu_608_p1;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_3_address0 = zext_ln26_fu_608_p1;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_address0 = zext_ln26_2_fu_887_p1;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln7_1_fu_590_p4 = {{ap_sig_allocacmp_prev_1[5:2]}};
assign lshr_ln8_1_fu_869_p4 = {{add_ln25_reg_1570[6:2]}};
assign min_p_11_fu_1240_p3 = ((and_ln29_3_reg_1765[0:0] == 1'b1) ? p_2_reg_1744 : min_p_9_reg_1751);
assign min_p_13_fu_1328_p3 = ((and_ln29_5_reg_1784[0:0] == 1'b1) ? p_3_reg_1758 : min_p_11_reg_1777);
assign min_p_14_out = ((and_ln29_5_reg_1784[0:0] == 1'b1) ? p_3_reg_1758 : min_p_11_reg_1777);
assign min_p_15_fu_1416_p3 = ((and_ln29_7_fu_1411_p2[0:0] == 1'b1) ? p_4_reg_1770 : min_p_13_reg_1789);
assign min_p_9_fu_1152_p3 = ((and_ln29_1_reg_1739[0:0] == 1'b1) ? p_reg_1725 : min_p_7_reg_1732);
assign or_ln29_1_fu_1134_p2 = (icmp_ln29_3_fu_1128_p2 | icmp_ln29_2_fu_1122_p2);
assign or_ln29_2_fu_1204_p2 = (icmp_ln29_5_fu_1198_p2 | icmp_ln29_4_fu_1192_p2);
assign or_ln29_3_fu_1222_p2 = (icmp_ln29_7_fu_1216_p2 | icmp_ln29_6_fu_1210_p2);
assign or_ln29_4_fu_1292_p2 = (icmp_ln29_9_fu_1286_p2 | icmp_ln29_8_fu_1280_p2);
assign or_ln29_5_fu_1310_p2 = (icmp_ln29_11_fu_1304_p2 | icmp_ln29_10_fu_1298_p2);
assign or_ln29_6_fu_1381_p2 = (icmp_ln29_13_fu_1375_p2 | icmp_ln29_12_fu_1369_p2);
assign or_ln29_7_fu_1399_p2 = (icmp_ln29_15_fu_1393_p2 | icmp_ln29_14_fu_1387_p2);
assign or_ln29_fu_1116_p2 = (icmp_ln29_fu_1104_p2 | icmp_ln29_1_fu_1110_p2);
assign shl_ln1_fu_615_p3 = {{ap_sig_allocacmp_prev_1}, {3'd0}};
assign tmp_12_fu_1017_p10 = transition_4_q0;
assign tmp_12_fu_1017_p12 = transition_5_q0;
assign tmp_12_fu_1017_p14 = transition_6_q0;
assign tmp_12_fu_1017_p16 = transition_7_q0;
assign tmp_12_fu_1017_p17 = 'bx;
assign tmp_12_fu_1017_p2 = transition_0_q0;
assign tmp_12_fu_1017_p4 = transition_1_q0;
assign tmp_12_fu_1017_p6 = transition_2_q0;
assign tmp_12_fu_1017_p8 = transition_3_q0;
assign tmp_13_fu_1073_p4 = {{bitcast_ln29_fu_1070_p1[62:52]}};
assign tmp_14_fu_1090_p4 = {{bitcast_ln29_1_fu_1087_p1[62:52]}};
assign tmp_16_fu_649_p4 = {{add_ln27_fu_643_p2[8:3]}};
assign tmp_17_fu_1161_p4 = {{bitcast_ln29_2_fu_1158_p1[62:52]}};
assign tmp_18_fu_1178_p4 = {{bitcast_ln29_3_fu_1175_p1[62:52]}};
assign tmp_21_fu_1249_p4 = {{bitcast_ln29_4_fu_1246_p1[62:52]}};
assign tmp_22_fu_1266_p4 = {{bitcast_ln29_5_fu_1263_p1[62:52]}};
assign tmp_24_fu_1338_p4 = {{bitcast_ln29_6_fu_1335_p1[62:52]}};
assign tmp_25_fu_1355_p4 = {{bitcast_ln29_7_fu_1352_p1[62:52]}};
assign tmp_4_fu_741_p10 = transition_4_q1;
assign tmp_4_fu_741_p12 = transition_5_q1;
assign tmp_4_fu_741_p14 = transition_6_q1;
assign tmp_4_fu_741_p16 = transition_7_q1;
assign tmp_4_fu_741_p17 = 'bx;
assign tmp_4_fu_741_p2 = transition_0_q1;
assign tmp_4_fu_741_p4 = transition_1_q1;
assign tmp_4_fu_741_p6 = transition_2_q1;
assign tmp_4_fu_741_p8 = transition_3_q1;
assign tmp_5_fu_812_p10 = transition_4_q0;
assign tmp_5_fu_812_p12 = transition_5_q0;
assign tmp_5_fu_812_p14 = transition_6_q0;
assign tmp_5_fu_812_p16 = transition_7_q0;
assign tmp_5_fu_812_p17 = 'bx;
assign tmp_5_fu_812_p2 = transition_0_q0;
assign tmp_5_fu_812_p4 = transition_1_q0;
assign tmp_5_fu_812_p6 = transition_2_q0;
assign tmp_5_fu_812_p8 = transition_3_q0;
assign tmp_6_fu_946_p10 = transition_4_q1;
assign tmp_6_fu_946_p12 = transition_5_q1;
assign tmp_6_fu_946_p14 = transition_6_q1;
assign tmp_6_fu_946_p16 = transition_7_q1;
assign tmp_6_fu_946_p17 = 'bx;
assign tmp_6_fu_946_p2 = transition_0_q1;
assign tmp_6_fu_946_p4 = transition_1_q1;
assign tmp_6_fu_946_p6 = transition_2_q1;
assign tmp_6_fu_946_p8 = transition_3_q1;
assign tmp_s_fu_600_p3 = {{empty_9}, {lshr_ln7_1_fu_590_p4}};
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
assign trunc_ln27_fu_892_p1 = add_ln25_reg_1570[5:0];
assign trunc_ln29_1_fu_1100_p1 = bitcast_ln29_1_fu_1087_p1[51:0];
assign trunc_ln29_2_fu_1171_p1 = bitcast_ln29_2_fu_1158_p1[51:0];
assign trunc_ln29_3_fu_1188_p1 = bitcast_ln29_3_fu_1175_p1[51:0];
assign trunc_ln29_4_fu_1259_p1 = bitcast_ln29_4_fu_1246_p1[51:0];
assign trunc_ln29_5_fu_1276_p1 = bitcast_ln29_5_fu_1263_p1[51:0];
assign trunc_ln29_6_fu_1348_p1 = bitcast_ln29_6_fu_1335_p1[51:0];
assign trunc_ln29_7_fu_1365_p1 = bitcast_ln29_7_fu_1352_p1[51:0];
assign trunc_ln29_fu_1083_p1 = bitcast_ln29_fu_1070_p1[51:0];
assign zext_ln16_fu_586_p1 = ap_sig_allocacmp_prev_1;
assign zext_ln26_1_fu_878_p1 = lshr_ln8_1_fu_869_p4;
assign zext_ln26_2_fu_887_p1 = add_ln26_fu_882_p2;
assign zext_ln26_fu_608_p1 = tmp_s_fu_600_p3;
assign zext_ln27_1_fu_667_p1 = add_ln27_2_fu_659_p3;
assign zext_ln27_2_fu_857_p1 = add_ln27_4_fu_851_p3;
assign zext_ln27_3_fu_902_p1 = add_ln27_5_fu_895_p3;
assign zext_ln27_fu_631_p1 = add_ln_fu_623_p3;
endmodule 