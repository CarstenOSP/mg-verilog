module fft1D_512_fft1D_512_Pipeline_loop9 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,smem_10_address0,smem_10_ce0,smem_10_we0,smem_10_d0,smem_9_address0,smem_9_ce0,smem_9_we0,smem_9_d0,smem_8_address0,smem_8_ce0,smem_8_we0,smem_8_d0,smem_7_address0,smem_7_ce0,smem_7_we0,smem_7_d0,smem_6_address0,smem_6_ce0,smem_6_we0,smem_6_d0,smem_5_address0,smem_5_ce0,smem_5_we0,smem_5_d0,smem_4_address0,smem_4_ce0,smem_4_we0,smem_4_d0,smem_3_address0,smem_3_ce0,smem_3_we0,smem_3_d0,smem_2_address0,smem_2_ce0,smem_2_we0,smem_2_d0,smem_1_address0,smem_1_ce0,smem_1_we0,smem_1_d0,smem_address0,smem_ce0,smem_we0,smem_d0,DATA_y_address0,DATA_y_ce0,DATA_y_q0,DATA_y_address1,DATA_y_ce1,DATA_y_q1,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_q0,DATA_y_1_address1,DATA_y_1_ce1,DATA_y_1_q1,DATA_y_4_address0,DATA_y_4_ce0,DATA_y_4_q0,DATA_y_4_address1,DATA_y_4_ce1,DATA_y_4_q1,DATA_y_5_address0,DATA_y_5_ce0,DATA_y_5_q0,DATA_y_5_address1,DATA_y_5_ce1,DATA_y_5_q1,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_q0,DATA_y_2_address1,DATA_y_2_ce1,DATA_y_2_q1,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_q0,DATA_y_3_address1,DATA_y_3_ce1,DATA_y_3_q1,DATA_y_6_address0,DATA_y_6_ce0,DATA_y_6_q0,DATA_y_6_address1,DATA_y_6_ce1,DATA_y_6_q1,DATA_y_7_address0,DATA_y_7_ce0,DATA_y_7_q0,DATA_y_7_address1,DATA_y_7_ce1,DATA_y_7_q1,grp_fu_837_p_din0,grp_fu_837_p_din1,grp_fu_837_p_dout0,grp_fu_837_p_ce,grp_fu_841_p_din0,grp_fu_841_p_din1,grp_fu_841_p_dout0,grp_fu_841_p_ce,grp_fu_845_p_din0,grp_fu_845_p_din1,grp_fu_845_p_dout0,grp_fu_845_p_ce,grp_fu_849_p_din0,grp_fu_849_p_din1,grp_fu_849_p_dout0,grp_fu_849_p_ce); 
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
output  [5:0] smem_10_address0;
output   smem_10_ce0;
output   smem_10_we0;
output  [63:0] smem_10_d0;
output  [5:0] smem_9_address0;
output   smem_9_ce0;
output   smem_9_we0;
output  [63:0] smem_9_d0;
output  [5:0] smem_8_address0;
output   smem_8_ce0;
output   smem_8_we0;
output  [63:0] smem_8_d0;
output  [5:0] smem_7_address0;
output   smem_7_ce0;
output   smem_7_we0;
output  [63:0] smem_7_d0;
output  [5:0] smem_6_address0;
output   smem_6_ce0;
output   smem_6_we0;
output  [63:0] smem_6_d0;
output  [5:0] smem_5_address0;
output   smem_5_ce0;
output   smem_5_we0;
output  [63:0] smem_5_d0;
output  [5:0] smem_4_address0;
output   smem_4_ce0;
output   smem_4_we0;
output  [63:0] smem_4_d0;
output  [5:0] smem_3_address0;
output   smem_3_ce0;
output   smem_3_we0;
output  [63:0] smem_3_d0;
output  [5:0] smem_2_address0;
output   smem_2_ce0;
output   smem_2_we0;
output  [63:0] smem_2_d0;
output  [5:0] smem_1_address0;
output   smem_1_ce0;
output   smem_1_we0;
output  [63:0] smem_1_d0;
output  [5:0] smem_address0;
output   smem_ce0;
output   smem_we0;
output  [63:0] smem_d0;
output  [5:0] DATA_y_address0;
output   DATA_y_ce0;
input  [63:0] DATA_y_q0;
output  [5:0] DATA_y_address1;
output   DATA_y_ce1;
input  [63:0] DATA_y_q1;
output  [5:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
input  [63:0] DATA_y_1_q0;
output  [5:0] DATA_y_1_address1;
output   DATA_y_1_ce1;
input  [63:0] DATA_y_1_q1;
output  [5:0] DATA_y_4_address0;
output   DATA_y_4_ce0;
input  [63:0] DATA_y_4_q0;
output  [5:0] DATA_y_4_address1;
output   DATA_y_4_ce1;
input  [63:0] DATA_y_4_q1;
output  [5:0] DATA_y_5_address0;
output   DATA_y_5_ce0;
input  [63:0] DATA_y_5_q0;
output  [5:0] DATA_y_5_address1;
output   DATA_y_5_ce1;
input  [63:0] DATA_y_5_q1;
output  [5:0] DATA_y_2_address0;
output   DATA_y_2_ce0;
input  [63:0] DATA_y_2_q0;
output  [5:0] DATA_y_2_address1;
output   DATA_y_2_ce1;
input  [63:0] DATA_y_2_q1;
output  [5:0] DATA_y_3_address0;
output   DATA_y_3_ce0;
input  [63:0] DATA_y_3_q0;
output  [5:0] DATA_y_3_address1;
output   DATA_y_3_ce1;
input  [63:0] DATA_y_3_q1;
output  [5:0] DATA_y_6_address0;
output   DATA_y_6_ce0;
input  [63:0] DATA_y_6_q0;
output  [5:0] DATA_y_6_address1;
output   DATA_y_6_ce1;
input  [63:0] DATA_y_6_q1;
output  [5:0] DATA_y_7_address0;
output   DATA_y_7_ce0;
input  [63:0] DATA_y_7_q0;
output  [5:0] DATA_y_7_address1;
output   DATA_y_7_ce1;
input  [63:0] DATA_y_7_q1;
output  [31:0] grp_fu_837_p_din0;
output  [33:0] grp_fu_837_p_din1;
input  [64:0] grp_fu_837_p_dout0;
output   grp_fu_837_p_ce;
output  [31:0] grp_fu_841_p_din0;
output  [33:0] grp_fu_841_p_din1;
input  [64:0] grp_fu_841_p_dout0;
output   grp_fu_841_p_ce;
output  [31:0] grp_fu_845_p_din0;
output  [33:0] grp_fu_845_p_din1;
input  [64:0] grp_fu_845_p_dout0;
output   grp_fu_845_p_ce;
output  [31:0] grp_fu_849_p_din0;
output  [33:0] grp_fu_849_p_din1;
input  [64:0] grp_fu_849_p_dout0;
output   grp_fu_849_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] tmp_reg_2580;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [28:0] reg_1966;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_1_reg_2573;
reg   [6:0] tid_1_reg_2573_pp0_iter1_reg;
reg   [6:0] tid_1_reg_2573_pp0_iter2_reg;
reg   [6:0] tid_1_reg_2573_pp0_iter3_reg;
reg   [6:0] tid_1_reg_2573_pp0_iter4_reg;
reg   [6:0] tid_1_reg_2573_pp0_iter5_reg;
reg   [6:0] tid_1_reg_2573_pp0_iter6_reg;
reg   [6:0] tid_1_reg_2573_pp0_iter7_reg;
reg   [0:0] tmp_reg_2580_pp0_iter1_reg;
reg   [0:0] tmp_reg_2580_pp0_iter2_reg;
reg   [0:0] tmp_reg_2580_pp0_iter3_reg;
reg   [0:0] tmp_reg_2580_pp0_iter4_reg;
reg   [0:0] tmp_reg_2580_pp0_iter5_reg;
reg   [0:0] tmp_reg_2580_pp0_iter6_reg;
reg   [0:0] tmp_reg_2580_pp0_iter7_reg;
reg   [0:0] tmp_reg_2580_pp0_iter8_reg;
wire   [5:0] offset_fu_1986_p1;
reg   [5:0] offset_reg_2584;
reg   [5:0] offset_reg_2584_pp0_iter1_reg;
reg   [5:0] offset_reg_2584_pp0_iter2_reg;
reg   [5:0] offset_reg_2584_pp0_iter3_reg;
reg   [5:0] offset_reg_2584_pp0_iter4_reg;
reg   [5:0] offset_reg_2584_pp0_iter5_reg;
reg   [5:0] offset_reg_2584_pp0_iter6_reg;
reg   [5:0] offset_reg_2584_pp0_iter7_reg;
reg   [5:0] offset_reg_2584_pp0_iter8_reg;
wire   [31:0] offset_1_fu_2012_p5;
reg   [31:0] offset_1_reg_2593;
reg   [31:0] offset_1_reg_2593_pp0_iter1_reg;
reg   [31:0] offset_1_reg_2593_pp0_iter2_reg;
reg   [31:0] offset_1_reg_2593_pp0_iter3_reg;
reg   [31:0] offset_1_reg_2593_pp0_iter4_reg;
reg   [31:0] offset_1_reg_2593_pp0_iter5_reg;
reg   [31:0] offset_1_reg_2593_pp0_iter6_reg;
reg   [31:0] offset_1_reg_2593_pp0_iter7_reg;
reg   [31:0] offset_1_reg_2593_pp0_iter8_reg;
wire   [3:0] grp_fu_2030_p2;
reg   [3:0] urem_ln172_reg_2606;
reg   [3:0] urem_ln172_reg_2606_pp0_iter3_reg;
reg   [3:0] urem_ln172_reg_2606_pp0_iter4_reg;
reg   [3:0] urem_ln172_reg_2606_pp0_iter5_reg;
reg   [3:0] urem_ln172_reg_2606_pp0_iter6_reg;
reg   [3:0] urem_ln172_reg_2606_pp0_iter7_reg;
wire   [63:0] zext_ln325_fu_2045_p1;
reg   [63:0] zext_ln325_reg_2611;
wire   [7:0] zext_ln172_1_fu_2049_p1;
reg   [7:0] zext_ln172_1_reg_2622;
wire   [8:0] zext_ln172_2_fu_2052_p1;
reg   [8:0] zext_ln172_2_reg_2628;
reg   [2:0] tmp_28_reg_2633;
wire   [8:0] add_ln331_fu_2074_p2;
reg   [8:0] add_ln331_reg_2643;
wire   [8:0] add_ln333_fu_2080_p2;
reg   [8:0] add_ln333_reg_2648;
wire   [63:0] zext_ln327_fu_2103_p1;
reg   [63:0] zext_ln327_reg_2653;
reg   [63:0] DATA_y_load_reg_2669;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [5:0] tmp_29_reg_2684;
reg   [5:0] tmp_31_reg_2689;
reg   [4:0] tmp_32_reg_2694;
wire   [7:0] add_ln335_fu_2171_p2;
reg   [7:0] add_ln335_reg_2699;
wire   [64:0] zext_ln172_5_fu_2176_p1;
reg   [63:0] DATA_y_load_1_reg_2709;
wire   [31:0] add_ln331_1_fu_2180_p2;
reg   [31:0] add_ln331_1_reg_2724;
wire   [31:0] add_ln332_1_fu_2185_p2;
reg   [31:0] add_ln332_1_reg_2729;
wire   [31:0] add_ln333_1_fu_2190_p2;
reg   [31:0] add_ln333_1_reg_2734;
wire   [3:0] trunc_ln172_fu_2198_p1;
reg   [3:0] trunc_ln172_reg_2739;
reg   [5:0] tmp_33_reg_2743;
wire   [64:0] zext_ln331_3_fu_2224_p1;
wire   [64:0] zext_ln332_3_fu_2228_p1;
wire   [64:0] zext_ln333_3_fu_2232_p1;
wire   [31:0] add_ln334_1_fu_2236_p2;
reg   [31:0] add_ln334_1_reg_2763;
wire   [31:0] add_ln335_1_fu_2241_p2;
reg   [31:0] add_ln335_1_reg_2768;
wire   [31:0] add_ln336_1_fu_2246_p2;
reg   [31:0] add_ln336_1_reg_2773;
wire   [31:0] add_ln337_1_fu_2251_p2;
reg   [31:0] add_ln337_1_reg_2778;
reg   [4:0] tmp_30_reg_2783;
wire    ap_block_pp0_stage3_11001;
wire   [3:0] trunc_ln172_1_fu_2279_p1;
reg   [3:0] trunc_ln172_1_reg_2788;
reg   [28:0] tmp_37_reg_2792;
reg   [28:0] tmp_38_reg_2797;
reg   [28:0] tmp_39_reg_2802;
wire   [64:0] zext_ln334_3_fu_2283_p1;
wire   [64:0] zext_ln335_3_fu_2287_p1;
wire   [64:0] zext_ln336_3_fu_2291_p1;
wire   [64:0] zext_ln337_3_fu_2295_p1;
reg   [5:0] tmp_34_reg_2857;
reg   [28:0] tmp_41_reg_2892;
reg   [28:0] tmp_42_reg_2902;
reg   [28:0] tmp_43_reg_2912;
reg   [63:0] DATA_y_1_load_1_reg_2917;
reg   [63:0] DATA_y_4_load_1_reg_2932;
reg   [63:0] DATA_y_5_load_1_reg_2947;
reg   [63:0] DATA_y_2_load_1_reg_2962;
reg   [63:0] DATA_y_3_load_1_reg_2977;
reg   [63:0] DATA_y_6_load_1_reg_2992;
reg   [63:0] DATA_y_7_load_1_reg_3007;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln172_4_fu_2256_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln172_6_fu_2308_p1;
wire   [63:0] zext_ln331_fu_2333_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln332_fu_2347_p1;
wire   [63:0] zext_ln333_fu_2361_p1;
wire   [63:0] zext_ln334_fu_2375_p1;
wire   [63:0] zext_ln335_fu_2389_p1;
wire   [63:0] zext_ln336_fu_2403_p1;
wire   [63:0] zext_ln337_fu_2426_p1;
wire   [63:0] zext_ln331_1_fu_2441_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln332_1_fu_2455_p1;
wire   [63:0] zext_ln333_1_fu_2469_p1;
wire   [63:0] zext_ln334_1_fu_2483_p1;
wire   [63:0] zext_ln335_1_fu_2498_p1;
wire   [63:0] zext_ln336_1_fu_2512_p1;
wire   [63:0] zext_ln337_1_fu_2526_p1;
reg   [6:0] tid_fu_172;
wire   [6:0] add_ln325_fu_2035_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_1;
reg    DATA_y_ce1_local;
reg    DATA_y_ce0_local;
reg    smem_9_we0_local;
reg   [63:0] smem_9_d0_local;
reg    smem_9_ce0_local;
reg   [5:0] smem_9_address0_local;
reg    smem_8_we0_local;
reg   [63:0] smem_8_d0_local;
reg    smem_8_ce0_local;
reg   [5:0] smem_8_address0_local;
reg    smem_7_we0_local;
reg   [63:0] smem_7_d0_local;
reg    smem_7_ce0_local;
reg   [5:0] smem_7_address0_local;
reg    smem_6_we0_local;
reg   [63:0] smem_6_d0_local;
reg    smem_6_ce0_local;
reg   [5:0] smem_6_address0_local;
reg    smem_5_we0_local;
reg   [63:0] smem_5_d0_local;
reg    smem_5_ce0_local;
reg   [5:0] smem_5_address0_local;
reg    smem_4_we0_local;
reg   [63:0] smem_4_d0_local;
reg    smem_4_ce0_local;
reg   [5:0] smem_4_address0_local;
reg    smem_3_we0_local;
reg   [63:0] smem_3_d0_local;
reg    smem_3_ce0_local;
reg   [5:0] smem_3_address0_local;
reg    smem_2_we0_local;
reg   [63:0] smem_2_d0_local;
reg    smem_2_ce0_local;
reg   [5:0] smem_2_address0_local;
reg    smem_1_we0_local;
reg   [63:0] smem_1_d0_local;
reg    smem_1_ce0_local;
reg   [5:0] smem_1_address0_local;
reg    smem_we0_local;
reg   [63:0] smem_d0_local;
reg    smem_ce0_local;
reg   [5:0] smem_address0_local;
reg    smem_10_we0_local;
reg   [63:0] smem_10_d0_local;
reg    smem_10_ce0_local;
reg   [5:0] smem_10_address0_local;
reg    DATA_y_1_ce1_local;
reg    DATA_y_1_ce0_local;
reg    DATA_y_4_ce1_local;
reg    DATA_y_4_ce0_local;
reg    DATA_y_5_ce1_local;
reg    DATA_y_5_ce0_local;
reg    DATA_y_2_ce1_local;
reg    DATA_y_2_ce0_local;
reg    DATA_y_3_ce1_local;
reg    DATA_y_3_ce0_local;
reg    DATA_y_6_ce1_local;
reg    DATA_y_6_ce0_local;
reg    DATA_y_7_ce1_local;
reg    DATA_y_7_ce0_local;
reg   [31:0] grp_fu_1916_p0;
reg   [31:0] grp_fu_1921_p0;
reg   [31:0] grp_fu_1926_p0;
wire   [1:0] tmp_20_fu_1994_p4;
wire   [31:0] zext_ln326_fu_1990_p1;
wire   [2:0] or_ln1_fu_2004_p3;
wire   [31:0] grp_fu_2024_p0;
wire   [4:0] grp_fu_2024_p1;
wire   [4:0] grp_fu_2030_p1;
wire   [5:0] mul_ln172_fu_2058_p0;
wire   [7:0] mul_ln172_fu_2058_p1;
wire   [12:0] mul_ln172_fu_2058_p2;
wire   [4:0] tmp_s_fu_2086_p4;
wire   [5:0] or_ln_fu_2095_p3;
wire   [8:0] mul_ln331_fu_2111_p0;
wire   [10:0] mul_ln331_fu_2111_p1;
wire   [18:0] mul_ln331_fu_2111_p2;
wire   [8:0] mul_ln333_fu_2130_p0;
wire   [10:0] mul_ln333_fu_2130_p1;
wire   [18:0] mul_ln333_fu_2130_p2;
wire   [7:0] add_ln334_fu_2146_p2;
wire   [7:0] mul_ln334_fu_2155_p0;
wire   [9:0] mul_ln334_fu_2155_p1;
wire   [16:0] mul_ln334_fu_2155_p2;
wire  signed [8:0] sext_ln335_fu_2201_p1;
wire   [8:0] mul_ln335_fu_2208_p0;
wire   [10:0] mul_ln335_fu_2208_p1;
wire   [18:0] mul_ln335_fu_2208_p2;
wire   [16:0] tmp_30_fu_2270_p1;
wire  signed [16:0] grp_fu_2540_p3;
wire   [3:0] grp_fu_2024_p2;
wire   [18:0] tmp_34_fu_2299_p1;
wire  signed [18:0] grp_fu_2549_p3;
wire   [20:0] tmp_35_fu_2417_p1;
wire  signed [20:0] grp_fu_2557_p3;
wire   [6:0] tmp_35_fu_2417_p4;
wire   [5:0] grp_fu_2540_p0;
wire   [6:0] grp_fu_2540_p1;
wire   [8:0] grp_fu_2540_p2;
wire   [5:0] grp_fu_2549_p0;
wire   [7:0] grp_fu_2549_p1;
wire   [9:0] grp_fu_2549_p2;
wire   [5:0] grp_fu_2557_p0;
wire   [8:0] grp_fu_2557_p1;
wire   [10:0] grp_fu_2557_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter8_stage2;
reg    ap_idle_pp0_0to7;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to9;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [7:0] grp_fu_2540_p00;
wire   [9:0] grp_fu_2557_p00;
wire   [12:0] mul_ln172_fu_2058_p00;
wire   [18:0] mul_ln331_fu_2111_p00;
wire   [18:0] mul_ln333_fu_2130_p00;
wire   [16:0] mul_ln334_fu_2155_p00;
wire   [18:0] mul_ln335_fu_2208_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_172 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_32ns_5ns_4_36_1 #(.ID( 1 ),.NUM_STAGE( 36 ),.din0_WIDTH( 32 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_32ns_5ns_4_36_1_U692(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2024_p0),.din1(grp_fu_2024_p1),.ce(1'b1),.dout(grp_fu_2024_p2));
fft1D_512_urem_6ns_5ns_4_10_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_6ns_5ns_4_10_1_U693(.clk(ap_clk),.reset(ap_rst),.din0(offset_reg_2584),.din1(grp_fu_2030_p1),.ce(1'b1),.dout(grp_fu_2030_p2));
fft1D_512_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U694(.din0(mul_ln172_fu_2058_p0),.din1(mul_ln172_fu_2058_p1),.dout(mul_ln172_fu_2058_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U695(.din0(mul_ln331_fu_2111_p0),.din1(mul_ln331_fu_2111_p1),.dout(mul_ln331_fu_2111_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U696(.din0(mul_ln333_fu_2130_p0),.din1(mul_ln333_fu_2130_p1),.dout(mul_ln333_fu_2130_p2));
fft1D_512_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U697(.din0(mul_ln334_fu_2155_p0),.din1(mul_ln334_fu_2155_p1),.dout(mul_ln334_fu_2155_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U698(.din0(mul_ln335_fu_2208_p0),.din1(mul_ln335_fu_2208_p1),.dout(mul_ln335_fu_2208_p2));
fft1D_512_am_addmul_6ns_7ns_9ns_17_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.din2_WIDTH( 9 ),.dout_WIDTH( 17 ))
am_addmul_6ns_7ns_9ns_17_4_1_U699(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2540_p0),.din1(grp_fu_2540_p1),.din2(grp_fu_2540_p2),.ce(1'b1),.dout(grp_fu_2540_p3));
fft1D_512_am_addmul_6ns_8ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
am_addmul_6ns_8ns_10ns_19_4_1_U700(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2549_p0),.din1(grp_fu_2549_p1),.din2(grp_fu_2549_p2),.ce(1'b1),.dout(grp_fu_2549_p3));
fft1D_512_am_addmul_6ns_9ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_6ns_9ns_11ns_21_4_1_U701(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2557_p0),.din1(grp_fu_2557_p1),.din2(grp_fu_2557_p2),.ce(1'b1),.dout(grp_fu_2557_p3));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter9 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter8_stage2) & (ap_idle_pp0_0to7 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter8_stage2) & (ap_idle_pp0_0to7 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter8_stage2) & (ap_idle_pp0_0to7 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter8_stage2) & (ap_idle_pp0_0to7 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter8_stage2) & (ap_idle_pp0_0to7 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter8_stage2) & (ap_idle_pp0_0to7 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter8_stage2) & (ap_idle_pp0_0to7 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter8_stage2) & (ap_idle_pp0_0to7 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_172 <= 7'd0;
    end else if (((tmp_reg_2580 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tid_fu_172 <= add_ln325_fu_2035_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_1_load_1_reg_2917 <= DATA_y_1_q0;
        DATA_y_2_load_1_reg_2962 <= DATA_y_2_q0;
        DATA_y_3_load_1_reg_2977 <= DATA_y_3_q0;
        DATA_y_4_load_1_reg_2932 <= DATA_y_4_q0;
        DATA_y_5_load_1_reg_2947 <= DATA_y_5_q0;
        DATA_y_6_load_1_reg_2992 <= DATA_y_6_q0;
        DATA_y_7_load_1_reg_3007 <= DATA_y_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_load_1_reg_2709 <= DATA_y_q0;
        DATA_y_load_reg_2669 <= DATA_y_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln331_1_reg_2724 <= add_ln331_1_fu_2180_p2;
        add_ln332_1_reg_2729 <= add_ln332_1_fu_2185_p2;
        add_ln333_1_reg_2734 <= add_ln333_1_fu_2190_p2;
        add_ln335_reg_2699 <= add_ln335_fu_2171_p2;
        tmp_29_reg_2684 <= {{mul_ln331_fu_2111_p2[18:13]}};
        tmp_31_reg_2689 <= {{mul_ln333_fu_2130_p2[18:13]}};
        tmp_32_reg_2694 <= {{mul_ln334_fu_2155_p2[16:12]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln331_reg_2643 <= add_ln331_fu_2074_p2;
        add_ln333_reg_2648 <= add_ln333_fu_2080_p2;
        offset_1_reg_2593 <= offset_1_fu_2012_p5;
        offset_1_reg_2593_pp0_iter1_reg <= offset_1_reg_2593;
        offset_1_reg_2593_pp0_iter2_reg <= offset_1_reg_2593_pp0_iter1_reg;
        offset_1_reg_2593_pp0_iter3_reg <= offset_1_reg_2593_pp0_iter2_reg;
        offset_1_reg_2593_pp0_iter4_reg <= offset_1_reg_2593_pp0_iter3_reg;
        offset_1_reg_2593_pp0_iter5_reg <= offset_1_reg_2593_pp0_iter4_reg;
        offset_1_reg_2593_pp0_iter6_reg <= offset_1_reg_2593_pp0_iter5_reg;
        offset_1_reg_2593_pp0_iter7_reg <= offset_1_reg_2593_pp0_iter6_reg;
        offset_1_reg_2593_pp0_iter8_reg <= offset_1_reg_2593_pp0_iter7_reg;
        offset_reg_2584 <= offset_fu_1986_p1;
        offset_reg_2584_pp0_iter1_reg <= offset_reg_2584;
        offset_reg_2584_pp0_iter2_reg <= offset_reg_2584_pp0_iter1_reg;
        offset_reg_2584_pp0_iter3_reg <= offset_reg_2584_pp0_iter2_reg;
        offset_reg_2584_pp0_iter4_reg <= offset_reg_2584_pp0_iter3_reg;
        offset_reg_2584_pp0_iter5_reg <= offset_reg_2584_pp0_iter4_reg;
        offset_reg_2584_pp0_iter6_reg <= offset_reg_2584_pp0_iter5_reg;
        offset_reg_2584_pp0_iter7_reg <= offset_reg_2584_pp0_iter6_reg;
        offset_reg_2584_pp0_iter8_reg <= offset_reg_2584_pp0_iter7_reg;
        tid_1_reg_2573 <= ap_sig_allocacmp_tid_1;
        tid_1_reg_2573_pp0_iter1_reg <= tid_1_reg_2573;
        tid_1_reg_2573_pp0_iter2_reg <= tid_1_reg_2573_pp0_iter1_reg;
        tid_1_reg_2573_pp0_iter3_reg <= tid_1_reg_2573_pp0_iter2_reg;
        tid_1_reg_2573_pp0_iter4_reg <= tid_1_reg_2573_pp0_iter3_reg;
        tid_1_reg_2573_pp0_iter5_reg <= tid_1_reg_2573_pp0_iter4_reg;
        tid_1_reg_2573_pp0_iter6_reg <= tid_1_reg_2573_pp0_iter5_reg;
        tid_1_reg_2573_pp0_iter7_reg <= tid_1_reg_2573_pp0_iter6_reg;
        tmp_28_reg_2633 <= {{mul_ln172_fu_2058_p2[12:10]}};
        tmp_34_reg_2857 <= {{tmp_34_fu_2299_p1[18:13]}};
        tmp_43_reg_2912 <= {{grp_fu_849_p_dout0[64:36]}};
        tmp_reg_2580 <= ap_sig_allocacmp_tid_1[32'd6];
        tmp_reg_2580_pp0_iter1_reg <= tmp_reg_2580;
        tmp_reg_2580_pp0_iter2_reg <= tmp_reg_2580_pp0_iter1_reg;
        tmp_reg_2580_pp0_iter3_reg <= tmp_reg_2580_pp0_iter2_reg;
        tmp_reg_2580_pp0_iter4_reg <= tmp_reg_2580_pp0_iter3_reg;
        tmp_reg_2580_pp0_iter5_reg <= tmp_reg_2580_pp0_iter4_reg;
        tmp_reg_2580_pp0_iter6_reg <= tmp_reg_2580_pp0_iter5_reg;
        tmp_reg_2580_pp0_iter7_reg <= tmp_reg_2580_pp0_iter6_reg;
        tmp_reg_2580_pp0_iter8_reg <= tmp_reg_2580_pp0_iter7_reg;
        zext_ln172_1_reg_2622[5 : 0] <= zext_ln172_1_fu_2049_p1[5 : 0];
        zext_ln172_2_reg_2628[5 : 0] <= zext_ln172_2_fu_2052_p1[5 : 0];
        zext_ln325_reg_2611[6 : 0] <= zext_ln325_fu_2045_p1[6 : 0];
        zext_ln327_reg_2653[5 : 1] <= zext_ln327_fu_2103_p1[5 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln334_1_reg_2763 <= add_ln334_1_fu_2236_p2;
        add_ln335_1_reg_2768 <= add_ln335_1_fu_2241_p2;
        add_ln336_1_reg_2773 <= add_ln336_1_fu_2246_p2;
        add_ln337_1_reg_2778 <= add_ln337_1_fu_2251_p2;
        tmp_33_reg_2743 <= {{mul_ln335_fu_2208_p2[18:13]}};
        trunc_ln172_reg_2739 <= trunc_ln172_fu_2198_p1;
        urem_ln172_reg_2606 <= grp_fu_2030_p2;
        urem_ln172_reg_2606_pp0_iter3_reg <= urem_ln172_reg_2606;
        urem_ln172_reg_2606_pp0_iter4_reg <= urem_ln172_reg_2606_pp0_iter3_reg;
        urem_ln172_reg_2606_pp0_iter5_reg <= urem_ln172_reg_2606_pp0_iter4_reg;
        urem_ln172_reg_2606_pp0_iter6_reg <= urem_ln172_reg_2606_pp0_iter5_reg;
        urem_ln172_reg_2606_pp0_iter7_reg <= urem_ln172_reg_2606_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_1966 <= {{grp_fu_837_p_dout0[64:36]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_30_reg_2783 <= {{tmp_30_fu_2270_p1[16:12]}};
        trunc_ln172_1_reg_2788 <= trunc_ln172_1_fu_2279_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_37_reg_2792 <= {{grp_fu_837_p_dout0[64:36]}};
        tmp_38_reg_2797 <= {{grp_fu_841_p_dout0[64:36]}};
        tmp_39_reg_2802 <= {{grp_fu_845_p_dout0[64:36]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_41_reg_2892 <= {{grp_fu_841_p_dout0[64:36]}};
        tmp_42_reg_2902 <= {{grp_fu_845_p_dout0[64:36]}};
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_1_ce1_local = 1'b1;
    end else begin
        DATA_y_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_2_ce0_local = 1'b1;
    end else begin
        DATA_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_2_ce1_local = 1'b1;
    end else begin
        DATA_y_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_3_ce0_local = 1'b1;
    end else begin
        DATA_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_3_ce1_local = 1'b1;
    end else begin
        DATA_y_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_4_ce0_local = 1'b1;
    end else begin
        DATA_y_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_4_ce1_local = 1'b1;
    end else begin
        DATA_y_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_5_ce0_local = 1'b1;
    end else begin
        DATA_y_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_5_ce1_local = 1'b1;
    end else begin
        DATA_y_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_6_ce0_local = 1'b1;
    end else begin
        DATA_y_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_6_ce1_local = 1'b1;
    end else begin
        DATA_y_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_7_ce0_local = 1'b1;
    end else begin
        DATA_y_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_7_ce1_local = 1'b1;
    end else begin
        DATA_y_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_ce1_local = 1'b1;
    end else begin
        DATA_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_2580 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter8 == 1'b1) & (tmp_reg_2580_pp0_iter8_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter8_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter8_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to7 = 1'b1;
    end else begin
        ap_idle_pp0_0to7 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to9 = 1'b1;
    end else begin
        ap_idle_pp0_1to9 = 1'b0;
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
        ap_sig_allocacmp_tid_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_1 = tid_fu_172;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_1916_p0 = zext_ln334_3_fu_2283_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1916_p0 = zext_ln331_3_fu_2224_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1916_p0 = zext_ln172_5_fu_2176_p1;
        end else begin
            grp_fu_1916_p0 = 'bx;
        end
    end else begin
        grp_fu_1916_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_1921_p0 = zext_ln335_3_fu_2287_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1921_p0 = zext_ln332_3_fu_2228_p1;
        end else begin
            grp_fu_1921_p0 = 'bx;
        end
    end else begin
        grp_fu_1921_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_1926_p0 = zext_ln336_3_fu_2291_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1926_p0 = zext_ln333_3_fu_2232_p1;
        end else begin
            grp_fu_1926_p0 = 'bx;
        end
    end else begin
        grp_fu_1926_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_10_address0_local = zext_ln334_1_fu_2483_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_10_address0_local = zext_ln331_1_fu_2441_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_10_address0_local = zext_ln337_1_fu_2526_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_10_address0_local = zext_ln333_1_fu_2469_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_10_address0_local = zext_ln336_1_fu_2512_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_10_address0_local = zext_ln332_1_fu_2455_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_10_address0_local = zext_ln335_1_fu_2498_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln334_fu_2375_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln331_fu_2333_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln337_fu_2426_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln333_fu_2361_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln336_fu_2403_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln332_fu_2347_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln335_fu_2389_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_address0_local = zext_ln172_6_fu_2308_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_10_address0_local = zext_ln172_4_fu_2256_p1;
    end else begin
        smem_10_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9== 1'b1) & (trunc_ln172_reg_2739 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd7) & (1'b1 ==ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_10_ce0_local = 1'b1;
    end else begin
        smem_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_10_d0_local = DATA_y_2_load_1_reg_2962;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_10_d0_local = DATA_y_1_load_1_reg_2917;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_10_d0_local = DATA_y_7_load_1_reg_3007;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_10_d0_local = DATA_y_5_load_1_reg_2947;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_10_d0_local = DATA_y_6_load_1_reg_2992;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_10_d0_local = DATA_y_4_load_1_reg_2932;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_10_d0_local = DATA_y_3_load_1_reg_2977;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d0_local = DATA_y_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d0_local = DATA_y_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d0_local = DATA_y_7_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d0_local = DATA_y_5_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d0_local = DATA_y_6_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d0_local = DATA_y_4_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d0_local = DATA_y_3_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_10_d0_local = DATA_y_load_1_reg_2709;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_10_d0_local = DATA_y_load_reg_2669;
    end else begin
        smem_10_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_1_reg_2788 == 4'd4) & ~(trunc_ln172_1_reg_2788 == 4'd5) & ~(trunc_ln172_1_reg_2788 == 4'd8) & ~(trunc_ln172_1_reg_2788 == 4'd0) & ~(trunc_ln172_1_reg_2788 == 4'd1) & ~(trunc_ln172_1_reg_2788 == 4'd2) & ~(trunc_ln172_1_reg_2788 == 4'd3) & ~(trunc_ln172_1_reg_2788 == 4'd6) & ~(trunc_ln172_1_reg_2788 == 4'd7) & ~(trunc_ln172_1_reg_2788 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln172_reg_2739 == 4'd4) & ~(trunc_ln172_reg_2739 == 4'd5) & ~(trunc_ln172_reg_2739 == 4'd8) & ~(trunc_ln172_reg_2739 == 4'd0) & ~(trunc_ln172_reg_2739 == 4'd1) & ~(trunc_ln172_reg_2739 == 4'd2) & ~(trunc_ln172_reg_2739 == 4'd3) & ~(trunc_ln172_reg_2739 == 4'd6) & ~(trunc_ln172_reg_2739 == 4'd7) & ~(trunc_ln172_reg_2739 == 4'd9) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd4)& (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))| ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_10_we0_local = 1'b1;
    end else begin
        smem_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln172_1_reg_2788 == 4'd4) & ~(trunc_ln172_1_reg_2788 == 4'd5) & ~(trunc_ln172_1_reg_2788 == 4'd8) & ~(trunc_ln172_1_reg_2788 == 4'd0) & ~(trunc_ln172_1_reg_2788 == 4'd1) & ~(trunc_ln172_1_reg_2788 == 4'd2) & ~(trunc_ln172_1_reg_2788 == 4'd3) & ~(trunc_ln172_1_reg_2788 == 4'd6) & ~(trunc_ln172_1_reg_2788 == 4'd7) & ~(trunc_ln172_1_reg_2788 == 4'd9) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln331_1_fu_2441_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln335_1_fu_2498_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln334_1_fu_2483_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln337_1_fu_2526_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln333_1_fu_2469_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln336_1_fu_2512_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_address0_local = zext_ln332_1_fu_2455_p1;
    end else if ((~(trunc_ln172_reg_2739 == 4'd4) & ~(trunc_ln172_reg_2739 == 4'd5) & ~(trunc_ln172_reg_2739 == 4'd8) & ~(trunc_ln172_reg_2739 == 4'd0) & ~(trunc_ln172_reg_2739 == 4'd1) & ~(trunc_ln172_reg_2739 == 4'd2) & ~(trunc_ln172_reg_2739 == 4'd3) & ~(trunc_ln172_reg_2739 == 4'd6) & ~(trunc_ln172_reg_2739 == 4'd7) & ~(trunc_ln172_reg_2739 == 4'd9) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln331_fu_2333_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln335_fu_2389_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln334_fu_2375_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln337_fu_2426_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln333_fu_2361_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln336_fu_2403_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln332_fu_2347_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_address0_local = zext_ln172_6_fu_2308_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_address0_local = zext_ln172_4_fu_2256_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_1_reg_2788 == 4'd4) & ~(trunc_ln172_1_reg_2788 == 4'd5) & ~(trunc_ln172_1_reg_2788 == 4'd8) & ~(trunc_ln172_1_reg_2788 == 4'd0) & ~(trunc_ln172_1_reg_2788 == 4'd1) & ~(trunc_ln172_1_reg_2788 == 4'd2) & ~(trunc_ln172_1_reg_2788 == 4'd3) & ~(trunc_ln172_1_reg_2788 == 4'd6) & ~(trunc_ln172_1_reg_2788 == 4'd7) & ~(trunc_ln172_1_reg_2788 == 4'd9) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln172_reg_2739 == 4'd4) & ~(trunc_ln172_reg_2739 == 4'd5) & ~(trunc_ln172_reg_2739 == 4'd8) & ~(trunc_ln172_reg_2739 == 4'd0) & ~(trunc_ln172_reg_2739 == 4'd1) & ~(trunc_ln172_reg_2739 == 4'd2) & ~(trunc_ln172_reg_2739 == 4'd3) & ~(trunc_ln172_reg_2739 == 4'd6) & ~(trunc_ln172_reg_2739 == 4'd7) & ~(trunc_ln172_reg_2739 == 4'd9) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))| ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9== 1'b1) & (trunc_ln172_1_reg_2788 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln172_1_reg_2788 == 4'd4) & ~(trunc_ln172_1_reg_2788 == 4'd5) & ~(trunc_ln172_1_reg_2788 == 4'd8) & ~(trunc_ln172_1_reg_2788 == 4'd0) & ~(trunc_ln172_1_reg_2788 == 4'd1) & ~(trunc_ln172_1_reg_2788 == 4'd2) & ~(trunc_ln172_1_reg_2788 == 4'd3) & ~(trunc_ln172_1_reg_2788 == 4'd6) & ~(trunc_ln172_1_reg_2788 == 4'd7) & ~(trunc_ln172_1_reg_2788 == 4'd9) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = DATA_y_1_load_1_reg_2917;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = DATA_y_3_load_1_reg_2977;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = DATA_y_2_load_1_reg_2962;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = DATA_y_7_load_1_reg_3007;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = DATA_y_5_load_1_reg_2947;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = DATA_y_6_load_1_reg_2992;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_1_d0_local = DATA_y_4_load_1_reg_2932;
    end else if ((~(trunc_ln172_reg_2739 == 4'd4) & ~(trunc_ln172_reg_2739 == 4'd5) & ~(trunc_ln172_reg_2739 == 4'd8) & ~(trunc_ln172_reg_2739 == 4'd0) & ~(trunc_ln172_reg_2739 == 4'd1) & ~(trunc_ln172_reg_2739 == 4'd2) & ~(trunc_ln172_reg_2739 == 4'd3) & ~(trunc_ln172_reg_2739 == 4'd6) & ~(trunc_ln172_reg_2739 == 4'd7) & ~(trunc_ln172_reg_2739 == 4'd9) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_y_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_y_3_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_y_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_y_7_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_y_5_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_y_6_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_y_4_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_1_d0_local = DATA_y_load_1_reg_2709;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_1_d0_local = DATA_y_load_reg_2669;
    end else begin
        smem_1_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_1_reg_2788 == 4'd4) & ~(trunc_ln172_1_reg_2788 == 4'd5) & ~(trunc_ln172_1_reg_2788 == 4'd8) & ~(trunc_ln172_1_reg_2788 == 4'd0) & ~(trunc_ln172_1_reg_2788 == 4'd1) & ~(trunc_ln172_1_reg_2788 == 4'd2) & ~(trunc_ln172_1_reg_2788 == 4'd3) & ~(trunc_ln172_1_reg_2788 == 4'd6) & ~(trunc_ln172_1_reg_2788 == 4'd7) & ~(trunc_ln172_1_reg_2788 == 4'd9) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln172_reg_2739 == 4'd4) & ~(trunc_ln172_reg_2739 == 4'd5) & ~(trunc_ln172_reg_2739 == 4'd8) & ~(trunc_ln172_reg_2739 == 4'd0) & ~(trunc_ln172_reg_2739 == 4'd1) & ~(trunc_ln172_reg_2739 == 4'd2) & ~(trunc_ln172_reg_2739 == 4'd3) & ~(trunc_ln172_reg_2739 == 4'd6) & ~(trunc_ln172_reg_2739 == 4'd7) & ~(trunc_ln172_reg_2739 == 4'd9) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (trunc_ln172_reg_2739 == 4'd1)& (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))| ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_1_we0_local = 1'b1;
    end else begin
        smem_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln172_1_reg_2788 == 4'd4) & ~(trunc_ln172_1_reg_2788 == 4'd5) & ~(trunc_ln172_1_reg_2788 == 4'd8) & ~(trunc_ln172_1_reg_2788 == 4'd0) & ~(trunc_ln172_1_reg_2788 == 4'd1) & ~(trunc_ln172_1_reg_2788 == 4'd2) & ~(trunc_ln172_1_reg_2788 == 4'd3) & ~(trunc_ln172_1_reg_2788 == 4'd6) & ~(trunc_ln172_1_reg_2788 == 4'd7) & ~(trunc_ln172_1_reg_2788 == 4'd9) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln335_1_fu_2498_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln331_1_fu_2441_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln334_1_fu_2483_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln337_1_fu_2526_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln333_1_fu_2469_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln336_1_fu_2512_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_address0_local = zext_ln332_1_fu_2455_p1;
    end else if ((~(trunc_ln172_reg_2739 == 4'd4) & ~(trunc_ln172_reg_2739 == 4'd5) & ~(trunc_ln172_reg_2739 == 4'd8) & ~(trunc_ln172_reg_2739 == 4'd0) & ~(trunc_ln172_reg_2739 == 4'd1) & ~(trunc_ln172_reg_2739 == 4'd2) & ~(trunc_ln172_reg_2739 == 4'd3) & ~(trunc_ln172_reg_2739 == 4'd6) & ~(trunc_ln172_reg_2739 == 4'd7) & ~(trunc_ln172_reg_2739 == 4'd9) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln335_fu_2389_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln331_fu_2333_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln334_fu_2375_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln337_fu_2426_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln333_fu_2361_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln336_fu_2403_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln332_fu_2347_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_address0_local = zext_ln172_6_fu_2308_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_address0_local = zext_ln172_4_fu_2256_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_1_reg_2788 == 4'd4) & ~(trunc_ln172_1_reg_2788 == 4'd5) & ~(trunc_ln172_1_reg_2788 == 4'd8) & ~(trunc_ln172_1_reg_2788 == 4'd0) & ~(trunc_ln172_1_reg_2788 == 4'd1) & ~(trunc_ln172_1_reg_2788 == 4'd2) & ~(trunc_ln172_1_reg_2788 == 4'd3) & ~(trunc_ln172_1_reg_2788 == 4'd6) & ~(trunc_ln172_1_reg_2788 == 4'd7) & ~(trunc_ln172_1_reg_2788 == 4'd9) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln172_reg_2739 == 4'd4) & ~(trunc_ln172_reg_2739 == 4'd5) & ~(trunc_ln172_reg_2739 == 4'd8) & ~(trunc_ln172_reg_2739 == 4'd0) & ~(trunc_ln172_reg_2739 == 4'd1) & ~(trunc_ln172_reg_2739 == 4'd2) & ~(trunc_ln172_reg_2739 == 4'd3) & ~(trunc_ln172_reg_2739 == 4'd6) & ~(trunc_ln172_reg_2739 == 4'd7) & ~(trunc_ln172_reg_2739 == 4'd9) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))| ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9== 1'b1) & (trunc_ln172_1_reg_2788 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln172_1_reg_2788 == 4'd4) & ~(trunc_ln172_1_reg_2788 == 4'd5) & ~(trunc_ln172_1_reg_2788 == 4'd8) & ~(trunc_ln172_1_reg_2788 == 4'd0) & ~(trunc_ln172_1_reg_2788 == 4'd1) & ~(trunc_ln172_1_reg_2788 == 4'd2) & ~(trunc_ln172_1_reg_2788 == 4'd3) & ~(trunc_ln172_1_reg_2788 == 4'd6) & ~(trunc_ln172_1_reg_2788 == 4'd7) & ~(trunc_ln172_1_reg_2788 == 4'd9) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = DATA_y_3_load_1_reg_2977;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = DATA_y_1_load_1_reg_2917;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = DATA_y_2_load_1_reg_2962;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = DATA_y_7_load_1_reg_3007;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = DATA_y_5_load_1_reg_2947;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = DATA_y_6_load_1_reg_2992;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_2_d0_local = DATA_y_4_load_1_reg_2932;
    end else if ((~(trunc_ln172_reg_2739 == 4'd4) & ~(trunc_ln172_reg_2739 == 4'd5) & ~(trunc_ln172_reg_2739 == 4'd8) & ~(trunc_ln172_reg_2739 == 4'd0) & ~(trunc_ln172_reg_2739 == 4'd1) & ~(trunc_ln172_reg_2739 == 4'd2) & ~(trunc_ln172_reg_2739 == 4'd3) & ~(trunc_ln172_reg_2739 == 4'd6) & ~(trunc_ln172_reg_2739 == 4'd7) & ~(trunc_ln172_reg_2739 == 4'd9) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_y_3_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_y_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_y_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_y_7_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_y_5_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_y_6_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_y_4_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_2_d0_local = DATA_y_load_1_reg_2709;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_2_d0_local = DATA_y_load_reg_2669;
    end else begin
        smem_2_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_1_reg_2788 == 4'd4) & ~(trunc_ln172_1_reg_2788 == 4'd5) & ~(trunc_ln172_1_reg_2788 == 4'd8) & ~(trunc_ln172_1_reg_2788 == 4'd0) & ~(trunc_ln172_1_reg_2788 == 4'd1) & ~(trunc_ln172_1_reg_2788 == 4'd2) & ~(trunc_ln172_1_reg_2788 == 4'd3) & ~(trunc_ln172_1_reg_2788 == 4'd6) & ~(trunc_ln172_1_reg_2788 == 4'd7) & ~(trunc_ln172_1_reg_2788 == 4'd9) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln172_reg_2739 == 4'd4) & ~(trunc_ln172_reg_2739 == 4'd5) & ~(trunc_ln172_reg_2739 == 4'd8) & ~(trunc_ln172_reg_2739 == 4'd0) & ~(trunc_ln172_reg_2739 == 4'd1) & ~(trunc_ln172_reg_2739 == 4'd2) & ~(trunc_ln172_reg_2739 == 4'd3) & ~(trunc_ln172_reg_2739 == 4'd6) & ~(trunc_ln172_reg_2739 == 4'd7) & ~(trunc_ln172_reg_2739 == 4'd9) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (trunc_ln172_reg_2739 == 4'd2)& (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))| ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_2_we0_local = 1'b1;
    end else begin
        smem_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln332_1_fu_2455_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln335_1_fu_2498_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln331_1_fu_2441_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln334_1_fu_2483_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln337_1_fu_2526_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln333_1_fu_2469_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_address0_local = zext_ln336_1_fu_2512_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln332_fu_2347_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln335_fu_2389_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln331_fu_2333_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln334_fu_2375_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln337_fu_2426_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln333_fu_2361_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln336_fu_2403_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_address0_local = zext_ln172_6_fu_2308_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_address0_local = zext_ln172_4_fu_2256_p1;
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9== 1'b1) & (trunc_ln172_reg_2739 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd6) & (1'b1 ==ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d0_local = DATA_y_4_load_1_reg_2932;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d0_local = DATA_y_3_load_1_reg_2977;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d0_local = DATA_y_1_load_1_reg_2917;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d0_local = DATA_y_2_load_1_reg_2962;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d0_local = DATA_y_7_load_1_reg_3007;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d0_local = DATA_y_5_load_1_reg_2947;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_3_d0_local = DATA_y_6_load_1_reg_2992;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_y_4_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_y_3_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_y_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_y_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_y_7_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_y_5_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_y_6_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_3_d0_local = DATA_y_load_1_reg_2709;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_3_d0_local = DATA_y_load_reg_2669;
    end else begin
        smem_3_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (trunc_ln172_reg_2739 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9== 1'b1) & (trunc_ln172_1_reg_2788 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_3_we0_local = 1'b1;
    end else begin
        smem_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln332_1_fu_2455_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln336_1_fu_2512_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln335_1_fu_2498_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln331_1_fu_2441_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln334_1_fu_2483_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln337_1_fu_2526_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_address0_local = zext_ln333_1_fu_2469_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln332_fu_2347_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln336_fu_2403_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln335_fu_2389_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln331_fu_2333_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln334_fu_2375_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln337_fu_2426_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln333_fu_2361_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_address0_local = zext_ln172_6_fu_2308_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_address0_local = zext_ln172_4_fu_2256_p1;
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9== 1'b1) & (trunc_ln172_reg_2739 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd7) & (1'b1 ==ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = DATA_y_4_load_1_reg_2932;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = DATA_y_6_load_1_reg_2992;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = DATA_y_3_load_1_reg_2977;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = DATA_y_1_load_1_reg_2917;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = DATA_y_2_load_1_reg_2962;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = DATA_y_7_load_1_reg_3007;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_4_d0_local = DATA_y_5_load_1_reg_2947;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_y_4_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_y_6_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_y_3_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_y_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_y_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_y_7_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_y_5_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_4_d0_local = DATA_y_load_1_reg_2709;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_4_d0_local = DATA_y_load_reg_2669;
    end else begin
        smem_4_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (trunc_ln172_reg_2739 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9== 1'b1) & (trunc_ln172_1_reg_2788 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_4_we0_local = 1'b1;
    end else begin
        smem_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln172_1_reg_2788 == 4'd4) & ~(trunc_ln172_1_reg_2788 == 4'd5) & ~(trunc_ln172_1_reg_2788 == 4'd8) & ~(trunc_ln172_1_reg_2788 == 4'd0) & ~(trunc_ln172_1_reg_2788 == 4'd1) & ~(trunc_ln172_1_reg_2788 == 4'd2) & ~(trunc_ln172_1_reg_2788 == 4'd3) & ~(trunc_ln172_1_reg_2788 == 4'd6) & ~(trunc_ln172_1_reg_2788 == 4'd7) & ~(trunc_ln172_1_reg_2788 == 4'd9) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln332_1_fu_2455_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln336_1_fu_2512_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln333_1_fu_2469_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln335_1_fu_2498_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln331_1_fu_2441_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln334_1_fu_2483_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_address0_local = zext_ln337_1_fu_2526_p1;
    end else if ((~(trunc_ln172_reg_2739 == 4'd4) & ~(trunc_ln172_reg_2739 == 4'd5) & ~(trunc_ln172_reg_2739 == 4'd8) & ~(trunc_ln172_reg_2739 == 4'd0) & ~(trunc_ln172_reg_2739 == 4'd1) & ~(trunc_ln172_reg_2739 == 4'd2) & ~(trunc_ln172_reg_2739 == 4'd3) & ~(trunc_ln172_reg_2739 == 4'd6) & ~(trunc_ln172_reg_2739 == 4'd7) & ~(trunc_ln172_reg_2739 == 4'd9) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln332_fu_2347_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln336_fu_2403_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln333_fu_2361_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln335_fu_2389_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln331_fu_2333_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln334_fu_2375_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln337_fu_2426_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_address0_local = zext_ln172_6_fu_2308_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_address0_local = zext_ln172_4_fu_2256_p1;
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_1_reg_2788 == 4'd4) & ~(trunc_ln172_1_reg_2788 == 4'd5) & ~(trunc_ln172_1_reg_2788 == 4'd8) & ~(trunc_ln172_1_reg_2788 == 4'd0) & ~(trunc_ln172_1_reg_2788 == 4'd1) & ~(trunc_ln172_1_reg_2788 == 4'd2) & ~(trunc_ln172_1_reg_2788 == 4'd3) & ~(trunc_ln172_1_reg_2788 == 4'd6) & ~(trunc_ln172_1_reg_2788 == 4'd7) & ~(trunc_ln172_1_reg_2788 == 4'd9) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln172_reg_2739 == 4'd4) & ~(trunc_ln172_reg_2739 == 4'd5) & ~(trunc_ln172_reg_2739 == 4'd8) & ~(trunc_ln172_reg_2739 == 4'd0) & ~(trunc_ln172_reg_2739 == 4'd1) & ~(trunc_ln172_reg_2739 == 4'd2) & ~(trunc_ln172_reg_2739 == 4'd3) & ~(trunc_ln172_reg_2739 == 4'd6) & ~(trunc_ln172_reg_2739 == 4'd7) & ~(trunc_ln172_reg_2739 == 4'd9) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))| ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9== 1'b1) & (trunc_ln172_1_reg_2788 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln172_1_reg_2788 == 4'd4) & ~(trunc_ln172_1_reg_2788 == 4'd5) & ~(trunc_ln172_1_reg_2788 == 4'd8) & ~(trunc_ln172_1_reg_2788 == 4'd0) & ~(trunc_ln172_1_reg_2788 == 4'd1) & ~(trunc_ln172_1_reg_2788 == 4'd2) & ~(trunc_ln172_1_reg_2788 == 4'd3) & ~(trunc_ln172_1_reg_2788 == 4'd6) & ~(trunc_ln172_1_reg_2788 == 4'd7) & ~(trunc_ln172_1_reg_2788 == 4'd9) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d0_local = DATA_y_4_load_1_reg_2932;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d0_local = DATA_y_6_load_1_reg_2992;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d0_local = DATA_y_5_load_1_reg_2947;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d0_local = DATA_y_3_load_1_reg_2977;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d0_local = DATA_y_1_load_1_reg_2917;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d0_local = DATA_y_2_load_1_reg_2962;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_5_d0_local = DATA_y_7_load_1_reg_3007;
    end else if ((~(trunc_ln172_reg_2739 == 4'd4) & ~(trunc_ln172_reg_2739 == 4'd5) & ~(trunc_ln172_reg_2739 == 4'd8) & ~(trunc_ln172_reg_2739 == 4'd0) & ~(trunc_ln172_reg_2739 == 4'd1) & ~(trunc_ln172_reg_2739 == 4'd2) & ~(trunc_ln172_reg_2739 == 4'd3) & ~(trunc_ln172_reg_2739 == 4'd6) & ~(trunc_ln172_reg_2739 == 4'd7) & ~(trunc_ln172_reg_2739 == 4'd9) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_y_4_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_y_6_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_y_5_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_y_3_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_y_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_y_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_y_7_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_5_d0_local = DATA_y_load_1_reg_2709;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_5_d0_local = DATA_y_load_reg_2669;
    end else begin
        smem_5_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_1_reg_2788 == 4'd4) & ~(trunc_ln172_1_reg_2788 == 4'd5) & ~(trunc_ln172_1_reg_2788 == 4'd8) & ~(trunc_ln172_1_reg_2788 == 4'd0) & ~(trunc_ln172_1_reg_2788 == 4'd1) & ~(trunc_ln172_1_reg_2788 == 4'd2) & ~(trunc_ln172_1_reg_2788 == 4'd3) & ~(trunc_ln172_1_reg_2788 == 4'd6) & ~(trunc_ln172_1_reg_2788 == 4'd7) & ~(trunc_ln172_1_reg_2788 == 4'd9) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln172_reg_2739 == 4'd4) & ~(trunc_ln172_reg_2739 == 4'd5) & ~(trunc_ln172_reg_2739 == 4'd8) & ~(trunc_ln172_reg_2739 == 4'd0) & ~(trunc_ln172_reg_2739 == 4'd1) & ~(trunc_ln172_reg_2739 == 4'd2) & ~(trunc_ln172_reg_2739 == 4'd3) & ~(trunc_ln172_reg_2739 == 4'd6) & ~(trunc_ln172_reg_2739 == 4'd7) & ~(trunc_ln172_reg_2739 == 4'd9) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (trunc_ln172_reg_2739 == 4'd5)& (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))| ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_5_we0_local = 1'b1;
    end else begin
        smem_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln172_1_reg_2788 == 4'd4) & ~(trunc_ln172_1_reg_2788 == 4'd5) & ~(trunc_ln172_1_reg_2788 == 4'd8) & ~(trunc_ln172_1_reg_2788 == 4'd0) & ~(trunc_ln172_1_reg_2788 == 4'd1) & ~(trunc_ln172_1_reg_2788 == 4'd2) & ~(trunc_ln172_1_reg_2788 == 4'd3) & ~(trunc_ln172_1_reg_2788 == 4'd6) & ~(trunc_ln172_1_reg_2788 == 4'd7) & ~(trunc_ln172_1_reg_2788 == 4'd9) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln336_1_fu_2512_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln333_1_fu_2469_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln337_1_fu_2526_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln332_1_fu_2455_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln335_1_fu_2498_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln331_1_fu_2441_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_address0_local = zext_ln334_1_fu_2483_p1;
    end else if ((~(trunc_ln172_reg_2739 == 4'd4) & ~(trunc_ln172_reg_2739 == 4'd5) & ~(trunc_ln172_reg_2739 == 4'd8) & ~(trunc_ln172_reg_2739 == 4'd0) & ~(trunc_ln172_reg_2739 == 4'd1) & ~(trunc_ln172_reg_2739 == 4'd2) & ~(trunc_ln172_reg_2739 == 4'd3) & ~(trunc_ln172_reg_2739 == 4'd6) & ~(trunc_ln172_reg_2739 == 4'd7) & ~(trunc_ln172_reg_2739 == 4'd9) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln336_fu_2403_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln333_fu_2361_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln337_fu_2426_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln332_fu_2347_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln335_fu_2389_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln331_fu_2333_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln334_fu_2375_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_address0_local = zext_ln172_6_fu_2308_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_address0_local = zext_ln172_4_fu_2256_p1;
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_1_reg_2788 == 4'd4) & ~(trunc_ln172_1_reg_2788 == 4'd5) & ~(trunc_ln172_1_reg_2788 == 4'd8) & ~(trunc_ln172_1_reg_2788 == 4'd0) & ~(trunc_ln172_1_reg_2788 == 4'd1) & ~(trunc_ln172_1_reg_2788 == 4'd2) & ~(trunc_ln172_1_reg_2788 == 4'd3) & ~(trunc_ln172_1_reg_2788 == 4'd6) & ~(trunc_ln172_1_reg_2788 == 4'd7) & ~(trunc_ln172_1_reg_2788 == 4'd9) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln172_reg_2739 == 4'd4) & ~(trunc_ln172_reg_2739 == 4'd5) & ~(trunc_ln172_reg_2739 == 4'd8) & ~(trunc_ln172_reg_2739 == 4'd0) & ~(trunc_ln172_reg_2739 == 4'd1) & ~(trunc_ln172_reg_2739 == 4'd2) & ~(trunc_ln172_reg_2739 == 4'd3) & ~(trunc_ln172_reg_2739 == 4'd6) & ~(trunc_ln172_reg_2739 == 4'd7) & ~(trunc_ln172_reg_2739 == 4'd9) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))| ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9== 1'b1) & (trunc_ln172_1_reg_2788 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln172_1_reg_2788 == 4'd4) & ~(trunc_ln172_1_reg_2788 == 4'd5) & ~(trunc_ln172_1_reg_2788 == 4'd8) & ~(trunc_ln172_1_reg_2788 == 4'd0) & ~(trunc_ln172_1_reg_2788 == 4'd1) & ~(trunc_ln172_1_reg_2788 == 4'd2) & ~(trunc_ln172_1_reg_2788 == 4'd3) & ~(trunc_ln172_1_reg_2788 == 4'd6) & ~(trunc_ln172_1_reg_2788 == 4'd7) & ~(trunc_ln172_1_reg_2788 == 4'd9) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_d0_local = DATA_y_6_load_1_reg_2992;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_d0_local = DATA_y_5_load_1_reg_2947;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_d0_local = DATA_y_7_load_1_reg_3007;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_d0_local = DATA_y_4_load_1_reg_2932;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_d0_local = DATA_y_3_load_1_reg_2977;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_d0_local = DATA_y_1_load_1_reg_2917;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_6_d0_local = DATA_y_2_load_1_reg_2962;
    end else if ((~(trunc_ln172_reg_2739 == 4'd4) & ~(trunc_ln172_reg_2739 == 4'd5) & ~(trunc_ln172_reg_2739 == 4'd8) & ~(trunc_ln172_reg_2739 == 4'd0) & ~(trunc_ln172_reg_2739 == 4'd1) & ~(trunc_ln172_reg_2739 == 4'd2) & ~(trunc_ln172_reg_2739 == 4'd3) & ~(trunc_ln172_reg_2739 == 4'd6) & ~(trunc_ln172_reg_2739 == 4'd7) & ~(trunc_ln172_reg_2739 == 4'd9) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_y_6_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_y_5_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_y_7_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_y_4_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_y_3_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_y_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_y_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_6_d0_local = DATA_y_load_1_reg_2709;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_6_d0_local = DATA_y_load_reg_2669;
    end else begin
        smem_6_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_1_reg_2788 == 4'd4) & ~(trunc_ln172_1_reg_2788 == 4'd5) & ~(trunc_ln172_1_reg_2788 == 4'd8) & ~(trunc_ln172_1_reg_2788 == 4'd0) & ~(trunc_ln172_1_reg_2788 == 4'd1) & ~(trunc_ln172_1_reg_2788 == 4'd2) & ~(trunc_ln172_1_reg_2788 == 4'd3) & ~(trunc_ln172_1_reg_2788 == 4'd6) & ~(trunc_ln172_1_reg_2788 == 4'd7) & ~(trunc_ln172_1_reg_2788 == 4'd9) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln172_reg_2739 == 4'd4) & ~(trunc_ln172_reg_2739 == 4'd5) & ~(trunc_ln172_reg_2739 == 4'd8) & ~(trunc_ln172_reg_2739 == 4'd0) & ~(trunc_ln172_reg_2739 == 4'd1) & ~(trunc_ln172_reg_2739 == 4'd2) & ~(trunc_ln172_reg_2739 == 4'd3) & ~(trunc_ln172_reg_2739 == 4'd6) & ~(trunc_ln172_reg_2739 == 4'd7) & ~(trunc_ln172_reg_2739 == 4'd9) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (trunc_ln172_reg_2739 == 4'd6)& (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))| ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_6_we0_local = 1'b1;
    end else begin
        smem_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln172_1_reg_2788 == 4'd4) & ~(trunc_ln172_1_reg_2788 == 4'd5) & ~(trunc_ln172_1_reg_2788 == 4'd8) & ~(trunc_ln172_1_reg_2788 == 4'd0) & ~(trunc_ln172_1_reg_2788 == 4'd1) & ~(trunc_ln172_1_reg_2788 == 4'd2) & ~(trunc_ln172_1_reg_2788 == 4'd3) & ~(trunc_ln172_1_reg_2788 == 4'd6) & ~(trunc_ln172_1_reg_2788 == 4'd7) & ~(trunc_ln172_1_reg_2788 == 4'd9) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_address0_local = zext_ln333_1_fu_2469_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_address0_local = zext_ln337_1_fu_2526_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_address0_local = zext_ln336_1_fu_2512_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_address0_local = zext_ln332_1_fu_2455_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_address0_local = zext_ln335_1_fu_2498_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_address0_local = zext_ln331_1_fu_2441_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_address0_local = zext_ln334_1_fu_2483_p1;
    end else if ((~(trunc_ln172_reg_2739 == 4'd4) & ~(trunc_ln172_reg_2739 == 4'd5) & ~(trunc_ln172_reg_2739 == 4'd8) & ~(trunc_ln172_reg_2739 == 4'd0) & ~(trunc_ln172_reg_2739 == 4'd1) & ~(trunc_ln172_reg_2739 == 4'd2) & ~(trunc_ln172_reg_2739 == 4'd3) & ~(trunc_ln172_reg_2739 == 4'd6) & ~(trunc_ln172_reg_2739 == 4'd7) & ~(trunc_ln172_reg_2739 == 4'd9) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln333_fu_2361_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln337_fu_2426_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln336_fu_2403_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln332_fu_2347_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln335_fu_2389_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln331_fu_2333_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln334_fu_2375_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_address0_local = zext_ln172_6_fu_2308_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_7_address0_local = zext_ln172_4_fu_2256_p1;
    end else begin
        smem_7_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_1_reg_2788 == 4'd4) & ~(trunc_ln172_1_reg_2788 == 4'd5) & ~(trunc_ln172_1_reg_2788 == 4'd8) & ~(trunc_ln172_1_reg_2788 == 4'd0) & ~(trunc_ln172_1_reg_2788 == 4'd1) & ~(trunc_ln172_1_reg_2788 == 4'd2) & ~(trunc_ln172_1_reg_2788 == 4'd3) & ~(trunc_ln172_1_reg_2788 == 4'd6) & ~(trunc_ln172_1_reg_2788 == 4'd7) & ~(trunc_ln172_1_reg_2788 == 4'd9) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln172_reg_2739 == 4'd4) & ~(trunc_ln172_reg_2739 == 4'd5) & ~(trunc_ln172_reg_2739 == 4'd8) & ~(trunc_ln172_reg_2739 == 4'd0) & ~(trunc_ln172_reg_2739 == 4'd1) & ~(trunc_ln172_reg_2739 == 4'd2) & ~(trunc_ln172_reg_2739 == 4'd3) & ~(trunc_ln172_reg_2739 == 4'd6) & ~(trunc_ln172_reg_2739 == 4'd7) & ~(trunc_ln172_reg_2739 == 4'd9) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))| ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9== 1'b1) & (trunc_ln172_1_reg_2788 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_7_ce0_local = 1'b1;
    end else begin
        smem_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln172_1_reg_2788 == 4'd4) & ~(trunc_ln172_1_reg_2788 == 4'd5) & ~(trunc_ln172_1_reg_2788 == 4'd8) & ~(trunc_ln172_1_reg_2788 == 4'd0) & ~(trunc_ln172_1_reg_2788 == 4'd1) & ~(trunc_ln172_1_reg_2788 == 4'd2) & ~(trunc_ln172_1_reg_2788 == 4'd3) & ~(trunc_ln172_1_reg_2788 == 4'd6) & ~(trunc_ln172_1_reg_2788 == 4'd7) & ~(trunc_ln172_1_reg_2788 == 4'd9) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_d0_local = DATA_y_5_load_1_reg_2947;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_d0_local = DATA_y_7_load_1_reg_3007;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_d0_local = DATA_y_6_load_1_reg_2992;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_d0_local = DATA_y_4_load_1_reg_2932;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_d0_local = DATA_y_3_load_1_reg_2977;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_d0_local = DATA_y_1_load_1_reg_2917;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_7_d0_local = DATA_y_2_load_1_reg_2962;
    end else if ((~(trunc_ln172_reg_2739 == 4'd4) & ~(trunc_ln172_reg_2739 == 4'd5) & ~(trunc_ln172_reg_2739 == 4'd8) & ~(trunc_ln172_reg_2739 == 4'd0) & ~(trunc_ln172_reg_2739 == 4'd1) & ~(trunc_ln172_reg_2739 == 4'd2) & ~(trunc_ln172_reg_2739 == 4'd3) & ~(trunc_ln172_reg_2739 == 4'd6) & ~(trunc_ln172_reg_2739 == 4'd7) & ~(trunc_ln172_reg_2739 == 4'd9) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d0_local = DATA_y_5_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d0_local = DATA_y_7_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d0_local = DATA_y_6_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d0_local = DATA_y_4_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d0_local = DATA_y_3_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d0_local = DATA_y_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d0_local = DATA_y_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_7_d0_local = DATA_y_load_1_reg_2709;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_7_d0_local = DATA_y_load_reg_2669;
    end else begin
        smem_7_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_1_reg_2788 == 4'd4) & ~(trunc_ln172_1_reg_2788 == 4'd5) & ~(trunc_ln172_1_reg_2788 == 4'd8) & ~(trunc_ln172_1_reg_2788 == 4'd0) & ~(trunc_ln172_1_reg_2788 == 4'd1) & ~(trunc_ln172_1_reg_2788 == 4'd2) & ~(trunc_ln172_1_reg_2788 == 4'd3) & ~(trunc_ln172_1_reg_2788 == 4'd6) & ~(trunc_ln172_1_reg_2788 == 4'd7) & ~(trunc_ln172_1_reg_2788 == 4'd9) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln172_reg_2739 == 4'd4) & ~(trunc_ln172_reg_2739 == 4'd5) & ~(trunc_ln172_reg_2739 == 4'd8) & ~(trunc_ln172_reg_2739 == 4'd0) & ~(trunc_ln172_reg_2739 == 4'd1) & ~(trunc_ln172_reg_2739 == 4'd2) & ~(trunc_ln172_reg_2739 == 4'd3) & ~(trunc_ln172_reg_2739 == 4'd6) & ~(trunc_ln172_reg_2739 == 4'd7) & ~(trunc_ln172_reg_2739 == 4'd9) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (trunc_ln172_reg_2739 == 4'd7)& (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))| ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_7_we0_local = 1'b1;
    end else begin
        smem_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln172_1_reg_2788 == 4'd4) & ~(trunc_ln172_1_reg_2788 == 4'd5) & ~(trunc_ln172_1_reg_2788 == 4'd8) & ~(trunc_ln172_1_reg_2788 == 4'd0) & ~(trunc_ln172_1_reg_2788 == 4'd1) & ~(trunc_ln172_1_reg_2788 == 4'd2) & ~(trunc_ln172_1_reg_2788 == 4'd3) & ~(trunc_ln172_1_reg_2788 == 4'd6) & ~(trunc_ln172_1_reg_2788 == 4'd7) & ~(trunc_ln172_1_reg_2788 == 4'd9) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_address0_local = zext_ln337_1_fu_2526_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_address0_local = zext_ln333_1_fu_2469_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_address0_local = zext_ln336_1_fu_2512_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_address0_local = zext_ln332_1_fu_2455_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_address0_local = zext_ln335_1_fu_2498_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_address0_local = zext_ln331_1_fu_2441_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_address0_local = zext_ln334_1_fu_2483_p1;
    end else if ((~(trunc_ln172_reg_2739 == 4'd4) & ~(trunc_ln172_reg_2739 == 4'd5) & ~(trunc_ln172_reg_2739 == 4'd8) & ~(trunc_ln172_reg_2739 == 4'd0) & ~(trunc_ln172_reg_2739 == 4'd1) & ~(trunc_ln172_reg_2739 == 4'd2) & ~(trunc_ln172_reg_2739 == 4'd3) & ~(trunc_ln172_reg_2739 == 4'd6) & ~(trunc_ln172_reg_2739 == 4'd7) & ~(trunc_ln172_reg_2739 == 4'd9) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln337_fu_2426_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln333_fu_2361_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln336_fu_2403_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln332_fu_2347_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln335_fu_2389_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln331_fu_2333_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln334_fu_2375_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_address0_local = zext_ln172_6_fu_2308_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_8_address0_local = zext_ln172_4_fu_2256_p1;
    end else begin
        smem_8_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_1_reg_2788 == 4'd4) & ~(trunc_ln172_1_reg_2788 == 4'd5) & ~(trunc_ln172_1_reg_2788 == 4'd8) & ~(trunc_ln172_1_reg_2788 == 4'd0) & ~(trunc_ln172_1_reg_2788 == 4'd1) & ~(trunc_ln172_1_reg_2788 == 4'd2) & ~(trunc_ln172_1_reg_2788 == 4'd3) & ~(trunc_ln172_1_reg_2788 == 4'd6) & ~(trunc_ln172_1_reg_2788 == 4'd7) & ~(trunc_ln172_1_reg_2788 == 4'd9) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln172_reg_2739 == 4'd4) & ~(trunc_ln172_reg_2739 == 4'd5) & ~(trunc_ln172_reg_2739 == 4'd8) & ~(trunc_ln172_reg_2739 == 4'd0) & ~(trunc_ln172_reg_2739 == 4'd1) & ~(trunc_ln172_reg_2739 == 4'd2) & ~(trunc_ln172_reg_2739 == 4'd3) & ~(trunc_ln172_reg_2739 == 4'd6) & ~(trunc_ln172_reg_2739 == 4'd7) & ~(trunc_ln172_reg_2739 == 4'd9) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))| ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9== 1'b1) & (trunc_ln172_1_reg_2788 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_8_ce0_local = 1'b1;
    end else begin
        smem_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln172_1_reg_2788 == 4'd4) & ~(trunc_ln172_1_reg_2788 == 4'd5) & ~(trunc_ln172_1_reg_2788 == 4'd8) & ~(trunc_ln172_1_reg_2788 == 4'd0) & ~(trunc_ln172_1_reg_2788 == 4'd1) & ~(trunc_ln172_1_reg_2788 == 4'd2) & ~(trunc_ln172_1_reg_2788 == 4'd3) & ~(trunc_ln172_1_reg_2788 == 4'd6) & ~(trunc_ln172_1_reg_2788 == 4'd7) & ~(trunc_ln172_1_reg_2788 == 4'd9) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_d0_local = DATA_y_7_load_1_reg_3007;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_d0_local = DATA_y_5_load_1_reg_2947;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_d0_local = DATA_y_6_load_1_reg_2992;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_d0_local = DATA_y_4_load_1_reg_2932;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_d0_local = DATA_y_3_load_1_reg_2977;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_d0_local = DATA_y_1_load_1_reg_2917;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_8_d0_local = DATA_y_2_load_1_reg_2962;
    end else if ((~(trunc_ln172_reg_2739 == 4'd4) & ~(trunc_ln172_reg_2739 == 4'd5) & ~(trunc_ln172_reg_2739 == 4'd8) & ~(trunc_ln172_reg_2739 == 4'd0) & ~(trunc_ln172_reg_2739 == 4'd1) & ~(trunc_ln172_reg_2739 == 4'd2) & ~(trunc_ln172_reg_2739 == 4'd3) & ~(trunc_ln172_reg_2739 == 4'd6) & ~(trunc_ln172_reg_2739 == 4'd7) & ~(trunc_ln172_reg_2739 == 4'd9) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d0_local = DATA_y_7_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d0_local = DATA_y_5_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d0_local = DATA_y_6_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d0_local = DATA_y_4_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d0_local = DATA_y_3_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d0_local = DATA_y_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d0_local = DATA_y_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_8_d0_local = DATA_y_load_1_reg_2709;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_8_d0_local = DATA_y_load_reg_2669;
    end else begin
        smem_8_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_1_reg_2788 == 4'd4) & ~(trunc_ln172_1_reg_2788 == 4'd5) & ~(trunc_ln172_1_reg_2788 == 4'd8) & ~(trunc_ln172_1_reg_2788 == 4'd0) & ~(trunc_ln172_1_reg_2788 == 4'd1) & ~(trunc_ln172_1_reg_2788 == 4'd2) & ~(trunc_ln172_1_reg_2788 == 4'd3) & ~(trunc_ln172_1_reg_2788 == 4'd6) & ~(trunc_ln172_1_reg_2788 == 4'd7) & ~(trunc_ln172_1_reg_2788 == 4'd9) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln172_reg_2739 == 4'd4) & ~(trunc_ln172_reg_2739 == 4'd5) & ~(trunc_ln172_reg_2739 == 4'd8) & ~(trunc_ln172_reg_2739 == 4'd0) & ~(trunc_ln172_reg_2739 == 4'd1) & ~(trunc_ln172_reg_2739 == 4'd2) & ~(trunc_ln172_reg_2739 == 4'd3) & ~(trunc_ln172_reg_2739 == 4'd6) & ~(trunc_ln172_reg_2739 == 4'd7) & ~(trunc_ln172_reg_2739 == 4'd9) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (trunc_ln172_reg_2739 == 4'd8)& (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0))| ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_8_we0_local = 1'b1;
    end else begin
        smem_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_9_address0_local = zext_ln334_1_fu_2483_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_9_address0_local = zext_ln337_1_fu_2526_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_9_address0_local = zext_ln333_1_fu_2469_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_9_address0_local = zext_ln336_1_fu_2512_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_9_address0_local = zext_ln332_1_fu_2455_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_9_address0_local = zext_ln335_1_fu_2498_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_9_address0_local = zext_ln331_1_fu_2441_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln334_fu_2375_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln337_fu_2426_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln333_fu_2361_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln336_fu_2403_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln332_fu_2347_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln335_fu_2389_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln331_fu_2333_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_address0_local = zext_ln172_6_fu_2308_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_9_address0_local = zext_ln172_4_fu_2256_p1;
    end else begin
        smem_9_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9== 1'b1) & (trunc_ln172_reg_2739 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd6) & (1'b1 ==ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_9_ce0_local = 1'b1;
    end else begin
        smem_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_9_d0_local = DATA_y_2_load_1_reg_2962;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_9_d0_local = DATA_y_7_load_1_reg_3007;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_9_d0_local = DATA_y_5_load_1_reg_2947;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_9_d0_local = DATA_y_6_load_1_reg_2992;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_9_d0_local = DATA_y_4_load_1_reg_2932;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_9_d0_local = DATA_y_3_load_1_reg_2977;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_9_d0_local = DATA_y_1_load_1_reg_2917;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d0_local = DATA_y_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d0_local = DATA_y_7_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d0_local = DATA_y_5_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d0_local = DATA_y_6_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d0_local = DATA_y_4_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d0_local = DATA_y_3_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d0_local = DATA_y_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_9_d0_local = DATA_y_load_1_reg_2709;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_9_d0_local = DATA_y_load_reg_2669;
    end else begin
        smem_9_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (trunc_ln172_reg_2739 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9== 1'b1) & (trunc_ln172_1_reg_2788 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_9_we0_local = 1'b1;
    end else begin
        smem_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln172_1_reg_2788 == 4'd4) & ~(trunc_ln172_1_reg_2788 == 4'd5) & ~(trunc_ln172_1_reg_2788 == 4'd8) & ~(trunc_ln172_1_reg_2788 == 4'd0) & ~(trunc_ln172_1_reg_2788 == 4'd1) & ~(trunc_ln172_1_reg_2788 == 4'd2) & ~(trunc_ln172_1_reg_2788 == 4'd3) & ~(trunc_ln172_1_reg_2788 == 4'd6) & ~(trunc_ln172_1_reg_2788 == 4'd7) & ~(trunc_ln172_1_reg_2788 == 4'd9) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln334_1_fu_2483_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln331_1_fu_2441_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln335_1_fu_2498_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln337_1_fu_2526_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln333_1_fu_2469_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln336_1_fu_2512_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_address0_local = zext_ln332_1_fu_2455_p1;
    end else if ((~(trunc_ln172_reg_2739 == 4'd4) & ~(trunc_ln172_reg_2739 == 4'd5) & ~(trunc_ln172_reg_2739 == 4'd8) & ~(trunc_ln172_reg_2739 == 4'd0) & ~(trunc_ln172_reg_2739 == 4'd1) & ~(trunc_ln172_reg_2739 == 4'd2) & ~(trunc_ln172_reg_2739 == 4'd3) & ~(trunc_ln172_reg_2739 == 4'd6) & ~(trunc_ln172_reg_2739 == 4'd7) & ~(trunc_ln172_reg_2739 == 4'd9) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln334_fu_2375_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln331_fu_2333_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln335_fu_2389_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln337_fu_2426_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln333_fu_2361_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln336_fu_2403_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln332_fu_2347_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_address0_local = zext_ln172_6_fu_2308_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_address0_local = zext_ln172_4_fu_2256_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_1_reg_2788 == 4'd4) & ~(trunc_ln172_1_reg_2788 == 4'd5) & ~(trunc_ln172_1_reg_2788 == 4'd8) & ~(trunc_ln172_1_reg_2788 == 4'd0) & ~(trunc_ln172_1_reg_2788 == 4'd1) & ~(trunc_ln172_1_reg_2788 == 4'd2) & ~(trunc_ln172_1_reg_2788 == 4'd3) & ~(trunc_ln172_1_reg_2788 == 4'd6) & ~(trunc_ln172_1_reg_2788 == 4'd7) & ~(trunc_ln172_1_reg_2788 == 4'd9) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln172_reg_2739 == 4'd4) & ~(trunc_ln172_reg_2739 == 4'd5) & ~(trunc_ln172_reg_2739 == 4'd8) & ~(trunc_ln172_reg_2739 == 4'd0) & ~(trunc_ln172_reg_2739 == 4'd1) & ~(trunc_ln172_reg_2739 == 4'd2) & ~(trunc_ln172_reg_2739 == 4'd3) & ~(trunc_ln172_reg_2739 == 4'd6) & ~(trunc_ln172_reg_2739 == 4'd7) & ~(trunc_ln172_reg_2739 == 4'd9) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))| ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9== 1'b1) & (trunc_ln172_1_reg_2788 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln172_1_reg_2788 == 4'd4) & ~(trunc_ln172_1_reg_2788 == 4'd5) & ~(trunc_ln172_1_reg_2788 == 4'd8) & ~(trunc_ln172_1_reg_2788 == 4'd0) & ~(trunc_ln172_1_reg_2788 == 4'd1) & ~(trunc_ln172_1_reg_2788 == 4'd2) & ~(trunc_ln172_1_reg_2788 == 4'd3) & ~(trunc_ln172_1_reg_2788 == 4'd6) & ~(trunc_ln172_1_reg_2788 == 4'd7) & ~(trunc_ln172_1_reg_2788 == 4'd9) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = DATA_y_2_load_1_reg_2962;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = DATA_y_1_load_1_reg_2917;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = DATA_y_3_load_1_reg_2977;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = DATA_y_7_load_1_reg_3007;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = DATA_y_5_load_1_reg_2947;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = DATA_y_6_load_1_reg_2992;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        smem_d0_local = DATA_y_4_load_1_reg_2932;
    end else if ((~(trunc_ln172_reg_2739 == 4'd4) & ~(trunc_ln172_reg_2739 == 4'd5) & ~(trunc_ln172_reg_2739 == 4'd8) & ~(trunc_ln172_reg_2739 == 4'd0) & ~(trunc_ln172_reg_2739 == 4'd1) & ~(trunc_ln172_reg_2739 == 4'd2) & ~(trunc_ln172_reg_2739 == 4'd3) & ~(trunc_ln172_reg_2739 == 4'd6) & ~(trunc_ln172_reg_2739 == 4'd7) & ~(trunc_ln172_reg_2739 == 4'd9) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_y_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_y_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_y_3_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_y_7_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_y_5_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_y_6_q1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_y_4_q1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        smem_d0_local = DATA_y_load_1_reg_2709;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        smem_d0_local = DATA_y_load_reg_2669;
    end else begin
        smem_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(trunc_ln172_1_reg_2788 == 4'd4) & ~(trunc_ln172_1_reg_2788 == 4'd5) & ~(trunc_ln172_1_reg_2788 == 4'd8) & ~(trunc_ln172_1_reg_2788 == 4'd0) & ~(trunc_ln172_1_reg_2788 == 4'd1) & ~(trunc_ln172_1_reg_2788 == 4'd2) & ~(trunc_ln172_1_reg_2788 == 4'd3) & ~(trunc_ln172_1_reg_2788 == 4'd6) & ~(trunc_ln172_1_reg_2788 == 4'd7) & ~(trunc_ln172_1_reg_2788 == 4'd9) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln172_reg_2739 == 4'd4) & ~(trunc_ln172_reg_2739 == 4'd5) & ~(trunc_ln172_reg_2739 == 4'd8) & ~(trunc_ln172_reg_2739 == 4'd0) & ~(trunc_ln172_reg_2739 == 4'd1) & ~(trunc_ln172_reg_2739 == 4'd2) & ~(trunc_ln172_reg_2739 == 4'd3) & ~(trunc_ln172_reg_2739 == 4'd6) & ~(trunc_ln172_reg_2739 == 4'd7) & ~(trunc_ln172_reg_2739 == 4'd9) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (trunc_ln172_reg_2739 == 4'd0)& (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_reg_2739 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))| ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln172_1_reg_2788 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        smem_we0_local = 1'b1;
    end else begin
        smem_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to9 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((1'b1 == ap_condition_exit_pp0_iter8_stage2) & (ap_idle_pp0_0to7 == 1'b1))) begin
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
assign DATA_y_1_address0 = zext_ln327_reg_2653;
assign DATA_y_1_address1 = zext_ln325_reg_2611;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_1_ce1 = DATA_y_1_ce1_local;
assign DATA_y_2_address0 = zext_ln327_reg_2653;
assign DATA_y_2_address1 = zext_ln325_reg_2611;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_2_ce1 = DATA_y_2_ce1_local;
assign DATA_y_3_address0 = zext_ln327_reg_2653;
assign DATA_y_3_address1 = zext_ln325_reg_2611;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_3_ce1 = DATA_y_3_ce1_local;
assign DATA_y_4_address0 = zext_ln327_reg_2653;
assign DATA_y_4_address1 = zext_ln325_reg_2611;
assign DATA_y_4_ce0 = DATA_y_4_ce0_local;
assign DATA_y_4_ce1 = DATA_y_4_ce1_local;
assign DATA_y_5_address0 = zext_ln327_reg_2653;
assign DATA_y_5_address1 = zext_ln325_reg_2611;
assign DATA_y_5_ce0 = DATA_y_5_ce0_local;
assign DATA_y_5_ce1 = DATA_y_5_ce1_local;
assign DATA_y_6_address0 = zext_ln327_reg_2653;
assign DATA_y_6_address1 = zext_ln325_reg_2611;
assign DATA_y_6_ce0 = DATA_y_6_ce0_local;
assign DATA_y_6_ce1 = DATA_y_6_ce1_local;
assign DATA_y_7_address0 = zext_ln327_reg_2653;
assign DATA_y_7_address1 = zext_ln325_reg_2611;
assign DATA_y_7_ce0 = DATA_y_7_ce0_local;
assign DATA_y_7_ce1 = DATA_y_7_ce1_local;
assign DATA_y_address0 = zext_ln327_fu_2103_p1;
assign DATA_y_address1 = zext_ln325_fu_2045_p1;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign DATA_y_ce1 = DATA_y_ce1_local;
assign add_ln325_fu_2035_p2 = (tid_1_reg_2573 + 7'd2);
assign add_ln331_1_fu_2180_p2 = (offset_1_reg_2593_pp0_iter8_reg + 32'd288);
assign add_ln331_fu_2074_p2 = ($signed(zext_ln172_2_fu_2052_p1) + $signed(9'd288));
assign add_ln332_1_fu_2185_p2 = (offset_1_reg_2593_pp0_iter8_reg + 32'd72);
assign add_ln333_1_fu_2190_p2 = (offset_1_reg_2593_pp0_iter8_reg + 32'd360);
assign add_ln333_fu_2080_p2 = ($signed(zext_ln172_2_fu_2052_p1) + $signed(9'd360));
assign add_ln334_1_fu_2236_p2 = (offset_1_reg_2593_pp0_iter8_reg + 32'd144);
assign add_ln334_fu_2146_p2 = ($signed(zext_ln172_1_reg_2622) + $signed(8'd144));
assign add_ln335_1_fu_2241_p2 = (offset_1_reg_2593_pp0_iter8_reg + 32'd432);
assign add_ln335_fu_2171_p2 = ($signed(zext_ln172_1_reg_2622) + $signed(8'd176));
assign add_ln336_1_fu_2246_p2 = (offset_1_reg_2593_pp0_iter8_reg + 32'd216);
assign add_ln337_1_fu_2251_p2 = (offset_1_reg_2593_pp0_iter8_reg + 32'd504);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign grp_fu_2024_p0 = {{zext_ln326_fu_1990_p1[31:3]}, {or_ln1_fu_2004_p3}};
assign grp_fu_2024_p1 = 32'd11;
assign grp_fu_2030_p1 = 6'd11;
assign grp_fu_2540_p0 = grp_fu_2540_p00;
assign grp_fu_2540_p00 = offset_reg_2584_pp0_iter7_reg;
assign grp_fu_2540_p1 = 8'd72;
assign grp_fu_2540_p2 = 17'd373;
assign grp_fu_2549_p0 = zext_ln172_2_reg_2628;
assign grp_fu_2549_p1 = 9'd216;
assign grp_fu_2549_p2 = 19'd745;
assign grp_fu_2557_p0 = grp_fu_2557_p00;
assign grp_fu_2557_p00 = offset_reg_2584_pp0_iter8_reg;
assign grp_fu_2557_p1 = 10'd504;
assign grp_fu_2557_p2 = 21'd1490;
assign grp_fu_837_p_ce = 1'b1;
assign grp_fu_837_p_din0 = grp_fu_1916_p0;
assign grp_fu_837_p_din1 = 65'd6247225158;
assign grp_fu_841_p_ce = 1'b1;
assign grp_fu_841_p_din0 = grp_fu_1921_p0;
assign grp_fu_841_p_din1 = 65'd6247225158;
assign grp_fu_845_p_ce = 1'b1;
assign grp_fu_845_p_din0 = grp_fu_1926_p0;
assign grp_fu_845_p_din1 = 65'd6247225158;
assign grp_fu_849_p_ce = 1'b1;
assign grp_fu_849_p_din0 = zext_ln337_3_fu_2295_p1;
assign grp_fu_849_p_din1 = 65'd6247225158;
assign mul_ln172_fu_2058_p0 = mul_ln172_fu_2058_p00;
assign mul_ln172_fu_2058_p00 = offset_reg_2584_pp0_iter7_reg;
assign mul_ln172_fu_2058_p1 = 13'd94;
assign mul_ln331_fu_2111_p0 = mul_ln331_fu_2111_p00;
assign mul_ln331_fu_2111_p00 = add_ln331_reg_2643;
assign mul_ln331_fu_2111_p1 = 19'd745;
assign mul_ln333_fu_2130_p0 = mul_ln333_fu_2130_p00;
assign mul_ln333_fu_2130_p00 = add_ln333_reg_2648;
assign mul_ln333_fu_2130_p1 = 19'd745;
assign mul_ln334_fu_2155_p0 = mul_ln334_fu_2155_p00;
assign mul_ln334_fu_2155_p00 = add_ln334_fu_2146_p2;
assign mul_ln334_fu_2155_p1 = 17'd373;
assign mul_ln335_fu_2208_p0 = mul_ln335_fu_2208_p00;
assign mul_ln335_fu_2208_p00 = $unsigned(sext_ln335_fu_2201_p1);
assign mul_ln335_fu_2208_p1 = 19'd745;
assign offset_1_fu_2012_p5 = {{zext_ln326_fu_1990_p1[31:3]}, {or_ln1_fu_2004_p3}};
assign offset_fu_1986_p1 = ap_sig_allocacmp_tid_1[5:0];
assign or_ln1_fu_2004_p3 = {{tmp_20_fu_1994_p4}, {1'd1}};
assign or_ln_fu_2095_p3 = {{tmp_s_fu_2086_p4}, {1'd1}};
assign sext_ln335_fu_2201_p1 = $signed(add_ln335_reg_2699);
assign smem_10_address0 = smem_10_address0_local;
assign smem_10_ce0 = smem_10_ce0_local;
assign smem_10_d0 = smem_10_d0_local;
assign smem_10_we0 = smem_10_we0_local;
assign smem_1_address0 = smem_1_address0_local;
assign smem_1_ce0 = smem_1_ce0_local;
assign smem_1_d0 = smem_1_d0_local;
assign smem_1_we0 = smem_1_we0_local;
assign smem_2_address0 = smem_2_address0_local;
assign smem_2_ce0 = smem_2_ce0_local;
assign smem_2_d0 = smem_2_d0_local;
assign smem_2_we0 = smem_2_we0_local;
assign smem_3_address0 = smem_3_address0_local;
assign smem_3_ce0 = smem_3_ce0_local;
assign smem_3_d0 = smem_3_d0_local;
assign smem_3_we0 = smem_3_we0_local;
assign smem_4_address0 = smem_4_address0_local;
assign smem_4_ce0 = smem_4_ce0_local;
assign smem_4_d0 = smem_4_d0_local;
assign smem_4_we0 = smem_4_we0_local;
assign smem_5_address0 = smem_5_address0_local;
assign smem_5_ce0 = smem_5_ce0_local;
assign smem_5_d0 = smem_5_d0_local;
assign smem_5_we0 = smem_5_we0_local;
assign smem_6_address0 = smem_6_address0_local;
assign smem_6_ce0 = smem_6_ce0_local;
assign smem_6_d0 = smem_6_d0_local;
assign smem_6_we0 = smem_6_we0_local;
assign smem_7_address0 = smem_7_address0_local;
assign smem_7_ce0 = smem_7_ce0_local;
assign smem_7_d0 = smem_7_d0_local;
assign smem_7_we0 = smem_7_we0_local;
assign smem_8_address0 = smem_8_address0_local;
assign smem_8_ce0 = smem_8_ce0_local;
assign smem_8_d0 = smem_8_d0_local;
assign smem_8_we0 = smem_8_we0_local;
assign smem_9_address0 = smem_9_address0_local;
assign smem_9_ce0 = smem_9_ce0_local;
assign smem_9_d0 = smem_9_d0_local;
assign smem_9_we0 = smem_9_we0_local;
assign smem_address0 = smem_address0_local;
assign smem_ce0 = smem_ce0_local;
assign smem_d0 = smem_d0_local;
assign smem_we0 = smem_we0_local;
assign tmp_20_fu_1994_p4 = {{ap_sig_allocacmp_tid_1[2:1]}};
assign tmp_30_fu_2270_p1 = grp_fu_2540_p3;
assign tmp_34_fu_2299_p1 = grp_fu_2549_p3;
assign tmp_35_fu_2417_p1 = grp_fu_2557_p3;
assign tmp_35_fu_2417_p4 = {{tmp_35_fu_2417_p1[20:14]}};
assign tmp_s_fu_2086_p4 = {{tid_1_reg_2573_pp0_iter7_reg[5:1]}};
assign trunc_ln172_1_fu_2279_p1 = grp_fu_2024_p2[3:0];
assign trunc_ln172_fu_2198_p1 = urem_ln172_reg_2606_pp0_iter7_reg[3:0];
assign zext_ln172_1_fu_2049_p1 = offset_reg_2584_pp0_iter7_reg;
assign zext_ln172_2_fu_2052_p1 = offset_reg_2584_pp0_iter7_reg;
assign zext_ln172_4_fu_2256_p1 = tmp_28_reg_2633;
assign zext_ln172_5_fu_2176_p1 = offset_1_reg_2593_pp0_iter8_reg;
assign zext_ln172_6_fu_2308_p1 = reg_1966;
assign zext_ln325_fu_2045_p1 = tid_1_reg_2573_pp0_iter7_reg;
assign zext_ln326_fu_1990_p1 = offset_fu_1986_p1;
assign zext_ln327_fu_2103_p1 = or_ln_fu_2095_p3;
assign zext_ln331_1_fu_2441_p1 = tmp_37_reg_2792;
assign zext_ln331_3_fu_2224_p1 = add_ln331_1_reg_2724;
assign zext_ln331_fu_2333_p1 = tmp_29_reg_2684;
assign zext_ln332_1_fu_2455_p1 = tmp_38_reg_2797;
assign zext_ln332_3_fu_2228_p1 = add_ln332_1_reg_2729;
assign zext_ln332_fu_2347_p1 = tmp_30_reg_2783;
assign zext_ln333_1_fu_2469_p1 = tmp_39_reg_2802;
assign zext_ln333_3_fu_2232_p1 = add_ln333_1_reg_2734;
assign zext_ln333_fu_2361_p1 = tmp_31_reg_2689;
assign zext_ln334_1_fu_2483_p1 = reg_1966;
assign zext_ln334_3_fu_2283_p1 = add_ln334_1_reg_2763;
assign zext_ln334_fu_2375_p1 = tmp_32_reg_2694;
assign zext_ln335_1_fu_2498_p1 = tmp_41_reg_2892;
assign zext_ln335_3_fu_2287_p1 = add_ln335_1_reg_2768;
assign zext_ln335_fu_2389_p1 = tmp_33_reg_2743;
assign zext_ln336_1_fu_2512_p1 = tmp_42_reg_2902;
assign zext_ln336_3_fu_2291_p1 = add_ln336_1_reg_2773;
assign zext_ln336_fu_2403_p1 = tmp_34_reg_2857;
assign zext_ln337_1_fu_2526_p1 = tmp_43_reg_2912;
assign zext_ln337_3_fu_2295_p1 = add_ln337_1_reg_2778;
assign zext_ln337_fu_2426_p1 = tmp_35_fu_2417_p4;
always @ (posedge ap_clk) begin
    zext_ln325_reg_2611[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln172_1_reg_2622[7:6] <= 2'b00;
    zext_ln172_2_reg_2628[8:6] <= 3'b000;
    zext_ln327_reg_2653[0] <= 1'b1;
    zext_ln327_reg_2653[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end
endmodule 