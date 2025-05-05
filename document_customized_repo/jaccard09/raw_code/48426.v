module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,llike_address0,llike_ce0,llike_we0,llike_d0,llike_1_address0,llike_1_ce0,llike_1_we0,llike_1_d0,llike_2_address0,llike_2_ce0,llike_2_we0,llike_2_d0,llike_3_address0,llike_3_ce0,llike_3_we0,llike_3_d0,llike_4_address0,llike_4_ce0,llike_4_we0,llike_4_d0,llike_5_address0,llike_5_ce0,llike_5_we0,llike_5_d0,llike_6_address0,llike_6_ce0,llike_6_we0,llike_6_d0,llike_7_address0,llike_7_ce0,llike_7_we0,llike_7_d0,llike_8_address0,llike_8_ce0,llike_8_we0,llike_8_d0,llike_9_address0,llike_9_ce0,llike_9_we0,llike_9_d0,llike_10_address0,llike_10_ce0,llike_10_we0,llike_10_d0,llike_11_address0,llike_11_ce0,llike_11_we0,llike_11_d0,llike_12_address0,llike_12_ce0,llike_12_we0,llike_12_d0,llike_13_address0,llike_13_ce0,llike_13_we0,llike_13_d0,llike_14_address0,llike_14_ce0,llike_14_we0,llike_14_d0,llike_15_address0,llike_15_ce0,llike_15_we0,llike_15_d0,llike_16_address0,llike_16_ce0,llike_16_we0,llike_16_d0,llike_17_address0,llike_17_ce0,llike_17_we0,llike_17_d0,llike_18_address0,llike_18_ce0,llike_18_we0,llike_18_d0,llike_19_address0,llike_19_ce0,llike_19_we0,llike_19_d0,llike_20_address0,llike_20_ce0,llike_20_we0,llike_20_d0,llike_21_address0,llike_21_ce0,llike_21_we0,llike_21_d0,llike_22_address0,llike_22_ce0,llike_22_we0,llike_22_d0,llike_23_address0,llike_23_ce0,llike_23_we0,llike_23_d0,llike_24_address0,llike_24_ce0,llike_24_we0,llike_24_d0,llike_25_address0,llike_25_ce0,llike_25_we0,llike_25_d0,llike_26_address0,llike_26_ce0,llike_26_we0,llike_26_d0,llike_27_address0,llike_27_ce0,llike_27_we0,llike_27_d0,llike_28_address0,llike_28_ce0,llike_28_we0,llike_28_d0,llike_29_address0,llike_29_ce0,llike_29_we0,llike_29_d0,llike_30_address0,llike_30_ce0,llike_30_we0,llike_30_d0,llike_31_address0,llike_31_ce0,llike_31_we0,llike_31_d0,init_address0,init_ce0,init_q0,init_address1,init_ce1,init_q1,obs_load,emission_address0,emission_ce0,emission_q0,emission_address1,emission_ce1,emission_q1,zext_ln13,grp_fu_964_p_din0,grp_fu_964_p_din1,grp_fu_964_p_opcode,grp_fu_964_p_dout0,grp_fu_964_p_ce,grp_fu_1423_p_din0,grp_fu_1423_p_din1,grp_fu_1423_p_opcode,grp_fu_1423_p_dout0,grp_fu_1423_p_ce); 
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
output  [5:0] init_address0;
output   init_ce0;
input  [63:0] init_q0;
output  [5:0] init_address1;
output   init_ce1;
input  [63:0] init_q1;
input  [7:0] obs_load;
output  [11:0] emission_address0;
output   emission_ce0;
input  [63:0] emission_q0;
output  [11:0] emission_address1;
output   emission_ce1;
input  [63:0] emission_q1;
input  [7:0] zext_ln13;
output  [63:0] grp_fu_964_p_din0;
output  [63:0] grp_fu_964_p_din1;
output  [1:0] grp_fu_964_p_opcode;
input  [63:0] grp_fu_964_p_dout0;
output   grp_fu_964_p_ce;
output  [63:0] grp_fu_1423_p_din0;
output  [63:0] grp_fu_1423_p_din1;
output  [1:0] grp_fu_1423_p_opcode;
input  [63:0] grp_fu_1423_p_dout0;
output   grp_fu_1423_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_subdone;
reg   [0:0] tmp_reg_2796;
reg    ap_condition_exit_pp0_iter0_stage9;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [63:0] reg_1212;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
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
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_1216;
reg   [63:0] reg_1220;
reg   [63:0] reg_1224;
reg   [63:0] reg_1228;
reg   [63:0] reg_1248;
wire   [11:0] zext_ln13_cast_fu_1268_p1;
reg   [11:0] zext_ln13_cast_reg_2755;
reg   [6:0] s_1_reg_2782;
wire   [3:0] tmp_cast_fu_1293_p4;
reg   [3:0] tmp_cast_reg_2805;
wire   [63:0] bitcast_ln14_fu_1416_p1;
wire   [63:0] bitcast_ln14_1_fu_1421_p1;
wire   [63:0] bitcast_ln14_2_fu_1426_p1;
wire   [63:0] bitcast_ln14_3_fu_1431_p1;
wire   [2:0] tmp_133_fu_1436_p4;
reg   [2:0] tmp_133_reg_2868;
wire   [0:0] tmp_137_fu_1472_p3;
reg   [0:0] tmp_137_reg_2886;
wire   [63:0] bitcast_ln14_4_fu_1518_p1;
wire   [63:0] bitcast_ln14_5_fu_1523_p1;
wire   [63:0] bitcast_ln14_6_fu_1528_p1;
wire   [63:0] bitcast_ln14_7_fu_1533_p1;
wire   [63:0] bitcast_ln14_8_fu_1596_p1;
wire   [63:0] bitcast_ln14_9_fu_1601_p1;
wire   [63:0] bitcast_ln14_10_fu_1606_p1;
wire   [63:0] bitcast_ln14_11_fu_1611_p1;
wire   [1:0] tmp_134_fu_1616_p4;
reg   [1:0] tmp_134_reg_2966;
wire   [0:0] tmp_138_fu_1638_p3;
reg   [0:0] tmp_138_reg_2987;
wire   [1:0] tmp_135_fu_1661_p4;
reg   [1:0] tmp_135_reg_3005;
wire   [63:0] bitcast_ln14_12_fu_1709_p1;
wire   [63:0] bitcast_ln14_13_fu_1714_p1;
wire   [63:0] bitcast_ln14_14_fu_1719_p1;
wire   [63:0] bitcast_ln14_15_fu_1724_p1;
wire   [63:0] bitcast_ln14_16_fu_1799_p1;
wire   [63:0] bitcast_ln14_17_fu_1804_p1;
wire   [63:0] bitcast_ln14_18_fu_1809_p1;
wire   [63:0] bitcast_ln14_19_fu_1814_p1;
wire   [63:0] bitcast_ln14_20_fu_1879_p1;
wire   [63:0] bitcast_ln14_21_fu_1884_p1;
wire   [63:0] bitcast_ln14_22_fu_1889_p1;
wire   [63:0] bitcast_ln14_23_fu_1894_p1;
wire   [0:0] tmp_136_fu_1957_p3;
reg   [0:0] tmp_136_reg_3141;
wire   [63:0] bitcast_ln14_24_fu_1964_p1;
wire   [63:0] bitcast_ln14_25_fu_1969_p1;
wire   [63:0] bitcast_ln14_26_fu_1974_p1;
wire   [63:0] bitcast_ln14_27_fu_1979_p1;
wire   [1:0] tmp_139_fu_1997_p4;
reg   [1:0] tmp_139_reg_3199;
wire   [63:0] bitcast_ln14_28_fu_2070_p1;
wire   [63:0] bitcast_ln14_29_fu_2075_p1;
wire   [63:0] bitcast_ln14_30_fu_2080_p1;
wire   [63:0] bitcast_ln14_31_fu_2085_p1;
wire   [63:0] zext_ln9_fu_2160_p1;
reg   [63:0] zext_ln9_reg_3262;
wire   [63:0] bitcast_ln14_32_fu_2165_p1;
wire   [63:0] bitcast_ln14_33_fu_2170_p1;
wire   [63:0] bitcast_ln14_34_fu_2175_p1;
wire   [63:0] bitcast_ln14_35_fu_2180_p1;
wire   [0:0] tmp_141_fu_2185_p3;
reg   [0:0] tmp_141_reg_3316;
wire   [63:0] bitcast_ln14_36_fu_2268_p1;
wire   [63:0] bitcast_ln14_37_fu_2273_p1;
wire   [63:0] bitcast_ln14_38_fu_2278_p1;
wire   [63:0] bitcast_ln14_39_fu_2283_p1;
wire   [63:0] bitcast_ln14_40_fu_2358_p1;
wire   [63:0] bitcast_ln14_41_fu_2363_p1;
wire   [63:0] bitcast_ln14_42_fu_2368_p1;
wire   [63:0] bitcast_ln14_43_fu_2373_p1;
wire   [63:0] bitcast_ln14_44_fu_2439_p1;
wire   [63:0] bitcast_ln14_45_fu_2444_p1;
wire   [63:0] bitcast_ln14_46_fu_2449_p1;
wire   [63:0] bitcast_ln14_47_fu_2454_p1;
wire   [63:0] bitcast_ln14_48_fu_2529_p1;
wire   [63:0] bitcast_ln14_49_fu_2534_p1;
wire   [63:0] bitcast_ln14_50_fu_2539_p1;
wire   [63:0] bitcast_ln14_51_fu_2544_p1;
wire   [63:0] bitcast_ln14_52_fu_2609_p1;
wire   [63:0] bitcast_ln14_53_fu_2614_p1;
wire   [63:0] bitcast_ln14_54_fu_2619_p1;
wire   [63:0] bitcast_ln14_55_fu_2624_p1;
wire   [63:0] bitcast_ln14_56_fu_2697_p1;
wire   [63:0] bitcast_ln14_57_fu_2702_p1;
wire   [63:0] bitcast_ln14_58_fu_2707_p1;
wire   [63:0] bitcast_ln14_59_fu_2712_p1;
wire   [63:0] bitcast_ln14_60_fu_2717_p1;
wire   [63:0] bitcast_ln14_61_fu_2722_p1;
wire   [63:0] bitcast_ln14_62_fu_2727_p1;
wire   [63:0] bitcast_ln14_63_fu_2732_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln13_1_fu_1288_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_1311_p1;
wire   [63:0] zext_ln14_1_fu_1334_p1;
wire   [63:0] zext_ln14_2_fu_1353_p1;
wire   [63:0] zext_ln14_3_fu_1365_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_4_fu_1382_p1;
wire   [63:0] zext_ln14_5_fu_1394_p1;
wire   [63:0] zext_ln14_6_fu_1411_p1;
wire   [63:0] zext_ln14_8_fu_1453_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_7_fu_1467_p1;
wire   [63:0] zext_ln14_10_fu_1491_p1;
wire   [63:0] zext_ln14_9_fu_1513_p1;
wire   [63:0] zext_ln14_12_fu_1545_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_11_fu_1562_p1;
wire   [63:0] zext_ln14_15_fu_1574_p1;
wire   [63:0] zext_ln14_13_fu_1591_p1;
wire   [63:0] zext_ln14_17_fu_1633_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln14_14_fu_1656_p1;
wire   [63:0] zext_ln14_19_fu_1682_p1;
wire   [63:0] zext_ln14_16_fu_1704_p1;
wire   [63:0] zext_ln14_22_fu_1739_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln14_18_fu_1759_p1;
wire   [63:0] zext_ln14_24_fu_1774_p1;
wire   [63:0] zext_ln14_20_fu_1794_p1;
wire   [63:0] zext_ln14_26_fu_1826_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln14_21_fu_1839_p1;
wire   [63:0] zext_ln14_29_fu_1854_p1;
wire   [63:0] zext_ln14_23_fu_1874_p1;
wire   [63:0] zext_ln14_31_fu_1906_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln14_25_fu_1923_p1;
wire   [63:0] zext_ln14_33_fu_1935_p1;
wire   [63:0] zext_ln14_27_fu_1952_p1;
wire   [63:0] zext_ln14_36_fu_1992_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln14_28_fu_2017_p1;
wire   [63:0] zext_ln14_38_fu_2043_p1;
wire   [63:0] zext_ln14_30_fu_2065_p1;
wire   [63:0] zext_ln14_40_fu_2100_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln14_32_fu_2120_p1;
wire   [63:0] zext_ln14_43_fu_2135_p1;
wire   [63:0] zext_ln14_34_fu_2155_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln14_45_fu_2203_p1;
wire   [63:0] zext_ln14_35_fu_2220_p1;
wire   [63:0] zext_ln14_47_fu_2239_p1;
wire   [63:0] zext_ln14_37_fu_2263_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln14_50_fu_2298_p1;
wire   [63:0] zext_ln14_39_fu_2318_p1;
wire   [63:0] zext_ln14_52_fu_2333_p1;
wire   [63:0] zext_ln14_41_fu_2353_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln14_54_fu_2385_p1;
wire   [63:0] zext_ln14_42_fu_2399_p1;
wire   [63:0] zext_ln14_56_fu_2414_p1;
wire   [63:0] zext_ln14_44_fu_2434_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln14_57_fu_2469_p1;
wire   [63:0] zext_ln14_46_fu_2489_p1;
wire   [63:0] zext_ln14_58_fu_2504_p1;
wire   [63:0] zext_ln14_48_fu_2524_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln14_59_fu_2556_p1;
wire   [63:0] zext_ln14_49_fu_2569_p1;
wire   [63:0] zext_ln14_60_fu_2584_p1;
wire   [63:0] zext_ln14_51_fu_2604_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln14_61_fu_2636_p1;
wire   [63:0] zext_ln14_53_fu_2653_p1;
wire   [63:0] zext_ln14_62_fu_2665_p1;
wire   [63:0] zext_ln14_55_fu_2682_p1;
reg   [6:0] s_fu_242;
wire   [6:0] add_ln13_fu_2687_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg    init_ce1_local;
reg   [5:0] init_address1_local;
reg    init_ce0_local;
reg   [5:0] init_address0_local;
reg    emission_ce1_local;
reg   [11:0] emission_address1_local;
reg    emission_ce0_local;
reg   [11:0] emission_address0_local;
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
reg   [63:0] grp_fu_1204_p0;
reg   [63:0] grp_fu_1204_p1;
reg   [63:0] grp_fu_1208_p0;
reg   [63:0] grp_fu_1208_p1;
wire   [11:0] or_ln_fu_1303_p3;
wire   [4:0] tmp_s_fu_1316_p4;
wire   [5:0] or_ln1_fu_1326_p3;
wire   [11:0] shl_ln_fu_1339_p3;
wire   [11:0] add_ln14_fu_1347_p2;
wire   [5:0] or_ln13_1_fu_1358_p3;
wire   [11:0] shl_ln14_1_fu_1370_p3;
wire   [11:0] add_ln14_1_fu_1377_p2;
wire   [5:0] or_ln13_2_fu_1387_p3;
wire   [11:0] shl_ln14_2_fu_1399_p3;
wire   [11:0] add_ln14_2_fu_1406_p2;
wire   [5:0] or_ln13_3_fu_1445_p3;
wire   [11:0] or_ln14_1_fu_1458_p4;
wire   [5:0] or_ln13_4_fu_1479_p5;
wire   [11:0] shl_ln14_3_fu_1496_p5;
wire   [11:0] add_ln14_3_fu_1508_p2;
wire   [5:0] or_ln13_5_fu_1538_p3;
wire   [11:0] shl_ln14_4_fu_1550_p3;
wire   [11:0] add_ln14_4_fu_1557_p2;
wire   [5:0] or_ln13_6_fu_1567_p3;
wire   [11:0] shl_ln14_5_fu_1579_p3;
wire   [11:0] add_ln14_5_fu_1586_p2;
wire   [5:0] or_ln13_7_fu_1625_p3;
wire   [11:0] or_ln14_2_fu_1645_p5;
wire   [5:0] or_ln13_8_fu_1670_p5;
wire   [11:0] shl_ln14_6_fu_1687_p5;
wire   [11:0] add_ln14_6_fu_1699_p2;
wire   [5:0] or_ln13_9_fu_1729_p5;
wire   [11:0] shl_ln14_7_fu_1744_p5;
wire   [11:0] add_ln14_7_fu_1754_p2;
wire   [5:0] or_ln13_s_fu_1764_p5;
wire   [11:0] shl_ln14_8_fu_1779_p5;
wire   [11:0] add_ln14_8_fu_1789_p2;
wire   [5:0] or_ln13_10_fu_1819_p3;
wire   [11:0] or_ln14_3_fu_1831_p4;
wire   [5:0] or_ln13_11_fu_1844_p5;
wire   [11:0] shl_ln14_9_fu_1859_p5;
wire   [11:0] add_ln14_9_fu_1869_p2;
wire   [5:0] or_ln13_12_fu_1899_p3;
wire   [11:0] shl_ln14_s_fu_1911_p3;
wire   [11:0] add_ln14_10_fu_1918_p2;
wire   [5:0] or_ln13_13_fu_1928_p3;
wire   [11:0] shl_ln14_10_fu_1940_p3;
wire   [11:0] add_ln14_11_fu_1947_p2;
wire   [5:0] or_ln13_14_fu_1984_p3;
wire   [11:0] or_ln14_4_fu_2006_p5;
wire   [2:0] tmp_140_fu_2022_p4;
wire   [5:0] or_ln13_15_fu_2031_p5;
wire   [11:0] shl_ln14_11_fu_2048_p5;
wire   [11:0] add_ln14_12_fu_2060_p2;
wire   [5:0] or_ln13_16_fu_2090_p5;
wire   [11:0] shl_ln14_12_fu_2105_p5;
wire   [11:0] add_ln14_13_fu_2115_p2;
wire   [5:0] or_ln13_17_fu_2125_p5;
wire   [11:0] shl_ln14_13_fu_2140_p5;
wire   [11:0] add_ln14_14_fu_2150_p2;
wire   [5:0] or_ln13_18_fu_2192_p5;
wire   [11:0] or_ln14_5_fu_2208_p6;
wire   [5:0] or_ln13_19_fu_2225_p7;
wire   [11:0] shl_ln14_14_fu_2244_p7;
wire   [11:0] add_ln14_15_fu_2258_p2;
wire   [5:0] or_ln13_20_fu_2288_p5;
wire   [11:0] shl_ln14_15_fu_2303_p5;
wire   [11:0] add_ln14_16_fu_2313_p2;
wire   [5:0] or_ln13_21_fu_2323_p5;
wire   [11:0] shl_ln14_16_fu_2338_p5;
wire   [11:0] add_ln14_17_fu_2348_p2;
wire   [5:0] or_ln13_22_fu_2378_p3;
wire   [11:0] or_ln14_6_fu_2390_p5;
wire   [5:0] or_ln13_23_fu_2404_p5;
wire   [11:0] shl_ln14_17_fu_2419_p5;
wire   [11:0] add_ln14_18_fu_2429_p2;
wire   [5:0] or_ln13_24_fu_2459_p5;
wire   [11:0] shl_ln14_18_fu_2474_p5;
wire   [11:0] add_ln14_19_fu_2484_p2;
wire   [5:0] or_ln13_25_fu_2494_p5;
wire   [11:0] shl_ln14_19_fu_2509_p5;
wire   [11:0] add_ln14_20_fu_2519_p2;
wire   [5:0] or_ln13_26_fu_2549_p3;
wire   [11:0] or_ln14_7_fu_2561_p4;
wire   [5:0] or_ln13_27_fu_2574_p5;
wire   [11:0] shl_ln14_20_fu_2589_p5;
wire   [11:0] add_ln14_21_fu_2599_p2;
wire   [5:0] or_ln13_28_fu_2629_p3;
wire   [11:0] shl_ln14_21_fu_2641_p3;
wire   [11:0] add_ln14_22_fu_2648_p2;
wire   [5:0] or_ln13_29_fu_2658_p3;
wire   [11:0] shl_ln14_22_fu_2670_p3;
wire   [11:0] add_ln14_23_fu_2677_p2;
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
#0 s_fu_242 = 7'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        s_fu_242 <= 7'd0;
    end else if (((tmp_reg_2796 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        s_fu_242 <= add_ln13_fu_2687_p2;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1212 <= init_q1;
        reg_1216 <= emission_q1;
        reg_1220 <= init_q0;
        reg_1224 <= emission_q0;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1228 <= grp_fu_964_p_dout0;
        reg_1248 <= grp_fu_1423_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_1_reg_2782 <= ap_sig_allocacmp_s_1;
        tmp_cast_reg_2805 <= {{ap_sig_allocacmp_s_1[5:2]}};
        tmp_reg_2796 <= ap_sig_allocacmp_s_1[32'd6];
        zext_ln13_cast_reg_2755[7 : 0] <= zext_ln13_cast_fu_1268_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_133_reg_2868 <= {{s_1_reg_2782[5:3]}};
        tmp_137_reg_2886 <= s_1_reg_2782[32'd1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_134_reg_2966 <= {{s_1_reg_2782[5:4]}};
        tmp_135_reg_3005 <= {{s_1_reg_2782[2:1]}};
        tmp_138_reg_2987 <= s_1_reg_2782[32'd2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_136_reg_3141 <= s_1_reg_2782[32'd5];
        tmp_139_reg_3199 <= {{s_1_reg_2782[3:2]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp_141_reg_3316 <= s_1_reg_2782[32'd3];
        zext_ln9_reg_3262[0] <= zext_ln9_fu_2160_p1[0];
    end
end
always @ (*) begin
    if (((tmp_reg_2796 == 1'd1) & (1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
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
        ap_sig_allocacmp_s_1 = s_fu_242;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            emission_address0_local = zext_ln14_55_fu_2682_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            emission_address0_local = zext_ln14_51_fu_2604_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            emission_address0_local = zext_ln14_48_fu_2524_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            emission_address0_local = zext_ln14_44_fu_2434_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            emission_address0_local = zext_ln14_41_fu_2353_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            emission_address0_local = zext_ln14_37_fu_2263_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            emission_address0_local = zext_ln14_34_fu_2155_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            emission_address0_local = zext_ln14_30_fu_2065_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_address0_local = zext_ln14_27_fu_1952_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_address0_local = zext_ln14_23_fu_1874_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_address0_local = zext_ln14_20_fu_1794_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_address0_local = zext_ln14_16_fu_1704_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_address0_local = zext_ln14_13_fu_1591_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_address0_local = zext_ln14_9_fu_1513_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_address0_local = zext_ln14_6_fu_1411_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_address0_local = zext_ln14_2_fu_1353_p1;
        end else begin
            emission_address0_local = 'bx;
        end
    end else begin
        emission_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            emission_address1_local = zext_ln14_53_fu_2653_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            emission_address1_local = zext_ln14_49_fu_2569_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            emission_address1_local = zext_ln14_46_fu_2489_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            emission_address1_local = zext_ln14_42_fu_2399_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            emission_address1_local = zext_ln14_39_fu_2318_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            emission_address1_local = zext_ln14_35_fu_2220_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            emission_address1_local = zext_ln14_32_fu_2120_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            emission_address1_local = zext_ln14_28_fu_2017_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_address1_local = zext_ln14_25_fu_1923_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_address1_local = zext_ln14_21_fu_1839_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_address1_local = zext_ln14_18_fu_1759_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_address1_local = zext_ln14_14_fu_1656_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_address1_local = zext_ln14_11_fu_1562_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_address1_local = zext_ln14_7_fu_1467_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_address1_local = zext_ln14_4_fu_1382_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_address1_local = zext_ln14_fu_1311_p1;
        end else begin
            emission_address1_local = 'bx;
        end
    end else begin
        emission_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_ce0_local = 1'b1;
    end else begin
        emission_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_ce1_local = 1'b1;
    end else begin
        emission_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1204_p0 = bitcast_ln14_60_fu_2717_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1204_p0 = bitcast_ln14_56_fu_2697_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1204_p0 = bitcast_ln14_52_fu_2609_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1204_p0 = bitcast_ln14_48_fu_2529_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1204_p0 = bitcast_ln14_44_fu_2439_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1204_p0 = bitcast_ln14_40_fu_2358_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1204_p0 = bitcast_ln14_36_fu_2268_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1204_p0 = bitcast_ln14_32_fu_2165_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1204_p0 = bitcast_ln14_28_fu_2070_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1204_p0 = bitcast_ln14_24_fu_1964_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1204_p0 = bitcast_ln14_20_fu_1879_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1204_p0 = bitcast_ln14_16_fu_1799_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1204_p0 = bitcast_ln14_12_fu_1709_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1204_p0 = bitcast_ln14_8_fu_1596_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1204_p0 = bitcast_ln14_4_fu_1518_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1204_p0 = bitcast_ln14_fu_1416_p1;
    end else begin
        grp_fu_1204_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1204_p1 = bitcast_ln14_61_fu_2722_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1204_p1 = bitcast_ln14_57_fu_2702_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1204_p1 = bitcast_ln14_53_fu_2614_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1204_p1 = bitcast_ln14_49_fu_2534_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1204_p1 = bitcast_ln14_45_fu_2444_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1204_p1 = bitcast_ln14_41_fu_2363_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1204_p1 = bitcast_ln14_37_fu_2273_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1204_p1 = bitcast_ln14_33_fu_2170_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1204_p1 = bitcast_ln14_29_fu_2075_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1204_p1 = bitcast_ln14_25_fu_1969_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1204_p1 = bitcast_ln14_21_fu_1884_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1204_p1 = bitcast_ln14_17_fu_1804_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1204_p1 = bitcast_ln14_13_fu_1714_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1204_p1 = bitcast_ln14_9_fu_1601_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1204_p1 = bitcast_ln14_5_fu_1523_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1204_p1 = bitcast_ln14_1_fu_1421_p1;
    end else begin
        grp_fu_1204_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1208_p0 = bitcast_ln14_62_fu_2727_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1208_p0 = bitcast_ln14_58_fu_2707_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1208_p0 = bitcast_ln14_54_fu_2619_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1208_p0 = bitcast_ln14_50_fu_2539_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1208_p0 = bitcast_ln14_46_fu_2449_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1208_p0 = bitcast_ln14_42_fu_2368_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1208_p0 = bitcast_ln14_38_fu_2278_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1208_p0 = bitcast_ln14_34_fu_2175_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1208_p0 = bitcast_ln14_30_fu_2080_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1208_p0 = bitcast_ln14_26_fu_1974_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1208_p0 = bitcast_ln14_22_fu_1889_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1208_p0 = bitcast_ln14_18_fu_1809_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1208_p0 = bitcast_ln14_14_fu_1719_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1208_p0 = bitcast_ln14_10_fu_1606_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1208_p0 = bitcast_ln14_6_fu_1528_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1208_p0 = bitcast_ln14_2_fu_1426_p1;
    end else begin
        grp_fu_1208_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1208_p1 = bitcast_ln14_63_fu_2732_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1208_p1 = bitcast_ln14_59_fu_2712_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1208_p1 = bitcast_ln14_55_fu_2624_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1208_p1 = bitcast_ln14_51_fu_2544_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1208_p1 = bitcast_ln14_47_fu_2454_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1208_p1 = bitcast_ln14_43_fu_2373_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1208_p1 = bitcast_ln14_39_fu_2283_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1208_p1 = bitcast_ln14_35_fu_2180_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1208_p1 = bitcast_ln14_31_fu_2085_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1208_p1 = bitcast_ln14_27_fu_1979_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1208_p1 = bitcast_ln14_23_fu_1894_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1208_p1 = bitcast_ln14_19_fu_1814_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1208_p1 = bitcast_ln14_15_fu_1724_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1208_p1 = bitcast_ln14_11_fu_1611_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1208_p1 = bitcast_ln14_7_fu_1533_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1208_p1 = bitcast_ln14_3_fu_1431_p1;
    end else begin
        grp_fu_1208_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            init_address0_local = zext_ln14_62_fu_2665_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            init_address0_local = zext_ln14_60_fu_2584_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            init_address0_local = zext_ln14_58_fu_2504_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            init_address0_local = zext_ln14_56_fu_2414_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            init_address0_local = zext_ln14_52_fu_2333_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            init_address0_local = zext_ln14_47_fu_2239_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            init_address0_local = zext_ln14_43_fu_2135_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            init_address0_local = zext_ln14_38_fu_2043_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            init_address0_local = zext_ln14_33_fu_1935_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            init_address0_local = zext_ln14_29_fu_1854_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            init_address0_local = zext_ln14_24_fu_1774_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            init_address0_local = zext_ln14_19_fu_1682_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_address0_local = zext_ln14_15_fu_1574_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_address0_local = zext_ln14_10_fu_1491_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_address0_local = zext_ln14_5_fu_1394_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_address0_local = zext_ln14_1_fu_1334_p1;
        end else begin
            init_address0_local = 'bx;
        end
    end else begin
        init_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            init_address1_local = zext_ln14_61_fu_2636_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            init_address1_local = zext_ln14_59_fu_2556_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            init_address1_local = zext_ln14_57_fu_2469_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            init_address1_local = zext_ln14_54_fu_2385_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            init_address1_local = zext_ln14_50_fu_2298_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            init_address1_local = zext_ln14_45_fu_2203_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            init_address1_local = zext_ln14_40_fu_2100_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            init_address1_local = zext_ln14_36_fu_1992_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            init_address1_local = zext_ln14_31_fu_1906_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            init_address1_local = zext_ln14_26_fu_1826_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            init_address1_local = zext_ln14_22_fu_1739_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            init_address1_local = zext_ln14_17_fu_1633_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_address1_local = zext_ln14_12_fu_1545_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_address1_local = zext_ln14_8_fu_1453_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_address1_local = zext_ln14_3_fu_1365_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_address1_local = zext_ln13_1_fu_1288_p1;
        end else begin
            init_address1_local = 'bx;
        end
    end else begin
        init_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_ce0_local = 1'b1;
    end else begin
        init_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_ce1_local = 1'b1;
    end else begin
        init_ce1_local = 1'b0;
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
    if (((tmp_reg_2796 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
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
    if (((tmp_reg_2796 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
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
    if (((tmp_reg_2796 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
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
    if (((tmp_reg_2796 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
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
    if (((tmp_reg_2796 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
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
    if (((tmp_reg_2796 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
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
    if (((tmp_reg_2796 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
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
    if (((tmp_reg_2796 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
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
    if (((tmp_reg_2796 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
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
    if (((tmp_reg_2796 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
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
    if (((tmp_reg_2796 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
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
    if (((tmp_reg_2796 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
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
assign add_ln13_fu_2687_p2 = (s_1_reg_2782 + 7'd32);
assign add_ln14_10_fu_1918_p2 = (shl_ln14_s_fu_1911_p3 + zext_ln13_cast_reg_2755);
assign add_ln14_11_fu_1947_p2 = (shl_ln14_10_fu_1940_p3 + zext_ln13_cast_reg_2755);
assign add_ln14_12_fu_2060_p2 = (shl_ln14_11_fu_2048_p5 + zext_ln13_cast_reg_2755);
assign add_ln14_13_fu_2115_p2 = (shl_ln14_12_fu_2105_p5 + zext_ln13_cast_reg_2755);
assign add_ln14_14_fu_2150_p2 = (shl_ln14_13_fu_2140_p5 + zext_ln13_cast_reg_2755);
assign add_ln14_15_fu_2258_p2 = (shl_ln14_14_fu_2244_p7 + zext_ln13_cast_reg_2755);
assign add_ln14_16_fu_2313_p2 = (shl_ln14_15_fu_2303_p5 + zext_ln13_cast_reg_2755);
assign add_ln14_17_fu_2348_p2 = (shl_ln14_16_fu_2338_p5 + zext_ln13_cast_reg_2755);
assign add_ln14_18_fu_2429_p2 = (shl_ln14_17_fu_2419_p5 + zext_ln13_cast_reg_2755);
assign add_ln14_19_fu_2484_p2 = (shl_ln14_18_fu_2474_p5 + zext_ln13_cast_reg_2755);
assign add_ln14_1_fu_1377_p2 = (shl_ln14_1_fu_1370_p3 + zext_ln13_cast_reg_2755);
assign add_ln14_20_fu_2519_p2 = (shl_ln14_19_fu_2509_p5 + zext_ln13_cast_reg_2755);
assign add_ln14_21_fu_2599_p2 = (shl_ln14_20_fu_2589_p5 + zext_ln13_cast_reg_2755);
assign add_ln14_22_fu_2648_p2 = (shl_ln14_21_fu_2641_p3 + zext_ln13_cast_reg_2755);
assign add_ln14_23_fu_2677_p2 = (shl_ln14_22_fu_2670_p3 + zext_ln13_cast_reg_2755);
assign add_ln14_2_fu_1406_p2 = (shl_ln14_2_fu_1399_p3 + zext_ln13_cast_reg_2755);
assign add_ln14_3_fu_1508_p2 = (shl_ln14_3_fu_1496_p5 + zext_ln13_cast_reg_2755);
assign add_ln14_4_fu_1557_p2 = (shl_ln14_4_fu_1550_p3 + zext_ln13_cast_reg_2755);
assign add_ln14_5_fu_1586_p2 = (shl_ln14_5_fu_1579_p3 + zext_ln13_cast_reg_2755);
assign add_ln14_6_fu_1699_p2 = (shl_ln14_6_fu_1687_p5 + zext_ln13_cast_reg_2755);
assign add_ln14_7_fu_1754_p2 = (shl_ln14_7_fu_1744_p5 + zext_ln13_cast_reg_2755);
assign add_ln14_8_fu_1789_p2 = (shl_ln14_8_fu_1779_p5 + zext_ln13_cast_reg_2755);
assign add_ln14_9_fu_1869_p2 = (shl_ln14_9_fu_1859_p5 + zext_ln13_cast_reg_2755);
assign add_ln14_fu_1347_p2 = (shl_ln_fu_1339_p3 + zext_ln13_cast_fu_1268_p1);
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
assign bitcast_ln14_10_fu_1606_p1 = reg_1220;
assign bitcast_ln14_11_fu_1611_p1 = reg_1224;
assign bitcast_ln14_12_fu_1709_p1 = reg_1212;
assign bitcast_ln14_13_fu_1714_p1 = reg_1216;
assign bitcast_ln14_14_fu_1719_p1 = reg_1220;
assign bitcast_ln14_15_fu_1724_p1 = reg_1224;
assign bitcast_ln14_16_fu_1799_p1 = reg_1212;
assign bitcast_ln14_17_fu_1804_p1 = reg_1216;
assign bitcast_ln14_18_fu_1809_p1 = reg_1220;
assign bitcast_ln14_19_fu_1814_p1 = reg_1224;
assign bitcast_ln14_1_fu_1421_p1 = reg_1216;
assign bitcast_ln14_20_fu_1879_p1 = reg_1212;
assign bitcast_ln14_21_fu_1884_p1 = reg_1216;
assign bitcast_ln14_22_fu_1889_p1 = reg_1220;
assign bitcast_ln14_23_fu_1894_p1 = reg_1224;
assign bitcast_ln14_24_fu_1964_p1 = reg_1212;
assign bitcast_ln14_25_fu_1969_p1 = reg_1216;
assign bitcast_ln14_26_fu_1974_p1 = reg_1220;
assign bitcast_ln14_27_fu_1979_p1 = reg_1224;
assign bitcast_ln14_28_fu_2070_p1 = reg_1212;
assign bitcast_ln14_29_fu_2075_p1 = reg_1216;
assign bitcast_ln14_2_fu_1426_p1 = reg_1220;
assign bitcast_ln14_30_fu_2080_p1 = reg_1220;
assign bitcast_ln14_31_fu_2085_p1 = reg_1224;
assign bitcast_ln14_32_fu_2165_p1 = reg_1212;
assign bitcast_ln14_33_fu_2170_p1 = reg_1216;
assign bitcast_ln14_34_fu_2175_p1 = reg_1220;
assign bitcast_ln14_35_fu_2180_p1 = reg_1224;
assign bitcast_ln14_36_fu_2268_p1 = reg_1212;
assign bitcast_ln14_37_fu_2273_p1 = reg_1216;
assign bitcast_ln14_38_fu_2278_p1 = reg_1220;
assign bitcast_ln14_39_fu_2283_p1 = reg_1224;
assign bitcast_ln14_3_fu_1431_p1 = reg_1224;
assign bitcast_ln14_40_fu_2358_p1 = reg_1212;
assign bitcast_ln14_41_fu_2363_p1 = reg_1216;
assign bitcast_ln14_42_fu_2368_p1 = reg_1220;
assign bitcast_ln14_43_fu_2373_p1 = reg_1224;
assign bitcast_ln14_44_fu_2439_p1 = reg_1212;
assign bitcast_ln14_45_fu_2444_p1 = reg_1216;
assign bitcast_ln14_46_fu_2449_p1 = reg_1220;
assign bitcast_ln14_47_fu_2454_p1 = reg_1224;
assign bitcast_ln14_48_fu_2529_p1 = reg_1212;
assign bitcast_ln14_49_fu_2534_p1 = reg_1216;
assign bitcast_ln14_4_fu_1518_p1 = reg_1212;
assign bitcast_ln14_50_fu_2539_p1 = reg_1220;
assign bitcast_ln14_51_fu_2544_p1 = reg_1224;
assign bitcast_ln14_52_fu_2609_p1 = reg_1212;
assign bitcast_ln14_53_fu_2614_p1 = reg_1216;
assign bitcast_ln14_54_fu_2619_p1 = reg_1220;
assign bitcast_ln14_55_fu_2624_p1 = reg_1224;
assign bitcast_ln14_56_fu_2697_p1 = reg_1212;
assign bitcast_ln14_57_fu_2702_p1 = reg_1216;
assign bitcast_ln14_58_fu_2707_p1 = reg_1220;
assign bitcast_ln14_59_fu_2712_p1 = reg_1224;
assign bitcast_ln14_5_fu_1523_p1 = reg_1216;
assign bitcast_ln14_60_fu_2717_p1 = reg_1212;
assign bitcast_ln14_61_fu_2722_p1 = reg_1216;
assign bitcast_ln14_62_fu_2727_p1 = reg_1220;
assign bitcast_ln14_63_fu_2732_p1 = reg_1224;
assign bitcast_ln14_6_fu_1528_p1 = reg_1220;
assign bitcast_ln14_7_fu_1533_p1 = reg_1224;
assign bitcast_ln14_8_fu_1596_p1 = reg_1212;
assign bitcast_ln14_9_fu_1601_p1 = reg_1216;
assign bitcast_ln14_fu_1416_p1 = reg_1212;
assign emission_address0 = emission_address0_local;
assign emission_address1 = emission_address1_local;
assign emission_ce0 = emission_ce0_local;
assign emission_ce1 = emission_ce1_local;
assign grp_fu_1423_p_ce = 1'b1;
assign grp_fu_1423_p_din0 = grp_fu_1208_p0;
assign grp_fu_1423_p_din1 = grp_fu_1208_p1;
assign grp_fu_1423_p_opcode = 2'd0;
assign grp_fu_964_p_ce = 1'b1;
assign grp_fu_964_p_din0 = grp_fu_1204_p0;
assign grp_fu_964_p_din1 = grp_fu_1204_p1;
assign grp_fu_964_p_opcode = 2'd0;
assign init_address0 = init_address0_local;
assign init_address1 = init_address1_local;
assign init_ce0 = init_ce0_local;
assign init_ce1 = init_ce1_local;
assign llike_10_address0 = zext_ln9_reg_3262;
assign llike_10_ce0 = llike_10_ce0_local;
assign llike_10_d0 = reg_1228;
assign llike_10_we0 = llike_10_we0_local;
assign llike_11_address0 = zext_ln9_reg_3262;
assign llike_11_ce0 = llike_11_ce0_local;
assign llike_11_d0 = reg_1248;
assign llike_11_we0 = llike_11_we0_local;
assign llike_12_address0 = zext_ln9_reg_3262;
assign llike_12_ce0 = llike_12_ce0_local;
assign llike_12_d0 = reg_1228;
assign llike_12_we0 = llike_12_we0_local;
assign llike_13_address0 = zext_ln9_reg_3262;
assign llike_13_ce0 = llike_13_ce0_local;
assign llike_13_d0 = reg_1248;
assign llike_13_we0 = llike_13_we0_local;
assign llike_14_address0 = zext_ln9_reg_3262;
assign llike_14_ce0 = llike_14_ce0_local;
assign llike_14_d0 = reg_1228;
assign llike_14_we0 = llike_14_we0_local;
assign llike_15_address0 = zext_ln9_reg_3262;
assign llike_15_ce0 = llike_15_ce0_local;
assign llike_15_d0 = reg_1248;
assign llike_15_we0 = llike_15_we0_local;
assign llike_16_address0 = zext_ln9_reg_3262;
assign llike_16_ce0 = llike_16_ce0_local;
assign llike_16_d0 = reg_1228;
assign llike_16_we0 = llike_16_we0_local;
assign llike_17_address0 = zext_ln9_reg_3262;
assign llike_17_ce0 = llike_17_ce0_local;
assign llike_17_d0 = reg_1248;
assign llike_17_we0 = llike_17_we0_local;
assign llike_18_address0 = zext_ln9_reg_3262;
assign llike_18_ce0 = llike_18_ce0_local;
assign llike_18_d0 = reg_1228;
assign llike_18_we0 = llike_18_we0_local;
assign llike_19_address0 = zext_ln9_reg_3262;
assign llike_19_ce0 = llike_19_ce0_local;
assign llike_19_d0 = reg_1248;
assign llike_19_we0 = llike_19_we0_local;
assign llike_1_address0 = zext_ln9_fu_2160_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_d0 = reg_1248;
assign llike_1_we0 = llike_1_we0_local;
assign llike_20_address0 = zext_ln9_reg_3262;
assign llike_20_ce0 = llike_20_ce0_local;
assign llike_20_d0 = reg_1228;
assign llike_20_we0 = llike_20_we0_local;
assign llike_21_address0 = zext_ln9_reg_3262;
assign llike_21_ce0 = llike_21_ce0_local;
assign llike_21_d0 = reg_1248;
assign llike_21_we0 = llike_21_we0_local;
assign llike_22_address0 = zext_ln9_reg_3262;
assign llike_22_ce0 = llike_22_ce0_local;
assign llike_22_d0 = reg_1228;
assign llike_22_we0 = llike_22_we0_local;
assign llike_23_address0 = zext_ln9_reg_3262;
assign llike_23_ce0 = llike_23_ce0_local;
assign llike_23_d0 = reg_1248;
assign llike_23_we0 = llike_23_we0_local;
assign llike_24_address0 = zext_ln9_reg_3262;
assign llike_24_ce0 = llike_24_ce0_local;
assign llike_24_d0 = reg_1228;
assign llike_24_we0 = llike_24_we0_local;
assign llike_25_address0 = zext_ln9_reg_3262;
assign llike_25_ce0 = llike_25_ce0_local;
assign llike_25_d0 = reg_1248;
assign llike_25_we0 = llike_25_we0_local;
assign llike_26_address0 = zext_ln9_reg_3262;
assign llike_26_ce0 = llike_26_ce0_local;
assign llike_26_d0 = reg_1228;
assign llike_26_we0 = llike_26_we0_local;
assign llike_27_address0 = zext_ln9_reg_3262;
assign llike_27_ce0 = llike_27_ce0_local;
assign llike_27_d0 = reg_1248;
assign llike_27_we0 = llike_27_we0_local;
assign llike_28_address0 = zext_ln9_reg_3262;
assign llike_28_ce0 = llike_28_ce0_local;
assign llike_28_d0 = reg_1228;
assign llike_28_we0 = llike_28_we0_local;
assign llike_29_address0 = zext_ln9_reg_3262;
assign llike_29_ce0 = llike_29_ce0_local;
assign llike_29_d0 = reg_1248;
assign llike_29_we0 = llike_29_we0_local;
assign llike_2_address0 = zext_ln9_reg_3262;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_2_d0 = reg_1228;
assign llike_2_we0 = llike_2_we0_local;
assign llike_30_address0 = zext_ln9_reg_3262;
assign llike_30_ce0 = llike_30_ce0_local;
assign llike_30_d0 = reg_1228;
assign llike_30_we0 = llike_30_we0_local;
assign llike_31_address0 = zext_ln9_reg_3262;
assign llike_31_ce0 = llike_31_ce0_local;
assign llike_31_d0 = reg_1248;
assign llike_31_we0 = llike_31_we0_local;
assign llike_3_address0 = zext_ln9_reg_3262;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_3_d0 = reg_1248;
assign llike_3_we0 = llike_3_we0_local;
assign llike_4_address0 = zext_ln9_reg_3262;
assign llike_4_ce0 = llike_4_ce0_local;
assign llike_4_d0 = reg_1228;
assign llike_4_we0 = llike_4_we0_local;
assign llike_5_address0 = zext_ln9_reg_3262;
assign llike_5_ce0 = llike_5_ce0_local;
assign llike_5_d0 = reg_1248;
assign llike_5_we0 = llike_5_we0_local;
assign llike_6_address0 = zext_ln9_reg_3262;
assign llike_6_ce0 = llike_6_ce0_local;
assign llike_6_d0 = reg_1228;
assign llike_6_we0 = llike_6_we0_local;
assign llike_7_address0 = zext_ln9_reg_3262;
assign llike_7_ce0 = llike_7_ce0_local;
assign llike_7_d0 = reg_1248;
assign llike_7_we0 = llike_7_we0_local;
assign llike_8_address0 = zext_ln9_reg_3262;
assign llike_8_ce0 = llike_8_ce0_local;
assign llike_8_d0 = reg_1228;
assign llike_8_we0 = llike_8_we0_local;
assign llike_9_address0 = zext_ln9_reg_3262;
assign llike_9_ce0 = llike_9_ce0_local;
assign llike_9_d0 = reg_1248;
assign llike_9_we0 = llike_9_we0_local;
assign llike_address0 = zext_ln9_fu_2160_p1;
assign llike_ce0 = llike_ce0_local;
assign llike_d0 = reg_1228;
assign llike_we0 = llike_we0_local;
assign or_ln13_10_fu_1819_p3 = {{tmp_134_reg_2966}, {4'd12}};
assign or_ln13_11_fu_1844_p5 = {{{{tmp_134_reg_2966}, {2'd3}}, {tmp_137_reg_2886}}, {1'd1}};
assign or_ln13_12_fu_1899_p3 = {{tmp_134_reg_2966}, {4'd14}};
assign or_ln13_13_fu_1928_p3 = {{tmp_134_reg_2966}, {4'd15}};
assign or_ln13_14_fu_1984_p3 = {{tmp_136_fu_1957_p3}, {5'd16}};
assign or_ln13_15_fu_2031_p5 = {{{{tmp_136_fu_1957_p3}, {1'd1}}, {tmp_140_fu_2022_p4}}, {1'd1}};
assign or_ln13_16_fu_2090_p5 = {{{{tmp_136_reg_3141}, {1'd1}}, {tmp_139_reg_3199}}, {2'd2}};
assign or_ln13_17_fu_2125_p5 = {{{{tmp_136_reg_3141}, {1'd1}}, {tmp_139_reg_3199}}, {2'd3}};
assign or_ln13_18_fu_2192_p5 = {{{{tmp_136_reg_3141}, {1'd1}}, {tmp_141_fu_2185_p3}}, {3'd4}};
assign or_ln13_19_fu_2225_p7 = {{{{{{tmp_136_reg_3141}, {1'd1}}, {tmp_141_fu_2185_p3}}, {1'd1}}, {tmp_137_reg_2886}}, {1'd1}};
assign or_ln13_1_fu_1358_p3 = {{tmp_cast_reg_2805}, {2'd2}};
assign or_ln13_20_fu_2288_p5 = {{{{tmp_136_reg_3141}, {1'd1}}, {tmp_141_reg_3316}}, {3'd6}};
assign or_ln13_21_fu_2323_p5 = {{{{tmp_136_reg_3141}, {1'd1}}, {tmp_141_reg_3316}}, {3'd7}};
assign or_ln13_22_fu_2378_p3 = {{tmp_136_reg_3141}, {5'd24}};
assign or_ln13_23_fu_2404_p5 = {{{{tmp_136_reg_3141}, {2'd3}}, {tmp_135_reg_3005}}, {1'd1}};
assign or_ln13_24_fu_2459_p5 = {{{{tmp_136_reg_3141}, {2'd3}}, {tmp_138_reg_2987}}, {2'd2}};
assign or_ln13_25_fu_2494_p5 = {{{{tmp_136_reg_3141}, {2'd3}}, {tmp_138_reg_2987}}, {2'd3}};
assign or_ln13_26_fu_2549_p3 = {{tmp_136_reg_3141}, {5'd28}};
assign or_ln13_27_fu_2574_p5 = {{{{tmp_136_reg_3141}, {3'd7}}, {tmp_137_reg_2886}}, {1'd1}};
assign or_ln13_28_fu_2629_p3 = {{tmp_136_reg_3141}, {5'd30}};
assign or_ln13_29_fu_2658_p3 = {{tmp_136_reg_3141}, {5'd31}};
assign or_ln13_2_fu_1387_p3 = {{tmp_cast_reg_2805}, {2'd3}};
assign or_ln13_3_fu_1445_p3 = {{tmp_133_fu_1436_p4}, {3'd4}};
assign or_ln13_4_fu_1479_p5 = {{{{tmp_133_fu_1436_p4}, {1'd1}}, {tmp_137_fu_1472_p3}}, {1'd1}};
assign or_ln13_5_fu_1538_p3 = {{tmp_133_reg_2868}, {3'd6}};
assign or_ln13_6_fu_1567_p3 = {{tmp_133_reg_2868}, {3'd7}};
assign or_ln13_7_fu_1625_p3 = {{tmp_134_fu_1616_p4}, {4'd8}};
assign or_ln13_8_fu_1670_p5 = {{{{tmp_134_fu_1616_p4}, {1'd1}}, {tmp_135_fu_1661_p4}}, {1'd1}};
assign or_ln13_9_fu_1729_p5 = {{{{tmp_134_reg_2966}, {1'd1}}, {tmp_138_reg_2987}}, {2'd2}};
assign or_ln13_s_fu_1764_p5 = {{{{tmp_134_reg_2966}, {1'd1}}, {tmp_138_reg_2987}}, {2'd3}};
assign or_ln14_1_fu_1458_p4 = {{{tmp_133_fu_1436_p4}, {1'd1}}, {obs_load}};
assign or_ln14_2_fu_1645_p5 = {{{{tmp_134_fu_1616_p4}, {1'd1}}, {tmp_138_fu_1638_p3}}, {obs_load}};
assign or_ln14_3_fu_1831_p4 = {{{tmp_134_reg_2966}, {2'd3}}, {obs_load}};
assign or_ln14_4_fu_2006_p5 = {{{{tmp_136_fu_1957_p3}, {1'd1}}, {tmp_139_fu_1997_p4}}, {obs_load}};
assign or_ln14_5_fu_2208_p6 = {{{{{tmp_136_reg_3141}, {1'd1}}, {tmp_141_fu_2185_p3}}, {1'd1}}, {obs_load}};
assign or_ln14_6_fu_2390_p5 = {{{{tmp_136_reg_3141}, {2'd3}}, {tmp_138_reg_2987}}, {obs_load}};
assign or_ln14_7_fu_2561_p4 = {{{tmp_136_reg_3141}, {3'd7}}, {obs_load}};
assign or_ln1_fu_1326_p3 = {{tmp_s_fu_1316_p4}, {1'd1}};
assign or_ln_fu_1303_p3 = {{tmp_cast_fu_1293_p4}, {obs_load}};
assign shl_ln14_10_fu_1940_p3 = {{tmp_134_reg_2966}, {10'd960}};
assign shl_ln14_11_fu_2048_p5 = {{{{tmp_136_fu_1957_p3}, {1'd1}}, {tmp_140_fu_2022_p4}}, {7'd64}};
assign shl_ln14_12_fu_2105_p5 = {{{{tmp_136_reg_3141}, {1'd1}}, {tmp_139_reg_3199}}, {8'd128}};
assign shl_ln14_13_fu_2140_p5 = {{{{tmp_136_reg_3141}, {1'd1}}, {tmp_139_reg_3199}}, {8'd192}};
assign shl_ln14_14_fu_2244_p7 = {{{{{{tmp_136_reg_3141}, {1'd1}}, {tmp_141_fu_2185_p3}}, {1'd1}}, {tmp_137_reg_2886}}, {7'd64}};
assign shl_ln14_15_fu_2303_p5 = {{{{tmp_136_reg_3141}, {1'd1}}, {tmp_141_reg_3316}}, {9'd384}};
assign shl_ln14_16_fu_2338_p5 = {{{{tmp_136_reg_3141}, {1'd1}}, {tmp_141_reg_3316}}, {9'd448}};
assign shl_ln14_17_fu_2419_p5 = {{{{tmp_136_reg_3141}, {2'd3}}, {tmp_135_reg_3005}}, {7'd64}};
assign shl_ln14_18_fu_2474_p5 = {{{{tmp_136_reg_3141}, {2'd3}}, {tmp_138_reg_2987}}, {8'd128}};
assign shl_ln14_19_fu_2509_p5 = {{{{tmp_136_reg_3141}, {2'd3}}, {tmp_138_reg_2987}}, {8'd192}};
assign shl_ln14_1_fu_1370_p3 = {{tmp_cast_reg_2805}, {8'd128}};
assign shl_ln14_20_fu_2589_p5 = {{{{tmp_136_reg_3141}, {3'd7}}, {tmp_137_reg_2886}}, {7'd64}};
assign shl_ln14_21_fu_2641_p3 = {{tmp_136_reg_3141}, {11'd1920}};
assign shl_ln14_22_fu_2670_p3 = {{tmp_136_reg_3141}, {11'd1984}};
assign shl_ln14_2_fu_1399_p3 = {{tmp_cast_reg_2805}, {8'd192}};
assign shl_ln14_3_fu_1496_p5 = {{{{tmp_133_fu_1436_p4}, {1'd1}}, {tmp_137_fu_1472_p3}}, {7'd64}};
assign shl_ln14_4_fu_1550_p3 = {{tmp_133_reg_2868}, {9'd384}};
assign shl_ln14_5_fu_1579_p3 = {{tmp_133_reg_2868}, {9'd448}};
assign shl_ln14_6_fu_1687_p5 = {{{{tmp_134_fu_1616_p4}, {1'd1}}, {tmp_135_fu_1661_p4}}, {7'd64}};
assign shl_ln14_7_fu_1744_p5 = {{{{tmp_134_reg_2966}, {1'd1}}, {tmp_138_reg_2987}}, {8'd128}};
assign shl_ln14_8_fu_1779_p5 = {{{{tmp_134_reg_2966}, {1'd1}}, {tmp_138_reg_2987}}, {8'd192}};
assign shl_ln14_9_fu_1859_p5 = {{{{tmp_134_reg_2966}, {2'd3}}, {tmp_137_reg_2886}}, {7'd64}};
assign shl_ln14_s_fu_1911_p3 = {{tmp_134_reg_2966}, {10'd896}};
assign shl_ln_fu_1339_p3 = {{tmp_s_fu_1316_p4}, {7'd64}};
assign tmp_133_fu_1436_p4 = {{s_1_reg_2782[5:3]}};
assign tmp_134_fu_1616_p4 = {{s_1_reg_2782[5:4]}};
assign tmp_135_fu_1661_p4 = {{s_1_reg_2782[2:1]}};
assign tmp_136_fu_1957_p3 = s_1_reg_2782[32'd5];
assign tmp_137_fu_1472_p3 = s_1_reg_2782[32'd1];
assign tmp_138_fu_1638_p3 = s_1_reg_2782[32'd2];
assign tmp_139_fu_1997_p4 = {{s_1_reg_2782[3:2]}};
assign tmp_140_fu_2022_p4 = {{s_1_reg_2782[3:1]}};
assign tmp_141_fu_2185_p3 = s_1_reg_2782[32'd3];
assign tmp_cast_fu_1293_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign tmp_s_fu_1316_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign zext_ln13_1_fu_1288_p1 = ap_sig_allocacmp_s_1;
assign zext_ln13_cast_fu_1268_p1 = zext_ln13;
assign zext_ln14_10_fu_1491_p1 = or_ln13_4_fu_1479_p5;
assign zext_ln14_11_fu_1562_p1 = add_ln14_4_fu_1557_p2;
assign zext_ln14_12_fu_1545_p1 = or_ln13_5_fu_1538_p3;
assign zext_ln14_13_fu_1591_p1 = add_ln14_5_fu_1586_p2;
assign zext_ln14_14_fu_1656_p1 = or_ln14_2_fu_1645_p5;
assign zext_ln14_15_fu_1574_p1 = or_ln13_6_fu_1567_p3;
assign zext_ln14_16_fu_1704_p1 = add_ln14_6_fu_1699_p2;
assign zext_ln14_17_fu_1633_p1 = or_ln13_7_fu_1625_p3;
assign zext_ln14_18_fu_1759_p1 = add_ln14_7_fu_1754_p2;
assign zext_ln14_19_fu_1682_p1 = or_ln13_8_fu_1670_p5;
assign zext_ln14_1_fu_1334_p1 = or_ln1_fu_1326_p3;
assign zext_ln14_20_fu_1794_p1 = add_ln14_8_fu_1789_p2;
assign zext_ln14_21_fu_1839_p1 = or_ln14_3_fu_1831_p4;
assign zext_ln14_22_fu_1739_p1 = or_ln13_9_fu_1729_p5;
assign zext_ln14_23_fu_1874_p1 = add_ln14_9_fu_1869_p2;
assign zext_ln14_24_fu_1774_p1 = or_ln13_s_fu_1764_p5;
assign zext_ln14_25_fu_1923_p1 = add_ln14_10_fu_1918_p2;
assign zext_ln14_26_fu_1826_p1 = or_ln13_10_fu_1819_p3;
assign zext_ln14_27_fu_1952_p1 = add_ln14_11_fu_1947_p2;
assign zext_ln14_28_fu_2017_p1 = or_ln14_4_fu_2006_p5;
assign zext_ln14_29_fu_1854_p1 = or_ln13_11_fu_1844_p5;
assign zext_ln14_2_fu_1353_p1 = add_ln14_fu_1347_p2;
assign zext_ln14_30_fu_2065_p1 = add_ln14_12_fu_2060_p2;
assign zext_ln14_31_fu_1906_p1 = or_ln13_12_fu_1899_p3;
assign zext_ln14_32_fu_2120_p1 = add_ln14_13_fu_2115_p2;
assign zext_ln14_33_fu_1935_p1 = or_ln13_13_fu_1928_p3;
assign zext_ln14_34_fu_2155_p1 = add_ln14_14_fu_2150_p2;
assign zext_ln14_35_fu_2220_p1 = or_ln14_5_fu_2208_p6;
assign zext_ln14_36_fu_1992_p1 = or_ln13_14_fu_1984_p3;
assign zext_ln14_37_fu_2263_p1 = add_ln14_15_fu_2258_p2;
assign zext_ln14_38_fu_2043_p1 = or_ln13_15_fu_2031_p5;
assign zext_ln14_39_fu_2318_p1 = add_ln14_16_fu_2313_p2;
assign zext_ln14_3_fu_1365_p1 = or_ln13_1_fu_1358_p3;
assign zext_ln14_40_fu_2100_p1 = or_ln13_16_fu_2090_p5;
assign zext_ln14_41_fu_2353_p1 = add_ln14_17_fu_2348_p2;
assign zext_ln14_42_fu_2399_p1 = or_ln14_6_fu_2390_p5;
assign zext_ln14_43_fu_2135_p1 = or_ln13_17_fu_2125_p5;
assign zext_ln14_44_fu_2434_p1 = add_ln14_18_fu_2429_p2;
assign zext_ln14_45_fu_2203_p1 = or_ln13_18_fu_2192_p5;
assign zext_ln14_46_fu_2489_p1 = add_ln14_19_fu_2484_p2;
assign zext_ln14_47_fu_2239_p1 = or_ln13_19_fu_2225_p7;
assign zext_ln14_48_fu_2524_p1 = add_ln14_20_fu_2519_p2;
assign zext_ln14_49_fu_2569_p1 = or_ln14_7_fu_2561_p4;
assign zext_ln14_4_fu_1382_p1 = add_ln14_1_fu_1377_p2;
assign zext_ln14_50_fu_2298_p1 = or_ln13_20_fu_2288_p5;
assign zext_ln14_51_fu_2604_p1 = add_ln14_21_fu_2599_p2;
assign zext_ln14_52_fu_2333_p1 = or_ln13_21_fu_2323_p5;
assign zext_ln14_53_fu_2653_p1 = add_ln14_22_fu_2648_p2;
assign zext_ln14_54_fu_2385_p1 = or_ln13_22_fu_2378_p3;
assign zext_ln14_55_fu_2682_p1 = add_ln14_23_fu_2677_p2;
assign zext_ln14_56_fu_2414_p1 = or_ln13_23_fu_2404_p5;
assign zext_ln14_57_fu_2469_p1 = or_ln13_24_fu_2459_p5;
assign zext_ln14_58_fu_2504_p1 = or_ln13_25_fu_2494_p5;
assign zext_ln14_59_fu_2556_p1 = or_ln13_26_fu_2549_p3;
assign zext_ln14_5_fu_1394_p1 = or_ln13_2_fu_1387_p3;
assign zext_ln14_60_fu_2584_p1 = or_ln13_27_fu_2574_p5;
assign zext_ln14_61_fu_2636_p1 = or_ln13_28_fu_2629_p3;
assign zext_ln14_62_fu_2665_p1 = or_ln13_29_fu_2658_p3;
assign zext_ln14_6_fu_1411_p1 = add_ln14_2_fu_1406_p2;
assign zext_ln14_7_fu_1467_p1 = or_ln14_1_fu_1458_p4;
assign zext_ln14_8_fu_1453_p1 = or_ln13_3_fu_1445_p3;
assign zext_ln14_9_fu_1513_p1 = add_ln14_3_fu_1508_p2;
assign zext_ln14_fu_1311_p1 = or_ln_fu_1303_p3;
assign zext_ln9_fu_2160_p1 = tmp_136_reg_3141;
always @ (posedge ap_clk) begin
    zext_ln13_cast_reg_2755[11:8] <= 4'b0000;
    zext_ln9_reg_3262[63:1] <= 63'b000000000000000000000000000000000000000000000000000000000000000;
end
endmodule 