module stencil3d_stencil3d_Pipeline_loop_height_loop_col_loop_row (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_7_address0,sol_7_ce0,sol_7_we0,sol_7_d0,sol_6_address0,sol_6_ce0,sol_6_we0,sol_6_d0,sol_5_address0,sol_5_ce0,sol_5_we0,sol_5_d0,sol_4_address0,sol_4_ce0,sol_4_we0,sol_4_d0,sol_3_address0,sol_3_ce0,sol_3_we0,sol_3_d0,sol_2_address0,sol_2_ce0,sol_2_we0,sol_2_d0,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,orig_2_address0,orig_2_ce0,orig_2_q0,orig_2_address1,orig_2_ce1,orig_2_q1,orig_3_address0,orig_3_ce0,orig_3_q0,orig_3_address1,orig_3_ce1,orig_3_q1,orig_4_address0,orig_4_ce0,orig_4_q0,orig_4_address1,orig_4_ce1,orig_4_q1,orig_5_address0,orig_5_ce0,orig_5_q0,orig_5_address1,orig_5_ce1,orig_5_q1,orig_6_address0,orig_6_ce0,orig_6_q0,orig_6_address1,orig_6_ce1,orig_6_q1,orig_7_address0,orig_7_ce0,orig_7_q0,orig_7_address1,orig_7_ce1,orig_7_q1,C_load,C_load_1); 
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
output  [10:0] sol_0_address0;
output   sol_0_ce0;
output   sol_0_we0;
output  [31:0] sol_0_d0;
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
wire   [0:0] icmp_ln36_fu_1804_p2;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln3725_reg_1044;
wire    ap_block_pp0_stage0_11001;
wire   [4:0] select_ln11_fu_1192_p3;
reg   [4:0] select_ln11_reg_2076;
wire   [0:0] and_ln11_fu_1206_p2;
reg   [0:0] and_ln11_reg_2082;
wire   [4:0] indvars_iv_next320_dup_fu_1212_p2;
reg   [4:0] indvars_iv_next320_dup_reg_2088;
wire   [3:0] k_mid2_fu_1224_p3;
reg   [3:0] k_mid2_reg_2093;
wire   [2:0] trunc_ln38_fu_1232_p1;
reg   [2:0] trunc_ln38_reg_2099;
reg   [2:0] trunc_ln38_reg_2099_pp0_iter1_reg;
reg   [2:0] trunc_ln38_reg_2099_pp0_iter2_reg;
reg   [0:0] tmp_10_reg_2113;
wire   [4:0] i_fu_1261_p3;
reg   [4:0] i_reg_2122;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [4:0] indvars_iv_next320_mid2_fu_1274_p3;
reg   [4:0] indvars_iv_next320_mid2_reg_2129;
wire   [4:0] j_fu_1281_p3;
reg   [4:0] j_reg_2134;
wire   [4:0] tmp3_fu_1286_p2;
reg   [4:0] tmp3_reg_2140;
wire   [63:0] zext_ln39_fu_1301_p1;
reg   [63:0] zext_ln39_reg_2145;
reg   [63:0] zext_ln39_reg_2145_pp0_iter1_reg;
reg   [63:0] zext_ln39_reg_2145_pp0_iter2_reg;
wire   [0:0] tmp_11_fu_1339_p3;
reg   [0:0] tmp_11_reg_2237;
wire   [63:0] zext_ln44_fu_1357_p1;
reg   [63:0] zext_ln44_reg_2244;
reg   [63:0] zext_ln44_reg_2244_pp0_iter1_reg;
reg   [63:0] zext_ln44_reg_2244_pp0_iter2_reg;
wire   [0:0] icmp_ln38_fu_1402_p2;
reg   [0:0] icmp_ln38_reg_2336;
wire   [9:0] empty_5_fu_1462_p2;
reg   [9:0] empty_5_reg_2341;
wire    ap_block_pp0_stage2_11001;
wire  signed [31:0] sum0_fu_1468_p19;
reg  signed [31:0] sum0_reg_2346;
wire   [31:0] tmp_3_fu_1545_p19;
reg   [31:0] tmp_3_reg_2432;
wire  signed [31:0] sum0_1_fu_1584_p19;
reg  signed [31:0] sum0_1_reg_2437;
wire   [31:0] tmp_5_fu_1623_p19;
reg   [31:0] tmp_5_reg_2443;
wire   [31:0] tmp_8_fu_1681_p19;
reg   [31:0] tmp_8_reg_2488;
wire   [31:0] tmp_s_fu_1739_p19;
reg   [31:0] tmp_s_reg_2533;
wire   [0:0] icmp_ln37_fu_1798_p2;
reg   [0:0] icmp_ln37_reg_2538;
reg   [0:0] icmp_ln36_reg_2543;
reg   [0:0] icmp_ln36_reg_2543_pp0_iter1_reg;
reg   [0:0] icmp_ln36_reg_2543_pp0_iter2_reg;
wire   [31:0] grp_fu_1073_p19;
reg   [31:0] tmp_reg_2547;
wire   [31:0] tmp_1_fu_1820_p19;
reg   [31:0] tmp_1_reg_2552;
wire   [31:0] add_ln48_3_fu_1882_p2;
reg   [31:0] add_ln48_3_reg_2597;
wire   [31:0] grp_fu_1112_p19;
reg   [31:0] tmp_6_reg_2602;
wire   [31:0] tmp_9_fu_1905_p19;
reg   [31:0] tmp_9_reg_2647;
reg   [31:0] tmp_2_reg_2652;
wire   [31:0] grp_fu_1065_p2;
reg   [31:0] mul_ln48_reg_2657;
reg   [31:0] mul_ln48_reg_2657_pp0_iter2_reg;
reg   [31:0] tmp_7_reg_2662;
wire   [31:0] add_ln48_9_fu_1958_p2;
reg   [31:0] add_ln48_9_reg_2667;
wire   [31:0] grp_fu_1069_p2;
reg   [31:0] mul_ln48_2_reg_2672;
reg   [31:0] mul_ln48_2_reg_2672_pp0_iter2_reg;
wire  signed [31:0] add_ln48_4_fu_1972_p2;
reg  signed [31:0] add_ln48_4_reg_2677;
wire  signed [31:0] add_ln48_10_fu_1986_p2;
reg  signed [31:0] add_ln48_10_reg_2682;
reg   [31:0] mul_ln48_1_reg_2687;
reg   [31:0] mul_ln48_3_reg_2692;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg   [0:0] ap_phi_mux_icmp_ln3725_phi_fu_1047_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln3824_phi_fu_1058_p4;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln43_fu_1322_p1;
wire   [63:0] zext_ln42_1_fu_1379_p1;
wire   [63:0] zext_ln40_fu_1514_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln41_fu_1533_p1;
wire   [63:0] zext_ln40_1_fu_1669_p1;
wire   [63:0] zext_ln43_1_fu_1727_p1;
wire   [63:0] zext_ln42_fu_1866_p1;
wire   [63:0] zext_ln41_1_fu_1893_p1;
reg   [12:0] indvar_flatten1417_fu_124;
wire   [12:0] add_ln36_fu_1778_p2;
reg   [4:0] i18_fu_128;
reg   [7:0] indvar_flatten19_fu_132;
wire   [7:0] select_ln37_1_fu_1790_p3;
reg   [4:0] j20_fu_136;
reg   [4:0] ap_sig_allocacmp_j20_load;
reg   [3:0] k21_fu_140;
wire   [3:0] k_fu_1391_p2;
reg   [3:0] ap_sig_allocacmp_k21_load;
reg   [4:0] indvars_iv_next33322_fu_144;
wire   [4:0] indvars_iv_next333_fu_1396_p2;
reg   [4:0] indvars_iv_next32023_fu_148;
wire   [4:0] indvars_iv_next320_fu_1944_p2;
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
wire   [31:0] add_ln48_5_fu_1991_p2;
reg    sol_6_ce0_local;
reg   [10:0] sol_6_address0_local;
wire   [31:0] add_ln48_11_fu_2003_p2;
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
reg  signed [31:0] grp_fu_1065_p0;
reg  signed [31:0] grp_fu_1065_p1;
reg  signed [31:0] grp_fu_1069_p0;
reg  signed [31:0] grp_fu_1069_p1;
wire   [31:0] grp_fu_1073_p17;
reg   [2:0] grp_fu_1073_p18;
wire   [31:0] grp_fu_1112_p17;
reg   [2:0] grp_fu_1112_p18;
wire   [0:0] xor_ln11_fu_1200_p2;
wire   [0:0] empty_fu_1218_p2;
wire   [4:0] indvars_iv_next320_mid1_fu_1269_p2;
wire   [4:0] select_ln11_1_fu_1253_p3;
wire   [10:0] add_ln_fu_1292_p4;
wire   [10:0] add_ln4_fu_1313_p4;
wire   [3:0] add_ln44_fu_1334_p2;
wire   [10:0] add_ln44_1_fu_1347_p4;
wire   [10:0] add_ln42_1_fu_1369_p4;
wire  signed [5:0] tmp1_cast_cast_fu_1441_p3;
wire   [9:0] tmp1_cast_cast_cast_fu_1448_p1;
wire   [9:0] tmp_4_fu_1434_p3;
wire  signed [9:0] tmp2_cast_fu_1458_p1;
wire   [31:0] sum0_fu_1468_p17;
wire   [9:0] empty_4_fu_1452_p2;
wire   [10:0] add_ln1_fu_1507_p3;
wire   [10:0] add_ln2_fu_1526_p3;
wire   [31:0] tmp_3_fu_1545_p17;
wire   [31:0] sum0_1_fu_1584_p17;
wire   [31:0] tmp_5_fu_1623_p17;
wire   [10:0] add_ln40_1_fu_1662_p3;
wire   [31:0] tmp_8_fu_1681_p17;
wire   [10:0] add_ln43_1_fu_1720_p4;
wire   [31:0] tmp_s_fu_1739_p17;
wire   [7:0] add_ln37_fu_1784_p2;
wire   [31:0] tmp_1_fu_1820_p17;
wire   [10:0] add_ln3_fu_1859_p4;
wire   [31:0] add_ln48_2_fu_1878_p2;
wire   [10:0] add_ln41_1_fu_1887_p3;
wire   [31:0] tmp_9_fu_1905_p17;
wire   [31:0] add_ln48_8_fu_1954_p2;
wire   [31:0] add_ln48_fu_1963_p2;
wire   [31:0] add_ln48_1_fu_1967_p2;
wire   [31:0] add_ln48_6_fu_1977_p2;
wire   [31:0] add_ln48_7_fu_1981_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter3_stage0;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1335;
reg    ap_condition_1341;
reg    ap_condition_1344;
reg    ap_condition_1347;
reg    ap_condition_1351;
reg    ap_condition_1355;
reg    ap_condition_1358;
reg    ap_condition_1361;
reg    ap_condition_1365;
reg    ap_condition_1368;
reg    ap_condition_1372;
reg    ap_condition_1375;
reg    ap_condition_1379;
reg    ap_condition_1382;
reg    ap_condition_1386;
reg    ap_condition_1389;
reg    ap_condition_1393;
reg    ap_condition_1397;
reg    ap_condition_552;
wire   [2:0] grp_fu_1073_p1;
wire   [2:0] grp_fu_1073_p3;
wire   [2:0] grp_fu_1073_p5;
wire   [2:0] grp_fu_1073_p7;
wire  signed [2:0] grp_fu_1073_p9;
wire  signed [2:0] grp_fu_1073_p11;
wire  signed [2:0] grp_fu_1073_p13;
wire  signed [2:0] grp_fu_1073_p15;
wire  signed [2:0] grp_fu_1112_p1;
wire   [2:0] grp_fu_1112_p3;
wire   [2:0] grp_fu_1112_p5;
wire   [2:0] grp_fu_1112_p7;
wire   [2:0] grp_fu_1112_p9;
wire  signed [2:0] grp_fu_1112_p11;
wire  signed [2:0] grp_fu_1112_p13;
wire  signed [2:0] grp_fu_1112_p15;
wire   [2:0] sum0_fu_1468_p1;
wire   [2:0] sum0_fu_1468_p3;
wire   [2:0] sum0_fu_1468_p5;
wire   [2:0] sum0_fu_1468_p7;
wire  signed [2:0] sum0_fu_1468_p9;
wire  signed [2:0] sum0_fu_1468_p11;
wire  signed [2:0] sum0_fu_1468_p13;
wire  signed [2:0] sum0_fu_1468_p15;
wire   [2:0] tmp_3_fu_1545_p1;
wire   [2:0] tmp_3_fu_1545_p3;
wire   [2:0] tmp_3_fu_1545_p5;
wire   [2:0] tmp_3_fu_1545_p7;
wire  signed [2:0] tmp_3_fu_1545_p9;
wire  signed [2:0] tmp_3_fu_1545_p11;
wire  signed [2:0] tmp_3_fu_1545_p13;
wire  signed [2:0] tmp_3_fu_1545_p15;
wire  signed [2:0] sum0_1_fu_1584_p1;
wire   [2:0] sum0_1_fu_1584_p3;
wire   [2:0] sum0_1_fu_1584_p5;
wire   [2:0] sum0_1_fu_1584_p7;
wire   [2:0] sum0_1_fu_1584_p9;
wire  signed [2:0] sum0_1_fu_1584_p11;
wire  signed [2:0] sum0_1_fu_1584_p13;
wire  signed [2:0] sum0_1_fu_1584_p15;
wire   [2:0] tmp_5_fu_1623_p1;
wire   [2:0] tmp_5_fu_1623_p3;
wire   [2:0] tmp_5_fu_1623_p5;
wire  signed [2:0] tmp_5_fu_1623_p7;
wire  signed [2:0] tmp_5_fu_1623_p9;
wire  signed [2:0] tmp_5_fu_1623_p11;
wire  signed [2:0] tmp_5_fu_1623_p13;
wire   [2:0] tmp_5_fu_1623_p15;
wire  signed [2:0] tmp_8_fu_1681_p1;
wire   [2:0] tmp_8_fu_1681_p3;
wire   [2:0] tmp_8_fu_1681_p5;
wire   [2:0] tmp_8_fu_1681_p7;
wire   [2:0] tmp_8_fu_1681_p9;
wire  signed [2:0] tmp_8_fu_1681_p11;
wire  signed [2:0] tmp_8_fu_1681_p13;
wire  signed [2:0] tmp_8_fu_1681_p15;
wire  signed [2:0] tmp_s_fu_1739_p1;
wire  signed [2:0] tmp_s_fu_1739_p3;
wire   [2:0] tmp_s_fu_1739_p5;
wire   [2:0] tmp_s_fu_1739_p7;
wire   [2:0] tmp_s_fu_1739_p9;
wire   [2:0] tmp_s_fu_1739_p11;
wire  signed [2:0] tmp_s_fu_1739_p13;
wire  signed [2:0] tmp_s_fu_1739_p15;
wire   [2:0] tmp_1_fu_1820_p1;
wire   [2:0] tmp_1_fu_1820_p3;
wire   [2:0] tmp_1_fu_1820_p5;
wire   [2:0] tmp_1_fu_1820_p7;
wire  signed [2:0] tmp_1_fu_1820_p9;
wire  signed [2:0] tmp_1_fu_1820_p11;
wire  signed [2:0] tmp_1_fu_1820_p13;
wire  signed [2:0] tmp_1_fu_1820_p15;
wire  signed [2:0] tmp_9_fu_1905_p1;
wire   [2:0] tmp_9_fu_1905_p3;
wire   [2:0] tmp_9_fu_1905_p5;
wire   [2:0] tmp_9_fu_1905_p7;
wire   [2:0] tmp_9_fu_1905_p9;
wire  signed [2:0] tmp_9_fu_1905_p11;
wire  signed [2:0] tmp_9_fu_1905_p13;
wire  signed [2:0] tmp_9_fu_1905_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 indvar_flatten1417_fu_124 = 13'd0;
#0 i18_fu_128 = 5'd0;
#0 indvar_flatten19_fu_132 = 8'd0;
#0 j20_fu_136 = 5'd0;
#0 k21_fu_140 = 4'd0;
#0 indvars_iv_next33322_fu_144 = 5'd0;
#0 indvars_iv_next32023_fu_148 = 5'd0;
#0 ap_done_reg = 1'b0;
end
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1065_p0),.din1(grp_fu_1065_p1),.ce(1'b1),.dout(grp_fu_1065_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1069_p0),.din1(grp_fu_1069_p1),.ce(1'b1),.dout(grp_fu_1069_p2));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U3(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.din4(orig_4_q0),.din5(orig_5_q0),.din6(orig_6_q0),.din7(orig_7_q0),.def(grp_fu_1073_p17),.sel(grp_fu_1073_p18),.dout(grp_fu_1073_p19));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 32 ),.CASE1( 3'h0 ),.din1_WIDTH( 32 ),.CASE2( 3'h1 ),.din2_WIDTH( 32 ),.CASE3( 3'h2 ),.din3_WIDTH( 32 ),.CASE4( 3'h3 ),.din4_WIDTH( 32 ),.CASE5( 3'h4 ),.din5_WIDTH( 32 ),.CASE6( 3'h5 ),.din6_WIDTH( 32 ),.CASE7( 3'h6 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U4(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.din4(orig_4_q0),.din5(orig_5_q0),.din6(orig_6_q0),.din7(orig_7_q0),.def(grp_fu_1112_p17),.sel(grp_fu_1112_p18),.dout(grp_fu_1112_p19));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U5(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.din4(orig_4_q1),.din5(orig_5_q1),.din6(orig_6_q1),.din7(orig_7_q1),.def(sum0_fu_1468_p17),.sel(trunc_ln38_reg_2099),.dout(sum0_fu_1468_p19));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U6(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.din4(orig_4_q0),.din5(orig_5_q0),.din6(orig_6_q0),.din7(orig_7_q0),.def(tmp_3_fu_1545_p17),.sel(trunc_ln38_reg_2099),.dout(tmp_3_fu_1545_p19));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 32 ),.CASE1( 3'h0 ),.din1_WIDTH( 32 ),.CASE2( 3'h1 ),.din2_WIDTH( 32 ),.CASE3( 3'h2 ),.din3_WIDTH( 32 ),.CASE4( 3'h3 ),.din4_WIDTH( 32 ),.CASE5( 3'h4 ),.din5_WIDTH( 32 ),.CASE6( 3'h5 ),.din6_WIDTH( 32 ),.CASE7( 3'h6 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U7(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.din4(orig_4_q1),.din5(orig_5_q1),.din6(orig_6_q1),.din7(orig_7_q1),.def(sum0_1_fu_1584_p17),.sel(trunc_ln38_reg_2099),.dout(sum0_1_fu_1584_p19));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h3 ),.din2_WIDTH( 32 ),.CASE3( 3'h4 ),.din3_WIDTH( 32 ),.CASE4( 3'h5 ),.din4_WIDTH( 32 ),.CASE5( 3'h6 ),.din5_WIDTH( 32 ),.CASE6( 3'h7 ),.din6_WIDTH( 32 ),.CASE7( 3'h0 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U8(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.din4(orig_4_q1),.din5(orig_5_q1),.din6(orig_6_q1),.din7(orig_7_q1),.def(tmp_5_fu_1623_p17),.sel(trunc_ln38_reg_2099),.dout(tmp_5_fu_1623_p19));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 32 ),.CASE1( 3'h0 ),.din1_WIDTH( 32 ),.CASE2( 3'h1 ),.din2_WIDTH( 32 ),.CASE3( 3'h2 ),.din3_WIDTH( 32 ),.CASE4( 3'h3 ),.din4_WIDTH( 32 ),.CASE5( 3'h4 ),.din5_WIDTH( 32 ),.CASE6( 3'h5 ),.din6_WIDTH( 32 ),.CASE7( 3'h6 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U9(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.din4(orig_4_q0),.din5(orig_5_q0),.din6(orig_6_q0),.din7(orig_7_q0),.def(tmp_8_fu_1681_p17),.sel(trunc_ln38_reg_2099),.dout(tmp_8_fu_1681_p19));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 32 ),.CASE1( 3'h7 ),.din1_WIDTH( 32 ),.CASE2( 3'h0 ),.din2_WIDTH( 32 ),.CASE3( 3'h1 ),.din3_WIDTH( 32 ),.CASE4( 3'h2 ),.din4_WIDTH( 32 ),.CASE5( 3'h3 ),.din5_WIDTH( 32 ),.CASE6( 3'h4 ),.din6_WIDTH( 32 ),.CASE7( 3'h5 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U10(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.din4(orig_4_q1),.din5(orig_5_q1),.din6(orig_6_q1),.din7(orig_7_q1),.def(tmp_s_fu_1739_p17),.sel(trunc_ln38_reg_2099),.dout(tmp_s_fu_1739_p19));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U11(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.din4(orig_4_q1),.din5(orig_5_q1),.din6(orig_6_q1),.din7(orig_7_q1),.def(tmp_1_fu_1820_p17),.sel(trunc_ln38_reg_2099),.dout(tmp_1_fu_1820_p19));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 32 ),.CASE1( 3'h0 ),.din1_WIDTH( 32 ),.CASE2( 3'h1 ),.din2_WIDTH( 32 ),.CASE3( 3'h2 ),.din3_WIDTH( 32 ),.CASE4( 3'h3 ),.din4_WIDTH( 32 ),.CASE5( 3'h4 ),.din5_WIDTH( 32 ),.CASE6( 3'h5 ),.din6_WIDTH( 32 ),.CASE7( 3'h6 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U12(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.din4(orig_4_q1),.din5(orig_5_q1),.din6(orig_6_q1),.din7(orig_7_q1),.def(tmp_9_fu_1905_p17),.sel(trunc_ln38_reg_2099),.dout(tmp_9_fu_1905_p19));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage0) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage0) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b0)) | ((1'b1 == ap_condition_exit_pp0_iter3_stage0) & (ap_idle_pp0_0to2 == 1'b1)))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i18_fu_128 <= 5'd1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i18_fu_128 <= i_fu_1261_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1341)) begin
            icmp_ln3725_reg_1044 <= icmp_ln37_reg_2538;
        end else if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            icmp_ln3725_reg_1044 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten1417_fu_124 <= 13'd0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        indvar_flatten1417_fu_124 <= add_ln36_fu_1778_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten19_fu_132 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        indvar_flatten19_fu_132 <= select_ln37_1_fu_1790_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvars_iv_next32023_fu_148 <= 5'd2;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvars_iv_next32023_fu_148 <= indvars_iv_next320_fu_1944_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvars_iv_next33322_fu_144 <= 5'd2;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvars_iv_next33322_fu_144 <= indvars_iv_next333_fu_1396_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j20_fu_136 <= 5'd1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j20_fu_136 <= j_fu_1281_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k21_fu_140 <= 4'd1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        k21_fu_140 <= k_fu_1391_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln48_10_reg_2682 <= add_ln48_10_fu_1986_p2;
        add_ln48_4_reg_2677 <= add_ln48_4_fu_1972_p2;
        empty_5_reg_2341 <= empty_5_fu_1462_p2;
        icmp_ln36_reg_2543 <= icmp_ln36_fu_1804_p2;
        icmp_ln36_reg_2543_pp0_iter1_reg <= icmp_ln36_reg_2543;
        icmp_ln36_reg_2543_pp0_iter2_reg <= icmp_ln36_reg_2543_pp0_iter1_reg;
        sum0_1_reg_2437 <= sum0_1_fu_1584_p19;
        sum0_reg_2346 <= sum0_fu_1468_p19;
        tmp_3_reg_2432 <= tmp_3_fu_1545_p19;
        tmp_5_reg_2443 <= tmp_5_fu_1623_p19;
        tmp_8_reg_2488 <= tmp_8_fu_1681_p19;
        tmp_s_reg_2533 <= tmp_s_fu_1739_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln48_3_reg_2597 <= add_ln48_3_fu_1882_p2;
        and_ln11_reg_2082 <= and_ln11_fu_1206_p2;
        indvars_iv_next320_dup_reg_2088 <= indvars_iv_next320_dup_fu_1212_p2;
        k_mid2_reg_2093 <= k_mid2_fu_1224_p3;
        select_ln11_reg_2076 <= select_ln11_fu_1192_p3;
        tmp_10_reg_2113 <= k_mid2_fu_1224_p3[32'd3];
        tmp_1_reg_2552 <= tmp_1_fu_1820_p19;
        tmp_9_reg_2647 <= tmp_9_fu_1905_p19;
        trunc_ln38_reg_2099 <= trunc_ln38_fu_1232_p1;
        trunc_ln38_reg_2099_pp0_iter1_reg <= trunc_ln38_reg_2099;
        trunc_ln38_reg_2099_pp0_iter2_reg <= trunc_ln38_reg_2099_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln48_9_reg_2667 <= add_ln48_9_fu_1958_p2;
        i_reg_2122 <= i_fu_1261_p3;
        indvars_iv_next320_mid2_reg_2129 <= indvars_iv_next320_mid2_fu_1274_p3;
        j_reg_2134 <= j_fu_1281_p3;
        mul_ln48_2_reg_2672_pp0_iter2_reg <= mul_ln48_2_reg_2672;
        mul_ln48_reg_2657_pp0_iter2_reg <= mul_ln48_reg_2657;
        tmp3_reg_2140 <= tmp3_fu_1286_p2;
        tmp_11_reg_2237 <= add_ln44_fu_1334_p2[32'd3];
        zext_ln39_reg_2145[10 : 0] <= zext_ln39_fu_1301_p1[10 : 0];
        zext_ln39_reg_2145_pp0_iter1_reg[10 : 0] <= zext_ln39_reg_2145[10 : 0];
        zext_ln39_reg_2145_pp0_iter2_reg[10 : 0] <= zext_ln39_reg_2145_pp0_iter1_reg[10 : 0];
        zext_ln44_reg_2244[10 : 0] <= zext_ln44_fu_1357_p1[10 : 0];
        zext_ln44_reg_2244_pp0_iter1_reg[10 : 0] <= zext_ln44_reg_2244[10 : 0];
        zext_ln44_reg_2244_pp0_iter2_reg[10 : 0] <= zext_ln44_reg_2244_pp0_iter1_reg[10 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln37_reg_2538 <= icmp_ln37_fu_1798_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln38_reg_2336 <= icmp_ln38_fu_1402_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_ln48_1_reg_2687 <= grp_fu_1065_p2;
        mul_ln48_3_reg_2692 <= grp_fu_1069_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln48_2_reg_2672 <= grp_fu_1069_p2;
        mul_ln48_reg_2657 <= grp_fu_1065_p2;
        tmp_2_reg_2652 <= grp_fu_1073_p19;
        tmp_7_reg_2662 <= grp_fu_1112_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_6_reg_2602 <= grp_fu_1112_p19;
        tmp_reg_2547 <= grp_fu_1073_p19;
    end
end
always @ (*) begin
    if (((icmp_ln36_fu_1804_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln36_reg_2543_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1335)) begin
            ap_phi_mux_icmp_ln3725_phi_fu_1047_p4 = icmp_ln37_reg_2538;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln3725_phi_fu_1047_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln3725_phi_fu_1047_p4 = icmp_ln37_reg_2538;
        end
    end else begin
        ap_phi_mux_icmp_ln3725_phi_fu_1047_p4 = icmp_ln37_reg_2538;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1335)) begin
            ap_phi_mux_icmp_ln3824_phi_fu_1058_p4 = icmp_ln38_reg_2336;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln3824_phi_fu_1058_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln3824_phi_fu_1058_p4 = icmp_ln38_reg_2336;
        end
    end else begin
        ap_phi_mux_icmp_ln3824_phi_fu_1058_p4 = icmp_ln38_reg_2336;
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
        ap_sig_allocacmp_j20_load = 5'd1;
    end else begin
        ap_sig_allocacmp_j20_load = j20_fu_136;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_k21_load = 4'd1;
    end else begin
        ap_sig_allocacmp_k21_load = k21_fu_140;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1065_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1065_p0 = C_load;
    end else begin
        grp_fu_1065_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1065_p1 = add_ln48_4_reg_2677;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1065_p1 = sum0_reg_2346;
    end else begin
        grp_fu_1065_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1069_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1069_p0 = C_load;
    end else begin
        grp_fu_1069_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1069_p1 = add_ln48_10_reg_2682;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1069_p1 = sum0_1_reg_2437;
    end else begin
        grp_fu_1069_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1073_p18 = trunc_ln38_reg_2099_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1073_p18 = trunc_ln38_reg_2099;
        end else begin
            grp_fu_1073_p18 = 'bx;
        end
    end else begin
        grp_fu_1073_p18 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1112_p18 = trunc_ln38_reg_2099_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1112_p18 = trunc_ln38_reg_2099;
        end else begin
            grp_fu_1112_p18 = 'bx;
        end
    end else begin
        grp_fu_1112_p18 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2099 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address0_local = zext_ln41_1_fu_1893_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2099 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address0_local = zext_ln42_fu_1866_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_0_address0_local = zext_ln40_1_fu_1669_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_0_address0_local = zext_ln40_fu_1514_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_address0_local = zext_ln42_1_fu_1379_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_address0_local = zext_ln43_fu_1322_p1;
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1355)) begin
            orig_0_address1_local = zext_ln43_1_fu_1727_p1;
        end else if ((1'b1 == ap_condition_1351)) begin
            orig_0_address1_local = zext_ln41_fu_1533_p1;
        end else if ((1'b1 == ap_condition_1347)) begin
            orig_0_address1_local = zext_ln44_fu_1357_p1;
        end else if ((1'b1 == ap_condition_1344)) begin
            orig_0_address1_local = zext_ln39_fu_1301_p1;
        end else begin
            orig_0_address1_local = 'bx;
        end
    end else begin
        orig_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2099 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2099 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln38_reg_2099 == 3'd7) | (trunc_ln38_reg_2099 == 3'd6))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln38_reg_2099 == 3'd1) | (trunc_ln38_reg_2099 == 3'd0))))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2099 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address0_local = zext_ln41_1_fu_1893_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2099 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address0_local = zext_ln42_fu_1866_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_1_address0_local = zext_ln40_1_fu_1669_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_1_address0_local = zext_ln40_fu_1514_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_address0_local = zext_ln42_1_fu_1379_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_address0_local = zext_ln43_fu_1322_p1;
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1351)) begin
            orig_1_address1_local = zext_ln43_1_fu_1727_p1;
        end else if ((1'b1 == ap_condition_1365)) begin
            orig_1_address1_local = zext_ln41_fu_1533_p1;
        end else if ((1'b1 == ap_condition_1361)) begin
            orig_1_address1_local = zext_ln44_fu_1357_p1;
        end else if ((1'b1 == ap_condition_1358)) begin
            orig_1_address1_local = zext_ln39_fu_1301_p1;
        end else begin
            orig_1_address1_local = 'bx;
        end
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2099 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2099 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln38_reg_2099 == 3'd7) | (trunc_ln38_reg_2099 == 3'd0))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln38_reg_2099 == 3'd2) | (trunc_ln38_reg_2099 == 3'd1))))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2099 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_2_address0_local = zext_ln41_1_fu_1893_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2099 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_2_address0_local = zext_ln42_fu_1866_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_2_address0_local = zext_ln40_1_fu_1669_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_2_address0_local = zext_ln40_fu_1514_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_2_address0_local = zext_ln42_1_fu_1379_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_2_address0_local = zext_ln43_fu_1322_p1;
    end else begin
        orig_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1365)) begin
            orig_2_address1_local = zext_ln43_1_fu_1727_p1;
        end else if ((1'b1 == ap_condition_1372)) begin
            orig_2_address1_local = zext_ln41_fu_1533_p1;
        end else if ((1'b1 == ap_condition_1344)) begin
            orig_2_address1_local = zext_ln44_fu_1357_p1;
        end else if ((1'b1 == ap_condition_1368)) begin
            orig_2_address1_local = zext_ln39_fu_1301_p1;
        end else begin
            orig_2_address1_local = 'bx;
        end
    end else begin
        orig_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2099 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2099 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_2_ce0_local = 1'b1;
    end else begin
        orig_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln38_reg_2099 == 3'd3) | (trunc_ln38_reg_2099 == 3'd2))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln38_reg_2099 == 3'd1) | (trunc_ln38_reg_2099 == 3'd0))))) begin
        orig_2_ce1_local = 1'b1;
    end else begin
        orig_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2099 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_3_address0_local = zext_ln41_1_fu_1893_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2099 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_3_address0_local = zext_ln42_fu_1866_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_3_address0_local = zext_ln40_1_fu_1669_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_3_address0_local = zext_ln40_fu_1514_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_3_address0_local = zext_ln42_1_fu_1379_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_3_address0_local = zext_ln43_fu_1322_p1;
    end else begin
        orig_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1372)) begin
            orig_3_address1_local = zext_ln43_1_fu_1727_p1;
        end else if ((1'b1 == ap_condition_1379)) begin
            orig_3_address1_local = zext_ln41_fu_1533_p1;
        end else if ((1'b1 == ap_condition_1358)) begin
            orig_3_address1_local = zext_ln44_fu_1357_p1;
        end else if ((1'b1 == ap_condition_1375)) begin
            orig_3_address1_local = zext_ln39_fu_1301_p1;
        end else begin
            orig_3_address1_local = 'bx;
        end
    end else begin
        orig_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2099 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2099 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_3_ce0_local = 1'b1;
    end else begin
        orig_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln38_reg_2099 == 3'd4) | (trunc_ln38_reg_2099 == 3'd3))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln38_reg_2099 == 3'd2) | (trunc_ln38_reg_2099 == 3'd1))))) begin
        orig_3_ce1_local = 1'b1;
    end else begin
        orig_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2099 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_4_address0_local = zext_ln41_1_fu_1893_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2099 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_4_address0_local = zext_ln42_fu_1866_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_4_address0_local = zext_ln40_1_fu_1669_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_4_address0_local = zext_ln40_fu_1514_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_4_address0_local = zext_ln42_1_fu_1379_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_4_address0_local = zext_ln43_fu_1322_p1;
    end else begin
        orig_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1379)) begin
            orig_4_address1_local = zext_ln43_1_fu_1727_p1;
        end else if ((1'b1 == ap_condition_1386)) begin
            orig_4_address1_local = zext_ln41_fu_1533_p1;
        end else if ((1'b1 == ap_condition_1368)) begin
            orig_4_address1_local = zext_ln44_fu_1357_p1;
        end else if ((1'b1 == ap_condition_1382)) begin
            orig_4_address1_local = zext_ln39_fu_1301_p1;
        end else begin
            orig_4_address1_local = 'bx;
        end
    end else begin
        orig_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2099 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2099 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_4_ce0_local = 1'b1;
    end else begin
        orig_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln38_reg_2099 == 3'd5) | (trunc_ln38_reg_2099 == 3'd4))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln38_reg_2099 == 3'd3) | (trunc_ln38_reg_2099 == 3'd2))))) begin
        orig_4_ce1_local = 1'b1;
    end else begin
        orig_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2099 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_5_address0_local = zext_ln41_1_fu_1893_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2099 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_5_address0_local = zext_ln42_fu_1866_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_5_address0_local = zext_ln40_1_fu_1669_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_5_address0_local = zext_ln40_fu_1514_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_5_address0_local = zext_ln42_1_fu_1379_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_5_address0_local = zext_ln43_fu_1322_p1;
    end else begin
        orig_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1386)) begin
            orig_5_address1_local = zext_ln43_1_fu_1727_p1;
        end else if ((1'b1 == ap_condition_1393)) begin
            orig_5_address1_local = zext_ln41_fu_1533_p1;
        end else if ((1'b1 == ap_condition_1375)) begin
            orig_5_address1_local = zext_ln44_fu_1357_p1;
        end else if ((1'b1 == ap_condition_1389)) begin
            orig_5_address1_local = zext_ln39_fu_1301_p1;
        end else begin
            orig_5_address1_local = 'bx;
        end
    end else begin
        orig_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2099 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2099 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_5_ce0_local = 1'b1;
    end else begin
        orig_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln38_reg_2099 == 3'd6) | (trunc_ln38_reg_2099 == 3'd5))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln38_reg_2099 == 3'd4) | (trunc_ln38_reg_2099 == 3'd3))))) begin
        orig_5_ce1_local = 1'b1;
    end else begin
        orig_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2099 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_6_address0_local = zext_ln41_1_fu_1893_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2099 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_6_address0_local = zext_ln42_fu_1866_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_6_address0_local = zext_ln40_1_fu_1669_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_6_address0_local = zext_ln40_fu_1514_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_6_address0_local = zext_ln42_1_fu_1379_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_6_address0_local = zext_ln43_fu_1322_p1;
    end else begin
        orig_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1393)) begin
            orig_6_address1_local = zext_ln43_1_fu_1727_p1;
        end else if ((1'b1 == ap_condition_1397)) begin
            orig_6_address1_local = zext_ln41_fu_1533_p1;
        end else if ((1'b1 == ap_condition_1382)) begin
            orig_6_address1_local = zext_ln44_fu_1357_p1;
        end else if ((1'b1 == ap_condition_1347)) begin
            orig_6_address1_local = zext_ln39_fu_1301_p1;
        end else begin
            orig_6_address1_local = 'bx;
        end
    end else begin
        orig_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2099 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2099 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_6_ce0_local = 1'b1;
    end else begin
        orig_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln38_reg_2099 == 3'd5) | (trunc_ln38_reg_2099 == 3'd4))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln38_reg_2099 == 3'd7) | (trunc_ln38_reg_2099 == 3'd6))))) begin
        orig_6_ce1_local = 1'b1;
    end else begin
        orig_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2099 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_7_address0_local = zext_ln41_1_fu_1893_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2099 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_7_address0_local = zext_ln42_fu_1866_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_7_address0_local = zext_ln40_1_fu_1669_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_7_address0_local = zext_ln40_fu_1514_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_7_address0_local = zext_ln42_1_fu_1379_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_7_address0_local = zext_ln43_fu_1322_p1;
    end else begin
        orig_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1397)) begin
            orig_7_address1_local = zext_ln43_1_fu_1727_p1;
        end else if ((1'b1 == ap_condition_1355)) begin
            orig_7_address1_local = zext_ln41_fu_1533_p1;
        end else if ((1'b1 == ap_condition_1389)) begin
            orig_7_address1_local = zext_ln44_fu_1357_p1;
        end else if ((1'b1 == ap_condition_1361)) begin
            orig_7_address1_local = zext_ln39_fu_1301_p1;
        end else begin
            orig_7_address1_local = 'bx;
        end
    end else begin
        orig_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2099 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln38_reg_2099 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_7_ce0_local = 1'b1;
    end else begin
        orig_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln38_reg_2099 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln38_reg_2099 == 3'd6) | (trunc_ln38_reg_2099 == 3'd5))) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln38_reg_2099 == 3'd7) | (trunc_ln38_reg_2099 == 3'd0))))) begin
        orig_7_ce1_local = 1'b1;
    end else begin
        orig_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_552)) begin
        if ((trunc_ln38_reg_2099_pp0_iter2_reg == 3'd7)) begin
            sol_0_address0_local = zext_ln44_reg_2244_pp0_iter2_reg;
        end else if ((trunc_ln38_reg_2099_pp0_iter2_reg == 3'd0)) begin
            sol_0_address0_local = zext_ln39_reg_2145_pp0_iter2_reg;
        end else begin
            sol_0_address0_local = 'bx;
        end
    end else begin
        sol_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2099_pp0_iter2_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2099_pp0_iter2_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        sol_0_ce0_local = 1'b1;
    end else begin
        sol_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_552)) begin
        if ((trunc_ln38_reg_2099_pp0_iter2_reg == 3'd7)) begin
            sol_0_d0_local = add_ln48_11_fu_2003_p2;
        end else if ((trunc_ln38_reg_2099_pp0_iter2_reg == 3'd0)) begin
            sol_0_d0_local = add_ln48_5_fu_1991_p2;
        end else begin
            sol_0_d0_local = 'bx;
        end
    end else begin
        sol_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2099_pp0_iter2_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2099_pp0_iter2_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        sol_0_we0_local = 1'b1;
    end else begin
        sol_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_552)) begin
        if ((trunc_ln38_reg_2099_pp0_iter2_reg == 3'd0)) begin
            sol_1_address0_local = zext_ln44_reg_2244_pp0_iter2_reg;
        end else if ((trunc_ln38_reg_2099_pp0_iter2_reg == 3'd1)) begin
            sol_1_address0_local = zext_ln39_reg_2145_pp0_iter2_reg;
        end else begin
            sol_1_address0_local = 'bx;
        end
    end else begin
        sol_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2099_pp0_iter2_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2099_pp0_iter2_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        sol_1_ce0_local = 1'b1;
    end else begin
        sol_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_552)) begin
        if ((trunc_ln38_reg_2099_pp0_iter2_reg == 3'd0)) begin
            sol_1_d0_local = add_ln48_11_fu_2003_p2;
        end else if ((trunc_ln38_reg_2099_pp0_iter2_reg == 3'd1)) begin
            sol_1_d0_local = add_ln48_5_fu_1991_p2;
        end else begin
            sol_1_d0_local = 'bx;
        end
    end else begin
        sol_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2099_pp0_iter2_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2099_pp0_iter2_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_552)) begin
        if ((trunc_ln38_reg_2099_pp0_iter2_reg == 3'd1)) begin
            sol_2_address0_local = zext_ln44_reg_2244_pp0_iter2_reg;
        end else if ((trunc_ln38_reg_2099_pp0_iter2_reg == 3'd2)) begin
            sol_2_address0_local = zext_ln39_reg_2145_pp0_iter2_reg;
        end else begin
            sol_2_address0_local = 'bx;
        end
    end else begin
        sol_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2099_pp0_iter2_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2099_pp0_iter2_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        sol_2_ce0_local = 1'b1;
    end else begin
        sol_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_552)) begin
        if ((trunc_ln38_reg_2099_pp0_iter2_reg == 3'd1)) begin
            sol_2_d0_local = add_ln48_11_fu_2003_p2;
        end else if ((trunc_ln38_reg_2099_pp0_iter2_reg == 3'd2)) begin
            sol_2_d0_local = add_ln48_5_fu_1991_p2;
        end else begin
            sol_2_d0_local = 'bx;
        end
    end else begin
        sol_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2099_pp0_iter2_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2099_pp0_iter2_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        sol_2_we0_local = 1'b1;
    end else begin
        sol_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_552)) begin
        if ((trunc_ln38_reg_2099_pp0_iter2_reg == 3'd2)) begin
            sol_3_address0_local = zext_ln44_reg_2244_pp0_iter2_reg;
        end else if ((trunc_ln38_reg_2099_pp0_iter2_reg == 3'd3)) begin
            sol_3_address0_local = zext_ln39_reg_2145_pp0_iter2_reg;
        end else begin
            sol_3_address0_local = 'bx;
        end
    end else begin
        sol_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2099_pp0_iter2_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2099_pp0_iter2_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        sol_3_ce0_local = 1'b1;
    end else begin
        sol_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_552)) begin
        if ((trunc_ln38_reg_2099_pp0_iter2_reg == 3'd2)) begin
            sol_3_d0_local = add_ln48_11_fu_2003_p2;
        end else if ((trunc_ln38_reg_2099_pp0_iter2_reg == 3'd3)) begin
            sol_3_d0_local = add_ln48_5_fu_1991_p2;
        end else begin
            sol_3_d0_local = 'bx;
        end
    end else begin
        sol_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2099_pp0_iter2_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2099_pp0_iter2_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        sol_3_we0_local = 1'b1;
    end else begin
        sol_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_552)) begin
        if ((trunc_ln38_reg_2099_pp0_iter2_reg == 3'd3)) begin
            sol_4_address0_local = zext_ln44_reg_2244_pp0_iter2_reg;
        end else if ((trunc_ln38_reg_2099_pp0_iter2_reg == 3'd4)) begin
            sol_4_address0_local = zext_ln39_reg_2145_pp0_iter2_reg;
        end else begin
            sol_4_address0_local = 'bx;
        end
    end else begin
        sol_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2099_pp0_iter2_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2099_pp0_iter2_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        sol_4_ce0_local = 1'b1;
    end else begin
        sol_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_552)) begin
        if ((trunc_ln38_reg_2099_pp0_iter2_reg == 3'd3)) begin
            sol_4_d0_local = add_ln48_11_fu_2003_p2;
        end else if ((trunc_ln38_reg_2099_pp0_iter2_reg == 3'd4)) begin
            sol_4_d0_local = add_ln48_5_fu_1991_p2;
        end else begin
            sol_4_d0_local = 'bx;
        end
    end else begin
        sol_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2099_pp0_iter2_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2099_pp0_iter2_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        sol_4_we0_local = 1'b1;
    end else begin
        sol_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_552)) begin
        if ((trunc_ln38_reg_2099_pp0_iter2_reg == 3'd4)) begin
            sol_5_address0_local = zext_ln44_reg_2244_pp0_iter2_reg;
        end else if ((trunc_ln38_reg_2099_pp0_iter2_reg == 3'd5)) begin
            sol_5_address0_local = zext_ln39_reg_2145_pp0_iter2_reg;
        end else begin
            sol_5_address0_local = 'bx;
        end
    end else begin
        sol_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2099_pp0_iter2_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2099_pp0_iter2_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        sol_5_ce0_local = 1'b1;
    end else begin
        sol_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_552)) begin
        if ((trunc_ln38_reg_2099_pp0_iter2_reg == 3'd4)) begin
            sol_5_d0_local = add_ln48_11_fu_2003_p2;
        end else if ((trunc_ln38_reg_2099_pp0_iter2_reg == 3'd5)) begin
            sol_5_d0_local = add_ln48_5_fu_1991_p2;
        end else begin
            sol_5_d0_local = 'bx;
        end
    end else begin
        sol_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2099_pp0_iter2_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2099_pp0_iter2_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        sol_5_we0_local = 1'b1;
    end else begin
        sol_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_552)) begin
        if ((trunc_ln38_reg_2099_pp0_iter2_reg == 3'd5)) begin
            sol_6_address0_local = zext_ln44_reg_2244_pp0_iter2_reg;
        end else if ((trunc_ln38_reg_2099_pp0_iter2_reg == 3'd6)) begin
            sol_6_address0_local = zext_ln39_reg_2145_pp0_iter2_reg;
        end else begin
            sol_6_address0_local = 'bx;
        end
    end else begin
        sol_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2099_pp0_iter2_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2099_pp0_iter2_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        sol_6_ce0_local = 1'b1;
    end else begin
        sol_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_552)) begin
        if ((trunc_ln38_reg_2099_pp0_iter2_reg == 3'd5)) begin
            sol_6_d0_local = add_ln48_11_fu_2003_p2;
        end else if ((trunc_ln38_reg_2099_pp0_iter2_reg == 3'd6)) begin
            sol_6_d0_local = add_ln48_5_fu_1991_p2;
        end else begin
            sol_6_d0_local = 'bx;
        end
    end else begin
        sol_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2099_pp0_iter2_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2099_pp0_iter2_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        sol_6_we0_local = 1'b1;
    end else begin
        sol_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_552)) begin
        if ((trunc_ln38_reg_2099_pp0_iter2_reg == 3'd7)) begin
            sol_7_address0_local = zext_ln39_reg_2145_pp0_iter2_reg;
        end else if ((trunc_ln38_reg_2099_pp0_iter2_reg == 3'd6)) begin
            sol_7_address0_local = zext_ln44_reg_2244_pp0_iter2_reg;
        end else begin
            sol_7_address0_local = 'bx;
        end
    end else begin
        sol_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2099_pp0_iter2_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2099_pp0_iter2_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        sol_7_ce0_local = 1'b1;
    end else begin
        sol_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_552)) begin
        if ((trunc_ln38_reg_2099_pp0_iter2_reg == 3'd7)) begin
            sol_7_d0_local = add_ln48_5_fu_1991_p2;
        end else if ((trunc_ln38_reg_2099_pp0_iter2_reg == 3'd6)) begin
            sol_7_d0_local = add_ln48_11_fu_2003_p2;
        end else begin
            sol_7_d0_local = 'bx;
        end
    end else begin
        sol_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2099_pp0_iter2_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln38_reg_2099_pp0_iter2_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        sol_7_we0_local = 1'b1;
    end else begin
        sol_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter3_stage0) & (ap_idle_pp0_0to2 == 1'b1))) begin
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
assign add_ln1_fu_1507_p3 = {{empty_4_fu_1452_p2}, {tmp_10_reg_2113}};
assign add_ln2_fu_1526_p3 = {{empty_5_fu_1462_p2}, {tmp_10_reg_2113}};
assign add_ln36_fu_1778_p2 = (indvar_flatten1417_fu_124 + 13'd1);
assign add_ln37_fu_1784_p2 = (indvar_flatten19_fu_132 + 8'd1);
assign add_ln3_fu_1859_p4 = {{{i_reg_2122}, {indvars_iv_next320_mid2_reg_2129}}, {tmp_10_reg_2113}};
assign add_ln40_1_fu_1662_p3 = {{empty_4_fu_1452_p2}, {tmp_11_reg_2237}};
assign add_ln41_1_fu_1887_p3 = {{empty_5_reg_2341}, {tmp_11_reg_2237}};
assign add_ln42_1_fu_1369_p4 = {{{i_fu_1261_p3}, {indvars_iv_next320_mid2_fu_1274_p3}}, {tmp_11_fu_1339_p3}};
assign add_ln43_1_fu_1720_p4 = {{{i_reg_2122}, {tmp3_reg_2140}}, {tmp_11_reg_2237}};
assign add_ln44_1_fu_1347_p4 = {{{i_fu_1261_p3}, {j_fu_1281_p3}}, {tmp_11_fu_1339_p3}};
assign add_ln44_fu_1334_p2 = (k_mid2_reg_2093 + 4'd1);
assign add_ln48_10_fu_1986_p2 = (add_ln48_9_reg_2667 + add_ln48_7_fu_1981_p2);
assign add_ln48_11_fu_2003_p2 = (mul_ln48_3_reg_2692 + mul_ln48_2_reg_2672_pp0_iter2_reg);
assign add_ln48_1_fu_1967_p2 = (add_ln48_fu_1963_p2 + tmp_1_reg_2552);
assign add_ln48_2_fu_1878_p2 = ($signed(sum0_1_reg_2437) + $signed(tmp_5_reg_2443));
assign add_ln48_3_fu_1882_p2 = (add_ln48_2_fu_1878_p2 + tmp_3_reg_2432);
assign add_ln48_4_fu_1972_p2 = (add_ln48_3_reg_2597 + add_ln48_1_fu_1967_p2);
assign add_ln48_5_fu_1991_p2 = (mul_ln48_1_reg_2687 + mul_ln48_reg_2657_pp0_iter2_reg);
assign add_ln48_6_fu_1977_p2 = ($signed(sum0_reg_2346) + $signed(tmp_7_reg_2662));
assign add_ln48_7_fu_1981_p2 = (add_ln48_6_fu_1977_p2 + tmp_6_reg_2602);
assign add_ln48_8_fu_1954_p2 = (tmp_9_reg_2647 + tmp_s_reg_2533);
assign add_ln48_9_fu_1958_p2 = (add_ln48_8_fu_1954_p2 + tmp_8_reg_2488);
assign add_ln48_fu_1963_p2 = (tmp_reg_2547 + tmp_2_reg_2652);
assign add_ln4_fu_1313_p4 = {{{i_fu_1261_p3}, {tmp3_fu_1286_p2}}, {tmp_10_reg_2113}};
assign add_ln_fu_1292_p4 = {{{i_fu_1261_p3}, {j_fu_1281_p3}}, {tmp_10_reg_2113}};
assign and_ln11_fu_1206_p2 = (xor_ln11_fu_1200_p2 & ap_phi_mux_icmp_ln3824_phi_fu_1058_p4);
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
    ap_condition_1335 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln36_reg_2543 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_1341 = ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln36_reg_2543 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_1344 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln38_reg_2099 == 3'd1) | (trunc_ln38_reg_2099 == 3'd0)));
end
always @ (*) begin
    ap_condition_1347 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln38_reg_2099 == 3'd7) | (trunc_ln38_reg_2099 == 3'd6)));
end
always @ (*) begin
    ap_condition_1351 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln38_reg_2099 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1355 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln38_reg_2099 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1358 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln38_reg_2099 == 3'd2) | (trunc_ln38_reg_2099 == 3'd1)));
end
always @ (*) begin
    ap_condition_1361 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln38_reg_2099 == 3'd7) | (trunc_ln38_reg_2099 == 3'd0)));
end
always @ (*) begin
    ap_condition_1365 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln38_reg_2099 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1368 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln38_reg_2099 == 3'd3) | (trunc_ln38_reg_2099 == 3'd2)));
end
always @ (*) begin
    ap_condition_1372 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln38_reg_2099 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1375 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln38_reg_2099 == 3'd4) | (trunc_ln38_reg_2099 == 3'd3)));
end
always @ (*) begin
    ap_condition_1379 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln38_reg_2099 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1382 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln38_reg_2099 == 3'd5) | (trunc_ln38_reg_2099 == 3'd4)));
end
always @ (*) begin
    ap_condition_1386 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln38_reg_2099 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1389 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((trunc_ln38_reg_2099 == 3'd6) | (trunc_ln38_reg_2099 == 3'd5)));
end
always @ (*) begin
    ap_condition_1393 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln38_reg_2099 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1397 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln38_reg_2099 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_552 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign empty_4_fu_1452_p2 = (tmp1_cast_cast_cast_fu_1448_p1 + tmp_4_fu_1434_p3);
assign empty_5_fu_1462_p2 = ($signed(tmp2_cast_fu_1458_p1) + $signed(tmp_4_fu_1434_p3));
assign empty_fu_1218_p2 = (ap_phi_mux_icmp_ln3725_phi_fu_1047_p4 | and_ln11_fu_1206_p2);
assign grp_fu_1073_p17 = 'bx;
assign grp_fu_1112_p17 = 'bx;
assign i_fu_1261_p3 = ((icmp_ln3725_reg_1044[0:0] == 1'b1) ? indvars_iv_next33322_fu_144 : i18_fu_128);
assign icmp_ln36_fu_1804_p2 = ((indvar_flatten1417_fu_124 == 13'd6299) ? 1'b1 : 1'b0);
assign icmp_ln37_fu_1798_p2 = ((select_ln37_1_fu_1790_p3 == 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln38_fu_1402_p2 = ((k_fu_1391_p2 == 4'd15) ? 1'b1 : 1'b0);
assign indvars_iv_next320_dup_fu_1212_p2 = (select_ln11_fu_1192_p3 + 5'd1);
assign indvars_iv_next320_fu_1944_p2 = (j_reg_2134 + 5'd1);
assign indvars_iv_next320_mid1_fu_1269_p2 = (select_ln11_reg_2076 + 5'd2);
assign indvars_iv_next320_mid2_fu_1274_p3 = ((and_ln11_reg_2082[0:0] == 1'b1) ? indvars_iv_next320_mid1_fu_1269_p2 : select_ln11_1_fu_1253_p3);
assign indvars_iv_next333_fu_1396_p2 = (i_fu_1261_p3 + 5'd1);
assign j_fu_1281_p3 = ((and_ln11_reg_2082[0:0] == 1'b1) ? indvars_iv_next320_dup_reg_2088 : select_ln11_reg_2076);
assign k_fu_1391_p2 = (k_mid2_reg_2093 + 4'd2);
assign k_mid2_fu_1224_p3 = ((empty_fu_1218_p2[0:0] == 1'b1) ? 4'd1 : ap_sig_allocacmp_k21_load);
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
assign select_ln11_1_fu_1253_p3 = ((icmp_ln3725_reg_1044[0:0] == 1'b1) ? 5'd2 : indvars_iv_next32023_fu_148);
assign select_ln11_fu_1192_p3 = ((ap_phi_mux_icmp_ln3725_phi_fu_1047_p4[0:0] == 1'b1) ? 5'd1 : ap_sig_allocacmp_j20_load);
assign select_ln37_1_fu_1790_p3 = ((icmp_ln3725_reg_1044[0:0] == 1'b1) ? 8'd1 : add_ln37_fu_1784_p2);
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
assign sum0_1_fu_1584_p17 = 'bx;
assign sum0_fu_1468_p17 = 'bx;
assign tmp1_cast_cast_cast_fu_1448_p1 = $unsigned(tmp1_cast_cast_fu_1441_p3);
assign tmp1_cast_cast_fu_1441_p3 = {{1'd1}, {j_reg_2134}};
assign tmp2_cast_fu_1458_p1 = tmp1_cast_cast_fu_1441_p3;
assign tmp3_fu_1286_p2 = ($signed(j_fu_1281_p3) + $signed(5'd31));
assign tmp_11_fu_1339_p3 = add_ln44_fu_1334_p2[32'd3];
assign tmp_1_fu_1820_p17 = 'bx;
assign tmp_3_fu_1545_p17 = 'bx;
assign tmp_4_fu_1434_p3 = {{i_reg_2122}, {5'd0}};
assign tmp_5_fu_1623_p17 = 'bx;
assign tmp_8_fu_1681_p17 = 'bx;
assign tmp_9_fu_1905_p17 = 'bx;
assign tmp_s_fu_1739_p17 = 'bx;
assign trunc_ln38_fu_1232_p1 = k_mid2_fu_1224_p3[2:0];
assign xor_ln11_fu_1200_p2 = (ap_phi_mux_icmp_ln3725_phi_fu_1047_p4 ^ 1'd1);
assign zext_ln39_fu_1301_p1 = add_ln_fu_1292_p4;
assign zext_ln40_1_fu_1669_p1 = add_ln40_1_fu_1662_p3;
assign zext_ln40_fu_1514_p1 = add_ln1_fu_1507_p3;
assign zext_ln41_1_fu_1893_p1 = add_ln41_1_fu_1887_p3;
assign zext_ln41_fu_1533_p1 = add_ln2_fu_1526_p3;
assign zext_ln42_1_fu_1379_p1 = add_ln42_1_fu_1369_p4;
assign zext_ln42_fu_1866_p1 = add_ln3_fu_1859_p4;
assign zext_ln43_1_fu_1727_p1 = add_ln43_1_fu_1720_p4;
assign zext_ln43_fu_1322_p1 = add_ln4_fu_1313_p4;
assign zext_ln44_fu_1357_p1 = add_ln44_1_fu_1347_p4;
always @ (posedge ap_clk) begin
    zext_ln39_reg_2145[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln39_reg_2145_pp0_iter1_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln39_reg_2145_pp0_iter2_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln44_reg_2244[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln44_reg_2244_pp0_iter1_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln44_reg_2244_pp0_iter2_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
end
endmodule 