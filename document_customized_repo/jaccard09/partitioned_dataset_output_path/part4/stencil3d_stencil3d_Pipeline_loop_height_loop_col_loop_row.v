
module stencil3d_stencil3d_Pipeline_loop_height_loop_col_loop_row (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_7_address0,sol_7_ce0,sol_7_we0,sol_7_d0,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,sol_6_address0,sol_6_ce0,sol_6_we0,sol_6_d0,sol_5_address0,sol_5_ce0,sol_5_we0,sol_5_d0,sol_4_address0,sol_4_ce0,sol_4_we0,sol_4_d0,sol_3_address0,sol_3_ce0,sol_3_we0,sol_3_d0,sol_2_address0,sol_2_ce0,sol_2_we0,sol_2_d0,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,orig_2_address0,orig_2_ce0,orig_2_q0,orig_2_address1,orig_2_ce1,orig_2_q1,orig_3_address0,orig_3_ce0,orig_3_q0,orig_3_address1,orig_3_ce1,orig_3_q1,orig_4_address0,orig_4_ce0,orig_4_q0,orig_4_address1,orig_4_ce1,orig_4_q1,orig_5_address0,orig_5_ce0,orig_5_q0,orig_5_address1,orig_5_ce1,orig_5_q1,orig_6_address0,orig_6_ce0,orig_6_q0,orig_6_address1,orig_6_ce1,orig_6_q1,orig_7_address0,orig_7_ce0,orig_7_q0,orig_7_address1,orig_7_ce1,orig_7_q1,C_load,C_load_1);  
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] sol_7_address0;
output   sol_7_ce0;
output   sol_7_we0;
output  [31:0] sol_7_d0;
output  [10:0] sol_0_address0;
output   sol_0_ce0;
output   sol_0_we0;
output  [31:0] sol_0_d0;
output  [10:0] sol_6_address0;
output   sol_6_ce0;
output   sol_6_we0;
output  [31:0] sol_6_d0;
output  [10:0] sol_5_address0;
output   sol_5_ce0;
output   sol_5_we0;
output  [31:0] sol_5_d0;
output  [10:0] sol_4_address0;
output   sol_4_ce0;
output   sol_4_we0;
output  [31:0] sol_4_d0;
output  [10:0] sol_3_address0;
output   sol_3_ce0;
output   sol_3_we0;
output  [31:0] sol_3_d0;
output  [10:0] sol_2_address0;
output   sol_2_ce0;
output   sol_2_we0;
output  [31:0] sol_2_d0;
output  [10:0] sol_1_address0;
output   sol_1_ce0;
output   sol_1_we0;
output  [31:0] sol_1_d0;
output  [10:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [10:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
output  [10:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [10:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
output  [10:0] orig_2_address0;
output   orig_2_ce0;
input  [31:0] orig_2_q0;
output  [10:0] orig_2_address1;
output   orig_2_ce1;
input  [31:0] orig_2_q1;
output  [10:0] orig_3_address0;
output   orig_3_ce0;
input  [31:0] orig_3_q0;
output  [10:0] orig_3_address1;
output   orig_3_ce1;
input  [31:0] orig_3_q1;
output  [10:0] orig_4_address0;
output   orig_4_ce0;
input  [31:0] orig_4_q0;
output  [10:0] orig_4_address1;
output   orig_4_ce1;
input  [31:0] orig_4_q1;
output  [10:0] orig_5_address0;
output   orig_5_ce0;
input  [31:0] orig_5_q0;
output  [10:0] orig_5_address1;
output   orig_5_ce1;
input  [31:0] orig_5_q1;
output  [10:0] orig_6_address0;
output   orig_6_ce0;
input  [31:0] orig_6_q0;
output  [10:0] orig_6_address1;
output   orig_6_ce1;
input  [31:0] orig_6_q1;
output  [10:0] orig_7_address0;
output   orig_7_ce0;
input  [31:0] orig_7_q0;
output  [10:0] orig_7_address1;
output   orig_7_ce1;
input  [31:0] orig_7_q1;
input  [31:0] C_load;
input  [31:0] C_load_1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] icmp_ln36_reg_2005;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [7:0] indvar_flatten_load_reg_2000;
wire   [0:0] icmp_ln36_fu_1151_p2;
reg   [0:0] icmp_ln36_reg_2005_pp0_iter1_reg;
wire   [12:0] add_ln36_fu_1157_p2;
reg   [12:0] add_ln36_reg_2009;
reg   [4:0] j_load_reg_2014;
wire   [0:0] icmp_ln37_fu_1169_p2;
reg   [0:0] icmp_ln37_reg_2019;
wire   [4:0] select_ln11_fu_1175_p3;
reg   [4:0] select_ln11_reg_2026;
wire   [0:0] and_ln11_fu_1195_p2;
reg   [0:0] and_ln11_reg_2032;
wire   [4:0] indvars_iv_next79_dup_fu_1201_p2;
reg   [4:0] indvars_iv_next79_dup_reg_2038;
wire   [3:0] k_mid2_fu_1213_p3;
reg   [3:0] k_mid2_reg_2043;
wire   [2:0] trunc_ln38_fu_1221_p1;
reg   [2:0] trunc_ln38_reg_2049;
reg   [2:0] trunc_ln38_reg_2049_pp0_iter1_reg;
reg   [2:0] trunc_ln38_reg_2049_pp0_iter2_reg;
reg   [0:0] tmp_10_reg_2063;
wire   [4:0] select_ln36_fu_1254_p3;
reg   [4:0] select_ln36_reg_2072;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [4:0] indvars_iv_next79_mid2_fu_1266_p3;
reg   [4:0] indvars_iv_next79_mid2_reg_2079;
wire   [4:0] select_ln37_fu_1273_p3;
reg   [4:0] select_ln37_reg_2084;
wire   [4:0] tmp3_fu_1278_p2;
reg   [4:0] tmp3_reg_2089;
wire   [63:0] zext_ln39_fu_1293_p1;
reg   [63:0] zext_ln39_reg_2094;
reg   [63:0] zext_ln39_reg_2094_pp0_iter1_reg;
reg   [63:0] zext_ln39_reg_2094_pp0_iter2_reg;
wire   [0:0] tmp_11_fu_1331_p3;
reg   [0:0] tmp_11_reg_2186;
wire   [63:0] zext_ln44_fu_1349_p1;
reg   [63:0] zext_ln44_reg_2193;
reg   [63:0] zext_ln44_reg_2193_pp0_iter1_reg;
reg   [63:0] zext_ln44_reg_2193_pp0_iter2_reg;
wire   [9:0] empty_11_fu_1452_p2;
reg   [9:0] empty_11_reg_2285;
wire    ap_block_pp0_stage2_11001;
wire  signed [31:0] sum0_fu_1458_p19;
reg  signed [31:0] sum0_reg_2290;
wire   [31:0] tmp_3_fu_1535_p19;
reg   [31:0] tmp_3_reg_2376;
wire  signed [31:0] sum0_1_fu_1574_p19;
reg  signed [31:0] sum0_1_reg_2381;
wire   [31:0] tmp_5_fu_1613_p19;
reg   [31:0] tmp_5_reg_2387;
wire   [31:0] tmp_8_fu_1671_p19;
reg   [31:0] tmp_8_reg_2432;
wire   [31:0] tmp_s_fu_1729_p19;
reg   [31:0] tmp_s_reg_2477;
wire   [31:0] grp_fu_1042_p19;
reg   [31:0] tmp_reg_2482;
wire   [31:0] tmp_1_fu_1768_p19;
reg   [31:0] tmp_1_reg_2487;
wire   [31:0] add_ln48_3_fu_1830_p2;
reg   [31:0] add_ln48_3_reg_2532;
wire   [31:0] grp_fu_1081_p19;
reg   [31:0] tmp_6_reg_2537;
wire   [31:0] tmp_9_fu_1853_p19;
reg   [31:0] tmp_9_reg_2582;
reg   [31:0] tmp_2_reg_2587;
wire   [31:0] grp_fu_1034_p2;
reg   [31:0] mul_ln48_reg_2592;
reg   [31:0] mul_ln48_reg_2592_pp0_iter2_reg;
reg   [31:0] tmp_7_reg_2597;
wire   [31:0] add_ln48_9_fu_1896_p2;
reg   [31:0] add_ln48_9_reg_2602;
wire   [31:0] grp_fu_1038_p2;
reg   [31:0] mul_ln48_2_reg_2607;
reg   [31:0] mul_ln48_2_reg_2607_pp0_iter2_reg;
wire  signed [31:0] add_ln48_4_fu_1910_p2;
reg  signed [31:0] add_ln48_4_reg_2612;
wire  signed [31:0] add_ln48_10_fu_1924_p2;
reg  signed [31:0] add_ln48_10_reg_2617;
reg   [31:0] mul_ln48_1_reg_2622;
reg   [31:0] mul_ln48_3_reg_2627;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln43_fu_1314_p1;
wire   [63:0] zext_ln42_1_fu_1371_p1;
wire   [63:0] zext_ln40_fu_1504_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln41_fu_1523_p1;
wire   [63:0] zext_ln40_1_fu_1659_p1;
wire   [63:0] zext_ln43_1_fu_1717_p1;
wire   [63:0] zext_ln42_fu_1814_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln41_1_fu_1841_p1;
reg   [3:0] k_fu_122;
wire   [3:0] add_ln44_2_fu_1383_p2;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_k_load;
reg   [4:0] j_fu_126;
reg   [4:0] ap_sig_allocacmp_j_load;
reg   [7:0] indvar_flatten_fu_130;
wire   [7:0] select_ln37_1_fu_1393_p3;
reg   [7:0] ap_sig_allocacmp_indvar_flatten_load;
reg   [4:0] i_fu_134;
reg   [12:0] indvar_flatten14_fu_138;
reg   [12:0] ap_sig_allocacmp_indvar_flatten14_load;
reg    orig_0_ce1_local;
reg   [10:0] orig_0_address1_local;
reg    orig_0_ce0_local;
reg   [10:0] orig_0_address0_local;
reg    orig_1_ce1_local;
reg   [10:0] orig_1_address1_local;
reg    orig_1_ce0_local;
reg   [10:0] orig_1_address0_local;
reg    orig_2_ce1_local;
reg   [10:0] orig_2_address1_local;
reg    orig_2_ce0_local;
reg   [10:0] orig_2_address0_local;
reg    orig_3_ce1_local;
reg   [10:0] orig_3_address1_local;
reg    orig_3_ce0_local;
reg   [10:0] orig_3_address0_local;
reg    orig_4_ce1_local;
reg   [10:0] orig_4_address1_local;
reg    orig_4_ce0_local;
reg   [10:0] orig_4_address0_local;
reg    orig_5_ce1_local;
reg   [10:0] orig_5_address1_local;
reg    orig_5_ce0_local;
reg   [10:0] orig_5_address0_local;
reg    orig_6_ce1_local;
reg   [10:0] orig_6_address1_local;
reg    orig_6_ce0_local;
reg   [10:0] orig_6_address0_local;
reg    orig_7_ce1_local;
reg   [10:0] orig_7_address1_local;
reg    orig_7_ce0_local;
reg   [10:0] orig_7_address0_local;
reg    sol_6_we0_local;
reg   [31:0] sol_6_d0_local;
wire   [31:0] add_ln48_5_fu_1929_p2;
reg    sol_6_ce0_local;
reg   [10:0] sol_6_address0_local;
wire   [31:0] add_ln48_11_fu_1941_p2;
reg    sol_7_we0_local;
reg   [31:0] sol_7_d0_local;
reg    sol_7_ce0_local;
reg   [10:0] sol_7_address0_local;
reg    sol_5_we0_local;
reg   [31:0] sol_5_d0_local;
reg    sol_5_ce0_local;
reg   [10:0] sol_5_address0_local;
reg    sol_4_we0_local;
reg   [31:0] sol_4_d0_local;
reg    sol_4_ce0_local;
reg   [10:0] sol_4_address0_local;
reg    sol_3_we0_local;
reg   [31:0] sol_3_d0_local;
reg    sol_3_ce0_local;
reg   [10:0] sol_3_address0_local;
reg    sol_2_we0_local;
reg   [31:0] sol_2_d0_local;
reg    sol_2_ce0_local;
reg   [10:0] sol_2_address0_local;
reg    sol_1_we0_local;
reg   [31:0] sol_1_d0_local;
reg    sol_1_ce0_local;
reg   [10:0] sol_1_address0_local;
reg    sol_0_we0_local;
reg   [31:0] sol_0_d0_local;
reg    sol_0_ce0_local;
reg   [10:0] sol_0_address0_local;
reg  signed [31:0] grp_fu_1034_p0;
reg  signed [31:0] grp_fu_1034_p1;
reg  signed [31:0] grp_fu_1038_p0;
reg  signed [31:0] grp_fu_1038_p1;
wire   [31:0] grp_fu_1042_p17;
reg   [2:0] grp_fu_1042_p18;
wire   [31:0] grp_fu_1081_p17;
reg   [2:0] grp_fu_1081_p18;
wire   [0:0] icmp_ln38_fu_1189_p2;
wire   [0:0] xor_ln11_fu_1183_p2;
wire   [0:0] empty_fu_1207_p2;
wire   [4:0] indvars_iv_next7924_fu_1236_p2;
wire   [4:0] indvars_iv_next9217_fu_1248_p2;
wire   [4:0] indvars_iv_next79_mid1_fu_1261_p2;
wire   [4:0] select_ln11_1_fu_1241_p3;
wire   [10:0] add_ln_fu_1284_p4;
wire   [10:0] add_ln4_fu_1305_p4;
wire   [3:0] add_ln44_fu_1326_p2;
wire   [10:0] add_ln44_1_fu_1339_p4;
wire   [10:0] add_ln42_1_fu_1361_p4;
wire   [7:0] add_ln37_fu_1388_p2;
wire  signed [5:0] tmp1_cast_cast_fu_1431_p3;
wire   [9:0] tmp1_cast_cast_cast_fu_1438_p1;
wire   [9:0] tmp_4_fu_1424_p3;
wire  signed [9:0] tmp2_cast_fu_1448_p1;
wire   [31:0] sum0_fu_1458_p17;
wire   [9:0] empty_10_fu_1442_p2;
wire   [10:0] add_ln1_fu_1497_p3;
wire   [10:0] add_ln2_fu_1516_p3;
wire   [31:0] tmp_3_fu_1535_p17;
wire   [31:0] sum0_1_fu_1574_p17;
wire   [31:0] tmp_5_fu_1613_p17;
wire   [10:0] add_ln40_1_fu_1652_p3;
wire   [31:0] tmp_8_fu_1671_p17;
wire   [10:0] add_ln43_1_fu_1710_p4;
wire   [31:0] tmp_s_fu_1729_p17;
wire   [31:0] tmp_1_fu_1768_p17;
wire   [10:0] add_ln3_fu_1807_p4;
wire   [31:0] add_ln48_2_fu_1826_p2;
wire   [10:0] add_ln41_1_fu_1835_p3;
wire   [31:0] tmp_9_fu_1853_p17;
wire   [31:0] add_ln48_8_fu_1892_p2;
wire   [31:0] add_ln48_fu_1901_p2;
wire   [31:0] add_ln48_1_fu_1905_p2;
wire   [31:0] add_ln48_6_fu_1915_p2;
wire   [31:0] add_ln48_7_fu_1919_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage0;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1328;
reg    ap_condition_1331;
reg    ap_condition_1336;
reg    ap_condition_1340;
reg    ap_condition_1343;
reg    ap_condition_1346;
reg    ap_condition_1350;
reg    ap_condition_1353;
reg    ap_condition_1357;
reg    ap_condition_1360;
reg    ap_condition_1364;
reg    ap_condition_1367;
reg    ap_condition_1371;
reg    ap_condition_1374;
reg    ap_condition_1378;
reg    ap_condition_1382;
reg    ap_condition_551;
wire   [2:0] grp_fu_1042_p1;
wire   [2:0] grp_fu_1042_p3;
wire   [2:0] grp_fu_1042_p5;
wire   [2:0] grp_fu_1042_p7;
wire  signed [2:0] grp_fu_1042_p9;
wire  signed [2:0] grp_fu_1042_p11;
wire  signed [2:0] grp_fu_1042_p13;
wire  signed [2:0] grp_fu_1042_p15;
wire  signed [2:0] grp_fu_1081_p1;
wire   [2:0] grp_fu_1081_p3;
wire   [2:0] grp_fu_1081_p5;
wire   [2:0] grp_fu_1081_p7;
wire   [2:0] grp_fu_1081_p9;
wire  signed [2:0] grp_fu_1081_p11;
wire  signed [2:0] grp_fu_1081_p13;
wire  signed [2:0] grp_fu_1081_p15;
wire   [2:0] sum0_fu_1458_p1;
wire   [2:0] sum0_fu_1458_p3;
wire   [2:0] sum0_fu_1458_p5;
wire   [2:0] sum0_fu_1458_p7;
wire  signed [2:0] sum0_fu_1458_p9;
wire  signed [2:0] sum0_fu_1458_p11;
wire  signed [2:0] sum0_fu_1458_p13;
wire  signed [2:0] sum0_fu_1458_p15;
wire   [2:0] tmp_3_fu_1535_p1;
wire   [2:0] tmp_3_fu_1535_p3;
wire   [2:0] tmp_3_fu_1535_p5;
wire   [2:0] tmp_3_fu_1535_p7;
wire  signed [2:0] tmp_3_fu_1535_p9;
wire  signed [2:0] tmp_3_fu_1535_p11;
wire  signed [2:0] tmp_3_fu_1535_p13;
wire  signed [2:0] tmp_3_fu_1535_p15;
wire  signed [2:0] sum0_1_fu_1574_p1;
wire   [2:0] sum0_1_fu_1574_p3;
wire   [2:0] sum0_1_fu_1574_p5;
wire   [2:0] sum0_1_fu_1574_p7;
wire   [2:0] sum0_1_fu_1574_p9;
wire  signed [2:0] sum0_1_fu_1574_p11;
wire  signed [2:0] sum0_1_fu_1574_p13;
wire  signed [2:0] sum0_1_fu_1574_p15;
wire   [2:0] tmp_5_fu_1613_p1;
wire   [2:0] tmp_5_fu_1613_p3;
wire   [2:0] tmp_5_fu_1613_p5;
wire  signed [2:0] tmp_5_fu_1613_p7;
wire  signed [2:0] tmp_5_fu_1613_p9;
wire  signed [2:0] tmp_5_fu_1613_p11;
wire  signed [2:0] tmp_5_fu_1613_p13;
wire   [2:0] tmp_5_fu_1613_p15;
wire  signed [2:0] tmp_8_fu_1671_p1;
wire   [2:0] tmp_8_fu_1671_p3;
wire   [2:0] tmp_8_fu_1671_p5;
wire   [2:0] tmp_8_fu_1671_p7;
wire   [2:0] tmp_8_fu_1671_p9;
wire  signed [2:0] tmp_8_fu_1671_p11;
wire  signed [2:0] tmp_8_fu_1671_p13;
wire  signed [2:0] tmp_8_fu_1671_p15;
wire  signed [2:0] tmp_s_fu_1729_p1;
wire  signed [2:0] tmp_s_fu_1729_p3;
wire   [2:0] tmp_s_fu_1729_p5;
wire   [2:0] tmp_s_fu_1729_p7;
wire   [2:0] tmp_s_fu_1729_p9;
wire   [2:0] tmp_s_fu_1729_p11;
wire  signed [2:0] tmp_s_fu_1729_p13;
wire  signed [2:0] tmp_s_fu_1729_p15;
wire   [2:0] tmp_1_fu_1768_p1;
wire   [2:0] tmp_1_fu_1768_p3;
wire   [2:0] tmp_1_fu_1768_p5;
wire   [2:0] tmp_1_fu_1768_p7;
wire  signed [2:0] tmp_1_fu_1768_p9;
wire  signed [2:0] tmp_1_fu_1768_p11;
wire  signed [2:0] tmp_1_fu_1768_p13;
wire  signed [2:0] tmp_1_fu_1768_p15;
wire  signed [2:0] tmp_9_fu_1853_p1;
wire   [2:0] tmp_9_fu_1853_p3;
wire   [2:0] tmp_9_fu_1853_p5;
wire   [2:0] tmp_9_fu_1853_p7;
wire   [2:0] tmp_9_fu_1853_p9;
wire  signed [2:0] tmp_9_fu_1853_p11;
wire  signed [2:0] tmp_9_fu_1853_p13;
wire  signed [2:0] tmp_9_fu_1853_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_122 = 4'd0;
#0 j_fu_126 = 5'd0;
#0 indvar_flatten_fu_130 = 8'd0;
#0 i_fu_134 = 5'd0;
#0 indvar_flatten14_fu_138 = 13'd0;
#0 ap_done_reg = 1'b0;
end
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U37(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1034_p0),.din1(grp_fu_1034_p1),.ce(1'b1),.dout(grp_fu_1034_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U38(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1038_p0),.din1(grp_fu_1038_p1),.ce(1'b1),.dout(grp_fu_1038_p2));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U39(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.din4(orig_4_q0),.din5(orig_5_q0),.din6(orig_6_q0),.din7(orig_7_q0),.def(grp_fu_1042_p17),.sel(grp_fu_1042_p18),.dout(grp_fu_1042_p19));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 32 ),.CASE1( 3'h0 ),.din1_WIDTH( 32 ),.CASE2( 3'h1 ),.din2_WIDTH( 32 ),.CASE3( 3'h2 ),.din3_WIDTH( 32 ),.CASE4( 3'h3 ),.din4_WIDTH( 32 ),.CASE5( 3'h4 ),.din5_WIDTH( 32 ),.CASE6( 3'h5 ),.din6_WIDTH( 32 ),.CASE7( 3'h6 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U40(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.din4(orig_4_q0),.din5(orig_5_q0),.din6(orig_6_q0),.din7(orig_7_q0),.def(grp_fu_1081_p17),.sel(grp_fu_1081_p18),.dout(grp_fu_1081_p19));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U41(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.din4(orig_4_q1),.din5(orig_5_q1),.din6(orig_6_q1),.din7(orig_7_q1),.def(sum0_fu_1458_p17),.sel(trunc_ln38_reg_2049),.dout(sum0_fu_1458_p19));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U42(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.din4(orig_4_q0),.din5(orig_5_q0),.din6(orig_6_q0),.din7(orig_7_q0),.def(tmp_3_fu_1535_p17),.sel(trunc_ln38_reg_2049),.dout(tmp_3_fu_1535_p19));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 32 ),.CASE1( 3'h0 ),.din1_WIDTH( 32 ),.CASE2( 3'h1 ),.din2_WIDTH( 32 ),.CASE3( 3'h2 ),.din3_WIDTH( 32 ),.CASE4( 3'h3 ),.din4_WIDTH( 32 ),.CASE5( 3'h4 ),.din5_WIDTH( 32 ),.CASE6( 3'h5 ),.din6_WIDTH( 32 ),.CASE7( 3'h6 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U43(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.din4(orig_4_q1),.din5(orig_5_q1),.din6(orig_6_q1),.din7(orig_7_q1),.def(sum0_1_fu_1574_p17),.sel(trunc_ln38_reg_2049),.dout(sum0_1_fu_1574_p19));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h3 ),.din2_WIDTH( 32 ),.CASE3( 3'h4 ),.din3_WIDTH( 32 ),.CASE4( 3'h5 ),.din4_WIDTH( 32 ),.CASE5( 3'h6 ),.din5_WIDTH( 32 ),.CASE6( 3'h7 ),.din6_WIDTH( 32 ),.CASE7( 3'h0 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U44(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.din4(orig_4_q1),.din5(orig_5_q1),.din6(orig_6_q1),.din7(orig_7_q1),.def(tmp_5_fu_1613_p17),.sel(trunc_ln38_reg_2049),.dout(tmp_5_fu_1613_p19));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 32 ),.CASE1( 3'h0 ),.din1_WIDTH( 32 ),.CASE2( 3'h1 ),.din2_WIDTH( 32 ),.CASE3( 3'h2 ),.din3_WIDTH( 32 ),.CASE4( 3'h3 ),.din4_WIDTH( 32 ),.CASE5( 3'h4 ),.din5_WIDTH( 32 ),.CASE6( 3'h5 ),.din6_WIDTH( 32 ),.CASE7( 3'h6 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U45(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.din4(orig_4_q0),.din5(orig_5_q0),.din6(orig_6_q0),.din7(orig_7_q0),.def(tmp_8_fu_1671_p17),.sel(trunc_ln38_reg_2049),.dout(tmp_8_fu_1671_p19));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 32 ),.CASE1( 3'h7 ),.din1_WIDTH( 32 ),.CASE2( 3'h0 ),.din2_WIDTH( 32 ),.CASE3( 3'h1 ),.din3_WIDTH( 32 ),.CASE4( 3'h2 ),.din4_WIDTH( 32 ),.CASE5( 3'h3 ),.din5_WIDTH( 32 ),.CASE6( 3'h4 ),.din6_WIDTH( 32 ),.CASE7( 3'h5 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U46(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.din4(orig_4_q1),.din5(orig_5_q1),.din6(orig_6_q1),.din7(orig_7_q1),.def(tmp_s_fu_1729_p17),.sel(trunc_ln38_reg_2049),.dout(tmp_s_fu_1729_p19));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U47(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.din4(orig_4_q1),.din5(orig_5_q1),.din6(orig_6_q1),.din7(orig_7_q1),.def(tmp_1_fu_1768_p17),.sel(trunc_ln38_reg_2049),.dout(tmp_1_fu_1768_p19));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 32 ),.CASE1( 3'h0 ),.din1_WIDTH( 32 ),.CASE2( 3'h1 ),.din2_WIDTH( 32 ),.CASE3( 3'h2 ),.din3_WIDTH( 32 ),.CASE4( 3'h3 ),.din4_WIDTH( 32 ),.CASE5( 3'h4 ),.din5_WIDTH( 32 ),.CASE6( 3'h5 ),.din6_WIDTH( 32 ),.CASE7( 3'h6 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U48(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.din4(orig_4_q1),.din5(orig_5_q1),.din6(orig_6_q1),.din7(orig_7_q1),.def(tmp_9_fu_1853_p17),.sel(trunc_ln38_reg_2049),.dout(tmp_9_fu_1853_p19));
stencil3d_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter2_stage0) & (ap_idle_pp0_0to1 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter2_stage0) & (ap_idle_pp0_0to1 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_134 <= 5'd1;
    end else if (((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_134 <= select_ln36_fu_1254_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten14_fu_138 <= 13'd0;
    end else if (((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten14_fu_138 <= add_ln36_reg_2009;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_fu_130 <= 8'd0;
    end else if (((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten_fu_130 <= select_ln37_1_fu_1393_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_126 <= 5'd1;
    end else if (((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_126 <= select_ln37_fu_1273_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_122 <= 4'd1;
    end else if (((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        k_fu_122 <= add_ln44_2_fu_1383_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln36_reg_2009 <= add_ln36_fu_1157_p2;
        add_ln48_3_reg_2532 <= add_ln48_3_fu_1830_p2;
        and_ln11_reg_2032 <= and_ln11_fu_1195_p2;
        icmp_ln36_reg_2005 <= icmp_ln36_fu_1151_p2;
        icmp_ln36_reg_2005_pp0_iter1_reg <= icmp_ln36_reg_2005;
        icmp_ln37_reg_2019 <= icmp_ln37_fu_1169_p2;
        indvar_flatten_load_reg_2000 <= ap_sig_allocacmp_indvar_flatten_load;
        indvars_iv_next79_dup_reg_2038 <= indvars_iv_next79_dup_fu_1201_p2;
        j_load_reg_2014 <= ap_sig_allocacmp_j_load;
        k_mid2_reg_2043 <= k_mid2_fu_1213_p3;
        select_ln11_reg_2026 <= select_ln11_fu_1175_p3;
        tmp_10_reg_2063 <= k_mid2_fu_1213_p3[32'd3];
        tmp_1_reg_2487 <= tmp_1_fu_1768_p19;
        tmp_9_reg_2582 <= tmp_9_fu_1853_p19;
        trunc_ln38_reg_2049 <= trunc_ln38_fu_1221_p1;
        trunc_ln38_reg_2049_pp0_iter1_reg <= trunc_ln38_reg_2049;
        trunc_ln38_reg_2049_pp0_iter2_reg <= trunc_ln38_reg_2049_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln48_10_reg_2617 <= add_ln48_10_fu_1924_p2;
        add_ln48_4_reg_2612 <= add_ln48_4_fu_1910_p2;
        empty_11_reg_2285 <= empty_11_fu_1452_p2;
        sum0_1_reg_2381 <= sum0_1_fu_1574_p19;
        sum0_reg_2290 <= sum0_fu_1458_p19;
        tmp_3_reg_2376 <= tmp_3_fu_1535_p19;
        tmp_5_reg_2387 <= tmp_5_fu_1613_p19;
        tmp_8_reg_2432 <= tmp_8_fu_1671_p19;
        tmp_s_reg_2477 <= tmp_s_fu_1729_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln48_9_reg_2602 <= add_ln48_9_fu_1896_p2;
        indvars_iv_next79_mid2_reg_2079 <= indvars_iv_next79_mid2_fu_1266_p3;
        mul_ln48_2_reg_2607_pp0_iter2_reg <= mul_ln48_2_reg_2607;
        mul_ln48_reg_2592_pp0_iter2_reg <= mul_ln48_reg_2592;
        select_ln36_reg_2072 <= select_ln36_fu_1254_p3;
        select_ln37_reg_2084 <= select_ln37_fu_1273_p3;
        tmp3_reg_2089 <= tmp3_fu_1278_p2;
        tmp_11_reg_2186 <= add_ln44_fu_1326_p2[32'd3];
        zext_ln39_reg_2094[10 : 0] <= zext_ln39_fu_1293_p1[10 : 0];
        zext_ln39_reg_2094_pp0_iter1_reg[10 : 0] <= zext_ln39_reg_2094[10 : 0];
        zext_ln39_reg_2094_pp0_iter2_reg[10 : 0] <= zext_ln39_reg_2094_pp0_iter1_reg[10 : 0];
        zext_ln44_reg_2193[10 : 0] <= zext_ln44_fu_1349_p1[10 : 0];
        zext_ln44_reg_2193_pp0_iter1_reg[10 : 0] <= zext_ln44_reg_2193[10 : 0];
        zext_ln44_reg_2193_pp0_iter2_reg[10 : 0] <= zext_ln44_reg_2193_pp0_iter1_reg[10 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_ln48_1_reg_2622 <= grp_fu_1034_p2;
        mul_ln48_3_reg_2627 <= grp_fu_1038_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln48_2_reg_2607 <= grp_fu_1038_p2;
        mul_ln48_reg_2592 <= grp_fu_1034_p2;
        tmp_2_reg_2587 <= grp_fu_1042_p19;
        tmp_7_reg_2597 <= grp_fu_1081_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_6_reg_2537 <= grp_fu_1081_p19;
        tmp_reg_2482 <= grp_fu_1042_p19;
    end
end
always @ (*) begin
    if (((icmp_ln36_reg_2005 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln36_reg_2005_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten14_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten14_load = indvar_flatten14_fu_138;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_130;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 5'd1;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_126;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_k_load = 4'd1;
    end else begin
        ap_sig_allocacmp_k_load = k_fu_122;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1034_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1034_p0 = C_load;
    end else begin
        grp_fu_1034_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1034_p1 = add_ln48_4_reg_2612;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1034_p1 = sum0_reg_2290;
    end else begin
        grp_fu_1034_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1038_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1038_p0 = C_load;
    end else begin
        grp_fu_1038_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1038_p1 = add_ln48_10_reg_2617;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1038_p1 = sum0_1_reg_2381;
    end else begin
        grp_fu_1038_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1042_p18 = trunc_ln38_reg_2049_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1042_p18 = trunc_ln38_reg_2049;
        end else begin
            grp_fu_1042_p18 = 'bx;
        end
    end else begin
        grp_fu_1042_p18 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1081_p18 = trunc_ln38_reg_2049_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1081_p18 = trunc_ln38_reg_2049;
        end else begin
            grp_fu_1081_p18 = 'bx;
        end
    end else begin
        grp_fu_1081_p18 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2049 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address0_local = zext_ln41_1_fu_1841_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2049 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address0_local = zext_ln42_fu_1814_p1;
    end else if (((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_0_address0_local = zext_ln40_1_fu_1659_p1;
    end else if (((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_0_address0_local = zext_ln40_fu_1504_p1;
    end else if (((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_address0_local = zext_ln42_1_fu_1371_p1;
    end else if (((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_address0_local = zext_ln43_fu_1314_p1;
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1340)) begin
            orig_0_address1_local = zext_ln43_1_fu_1717_p1;
        end else if ((1'b1 == ap_condition_1336)) begin
            orig_0_address1_local = zext_ln41_fu_1523_p1;
        end else if ((1'b1 == ap_condition_1331)) begin
            orig_0_address1_local = zext_ln44_fu_1349_p1;
        end else if ((1'b1 == ap_condition_1328)) begin
            orig_0_address1_local = zext_ln39_fu_1293_p1;
        end else begin
            orig_0_address1_local = 'bx;
        end
    end else begin
        orig_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2049 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2049 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd7)) | ((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd6)))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd1)) | ((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd0)))))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2049 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address0_local = zext_ln41_1_fu_1841_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2049 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address0_local = zext_ln42_fu_1814_p1;
    end else if (((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_1_address0_local = zext_ln40_1_fu_1659_p1;
    end else if (((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_1_address0_local = zext_ln40_fu_1504_p1;
    end else if (((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_address0_local = zext_ln42_1_fu_1371_p1;
    end else if (((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_address0_local = zext_ln43_fu_1314_p1;
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1336)) begin
            orig_1_address1_local = zext_ln43_1_fu_1717_p1;
        end else if ((1'b1 == ap_condition_1350)) begin
            orig_1_address1_local = zext_ln41_fu_1523_p1;
        end else if ((1'b1 == ap_condition_1346)) begin
            orig_1_address1_local = zext_ln44_fu_1349_p1;
        end else if ((1'b1 == ap_condition_1343)) begin
            orig_1_address1_local = zext_ln39_fu_1293_p1;
        end else begin
            orig_1_address1_local = 'bx;
        end
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2049 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2049 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd7)) | ((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd0)))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd2)) | ((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd1)))))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2049 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_2_address0_local = zext_ln41_1_fu_1841_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2049 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_2_address0_local = zext_ln42_fu_1814_p1;
    end else if (((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_2_address0_local = zext_ln40_1_fu_1659_p1;
    end else if (((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_2_address0_local = zext_ln40_fu_1504_p1;
    end else if (((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_2_address0_local = zext_ln42_1_fu_1371_p1;
    end else if (((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_2_address0_local = zext_ln43_fu_1314_p1;
    end else begin
        orig_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1350)) begin
            orig_2_address1_local = zext_ln43_1_fu_1717_p1;
        end else if ((1'b1 == ap_condition_1357)) begin
            orig_2_address1_local = zext_ln41_fu_1523_p1;
        end else if ((1'b1 == ap_condition_1328)) begin
            orig_2_address1_local = zext_ln44_fu_1349_p1;
        end else if ((1'b1 == ap_condition_1353)) begin
            orig_2_address1_local = zext_ln39_fu_1293_p1;
        end else begin
            orig_2_address1_local = 'bx;
        end
    end else begin
        orig_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2049 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2049 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_2_ce0_local = 1'b1;
    end else begin
        orig_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd3)) | ((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd2)))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd1)) | ((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd0)))))) begin
        orig_2_ce1_local = 1'b1;
    end else begin
        orig_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2049 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_3_address0_local = zext_ln41_1_fu_1841_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2049 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_3_address0_local = zext_ln42_fu_1814_p1;
    end else if (((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_3_address0_local = zext_ln40_1_fu_1659_p1;
    end else if (((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_3_address0_local = zext_ln40_fu_1504_p1;
    end else if (((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_3_address0_local = zext_ln42_1_fu_1371_p1;
    end else if (((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_3_address0_local = zext_ln43_fu_1314_p1;
    end else begin
        orig_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1357)) begin
            orig_3_address1_local = zext_ln43_1_fu_1717_p1;
        end else if ((1'b1 == ap_condition_1364)) begin
            orig_3_address1_local = zext_ln41_fu_1523_p1;
        end else if ((1'b1 == ap_condition_1343)) begin
            orig_3_address1_local = zext_ln44_fu_1349_p1;
        end else if ((1'b1 == ap_condition_1360)) begin
            orig_3_address1_local = zext_ln39_fu_1293_p1;
        end else begin
            orig_3_address1_local = 'bx;
        end
    end else begin
        orig_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2049 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2049 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_3_ce0_local = 1'b1;
    end else begin
        orig_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd4)) | ((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd3)))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd2)) | ((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd1)))))) begin
        orig_3_ce1_local = 1'b1;
    end else begin
        orig_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2049 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_4_address0_local = zext_ln41_1_fu_1841_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2049 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_4_address0_local = zext_ln42_fu_1814_p1;
    end else if (((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_4_address0_local = zext_ln40_1_fu_1659_p1;
    end else if (((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_4_address0_local = zext_ln40_fu_1504_p1;
    end else if (((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_4_address0_local = zext_ln42_1_fu_1371_p1;
    end else if (((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_4_address0_local = zext_ln43_fu_1314_p1;
    end else begin
        orig_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1364)) begin
            orig_4_address1_local = zext_ln43_1_fu_1717_p1;
        end else if ((1'b1 == ap_condition_1371)) begin
            orig_4_address1_local = zext_ln41_fu_1523_p1;
        end else if ((1'b1 == ap_condition_1353)) begin
            orig_4_address1_local = zext_ln44_fu_1349_p1;
        end else if ((1'b1 == ap_condition_1367)) begin
            orig_4_address1_local = zext_ln39_fu_1293_p1;
        end else begin
            orig_4_address1_local = 'bx;
        end
    end else begin
        orig_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2049 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2049 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_4_ce0_local = 1'b1;
    end else begin
        orig_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd5)) | ((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd4)))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd3)) | ((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd2)))))) begin
        orig_4_ce1_local = 1'b1;
    end else begin
        orig_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2049 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_5_address0_local = zext_ln41_1_fu_1841_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2049 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_5_address0_local = zext_ln42_fu_1814_p1;
    end else if (((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_5_address0_local = zext_ln40_1_fu_1659_p1;
    end else if (((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_5_address0_local = zext_ln40_fu_1504_p1;
    end else if (((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_5_address0_local = zext_ln42_1_fu_1371_p1;
    end else if (((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_5_address0_local = zext_ln43_fu_1314_p1;
    end else begin
        orig_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1371)) begin
            orig_5_address1_local = zext_ln43_1_fu_1717_p1;
        end else if ((1'b1 == ap_condition_1378)) begin
            orig_5_address1_local = zext_ln41_fu_1523_p1;
        end else if ((1'b1 == ap_condition_1360)) begin
            orig_5_address1_local = zext_ln44_fu_1349_p1;
        end else if ((1'b1 == ap_condition_1374)) begin
            orig_5_address1_local = zext_ln39_fu_1293_p1;
        end else begin
            orig_5_address1_local = 'bx;
        end
    end else begin
        orig_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2049 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2049 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_5_ce0_local = 1'b1;
    end else begin
        orig_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd6)) | ((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd5)))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd4)) | ((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd3)))))) begin
        orig_5_ce1_local = 1'b1;
    end else begin
        orig_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2049 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_6_address0_local = zext_ln41_1_fu_1841_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2049 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_6_address0_local = zext_ln42_fu_1814_p1;
    end else if (((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_6_address0_local = zext_ln40_1_fu_1659_p1;
    end else if (((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_6_address0_local = zext_ln40_fu_1504_p1;
    end else if (((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_6_address0_local = zext_ln42_1_fu_1371_p1;
    end else if (((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_6_address0_local = zext_ln43_fu_1314_p1;
    end else begin
        orig_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1378)) begin
            orig_6_address1_local = zext_ln43_1_fu_1717_p1;
        end else if ((1'b1 == ap_condition_1382)) begin
            orig_6_address1_local = zext_ln41_fu_1523_p1;
        end else if ((1'b1 == ap_condition_1367)) begin
            orig_6_address1_local = zext_ln44_fu_1349_p1;
        end else if ((1'b1 == ap_condition_1331)) begin
            orig_6_address1_local = zext_ln39_fu_1293_p1;
        end else begin
            orig_6_address1_local = 'bx;
        end
    end else begin
        orig_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2049 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2049 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_6_ce0_local = 1'b1;
    end else begin
        orig_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd5)) | ((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd4)))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd7)) | ((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd6)))))) begin
        orig_6_ce1_local = 1'b1;
    end else begin
        orig_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2049 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_7_address0_local = zext_ln41_1_fu_1841_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2049 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_7_address0_local = zext_ln42_fu_1814_p1;
    end else if (((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_7_address0_local = zext_ln40_1_fu_1659_p1;
    end else if (((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_7_address0_local = zext_ln40_fu_1504_p1;
    end else if (((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_7_address0_local = zext_ln42_1_fu_1371_p1;
    end else if (((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_7_address0_local = zext_ln43_fu_1314_p1;
    end else begin
        orig_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1382)) begin
            orig_7_address1_local = zext_ln43_1_fu_1717_p1;
        end else if ((1'b1 == ap_condition_1340)) begin
            orig_7_address1_local = zext_ln41_fu_1523_p1;
        end else if ((1'b1 == ap_condition_1374)) begin
            orig_7_address1_local = zext_ln44_fu_1349_p1;
        end else if ((1'b1 == ap_condition_1346)) begin
            orig_7_address1_local = zext_ln39_fu_1293_p1;
        end else begin
            orig_7_address1_local = 'bx;
        end
    end else begin
        orig_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2049 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2049 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_7_ce0_local = 1'b1;
    end else begin
        orig_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2049 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd6)) | ((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd5)))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd7)) | ((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd0)))))) begin
        orig_7_ce1_local = 1'b1;
    end else begin
        orig_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_551)) begin
        if ((trunc_ln38_reg_2049_pp0_iter2_reg == 3'd7)) begin
            sol_0_address0_local = zext_ln44_reg_2193_pp0_iter2_reg;
        end else if ((trunc_ln38_reg_2049_pp0_iter2_reg == 3'd0)) begin
            sol_0_address0_local = zext_ln39_reg_2094_pp0_iter2_reg;
        end else begin
            sol_0_address0_local = 'bx;
        end
    end else begin
        sol_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2049_pp0_iter2_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2049_pp0_iter2_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        sol_0_ce0_local = 1'b1;
    end else begin
        sol_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_551)) begin
        if ((trunc_ln38_reg_2049_pp0_iter2_reg == 3'd7)) begin
            sol_0_d0_local = add_ln48_11_fu_1941_p2;
        end else if ((trunc_ln38_reg_2049_pp0_iter2_reg == 3'd0)) begin
            sol_0_d0_local = add_ln48_5_fu_1929_p2;
        end else begin
            sol_0_d0_local = 'bx;
        end
    end else begin
        sol_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2049_pp0_iter2_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2049_pp0_iter2_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        sol_0_we0_local = 1'b1;
    end else begin
        sol_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_551)) begin
        if ((trunc_ln38_reg_2049_pp0_iter2_reg == 3'd0)) begin
            sol_1_address0_local = zext_ln44_reg_2193_pp0_iter2_reg;
        end else if ((trunc_ln38_reg_2049_pp0_iter2_reg == 3'd1)) begin
            sol_1_address0_local = zext_ln39_reg_2094_pp0_iter2_reg;
        end else begin
            sol_1_address0_local = 'bx;
        end
    end else begin
        sol_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2049_pp0_iter2_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2049_pp0_iter2_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        sol_1_ce0_local = 1'b1;
    end else begin
        sol_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_551)) begin
        if ((trunc_ln38_reg_2049_pp0_iter2_reg == 3'd0)) begin
            sol_1_d0_local = add_ln48_11_fu_1941_p2;
        end else if ((trunc_ln38_reg_2049_pp0_iter2_reg == 3'd1)) begin
            sol_1_d0_local = add_ln48_5_fu_1929_p2;
        end else begin
            sol_1_d0_local = 'bx;
        end
    end else begin
        sol_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2049_pp0_iter2_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2049_pp0_iter2_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_551)) begin
        if ((trunc_ln38_reg_2049_pp0_iter2_reg == 3'd1)) begin
            sol_2_address0_local = zext_ln44_reg_2193_pp0_iter2_reg;
        end else if ((trunc_ln38_reg_2049_pp0_iter2_reg == 3'd2)) begin
            sol_2_address0_local = zext_ln39_reg_2094_pp0_iter2_reg;
        end else begin
            sol_2_address0_local = 'bx;
        end
    end else begin
        sol_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2049_pp0_iter2_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2049_pp0_iter2_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        sol_2_ce0_local = 1'b1;
    end else begin
        sol_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_551)) begin
        if ((trunc_ln38_reg_2049_pp0_iter2_reg == 3'd1)) begin
            sol_2_d0_local = add_ln48_11_fu_1941_p2;
        end else if ((trunc_ln38_reg_2049_pp0_iter2_reg == 3'd2)) begin
            sol_2_d0_local = add_ln48_5_fu_1929_p2;
        end else begin
            sol_2_d0_local = 'bx;
        end
    end else begin
        sol_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2049_pp0_iter2_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2049_pp0_iter2_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        sol_2_we0_local = 1'b1;
    end else begin
        sol_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_551)) begin
        if ((trunc_ln38_reg_2049_pp0_iter2_reg == 3'd2)) begin
            sol_3_address0_local = zext_ln44_reg_2193_pp0_iter2_reg;
        end else if ((trunc_ln38_reg_2049_pp0_iter2_reg == 3'd3)) begin
            sol_3_address0_local = zext_ln39_reg_2094_pp0_iter2_reg;
        end else begin
            sol_3_address0_local = 'bx;
        end
    end else begin
        sol_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2049_pp0_iter2_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2049_pp0_iter2_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        sol_3_ce0_local = 1'b1;
    end else begin
        sol_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_551)) begin
        if ((trunc_ln38_reg_2049_pp0_iter2_reg == 3'd2)) begin
            sol_3_d0_local = add_ln48_11_fu_1941_p2;
        end else if ((trunc_ln38_reg_2049_pp0_iter2_reg == 3'd3)) begin
            sol_3_d0_local = add_ln48_5_fu_1929_p2;
        end else begin
            sol_3_d0_local = 'bx;
        end
    end else begin
        sol_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2049_pp0_iter2_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2049_pp0_iter2_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        sol_3_we0_local = 1'b1;
    end else begin
        sol_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_551)) begin
        if ((trunc_ln38_reg_2049_pp0_iter2_reg == 3'd3)) begin
            sol_4_address0_local = zext_ln44_reg_2193_pp0_iter2_reg;
        end else if ((trunc_ln38_reg_2049_pp0_iter2_reg == 3'd4)) begin
            sol_4_address0_local = zext_ln39_reg_2094_pp0_iter2_reg;
        end else begin
            sol_4_address0_local = 'bx;
        end
    end else begin
        sol_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2049_pp0_iter2_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2049_pp0_iter2_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        sol_4_ce0_local = 1'b1;
    end else begin
        sol_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_551)) begin
        if ((trunc_ln38_reg_2049_pp0_iter2_reg == 3'd3)) begin
            sol_4_d0_local = add_ln48_11_fu_1941_p2;
        end else if ((trunc_ln38_reg_2049_pp0_iter2_reg == 3'd4)) begin
            sol_4_d0_local = add_ln48_5_fu_1929_p2;
        end else begin
            sol_4_d0_local = 'bx;
        end
    end else begin
        sol_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2049_pp0_iter2_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2049_pp0_iter2_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        sol_4_we0_local = 1'b1;
    end else begin
        sol_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_551)) begin
        if ((trunc_ln38_reg_2049_pp0_iter2_reg == 3'd4)) begin
            sol_5_address0_local = zext_ln44_reg_2193_pp0_iter2_reg;
        end else if ((trunc_ln38_reg_2049_pp0_iter2_reg == 3'd5)) begin
            sol_5_address0_local = zext_ln39_reg_2094_pp0_iter2_reg;
        end else begin
            sol_5_address0_local = 'bx;
        end
    end else begin
        sol_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2049_pp0_iter2_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2049_pp0_iter2_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        sol_5_ce0_local = 1'b1;
    end else begin
        sol_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_551)) begin
        if ((trunc_ln38_reg_2049_pp0_iter2_reg == 3'd4)) begin
            sol_5_d0_local = add_ln48_11_fu_1941_p2;
        end else if ((trunc_ln38_reg_2049_pp0_iter2_reg == 3'd5)) begin
            sol_5_d0_local = add_ln48_5_fu_1929_p2;
        end else begin
            sol_5_d0_local = 'bx;
        end
    end else begin
        sol_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2049_pp0_iter2_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2049_pp0_iter2_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        sol_5_we0_local = 1'b1;
    end else begin
        sol_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_551)) begin
        if ((trunc_ln38_reg_2049_pp0_iter2_reg == 3'd5)) begin
            sol_6_address0_local = zext_ln44_reg_2193_pp0_iter2_reg;
        end else if ((trunc_ln38_reg_2049_pp0_iter2_reg == 3'd6)) begin
            sol_6_address0_local = zext_ln39_reg_2094_pp0_iter2_reg;
        end else begin
            sol_6_address0_local = 'bx;
        end
    end else begin
        sol_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2049_pp0_iter2_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2049_pp0_iter2_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        sol_6_ce0_local = 1'b1;
    end else begin
        sol_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_551)) begin
        if ((trunc_ln38_reg_2049_pp0_iter2_reg == 3'd5)) begin
            sol_6_d0_local = add_ln48_11_fu_1941_p2;
        end else if ((trunc_ln38_reg_2049_pp0_iter2_reg == 3'd6)) begin
            sol_6_d0_local = add_ln48_5_fu_1929_p2;
        end else begin
            sol_6_d0_local = 'bx;
        end
    end else begin
        sol_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2049_pp0_iter2_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2049_pp0_iter2_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        sol_6_we0_local = 1'b1;
    end else begin
        sol_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_551)) begin
        if ((trunc_ln38_reg_2049_pp0_iter2_reg == 3'd7)) begin
            sol_7_address0_local = zext_ln39_reg_2094_pp0_iter2_reg;
        end else if ((trunc_ln38_reg_2049_pp0_iter2_reg == 3'd6)) begin
            sol_7_address0_local = zext_ln44_reg_2193_pp0_iter2_reg;
        end else begin
            sol_7_address0_local = 'bx;
        end
    end else begin
        sol_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2049_pp0_iter2_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2049_pp0_iter2_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        sol_7_ce0_local = 1'b1;
    end else begin
        sol_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_551)) begin
        if ((trunc_ln38_reg_2049_pp0_iter2_reg == 3'd7)) begin
            sol_7_d0_local = add_ln48_5_fu_1929_p2;
        end else if ((trunc_ln38_reg_2049_pp0_iter2_reg == 3'd6)) begin
            sol_7_d0_local = add_ln48_11_fu_1941_p2;
        end else begin
            sol_7_d0_local = 'bx;
        end
    end else begin
        sol_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2049_pp0_iter2_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2049_pp0_iter2_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        sol_7_we0_local = 1'b1;
    end else begin
        sol_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter2_stage0) & (ap_idle_pp0_0to1 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln1_fu_1497_p3 = {{empty_10_fu_1442_p2}, {tmp_10_reg_2063}};
assign add_ln2_fu_1516_p3 = {{empty_11_fu_1452_p2}, {tmp_10_reg_2063}};
assign add_ln36_fu_1157_p2 = (ap_sig_allocacmp_indvar_flatten14_load + 13'd1);
assign add_ln37_fu_1388_p2 = (indvar_flatten_load_reg_2000 + 8'd1);
assign add_ln3_fu_1807_p4 = {{{select_ln36_reg_2072}, {indvars_iv_next79_mid2_reg_2079}}, {tmp_10_reg_2063}};
assign add_ln40_1_fu_1652_p3 = {{empty_10_fu_1442_p2}, {tmp_11_reg_2186}};
assign add_ln41_1_fu_1835_p3 = {{empty_11_reg_2285}, {tmp_11_reg_2186}};
assign add_ln42_1_fu_1361_p4 = {{{select_ln36_fu_1254_p3}, {indvars_iv_next79_mid2_fu_1266_p3}}, {tmp_11_fu_1331_p3}};
assign add_ln43_1_fu_1710_p4 = {{{select_ln36_reg_2072}, {tmp3_reg_2089}}, {tmp_11_reg_2186}};
assign add_ln44_1_fu_1339_p4 = {{{select_ln36_fu_1254_p3}, {select_ln37_fu_1273_p3}}, {tmp_11_fu_1331_p3}};
assign add_ln44_2_fu_1383_p2 = (k_mid2_reg_2043 + 4'd2);
assign add_ln44_fu_1326_p2 = (k_mid2_reg_2043 + 4'd1);
assign add_ln48_10_fu_1924_p2 = (add_ln48_9_reg_2602 + add_ln48_7_fu_1919_p2);
assign add_ln48_11_fu_1941_p2 = (mul_ln48_3_reg_2627 + mul_ln48_2_reg_2607_pp0_iter2_reg);
assign add_ln48_1_fu_1905_p2 = (add_ln48_fu_1901_p2 + tmp_1_reg_2487);
assign add_ln48_2_fu_1826_p2 = ($signed(sum0_1_reg_2381) + $signed(tmp_5_reg_2387));
assign add_ln48_3_fu_1830_p2 = (add_ln48_2_fu_1826_p2 + tmp_3_reg_2376);
assign add_ln48_4_fu_1910_p2 = (add_ln48_3_reg_2532 + add_ln48_1_fu_1905_p2);
assign add_ln48_5_fu_1929_p2 = (mul_ln48_1_reg_2622 + mul_ln48_reg_2592_pp0_iter2_reg);
assign add_ln48_6_fu_1915_p2 = ($signed(sum0_reg_2290) + $signed(tmp_7_reg_2597));
assign add_ln48_7_fu_1919_p2 = (add_ln48_6_fu_1915_p2 + tmp_6_reg_2537);
assign add_ln48_8_fu_1892_p2 = (tmp_9_reg_2582 + tmp_s_reg_2477);
assign add_ln48_9_fu_1896_p2 = (add_ln48_8_fu_1892_p2 + tmp_8_reg_2432);
assign add_ln48_fu_1901_p2 = (tmp_reg_2482 + tmp_2_reg_2587);
assign add_ln4_fu_1305_p4 = {{{select_ln36_fu_1254_p3}, {tmp3_fu_1278_p2}}, {tmp_10_reg_2063}};
assign add_ln_fu_1284_p4 = {{{select_ln36_fu_1254_p3}, {select_ln37_fu_1273_p3}}, {tmp_10_reg_2063}};
assign and_ln11_fu_1195_p2 = (xor_ln11_fu_1183_p2 & icmp_ln38_fu_1189_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1328 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd1)) | ((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd0))));
end
always @ (*) begin
    ap_condition_1331 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd7)) | ((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd6))));
end
always @ (*) begin
    ap_condition_1336 = ((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln38_reg_2049 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1340 = ((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln38_reg_2049 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1343 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd2)) | ((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd1))));
end
always @ (*) begin
    ap_condition_1346 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd7)) | ((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd0))));
end
always @ (*) begin
    ap_condition_1350 = ((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln38_reg_2049 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1353 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd3)) | ((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd2))));
end
always @ (*) begin
    ap_condition_1357 = ((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln38_reg_2049 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1360 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd4)) | ((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd3))));
end
always @ (*) begin
    ap_condition_1364 = ((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln38_reg_2049 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1367 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd5)) | ((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd4))));
end
always @ (*) begin
    ap_condition_1371 = ((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln38_reg_2049 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1374 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd6)) | ((icmp_ln36_reg_2005 == 1'd0) & (trunc_ln38_reg_2049 == 3'd5))));
end
always @ (*) begin
    ap_condition_1378 = ((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln38_reg_2049 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1382 = ((icmp_ln36_reg_2005 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln38_reg_2049 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_551 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign empty_10_fu_1442_p2 = (tmp1_cast_cast_cast_fu_1438_p1 + tmp_4_fu_1424_p3);
assign empty_11_fu_1452_p2 = ($signed(tmp2_cast_fu_1448_p1) + $signed(tmp_4_fu_1424_p3));
assign empty_fu_1207_p2 = (icmp_ln37_fu_1169_p2 | and_ln11_fu_1195_p2);
assign grp_fu_1042_p17 = 'bx;
assign grp_fu_1081_p17 = 'bx;
assign icmp_ln36_fu_1151_p2 = ((ap_sig_allocacmp_indvar_flatten14_load == 13'd6300) ? 1'b1 : 1'b0);
assign icmp_ln37_fu_1169_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln38_fu_1189_p2 = ((ap_sig_allocacmp_k_load == 4'd15) ? 1'b1 : 1'b0);
assign indvars_iv_next7924_fu_1236_p2 = (j_load_reg_2014 + 5'd1);
assign indvars_iv_next79_dup_fu_1201_p2 = (select_ln11_fu_1175_p3 + 5'd1);
assign indvars_iv_next79_mid1_fu_1261_p2 = (select_ln11_reg_2026 + 5'd2);
assign indvars_iv_next79_mid2_fu_1266_p3 = ((and_ln11_reg_2032[0:0] == 1'b1) ? indvars_iv_next79_mid1_fu_1261_p2 : select_ln11_1_fu_1241_p3);
assign indvars_iv_next9217_fu_1248_p2 = (i_fu_134 + 5'd1);
assign k_mid2_fu_1213_p3 = ((empty_fu_1207_p2[0:0] == 1'b1) ? 4'd1 : ap_sig_allocacmp_k_load);
assign orig_0_address0 = orig_0_address0_local;
assign orig_0_address1 = orig_0_address1_local;
assign orig_0_ce0 = orig_0_ce0_local;
assign orig_0_ce1 = orig_0_ce1_local;
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
assign select_ln11_1_fu_1241_p3 = ((icmp_ln37_reg_2019[0:0] == 1'b1) ? 5'd2 : indvars_iv_next7924_fu_1236_p2);
assign select_ln11_fu_1175_p3 = ((icmp_ln37_fu_1169_p2[0:0] == 1'b1) ? 5'd1 : ap_sig_allocacmp_j_load);
assign select_ln36_fu_1254_p3 = ((icmp_ln37_reg_2019[0:0] == 1'b1) ? indvars_iv_next9217_fu_1248_p2 : i_fu_134);
assign select_ln37_1_fu_1393_p3 = ((icmp_ln37_reg_2019[0:0] == 1'b1) ? 8'd1 : add_ln37_fu_1388_p2);
assign select_ln37_fu_1273_p3 = ((and_ln11_reg_2032[0:0] == 1'b1) ? indvars_iv_next79_dup_reg_2038 : select_ln11_reg_2026);
assign sol_0_address0 = sol_0_address0_local;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_d0 = sol_0_d0_local;
assign sol_0_we0 = sol_0_we0_local;
assign sol_1_address0 = sol_1_address0_local;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_d0 = sol_1_d0_local;
assign sol_1_we0 = sol_1_we0_local;
assign sol_2_address0 = sol_2_address0_local;
assign sol_2_ce0 = sol_2_ce0_local;
assign sol_2_d0 = sol_2_d0_local;
assign sol_2_we0 = sol_2_we0_local;
assign sol_3_address0 = sol_3_address0_local;
assign sol_3_ce0 = sol_3_ce0_local;
assign sol_3_d0 = sol_3_d0_local;
assign sol_3_we0 = sol_3_we0_local;
assign sol_4_address0 = sol_4_address0_local;
assign sol_4_ce0 = sol_4_ce0_local;
assign sol_4_d0 = sol_4_d0_local;
assign sol_4_we0 = sol_4_we0_local;
assign sol_5_address0 = sol_5_address0_local;
assign sol_5_ce0 = sol_5_ce0_local;
assign sol_5_d0 = sol_5_d0_local;
assign sol_5_we0 = sol_5_we0_local;
assign sol_6_address0 = sol_6_address0_local;
assign sol_6_ce0 = sol_6_ce0_local;
assign sol_6_d0 = sol_6_d0_local;
assign sol_6_we0 = sol_6_we0_local;
assign sol_7_address0 = sol_7_address0_local;
assign sol_7_ce0 = sol_7_ce0_local;
assign sol_7_d0 = sol_7_d0_local;
assign sol_7_we0 = sol_7_we0_local;
assign sum0_1_fu_1574_p17 = 'bx;
assign sum0_fu_1458_p17 = 'bx;
assign tmp1_cast_cast_cast_fu_1438_p1 = $unsigned(tmp1_cast_cast_fu_1431_p3);
assign tmp1_cast_cast_fu_1431_p3 = {{1'd1}, {select_ln37_reg_2084}};
assign tmp2_cast_fu_1448_p1 = tmp1_cast_cast_fu_1431_p3;
assign tmp3_fu_1278_p2 = ($signed(select_ln37_fu_1273_p3) + $signed(5'd31));
assign tmp_11_fu_1331_p3 = add_ln44_fu_1326_p2[32'd3];
assign tmp_1_fu_1768_p17 = 'bx;
assign tmp_3_fu_1535_p17 = 'bx;
assign tmp_4_fu_1424_p3 = {{select_ln36_reg_2072}, {5'd0}};
assign tmp_5_fu_1613_p17 = 'bx;
assign tmp_8_fu_1671_p17 = 'bx;
assign tmp_9_fu_1853_p17 = 'bx;
assign tmp_s_fu_1729_p17 = 'bx;
assign trunc_ln38_fu_1221_p1 = k_mid2_fu_1213_p3[2:0];
assign xor_ln11_fu_1183_p2 = (icmp_ln37_fu_1169_p2 ^ 1'd1);
assign zext_ln39_fu_1293_p1 = add_ln_fu_1284_p4;
assign zext_ln40_1_fu_1659_p1 = add_ln40_1_fu_1652_p3;
assign zext_ln40_fu_1504_p1 = add_ln1_fu_1497_p3;
assign zext_ln41_1_fu_1841_p1 = add_ln41_1_fu_1835_p3;
assign zext_ln41_fu_1523_p1 = add_ln2_fu_1516_p3;
assign zext_ln42_1_fu_1371_p1 = add_ln42_1_fu_1361_p4;
assign zext_ln42_fu_1814_p1 = add_ln3_fu_1807_p4;
assign zext_ln43_1_fu_1717_p1 = add_ln43_1_fu_1710_p4;
assign zext_ln43_fu_1314_p1 = add_ln4_fu_1305_p4;
assign zext_ln44_fu_1349_p1 = add_ln44_1_fu_1339_p4;
always @ (posedge ap_clk) begin
    zext_ln39_reg_2094[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln39_reg_2094_pp0_iter1_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln39_reg_2094_pp0_iter2_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln44_reg_2193[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln44_reg_2193_pp0_iter1_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln44_reg_2193_pp0_iter2_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
end
endmodule 
