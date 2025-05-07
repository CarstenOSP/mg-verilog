module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_12,t_1,llike_1_address0,llike_1_ce0,llike_1_q0,llike_1_address1,llike_1_ce1,llike_1_q1,zext_ln52_2,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,transition_4_address0,transition_4_ce0,transition_4_q0,transition_4_address1,transition_4_ce1,transition_4_q1,transition_5_address0,transition_5_ce0,transition_5_q0,transition_5_address1,transition_5_ce1,transition_5_q1,transition_6_address0,transition_6_ce0,transition_6_q0,transition_6_address1,transition_6_ce1,transition_6_q1,transition_7_address0,transition_7_ce0,transition_7_q0,transition_7_address1,transition_7_ce1,transition_7_q1,empty,llike_address0,llike_ce0,llike_q0,zext_ln52_3,min_s_10_out,min_s_10_out_ap_vld,grp_fu_943_p_din0,grp_fu_943_p_din1,grp_fu_943_p_opcode,grp_fu_943_p_dout0,grp_fu_943_p_ce,grp_fu_1955_p_din0,grp_fu_1955_p_din1,grp_fu_1955_p_opcode,grp_fu_1955_p_dout0,grp_fu_1955_p_ce); 
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
input  [63:0] min_p_12;
input  [7:0] t_1;
output  [12:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [12:0] llike_1_address1;
output   llike_1_ce1;
input  [63:0] llike_1_q1;
input  [4:0] zext_ln52_2;
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
input  [2:0] empty;
output  [12:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
input  [12:0] zext_ln52_3;
output  [7:0] min_s_10_out;
output   min_s_10_out_ap_vld;
output  [63:0] grp_fu_943_p_din0;
output  [63:0] grp_fu_943_p_din1;
output  [1:0] grp_fu_943_p_opcode;
input  [63:0] grp_fu_943_p_dout0;
output   grp_fu_943_p_ce;
output  [63:0] grp_fu_1955_p_din0;
output  [63:0] grp_fu_1955_p_din1;
output  [4:0] grp_fu_1955_p_opcode;
input  [0:0] grp_fu_1955_p_dout0;
output   grp_fu_1955_p_ce;
reg ap_idle;
reg min_s_10_out_ap_vld;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] tmp_16_reg_1628;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_555;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [8:0] zext_ln52_2_cast_fu_560_p1;
reg   [8:0] zext_ln52_2_cast_reg_1542;
reg   [5:0] s_reg_1549;
reg   [5:0] s_reg_1549_pp0_iter1_reg;
wire   [5:0] add_ln53_fu_635_p2;
reg   [5:0] add_ln53_reg_1600;
reg   [5:0] add_ln53_reg_1600_pp0_iter1_reg;
wire   [5:0] add_ln53_1_fu_664_p2;
reg   [5:0] add_ln53_1_reg_1611;
reg   [5:0] add_ln53_1_reg_1611_pp0_iter1_reg;
wire   [6:0] add_ln53_2_fu_689_p2;
reg   [6:0] add_ln53_2_reg_1622;
reg   [0:0] tmp_16_reg_1628_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_1632;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_1_fu_735_p19;
reg   [63:0] tmp_1_reg_1637;
reg   [63:0] llike_load_reg_1642;
reg   [63:0] llike_1_load_1_reg_1687;
wire   [63:0] tmp_6_fu_877_p19;
reg   [63:0] tmp_6_reg_1737;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_11_fu_948_p19;
reg   [63:0] tmp_11_reg_1742;
reg   [63:0] llike_load_1_reg_1747;
wire   [5:0] trunc_ln54_fu_987_p1;
reg   [5:0] trunc_ln54_reg_1752;
reg   [5:0] trunc_ln54_reg_1752_pp0_iter1_reg;
wire   [63:0] tmp_13_fu_1047_p19;
reg   [63:0] tmp_13_reg_1797;
reg   [63:0] min_p_1_reg_1802;
reg   [63:0] p_1_reg_1809;
wire   [0:0] and_ln55_1_fu_1177_p2;
reg   [0:0] and_ln55_1_reg_1816;
reg   [63:0] p_2_reg_1822;
wire   [63:0] min_p_3_fu_1183_p3;
reg   [63:0] min_p_3_reg_1829;
wire   [0:0] and_ln55_3_fu_1266_p2;
reg   [0:0] and_ln55_3_reg_1836;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] min_p_5_fu_1285_p3;
reg   [63:0] min_p_5_reg_1842;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [7:0] min_s_5_fu_1294_p3;
reg   [7:0] min_s_5_reg_1849;
wire   [0:0] and_ln55_5_fu_1377_p2;
reg   [0:0] and_ln55_5_reg_1854;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [7:0] min_s_6_fu_1386_p3;
reg   [7:0] min_s_6_reg_1860;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] min_p_7_fu_1393_p3;
reg   [63:0] min_p_7_reg_1865;
reg   [0:0] tmp_19_reg_1872;
wire    ap_block_pp0_stage8_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage7_subdone;
reg    ap_condition_exit_pp0_iter1_stage7;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln54_4_fu_604_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_623_p1;
wire   [63:0] zext_ln54_5_fu_659_p1;
wire   [63:0] zext_ln54_6_fu_684_p1;
wire   [63:0] zext_ln54_1_fu_786_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_2_fu_810_p1;
wire   [63:0] zext_ln54_8_fu_840_p1;
wire   [63:0] zext_ln54_3_fu_1003_p1;
wire    ap_block_pp0_stage2;
reg   [63:0] min_p_fu_124;
wire   [63:0] min_p_9_fu_1481_p3;
wire    ap_loop_init;
reg   [7:0] min_s_fu_128;
wire   [7:0] min_s_7_fu_1491_p3;
wire    ap_block_pp0_stage5;
reg   [5:0] min_s_1_fu_132;
wire   [5:0] add_ln53_3_fu_1086_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage7_01001;
reg    llike_1_ce1_local;
reg    llike_1_ce0_local;
reg    transition_0_ce0_local;
reg   [8:0] transition_0_address0_local;
reg    transition_0_ce1_local;
reg   [8:0] transition_0_address1_local;
reg    transition_1_ce0_local;
reg   [8:0] transition_1_address0_local;
reg    transition_1_ce1_local;
reg   [8:0] transition_1_address1_local;
reg    transition_2_ce0_local;
reg   [8:0] transition_2_address0_local;
reg    transition_2_ce1_local;
reg   [8:0] transition_2_address1_local;
reg    transition_3_ce0_local;
reg   [8:0] transition_3_address0_local;
reg    transition_3_ce1_local;
reg   [8:0] transition_3_address1_local;
reg    transition_4_ce0_local;
reg   [8:0] transition_4_address0_local;
reg    transition_4_ce1_local;
reg   [8:0] transition_4_address1_local;
reg    transition_5_ce0_local;
reg   [8:0] transition_5_address0_local;
reg    transition_5_ce1_local;
reg   [8:0] transition_5_address1_local;
reg    transition_6_ce0_local;
reg   [8:0] transition_6_address0_local;
reg    transition_6_ce1_local;
reg   [8:0] transition_6_address1_local;
reg    transition_7_ce0_local;
reg   [8:0] transition_7_address0_local;
reg    transition_7_ce1_local;
reg   [8:0] transition_7_address1_local;
reg    llike_ce0_local;
reg   [12:0] llike_address0_local;
reg   [63:0] grp_fu_547_p0;
reg   [63:0] grp_fu_547_p1;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
reg   [63:0] grp_fu_551_p0;
reg   [63:0] grp_fu_551_p1;
wire    ap_block_pp0_stage7;
wire   [4:0] lshr_ln8_3_fu_586_p4;
wire   [12:0] tmp_s_fu_596_p3;
wire   [8:0] shl_ln2_fu_609_p3;
wire   [8:0] add_ln54_fu_617_p2;
wire   [4:0] lshr_ln8_4_fu_641_p4;
wire   [12:0] tmp_5_fu_651_p3;
wire   [4:0] add_ln8_fu_670_p2;
wire   [12:0] tmp_10_fu_676_p3;
wire   [6:0] zext_ln20_fu_582_p1;
wire   [63:0] tmp_1_fu_735_p2;
wire   [63:0] tmp_1_fu_735_p4;
wire   [63:0] tmp_1_fu_735_p6;
wire   [63:0] tmp_1_fu_735_p8;
wire   [63:0] tmp_1_fu_735_p10;
wire   [63:0] tmp_1_fu_735_p12;
wire   [63:0] tmp_1_fu_735_p14;
wire   [63:0] tmp_1_fu_735_p16;
wire   [63:0] tmp_1_fu_735_p17;
wire   [8:0] shl_ln54_1_fu_774_p3;
wire   [8:0] add_ln54_1_fu_781_p2;
wire   [8:0] shl_ln54_2_fu_798_p3;
wire   [8:0] add_ln54_2_fu_805_p2;
wire   [5:0] lshr_ln9_3_fu_822_p4;
wire   [12:0] zext_ln54_7_fu_831_p1;
wire   [12:0] add_ln54_4_fu_835_p2;
wire   [63:0] tmp_6_fu_877_p2;
wire   [63:0] tmp_6_fu_877_p4;
wire   [63:0] tmp_6_fu_877_p6;
wire   [63:0] tmp_6_fu_877_p8;
wire   [63:0] tmp_6_fu_877_p10;
wire   [63:0] tmp_6_fu_877_p12;
wire   [63:0] tmp_6_fu_877_p14;
wire   [63:0] tmp_6_fu_877_p16;
wire   [63:0] tmp_6_fu_877_p17;
wire   [63:0] tmp_11_fu_948_p2;
wire   [63:0] tmp_11_fu_948_p4;
wire   [63:0] tmp_11_fu_948_p6;
wire   [63:0] tmp_11_fu_948_p8;
wire   [63:0] tmp_11_fu_948_p10;
wire   [63:0] tmp_11_fu_948_p12;
wire   [63:0] tmp_11_fu_948_p14;
wire   [63:0] tmp_11_fu_948_p16;
wire   [63:0] tmp_11_fu_948_p17;
wire   [8:0] shl_ln54_3_fu_990_p3;
wire   [8:0] add_ln54_3_fu_998_p2;
wire   [63:0] tmp_13_fu_1047_p2;
wire   [63:0] tmp_13_fu_1047_p4;
wire   [63:0] tmp_13_fu_1047_p6;
wire   [63:0] tmp_13_fu_1047_p8;
wire   [63:0] tmp_13_fu_1047_p10;
wire   [63:0] tmp_13_fu_1047_p12;
wire   [63:0] tmp_13_fu_1047_p14;
wire   [63:0] tmp_13_fu_1047_p16;
wire   [63:0] tmp_13_fu_1047_p17;
wire    ap_block_pp0_stage8;
wire   [63:0] bitcast_ln55_fu_1100_p1;
wire   [63:0] bitcast_ln55_1_fu_1118_p1;
wire   [10:0] tmp_2_fu_1104_p4;
wire   [51:0] trunc_ln55_fu_1114_p1;
wire   [0:0] icmp_ln55_1_fu_1141_p2;
wire   [0:0] icmp_ln55_fu_1135_p2;
wire   [10:0] tmp_3_fu_1121_p4;
wire   [51:0] trunc_ln55_1_fu_1131_p1;
wire   [0:0] icmp_ln55_3_fu_1159_p2;
wire   [0:0] icmp_ln55_2_fu_1153_p2;
wire   [0:0] or_ln55_fu_1147_p2;
wire   [0:0] and_ln55_fu_1171_p2;
wire   [0:0] or_ln55_1_fu_1165_p2;
wire   [63:0] bitcast_ln55_2_fu_1190_p1;
wire   [63:0] bitcast_ln55_3_fu_1207_p1;
wire   [10:0] tmp_7_fu_1193_p4;
wire   [51:0] trunc_ln55_2_fu_1203_p1;
wire   [0:0] icmp_ln55_5_fu_1230_p2;
wire   [0:0] icmp_ln55_4_fu_1224_p2;
wire   [10:0] tmp_8_fu_1210_p4;
wire   [51:0] trunc_ln55_3_fu_1220_p1;
wire   [0:0] icmp_ln55_7_fu_1248_p2;
wire   [0:0] icmp_ln55_6_fu_1242_p2;
wire   [0:0] or_ln55_3_fu_1254_p2;
wire   [0:0] or_ln55_2_fu_1236_p2;
wire   [0:0] and_ln55_2_fu_1260_p2;
wire   [7:0] zext_ln55_fu_1275_p1;
wire   [7:0] zext_ln55_1_fu_1291_p1;
wire   [7:0] min_s_4_fu_1278_p3;
wire    ap_block_pp0_stage6;
wire   [63:0] bitcast_ln55_4_fu_1301_p1;
wire   [63:0] bitcast_ln55_5_fu_1318_p1;
wire   [10:0] tmp_12_fu_1304_p4;
wire   [51:0] trunc_ln55_4_fu_1314_p1;
wire   [0:0] icmp_ln55_9_fu_1341_p2;
wire   [0:0] icmp_ln55_8_fu_1335_p2;
wire   [10:0] tmp_14_fu_1321_p4;
wire   [51:0] trunc_ln55_5_fu_1331_p1;
wire   [0:0] icmp_ln55_11_fu_1359_p2;
wire   [0:0] icmp_ln55_10_fu_1353_p2;
wire   [0:0] or_ln55_5_fu_1365_p2;
wire   [0:0] or_ln55_4_fu_1347_p2;
wire   [0:0] and_ln55_4_fu_1371_p2;
wire   [7:0] zext_ln55_2_fu_1383_p1;
wire   [63:0] bitcast_ln55_6_fu_1399_p1;
wire   [63:0] bitcast_ln55_7_fu_1417_p1;
wire   [10:0] tmp_17_fu_1403_p4;
wire   [51:0] trunc_ln55_6_fu_1413_p1;
wire   [0:0] icmp_ln55_13_fu_1440_p2;
wire   [0:0] icmp_ln55_12_fu_1434_p2;
wire   [10:0] tmp_18_fu_1420_p4;
wire   [51:0] trunc_ln55_7_fu_1430_p1;
wire   [0:0] icmp_ln55_15_fu_1458_p2;
wire   [0:0] icmp_ln55_14_fu_1452_p2;
wire   [0:0] or_ln55_7_fu_1464_p2;
wire   [0:0] or_ln55_6_fu_1446_p2;
wire   [0:0] and_ln55_6_fu_1470_p2;
wire   [0:0] and_ln55_7_fu_1476_p2;
wire   [7:0] zext_ln55_3_fu_1488_p1;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage7_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [8:0] ap_NS_fsm;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage4_00001;
wire   [2:0] tmp_1_fu_735_p1;
wire   [2:0] tmp_1_fu_735_p3;
wire   [2:0] tmp_1_fu_735_p5;
wire   [2:0] tmp_1_fu_735_p7;
wire  signed [2:0] tmp_1_fu_735_p9;
wire  signed [2:0] tmp_1_fu_735_p11;
wire  signed [2:0] tmp_1_fu_735_p13;
wire  signed [2:0] tmp_1_fu_735_p15;
wire   [2:0] tmp_6_fu_877_p1;
wire   [2:0] tmp_6_fu_877_p3;
wire   [2:0] tmp_6_fu_877_p5;
wire   [2:0] tmp_6_fu_877_p7;
wire  signed [2:0] tmp_6_fu_877_p9;
wire  signed [2:0] tmp_6_fu_877_p11;
wire  signed [2:0] tmp_6_fu_877_p13;
wire  signed [2:0] tmp_6_fu_877_p15;
wire   [2:0] tmp_11_fu_948_p1;
wire   [2:0] tmp_11_fu_948_p3;
wire   [2:0] tmp_11_fu_948_p5;
wire   [2:0] tmp_11_fu_948_p7;
wire  signed [2:0] tmp_11_fu_948_p9;
wire  signed [2:0] tmp_11_fu_948_p11;
wire  signed [2:0] tmp_11_fu_948_p13;
wire  signed [2:0] tmp_11_fu_948_p15;
wire   [2:0] tmp_13_fu_1047_p1;
wire   [2:0] tmp_13_fu_1047_p3;
wire   [2:0] tmp_13_fu_1047_p5;
wire   [2:0] tmp_13_fu_1047_p7;
wire  signed [2:0] tmp_13_fu_1047_p9;
wire  signed [2:0] tmp_13_fu_1047_p11;
wire  signed [2:0] tmp_13_fu_1047_p13;
wire  signed [2:0] tmp_13_fu_1047_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_124 = 64'd0;
#0 min_s_fu_128 = 8'd0;
#0 min_s_1_fu_132 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U58(.din0(tmp_1_fu_735_p2),.din1(tmp_1_fu_735_p4),.din2(tmp_1_fu_735_p6),.din3(tmp_1_fu_735_p8),.din4(tmp_1_fu_735_p10),.din5(tmp_1_fu_735_p12),.din6(tmp_1_fu_735_p14),.din7(tmp_1_fu_735_p16),.def(tmp_1_fu_735_p17),.sel(empty),.dout(tmp_1_fu_735_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U59(.din0(tmp_6_fu_877_p2),.din1(tmp_6_fu_877_p4),.din2(tmp_6_fu_877_p6),.din3(tmp_6_fu_877_p8),.din4(tmp_6_fu_877_p10),.din5(tmp_6_fu_877_p12),.din6(tmp_6_fu_877_p14),.din7(tmp_6_fu_877_p16),.def(tmp_6_fu_877_p17),.sel(empty),.dout(tmp_6_fu_877_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U60(.din0(tmp_11_fu_948_p2),.din1(tmp_11_fu_948_p4),.din2(tmp_11_fu_948_p6),.din3(tmp_11_fu_948_p8),.din4(tmp_11_fu_948_p10),.din5(tmp_11_fu_948_p12),.din6(tmp_11_fu_948_p14),.din7(tmp_11_fu_948_p16),.def(tmp_11_fu_948_p17),.sel(empty),.dout(tmp_11_fu_948_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U61(.din0(tmp_13_fu_1047_p2),.din1(tmp_13_fu_1047_p4),.din2(tmp_13_fu_1047_p6),.din3(tmp_13_fu_1047_p8),.din4(tmp_13_fu_1047_p10),.din5(tmp_13_fu_1047_p12),.din6(tmp_13_fu_1047_p14),.din7(tmp_13_fu_1047_p16),.def(tmp_13_fu_1047_p17),.sel(empty),.dout(tmp_13_fu_1047_p19));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage7)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            min_p_fu_124 <= min_p_12;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_p_fu_124 <= min_p_9_fu_1481_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_1_fu_132 <= 6'd1;
    end else if (((tmp_16_reg_1628 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        min_s_1_fu_132 <= add_ln53_3_fu_1086_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            min_s_fu_128 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_s_fu_128 <= min_s_7_fu_1491_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_1_reg_1611 <= add_ln53_1_fu_664_p2;
        add_ln53_1_reg_1611_pp0_iter1_reg <= add_ln53_1_reg_1611;
        add_ln53_2_reg_1622 <= add_ln53_2_fu_689_p2;
        add_ln53_reg_1600 <= add_ln53_fu_635_p2;
        add_ln53_reg_1600_pp0_iter1_reg <= add_ln53_reg_1600;
        s_reg_1549 <= ap_sig_allocacmp_s;
        s_reg_1549_pp0_iter1_reg <= s_reg_1549;
        tmp_16_reg_1628 <= add_ln53_2_fu_689_p2[32'd6];
        tmp_16_reg_1628_pp0_iter1_reg <= tmp_16_reg_1628;
        zext_ln52_2_cast_reg_1542[4 : 0] <= zext_ln52_2_cast_fu_560_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        and_ln55_1_reg_1816 <= and_ln55_1_fu_1177_p2;
        tmp_11_reg_1742 <= tmp_11_fu_948_p19;
        tmp_6_reg_1737 <= tmp_6_fu_877_p19;
        trunc_ln54_reg_1752 <= trunc_ln54_fu_987_p1;
        trunc_ln54_reg_1752_pp0_iter1_reg <= trunc_ln54_reg_1752;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln55_3_reg_1836 <= and_ln55_3_fu_1266_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln55_5_reg_1854 <= and_ln55_5_fu_1377_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_1_reg_1687 <= llike_1_q0;
        llike_1_load_reg_1632 <= llike_1_q1;
        llike_load_reg_1642 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_load_1_reg_1747 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        min_p_1_reg_1802 <= min_p_fu_124;
        tmp_1_reg_1637 <= tmp_1_fu_735_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_3_reg_1829 <= min_p_3_fu_1183_p3;
        tmp_13_reg_1797 <= tmp_13_fu_1047_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_5_reg_1842 <= min_p_5_fu_1285_p3;
        min_s_5_reg_1849 <= min_s_5_fu_1294_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_7_reg_1865 <= min_p_7_fu_1393_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_6_reg_1860 <= min_s_6_fu_1386_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        p_1_reg_1809 <= grp_fu_943_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        p_2_reg_1822 <= grp_fu_943_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_555 <= grp_fu_943_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_19_reg_1872 <= grp_fu_1955_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_16_reg_1628 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_16_reg_1628_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter1_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
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
        ap_sig_allocacmp_s = 6'd1;
    end else begin
        ap_sig_allocacmp_s = min_s_1_fu_132;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_547_p0 = llike_load_1_reg_1747;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_547_p0 = llike_1_load_1_reg_1687;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_547_p0 = llike_load_reg_1642;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_547_p0 = llike_1_load_reg_1632;
        end else begin
            grp_fu_547_p0 = 'bx;
        end
    end else begin
        grp_fu_547_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_547_p1 = tmp_13_reg_1797;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_547_p1 = tmp_11_reg_1742;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_547_p1 = tmp_6_reg_1737;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_547_p1 = tmp_1_reg_1637;
        end else begin
            grp_fu_547_p1 = 'bx;
        end
    end else begin
        grp_fu_547_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_551_p0 = p_2_reg_1822;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_551_p0 = p_1_reg_1809;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_551_p0 = reg_555;
    end else begin
        grp_fu_551_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_551_p1 = min_p_7_fu_1393_p3;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_551_p1 = min_p_5_fu_1285_p3;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_551_p1 = min_p_3_fu_1183_p3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_551_p1 = min_p_fu_124;
        end else begin
            grp_fu_551_p1 = 'bx;
        end
    end else begin
        grp_fu_551_p1 = 'bx;
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
            llike_address0_local = zext_ln54_8_fu_840_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln54_5_fu_659_p1;
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
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_11001) & (tmp_16_reg_1628_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_10_out_ap_vld = 1'b1;
    end else begin
        min_s_10_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln54_2_fu_810_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln54_fu_623_p1;
        end else begin
            transition_0_address0_local = 'bx;
        end
    end else begin
        transition_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address1_local = zext_ln54_3_fu_1003_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln54_1_fu_786_p1;
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
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_0_ce1_local = 1'b1;
    end else begin
        transition_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln54_2_fu_810_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln54_fu_623_p1;
        end else begin
            transition_1_address0_local = 'bx;
        end
    end else begin
        transition_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address1_local = zext_ln54_3_fu_1003_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln54_1_fu_786_p1;
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
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_1_ce1_local = 1'b1;
    end else begin
        transition_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address0_local = zext_ln54_2_fu_810_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address0_local = zext_ln54_fu_623_p1;
        end else begin
            transition_2_address0_local = 'bx;
        end
    end else begin
        transition_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_2_address1_local = zext_ln54_3_fu_1003_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address1_local = zext_ln54_1_fu_786_p1;
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
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_2_ce1_local = 1'b1;
    end else begin
        transition_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address0_local = zext_ln54_2_fu_810_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address0_local = zext_ln54_fu_623_p1;
        end else begin
            transition_3_address0_local = 'bx;
        end
    end else begin
        transition_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_3_address1_local = zext_ln54_3_fu_1003_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address1_local = zext_ln54_1_fu_786_p1;
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
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_3_ce1_local = 1'b1;
    end else begin
        transition_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_4_address0_local = zext_ln54_2_fu_810_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_4_address0_local = zext_ln54_fu_623_p1;
        end else begin
            transition_4_address0_local = 'bx;
        end
    end else begin
        transition_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_4_address1_local = zext_ln54_3_fu_1003_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_4_address1_local = zext_ln54_1_fu_786_p1;
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
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_4_ce1_local = 1'b1;
    end else begin
        transition_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_5_address0_local = zext_ln54_2_fu_810_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_5_address0_local = zext_ln54_fu_623_p1;
        end else begin
            transition_5_address0_local = 'bx;
        end
    end else begin
        transition_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_5_address1_local = zext_ln54_3_fu_1003_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_5_address1_local = zext_ln54_1_fu_786_p1;
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
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_5_ce1_local = 1'b1;
    end else begin
        transition_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_6_address0_local = zext_ln54_2_fu_810_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_6_address0_local = zext_ln54_fu_623_p1;
        end else begin
            transition_6_address0_local = 'bx;
        end
    end else begin
        transition_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_6_address1_local = zext_ln54_3_fu_1003_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_6_address1_local = zext_ln54_1_fu_786_p1;
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
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_6_ce1_local = 1'b1;
    end else begin
        transition_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_7_address0_local = zext_ln54_2_fu_810_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_7_address0_local = zext_ln54_fu_623_p1;
        end else begin
            transition_7_address0_local = 'bx;
        end
    end else begin
        transition_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_7_address1_local = zext_ln54_3_fu_1003_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_7_address1_local = zext_ln54_1_fu_786_p1;
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
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_7_ce1_local = 1'b1;
    end else begin
        transition_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage7))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
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
assign add_ln53_1_fu_664_p2 = (ap_sig_allocacmp_s + 6'd2);
assign add_ln53_2_fu_689_p2 = (zext_ln20_fu_582_p1 + 7'd3);
assign add_ln53_3_fu_1086_p2 = (s_reg_1549 + 6'd4);
assign add_ln53_fu_635_p2 = (ap_sig_allocacmp_s + 6'd1);
assign add_ln54_1_fu_781_p2 = (shl_ln54_1_fu_774_p3 + zext_ln52_2_cast_reg_1542);
assign add_ln54_2_fu_805_p2 = (shl_ln54_2_fu_798_p3 + zext_ln52_2_cast_reg_1542);
assign add_ln54_3_fu_998_p2 = (shl_ln54_3_fu_990_p3 + zext_ln52_2_cast_reg_1542);
assign add_ln54_4_fu_835_p2 = (zext_ln52_3 + zext_ln54_7_fu_831_p1);
assign add_ln54_fu_617_p2 = (shl_ln2_fu_609_p3 + zext_ln52_2_cast_fu_560_p1);
assign add_ln8_fu_670_p2 = (lshr_ln8_3_fu_586_p4 + 5'd1);
assign and_ln55_1_fu_1177_p2 = (or_ln55_1_fu_1165_p2 & and_ln55_fu_1171_p2);
assign and_ln55_2_fu_1260_p2 = (or_ln55_3_fu_1254_p2 & or_ln55_2_fu_1236_p2);
assign and_ln55_3_fu_1266_p2 = (grp_fu_1955_p_dout0 & and_ln55_2_fu_1260_p2);
assign and_ln55_4_fu_1371_p2 = (or_ln55_5_fu_1365_p2 & or_ln55_4_fu_1347_p2);
assign and_ln55_5_fu_1377_p2 = (grp_fu_1955_p_dout0 & and_ln55_4_fu_1371_p2);
assign and_ln55_6_fu_1470_p2 = (or_ln55_7_fu_1464_p2 & or_ln55_6_fu_1446_p2);
assign and_ln55_7_fu_1476_p2 = (tmp_19_reg_1872 & and_ln55_6_fu_1470_p2);
assign and_ln55_fu_1171_p2 = (or_ln55_fu_1147_p2 & grp_fu_1955_p_dout0);
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
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage8;
assign ap_ready = ap_ready_sig;
assign bitcast_ln55_1_fu_1118_p1 = min_p_1_reg_1802;
assign bitcast_ln55_2_fu_1190_p1 = p_1_reg_1809;
assign bitcast_ln55_3_fu_1207_p1 = min_p_3_reg_1829;
assign bitcast_ln55_4_fu_1301_p1 = p_2_reg_1822;
assign bitcast_ln55_5_fu_1318_p1 = min_p_5_reg_1842;
assign bitcast_ln55_6_fu_1399_p1 = reg_555;
assign bitcast_ln55_7_fu_1417_p1 = min_p_7_reg_1865;
assign bitcast_ln55_fu_1100_p1 = reg_555;
assign grp_fu_1955_p_ce = 1'b1;
assign grp_fu_1955_p_din0 = grp_fu_551_p0;
assign grp_fu_1955_p_din1 = grp_fu_551_p1;
assign grp_fu_1955_p_opcode = 5'd4;
assign grp_fu_943_p_ce = 1'b1;
assign grp_fu_943_p_din0 = grp_fu_547_p0;
assign grp_fu_943_p_din1 = grp_fu_547_p1;
assign grp_fu_943_p_opcode = 2'd0;
assign icmp_ln55_10_fu_1353_p2 = ((tmp_14_fu_1321_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_11_fu_1359_p2 = ((trunc_ln55_5_fu_1331_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_12_fu_1434_p2 = ((tmp_17_fu_1403_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_13_fu_1440_p2 = ((trunc_ln55_6_fu_1413_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_14_fu_1452_p2 = ((tmp_18_fu_1420_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_15_fu_1458_p2 = ((trunc_ln55_7_fu_1430_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_1_fu_1141_p2 = ((trunc_ln55_fu_1114_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_1153_p2 = ((tmp_3_fu_1121_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_1159_p2 = ((trunc_ln55_1_fu_1131_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_1224_p2 = ((tmp_7_fu_1193_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_1230_p2 = ((trunc_ln55_2_fu_1203_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_1242_p2 = ((tmp_8_fu_1210_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_1248_p2 = ((trunc_ln55_3_fu_1220_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_8_fu_1335_p2 = ((tmp_12_fu_1304_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_9_fu_1341_p2 = ((trunc_ln55_4_fu_1314_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_1135_p2 = ((tmp_2_fu_1104_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = zext_ln54_6_fu_684_p1;
assign llike_1_address1 = zext_ln54_4_fu_604_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_ce1 = llike_1_ce1_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln8_3_fu_586_p4 = {{ap_sig_allocacmp_s[5:1]}};
assign lshr_ln8_4_fu_641_p4 = {{add_ln53_fu_635_p2[5:1]}};
assign lshr_ln9_3_fu_822_p4 = {{add_ln53_2_reg_1622[6:1]}};
assign min_p_3_fu_1183_p3 = ((and_ln55_1_reg_1816[0:0] == 1'b1) ? reg_555 : min_p_1_reg_1802);
assign min_p_5_fu_1285_p3 = ((and_ln55_3_reg_1836[0:0] == 1'b1) ? p_1_reg_1809 : min_p_3_reg_1829);
assign min_p_7_fu_1393_p3 = ((and_ln55_5_reg_1854[0:0] == 1'b1) ? p_2_reg_1822 : min_p_5_reg_1842);
assign min_p_9_fu_1481_p3 = ((and_ln55_7_fu_1476_p2[0:0] == 1'b1) ? reg_555 : min_p_7_reg_1865);
assign min_s_10_out = ((and_ln55_5_reg_1854[0:0] == 1'b1) ? zext_ln55_2_fu_1383_p1 : min_s_5_reg_1849);
assign min_s_4_fu_1278_p3 = ((and_ln55_1_reg_1816[0:0] == 1'b1) ? zext_ln55_fu_1275_p1 : min_s_fu_128);
assign min_s_5_fu_1294_p3 = ((and_ln55_3_reg_1836[0:0] == 1'b1) ? zext_ln55_1_fu_1291_p1 : min_s_4_fu_1278_p3);
assign min_s_6_fu_1386_p3 = ((and_ln55_5_reg_1854[0:0] == 1'b1) ? zext_ln55_2_fu_1383_p1 : min_s_5_reg_1849);
assign min_s_7_fu_1491_p3 = ((and_ln55_7_fu_1476_p2[0:0] == 1'b1) ? zext_ln55_3_fu_1488_p1 : min_s_6_reg_1860);
assign or_ln55_1_fu_1165_p2 = (icmp_ln55_3_fu_1159_p2 | icmp_ln55_2_fu_1153_p2);
assign or_ln55_2_fu_1236_p2 = (icmp_ln55_5_fu_1230_p2 | icmp_ln55_4_fu_1224_p2);
assign or_ln55_3_fu_1254_p2 = (icmp_ln55_7_fu_1248_p2 | icmp_ln55_6_fu_1242_p2);
assign or_ln55_4_fu_1347_p2 = (icmp_ln55_9_fu_1341_p2 | icmp_ln55_8_fu_1335_p2);
assign or_ln55_5_fu_1365_p2 = (icmp_ln55_11_fu_1359_p2 | icmp_ln55_10_fu_1353_p2);
assign or_ln55_6_fu_1446_p2 = (icmp_ln55_13_fu_1440_p2 | icmp_ln55_12_fu_1434_p2);
assign or_ln55_7_fu_1464_p2 = (icmp_ln55_15_fu_1458_p2 | icmp_ln55_14_fu_1452_p2);
assign or_ln55_fu_1147_p2 = (icmp_ln55_fu_1135_p2 | icmp_ln55_1_fu_1141_p2);
assign shl_ln2_fu_609_p3 = {{ap_sig_allocacmp_s}, {3'd0}};
assign shl_ln54_1_fu_774_p3 = {{add_ln53_reg_1600}, {3'd0}};
assign shl_ln54_2_fu_798_p3 = {{add_ln53_1_reg_1611}, {3'd0}};
assign shl_ln54_3_fu_990_p3 = {{trunc_ln54_fu_987_p1}, {3'd0}};
assign tmp_10_fu_676_p3 = {{t_1}, {add_ln8_fu_670_p2}};
assign tmp_11_fu_948_p10 = transition_4_q0;
assign tmp_11_fu_948_p12 = transition_5_q0;
assign tmp_11_fu_948_p14 = transition_6_q0;
assign tmp_11_fu_948_p16 = transition_7_q0;
assign tmp_11_fu_948_p17 = 'bx;
assign tmp_11_fu_948_p2 = transition_0_q0;
assign tmp_11_fu_948_p4 = transition_1_q0;
assign tmp_11_fu_948_p6 = transition_2_q0;
assign tmp_11_fu_948_p8 = transition_3_q0;
assign tmp_12_fu_1304_p4 = {{bitcast_ln55_4_fu_1301_p1[62:52]}};
assign tmp_13_fu_1047_p10 = transition_4_q1;
assign tmp_13_fu_1047_p12 = transition_5_q1;
assign tmp_13_fu_1047_p14 = transition_6_q1;
assign tmp_13_fu_1047_p16 = transition_7_q1;
assign tmp_13_fu_1047_p17 = 'bx;
assign tmp_13_fu_1047_p2 = transition_0_q1;
assign tmp_13_fu_1047_p4 = transition_1_q1;
assign tmp_13_fu_1047_p6 = transition_2_q1;
assign tmp_13_fu_1047_p8 = transition_3_q1;
assign tmp_14_fu_1321_p4 = {{bitcast_ln55_5_fu_1318_p1[62:52]}};
assign tmp_17_fu_1403_p4 = {{bitcast_ln55_6_fu_1399_p1[62:52]}};
assign tmp_18_fu_1420_p4 = {{bitcast_ln55_7_fu_1417_p1[62:52]}};
assign tmp_1_fu_735_p10 = transition_4_q0;
assign tmp_1_fu_735_p12 = transition_5_q0;
assign tmp_1_fu_735_p14 = transition_6_q0;
assign tmp_1_fu_735_p16 = transition_7_q0;
assign tmp_1_fu_735_p17 = 'bx;
assign tmp_1_fu_735_p2 = transition_0_q0;
assign tmp_1_fu_735_p4 = transition_1_q0;
assign tmp_1_fu_735_p6 = transition_2_q0;
assign tmp_1_fu_735_p8 = transition_3_q0;
assign tmp_2_fu_1104_p4 = {{bitcast_ln55_fu_1100_p1[62:52]}};
assign tmp_3_fu_1121_p4 = {{bitcast_ln55_1_fu_1118_p1[62:52]}};
assign tmp_5_fu_651_p3 = {{t_1}, {lshr_ln8_4_fu_641_p4}};
assign tmp_6_fu_877_p10 = transition_4_q1;
assign tmp_6_fu_877_p12 = transition_5_q1;
assign tmp_6_fu_877_p14 = transition_6_q1;
assign tmp_6_fu_877_p16 = transition_7_q1;
assign tmp_6_fu_877_p17 = 'bx;
assign tmp_6_fu_877_p2 = transition_0_q1;
assign tmp_6_fu_877_p4 = transition_1_q1;
assign tmp_6_fu_877_p6 = transition_2_q1;
assign tmp_6_fu_877_p8 = transition_3_q1;
assign tmp_7_fu_1193_p4 = {{bitcast_ln55_2_fu_1190_p1[62:52]}};
assign tmp_8_fu_1210_p4 = {{bitcast_ln55_3_fu_1207_p1[62:52]}};
assign tmp_s_fu_596_p3 = {{t_1}, {lshr_ln8_3_fu_586_p4}};
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
assign trunc_ln54_fu_987_p1 = add_ln53_2_reg_1622[5:0];
assign trunc_ln55_1_fu_1131_p1 = bitcast_ln55_1_fu_1118_p1[51:0];
assign trunc_ln55_2_fu_1203_p1 = bitcast_ln55_2_fu_1190_p1[51:0];
assign trunc_ln55_3_fu_1220_p1 = bitcast_ln55_3_fu_1207_p1[51:0];
assign trunc_ln55_4_fu_1314_p1 = bitcast_ln55_4_fu_1301_p1[51:0];
assign trunc_ln55_5_fu_1331_p1 = bitcast_ln55_5_fu_1318_p1[51:0];
assign trunc_ln55_6_fu_1413_p1 = bitcast_ln55_6_fu_1399_p1[51:0];
assign trunc_ln55_7_fu_1430_p1 = bitcast_ln55_7_fu_1417_p1[51:0];
assign trunc_ln55_fu_1114_p1 = bitcast_ln55_fu_1100_p1[51:0];
assign zext_ln20_fu_582_p1 = ap_sig_allocacmp_s;
assign zext_ln52_2_cast_fu_560_p1 = zext_ln52_2;
assign zext_ln54_1_fu_786_p1 = add_ln54_1_fu_781_p2;
assign zext_ln54_2_fu_810_p1 = add_ln54_2_fu_805_p2;
assign zext_ln54_3_fu_1003_p1 = add_ln54_3_fu_998_p2;
assign zext_ln54_4_fu_604_p1 = tmp_s_fu_596_p3;
assign zext_ln54_5_fu_659_p1 = tmp_5_fu_651_p3;
assign zext_ln54_6_fu_684_p1 = tmp_10_fu_676_p3;
assign zext_ln54_7_fu_831_p1 = lshr_ln9_3_fu_822_p4;
assign zext_ln54_8_fu_840_p1 = add_ln54_4_fu_835_p2;
assign zext_ln54_fu_623_p1 = add_ln54_fu_617_p2;
assign zext_ln55_1_fu_1291_p1 = add_ln53_reg_1600_pp0_iter1_reg;
assign zext_ln55_2_fu_1383_p1 = add_ln53_1_reg_1611_pp0_iter1_reg;
assign zext_ln55_3_fu_1488_p1 = trunc_ln54_reg_1752_pp0_iter1_reg;
assign zext_ln55_fu_1275_p1 = s_reg_1549_pp0_iter1_reg;
always @ (posedge ap_clk) begin
    zext_ln52_2_cast_reg_1542[8:5] <= 4'b0000;
end
endmodule 