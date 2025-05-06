
module stencil_stencil_Pipeline_stencil_label1_stencil_label2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_15_address0,sol_15_ce0,sol_15_we0,sol_15_d0,sol_14_address0,sol_14_ce0,sol_14_we0,sol_14_d0,sol_13_address0,sol_13_ce0,sol_13_we0,sol_13_d0,sol_12_address0,sol_12_ce0,sol_12_we0,sol_12_d0,sol_11_address0,sol_11_ce0,sol_11_we0,sol_11_d0,sol_10_address0,sol_10_ce0,sol_10_we0,sol_10_d0,sol_9_address0,sol_9_ce0,sol_9_we0,sol_9_d0,sol_8_address0,sol_8_ce0,sol_8_we0,sol_8_d0,sol_7_address0,sol_7_ce0,sol_7_we0,sol_7_d0,sol_6_address0,sol_6_ce0,sol_6_we0,sol_6_d0,sol_5_address0,sol_5_ce0,sol_5_we0,sol_5_d0,sol_4_address0,sol_4_ce0,sol_4_we0,sol_4_d0,sol_3_address0,sol_3_ce0,sol_3_we0,sol_3_d0,sol_2_address0,sol_2_ce0,sol_2_we0,sol_2_d0,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_2_address0,orig_2_ce0,orig_2_q0,orig_2_address1,orig_2_ce1,orig_2_q1,orig_4_address0,orig_4_ce0,orig_4_q0,orig_4_address1,orig_4_ce1,orig_4_q1,orig_6_address0,orig_6_ce0,orig_6_q0,orig_6_address1,orig_6_ce1,orig_6_q1,orig_8_address0,orig_8_ce0,orig_8_q0,orig_8_address1,orig_8_ce1,orig_8_q1,orig_10_address0,orig_10_ce0,orig_10_q0,orig_10_address1,orig_10_ce1,orig_10_q1,orig_12_address0,orig_12_ce0,orig_12_q0,orig_12_address1,orig_12_ce1,orig_12_q1,orig_14_address0,orig_14_ce0,orig_14_q0,orig_14_address1,orig_14_ce1,orig_14_q1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,orig_3_address0,orig_3_ce0,orig_3_q0,orig_3_address1,orig_3_ce1,orig_3_q1,orig_5_address0,orig_5_ce0,orig_5_q0,orig_5_address1,orig_5_ce1,orig_5_q1,orig_7_address0,orig_7_ce0,orig_7_q0,orig_7_address1,orig_7_ce1,orig_7_q1,orig_9_address0,orig_9_ce0,orig_9_q0,orig_9_address1,orig_9_ce1,orig_9_q1,orig_11_address0,orig_11_ce0,orig_11_q0,orig_11_address1,orig_11_ce1,orig_11_q1,orig_13_address0,orig_13_ce0,orig_13_q0,orig_13_address1,orig_13_ce1,orig_13_q1,orig_15_address0,orig_15_ce0,orig_15_q0,orig_15_address1,orig_15_ce1,orig_15_q1,filter_load_2,filter_load_5,filter_load_1,filter_load_8,filter_load,filter_load_6,filter_load_4,filter_load_3,filter_load_7);  
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
output  [8:0] orig_2_address0;
output   orig_2_ce0;
input  [31:0] orig_2_q0;
output  [8:0] orig_2_address1;
output   orig_2_ce1;
input  [31:0] orig_2_q1;
output  [8:0] orig_4_address0;
output   orig_4_ce0;
input  [31:0] orig_4_q0;
output  [8:0] orig_4_address1;
output   orig_4_ce1;
input  [31:0] orig_4_q1;
output  [8:0] orig_6_address0;
output   orig_6_ce0;
input  [31:0] orig_6_q0;
output  [8:0] orig_6_address1;
output   orig_6_ce1;
input  [31:0] orig_6_q1;
output  [8:0] orig_8_address0;
output   orig_8_ce0;
input  [31:0] orig_8_q0;
output  [8:0] orig_8_address1;
output   orig_8_ce1;
input  [31:0] orig_8_q1;
output  [8:0] orig_10_address0;
output   orig_10_ce0;
input  [31:0] orig_10_q0;
output  [8:0] orig_10_address1;
output   orig_10_ce1;
input  [31:0] orig_10_q1;
output  [8:0] orig_12_address0;
output   orig_12_ce0;
input  [31:0] orig_12_q0;
output  [8:0] orig_12_address1;
output   orig_12_ce1;
input  [31:0] orig_12_q1;
output  [8:0] orig_14_address0;
output   orig_14_ce0;
input  [31:0] orig_14_q0;
output  [8:0] orig_14_address1;
output   orig_14_ce1;
input  [31:0] orig_14_q1;
output  [8:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [8:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
output  [8:0] orig_3_address0;
output   orig_3_ce0;
input  [31:0] orig_3_q0;
output  [8:0] orig_3_address1;
output   orig_3_ce1;
input  [31:0] orig_3_q1;
output  [8:0] orig_5_address0;
output   orig_5_ce0;
input  [31:0] orig_5_q0;
output  [8:0] orig_5_address1;
output   orig_5_ce1;
input  [31:0] orig_5_q1;
output  [8:0] orig_7_address0;
output   orig_7_ce0;
input  [31:0] orig_7_q0;
output  [8:0] orig_7_address1;
output   orig_7_ce1;
input  [31:0] orig_7_q1;
output  [8:0] orig_9_address0;
output   orig_9_ce0;
input  [31:0] orig_9_q0;
output  [8:0] orig_9_address1;
output   orig_9_ce1;
input  [31:0] orig_9_q1;
output  [8:0] orig_11_address0;
output   orig_11_ce0;
input  [31:0] orig_11_q0;
output  [8:0] orig_11_address1;
output   orig_11_ce1;
input  [31:0] orig_11_q1;
output  [8:0] orig_13_address0;
output   orig_13_ce0;
input  [31:0] orig_13_q0;
output  [8:0] orig_13_address1;
output   orig_13_ce1;
input  [31:0] orig_13_q1;
output  [8:0] orig_15_address0;
output   orig_15_ce0;
input  [31:0] orig_15_q0;
output  [8:0] orig_15_address1;
output   orig_15_ce1;
input  [31:0] orig_15_q1;
input  [31:0] filter_load_2;
input  [31:0] filter_load_5;
input  [31:0] filter_load_1;
input  [31:0] filter_load_8;
input  [31:0] filter_load;
input  [31:0] filter_load_6;
input  [31:0] filter_load_4;
input  [31:0] filter_load_3;
input  [31:0] filter_load_7;
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
wire   [0:0] icmp_ln7_fu_1975_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln86_reg_1368;
wire   [31:0] grp_fu_1399_p2;
reg   [31:0] reg_1571;
wire    ap_block_pp0_stage0_11001;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] grp_fu_1407_p2;
reg   [31:0] reg_1575;
wire   [31:0] grp_fu_1411_p2;
reg   [31:0] reg_1579;
reg   [6:0] r3_load_reg_2393;
wire   [5:0] select_ln4_fu_1609_p3;
reg   [5:0] select_ln4_reg_2398;
wire   [6:0] indvars_iv_next80_mid1_fu_1617_p2;
reg   [6:0] indvars_iv_next80_mid1_reg_2406;
wire   [3:0] trunc_ln8_fu_1623_p1;
reg   [3:0] trunc_ln8_reg_2411;
reg   [3:0] trunc_ln8_reg_2411_pp0_iter1_reg;
reg   [3:0] trunc_ln8_reg_2411_pp0_iter2_reg;
reg   [3:0] trunc_ln8_reg_2411_pp0_iter3_reg;
reg   [3:0] trunc_ln8_reg_2411_pp0_iter4_reg;
reg   [1:0] lshr_ln_reg_2423;
wire   [5:0] or_ln8_fu_1647_p3;
reg   [5:0] or_ln8_reg_2430;
wire   [7:0] add_ln12_5_fu_1659_p2;
reg   [7:0] add_ln12_5_reg_2435;
wire   [6:0] r_fu_1678_p3;
reg   [6:0] r_reg_2440;
wire   [63:0] zext_ln12_fu_1707_p1;
reg   [63:0] zext_ln12_reg_2446;
reg   [63:0] zext_ln12_reg_2446_pp0_iter1_reg;
reg   [63:0] zext_ln12_reg_2446_pp0_iter2_reg;
reg   [63:0] zext_ln12_reg_2446_pp0_iter3_reg;
reg   [8:0] lshr_ln12_5_reg_2706;
reg   [8:0] lshr_ln12_6_reg_2711;
reg   [8:0] lshr_ln12_8_reg_2756;
wire   [0:0] icmp_ln8_fu_1969_p2;
reg   [0:0] icmp_ln8_reg_2801;
reg   [0:0] icmp_ln7_reg_2806;
wire  signed [31:0] tmp_fu_2003_p19;
reg  signed [31:0] tmp_reg_2810;
wire  signed [31:0] tmp_1_fu_2042_p19;
reg  signed [31:0] tmp_1_reg_2815;
wire  signed [31:0] tmp_2_fu_2081_p19;
reg  signed [31:0] tmp_2_reg_2821;
wire  signed [31:0] grp_fu_1415_p19;
reg  signed [31:0] tmp_3_reg_2827;
wire  signed [31:0] grp_fu_1454_p19;
reg  signed [31:0] tmp_4_reg_2832;
wire  signed [31:0] grp_fu_1493_p19;
reg  signed [31:0] tmp_5_reg_2838;
wire  signed [31:0] tmp_9_fu_2175_p19;
reg  signed [31:0] tmp_9_reg_2964;
wire  signed [31:0] grp_fu_1532_p19;
reg  signed [31:0] tmp_10_reg_3009;
reg  signed [31:0] tmp_6_reg_3014;
reg  signed [31:0] tmp_7_reg_3019;
reg  signed [31:0] tmp_8_reg_3025;
reg  signed [31:0] tmp_s_reg_3031;
wire   [31:0] grp_fu_1379_p2;
reg   [31:0] mul_ln13_reg_3036;
wire   [31:0] grp_fu_1383_p2;
reg   [31:0] mul_ln13_2_reg_3041;
reg   [31:0] mul_ln13_2_reg_3041_pp0_iter3_reg;
wire   [31:0] grp_fu_1387_p2;
reg   [31:0] mul_ln13_4_reg_3046;
reg   [31:0] mul_ln13_4_reg_3046_pp0_iter3_reg;
wire   [31:0] grp_fu_1391_p2;
reg   [31:0] mul_ln13_7_reg_3051;
wire   [31:0] grp_fu_1395_p2;
reg   [31:0] mul_ln13_11_reg_3056;
wire   [31:0] grp_fu_1403_p2;
reg   [31:0] mul_ln13_13_reg_3061;
reg   [31:0] mul_ln13_1_reg_3066;
reg   [31:0] mul_ln13_3_reg_3071;
reg   [31:0] mul_ln13_5_reg_3076;
reg   [31:0] mul_ln13_6_reg_3081;
reg   [31:0] mul_ln13_8_reg_3086;
reg   [31:0] mul_ln13_10_reg_3091;
wire   [31:0] add_ln13_13_fu_2241_p2;
reg   [31:0] add_ln13_13_reg_3096;
wire   [31:0] add_ln13_fu_2247_p2;
reg   [31:0] add_ln13_reg_3101;
wire   [31:0] add_ln13_1_fu_2251_p2;
reg   [31:0] add_ln13_1_reg_3106;
wire   [31:0] add_ln13_5_fu_2259_p2;
reg   [31:0] add_ln13_5_reg_3111;
wire   [31:0] add_ln13_8_fu_2264_p2;
reg   [31:0] add_ln13_8_reg_3116;
wire   [31:0] add_ln13_9_fu_2269_p2;
reg   [31:0] add_ln13_9_reg_3121;
wire   [31:0] add_ln13_14_fu_2279_p2;
reg   [31:0] add_ln13_14_reg_3126;
wire   [31:0] add_ln13_6_fu_2288_p2;
reg   [31:0] add_ln13_6_reg_3131;
wire   [31:0] temp_1_fu_2297_p2;
reg   [31:0] temp_1_reg_3136;
wire   [31:0] temp_fu_2306_p2;
reg   [31:0] temp_reg_3148;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [0:0] ap_phi_mux_icmp_ln86_phi_fu_1371_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln12_1_fu_1743_p1;
wire   [63:0] zext_ln12_2_fu_1769_p1;
wire   [63:0] zext_ln12_3_fu_1805_p1;
wire   [63:0] zext_ln12_7_fu_1891_p1;
wire   [63:0] zext_ln12_10_fu_1946_p1;
wire   [63:0] zext_ln12_4_fu_2141_p1;
wire   [63:0] zext_ln12_5_fu_2153_p1;
wire   [63:0] zext_ln12_6_fu_2164_p1;
wire   [63:0] zext_ln12_8_fu_2214_p1;
reg   [11:0] indvar_flatten2_fu_178;
wire   [11:0] add_ln7_fu_1958_p2;
reg   [6:0] r3_fu_182;
reg   [6:0] ap_sig_allocacmp_r3_load;
reg   [5:0] c4_fu_186;
wire   [5:0] c_fu_1964_p2;
reg   [5:0] ap_sig_allocacmp_c4_load;
reg   [6:0] indvars_iv_next805_fu_190;
wire   [6:0] indvars_iv_next80_fu_2225_p2;
reg    orig_0_ce1_local;
reg   [8:0] orig_0_address1_local;
reg    orig_0_ce0_local;
reg   [8:0] orig_0_address0_local;
reg    orig_2_ce1_local;
reg   [8:0] orig_2_address1_local;
reg    orig_2_ce0_local;
reg   [8:0] orig_2_address0_local;
reg    orig_4_ce1_local;
reg   [8:0] orig_4_address1_local;
reg    orig_4_ce0_local;
reg   [8:0] orig_4_address0_local;
reg    orig_6_ce1_local;
reg   [8:0] orig_6_address1_local;
reg    orig_6_ce0_local;
reg   [8:0] orig_6_address0_local;
reg    orig_8_ce1_local;
reg   [8:0] orig_8_address1_local;
reg    orig_8_ce0_local;
reg   [8:0] orig_8_address0_local;
reg    orig_10_ce1_local;
reg   [8:0] orig_10_address1_local;
reg    orig_10_ce0_local;
reg   [8:0] orig_10_address0_local;
reg    orig_12_ce1_local;
reg   [8:0] orig_12_address1_local;
reg    orig_12_ce0_local;
reg   [8:0] orig_12_address0_local;
reg    orig_14_ce1_local;
reg   [8:0] orig_14_address1_local;
reg    orig_14_ce0_local;
reg   [8:0] orig_14_address0_local;
reg    orig_1_ce1_local;
reg   [8:0] orig_1_address1_local;
reg    orig_1_ce0_local;
reg   [8:0] orig_1_address0_local;
reg    orig_3_ce1_local;
reg   [8:0] orig_3_address1_local;
reg    orig_3_ce0_local;
reg   [8:0] orig_3_address0_local;
reg    orig_5_ce1_local;
reg   [8:0] orig_5_address1_local;
reg    orig_5_ce0_local;
reg   [8:0] orig_5_address0_local;
reg    orig_7_ce1_local;
reg   [8:0] orig_7_address1_local;
reg    orig_7_ce0_local;
reg   [8:0] orig_7_address0_local;
reg    orig_9_ce1_local;
reg   [8:0] orig_9_address1_local;
reg    orig_9_ce0_local;
reg   [8:0] orig_9_address0_local;
reg    orig_11_ce1_local;
reg   [8:0] orig_11_address1_local;
reg    orig_11_ce0_local;
reg   [8:0] orig_11_address0_local;
reg    orig_13_ce1_local;
reg   [8:0] orig_13_address1_local;
reg    orig_13_ce0_local;
reg   [8:0] orig_13_address0_local;
reg    orig_15_ce1_local;
reg   [8:0] orig_15_address1_local;
reg    orig_15_ce0_local;
reg   [8:0] orig_15_address0_local;
reg    sol_13_we0_local;
reg    sol_13_ce0_local;
reg    sol_11_we0_local;
reg    sol_11_ce0_local;
reg    sol_9_we0_local;
reg    sol_9_ce0_local;
reg    sol_7_we0_local;
reg    sol_7_ce0_local;
reg    sol_5_we0_local;
reg    sol_5_ce0_local;
reg    sol_3_we0_local;
reg    sol_3_ce0_local;
reg    sol_1_we0_local;
reg    sol_1_ce0_local;
reg    sol_15_we0_local;
reg    sol_15_ce0_local;
reg    sol_12_we0_local;
reg    sol_12_ce0_local;
reg    sol_10_we0_local;
reg    sol_10_ce0_local;
reg    sol_8_we0_local;
reg    sol_8_ce0_local;
reg    sol_6_we0_local;
reg    sol_6_ce0_local;
reg    sol_4_we0_local;
reg    sol_4_ce0_local;
reg    sol_2_we0_local;
reg    sol_2_ce0_local;
reg    sol_0_we0_local;
reg    sol_0_ce0_local;
reg    sol_14_we0_local;
reg    sol_14_ce0_local;
reg  signed [31:0] grp_fu_1379_p0;
reg  signed [31:0] grp_fu_1379_p1;
reg  signed [31:0] grp_fu_1383_p0;
reg  signed [31:0] grp_fu_1383_p1;
reg  signed [31:0] grp_fu_1387_p0;
reg  signed [31:0] grp_fu_1387_p1;
reg  signed [31:0] grp_fu_1391_p0;
reg  signed [31:0] grp_fu_1391_p1;
reg  signed [31:0] grp_fu_1395_p0;
reg  signed [31:0] grp_fu_1395_p1;
reg  signed [31:0] grp_fu_1399_p0;
reg  signed [31:0] grp_fu_1399_p1;
reg  signed [31:0] grp_fu_1403_p0;
reg  signed [31:0] grp_fu_1403_p1;
reg  signed [31:0] grp_fu_1407_p0;
reg  signed [31:0] grp_fu_1407_p1;
reg  signed [31:0] grp_fu_1411_p0;
reg  signed [31:0] grp_fu_1411_p1;
wire   [31:0] grp_fu_1415_p17;
reg   [3:0] grp_fu_1415_p18;
wire   [31:0] grp_fu_1454_p17;
reg   [3:0] grp_fu_1454_p18;
wire   [31:0] grp_fu_1493_p17;
reg   [3:0] grp_fu_1493_p18;
wire   [31:0] grp_fu_1532_p17;
reg   [3:0] grp_fu_1532_p18;
wire   [4:0] tmp_15_fu_1637_p4;
wire   [7:0] or_ln8_cast36_fu_1655_p1;
wire   [8:0] add_ln_fu_1700_p3;
wire   [12:0] tmp_11_fu_1693_p3;
wire   [12:0] add_ln12_fu_1727_p2;
wire   [8:0] lshr_ln12_2_fu_1733_p4;
wire   [6:0] select_ln4_1_fu_1671_p3;
wire   [8:0] add_ln5_fu_1762_p3;
wire   [12:0] tmp_13_fu_1755_p3;
wire   [12:0] add_ln12_1_fu_1789_p2;
wire   [8:0] lshr_ln12_4_fu_1795_p4;
wire   [6:0] select_ln4_cast1_fu_1817_p1;
wire   [7:0] tmp1_cast_cast_fu_1820_p3;
wire   [12:0] tmp1_cast_cast_cast_fu_1828_p1;
wire   [12:0] tmp_12_fu_1685_p3;
wire   [12:0] empty_fu_1832_p2;
wire   [12:0] add_ln12_2_fu_1848_p2;
wire   [12:0] or_ln8_cast_fu_1864_p1;
wire   [12:0] tmp_16_fu_1867_p3;
wire   [12:0] add_ln12_3_fu_1875_p2;
wire   [8:0] lshr_ln12_7_fu_1881_p4;
wire   [12:0] tmp_17_fu_1903_p3;
wire   [12:0] add_ln12_4_fu_1911_p2;
wire   [12:0] zext_ln12_9_fu_1927_p1;
wire   [12:0] add_ln12_6_fu_1930_p2;
wire   [8:0] lshr_ln12_9_fu_1936_p4;
wire   [31:0] tmp_fu_2003_p17;
wire   [31:0] tmp_1_fu_2042_p17;
wire   [31:0] tmp_2_fu_2081_p17;
wire   [2:0] zext_ln5_fu_2120_p1;
wire   [3:0] zext_ln5_cast_fu_2123_p3;
wire   [8:0] zext_ln5_1_fu_2131_p1;
wire   [8:0] tmp_14_fu_1996_p3;
wire   [8:0] add_ln5_1_fu_2135_p2;
wire   [31:0] tmp_9_fu_2175_p17;
wire   [31:0] add_ln13_12_fu_2235_p2;
wire   [31:0] add_ln13_4_fu_2255_p2;
wire   [31:0] add_ln13_11_fu_2275_p2;
wire   [31:0] add_ln13_3_fu_2284_p2;
wire   [31:0] add_ln13_10_fu_2293_p2;
wire   [31:0] add_ln13_2_fu_2302_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to4;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1583;
reg    ap_condition_1589;
reg    ap_condition_714;
wire   [3:0] grp_fu_1415_p1;
wire   [3:0] grp_fu_1415_p3;
wire   [3:0] grp_fu_1415_p5;
wire   [3:0] grp_fu_1415_p7;
wire  signed [3:0] grp_fu_1415_p9;
wire  signed [3:0] grp_fu_1415_p11;
wire  signed [3:0] grp_fu_1415_p13;
wire  signed [3:0] grp_fu_1415_p15;
wire   [3:0] grp_fu_1454_p1;
wire   [3:0] grp_fu_1454_p3;
wire   [3:0] grp_fu_1454_p5;
wire   [3:0] grp_fu_1454_p7;
wire  signed [3:0] grp_fu_1454_p9;
wire  signed [3:0] grp_fu_1454_p11;
wire  signed [3:0] grp_fu_1454_p13;
wire  signed [3:0] grp_fu_1454_p15;
wire  signed [3:0] grp_fu_1493_p1;
wire   [3:0] grp_fu_1493_p3;
wire   [3:0] grp_fu_1493_p5;
wire   [3:0] grp_fu_1493_p7;
wire   [3:0] grp_fu_1493_p9;
wire  signed [3:0] grp_fu_1493_p11;
wire  signed [3:0] grp_fu_1493_p13;
wire  signed [3:0] grp_fu_1493_p15;
wire  signed [3:0] grp_fu_1532_p1;
wire   [3:0] grp_fu_1532_p3;
wire   [3:0] grp_fu_1532_p5;
wire   [3:0] grp_fu_1532_p7;
wire   [3:0] grp_fu_1532_p9;
wire  signed [3:0] grp_fu_1532_p11;
wire  signed [3:0] grp_fu_1532_p13;
wire  signed [3:0] grp_fu_1532_p15;
wire   [3:0] tmp_fu_2003_p1;
wire   [3:0] tmp_fu_2003_p3;
wire   [3:0] tmp_fu_2003_p5;
wire   [3:0] tmp_fu_2003_p7;
wire  signed [3:0] tmp_fu_2003_p9;
wire  signed [3:0] tmp_fu_2003_p11;
wire  signed [3:0] tmp_fu_2003_p13;
wire  signed [3:0] tmp_fu_2003_p15;
wire   [3:0] tmp_1_fu_2042_p1;
wire   [3:0] tmp_1_fu_2042_p3;
wire   [3:0] tmp_1_fu_2042_p5;
wire   [3:0] tmp_1_fu_2042_p7;
wire  signed [3:0] tmp_1_fu_2042_p9;
wire  signed [3:0] tmp_1_fu_2042_p11;
wire  signed [3:0] tmp_1_fu_2042_p13;
wire  signed [3:0] tmp_1_fu_2042_p15;
wire  signed [3:0] tmp_2_fu_2081_p1;
wire   [3:0] tmp_2_fu_2081_p3;
wire   [3:0] tmp_2_fu_2081_p5;
wire   [3:0] tmp_2_fu_2081_p7;
wire   [3:0] tmp_2_fu_2081_p9;
wire  signed [3:0] tmp_2_fu_2081_p11;
wire  signed [3:0] tmp_2_fu_2081_p13;
wire  signed [3:0] tmp_2_fu_2081_p15;
wire  signed [3:0] tmp_9_fu_2175_p1;
wire   [3:0] tmp_9_fu_2175_p3;
wire   [3:0] tmp_9_fu_2175_p5;
wire   [3:0] tmp_9_fu_2175_p7;
wire   [3:0] tmp_9_fu_2175_p9;
wire  signed [3:0] tmp_9_fu_2175_p11;
wire  signed [3:0] tmp_9_fu_2175_p13;
wire  signed [3:0] tmp_9_fu_2175_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 indvar_flatten2_fu_178 = 12'd0;
#0 r3_fu_182 = 7'd0;
#0 c4_fu_186 = 6'd0;
#0 indvars_iv_next805_fu_190 = 7'd0;
#0 ap_done_reg = 1'b0;
end
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1379_p0),.din1(grp_fu_1379_p1),.ce(1'b1),.dout(grp_fu_1379_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1383_p0),.din1(grp_fu_1383_p1),.ce(1'b1),.dout(grp_fu_1383_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1387_p0),.din1(grp_fu_1387_p1),.ce(1'b1),.dout(grp_fu_1387_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1391_p0),.din1(grp_fu_1391_p1),.ce(1'b1),.dout(grp_fu_1391_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U5(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1395_p0),.din1(grp_fu_1395_p1),.ce(1'b1),.dout(grp_fu_1395_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U6(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1399_p0),.din1(grp_fu_1399_p1),.ce(1'b1),.dout(grp_fu_1399_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U7(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1403_p0),.din1(grp_fu_1403_p1),.ce(1'b1),.dout(grp_fu_1403_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U8(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1407_p0),.din1(grp_fu_1407_p1),.ce(1'b1),.dout(grp_fu_1407_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U9(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1411_p0),.din1(grp_fu_1411_p1),.ce(1'b1),.dout(grp_fu_1411_p2));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_17_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h4 ),.din2_WIDTH( 32 ),.CASE3( 4'h6 ),.din3_WIDTH( 32 ),.CASE4( 4'h8 ),.din4_WIDTH( 32 ),.CASE5( 4'hA ),.din5_WIDTH( 32 ),.CASE6( 4'hC ),.din6_WIDTH( 32 ),.CASE7( 4'hE ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_17_4_32_1_1_U10(.din0(orig_0_q0),.din1(orig_2_q0),.din2(orig_4_q0),.din3(orig_6_q0),.din4(orig_8_q0),.din5(orig_10_q0),.din6(orig_12_q0),.din7(orig_14_q0),.def(grp_fu_1415_p17),.sel(grp_fu_1415_p18),.dout(grp_fu_1415_p19));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_17_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h4 ),.din2_WIDTH( 32 ),.CASE3( 4'h6 ),.din3_WIDTH( 32 ),.CASE4( 4'h8 ),.din4_WIDTH( 32 ),.CASE5( 4'hA ),.din5_WIDTH( 32 ),.CASE6( 4'hC ),.din6_WIDTH( 32 ),.CASE7( 4'hE ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_17_4_32_1_1_U11(.din0(orig_1_q0),.din1(orig_3_q0),.din2(orig_5_q0),.din3(orig_7_q0),.din4(orig_9_q0),.din5(orig_11_q0),.din6(orig_13_q0),.din7(orig_15_q0),.def(grp_fu_1454_p17),.sel(grp_fu_1454_p18),.dout(grp_fu_1454_p19));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_17_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hE ),.din0_WIDTH( 32 ),.CASE1( 4'h0 ),.din1_WIDTH( 32 ),.CASE2( 4'h2 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h6 ),.din4_WIDTH( 32 ),.CASE5( 4'h8 ),.din5_WIDTH( 32 ),.CASE6( 4'hA ),.din6_WIDTH( 32 ),.CASE7( 4'hC ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_17_4_32_1_1_U12(.din0(orig_0_q0),.din1(orig_2_q0),.din2(orig_4_q0),.din3(orig_6_q0),.din4(orig_8_q0),.din5(orig_10_q0),.din6(orig_12_q0),.din7(orig_14_q0),.def(grp_fu_1493_p17),.sel(grp_fu_1493_p18),.dout(grp_fu_1493_p19));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_17_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hE ),.din0_WIDTH( 32 ),.CASE1( 4'h0 ),.din1_WIDTH( 32 ),.CASE2( 4'h2 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h6 ),.din4_WIDTH( 32 ),.CASE5( 4'h8 ),.din5_WIDTH( 32 ),.CASE6( 4'hA ),.din6_WIDTH( 32 ),.CASE7( 4'hC ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_17_4_32_1_1_U13(.din0(orig_1_q0),.din1(orig_3_q0),.din2(orig_5_q0),.din3(orig_7_q0),.din4(orig_9_q0),.din5(orig_11_q0),.din6(orig_13_q0),.din7(orig_15_q0),.def(grp_fu_1532_p17),.sel(grp_fu_1532_p18),.dout(grp_fu_1532_p19));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_17_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h4 ),.din2_WIDTH( 32 ),.CASE3( 4'h6 ),.din3_WIDTH( 32 ),.CASE4( 4'h8 ),.din4_WIDTH( 32 ),.CASE5( 4'hA ),.din5_WIDTH( 32 ),.CASE6( 4'hC ),.din6_WIDTH( 32 ),.CASE7( 4'hE ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_17_4_32_1_1_U14(.din0(orig_0_q1),.din1(orig_2_q1),.din2(orig_4_q1),.din3(orig_6_q1),.din4(orig_8_q1),.din5(orig_10_q1),.din6(orig_12_q1),.din7(orig_14_q1),.def(tmp_fu_2003_p17),.sel(trunc_ln8_reg_2411),.dout(tmp_fu_2003_p19));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_17_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h4 ),.din2_WIDTH( 32 ),.CASE3( 4'h6 ),.din3_WIDTH( 32 ),.CASE4( 4'h8 ),.din4_WIDTH( 32 ),.CASE5( 4'hA ),.din5_WIDTH( 32 ),.CASE6( 4'hC ),.din6_WIDTH( 32 ),.CASE7( 4'hE ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_17_4_32_1_1_U15(.din0(orig_1_q1),.din1(orig_3_q1),.din2(orig_5_q1),.din3(orig_7_q1),.din4(orig_9_q1),.din5(orig_11_q1),.din6(orig_13_q1),.din7(orig_15_q1),.def(tmp_1_fu_2042_p17),.sel(trunc_ln8_reg_2411),.dout(tmp_1_fu_2042_p19));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_17_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hE ),.din0_WIDTH( 32 ),.CASE1( 4'h0 ),.din1_WIDTH( 32 ),.CASE2( 4'h2 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h6 ),.din4_WIDTH( 32 ),.CASE5( 4'h8 ),.din5_WIDTH( 32 ),.CASE6( 4'hA ),.din6_WIDTH( 32 ),.CASE7( 4'hC ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_17_4_32_1_1_U16(.din0(orig_0_q1),.din1(orig_2_q1),.din2(orig_4_q1),.din3(orig_6_q1),.din4(orig_8_q1),.din5(orig_10_q1),.din6(orig_12_q1),.din7(orig_14_q1),.def(tmp_2_fu_2081_p17),.sel(trunc_ln8_reg_2411),.dout(tmp_2_fu_2081_p19));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_17_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hE ),.din0_WIDTH( 32 ),.CASE1( 4'h0 ),.din1_WIDTH( 32 ),.CASE2( 4'h2 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h6 ),.din4_WIDTH( 32 ),.CASE5( 4'h8 ),.din5_WIDTH( 32 ),.CASE6( 4'hA ),.din6_WIDTH( 32 ),.CASE7( 4'hC ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_17_4_32_1_1_U17(.din0(orig_1_q1),.din1(orig_3_q1),.din2(orig_5_q1),.din3(orig_7_q1),.din4(orig_9_q1),.din5(orig_11_q1),.din6(orig_13_q1),.din7(orig_15_q1),.def(tmp_9_fu_2175_p17),.sel(trunc_ln8_reg_2411),.dout(tmp_9_fu_2175_p19));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage1)) begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b0))) begin
            ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage1_11001)) begin
            ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c4_fu_186 <= 6'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        c4_fu_186 <= c_fu_1964_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1589)) begin
            icmp_ln86_reg_1368 <= icmp_ln8_reg_2801;
        end else if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            icmp_ln86_reg_1368 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten2_fu_178 <= 12'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten2_fu_178 <= add_ln7_fu_1958_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvars_iv_next805_fu_190 <= 7'd1;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvars_iv_next805_fu_190 <= indvars_iv_next80_fu_2225_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        r3_fu_182 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        r3_fu_182 <= r_fu_1678_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln12_5_reg_2435[7 : 1] <= add_ln12_5_fu_1659_p2[7 : 1];
        add_ln13_14_reg_3126 <= add_ln13_14_fu_2279_p2;
        add_ln13_1_reg_3106 <= add_ln13_1_fu_2251_p2;
        add_ln13_5_reg_3111 <= add_ln13_5_fu_2259_p2;
        add_ln13_8_reg_3116 <= add_ln13_8_fu_2264_p2;
        add_ln13_9_reg_3121 <= add_ln13_9_fu_2269_p2;
        add_ln13_reg_3101 <= add_ln13_fu_2247_p2;
        indvars_iv_next80_mid1_reg_2406 <= indvars_iv_next80_mid1_fu_1617_p2;
        lshr_ln_reg_2423 <= {{select_ln4_fu_1609_p3[5:4]}};
        mul_ln13_2_reg_3041_pp0_iter3_reg <= mul_ln13_2_reg_3041;
        mul_ln13_4_reg_3046_pp0_iter3_reg <= mul_ln13_4_reg_3046;
        or_ln8_reg_2430[5 : 1] <= or_ln8_fu_1647_p3[5 : 1];
        r3_load_reg_2393 <= ap_sig_allocacmp_r3_load;
        select_ln4_reg_2398 <= select_ln4_fu_1609_p3;
        temp_reg_3148 <= temp_fu_2306_p2;
        tmp_1_reg_2815 <= tmp_1_fu_2042_p19;
        tmp_2_reg_2821 <= tmp_2_fu_2081_p19;
        tmp_9_reg_2964 <= tmp_9_fu_2175_p19;
        tmp_reg_2810 <= tmp_fu_2003_p19;
        trunc_ln8_reg_2411 <= trunc_ln8_fu_1623_p1;
        trunc_ln8_reg_2411_pp0_iter1_reg <= trunc_ln8_reg_2411;
        trunc_ln8_reg_2411_pp0_iter2_reg <= trunc_ln8_reg_2411_pp0_iter1_reg;
        trunc_ln8_reg_2411_pp0_iter3_reg <= trunc_ln8_reg_2411_pp0_iter2_reg;
        trunc_ln8_reg_2411_pp0_iter4_reg <= trunc_ln8_reg_2411_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln13_13_reg_3096 <= add_ln13_13_fu_2241_p2;
        add_ln13_6_reg_3131 <= add_ln13_6_fu_2288_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        icmp_ln7_reg_2806 <= icmp_ln7_fu_1975_p2;
        lshr_ln12_5_reg_2706 <= {{empty_fu_1832_p2[12:4]}};
        lshr_ln12_6_reg_2711 <= {{add_ln12_2_fu_1848_p2[12:4]}};
        lshr_ln12_8_reg_2756 <= {{add_ln12_4_fu_1911_p2[12:4]}};
        r_reg_2440 <= r_fu_1678_p3;
        temp_1_reg_3136 <= temp_1_fu_2297_p2;
        zext_ln12_reg_2446[8 : 0] <= zext_ln12_fu_1707_p1[8 : 0];
        zext_ln12_reg_2446_pp0_iter1_reg[8 : 0] <= zext_ln12_reg_2446[8 : 0];
        zext_ln12_reg_2446_pp0_iter2_reg[8 : 0] <= zext_ln12_reg_2446_pp0_iter1_reg[8 : 0];
        zext_ln12_reg_2446_pp0_iter3_reg[8 : 0] <= zext_ln12_reg_2446_pp0_iter2_reg[8 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln8_reg_2801 <= icmp_ln8_fu_1969_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln13_10_reg_3091 <= grp_fu_1403_p2;
        mul_ln13_1_reg_3066 <= grp_fu_1379_p2;
        mul_ln13_3_reg_3071 <= grp_fu_1383_p2;
        mul_ln13_5_reg_3076 <= grp_fu_1387_p2;
        mul_ln13_6_reg_3081 <= grp_fu_1391_p2;
        mul_ln13_8_reg_3086 <= grp_fu_1395_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_ln13_11_reg_3056 <= grp_fu_1395_p2;
        mul_ln13_13_reg_3061 <= grp_fu_1403_p2;
        mul_ln13_2_reg_3041 <= grp_fu_1383_p2;
        mul_ln13_4_reg_3046 <= grp_fu_1387_p2;
        mul_ln13_7_reg_3051 <= grp_fu_1391_p2;
        mul_ln13_reg_3036 <= grp_fu_1379_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_1571 <= grp_fu_1399_p2;
        reg_1575 <= grp_fu_1407_p2;
        reg_1579 <= grp_fu_1411_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_10_reg_3009 <= grp_fu_1532_p19;
        tmp_3_reg_2827 <= grp_fu_1415_p19;
        tmp_4_reg_2832 <= grp_fu_1454_p19;
        tmp_5_reg_2838 <= grp_fu_1493_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_6_reg_3014 <= grp_fu_1415_p19;
        tmp_7_reg_3019 <= grp_fu_1454_p19;
        tmp_8_reg_3025 <= grp_fu_1493_p19;
        tmp_s_reg_3031 <= grp_fu_1532_p19;
    end
end
always @ (*) begin
    if (((icmp_ln7_fu_1975_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to4 = 1'b1;
    end else begin
        ap_idle_pp0_1to4 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1583)) begin
            ap_phi_mux_icmp_ln86_phi_fu_1371_p4 = icmp_ln8_reg_2801;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln86_phi_fu_1371_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln86_phi_fu_1371_p4 = icmp_ln8_reg_2801;
        end
    end else begin
        ap_phi_mux_icmp_ln86_phi_fu_1371_p4 = icmp_ln8_reg_2801;
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
        ap_sig_allocacmp_c4_load = 6'd0;
    end else begin
        ap_sig_allocacmp_c4_load = c4_fu_186;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_r3_load = 7'd0;
    end else begin
        ap_sig_allocacmp_r3_load = r3_fu_182;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1379_p0 = filter_load_5;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1379_p0 = filter_load_2;
    end else begin
        grp_fu_1379_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1379_p1 = tmp_5_reg_2838;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1379_p1 = tmp_2_reg_2821;
    end else begin
        grp_fu_1379_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1383_p0 = filter_load_8;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1383_p0 = filter_load_1;
    end else begin
        grp_fu_1383_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1383_p1 = tmp_8_reg_3025;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1383_p1 = tmp_1_reg_2815;
    end else begin
        grp_fu_1383_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1387_p0 = filter_load_6;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1387_p0 = filter_load;
    end else begin
        grp_fu_1387_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1387_p1 = tmp_6_reg_3014;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1387_p1 = tmp_reg_2810;
    end else begin
        grp_fu_1387_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1391_p0 = filter_load_4;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1391_p0 = filter_load_3;
    end else begin
        grp_fu_1391_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1391_p1 = tmp_4_reg_2832;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1391_p1 = tmp_3_reg_2827;
    end else begin
        grp_fu_1391_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1395_p0 = filter_load_7;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1395_p0 = filter_load_1;
    end else begin
        grp_fu_1395_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1395_p1 = tmp_7_reg_3019;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1395_p1 = tmp_2_reg_2821;
    end else begin
        grp_fu_1395_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1399_p0 = filter_load_2;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1399_p0 = filter_load_8;
    end else begin
        grp_fu_1399_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1399_p1 = tmp_9_reg_2964;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1399_p1 = tmp_10_reg_3009;
    end else begin
        grp_fu_1399_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1403_p0 = filter_load_5;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1403_p0 = filter_load;
    end else begin
        grp_fu_1403_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1403_p1 = tmp_s_reg_3031;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1403_p1 = tmp_1_reg_2815;
    end else begin
        grp_fu_1403_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1407_p0 = filter_load_6;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1407_p0 = filter_load_4;
    end else begin
        grp_fu_1407_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1407_p1 = tmp_7_reg_3019;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1407_p1 = tmp_5_reg_2838;
    end else begin
        grp_fu_1407_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1411_p0 = filter_load_7;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1411_p0 = filter_load_3;
    end else begin
        grp_fu_1411_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1411_p1 = tmp_8_reg_3025;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1411_p1 = tmp_4_reg_2832;
    end else begin
        grp_fu_1411_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1415_p18 = trunc_ln8_reg_2411_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1415_p18 = trunc_ln8_reg_2411;
        end else begin
            grp_fu_1415_p18 = 'bx;
        end
    end else begin
        grp_fu_1415_p18 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1454_p18 = trunc_ln8_reg_2411_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1454_p18 = trunc_ln8_reg_2411;
        end else begin
            grp_fu_1454_p18 = 'bx;
        end
    end else begin
        grp_fu_1454_p18 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1493_p18 = trunc_ln8_reg_2411_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1493_p18 = trunc_ln8_reg_2411;
        end else begin
            grp_fu_1493_p18 = 'bx;
        end
    end else begin
        grp_fu_1493_p18 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1532_p18 = trunc_ln8_reg_2411_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1532_p18 = trunc_ln8_reg_2411;
        end else begin
            grp_fu_1532_p18 = 'bx;
        end
    end else begin
        grp_fu_1532_p18 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2411 == 4'd14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address0_local = zext_ln12_6_fu_2164_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2411 == 4'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address0_local = zext_ln12_4_fu_2141_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2411 == 4'd14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_address0_local = zext_ln12_3_fu_1805_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2411 == 4'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_address0_local = zext_ln12_2_fu_1769_p1;
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_714)) begin
        if ((trunc_ln8_reg_2411 == 4'd14)) begin
            orig_0_address1_local = zext_ln12_1_fu_1743_p1;
        end else if ((trunc_ln8_reg_2411 == 4'd0)) begin
            orig_0_address1_local = zext_ln12_fu_1707_p1;
        end else begin
            orig_0_address1_local = 'bx;
        end
    end else begin
        orig_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2411 == 4'd14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2411 == 4'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2411 == 4'd8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_10_address0_local = zext_ln12_6_fu_2164_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2411 == 4'd10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_10_address0_local = zext_ln12_4_fu_2141_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2411 == 4'd8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_10_address0_local = zext_ln12_3_fu_1805_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2411 == 4'd10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_10_address0_local = zext_ln12_2_fu_1769_p1;
    end else begin
        orig_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_714)) begin
        if ((trunc_ln8_reg_2411 == 4'd8)) begin
            orig_10_address1_local = zext_ln12_1_fu_1743_p1;
        end else if ((trunc_ln8_reg_2411 == 4'd10)) begin
            orig_10_address1_local = zext_ln12_fu_1707_p1;
        end else begin
            orig_10_address1_local = 'bx;
        end
    end else begin
        orig_10_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2411 == 4'd10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2411 == 4'd8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_10_ce0_local = 1'b1;
    end else begin
        orig_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_10_ce1_local = 1'b1;
    end else begin
        orig_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2411 == 4'd8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_11_address0_local = zext_ln12_8_fu_2214_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2411 == 4'd10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_11_address0_local = zext_ln12_5_fu_2153_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2411 == 4'd8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_11_address0_local = zext_ln12_10_fu_1946_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2411 == 4'd10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_11_address0_local = zext_ln12_2_fu_1769_p1;
    end else begin
        orig_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_714)) begin
        if ((trunc_ln8_reg_2411 == 4'd8)) begin
            orig_11_address1_local = zext_ln12_7_fu_1891_p1;
        end else if ((trunc_ln8_reg_2411 == 4'd10)) begin
            orig_11_address1_local = zext_ln12_fu_1707_p1;
        end else begin
            orig_11_address1_local = 'bx;
        end
    end else begin
        orig_11_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2411 == 4'd10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2411 == 4'd8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_11_ce0_local = 1'b1;
    end else begin
        orig_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_11_ce1_local = 1'b1;
    end else begin
        orig_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2411 == 4'd10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_12_address0_local = zext_ln12_6_fu_2164_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2411 == 4'd12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_12_address0_local = zext_ln12_4_fu_2141_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2411 == 4'd10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_12_address0_local = zext_ln12_3_fu_1805_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2411 == 4'd12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_12_address0_local = zext_ln12_2_fu_1769_p1;
    end else begin
        orig_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_714)) begin
        if ((trunc_ln8_reg_2411 == 4'd10)) begin
            orig_12_address1_local = zext_ln12_1_fu_1743_p1;
        end else if ((trunc_ln8_reg_2411 == 4'd12)) begin
            orig_12_address1_local = zext_ln12_fu_1707_p1;
        end else begin
            orig_12_address1_local = 'bx;
        end
    end else begin
        orig_12_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2411 == 4'd12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2411 == 4'd10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_12_ce0_local = 1'b1;
    end else begin
        orig_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_12_ce1_local = 1'b1;
    end else begin
        orig_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2411 == 4'd10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_13_address0_local = zext_ln12_8_fu_2214_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2411 == 4'd12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_13_address0_local = zext_ln12_5_fu_2153_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2411 == 4'd10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_13_address0_local = zext_ln12_10_fu_1946_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2411 == 4'd12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_13_address0_local = zext_ln12_2_fu_1769_p1;
    end else begin
        orig_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_714)) begin
        if ((trunc_ln8_reg_2411 == 4'd10)) begin
            orig_13_address1_local = zext_ln12_7_fu_1891_p1;
        end else if ((trunc_ln8_reg_2411 == 4'd12)) begin
            orig_13_address1_local = zext_ln12_fu_1707_p1;
        end else begin
            orig_13_address1_local = 'bx;
        end
    end else begin
        orig_13_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2411 == 4'd12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2411 == 4'd10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_13_ce0_local = 1'b1;
    end else begin
        orig_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_13_ce1_local = 1'b1;
    end else begin
        orig_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2411 == 4'd12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_14_address0_local = zext_ln12_6_fu_2164_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2411 == 4'd14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_14_address0_local = zext_ln12_4_fu_2141_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2411 == 4'd12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_14_address0_local = zext_ln12_3_fu_1805_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2411 == 4'd14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_14_address0_local = zext_ln12_2_fu_1769_p1;
    end else begin
        orig_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_714)) begin
        if ((trunc_ln8_reg_2411 == 4'd12)) begin
            orig_14_address1_local = zext_ln12_1_fu_1743_p1;
        end else if ((trunc_ln8_reg_2411 == 4'd14)) begin
            orig_14_address1_local = zext_ln12_fu_1707_p1;
        end else begin
            orig_14_address1_local = 'bx;
        end
    end else begin
        orig_14_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2411 == 4'd14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2411 == 4'd12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_14_ce0_local = 1'b1;
    end else begin
        orig_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_14_ce1_local = 1'b1;
    end else begin
        orig_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2411 == 4'd12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_15_address0_local = zext_ln12_8_fu_2214_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2411 == 4'd14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_15_address0_local = zext_ln12_5_fu_2153_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2411 == 4'd12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_15_address0_local = zext_ln12_10_fu_1946_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2411 == 4'd14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_15_address0_local = zext_ln12_2_fu_1769_p1;
    end else begin
        orig_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_714)) begin
        if ((trunc_ln8_reg_2411 == 4'd12)) begin
            orig_15_address1_local = zext_ln12_7_fu_1891_p1;
        end else if ((trunc_ln8_reg_2411 == 4'd14)) begin
            orig_15_address1_local = zext_ln12_fu_1707_p1;
        end else begin
            orig_15_address1_local = 'bx;
        end
    end else begin
        orig_15_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2411 == 4'd14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2411 == 4'd12) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_15_ce0_local = 1'b1;
    end else begin
        orig_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_15_ce1_local = 1'b1;
    end else begin
        orig_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2411 == 4'd14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address0_local = zext_ln12_8_fu_2214_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2411 == 4'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address0_local = zext_ln12_5_fu_2153_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2411 == 4'd14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_address0_local = zext_ln12_10_fu_1946_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2411 == 4'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_address0_local = zext_ln12_2_fu_1769_p1;
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_714)) begin
        if ((trunc_ln8_reg_2411 == 4'd14)) begin
            orig_1_address1_local = zext_ln12_7_fu_1891_p1;
        end else if ((trunc_ln8_reg_2411 == 4'd0)) begin
            orig_1_address1_local = zext_ln12_fu_1707_p1;
        end else begin
            orig_1_address1_local = 'bx;
        end
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2411 == 4'd14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2411 == 4'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2411 == 4'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_2_address0_local = zext_ln12_6_fu_2164_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2411 == 4'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_2_address0_local = zext_ln12_4_fu_2141_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2411 == 4'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_2_address0_local = zext_ln12_3_fu_1805_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2411 == 4'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_2_address0_local = zext_ln12_2_fu_1769_p1;
    end else begin
        orig_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_714)) begin
        if ((trunc_ln8_reg_2411 == 4'd0)) begin
            orig_2_address1_local = zext_ln12_1_fu_1743_p1;
        end else if ((trunc_ln8_reg_2411 == 4'd2)) begin
            orig_2_address1_local = zext_ln12_fu_1707_p1;
        end else begin
            orig_2_address1_local = 'bx;
        end
    end else begin
        orig_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2411 == 4'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2411 == 4'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_2_ce0_local = 1'b1;
    end else begin
        orig_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_2_ce1_local = 1'b1;
    end else begin
        orig_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2411 == 4'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_3_address0_local = zext_ln12_8_fu_2214_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2411 == 4'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_3_address0_local = zext_ln12_5_fu_2153_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2411 == 4'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_3_address0_local = zext_ln12_10_fu_1946_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2411 == 4'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_3_address0_local = zext_ln12_2_fu_1769_p1;
    end else begin
        orig_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_714)) begin
        if ((trunc_ln8_reg_2411 == 4'd0)) begin
            orig_3_address1_local = zext_ln12_7_fu_1891_p1;
        end else if ((trunc_ln8_reg_2411 == 4'd2)) begin
            orig_3_address1_local = zext_ln12_fu_1707_p1;
        end else begin
            orig_3_address1_local = 'bx;
        end
    end else begin
        orig_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2411 == 4'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2411 == 4'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_3_ce0_local = 1'b1;
    end else begin
        orig_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_3_ce1_local = 1'b1;
    end else begin
        orig_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2411 == 4'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_4_address0_local = zext_ln12_6_fu_2164_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2411 == 4'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_4_address0_local = zext_ln12_4_fu_2141_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2411 == 4'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_4_address0_local = zext_ln12_3_fu_1805_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2411 == 4'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_4_address0_local = zext_ln12_2_fu_1769_p1;
    end else begin
        orig_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_714)) begin
        if ((trunc_ln8_reg_2411 == 4'd2)) begin
            orig_4_address1_local = zext_ln12_1_fu_1743_p1;
        end else if ((trunc_ln8_reg_2411 == 4'd4)) begin
            orig_4_address1_local = zext_ln12_fu_1707_p1;
        end else begin
            orig_4_address1_local = 'bx;
        end
    end else begin
        orig_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2411 == 4'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2411 == 4'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_4_ce0_local = 1'b1;
    end else begin
        orig_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_4_ce1_local = 1'b1;
    end else begin
        orig_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2411 == 4'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_5_address0_local = zext_ln12_8_fu_2214_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2411 == 4'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_5_address0_local = zext_ln12_5_fu_2153_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2411 == 4'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_5_address0_local = zext_ln12_10_fu_1946_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2411 == 4'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_5_address0_local = zext_ln12_2_fu_1769_p1;
    end else begin
        orig_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_714)) begin
        if ((trunc_ln8_reg_2411 == 4'd2)) begin
            orig_5_address1_local = zext_ln12_7_fu_1891_p1;
        end else if ((trunc_ln8_reg_2411 == 4'd4)) begin
            orig_5_address1_local = zext_ln12_fu_1707_p1;
        end else begin
            orig_5_address1_local = 'bx;
        end
    end else begin
        orig_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2411 == 4'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2411 == 4'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_5_ce0_local = 1'b1;
    end else begin
        orig_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_5_ce1_local = 1'b1;
    end else begin
        orig_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2411 == 4'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_6_address0_local = zext_ln12_6_fu_2164_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2411 == 4'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_6_address0_local = zext_ln12_4_fu_2141_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2411 == 4'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_6_address0_local = zext_ln12_3_fu_1805_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2411 == 4'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_6_address0_local = zext_ln12_2_fu_1769_p1;
    end else begin
        orig_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_714)) begin
        if ((trunc_ln8_reg_2411 == 4'd4)) begin
            orig_6_address1_local = zext_ln12_1_fu_1743_p1;
        end else if ((trunc_ln8_reg_2411 == 4'd6)) begin
            orig_6_address1_local = zext_ln12_fu_1707_p1;
        end else begin
            orig_6_address1_local = 'bx;
        end
    end else begin
        orig_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2411 == 4'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2411 == 4'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_6_ce0_local = 1'b1;
    end else begin
        orig_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_6_ce1_local = 1'b1;
    end else begin
        orig_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2411 == 4'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_7_address0_local = zext_ln12_8_fu_2214_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2411 == 4'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_7_address0_local = zext_ln12_5_fu_2153_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2411 == 4'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_7_address0_local = zext_ln12_10_fu_1946_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2411 == 4'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_7_address0_local = zext_ln12_2_fu_1769_p1;
    end else begin
        orig_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_714)) begin
        if ((trunc_ln8_reg_2411 == 4'd4)) begin
            orig_7_address1_local = zext_ln12_7_fu_1891_p1;
        end else if ((trunc_ln8_reg_2411 == 4'd6)) begin
            orig_7_address1_local = zext_ln12_fu_1707_p1;
        end else begin
            orig_7_address1_local = 'bx;
        end
    end else begin
        orig_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2411 == 4'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2411 == 4'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_7_ce0_local = 1'b1;
    end else begin
        orig_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_7_ce1_local = 1'b1;
    end else begin
        orig_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2411 == 4'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_8_address0_local = zext_ln12_6_fu_2164_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2411 == 4'd8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_8_address0_local = zext_ln12_4_fu_2141_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2411 == 4'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_8_address0_local = zext_ln12_3_fu_1805_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2411 == 4'd8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_8_address0_local = zext_ln12_2_fu_1769_p1;
    end else begin
        orig_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_714)) begin
        if ((trunc_ln8_reg_2411 == 4'd6)) begin
            orig_8_address1_local = zext_ln12_1_fu_1743_p1;
        end else if ((trunc_ln8_reg_2411 == 4'd8)) begin
            orig_8_address1_local = zext_ln12_fu_1707_p1;
        end else begin
            orig_8_address1_local = 'bx;
        end
    end else begin
        orig_8_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2411 == 4'd8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2411 == 4'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_8_ce0_local = 1'b1;
    end else begin
        orig_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_8_ce1_local = 1'b1;
    end else begin
        orig_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2411 == 4'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_9_address0_local = zext_ln12_8_fu_2214_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_2411 == 4'd8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_9_address0_local = zext_ln12_5_fu_2153_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2411 == 4'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_9_address0_local = zext_ln12_10_fu_1946_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_2411 == 4'd8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_9_address0_local = zext_ln12_2_fu_1769_p1;
    end else begin
        orig_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_714)) begin
        if ((trunc_ln8_reg_2411 == 4'd6)) begin
            orig_9_address1_local = zext_ln12_7_fu_1891_p1;
        end else if ((trunc_ln8_reg_2411 == 4'd8)) begin
            orig_9_address1_local = zext_ln12_fu_1707_p1;
        end else begin
            orig_9_address1_local = 'bx;
        end
    end else begin
        orig_9_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2411 == 4'd8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2411 == 4'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_9_ce0_local = 1'b1;
    end else begin
        orig_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411 == 4'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_9_ce1_local = 1'b1;
    end else begin
        orig_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_0_ce0_local = 1'b1;
    end else begin
        sol_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411_pp0_iter4_reg == 4'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_0_we0_local = 1'b1;
    end else begin
        sol_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_10_ce0_local = 1'b1;
    end else begin
        sol_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411_pp0_iter4_reg == 4'd10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2411_pp0_iter3_reg == 4'd10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_11_we0_local = 1'b1;
    end else begin
        sol_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_12_ce0_local = 1'b1;
    end else begin
        sol_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411_pp0_iter4_reg == 4'd12) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2411_pp0_iter3_reg == 4'd12) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_13_we0_local = 1'b1;
    end else begin
        sol_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_14_ce0_local = 1'b1;
    end else begin
        sol_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln8_reg_2411_pp0_iter4_reg == 4'd0) & ~(trunc_ln8_reg_2411_pp0_iter4_reg == 4'd2) & ~(trunc_ln8_reg_2411_pp0_iter4_reg == 4'd4) & ~(trunc_ln8_reg_2411_pp0_iter4_reg == 4'd6) & ~(trunc_ln8_reg_2411_pp0_iter4_reg == 4'd8) & ~(trunc_ln8_reg_2411_pp0_iter4_reg == 4'd10) & ~(trunc_ln8_reg_2411_pp0_iter4_reg == 4'd12) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if ((~(trunc_ln8_reg_2411_pp0_iter3_reg == 4'd0) & ~(trunc_ln8_reg_2411_pp0_iter3_reg == 4'd2) & ~(trunc_ln8_reg_2411_pp0_iter3_reg == 4'd4) & ~(trunc_ln8_reg_2411_pp0_iter3_reg == 4'd6) & ~(trunc_ln8_reg_2411_pp0_iter3_reg == 4'd8) & ~(trunc_ln8_reg_2411_pp0_iter3_reg == 4'd10) & ~(trunc_ln8_reg_2411_pp0_iter3_reg == 4'd12) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2411_pp0_iter3_reg == 4'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_2_ce0_local = 1'b1;
    end else begin
        sol_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411_pp0_iter4_reg == 4'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2411_pp0_iter3_reg == 4'd2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_3_we0_local = 1'b1;
    end else begin
        sol_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_4_ce0_local = 1'b1;
    end else begin
        sol_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411_pp0_iter4_reg == 4'd4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2411_pp0_iter3_reg == 4'd4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_5_we0_local = 1'b1;
    end else begin
        sol_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_6_ce0_local = 1'b1;
    end else begin
        sol_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411_pp0_iter4_reg == 4'd6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2411_pp0_iter3_reg == 4'd6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_7_we0_local = 1'b1;
    end else begin
        sol_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_8_ce0_local = 1'b1;
    end else begin
        sol_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_2411_pp0_iter4_reg == 4'd8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_2411_pp0_iter3_reg == 4'd8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_9_we0_local = 1'b1;
    end else begin
        sol_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln12_1_fu_1789_p2 = (tmp_13_fu_1755_p3 + 13'd2);
assign add_ln12_2_fu_1848_p2 = (empty_fu_1832_p2 + 13'd2);
assign add_ln12_3_fu_1875_p2 = (or_ln8_cast_fu_1864_p1 + tmp_16_fu_1867_p3);
assign add_ln12_4_fu_1911_p2 = (or_ln8_cast_fu_1864_p1 + tmp_17_fu_1903_p3);
assign add_ln12_5_fu_1659_p2 = ($signed(or_ln8_cast36_fu_1655_p1) + $signed(8'd130));
assign add_ln12_6_fu_1930_p2 = (zext_ln12_9_fu_1927_p1 + tmp_12_fu_1685_p3);
assign add_ln12_fu_1727_p2 = (tmp_11_fu_1693_p3 + 13'd2);
assign add_ln13_10_fu_2293_p2 = (add_ln13_9_reg_3121 + add_ln13_8_reg_3116);
assign add_ln13_11_fu_2275_p2 = (mul_ln13_13_reg_3061 + mul_ln13_11_reg_3056);
assign add_ln13_12_fu_2235_p2 = (reg_1579 + reg_1571);
assign add_ln13_13_fu_2241_p2 = (add_ln13_12_fu_2235_p2 + reg_1575);
assign add_ln13_14_fu_2279_p2 = (add_ln13_13_reg_3096 + add_ln13_11_fu_2275_p2);
assign add_ln13_1_fu_2251_p2 = (mul_ln13_1_reg_3066 + mul_ln13_6_reg_3081);
assign add_ln13_2_fu_2302_p2 = (add_ln13_1_reg_3106 + add_ln13_reg_3101);
assign add_ln13_3_fu_2284_p2 = (mul_ln13_4_reg_3046_pp0_iter3_reg + mul_ln13_2_reg_3041_pp0_iter3_reg);
assign add_ln13_4_fu_2255_p2 = (mul_ln13_reg_3036 + mul_ln13_3_reg_3071);
assign add_ln13_5_fu_2259_p2 = (add_ln13_4_fu_2255_p2 + mul_ln13_7_reg_3051);
assign add_ln13_6_fu_2288_p2 = (add_ln13_5_reg_3111 + add_ln13_3_fu_2284_p2);
assign add_ln13_8_fu_2264_p2 = (reg_1571 + mul_ln13_10_reg_3091);
assign add_ln13_9_fu_2269_p2 = (reg_1579 + reg_1575);
assign add_ln13_fu_2247_p2 = (mul_ln13_5_reg_3076 + mul_ln13_8_reg_3086);
assign add_ln5_1_fu_2135_p2 = (zext_ln5_1_fu_2131_p1 + tmp_14_fu_1996_p3);
assign add_ln5_fu_1762_p3 = {{select_ln4_1_fu_1671_p3}, {lshr_ln_reg_2423}};
assign add_ln7_fu_1958_p2 = (indvar_flatten2_fu_178 + 12'd1);
assign add_ln_fu_1700_p3 = {{r_fu_1678_p3}, {lshr_ln_reg_2423}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1583 = ((icmp_ln7_reg_2806 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_1589 = ((icmp_ln7_reg_2806 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_714 = ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign c_fu_1964_p2 = (select_ln4_reg_2398 + 6'd2);
assign empty_fu_1832_p2 = (tmp1_cast_cast_cast_fu_1828_p1 + tmp_12_fu_1685_p3);
assign grp_fu_1415_p17 = 'bx;
assign grp_fu_1454_p17 = 'bx;
assign grp_fu_1493_p17 = 'bx;
assign grp_fu_1532_p17 = 'bx;
assign icmp_ln7_fu_1975_p2 = ((indvar_flatten2_fu_178 == 12'd3905) ? 1'b1 : 1'b0);
assign icmp_ln8_fu_1969_p2 = ((c_fu_1964_p2 == 6'd62) ? 1'b1 : 1'b0);
assign indvars_iv_next80_fu_2225_p2 = (r_reg_2440 + 7'd1);
assign indvars_iv_next80_mid1_fu_1617_p2 = (ap_sig_allocacmp_r3_load + 7'd2);
assign lshr_ln12_2_fu_1733_p4 = {{add_ln12_fu_1727_p2[12:4]}};
assign lshr_ln12_4_fu_1795_p4 = {{add_ln12_1_fu_1789_p2[12:4]}};
assign lshr_ln12_7_fu_1881_p4 = {{add_ln12_3_fu_1875_p2[12:4]}};
assign lshr_ln12_9_fu_1936_p4 = {{add_ln12_6_fu_1930_p2[12:4]}};
assign or_ln8_cast36_fu_1655_p1 = or_ln8_fu_1647_p3;
assign or_ln8_cast_fu_1864_p1 = or_ln8_reg_2430;
assign or_ln8_fu_1647_p3 = {{tmp_15_fu_1637_p4}, {1'd1}};
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
assign r_fu_1678_p3 = ((icmp_ln86_reg_1368[0:0] == 1'b1) ? indvars_iv_next805_fu_190 : r3_load_reg_2393);
assign select_ln4_1_fu_1671_p3 = ((icmp_ln86_reg_1368[0:0] == 1'b1) ? indvars_iv_next80_mid1_reg_2406 : indvars_iv_next805_fu_190);
assign select_ln4_cast1_fu_1817_p1 = select_ln4_reg_2398;
assign select_ln4_fu_1609_p3 = ((ap_phi_mux_icmp_ln86_phi_fu_1371_p4[0:0] == 1'b1) ? 6'd0 : ap_sig_allocacmp_c4_load);
assign sol_0_address0 = zext_ln12_reg_2446_pp0_iter3_reg;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_d0 = temp_reg_3148;
assign sol_0_we0 = sol_0_we0_local;
assign sol_10_address0 = zext_ln12_reg_2446_pp0_iter3_reg;
assign sol_10_ce0 = sol_10_ce0_local;
assign sol_10_d0 = temp_reg_3148;
assign sol_10_we0 = sol_10_we0_local;
assign sol_11_address0 = zext_ln12_reg_2446_pp0_iter3_reg;
assign sol_11_ce0 = sol_11_ce0_local;
assign sol_11_d0 = temp_1_reg_3136;
assign sol_11_we0 = sol_11_we0_local;
assign sol_12_address0 = zext_ln12_reg_2446_pp0_iter3_reg;
assign sol_12_ce0 = sol_12_ce0_local;
assign sol_12_d0 = temp_reg_3148;
assign sol_12_we0 = sol_12_we0_local;
assign sol_13_address0 = zext_ln12_reg_2446_pp0_iter3_reg;
assign sol_13_ce0 = sol_13_ce0_local;
assign sol_13_d0 = temp_1_reg_3136;
assign sol_13_we0 = sol_13_we0_local;
assign sol_14_address0 = zext_ln12_reg_2446_pp0_iter3_reg;
assign sol_14_ce0 = sol_14_ce0_local;
assign sol_14_d0 = temp_reg_3148;
assign sol_14_we0 = sol_14_we0_local;
assign sol_15_address0 = zext_ln12_reg_2446_pp0_iter3_reg;
assign sol_15_ce0 = sol_15_ce0_local;
assign sol_15_d0 = temp_1_reg_3136;
assign sol_15_we0 = sol_15_we0_local;
assign sol_1_address0 = zext_ln12_reg_2446_pp0_iter3_reg;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_d0 = temp_1_reg_3136;
assign sol_1_we0 = sol_1_we0_local;
assign sol_2_address0 = zext_ln12_reg_2446_pp0_iter3_reg;
assign sol_2_ce0 = sol_2_ce0_local;
assign sol_2_d0 = temp_reg_3148;
assign sol_2_we0 = sol_2_we0_local;
assign sol_3_address0 = zext_ln12_reg_2446_pp0_iter3_reg;
assign sol_3_ce0 = sol_3_ce0_local;
assign sol_3_d0 = temp_1_reg_3136;
assign sol_3_we0 = sol_3_we0_local;
assign sol_4_address0 = zext_ln12_reg_2446_pp0_iter3_reg;
assign sol_4_ce0 = sol_4_ce0_local;
assign sol_4_d0 = temp_reg_3148;
assign sol_4_we0 = sol_4_we0_local;
assign sol_5_address0 = zext_ln12_reg_2446_pp0_iter3_reg;
assign sol_5_ce0 = sol_5_ce0_local;
assign sol_5_d0 = temp_1_reg_3136;
assign sol_5_we0 = sol_5_we0_local;
assign sol_6_address0 = zext_ln12_reg_2446_pp0_iter3_reg;
assign sol_6_ce0 = sol_6_ce0_local;
assign sol_6_d0 = temp_reg_3148;
assign sol_6_we0 = sol_6_we0_local;
assign sol_7_address0 = zext_ln12_reg_2446_pp0_iter3_reg;
assign sol_7_ce0 = sol_7_ce0_local;
assign sol_7_d0 = temp_1_reg_3136;
assign sol_7_we0 = sol_7_we0_local;
assign sol_8_address0 = zext_ln12_reg_2446_pp0_iter3_reg;
assign sol_8_ce0 = sol_8_ce0_local;
assign sol_8_d0 = temp_reg_3148;
assign sol_8_we0 = sol_8_we0_local;
assign sol_9_address0 = zext_ln12_reg_2446_pp0_iter3_reg;
assign sol_9_ce0 = sol_9_ce0_local;
assign sol_9_d0 = temp_1_reg_3136;
assign sol_9_we0 = sol_9_we0_local;
assign temp_1_fu_2297_p2 = (add_ln13_14_reg_3126 + add_ln13_10_fu_2293_p2);
assign temp_fu_2306_p2 = (add_ln13_6_reg_3131 + add_ln13_2_fu_2302_p2);
assign tmp1_cast_cast_cast_fu_1828_p1 = tmp1_cast_cast_fu_1820_p3;
assign tmp1_cast_cast_fu_1820_p3 = {{1'd1}, {select_ln4_cast1_fu_1817_p1}};
assign tmp_11_fu_1693_p3 = {{r_fu_1678_p3}, {select_ln4_reg_2398}};
assign tmp_12_fu_1685_p3 = {{r_fu_1678_p3}, {6'd0}};
assign tmp_13_fu_1755_p3 = {{select_ln4_1_fu_1671_p3}, {select_ln4_reg_2398}};
assign tmp_14_fu_1996_p3 = {{r_reg_2440}, {2'd0}};
assign tmp_15_fu_1637_p4 = {{select_ln4_fu_1609_p3[5:1]}};
assign tmp_16_fu_1867_p3 = {{r_fu_1678_p3}, {6'd2}};
assign tmp_17_fu_1903_p3 = {{select_ln4_1_fu_1671_p3}, {6'd2}};
assign tmp_1_fu_2042_p17 = 'bx;
assign tmp_2_fu_2081_p17 = 'bx;
assign tmp_9_fu_2175_p17 = 'bx;
assign tmp_fu_2003_p17 = 'bx;
assign trunc_ln8_fu_1623_p1 = select_ln4_fu_1609_p3[3:0];
assign zext_ln12_10_fu_1946_p1 = lshr_ln12_9_fu_1936_p4;
assign zext_ln12_1_fu_1743_p1 = lshr_ln12_2_fu_1733_p4;
assign zext_ln12_2_fu_1769_p1 = add_ln5_fu_1762_p3;
assign zext_ln12_3_fu_1805_p1 = lshr_ln12_4_fu_1795_p4;
assign zext_ln12_4_fu_2141_p1 = add_ln5_1_fu_2135_p2;
assign zext_ln12_5_fu_2153_p1 = lshr_ln12_5_reg_2706;
assign zext_ln12_6_fu_2164_p1 = lshr_ln12_6_reg_2711;
assign zext_ln12_7_fu_1891_p1 = lshr_ln12_7_fu_1881_p4;
assign zext_ln12_8_fu_2214_p1 = lshr_ln12_8_reg_2756;
assign zext_ln12_9_fu_1927_p1 = add_ln12_5_reg_2435;
assign zext_ln12_fu_1707_p1 = add_ln_fu_1700_p3;
assign zext_ln5_1_fu_2131_p1 = zext_ln5_cast_fu_2123_p3;
assign zext_ln5_cast_fu_2123_p3 = {{1'd1}, {zext_ln5_fu_2120_p1}};
assign zext_ln5_fu_2120_p1 = lshr_ln_reg_2423;
always @ (posedge ap_clk) begin
    or_ln8_reg_2430[0] <= 1'b1;
    add_ln12_5_reg_2435[0] <= 1'b1;
    zext_ln12_reg_2446[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln12_reg_2446_pp0_iter1_reg[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln12_reg_2446_pp0_iter2_reg[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln12_reg_2446_pp0_iter3_reg[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
end
endmodule 
