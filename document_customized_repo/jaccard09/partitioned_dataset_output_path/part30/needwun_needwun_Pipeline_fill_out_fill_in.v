
module needwun_needwun_Pipeline_fill_out_fill_in (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,ptr_0_address0,ptr_0_ce0,ptr_0_we0,ptr_0_d0,M_0_address0,M_0_ce0,M_0_we0,M_0_d0,M_0_q0,M_0_address1,M_0_ce1,M_0_q1,SEQB_0_address0,SEQB_0_ce0,SEQB_0_q0,SEQB_1_address0,SEQB_1_ce0,SEQB_1_q0,SEQB_2_address0,SEQB_2_ce0,SEQB_2_q0,SEQB_3_address0,SEQB_3_ce0,SEQB_3_q0,SEQB_4_address0,SEQB_4_ce0,SEQB_4_q0,SEQB_5_address0,SEQB_5_ce0,SEQB_5_q0,SEQB_6_address0,SEQB_6_ce0,SEQB_6_q0,SEQB_7_address0,SEQB_7_ce0,SEQB_7_q0,ptr_7_address0,ptr_7_ce0,ptr_7_we0,ptr_7_d0,ptr_6_address0,ptr_6_ce0,ptr_6_we0,ptr_6_d0,ptr_5_address0,ptr_5_ce0,ptr_5_we0,ptr_5_d0,ptr_4_address0,ptr_4_ce0,ptr_4_we0,ptr_4_d0,ptr_3_address0,ptr_3_ce0,ptr_3_we0,ptr_3_d0,ptr_2_address0,ptr_2_ce0,ptr_2_we0,ptr_2_d0,ptr_1_address0,ptr_1_ce0,ptr_1_we0,ptr_1_d0,M_7_address0,M_7_ce0,M_7_we0,M_7_d0,M_7_q0,M_7_address1,M_7_ce1,M_7_q1,M_6_address0,M_6_ce0,M_6_we0,M_6_d0,M_6_q0,M_6_address1,M_6_ce1,M_6_q1,M_5_address0,M_5_ce0,M_5_we0,M_5_d0,M_5_q0,M_5_address1,M_5_ce1,M_5_q1,M_4_address0,M_4_ce0,M_4_we0,M_4_d0,M_4_q0,M_4_address1,M_4_ce1,M_4_q1,M_3_address0,M_3_ce0,M_3_we0,M_3_d0,M_3_q0,M_3_address1,M_3_ce1,M_3_q1,M_2_address0,M_2_ce0,M_2_we0,M_2_d0,M_2_q0,M_2_address1,M_2_ce1,M_2_q1,M_1_address0,M_1_ce0,M_1_we0,M_1_d0,M_1_q0,M_1_address1,M_1_ce1,M_1_q1,SEQA_0_address0,SEQA_0_ce0,SEQA_0_q0,SEQA_1_address0,SEQA_1_ce0,SEQA_1_q0,SEQA_2_address0,SEQA_2_ce0,SEQA_2_q0,SEQA_3_address0,SEQA_3_ce0,SEQA_3_q0,SEQA_4_address0,SEQA_4_ce0,SEQA_4_q0,SEQA_5_address0,SEQA_5_ce0,SEQA_5_q0,SEQA_6_address0,SEQA_6_ce0,SEQA_6_q0,SEQA_7_address0,SEQA_7_ce0,SEQA_7_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] ptr_0_address0;
output   ptr_0_ce0;
output   ptr_0_we0;
output  [7:0] ptr_0_d0;
output  [11:0] M_0_address0;
output   M_0_ce0;
output   M_0_we0;
output  [31:0] M_0_d0;
input  [31:0] M_0_q0;
output  [11:0] M_0_address1;
output   M_0_ce1;
input  [31:0] M_0_q1;
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
output  [11:0] ptr_7_address0;
output   ptr_7_ce0;
output   ptr_7_we0;
output  [7:0] ptr_7_d0;
output  [11:0] ptr_6_address0;
output   ptr_6_ce0;
output   ptr_6_we0;
output  [7:0] ptr_6_d0;
output  [11:0] ptr_5_address0;
output   ptr_5_ce0;
output   ptr_5_we0;
output  [7:0] ptr_5_d0;
output  [11:0] ptr_4_address0;
output   ptr_4_ce0;
output   ptr_4_we0;
output  [7:0] ptr_4_d0;
output  [11:0] ptr_3_address0;
output   ptr_3_ce0;
output   ptr_3_we0;
output  [7:0] ptr_3_d0;
output  [11:0] ptr_2_address0;
output   ptr_2_ce0;
output   ptr_2_we0;
output  [7:0] ptr_2_d0;
output  [11:0] ptr_1_address0;
output   ptr_1_ce0;
output   ptr_1_we0;
output  [7:0] ptr_1_d0;
output  [11:0] M_7_address0;
output   M_7_ce0;
output   M_7_we0;
output  [31:0] M_7_d0;
input  [31:0] M_7_q0;
output  [11:0] M_7_address1;
output   M_7_ce1;
input  [31:0] M_7_q1;
output  [11:0] M_6_address0;
output   M_6_ce0;
output   M_6_we0;
output  [31:0] M_6_d0;
input  [31:0] M_6_q0;
output  [11:0] M_6_address1;
output   M_6_ce1;
input  [31:0] M_6_q1;
output  [11:0] M_5_address0;
output   M_5_ce0;
output   M_5_we0;
output  [31:0] M_5_d0;
input  [31:0] M_5_q0;
output  [11:0] M_5_address1;
output   M_5_ce1;
input  [31:0] M_5_q1;
output  [11:0] M_4_address0;
output   M_4_ce0;
output   M_4_we0;
output  [31:0] M_4_d0;
input  [31:0] M_4_q0;
output  [11:0] M_4_address1;
output   M_4_ce1;
input  [31:0] M_4_q1;
output  [11:0] M_3_address0;
output   M_3_ce0;
output   M_3_we0;
output  [31:0] M_3_d0;
input  [31:0] M_3_q0;
output  [11:0] M_3_address1;
output   M_3_ce1;
input  [31:0] M_3_q1;
output  [11:0] M_2_address0;
output   M_2_ce0;
output   M_2_we0;
output  [31:0] M_2_d0;
input  [31:0] M_2_q0;
output  [11:0] M_2_address1;
output   M_2_ce1;
input  [31:0] M_2_q1;
output  [11:0] M_1_address0;
output   M_1_ce0;
output   M_1_we0;
output  [31:0] M_1_d0;
input  [31:0] M_1_q0;
output  [11:0] M_1_address1;
output   M_1_ce1;
input  [31:0] M_1_q1;
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
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] icmp_ln28_reg_1532;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
wire   [0:0] icmp_ln28_fu_972_p2;
wire    ap_block_pp0_stage0_11001;
reg   [7:0] a_idx_2_load_reg_1536;
wire   [0:0] icmp_ln29_fu_990_p2;
reg   [0:0] icmp_ln29_reg_1541;
wire   [7:0] select_ln28_fu_1002_p3;
reg   [7:0] select_ln28_reg_1546;
wire   [2:0] trunc_ln28_fu_1010_p1;
reg   [2:0] trunc_ln28_reg_1552;
reg   [3:0] tmp_s_reg_1557;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [2:0] trunc_ln29_fu_1087_p1;
reg   [2:0] trunc_ln29_reg_1602;
wire   [2:0] trunc_ln39_fu_1129_p1;
reg   [2:0] trunc_ln39_reg_1647;
reg   [2:0] trunc_ln39_reg_1647_pp0_iter1_reg;
reg   [11:0] lshr_ln3_reg_1654;
reg   [11:0] lshr_ln4_reg_1659;
reg   [11:0] lshr_ln5_reg_1664;
reg   [11:0] lshr_ln6_reg_1669;
wire   [0:0] icmp_ln30_fu_1280_p2;
reg   [0:0] icmp_ln30_reg_1674;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] tmp_3_fu_1319_p19;
reg   [31:0] tmp_3_reg_1799;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] tmp_4_fu_1358_p19;
reg   [31:0] tmp_4_reg_1804;
wire   [31:0] tmp_5_fu_1397_p19;
reg   [31:0] tmp_5_reg_1809;
wire   [31:0] up_left_fu_1443_p2;
reg   [31:0] up_left_reg_1814;
wire   [31:0] up_fu_1448_p2;
reg   [31:0] up_reg_1820;
wire   [31:0] left_fu_1453_p2;
reg   [31:0] left_reg_1825;
wire   [31:0] select_ln43_fu_1464_p3;
reg   [31:0] select_ln43_reg_1830;
wire   [63:0] zext_ln45_fu_1490_p1;
reg   [63:0] zext_ln45_reg_1836;
wire   [0:0] icmp_ln46_fu_1501_p2;
reg   [0:0] icmp_ln46_reg_1864;
wire   [0:0] icmp_ln48_fu_1506_p2;
reg   [0:0] icmp_ln48_reg_1868;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] p_cast20_fu_1053_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln30_1_fu_1111_p1;
wire   [63:0] zext_ln39_fu_1286_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln40_fu_1297_p1;
wire   [63:0] zext_ln41_fu_1308_p1;
wire   [11:0] ptr_6_addr_3_gep_fu_810_p3;
wire   [11:0] ptr_5_addr_3_gep_fu_819_p3;
wire   [11:0] ptr_4_addr_3_gep_fu_828_p3;
wire   [11:0] ptr_3_addr_3_gep_fu_837_p3;
wire   [11:0] ptr_2_addr_3_gep_fu_846_p3;
wire   [11:0] ptr_1_addr_3_gep_fu_855_p3;
wire   [11:0] ptr_0_addr_3_gep_fu_864_p3;
wire   [11:0] ptr_7_addr_3_gep_fu_873_p3;
wire   [11:0] ptr_6_addr_1_gep_fu_882_p3;
wire   [11:0] ptr_5_addr_1_gep_fu_891_p3;
wire   [11:0] ptr_4_addr_1_gep_fu_900_p3;
wire   [11:0] ptr_3_addr_1_gep_fu_909_p3;
wire   [11:0] ptr_2_addr_1_gep_fu_918_p3;
wire   [11:0] ptr_1_addr_1_gep_fu_927_p3;
wire   [11:0] ptr_0_addr_1_gep_fu_936_p3;
wire   [11:0] ptr_7_addr_1_gep_fu_945_p3;
reg   [7:0] a_idx_2_fu_150;
wire   [7:0] add_ln29_fu_1191_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_a_idx_2_load;
wire    ap_block_pp0_stage0;
reg   [7:0] b_idx_1_fu_154;
reg   [7:0] ap_sig_allocacmp_b_idx_1_load;
reg   [14:0] indvar_flatten_fu_158;
wire   [14:0] add_ln28_fu_978_p2;
reg   [14:0] ap_sig_allocacmp_indvar_flatten_load;
reg    SEQB_0_ce0_local;
reg    SEQB_1_ce0_local;
reg    SEQB_2_ce0_local;
reg    SEQB_3_ce0_local;
reg    SEQB_4_ce0_local;
reg    SEQB_5_ce0_local;
reg    SEQB_6_ce0_local;
reg    SEQB_7_ce0_local;
reg    SEQA_0_ce0_local;
reg    SEQA_1_ce0_local;
reg    SEQA_2_ce0_local;
reg    SEQA_3_ce0_local;
reg    SEQA_4_ce0_local;
reg    SEQA_5_ce0_local;
reg    SEQA_6_ce0_local;
reg    SEQA_7_ce0_local;
reg    M_0_ce0_local;
reg   [11:0] M_0_address0_local;
reg    M_0_ce1_local;
reg    M_0_we0_local;
wire   [31:0] max_fu_1476_p3;
reg    M_1_ce0_local;
reg   [11:0] M_1_address0_local;
reg    M_1_ce1_local;
reg    M_1_we0_local;
reg    M_2_ce0_local;
reg   [11:0] M_2_address0_local;
reg    M_2_ce1_local;
reg    M_2_we0_local;
reg    M_3_ce0_local;
reg   [11:0] M_3_address0_local;
reg    M_3_ce1_local;
reg    M_3_we0_local;
reg    M_4_ce0_local;
reg   [11:0] M_4_address0_local;
reg    M_4_ce1_local;
reg    M_4_we0_local;
reg    M_5_ce0_local;
reg   [11:0] M_5_address0_local;
reg    M_5_ce1_local;
reg    M_5_we0_local;
reg    M_6_ce0_local;
reg   [11:0] M_6_address0_local;
reg    M_6_ce1_local;
reg    M_6_we0_local;
reg    M_7_ce0_local;
reg   [11:0] M_7_address0_local;
reg    M_7_ce1_local;
reg    M_7_we0_local;
reg    ptr_6_we0_local;
reg   [7:0] ptr_6_d0_local;
reg    ptr_6_ce0_local;
reg   [11:0] ptr_6_address0_local;
reg    ptr_5_we0_local;
reg   [7:0] ptr_5_d0_local;
reg    ptr_5_ce0_local;
reg   [11:0] ptr_5_address0_local;
reg    ptr_4_we0_local;
reg   [7:0] ptr_4_d0_local;
reg    ptr_4_ce0_local;
reg   [11:0] ptr_4_address0_local;
reg    ptr_3_we0_local;
reg   [7:0] ptr_3_d0_local;
reg    ptr_3_ce0_local;
reg   [11:0] ptr_3_address0_local;
reg    ptr_2_we0_local;
reg   [7:0] ptr_2_d0_local;
reg    ptr_2_ce0_local;
reg   [11:0] ptr_2_address0_local;
reg    ptr_1_we0_local;
reg   [7:0] ptr_1_d0_local;
reg    ptr_1_ce0_local;
reg   [11:0] ptr_1_address0_local;
reg    ptr_0_we0_local;
reg   [7:0] ptr_0_d0_local;
reg    ptr_0_ce0_local;
reg   [11:0] ptr_0_address0_local;
reg    ptr_7_we0_local;
reg   [7:0] ptr_7_d0_local;
reg    ptr_7_ce0_local;
reg   [11:0] ptr_7_address0_local;
wire   [7:0] add_ln28_1_fu_996_p2;
wire   [6:0] trunc_ln28_1_fu_1014_p1;
wire   [6:0] empty_fu_1018_p2;
wire   [14:0] p_shl_fu_1064_p3;
wire   [14:0] b_idx_1_cast7_fu_1050_p1;
wire   [14:0] empty_20_fu_1071_p2;
wire   [7:0] select_ln17_fu_1044_p3;
wire   [7:0] add_ln30_fu_1091_p2;
wire   [3:0] lshr_ln2_fu_1101_p4;
wire   [14:0] zext_ln29_fu_1083_p1;
wire   [14:0] add_ln39_fu_1123_p2;
wire   [14:0] zext_ln30_fu_1097_p1;
wire   [14:0] empty_21_fu_1077_p2;
wire   [14:0] add_ln39_1_fu_1133_p2;
wire   [14:0] add_ln40_fu_1149_p2;
wire   [14:0] add_ln41_fu_1165_p2;
wire   [7:0] tmp_fu_1202_p17;
wire   [7:0] tmp_2_fu_1241_p17;
wire   [7:0] tmp_2_fu_1241_p19;
wire   [7:0] tmp_fu_1202_p19;
wire   [31:0] tmp_3_fu_1319_p17;
wire    ap_block_pp0_stage3;
wire   [31:0] tmp_4_fu_1358_p17;
wire   [31:0] tmp_5_fu_1397_p17;
wire   [31:0] select_ln39_fu_1436_p3;
wire   [0:0] icmp_ln43_fu_1458_p2;
wire   [0:0] icmp_ln43_1_fu_1472_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1215;
reg    ap_condition_1220;
reg    ap_condition_1223;
reg    ap_condition_1226;
reg    ap_condition_1229;
reg    ap_condition_1232;
reg    ap_condition_1235;
reg    ap_condition_1238;
wire   [2:0] tmp_fu_1202_p1;
wire   [2:0] tmp_fu_1202_p3;
wire   [2:0] tmp_fu_1202_p5;
wire  signed [2:0] tmp_fu_1202_p7;
wire  signed [2:0] tmp_fu_1202_p9;
wire  signed [2:0] tmp_fu_1202_p11;
wire  signed [2:0] tmp_fu_1202_p13;
wire   [2:0] tmp_fu_1202_p15;
wire   [2:0] tmp_2_fu_1241_p1;
wire   [2:0] tmp_2_fu_1241_p3;
wire   [2:0] tmp_2_fu_1241_p5;
wire  signed [2:0] tmp_2_fu_1241_p7;
wire  signed [2:0] tmp_2_fu_1241_p9;
wire  signed [2:0] tmp_2_fu_1241_p11;
wire  signed [2:0] tmp_2_fu_1241_p13;
wire   [2:0] tmp_2_fu_1241_p15;
wire   [2:0] tmp_3_fu_1319_p1;
wire   [2:0] tmp_3_fu_1319_p3;
wire  signed [2:0] tmp_3_fu_1319_p5;
wire  signed [2:0] tmp_3_fu_1319_p7;
wire  signed [2:0] tmp_3_fu_1319_p9;
wire  signed [2:0] tmp_3_fu_1319_p11;
wire   [2:0] tmp_3_fu_1319_p13;
wire   [2:0] tmp_3_fu_1319_p15;
wire   [2:0] tmp_4_fu_1358_p1;
wire   [2:0] tmp_4_fu_1358_p3;
wire   [2:0] tmp_4_fu_1358_p5;
wire  signed [2:0] tmp_4_fu_1358_p7;
wire  signed [2:0] tmp_4_fu_1358_p9;
wire  signed [2:0] tmp_4_fu_1358_p11;
wire  signed [2:0] tmp_4_fu_1358_p13;
wire   [2:0] tmp_4_fu_1358_p15;
wire   [2:0] tmp_5_fu_1397_p1;
wire   [2:0] tmp_5_fu_1397_p3;
wire   [2:0] tmp_5_fu_1397_p5;
wire  signed [2:0] tmp_5_fu_1397_p7;
wire  signed [2:0] tmp_5_fu_1397_p9;
wire  signed [2:0] tmp_5_fu_1397_p11;
wire  signed [2:0] tmp_5_fu_1397_p13;
wire   [2:0] tmp_5_fu_1397_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 a_idx_2_fu_150 = 8'd0;
#0 b_idx_1_fu_154 = 8'd0;
#0 indvar_flatten_fu_158 = 15'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_17_3_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 8 ),.CASE1( 3'h2 ),.din1_WIDTH( 8 ),.CASE2( 3'h3 ),.din2_WIDTH( 8 ),.CASE3( 3'h4 ),.din3_WIDTH( 8 ),.CASE4( 3'h5 ),.din4_WIDTH( 8 ),.CASE5( 3'h6 ),.din5_WIDTH( 8 ),.CASE6( 3'h7 ),.din6_WIDTH( 8 ),.CASE7( 3'h0 ),.din7_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 3 ),.dout_WIDTH( 8 ))
sparsemux_17_3_8_1_1_U17(.din0(SEQB_0_q0),.din1(SEQB_1_q0),.din2(SEQB_2_q0),.din3(SEQB_3_q0),.din4(SEQB_4_q0),.din5(SEQB_5_q0),.din6(SEQB_6_q0),.din7(SEQB_7_q0),.def(tmp_fu_1202_p17),.sel(trunc_ln28_reg_1552),.dout(tmp_fu_1202_p19));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_17_3_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 8 ),.CASE1( 3'h2 ),.din1_WIDTH( 8 ),.CASE2( 3'h3 ),.din2_WIDTH( 8 ),.CASE3( 3'h4 ),.din3_WIDTH( 8 ),.CASE4( 3'h5 ),.din4_WIDTH( 8 ),.CASE5( 3'h6 ),.din5_WIDTH( 8 ),.CASE6( 3'h7 ),.din6_WIDTH( 8 ),.CASE7( 3'h0 ),.din7_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 3 ),.dout_WIDTH( 8 ))
sparsemux_17_3_8_1_1_U18(.din0(SEQA_0_q0),.din1(SEQA_1_q0),.din2(SEQA_2_q0),.din3(SEQA_3_q0),.din4(SEQA_4_q0),.din5(SEQA_5_q0),.din6(SEQA_6_q0),.din7(SEQA_7_q0),.def(tmp_2_fu_1241_p17),.sel(trunc_ln29_reg_1602),.dout(tmp_2_fu_1241_p19));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 32 ),.CASE1( 3'h3 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h5 ),.din3_WIDTH( 32 ),.CASE4( 3'h6 ),.din4_WIDTH( 32 ),.CASE5( 3'h7 ),.din5_WIDTH( 32 ),.CASE6( 3'h0 ),.din6_WIDTH( 32 ),.CASE7( 3'h1 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U19(.din0(M_0_q0),.din1(M_1_q0),.din2(M_2_q0),.din3(M_3_q0),.din4(M_4_q0),.din5(M_5_q0),.din6(M_6_q0),.din7(M_7_q0),.def(tmp_3_fu_1319_p17),.sel(trunc_ln39_reg_1647),.dout(tmp_3_fu_1319_p19));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h3 ),.din2_WIDTH( 32 ),.CASE3( 3'h4 ),.din3_WIDTH( 32 ),.CASE4( 3'h5 ),.din4_WIDTH( 32 ),.CASE5( 3'h6 ),.din5_WIDTH( 32 ),.CASE6( 3'h7 ),.din6_WIDTH( 32 ),.CASE7( 3'h0 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U20(.din0(M_0_q1),.din1(M_1_q1),.din2(M_2_q1),.din3(M_3_q1),.din4(M_4_q1),.din5(M_5_q1),.din6(M_6_q1),.din7(M_7_q1),.def(tmp_4_fu_1358_p17),.sel(trunc_ln39_reg_1647),.dout(tmp_4_fu_1358_p19));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h3 ),.din2_WIDTH( 32 ),.CASE3( 3'h4 ),.din3_WIDTH( 32 ),.CASE4( 3'h5 ),.din4_WIDTH( 32 ),.CASE5( 3'h6 ),.din5_WIDTH( 32 ),.CASE6( 3'h7 ),.din6_WIDTH( 32 ),.CASE7( 3'h0 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U21(.din0(M_0_q0),.din1(M_1_q0),.din2(M_2_q0),.din3(M_3_q0),.din4(M_4_q0),.din5(M_5_q0),.din6(M_6_q0),.din7(M_7_q0),.def(tmp_5_fu_1397_p17),.sel(trunc_ln39_reg_1647),.dout(tmp_5_fu_1397_p19));
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
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_idx_2_fu_150 <= 8'd1;
    end else if (((icmp_ln28_reg_1532 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_idx_2_fu_150 <= add_ln29_fu_1191_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln28_fu_972_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            b_idx_1_fu_154 <= select_ln28_fu_1002_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            b_idx_1_fu_154 <= 8'd1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln28_fu_972_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_158 <= add_ln28_fu_978_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_158 <= 15'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_idx_2_load_reg_1536 <= ap_sig_allocacmp_a_idx_2_load;
        icmp_ln28_reg_1532 <= icmp_ln28_fu_972_p2;
        icmp_ln29_reg_1541 <= icmp_ln29_fu_990_p2;
        left_reg_1825 <= left_fu_1453_p2;
        select_ln28_reg_1546 <= select_ln28_fu_1002_p3;
        select_ln43_reg_1830 <= select_ln43_fu_1464_p3;
        tmp_s_reg_1557 <= {{empty_fu_1018_p2[6:3]}};
        trunc_ln28_reg_1552 <= trunc_ln28_fu_1010_p1;
        up_left_reg_1814 <= up_left_fu_1443_p2;
        up_reg_1820 <= up_fu_1448_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln30_reg_1674 <= icmp_ln30_fu_1280_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln46_reg_1864 <= icmp_ln46_fu_1501_p2;
        icmp_ln48_reg_1868 <= icmp_ln48_fu_1506_p2;
        lshr_ln3_reg_1654 <= {{add_ln39_1_fu_1133_p2[14:3]}};
        lshr_ln4_reg_1659 <= {{add_ln40_fu_1149_p2[14:3]}};
        lshr_ln5_reg_1664 <= {{add_ln41_fu_1165_p2[14:3]}};
        lshr_ln6_reg_1669 <= {{add_ln39_fu_1123_p2[14:3]}};
        trunc_ln29_reg_1602 <= trunc_ln29_fu_1087_p1;
        trunc_ln39_reg_1647 <= trunc_ln39_fu_1129_p1;
        trunc_ln39_reg_1647_pp0_iter1_reg <= trunc_ln39_reg_1647;
        zext_ln45_reg_1836[11 : 0] <= zext_ln45_fu_1490_p1[11 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_3_reg_1799 <= tmp_3_fu_1319_p19;
        tmp_4_reg_1804 <= tmp_4_fu_1358_p19;
        tmp_5_reg_1809 <= tmp_5_fu_1397_p19;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_0_address0_local = zext_ln45_fu_1490_p1;
    end else if (((icmp_ln28_reg_1532 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_1647 == 3'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_0_address0_local = zext_ln41_fu_1308_p1;
    end else if (((icmp_ln28_reg_1532 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_1647 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_0_address0_local = zext_ln39_fu_1286_p1;
    end else begin
        M_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln28_reg_1532 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647 == 3'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln28_reg_1532 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_0_ce0_local = 1'b1;
    end else begin
        M_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_0_ce1_local = 1'b1;
    end else begin
        M_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln39_reg_1647 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_0_we0_local = 1'b1;
    end else begin
        M_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_1_address0_local = zext_ln45_fu_1490_p1;
    end else if (((icmp_ln28_reg_1532 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_1647 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_1_address0_local = zext_ln41_fu_1308_p1;
    end else if (((icmp_ln28_reg_1532 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_1647 == 3'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_1_address0_local = zext_ln39_fu_1286_p1;
    end else begin
        M_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln28_reg_1532 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647 == 3'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln28_reg_1532 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_1_ce0_local = 1'b1;
    end else begin
        M_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_1_ce1_local = 1'b1;
    end else begin
        M_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln39_reg_1647 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_1_we0_local = 1'b1;
    end else begin
        M_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_2_address0_local = zext_ln45_fu_1490_p1;
    end else if (((icmp_ln28_reg_1532 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_1647 == 3'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_2_address0_local = zext_ln41_fu_1308_p1;
    end else if (((icmp_ln28_reg_1532 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_1647 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_2_address0_local = zext_ln39_fu_1286_p1;
    end else begin
        M_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln28_reg_1532 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln28_reg_1532 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647 == 3'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_2_ce0_local = 1'b1;
    end else begin
        M_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_2_ce1_local = 1'b1;
    end else begin
        M_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln39_reg_1647 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_2_we0_local = 1'b1;
    end else begin
        M_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_3_address0_local = zext_ln45_fu_1490_p1;
    end else if (((icmp_ln28_reg_1532 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_1647 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_3_address0_local = zext_ln41_fu_1308_p1;
    end else if (((icmp_ln28_reg_1532 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_1647 == 3'd5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_3_address0_local = zext_ln39_fu_1286_p1;
    end else begin
        M_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln28_reg_1532 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647 == 3'd5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln28_reg_1532 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_3_ce0_local = 1'b1;
    end else begin
        M_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_3_ce1_local = 1'b1;
    end else begin
        M_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln39_reg_1647 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_3_we0_local = 1'b1;
    end else begin
        M_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_4_address0_local = zext_ln45_fu_1490_p1;
    end else if (((icmp_ln28_reg_1532 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_1647 == 3'd5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_4_address0_local = zext_ln41_fu_1308_p1;
    end else if (((icmp_ln28_reg_1532 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_1647 == 3'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_4_address0_local = zext_ln39_fu_1286_p1;
    end else begin
        M_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln28_reg_1532 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647 == 3'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln28_reg_1532 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647 == 3'd5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_4_ce0_local = 1'b1;
    end else begin
        M_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_4_ce1_local = 1'b1;
    end else begin
        M_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln39_reg_1647 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_4_we0_local = 1'b1;
    end else begin
        M_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_5_address0_local = zext_ln45_fu_1490_p1;
    end else if (((icmp_ln28_reg_1532 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_1647 == 3'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_5_address0_local = zext_ln41_fu_1308_p1;
    end else if (((icmp_ln28_reg_1532 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_1647 == 3'd7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_5_address0_local = zext_ln39_fu_1286_p1;
    end else begin
        M_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln28_reg_1532 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647 == 3'd7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln28_reg_1532 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647 == 3'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_5_ce0_local = 1'b1;
    end else begin
        M_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_5_ce1_local = 1'b1;
    end else begin
        M_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln39_reg_1647 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_5_we0_local = 1'b1;
    end else begin
        M_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_6_address0_local = zext_ln45_fu_1490_p1;
    end else if (((icmp_ln28_reg_1532 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_1647 == 3'd7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_6_address0_local = zext_ln41_fu_1308_p1;
    end else if (((icmp_ln28_reg_1532 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_1647 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_6_address0_local = zext_ln39_fu_1286_p1;
    end else begin
        M_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln28_reg_1532 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln28_reg_1532 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647 == 3'd7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_6_ce0_local = 1'b1;
    end else begin
        M_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_6_ce1_local = 1'b1;
    end else begin
        M_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln39_reg_1647 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_6_we0_local = 1'b1;
    end else begin
        M_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_7_address0_local = zext_ln45_fu_1490_p1;
    end else if (((icmp_ln28_reg_1532 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_1647 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_7_address0_local = zext_ln41_fu_1308_p1;
    end else if (((icmp_ln28_reg_1532 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_1647 == 3'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_7_address0_local = zext_ln39_fu_1286_p1;
    end else begin
        M_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln28_reg_1532 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647 == 3'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln28_reg_1532 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_7_ce0_local = 1'b1;
    end else begin
        M_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_7_ce1_local = 1'b1;
    end else begin
        M_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln39_reg_1647 == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_7_we0_local = 1'b1;
    end else begin
        M_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQA_0_ce0_local = 1'b1;
    end else begin
        SEQA_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQA_1_ce0_local = 1'b1;
    end else begin
        SEQA_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQA_2_ce0_local = 1'b1;
    end else begin
        SEQA_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQA_3_ce0_local = 1'b1;
    end else begin
        SEQA_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQA_4_ce0_local = 1'b1;
    end else begin
        SEQA_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQA_5_ce0_local = 1'b1;
    end else begin
        SEQA_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQA_6_ce0_local = 1'b1;
    end else begin
        SEQA_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQA_7_ce0_local = 1'b1;
    end else begin
        SEQA_7_ce0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQB_4_ce0_local = 1'b1;
    end else begin
        SEQB_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQB_5_ce0_local = 1'b1;
    end else begin
        SEQB_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQB_6_ce0_local = 1'b1;
    end else begin
        SEQB_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQB_7_ce0_local = 1'b1;
    end else begin
        SEQB_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln28_reg_1532 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_a_idx_2_load = 8'd1;
    end else begin
        ap_sig_allocacmp_a_idx_2_load = a_idx_2_fu_150;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_b_idx_1_load = 8'd1;
    end else begin
        ap_sig_allocacmp_b_idx_1_load = b_idx_1_fu_154;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 15'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_158;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1215)) begin
        if ((icmp_ln46_reg_1864 == 1'd1)) begin
            ptr_0_address0_local = ptr_0_addr_1_gep_fu_936_p3;
        end else if (((icmp_ln48_reg_1868 == 1'd1) & (icmp_ln46_reg_1864 == 1'd0))) begin
            ptr_0_address0_local = ptr_0_addr_3_gep_fu_864_p3;
        end else if (((icmp_ln48_reg_1868 == 1'd0) & (icmp_ln46_reg_1864 == 1'd0))) begin
            ptr_0_address0_local = zext_ln45_reg_1836;
        end else begin
            ptr_0_address0_local = 'bx;
        end
    end else begin
        ptr_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln46_reg_1864 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_reg_1868 == 1'd1) & (icmp_ln46_reg_1864 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_reg_1868 == 1'd0) & (icmp_ln46_reg_1864 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        ptr_0_ce0_local = 1'b1;
    end else begin
        ptr_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1215)) begin
        if ((icmp_ln46_reg_1864 == 1'd1)) begin
            ptr_0_d0_local = 8'd60;
        end else if (((icmp_ln48_reg_1868 == 1'd1) & (icmp_ln46_reg_1864 == 1'd0))) begin
            ptr_0_d0_local = 8'd94;
        end else if (((icmp_ln48_reg_1868 == 1'd0) & (icmp_ln46_reg_1864 == 1'd0))) begin
            ptr_0_d0_local = 8'd92;
        end else begin
            ptr_0_d0_local = 'bx;
        end
    end else begin
        ptr_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln46_reg_1864 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_reg_1868 == 1'd1) & (icmp_ln46_reg_1864 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_reg_1868 == 1'd0) & (icmp_ln46_reg_1864 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        ptr_0_we0_local = 1'b1;
    end else begin
        ptr_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1220)) begin
        if ((icmp_ln46_reg_1864 == 1'd1)) begin
            ptr_1_address0_local = ptr_1_addr_1_gep_fu_927_p3;
        end else if (((icmp_ln48_reg_1868 == 1'd1) & (icmp_ln46_reg_1864 == 1'd0))) begin
            ptr_1_address0_local = ptr_1_addr_3_gep_fu_855_p3;
        end else if (((icmp_ln48_reg_1868 == 1'd0) & (icmp_ln46_reg_1864 == 1'd0))) begin
            ptr_1_address0_local = zext_ln45_reg_1836;
        end else begin
            ptr_1_address0_local = 'bx;
        end
    end else begin
        ptr_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln46_reg_1864 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_reg_1868 == 1'd1) & (icmp_ln46_reg_1864 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_reg_1868 == 1'd0) & (icmp_ln46_reg_1864 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        ptr_1_ce0_local = 1'b1;
    end else begin
        ptr_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1220)) begin
        if ((icmp_ln46_reg_1864 == 1'd1)) begin
            ptr_1_d0_local = 8'd60;
        end else if (((icmp_ln48_reg_1868 == 1'd1) & (icmp_ln46_reg_1864 == 1'd0))) begin
            ptr_1_d0_local = 8'd94;
        end else if (((icmp_ln48_reg_1868 == 1'd0) & (icmp_ln46_reg_1864 == 1'd0))) begin
            ptr_1_d0_local = 8'd92;
        end else begin
            ptr_1_d0_local = 'bx;
        end
    end else begin
        ptr_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln46_reg_1864 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_reg_1868 == 1'd1) & (icmp_ln46_reg_1864 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_reg_1868 == 1'd0) & (icmp_ln46_reg_1864 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        ptr_1_we0_local = 1'b1;
    end else begin
        ptr_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1223)) begin
        if ((icmp_ln46_reg_1864 == 1'd1)) begin
            ptr_2_address0_local = ptr_2_addr_1_gep_fu_918_p3;
        end else if (((icmp_ln48_reg_1868 == 1'd1) & (icmp_ln46_reg_1864 == 1'd0))) begin
            ptr_2_address0_local = ptr_2_addr_3_gep_fu_846_p3;
        end else if (((icmp_ln48_reg_1868 == 1'd0) & (icmp_ln46_reg_1864 == 1'd0))) begin
            ptr_2_address0_local = zext_ln45_reg_1836;
        end else begin
            ptr_2_address0_local = 'bx;
        end
    end else begin
        ptr_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln46_reg_1864 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_reg_1868 == 1'd1) & (icmp_ln46_reg_1864 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_reg_1868 == 1'd0) & (icmp_ln46_reg_1864 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        ptr_2_ce0_local = 1'b1;
    end else begin
        ptr_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1223)) begin
        if ((icmp_ln46_reg_1864 == 1'd1)) begin
            ptr_2_d0_local = 8'd60;
        end else if (((icmp_ln48_reg_1868 == 1'd1) & (icmp_ln46_reg_1864 == 1'd0))) begin
            ptr_2_d0_local = 8'd94;
        end else if (((icmp_ln48_reg_1868 == 1'd0) & (icmp_ln46_reg_1864 == 1'd0))) begin
            ptr_2_d0_local = 8'd92;
        end else begin
            ptr_2_d0_local = 'bx;
        end
    end else begin
        ptr_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln46_reg_1864 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_reg_1868 == 1'd1) & (icmp_ln46_reg_1864 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_reg_1868 == 1'd0) & (icmp_ln46_reg_1864 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        ptr_2_we0_local = 1'b1;
    end else begin
        ptr_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1226)) begin
        if ((icmp_ln46_reg_1864 == 1'd1)) begin
            ptr_3_address0_local = ptr_3_addr_1_gep_fu_909_p3;
        end else if (((icmp_ln48_reg_1868 == 1'd1) & (icmp_ln46_reg_1864 == 1'd0))) begin
            ptr_3_address0_local = ptr_3_addr_3_gep_fu_837_p3;
        end else if (((icmp_ln48_reg_1868 == 1'd0) & (icmp_ln46_reg_1864 == 1'd0))) begin
            ptr_3_address0_local = zext_ln45_reg_1836;
        end else begin
            ptr_3_address0_local = 'bx;
        end
    end else begin
        ptr_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln46_reg_1864 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_reg_1868 == 1'd1) & (icmp_ln46_reg_1864 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_reg_1868 == 1'd0) & (icmp_ln46_reg_1864 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        ptr_3_ce0_local = 1'b1;
    end else begin
        ptr_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1226)) begin
        if ((icmp_ln46_reg_1864 == 1'd1)) begin
            ptr_3_d0_local = 8'd60;
        end else if (((icmp_ln48_reg_1868 == 1'd1) & (icmp_ln46_reg_1864 == 1'd0))) begin
            ptr_3_d0_local = 8'd94;
        end else if (((icmp_ln48_reg_1868 == 1'd0) & (icmp_ln46_reg_1864 == 1'd0))) begin
            ptr_3_d0_local = 8'd92;
        end else begin
            ptr_3_d0_local = 'bx;
        end
    end else begin
        ptr_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln46_reg_1864 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_reg_1868 == 1'd1) & (icmp_ln46_reg_1864 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_reg_1868 == 1'd0) & (icmp_ln46_reg_1864 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        ptr_3_we0_local = 1'b1;
    end else begin
        ptr_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1229)) begin
        if ((icmp_ln46_reg_1864 == 1'd1)) begin
            ptr_4_address0_local = ptr_4_addr_1_gep_fu_900_p3;
        end else if (((icmp_ln48_reg_1868 == 1'd1) & (icmp_ln46_reg_1864 == 1'd0))) begin
            ptr_4_address0_local = ptr_4_addr_3_gep_fu_828_p3;
        end else if (((icmp_ln48_reg_1868 == 1'd0) & (icmp_ln46_reg_1864 == 1'd0))) begin
            ptr_4_address0_local = zext_ln45_reg_1836;
        end else begin
            ptr_4_address0_local = 'bx;
        end
    end else begin
        ptr_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln46_reg_1864 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_reg_1868 == 1'd1) & (icmp_ln46_reg_1864 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_reg_1868 == 1'd0) & (icmp_ln46_reg_1864 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        ptr_4_ce0_local = 1'b1;
    end else begin
        ptr_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1229)) begin
        if ((icmp_ln46_reg_1864 == 1'd1)) begin
            ptr_4_d0_local = 8'd60;
        end else if (((icmp_ln48_reg_1868 == 1'd1) & (icmp_ln46_reg_1864 == 1'd0))) begin
            ptr_4_d0_local = 8'd94;
        end else if (((icmp_ln48_reg_1868 == 1'd0) & (icmp_ln46_reg_1864 == 1'd0))) begin
            ptr_4_d0_local = 8'd92;
        end else begin
            ptr_4_d0_local = 'bx;
        end
    end else begin
        ptr_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln46_reg_1864 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_reg_1868 == 1'd1) & (icmp_ln46_reg_1864 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_reg_1868 == 1'd0) & (icmp_ln46_reg_1864 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        ptr_4_we0_local = 1'b1;
    end else begin
        ptr_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1232)) begin
        if ((icmp_ln46_reg_1864 == 1'd1)) begin
            ptr_5_address0_local = ptr_5_addr_1_gep_fu_891_p3;
        end else if (((icmp_ln48_reg_1868 == 1'd1) & (icmp_ln46_reg_1864 == 1'd0))) begin
            ptr_5_address0_local = ptr_5_addr_3_gep_fu_819_p3;
        end else if (((icmp_ln48_reg_1868 == 1'd0) & (icmp_ln46_reg_1864 == 1'd0))) begin
            ptr_5_address0_local = zext_ln45_reg_1836;
        end else begin
            ptr_5_address0_local = 'bx;
        end
    end else begin
        ptr_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln46_reg_1864 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_reg_1868 == 1'd1) & (icmp_ln46_reg_1864 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_reg_1868 == 1'd0) & (icmp_ln46_reg_1864 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        ptr_5_ce0_local = 1'b1;
    end else begin
        ptr_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1232)) begin
        if ((icmp_ln46_reg_1864 == 1'd1)) begin
            ptr_5_d0_local = 8'd60;
        end else if (((icmp_ln48_reg_1868 == 1'd1) & (icmp_ln46_reg_1864 == 1'd0))) begin
            ptr_5_d0_local = 8'd94;
        end else if (((icmp_ln48_reg_1868 == 1'd0) & (icmp_ln46_reg_1864 == 1'd0))) begin
            ptr_5_d0_local = 8'd92;
        end else begin
            ptr_5_d0_local = 'bx;
        end
    end else begin
        ptr_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln46_reg_1864 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_reg_1868 == 1'd1) & (icmp_ln46_reg_1864 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_reg_1868 == 1'd0) & (icmp_ln46_reg_1864 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        ptr_5_we0_local = 1'b1;
    end else begin
        ptr_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1235)) begin
        if ((icmp_ln46_reg_1864 == 1'd1)) begin
            ptr_6_address0_local = ptr_6_addr_1_gep_fu_882_p3;
        end else if (((icmp_ln48_reg_1868 == 1'd1) & (icmp_ln46_reg_1864 == 1'd0))) begin
            ptr_6_address0_local = ptr_6_addr_3_gep_fu_810_p3;
        end else if (((icmp_ln48_reg_1868 == 1'd0) & (icmp_ln46_reg_1864 == 1'd0))) begin
            ptr_6_address0_local = zext_ln45_reg_1836;
        end else begin
            ptr_6_address0_local = 'bx;
        end
    end else begin
        ptr_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln46_reg_1864 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_reg_1868 == 1'd1) & (icmp_ln46_reg_1864 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_reg_1868 == 1'd0) & (icmp_ln46_reg_1864 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        ptr_6_ce0_local = 1'b1;
    end else begin
        ptr_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1235)) begin
        if ((icmp_ln46_reg_1864 == 1'd1)) begin
            ptr_6_d0_local = 8'd60;
        end else if (((icmp_ln48_reg_1868 == 1'd1) & (icmp_ln46_reg_1864 == 1'd0))) begin
            ptr_6_d0_local = 8'd94;
        end else if (((icmp_ln48_reg_1868 == 1'd0) & (icmp_ln46_reg_1864 == 1'd0))) begin
            ptr_6_d0_local = 8'd92;
        end else begin
            ptr_6_d0_local = 'bx;
        end
    end else begin
        ptr_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln46_reg_1864 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_reg_1868 == 1'd1) & (icmp_ln46_reg_1864 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_reg_1868 == 1'd0) & (icmp_ln46_reg_1864 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        ptr_6_we0_local = 1'b1;
    end else begin
        ptr_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1238)) begin
        if ((icmp_ln46_reg_1864 == 1'd1)) begin
            ptr_7_address0_local = ptr_7_addr_1_gep_fu_945_p3;
        end else if (((icmp_ln48_reg_1868 == 1'd1) & (icmp_ln46_reg_1864 == 1'd0))) begin
            ptr_7_address0_local = ptr_7_addr_3_gep_fu_873_p3;
        end else if (((icmp_ln48_reg_1868 == 1'd0) & (icmp_ln46_reg_1864 == 1'd0))) begin
            ptr_7_address0_local = zext_ln45_reg_1836;
        end else begin
            ptr_7_address0_local = 'bx;
        end
    end else begin
        ptr_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln46_reg_1864 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_reg_1868 == 1'd1) & (icmp_ln46_reg_1864 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_reg_1868 == 1'd0) & (icmp_ln46_reg_1864 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        ptr_7_ce0_local = 1'b1;
    end else begin
        ptr_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1238)) begin
        if ((icmp_ln46_reg_1864 == 1'd1)) begin
            ptr_7_d0_local = 8'd60;
        end else if (((icmp_ln48_reg_1868 == 1'd1) & (icmp_ln46_reg_1864 == 1'd0))) begin
            ptr_7_d0_local = 8'd94;
        end else if (((icmp_ln48_reg_1868 == 1'd0) & (icmp_ln46_reg_1864 == 1'd0))) begin
            ptr_7_d0_local = 8'd92;
        end else begin
            ptr_7_d0_local = 'bx;
        end
    end else begin
        ptr_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln46_reg_1864 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_reg_1868 == 1'd1) & (icmp_ln46_reg_1864 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_reg_1868 == 1'd0) & (icmp_ln46_reg_1864 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        ptr_7_we0_local = 1'b1;
    end else begin
        ptr_7_we0_local = 1'b0;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign M_0_address0 = M_0_address0_local;
assign M_0_address1 = zext_ln40_fu_1297_p1;
assign M_0_ce0 = M_0_ce0_local;
assign M_0_ce1 = M_0_ce1_local;
assign M_0_d0 = max_fu_1476_p3;
assign M_0_we0 = M_0_we0_local;
assign M_1_address0 = M_1_address0_local;
assign M_1_address1 = zext_ln40_fu_1297_p1;
assign M_1_ce0 = M_1_ce0_local;
assign M_1_ce1 = M_1_ce1_local;
assign M_1_d0 = max_fu_1476_p3;
assign M_1_we0 = M_1_we0_local;
assign M_2_address0 = M_2_address0_local;
assign M_2_address1 = zext_ln40_fu_1297_p1;
assign M_2_ce0 = M_2_ce0_local;
assign M_2_ce1 = M_2_ce1_local;
assign M_2_d0 = max_fu_1476_p3;
assign M_2_we0 = M_2_we0_local;
assign M_3_address0 = M_3_address0_local;
assign M_3_address1 = zext_ln40_fu_1297_p1;
assign M_3_ce0 = M_3_ce0_local;
assign M_3_ce1 = M_3_ce1_local;
assign M_3_d0 = max_fu_1476_p3;
assign M_3_we0 = M_3_we0_local;
assign M_4_address0 = M_4_address0_local;
assign M_4_address1 = zext_ln40_fu_1297_p1;
assign M_4_ce0 = M_4_ce0_local;
assign M_4_ce1 = M_4_ce1_local;
assign M_4_d0 = max_fu_1476_p3;
assign M_4_we0 = M_4_we0_local;
assign M_5_address0 = M_5_address0_local;
assign M_5_address1 = zext_ln40_fu_1297_p1;
assign M_5_ce0 = M_5_ce0_local;
assign M_5_ce1 = M_5_ce1_local;
assign M_5_d0 = max_fu_1476_p3;
assign M_5_we0 = M_5_we0_local;
assign M_6_address0 = M_6_address0_local;
assign M_6_address1 = zext_ln40_fu_1297_p1;
assign M_6_ce0 = M_6_ce0_local;
assign M_6_ce1 = M_6_ce1_local;
assign M_6_d0 = max_fu_1476_p3;
assign M_6_we0 = M_6_we0_local;
assign M_7_address0 = M_7_address0_local;
assign M_7_address1 = zext_ln40_fu_1297_p1;
assign M_7_ce0 = M_7_ce0_local;
assign M_7_ce1 = M_7_ce1_local;
assign M_7_d0 = max_fu_1476_p3;
assign M_7_we0 = M_7_we0_local;
assign SEQA_0_address0 = zext_ln30_1_fu_1111_p1;
assign SEQA_0_ce0 = SEQA_0_ce0_local;
assign SEQA_1_address0 = zext_ln30_1_fu_1111_p1;
assign SEQA_1_ce0 = SEQA_1_ce0_local;
assign SEQA_2_address0 = zext_ln30_1_fu_1111_p1;
assign SEQA_2_ce0 = SEQA_2_ce0_local;
assign SEQA_3_address0 = zext_ln30_1_fu_1111_p1;
assign SEQA_3_ce0 = SEQA_3_ce0_local;
assign SEQA_4_address0 = zext_ln30_1_fu_1111_p1;
assign SEQA_4_ce0 = SEQA_4_ce0_local;
assign SEQA_5_address0 = zext_ln30_1_fu_1111_p1;
assign SEQA_5_ce0 = SEQA_5_ce0_local;
assign SEQA_6_address0 = zext_ln30_1_fu_1111_p1;
assign SEQA_6_ce0 = SEQA_6_ce0_local;
assign SEQA_7_address0 = zext_ln30_1_fu_1111_p1;
assign SEQA_7_ce0 = SEQA_7_ce0_local;
assign SEQB_0_address0 = p_cast20_fu_1053_p1;
assign SEQB_0_ce0 = SEQB_0_ce0_local;
assign SEQB_1_address0 = p_cast20_fu_1053_p1;
assign SEQB_1_ce0 = SEQB_1_ce0_local;
assign SEQB_2_address0 = p_cast20_fu_1053_p1;
assign SEQB_2_ce0 = SEQB_2_ce0_local;
assign SEQB_3_address0 = p_cast20_fu_1053_p1;
assign SEQB_3_ce0 = SEQB_3_ce0_local;
assign SEQB_4_address0 = p_cast20_fu_1053_p1;
assign SEQB_4_ce0 = SEQB_4_ce0_local;
assign SEQB_5_address0 = p_cast20_fu_1053_p1;
assign SEQB_5_ce0 = SEQB_5_ce0_local;
assign SEQB_6_address0 = p_cast20_fu_1053_p1;
assign SEQB_6_ce0 = SEQB_6_ce0_local;
assign SEQB_7_address0 = p_cast20_fu_1053_p1;
assign SEQB_7_ce0 = SEQB_7_ce0_local;
assign add_ln28_1_fu_996_p2 = (ap_sig_allocacmp_b_idx_1_load + 8'd1);
assign add_ln28_fu_978_p2 = (ap_sig_allocacmp_indvar_flatten_load + 15'd1);
assign add_ln29_fu_1191_p2 = (select_ln17_fu_1044_p3 + 8'd1);
assign add_ln30_fu_1091_p2 = ($signed(select_ln17_fu_1044_p3) + $signed(8'd255));
assign add_ln39_1_fu_1133_p2 = (zext_ln30_fu_1097_p1 + empty_21_fu_1077_p2);
assign add_ln39_fu_1123_p2 = (zext_ln29_fu_1083_p1 + empty_20_fu_1071_p2);
assign add_ln40_fu_1149_p2 = (zext_ln29_fu_1083_p1 + empty_21_fu_1077_p2);
assign add_ln41_fu_1165_p2 = (zext_ln30_fu_1097_p1 + empty_20_fu_1071_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
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
always @ (*) begin
    ap_condition_1215 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1220 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1223 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1226 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1229 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1232 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1235 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1238 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_1647_pp0_iter1_reg == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign b_idx_1_cast7_fu_1050_p1 = select_ln28_reg_1546;
assign empty_20_fu_1071_p2 = (p_shl_fu_1064_p3 + b_idx_1_cast7_fu_1050_p1);
assign empty_21_fu_1077_p2 = ($signed(empty_20_fu_1071_p2) + $signed(15'd32639));
assign empty_fu_1018_p2 = ($signed(trunc_ln28_1_fu_1014_p1) + $signed(7'd127));
assign icmp_ln28_fu_972_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 15'd16384) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_990_p2 = ((ap_sig_allocacmp_a_idx_2_load == 8'd129) ? 1'b1 : 1'b0);
assign icmp_ln30_fu_1280_p2 = ((tmp_2_fu_1241_p19 == tmp_fu_1202_p19) ? 1'b1 : 1'b0);
assign icmp_ln43_1_fu_1472_p2 = (($signed(up_left_reg_1814) > $signed(select_ln43_reg_1830)) ? 1'b1 : 1'b0);
assign icmp_ln43_fu_1458_p2 = (($signed(up_fu_1448_p2) > $signed(left_fu_1453_p2)) ? 1'b1 : 1'b0);
assign icmp_ln46_fu_1501_p2 = ((max_fu_1476_p3 == left_reg_1825) ? 1'b1 : 1'b0);
assign icmp_ln48_fu_1506_p2 = ((max_fu_1476_p3 == up_reg_1820) ? 1'b1 : 1'b0);
assign left_fu_1453_p2 = ($signed(tmp_5_reg_1809) + $signed(32'd4294967295));
assign lshr_ln2_fu_1101_p4 = {{add_ln30_fu_1091_p2[6:3]}};
assign max_fu_1476_p3 = ((icmp_ln43_1_fu_1472_p2[0:0] == 1'b1) ? up_left_reg_1814 : select_ln43_reg_1830);
assign p_cast20_fu_1053_p1 = tmp_s_reg_1557;
assign p_shl_fu_1064_p3 = {{select_ln28_reg_1546}, {7'd0}};
assign ptr_0_addr_1_gep_fu_936_p3 = zext_ln45_reg_1836;
assign ptr_0_addr_3_gep_fu_864_p3 = zext_ln45_reg_1836;
assign ptr_0_address0 = ptr_0_address0_local;
assign ptr_0_ce0 = ptr_0_ce0_local;
assign ptr_0_d0 = ptr_0_d0_local;
assign ptr_0_we0 = ptr_0_we0_local;
assign ptr_1_addr_1_gep_fu_927_p3 = zext_ln45_reg_1836;
assign ptr_1_addr_3_gep_fu_855_p3 = zext_ln45_reg_1836;
assign ptr_1_address0 = ptr_1_address0_local;
assign ptr_1_ce0 = ptr_1_ce0_local;
assign ptr_1_d0 = ptr_1_d0_local;
assign ptr_1_we0 = ptr_1_we0_local;
assign ptr_2_addr_1_gep_fu_918_p3 = zext_ln45_reg_1836;
assign ptr_2_addr_3_gep_fu_846_p3 = zext_ln45_reg_1836;
assign ptr_2_address0 = ptr_2_address0_local;
assign ptr_2_ce0 = ptr_2_ce0_local;
assign ptr_2_d0 = ptr_2_d0_local;
assign ptr_2_we0 = ptr_2_we0_local;
assign ptr_3_addr_1_gep_fu_909_p3 = zext_ln45_reg_1836;
assign ptr_3_addr_3_gep_fu_837_p3 = zext_ln45_reg_1836;
assign ptr_3_address0 = ptr_3_address0_local;
assign ptr_3_ce0 = ptr_3_ce0_local;
assign ptr_3_d0 = ptr_3_d0_local;
assign ptr_3_we0 = ptr_3_we0_local;
assign ptr_4_addr_1_gep_fu_900_p3 = zext_ln45_reg_1836;
assign ptr_4_addr_3_gep_fu_828_p3 = zext_ln45_reg_1836;
assign ptr_4_address0 = ptr_4_address0_local;
assign ptr_4_ce0 = ptr_4_ce0_local;
assign ptr_4_d0 = ptr_4_d0_local;
assign ptr_4_we0 = ptr_4_we0_local;
assign ptr_5_addr_1_gep_fu_891_p3 = zext_ln45_reg_1836;
assign ptr_5_addr_3_gep_fu_819_p3 = zext_ln45_reg_1836;
assign ptr_5_address0 = ptr_5_address0_local;
assign ptr_5_ce0 = ptr_5_ce0_local;
assign ptr_5_d0 = ptr_5_d0_local;
assign ptr_5_we0 = ptr_5_we0_local;
assign ptr_6_addr_1_gep_fu_882_p3 = zext_ln45_reg_1836;
assign ptr_6_addr_3_gep_fu_810_p3 = zext_ln45_reg_1836;
assign ptr_6_address0 = ptr_6_address0_local;
assign ptr_6_ce0 = ptr_6_ce0_local;
assign ptr_6_d0 = ptr_6_d0_local;
assign ptr_6_we0 = ptr_6_we0_local;
assign ptr_7_addr_1_gep_fu_945_p3 = zext_ln45_reg_1836;
assign ptr_7_addr_3_gep_fu_873_p3 = zext_ln45_reg_1836;
assign ptr_7_address0 = ptr_7_address0_local;
assign ptr_7_ce0 = ptr_7_ce0_local;
assign ptr_7_d0 = ptr_7_d0_local;
assign ptr_7_we0 = ptr_7_we0_local;
assign select_ln17_fu_1044_p3 = ((icmp_ln29_reg_1541[0:0] == 1'b1) ? 8'd1 : a_idx_2_load_reg_1536);
assign select_ln28_fu_1002_p3 = ((icmp_ln29_fu_990_p2[0:0] == 1'b1) ? add_ln28_1_fu_996_p2 : ap_sig_allocacmp_b_idx_1_load);
assign select_ln39_fu_1436_p3 = ((icmp_ln30_reg_1674[0:0] == 1'b1) ? 32'd1 : 32'd4294967295);
assign select_ln43_fu_1464_p3 = ((icmp_ln43_fu_1458_p2[0:0] == 1'b1) ? up_fu_1448_p2 : left_fu_1453_p2);
assign tmp_2_fu_1241_p17 = 'bx;
assign tmp_3_fu_1319_p17 = 'bx;
assign tmp_4_fu_1358_p17 = 'bx;
assign tmp_5_fu_1397_p17 = 'bx;
assign tmp_fu_1202_p17 = 'bx;
assign trunc_ln28_1_fu_1014_p1 = select_ln28_fu_1002_p3[6:0];
assign trunc_ln28_fu_1010_p1 = select_ln28_fu_1002_p3[2:0];
assign trunc_ln29_fu_1087_p1 = select_ln17_fu_1044_p3[2:0];
assign trunc_ln39_fu_1129_p1 = add_ln39_fu_1123_p2[2:0];
assign up_fu_1448_p2 = ($signed(tmp_4_reg_1804) + $signed(32'd4294967295));
assign up_left_fu_1443_p2 = (tmp_3_reg_1799 + select_ln39_fu_1436_p3);
assign zext_ln29_fu_1083_p1 = select_ln17_fu_1044_p3;
assign zext_ln30_1_fu_1111_p1 = lshr_ln2_fu_1101_p4;
assign zext_ln30_fu_1097_p1 = add_ln30_fu_1091_p2;
assign zext_ln39_fu_1286_p1 = lshr_ln3_reg_1654;
assign zext_ln40_fu_1297_p1 = lshr_ln4_reg_1659;
assign zext_ln41_fu_1308_p1 = lshr_ln5_reg_1664;
assign zext_ln45_fu_1490_p1 = lshr_ln6_reg_1669;
always @ (posedge ap_clk) begin
    zext_ln45_reg_1836[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
end
endmodule 
