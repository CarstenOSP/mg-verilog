module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,llike_address0,llike_ce0,llike_we0,llike_d0,llike_1_address0,llike_1_ce0,llike_1_we0,llike_1_d0,llike_2_address0,llike_2_ce0,llike_2_we0,llike_2_d0,llike_3_address0,llike_3_ce0,llike_3_we0,llike_3_d0,llike_4_address0,llike_4_ce0,llike_4_we0,llike_4_d0,llike_5_address0,llike_5_ce0,llike_5_we0,llike_5_d0,llike_6_address0,llike_6_ce0,llike_6_we0,llike_6_d0,llike_7_address0,llike_7_ce0,llike_7_we0,llike_7_d0,llike_8_address0,llike_8_ce0,llike_8_we0,llike_8_d0,llike_9_address0,llike_9_ce0,llike_9_we0,llike_9_d0,llike_10_address0,llike_10_ce0,llike_10_we0,llike_10_d0,llike_11_address0,llike_11_ce0,llike_11_we0,llike_11_d0,llike_12_address0,llike_12_ce0,llike_12_we0,llike_12_d0,llike_13_address0,llike_13_ce0,llike_13_we0,llike_13_d0,llike_14_address0,llike_14_ce0,llike_14_we0,llike_14_d0,llike_15_address0,llike_15_ce0,llike_15_we0,llike_15_d0,llike_16_address0,llike_16_ce0,llike_16_we0,llike_16_d0,llike_17_address0,llike_17_ce0,llike_17_we0,llike_17_d0,llike_18_address0,llike_18_ce0,llike_18_we0,llike_18_d0,llike_19_address0,llike_19_ce0,llike_19_we0,llike_19_d0,llike_20_address0,llike_20_ce0,llike_20_we0,llike_20_d0,llike_21_address0,llike_21_ce0,llike_21_we0,llike_21_d0,llike_22_address0,llike_22_ce0,llike_22_we0,llike_22_d0,llike_23_address0,llike_23_ce0,llike_23_we0,llike_23_d0,llike_24_address0,llike_24_ce0,llike_24_we0,llike_24_d0,llike_25_address0,llike_25_ce0,llike_25_we0,llike_25_d0,llike_26_address0,llike_26_ce0,llike_26_we0,llike_26_d0,llike_27_address0,llike_27_ce0,llike_27_we0,llike_27_d0,llike_28_address0,llike_28_ce0,llike_28_we0,llike_28_d0,llike_29_address0,llike_29_ce0,llike_29_we0,llike_29_d0,llike_30_address0,llike_30_ce0,llike_30_we0,llike_30_d0,llike_31_address0,llike_31_ce0,llike_31_we0,llike_31_d0,init_0_address0,init_0_ce0,init_0_q0,init_0_address1,init_0_ce1,init_0_q1,empty_10,emission_0_address0,emission_0_ce0,emission_0_q0,emission_0_address1,emission_0_ce1,emission_0_q1,emission_1_address0,emission_1_ce0,emission_1_q0,emission_1_address1,emission_1_ce1,emission_1_q1,empty,conv3_udiv_cast,conv3_udiv,init_1_address0,init_1_ce0,init_1_q0,init_1_address1,init_1_ce1,init_1_q1,grp_fu_983_p_din0,grp_fu_983_p_din1,grp_fu_983_p_opcode,grp_fu_983_p_dout0,grp_fu_983_p_ce,grp_fu_1427_p_din0,grp_fu_1427_p_din1,grp_fu_1427_p_opcode,grp_fu_1427_p_dout0,grp_fu_1427_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 16'd1;
parameter    ap_ST_fsm_pp0_stage1 = 16'd2;
parameter    ap_ST_fsm_pp0_stage2 = 16'd4;
parameter    ap_ST_fsm_pp0_stage3 = 16'd8;
parameter    ap_ST_fsm_pp0_stage4 = 16'd16;
parameter    ap_ST_fsm_pp0_stage5 = 16'd32;
parameter    ap_ST_fsm_pp0_stage6 = 16'd64;
parameter    ap_ST_fsm_pp0_stage7 = 16'd128;
parameter    ap_ST_fsm_pp0_stage8 = 16'd256;
parameter    ap_ST_fsm_pp0_stage9 = 16'd512;
parameter    ap_ST_fsm_pp0_stage10 = 16'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 16'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 16'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 16'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 16'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 16'd32768;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] llike_address0;
output   llike_ce0;
output   llike_we0;
output  [63:0] llike_d0;
output  [8:0] llike_1_address0;
output   llike_1_ce0;
output   llike_1_we0;
output  [63:0] llike_1_d0;
output  [8:0] llike_2_address0;
output   llike_2_ce0;
output   llike_2_we0;
output  [63:0] llike_2_d0;
output  [8:0] llike_3_address0;
output   llike_3_ce0;
output   llike_3_we0;
output  [63:0] llike_3_d0;
output  [8:0] llike_4_address0;
output   llike_4_ce0;
output   llike_4_we0;
output  [63:0] llike_4_d0;
output  [8:0] llike_5_address0;
output   llike_5_ce0;
output   llike_5_we0;
output  [63:0] llike_5_d0;
output  [8:0] llike_6_address0;
output   llike_6_ce0;
output   llike_6_we0;
output  [63:0] llike_6_d0;
output  [8:0] llike_7_address0;
output   llike_7_ce0;
output   llike_7_we0;
output  [63:0] llike_7_d0;
output  [8:0] llike_8_address0;
output   llike_8_ce0;
output   llike_8_we0;
output  [63:0] llike_8_d0;
output  [8:0] llike_9_address0;
output   llike_9_ce0;
output   llike_9_we0;
output  [63:0] llike_9_d0;
output  [8:0] llike_10_address0;
output   llike_10_ce0;
output   llike_10_we0;
output  [63:0] llike_10_d0;
output  [8:0] llike_11_address0;
output   llike_11_ce0;
output   llike_11_we0;
output  [63:0] llike_11_d0;
output  [8:0] llike_12_address0;
output   llike_12_ce0;
output   llike_12_we0;
output  [63:0] llike_12_d0;
output  [8:0] llike_13_address0;
output   llike_13_ce0;
output   llike_13_we0;
output  [63:0] llike_13_d0;
output  [8:0] llike_14_address0;
output   llike_14_ce0;
output   llike_14_we0;
output  [63:0] llike_14_d0;
output  [8:0] llike_15_address0;
output   llike_15_ce0;
output   llike_15_we0;
output  [63:0] llike_15_d0;
output  [8:0] llike_16_address0;
output   llike_16_ce0;
output   llike_16_we0;
output  [63:0] llike_16_d0;
output  [8:0] llike_17_address0;
output   llike_17_ce0;
output   llike_17_we0;
output  [63:0] llike_17_d0;
output  [8:0] llike_18_address0;
output   llike_18_ce0;
output   llike_18_we0;
output  [63:0] llike_18_d0;
output  [8:0] llike_19_address0;
output   llike_19_ce0;
output   llike_19_we0;
output  [63:0] llike_19_d0;
output  [8:0] llike_20_address0;
output   llike_20_ce0;
output   llike_20_we0;
output  [63:0] llike_20_d0;
output  [8:0] llike_21_address0;
output   llike_21_ce0;
output   llike_21_we0;
output  [63:0] llike_21_d0;
output  [8:0] llike_22_address0;
output   llike_22_ce0;
output   llike_22_we0;
output  [63:0] llike_22_d0;
output  [8:0] llike_23_address0;
output   llike_23_ce0;
output   llike_23_we0;
output  [63:0] llike_23_d0;
output  [8:0] llike_24_address0;
output   llike_24_ce0;
output   llike_24_we0;
output  [63:0] llike_24_d0;
output  [8:0] llike_25_address0;
output   llike_25_ce0;
output   llike_25_we0;
output  [63:0] llike_25_d0;
output  [8:0] llike_26_address0;
output   llike_26_ce0;
output   llike_26_we0;
output  [63:0] llike_26_d0;
output  [8:0] llike_27_address0;
output   llike_27_ce0;
output   llike_27_we0;
output  [63:0] llike_27_d0;
output  [8:0] llike_28_address0;
output   llike_28_ce0;
output   llike_28_we0;
output  [63:0] llike_28_d0;
output  [8:0] llike_29_address0;
output   llike_29_ce0;
output   llike_29_we0;
output  [63:0] llike_29_d0;
output  [8:0] llike_30_address0;
output   llike_30_ce0;
output   llike_30_we0;
output  [63:0] llike_30_d0;
output  [8:0] llike_31_address0;
output   llike_31_ce0;
output   llike_31_we0;
output  [63:0] llike_31_d0;
output  [4:0] init_0_address0;
output   init_0_ce0;
input  [63:0] init_0_q0;
output  [4:0] init_0_address1;
output   init_0_ce1;
input  [63:0] init_0_q1;
input  [6:0] empty_10;
output  [10:0] emission_0_address0;
output   emission_0_ce0;
input  [63:0] emission_0_q0;
output  [10:0] emission_0_address1;
output   emission_0_ce1;
input  [63:0] emission_0_q1;
output  [10:0] emission_1_address0;
output   emission_1_ce0;
input  [63:0] emission_1_q0;
output  [10:0] emission_1_address1;
output   emission_1_ce1;
input  [63:0] emission_1_q1;
input  [0:0] empty;
input  [6:0] conv3_udiv_cast;
input  [6:0] conv3_udiv;
output  [4:0] init_1_address0;
output   init_1_ce0;
input  [63:0] init_1_q0;
output  [4:0] init_1_address1;
output   init_1_ce1;
input  [63:0] init_1_q1;
output  [63:0] grp_fu_983_p_din0;
output  [63:0] grp_fu_983_p_din1;
output  [1:0] grp_fu_983_p_opcode;
input  [63:0] grp_fu_983_p_dout0;
output   grp_fu_983_p_ce;
output  [63:0] grp_fu_1427_p_din0;
output  [63:0] grp_fu_1427_p_din1;
output  [1:0] grp_fu_1427_p_opcode;
input  [63:0] grp_fu_1427_p_dout0;
output   grp_fu_1427_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_subdone;
reg   [0:0] tmp_129_reg_2946;
reg    ap_condition_exit_pp0_iter0_stage9;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [63:0] reg_1502;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] grp_fu_1488_p3;
reg   [63:0] reg_1506;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_block_pp0_stage15_11001;
wire   [63:0] grp_fu_1495_p3;
reg   [63:0] reg_1510;
reg   [63:0] reg_1514;
reg   [63:0] reg_1518;
reg   [63:0] reg_1523;
reg   [63:0] reg_1528;
reg   [63:0] reg_1533;
reg   [63:0] reg_1538;
reg   [63:0] reg_1543;
reg   [63:0] reg_1548;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_1568;
wire   [10:0] conv3_udiv_cast_cast_fu_1588_p1;
reg   [10:0] conv3_udiv_cast_cast_reg_2899;
wire   [7:0] p_cast_fu_1592_p1;
reg   [7:0] p_cast_reg_2926;
reg   [6:0] s_1_reg_2933;
wire   [2:0] tmp_1_fu_1628_p4;
reg   [2:0] tmp_1_reg_2955;
wire   [3:0] tmp_5_fu_1672_p4;
reg   [3:0] tmp_5_reg_2985;
wire   [0:0] tmp_131_fu_1732_p3;
reg   [0:0] tmp_131_reg_3026;
wire   [63:0] bitcast_ln14_fu_1767_p1;
wire   [63:0] bitcast_ln14_1_fu_1772_p1;
wire   [63:0] bitcast_ln14_2_fu_1777_p1;
wire   [1:0] tmp_61_fu_1817_p4;
reg   [1:0] tmp_61_reg_3092;
wire   [1:0] tmp_65_fu_1826_p4;
reg   [1:0] tmp_65_reg_3106;
wire   [0:0] tmp_132_fu_1851_p3;
reg   [0:0] tmp_132_reg_3113;
wire   [63:0] bitcast_ln14_32_fu_1876_p1;
wire   [63:0] bitcast_ln14_3_fu_1881_p1;
wire   [63:0] bitcast_ln14_4_fu_1886_p1;
wire   [63:0] bitcast_ln14_33_fu_1954_p1;
wire   [63:0] bitcast_ln14_34_fu_1959_p1;
wire   [0:0] tmp_130_fu_1964_p3;
reg   [0:0] tmp_130_reg_3207;
wire   [63:0] bitcast_ln14_5_fu_1971_p1;
wire   [63:0] bitcast_ln14_6_fu_1976_p1;
wire   [2:0] tmp_s_fu_2016_p4;
reg   [2:0] tmp_s_reg_3264;
wire   [1:0] tmp_134_fu_2041_p4;
reg   [1:0] tmp_134_reg_3269;
wire   [63:0] bitcast_ln14_35_fu_2068_p1;
wire   [63:0] bitcast_ln14_36_fu_2073_p1;
reg   [63:0] init_0_load_7_reg_3285;
reg   [63:0] init_1_load_7_reg_3290;
wire   [63:0] bitcast_ln14_7_fu_2078_p1;
wire   [63:0] bitcast_ln14_8_fu_2083_p1;
wire   [0:0] tmp_133_fu_2130_p3;
reg   [0:0] tmp_133_reg_3345;
wire   [63:0] bitcast_ln14_37_fu_2172_p1;
wire   [63:0] bitcast_ln14_38_fu_2177_p1;
reg   [63:0] init_0_load_9_reg_3364;
reg   [63:0] init_1_load_9_reg_3369;
wire   [63:0] bitcast_ln14_9_fu_2182_p1;
wire   [63:0] bitcast_ln14_10_fu_2187_p1;
wire   [63:0] bitcast_ln14_39_fu_2257_p1;
wire   [63:0] bitcast_ln14_40_fu_2262_p1;
reg   [63:0] init_0_load_11_reg_3434;
reg   [63:0] init_1_load_11_reg_3439;
wire   [63:0] bitcast_ln14_11_fu_2267_p1;
wire   [63:0] bitcast_ln14_12_fu_2272_p1;
wire   [63:0] bitcast_ln14_41_fu_2340_p1;
wire   [63:0] bitcast_ln14_42_fu_2345_p1;
reg   [63:0] init_0_load_13_reg_3504;
reg   [63:0] init_1_load_13_reg_3509;
wire   [63:0] bitcast_ln14_13_fu_2350_p1;
wire   [63:0] bitcast_ln14_14_fu_2355_p1;
wire   [63:0] bitcast_ln14_43_fu_2396_p1;
wire   [63:0] bitcast_ln14_44_fu_2401_p1;
reg   [63:0] init_0_load_15_reg_3574;
reg   [63:0] init_1_load_15_reg_3579;
wire   [63:0] bitcast_ln14_15_fu_2406_p1;
wire   [63:0] bitcast_ln14_16_fu_2411_p1;
wire   [63:0] bitcast_ln14_45_fu_2458_p1;
wire   [63:0] bitcast_ln14_46_fu_2462_p1;
wire   [63:0] zext_ln9_1_fu_2466_p1;
reg   [63:0] zext_ln9_1_reg_3624;
wire   [63:0] bitcast_ln14_17_fu_2471_p1;
wire   [63:0] bitcast_ln14_18_fu_2476_p1;
wire   [63:0] bitcast_ln14_47_fu_2522_p1;
wire   [63:0] bitcast_ln14_48_fu_2527_p1;
wire   [63:0] bitcast_ln14_19_fu_2532_p1;
wire   [63:0] bitcast_ln14_20_fu_2537_p1;
wire   [63:0] bitcast_ln14_49_fu_2584_p1;
wire   [63:0] bitcast_ln14_50_fu_2588_p1;
wire   [63:0] bitcast_ln14_21_fu_2592_p1;
wire   [63:0] bitcast_ln14_22_fu_2597_p1;
wire   [63:0] bitcast_ln14_51_fu_2637_p1;
wire   [63:0] bitcast_ln14_52_fu_2642_p1;
wire   [63:0] bitcast_ln14_23_fu_2647_p1;
wire   [63:0] bitcast_ln14_24_fu_2652_p1;
wire   [63:0] bitcast_ln14_53_fu_2699_p1;
wire   [63:0] bitcast_ln14_54_fu_2703_p1;
wire   [63:0] bitcast_ln14_25_fu_2707_p1;
wire   [63:0] bitcast_ln14_26_fu_2712_p1;
wire   [63:0] bitcast_ln14_55_fu_2752_p1;
wire   [63:0] bitcast_ln14_56_fu_2757_p1;
wire   [63:0] bitcast_ln14_27_fu_2762_p1;
wire   [63:0] bitcast_ln14_28_fu_2767_p1;
wire   [63:0] bitcast_ln14_57_fu_2790_p1;
wire   [63:0] bitcast_ln14_58_fu_2794_p1;
wire   [63:0] bitcast_ln14_29_fu_2826_p1;
wire   [63:0] bitcast_ln14_30_fu_2831_p1;
wire   [63:0] select_ln14_30_fu_2836_p3;
reg   [63:0] select_ln14_30_reg_3908;
wire   [63:0] bitcast_ln14_59_fu_2843_p1;
wire   [63:0] bitcast_ln14_60_fu_2848_p1;
wire   [63:0] select_ln14_31_fu_2853_p3;
reg   [63:0] select_ln14_31_reg_3923;
wire   [63:0] bitcast_ln14_31_fu_2860_p1;
wire   [63:0] bitcast_ln14_61_fu_2864_p1;
wire   [63:0] bitcast_ln14_62_fu_2868_p1;
wire   [63:0] bitcast_ln14_63_fu_2872_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln9_fu_1622_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_1646_p1;
wire   [63:0] zext_ln14_1_fu_1666_p1;
wire   [63:0] zext_ln14_32_fu_1690_p1;
wire   [63:0] zext_ln14_2_fu_1708_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_3_fu_1726_p1;
wire   [63:0] zext_ln14_33_fu_1748_p1;
wire   [63:0] zext_ln14_34_fu_1761_p1;
wire   [63:0] zext_ln14_4_fu_1790_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_5_fu_1811_p1;
wire   [63:0] zext_ln14_35_fu_1845_p1;
wire   [63:0] zext_ln14_36_fu_1870_p1;
wire   [63:0] zext_ln14_6_fu_1903_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_7_fu_1921_p1;
wire   [63:0] zext_ln14_37_fu_1935_p1;
wire   [63:0] zext_ln14_38_fu_1948_p1;
wire   [63:0] zext_ln14_8_fu_1989_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln14_9_fu_2010_p1;
wire   [63:0] zext_ln14_39_fu_2035_p1;
wire   [63:0] zext_ln14_40_fu_2062_p1;
wire   [63:0] zext_ln14_10_fu_2103_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln14_11_fu_2124_p1;
wire   [63:0] zext_ln14_41_fu_2149_p1;
wire   [63:0] zext_ln14_42_fu_2166_p1;
wire   [63:0] zext_ln14_12_fu_2200_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln14_13_fu_2221_p1;
wire   [63:0] zext_ln14_43_fu_2235_p1;
wire   [63:0] zext_ln14_44_fu_2251_p1;
wire   [63:0] zext_ln14_14_fu_2289_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln14_15_fu_2307_p1;
wire   [63:0] zext_ln14_45_fu_2321_p1;
wire   [63:0] zext_ln14_46_fu_2334_p1;
wire   [63:0] zext_ln14_16_fu_2369_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln14_17_fu_2390_p1;
wire   [63:0] zext_ln14_18_fu_2431_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln14_19_fu_2452_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln14_20_fu_2492_p1;
wire   [63:0] zext_ln14_21_fu_2516_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln14_22_fu_2557_p1;
wire   [63:0] zext_ln14_23_fu_2578_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln14_24_fu_2610_p1;
wire   [63:0] zext_ln14_25_fu_2631_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln14_26_fu_2672_p1;
wire   [63:0] zext_ln14_27_fu_2693_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln14_28_fu_2725_p1;
wire   [63:0] zext_ln14_29_fu_2746_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln14_30_fu_2784_p1;
wire   [63:0] zext_ln14_31_fu_2810_p1;
reg   [6:0] s_fu_232;
wire   [6:0] add_ln13_fu_2816_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg    init_0_ce1_local;
reg   [4:0] init_0_address1_local;
reg    init_0_ce0_local;
reg   [4:0] init_0_address0_local;
reg    emission_0_ce1_local;
reg   [10:0] emission_0_address1_local;
reg    emission_0_ce0_local;
reg   [10:0] emission_0_address0_local;
reg    emission_1_ce1_local;
reg   [10:0] emission_1_address1_local;
reg    emission_1_ce0_local;
reg   [10:0] emission_1_address0_local;
reg    init_1_ce1_local;
reg   [4:0] init_1_address1_local;
reg    init_1_ce0_local;
reg   [4:0] init_1_address0_local;
reg    llike_we0_local;
reg    llike_ce0_local;
reg    llike_1_we0_local;
reg    llike_1_ce0_local;
reg    llike_2_we0_local;
reg    llike_2_ce0_local;
reg    llike_3_we0_local;
reg    llike_3_ce0_local;
reg    llike_4_we0_local;
reg    llike_4_ce0_local;
reg    llike_5_we0_local;
reg    llike_5_ce0_local;
reg    llike_6_we0_local;
reg    llike_6_ce0_local;
reg    llike_7_we0_local;
reg    llike_7_ce0_local;
reg    llike_8_we0_local;
reg    llike_8_ce0_local;
reg    llike_9_we0_local;
reg    llike_9_ce0_local;
reg    llike_10_we0_local;
reg    llike_10_ce0_local;
reg    llike_11_we0_local;
reg    llike_11_ce0_local;
reg    llike_12_we0_local;
reg    llike_12_ce0_local;
reg    llike_13_we0_local;
reg    llike_13_ce0_local;
reg    llike_14_we0_local;
reg    llike_14_ce0_local;
reg    llike_15_we0_local;
reg    llike_15_ce0_local;
reg    llike_16_we0_local;
reg    llike_16_ce0_local;
reg    llike_17_we0_local;
reg    llike_17_ce0_local;
reg    llike_18_we0_local;
reg    llike_18_ce0_local;
reg    llike_19_we0_local;
reg    llike_19_ce0_local;
reg    llike_20_we0_local;
reg    llike_20_ce0_local;
reg    llike_21_we0_local;
reg    llike_21_ce0_local;
reg    llike_22_we0_local;
reg    llike_22_ce0_local;
reg    llike_23_we0_local;
reg    llike_23_ce0_local;
reg    llike_24_we0_local;
reg    llike_24_ce0_local;
reg    llike_25_we0_local;
reg    llike_25_ce0_local;
reg    llike_26_we0_local;
reg    llike_26_ce0_local;
reg    llike_27_we0_local;
reg    llike_27_ce0_local;
reg    llike_28_we0_local;
reg    llike_28_ce0_local;
reg    llike_29_we0_local;
reg    llike_29_ce0_local;
reg    llike_30_we0_local;
reg    llike_30_ce0_local;
reg    llike_31_we0_local;
reg    llike_31_ce0_local;
reg   [63:0] grp_fu_1480_p0;
reg   [63:0] grp_fu_1480_p1;
reg   [63:0] grp_fu_1484_p0;
reg   [63:0] grp_fu_1484_p1;
wire   [4:0] lshr_ln9_fu_1612_p4;
wire   [10:0] or_ln_fu_1638_p3;
wire   [10:0] or_ln1_fu_1652_p3;
wire   [10:0] add_ln14_fu_1660_p2;
wire   [4:0] or_ln14_1_fu_1682_p3;
wire   [10:0] or_ln14_2_fu_1696_p3;
wire   [10:0] add_ln14_1_fu_1703_p2;
wire   [10:0] or_ln14_3_fu_1714_p3;
wire   [10:0] add_ln14_2_fu_1721_p2;
wire   [4:0] or_ln14_4_fu_1739_p4;
wire   [4:0] or_ln14_7_fu_1754_p3;
wire   [10:0] or_ln14_5_fu_1782_p4;
wire   [10:0] or_ln14_6_fu_1796_p5;
wire   [10:0] add_ln14_3_fu_1806_p2;
wire   [4:0] or_ln14_s_fu_1835_p4;
wire   [4:0] or_ln14_12_fu_1858_p5;
wire   [10:0] or_ln14_8_fu_1891_p3;
wire   [10:0] add_ln14_4_fu_1898_p2;
wire   [10:0] or_ln14_9_fu_1909_p3;
wire   [10:0] add_ln14_5_fu_1916_p2;
wire   [4:0] or_ln14_15_fu_1927_p4;
wire   [4:0] or_ln14_18_fu_1941_p3;
wire   [10:0] or_ln14_10_fu_1981_p4;
wire   [10:0] or_ln14_11_fu_1995_p5;
wire   [10:0] add_ln14_6_fu_2005_p2;
wire   [4:0] or_ln14_21_fu_2025_p4;
wire   [4:0] or_ln14_24_fu_2050_p5;
wire   [10:0] or_ln14_13_fu_2088_p5;
wire   [10:0] add_ln14_7_fu_2098_p2;
wire   [10:0] or_ln14_14_fu_2109_p5;
wire   [10:0] add_ln14_8_fu_2119_p2;
wire   [4:0] or_ln14_27_fu_2137_p6;
wire   [4:0] or_ln14_30_fu_2155_p5;
wire   [10:0] or_ln14_16_fu_2192_p4;
wire   [10:0] or_ln14_17_fu_2206_p5;
wire   [10:0] add_ln14_9_fu_2216_p2;
wire   [4:0] or_ln14_33_fu_2227_p4;
wire   [4:0] or_ln14_36_fu_2241_p5;
wire   [10:0] or_ln14_19_fu_2277_p3;
wire   [10:0] add_ln14_10_fu_2284_p2;
wire   [10:0] or_ln14_20_fu_2295_p3;
wire   [10:0] add_ln14_11_fu_2302_p2;
wire   [4:0] or_ln14_39_fu_2313_p4;
wire   [4:0] or_ln14_42_fu_2327_p3;
wire   [10:0] or_ln14_22_fu_2360_p5;
wire   [10:0] or_ln14_23_fu_2375_p5;
wire   [10:0] add_ln14_12_fu_2385_p2;
wire   [10:0] or_ln14_25_fu_2416_p5;
wire   [10:0] add_ln14_13_fu_2426_p2;
wire   [10:0] or_ln14_26_fu_2437_p5;
wire   [10:0] add_ln14_14_fu_2447_p2;
wire   [10:0] or_ln14_28_fu_2481_p6;
wire   [10:0] or_ln14_29_fu_2498_p7;
wire   [10:0] add_ln14_15_fu_2511_p2;
wire   [10:0] or_ln14_31_fu_2542_p5;
wire   [10:0] add_ln14_16_fu_2552_p2;
wire   [10:0] or_ln14_32_fu_2563_p5;
wire   [10:0] add_ln14_17_fu_2573_p2;
wire   [10:0] or_ln14_34_fu_2602_p4;
wire   [10:0] or_ln14_35_fu_2616_p5;
wire   [10:0] add_ln14_18_fu_2626_p2;
wire   [10:0] or_ln14_37_fu_2657_p5;
wire   [10:0] add_ln14_19_fu_2667_p2;
wire   [10:0] or_ln14_38_fu_2678_p5;
wire   [10:0] add_ln14_20_fu_2688_p2;
wire   [10:0] or_ln14_40_fu_2717_p4;
wire   [10:0] or_ln14_41_fu_2731_p5;
wire   [10:0] add_ln14_21_fu_2741_p2;
wire   [10:0] or_ln14_43_fu_2772_p3;
wire   [10:0] add_ln14_22_fu_2779_p2;
wire   [10:0] or_ln14_44_fu_2798_p3;
wire   [10:0] add_ln14_23_fu_2805_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [15:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
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
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage13_00001;
wire    ap_block_pp0_stage14_00001;
wire    ap_block_pp0_stage15_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 s_fu_232 = 7'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage9),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage9)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_1518 <= init_0_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_1518 <= init_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_1523 <= init_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_1523 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_1528 <= init_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_1528 <= init_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_1533 <= init_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_1533 <= init_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            reg_1538 <= init_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_1538 <= init_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            reg_1543 <= init_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_1543 <= init_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        s_fu_232 <= 7'd0;
    end else if (((tmp_129_reg_2946 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        s_fu_232 <= add_ln13_fu_2816_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        conv3_udiv_cast_cast_reg_2899[6 : 0] <= conv3_udiv_cast_cast_fu_1588_p1[6 : 0];
        p_cast_reg_2926[6 : 0] <= p_cast_fu_1592_p1[6 : 0];
        s_1_reg_2933 <= ap_sig_allocacmp_s_1;
        select_ln14_30_reg_3908 <= select_ln14_30_fu_2836_p3;
        select_ln14_31_reg_3923 <= select_ln14_31_fu_2853_p3;
        tmp_129_reg_2946 <= ap_sig_allocacmp_s_1[32'd6];
        tmp_1_reg_2955 <= {{ap_sig_allocacmp_s_1[5:3]}};
        tmp_5_reg_2985 <= {{ap_sig_allocacmp_s_1[5:2]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        init_0_load_11_reg_3434 <= init_0_q0;
        init_1_load_11_reg_3439 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        init_0_load_13_reg_3504 <= init_0_q0;
        init_1_load_13_reg_3509 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        init_0_load_15_reg_3574 <= init_0_q0;
        init_1_load_15_reg_3579 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        init_0_load_7_reg_3285 <= init_0_q0;
        init_1_load_7_reg_3290 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        init_0_load_9_reg_3364 <= init_0_q0;
        init_1_load_9_reg_3369 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1502 <= init_0_q1;
        reg_1514 <= init_1_q1;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1506 <= grp_fu_1488_p3;
        reg_1510 <= grp_fu_1495_p3;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1548 <= grp_fu_983_p_dout0;
        reg_1568 <= grp_fu_1427_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_130_reg_3207 <= s_1_reg_2933[32'd5];
        tmp_134_reg_3269 <= {{s_1_reg_2933[3:2]}};
        tmp_s_reg_3264 <= {{s_1_reg_2933[3:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_131_reg_3026 <= s_1_reg_2933[32'd1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_132_reg_3113 <= s_1_reg_2933[32'd2];
        tmp_61_reg_3092 <= {{s_1_reg_2933[5:4]}};
        tmp_65_reg_3106 <= {{s_1_reg_2933[2:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_133_reg_3345 <= s_1_reg_2933[32'd3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        zext_ln9_1_reg_3624[0] <= zext_ln9_1_fu_2466_p1[0];
    end
end
always @ (*) begin
    if (((tmp_129_reg_2946 == 1'd1) & (1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_condition_exit_pp0_iter0_stage9 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage9 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_s_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_s_1 = s_fu_232;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            emission_0_address0_local = zext_ln14_31_fu_2810_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            emission_0_address0_local = zext_ln14_29_fu_2746_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            emission_0_address0_local = zext_ln14_27_fu_2693_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            emission_0_address0_local = zext_ln14_25_fu_2631_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            emission_0_address0_local = zext_ln14_23_fu_2578_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            emission_0_address0_local = zext_ln14_21_fu_2516_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            emission_0_address0_local = zext_ln14_19_fu_2452_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            emission_0_address0_local = zext_ln14_17_fu_2390_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_0_address0_local = zext_ln14_15_fu_2307_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_0_address0_local = zext_ln14_13_fu_2221_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_0_address0_local = zext_ln14_11_fu_2124_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_0_address0_local = zext_ln14_9_fu_2010_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address0_local = zext_ln14_7_fu_1921_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address0_local = zext_ln14_5_fu_1811_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address0_local = zext_ln14_3_fu_1726_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address0_local = zext_ln14_1_fu_1666_p1;
        end else begin
            emission_0_address0_local = 'bx;
        end
    end else begin
        emission_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            emission_0_address1_local = zext_ln14_30_fu_2784_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            emission_0_address1_local = zext_ln14_28_fu_2725_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            emission_0_address1_local = zext_ln14_26_fu_2672_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            emission_0_address1_local = zext_ln14_24_fu_2610_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            emission_0_address1_local = zext_ln14_22_fu_2557_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            emission_0_address1_local = zext_ln14_20_fu_2492_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            emission_0_address1_local = zext_ln14_18_fu_2431_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            emission_0_address1_local = zext_ln14_16_fu_2369_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_0_address1_local = zext_ln14_14_fu_2289_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_0_address1_local = zext_ln14_12_fu_2200_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_0_address1_local = zext_ln14_10_fu_2103_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_0_address1_local = zext_ln14_8_fu_1989_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address1_local = zext_ln14_6_fu_1903_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address1_local = zext_ln14_4_fu_1790_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address1_local = zext_ln14_2_fu_1708_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address1_local = zext_ln14_fu_1646_p1;
        end else begin
            emission_0_address1_local = 'bx;
        end
    end else begin
        emission_0_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_0_ce0_local = 1'b1;
    end else begin
        emission_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_0_ce1_local = 1'b1;
    end else begin
        emission_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            emission_1_address0_local = zext_ln14_31_fu_2810_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            emission_1_address0_local = zext_ln14_29_fu_2746_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            emission_1_address0_local = zext_ln14_27_fu_2693_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            emission_1_address0_local = zext_ln14_25_fu_2631_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            emission_1_address0_local = zext_ln14_23_fu_2578_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            emission_1_address0_local = zext_ln14_21_fu_2516_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            emission_1_address0_local = zext_ln14_19_fu_2452_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            emission_1_address0_local = zext_ln14_17_fu_2390_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_1_address0_local = zext_ln14_15_fu_2307_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_1_address0_local = zext_ln14_13_fu_2221_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_1_address0_local = zext_ln14_11_fu_2124_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_1_address0_local = zext_ln14_9_fu_2010_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_1_address0_local = zext_ln14_7_fu_1921_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address0_local = zext_ln14_5_fu_1811_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address0_local = zext_ln14_3_fu_1726_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address0_local = zext_ln14_1_fu_1666_p1;
        end else begin
            emission_1_address0_local = 'bx;
        end
    end else begin
        emission_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            emission_1_address1_local = zext_ln14_30_fu_2784_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            emission_1_address1_local = zext_ln14_28_fu_2725_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            emission_1_address1_local = zext_ln14_26_fu_2672_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            emission_1_address1_local = zext_ln14_24_fu_2610_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            emission_1_address1_local = zext_ln14_22_fu_2557_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            emission_1_address1_local = zext_ln14_20_fu_2492_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            emission_1_address1_local = zext_ln14_18_fu_2431_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            emission_1_address1_local = zext_ln14_16_fu_2369_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_1_address1_local = zext_ln14_14_fu_2289_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_1_address1_local = zext_ln14_12_fu_2200_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_1_address1_local = zext_ln14_10_fu_2103_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_1_address1_local = zext_ln14_8_fu_1989_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_1_address1_local = zext_ln14_6_fu_1903_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address1_local = zext_ln14_4_fu_1790_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address1_local = zext_ln14_2_fu_1708_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address1_local = zext_ln14_fu_1646_p1;
        end else begin
            emission_1_address1_local = 'bx;
        end
    end else begin
        emission_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_1_ce0_local = 1'b1;
    end else begin
        emission_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_1_ce1_local = 1'b1;
    end else begin
        emission_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1480_p0 = bitcast_ln14_61_fu_2864_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1480_p0 = bitcast_ln14_59_fu_2843_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1480_p0 = bitcast_ln14_57_fu_2790_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1480_p0 = bitcast_ln14_55_fu_2752_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1480_p0 = bitcast_ln14_53_fu_2699_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1480_p0 = bitcast_ln14_51_fu_2637_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1480_p0 = bitcast_ln14_49_fu_2584_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1480_p0 = bitcast_ln14_47_fu_2522_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1480_p0 = bitcast_ln14_45_fu_2458_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1480_p0 = bitcast_ln14_43_fu_2396_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1480_p0 = bitcast_ln14_41_fu_2340_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1480_p0 = bitcast_ln14_39_fu_2257_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1480_p0 = bitcast_ln14_37_fu_2172_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1480_p0 = bitcast_ln14_35_fu_2068_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1480_p0 = bitcast_ln14_33_fu_1954_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1480_p0 = bitcast_ln14_fu_1767_p1;
    end else begin
        grp_fu_1480_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1480_p1 = bitcast_ln14_31_fu_2860_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1480_p1 = bitcast_ln14_29_fu_2826_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1480_p1 = bitcast_ln14_27_fu_2762_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1480_p1 = bitcast_ln14_25_fu_2707_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1480_p1 = bitcast_ln14_23_fu_2647_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1480_p1 = bitcast_ln14_21_fu_2592_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1480_p1 = bitcast_ln14_19_fu_2532_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1480_p1 = bitcast_ln14_17_fu_2471_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1480_p1 = bitcast_ln14_15_fu_2406_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1480_p1 = bitcast_ln14_13_fu_2350_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1480_p1 = bitcast_ln14_11_fu_2267_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1480_p1 = bitcast_ln14_9_fu_2182_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1480_p1 = bitcast_ln14_7_fu_2078_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1480_p1 = bitcast_ln14_5_fu_1971_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1480_p1 = bitcast_ln14_3_fu_1881_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1480_p1 = bitcast_ln14_1_fu_1772_p1;
    end else begin
        grp_fu_1480_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1484_p0 = bitcast_ln14_62_fu_2868_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1484_p0 = bitcast_ln14_60_fu_2848_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1484_p0 = bitcast_ln14_58_fu_2794_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1484_p0 = bitcast_ln14_56_fu_2757_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1484_p0 = bitcast_ln14_54_fu_2703_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1484_p0 = bitcast_ln14_52_fu_2642_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1484_p0 = bitcast_ln14_50_fu_2588_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1484_p0 = bitcast_ln14_48_fu_2527_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1484_p0 = bitcast_ln14_46_fu_2462_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1484_p0 = bitcast_ln14_44_fu_2401_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1484_p0 = bitcast_ln14_42_fu_2345_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1484_p0 = bitcast_ln14_40_fu_2262_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1484_p0 = bitcast_ln14_38_fu_2177_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1484_p0 = bitcast_ln14_36_fu_2073_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1484_p0 = bitcast_ln14_34_fu_1959_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1484_p0 = bitcast_ln14_32_fu_1876_p1;
    end else begin
        grp_fu_1484_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1484_p1 = bitcast_ln14_63_fu_2872_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1484_p1 = bitcast_ln14_30_fu_2831_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1484_p1 = bitcast_ln14_28_fu_2767_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1484_p1 = bitcast_ln14_26_fu_2712_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1484_p1 = bitcast_ln14_24_fu_2652_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1484_p1 = bitcast_ln14_22_fu_2597_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1484_p1 = bitcast_ln14_20_fu_2537_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1484_p1 = bitcast_ln14_18_fu_2476_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1484_p1 = bitcast_ln14_16_fu_2411_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1484_p1 = bitcast_ln14_14_fu_2355_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1484_p1 = bitcast_ln14_12_fu_2272_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1484_p1 = bitcast_ln14_10_fu_2187_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1484_p1 = bitcast_ln14_8_fu_2083_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1484_p1 = bitcast_ln14_6_fu_1976_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1484_p1 = bitcast_ln14_4_fu_1886_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1484_p1 = bitcast_ln14_2_fu_1777_p1;
    end else begin
        grp_fu_1484_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            init_0_address0_local = zext_ln14_46_fu_2334_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            init_0_address0_local = zext_ln14_44_fu_2251_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            init_0_address0_local = zext_ln14_42_fu_2166_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            init_0_address0_local = zext_ln14_40_fu_2062_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_0_address0_local = zext_ln14_38_fu_1948_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_0_address0_local = zext_ln14_36_fu_1870_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_0_address0_local = zext_ln14_34_fu_1761_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_0_address0_local = zext_ln14_32_fu_1690_p1;
        end else begin
            init_0_address0_local = 'bx;
        end
    end else begin
        init_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            init_0_address1_local = zext_ln14_45_fu_2321_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            init_0_address1_local = zext_ln14_43_fu_2235_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            init_0_address1_local = zext_ln14_41_fu_2149_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            init_0_address1_local = zext_ln14_39_fu_2035_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_0_address1_local = zext_ln14_37_fu_1935_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_0_address1_local = zext_ln14_35_fu_1845_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_0_address1_local = zext_ln14_33_fu_1748_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_0_address1_local = zext_ln9_fu_1622_p1;
        end else begin
            init_0_address1_local = 'bx;
        end
    end else begin
        init_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_0_ce0_local = 1'b1;
    end else begin
        init_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_0_ce1_local = 1'b1;
    end else begin
        init_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            init_1_address0_local = zext_ln14_46_fu_2334_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            init_1_address0_local = zext_ln14_44_fu_2251_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            init_1_address0_local = zext_ln14_42_fu_2166_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            init_1_address0_local = zext_ln14_40_fu_2062_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_1_address0_local = zext_ln14_38_fu_1948_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_1_address0_local = zext_ln14_36_fu_1870_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_1_address0_local = zext_ln14_34_fu_1761_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_1_address0_local = zext_ln14_32_fu_1690_p1;
        end else begin
            init_1_address0_local = 'bx;
        end
    end else begin
        init_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            init_1_address1_local = zext_ln14_45_fu_2321_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            init_1_address1_local = zext_ln14_43_fu_2235_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            init_1_address1_local = zext_ln14_41_fu_2149_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            init_1_address1_local = zext_ln14_39_fu_2035_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_1_address1_local = zext_ln14_37_fu_1935_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_1_address1_local = zext_ln14_35_fu_1845_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_1_address1_local = zext_ln14_33_fu_1748_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_1_address1_local = zext_ln9_fu_1622_p1;
        end else begin
            init_1_address1_local = 'bx;
        end
    end else begin
        init_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_1_ce0_local = 1'b1;
    end else begin
        init_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_1_ce1_local = 1'b1;
    end else begin
        init_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        llike_10_ce0_local = 1'b1;
    end else begin
        llike_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_129_reg_2946 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        llike_10_we0_local = 1'b1;
    end else begin
        llike_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        llike_11_ce0_local = 1'b1;
    end else begin
        llike_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_129_reg_2946 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        llike_11_we0_local = 1'b1;
    end else begin
        llike_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_12_ce0_local = 1'b1;
    end else begin
        llike_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_12_we0_local = 1'b1;
    end else begin
        llike_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_13_ce0_local = 1'b1;
    end else begin
        llike_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_13_we0_local = 1'b1;
    end else begin
        llike_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_14_ce0_local = 1'b1;
    end else begin
        llike_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_14_we0_local = 1'b1;
    end else begin
        llike_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_15_ce0_local = 1'b1;
    end else begin
        llike_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_15_we0_local = 1'b1;
    end else begin
        llike_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_16_ce0_local = 1'b1;
    end else begin
        llike_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_16_we0_local = 1'b1;
    end else begin
        llike_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_17_ce0_local = 1'b1;
    end else begin
        llike_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_17_we0_local = 1'b1;
    end else begin
        llike_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_18_ce0_local = 1'b1;
    end else begin
        llike_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_18_we0_local = 1'b1;
    end else begin
        llike_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_19_ce0_local = 1'b1;
    end else begin
        llike_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_19_we0_local = 1'b1;
    end else begin
        llike_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_129_reg_2946 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        llike_1_we0_local = 1'b1;
    end else begin
        llike_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_20_ce0_local = 1'b1;
    end else begin
        llike_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_20_we0_local = 1'b1;
    end else begin
        llike_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_21_ce0_local = 1'b1;
    end else begin
        llike_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_21_we0_local = 1'b1;
    end else begin
        llike_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_22_ce0_local = 1'b1;
    end else begin
        llike_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_22_we0_local = 1'b1;
    end else begin
        llike_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_23_ce0_local = 1'b1;
    end else begin
        llike_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_23_we0_local = 1'b1;
    end else begin
        llike_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        llike_24_ce0_local = 1'b1;
    end else begin
        llike_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        llike_24_we0_local = 1'b1;
    end else begin
        llike_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        llike_25_ce0_local = 1'b1;
    end else begin
        llike_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        llike_25_we0_local = 1'b1;
    end else begin
        llike_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        llike_26_ce0_local = 1'b1;
    end else begin
        llike_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        llike_26_we0_local = 1'b1;
    end else begin
        llike_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        llike_27_ce0_local = 1'b1;
    end else begin
        llike_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        llike_27_we0_local = 1'b1;
    end else begin
        llike_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        llike_28_ce0_local = 1'b1;
    end else begin
        llike_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        llike_28_we0_local = 1'b1;
    end else begin
        llike_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        llike_29_ce0_local = 1'b1;
    end else begin
        llike_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        llike_29_we0_local = 1'b1;
    end else begin
        llike_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_129_reg_2946 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        llike_2_we0_local = 1'b1;
    end else begin
        llike_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        llike_30_ce0_local = 1'b1;
    end else begin
        llike_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        llike_30_we0_local = 1'b1;
    end else begin
        llike_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        llike_31_ce0_local = 1'b1;
    end else begin
        llike_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        llike_31_we0_local = 1'b1;
    end else begin
        llike_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_129_reg_2946 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        llike_3_we0_local = 1'b1;
    end else begin
        llike_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        llike_4_ce0_local = 1'b1;
    end else begin
        llike_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_129_reg_2946 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        llike_4_we0_local = 1'b1;
    end else begin
        llike_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        llike_5_ce0_local = 1'b1;
    end else begin
        llike_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_129_reg_2946 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        llike_5_we0_local = 1'b1;
    end else begin
        llike_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        llike_6_ce0_local = 1'b1;
    end else begin
        llike_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_129_reg_2946 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        llike_6_we0_local = 1'b1;
    end else begin
        llike_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        llike_7_ce0_local = 1'b1;
    end else begin
        llike_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_129_reg_2946 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        llike_7_we0_local = 1'b1;
    end else begin
        llike_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        llike_8_ce0_local = 1'b1;
    end else begin
        llike_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_129_reg_2946 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        llike_8_we0_local = 1'b1;
    end else begin
        llike_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        llike_9_ce0_local = 1'b1;
    end else begin
        llike_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_129_reg_2946 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        llike_9_we0_local = 1'b1;
    end else begin
        llike_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_129_reg_2946 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        llike_we0_local = 1'b1;
    end else begin
        llike_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage9)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln13_fu_2816_p2 = (s_1_reg_2933 + 7'd32);
assign add_ln14_10_fu_2284_p2 = (or_ln14_19_fu_2277_p3 + conv3_udiv_cast_cast_reg_2899);
assign add_ln14_11_fu_2302_p2 = (or_ln14_20_fu_2295_p3 + conv3_udiv_cast_cast_reg_2899);
assign add_ln14_12_fu_2385_p2 = (or_ln14_23_fu_2375_p5 + conv3_udiv_cast_cast_reg_2899);
assign add_ln14_13_fu_2426_p2 = (or_ln14_25_fu_2416_p5 + conv3_udiv_cast_cast_reg_2899);
assign add_ln14_14_fu_2447_p2 = (or_ln14_26_fu_2437_p5 + conv3_udiv_cast_cast_reg_2899);
assign add_ln14_15_fu_2511_p2 = (or_ln14_29_fu_2498_p7 + conv3_udiv_cast_cast_reg_2899);
assign add_ln14_16_fu_2552_p2 = (or_ln14_31_fu_2542_p5 + conv3_udiv_cast_cast_reg_2899);
assign add_ln14_17_fu_2573_p2 = (or_ln14_32_fu_2563_p5 + conv3_udiv_cast_cast_reg_2899);
assign add_ln14_18_fu_2626_p2 = (or_ln14_35_fu_2616_p5 + conv3_udiv_cast_cast_reg_2899);
assign add_ln14_19_fu_2667_p2 = (or_ln14_37_fu_2657_p5 + conv3_udiv_cast_cast_reg_2899);
assign add_ln14_1_fu_1703_p2 = (or_ln14_2_fu_1696_p3 + conv3_udiv_cast_cast_reg_2899);
assign add_ln14_20_fu_2688_p2 = (or_ln14_38_fu_2678_p5 + conv3_udiv_cast_cast_reg_2899);
assign add_ln14_21_fu_2741_p2 = (or_ln14_41_fu_2731_p5 + conv3_udiv_cast_cast_reg_2899);
assign add_ln14_22_fu_2779_p2 = (or_ln14_43_fu_2772_p3 + conv3_udiv_cast_cast_reg_2899);
assign add_ln14_23_fu_2805_p2 = (or_ln14_44_fu_2798_p3 + conv3_udiv_cast_cast_reg_2899);
assign add_ln14_2_fu_1721_p2 = (or_ln14_3_fu_1714_p3 + conv3_udiv_cast_cast_reg_2899);
assign add_ln14_3_fu_1806_p2 = (or_ln14_6_fu_1796_p5 + conv3_udiv_cast_cast_reg_2899);
assign add_ln14_4_fu_1898_p2 = (or_ln14_8_fu_1891_p3 + conv3_udiv_cast_cast_reg_2899);
assign add_ln14_5_fu_1916_p2 = (or_ln14_9_fu_1909_p3 + conv3_udiv_cast_cast_reg_2899);
assign add_ln14_6_fu_2005_p2 = (or_ln14_11_fu_1995_p5 + conv3_udiv_cast_cast_reg_2899);
assign add_ln14_7_fu_2098_p2 = (or_ln14_13_fu_2088_p5 + conv3_udiv_cast_cast_reg_2899);
assign add_ln14_8_fu_2119_p2 = (or_ln14_14_fu_2109_p5 + conv3_udiv_cast_cast_reg_2899);
assign add_ln14_9_fu_2216_p2 = (or_ln14_17_fu_2206_p5 + conv3_udiv_cast_cast_reg_2899);
assign add_ln14_fu_1660_p2 = (or_ln1_fu_1652_p3 + conv3_udiv_cast_cast_fu_1588_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
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
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage9;
assign ap_ready = ap_ready_sig;
assign bitcast_ln14_10_fu_2187_p1 = reg_1510;
assign bitcast_ln14_11_fu_2267_p1 = reg_1506;
assign bitcast_ln14_12_fu_2272_p1 = reg_1510;
assign bitcast_ln14_13_fu_2350_p1 = reg_1506;
assign bitcast_ln14_14_fu_2355_p1 = reg_1510;
assign bitcast_ln14_15_fu_2406_p1 = reg_1506;
assign bitcast_ln14_16_fu_2411_p1 = reg_1510;
assign bitcast_ln14_17_fu_2471_p1 = reg_1506;
assign bitcast_ln14_18_fu_2476_p1 = reg_1510;
assign bitcast_ln14_19_fu_2532_p1 = reg_1506;
assign bitcast_ln14_1_fu_1772_p1 = reg_1506;
assign bitcast_ln14_20_fu_2537_p1 = reg_1510;
assign bitcast_ln14_21_fu_2592_p1 = reg_1506;
assign bitcast_ln14_22_fu_2597_p1 = reg_1510;
assign bitcast_ln14_23_fu_2647_p1 = reg_1506;
assign bitcast_ln14_24_fu_2652_p1 = reg_1510;
assign bitcast_ln14_25_fu_2707_p1 = reg_1506;
assign bitcast_ln14_26_fu_2712_p1 = reg_1510;
assign bitcast_ln14_27_fu_2762_p1 = reg_1506;
assign bitcast_ln14_28_fu_2767_p1 = reg_1510;
assign bitcast_ln14_29_fu_2826_p1 = reg_1506;
assign bitcast_ln14_2_fu_1777_p1 = reg_1510;
assign bitcast_ln14_30_fu_2831_p1 = reg_1510;
assign bitcast_ln14_31_fu_2860_p1 = select_ln14_30_reg_3908;
assign bitcast_ln14_32_fu_1876_p1 = reg_1514;
assign bitcast_ln14_33_fu_1954_p1 = reg_1518;
assign bitcast_ln14_34_fu_1959_p1 = reg_1523;
assign bitcast_ln14_35_fu_2068_p1 = reg_1502;
assign bitcast_ln14_36_fu_2073_p1 = reg_1514;
assign bitcast_ln14_37_fu_2172_p1 = reg_1528;
assign bitcast_ln14_38_fu_2177_p1 = reg_1533;
assign bitcast_ln14_39_fu_2257_p1 = reg_1518;
assign bitcast_ln14_3_fu_1881_p1 = reg_1506;
assign bitcast_ln14_40_fu_2262_p1 = reg_1523;
assign bitcast_ln14_41_fu_2340_p1 = reg_1538;
assign bitcast_ln14_42_fu_2345_p1 = reg_1543;
assign bitcast_ln14_43_fu_2396_p1 = reg_1502;
assign bitcast_ln14_44_fu_2401_p1 = reg_1514;
assign bitcast_ln14_45_fu_2458_p1 = init_0_load_7_reg_3285;
assign bitcast_ln14_46_fu_2462_p1 = init_1_load_7_reg_3290;
assign bitcast_ln14_47_fu_2522_p1 = reg_1528;
assign bitcast_ln14_48_fu_2527_p1 = reg_1533;
assign bitcast_ln14_49_fu_2584_p1 = init_0_load_9_reg_3364;
assign bitcast_ln14_4_fu_1886_p1 = reg_1510;
assign bitcast_ln14_50_fu_2588_p1 = init_1_load_9_reg_3369;
assign bitcast_ln14_51_fu_2637_p1 = reg_1518;
assign bitcast_ln14_52_fu_2642_p1 = reg_1523;
assign bitcast_ln14_53_fu_2699_p1 = init_0_load_11_reg_3434;
assign bitcast_ln14_54_fu_2703_p1 = init_1_load_11_reg_3439;
assign bitcast_ln14_55_fu_2752_p1 = reg_1538;
assign bitcast_ln14_56_fu_2757_p1 = reg_1543;
assign bitcast_ln14_57_fu_2790_p1 = init_0_load_13_reg_3504;
assign bitcast_ln14_58_fu_2794_p1 = init_1_load_13_reg_3509;
assign bitcast_ln14_59_fu_2843_p1 = reg_1502;
assign bitcast_ln14_5_fu_1971_p1 = reg_1506;
assign bitcast_ln14_60_fu_2848_p1 = reg_1514;
assign bitcast_ln14_61_fu_2864_p1 = init_0_load_15_reg_3574;
assign bitcast_ln14_62_fu_2868_p1 = init_1_load_15_reg_3579;
assign bitcast_ln14_63_fu_2872_p1 = select_ln14_31_reg_3923;
assign bitcast_ln14_6_fu_1976_p1 = reg_1510;
assign bitcast_ln14_7_fu_2078_p1 = reg_1506;
assign bitcast_ln14_8_fu_2083_p1 = reg_1510;
assign bitcast_ln14_9_fu_2182_p1 = reg_1506;
assign bitcast_ln14_fu_1767_p1 = reg_1502;
assign conv3_udiv_cast_cast_fu_1588_p1 = conv3_udiv_cast;
assign emission_0_address0 = emission_0_address0_local;
assign emission_0_address1 = emission_0_address1_local;
assign emission_0_ce0 = emission_0_ce0_local;
assign emission_0_ce1 = emission_0_ce1_local;
assign emission_1_address0 = emission_1_address0_local;
assign emission_1_address1 = emission_1_address1_local;
assign emission_1_ce0 = emission_1_ce0_local;
assign emission_1_ce1 = emission_1_ce1_local;
assign grp_fu_1427_p_ce = 1'b1;
assign grp_fu_1427_p_din0 = grp_fu_1484_p0;
assign grp_fu_1427_p_din1 = grp_fu_1484_p1;
assign grp_fu_1427_p_opcode = 2'd0;
assign grp_fu_1488_p3 = ((empty[0:0] == 1'b1) ? emission_1_q1 : emission_0_q1);
assign grp_fu_1495_p3 = ((empty[0:0] == 1'b1) ? emission_1_q0 : emission_0_q0);
assign grp_fu_983_p_ce = 1'b1;
assign grp_fu_983_p_din0 = grp_fu_1480_p0;
assign grp_fu_983_p_din1 = grp_fu_1480_p1;
assign grp_fu_983_p_opcode = 2'd0;
assign init_0_address0 = init_0_address0_local;
assign init_0_address1 = init_0_address1_local;
assign init_0_ce0 = init_0_ce0_local;
assign init_0_ce1 = init_0_ce1_local;
assign init_1_address0 = init_1_address0_local;
assign init_1_address1 = init_1_address1_local;
assign init_1_ce0 = init_1_ce0_local;
assign init_1_ce1 = init_1_ce1_local;
assign llike_10_address0 = zext_ln9_1_reg_3624;
assign llike_10_ce0 = llike_10_ce0_local;
assign llike_10_d0 = reg_1548;
assign llike_10_we0 = llike_10_we0_local;
assign llike_11_address0 = zext_ln9_1_reg_3624;
assign llike_11_ce0 = llike_11_ce0_local;
assign llike_11_d0 = reg_1568;
assign llike_11_we0 = llike_11_we0_local;
assign llike_12_address0 = zext_ln9_1_reg_3624;
assign llike_12_ce0 = llike_12_ce0_local;
assign llike_12_d0 = reg_1548;
assign llike_12_we0 = llike_12_we0_local;
assign llike_13_address0 = zext_ln9_1_reg_3624;
assign llike_13_ce0 = llike_13_ce0_local;
assign llike_13_d0 = reg_1568;
assign llike_13_we0 = llike_13_we0_local;
assign llike_14_address0 = zext_ln9_1_reg_3624;
assign llike_14_ce0 = llike_14_ce0_local;
assign llike_14_d0 = reg_1548;
assign llike_14_we0 = llike_14_we0_local;
assign llike_15_address0 = zext_ln9_1_reg_3624;
assign llike_15_ce0 = llike_15_ce0_local;
assign llike_15_d0 = reg_1568;
assign llike_15_we0 = llike_15_we0_local;
assign llike_16_address0 = zext_ln9_1_reg_3624;
assign llike_16_ce0 = llike_16_ce0_local;
assign llike_16_d0 = reg_1548;
assign llike_16_we0 = llike_16_we0_local;
assign llike_17_address0 = zext_ln9_1_reg_3624;
assign llike_17_ce0 = llike_17_ce0_local;
assign llike_17_d0 = reg_1568;
assign llike_17_we0 = llike_17_we0_local;
assign llike_18_address0 = zext_ln9_1_reg_3624;
assign llike_18_ce0 = llike_18_ce0_local;
assign llike_18_d0 = reg_1548;
assign llike_18_we0 = llike_18_we0_local;
assign llike_19_address0 = zext_ln9_1_reg_3624;
assign llike_19_ce0 = llike_19_ce0_local;
assign llike_19_d0 = reg_1568;
assign llike_19_we0 = llike_19_we0_local;
assign llike_1_address0 = zext_ln9_1_fu_2466_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_d0 = reg_1568;
assign llike_1_we0 = llike_1_we0_local;
assign llike_20_address0 = zext_ln9_1_reg_3624;
assign llike_20_ce0 = llike_20_ce0_local;
assign llike_20_d0 = reg_1548;
assign llike_20_we0 = llike_20_we0_local;
assign llike_21_address0 = zext_ln9_1_reg_3624;
assign llike_21_ce0 = llike_21_ce0_local;
assign llike_21_d0 = reg_1568;
assign llike_21_we0 = llike_21_we0_local;
assign llike_22_address0 = zext_ln9_1_reg_3624;
assign llike_22_ce0 = llike_22_ce0_local;
assign llike_22_d0 = reg_1548;
assign llike_22_we0 = llike_22_we0_local;
assign llike_23_address0 = zext_ln9_1_reg_3624;
assign llike_23_ce0 = llike_23_ce0_local;
assign llike_23_d0 = reg_1568;
assign llike_23_we0 = llike_23_we0_local;
assign llike_24_address0 = zext_ln9_1_reg_3624;
assign llike_24_ce0 = llike_24_ce0_local;
assign llike_24_d0 = reg_1548;
assign llike_24_we0 = llike_24_we0_local;
assign llike_25_address0 = zext_ln9_1_reg_3624;
assign llike_25_ce0 = llike_25_ce0_local;
assign llike_25_d0 = reg_1568;
assign llike_25_we0 = llike_25_we0_local;
assign llike_26_address0 = zext_ln9_1_reg_3624;
assign llike_26_ce0 = llike_26_ce0_local;
assign llike_26_d0 = reg_1548;
assign llike_26_we0 = llike_26_we0_local;
assign llike_27_address0 = zext_ln9_1_reg_3624;
assign llike_27_ce0 = llike_27_ce0_local;
assign llike_27_d0 = reg_1568;
assign llike_27_we0 = llike_27_we0_local;
assign llike_28_address0 = zext_ln9_1_reg_3624;
assign llike_28_ce0 = llike_28_ce0_local;
assign llike_28_d0 = reg_1548;
assign llike_28_we0 = llike_28_we0_local;
assign llike_29_address0 = zext_ln9_1_reg_3624;
assign llike_29_ce0 = llike_29_ce0_local;
assign llike_29_d0 = reg_1568;
assign llike_29_we0 = llike_29_we0_local;
assign llike_2_address0 = zext_ln9_1_reg_3624;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_2_d0 = reg_1548;
assign llike_2_we0 = llike_2_we0_local;
assign llike_30_address0 = zext_ln9_1_reg_3624;
assign llike_30_ce0 = llike_30_ce0_local;
assign llike_30_d0 = reg_1548;
assign llike_30_we0 = llike_30_we0_local;
assign llike_31_address0 = zext_ln9_1_reg_3624;
assign llike_31_ce0 = llike_31_ce0_local;
assign llike_31_d0 = reg_1568;
assign llike_31_we0 = llike_31_we0_local;
assign llike_3_address0 = zext_ln9_1_reg_3624;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_3_d0 = reg_1568;
assign llike_3_we0 = llike_3_we0_local;
assign llike_4_address0 = zext_ln9_1_reg_3624;
assign llike_4_ce0 = llike_4_ce0_local;
assign llike_4_d0 = reg_1548;
assign llike_4_we0 = llike_4_we0_local;
assign llike_5_address0 = zext_ln9_1_reg_3624;
assign llike_5_ce0 = llike_5_ce0_local;
assign llike_5_d0 = reg_1568;
assign llike_5_we0 = llike_5_we0_local;
assign llike_6_address0 = zext_ln9_1_reg_3624;
assign llike_6_ce0 = llike_6_ce0_local;
assign llike_6_d0 = reg_1548;
assign llike_6_we0 = llike_6_we0_local;
assign llike_7_address0 = zext_ln9_1_reg_3624;
assign llike_7_ce0 = llike_7_ce0_local;
assign llike_7_d0 = reg_1568;
assign llike_7_we0 = llike_7_we0_local;
assign llike_8_address0 = zext_ln9_1_reg_3624;
assign llike_8_ce0 = llike_8_ce0_local;
assign llike_8_d0 = reg_1548;
assign llike_8_we0 = llike_8_we0_local;
assign llike_9_address0 = zext_ln9_1_reg_3624;
assign llike_9_ce0 = llike_9_ce0_local;
assign llike_9_d0 = reg_1568;
assign llike_9_we0 = llike_9_we0_local;
assign llike_address0 = zext_ln9_1_fu_2466_p1;
assign llike_ce0 = llike_ce0_local;
assign llike_d0 = reg_1548;
assign llike_we0 = llike_we0_local;
assign lshr_ln9_fu_1612_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign or_ln14_10_fu_1981_p4 = {{{tmp_61_reg_3092}, {1'd1}}, {p_cast_reg_2926}};
assign or_ln14_11_fu_1995_p5 = {{{{tmp_61_reg_3092}, {1'd1}}, {tmp_65_reg_3106}}, {6'd32}};
assign or_ln14_12_fu_1858_p5 = {{{{tmp_61_fu_1817_p4}, {1'd1}}, {tmp_132_fu_1851_p3}}, {1'd1}};
assign or_ln14_13_fu_2088_p5 = {{{{tmp_61_reg_3092}, {1'd1}}, {tmp_132_reg_3113}}, {7'd64}};
assign or_ln14_14_fu_2109_p5 = {{{{tmp_61_reg_3092}, {1'd1}}, {tmp_132_reg_3113}}, {7'd96}};
assign or_ln14_15_fu_1927_p4 = {{{tmp_61_reg_3092}, {2'd3}}, {tmp_131_reg_3026}};
assign or_ln14_16_fu_2192_p4 = {{{tmp_61_reg_3092}, {2'd3}}, {conv3_udiv}};
assign or_ln14_17_fu_2206_p5 = {{{{tmp_61_reg_3092}, {2'd3}}, {tmp_131_reg_3026}}, {6'd32}};
assign or_ln14_18_fu_1941_p3 = {{tmp_61_reg_3092}, {3'd7}};
assign or_ln14_19_fu_2277_p3 = {{tmp_61_reg_3092}, {9'd448}};
assign or_ln14_1_fu_1682_p3 = {{tmp_5_fu_1672_p4}, {1'd1}};
assign or_ln14_20_fu_2295_p3 = {{tmp_61_reg_3092}, {9'd480}};
assign or_ln14_21_fu_2025_p4 = {{{tmp_130_fu_1964_p3}, {1'd1}}, {tmp_s_fu_2016_p4}};
assign or_ln14_22_fu_2360_p5 = {{{{tmp_130_reg_3207}, {1'd1}}, {tmp_133_reg_3345}}, {p_cast_reg_2926}};
assign or_ln14_23_fu_2375_p5 = {{{{tmp_130_reg_3207}, {1'd1}}, {tmp_s_reg_3264}}, {6'd32}};
assign or_ln14_24_fu_2050_p5 = {{{{tmp_130_fu_1964_p3}, {1'd1}}, {tmp_134_fu_2041_p4}}, {1'd1}};
assign or_ln14_25_fu_2416_p5 = {{{{tmp_130_reg_3207}, {1'd1}}, {tmp_134_reg_3269}}, {7'd64}};
assign or_ln14_26_fu_2437_p5 = {{{{tmp_130_reg_3207}, {1'd1}}, {tmp_134_reg_3269}}, {7'd96}};
assign or_ln14_27_fu_2137_p6 = {{{{{tmp_130_reg_3207}, {1'd1}}, {tmp_133_fu_2130_p3}}, {1'd1}}, {tmp_131_reg_3026}};
assign or_ln14_28_fu_2481_p6 = {{{{{tmp_130_reg_3207}, {1'd1}}, {tmp_133_reg_3345}}, {1'd1}}, {conv3_udiv}};
assign or_ln14_29_fu_2498_p7 = {{{{{{tmp_130_reg_3207}, {1'd1}}, {tmp_133_reg_3345}}, {1'd1}}, {tmp_131_reg_3026}}, {6'd32}};
assign or_ln14_2_fu_1696_p3 = {{tmp_5_reg_2985}, {7'd64}};
assign or_ln14_30_fu_2155_p5 = {{{{tmp_130_reg_3207}, {1'd1}}, {tmp_133_fu_2130_p3}}, {2'd3}};
assign or_ln14_31_fu_2542_p5 = {{{{tmp_130_reg_3207}, {1'd1}}, {tmp_133_reg_3345}}, {8'd192}};
assign or_ln14_32_fu_2563_p5 = {{{{tmp_130_reg_3207}, {1'd1}}, {tmp_133_reg_3345}}, {8'd224}};
assign or_ln14_33_fu_2227_p4 = {{{tmp_130_reg_3207}, {2'd3}}, {tmp_65_reg_3106}};
assign or_ln14_34_fu_2602_p4 = {{{tmp_130_reg_3207}, {2'd3}}, {p_cast_reg_2926}};
assign or_ln14_35_fu_2616_p5 = {{{{tmp_130_reg_3207}, {2'd3}}, {tmp_65_reg_3106}}, {6'd32}};
assign or_ln14_36_fu_2241_p5 = {{{{tmp_130_reg_3207}, {2'd3}}, {tmp_132_reg_3113}}, {1'd1}};
assign or_ln14_37_fu_2657_p5 = {{{{tmp_130_reg_3207}, {2'd3}}, {tmp_132_reg_3113}}, {7'd64}};
assign or_ln14_38_fu_2678_p5 = {{{{tmp_130_reg_3207}, {2'd3}}, {tmp_132_reg_3113}}, {7'd96}};
assign or_ln14_39_fu_2313_p4 = {{{tmp_130_reg_3207}, {3'd7}}, {tmp_131_reg_3026}};
assign or_ln14_3_fu_1714_p3 = {{tmp_5_reg_2985}, {7'd96}};
assign or_ln14_40_fu_2717_p4 = {{{tmp_130_reg_3207}, {3'd7}}, {conv3_udiv}};
assign or_ln14_41_fu_2731_p5 = {{{{tmp_130_reg_3207}, {3'd7}}, {tmp_131_reg_3026}}, {6'd32}};
assign or_ln14_42_fu_2327_p3 = {{tmp_130_reg_3207}, {4'd15}};
assign or_ln14_43_fu_2772_p3 = {{tmp_130_reg_3207}, {10'd960}};
assign or_ln14_44_fu_2798_p3 = {{tmp_130_reg_3207}, {10'd992}};
assign or_ln14_4_fu_1739_p4 = {{{tmp_1_reg_2955}, {1'd1}}, {tmp_131_fu_1732_p3}};
assign or_ln14_5_fu_1782_p4 = {{{tmp_1_reg_2955}, {1'd1}}, {conv3_udiv}};
assign or_ln14_6_fu_1796_p5 = {{{{tmp_1_reg_2955}, {1'd1}}, {tmp_131_reg_3026}}, {6'd32}};
assign or_ln14_7_fu_1754_p3 = {{tmp_1_reg_2955}, {2'd3}};
assign or_ln14_8_fu_1891_p3 = {{tmp_1_reg_2955}, {8'd192}};
assign or_ln14_9_fu_1909_p3 = {{tmp_1_reg_2955}, {8'd224}};
assign or_ln14_s_fu_1835_p4 = {{{tmp_61_fu_1817_p4}, {1'd1}}, {tmp_65_fu_1826_p4}};
assign or_ln1_fu_1652_p3 = {{lshr_ln9_fu_1612_p4}, {6'd32}};
assign or_ln_fu_1638_p3 = {{tmp_1_fu_1628_p4}, {p_cast_fu_1592_p1}};
assign p_cast_fu_1592_p1 = empty_10;
assign select_ln14_30_fu_2836_p3 = ((empty[0:0] == 1'b1) ? emission_1_q1 : emission_0_q1);
assign select_ln14_31_fu_2853_p3 = ((empty[0:0] == 1'b1) ? emission_1_q0 : emission_0_q0);
assign tmp_130_fu_1964_p3 = s_1_reg_2933[32'd5];
assign tmp_131_fu_1732_p3 = s_1_reg_2933[32'd1];
assign tmp_132_fu_1851_p3 = s_1_reg_2933[32'd2];
assign tmp_133_fu_2130_p3 = s_1_reg_2933[32'd3];
assign tmp_134_fu_2041_p4 = {{s_1_reg_2933[3:2]}};
assign tmp_1_fu_1628_p4 = {{ap_sig_allocacmp_s_1[5:3]}};
assign tmp_5_fu_1672_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign tmp_61_fu_1817_p4 = {{s_1_reg_2933[5:4]}};
assign tmp_65_fu_1826_p4 = {{s_1_reg_2933[2:1]}};
assign tmp_s_fu_2016_p4 = {{s_1_reg_2933[3:1]}};
assign zext_ln14_10_fu_2103_p1 = add_ln14_7_fu_2098_p2;
assign zext_ln14_11_fu_2124_p1 = add_ln14_8_fu_2119_p2;
assign zext_ln14_12_fu_2200_p1 = or_ln14_16_fu_2192_p4;
assign zext_ln14_13_fu_2221_p1 = add_ln14_9_fu_2216_p2;
assign zext_ln14_14_fu_2289_p1 = add_ln14_10_fu_2284_p2;
assign zext_ln14_15_fu_2307_p1 = add_ln14_11_fu_2302_p2;
assign zext_ln14_16_fu_2369_p1 = or_ln14_22_fu_2360_p5;
assign zext_ln14_17_fu_2390_p1 = add_ln14_12_fu_2385_p2;
assign zext_ln14_18_fu_2431_p1 = add_ln14_13_fu_2426_p2;
assign zext_ln14_19_fu_2452_p1 = add_ln14_14_fu_2447_p2;
assign zext_ln14_1_fu_1666_p1 = add_ln14_fu_1660_p2;
assign zext_ln14_20_fu_2492_p1 = or_ln14_28_fu_2481_p6;
assign zext_ln14_21_fu_2516_p1 = add_ln14_15_fu_2511_p2;
assign zext_ln14_22_fu_2557_p1 = add_ln14_16_fu_2552_p2;
assign zext_ln14_23_fu_2578_p1 = add_ln14_17_fu_2573_p2;
assign zext_ln14_24_fu_2610_p1 = or_ln14_34_fu_2602_p4;
assign zext_ln14_25_fu_2631_p1 = add_ln14_18_fu_2626_p2;
assign zext_ln14_26_fu_2672_p1 = add_ln14_19_fu_2667_p2;
assign zext_ln14_27_fu_2693_p1 = add_ln14_20_fu_2688_p2;
assign zext_ln14_28_fu_2725_p1 = or_ln14_40_fu_2717_p4;
assign zext_ln14_29_fu_2746_p1 = add_ln14_21_fu_2741_p2;
assign zext_ln14_2_fu_1708_p1 = add_ln14_1_fu_1703_p2;
assign zext_ln14_30_fu_2784_p1 = add_ln14_22_fu_2779_p2;
assign zext_ln14_31_fu_2810_p1 = add_ln14_23_fu_2805_p2;
assign zext_ln14_32_fu_1690_p1 = or_ln14_1_fu_1682_p3;
assign zext_ln14_33_fu_1748_p1 = or_ln14_4_fu_1739_p4;
assign zext_ln14_34_fu_1761_p1 = or_ln14_7_fu_1754_p3;
assign zext_ln14_35_fu_1845_p1 = or_ln14_s_fu_1835_p4;
assign zext_ln14_36_fu_1870_p1 = or_ln14_12_fu_1858_p5;
assign zext_ln14_37_fu_1935_p1 = or_ln14_15_fu_1927_p4;
assign zext_ln14_38_fu_1948_p1 = or_ln14_18_fu_1941_p3;
assign zext_ln14_39_fu_2035_p1 = or_ln14_21_fu_2025_p4;
assign zext_ln14_3_fu_1726_p1 = add_ln14_2_fu_1721_p2;
assign zext_ln14_40_fu_2062_p1 = or_ln14_24_fu_2050_p5;
assign zext_ln14_41_fu_2149_p1 = or_ln14_27_fu_2137_p6;
assign zext_ln14_42_fu_2166_p1 = or_ln14_30_fu_2155_p5;
assign zext_ln14_43_fu_2235_p1 = or_ln14_33_fu_2227_p4;
assign zext_ln14_44_fu_2251_p1 = or_ln14_36_fu_2241_p5;
assign zext_ln14_45_fu_2321_p1 = or_ln14_39_fu_2313_p4;
assign zext_ln14_46_fu_2334_p1 = or_ln14_42_fu_2327_p3;
assign zext_ln14_4_fu_1790_p1 = or_ln14_5_fu_1782_p4;
assign zext_ln14_5_fu_1811_p1 = add_ln14_3_fu_1806_p2;
assign zext_ln14_6_fu_1903_p1 = add_ln14_4_fu_1898_p2;
assign zext_ln14_7_fu_1921_p1 = add_ln14_5_fu_1916_p2;
assign zext_ln14_8_fu_1989_p1 = or_ln14_10_fu_1981_p4;
assign zext_ln14_9_fu_2010_p1 = add_ln14_6_fu_2005_p2;
assign zext_ln14_fu_1646_p1 = or_ln_fu_1638_p3;
assign zext_ln9_1_fu_2466_p1 = tmp_130_reg_3207;
assign zext_ln9_fu_1622_p1 = lshr_ln9_fu_1612_p4;
always @ (posedge ap_clk) begin
    conv3_udiv_cast_cast_reg_2899[10:7] <= 4'b0000;
    p_cast_reg_2926[7] <= 1'b0;
    zext_ln9_1_reg_3624[63:1] <= 63'b000000000000000000000000000000000000000000000000000000000000000;
end
endmodule 