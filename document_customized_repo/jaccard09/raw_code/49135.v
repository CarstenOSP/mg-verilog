module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_147,t_1,llike_address0,llike_ce0,llike_q0,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,llike_4_address0,llike_4_ce0,llike_4_q0,llike_5_address0,llike_5_ce0,llike_5_q0,llike_6_address0,llike_6_ce0,llike_6_q0,llike_7_address0,llike_7_ce0,llike_7_q0,zext_ln52_2,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,empty,zext_ln52_3,min_s_10_out,min_s_10_out_ap_vld,grp_fu_449_p_din0,grp_fu_449_p_din1,grp_fu_449_p_opcode,grp_fu_449_p_dout0,grp_fu_449_p_ce,grp_fu_781_p_din0,grp_fu_781_p_din1,grp_fu_781_p_opcode,grp_fu_781_p_dout0,grp_fu_781_p_ce); 
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
input  [63:0] min_p_147;
input  [7:0] t_1;
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
input  [5:0] zext_ln52_2;
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
input  [1:0] empty;
input  [10:0] zext_ln52_3;
output  [7:0] min_s_10_out;
output   min_s_10_out_ap_vld;
output  [63:0] grp_fu_449_p_din0;
output  [63:0] grp_fu_449_p_din1;
output  [1:0] grp_fu_449_p_opcode;
input  [63:0] grp_fu_449_p_dout0;
output   grp_fu_449_p_ce;
output  [63:0] grp_fu_781_p_din0;
output  [63:0] grp_fu_781_p_din1;
output  [4:0] grp_fu_781_p_opcode;
input  [0:0] grp_fu_781_p_dout0;
output   grp_fu_781_p_ce;
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
reg   [0:0] tmp_1_reg_1603;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_529;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [9:0] zext_ln52_2_cast_fu_534_p1;
reg   [9:0] zext_ln52_2_cast_reg_1504;
reg   [5:0] s_reg_1511;
reg   [5:0] s_reg_1511_pp0_iter1_reg;
wire   [2:0] trunc_ln17_fu_560_p1;
reg   [2:0] trunc_ln17_reg_1517;
wire   [5:0] add_ln53_fu_616_p2;
reg   [5:0] add_ln53_reg_1585;
reg   [5:0] add_ln53_reg_1585_pp0_iter1_reg;
wire   [5:0] add_ln53_1_fu_622_p2;
reg   [5:0] add_ln53_1_reg_1591;
reg   [5:0] add_ln53_1_reg_1591_pp0_iter1_reg;
wire   [6:0] add_ln53_2_fu_628_p2;
reg   [6:0] add_ln53_2_reg_1597;
reg   [0:0] tmp_1_reg_1603_pp0_iter1_reg;
wire   [63:0] tmp_69_fu_642_p19;
reg   [63:0] tmp_69_reg_1607;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_70_fu_697_p11;
reg   [63:0] tmp_70_reg_1612;
wire   [63:0] tmp_71_fu_720_p19;
reg   [63:0] tmp_71_reg_1617;
wire   [63:0] tmp_73_fu_779_p19;
reg   [63:0] tmp_73_reg_1642;
wire   [63:0] tmp_72_fu_884_p11;
reg   [63:0] tmp_72_reg_1707;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_74_fu_923_p11;
reg   [63:0] tmp_74_reg_1712;
wire   [63:0] tmp_75_fu_946_p19;
reg   [63:0] tmp_75_reg_1717;
wire   [5:0] trunc_ln54_fu_985_p1;
reg   [5:0] trunc_ln54_reg_1722;
reg   [5:0] trunc_ln54_reg_1722_pp0_iter1_reg;
wire   [63:0] tmp_76_fu_1025_p11;
reg   [63:0] tmp_76_reg_1747;
reg   [63:0] min_p_127_reg_1752;
reg   [63:0] p_63_reg_1759;
wire   [0:0] and_ln55_1_fu_1139_p2;
reg   [0:0] and_ln55_1_reg_1766;
reg   [63:0] p_64_reg_1772;
wire   [63:0] min_p_129_fu_1145_p3;
reg   [63:0] min_p_129_reg_1779;
wire   [0:0] and_ln55_3_fu_1228_p2;
reg   [0:0] and_ln55_3_reg_1786;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] min_p_131_fu_1247_p3;
reg   [63:0] min_p_131_reg_1792;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [7:0] min_s_5_fu_1256_p3;
reg   [7:0] min_s_5_reg_1799;
wire   [0:0] and_ln55_5_fu_1339_p2;
reg   [0:0] and_ln55_5_reg_1804;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [7:0] min_s_6_fu_1348_p3;
reg   [7:0] min_s_6_reg_1810;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] min_p_133_fu_1355_p3;
reg   [63:0] min_p_133_reg_1815;
reg   [0:0] tmp_275_reg_1822;
wire    ap_block_pp0_stage8_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage7_subdone;
reg    ap_condition_exit_pp0_iter1_stage7;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln54_4_fu_582_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_608_p1;
wire   [63:0] zext_ln54_1_fu_771_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_2_fu_830_p1;
wire   [63:0] zext_ln54_6_fu_856_p1;
wire   [63:0] zext_ln54_3_fu_1001_p1;
wire    ap_block_pp0_stage2;
reg   [63:0] min_p_fu_140;
wire   [63:0] min_p_135_fu_1443_p3;
wire    ap_loop_init;
reg   [7:0] min_s_fu_144;
wire   [7:0] min_s_7_fu_1453_p3;
wire    ap_block_pp0_stage5;
reg   [5:0] min_s_1_fu_148;
wire   [5:0] add_ln53_3_fu_1048_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage7_01001;
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
reg    transition_0_ce0_local;
reg   [9:0] transition_0_address0_local;
reg    transition_0_ce1_local;
reg   [9:0] transition_0_address1_local;
reg    transition_1_ce0_local;
reg   [9:0] transition_1_address0_local;
reg    transition_1_ce1_local;
reg   [9:0] transition_1_address1_local;
reg    transition_2_ce0_local;
reg   [9:0] transition_2_address0_local;
reg    transition_2_ce1_local;
reg   [9:0] transition_2_address1_local;
reg    transition_3_ce0_local;
reg   [9:0] transition_3_address0_local;
reg    transition_3_ce1_local;
reg   [9:0] transition_3_address1_local;
reg   [63:0] grp_fu_521_p0;
reg   [63:0] grp_fu_521_p1;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
reg   [63:0] grp_fu_525_p0;
reg   [63:0] grp_fu_525_p1;
wire    ap_block_pp0_stage7;
wire   [2:0] lshr_ln8_1_fu_564_p4;
wire   [10:0] tmp_s_fu_574_p3;
wire   [9:0] shl_ln2_fu_594_p3;
wire   [9:0] add_ln54_fu_602_p2;
wire   [6:0] zext_ln17_fu_556_p1;
wire   [63:0] tmp_69_fu_642_p17;
wire   [63:0] tmp_70_fu_697_p2;
wire   [63:0] tmp_70_fu_697_p4;
wire   [63:0] tmp_70_fu_697_p6;
wire   [63:0] tmp_70_fu_697_p8;
wire   [63:0] tmp_70_fu_697_p9;
wire   [63:0] tmp_71_fu_720_p17;
wire   [9:0] shl_ln54_1_fu_759_p3;
wire   [9:0] add_ln54_1_fu_766_p2;
wire   [63:0] tmp_73_fu_779_p17;
wire   [9:0] shl_ln54_2_fu_818_p3;
wire   [9:0] add_ln54_2_fu_825_p2;
wire   [3:0] lshr_ln9_3_fu_838_p4;
wire   [10:0] zext_ln54_5_fu_847_p1;
wire   [10:0] add_ln54_4_fu_851_p2;
wire   [63:0] tmp_72_fu_884_p2;
wire   [63:0] tmp_72_fu_884_p4;
wire   [63:0] tmp_72_fu_884_p6;
wire   [63:0] tmp_72_fu_884_p8;
wire   [63:0] tmp_72_fu_884_p9;
wire   [63:0] tmp_74_fu_923_p2;
wire   [63:0] tmp_74_fu_923_p4;
wire   [63:0] tmp_74_fu_923_p6;
wire   [63:0] tmp_74_fu_923_p8;
wire   [63:0] tmp_74_fu_923_p9;
wire   [63:0] tmp_75_fu_946_p17;
wire   [9:0] shl_ln54_3_fu_988_p3;
wire   [9:0] add_ln54_3_fu_996_p2;
wire   [63:0] tmp_76_fu_1025_p2;
wire   [63:0] tmp_76_fu_1025_p4;
wire   [63:0] tmp_76_fu_1025_p6;
wire   [63:0] tmp_76_fu_1025_p8;
wire   [63:0] tmp_76_fu_1025_p9;
wire    ap_block_pp0_stage8;
wire   [63:0] bitcast_ln55_fu_1062_p1;
wire   [63:0] bitcast_ln55_1_fu_1080_p1;
wire   [10:0] tmp_264_fu_1066_p4;
wire   [51:0] trunc_ln55_fu_1076_p1;
wire   [0:0] icmp_ln55_1_fu_1103_p2;
wire   [0:0] icmp_ln55_fu_1097_p2;
wire   [10:0] tmp_265_fu_1083_p4;
wire   [51:0] trunc_ln55_1_fu_1093_p1;
wire   [0:0] icmp_ln55_3_fu_1121_p2;
wire   [0:0] icmp_ln55_2_fu_1115_p2;
wire   [0:0] or_ln55_fu_1109_p2;
wire   [0:0] and_ln55_fu_1133_p2;
wire   [0:0] or_ln55_1_fu_1127_p2;
wire   [63:0] bitcast_ln55_2_fu_1152_p1;
wire   [63:0] bitcast_ln55_3_fu_1169_p1;
wire   [10:0] tmp_267_fu_1155_p4;
wire   [51:0] trunc_ln55_2_fu_1165_p1;
wire   [0:0] icmp_ln55_5_fu_1192_p2;
wire   [0:0] icmp_ln55_4_fu_1186_p2;
wire   [10:0] tmp_268_fu_1172_p4;
wire   [51:0] trunc_ln55_3_fu_1182_p1;
wire   [0:0] icmp_ln55_7_fu_1210_p2;
wire   [0:0] icmp_ln55_6_fu_1204_p2;
wire   [0:0] or_ln55_3_fu_1216_p2;
wire   [0:0] or_ln55_2_fu_1198_p2;
wire   [0:0] and_ln55_2_fu_1222_p2;
wire   [7:0] zext_ln55_fu_1237_p1;
wire   [7:0] zext_ln55_1_fu_1253_p1;
wire   [7:0] min_s_4_fu_1240_p3;
wire    ap_block_pp0_stage6;
wire   [63:0] bitcast_ln55_4_fu_1263_p1;
wire   [63:0] bitcast_ln55_5_fu_1280_p1;
wire   [10:0] tmp_270_fu_1266_p4;
wire   [51:0] trunc_ln55_4_fu_1276_p1;
wire   [0:0] icmp_ln55_9_fu_1303_p2;
wire   [0:0] icmp_ln55_8_fu_1297_p2;
wire   [10:0] tmp_271_fu_1283_p4;
wire   [51:0] trunc_ln55_5_fu_1293_p1;
wire   [0:0] icmp_ln55_11_fu_1321_p2;
wire   [0:0] icmp_ln55_10_fu_1315_p2;
wire   [0:0] or_ln55_5_fu_1327_p2;
wire   [0:0] or_ln55_4_fu_1309_p2;
wire   [0:0] and_ln55_4_fu_1333_p2;
wire   [7:0] zext_ln55_2_fu_1345_p1;
wire   [63:0] bitcast_ln55_6_fu_1361_p1;
wire   [63:0] bitcast_ln55_7_fu_1379_p1;
wire   [10:0] tmp_273_fu_1365_p4;
wire   [51:0] trunc_ln55_6_fu_1375_p1;
wire   [0:0] icmp_ln55_13_fu_1402_p2;
wire   [0:0] icmp_ln55_12_fu_1396_p2;
wire   [10:0] tmp_274_fu_1382_p4;
wire   [51:0] trunc_ln55_7_fu_1392_p1;
wire   [0:0] icmp_ln55_15_fu_1420_p2;
wire   [0:0] icmp_ln55_14_fu_1414_p2;
wire   [0:0] or_ln55_7_fu_1426_p2;
wire   [0:0] or_ln55_6_fu_1408_p2;
wire   [0:0] and_ln55_6_fu_1432_p2;
wire   [0:0] and_ln55_7_fu_1438_p2;
wire   [7:0] zext_ln55_3_fu_1450_p1;
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
wire   [2:0] tmp_69_fu_642_p1;
wire   [2:0] tmp_69_fu_642_p3;
wire   [2:0] tmp_69_fu_642_p5;
wire   [2:0] tmp_69_fu_642_p7;
wire  signed [2:0] tmp_69_fu_642_p9;
wire  signed [2:0] tmp_69_fu_642_p11;
wire  signed [2:0] tmp_69_fu_642_p13;
wire  signed [2:0] tmp_69_fu_642_p15;
wire   [1:0] tmp_70_fu_697_p1;
wire   [1:0] tmp_70_fu_697_p3;
wire  signed [1:0] tmp_70_fu_697_p5;
wire  signed [1:0] tmp_70_fu_697_p7;
wire  signed [2:0] tmp_71_fu_720_p1;
wire   [2:0] tmp_71_fu_720_p3;
wire   [2:0] tmp_71_fu_720_p5;
wire   [2:0] tmp_71_fu_720_p7;
wire   [2:0] tmp_71_fu_720_p9;
wire  signed [2:0] tmp_71_fu_720_p11;
wire  signed [2:0] tmp_71_fu_720_p13;
wire  signed [2:0] tmp_71_fu_720_p15;
wire  signed [2:0] tmp_73_fu_779_p1;
wire  signed [2:0] tmp_73_fu_779_p3;
wire   [2:0] tmp_73_fu_779_p5;
wire   [2:0] tmp_73_fu_779_p7;
wire   [2:0] tmp_73_fu_779_p9;
wire   [2:0] tmp_73_fu_779_p11;
wire  signed [2:0] tmp_73_fu_779_p13;
wire  signed [2:0] tmp_73_fu_779_p15;
wire   [1:0] tmp_72_fu_884_p1;
wire   [1:0] tmp_72_fu_884_p3;
wire  signed [1:0] tmp_72_fu_884_p5;
wire  signed [1:0] tmp_72_fu_884_p7;
wire   [1:0] tmp_74_fu_923_p1;
wire   [1:0] tmp_74_fu_923_p3;
wire  signed [1:0] tmp_74_fu_923_p5;
wire  signed [1:0] tmp_74_fu_923_p7;
wire  signed [2:0] tmp_75_fu_946_p1;
wire  signed [2:0] tmp_75_fu_946_p3;
wire  signed [2:0] tmp_75_fu_946_p5;
wire   [2:0] tmp_75_fu_946_p7;
wire   [2:0] tmp_75_fu_946_p9;
wire   [2:0] tmp_75_fu_946_p11;
wire   [2:0] tmp_75_fu_946_p13;
wire  signed [2:0] tmp_75_fu_946_p15;
wire   [1:0] tmp_76_fu_1025_p1;
wire   [1:0] tmp_76_fu_1025_p3;
wire  signed [1:0] tmp_76_fu_1025_p5;
wire  signed [1:0] tmp_76_fu_1025_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_140 = 64'd0;
#0 min_s_fu_144 = 8'd0;
#0 min_s_1_fu_148 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U138(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.def(tmp_69_fu_642_p17),.sel(trunc_ln17_reg_1517),.dout(tmp_69_fu_642_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U139(.din0(tmp_70_fu_697_p2),.din1(tmp_70_fu_697_p4),.din2(tmp_70_fu_697_p6),.din3(tmp_70_fu_697_p8),.def(tmp_70_fu_697_p9),.sel(empty),.dout(tmp_70_fu_697_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.CASE7( 3'h6 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U140(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.def(tmp_71_fu_720_p17),.sel(trunc_ln17_reg_1517),.dout(tmp_71_fu_720_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h7 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.CASE7( 3'h5 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U141(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.def(tmp_73_fu_779_p17),.sel(trunc_ln17_reg_1517),.dout(tmp_73_fu_779_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U142(.din0(tmp_72_fu_884_p2),.din1(tmp_72_fu_884_p4),.din2(tmp_72_fu_884_p6),.din3(tmp_72_fu_884_p8),.def(tmp_72_fu_884_p9),.sel(empty),.dout(tmp_72_fu_884_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U143(.din0(tmp_74_fu_923_p2),.din1(tmp_74_fu_923_p4),.din2(tmp_74_fu_923_p6),.din3(tmp_74_fu_923_p8),.def(tmp_74_fu_923_p9),.sel(empty),.dout(tmp_74_fu_923_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h7 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.CASE5( 3'h2 ),.din5_WIDTH( 64 ),.CASE6( 3'h3 ),.din6_WIDTH( 64 ),.CASE7( 3'h4 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U144(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.def(tmp_75_fu_946_p17),.sel(trunc_ln17_reg_1517),.dout(tmp_75_fu_946_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U145(.din0(tmp_76_fu_1025_p2),.din1(tmp_76_fu_1025_p4),.din2(tmp_76_fu_1025_p6),.din3(tmp_76_fu_1025_p8),.def(tmp_76_fu_1025_p9),.sel(empty),.dout(tmp_76_fu_1025_p11));
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
            min_p_fu_140 <= min_p_147;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_p_fu_140 <= min_p_135_fu_1443_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_1_fu_148 <= 6'd1;
    end else if (((tmp_1_reg_1603 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        min_s_1_fu_148 <= add_ln53_3_fu_1048_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            min_s_fu_144 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_s_fu_144 <= min_s_7_fu_1453_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_1_reg_1591 <= add_ln53_1_fu_622_p2;
        add_ln53_1_reg_1591_pp0_iter1_reg <= add_ln53_1_reg_1591;
        add_ln53_2_reg_1597 <= add_ln53_2_fu_628_p2;
        add_ln53_reg_1585 <= add_ln53_fu_616_p2;
        add_ln53_reg_1585_pp0_iter1_reg <= add_ln53_reg_1585;
        s_reg_1511 <= ap_sig_allocacmp_s;
        s_reg_1511_pp0_iter1_reg <= s_reg_1511;
        tmp_1_reg_1603 <= add_ln53_2_fu_628_p2[32'd6];
        tmp_1_reg_1603_pp0_iter1_reg <= tmp_1_reg_1603;
        trunc_ln17_reg_1517 <= trunc_ln17_fu_560_p1;
        zext_ln52_2_cast_reg_1504[5 : 0] <= zext_ln52_2_cast_fu_534_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        and_ln55_1_reg_1766 <= and_ln55_1_fu_1139_p2;
        tmp_72_reg_1707 <= tmp_72_fu_884_p11;
        tmp_74_reg_1712 <= tmp_74_fu_923_p11;
        tmp_75_reg_1717 <= tmp_75_fu_946_p19;
        trunc_ln54_reg_1722 <= trunc_ln54_fu_985_p1;
        trunc_ln54_reg_1722_pp0_iter1_reg <= trunc_ln54_reg_1722;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln55_3_reg_1786 <= and_ln55_3_fu_1228_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln55_5_reg_1804 <= and_ln55_5_fu_1339_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        min_p_127_reg_1752 <= min_p_fu_140;
        tmp_69_reg_1607 <= tmp_69_fu_642_p19;
        tmp_70_reg_1612 <= tmp_70_fu_697_p11;
        tmp_71_reg_1617 <= tmp_71_fu_720_p19;
        tmp_73_reg_1642 <= tmp_73_fu_779_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_129_reg_1779 <= min_p_129_fu_1145_p3;
        tmp_76_reg_1747 <= tmp_76_fu_1025_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_131_reg_1792 <= min_p_131_fu_1247_p3;
        min_s_5_reg_1799 <= min_s_5_fu_1256_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_133_reg_1815 <= min_p_133_fu_1355_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_6_reg_1810 <= min_s_6_fu_1348_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        p_63_reg_1759 <= grp_fu_449_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        p_64_reg_1772 <= grp_fu_449_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_529 <= grp_fu_449_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_275_reg_1822 <= grp_fu_781_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_1_reg_1603 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (tmp_1_reg_1603_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        ap_sig_allocacmp_s = min_s_1_fu_148;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_521_p0 = tmp_75_reg_1717;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_521_p0 = tmp_73_reg_1642;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_521_p0 = tmp_71_reg_1617;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_521_p0 = tmp_69_reg_1607;
        end else begin
            grp_fu_521_p0 = 'bx;
        end
    end else begin
        grp_fu_521_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_521_p1 = tmp_76_reg_1747;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_521_p1 = tmp_74_reg_1712;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_521_p1 = tmp_72_reg_1707;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_521_p1 = tmp_70_reg_1612;
        end else begin
            grp_fu_521_p1 = 'bx;
        end
    end else begin
        grp_fu_521_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_525_p0 = p_64_reg_1772;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_525_p0 = p_63_reg_1759;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_525_p0 = reg_529;
    end else begin
        grp_fu_525_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_525_p1 = min_p_133_fu_1355_p3;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_525_p1 = min_p_131_fu_1247_p3;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_525_p1 = min_p_129_fu_1145_p3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_525_p1 = min_p_fu_140;
        end else begin
            grp_fu_525_p1 = 'bx;
        end
    end else begin
        grp_fu_525_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address0_local = zext_ln54_6_fu_856_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln54_4_fu_582_p1;
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
            llike_2_address0_local = zext_ln54_6_fu_856_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_2_address0_local = zext_ln54_4_fu_582_p1;
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
            llike_3_address0_local = zext_ln54_6_fu_856_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_3_address0_local = zext_ln54_4_fu_582_p1;
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
            llike_4_address0_local = zext_ln54_6_fu_856_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_4_address0_local = zext_ln54_4_fu_582_p1;
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
            llike_5_address0_local = zext_ln54_6_fu_856_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_5_address0_local = zext_ln54_4_fu_582_p1;
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
            llike_6_address0_local = zext_ln54_6_fu_856_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_6_address0_local = zext_ln54_4_fu_582_p1;
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
            llike_7_address0_local = zext_ln54_6_fu_856_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_7_address0_local = zext_ln54_4_fu_582_p1;
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
            llike_address0_local = zext_ln54_6_fu_856_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln54_4_fu_582_p1;
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
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_11001) & (tmp_1_reg_1603_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_10_out_ap_vld = 1'b1;
    end else begin
        min_s_10_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln54_2_fu_830_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln54_fu_608_p1;
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
            transition_0_address1_local = zext_ln54_3_fu_1001_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln54_1_fu_771_p1;
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
            transition_1_address0_local = zext_ln54_2_fu_830_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln54_fu_608_p1;
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
            transition_1_address1_local = zext_ln54_3_fu_1001_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln54_1_fu_771_p1;
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
            transition_2_address0_local = zext_ln54_2_fu_830_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address0_local = zext_ln54_fu_608_p1;
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
            transition_2_address1_local = zext_ln54_3_fu_1001_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address1_local = zext_ln54_1_fu_771_p1;
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
            transition_3_address0_local = zext_ln54_2_fu_830_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address0_local = zext_ln54_fu_608_p1;
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
            transition_3_address1_local = zext_ln54_3_fu_1001_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address1_local = zext_ln54_1_fu_771_p1;
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
assign add_ln53_1_fu_622_p2 = (ap_sig_allocacmp_s + 6'd2);
assign add_ln53_2_fu_628_p2 = (zext_ln17_fu_556_p1 + 7'd3);
assign add_ln53_3_fu_1048_p2 = (s_reg_1511 + 6'd4);
assign add_ln53_fu_616_p2 = (ap_sig_allocacmp_s + 6'd1);
assign add_ln54_1_fu_766_p2 = (shl_ln54_1_fu_759_p3 + zext_ln52_2_cast_reg_1504);
assign add_ln54_2_fu_825_p2 = (shl_ln54_2_fu_818_p3 + zext_ln52_2_cast_reg_1504);
assign add_ln54_3_fu_996_p2 = (shl_ln54_3_fu_988_p3 + zext_ln52_2_cast_reg_1504);
assign add_ln54_4_fu_851_p2 = (zext_ln52_3 + zext_ln54_5_fu_847_p1);
assign add_ln54_fu_602_p2 = (shl_ln2_fu_594_p3 + zext_ln52_2_cast_fu_534_p1);
assign and_ln55_1_fu_1139_p2 = (or_ln55_1_fu_1127_p2 & and_ln55_fu_1133_p2);
assign and_ln55_2_fu_1222_p2 = (or_ln55_3_fu_1216_p2 & or_ln55_2_fu_1198_p2);
assign and_ln55_3_fu_1228_p2 = (grp_fu_781_p_dout0 & and_ln55_2_fu_1222_p2);
assign and_ln55_4_fu_1333_p2 = (or_ln55_5_fu_1327_p2 & or_ln55_4_fu_1309_p2);
assign and_ln55_5_fu_1339_p2 = (grp_fu_781_p_dout0 & and_ln55_4_fu_1333_p2);
assign and_ln55_6_fu_1432_p2 = (or_ln55_7_fu_1426_p2 & or_ln55_6_fu_1408_p2);
assign and_ln55_7_fu_1438_p2 = (tmp_275_reg_1822 & and_ln55_6_fu_1432_p2);
assign and_ln55_fu_1133_p2 = (or_ln55_fu_1109_p2 & grp_fu_781_p_dout0);
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
assign bitcast_ln55_1_fu_1080_p1 = min_p_127_reg_1752;
assign bitcast_ln55_2_fu_1152_p1 = p_63_reg_1759;
assign bitcast_ln55_3_fu_1169_p1 = min_p_129_reg_1779;
assign bitcast_ln55_4_fu_1263_p1 = p_64_reg_1772;
assign bitcast_ln55_5_fu_1280_p1 = min_p_131_reg_1792;
assign bitcast_ln55_6_fu_1361_p1 = reg_529;
assign bitcast_ln55_7_fu_1379_p1 = min_p_133_reg_1815;
assign bitcast_ln55_fu_1062_p1 = reg_529;
assign grp_fu_449_p_ce = 1'b1;
assign grp_fu_449_p_din0 = grp_fu_521_p0;
assign grp_fu_449_p_din1 = grp_fu_521_p1;
assign grp_fu_449_p_opcode = 2'd0;
assign grp_fu_781_p_ce = 1'b1;
assign grp_fu_781_p_din0 = grp_fu_525_p0;
assign grp_fu_781_p_din1 = grp_fu_525_p1;
assign grp_fu_781_p_opcode = 5'd4;
assign icmp_ln55_10_fu_1315_p2 = ((tmp_271_fu_1283_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_11_fu_1321_p2 = ((trunc_ln55_5_fu_1293_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_12_fu_1396_p2 = ((tmp_273_fu_1365_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_13_fu_1402_p2 = ((trunc_ln55_6_fu_1375_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_14_fu_1414_p2 = ((tmp_274_fu_1382_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_15_fu_1420_p2 = ((trunc_ln55_7_fu_1392_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_1_fu_1103_p2 = ((trunc_ln55_fu_1076_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_1115_p2 = ((tmp_265_fu_1083_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_1121_p2 = ((trunc_ln55_1_fu_1093_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_1186_p2 = ((tmp_267_fu_1155_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_1192_p2 = ((trunc_ln55_2_fu_1165_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_1204_p2 = ((tmp_268_fu_1172_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_1210_p2 = ((trunc_ln55_3_fu_1182_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_8_fu_1297_p2 = ((tmp_270_fu_1266_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_9_fu_1303_p2 = ((trunc_ln55_4_fu_1276_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_1097_p2 = ((tmp_264_fu_1066_p4 != 11'd2047) ? 1'b1 : 1'b0);
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
assign lshr_ln8_1_fu_564_p4 = {{ap_sig_allocacmp_s[5:3]}};
assign lshr_ln9_3_fu_838_p4 = {{add_ln53_2_reg_1597[6:3]}};
assign min_p_129_fu_1145_p3 = ((and_ln55_1_reg_1766[0:0] == 1'b1) ? reg_529 : min_p_127_reg_1752);
assign min_p_131_fu_1247_p3 = ((and_ln55_3_reg_1786[0:0] == 1'b1) ? p_63_reg_1759 : min_p_129_reg_1779);
assign min_p_133_fu_1355_p3 = ((and_ln55_5_reg_1804[0:0] == 1'b1) ? p_64_reg_1772 : min_p_131_reg_1792);
assign min_p_135_fu_1443_p3 = ((and_ln55_7_fu_1438_p2[0:0] == 1'b1) ? reg_529 : min_p_133_reg_1815);
assign min_s_10_out = ((and_ln55_5_reg_1804[0:0] == 1'b1) ? zext_ln55_2_fu_1345_p1 : min_s_5_reg_1799);
assign min_s_4_fu_1240_p3 = ((and_ln55_1_reg_1766[0:0] == 1'b1) ? zext_ln55_fu_1237_p1 : min_s_fu_144);
assign min_s_5_fu_1256_p3 = ((and_ln55_3_reg_1786[0:0] == 1'b1) ? zext_ln55_1_fu_1253_p1 : min_s_4_fu_1240_p3);
assign min_s_6_fu_1348_p3 = ((and_ln55_5_reg_1804[0:0] == 1'b1) ? zext_ln55_2_fu_1345_p1 : min_s_5_reg_1799);
assign min_s_7_fu_1453_p3 = ((and_ln55_7_fu_1438_p2[0:0] == 1'b1) ? zext_ln55_3_fu_1450_p1 : min_s_6_reg_1810);
assign or_ln55_1_fu_1127_p2 = (icmp_ln55_3_fu_1121_p2 | icmp_ln55_2_fu_1115_p2);
assign or_ln55_2_fu_1198_p2 = (icmp_ln55_5_fu_1192_p2 | icmp_ln55_4_fu_1186_p2);
assign or_ln55_3_fu_1216_p2 = (icmp_ln55_7_fu_1210_p2 | icmp_ln55_6_fu_1204_p2);
assign or_ln55_4_fu_1309_p2 = (icmp_ln55_9_fu_1303_p2 | icmp_ln55_8_fu_1297_p2);
assign or_ln55_5_fu_1327_p2 = (icmp_ln55_11_fu_1321_p2 | icmp_ln55_10_fu_1315_p2);
assign or_ln55_6_fu_1408_p2 = (icmp_ln55_13_fu_1402_p2 | icmp_ln55_12_fu_1396_p2);
assign or_ln55_7_fu_1426_p2 = (icmp_ln55_15_fu_1420_p2 | icmp_ln55_14_fu_1414_p2);
assign or_ln55_fu_1109_p2 = (icmp_ln55_fu_1097_p2 | icmp_ln55_1_fu_1103_p2);
assign shl_ln2_fu_594_p3 = {{ap_sig_allocacmp_s}, {4'd0}};
assign shl_ln54_1_fu_759_p3 = {{add_ln53_reg_1585}, {4'd0}};
assign shl_ln54_2_fu_818_p3 = {{add_ln53_1_reg_1591}, {4'd0}};
assign shl_ln54_3_fu_988_p3 = {{trunc_ln54_fu_985_p1}, {4'd0}};
assign tmp_264_fu_1066_p4 = {{bitcast_ln55_fu_1062_p1[62:52]}};
assign tmp_265_fu_1083_p4 = {{bitcast_ln55_1_fu_1080_p1[62:52]}};
assign tmp_267_fu_1155_p4 = {{bitcast_ln55_2_fu_1152_p1[62:52]}};
assign tmp_268_fu_1172_p4 = {{bitcast_ln55_3_fu_1169_p1[62:52]}};
assign tmp_270_fu_1266_p4 = {{bitcast_ln55_4_fu_1263_p1[62:52]}};
assign tmp_271_fu_1283_p4 = {{bitcast_ln55_5_fu_1280_p1[62:52]}};
assign tmp_273_fu_1365_p4 = {{bitcast_ln55_6_fu_1361_p1[62:52]}};
assign tmp_274_fu_1382_p4 = {{bitcast_ln55_7_fu_1379_p1[62:52]}};
assign tmp_69_fu_642_p17 = 'bx;
assign tmp_70_fu_697_p2 = transition_0_q0;
assign tmp_70_fu_697_p4 = transition_1_q0;
assign tmp_70_fu_697_p6 = transition_2_q0;
assign tmp_70_fu_697_p8 = transition_3_q0;
assign tmp_70_fu_697_p9 = 'bx;
assign tmp_71_fu_720_p17 = 'bx;
assign tmp_72_fu_884_p2 = transition_0_q1;
assign tmp_72_fu_884_p4 = transition_1_q1;
assign tmp_72_fu_884_p6 = transition_2_q1;
assign tmp_72_fu_884_p8 = transition_3_q1;
assign tmp_72_fu_884_p9 = 'bx;
assign tmp_73_fu_779_p17 = 'bx;
assign tmp_74_fu_923_p2 = transition_0_q0;
assign tmp_74_fu_923_p4 = transition_1_q0;
assign tmp_74_fu_923_p6 = transition_2_q0;
assign tmp_74_fu_923_p8 = transition_3_q0;
assign tmp_74_fu_923_p9 = 'bx;
assign tmp_75_fu_946_p17 = 'bx;
assign tmp_76_fu_1025_p2 = transition_0_q1;
assign tmp_76_fu_1025_p4 = transition_1_q1;
assign tmp_76_fu_1025_p6 = transition_2_q1;
assign tmp_76_fu_1025_p8 = transition_3_q1;
assign tmp_76_fu_1025_p9 = 'bx;
assign tmp_s_fu_574_p3 = {{t_1}, {lshr_ln8_1_fu_564_p4}};
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
assign trunc_ln17_fu_560_p1 = ap_sig_allocacmp_s[2:0];
assign trunc_ln54_fu_985_p1 = add_ln53_2_reg_1597[5:0];
assign trunc_ln55_1_fu_1093_p1 = bitcast_ln55_1_fu_1080_p1[51:0];
assign trunc_ln55_2_fu_1165_p1 = bitcast_ln55_2_fu_1152_p1[51:0];
assign trunc_ln55_3_fu_1182_p1 = bitcast_ln55_3_fu_1169_p1[51:0];
assign trunc_ln55_4_fu_1276_p1 = bitcast_ln55_4_fu_1263_p1[51:0];
assign trunc_ln55_5_fu_1293_p1 = bitcast_ln55_5_fu_1280_p1[51:0];
assign trunc_ln55_6_fu_1375_p1 = bitcast_ln55_6_fu_1361_p1[51:0];
assign trunc_ln55_7_fu_1392_p1 = bitcast_ln55_7_fu_1379_p1[51:0];
assign trunc_ln55_fu_1076_p1 = bitcast_ln55_fu_1062_p1[51:0];
assign zext_ln17_fu_556_p1 = ap_sig_allocacmp_s;
assign zext_ln52_2_cast_fu_534_p1 = zext_ln52_2;
assign zext_ln54_1_fu_771_p1 = add_ln54_1_fu_766_p2;
assign zext_ln54_2_fu_830_p1 = add_ln54_2_fu_825_p2;
assign zext_ln54_3_fu_1001_p1 = add_ln54_3_fu_996_p2;
assign zext_ln54_4_fu_582_p1 = tmp_s_fu_574_p3;
assign zext_ln54_5_fu_847_p1 = lshr_ln9_3_fu_838_p4;
assign zext_ln54_6_fu_856_p1 = add_ln54_4_fu_851_p2;
assign zext_ln54_fu_608_p1 = add_ln54_fu_602_p2;
assign zext_ln55_1_fu_1253_p1 = add_ln53_reg_1585_pp0_iter1_reg;
assign zext_ln55_2_fu_1345_p1 = add_ln53_1_reg_1591_pp0_iter1_reg;
assign zext_ln55_3_fu_1450_p1 = trunc_ln54_reg_1722_pp0_iter1_reg;
assign zext_ln55_fu_1237_p1 = s_reg_1511_pp0_iter1_reg;
always @ (posedge ap_clk) begin
    zext_ln52_2_cast_reg_1504[9:6] <= 4'b0000;
end
endmodule 