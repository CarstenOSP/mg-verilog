module stencil_stencil_Pipeline_stencil_label1_stencil_label2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_7_address0,sol_7_ce0,sol_7_we0,sol_7_d0,sol_6_address0,sol_6_ce0,sol_6_we0,sol_6_d0,sol_5_address0,sol_5_ce0,sol_5_we0,sol_5_d0,sol_4_address0,sol_4_ce0,sol_4_we0,sol_4_d0,sol_3_address0,sol_3_ce0,sol_3_we0,sol_3_d0,sol_2_address0,sol_2_ce0,sol_2_we0,sol_2_d0,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_2_address0,orig_2_ce0,orig_2_q0,orig_2_address1,orig_2_ce1,orig_2_q1,orig_4_address0,orig_4_ce0,orig_4_q0,orig_4_address1,orig_4_ce1,orig_4_q1,orig_6_address0,orig_6_ce0,orig_6_q0,orig_6_address1,orig_6_ce1,orig_6_q1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,orig_3_address0,orig_3_ce0,orig_3_q0,orig_3_address1,orig_3_ce1,orig_3_q1,orig_5_address0,orig_5_ce0,orig_5_q0,orig_5_address1,orig_5_ce1,orig_5_q1,orig_7_address0,orig_7_ce0,orig_7_q0,orig_7_address1,orig_7_ce1,orig_7_q1,filter_load_2,filter_load_5,filter_load_1,filter_load_8,filter_load,filter_load_6,filter_load_4,filter_load_3,filter_load_7); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] sol_7_address0;
output   sol_7_ce0;
output   sol_7_we0;
output  [31:0] sol_7_d0;
output  [9:0] sol_6_address0;
output   sol_6_ce0;
output   sol_6_we0;
output  [31:0] sol_6_d0;
output  [9:0] sol_5_address0;
output   sol_5_ce0;
output   sol_5_we0;
output  [31:0] sol_5_d0;
output  [9:0] sol_4_address0;
output   sol_4_ce0;
output   sol_4_we0;
output  [31:0] sol_4_d0;
output  [9:0] sol_3_address0;
output   sol_3_ce0;
output   sol_3_we0;
output  [31:0] sol_3_d0;
output  [9:0] sol_2_address0;
output   sol_2_ce0;
output   sol_2_we0;
output  [31:0] sol_2_d0;
output  [9:0] sol_1_address0;
output   sol_1_ce0;
output   sol_1_we0;
output  [31:0] sol_1_d0;
output  [9:0] sol_0_address0;
output   sol_0_ce0;
output   sol_0_we0;
output  [31:0] sol_0_d0;
output  [9:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [9:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
output  [9:0] orig_2_address0;
output   orig_2_ce0;
input  [31:0] orig_2_q0;
output  [9:0] orig_2_address1;
output   orig_2_ce1;
input  [31:0] orig_2_q1;
output  [9:0] orig_4_address0;
output   orig_4_ce0;
input  [31:0] orig_4_q0;
output  [9:0] orig_4_address1;
output   orig_4_ce1;
input  [31:0] orig_4_q1;
output  [9:0] orig_6_address0;
output   orig_6_ce0;
input  [31:0] orig_6_q0;
output  [9:0] orig_6_address1;
output   orig_6_ce1;
input  [31:0] orig_6_q1;
output  [9:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [9:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
output  [9:0] orig_3_address0;
output   orig_3_ce0;
input  [31:0] orig_3_q0;
output  [9:0] orig_3_address1;
output   orig_3_ce1;
input  [31:0] orig_3_q1;
output  [9:0] orig_5_address0;
output   orig_5_ce0;
input  [31:0] orig_5_q0;
output  [9:0] orig_5_address1;
output   orig_5_ce1;
input  [31:0] orig_5_q1;
output  [9:0] orig_7_address0;
output   orig_7_ce0;
input  [31:0] orig_7_q0;
output  [9:0] orig_7_address1;
output   orig_7_ce1;
input  [31:0] orig_7_q1;
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
wire   [0:0] icmp_ln7_fu_1277_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln86_reg_766;
wire   [31:0] grp_fu_797_p2;
reg   [31:0] reg_905;
wire    ap_block_pp0_stage0_11001;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] grp_fu_805_p2;
reg   [31:0] reg_909;
wire   [31:0] grp_fu_809_p2;
reg   [31:0] reg_913;
reg   [6:0] r3_load_reg_1615;
wire   [5:0] select_ln4_fu_943_p3;
reg   [5:0] select_ln4_reg_1620;
wire   [6:0] indvars_iv_next80_mid1_fu_951_p2;
reg   [6:0] indvars_iv_next80_mid1_reg_1628;
wire   [2:0] trunc_ln8_fu_957_p1;
reg   [2:0] trunc_ln8_reg_1633;
reg   [2:0] trunc_ln8_reg_1633_pp0_iter1_reg;
reg   [2:0] trunc_ln8_reg_1633_pp0_iter2_reg;
reg   [2:0] trunc_ln8_reg_1633_pp0_iter3_reg;
reg   [2:0] trunc_ln8_reg_1633_pp0_iter4_reg;
reg   [2:0] lshr_ln_reg_1645;
wire   [5:0] or_ln8_fu_981_p3;
reg   [5:0] or_ln8_reg_1652;
wire   [7:0] add_ln12_5_fu_993_p2;
reg   [7:0] add_ln12_5_reg_1657;
wire   [6:0] r_fu_1012_p3;
reg   [6:0] r_reg_1662;
wire   [63:0] zext_ln12_fu_1041_p1;
reg   [63:0] zext_ln12_reg_1668;
reg   [63:0] zext_ln12_reg_1668_pp0_iter1_reg;
reg   [63:0] zext_ln12_reg_1668_pp0_iter2_reg;
reg   [63:0] zext_ln12_reg_1668_pp0_iter3_reg;
reg   [9:0] lshr_ln12_5_reg_1800;
reg   [9:0] lshr_ln12_6_reg_1805;
reg   [9:0] lshr_ln12_8_reg_1830;
wire   [0:0] icmp_ln8_fu_1271_p2;
reg   [0:0] icmp_ln8_reg_1855;
reg   [0:0] icmp_ln7_reg_1860;
wire  signed [31:0] tmp_fu_1305_p11;
reg  signed [31:0] tmp_reg_1864;
wire  signed [31:0] tmp_1_fu_1328_p11;
reg  signed [31:0] tmp_1_reg_1869;
wire  signed [31:0] tmp_2_fu_1351_p11;
reg  signed [31:0] tmp_2_reg_1875;
wire  signed [31:0] grp_fu_813_p11;
reg  signed [31:0] tmp_3_reg_1881;
wire  signed [31:0] grp_fu_836_p11;
reg  signed [31:0] tmp_4_reg_1886;
wire  signed [31:0] grp_fu_859_p11;
reg  signed [31:0] tmp_5_reg_1892;
wire  signed [31:0] tmp_9_fu_1417_p11;
reg  signed [31:0] tmp_9_reg_1958;
wire  signed [31:0] grp_fu_882_p11;
reg  signed [31:0] tmp_10_reg_1983;
reg  signed [31:0] tmp_6_reg_1988;
reg  signed [31:0] tmp_7_reg_1993;
reg  signed [31:0] tmp_8_reg_1999;
reg  signed [31:0] tmp_s_reg_2005;
wire   [31:0] grp_fu_777_p2;
reg   [31:0] mul_ln13_reg_2010;
wire   [31:0] grp_fu_781_p2;
reg   [31:0] mul_ln13_2_reg_2015;
reg   [31:0] mul_ln13_2_reg_2015_pp0_iter3_reg;
wire   [31:0] grp_fu_785_p2;
reg   [31:0] mul_ln13_4_reg_2020;
reg   [31:0] mul_ln13_4_reg_2020_pp0_iter3_reg;
wire   [31:0] grp_fu_789_p2;
reg   [31:0] mul_ln13_7_reg_2025;
wire   [31:0] grp_fu_793_p2;
reg   [31:0] mul_ln13_11_reg_2030;
wire   [31:0] grp_fu_801_p2;
reg   [31:0] mul_ln13_13_reg_2035;
reg   [31:0] mul_ln13_1_reg_2040;
reg   [31:0] mul_ln13_3_reg_2045;
reg   [31:0] mul_ln13_5_reg_2050;
reg   [31:0] mul_ln13_6_reg_2055;
reg   [31:0] mul_ln13_8_reg_2060;
reg   [31:0] mul_ln13_10_reg_2065;
wire   [31:0] add_ln13_13_fu_1463_p2;
reg   [31:0] add_ln13_13_reg_2070;
wire   [31:0] add_ln13_fu_1469_p2;
reg   [31:0] add_ln13_reg_2075;
wire   [31:0] add_ln13_1_fu_1473_p2;
reg   [31:0] add_ln13_1_reg_2080;
wire   [31:0] add_ln13_5_fu_1481_p2;
reg   [31:0] add_ln13_5_reg_2085;
wire   [31:0] add_ln13_8_fu_1486_p2;
reg   [31:0] add_ln13_8_reg_2090;
wire   [31:0] add_ln13_9_fu_1491_p2;
reg   [31:0] add_ln13_9_reg_2095;
wire   [31:0] add_ln13_14_fu_1501_p2;
reg   [31:0] add_ln13_14_reg_2100;
wire   [31:0] add_ln13_6_fu_1510_p2;
reg   [31:0] add_ln13_6_reg_2105;
wire   [31:0] temp_1_fu_1519_p2;
reg   [31:0] temp_1_reg_2110;
wire   [31:0] temp_fu_1528_p2;
reg   [31:0] temp_reg_2118;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [0:0] ap_phi_mux_icmp_ln86_phi_fu_769_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln12_1_fu_1069_p1;
wire   [63:0] zext_ln12_2_fu_1091_p1;
wire   [63:0] zext_ln12_3_fu_1119_p1;
wire   [63:0] zext_ln12_7_fu_1201_p1;
wire   [63:0] zext_ln12_10_fu_1252_p1;
wire   [63:0] zext_ln12_4_fu_1395_p1;
wire   [63:0] zext_ln12_5_fu_1403_p1;
wire   [63:0] zext_ln12_6_fu_1410_p1;
wire   [63:0] zext_ln12_8_fu_1440_p1;
reg   [11:0] indvar_flatten2_fu_136;
wire   [11:0] add_ln7_fu_1260_p2;
reg   [6:0] r3_fu_140;
reg   [6:0] ap_sig_allocacmp_r3_load;
reg   [5:0] c4_fu_144;
wire   [5:0] c_fu_1266_p2;
reg   [5:0] ap_sig_allocacmp_c4_load;
reg   [6:0] indvars_iv_next805_fu_148;
wire   [6:0] indvars_iv_next80_fu_1447_p2;
reg    orig_0_ce1_local;
reg   [9:0] orig_0_address1_local;
reg    orig_0_ce0_local;
reg   [9:0] orig_0_address0_local;
reg    orig_2_ce1_local;
reg   [9:0] orig_2_address1_local;
reg    orig_2_ce0_local;
reg   [9:0] orig_2_address0_local;
reg    orig_4_ce1_local;
reg   [9:0] orig_4_address1_local;
reg    orig_4_ce0_local;
reg   [9:0] orig_4_address0_local;
reg    orig_6_ce1_local;
reg   [9:0] orig_6_address1_local;
reg    orig_6_ce0_local;
reg   [9:0] orig_6_address0_local;
reg    orig_1_ce1_local;
reg   [9:0] orig_1_address1_local;
reg    orig_1_ce0_local;
reg   [9:0] orig_1_address0_local;
reg    orig_3_ce1_local;
reg   [9:0] orig_3_address1_local;
reg    orig_3_ce0_local;
reg   [9:0] orig_3_address0_local;
reg    orig_5_ce1_local;
reg   [9:0] orig_5_address1_local;
reg    orig_5_ce0_local;
reg   [9:0] orig_5_address0_local;
reg    orig_7_ce1_local;
reg   [9:0] orig_7_address1_local;
reg    orig_7_ce0_local;
reg   [9:0] orig_7_address0_local;
reg    sol_5_we0_local;
reg    sol_5_ce0_local;
reg    sol_3_we0_local;
reg    sol_3_ce0_local;
reg    sol_1_we0_local;
reg    sol_1_ce0_local;
reg    sol_7_we0_local;
reg    sol_7_ce0_local;
reg    sol_4_we0_local;
reg    sol_4_ce0_local;
reg    sol_2_we0_local;
reg    sol_2_ce0_local;
reg    sol_0_we0_local;
reg    sol_0_ce0_local;
reg    sol_6_we0_local;
reg    sol_6_ce0_local;
reg  signed [31:0] grp_fu_777_p0;
reg  signed [31:0] grp_fu_777_p1;
reg  signed [31:0] grp_fu_781_p0;
reg  signed [31:0] grp_fu_781_p1;
reg  signed [31:0] grp_fu_785_p0;
reg  signed [31:0] grp_fu_785_p1;
reg  signed [31:0] grp_fu_789_p0;
reg  signed [31:0] grp_fu_789_p1;
reg  signed [31:0] grp_fu_793_p0;
reg  signed [31:0] grp_fu_793_p1;
reg  signed [31:0] grp_fu_797_p0;
reg  signed [31:0] grp_fu_797_p1;
reg  signed [31:0] grp_fu_801_p0;
reg  signed [31:0] grp_fu_801_p1;
reg  signed [31:0] grp_fu_805_p0;
reg  signed [31:0] grp_fu_805_p1;
reg  signed [31:0] grp_fu_809_p0;
reg  signed [31:0] grp_fu_809_p1;
wire   [31:0] grp_fu_813_p9;
reg   [2:0] grp_fu_813_p10;
wire   [31:0] grp_fu_836_p9;
reg   [2:0] grp_fu_836_p10;
wire   [31:0] grp_fu_859_p9;
reg   [2:0] grp_fu_859_p10;
wire   [31:0] grp_fu_882_p9;
reg   [2:0] grp_fu_882_p10;
wire   [4:0] tmp_15_fu_971_p4;
wire   [7:0] or_ln8_cast36_fu_989_p1;
wire   [9:0] add_ln_fu_1034_p3;
wire   [12:0] tmp_11_fu_1027_p3;
wire   [12:0] add_ln12_fu_1053_p2;
wire   [9:0] lshr_ln12_2_fu_1059_p4;
wire   [6:0] select_ln4_1_fu_1005_p3;
wire   [9:0] add_ln5_fu_1084_p3;
wire   [12:0] tmp_13_fu_1077_p3;
wire   [12:0] add_ln12_1_fu_1103_p2;
wire   [9:0] lshr_ln12_4_fu_1109_p4;
wire   [6:0] select_ln4_cast1_fu_1127_p1;
wire   [7:0] tmp1_cast_cast_fu_1130_p3;
wire   [12:0] tmp1_cast_cast_cast_fu_1138_p1;
wire   [12:0] tmp_12_fu_1019_p3;
wire   [12:0] empty_fu_1142_p2;
wire   [12:0] add_ln12_2_fu_1158_p2;
wire   [12:0] or_ln8_cast_fu_1174_p1;
wire   [12:0] tmp_16_fu_1177_p3;
wire   [12:0] add_ln12_3_fu_1185_p2;
wire   [9:0] lshr_ln12_7_fu_1191_p4;
wire   [12:0] tmp_17_fu_1209_p3;
wire   [12:0] add_ln12_4_fu_1217_p2;
wire   [12:0] zext_ln12_9_fu_1233_p1;
wire   [12:0] add_ln12_6_fu_1236_p2;
wire   [9:0] lshr_ln12_9_fu_1242_p4;
wire   [31:0] tmp_fu_1305_p9;
wire   [31:0] tmp_1_fu_1328_p9;
wire   [31:0] tmp_2_fu_1351_p9;
wire   [3:0] zext_ln5_fu_1374_p1;
wire   [4:0] zext_ln5_cast_fu_1377_p3;
wire   [9:0] zext_ln5_1_fu_1385_p1;
wire   [9:0] tmp_14_fu_1298_p3;
wire   [9:0] add_ln5_1_fu_1389_p2;
wire   [31:0] tmp_9_fu_1417_p9;
wire   [31:0] add_ln13_12_fu_1457_p2;
wire   [31:0] add_ln13_4_fu_1477_p2;
wire   [31:0] add_ln13_11_fu_1497_p2;
wire   [31:0] add_ln13_3_fu_1506_p2;
wire   [31:0] add_ln13_10_fu_1515_p2;
wire   [31:0] add_ln13_2_fu_1524_p2;
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
reg    ap_condition_1130;
reg    ap_condition_1136;
reg    ap_condition_490;
wire   [2:0] grp_fu_813_p1;
wire   [2:0] grp_fu_813_p3;
wire  signed [2:0] grp_fu_813_p5;
wire  signed [2:0] grp_fu_813_p7;
wire   [2:0] grp_fu_836_p1;
wire   [2:0] grp_fu_836_p3;
wire  signed [2:0] grp_fu_836_p5;
wire  signed [2:0] grp_fu_836_p7;
wire  signed [2:0] grp_fu_859_p1;
wire   [2:0] grp_fu_859_p3;
wire   [2:0] grp_fu_859_p5;
wire  signed [2:0] grp_fu_859_p7;
wire  signed [2:0] grp_fu_882_p1;
wire   [2:0] grp_fu_882_p3;
wire   [2:0] grp_fu_882_p5;
wire  signed [2:0] grp_fu_882_p7;
wire   [2:0] tmp_fu_1305_p1;
wire   [2:0] tmp_fu_1305_p3;
wire  signed [2:0] tmp_fu_1305_p5;
wire  signed [2:0] tmp_fu_1305_p7;
wire   [2:0] tmp_1_fu_1328_p1;
wire   [2:0] tmp_1_fu_1328_p3;
wire  signed [2:0] tmp_1_fu_1328_p5;
wire  signed [2:0] tmp_1_fu_1328_p7;
wire  signed [2:0] tmp_2_fu_1351_p1;
wire   [2:0] tmp_2_fu_1351_p3;
wire   [2:0] tmp_2_fu_1351_p5;
wire  signed [2:0] tmp_2_fu_1351_p7;
wire  signed [2:0] tmp_9_fu_1417_p1;
wire   [2:0] tmp_9_fu_1417_p3;
wire   [2:0] tmp_9_fu_1417_p5;
wire  signed [2:0] tmp_9_fu_1417_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 indvar_flatten2_fu_136 = 12'd0;
#0 r3_fu_140 = 7'd0;
#0 c4_fu_144 = 6'd0;
#0 indvars_iv_next805_fu_148 = 7'd0;
#0 ap_done_reg = 1'b0;
end
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_777_p0),.din1(grp_fu_777_p1),.ce(1'b1),.dout(grp_fu_777_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_781_p0),.din1(grp_fu_781_p1),.ce(1'b1),.dout(grp_fu_781_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_785_p0),.din1(grp_fu_785_p1),.ce(1'b1),.dout(grp_fu_785_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_789_p0),.din1(grp_fu_789_p1),.ce(1'b1),.dout(grp_fu_789_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U5(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_793_p0),.din1(grp_fu_793_p1),.ce(1'b1),.dout(grp_fu_793_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U6(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_797_p0),.din1(grp_fu_797_p1),.ce(1'b1),.dout(grp_fu_797_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U7(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_801_p0),.din1(grp_fu_801_p1),.ce(1'b1),.dout(grp_fu_801_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U8(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_805_p0),.din1(grp_fu_805_p1),.ce(1'b1),.dout(grp_fu_805_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U9(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_809_p0),.din1(grp_fu_809_p1),.ce(1'b1),.dout(grp_fu_809_p2));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U10(.din0(orig_0_q0),.din1(orig_2_q0),.din2(orig_4_q0),.din3(orig_6_q0),.def(grp_fu_813_p9),.sel(grp_fu_813_p10),.dout(grp_fu_813_p11));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U11(.din0(orig_1_q0),.din1(orig_3_q0),.din2(orig_5_q0),.din3(orig_7_q0),.def(grp_fu_836_p9),.sel(grp_fu_836_p10),.dout(grp_fu_836_p11));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 32 ),.CASE1( 3'h0 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h4 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U12(.din0(orig_0_q0),.din1(orig_2_q0),.din2(orig_4_q0),.din3(orig_6_q0),.def(grp_fu_859_p9),.sel(grp_fu_859_p10),.dout(grp_fu_859_p11));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 32 ),.CASE1( 3'h0 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h4 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U13(.din0(orig_1_q0),.din1(orig_3_q0),.din2(orig_5_q0),.din3(orig_7_q0),.def(grp_fu_882_p9),.sel(grp_fu_882_p10),.dout(grp_fu_882_p11));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U14(.din0(orig_0_q1),.din1(orig_2_q1),.din2(orig_4_q1),.din3(orig_6_q1),.def(tmp_fu_1305_p9),.sel(trunc_ln8_reg_1633),.dout(tmp_fu_1305_p11));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U15(.din0(orig_1_q1),.din1(orig_3_q1),.din2(orig_5_q1),.din3(orig_7_q1),.def(tmp_1_fu_1328_p9),.sel(trunc_ln8_reg_1633),.dout(tmp_1_fu_1328_p11));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 32 ),.CASE1( 3'h0 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h4 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U16(.din0(orig_0_q1),.din1(orig_2_q1),.din2(orig_4_q1),.din3(orig_6_q1),.def(tmp_2_fu_1351_p9),.sel(trunc_ln8_reg_1633),.dout(tmp_2_fu_1351_p11));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 32 ),.CASE1( 3'h0 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h4 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U17(.din0(orig_1_q1),.din1(orig_3_q1),.din2(orig_5_q1),.din3(orig_7_q1),.def(tmp_9_fu_1417_p9),.sel(trunc_ln8_reg_1633),.dout(tmp_9_fu_1417_p11));
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
        c4_fu_144 <= 6'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        c4_fu_144 <= c_fu_1266_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1136)) begin
            icmp_ln86_reg_766 <= icmp_ln8_reg_1855;
        end else if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            icmp_ln86_reg_766 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten2_fu_136 <= 12'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten2_fu_136 <= add_ln7_fu_1260_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvars_iv_next805_fu_148 <= 7'd1;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvars_iv_next805_fu_148 <= indvars_iv_next80_fu_1447_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        r3_fu_140 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        r3_fu_140 <= r_fu_1012_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln12_5_reg_1657[7 : 1] <= add_ln12_5_fu_993_p2[7 : 1];
        add_ln13_14_reg_2100 <= add_ln13_14_fu_1501_p2;
        add_ln13_1_reg_2080 <= add_ln13_1_fu_1473_p2;
        add_ln13_5_reg_2085 <= add_ln13_5_fu_1481_p2;
        add_ln13_8_reg_2090 <= add_ln13_8_fu_1486_p2;
        add_ln13_9_reg_2095 <= add_ln13_9_fu_1491_p2;
        add_ln13_reg_2075 <= add_ln13_fu_1469_p2;
        indvars_iv_next80_mid1_reg_1628 <= indvars_iv_next80_mid1_fu_951_p2;
        lshr_ln_reg_1645 <= {{select_ln4_fu_943_p3[5:3]}};
        mul_ln13_2_reg_2015_pp0_iter3_reg <= mul_ln13_2_reg_2015;
        mul_ln13_4_reg_2020_pp0_iter3_reg <= mul_ln13_4_reg_2020;
        or_ln8_reg_1652[5 : 1] <= or_ln8_fu_981_p3[5 : 1];
        r3_load_reg_1615 <= ap_sig_allocacmp_r3_load;
        select_ln4_reg_1620 <= select_ln4_fu_943_p3;
        temp_reg_2118 <= temp_fu_1528_p2;
        tmp_1_reg_1869 <= tmp_1_fu_1328_p11;
        tmp_2_reg_1875 <= tmp_2_fu_1351_p11;
        tmp_9_reg_1958 <= tmp_9_fu_1417_p11;
        tmp_reg_1864 <= tmp_fu_1305_p11;
        trunc_ln8_reg_1633 <= trunc_ln8_fu_957_p1;
        trunc_ln8_reg_1633_pp0_iter1_reg <= trunc_ln8_reg_1633;
        trunc_ln8_reg_1633_pp0_iter2_reg <= trunc_ln8_reg_1633_pp0_iter1_reg;
        trunc_ln8_reg_1633_pp0_iter3_reg <= trunc_ln8_reg_1633_pp0_iter2_reg;
        trunc_ln8_reg_1633_pp0_iter4_reg <= trunc_ln8_reg_1633_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln13_13_reg_2070 <= add_ln13_13_fu_1463_p2;
        add_ln13_6_reg_2105 <= add_ln13_6_fu_1510_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        icmp_ln7_reg_1860 <= icmp_ln7_fu_1277_p2;
        lshr_ln12_5_reg_1800 <= {{empty_fu_1142_p2[12:3]}};
        lshr_ln12_6_reg_1805 <= {{add_ln12_2_fu_1158_p2[12:3]}};
        lshr_ln12_8_reg_1830 <= {{add_ln12_4_fu_1217_p2[12:3]}};
        r_reg_1662 <= r_fu_1012_p3;
        temp_1_reg_2110 <= temp_1_fu_1519_p2;
        zext_ln12_reg_1668[9 : 0] <= zext_ln12_fu_1041_p1[9 : 0];
        zext_ln12_reg_1668_pp0_iter1_reg[9 : 0] <= zext_ln12_reg_1668[9 : 0];
        zext_ln12_reg_1668_pp0_iter2_reg[9 : 0] <= zext_ln12_reg_1668_pp0_iter1_reg[9 : 0];
        zext_ln12_reg_1668_pp0_iter3_reg[9 : 0] <= zext_ln12_reg_1668_pp0_iter2_reg[9 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln8_reg_1855 <= icmp_ln8_fu_1271_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln13_10_reg_2065 <= grp_fu_801_p2;
        mul_ln13_1_reg_2040 <= grp_fu_777_p2;
        mul_ln13_3_reg_2045 <= grp_fu_781_p2;
        mul_ln13_5_reg_2050 <= grp_fu_785_p2;
        mul_ln13_6_reg_2055 <= grp_fu_789_p2;
        mul_ln13_8_reg_2060 <= grp_fu_793_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_ln13_11_reg_2030 <= grp_fu_793_p2;
        mul_ln13_13_reg_2035 <= grp_fu_801_p2;
        mul_ln13_2_reg_2015 <= grp_fu_781_p2;
        mul_ln13_4_reg_2020 <= grp_fu_785_p2;
        mul_ln13_7_reg_2025 <= grp_fu_789_p2;
        mul_ln13_reg_2010 <= grp_fu_777_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_905 <= grp_fu_797_p2;
        reg_909 <= grp_fu_805_p2;
        reg_913 <= grp_fu_809_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_10_reg_1983 <= grp_fu_882_p11;
        tmp_3_reg_1881 <= grp_fu_813_p11;
        tmp_4_reg_1886 <= grp_fu_836_p11;
        tmp_5_reg_1892 <= grp_fu_859_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_6_reg_1988 <= grp_fu_813_p11;
        tmp_7_reg_1993 <= grp_fu_836_p11;
        tmp_8_reg_1999 <= grp_fu_859_p11;
        tmp_s_reg_2005 <= grp_fu_882_p11;
    end
end
always @ (*) begin
    if (((icmp_ln7_fu_1277_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if ((1'b1 == ap_condition_1130)) begin
            ap_phi_mux_icmp_ln86_phi_fu_769_p4 = icmp_ln8_reg_1855;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln86_phi_fu_769_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln86_phi_fu_769_p4 = icmp_ln8_reg_1855;
        end
    end else begin
        ap_phi_mux_icmp_ln86_phi_fu_769_p4 = icmp_ln8_reg_1855;
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
        ap_sig_allocacmp_c4_load = c4_fu_144;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_r3_load = 7'd0;
    end else begin
        ap_sig_allocacmp_r3_load = r3_fu_140;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_777_p0 = filter_load_5;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_777_p0 = filter_load_2;
    end else begin
        grp_fu_777_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_777_p1 = tmp_5_reg_1892;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_777_p1 = tmp_2_reg_1875;
    end else begin
        grp_fu_777_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_781_p0 = filter_load_8;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_781_p0 = filter_load_1;
    end else begin
        grp_fu_781_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_781_p1 = tmp_8_reg_1999;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_781_p1 = tmp_1_reg_1869;
    end else begin
        grp_fu_781_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_785_p0 = filter_load_6;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_785_p0 = filter_load;
    end else begin
        grp_fu_785_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_785_p1 = tmp_6_reg_1988;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_785_p1 = tmp_reg_1864;
    end else begin
        grp_fu_785_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_789_p0 = filter_load_4;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_789_p0 = filter_load_3;
    end else begin
        grp_fu_789_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_789_p1 = tmp_4_reg_1886;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_789_p1 = tmp_3_reg_1881;
    end else begin
        grp_fu_789_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_793_p0 = filter_load_7;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_793_p0 = filter_load_1;
    end else begin
        grp_fu_793_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_793_p1 = tmp_7_reg_1993;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_793_p1 = tmp_2_reg_1875;
    end else begin
        grp_fu_793_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_797_p0 = filter_load_2;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_797_p0 = filter_load_8;
    end else begin
        grp_fu_797_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_797_p1 = tmp_9_reg_1958;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_797_p1 = tmp_10_reg_1983;
    end else begin
        grp_fu_797_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_801_p0 = filter_load_5;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_801_p0 = filter_load;
    end else begin
        grp_fu_801_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_801_p1 = tmp_s_reg_2005;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_801_p1 = tmp_1_reg_1869;
    end else begin
        grp_fu_801_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_805_p0 = filter_load_6;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_805_p0 = filter_load_4;
    end else begin
        grp_fu_805_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_805_p1 = tmp_7_reg_1993;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_805_p1 = tmp_5_reg_1892;
    end else begin
        grp_fu_805_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_809_p0 = filter_load_7;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_809_p0 = filter_load_3;
    end else begin
        grp_fu_809_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_809_p1 = tmp_8_reg_1999;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_809_p1 = tmp_4_reg_1886;
    end else begin
        grp_fu_809_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_813_p10 = trunc_ln8_reg_1633_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_813_p10 = trunc_ln8_reg_1633;
        end else begin
            grp_fu_813_p10 = 'bx;
        end
    end else begin
        grp_fu_813_p10 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_836_p10 = trunc_ln8_reg_1633_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_836_p10 = trunc_ln8_reg_1633;
        end else begin
            grp_fu_836_p10 = 'bx;
        end
    end else begin
        grp_fu_836_p10 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_859_p10 = trunc_ln8_reg_1633_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_859_p10 = trunc_ln8_reg_1633;
        end else begin
            grp_fu_859_p10 = 'bx;
        end
    end else begin
        grp_fu_859_p10 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_882_p10 = trunc_ln8_reg_1633_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_882_p10 = trunc_ln8_reg_1633;
        end else begin
            grp_fu_882_p10 = 'bx;
        end
    end else begin
        grp_fu_882_p10 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_1633 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address0_local = zext_ln12_6_fu_1410_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_1633 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address0_local = zext_ln12_4_fu_1395_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_1633 == 3'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_address0_local = zext_ln12_3_fu_1119_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_1633 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_address0_local = zext_ln12_2_fu_1091_p1;
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_490)) begin
        if ((trunc_ln8_reg_1633 == 3'd6)) begin
            orig_0_address1_local = zext_ln12_1_fu_1069_p1;
        end else if ((trunc_ln8_reg_1633 == 3'd0)) begin
            orig_0_address1_local = zext_ln12_fu_1041_p1;
        end else begin
            orig_0_address1_local = 'bx;
        end
    end else begin
        orig_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1633 == 3'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1633 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_1633 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_1633 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1633 == 3'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1633 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_1633 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address0_local = zext_ln12_8_fu_1440_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_1633 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address0_local = zext_ln12_5_fu_1403_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_1633 == 3'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_address0_local = zext_ln12_10_fu_1252_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_1633 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_address0_local = zext_ln12_2_fu_1091_p1;
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_490)) begin
        if ((trunc_ln8_reg_1633 == 3'd6)) begin
            orig_1_address1_local = zext_ln12_7_fu_1201_p1;
        end else if ((trunc_ln8_reg_1633 == 3'd0)) begin
            orig_1_address1_local = zext_ln12_fu_1041_p1;
        end else begin
            orig_1_address1_local = 'bx;
        end
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1633 == 3'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1633 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_1633 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_1633 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1633 == 3'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1633 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_1633 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_2_address0_local = zext_ln12_6_fu_1410_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_1633 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_2_address0_local = zext_ln12_4_fu_1395_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_1633 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_2_address0_local = zext_ln12_3_fu_1119_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_1633 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_2_address0_local = zext_ln12_2_fu_1091_p1;
    end else begin
        orig_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_490)) begin
        if ((trunc_ln8_reg_1633 == 3'd0)) begin
            orig_2_address1_local = zext_ln12_1_fu_1069_p1;
        end else if ((trunc_ln8_reg_1633 == 3'd2)) begin
            orig_2_address1_local = zext_ln12_fu_1041_p1;
        end else begin
            orig_2_address1_local = 'bx;
        end
    end else begin
        orig_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1633 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1633 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_1633 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_1633 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_2_ce0_local = 1'b1;
    end else begin
        orig_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1633 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1633 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_2_ce1_local = 1'b1;
    end else begin
        orig_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_1633 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_3_address0_local = zext_ln12_8_fu_1440_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_1633 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_3_address0_local = zext_ln12_5_fu_1403_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_1633 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_3_address0_local = zext_ln12_10_fu_1252_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_1633 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_3_address0_local = zext_ln12_2_fu_1091_p1;
    end else begin
        orig_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_490)) begin
        if ((trunc_ln8_reg_1633 == 3'd0)) begin
            orig_3_address1_local = zext_ln12_7_fu_1201_p1;
        end else if ((trunc_ln8_reg_1633 == 3'd2)) begin
            orig_3_address1_local = zext_ln12_fu_1041_p1;
        end else begin
            orig_3_address1_local = 'bx;
        end
    end else begin
        orig_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1633 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1633 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_1633 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_1633 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_3_ce0_local = 1'b1;
    end else begin
        orig_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1633 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1633 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_3_ce1_local = 1'b1;
    end else begin
        orig_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_1633 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_4_address0_local = zext_ln12_6_fu_1410_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_1633 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_4_address0_local = zext_ln12_4_fu_1395_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_1633 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_4_address0_local = zext_ln12_3_fu_1119_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_1633 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_4_address0_local = zext_ln12_2_fu_1091_p1;
    end else begin
        orig_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_490)) begin
        if ((trunc_ln8_reg_1633 == 3'd2)) begin
            orig_4_address1_local = zext_ln12_1_fu_1069_p1;
        end else if ((trunc_ln8_reg_1633 == 3'd4)) begin
            orig_4_address1_local = zext_ln12_fu_1041_p1;
        end else begin
            orig_4_address1_local = 'bx;
        end
    end else begin
        orig_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1633 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1633 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_1633 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_1633 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_4_ce0_local = 1'b1;
    end else begin
        orig_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1633 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1633 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_4_ce1_local = 1'b1;
    end else begin
        orig_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_1633 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_5_address0_local = zext_ln12_8_fu_1440_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_1633 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_5_address0_local = zext_ln12_5_fu_1403_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_1633 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_5_address0_local = zext_ln12_10_fu_1252_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_1633 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_5_address0_local = zext_ln12_2_fu_1091_p1;
    end else begin
        orig_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_490)) begin
        if ((trunc_ln8_reg_1633 == 3'd2)) begin
            orig_5_address1_local = zext_ln12_7_fu_1201_p1;
        end else if ((trunc_ln8_reg_1633 == 3'd4)) begin
            orig_5_address1_local = zext_ln12_fu_1041_p1;
        end else begin
            orig_5_address1_local = 'bx;
        end
    end else begin
        orig_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1633 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1633 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_1633 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_1633 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_5_ce0_local = 1'b1;
    end else begin
        orig_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1633 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1633 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_5_ce1_local = 1'b1;
    end else begin
        orig_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_1633 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_6_address0_local = zext_ln12_6_fu_1410_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_1633 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_6_address0_local = zext_ln12_4_fu_1395_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_1633 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_6_address0_local = zext_ln12_3_fu_1119_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_1633 == 3'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_6_address0_local = zext_ln12_2_fu_1091_p1;
    end else begin
        orig_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_490)) begin
        if ((trunc_ln8_reg_1633 == 3'd4)) begin
            orig_6_address1_local = zext_ln12_1_fu_1069_p1;
        end else if ((trunc_ln8_reg_1633 == 3'd6)) begin
            orig_6_address1_local = zext_ln12_fu_1041_p1;
        end else begin
            orig_6_address1_local = 'bx;
        end
    end else begin
        orig_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1633 == 3'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1633 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_1633 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_1633 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_6_ce0_local = 1'b1;
    end else begin
        orig_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1633 == 3'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1633 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_6_ce1_local = 1'b1;
    end else begin
        orig_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_1633 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_7_address0_local = zext_ln12_8_fu_1440_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (trunc_ln8_reg_1633 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_7_address0_local = zext_ln12_5_fu_1403_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_1633 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_7_address0_local = zext_ln12_10_fu_1252_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln8_reg_1633 == 3'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_7_address0_local = zext_ln12_2_fu_1091_p1;
    end else begin
        orig_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_490)) begin
        if ((trunc_ln8_reg_1633 == 3'd4)) begin
            orig_7_address1_local = zext_ln12_7_fu_1201_p1;
        end else if ((trunc_ln8_reg_1633 == 3'd6)) begin
            orig_7_address1_local = zext_ln12_fu_1041_p1;
        end else begin
            orig_7_address1_local = 'bx;
        end
    end else begin
        orig_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1633 == 3'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1633 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_1633 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln8_reg_1633 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_7_ce0_local = 1'b1;
    end else begin
        orig_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1633 == 3'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln8_reg_1633 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_7_ce1_local = 1'b1;
    end else begin
        orig_7_ce1_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln8_reg_1633_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_0_we0_local = 1'b1;
    end else begin
        sol_0_we0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln8_reg_1633_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln8_reg_1633_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln8_reg_1633_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln8_reg_1633_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln8_reg_1633_pp0_iter3_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((~(trunc_ln8_reg_1633_pp0_iter4_reg == 3'd0) & ~(trunc_ln8_reg_1633_pp0_iter4_reg == 3'd2) & ~(trunc_ln8_reg_1633_pp0_iter4_reg == 3'd4) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if ((~(trunc_ln8_reg_1633_pp0_iter3_reg == 3'd0) & ~(trunc_ln8_reg_1633_pp0_iter3_reg == 3'd2) & ~(trunc_ln8_reg_1633_pp0_iter3_reg == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_7_we0_local = 1'b1;
    end else begin
        sol_7_we0_local = 1'b0;
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
assign add_ln12_1_fu_1103_p2 = (tmp_13_fu_1077_p3 + 13'd2);
assign add_ln12_2_fu_1158_p2 = (empty_fu_1142_p2 + 13'd2);
assign add_ln12_3_fu_1185_p2 = (or_ln8_cast_fu_1174_p1 + tmp_16_fu_1177_p3);
assign add_ln12_4_fu_1217_p2 = (or_ln8_cast_fu_1174_p1 + tmp_17_fu_1209_p3);
assign add_ln12_5_fu_993_p2 = ($signed(or_ln8_cast36_fu_989_p1) + $signed(8'd130));
assign add_ln12_6_fu_1236_p2 = (zext_ln12_9_fu_1233_p1 + tmp_12_fu_1019_p3);
assign add_ln12_fu_1053_p2 = (tmp_11_fu_1027_p3 + 13'd2);
assign add_ln13_10_fu_1515_p2 = (add_ln13_9_reg_2095 + add_ln13_8_reg_2090);
assign add_ln13_11_fu_1497_p2 = (mul_ln13_13_reg_2035 + mul_ln13_11_reg_2030);
assign add_ln13_12_fu_1457_p2 = (reg_913 + reg_905);
assign add_ln13_13_fu_1463_p2 = (add_ln13_12_fu_1457_p2 + reg_909);
assign add_ln13_14_fu_1501_p2 = (add_ln13_13_reg_2070 + add_ln13_11_fu_1497_p2);
assign add_ln13_1_fu_1473_p2 = (mul_ln13_1_reg_2040 + mul_ln13_6_reg_2055);
assign add_ln13_2_fu_1524_p2 = (add_ln13_1_reg_2080 + add_ln13_reg_2075);
assign add_ln13_3_fu_1506_p2 = (mul_ln13_4_reg_2020_pp0_iter3_reg + mul_ln13_2_reg_2015_pp0_iter3_reg);
assign add_ln13_4_fu_1477_p2 = (mul_ln13_reg_2010 + mul_ln13_3_reg_2045);
assign add_ln13_5_fu_1481_p2 = (add_ln13_4_fu_1477_p2 + mul_ln13_7_reg_2025);
assign add_ln13_6_fu_1510_p2 = (add_ln13_5_reg_2085 + add_ln13_3_fu_1506_p2);
assign add_ln13_8_fu_1486_p2 = (reg_905 + mul_ln13_10_reg_2065);
assign add_ln13_9_fu_1491_p2 = (reg_913 + reg_909);
assign add_ln13_fu_1469_p2 = (mul_ln13_5_reg_2050 + mul_ln13_8_reg_2060);
assign add_ln5_1_fu_1389_p2 = (zext_ln5_1_fu_1385_p1 + tmp_14_fu_1298_p3);
assign add_ln5_fu_1084_p3 = {{select_ln4_1_fu_1005_p3}, {lshr_ln_reg_1645}};
assign add_ln7_fu_1260_p2 = (indvar_flatten2_fu_136 + 12'd1);
assign add_ln_fu_1034_p3 = {{r_fu_1012_p3}, {lshr_ln_reg_1645}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1130 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln7_reg_1860 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_1136 = ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln7_reg_1860 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_490 = ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign c_fu_1266_p2 = (select_ln4_reg_1620 + 6'd2);
assign empty_fu_1142_p2 = (tmp1_cast_cast_cast_fu_1138_p1 + tmp_12_fu_1019_p3);
assign grp_fu_813_p9 = 'bx;
assign grp_fu_836_p9 = 'bx;
assign grp_fu_859_p9 = 'bx;
assign grp_fu_882_p9 = 'bx;
assign icmp_ln7_fu_1277_p2 = ((indvar_flatten2_fu_136 == 12'd3905) ? 1'b1 : 1'b0);
assign icmp_ln8_fu_1271_p2 = ((c_fu_1266_p2 == 6'd62) ? 1'b1 : 1'b0);
assign indvars_iv_next80_fu_1447_p2 = (r_reg_1662 + 7'd1);
assign indvars_iv_next80_mid1_fu_951_p2 = (ap_sig_allocacmp_r3_load + 7'd2);
assign lshr_ln12_2_fu_1059_p4 = {{add_ln12_fu_1053_p2[12:3]}};
assign lshr_ln12_4_fu_1109_p4 = {{add_ln12_1_fu_1103_p2[12:3]}};
assign lshr_ln12_7_fu_1191_p4 = {{add_ln12_3_fu_1185_p2[12:3]}};
assign lshr_ln12_9_fu_1242_p4 = {{add_ln12_6_fu_1236_p2[12:3]}};
assign or_ln8_cast36_fu_989_p1 = or_ln8_fu_981_p3;
assign or_ln8_cast_fu_1174_p1 = or_ln8_reg_1652;
assign or_ln8_fu_981_p3 = {{tmp_15_fu_971_p4}, {1'd1}};
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
assign r_fu_1012_p3 = ((icmp_ln86_reg_766[0:0] == 1'b1) ? indvars_iv_next805_fu_148 : r3_load_reg_1615);
assign select_ln4_1_fu_1005_p3 = ((icmp_ln86_reg_766[0:0] == 1'b1) ? indvars_iv_next80_mid1_reg_1628 : indvars_iv_next805_fu_148);
assign select_ln4_cast1_fu_1127_p1 = select_ln4_reg_1620;
assign select_ln4_fu_943_p3 = ((ap_phi_mux_icmp_ln86_phi_fu_769_p4[0:0] == 1'b1) ? 6'd0 : ap_sig_allocacmp_c4_load);
assign sol_0_address0 = zext_ln12_reg_1668_pp0_iter3_reg;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_d0 = temp_reg_2118;
assign sol_0_we0 = sol_0_we0_local;
assign sol_1_address0 = zext_ln12_reg_1668_pp0_iter3_reg;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_d0 = temp_1_reg_2110;
assign sol_1_we0 = sol_1_we0_local;
assign sol_2_address0 = zext_ln12_reg_1668_pp0_iter3_reg;
assign sol_2_ce0 = sol_2_ce0_local;
assign sol_2_d0 = temp_reg_2118;
assign sol_2_we0 = sol_2_we0_local;
assign sol_3_address0 = zext_ln12_reg_1668_pp0_iter3_reg;
assign sol_3_ce0 = sol_3_ce0_local;
assign sol_3_d0 = temp_1_reg_2110;
assign sol_3_we0 = sol_3_we0_local;
assign sol_4_address0 = zext_ln12_reg_1668_pp0_iter3_reg;
assign sol_4_ce0 = sol_4_ce0_local;
assign sol_4_d0 = temp_reg_2118;
assign sol_4_we0 = sol_4_we0_local;
assign sol_5_address0 = zext_ln12_reg_1668_pp0_iter3_reg;
assign sol_5_ce0 = sol_5_ce0_local;
assign sol_5_d0 = temp_1_reg_2110;
assign sol_5_we0 = sol_5_we0_local;
assign sol_6_address0 = zext_ln12_reg_1668_pp0_iter3_reg;
assign sol_6_ce0 = sol_6_ce0_local;
assign sol_6_d0 = temp_reg_2118;
assign sol_6_we0 = sol_6_we0_local;
assign sol_7_address0 = zext_ln12_reg_1668_pp0_iter3_reg;
assign sol_7_ce0 = sol_7_ce0_local;
assign sol_7_d0 = temp_1_reg_2110;
assign sol_7_we0 = sol_7_we0_local;
assign temp_1_fu_1519_p2 = (add_ln13_14_reg_2100 + add_ln13_10_fu_1515_p2);
assign temp_fu_1528_p2 = (add_ln13_6_reg_2105 + add_ln13_2_fu_1524_p2);
assign tmp1_cast_cast_cast_fu_1138_p1 = tmp1_cast_cast_fu_1130_p3;
assign tmp1_cast_cast_fu_1130_p3 = {{1'd1}, {select_ln4_cast1_fu_1127_p1}};
assign tmp_11_fu_1027_p3 = {{r_fu_1012_p3}, {select_ln4_reg_1620}};
assign tmp_12_fu_1019_p3 = {{r_fu_1012_p3}, {6'd0}};
assign tmp_13_fu_1077_p3 = {{select_ln4_1_fu_1005_p3}, {select_ln4_reg_1620}};
assign tmp_14_fu_1298_p3 = {{r_reg_1662}, {3'd0}};
assign tmp_15_fu_971_p4 = {{select_ln4_fu_943_p3[5:1]}};
assign tmp_16_fu_1177_p3 = {{r_fu_1012_p3}, {6'd2}};
assign tmp_17_fu_1209_p3 = {{select_ln4_1_fu_1005_p3}, {6'd2}};
assign tmp_1_fu_1328_p9 = 'bx;
assign tmp_2_fu_1351_p9 = 'bx;
assign tmp_9_fu_1417_p9 = 'bx;
assign tmp_fu_1305_p9 = 'bx;
assign trunc_ln8_fu_957_p1 = select_ln4_fu_943_p3[2:0];
assign zext_ln12_10_fu_1252_p1 = lshr_ln12_9_fu_1242_p4;
assign zext_ln12_1_fu_1069_p1 = lshr_ln12_2_fu_1059_p4;
assign zext_ln12_2_fu_1091_p1 = add_ln5_fu_1084_p3;
assign zext_ln12_3_fu_1119_p1 = lshr_ln12_4_fu_1109_p4;
assign zext_ln12_4_fu_1395_p1 = add_ln5_1_fu_1389_p2;
assign zext_ln12_5_fu_1403_p1 = lshr_ln12_5_reg_1800;
assign zext_ln12_6_fu_1410_p1 = lshr_ln12_6_reg_1805;
assign zext_ln12_7_fu_1201_p1 = lshr_ln12_7_fu_1191_p4;
assign zext_ln12_8_fu_1440_p1 = lshr_ln12_8_reg_1830;
assign zext_ln12_9_fu_1233_p1 = add_ln12_5_reg_1657;
assign zext_ln12_fu_1041_p1 = add_ln_fu_1034_p3;
assign zext_ln5_1_fu_1385_p1 = zext_ln5_cast_fu_1377_p3;
assign zext_ln5_cast_fu_1377_p3 = {{1'd1}, {zext_ln5_fu_1374_p1}};
assign zext_ln5_fu_1374_p1 = lshr_ln_reg_1645;
always @ (posedge ap_clk) begin
    or_ln8_reg_1652[0] <= 1'b1;
    add_ln12_5_reg_1657[0] <= 1'b1;
    zext_ln12_reg_1668[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln12_reg_1668_pp0_iter1_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln12_reg_1668_pp0_iter2_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln12_reg_1668_pp0_iter3_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
end
endmodule 