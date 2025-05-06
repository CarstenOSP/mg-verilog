
module needwun_needwun_Pipeline_trace (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,alignedB_3_address0,alignedB_3_ce0,alignedB_3_we0,alignedB_3_d0,alignedB_2_address0,alignedB_2_ce0,alignedB_2_we0,alignedB_2_d0,alignedB_1_address0,alignedB_1_ce0,alignedB_1_we0,alignedB_1_d0,alignedB_0_address0,alignedB_0_ce0,alignedB_0_we0,alignedB_0_d0,alignedA_3_address0,alignedA_3_ce0,alignedA_3_we0,alignedA_3_d0,alignedA_2_address0,alignedA_2_ce0,alignedA_2_we0,alignedA_2_d0,alignedA_1_address0,alignedA_1_ce0,alignedA_1_we0,alignedA_1_d0,alignedA_0_address0,alignedA_0_ce0,alignedA_0_we0,alignedA_0_d0,SEQB_0_address0,SEQB_0_ce0,SEQB_0_q0,SEQB_1_address0,SEQB_1_ce0,SEQB_1_q0,SEQB_2_address0,SEQB_2_ce0,SEQB_2_q0,SEQB_3_address0,SEQB_3_ce0,SEQB_3_q0,ptr_0_address0,ptr_0_ce0,ptr_0_q0,ptr_1_address0,ptr_1_ce0,ptr_1_q0,ptr_2_address0,ptr_2_ce0,ptr_2_q0,ptr_3_address0,ptr_3_ce0,ptr_3_q0,SEQA_0_address0,SEQA_0_ce0,SEQA_0_q0,SEQA_1_address0,SEQA_1_ce0,SEQA_1_q0,SEQA_2_address0,SEQA_2_ce0,SEQA_2_q0,SEQA_3_address0,SEQA_3_ce0,SEQA_3_q0,b_str_idx_4_out,b_str_idx_4_out_ap_vld,ap_return);  
parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_pp0_stage0 = 9'd2;
parameter    ap_ST_fsm_pp0_stage1 = 9'd4;
parameter    ap_ST_fsm_pp0_stage2 = 9'd8;
parameter    ap_ST_fsm_pp0_stage3 = 9'd16;
parameter    ap_ST_fsm_pp0_stage4 = 9'd32;
parameter    ap_ST_fsm_state8 = 9'd64;
parameter    ap_ST_fsm_state9 = 9'd128;
parameter    ap_ST_fsm_state10 = 9'd256;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] alignedB_3_address0;
output   alignedB_3_ce0;
output   alignedB_3_we0;
output  [7:0] alignedB_3_d0;
output  [5:0] alignedB_2_address0;
output   alignedB_2_ce0;
output   alignedB_2_we0;
output  [7:0] alignedB_2_d0;
output  [5:0] alignedB_1_address0;
output   alignedB_1_ce0;
output   alignedB_1_we0;
output  [7:0] alignedB_1_d0;
output  [5:0] alignedB_0_address0;
output   alignedB_0_ce0;
output   alignedB_0_we0;
output  [7:0] alignedB_0_d0;
output  [5:0] alignedA_3_address0;
output   alignedA_3_ce0;
output   alignedA_3_we0;
output  [7:0] alignedA_3_d0;
output  [5:0] alignedA_2_address0;
output   alignedA_2_ce0;
output   alignedA_2_we0;
output  [7:0] alignedA_2_d0;
output  [5:0] alignedA_1_address0;
output   alignedA_1_ce0;
output   alignedA_1_we0;
output  [7:0] alignedA_1_d0;
output  [5:0] alignedA_0_address0;
output   alignedA_0_ce0;
output   alignedA_0_we0;
output  [7:0] alignedA_0_d0;
output  [4:0] SEQB_0_address0;
output   SEQB_0_ce0;
input  [7:0] SEQB_0_q0;
output  [4:0] SEQB_1_address0;
output   SEQB_1_ce0;
input  [7:0] SEQB_1_q0;
output  [4:0] SEQB_2_address0;
output   SEQB_2_ce0;
input  [7:0] SEQB_2_q0;
output  [4:0] SEQB_3_address0;
output   SEQB_3_ce0;
input  [7:0] SEQB_3_q0;
output  [12:0] ptr_0_address0;
output   ptr_0_ce0;
input  [7:0] ptr_0_q0;
output  [12:0] ptr_1_address0;
output   ptr_1_ce0;
input  [7:0] ptr_1_q0;
output  [12:0] ptr_2_address0;
output   ptr_2_ce0;
input  [7:0] ptr_2_q0;
output  [12:0] ptr_3_address0;
output   ptr_3_ce0;
input  [7:0] ptr_3_q0;
output  [4:0] SEQA_0_address0;
output   SEQA_0_ce0;
input  [7:0] SEQA_0_q0;
output  [4:0] SEQA_1_address0;
output   SEQA_1_ce0;
input  [7:0] SEQA_1_q0;
output  [4:0] SEQA_2_address0;
output   SEQA_2_ce0;
input  [7:0] SEQA_2_q0;
output  [4:0] SEQA_3_address0;
output   SEQA_3_ce0;
input  [7:0] SEQA_3_q0;
output  [31:0] b_str_idx_4_out;
output   b_str_idx_4_out_ap_vld;
output  [0:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg b_str_idx_4_out_ap_vld;
reg[0:0] ap_return;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] a_idx_4_reg_745;
reg   [31:0] b_idx_4_reg_757;
wire   [31:0] grp_fu_806_p2;
wire    ap_CS_fsm_pp0_stage2;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage2_11001;
reg   [0:0] or_ln62_reg_1369;
wire   [7:0] tmp_1_fu_1110_p11;
wire   [31:0] grp_fu_821_p2;
wire   [31:0] grp_fu_886_p2;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [0:0] or_ln62_1_reg_1526;
wire   [7:0] tmp_s_fu_1259_p11;
wire   [31:0] grp_fu_902_p2;
reg   [31:0] b_idx_1_reg_1355;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] a_idx_1_reg_1362;
wire   [0:0] or_ln62_fu_1025_p2;
wire   [1:0] trunc_ln64_fu_1063_p1;
reg   [1:0] trunc_ln64_reg_1373;
reg   [31:0] b_str_idx_1_reg_1398;
wire   [63:0] zext_ln18_fu_1102_p1;
reg   [63:0] zext_ln18_reg_1404;
reg   [7:0] tmp_1_reg_1428;
wire   [0:0] icmp_ln65_fu_1133_p2;
reg   [0:0] icmp_ln65_reg_1432;
wire   [1:0] trunc_ln17_fu_1179_p1;
reg   [1:0] trunc_ln17_reg_1516;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [1:0] trunc_ln17_1_fu_1183_p1;
reg   [1:0] trunc_ln17_1_reg_1521;
wire   [0:0] or_ln62_1_fu_1207_p2;
wire   [1:0] trunc_ln64_1_fu_1237_p1;
reg   [1:0] trunc_ln64_1_reg_1530;
reg   [7:0] tmp_s_reg_1555;
wire    ap_block_pp0_stage3_subdone;
reg    ap_predicate_tran5to8_state5;
reg    ap_condition_pp0_exit_iter0_state5;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage4_subdone;
reg   [31:0] ap_phi_reg_pp0_iter0_a_idx_4_reg_745;
reg   [31:0] ap_phi_reg_pp0_iter0_b_idx_4_reg_757;
wire   [31:0] ap_phi_reg_pp0_iter0_a_idx_7_reg_769;
reg   [31:0] ap_phi_reg_pp0_iter1_a_idx_7_reg_769;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] ap_phi_reg_pp0_iter0_b_idx_7_reg_781;
reg   [31:0] ap_phi_reg_pp0_iter1_b_idx_7_reg_781;
reg   [0:0] UnifiedRetVal_reg_793;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state8;
wire   [63:0] zext_ln64_fu_1077_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln71_fu_1139_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln65_fu_1147_p1;
wire   [63:0] zext_ln66_fu_1155_p1;
wire   [63:0] zext_ln77_fu_1163_p1;
wire    ap_block_pp0_stage3;
wire   [5:0] alignedA_2_addr_1_gep_fu_417_p3;
wire   [5:0] alignedA_0_addr_1_gep_fu_433_p3;
wire   [5:0] alignedB_2_addr_gep_fu_449_p3;
wire   [5:0] alignedB_0_addr_gep_fu_457_p3;
wire   [63:0] zext_ln64_1_fu_1251_p1;
wire   [63:0] zext_ln71_1_fu_1287_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln65_1_fu_1295_p1;
wire   [63:0] zext_ln66_1_fu_1303_p1;
wire   [63:0] zext_ln77_1_fu_1311_p1;
wire   [5:0] alignedA_3_addr_2_gep_fu_681_p3;
wire    ap_block_pp0_stage0;
wire   [5:0] alignedA_1_addr_2_gep_fu_689_p3;
wire   [5:0] alignedA_3_addr_1_gep_fu_697_p3;
wire   [5:0] alignedB_3_addr_1_gep_fu_705_p3;
wire   [5:0] alignedA_1_addr_1_gep_fu_713_p3;
wire   [5:0] alignedB_1_addr_1_gep_fu_721_p3;
wire   [5:0] alignedB_3_addr_gep_fu_729_p3;
wire   [5:0] alignedB_1_addr_gep_fu_737_p3;
reg   [31:0] a_str_idx_fu_106;
wire   [31:0] b_str_idx_fu_1282_p2;
reg   [31:0] b_idx_fu_110;
reg   [31:0] a_idx_fu_114;
reg    ptr_0_ce0_local;
reg   [12:0] ptr_0_address0_local;
reg    ptr_1_ce0_local;
reg   [12:0] ptr_1_address0_local;
reg    ptr_2_ce0_local;
reg   [12:0] ptr_2_address0_local;
reg    ptr_3_ce0_local;
reg   [12:0] ptr_3_address0_local;
reg    SEQA_0_ce0_local;
reg   [4:0] SEQA_0_address0_local;
reg    SEQA_1_ce0_local;
reg   [4:0] SEQA_1_address0_local;
reg    SEQA_2_ce0_local;
reg   [4:0] SEQA_2_address0_local;
reg    SEQA_3_ce0_local;
reg   [4:0] SEQA_3_address0_local;
reg    alignedB_2_we0_local;
reg   [7:0] alignedB_2_d0_local;
reg    alignedB_2_ce0_local;
reg   [5:0] alignedB_2_address0_local;
wire   [7:0] grp_fu_861_p11;
reg    alignedB_0_we0_local;
reg   [7:0] alignedB_0_d0_local;
reg    alignedB_0_ce0_local;
reg   [5:0] alignedB_0_address0_local;
reg    SEQB_0_ce0_local;
reg   [4:0] SEQB_0_address0_local;
reg    SEQB_1_ce0_local;
reg   [4:0] SEQB_1_address0_local;
reg    SEQB_2_ce0_local;
reg   [4:0] SEQB_2_address0_local;
reg    SEQB_3_ce0_local;
reg   [4:0] SEQB_3_address0_local;
reg    alignedA_2_we0_local;
reg   [7:0] alignedA_2_d0_local;
reg    alignedA_2_ce0_local;
reg   [5:0] alignedA_2_address0_local;
wire   [7:0] grp_fu_836_p11;
reg    alignedA_0_we0_local;
reg   [7:0] alignedA_0_d0_local;
reg    alignedA_0_ce0_local;
reg   [5:0] alignedA_0_address0_local;
reg    alignedB_3_we0_local;
reg   [7:0] alignedB_3_d0_local;
reg    alignedB_3_ce0_local;
reg   [5:0] alignedB_3_address0_local;
wire   [7:0] grp_fu_943_p11;
reg    alignedB_1_we0_local;
reg   [7:0] alignedB_1_d0_local;
reg    alignedB_1_ce0_local;
reg   [5:0] alignedB_1_address0_local;
reg    alignedA_3_we0_local;
reg   [7:0] alignedA_3_d0_local;
reg    alignedA_3_ce0_local;
reg   [5:0] alignedA_3_address0_local;
wire   [7:0] grp_fu_918_p11;
reg    alignedA_1_we0_local;
reg   [7:0] alignedA_1_d0_local;
reg    alignedA_1_ce0_local;
reg   [5:0] alignedA_1_address0_local;
wire   [7:0] grp_fu_836_p9;
wire   [1:0] grp_fu_836_p10;
wire   [7:0] grp_fu_861_p9;
wire   [1:0] grp_fu_861_p10;
wire   [7:0] grp_fu_918_p9;
wire   [7:0] grp_fu_943_p9;
wire   [0:0] icmp_ln62_fu_1013_p2;
wire   [0:0] icmp_ln62_1_fu_1019_p2;
wire   [7:0] trunc_ln16_fu_1039_p1;
wire   [14:0] p_shl_fu_1043_p3;
wire   [14:0] trunc_ln18_4_fu_1035_p1;
wire   [14:0] r_1_fu_1051_p2;
wire   [14:0] trunc_ln18_3_fu_1031_p1;
wire   [14:0] add_ln64_fu_1057_p2;
wire   [12:0] lshr_ln7_fu_1067_p4;
wire   [5:0] lshr_ln6_fu_1092_p4;
wire   [7:0] tmp_1_fu_1110_p9;
wire   [1:0] trunc_ln18_fu_1088_p1;
wire   [4:0] grp_fu_811_p4;
wire   [4:0] grp_fu_826_p4;
wire   [0:0] icmp_ln62_2_fu_1195_p2;
wire   [0:0] icmp_ln62_3_fu_1201_p2;
wire   [7:0] trunc_ln16_1_fu_1213_p1;
wire   [14:0] trunc_ln17_2_fu_1187_p1;
wire   [14:0] trunc_ln17_3_fu_1191_p1;
wire   [14:0] r_fu_1225_p2;
wire   [14:0] p_shl1_fu_1217_p3;
wire   [14:0] add_ln64_1_fu_1231_p2;
wire   [12:0] lshr_ln64_1_fu_1241_p4;
wire   [7:0] tmp_s_fu_1259_p9;
wire   [4:0] grp_fu_892_p4;
wire   [4:0] grp_fu_908_p4;
reg   [0:0] ap_return_preg;
wire    ap_CS_fsm_state10;
reg   [8:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_1066;
reg    ap_condition_1070;
reg    ap_condition_1076;
reg    ap_condition_1082;
reg    ap_condition_1088;
reg    ap_condition_1094;
reg    ap_condition_1100;
reg    ap_condition_1106;
reg    ap_condition_1112;
reg    ap_condition_1118;
reg    ap_condition_1123;
reg    ap_condition_1129;
reg    ap_condition_1136;
reg    ap_condition_1142;
reg    ap_condition_1148;
reg    ap_condition_1154;
reg    ap_condition_1160;
reg    ap_condition_1166;
reg    ap_condition_1172;
reg    ap_condition_1179;
reg    ap_condition_1185;
reg    ap_condition_1191;
reg    ap_condition_1197;
reg    ap_condition_1204;
reg    ap_condition_1210;
wire   [1:0] grp_fu_836_p1;
wire  signed [1:0] grp_fu_836_p3;
wire  signed [1:0] grp_fu_836_p5;
wire   [1:0] grp_fu_836_p7;
wire   [1:0] grp_fu_861_p1;
wire  signed [1:0] grp_fu_861_p3;
wire  signed [1:0] grp_fu_861_p5;
wire   [1:0] grp_fu_861_p7;
wire   [1:0] grp_fu_918_p1;
wire  signed [1:0] grp_fu_918_p3;
wire  signed [1:0] grp_fu_918_p5;
wire   [1:0] grp_fu_918_p7;
wire   [1:0] grp_fu_943_p1;
wire  signed [1:0] grp_fu_943_p3;
wire  signed [1:0] grp_fu_943_p5;
wire   [1:0] grp_fu_943_p7;
wire   [1:0] tmp_1_fu_1110_p1;
wire   [1:0] tmp_1_fu_1110_p3;
wire  signed [1:0] tmp_1_fu_1110_p5;
wire  signed [1:0] tmp_1_fu_1110_p7;
wire   [1:0] tmp_s_fu_1259_p1;
wire   [1:0] tmp_s_fu_1259_p3;
wire  signed [1:0] tmp_s_fu_1259_p5;
wire  signed [1:0] tmp_s_fu_1259_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 a_str_idx_fu_106 = 32'd0;
#0 b_idx_fu_110 = 32'd0;
#0 a_idx_fu_114 = 32'd0;
#0 ap_return_preg = 1'd0;
end
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U37(.din0(SEQA_0_q0),.din1(SEQA_1_q0),.din2(SEQA_2_q0),.din3(SEQA_3_q0),.def(grp_fu_836_p9),.sel(grp_fu_836_p10),.dout(grp_fu_836_p11));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U38(.din0(SEQB_0_q0),.din1(SEQB_1_q0),.din2(SEQB_2_q0),.din3(SEQB_3_q0),.def(grp_fu_861_p9),.sel(grp_fu_861_p10),.dout(grp_fu_861_p11));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U39(.din0(SEQA_0_q0),.din1(SEQA_1_q0),.din2(SEQA_2_q0),.din3(SEQA_3_q0),.def(grp_fu_918_p9),.sel(trunc_ln17_reg_1516),.dout(grp_fu_918_p11));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U40(.din0(SEQB_0_q0),.din1(SEQB_1_q0),.din2(SEQB_2_q0),.din3(SEQB_3_q0),.def(grp_fu_943_p9),.sel(trunc_ln17_1_reg_1521),.dout(grp_fu_943_p11));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_9_2_8_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 8 ),.CASE1( 2'h1 ),.din1_WIDTH( 8 ),.CASE2( 2'h2 ),.din2_WIDTH( 8 ),.CASE3( 2'h3 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_x_U41(.din0(ptr_0_q0),.din1(ptr_1_q0),.din2(ptr_2_q0),.din3(ptr_3_q0),.def(tmp_1_fu_1110_p9),.sel(trunc_ln64_reg_1373),.dout(tmp_1_fu_1110_p11));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_9_2_8_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 8 ),.CASE1( 2'h1 ),.din1_WIDTH( 8 ),.CASE2( 2'h2 ),.din2_WIDTH( 8 ),.CASE3( 2'h3 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_x_U42(.din0(ptr_0_q0),.din1(ptr_1_q0),.din2(ptr_2_q0),.din3(ptr_3_q0),.def(tmp_s_fu_1259_p9),.sel(trunc_ln64_1_reg_1530),.dout(tmp_s_fu_1259_p11));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp0_exit_iter0_state5) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0)) | ((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_subdone)))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 1'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            ap_return_preg <= UnifiedRetVal_reg_793;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        UnifiedRetVal_reg_793 <= 1'd0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        UnifiedRetVal_reg_793 <= 1'd1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        a_idx_fu_114 <= 32'd128;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        a_idx_fu_114 <= ap_phi_reg_pp0_iter1_a_idx_7_reg_769;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        a_str_idx_fu_106 <= 32'd0;
    end else if (((or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        a_str_idx_fu_106 <= b_str_idx_fu_1282_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((~(tmp_1_fu_1110_p11 == 8'd92) & ~(tmp_1_fu_1110_p11 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage2) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_a_idx_4_reg_745 <= a_idx_1_reg_1362;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_1_fu_1110_p11 == 8'd92) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_1_fu_1110_p11 == 8'd60) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_a_idx_4_reg_745 <= grp_fu_806_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_1_fu_1110_p11 == 8'd60) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_b_idx_4_reg_757 <= b_idx_1_reg_1355;
    end else if (((~(tmp_1_fu_1110_p11 == 8'd92) & ~(tmp_1_fu_1110_p11 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage2) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_1_fu_1110_p11 == 8'd92) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_b_idx_4_reg_757 <= grp_fu_821_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((~(tmp_s_fu_1259_p11 == 8'd92) & ~(tmp_s_fu_1259_p11 == 8'd60) & (or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter1_a_idx_7_reg_769 <= a_idx_4_reg_745;
    end else if ((((tmp_s_fu_1259_p11 == 8'd92) & (or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_s_fu_1259_p11 == 8'd60) & (or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter1_a_idx_7_reg_769 <= grp_fu_886_p2;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter1_a_idx_7_reg_769 <= ap_phi_reg_pp0_iter0_a_idx_7_reg_769;
    end
end
always @ (posedge ap_clk) begin
    if (((tmp_s_fu_1259_p11 == 8'd60) & (or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter1_b_idx_7_reg_781 <= b_idx_4_reg_757;
    end else if (((~(tmp_s_fu_1259_p11 == 8'd92) & ~(tmp_s_fu_1259_p11 == 8'd60) & (or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_s_fu_1259_p11 == 8'd92) & (or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter1_b_idx_7_reg_781 <= grp_fu_902_p2;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter1_b_idx_7_reg_781 <= ap_phi_reg_pp0_iter0_b_idx_7_reg_781;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        b_idx_fu_110 <= 32'd128;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        b_idx_fu_110 <= ap_phi_reg_pp0_iter1_b_idx_7_reg_781;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        a_idx_1_reg_1362 <= a_idx_fu_114;
        b_idx_1_reg_1355 <= b_idx_fu_110;
        or_ln62_reg_1369 <= or_ln62_fu_1025_p2;
        trunc_ln64_reg_1373 <= trunc_ln64_fu_1063_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        a_idx_4_reg_745 <= ap_phi_reg_pp0_iter0_a_idx_4_reg_745;
        b_idx_4_reg_757 <= ap_phi_reg_pp0_iter0_b_idx_4_reg_757;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        b_str_idx_1_reg_1398 <= a_str_idx_fu_106;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        icmp_ln65_reg_1432 <= icmp_ln65_fu_1133_p2;
        tmp_1_reg_1428 <= tmp_1_fu_1110_p11;
        zext_ln18_reg_1404[5 : 0] <= zext_ln18_fu_1102_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        or_ln62_1_reg_1526 <= or_ln62_1_fu_1207_p2;
        trunc_ln17_1_reg_1521 <= trunc_ln17_1_fu_1183_p1;
        trunc_ln17_reg_1516 <= trunc_ln17_fu_1179_p1;
        trunc_ln64_1_reg_1530 <= trunc_ln64_1_fu_1237_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        tmp_s_reg_1555 <= tmp_s_fu_1259_p11;
    end
end
always @ (*) begin
    if (((or_ln62_reg_1369 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_1082)) begin
            SEQA_0_address0_local = zext_ln65_1_fu_1295_p1;
        end else if ((1'b1 == ap_condition_1076)) begin
            SEQA_0_address0_local = zext_ln71_1_fu_1287_p1;
        end else if ((1'b1 == ap_condition_1070)) begin
            SEQA_0_address0_local = zext_ln65_fu_1147_p1;
        end else if ((1'b1 == ap_condition_1066)) begin
            SEQA_0_address0_local = zext_ln71_fu_1139_p1;
        end else begin
            SEQA_0_address0_local = 'bx;
        end
    end else begin
        SEQA_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln17_reg_1516 == 2'd1) & (tmp_s_fu_1259_p11 == 8'd92) & (or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_reg_1516 == 2'd1) & (tmp_s_fu_1259_p11 == 8'd60) & (or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_1_fu_1110_p11 == 8'd92) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_1_fu_1110_p11 == 8'd60) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        SEQA_0_ce0_local = 1'b1;
    end else begin
        SEQA_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_1369 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_1094)) begin
            SEQA_1_address0_local = zext_ln65_1_fu_1295_p1;
        end else if ((1'b1 == ap_condition_1088)) begin
            SEQA_1_address0_local = zext_ln71_1_fu_1287_p1;
        end else if ((1'b1 == ap_condition_1070)) begin
            SEQA_1_address0_local = zext_ln65_fu_1147_p1;
        end else if ((1'b1 == ap_condition_1066)) begin
            SEQA_1_address0_local = zext_ln71_fu_1139_p1;
        end else begin
            SEQA_1_address0_local = 'bx;
        end
    end else begin
        SEQA_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln17_reg_1516 == 2'd2) & (tmp_s_fu_1259_p11 == 8'd92) & (or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_reg_1516 == 2'd2) & (tmp_s_fu_1259_p11 == 8'd60) & (or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_1_fu_1110_p11 == 8'd92) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_1_fu_1110_p11 == 8'd60) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        SEQA_1_ce0_local = 1'b1;
    end else begin
        SEQA_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_1369 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_1106)) begin
            SEQA_2_address0_local = zext_ln65_1_fu_1295_p1;
        end else if ((1'b1 == ap_condition_1100)) begin
            SEQA_2_address0_local = zext_ln71_1_fu_1287_p1;
        end else if ((1'b1 == ap_condition_1070)) begin
            SEQA_2_address0_local = zext_ln65_fu_1147_p1;
        end else if ((1'b1 == ap_condition_1066)) begin
            SEQA_2_address0_local = zext_ln71_fu_1139_p1;
        end else begin
            SEQA_2_address0_local = 'bx;
        end
    end else begin
        SEQA_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln17_reg_1516 == 2'd3) & (tmp_s_fu_1259_p11 == 8'd92) & (or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_reg_1516 == 2'd3) & (tmp_s_fu_1259_p11 == 8'd60) & (or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_1_fu_1110_p11 == 8'd92) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_1_fu_1110_p11 == 8'd60) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        SEQA_2_ce0_local = 1'b1;
    end else begin
        SEQA_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_1369 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_1118)) begin
            SEQA_3_address0_local = zext_ln65_1_fu_1295_p1;
        end else if ((1'b1 == ap_condition_1112)) begin
            SEQA_3_address0_local = zext_ln71_1_fu_1287_p1;
        end else if ((1'b1 == ap_condition_1070)) begin
            SEQA_3_address0_local = zext_ln65_fu_1147_p1;
        end else if ((1'b1 == ap_condition_1066)) begin
            SEQA_3_address0_local = zext_ln71_fu_1139_p1;
        end else begin
            SEQA_3_address0_local = 'bx;
        end
    end else begin
        SEQA_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln17_reg_1516 == 2'd0) & (tmp_s_fu_1259_p11 == 8'd92) & (or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_reg_1516 == 2'd0) & (tmp_s_fu_1259_p11 == 8'd60) & (or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_1_fu_1110_p11 == 8'd92) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_1_fu_1110_p11 == 8'd60) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        SEQA_3_ce0_local = 1'b1;
    end else begin
        SEQA_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_1369 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_1136)) begin
            SEQB_0_address0_local = zext_ln77_1_fu_1311_p1;
        end else if ((1'b1 == ap_condition_1129)) begin
            SEQB_0_address0_local = zext_ln66_1_fu_1303_p1;
        end else if ((1'b1 == ap_condition_1123)) begin
            SEQB_0_address0_local = zext_ln77_fu_1163_p1;
        end else if ((1'b1 == ap_condition_1070)) begin
            SEQB_0_address0_local = zext_ln66_fu_1155_p1;
        end else begin
            SEQB_0_address0_local = 'bx;
        end
    end else begin
        SEQB_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln17_1_reg_1521 == 2'd1) & (tmp_s_fu_1259_p11 == 8'd92) & (or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(tmp_s_fu_1259_p11 == 8'd92) & ~(tmp_s_fu_1259_p11 == 8'd60) & (trunc_ln17_1_reg_1521 == 2'd1) & (or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(tmp_1_fu_1110_p11 == 8'd92) & ~(tmp_1_fu_1110_p11 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage2) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_1_fu_1110_p11 == 8'd92) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        SEQB_0_ce0_local = 1'b1;
    end else begin
        SEQB_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_1369 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_1148)) begin
            SEQB_1_address0_local = zext_ln77_1_fu_1311_p1;
        end else if ((1'b1 == ap_condition_1142)) begin
            SEQB_1_address0_local = zext_ln66_1_fu_1303_p1;
        end else if ((1'b1 == ap_condition_1123)) begin
            SEQB_1_address0_local = zext_ln77_fu_1163_p1;
        end else if ((1'b1 == ap_condition_1070)) begin
            SEQB_1_address0_local = zext_ln66_fu_1155_p1;
        end else begin
            SEQB_1_address0_local = 'bx;
        end
    end else begin
        SEQB_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln17_1_reg_1521 == 2'd2) & (tmp_s_fu_1259_p11 == 8'd92) & (or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(tmp_s_fu_1259_p11 == 8'd92) & ~(tmp_s_fu_1259_p11 == 8'd60) & (trunc_ln17_1_reg_1521 == 2'd2) & (or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(tmp_1_fu_1110_p11 == 8'd92) & ~(tmp_1_fu_1110_p11 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage2) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_1_fu_1110_p11 == 8'd92) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        SEQB_1_ce0_local = 1'b1;
    end else begin
        SEQB_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_1369 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_1160)) begin
            SEQB_2_address0_local = zext_ln77_1_fu_1311_p1;
        end else if ((1'b1 == ap_condition_1154)) begin
            SEQB_2_address0_local = zext_ln66_1_fu_1303_p1;
        end else if ((1'b1 == ap_condition_1123)) begin
            SEQB_2_address0_local = zext_ln77_fu_1163_p1;
        end else if ((1'b1 == ap_condition_1070)) begin
            SEQB_2_address0_local = zext_ln66_fu_1155_p1;
        end else begin
            SEQB_2_address0_local = 'bx;
        end
    end else begin
        SEQB_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln17_1_reg_1521 == 2'd3) & (tmp_s_fu_1259_p11 == 8'd92) & (or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(tmp_s_fu_1259_p11 == 8'd92) & ~(tmp_s_fu_1259_p11 == 8'd60) & (trunc_ln17_1_reg_1521 == 2'd3) & (or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(tmp_1_fu_1110_p11 == 8'd92) & ~(tmp_1_fu_1110_p11 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage2) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_1_fu_1110_p11 == 8'd92) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        SEQB_2_ce0_local = 1'b1;
    end else begin
        SEQB_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_1369 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_1172)) begin
            SEQB_3_address0_local = zext_ln77_1_fu_1311_p1;
        end else if ((1'b1 == ap_condition_1166)) begin
            SEQB_3_address0_local = zext_ln66_1_fu_1303_p1;
        end else if ((1'b1 == ap_condition_1123)) begin
            SEQB_3_address0_local = zext_ln77_fu_1163_p1;
        end else if ((1'b1 == ap_condition_1070)) begin
            SEQB_3_address0_local = zext_ln66_fu_1155_p1;
        end else begin
            SEQB_3_address0_local = 'bx;
        end
    end else begin
        SEQB_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln17_1_reg_1521 == 2'd0) & (tmp_s_fu_1259_p11 == 8'd92) & (or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(tmp_s_fu_1259_p11 == 8'd92) & ~(tmp_s_fu_1259_p11 == 8'd60) & (trunc_ln17_1_reg_1521 == 2'd0) & (or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(tmp_1_fu_1110_p11 == 8'd92) & ~(tmp_1_fu_1110_p11 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage2) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_1_fu_1110_p11 == 8'd92) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        SEQB_3_ce0_local = 1'b1;
    end else begin
        SEQB_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1185)) begin
            alignedA_0_address0_local = alignedA_0_addr_1_gep_fu_433_p3;
        end else if ((1'b1 == ap_condition_1179)) begin
            alignedA_0_address0_local = zext_ln18_reg_1404;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            alignedA_0_address0_local = zext_ln18_fu_1102_p1;
        end else begin
            alignedA_0_address0_local = 'bx;
        end
    end else begin
        alignedA_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln65_reg_1432 == 1'd1) & (tmp_1_reg_1428 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((icmp_ln65_reg_1432 == 1'd1) & (tmp_1_reg_1428 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_0_ce0_local = 1'b1;
    end else begin
        alignedA_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln65_reg_1432 == 1'd1) & (tmp_1_reg_1428 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((icmp_ln65_reg_1432 == 1'd1) & (tmp_1_reg_1428 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_0_d0_local = grp_fu_836_p11;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        alignedA_0_d0_local = 8'd45;
    end else begin
        alignedA_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln65_reg_1432 == 1'd1) & (tmp_1_reg_1428 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((icmp_ln65_reg_1432 == 1'd1) & (tmp_1_reg_1428 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(tmp_1_fu_1110_p11 == 8'd92) & ~(tmp_1_fu_1110_p11 == 8'd60) & (icmp_ln65_fu_1133_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_0_we0_local = 1'b1;
    end else begin
        alignedA_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_1555 == 8'd92) & (icmp_ln65_reg_1432 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        alignedA_1_address0_local = alignedA_1_addr_1_gep_fu_713_p3;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_1555 == 8'd60) & (icmp_ln65_reg_1432 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        alignedA_1_address0_local = alignedA_1_addr_2_gep_fu_689_p3;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        alignedA_1_address0_local = zext_ln18_reg_1404;
    end else begin
        alignedA_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_1555 == 8'd92) & (icmp_ln65_reg_1432 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_1555 == 8'd60) & (icmp_ln65_reg_1432 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_1_ce0_local = 1'b1;
    end else begin
        alignedA_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_1555 == 8'd92) & (icmp_ln65_reg_1432 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_1555 == 8'd60) & (icmp_ln65_reg_1432 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        alignedA_1_d0_local = grp_fu_918_p11;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        alignedA_1_d0_local = 8'd45;
    end else begin
        alignedA_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_1555 == 8'd92) & (icmp_ln65_reg_1432 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_1555 == 8'd60) & (icmp_ln65_reg_1432 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | (~(tmp_s_fu_1259_p11 == 8'd92) & ~(tmp_s_fu_1259_p11 == 8'd60) & (icmp_ln65_reg_1432 == 1'd1) & (or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_1_we0_local = 1'b1;
    end else begin
        alignedA_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1197)) begin
            alignedA_2_address0_local = alignedA_2_addr_1_gep_fu_417_p3;
        end else if ((1'b1 == ap_condition_1191)) begin
            alignedA_2_address0_local = zext_ln18_reg_1404;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            alignedA_2_address0_local = zext_ln18_fu_1102_p1;
        end else begin
            alignedA_2_address0_local = 'bx;
        end
    end else begin
        alignedA_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln65_reg_1432 == 1'd0) & (tmp_1_reg_1428 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((icmp_ln65_reg_1432 == 1'd0) & (tmp_1_reg_1428 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_2_ce0_local = 1'b1;
    end else begin
        alignedA_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln65_reg_1432 == 1'd0) & (tmp_1_reg_1428 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((icmp_ln65_reg_1432 == 1'd0) & (tmp_1_reg_1428 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_2_d0_local = grp_fu_836_p11;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        alignedA_2_d0_local = 8'd45;
    end else begin
        alignedA_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln65_reg_1432 == 1'd0) & (tmp_1_reg_1428 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((icmp_ln65_reg_1432 == 1'd0) & (tmp_1_reg_1428 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(tmp_1_fu_1110_p11 == 8'd92) & ~(tmp_1_fu_1110_p11 == 8'd60) & (icmp_ln65_fu_1133_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_2_we0_local = 1'b1;
    end else begin
        alignedA_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_1555 == 8'd92) & (icmp_ln65_reg_1432 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        alignedA_3_address0_local = alignedA_3_addr_1_gep_fu_697_p3;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_1555 == 8'd60) & (icmp_ln65_reg_1432 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        alignedA_3_address0_local = alignedA_3_addr_2_gep_fu_681_p3;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        alignedA_3_address0_local = zext_ln18_reg_1404;
    end else begin
        alignedA_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_1555 == 8'd92) & (icmp_ln65_reg_1432 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_1555 == 8'd60) & (icmp_ln65_reg_1432 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_3_ce0_local = 1'b1;
    end else begin
        alignedA_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_1555 == 8'd92) & (icmp_ln65_reg_1432 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_1555 == 8'd60) & (icmp_ln65_reg_1432 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        alignedA_3_d0_local = grp_fu_918_p11;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        alignedA_3_d0_local = 8'd45;
    end else begin
        alignedA_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_1555 == 8'd92) & (icmp_ln65_reg_1432 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_1555 == 8'd60) & (icmp_ln65_reg_1432 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | (~(tmp_s_fu_1259_p11 == 8'd92) & ~(tmp_s_fu_1259_p11 == 8'd60) & (icmp_ln65_reg_1432 == 1'd0) & (or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_3_we0_local = 1'b1;
    end else begin
        alignedA_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1204)) begin
            alignedB_0_address0_local = alignedB_0_addr_gep_fu_457_p3;
        end else if ((1'b1 == ap_condition_1185)) begin
            alignedB_0_address0_local = zext_ln18_reg_1404;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            alignedB_0_address0_local = zext_ln18_fu_1102_p1;
        end else begin
            alignedB_0_address0_local = 'bx;
        end
    end else begin
        alignedB_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_1428 == 8'd92) & ~(tmp_1_reg_1428 == 8'd60) & (icmp_ln65_reg_1432 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((icmp_ln65_reg_1432 == 1'd1) & (tmp_1_reg_1428 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_0_ce0_local = 1'b1;
    end else begin
        alignedB_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_1428 == 8'd92) & ~(tmp_1_reg_1428 == 8'd60) & (icmp_ln65_reg_1432 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((icmp_ln65_reg_1432 == 1'd1) & (tmp_1_reg_1428 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_0_d0_local = grp_fu_861_p11;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        alignedB_0_d0_local = 8'd45;
    end else begin
        alignedB_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_1428 == 8'd92) & ~(tmp_1_reg_1428 == 8'd60) & (icmp_ln65_reg_1432 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((icmp_ln65_reg_1432 == 1'd1) & (tmp_1_reg_1428 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((icmp_ln65_fu_1133_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_1_fu_1110_p11 == 8'd60) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_0_we0_local = 1'b1;
    end else begin
        alignedB_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(tmp_s_reg_1555 == 8'd92) & ~(tmp_s_reg_1555 == 8'd60) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln65_reg_1432 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        alignedB_1_address0_local = alignedB_1_addr_gep_fu_737_p3;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_1555 == 8'd92) & (icmp_ln65_reg_1432 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        alignedB_1_address0_local = alignedB_1_addr_1_gep_fu_721_p3;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        alignedB_1_address0_local = zext_ln18_reg_1404;
    end else begin
        alignedB_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_s_reg_1555 == 8'd92) & ~(tmp_s_reg_1555 == 8'd60) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln65_reg_1432 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_1555 == 8'd92) & (icmp_ln65_reg_1432 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_1_ce0_local = 1'b1;
    end else begin
        alignedB_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(tmp_s_reg_1555 == 8'd92) & ~(tmp_s_reg_1555 == 8'd60) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln65_reg_1432 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_1555 == 8'd92) & (icmp_ln65_reg_1432 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        alignedB_1_d0_local = grp_fu_943_p11;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        alignedB_1_d0_local = 8'd45;
    end else begin
        alignedB_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_s_reg_1555 == 8'd92) & ~(tmp_s_reg_1555 == 8'd60) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln65_reg_1432 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((icmp_ln65_reg_1432 == 1'd1) & (tmp_s_fu_1259_p11 == 8'd60) & (or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_1555 == 8'd92) & (icmp_ln65_reg_1432 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        alignedB_1_we0_local = 1'b1;
    end else begin
        alignedB_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1210)) begin
            alignedB_2_address0_local = alignedB_2_addr_gep_fu_449_p3;
        end else if ((1'b1 == ap_condition_1197)) begin
            alignedB_2_address0_local = zext_ln18_reg_1404;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            alignedB_2_address0_local = zext_ln18_fu_1102_p1;
        end else begin
            alignedB_2_address0_local = 'bx;
        end
    end else begin
        alignedB_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_1428 == 8'd92) & ~(tmp_1_reg_1428 == 8'd60) & (icmp_ln65_reg_1432 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((icmp_ln65_reg_1432 == 1'd0) & (tmp_1_reg_1428 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_2_ce0_local = 1'b1;
    end else begin
        alignedB_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_1428 == 8'd92) & ~(tmp_1_reg_1428 == 8'd60) & (icmp_ln65_reg_1432 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((icmp_ln65_reg_1432 == 1'd0) & (tmp_1_reg_1428 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_2_d0_local = grp_fu_861_p11;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        alignedB_2_d0_local = 8'd45;
    end else begin
        alignedB_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_1428 == 8'd92) & ~(tmp_1_reg_1428 == 8'd60) & (icmp_ln65_reg_1432 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((icmp_ln65_reg_1432 == 1'd0) & (tmp_1_reg_1428 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((icmp_ln65_fu_1133_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_1_fu_1110_p11 == 8'd60) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_2_we0_local = 1'b1;
    end else begin
        alignedB_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(tmp_s_reg_1555 == 8'd92) & ~(tmp_s_reg_1555 == 8'd60) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln65_reg_1432 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        alignedB_3_address0_local = alignedB_3_addr_gep_fu_729_p3;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_1555 == 8'd92) & (icmp_ln65_reg_1432 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        alignedB_3_address0_local = alignedB_3_addr_1_gep_fu_705_p3;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        alignedB_3_address0_local = zext_ln18_reg_1404;
    end else begin
        alignedB_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_s_reg_1555 == 8'd92) & ~(tmp_s_reg_1555 == 8'd60) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln65_reg_1432 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_1555 == 8'd92) & (icmp_ln65_reg_1432 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_3_ce0_local = 1'b1;
    end else begin
        alignedB_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(tmp_s_reg_1555 == 8'd92) & ~(tmp_s_reg_1555 == 8'd60) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln65_reg_1432 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_1555 == 8'd92) & (icmp_ln65_reg_1432 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        alignedB_3_d0_local = grp_fu_943_p11;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        alignedB_3_d0_local = 8'd45;
    end else begin
        alignedB_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_s_reg_1555 == 8'd92) & ~(tmp_s_reg_1555 == 8'd60) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln65_reg_1432 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((icmp_ln65_reg_1432 == 1'd0) & (tmp_s_fu_1259_p11 == 8'd60) & (or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_1555 == 8'd92) & (icmp_ln65_reg_1432 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        alignedB_3_we0_local = 1'b1;
    end else begin
        alignedB_3_we0_local = 1'b0;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((ap_predicate_tran5to8_state5 == 1'b1) | (or_ln62_reg_1369 == 1'd0))) begin
        ap_condition_pp0_exit_iter0_state5 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state5 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
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
    if ((1'b1 == ap_CS_fsm_state10)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        ap_return = UnifiedRetVal_reg_793;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        b_str_idx_4_out_ap_vld = 1'b1;
    end else begin
        b_str_idx_4_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            ptr_0_address0_local = zext_ln64_1_fu_1251_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            ptr_0_address0_local = zext_ln64_fu_1077_p1;
        end else begin
            ptr_0_address0_local = 'bx;
        end
    end else begin
        ptr_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ptr_0_ce0_local = 1'b1;
    end else begin
        ptr_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            ptr_1_address0_local = zext_ln64_1_fu_1251_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            ptr_1_address0_local = zext_ln64_fu_1077_p1;
        end else begin
            ptr_1_address0_local = 'bx;
        end
    end else begin
        ptr_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ptr_1_ce0_local = 1'b1;
    end else begin
        ptr_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            ptr_2_address0_local = zext_ln64_1_fu_1251_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            ptr_2_address0_local = zext_ln64_fu_1077_p1;
        end else begin
            ptr_2_address0_local = 'bx;
        end
    end else begin
        ptr_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ptr_2_ce0_local = 1'b1;
    end else begin
        ptr_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            ptr_3_address0_local = zext_ln64_1_fu_1251_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            ptr_3_address0_local = zext_ln64_fu_1077_p1;
        end else begin
            ptr_3_address0_local = 'bx;
        end
    end else begin
        ptr_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ptr_3_ce0_local = 1'b1;
    end else begin
        ptr_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
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
            if ((~(((or_ln62_reg_1369 == 1'd0) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_predicate_tran5to8_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else if (((or_ln62_reg_1369 == 1'd0) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else if (((ap_predicate_tran5to8_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
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
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
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
assign SEQB_0_address0 = SEQB_0_address0_local;
assign SEQB_0_ce0 = SEQB_0_ce0_local;
assign SEQB_1_address0 = SEQB_1_address0_local;
assign SEQB_1_ce0 = SEQB_1_ce0_local;
assign SEQB_2_address0 = SEQB_2_address0_local;
assign SEQB_2_ce0 = SEQB_2_ce0_local;
assign SEQB_3_address0 = SEQB_3_address0_local;
assign SEQB_3_ce0 = SEQB_3_ce0_local;
assign add_ln64_1_fu_1231_p2 = (r_fu_1225_p2 + p_shl1_fu_1217_p3);
assign add_ln64_fu_1057_p2 = (r_1_fu_1051_p2 + trunc_ln18_3_fu_1031_p1);
assign alignedA_0_addr_1_gep_fu_433_p3 = zext_ln18_reg_1404;
assign alignedA_0_address0 = alignedA_0_address0_local;
assign alignedA_0_ce0 = alignedA_0_ce0_local;
assign alignedA_0_d0 = alignedA_0_d0_local;
assign alignedA_0_we0 = alignedA_0_we0_local;
assign alignedA_1_addr_1_gep_fu_713_p3 = zext_ln18_reg_1404;
assign alignedA_1_addr_2_gep_fu_689_p3 = zext_ln18_reg_1404;
assign alignedA_1_address0 = alignedA_1_address0_local;
assign alignedA_1_ce0 = alignedA_1_ce0_local;
assign alignedA_1_d0 = alignedA_1_d0_local;
assign alignedA_1_we0 = alignedA_1_we0_local;
assign alignedA_2_addr_1_gep_fu_417_p3 = zext_ln18_reg_1404;
assign alignedA_2_address0 = alignedA_2_address0_local;
assign alignedA_2_ce0 = alignedA_2_ce0_local;
assign alignedA_2_d0 = alignedA_2_d0_local;
assign alignedA_2_we0 = alignedA_2_we0_local;
assign alignedA_3_addr_1_gep_fu_697_p3 = zext_ln18_reg_1404;
assign alignedA_3_addr_2_gep_fu_681_p3 = zext_ln18_reg_1404;
assign alignedA_3_address0 = alignedA_3_address0_local;
assign alignedA_3_ce0 = alignedA_3_ce0_local;
assign alignedA_3_d0 = alignedA_3_d0_local;
assign alignedA_3_we0 = alignedA_3_we0_local;
assign alignedB_0_addr_gep_fu_457_p3 = zext_ln18_reg_1404;
assign alignedB_0_address0 = alignedB_0_address0_local;
assign alignedB_0_ce0 = alignedB_0_ce0_local;
assign alignedB_0_d0 = alignedB_0_d0_local;
assign alignedB_0_we0 = alignedB_0_we0_local;
assign alignedB_1_addr_1_gep_fu_721_p3 = zext_ln18_reg_1404;
assign alignedB_1_addr_gep_fu_737_p3 = zext_ln18_reg_1404;
assign alignedB_1_address0 = alignedB_1_address0_local;
assign alignedB_1_ce0 = alignedB_1_ce0_local;
assign alignedB_1_d0 = alignedB_1_d0_local;
assign alignedB_1_we0 = alignedB_1_we0_local;
assign alignedB_2_addr_gep_fu_449_p3 = zext_ln18_reg_1404;
assign alignedB_2_address0 = alignedB_2_address0_local;
assign alignedB_2_ce0 = alignedB_2_ce0_local;
assign alignedB_2_d0 = alignedB_2_d0_local;
assign alignedB_2_we0 = alignedB_2_we0_local;
assign alignedB_3_addr_1_gep_fu_705_p3 = zext_ln18_reg_1404;
assign alignedB_3_addr_gep_fu_729_p3 = zext_ln18_reg_1404;
assign alignedB_3_address0 = alignedB_3_address0_local;
assign alignedB_3_ce0 = alignedB_3_ce0_local;
assign alignedB_3_d0 = alignedB_3_d0_local;
assign alignedB_3_we0 = alignedB_3_we0_local;
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
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
always @ (*) begin
    ap_condition_1066 = ((1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_1_fu_1110_p11 == 8'd60) & (1'b0 == ap_block_pp0_stage2));
end
always @ (*) begin
    ap_condition_1070 = ((1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_1_fu_1110_p11 == 8'd92) & (1'b0 == ap_block_pp0_stage2));
end
always @ (*) begin
    ap_condition_1076 = ((trunc_ln17_reg_1516 == 2'd1) & (tmp_s_fu_1259_p11 == 8'd60) & (or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4));
end
always @ (*) begin
    ap_condition_1082 = ((trunc_ln17_reg_1516 == 2'd1) & (tmp_s_fu_1259_p11 == 8'd92) & (or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4));
end
always @ (*) begin
    ap_condition_1088 = ((trunc_ln17_reg_1516 == 2'd2) & (tmp_s_fu_1259_p11 == 8'd60) & (or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4));
end
always @ (*) begin
    ap_condition_1094 = ((trunc_ln17_reg_1516 == 2'd2) & (tmp_s_fu_1259_p11 == 8'd92) & (or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4));
end
always @ (*) begin
    ap_condition_1100 = ((trunc_ln17_reg_1516 == 2'd3) & (tmp_s_fu_1259_p11 == 8'd60) & (or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4));
end
always @ (*) begin
    ap_condition_1106 = ((trunc_ln17_reg_1516 == 2'd3) & (tmp_s_fu_1259_p11 == 8'd92) & (or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4));
end
always @ (*) begin
    ap_condition_1112 = ((trunc_ln17_reg_1516 == 2'd0) & (tmp_s_fu_1259_p11 == 8'd60) & (or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4));
end
always @ (*) begin
    ap_condition_1118 = ((trunc_ln17_reg_1516 == 2'd0) & (tmp_s_fu_1259_p11 == 8'd92) & (or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4));
end
always @ (*) begin
    ap_condition_1123 = (~(tmp_1_fu_1110_p11 == 8'd92) & ~(tmp_1_fu_1110_p11 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2));
end
always @ (*) begin
    ap_condition_1129 = ((trunc_ln17_1_reg_1521 == 2'd1) & (tmp_s_fu_1259_p11 == 8'd92) & (or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4));
end
always @ (*) begin
    ap_condition_1136 = (~(tmp_s_fu_1259_p11 == 8'd92) & ~(tmp_s_fu_1259_p11 == 8'd60) & (trunc_ln17_1_reg_1521 == 2'd1) & (or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4));
end
always @ (*) begin
    ap_condition_1142 = ((trunc_ln17_1_reg_1521 == 2'd2) & (tmp_s_fu_1259_p11 == 8'd92) & (or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4));
end
always @ (*) begin
    ap_condition_1148 = (~(tmp_s_fu_1259_p11 == 8'd92) & ~(tmp_s_fu_1259_p11 == 8'd60) & (trunc_ln17_1_reg_1521 == 2'd2) & (or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4));
end
always @ (*) begin
    ap_condition_1154 = ((trunc_ln17_1_reg_1521 == 2'd3) & (tmp_s_fu_1259_p11 == 8'd92) & (or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4));
end
always @ (*) begin
    ap_condition_1160 = (~(tmp_s_fu_1259_p11 == 8'd92) & ~(tmp_s_fu_1259_p11 == 8'd60) & (trunc_ln17_1_reg_1521 == 2'd3) & (or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4));
end
always @ (*) begin
    ap_condition_1166 = ((trunc_ln17_1_reg_1521 == 2'd0) & (tmp_s_fu_1259_p11 == 8'd92) & (or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4));
end
always @ (*) begin
    ap_condition_1172 = (~(tmp_s_fu_1259_p11 == 8'd92) & ~(tmp_s_fu_1259_p11 == 8'd60) & (trunc_ln17_1_reg_1521 == 2'd0) & (or_ln62_1_reg_1526 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4));
end
always @ (*) begin
    ap_condition_1179 = ((icmp_ln65_reg_1432 == 1'd1) & (tmp_1_reg_1428 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage3));
end
always @ (*) begin
    ap_condition_1185 = ((icmp_ln65_reg_1432 == 1'd1) & (tmp_1_reg_1428 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage3));
end
always @ (*) begin
    ap_condition_1191 = ((icmp_ln65_reg_1432 == 1'd0) & (tmp_1_reg_1428 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage3));
end
always @ (*) begin
    ap_condition_1197 = ((icmp_ln65_reg_1432 == 1'd0) & (tmp_1_reg_1428 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage3));
end
always @ (*) begin
    ap_condition_1204 = (~(tmp_1_reg_1428 == 8'd92) & ~(tmp_1_reg_1428 == 8'd60) & (icmp_ln65_reg_1432 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage3));
end
always @ (*) begin
    ap_condition_1210 = (~(tmp_1_reg_1428 == 8'd92) & ~(tmp_1_reg_1428 == 8'd60) & (icmp_ln65_reg_1432 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage3));
end
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_phi_reg_pp0_iter0_a_idx_7_reg_769 = 'bx;
assign ap_phi_reg_pp0_iter0_b_idx_7_reg_781 = 'bx;
always @ (*) begin
    ap_predicate_tran5to8_state5 = ((or_ln62_1_fu_1207_p2 == 1'd0) & (or_ln62_reg_1369 == 1'd1));
end
assign b_str_idx_4_out = b_str_idx_1_reg_1398;
assign b_str_idx_fu_1282_p2 = (b_str_idx_1_reg_1398 + 32'd2);
assign grp_fu_806_p2 = ($signed(a_idx_1_reg_1362) + $signed(32'd4294967295));
assign grp_fu_811_p4 = {{grp_fu_806_p2[6:2]}};
assign grp_fu_821_p2 = ($signed(b_idx_1_reg_1355) + $signed(32'd4294967295));
assign grp_fu_826_p4 = {{grp_fu_821_p2[6:2]}};
assign grp_fu_836_p10 = a_idx_1_reg_1362[1:0];
assign grp_fu_836_p9 = 'bx;
assign grp_fu_861_p10 = b_idx_1_reg_1355[1:0];
assign grp_fu_861_p9 = 'bx;
assign grp_fu_886_p2 = ($signed(a_idx_4_reg_745) + $signed(32'd4294967295));
assign grp_fu_892_p4 = {{grp_fu_886_p2[6:2]}};
assign grp_fu_902_p2 = ($signed(b_idx_4_reg_757) + $signed(32'd4294967295));
assign grp_fu_908_p4 = {{grp_fu_902_p2[6:2]}};
assign grp_fu_918_p9 = 'bx;
assign grp_fu_943_p9 = 'bx;
assign icmp_ln62_1_fu_1019_p2 = (($signed(b_idx_fu_110) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_2_fu_1195_p2 = (($signed(ap_phi_reg_pp0_iter0_a_idx_4_reg_745) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_3_fu_1201_p2 = (($signed(ap_phi_reg_pp0_iter0_b_idx_4_reg_757) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_fu_1013_p2 = (($signed(a_idx_fu_114) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln65_fu_1133_p2 = ((trunc_ln18_fu_1088_p1 == 2'd0) ? 1'b1 : 1'b0);
assign lshr_ln64_1_fu_1241_p4 = {{add_ln64_1_fu_1231_p2[14:2]}};
assign lshr_ln6_fu_1092_p4 = {{a_str_idx_fu_106[7:2]}};
assign lshr_ln7_fu_1067_p4 = {{add_ln64_fu_1057_p2[14:2]}};
assign or_ln62_1_fu_1207_p2 = (icmp_ln62_3_fu_1201_p2 | icmp_ln62_2_fu_1195_p2);
assign or_ln62_fu_1025_p2 = (icmp_ln62_fu_1013_p2 | icmp_ln62_1_fu_1019_p2);
assign p_shl1_fu_1217_p3 = {{trunc_ln16_1_fu_1213_p1}, {7'd0}};
assign p_shl_fu_1043_p3 = {{trunc_ln16_fu_1039_p1}, {7'd0}};
assign ptr_0_address0 = ptr_0_address0_local;
assign ptr_0_ce0 = ptr_0_ce0_local;
assign ptr_1_address0 = ptr_1_address0_local;
assign ptr_1_ce0 = ptr_1_ce0_local;
assign ptr_2_address0 = ptr_2_address0_local;
assign ptr_2_ce0 = ptr_2_ce0_local;
assign ptr_3_address0 = ptr_3_address0_local;
assign ptr_3_ce0 = ptr_3_ce0_local;
assign r_1_fu_1051_p2 = (p_shl_fu_1043_p3 + trunc_ln18_4_fu_1035_p1);
assign r_fu_1225_p2 = (trunc_ln17_2_fu_1187_p1 + trunc_ln17_3_fu_1191_p1);
assign tmp_1_fu_1110_p9 = 'bx;
assign tmp_s_fu_1259_p9 = 'bx;
assign trunc_ln16_1_fu_1213_p1 = ap_phi_reg_pp0_iter0_b_idx_4_reg_757[7:0];
assign trunc_ln16_fu_1039_p1 = b_idx_fu_110[7:0];
assign trunc_ln17_1_fu_1183_p1 = ap_phi_reg_pp0_iter0_b_idx_4_reg_757[1:0];
assign trunc_ln17_2_fu_1187_p1 = ap_phi_reg_pp0_iter0_a_idx_4_reg_745[14:0];
assign trunc_ln17_3_fu_1191_p1 = ap_phi_reg_pp0_iter0_b_idx_4_reg_757[14:0];
assign trunc_ln17_fu_1179_p1 = ap_phi_reg_pp0_iter0_a_idx_4_reg_745[1:0];
assign trunc_ln18_3_fu_1031_p1 = a_idx_fu_114[14:0];
assign trunc_ln18_4_fu_1035_p1 = b_idx_fu_110[14:0];
assign trunc_ln18_fu_1088_p1 = a_str_idx_fu_106[1:0];
assign trunc_ln64_1_fu_1237_p1 = add_ln64_1_fu_1231_p2[1:0];
assign trunc_ln64_fu_1063_p1 = add_ln64_fu_1057_p2[1:0];
assign zext_ln18_fu_1102_p1 = lshr_ln6_fu_1092_p4;
assign zext_ln64_1_fu_1251_p1 = lshr_ln64_1_fu_1241_p4;
assign zext_ln64_fu_1077_p1 = lshr_ln7_fu_1067_p4;
assign zext_ln65_1_fu_1295_p1 = grp_fu_892_p4;
assign zext_ln65_fu_1147_p1 = grp_fu_811_p4;
assign zext_ln66_1_fu_1303_p1 = grp_fu_908_p4;
assign zext_ln66_fu_1155_p1 = grp_fu_826_p4;
assign zext_ln71_1_fu_1287_p1 = grp_fu_892_p4;
assign zext_ln71_fu_1139_p1 = grp_fu_811_p4;
assign zext_ln77_1_fu_1311_p1 = grp_fu_908_p4;
assign zext_ln77_fu_1163_p1 = grp_fu_826_p4;
always @ (posedge ap_clk) begin
    zext_ln18_reg_1404[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end
endmodule 
