module needwun_needwun_Pipeline_trace (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,alignedB_7_address0,alignedB_7_ce0,alignedB_7_we0,alignedB_7_d0,alignedB_6_address0,alignedB_6_ce0,alignedB_6_we0,alignedB_6_d0,alignedB_5_address0,alignedB_5_ce0,alignedB_5_we0,alignedB_5_d0,alignedB_4_address0,alignedB_4_ce0,alignedB_4_we0,alignedB_4_d0,alignedB_3_address0,alignedB_3_ce0,alignedB_3_we0,alignedB_3_d0,alignedB_2_address0,alignedB_2_ce0,alignedB_2_we0,alignedB_2_d0,alignedB_1_address0,alignedB_1_ce0,alignedB_1_we0,alignedB_1_d0,alignedB_0_address0,alignedB_0_ce0,alignedB_0_we0,alignedB_0_d0,alignedA_7_address0,alignedA_7_ce0,alignedA_7_we0,alignedA_7_d0,alignedA_6_address0,alignedA_6_ce0,alignedA_6_we0,alignedA_6_d0,alignedA_5_address0,alignedA_5_ce0,alignedA_5_we0,alignedA_5_d0,alignedA_4_address0,alignedA_4_ce0,alignedA_4_we0,alignedA_4_d0,alignedA_3_address0,alignedA_3_ce0,alignedA_3_we0,alignedA_3_d0,alignedA_2_address0,alignedA_2_ce0,alignedA_2_we0,alignedA_2_d0,alignedA_1_address0,alignedA_1_ce0,alignedA_1_we0,alignedA_1_d0,alignedA_0_address0,alignedA_0_ce0,alignedA_0_we0,alignedA_0_d0,SEQB_0_address0,SEQB_0_ce0,SEQB_0_q0,SEQB_1_address0,SEQB_1_ce0,SEQB_1_q0,SEQB_2_address0,SEQB_2_ce0,SEQB_2_q0,SEQB_3_address0,SEQB_3_ce0,SEQB_3_q0,SEQB_4_address0,SEQB_4_ce0,SEQB_4_q0,SEQB_5_address0,SEQB_5_ce0,SEQB_5_q0,SEQB_6_address0,SEQB_6_ce0,SEQB_6_q0,SEQB_7_address0,SEQB_7_ce0,SEQB_7_q0,ptr_0_address0,ptr_0_ce0,ptr_0_q0,ptr_1_address0,ptr_1_ce0,ptr_1_q0,ptr_2_address0,ptr_2_ce0,ptr_2_q0,ptr_3_address0,ptr_3_ce0,ptr_3_q0,ptr_4_address0,ptr_4_ce0,ptr_4_q0,ptr_5_address0,ptr_5_ce0,ptr_5_q0,ptr_6_address0,ptr_6_ce0,ptr_6_q0,ptr_7_address0,ptr_7_ce0,ptr_7_q0,SEQA_0_address0,SEQA_0_ce0,SEQA_0_q0,SEQA_1_address0,SEQA_1_ce0,SEQA_1_q0,SEQA_2_address0,SEQA_2_ce0,SEQA_2_q0,SEQA_3_address0,SEQA_3_ce0,SEQA_3_q0,SEQA_4_address0,SEQA_4_ce0,SEQA_4_q0,SEQA_5_address0,SEQA_5_ce0,SEQA_5_q0,SEQA_6_address0,SEQA_6_ce0,SEQA_6_q0,SEQA_7_address0,SEQA_7_ce0,SEQA_7_q0,b_str_idx_4_out,b_str_idx_4_out_ap_vld,ap_return); 
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
reg   [31:0] a_idx_4_reg_1415;
reg   [31:0] b_idx_4_reg_1427;
wire   [31:0] grp_fu_1476_p2;
wire    ap_CS_fsm_pp0_stage2;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage2_11001;
reg   [0:0] or_ln62_reg_2181;
wire   [7:0] tmp_1_fu_1860_p19;
wire   [31:0] grp_fu_1491_p2;
wire   [31:0] grp_fu_1592_p2;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [0:0] or_ln62_1_reg_2458;
wire   [7:0] tmp_s_fu_2039_p19;
wire   [31:0] grp_fu_1608_p2;
reg   [31:0] b_idx_1_reg_2167;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] a_idx_1_reg_2174;
wire   [0:0] or_ln62_fu_1767_p2;
wire   [2:0] trunc_ln64_fu_1805_p1;
reg   [2:0] trunc_ln64_reg_2185;
reg   [31:0] b_str_idx_1_reg_2230;
wire   [2:0] trunc_ln18_fu_1834_p1;
reg   [2:0] trunc_ln18_reg_2236;
wire   [63:0] zext_ln18_fu_1848_p1;
reg   [63:0] zext_ln18_reg_2240;
reg   [7:0] tmp_1_reg_2284;
wire   [2:0] trunc_ln17_fu_1955_p1;
reg   [2:0] trunc_ln17_reg_2448;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [2:0] trunc_ln17_1_fu_1959_p1;
reg   [2:0] trunc_ln17_1_reg_2453;
wire   [0:0] or_ln62_1_fu_1983_p2;
wire   [2:0] trunc_ln64_1_fu_2013_p1;
reg   [2:0] trunc_ln64_1_reg_2462;
reg   [7:0] tmp_s_reg_2507;
wire    ap_block_pp0_stage3_subdone;
reg    ap_predicate_tran5to8_state5;
reg    ap_condition_pp0_exit_iter0_state5;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage4_subdone;
reg   [31:0] ap_phi_reg_pp0_iter0_a_idx_4_reg_1415;
reg   [31:0] ap_phi_reg_pp0_iter0_b_idx_4_reg_1427;
wire   [31:0] ap_phi_reg_pp0_iter0_a_idx_7_reg_1439;
reg   [31:0] ap_phi_reg_pp0_iter1_a_idx_7_reg_1439;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] ap_phi_reg_pp0_iter0_b_idx_7_reg_1451;
reg   [31:0] ap_phi_reg_pp0_iter1_b_idx_7_reg_1451;
reg   [0:0] UnifiedRetVal_reg_1463;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state8;
wire   [63:0] zext_ln64_fu_1819_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln71_fu_1899_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln65_fu_1911_p1;
wire   [63:0] zext_ln66_fu_1923_p1;
wire   [63:0] zext_ln77_fu_1935_p1;
wire    ap_block_pp0_stage3;
wire   [4:0] alignedA_4_addr_1_gep_fu_759_p3;
wire   [4:0] alignedA_2_addr_1_gep_fu_775_p3;
wire   [4:0] alignedA_0_addr_1_gep_fu_791_p3;
wire   [4:0] alignedA_6_addr_1_gep_fu_807_p3;
wire   [4:0] alignedB_4_addr_gep_fu_823_p3;
wire   [4:0] alignedB_2_addr_gep_fu_831_p3;
wire   [4:0] alignedB_0_addr_gep_fu_839_p3;
wire   [4:0] alignedB_6_addr_gep_fu_847_p3;
wire   [63:0] zext_ln64_1_fu_2027_p1;
wire   [63:0] zext_ln71_1_fu_2083_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln65_1_fu_2095_p1;
wire   [63:0] zext_ln66_1_fu_2107_p1;
wire   [63:0] zext_ln77_1_fu_2119_p1;
wire   [4:0] alignedA_5_addr_2_gep_fu_1287_p3;
wire    ap_block_pp0_stage0;
wire   [4:0] alignedA_3_addr_2_gep_fu_1295_p3;
wire   [4:0] alignedA_1_addr_2_gep_fu_1303_p3;
wire   [4:0] alignedA_7_addr_2_gep_fu_1311_p3;
wire   [4:0] alignedA_5_addr_1_gep_fu_1319_p3;
wire   [4:0] alignedB_5_addr_1_gep_fu_1327_p3;
wire   [4:0] alignedA_3_addr_1_gep_fu_1335_p3;
wire   [4:0] alignedB_3_addr_1_gep_fu_1343_p3;
wire   [4:0] alignedA_1_addr_1_gep_fu_1351_p3;
wire   [4:0] alignedB_1_addr_1_gep_fu_1359_p3;
wire   [4:0] alignedA_7_addr_1_gep_fu_1367_p3;
wire   [4:0] alignedB_7_addr_1_gep_fu_1375_p3;
wire   [4:0] alignedB_5_addr_gep_fu_1383_p3;
wire   [4:0] alignedB_3_addr_gep_fu_1391_p3;
wire   [4:0] alignedB_1_addr_gep_fu_1399_p3;
wire   [4:0] alignedB_7_addr_gep_fu_1407_p3;
reg   [31:0] a_str_idx_fu_156;
wire   [31:0] b_str_idx_fu_2078_p2;
reg   [31:0] b_idx_fu_160;
reg   [31:0] a_idx_fu_164;
reg    ptr_0_ce0_local;
reg   [11:0] ptr_0_address0_local;
reg    ptr_1_ce0_local;
reg   [11:0] ptr_1_address0_local;
reg    ptr_2_ce0_local;
reg   [11:0] ptr_2_address0_local;
reg    ptr_3_ce0_local;
reg   [11:0] ptr_3_address0_local;
reg    ptr_4_ce0_local;
reg   [11:0] ptr_4_address0_local;
reg    ptr_5_ce0_local;
reg   [11:0] ptr_5_address0_local;
reg    ptr_6_ce0_local;
reg   [11:0] ptr_6_address0_local;
reg    ptr_7_ce0_local;
reg   [11:0] ptr_7_address0_local;
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
reg    alignedB_4_we0_local;
reg   [7:0] alignedB_4_d0_local;
reg    alignedB_4_ce0_local;
reg   [4:0] alignedB_4_address0_local;
wire   [7:0] grp_fu_1549_p19;
reg    alignedB_2_we0_local;
reg   [7:0] alignedB_2_d0_local;
reg    alignedB_2_ce0_local;
reg   [4:0] alignedB_2_address0_local;
reg    alignedB_0_we0_local;
reg   [7:0] alignedB_0_d0_local;
reg    alignedB_0_ce0_local;
reg   [4:0] alignedB_0_address0_local;
reg    alignedB_6_we0_local;
reg   [7:0] alignedB_6_d0_local;
reg    alignedB_6_ce0_local;
reg   [4:0] alignedB_6_address0_local;
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
reg    alignedA_4_we0_local;
reg   [7:0] alignedA_4_d0_local;
reg    alignedA_4_ce0_local;
reg   [4:0] alignedA_4_address0_local;
wire   [7:0] grp_fu_1506_p19;
reg    alignedA_2_we0_local;
reg   [7:0] alignedA_2_d0_local;
reg    alignedA_2_ce0_local;
reg   [4:0] alignedA_2_address0_local;
reg    alignedA_0_we0_local;
reg   [7:0] alignedA_0_d0_local;
reg    alignedA_0_ce0_local;
reg   [4:0] alignedA_0_address0_local;
reg    alignedA_6_we0_local;
reg   [7:0] alignedA_6_d0_local;
reg    alignedA_6_ce0_local;
reg   [4:0] alignedA_6_address0_local;
reg    alignedB_5_we0_local;
reg   [7:0] alignedB_5_d0_local;
reg    alignedB_5_ce0_local;
reg   [4:0] alignedB_5_address0_local;
wire   [7:0] grp_fu_1667_p19;
reg    alignedB_3_we0_local;
reg   [7:0] alignedB_3_d0_local;
reg    alignedB_3_ce0_local;
reg   [4:0] alignedB_3_address0_local;
reg    alignedB_1_we0_local;
reg   [7:0] alignedB_1_d0_local;
reg    alignedB_1_ce0_local;
reg   [4:0] alignedB_1_address0_local;
reg    alignedB_7_we0_local;
reg   [7:0] alignedB_7_d0_local;
reg    alignedB_7_ce0_local;
reg   [4:0] alignedB_7_address0_local;
reg    alignedA_5_we0_local;
reg   [7:0] alignedA_5_d0_local;
reg    alignedA_5_ce0_local;
reg   [4:0] alignedA_5_address0_local;
wire   [7:0] grp_fu_1624_p19;
reg    alignedA_3_we0_local;
reg   [7:0] alignedA_3_d0_local;
reg    alignedA_3_ce0_local;
reg   [4:0] alignedA_3_address0_local;
reg    alignedA_1_we0_local;
reg   [7:0] alignedA_1_d0_local;
reg    alignedA_1_ce0_local;
reg   [4:0] alignedA_1_address0_local;
reg    alignedA_7_we0_local;
reg   [7:0] alignedA_7_d0_local;
reg    alignedA_7_ce0_local;
reg   [4:0] alignedA_7_address0_local;
wire   [7:0] grp_fu_1506_p17;
wire   [2:0] grp_fu_1506_p18;
wire   [7:0] grp_fu_1549_p17;
wire   [2:0] grp_fu_1549_p18;
wire   [7:0] grp_fu_1624_p17;
wire   [7:0] grp_fu_1667_p17;
wire   [0:0] icmp_ln62_fu_1755_p2;
wire   [0:0] icmp_ln62_1_fu_1761_p2;
wire   [7:0] trunc_ln16_fu_1781_p1;
wire   [14:0] p_shl_fu_1785_p3;
wire   [14:0] trunc_ln18_4_fu_1777_p1;
wire   [14:0] r_1_fu_1793_p2;
wire   [14:0] trunc_ln18_3_fu_1773_p1;
wire   [14:0] add_ln64_fu_1799_p2;
wire   [11:0] lshr_ln7_fu_1809_p4;
wire   [4:0] lshr_ln6_fu_1838_p4;
wire   [7:0] tmp_1_fu_1860_p17;
wire   [3:0] grp_fu_1481_p4;
wire   [3:0] grp_fu_1496_p4;
wire   [0:0] icmp_ln62_2_fu_1971_p2;
wire   [0:0] icmp_ln62_3_fu_1977_p2;
wire   [7:0] trunc_ln16_1_fu_1989_p1;
wire   [14:0] trunc_ln17_2_fu_1963_p1;
wire   [14:0] trunc_ln17_3_fu_1967_p1;
wire   [14:0] r_fu_2001_p2;
wire   [14:0] p_shl1_fu_1993_p3;
wire   [14:0] add_ln64_1_fu_2007_p2;
wire   [11:0] lshr_ln64_1_fu_2017_p4;
wire   [7:0] tmp_s_fu_2039_p17;
wire   [3:0] grp_fu_1598_p4;
wire   [3:0] grp_fu_1614_p4;
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
reg    ap_condition_1615;
reg    ap_condition_1619;
reg    ap_condition_1625;
reg    ap_condition_1631;
reg    ap_condition_1637;
reg    ap_condition_1643;
reg    ap_condition_1649;
reg    ap_condition_1655;
reg    ap_condition_1661;
reg    ap_condition_1667;
reg    ap_condition_1673;
reg    ap_condition_1679;
reg    ap_condition_1685;
reg    ap_condition_1691;
reg    ap_condition_1697;
reg    ap_condition_1703;
reg    ap_condition_1709;
reg    ap_condition_1715;
reg    ap_condition_1720;
reg    ap_condition_1726;
reg    ap_condition_1733;
reg    ap_condition_1739;
reg    ap_condition_1745;
reg    ap_condition_1751;
reg    ap_condition_1757;
reg    ap_condition_1763;
reg    ap_condition_1769;
reg    ap_condition_1775;
reg    ap_condition_1781;
reg    ap_condition_1787;
reg    ap_condition_1793;
reg    ap_condition_1799;
reg    ap_condition_1805;
reg    ap_condition_1811;
reg    ap_condition_1817;
reg    ap_condition_1823;
reg    ap_condition_1828;
reg    ap_condition_1833;
reg    ap_condition_1838;
reg    ap_condition_1843;
reg    ap_condition_1848;
reg    ap_condition_1853;
reg    ap_condition_1858;
reg    ap_condition_1864;
reg    ap_condition_1869;
reg    ap_condition_1874;
reg    ap_condition_1882;
wire   [2:0] grp_fu_1506_p1;
wire   [2:0] grp_fu_1506_p3;
wire   [2:0] grp_fu_1506_p5;
wire  signed [2:0] grp_fu_1506_p7;
wire  signed [2:0] grp_fu_1506_p9;
wire  signed [2:0] grp_fu_1506_p11;
wire  signed [2:0] grp_fu_1506_p13;
wire   [2:0] grp_fu_1506_p15;
wire   [2:0] grp_fu_1549_p1;
wire   [2:0] grp_fu_1549_p3;
wire   [2:0] grp_fu_1549_p5;
wire  signed [2:0] grp_fu_1549_p7;
wire  signed [2:0] grp_fu_1549_p9;
wire  signed [2:0] grp_fu_1549_p11;
wire  signed [2:0] grp_fu_1549_p13;
wire   [2:0] grp_fu_1549_p15;
wire   [2:0] grp_fu_1624_p1;
wire   [2:0] grp_fu_1624_p3;
wire   [2:0] grp_fu_1624_p5;
wire  signed [2:0] grp_fu_1624_p7;
wire  signed [2:0] grp_fu_1624_p9;
wire  signed [2:0] grp_fu_1624_p11;
wire  signed [2:0] grp_fu_1624_p13;
wire   [2:0] grp_fu_1624_p15;
wire   [2:0] grp_fu_1667_p1;
wire   [2:0] grp_fu_1667_p3;
wire   [2:0] grp_fu_1667_p5;
wire  signed [2:0] grp_fu_1667_p7;
wire  signed [2:0] grp_fu_1667_p9;
wire  signed [2:0] grp_fu_1667_p11;
wire  signed [2:0] grp_fu_1667_p13;
wire   [2:0] grp_fu_1667_p15;
wire   [2:0] tmp_1_fu_1860_p1;
wire   [2:0] tmp_1_fu_1860_p3;
wire   [2:0] tmp_1_fu_1860_p5;
wire   [2:0] tmp_1_fu_1860_p7;
wire  signed [2:0] tmp_1_fu_1860_p9;
wire  signed [2:0] tmp_1_fu_1860_p11;
wire  signed [2:0] tmp_1_fu_1860_p13;
wire  signed [2:0] tmp_1_fu_1860_p15;
wire   [2:0] tmp_s_fu_2039_p1;
wire   [2:0] tmp_s_fu_2039_p3;
wire   [2:0] tmp_s_fu_2039_p5;
wire   [2:0] tmp_s_fu_2039_p7;
wire  signed [2:0] tmp_s_fu_2039_p9;
wire  signed [2:0] tmp_s_fu_2039_p11;
wire  signed [2:0] tmp_s_fu_2039_p13;
wire  signed [2:0] tmp_s_fu_2039_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 a_str_idx_fu_156 = 32'd0;
#0 b_idx_fu_160 = 32'd0;
#0 a_idx_fu_164 = 32'd0;
#0 ap_return_preg = 1'd0;
end
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_17_3_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 8 ),.CASE1( 3'h2 ),.din1_WIDTH( 8 ),.CASE2( 3'h3 ),.din2_WIDTH( 8 ),.CASE3( 3'h4 ),.din3_WIDTH( 8 ),.CASE4( 3'h5 ),.din4_WIDTH( 8 ),.CASE5( 3'h6 ),.din5_WIDTH( 8 ),.CASE6( 3'h7 ),.din6_WIDTH( 8 ),.CASE7( 3'h0 ),.din7_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 3 ),.dout_WIDTH( 8 ))
sparsemux_17_3_8_1_1_U69(.din0(SEQA_0_q0),.din1(SEQA_1_q0),.din2(SEQA_2_q0),.din3(SEQA_3_q0),.din4(SEQA_4_q0),.din5(SEQA_5_q0),.din6(SEQA_6_q0),.din7(SEQA_7_q0),.def(grp_fu_1506_p17),.sel(grp_fu_1506_p18),.dout(grp_fu_1506_p19));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_17_3_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 8 ),.CASE1( 3'h2 ),.din1_WIDTH( 8 ),.CASE2( 3'h3 ),.din2_WIDTH( 8 ),.CASE3( 3'h4 ),.din3_WIDTH( 8 ),.CASE4( 3'h5 ),.din4_WIDTH( 8 ),.CASE5( 3'h6 ),.din5_WIDTH( 8 ),.CASE6( 3'h7 ),.din6_WIDTH( 8 ),.CASE7( 3'h0 ),.din7_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 3 ),.dout_WIDTH( 8 ))
sparsemux_17_3_8_1_1_U70(.din0(SEQB_0_q0),.din1(SEQB_1_q0),.din2(SEQB_2_q0),.din3(SEQB_3_q0),.din4(SEQB_4_q0),.din5(SEQB_5_q0),.din6(SEQB_6_q0),.din7(SEQB_7_q0),.def(grp_fu_1549_p17),.sel(grp_fu_1549_p18),.dout(grp_fu_1549_p19));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_17_3_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 8 ),.CASE1( 3'h2 ),.din1_WIDTH( 8 ),.CASE2( 3'h3 ),.din2_WIDTH( 8 ),.CASE3( 3'h4 ),.din3_WIDTH( 8 ),.CASE4( 3'h5 ),.din4_WIDTH( 8 ),.CASE5( 3'h6 ),.din5_WIDTH( 8 ),.CASE6( 3'h7 ),.din6_WIDTH( 8 ),.CASE7( 3'h0 ),.din7_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 3 ),.dout_WIDTH( 8 ))
sparsemux_17_3_8_1_1_U71(.din0(SEQA_0_q0),.din1(SEQA_1_q0),.din2(SEQA_2_q0),.din3(SEQA_3_q0),.din4(SEQA_4_q0),.din5(SEQA_5_q0),.din6(SEQA_6_q0),.din7(SEQA_7_q0),.def(grp_fu_1624_p17),.sel(trunc_ln17_reg_2448),.dout(grp_fu_1624_p19));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_17_3_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 8 ),.CASE1( 3'h2 ),.din1_WIDTH( 8 ),.CASE2( 3'h3 ),.din2_WIDTH( 8 ),.CASE3( 3'h4 ),.din3_WIDTH( 8 ),.CASE4( 3'h5 ),.din4_WIDTH( 8 ),.CASE5( 3'h6 ),.din5_WIDTH( 8 ),.CASE6( 3'h7 ),.din6_WIDTH( 8 ),.CASE7( 3'h0 ),.din7_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 3 ),.dout_WIDTH( 8 ))
sparsemux_17_3_8_1_1_U72(.din0(SEQB_0_q0),.din1(SEQB_1_q0),.din2(SEQB_2_q0),.din3(SEQB_3_q0),.din4(SEQB_4_q0),.din5(SEQB_5_q0),.din6(SEQB_6_q0),.din7(SEQB_7_q0),.def(grp_fu_1667_p17),.sel(trunc_ln17_1_reg_2453),.dout(grp_fu_1667_p19));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_17_3_8_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 8 ),.CASE1( 3'h1 ),.din1_WIDTH( 8 ),.CASE2( 3'h2 ),.din2_WIDTH( 8 ),.CASE3( 3'h3 ),.din3_WIDTH( 8 ),.CASE4( 3'h4 ),.din4_WIDTH( 8 ),.CASE5( 3'h5 ),.din5_WIDTH( 8 ),.CASE6( 3'h6 ),.din6_WIDTH( 8 ),.CASE7( 3'h7 ),.din7_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 3 ),.dout_WIDTH( 8 ))
sparsemux_17_3_8_1_1_x_U73(.din0(ptr_0_q0),.din1(ptr_1_q0),.din2(ptr_2_q0),.din3(ptr_3_q0),.din4(ptr_4_q0),.din5(ptr_5_q0),.din6(ptr_6_q0),.din7(ptr_7_q0),.def(tmp_1_fu_1860_p17),.sel(trunc_ln64_reg_2185),.dout(tmp_1_fu_1860_p19));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_17_3_8_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 8 ),.CASE1( 3'h1 ),.din1_WIDTH( 8 ),.CASE2( 3'h2 ),.din2_WIDTH( 8 ),.CASE3( 3'h3 ),.din3_WIDTH( 8 ),.CASE4( 3'h4 ),.din4_WIDTH( 8 ),.CASE5( 3'h5 ),.din5_WIDTH( 8 ),.CASE6( 3'h6 ),.din6_WIDTH( 8 ),.CASE7( 3'h7 ),.din7_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 3 ),.dout_WIDTH( 8 ))
sparsemux_17_3_8_1_1_x_U74(.din0(ptr_0_q0),.din1(ptr_1_q0),.din2(ptr_2_q0),.din3(ptr_3_q0),.din4(ptr_4_q0),.din5(ptr_5_q0),.din6(ptr_6_q0),.din7(ptr_7_q0),.def(tmp_s_fu_2039_p17),.sel(trunc_ln64_1_reg_2462),.dout(tmp_s_fu_2039_p19));
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
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state5) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        if ((((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
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
            ap_return_preg <= UnifiedRetVal_reg_1463;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        UnifiedRetVal_reg_1463 <= 1'd0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        UnifiedRetVal_reg_1463 <= 1'd1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        a_idx_fu_164 <= 32'd128;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_idx_fu_164 <= ap_phi_reg_pp0_iter1_a_idx_7_reg_1439;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        a_str_idx_fu_156 <= 32'd0;
    end else if (((or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        a_str_idx_fu_156 <= b_str_idx_fu_2078_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((~(tmp_1_fu_1860_p19 == 8'd92) & ~(tmp_1_fu_1860_p19 == 8'd60) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_phi_reg_pp0_iter0_a_idx_4_reg_1415 <= a_idx_1_reg_2174;
    end else if ((((tmp_1_fu_1860_p19 == 8'd92) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_1_fu_1860_p19 == 8'd60) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        ap_phi_reg_pp0_iter0_a_idx_4_reg_1415 <= grp_fu_1476_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((tmp_1_fu_1860_p19 == 8'd60) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_phi_reg_pp0_iter0_b_idx_4_reg_1427 <= b_idx_1_reg_2167;
    end else if (((~(tmp_1_fu_1860_p19 == 8'd92) & ~(tmp_1_fu_1860_p19 == 8'd60) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_1_fu_1860_p19 == 8'd92) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        ap_phi_reg_pp0_iter0_b_idx_4_reg_1427 <= grp_fu_1491_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((~(tmp_s_fu_2039_p19 == 8'd92) & ~(tmp_s_fu_2039_p19 == 8'd60) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_phi_reg_pp0_iter1_a_idx_7_reg_1439 <= a_idx_4_reg_1415;
    end else if ((((tmp_s_fu_2039_p19 == 8'd92) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_s_fu_2039_p19 == 8'd60) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        ap_phi_reg_pp0_iter1_a_idx_7_reg_1439 <= grp_fu_1592_p2;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_phi_reg_pp0_iter1_a_idx_7_reg_1439 <= ap_phi_reg_pp0_iter0_a_idx_7_reg_1439;
    end
end
always @ (posedge ap_clk) begin
    if (((tmp_s_fu_2039_p19 == 8'd60) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_phi_reg_pp0_iter1_b_idx_7_reg_1451 <= b_idx_4_reg_1427;
    end else if (((~(tmp_s_fu_2039_p19 == 8'd92) & ~(tmp_s_fu_2039_p19 == 8'd60) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_s_fu_2039_p19 == 8'd92) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        ap_phi_reg_pp0_iter1_b_idx_7_reg_1451 <= grp_fu_1608_p2;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_phi_reg_pp0_iter1_b_idx_7_reg_1451 <= ap_phi_reg_pp0_iter0_b_idx_7_reg_1451;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        b_idx_fu_160 <= 32'd128;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_idx_fu_160 <= ap_phi_reg_pp0_iter1_b_idx_7_reg_1451;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_idx_1_reg_2174 <= a_idx_fu_164;
        b_idx_1_reg_2167 <= b_idx_fu_160;
        or_ln62_reg_2181 <= or_ln62_fu_1767_p2;
        trunc_ln64_reg_2185 <= trunc_ln64_fu_1805_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_idx_4_reg_1415 <= ap_phi_reg_pp0_iter0_a_idx_4_reg_1415;
        b_idx_4_reg_1427 <= ap_phi_reg_pp0_iter0_b_idx_4_reg_1427;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        b_str_idx_1_reg_2230 <= a_str_idx_fu_156;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        or_ln62_1_reg_2458 <= or_ln62_1_fu_1983_p2;
        trunc_ln17_1_reg_2453 <= trunc_ln17_1_fu_1959_p1;
        trunc_ln17_reg_2448 <= trunc_ln17_fu_1955_p1;
        trunc_ln64_1_reg_2462 <= trunc_ln64_1_fu_2013_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_1_reg_2284 <= tmp_1_fu_1860_p19;
        trunc_ln18_reg_2236 <= trunc_ln18_fu_1834_p1;
        zext_ln18_reg_2240[4 : 0] <= zext_ln18_fu_1848_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_s_reg_2507 <= tmp_s_fu_2039_p19;
    end
end
always @ (*) begin
    if (((or_ln62_reg_2181 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_1631)) begin
            SEQA_0_address0_local = zext_ln65_1_fu_2095_p1;
        end else if ((1'b1 == ap_condition_1625)) begin
            SEQA_0_address0_local = zext_ln71_1_fu_2083_p1;
        end else if ((1'b1 == ap_condition_1619)) begin
            SEQA_0_address0_local = zext_ln65_fu_1911_p1;
        end else if ((1'b1 == ap_condition_1615)) begin
            SEQA_0_address0_local = zext_ln71_fu_1899_p1;
        end else begin
            SEQA_0_address0_local = 'bx;
        end
    end else begin
        SEQA_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln17_reg_2448 == 3'd1) & (tmp_s_fu_2039_p19 == 8'd92) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((trunc_ln17_reg_2448 == 3'd1) & (tmp_s_fu_2039_p19 == 8'd60) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_1_fu_1860_p19 == 8'd92) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_1_fu_1860_p19 == 8'd60) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        SEQA_0_ce0_local = 1'b1;
    end else begin
        SEQA_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_2181 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_1643)) begin
            SEQA_1_address0_local = zext_ln65_1_fu_2095_p1;
        end else if ((1'b1 == ap_condition_1637)) begin
            SEQA_1_address0_local = zext_ln71_1_fu_2083_p1;
        end else if ((1'b1 == ap_condition_1619)) begin
            SEQA_1_address0_local = zext_ln65_fu_1911_p1;
        end else if ((1'b1 == ap_condition_1615)) begin
            SEQA_1_address0_local = zext_ln71_fu_1899_p1;
        end else begin
            SEQA_1_address0_local = 'bx;
        end
    end else begin
        SEQA_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln17_reg_2448 == 3'd2) & (tmp_s_fu_2039_p19 == 8'd92) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((trunc_ln17_reg_2448 == 3'd2) & (tmp_s_fu_2039_p19 == 8'd60) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_1_fu_1860_p19 == 8'd92) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_1_fu_1860_p19 == 8'd60) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        SEQA_1_ce0_local = 1'b1;
    end else begin
        SEQA_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_2181 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_1655)) begin
            SEQA_2_address0_local = zext_ln65_1_fu_2095_p1;
        end else if ((1'b1 == ap_condition_1649)) begin
            SEQA_2_address0_local = zext_ln71_1_fu_2083_p1;
        end else if ((1'b1 == ap_condition_1619)) begin
            SEQA_2_address0_local = zext_ln65_fu_1911_p1;
        end else if ((1'b1 == ap_condition_1615)) begin
            SEQA_2_address0_local = zext_ln71_fu_1899_p1;
        end else begin
            SEQA_2_address0_local = 'bx;
        end
    end else begin
        SEQA_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln17_reg_2448 == 3'd3) & (tmp_s_fu_2039_p19 == 8'd92) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((trunc_ln17_reg_2448 == 3'd3) & (tmp_s_fu_2039_p19 == 8'd60) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_1_fu_1860_p19 == 8'd92) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_1_fu_1860_p19 == 8'd60) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        SEQA_2_ce0_local = 1'b1;
    end else begin
        SEQA_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_2181 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_1667)) begin
            SEQA_3_address0_local = zext_ln65_1_fu_2095_p1;
        end else if ((1'b1 == ap_condition_1661)) begin
            SEQA_3_address0_local = zext_ln71_1_fu_2083_p1;
        end else if ((1'b1 == ap_condition_1619)) begin
            SEQA_3_address0_local = zext_ln65_fu_1911_p1;
        end else if ((1'b1 == ap_condition_1615)) begin
            SEQA_3_address0_local = zext_ln71_fu_1899_p1;
        end else begin
            SEQA_3_address0_local = 'bx;
        end
    end else begin
        SEQA_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln17_reg_2448 == 3'd4) & (tmp_s_fu_2039_p19 == 8'd92) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((trunc_ln17_reg_2448 == 3'd4) & (tmp_s_fu_2039_p19 == 8'd60) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_1_fu_1860_p19 == 8'd92) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_1_fu_1860_p19 == 8'd60) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        SEQA_3_ce0_local = 1'b1;
    end else begin
        SEQA_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_2181 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_1679)) begin
            SEQA_4_address0_local = zext_ln65_1_fu_2095_p1;
        end else if ((1'b1 == ap_condition_1673)) begin
            SEQA_4_address0_local = zext_ln71_1_fu_2083_p1;
        end else if ((1'b1 == ap_condition_1619)) begin
            SEQA_4_address0_local = zext_ln65_fu_1911_p1;
        end else if ((1'b1 == ap_condition_1615)) begin
            SEQA_4_address0_local = zext_ln71_fu_1899_p1;
        end else begin
            SEQA_4_address0_local = 'bx;
        end
    end else begin
        SEQA_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln17_reg_2448 == 3'd5) & (tmp_s_fu_2039_p19 == 8'd92) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((trunc_ln17_reg_2448 == 3'd5) & (tmp_s_fu_2039_p19 == 8'd60) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_1_fu_1860_p19 == 8'd92) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_1_fu_1860_p19 == 8'd60) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        SEQA_4_ce0_local = 1'b1;
    end else begin
        SEQA_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_2181 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_1691)) begin
            SEQA_5_address0_local = zext_ln65_1_fu_2095_p1;
        end else if ((1'b1 == ap_condition_1685)) begin
            SEQA_5_address0_local = zext_ln71_1_fu_2083_p1;
        end else if ((1'b1 == ap_condition_1619)) begin
            SEQA_5_address0_local = zext_ln65_fu_1911_p1;
        end else if ((1'b1 == ap_condition_1615)) begin
            SEQA_5_address0_local = zext_ln71_fu_1899_p1;
        end else begin
            SEQA_5_address0_local = 'bx;
        end
    end else begin
        SEQA_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln17_reg_2448 == 3'd6) & (tmp_s_fu_2039_p19 == 8'd92) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((trunc_ln17_reg_2448 == 3'd6) & (tmp_s_fu_2039_p19 == 8'd60) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_1_fu_1860_p19 == 8'd92) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_1_fu_1860_p19 == 8'd60) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        SEQA_5_ce0_local = 1'b1;
    end else begin
        SEQA_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_2181 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_1703)) begin
            SEQA_6_address0_local = zext_ln65_1_fu_2095_p1;
        end else if ((1'b1 == ap_condition_1697)) begin
            SEQA_6_address0_local = zext_ln71_1_fu_2083_p1;
        end else if ((1'b1 == ap_condition_1619)) begin
            SEQA_6_address0_local = zext_ln65_fu_1911_p1;
        end else if ((1'b1 == ap_condition_1615)) begin
            SEQA_6_address0_local = zext_ln71_fu_1899_p1;
        end else begin
            SEQA_6_address0_local = 'bx;
        end
    end else begin
        SEQA_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln17_reg_2448 == 3'd7) & (tmp_s_fu_2039_p19 == 8'd92) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((trunc_ln17_reg_2448 == 3'd7) & (tmp_s_fu_2039_p19 == 8'd60) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_1_fu_1860_p19 == 8'd92) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_1_fu_1860_p19 == 8'd60) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        SEQA_6_ce0_local = 1'b1;
    end else begin
        SEQA_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_2181 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_1715)) begin
            SEQA_7_address0_local = zext_ln65_1_fu_2095_p1;
        end else if ((1'b1 == ap_condition_1709)) begin
            SEQA_7_address0_local = zext_ln71_1_fu_2083_p1;
        end else if ((1'b1 == ap_condition_1619)) begin
            SEQA_7_address0_local = zext_ln65_fu_1911_p1;
        end else if ((1'b1 == ap_condition_1615)) begin
            SEQA_7_address0_local = zext_ln71_fu_1899_p1;
        end else begin
            SEQA_7_address0_local = 'bx;
        end
    end else begin
        SEQA_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln17_reg_2448 == 3'd0) & (tmp_s_fu_2039_p19 == 8'd92) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((trunc_ln17_reg_2448 == 3'd0) & (tmp_s_fu_2039_p19 == 8'd60) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_1_fu_1860_p19 == 8'd92) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_1_fu_1860_p19 == 8'd60) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        SEQA_7_ce0_local = 1'b1;
    end else begin
        SEQA_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_2181 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_1733)) begin
            SEQB_0_address0_local = zext_ln77_1_fu_2119_p1;
        end else if ((1'b1 == ap_condition_1726)) begin
            SEQB_0_address0_local = zext_ln66_1_fu_2107_p1;
        end else if ((1'b1 == ap_condition_1720)) begin
            SEQB_0_address0_local = zext_ln77_fu_1935_p1;
        end else if ((1'b1 == ap_condition_1619)) begin
            SEQB_0_address0_local = zext_ln66_fu_1923_p1;
        end else begin
            SEQB_0_address0_local = 'bx;
        end
    end else begin
        SEQB_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln17_1_reg_2453 == 3'd1) & (tmp_s_fu_2039_p19 == 8'd92) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(tmp_s_fu_2039_p19 == 8'd92) & ~(tmp_s_fu_2039_p19 == 8'd60) & (trunc_ln17_1_reg_2453 == 3'd1) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(tmp_1_fu_1860_p19 == 8'd92) & ~(tmp_1_fu_1860_p19 == 8'd60) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_1_fu_1860_p19 == 8'd92) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        SEQB_0_ce0_local = 1'b1;
    end else begin
        SEQB_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_2181 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_1745)) begin
            SEQB_1_address0_local = zext_ln77_1_fu_2119_p1;
        end else if ((1'b1 == ap_condition_1739)) begin
            SEQB_1_address0_local = zext_ln66_1_fu_2107_p1;
        end else if ((1'b1 == ap_condition_1720)) begin
            SEQB_1_address0_local = zext_ln77_fu_1935_p1;
        end else if ((1'b1 == ap_condition_1619)) begin
            SEQB_1_address0_local = zext_ln66_fu_1923_p1;
        end else begin
            SEQB_1_address0_local = 'bx;
        end
    end else begin
        SEQB_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln17_1_reg_2453 == 3'd2) & (tmp_s_fu_2039_p19 == 8'd92) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(tmp_s_fu_2039_p19 == 8'd92) & ~(tmp_s_fu_2039_p19 == 8'd60) & (trunc_ln17_1_reg_2453 == 3'd2) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(tmp_1_fu_1860_p19 == 8'd92) & ~(tmp_1_fu_1860_p19 == 8'd60) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_1_fu_1860_p19 == 8'd92) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        SEQB_1_ce0_local = 1'b1;
    end else begin
        SEQB_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_2181 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_1757)) begin
            SEQB_2_address0_local = zext_ln77_1_fu_2119_p1;
        end else if ((1'b1 == ap_condition_1751)) begin
            SEQB_2_address0_local = zext_ln66_1_fu_2107_p1;
        end else if ((1'b1 == ap_condition_1720)) begin
            SEQB_2_address0_local = zext_ln77_fu_1935_p1;
        end else if ((1'b1 == ap_condition_1619)) begin
            SEQB_2_address0_local = zext_ln66_fu_1923_p1;
        end else begin
            SEQB_2_address0_local = 'bx;
        end
    end else begin
        SEQB_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln17_1_reg_2453 == 3'd3) & (tmp_s_fu_2039_p19 == 8'd92) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(tmp_s_fu_2039_p19 == 8'd92) & ~(tmp_s_fu_2039_p19 == 8'd60) & (trunc_ln17_1_reg_2453 == 3'd3) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(tmp_1_fu_1860_p19 == 8'd92) & ~(tmp_1_fu_1860_p19 == 8'd60) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_1_fu_1860_p19 == 8'd92) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        SEQB_2_ce0_local = 1'b1;
    end else begin
        SEQB_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_2181 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_1769)) begin
            SEQB_3_address0_local = zext_ln77_1_fu_2119_p1;
        end else if ((1'b1 == ap_condition_1763)) begin
            SEQB_3_address0_local = zext_ln66_1_fu_2107_p1;
        end else if ((1'b1 == ap_condition_1720)) begin
            SEQB_3_address0_local = zext_ln77_fu_1935_p1;
        end else if ((1'b1 == ap_condition_1619)) begin
            SEQB_3_address0_local = zext_ln66_fu_1923_p1;
        end else begin
            SEQB_3_address0_local = 'bx;
        end
    end else begin
        SEQB_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln17_1_reg_2453 == 3'd4) & (tmp_s_fu_2039_p19 == 8'd92) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(tmp_s_fu_2039_p19 == 8'd92) & ~(tmp_s_fu_2039_p19 == 8'd60) & (trunc_ln17_1_reg_2453 == 3'd4) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(tmp_1_fu_1860_p19 == 8'd92) & ~(tmp_1_fu_1860_p19 == 8'd60) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_1_fu_1860_p19 == 8'd92) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        SEQB_3_ce0_local = 1'b1;
    end else begin
        SEQB_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_2181 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_1781)) begin
            SEQB_4_address0_local = zext_ln77_1_fu_2119_p1;
        end else if ((1'b1 == ap_condition_1775)) begin
            SEQB_4_address0_local = zext_ln66_1_fu_2107_p1;
        end else if ((1'b1 == ap_condition_1720)) begin
            SEQB_4_address0_local = zext_ln77_fu_1935_p1;
        end else if ((1'b1 == ap_condition_1619)) begin
            SEQB_4_address0_local = zext_ln66_fu_1923_p1;
        end else begin
            SEQB_4_address0_local = 'bx;
        end
    end else begin
        SEQB_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln17_1_reg_2453 == 3'd5) & (tmp_s_fu_2039_p19 == 8'd92) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(tmp_s_fu_2039_p19 == 8'd92) & ~(tmp_s_fu_2039_p19 == 8'd60) & (trunc_ln17_1_reg_2453 == 3'd5) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(tmp_1_fu_1860_p19 == 8'd92) & ~(tmp_1_fu_1860_p19 == 8'd60) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_1_fu_1860_p19 == 8'd92) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        SEQB_4_ce0_local = 1'b1;
    end else begin
        SEQB_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_2181 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_1793)) begin
            SEQB_5_address0_local = zext_ln77_1_fu_2119_p1;
        end else if ((1'b1 == ap_condition_1787)) begin
            SEQB_5_address0_local = zext_ln66_1_fu_2107_p1;
        end else if ((1'b1 == ap_condition_1720)) begin
            SEQB_5_address0_local = zext_ln77_fu_1935_p1;
        end else if ((1'b1 == ap_condition_1619)) begin
            SEQB_5_address0_local = zext_ln66_fu_1923_p1;
        end else begin
            SEQB_5_address0_local = 'bx;
        end
    end else begin
        SEQB_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln17_1_reg_2453 == 3'd6) & (tmp_s_fu_2039_p19 == 8'd92) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(tmp_s_fu_2039_p19 == 8'd92) & ~(tmp_s_fu_2039_p19 == 8'd60) & (trunc_ln17_1_reg_2453 == 3'd6) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(tmp_1_fu_1860_p19 == 8'd92) & ~(tmp_1_fu_1860_p19 == 8'd60) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_1_fu_1860_p19 == 8'd92) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        SEQB_5_ce0_local = 1'b1;
    end else begin
        SEQB_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_2181 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_1805)) begin
            SEQB_6_address0_local = zext_ln77_1_fu_2119_p1;
        end else if ((1'b1 == ap_condition_1799)) begin
            SEQB_6_address0_local = zext_ln66_1_fu_2107_p1;
        end else if ((1'b1 == ap_condition_1720)) begin
            SEQB_6_address0_local = zext_ln77_fu_1935_p1;
        end else if ((1'b1 == ap_condition_1619)) begin
            SEQB_6_address0_local = zext_ln66_fu_1923_p1;
        end else begin
            SEQB_6_address0_local = 'bx;
        end
    end else begin
        SEQB_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln17_1_reg_2453 == 3'd7) & (tmp_s_fu_2039_p19 == 8'd92) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(tmp_s_fu_2039_p19 == 8'd92) & ~(tmp_s_fu_2039_p19 == 8'd60) & (trunc_ln17_1_reg_2453 == 3'd7) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(tmp_1_fu_1860_p19 == 8'd92) & ~(tmp_1_fu_1860_p19 == 8'd60) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_1_fu_1860_p19 == 8'd92) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        SEQB_6_ce0_local = 1'b1;
    end else begin
        SEQB_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_2181 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_1817)) begin
            SEQB_7_address0_local = zext_ln77_1_fu_2119_p1;
        end else if ((1'b1 == ap_condition_1811)) begin
            SEQB_7_address0_local = zext_ln66_1_fu_2107_p1;
        end else if ((1'b1 == ap_condition_1720)) begin
            SEQB_7_address0_local = zext_ln77_fu_1935_p1;
        end else if ((1'b1 == ap_condition_1619)) begin
            SEQB_7_address0_local = zext_ln66_fu_1923_p1;
        end else begin
            SEQB_7_address0_local = 'bx;
        end
    end else begin
        SEQB_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln17_1_reg_2453 == 3'd0) & (tmp_s_fu_2039_p19 == 8'd92) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(tmp_s_fu_2039_p19 == 8'd92) & ~(tmp_s_fu_2039_p19 == 8'd60) & (trunc_ln17_1_reg_2453 == 3'd0) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | (~(tmp_1_fu_1860_p19 == 8'd92) & ~(tmp_1_fu_1860_p19 == 8'd60) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_1_fu_1860_p19 == 8'd92) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        SEQB_7_ce0_local = 1'b1;
    end else begin
        SEQB_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1828)) begin
            alignedA_0_address0_local = alignedA_0_addr_1_gep_fu_791_p3;
        end else if ((1'b1 == ap_condition_1823)) begin
            alignedA_0_address0_local = zext_ln18_reg_2240;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            alignedA_0_address0_local = zext_ln18_fu_1848_p1;
        end else begin
            alignedA_0_address0_local = 'bx;
        end
    end else begin
        alignedA_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_1_reg_2284 == 8'd92) & (trunc_ln18_reg_2236 == 3'd0) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_1_reg_2284 == 8'd60) & (trunc_ln18_reg_2236 == 3'd0) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        alignedA_0_ce0_local = 1'b1;
    end else begin
        alignedA_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_1_reg_2284 == 8'd92) & (trunc_ln18_reg_2236 == 3'd0) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_1_reg_2284 == 8'd60) & (trunc_ln18_reg_2236 == 3'd0) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        alignedA_0_d0_local = grp_fu_1506_p19;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        alignedA_0_d0_local = 8'd45;
    end else begin
        alignedA_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_1_reg_2284 == 8'd92) & (trunc_ln18_reg_2236 == 3'd0) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_1_reg_2284 == 8'd60) & (trunc_ln18_reg_2236 == 3'd0) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(tmp_1_fu_1860_p19 == 8'd92) & ~(tmp_1_fu_1860_p19 == 8'd60) & (trunc_ln18_fu_1834_p1 == 3'd0) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        alignedA_0_we0_local = 1'b1;
    end else begin
        alignedA_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd92) & (trunc_ln18_reg_2236 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedA_1_address0_local = alignedA_1_addr_1_gep_fu_1351_p3;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd60) & (trunc_ln18_reg_2236 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedA_1_address0_local = alignedA_1_addr_2_gep_fu_1303_p3;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        alignedA_1_address0_local = zext_ln18_reg_2240;
    end else begin
        alignedA_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd92) & (trunc_ln18_reg_2236 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd60) & (trunc_ln18_reg_2236 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        alignedA_1_ce0_local = 1'b1;
    end else begin
        alignedA_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd92) & (trunc_ln18_reg_2236 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd60) & (trunc_ln18_reg_2236 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        alignedA_1_d0_local = grp_fu_1624_p19;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        alignedA_1_d0_local = 8'd45;
    end else begin
        alignedA_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd92) & (trunc_ln18_reg_2236 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd60) & (trunc_ln18_reg_2236 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(tmp_s_fu_2039_p19 == 8'd92) & ~(tmp_s_fu_2039_p19 == 8'd60) & (trunc_ln18_reg_2236 == 3'd0) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        alignedA_1_we0_local = 1'b1;
    end else begin
        alignedA_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1838)) begin
            alignedA_2_address0_local = alignedA_2_addr_1_gep_fu_775_p3;
        end else if ((1'b1 == ap_condition_1833)) begin
            alignedA_2_address0_local = zext_ln18_reg_2240;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            alignedA_2_address0_local = zext_ln18_fu_1848_p1;
        end else begin
            alignedA_2_address0_local = 'bx;
        end
    end else begin
        alignedA_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_1_reg_2284 == 8'd92) & (trunc_ln18_reg_2236 == 3'd2) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_1_reg_2284 == 8'd60) & (trunc_ln18_reg_2236 == 3'd2) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        alignedA_2_ce0_local = 1'b1;
    end else begin
        alignedA_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_1_reg_2284 == 8'd92) & (trunc_ln18_reg_2236 == 3'd2) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_1_reg_2284 == 8'd60) & (trunc_ln18_reg_2236 == 3'd2) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        alignedA_2_d0_local = grp_fu_1506_p19;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        alignedA_2_d0_local = 8'd45;
    end else begin
        alignedA_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_1_reg_2284 == 8'd92) & (trunc_ln18_reg_2236 == 3'd2) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_1_reg_2284 == 8'd60) & (trunc_ln18_reg_2236 == 3'd2) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(tmp_1_fu_1860_p19 == 8'd92) & ~(tmp_1_fu_1860_p19 == 8'd60) & (trunc_ln18_fu_1834_p1 == 3'd2) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        alignedA_2_we0_local = 1'b1;
    end else begin
        alignedA_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd92) & (trunc_ln18_reg_2236 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedA_3_address0_local = alignedA_3_addr_1_gep_fu_1335_p3;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd60) & (trunc_ln18_reg_2236 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedA_3_address0_local = alignedA_3_addr_2_gep_fu_1295_p3;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        alignedA_3_address0_local = zext_ln18_reg_2240;
    end else begin
        alignedA_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd92) & (trunc_ln18_reg_2236 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd60) & (trunc_ln18_reg_2236 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        alignedA_3_ce0_local = 1'b1;
    end else begin
        alignedA_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd92) & (trunc_ln18_reg_2236 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd60) & (trunc_ln18_reg_2236 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        alignedA_3_d0_local = grp_fu_1624_p19;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        alignedA_3_d0_local = 8'd45;
    end else begin
        alignedA_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd92) & (trunc_ln18_reg_2236 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd60) & (trunc_ln18_reg_2236 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(tmp_s_fu_2039_p19 == 8'd92) & ~(tmp_s_fu_2039_p19 == 8'd60) & (trunc_ln18_reg_2236 == 3'd2) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        alignedA_3_we0_local = 1'b1;
    end else begin
        alignedA_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1848)) begin
            alignedA_4_address0_local = alignedA_4_addr_1_gep_fu_759_p3;
        end else if ((1'b1 == ap_condition_1843)) begin
            alignedA_4_address0_local = zext_ln18_reg_2240;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            alignedA_4_address0_local = zext_ln18_fu_1848_p1;
        end else begin
            alignedA_4_address0_local = 'bx;
        end
    end else begin
        alignedA_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_1_reg_2284 == 8'd92) & (trunc_ln18_reg_2236 == 3'd4) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_1_reg_2284 == 8'd60) & (trunc_ln18_reg_2236 == 3'd4) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        alignedA_4_ce0_local = 1'b1;
    end else begin
        alignedA_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_1_reg_2284 == 8'd92) & (trunc_ln18_reg_2236 == 3'd4) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_1_reg_2284 == 8'd60) & (trunc_ln18_reg_2236 == 3'd4) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        alignedA_4_d0_local = grp_fu_1506_p19;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        alignedA_4_d0_local = 8'd45;
    end else begin
        alignedA_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_1_reg_2284 == 8'd92) & (trunc_ln18_reg_2236 == 3'd4) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_1_reg_2284 == 8'd60) & (trunc_ln18_reg_2236 == 3'd4) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(tmp_1_fu_1860_p19 == 8'd92) & ~(tmp_1_fu_1860_p19 == 8'd60) & (trunc_ln18_fu_1834_p1 == 3'd4) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        alignedA_4_we0_local = 1'b1;
    end else begin
        alignedA_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd92) & (trunc_ln18_reg_2236 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedA_5_address0_local = alignedA_5_addr_1_gep_fu_1319_p3;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd60) & (trunc_ln18_reg_2236 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedA_5_address0_local = alignedA_5_addr_2_gep_fu_1287_p3;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        alignedA_5_address0_local = zext_ln18_reg_2240;
    end else begin
        alignedA_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd92) & (trunc_ln18_reg_2236 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd60) & (trunc_ln18_reg_2236 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        alignedA_5_ce0_local = 1'b1;
    end else begin
        alignedA_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd92) & (trunc_ln18_reg_2236 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd60) & (trunc_ln18_reg_2236 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        alignedA_5_d0_local = grp_fu_1624_p19;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        alignedA_5_d0_local = 8'd45;
    end else begin
        alignedA_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd92) & (trunc_ln18_reg_2236 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd60) & (trunc_ln18_reg_2236 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(tmp_s_fu_2039_p19 == 8'd92) & ~(tmp_s_fu_2039_p19 == 8'd60) & (trunc_ln18_reg_2236 == 3'd4) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        alignedA_5_we0_local = 1'b1;
    end else begin
        alignedA_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1858)) begin
            alignedA_6_address0_local = alignedA_6_addr_1_gep_fu_807_p3;
        end else if ((1'b1 == ap_condition_1853)) begin
            alignedA_6_address0_local = zext_ln18_reg_2240;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            alignedA_6_address0_local = zext_ln18_fu_1848_p1;
        end else begin
            alignedA_6_address0_local = 'bx;
        end
    end else begin
        alignedA_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln18_reg_2236 == 3'd0) & ~(trunc_ln18_reg_2236 == 3'd2) & ~(trunc_ln18_reg_2236 == 3'd4) & (tmp_1_reg_2284 == 8'd92) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln18_reg_2236 == 3'd0) & ~(trunc_ln18_reg_2236 == 3'd2) & ~(trunc_ln18_reg_2236 == 3'd4) & (tmp_1_reg_2284 == 8'd60) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        alignedA_6_ce0_local = 1'b1;
    end else begin
        alignedA_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(trunc_ln18_reg_2236 == 3'd0) & ~(trunc_ln18_reg_2236 == 3'd2) & ~(trunc_ln18_reg_2236 == 3'd4) & (tmp_1_reg_2284 == 8'd92) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln18_reg_2236 == 3'd0) & ~(trunc_ln18_reg_2236 == 3'd2) & ~(trunc_ln18_reg_2236 == 3'd4) & (tmp_1_reg_2284 == 8'd60) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        alignedA_6_d0_local = grp_fu_1506_p19;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        alignedA_6_d0_local = 8'd45;
    end else begin
        alignedA_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln18_reg_2236 == 3'd0) & ~(trunc_ln18_reg_2236 == 3'd2) & ~(trunc_ln18_reg_2236 == 3'd4) & (tmp_1_reg_2284 == 8'd92) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln18_reg_2236 == 3'd0) & ~(trunc_ln18_reg_2236 == 3'd2) & ~(trunc_ln18_reg_2236 == 3'd4) & (tmp_1_reg_2284 == 8'd60) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln18_fu_1834_p1 == 3'd0) & ~(trunc_ln18_fu_1834_p1 == 3'd2) & ~(trunc_ln18_fu_1834_p1 == 3'd4) & ~(tmp_1_fu_1860_p19 == 8'd92) & ~(tmp_1_fu_1860_p19 == 8'd60) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        alignedA_6_we0_local = 1'b1;
    end else begin
        alignedA_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln18_reg_2236 == 3'd0) & ~(trunc_ln18_reg_2236 == 3'd2) & ~(trunc_ln18_reg_2236 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd92) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedA_7_address0_local = alignedA_7_addr_1_gep_fu_1367_p3;
    end else if ((~(trunc_ln18_reg_2236 == 3'd0) & ~(trunc_ln18_reg_2236 == 3'd2) & ~(trunc_ln18_reg_2236 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd60) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedA_7_address0_local = alignedA_7_addr_2_gep_fu_1311_p3;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        alignedA_7_address0_local = zext_ln18_reg_2240;
    end else begin
        alignedA_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln18_reg_2236 == 3'd0) & ~(trunc_ln18_reg_2236 == 3'd2) & ~(trunc_ln18_reg_2236 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd92) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln18_reg_2236 == 3'd0) & ~(trunc_ln18_reg_2236 == 3'd2) & ~(trunc_ln18_reg_2236 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd60) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        alignedA_7_ce0_local = 1'b1;
    end else begin
        alignedA_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(trunc_ln18_reg_2236 == 3'd0) & ~(trunc_ln18_reg_2236 == 3'd2) & ~(trunc_ln18_reg_2236 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd92) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln18_reg_2236 == 3'd0) & ~(trunc_ln18_reg_2236 == 3'd2) & ~(trunc_ln18_reg_2236 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd60) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        alignedA_7_d0_local = grp_fu_1624_p19;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        alignedA_7_d0_local = 8'd45;
    end else begin
        alignedA_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln18_reg_2236 == 3'd0) & ~(trunc_ln18_reg_2236 == 3'd2) & ~(trunc_ln18_reg_2236 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd92) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln18_reg_2236 == 3'd0) & ~(trunc_ln18_reg_2236 == 3'd2) & ~(trunc_ln18_reg_2236 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd60) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln18_reg_2236 == 3'd0) & ~(trunc_ln18_reg_2236 == 3'd2) & ~(trunc_ln18_reg_2236 == 3'd4) & ~(tmp_s_fu_2039_p19 == 8'd92) & ~(tmp_s_fu_2039_p19 == 8'd60) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        alignedA_7_we0_local = 1'b1;
    end else begin
        alignedA_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1864)) begin
            alignedB_0_address0_local = alignedB_0_addr_gep_fu_839_p3;
        end else if ((1'b1 == ap_condition_1828)) begin
            alignedB_0_address0_local = zext_ln18_reg_2240;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            alignedB_0_address0_local = zext_ln18_fu_1848_p1;
        end else begin
            alignedB_0_address0_local = 'bx;
        end
    end else begin
        alignedB_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_2284 == 8'd92) & ~(tmp_1_reg_2284 == 8'd60) & (trunc_ln18_reg_2236 == 3'd0) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_1_reg_2284 == 8'd92) & (trunc_ln18_reg_2236 == 3'd0) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        alignedB_0_ce0_local = 1'b1;
    end else begin
        alignedB_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_2284 == 8'd92) & ~(tmp_1_reg_2284 == 8'd60) & (trunc_ln18_reg_2236 == 3'd0) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_1_reg_2284 == 8'd92) & (trunc_ln18_reg_2236 == 3'd0) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        alignedB_0_d0_local = grp_fu_1549_p19;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        alignedB_0_d0_local = 8'd45;
    end else begin
        alignedB_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_2284 == 8'd92) & ~(tmp_1_reg_2284 == 8'd60) & (trunc_ln18_reg_2236 == 3'd0) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_1_reg_2284 == 8'd92) & (trunc_ln18_reg_2236 == 3'd0) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln18_fu_1834_p1 == 3'd0) & (tmp_1_fu_1860_p19 == 8'd60) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        alignedB_0_we0_local = 1'b1;
    end else begin
        alignedB_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(tmp_s_reg_2507 == 8'd92) & ~(tmp_s_reg_2507 == 8'd60) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_2236 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_1_address0_local = alignedB_1_addr_gep_fu_1399_p3;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd92) & (trunc_ln18_reg_2236 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_1_address0_local = alignedB_1_addr_1_gep_fu_1359_p3;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        alignedB_1_address0_local = zext_ln18_reg_2240;
    end else begin
        alignedB_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_s_reg_2507 == 8'd92) & ~(tmp_s_reg_2507 == 8'd60) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_2236 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd92) & (trunc_ln18_reg_2236 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        alignedB_1_ce0_local = 1'b1;
    end else begin
        alignedB_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(tmp_s_reg_2507 == 8'd92) & ~(tmp_s_reg_2507 == 8'd60) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_2236 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd92) & (trunc_ln18_reg_2236 == 3'd0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        alignedB_1_d0_local = grp_fu_1667_p19;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        alignedB_1_d0_local = 8'd45;
    end else begin
        alignedB_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_s_reg_2507 == 8'd92) & ~(tmp_s_reg_2507 == 8'd60) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_2236 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln18_reg_2236 == 3'd0) & (tmp_s_fu_2039_p19 == 8'd60) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd92) & (trunc_ln18_reg_2236 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        alignedB_1_we0_local = 1'b1;
    end else begin
        alignedB_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1869)) begin
            alignedB_2_address0_local = alignedB_2_addr_gep_fu_831_p3;
        end else if ((1'b1 == ap_condition_1838)) begin
            alignedB_2_address0_local = zext_ln18_reg_2240;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            alignedB_2_address0_local = zext_ln18_fu_1848_p1;
        end else begin
            alignedB_2_address0_local = 'bx;
        end
    end else begin
        alignedB_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_2284 == 8'd92) & ~(tmp_1_reg_2284 == 8'd60) & (trunc_ln18_reg_2236 == 3'd2) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_1_reg_2284 == 8'd92) & (trunc_ln18_reg_2236 == 3'd2) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        alignedB_2_ce0_local = 1'b1;
    end else begin
        alignedB_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_2284 == 8'd92) & ~(tmp_1_reg_2284 == 8'd60) & (trunc_ln18_reg_2236 == 3'd2) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_1_reg_2284 == 8'd92) & (trunc_ln18_reg_2236 == 3'd2) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        alignedB_2_d0_local = grp_fu_1549_p19;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        alignedB_2_d0_local = 8'd45;
    end else begin
        alignedB_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_2284 == 8'd92) & ~(tmp_1_reg_2284 == 8'd60) & (trunc_ln18_reg_2236 == 3'd2) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_1_reg_2284 == 8'd92) & (trunc_ln18_reg_2236 == 3'd2) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln18_fu_1834_p1 == 3'd2) & (tmp_1_fu_1860_p19 == 8'd60) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        alignedB_2_we0_local = 1'b1;
    end else begin
        alignedB_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(tmp_s_reg_2507 == 8'd92) & ~(tmp_s_reg_2507 == 8'd60) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_2236 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_3_address0_local = alignedB_3_addr_gep_fu_1391_p3;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd92) & (trunc_ln18_reg_2236 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_3_address0_local = alignedB_3_addr_1_gep_fu_1343_p3;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        alignedB_3_address0_local = zext_ln18_reg_2240;
    end else begin
        alignedB_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_s_reg_2507 == 8'd92) & ~(tmp_s_reg_2507 == 8'd60) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_2236 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd92) & (trunc_ln18_reg_2236 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        alignedB_3_ce0_local = 1'b1;
    end else begin
        alignedB_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(tmp_s_reg_2507 == 8'd92) & ~(tmp_s_reg_2507 == 8'd60) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_2236 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd92) & (trunc_ln18_reg_2236 == 3'd2) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        alignedB_3_d0_local = grp_fu_1667_p19;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        alignedB_3_d0_local = 8'd45;
    end else begin
        alignedB_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_s_reg_2507 == 8'd92) & ~(tmp_s_reg_2507 == 8'd60) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_2236 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln18_reg_2236 == 3'd2) & (tmp_s_fu_2039_p19 == 8'd60) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd92) & (trunc_ln18_reg_2236 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        alignedB_3_we0_local = 1'b1;
    end else begin
        alignedB_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1874)) begin
            alignedB_4_address0_local = alignedB_4_addr_gep_fu_823_p3;
        end else if ((1'b1 == ap_condition_1848)) begin
            alignedB_4_address0_local = zext_ln18_reg_2240;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            alignedB_4_address0_local = zext_ln18_fu_1848_p1;
        end else begin
            alignedB_4_address0_local = 'bx;
        end
    end else begin
        alignedB_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_2284 == 8'd92) & ~(tmp_1_reg_2284 == 8'd60) & (trunc_ln18_reg_2236 == 3'd4) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_1_reg_2284 == 8'd92) & (trunc_ln18_reg_2236 == 3'd4) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        alignedB_4_ce0_local = 1'b1;
    end else begin
        alignedB_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_2284 == 8'd92) & ~(tmp_1_reg_2284 == 8'd60) & (trunc_ln18_reg_2236 == 3'd4) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_1_reg_2284 == 8'd92) & (trunc_ln18_reg_2236 == 3'd4) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        alignedB_4_d0_local = grp_fu_1549_p19;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        alignedB_4_d0_local = 8'd45;
    end else begin
        alignedB_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_2284 == 8'd92) & ~(tmp_1_reg_2284 == 8'd60) & (trunc_ln18_reg_2236 == 3'd4) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_1_reg_2284 == 8'd92) & (trunc_ln18_reg_2236 == 3'd4) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((trunc_ln18_fu_1834_p1 == 3'd4) & (tmp_1_fu_1860_p19 == 8'd60) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        alignedB_4_we0_local = 1'b1;
    end else begin
        alignedB_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(tmp_s_reg_2507 == 8'd92) & ~(tmp_s_reg_2507 == 8'd60) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_2236 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_5_address0_local = alignedB_5_addr_gep_fu_1383_p3;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd92) & (trunc_ln18_reg_2236 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_5_address0_local = alignedB_5_addr_1_gep_fu_1327_p3;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        alignedB_5_address0_local = zext_ln18_reg_2240;
    end else begin
        alignedB_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_s_reg_2507 == 8'd92) & ~(tmp_s_reg_2507 == 8'd60) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_2236 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd92) & (trunc_ln18_reg_2236 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        alignedB_5_ce0_local = 1'b1;
    end else begin
        alignedB_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(tmp_s_reg_2507 == 8'd92) & ~(tmp_s_reg_2507 == 8'd60) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_2236 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd92) & (trunc_ln18_reg_2236 == 3'd4) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        alignedB_5_d0_local = grp_fu_1667_p19;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        alignedB_5_d0_local = 8'd45;
    end else begin
        alignedB_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_s_reg_2507 == 8'd92) & ~(tmp_s_reg_2507 == 8'd60) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_2236 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln18_reg_2236 == 3'd4) & (tmp_s_fu_2039_p19 == 8'd60) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd92) & (trunc_ln18_reg_2236 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        alignedB_5_we0_local = 1'b1;
    end else begin
        alignedB_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1882)) begin
            alignedB_6_address0_local = alignedB_6_addr_gep_fu_847_p3;
        end else if ((1'b1 == ap_condition_1858)) begin
            alignedB_6_address0_local = zext_ln18_reg_2240;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            alignedB_6_address0_local = zext_ln18_fu_1848_p1;
        end else begin
            alignedB_6_address0_local = 'bx;
        end
    end else begin
        alignedB_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_2284 == 8'd92) & ~(trunc_ln18_reg_2236 == 3'd0) & ~(trunc_ln18_reg_2236 == 3'd2) & ~(trunc_ln18_reg_2236 == 3'd4) & ~(tmp_1_reg_2284 == 8'd60) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln18_reg_2236 == 3'd0) & ~(trunc_ln18_reg_2236 == 3'd2) & ~(trunc_ln18_reg_2236 == 3'd4) & (tmp_1_reg_2284 == 8'd92) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        alignedB_6_ce0_local = 1'b1;
    end else begin
        alignedB_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_2284 == 8'd92) & ~(trunc_ln18_reg_2236 == 3'd0) & ~(trunc_ln18_reg_2236 == 3'd2) & ~(trunc_ln18_reg_2236 == 3'd4) & ~(tmp_1_reg_2284 == 8'd60) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln18_reg_2236 == 3'd0) & ~(trunc_ln18_reg_2236 == 3'd2) & ~(trunc_ln18_reg_2236 == 3'd4) & (tmp_1_reg_2284 == 8'd92) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        alignedB_6_d0_local = grp_fu_1549_p19;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        alignedB_6_d0_local = 8'd45;
    end else begin
        alignedB_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_2284 == 8'd92) & ~(trunc_ln18_reg_2236 == 3'd0) & ~(trunc_ln18_reg_2236 == 3'd2) & ~(trunc_ln18_reg_2236 == 3'd4) & ~(tmp_1_reg_2284 == 8'd60) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln18_reg_2236 == 3'd0) & ~(trunc_ln18_reg_2236 == 3'd2) & ~(trunc_ln18_reg_2236 == 3'd4) & (tmp_1_reg_2284 == 8'd92) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln18_fu_1834_p1 == 3'd0) & ~(trunc_ln18_fu_1834_p1 == 3'd2) & ~(trunc_ln18_fu_1834_p1 == 3'd4) & (tmp_1_fu_1860_p19 == 8'd60) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        alignedB_6_we0_local = 1'b1;
    end else begin
        alignedB_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(tmp_s_reg_2507 == 8'd92) & ~(tmp_s_reg_2507 == 8'd60) & ~(trunc_ln18_reg_2236 == 3'd0) & ~(trunc_ln18_reg_2236 == 3'd2) & ~(trunc_ln18_reg_2236 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_7_address0_local = alignedB_7_addr_gep_fu_1407_p3;
    end else if ((~(trunc_ln18_reg_2236 == 3'd0) & ~(trunc_ln18_reg_2236 == 3'd2) & ~(trunc_ln18_reg_2236 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd92) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_7_address0_local = alignedB_7_addr_1_gep_fu_1375_p3;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        alignedB_7_address0_local = zext_ln18_reg_2240;
    end else begin
        alignedB_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_s_reg_2507 == 8'd92) & ~(tmp_s_reg_2507 == 8'd60) & ~(trunc_ln18_reg_2236 == 3'd0) & ~(trunc_ln18_reg_2236 == 3'd2) & ~(trunc_ln18_reg_2236 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln18_reg_2236 == 3'd0) & ~(trunc_ln18_reg_2236 == 3'd2) & ~(trunc_ln18_reg_2236 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd92) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        alignedB_7_ce0_local = 1'b1;
    end else begin
        alignedB_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(tmp_s_reg_2507 == 8'd92) & ~(tmp_s_reg_2507 == 8'd60) & ~(trunc_ln18_reg_2236 == 3'd0) & ~(trunc_ln18_reg_2236 == 3'd2) & ~(trunc_ln18_reg_2236 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln18_reg_2236 == 3'd0) & ~(trunc_ln18_reg_2236 == 3'd2) & ~(trunc_ln18_reg_2236 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd92) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        alignedB_7_d0_local = grp_fu_1667_p19;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        alignedB_7_d0_local = 8'd45;
    end else begin
        alignedB_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_s_reg_2507 == 8'd92) & ~(tmp_s_reg_2507 == 8'd60) & ~(trunc_ln18_reg_2236 == 3'd0) & ~(trunc_ln18_reg_2236 == 3'd2) & ~(trunc_ln18_reg_2236 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln18_reg_2236 == 3'd0) & ~(trunc_ln18_reg_2236 == 3'd2) & ~(trunc_ln18_reg_2236 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_s_reg_2507 == 8'd92) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln18_reg_2236 == 3'd0) & ~(trunc_ln18_reg_2236 == 3'd2) & ~(trunc_ln18_reg_2236 == 3'd4) & (tmp_s_fu_2039_p19 == 8'd60) & (or_ln62_1_reg_2458 == 1'd1) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        alignedB_7_we0_local = 1'b1;
    end else begin
        alignedB_7_we0_local = 1'b0;
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
    if (((ap_predicate_tran5to8_state5 == 1'b1) | (or_ln62_reg_2181 == 1'd0))) begin
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
        ap_return = UnifiedRetVal_reg_1463;
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
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ptr_0_address0_local = zext_ln64_1_fu_2027_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ptr_0_address0_local = zext_ln64_fu_1819_p1;
        end else begin
            ptr_0_address0_local = 'bx;
        end
    end else begin
        ptr_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        ptr_0_ce0_local = 1'b1;
    end else begin
        ptr_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ptr_1_address0_local = zext_ln64_1_fu_2027_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ptr_1_address0_local = zext_ln64_fu_1819_p1;
        end else begin
            ptr_1_address0_local = 'bx;
        end
    end else begin
        ptr_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        ptr_1_ce0_local = 1'b1;
    end else begin
        ptr_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ptr_2_address0_local = zext_ln64_1_fu_2027_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ptr_2_address0_local = zext_ln64_fu_1819_p1;
        end else begin
            ptr_2_address0_local = 'bx;
        end
    end else begin
        ptr_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        ptr_2_ce0_local = 1'b1;
    end else begin
        ptr_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ptr_3_address0_local = zext_ln64_1_fu_2027_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ptr_3_address0_local = zext_ln64_fu_1819_p1;
        end else begin
            ptr_3_address0_local = 'bx;
        end
    end else begin
        ptr_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        ptr_3_ce0_local = 1'b1;
    end else begin
        ptr_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ptr_4_address0_local = zext_ln64_1_fu_2027_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ptr_4_address0_local = zext_ln64_fu_1819_p1;
        end else begin
            ptr_4_address0_local = 'bx;
        end
    end else begin
        ptr_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        ptr_4_ce0_local = 1'b1;
    end else begin
        ptr_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ptr_5_address0_local = zext_ln64_1_fu_2027_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ptr_5_address0_local = zext_ln64_fu_1819_p1;
        end else begin
            ptr_5_address0_local = 'bx;
        end
    end else begin
        ptr_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        ptr_5_ce0_local = 1'b1;
    end else begin
        ptr_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ptr_6_address0_local = zext_ln64_1_fu_2027_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ptr_6_address0_local = zext_ln64_fu_1819_p1;
        end else begin
            ptr_6_address0_local = 'bx;
        end
    end else begin
        ptr_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        ptr_6_ce0_local = 1'b1;
    end else begin
        ptr_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ptr_7_address0_local = zext_ln64_1_fu_2027_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ptr_7_address0_local = zext_ln64_fu_1819_p1;
        end else begin
            ptr_7_address0_local = 'bx;
        end
    end else begin
        ptr_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        ptr_7_ce0_local = 1'b1;
    end else begin
        ptr_7_ce0_local = 1'b0;
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
            if ((~(((or_ln62_reg_2181 == 1'd0) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_predicate_tran5to8_state5 == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else if (((or_ln62_reg_2181 == 1'd0) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
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
assign add_ln64_1_fu_2007_p2 = (r_fu_2001_p2 + p_shl1_fu_1993_p3);
assign add_ln64_fu_1799_p2 = (r_1_fu_1793_p2 + trunc_ln18_3_fu_1773_p1);
assign alignedA_0_addr_1_gep_fu_791_p3 = zext_ln18_reg_2240;
assign alignedA_0_address0 = alignedA_0_address0_local;
assign alignedA_0_ce0 = alignedA_0_ce0_local;
assign alignedA_0_d0 = alignedA_0_d0_local;
assign alignedA_0_we0 = alignedA_0_we0_local;
assign alignedA_1_addr_1_gep_fu_1351_p3 = zext_ln18_reg_2240;
assign alignedA_1_addr_2_gep_fu_1303_p3 = zext_ln18_reg_2240;
assign alignedA_1_address0 = alignedA_1_address0_local;
assign alignedA_1_ce0 = alignedA_1_ce0_local;
assign alignedA_1_d0 = alignedA_1_d0_local;
assign alignedA_1_we0 = alignedA_1_we0_local;
assign alignedA_2_addr_1_gep_fu_775_p3 = zext_ln18_reg_2240;
assign alignedA_2_address0 = alignedA_2_address0_local;
assign alignedA_2_ce0 = alignedA_2_ce0_local;
assign alignedA_2_d0 = alignedA_2_d0_local;
assign alignedA_2_we0 = alignedA_2_we0_local;
assign alignedA_3_addr_1_gep_fu_1335_p3 = zext_ln18_reg_2240;
assign alignedA_3_addr_2_gep_fu_1295_p3 = zext_ln18_reg_2240;
assign alignedA_3_address0 = alignedA_3_address0_local;
assign alignedA_3_ce0 = alignedA_3_ce0_local;
assign alignedA_3_d0 = alignedA_3_d0_local;
assign alignedA_3_we0 = alignedA_3_we0_local;
assign alignedA_4_addr_1_gep_fu_759_p3 = zext_ln18_reg_2240;
assign alignedA_4_address0 = alignedA_4_address0_local;
assign alignedA_4_ce0 = alignedA_4_ce0_local;
assign alignedA_4_d0 = alignedA_4_d0_local;
assign alignedA_4_we0 = alignedA_4_we0_local;
assign alignedA_5_addr_1_gep_fu_1319_p3 = zext_ln18_reg_2240;
assign alignedA_5_addr_2_gep_fu_1287_p3 = zext_ln18_reg_2240;
assign alignedA_5_address0 = alignedA_5_address0_local;
assign alignedA_5_ce0 = alignedA_5_ce0_local;
assign alignedA_5_d0 = alignedA_5_d0_local;
assign alignedA_5_we0 = alignedA_5_we0_local;
assign alignedA_6_addr_1_gep_fu_807_p3 = zext_ln18_reg_2240;
assign alignedA_6_address0 = alignedA_6_address0_local;
assign alignedA_6_ce0 = alignedA_6_ce0_local;
assign alignedA_6_d0 = alignedA_6_d0_local;
assign alignedA_6_we0 = alignedA_6_we0_local;
assign alignedA_7_addr_1_gep_fu_1367_p3 = zext_ln18_reg_2240;
assign alignedA_7_addr_2_gep_fu_1311_p3 = zext_ln18_reg_2240;
assign alignedA_7_address0 = alignedA_7_address0_local;
assign alignedA_7_ce0 = alignedA_7_ce0_local;
assign alignedA_7_d0 = alignedA_7_d0_local;
assign alignedA_7_we0 = alignedA_7_we0_local;
assign alignedB_0_addr_gep_fu_839_p3 = zext_ln18_reg_2240;
assign alignedB_0_address0 = alignedB_0_address0_local;
assign alignedB_0_ce0 = alignedB_0_ce0_local;
assign alignedB_0_d0 = alignedB_0_d0_local;
assign alignedB_0_we0 = alignedB_0_we0_local;
assign alignedB_1_addr_1_gep_fu_1359_p3 = zext_ln18_reg_2240;
assign alignedB_1_addr_gep_fu_1399_p3 = zext_ln18_reg_2240;
assign alignedB_1_address0 = alignedB_1_address0_local;
assign alignedB_1_ce0 = alignedB_1_ce0_local;
assign alignedB_1_d0 = alignedB_1_d0_local;
assign alignedB_1_we0 = alignedB_1_we0_local;
assign alignedB_2_addr_gep_fu_831_p3 = zext_ln18_reg_2240;
assign alignedB_2_address0 = alignedB_2_address0_local;
assign alignedB_2_ce0 = alignedB_2_ce0_local;
assign alignedB_2_d0 = alignedB_2_d0_local;
assign alignedB_2_we0 = alignedB_2_we0_local;
assign alignedB_3_addr_1_gep_fu_1343_p3 = zext_ln18_reg_2240;
assign alignedB_3_addr_gep_fu_1391_p3 = zext_ln18_reg_2240;
assign alignedB_3_address0 = alignedB_3_address0_local;
assign alignedB_3_ce0 = alignedB_3_ce0_local;
assign alignedB_3_d0 = alignedB_3_d0_local;
assign alignedB_3_we0 = alignedB_3_we0_local;
assign alignedB_4_addr_gep_fu_823_p3 = zext_ln18_reg_2240;
assign alignedB_4_address0 = alignedB_4_address0_local;
assign alignedB_4_ce0 = alignedB_4_ce0_local;
assign alignedB_4_d0 = alignedB_4_d0_local;
assign alignedB_4_we0 = alignedB_4_we0_local;
assign alignedB_5_addr_1_gep_fu_1327_p3 = zext_ln18_reg_2240;
assign alignedB_5_addr_gep_fu_1383_p3 = zext_ln18_reg_2240;
assign alignedB_5_address0 = alignedB_5_address0_local;
assign alignedB_5_ce0 = alignedB_5_ce0_local;
assign alignedB_5_d0 = alignedB_5_d0_local;
assign alignedB_5_we0 = alignedB_5_we0_local;
assign alignedB_6_addr_gep_fu_847_p3 = zext_ln18_reg_2240;
assign alignedB_6_address0 = alignedB_6_address0_local;
assign alignedB_6_ce0 = alignedB_6_ce0_local;
assign alignedB_6_d0 = alignedB_6_d0_local;
assign alignedB_6_we0 = alignedB_6_we0_local;
assign alignedB_7_addr_1_gep_fu_1375_p3 = zext_ln18_reg_2240;
assign alignedB_7_addr_gep_fu_1407_p3 = zext_ln18_reg_2240;
assign alignedB_7_address0 = alignedB_7_address0_local;
assign alignedB_7_ce0 = alignedB_7_ce0_local;
assign alignedB_7_d0 = alignedB_7_d0_local;
assign alignedB_7_we0 = alignedB_7_we0_local;
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
    ap_condition_1615 = ((tmp_1_fu_1860_p19 == 8'd60) & (1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1619 = ((tmp_1_fu_1860_p19 == 8'd92) & (1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1625 = ((trunc_ln17_reg_2448 == 3'd1) & (tmp_s_fu_2039_p19 == 8'd60) & (or_ln62_1_reg_2458 == 1'd1) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1631 = ((trunc_ln17_reg_2448 == 3'd1) & (tmp_s_fu_2039_p19 == 8'd92) & (or_ln62_1_reg_2458 == 1'd1) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1637 = ((trunc_ln17_reg_2448 == 3'd2) & (tmp_s_fu_2039_p19 == 8'd60) & (or_ln62_1_reg_2458 == 1'd1) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1643 = ((trunc_ln17_reg_2448 == 3'd2) & (tmp_s_fu_2039_p19 == 8'd92) & (or_ln62_1_reg_2458 == 1'd1) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1649 = ((trunc_ln17_reg_2448 == 3'd3) & (tmp_s_fu_2039_p19 == 8'd60) & (or_ln62_1_reg_2458 == 1'd1) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1655 = ((trunc_ln17_reg_2448 == 3'd3) & (tmp_s_fu_2039_p19 == 8'd92) & (or_ln62_1_reg_2458 == 1'd1) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1661 = ((trunc_ln17_reg_2448 == 3'd4) & (tmp_s_fu_2039_p19 == 8'd60) & (or_ln62_1_reg_2458 == 1'd1) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1667 = ((trunc_ln17_reg_2448 == 3'd4) & (tmp_s_fu_2039_p19 == 8'd92) & (or_ln62_1_reg_2458 == 1'd1) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1673 = ((trunc_ln17_reg_2448 == 3'd5) & (tmp_s_fu_2039_p19 == 8'd60) & (or_ln62_1_reg_2458 == 1'd1) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1679 = ((trunc_ln17_reg_2448 == 3'd5) & (tmp_s_fu_2039_p19 == 8'd92) & (or_ln62_1_reg_2458 == 1'd1) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1685 = ((trunc_ln17_reg_2448 == 3'd6) & (tmp_s_fu_2039_p19 == 8'd60) & (or_ln62_1_reg_2458 == 1'd1) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1691 = ((trunc_ln17_reg_2448 == 3'd6) & (tmp_s_fu_2039_p19 == 8'd92) & (or_ln62_1_reg_2458 == 1'd1) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1697 = ((trunc_ln17_reg_2448 == 3'd7) & (tmp_s_fu_2039_p19 == 8'd60) & (or_ln62_1_reg_2458 == 1'd1) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1703 = ((trunc_ln17_reg_2448 == 3'd7) & (tmp_s_fu_2039_p19 == 8'd92) & (or_ln62_1_reg_2458 == 1'd1) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1709 = ((trunc_ln17_reg_2448 == 3'd0) & (tmp_s_fu_2039_p19 == 8'd60) & (or_ln62_1_reg_2458 == 1'd1) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1715 = ((trunc_ln17_reg_2448 == 3'd0) & (tmp_s_fu_2039_p19 == 8'd92) & (or_ln62_1_reg_2458 == 1'd1) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1720 = (~(tmp_1_fu_1860_p19 == 8'd92) & ~(tmp_1_fu_1860_p19 == 8'd60) & (1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1726 = ((trunc_ln17_1_reg_2453 == 3'd1) & (tmp_s_fu_2039_p19 == 8'd92) & (or_ln62_1_reg_2458 == 1'd1) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1733 = (~(tmp_s_fu_2039_p19 == 8'd92) & ~(tmp_s_fu_2039_p19 == 8'd60) & (trunc_ln17_1_reg_2453 == 3'd1) & (or_ln62_1_reg_2458 == 1'd1) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1739 = ((trunc_ln17_1_reg_2453 == 3'd2) & (tmp_s_fu_2039_p19 == 8'd92) & (or_ln62_1_reg_2458 == 1'd1) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1745 = (~(tmp_s_fu_2039_p19 == 8'd92) & ~(tmp_s_fu_2039_p19 == 8'd60) & (trunc_ln17_1_reg_2453 == 3'd2) & (or_ln62_1_reg_2458 == 1'd1) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1751 = ((trunc_ln17_1_reg_2453 == 3'd3) & (tmp_s_fu_2039_p19 == 8'd92) & (or_ln62_1_reg_2458 == 1'd1) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1757 = (~(tmp_s_fu_2039_p19 == 8'd92) & ~(tmp_s_fu_2039_p19 == 8'd60) & (trunc_ln17_1_reg_2453 == 3'd3) & (or_ln62_1_reg_2458 == 1'd1) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1763 = ((trunc_ln17_1_reg_2453 == 3'd4) & (tmp_s_fu_2039_p19 == 8'd92) & (or_ln62_1_reg_2458 == 1'd1) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1769 = (~(tmp_s_fu_2039_p19 == 8'd92) & ~(tmp_s_fu_2039_p19 == 8'd60) & (trunc_ln17_1_reg_2453 == 3'd4) & (or_ln62_1_reg_2458 == 1'd1) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1775 = ((trunc_ln17_1_reg_2453 == 3'd5) & (tmp_s_fu_2039_p19 == 8'd92) & (or_ln62_1_reg_2458 == 1'd1) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1781 = (~(tmp_s_fu_2039_p19 == 8'd92) & ~(tmp_s_fu_2039_p19 == 8'd60) & (trunc_ln17_1_reg_2453 == 3'd5) & (or_ln62_1_reg_2458 == 1'd1) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1787 = ((trunc_ln17_1_reg_2453 == 3'd6) & (tmp_s_fu_2039_p19 == 8'd92) & (or_ln62_1_reg_2458 == 1'd1) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1793 = (~(tmp_s_fu_2039_p19 == 8'd92) & ~(tmp_s_fu_2039_p19 == 8'd60) & (trunc_ln17_1_reg_2453 == 3'd6) & (or_ln62_1_reg_2458 == 1'd1) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1799 = ((trunc_ln17_1_reg_2453 == 3'd7) & (tmp_s_fu_2039_p19 == 8'd92) & (or_ln62_1_reg_2458 == 1'd1) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1805 = (~(tmp_s_fu_2039_p19 == 8'd92) & ~(tmp_s_fu_2039_p19 == 8'd60) & (trunc_ln17_1_reg_2453 == 3'd7) & (or_ln62_1_reg_2458 == 1'd1) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1811 = ((trunc_ln17_1_reg_2453 == 3'd0) & (tmp_s_fu_2039_p19 == 8'd92) & (or_ln62_1_reg_2458 == 1'd1) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1817 = (~(tmp_s_fu_2039_p19 == 8'd92) & ~(tmp_s_fu_2039_p19 == 8'd60) & (trunc_ln17_1_reg_2453 == 3'd0) & (or_ln62_1_reg_2458 == 1'd1) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4));
end
always @ (*) begin
    ap_condition_1823 = ((tmp_1_reg_2284 == 8'd60) & (trunc_ln18_reg_2236 == 3'd0) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1828 = ((tmp_1_reg_2284 == 8'd92) & (trunc_ln18_reg_2236 == 3'd0) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1833 = ((tmp_1_reg_2284 == 8'd60) & (trunc_ln18_reg_2236 == 3'd2) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1838 = ((tmp_1_reg_2284 == 8'd92) & (trunc_ln18_reg_2236 == 3'd2) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1843 = ((tmp_1_reg_2284 == 8'd60) & (trunc_ln18_reg_2236 == 3'd4) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1848 = ((tmp_1_reg_2284 == 8'd92) & (trunc_ln18_reg_2236 == 3'd4) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1853 = (~(trunc_ln18_reg_2236 == 3'd0) & ~(trunc_ln18_reg_2236 == 3'd2) & ~(trunc_ln18_reg_2236 == 3'd4) & (tmp_1_reg_2284 == 8'd60) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1858 = (~(trunc_ln18_reg_2236 == 3'd0) & ~(trunc_ln18_reg_2236 == 3'd2) & ~(trunc_ln18_reg_2236 == 3'd4) & (tmp_1_reg_2284 == 8'd92) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1864 = (~(tmp_1_reg_2284 == 8'd92) & ~(tmp_1_reg_2284 == 8'd60) & (trunc_ln18_reg_2236 == 3'd0) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1869 = (~(tmp_1_reg_2284 == 8'd92) & ~(tmp_1_reg_2284 == 8'd60) & (trunc_ln18_reg_2236 == 3'd2) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1874 = (~(tmp_1_reg_2284 == 8'd92) & ~(tmp_1_reg_2284 == 8'd60) & (trunc_ln18_reg_2236 == 3'd4) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1882 = (~(tmp_1_reg_2284 == 8'd92) & ~(trunc_ln18_reg_2236 == 3'd0) & ~(trunc_ln18_reg_2236 == 3'd2) & ~(trunc_ln18_reg_2236 == 3'd4) & ~(tmp_1_reg_2284 == 8'd60) & (or_ln62_reg_2181 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_phi_reg_pp0_iter0_a_idx_7_reg_1439 = 'bx;
assign ap_phi_reg_pp0_iter0_b_idx_7_reg_1451 = 'bx;
always @ (*) begin
    ap_predicate_tran5to8_state5 = ((or_ln62_1_fu_1983_p2 == 1'd0) & (or_ln62_reg_2181 == 1'd1));
end
assign b_str_idx_4_out = b_str_idx_1_reg_2230;
assign b_str_idx_fu_2078_p2 = (b_str_idx_1_reg_2230 + 32'd2);
assign grp_fu_1476_p2 = ($signed(a_idx_1_reg_2174) + $signed(32'd4294967295));
assign grp_fu_1481_p4 = {{grp_fu_1476_p2[6:3]}};
assign grp_fu_1491_p2 = ($signed(b_idx_1_reg_2167) + $signed(32'd4294967295));
assign grp_fu_1496_p4 = {{grp_fu_1491_p2[6:3]}};
assign grp_fu_1506_p17 = 'bx;
assign grp_fu_1506_p18 = a_idx_1_reg_2174[2:0];
assign grp_fu_1549_p17 = 'bx;
assign grp_fu_1549_p18 = b_idx_1_reg_2167[2:0];
assign grp_fu_1592_p2 = ($signed(a_idx_4_reg_1415) + $signed(32'd4294967295));
assign grp_fu_1598_p4 = {{grp_fu_1592_p2[6:3]}};
assign grp_fu_1608_p2 = ($signed(b_idx_4_reg_1427) + $signed(32'd4294967295));
assign grp_fu_1614_p4 = {{grp_fu_1608_p2[6:3]}};
assign grp_fu_1624_p17 = 'bx;
assign grp_fu_1667_p17 = 'bx;
assign icmp_ln62_1_fu_1761_p2 = (($signed(b_idx_fu_160) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_2_fu_1971_p2 = (($signed(ap_phi_reg_pp0_iter0_a_idx_4_reg_1415) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_3_fu_1977_p2 = (($signed(ap_phi_reg_pp0_iter0_b_idx_4_reg_1427) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_fu_1755_p2 = (($signed(a_idx_fu_164) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign lshr_ln64_1_fu_2017_p4 = {{add_ln64_1_fu_2007_p2[14:3]}};
assign lshr_ln6_fu_1838_p4 = {{a_str_idx_fu_156[7:3]}};
assign lshr_ln7_fu_1809_p4 = {{add_ln64_fu_1799_p2[14:3]}};
assign or_ln62_1_fu_1983_p2 = (icmp_ln62_3_fu_1977_p2 | icmp_ln62_2_fu_1971_p2);
assign or_ln62_fu_1767_p2 = (icmp_ln62_fu_1755_p2 | icmp_ln62_1_fu_1761_p2);
assign p_shl1_fu_1993_p3 = {{trunc_ln16_1_fu_1989_p1}, {7'd0}};
assign p_shl_fu_1785_p3 = {{trunc_ln16_fu_1781_p1}, {7'd0}};
assign ptr_0_address0 = ptr_0_address0_local;
assign ptr_0_ce0 = ptr_0_ce0_local;
assign ptr_1_address0 = ptr_1_address0_local;
assign ptr_1_ce0 = ptr_1_ce0_local;
assign ptr_2_address0 = ptr_2_address0_local;
assign ptr_2_ce0 = ptr_2_ce0_local;
assign ptr_3_address0 = ptr_3_address0_local;
assign ptr_3_ce0 = ptr_3_ce0_local;
assign ptr_4_address0 = ptr_4_address0_local;
assign ptr_4_ce0 = ptr_4_ce0_local;
assign ptr_5_address0 = ptr_5_address0_local;
assign ptr_5_ce0 = ptr_5_ce0_local;
assign ptr_6_address0 = ptr_6_address0_local;
assign ptr_6_ce0 = ptr_6_ce0_local;
assign ptr_7_address0 = ptr_7_address0_local;
assign ptr_7_ce0 = ptr_7_ce0_local;
assign r_1_fu_1793_p2 = (p_shl_fu_1785_p3 + trunc_ln18_4_fu_1777_p1);
assign r_fu_2001_p2 = (trunc_ln17_2_fu_1963_p1 + trunc_ln17_3_fu_1967_p1);
assign tmp_1_fu_1860_p17 = 'bx;
assign tmp_s_fu_2039_p17 = 'bx;
assign trunc_ln16_1_fu_1989_p1 = ap_phi_reg_pp0_iter0_b_idx_4_reg_1427[7:0];
assign trunc_ln16_fu_1781_p1 = b_idx_fu_160[7:0];
assign trunc_ln17_1_fu_1959_p1 = ap_phi_reg_pp0_iter0_b_idx_4_reg_1427[2:0];
assign trunc_ln17_2_fu_1963_p1 = ap_phi_reg_pp0_iter0_a_idx_4_reg_1415[14:0];
assign trunc_ln17_3_fu_1967_p1 = ap_phi_reg_pp0_iter0_b_idx_4_reg_1427[14:0];
assign trunc_ln17_fu_1955_p1 = ap_phi_reg_pp0_iter0_a_idx_4_reg_1415[2:0];
assign trunc_ln18_3_fu_1773_p1 = a_idx_fu_164[14:0];
assign trunc_ln18_4_fu_1777_p1 = b_idx_fu_160[14:0];
assign trunc_ln18_fu_1834_p1 = a_str_idx_fu_156[2:0];
assign trunc_ln64_1_fu_2013_p1 = add_ln64_1_fu_2007_p2[2:0];
assign trunc_ln64_fu_1805_p1 = add_ln64_fu_1799_p2[2:0];
assign zext_ln18_fu_1848_p1 = lshr_ln6_fu_1838_p4;
assign zext_ln64_1_fu_2027_p1 = lshr_ln64_1_fu_2017_p4;
assign zext_ln64_fu_1819_p1 = lshr_ln7_fu_1809_p4;
assign zext_ln65_1_fu_2095_p1 = grp_fu_1598_p4;
assign zext_ln65_fu_1911_p1 = grp_fu_1481_p4;
assign zext_ln66_1_fu_2107_p1 = grp_fu_1614_p4;
assign zext_ln66_fu_1923_p1 = grp_fu_1496_p4;
assign zext_ln71_1_fu_2083_p1 = grp_fu_1598_p4;
assign zext_ln71_fu_1899_p1 = grp_fu_1481_p4;
assign zext_ln77_1_fu_2119_p1 = grp_fu_1614_p4;
assign zext_ln77_fu_1935_p1 = grp_fu_1496_p4;
always @ (posedge ap_clk) begin
    zext_ln18_reg_2240[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
end
endmodule 