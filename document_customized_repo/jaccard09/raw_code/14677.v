module needwun_needwun_Pipeline_fill_out_fill_in (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,ptr_0_address0,ptr_0_ce0,ptr_0_we0,ptr_0_d0,M_0_address0,M_0_ce0,M_0_we0,M_0_d0,M_0_q0,M_0_address1,M_0_ce1,M_0_q1,M_1_address0,M_1_ce0,M_1_we0,M_1_d0,M_1_q0,M_1_address1,M_1_ce1,M_1_q1,M_2_address0,M_2_ce0,M_2_we0,M_2_d0,M_2_q0,M_2_address1,M_2_ce1,M_2_q1,M_3_address0,M_3_ce0,M_3_we0,M_3_d0,M_3_q0,M_3_address1,M_3_ce1,M_3_q1,SEQB_0_address0,SEQB_0_ce0,SEQB_0_q0,SEQB_1_address0,SEQB_1_ce0,SEQB_1_q0,SEQB_2_address0,SEQB_2_ce0,SEQB_2_q0,SEQB_3_address0,SEQB_3_ce0,SEQB_3_q0,ptr_3_address0,ptr_3_ce0,ptr_3_we0,ptr_3_d0,ptr_2_address0,ptr_2_ce0,ptr_2_we0,ptr_2_d0,ptr_1_address0,ptr_1_ce0,ptr_1_we0,ptr_1_d0,SEQA_0_address0,SEQA_0_ce0,SEQA_0_q0,SEQA_1_address0,SEQA_1_ce0,SEQA_1_q0,SEQA_2_address0,SEQA_2_ce0,SEQA_2_q0,SEQA_3_address0,SEQA_3_ce0,SEQA_3_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 6'd1;
parameter    ap_ST_fsm_pp0_stage1 = 6'd2;
parameter    ap_ST_fsm_pp0_stage2 = 6'd4;
parameter    ap_ST_fsm_pp0_stage3 = 6'd8;
parameter    ap_ST_fsm_pp0_stage4 = 6'd16;
parameter    ap_ST_fsm_pp0_stage5 = 6'd32;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] ptr_0_address0;
output   ptr_0_ce0;
output   ptr_0_we0;
output  [7:0] ptr_0_d0;
output  [12:0] M_0_address0;
output   M_0_ce0;
output   M_0_we0;
output  [31:0] M_0_d0;
input  [31:0] M_0_q0;
output  [12:0] M_0_address1;
output   M_0_ce1;
input  [31:0] M_0_q1;
output  [12:0] M_1_address0;
output   M_1_ce0;
output   M_1_we0;
output  [31:0] M_1_d0;
input  [31:0] M_1_q0;
output  [12:0] M_1_address1;
output   M_1_ce1;
input  [31:0] M_1_q1;
output  [12:0] M_2_address0;
output   M_2_ce0;
output   M_2_we0;
output  [31:0] M_2_d0;
input  [31:0] M_2_q0;
output  [12:0] M_2_address1;
output   M_2_ce1;
input  [31:0] M_2_q1;
output  [12:0] M_3_address0;
output   M_3_ce0;
output   M_3_we0;
output  [31:0] M_3_d0;
input  [31:0] M_3_q0;
output  [12:0] M_3_address1;
output   M_3_ce1;
input  [31:0] M_3_q1;
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
output  [12:0] ptr_3_address0;
output   ptr_3_ce0;
output   ptr_3_we0;
output  [7:0] ptr_3_d0;
output  [12:0] ptr_2_address0;
output   ptr_2_ce0;
output   ptr_2_we0;
output  [7:0] ptr_2_d0;
output  [12:0] ptr_1_address0;
output   ptr_1_ce0;
output   ptr_1_we0;
output  [7:0] ptr_1_d0;
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
reg ap_idle;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] icmp_ln28_reg_1317;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
wire   [0:0] icmp_ln28_fu_696_p2;
wire    ap_block_pp0_stage0_11001;
wire   [7:0] select_ln17_fu_720_p3;
reg   [7:0] select_ln17_reg_1321;
wire   [7:0] select_ln28_fu_734_p3;
reg   [7:0] select_ln28_reg_1328;
wire   [1:0] trunc_ln28_fu_742_p1;
reg   [1:0] trunc_ln28_reg_1334;
reg   [4:0] tmp_s_reg_1339;
wire   [6:0] trunc_ln29_fu_766_p1;
reg   [6:0] trunc_ln29_reg_1344;
wire   [1:0] trunc_ln29_1_fu_770_p1;
reg   [1:0] trunc_ln29_1_reg_1349;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [14:0] empty_18_fu_819_p2;
reg   [14:0] empty_18_reg_1395;
wire   [14:0] empty_19_fu_825_p2;
reg   [14:0] empty_19_reg_1402;
wire   [6:0] add_ln30_fu_831_p2;
reg   [6:0] add_ln30_reg_1409;
wire   [7:0] tmp_2_fu_836_p11;
reg   [7:0] tmp_2_reg_1414;
wire   [7:0] tmp_9_fu_859_p11;
reg   [7:0] tmp_9_reg_1419;
wire   [0:0] icmp_ln30_fu_921_p2;
reg   [0:0] icmp_ln30_reg_1424;
wire    ap_block_pp0_stage2_11001;
wire   [1:0] trunc_ln39_fu_931_p1;
reg   [1:0] trunc_ln39_reg_1429;
reg   [12:0] lshr_ln3_reg_1437;
reg   [12:0] lshr_ln6_reg_1482;
wire   [0:0] icmp_ln30_1_fu_1015_p2;
reg   [0:0] icmp_ln30_1_reg_1487;
reg   [12:0] lshr_ln40_1_reg_1492;
reg   [12:0] lshr_ln45_1_reg_1497;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] tmp_4_fu_1057_p11;
reg   [31:0] tmp_4_reg_1522;
wire   [31:0] tmp_5_fu_1080_p11;
reg   [31:0] tmp_5_reg_1528;
wire   [31:0] tmp_3_fu_1110_p11;
reg   [31:0] tmp_3_reg_1553;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [31:0] up_fu_1133_p2;
reg   [31:0] up_reg_1558;
wire   [31:0] left_fu_1138_p2;
reg   [31:0] left_reg_1565;
wire   [31:0] up_left_1_fu_1150_p2;
reg   [31:0] up_left_1_reg_1572;
wire   [31:0] tmp_10_fu_1155_p11;
reg   [31:0] tmp_10_reg_1578;
wire   [31:0] max_fu_1206_p3;
reg   [31:0] max_reg_1583;
wire    ap_block_pp0_stage5_11001;
wire   [31:0] up_1_fu_1241_p2;
reg   [31:0] up_1_reg_1600;
wire   [31:0] left_1_fu_1246_p2;
reg   [31:0] left_1_reg_1605;
wire   [31:0] select_ln43_2_fu_1257_p3;
reg   [31:0] select_ln43_2_reg_1610;
wire   [63:0] zext_ln45_1_fu_1279_p1;
reg   [63:0] zext_ln45_1_reg_1616;
wire   [0:0] icmp_ln46_1_fu_1286_p2;
reg   [0:0] icmp_ln46_1_reg_1632;
wire   [0:0] icmp_ln48_1_fu_1291_p2;
reg   [0:0] icmp_ln48_1_reg_1636;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln30_1_fu_784_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] p_cast14_fu_805_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln40_fu_965_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln41_fu_988_p1;
wire   [63:0] zext_ln39_fu_1050_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln40_1_fu_1103_p1;
wire   [63:0] zext_ln45_fu_1214_p1;
wire   [0:0] icmp_ln46_fu_1233_p2;
wire   [0:0] icmp_ln48_fu_1237_p2;
wire   [12:0] ptr_2_addr_gep_fu_478_p3;
wire   [12:0] ptr_1_addr_gep_fu_487_p3;
wire   [12:0] ptr_0_addr_gep_fu_496_p3;
wire   [12:0] ptr_3_addr_gep_fu_505_p3;
wire   [12:0] ptr_2_addr_1_gep_fu_514_p3;
wire   [12:0] ptr_1_addr_1_gep_fu_523_p3;
wire   [12:0] ptr_0_addr_1_gep_fu_532_p3;
wire   [12:0] ptr_3_addr_1_gep_fu_541_p3;
wire   [12:0] ptr_2_addr_4_gep_fu_614_p3;
wire   [12:0] ptr_1_addr_4_gep_fu_622_p3;
wire   [12:0] ptr_3_addr_4_gep_fu_630_p3;
wire   [12:0] ptr_0_addr_4_gep_fu_638_p3;
wire   [12:0] ptr_2_addr_3_gep_fu_646_p3;
wire   [12:0] ptr_1_addr_3_gep_fu_654_p3;
wire   [12:0] ptr_3_addr_3_gep_fu_662_p3;
wire   [12:0] ptr_0_addr_3_gep_fu_670_p3;
reg   [7:0] a_idx_2_fu_110;
wire   [7:0] add_ln29_1_fu_882_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_a_idx_2_load;
reg   [7:0] b_idx_1_fu_114;
reg   [7:0] ap_sig_allocacmp_b_idx_1_load;
reg   [13:0] indvar_flatten_fu_118;
wire   [13:0] add_ln28_fu_702_p2;
reg   [13:0] ap_sig_allocacmp_indvar_flatten_load;
reg    SEQA_0_ce0_local;
reg    SEQA_1_ce0_local;
reg    SEQA_2_ce0_local;
reg    SEQA_3_ce0_local;
reg    SEQB_0_ce0_local;
reg    SEQB_1_ce0_local;
reg    SEQB_2_ce0_local;
reg    SEQB_3_ce0_local;
reg    M_0_ce1_local;
reg   [12:0] M_0_address1_local;
reg    M_0_ce0_local;
reg   [12:0] M_0_address0_local;
reg    M_0_we0_local;
reg   [31:0] M_0_d0_local;
wire   [31:0] max_1_fu_1269_p3;
reg    M_1_ce1_local;
reg   [12:0] M_1_address1_local;
reg    M_1_ce0_local;
reg   [12:0] M_1_address0_local;
reg    M_1_we0_local;
reg   [31:0] M_1_d0_local;
reg    M_2_ce1_local;
reg   [12:0] M_2_address1_local;
reg    M_2_ce0_local;
reg   [12:0] M_2_address0_local;
reg    M_2_we0_local;
reg   [31:0] M_2_d0_local;
reg    M_3_ce1_local;
reg   [12:0] M_3_address1_local;
reg    M_3_ce0_local;
reg   [12:0] M_3_address0_local;
reg    M_3_we0_local;
reg   [31:0] M_3_d0_local;
reg    ptr_2_we0_local;
reg   [7:0] ptr_2_d0_local;
reg    ptr_2_ce0_local;
reg   [12:0] ptr_2_address0_local;
reg    ptr_1_we0_local;
reg   [7:0] ptr_1_d0_local;
reg    ptr_1_ce0_local;
reg   [12:0] ptr_1_address0_local;
reg    ptr_0_we0_local;
reg   [7:0] ptr_0_d0_local;
reg    ptr_0_ce0_local;
reg   [12:0] ptr_0_address0_local;
reg    ptr_3_we0_local;
reg   [7:0] ptr_3_d0_local;
reg    ptr_3_ce0_local;
reg   [12:0] ptr_3_address0_local;
wire   [0:0] icmp_ln29_fu_714_p2;
wire   [7:0] add_ln28_1_fu_728_p2;
wire   [6:0] trunc_ln28_1_fu_746_p1;
wire   [6:0] empty_fu_750_p2;
wire   [4:0] lshr_ln2_fu_774_p4;
wire   [14:0] p_shl_fu_812_p3;
wire   [14:0] b_idx_1_cast4_fu_802_p1;
wire   [7:0] tmp_2_fu_836_p9;
wire   [7:0] tmp_9_fu_859_p9;
wire   [7:0] tmp_fu_892_p9;
wire   [7:0] tmp_fu_892_p11;
wire   [14:0] zext_ln29_fu_915_p1;
wire   [14:0] add_ln39_fu_926_p2;
wire   [14:0] zext_ln30_fu_918_p1;
wire   [14:0] add_ln39_1_fu_935_p2;
wire   [14:0] add_ln40_fu_950_p2;
wire   [12:0] lshr_ln4_fu_955_p4;
wire   [14:0] add_ln41_fu_973_p2;
wire   [12:0] lshr_ln5_fu_978_p4;
wire   [7:0] add_ln29_fu_1006_p2;
wire   [14:0] zext_ln30_2_fu_1011_p1;
wire   [14:0] add_ln40_2_fu_1020_p2;
wire   [14:0] add_ln45_fu_1035_p2;
wire   [31:0] tmp_4_fu_1057_p9;
wire   [31:0] tmp_5_fu_1080_p9;
wire   [31:0] tmp_3_fu_1110_p9;
wire    ap_block_pp0_stage4;
wire   [31:0] select_ln39_1_fu_1143_p3;
wire   [31:0] tmp_10_fu_1155_p9;
wire    ap_block_pp0_stage5;
wire   [31:0] select_ln39_fu_1178_p3;
wire   [0:0] icmp_ln43_fu_1190_p2;
wire   [31:0] up_left_fu_1185_p2;
wire   [31:0] select_ln43_fu_1194_p3;
wire   [0:0] icmp_ln43_1_fu_1200_p2;
wire   [0:0] icmp_ln43_2_fu_1251_p2;
wire   [0:0] icmp_ln43_3_fu_1265_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [5:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1084;
reg    ap_condition_1088;
reg    ap_condition_1093;
reg    ap_condition_1097;
reg    ap_condition_1104;
reg    ap_condition_1110;
reg    ap_condition_1115;
reg    ap_condition_1121;
reg    ap_condition_1127;
reg    ap_condition_1132;
reg    ap_condition_1136;
reg    ap_condition_1140;
reg    ap_condition_1144;
reg    ap_condition_1148;
reg    ap_condition_1152;
reg    ap_condition_1156;
reg    ap_condition_1160;
reg    ap_condition_1164;
reg    ap_condition_1168;
reg    ap_condition_1172;
reg    ap_condition_1176;
reg    ap_condition_1180;
reg    ap_condition_1184;
reg    ap_condition_1188;
reg    ap_condition_1192;
reg    ap_condition_1196;
reg    ap_condition_1200;
reg    ap_condition_1204;
wire   [1:0] tmp_2_fu_836_p1;
wire  signed [1:0] tmp_2_fu_836_p3;
wire  signed [1:0] tmp_2_fu_836_p5;
wire   [1:0] tmp_2_fu_836_p7;
wire   [1:0] tmp_9_fu_859_p1;
wire   [1:0] tmp_9_fu_859_p3;
wire  signed [1:0] tmp_9_fu_859_p5;
wire  signed [1:0] tmp_9_fu_859_p7;
wire   [1:0] tmp_fu_892_p1;
wire  signed [1:0] tmp_fu_892_p3;
wire  signed [1:0] tmp_fu_892_p5;
wire   [1:0] tmp_fu_892_p7;
wire   [1:0] tmp_4_fu_1057_p1;
wire  signed [1:0] tmp_4_fu_1057_p3;
wire  signed [1:0] tmp_4_fu_1057_p5;
wire   [1:0] tmp_4_fu_1057_p7;
wire   [1:0] tmp_5_fu_1080_p1;
wire  signed [1:0] tmp_5_fu_1080_p3;
wire  signed [1:0] tmp_5_fu_1080_p5;
wire   [1:0] tmp_5_fu_1080_p7;
wire  signed [1:0] tmp_3_fu_1110_p1;
wire  signed [1:0] tmp_3_fu_1110_p3;
wire   [1:0] tmp_3_fu_1110_p5;
wire   [1:0] tmp_3_fu_1110_p7;
wire   [1:0] tmp_10_fu_1155_p1;
wire   [1:0] tmp_10_fu_1155_p3;
wire  signed [1:0] tmp_10_fu_1155_p5;
wire  signed [1:0] tmp_10_fu_1155_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 a_idx_2_fu_110 = 8'd0;
#0 b_idx_1_fu_114 = 8'd0;
#0 indvar_flatten_fu_118 = 14'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U9(.din0(SEQA_0_q0),.din1(SEQA_1_q0),.din2(SEQA_2_q0),.din3(SEQA_3_q0),.def(tmp_2_fu_836_p9),.sel(trunc_ln29_1_reg_1349),.dout(tmp_2_fu_836_p11));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 8 ),.CASE1( 2'h1 ),.din1_WIDTH( 8 ),.CASE2( 2'h2 ),.din2_WIDTH( 8 ),.CASE3( 2'h3 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U10(.din0(SEQA_0_q0),.din1(SEQA_1_q0),.din2(SEQA_2_q0),.din3(SEQA_3_q0),.def(tmp_9_fu_859_p9),.sel(trunc_ln29_1_reg_1349),.dout(tmp_9_fu_859_p11));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U11(.din0(SEQB_0_q0),.din1(SEQB_1_q0),.din2(SEQB_2_q0),.din3(SEQB_3_q0),.def(tmp_fu_892_p9),.sel(trunc_ln28_reg_1334),.dout(tmp_fu_892_p11));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 32 ),.CASE1( 2'h2 ),.din1_WIDTH( 32 ),.CASE2( 2'h3 ),.din2_WIDTH( 32 ),.CASE3( 2'h0 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U12(.din0(M_0_q1),.din1(M_1_q1),.din2(M_2_q1),.din3(M_3_q1),.def(tmp_4_fu_1057_p9),.sel(trunc_ln39_reg_1429),.dout(tmp_4_fu_1057_p11));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 32 ),.CASE1( 2'h2 ),.din1_WIDTH( 32 ),.CASE2( 2'h3 ),.din2_WIDTH( 32 ),.CASE3( 2'h0 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U13(.din0(M_0_q0),.din1(M_1_q0),.din2(M_2_q0),.din3(M_3_q0),.def(tmp_5_fu_1080_p9),.sel(trunc_ln39_reg_1429),.dout(tmp_5_fu_1080_p11));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 32 ),.CASE1( 2'h3 ),.din1_WIDTH( 32 ),.CASE2( 2'h0 ),.din2_WIDTH( 32 ),.CASE3( 2'h1 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U14(.din0(M_0_q1),.din1(M_1_q1),.din2(M_2_q1),.din3(M_3_q1),.def(tmp_3_fu_1110_p9),.sel(trunc_ln39_reg_1429),.dout(tmp_3_fu_1110_p11));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U15(.din0(M_0_q1),.din1(M_1_q1),.din2(M_2_q1),.din3(M_3_q1),.def(tmp_10_fu_1155_p9),.sel(trunc_ln39_reg_1429),.dout(tmp_10_fu_1155_p11));
needwun_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_idx_2_fu_110 <= 8'd1;
    end else if (((icmp_ln28_reg_1317 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_idx_2_fu_110 <= add_ln29_1_fu_882_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln28_fu_696_p2 == 1'd0))) begin
            b_idx_1_fu_114 <= select_ln28_fu_734_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            b_idx_1_fu_114 <= 8'd1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln28_fu_696_p2 == 1'd0))) begin
            indvar_flatten_fu_118 <= add_ln28_fu_702_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_118 <= 14'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln30_reg_1409 <= add_ln30_fu_831_p2;
        empty_18_reg_1395 <= empty_18_fu_819_p2;
        empty_19_reg_1402 <= empty_19_fu_825_p2;
        icmp_ln46_1_reg_1632 <= icmp_ln46_1_fu_1286_p2;
        icmp_ln48_1_reg_1636 <= icmp_ln48_1_fu_1291_p2;
        tmp_2_reg_1414 <= tmp_2_fu_836_p11;
        tmp_9_reg_1419 <= tmp_9_fu_859_p11;
        zext_ln45_1_reg_1616[12 : 0] <= zext_ln45_1_fu_1279_p1[12 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln28_reg_1317 <= icmp_ln28_fu_696_p2;
        left_1_reg_1605 <= left_1_fu_1246_p2;
        select_ln17_reg_1321 <= select_ln17_fu_720_p3;
        select_ln28_reg_1328 <= select_ln28_fu_734_p3;
        select_ln43_2_reg_1610 <= select_ln43_2_fu_1257_p3;
        tmp_s_reg_1339 <= {{empty_fu_750_p2[6:2]}};
        trunc_ln28_reg_1334 <= trunc_ln28_fu_742_p1;
        trunc_ln29_1_reg_1349 <= trunc_ln29_1_fu_770_p1;
        trunc_ln29_reg_1344 <= trunc_ln29_fu_766_p1;
        up_1_reg_1600 <= up_1_fu_1241_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln30_1_reg_1487 <= icmp_ln30_1_fu_1015_p2;
        icmp_ln30_reg_1424 <= icmp_ln30_fu_921_p2;
        lshr_ln3_reg_1437 <= {{add_ln39_1_fu_935_p2[14:2]}};
        lshr_ln40_1_reg_1492 <= {{add_ln40_2_fu_1020_p2[14:2]}};
        lshr_ln45_1_reg_1497 <= {{add_ln45_fu_1035_p2[14:2]}};
        lshr_ln6_reg_1482 <= {{add_ln39_fu_926_p2[14:2]}};
        trunc_ln39_reg_1429 <= trunc_ln39_fu_931_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        left_reg_1565 <= left_fu_1138_p2;
        tmp_10_reg_1578 <= tmp_10_fu_1155_p11;
        tmp_3_reg_1553 <= tmp_3_fu_1110_p11;
        up_left_1_reg_1572 <= up_left_1_fu_1150_p2;
        up_reg_1558 <= up_fu_1133_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        max_reg_1583 <= max_fu_1206_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_4_reg_1522 <= tmp_4_fu_1057_p11;
        tmp_5_reg_1528 <= tmp_5_fu_1080_p11;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_0_address0_local = zext_ln45_1_fu_1279_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_0_address0_local = zext_ln45_fu_1214_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_0_address0_local = zext_ln41_fu_988_p1;
    end else begin
        M_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1088)) begin
            M_0_address1_local = zext_ln40_1_fu_1103_p1;
        end else if ((1'b1 == ap_condition_1084)) begin
            M_0_address1_local = zext_ln39_fu_1050_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_0_address1_local = zext_ln40_fu_965_p1;
        end else begin
            M_0_address1_local = 'bx;
        end
    end else begin
        M_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_0_ce0_local = 1'b1;
    end else begin
        M_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln28_reg_1317 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1429 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln28_reg_1317 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1429 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        M_0_ce1_local = 1'b1;
    end else begin
        M_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_0_d0_local = max_1_fu_1269_p3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_0_d0_local = max_reg_1583;
        end else begin
            M_0_d0_local = 'bx;
        end
    end else begin
        M_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_0_we0_local = 1'b1;
    end else begin
        M_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_1_address0_local = zext_ln45_1_fu_1279_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_1_address0_local = zext_ln45_fu_1214_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_1_address0_local = zext_ln41_fu_988_p1;
    end else begin
        M_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1097)) begin
            M_1_address1_local = zext_ln40_1_fu_1103_p1;
        end else if ((1'b1 == ap_condition_1093)) begin
            M_1_address1_local = zext_ln39_fu_1050_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_1_address1_local = zext_ln40_fu_965_p1;
        end else begin
            M_1_address1_local = 'bx;
        end
    end else begin
        M_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_1_ce0_local = 1'b1;
    end else begin
        M_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln28_reg_1317 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1429 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln28_reg_1317 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1429 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        M_1_ce1_local = 1'b1;
    end else begin
        M_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_1_d0_local = max_1_fu_1269_p3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_1_d0_local = max_reg_1583;
        end else begin
            M_1_d0_local = 'bx;
        end
    end else begin
        M_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_1_we0_local = 1'b1;
    end else begin
        M_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_2_address0_local = zext_ln45_1_fu_1279_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_2_address0_local = zext_ln45_fu_1214_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_2_address0_local = zext_ln41_fu_988_p1;
    end else begin
        M_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1084)) begin
            M_2_address1_local = zext_ln40_1_fu_1103_p1;
        end else if ((1'b1 == ap_condition_1088)) begin
            M_2_address1_local = zext_ln39_fu_1050_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_2_address1_local = zext_ln40_fu_965_p1;
        end else begin
            M_2_address1_local = 'bx;
        end
    end else begin
        M_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_2_ce0_local = 1'b1;
    end else begin
        M_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln28_reg_1317 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1429 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln28_reg_1317 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1429 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        M_2_ce1_local = 1'b1;
    end else begin
        M_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_2_d0_local = max_1_fu_1269_p3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_2_d0_local = max_reg_1583;
        end else begin
            M_2_d0_local = 'bx;
        end
    end else begin
        M_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_2_we0_local = 1'b1;
    end else begin
        M_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_3_address0_local = zext_ln45_1_fu_1279_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_3_address0_local = zext_ln45_fu_1214_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_3_address0_local = zext_ln41_fu_988_p1;
    end else begin
        M_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1093)) begin
            M_3_address1_local = zext_ln40_1_fu_1103_p1;
        end else if ((1'b1 == ap_condition_1097)) begin
            M_3_address1_local = zext_ln39_fu_1050_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_3_address1_local = zext_ln40_fu_965_p1;
        end else begin
            M_3_address1_local = 'bx;
        end
    end else begin
        M_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_3_ce0_local = 1'b1;
    end else begin
        M_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln28_reg_1317 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1429 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln28_reg_1317 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1429 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        M_3_ce1_local = 1'b1;
    end else begin
        M_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_3_d0_local = max_1_fu_1269_p3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_3_d0_local = max_reg_1583;
        end else begin
            M_3_d0_local = 'bx;
        end
    end else begin
        M_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_3_we0_local = 1'b1;
    end else begin
        M_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        SEQA_0_ce0_local = 1'b1;
    end else begin
        SEQA_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        SEQA_1_ce0_local = 1'b1;
    end else begin
        SEQA_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        SEQA_2_ce0_local = 1'b1;
    end else begin
        SEQA_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        SEQA_3_ce0_local = 1'b1;
    end else begin
        SEQA_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQB_0_ce0_local = 1'b1;
    end else begin
        SEQB_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQB_1_ce0_local = 1'b1;
    end else begin
        SEQB_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQB_2_ce0_local = 1'b1;
    end else begin
        SEQB_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQB_3_ce0_local = 1'b1;
    end else begin
        SEQB_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln28_reg_1317 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_a_idx_2_load = 8'd1;
    end else begin
        ap_sig_allocacmp_a_idx_2_load = a_idx_2_fu_110;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_b_idx_1_load = 8'd1;
    end else begin
        ap_sig_allocacmp_b_idx_1_load = b_idx_1_fu_114;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 14'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_118;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1132)) begin
            ptr_0_address0_local = ptr_0_addr_3_gep_fu_670_p3;
        end else if ((1'b1 == ap_condition_1127)) begin
            ptr_0_address0_local = ptr_0_addr_4_gep_fu_638_p3;
        end else if ((1'b1 == ap_condition_1121)) begin
            ptr_0_address0_local = zext_ln45_1_reg_1616;
        end else if ((1'b1 == ap_condition_1115)) begin
            ptr_0_address0_local = ptr_0_addr_1_gep_fu_532_p3;
        end else if ((1'b1 == ap_condition_1110)) begin
            ptr_0_address0_local = ptr_0_addr_gep_fu_496_p3;
        end else if ((1'b1 == ap_condition_1104)) begin
            ptr_0_address0_local = zext_ln45_fu_1214_p1;
        end else begin
            ptr_0_address0_local = 'bx;
        end
    end else begin
        ptr_0_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln46_1_reg_1632 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln48_1_reg_1636 == 1'd1) & (icmp_ln46_1_reg_1632 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln48_1_reg_1636 == 1'd0) & (icmp_ln46_1_reg_1632 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln46_fu_1233_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln48_fu_1237_p2 == 1'd1) & (icmp_ln46_fu_1233_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln48_fu_1237_p2== 1'd0) & (icmp_ln46_fu_1233_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_0_ce0_local = 1'b1;
    end else begin
        ptr_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (icmp_ln46_1_reg_1632 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (icmp_ln46_fu_1233_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_0_d0_local = 8'd60;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (icmp_ln48_1_reg_1636 == 1'd1) & (icmp_ln46_1_reg_1632 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (icmp_ln48_fu_1237_p2 == 1'd1) & (icmp_ln46_fu_1233_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_0_d0_local = 8'd94;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (icmp_ln48_1_reg_1636 == 1'd0) & (icmp_ln46_1_reg_1632 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (icmp_ln48_fu_1237_p2 == 1'd0) & (icmp_ln46_fu_1233_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_0_d0_local = 8'd92;
    end else begin
        ptr_0_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln46_1_reg_1632 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln48_1_reg_1636 == 1'd1) & (icmp_ln46_1_reg_1632 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln48_1_reg_1636 == 1'd0) & (icmp_ln46_1_reg_1632 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln46_fu_1233_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln48_fu_1237_p2 == 1'd1) & (icmp_ln46_fu_1233_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln48_fu_1237_p2== 1'd0) & (icmp_ln46_fu_1233_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_0_we0_local = 1'b1;
    end else begin
        ptr_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1156)) begin
            ptr_1_address0_local = ptr_1_addr_3_gep_fu_654_p3;
        end else if ((1'b1 == ap_condition_1152)) begin
            ptr_1_address0_local = ptr_1_addr_4_gep_fu_622_p3;
        end else if ((1'b1 == ap_condition_1148)) begin
            ptr_1_address0_local = zext_ln45_1_reg_1616;
        end else if ((1'b1 == ap_condition_1144)) begin
            ptr_1_address0_local = ptr_1_addr_1_gep_fu_523_p3;
        end else if ((1'b1 == ap_condition_1140)) begin
            ptr_1_address0_local = ptr_1_addr_gep_fu_487_p3;
        end else if ((1'b1 == ap_condition_1136)) begin
            ptr_1_address0_local = zext_ln45_fu_1214_p1;
        end else begin
            ptr_1_address0_local = 'bx;
        end
    end else begin
        ptr_1_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln46_1_reg_1632 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln48_1_reg_1636 == 1'd1) & (icmp_ln46_1_reg_1632 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln48_1_reg_1636 == 1'd0) & (icmp_ln46_1_reg_1632 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln46_fu_1233_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln48_fu_1237_p2 == 1'd1) & (icmp_ln46_fu_1233_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln48_fu_1237_p2== 1'd0) & (icmp_ln46_fu_1233_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_1_ce0_local = 1'b1;
    end else begin
        ptr_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (icmp_ln46_1_reg_1632 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (icmp_ln46_fu_1233_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_1_d0_local = 8'd60;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (icmp_ln48_1_reg_1636 == 1'd1) & (icmp_ln46_1_reg_1632 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (icmp_ln48_fu_1237_p2 == 1'd1) & (icmp_ln46_fu_1233_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_1_d0_local = 8'd94;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (icmp_ln48_1_reg_1636 == 1'd0) & (icmp_ln46_1_reg_1632 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (icmp_ln48_fu_1237_p2 == 1'd0) & (icmp_ln46_fu_1233_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_1_d0_local = 8'd92;
    end else begin
        ptr_1_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln46_1_reg_1632 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln48_1_reg_1636 == 1'd1) & (icmp_ln46_1_reg_1632 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln48_1_reg_1636 == 1'd0) & (icmp_ln46_1_reg_1632 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln46_fu_1233_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln48_fu_1237_p2 == 1'd1) & (icmp_ln46_fu_1233_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln48_fu_1237_p2== 1'd0) & (icmp_ln46_fu_1233_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_1_we0_local = 1'b1;
    end else begin
        ptr_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1180)) begin
            ptr_2_address0_local = ptr_2_addr_3_gep_fu_646_p3;
        end else if ((1'b1 == ap_condition_1176)) begin
            ptr_2_address0_local = ptr_2_addr_4_gep_fu_614_p3;
        end else if ((1'b1 == ap_condition_1172)) begin
            ptr_2_address0_local = zext_ln45_1_reg_1616;
        end else if ((1'b1 == ap_condition_1168)) begin
            ptr_2_address0_local = ptr_2_addr_1_gep_fu_514_p3;
        end else if ((1'b1 == ap_condition_1164)) begin
            ptr_2_address0_local = ptr_2_addr_gep_fu_478_p3;
        end else if ((1'b1 == ap_condition_1160)) begin
            ptr_2_address0_local = zext_ln45_fu_1214_p1;
        end else begin
            ptr_2_address0_local = 'bx;
        end
    end else begin
        ptr_2_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln46_1_reg_1632 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln48_1_reg_1636 == 1'd1) & (icmp_ln46_1_reg_1632 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln48_1_reg_1636 == 1'd0) & (icmp_ln46_1_reg_1632 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln46_fu_1233_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln48_fu_1237_p2 == 1'd1) & (icmp_ln46_fu_1233_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln48_fu_1237_p2== 1'd0) & (icmp_ln46_fu_1233_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_2_ce0_local = 1'b1;
    end else begin
        ptr_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (icmp_ln46_1_reg_1632 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (icmp_ln46_fu_1233_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_2_d0_local = 8'd60;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (icmp_ln48_1_reg_1636 == 1'd1) & (icmp_ln46_1_reg_1632 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (icmp_ln48_fu_1237_p2 == 1'd1) & (icmp_ln46_fu_1233_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_2_d0_local = 8'd94;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (icmp_ln48_1_reg_1636 == 1'd0) & (icmp_ln46_1_reg_1632 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (icmp_ln48_fu_1237_p2 == 1'd0) & (icmp_ln46_fu_1233_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_2_d0_local = 8'd92;
    end else begin
        ptr_2_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln46_1_reg_1632 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln48_1_reg_1636 == 1'd1) & (icmp_ln46_1_reg_1632 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln48_1_reg_1636 == 1'd0) & (icmp_ln46_1_reg_1632 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln46_fu_1233_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln48_fu_1237_p2 == 1'd1) & (icmp_ln46_fu_1233_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln48_fu_1237_p2== 1'd0) & (icmp_ln46_fu_1233_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_2_we0_local = 1'b1;
    end else begin
        ptr_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1204)) begin
            ptr_3_address0_local = ptr_3_addr_3_gep_fu_662_p3;
        end else if ((1'b1 == ap_condition_1200)) begin
            ptr_3_address0_local = ptr_3_addr_4_gep_fu_630_p3;
        end else if ((1'b1 == ap_condition_1196)) begin
            ptr_3_address0_local = zext_ln45_1_reg_1616;
        end else if ((1'b1 == ap_condition_1192)) begin
            ptr_3_address0_local = ptr_3_addr_1_gep_fu_541_p3;
        end else if ((1'b1 == ap_condition_1188)) begin
            ptr_3_address0_local = ptr_3_addr_gep_fu_505_p3;
        end else if ((1'b1 == ap_condition_1184)) begin
            ptr_3_address0_local = zext_ln45_fu_1214_p1;
        end else begin
            ptr_3_address0_local = 'bx;
        end
    end else begin
        ptr_3_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln46_1_reg_1632 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln48_1_reg_1636 == 1'd1) & (icmp_ln46_1_reg_1632 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln48_1_reg_1636 == 1'd0) & (icmp_ln46_1_reg_1632 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln46_fu_1233_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln48_fu_1237_p2 == 1'd1) & (icmp_ln46_fu_1233_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln48_fu_1237_p2== 1'd0) & (icmp_ln46_fu_1233_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_3_ce0_local = 1'b1;
    end else begin
        ptr_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (icmp_ln46_1_reg_1632 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (icmp_ln46_fu_1233_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_3_d0_local = 8'd60;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (icmp_ln48_1_reg_1636 == 1'd1) & (icmp_ln46_1_reg_1632 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (icmp_ln48_fu_1237_p2 == 1'd1) & (icmp_ln46_fu_1233_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_3_d0_local = 8'd94;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (icmp_ln48_1_reg_1636 == 1'd0) & (icmp_ln46_1_reg_1632 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (icmp_ln48_fu_1237_p2 == 1'd0) & (icmp_ln46_fu_1233_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_3_d0_local = 8'd92;
    end else begin
        ptr_3_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln46_1_reg_1632 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln48_1_reg_1636 == 1'd1) & (icmp_ln46_1_reg_1632 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln48_1_reg_1636 == 1'd0) & (icmp_ln46_1_reg_1632 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln46_fu_1233_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln48_fu_1237_p2 == 1'd1) & (icmp_ln46_fu_1233_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln48_fu_1237_p2== 1'd0) & (icmp_ln46_fu_1233_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1429 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_3_we0_local = 1'b1;
    end else begin
        ptr_3_we0_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign M_0_address0 = M_0_address0_local;
assign M_0_address1 = M_0_address1_local;
assign M_0_ce0 = M_0_ce0_local;
assign M_0_ce1 = M_0_ce1_local;
assign M_0_d0 = M_0_d0_local;
assign M_0_we0 = M_0_we0_local;
assign M_1_address0 = M_1_address0_local;
assign M_1_address1 = M_1_address1_local;
assign M_1_ce0 = M_1_ce0_local;
assign M_1_ce1 = M_1_ce1_local;
assign M_1_d0 = M_1_d0_local;
assign M_1_we0 = M_1_we0_local;
assign M_2_address0 = M_2_address0_local;
assign M_2_address1 = M_2_address1_local;
assign M_2_ce0 = M_2_ce0_local;
assign M_2_ce1 = M_2_ce1_local;
assign M_2_d0 = M_2_d0_local;
assign M_2_we0 = M_2_we0_local;
assign M_3_address0 = M_3_address0_local;
assign M_3_address1 = M_3_address1_local;
assign M_3_ce0 = M_3_ce0_local;
assign M_3_ce1 = M_3_ce1_local;
assign M_3_d0 = M_3_d0_local;
assign M_3_we0 = M_3_we0_local;
assign SEQA_0_address0 = zext_ln30_1_fu_784_p1;
assign SEQA_0_ce0 = SEQA_0_ce0_local;
assign SEQA_1_address0 = zext_ln30_1_fu_784_p1;
assign SEQA_1_ce0 = SEQA_1_ce0_local;
assign SEQA_2_address0 = zext_ln30_1_fu_784_p1;
assign SEQA_2_ce0 = SEQA_2_ce0_local;
assign SEQA_3_address0 = zext_ln30_1_fu_784_p1;
assign SEQA_3_ce0 = SEQA_3_ce0_local;
assign SEQB_0_address0 = p_cast14_fu_805_p1;
assign SEQB_0_ce0 = SEQB_0_ce0_local;
assign SEQB_1_address0 = p_cast14_fu_805_p1;
assign SEQB_1_ce0 = SEQB_1_ce0_local;
assign SEQB_2_address0 = p_cast14_fu_805_p1;
assign SEQB_2_ce0 = SEQB_2_ce0_local;
assign SEQB_3_address0 = p_cast14_fu_805_p1;
assign SEQB_3_ce0 = SEQB_3_ce0_local;
assign add_ln28_1_fu_728_p2 = (ap_sig_allocacmp_b_idx_1_load + 8'd1);
assign add_ln28_fu_702_p2 = (ap_sig_allocacmp_indvar_flatten_load + 14'd1);
assign add_ln29_1_fu_882_p2 = (select_ln17_reg_1321 + 8'd2);
assign add_ln29_fu_1006_p2 = (select_ln17_reg_1321 + 8'd1);
assign add_ln30_fu_831_p2 = ($signed(trunc_ln29_reg_1344) + $signed(7'd127));
assign add_ln39_1_fu_935_p2 = (zext_ln30_fu_918_p1 + empty_19_reg_1402);
assign add_ln39_fu_926_p2 = (zext_ln29_fu_915_p1 + empty_18_reg_1395);
assign add_ln40_2_fu_1020_p2 = (zext_ln30_2_fu_1011_p1 + empty_19_reg_1402);
assign add_ln40_fu_950_p2 = (zext_ln29_fu_915_p1 + empty_19_reg_1402);
assign add_ln41_fu_973_p2 = (zext_ln30_fu_918_p1 + empty_18_reg_1395);
assign add_ln45_fu_1035_p2 = (zext_ln30_2_fu_1011_p1 + empty_18_reg_1395);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
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
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1084 = ((icmp_ln28_reg_1317 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (trunc_ln39_reg_1429 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1088 = ((icmp_ln28_reg_1317 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (trunc_ln39_reg_1429 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1093 = ((icmp_ln28_reg_1317 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (trunc_ln39_reg_1429 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1097 = ((icmp_ln28_reg_1317 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (trunc_ln39_reg_1429 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1104 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln48_fu_1237_p2 == 1'd0) & (icmp_ln46_fu_1233_p2 == 1'd0) & (trunc_ln39_reg_1429 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1110 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln48_fu_1237_p2 == 1'd1) & (icmp_ln46_fu_1233_p2 == 1'd0) & (trunc_ln39_reg_1429 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1115 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln46_fu_1233_p2 == 1'd1) & (trunc_ln39_reg_1429 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1121 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln48_1_reg_1636 == 1'd0) & (icmp_ln46_1_reg_1632 == 1'd0) & (trunc_ln39_reg_1429 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1127 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln48_1_reg_1636 == 1'd1) & (icmp_ln46_1_reg_1632 == 1'd0) & (trunc_ln39_reg_1429 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1132 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln46_1_reg_1632 == 1'd1) & (trunc_ln39_reg_1429 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1136 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln48_fu_1237_p2 == 1'd0) & (icmp_ln46_fu_1233_p2 == 1'd0) & (trunc_ln39_reg_1429 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1140 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln48_fu_1237_p2 == 1'd1) & (icmp_ln46_fu_1233_p2 == 1'd0) & (trunc_ln39_reg_1429 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1144 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln46_fu_1233_p2 == 1'd1) & (trunc_ln39_reg_1429 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1148 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln48_1_reg_1636 == 1'd0) & (icmp_ln46_1_reg_1632 == 1'd0) & (trunc_ln39_reg_1429 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1152 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln48_1_reg_1636 == 1'd1) & (icmp_ln46_1_reg_1632 == 1'd0) & (trunc_ln39_reg_1429 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1156 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln46_1_reg_1632 == 1'd1) & (trunc_ln39_reg_1429 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1160 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln48_fu_1237_p2 == 1'd0) & (icmp_ln46_fu_1233_p2 == 1'd0) & (trunc_ln39_reg_1429 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1164 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln48_fu_1237_p2 == 1'd1) & (icmp_ln46_fu_1233_p2 == 1'd0) & (trunc_ln39_reg_1429 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1168 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln46_fu_1233_p2 == 1'd1) & (trunc_ln39_reg_1429 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1172 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln48_1_reg_1636 == 1'd0) & (icmp_ln46_1_reg_1632 == 1'd0) & (trunc_ln39_reg_1429 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1176 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln48_1_reg_1636 == 1'd1) & (icmp_ln46_1_reg_1632 == 1'd0) & (trunc_ln39_reg_1429 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1180 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln46_1_reg_1632 == 1'd1) & (trunc_ln39_reg_1429 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1184 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln48_fu_1237_p2 == 1'd0) & (icmp_ln46_fu_1233_p2 == 1'd0) & (trunc_ln39_reg_1429 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1188 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln48_fu_1237_p2 == 1'd1) & (icmp_ln46_fu_1233_p2 == 1'd0) & (trunc_ln39_reg_1429 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1192 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln46_fu_1233_p2 == 1'd1) & (trunc_ln39_reg_1429 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1196 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln48_1_reg_1636 == 1'd0) & (icmp_ln46_1_reg_1632 == 1'd0) & (trunc_ln39_reg_1429 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1200 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln48_1_reg_1636 == 1'd1) & (icmp_ln46_1_reg_1632 == 1'd0) & (trunc_ln39_reg_1429 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1204 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln46_1_reg_1632 == 1'd1) & (trunc_ln39_reg_1429 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign b_idx_1_cast4_fu_802_p1 = select_ln28_reg_1328;
assign empty_18_fu_819_p2 = (p_shl_fu_812_p3 + b_idx_1_cast4_fu_802_p1);
assign empty_19_fu_825_p2 = ($signed(empty_18_fu_819_p2) + $signed(15'd32639));
assign empty_fu_750_p2 = ($signed(trunc_ln28_1_fu_746_p1) + $signed(7'd127));
assign icmp_ln28_fu_696_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 14'd8192) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_714_p2 = ((ap_sig_allocacmp_a_idx_2_load < 8'd129) ? 1'b1 : 1'b0);
assign icmp_ln30_1_fu_1015_p2 = ((tmp_9_reg_1419 == tmp_fu_892_p11) ? 1'b1 : 1'b0);
assign icmp_ln30_fu_921_p2 = ((tmp_2_reg_1414 == tmp_fu_892_p11) ? 1'b1 : 1'b0);
assign icmp_ln43_1_fu_1200_p2 = (($signed(up_left_fu_1185_p2) > $signed(select_ln43_fu_1194_p3)) ? 1'b1 : 1'b0);
assign icmp_ln43_2_fu_1251_p2 = (($signed(up_1_fu_1241_p2) > $signed(left_1_fu_1246_p2)) ? 1'b1 : 1'b0);
assign icmp_ln43_3_fu_1265_p2 = (($signed(up_left_1_reg_1572) > $signed(select_ln43_2_reg_1610)) ? 1'b1 : 1'b0);
assign icmp_ln43_fu_1190_p2 = (($signed(up_reg_1558) > $signed(left_reg_1565)) ? 1'b1 : 1'b0);
assign icmp_ln46_1_fu_1286_p2 = ((max_1_fu_1269_p3 == left_1_reg_1605) ? 1'b1 : 1'b0);
assign icmp_ln46_fu_1233_p2 = ((max_reg_1583 == left_reg_1565) ? 1'b1 : 1'b0);
assign icmp_ln48_1_fu_1291_p2 = ((max_1_fu_1269_p3 == up_1_reg_1600) ? 1'b1 : 1'b0);
assign icmp_ln48_fu_1237_p2 = ((max_reg_1583 == up_reg_1558) ? 1'b1 : 1'b0);
assign left_1_fu_1246_p2 = ($signed(max_reg_1583) + $signed(32'd4294967295));
assign left_fu_1138_p2 = ($signed(tmp_5_reg_1528) + $signed(32'd4294967295));
assign lshr_ln2_fu_774_p4 = {{select_ln17_fu_720_p3[6:2]}};
assign lshr_ln4_fu_955_p4 = {{add_ln40_fu_950_p2[14:2]}};
assign lshr_ln5_fu_978_p4 = {{add_ln41_fu_973_p2[14:2]}};
assign max_1_fu_1269_p3 = ((icmp_ln43_3_fu_1265_p2[0:0] == 1'b1) ? up_left_1_reg_1572 : select_ln43_2_reg_1610);
assign max_fu_1206_p3 = ((icmp_ln43_1_fu_1200_p2[0:0] == 1'b1) ? up_left_fu_1185_p2 : select_ln43_fu_1194_p3);
assign p_cast14_fu_805_p1 = tmp_s_reg_1339;
assign p_shl_fu_812_p3 = {{select_ln28_reg_1328}, {7'd0}};
assign ptr_0_addr_1_gep_fu_532_p3 = zext_ln45_fu_1214_p1;
assign ptr_0_addr_3_gep_fu_670_p3 = zext_ln45_1_reg_1616;
assign ptr_0_addr_4_gep_fu_638_p3 = zext_ln45_1_reg_1616;
assign ptr_0_addr_gep_fu_496_p3 = zext_ln45_fu_1214_p1;
assign ptr_0_address0 = ptr_0_address0_local;
assign ptr_0_ce0 = ptr_0_ce0_local;
assign ptr_0_d0 = ptr_0_d0_local;
assign ptr_0_we0 = ptr_0_we0_local;
assign ptr_1_addr_1_gep_fu_523_p3 = zext_ln45_fu_1214_p1;
assign ptr_1_addr_3_gep_fu_654_p3 = zext_ln45_1_reg_1616;
assign ptr_1_addr_4_gep_fu_622_p3 = zext_ln45_1_reg_1616;
assign ptr_1_addr_gep_fu_487_p3 = zext_ln45_fu_1214_p1;
assign ptr_1_address0 = ptr_1_address0_local;
assign ptr_1_ce0 = ptr_1_ce0_local;
assign ptr_1_d0 = ptr_1_d0_local;
assign ptr_1_we0 = ptr_1_we0_local;
assign ptr_2_addr_1_gep_fu_514_p3 = zext_ln45_fu_1214_p1;
assign ptr_2_addr_3_gep_fu_646_p3 = zext_ln45_1_reg_1616;
assign ptr_2_addr_4_gep_fu_614_p3 = zext_ln45_1_reg_1616;
assign ptr_2_addr_gep_fu_478_p3 = zext_ln45_fu_1214_p1;
assign ptr_2_address0 = ptr_2_address0_local;
assign ptr_2_ce0 = ptr_2_ce0_local;
assign ptr_2_d0 = ptr_2_d0_local;
assign ptr_2_we0 = ptr_2_we0_local;
assign ptr_3_addr_1_gep_fu_541_p3 = zext_ln45_fu_1214_p1;
assign ptr_3_addr_3_gep_fu_662_p3 = zext_ln45_1_reg_1616;
assign ptr_3_addr_4_gep_fu_630_p3 = zext_ln45_1_reg_1616;
assign ptr_3_addr_gep_fu_505_p3 = zext_ln45_fu_1214_p1;
assign ptr_3_address0 = ptr_3_address0_local;
assign ptr_3_ce0 = ptr_3_ce0_local;
assign ptr_3_d0 = ptr_3_d0_local;
assign ptr_3_we0 = ptr_3_we0_local;
assign select_ln17_fu_720_p3 = ((icmp_ln29_fu_714_p2[0:0] == 1'b1) ? ap_sig_allocacmp_a_idx_2_load : 8'd1);
assign select_ln28_fu_734_p3 = ((icmp_ln29_fu_714_p2[0:0] == 1'b1) ? ap_sig_allocacmp_b_idx_1_load : add_ln28_1_fu_728_p2);
assign select_ln39_1_fu_1143_p3 = ((icmp_ln30_1_reg_1487[0:0] == 1'b1) ? 32'd1 : 32'd4294967295);
assign select_ln39_fu_1178_p3 = ((icmp_ln30_reg_1424[0:0] == 1'b1) ? 32'd1 : 32'd4294967295);
assign select_ln43_2_fu_1257_p3 = ((icmp_ln43_2_fu_1251_p2[0:0] == 1'b1) ? up_1_fu_1241_p2 : left_1_fu_1246_p2);
assign select_ln43_fu_1194_p3 = ((icmp_ln43_fu_1190_p2[0:0] == 1'b1) ? up_reg_1558 : left_reg_1565);
assign tmp_10_fu_1155_p9 = 'bx;
assign tmp_2_fu_836_p9 = 'bx;
assign tmp_3_fu_1110_p9 = 'bx;
assign tmp_4_fu_1057_p9 = 'bx;
assign tmp_5_fu_1080_p9 = 'bx;
assign tmp_9_fu_859_p9 = 'bx;
assign tmp_fu_892_p9 = 'bx;
assign trunc_ln28_1_fu_746_p1 = select_ln28_fu_734_p3[6:0];
assign trunc_ln28_fu_742_p1 = select_ln28_fu_734_p3[1:0];
assign trunc_ln29_1_fu_770_p1 = select_ln17_fu_720_p3[1:0];
assign trunc_ln29_fu_766_p1 = select_ln17_fu_720_p3[6:0];
assign trunc_ln39_fu_931_p1 = add_ln39_fu_926_p2[1:0];
assign up_1_fu_1241_p2 = ($signed(tmp_10_reg_1578) + $signed(32'd4294967295));
assign up_fu_1133_p2 = ($signed(tmp_4_reg_1522) + $signed(32'd4294967295));
assign up_left_1_fu_1150_p2 = (select_ln39_1_fu_1143_p3 + tmp_4_reg_1522);
assign up_left_fu_1185_p2 = (tmp_3_reg_1553 + select_ln39_fu_1178_p3);
assign zext_ln29_fu_915_p1 = select_ln17_reg_1321;
assign zext_ln30_1_fu_784_p1 = lshr_ln2_fu_774_p4;
assign zext_ln30_2_fu_1011_p1 = add_ln29_fu_1006_p2;
assign zext_ln30_fu_918_p1 = add_ln30_reg_1409;
assign zext_ln39_fu_1050_p1 = lshr_ln3_reg_1437;
assign zext_ln40_1_fu_1103_p1 = lshr_ln40_1_reg_1492;
assign zext_ln40_fu_965_p1 = lshr_ln4_fu_955_p4;
assign zext_ln41_fu_988_p1 = lshr_ln5_fu_978_p4;
assign zext_ln45_1_fu_1279_p1 = lshr_ln45_1_reg_1497;
assign zext_ln45_fu_1214_p1 = lshr_ln6_reg_1482;
always @ (posedge ap_clk) begin
    zext_ln45_1_reg_1616[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
end
endmodule 