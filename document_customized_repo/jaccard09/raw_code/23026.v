module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,llike_address0,llike_ce0,llike_we0,llike_d0,llike_address1,llike_ce1,llike_we1,llike_d1,init_0_address0,init_0_ce0,init_0_q0,init_0_address1,init_0_ce1,init_0_q1,empty_11,emission_0_address0,emission_0_ce0,emission_0_q0,emission_0_address1,emission_0_ce1,emission_0_q1,emission_1_address0,emission_1_ce0,emission_1_q0,emission_1_address1,emission_1_ce1,emission_1_q1,emission_2_address0,emission_2_ce0,emission_2_q0,emission_2_address1,emission_2_ce1,emission_2_q1,emission_3_address0,emission_3_ce0,emission_3_q0,emission_3_address1,emission_3_ce1,emission_3_q1,empty,init_1_address0,init_1_ce0,init_1_q0,init_1_address1,init_1_ce1,init_1_q1,conv3_udiv_cast,init_2_address0,init_2_ce0,init_2_q0,init_2_address1,init_2_ce1,init_2_q1,init_3_address0,init_3_ce0,init_3_q0,init_3_address1,init_3_ce1,init_3_q1,conv3_udiv,grp_fu_572_p_din0,grp_fu_572_p_din1,grp_fu_572_p_opcode,grp_fu_572_p_dout0,grp_fu_572_p_ce,grp_fu_1322_p_din0,grp_fu_1322_p_din1,grp_fu_1322_p_opcode,grp_fu_1322_p_dout0,grp_fu_1322_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [13:0] llike_address0;
output   llike_ce0;
output   llike_we0;
output  [63:0] llike_d0;
output  [13:0] llike_address1;
output   llike_ce1;
output   llike_we1;
output  [63:0] llike_d1;
output  [3:0] init_0_address0;
output   init_0_ce0;
input  [63:0] init_0_q0;
output  [3:0] init_0_address1;
output   init_0_ce1;
input  [63:0] init_0_q1;
input  [5:0] empty_11;
output  [9:0] emission_0_address0;
output   emission_0_ce0;
input  [63:0] emission_0_q0;
output  [9:0] emission_0_address1;
output   emission_0_ce1;
input  [63:0] emission_0_q1;
output  [9:0] emission_1_address0;
output   emission_1_ce0;
input  [63:0] emission_1_q0;
output  [9:0] emission_1_address1;
output   emission_1_ce1;
input  [63:0] emission_1_q1;
output  [9:0] emission_2_address0;
output   emission_2_ce0;
input  [63:0] emission_2_q0;
output  [9:0] emission_2_address1;
output   emission_2_ce1;
input  [63:0] emission_2_q1;
output  [9:0] emission_3_address0;
output   emission_3_ce0;
input  [63:0] emission_3_q0;
output  [9:0] emission_3_address1;
output   emission_3_ce1;
input  [63:0] emission_3_q1;
input  [1:0] empty;
output  [3:0] init_1_address0;
output   init_1_ce0;
input  [63:0] init_1_q0;
output  [3:0] init_1_address1;
output   init_1_ce1;
input  [63:0] init_1_q1;
input  [5:0] conv3_udiv_cast;
output  [3:0] init_2_address0;
output   init_2_ce0;
input  [63:0] init_2_q0;
output  [3:0] init_2_address1;
output   init_2_ce1;
input  [63:0] init_2_q1;
output  [3:0] init_3_address0;
output   init_3_ce0;
input  [63:0] init_3_q0;
output  [3:0] init_3_address1;
output   init_3_ce1;
input  [63:0] init_3_q1;
input  [5:0] conv3_udiv;
output  [63:0] grp_fu_572_p_din0;
output  [63:0] grp_fu_572_p_din1;
output  [1:0] grp_fu_572_p_opcode;
input  [63:0] grp_fu_572_p_dout0;
output   grp_fu_572_p_ce;
output  [63:0] grp_fu_1322_p_din0;
output  [63:0] grp_fu_1322_p_din1;
output  [1:0] grp_fu_1322_p_opcode;
input  [63:0] grp_fu_1322_p_dout0;
output   grp_fu_1322_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] tmp_17_reg_2494;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1047;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] reg_1051;
reg   [63:0] reg_1055;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_1060;
wire   [9:0] conv3_udiv_cast_cast_fu_1065_p1;
reg   [9:0] conv3_udiv_cast_cast_reg_2470;
reg   [6:0] s_1_reg_2485;
reg   [6:0] s_1_reg_2485_pp0_iter1_reg;
reg   [0:0] tmp_17_reg_2494_pp0_iter1_reg;
wire   [3:0] lshr_ln9_fu_1089_p4;
reg   [3:0] lshr_ln9_reg_2498;
reg   [3:0] lshr_ln9_reg_2498_pp0_iter1_reg;
wire   [1:0] tmp_38_fu_1107_p4;
reg   [1:0] tmp_38_reg_2511;
reg   [1:0] tmp_38_reg_2511_pp0_iter1_reg;
reg   [1:0] tmp_38_reg_2511_pp0_iter2_reg;
wire   [4:0] tmp_40_fu_1133_p4;
reg   [4:0] tmp_40_reg_2554;
reg   [4:0] tmp_40_reg_2554_pp0_iter1_reg;
wire   [2:0] tmp_56_fu_1165_p4;
reg   [2:0] tmp_56_reg_2594;
reg   [2:0] tmp_56_reg_2594_pp0_iter1_reg;
wire   [63:0] tmp_fu_1207_p11;
reg   [63:0] tmp_reg_2625;
wire   [63:0] tmp_1_fu_1246_p11;
reg   [63:0] tmp_1_reg_2630;
reg   [63:0] init_2_load_reg_2635;
reg   [63:0] init_3_load_reg_2660;
reg   [63:0] init_0_load_1_reg_2685;
reg   [63:0] init_1_load_1_reg_2690;
reg   [63:0] init_2_load_1_reg_2695;
reg   [63:0] init_3_load_1_reg_2700;
wire   [0:0] tmp_19_fu_1309_p3;
reg   [0:0] tmp_19_reg_2705;
reg   [0:0] tmp_19_reg_2705_pp0_iter1_reg;
wire   [63:0] bitcast_ln14_fu_1348_p1;
wire   [63:0] bitcast_ln14_5_fu_1353_p1;
wire   [63:0] tmp_2_fu_1374_p11;
reg   [63:0] tmp_2_reg_2763;
wire   [63:0] tmp_3_fu_1413_p11;
reg   [63:0] tmp_3_reg_2768;
wire   [0:0] tmp_18_fu_1452_p3;
reg   [0:0] tmp_18_reg_2793;
reg   [0:0] tmp_18_reg_2793_pp0_iter1_reg;
reg   [63:0] init_2_load_2_reg_2820;
reg   [63:0] init_3_load_2_reg_2825;
reg   [63:0] init_0_load_3_reg_2830;
reg   [63:0] init_1_load_3_reg_2835;
reg   [63:0] init_2_load_3_reg_2840;
reg   [63:0] init_3_load_3_reg_2845;
wire   [63:0] bitcast_ln14_10_fu_1483_p1;
wire   [63:0] bitcast_ln14_15_fu_1487_p1;
wire   [63:0] tmp_4_fu_1507_p11;
reg   [63:0] tmp_4_reg_2860;
wire   [63:0] tmp_5_fu_1546_p11;
reg   [63:0] tmp_5_reg_2865;
wire   [63:0] bitcast_ln14_20_fu_1609_p1;
wire   [63:0] bitcast_ln14_25_fu_1613_p1;
wire   [63:0] tmp_6_fu_1633_p11;
reg   [63:0] tmp_6_reg_2920;
wire   [63:0] tmp_7_fu_1672_p11;
reg   [63:0] tmp_7_reg_2925;
wire   [1:0] tmp_89_fu_1715_p4;
reg   [1:0] tmp_89_reg_2950;
reg   [1:0] tmp_89_reg_2950_pp0_iter1_reg;
wire   [63:0] bitcast_ln14_30_fu_1748_p1;
wire   [63:0] bitcast_ln14_35_fu_1752_p1;
wire   [63:0] tmp_8_fu_1772_p11;
reg   [63:0] tmp_8_reg_2985;
wire   [63:0] tmp_9_fu_1811_p11;
reg   [63:0] tmp_9_reg_2990;
wire   [63:0] bitcast_ln14_40_fu_1880_p1;
wire   [63:0] bitcast_ln14_45_fu_1885_p1;
wire   [63:0] tmp_s_fu_1906_p11;
reg   [63:0] tmp_s_reg_3045;
wire   [63:0] tmp_10_fu_1945_p11;
reg   [63:0] tmp_10_reg_3050;
wire   [63:0] bitcast_ln14_50_fu_2007_p1;
wire   [63:0] bitcast_ln14_55_fu_2011_p1;
wire   [63:0] tmp_11_fu_2031_p11;
reg   [63:0] tmp_11_reg_3105;
wire   [63:0] tmp_12_fu_2070_p11;
reg   [63:0] tmp_12_reg_3110;
wire   [63:0] bitcast_ln14_60_fu_2143_p1;
wire   [63:0] bitcast_ln14_65_fu_2147_p1;
wire   [63:0] tmp_13_fu_2167_p11;
reg   [63:0] tmp_13_reg_3165;
wire   [63:0] tmp_14_fu_2206_p11;
reg   [63:0] tmp_14_reg_3170;
wire   [63:0] bitcast_ln14_70_fu_2229_p1;
wire   [63:0] bitcast_ln14_75_fu_2233_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln9_fu_1099_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_1125_p1;
wire   [63:0] zext_ln14_1_fu_1157_p1;
wire   [63:0] zext_ln14_20_fu_1183_p1;
wire   [63:0] zext_ln14_2_fu_1281_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_3_fu_1301_p1;
wire   [63:0] zext_ln14_25_fu_1325_p1;
wire   [63:0] zext_ln14_31_fu_1340_p1;
wire   [63:0] zext_ln14_4_fu_1444_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_5_fu_1475_p1;
wire   [63:0] zext_ln14_6_fu_1581_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_7_fu_1601_p1;
wire   [63:0] zext_ln14_8_fu_1707_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln14_9_fu_1740_p1;
wire   [63:0] zext_ln14_10_fu_1849_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln14_11_fu_1872_p1;
wire   [63:0] zext_ln14_12_fu_1976_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln14_13_fu_1999_p1;
wire   [63:0] zext_ln14_14_fu_2105_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln14_15_fu_2125_p1;
wire   [63:0] zext_ln13_fu_2237_p1;
wire   [63:0] zext_ln14_16_fu_2248_p1;
wire   [63:0] zext_ln14_17_fu_2260_p1;
wire   [63:0] zext_ln14_18_fu_2272_p1;
wire   [63:0] zext_ln14_19_fu_2284_p1;
wire   [63:0] zext_ln14_21_fu_2299_p1;
wire   [63:0] zext_ln14_22_fu_2311_p1;
wire   [63:0] zext_ln14_23_fu_2323_p1;
wire   [63:0] zext_ln14_24_fu_2335_p1;
wire   [63:0] zext_ln14_27_fu_2350_p1;
wire   [63:0] zext_ln14_28_fu_2365_p1;
wire   [63:0] zext_ln14_29_fu_2380_p1;
wire   [63:0] zext_ln14_30_fu_2392_p1;
wire   [63:0] zext_ln14_32_fu_2407_p1;
wire   [63:0] zext_ln14_33_fu_2419_p1;
wire   [63:0] zext_ln14_34_fu_2431_p1;
reg   [6:0] s_fu_162;
wire   [6:0] add_ln13_fu_2133_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg    init_0_ce1_local;
reg   [3:0] init_0_address1_local;
reg    init_0_ce0_local;
reg   [3:0] init_0_address0_local;
reg    emission_0_ce1_local;
reg   [9:0] emission_0_address1_local;
reg    emission_0_ce0_local;
reg   [9:0] emission_0_address0_local;
reg    emission_1_ce1_local;
reg   [9:0] emission_1_address1_local;
reg    emission_1_ce0_local;
reg   [9:0] emission_1_address0_local;
reg    emission_2_ce1_local;
reg   [9:0] emission_2_address1_local;
reg    emission_2_ce0_local;
reg   [9:0] emission_2_address0_local;
reg    emission_3_ce1_local;
reg   [9:0] emission_3_address1_local;
reg    emission_3_ce0_local;
reg   [9:0] emission_3_address0_local;
reg    init_1_ce1_local;
reg   [3:0] init_1_address1_local;
reg    init_1_ce0_local;
reg   [3:0] init_1_address0_local;
reg    init_2_ce1_local;
reg   [3:0] init_2_address1_local;
reg    init_2_ce0_local;
reg   [3:0] init_2_address0_local;
reg    init_3_ce1_local;
reg   [3:0] init_3_address1_local;
reg    init_3_ce0_local;
reg   [3:0] init_3_address0_local;
reg    llike_we1_local;
reg    llike_ce1_local;
reg   [13:0] llike_address1_local;
reg    llike_we0_local;
reg    llike_ce0_local;
reg   [13:0] llike_address0_local;
reg   [63:0] grp_fu_1039_p0;
reg   [63:0] grp_fu_1039_p1;
reg   [63:0] grp_fu_1043_p0;
reg   [63:0] grp_fu_1043_p1;
wire   [7:0] p_cast_fu_1069_p1;
wire   [9:0] or_ln_fu_1117_p3;
wire   [9:0] shl_ln_fu_1143_p3;
wire   [9:0] add_ln14_fu_1151_p2;
wire   [3:0] or_ln14_1_fu_1175_p3;
wire   [63:0] tmp_fu_1207_p2;
wire   [63:0] tmp_fu_1207_p4;
wire   [63:0] tmp_fu_1207_p6;
wire   [63:0] tmp_fu_1207_p8;
wire   [63:0] tmp_fu_1207_p9;
wire   [63:0] tmp_1_fu_1246_p2;
wire   [63:0] tmp_1_fu_1246_p4;
wire   [63:0] tmp_1_fu_1246_p6;
wire   [63:0] tmp_1_fu_1246_p8;
wire   [63:0] tmp_1_fu_1246_p9;
wire   [9:0] shl_ln14_1_fu_1269_p3;
wire   [9:0] add_ln14_1_fu_1276_p2;
wire   [9:0] shl_ln14_2_fu_1289_p3;
wire   [9:0] add_ln14_2_fu_1296_p2;
wire   [3:0] or_ln14_3_fu_1316_p4;
wire   [3:0] or_ln14_5_fu_1333_p3;
wire   [63:0] tmp_2_fu_1374_p2;
wire   [63:0] tmp_2_fu_1374_p4;
wire   [63:0] tmp_2_fu_1374_p6;
wire   [63:0] tmp_2_fu_1374_p8;
wire   [63:0] tmp_2_fu_1374_p9;
wire   [63:0] tmp_3_fu_1413_p2;
wire   [63:0] tmp_3_fu_1413_p4;
wire   [63:0] tmp_3_fu_1413_p6;
wire   [63:0] tmp_3_fu_1413_p8;
wire   [63:0] tmp_3_fu_1413_p9;
wire   [9:0] or_ln14_2_fu_1436_p4;
wire   [9:0] shl_ln14_3_fu_1459_p5;
wire   [9:0] add_ln14_3_fu_1470_p2;
wire   [63:0] tmp_4_fu_1507_p2;
wire   [63:0] tmp_4_fu_1507_p4;
wire   [63:0] tmp_4_fu_1507_p6;
wire   [63:0] tmp_4_fu_1507_p8;
wire   [63:0] tmp_4_fu_1507_p9;
wire   [63:0] tmp_5_fu_1546_p2;
wire   [63:0] tmp_5_fu_1546_p4;
wire   [63:0] tmp_5_fu_1546_p6;
wire   [63:0] tmp_5_fu_1546_p8;
wire   [63:0] tmp_5_fu_1546_p9;
wire   [9:0] shl_ln14_4_fu_1569_p3;
wire   [9:0] add_ln14_4_fu_1576_p2;
wire   [9:0] shl_ln14_5_fu_1589_p3;
wire   [9:0] add_ln14_5_fu_1596_p2;
wire   [63:0] tmp_6_fu_1633_p2;
wire   [63:0] tmp_6_fu_1633_p4;
wire   [63:0] tmp_6_fu_1633_p6;
wire   [63:0] tmp_6_fu_1633_p8;
wire   [63:0] tmp_6_fu_1633_p9;
wire   [63:0] tmp_7_fu_1672_p2;
wire   [63:0] tmp_7_fu_1672_p4;
wire   [63:0] tmp_7_fu_1672_p6;
wire   [63:0] tmp_7_fu_1672_p8;
wire   [63:0] tmp_7_fu_1672_p9;
wire   [6:0] zext_ln14_26_fu_1695_p1;
wire   [9:0] or_ln14_4_fu_1698_p4;
wire   [9:0] shl_ln14_6_fu_1724_p5;
wire   [9:0] add_ln14_6_fu_1735_p2;
wire   [63:0] tmp_8_fu_1772_p2;
wire   [63:0] tmp_8_fu_1772_p4;
wire   [63:0] tmp_8_fu_1772_p6;
wire   [63:0] tmp_8_fu_1772_p8;
wire   [63:0] tmp_8_fu_1772_p9;
wire   [63:0] tmp_9_fu_1811_p2;
wire   [63:0] tmp_9_fu_1811_p4;
wire   [63:0] tmp_9_fu_1811_p6;
wire   [63:0] tmp_9_fu_1811_p8;
wire   [63:0] tmp_9_fu_1811_p9;
wire   [9:0] shl_ln14_7_fu_1834_p5;
wire   [9:0] add_ln14_7_fu_1844_p2;
wire   [9:0] shl_ln14_8_fu_1857_p5;
wire   [9:0] add_ln14_8_fu_1867_p2;
wire   [63:0] tmp_s_fu_1906_p2;
wire   [63:0] tmp_s_fu_1906_p4;
wire   [63:0] tmp_s_fu_1906_p6;
wire   [63:0] tmp_s_fu_1906_p8;
wire   [63:0] tmp_s_fu_1906_p9;
wire   [63:0] tmp_10_fu_1945_p2;
wire   [63:0] tmp_10_fu_1945_p4;
wire   [63:0] tmp_10_fu_1945_p6;
wire   [63:0] tmp_10_fu_1945_p8;
wire   [63:0] tmp_10_fu_1945_p9;
wire   [9:0] or_ln14_6_fu_1968_p4;
wire   [9:0] shl_ln14_9_fu_1984_p5;
wire   [9:0] add_ln14_9_fu_1994_p2;
wire   [63:0] tmp_11_fu_2031_p2;
wire   [63:0] tmp_11_fu_2031_p4;
wire   [63:0] tmp_11_fu_2031_p6;
wire   [63:0] tmp_11_fu_2031_p8;
wire   [63:0] tmp_11_fu_2031_p9;
wire   [63:0] tmp_12_fu_2070_p2;
wire   [63:0] tmp_12_fu_2070_p4;
wire   [63:0] tmp_12_fu_2070_p6;
wire   [63:0] tmp_12_fu_2070_p8;
wire   [63:0] tmp_12_fu_2070_p9;
wire   [9:0] shl_ln14_s_fu_2093_p3;
wire   [9:0] add_ln14_10_fu_2100_p2;
wire   [9:0] shl_ln14_10_fu_2113_p3;
wire   [9:0] add_ln14_11_fu_2120_p2;
wire   [63:0] tmp_13_fu_2167_p2;
wire   [63:0] tmp_13_fu_2167_p4;
wire   [63:0] tmp_13_fu_2167_p6;
wire   [63:0] tmp_13_fu_2167_p8;
wire   [63:0] tmp_13_fu_2167_p9;
wire   [63:0] tmp_14_fu_2206_p2;
wire   [63:0] tmp_14_fu_2206_p4;
wire   [63:0] tmp_14_fu_2206_p6;
wire   [63:0] tmp_14_fu_2206_p8;
wire   [63:0] tmp_14_fu_2206_p9;
wire   [5:0] or_ln1_fu_2241_p3;
wire   [5:0] or_ln13_1_fu_2253_p3;
wire   [5:0] or_ln13_2_fu_2265_p3;
wire   [5:0] or_ln13_3_fu_2277_p3;
wire   [5:0] or_ln13_4_fu_2289_p5;
wire   [5:0] or_ln13_5_fu_2304_p3;
wire   [5:0] or_ln13_6_fu_2316_p3;
wire   [5:0] or_ln13_7_fu_2328_p3;
wire   [5:0] or_ln13_8_fu_2340_p5;
wire   [5:0] or_ln13_9_fu_2355_p5;
wire   [5:0] or_ln13_s_fu_2370_p5;
wire   [5:0] or_ln13_10_fu_2385_p3;
wire   [5:0] or_ln13_11_fu_2397_p5;
wire   [5:0] or_ln13_12_fu_2412_p3;
wire   [5:0] or_ln13_13_fu_2424_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage1;
reg    ap_idle_pp0_0to0;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire   [1:0] tmp_fu_1207_p1;
wire   [1:0] tmp_fu_1207_p3;
wire  signed [1:0] tmp_fu_1207_p5;
wire  signed [1:0] tmp_fu_1207_p7;
wire   [1:0] tmp_1_fu_1246_p1;
wire   [1:0] tmp_1_fu_1246_p3;
wire  signed [1:0] tmp_1_fu_1246_p5;
wire  signed [1:0] tmp_1_fu_1246_p7;
wire   [1:0] tmp_2_fu_1374_p1;
wire   [1:0] tmp_2_fu_1374_p3;
wire  signed [1:0] tmp_2_fu_1374_p5;
wire  signed [1:0] tmp_2_fu_1374_p7;
wire   [1:0] tmp_3_fu_1413_p1;
wire   [1:0] tmp_3_fu_1413_p3;
wire  signed [1:0] tmp_3_fu_1413_p5;
wire  signed [1:0] tmp_3_fu_1413_p7;
wire   [1:0] tmp_4_fu_1507_p1;
wire   [1:0] tmp_4_fu_1507_p3;
wire  signed [1:0] tmp_4_fu_1507_p5;
wire  signed [1:0] tmp_4_fu_1507_p7;
wire   [1:0] tmp_5_fu_1546_p1;
wire   [1:0] tmp_5_fu_1546_p3;
wire  signed [1:0] tmp_5_fu_1546_p5;
wire  signed [1:0] tmp_5_fu_1546_p7;
wire   [1:0] tmp_6_fu_1633_p1;
wire   [1:0] tmp_6_fu_1633_p3;
wire  signed [1:0] tmp_6_fu_1633_p5;
wire  signed [1:0] tmp_6_fu_1633_p7;
wire   [1:0] tmp_7_fu_1672_p1;
wire   [1:0] tmp_7_fu_1672_p3;
wire  signed [1:0] tmp_7_fu_1672_p5;
wire  signed [1:0] tmp_7_fu_1672_p7;
wire   [1:0] tmp_8_fu_1772_p1;
wire   [1:0] tmp_8_fu_1772_p3;
wire  signed [1:0] tmp_8_fu_1772_p5;
wire  signed [1:0] tmp_8_fu_1772_p7;
wire   [1:0] tmp_9_fu_1811_p1;
wire   [1:0] tmp_9_fu_1811_p3;
wire  signed [1:0] tmp_9_fu_1811_p5;
wire  signed [1:0] tmp_9_fu_1811_p7;
wire   [1:0] tmp_s_fu_1906_p1;
wire   [1:0] tmp_s_fu_1906_p3;
wire  signed [1:0] tmp_s_fu_1906_p5;
wire  signed [1:0] tmp_s_fu_1906_p7;
wire   [1:0] tmp_10_fu_1945_p1;
wire   [1:0] tmp_10_fu_1945_p3;
wire  signed [1:0] tmp_10_fu_1945_p5;
wire  signed [1:0] tmp_10_fu_1945_p7;
wire   [1:0] tmp_11_fu_2031_p1;
wire   [1:0] tmp_11_fu_2031_p3;
wire  signed [1:0] tmp_11_fu_2031_p5;
wire  signed [1:0] tmp_11_fu_2031_p7;
wire   [1:0] tmp_12_fu_2070_p1;
wire   [1:0] tmp_12_fu_2070_p3;
wire  signed [1:0] tmp_12_fu_2070_p5;
wire  signed [1:0] tmp_12_fu_2070_p7;
wire   [1:0] tmp_13_fu_2167_p1;
wire   [1:0] tmp_13_fu_2167_p3;
wire  signed [1:0] tmp_13_fu_2167_p5;
wire  signed [1:0] tmp_13_fu_2167_p7;
wire   [1:0] tmp_14_fu_2206_p1;
wire   [1:0] tmp_14_fu_2206_p3;
wire  signed [1:0] tmp_14_fu_2206_p5;
wire  signed [1:0] tmp_14_fu_2206_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 s_fu_162 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U3(.din0(tmp_fu_1207_p2),.din1(tmp_fu_1207_p4),.din2(tmp_fu_1207_p6),.din3(tmp_fu_1207_p8),.def(tmp_fu_1207_p9),.sel(empty),.dout(tmp_fu_1207_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U4(.din0(tmp_1_fu_1246_p2),.din1(tmp_1_fu_1246_p4),.din2(tmp_1_fu_1246_p6),.din3(tmp_1_fu_1246_p8),.def(tmp_1_fu_1246_p9),.sel(empty),.dout(tmp_1_fu_1246_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U5(.din0(tmp_2_fu_1374_p2),.din1(tmp_2_fu_1374_p4),.din2(tmp_2_fu_1374_p6),.din3(tmp_2_fu_1374_p8),.def(tmp_2_fu_1374_p9),.sel(empty),.dout(tmp_2_fu_1374_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U6(.din0(tmp_3_fu_1413_p2),.din1(tmp_3_fu_1413_p4),.din2(tmp_3_fu_1413_p6),.din3(tmp_3_fu_1413_p8),.def(tmp_3_fu_1413_p9),.sel(empty),.dout(tmp_3_fu_1413_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U7(.din0(tmp_4_fu_1507_p2),.din1(tmp_4_fu_1507_p4),.din2(tmp_4_fu_1507_p6),.din3(tmp_4_fu_1507_p8),.def(tmp_4_fu_1507_p9),.sel(empty),.dout(tmp_4_fu_1507_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U8(.din0(tmp_5_fu_1546_p2),.din1(tmp_5_fu_1546_p4),.din2(tmp_5_fu_1546_p6),.din3(tmp_5_fu_1546_p8),.def(tmp_5_fu_1546_p9),.sel(empty),.dout(tmp_5_fu_1546_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U9(.din0(tmp_6_fu_1633_p2),.din1(tmp_6_fu_1633_p4),.din2(tmp_6_fu_1633_p6),.din3(tmp_6_fu_1633_p8),.def(tmp_6_fu_1633_p9),.sel(empty),.dout(tmp_6_fu_1633_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U10(.din0(tmp_7_fu_1672_p2),.din1(tmp_7_fu_1672_p4),.din2(tmp_7_fu_1672_p6),.din3(tmp_7_fu_1672_p8),.def(tmp_7_fu_1672_p9),.sel(empty),.dout(tmp_7_fu_1672_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U11(.din0(tmp_8_fu_1772_p2),.din1(tmp_8_fu_1772_p4),.din2(tmp_8_fu_1772_p6),.din3(tmp_8_fu_1772_p8),.def(tmp_8_fu_1772_p9),.sel(empty),.dout(tmp_8_fu_1772_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U12(.din0(tmp_9_fu_1811_p2),.din1(tmp_9_fu_1811_p4),.din2(tmp_9_fu_1811_p6),.din3(tmp_9_fu_1811_p8),.def(tmp_9_fu_1811_p9),.sel(empty),.dout(tmp_9_fu_1811_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U13(.din0(tmp_s_fu_1906_p2),.din1(tmp_s_fu_1906_p4),.din2(tmp_s_fu_1906_p6),.din3(tmp_s_fu_1906_p8),.def(tmp_s_fu_1906_p9),.sel(empty),.dout(tmp_s_fu_1906_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U14(.din0(tmp_10_fu_1945_p2),.din1(tmp_10_fu_1945_p4),.din2(tmp_10_fu_1945_p6),.din3(tmp_10_fu_1945_p8),.def(tmp_10_fu_1945_p9),.sel(empty),.dout(tmp_10_fu_1945_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U15(.din0(tmp_11_fu_2031_p2),.din1(tmp_11_fu_2031_p4),.din2(tmp_11_fu_2031_p6),.din3(tmp_11_fu_2031_p8),.def(tmp_11_fu_2031_p9),.sel(empty),.dout(tmp_11_fu_2031_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U16(.din0(tmp_12_fu_2070_p2),.din1(tmp_12_fu_2070_p4),.din2(tmp_12_fu_2070_p6),.din3(tmp_12_fu_2070_p8),.def(tmp_12_fu_2070_p9),.sel(empty),.dout(tmp_12_fu_2070_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U17(.din0(tmp_13_fu_2167_p2),.din1(tmp_13_fu_2167_p4),.din2(tmp_13_fu_2167_p6),.din3(tmp_13_fu_2167_p8),.def(tmp_13_fu_2167_p9),.sel(empty),.dout(tmp_13_fu_2167_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U18(.din0(tmp_14_fu_2206_p2),.din1(tmp_14_fu_2206_p4),.din2(tmp_14_fu_2206_p6),.din3(tmp_14_fu_2206_p8),.def(tmp_14_fu_2206_p9),.sel(empty),.dout(tmp_14_fu_2206_p11));
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage7)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter1_stage1) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_fu_162 <= 7'd0;
    end else if (((tmp_17_reg_2494 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        s_fu_162 <= add_ln13_fu_2133_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        conv3_udiv_cast_cast_reg_2470[5 : 0] <= conv3_udiv_cast_cast_fu_1065_p1[5 : 0];
        lshr_ln9_reg_2498 <= {{ap_sig_allocacmp_s_1[5:2]}};
        lshr_ln9_reg_2498_pp0_iter1_reg <= lshr_ln9_reg_2498;
        s_1_reg_2485 <= ap_sig_allocacmp_s_1;
        s_1_reg_2485_pp0_iter1_reg <= s_1_reg_2485;
        tmp_13_reg_3165 <= tmp_13_fu_2167_p11;
        tmp_14_reg_3170 <= tmp_14_fu_2206_p11;
        tmp_17_reg_2494 <= ap_sig_allocacmp_s_1[32'd6];
        tmp_17_reg_2494_pp0_iter1_reg <= tmp_17_reg_2494;
        tmp_38_reg_2511 <= {{ap_sig_allocacmp_s_1[5:4]}};
        tmp_38_reg_2511_pp0_iter1_reg <= tmp_38_reg_2511;
        tmp_38_reg_2511_pp0_iter2_reg <= tmp_38_reg_2511_pp0_iter1_reg;
        tmp_40_reg_2554 <= {{ap_sig_allocacmp_s_1[5:1]}};
        tmp_40_reg_2554_pp0_iter1_reg <= tmp_40_reg_2554;
        tmp_56_reg_2594 <= {{ap_sig_allocacmp_s_1[5:3]}};
        tmp_56_reg_2594_pp0_iter1_reg <= tmp_56_reg_2594;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        init_0_load_1_reg_2685 <= init_0_q0;
        init_1_load_1_reg_2690 <= init_1_q0;
        init_2_load_1_reg_2695 <= init_2_q0;
        init_2_load_reg_2635 <= init_2_q1;
        init_3_load_1_reg_2700 <= init_3_q0;
        init_3_load_reg_2660 <= init_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        init_0_load_3_reg_2830 <= init_0_q0;
        init_1_load_3_reg_2835 <= init_1_q0;
        init_2_load_2_reg_2820 <= init_2_q1;
        init_2_load_3_reg_2840 <= init_2_q0;
        init_3_load_2_reg_2825 <= init_3_q1;
        init_3_load_3_reg_2845 <= init_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1047 <= init_0_q1;
        reg_1051 <= init_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1055 <= grp_fu_572_p_dout0;
        reg_1060 <= grp_fu_1322_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp_10_reg_3050 <= tmp_10_fu_1945_p11;
        tmp_s_reg_3045 <= tmp_s_fu_1906_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        tmp_11_reg_3105 <= tmp_11_fu_2031_p11;
        tmp_12_reg_3110 <= tmp_12_fu_2070_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_18_reg_2793 <= s_1_reg_2485[32'd1];
        tmp_18_reg_2793_pp0_iter1_reg <= tmp_18_reg_2793;
        tmp_2_reg_2763 <= tmp_2_fu_1374_p11;
        tmp_3_reg_2768 <= tmp_3_fu_1413_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_19_reg_2705 <= s_1_reg_2485[32'd2];
        tmp_19_reg_2705_pp0_iter1_reg <= tmp_19_reg_2705;
        tmp_1_reg_2630 <= tmp_1_fu_1246_p11;
        tmp_reg_2625 <= tmp_fu_1207_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_4_reg_2860 <= tmp_4_fu_1507_p11;
        tmp_5_reg_2865 <= tmp_5_fu_1546_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_6_reg_2920 <= tmp_6_fu_1633_p11;
        tmp_7_reg_2925 <= tmp_7_fu_1672_p11;
        tmp_89_reg_2950 <= {{s_1_reg_2485[2:1]}};
        tmp_89_reg_2950_pp0_iter1_reg <= tmp_89_reg_2950;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_8_reg_2985 <= tmp_8_fu_1772_p11;
        tmp_9_reg_2990 <= tmp_9_fu_1811_p11;
    end
end
always @ (*) begin
    if (((tmp_17_reg_2494 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_17_reg_2494_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter1_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_s_1 = s_fu_162;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_0_address0_local = zext_ln14_15_fu_2125_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_0_address0_local = zext_ln14_13_fu_1999_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_0_address0_local = zext_ln14_11_fu_1872_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_0_address0_local = zext_ln14_9_fu_1740_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address0_local = zext_ln14_7_fu_1601_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address0_local = zext_ln14_5_fu_1475_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address0_local = zext_ln14_3_fu_1301_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address0_local = zext_ln14_1_fu_1157_p1;
        end else begin
            emission_0_address0_local = 'bx;
        end
    end else begin
        emission_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_0_address1_local = zext_ln14_14_fu_2105_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_0_address1_local = zext_ln14_12_fu_1976_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_0_address1_local = zext_ln14_10_fu_1849_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_0_address1_local = zext_ln14_8_fu_1707_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address1_local = zext_ln14_6_fu_1581_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address1_local = zext_ln14_4_fu_1444_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address1_local = zext_ln14_2_fu_1281_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address1_local = zext_ln14_fu_1125_p1;
        end else begin
            emission_0_address1_local = 'bx;
        end
    end else begin
        emission_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_0_ce0_local = 1'b1;
    end else begin
        emission_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_0_ce1_local = 1'b1;
    end else begin
        emission_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_1_address0_local = zext_ln14_15_fu_2125_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_1_address0_local = zext_ln14_13_fu_1999_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_1_address0_local = zext_ln14_11_fu_1872_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_1_address0_local = zext_ln14_9_fu_1740_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_1_address0_local = zext_ln14_7_fu_1601_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address0_local = zext_ln14_5_fu_1475_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address0_local = zext_ln14_3_fu_1301_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address0_local = zext_ln14_1_fu_1157_p1;
        end else begin
            emission_1_address0_local = 'bx;
        end
    end else begin
        emission_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_1_address1_local = zext_ln14_14_fu_2105_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_1_address1_local = zext_ln14_12_fu_1976_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_1_address1_local = zext_ln14_10_fu_1849_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_1_address1_local = zext_ln14_8_fu_1707_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_1_address1_local = zext_ln14_6_fu_1581_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address1_local = zext_ln14_4_fu_1444_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address1_local = zext_ln14_2_fu_1281_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address1_local = zext_ln14_fu_1125_p1;
        end else begin
            emission_1_address1_local = 'bx;
        end
    end else begin
        emission_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_1_ce0_local = 1'b1;
    end else begin
        emission_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_1_ce1_local = 1'b1;
    end else begin
        emission_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_2_address0_local = zext_ln14_15_fu_2125_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_2_address0_local = zext_ln14_13_fu_1999_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_2_address0_local = zext_ln14_11_fu_1872_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_2_address0_local = zext_ln14_9_fu_1740_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_2_address0_local = zext_ln14_7_fu_1601_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_2_address0_local = zext_ln14_5_fu_1475_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_2_address0_local = zext_ln14_3_fu_1301_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_2_address0_local = zext_ln14_1_fu_1157_p1;
        end else begin
            emission_2_address0_local = 'bx;
        end
    end else begin
        emission_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_2_address1_local = zext_ln14_14_fu_2105_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_2_address1_local = zext_ln14_12_fu_1976_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_2_address1_local = zext_ln14_10_fu_1849_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_2_address1_local = zext_ln14_8_fu_1707_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_2_address1_local = zext_ln14_6_fu_1581_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_2_address1_local = zext_ln14_4_fu_1444_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_2_address1_local = zext_ln14_2_fu_1281_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_2_address1_local = zext_ln14_fu_1125_p1;
        end else begin
            emission_2_address1_local = 'bx;
        end
    end else begin
        emission_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_2_ce0_local = 1'b1;
    end else begin
        emission_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_2_ce1_local = 1'b1;
    end else begin
        emission_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_3_address0_local = zext_ln14_15_fu_2125_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_3_address0_local = zext_ln14_13_fu_1999_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_3_address0_local = zext_ln14_11_fu_1872_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_3_address0_local = zext_ln14_9_fu_1740_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_3_address0_local = zext_ln14_7_fu_1601_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_3_address0_local = zext_ln14_5_fu_1475_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_3_address0_local = zext_ln14_3_fu_1301_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_3_address0_local = zext_ln14_1_fu_1157_p1;
        end else begin
            emission_3_address0_local = 'bx;
        end
    end else begin
        emission_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_3_address1_local = zext_ln14_14_fu_2105_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_3_address1_local = zext_ln14_12_fu_1976_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_3_address1_local = zext_ln14_10_fu_1849_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_3_address1_local = zext_ln14_8_fu_1707_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_3_address1_local = zext_ln14_6_fu_1581_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_3_address1_local = zext_ln14_4_fu_1444_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_3_address1_local = zext_ln14_2_fu_1281_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_3_address1_local = zext_ln14_fu_1125_p1;
        end else begin
            emission_3_address1_local = 'bx;
        end
    end else begin
        emission_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_3_ce0_local = 1'b1;
    end else begin
        emission_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_3_ce1_local = 1'b1;
    end else begin
        emission_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1039_p0 = bitcast_ln14_70_fu_2229_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1039_p0 = bitcast_ln14_60_fu_2143_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1039_p0 = bitcast_ln14_50_fu_2007_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1039_p0 = bitcast_ln14_40_fu_1880_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1039_p0 = bitcast_ln14_30_fu_1748_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1039_p0 = bitcast_ln14_20_fu_1609_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1039_p0 = bitcast_ln14_10_fu_1483_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1039_p0 = bitcast_ln14_fu_1348_p1;
    end else begin
        grp_fu_1039_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1039_p1 = tmp_13_reg_3165;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1039_p1 = tmp_11_reg_3105;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1039_p1 = tmp_s_reg_3045;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1039_p1 = tmp_8_reg_2985;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1039_p1 = tmp_6_reg_2920;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1039_p1 = tmp_4_reg_2860;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1039_p1 = tmp_2_reg_2763;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1039_p1 = tmp_reg_2625;
    end else begin
        grp_fu_1039_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1043_p0 = bitcast_ln14_75_fu_2233_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1043_p0 = bitcast_ln14_65_fu_2147_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1043_p0 = bitcast_ln14_55_fu_2011_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1043_p0 = bitcast_ln14_45_fu_1885_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1043_p0 = bitcast_ln14_35_fu_1752_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1043_p0 = bitcast_ln14_25_fu_1613_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1043_p0 = bitcast_ln14_15_fu_1487_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1043_p0 = bitcast_ln14_5_fu_1353_p1;
    end else begin
        grp_fu_1043_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1043_p1 = tmp_14_reg_3170;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1043_p1 = tmp_12_reg_3110;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1043_p1 = tmp_10_reg_3050;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1043_p1 = tmp_9_reg_2990;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1043_p1 = tmp_7_reg_2925;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1043_p1 = tmp_5_reg_2865;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1043_p1 = tmp_3_reg_2768;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1043_p1 = tmp_1_reg_2630;
    end else begin
        grp_fu_1043_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_0_address0_local = zext_ln14_31_fu_1340_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_0_address0_local = zext_ln14_20_fu_1183_p1;
        end else begin
            init_0_address0_local = 'bx;
        end
    end else begin
        init_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_0_address1_local = zext_ln14_25_fu_1325_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_0_address1_local = zext_ln9_fu_1099_p1;
        end else begin
            init_0_address1_local = 'bx;
        end
    end else begin
        init_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_0_ce0_local = 1'b1;
    end else begin
        init_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_0_ce1_local = 1'b1;
    end else begin
        init_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_1_address0_local = zext_ln14_31_fu_1340_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_1_address0_local = zext_ln14_20_fu_1183_p1;
        end else begin
            init_1_address0_local = 'bx;
        end
    end else begin
        init_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_1_address1_local = zext_ln14_25_fu_1325_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_1_address1_local = zext_ln9_fu_1099_p1;
        end else begin
            init_1_address1_local = 'bx;
        end
    end else begin
        init_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_1_ce0_local = 1'b1;
    end else begin
        init_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_1_ce1_local = 1'b1;
    end else begin
        init_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_2_address0_local = zext_ln14_31_fu_1340_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_2_address0_local = zext_ln14_20_fu_1183_p1;
        end else begin
            init_2_address0_local = 'bx;
        end
    end else begin
        init_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_2_address1_local = zext_ln14_25_fu_1325_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_2_address1_local = zext_ln9_fu_1099_p1;
        end else begin
            init_2_address1_local = 'bx;
        end
    end else begin
        init_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_2_ce0_local = 1'b1;
    end else begin
        init_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_2_ce1_local = 1'b1;
    end else begin
        init_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_3_address0_local = zext_ln14_31_fu_1340_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_3_address0_local = zext_ln14_20_fu_1183_p1;
        end else begin
            init_3_address0_local = 'bx;
        end
    end else begin
        init_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_3_address1_local = zext_ln14_25_fu_1325_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_3_address1_local = zext_ln9_fu_1099_p1;
        end else begin
            init_3_address1_local = 'bx;
        end
    end else begin
        init_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_3_ce0_local = 1'b1;
    end else begin
        init_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_3_ce1_local = 1'b1;
    end else begin
        init_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_address0_local = zext_ln14_34_fu_2431_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_address0_local = zext_ln14_32_fu_2407_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        llike_address0_local = zext_ln14_29_fu_2380_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        llike_address0_local = zext_ln14_27_fu_2350_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_address0_local = zext_ln14_23_fu_2323_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_address0_local = zext_ln14_21_fu_2299_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_address0_local = zext_ln14_18_fu_2272_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_address0_local = zext_ln14_16_fu_2248_p1;
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_address1_local = zext_ln14_33_fu_2419_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_address1_local = zext_ln14_30_fu_2392_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        llike_address1_local = zext_ln14_28_fu_2365_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        llike_address1_local = zext_ln14_24_fu_2335_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_address1_local = zext_ln14_22_fu_2311_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_address1_local = zext_ln14_19_fu_2284_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_address1_local = zext_ln14_17_fu_2260_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_address1_local = zext_ln13_fu_2237_p1;
    end else begin
        llike_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_ce1_local = 1'b1;
    end else begin
        llike_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_we0_local = 1'b1;
    end else begin
        llike_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_we1_local = 1'b1;
    end else begin
        llike_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter1_stage1) & (ap_idle_pp0_0to0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln13_fu_2133_p2 = (s_1_reg_2485 + 7'd16);
assign add_ln14_10_fu_2100_p2 = (shl_ln14_s_fu_2093_p3 + conv3_udiv_cast_cast_reg_2470);
assign add_ln14_11_fu_2120_p2 = (shl_ln14_10_fu_2113_p3 + conv3_udiv_cast_cast_reg_2470);
assign add_ln14_1_fu_1276_p2 = (shl_ln14_1_fu_1269_p3 + conv3_udiv_cast_cast_reg_2470);
assign add_ln14_2_fu_1296_p2 = (shl_ln14_2_fu_1289_p3 + conv3_udiv_cast_cast_reg_2470);
assign add_ln14_3_fu_1470_p2 = (shl_ln14_3_fu_1459_p5 + conv3_udiv_cast_cast_reg_2470);
assign add_ln14_4_fu_1576_p2 = (shl_ln14_4_fu_1569_p3 + conv3_udiv_cast_cast_reg_2470);
assign add_ln14_5_fu_1596_p2 = (shl_ln14_5_fu_1589_p3 + conv3_udiv_cast_cast_reg_2470);
assign add_ln14_6_fu_1735_p2 = (shl_ln14_6_fu_1724_p5 + conv3_udiv_cast_cast_reg_2470);
assign add_ln14_7_fu_1844_p2 = (shl_ln14_7_fu_1834_p5 + conv3_udiv_cast_cast_reg_2470);
assign add_ln14_8_fu_1867_p2 = (shl_ln14_8_fu_1857_p5 + conv3_udiv_cast_cast_reg_2470);
assign add_ln14_9_fu_1994_p2 = (shl_ln14_9_fu_1984_p5 + conv3_udiv_cast_cast_reg_2470);
assign add_ln14_fu_1151_p2 = (shl_ln_fu_1143_p3 + conv3_udiv_cast_cast_fu_1065_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign bitcast_ln14_10_fu_1483_p1 = init_2_load_reg_2635;
assign bitcast_ln14_15_fu_1487_p1 = init_3_load_reg_2660;
assign bitcast_ln14_20_fu_1609_p1 = init_0_load_1_reg_2685;
assign bitcast_ln14_25_fu_1613_p1 = init_1_load_1_reg_2690;
assign bitcast_ln14_30_fu_1748_p1 = init_2_load_1_reg_2695;
assign bitcast_ln14_35_fu_1752_p1 = init_3_load_1_reg_2700;
assign bitcast_ln14_40_fu_1880_p1 = reg_1047;
assign bitcast_ln14_45_fu_1885_p1 = reg_1051;
assign bitcast_ln14_50_fu_2007_p1 = init_2_load_2_reg_2820;
assign bitcast_ln14_55_fu_2011_p1 = init_3_load_2_reg_2825;
assign bitcast_ln14_5_fu_1353_p1 = reg_1051;
assign bitcast_ln14_60_fu_2143_p1 = init_0_load_3_reg_2830;
assign bitcast_ln14_65_fu_2147_p1 = init_1_load_3_reg_2835;
assign bitcast_ln14_70_fu_2229_p1 = init_2_load_3_reg_2840;
assign bitcast_ln14_75_fu_2233_p1 = init_3_load_3_reg_2845;
assign bitcast_ln14_fu_1348_p1 = reg_1047;
assign conv3_udiv_cast_cast_fu_1065_p1 = conv3_udiv_cast;
assign emission_0_address0 = emission_0_address0_local;
assign emission_0_address1 = emission_0_address1_local;
assign emission_0_ce0 = emission_0_ce0_local;
assign emission_0_ce1 = emission_0_ce1_local;
assign emission_1_address0 = emission_1_address0_local;
assign emission_1_address1 = emission_1_address1_local;
assign emission_1_ce0 = emission_1_ce0_local;
assign emission_1_ce1 = emission_1_ce1_local;
assign emission_2_address0 = emission_2_address0_local;
assign emission_2_address1 = emission_2_address1_local;
assign emission_2_ce0 = emission_2_ce0_local;
assign emission_2_ce1 = emission_2_ce1_local;
assign emission_3_address0 = emission_3_address0_local;
assign emission_3_address1 = emission_3_address1_local;
assign emission_3_ce0 = emission_3_ce0_local;
assign emission_3_ce1 = emission_3_ce1_local;
assign grp_fu_1322_p_ce = 1'b1;
assign grp_fu_1322_p_din0 = grp_fu_1043_p0;
assign grp_fu_1322_p_din1 = grp_fu_1043_p1;
assign grp_fu_1322_p_opcode = 2'd0;
assign grp_fu_572_p_ce = 1'b1;
assign grp_fu_572_p_din0 = grp_fu_1039_p0;
assign grp_fu_572_p_din1 = grp_fu_1039_p1;
assign grp_fu_572_p_opcode = 2'd0;
assign init_0_address0 = init_0_address0_local;
assign init_0_address1 = init_0_address1_local;
assign init_0_ce0 = init_0_ce0_local;
assign init_0_ce1 = init_0_ce1_local;
assign init_1_address0 = init_1_address0_local;
assign init_1_address1 = init_1_address1_local;
assign init_1_ce0 = init_1_ce0_local;
assign init_1_ce1 = init_1_ce1_local;
assign init_2_address0 = init_2_address0_local;
assign init_2_address1 = init_2_address1_local;
assign init_2_ce0 = init_2_ce0_local;
assign init_2_ce1 = init_2_ce1_local;
assign init_3_address0 = init_3_address0_local;
assign init_3_address1 = init_3_address1_local;
assign init_3_ce0 = init_3_ce0_local;
assign init_3_ce1 = init_3_ce1_local;
assign llike_address0 = llike_address0_local;
assign llike_address1 = llike_address1_local;
assign llike_ce0 = llike_ce0_local;
assign llike_ce1 = llike_ce1_local;
assign llike_d0 = reg_1060;
assign llike_d1 = reg_1055;
assign llike_we0 = llike_we0_local;
assign llike_we1 = llike_we1_local;
assign lshr_ln9_fu_1089_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign or_ln13_10_fu_2385_p3 = {{tmp_38_reg_2511_pp0_iter1_reg}, {4'd12}};
assign or_ln13_11_fu_2397_p5 = {{{{tmp_38_reg_2511_pp0_iter1_reg}, {2'd3}}, {tmp_18_reg_2793_pp0_iter1_reg}}, {1'd1}};
assign or_ln13_12_fu_2412_p3 = {{tmp_38_reg_2511_pp0_iter2_reg}, {4'd14}};
assign or_ln13_13_fu_2424_p3 = {{tmp_38_reg_2511_pp0_iter2_reg}, {4'd15}};
assign or_ln13_1_fu_2253_p3 = {{lshr_ln9_reg_2498_pp0_iter1_reg}, {2'd2}};
assign or_ln13_2_fu_2265_p3 = {{lshr_ln9_reg_2498_pp0_iter1_reg}, {2'd3}};
assign or_ln13_3_fu_2277_p3 = {{tmp_56_reg_2594_pp0_iter1_reg}, {3'd4}};
assign or_ln13_4_fu_2289_p5 = {{{{tmp_56_reg_2594_pp0_iter1_reg}, {1'd1}}, {tmp_18_reg_2793_pp0_iter1_reg}}, {1'd1}};
assign or_ln13_5_fu_2304_p3 = {{tmp_56_reg_2594_pp0_iter1_reg}, {3'd6}};
assign or_ln13_6_fu_2316_p3 = {{tmp_56_reg_2594_pp0_iter1_reg}, {3'd7}};
assign or_ln13_7_fu_2328_p3 = {{tmp_38_reg_2511_pp0_iter1_reg}, {4'd8}};
assign or_ln13_8_fu_2340_p5 = {{{{tmp_38_reg_2511_pp0_iter1_reg}, {1'd1}}, {tmp_89_reg_2950_pp0_iter1_reg}}, {1'd1}};
assign or_ln13_9_fu_2355_p5 = {{{{tmp_38_reg_2511_pp0_iter1_reg}, {1'd1}}, {tmp_19_reg_2705_pp0_iter1_reg}}, {2'd2}};
assign or_ln13_s_fu_2370_p5 = {{{{tmp_38_reg_2511_pp0_iter1_reg}, {1'd1}}, {tmp_19_reg_2705_pp0_iter1_reg}}, {2'd3}};
assign or_ln14_1_fu_1175_p3 = {{tmp_56_fu_1165_p4}, {1'd1}};
assign or_ln14_2_fu_1436_p4 = {{{tmp_38_reg_2511}, {2'd1}}, {conv3_udiv}};
assign or_ln14_3_fu_1316_p4 = {{{tmp_38_reg_2511}, {1'd1}}, {tmp_19_fu_1309_p3}};
assign or_ln14_4_fu_1698_p4 = {{{tmp_38_reg_2511}, {1'd1}}, {zext_ln14_26_fu_1695_p1}};
assign or_ln14_5_fu_1333_p3 = {{tmp_38_reg_2511}, {2'd3}};
assign or_ln14_6_fu_1968_p4 = {{{tmp_38_reg_2511}, {2'd3}}, {conv3_udiv}};
assign or_ln1_fu_2241_p3 = {{tmp_40_reg_2554_pp0_iter1_reg}, {1'd1}};
assign or_ln_fu_1117_p3 = {{tmp_38_fu_1107_p4}, {p_cast_fu_1069_p1}};
assign p_cast_fu_1069_p1 = empty_11;
assign shl_ln14_10_fu_2113_p3 = {{tmp_38_reg_2511}, {8'd240}};
assign shl_ln14_1_fu_1269_p3 = {{lshr_ln9_reg_2498}, {6'd32}};
assign shl_ln14_2_fu_1289_p3 = {{lshr_ln9_reg_2498}, {6'd48}};
assign shl_ln14_3_fu_1459_p5 = {{{{tmp_56_reg_2594}, {1'd1}}, {tmp_18_fu_1452_p3}}, {5'd16}};
assign shl_ln14_4_fu_1569_p3 = {{tmp_56_reg_2594}, {7'd96}};
assign shl_ln14_5_fu_1589_p3 = {{tmp_56_reg_2594}, {7'd112}};
assign shl_ln14_6_fu_1724_p5 = {{{{tmp_38_reg_2511}, {1'd1}}, {tmp_89_fu_1715_p4}}, {5'd16}};
assign shl_ln14_7_fu_1834_p5 = {{{{tmp_38_reg_2511}, {1'd1}}, {tmp_19_reg_2705}}, {6'd32}};
assign shl_ln14_8_fu_1857_p5 = {{{{tmp_38_reg_2511}, {1'd1}}, {tmp_19_reg_2705}}, {6'd48}};
assign shl_ln14_9_fu_1984_p5 = {{{{tmp_38_reg_2511}, {2'd3}}, {tmp_18_reg_2793}}, {5'd16}};
assign shl_ln14_s_fu_2093_p3 = {{tmp_38_reg_2511}, {8'd224}};
assign shl_ln_fu_1143_p3 = {{tmp_40_fu_1133_p4}, {5'd16}};
assign tmp_10_fu_1945_p2 = emission_0_q0;
assign tmp_10_fu_1945_p4 = emission_1_q0;
assign tmp_10_fu_1945_p6 = emission_2_q0;
assign tmp_10_fu_1945_p8 = emission_3_q0;
assign tmp_10_fu_1945_p9 = 'bx;
assign tmp_11_fu_2031_p2 = emission_0_q1;
assign tmp_11_fu_2031_p4 = emission_1_q1;
assign tmp_11_fu_2031_p6 = emission_2_q1;
assign tmp_11_fu_2031_p8 = emission_3_q1;
assign tmp_11_fu_2031_p9 = 'bx;
assign tmp_12_fu_2070_p2 = emission_0_q0;
assign tmp_12_fu_2070_p4 = emission_1_q0;
assign tmp_12_fu_2070_p6 = emission_2_q0;
assign tmp_12_fu_2070_p8 = emission_3_q0;
assign tmp_12_fu_2070_p9 = 'bx;
assign tmp_13_fu_2167_p2 = emission_0_q1;
assign tmp_13_fu_2167_p4 = emission_1_q1;
assign tmp_13_fu_2167_p6 = emission_2_q1;
assign tmp_13_fu_2167_p8 = emission_3_q1;
assign tmp_13_fu_2167_p9 = 'bx;
assign tmp_14_fu_2206_p2 = emission_0_q0;
assign tmp_14_fu_2206_p4 = emission_1_q0;
assign tmp_14_fu_2206_p6 = emission_2_q0;
assign tmp_14_fu_2206_p8 = emission_3_q0;
assign tmp_14_fu_2206_p9 = 'bx;
assign tmp_18_fu_1452_p3 = s_1_reg_2485[32'd1];
assign tmp_19_fu_1309_p3 = s_1_reg_2485[32'd2];
assign tmp_1_fu_1246_p2 = emission_0_q0;
assign tmp_1_fu_1246_p4 = emission_1_q0;
assign tmp_1_fu_1246_p6 = emission_2_q0;
assign tmp_1_fu_1246_p8 = emission_3_q0;
assign tmp_1_fu_1246_p9 = 'bx;
assign tmp_2_fu_1374_p2 = emission_0_q1;
assign tmp_2_fu_1374_p4 = emission_1_q1;
assign tmp_2_fu_1374_p6 = emission_2_q1;
assign tmp_2_fu_1374_p8 = emission_3_q1;
assign tmp_2_fu_1374_p9 = 'bx;
assign tmp_38_fu_1107_p4 = {{ap_sig_allocacmp_s_1[5:4]}};
assign tmp_3_fu_1413_p2 = emission_0_q0;
assign tmp_3_fu_1413_p4 = emission_1_q0;
assign tmp_3_fu_1413_p6 = emission_2_q0;
assign tmp_3_fu_1413_p8 = emission_3_q0;
assign tmp_3_fu_1413_p9 = 'bx;
assign tmp_40_fu_1133_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign tmp_4_fu_1507_p2 = emission_0_q1;
assign tmp_4_fu_1507_p4 = emission_1_q1;
assign tmp_4_fu_1507_p6 = emission_2_q1;
assign tmp_4_fu_1507_p8 = emission_3_q1;
assign tmp_4_fu_1507_p9 = 'bx;
assign tmp_56_fu_1165_p4 = {{ap_sig_allocacmp_s_1[5:3]}};
assign tmp_5_fu_1546_p2 = emission_0_q0;
assign tmp_5_fu_1546_p4 = emission_1_q0;
assign tmp_5_fu_1546_p6 = emission_2_q0;
assign tmp_5_fu_1546_p8 = emission_3_q0;
assign tmp_5_fu_1546_p9 = 'bx;
assign tmp_6_fu_1633_p2 = emission_0_q1;
assign tmp_6_fu_1633_p4 = emission_1_q1;
assign tmp_6_fu_1633_p6 = emission_2_q1;
assign tmp_6_fu_1633_p8 = emission_3_q1;
assign tmp_6_fu_1633_p9 = 'bx;
assign tmp_7_fu_1672_p2 = emission_0_q0;
assign tmp_7_fu_1672_p4 = emission_1_q0;
assign tmp_7_fu_1672_p6 = emission_2_q0;
assign tmp_7_fu_1672_p8 = emission_3_q0;
assign tmp_7_fu_1672_p9 = 'bx;
assign tmp_89_fu_1715_p4 = {{s_1_reg_2485[2:1]}};
assign tmp_8_fu_1772_p2 = emission_0_q1;
assign tmp_8_fu_1772_p4 = emission_1_q1;
assign tmp_8_fu_1772_p6 = emission_2_q1;
assign tmp_8_fu_1772_p8 = emission_3_q1;
assign tmp_8_fu_1772_p9 = 'bx;
assign tmp_9_fu_1811_p2 = emission_0_q0;
assign tmp_9_fu_1811_p4 = emission_1_q0;
assign tmp_9_fu_1811_p6 = emission_2_q0;
assign tmp_9_fu_1811_p8 = emission_3_q0;
assign tmp_9_fu_1811_p9 = 'bx;
assign tmp_fu_1207_p2 = emission_0_q1;
assign tmp_fu_1207_p4 = emission_1_q1;
assign tmp_fu_1207_p6 = emission_2_q1;
assign tmp_fu_1207_p8 = emission_3_q1;
assign tmp_fu_1207_p9 = 'bx;
assign tmp_s_fu_1906_p2 = emission_0_q1;
assign tmp_s_fu_1906_p4 = emission_1_q1;
assign tmp_s_fu_1906_p6 = emission_2_q1;
assign tmp_s_fu_1906_p8 = emission_3_q1;
assign tmp_s_fu_1906_p9 = 'bx;
assign zext_ln13_fu_2237_p1 = s_1_reg_2485_pp0_iter1_reg;
assign zext_ln14_10_fu_1849_p1 = add_ln14_7_fu_1844_p2;
assign zext_ln14_11_fu_1872_p1 = add_ln14_8_fu_1867_p2;
assign zext_ln14_12_fu_1976_p1 = or_ln14_6_fu_1968_p4;
assign zext_ln14_13_fu_1999_p1 = add_ln14_9_fu_1994_p2;
assign zext_ln14_14_fu_2105_p1 = add_ln14_10_fu_2100_p2;
assign zext_ln14_15_fu_2125_p1 = add_ln14_11_fu_2120_p2;
assign zext_ln14_16_fu_2248_p1 = or_ln1_fu_2241_p3;
assign zext_ln14_17_fu_2260_p1 = or_ln13_1_fu_2253_p3;
assign zext_ln14_18_fu_2272_p1 = or_ln13_2_fu_2265_p3;
assign zext_ln14_19_fu_2284_p1 = or_ln13_3_fu_2277_p3;
assign zext_ln14_1_fu_1157_p1 = add_ln14_fu_1151_p2;
assign zext_ln14_20_fu_1183_p1 = or_ln14_1_fu_1175_p3;
assign zext_ln14_21_fu_2299_p1 = or_ln13_4_fu_2289_p5;
assign zext_ln14_22_fu_2311_p1 = or_ln13_5_fu_2304_p3;
assign zext_ln14_23_fu_2323_p1 = or_ln13_6_fu_2316_p3;
assign zext_ln14_24_fu_2335_p1 = or_ln13_7_fu_2328_p3;
assign zext_ln14_25_fu_1325_p1 = or_ln14_3_fu_1316_p4;
assign zext_ln14_26_fu_1695_p1 = conv3_udiv;
assign zext_ln14_27_fu_2350_p1 = or_ln13_8_fu_2340_p5;
assign zext_ln14_28_fu_2365_p1 = or_ln13_9_fu_2355_p5;
assign zext_ln14_29_fu_2380_p1 = or_ln13_s_fu_2370_p5;
assign zext_ln14_2_fu_1281_p1 = add_ln14_1_fu_1276_p2;
assign zext_ln14_30_fu_2392_p1 = or_ln13_10_fu_2385_p3;
assign zext_ln14_31_fu_1340_p1 = or_ln14_5_fu_1333_p3;
assign zext_ln14_32_fu_2407_p1 = or_ln13_11_fu_2397_p5;
assign zext_ln14_33_fu_2419_p1 = or_ln13_12_fu_2412_p3;
assign zext_ln14_34_fu_2431_p1 = or_ln13_13_fu_2424_p3;
assign zext_ln14_3_fu_1301_p1 = add_ln14_2_fu_1296_p2;
assign zext_ln14_4_fu_1444_p1 = or_ln14_2_fu_1436_p4;
assign zext_ln14_5_fu_1475_p1 = add_ln14_3_fu_1470_p2;
assign zext_ln14_6_fu_1581_p1 = add_ln14_4_fu_1576_p2;
assign zext_ln14_7_fu_1601_p1 = add_ln14_5_fu_1596_p2;
assign zext_ln14_8_fu_1707_p1 = or_ln14_4_fu_1698_p4;
assign zext_ln14_9_fu_1740_p1 = add_ln14_6_fu_1735_p2;
assign zext_ln14_fu_1125_p1 = or_ln_fu_1117_p3;
assign zext_ln9_fu_1099_p1 = lshr_ln9_fu_1089_p4;
always @ (posedge ap_clk) begin
    conv3_udiv_cast_cast_reg_2470[9:6] <= 4'b0000;
end
endmodule 