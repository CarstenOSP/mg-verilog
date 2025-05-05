module bbgemm (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,m1_0_address0,m1_0_ce0,m1_0_q0,m1_1_address0,m1_1_ce0,m1_1_q0,m1_2_address0,m1_2_ce0,m1_2_q0,m1_3_address0,m1_3_ce0,m1_3_q0,m1_4_address0,m1_4_ce0,m1_4_q0,m1_5_address0,m1_5_ce0,m1_5_q0,m1_6_address0,m1_6_ce0,m1_6_q0,m1_7_address0,m1_7_ce0,m1_7_q0,m2_0_address0,m2_0_ce0,m2_0_q0,m2_1_address0,m2_1_ce0,m2_1_q0,m2_2_address0,m2_2_ce0,m2_2_q0,m2_3_address0,m2_3_ce0,m2_3_q0,m2_4_address0,m2_4_ce0,m2_4_q0,m2_5_address0,m2_5_ce0,m2_5_q0,m2_6_address0,m2_6_ce0,m2_6_q0,m2_7_address0,m2_7_ce0,m2_7_q0,prod_0_address0,prod_0_ce0,prod_0_we0,prod_0_d0,prod_0_q0,prod_1_address0,prod_1_ce0,prod_1_we0,prod_1_d0,prod_1_q0,prod_2_address0,prod_2_ce0,prod_2_we0,prod_2_d0,prod_2_q0,prod_3_address0,prod_3_ce0,prod_3_we0,prod_3_d0,prod_3_q0,prod_4_address0,prod_4_ce0,prod_4_we0,prod_4_d0,prod_4_q0,prod_5_address0,prod_5_ce0,prod_5_we0,prod_5_d0,prod_5_q0,prod_6_address0,prod_6_ce0,prod_6_we0,prod_6_d0,prod_6_q0,prod_7_address0,prod_7_ce0,prod_7_we0,prod_7_d0,prod_7_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] m1_0_address0;
output   m1_0_ce0;
input  [63:0] m1_0_q0;
output  [8:0] m1_1_address0;
output   m1_1_ce0;
input  [63:0] m1_1_q0;
output  [8:0] m1_2_address0;
output   m1_2_ce0;
input  [63:0] m1_2_q0;
output  [8:0] m1_3_address0;
output   m1_3_ce0;
input  [63:0] m1_3_q0;
output  [8:0] m1_4_address0;
output   m1_4_ce0;
input  [63:0] m1_4_q0;
output  [8:0] m1_5_address0;
output   m1_5_ce0;
input  [63:0] m1_5_q0;
output  [8:0] m1_6_address0;
output   m1_6_ce0;
input  [63:0] m1_6_q0;
output  [8:0] m1_7_address0;
output   m1_7_ce0;
input  [63:0] m1_7_q0;
output  [8:0] m2_0_address0;
output   m2_0_ce0;
input  [63:0] m2_0_q0;
output  [8:0] m2_1_address0;
output   m2_1_ce0;
input  [63:0] m2_1_q0;
output  [8:0] m2_2_address0;
output   m2_2_ce0;
input  [63:0] m2_2_q0;
output  [8:0] m2_3_address0;
output   m2_3_ce0;
input  [63:0] m2_3_q0;
output  [8:0] m2_4_address0;
output   m2_4_ce0;
input  [63:0] m2_4_q0;
output  [8:0] m2_5_address0;
output   m2_5_ce0;
input  [63:0] m2_5_q0;
output  [8:0] m2_6_address0;
output   m2_6_ce0;
input  [63:0] m2_6_q0;
output  [8:0] m2_7_address0;
output   m2_7_ce0;
input  [63:0] m2_7_q0;
output  [8:0] prod_0_address0;
output   prod_0_ce0;
output   prod_0_we0;
output  [63:0] prod_0_d0;
input  [63:0] prod_0_q0;
output  [8:0] prod_1_address0;
output   prod_1_ce0;
output   prod_1_we0;
output  [63:0] prod_1_d0;
input  [63:0] prod_1_q0;
output  [8:0] prod_2_address0;
output   prod_2_ce0;
output   prod_2_we0;
output  [63:0] prod_2_d0;
input  [63:0] prod_2_q0;
output  [8:0] prod_3_address0;
output   prod_3_ce0;
output   prod_3_we0;
output  [63:0] prod_3_d0;
input  [63:0] prod_3_q0;
output  [8:0] prod_4_address0;
output   prod_4_ce0;
output   prod_4_we0;
output  [63:0] prod_4_d0;
input  [63:0] prod_4_q0;
output  [8:0] prod_5_address0;
output   prod_5_ce0;
output   prod_5_we0;
output  [63:0] prod_5_d0;
input  [63:0] prod_5_q0;
output  [8:0] prod_6_address0;
output   prod_6_ce0;
output   prod_6_we0;
output  [63:0] prod_6_d0;
input  [63:0] prod_6_q0;
output  [8:0] prod_7_address0;
output   prod_7_ce0;
output   prod_7_we0;
output  [63:0] prod_7_d0;
input  [63:0] prod_7_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
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
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
wire   [0:0] icmp_ln15_fu_951_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln1688_reg_500;
wire   [0:0] and_ln11_2_fu_614_p2;
reg   [0:0] and_ln11_2_reg_1312;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] empty_fu_620_p2;
reg   [0:0] empty_reg_1317;
wire   [0:0] exitcond_flatten_mid234_fu_650_p2;
reg   [0:0] exitcond_flatten_mid234_reg_1323;
wire   [0:0] empty_7_fu_662_p2;
reg   [0:0] empty_7_reg_1328;
wire   [0:0] icmp_ln22_mid211_fu_674_p2;
reg   [0:0] icmp_ln22_mid211_reg_1334;
wire   [3:0] j_mid2_fu_692_p3;
reg   [3:0] j_mid2_reg_1339;
wire   [2:0] trunc_ln22_fu_700_p1;
reg   [2:0] trunc_ln22_reg_1344;
reg   [2:0] trunc_ln22_reg_1344_pp0_iter1_reg;
reg   [2:0] trunc_ln22_reg_1344_pp0_iter2_reg;
reg   [2:0] trunc_ln22_reg_1344_pp0_iter3_reg;
reg   [2:0] trunc_ln22_reg_1344_pp0_iter4_reg;
reg   [2:0] trunc_ln22_reg_1344_pp0_iter5_reg;
reg   [2:0] trunc_ln22_reg_1344_pp0_iter6_reg;
reg   [2:0] trunc_ln22_reg_1344_pp0_iter7_reg;
reg   [2:0] trunc_ln22_reg_1344_pp0_iter8_reg;
wire   [2:0] indvars_iv23_udiv_fu_800_p4;
reg   [2:0] indvars_iv23_udiv_reg_1350;
wire    ap_block_pp0_stage1_11001;
reg   [2:0] indvars_iv23_udiv_reg_1350_pp0_iter1_reg;
reg   [2:0] indvars_iv23_udiv_reg_1350_pp0_iter2_reg;
wire   [5:0] empty_10_fu_820_p1;
reg   [5:0] empty_10_reg_1355;
reg   [5:0] empty_10_reg_1355_pp0_iter1_reg;
reg   [5:0] empty_10_reg_1355_pp0_iter2_reg;
wire   [2:0] trunc_ln18_fu_844_p1;
reg   [2:0] trunc_ln18_reg_1400;
wire   [0:0] icmp_ln22_fu_921_p2;
reg   [0:0] icmp_ln22_reg_1445;
wire   [0:0] icmp_ln18_fu_927_p2;
reg   [0:0] icmp_ln18_reg_1450;
wire   [0:0] icmp_ln17_fu_933_p2;
reg   [0:0] icmp_ln17_reg_1455;
wire   [0:0] icmp_ln16_fu_939_p2;
reg   [0:0] icmp_ln16_reg_1460;
reg   [0:0] icmp_ln15_reg_1465;
reg   [0:0] icmp_ln15_reg_1465_pp0_iter1_reg;
reg   [0:0] icmp_ln15_reg_1465_pp0_iter2_reg;
reg   [0:0] icmp_ln15_reg_1465_pp0_iter3_reg;
reg   [0:0] icmp_ln15_reg_1465_pp0_iter4_reg;
reg   [0:0] icmp_ln15_reg_1465_pp0_iter5_reg;
reg   [0:0] icmp_ln15_reg_1465_pp0_iter6_reg;
reg   [0:0] icmp_ln15_reg_1465_pp0_iter7_reg;
reg   [0:0] icmp_ln15_reg_1465_pp0_iter8_reg;
wire   [63:0] temp_x_fu_1039_p19;
reg   [63:0] temp_x_reg_1469;
wire   [63:0] tmp_fu_1110_p19;
reg   [63:0] tmp_reg_1474;
reg   [8:0] prod_0_addr_reg_1479;
reg   [8:0] prod_0_addr_reg_1479_pp0_iter4_reg;
reg   [8:0] prod_0_addr_reg_1479_pp0_iter5_reg;
reg   [8:0] prod_0_addr_reg_1479_pp0_iter6_reg;
reg   [8:0] prod_0_addr_reg_1479_pp0_iter7_reg;
reg   [8:0] prod_0_addr_reg_1479_pp0_iter8_reg;
reg   [8:0] prod_1_addr_reg_1484;
reg   [8:0] prod_1_addr_reg_1484_pp0_iter4_reg;
reg   [8:0] prod_1_addr_reg_1484_pp0_iter5_reg;
reg   [8:0] prod_1_addr_reg_1484_pp0_iter6_reg;
reg   [8:0] prod_1_addr_reg_1484_pp0_iter7_reg;
reg   [8:0] prod_1_addr_reg_1484_pp0_iter8_reg;
reg   [8:0] prod_2_addr_reg_1489;
reg   [8:0] prod_2_addr_reg_1489_pp0_iter4_reg;
reg   [8:0] prod_2_addr_reg_1489_pp0_iter5_reg;
reg   [8:0] prod_2_addr_reg_1489_pp0_iter6_reg;
reg   [8:0] prod_2_addr_reg_1489_pp0_iter7_reg;
reg   [8:0] prod_2_addr_reg_1489_pp0_iter8_reg;
reg   [8:0] prod_3_addr_reg_1494;
reg   [8:0] prod_3_addr_reg_1494_pp0_iter4_reg;
reg   [8:0] prod_3_addr_reg_1494_pp0_iter5_reg;
reg   [8:0] prod_3_addr_reg_1494_pp0_iter6_reg;
reg   [8:0] prod_3_addr_reg_1494_pp0_iter7_reg;
reg   [8:0] prod_3_addr_reg_1494_pp0_iter8_reg;
reg   [8:0] prod_4_addr_reg_1499;
reg   [8:0] prod_4_addr_reg_1499_pp0_iter4_reg;
reg   [8:0] prod_4_addr_reg_1499_pp0_iter5_reg;
reg   [8:0] prod_4_addr_reg_1499_pp0_iter6_reg;
reg   [8:0] prod_4_addr_reg_1499_pp0_iter7_reg;
reg   [8:0] prod_4_addr_reg_1499_pp0_iter8_reg;
reg   [8:0] prod_5_addr_reg_1504;
reg   [8:0] prod_5_addr_reg_1504_pp0_iter4_reg;
reg   [8:0] prod_5_addr_reg_1504_pp0_iter5_reg;
reg   [8:0] prod_5_addr_reg_1504_pp0_iter6_reg;
reg   [8:0] prod_5_addr_reg_1504_pp0_iter7_reg;
reg   [8:0] prod_5_addr_reg_1504_pp0_iter8_reg;
reg   [8:0] prod_6_addr_reg_1509;
reg   [8:0] prod_6_addr_reg_1509_pp0_iter4_reg;
reg   [8:0] prod_6_addr_reg_1509_pp0_iter5_reg;
reg   [8:0] prod_6_addr_reg_1509_pp0_iter6_reg;
reg   [8:0] prod_6_addr_reg_1509_pp0_iter7_reg;
reg   [8:0] prod_6_addr_reg_1509_pp0_iter8_reg;
reg   [8:0] prod_7_addr_reg_1514;
reg   [8:0] prod_7_addr_reg_1514_pp0_iter4_reg;
reg   [8:0] prod_7_addr_reg_1514_pp0_iter5_reg;
reg   [8:0] prod_7_addr_reg_1514_pp0_iter6_reg;
reg   [8:0] prod_7_addr_reg_1514_pp0_iter7_reg;
reg   [8:0] prod_7_addr_reg_1514_pp0_iter8_reg;
wire   [63:0] tmp_1_fu_1199_p19;
reg   [63:0] tmp_1_reg_1519;
wire   [63:0] grp_fu_545_p2;
reg   [63:0] mul_reg_1524;
wire   [63:0] bitcast_ln24_8_fu_1238_p1;
reg   [63:0] bitcast_ln24_8_reg_1529;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg   [0:0] ap_phi_mux_icmp_ln1688_phi_fu_503_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1787_phi_fu_514_p4;
reg   [0:0] ap_phi_mux_icmp_ln1886_phi_fu_524_p4;
reg   [0:0] ap_phi_mux_icmp_ln2285_phi_fu_534_p4;
wire   [63:0] p_cast_fu_832_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] p_cast3_fu_858_p1;
wire   [63:0] p_cast2_fu_1155_p1;
reg   [17:0] indvar_flatten6876_fu_148;
wire   [17:0] add_ln15_1_fu_870_p2;
reg   [6:0] jj77_fu_152;
wire   [6:0] jj_fu_739_p3;
reg   [16:0] indvar_flatten3578_fu_156;
wire   [16:0] select_ln16_1_fu_913_p3;
reg   [6:0] kk79_fu_160;
wire   [6:0] kk_fu_760_p3;
reg   [13:0] indvar_flatten1280_fu_164;
wire   [13:0] select_ln17_1_fu_900_p3;
reg   [6:0] i81_fu_168;
wire   [6:0] i_fu_780_p3;
reg   [7:0] indvar_flatten82_fu_172;
wire   [7:0] select_ln18_1_fu_887_p3;
reg   [3:0] k83_fu_176;
wire   [3:0] k_fu_793_p3;
reg   [3:0] j84_fu_180;
wire   [3:0] j_fu_876_p2;
reg   [3:0] ap_sig_allocacmp_j84_load;
reg   [6:0] add_ln1589_fu_184;
wire   [6:0] add_ln15_fu_945_p2;
reg    m1_0_ce0_local;
reg    m1_1_ce0_local;
reg    m1_2_ce0_local;
reg    m1_3_ce0_local;
reg    m1_4_ce0_local;
reg    m1_5_ce0_local;
reg    m1_6_ce0_local;
reg    m1_7_ce0_local;
reg    m2_0_ce0_local;
reg    m2_1_ce0_local;
reg    m2_2_ce0_local;
reg    m2_3_ce0_local;
reg    m2_4_ce0_local;
reg    m2_5_ce0_local;
reg    m2_6_ce0_local;
reg    m2_7_ce0_local;
reg    prod_0_ce0_local;
reg   [8:0] prod_0_address0_local;
reg    prod_0_we0_local;
reg    prod_1_ce0_local;
reg   [8:0] prod_1_address0_local;
reg    prod_1_we0_local;
reg    prod_2_ce0_local;
reg   [8:0] prod_2_address0_local;
reg    prod_2_we0_local;
reg    prod_3_ce0_local;
reg   [8:0] prod_3_address0_local;
reg    prod_3_we0_local;
reg    prod_4_ce0_local;
reg   [8:0] prod_4_address0_local;
reg    prod_4_we0_local;
reg    prod_5_ce0_local;
reg   [8:0] prod_5_address0_local;
reg    prod_5_we0_local;
reg    prod_6_ce0_local;
reg   [8:0] prod_6_address0_local;
reg    prod_6_we0_local;
reg    prod_7_ce0_local;
reg   [8:0] prod_7_address0_local;
reg    prod_7_we0_local;
wire   [0:0] xor_ln11_fu_602_p2;
wire   [0:0] exitcond_flatten14_not_fu_626_p2;
wire   [0:0] and_ln11_fu_608_p2;
wire   [0:0] not_exitcond_flatten14_mid267_fu_632_p2;
wire   [0:0] and_ln11_1_fu_644_p2;
wire   [0:0] empty_6_fu_656_p2;
wire   [0:0] icmp_ln22_mid230_fu_638_p2;
wire   [0:0] not_exitcond_flatten_mid234_fu_668_p2;
wire   [0:0] empty_8_fu_680_p2;
wire   [0:0] empty_9_fu_686_p2;
wire   [6:0] select_ln11_fu_731_p3;
wire   [6:0] add_ln16_fu_747_p2;
wire   [6:0] i_mid219_fu_753_p3;
wire   [6:0] add_ln17_fu_767_p2;
wire   [3:0] k_mid26_fu_773_p3;
wire   [3:0] add_ln18_fu_787_p2;
wire   [2:0] indvars_iv21_udiv_fu_810_p4;
wire   [8:0] tmp_3_fu_824_p3;
wire   [8:0] tmp_7_fu_848_p4;
wire   [7:0] add_ln18_1_fu_881_p2;
wire   [13:0] add_ln17_1_fu_894_p2;
wire   [16:0] add_ln16_1_fu_907_p2;
wire   [63:0] temp_x_fu_1039_p2;
wire   [63:0] temp_x_fu_1039_p4;
wire   [63:0] temp_x_fu_1039_p6;
wire   [63:0] temp_x_fu_1039_p8;
wire   [63:0] temp_x_fu_1039_p10;
wire   [63:0] temp_x_fu_1039_p12;
wire   [63:0] temp_x_fu_1039_p14;
wire   [63:0] temp_x_fu_1039_p16;
wire   [63:0] temp_x_fu_1039_p17;
wire   [63:0] tmp_fu_1110_p2;
wire   [63:0] tmp_fu_1110_p4;
wire   [63:0] tmp_fu_1110_p6;
wire   [63:0] tmp_fu_1110_p8;
wire   [63:0] tmp_fu_1110_p10;
wire   [63:0] tmp_fu_1110_p12;
wire   [63:0] tmp_fu_1110_p14;
wire   [63:0] tmp_fu_1110_p16;
wire   [63:0] tmp_fu_1110_p17;
wire   [8:0] tmp_5_fu_1149_p3;
wire   [63:0] tmp_1_fu_1199_p2;
wire   [63:0] tmp_1_fu_1199_p4;
wire   [63:0] tmp_1_fu_1199_p6;
wire   [63:0] tmp_1_fu_1199_p8;
wire   [63:0] tmp_1_fu_1199_p10;
wire   [63:0] tmp_1_fu_1199_p12;
wire   [63:0] tmp_1_fu_1199_p14;
wire   [63:0] tmp_1_fu_1199_p16;
wire   [63:0] tmp_1_fu_1199_p17;
wire   [63:0] grp_fu_541_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter9_stage0;
reg    ap_idle_pp0_0to8;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to9;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1080;
reg    ap_condition_1084;
reg    ap_condition_1089;
wire   [2:0] temp_x_fu_1039_p1;
wire   [2:0] temp_x_fu_1039_p3;
wire   [2:0] temp_x_fu_1039_p5;
wire   [2:0] temp_x_fu_1039_p7;
wire  signed [2:0] temp_x_fu_1039_p9;
wire  signed [2:0] temp_x_fu_1039_p11;
wire  signed [2:0] temp_x_fu_1039_p13;
wire  signed [2:0] temp_x_fu_1039_p15;
wire   [2:0] tmp_fu_1110_p1;
wire   [2:0] tmp_fu_1110_p3;
wire   [2:0] tmp_fu_1110_p5;
wire   [2:0] tmp_fu_1110_p7;
wire  signed [2:0] tmp_fu_1110_p9;
wire  signed [2:0] tmp_fu_1110_p11;
wire  signed [2:0] tmp_fu_1110_p13;
wire  signed [2:0] tmp_fu_1110_p15;
wire   [2:0] tmp_1_fu_1199_p1;
wire   [2:0] tmp_1_fu_1199_p3;
wire   [2:0] tmp_1_fu_1199_p5;
wire   [2:0] tmp_1_fu_1199_p7;
wire  signed [2:0] tmp_1_fu_1199_p9;
wire  signed [2:0] tmp_1_fu_1199_p11;
wire  signed [2:0] tmp_1_fu_1199_p13;
wire  signed [2:0] tmp_1_fu_1199_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
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
#0 indvar_flatten6876_fu_148 = 18'd0;
#0 jj77_fu_152 = 7'd0;
#0 indvar_flatten3578_fu_156 = 17'd0;
#0 kk79_fu_160 = 7'd0;
#0 indvar_flatten1280_fu_164 = 14'd0;
#0 i81_fu_168 = 7'd0;
#0 indvar_flatten82_fu_172 = 8'd0;
#0 k83_fu_176 = 4'd0;
#0 j84_fu_180 = 4'd0;
#0 add_ln1589_fu_184 = 7'd0;
#0 ap_done_reg = 1'b0;
end
bbgemm_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(tmp_1_reg_1519),.din1(mul_reg_1524),.ce(1'b1),.dout(grp_fu_541_p2));
bbgemm_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(temp_x_reg_1469),.din1(tmp_reg_1474),.ce(1'b1),.dout(grp_fu_545_p2));
(* dissolve_hierarchy = "yes" *) bbgemm_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U3(.din0(temp_x_fu_1039_p2),.din1(temp_x_fu_1039_p4),.din2(temp_x_fu_1039_p6),.din3(temp_x_fu_1039_p8),.din4(temp_x_fu_1039_p10),.din5(temp_x_fu_1039_p12),.din6(temp_x_fu_1039_p14),.din7(temp_x_fu_1039_p16),.def(temp_x_fu_1039_p17),.sel(trunc_ln18_reg_1400),.dout(temp_x_fu_1039_p19));
(* dissolve_hierarchy = "yes" *) bbgemm_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U4(.din0(tmp_fu_1110_p2),.din1(tmp_fu_1110_p4),.din2(tmp_fu_1110_p6),.din3(tmp_fu_1110_p8),.din4(tmp_fu_1110_p10),.din5(tmp_fu_1110_p12),.din6(tmp_fu_1110_p14),.din7(tmp_fu_1110_p16),.def(tmp_fu_1110_p17),.sel(trunc_ln22_reg_1344),.dout(tmp_fu_1110_p19));
(* dissolve_hierarchy = "yes" *) bbgemm_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U5(.din0(tmp_1_fu_1199_p2),.din1(tmp_1_fu_1199_p4),.din2(tmp_1_fu_1199_p6),.din3(tmp_1_fu_1199_p8),.din4(tmp_1_fu_1199_p10),.din5(tmp_1_fu_1199_p12),.din6(tmp_1_fu_1199_p14),.din7(tmp_1_fu_1199_p16),.def(tmp_1_fu_1199_p17),.sel(trunc_ln22_reg_1344_pp0_iter3_reg),.dout(tmp_1_fu_1199_p19));
bbgemm_flow_control_loop_pipe flow_control_loop_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(1'b1));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter9 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1080)) begin
            add_ln1589_fu_184 <= 7'd8;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            add_ln1589_fu_184 <= add_ln15_fu_945_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter9_stage0) & (ap_idle_pp0_0to8 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter9_stage0) & (ap_idle_pp0_0to8 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter9_stage0) & (ap_idle_pp0_0to8 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter9_stage0) & (ap_idle_pp0_0to8 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter9_stage0) & (ap_idle_pp0_0to8 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter9_stage0) & (ap_idle_pp0_0to8 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter9_stage0) & (ap_idle_pp0_0to8 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter9_stage0) & (ap_idle_pp0_0to8 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b0)) | ((1'b1 == ap_condition_exit_pp0_iter9_stage0) & (ap_idle_pp0_0to8 == 1'b1)))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1080)) begin
            i81_fu_168 <= 7'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            i81_fu_168 <= i_fu_780_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1089)) begin
            icmp_ln1688_reg_500 <= icmp_ln16_reg_1460;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln1688_reg_500 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1080)) begin
            indvar_flatten1280_fu_164 <= 14'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            indvar_flatten1280_fu_164 <= select_ln17_1_fu_900_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1080)) begin
            indvar_flatten3578_fu_156 <= 17'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            indvar_flatten3578_fu_156 <= select_ln16_1_fu_913_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1080)) begin
            indvar_flatten6876_fu_148 <= 18'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            indvar_flatten6876_fu_148 <= add_ln15_1_fu_870_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1080)) begin
            indvar_flatten82_fu_172 <= 8'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            indvar_flatten82_fu_172 <= select_ln18_1_fu_887_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1080)) begin
            j84_fu_180 <= 4'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            j84_fu_180 <= j_fu_876_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1080)) begin
            jj77_fu_152 <= 7'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            jj77_fu_152 <= jj_fu_739_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1080)) begin
            k83_fu_176 <= 4'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            k83_fu_176 <= k_fu_793_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1080)) begin
            kk79_fu_160 <= 7'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            kk79_fu_160 <= kk_fu_760_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        and_ln11_2_reg_1312 <= and_ln11_2_fu_614_p2;
        empty_7_reg_1328 <= empty_7_fu_662_p2;
        empty_reg_1317 <= empty_fu_620_p2;
        exitcond_flatten_mid234_reg_1323 <= exitcond_flatten_mid234_fu_650_p2;
        icmp_ln22_mid211_reg_1334 <= icmp_ln22_mid211_fu_674_p2;
        j_mid2_reg_1339 <= j_mid2_fu_692_p3;
        temp_x_reg_1469 <= temp_x_fu_1039_p19;
        tmp_1_reg_1519 <= tmp_1_fu_1199_p19;
        tmp_reg_1474 <= tmp_fu_1110_p19;
        trunc_ln22_reg_1344 <= trunc_ln22_fu_700_p1;
        trunc_ln22_reg_1344_pp0_iter1_reg <= trunc_ln22_reg_1344;
        trunc_ln22_reg_1344_pp0_iter2_reg <= trunc_ln22_reg_1344_pp0_iter1_reg;
        trunc_ln22_reg_1344_pp0_iter3_reg <= trunc_ln22_reg_1344_pp0_iter2_reg;
        trunc_ln22_reg_1344_pp0_iter4_reg <= trunc_ln22_reg_1344_pp0_iter3_reg;
        trunc_ln22_reg_1344_pp0_iter5_reg <= trunc_ln22_reg_1344_pp0_iter4_reg;
        trunc_ln22_reg_1344_pp0_iter6_reg <= trunc_ln22_reg_1344_pp0_iter5_reg;
        trunc_ln22_reg_1344_pp0_iter7_reg <= trunc_ln22_reg_1344_pp0_iter6_reg;
        trunc_ln22_reg_1344_pp0_iter8_reg <= trunc_ln22_reg_1344_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bitcast_ln24_8_reg_1529 <= bitcast_ln24_8_fu_1238_p1;
        empty_10_reg_1355 <= empty_10_fu_820_p1;
        empty_10_reg_1355_pp0_iter1_reg <= empty_10_reg_1355;
        empty_10_reg_1355_pp0_iter2_reg <= empty_10_reg_1355_pp0_iter1_reg;
        icmp_ln15_reg_1465 <= icmp_ln15_fu_951_p2;
        icmp_ln15_reg_1465_pp0_iter1_reg <= icmp_ln15_reg_1465;
        icmp_ln15_reg_1465_pp0_iter2_reg <= icmp_ln15_reg_1465_pp0_iter1_reg;
        icmp_ln15_reg_1465_pp0_iter3_reg <= icmp_ln15_reg_1465_pp0_iter2_reg;
        icmp_ln15_reg_1465_pp0_iter4_reg <= icmp_ln15_reg_1465_pp0_iter3_reg;
        icmp_ln15_reg_1465_pp0_iter5_reg <= icmp_ln15_reg_1465_pp0_iter4_reg;
        icmp_ln15_reg_1465_pp0_iter6_reg <= icmp_ln15_reg_1465_pp0_iter5_reg;
        icmp_ln15_reg_1465_pp0_iter7_reg <= icmp_ln15_reg_1465_pp0_iter6_reg;
        icmp_ln15_reg_1465_pp0_iter8_reg <= icmp_ln15_reg_1465_pp0_iter7_reg;
        indvars_iv23_udiv_reg_1350 <= {{jj_fu_739_p3[5:3]}};
        indvars_iv23_udiv_reg_1350_pp0_iter1_reg <= indvars_iv23_udiv_reg_1350;
        indvars_iv23_udiv_reg_1350_pp0_iter2_reg <= indvars_iv23_udiv_reg_1350_pp0_iter1_reg;
        mul_reg_1524 <= grp_fu_545_p2;
        prod_0_addr_reg_1479 <= p_cast2_fu_1155_p1;
        prod_0_addr_reg_1479_pp0_iter4_reg <= prod_0_addr_reg_1479;
        prod_0_addr_reg_1479_pp0_iter5_reg <= prod_0_addr_reg_1479_pp0_iter4_reg;
        prod_0_addr_reg_1479_pp0_iter6_reg <= prod_0_addr_reg_1479_pp0_iter5_reg;
        prod_0_addr_reg_1479_pp0_iter7_reg <= prod_0_addr_reg_1479_pp0_iter6_reg;
        prod_0_addr_reg_1479_pp0_iter8_reg <= prod_0_addr_reg_1479_pp0_iter7_reg;
        prod_1_addr_reg_1484 <= p_cast2_fu_1155_p1;
        prod_1_addr_reg_1484_pp0_iter4_reg <= prod_1_addr_reg_1484;
        prod_1_addr_reg_1484_pp0_iter5_reg <= prod_1_addr_reg_1484_pp0_iter4_reg;
        prod_1_addr_reg_1484_pp0_iter6_reg <= prod_1_addr_reg_1484_pp0_iter5_reg;
        prod_1_addr_reg_1484_pp0_iter7_reg <= prod_1_addr_reg_1484_pp0_iter6_reg;
        prod_1_addr_reg_1484_pp0_iter8_reg <= prod_1_addr_reg_1484_pp0_iter7_reg;
        prod_2_addr_reg_1489 <= p_cast2_fu_1155_p1;
        prod_2_addr_reg_1489_pp0_iter4_reg <= prod_2_addr_reg_1489;
        prod_2_addr_reg_1489_pp0_iter5_reg <= prod_2_addr_reg_1489_pp0_iter4_reg;
        prod_2_addr_reg_1489_pp0_iter6_reg <= prod_2_addr_reg_1489_pp0_iter5_reg;
        prod_2_addr_reg_1489_pp0_iter7_reg <= prod_2_addr_reg_1489_pp0_iter6_reg;
        prod_2_addr_reg_1489_pp0_iter8_reg <= prod_2_addr_reg_1489_pp0_iter7_reg;
        prod_3_addr_reg_1494 <= p_cast2_fu_1155_p1;
        prod_3_addr_reg_1494_pp0_iter4_reg <= prod_3_addr_reg_1494;
        prod_3_addr_reg_1494_pp0_iter5_reg <= prod_3_addr_reg_1494_pp0_iter4_reg;
        prod_3_addr_reg_1494_pp0_iter6_reg <= prod_3_addr_reg_1494_pp0_iter5_reg;
        prod_3_addr_reg_1494_pp0_iter7_reg <= prod_3_addr_reg_1494_pp0_iter6_reg;
        prod_3_addr_reg_1494_pp0_iter8_reg <= prod_3_addr_reg_1494_pp0_iter7_reg;
        prod_4_addr_reg_1499 <= p_cast2_fu_1155_p1;
        prod_4_addr_reg_1499_pp0_iter4_reg <= prod_4_addr_reg_1499;
        prod_4_addr_reg_1499_pp0_iter5_reg <= prod_4_addr_reg_1499_pp0_iter4_reg;
        prod_4_addr_reg_1499_pp0_iter6_reg <= prod_4_addr_reg_1499_pp0_iter5_reg;
        prod_4_addr_reg_1499_pp0_iter7_reg <= prod_4_addr_reg_1499_pp0_iter6_reg;
        prod_4_addr_reg_1499_pp0_iter8_reg <= prod_4_addr_reg_1499_pp0_iter7_reg;
        prod_5_addr_reg_1504 <= p_cast2_fu_1155_p1;
        prod_5_addr_reg_1504_pp0_iter4_reg <= prod_5_addr_reg_1504;
        prod_5_addr_reg_1504_pp0_iter5_reg <= prod_5_addr_reg_1504_pp0_iter4_reg;
        prod_5_addr_reg_1504_pp0_iter6_reg <= prod_5_addr_reg_1504_pp0_iter5_reg;
        prod_5_addr_reg_1504_pp0_iter7_reg <= prod_5_addr_reg_1504_pp0_iter6_reg;
        prod_5_addr_reg_1504_pp0_iter8_reg <= prod_5_addr_reg_1504_pp0_iter7_reg;
        prod_6_addr_reg_1509 <= p_cast2_fu_1155_p1;
        prod_6_addr_reg_1509_pp0_iter4_reg <= prod_6_addr_reg_1509;
        prod_6_addr_reg_1509_pp0_iter5_reg <= prod_6_addr_reg_1509_pp0_iter4_reg;
        prod_6_addr_reg_1509_pp0_iter6_reg <= prod_6_addr_reg_1509_pp0_iter5_reg;
        prod_6_addr_reg_1509_pp0_iter7_reg <= prod_6_addr_reg_1509_pp0_iter6_reg;
        prod_6_addr_reg_1509_pp0_iter8_reg <= prod_6_addr_reg_1509_pp0_iter7_reg;
        prod_7_addr_reg_1514 <= p_cast2_fu_1155_p1;
        prod_7_addr_reg_1514_pp0_iter4_reg <= prod_7_addr_reg_1514;
        prod_7_addr_reg_1514_pp0_iter5_reg <= prod_7_addr_reg_1514_pp0_iter4_reg;
        prod_7_addr_reg_1514_pp0_iter6_reg <= prod_7_addr_reg_1514_pp0_iter5_reg;
        prod_7_addr_reg_1514_pp0_iter7_reg <= prod_7_addr_reg_1514_pp0_iter6_reg;
        prod_7_addr_reg_1514_pp0_iter8_reg <= prod_7_addr_reg_1514_pp0_iter7_reg;
        trunc_ln18_reg_1400 <= trunc_ln18_fu_844_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln16_reg_1460 <= icmp_ln16_fu_939_p2;
        icmp_ln17_reg_1455 <= icmp_ln17_fu_933_p2;
        icmp_ln18_reg_1450 <= icmp_ln18_fu_927_p2;
        icmp_ln22_reg_1445 <= icmp_ln22_fu_921_p2;
    end
end
always @ (*) begin
    if (((icmp_ln15_fu_951_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln15_reg_1465_pp0_iter8_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter9_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter9_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to8 = 1'b1;
    end else begin
        ap_idle_pp0_0to8 = 1'b0;
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1084)) begin
            ap_phi_mux_icmp_ln1688_phi_fu_503_p4 = icmp_ln16_reg_1460;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1688_phi_fu_503_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1688_phi_fu_503_p4 = icmp_ln16_reg_1460;
        end
    end else begin
        ap_phi_mux_icmp_ln1688_phi_fu_503_p4 = icmp_ln16_reg_1460;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1084)) begin
            ap_phi_mux_icmp_ln1787_phi_fu_514_p4 = icmp_ln17_reg_1455;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1787_phi_fu_514_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1787_phi_fu_514_p4 = icmp_ln17_reg_1455;
        end
    end else begin
        ap_phi_mux_icmp_ln1787_phi_fu_514_p4 = icmp_ln17_reg_1455;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1084)) begin
            ap_phi_mux_icmp_ln1886_phi_fu_524_p4 = icmp_ln18_reg_1450;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1886_phi_fu_524_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1886_phi_fu_524_p4 = icmp_ln18_reg_1450;
        end
    end else begin
        ap_phi_mux_icmp_ln1886_phi_fu_524_p4 = icmp_ln18_reg_1450;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1084)) begin
            ap_phi_mux_icmp_ln2285_phi_fu_534_p4 = icmp_ln22_reg_1445;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln2285_phi_fu_534_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln2285_phi_fu_534_p4 = icmp_ln22_reg_1445;
        end
    end else begin
        ap_phi_mux_icmp_ln2285_phi_fu_534_p4 = icmp_ln22_reg_1445;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j84_load = 4'd0;
    end else begin
        ap_sig_allocacmp_j84_load = j84_fu_180;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_0_ce0_local = 1'b1;
    end else begin
        m1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_1_ce0_local = 1'b1;
    end else begin
        m1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_2_ce0_local = 1'b1;
    end else begin
        m1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_3_ce0_local = 1'b1;
    end else begin
        m1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_4_ce0_local = 1'b1;
    end else begin
        m1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_5_ce0_local = 1'b1;
    end else begin
        m1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_6_ce0_local = 1'b1;
    end else begin
        m1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_7_ce0_local = 1'b1;
    end else begin
        m1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m2_0_ce0_local = 1'b1;
    end else begin
        m2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m2_1_ce0_local = 1'b1;
    end else begin
        m2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m2_2_ce0_local = 1'b1;
    end else begin
        m2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m2_3_ce0_local = 1'b1;
    end else begin
        m2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m2_4_ce0_local = 1'b1;
    end else begin
        m2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m2_5_ce0_local = 1'b1;
    end else begin
        m2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m2_6_ce0_local = 1'b1;
    end else begin
        m2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m2_7_ce0_local = 1'b1;
    end else begin
        m2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prod_0_address0_local = prod_0_addr_reg_1479_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        prod_0_address0_local = p_cast2_fu_1155_p1;
    end else begin
        prod_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        prod_0_ce0_local = 1'b1;
    end else begin
        prod_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln22_reg_1344_pp0_iter8_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prod_0_we0_local = 1'b1;
    end else begin
        prod_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prod_1_address0_local = prod_1_addr_reg_1484_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        prod_1_address0_local = p_cast2_fu_1155_p1;
    end else begin
        prod_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        prod_1_ce0_local = 1'b1;
    end else begin
        prod_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln22_reg_1344_pp0_iter8_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prod_1_we0_local = 1'b1;
    end else begin
        prod_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prod_2_address0_local = prod_2_addr_reg_1489_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        prod_2_address0_local = p_cast2_fu_1155_p1;
    end else begin
        prod_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        prod_2_ce0_local = 1'b1;
    end else begin
        prod_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln22_reg_1344_pp0_iter8_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prod_2_we0_local = 1'b1;
    end else begin
        prod_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prod_3_address0_local = prod_3_addr_reg_1494_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        prod_3_address0_local = p_cast2_fu_1155_p1;
    end else begin
        prod_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        prod_3_ce0_local = 1'b1;
    end else begin
        prod_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln22_reg_1344_pp0_iter8_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prod_3_we0_local = 1'b1;
    end else begin
        prod_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prod_4_address0_local = prod_4_addr_reg_1499_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        prod_4_address0_local = p_cast2_fu_1155_p1;
    end else begin
        prod_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        prod_4_ce0_local = 1'b1;
    end else begin
        prod_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln22_reg_1344_pp0_iter8_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prod_4_we0_local = 1'b1;
    end else begin
        prod_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prod_5_address0_local = prod_5_addr_reg_1504_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        prod_5_address0_local = p_cast2_fu_1155_p1;
    end else begin
        prod_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        prod_5_ce0_local = 1'b1;
    end else begin
        prod_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln22_reg_1344_pp0_iter8_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prod_5_we0_local = 1'b1;
    end else begin
        prod_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prod_6_address0_local = prod_6_addr_reg_1509_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        prod_6_address0_local = p_cast2_fu_1155_p1;
    end else begin
        prod_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        prod_6_ce0_local = 1'b1;
    end else begin
        prod_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln22_reg_1344_pp0_iter8_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prod_6_we0_local = 1'b1;
    end else begin
        prod_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prod_7_address0_local = prod_7_addr_reg_1514_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        prod_7_address0_local = p_cast2_fu_1155_p1;
    end else begin
        prod_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        prod_7_ce0_local = 1'b1;
    end else begin
        prod_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln22_reg_1344_pp0_iter8_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prod_7_we0_local = 1'b1;
    end else begin
        prod_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter9_stage0) & (ap_idle_pp0_0to8 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to9 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln15_1_fu_870_p2 = (indvar_flatten6876_fu_148 + 18'd1);
assign add_ln15_fu_945_p2 = (jj_fu_739_p3 + 7'd8);
assign add_ln16_1_fu_907_p2 = (indvar_flatten3578_fu_156 + 17'd1);
assign add_ln16_fu_747_p2 = (select_ln11_fu_731_p3 + 7'd8);
assign add_ln17_1_fu_894_p2 = (indvar_flatten1280_fu_164 + 14'd1);
assign add_ln17_fu_767_p2 = (i_mid219_fu_753_p3 + 7'd1);
assign add_ln18_1_fu_881_p2 = (indvar_flatten82_fu_172 + 8'd1);
assign add_ln18_fu_787_p2 = (k_mid26_fu_773_p3 + 4'd1);
assign and_ln11_1_fu_644_p2 = (xor_ln11_fu_602_p2 & ap_phi_mux_icmp_ln1886_phi_fu_524_p4);
assign and_ln11_2_fu_614_p2 = (xor_ln11_fu_602_p2 & ap_phi_mux_icmp_ln1787_phi_fu_514_p4);
assign and_ln11_fu_608_p2 = (xor_ln11_fu_602_p2 & ap_phi_mux_icmp_ln2285_phi_fu_534_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1080 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1084 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln15_reg_1465 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_1089 = ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln15_reg_1465 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign bitcast_ln24_8_fu_1238_p1 = grp_fu_541_p2;
assign empty_10_fu_820_p1 = i_fu_780_p3[5:0];
assign empty_6_fu_656_p2 = (exitcond_flatten_mid234_fu_650_p2 | and_ln11_2_fu_614_p2);
assign empty_7_fu_662_p2 = (empty_6_fu_656_p2 | ap_phi_mux_icmp_ln1688_phi_fu_503_p4);
assign empty_8_fu_680_p2 = (icmp_ln22_mid211_fu_674_p2 | exitcond_flatten_mid234_fu_650_p2);
assign empty_9_fu_686_p2 = (empty_fu_620_p2 | empty_8_fu_680_p2);
assign empty_fu_620_p2 = (ap_phi_mux_icmp_ln1688_phi_fu_503_p4 | and_ln11_2_fu_614_p2);
assign exitcond_flatten14_not_fu_626_p2 = (ap_phi_mux_icmp_ln1787_phi_fu_514_p4 ^ 1'd1);
assign exitcond_flatten_mid234_fu_650_p2 = (not_exitcond_flatten14_mid267_fu_632_p2 & and_ln11_1_fu_644_p2);
assign i_fu_780_p3 = ((exitcond_flatten_mid234_reg_1323[0:0] == 1'b1) ? add_ln17_fu_767_p2 : i_mid219_fu_753_p3);
assign i_mid219_fu_753_p3 = ((empty_reg_1317[0:0] == 1'b1) ? 7'd0 : i81_fu_168);
assign icmp_ln15_fu_951_p2 = ((indvar_flatten6876_fu_148 == 18'd262143) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_939_p2 = ((select_ln16_1_fu_913_p3 == 17'd32768) ? 1'b1 : 1'b0);
assign icmp_ln17_fu_933_p2 = ((select_ln17_1_fu_900_p3 == 14'd4096) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_927_p2 = ((select_ln18_1_fu_887_p3 == 8'd64) ? 1'b1 : 1'b0);
assign icmp_ln22_fu_921_p2 = ((j_fu_876_p2 == 4'd8) ? 1'b1 : 1'b0);
assign icmp_ln22_mid211_fu_674_p2 = (not_exitcond_flatten_mid234_fu_668_p2 & icmp_ln22_mid230_fu_638_p2);
assign icmp_ln22_mid230_fu_638_p2 = (not_exitcond_flatten14_mid267_fu_632_p2 & and_ln11_fu_608_p2);
assign indvars_iv21_udiv_fu_810_p4 = {{kk_fu_760_p3[5:3]}};
assign indvars_iv23_udiv_fu_800_p4 = {{jj_fu_739_p3[5:3]}};
assign j_fu_876_p2 = (j_mid2_reg_1339 + 4'd1);
assign j_mid2_fu_692_p3 = ((empty_9_fu_686_p2[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_j84_load);
assign jj_fu_739_p3 = ((icmp_ln1688_reg_500[0:0] == 1'b1) ? add_ln1589_fu_184 : jj77_fu_152);
assign k_fu_793_p3 = ((icmp_ln22_mid211_reg_1334[0:0] == 1'b1) ? add_ln18_fu_787_p2 : k_mid26_fu_773_p3);
assign k_mid26_fu_773_p3 = ((empty_7_reg_1328[0:0] == 1'b1) ? 4'd0 : k83_fu_176);
assign kk_fu_760_p3 = ((and_ln11_2_reg_1312[0:0] == 1'b1) ? add_ln16_fu_747_p2 : select_ln11_fu_731_p3);
assign m1_0_address0 = p_cast_fu_832_p1;
assign m1_0_ce0 = m1_0_ce0_local;
assign m1_1_address0 = p_cast_fu_832_p1;
assign m1_1_ce0 = m1_1_ce0_local;
assign m1_2_address0 = p_cast_fu_832_p1;
assign m1_2_ce0 = m1_2_ce0_local;
assign m1_3_address0 = p_cast_fu_832_p1;
assign m1_3_ce0 = m1_3_ce0_local;
assign m1_4_address0 = p_cast_fu_832_p1;
assign m1_4_ce0 = m1_4_ce0_local;
assign m1_5_address0 = p_cast_fu_832_p1;
assign m1_5_ce0 = m1_5_ce0_local;
assign m1_6_address0 = p_cast_fu_832_p1;
assign m1_6_ce0 = m1_6_ce0_local;
assign m1_7_address0 = p_cast_fu_832_p1;
assign m1_7_ce0 = m1_7_ce0_local;
assign m2_0_address0 = p_cast3_fu_858_p1;
assign m2_0_ce0 = m2_0_ce0_local;
assign m2_1_address0 = p_cast3_fu_858_p1;
assign m2_1_ce0 = m2_1_ce0_local;
assign m2_2_address0 = p_cast3_fu_858_p1;
assign m2_2_ce0 = m2_2_ce0_local;
assign m2_3_address0 = p_cast3_fu_858_p1;
assign m2_3_ce0 = m2_3_ce0_local;
assign m2_4_address0 = p_cast3_fu_858_p1;
assign m2_4_ce0 = m2_4_ce0_local;
assign m2_5_address0 = p_cast3_fu_858_p1;
assign m2_5_ce0 = m2_5_ce0_local;
assign m2_6_address0 = p_cast3_fu_858_p1;
assign m2_6_ce0 = m2_6_ce0_local;
assign m2_7_address0 = p_cast3_fu_858_p1;
assign m2_7_ce0 = m2_7_ce0_local;
assign not_exitcond_flatten14_mid267_fu_632_p2 = (exitcond_flatten14_not_fu_626_p2 | ap_phi_mux_icmp_ln1688_phi_fu_503_p4);
assign not_exitcond_flatten_mid234_fu_668_p2 = (exitcond_flatten_mid234_fu_650_p2 ^ 1'd1);
assign p_cast2_fu_1155_p1 = tmp_5_fu_1149_p3;
assign p_cast3_fu_858_p1 = tmp_7_fu_848_p4;
assign p_cast_fu_832_p1 = tmp_3_fu_824_p3;
assign prod_0_address0 = prod_0_address0_local;
assign prod_0_ce0 = prod_0_ce0_local;
assign prod_0_d0 = bitcast_ln24_8_reg_1529;
assign prod_0_we0 = prod_0_we0_local;
assign prod_1_address0 = prod_1_address0_local;
assign prod_1_ce0 = prod_1_ce0_local;
assign prod_1_d0 = bitcast_ln24_8_reg_1529;
assign prod_1_we0 = prod_1_we0_local;
assign prod_2_address0 = prod_2_address0_local;
assign prod_2_ce0 = prod_2_ce0_local;
assign prod_2_d0 = bitcast_ln24_8_reg_1529;
assign prod_2_we0 = prod_2_we0_local;
assign prod_3_address0 = prod_3_address0_local;
assign prod_3_ce0 = prod_3_ce0_local;
assign prod_3_d0 = bitcast_ln24_8_reg_1529;
assign prod_3_we0 = prod_3_we0_local;
assign prod_4_address0 = prod_4_address0_local;
assign prod_4_ce0 = prod_4_ce0_local;
assign prod_4_d0 = bitcast_ln24_8_reg_1529;
assign prod_4_we0 = prod_4_we0_local;
assign prod_5_address0 = prod_5_address0_local;
assign prod_5_ce0 = prod_5_ce0_local;
assign prod_5_d0 = bitcast_ln24_8_reg_1529;
assign prod_5_we0 = prod_5_we0_local;
assign prod_6_address0 = prod_6_address0_local;
assign prod_6_ce0 = prod_6_ce0_local;
assign prod_6_d0 = bitcast_ln24_8_reg_1529;
assign prod_6_we0 = prod_6_we0_local;
assign prod_7_address0 = prod_7_address0_local;
assign prod_7_ce0 = prod_7_ce0_local;
assign prod_7_d0 = bitcast_ln24_8_reg_1529;
assign prod_7_we0 = prod_7_we0_local;
assign select_ln11_fu_731_p3 = ((icmp_ln1688_reg_500[0:0] == 1'b1) ? 7'd0 : kk79_fu_160);
assign select_ln16_1_fu_913_p3 = ((icmp_ln1688_reg_500[0:0] == 1'b1) ? 17'd1 : add_ln16_1_fu_907_p2);
assign select_ln17_1_fu_900_p3 = ((empty_reg_1317[0:0] == 1'b1) ? 14'd1 : add_ln17_1_fu_894_p2);
assign select_ln18_1_fu_887_p3 = ((empty_7_reg_1328[0:0] == 1'b1) ? 8'd1 : add_ln18_1_fu_881_p2);
assign temp_x_fu_1039_p10 = m1_4_q0;
assign temp_x_fu_1039_p12 = m1_5_q0;
assign temp_x_fu_1039_p14 = m1_6_q0;
assign temp_x_fu_1039_p16 = m1_7_q0;
assign temp_x_fu_1039_p17 = 'bx;
assign temp_x_fu_1039_p2 = m1_0_q0;
assign temp_x_fu_1039_p4 = m1_1_q0;
assign temp_x_fu_1039_p6 = m1_2_q0;
assign temp_x_fu_1039_p8 = m1_3_q0;
assign tmp_1_fu_1199_p10 = prod_4_q0;
assign tmp_1_fu_1199_p12 = prod_5_q0;
assign tmp_1_fu_1199_p14 = prod_6_q0;
assign tmp_1_fu_1199_p16 = prod_7_q0;
assign tmp_1_fu_1199_p17 = 'bx;
assign tmp_1_fu_1199_p2 = prod_0_q0;
assign tmp_1_fu_1199_p4 = prod_1_q0;
assign tmp_1_fu_1199_p6 = prod_2_q0;
assign tmp_1_fu_1199_p8 = prod_3_q0;
assign tmp_3_fu_824_p3 = {{empty_10_fu_820_p1}, {indvars_iv21_udiv_fu_810_p4}};
assign tmp_5_fu_1149_p3 = {{empty_10_reg_1355_pp0_iter2_reg}, {indvars_iv23_udiv_reg_1350_pp0_iter2_reg}};
assign tmp_7_fu_848_p4 = {{{indvars_iv21_udiv_fu_810_p4}, {trunc_ln18_fu_844_p1}}, {indvars_iv23_udiv_fu_800_p4}};
assign tmp_fu_1110_p10 = m2_4_q0;
assign tmp_fu_1110_p12 = m2_5_q0;
assign tmp_fu_1110_p14 = m2_6_q0;
assign tmp_fu_1110_p16 = m2_7_q0;
assign tmp_fu_1110_p17 = 'bx;
assign tmp_fu_1110_p2 = m2_0_q0;
assign tmp_fu_1110_p4 = m2_1_q0;
assign tmp_fu_1110_p6 = m2_2_q0;
assign tmp_fu_1110_p8 = m2_3_q0;
assign trunc_ln18_fu_844_p1 = k_fu_793_p3[2:0];
assign trunc_ln22_fu_700_p1 = j_mid2_fu_692_p3[2:0];
assign xor_ln11_fu_602_p2 = (ap_phi_mux_icmp_ln1688_phi_fu_503_p4 ^ 1'd1);
endmodule 