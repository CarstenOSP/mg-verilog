
module needwun_needwun_Pipeline_trace (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,alignedB_7_address0,alignedB_7_ce0,alignedB_7_we0,alignedB_7_d0,alignedB_6_address0,alignedB_6_ce0,alignedB_6_we0,alignedB_6_d0,alignedB_5_address0,alignedB_5_ce0,alignedB_5_we0,alignedB_5_d0,alignedB_4_address0,alignedB_4_ce0,alignedB_4_we0,alignedB_4_d0,alignedB_3_address0,alignedB_3_ce0,alignedB_3_we0,alignedB_3_d0,alignedB_2_address0,alignedB_2_ce0,alignedB_2_we0,alignedB_2_d0,alignedB_1_address0,alignedB_1_ce0,alignedB_1_we0,alignedB_1_d0,alignedB_0_address0,alignedB_0_ce0,alignedB_0_we0,alignedB_0_d0,alignedA_7_address0,alignedA_7_ce0,alignedA_7_we0,alignedA_7_d0,alignedA_6_address0,alignedA_6_ce0,alignedA_6_we0,alignedA_6_d0,alignedA_5_address0,alignedA_5_ce0,alignedA_5_we0,alignedA_5_d0,alignedA_4_address0,alignedA_4_ce0,alignedA_4_we0,alignedA_4_d0,alignedA_3_address0,alignedA_3_ce0,alignedA_3_we0,alignedA_3_d0,alignedA_2_address0,alignedA_2_ce0,alignedA_2_we0,alignedA_2_d0,alignedA_1_address0,alignedA_1_ce0,alignedA_1_we0,alignedA_1_d0,alignedA_0_address0,alignedA_0_ce0,alignedA_0_we0,alignedA_0_d0,SEQA_0_address0,SEQA_0_ce0,SEQA_0_q0,SEQA_1_address0,SEQA_1_ce0,SEQA_1_q0,SEQA_2_address0,SEQA_2_ce0,SEQA_2_q0,SEQA_3_address0,SEQA_3_ce0,SEQA_3_q0,SEQA_4_address0,SEQA_4_ce0,SEQA_4_q0,SEQA_5_address0,SEQA_5_ce0,SEQA_5_q0,SEQA_6_address0,SEQA_6_ce0,SEQA_6_q0,SEQA_7_address0,SEQA_7_ce0,SEQA_7_q0,SEQB_0_address0,SEQB_0_ce0,SEQB_0_q0,SEQB_1_address0,SEQB_1_ce0,SEQB_1_q0,SEQB_2_address0,SEQB_2_ce0,SEQB_2_q0,SEQB_3_address0,SEQB_3_ce0,SEQB_3_q0,SEQB_4_address0,SEQB_4_ce0,SEQB_4_q0,SEQB_5_address0,SEQB_5_ce0,SEQB_5_q0,SEQB_6_address0,SEQB_6_ce0,SEQB_6_q0,SEQB_7_address0,SEQB_7_ce0,SEQB_7_q0,ptr_0_address0,ptr_0_ce0,ptr_0_q0,ptr_1_address0,ptr_1_ce0,ptr_1_q0,ptr_2_address0,ptr_2_ce0,ptr_2_q0,ptr_3_address0,ptr_3_ce0,ptr_3_q0,ptr_4_address0,ptr_4_ce0,ptr_4_q0,ptr_5_address0,ptr_5_ce0,ptr_5_q0,ptr_6_address0,ptr_6_ce0,ptr_6_q0,ptr_7_address0,ptr_7_ce0,ptr_7_q0,b_str_idx_2_out,b_str_idx_2_out_ap_vld);  
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] alignedB_7_address0;
output   alignedB_7_ce0;
output   alignedB_7_we0;
output  [7:0] alignedB_7_d0;
output  [4:0] alignedB_6_address0;
output   alignedB_6_ce0;
output   alignedB_6_we0;
output  [7:0] alignedB_6_d0;
output  [4:0] alignedB_5_address0;
output   alignedB_5_ce0;
output   alignedB_5_we0;
output  [7:0] alignedB_5_d0;
output  [4:0] alignedB_4_address0;
output   alignedB_4_ce0;
output   alignedB_4_we0;
output  [7:0] alignedB_4_d0;
output  [4:0] alignedB_3_address0;
output   alignedB_3_ce0;
output   alignedB_3_we0;
output  [7:0] alignedB_3_d0;
output  [4:0] alignedB_2_address0;
output   alignedB_2_ce0;
output   alignedB_2_we0;
output  [7:0] alignedB_2_d0;
output  [4:0] alignedB_1_address0;
output   alignedB_1_ce0;
output   alignedB_1_we0;
output  [7:0] alignedB_1_d0;
output  [4:0] alignedB_0_address0;
output   alignedB_0_ce0;
output   alignedB_0_we0;
output  [7:0] alignedB_0_d0;
output  [4:0] alignedA_7_address0;
output   alignedA_7_ce0;
output   alignedA_7_we0;
output  [7:0] alignedA_7_d0;
output  [4:0] alignedA_6_address0;
output   alignedA_6_ce0;
output   alignedA_6_we0;
output  [7:0] alignedA_6_d0;
output  [4:0] alignedA_5_address0;
output   alignedA_5_ce0;
output   alignedA_5_we0;
output  [7:0] alignedA_5_d0;
output  [4:0] alignedA_4_address0;
output   alignedA_4_ce0;
output   alignedA_4_we0;
output  [7:0] alignedA_4_d0;
output  [4:0] alignedA_3_address0;
output   alignedA_3_ce0;
output   alignedA_3_we0;
output  [7:0] alignedA_3_d0;
output  [4:0] alignedA_2_address0;
output   alignedA_2_ce0;
output   alignedA_2_we0;
output  [7:0] alignedA_2_d0;
output  [4:0] alignedA_1_address0;
output   alignedA_1_ce0;
output   alignedA_1_we0;
output  [7:0] alignedA_1_d0;
output  [4:0] alignedA_0_address0;
output   alignedA_0_ce0;
output   alignedA_0_we0;
output  [7:0] alignedA_0_d0;
output  [3:0] SEQA_0_address0;
output   SEQA_0_ce0;
input  [7:0] SEQA_0_q0;
output  [3:0] SEQA_1_address0;
output   SEQA_1_ce0;
input  [7:0] SEQA_1_q0;
output  [3:0] SEQA_2_address0;
output   SEQA_2_ce0;
input  [7:0] SEQA_2_q0;
output  [3:0] SEQA_3_address0;
output   SEQA_3_ce0;
input  [7:0] SEQA_3_q0;
output  [3:0] SEQA_4_address0;
output   SEQA_4_ce0;
input  [7:0] SEQA_4_q0;
output  [3:0] SEQA_5_address0;
output   SEQA_5_ce0;
input  [7:0] SEQA_5_q0;
output  [3:0] SEQA_6_address0;
output   SEQA_6_ce0;
input  [7:0] SEQA_6_q0;
output  [3:0] SEQA_7_address0;
output   SEQA_7_ce0;
input  [7:0] SEQA_7_q0;
output  [3:0] SEQB_0_address0;
output   SEQB_0_ce0;
input  [7:0] SEQB_0_q0;
output  [3:0] SEQB_1_address0;
output   SEQB_1_ce0;
input  [7:0] SEQB_1_q0;
output  [3:0] SEQB_2_address0;
output   SEQB_2_ce0;
input  [7:0] SEQB_2_q0;
output  [3:0] SEQB_3_address0;
output   SEQB_3_ce0;
input  [7:0] SEQB_3_q0;
output  [3:0] SEQB_4_address0;
output   SEQB_4_ce0;
input  [7:0] SEQB_4_q0;
output  [3:0] SEQB_5_address0;
output   SEQB_5_ce0;
input  [7:0] SEQB_5_q0;
output  [3:0] SEQB_6_address0;
output   SEQB_6_ce0;
input  [7:0] SEQB_6_q0;
output  [3:0] SEQB_7_address0;
output   SEQB_7_ce0;
input  [7:0] SEQB_7_q0;
output  [11:0] ptr_0_address0;
output   ptr_0_ce0;
input  [7:0] ptr_0_q0;
output  [11:0] ptr_1_address0;
output   ptr_1_ce0;
input  [7:0] ptr_1_q0;
output  [11:0] ptr_2_address0;
output   ptr_2_ce0;
input  [7:0] ptr_2_q0;
output  [11:0] ptr_3_address0;
output   ptr_3_ce0;
input  [7:0] ptr_3_q0;
output  [11:0] ptr_4_address0;
output   ptr_4_ce0;
input  [7:0] ptr_4_q0;
output  [11:0] ptr_5_address0;
output   ptr_5_ce0;
input  [7:0] ptr_5_q0;
output  [11:0] ptr_6_address0;
output   ptr_6_ce0;
input  [7:0] ptr_6_q0;
output  [11:0] ptr_7_address0;
output   ptr_7_ce0;
input  [7:0] ptr_7_q0;
output  [31:0] b_str_idx_2_out;
output   b_str_idx_2_out_ap_vld;
reg ap_idle;
reg b_str_idx_2_out_ap_vld;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
wire   [0:0] or_ln62_fu_1248_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] b_idx_1_reg_1501;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] a_idx_1_reg_1507;
reg   [0:0] or_ln62_reg_1513;
wire   [2:0] trunc_ln64_fu_1286_p1;
reg   [2:0] trunc_ln64_reg_1517;
wire   [2:0] trunc_ln18_1_fu_1326_p1;
reg   [2:0] trunc_ln18_1_reg_1562;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln18_fu_1340_p1;
reg   [63:0] zext_ln18_reg_1566;
wire   [2:0] trunc_ln18_2_fu_1360_p1;
reg   [2:0] trunc_ln18_2_reg_1602;
wire   [2:0] trunc_ln18_3_fu_1363_p1;
reg   [2:0] trunc_ln18_3_reg_1607;
wire   [7:0] tmp_1_fu_1366_p19;
reg   [7:0] tmp_1_reg_1612;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter1_stage0;
wire   [63:0] zext_ln64_fu_1300_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln71_fu_1405_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln65_fu_1422_p1;
wire   [63:0] zext_ln66_fu_1434_p1;
wire   [63:0] zext_ln77_fu_1456_p1;
wire   [4:0] alignedA_6_addr_1_gep_fu_899_p3;
wire   [4:0] alignedA_5_addr_1_gep_fu_915_p3;
wire   [4:0] alignedA_4_addr_1_gep_fu_931_p3;
wire   [4:0] alignedA_3_addr_1_gep_fu_947_p3;
wire   [4:0] alignedA_2_addr_1_gep_fu_963_p3;
wire   [4:0] alignedA_1_addr_1_gep_fu_979_p3;
wire   [4:0] alignedA_0_addr_1_gep_fu_995_p3;
wire   [4:0] alignedA_7_addr_1_gep_fu_1011_p3;
wire   [4:0] alignedB_6_addr_gep_fu_1027_p3;
wire   [4:0] alignedB_5_addr_gep_fu_1035_p3;
wire   [4:0] alignedB_4_addr_gep_fu_1043_p3;
wire   [4:0] alignedB_3_addr_gep_fu_1051_p3;
wire   [4:0] alignedB_2_addr_gep_fu_1059_p3;
wire   [4:0] alignedB_1_addr_gep_fu_1067_p3;
wire   [4:0] alignedB_0_addr_gep_fu_1075_p3;
wire   [4:0] alignedB_7_addr_gep_fu_1083_p3;
reg   [63:0] a_str_idx_fu_152;
wire   [63:0] add_ln66_fu_1320_p2;
wire    ap_loop_init;
reg   [31:0] b_idx_fu_156;
wire   [31:0] grp_fu_1106_p2;
reg   [31:0] a_idx_fu_160;
wire   [31:0] grp_fu_1091_p2;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage0_01001;
reg    ptr_0_ce0_local;
reg    ptr_1_ce0_local;
reg    ptr_2_ce0_local;
reg    ptr_3_ce0_local;
reg    ptr_4_ce0_local;
reg    ptr_5_ce0_local;
reg    ptr_6_ce0_local;
reg    ptr_7_ce0_local;
reg    SEQA_0_ce0_local;
reg   [3:0] SEQA_0_address0_local;
reg    SEQA_1_ce0_local;
reg   [3:0] SEQA_1_address0_local;
reg    SEQA_2_ce0_local;
reg   [3:0] SEQA_2_address0_local;
reg    SEQA_3_ce0_local;
reg   [3:0] SEQA_3_address0_local;
reg    SEQA_4_ce0_local;
reg   [3:0] SEQA_4_address0_local;
reg    SEQA_5_ce0_local;
reg   [3:0] SEQA_5_address0_local;
reg    SEQA_6_ce0_local;
reg   [3:0] SEQA_6_address0_local;
reg    SEQA_7_ce0_local;
reg   [3:0] SEQA_7_address0_local;
reg    alignedB_6_we0_local;
reg   [7:0] alignedB_6_d0_local;
reg    alignedB_6_ce0_local;
reg   [4:0] alignedB_6_address0_local;
wire   [7:0] grp_fu_1168_p19;
reg    alignedB_5_we0_local;
reg   [7:0] alignedB_5_d0_local;
reg    alignedB_5_ce0_local;
reg   [4:0] alignedB_5_address0_local;
reg    alignedB_4_we0_local;
reg   [7:0] alignedB_4_d0_local;
reg    alignedB_4_ce0_local;
reg   [4:0] alignedB_4_address0_local;
reg    alignedB_3_we0_local;
reg   [7:0] alignedB_3_d0_local;
reg    alignedB_3_ce0_local;
reg   [4:0] alignedB_3_address0_local;
reg    alignedB_2_we0_local;
reg   [7:0] alignedB_2_d0_local;
reg    alignedB_2_ce0_local;
reg   [4:0] alignedB_2_address0_local;
reg    alignedB_1_we0_local;
reg   [7:0] alignedB_1_d0_local;
reg    alignedB_1_ce0_local;
reg   [4:0] alignedB_1_address0_local;
reg    alignedB_0_we0_local;
reg   [7:0] alignedB_0_d0_local;
reg    alignedB_0_ce0_local;
reg   [4:0] alignedB_0_address0_local;
reg    alignedB_7_we0_local;
reg   [7:0] alignedB_7_d0_local;
reg    alignedB_7_ce0_local;
reg   [4:0] alignedB_7_address0_local;
reg    SEQB_0_ce0_local;
reg   [3:0] SEQB_0_address0_local;
reg    SEQB_1_ce0_local;
reg   [3:0] SEQB_1_address0_local;
reg    SEQB_2_ce0_local;
reg   [3:0] SEQB_2_address0_local;
reg    SEQB_3_ce0_local;
reg   [3:0] SEQB_3_address0_local;
reg    SEQB_4_ce0_local;
reg   [3:0] SEQB_4_address0_local;
reg    SEQB_5_ce0_local;
reg   [3:0] SEQB_5_address0_local;
reg    SEQB_6_ce0_local;
reg   [3:0] SEQB_6_address0_local;
reg    SEQB_7_ce0_local;
reg   [3:0] SEQB_7_address0_local;
reg    alignedA_6_we0_local;
reg   [7:0] alignedA_6_d0_local;
reg    alignedA_6_ce0_local;
reg   [4:0] alignedA_6_address0_local;
wire   [7:0] grp_fu_1121_p19;
reg    alignedA_5_we0_local;
reg   [7:0] alignedA_5_d0_local;
reg    alignedA_5_ce0_local;
reg   [4:0] alignedA_5_address0_local;
reg    alignedA_4_we0_local;
reg   [7:0] alignedA_4_d0_local;
reg    alignedA_4_ce0_local;
reg   [4:0] alignedA_4_address0_local;
reg    alignedA_3_we0_local;
reg   [7:0] alignedA_3_d0_local;
reg    alignedA_3_ce0_local;
reg   [4:0] alignedA_3_address0_local;
reg    alignedA_2_we0_local;
reg   [7:0] alignedA_2_d0_local;
reg    alignedA_2_ce0_local;
reg   [4:0] alignedA_2_address0_local;
reg    alignedA_1_we0_local;
reg   [7:0] alignedA_1_d0_local;
reg    alignedA_1_ce0_local;
reg   [4:0] alignedA_1_address0_local;
reg    alignedA_0_we0_local;
reg   [7:0] alignedA_0_d0_local;
reg    alignedA_0_ce0_local;
reg   [4:0] alignedA_0_address0_local;
reg    alignedA_7_we0_local;
reg   [7:0] alignedA_7_d0_local;
reg    alignedA_7_ce0_local;
reg   [4:0] alignedA_7_address0_local;
wire   [7:0] grp_fu_1121_p17;
wire   [7:0] grp_fu_1168_p17;
wire   [0:0] icmp_ln62_fu_1236_p2;
wire   [0:0] icmp_ln62_1_fu_1242_p2;
wire   [7:0] trunc_ln16_fu_1262_p1;
wire   [14:0] p_shl_fu_1266_p3;
wire   [14:0] trunc_ln18_5_fu_1258_p1;
wire   [14:0] r_fu_1274_p2;
wire   [14:0] trunc_ln18_4_fu_1254_p1;
wire   [14:0] add_ln64_fu_1280_p2;
wire   [11:0] lshr_ln8_fu_1290_p4;
wire   [4:0] lshr_ln7_fu_1330_p4;
wire   [7:0] tmp_1_fu_1366_p17;
wire   [3:0] grp_fu_1096_p4;
wire   [3:0] grp_fu_1111_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
reg    ap_done_pending_pp0;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1120;
reg    ap_condition_1129;
reg    ap_condition_1135;
reg    ap_condition_1140;
reg    ap_condition_1145;
reg    ap_condition_1150;
reg    ap_condition_1155;
reg    ap_condition_1160;
reg    ap_condition_1165;
reg    ap_condition_1170;
reg    ap_condition_1175;
reg    ap_condition_1180;
reg    ap_condition_1185;
reg    ap_condition_1190;
reg    ap_condition_1195;
reg    ap_condition_1200;
reg    ap_condition_1205;
reg    ap_condition_1212;
reg    ap_condition_1217;
reg    ap_condition_1222;
reg    ap_condition_1227;
reg    ap_condition_1232;
reg    ap_condition_1237;
reg    ap_condition_1242;
reg    ap_condition_1247;
wire   [2:0] grp_fu_1121_p1;
wire   [2:0] grp_fu_1121_p3;
wire   [2:0] grp_fu_1121_p5;
wire  signed [2:0] grp_fu_1121_p7;
wire  signed [2:0] grp_fu_1121_p9;
wire  signed [2:0] grp_fu_1121_p11;
wire  signed [2:0] grp_fu_1121_p13;
wire   [2:0] grp_fu_1121_p15;
wire   [2:0] grp_fu_1168_p1;
wire   [2:0] grp_fu_1168_p3;
wire   [2:0] grp_fu_1168_p5;
wire  signed [2:0] grp_fu_1168_p7;
wire  signed [2:0] grp_fu_1168_p9;
wire  signed [2:0] grp_fu_1168_p11;
wire  signed [2:0] grp_fu_1168_p13;
wire   [2:0] grp_fu_1168_p15;
wire   [2:0] tmp_1_fu_1366_p1;
wire   [2:0] tmp_1_fu_1366_p3;
wire   [2:0] tmp_1_fu_1366_p5;
wire   [2:0] tmp_1_fu_1366_p7;
wire  signed [2:0] tmp_1_fu_1366_p9;
wire  signed [2:0] tmp_1_fu_1366_p11;
wire  signed [2:0] tmp_1_fu_1366_p13;
wire  signed [2:0] tmp_1_fu_1366_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 a_str_idx_fu_152 = 64'd0;
#0 b_idx_fu_156 = 32'd0;
#0 a_idx_fu_160 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_17_3_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 8 ),.CASE1( 3'h2 ),.din1_WIDTH( 8 ),.CASE2( 3'h3 ),.din2_WIDTH( 8 ),.CASE3( 3'h4 ),.din3_WIDTH( 8 ),.CASE4( 3'h5 ),.din4_WIDTH( 8 ),.CASE5( 3'h6 ),.din5_WIDTH( 8 ),.CASE6( 3'h7 ),.din6_WIDTH( 8 ),.CASE7( 3'h0 ),.din7_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 3 ),.dout_WIDTH( 8 ))
sparsemux_17_3_8_1_1_U57(.din0(SEQA_0_q0),.din1(SEQA_1_q0),.din2(SEQA_2_q0),.din3(SEQA_3_q0),.din4(SEQA_4_q0),.din5(SEQA_5_q0),.din6(SEQA_6_q0),.din7(SEQA_7_q0),.def(grp_fu_1121_p17),.sel(trunc_ln18_2_reg_1602),.dout(grp_fu_1121_p19));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_17_3_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 8 ),.CASE1( 3'h2 ),.din1_WIDTH( 8 ),.CASE2( 3'h3 ),.din2_WIDTH( 8 ),.CASE3( 3'h4 ),.din3_WIDTH( 8 ),.CASE4( 3'h5 ),.din4_WIDTH( 8 ),.CASE5( 3'h6 ),.din5_WIDTH( 8 ),.CASE6( 3'h7 ),.din6_WIDTH( 8 ),.CASE7( 3'h0 ),.din7_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 3 ),.dout_WIDTH( 8 ))
sparsemux_17_3_8_1_1_U58(.din0(SEQB_0_q0),.din1(SEQB_1_q0),.din2(SEQB_2_q0),.din3(SEQB_3_q0),.din4(SEQB_4_q0),.din5(SEQB_5_q0),.din6(SEQB_6_q0),.din7(SEQB_7_q0),.def(grp_fu_1168_p17),.sel(trunc_ln18_3_reg_1607),.dout(grp_fu_1168_p19));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_17_3_8_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 8 ),.CASE1( 3'h1 ),.din1_WIDTH( 8 ),.CASE2( 3'h2 ),.din2_WIDTH( 8 ),.CASE3( 3'h3 ),.din3_WIDTH( 8 ),.CASE4( 3'h4 ),.din4_WIDTH( 8 ),.CASE5( 3'h5 ),.din5_WIDTH( 8 ),.CASE6( 3'h6 ),.din6_WIDTH( 8 ),.CASE7( 3'h7 ),.din7_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 3 ),.dout_WIDTH( 8 ))
sparsemux_17_3_8_1_1_x_U59(.din0(ptr_0_q0),.din1(ptr_1_q0),.din2(ptr_2_q0),.din3(ptr_3_q0),.din4(ptr_4_q0),.din5(ptr_5_q0),.din6(ptr_6_q0),.din7(ptr_7_q0),.def(tmp_1_fu_1366_p17),.sel(trunc_ln64_reg_1517),.dout(tmp_1_fu_1366_p19));
needwun_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_idx_fu_160 <= 32'd128;
    end else if ((((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_fu_1366_p19 == 8'd92) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_fu_1366_p19 == 8'd60) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        a_idx_fu_160 <= grp_fu_1091_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            a_str_idx_fu_152 <= 64'd0;
        end else if (((or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            a_str_idx_fu_152 <= add_ln66_fu_1320_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_idx_fu_156 <= 32'd128;
    end else if (((~(tmp_1_fu_1366_p19 == 8'd92) & ~(tmp_1_fu_1366_p19 == 8'd60) & (1'b0 == ap_block_pp0_stage0_11001) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_fu_1366_p19 == 8'd92) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        b_idx_fu_156 <= grp_fu_1106_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_idx_1_reg_1507 <= a_idx_fu_160;
        b_idx_1_reg_1501 <= b_idx_fu_156;
        or_ln62_reg_1513 <= or_ln62_fu_1248_p2;
        trunc_ln64_reg_1517 <= trunc_ln64_fu_1286_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_1_reg_1612 <= tmp_1_fu_1366_p19;
        trunc_ln18_1_reg_1562 <= trunc_ln18_1_fu_1326_p1;
        trunc_ln18_2_reg_1602 <= trunc_ln18_2_fu_1360_p1;
        trunc_ln18_3_reg_1607 <= trunc_ln18_3_fu_1363_p1;
        zext_ln18_reg_1566[4 : 0] <= zext_ln18_fu_1340_p1[4 : 0];
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1120)) begin
        if ((tmp_1_fu_1366_p19 == 8'd92)) begin
            SEQA_0_address0_local = zext_ln65_fu_1422_p1;
        end else if ((tmp_1_fu_1366_p19 == 8'd60)) begin
            SEQA_0_address0_local = zext_ln71_fu_1405_p1;
        end else begin
            SEQA_0_address0_local = 'bx;
        end
    end else begin
        SEQA_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_fu_1366_p19 == 8'd92) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_fu_1366_p19 == 8'd60) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        SEQA_0_ce0_local = 1'b1;
    end else begin
        SEQA_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1120)) begin
        if ((tmp_1_fu_1366_p19 == 8'd92)) begin
            SEQA_1_address0_local = zext_ln65_fu_1422_p1;
        end else if ((tmp_1_fu_1366_p19 == 8'd60)) begin
            SEQA_1_address0_local = zext_ln71_fu_1405_p1;
        end else begin
            SEQA_1_address0_local = 'bx;
        end
    end else begin
        SEQA_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_fu_1366_p19 == 8'd92) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_fu_1366_p19 == 8'd60) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        SEQA_1_ce0_local = 1'b1;
    end else begin
        SEQA_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1120)) begin
        if ((tmp_1_fu_1366_p19 == 8'd92)) begin
            SEQA_2_address0_local = zext_ln65_fu_1422_p1;
        end else if ((tmp_1_fu_1366_p19 == 8'd60)) begin
            SEQA_2_address0_local = zext_ln71_fu_1405_p1;
        end else begin
            SEQA_2_address0_local = 'bx;
        end
    end else begin
        SEQA_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_fu_1366_p19 == 8'd92) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_fu_1366_p19 == 8'd60) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        SEQA_2_ce0_local = 1'b1;
    end else begin
        SEQA_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1120)) begin
        if ((tmp_1_fu_1366_p19 == 8'd92)) begin
            SEQA_3_address0_local = zext_ln65_fu_1422_p1;
        end else if ((tmp_1_fu_1366_p19 == 8'd60)) begin
            SEQA_3_address0_local = zext_ln71_fu_1405_p1;
        end else begin
            SEQA_3_address0_local = 'bx;
        end
    end else begin
        SEQA_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_fu_1366_p19 == 8'd92) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_fu_1366_p19 == 8'd60) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        SEQA_3_ce0_local = 1'b1;
    end else begin
        SEQA_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1120)) begin
        if ((tmp_1_fu_1366_p19 == 8'd92)) begin
            SEQA_4_address0_local = zext_ln65_fu_1422_p1;
        end else if ((tmp_1_fu_1366_p19 == 8'd60)) begin
            SEQA_4_address0_local = zext_ln71_fu_1405_p1;
        end else begin
            SEQA_4_address0_local = 'bx;
        end
    end else begin
        SEQA_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_fu_1366_p19 == 8'd92) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_fu_1366_p19 == 8'd60) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        SEQA_4_ce0_local = 1'b1;
    end else begin
        SEQA_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1120)) begin
        if ((tmp_1_fu_1366_p19 == 8'd92)) begin
            SEQA_5_address0_local = zext_ln65_fu_1422_p1;
        end else if ((tmp_1_fu_1366_p19 == 8'd60)) begin
            SEQA_5_address0_local = zext_ln71_fu_1405_p1;
        end else begin
            SEQA_5_address0_local = 'bx;
        end
    end else begin
        SEQA_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_fu_1366_p19 == 8'd92) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_fu_1366_p19 == 8'd60) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        SEQA_5_ce0_local = 1'b1;
    end else begin
        SEQA_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1120)) begin
        if ((tmp_1_fu_1366_p19 == 8'd92)) begin
            SEQA_6_address0_local = zext_ln65_fu_1422_p1;
        end else if ((tmp_1_fu_1366_p19 == 8'd60)) begin
            SEQA_6_address0_local = zext_ln71_fu_1405_p1;
        end else begin
            SEQA_6_address0_local = 'bx;
        end
    end else begin
        SEQA_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_fu_1366_p19 == 8'd92) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_fu_1366_p19 == 8'd60) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        SEQA_6_ce0_local = 1'b1;
    end else begin
        SEQA_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1120)) begin
        if ((tmp_1_fu_1366_p19 == 8'd92)) begin
            SEQA_7_address0_local = zext_ln65_fu_1422_p1;
        end else if ((tmp_1_fu_1366_p19 == 8'd60)) begin
            SEQA_7_address0_local = zext_ln71_fu_1405_p1;
        end else begin
            SEQA_7_address0_local = 'bx;
        end
    end else begin
        SEQA_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_fu_1366_p19 == 8'd92) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_fu_1366_p19 == 8'd60) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        SEQA_7_ce0_local = 1'b1;
    end else begin
        SEQA_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1120)) begin
        if ((~(tmp_1_fu_1366_p19 == 8'd92) & ~(tmp_1_fu_1366_p19 == 8'd60))) begin
            SEQB_0_address0_local = zext_ln77_fu_1456_p1;
        end else if ((tmp_1_fu_1366_p19 == 8'd92)) begin
            SEQB_0_address0_local = zext_ln66_fu_1434_p1;
        end else begin
            SEQB_0_address0_local = 'bx;
        end
    end else begin
        SEQB_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_fu_1366_p19 == 8'd92) & ~(tmp_1_fu_1366_p19 == 8'd60) & (1'b0 == ap_block_pp0_stage0_11001) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_fu_1366_p19 == 8'd92) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        SEQB_0_ce0_local = 1'b1;
    end else begin
        SEQB_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1120)) begin
        if ((~(tmp_1_fu_1366_p19 == 8'd92) & ~(tmp_1_fu_1366_p19 == 8'd60))) begin
            SEQB_1_address0_local = zext_ln77_fu_1456_p1;
        end else if ((tmp_1_fu_1366_p19 == 8'd92)) begin
            SEQB_1_address0_local = zext_ln66_fu_1434_p1;
        end else begin
            SEQB_1_address0_local = 'bx;
        end
    end else begin
        SEQB_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_fu_1366_p19 == 8'd92) & ~(tmp_1_fu_1366_p19 == 8'd60) & (1'b0 == ap_block_pp0_stage0_11001) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_fu_1366_p19 == 8'd92) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        SEQB_1_ce0_local = 1'b1;
    end else begin
        SEQB_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1120)) begin
        if ((~(tmp_1_fu_1366_p19 == 8'd92) & ~(tmp_1_fu_1366_p19 == 8'd60))) begin
            SEQB_2_address0_local = zext_ln77_fu_1456_p1;
        end else if ((tmp_1_fu_1366_p19 == 8'd92)) begin
            SEQB_2_address0_local = zext_ln66_fu_1434_p1;
        end else begin
            SEQB_2_address0_local = 'bx;
        end
    end else begin
        SEQB_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_fu_1366_p19 == 8'd92) & ~(tmp_1_fu_1366_p19 == 8'd60) & (1'b0 == ap_block_pp0_stage0_11001) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_fu_1366_p19 == 8'd92) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        SEQB_2_ce0_local = 1'b1;
    end else begin
        SEQB_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1120)) begin
        if ((~(tmp_1_fu_1366_p19 == 8'd92) & ~(tmp_1_fu_1366_p19 == 8'd60))) begin
            SEQB_3_address0_local = zext_ln77_fu_1456_p1;
        end else if ((tmp_1_fu_1366_p19 == 8'd92)) begin
            SEQB_3_address0_local = zext_ln66_fu_1434_p1;
        end else begin
            SEQB_3_address0_local = 'bx;
        end
    end else begin
        SEQB_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_fu_1366_p19 == 8'd92) & ~(tmp_1_fu_1366_p19 == 8'd60) & (1'b0 == ap_block_pp0_stage0_11001) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_fu_1366_p19 == 8'd92) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        SEQB_3_ce0_local = 1'b1;
    end else begin
        SEQB_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1120)) begin
        if ((~(tmp_1_fu_1366_p19 == 8'd92) & ~(tmp_1_fu_1366_p19 == 8'd60))) begin
            SEQB_4_address0_local = zext_ln77_fu_1456_p1;
        end else if ((tmp_1_fu_1366_p19 == 8'd92)) begin
            SEQB_4_address0_local = zext_ln66_fu_1434_p1;
        end else begin
            SEQB_4_address0_local = 'bx;
        end
    end else begin
        SEQB_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_fu_1366_p19 == 8'd92) & ~(tmp_1_fu_1366_p19 == 8'd60) & (1'b0 == ap_block_pp0_stage0_11001) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_fu_1366_p19 == 8'd92) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        SEQB_4_ce0_local = 1'b1;
    end else begin
        SEQB_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1120)) begin
        if ((~(tmp_1_fu_1366_p19 == 8'd92) & ~(tmp_1_fu_1366_p19 == 8'd60))) begin
            SEQB_5_address0_local = zext_ln77_fu_1456_p1;
        end else if ((tmp_1_fu_1366_p19 == 8'd92)) begin
            SEQB_5_address0_local = zext_ln66_fu_1434_p1;
        end else begin
            SEQB_5_address0_local = 'bx;
        end
    end else begin
        SEQB_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_fu_1366_p19 == 8'd92) & ~(tmp_1_fu_1366_p19 == 8'd60) & (1'b0 == ap_block_pp0_stage0_11001) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_fu_1366_p19 == 8'd92) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        SEQB_5_ce0_local = 1'b1;
    end else begin
        SEQB_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1120)) begin
        if ((~(tmp_1_fu_1366_p19 == 8'd92) & ~(tmp_1_fu_1366_p19 == 8'd60))) begin
            SEQB_6_address0_local = zext_ln77_fu_1456_p1;
        end else if ((tmp_1_fu_1366_p19 == 8'd92)) begin
            SEQB_6_address0_local = zext_ln66_fu_1434_p1;
        end else begin
            SEQB_6_address0_local = 'bx;
        end
    end else begin
        SEQB_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_fu_1366_p19 == 8'd92) & ~(tmp_1_fu_1366_p19 == 8'd60) & (1'b0 == ap_block_pp0_stage0_11001) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_fu_1366_p19 == 8'd92) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        SEQB_6_ce0_local = 1'b1;
    end else begin
        SEQB_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1120)) begin
        if ((~(tmp_1_fu_1366_p19 == 8'd92) & ~(tmp_1_fu_1366_p19 == 8'd60))) begin
            SEQB_7_address0_local = zext_ln77_fu_1456_p1;
        end else if ((tmp_1_fu_1366_p19 == 8'd92)) begin
            SEQB_7_address0_local = zext_ln66_fu_1434_p1;
        end else begin
            SEQB_7_address0_local = 'bx;
        end
    end else begin
        SEQB_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_fu_1366_p19 == 8'd92) & ~(tmp_1_fu_1366_p19 == 8'd60) & (1'b0 == ap_block_pp0_stage0_11001) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_fu_1366_p19 == 8'd92) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        SEQB_7_ce0_local = 1'b1;
    end else begin
        SEQB_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1135)) begin
            alignedA_0_address0_local = alignedA_0_addr_1_gep_fu_995_p3;
        end else if ((1'b1 == ap_condition_1129)) begin
            alignedA_0_address0_local = zext_ln18_reg_1566;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            alignedA_0_address0_local = zext_ln18_fu_1340_p1;
        end else begin
            alignedA_0_address0_local = 'bx;
        end
    end else begin
        alignedA_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd0) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd60) & (trunc_ln18_1_reg_1562 == 3'd0) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedA_0_ce0_local = 1'b1;
    end else begin
        alignedA_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd0) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_1612 == 8'd60) & (trunc_ln18_1_reg_1562 == 3'd0) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedA_0_d0_local = grp_fu_1121_p19;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedA_0_d0_local = 8'd45;
    end else begin
        alignedA_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_fu_1366_p19 == 8'd92) & ~(tmp_1_fu_1366_p19 == 8'd60) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln18_1_fu_1326_p1 == 3'd0) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd0) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd60) & (trunc_ln18_1_reg_1562 == 3'd0) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedA_0_we0_local = 1'b1;
    end else begin
        alignedA_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1145)) begin
            alignedA_1_address0_local = alignedA_1_addr_1_gep_fu_979_p3;
        end else if ((1'b1 == ap_condition_1140)) begin
            alignedA_1_address0_local = zext_ln18_reg_1566;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            alignedA_1_address0_local = zext_ln18_fu_1340_p1;
        end else begin
            alignedA_1_address0_local = 'bx;
        end
    end else begin
        alignedA_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd1) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd60) & (trunc_ln18_1_reg_1562 == 3'd1) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedA_1_ce0_local = 1'b1;
    end else begin
        alignedA_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd1) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_1612 == 8'd60) & (trunc_ln18_1_reg_1562 == 3'd1) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedA_1_d0_local = grp_fu_1121_p19;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedA_1_d0_local = 8'd45;
    end else begin
        alignedA_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_fu_1366_p19 == 8'd92) & ~(tmp_1_fu_1366_p19 == 8'd60) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln18_1_fu_1326_p1 == 3'd1) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd1) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd60) & (trunc_ln18_1_reg_1562 == 3'd1) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedA_1_we0_local = 1'b1;
    end else begin
        alignedA_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1155)) begin
            alignedA_2_address0_local = alignedA_2_addr_1_gep_fu_963_p3;
        end else if ((1'b1 == ap_condition_1150)) begin
            alignedA_2_address0_local = zext_ln18_reg_1566;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            alignedA_2_address0_local = zext_ln18_fu_1340_p1;
        end else begin
            alignedA_2_address0_local = 'bx;
        end
    end else begin
        alignedA_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd2) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd60) & (trunc_ln18_1_reg_1562 == 3'd2) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedA_2_ce0_local = 1'b1;
    end else begin
        alignedA_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd2) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_1612 == 8'd60) & (trunc_ln18_1_reg_1562 == 3'd2) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedA_2_d0_local = grp_fu_1121_p19;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedA_2_d0_local = 8'd45;
    end else begin
        alignedA_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_fu_1366_p19 == 8'd92) & ~(tmp_1_fu_1366_p19 == 8'd60) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln18_1_fu_1326_p1 == 3'd2) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd2) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd60) & (trunc_ln18_1_reg_1562 == 3'd2) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedA_2_we0_local = 1'b1;
    end else begin
        alignedA_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1165)) begin
            alignedA_3_address0_local = alignedA_3_addr_1_gep_fu_947_p3;
        end else if ((1'b1 == ap_condition_1160)) begin
            alignedA_3_address0_local = zext_ln18_reg_1566;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            alignedA_3_address0_local = zext_ln18_fu_1340_p1;
        end else begin
            alignedA_3_address0_local = 'bx;
        end
    end else begin
        alignedA_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd3) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd60) & (trunc_ln18_1_reg_1562 == 3'd3) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedA_3_ce0_local = 1'b1;
    end else begin
        alignedA_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd3) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_1612 == 8'd60) & (trunc_ln18_1_reg_1562 == 3'd3) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedA_3_d0_local = grp_fu_1121_p19;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedA_3_d0_local = 8'd45;
    end else begin
        alignedA_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_fu_1366_p19 == 8'd92) & ~(tmp_1_fu_1366_p19 == 8'd60) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln18_1_fu_1326_p1 == 3'd3) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd3) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd60) & (trunc_ln18_1_reg_1562 == 3'd3) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedA_3_we0_local = 1'b1;
    end else begin
        alignedA_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1175)) begin
            alignedA_4_address0_local = alignedA_4_addr_1_gep_fu_931_p3;
        end else if ((1'b1 == ap_condition_1170)) begin
            alignedA_4_address0_local = zext_ln18_reg_1566;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            alignedA_4_address0_local = zext_ln18_fu_1340_p1;
        end else begin
            alignedA_4_address0_local = 'bx;
        end
    end else begin
        alignedA_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd4) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd60) & (trunc_ln18_1_reg_1562 == 3'd4) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedA_4_ce0_local = 1'b1;
    end else begin
        alignedA_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd4) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_1612 == 8'd60) & (trunc_ln18_1_reg_1562 == 3'd4) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedA_4_d0_local = grp_fu_1121_p19;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedA_4_d0_local = 8'd45;
    end else begin
        alignedA_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_fu_1366_p19 == 8'd92) & ~(tmp_1_fu_1366_p19 == 8'd60) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln18_1_fu_1326_p1 == 3'd4) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd4) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd60) & (trunc_ln18_1_reg_1562 == 3'd4) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedA_4_we0_local = 1'b1;
    end else begin
        alignedA_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1185)) begin
            alignedA_5_address0_local = alignedA_5_addr_1_gep_fu_915_p3;
        end else if ((1'b1 == ap_condition_1180)) begin
            alignedA_5_address0_local = zext_ln18_reg_1566;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            alignedA_5_address0_local = zext_ln18_fu_1340_p1;
        end else begin
            alignedA_5_address0_local = 'bx;
        end
    end else begin
        alignedA_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd5) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd60) & (trunc_ln18_1_reg_1562 == 3'd5) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedA_5_ce0_local = 1'b1;
    end else begin
        alignedA_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd5) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_1612 == 8'd60) & (trunc_ln18_1_reg_1562 == 3'd5) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedA_5_d0_local = grp_fu_1121_p19;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedA_5_d0_local = 8'd45;
    end else begin
        alignedA_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_fu_1366_p19 == 8'd92) & ~(tmp_1_fu_1366_p19 == 8'd60) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln18_1_fu_1326_p1 == 3'd5) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd5) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd60) & (trunc_ln18_1_reg_1562 == 3'd5) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedA_5_we0_local = 1'b1;
    end else begin
        alignedA_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1195)) begin
            alignedA_6_address0_local = alignedA_6_addr_1_gep_fu_899_p3;
        end else if ((1'b1 == ap_condition_1190)) begin
            alignedA_6_address0_local = zext_ln18_reg_1566;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            alignedA_6_address0_local = zext_ln18_fu_1340_p1;
        end else begin
            alignedA_6_address0_local = 'bx;
        end
    end else begin
        alignedA_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd6) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd60) & (trunc_ln18_1_reg_1562 == 3'd6) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedA_6_ce0_local = 1'b1;
    end else begin
        alignedA_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd6) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_1612 == 8'd60) & (trunc_ln18_1_reg_1562 == 3'd6) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedA_6_d0_local = grp_fu_1121_p19;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedA_6_d0_local = 8'd45;
    end else begin
        alignedA_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_fu_1366_p19 == 8'd92) & ~(tmp_1_fu_1366_p19 == 8'd60) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln18_1_fu_1326_p1 == 3'd6) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd6) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd60) & (trunc_ln18_1_reg_1562 == 3'd6) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedA_6_we0_local = 1'b1;
    end else begin
        alignedA_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1205)) begin
            alignedA_7_address0_local = alignedA_7_addr_1_gep_fu_1011_p3;
        end else if ((1'b1 == ap_condition_1200)) begin
            alignedA_7_address0_local = zext_ln18_reg_1566;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            alignedA_7_address0_local = zext_ln18_fu_1340_p1;
        end else begin
            alignedA_7_address0_local = 'bx;
        end
    end else begin
        alignedA_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd7) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd60) & (trunc_ln18_1_reg_1562 == 3'd7) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedA_7_ce0_local = 1'b1;
    end else begin
        alignedA_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd7) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_1612 == 8'd60) & (trunc_ln18_1_reg_1562 == 3'd7) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedA_7_d0_local = grp_fu_1121_p19;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedA_7_d0_local = 8'd45;
    end else begin
        alignedA_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_fu_1366_p19 == 8'd92) & ~(tmp_1_fu_1366_p19 == 8'd60) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln18_1_fu_1326_p1 == 3'd7) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd7) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd60) & (trunc_ln18_1_reg_1562 == 3'd7) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedA_7_we0_local = 1'b1;
    end else begin
        alignedA_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1212)) begin
            alignedB_0_address0_local = alignedB_0_addr_gep_fu_1075_p3;
        end else if ((1'b1 == ap_condition_1135)) begin
            alignedB_0_address0_local = zext_ln18_reg_1566;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            alignedB_0_address0_local = zext_ln18_fu_1340_p1;
        end else begin
            alignedB_0_address0_local = 'bx;
        end
    end else begin
        alignedB_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_1612 == 8'd92) & ~(tmp_1_reg_1612 == 8'd60) & (1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln18_1_reg_1562 == 3'd0) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd0) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedB_0_ce0_local = 1'b1;
    end else begin
        alignedB_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_1612 == 8'd92) & ~(tmp_1_reg_1612 == 8'd60) & (1'b0 == ap_block_pp0_stage1) & (trunc_ln18_1_reg_1562 == 3'd0) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd0) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedB_0_d0_local = grp_fu_1168_p19;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_0_d0_local = 8'd45;
    end else begin
        alignedB_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_1612 == 8'd92) & ~(tmp_1_reg_1612 == 8'd60) & (1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln18_1_reg_1562 == 3'd0) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_fu_1366_p19 == 8'd60) & (trunc_ln18_1_fu_1326_p1 == 3'd0) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd0) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedB_0_we0_local = 1'b1;
    end else begin
        alignedB_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1217)) begin
            alignedB_1_address0_local = alignedB_1_addr_gep_fu_1067_p3;
        end else if ((1'b1 == ap_condition_1145)) begin
            alignedB_1_address0_local = zext_ln18_reg_1566;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            alignedB_1_address0_local = zext_ln18_fu_1340_p1;
        end else begin
            alignedB_1_address0_local = 'bx;
        end
    end else begin
        alignedB_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_1612 == 8'd92) & ~(tmp_1_reg_1612 == 8'd60) & (1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln18_1_reg_1562 == 3'd1) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd1) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedB_1_ce0_local = 1'b1;
    end else begin
        alignedB_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_1612 == 8'd92) & ~(tmp_1_reg_1612 == 8'd60) & (1'b0 == ap_block_pp0_stage1) & (trunc_ln18_1_reg_1562 == 3'd1) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd1) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedB_1_d0_local = grp_fu_1168_p19;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_1_d0_local = 8'd45;
    end else begin
        alignedB_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_1612 == 8'd92) & ~(tmp_1_reg_1612 == 8'd60) & (1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln18_1_reg_1562 == 3'd1) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_fu_1366_p19 == 8'd60) & (trunc_ln18_1_fu_1326_p1 == 3'd1) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd1) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedB_1_we0_local = 1'b1;
    end else begin
        alignedB_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1222)) begin
            alignedB_2_address0_local = alignedB_2_addr_gep_fu_1059_p3;
        end else if ((1'b1 == ap_condition_1155)) begin
            alignedB_2_address0_local = zext_ln18_reg_1566;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            alignedB_2_address0_local = zext_ln18_fu_1340_p1;
        end else begin
            alignedB_2_address0_local = 'bx;
        end
    end else begin
        alignedB_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_1612 == 8'd92) & ~(tmp_1_reg_1612 == 8'd60) & (1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln18_1_reg_1562 == 3'd2) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd2) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedB_2_ce0_local = 1'b1;
    end else begin
        alignedB_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_1612 == 8'd92) & ~(tmp_1_reg_1612 == 8'd60) & (1'b0 == ap_block_pp0_stage1) & (trunc_ln18_1_reg_1562 == 3'd2) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd2) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedB_2_d0_local = grp_fu_1168_p19;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_2_d0_local = 8'd45;
    end else begin
        alignedB_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_1612 == 8'd92) & ~(tmp_1_reg_1612 == 8'd60) & (1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln18_1_reg_1562 == 3'd2) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_fu_1366_p19 == 8'd60) & (trunc_ln18_1_fu_1326_p1 == 3'd2) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd2) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedB_2_we0_local = 1'b1;
    end else begin
        alignedB_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1227)) begin
            alignedB_3_address0_local = alignedB_3_addr_gep_fu_1051_p3;
        end else if ((1'b1 == ap_condition_1165)) begin
            alignedB_3_address0_local = zext_ln18_reg_1566;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            alignedB_3_address0_local = zext_ln18_fu_1340_p1;
        end else begin
            alignedB_3_address0_local = 'bx;
        end
    end else begin
        alignedB_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_1612 == 8'd92) & ~(tmp_1_reg_1612 == 8'd60) & (1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln18_1_reg_1562 == 3'd3) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd3) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedB_3_ce0_local = 1'b1;
    end else begin
        alignedB_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_1612 == 8'd92) & ~(tmp_1_reg_1612 == 8'd60) & (1'b0 == ap_block_pp0_stage1) & (trunc_ln18_1_reg_1562 == 3'd3) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd3) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedB_3_d0_local = grp_fu_1168_p19;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_3_d0_local = 8'd45;
    end else begin
        alignedB_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_1612 == 8'd92) & ~(tmp_1_reg_1612 == 8'd60) & (1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln18_1_reg_1562 == 3'd3) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_fu_1366_p19 == 8'd60) & (trunc_ln18_1_fu_1326_p1 == 3'd3) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd3) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedB_3_we0_local = 1'b1;
    end else begin
        alignedB_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1232)) begin
            alignedB_4_address0_local = alignedB_4_addr_gep_fu_1043_p3;
        end else if ((1'b1 == ap_condition_1175)) begin
            alignedB_4_address0_local = zext_ln18_reg_1566;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            alignedB_4_address0_local = zext_ln18_fu_1340_p1;
        end else begin
            alignedB_4_address0_local = 'bx;
        end
    end else begin
        alignedB_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_1612 == 8'd92) & ~(tmp_1_reg_1612 == 8'd60) & (1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln18_1_reg_1562 == 3'd4) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd4) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedB_4_ce0_local = 1'b1;
    end else begin
        alignedB_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_1612 == 8'd92) & ~(tmp_1_reg_1612 == 8'd60) & (1'b0 == ap_block_pp0_stage1) & (trunc_ln18_1_reg_1562 == 3'd4) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd4) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedB_4_d0_local = grp_fu_1168_p19;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_4_d0_local = 8'd45;
    end else begin
        alignedB_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_1612 == 8'd92) & ~(tmp_1_reg_1612 == 8'd60) & (1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln18_1_reg_1562 == 3'd4) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_fu_1366_p19 == 8'd60) & (trunc_ln18_1_fu_1326_p1 == 3'd4) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd4) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedB_4_we0_local = 1'b1;
    end else begin
        alignedB_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1237)) begin
            alignedB_5_address0_local = alignedB_5_addr_gep_fu_1035_p3;
        end else if ((1'b1 == ap_condition_1185)) begin
            alignedB_5_address0_local = zext_ln18_reg_1566;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            alignedB_5_address0_local = zext_ln18_fu_1340_p1;
        end else begin
            alignedB_5_address0_local = 'bx;
        end
    end else begin
        alignedB_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_1612 == 8'd92) & ~(tmp_1_reg_1612 == 8'd60) & (1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln18_1_reg_1562 == 3'd5) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd5) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedB_5_ce0_local = 1'b1;
    end else begin
        alignedB_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_1612 == 8'd92) & ~(tmp_1_reg_1612 == 8'd60) & (1'b0 == ap_block_pp0_stage1) & (trunc_ln18_1_reg_1562 == 3'd5) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd5) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedB_5_d0_local = grp_fu_1168_p19;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_5_d0_local = 8'd45;
    end else begin
        alignedB_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_1612 == 8'd92) & ~(tmp_1_reg_1612 == 8'd60) & (1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln18_1_reg_1562 == 3'd5) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_fu_1366_p19 == 8'd60) & (trunc_ln18_1_fu_1326_p1 == 3'd5) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd5) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedB_5_we0_local = 1'b1;
    end else begin
        alignedB_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1242)) begin
            alignedB_6_address0_local = alignedB_6_addr_gep_fu_1027_p3;
        end else if ((1'b1 == ap_condition_1195)) begin
            alignedB_6_address0_local = zext_ln18_reg_1566;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            alignedB_6_address0_local = zext_ln18_fu_1340_p1;
        end else begin
            alignedB_6_address0_local = 'bx;
        end
    end else begin
        alignedB_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_1612 == 8'd92) & ~(tmp_1_reg_1612 == 8'd60) & (1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln18_1_reg_1562 == 3'd6) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd6) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedB_6_ce0_local = 1'b1;
    end else begin
        alignedB_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_1612 == 8'd92) & ~(tmp_1_reg_1612 == 8'd60) & (1'b0 == ap_block_pp0_stage1) & (trunc_ln18_1_reg_1562 == 3'd6) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd6) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedB_6_d0_local = grp_fu_1168_p19;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_6_d0_local = 8'd45;
    end else begin
        alignedB_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_1612 == 8'd92) & ~(tmp_1_reg_1612 == 8'd60) & (1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln18_1_reg_1562 == 3'd6) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_fu_1366_p19 == 8'd60) & (trunc_ln18_1_fu_1326_p1 == 3'd6) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd6) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedB_6_we0_local = 1'b1;
    end else begin
        alignedB_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1247)) begin
            alignedB_7_address0_local = alignedB_7_addr_gep_fu_1083_p3;
        end else if ((1'b1 == ap_condition_1205)) begin
            alignedB_7_address0_local = zext_ln18_reg_1566;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            alignedB_7_address0_local = zext_ln18_fu_1340_p1;
        end else begin
            alignedB_7_address0_local = 'bx;
        end
    end else begin
        alignedB_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_1612 == 8'd92) & ~(tmp_1_reg_1612 == 8'd60) & (1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln18_1_reg_1562 == 3'd7) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd7) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedB_7_ce0_local = 1'b1;
    end else begin
        alignedB_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_1612 == 8'd92) & ~(tmp_1_reg_1612 == 8'd60) & (1'b0 == ap_block_pp0_stage1) & (trunc_ln18_1_reg_1562 == 3'd7) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd7) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedB_7_d0_local = grp_fu_1168_p19;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_7_d0_local = 8'd45;
    end else begin
        alignedB_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_1612 == 8'd92) & ~(tmp_1_reg_1612 == 8'd60) & (1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln18_1_reg_1562 == 3'd7) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_fu_1366_p19 == 8'd60) & (trunc_ln18_1_fu_1326_p1 == 3'd7) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd7) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedB_7_we0_local = 1'b1;
    end else begin
        alignedB_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_fu_1248_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (or_ln62_reg_1513 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (~((ap_loop_exit_ready_pp0_iter1_reg == 1'b0) & (ap_loop_exit_ready == 1'b0))) begin
        ap_done_pending_pp0 = 1'b1;
    end else begin
        ap_done_pending_pp0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (or_ln62_reg_1513 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_str_idx_2_out_ap_vld = 1'b1;
    end else begin
        b_str_idx_2_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ptr_0_ce0_local = 1'b1;
    end else begin
        ptr_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ptr_1_ce0_local = 1'b1;
    end else begin
        ptr_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ptr_2_ce0_local = 1'b1;
    end else begin
        ptr_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ptr_3_ce0_local = 1'b1;
    end else begin
        ptr_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ptr_4_ce0_local = 1'b1;
    end else begin
        ptr_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ptr_5_ce0_local = 1'b1;
    end else begin
        ptr_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ptr_6_ce0_local = 1'b1;
    end else begin
        ptr_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ptr_7_ce0_local = 1'b1;
    end else begin
        ptr_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_done_pending_pp0 == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign SEQA_0_address0 = SEQA_0_address0_local;
assign SEQA_0_ce0 = SEQA_0_ce0_local;
assign SEQA_1_address0 = SEQA_1_address0_local;
assign SEQA_1_ce0 = SEQA_1_ce0_local;
assign SEQA_2_address0 = SEQA_2_address0_local;
assign SEQA_2_ce0 = SEQA_2_ce0_local;
assign SEQA_3_address0 = SEQA_3_address0_local;
assign SEQA_3_ce0 = SEQA_3_ce0_local;
assign SEQA_4_address0 = SEQA_4_address0_local;
assign SEQA_4_ce0 = SEQA_4_ce0_local;
assign SEQA_5_address0 = SEQA_5_address0_local;
assign SEQA_5_ce0 = SEQA_5_ce0_local;
assign SEQA_6_address0 = SEQA_6_address0_local;
assign SEQA_6_ce0 = SEQA_6_ce0_local;
assign SEQA_7_address0 = SEQA_7_address0_local;
assign SEQA_7_ce0 = SEQA_7_ce0_local;
assign SEQB_0_address0 = SEQB_0_address0_local;
assign SEQB_0_ce0 = SEQB_0_ce0_local;
assign SEQB_1_address0 = SEQB_1_address0_local;
assign SEQB_1_ce0 = SEQB_1_ce0_local;
assign SEQB_2_address0 = SEQB_2_address0_local;
assign SEQB_2_ce0 = SEQB_2_ce0_local;
assign SEQB_3_address0 = SEQB_3_address0_local;
assign SEQB_3_ce0 = SEQB_3_ce0_local;
assign SEQB_4_address0 = SEQB_4_address0_local;
assign SEQB_4_ce0 = SEQB_4_ce0_local;
assign SEQB_5_address0 = SEQB_5_address0_local;
assign SEQB_5_ce0 = SEQB_5_ce0_local;
assign SEQB_6_address0 = SEQB_6_address0_local;
assign SEQB_6_ce0 = SEQB_6_ce0_local;
assign SEQB_7_address0 = SEQB_7_address0_local;
assign SEQB_7_ce0 = SEQB_7_ce0_local;
assign add_ln64_fu_1280_p2 = (r_fu_1274_p2 + trunc_ln18_4_fu_1254_p1);
assign add_ln66_fu_1320_p2 = (a_str_idx_fu_152 + 64'd1);
assign alignedA_0_addr_1_gep_fu_995_p3 = zext_ln18_reg_1566;
assign alignedA_0_address0 = alignedA_0_address0_local;
assign alignedA_0_ce0 = alignedA_0_ce0_local;
assign alignedA_0_d0 = alignedA_0_d0_local;
assign alignedA_0_we0 = alignedA_0_we0_local;
assign alignedA_1_addr_1_gep_fu_979_p3 = zext_ln18_reg_1566;
assign alignedA_1_address0 = alignedA_1_address0_local;
assign alignedA_1_ce0 = alignedA_1_ce0_local;
assign alignedA_1_d0 = alignedA_1_d0_local;
assign alignedA_1_we0 = alignedA_1_we0_local;
assign alignedA_2_addr_1_gep_fu_963_p3 = zext_ln18_reg_1566;
assign alignedA_2_address0 = alignedA_2_address0_local;
assign alignedA_2_ce0 = alignedA_2_ce0_local;
assign alignedA_2_d0 = alignedA_2_d0_local;
assign alignedA_2_we0 = alignedA_2_we0_local;
assign alignedA_3_addr_1_gep_fu_947_p3 = zext_ln18_reg_1566;
assign alignedA_3_address0 = alignedA_3_address0_local;
assign alignedA_3_ce0 = alignedA_3_ce0_local;
assign alignedA_3_d0 = alignedA_3_d0_local;
assign alignedA_3_we0 = alignedA_3_we0_local;
assign alignedA_4_addr_1_gep_fu_931_p3 = zext_ln18_reg_1566;
assign alignedA_4_address0 = alignedA_4_address0_local;
assign alignedA_4_ce0 = alignedA_4_ce0_local;
assign alignedA_4_d0 = alignedA_4_d0_local;
assign alignedA_4_we0 = alignedA_4_we0_local;
assign alignedA_5_addr_1_gep_fu_915_p3 = zext_ln18_reg_1566;
assign alignedA_5_address0 = alignedA_5_address0_local;
assign alignedA_5_ce0 = alignedA_5_ce0_local;
assign alignedA_5_d0 = alignedA_5_d0_local;
assign alignedA_5_we0 = alignedA_5_we0_local;
assign alignedA_6_addr_1_gep_fu_899_p3 = zext_ln18_reg_1566;
assign alignedA_6_address0 = alignedA_6_address0_local;
assign alignedA_6_ce0 = alignedA_6_ce0_local;
assign alignedA_6_d0 = alignedA_6_d0_local;
assign alignedA_6_we0 = alignedA_6_we0_local;
assign alignedA_7_addr_1_gep_fu_1011_p3 = zext_ln18_reg_1566;
assign alignedA_7_address0 = alignedA_7_address0_local;
assign alignedA_7_ce0 = alignedA_7_ce0_local;
assign alignedA_7_d0 = alignedA_7_d0_local;
assign alignedA_7_we0 = alignedA_7_we0_local;
assign alignedB_0_addr_gep_fu_1075_p3 = zext_ln18_reg_1566;
assign alignedB_0_address0 = alignedB_0_address0_local;
assign alignedB_0_ce0 = alignedB_0_ce0_local;
assign alignedB_0_d0 = alignedB_0_d0_local;
assign alignedB_0_we0 = alignedB_0_we0_local;
assign alignedB_1_addr_gep_fu_1067_p3 = zext_ln18_reg_1566;
assign alignedB_1_address0 = alignedB_1_address0_local;
assign alignedB_1_ce0 = alignedB_1_ce0_local;
assign alignedB_1_d0 = alignedB_1_d0_local;
assign alignedB_1_we0 = alignedB_1_we0_local;
assign alignedB_2_addr_gep_fu_1059_p3 = zext_ln18_reg_1566;
assign alignedB_2_address0 = alignedB_2_address0_local;
assign alignedB_2_ce0 = alignedB_2_ce0_local;
assign alignedB_2_d0 = alignedB_2_d0_local;
assign alignedB_2_we0 = alignedB_2_we0_local;
assign alignedB_3_addr_gep_fu_1051_p3 = zext_ln18_reg_1566;
assign alignedB_3_address0 = alignedB_3_address0_local;
assign alignedB_3_ce0 = alignedB_3_ce0_local;
assign alignedB_3_d0 = alignedB_3_d0_local;
assign alignedB_3_we0 = alignedB_3_we0_local;
assign alignedB_4_addr_gep_fu_1043_p3 = zext_ln18_reg_1566;
assign alignedB_4_address0 = alignedB_4_address0_local;
assign alignedB_4_ce0 = alignedB_4_ce0_local;
assign alignedB_4_d0 = alignedB_4_d0_local;
assign alignedB_4_we0 = alignedB_4_we0_local;
assign alignedB_5_addr_gep_fu_1035_p3 = zext_ln18_reg_1566;
assign alignedB_5_address0 = alignedB_5_address0_local;
assign alignedB_5_ce0 = alignedB_5_ce0_local;
assign alignedB_5_d0 = alignedB_5_d0_local;
assign alignedB_5_we0 = alignedB_5_we0_local;
assign alignedB_6_addr_gep_fu_1027_p3 = zext_ln18_reg_1566;
assign alignedB_6_address0 = alignedB_6_address0_local;
assign alignedB_6_ce0 = alignedB_6_ce0_local;
assign alignedB_6_d0 = alignedB_6_d0_local;
assign alignedB_6_we0 = alignedB_6_we0_local;
assign alignedB_7_addr_gep_fu_1083_p3 = zext_ln18_reg_1566;
assign alignedB_7_address0 = alignedB_7_address0_local;
assign alignedB_7_ce0 = alignedB_7_ce0_local;
assign alignedB_7_d0 = alignedB_7_d0_local;
assign alignedB_7_we0 = alignedB_7_we0_local;
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1120 = ((1'b0 == ap_block_pp0_stage0) & (or_ln62_reg_1513 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1129 = ((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_1612 == 8'd60) & (trunc_ln18_1_reg_1562 == 3'd0) & (or_ln62_reg_1513 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1135 = ((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd0) & (or_ln62_reg_1513 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1140 = ((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_1612 == 8'd60) & (trunc_ln18_1_reg_1562 == 3'd1) & (or_ln62_reg_1513 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1145 = ((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd1) & (or_ln62_reg_1513 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1150 = ((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_1612 == 8'd60) & (trunc_ln18_1_reg_1562 == 3'd2) & (or_ln62_reg_1513 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1155 = ((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd2) & (or_ln62_reg_1513 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1160 = ((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_1612 == 8'd60) & (trunc_ln18_1_reg_1562 == 3'd3) & (or_ln62_reg_1513 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1165 = ((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd3) & (or_ln62_reg_1513 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1170 = ((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_1612 == 8'd60) & (trunc_ln18_1_reg_1562 == 3'd4) & (or_ln62_reg_1513 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1175 = ((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd4) & (or_ln62_reg_1513 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1180 = ((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_1612 == 8'd60) & (trunc_ln18_1_reg_1562 == 3'd5) & (or_ln62_reg_1513 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1185 = ((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd5) & (or_ln62_reg_1513 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1190 = ((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_1612 == 8'd60) & (trunc_ln18_1_reg_1562 == 3'd6) & (or_ln62_reg_1513 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1195 = ((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd6) & (or_ln62_reg_1513 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1200 = ((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_1612 == 8'd60) & (trunc_ln18_1_reg_1562 == 3'd7) & (or_ln62_reg_1513 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1205 = ((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_1612 == 8'd92) & (trunc_ln18_1_reg_1562 == 3'd7) & (or_ln62_reg_1513 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1212 = (~(tmp_1_reg_1612 == 8'd92) & ~(tmp_1_reg_1612 == 8'd60) & (1'b0 == ap_block_pp0_stage1) & (trunc_ln18_1_reg_1562 == 3'd0) & (or_ln62_reg_1513 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1217 = (~(tmp_1_reg_1612 == 8'd92) & ~(tmp_1_reg_1612 == 8'd60) & (1'b0 == ap_block_pp0_stage1) & (trunc_ln18_1_reg_1562 == 3'd1) & (or_ln62_reg_1513 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1222 = (~(tmp_1_reg_1612 == 8'd92) & ~(tmp_1_reg_1612 == 8'd60) & (1'b0 == ap_block_pp0_stage1) & (trunc_ln18_1_reg_1562 == 3'd2) & (or_ln62_reg_1513 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1227 = (~(tmp_1_reg_1612 == 8'd92) & ~(tmp_1_reg_1612 == 8'd60) & (1'b0 == ap_block_pp0_stage1) & (trunc_ln18_1_reg_1562 == 3'd3) & (or_ln62_reg_1513 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1232 = (~(tmp_1_reg_1612 == 8'd92) & ~(tmp_1_reg_1612 == 8'd60) & (1'b0 == ap_block_pp0_stage1) & (trunc_ln18_1_reg_1562 == 3'd4) & (or_ln62_reg_1513 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1237 = (~(tmp_1_reg_1612 == 8'd92) & ~(tmp_1_reg_1612 == 8'd60) & (1'b0 == ap_block_pp0_stage1) & (trunc_ln18_1_reg_1562 == 3'd5) & (or_ln62_reg_1513 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1242 = (~(tmp_1_reg_1612 == 8'd92) & ~(tmp_1_reg_1612 == 8'd60) & (1'b0 == ap_block_pp0_stage1) & (trunc_ln18_1_reg_1562 == 3'd6) & (or_ln62_reg_1513 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1247 = (~(tmp_1_reg_1612 == 8'd92) & ~(tmp_1_reg_1612 == 8'd60) & (1'b0 == ap_block_pp0_stage1) & (trunc_ln18_1_reg_1562 == 3'd7) & (or_ln62_reg_1513 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign b_str_idx_2_out = a_str_idx_fu_152[31:0];
assign grp_fu_1091_p2 = ($signed(a_idx_1_reg_1507) + $signed(32'd4294967295));
assign grp_fu_1096_p4 = {{grp_fu_1091_p2[6:3]}};
assign grp_fu_1106_p2 = ($signed(b_idx_1_reg_1501) + $signed(32'd4294967295));
assign grp_fu_1111_p4 = {{grp_fu_1106_p2[6:3]}};
assign grp_fu_1121_p17 = 'bx;
assign grp_fu_1168_p17 = 'bx;
assign icmp_ln62_1_fu_1242_p2 = (($signed(b_idx_fu_156) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_fu_1236_p2 = (($signed(a_idx_fu_160) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign lshr_ln7_fu_1330_p4 = {{a_str_idx_fu_152[7:3]}};
assign lshr_ln8_fu_1290_p4 = {{add_ln64_fu_1280_p2[14:3]}};
assign or_ln62_fu_1248_p2 = (icmp_ln62_fu_1236_p2 | icmp_ln62_1_fu_1242_p2);
assign p_shl_fu_1266_p3 = {{trunc_ln16_fu_1262_p1}, {7'd0}};
assign ptr_0_address0 = zext_ln64_fu_1300_p1;
assign ptr_0_ce0 = ptr_0_ce0_local;
assign ptr_1_address0 = zext_ln64_fu_1300_p1;
assign ptr_1_ce0 = ptr_1_ce0_local;
assign ptr_2_address0 = zext_ln64_fu_1300_p1;
assign ptr_2_ce0 = ptr_2_ce0_local;
assign ptr_3_address0 = zext_ln64_fu_1300_p1;
assign ptr_3_ce0 = ptr_3_ce0_local;
assign ptr_4_address0 = zext_ln64_fu_1300_p1;
assign ptr_4_ce0 = ptr_4_ce0_local;
assign ptr_5_address0 = zext_ln64_fu_1300_p1;
assign ptr_5_ce0 = ptr_5_ce0_local;
assign ptr_6_address0 = zext_ln64_fu_1300_p1;
assign ptr_6_ce0 = ptr_6_ce0_local;
assign ptr_7_address0 = zext_ln64_fu_1300_p1;
assign ptr_7_ce0 = ptr_7_ce0_local;
assign r_fu_1274_p2 = (p_shl_fu_1266_p3 + trunc_ln18_5_fu_1258_p1);
assign tmp_1_fu_1366_p17 = 'bx;
assign trunc_ln16_fu_1262_p1 = b_idx_fu_156[7:0];
assign trunc_ln18_1_fu_1326_p1 = a_str_idx_fu_152[2:0];
assign trunc_ln18_2_fu_1360_p1 = a_idx_1_reg_1507[2:0];
assign trunc_ln18_3_fu_1363_p1 = b_idx_1_reg_1501[2:0];
assign trunc_ln18_4_fu_1254_p1 = a_idx_fu_160[14:0];
assign trunc_ln18_5_fu_1258_p1 = b_idx_fu_156[14:0];
assign trunc_ln64_fu_1286_p1 = add_ln64_fu_1280_p2[2:0];
assign zext_ln18_fu_1340_p1 = lshr_ln7_fu_1330_p4;
assign zext_ln64_fu_1300_p1 = lshr_ln8_fu_1290_p4;
assign zext_ln65_fu_1422_p1 = grp_fu_1096_p4;
assign zext_ln66_fu_1434_p1 = grp_fu_1111_p4;
assign zext_ln71_fu_1405_p1 = grp_fu_1096_p4;
assign zext_ln77_fu_1456_p1 = grp_fu_1111_p4;
always @ (posedge ap_clk) begin
    zext_ln18_reg_1566[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
end
endmodule 
