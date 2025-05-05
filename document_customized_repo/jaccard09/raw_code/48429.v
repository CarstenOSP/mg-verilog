module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_8,t_1,llike_address0,llike_ce0,llike_q0,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,llike_4_address0,llike_4_ce0,llike_4_q0,llike_5_address0,llike_5_ce0,llike_5_q0,llike_6_address0,llike_6_ce0,llike_6_q0,llike_7_address0,llike_7_ce0,llike_7_q0,llike_8_address0,llike_8_ce0,llike_8_q0,llike_9_address0,llike_9_ce0,llike_9_q0,llike_10_address0,llike_10_ce0,llike_10_q0,llike_11_address0,llike_11_ce0,llike_11_q0,llike_12_address0,llike_12_ce0,llike_12_q0,llike_13_address0,llike_13_ce0,llike_13_q0,llike_14_address0,llike_14_ce0,llike_14_q0,llike_15_address0,llike_15_ce0,llike_15_q0,llike_16_address0,llike_16_ce0,llike_16_q0,llike_17_address0,llike_17_ce0,llike_17_q0,llike_18_address0,llike_18_ce0,llike_18_q0,llike_19_address0,llike_19_ce0,llike_19_q0,llike_20_address0,llike_20_ce0,llike_20_q0,llike_21_address0,llike_21_ce0,llike_21_q0,llike_22_address0,llike_22_ce0,llike_22_q0,llike_23_address0,llike_23_ce0,llike_23_q0,llike_24_address0,llike_24_ce0,llike_24_q0,llike_25_address0,llike_25_ce0,llike_25_q0,llike_26_address0,llike_26_ce0,llike_26_q0,llike_27_address0,llike_27_ce0,llike_27_q0,llike_28_address0,llike_28_ce0,llike_28_q0,llike_29_address0,llike_29_ce0,llike_29_q0,llike_30_address0,llike_30_ce0,llike_30_q0,llike_31_address0,llike_31_ce0,llike_31_q0,zext_ln52,transition_address0,transition_ce0,transition_q0,zext_ln52_2,min_s_6_out,min_s_6_out_ap_vld,grp_fu_964_p_din0,grp_fu_964_p_din1,grp_fu_964_p_opcode,grp_fu_964_p_dout0,grp_fu_964_p_ce,grp_fu_1427_p_din0,grp_fu_1427_p_din1,grp_fu_1427_p_opcode,grp_fu_1427_p_dout0,grp_fu_1427_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 5'd1;
parameter    ap_ST_fsm_pp0_stage1 = 5'd2;
parameter    ap_ST_fsm_pp0_stage2 = 5'd4;
parameter    ap_ST_fsm_pp0_stage3 = 5'd8;
parameter    ap_ST_fsm_pp0_stage4 = 5'd16;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] min_p_8;
input  [7:0] t_1;
output  [8:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [8:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [8:0] llike_2_address0;
output   llike_2_ce0;
input  [63:0] llike_2_q0;
output  [8:0] llike_3_address0;
output   llike_3_ce0;
input  [63:0] llike_3_q0;
output  [8:0] llike_4_address0;
output   llike_4_ce0;
input  [63:0] llike_4_q0;
output  [8:0] llike_5_address0;
output   llike_5_ce0;
input  [63:0] llike_5_q0;
output  [8:0] llike_6_address0;
output   llike_6_ce0;
input  [63:0] llike_6_q0;
output  [8:0] llike_7_address0;
output   llike_7_ce0;
input  [63:0] llike_7_q0;
output  [8:0] llike_8_address0;
output   llike_8_ce0;
input  [63:0] llike_8_q0;
output  [8:0] llike_9_address0;
output   llike_9_ce0;
input  [63:0] llike_9_q0;
output  [8:0] llike_10_address0;
output   llike_10_ce0;
input  [63:0] llike_10_q0;
output  [8:0] llike_11_address0;
output   llike_11_ce0;
input  [63:0] llike_11_q0;
output  [8:0] llike_12_address0;
output   llike_12_ce0;
input  [63:0] llike_12_q0;
output  [8:0] llike_13_address0;
output   llike_13_ce0;
input  [63:0] llike_13_q0;
output  [8:0] llike_14_address0;
output   llike_14_ce0;
input  [63:0] llike_14_q0;
output  [8:0] llike_15_address0;
output   llike_15_ce0;
input  [63:0] llike_15_q0;
output  [8:0] llike_16_address0;
output   llike_16_ce0;
input  [63:0] llike_16_q0;
output  [8:0] llike_17_address0;
output   llike_17_ce0;
input  [63:0] llike_17_q0;
output  [8:0] llike_18_address0;
output   llike_18_ce0;
input  [63:0] llike_18_q0;
output  [8:0] llike_19_address0;
output   llike_19_ce0;
input  [63:0] llike_19_q0;
output  [8:0] llike_20_address0;
output   llike_20_ce0;
input  [63:0] llike_20_q0;
output  [8:0] llike_21_address0;
output   llike_21_ce0;
input  [63:0] llike_21_q0;
output  [8:0] llike_22_address0;
output   llike_22_ce0;
input  [63:0] llike_22_q0;
output  [8:0] llike_23_address0;
output   llike_23_ce0;
input  [63:0] llike_23_q0;
output  [8:0] llike_24_address0;
output   llike_24_ce0;
input  [63:0] llike_24_q0;
output  [8:0] llike_25_address0;
output   llike_25_ce0;
input  [63:0] llike_25_q0;
output  [8:0] llike_26_address0;
output   llike_26_ce0;
input  [63:0] llike_26_q0;
output  [8:0] llike_27_address0;
output   llike_27_ce0;
input  [63:0] llike_27_q0;
output  [8:0] llike_28_address0;
output   llike_28_ce0;
input  [63:0] llike_28_q0;
output  [8:0] llike_29_address0;
output   llike_29_ce0;
input  [63:0] llike_29_q0;
output  [8:0] llike_30_address0;
output   llike_30_ce0;
input  [63:0] llike_30_q0;
output  [8:0] llike_31_address0;
output   llike_31_ce0;
input  [63:0] llike_31_q0;
input  [7:0] zext_ln52;
output  [11:0] transition_address0;
output   transition_ce0;
input  [63:0] transition_q0;
input  [8:0] zext_ln52_2;
output  [7:0] min_s_6_out;
output   min_s_6_out_ap_vld;
output  [63:0] grp_fu_964_p_din0;
output  [63:0] grp_fu_964_p_din1;
output  [1:0] grp_fu_964_p_opcode;
input  [63:0] grp_fu_964_p_dout0;
output   grp_fu_964_p_ce;
output  [63:0] grp_fu_1427_p_din0;
output  [63:0] grp_fu_1427_p_din1;
output  [4:0] grp_fu_1427_p_opcode;
input  [0:0] grp_fu_1427_p_dout0;
output   grp_fu_1427_p_ce;
reg ap_idle;
reg min_s_6_out_ap_vld;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_subdone;
reg   [0:0] tmp_5_reg_1865;
reg    ap_condition_exit_pp0_iter0_stage4;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_954;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage0_11001;
wire   [11:0] zext_ln52_cast_fu_958_p1;
reg   [11:0] zext_ln52_cast_reg_1677;
reg   [5:0] s_reg_1682;
reg   [5:0] s_reg_1682_pp0_iter1_reg;
reg   [5:0] s_reg_1682_pp0_iter2_reg;
wire   [4:0] trunc_ln16_fu_984_p1;
reg   [4:0] trunc_ln16_reg_1688;
wire   [6:0] add_ln53_fu_1059_p2;
reg   [6:0] add_ln53_reg_1859;
reg   [0:0] tmp_5_reg_1865_pp0_iter1_reg;
reg   [0:0] tmp_5_reg_1865_pp0_iter2_reg;
wire   [63:0] tmp_s_fu_1073_p67;
reg   [63:0] tmp_s_reg_1869;
wire   [5:0] trunc_ln54_fu_1262_p1;
reg   [5:0] trunc_ln54_reg_2034;
reg   [5:0] trunc_ln54_reg_2034_pp0_iter1_reg;
reg   [5:0] trunc_ln54_reg_2034_pp0_iter2_reg;
wire   [63:0] bitcast_ln54_fu_1283_p1;
wire   [63:0] tmp_8_fu_1288_p67;
reg   [63:0] tmp_8_reg_2049;
wire   [63:0] bitcast_ln54_1_fu_1423_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] p_reg_2059;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] min_p_1_reg_2066;
reg   [63:0] p_1_reg_2073;
wire   [0:0] and_ln55_1_fu_1518_p2;
reg   [0:0] and_ln55_1_reg_2080;
wire   [7:0] min_s_4_fu_1530_p3;
reg   [7:0] min_s_4_reg_2086;
wire   [63:0] min_p_3_fu_1538_p3;
reg   [63:0] min_p_3_reg_2091;
reg   [0:0] tmp_9_reg_2098;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
reg    ap_condition_exit_pp0_iter2_stage2;
wire   [63:0] zext_ln54_2_fu_1004_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_1054_p1;
wire   [63:0] zext_ln54_4_fu_1226_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_1_fu_1278_p1;
reg   [63:0] min_p_fu_210;
wire   [63:0] min_p_5_fu_1625_p3;
wire    ap_loop_init;
reg   [7:0] min_s_fu_214;
wire   [7:0] min_s_5_fu_1634_p3;
wire    ap_block_pp0_stage2;
reg   [5:0] min_s_1_fu_218;
wire   [5:0] add_ln53_1_fu_1428_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
wire    ap_block_pp0_stage2_01001;
reg    llike_ce0_local;
reg   [8:0] llike_address0_local;
reg    llike_1_ce0_local;
reg   [8:0] llike_1_address0_local;
reg    llike_2_ce0_local;
reg   [8:0] llike_2_address0_local;
reg    llike_3_ce0_local;
reg   [8:0] llike_3_address0_local;
reg    llike_4_ce0_local;
reg   [8:0] llike_4_address0_local;
reg    llike_5_ce0_local;
reg   [8:0] llike_5_address0_local;
reg    llike_6_ce0_local;
reg   [8:0] llike_6_address0_local;
reg    llike_7_ce0_local;
reg   [8:0] llike_7_address0_local;
reg    llike_8_ce0_local;
reg   [8:0] llike_8_address0_local;
reg    llike_9_ce0_local;
reg   [8:0] llike_9_address0_local;
reg    llike_10_ce0_local;
reg   [8:0] llike_10_address0_local;
reg    llike_11_ce0_local;
reg   [8:0] llike_11_address0_local;
reg    llike_12_ce0_local;
reg   [8:0] llike_12_address0_local;
reg    llike_13_ce0_local;
reg   [8:0] llike_13_address0_local;
reg    llike_14_ce0_local;
reg   [8:0] llike_14_address0_local;
reg    llike_15_ce0_local;
reg   [8:0] llike_15_address0_local;
reg    llike_16_ce0_local;
reg   [8:0] llike_16_address0_local;
reg    llike_17_ce0_local;
reg   [8:0] llike_17_address0_local;
reg    llike_18_ce0_local;
reg   [8:0] llike_18_address0_local;
reg    llike_19_ce0_local;
reg   [8:0] llike_19_address0_local;
reg    llike_20_ce0_local;
reg   [8:0] llike_20_address0_local;
reg    llike_21_ce0_local;
reg   [8:0] llike_21_address0_local;
reg    llike_22_ce0_local;
reg   [8:0] llike_22_address0_local;
reg    llike_23_ce0_local;
reg   [8:0] llike_23_address0_local;
reg    llike_24_ce0_local;
reg   [8:0] llike_24_address0_local;
reg    llike_25_ce0_local;
reg   [8:0] llike_25_address0_local;
reg    llike_26_ce0_local;
reg   [8:0] llike_26_address0_local;
reg    llike_27_ce0_local;
reg   [8:0] llike_27_address0_local;
reg    llike_28_ce0_local;
reg   [8:0] llike_28_address0_local;
reg    llike_29_ce0_local;
reg   [8:0] llike_29_address0_local;
reg    llike_30_ce0_local;
reg   [8:0] llike_30_address0_local;
reg    llike_31_ce0_local;
reg   [8:0] llike_31_address0_local;
reg    transition_ce0_local;
reg   [11:0] transition_address0_local;
reg   [63:0] grp_fu_946_p0;
reg   [63:0] grp_fu_946_p1;
wire    ap_block_pp0_stage3;
reg   [63:0] grp_fu_950_p0;
reg   [63:0] grp_fu_950_p1;
wire   [0:0] tmp_fu_988_p3;
wire   [8:0] tmp_1_fu_996_p3;
wire   [11:0] shl_ln3_fu_1040_p3;
wire   [11:0] add_ln54_fu_1048_p2;
wire   [6:0] zext_ln16_fu_980_p1;
wire   [63:0] tmp_s_fu_1073_p65;
wire   [1:0] lshr_ln9_2_fu_1208_p4;
wire   [8:0] zext_ln54_3_fu_1217_p1;
wire   [8:0] add_ln54_2_fu_1221_p2;
wire   [11:0] shl_ln54_1_fu_1265_p3;
wire   [11:0] add_ln54_1_fu_1273_p2;
wire   [63:0] tmp_8_fu_1288_p65;
wire    ap_block_pp0_stage4;
wire   [63:0] bitcast_ln55_fu_1442_p1;
wire   [63:0] bitcast_ln55_1_fu_1459_p1;
wire   [10:0] tmp_2_fu_1445_p4;
wire   [51:0] trunc_ln55_fu_1455_p1;
wire   [0:0] icmp_ln55_1_fu_1482_p2;
wire   [0:0] icmp_ln55_fu_1476_p2;
wire   [10:0] tmp_3_fu_1462_p4;
wire   [51:0] trunc_ln55_1_fu_1472_p1;
wire   [0:0] icmp_ln55_3_fu_1500_p2;
wire   [0:0] icmp_ln55_2_fu_1494_p2;
wire   [0:0] or_ln55_fu_1488_p2;
wire   [0:0] and_ln55_fu_1512_p2;
wire   [0:0] or_ln55_1_fu_1506_p2;
wire   [7:0] zext_ln55_fu_1527_p1;
wire   [63:0] bitcast_ln55_2_fu_1544_p1;
wire   [63:0] bitcast_ln55_3_fu_1561_p1;
wire   [10:0] tmp_6_fu_1547_p4;
wire   [51:0] trunc_ln55_2_fu_1557_p1;
wire   [0:0] icmp_ln55_5_fu_1584_p2;
wire   [0:0] icmp_ln55_4_fu_1578_p2;
wire   [10:0] tmp_7_fu_1564_p4;
wire   [51:0] trunc_ln55_3_fu_1574_p1;
wire   [0:0] icmp_ln55_7_fu_1602_p2;
wire   [0:0] icmp_ln55_6_fu_1596_p2;
wire   [0:0] or_ln55_3_fu_1608_p2;
wire   [0:0] or_ln55_2_fu_1590_p2;
wire   [0:0] and_ln55_2_fu_1614_p2;
wire   [0:0] and_ln55_3_fu_1620_p2;
wire   [7:0] zext_ln55_1_fu_1631_p1;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage2_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [4:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage3_00001;
wire   [4:0] tmp_s_fu_1073_p1;
wire   [4:0] tmp_s_fu_1073_p3;
wire   [4:0] tmp_s_fu_1073_p5;
wire   [4:0] tmp_s_fu_1073_p7;
wire   [4:0] tmp_s_fu_1073_p9;
wire   [4:0] tmp_s_fu_1073_p11;
wire   [4:0] tmp_s_fu_1073_p13;
wire   [4:0] tmp_s_fu_1073_p15;
wire   [4:0] tmp_s_fu_1073_p17;
wire   [4:0] tmp_s_fu_1073_p19;
wire   [4:0] tmp_s_fu_1073_p21;
wire   [4:0] tmp_s_fu_1073_p23;
wire   [4:0] tmp_s_fu_1073_p25;
wire   [4:0] tmp_s_fu_1073_p27;
wire   [4:0] tmp_s_fu_1073_p29;
wire   [4:0] tmp_s_fu_1073_p31;
wire  signed [4:0] tmp_s_fu_1073_p33;
wire  signed [4:0] tmp_s_fu_1073_p35;
wire  signed [4:0] tmp_s_fu_1073_p37;
wire  signed [4:0] tmp_s_fu_1073_p39;
wire  signed [4:0] tmp_s_fu_1073_p41;
wire  signed [4:0] tmp_s_fu_1073_p43;
wire  signed [4:0] tmp_s_fu_1073_p45;
wire  signed [4:0] tmp_s_fu_1073_p47;
wire  signed [4:0] tmp_s_fu_1073_p49;
wire  signed [4:0] tmp_s_fu_1073_p51;
wire  signed [4:0] tmp_s_fu_1073_p53;
wire  signed [4:0] tmp_s_fu_1073_p55;
wire  signed [4:0] tmp_s_fu_1073_p57;
wire  signed [4:0] tmp_s_fu_1073_p59;
wire  signed [4:0] tmp_s_fu_1073_p61;
wire  signed [4:0] tmp_s_fu_1073_p63;
wire  signed [4:0] tmp_8_fu_1288_p1;
wire   [4:0] tmp_8_fu_1288_p3;
wire   [4:0] tmp_8_fu_1288_p5;
wire   [4:0] tmp_8_fu_1288_p7;
wire   [4:0] tmp_8_fu_1288_p9;
wire   [4:0] tmp_8_fu_1288_p11;
wire   [4:0] tmp_8_fu_1288_p13;
wire   [4:0] tmp_8_fu_1288_p15;
wire   [4:0] tmp_8_fu_1288_p17;
wire   [4:0] tmp_8_fu_1288_p19;
wire   [4:0] tmp_8_fu_1288_p21;
wire   [4:0] tmp_8_fu_1288_p23;
wire   [4:0] tmp_8_fu_1288_p25;
wire   [4:0] tmp_8_fu_1288_p27;
wire   [4:0] tmp_8_fu_1288_p29;
wire   [4:0] tmp_8_fu_1288_p31;
wire   [4:0] tmp_8_fu_1288_p33;
wire  signed [4:0] tmp_8_fu_1288_p35;
wire  signed [4:0] tmp_8_fu_1288_p37;
wire  signed [4:0] tmp_8_fu_1288_p39;
wire  signed [4:0] tmp_8_fu_1288_p41;
wire  signed [4:0] tmp_8_fu_1288_p43;
wire  signed [4:0] tmp_8_fu_1288_p45;
wire  signed [4:0] tmp_8_fu_1288_p47;
wire  signed [4:0] tmp_8_fu_1288_p49;
wire  signed [4:0] tmp_8_fu_1288_p51;
wire  signed [4:0] tmp_8_fu_1288_p53;
wire  signed [4:0] tmp_8_fu_1288_p55;
wire  signed [4:0] tmp_8_fu_1288_p57;
wire  signed [4:0] tmp_8_fu_1288_p59;
wire  signed [4:0] tmp_8_fu_1288_p61;
wire  signed [4:0] tmp_8_fu_1288_p63;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_210 = 64'd0;
#0 min_s_fu_214 = 8'd0;
#0 min_s_1_fu_218 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_65_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h1 ),.din1_WIDTH( 64 ),.CASE2( 5'h2 ),.din2_WIDTH( 64 ),.CASE3( 5'h3 ),.din3_WIDTH( 64 ),.CASE4( 5'h4 ),.din4_WIDTH( 64 ),.CASE5( 5'h5 ),.din5_WIDTH( 64 ),.CASE6( 5'h6 ),.din6_WIDTH( 64 ),.CASE7( 5'h7 ),.din7_WIDTH( 64 ),.CASE8( 5'h8 ),.din8_WIDTH( 64 ),.CASE9( 5'h9 ),.din9_WIDTH( 64 ),.CASE10( 5'hA ),.din10_WIDTH( 64 ),.CASE11( 5'hB ),.din11_WIDTH( 64 ),.CASE12( 5'hC ),.din12_WIDTH( 64 ),.CASE13( 5'hD ),.din13_WIDTH( 64 ),.CASE14( 5'hE ),.din14_WIDTH( 64 ),.CASE15( 5'hF ),.din15_WIDTH( 64 ),.CASE16( 5'h10 ),.din16_WIDTH( 64 ),.CASE17( 5'h11 ),.din17_WIDTH( 64 ),.CASE18( 5'h12 ),.din18_WIDTH( 64 ),.CASE19( 5'h13 ),.din19_WIDTH( 64 ),.CASE20( 5'h14 ),.din20_WIDTH( 64 ),.CASE21( 5'h15 ),.din21_WIDTH( 64 ),.CASE22( 5'h16 ),.din22_WIDTH( 64 ),.CASE23( 5'h17 ),.din23_WIDTH( 64 ),.CASE24( 5'h18 ),.din24_WIDTH( 64 ),.CASE25( 5'h19 ),.din25_WIDTH( 64 ),.CASE26( 5'h1A ),.din26_WIDTH( 64 ),.CASE27( 5'h1B ),.din27_WIDTH( 64 ),.CASE28( 5'h1C ),.din28_WIDTH( 64 ),.CASE29( 5'h1D ),.din29_WIDTH( 64 ),.CASE30( 5'h1E ),.din30_WIDTH( 64 ),.CASE31( 5'h1F ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_65_5_64_1_1_U122(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.din16(llike_16_q0),.din17(llike_17_q0),.din18(llike_18_q0),.din19(llike_19_q0),.din20(llike_20_q0),.din21(llike_21_q0),.din22(llike_22_q0),.din23(llike_23_q0),.din24(llike_24_q0),.din25(llike_25_q0),.din26(llike_26_q0),.din27(llike_27_q0),.din28(llike_28_q0),.din29(llike_29_q0),.din30(llike_30_q0),.din31(llike_31_q0),.def(tmp_s_fu_1073_p65),.sel(trunc_ln16_reg_1688),.dout(tmp_s_fu_1073_p67));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_65_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h1F ),.din0_WIDTH( 64 ),.CASE1( 5'h0 ),.din1_WIDTH( 64 ),.CASE2( 5'h1 ),.din2_WIDTH( 64 ),.CASE3( 5'h2 ),.din3_WIDTH( 64 ),.CASE4( 5'h3 ),.din4_WIDTH( 64 ),.CASE5( 5'h4 ),.din5_WIDTH( 64 ),.CASE6( 5'h5 ),.din6_WIDTH( 64 ),.CASE7( 5'h6 ),.din7_WIDTH( 64 ),.CASE8( 5'h7 ),.din8_WIDTH( 64 ),.CASE9( 5'h8 ),.din9_WIDTH( 64 ),.CASE10( 5'h9 ),.din10_WIDTH( 64 ),.CASE11( 5'hA ),.din11_WIDTH( 64 ),.CASE12( 5'hB ),.din12_WIDTH( 64 ),.CASE13( 5'hC ),.din13_WIDTH( 64 ),.CASE14( 5'hD ),.din14_WIDTH( 64 ),.CASE15( 5'hE ),.din15_WIDTH( 64 ),.CASE16( 5'hF ),.din16_WIDTH( 64 ),.CASE17( 5'h10 ),.din17_WIDTH( 64 ),.CASE18( 5'h11 ),.din18_WIDTH( 64 ),.CASE19( 5'h12 ),.din19_WIDTH( 64 ),.CASE20( 5'h13 ),.din20_WIDTH( 64 ),.CASE21( 5'h14 ),.din21_WIDTH( 64 ),.CASE22( 5'h15 ),.din22_WIDTH( 64 ),.CASE23( 5'h16 ),.din23_WIDTH( 64 ),.CASE24( 5'h17 ),.din24_WIDTH( 64 ),.CASE25( 5'h18 ),.din25_WIDTH( 64 ),.CASE26( 5'h19 ),.din26_WIDTH( 64 ),.CASE27( 5'h1A ),.din27_WIDTH( 64 ),.CASE28( 5'h1B ),.din28_WIDTH( 64 ),.CASE29( 5'h1C ),.din29_WIDTH( 64 ),.CASE30( 5'h1D ),.din30_WIDTH( 64 ),.CASE31( 5'h1E ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_65_5_64_1_1_U123(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.din16(llike_16_q0),.din17(llike_17_q0),.din18(llike_18_q0),.din19(llike_19_q0),.din20(llike_20_q0),.din21(llike_21_q0),.din22(llike_22_q0),.din23(llike_23_q0),.din24(llike_24_q0),.din25(llike_25_q0),.din26(llike_26_q0),.din27(llike_27_q0),.din28(llike_28_q0),.din29(llike_29_q0),.din30(llike_30_q0),.din31(llike_31_q0),.def(tmp_8_fu_1288_p65),.sel(trunc_ln16_reg_1688),.dout(tmp_8_fu_1288_p67));
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage4),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter2_stage2)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready_pp0_iter1_reg == 1'b0) & (1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage2)))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_fu_210 <= min_p_8;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (tmp_5_reg_1865_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        min_p_fu_210 <= min_p_5_fu_1625_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_1_fu_218 <= 6'd1;
    end else if (((tmp_5_reg_1865 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        min_s_1_fu_218 <= add_ln53_1_fu_1428_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_fu_214 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (tmp_5_reg_1865_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        min_s_fu_214 <= min_s_5_fu_1634_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_reg_1859 <= add_ln53_fu_1059_p2;
        min_p_1_reg_2066 <= min_p_fu_210;
        s_reg_1682 <= ap_sig_allocacmp_s;
        s_reg_1682_pp0_iter1_reg <= s_reg_1682;
        s_reg_1682_pp0_iter2_reg <= s_reg_1682_pp0_iter1_reg;
        tmp_5_reg_1865 <= add_ln53_fu_1059_p2[32'd6];
        tmp_5_reg_1865_pp0_iter1_reg <= tmp_5_reg_1865;
        tmp_5_reg_1865_pp0_iter2_reg <= tmp_5_reg_1865_pp0_iter1_reg;
        trunc_ln16_reg_1688 <= trunc_ln16_fu_984_p1;
        zext_ln52_cast_reg_1677[7 : 0] <= zext_ln52_cast_fu_958_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        and_ln55_1_reg_2080 <= and_ln55_1_fu_1518_p2;
        tmp_s_reg_1869 <= tmp_s_fu_1073_p67;
        trunc_ln54_reg_2034 <= trunc_ln54_fu_1262_p1;
        trunc_ln54_reg_2034_pp0_iter1_reg <= trunc_ln54_reg_2034;
        trunc_ln54_reg_2034_pp0_iter2_reg <= trunc_ln54_reg_2034_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        min_p_3_reg_2091 <= min_p_3_fu_1538_p3;
        tmp_8_reg_2049 <= tmp_8_fu_1288_p67;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        min_s_4_reg_2086 <= min_s_4_fu_1530_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_1_reg_2073 <= grp_fu_964_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        p_reg_2059 <= grp_fu_964_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_954 <= transition_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_9_reg_2098 <= grp_fu_1427_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_5_reg_1865 == 1'd1) & (1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (tmp_5_reg_1865_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter2_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s = 6'd1;
    end else begin
        ap_sig_allocacmp_s = min_s_1_fu_218;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_946_p0 = tmp_8_reg_2049;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_946_p0 = tmp_s_reg_1869;
        end else begin
            grp_fu_946_p0 = 'bx;
        end
    end else begin
        grp_fu_946_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_946_p1 = bitcast_ln54_1_fu_1423_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_946_p1 = bitcast_ln54_fu_1283_p1;
        end else begin
            grp_fu_946_p1 = 'bx;
        end
    end else begin
        grp_fu_946_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_950_p0 = p_1_reg_2073;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_950_p0 = p_reg_2059;
        end else begin
            grp_fu_950_p0 = 'bx;
        end
    end else begin
        grp_fu_950_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_950_p1 = min_p_3_fu_1538_p3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_950_p1 = min_p_fu_210;
        end else begin
            grp_fu_950_p1 = 'bx;
        end
    end else begin
        grp_fu_950_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_10_address0_local = zext_ln54_4_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_10_address0_local = zext_ln54_2_fu_1004_p1;
        end else begin
            llike_10_address0_local = 'bx;
        end
    end else begin
        llike_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_10_ce0_local = 1'b1;
    end else begin
        llike_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_11_address0_local = zext_ln54_4_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_11_address0_local = zext_ln54_2_fu_1004_p1;
        end else begin
            llike_11_address0_local = 'bx;
        end
    end else begin
        llike_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_11_ce0_local = 1'b1;
    end else begin
        llike_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_12_address0_local = zext_ln54_4_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_12_address0_local = zext_ln54_2_fu_1004_p1;
        end else begin
            llike_12_address0_local = 'bx;
        end
    end else begin
        llike_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_12_ce0_local = 1'b1;
    end else begin
        llike_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_13_address0_local = zext_ln54_4_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_13_address0_local = zext_ln54_2_fu_1004_p1;
        end else begin
            llike_13_address0_local = 'bx;
        end
    end else begin
        llike_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_13_ce0_local = 1'b1;
    end else begin
        llike_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_14_address0_local = zext_ln54_4_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_14_address0_local = zext_ln54_2_fu_1004_p1;
        end else begin
            llike_14_address0_local = 'bx;
        end
    end else begin
        llike_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_14_ce0_local = 1'b1;
    end else begin
        llike_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_15_address0_local = zext_ln54_4_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_15_address0_local = zext_ln54_2_fu_1004_p1;
        end else begin
            llike_15_address0_local = 'bx;
        end
    end else begin
        llike_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_15_ce0_local = 1'b1;
    end else begin
        llike_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_16_address0_local = zext_ln54_4_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_16_address0_local = zext_ln54_2_fu_1004_p1;
        end else begin
            llike_16_address0_local = 'bx;
        end
    end else begin
        llike_16_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_16_ce0_local = 1'b1;
    end else begin
        llike_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_17_address0_local = zext_ln54_4_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_17_address0_local = zext_ln54_2_fu_1004_p1;
        end else begin
            llike_17_address0_local = 'bx;
        end
    end else begin
        llike_17_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_17_ce0_local = 1'b1;
    end else begin
        llike_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_18_address0_local = zext_ln54_4_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_18_address0_local = zext_ln54_2_fu_1004_p1;
        end else begin
            llike_18_address0_local = 'bx;
        end
    end else begin
        llike_18_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_18_ce0_local = 1'b1;
    end else begin
        llike_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_19_address0_local = zext_ln54_4_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_19_address0_local = zext_ln54_2_fu_1004_p1;
        end else begin
            llike_19_address0_local = 'bx;
        end
    end else begin
        llike_19_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_19_ce0_local = 1'b1;
    end else begin
        llike_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address0_local = zext_ln54_4_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln54_2_fu_1004_p1;
        end else begin
            llike_1_address0_local = 'bx;
        end
    end else begin
        llike_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_20_address0_local = zext_ln54_4_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_20_address0_local = zext_ln54_2_fu_1004_p1;
        end else begin
            llike_20_address0_local = 'bx;
        end
    end else begin
        llike_20_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_20_ce0_local = 1'b1;
    end else begin
        llike_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_21_address0_local = zext_ln54_4_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_21_address0_local = zext_ln54_2_fu_1004_p1;
        end else begin
            llike_21_address0_local = 'bx;
        end
    end else begin
        llike_21_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_21_ce0_local = 1'b1;
    end else begin
        llike_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_22_address0_local = zext_ln54_4_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_22_address0_local = zext_ln54_2_fu_1004_p1;
        end else begin
            llike_22_address0_local = 'bx;
        end
    end else begin
        llike_22_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_22_ce0_local = 1'b1;
    end else begin
        llike_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_23_address0_local = zext_ln54_4_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_23_address0_local = zext_ln54_2_fu_1004_p1;
        end else begin
            llike_23_address0_local = 'bx;
        end
    end else begin
        llike_23_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_23_ce0_local = 1'b1;
    end else begin
        llike_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_24_address0_local = zext_ln54_4_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_24_address0_local = zext_ln54_2_fu_1004_p1;
        end else begin
            llike_24_address0_local = 'bx;
        end
    end else begin
        llike_24_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_24_ce0_local = 1'b1;
    end else begin
        llike_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_25_address0_local = zext_ln54_4_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_25_address0_local = zext_ln54_2_fu_1004_p1;
        end else begin
            llike_25_address0_local = 'bx;
        end
    end else begin
        llike_25_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_25_ce0_local = 1'b1;
    end else begin
        llike_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_26_address0_local = zext_ln54_4_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_26_address0_local = zext_ln54_2_fu_1004_p1;
        end else begin
            llike_26_address0_local = 'bx;
        end
    end else begin
        llike_26_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_26_ce0_local = 1'b1;
    end else begin
        llike_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_27_address0_local = zext_ln54_4_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_27_address0_local = zext_ln54_2_fu_1004_p1;
        end else begin
            llike_27_address0_local = 'bx;
        end
    end else begin
        llike_27_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_27_ce0_local = 1'b1;
    end else begin
        llike_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_28_address0_local = zext_ln54_4_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_28_address0_local = zext_ln54_2_fu_1004_p1;
        end else begin
            llike_28_address0_local = 'bx;
        end
    end else begin
        llike_28_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_28_ce0_local = 1'b1;
    end else begin
        llike_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_29_address0_local = zext_ln54_4_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_29_address0_local = zext_ln54_2_fu_1004_p1;
        end else begin
            llike_29_address0_local = 'bx;
        end
    end else begin
        llike_29_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_29_ce0_local = 1'b1;
    end else begin
        llike_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_2_address0_local = zext_ln54_4_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_2_address0_local = zext_ln54_2_fu_1004_p1;
        end else begin
            llike_2_address0_local = 'bx;
        end
    end else begin
        llike_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_30_address0_local = zext_ln54_4_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_30_address0_local = zext_ln54_2_fu_1004_p1;
        end else begin
            llike_30_address0_local = 'bx;
        end
    end else begin
        llike_30_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_30_ce0_local = 1'b1;
    end else begin
        llike_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_31_address0_local = zext_ln54_4_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_31_address0_local = zext_ln54_2_fu_1004_p1;
        end else begin
            llike_31_address0_local = 'bx;
        end
    end else begin
        llike_31_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_31_ce0_local = 1'b1;
    end else begin
        llike_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_3_address0_local = zext_ln54_4_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_3_address0_local = zext_ln54_2_fu_1004_p1;
        end else begin
            llike_3_address0_local = 'bx;
        end
    end else begin
        llike_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_4_address0_local = zext_ln54_4_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_4_address0_local = zext_ln54_2_fu_1004_p1;
        end else begin
            llike_4_address0_local = 'bx;
        end
    end else begin
        llike_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_4_ce0_local = 1'b1;
    end else begin
        llike_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_5_address0_local = zext_ln54_4_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_5_address0_local = zext_ln54_2_fu_1004_p1;
        end else begin
            llike_5_address0_local = 'bx;
        end
    end else begin
        llike_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_5_ce0_local = 1'b1;
    end else begin
        llike_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_6_address0_local = zext_ln54_4_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_6_address0_local = zext_ln54_2_fu_1004_p1;
        end else begin
            llike_6_address0_local = 'bx;
        end
    end else begin
        llike_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_6_ce0_local = 1'b1;
    end else begin
        llike_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_7_address0_local = zext_ln54_4_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_7_address0_local = zext_ln54_2_fu_1004_p1;
        end else begin
            llike_7_address0_local = 'bx;
        end
    end else begin
        llike_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_7_ce0_local = 1'b1;
    end else begin
        llike_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_8_address0_local = zext_ln54_4_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_8_address0_local = zext_ln54_2_fu_1004_p1;
        end else begin
            llike_8_address0_local = 'bx;
        end
    end else begin
        llike_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_8_ce0_local = 1'b1;
    end else begin
        llike_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_9_address0_local = zext_ln54_4_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_9_address0_local = zext_ln54_2_fu_1004_p1;
        end else begin
            llike_9_address0_local = 'bx;
        end
    end else begin
        llike_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_9_ce0_local = 1'b1;
    end else begin
        llike_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln54_4_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln54_2_fu_1004_p1;
        end else begin
            llike_address0_local = 'bx;
        end
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (tmp_5_reg_1865_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        min_s_6_out_ap_vld = 1'b1;
    end else begin
        min_s_6_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_address0_local = zext_ln54_1_fu_1278_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_address0_local = zext_ln54_fu_1054_p1;
        end else begin
            transition_address0_local = 'bx;
        end
    end else begin
        transition_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_ce0_local = 1'b1;
    end else begin
        transition_ce0_local = 1'b0;
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
            if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln53_1_fu_1428_p2 = (s_reg_1682 + 6'd2);
assign add_ln53_fu_1059_p2 = (zext_ln16_fu_980_p1 + 7'd1);
assign add_ln54_1_fu_1273_p2 = (shl_ln54_1_fu_1265_p3 + zext_ln52_cast_reg_1677);
assign add_ln54_2_fu_1221_p2 = (zext_ln52_2 + zext_ln54_3_fu_1217_p1);
assign add_ln54_fu_1048_p2 = (shl_ln3_fu_1040_p3 + zext_ln52_cast_fu_958_p1);
assign and_ln55_1_fu_1518_p2 = (or_ln55_1_fu_1506_p2 & and_ln55_fu_1512_p2);
assign and_ln55_2_fu_1614_p2 = (or_ln55_3_fu_1608_p2 & or_ln55_2_fu_1590_p2);
assign and_ln55_3_fu_1620_p2 = (tmp_9_reg_2098 & and_ln55_2_fu_1614_p2);
assign and_ln55_fu_1512_p2 = (or_ln55_fu_1488_p2 & grp_fu_1427_p_dout0);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage4;
assign ap_ready = ap_ready_sig;
assign bitcast_ln54_1_fu_1423_p1 = reg_954;
assign bitcast_ln54_fu_1283_p1 = reg_954;
assign bitcast_ln55_1_fu_1459_p1 = min_p_1_reg_2066;
assign bitcast_ln55_2_fu_1544_p1 = p_1_reg_2073;
assign bitcast_ln55_3_fu_1561_p1 = min_p_3_reg_2091;
assign bitcast_ln55_fu_1442_p1 = p_reg_2059;
assign grp_fu_1427_p_ce = 1'b1;
assign grp_fu_1427_p_din0 = grp_fu_950_p0;
assign grp_fu_1427_p_din1 = grp_fu_950_p1;
assign grp_fu_1427_p_opcode = 5'd4;
assign grp_fu_964_p_ce = 1'b1;
assign grp_fu_964_p_din0 = grp_fu_946_p0;
assign grp_fu_964_p_din1 = grp_fu_946_p1;
assign grp_fu_964_p_opcode = 2'd0;
assign icmp_ln55_1_fu_1482_p2 = ((trunc_ln55_fu_1455_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_1494_p2 = ((tmp_3_fu_1462_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_1500_p2 = ((trunc_ln55_1_fu_1472_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_1578_p2 = ((tmp_6_fu_1547_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_1584_p2 = ((trunc_ln55_2_fu_1557_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_1596_p2 = ((tmp_7_fu_1564_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_1602_p2 = ((trunc_ln55_3_fu_1574_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_1476_p2 = ((tmp_2_fu_1445_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_10_address0 = llike_10_address0_local;
assign llike_10_ce0 = llike_10_ce0_local;
assign llike_11_address0 = llike_11_address0_local;
assign llike_11_ce0 = llike_11_ce0_local;
assign llike_12_address0 = llike_12_address0_local;
assign llike_12_ce0 = llike_12_ce0_local;
assign llike_13_address0 = llike_13_address0_local;
assign llike_13_ce0 = llike_13_ce0_local;
assign llike_14_address0 = llike_14_address0_local;
assign llike_14_ce0 = llike_14_ce0_local;
assign llike_15_address0 = llike_15_address0_local;
assign llike_15_ce0 = llike_15_ce0_local;
assign llike_16_address0 = llike_16_address0_local;
assign llike_16_ce0 = llike_16_ce0_local;
assign llike_17_address0 = llike_17_address0_local;
assign llike_17_ce0 = llike_17_ce0_local;
assign llike_18_address0 = llike_18_address0_local;
assign llike_18_ce0 = llike_18_ce0_local;
assign llike_19_address0 = llike_19_address0_local;
assign llike_19_ce0 = llike_19_ce0_local;
assign llike_1_address0 = llike_1_address0_local;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_20_address0 = llike_20_address0_local;
assign llike_20_ce0 = llike_20_ce0_local;
assign llike_21_address0 = llike_21_address0_local;
assign llike_21_ce0 = llike_21_ce0_local;
assign llike_22_address0 = llike_22_address0_local;
assign llike_22_ce0 = llike_22_ce0_local;
assign llike_23_address0 = llike_23_address0_local;
assign llike_23_ce0 = llike_23_ce0_local;
assign llike_24_address0 = llike_24_address0_local;
assign llike_24_ce0 = llike_24_ce0_local;
assign llike_25_address0 = llike_25_address0_local;
assign llike_25_ce0 = llike_25_ce0_local;
assign llike_26_address0 = llike_26_address0_local;
assign llike_26_ce0 = llike_26_ce0_local;
assign llike_27_address0 = llike_27_address0_local;
assign llike_27_ce0 = llike_27_ce0_local;
assign llike_28_address0 = llike_28_address0_local;
assign llike_28_ce0 = llike_28_ce0_local;
assign llike_29_address0 = llike_29_address0_local;
assign llike_29_ce0 = llike_29_ce0_local;
assign llike_2_address0 = llike_2_address0_local;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_30_address0 = llike_30_address0_local;
assign llike_30_ce0 = llike_30_ce0_local;
assign llike_31_address0 = llike_31_address0_local;
assign llike_31_ce0 = llike_31_ce0_local;
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
assign llike_8_address0 = llike_8_address0_local;
assign llike_8_ce0 = llike_8_ce0_local;
assign llike_9_address0 = llike_9_address0_local;
assign llike_9_ce0 = llike_9_ce0_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln9_2_fu_1208_p4 = {{add_ln53_reg_1859[6:5]}};
assign min_p_3_fu_1538_p3 = ((and_ln55_1_reg_2080[0:0] == 1'b1) ? p_reg_2059 : min_p_1_reg_2066);
assign min_p_5_fu_1625_p3 = ((and_ln55_3_fu_1620_p2[0:0] == 1'b1) ? p_1_reg_2073 : min_p_3_reg_2091);
assign min_s_4_fu_1530_p3 = ((and_ln55_1_reg_2080[0:0] == 1'b1) ? zext_ln55_fu_1527_p1 : min_s_fu_214);
assign min_s_5_fu_1634_p3 = ((and_ln55_3_fu_1620_p2[0:0] == 1'b1) ? zext_ln55_1_fu_1631_p1 : min_s_4_reg_2086);
assign min_s_6_out = ((and_ln55_1_reg_2080[0:0] == 1'b1) ? zext_ln55_fu_1527_p1 : min_s_fu_214);
assign or_ln55_1_fu_1506_p2 = (icmp_ln55_3_fu_1500_p2 | icmp_ln55_2_fu_1494_p2);
assign or_ln55_2_fu_1590_p2 = (icmp_ln55_5_fu_1584_p2 | icmp_ln55_4_fu_1578_p2);
assign or_ln55_3_fu_1608_p2 = (icmp_ln55_7_fu_1602_p2 | icmp_ln55_6_fu_1596_p2);
assign or_ln55_fu_1488_p2 = (icmp_ln55_fu_1476_p2 | icmp_ln55_1_fu_1482_p2);
assign shl_ln3_fu_1040_p3 = {{ap_sig_allocacmp_s}, {6'd0}};
assign shl_ln54_1_fu_1265_p3 = {{trunc_ln54_fu_1262_p1}, {6'd0}};
assign tmp_1_fu_996_p3 = {{t_1}, {tmp_fu_988_p3}};
assign tmp_2_fu_1445_p4 = {{bitcast_ln55_fu_1442_p1[62:52]}};
assign tmp_3_fu_1462_p4 = {{bitcast_ln55_1_fu_1459_p1[62:52]}};
assign tmp_6_fu_1547_p4 = {{bitcast_ln55_2_fu_1544_p1[62:52]}};
assign tmp_7_fu_1564_p4 = {{bitcast_ln55_3_fu_1561_p1[62:52]}};
assign tmp_8_fu_1288_p65 = 'bx;
assign tmp_fu_988_p3 = ap_sig_allocacmp_s[32'd5];
assign tmp_s_fu_1073_p65 = 'bx;
assign transition_address0 = transition_address0_local;
assign transition_ce0 = transition_ce0_local;
assign trunc_ln16_fu_984_p1 = ap_sig_allocacmp_s[4:0];
assign trunc_ln54_fu_1262_p1 = add_ln53_reg_1859[5:0];
assign trunc_ln55_1_fu_1472_p1 = bitcast_ln55_1_fu_1459_p1[51:0];
assign trunc_ln55_2_fu_1557_p1 = bitcast_ln55_2_fu_1544_p1[51:0];
assign trunc_ln55_3_fu_1574_p1 = bitcast_ln55_3_fu_1561_p1[51:0];
assign trunc_ln55_fu_1455_p1 = bitcast_ln55_fu_1442_p1[51:0];
assign zext_ln16_fu_980_p1 = ap_sig_allocacmp_s;
assign zext_ln52_cast_fu_958_p1 = zext_ln52;
assign zext_ln54_1_fu_1278_p1 = add_ln54_1_fu_1273_p2;
assign zext_ln54_2_fu_1004_p1 = tmp_1_fu_996_p3;
assign zext_ln54_3_fu_1217_p1 = lshr_ln9_2_fu_1208_p4;
assign zext_ln54_4_fu_1226_p1 = add_ln54_2_fu_1221_p2;
assign zext_ln54_fu_1054_p1 = add_ln54_fu_1048_p2;
assign zext_ln55_1_fu_1631_p1 = trunc_ln54_reg_2034_pp0_iter2_reg;
assign zext_ln55_fu_1527_p1 = s_reg_1682_pp0_iter2_reg;
always @ (posedge ap_clk) begin
    zext_ln52_cast_reg_1677[11:8] <= 4'b0000;
end
endmodule 