module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,init_address0,init_ce0,init_q0,init_address1,init_ce1,init_q1,obs_load,emission_address0,emission_ce0,emission_q0,emission_address1,emission_ce1,emission_q1,obs_load_cast,add6_31134_out,add6_31134_out_ap_vld,add6_30132_out,add6_30132_out_ap_vld,add6_29130_out,add6_29130_out_ap_vld,add6_28128_out,add6_28128_out_ap_vld,add6_27126_out,add6_27126_out_ap_vld,add6_26124_out,add6_26124_out_ap_vld,add6_25122_out,add6_25122_out_ap_vld,add6_24120_out,add6_24120_out_ap_vld,add6_23118_out,add6_23118_out_ap_vld,add6_22116_out,add6_22116_out_ap_vld,add6_21114_out,add6_21114_out_ap_vld,add6_20112_out,add6_20112_out_ap_vld,add6_19110_out,add6_19110_out_ap_vld,add6_18108_out,add6_18108_out_ap_vld,add6_17106_out,add6_17106_out_ap_vld,add6_16104_out,add6_16104_out_ap_vld,add6_15102_out,add6_15102_out_ap_vld,add6_14100_out,add6_14100_out_ap_vld,add6_1398_out,add6_1398_out_ap_vld,add6_1296_out,add6_1296_out_ap_vld,add6_1194_out,add6_1194_out_ap_vld,add6_1092_out,add6_1092_out_ap_vld,add6_990_out,add6_990_out_ap_vld,add6_888_out,add6_888_out_ap_vld,add6_786_out,add6_786_out_ap_vld,add6_684_out,add6_684_out_ap_vld,add6_582_out,add6_582_out_ap_vld,add6_480_out,add6_480_out_ap_vld,add6_378_out,add6_378_out_ap_vld,add6_276_out,add6_276_out_ap_vld,add6_174_out,add6_174_out_ap_vld,add672_out,add672_out_ap_vld,add6_3170_out,add6_3170_out_ap_vld,add6_3068_out,add6_3068_out_ap_vld,add6_2966_out,add6_2966_out_ap_vld,add6_2864_out,add6_2864_out_ap_vld,add6_2762_out,add6_2762_out_ap_vld,add6_2660_out,add6_2660_out_ap_vld,add6_2558_out,add6_2558_out_ap_vld,add6_2456_out,add6_2456_out_ap_vld,add6_2354_out,add6_2354_out_ap_vld,add6_2252_out,add6_2252_out_ap_vld,add6_2150_out,add6_2150_out_ap_vld,add6_2048_out,add6_2048_out_ap_vld,add6_1946_out,add6_1946_out_ap_vld,add6_1844_out,add6_1844_out_ap_vld,add6_1742_out,add6_1742_out_ap_vld,add6_1640_out,add6_1640_out_ap_vld,add6_1538_out,add6_1538_out_ap_vld,add6_1436_out,add6_1436_out_ap_vld,add6_1334_out,add6_1334_out_ap_vld,add6_1232_out,add6_1232_out_ap_vld,add6_1130_out,add6_1130_out_ap_vld,add6_1028_out,add6_1028_out_ap_vld,add6_926_out,add6_926_out_ap_vld,add6_824_out,add6_824_out_ap_vld,add6_722_out,add6_722_out_ap_vld,add6_620_out,add6_620_out_ap_vld,add6_518_out,add6_518_out_ap_vld,add6_416_out,add6_416_out_ap_vld,add6_314_out,add6_314_out_ap_vld,add6_212_out,add6_212_out_ap_vld,add6_110_out,add6_110_out_ap_vld,add61_out,add61_out_ap_vld,grp_fu_3803_p_din0,grp_fu_3803_p_din1,grp_fu_3803_p_opcode,grp_fu_3803_p_dout0,grp_fu_3803_p_ce,grp_fu_6727_p_din0,grp_fu_6727_p_din1,grp_fu_6727_p_opcode,grp_fu_6727_p_dout0,grp_fu_6727_p_ce); 
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
input  [7:0] obs_load_cast;
output  [63:0] add6_31134_out;
output   add6_31134_out_ap_vld;
output  [63:0] add6_30132_out;
output   add6_30132_out_ap_vld;
output  [63:0] add6_29130_out;
output   add6_29130_out_ap_vld;
output  [63:0] add6_28128_out;
output   add6_28128_out_ap_vld;
output  [63:0] add6_27126_out;
output   add6_27126_out_ap_vld;
output  [63:0] add6_26124_out;
output   add6_26124_out_ap_vld;
output  [63:0] add6_25122_out;
output   add6_25122_out_ap_vld;
output  [63:0] add6_24120_out;
output   add6_24120_out_ap_vld;
output  [63:0] add6_23118_out;
output   add6_23118_out_ap_vld;
output  [63:0] add6_22116_out;
output   add6_22116_out_ap_vld;
output  [63:0] add6_21114_out;
output   add6_21114_out_ap_vld;
output  [63:0] add6_20112_out;
output   add6_20112_out_ap_vld;
output  [63:0] add6_19110_out;
output   add6_19110_out_ap_vld;
output  [63:0] add6_18108_out;
output   add6_18108_out_ap_vld;
output  [63:0] add6_17106_out;
output   add6_17106_out_ap_vld;
output  [63:0] add6_16104_out;
output   add6_16104_out_ap_vld;
output  [63:0] add6_15102_out;
output   add6_15102_out_ap_vld;
output  [63:0] add6_14100_out;
output   add6_14100_out_ap_vld;
output  [63:0] add6_1398_out;
output   add6_1398_out_ap_vld;
output  [63:0] add6_1296_out;
output   add6_1296_out_ap_vld;
output  [63:0] add6_1194_out;
output   add6_1194_out_ap_vld;
output  [63:0] add6_1092_out;
output   add6_1092_out_ap_vld;
output  [63:0] add6_990_out;
output   add6_990_out_ap_vld;
output  [63:0] add6_888_out;
output   add6_888_out_ap_vld;
output  [63:0] add6_786_out;
output   add6_786_out_ap_vld;
output  [63:0] add6_684_out;
output   add6_684_out_ap_vld;
output  [63:0] add6_582_out;
output   add6_582_out_ap_vld;
output  [63:0] add6_480_out;
output   add6_480_out_ap_vld;
output  [63:0] add6_378_out;
output   add6_378_out_ap_vld;
output  [63:0] add6_276_out;
output   add6_276_out_ap_vld;
output  [63:0] add6_174_out;
output   add6_174_out_ap_vld;
output  [63:0] add672_out;
output   add672_out_ap_vld;
output  [63:0] add6_3170_out;
output   add6_3170_out_ap_vld;
output  [63:0] add6_3068_out;
output   add6_3068_out_ap_vld;
output  [63:0] add6_2966_out;
output   add6_2966_out_ap_vld;
output  [63:0] add6_2864_out;
output   add6_2864_out_ap_vld;
output  [63:0] add6_2762_out;
output   add6_2762_out_ap_vld;
output  [63:0] add6_2660_out;
output   add6_2660_out_ap_vld;
output  [63:0] add6_2558_out;
output   add6_2558_out_ap_vld;
output  [63:0] add6_2456_out;
output   add6_2456_out_ap_vld;
output  [63:0] add6_2354_out;
output   add6_2354_out_ap_vld;
output  [63:0] add6_2252_out;
output   add6_2252_out_ap_vld;
output  [63:0] add6_2150_out;
output   add6_2150_out_ap_vld;
output  [63:0] add6_2048_out;
output   add6_2048_out_ap_vld;
output  [63:0] add6_1946_out;
output   add6_1946_out_ap_vld;
output  [63:0] add6_1844_out;
output   add6_1844_out_ap_vld;
output  [63:0] add6_1742_out;
output   add6_1742_out_ap_vld;
output  [63:0] add6_1640_out;
output   add6_1640_out_ap_vld;
output  [63:0] add6_1538_out;
output   add6_1538_out_ap_vld;
output  [63:0] add6_1436_out;
output   add6_1436_out_ap_vld;
output  [63:0] add6_1334_out;
output   add6_1334_out_ap_vld;
output  [63:0] add6_1232_out;
output   add6_1232_out_ap_vld;
output  [63:0] add6_1130_out;
output   add6_1130_out_ap_vld;
output  [63:0] add6_1028_out;
output   add6_1028_out_ap_vld;
output  [63:0] add6_926_out;
output   add6_926_out_ap_vld;
output  [63:0] add6_824_out;
output   add6_824_out_ap_vld;
output  [63:0] add6_722_out;
output   add6_722_out_ap_vld;
output  [63:0] add6_620_out;
output   add6_620_out_ap_vld;
output  [63:0] add6_518_out;
output   add6_518_out_ap_vld;
output  [63:0] add6_416_out;
output   add6_416_out_ap_vld;
output  [63:0] add6_314_out;
output   add6_314_out_ap_vld;
output  [63:0] add6_212_out;
output   add6_212_out_ap_vld;
output  [63:0] add6_110_out;
output   add6_110_out_ap_vld;
output  [63:0] add61_out;
output   add61_out_ap_vld;
output  [63:0] grp_fu_3803_p_din0;
output  [63:0] grp_fu_3803_p_din1;
output  [1:0] grp_fu_3803_p_opcode;
input  [63:0] grp_fu_3803_p_dout0;
output   grp_fu_3803_p_ce;
output  [63:0] grp_fu_6727_p_din0;
output  [63:0] grp_fu_6727_p_din1;
output  [1:0] grp_fu_6727_p_opcode;
input  [63:0] grp_fu_6727_p_dout0;
output   grp_fu_6727_p_ce;
reg ap_idle;
reg add6_31134_out_ap_vld;
reg add6_30132_out_ap_vld;
reg add6_29130_out_ap_vld;
reg add6_28128_out_ap_vld;
reg add6_27126_out_ap_vld;
reg add6_26124_out_ap_vld;
reg add6_25122_out_ap_vld;
reg add6_24120_out_ap_vld;
reg add6_23118_out_ap_vld;
reg add6_22116_out_ap_vld;
reg add6_21114_out_ap_vld;
reg add6_20112_out_ap_vld;
reg add6_19110_out_ap_vld;
reg add6_18108_out_ap_vld;
reg add6_17106_out_ap_vld;
reg add6_16104_out_ap_vld;
reg add6_15102_out_ap_vld;
reg add6_14100_out_ap_vld;
reg add6_1398_out_ap_vld;
reg add6_1296_out_ap_vld;
reg add6_1194_out_ap_vld;
reg add6_1092_out_ap_vld;
reg add6_990_out_ap_vld;
reg add6_888_out_ap_vld;
reg add6_786_out_ap_vld;
reg add6_684_out_ap_vld;
reg add6_582_out_ap_vld;
reg add6_480_out_ap_vld;
reg add6_378_out_ap_vld;
reg add6_276_out_ap_vld;
reg add6_174_out_ap_vld;
reg add672_out_ap_vld;
reg add6_3170_out_ap_vld;
reg add6_3068_out_ap_vld;
reg add6_2966_out_ap_vld;
reg add6_2864_out_ap_vld;
reg add6_2762_out_ap_vld;
reg add6_2660_out_ap_vld;
reg add6_2558_out_ap_vld;
reg add6_2456_out_ap_vld;
reg add6_2354_out_ap_vld;
reg add6_2252_out_ap_vld;
reg add6_2150_out_ap_vld;
reg add6_2048_out_ap_vld;
reg add6_1946_out_ap_vld;
reg add6_1844_out_ap_vld;
reg add6_1742_out_ap_vld;
reg add6_1640_out_ap_vld;
reg add6_1538_out_ap_vld;
reg add6_1436_out_ap_vld;
reg add6_1334_out_ap_vld;
reg add6_1232_out_ap_vld;
reg add6_1130_out_ap_vld;
reg add6_1028_out_ap_vld;
reg add6_926_out_ap_vld;
reg add6_824_out_ap_vld;
reg add6_722_out_ap_vld;
reg add6_620_out_ap_vld;
reg add6_518_out_ap_vld;
reg add6_416_out_ap_vld;
reg add6_314_out_ap_vld;
reg add6_212_out_ap_vld;
reg add6_110_out_ap_vld;
reg add61_out_ap_vld;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] tmp_reg_4779;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [63:0] reg_1566;
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
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage9;
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
reg   [63:0] reg_1570;
reg   [63:0] reg_1574;
reg   [63:0] reg_1578;
wire   [11:0] obs_load_cast_cast_fu_1582_p1;
reg   [11:0] obs_load_cast_cast_reg_4737;
reg   [6:0] s_1_reg_4764;
wire   [3:0] tmp_63_cast_fu_1607_p4;
reg   [3:0] tmp_63_cast_reg_4788;
wire   [63:0] bitcast_ln14_fu_1730_p1;
wire   [63:0] bitcast_ln14_1_fu_1735_p1;
wire   [63:0] bitcast_ln14_2_fu_1740_p1;
wire   [63:0] bitcast_ln14_3_fu_1745_p1;
wire   [2:0] tmp_254_fu_1750_p4;
reg   [2:0] tmp_254_reg_4851;
wire   [0:0] tmp_33_fu_1786_p3;
reg   [0:0] tmp_33_reg_4869;
wire   [63:0] bitcast_ln14_4_fu_1832_p1;
wire   [63:0] bitcast_ln14_5_fu_1837_p1;
wire   [63:0] bitcast_ln14_6_fu_1842_p1;
wire   [63:0] bitcast_ln14_7_fu_1847_p1;
wire   [63:0] bitcast_ln14_8_fu_1910_p1;
wire   [63:0] bitcast_ln14_9_fu_1915_p1;
wire   [63:0] bitcast_ln14_10_fu_1920_p1;
wire   [63:0] bitcast_ln14_11_fu_1925_p1;
wire   [1:0] tmp_255_fu_1930_p4;
reg   [1:0] tmp_255_reg_4949;
wire   [0:0] tmp_34_fu_1952_p3;
reg   [0:0] tmp_34_reg_4970;
wire   [1:0] tmp_256_fu_1975_p4;
reg   [1:0] tmp_256_reg_4988;
wire   [63:0] bitcast_ln14_12_fu_2023_p1;
wire   [63:0] bitcast_ln14_13_fu_2028_p1;
wire   [63:0] bitcast_ln14_14_fu_2033_p1;
wire   [63:0] bitcast_ln14_15_fu_2038_p1;
wire   [63:0] bitcast_ln14_16_fu_2113_p1;
wire   [63:0] bitcast_ln14_17_fu_2118_p1;
wire   [63:0] bitcast_ln14_18_fu_2123_p1;
wire   [63:0] bitcast_ln14_19_fu_2128_p1;
wire   [63:0] bitcast_ln14_20_fu_2193_p1;
wire   [63:0] bitcast_ln14_21_fu_2198_p1;
wire   [63:0] bitcast_ln14_22_fu_2203_p1;
wire   [63:0] bitcast_ln14_23_fu_2208_p1;
wire   [63:0] bitcast_ln14_24_fu_2271_p1;
wire   [63:0] bitcast_ln14_25_fu_2276_p1;
wire   [63:0] bitcast_ln14_26_fu_2281_p1;
wire   [63:0] bitcast_ln14_27_fu_2286_p1;
wire   [0:0] tmp_35_fu_2291_p3;
reg   [0:0] tmp_35_reg_5144;
wire   [1:0] tmp_257_fu_2311_p4;
reg   [1:0] tmp_257_reg_5181;
wire   [63:0] bitcast_ln14_28_fu_2396_p1;
wire   [63:0] bitcast_ln14_29_fu_2401_p1;
wire   [63:0] bitcast_ln14_30_fu_2406_p1;
wire   [63:0] bitcast_ln14_31_fu_2411_p1;
wire   [0:0] icmp_ln14_fu_2486_p2;
reg   [0:0] icmp_ln14_reg_5244;
wire   [63:0] bitcast_ln14_32_fu_2555_p1;
wire   [63:0] bitcast_ln14_33_fu_2560_p1;
wire   [63:0] bitcast_ln14_34_fu_2565_p1;
wire   [63:0] bitcast_ln14_35_fu_2570_p1;
wire   [0:0] tmp_36_fu_2575_p3;
reg   [0:0] tmp_36_reg_5328;
wire   [63:0] bitcast_ln14_36_fu_2718_p1;
wire   [63:0] bitcast_ln14_37_fu_2723_p1;
wire   [63:0] bitcast_ln14_38_fu_2728_p1;
wire   [63:0] bitcast_ln14_39_fu_2733_p1;
wire   [63:0] bitcast_ln14_40_fu_2868_p1;
wire   [63:0] bitcast_ln14_41_fu_2873_p1;
wire   [63:0] bitcast_ln14_42_fu_2878_p1;
wire   [63:0] bitcast_ln14_43_fu_2883_p1;
wire   [63:0] bitcast_ln14_44_fu_3009_p1;
wire   [63:0] bitcast_ln14_45_fu_3014_p1;
wire   [63:0] bitcast_ln14_46_fu_3019_p1;
wire   [63:0] bitcast_ln14_47_fu_3024_p1;
wire   [63:0] bitcast_ln14_48_fu_3159_p1;
wire   [63:0] bitcast_ln14_49_fu_3164_p1;
wire   [63:0] bitcast_ln14_50_fu_3169_p1;
wire   [63:0] bitcast_ln14_51_fu_3174_p1;
wire   [63:0] bitcast_ln14_52_fu_3299_p1;
wire   [63:0] bitcast_ln14_53_fu_3304_p1;
wire   [63:0] bitcast_ln14_54_fu_3309_p1;
wire   [63:0] bitcast_ln14_55_fu_3314_p1;
wire   [63:0] bitcast_ln14_56_fu_3447_p1;
wire   [63:0] bitcast_ln14_57_fu_3452_p1;
wire   [63:0] bitcast_ln14_58_fu_3457_p1;
wire   [63:0] bitcast_ln14_59_fu_3462_p1;
wire   [63:0] bitcast_ln14_60_fu_3527_p1;
wire   [63:0] bitcast_ln14_61_fu_3532_p1;
wire   [63:0] bitcast_ln14_62_fu_3537_p1;
wire   [63:0] bitcast_ln14_63_fu_3542_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln13_fu_1602_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_1625_p1;
wire   [63:0] zext_ln14_1_fu_1648_p1;
wire   [63:0] zext_ln14_2_fu_1667_p1;
wire   [63:0] zext_ln14_3_fu_1679_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_4_fu_1696_p1;
wire   [63:0] zext_ln14_5_fu_1708_p1;
wire   [63:0] zext_ln14_6_fu_1725_p1;
wire   [63:0] zext_ln14_8_fu_1767_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_7_fu_1781_p1;
wire   [63:0] zext_ln14_10_fu_1805_p1;
wire   [63:0] zext_ln14_9_fu_1827_p1;
wire   [63:0] zext_ln14_12_fu_1859_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_11_fu_1876_p1;
wire   [63:0] zext_ln14_15_fu_1888_p1;
wire   [63:0] zext_ln14_13_fu_1905_p1;
wire   [63:0] zext_ln14_17_fu_1947_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln14_14_fu_1970_p1;
wire   [63:0] zext_ln14_19_fu_1996_p1;
wire   [63:0] zext_ln14_16_fu_2018_p1;
wire   [63:0] zext_ln14_22_fu_2053_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln14_18_fu_2073_p1;
wire   [63:0] zext_ln14_24_fu_2088_p1;
wire   [63:0] zext_ln14_20_fu_2108_p1;
wire   [63:0] zext_ln14_26_fu_2140_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln14_21_fu_2153_p1;
wire   [63:0] zext_ln14_29_fu_2168_p1;
wire   [63:0] zext_ln14_23_fu_2188_p1;
wire   [63:0] zext_ln14_31_fu_2220_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln14_25_fu_2237_p1;
wire   [63:0] zext_ln14_33_fu_2249_p1;
wire   [63:0] zext_ln14_27_fu_2266_p1;
wire   [63:0] zext_ln14_36_fu_2306_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln14_28_fu_2331_p1;
wire   [63:0] zext_ln14_38_fu_2357_p1;
wire   [63:0] zext_ln14_30_fu_2379_p1;
wire   [63:0] zext_ln14_40_fu_2426_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln14_32_fu_2446_p1;
wire   [63:0] zext_ln14_43_fu_2461_p1;
wire   [63:0] zext_ln14_34_fu_2481_p1;
wire   [63:0] zext_ln14_45_fu_2593_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln14_35_fu_2610_p1;
wire   [63:0] zext_ln14_47_fu_2629_p1;
wire   [63:0] zext_ln14_37_fu_2653_p1;
wire   [63:0] zext_ln14_50_fu_2748_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln14_39_fu_2768_p1;
wire   [63:0] zext_ln14_52_fu_2783_p1;
wire   [63:0] zext_ln14_41_fu_2803_p1;
wire   [63:0] zext_ln14_54_fu_2895_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln14_42_fu_2909_p1;
wire   [63:0] zext_ln14_56_fu_2924_p1;
wire   [63:0] zext_ln14_44_fu_2944_p1;
wire   [63:0] zext_ln14_57_fu_3039_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln14_46_fu_3059_p1;
wire   [63:0] zext_ln14_58_fu_3074_p1;
wire   [63:0] zext_ln14_48_fu_3094_p1;
wire   [63:0] zext_ln14_59_fu_3186_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln14_49_fu_3199_p1;
wire   [63:0] zext_ln14_60_fu_3214_p1;
wire   [63:0] zext_ln14_51_fu_3234_p1;
wire   [63:0] zext_ln14_61_fu_3326_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln14_53_fu_3343_p1;
wire   [63:0] zext_ln14_62_fu_3355_p1;
wire   [63:0] zext_ln14_55_fu_3372_p1;
reg   [6:0] s_fu_308;
wire   [6:0] add_ln13_fu_3405_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg   [63:0] add61_fu_312;
wire   [63:0] select_ln14_63_fu_2515_p3;
reg   [63:0] add6_110_fu_316;
wire   [63:0] select_ln14_62_fu_2507_p3;
reg   [63:0] add6_212_fu_320;
wire   [63:0] select_ln14_61_fu_2679_p3;
reg   [63:0] add6_314_fu_324;
wire   [63:0] select_ln14_60_fu_2672_p3;
reg   [63:0] add6_416_fu_328;
wire   [63:0] select_ln14_59_fu_2829_p3;
reg   [63:0] add6_518_fu_332;
wire   [63:0] select_ln14_58_fu_2822_p3;
reg   [63:0] add6_620_fu_336;
wire   [63:0] select_ln14_57_fu_2970_p3;
reg   [63:0] add6_722_fu_340;
wire   [63:0] select_ln14_56_fu_2963_p3;
reg   [63:0] add6_824_fu_344;
wire   [63:0] select_ln14_55_fu_3120_p3;
reg   [63:0] add6_926_fu_348;
wire   [63:0] select_ln14_54_fu_3113_p3;
reg   [63:0] add6_1028_fu_352;
wire   [63:0] select_ln14_53_fu_3260_p3;
reg   [63:0] add6_1130_fu_356;
wire   [63:0] select_ln14_52_fu_3253_p3;
reg   [63:0] add6_1232_fu_360;
wire   [63:0] select_ln14_51_fu_3398_p3;
reg   [63:0] add6_1334_fu_364;
wire   [63:0] select_ln14_50_fu_3391_p3;
reg   [63:0] add6_1436_fu_368;
wire   [63:0] select_ln14_49_fu_3488_p3;
reg   [63:0] add6_1538_fu_372;
wire   [63:0] select_ln14_48_fu_3481_p3;
reg   [63:0] add6_1640_fu_376;
wire   [63:0] select_ln14_47_fu_3568_p3;
reg   [63:0] add6_1742_fu_380;
wire   [63:0] select_ln14_46_fu_3561_p3;
reg   [63:0] add6_1844_fu_384;
wire   [63:0] select_ln14_45_fu_3628_p3;
reg   [63:0] add6_1946_fu_388;
wire   [63:0] select_ln14_44_fu_3621_p3;
reg   [63:0] add6_2048_fu_392;
wire   [63:0] select_ln14_43_fu_3688_p3;
reg   [63:0] add6_2150_fu_396;
wire   [63:0] select_ln14_42_fu_3681_p3;
reg   [63:0] add6_2252_fu_400;
wire   [63:0] select_ln14_41_fu_3748_p3;
reg   [63:0] add6_2354_fu_404;
wire   [63:0] select_ln14_40_fu_3741_p3;
reg   [63:0] add6_2456_fu_408;
wire   [63:0] select_ln14_39_fu_3808_p3;
reg   [63:0] add6_2558_fu_412;
wire   [63:0] select_ln14_38_fu_3801_p3;
reg   [63:0] add6_2660_fu_416;
wire   [63:0] select_ln14_37_fu_3868_p3;
reg   [63:0] add6_2762_fu_420;
wire   [63:0] select_ln14_36_fu_3861_p3;
reg   [63:0] add6_2864_fu_424;
wire   [63:0] select_ln14_35_fu_3928_p3;
reg   [63:0] add6_2966_fu_428;
wire   [63:0] select_ln14_34_fu_3921_p3;
reg   [63:0] add6_3068_fu_432;
wire   [63:0] select_ln14_33_fu_3988_p3;
reg   [63:0] add6_3170_fu_436;
wire   [63:0] select_ln14_32_fu_3981_p3;
reg   [63:0] add672_fu_440;
wire   [63:0] select_ln14_31_fu_2499_p3;
reg   [63:0] add6_174_fu_444;
wire   [63:0] select_ln14_30_fu_2491_p3;
reg   [63:0] add6_276_fu_448;
wire   [63:0] select_ln14_29_fu_2665_p3;
reg   [63:0] add6_378_fu_452;
wire   [63:0] select_ln14_28_fu_2658_p3;
reg   [63:0] add6_480_fu_456;
wire   [63:0] select_ln14_27_fu_2815_p3;
reg   [63:0] add6_582_fu_460;
wire   [63:0] select_ln14_26_fu_2808_p3;
reg   [63:0] add6_684_fu_464;
wire   [63:0] select_ln14_25_fu_2956_p3;
reg   [63:0] add6_786_fu_468;
wire   [63:0] select_ln14_24_fu_2949_p3;
reg   [63:0] add6_888_fu_472;
wire   [63:0] select_ln14_23_fu_3106_p3;
reg   [63:0] add6_990_fu_476;
wire   [63:0] select_ln14_22_fu_3099_p3;
reg   [63:0] add6_1092_fu_480;
wire   [63:0] select_ln14_21_fu_3246_p3;
reg   [63:0] add6_1194_fu_484;
wire   [63:0] select_ln14_20_fu_3239_p3;
reg   [63:0] add6_1296_fu_488;
wire   [63:0] select_ln14_19_fu_3384_p3;
reg   [63:0] add6_1398_fu_492;
wire   [63:0] select_ln14_18_fu_3377_p3;
reg   [63:0] add6_14100_fu_496;
wire   [63:0] select_ln14_17_fu_3474_p3;
reg   [63:0] add6_15102_fu_500;
wire   [63:0] select_ln14_16_fu_3467_p3;
reg   [63:0] add6_16104_fu_504;
wire   [63:0] select_ln14_15_fu_3554_p3;
reg   [63:0] add6_17106_fu_508;
wire   [63:0] select_ln14_14_fu_3547_p3;
reg   [63:0] add6_18108_fu_512;
wire   [63:0] select_ln14_13_fu_3614_p3;
reg   [63:0] add6_19110_fu_516;
wire   [63:0] select_ln14_12_fu_3607_p3;
reg   [63:0] add6_20112_fu_520;
wire   [63:0] select_ln14_11_fu_3674_p3;
reg   [63:0] add6_21114_fu_524;
wire   [63:0] select_ln14_10_fu_3667_p3;
reg   [63:0] add6_22116_fu_528;
wire   [63:0] select_ln14_9_fu_3734_p3;
reg   [63:0] add6_23118_fu_532;
wire   [63:0] select_ln14_8_fu_3727_p3;
reg   [63:0] add6_24120_fu_536;
wire   [63:0] select_ln14_7_fu_3794_p3;
reg   [63:0] add6_25122_fu_540;
wire   [63:0] select_ln14_6_fu_3787_p3;
reg   [63:0] add6_26124_fu_544;
wire   [63:0] select_ln14_5_fu_3854_p3;
reg   [63:0] add6_27126_fu_548;
wire   [63:0] select_ln14_4_fu_3847_p3;
reg   [63:0] add6_28128_fu_552;
wire   [63:0] select_ln14_3_fu_3914_p3;
reg   [63:0] add6_29130_fu_556;
wire   [63:0] select_ln14_2_fu_3907_p3;
reg   [63:0] add6_30132_fu_560;
wire   [63:0] select_ln14_1_fu_3974_p3;
reg   [63:0] add6_31134_fu_564;
wire   [63:0] select_ln14_fu_3967_p3;
wire    ap_block_pp0_stage8_01001;
reg    init_ce1_local;
reg   [5:0] init_address1_local;
reg    init_ce0_local;
reg   [5:0] init_address0_local;
reg    emission_ce1_local;
reg   [11:0] emission_address1_local;
reg    emission_ce0_local;
reg   [11:0] emission_address0_local;
reg   [63:0] grp_fu_1558_p0;
reg   [63:0] grp_fu_1558_p1;
reg   [63:0] grp_fu_1562_p0;
reg   [63:0] grp_fu_1562_p1;
wire   [11:0] or_ln_fu_1617_p3;
wire   [4:0] tmp_s_fu_1630_p4;
wire   [5:0] or_ln1_fu_1640_p3;
wire   [11:0] shl_ln_fu_1653_p3;
wire   [11:0] add_ln14_fu_1661_p2;
wire   [5:0] or_ln13_1_fu_1672_p3;
wire   [11:0] shl_ln14_1_fu_1684_p3;
wire   [11:0] add_ln14_1_fu_1691_p2;
wire   [5:0] or_ln13_2_fu_1701_p3;
wire   [11:0] shl_ln14_2_fu_1713_p3;
wire   [11:0] add_ln14_2_fu_1720_p2;
wire   [5:0] or_ln13_3_fu_1759_p3;
wire   [11:0] or_ln14_1_fu_1772_p4;
wire   [5:0] or_ln13_4_fu_1793_p5;
wire   [11:0] shl_ln14_3_fu_1810_p5;
wire   [11:0] add_ln14_3_fu_1822_p2;
wire   [5:0] or_ln13_5_fu_1852_p3;
wire   [11:0] shl_ln14_4_fu_1864_p3;
wire   [11:0] add_ln14_4_fu_1871_p2;
wire   [5:0] or_ln13_6_fu_1881_p3;
wire   [11:0] shl_ln14_5_fu_1893_p3;
wire   [11:0] add_ln14_5_fu_1900_p2;
wire   [5:0] or_ln13_7_fu_1939_p3;
wire   [11:0] or_ln14_2_fu_1959_p5;
wire   [5:0] or_ln13_8_fu_1984_p5;
wire   [11:0] shl_ln14_6_fu_2001_p5;
wire   [11:0] add_ln14_6_fu_2013_p2;
wire   [5:0] or_ln13_9_fu_2043_p5;
wire   [11:0] shl_ln14_7_fu_2058_p5;
wire   [11:0] add_ln14_7_fu_2068_p2;
wire   [5:0] or_ln13_s_fu_2078_p5;
wire   [11:0] shl_ln14_8_fu_2093_p5;
wire   [11:0] add_ln14_8_fu_2103_p2;
wire   [5:0] or_ln13_10_fu_2133_p3;
wire   [11:0] or_ln14_3_fu_2145_p4;
wire   [5:0] or_ln13_11_fu_2158_p5;
wire   [11:0] shl_ln14_9_fu_2173_p5;
wire   [11:0] add_ln14_9_fu_2183_p2;
wire   [5:0] or_ln13_12_fu_2213_p3;
wire   [11:0] shl_ln14_s_fu_2225_p3;
wire   [11:0] add_ln14_10_fu_2232_p2;
wire   [5:0] or_ln13_13_fu_2242_p3;
wire   [11:0] shl_ln14_10_fu_2254_p3;
wire   [11:0] add_ln14_11_fu_2261_p2;
wire   [5:0] or_ln13_14_fu_2298_p3;
wire   [11:0] or_ln14_4_fu_2320_p5;
wire   [2:0] tmp_258_fu_2336_p4;
wire   [5:0] or_ln13_15_fu_2345_p5;
wire   [11:0] shl_ln14_11_fu_2362_p5;
wire   [11:0] add_ln14_12_fu_2374_p2;
wire   [5:0] or_ln13_16_fu_2416_p5;
wire   [11:0] shl_ln14_12_fu_2431_p5;
wire   [11:0] add_ln14_13_fu_2441_p2;
wire   [5:0] or_ln13_17_fu_2451_p5;
wire   [11:0] shl_ln14_13_fu_2466_p5;
wire   [11:0] add_ln14_14_fu_2476_p2;
wire   [5:0] or_ln13_18_fu_2582_p5;
wire   [11:0] or_ln14_5_fu_2598_p6;
wire   [5:0] or_ln13_19_fu_2615_p7;
wire   [11:0] shl_ln14_14_fu_2634_p7;
wire   [11:0] add_ln14_15_fu_2648_p2;
wire   [5:0] or_ln13_20_fu_2738_p5;
wire   [11:0] shl_ln14_15_fu_2753_p5;
wire   [11:0] add_ln14_16_fu_2763_p2;
wire   [5:0] or_ln13_21_fu_2773_p5;
wire   [11:0] shl_ln14_16_fu_2788_p5;
wire   [11:0] add_ln14_17_fu_2798_p2;
wire   [5:0] or_ln13_22_fu_2888_p3;
wire   [11:0] or_ln14_6_fu_2900_p5;
wire   [5:0] or_ln13_23_fu_2914_p5;
wire   [11:0] shl_ln14_17_fu_2929_p5;
wire   [11:0] add_ln14_18_fu_2939_p2;
wire   [5:0] or_ln13_24_fu_3029_p5;
wire   [11:0] shl_ln14_18_fu_3044_p5;
wire   [11:0] add_ln14_19_fu_3054_p2;
wire   [5:0] or_ln13_25_fu_3064_p5;
wire   [11:0] shl_ln14_19_fu_3079_p5;
wire   [11:0] add_ln14_20_fu_3089_p2;
wire   [5:0] or_ln13_26_fu_3179_p3;
wire   [11:0] or_ln14_7_fu_3191_p4;
wire   [5:0] or_ln13_27_fu_3204_p5;
wire   [11:0] shl_ln14_20_fu_3219_p5;
wire   [11:0] add_ln14_21_fu_3229_p2;
wire   [5:0] or_ln13_28_fu_3319_p3;
wire   [11:0] shl_ln14_21_fu_3331_p3;
wire   [11:0] add_ln14_22_fu_3338_p2;
wire   [5:0] or_ln13_29_fu_3348_p3;
wire   [11:0] shl_ln14_22_fu_3360_p3;
wire   [11:0] add_ln14_23_fu_3367_p2;
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
wire    ap_block_pp0_stage9_subdone;
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
#0 s_fu_308 = 7'd0;
#0 add61_fu_312 = 64'd0;
#0 add6_110_fu_316 = 64'd0;
#0 add6_212_fu_320 = 64'd0;
#0 add6_314_fu_324 = 64'd0;
#0 add6_416_fu_328 = 64'd0;
#0 add6_518_fu_332 = 64'd0;
#0 add6_620_fu_336 = 64'd0;
#0 add6_722_fu_340 = 64'd0;
#0 add6_824_fu_344 = 64'd0;
#0 add6_926_fu_348 = 64'd0;
#0 add6_1028_fu_352 = 64'd0;
#0 add6_1130_fu_356 = 64'd0;
#0 add6_1232_fu_360 = 64'd0;
#0 add6_1334_fu_364 = 64'd0;
#0 add6_1436_fu_368 = 64'd0;
#0 add6_1538_fu_372 = 64'd0;
#0 add6_1640_fu_376 = 64'd0;
#0 add6_1742_fu_380 = 64'd0;
#0 add6_1844_fu_384 = 64'd0;
#0 add6_1946_fu_388 = 64'd0;
#0 add6_2048_fu_392 = 64'd0;
#0 add6_2150_fu_396 = 64'd0;
#0 add6_2252_fu_400 = 64'd0;
#0 add6_2354_fu_404 = 64'd0;
#0 add6_2456_fu_408 = 64'd0;
#0 add6_2558_fu_412 = 64'd0;
#0 add6_2660_fu_416 = 64'd0;
#0 add6_2762_fu_420 = 64'd0;
#0 add6_2864_fu_424 = 64'd0;
#0 add6_2966_fu_428 = 64'd0;
#0 add6_3068_fu_432 = 64'd0;
#0 add6_3170_fu_436 = 64'd0;
#0 add672_fu_440 = 64'd0;
#0 add6_174_fu_444 = 64'd0;
#0 add6_276_fu_448 = 64'd0;
#0 add6_378_fu_452 = 64'd0;
#0 add6_480_fu_456 = 64'd0;
#0 add6_582_fu_460 = 64'd0;
#0 add6_684_fu_464 = 64'd0;
#0 add6_786_fu_468 = 64'd0;
#0 add6_888_fu_472 = 64'd0;
#0 add6_990_fu_476 = 64'd0;
#0 add6_1092_fu_480 = 64'd0;
#0 add6_1194_fu_484 = 64'd0;
#0 add6_1296_fu_488 = 64'd0;
#0 add6_1398_fu_492 = 64'd0;
#0 add6_14100_fu_496 = 64'd0;
#0 add6_15102_fu_500 = 64'd0;
#0 add6_16104_fu_504 = 64'd0;
#0 add6_17106_fu_508 = 64'd0;
#0 add6_18108_fu_512 = 64'd0;
#0 add6_19110_fu_516 = 64'd0;
#0 add6_20112_fu_520 = 64'd0;
#0 add6_21114_fu_524 = 64'd0;
#0 add6_22116_fu_528 = 64'd0;
#0 add6_23118_fu_532 = 64'd0;
#0 add6_24120_fu_536 = 64'd0;
#0 add6_25122_fu_540 = 64'd0;
#0 add6_26124_fu_544 = 64'd0;
#0 add6_27126_fu_548 = 64'd0;
#0 add6_28128_fu_552 = 64'd0;
#0 add6_29130_fu_556 = 64'd0;
#0 add6_30132_fu_560 = 64'd0;
#0 add6_31134_fu_564 = 64'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage8),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage8)) begin
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
        if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_fu_308 <= 7'd0;
    end else if (((tmp_reg_4779 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        s_fu_308 <= add_ln13_fu_3405_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((tmp_reg_4779 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add61_fu_312 <= select_ln14_63_fu_2515_p3;
        add672_fu_440 <= select_ln14_31_fu_2499_p3;
        add6_110_fu_316 <= select_ln14_62_fu_2507_p3;
        add6_174_fu_444 <= select_ln14_30_fu_2491_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((tmp_reg_4779 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        add6_1028_fu_352 <= select_ln14_53_fu_3260_p3;
        add6_1092_fu_480 <= select_ln14_21_fu_3246_p3;
        add6_1130_fu_356 <= select_ln14_52_fu_3253_p3;
        add6_1194_fu_484 <= select_ln14_20_fu_3239_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((tmp_reg_4779 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        add6_1232_fu_360 <= select_ln14_51_fu_3398_p3;
        add6_1296_fu_488 <= select_ln14_19_fu_3384_p3;
        add6_1334_fu_364 <= select_ln14_50_fu_3391_p3;
        add6_1398_fu_492 <= select_ln14_18_fu_3377_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_14100_fu_496 <= select_ln14_17_fu_3474_p3;
        add6_1436_fu_368 <= select_ln14_49_fu_3488_p3;
        add6_15102_fu_500 <= select_ln14_16_fu_3467_p3;
        add6_1538_fu_372 <= select_ln14_48_fu_3481_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add6_16104_fu_504 <= select_ln14_15_fu_3554_p3;
        add6_1640_fu_376 <= select_ln14_47_fu_3568_p3;
        add6_17106_fu_508 <= select_ln14_14_fu_3547_p3;
        add6_1742_fu_380 <= select_ln14_46_fu_3561_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add6_18108_fu_512 <= select_ln14_13_fu_3614_p3;
        add6_1844_fu_384 <= select_ln14_45_fu_3628_p3;
        add6_19110_fu_516 <= select_ln14_12_fu_3607_p3;
        add6_1946_fu_388 <= select_ln14_44_fu_3621_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add6_20112_fu_520 <= select_ln14_11_fu_3674_p3;
        add6_2048_fu_392 <= select_ln14_43_fu_3688_p3;
        add6_21114_fu_524 <= select_ln14_10_fu_3667_p3;
        add6_2150_fu_396 <= select_ln14_42_fu_3681_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((tmp_reg_4779 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add6_212_fu_320 <= select_ln14_61_fu_2679_p3;
        add6_276_fu_448 <= select_ln14_29_fu_2665_p3;
        add6_314_fu_324 <= select_ln14_60_fu_2672_p3;
        add6_378_fu_452 <= select_ln14_28_fu_2658_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add6_22116_fu_528 <= select_ln14_9_fu_3734_p3;
        add6_2252_fu_400 <= select_ln14_41_fu_3748_p3;
        add6_23118_fu_532 <= select_ln14_8_fu_3727_p3;
        add6_2354_fu_404 <= select_ln14_40_fu_3741_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add6_24120_fu_536 <= select_ln14_7_fu_3794_p3;
        add6_2456_fu_408 <= select_ln14_39_fu_3808_p3;
        add6_25122_fu_540 <= select_ln14_6_fu_3787_p3;
        add6_2558_fu_412 <= select_ln14_38_fu_3801_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add6_26124_fu_544 <= select_ln14_5_fu_3854_p3;
        add6_2660_fu_416 <= select_ln14_37_fu_3868_p3;
        add6_27126_fu_548 <= select_ln14_4_fu_3847_p3;
        add6_2762_fu_420 <= select_ln14_36_fu_3861_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add6_28128_fu_552 <= select_ln14_3_fu_3914_p3;
        add6_2864_fu_424 <= select_ln14_35_fu_3928_p3;
        add6_29130_fu_556 <= select_ln14_2_fu_3907_p3;
        add6_2966_fu_428 <= select_ln14_34_fu_3921_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_30132_fu_560 <= select_ln14_1_fu_3974_p3;
        add6_3068_fu_432 <= select_ln14_33_fu_3988_p3;
        add6_31134_fu_564 <= select_ln14_fu_3967_p3;
        add6_3170_fu_436 <= select_ln14_32_fu_3981_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((tmp_reg_4779 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        add6_416_fu_328 <= select_ln14_59_fu_2829_p3;
        add6_480_fu_456 <= select_ln14_27_fu_2815_p3;
        add6_518_fu_332 <= select_ln14_58_fu_2822_p3;
        add6_582_fu_460 <= select_ln14_26_fu_2808_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((tmp_reg_4779 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        add6_620_fu_336 <= select_ln14_57_fu_2970_p3;
        add6_684_fu_464 <= select_ln14_25_fu_2956_p3;
        add6_722_fu_340 <= select_ln14_56_fu_2963_p3;
        add6_786_fu_468 <= select_ln14_24_fu_2949_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((tmp_reg_4779 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        add6_824_fu_344 <= select_ln14_55_fu_3120_p3;
        add6_888_fu_472 <= select_ln14_23_fu_3106_p3;
        add6_926_fu_348 <= select_ln14_54_fu_3113_p3;
        add6_990_fu_476 <= select_ln14_22_fu_3099_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        icmp_ln14_reg_5244 <= icmp_ln14_fu_2486_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        obs_load_cast_cast_reg_4737[7 : 0] <= obs_load_cast_cast_fu_1582_p1[7 : 0];
        s_1_reg_4764 <= ap_sig_allocacmp_s_1;
        tmp_63_cast_reg_4788 <= {{ap_sig_allocacmp_s_1[5:2]}};
        tmp_reg_4779 <= ap_sig_allocacmp_s_1[32'd6];
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1566 <= init_q1;
        reg_1570 <= emission_q1;
        reg_1574 <= init_q0;
        reg_1578 <= emission_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_254_reg_4851 <= {{s_1_reg_4764[5:3]}};
        tmp_33_reg_4869 <= s_1_reg_4764[32'd1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_255_reg_4949 <= {{s_1_reg_4764[5:4]}};
        tmp_256_reg_4988 <= {{s_1_reg_4764[2:1]}};
        tmp_34_reg_4970 <= s_1_reg_4764[32'd2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_257_reg_5181 <= {{s_1_reg_4764[3:2]}};
        tmp_35_reg_5144 <= s_1_reg_4764[32'd5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp_36_reg_5328 <= s_1_reg_4764[32'd3];
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add61_out_ap_vld = 1'b1;
    end else begin
        add61_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add672_out_ap_vld = 1'b1;
    end else begin
        add672_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_1028_out_ap_vld = 1'b1;
    end else begin
        add6_1028_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_1092_out_ap_vld = 1'b1;
    end else begin
        add6_1092_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_110_out_ap_vld = 1'b1;
    end else begin
        add6_110_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_1130_out_ap_vld = 1'b1;
    end else begin
        add6_1130_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_1194_out_ap_vld = 1'b1;
    end else begin
        add6_1194_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_1232_out_ap_vld = 1'b1;
    end else begin
        add6_1232_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_1296_out_ap_vld = 1'b1;
    end else begin
        add6_1296_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_1334_out_ap_vld = 1'b1;
    end else begin
        add6_1334_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_1398_out_ap_vld = 1'b1;
    end else begin
        add6_1398_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_14100_out_ap_vld = 1'b1;
    end else begin
        add6_14100_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_1436_out_ap_vld = 1'b1;
    end else begin
        add6_1436_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_15102_out_ap_vld = 1'b1;
    end else begin
        add6_15102_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_1538_out_ap_vld = 1'b1;
    end else begin
        add6_1538_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_16104_out_ap_vld = 1'b1;
    end else begin
        add6_16104_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_1640_out_ap_vld = 1'b1;
    end else begin
        add6_1640_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_17106_out_ap_vld = 1'b1;
    end else begin
        add6_17106_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_1742_out_ap_vld = 1'b1;
    end else begin
        add6_1742_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_174_out_ap_vld = 1'b1;
    end else begin
        add6_174_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_18108_out_ap_vld = 1'b1;
    end else begin
        add6_18108_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_1844_out_ap_vld = 1'b1;
    end else begin
        add6_1844_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_19110_out_ap_vld = 1'b1;
    end else begin
        add6_19110_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_1946_out_ap_vld = 1'b1;
    end else begin
        add6_1946_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_20112_out_ap_vld = 1'b1;
    end else begin
        add6_20112_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_2048_out_ap_vld = 1'b1;
    end else begin
        add6_2048_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_21114_out_ap_vld = 1'b1;
    end else begin
        add6_21114_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_212_out_ap_vld = 1'b1;
    end else begin
        add6_212_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_2150_out_ap_vld = 1'b1;
    end else begin
        add6_2150_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_22116_out_ap_vld = 1'b1;
    end else begin
        add6_22116_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_2252_out_ap_vld = 1'b1;
    end else begin
        add6_2252_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_23118_out_ap_vld = 1'b1;
    end else begin
        add6_23118_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_2354_out_ap_vld = 1'b1;
    end else begin
        add6_2354_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_24120_out_ap_vld = 1'b1;
    end else begin
        add6_24120_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_2456_out_ap_vld = 1'b1;
    end else begin
        add6_2456_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_25122_out_ap_vld = 1'b1;
    end else begin
        add6_25122_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_2558_out_ap_vld = 1'b1;
    end else begin
        add6_2558_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_26124_out_ap_vld = 1'b1;
    end else begin
        add6_26124_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_2660_out_ap_vld = 1'b1;
    end else begin
        add6_2660_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_27126_out_ap_vld = 1'b1;
    end else begin
        add6_27126_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_2762_out_ap_vld = 1'b1;
    end else begin
        add6_2762_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_276_out_ap_vld = 1'b1;
    end else begin
        add6_276_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_28128_out_ap_vld = 1'b1;
    end else begin
        add6_28128_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_2864_out_ap_vld = 1'b1;
    end else begin
        add6_2864_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_29130_out_ap_vld = 1'b1;
    end else begin
        add6_29130_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_2966_out_ap_vld = 1'b1;
    end else begin
        add6_2966_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_30132_out_ap_vld = 1'b1;
    end else begin
        add6_30132_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_3068_out_ap_vld = 1'b1;
    end else begin
        add6_3068_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_31134_out_ap_vld = 1'b1;
    end else begin
        add6_31134_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_314_out_ap_vld = 1'b1;
    end else begin
        add6_314_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_3170_out_ap_vld = 1'b1;
    end else begin
        add6_3170_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_378_out_ap_vld = 1'b1;
    end else begin
        add6_378_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_416_out_ap_vld = 1'b1;
    end else begin
        add6_416_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_480_out_ap_vld = 1'b1;
    end else begin
        add6_480_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_518_out_ap_vld = 1'b1;
    end else begin
        add6_518_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_582_out_ap_vld = 1'b1;
    end else begin
        add6_582_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_620_out_ap_vld = 1'b1;
    end else begin
        add6_620_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_684_out_ap_vld = 1'b1;
    end else begin
        add6_684_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_722_out_ap_vld = 1'b1;
    end else begin
        add6_722_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_786_out_ap_vld = 1'b1;
    end else begin
        add6_786_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_824_out_ap_vld = 1'b1;
    end else begin
        add6_824_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_888_out_ap_vld = 1'b1;
    end else begin
        add6_888_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_926_out_ap_vld = 1'b1;
    end else begin
        add6_926_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_990_out_ap_vld = 1'b1;
    end else begin
        add6_990_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_4779 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_s_1 = s_fu_308;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            emission_address0_local = zext_ln14_55_fu_3372_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            emission_address0_local = zext_ln14_51_fu_3234_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            emission_address0_local = zext_ln14_48_fu_3094_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            emission_address0_local = zext_ln14_44_fu_2944_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            emission_address0_local = zext_ln14_41_fu_2803_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            emission_address0_local = zext_ln14_37_fu_2653_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            emission_address0_local = zext_ln14_34_fu_2481_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            emission_address0_local = zext_ln14_30_fu_2379_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_address0_local = zext_ln14_27_fu_2266_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_address0_local = zext_ln14_23_fu_2188_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_address0_local = zext_ln14_20_fu_2108_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_address0_local = zext_ln14_16_fu_2018_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_address0_local = zext_ln14_13_fu_1905_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_address0_local = zext_ln14_9_fu_1827_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_address0_local = zext_ln14_6_fu_1725_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_address0_local = zext_ln14_2_fu_1667_p1;
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
            emission_address1_local = zext_ln14_53_fu_3343_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            emission_address1_local = zext_ln14_49_fu_3199_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            emission_address1_local = zext_ln14_46_fu_3059_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            emission_address1_local = zext_ln14_42_fu_2909_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            emission_address1_local = zext_ln14_39_fu_2768_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            emission_address1_local = zext_ln14_35_fu_2610_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            emission_address1_local = zext_ln14_32_fu_2446_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            emission_address1_local = zext_ln14_28_fu_2331_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_address1_local = zext_ln14_25_fu_2237_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_address1_local = zext_ln14_21_fu_2153_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_address1_local = zext_ln14_18_fu_2073_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_address1_local = zext_ln14_14_fu_1970_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_address1_local = zext_ln14_11_fu_1876_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_address1_local = zext_ln14_7_fu_1781_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_address1_local = zext_ln14_4_fu_1696_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_address1_local = zext_ln14_fu_1625_p1;
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
        grp_fu_1558_p0 = bitcast_ln14_60_fu_3527_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1558_p0 = bitcast_ln14_56_fu_3447_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1558_p0 = bitcast_ln14_52_fu_3299_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1558_p0 = bitcast_ln14_48_fu_3159_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1558_p0 = bitcast_ln14_44_fu_3009_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1558_p0 = bitcast_ln14_40_fu_2868_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1558_p0 = bitcast_ln14_36_fu_2718_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1558_p0 = bitcast_ln14_32_fu_2555_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1558_p0 = bitcast_ln14_28_fu_2396_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1558_p0 = bitcast_ln14_24_fu_2271_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1558_p0 = bitcast_ln14_20_fu_2193_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1558_p0 = bitcast_ln14_16_fu_2113_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1558_p0 = bitcast_ln14_12_fu_2023_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1558_p0 = bitcast_ln14_8_fu_1910_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1558_p0 = bitcast_ln14_4_fu_1832_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1558_p0 = bitcast_ln14_fu_1730_p1;
    end else begin
        grp_fu_1558_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1558_p1 = bitcast_ln14_61_fu_3532_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1558_p1 = bitcast_ln14_57_fu_3452_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1558_p1 = bitcast_ln14_53_fu_3304_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1558_p1 = bitcast_ln14_49_fu_3164_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1558_p1 = bitcast_ln14_45_fu_3014_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1558_p1 = bitcast_ln14_41_fu_2873_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1558_p1 = bitcast_ln14_37_fu_2723_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1558_p1 = bitcast_ln14_33_fu_2560_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1558_p1 = bitcast_ln14_29_fu_2401_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1558_p1 = bitcast_ln14_25_fu_2276_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1558_p1 = bitcast_ln14_21_fu_2198_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1558_p1 = bitcast_ln14_17_fu_2118_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1558_p1 = bitcast_ln14_13_fu_2028_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1558_p1 = bitcast_ln14_9_fu_1915_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1558_p1 = bitcast_ln14_5_fu_1837_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1558_p1 = bitcast_ln14_1_fu_1735_p1;
    end else begin
        grp_fu_1558_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1562_p0 = bitcast_ln14_62_fu_3537_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1562_p0 = bitcast_ln14_58_fu_3457_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1562_p0 = bitcast_ln14_54_fu_3309_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1562_p0 = bitcast_ln14_50_fu_3169_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1562_p0 = bitcast_ln14_46_fu_3019_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1562_p0 = bitcast_ln14_42_fu_2878_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1562_p0 = bitcast_ln14_38_fu_2728_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1562_p0 = bitcast_ln14_34_fu_2565_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1562_p0 = bitcast_ln14_30_fu_2406_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1562_p0 = bitcast_ln14_26_fu_2281_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1562_p0 = bitcast_ln14_22_fu_2203_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1562_p0 = bitcast_ln14_18_fu_2123_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1562_p0 = bitcast_ln14_14_fu_2033_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1562_p0 = bitcast_ln14_10_fu_1920_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1562_p0 = bitcast_ln14_6_fu_1842_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1562_p0 = bitcast_ln14_2_fu_1740_p1;
    end else begin
        grp_fu_1562_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1562_p1 = bitcast_ln14_63_fu_3542_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1562_p1 = bitcast_ln14_59_fu_3462_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1562_p1 = bitcast_ln14_55_fu_3314_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1562_p1 = bitcast_ln14_51_fu_3174_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1562_p1 = bitcast_ln14_47_fu_3024_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1562_p1 = bitcast_ln14_43_fu_2883_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1562_p1 = bitcast_ln14_39_fu_2733_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1562_p1 = bitcast_ln14_35_fu_2570_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1562_p1 = bitcast_ln14_31_fu_2411_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1562_p1 = bitcast_ln14_27_fu_2286_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1562_p1 = bitcast_ln14_23_fu_2208_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1562_p1 = bitcast_ln14_19_fu_2128_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1562_p1 = bitcast_ln14_15_fu_2038_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1562_p1 = bitcast_ln14_11_fu_1925_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1562_p1 = bitcast_ln14_7_fu_1847_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1562_p1 = bitcast_ln14_3_fu_1745_p1;
    end else begin
        grp_fu_1562_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            init_address0_local = zext_ln14_62_fu_3355_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            init_address0_local = zext_ln14_60_fu_3214_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            init_address0_local = zext_ln14_58_fu_3074_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            init_address0_local = zext_ln14_56_fu_2924_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            init_address0_local = zext_ln14_52_fu_2783_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            init_address0_local = zext_ln14_47_fu_2629_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            init_address0_local = zext_ln14_43_fu_2461_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            init_address0_local = zext_ln14_38_fu_2357_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            init_address0_local = zext_ln14_33_fu_2249_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            init_address0_local = zext_ln14_29_fu_2168_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            init_address0_local = zext_ln14_24_fu_2088_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            init_address0_local = zext_ln14_19_fu_1996_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_address0_local = zext_ln14_15_fu_1888_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_address0_local = zext_ln14_10_fu_1805_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_address0_local = zext_ln14_5_fu_1708_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_address0_local = zext_ln14_1_fu_1648_p1;
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
            init_address1_local = zext_ln14_61_fu_3326_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            init_address1_local = zext_ln14_59_fu_3186_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            init_address1_local = zext_ln14_57_fu_3039_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            init_address1_local = zext_ln14_54_fu_2895_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            init_address1_local = zext_ln14_50_fu_2748_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            init_address1_local = zext_ln14_45_fu_2593_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            init_address1_local = zext_ln14_40_fu_2426_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            init_address1_local = zext_ln14_36_fu_2306_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            init_address1_local = zext_ln14_31_fu_2220_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            init_address1_local = zext_ln14_26_fu_2140_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            init_address1_local = zext_ln14_22_fu_2053_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            init_address1_local = zext_ln14_17_fu_1947_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_address1_local = zext_ln14_12_fu_1859_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_address1_local = zext_ln14_8_fu_1767_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_address1_local = zext_ln14_3_fu_1679_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_address1_local = zext_ln13_fu_1602_p1;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage8)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
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
assign add61_out = add61_fu_312;
assign add672_out = add672_fu_440;
assign add6_1028_out = add6_1028_fu_352;
assign add6_1092_out = add6_1092_fu_480;
assign add6_110_out = add6_110_fu_316;
assign add6_1130_out = add6_1130_fu_356;
assign add6_1194_out = add6_1194_fu_484;
assign add6_1232_out = add6_1232_fu_360;
assign add6_1296_out = add6_1296_fu_488;
assign add6_1334_out = add6_1334_fu_364;
assign add6_1398_out = add6_1398_fu_492;
assign add6_14100_out = add6_14100_fu_496;
assign add6_1436_out = add6_1436_fu_368;
assign add6_15102_out = add6_15102_fu_500;
assign add6_1538_out = add6_1538_fu_372;
assign add6_16104_out = add6_16104_fu_504;
assign add6_1640_out = add6_1640_fu_376;
assign add6_17106_out = add6_17106_fu_508;
assign add6_1742_out = add6_1742_fu_380;
assign add6_174_out = add6_174_fu_444;
assign add6_18108_out = add6_18108_fu_512;
assign add6_1844_out = add6_1844_fu_384;
assign add6_19110_out = add6_19110_fu_516;
assign add6_1946_out = add6_1946_fu_388;
assign add6_20112_out = add6_20112_fu_520;
assign add6_2048_out = add6_2048_fu_392;
assign add6_21114_out = add6_21114_fu_524;
assign add6_212_out = add6_212_fu_320;
assign add6_2150_out = add6_2150_fu_396;
assign add6_22116_out = add6_22116_fu_528;
assign add6_2252_out = add6_2252_fu_400;
assign add6_23118_out = add6_23118_fu_532;
assign add6_2354_out = add6_2354_fu_404;
assign add6_24120_out = add6_24120_fu_536;
assign add6_2456_out = add6_2456_fu_408;
assign add6_25122_out = add6_25122_fu_540;
assign add6_2558_out = add6_2558_fu_412;
assign add6_26124_out = add6_26124_fu_544;
assign add6_2660_out = add6_2660_fu_416;
assign add6_27126_out = add6_27126_fu_548;
assign add6_2762_out = add6_2762_fu_420;
assign add6_276_out = add6_276_fu_448;
assign add6_28128_out = add6_28128_fu_552;
assign add6_2864_out = add6_2864_fu_424;
assign add6_29130_out = add6_29130_fu_556;
assign add6_2966_out = add6_2966_fu_428;
assign add6_30132_out = add6_30132_fu_560;
assign add6_3068_out = add6_3068_fu_432;
assign add6_31134_out = add6_31134_fu_564;
assign add6_314_out = add6_314_fu_324;
assign add6_3170_out = add6_3170_fu_436;
assign add6_378_out = add6_378_fu_452;
assign add6_416_out = add6_416_fu_328;
assign add6_480_out = add6_480_fu_456;
assign add6_518_out = add6_518_fu_332;
assign add6_582_out = add6_582_fu_460;
assign add6_620_out = add6_620_fu_336;
assign add6_684_out = add6_684_fu_464;
assign add6_722_out = add6_722_fu_340;
assign add6_786_out = add6_786_fu_468;
assign add6_824_out = add6_824_fu_344;
assign add6_888_out = add6_888_fu_472;
assign add6_926_out = add6_926_fu_348;
assign add6_990_out = add6_990_fu_476;
assign add_ln13_fu_3405_p2 = (s_1_reg_4764 + 7'd32);
assign add_ln14_10_fu_2232_p2 = (shl_ln14_s_fu_2225_p3 + obs_load_cast_cast_reg_4737);
assign add_ln14_11_fu_2261_p2 = (shl_ln14_10_fu_2254_p3 + obs_load_cast_cast_reg_4737);
assign add_ln14_12_fu_2374_p2 = (shl_ln14_11_fu_2362_p5 + obs_load_cast_cast_reg_4737);
assign add_ln14_13_fu_2441_p2 = (shl_ln14_12_fu_2431_p5 + obs_load_cast_cast_reg_4737);
assign add_ln14_14_fu_2476_p2 = (shl_ln14_13_fu_2466_p5 + obs_load_cast_cast_reg_4737);
assign add_ln14_15_fu_2648_p2 = (shl_ln14_14_fu_2634_p7 + obs_load_cast_cast_reg_4737);
assign add_ln14_16_fu_2763_p2 = (shl_ln14_15_fu_2753_p5 + obs_load_cast_cast_reg_4737);
assign add_ln14_17_fu_2798_p2 = (shl_ln14_16_fu_2788_p5 + obs_load_cast_cast_reg_4737);
assign add_ln14_18_fu_2939_p2 = (shl_ln14_17_fu_2929_p5 + obs_load_cast_cast_reg_4737);
assign add_ln14_19_fu_3054_p2 = (shl_ln14_18_fu_3044_p5 + obs_load_cast_cast_reg_4737);
assign add_ln14_1_fu_1691_p2 = (shl_ln14_1_fu_1684_p3 + obs_load_cast_cast_reg_4737);
assign add_ln14_20_fu_3089_p2 = (shl_ln14_19_fu_3079_p5 + obs_load_cast_cast_reg_4737);
assign add_ln14_21_fu_3229_p2 = (shl_ln14_20_fu_3219_p5 + obs_load_cast_cast_reg_4737);
assign add_ln14_22_fu_3338_p2 = (shl_ln14_21_fu_3331_p3 + obs_load_cast_cast_reg_4737);
assign add_ln14_23_fu_3367_p2 = (shl_ln14_22_fu_3360_p3 + obs_load_cast_cast_reg_4737);
assign add_ln14_2_fu_1720_p2 = (shl_ln14_2_fu_1713_p3 + obs_load_cast_cast_reg_4737);
assign add_ln14_3_fu_1822_p2 = (shl_ln14_3_fu_1810_p5 + obs_load_cast_cast_reg_4737);
assign add_ln14_4_fu_1871_p2 = (shl_ln14_4_fu_1864_p3 + obs_load_cast_cast_reg_4737);
assign add_ln14_5_fu_1900_p2 = (shl_ln14_5_fu_1893_p3 + obs_load_cast_cast_reg_4737);
assign add_ln14_6_fu_2013_p2 = (shl_ln14_6_fu_2001_p5 + obs_load_cast_cast_reg_4737);
assign add_ln14_7_fu_2068_p2 = (shl_ln14_7_fu_2058_p5 + obs_load_cast_cast_reg_4737);
assign add_ln14_8_fu_2103_p2 = (shl_ln14_8_fu_2093_p5 + obs_load_cast_cast_reg_4737);
assign add_ln14_9_fu_2183_p2 = (shl_ln14_9_fu_2173_p5 + obs_load_cast_cast_reg_4737);
assign add_ln14_fu_1661_p2 = (shl_ln_fu_1653_p3 + obs_load_cast_cast_fu_1582_p1);
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
assign ap_block_pp0_stage8_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage8;
assign ap_ready = ap_ready_sig;
assign bitcast_ln14_10_fu_1920_p1 = reg_1574;
assign bitcast_ln14_11_fu_1925_p1 = reg_1578;
assign bitcast_ln14_12_fu_2023_p1 = reg_1566;
assign bitcast_ln14_13_fu_2028_p1 = reg_1570;
assign bitcast_ln14_14_fu_2033_p1 = reg_1574;
assign bitcast_ln14_15_fu_2038_p1 = reg_1578;
assign bitcast_ln14_16_fu_2113_p1 = reg_1566;
assign bitcast_ln14_17_fu_2118_p1 = reg_1570;
assign bitcast_ln14_18_fu_2123_p1 = reg_1574;
assign bitcast_ln14_19_fu_2128_p1 = reg_1578;
assign bitcast_ln14_1_fu_1735_p1 = reg_1570;
assign bitcast_ln14_20_fu_2193_p1 = reg_1566;
assign bitcast_ln14_21_fu_2198_p1 = reg_1570;
assign bitcast_ln14_22_fu_2203_p1 = reg_1574;
assign bitcast_ln14_23_fu_2208_p1 = reg_1578;
assign bitcast_ln14_24_fu_2271_p1 = reg_1566;
assign bitcast_ln14_25_fu_2276_p1 = reg_1570;
assign bitcast_ln14_26_fu_2281_p1 = reg_1574;
assign bitcast_ln14_27_fu_2286_p1 = reg_1578;
assign bitcast_ln14_28_fu_2396_p1 = reg_1566;
assign bitcast_ln14_29_fu_2401_p1 = reg_1570;
assign bitcast_ln14_2_fu_1740_p1 = reg_1574;
assign bitcast_ln14_30_fu_2406_p1 = reg_1574;
assign bitcast_ln14_31_fu_2411_p1 = reg_1578;
assign bitcast_ln14_32_fu_2555_p1 = reg_1566;
assign bitcast_ln14_33_fu_2560_p1 = reg_1570;
assign bitcast_ln14_34_fu_2565_p1 = reg_1574;
assign bitcast_ln14_35_fu_2570_p1 = reg_1578;
assign bitcast_ln14_36_fu_2718_p1 = reg_1566;
assign bitcast_ln14_37_fu_2723_p1 = reg_1570;
assign bitcast_ln14_38_fu_2728_p1 = reg_1574;
assign bitcast_ln14_39_fu_2733_p1 = reg_1578;
assign bitcast_ln14_3_fu_1745_p1 = reg_1578;
assign bitcast_ln14_40_fu_2868_p1 = reg_1566;
assign bitcast_ln14_41_fu_2873_p1 = reg_1570;
assign bitcast_ln14_42_fu_2878_p1 = reg_1574;
assign bitcast_ln14_43_fu_2883_p1 = reg_1578;
assign bitcast_ln14_44_fu_3009_p1 = reg_1566;
assign bitcast_ln14_45_fu_3014_p1 = reg_1570;
assign bitcast_ln14_46_fu_3019_p1 = reg_1574;
assign bitcast_ln14_47_fu_3024_p1 = reg_1578;
assign bitcast_ln14_48_fu_3159_p1 = reg_1566;
assign bitcast_ln14_49_fu_3164_p1 = reg_1570;
assign bitcast_ln14_4_fu_1832_p1 = reg_1566;
assign bitcast_ln14_50_fu_3169_p1 = reg_1574;
assign bitcast_ln14_51_fu_3174_p1 = reg_1578;
assign bitcast_ln14_52_fu_3299_p1 = reg_1566;
assign bitcast_ln14_53_fu_3304_p1 = reg_1570;
assign bitcast_ln14_54_fu_3309_p1 = reg_1574;
assign bitcast_ln14_55_fu_3314_p1 = reg_1578;
assign bitcast_ln14_56_fu_3447_p1 = reg_1566;
assign bitcast_ln14_57_fu_3452_p1 = reg_1570;
assign bitcast_ln14_58_fu_3457_p1 = reg_1574;
assign bitcast_ln14_59_fu_3462_p1 = reg_1578;
assign bitcast_ln14_5_fu_1837_p1 = reg_1570;
assign bitcast_ln14_60_fu_3527_p1 = reg_1566;
assign bitcast_ln14_61_fu_3532_p1 = reg_1570;
assign bitcast_ln14_62_fu_3537_p1 = reg_1574;
assign bitcast_ln14_63_fu_3542_p1 = reg_1578;
assign bitcast_ln14_6_fu_1842_p1 = reg_1574;
assign bitcast_ln14_7_fu_1847_p1 = reg_1578;
assign bitcast_ln14_8_fu_1910_p1 = reg_1566;
assign bitcast_ln14_9_fu_1915_p1 = reg_1570;
assign bitcast_ln14_fu_1730_p1 = reg_1566;
assign emission_address0 = emission_address0_local;
assign emission_address1 = emission_address1_local;
assign emission_ce0 = emission_ce0_local;
assign emission_ce1 = emission_ce1_local;
assign grp_fu_3803_p_ce = 1'b1;
assign grp_fu_3803_p_din0 = grp_fu_1558_p0;
assign grp_fu_3803_p_din1 = grp_fu_1558_p1;
assign grp_fu_3803_p_opcode = 2'd0;
assign grp_fu_6727_p_ce = 1'b1;
assign grp_fu_6727_p_din0 = grp_fu_1562_p0;
assign grp_fu_6727_p_din1 = grp_fu_1562_p1;
assign grp_fu_6727_p_opcode = 2'd0;
assign icmp_ln14_fu_2486_p2 = ((s_1_reg_4764 == 7'd0) ? 1'b1 : 1'b0);
assign init_address0 = init_address0_local;
assign init_address1 = init_address1_local;
assign init_ce0 = init_ce0_local;
assign init_ce1 = init_ce1_local;
assign obs_load_cast_cast_fu_1582_p1 = obs_load_cast;
assign or_ln13_10_fu_2133_p3 = {{tmp_255_reg_4949}, {4'd12}};
assign or_ln13_11_fu_2158_p5 = {{{{tmp_255_reg_4949}, {2'd3}}, {tmp_33_reg_4869}}, {1'd1}};
assign or_ln13_12_fu_2213_p3 = {{tmp_255_reg_4949}, {4'd14}};
assign or_ln13_13_fu_2242_p3 = {{tmp_255_reg_4949}, {4'd15}};
assign or_ln13_14_fu_2298_p3 = {{tmp_35_fu_2291_p3}, {5'd16}};
assign or_ln13_15_fu_2345_p5 = {{{{tmp_35_fu_2291_p3}, {1'd1}}, {tmp_258_fu_2336_p4}}, {1'd1}};
assign or_ln13_16_fu_2416_p5 = {{{{tmp_35_reg_5144}, {1'd1}}, {tmp_257_reg_5181}}, {2'd2}};
assign or_ln13_17_fu_2451_p5 = {{{{tmp_35_reg_5144}, {1'd1}}, {tmp_257_reg_5181}}, {2'd3}};
assign or_ln13_18_fu_2582_p5 = {{{{tmp_35_reg_5144}, {1'd1}}, {tmp_36_fu_2575_p3}}, {3'd4}};
assign or_ln13_19_fu_2615_p7 = {{{{{{tmp_35_reg_5144}, {1'd1}}, {tmp_36_fu_2575_p3}}, {1'd1}}, {tmp_33_reg_4869}}, {1'd1}};
assign or_ln13_1_fu_1672_p3 = {{tmp_63_cast_reg_4788}, {2'd2}};
assign or_ln13_20_fu_2738_p5 = {{{{tmp_35_reg_5144}, {1'd1}}, {tmp_36_reg_5328}}, {3'd6}};
assign or_ln13_21_fu_2773_p5 = {{{{tmp_35_reg_5144}, {1'd1}}, {tmp_36_reg_5328}}, {3'd7}};
assign or_ln13_22_fu_2888_p3 = {{tmp_35_reg_5144}, {5'd24}};
assign or_ln13_23_fu_2914_p5 = {{{{tmp_35_reg_5144}, {2'd3}}, {tmp_256_reg_4988}}, {1'd1}};
assign or_ln13_24_fu_3029_p5 = {{{{tmp_35_reg_5144}, {2'd3}}, {tmp_34_reg_4970}}, {2'd2}};
assign or_ln13_25_fu_3064_p5 = {{{{tmp_35_reg_5144}, {2'd3}}, {tmp_34_reg_4970}}, {2'd3}};
assign or_ln13_26_fu_3179_p3 = {{tmp_35_reg_5144}, {5'd28}};
assign or_ln13_27_fu_3204_p5 = {{{{tmp_35_reg_5144}, {3'd7}}, {tmp_33_reg_4869}}, {1'd1}};
assign or_ln13_28_fu_3319_p3 = {{tmp_35_reg_5144}, {5'd30}};
assign or_ln13_29_fu_3348_p3 = {{tmp_35_reg_5144}, {5'd31}};
assign or_ln13_2_fu_1701_p3 = {{tmp_63_cast_reg_4788}, {2'd3}};
assign or_ln13_3_fu_1759_p3 = {{tmp_254_fu_1750_p4}, {3'd4}};
assign or_ln13_4_fu_1793_p5 = {{{{tmp_254_fu_1750_p4}, {1'd1}}, {tmp_33_fu_1786_p3}}, {1'd1}};
assign or_ln13_5_fu_1852_p3 = {{tmp_254_reg_4851}, {3'd6}};
assign or_ln13_6_fu_1881_p3 = {{tmp_254_reg_4851}, {3'd7}};
assign or_ln13_7_fu_1939_p3 = {{tmp_255_fu_1930_p4}, {4'd8}};
assign or_ln13_8_fu_1984_p5 = {{{{tmp_255_fu_1930_p4}, {1'd1}}, {tmp_256_fu_1975_p4}}, {1'd1}};
assign or_ln13_9_fu_2043_p5 = {{{{tmp_255_reg_4949}, {1'd1}}, {tmp_34_reg_4970}}, {2'd2}};
assign or_ln13_s_fu_2078_p5 = {{{{tmp_255_reg_4949}, {1'd1}}, {tmp_34_reg_4970}}, {2'd3}};
assign or_ln14_1_fu_1772_p4 = {{{tmp_254_fu_1750_p4}, {1'd1}}, {obs_load}};
assign or_ln14_2_fu_1959_p5 = {{{{tmp_255_fu_1930_p4}, {1'd1}}, {tmp_34_fu_1952_p3}}, {obs_load}};
assign or_ln14_3_fu_2145_p4 = {{{tmp_255_reg_4949}, {2'd3}}, {obs_load}};
assign or_ln14_4_fu_2320_p5 = {{{{tmp_35_fu_2291_p3}, {1'd1}}, {tmp_257_fu_2311_p4}}, {obs_load}};
assign or_ln14_5_fu_2598_p6 = {{{{{tmp_35_reg_5144}, {1'd1}}, {tmp_36_fu_2575_p3}}, {1'd1}}, {obs_load}};
assign or_ln14_6_fu_2900_p5 = {{{{tmp_35_reg_5144}, {2'd3}}, {tmp_34_reg_4970}}, {obs_load}};
assign or_ln14_7_fu_3191_p4 = {{{tmp_35_reg_5144}, {3'd7}}, {obs_load}};
assign or_ln1_fu_1640_p3 = {{tmp_s_fu_1630_p4}, {1'd1}};
assign or_ln_fu_1617_p3 = {{tmp_63_cast_fu_1607_p4}, {obs_load}};
assign select_ln14_10_fu_3667_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? grp_fu_6727_p_dout0 : add6_21114_fu_524);
assign select_ln14_11_fu_3674_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? grp_fu_3803_p_dout0 : add6_20112_fu_520);
assign select_ln14_12_fu_3607_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? grp_fu_6727_p_dout0 : add6_19110_fu_516);
assign select_ln14_13_fu_3614_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? grp_fu_3803_p_dout0 : add6_18108_fu_512);
assign select_ln14_14_fu_3547_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? grp_fu_6727_p_dout0 : add6_17106_fu_508);
assign select_ln14_15_fu_3554_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? grp_fu_3803_p_dout0 : add6_16104_fu_504);
assign select_ln14_16_fu_3467_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? grp_fu_6727_p_dout0 : add6_15102_fu_500);
assign select_ln14_17_fu_3474_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? grp_fu_3803_p_dout0 : add6_14100_fu_496);
assign select_ln14_18_fu_3377_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? grp_fu_6727_p_dout0 : add6_1398_fu_492);
assign select_ln14_19_fu_3384_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? grp_fu_3803_p_dout0 : add6_1296_fu_488);
assign select_ln14_1_fu_3974_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? grp_fu_3803_p_dout0 : add6_30132_fu_560);
assign select_ln14_20_fu_3239_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? grp_fu_6727_p_dout0 : add6_1194_fu_484);
assign select_ln14_21_fu_3246_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? grp_fu_3803_p_dout0 : add6_1092_fu_480);
assign select_ln14_22_fu_3099_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? grp_fu_6727_p_dout0 : add6_990_fu_476);
assign select_ln14_23_fu_3106_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? grp_fu_3803_p_dout0 : add6_888_fu_472);
assign select_ln14_24_fu_2949_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? grp_fu_6727_p_dout0 : add6_786_fu_468);
assign select_ln14_25_fu_2956_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? grp_fu_3803_p_dout0 : add6_684_fu_464);
assign select_ln14_26_fu_2808_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? grp_fu_6727_p_dout0 : add6_582_fu_460);
assign select_ln14_27_fu_2815_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? grp_fu_3803_p_dout0 : add6_480_fu_456);
assign select_ln14_28_fu_2658_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? grp_fu_6727_p_dout0 : add6_378_fu_452);
assign select_ln14_29_fu_2665_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? grp_fu_3803_p_dout0 : add6_276_fu_448);
assign select_ln14_2_fu_3907_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? grp_fu_6727_p_dout0 : add6_29130_fu_556);
assign select_ln14_30_fu_2491_p3 = ((icmp_ln14_fu_2486_p2[0:0] == 1'b1) ? grp_fu_6727_p_dout0 : add6_174_fu_444);
assign select_ln14_31_fu_2499_p3 = ((icmp_ln14_fu_2486_p2[0:0] == 1'b1) ? grp_fu_3803_p_dout0 : add672_fu_440);
assign select_ln14_32_fu_3981_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? add6_3170_fu_436 : grp_fu_6727_p_dout0);
assign select_ln14_33_fu_3988_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? add6_3068_fu_432 : grp_fu_3803_p_dout0);
assign select_ln14_34_fu_3921_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? add6_2966_fu_428 : grp_fu_6727_p_dout0);
assign select_ln14_35_fu_3928_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? add6_2864_fu_424 : grp_fu_3803_p_dout0);
assign select_ln14_36_fu_3861_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? add6_2762_fu_420 : grp_fu_6727_p_dout0);
assign select_ln14_37_fu_3868_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? add6_2660_fu_416 : grp_fu_3803_p_dout0);
assign select_ln14_38_fu_3801_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? add6_2558_fu_412 : grp_fu_6727_p_dout0);
assign select_ln14_39_fu_3808_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? add6_2456_fu_408 : grp_fu_3803_p_dout0);
assign select_ln14_3_fu_3914_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? grp_fu_3803_p_dout0 : add6_28128_fu_552);
assign select_ln14_40_fu_3741_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? add6_2354_fu_404 : grp_fu_6727_p_dout0);
assign select_ln14_41_fu_3748_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? add6_2252_fu_400 : grp_fu_3803_p_dout0);
assign select_ln14_42_fu_3681_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? add6_2150_fu_396 : grp_fu_6727_p_dout0);
assign select_ln14_43_fu_3688_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? add6_2048_fu_392 : grp_fu_3803_p_dout0);
assign select_ln14_44_fu_3621_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? add6_1946_fu_388 : grp_fu_6727_p_dout0);
assign select_ln14_45_fu_3628_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? add6_1844_fu_384 : grp_fu_3803_p_dout0);
assign select_ln14_46_fu_3561_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? add6_1742_fu_380 : grp_fu_6727_p_dout0);
assign select_ln14_47_fu_3568_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? add6_1640_fu_376 : grp_fu_3803_p_dout0);
assign select_ln14_48_fu_3481_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? add6_1538_fu_372 : grp_fu_6727_p_dout0);
assign select_ln14_49_fu_3488_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? add6_1436_fu_368 : grp_fu_3803_p_dout0);
assign select_ln14_4_fu_3847_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? grp_fu_6727_p_dout0 : add6_27126_fu_548);
assign select_ln14_50_fu_3391_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? add6_1334_fu_364 : grp_fu_6727_p_dout0);
assign select_ln14_51_fu_3398_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? add6_1232_fu_360 : grp_fu_3803_p_dout0);
assign select_ln14_52_fu_3253_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? add6_1130_fu_356 : grp_fu_6727_p_dout0);
assign select_ln14_53_fu_3260_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? add6_1028_fu_352 : grp_fu_3803_p_dout0);
assign select_ln14_54_fu_3113_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? add6_926_fu_348 : grp_fu_6727_p_dout0);
assign select_ln14_55_fu_3120_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? add6_824_fu_344 : grp_fu_3803_p_dout0);
assign select_ln14_56_fu_2963_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? add6_722_fu_340 : grp_fu_6727_p_dout0);
assign select_ln14_57_fu_2970_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? add6_620_fu_336 : grp_fu_3803_p_dout0);
assign select_ln14_58_fu_2822_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? add6_518_fu_332 : grp_fu_6727_p_dout0);
assign select_ln14_59_fu_2829_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? add6_416_fu_328 : grp_fu_3803_p_dout0);
assign select_ln14_5_fu_3854_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? grp_fu_3803_p_dout0 : add6_26124_fu_544);
assign select_ln14_60_fu_2672_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? add6_314_fu_324 : grp_fu_6727_p_dout0);
assign select_ln14_61_fu_2679_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? add6_212_fu_320 : grp_fu_3803_p_dout0);
assign select_ln14_62_fu_2507_p3 = ((icmp_ln14_fu_2486_p2[0:0] == 1'b1) ? add6_110_fu_316 : grp_fu_6727_p_dout0);
assign select_ln14_63_fu_2515_p3 = ((icmp_ln14_fu_2486_p2[0:0] == 1'b1) ? add61_fu_312 : grp_fu_3803_p_dout0);
assign select_ln14_6_fu_3787_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? grp_fu_6727_p_dout0 : add6_25122_fu_540);
assign select_ln14_7_fu_3794_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? grp_fu_3803_p_dout0 : add6_24120_fu_536);
assign select_ln14_8_fu_3727_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? grp_fu_6727_p_dout0 : add6_23118_fu_532);
assign select_ln14_9_fu_3734_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? grp_fu_3803_p_dout0 : add6_22116_fu_528);
assign select_ln14_fu_3967_p3 = ((icmp_ln14_reg_5244[0:0] == 1'b1) ? grp_fu_6727_p_dout0 : add6_31134_fu_564);
assign shl_ln14_10_fu_2254_p3 = {{tmp_255_reg_4949}, {10'd960}};
assign shl_ln14_11_fu_2362_p5 = {{{{tmp_35_fu_2291_p3}, {1'd1}}, {tmp_258_fu_2336_p4}}, {7'd64}};
assign shl_ln14_12_fu_2431_p5 = {{{{tmp_35_reg_5144}, {1'd1}}, {tmp_257_reg_5181}}, {8'd128}};
assign shl_ln14_13_fu_2466_p5 = {{{{tmp_35_reg_5144}, {1'd1}}, {tmp_257_reg_5181}}, {8'd192}};
assign shl_ln14_14_fu_2634_p7 = {{{{{{tmp_35_reg_5144}, {1'd1}}, {tmp_36_fu_2575_p3}}, {1'd1}}, {tmp_33_reg_4869}}, {7'd64}};
assign shl_ln14_15_fu_2753_p5 = {{{{tmp_35_reg_5144}, {1'd1}}, {tmp_36_reg_5328}}, {9'd384}};
assign shl_ln14_16_fu_2788_p5 = {{{{tmp_35_reg_5144}, {1'd1}}, {tmp_36_reg_5328}}, {9'd448}};
assign shl_ln14_17_fu_2929_p5 = {{{{tmp_35_reg_5144}, {2'd3}}, {tmp_256_reg_4988}}, {7'd64}};
assign shl_ln14_18_fu_3044_p5 = {{{{tmp_35_reg_5144}, {2'd3}}, {tmp_34_reg_4970}}, {8'd128}};
assign shl_ln14_19_fu_3079_p5 = {{{{tmp_35_reg_5144}, {2'd3}}, {tmp_34_reg_4970}}, {8'd192}};
assign shl_ln14_1_fu_1684_p3 = {{tmp_63_cast_reg_4788}, {8'd128}};
assign shl_ln14_20_fu_3219_p5 = {{{{tmp_35_reg_5144}, {3'd7}}, {tmp_33_reg_4869}}, {7'd64}};
assign shl_ln14_21_fu_3331_p3 = {{tmp_35_reg_5144}, {11'd1920}};
assign shl_ln14_22_fu_3360_p3 = {{tmp_35_reg_5144}, {11'd1984}};
assign shl_ln14_2_fu_1713_p3 = {{tmp_63_cast_reg_4788}, {8'd192}};
assign shl_ln14_3_fu_1810_p5 = {{{{tmp_254_fu_1750_p4}, {1'd1}}, {tmp_33_fu_1786_p3}}, {7'd64}};
assign shl_ln14_4_fu_1864_p3 = {{tmp_254_reg_4851}, {9'd384}};
assign shl_ln14_5_fu_1893_p3 = {{tmp_254_reg_4851}, {9'd448}};
assign shl_ln14_6_fu_2001_p5 = {{{{tmp_255_fu_1930_p4}, {1'd1}}, {tmp_256_fu_1975_p4}}, {7'd64}};
assign shl_ln14_7_fu_2058_p5 = {{{{tmp_255_reg_4949}, {1'd1}}, {tmp_34_reg_4970}}, {8'd128}};
assign shl_ln14_8_fu_2093_p5 = {{{{tmp_255_reg_4949}, {1'd1}}, {tmp_34_reg_4970}}, {8'd192}};
assign shl_ln14_9_fu_2173_p5 = {{{{tmp_255_reg_4949}, {2'd3}}, {tmp_33_reg_4869}}, {7'd64}};
assign shl_ln14_s_fu_2225_p3 = {{tmp_255_reg_4949}, {10'd896}};
assign shl_ln_fu_1653_p3 = {{tmp_s_fu_1630_p4}, {7'd64}};
assign tmp_254_fu_1750_p4 = {{s_1_reg_4764[5:3]}};
assign tmp_255_fu_1930_p4 = {{s_1_reg_4764[5:4]}};
assign tmp_256_fu_1975_p4 = {{s_1_reg_4764[2:1]}};
assign tmp_257_fu_2311_p4 = {{s_1_reg_4764[3:2]}};
assign tmp_258_fu_2336_p4 = {{s_1_reg_4764[3:1]}};
assign tmp_33_fu_1786_p3 = s_1_reg_4764[32'd1];
assign tmp_34_fu_1952_p3 = s_1_reg_4764[32'd2];
assign tmp_35_fu_2291_p3 = s_1_reg_4764[32'd5];
assign tmp_36_fu_2575_p3 = s_1_reg_4764[32'd3];
assign tmp_63_cast_fu_1607_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign tmp_s_fu_1630_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign zext_ln13_fu_1602_p1 = ap_sig_allocacmp_s_1;
assign zext_ln14_10_fu_1805_p1 = or_ln13_4_fu_1793_p5;
assign zext_ln14_11_fu_1876_p1 = add_ln14_4_fu_1871_p2;
assign zext_ln14_12_fu_1859_p1 = or_ln13_5_fu_1852_p3;
assign zext_ln14_13_fu_1905_p1 = add_ln14_5_fu_1900_p2;
assign zext_ln14_14_fu_1970_p1 = or_ln14_2_fu_1959_p5;
assign zext_ln14_15_fu_1888_p1 = or_ln13_6_fu_1881_p3;
assign zext_ln14_16_fu_2018_p1 = add_ln14_6_fu_2013_p2;
assign zext_ln14_17_fu_1947_p1 = or_ln13_7_fu_1939_p3;
assign zext_ln14_18_fu_2073_p1 = add_ln14_7_fu_2068_p2;
assign zext_ln14_19_fu_1996_p1 = or_ln13_8_fu_1984_p5;
assign zext_ln14_1_fu_1648_p1 = or_ln1_fu_1640_p3;
assign zext_ln14_20_fu_2108_p1 = add_ln14_8_fu_2103_p2;
assign zext_ln14_21_fu_2153_p1 = or_ln14_3_fu_2145_p4;
assign zext_ln14_22_fu_2053_p1 = or_ln13_9_fu_2043_p5;
assign zext_ln14_23_fu_2188_p1 = add_ln14_9_fu_2183_p2;
assign zext_ln14_24_fu_2088_p1 = or_ln13_s_fu_2078_p5;
assign zext_ln14_25_fu_2237_p1 = add_ln14_10_fu_2232_p2;
assign zext_ln14_26_fu_2140_p1 = or_ln13_10_fu_2133_p3;
assign zext_ln14_27_fu_2266_p1 = add_ln14_11_fu_2261_p2;
assign zext_ln14_28_fu_2331_p1 = or_ln14_4_fu_2320_p5;
assign zext_ln14_29_fu_2168_p1 = or_ln13_11_fu_2158_p5;
assign zext_ln14_2_fu_1667_p1 = add_ln14_fu_1661_p2;
assign zext_ln14_30_fu_2379_p1 = add_ln14_12_fu_2374_p2;
assign zext_ln14_31_fu_2220_p1 = or_ln13_12_fu_2213_p3;
assign zext_ln14_32_fu_2446_p1 = add_ln14_13_fu_2441_p2;
assign zext_ln14_33_fu_2249_p1 = or_ln13_13_fu_2242_p3;
assign zext_ln14_34_fu_2481_p1 = add_ln14_14_fu_2476_p2;
assign zext_ln14_35_fu_2610_p1 = or_ln14_5_fu_2598_p6;
assign zext_ln14_36_fu_2306_p1 = or_ln13_14_fu_2298_p3;
assign zext_ln14_37_fu_2653_p1 = add_ln14_15_fu_2648_p2;
assign zext_ln14_38_fu_2357_p1 = or_ln13_15_fu_2345_p5;
assign zext_ln14_39_fu_2768_p1 = add_ln14_16_fu_2763_p2;
assign zext_ln14_3_fu_1679_p1 = or_ln13_1_fu_1672_p3;
assign zext_ln14_40_fu_2426_p1 = or_ln13_16_fu_2416_p5;
assign zext_ln14_41_fu_2803_p1 = add_ln14_17_fu_2798_p2;
assign zext_ln14_42_fu_2909_p1 = or_ln14_6_fu_2900_p5;
assign zext_ln14_43_fu_2461_p1 = or_ln13_17_fu_2451_p5;
assign zext_ln14_44_fu_2944_p1 = add_ln14_18_fu_2939_p2;
assign zext_ln14_45_fu_2593_p1 = or_ln13_18_fu_2582_p5;
assign zext_ln14_46_fu_3059_p1 = add_ln14_19_fu_3054_p2;
assign zext_ln14_47_fu_2629_p1 = or_ln13_19_fu_2615_p7;
assign zext_ln14_48_fu_3094_p1 = add_ln14_20_fu_3089_p2;
assign zext_ln14_49_fu_3199_p1 = or_ln14_7_fu_3191_p4;
assign zext_ln14_4_fu_1696_p1 = add_ln14_1_fu_1691_p2;
assign zext_ln14_50_fu_2748_p1 = or_ln13_20_fu_2738_p5;
assign zext_ln14_51_fu_3234_p1 = add_ln14_21_fu_3229_p2;
assign zext_ln14_52_fu_2783_p1 = or_ln13_21_fu_2773_p5;
assign zext_ln14_53_fu_3343_p1 = add_ln14_22_fu_3338_p2;
assign zext_ln14_54_fu_2895_p1 = or_ln13_22_fu_2888_p3;
assign zext_ln14_55_fu_3372_p1 = add_ln14_23_fu_3367_p2;
assign zext_ln14_56_fu_2924_p1 = or_ln13_23_fu_2914_p5;
assign zext_ln14_57_fu_3039_p1 = or_ln13_24_fu_3029_p5;
assign zext_ln14_58_fu_3074_p1 = or_ln13_25_fu_3064_p5;
assign zext_ln14_59_fu_3186_p1 = or_ln13_26_fu_3179_p3;
assign zext_ln14_5_fu_1708_p1 = or_ln13_2_fu_1701_p3;
assign zext_ln14_60_fu_3214_p1 = or_ln13_27_fu_3204_p5;
assign zext_ln14_61_fu_3326_p1 = or_ln13_28_fu_3319_p3;
assign zext_ln14_62_fu_3355_p1 = or_ln13_29_fu_3348_p3;
assign zext_ln14_6_fu_1725_p1 = add_ln14_2_fu_1720_p2;
assign zext_ln14_7_fu_1781_p1 = or_ln14_1_fu_1772_p4;
assign zext_ln14_8_fu_1767_p1 = or_ln13_3_fu_1759_p3;
assign zext_ln14_9_fu_1827_p1 = add_ln14_3_fu_1822_p2;
assign zext_ln14_fu_1625_p1 = or_ln_fu_1617_p3;
always @ (posedge ap_clk) begin
    obs_load_cast_cast_reg_4737[11:8] <= 4'b0000;
end
endmodule 