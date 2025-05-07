module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,llike_address0,llike_ce0,llike_we0,llike_d0,llike_1_address0,llike_1_ce0,llike_1_we0,llike_1_d0,llike_2_address0,llike_2_ce0,llike_2_we0,llike_2_d0,llike_3_address0,llike_3_ce0,llike_3_we0,llike_3_d0,llike_4_address0,llike_4_ce0,llike_4_we0,llike_4_d0,llike_5_address0,llike_5_ce0,llike_5_we0,llike_5_d0,llike_6_address0,llike_6_ce0,llike_6_we0,llike_6_d0,llike_7_address0,llike_7_ce0,llike_7_we0,llike_7_d0,init_0_address0,init_0_ce0,init_0_q0,init_0_address1,init_0_ce1,init_0_q1,empty_11,emission_0_address0,emission_0_ce0,emission_0_q0,emission_0_address1,emission_0_ce1,emission_0_q1,emission_1_address0,emission_1_ce0,emission_1_q0,emission_1_address1,emission_1_ce1,emission_1_q1,emission_2_address0,emission_2_ce0,emission_2_q0,emission_2_address1,emission_2_ce1,emission_2_q1,emission_3_address0,emission_3_ce0,emission_3_q0,emission_3_address1,emission_3_ce1,emission_3_q1,empty,conv3_udiv_cast,conv3_udiv,init_1_address0,init_1_ce0,init_1_q0,init_1_address1,init_1_ce1,init_1_q1,init_2_address0,init_2_ce0,init_2_q0,init_2_address1,init_2_ce1,init_2_q1,init_3_address0,init_3_ce0,init_3_q0,init_3_address1,init_3_ce1,init_3_q1,grp_fu_729_p_din0,grp_fu_729_p_din1,grp_fu_729_p_opcode,grp_fu_729_p_dout0,grp_fu_729_p_ce,grp_fu_1499_p_din0,grp_fu_1499_p_din1,grp_fu_1499_p_opcode,grp_fu_1499_p_dout0,grp_fu_1499_p_ce); 
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
output  [10:0] llike_address0;
output   llike_ce0;
output   llike_we0;
output  [63:0] llike_d0;
output  [10:0] llike_1_address0;
output   llike_1_ce0;
output   llike_1_we0;
output  [63:0] llike_1_d0;
output  [10:0] llike_2_address0;
output   llike_2_ce0;
output   llike_2_we0;
output  [63:0] llike_2_d0;
output  [10:0] llike_3_address0;
output   llike_3_ce0;
output   llike_3_we0;
output  [63:0] llike_3_d0;
output  [10:0] llike_4_address0;
output   llike_4_ce0;
output   llike_4_we0;
output  [63:0] llike_4_d0;
output  [10:0] llike_5_address0;
output   llike_5_ce0;
output   llike_5_we0;
output  [63:0] llike_5_d0;
output  [10:0] llike_6_address0;
output   llike_6_ce0;
output   llike_6_we0;
output  [63:0] llike_6_d0;
output  [10:0] llike_7_address0;
output   llike_7_ce0;
output   llike_7_we0;
output  [63:0] llike_7_d0;
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
input  [5:0] conv3_udiv_cast;
input  [5:0] conv3_udiv;
output  [3:0] init_1_address0;
output   init_1_ce0;
input  [63:0] init_1_q0;
output  [3:0] init_1_address1;
output   init_1_ce1;
input  [63:0] init_1_q1;
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
output  [63:0] grp_fu_729_p_din0;
output  [63:0] grp_fu_729_p_din1;
output  [1:0] grp_fu_729_p_opcode;
input  [63:0] grp_fu_729_p_dout0;
output   grp_fu_729_p_ce;
output  [63:0] grp_fu_1499_p_din0;
output  [63:0] grp_fu_1499_p_din1;
output  [1:0] grp_fu_1499_p_opcode;
input  [63:0] grp_fu_1499_p_dout0;
output   grp_fu_1499_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] tmp_76_reg_2335;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1064;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] reg_1068;
reg   [63:0] reg_1072;
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
reg   [63:0] reg_1080;
wire   [9:0] conv3_udiv_cast_cast_fu_1088_p1;
reg   [9:0] conv3_udiv_cast_cast_reg_2312;
reg   [6:0] s_1_reg_2327;
reg   [0:0] tmp_76_reg_2335_pp0_iter1_reg;
wire   [2:0] lshr_ln9_fu_1112_p4;
reg   [2:0] lshr_ln9_reg_2339;
reg   [2:0] lshr_ln9_reg_2339_pp0_iter1_reg;
wire   [3:0] lshr_ln9_1_fu_1122_p4;
reg   [3:0] lshr_ln9_1_reg_2347;
wire   [1:0] tmp_52_fu_1140_p4;
reg   [1:0] tmp_52_reg_2358;
reg   [1:0] tmp_52_reg_2358_pp0_iter1_reg;
wire   [63:0] tmp_fu_1230_p11;
reg   [63:0] tmp_reg_2449;
wire   [63:0] tmp_1_fu_1269_p11;
reg   [63:0] tmp_1_reg_2454;
wire   [0:0] tmp_78_fu_1332_p3;
reg   [0:0] tmp_78_reg_2499;
reg   [63:0] init_0_load_1_reg_2505;
reg   [63:0] init_1_load_1_reg_2520;
reg   [63:0] init_2_load_reg_2535;
reg   [63:0] init_2_load_1_reg_2540;
reg   [63:0] init_3_load_reg_2555;
reg   [63:0] init_3_load_1_reg_2560;
wire   [63:0] bitcast_ln14_fu_1371_p1;
wire   [63:0] tmp_2_fu_1392_p11;
reg   [63:0] tmp_2_reg_2580;
wire   [63:0] tmp_3_fu_1431_p11;
reg   [63:0] tmp_3_reg_2585;
wire   [0:0] tmp_77_fu_1470_p3;
reg   [0:0] tmp_77_reg_2610;
reg   [63:0] init_0_load_3_reg_2635;
wire   [63:0] bitcast_ln14_56_fu_1501_p1;
reg   [63:0] init_1_load_3_reg_2645;
reg   [63:0] init_2_load_2_reg_2650;
reg   [63:0] init_2_load_3_reg_2655;
reg   [63:0] init_3_load_2_reg_2660;
reg   [63:0] init_3_load_3_reg_2665;
wire   [63:0] tmp_4_fu_1522_p11;
reg   [63:0] tmp_4_reg_2670;
wire   [63:0] tmp_5_fu_1561_p11;
reg   [63:0] tmp_5_reg_2675;
wire   [63:0] bitcast_ln14_64_fu_1624_p1;
wire   [63:0] bitcast_ln14_72_fu_1628_p1;
wire   [63:0] tmp_6_fu_1648_p11;
reg   [63:0] tmp_6_reg_2730;
wire   [63:0] tmp_7_fu_1687_p11;
reg   [63:0] tmp_7_reg_2735;
wire   [63:0] bitcast_ln14_49_fu_1763_p1;
wire   [63:0] bitcast_ln14_57_fu_1767_p1;
wire   [63:0] tmp_8_fu_1787_p11;
reg   [63:0] tmp_8_reg_2790;
wire   [63:0] tmp_9_fu_1826_p11;
reg   [63:0] tmp_9_reg_2795;
wire   [63:0] bitcast_ln14_65_fu_1895_p1;
wire   [63:0] bitcast_ln14_73_fu_1899_p1;
wire   [63:0] tmp_s_fu_1919_p11;
reg   [63:0] tmp_s_reg_2850;
wire   [63:0] tmp_10_fu_1958_p11;
reg   [63:0] tmp_10_reg_2855;
wire   [63:0] bitcast_ln14_50_fu_1981_p1;
wire   [63:0] bitcast_ln14_58_fu_2002_p1;
wire   [63:0] tmp_11_fu_2046_p11;
reg   [63:0] tmp_11_reg_2910;
wire   [63:0] tmp_12_fu_2085_p11;
reg   [63:0] tmp_12_reg_2915;
wire   [63:0] bitcast_ln14_66_fu_2108_p1;
wire   [63:0] bitcast_ln14_74_fu_2132_p1;
wire   [63:0] bitcast_ln14_51_fu_2166_p1;
wire   [63:0] bitcast_ln14_59_fu_2170_p1;
wire   [63:0] tmp_13_fu_2190_p11;
reg   [63:0] tmp_13_reg_2980;
wire   [63:0] tmp_14_fu_2229_p11;
reg   [63:0] tmp_14_reg_2985;
wire   [63:0] bitcast_ln14_67_fu_2252_p1;
wire   [63:0] bitcast_ln14_75_fu_2256_p1;
wire   [63:0] zext_ln9_fu_2260_p1;
reg   [63:0] zext_ln9_reg_3000;
wire   [63:0] zext_ln14_17_fu_2272_p1;
reg   [63:0] zext_ln14_17_reg_3010;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln9_1_fu_1132_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_1158_p1;
wire   [63:0] zext_ln14_1_fu_1190_p1;
wire   [63:0] zext_ln14_16_fu_1206_p1;
wire   [63:0] zext_ln14_2_fu_1304_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_3_fu_1324_p1;
wire   [63:0] zext_ln14_18_fu_1348_p1;
wire   [63:0] zext_ln14_20_fu_1363_p1;
wire   [63:0] zext_ln14_4_fu_1462_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_5_fu_1493_p1;
wire   [63:0] zext_ln14_6_fu_1596_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_7_fu_1616_p1;
wire   [63:0] zext_ln14_8_fu_1722_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln14_9_fu_1755_p1;
wire   [63:0] zext_ln14_10_fu_1864_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln14_11_fu_1887_p1;
wire   [63:0] zext_ln14_12_fu_1994_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln14_13_fu_2022_p1;
wire   [63:0] zext_ln14_14_fu_2124_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln14_15_fu_2148_p1;
reg   [6:0] s_fu_148;
wire   [6:0] add_ln13_fu_2156_p2;
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
reg    llike_we0_local;
reg    llike_ce0_local;
reg   [10:0] llike_address0_local;
reg    llike_1_we0_local;
reg    llike_1_ce0_local;
reg   [10:0] llike_1_address0_local;
reg    llike_2_we0_local;
reg    llike_2_ce0_local;
reg   [10:0] llike_2_address0_local;
reg    llike_3_we0_local;
reg    llike_3_ce0_local;
reg   [10:0] llike_3_address0_local;
reg    llike_4_we0_local;
reg    llike_4_ce0_local;
reg   [10:0] llike_4_address0_local;
reg    llike_5_we0_local;
reg    llike_5_ce0_local;
reg   [10:0] llike_5_address0_local;
reg    llike_6_we0_local;
reg    llike_6_ce0_local;
reg   [10:0] llike_6_address0_local;
reg    llike_7_we0_local;
reg    llike_7_ce0_local;
reg   [10:0] llike_7_address0_local;
reg   [63:0] grp_fu_1056_p0;
reg   [63:0] grp_fu_1056_p1;
reg   [63:0] grp_fu_1060_p0;
reg   [63:0] grp_fu_1060_p1;
wire   [7:0] p_cast_fu_1092_p1;
wire   [9:0] or_ln_fu_1150_p3;
wire   [4:0] tmp_101_fu_1166_p4;
wire   [9:0] or_ln1_fu_1176_p3;
wire   [9:0] add_ln14_fu_1184_p2;
wire   [3:0] or_ln14_3_fu_1198_p3;
wire   [63:0] tmp_fu_1230_p2;
wire   [63:0] tmp_fu_1230_p4;
wire   [63:0] tmp_fu_1230_p6;
wire   [63:0] tmp_fu_1230_p8;
wire   [63:0] tmp_fu_1230_p9;
wire   [63:0] tmp_1_fu_1269_p2;
wire   [63:0] tmp_1_fu_1269_p4;
wire   [63:0] tmp_1_fu_1269_p6;
wire   [63:0] tmp_1_fu_1269_p8;
wire   [63:0] tmp_1_fu_1269_p9;
wire   [9:0] or_ln14_1_fu_1292_p3;
wire   [9:0] add_ln14_1_fu_1299_p2;
wire   [9:0] or_ln14_2_fu_1312_p3;
wire   [9:0] add_ln14_2_fu_1319_p2;
wire   [3:0] or_ln14_9_fu_1339_p4;
wire   [3:0] or_ln14_13_fu_1356_p3;
wire   [63:0] tmp_2_fu_1392_p2;
wire   [63:0] tmp_2_fu_1392_p4;
wire   [63:0] tmp_2_fu_1392_p6;
wire   [63:0] tmp_2_fu_1392_p8;
wire   [63:0] tmp_2_fu_1392_p9;
wire   [63:0] tmp_3_fu_1431_p2;
wire   [63:0] tmp_3_fu_1431_p4;
wire   [63:0] tmp_3_fu_1431_p6;
wire   [63:0] tmp_3_fu_1431_p8;
wire   [63:0] tmp_3_fu_1431_p9;
wire   [9:0] or_ln14_4_fu_1454_p4;
wire   [9:0] or_ln14_5_fu_1477_p5;
wire   [9:0] add_ln14_3_fu_1488_p2;
wire   [63:0] tmp_4_fu_1522_p2;
wire   [63:0] tmp_4_fu_1522_p4;
wire   [63:0] tmp_4_fu_1522_p6;
wire   [63:0] tmp_4_fu_1522_p8;
wire   [63:0] tmp_4_fu_1522_p9;
wire   [63:0] tmp_5_fu_1561_p2;
wire   [63:0] tmp_5_fu_1561_p4;
wire   [63:0] tmp_5_fu_1561_p6;
wire   [63:0] tmp_5_fu_1561_p8;
wire   [63:0] tmp_5_fu_1561_p9;
wire   [9:0] or_ln14_6_fu_1584_p3;
wire   [9:0] add_ln14_4_fu_1591_p2;
wire   [9:0] or_ln14_7_fu_1604_p3;
wire   [9:0] add_ln14_5_fu_1611_p2;
wire   [63:0] tmp_6_fu_1648_p2;
wire   [63:0] tmp_6_fu_1648_p4;
wire   [63:0] tmp_6_fu_1648_p6;
wire   [63:0] tmp_6_fu_1648_p8;
wire   [63:0] tmp_6_fu_1648_p9;
wire   [63:0] tmp_7_fu_1687_p2;
wire   [63:0] tmp_7_fu_1687_p4;
wire   [63:0] tmp_7_fu_1687_p6;
wire   [63:0] tmp_7_fu_1687_p8;
wire   [63:0] tmp_7_fu_1687_p9;
wire   [6:0] zext_ln14_19_fu_1710_p1;
wire   [9:0] or_ln14_s_fu_1713_p4;
wire   [1:0] tmp_137_fu_1730_p4;
wire   [9:0] or_ln14_10_fu_1739_p5;
wire   [9:0] add_ln14_6_fu_1750_p2;
wire   [63:0] tmp_8_fu_1787_p2;
wire   [63:0] tmp_8_fu_1787_p4;
wire   [63:0] tmp_8_fu_1787_p6;
wire   [63:0] tmp_8_fu_1787_p8;
wire   [63:0] tmp_8_fu_1787_p9;
wire   [63:0] tmp_9_fu_1826_p2;
wire   [63:0] tmp_9_fu_1826_p4;
wire   [63:0] tmp_9_fu_1826_p6;
wire   [63:0] tmp_9_fu_1826_p8;
wire   [63:0] tmp_9_fu_1826_p9;
wire   [9:0] or_ln14_11_fu_1849_p5;
wire   [9:0] add_ln14_7_fu_1859_p2;
wire   [9:0] or_ln14_12_fu_1872_p5;
wire   [9:0] add_ln14_8_fu_1882_p2;
wire   [63:0] tmp_s_fu_1919_p2;
wire   [63:0] tmp_s_fu_1919_p4;
wire   [63:0] tmp_s_fu_1919_p6;
wire   [63:0] tmp_s_fu_1919_p8;
wire   [63:0] tmp_s_fu_1919_p9;
wire   [63:0] tmp_10_fu_1958_p2;
wire   [63:0] tmp_10_fu_1958_p4;
wire   [63:0] tmp_10_fu_1958_p6;
wire   [63:0] tmp_10_fu_1958_p8;
wire   [63:0] tmp_10_fu_1958_p9;
wire   [9:0] or_ln14_14_fu_1986_p4;
wire   [9:0] or_ln14_15_fu_2007_p5;
wire   [9:0] add_ln14_9_fu_2017_p2;
wire   [63:0] tmp_11_fu_2046_p2;
wire   [63:0] tmp_11_fu_2046_p4;
wire   [63:0] tmp_11_fu_2046_p6;
wire   [63:0] tmp_11_fu_2046_p8;
wire   [63:0] tmp_11_fu_2046_p9;
wire   [63:0] tmp_12_fu_2085_p2;
wire   [63:0] tmp_12_fu_2085_p4;
wire   [63:0] tmp_12_fu_2085_p6;
wire   [63:0] tmp_12_fu_2085_p8;
wire   [63:0] tmp_12_fu_2085_p9;
wire   [9:0] or_ln14_16_fu_2112_p3;
wire   [9:0] add_ln14_10_fu_2119_p2;
wire   [9:0] or_ln14_17_fu_2136_p3;
wire   [9:0] add_ln14_11_fu_2143_p2;
wire   [63:0] tmp_13_fu_2190_p2;
wire   [63:0] tmp_13_fu_2190_p4;
wire   [63:0] tmp_13_fu_2190_p6;
wire   [63:0] tmp_13_fu_2190_p8;
wire   [63:0] tmp_13_fu_2190_p9;
wire   [63:0] tmp_14_fu_2229_p2;
wire   [63:0] tmp_14_fu_2229_p4;
wire   [63:0] tmp_14_fu_2229_p6;
wire   [63:0] tmp_14_fu_2229_p8;
wire   [63:0] tmp_14_fu_2229_p9;
wire   [2:0] or_ln14_8_fu_2265_p3;
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
wire   [1:0] tmp_fu_1230_p1;
wire   [1:0] tmp_fu_1230_p3;
wire  signed [1:0] tmp_fu_1230_p5;
wire  signed [1:0] tmp_fu_1230_p7;
wire   [1:0] tmp_1_fu_1269_p1;
wire   [1:0] tmp_1_fu_1269_p3;
wire  signed [1:0] tmp_1_fu_1269_p5;
wire  signed [1:0] tmp_1_fu_1269_p7;
wire   [1:0] tmp_2_fu_1392_p1;
wire   [1:0] tmp_2_fu_1392_p3;
wire  signed [1:0] tmp_2_fu_1392_p5;
wire  signed [1:0] tmp_2_fu_1392_p7;
wire   [1:0] tmp_3_fu_1431_p1;
wire   [1:0] tmp_3_fu_1431_p3;
wire  signed [1:0] tmp_3_fu_1431_p5;
wire  signed [1:0] tmp_3_fu_1431_p7;
wire   [1:0] tmp_4_fu_1522_p1;
wire   [1:0] tmp_4_fu_1522_p3;
wire  signed [1:0] tmp_4_fu_1522_p5;
wire  signed [1:0] tmp_4_fu_1522_p7;
wire   [1:0] tmp_5_fu_1561_p1;
wire   [1:0] tmp_5_fu_1561_p3;
wire  signed [1:0] tmp_5_fu_1561_p5;
wire  signed [1:0] tmp_5_fu_1561_p7;
wire   [1:0] tmp_6_fu_1648_p1;
wire   [1:0] tmp_6_fu_1648_p3;
wire  signed [1:0] tmp_6_fu_1648_p5;
wire  signed [1:0] tmp_6_fu_1648_p7;
wire   [1:0] tmp_7_fu_1687_p1;
wire   [1:0] tmp_7_fu_1687_p3;
wire  signed [1:0] tmp_7_fu_1687_p5;
wire  signed [1:0] tmp_7_fu_1687_p7;
wire   [1:0] tmp_8_fu_1787_p1;
wire   [1:0] tmp_8_fu_1787_p3;
wire  signed [1:0] tmp_8_fu_1787_p5;
wire  signed [1:0] tmp_8_fu_1787_p7;
wire   [1:0] tmp_9_fu_1826_p1;
wire   [1:0] tmp_9_fu_1826_p3;
wire  signed [1:0] tmp_9_fu_1826_p5;
wire  signed [1:0] tmp_9_fu_1826_p7;
wire   [1:0] tmp_s_fu_1919_p1;
wire   [1:0] tmp_s_fu_1919_p3;
wire  signed [1:0] tmp_s_fu_1919_p5;
wire  signed [1:0] tmp_s_fu_1919_p7;
wire   [1:0] tmp_10_fu_1958_p1;
wire   [1:0] tmp_10_fu_1958_p3;
wire  signed [1:0] tmp_10_fu_1958_p5;
wire  signed [1:0] tmp_10_fu_1958_p7;
wire   [1:0] tmp_11_fu_2046_p1;
wire   [1:0] tmp_11_fu_2046_p3;
wire  signed [1:0] tmp_11_fu_2046_p5;
wire  signed [1:0] tmp_11_fu_2046_p7;
wire   [1:0] tmp_12_fu_2085_p1;
wire   [1:0] tmp_12_fu_2085_p3;
wire  signed [1:0] tmp_12_fu_2085_p5;
wire  signed [1:0] tmp_12_fu_2085_p7;
wire   [1:0] tmp_13_fu_2190_p1;
wire   [1:0] tmp_13_fu_2190_p3;
wire  signed [1:0] tmp_13_fu_2190_p5;
wire  signed [1:0] tmp_13_fu_2190_p7;
wire   [1:0] tmp_14_fu_2229_p1;
wire   [1:0] tmp_14_fu_2229_p3;
wire  signed [1:0] tmp_14_fu_2229_p5;
wire  signed [1:0] tmp_14_fu_2229_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 s_fu_148 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U3(.din0(tmp_fu_1230_p2),.din1(tmp_fu_1230_p4),.din2(tmp_fu_1230_p6),.din3(tmp_fu_1230_p8),.def(tmp_fu_1230_p9),.sel(empty),.dout(tmp_fu_1230_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U4(.din0(tmp_1_fu_1269_p2),.din1(tmp_1_fu_1269_p4),.din2(tmp_1_fu_1269_p6),.din3(tmp_1_fu_1269_p8),.def(tmp_1_fu_1269_p9),.sel(empty),.dout(tmp_1_fu_1269_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U5(.din0(tmp_2_fu_1392_p2),.din1(tmp_2_fu_1392_p4),.din2(tmp_2_fu_1392_p6),.din3(tmp_2_fu_1392_p8),.def(tmp_2_fu_1392_p9),.sel(empty),.dout(tmp_2_fu_1392_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U6(.din0(tmp_3_fu_1431_p2),.din1(tmp_3_fu_1431_p4),.din2(tmp_3_fu_1431_p6),.din3(tmp_3_fu_1431_p8),.def(tmp_3_fu_1431_p9),.sel(empty),.dout(tmp_3_fu_1431_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U7(.din0(tmp_4_fu_1522_p2),.din1(tmp_4_fu_1522_p4),.din2(tmp_4_fu_1522_p6),.din3(tmp_4_fu_1522_p8),.def(tmp_4_fu_1522_p9),.sel(empty),.dout(tmp_4_fu_1522_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U8(.din0(tmp_5_fu_1561_p2),.din1(tmp_5_fu_1561_p4),.din2(tmp_5_fu_1561_p6),.din3(tmp_5_fu_1561_p8),.def(tmp_5_fu_1561_p9),.sel(empty),.dout(tmp_5_fu_1561_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U9(.din0(tmp_6_fu_1648_p2),.din1(tmp_6_fu_1648_p4),.din2(tmp_6_fu_1648_p6),.din3(tmp_6_fu_1648_p8),.def(tmp_6_fu_1648_p9),.sel(empty),.dout(tmp_6_fu_1648_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U10(.din0(tmp_7_fu_1687_p2),.din1(tmp_7_fu_1687_p4),.din2(tmp_7_fu_1687_p6),.din3(tmp_7_fu_1687_p8),.def(tmp_7_fu_1687_p9),.sel(empty),.dout(tmp_7_fu_1687_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U11(.din0(tmp_8_fu_1787_p2),.din1(tmp_8_fu_1787_p4),.din2(tmp_8_fu_1787_p6),.din3(tmp_8_fu_1787_p8),.def(tmp_8_fu_1787_p9),.sel(empty),.dout(tmp_8_fu_1787_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U12(.din0(tmp_9_fu_1826_p2),.din1(tmp_9_fu_1826_p4),.din2(tmp_9_fu_1826_p6),.din3(tmp_9_fu_1826_p8),.def(tmp_9_fu_1826_p9),.sel(empty),.dout(tmp_9_fu_1826_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U13(.din0(tmp_s_fu_1919_p2),.din1(tmp_s_fu_1919_p4),.din2(tmp_s_fu_1919_p6),.din3(tmp_s_fu_1919_p8),.def(tmp_s_fu_1919_p9),.sel(empty),.dout(tmp_s_fu_1919_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U14(.din0(tmp_10_fu_1958_p2),.din1(tmp_10_fu_1958_p4),.din2(tmp_10_fu_1958_p6),.din3(tmp_10_fu_1958_p8),.def(tmp_10_fu_1958_p9),.sel(empty),.dout(tmp_10_fu_1958_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U15(.din0(tmp_11_fu_2046_p2),.din1(tmp_11_fu_2046_p4),.din2(tmp_11_fu_2046_p6),.din3(tmp_11_fu_2046_p8),.def(tmp_11_fu_2046_p9),.sel(empty),.dout(tmp_11_fu_2046_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U16(.din0(tmp_12_fu_2085_p2),.din1(tmp_12_fu_2085_p4),.din2(tmp_12_fu_2085_p6),.din3(tmp_12_fu_2085_p8),.def(tmp_12_fu_2085_p9),.sel(empty),.dout(tmp_12_fu_2085_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U17(.din0(tmp_13_fu_2190_p2),.din1(tmp_13_fu_2190_p4),.din2(tmp_13_fu_2190_p6),.din3(tmp_13_fu_2190_p8),.def(tmp_13_fu_2190_p9),.sel(empty),.dout(tmp_13_fu_2190_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U18(.din0(tmp_14_fu_2229_p2),.din1(tmp_14_fu_2229_p4),.din2(tmp_14_fu_2229_p6),.din3(tmp_14_fu_2229_p8),.def(tmp_14_fu_2229_p9),.sel(empty),.dout(tmp_14_fu_2229_p11));
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
        s_fu_148 <= 7'd0;
    end else if (((tmp_76_reg_2335 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        s_fu_148 <= add_ln13_fu_2156_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        conv3_udiv_cast_cast_reg_2312[5 : 0] <= conv3_udiv_cast_cast_fu_1088_p1[5 : 0];
        lshr_ln9_1_reg_2347 <= {{ap_sig_allocacmp_s_1[5:2]}};
        lshr_ln9_reg_2339 <= {{ap_sig_allocacmp_s_1[5:3]}};
        lshr_ln9_reg_2339_pp0_iter1_reg <= lshr_ln9_reg_2339;
        s_1_reg_2327 <= ap_sig_allocacmp_s_1;
        tmp_13_reg_2980 <= tmp_13_fu_2190_p11;
        tmp_14_reg_2985 <= tmp_14_fu_2229_p11;
        tmp_52_reg_2358 <= {{ap_sig_allocacmp_s_1[5:4]}};
        tmp_52_reg_2358_pp0_iter1_reg <= tmp_52_reg_2358;
        tmp_76_reg_2335 <= ap_sig_allocacmp_s_1[32'd6];
        tmp_76_reg_2335_pp0_iter1_reg <= tmp_76_reg_2335;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        init_0_load_1_reg_2505 <= init_0_q0;
        init_1_load_1_reg_2520 <= init_1_q0;
        init_2_load_1_reg_2540 <= init_2_q0;
        init_2_load_reg_2535 <= init_2_q1;
        init_3_load_1_reg_2560 <= init_3_q0;
        init_3_load_reg_2555 <= init_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        init_0_load_3_reg_2635 <= init_0_q0;
        init_1_load_3_reg_2645 <= init_1_q0;
        init_2_load_2_reg_2650 <= init_2_q1;
        init_2_load_3_reg_2655 <= init_2_q0;
        init_3_load_2_reg_2660 <= init_3_q1;
        init_3_load_3_reg_2665 <= init_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1064 <= init_0_q1;
        reg_1068 <= init_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1072 <= grp_fu_729_p_dout0;
        reg_1080 <= grp_fu_1499_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp_10_reg_2855 <= tmp_10_fu_1958_p11;
        tmp_s_reg_2850 <= tmp_s_fu_1919_p11;
        zext_ln14_17_reg_3010[2 : 1] <= zext_ln14_17_fu_2272_p1[2 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        tmp_11_reg_2910 <= tmp_11_fu_2046_p11;
        tmp_12_reg_2915 <= tmp_12_fu_2085_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_1_reg_2454 <= tmp_1_fu_1269_p11;
        tmp_78_reg_2499 <= s_1_reg_2327[32'd2];
        tmp_reg_2449 <= tmp_fu_1230_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_2_reg_2580 <= tmp_2_fu_1392_p11;
        tmp_3_reg_2585 <= tmp_3_fu_1431_p11;
        tmp_77_reg_2610 <= s_1_reg_2327[32'd1];
        zext_ln9_reg_3000[2 : 0] <= zext_ln9_fu_2260_p1[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_4_reg_2670 <= tmp_4_fu_1522_p11;
        tmp_5_reg_2675 <= tmp_5_fu_1561_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_6_reg_2730 <= tmp_6_fu_1648_p11;
        tmp_7_reg_2735 <= tmp_7_fu_1687_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_8_reg_2790 <= tmp_8_fu_1787_p11;
        tmp_9_reg_2795 <= tmp_9_fu_1826_p11;
    end
end
always @ (*) begin
    if (((tmp_76_reg_2335 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_76_reg_2335_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_s_1 = s_fu_148;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_0_address0_local = zext_ln14_15_fu_2148_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_0_address0_local = zext_ln14_13_fu_2022_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_0_address0_local = zext_ln14_11_fu_1887_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_0_address0_local = zext_ln14_9_fu_1755_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address0_local = zext_ln14_7_fu_1616_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address0_local = zext_ln14_5_fu_1493_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address0_local = zext_ln14_3_fu_1324_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address0_local = zext_ln14_1_fu_1190_p1;
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
            emission_0_address1_local = zext_ln14_14_fu_2124_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_0_address1_local = zext_ln14_12_fu_1994_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_0_address1_local = zext_ln14_10_fu_1864_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_0_address1_local = zext_ln14_8_fu_1722_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address1_local = zext_ln14_6_fu_1596_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address1_local = zext_ln14_4_fu_1462_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address1_local = zext_ln14_2_fu_1304_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address1_local = zext_ln14_fu_1158_p1;
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
            emission_1_address0_local = zext_ln14_15_fu_2148_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_1_address0_local = zext_ln14_13_fu_2022_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_1_address0_local = zext_ln14_11_fu_1887_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_1_address0_local = zext_ln14_9_fu_1755_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_1_address0_local = zext_ln14_7_fu_1616_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address0_local = zext_ln14_5_fu_1493_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address0_local = zext_ln14_3_fu_1324_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address0_local = zext_ln14_1_fu_1190_p1;
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
            emission_1_address1_local = zext_ln14_14_fu_2124_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_1_address1_local = zext_ln14_12_fu_1994_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_1_address1_local = zext_ln14_10_fu_1864_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_1_address1_local = zext_ln14_8_fu_1722_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_1_address1_local = zext_ln14_6_fu_1596_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address1_local = zext_ln14_4_fu_1462_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address1_local = zext_ln14_2_fu_1304_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address1_local = zext_ln14_fu_1158_p1;
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
            emission_2_address0_local = zext_ln14_15_fu_2148_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_2_address0_local = zext_ln14_13_fu_2022_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_2_address0_local = zext_ln14_11_fu_1887_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_2_address0_local = zext_ln14_9_fu_1755_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_2_address0_local = zext_ln14_7_fu_1616_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_2_address0_local = zext_ln14_5_fu_1493_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_2_address0_local = zext_ln14_3_fu_1324_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_2_address0_local = zext_ln14_1_fu_1190_p1;
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
            emission_2_address1_local = zext_ln14_14_fu_2124_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_2_address1_local = zext_ln14_12_fu_1994_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_2_address1_local = zext_ln14_10_fu_1864_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_2_address1_local = zext_ln14_8_fu_1722_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_2_address1_local = zext_ln14_6_fu_1596_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_2_address1_local = zext_ln14_4_fu_1462_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_2_address1_local = zext_ln14_2_fu_1304_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_2_address1_local = zext_ln14_fu_1158_p1;
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
            emission_3_address0_local = zext_ln14_15_fu_2148_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_3_address0_local = zext_ln14_13_fu_2022_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_3_address0_local = zext_ln14_11_fu_1887_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_3_address0_local = zext_ln14_9_fu_1755_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_3_address0_local = zext_ln14_7_fu_1616_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_3_address0_local = zext_ln14_5_fu_1493_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_3_address0_local = zext_ln14_3_fu_1324_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_3_address0_local = zext_ln14_1_fu_1190_p1;
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
            emission_3_address1_local = zext_ln14_14_fu_2124_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_3_address1_local = zext_ln14_12_fu_1994_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_3_address1_local = zext_ln14_10_fu_1864_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_3_address1_local = zext_ln14_8_fu_1722_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_3_address1_local = zext_ln14_6_fu_1596_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_3_address1_local = zext_ln14_4_fu_1462_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_3_address1_local = zext_ln14_2_fu_1304_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_3_address1_local = zext_ln14_fu_1158_p1;
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
        grp_fu_1056_p0 = bitcast_ln14_67_fu_2252_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1056_p0 = bitcast_ln14_51_fu_2166_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1056_p0 = bitcast_ln14_66_fu_2108_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1056_p0 = bitcast_ln14_50_fu_1981_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1056_p0 = bitcast_ln14_65_fu_1895_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1056_p0 = bitcast_ln14_49_fu_1763_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1056_p0 = bitcast_ln14_64_fu_1624_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1056_p0 = bitcast_ln14_fu_1371_p1;
    end else begin
        grp_fu_1056_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1056_p1 = tmp_13_reg_2980;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1056_p1 = tmp_11_reg_2910;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1056_p1 = tmp_s_reg_2850;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1056_p1 = tmp_8_reg_2790;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1056_p1 = tmp_6_reg_2730;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1056_p1 = tmp_4_reg_2670;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1056_p1 = tmp_2_reg_2580;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1056_p1 = tmp_reg_2449;
    end else begin
        grp_fu_1056_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1060_p0 = bitcast_ln14_75_fu_2256_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1060_p0 = bitcast_ln14_59_fu_2170_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1060_p0 = bitcast_ln14_74_fu_2132_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1060_p0 = bitcast_ln14_58_fu_2002_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1060_p0 = bitcast_ln14_73_fu_1899_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1060_p0 = bitcast_ln14_57_fu_1767_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1060_p0 = bitcast_ln14_72_fu_1628_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1060_p0 = bitcast_ln14_56_fu_1501_p1;
    end else begin
        grp_fu_1060_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1060_p1 = tmp_14_reg_2985;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1060_p1 = tmp_12_reg_2915;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1060_p1 = tmp_10_reg_2855;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1060_p1 = tmp_9_reg_2795;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1060_p1 = tmp_7_reg_2735;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1060_p1 = tmp_5_reg_2675;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1060_p1 = tmp_3_reg_2585;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1060_p1 = tmp_1_reg_2454;
    end else begin
        grp_fu_1060_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_0_address0_local = zext_ln14_20_fu_1363_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_0_address0_local = zext_ln14_16_fu_1206_p1;
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
            init_0_address1_local = zext_ln14_18_fu_1348_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_0_address1_local = zext_ln9_1_fu_1132_p1;
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
            init_1_address0_local = zext_ln14_20_fu_1363_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_1_address0_local = zext_ln14_16_fu_1206_p1;
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
            init_1_address1_local = zext_ln14_18_fu_1348_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_1_address1_local = zext_ln9_1_fu_1132_p1;
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
            init_2_address0_local = zext_ln14_20_fu_1363_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_2_address0_local = zext_ln14_16_fu_1206_p1;
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
            init_2_address1_local = zext_ln14_18_fu_1348_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_2_address1_local = zext_ln9_1_fu_1132_p1;
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
            init_3_address0_local = zext_ln14_20_fu_1363_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_3_address0_local = zext_ln14_16_fu_1206_p1;
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
            init_3_address1_local = zext_ln14_18_fu_1348_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_3_address1_local = zext_ln9_1_fu_1132_p1;
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
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            llike_1_address0_local = zext_ln14_17_fu_2272_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            llike_1_address0_local = zext_ln9_fu_2260_p1;
        end else begin
            llike_1_address0_local = 'bx;
        end
    end else begin
        llike_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        llike_1_we0_local = 1'b1;
    end else begin
        llike_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            llike_2_address0_local = zext_ln14_17_reg_3010;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            llike_2_address0_local = zext_ln9_reg_3000;
        end else begin
            llike_2_address0_local = 'bx;
        end
    end else begin
        llike_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        llike_2_we0_local = 1'b1;
    end else begin
        llike_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            llike_3_address0_local = zext_ln14_17_reg_3010;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            llike_3_address0_local = zext_ln9_reg_3000;
        end else begin
            llike_3_address0_local = 'bx;
        end
    end else begin
        llike_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        llike_3_we0_local = 1'b1;
    end else begin
        llike_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_4_address0_local = zext_ln14_17_reg_3010;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_4_address0_local = zext_ln9_reg_3000;
    end else begin
        llike_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        llike_4_ce0_local = 1'b1;
    end else begin
        llike_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        llike_4_we0_local = 1'b1;
    end else begin
        llike_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_5_address0_local = zext_ln14_17_reg_3010;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_5_address0_local = zext_ln9_reg_3000;
    end else begin
        llike_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        llike_5_ce0_local = 1'b1;
    end else begin
        llike_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        llike_5_we0_local = 1'b1;
    end else begin
        llike_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_6_address0_local = zext_ln14_17_reg_3010;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_6_address0_local = zext_ln9_reg_3000;
    end else begin
        llike_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_6_ce0_local = 1'b1;
    end else begin
        llike_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_6_we0_local = 1'b1;
    end else begin
        llike_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_7_address0_local = zext_ln14_17_reg_3010;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_7_address0_local = zext_ln9_reg_3000;
    end else begin
        llike_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_7_ce0_local = 1'b1;
    end else begin
        llike_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_7_we0_local = 1'b1;
    end else begin
        llike_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            llike_address0_local = zext_ln14_17_fu_2272_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            llike_address0_local = zext_ln9_fu_2260_p1;
        end else begin
            llike_address0_local = 'bx;
        end
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        llike_we0_local = 1'b1;
    end else begin
        llike_we0_local = 1'b0;
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
assign add_ln13_fu_2156_p2 = (s_1_reg_2327 + 7'd16);
assign add_ln14_10_fu_2119_p2 = (or_ln14_16_fu_2112_p3 + conv3_udiv_cast_cast_reg_2312);
assign add_ln14_11_fu_2143_p2 = (or_ln14_17_fu_2136_p3 + conv3_udiv_cast_cast_reg_2312);
assign add_ln14_1_fu_1299_p2 = (or_ln14_1_fu_1292_p3 + conv3_udiv_cast_cast_reg_2312);
assign add_ln14_2_fu_1319_p2 = (or_ln14_2_fu_1312_p3 + conv3_udiv_cast_cast_reg_2312);
assign add_ln14_3_fu_1488_p2 = (or_ln14_5_fu_1477_p5 + conv3_udiv_cast_cast_reg_2312);
assign add_ln14_4_fu_1591_p2 = (or_ln14_6_fu_1584_p3 + conv3_udiv_cast_cast_reg_2312);
assign add_ln14_5_fu_1611_p2 = (or_ln14_7_fu_1604_p3 + conv3_udiv_cast_cast_reg_2312);
assign add_ln14_6_fu_1750_p2 = (or_ln14_10_fu_1739_p5 + conv3_udiv_cast_cast_reg_2312);
assign add_ln14_7_fu_1859_p2 = (or_ln14_11_fu_1849_p5 + conv3_udiv_cast_cast_reg_2312);
assign add_ln14_8_fu_1882_p2 = (or_ln14_12_fu_1872_p5 + conv3_udiv_cast_cast_reg_2312);
assign add_ln14_9_fu_2017_p2 = (or_ln14_15_fu_2007_p5 + conv3_udiv_cast_cast_reg_2312);
assign add_ln14_fu_1184_p2 = (or_ln1_fu_1176_p3 + conv3_udiv_cast_cast_fu_1088_p1);
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
assign bitcast_ln14_49_fu_1763_p1 = init_0_load_1_reg_2505;
assign bitcast_ln14_50_fu_1981_p1 = reg_1064;
assign bitcast_ln14_51_fu_2166_p1 = init_0_load_3_reg_2635;
assign bitcast_ln14_56_fu_1501_p1 = reg_1068;
assign bitcast_ln14_57_fu_1767_p1 = init_1_load_1_reg_2520;
assign bitcast_ln14_58_fu_2002_p1 = reg_1068;
assign bitcast_ln14_59_fu_2170_p1 = init_1_load_3_reg_2645;
assign bitcast_ln14_64_fu_1624_p1 = init_2_load_reg_2535;
assign bitcast_ln14_65_fu_1895_p1 = init_2_load_1_reg_2540;
assign bitcast_ln14_66_fu_2108_p1 = init_2_load_2_reg_2650;
assign bitcast_ln14_67_fu_2252_p1 = init_2_load_3_reg_2655;
assign bitcast_ln14_72_fu_1628_p1 = init_3_load_reg_2555;
assign bitcast_ln14_73_fu_1899_p1 = init_3_load_1_reg_2560;
assign bitcast_ln14_74_fu_2132_p1 = init_3_load_2_reg_2660;
assign bitcast_ln14_75_fu_2256_p1 = init_3_load_3_reg_2665;
assign bitcast_ln14_fu_1371_p1 = reg_1064;
assign conv3_udiv_cast_cast_fu_1088_p1 = conv3_udiv_cast;
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
assign grp_fu_1499_p_ce = 1'b1;
assign grp_fu_1499_p_din0 = grp_fu_1060_p0;
assign grp_fu_1499_p_din1 = grp_fu_1060_p1;
assign grp_fu_1499_p_opcode = 2'd0;
assign grp_fu_729_p_ce = 1'b1;
assign grp_fu_729_p_din0 = grp_fu_1056_p0;
assign grp_fu_729_p_din1 = grp_fu_1056_p1;
assign grp_fu_729_p_opcode = 2'd0;
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
assign llike_1_address0 = llike_1_address0_local;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_d0 = reg_1080;
assign llike_1_we0 = llike_1_we0_local;
assign llike_2_address0 = llike_2_address0_local;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_2_d0 = reg_1072;
assign llike_2_we0 = llike_2_we0_local;
assign llike_3_address0 = llike_3_address0_local;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_3_d0 = reg_1080;
assign llike_3_we0 = llike_3_we0_local;
assign llike_4_address0 = llike_4_address0_local;
assign llike_4_ce0 = llike_4_ce0_local;
assign llike_4_d0 = reg_1072;
assign llike_4_we0 = llike_4_we0_local;
assign llike_5_address0 = llike_5_address0_local;
assign llike_5_ce0 = llike_5_ce0_local;
assign llike_5_d0 = reg_1080;
assign llike_5_we0 = llike_5_we0_local;
assign llike_6_address0 = llike_6_address0_local;
assign llike_6_ce0 = llike_6_ce0_local;
assign llike_6_d0 = reg_1072;
assign llike_6_we0 = llike_6_we0_local;
assign llike_7_address0 = llike_7_address0_local;
assign llike_7_ce0 = llike_7_ce0_local;
assign llike_7_d0 = reg_1080;
assign llike_7_we0 = llike_7_we0_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign llike_d0 = reg_1072;
assign llike_we0 = llike_we0_local;
assign lshr_ln9_1_fu_1122_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign lshr_ln9_fu_1112_p4 = {{ap_sig_allocacmp_s_1[5:3]}};
assign or_ln14_10_fu_1739_p5 = {{{{tmp_52_reg_2358}, {1'd1}}, {tmp_137_fu_1730_p4}}, {5'd16}};
assign or_ln14_11_fu_1849_p5 = {{{{tmp_52_reg_2358}, {1'd1}}, {tmp_78_reg_2499}}, {6'd32}};
assign or_ln14_12_fu_1872_p5 = {{{{tmp_52_reg_2358}, {1'd1}}, {tmp_78_reg_2499}}, {6'd48}};
assign or_ln14_13_fu_1356_p3 = {{tmp_52_reg_2358}, {2'd3}};
assign or_ln14_14_fu_1986_p4 = {{{tmp_52_reg_2358}, {2'd3}}, {conv3_udiv}};
assign or_ln14_15_fu_2007_p5 = {{{{tmp_52_reg_2358}, {2'd3}}, {tmp_77_reg_2610}}, {5'd16}};
assign or_ln14_16_fu_2112_p3 = {{tmp_52_reg_2358}, {8'd224}};
assign or_ln14_17_fu_2136_p3 = {{tmp_52_reg_2358}, {8'd240}};
assign or_ln14_1_fu_1292_p3 = {{lshr_ln9_1_reg_2347}, {6'd32}};
assign or_ln14_2_fu_1312_p3 = {{lshr_ln9_1_reg_2347}, {6'd48}};
assign or_ln14_3_fu_1198_p3 = {{lshr_ln9_fu_1112_p4}, {1'd1}};
assign or_ln14_4_fu_1454_p4 = {{{tmp_52_reg_2358}, {2'd1}}, {conv3_udiv}};
assign or_ln14_5_fu_1477_p5 = {{{{lshr_ln9_reg_2339}, {1'd1}}, {tmp_77_fu_1470_p3}}, {5'd16}};
assign or_ln14_6_fu_1584_p3 = {{lshr_ln9_reg_2339}, {7'd96}};
assign or_ln14_7_fu_1604_p3 = {{lshr_ln9_reg_2339}, {7'd112}};
assign or_ln14_8_fu_2265_p3 = {{tmp_52_reg_2358_pp0_iter1_reg}, {1'd1}};
assign or_ln14_9_fu_1339_p4 = {{{tmp_52_reg_2358}, {1'd1}}, {tmp_78_fu_1332_p3}};
assign or_ln14_s_fu_1713_p4 = {{{tmp_52_reg_2358}, {1'd1}}, {zext_ln14_19_fu_1710_p1}};
assign or_ln1_fu_1176_p3 = {{tmp_101_fu_1166_p4}, {5'd16}};
assign or_ln_fu_1150_p3 = {{tmp_52_fu_1140_p4}, {p_cast_fu_1092_p1}};
assign p_cast_fu_1092_p1 = empty_11;
assign tmp_101_fu_1166_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign tmp_10_fu_1958_p2 = emission_0_q0;
assign tmp_10_fu_1958_p4 = emission_1_q0;
assign tmp_10_fu_1958_p6 = emission_2_q0;
assign tmp_10_fu_1958_p8 = emission_3_q0;
assign tmp_10_fu_1958_p9 = 'bx;
assign tmp_11_fu_2046_p2 = emission_0_q1;
assign tmp_11_fu_2046_p4 = emission_1_q1;
assign tmp_11_fu_2046_p6 = emission_2_q1;
assign tmp_11_fu_2046_p8 = emission_3_q1;
assign tmp_11_fu_2046_p9 = 'bx;
assign tmp_12_fu_2085_p2 = emission_0_q0;
assign tmp_12_fu_2085_p4 = emission_1_q0;
assign tmp_12_fu_2085_p6 = emission_2_q0;
assign tmp_12_fu_2085_p8 = emission_3_q0;
assign tmp_12_fu_2085_p9 = 'bx;
assign tmp_137_fu_1730_p4 = {{s_1_reg_2327[2:1]}};
assign tmp_13_fu_2190_p2 = emission_0_q1;
assign tmp_13_fu_2190_p4 = emission_1_q1;
assign tmp_13_fu_2190_p6 = emission_2_q1;
assign tmp_13_fu_2190_p8 = emission_3_q1;
assign tmp_13_fu_2190_p9 = 'bx;
assign tmp_14_fu_2229_p2 = emission_0_q0;
assign tmp_14_fu_2229_p4 = emission_1_q0;
assign tmp_14_fu_2229_p6 = emission_2_q0;
assign tmp_14_fu_2229_p8 = emission_3_q0;
assign tmp_14_fu_2229_p9 = 'bx;
assign tmp_1_fu_1269_p2 = emission_0_q0;
assign tmp_1_fu_1269_p4 = emission_1_q0;
assign tmp_1_fu_1269_p6 = emission_2_q0;
assign tmp_1_fu_1269_p8 = emission_3_q0;
assign tmp_1_fu_1269_p9 = 'bx;
assign tmp_2_fu_1392_p2 = emission_0_q1;
assign tmp_2_fu_1392_p4 = emission_1_q1;
assign tmp_2_fu_1392_p6 = emission_2_q1;
assign tmp_2_fu_1392_p8 = emission_3_q1;
assign tmp_2_fu_1392_p9 = 'bx;
assign tmp_3_fu_1431_p2 = emission_0_q0;
assign tmp_3_fu_1431_p4 = emission_1_q0;
assign tmp_3_fu_1431_p6 = emission_2_q0;
assign tmp_3_fu_1431_p8 = emission_3_q0;
assign tmp_3_fu_1431_p9 = 'bx;
assign tmp_4_fu_1522_p2 = emission_0_q1;
assign tmp_4_fu_1522_p4 = emission_1_q1;
assign tmp_4_fu_1522_p6 = emission_2_q1;
assign tmp_4_fu_1522_p8 = emission_3_q1;
assign tmp_4_fu_1522_p9 = 'bx;
assign tmp_52_fu_1140_p4 = {{ap_sig_allocacmp_s_1[5:4]}};
assign tmp_5_fu_1561_p2 = emission_0_q0;
assign tmp_5_fu_1561_p4 = emission_1_q0;
assign tmp_5_fu_1561_p6 = emission_2_q0;
assign tmp_5_fu_1561_p8 = emission_3_q0;
assign tmp_5_fu_1561_p9 = 'bx;
assign tmp_6_fu_1648_p2 = emission_0_q1;
assign tmp_6_fu_1648_p4 = emission_1_q1;
assign tmp_6_fu_1648_p6 = emission_2_q1;
assign tmp_6_fu_1648_p8 = emission_3_q1;
assign tmp_6_fu_1648_p9 = 'bx;
assign tmp_77_fu_1470_p3 = s_1_reg_2327[32'd1];
assign tmp_78_fu_1332_p3 = s_1_reg_2327[32'd2];
assign tmp_7_fu_1687_p2 = emission_0_q0;
assign tmp_7_fu_1687_p4 = emission_1_q0;
assign tmp_7_fu_1687_p6 = emission_2_q0;
assign tmp_7_fu_1687_p8 = emission_3_q0;
assign tmp_7_fu_1687_p9 = 'bx;
assign tmp_8_fu_1787_p2 = emission_0_q1;
assign tmp_8_fu_1787_p4 = emission_1_q1;
assign tmp_8_fu_1787_p6 = emission_2_q1;
assign tmp_8_fu_1787_p8 = emission_3_q1;
assign tmp_8_fu_1787_p9 = 'bx;
assign tmp_9_fu_1826_p2 = emission_0_q0;
assign tmp_9_fu_1826_p4 = emission_1_q0;
assign tmp_9_fu_1826_p6 = emission_2_q0;
assign tmp_9_fu_1826_p8 = emission_3_q0;
assign tmp_9_fu_1826_p9 = 'bx;
assign tmp_fu_1230_p2 = emission_0_q1;
assign tmp_fu_1230_p4 = emission_1_q1;
assign tmp_fu_1230_p6 = emission_2_q1;
assign tmp_fu_1230_p8 = emission_3_q1;
assign tmp_fu_1230_p9 = 'bx;
assign tmp_s_fu_1919_p2 = emission_0_q1;
assign tmp_s_fu_1919_p4 = emission_1_q1;
assign tmp_s_fu_1919_p6 = emission_2_q1;
assign tmp_s_fu_1919_p8 = emission_3_q1;
assign tmp_s_fu_1919_p9 = 'bx;
assign zext_ln14_10_fu_1864_p1 = add_ln14_7_fu_1859_p2;
assign zext_ln14_11_fu_1887_p1 = add_ln14_8_fu_1882_p2;
assign zext_ln14_12_fu_1994_p1 = or_ln14_14_fu_1986_p4;
assign zext_ln14_13_fu_2022_p1 = add_ln14_9_fu_2017_p2;
assign zext_ln14_14_fu_2124_p1 = add_ln14_10_fu_2119_p2;
assign zext_ln14_15_fu_2148_p1 = add_ln14_11_fu_2143_p2;
assign zext_ln14_16_fu_1206_p1 = or_ln14_3_fu_1198_p3;
assign zext_ln14_17_fu_2272_p1 = or_ln14_8_fu_2265_p3;
assign zext_ln14_18_fu_1348_p1 = or_ln14_9_fu_1339_p4;
assign zext_ln14_19_fu_1710_p1 = conv3_udiv;
assign zext_ln14_1_fu_1190_p1 = add_ln14_fu_1184_p2;
assign zext_ln14_20_fu_1363_p1 = or_ln14_13_fu_1356_p3;
assign zext_ln14_2_fu_1304_p1 = add_ln14_1_fu_1299_p2;
assign zext_ln14_3_fu_1324_p1 = add_ln14_2_fu_1319_p2;
assign zext_ln14_4_fu_1462_p1 = or_ln14_4_fu_1454_p4;
assign zext_ln14_5_fu_1493_p1 = add_ln14_3_fu_1488_p2;
assign zext_ln14_6_fu_1596_p1 = add_ln14_4_fu_1591_p2;
assign zext_ln14_7_fu_1616_p1 = add_ln14_5_fu_1611_p2;
assign zext_ln14_8_fu_1722_p1 = or_ln14_s_fu_1713_p4;
assign zext_ln14_9_fu_1755_p1 = add_ln14_6_fu_1750_p2;
assign zext_ln14_fu_1158_p1 = or_ln_fu_1150_p3;
assign zext_ln9_1_fu_1132_p1 = lshr_ln9_1_fu_1122_p4;
assign zext_ln9_fu_2260_p1 = lshr_ln9_reg_2339_pp0_iter1_reg;
always @ (posedge ap_clk) begin
    conv3_udiv_cast_cast_reg_2312[9:6] <= 4'b0000;
    zext_ln9_reg_3000[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    zext_ln14_17_reg_3010[0] <= 1'b1;
    zext_ln14_17_reg_3010[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
end
endmodule 