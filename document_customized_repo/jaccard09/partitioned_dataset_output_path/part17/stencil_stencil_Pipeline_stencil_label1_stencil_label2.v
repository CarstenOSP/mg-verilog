
module stencil_stencil_Pipeline_stencil_label1_stencil_label2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_15_address0,sol_15_ce0,sol_15_we0,sol_15_d0,sol_14_address0,sol_14_ce0,sol_14_we0,sol_14_d0,sol_13_address0,sol_13_ce0,sol_13_we0,sol_13_d0,sol_12_address0,sol_12_ce0,sol_12_we0,sol_12_d0,sol_11_address0,sol_11_ce0,sol_11_we0,sol_11_d0,sol_10_address0,sol_10_ce0,sol_10_we0,sol_10_d0,sol_9_address0,sol_9_ce0,sol_9_we0,sol_9_d0,sol_8_address0,sol_8_ce0,sol_8_we0,sol_8_d0,sol_7_address0,sol_7_ce0,sol_7_we0,sol_7_d0,sol_6_address0,sol_6_ce0,sol_6_we0,sol_6_d0,sol_5_address0,sol_5_ce0,sol_5_we0,sol_5_d0,sol_4_address0,sol_4_ce0,sol_4_we0,sol_4_d0,sol_3_address0,sol_3_ce0,sol_3_we0,sol_3_d0,sol_2_address0,sol_2_ce0,sol_2_we0,sol_2_d0,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,orig_2_address0,orig_2_ce0,orig_2_q0,orig_2_address1,orig_2_ce1,orig_2_q1,orig_3_address0,orig_3_ce0,orig_3_q0,orig_3_address1,orig_3_ce1,orig_3_q1,orig_4_address0,orig_4_ce0,orig_4_q0,orig_4_address1,orig_4_ce1,orig_4_q1,orig_5_address0,orig_5_ce0,orig_5_q0,orig_5_address1,orig_5_ce1,orig_5_q1,orig_6_address0,orig_6_ce0,orig_6_q0,orig_6_address1,orig_6_ce1,orig_6_q1,orig_7_address0,orig_7_ce0,orig_7_q0,orig_7_address1,orig_7_ce1,orig_7_q1,orig_8_address0,orig_8_ce0,orig_8_q0,orig_8_address1,orig_8_ce1,orig_8_q1,orig_9_address0,orig_9_ce0,orig_9_q0,orig_9_address1,orig_9_ce1,orig_9_q1,orig_10_address0,orig_10_ce0,orig_10_q0,orig_10_address1,orig_10_ce1,orig_10_q1,orig_11_address0,orig_11_ce0,orig_11_q0,orig_11_address1,orig_11_ce1,orig_11_q1,orig_12_address0,orig_12_ce0,orig_12_q0,orig_12_address1,orig_12_ce1,orig_12_q1,orig_13_address0,orig_13_ce0,orig_13_q0,orig_13_address1,orig_13_ce1,orig_13_q1,orig_14_address0,orig_14_ce0,orig_14_q0,orig_14_address1,orig_14_ce1,orig_14_q1,orig_15_address0,orig_15_ce0,orig_15_q0,orig_15_address1,orig_15_ce1,orig_15_q1,filter_load_7,filter_load_8,filter_load_2,filter_load_1,filter_load_5,filter_load_3,filter_load_4,filter_load_6,filter_load);  
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] sol_15_address0;
output   sol_15_ce0;
output   sol_15_we0;
output  [31:0] sol_15_d0;
output  [8:0] sol_14_address0;
output   sol_14_ce0;
output   sol_14_we0;
output  [31:0] sol_14_d0;
output  [8:0] sol_13_address0;
output   sol_13_ce0;
output   sol_13_we0;
output  [31:0] sol_13_d0;
output  [8:0] sol_12_address0;
output   sol_12_ce0;
output   sol_12_we0;
output  [31:0] sol_12_d0;
output  [8:0] sol_11_address0;
output   sol_11_ce0;
output   sol_11_we0;
output  [31:0] sol_11_d0;
output  [8:0] sol_10_address0;
output   sol_10_ce0;
output   sol_10_we0;
output  [31:0] sol_10_d0;
output  [8:0] sol_9_address0;
output   sol_9_ce0;
output   sol_9_we0;
output  [31:0] sol_9_d0;
output  [8:0] sol_8_address0;
output   sol_8_ce0;
output   sol_8_we0;
output  [31:0] sol_8_d0;
output  [8:0] sol_7_address0;
output   sol_7_ce0;
output   sol_7_we0;
output  [31:0] sol_7_d0;
output  [8:0] sol_6_address0;
output   sol_6_ce0;
output   sol_6_we0;
output  [31:0] sol_6_d0;
output  [8:0] sol_5_address0;
output   sol_5_ce0;
output   sol_5_we0;
output  [31:0] sol_5_d0;
output  [8:0] sol_4_address0;
output   sol_4_ce0;
output   sol_4_we0;
output  [31:0] sol_4_d0;
output  [8:0] sol_3_address0;
output   sol_3_ce0;
output   sol_3_we0;
output  [31:0] sol_3_d0;
output  [8:0] sol_2_address0;
output   sol_2_ce0;
output   sol_2_we0;
output  [31:0] sol_2_d0;
output  [8:0] sol_1_address0;
output   sol_1_ce0;
output   sol_1_we0;
output  [31:0] sol_1_d0;
output  [8:0] sol_0_address0;
output   sol_0_ce0;
output   sol_0_we0;
output  [31:0] sol_0_d0;
output  [8:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [8:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
output  [8:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [8:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
output  [8:0] orig_2_address0;
output   orig_2_ce0;
input  [31:0] orig_2_q0;
output  [8:0] orig_2_address1;
output   orig_2_ce1;
input  [31:0] orig_2_q1;
output  [8:0] orig_3_address0;
output   orig_3_ce0;
input  [31:0] orig_3_q0;
output  [8:0] orig_3_address1;
output   orig_3_ce1;
input  [31:0] orig_3_q1;
output  [8:0] orig_4_address0;
output   orig_4_ce0;
input  [31:0] orig_4_q0;
output  [8:0] orig_4_address1;
output   orig_4_ce1;
input  [31:0] orig_4_q1;
output  [8:0] orig_5_address0;
output   orig_5_ce0;
input  [31:0] orig_5_q0;
output  [8:0] orig_5_address1;
output   orig_5_ce1;
input  [31:0] orig_5_q1;
output  [8:0] orig_6_address0;
output   orig_6_ce0;
input  [31:0] orig_6_q0;
output  [8:0] orig_6_address1;
output   orig_6_ce1;
input  [31:0] orig_6_q1;
output  [8:0] orig_7_address0;
output   orig_7_ce0;
input  [31:0] orig_7_q0;
output  [8:0] orig_7_address1;
output   orig_7_ce1;
input  [31:0] orig_7_q1;
output  [8:0] orig_8_address0;
output   orig_8_ce0;
input  [31:0] orig_8_q0;
output  [8:0] orig_8_address1;
output   orig_8_ce1;
input  [31:0] orig_8_q1;
output  [8:0] orig_9_address0;
output   orig_9_ce0;
input  [31:0] orig_9_q0;
output  [8:0] orig_9_address1;
output   orig_9_ce1;
input  [31:0] orig_9_q1;
output  [8:0] orig_10_address0;
output   orig_10_ce0;
input  [31:0] orig_10_q0;
output  [8:0] orig_10_address1;
output   orig_10_ce1;
input  [31:0] orig_10_q1;
output  [8:0] orig_11_address0;
output   orig_11_ce0;
input  [31:0] orig_11_q0;
output  [8:0] orig_11_address1;
output   orig_11_ce1;
input  [31:0] orig_11_q1;
output  [8:0] orig_12_address0;
output   orig_12_ce0;
input  [31:0] orig_12_q0;
output  [8:0] orig_12_address1;
output   orig_12_ce1;
input  [31:0] orig_12_q1;
output  [8:0] orig_13_address0;
output   orig_13_ce0;
input  [31:0] orig_13_q0;
output  [8:0] orig_13_address1;
output   orig_13_ce1;
input  [31:0] orig_13_q1;
output  [8:0] orig_14_address0;
output   orig_14_ce0;
input  [31:0] orig_14_q0;
output  [8:0] orig_14_address1;
output   orig_14_ce1;
input  [31:0] orig_14_q1;
output  [8:0] orig_15_address0;
output   orig_15_ce0;
input  [31:0] orig_15_q0;
output  [8:0] orig_15_address1;
output   orig_15_ce1;
input  [31:0] orig_15_q1;
input  [31:0] filter_load_7;
input  [31:0] filter_load_8;
input  [31:0] filter_load_2;
input  [31:0] filter_load_1;
input  [31:0] filter_load_5;
input  [31:0] filter_load_3;
input  [31:0] filter_load_4;
input  [31:0] filter_load_6;
input  [31:0] filter_load;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
wire   [0:0] icmp_ln7_fu_2420_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_1774_p2;
reg   [31:0] reg_2007;
wire    ap_block_pp0_stage0_11001;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] grp_fu_1778_p2;
reg   [31:0] reg_2011;
wire   [31:0] grp_fu_1786_p2;
reg   [31:0] reg_2015;
wire   [5:0] select_ln4_fu_2048_p3;
reg   [5:0] select_ln4_reg_2829;
wire   [6:0] r_fu_2056_p3;
reg   [6:0] r_reg_2835;
wire   [3:0] trunc_ln8_fu_2072_p1;
reg   [3:0] trunc_ln8_reg_2844;
reg   [3:0] trunc_ln8_reg_2844_pp0_iter1_reg;
reg   [3:0] trunc_ln8_reg_2844_pp0_iter2_reg;
reg   [3:0] trunc_ln8_reg_2844_pp0_iter3_reg;
reg   [1:0] lshr_ln_reg_2854;
wire   [12:0] empty_fu_2098_p2;
reg   [12:0] empty_reg_2861;
wire   [12:0] empty_8_fu_2120_p2;
reg   [12:0] empty_8_reg_2867;
wire   [63:0] zext_ln12_fu_2148_p1;
reg   [63:0] zext_ln12_reg_2873;
reg   [63:0] zext_ln12_reg_2873_pp0_iter1_reg;
reg   [63:0] zext_ln12_reg_2873_pp0_iter2_reg;
reg   [63:0] zext_ln12_reg_2873_pp0_iter3_reg;
reg   [8:0] lshr_ln12_4_reg_3293;
wire   [8:0] add_ln12_5_fu_2342_p2;
reg   [8:0] add_ln12_5_reg_3298;
reg   [8:0] lshr_ln12_5_reg_3303;
wire   [0:0] icmp_ln8_fu_2409_p2;
reg   [0:0] icmp_ln8_reg_3388;
reg   [0:0] icmp_ln7_reg_3393;
reg   [0:0] icmp_ln7_reg_3393_pp0_iter1_reg;
reg   [0:0] icmp_ln7_reg_3393_pp0_iter2_reg;
reg   [0:0] icmp_ln7_reg_3393_pp0_iter3_reg;
wire  signed [31:0] tmp_fu_2445_p35;
reg  signed [31:0] tmp_reg_3397;
wire  signed [31:0] tmp_1_fu_2516_p35;
reg  signed [31:0] tmp_1_reg_3402;
wire  signed [31:0] tmp_2_fu_2587_p35;
reg  signed [31:0] tmp_2_reg_3407;
wire  signed [31:0] grp_fu_1794_p35;
reg  signed [31:0] tmp_3_reg_3412;
wire  signed [31:0] grp_fu_1865_p35;
reg  signed [31:0] tmp_4_reg_3417;
wire  signed [31:0] grp_fu_1936_p35;
reg  signed [31:0] tmp_8_reg_3662;
reg  signed [31:0] tmp_5_reg_3667;
reg  signed [31:0] tmp_6_reg_3672;
reg  signed [31:0] tmp_7_reg_3677;
wire   [31:0] grp_fu_1782_p2;
reg   [31:0] mul_ln13_3_reg_3682;
wire   [31:0] grp_fu_1790_p2;
reg   [31:0] mul_ln13_8_reg_3687;
reg   [31:0] mul_ln13_6_reg_3692;
wire   [31:0] add_ln13_5_fu_2721_p2;
reg   [31:0] add_ln13_5_reg_3697;
wire   [31:0] add_ln13_fu_2727_p2;
reg   [31:0] add_ln13_reg_3702;
wire   [31:0] add_ln13_1_fu_2733_p2;
reg   [31:0] add_ln13_1_reg_3707;
wire   [31:0] add_ln13_6_fu_2742_p2;
reg   [31:0] add_ln13_6_reg_3712;
wire   [31:0] temp_fu_2751_p2;
reg   [31:0] temp_reg_3717;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg   [0:0] ap_phi_mux_icmp_ln85_phi_fu_1767_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln12_1_fu_2184_p1;
wire   [63:0] zext_ln12_2_fu_2220_p1;
wire   [63:0] zext_ln12_4_fu_2257_p1;
wire   [63:0] zext_ln12_5_fu_2292_p1;
wire   [63:0] zext_ln12_10_fu_2378_p1;
wire   [63:0] zext_ln12_6_fu_2658_p1;
wire   [63:0] zext_ln12_8_fu_2677_p1;
wire   [63:0] zext_ln12_9_fu_2696_p1;
reg   [12:0] indvar_flatten2_fu_190;
wire   [12:0] add_ln7_1_fu_2398_p2;
reg   [6:0] r3_fu_194;
reg   [6:0] ap_sig_allocacmp_r3_load;
reg   [5:0] c4_fu_198;
wire   [5:0] c_fu_2404_p2;
reg   [5:0] ap_sig_allocacmp_c4_load;
reg   [6:0] add_ln76_fu_202;
wire   [6:0] add_ln7_fu_2415_p2;
reg   [6:0] ap_sig_allocacmp_add_ln76_load;
reg    orig_0_ce1_local;
reg   [8:0] orig_0_address1_local;
reg    orig_0_ce0_local;
reg   [8:0] orig_0_address0_local;
reg    orig_1_ce1_local;
reg   [8:0] orig_1_address1_local;
reg    orig_1_ce0_local;
reg   [8:0] orig_1_address0_local;
reg    orig_2_ce1_local;
reg   [8:0] orig_2_address1_local;
reg    orig_2_ce0_local;
reg   [8:0] orig_2_address0_local;
reg    orig_3_ce1_local;
reg   [8:0] orig_3_address1_local;
reg    orig_3_ce0_local;
reg   [8:0] orig_3_address0_local;
reg    orig_4_ce1_local;
reg   [8:0] orig_4_address1_local;
reg    orig_4_ce0_local;
reg   [8:0] orig_4_address0_local;
reg    orig_5_ce1_local;
reg   [8:0] orig_5_address1_local;
reg    orig_5_ce0_local;
reg   [8:0] orig_5_address0_local;
reg    orig_6_ce1_local;
reg   [8:0] orig_6_address1_local;
reg    orig_6_ce0_local;
reg   [8:0] orig_6_address0_local;
reg    orig_7_ce1_local;
reg   [8:0] orig_7_address1_local;
reg    orig_7_ce0_local;
reg   [8:0] orig_7_address0_local;
reg    orig_8_ce1_local;
reg   [8:0] orig_8_address1_local;
reg    orig_8_ce0_local;
reg   [8:0] orig_8_address0_local;
reg    orig_9_ce1_local;
reg   [8:0] orig_9_address1_local;
reg    orig_9_ce0_local;
reg   [8:0] orig_9_address0_local;
reg    orig_10_ce1_local;
reg   [8:0] orig_10_address1_local;
reg    orig_10_ce0_local;
reg   [8:0] orig_10_address0_local;
reg    orig_11_ce1_local;
reg   [8:0] orig_11_address1_local;
reg    orig_11_ce0_local;
reg   [8:0] orig_11_address0_local;
reg    orig_12_ce1_local;
reg   [8:0] orig_12_address1_local;
reg    orig_12_ce0_local;
reg   [8:0] orig_12_address0_local;
reg    orig_13_ce1_local;
reg   [8:0] orig_13_address1_local;
reg    orig_13_ce0_local;
reg   [8:0] orig_13_address0_local;
reg    orig_14_ce1_local;
reg   [8:0] orig_14_address1_local;
reg    orig_14_ce0_local;
reg   [8:0] orig_14_address0_local;
reg    orig_15_ce1_local;
reg   [8:0] orig_15_address1_local;
reg    orig_15_ce0_local;
reg   [8:0] orig_15_address0_local;
reg    sol_14_we0_local;
reg    sol_14_ce0_local;
reg    sol_13_we0_local;
reg    sol_13_ce0_local;
reg    sol_12_we0_local;
reg    sol_12_ce0_local;
reg    sol_11_we0_local;
reg    sol_11_ce0_local;
reg    sol_10_we0_local;
reg    sol_10_ce0_local;
reg    sol_9_we0_local;
reg    sol_9_ce0_local;
reg    sol_8_we0_local;
reg    sol_8_ce0_local;
reg    sol_7_we0_local;
reg    sol_7_ce0_local;
reg    sol_6_we0_local;
reg    sol_6_ce0_local;
reg    sol_5_we0_local;
reg    sol_5_ce0_local;
reg    sol_4_we0_local;
reg    sol_4_ce0_local;
reg    sol_3_we0_local;
reg    sol_3_ce0_local;
reg    sol_2_we0_local;
reg    sol_2_ce0_local;
reg    sol_1_we0_local;
reg    sol_1_ce0_local;
reg    sol_0_we0_local;
reg    sol_0_ce0_local;
reg    sol_15_we0_local;
reg    sol_15_ce0_local;
reg  signed [31:0] grp_fu_1774_p0;
reg  signed [31:0] grp_fu_1774_p1;
reg  signed [31:0] grp_fu_1778_p0;
reg  signed [31:0] grp_fu_1778_p1;
reg  signed [31:0] grp_fu_1782_p0;
reg  signed [31:0] grp_fu_1782_p1;
reg  signed [31:0] grp_fu_1786_p0;
reg  signed [31:0] grp_fu_1786_p1;
wire   [31:0] grp_fu_1794_p33;
reg   [3:0] grp_fu_1794_p34;
wire   [31:0] grp_fu_1865_p33;
reg   [3:0] grp_fu_1865_p34;
wire   [31:0] grp_fu_1936_p33;
reg   [3:0] grp_fu_1936_p34;
wire   [6:0] tmp1_cast_cast_fu_2086_p3;
wire   [12:0] tmp1_cast_cast_cast_fu_2094_p1;
wire   [12:0] tmp_s_fu_2064_p3;
wire   [6:0] select_ln4_cast1_fu_2104_p1;
wire   [7:0] tmp3_cast_cast_fu_2108_p3;
wire   [12:0] tmp3_cast_cast_cast_fu_2116_p1;
wire   [8:0] add_ln_fu_2142_p3;
wire   [12:0] tmp_9_fu_2136_p3;
wire   [12:0] add_ln12_fu_2168_p2;
wire   [8:0] lshr_ln12_1_fu_2174_p4;
wire   [12:0] add_ln12_1_fu_2204_p2;
wire   [8:0] lshr_ln12_2_fu_2210_p4;
wire   [2:0] zext_ln12_3_cast_fu_2240_p3;
wire   [8:0] zext_ln12_3_fu_2247_p1;
wire   [8:0] p_udiv1_fu_2129_p3;
wire   [8:0] add_ln12_2_fu_2251_p2;
wire   [12:0] add_ln12_3_fu_2277_p2;
wire   [8:0] lshr_ln12_3_fu_2282_p4;
wire   [12:0] add_ln12_4_fu_2312_p2;
wire   [2:0] zext_ln12_7_fu_2327_p1;
wire   [3:0] zext_ln12_7_cast_fu_2330_p3;
wire   [8:0] zext_ln12_11_fu_2338_p1;
wire   [12:0] add_ln12_6_fu_2348_p2;
wire   [12:0] add_ln12_7_fu_2363_p2;
wire   [8:0] lshr_ln12_6_fu_2368_p4;
wire   [31:0] tmp_fu_2445_p33;
wire   [31:0] tmp_1_fu_2516_p33;
wire   [31:0] tmp_2_fu_2587_p33;
wire   [31:0] add_ln13_4_fu_2715_p2;
wire   [31:0] add_ln13_3_fu_2738_p2;
wire   [31:0] add_ln13_2_fu_2747_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter4_stage0;
reg    ap_idle_pp0_0to3;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to4;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1704;
reg    ap_condition_770;
wire   [3:0] grp_fu_1794_p1;
wire   [3:0] grp_fu_1794_p3;
wire   [3:0] grp_fu_1794_p5;
wire   [3:0] grp_fu_1794_p7;
wire   [3:0] grp_fu_1794_p9;
wire   [3:0] grp_fu_1794_p11;
wire   [3:0] grp_fu_1794_p13;
wire   [3:0] grp_fu_1794_p15;
wire  signed [3:0] grp_fu_1794_p17;
wire  signed [3:0] grp_fu_1794_p19;
wire  signed [3:0] grp_fu_1794_p21;
wire  signed [3:0] grp_fu_1794_p23;
wire  signed [3:0] grp_fu_1794_p25;
wire  signed [3:0] grp_fu_1794_p27;
wire  signed [3:0] grp_fu_1794_p29;
wire  signed [3:0] grp_fu_1794_p31;
wire  signed [3:0] grp_fu_1865_p1;
wire   [3:0] grp_fu_1865_p3;
wire   [3:0] grp_fu_1865_p5;
wire   [3:0] grp_fu_1865_p7;
wire   [3:0] grp_fu_1865_p9;
wire   [3:0] grp_fu_1865_p11;
wire   [3:0] grp_fu_1865_p13;
wire   [3:0] grp_fu_1865_p15;
wire   [3:0] grp_fu_1865_p17;
wire  signed [3:0] grp_fu_1865_p19;
wire  signed [3:0] grp_fu_1865_p21;
wire  signed [3:0] grp_fu_1865_p23;
wire  signed [3:0] grp_fu_1865_p25;
wire  signed [3:0] grp_fu_1865_p27;
wire  signed [3:0] grp_fu_1865_p29;
wire  signed [3:0] grp_fu_1865_p31;
wire  signed [3:0] grp_fu_1936_p1;
wire  signed [3:0] grp_fu_1936_p3;
wire   [3:0] grp_fu_1936_p5;
wire   [3:0] grp_fu_1936_p7;
wire   [3:0] grp_fu_1936_p9;
wire   [3:0] grp_fu_1936_p11;
wire   [3:0] grp_fu_1936_p13;
wire   [3:0] grp_fu_1936_p15;
wire   [3:0] grp_fu_1936_p17;
wire   [3:0] grp_fu_1936_p19;
wire  signed [3:0] grp_fu_1936_p21;
wire  signed [3:0] grp_fu_1936_p23;
wire  signed [3:0] grp_fu_1936_p25;
wire  signed [3:0] grp_fu_1936_p27;
wire  signed [3:0] grp_fu_1936_p29;
wire  signed [3:0] grp_fu_1936_p31;
wire   [3:0] tmp_fu_2445_p1;
wire   [3:0] tmp_fu_2445_p3;
wire   [3:0] tmp_fu_2445_p5;
wire   [3:0] tmp_fu_2445_p7;
wire   [3:0] tmp_fu_2445_p9;
wire   [3:0] tmp_fu_2445_p11;
wire   [3:0] tmp_fu_2445_p13;
wire   [3:0] tmp_fu_2445_p15;
wire  signed [3:0] tmp_fu_2445_p17;
wire  signed [3:0] tmp_fu_2445_p19;
wire  signed [3:0] tmp_fu_2445_p21;
wire  signed [3:0] tmp_fu_2445_p23;
wire  signed [3:0] tmp_fu_2445_p25;
wire  signed [3:0] tmp_fu_2445_p27;
wire  signed [3:0] tmp_fu_2445_p29;
wire  signed [3:0] tmp_fu_2445_p31;
wire  signed [3:0] tmp_1_fu_2516_p1;
wire   [3:0] tmp_1_fu_2516_p3;
wire   [3:0] tmp_1_fu_2516_p5;
wire   [3:0] tmp_1_fu_2516_p7;
wire   [3:0] tmp_1_fu_2516_p9;
wire   [3:0] tmp_1_fu_2516_p11;
wire   [3:0] tmp_1_fu_2516_p13;
wire   [3:0] tmp_1_fu_2516_p15;
wire   [3:0] tmp_1_fu_2516_p17;
wire  signed [3:0] tmp_1_fu_2516_p19;
wire  signed [3:0] tmp_1_fu_2516_p21;
wire  signed [3:0] tmp_1_fu_2516_p23;
wire  signed [3:0] tmp_1_fu_2516_p25;
wire  signed [3:0] tmp_1_fu_2516_p27;
wire  signed [3:0] tmp_1_fu_2516_p29;
wire  signed [3:0] tmp_1_fu_2516_p31;
wire  signed [3:0] tmp_2_fu_2587_p1;
wire  signed [3:0] tmp_2_fu_2587_p3;
wire   [3:0] tmp_2_fu_2587_p5;
wire   [3:0] tmp_2_fu_2587_p7;
wire   [3:0] tmp_2_fu_2587_p9;
wire   [3:0] tmp_2_fu_2587_p11;
wire   [3:0] tmp_2_fu_2587_p13;
wire   [3:0] tmp_2_fu_2587_p15;
wire   [3:0] tmp_2_fu_2587_p17;
wire   [3:0] tmp_2_fu_2587_p19;
wire  signed [3:0] tmp_2_fu_2587_p21;
wire  signed [3:0] tmp_2_fu_2587_p23;
wire  signed [3:0] tmp_2_fu_2587_p25;
wire  signed [3:0] tmp_2_fu_2587_p27;
wire  signed [3:0] tmp_2_fu_2587_p29;
wire  signed [3:0] tmp_2_fu_2587_p31;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 indvar_flatten2_fu_190 = 13'd0;
#0 r3_fu_194 = 7'd0;
#0 c4_fu_198 = 6'd0;
#0 add_ln76_fu_202 = 7'd0;
#0 ap_done_reg = 1'b0;
end
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1774_p0),.din1(grp_fu_1774_p1),.ce(1'b1),.dout(grp_fu_1774_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1778_p0),.din1(grp_fu_1778_p1),.ce(1'b1),.dout(grp_fu_1778_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1782_p0),.din1(grp_fu_1782_p1),.ce(1'b1),.dout(grp_fu_1782_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1786_p0),.din1(grp_fu_1786_p1),.ce(1'b1),.dout(grp_fu_1786_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U5(.clk(ap_clk),.reset(ap_rst),.din0(filter_load),.din1(tmp_reg_3397),.ce(1'b1),.dout(grp_fu_1790_p2));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_33_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h1 ),.din1_WIDTH( 32 ),.CASE2( 4'h2 ),.din2_WIDTH( 32 ),.CASE3( 4'h3 ),.din3_WIDTH( 32 ),.CASE4( 4'h4 ),.din4_WIDTH( 32 ),.CASE5( 4'h5 ),.din5_WIDTH( 32 ),.CASE6( 4'h6 ),.din6_WIDTH( 32 ),.CASE7( 4'h7 ),.din7_WIDTH( 32 ),.CASE8( 4'h8 ),.din8_WIDTH( 32 ),.CASE9( 4'h9 ),.din9_WIDTH( 32 ),.CASE10( 4'hA ),.din10_WIDTH( 32 ),.CASE11( 4'hB ),.din11_WIDTH( 32 ),.CASE12( 4'hC ),.din12_WIDTH( 32 ),.CASE13( 4'hD ),.din13_WIDTH( 32 ),.CASE14( 4'hE ),.din14_WIDTH( 32 ),.CASE15( 4'hF ),.din15_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_33_4_32_1_1_U6(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.din4(orig_4_q0),.din5(orig_5_q0),.din6(orig_6_q0),.din7(orig_7_q0),.din8(orig_8_q0),.din9(orig_9_q0),.din10(orig_10_q0),.din11(orig_11_q0),.din12(orig_12_q0),.din13(orig_13_q0),.din14(orig_14_q0),.din15(orig_15_q0),.def(grp_fu_1794_p33),.sel(grp_fu_1794_p34),.dout(grp_fu_1794_p35));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_33_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hF ),.din0_WIDTH( 32 ),.CASE1( 4'h0 ),.din1_WIDTH( 32 ),.CASE2( 4'h1 ),.din2_WIDTH( 32 ),.CASE3( 4'h2 ),.din3_WIDTH( 32 ),.CASE4( 4'h3 ),.din4_WIDTH( 32 ),.CASE5( 4'h4 ),.din5_WIDTH( 32 ),.CASE6( 4'h5 ),.din6_WIDTH( 32 ),.CASE7( 4'h6 ),.din7_WIDTH( 32 ),.CASE8( 4'h7 ),.din8_WIDTH( 32 ),.CASE9( 4'h8 ),.din9_WIDTH( 32 ),.CASE10( 4'h9 ),.din10_WIDTH( 32 ),.CASE11( 4'hA ),.din11_WIDTH( 32 ),.CASE12( 4'hB ),.din12_WIDTH( 32 ),.CASE13( 4'hC ),.din13_WIDTH( 32 ),.CASE14( 4'hD ),.din14_WIDTH( 32 ),.CASE15( 4'hE ),.din15_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_33_4_32_1_1_U7(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.din4(orig_4_q0),.din5(orig_5_q0),.din6(orig_6_q0),.din7(orig_7_q0),.din8(orig_8_q0),.din9(orig_9_q0),.din10(orig_10_q0),.din11(orig_11_q0),.din12(orig_12_q0),.din13(orig_13_q0),.din14(orig_14_q0),.din15(orig_15_q0),.def(grp_fu_1865_p33),.sel(grp_fu_1865_p34),.dout(grp_fu_1865_p35));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_33_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hE ),.din0_WIDTH( 32 ),.CASE1( 4'hF ),.din1_WIDTH( 32 ),.CASE2( 4'h0 ),.din2_WIDTH( 32 ),.CASE3( 4'h1 ),.din3_WIDTH( 32 ),.CASE4( 4'h2 ),.din4_WIDTH( 32 ),.CASE5( 4'h3 ),.din5_WIDTH( 32 ),.CASE6( 4'h4 ),.din6_WIDTH( 32 ),.CASE7( 4'h5 ),.din7_WIDTH( 32 ),.CASE8( 4'h6 ),.din8_WIDTH( 32 ),.CASE9( 4'h7 ),.din9_WIDTH( 32 ),.CASE10( 4'h8 ),.din10_WIDTH( 32 ),.CASE11( 4'h9 ),.din11_WIDTH( 32 ),.CASE12( 4'hA ),.din12_WIDTH( 32 ),.CASE13( 4'hB ),.din13_WIDTH( 32 ),.CASE14( 4'hC ),.din14_WIDTH( 32 ),.CASE15( 4'hD ),.din15_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_33_4_32_1_1_U8(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.din4(orig_4_q0),.din5(orig_5_q0),.din6(orig_6_q0),.din7(orig_7_q0),.din8(orig_8_q0),.din9(orig_9_q0),.din10(orig_10_q0),.din11(orig_11_q0),.din12(orig_12_q0),.din13(orig_13_q0),.din14(orig_14_q0),.din15(orig_15_q0),.def(grp_fu_1936_p33),.sel(grp_fu_1936_p34),.dout(grp_fu_1936_p35));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_33_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h1 ),.din1_WIDTH( 32 ),.CASE2( 4'h2 ),.din2_WIDTH( 32 ),.CASE3( 4'h3 ),.din3_WIDTH( 32 ),.CASE4( 4'h4 ),.din4_WIDTH( 32 ),.CASE5( 4'h5 ),.din5_WIDTH( 32 ),.CASE6( 4'h6 ),.din6_WIDTH( 32 ),.CASE7( 4'h7 ),.din7_WIDTH( 32 ),.CASE8( 4'h8 ),.din8_WIDTH( 32 ),.CASE9( 4'h9 ),.din9_WIDTH( 32 ),.CASE10( 4'hA ),.din10_WIDTH( 32 ),.CASE11( 4'hB ),.din11_WIDTH( 32 ),.CASE12( 4'hC ),.din12_WIDTH( 32 ),.CASE13( 4'hD ),.din13_WIDTH( 32 ),.CASE14( 4'hE ),.din14_WIDTH( 32 ),.CASE15( 4'hF ),.din15_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_33_4_32_1_1_U9(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.din4(orig_4_q1),.din5(orig_5_q1),.din6(orig_6_q1),.din7(orig_7_q1),.din8(orig_8_q1),.din9(orig_9_q1),.din10(orig_10_q1),.din11(orig_11_q1),.din12(orig_12_q1),.din13(orig_13_q1),.din14(orig_14_q1),.din15(orig_15_q1),.def(tmp_fu_2445_p33),.sel(trunc_ln8_reg_2844),.dout(tmp_fu_2445_p35));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_33_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hF ),.din0_WIDTH( 32 ),.CASE1( 4'h0 ),.din1_WIDTH( 32 ),.CASE2( 4'h1 ),.din2_WIDTH( 32 ),.CASE3( 4'h2 ),.din3_WIDTH( 32 ),.CASE4( 4'h3 ),.din4_WIDTH( 32 ),.CASE5( 4'h4 ),.din5_WIDTH( 32 ),.CASE6( 4'h5 ),.din6_WIDTH( 32 ),.CASE7( 4'h6 ),.din7_WIDTH( 32 ),.CASE8( 4'h7 ),.din8_WIDTH( 32 ),.CASE9( 4'h8 ),.din9_WIDTH( 32 ),.CASE10( 4'h9 ),.din10_WIDTH( 32 ),.CASE11( 4'hA ),.din11_WIDTH( 32 ),.CASE12( 4'hB ),.din12_WIDTH( 32 ),.CASE13( 4'hC ),.din13_WIDTH( 32 ),.CASE14( 4'hD ),.din14_WIDTH( 32 ),.CASE15( 4'hE ),.din15_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_33_4_32_1_1_U10(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.din4(orig_4_q1),.din5(orig_5_q1),.din6(orig_6_q1),.din7(orig_7_q1),.din8(orig_8_q1),.din9(orig_9_q1),.din10(orig_10_q1),.din11(orig_11_q1),.din12(orig_12_q1),.din13(orig_13_q1),.din14(orig_14_q1),.din15(orig_15_q1),.def(tmp_1_fu_2516_p33),.sel(trunc_ln8_reg_2844),.dout(tmp_1_fu_2516_p35));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_33_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hE ),.din0_WIDTH( 32 ),.CASE1( 4'hF ),.din1_WIDTH( 32 ),.CASE2( 4'h0 ),.din2_WIDTH( 32 ),.CASE3( 4'h1 ),.din3_WIDTH( 32 ),.CASE4( 4'h2 ),.din4_WIDTH( 32 ),.CASE5( 4'h3 ),.din5_WIDTH( 32 ),.CASE6( 4'h4 ),.din6_WIDTH( 32 ),.CASE7( 4'h5 ),.din7_WIDTH( 32 ),.CASE8( 4'h6 ),.din8_WIDTH( 32 ),.CASE9( 4'h7 ),.din9_WIDTH( 32 ),.CASE10( 4'h8 ),.din10_WIDTH( 32 ),.CASE11( 4'h9 ),.din11_WIDTH( 32 ),.CASE12( 4'hA ),.din12_WIDTH( 32 ),.CASE13( 4'hB ),.din13_WIDTH( 32 ),.CASE14( 4'hC ),.din14_WIDTH( 32 ),.CASE15( 4'hD ),.din15_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_33_4_32_1_1_U11(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.din4(orig_4_q1),.din5(orig_5_q1),.din6(orig_6_q1),.din7(orig_7_q1),.din8(orig_8_q1),.din9(orig_9_q1),.din10(orig_10_q1),.din11(orig_11_q1),.din12(orig_12_q1),.din13(orig_13_q1),.din14(orig_14_q1),.din15(orig_15_q1),.def(tmp_2_fu_2587_p33),.sel(trunc_ln8_reg_2844),.dout(tmp_2_fu_2587_p35));
stencil_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln76_fu_202 <= 7'd1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln76_fu_202 <= add_ln7_fu_2415_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter4_stage0) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter4_stage0) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter4_stage0) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b0)) | ((1'b1 == ap_condition_exit_pp0_iter4_stage0) & (ap_idle_pp0_0to3 == 1'b1)))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c4_fu_198 <= 6'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        c4_fu_198 <= c_fu_2404_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten2_fu_190 <= 13'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten2_fu_190 <= add_ln7_1_fu_2398_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        r3_fu_194 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        r3_fu_194 <= r_reg_2835;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln12_5_reg_3298 <= add_ln12_5_fu_2342_p2;
        add_ln13_5_reg_3697 <= add_ln13_5_fu_2721_p2;
        icmp_ln7_reg_3393 <= icmp_ln7_fu_2420_p2;
        icmp_ln7_reg_3393_pp0_iter1_reg <= icmp_ln7_reg_3393;
        icmp_ln7_reg_3393_pp0_iter2_reg <= icmp_ln7_reg_3393_pp0_iter1_reg;
        icmp_ln7_reg_3393_pp0_iter3_reg <= icmp_ln7_reg_3393_pp0_iter2_reg;
        lshr_ln12_4_reg_3293 <= {{add_ln12_4_fu_2312_p2[12:4]}};
        lshr_ln12_5_reg_3303 <= {{add_ln12_6_fu_2348_p2[12:4]}};
        temp_reg_3717 <= temp_fu_2751_p2;
        zext_ln12_reg_2873[8 : 0] <= zext_ln12_fu_2148_p1[8 : 0];
        zext_ln12_reg_2873_pp0_iter1_reg[8 : 0] <= zext_ln12_reg_2873[8 : 0];
        zext_ln12_reg_2873_pp0_iter2_reg[8 : 0] <= zext_ln12_reg_2873_pp0_iter1_reg[8 : 0];
        zext_ln12_reg_2873_pp0_iter3_reg[8 : 0] <= zext_ln12_reg_2873_pp0_iter2_reg[8 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln13_1_reg_3707 <= add_ln13_1_fu_2733_p2;
        add_ln13_6_reg_3712 <= add_ln13_6_fu_2742_p2;
        add_ln13_reg_3702 <= add_ln13_fu_2727_p2;
        empty_8_reg_2867 <= empty_8_fu_2120_p2;
        empty_reg_2861 <= empty_fu_2098_p2;
        lshr_ln_reg_2854 <= {{select_ln4_fu_2048_p3[5:4]}};
        mul_ln13_8_reg_3687 <= grp_fu_1790_p2;
        r_reg_2835 <= r_fu_2056_p3;
        select_ln4_reg_2829 <= select_ln4_fu_2048_p3;
        tmp_1_reg_3402 <= tmp_1_fu_2516_p35;
        tmp_2_reg_3407 <= tmp_2_fu_2587_p35;
        tmp_reg_3397 <= tmp_fu_2445_p35;
        trunc_ln8_reg_2844 <= trunc_ln8_fu_2072_p1;
        trunc_ln8_reg_2844_pp0_iter1_reg <= trunc_ln8_reg_2844;
        trunc_ln8_reg_2844_pp0_iter2_reg <= trunc_ln8_reg_2844_pp0_iter1_reg;
        trunc_ln8_reg_2844_pp0_iter3_reg <= trunc_ln8_reg_2844_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln8_reg_3388 <= icmp_ln8_fu_2409_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_ln13_3_reg_3682 <= grp_fu_1782_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln13_6_reg_3692 <= grp_fu_1782_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_2007 <= grp_fu_1774_p2;
        reg_2011 <= grp_fu_1778_p2;
        reg_2015 <= grp_fu_1786_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_3_reg_3412 <= grp_fu_1794_p35;
        tmp_4_reg_3417 <= grp_fu_1865_p35;
        tmp_8_reg_3662 <= grp_fu_1936_p35;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_5_reg_3667 <= grp_fu_1936_p35;
        tmp_6_reg_3672 <= grp_fu_1794_p35;
        tmp_7_reg_3677 <= grp_fu_1865_p35;
    end
end
always @ (*) begin
    if (((icmp_ln7_fu_2420_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln7_reg_3393_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter4_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter4_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to3 = 1'b1;
    end else begin
        ap_idle_pp0_0to3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to4 = 1'b1;
    end else begin
        ap_idle_pp0_1to4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1704)) begin
            ap_phi_mux_icmp_ln85_phi_fu_1767_p4 = icmp_ln8_reg_3388;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln85_phi_fu_1767_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln85_phi_fu_1767_p4 = icmp_ln8_reg_3388;
        end
    end else begin
        ap_phi_mux_icmp_ln85_phi_fu_1767_p4 = icmp_ln8_reg_3388;
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_add_ln76_load = 7'd1;
    end else begin
        ap_sig_allocacmp_add_ln76_load = add_ln76_fu_202;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_c4_load = 6'd0;
    end else begin
        ap_sig_allocacmp_c4_load = c4_fu_198;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_r3_load = 7'd0;
    end else begin
        ap_sig_allocacmp_r3_load = r3_fu_194;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1774_p0 = filter_load_7;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1774_p0 = filter_load_8;
    end else begin
        grp_fu_1774_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1774_p1 = tmp_7_reg_3677;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1774_p1 = tmp_8_reg_3662;
    end else begin
        grp_fu_1774_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1778_p0 = filter_load_5;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1778_p0 = filter_load_2;
    end else begin
        grp_fu_1778_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1778_p1 = tmp_5_reg_3667;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1778_p1 = tmp_2_reg_3407;
    end else begin
        grp_fu_1778_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1782_p0 = filter_load_4;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1782_p0 = filter_load_1;
    end else begin
        grp_fu_1782_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1782_p1 = tmp_4_reg_3417;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1782_p1 = tmp_1_reg_3402;
    end else begin
        grp_fu_1782_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1786_p0 = filter_load_6;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1786_p0 = filter_load_3;
    end else begin
        grp_fu_1786_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1786_p1 = tmp_6_reg_3672;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1786_p1 = tmp_3_reg_3412;
    end else begin
        grp_fu_1786_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1794_p34 = trunc_ln8_reg_2844_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1794_p34 = trunc_ln8_reg_2844;
        end else begin
            grp_fu_1794_p34 = 'bx;
        end
    end else begin
        grp_fu_1794_p34 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1865_p34 = trunc_ln8_reg_2844_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1865_p34 = trunc_ln8_reg_2844;
        end else begin
            grp_fu_1865_p34 = 'bx;
        end
    end else begin
        grp_fu_1865_p34 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1936_p34 = trunc_ln8_reg_2844_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1936_p34 = trunc_ln8_reg_2844;
        end else begin
            grp_fu_1936_p34 = 'bx;
        end
    end else begin
        grp_fu_1936_p34 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address0_local = zext_ln12_9_fu_2696_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address0_local = zext_ln12_8_fu_2677_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address0_local = zext_ln12_6_fu_2658_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_address0_local = zext_ln12_10_fu_2378_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_address0_local = zext_ln12_5_fu_2292_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_address0_local = zext_ln12_4_fu_2257_p1;
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_770)) begin
        if ((trunc_ln8_reg_2844 == 4'd14)) begin
            orig_0_address1_local = zext_ln12_2_fu_2220_p1;
        end else if ((trunc_ln8_reg_2844 == 4'd15)) begin
            orig_0_address1_local = zext_ln12_1_fu_2184_p1;
        end else if ((trunc_ln8_reg_2844 == 4'd0)) begin
            orig_0_address1_local = zext_ln12_fu_2148_p1;
        end else begin
            orig_0_address1_local = 'bx;
        end
    end else begin
        orig_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_10_address0_local = zext_ln12_9_fu_2696_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_10_address0_local = zext_ln12_8_fu_2677_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_10_address0_local = zext_ln12_6_fu_2658_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_10_address0_local = zext_ln12_10_fu_2378_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_10_address0_local = zext_ln12_5_fu_2292_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_10_address0_local = zext_ln12_4_fu_2257_p1;
    end else begin
        orig_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_770)) begin
        if ((trunc_ln8_reg_2844 == 4'd8)) begin
            orig_10_address1_local = zext_ln12_2_fu_2220_p1;
        end else if ((trunc_ln8_reg_2844 == 4'd9)) begin
            orig_10_address1_local = zext_ln12_1_fu_2184_p1;
        end else if ((trunc_ln8_reg_2844 == 4'd10)) begin
            orig_10_address1_local = zext_ln12_fu_2148_p1;
        end else begin
            orig_10_address1_local = 'bx;
        end
    end else begin
        orig_10_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_10_ce0_local = 1'b1;
    end else begin
        orig_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_10_ce1_local = 1'b1;
    end else begin
        orig_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_11_address0_local = zext_ln12_9_fu_2696_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_11_address0_local = zext_ln12_8_fu_2677_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_11_address0_local = zext_ln12_6_fu_2658_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_11_address0_local = zext_ln12_10_fu_2378_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_11_address0_local = zext_ln12_5_fu_2292_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_11_address0_local = zext_ln12_4_fu_2257_p1;
    end else begin
        orig_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_770)) begin
        if ((trunc_ln8_reg_2844 == 4'd9)) begin
            orig_11_address1_local = zext_ln12_2_fu_2220_p1;
        end else if ((trunc_ln8_reg_2844 == 4'd10)) begin
            orig_11_address1_local = zext_ln12_1_fu_2184_p1;
        end else if ((trunc_ln8_reg_2844 == 4'd11)) begin
            orig_11_address1_local = zext_ln12_fu_2148_p1;
        end else begin
            orig_11_address1_local = 'bx;
        end
    end else begin
        orig_11_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_11_ce0_local = 1'b1;
    end else begin
        orig_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_11_ce1_local = 1'b1;
    end else begin
        orig_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_12_address0_local = zext_ln12_9_fu_2696_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_12_address0_local = zext_ln12_8_fu_2677_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_12_address0_local = zext_ln12_6_fu_2658_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_12_address0_local = zext_ln12_10_fu_2378_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_12_address0_local = zext_ln12_5_fu_2292_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_12_address0_local = zext_ln12_4_fu_2257_p1;
    end else begin
        orig_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_770)) begin
        if ((trunc_ln8_reg_2844 == 4'd10)) begin
            orig_12_address1_local = zext_ln12_2_fu_2220_p1;
        end else if ((trunc_ln8_reg_2844 == 4'd11)) begin
            orig_12_address1_local = zext_ln12_1_fu_2184_p1;
        end else if ((trunc_ln8_reg_2844 == 4'd12)) begin
            orig_12_address1_local = zext_ln12_fu_2148_p1;
        end else begin
            orig_12_address1_local = 'bx;
        end
    end else begin
        orig_12_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_12_ce0_local = 1'b1;
    end else begin
        orig_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_12_ce1_local = 1'b1;
    end else begin
        orig_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_13_address0_local = zext_ln12_9_fu_2696_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_13_address0_local = zext_ln12_8_fu_2677_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_13_address0_local = zext_ln12_6_fu_2658_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_13_address0_local = zext_ln12_10_fu_2378_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_13_address0_local = zext_ln12_5_fu_2292_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_13_address0_local = zext_ln12_4_fu_2257_p1;
    end else begin
        orig_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_770)) begin
        if ((trunc_ln8_reg_2844 == 4'd11)) begin
            orig_13_address1_local = zext_ln12_2_fu_2220_p1;
        end else if ((trunc_ln8_reg_2844 == 4'd12)) begin
            orig_13_address1_local = zext_ln12_1_fu_2184_p1;
        end else if ((trunc_ln8_reg_2844 == 4'd13)) begin
            orig_13_address1_local = zext_ln12_fu_2148_p1;
        end else begin
            orig_13_address1_local = 'bx;
        end
    end else begin
        orig_13_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_13_ce0_local = 1'b1;
    end else begin
        orig_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_13_ce1_local = 1'b1;
    end else begin
        orig_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_14_address0_local = zext_ln12_9_fu_2696_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_14_address0_local = zext_ln12_8_fu_2677_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_14_address0_local = zext_ln12_6_fu_2658_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_14_address0_local = zext_ln12_10_fu_2378_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_14_address0_local = zext_ln12_5_fu_2292_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_14_address0_local = zext_ln12_4_fu_2257_p1;
    end else begin
        orig_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_770)) begin
        if ((trunc_ln8_reg_2844 == 4'd12)) begin
            orig_14_address1_local = zext_ln12_2_fu_2220_p1;
        end else if ((trunc_ln8_reg_2844 == 4'd13)) begin
            orig_14_address1_local = zext_ln12_1_fu_2184_p1;
        end else if ((trunc_ln8_reg_2844 == 4'd14)) begin
            orig_14_address1_local = zext_ln12_fu_2148_p1;
        end else begin
            orig_14_address1_local = 'bx;
        end
    end else begin
        orig_14_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_14_ce0_local = 1'b1;
    end else begin
        orig_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_14_ce1_local = 1'b1;
    end else begin
        orig_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_15_address0_local = zext_ln12_9_fu_2696_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_15_address0_local = zext_ln12_8_fu_2677_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_15_address0_local = zext_ln12_6_fu_2658_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_15_address0_local = zext_ln12_10_fu_2378_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_15_address0_local = zext_ln12_5_fu_2292_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_15_address0_local = zext_ln12_4_fu_2257_p1;
    end else begin
        orig_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_770)) begin
        if ((trunc_ln8_reg_2844 == 4'd13)) begin
            orig_15_address1_local = zext_ln12_2_fu_2220_p1;
        end else if ((trunc_ln8_reg_2844 == 4'd14)) begin
            orig_15_address1_local = zext_ln12_1_fu_2184_p1;
        end else if ((trunc_ln8_reg_2844 == 4'd15)) begin
            orig_15_address1_local = zext_ln12_fu_2148_p1;
        end else begin
            orig_15_address1_local = 'bx;
        end
    end else begin
        orig_15_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_15_ce0_local = 1'b1;
    end else begin
        orig_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_15_ce1_local = 1'b1;
    end else begin
        orig_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address0_local = zext_ln12_9_fu_2696_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address0_local = zext_ln12_8_fu_2677_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address0_local = zext_ln12_6_fu_2658_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_address0_local = zext_ln12_10_fu_2378_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_address0_local = zext_ln12_5_fu_2292_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_address0_local = zext_ln12_4_fu_2257_p1;
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_770)) begin
        if ((trunc_ln8_reg_2844 == 4'd15)) begin
            orig_1_address1_local = zext_ln12_2_fu_2220_p1;
        end else if ((trunc_ln8_reg_2844 == 4'd0)) begin
            orig_1_address1_local = zext_ln12_1_fu_2184_p1;
        end else if ((trunc_ln8_reg_2844 == 4'd1)) begin
            orig_1_address1_local = zext_ln12_fu_2148_p1;
        end else begin
            orig_1_address1_local = 'bx;
        end
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_2_address0_local = zext_ln12_9_fu_2696_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_2_address0_local = zext_ln12_8_fu_2677_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_2_address0_local = zext_ln12_6_fu_2658_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_2_address0_local = zext_ln12_10_fu_2378_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_2_address0_local = zext_ln12_5_fu_2292_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_2_address0_local = zext_ln12_4_fu_2257_p1;
    end else begin
        orig_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_770)) begin
        if ((trunc_ln8_reg_2844 == 4'd0)) begin
            orig_2_address1_local = zext_ln12_2_fu_2220_p1;
        end else if ((trunc_ln8_reg_2844 == 4'd1)) begin
            orig_2_address1_local = zext_ln12_1_fu_2184_p1;
        end else if ((trunc_ln8_reg_2844 == 4'd2)) begin
            orig_2_address1_local = zext_ln12_fu_2148_p1;
        end else begin
            orig_2_address1_local = 'bx;
        end
    end else begin
        orig_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_2_ce0_local = 1'b1;
    end else begin
        orig_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_2_ce1_local = 1'b1;
    end else begin
        orig_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_3_address0_local = zext_ln12_9_fu_2696_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_3_address0_local = zext_ln12_8_fu_2677_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_3_address0_local = zext_ln12_6_fu_2658_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_3_address0_local = zext_ln12_10_fu_2378_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_3_address0_local = zext_ln12_5_fu_2292_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_3_address0_local = zext_ln12_4_fu_2257_p1;
    end else begin
        orig_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_770)) begin
        if ((trunc_ln8_reg_2844 == 4'd1)) begin
            orig_3_address1_local = zext_ln12_2_fu_2220_p1;
        end else if ((trunc_ln8_reg_2844 == 4'd2)) begin
            orig_3_address1_local = zext_ln12_1_fu_2184_p1;
        end else if ((trunc_ln8_reg_2844 == 4'd3)) begin
            orig_3_address1_local = zext_ln12_fu_2148_p1;
        end else begin
            orig_3_address1_local = 'bx;
        end
    end else begin
        orig_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_3_ce0_local = 1'b1;
    end else begin
        orig_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_3_ce1_local = 1'b1;
    end else begin
        orig_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_4_address0_local = zext_ln12_9_fu_2696_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_4_address0_local = zext_ln12_8_fu_2677_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_4_address0_local = zext_ln12_6_fu_2658_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_4_address0_local = zext_ln12_10_fu_2378_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_4_address0_local = zext_ln12_5_fu_2292_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_4_address0_local = zext_ln12_4_fu_2257_p1;
    end else begin
        orig_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_770)) begin
        if ((trunc_ln8_reg_2844 == 4'd2)) begin
            orig_4_address1_local = zext_ln12_2_fu_2220_p1;
        end else if ((trunc_ln8_reg_2844 == 4'd3)) begin
            orig_4_address1_local = zext_ln12_1_fu_2184_p1;
        end else if ((trunc_ln8_reg_2844 == 4'd4)) begin
            orig_4_address1_local = zext_ln12_fu_2148_p1;
        end else begin
            orig_4_address1_local = 'bx;
        end
    end else begin
        orig_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_4_ce0_local = 1'b1;
    end else begin
        orig_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_4_ce1_local = 1'b1;
    end else begin
        orig_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_5_address0_local = zext_ln12_9_fu_2696_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_5_address0_local = zext_ln12_8_fu_2677_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_5_address0_local = zext_ln12_6_fu_2658_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_5_address0_local = zext_ln12_10_fu_2378_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_5_address0_local = zext_ln12_5_fu_2292_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_5_address0_local = zext_ln12_4_fu_2257_p1;
    end else begin
        orig_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_770)) begin
        if ((trunc_ln8_reg_2844 == 4'd3)) begin
            orig_5_address1_local = zext_ln12_2_fu_2220_p1;
        end else if ((trunc_ln8_reg_2844 == 4'd4)) begin
            orig_5_address1_local = zext_ln12_1_fu_2184_p1;
        end else if ((trunc_ln8_reg_2844 == 4'd5)) begin
            orig_5_address1_local = zext_ln12_fu_2148_p1;
        end else begin
            orig_5_address1_local = 'bx;
        end
    end else begin
        orig_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_5_ce0_local = 1'b1;
    end else begin
        orig_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_5_ce1_local = 1'b1;
    end else begin
        orig_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_6_address0_local = zext_ln12_9_fu_2696_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_6_address0_local = zext_ln12_8_fu_2677_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_6_address0_local = zext_ln12_6_fu_2658_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_6_address0_local = zext_ln12_10_fu_2378_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_6_address0_local = zext_ln12_5_fu_2292_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_6_address0_local = zext_ln12_4_fu_2257_p1;
    end else begin
        orig_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_770)) begin
        if ((trunc_ln8_reg_2844 == 4'd4)) begin
            orig_6_address1_local = zext_ln12_2_fu_2220_p1;
        end else if ((trunc_ln8_reg_2844 == 4'd5)) begin
            orig_6_address1_local = zext_ln12_1_fu_2184_p1;
        end else if ((trunc_ln8_reg_2844 == 4'd6)) begin
            orig_6_address1_local = zext_ln12_fu_2148_p1;
        end else begin
            orig_6_address1_local = 'bx;
        end
    end else begin
        orig_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_6_ce0_local = 1'b1;
    end else begin
        orig_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_6_ce1_local = 1'b1;
    end else begin
        orig_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_7_address0_local = zext_ln12_9_fu_2696_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_7_address0_local = zext_ln12_8_fu_2677_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_7_address0_local = zext_ln12_6_fu_2658_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_7_address0_local = zext_ln12_10_fu_2378_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_7_address0_local = zext_ln12_5_fu_2292_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_7_address0_local = zext_ln12_4_fu_2257_p1;
    end else begin
        orig_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_770)) begin
        if ((trunc_ln8_reg_2844 == 4'd5)) begin
            orig_7_address1_local = zext_ln12_2_fu_2220_p1;
        end else if ((trunc_ln8_reg_2844 == 4'd6)) begin
            orig_7_address1_local = zext_ln12_1_fu_2184_p1;
        end else if ((trunc_ln8_reg_2844 == 4'd7)) begin
            orig_7_address1_local = zext_ln12_fu_2148_p1;
        end else begin
            orig_7_address1_local = 'bx;
        end
    end else begin
        orig_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_7_ce0_local = 1'b1;
    end else begin
        orig_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_7_ce1_local = 1'b1;
    end else begin
        orig_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_8_address0_local = zext_ln12_9_fu_2696_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_8_address0_local = zext_ln12_8_fu_2677_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_8_address0_local = zext_ln12_6_fu_2658_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_8_address0_local = zext_ln12_10_fu_2378_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_8_address0_local = zext_ln12_5_fu_2292_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_8_address0_local = zext_ln12_4_fu_2257_p1;
    end else begin
        orig_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_770)) begin
        if ((trunc_ln8_reg_2844 == 4'd6)) begin
            orig_8_address1_local = zext_ln12_2_fu_2220_p1;
        end else if ((trunc_ln8_reg_2844 == 4'd7)) begin
            orig_8_address1_local = zext_ln12_1_fu_2184_p1;
        end else if ((trunc_ln8_reg_2844 == 4'd8)) begin
            orig_8_address1_local = zext_ln12_fu_2148_p1;
        end else begin
            orig_8_address1_local = 'bx;
        end
    end else begin
        orig_8_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_8_ce0_local = 1'b1;
    end else begin
        orig_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_8_ce1_local = 1'b1;
    end else begin
        orig_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_9_address0_local = zext_ln12_9_fu_2696_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_9_address0_local = zext_ln12_8_fu_2677_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2844 == 4'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_9_address0_local = zext_ln12_6_fu_2658_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_9_address0_local = zext_ln12_10_fu_2378_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_9_address0_local = zext_ln12_5_fu_2292_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2844 == 4'd9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_9_address0_local = zext_ln12_4_fu_2257_p1;
    end else begin
        orig_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_770)) begin
        if ((trunc_ln8_reg_2844 == 4'd7)) begin
            orig_9_address1_local = zext_ln12_2_fu_2220_p1;
        end else if ((trunc_ln8_reg_2844 == 4'd8)) begin
            orig_9_address1_local = zext_ln12_1_fu_2184_p1;
        end else if ((trunc_ln8_reg_2844 == 4'd9)) begin
            orig_9_address1_local = zext_ln12_fu_2148_p1;
        end else begin
            orig_9_address1_local = 'bx;
        end
    end else begin
        orig_9_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844 == 4'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_9_ce0_local = 1'b1;
    end else begin
        orig_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2844 == 4'd7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_9_ce1_local = 1'b1;
    end else begin
        orig_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_0_ce0_local = 1'b1;
    end else begin
        sol_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844_pp0_iter3_reg == 4'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_0_we0_local = 1'b1;
    end else begin
        sol_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_10_ce0_local = 1'b1;
    end else begin
        sol_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844_pp0_iter3_reg == 4'd10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_10_we0_local = 1'b1;
    end else begin
        sol_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_11_ce0_local = 1'b1;
    end else begin
        sol_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844_pp0_iter3_reg == 4'd11) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_11_we0_local = 1'b1;
    end else begin
        sol_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_12_ce0_local = 1'b1;
    end else begin
        sol_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844_pp0_iter3_reg == 4'd12) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_12_we0_local = 1'b1;
    end else begin
        sol_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_13_ce0_local = 1'b1;
    end else begin
        sol_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844_pp0_iter3_reg == 4'd13) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_13_we0_local = 1'b1;
    end else begin
        sol_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_14_ce0_local = 1'b1;
    end else begin
        sol_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844_pp0_iter3_reg == 4'd14) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_14_we0_local = 1'b1;
    end else begin
        sol_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_15_ce0_local = 1'b1;
    end else begin
        sol_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844_pp0_iter3_reg == 4'd15) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_15_we0_local = 1'b1;
    end else begin
        sol_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_1_ce0_local = 1'b1;
    end else begin
        sol_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844_pp0_iter3_reg == 4'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_2_ce0_local = 1'b1;
    end else begin
        sol_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844_pp0_iter3_reg == 4'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_2_we0_local = 1'b1;
    end else begin
        sol_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_3_ce0_local = 1'b1;
    end else begin
        sol_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844_pp0_iter3_reg == 4'd3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_3_we0_local = 1'b1;
    end else begin
        sol_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_4_ce0_local = 1'b1;
    end else begin
        sol_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844_pp0_iter3_reg == 4'd4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_4_we0_local = 1'b1;
    end else begin
        sol_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_5_ce0_local = 1'b1;
    end else begin
        sol_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844_pp0_iter3_reg == 4'd5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_5_we0_local = 1'b1;
    end else begin
        sol_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_6_ce0_local = 1'b1;
    end else begin
        sol_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844_pp0_iter3_reg == 4'd6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_6_we0_local = 1'b1;
    end else begin
        sol_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_7_ce0_local = 1'b1;
    end else begin
        sol_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844_pp0_iter3_reg == 4'd7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_7_we0_local = 1'b1;
    end else begin
        sol_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_8_ce0_local = 1'b1;
    end else begin
        sol_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844_pp0_iter3_reg == 4'd8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_8_we0_local = 1'b1;
    end else begin
        sol_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_9_ce0_local = 1'b1;
    end else begin
        sol_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2844_pp0_iter3_reg == 4'd9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_9_we0_local = 1'b1;
    end else begin
        sol_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter4_stage0) & (ap_idle_pp0_0to3 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln12_1_fu_2204_p2 = (tmp_9_fu_2136_p3 + 13'd2);
assign add_ln12_2_fu_2251_p2 = (zext_ln12_3_fu_2247_p1 + p_udiv1_fu_2129_p3);
assign add_ln12_3_fu_2277_p2 = (empty_reg_2861 + 13'd1);
assign add_ln12_4_fu_2312_p2 = (empty_reg_2861 + 13'd2);
assign add_ln12_5_fu_2342_p2 = (zext_ln12_11_fu_2338_p1 + p_udiv1_fu_2129_p3);
assign add_ln12_6_fu_2348_p2 = (empty_8_reg_2867 + 13'd1);
assign add_ln12_7_fu_2363_p2 = (empty_8_reg_2867 + 13'd2);
assign add_ln12_fu_2168_p2 = (tmp_9_fu_2136_p3 + 13'd1);
assign add_ln13_1_fu_2733_p2 = (reg_2011 + mul_ln13_6_reg_3692);
assign add_ln13_2_fu_2747_p2 = (add_ln13_1_reg_3707 + add_ln13_reg_3702);
assign add_ln13_3_fu_2738_p2 = (mul_ln13_8_reg_3687 + mul_ln13_3_reg_3682);
assign add_ln13_4_fu_2715_p2 = (reg_2011 + reg_2007);
assign add_ln13_5_fu_2721_p2 = (add_ln13_4_fu_2715_p2 + reg_2015);
assign add_ln13_6_fu_2742_p2 = (add_ln13_5_reg_3697 + add_ln13_3_fu_2738_p2);
assign add_ln13_fu_2727_p2 = (reg_2015 + reg_2007);
assign add_ln7_1_fu_2398_p2 = (indvar_flatten2_fu_190 + 13'd1);
assign add_ln7_fu_2415_p2 = (r_reg_2835 + 7'd1);
assign add_ln_fu_2142_p3 = {{r_reg_2835}, {lshr_ln_reg_2854}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1704 = ((icmp_ln7_reg_3393 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_770 = ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign c_fu_2404_p2 = (select_ln4_reg_2829 + 6'd1);
assign empty_8_fu_2120_p2 = (tmp3_cast_cast_cast_fu_2116_p1 + tmp_s_fu_2064_p3);
assign empty_fu_2098_p2 = (tmp1_cast_cast_cast_fu_2094_p1 + tmp_s_fu_2064_p3);
assign grp_fu_1794_p33 = 'bx;
assign grp_fu_1865_p33 = 'bx;
assign grp_fu_1936_p33 = 'bx;
assign icmp_ln7_fu_2420_p2 = ((indvar_flatten2_fu_190 == 13'd7811) ? 1'b1 : 1'b0);
assign icmp_ln8_fu_2409_p2 = ((c_fu_2404_p2 == 6'd62) ? 1'b1 : 1'b0);
assign lshr_ln12_1_fu_2174_p4 = {{add_ln12_fu_2168_p2[12:4]}};
assign lshr_ln12_2_fu_2210_p4 = {{add_ln12_1_fu_2204_p2[12:4]}};
assign lshr_ln12_3_fu_2282_p4 = {{add_ln12_3_fu_2277_p2[12:4]}};
assign lshr_ln12_6_fu_2368_p4 = {{add_ln12_7_fu_2363_p2[12:4]}};
assign orig_0_address0 = orig_0_address0_local;
assign orig_0_address1 = orig_0_address1_local;
assign orig_0_ce0 = orig_0_ce0_local;
assign orig_0_ce1 = orig_0_ce1_local;
assign orig_10_address0 = orig_10_address0_local;
assign orig_10_address1 = orig_10_address1_local;
assign orig_10_ce0 = orig_10_ce0_local;
assign orig_10_ce1 = orig_10_ce1_local;
assign orig_11_address0 = orig_11_address0_local;
assign orig_11_address1 = orig_11_address1_local;
assign orig_11_ce0 = orig_11_ce0_local;
assign orig_11_ce1 = orig_11_ce1_local;
assign orig_12_address0 = orig_12_address0_local;
assign orig_12_address1 = orig_12_address1_local;
assign orig_12_ce0 = orig_12_ce0_local;
assign orig_12_ce1 = orig_12_ce1_local;
assign orig_13_address0 = orig_13_address0_local;
assign orig_13_address1 = orig_13_address1_local;
assign orig_13_ce0 = orig_13_ce0_local;
assign orig_13_ce1 = orig_13_ce1_local;
assign orig_14_address0 = orig_14_address0_local;
assign orig_14_address1 = orig_14_address1_local;
assign orig_14_ce0 = orig_14_ce0_local;
assign orig_14_ce1 = orig_14_ce1_local;
assign orig_15_address0 = orig_15_address0_local;
assign orig_15_address1 = orig_15_address1_local;
assign orig_15_ce0 = orig_15_ce0_local;
assign orig_15_ce1 = orig_15_ce1_local;
assign orig_1_address0 = orig_1_address0_local;
assign orig_1_address1 = orig_1_address1_local;
assign orig_1_ce0 = orig_1_ce0_local;
assign orig_1_ce1 = orig_1_ce1_local;
assign orig_2_address0 = orig_2_address0_local;
assign orig_2_address1 = orig_2_address1_local;
assign orig_2_ce0 = orig_2_ce0_local;
assign orig_2_ce1 = orig_2_ce1_local;
assign orig_3_address0 = orig_3_address0_local;
assign orig_3_address1 = orig_3_address1_local;
assign orig_3_ce0 = orig_3_ce0_local;
assign orig_3_ce1 = orig_3_ce1_local;
assign orig_4_address0 = orig_4_address0_local;
assign orig_4_address1 = orig_4_address1_local;
assign orig_4_ce0 = orig_4_ce0_local;
assign orig_4_ce1 = orig_4_ce1_local;
assign orig_5_address0 = orig_5_address0_local;
assign orig_5_address1 = orig_5_address1_local;
assign orig_5_ce0 = orig_5_ce0_local;
assign orig_5_ce1 = orig_5_ce1_local;
assign orig_6_address0 = orig_6_address0_local;
assign orig_6_address1 = orig_6_address1_local;
assign orig_6_ce0 = orig_6_ce0_local;
assign orig_6_ce1 = orig_6_ce1_local;
assign orig_7_address0 = orig_7_address0_local;
assign orig_7_address1 = orig_7_address1_local;
assign orig_7_ce0 = orig_7_ce0_local;
assign orig_7_ce1 = orig_7_ce1_local;
assign orig_8_address0 = orig_8_address0_local;
assign orig_8_address1 = orig_8_address1_local;
assign orig_8_ce0 = orig_8_ce0_local;
assign orig_8_ce1 = orig_8_ce1_local;
assign orig_9_address0 = orig_9_address0_local;
assign orig_9_address1 = orig_9_address1_local;
assign orig_9_ce0 = orig_9_ce0_local;
assign orig_9_ce1 = orig_9_ce1_local;
assign p_udiv1_fu_2129_p3 = {{r_reg_2835}, {2'd0}};
assign r_fu_2056_p3 = ((ap_phi_mux_icmp_ln85_phi_fu_1767_p4[0:0] == 1'b1) ? ap_sig_allocacmp_add_ln76_load : ap_sig_allocacmp_r3_load);
assign select_ln4_cast1_fu_2104_p1 = select_ln4_fu_2048_p3;
assign select_ln4_fu_2048_p3 = ((ap_phi_mux_icmp_ln85_phi_fu_1767_p4[0:0] == 1'b1) ? 6'd0 : ap_sig_allocacmp_c4_load);
assign sol_0_address0 = zext_ln12_reg_2873_pp0_iter3_reg;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_d0 = temp_reg_3717;
assign sol_0_we0 = sol_0_we0_local;
assign sol_10_address0 = zext_ln12_reg_2873_pp0_iter3_reg;
assign sol_10_ce0 = sol_10_ce0_local;
assign sol_10_d0 = temp_reg_3717;
assign sol_10_we0 = sol_10_we0_local;
assign sol_11_address0 = zext_ln12_reg_2873_pp0_iter3_reg;
assign sol_11_ce0 = sol_11_ce0_local;
assign sol_11_d0 = temp_reg_3717;
assign sol_11_we0 = sol_11_we0_local;
assign sol_12_address0 = zext_ln12_reg_2873_pp0_iter3_reg;
assign sol_12_ce0 = sol_12_ce0_local;
assign sol_12_d0 = temp_reg_3717;
assign sol_12_we0 = sol_12_we0_local;
assign sol_13_address0 = zext_ln12_reg_2873_pp0_iter3_reg;
assign sol_13_ce0 = sol_13_ce0_local;
assign sol_13_d0 = temp_reg_3717;
assign sol_13_we0 = sol_13_we0_local;
assign sol_14_address0 = zext_ln12_reg_2873_pp0_iter3_reg;
assign sol_14_ce0 = sol_14_ce0_local;
assign sol_14_d0 = temp_reg_3717;
assign sol_14_we0 = sol_14_we0_local;
assign sol_15_address0 = zext_ln12_reg_2873_pp0_iter3_reg;
assign sol_15_ce0 = sol_15_ce0_local;
assign sol_15_d0 = temp_reg_3717;
assign sol_15_we0 = sol_15_we0_local;
assign sol_1_address0 = zext_ln12_reg_2873_pp0_iter3_reg;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_d0 = temp_reg_3717;
assign sol_1_we0 = sol_1_we0_local;
assign sol_2_address0 = zext_ln12_reg_2873_pp0_iter3_reg;
assign sol_2_ce0 = sol_2_ce0_local;
assign sol_2_d0 = temp_reg_3717;
assign sol_2_we0 = sol_2_we0_local;
assign sol_3_address0 = zext_ln12_reg_2873_pp0_iter3_reg;
assign sol_3_ce0 = sol_3_ce0_local;
assign sol_3_d0 = temp_reg_3717;
assign sol_3_we0 = sol_3_we0_local;
assign sol_4_address0 = zext_ln12_reg_2873_pp0_iter3_reg;
assign sol_4_ce0 = sol_4_ce0_local;
assign sol_4_d0 = temp_reg_3717;
assign sol_4_we0 = sol_4_we0_local;
assign sol_5_address0 = zext_ln12_reg_2873_pp0_iter3_reg;
assign sol_5_ce0 = sol_5_ce0_local;
assign sol_5_d0 = temp_reg_3717;
assign sol_5_we0 = sol_5_we0_local;
assign sol_6_address0 = zext_ln12_reg_2873_pp0_iter3_reg;
assign sol_6_ce0 = sol_6_ce0_local;
assign sol_6_d0 = temp_reg_3717;
assign sol_6_we0 = sol_6_we0_local;
assign sol_7_address0 = zext_ln12_reg_2873_pp0_iter3_reg;
assign sol_7_ce0 = sol_7_ce0_local;
assign sol_7_d0 = temp_reg_3717;
assign sol_7_we0 = sol_7_we0_local;
assign sol_8_address0 = zext_ln12_reg_2873_pp0_iter3_reg;
assign sol_8_ce0 = sol_8_ce0_local;
assign sol_8_d0 = temp_reg_3717;
assign sol_8_we0 = sol_8_we0_local;
assign sol_9_address0 = zext_ln12_reg_2873_pp0_iter3_reg;
assign sol_9_ce0 = sol_9_ce0_local;
assign sol_9_d0 = temp_reg_3717;
assign sol_9_we0 = sol_9_we0_local;
assign temp_fu_2751_p2 = (add_ln13_6_reg_3712 + add_ln13_2_fu_2747_p2);
assign tmp1_cast_cast_cast_fu_2094_p1 = tmp1_cast_cast_fu_2086_p3;
assign tmp1_cast_cast_fu_2086_p3 = {{1'd1}, {select_ln4_fu_2048_p3}};
assign tmp3_cast_cast_cast_fu_2116_p1 = tmp3_cast_cast_fu_2108_p3;
assign tmp3_cast_cast_fu_2108_p3 = {{1'd1}, {select_ln4_cast1_fu_2104_p1}};
assign tmp_1_fu_2516_p33 = 'bx;
assign tmp_2_fu_2587_p33 = 'bx;
assign tmp_9_fu_2136_p3 = {{r_reg_2835}, {select_ln4_reg_2829}};
assign tmp_fu_2445_p33 = 'bx;
assign tmp_s_fu_2064_p3 = {{r_fu_2056_p3}, {6'd0}};
assign trunc_ln8_fu_2072_p1 = select_ln4_fu_2048_p3[3:0];
assign zext_ln12_10_fu_2378_p1 = lshr_ln12_6_fu_2368_p4;
assign zext_ln12_11_fu_2338_p1 = zext_ln12_7_cast_fu_2330_p3;
assign zext_ln12_1_fu_2184_p1 = lshr_ln12_1_fu_2174_p4;
assign zext_ln12_2_fu_2220_p1 = lshr_ln12_2_fu_2210_p4;
assign zext_ln12_3_cast_fu_2240_p3 = {{1'd1}, {lshr_ln_reg_2854}};
assign zext_ln12_3_fu_2247_p1 = zext_ln12_3_cast_fu_2240_p3;
assign zext_ln12_4_fu_2257_p1 = add_ln12_2_fu_2251_p2;
assign zext_ln12_5_fu_2292_p1 = lshr_ln12_3_fu_2282_p4;
assign zext_ln12_6_fu_2658_p1 = lshr_ln12_4_reg_3293;
assign zext_ln12_7_cast_fu_2330_p3 = {{1'd1}, {zext_ln12_7_fu_2327_p1}};
assign zext_ln12_7_fu_2327_p1 = lshr_ln_reg_2854;
assign zext_ln12_8_fu_2677_p1 = add_ln12_5_reg_3298;
assign zext_ln12_9_fu_2696_p1 = lshr_ln12_5_reg_3303;
assign zext_ln12_fu_2148_p1 = add_ln_fu_2142_p3;
always @ (posedge ap_clk) begin
    zext_ln12_reg_2873[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln12_reg_2873_pp0_iter1_reg[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln12_reg_2873_pp0_iter2_reg[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln12_reg_2873_pp0_iter3_reg[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
end
endmodule 
