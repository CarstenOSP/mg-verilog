module fft1D_512_fft1D_512_Pipeline_loop11 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_y_address0,DATA_y_ce0,DATA_y_q0,DATA_y_address1,DATA_y_ce1,DATA_y_q1,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_q0,DATA_y_1_address1,DATA_y_1_ce1,DATA_y_1_q1,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_q0,DATA_y_2_address1,DATA_y_2_ce1,DATA_y_2_q1,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_q0,DATA_y_3_address1,DATA_y_3_ce1,DATA_y_3_q1,DATA_y_4_address0,DATA_y_4_ce0,DATA_y_4_q0,DATA_y_4_address1,DATA_y_4_ce1,DATA_y_4_q1,DATA_y_5_address0,DATA_y_5_ce0,DATA_y_5_q0,DATA_y_5_address1,DATA_y_5_ce1,DATA_y_5_q1,DATA_y_6_address0,DATA_y_6_ce0,DATA_y_6_q0,DATA_y_6_address1,DATA_y_6_ce1,DATA_y_6_q1,DATA_y_7_address0,DATA_y_7_ce0,DATA_y_7_q0,DATA_y_7_address1,DATA_y_7_ce1,DATA_y_7_q1,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_address1,DATA_x_ce1,DATA_x_q1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_q1,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_q0,DATA_x_2_address1,DATA_x_2_ce1,DATA_x_2_q1,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_q0,DATA_x_3_address1,DATA_x_3_ce1,DATA_x_3_q1,work_x_address0,work_x_ce0,work_x_we0,work_x_d0,work_x_address1,work_x_ce1,work_x_we1,work_x_d1,work_y_address0,work_y_ce0,work_y_we0,work_y_d0,work_y_address1,work_y_ce1,work_y_we1,work_y_d1,grp_fu_1165_p_din0,grp_fu_1165_p_din1,grp_fu_1165_p_opcode,grp_fu_1165_p_dout0,grp_fu_1165_p_ce,grp_fu_1169_p_din0,grp_fu_1169_p_din1,grp_fu_1169_p_opcode,grp_fu_1169_p_dout0,grp_fu_1169_p_ce,grp_fu_1173_p_din0,grp_fu_1173_p_din1,grp_fu_1173_p_opcode,grp_fu_1173_p_dout0,grp_fu_1173_p_ce,grp_fu_1177_p_din0,grp_fu_1177_p_din1,grp_fu_1177_p_opcode,grp_fu_1177_p_dout0,grp_fu_1177_p_ce,grp_fu_1181_p_din0,grp_fu_1181_p_din1,grp_fu_1181_p_opcode,grp_fu_1181_p_dout0,grp_fu_1181_p_ce,grp_fu_1185_p_din0,grp_fu_1185_p_din1,grp_fu_1185_p_opcode,grp_fu_1185_p_dout0,grp_fu_1185_p_ce,grp_fu_1189_p_din0,grp_fu_1189_p_din1,grp_fu_1189_p_opcode,grp_fu_1189_p_dout0,grp_fu_1189_p_ce,grp_fu_1193_p_din0,grp_fu_1193_p_din1,grp_fu_1193_p_opcode,grp_fu_1193_p_dout0,grp_fu_1193_p_ce,grp_fu_1197_p_din0,grp_fu_1197_p_din1,grp_fu_1197_p_dout0,grp_fu_1197_p_ce,grp_fu_1202_p_din0,grp_fu_1202_p_din1,grp_fu_1202_p_dout0,grp_fu_1202_p_ce,grp_fu_1207_p_din0,grp_fu_1207_p_din1,grp_fu_1207_p_dout0,grp_fu_1207_p_ce,grp_fu_1212_p_din0,grp_fu_1212_p_din1,grp_fu_1212_p_dout0,grp_fu_1212_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 11'd1;
parameter    ap_ST_fsm_pp0_stage1 = 11'd2;
parameter    ap_ST_fsm_pp0_stage2 = 11'd4;
parameter    ap_ST_fsm_pp0_stage3 = 11'd8;
parameter    ap_ST_fsm_pp0_stage4 = 11'd16;
parameter    ap_ST_fsm_pp0_stage5 = 11'd32;
parameter    ap_ST_fsm_pp0_stage6 = 11'd64;
parameter    ap_ST_fsm_pp0_stage7 = 11'd128;
parameter    ap_ST_fsm_pp0_stage8 = 11'd256;
parameter    ap_ST_fsm_pp0_stage9 = 11'd512;
parameter    ap_ST_fsm_pp0_stage10 = 11'd1024;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
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
output  [6:0] DATA_x_address0;
output   DATA_x_ce0;
input  [63:0] DATA_x_q0;
output  [6:0] DATA_x_address1;
output   DATA_x_ce1;
input  [63:0] DATA_x_q1;
output  [6:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
input  [63:0] DATA_x_1_q0;
output  [6:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
input  [63:0] DATA_x_1_q1;
output  [6:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
input  [63:0] DATA_x_2_q0;
output  [6:0] DATA_x_2_address1;
output   DATA_x_2_ce1;
input  [63:0] DATA_x_2_q1;
output  [6:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
input  [63:0] DATA_x_3_q0;
output  [6:0] DATA_x_3_address1;
output   DATA_x_3_ce1;
input  [63:0] DATA_x_3_q1;
output  [8:0] work_x_address0;
output   work_x_ce0;
output   work_x_we0;
output  [63:0] work_x_d0;
output  [8:0] work_x_address1;
output   work_x_ce1;
output   work_x_we1;
output  [63:0] work_x_d1;
output  [8:0] work_y_address0;
output   work_y_ce0;
output   work_y_we0;
output  [63:0] work_y_d0;
output  [8:0] work_y_address1;
output   work_y_ce1;
output   work_y_we1;
output  [63:0] work_y_d1;
output  [63:0] grp_fu_1165_p_din0;
output  [63:0] grp_fu_1165_p_din1;
output  [1:0] grp_fu_1165_p_opcode;
input  [63:0] grp_fu_1165_p_dout0;
output   grp_fu_1165_p_ce;
output  [63:0] grp_fu_1169_p_din0;
output  [63:0] grp_fu_1169_p_din1;
output  [1:0] grp_fu_1169_p_opcode;
input  [63:0] grp_fu_1169_p_dout0;
output   grp_fu_1169_p_ce;
output  [63:0] grp_fu_1173_p_din0;
output  [63:0] grp_fu_1173_p_din1;
output  [1:0] grp_fu_1173_p_opcode;
input  [63:0] grp_fu_1173_p_dout0;
output   grp_fu_1173_p_ce;
output  [63:0] grp_fu_1177_p_din0;
output  [63:0] grp_fu_1177_p_din1;
output  [1:0] grp_fu_1177_p_opcode;
input  [63:0] grp_fu_1177_p_dout0;
output   grp_fu_1177_p_ce;
output  [63:0] grp_fu_1181_p_din0;
output  [63:0] grp_fu_1181_p_din1;
output  [1:0] grp_fu_1181_p_opcode;
input  [63:0] grp_fu_1181_p_dout0;
output   grp_fu_1181_p_ce;
output  [63:0] grp_fu_1185_p_din0;
output  [63:0] grp_fu_1185_p_din1;
output  [1:0] grp_fu_1185_p_opcode;
input  [63:0] grp_fu_1185_p_dout0;
output   grp_fu_1185_p_ce;
output  [63:0] grp_fu_1189_p_din0;
output  [63:0] grp_fu_1189_p_din1;
output  [1:0] grp_fu_1189_p_opcode;
input  [63:0] grp_fu_1189_p_dout0;
output   grp_fu_1189_p_ce;
output  [63:0] grp_fu_1193_p_din0;
output  [63:0] grp_fu_1193_p_din1;
output  [1:0] grp_fu_1193_p_opcode;
input  [63:0] grp_fu_1193_p_dout0;
output   grp_fu_1193_p_ce;
output  [63:0] grp_fu_1197_p_din0;
output  [63:0] grp_fu_1197_p_din1;
input  [63:0] grp_fu_1197_p_dout0;
output   grp_fu_1197_p_ce;
output  [63:0] grp_fu_1202_p_din0;
output  [63:0] grp_fu_1202_p_din1;
input  [63:0] grp_fu_1202_p_dout0;
output   grp_fu_1202_p_ce;
output  [63:0] grp_fu_1207_p_din0;
output  [63:0] grp_fu_1207_p_din1;
input  [63:0] grp_fu_1207_p_dout0;
output   grp_fu_1207_p_ce;
output  [63:0] grp_fu_1212_p_din0;
output  [63:0] grp_fu_1212_p_din1;
input  [63:0] grp_fu_1212_p_dout0;
output   grp_fu_1212_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_subdone;
reg   [0:0] tmp_reg_2036;
reg    ap_condition_exit_pp0_iter0_stage10;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] grp_fu_796_p2;
reg   [63:0] reg_848;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_block_pp0_stage10_11001;
wire   [63:0] grp_fu_800_p2;
reg   [63:0] reg_853;
wire   [63:0] grp_fu_820_p2;
reg   [63:0] reg_859;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] grp_fu_804_p2;
reg   [63:0] reg_863;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] grp_fu_784_p2;
reg   [63:0] reg_867;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] grp_fu_788_p2;
reg   [63:0] reg_873;
reg   [6:0] tid_5_reg_2026;
reg   [6:0] tid_5_reg_2026_pp0_iter1_reg;
reg   [6:0] tid_5_reg_2026_pp0_iter2_reg;
reg   [6:0] tid_5_reg_2026_pp0_iter3_reg;
reg   [6:0] tid_5_reg_2026_pp0_iter4_reg;
reg   [6:0] tid_5_reg_2026_pp0_iter5_reg;
wire   [63:0] zext_ln365_fu_895_p1;
reg   [63:0] zext_ln365_reg_2040;
reg   [63:0] zext_ln365_reg_2040_pp0_iter1_reg;
reg   [63:0] zext_ln365_reg_2040_pp0_iter2_reg;
reg   [63:0] zext_ln365_reg_2040_pp0_iter3_reg;
reg   [63:0] zext_ln365_reg_2040_pp0_iter4_reg;
wire   [5:0] trunc_ln367_fu_907_p1;
reg   [5:0] trunc_ln367_reg_2046;
reg   [5:0] trunc_ln367_reg_2046_pp0_iter1_reg;
reg   [5:0] trunc_ln367_reg_2046_pp0_iter2_reg;
reg   [5:0] trunc_ln367_reg_2046_pp0_iter3_reg;
reg   [5:0] trunc_ln367_reg_2046_pp0_iter4_reg;
wire   [4:0] tmp_s_fu_941_p4;
reg   [4:0] tmp_s_reg_2131;
wire   [63:0] zext_ln367_1_fu_959_p1;
reg   [63:0] zext_ln367_1_reg_2137;
reg   [63:0] zext_ln367_1_reg_2137_pp0_iter1_reg;
reg   [63:0] zext_ln367_1_reg_2137_pp0_iter2_reg;
reg   [63:0] zext_ln367_1_reg_2137_pp0_iter3_reg;
reg   [63:0] zext_ln367_1_reg_2137_pp0_iter4_reg;
reg   [63:0] zext_ln367_1_reg_2137_pp0_iter5_reg;
reg   [63:0] c0_y_reg_2183;
reg   [63:0] c0_y_2_reg_2189;
reg   [63:0] c0_y_4_reg_2195;
reg   [63:0] c0_y_5_reg_2201;
reg   [63:0] DATA_y_4_load_reg_2207;
reg   [63:0] DATA_y_5_load_reg_2213;
reg   [63:0] DATA_y_6_load_reg_2219;
reg   [63:0] DATA_y_7_load_reg_2225;
reg   [63:0] c0_x_reg_2231;
reg   [63:0] c0_x_2_reg_2237;
reg   [63:0] c0_x_4_reg_2243;
reg   [63:0] c0_x_5_reg_2249;
reg   [63:0] DATA_x_load_2_reg_2255;
reg   [63:0] DATA_x_1_load_2_reg_2261;
reg   [63:0] DATA_x_2_load_2_reg_2267;
reg   [63:0] DATA_x_3_load_2_reg_2273;
reg   [63:0] c0_y_12_reg_2279;
reg   [63:0] c0_y_14_reg_2285;
reg   [63:0] c0_y_16_reg_2291;
reg   [63:0] c0_y_17_reg_2297;
reg   [63:0] DATA_y_4_load_2_reg_2303;
reg   [63:0] DATA_y_5_load_2_reg_2309;
reg   [63:0] DATA_y_6_load_2_reg_2315;
reg   [63:0] DATA_y_7_load_2_reg_2321;
reg   [63:0] c0_x_12_reg_2367;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] c0_x_14_reg_2373;
reg   [63:0] c0_x_16_reg_2379;
reg   [63:0] c0_x_17_reg_2385;
reg   [63:0] DATA_x_load_3_reg_2391;
reg   [63:0] DATA_x_1_load_3_reg_2397;
reg   [63:0] DATA_x_2_load_3_reg_2403;
reg   [63:0] DATA_x_3_load_3_reg_2409;
reg   [63:0] c0_x_7_reg_2415;
reg   [63:0] c0_x_1_reg_2421;
reg   [63:0] c0_x_1_reg_2421_pp0_iter1_reg;
reg   [63:0] c0_y_1_reg_2427;
reg   [63:0] c0_y_1_reg_2427_pp0_iter1_reg;
reg   [63:0] c0_x_3_reg_2433;
reg   [63:0] c0_y_3_reg_2439;
reg   [63:0] tmp_1_reg_2445;
reg   [63:0] sub_reg_2451;
reg   [63:0] tmp_1_1_reg_2457;
reg   [63:0] sub1_reg_2463;
reg   [63:0] add2_reg_2469;
wire   [63:0] grp_fu_792_p2;
reg   [63:0] add3_reg_2475;
reg   [63:0] c0_y_15_reg_2481;
wire   [63:0] grp_fu_808_p2;
reg   [63:0] sub1591_1_reg_2487;
wire   [63:0] grp_fu_812_p2;
reg   [63:0] sub1607_1_reg_2493;
wire   [63:0] grp_fu_816_p2;
reg   [63:0] add1617_1_reg_2499;
reg   [63:0] c0_y_7_reg_2505;
reg   [63:0] add_reg_2511;
reg   [63:0] add1_reg_2517;
wire   [63:0] bitcast_ln386_1_fu_1030_p1;
wire   [63:0] bitcast_ln386_3_fu_1064_p1;
wire   [63:0] bitcast_ln386_9_fu_1099_p1;
wire   [63:0] bitcast_ln386_11_fu_1135_p1;
reg   [63:0] c0_x_19_reg_2545;
reg   [63:0] c0_y_19_reg_2551;
reg   [63:0] c0_x_13_reg_2557;
reg   [63:0] c0_x_13_reg_2557_pp0_iter1_reg;
reg   [63:0] c0_y_13_reg_2563;
reg   [63:0] c0_y_13_reg_2563_pp0_iter1_reg;
reg   [63:0] c0_x_15_reg_2569;
reg   [63:0] tmp_1_4_reg_2575;
reg   [63:0] add1598_1_reg_2581;
reg   [63:0] add1601_1_reg_2587;
wire   [63:0] bitcast_ln386_21_fu_1180_p1;
wire   [63:0] bitcast_ln386_23_fu_1214_p1;
wire   [63:0] bitcast_ln386_29_fu_1249_p1;
wire   [63:0] bitcast_ln386_31_fu_1285_p1;
reg   [63:0] mul_reg_2615;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] mul1_reg_2620;
reg   [63:0] mul1648_1_reg_2625;
reg   [63:0] sub3_reg_2630;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] add4_reg_2635;
wire   [63:0] bitcast_ln386_5_fu_1320_p1;
wire   [63:0] bitcast_ln386_7_fu_1354_p1;
reg   [63:0] sub5_reg_2650;
reg   [63:0] add6_reg_2655;
reg   [63:0] add7_reg_2660;
reg   [63:0] add8_reg_2666;
reg   [63:0] tmp_6_reg_2672;
reg   [63:0] sub6_reg_2678;
reg   [63:0] mul1641_1_reg_2684;
wire   [63:0] bitcast_ln386_27_fu_1389_p1;
reg   [63:0] add1692_1_reg_2694;
reg   [63:0] sub1698_1_reg_2700;
reg   [63:0] c0_x_9_reg_2706;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] c0_y_9_reg_2712;
reg   [63:0] c0_x_8_reg_2718;
reg   [63:0] c0_x_8_reg_2718_pp0_iter2_reg;
reg   [63:0] c0_y_8_reg_2724;
reg   [63:0] c0_y_8_reg_2724_pp0_iter2_reg;
reg   [63:0] sub1630_1_reg_2730;
reg   [63:0] add1636_1_reg_2735;
wire   [63:0] bitcast_ln386_25_fu_1423_p1;
reg   [63:0] sub1656_1_reg_2745;
reg   [63:0] add1662_1_reg_2750;
reg   [63:0] c0_x_21_reg_2755;
reg   [63:0] c0_y_21_reg_2761;
reg   [63:0] c0_x_20_reg_2767;
reg   [63:0] c0_x_20_reg_2767_pp0_iter2_reg;
reg   [63:0] c0_y_20_reg_2773;
reg   [63:0] c0_y_20_reg_2773_pp0_iter2_reg;
reg   [63:0] add1689_1_reg_2779;
reg   [63:0] tmp_8_reg_2785;
reg   [63:0] c0_x_6_reg_2791;
reg   [63:0] c0_y_6_reg_2797;
reg   [63:0] sub4_reg_2803;
reg   [63:0] add5_reg_2809;
reg   [63:0] mul2_reg_2815;
reg   [63:0] mul3_reg_2821;
reg   [63:0] add1649_1_reg_2827;
reg   [63:0] c0_x_18_reg_2833;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] c0_y_18_reg_2839;
reg   [63:0] sub1644_1_reg_2845;
reg   [63:0] mul1657_1_reg_2851;
reg   [63:0] mul1663_1_reg_2857;
reg   [63:0] mul4_reg_2863;
reg   [63:0] mul5_reg_2868;
reg   [63:0] add9_reg_2873;
reg   [63:0] add9_reg_2873_pp0_iter3_reg;
reg   [63:0] add9_reg_2873_pp0_iter4_reg;
reg   [63:0] add10_reg_2878;
reg   [63:0] add10_reg_2878_pp0_iter3_reg;
reg   [63:0] add10_reg_2878_pp0_iter4_reg;
reg   [63:0] sub9_reg_2883;
reg   [63:0] sub9_reg_2883_pp0_iter3_reg;
reg   [63:0] sub9_reg_2883_pp0_iter4_reg;
reg   [63:0] sub10_reg_2888;
reg   [63:0] sub10_reg_2888_pp0_iter3_reg;
reg   [63:0] sub10_reg_2888_pp0_iter4_reg;
reg   [63:0] mul1702_1_reg_2893;
reg   [63:0] mul1709_1_reg_2898;
reg   [63:0] add1717_1_reg_2903;
reg   [63:0] add1717_1_reg_2903_pp0_iter3_reg;
reg   [63:0] add1717_1_reg_2903_pp0_iter4_reg;
reg   [63:0] add1720_1_reg_2908;
reg   [63:0] add1720_1_reg_2908_pp0_iter3_reg;
reg   [63:0] add1720_1_reg_2908_pp0_iter4_reg;
reg   [63:0] sub1723_1_reg_2913;
reg   [63:0] sub1723_1_reg_2913_pp0_iter3_reg;
reg   [63:0] sub1723_1_reg_2913_pp0_iter4_reg;
reg   [63:0] sub1723_1_reg_2913_pp0_iter5_reg;
reg   [63:0] sub1726_1_reg_2918;
reg   [63:0] sub1726_1_reg_2918_pp0_iter3_reg;
reg   [63:0] sub1726_1_reg_2918_pp0_iter4_reg;
reg   [63:0] sub1726_1_reg_2918_pp0_iter5_reg;
wire   [63:0] bitcast_ln386_13_fu_1457_p1;
wire   [63:0] bitcast_ln386_15_fu_1491_p1;
wire   [63:0] bitcast_ln386_33_fu_1525_p1;
wire   [63:0] bitcast_ln386_35_fu_1559_p1;
reg   [63:0] c0_x_11_reg_2943;
reg   [63:0] c0_y_11_reg_2949;
reg   [63:0] tmp_7_reg_2955;
reg   [63:0] sub13_reg_2961;
reg   [63:0] c0_x_10_reg_2967;
reg   [63:0] c0_x_10_reg_2967_pp0_iter4_reg;
reg   [63:0] c0_y_10_reg_2973;
reg   [63:0] c0_y_10_reg_2973_pp0_iter4_reg;
reg   [63:0] add13_reg_2979;
reg   [63:0] add14_reg_2985;
reg   [63:0] c0_x_23_reg_2991;
reg   [63:0] c0_y_23_reg_2997;
reg   [63:0] c0_x_22_reg_3003;
reg   [63:0] c0_x_22_reg_3003_pp0_iter4_reg;
reg   [63:0] c0_y_22_reg_3009;
reg   [63:0] c0_y_22_reg_3009_pp0_iter4_reg;
reg   [63:0] add1768_1_reg_3015;
reg   [63:0] add1771_1_reg_3021;
reg   [63:0] tmp_9_reg_3027;
reg   [63:0] sub1777_1_reg_3033;
reg   [63:0] sub7_reg_3039;
reg   [63:0] sub8_reg_3045;
reg   [63:0] sub1705_1_reg_3051;
reg   [63:0] sub1710_1_reg_3057;
reg   [63:0] mul6_reg_3063;
reg   [63:0] mul7_reg_3068;
wire   [63:0] bitcast_ln386_17_fu_1593_p1;
wire   [63:0] bitcast_ln386_19_fu_1627_p1;
reg   [63:0] mul1781_1_reg_3083;
reg   [63:0] mul1788_1_reg_3088;
reg   [63:0] add15_reg_3093;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] add15_reg_3093_pp0_iter4_reg;
reg   [63:0] add16_reg_3098;
reg   [63:0] add16_reg_3098_pp0_iter4_reg;
reg   [63:0] sub16_reg_3103;
reg   [63:0] sub16_reg_3103_pp0_iter4_reg;
reg   [63:0] sub17_reg_3108;
reg   [63:0] sub17_reg_3108_pp0_iter4_reg;
wire   [63:0] bitcast_ln386_37_fu_1661_p1;
wire   [63:0] bitcast_ln386_39_fu_1695_p1;
reg   [63:0] add1796_1_reg_3123;
reg   [63:0] add1796_1_reg_3123_pp0_iter4_reg;
reg   [63:0] add1799_1_reg_3128;
reg   [63:0] add1799_1_reg_3128_pp0_iter4_reg;
reg   [63:0] sub1802_1_reg_3133;
reg   [63:0] sub1802_1_reg_3133_pp0_iter4_reg;
reg   [63:0] sub1805_1_reg_3138;
reg   [63:0] sub1805_1_reg_3138_pp0_iter4_reg;
reg   [63:0] add11_reg_3143;
reg   [63:0] add12_reg_3148;
reg   [63:0] sub11_reg_3153;
reg   [63:0] sub11_reg_3153_pp0_iter5_reg;
reg   [63:0] sub12_reg_3158;
reg   [63:0] sub12_reg_3158_pp0_iter5_reg;
reg   [63:0] add1733_1_reg_3163;
reg   [63:0] add1733_1_reg_3163_pp0_iter5_reg;
reg   [63:0] add1736_1_reg_3168;
reg   [63:0] add1736_1_reg_3168_pp0_iter5_reg;
reg   [63:0] sub1739_1_reg_3173;
reg   [63:0] sub1739_1_reg_3173_pp0_iter5_reg;
reg   [63:0] sub1742_1_reg_3178;
reg   [63:0] sub1742_1_reg_3178_pp0_iter5_reg;
reg   [63:0] sub14_reg_3183;
reg   [63:0] sub15_reg_3189;
wire  signed [6:0] zext_ln390_cast_fu_1700_p3;
reg  signed [6:0] zext_ln390_cast_reg_3195;
reg   [63:0] add17_reg_3201;
wire  signed [7:0] zext_ln391_cast_fu_1725_p3;
reg  signed [7:0] zext_ln391_cast_reg_3206;
reg   [63:0] add1812_1_reg_3211;
reg   [63:0] add1815_1_reg_3216;
reg   [63:0] sub1818_1_reg_3221;
wire   [8:0] zext_ln365_1_fu_1830_p1;
reg   [8:0] zext_ln365_1_reg_3226;
wire   [5:0] tmp_22_fu_1880_p4;
reg   [5:0] tmp_22_reg_3232;
wire  signed [7:0] zext_ln391_1_cast_fu_1889_p4;
reg  signed [7:0] zext_ln391_1_cast_reg_3237;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln367_fu_917_p1;
wire   [63:0] zext_ln371_fu_933_p1;
wire   [63:0] zext_ln367_2_fu_978_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln371_1_fu_993_p1;
wire   [63:0] zext_ln390_fu_1707_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln391_fu_1732_p1;
wire   [63:0] zext_ln392_fu_1753_p1;
wire   [63:0] zext_ln395_fu_1766_p1;
wire   [63:0] zext_ln393_fu_1796_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln390_1_fu_1816_p1;
wire   [63:0] zext_ln394_fu_1839_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln396_fu_1852_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln391_1_fu_1899_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln392_1_fu_1918_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln393_2_fu_1945_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln394_1_fu_1964_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln395_1_fu_1981_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln396_1_fu_2004_p1;
reg   [6:0] tid_fu_110;
wire   [6:0] add_ln365_fu_1141_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_5;
reg    DATA_y_ce1_local;
reg    DATA_y_ce0_local;
reg    DATA_y_1_ce1_local;
reg    DATA_y_1_ce0_local;
reg    DATA_y_2_ce1_local;
reg    DATA_y_2_ce0_local;
reg    DATA_y_3_ce1_local;
reg    DATA_y_3_ce0_local;
reg    DATA_y_4_ce1_local;
reg    DATA_y_4_ce0_local;
reg    DATA_y_5_ce1_local;
reg    DATA_y_5_ce0_local;
reg    DATA_y_6_ce1_local;
reg    DATA_y_6_ce0_local;
reg    DATA_y_7_ce1_local;
reg    DATA_y_7_ce0_local;
reg    DATA_x_ce1_local;
reg   [6:0] DATA_x_address1_local;
reg    DATA_x_ce0_local;
reg   [6:0] DATA_x_address0_local;
reg    DATA_x_1_ce1_local;
reg   [6:0] DATA_x_1_address1_local;
reg    DATA_x_1_ce0_local;
reg   [6:0] DATA_x_1_address0_local;
reg    DATA_x_2_ce1_local;
reg   [6:0] DATA_x_2_address1_local;
reg    DATA_x_2_ce0_local;
reg   [6:0] DATA_x_2_address0_local;
reg    DATA_x_3_ce1_local;
reg   [6:0] DATA_x_3_address1_local;
reg    DATA_x_3_ce0_local;
reg   [6:0] DATA_x_3_address0_local;
reg    work_x_we1_local;
reg   [63:0] work_x_d1_local;
wire   [63:0] bitcast_ln390_fu_1713_p1;
reg    work_x_ce1_local;
reg   [8:0] work_x_address1_local;
wire   [63:0] bitcast_ln389_fu_1721_p1;
reg    work_x_we0_local;
reg   [63:0] work_x_d0_local;
wire   [63:0] bitcast_ln391_fu_1738_p1;
reg    work_x_ce0_local;
reg   [8:0] work_x_address0_local;
wire   [63:0] bitcast_ln392_fu_1759_p1;
wire   [63:0] bitcast_ln395_fu_1772_p1;
wire   [63:0] bitcast_ln393_fu_1802_p1;
wire   [63:0] bitcast_ln390_1_fu_1822_p1;
wire   [63:0] bitcast_ln394_fu_1845_p1;
wire   [63:0] bitcast_ln396_fu_1858_p1;
wire   [63:0] bitcast_ln389_1_fu_1872_p1;
wire   [63:0] bitcast_ln391_1_fu_1905_p1;
wire   [63:0] bitcast_ln392_1_fu_1924_p1;
wire   [63:0] bitcast_ln393_1_fu_1951_p1;
wire   [63:0] bitcast_ln394_1_fu_1970_p1;
wire   [63:0] bitcast_ln395_1_fu_1987_p1;
wire   [63:0] bitcast_ln396_1_fu_2010_p1;
reg    work_y_we1_local;
reg   [63:0] work_y_d1_local;
wire   [63:0] bitcast_ln399_fu_1717_p1;
reg    work_y_ce1_local;
reg   [8:0] work_y_address1_local;
wire   [63:0] bitcast_ln398_fu_1742_p1;
reg    work_y_we0_local;
reg   [63:0] work_y_d0_local;
wire   [63:0] bitcast_ln400_fu_1746_p1;
reg    work_y_ce0_local;
reg   [8:0] work_y_address0_local;
wire   [63:0] bitcast_ln401_fu_1776_p1;
wire   [63:0] bitcast_ln404_fu_1781_p1;
wire   [63:0] bitcast_ln402_fu_1806_p1;
wire   [63:0] bitcast_ln399_1_fu_1826_p1;
wire   [63:0] bitcast_ln403_fu_1863_p1;
wire   [63:0] bitcast_ln405_fu_1867_p1;
wire   [63:0] bitcast_ln398_1_fu_1876_p1;
wire   [63:0] bitcast_ln400_1_fu_1909_p1;
wire   [63:0] bitcast_ln401_1_fu_1928_p1;
wire   [63:0] bitcast_ln402_1_fu_1955_p1;
wire   [63:0] bitcast_ln403_1_fu_1974_p1;
wire   [63:0] bitcast_ln404_1_fu_1991_p1;
wire   [63:0] bitcast_ln405_1_fu_2014_p1;
reg   [63:0] grp_fu_752_p0;
reg   [63:0] grp_fu_752_p1;
reg   [63:0] grp_fu_756_p0;
reg   [63:0] grp_fu_756_p1;
reg   [63:0] grp_fu_760_p0;
reg   [63:0] grp_fu_760_p1;
reg   [63:0] grp_fu_764_p0;
reg   [63:0] grp_fu_764_p1;
reg   [63:0] grp_fu_768_p0;
reg   [63:0] grp_fu_768_p1;
reg   [63:0] grp_fu_772_p0;
reg   [63:0] grp_fu_772_p1;
reg   [63:0] grp_fu_776_p0;
reg   [63:0] grp_fu_776_p1;
reg   [63:0] grp_fu_780_p0;
reg   [63:0] grp_fu_780_p1;
reg   [63:0] grp_fu_784_p0;
reg   [63:0] grp_fu_784_p1;
reg   [63:0] grp_fu_788_p0;
reg   [63:0] grp_fu_788_p1;
reg   [63:0] grp_fu_792_p0;
reg   [63:0] grp_fu_792_p1;
reg   [63:0] grp_fu_796_p0;
reg   [63:0] grp_fu_796_p1;
reg   [63:0] grp_fu_800_p0;
reg   [63:0] grp_fu_800_p1;
reg   [63:0] grp_fu_804_p0;
reg   [63:0] grp_fu_804_p1;
reg   [63:0] grp_fu_808_p0;
reg   [63:0] grp_fu_808_p1;
reg   [63:0] grp_fu_812_p0;
reg   [63:0] grp_fu_812_p1;
reg   [63:0] grp_fu_816_p0;
reg   [63:0] grp_fu_816_p1;
reg   [63:0] grp_fu_820_p0;
reg   [63:0] grp_fu_820_p1;
reg   [63:0] grp_fu_824_p0;
reg   [63:0] grp_fu_824_p1;
reg   [63:0] grp_fu_829_p0;
reg   [63:0] grp_fu_829_p1;
reg   [63:0] grp_fu_834_p0;
reg   [63:0] grp_fu_834_p1;
reg   [63:0] grp_fu_842_p0;
reg   [63:0] grp_fu_842_p1;
wire   [6:0] shl_ln367_fu_911_p2;
wire   [6:0] or_ln_fu_925_p3;
wire   [5:0] or_ln1_fu_951_p3;
wire   [6:0] or_ln2_fu_971_p3;
wire   [6:0] or_ln371_1_fu_986_p3;
wire   [63:0] bitcast_ln386_fu_1001_p1;
wire   [0:0] bit_sel_fu_1004_p3;
wire   [0:0] xor_ln386_19_fu_1012_p2;
wire   [62:0] trunc_ln386_fu_1018_p1;
wire   [63:0] xor_ln3_fu_1022_p3;
wire   [63:0] bitcast_ln386_2_fu_1035_p1;
wire   [0:0] bit_sel1_fu_1038_p3;
wire   [0:0] xor_ln386_fu_1046_p2;
wire   [62:0] trunc_ln386_1_fu_1052_p1;
wire   [63:0] xor_ln386_1_fu_1056_p3;
wire   [63:0] bitcast_ln386_8_fu_1069_p1;
wire   [0:0] bit_sel4_fu_1073_p3;
wire   [0:0] xor_ln386_22_fu_1081_p2;
wire   [62:0] trunc_ln386_4_fu_1087_p1;
wire   [63:0] xor_ln386_4_fu_1091_p3;
wire   [63:0] bitcast_ln386_10_fu_1105_p1;
wire   [0:0] bit_sel5_fu_1109_p3;
wire   [0:0] xor_ln386_23_fu_1117_p2;
wire   [62:0] trunc_ln386_5_fu_1123_p1;
wire   [63:0] xor_ln386_5_fu_1127_p3;
wire   [63:0] bitcast_ln386_20_fu_1151_p1;
wire   [0:0] bit_sel10_fu_1154_p3;
wire   [0:0] xor_ln386_28_fu_1162_p2;
wire   [62:0] trunc_ln386_10_fu_1168_p1;
wire   [63:0] xor_ln386_s_fu_1172_p3;
wire   [63:0] bitcast_ln386_22_fu_1185_p1;
wire   [0:0] bit_sel11_fu_1188_p3;
wire   [0:0] xor_ln386_29_fu_1196_p2;
wire   [62:0] trunc_ln386_11_fu_1202_p1;
wire   [63:0] xor_ln386_10_fu_1206_p3;
wire   [63:0] bitcast_ln386_28_fu_1219_p1;
wire   [0:0] bit_sel14_fu_1223_p3;
wire   [0:0] xor_ln386_32_fu_1231_p2;
wire   [62:0] trunc_ln386_14_fu_1237_p1;
wire   [63:0] xor_ln386_13_fu_1241_p3;
wire   [63:0] bitcast_ln386_30_fu_1255_p1;
wire   [0:0] bit_sel15_fu_1259_p3;
wire   [0:0] xor_ln386_33_fu_1267_p2;
wire   [62:0] trunc_ln386_15_fu_1273_p1;
wire   [63:0] xor_ln386_14_fu_1277_p3;
wire   [63:0] bitcast_ln386_4_fu_1291_p1;
wire   [0:0] bit_sel2_fu_1294_p3;
wire   [0:0] xor_ln386_20_fu_1302_p2;
wire   [62:0] trunc_ln386_2_fu_1308_p1;
wire   [63:0] xor_ln386_2_fu_1312_p3;
wire   [63:0] bitcast_ln386_6_fu_1325_p1;
wire   [0:0] bit_sel3_fu_1328_p3;
wire   [0:0] xor_ln386_21_fu_1336_p2;
wire   [62:0] trunc_ln386_3_fu_1342_p1;
wire   [63:0] xor_ln386_3_fu_1346_p3;
wire   [63:0] bitcast_ln386_26_fu_1359_p1;
wire   [0:0] bit_sel13_fu_1363_p3;
wire   [0:0] xor_ln386_31_fu_1371_p2;
wire   [62:0] trunc_ln386_13_fu_1377_p1;
wire   [63:0] xor_ln386_12_fu_1381_p3;
wire   [63:0] bitcast_ln386_24_fu_1394_p1;
wire   [0:0] bit_sel12_fu_1397_p3;
wire   [0:0] xor_ln386_30_fu_1405_p2;
wire   [62:0] trunc_ln386_12_fu_1411_p1;
wire   [63:0] xor_ln386_11_fu_1415_p3;
wire   [63:0] bitcast_ln386_12_fu_1428_p1;
wire   [0:0] bit_sel6_fu_1431_p3;
wire   [0:0] xor_ln386_24_fu_1439_p2;
wire   [62:0] trunc_ln386_6_fu_1445_p1;
wire   [63:0] xor_ln386_6_fu_1449_p3;
wire   [63:0] bitcast_ln386_14_fu_1462_p1;
wire   [0:0] bit_sel7_fu_1465_p3;
wire   [0:0] xor_ln386_25_fu_1473_p2;
wire   [62:0] trunc_ln386_7_fu_1479_p1;
wire   [63:0] xor_ln386_7_fu_1483_p3;
wire   [63:0] bitcast_ln386_32_fu_1496_p1;
wire   [0:0] bit_sel16_fu_1499_p3;
wire   [0:0] xor_ln386_34_fu_1507_p2;
wire   [62:0] trunc_ln386_16_fu_1513_p1;
wire   [63:0] xor_ln386_15_fu_1517_p3;
wire   [63:0] bitcast_ln386_34_fu_1530_p1;
wire   [0:0] bit_sel17_fu_1533_p3;
wire   [0:0] xor_ln386_35_fu_1541_p2;
wire   [62:0] trunc_ln386_17_fu_1547_p1;
wire   [63:0] xor_ln386_16_fu_1551_p3;
wire   [63:0] bitcast_ln386_16_fu_1564_p1;
wire   [0:0] bit_sel8_fu_1567_p3;
wire   [0:0] xor_ln386_26_fu_1575_p2;
wire   [62:0] trunc_ln386_8_fu_1581_p1;
wire   [63:0] xor_ln386_8_fu_1585_p3;
wire   [63:0] bitcast_ln386_18_fu_1598_p1;
wire   [0:0] bit_sel9_fu_1601_p3;
wire   [0:0] xor_ln386_27_fu_1609_p2;
wire   [62:0] trunc_ln386_9_fu_1615_p1;
wire   [63:0] xor_ln386_9_fu_1619_p3;
wire   [63:0] bitcast_ln386_36_fu_1632_p1;
wire   [0:0] bit_sel18_fu_1635_p3;
wire   [0:0] xor_ln386_36_fu_1643_p2;
wire   [62:0] trunc_ln386_18_fu_1649_p1;
wire   [63:0] xor_ln386_17_fu_1653_p3;
wire   [63:0] bitcast_ln386_38_fu_1666_p1;
wire   [0:0] bit_sel19_fu_1669_p3;
wire   [0:0] xor_ln386_37_fu_1677_p2;
wire   [62:0] trunc_ln386_19_fu_1683_p1;
wire   [63:0] xor_ln386_18_fu_1687_p3;
wire  signed [7:0] sext_ln392_fu_1750_p1;
wire  signed [8:0] sext_ln395_fu_1763_p1;
wire   [7:0] zext_ln365_2_fu_1785_p1;
wire   [8:0] zext_ln393_cast_fu_1788_p3;
wire   [7:0] add_ln390_fu_1810_p2;
wire   [8:0] add_ln394_fu_1833_p2;
wire  signed [8:0] sext_ln396_fu_1849_p1;
wire   [8:0] add_ln392_fu_1913_p2;
wire   [6:0] zext_ln393_1_fu_1932_p1;
wire   [8:0] zext_ln393_1_cast_fu_1935_p4;
wire   [8:0] add_ln394_1_fu_1959_p2;
wire  signed [8:0] sext_ln395_1_fu_1978_p1;
wire   [6:0] add_ln396_fu_1995_p2;
wire  signed [8:0] sext_ln396_1_fu_2000_p1;
reg   [1:0] grp_fu_752_opcode;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
reg   [1:0] grp_fu_756_opcode;
reg   [1:0] grp_fu_760_opcode;
reg   [1:0] grp_fu_764_opcode;
reg   [1:0] grp_fu_768_opcode;
reg   [1:0] grp_fu_772_opcode;
reg   [1:0] grp_fu_780_opcode;
reg   [1:0] grp_fu_784_opcode;
reg   [1:0] grp_fu_788_opcode;
reg   [1:0] grp_fu_792_opcode;
reg   [1:0] grp_fu_796_opcode;
reg   [1:0] grp_fu_800_opcode;
reg   [1:0] grp_fu_804_opcode;
reg   [1:0] grp_fu_808_opcode;
reg   [1:0] grp_fu_812_opcode;
reg   [1:0] grp_fu_816_opcode;
reg   [1:0] grp_fu_820_opcode;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [10:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to5;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 11'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_110 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U348(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_784_p0),.din1(grp_fu_784_p1),.opcode(grp_fu_784_opcode),.ce(1'b1),.dout(grp_fu_784_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U349(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_788_p0),.din1(grp_fu_788_p1),.opcode(grp_fu_788_opcode),.ce(1'b1),.dout(grp_fu_788_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U350(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_792_p0),.din1(grp_fu_792_p1),.opcode(grp_fu_792_opcode),.ce(1'b1),.dout(grp_fu_792_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U351(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_796_p0),.din1(grp_fu_796_p1),.opcode(grp_fu_796_opcode),.ce(1'b1),.dout(grp_fu_796_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U352(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_800_p0),.din1(grp_fu_800_p1),.opcode(grp_fu_800_opcode),.ce(1'b1),.dout(grp_fu_800_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U353(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_804_p0),.din1(grp_fu_804_p1),.opcode(grp_fu_804_opcode),.ce(1'b1),.dout(grp_fu_804_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U354(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_808_p0),.din1(grp_fu_808_p1),.opcode(grp_fu_808_opcode),.ce(1'b1),.dout(grp_fu_808_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U355(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_812_p0),.din1(grp_fu_812_p1),.opcode(grp_fu_812_opcode),.ce(1'b1),.dout(grp_fu_812_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U356(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_816_p0),.din1(grp_fu_816_p1),.opcode(grp_fu_816_opcode),.ce(1'b1),.dout(grp_fu_816_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U357(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_820_p0),.din1(grp_fu_820_p1),.opcode(grp_fu_820_opcode),.ce(1'b1),.dout(grp_fu_820_p2));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage10),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage10)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_110 <= 7'd0;
    end else if (((tmp_reg_2036 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tid_fu_110 <= add_ln365_fu_1141_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_load_2_reg_2261 <= DATA_x_1_q0;
        DATA_x_2_load_2_reg_2267 <= DATA_x_2_q0;
        DATA_x_3_load_2_reg_2273 <= DATA_x_3_q0;
        DATA_x_load_2_reg_2255 <= DATA_x_q0;
        DATA_y_4_load_2_reg_2303 <= DATA_y_4_q0;
        DATA_y_4_load_reg_2207 <= DATA_y_4_q1;
        DATA_y_5_load_2_reg_2309 <= DATA_y_5_q0;
        DATA_y_5_load_reg_2213 <= DATA_y_5_q1;
        DATA_y_6_load_2_reg_2315 <= DATA_y_6_q0;
        DATA_y_6_load_reg_2219 <= DATA_y_6_q1;
        DATA_y_7_load_2_reg_2321 <= DATA_y_7_q0;
        DATA_y_7_load_reg_2225 <= DATA_y_7_q1;
        c0_x_2_reg_2237 <= DATA_x_1_q1;
        c0_x_4_reg_2243 <= DATA_x_2_q1;
        c0_x_5_reg_2249 <= DATA_x_3_q1;
        c0_x_reg_2231 <= DATA_x_q1;
        c0_y_12_reg_2279 <= DATA_y_q0;
        c0_y_14_reg_2285 <= DATA_y_1_q0;
        c0_y_16_reg_2291 <= DATA_y_2_q0;
        c0_y_17_reg_2297 <= DATA_y_3_q0;
        c0_y_2_reg_2189 <= DATA_y_1_q1;
        c0_y_4_reg_2195 <= DATA_y_2_q1;
        c0_y_5_reg_2201 <= DATA_y_3_q1;
        c0_y_reg_2183 <= DATA_y_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_load_3_reg_2397 <= DATA_x_1_q0;
        DATA_x_2_load_3_reg_2403 <= DATA_x_2_q0;
        DATA_x_3_load_3_reg_2409 <= DATA_x_3_q0;
        DATA_x_load_3_reg_2391 <= DATA_x_q0;
        c0_x_12_reg_2367 <= DATA_x_q1;
        c0_x_14_reg_2373 <= DATA_x_1_q1;
        c0_x_16_reg_2379 <= DATA_x_2_q1;
        c0_x_17_reg_2385 <= DATA_x_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add10_reg_2878 <= grp_fu_1169_p_dout0;
        add1717_1_reg_2903 <= grp_fu_1181_p_dout0;
        add1720_1_reg_2908 <= grp_fu_1185_p_dout0;
        add9_reg_2873 <= grp_fu_1165_p_dout0;
        mul1702_1_reg_2893 <= grp_fu_1207_p_dout0;
        mul1709_1_reg_2898 <= grp_fu_1212_p_dout0;
        mul4_reg_2863 <= grp_fu_1197_p_dout0;
        mul5_reg_2868 <= grp_fu_1202_p_dout0;
        sub10_reg_2888 <= grp_fu_1177_p_dout0;
        sub1723_1_reg_2913 <= grp_fu_1189_p_dout0;
        sub1726_1_reg_2918 <= grp_fu_1193_p_dout0;
        sub9_reg_2883 <= grp_fu_1173_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add10_reg_2878_pp0_iter3_reg <= add10_reg_2878;
        add10_reg_2878_pp0_iter4_reg <= add10_reg_2878_pp0_iter3_reg;
        add1717_1_reg_2903_pp0_iter3_reg <= add1717_1_reg_2903;
        add1717_1_reg_2903_pp0_iter4_reg <= add1717_1_reg_2903_pp0_iter3_reg;
        add1720_1_reg_2908_pp0_iter3_reg <= add1720_1_reg_2908;
        add1720_1_reg_2908_pp0_iter4_reg <= add1720_1_reg_2908_pp0_iter3_reg;
        add9_reg_2873_pp0_iter3_reg <= add9_reg_2873;
        add9_reg_2873_pp0_iter4_reg <= add9_reg_2873_pp0_iter3_reg;
        sub10_reg_2888_pp0_iter3_reg <= sub10_reg_2888;
        sub10_reg_2888_pp0_iter4_reg <= sub10_reg_2888_pp0_iter3_reg;
        sub1723_1_reg_2913_pp0_iter3_reg <= sub1723_1_reg_2913;
        sub1723_1_reg_2913_pp0_iter4_reg <= sub1723_1_reg_2913_pp0_iter3_reg;
        sub1723_1_reg_2913_pp0_iter5_reg <= sub1723_1_reg_2913_pp0_iter4_reg;
        sub1726_1_reg_2918_pp0_iter3_reg <= sub1726_1_reg_2918;
        sub1726_1_reg_2918_pp0_iter4_reg <= sub1726_1_reg_2918_pp0_iter3_reg;
        sub1726_1_reg_2918_pp0_iter5_reg <= sub1726_1_reg_2918_pp0_iter4_reg;
        sub9_reg_2883_pp0_iter3_reg <= sub9_reg_2883;
        sub9_reg_2883_pp0_iter4_reg <= sub9_reg_2883_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_reg_3143 <= grp_fu_800_p2;
        add12_reg_3148 <= grp_fu_804_p2;
        sub11_reg_3153 <= grp_fu_808_p2;
        sub12_reg_3158 <= grp_fu_812_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add13_reg_2979 <= grp_fu_1173_p_dout0;
        add14_reg_2985 <= grp_fu_1177_p_dout0;
        add1768_1_reg_3015 <= grp_fu_784_p2;
        add1771_1_reg_3021 <= grp_fu_788_p2;
        c0_x_10_reg_2967 <= grp_fu_1165_p_dout0;
        c0_x_22_reg_3003 <= grp_fu_1189_p_dout0;
        c0_x_23_reg_2991 <= grp_fu_1181_p_dout0;
        c0_y_10_reg_2973 <= grp_fu_1169_p_dout0;
        c0_y_22_reg_3009 <= grp_fu_1193_p_dout0;
        c0_y_23_reg_2997 <= grp_fu_1185_p_dout0;
        sub1777_1_reg_3033 <= grp_fu_796_p2;
        tmp_9_reg_3027 <= grp_fu_792_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add1598_1_reg_2581 <= grp_fu_788_p2;
        add1601_1_reg_2587 <= grp_fu_792_p2;
        add1_reg_2517 <= grp_fu_1173_p_dout0;
        add_reg_2511 <= grp_fu_1169_p_dout0;
        c0_x_13_reg_2557 <= grp_fu_1185_p_dout0;
        c0_x_15_reg_2569 <= grp_fu_1193_p_dout0;
        c0_x_19_reg_2545 <= grp_fu_1177_p_dout0;
        c0_y_13_reg_2563 <= grp_fu_1189_p_dout0;
        c0_y_19_reg_2551 <= grp_fu_1181_p_dout0;
        c0_y_7_reg_2505 <= grp_fu_1165_p_dout0;
        tmp_1_4_reg_2575 <= grp_fu_784_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add15_reg_3093 <= grp_fu_1165_p_dout0;
        add16_reg_3098 <= grp_fu_1169_p_dout0;
        add1796_1_reg_3123 <= grp_fu_1181_p_dout0;
        add1799_1_reg_3128 <= grp_fu_1185_p_dout0;
        sub16_reg_3103 <= grp_fu_1173_p_dout0;
        sub17_reg_3108 <= grp_fu_1177_p_dout0;
        sub1802_1_reg_3133 <= grp_fu_1189_p_dout0;
        sub1805_1_reg_3138 <= grp_fu_1193_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add15_reg_3093_pp0_iter4_reg <= add15_reg_3093;
        add16_reg_3098_pp0_iter4_reg <= add16_reg_3098;
        add1796_1_reg_3123_pp0_iter4_reg <= add1796_1_reg_3123;
        add1799_1_reg_3128_pp0_iter4_reg <= add1799_1_reg_3128;
        sub16_reg_3103_pp0_iter4_reg <= sub16_reg_3103;
        sub17_reg_3108_pp0_iter4_reg <= sub17_reg_3108;
        sub1802_1_reg_3133_pp0_iter4_reg <= sub1802_1_reg_3133;
        sub1805_1_reg_3138_pp0_iter4_reg <= sub1805_1_reg_3138;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add1617_1_reg_2499 <= grp_fu_816_p2;
        add2_reg_2469 <= grp_fu_788_p2;
        add3_reg_2475 <= grp_fu_792_p2;
        c0_x_1_reg_2421 <= grp_fu_1169_p_dout0;
        c0_x_3_reg_2433 <= grp_fu_1177_p_dout0;
        c0_x_7_reg_2415 <= grp_fu_1165_p_dout0;
        c0_y_15_reg_2481 <= grp_fu_804_p2;
        c0_y_1_reg_2427 <= grp_fu_1173_p_dout0;
        c0_y_3_reg_2439 <= grp_fu_1181_p_dout0;
        sub1591_1_reg_2487 <= grp_fu_808_p2;
        sub1607_1_reg_2493 <= grp_fu_812_p2;
        sub1_reg_2463 <= grp_fu_784_p2;
        sub_reg_2451 <= grp_fu_1189_p_dout0;
        tmp_1_1_reg_2457 <= grp_fu_1193_p_dout0;
        tmp_1_reg_2445 <= grp_fu_1185_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add1636_1_reg_2735 <= grp_fu_1185_p_dout0;
        add1662_1_reg_2750 <= grp_fu_1193_p_dout0;
        add1689_1_reg_2779 <= grp_fu_800_p2;
        c0_x_20_reg_2767 <= grp_fu_792_p2;
        c0_x_21_reg_2755 <= grp_fu_784_p2;
        c0_x_8_reg_2718 <= grp_fu_1173_p_dout0;
        c0_x_9_reg_2706 <= grp_fu_1165_p_dout0;
        c0_y_20_reg_2773 <= grp_fu_796_p2;
        c0_y_21_reg_2761 <= grp_fu_788_p2;
        c0_y_8_reg_2724 <= grp_fu_1177_p_dout0;
        c0_y_9_reg_2712 <= grp_fu_1169_p_dout0;
        sub1630_1_reg_2730 <= grp_fu_1181_p_dout0;
        sub1656_1_reg_2745 <= grp_fu_1189_p_dout0;
        tmp_8_reg_2785 <= grp_fu_804_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add1649_1_reg_2827 <= grp_fu_1173_p_dout0;
        add5_reg_2809 <= grp_fu_1169_p_dout0;
        c0_x_6_reg_2791 <= grp_fu_1197_p_dout0;
        c0_y_6_reg_2797 <= grp_fu_1202_p_dout0;
        mul2_reg_2815 <= grp_fu_1207_p_dout0;
        mul3_reg_2821 <= grp_fu_1212_p_dout0;
        sub4_reg_2803 <= grp_fu_1165_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add1692_1_reg_2694 <= grp_fu_784_p2;
        add4_reg_2635 <= grp_fu_1169_p_dout0;
        add6_reg_2655 <= grp_fu_1177_p_dout0;
        add7_reg_2660 <= grp_fu_1181_p_dout0;
        add8_reg_2666 <= grp_fu_1185_p_dout0;
        mul1641_1_reg_2684 <= grp_fu_1197_p_dout0;
        sub1698_1_reg_2700 <= grp_fu_788_p2;
        sub3_reg_2630 <= grp_fu_1165_p_dout0;
        sub5_reg_2650 <= grp_fu_1173_p_dout0;
        sub6_reg_2678 <= grp_fu_1193_p_dout0;
        tmp_6_reg_2672 <= grp_fu_1189_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add1733_1_reg_3163 <= grp_fu_1181_p_dout0;
        add1736_1_reg_3168 <= grp_fu_1185_p_dout0;
        sub1739_1_reg_3173 <= grp_fu_1189_p_dout0;
        sub1742_1_reg_3178 <= grp_fu_1193_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add1733_1_reg_3163_pp0_iter5_reg <= add1733_1_reg_3163;
        add1736_1_reg_3168_pp0_iter5_reg <= add1736_1_reg_3168;
        sub1739_1_reg_3173_pp0_iter5_reg <= sub1739_1_reg_3173;
        sub1742_1_reg_3178_pp0_iter5_reg <= sub1742_1_reg_3178;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add17_reg_3201 <= grp_fu_816_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add1812_1_reg_3211 <= grp_fu_792_p2;
        add1815_1_reg_3216 <= grp_fu_796_p2;
        sub1818_1_reg_3221 <= grp_fu_800_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        c0_x_13_reg_2557_pp0_iter1_reg <= c0_x_13_reg_2557;
        c0_y_13_reg_2563_pp0_iter1_reg <= c0_y_13_reg_2563;
        zext_ln390_cast_reg_3195[5 : 0] <= zext_ln390_cast_fu_1700_p3[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c0_x_10_reg_2967_pp0_iter4_reg <= c0_x_10_reg_2967;
        c0_x_22_reg_3003_pp0_iter4_reg <= c0_x_22_reg_3003;
        c0_y_10_reg_2973_pp0_iter4_reg <= c0_y_10_reg_2973;
        c0_y_22_reg_3009_pp0_iter4_reg <= c0_y_22_reg_3009;
        sub11_reg_3153_pp0_iter5_reg <= sub11_reg_3153;
        sub12_reg_3158_pp0_iter5_reg <= sub12_reg_3158;
        tid_5_reg_2026 <= ap_sig_allocacmp_tid_5;
        tid_5_reg_2026_pp0_iter1_reg <= tid_5_reg_2026;
        tid_5_reg_2026_pp0_iter2_reg <= tid_5_reg_2026_pp0_iter1_reg;
        tid_5_reg_2026_pp0_iter3_reg <= tid_5_reg_2026_pp0_iter2_reg;
        tid_5_reg_2026_pp0_iter4_reg <= tid_5_reg_2026_pp0_iter3_reg;
        tid_5_reg_2026_pp0_iter5_reg <= tid_5_reg_2026_pp0_iter4_reg;
        tmp_reg_2036 <= ap_sig_allocacmp_tid_5[32'd6];
        tmp_s_reg_2131 <= {{ap_sig_allocacmp_tid_5[5:1]}};
        trunc_ln367_reg_2046 <= trunc_ln367_fu_907_p1;
        trunc_ln367_reg_2046_pp0_iter1_reg <= trunc_ln367_reg_2046;
        trunc_ln367_reg_2046_pp0_iter2_reg <= trunc_ln367_reg_2046_pp0_iter1_reg;
        trunc_ln367_reg_2046_pp0_iter3_reg <= trunc_ln367_reg_2046_pp0_iter2_reg;
        trunc_ln367_reg_2046_pp0_iter4_reg <= trunc_ln367_reg_2046_pp0_iter3_reg;
        zext_ln365_reg_2040[6 : 0] <= zext_ln365_fu_895_p1[6 : 0];
        zext_ln365_reg_2040_pp0_iter1_reg[6 : 0] <= zext_ln365_reg_2040[6 : 0];
        zext_ln365_reg_2040_pp0_iter2_reg[6 : 0] <= zext_ln365_reg_2040_pp0_iter1_reg[6 : 0];
        zext_ln365_reg_2040_pp0_iter3_reg[6 : 0] <= zext_ln365_reg_2040_pp0_iter2_reg[6 : 0];
        zext_ln365_reg_2040_pp0_iter4_reg[6 : 0] <= zext_ln365_reg_2040_pp0_iter3_reg[6 : 0];
        zext_ln367_1_reg_2137[5 : 1] <= zext_ln367_1_fu_959_p1[5 : 1];
        zext_ln367_1_reg_2137_pp0_iter1_reg[5 : 1] <= zext_ln367_1_reg_2137[5 : 1];
        zext_ln367_1_reg_2137_pp0_iter2_reg[5 : 1] <= zext_ln367_1_reg_2137_pp0_iter1_reg[5 : 1];
        zext_ln367_1_reg_2137_pp0_iter3_reg[5 : 1] <= zext_ln367_1_reg_2137_pp0_iter2_reg[5 : 1];
        zext_ln367_1_reg_2137_pp0_iter4_reg[5 : 1] <= zext_ln367_1_reg_2137_pp0_iter3_reg[5 : 1];
        zext_ln367_1_reg_2137_pp0_iter5_reg[5 : 1] <= zext_ln367_1_reg_2137_pp0_iter4_reg[5 : 1];
        zext_ln391_cast_reg_3206[6 : 0] <= zext_ln391_cast_fu_1725_p3[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        c0_x_11_reg_2943 <= grp_fu_808_p2;
        c0_y_11_reg_2949 <= grp_fu_812_p2;
        sub13_reg_2961 <= grp_fu_820_p2;
        tmp_7_reg_2955 <= grp_fu_816_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        c0_x_18_reg_2833 <= grp_fu_1197_p_dout0;
        c0_y_18_reg_2839 <= grp_fu_1202_p_dout0;
        mul1657_1_reg_2851 <= grp_fu_1207_p_dout0;
        mul1663_1_reg_2857 <= grp_fu_1212_p_dout0;
        sub1644_1_reg_2845 <= grp_fu_1165_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        c0_x_1_reg_2421_pp0_iter1_reg <= c0_x_1_reg_2421;
        c0_y_1_reg_2427_pp0_iter1_reg <= c0_y_1_reg_2427;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        c0_x_20_reg_2767_pp0_iter2_reg <= c0_x_20_reg_2767;
        c0_x_8_reg_2718_pp0_iter2_reg <= c0_x_8_reg_2718;
        c0_y_20_reg_2773_pp0_iter2_reg <= c0_y_20_reg_2773;
        c0_y_8_reg_2724_pp0_iter2_reg <= c0_y_8_reg_2724;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul1648_1_reg_2625 <= grp_fu_1207_p_dout0;
        mul1_reg_2620 <= grp_fu_1202_p_dout0;
        mul_reg_2615 <= grp_fu_1197_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul1781_1_reg_3083 <= grp_fu_1197_p_dout0;
        mul1788_1_reg_3088 <= grp_fu_1202_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul6_reg_3063 <= grp_fu_1202_p_dout0;
        mul7_reg_3068 <= grp_fu_1207_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_848 <= grp_fu_796_p2;
        reg_853 <= grp_fu_800_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_859 <= grp_fu_820_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_863 <= grp_fu_804_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_867 <= grp_fu_784_p2;
        reg_873 <= grp_fu_788_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub14_reg_3183 <= grp_fu_1169_p_dout0;
        sub15_reg_3189 <= grp_fu_1173_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sub1705_1_reg_3051 <= grp_fu_1173_p_dout0;
        sub1710_1_reg_3057 <= grp_fu_1177_p_dout0;
        sub7_reg_3039 <= grp_fu_1165_p_dout0;
        sub8_reg_3045 <= grp_fu_1169_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_22_reg_3232 <= {{tid_5_reg_2026_pp0_iter5_reg[6:1]}};
        zext_ln391_1_cast_reg_3237[6 : 1] <= zext_ln391_1_cast_fu_1889_p4[6 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        zext_ln365_1_reg_3226[6 : 0] <= zext_ln365_1_fu_1830_p1[6 : 0];
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_address0_local = zext_ln371_1_fu_993_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address0_local = zext_ln371_fu_933_p1;
        end else begin
            DATA_x_1_address0_local = 'bx;
        end
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_address1_local = zext_ln367_2_fu_978_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address1_local = zext_ln367_fu_917_p1;
        end else begin
            DATA_x_1_address1_local = 'bx;
        end
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_2_address0_local = zext_ln371_1_fu_993_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_2_address0_local = zext_ln371_fu_933_p1;
        end else begin
            DATA_x_2_address0_local = 'bx;
        end
    end else begin
        DATA_x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_2_address1_local = zext_ln367_2_fu_978_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_2_address1_local = zext_ln367_fu_917_p1;
        end else begin
            DATA_x_2_address1_local = 'bx;
        end
    end else begin
        DATA_x_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_2_ce0_local = 1'b1;
    end else begin
        DATA_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_2_ce1_local = 1'b1;
    end else begin
        DATA_x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_3_address0_local = zext_ln371_1_fu_993_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_3_address0_local = zext_ln371_fu_933_p1;
        end else begin
            DATA_x_3_address0_local = 'bx;
        end
    end else begin
        DATA_x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_3_address1_local = zext_ln367_2_fu_978_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_3_address1_local = zext_ln367_fu_917_p1;
        end else begin
            DATA_x_3_address1_local = 'bx;
        end
    end else begin
        DATA_x_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_3_ce0_local = 1'b1;
    end else begin
        DATA_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_3_ce1_local = 1'b1;
    end else begin
        DATA_x_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_address0_local = zext_ln371_1_fu_993_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_address0_local = zext_ln371_fu_933_p1;
        end else begin
            DATA_x_address0_local = 'bx;
        end
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_address1_local = zext_ln367_2_fu_978_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_address1_local = zext_ln367_fu_917_p1;
        end else begin
            DATA_x_address1_local = 'bx;
        end
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_1_ce1_local = 1'b1;
    end else begin
        DATA_y_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_2_ce0_local = 1'b1;
    end else begin
        DATA_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_2_ce1_local = 1'b1;
    end else begin
        DATA_y_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_3_ce0_local = 1'b1;
    end else begin
        DATA_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_3_ce1_local = 1'b1;
    end else begin
        DATA_y_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_4_ce0_local = 1'b1;
    end else begin
        DATA_y_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_4_ce1_local = 1'b1;
    end else begin
        DATA_y_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_5_ce0_local = 1'b1;
    end else begin
        DATA_y_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_5_ce1_local = 1'b1;
    end else begin
        DATA_y_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_6_ce0_local = 1'b1;
    end else begin
        DATA_y_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_6_ce1_local = 1'b1;
    end else begin
        DATA_y_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_7_ce0_local = 1'b1;
    end else begin
        DATA_y_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_7_ce1_local = 1'b1;
    end else begin
        DATA_y_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_ce1_local = 1'b1;
    end else begin
        DATA_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_2036 == 1'd1) & (1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_condition_exit_pp0_iter0_stage10 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage10 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to5 = 1'b1;
    end else begin
        ap_idle_pp0_1to5 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_5 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_5 = tid_fu_110;
    end
end
always @ (*) begin
    if ((((tmp_reg_2036 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage7_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        grp_fu_752_opcode = 2'd1;
    end else if ((((tmp_reg_2036 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2036 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_752_opcode = 2'd0;
    end else begin
        grp_fu_752_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_752_p0 = c0_x_11_reg_2943;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_752_p0 = mul4_reg_2863;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_752_p0 = c0_x_1_reg_2421_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_752_p0 = c0_x_9_reg_2706;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_752_p0 = mul1641_1_reg_2684;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_752_p0 = mul_reg_2615;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_752_p0 = c0_x_7_reg_2415;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_752_p0 = tmp_1_reg_2445;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_752_p0 = c0_y_reg_2183;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_752_p0 = c0_x_reg_2231;
    end else begin
        grp_fu_752_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_752_p1 = add13_reg_2979;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_752_p1 = bitcast_ln386_13_fu_1457_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_752_p1 = sub4_reg_2803;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_752_p1 = add7_reg_2660;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_752_p1 = bitcast_ln386_25_fu_1423_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_752_p1 = bitcast_ln386_5_fu_1320_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_752_p1 = add_reg_2511;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_752_p1 = bitcast_ln386_1_fu_1030_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_752_p1 = DATA_y_4_load_reg_2207;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_752_p1 = DATA_x_load_2_reg_2255;
    end else begin
        grp_fu_752_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2036 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage7_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_756_opcode = 2'd1;
    end else if ((((tmp_reg_2036 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_2036 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage6_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_756_opcode = 2'd0;
    end else begin
        grp_fu_756_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_756_p0 = mul6_reg_3063;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_756_p0 = c0_y_11_reg_2949;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_756_p0 = bitcast_ln386_15_fu_1491_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_756_p0 = c0_y_1_reg_2427_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_756_p0 = c0_y_9_reg_2712;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_756_p0 = bitcast_ln386_7_fu_1354_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_756_p0 = c0_y_7_reg_2505;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_756_p0 = bitcast_ln386_3_fu_1064_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_756_p0 = c0_x_4_reg_2243;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_756_p0 = c0_x_reg_2231;
    end else begin
        grp_fu_756_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_756_p1 = bitcast_ln386_17_fu_1593_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_756_p1 = add14_reg_2985;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_756_p1 = mul5_reg_2868;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_756_p1 = add5_reg_2809;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_756_p1 = add8_reg_2666;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_756_p1 = mul1_reg_2620;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_756_p1 = add1_reg_2517;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_756_p1 = sub_reg_2451;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_756_p1 = DATA_x_2_load_2_reg_2267;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_756_p1 = DATA_x_load_2_reg_2255;
    end else begin
        grp_fu_756_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2036 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_2036 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage7_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_760_opcode = 2'd1;
    end else if ((((tmp_reg_2036 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        grp_fu_760_opcode = 2'd0;
    end else begin
        grp_fu_760_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_760_p0 = bitcast_ln386_19_fu_1627_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_760_p0 = c0_x_11_reg_2943;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_760_p0 = mul1702_1_reg_2893;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_760_p0 = c0_x_6_reg_2791;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_760_p0 = c0_x_9_reg_2706;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_760_p0 = bitcast_ln386_27_fu_1389_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_760_p0 = c0_x_7_reg_2415;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_760_p0 = bitcast_ln386_9_fu_1099_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_760_p0 = c0_y_4_reg_2195;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_760_p0 = c0_y_reg_2183;
    end else begin
        grp_fu_760_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_760_p1 = mul7_reg_3068;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_760_p1 = add13_reg_2979;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_760_p1 = bitcast_ln386_33_fu_1525_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_760_p1 = mul2_reg_2815;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_760_p1 = add7_reg_2660;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_760_p1 = mul1648_1_reg_2625;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_760_p1 = add_reg_2511;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_760_p1 = bitcast_ln386_11_fu_1135_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_760_p1 = DATA_y_6_load_reg_2219;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_760_p1 = DATA_y_4_load_reg_2207;
    end else begin
        grp_fu_760_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_764_opcode = 2'd1;
    end else if ((((tmp_reg_2036 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_2036 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2036 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_764_opcode = 2'd0;
    end else begin
        grp_fu_764_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_764_p0 = c0_y_11_reg_2949;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_764_p0 = bitcast_ln386_35_fu_1559_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_764_p0 = c0_y_6_reg_2797;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_764_p0 = c0_y_9_reg_2712;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_764_p0 = c0_y_7_reg_2505;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_764_p0 = bitcast_ln386_9_fu_1099_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_764_p0 = c0_x_12_reg_2367;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_764_p0 = c0_x_2_reg_2237;
    end else begin
        grp_fu_764_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_764_p1 = add14_reg_2985;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_764_p1 = mul1709_1_reg_2898;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_764_p1 = mul3_reg_2821;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_764_p1 = add8_reg_2666;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_764_p1 = add1_reg_2517;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_764_p1 = bitcast_ln386_11_fu_1135_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_764_p1 = DATA_x_load_3_reg_2391;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_764_p1 = DATA_x_1_load_2_reg_2261;
    end else begin
        grp_fu_764_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_768_opcode = 2'd1;
    end else if ((((tmp_reg_2036 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_2036 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2036 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        grp_fu_768_opcode = 2'd0;
    end else begin
        grp_fu_768_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_768_p0 = c0_x_20_reg_2767_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_768_p0 = c0_x_23_reg_2991;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_768_p0 = c0_x_13_reg_2557_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_768_p0 = c0_x_21_reg_2755;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_768_p0 = tmp_1_4_reg_2575;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_768_p0 = c0_x_3_reg_2433;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_768_p0 = c0_y_12_reg_2279;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_768_p0 = c0_y_2_reg_2189;
    end else begin
        grp_fu_768_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_768_p1 = sub1705_1_reg_3051;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_768_p1 = add1768_1_reg_3015;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_768_p1 = sub1644_1_reg_2845;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_768_p1 = add1689_1_reg_2779;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_768_p1 = bitcast_ln386_21_fu_1180_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_768_p1 = add2_reg_2469;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_768_p1 = DATA_y_4_load_2_reg_2303;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_768_p1 = DATA_y_5_load_reg_2213;
    end else begin
        grp_fu_768_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2036 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2036 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_772_opcode = 2'd1;
    end else if ((((tmp_reg_2036 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_772_opcode = 2'd0;
    end else begin
        grp_fu_772_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_772_p0 = c0_y_20_reg_2773_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_772_p0 = c0_y_23_reg_2997;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_772_p0 = c0_y_13_reg_2563_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_772_p0 = c0_y_21_reg_2761;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_772_p0 = bitcast_ln386_23_fu_1214_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_772_p0 = c0_y_3_reg_2439;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_772_p0 = c0_x_12_reg_2367;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_772_p0 = c0_x_2_reg_2237;
    end else begin
        grp_fu_772_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_772_p1 = sub1710_1_reg_3057;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_772_p1 = add1771_1_reg_3021;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_772_p1 = add1649_1_reg_2827;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_772_p1 = add1692_1_reg_2694;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_772_p1 = sub1591_1_reg_2487;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_772_p1 = add3_reg_2475;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_772_p1 = DATA_x_load_3_reg_2391;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_772_p1 = DATA_x_1_load_2_reg_2261;
    end else begin
        grp_fu_772_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_776_p0 = c0_x_20_reg_2767_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_776_p0 = c0_x_23_reg_2991;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_776_p0 = c0_x_13_reg_2557_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_776_p0 = c0_x_21_reg_2755;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_776_p0 = bitcast_ln386_29_fu_1249_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_776_p0 = c0_x_3_reg_2433;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_776_p0 = c0_y_12_reg_2279;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_776_p0 = c0_y_2_reg_2189;
    end else begin
        grp_fu_776_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_776_p1 = sub1705_1_reg_3051;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_776_p1 = add1768_1_reg_3015;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_776_p1 = sub1644_1_reg_2845;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_776_p1 = add1689_1_reg_2779;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_776_p1 = bitcast_ln386_31_fu_1285_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_776_p1 = add2_reg_2469;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_776_p1 = DATA_y_4_load_2_reg_2303;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_776_p1 = DATA_y_5_load_reg_2213;
    end else begin
        grp_fu_776_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2036 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_2036 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        grp_fu_780_opcode = 2'd1;
    end else if ((((tmp_reg_2036 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_780_opcode = 2'd0;
    end else begin
        grp_fu_780_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_780_p0 = c0_y_20_reg_2773_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_780_p0 = c0_y_23_reg_2997;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_780_p0 = c0_y_13_reg_2563_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_780_p0 = c0_y_21_reg_2761;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_780_p0 = bitcast_ln386_29_fu_1249_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_780_p0 = c0_y_3_reg_2439;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_780_p0 = c0_x_14_reg_2373;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_780_p0 = c0_x_4_reg_2243;
    end else begin
        grp_fu_780_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_780_p1 = sub1710_1_reg_3057;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_780_p1 = add1771_1_reg_3021;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_780_p1 = add1649_1_reg_2827;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_780_p1 = add1692_1_reg_2694;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_780_p1 = bitcast_ln386_31_fu_1285_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_780_p1 = add3_reg_2475;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_780_p1 = DATA_x_1_load_3_reg_2397;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_780_p1 = DATA_x_2_load_2_reg_2267;
    end else begin
        grp_fu_780_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2036 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2036 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        grp_fu_784_opcode = 2'd1;
    end else if ((((tmp_reg_2036 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_784_opcode = 2'd0;
    end else begin
        grp_fu_784_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_784_p0 = c0_x_10_reg_2967_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_784_p0 = mul1781_1_reg_3083;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_784_p0 = c0_x_18_reg_2833;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_784_p0 = c0_x_19_reg_2545;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_784_p0 = c0_y_15_reg_2481;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_784_p0 = c0_x_14_reg_2373;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_784_p0 = c0_y_4_reg_2195;
    end else begin
        grp_fu_784_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_784_p1 = sub14_reg_3183;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_784_p1 = bitcast_ln386_37_fu_1661_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_784_p1 = mul1657_1_reg_2851;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_784_p1 = add1598_1_reg_2581;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_784_p1 = add1617_1_reg_2499;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_784_p1 = DATA_x_1_load_3_reg_2397;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_784_p1 = DATA_y_6_load_reg_2219;
    end else begin
        grp_fu_784_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2036 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        grp_fu_788_opcode = 2'd1;
    end else if ((((tmp_reg_2036 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2036 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_788_opcode = 2'd0;
    end else begin
        grp_fu_788_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_788_p0 = c0_y_10_reg_2973_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_788_p0 = bitcast_ln386_39_fu_1695_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_788_p0 = c0_y_18_reg_2839;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_788_p0 = c0_y_19_reg_2551;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_788_p0 = c0_y_15_reg_2481;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_788_p0 = c0_x_16_reg_2379;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_788_p0 = c0_x_5_reg_2249;
    end else begin
        grp_fu_788_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_788_p1 = sub15_reg_3189;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_788_p1 = mul1788_1_reg_3088;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_788_p1 = mul1663_1_reg_2857;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_788_p1 = add1601_1_reg_2587;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_788_p1 = add1617_1_reg_2499;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_788_p1 = DATA_x_2_load_3_reg_2403;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_788_p1 = DATA_x_3_load_2_reg_2273;
    end else begin
        grp_fu_788_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_792_opcode = 2'd1;
    end else if ((((tmp_reg_2036 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2036 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_792_opcode = 2'd0;
    end else begin
        grp_fu_792_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_792_p0 = c0_x_22_reg_3003_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_792_p0 = c0_x_18_reg_2833;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_792_p0 = c0_x_19_reg_2545;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_792_p0 = c0_y_16_reg_2291;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_792_p0 = c0_y_5_reg_2201;
    end else begin
        grp_fu_792_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_792_p1 = reg_867;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_792_p1 = mul1657_1_reg_2851;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_792_p1 = add1598_1_reg_2581;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_792_p1 = DATA_y_6_load_2_reg_2315;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_792_p1 = DATA_y_7_load_reg_2225;
    end else begin
        grp_fu_792_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2036 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2036 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_796_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_796_opcode = 2'd0;
    end else begin
        grp_fu_796_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_796_p0 = c0_y_22_reg_3009_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_796_p0 = c0_y_18_reg_2839;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_796_p0 = c0_y_19_reg_2551;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_796_p0 = c0_x_16_reg_2379;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_796_p0 = c0_x_5_reg_2249;
    end else begin
        grp_fu_796_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_796_p1 = reg_873;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_796_p1 = mul1663_1_reg_2857;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_796_p1 = add1601_1_reg_2587;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_796_p1 = DATA_x_2_load_3_reg_2403;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_796_p1 = DATA_x_3_load_2_reg_2273;
    end else begin
        grp_fu_796_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2036 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_800_opcode = 2'd1;
    end else if ((((tmp_reg_2036 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_800_opcode = 2'd0;
    end else begin
        grp_fu_800_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_800_p0 = c0_x_22_reg_3003_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_800_p0 = c0_x_8_reg_2718_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_800_p0 = c0_x_15_reg_2569;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_800_p0 = c0_x_17_reg_2385;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_800_p0 = c0_y_5_reg_2201;
    end else begin
        grp_fu_800_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_800_p1 = reg_867;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_800_p1 = sub7_reg_3039;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_800_p1 = reg_853;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_800_p1 = DATA_x_3_load_3_reg_2409;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_800_p1 = DATA_y_7_load_reg_2225;
    end else begin
        grp_fu_800_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2036 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_804_opcode = 2'd1;
    end else if ((((tmp_reg_2036 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_804_opcode = 2'd0;
    end else begin
        grp_fu_804_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_804_p0 = c0_y_22_reg_3009_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_804_p0 = c0_y_8_reg_2724_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_804_p0 = c0_x_15_reg_2569;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_804_p0 = c0_x_17_reg_2385;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_804_p0 = c0_y_14_reg_2285;
    end else begin
        grp_fu_804_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_804_p1 = reg_873;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_804_p1 = sub8_reg_3045;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_804_p1 = reg_853;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_804_p1 = DATA_x_3_load_3_reg_2409;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_804_p1 = DATA_y_5_load_2_reg_2309;
    end else begin
        grp_fu_804_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2036 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_808_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_808_opcode = 2'd0;
    end else begin
        grp_fu_808_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_808_p0 = c0_x_8_reg_2718_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_808_p0 = c0_x_1_reg_2421_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_808_p0 = c0_y_14_reg_2285;
    end else begin
        grp_fu_808_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_808_p1 = sub7_reg_3039;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_808_p1 = sub4_reg_2803;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_808_p1 = DATA_y_5_load_2_reg_2309;
    end else begin
        grp_fu_808_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2036 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_812_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_812_opcode = 2'd0;
    end else begin
        grp_fu_812_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_812_p0 = c0_y_8_reg_2724_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_812_p0 = c0_y_1_reg_2427_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_812_p0 = c0_y_16_reg_2291;
    end else begin
        grp_fu_812_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_812_p1 = sub8_reg_3045;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_812_p1 = add5_reg_2809;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_812_p1 = DATA_y_6_load_2_reg_2315;
    end else begin
        grp_fu_812_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_816_opcode = 2'd1;
    end else if ((((tmp_reg_2036 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_816_opcode = 2'd0;
    end else begin
        grp_fu_816_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_816_p0 = c0_x_10_reg_2967_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_816_p0 = c0_x_6_reg_2791;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_816_p0 = c0_y_17_reg_2297;
    end else begin
        grp_fu_816_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_816_p1 = sub14_reg_3183;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_816_p1 = mul2_reg_2815;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_816_p1 = DATA_y_7_load_2_reg_2321;
    end else begin
        grp_fu_816_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2036 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_820_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_820_opcode = 2'd0;
    end else begin
        grp_fu_820_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_820_p0 = c0_y_10_reg_2973_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_820_p0 = c0_y_6_reg_2797;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_820_p0 = c0_y_17_reg_2297;
    end else begin
        grp_fu_820_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_820_p1 = sub15_reg_3189;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_820_p1 = mul3_reg_2821;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_820_p1 = DATA_y_7_load_2_reg_2321;
    end else begin
        grp_fu_820_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_824_p0 = tmp_9_reg_3027;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_824_p0 = tmp_6_reg_2672;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_824_p0 = sub1630_1_reg_2730;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_824_p0 = sub3_reg_2630;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_824_p0 = reg_848;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_824_p0 = tmp_1_1_reg_2457;
    end else begin
        grp_fu_824_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_824_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_824_p1 = 64'd0;
    end else begin
        grp_fu_824_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_829_p0 = sub1777_1_reg_3033;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_829_p0 = tmp_7_reg_2955;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_829_p0 = sub6_reg_2678;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_829_p0 = add1636_1_reg_2735;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_829_p0 = add4_reg_2635;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_829_p0 = sub1_reg_2463;
    end else begin
        grp_fu_829_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_829_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_829_p1 = 64'd0;
    end else begin
        grp_fu_829_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_834_p0 = sub13_reg_2961;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_834_p0 = tmp_8_reg_2785;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_834_p0 = sub1656_1_reg_2745;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_834_p0 = sub5_reg_2650;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_834_p0 = sub1607_1_reg_2493;
    end else begin
        grp_fu_834_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_834_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_834_p1 = 64'd0;
    end else begin
        grp_fu_834_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_842_p0 = sub1698_1_reg_2700;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_842_p0 = add1662_1_reg_2750;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_842_p0 = add6_reg_2655;
        end else begin
            grp_fu_842_p0 = 'bx;
        end
    end else begin
        grp_fu_842_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_842_p1 = 64'd0;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_842_p1 = 64'd4604544271217802189;
    end else begin
        grp_fu_842_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            work_x_address0_local = zext_ln396_1_fu_2004_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            work_x_address0_local = zext_ln394_1_fu_1964_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            work_x_address0_local = zext_ln392_1_fu_1918_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            work_x_address0_local = zext_ln367_1_reg_2137_pp0_iter5_reg;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            work_x_address0_local = zext_ln396_fu_1852_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            work_x_address0_local = zext_ln390_1_fu_1816_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            work_x_address0_local = zext_ln395_fu_1766_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            work_x_address0_local = zext_ln391_fu_1732_p1;
        end else begin
            work_x_address0_local = 'bx;
        end
    end else begin
        work_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        work_x_address1_local = zext_ln395_1_fu_1981_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        work_x_address1_local = zext_ln393_2_fu_1945_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        work_x_address1_local = zext_ln391_1_fu_1899_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_address1_local = zext_ln394_fu_1839_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_address1_local = zext_ln393_fu_1796_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_address1_local = zext_ln392_fu_1753_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_address1_local = zext_ln365_reg_2040_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        work_x_address1_local = zext_ln390_fu_1707_p1;
    end else begin
        work_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        work_x_ce0_local = 1'b1;
    end else begin
        work_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        work_x_ce1_local = 1'b1;
    end else begin
        work_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            work_x_d0_local = bitcast_ln396_1_fu_2010_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            work_x_d0_local = bitcast_ln394_1_fu_1970_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            work_x_d0_local = bitcast_ln392_1_fu_1924_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            work_x_d0_local = bitcast_ln389_1_fu_1872_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            work_x_d0_local = bitcast_ln396_fu_1858_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            work_x_d0_local = bitcast_ln390_1_fu_1822_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            work_x_d0_local = bitcast_ln395_fu_1772_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            work_x_d0_local = bitcast_ln391_fu_1738_p1;
        end else begin
            work_x_d0_local = 'bx;
        end
    end else begin
        work_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        work_x_d1_local = bitcast_ln395_1_fu_1987_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        work_x_d1_local = bitcast_ln393_1_fu_1951_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        work_x_d1_local = bitcast_ln391_1_fu_1905_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_d1_local = bitcast_ln394_fu_1845_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_d1_local = bitcast_ln393_fu_1802_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_d1_local = bitcast_ln392_fu_1759_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_d1_local = bitcast_ln389_fu_1721_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        work_x_d1_local = bitcast_ln390_fu_1713_p1;
    end else begin
        work_x_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        work_x_we0_local = 1'b1;
    end else begin
        work_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        work_x_we1_local = 1'b1;
    end else begin
        work_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            work_y_address0_local = zext_ln396_1_fu_2004_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            work_y_address0_local = zext_ln394_1_fu_1964_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            work_y_address0_local = zext_ln392_1_fu_1918_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            work_y_address0_local = zext_ln367_1_reg_2137_pp0_iter5_reg;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            work_y_address0_local = zext_ln396_fu_1852_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            work_y_address0_local = zext_ln390_1_fu_1816_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            work_y_address0_local = zext_ln395_fu_1766_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            work_y_address0_local = zext_ln391_fu_1732_p1;
        end else begin
            work_y_address0_local = 'bx;
        end
    end else begin
        work_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        work_y_address1_local = zext_ln395_1_fu_1981_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        work_y_address1_local = zext_ln393_2_fu_1945_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        work_y_address1_local = zext_ln391_1_fu_1899_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_address1_local = zext_ln394_fu_1839_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_address1_local = zext_ln393_fu_1796_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_address1_local = zext_ln392_fu_1753_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_address1_local = zext_ln365_reg_2040_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        work_y_address1_local = zext_ln390_fu_1707_p1;
    end else begin
        work_y_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        work_y_ce0_local = 1'b1;
    end else begin
        work_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        work_y_ce1_local = 1'b1;
    end else begin
        work_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            work_y_d0_local = bitcast_ln405_1_fu_2014_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            work_y_d0_local = bitcast_ln403_1_fu_1974_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            work_y_d0_local = bitcast_ln401_1_fu_1928_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            work_y_d0_local = bitcast_ln398_1_fu_1876_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            work_y_d0_local = bitcast_ln405_fu_1867_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            work_y_d0_local = bitcast_ln399_1_fu_1826_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            work_y_d0_local = bitcast_ln404_fu_1781_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            work_y_d0_local = bitcast_ln400_fu_1746_p1;
        end else begin
            work_y_d0_local = 'bx;
        end
    end else begin
        work_y_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        work_y_d1_local = bitcast_ln404_1_fu_1991_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        work_y_d1_local = bitcast_ln402_1_fu_1955_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        work_y_d1_local = bitcast_ln400_1_fu_1909_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_d1_local = bitcast_ln403_fu_1863_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_d1_local = bitcast_ln402_fu_1806_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_d1_local = bitcast_ln401_fu_1776_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_d1_local = bitcast_ln398_fu_1742_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        work_y_d1_local = bitcast_ln399_fu_1717_p1;
    end else begin
        work_y_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        work_y_we0_local = 1'b1;
    end else begin
        work_y_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        work_y_we1_local = 1'b1;
    end else begin
        work_y_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to5 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign DATA_x_1_address0 = DATA_x_1_address0_local;
assign DATA_x_1_address1 = DATA_x_1_address1_local;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_ce1 = DATA_x_1_ce1_local;
assign DATA_x_2_address0 = DATA_x_2_address0_local;
assign DATA_x_2_address1 = DATA_x_2_address1_local;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_2_ce1 = DATA_x_2_ce1_local;
assign DATA_x_3_address0 = DATA_x_3_address0_local;
assign DATA_x_3_address1 = DATA_x_3_address1_local;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_3_ce1 = DATA_x_3_ce1_local;
assign DATA_x_address0 = DATA_x_address0_local;
assign DATA_x_address1 = DATA_x_address1_local;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign DATA_y_1_address0 = zext_ln367_1_fu_959_p1;
assign DATA_y_1_address1 = zext_ln365_fu_895_p1;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_1_ce1 = DATA_y_1_ce1_local;
assign DATA_y_2_address0 = zext_ln367_1_fu_959_p1;
assign DATA_y_2_address1 = zext_ln365_fu_895_p1;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_2_ce1 = DATA_y_2_ce1_local;
assign DATA_y_3_address0 = zext_ln367_1_fu_959_p1;
assign DATA_y_3_address1 = zext_ln365_fu_895_p1;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_3_ce1 = DATA_y_3_ce1_local;
assign DATA_y_4_address0 = zext_ln367_1_fu_959_p1;
assign DATA_y_4_address1 = zext_ln365_fu_895_p1;
assign DATA_y_4_ce0 = DATA_y_4_ce0_local;
assign DATA_y_4_ce1 = DATA_y_4_ce1_local;
assign DATA_y_5_address0 = zext_ln367_1_fu_959_p1;
assign DATA_y_5_address1 = zext_ln365_fu_895_p1;
assign DATA_y_5_ce0 = DATA_y_5_ce0_local;
assign DATA_y_5_ce1 = DATA_y_5_ce1_local;
assign DATA_y_6_address0 = zext_ln367_1_fu_959_p1;
assign DATA_y_6_address1 = zext_ln365_fu_895_p1;
assign DATA_y_6_ce0 = DATA_y_6_ce0_local;
assign DATA_y_6_ce1 = DATA_y_6_ce1_local;
assign DATA_y_7_address0 = zext_ln367_1_fu_959_p1;
assign DATA_y_7_address1 = zext_ln365_fu_895_p1;
assign DATA_y_7_ce0 = DATA_y_7_ce0_local;
assign DATA_y_7_ce1 = DATA_y_7_ce1_local;
assign DATA_y_address0 = zext_ln367_1_fu_959_p1;
assign DATA_y_address1 = zext_ln365_fu_895_p1;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign DATA_y_ce1 = DATA_y_ce1_local;
assign add_ln365_fu_1141_p2 = (tid_5_reg_2026 + 7'd2);
assign add_ln390_fu_1810_p2 = (zext_ln365_2_fu_1785_p1 + 8'd65);
assign add_ln392_fu_1913_p2 = (zext_ln365_1_reg_3226 + 9'd193);
assign add_ln394_1_fu_1959_p2 = ($signed(zext_ln365_1_reg_3226) + $signed(9'd321));
assign add_ln394_fu_1833_p2 = ($signed(zext_ln365_1_fu_1830_p1) + $signed(9'd320));
assign add_ln396_fu_1995_p2 = ($signed(tid_5_reg_2026_pp0_iter5_reg) + $signed(7'd65));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage10;
assign ap_ready = ap_ready_sig;
assign bit_sel10_fu_1154_p3 = bitcast_ln386_20_fu_1151_p1[64'd63];
assign bit_sel11_fu_1188_p3 = bitcast_ln386_22_fu_1185_p1[64'd63];
assign bit_sel12_fu_1397_p3 = bitcast_ln386_24_fu_1394_p1[64'd63];
assign bit_sel13_fu_1363_p3 = bitcast_ln386_26_fu_1359_p1[64'd63];
assign bit_sel14_fu_1223_p3 = bitcast_ln386_28_fu_1219_p1[64'd63];
assign bit_sel15_fu_1259_p3 = bitcast_ln386_30_fu_1255_p1[64'd63];
assign bit_sel16_fu_1499_p3 = bitcast_ln386_32_fu_1496_p1[64'd63];
assign bit_sel17_fu_1533_p3 = bitcast_ln386_34_fu_1530_p1[64'd63];
assign bit_sel18_fu_1635_p3 = bitcast_ln386_36_fu_1632_p1[64'd63];
assign bit_sel19_fu_1669_p3 = bitcast_ln386_38_fu_1666_p1[64'd63];
assign bit_sel1_fu_1038_p3 = bitcast_ln386_2_fu_1035_p1[64'd63];
assign bit_sel2_fu_1294_p3 = bitcast_ln386_4_fu_1291_p1[64'd63];
assign bit_sel3_fu_1328_p3 = bitcast_ln386_6_fu_1325_p1[64'd63];
assign bit_sel4_fu_1073_p3 = bitcast_ln386_8_fu_1069_p1[64'd63];
assign bit_sel5_fu_1109_p3 = bitcast_ln386_10_fu_1105_p1[64'd63];
assign bit_sel6_fu_1431_p3 = bitcast_ln386_12_fu_1428_p1[64'd63];
assign bit_sel7_fu_1465_p3 = bitcast_ln386_14_fu_1462_p1[64'd63];
assign bit_sel8_fu_1567_p3 = bitcast_ln386_16_fu_1564_p1[64'd63];
assign bit_sel9_fu_1601_p3 = bitcast_ln386_18_fu_1598_p1[64'd63];
assign bit_sel_fu_1004_p3 = bitcast_ln386_fu_1001_p1[64'd63];
assign bitcast_ln386_10_fu_1105_p1 = reg_853;
assign bitcast_ln386_11_fu_1135_p1 = xor_ln386_5_fu_1127_p3;
assign bitcast_ln386_12_fu_1428_p1 = sub6_reg_2678;
assign bitcast_ln386_13_fu_1457_p1 = xor_ln386_6_fu_1449_p3;
assign bitcast_ln386_14_fu_1462_p1 = tmp_6_reg_2672;
assign bitcast_ln386_15_fu_1491_p1 = xor_ln386_7_fu_1483_p3;
assign bitcast_ln386_16_fu_1564_p1 = sub13_reg_2961;
assign bitcast_ln386_17_fu_1593_p1 = xor_ln386_8_fu_1585_p3;
assign bitcast_ln386_18_fu_1598_p1 = tmp_7_reg_2955;
assign bitcast_ln386_19_fu_1627_p1 = xor_ln386_9_fu_1619_p3;
assign bitcast_ln386_1_fu_1030_p1 = xor_ln3_fu_1022_p3;
assign bitcast_ln386_20_fu_1151_p1 = sub1591_1_reg_2487;
assign bitcast_ln386_21_fu_1180_p1 = xor_ln386_s_fu_1172_p3;
assign bitcast_ln386_22_fu_1185_p1 = tmp_1_4_reg_2575;
assign bitcast_ln386_23_fu_1214_p1 = xor_ln386_10_fu_1206_p3;
assign bitcast_ln386_24_fu_1394_p1 = sub1607_1_reg_2493;
assign bitcast_ln386_25_fu_1423_p1 = xor_ln386_11_fu_1415_p3;
assign bitcast_ln386_26_fu_1359_p1 = reg_848;
assign bitcast_ln386_27_fu_1389_p1 = xor_ln386_12_fu_1381_p3;
assign bitcast_ln386_28_fu_1219_p1 = reg_863;
assign bitcast_ln386_29_fu_1249_p1 = xor_ln386_13_fu_1241_p3;
assign bitcast_ln386_2_fu_1035_p1 = tmp_1_reg_2445;
assign bitcast_ln386_30_fu_1255_p1 = reg_859;
assign bitcast_ln386_31_fu_1285_p1 = xor_ln386_14_fu_1277_p3;
assign bitcast_ln386_32_fu_1496_p1 = sub1698_1_reg_2700;
assign bitcast_ln386_33_fu_1525_p1 = xor_ln386_15_fu_1517_p3;
assign bitcast_ln386_34_fu_1530_p1 = tmp_8_reg_2785;
assign bitcast_ln386_35_fu_1559_p1 = xor_ln386_16_fu_1551_p3;
assign bitcast_ln386_36_fu_1632_p1 = sub1777_1_reg_3033;
assign bitcast_ln386_37_fu_1661_p1 = xor_ln386_17_fu_1653_p3;
assign bitcast_ln386_38_fu_1666_p1 = tmp_9_reg_3027;
assign bitcast_ln386_39_fu_1695_p1 = xor_ln386_18_fu_1687_p3;
assign bitcast_ln386_3_fu_1064_p1 = xor_ln386_1_fu_1056_p3;
assign bitcast_ln386_4_fu_1291_p1 = sub1_reg_2463;
assign bitcast_ln386_5_fu_1320_p1 = xor_ln386_2_fu_1312_p3;
assign bitcast_ln386_6_fu_1325_p1 = tmp_1_1_reg_2457;
assign bitcast_ln386_7_fu_1354_p1 = xor_ln386_3_fu_1346_p3;
assign bitcast_ln386_8_fu_1069_p1 = reg_848;
assign bitcast_ln386_9_fu_1099_p1 = xor_ln386_4_fu_1091_p3;
assign bitcast_ln386_fu_1001_p1 = sub_reg_2451;
assign bitcast_ln389_1_fu_1872_p1 = add1717_1_reg_2903_pp0_iter4_reg;
assign bitcast_ln389_fu_1721_p1 = add9_reg_2873_pp0_iter4_reg;
assign bitcast_ln390_1_fu_1822_p1 = add1796_1_reg_3123_pp0_iter4_reg;
assign bitcast_ln390_fu_1713_p1 = add15_reg_3093_pp0_iter4_reg;
assign bitcast_ln391_1_fu_1905_p1 = add1733_1_reg_3163_pp0_iter5_reg;
assign bitcast_ln391_fu_1738_p1 = add11_reg_3143;
assign bitcast_ln392_1_fu_1924_p1 = add1812_1_reg_3211;
assign bitcast_ln392_fu_1759_p1 = add17_reg_3201;
assign bitcast_ln393_1_fu_1951_p1 = sub1723_1_reg_2913_pp0_iter5_reg;
assign bitcast_ln393_fu_1802_p1 = sub9_reg_2883_pp0_iter4_reg;
assign bitcast_ln394_1_fu_1970_p1 = sub1802_1_reg_3133_pp0_iter4_reg;
assign bitcast_ln394_fu_1845_p1 = sub16_reg_3103_pp0_iter4_reg;
assign bitcast_ln395_1_fu_1987_p1 = sub1739_1_reg_3173_pp0_iter5_reg;
assign bitcast_ln395_fu_1772_p1 = sub11_reg_3153_pp0_iter5_reg;
assign bitcast_ln396_1_fu_2010_p1 = sub1818_1_reg_3221;
assign bitcast_ln396_fu_1858_p1 = reg_867;
assign bitcast_ln398_1_fu_1876_p1 = add1720_1_reg_2908_pp0_iter4_reg;
assign bitcast_ln398_fu_1742_p1 = add10_reg_2878_pp0_iter4_reg;
assign bitcast_ln399_1_fu_1826_p1 = add1799_1_reg_3128_pp0_iter4_reg;
assign bitcast_ln399_fu_1717_p1 = add16_reg_3098_pp0_iter4_reg;
assign bitcast_ln400_1_fu_1909_p1 = add1736_1_reg_3168_pp0_iter5_reg;
assign bitcast_ln400_fu_1746_p1 = add12_reg_3148;
assign bitcast_ln401_1_fu_1928_p1 = add1815_1_reg_3216;
assign bitcast_ln401_fu_1776_p1 = reg_859;
assign bitcast_ln402_1_fu_1955_p1 = sub1726_1_reg_2918_pp0_iter5_reg;
assign bitcast_ln402_fu_1806_p1 = sub10_reg_2888_pp0_iter4_reg;
assign bitcast_ln403_1_fu_1974_p1 = sub1805_1_reg_3138_pp0_iter4_reg;
assign bitcast_ln403_fu_1863_p1 = sub17_reg_3108_pp0_iter4_reg;
assign bitcast_ln404_1_fu_1991_p1 = sub1742_1_reg_3178_pp0_iter5_reg;
assign bitcast_ln404_fu_1781_p1 = sub12_reg_3158_pp0_iter5_reg;
assign bitcast_ln405_1_fu_2014_p1 = reg_863;
assign bitcast_ln405_fu_1867_p1 = reg_873;
assign grp_fu_1165_p_ce = 1'b1;
assign grp_fu_1165_p_din0 = grp_fu_752_p0;
assign grp_fu_1165_p_din1 = grp_fu_752_p1;
assign grp_fu_1165_p_opcode = grp_fu_752_opcode;
assign grp_fu_1169_p_ce = 1'b1;
assign grp_fu_1169_p_din0 = grp_fu_756_p0;
assign grp_fu_1169_p_din1 = grp_fu_756_p1;
assign grp_fu_1169_p_opcode = grp_fu_756_opcode;
assign grp_fu_1173_p_ce = 1'b1;
assign grp_fu_1173_p_din0 = grp_fu_760_p0;
assign grp_fu_1173_p_din1 = grp_fu_760_p1;
assign grp_fu_1173_p_opcode = grp_fu_760_opcode;
assign grp_fu_1177_p_ce = 1'b1;
assign grp_fu_1177_p_din0 = grp_fu_764_p0;
assign grp_fu_1177_p_din1 = grp_fu_764_p1;
assign grp_fu_1177_p_opcode = grp_fu_764_opcode;
assign grp_fu_1181_p_ce = 1'b1;
assign grp_fu_1181_p_din0 = grp_fu_768_p0;
assign grp_fu_1181_p_din1 = grp_fu_768_p1;
assign grp_fu_1181_p_opcode = grp_fu_768_opcode;
assign grp_fu_1185_p_ce = 1'b1;
assign grp_fu_1185_p_din0 = grp_fu_772_p0;
assign grp_fu_1185_p_din1 = grp_fu_772_p1;
assign grp_fu_1185_p_opcode = grp_fu_772_opcode;
assign grp_fu_1189_p_ce = 1'b1;
assign grp_fu_1189_p_din0 = grp_fu_776_p0;
assign grp_fu_1189_p_din1 = grp_fu_776_p1;
assign grp_fu_1189_p_opcode = 2'd1;
assign grp_fu_1193_p_ce = 1'b1;
assign grp_fu_1193_p_din0 = grp_fu_780_p0;
assign grp_fu_1193_p_din1 = grp_fu_780_p1;
assign grp_fu_1193_p_opcode = grp_fu_780_opcode;
assign grp_fu_1197_p_ce = 1'b1;
assign grp_fu_1197_p_din0 = grp_fu_824_p0;
assign grp_fu_1197_p_din1 = grp_fu_824_p1;
assign grp_fu_1202_p_ce = 1'b1;
assign grp_fu_1202_p_din0 = grp_fu_829_p0;
assign grp_fu_1202_p_din1 = grp_fu_829_p1;
assign grp_fu_1207_p_ce = 1'b1;
assign grp_fu_1207_p_din0 = grp_fu_834_p0;
assign grp_fu_1207_p_din1 = grp_fu_834_p1;
assign grp_fu_1212_p_ce = 1'b1;
assign grp_fu_1212_p_din0 = grp_fu_842_p0;
assign grp_fu_1212_p_din1 = grp_fu_842_p1;
assign or_ln1_fu_951_p3 = {{tmp_s_fu_941_p4}, {1'd1}};
assign or_ln2_fu_971_p3 = {{tmp_s_reg_2131}, {2'd2}};
assign or_ln371_1_fu_986_p3 = {{tmp_s_reg_2131}, {2'd3}};
assign or_ln_fu_925_p3 = {{trunc_ln367_fu_907_p1}, {1'd1}};
assign sext_ln392_fu_1750_p1 = zext_ln390_cast_reg_3195;
assign sext_ln395_1_fu_1978_p1 = zext_ln391_1_cast_reg_3237;
assign sext_ln395_fu_1763_p1 = zext_ln391_cast_reg_3206;
assign sext_ln396_1_fu_2000_p1 = $signed(add_ln396_fu_1995_p2);
assign sext_ln396_fu_1849_p1 = zext_ln390_cast_reg_3195;
assign shl_ln367_fu_911_p2 = ap_sig_allocacmp_tid_5 << 7'd1;
assign tmp_22_fu_1880_p4 = {{tid_5_reg_2026_pp0_iter5_reg[6:1]}};
assign tmp_s_fu_941_p4 = {{ap_sig_allocacmp_tid_5[5:1]}};
assign trunc_ln367_fu_907_p1 = ap_sig_allocacmp_tid_5[5:0];
assign trunc_ln386_10_fu_1168_p1 = bitcast_ln386_20_fu_1151_p1[62:0];
assign trunc_ln386_11_fu_1202_p1 = bitcast_ln386_22_fu_1185_p1[62:0];
assign trunc_ln386_12_fu_1411_p1 = bitcast_ln386_24_fu_1394_p1[62:0];
assign trunc_ln386_13_fu_1377_p1 = bitcast_ln386_26_fu_1359_p1[62:0];
assign trunc_ln386_14_fu_1237_p1 = bitcast_ln386_28_fu_1219_p1[62:0];
assign trunc_ln386_15_fu_1273_p1 = bitcast_ln386_30_fu_1255_p1[62:0];
assign trunc_ln386_16_fu_1513_p1 = bitcast_ln386_32_fu_1496_p1[62:0];
assign trunc_ln386_17_fu_1547_p1 = bitcast_ln386_34_fu_1530_p1[62:0];
assign trunc_ln386_18_fu_1649_p1 = bitcast_ln386_36_fu_1632_p1[62:0];
assign trunc_ln386_19_fu_1683_p1 = bitcast_ln386_38_fu_1666_p1[62:0];
assign trunc_ln386_1_fu_1052_p1 = bitcast_ln386_2_fu_1035_p1[62:0];
assign trunc_ln386_2_fu_1308_p1 = bitcast_ln386_4_fu_1291_p1[62:0];
assign trunc_ln386_3_fu_1342_p1 = bitcast_ln386_6_fu_1325_p1[62:0];
assign trunc_ln386_4_fu_1087_p1 = bitcast_ln386_8_fu_1069_p1[62:0];
assign trunc_ln386_5_fu_1123_p1 = bitcast_ln386_10_fu_1105_p1[62:0];
assign trunc_ln386_6_fu_1445_p1 = bitcast_ln386_12_fu_1428_p1[62:0];
assign trunc_ln386_7_fu_1479_p1 = bitcast_ln386_14_fu_1462_p1[62:0];
assign trunc_ln386_8_fu_1581_p1 = bitcast_ln386_16_fu_1564_p1[62:0];
assign trunc_ln386_9_fu_1615_p1 = bitcast_ln386_18_fu_1598_p1[62:0];
assign trunc_ln386_fu_1018_p1 = bitcast_ln386_fu_1001_p1[62:0];
assign work_x_address0 = work_x_address0_local;
assign work_x_address1 = work_x_address1_local;
assign work_x_ce0 = work_x_ce0_local;
assign work_x_ce1 = work_x_ce1_local;
assign work_x_d0 = work_x_d0_local;
assign work_x_d1 = work_x_d1_local;
assign work_x_we0 = work_x_we0_local;
assign work_x_we1 = work_x_we1_local;
assign work_y_address0 = work_y_address0_local;
assign work_y_address1 = work_y_address1_local;
assign work_y_ce0 = work_y_ce0_local;
assign work_y_ce1 = work_y_ce1_local;
assign work_y_d0 = work_y_d0_local;
assign work_y_d1 = work_y_d1_local;
assign work_y_we0 = work_y_we0_local;
assign work_y_we1 = work_y_we1_local;
assign xor_ln386_10_fu_1206_p3 = {{xor_ln386_29_fu_1196_p2}, {trunc_ln386_11_fu_1202_p1}};
assign xor_ln386_11_fu_1415_p3 = {{xor_ln386_30_fu_1405_p2}, {trunc_ln386_12_fu_1411_p1}};
assign xor_ln386_12_fu_1381_p3 = {{xor_ln386_31_fu_1371_p2}, {trunc_ln386_13_fu_1377_p1}};
assign xor_ln386_13_fu_1241_p3 = {{xor_ln386_32_fu_1231_p2}, {trunc_ln386_14_fu_1237_p1}};
assign xor_ln386_14_fu_1277_p3 = {{xor_ln386_33_fu_1267_p2}, {trunc_ln386_15_fu_1273_p1}};
assign xor_ln386_15_fu_1517_p3 = {{xor_ln386_34_fu_1507_p2}, {trunc_ln386_16_fu_1513_p1}};
assign xor_ln386_16_fu_1551_p3 = {{xor_ln386_35_fu_1541_p2}, {trunc_ln386_17_fu_1547_p1}};
assign xor_ln386_17_fu_1653_p3 = {{xor_ln386_36_fu_1643_p2}, {trunc_ln386_18_fu_1649_p1}};
assign xor_ln386_18_fu_1687_p3 = {{xor_ln386_37_fu_1677_p2}, {trunc_ln386_19_fu_1683_p1}};
assign xor_ln386_19_fu_1012_p2 = (bit_sel_fu_1004_p3 ^ 1'd1);
assign xor_ln386_1_fu_1056_p3 = {{xor_ln386_fu_1046_p2}, {trunc_ln386_1_fu_1052_p1}};
assign xor_ln386_20_fu_1302_p2 = (bit_sel2_fu_1294_p3 ^ 1'd1);
assign xor_ln386_21_fu_1336_p2 = (bit_sel3_fu_1328_p3 ^ 1'd1);
assign xor_ln386_22_fu_1081_p2 = (bit_sel4_fu_1073_p3 ^ 1'd1);
assign xor_ln386_23_fu_1117_p2 = (bit_sel5_fu_1109_p3 ^ 1'd1);
assign xor_ln386_24_fu_1439_p2 = (bit_sel6_fu_1431_p3 ^ 1'd1);
assign xor_ln386_25_fu_1473_p2 = (bit_sel7_fu_1465_p3 ^ 1'd1);
assign xor_ln386_26_fu_1575_p2 = (bit_sel8_fu_1567_p3 ^ 1'd1);
assign xor_ln386_27_fu_1609_p2 = (bit_sel9_fu_1601_p3 ^ 1'd1);
assign xor_ln386_28_fu_1162_p2 = (bit_sel10_fu_1154_p3 ^ 1'd1);
assign xor_ln386_29_fu_1196_p2 = (bit_sel11_fu_1188_p3 ^ 1'd1);
assign xor_ln386_2_fu_1312_p3 = {{xor_ln386_20_fu_1302_p2}, {trunc_ln386_2_fu_1308_p1}};
assign xor_ln386_30_fu_1405_p2 = (bit_sel12_fu_1397_p3 ^ 1'd1);
assign xor_ln386_31_fu_1371_p2 = (bit_sel13_fu_1363_p3 ^ 1'd1);
assign xor_ln386_32_fu_1231_p2 = (bit_sel14_fu_1223_p3 ^ 1'd1);
assign xor_ln386_33_fu_1267_p2 = (bit_sel15_fu_1259_p3 ^ 1'd1);
assign xor_ln386_34_fu_1507_p2 = (bit_sel16_fu_1499_p3 ^ 1'd1);
assign xor_ln386_35_fu_1541_p2 = (bit_sel17_fu_1533_p3 ^ 1'd1);
assign xor_ln386_36_fu_1643_p2 = (bit_sel18_fu_1635_p3 ^ 1'd1);
assign xor_ln386_37_fu_1677_p2 = (bit_sel19_fu_1669_p3 ^ 1'd1);
assign xor_ln386_3_fu_1346_p3 = {{xor_ln386_21_fu_1336_p2}, {trunc_ln386_3_fu_1342_p1}};
assign xor_ln386_4_fu_1091_p3 = {{xor_ln386_22_fu_1081_p2}, {trunc_ln386_4_fu_1087_p1}};
assign xor_ln386_5_fu_1127_p3 = {{xor_ln386_23_fu_1117_p2}, {trunc_ln386_5_fu_1123_p1}};
assign xor_ln386_6_fu_1449_p3 = {{xor_ln386_24_fu_1439_p2}, {trunc_ln386_6_fu_1445_p1}};
assign xor_ln386_7_fu_1483_p3 = {{xor_ln386_25_fu_1473_p2}, {trunc_ln386_7_fu_1479_p1}};
assign xor_ln386_8_fu_1585_p3 = {{xor_ln386_26_fu_1575_p2}, {trunc_ln386_8_fu_1581_p1}};
assign xor_ln386_9_fu_1619_p3 = {{xor_ln386_27_fu_1609_p2}, {trunc_ln386_9_fu_1615_p1}};
assign xor_ln386_fu_1046_p2 = (bit_sel1_fu_1038_p3 ^ 1'd1);
assign xor_ln386_s_fu_1172_p3 = {{xor_ln386_28_fu_1162_p2}, {trunc_ln386_10_fu_1168_p1}};
assign xor_ln3_fu_1022_p3 = {{xor_ln386_19_fu_1012_p2}, {trunc_ln386_fu_1018_p1}};
assign zext_ln365_1_fu_1830_p1 = tid_5_reg_2026_pp0_iter5_reg;
assign zext_ln365_2_fu_1785_p1 = tid_5_reg_2026_pp0_iter5_reg;
assign zext_ln365_fu_895_p1 = ap_sig_allocacmp_tid_5;
assign zext_ln367_1_fu_959_p1 = or_ln1_fu_951_p3;
assign zext_ln367_2_fu_978_p1 = or_ln2_fu_971_p3;
assign zext_ln367_fu_917_p1 = shl_ln367_fu_911_p2;
assign zext_ln371_1_fu_993_p1 = or_ln371_1_fu_986_p3;
assign zext_ln371_fu_933_p1 = or_ln_fu_925_p3;
assign zext_ln390_1_fu_1816_p1 = add_ln390_fu_1810_p2;
assign zext_ln390_cast_fu_1700_p3 = {{1'd1}, {trunc_ln367_reg_2046_pp0_iter4_reg}};
assign zext_ln390_fu_1707_p1 = $unsigned(zext_ln390_cast_fu_1700_p3);
assign zext_ln391_1_cast_fu_1889_p4 = {{{{1'd1}, {tmp_22_fu_1880_p4}}}, {1'd1}};
assign zext_ln391_1_fu_1899_p1 = $unsigned(zext_ln391_1_cast_fu_1889_p4);
assign zext_ln391_cast_fu_1725_p3 = {{1'd1}, {tid_5_reg_2026_pp0_iter4_reg}};
assign zext_ln391_fu_1732_p1 = $unsigned(zext_ln391_cast_fu_1725_p3);
assign zext_ln392_1_fu_1918_p1 = add_ln392_fu_1913_p2;
assign zext_ln392_fu_1753_p1 = $unsigned(sext_ln392_fu_1750_p1);
assign zext_ln393_1_cast_fu_1935_p4 = {{{{1'd1}, {zext_ln393_1_fu_1932_p1}}}, {1'd1}};
assign zext_ln393_1_fu_1932_p1 = tmp_22_reg_3232;
assign zext_ln393_2_fu_1945_p1 = zext_ln393_1_cast_fu_1935_p4;
assign zext_ln393_cast_fu_1788_p3 = {{1'd1}, {zext_ln365_2_fu_1785_p1}};
assign zext_ln393_fu_1796_p1 = zext_ln393_cast_fu_1788_p3;
assign zext_ln394_1_fu_1964_p1 = add_ln394_1_fu_1959_p2;
assign zext_ln394_fu_1839_p1 = add_ln394_fu_1833_p2;
assign zext_ln395_1_fu_1981_p1 = $unsigned(sext_ln395_1_fu_1978_p1);
assign zext_ln395_fu_1766_p1 = $unsigned(sext_ln395_fu_1763_p1);
assign zext_ln396_1_fu_2004_p1 = $unsigned(sext_ln396_1_fu_2000_p1);
assign zext_ln396_fu_1852_p1 = $unsigned(sext_ln396_fu_1849_p1);
always @ (posedge ap_clk) begin
    zext_ln365_reg_2040[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_2040_pp0_iter1_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_2040_pp0_iter2_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_2040_pp0_iter3_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_2040_pp0_iter4_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln367_1_reg_2137[0] <= 1'b1;
    zext_ln367_1_reg_2137[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln367_1_reg_2137_pp0_iter1_reg[0] <= 1'b1;
    zext_ln367_1_reg_2137_pp0_iter1_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln367_1_reg_2137_pp0_iter2_reg[0] <= 1'b1;
    zext_ln367_1_reg_2137_pp0_iter2_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln367_1_reg_2137_pp0_iter3_reg[0] <= 1'b1;
    zext_ln367_1_reg_2137_pp0_iter3_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln367_1_reg_2137_pp0_iter4_reg[0] <= 1'b1;
    zext_ln367_1_reg_2137_pp0_iter4_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln367_1_reg_2137_pp0_iter5_reg[0] <= 1'b1;
    zext_ln367_1_reg_2137_pp0_iter5_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln390_cast_reg_3195[6] <= 1'b1;
    zext_ln391_cast_reg_3206[7] <= 1'b1;
    zext_ln365_1_reg_3226[8:7] <= 2'b00;
    zext_ln391_1_cast_reg_3237[0] <= 1'b1;
    zext_ln391_1_cast_reg_3237[7] <= 1'b1;
end
endmodule 