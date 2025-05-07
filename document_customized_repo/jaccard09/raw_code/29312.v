module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,init_0_address0,init_0_ce0,init_0_q0,init_0_address1,init_0_ce1,init_0_q1,empty_9,emission_0_address0,emission_0_ce0,emission_0_q0,emission_0_address1,emission_0_ce1,emission_0_q1,emission_1_address0,emission_1_ce0,emission_1_q0,emission_1_address1,emission_1_ce1,emission_1_q1,empty,conv3_udiv_cast,conv3_udiv,init_1_address0,init_1_ce0,init_1_q0,init_1_address1,init_1_ce1,init_1_q1,add6_31134_out,add6_31134_out_ap_vld,add6_30132_out,add6_30132_out_ap_vld,add6_29130_out,add6_29130_out_ap_vld,add6_28128_out,add6_28128_out_ap_vld,add6_27126_out,add6_27126_out_ap_vld,add6_26124_out,add6_26124_out_ap_vld,add6_25122_out,add6_25122_out_ap_vld,add6_24120_out,add6_24120_out_ap_vld,add6_23118_out,add6_23118_out_ap_vld,add6_22116_out,add6_22116_out_ap_vld,add6_21114_out,add6_21114_out_ap_vld,add6_20112_out,add6_20112_out_ap_vld,add6_19110_out,add6_19110_out_ap_vld,add6_18108_out,add6_18108_out_ap_vld,add6_17106_out,add6_17106_out_ap_vld,add6_16104_out,add6_16104_out_ap_vld,add6_15102_out,add6_15102_out_ap_vld,add6_14100_out,add6_14100_out_ap_vld,add6_1398_out,add6_1398_out_ap_vld,add6_1296_out,add6_1296_out_ap_vld,add6_1194_out,add6_1194_out_ap_vld,add6_1092_out,add6_1092_out_ap_vld,add6_990_out,add6_990_out_ap_vld,add6_888_out,add6_888_out_ap_vld,add6_786_out,add6_786_out_ap_vld,add6_684_out,add6_684_out_ap_vld,add6_582_out,add6_582_out_ap_vld,add6_480_out,add6_480_out_ap_vld,add6_378_out,add6_378_out_ap_vld,add6_276_out,add6_276_out_ap_vld,add6_174_out,add6_174_out_ap_vld,add672_out,add672_out_ap_vld,add6_3170_out,add6_3170_out_ap_vld,add6_3068_out,add6_3068_out_ap_vld,add6_2966_out,add6_2966_out_ap_vld,add6_2864_out,add6_2864_out_ap_vld,add6_2762_out,add6_2762_out_ap_vld,add6_2660_out,add6_2660_out_ap_vld,add6_2558_out,add6_2558_out_ap_vld,add6_2456_out,add6_2456_out_ap_vld,add6_2354_out,add6_2354_out_ap_vld,add6_2252_out,add6_2252_out_ap_vld,add6_2150_out,add6_2150_out_ap_vld,add6_2048_out,add6_2048_out_ap_vld,add6_1946_out,add6_1946_out_ap_vld,add6_1844_out,add6_1844_out_ap_vld,add6_1742_out,add6_1742_out_ap_vld,add6_1640_out,add6_1640_out_ap_vld,add6_1538_out,add6_1538_out_ap_vld,add6_1436_out,add6_1436_out_ap_vld,add6_1334_out,add6_1334_out_ap_vld,add6_1232_out,add6_1232_out_ap_vld,add6_1130_out,add6_1130_out_ap_vld,add6_1028_out,add6_1028_out_ap_vld,add6_926_out,add6_926_out_ap_vld,add6_824_out,add6_824_out_ap_vld,add6_722_out,add6_722_out_ap_vld,add6_620_out,add6_620_out_ap_vld,add6_518_out,add6_518_out_ap_vld,add6_416_out,add6_416_out_ap_vld,add6_314_out,add6_314_out_ap_vld,add6_212_out,add6_212_out_ap_vld,add6_110_out,add6_110_out_ap_vld,add61_out,add61_out_ap_vld,grp_fu_3912_p_din0,grp_fu_3912_p_din1,grp_fu_3912_p_opcode,grp_fu_3912_p_dout0,grp_fu_3912_p_ce,grp_fu_7037_p_din0,grp_fu_7037_p_din1,grp_fu_7037_p_opcode,grp_fu_7037_p_dout0,grp_fu_7037_p_ce); 
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
output  [4:0] init_0_address0;
output   init_0_ce0;
input  [63:0] init_0_q0;
output  [4:0] init_0_address1;
output   init_0_ce1;
input  [63:0] init_0_q1;
input  [6:0] empty_9;
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
output  [63:0] grp_fu_3912_p_din0;
output  [63:0] grp_fu_3912_p_din1;
output  [1:0] grp_fu_3912_p_opcode;
input  [63:0] grp_fu_3912_p_dout0;
output   grp_fu_3912_p_ce;
output  [63:0] grp_fu_7037_p_din0;
output  [63:0] grp_fu_7037_p_din1;
output  [1:0] grp_fu_7037_p_opcode;
input  [63:0] grp_fu_7037_p_dout0;
output   grp_fu_7037_p_ce;
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
reg   [0:0] tmp_128_reg_4929;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [63:0] reg_1856;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] grp_fu_1842_p3;
reg   [63:0] reg_1860;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
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
wire   [63:0] grp_fu_1849_p3;
reg   [63:0] reg_1864;
reg   [63:0] reg_1868;
reg   [63:0] reg_1873;
reg   [63:0] reg_1877;
reg   [63:0] reg_1882;
reg   [63:0] reg_1887;
reg   [63:0] reg_1892;
reg   [63:0] reg_1897;
wire    ap_block_pp0_stage0_11001;
wire   [10:0] conv3_udiv_cast_cast_fu_1902_p1;
reg   [10:0] conv3_udiv_cast_cast_reg_4881;
wire   [7:0] p_cast_fu_1906_p1;
reg   [7:0] p_cast_reg_4908;
reg   [6:0] s_1_reg_4915;
wire   [2:0] tmp_65_fu_1942_p4;
reg   [2:0] tmp_65_reg_4938;
wire   [3:0] tmp_162_fu_1986_p4;
reg   [3:0] tmp_162_reg_4968;
wire   [0:0] tmp_129_fu_2046_p3;
reg   [0:0] tmp_129_reg_5009;
wire   [63:0] bitcast_ln14_fu_2081_p1;
wire   [63:0] bitcast_ln14_1_fu_2086_p1;
wire   [63:0] bitcast_ln14_2_fu_2091_p1;
wire   [1:0] tmp_217_fu_2131_p4;
reg   [1:0] tmp_217_reg_5075;
wire   [1:0] tmp_221_fu_2140_p4;
reg   [1:0] tmp_221_reg_5089;
wire   [0:0] tmp_130_fu_2165_p3;
reg   [0:0] tmp_130_reg_5096;
wire   [63:0] bitcast_ln14_47_fu_2190_p1;
wire   [63:0] bitcast_ln14_3_fu_2195_p1;
wire   [63:0] bitcast_ln14_4_fu_2200_p1;
wire   [63:0] bitcast_ln14_31_fu_2268_p1;
wire   [63:0] bitcast_ln14_48_fu_2273_p1;
wire   [63:0] bitcast_ln14_5_fu_2278_p1;
wire   [63:0] bitcast_ln14_6_fu_2283_p1;
wire   [0:0] tmp_131_fu_2323_p3;
reg   [0:0] tmp_131_reg_5220;
wire   [2:0] tmp_s_fu_2330_p4;
reg   [2:0] tmp_s_reg_5246;
wire   [1:0] tmp_255_fu_2355_p4;
reg   [1:0] tmp_255_reg_5251;
wire   [63:0] bitcast_ln14_32_fu_2382_p1;
reg   [63:0] init_0_load_7_reg_5262;
wire   [63:0] bitcast_ln14_49_fu_2387_p1;
reg   [63:0] init_1_load_7_reg_5282;
wire   [63:0] bitcast_ln14_7_fu_2392_p1;
wire   [63:0] bitcast_ln14_8_fu_2397_p1;
wire   [0:0] tmp_132_fu_2444_p3;
reg   [0:0] tmp_132_reg_5327;
wire   [63:0] bitcast_ln14_33_fu_2486_p1;
reg   [63:0] init_0_load_9_reg_5341;
wire   [63:0] bitcast_ln14_50_fu_2491_p1;
reg   [63:0] init_1_load_9_reg_5361;
wire   [63:0] bitcast_ln14_9_fu_2496_p1;
wire   [63:0] bitcast_ln14_10_fu_2501_p1;
wire   [63:0] bitcast_ln14_34_fu_2571_p1;
reg   [63:0] init_0_load_11_reg_5411;
wire   [63:0] bitcast_ln14_51_fu_2576_p1;
reg   [63:0] init_1_load_11_reg_5431;
wire   [63:0] bitcast_ln14_11_fu_2581_p1;
wire   [63:0] bitcast_ln14_12_fu_2586_p1;
wire   [63:0] bitcast_ln14_35_fu_2654_p1;
reg   [63:0] init_0_load_13_reg_5481;
wire   [63:0] bitcast_ln14_52_fu_2659_p1;
reg   [63:0] init_1_load_13_reg_5501;
wire   [63:0] bitcast_ln14_13_fu_2664_p1;
wire   [63:0] bitcast_ln14_14_fu_2669_p1;
wire   [63:0] bitcast_ln14_36_fu_2710_p1;
reg   [63:0] init_0_load_15_reg_5551;
wire   [63:0] bitcast_ln14_53_fu_2715_p1;
reg   [63:0] init_1_load_15_reg_5561;
wire   [63:0] bitcast_ln14_15_fu_2732_p1;
wire   [63:0] bitcast_ln14_16_fu_2737_p1;
wire   [63:0] bitcast_ln14_37_fu_2784_p1;
wire   [63:0] bitcast_ln14_54_fu_2788_p1;
wire   [0:0] icmp_ln14_fu_2792_p2;
reg   [0:0] icmp_ln14_reg_5606;
wire   [63:0] bitcast_ln14_17_fu_2861_p1;
wire   [63:0] bitcast_ln14_18_fu_2866_p1;
wire   [63:0] bitcast_ln14_38_fu_2912_p1;
wire   [63:0] bitcast_ln14_55_fu_2917_p1;
wire   [63:0] bitcast_ln14_19_fu_2982_p1;
wire   [63:0] bitcast_ln14_20_fu_2987_p1;
wire   [63:0] bitcast_ln14_39_fu_3034_p1;
wire   [63:0] bitcast_ln14_56_fu_3038_p1;
wire   [63:0] bitcast_ln14_21_fu_3102_p1;
wire   [63:0] bitcast_ln14_22_fu_3107_p1;
wire   [63:0] bitcast_ln14_40_fu_3147_p1;
wire   [63:0] bitcast_ln14_57_fu_3152_p1;
wire   [63:0] bitcast_ln14_23_fu_3217_p1;
wire   [63:0] bitcast_ln14_24_fu_3222_p1;
wire   [63:0] bitcast_ln14_41_fu_3269_p1;
wire   [63:0] bitcast_ln14_58_fu_3273_p1;
wire   [63:0] bitcast_ln14_25_fu_3337_p1;
wire   [63:0] bitcast_ln14_26_fu_3342_p1;
wire   [63:0] bitcast_ln14_42_fu_3382_p1;
wire   [63:0] bitcast_ln14_59_fu_3387_p1;
wire   [63:0] bitcast_ln14_27_fu_3452_p1;
wire   [63:0] bitcast_ln14_28_fu_3457_p1;
wire   [63:0] bitcast_ln14_43_fu_3462_p1;
wire   [63:0] bitcast_ln14_60_fu_3484_p1;
wire   [63:0] bitcast_ln14_29_fu_3576_p1;
wire   [63:0] bitcast_ln14_30_fu_3581_p1;
wire   [63:0] bitcast_ln14_44_fu_3586_p1;
wire   [63:0] select_ln14_94_fu_3591_p3;
reg   [63:0] select_ln14_94_reg_5925;
wire   [63:0] bitcast_ln14_61_fu_3598_p1;
wire   [63:0] select_ln14_95_fu_3603_p3;
reg   [63:0] select_ln14_95_reg_5935;
wire   [63:0] bitcast_ln14_45_fu_3670_p1;
wire   [63:0] bitcast_ln14_46_fu_3674_p1;
wire   [63:0] bitcast_ln14_62_fu_3678_p1;
wire   [63:0] bitcast_ln14_63_fu_3682_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln9_fu_1936_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_1960_p1;
wire   [63:0] zext_ln14_1_fu_1980_p1;
wire   [63:0] zext_ln14_32_fu_2004_p1;
wire   [63:0] zext_ln14_2_fu_2022_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_3_fu_2040_p1;
wire   [63:0] zext_ln14_33_fu_2062_p1;
wire   [63:0] zext_ln14_34_fu_2075_p1;
wire   [63:0] zext_ln14_4_fu_2104_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_5_fu_2125_p1;
wire   [63:0] zext_ln14_35_fu_2159_p1;
wire   [63:0] zext_ln14_36_fu_2184_p1;
wire   [63:0] zext_ln14_6_fu_2217_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_7_fu_2235_p1;
wire   [63:0] zext_ln14_37_fu_2249_p1;
wire   [63:0] zext_ln14_38_fu_2262_p1;
wire   [63:0] zext_ln14_8_fu_2296_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln14_9_fu_2317_p1;
wire   [63:0] zext_ln14_39_fu_2349_p1;
wire   [63:0] zext_ln14_40_fu_2376_p1;
wire   [63:0] zext_ln14_10_fu_2417_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln14_11_fu_2438_p1;
wire   [63:0] zext_ln14_41_fu_2463_p1;
wire   [63:0] zext_ln14_42_fu_2480_p1;
wire   [63:0] zext_ln14_12_fu_2514_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln14_13_fu_2535_p1;
wire   [63:0] zext_ln14_43_fu_2549_p1;
wire   [63:0] zext_ln14_44_fu_2565_p1;
wire   [63:0] zext_ln14_14_fu_2603_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln14_15_fu_2621_p1;
wire   [63:0] zext_ln14_45_fu_2635_p1;
wire   [63:0] zext_ln14_46_fu_2648_p1;
wire   [63:0] zext_ln14_16_fu_2683_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln14_17_fu_2704_p1;
wire   [63:0] zext_ln14_18_fu_2757_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln14_19_fu_2778_p1;
wire   [63:0] zext_ln14_20_fu_2882_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln14_21_fu_2906_p1;
wire   [63:0] zext_ln14_22_fu_3007_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln14_23_fu_3028_p1;
wire   [63:0] zext_ln14_24_fu_3120_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln14_25_fu_3141_p1;
wire   [63:0] zext_ln14_26_fu_3242_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln14_27_fu_3263_p1;
wire   [63:0] zext_ln14_28_fu_3355_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln14_29_fu_3376_p1;
wire   [63:0] zext_ln14_30_fu_3478_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln14_31_fu_3500_p1;
reg   [6:0] s_fu_298;
wire   [6:0] add_ln13_fu_3534_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg   [63:0] add61_fu_302;
wire   [63:0] select_ln14_63_fu_2821_p3;
reg   [63:0] add6_110_fu_306;
wire   [63:0] select_ln14_62_fu_2813_p3;
reg   [63:0] add6_212_fu_310;
wire   [63:0] select_ln14_61_fu_2943_p3;
reg   [63:0] add6_314_fu_314;
wire   [63:0] select_ln14_60_fu_2936_p3;
reg   [63:0] add6_416_fu_318;
wire   [63:0] select_ln14_59_fu_3063_p3;
reg   [63:0] add6_518_fu_322;
wire   [63:0] select_ln14_58_fu_3056_p3;
reg   [63:0] add6_620_fu_326;
wire   [63:0] select_ln14_57_fu_3178_p3;
reg   [63:0] add6_722_fu_330;
wire   [63:0] select_ln14_56_fu_3171_p3;
reg   [63:0] add6_824_fu_334;
wire   [63:0] select_ln14_55_fu_3298_p3;
reg   [63:0] add6_926_fu_338;
wire   [63:0] select_ln14_54_fu_3291_p3;
reg   [63:0] add6_1028_fu_342;
wire   [63:0] select_ln14_53_fu_3413_p3;
reg   [63:0] add6_1130_fu_346;
wire   [63:0] select_ln14_52_fu_3406_p3;
reg   [63:0] add6_1232_fu_350;
wire   [63:0] select_ln14_51_fu_3527_p3;
reg   [63:0] add6_1334_fu_354;
wire   [63:0] select_ln14_50_fu_3520_p3;
reg   [63:0] add6_1436_fu_358;
wire   [63:0] select_ln14_49_fu_3631_p3;
reg   [63:0] add6_1538_fu_362;
wire   [63:0] select_ln14_48_fu_3624_p3;
reg   [63:0] add6_1640_fu_366;
wire   [63:0] select_ln14_47_fu_3707_p3;
reg   [63:0] add6_1742_fu_370;
wire   [63:0] select_ln14_46_fu_3700_p3;
reg   [63:0] add6_1844_fu_374;
wire   [63:0] select_ln14_45_fu_3767_p3;
reg   [63:0] add6_1946_fu_378;
wire   [63:0] select_ln14_44_fu_3760_p3;
reg   [63:0] add6_2048_fu_382;
wire   [63:0] select_ln14_43_fu_3827_p3;
reg   [63:0] add6_2150_fu_386;
wire   [63:0] select_ln14_42_fu_3820_p3;
reg   [63:0] add6_2252_fu_390;
wire   [63:0] select_ln14_41_fu_3887_p3;
reg   [63:0] add6_2354_fu_394;
wire   [63:0] select_ln14_40_fu_3880_p3;
reg   [63:0] add6_2456_fu_398;
wire   [63:0] select_ln14_39_fu_3947_p3;
reg   [63:0] add6_2558_fu_402;
wire   [63:0] select_ln14_38_fu_3940_p3;
reg   [63:0] add6_2660_fu_406;
wire   [63:0] select_ln14_37_fu_4007_p3;
reg   [63:0] add6_2762_fu_410;
wire   [63:0] select_ln14_36_fu_4000_p3;
reg   [63:0] add6_2864_fu_414;
wire   [63:0] select_ln14_35_fu_4067_p3;
reg   [63:0] add6_2966_fu_418;
wire   [63:0] select_ln14_34_fu_4060_p3;
reg   [63:0] add6_3068_fu_422;
wire   [63:0] select_ln14_33_fu_4127_p3;
reg   [63:0] add6_3170_fu_426;
wire   [63:0] select_ln14_32_fu_4120_p3;
reg   [63:0] add672_fu_430;
wire   [63:0] select_ln14_31_fu_2805_p3;
reg   [63:0] add6_174_fu_434;
wire   [63:0] select_ln14_30_fu_2797_p3;
reg   [63:0] add6_276_fu_438;
wire   [63:0] select_ln14_29_fu_2929_p3;
reg   [63:0] add6_378_fu_442;
wire   [63:0] select_ln14_28_fu_2922_p3;
reg   [63:0] add6_480_fu_446;
wire   [63:0] select_ln14_27_fu_3049_p3;
reg   [63:0] add6_582_fu_450;
wire   [63:0] select_ln14_26_fu_3042_p3;
reg   [63:0] add6_684_fu_454;
wire   [63:0] select_ln14_25_fu_3164_p3;
reg   [63:0] add6_786_fu_458;
wire   [63:0] select_ln14_24_fu_3157_p3;
reg   [63:0] add6_888_fu_462;
wire   [63:0] select_ln14_23_fu_3284_p3;
reg   [63:0] add6_990_fu_466;
wire   [63:0] select_ln14_22_fu_3277_p3;
reg   [63:0] add6_1092_fu_470;
wire   [63:0] select_ln14_21_fu_3399_p3;
reg   [63:0] add6_1194_fu_474;
wire   [63:0] select_ln14_20_fu_3392_p3;
reg   [63:0] add6_1296_fu_478;
wire   [63:0] select_ln14_19_fu_3513_p3;
reg   [63:0] add6_1398_fu_482;
wire   [63:0] select_ln14_18_fu_3506_p3;
reg   [63:0] add6_14100_fu_486;
wire   [63:0] select_ln14_17_fu_3617_p3;
reg   [63:0] add6_15102_fu_490;
wire   [63:0] select_ln14_16_fu_3610_p3;
reg   [63:0] add6_16104_fu_494;
wire   [63:0] select_ln14_15_fu_3693_p3;
reg   [63:0] add6_17106_fu_498;
wire   [63:0] select_ln14_14_fu_3686_p3;
reg   [63:0] add6_18108_fu_502;
wire   [63:0] select_ln14_13_fu_3753_p3;
reg   [63:0] add6_19110_fu_506;
wire   [63:0] select_ln14_12_fu_3746_p3;
reg   [63:0] add6_20112_fu_510;
wire   [63:0] select_ln14_11_fu_3813_p3;
reg   [63:0] add6_21114_fu_514;
wire   [63:0] select_ln14_10_fu_3806_p3;
reg   [63:0] add6_22116_fu_518;
wire   [63:0] select_ln14_9_fu_3873_p3;
reg   [63:0] add6_23118_fu_522;
wire   [63:0] select_ln14_8_fu_3866_p3;
reg   [63:0] add6_24120_fu_526;
wire   [63:0] select_ln14_7_fu_3933_p3;
reg   [63:0] add6_25122_fu_530;
wire   [63:0] select_ln14_6_fu_3926_p3;
reg   [63:0] add6_26124_fu_534;
wire   [63:0] select_ln14_5_fu_3993_p3;
reg   [63:0] add6_27126_fu_538;
wire   [63:0] select_ln14_4_fu_3986_p3;
reg   [63:0] add6_28128_fu_542;
wire   [63:0] select_ln14_3_fu_4053_p3;
reg   [63:0] add6_29130_fu_546;
wire   [63:0] select_ln14_2_fu_4046_p3;
reg   [63:0] add6_30132_fu_550;
wire   [63:0] select_ln14_1_fu_4113_p3;
reg   [63:0] add6_31134_fu_554;
wire   [63:0] select_ln14_fu_4106_p3;
wire    ap_block_pp0_stage8_01001;
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
reg   [63:0] grp_fu_1834_p0;
reg   [63:0] grp_fu_1834_p1;
reg   [63:0] grp_fu_1838_p0;
reg   [63:0] grp_fu_1838_p1;
wire   [4:0] lshr_ln9_fu_1926_p4;
wire   [10:0] or_ln_fu_1952_p3;
wire   [10:0] or_ln1_fu_1966_p3;
wire   [10:0] add_ln14_fu_1974_p2;
wire   [4:0] or_ln14_1_fu_1996_p3;
wire   [10:0] or_ln14_2_fu_2010_p3;
wire   [10:0] add_ln14_1_fu_2017_p2;
wire   [10:0] or_ln14_3_fu_2028_p3;
wire   [10:0] add_ln14_2_fu_2035_p2;
wire   [4:0] or_ln14_4_fu_2053_p4;
wire   [4:0] or_ln14_7_fu_2068_p3;
wire   [10:0] or_ln14_5_fu_2096_p4;
wire   [10:0] or_ln14_6_fu_2110_p5;
wire   [10:0] add_ln14_3_fu_2120_p2;
wire   [4:0] or_ln14_s_fu_2149_p4;
wire   [4:0] or_ln14_12_fu_2172_p5;
wire   [10:0] or_ln14_8_fu_2205_p3;
wire   [10:0] add_ln14_4_fu_2212_p2;
wire   [10:0] or_ln14_9_fu_2223_p3;
wire   [10:0] add_ln14_5_fu_2230_p2;
wire   [4:0] or_ln14_15_fu_2241_p4;
wire   [4:0] or_ln14_18_fu_2255_p3;
wire   [10:0] or_ln14_10_fu_2288_p4;
wire   [10:0] or_ln14_11_fu_2302_p5;
wire   [10:0] add_ln14_6_fu_2312_p2;
wire   [4:0] or_ln14_21_fu_2339_p4;
wire   [4:0] or_ln14_24_fu_2364_p5;
wire   [10:0] or_ln14_13_fu_2402_p5;
wire   [10:0] add_ln14_7_fu_2412_p2;
wire   [10:0] or_ln14_14_fu_2423_p5;
wire   [10:0] add_ln14_8_fu_2433_p2;
wire   [4:0] or_ln14_27_fu_2451_p6;
wire   [4:0] or_ln14_30_fu_2469_p5;
wire   [10:0] or_ln14_16_fu_2506_p4;
wire   [10:0] or_ln14_17_fu_2520_p5;
wire   [10:0] add_ln14_9_fu_2530_p2;
wire   [4:0] or_ln14_33_fu_2541_p4;
wire   [4:0] or_ln14_36_fu_2555_p5;
wire   [10:0] or_ln14_19_fu_2591_p3;
wire   [10:0] add_ln14_10_fu_2598_p2;
wire   [10:0] or_ln14_20_fu_2609_p3;
wire   [10:0] add_ln14_11_fu_2616_p2;
wire   [4:0] or_ln14_39_fu_2627_p4;
wire   [4:0] or_ln14_42_fu_2641_p3;
wire   [10:0] or_ln14_22_fu_2674_p5;
wire   [10:0] or_ln14_23_fu_2689_p5;
wire   [10:0] add_ln14_12_fu_2699_p2;
wire   [10:0] or_ln14_25_fu_2742_p5;
wire   [10:0] add_ln14_13_fu_2752_p2;
wire   [10:0] or_ln14_26_fu_2763_p5;
wire   [10:0] add_ln14_14_fu_2773_p2;
wire   [10:0] or_ln14_28_fu_2871_p6;
wire   [10:0] or_ln14_29_fu_2888_p7;
wire   [10:0] add_ln14_15_fu_2901_p2;
wire   [10:0] or_ln14_31_fu_2992_p5;
wire   [10:0] add_ln14_16_fu_3002_p2;
wire   [10:0] or_ln14_32_fu_3013_p5;
wire   [10:0] add_ln14_17_fu_3023_p2;
wire   [10:0] or_ln14_34_fu_3112_p4;
wire   [10:0] or_ln14_35_fu_3126_p5;
wire   [10:0] add_ln14_18_fu_3136_p2;
wire   [10:0] or_ln14_37_fu_3227_p5;
wire   [10:0] add_ln14_19_fu_3237_p2;
wire   [10:0] or_ln14_38_fu_3248_p5;
wire   [10:0] add_ln14_20_fu_3258_p2;
wire   [10:0] or_ln14_40_fu_3347_p4;
wire   [10:0] or_ln14_41_fu_3361_p5;
wire   [10:0] add_ln14_21_fu_3371_p2;
wire   [10:0] or_ln14_43_fu_3466_p3;
wire   [10:0] add_ln14_22_fu_3473_p2;
wire   [10:0] or_ln14_44_fu_3488_p3;
wire   [10:0] add_ln14_23_fu_3495_p2;
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
#0 s_fu_298 = 7'd0;
#0 add61_fu_302 = 64'd0;
#0 add6_110_fu_306 = 64'd0;
#0 add6_212_fu_310 = 64'd0;
#0 add6_314_fu_314 = 64'd0;
#0 add6_416_fu_318 = 64'd0;
#0 add6_518_fu_322 = 64'd0;
#0 add6_620_fu_326 = 64'd0;
#0 add6_722_fu_330 = 64'd0;
#0 add6_824_fu_334 = 64'd0;
#0 add6_926_fu_338 = 64'd0;
#0 add6_1028_fu_342 = 64'd0;
#0 add6_1130_fu_346 = 64'd0;
#0 add6_1232_fu_350 = 64'd0;
#0 add6_1334_fu_354 = 64'd0;
#0 add6_1436_fu_358 = 64'd0;
#0 add6_1538_fu_362 = 64'd0;
#0 add6_1640_fu_366 = 64'd0;
#0 add6_1742_fu_370 = 64'd0;
#0 add6_1844_fu_374 = 64'd0;
#0 add6_1946_fu_378 = 64'd0;
#0 add6_2048_fu_382 = 64'd0;
#0 add6_2150_fu_386 = 64'd0;
#0 add6_2252_fu_390 = 64'd0;
#0 add6_2354_fu_394 = 64'd0;
#0 add6_2456_fu_398 = 64'd0;
#0 add6_2558_fu_402 = 64'd0;
#0 add6_2660_fu_406 = 64'd0;
#0 add6_2762_fu_410 = 64'd0;
#0 add6_2864_fu_414 = 64'd0;
#0 add6_2966_fu_418 = 64'd0;
#0 add6_3068_fu_422 = 64'd0;
#0 add6_3170_fu_426 = 64'd0;
#0 add672_fu_430 = 64'd0;
#0 add6_174_fu_434 = 64'd0;
#0 add6_276_fu_438 = 64'd0;
#0 add6_378_fu_442 = 64'd0;
#0 add6_480_fu_446 = 64'd0;
#0 add6_582_fu_450 = 64'd0;
#0 add6_684_fu_454 = 64'd0;
#0 add6_786_fu_458 = 64'd0;
#0 add6_888_fu_462 = 64'd0;
#0 add6_990_fu_466 = 64'd0;
#0 add6_1092_fu_470 = 64'd0;
#0 add6_1194_fu_474 = 64'd0;
#0 add6_1296_fu_478 = 64'd0;
#0 add6_1398_fu_482 = 64'd0;
#0 add6_14100_fu_486 = 64'd0;
#0 add6_15102_fu_490 = 64'd0;
#0 add6_16104_fu_494 = 64'd0;
#0 add6_17106_fu_498 = 64'd0;
#0 add6_18108_fu_502 = 64'd0;
#0 add6_19110_fu_506 = 64'd0;
#0 add6_20112_fu_510 = 64'd0;
#0 add6_21114_fu_514 = 64'd0;
#0 add6_22116_fu_518 = 64'd0;
#0 add6_23118_fu_522 = 64'd0;
#0 add6_24120_fu_526 = 64'd0;
#0 add6_25122_fu_530 = 64'd0;
#0 add6_26124_fu_534 = 64'd0;
#0 add6_27126_fu_538 = 64'd0;
#0 add6_28128_fu_542 = 64'd0;
#0 add6_29130_fu_546 = 64'd0;
#0 add6_30132_fu_550 = 64'd0;
#0 add6_31134_fu_554 = 64'd0;
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
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_1868 <= init_0_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_1868 <= init_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_1877 <= init_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_1877 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_1882 <= init_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_1882 <= init_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_1887 <= init_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_1887 <= init_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            reg_1892 <= init_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_1892 <= init_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            reg_1897 <= init_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_1897 <= init_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        s_fu_298 <= 7'd0;
    end else if (((tmp_128_reg_4929 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        s_fu_298 <= add_ln13_fu_3534_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((tmp_128_reg_4929 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add61_fu_302 <= select_ln14_63_fu_2821_p3;
        add672_fu_430 <= select_ln14_31_fu_2805_p3;
        add6_110_fu_306 <= select_ln14_62_fu_2813_p3;
        add6_174_fu_434 <= select_ln14_30_fu_2797_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((tmp_128_reg_4929 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        add6_1028_fu_342 <= select_ln14_53_fu_3413_p3;
        add6_1092_fu_470 <= select_ln14_21_fu_3399_p3;
        add6_1130_fu_346 <= select_ln14_52_fu_3406_p3;
        add6_1194_fu_474 <= select_ln14_20_fu_3392_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((tmp_128_reg_4929 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        add6_1232_fu_350 <= select_ln14_51_fu_3527_p3;
        add6_1296_fu_478 <= select_ln14_19_fu_3513_p3;
        add6_1334_fu_354 <= select_ln14_50_fu_3520_p3;
        add6_1398_fu_482 <= select_ln14_18_fu_3506_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_14100_fu_486 <= select_ln14_17_fu_3617_p3;
        add6_1436_fu_358 <= select_ln14_49_fu_3631_p3;
        add6_15102_fu_490 <= select_ln14_16_fu_3610_p3;
        add6_1538_fu_362 <= select_ln14_48_fu_3624_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add6_16104_fu_494 <= select_ln14_15_fu_3693_p3;
        add6_1640_fu_366 <= select_ln14_47_fu_3707_p3;
        add6_17106_fu_498 <= select_ln14_14_fu_3686_p3;
        add6_1742_fu_370 <= select_ln14_46_fu_3700_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add6_18108_fu_502 <= select_ln14_13_fu_3753_p3;
        add6_1844_fu_374 <= select_ln14_45_fu_3767_p3;
        add6_19110_fu_506 <= select_ln14_12_fu_3746_p3;
        add6_1946_fu_378 <= select_ln14_44_fu_3760_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add6_20112_fu_510 <= select_ln14_11_fu_3813_p3;
        add6_2048_fu_382 <= select_ln14_43_fu_3827_p3;
        add6_21114_fu_514 <= select_ln14_10_fu_3806_p3;
        add6_2150_fu_386 <= select_ln14_42_fu_3820_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((tmp_128_reg_4929 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add6_212_fu_310 <= select_ln14_61_fu_2943_p3;
        add6_276_fu_438 <= select_ln14_29_fu_2929_p3;
        add6_314_fu_314 <= select_ln14_60_fu_2936_p3;
        add6_378_fu_442 <= select_ln14_28_fu_2922_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add6_22116_fu_518 <= select_ln14_9_fu_3873_p3;
        add6_2252_fu_390 <= select_ln14_41_fu_3887_p3;
        add6_23118_fu_522 <= select_ln14_8_fu_3866_p3;
        add6_2354_fu_394 <= select_ln14_40_fu_3880_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add6_24120_fu_526 <= select_ln14_7_fu_3933_p3;
        add6_2456_fu_398 <= select_ln14_39_fu_3947_p3;
        add6_25122_fu_530 <= select_ln14_6_fu_3926_p3;
        add6_2558_fu_402 <= select_ln14_38_fu_3940_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add6_26124_fu_534 <= select_ln14_5_fu_3993_p3;
        add6_2660_fu_406 <= select_ln14_37_fu_4007_p3;
        add6_27126_fu_538 <= select_ln14_4_fu_3986_p3;
        add6_2762_fu_410 <= select_ln14_36_fu_4000_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add6_28128_fu_542 <= select_ln14_3_fu_4053_p3;
        add6_2864_fu_414 <= select_ln14_35_fu_4067_p3;
        add6_29130_fu_546 <= select_ln14_2_fu_4046_p3;
        add6_2966_fu_418 <= select_ln14_34_fu_4060_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_30132_fu_550 <= select_ln14_1_fu_4113_p3;
        add6_3068_fu_422 <= select_ln14_33_fu_4127_p3;
        add6_31134_fu_554 <= select_ln14_fu_4106_p3;
        add6_3170_fu_426 <= select_ln14_32_fu_4120_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((tmp_128_reg_4929 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        add6_416_fu_318 <= select_ln14_59_fu_3063_p3;
        add6_480_fu_446 <= select_ln14_27_fu_3049_p3;
        add6_518_fu_322 <= select_ln14_58_fu_3056_p3;
        add6_582_fu_450 <= select_ln14_26_fu_3042_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((tmp_128_reg_4929 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        add6_620_fu_326 <= select_ln14_57_fu_3178_p3;
        add6_684_fu_454 <= select_ln14_25_fu_3164_p3;
        add6_722_fu_330 <= select_ln14_56_fu_3171_p3;
        add6_786_fu_458 <= select_ln14_24_fu_3157_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((tmp_128_reg_4929 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        add6_824_fu_334 <= select_ln14_55_fu_3298_p3;
        add6_888_fu_462 <= select_ln14_23_fu_3284_p3;
        add6_926_fu_338 <= select_ln14_54_fu_3291_p3;
        add6_990_fu_466 <= select_ln14_22_fu_3277_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        conv3_udiv_cast_cast_reg_4881[6 : 0] <= conv3_udiv_cast_cast_fu_1902_p1[6 : 0];
        p_cast_reg_4908[6 : 0] <= p_cast_fu_1906_p1[6 : 0];
        s_1_reg_4915 <= ap_sig_allocacmp_s_1;
        select_ln14_94_reg_5925 <= select_ln14_94_fu_3591_p3;
        select_ln14_95_reg_5935 <= select_ln14_95_fu_3603_p3;
        tmp_128_reg_4929 <= ap_sig_allocacmp_s_1[32'd6];
        tmp_162_reg_4968 <= {{ap_sig_allocacmp_s_1[5:2]}};
        tmp_65_reg_4938 <= {{ap_sig_allocacmp_s_1[5:3]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        icmp_ln14_reg_5606 <= icmp_ln14_fu_2792_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        init_0_load_11_reg_5411 <= init_0_q0;
        init_1_load_11_reg_5431 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        init_0_load_13_reg_5481 <= init_0_q0;
        init_1_load_13_reg_5501 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        init_0_load_15_reg_5551 <= init_0_q0;
        init_1_load_15_reg_5561 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        init_0_load_7_reg_5262 <= init_0_q0;
        init_1_load_7_reg_5282 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        init_0_load_9_reg_5341 <= init_0_q0;
        init_1_load_9_reg_5361 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1856 <= init_0_q1;
        reg_1873 <= init_1_q1;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1860 <= grp_fu_1842_p3;
        reg_1864 <= grp_fu_1849_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_129_reg_5009 <= s_1_reg_4915[32'd1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_130_reg_5096 <= s_1_reg_4915[32'd2];
        tmp_217_reg_5075 <= {{s_1_reg_4915[5:4]}};
        tmp_221_reg_5089 <= {{s_1_reg_4915[2:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_131_reg_5220 <= s_1_reg_4915[32'd5];
        tmp_255_reg_5251 <= {{s_1_reg_4915[3:2]}};
        tmp_s_reg_5246 <= {{s_1_reg_4915[3:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_132_reg_5327 <= s_1_reg_4915[32'd3];
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add61_out_ap_vld = 1'b1;
    end else begin
        add61_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add672_out_ap_vld = 1'b1;
    end else begin
        add672_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_1028_out_ap_vld = 1'b1;
    end else begin
        add6_1028_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_1092_out_ap_vld = 1'b1;
    end else begin
        add6_1092_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_110_out_ap_vld = 1'b1;
    end else begin
        add6_110_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_1130_out_ap_vld = 1'b1;
    end else begin
        add6_1130_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_1194_out_ap_vld = 1'b1;
    end else begin
        add6_1194_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_1232_out_ap_vld = 1'b1;
    end else begin
        add6_1232_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_1296_out_ap_vld = 1'b1;
    end else begin
        add6_1296_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_1334_out_ap_vld = 1'b1;
    end else begin
        add6_1334_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_1398_out_ap_vld = 1'b1;
    end else begin
        add6_1398_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_14100_out_ap_vld = 1'b1;
    end else begin
        add6_14100_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_1436_out_ap_vld = 1'b1;
    end else begin
        add6_1436_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_15102_out_ap_vld = 1'b1;
    end else begin
        add6_15102_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_1538_out_ap_vld = 1'b1;
    end else begin
        add6_1538_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_16104_out_ap_vld = 1'b1;
    end else begin
        add6_16104_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_1640_out_ap_vld = 1'b1;
    end else begin
        add6_1640_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_17106_out_ap_vld = 1'b1;
    end else begin
        add6_17106_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_1742_out_ap_vld = 1'b1;
    end else begin
        add6_1742_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_174_out_ap_vld = 1'b1;
    end else begin
        add6_174_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_18108_out_ap_vld = 1'b1;
    end else begin
        add6_18108_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_1844_out_ap_vld = 1'b1;
    end else begin
        add6_1844_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_19110_out_ap_vld = 1'b1;
    end else begin
        add6_19110_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_1946_out_ap_vld = 1'b1;
    end else begin
        add6_1946_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_20112_out_ap_vld = 1'b1;
    end else begin
        add6_20112_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_2048_out_ap_vld = 1'b1;
    end else begin
        add6_2048_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_21114_out_ap_vld = 1'b1;
    end else begin
        add6_21114_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_212_out_ap_vld = 1'b1;
    end else begin
        add6_212_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_2150_out_ap_vld = 1'b1;
    end else begin
        add6_2150_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_22116_out_ap_vld = 1'b1;
    end else begin
        add6_22116_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_2252_out_ap_vld = 1'b1;
    end else begin
        add6_2252_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_23118_out_ap_vld = 1'b1;
    end else begin
        add6_23118_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_2354_out_ap_vld = 1'b1;
    end else begin
        add6_2354_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_24120_out_ap_vld = 1'b1;
    end else begin
        add6_24120_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_2456_out_ap_vld = 1'b1;
    end else begin
        add6_2456_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_25122_out_ap_vld = 1'b1;
    end else begin
        add6_25122_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_2558_out_ap_vld = 1'b1;
    end else begin
        add6_2558_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_26124_out_ap_vld = 1'b1;
    end else begin
        add6_26124_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_2660_out_ap_vld = 1'b1;
    end else begin
        add6_2660_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_27126_out_ap_vld = 1'b1;
    end else begin
        add6_27126_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_2762_out_ap_vld = 1'b1;
    end else begin
        add6_2762_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_276_out_ap_vld = 1'b1;
    end else begin
        add6_276_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_28128_out_ap_vld = 1'b1;
    end else begin
        add6_28128_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_2864_out_ap_vld = 1'b1;
    end else begin
        add6_2864_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_29130_out_ap_vld = 1'b1;
    end else begin
        add6_29130_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_2966_out_ap_vld = 1'b1;
    end else begin
        add6_2966_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_30132_out_ap_vld = 1'b1;
    end else begin
        add6_30132_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_3068_out_ap_vld = 1'b1;
    end else begin
        add6_3068_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_31134_out_ap_vld = 1'b1;
    end else begin
        add6_31134_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_314_out_ap_vld = 1'b1;
    end else begin
        add6_314_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_3170_out_ap_vld = 1'b1;
    end else begin
        add6_3170_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_378_out_ap_vld = 1'b1;
    end else begin
        add6_378_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_416_out_ap_vld = 1'b1;
    end else begin
        add6_416_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_480_out_ap_vld = 1'b1;
    end else begin
        add6_480_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_518_out_ap_vld = 1'b1;
    end else begin
        add6_518_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_582_out_ap_vld = 1'b1;
    end else begin
        add6_582_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_620_out_ap_vld = 1'b1;
    end else begin
        add6_620_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_684_out_ap_vld = 1'b1;
    end else begin
        add6_684_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_722_out_ap_vld = 1'b1;
    end else begin
        add6_722_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_786_out_ap_vld = 1'b1;
    end else begin
        add6_786_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_824_out_ap_vld = 1'b1;
    end else begin
        add6_824_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_888_out_ap_vld = 1'b1;
    end else begin
        add6_888_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_926_out_ap_vld = 1'b1;
    end else begin
        add6_926_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add6_990_out_ap_vld = 1'b1;
    end else begin
        add6_990_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_128_reg_4929 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_s_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_s_1 = s_fu_298;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            emission_0_address0_local = zext_ln14_31_fu_3500_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            emission_0_address0_local = zext_ln14_29_fu_3376_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            emission_0_address0_local = zext_ln14_27_fu_3263_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            emission_0_address0_local = zext_ln14_25_fu_3141_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            emission_0_address0_local = zext_ln14_23_fu_3028_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            emission_0_address0_local = zext_ln14_21_fu_2906_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            emission_0_address0_local = zext_ln14_19_fu_2778_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            emission_0_address0_local = zext_ln14_17_fu_2704_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_0_address0_local = zext_ln14_15_fu_2621_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_0_address0_local = zext_ln14_13_fu_2535_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_0_address0_local = zext_ln14_11_fu_2438_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_0_address0_local = zext_ln14_9_fu_2317_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address0_local = zext_ln14_7_fu_2235_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address0_local = zext_ln14_5_fu_2125_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address0_local = zext_ln14_3_fu_2040_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address0_local = zext_ln14_1_fu_1980_p1;
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
            emission_0_address1_local = zext_ln14_30_fu_3478_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            emission_0_address1_local = zext_ln14_28_fu_3355_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            emission_0_address1_local = zext_ln14_26_fu_3242_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            emission_0_address1_local = zext_ln14_24_fu_3120_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            emission_0_address1_local = zext_ln14_22_fu_3007_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            emission_0_address1_local = zext_ln14_20_fu_2882_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            emission_0_address1_local = zext_ln14_18_fu_2757_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            emission_0_address1_local = zext_ln14_16_fu_2683_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_0_address1_local = zext_ln14_14_fu_2603_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_0_address1_local = zext_ln14_12_fu_2514_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_0_address1_local = zext_ln14_10_fu_2417_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_0_address1_local = zext_ln14_8_fu_2296_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address1_local = zext_ln14_6_fu_2217_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address1_local = zext_ln14_4_fu_2104_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address1_local = zext_ln14_2_fu_2022_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address1_local = zext_ln14_fu_1960_p1;
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
            emission_1_address0_local = zext_ln14_31_fu_3500_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            emission_1_address0_local = zext_ln14_29_fu_3376_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            emission_1_address0_local = zext_ln14_27_fu_3263_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            emission_1_address0_local = zext_ln14_25_fu_3141_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            emission_1_address0_local = zext_ln14_23_fu_3028_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            emission_1_address0_local = zext_ln14_21_fu_2906_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            emission_1_address0_local = zext_ln14_19_fu_2778_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            emission_1_address0_local = zext_ln14_17_fu_2704_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_1_address0_local = zext_ln14_15_fu_2621_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_1_address0_local = zext_ln14_13_fu_2535_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_1_address0_local = zext_ln14_11_fu_2438_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_1_address0_local = zext_ln14_9_fu_2317_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_1_address0_local = zext_ln14_7_fu_2235_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address0_local = zext_ln14_5_fu_2125_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address0_local = zext_ln14_3_fu_2040_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address0_local = zext_ln14_1_fu_1980_p1;
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
            emission_1_address1_local = zext_ln14_30_fu_3478_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            emission_1_address1_local = zext_ln14_28_fu_3355_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            emission_1_address1_local = zext_ln14_26_fu_3242_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            emission_1_address1_local = zext_ln14_24_fu_3120_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            emission_1_address1_local = zext_ln14_22_fu_3007_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            emission_1_address1_local = zext_ln14_20_fu_2882_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            emission_1_address1_local = zext_ln14_18_fu_2757_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            emission_1_address1_local = zext_ln14_16_fu_2683_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_1_address1_local = zext_ln14_14_fu_2603_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_1_address1_local = zext_ln14_12_fu_2514_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_1_address1_local = zext_ln14_10_fu_2417_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_1_address1_local = zext_ln14_8_fu_2296_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_1_address1_local = zext_ln14_6_fu_2217_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address1_local = zext_ln14_4_fu_2104_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address1_local = zext_ln14_2_fu_2022_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address1_local = zext_ln14_fu_1960_p1;
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
        grp_fu_1834_p0 = bitcast_ln14_45_fu_3670_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1834_p0 = bitcast_ln14_44_fu_3586_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1834_p0 = bitcast_ln14_43_fu_3462_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1834_p0 = bitcast_ln14_42_fu_3382_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1834_p0 = bitcast_ln14_41_fu_3269_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1834_p0 = bitcast_ln14_40_fu_3147_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1834_p0 = bitcast_ln14_39_fu_3034_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1834_p0 = bitcast_ln14_38_fu_2912_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1834_p0 = bitcast_ln14_37_fu_2784_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1834_p0 = bitcast_ln14_36_fu_2710_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1834_p0 = bitcast_ln14_35_fu_2654_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1834_p0 = bitcast_ln14_34_fu_2571_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1834_p0 = bitcast_ln14_33_fu_2486_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1834_p0 = bitcast_ln14_32_fu_2382_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1834_p0 = bitcast_ln14_31_fu_2268_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1834_p0 = bitcast_ln14_fu_2081_p1;
    end else begin
        grp_fu_1834_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1834_p1 = bitcast_ln14_46_fu_3674_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1834_p1 = bitcast_ln14_29_fu_3576_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1834_p1 = bitcast_ln14_27_fu_3452_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1834_p1 = bitcast_ln14_25_fu_3337_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1834_p1 = bitcast_ln14_23_fu_3217_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1834_p1 = bitcast_ln14_21_fu_3102_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1834_p1 = bitcast_ln14_19_fu_2982_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1834_p1 = bitcast_ln14_17_fu_2861_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1834_p1 = bitcast_ln14_15_fu_2732_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1834_p1 = bitcast_ln14_13_fu_2664_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1834_p1 = bitcast_ln14_11_fu_2581_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1834_p1 = bitcast_ln14_9_fu_2496_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1834_p1 = bitcast_ln14_7_fu_2392_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1834_p1 = bitcast_ln14_5_fu_2278_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1834_p1 = bitcast_ln14_3_fu_2195_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1834_p1 = bitcast_ln14_1_fu_2086_p1;
    end else begin
        grp_fu_1834_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1838_p0 = bitcast_ln14_62_fu_3678_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1838_p0 = bitcast_ln14_61_fu_3598_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1838_p0 = bitcast_ln14_60_fu_3484_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1838_p0 = bitcast_ln14_59_fu_3387_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1838_p0 = bitcast_ln14_58_fu_3273_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1838_p0 = bitcast_ln14_57_fu_3152_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1838_p0 = bitcast_ln14_56_fu_3038_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1838_p0 = bitcast_ln14_55_fu_2917_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1838_p0 = bitcast_ln14_54_fu_2788_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1838_p0 = bitcast_ln14_53_fu_2715_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1838_p0 = bitcast_ln14_52_fu_2659_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1838_p0 = bitcast_ln14_51_fu_2576_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1838_p0 = bitcast_ln14_50_fu_2491_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1838_p0 = bitcast_ln14_49_fu_2387_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1838_p0 = bitcast_ln14_48_fu_2273_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1838_p0 = bitcast_ln14_47_fu_2190_p1;
    end else begin
        grp_fu_1838_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1838_p1 = bitcast_ln14_63_fu_3682_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1838_p1 = bitcast_ln14_30_fu_3581_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1838_p1 = bitcast_ln14_28_fu_3457_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1838_p1 = bitcast_ln14_26_fu_3342_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1838_p1 = bitcast_ln14_24_fu_3222_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1838_p1 = bitcast_ln14_22_fu_3107_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1838_p1 = bitcast_ln14_20_fu_2987_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1838_p1 = bitcast_ln14_18_fu_2866_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1838_p1 = bitcast_ln14_16_fu_2737_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1838_p1 = bitcast_ln14_14_fu_2669_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1838_p1 = bitcast_ln14_12_fu_2586_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1838_p1 = bitcast_ln14_10_fu_2501_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1838_p1 = bitcast_ln14_8_fu_2397_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1838_p1 = bitcast_ln14_6_fu_2283_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1838_p1 = bitcast_ln14_4_fu_2200_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1838_p1 = bitcast_ln14_2_fu_2091_p1;
    end else begin
        grp_fu_1838_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            init_0_address0_local = zext_ln14_46_fu_2648_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            init_0_address0_local = zext_ln14_44_fu_2565_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            init_0_address0_local = zext_ln14_42_fu_2480_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            init_0_address0_local = zext_ln14_40_fu_2376_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_0_address0_local = zext_ln14_38_fu_2262_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_0_address0_local = zext_ln14_36_fu_2184_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_0_address0_local = zext_ln14_34_fu_2075_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_0_address0_local = zext_ln14_32_fu_2004_p1;
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
            init_0_address1_local = zext_ln14_45_fu_2635_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            init_0_address1_local = zext_ln14_43_fu_2549_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            init_0_address1_local = zext_ln14_41_fu_2463_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            init_0_address1_local = zext_ln14_39_fu_2349_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_0_address1_local = zext_ln14_37_fu_2249_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_0_address1_local = zext_ln14_35_fu_2159_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_0_address1_local = zext_ln14_33_fu_2062_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_0_address1_local = zext_ln9_fu_1936_p1;
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
            init_1_address0_local = zext_ln14_46_fu_2648_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            init_1_address0_local = zext_ln14_44_fu_2565_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            init_1_address0_local = zext_ln14_42_fu_2480_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            init_1_address0_local = zext_ln14_40_fu_2376_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_1_address0_local = zext_ln14_38_fu_2262_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_1_address0_local = zext_ln14_36_fu_2184_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_1_address0_local = zext_ln14_34_fu_2075_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_1_address0_local = zext_ln14_32_fu_2004_p1;
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
            init_1_address1_local = zext_ln14_45_fu_2635_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            init_1_address1_local = zext_ln14_43_fu_2549_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            init_1_address1_local = zext_ln14_41_fu_2463_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            init_1_address1_local = zext_ln14_39_fu_2349_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_1_address1_local = zext_ln14_37_fu_2249_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_1_address1_local = zext_ln14_35_fu_2159_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_1_address1_local = zext_ln14_33_fu_2062_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_1_address1_local = zext_ln9_fu_1936_p1;
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
assign add61_out = add61_fu_302;
assign add672_out = add672_fu_430;
assign add6_1028_out = add6_1028_fu_342;
assign add6_1092_out = add6_1092_fu_470;
assign add6_110_out = add6_110_fu_306;
assign add6_1130_out = add6_1130_fu_346;
assign add6_1194_out = add6_1194_fu_474;
assign add6_1232_out = add6_1232_fu_350;
assign add6_1296_out = add6_1296_fu_478;
assign add6_1334_out = add6_1334_fu_354;
assign add6_1398_out = add6_1398_fu_482;
assign add6_14100_out = add6_14100_fu_486;
assign add6_1436_out = add6_1436_fu_358;
assign add6_15102_out = add6_15102_fu_490;
assign add6_1538_out = add6_1538_fu_362;
assign add6_16104_out = add6_16104_fu_494;
assign add6_1640_out = add6_1640_fu_366;
assign add6_17106_out = add6_17106_fu_498;
assign add6_1742_out = add6_1742_fu_370;
assign add6_174_out = add6_174_fu_434;
assign add6_18108_out = add6_18108_fu_502;
assign add6_1844_out = add6_1844_fu_374;
assign add6_19110_out = add6_19110_fu_506;
assign add6_1946_out = add6_1946_fu_378;
assign add6_20112_out = add6_20112_fu_510;
assign add6_2048_out = add6_2048_fu_382;
assign add6_21114_out = add6_21114_fu_514;
assign add6_212_out = add6_212_fu_310;
assign add6_2150_out = add6_2150_fu_386;
assign add6_22116_out = add6_22116_fu_518;
assign add6_2252_out = add6_2252_fu_390;
assign add6_23118_out = add6_23118_fu_522;
assign add6_2354_out = add6_2354_fu_394;
assign add6_24120_out = add6_24120_fu_526;
assign add6_2456_out = add6_2456_fu_398;
assign add6_25122_out = add6_25122_fu_530;
assign add6_2558_out = add6_2558_fu_402;
assign add6_26124_out = add6_26124_fu_534;
assign add6_2660_out = add6_2660_fu_406;
assign add6_27126_out = add6_27126_fu_538;
assign add6_2762_out = add6_2762_fu_410;
assign add6_276_out = add6_276_fu_438;
assign add6_28128_out = add6_28128_fu_542;
assign add6_2864_out = add6_2864_fu_414;
assign add6_29130_out = add6_29130_fu_546;
assign add6_2966_out = add6_2966_fu_418;
assign add6_30132_out = add6_30132_fu_550;
assign add6_3068_out = add6_3068_fu_422;
assign add6_31134_out = add6_31134_fu_554;
assign add6_314_out = add6_314_fu_314;
assign add6_3170_out = add6_3170_fu_426;
assign add6_378_out = add6_378_fu_442;
assign add6_416_out = add6_416_fu_318;
assign add6_480_out = add6_480_fu_446;
assign add6_518_out = add6_518_fu_322;
assign add6_582_out = add6_582_fu_450;
assign add6_620_out = add6_620_fu_326;
assign add6_684_out = add6_684_fu_454;
assign add6_722_out = add6_722_fu_330;
assign add6_786_out = add6_786_fu_458;
assign add6_824_out = add6_824_fu_334;
assign add6_888_out = add6_888_fu_462;
assign add6_926_out = add6_926_fu_338;
assign add6_990_out = add6_990_fu_466;
assign add_ln13_fu_3534_p2 = (s_1_reg_4915 + 7'd32);
assign add_ln14_10_fu_2598_p2 = (or_ln14_19_fu_2591_p3 + conv3_udiv_cast_cast_reg_4881);
assign add_ln14_11_fu_2616_p2 = (or_ln14_20_fu_2609_p3 + conv3_udiv_cast_cast_reg_4881);
assign add_ln14_12_fu_2699_p2 = (or_ln14_23_fu_2689_p5 + conv3_udiv_cast_cast_reg_4881);
assign add_ln14_13_fu_2752_p2 = (or_ln14_25_fu_2742_p5 + conv3_udiv_cast_cast_reg_4881);
assign add_ln14_14_fu_2773_p2 = (or_ln14_26_fu_2763_p5 + conv3_udiv_cast_cast_reg_4881);
assign add_ln14_15_fu_2901_p2 = (or_ln14_29_fu_2888_p7 + conv3_udiv_cast_cast_reg_4881);
assign add_ln14_16_fu_3002_p2 = (or_ln14_31_fu_2992_p5 + conv3_udiv_cast_cast_reg_4881);
assign add_ln14_17_fu_3023_p2 = (or_ln14_32_fu_3013_p5 + conv3_udiv_cast_cast_reg_4881);
assign add_ln14_18_fu_3136_p2 = (or_ln14_35_fu_3126_p5 + conv3_udiv_cast_cast_reg_4881);
assign add_ln14_19_fu_3237_p2 = (or_ln14_37_fu_3227_p5 + conv3_udiv_cast_cast_reg_4881);
assign add_ln14_1_fu_2017_p2 = (or_ln14_2_fu_2010_p3 + conv3_udiv_cast_cast_reg_4881);
assign add_ln14_20_fu_3258_p2 = (or_ln14_38_fu_3248_p5 + conv3_udiv_cast_cast_reg_4881);
assign add_ln14_21_fu_3371_p2 = (or_ln14_41_fu_3361_p5 + conv3_udiv_cast_cast_reg_4881);
assign add_ln14_22_fu_3473_p2 = (or_ln14_43_fu_3466_p3 + conv3_udiv_cast_cast_reg_4881);
assign add_ln14_23_fu_3495_p2 = (or_ln14_44_fu_3488_p3 + conv3_udiv_cast_cast_reg_4881);
assign add_ln14_2_fu_2035_p2 = (or_ln14_3_fu_2028_p3 + conv3_udiv_cast_cast_reg_4881);
assign add_ln14_3_fu_2120_p2 = (or_ln14_6_fu_2110_p5 + conv3_udiv_cast_cast_reg_4881);
assign add_ln14_4_fu_2212_p2 = (or_ln14_8_fu_2205_p3 + conv3_udiv_cast_cast_reg_4881);
assign add_ln14_5_fu_2230_p2 = (or_ln14_9_fu_2223_p3 + conv3_udiv_cast_cast_reg_4881);
assign add_ln14_6_fu_2312_p2 = (or_ln14_11_fu_2302_p5 + conv3_udiv_cast_cast_reg_4881);
assign add_ln14_7_fu_2412_p2 = (or_ln14_13_fu_2402_p5 + conv3_udiv_cast_cast_reg_4881);
assign add_ln14_8_fu_2433_p2 = (or_ln14_14_fu_2423_p5 + conv3_udiv_cast_cast_reg_4881);
assign add_ln14_9_fu_2530_p2 = (or_ln14_17_fu_2520_p5 + conv3_udiv_cast_cast_reg_4881);
assign add_ln14_fu_1974_p2 = (or_ln1_fu_1966_p3 + conv3_udiv_cast_cast_fu_1902_p1);
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
assign bitcast_ln14_10_fu_2501_p1 = reg_1864;
assign bitcast_ln14_11_fu_2581_p1 = reg_1860;
assign bitcast_ln14_12_fu_2586_p1 = reg_1864;
assign bitcast_ln14_13_fu_2664_p1 = reg_1860;
assign bitcast_ln14_14_fu_2669_p1 = reg_1864;
assign bitcast_ln14_15_fu_2732_p1 = reg_1860;
assign bitcast_ln14_16_fu_2737_p1 = reg_1864;
assign bitcast_ln14_17_fu_2861_p1 = reg_1860;
assign bitcast_ln14_18_fu_2866_p1 = reg_1864;
assign bitcast_ln14_19_fu_2982_p1 = reg_1860;
assign bitcast_ln14_1_fu_2086_p1 = reg_1860;
assign bitcast_ln14_20_fu_2987_p1 = reg_1864;
assign bitcast_ln14_21_fu_3102_p1 = reg_1860;
assign bitcast_ln14_22_fu_3107_p1 = reg_1864;
assign bitcast_ln14_23_fu_3217_p1 = reg_1860;
assign bitcast_ln14_24_fu_3222_p1 = reg_1864;
assign bitcast_ln14_25_fu_3337_p1 = reg_1860;
assign bitcast_ln14_26_fu_3342_p1 = reg_1864;
assign bitcast_ln14_27_fu_3452_p1 = reg_1860;
assign bitcast_ln14_28_fu_3457_p1 = reg_1864;
assign bitcast_ln14_29_fu_3576_p1 = reg_1860;
assign bitcast_ln14_2_fu_2091_p1 = reg_1864;
assign bitcast_ln14_30_fu_3581_p1 = reg_1864;
assign bitcast_ln14_31_fu_2268_p1 = reg_1868;
assign bitcast_ln14_32_fu_2382_p1 = reg_1856;
assign bitcast_ln14_33_fu_2486_p1 = reg_1882;
assign bitcast_ln14_34_fu_2571_p1 = reg_1868;
assign bitcast_ln14_35_fu_2654_p1 = reg_1892;
assign bitcast_ln14_36_fu_2710_p1 = reg_1856;
assign bitcast_ln14_37_fu_2784_p1 = init_0_load_7_reg_5262;
assign bitcast_ln14_38_fu_2912_p1 = reg_1882;
assign bitcast_ln14_39_fu_3034_p1 = init_0_load_9_reg_5341;
assign bitcast_ln14_3_fu_2195_p1 = reg_1860;
assign bitcast_ln14_40_fu_3147_p1 = reg_1868;
assign bitcast_ln14_41_fu_3269_p1 = init_0_load_11_reg_5411;
assign bitcast_ln14_42_fu_3382_p1 = reg_1892;
assign bitcast_ln14_43_fu_3462_p1 = init_0_load_13_reg_5481;
assign bitcast_ln14_44_fu_3586_p1 = reg_1856;
assign bitcast_ln14_45_fu_3670_p1 = init_0_load_15_reg_5551;
assign bitcast_ln14_46_fu_3674_p1 = select_ln14_94_reg_5925;
assign bitcast_ln14_47_fu_2190_p1 = reg_1873;
assign bitcast_ln14_48_fu_2273_p1 = reg_1877;
assign bitcast_ln14_49_fu_2387_p1 = reg_1873;
assign bitcast_ln14_4_fu_2200_p1 = reg_1864;
assign bitcast_ln14_50_fu_2491_p1 = reg_1887;
assign bitcast_ln14_51_fu_2576_p1 = reg_1877;
assign bitcast_ln14_52_fu_2659_p1 = reg_1897;
assign bitcast_ln14_53_fu_2715_p1 = reg_1873;
assign bitcast_ln14_54_fu_2788_p1 = init_1_load_7_reg_5282;
assign bitcast_ln14_55_fu_2917_p1 = reg_1887;
assign bitcast_ln14_56_fu_3038_p1 = init_1_load_9_reg_5361;
assign bitcast_ln14_57_fu_3152_p1 = reg_1877;
assign bitcast_ln14_58_fu_3273_p1 = init_1_load_11_reg_5431;
assign bitcast_ln14_59_fu_3387_p1 = reg_1897;
assign bitcast_ln14_5_fu_2278_p1 = reg_1860;
assign bitcast_ln14_60_fu_3484_p1 = init_1_load_13_reg_5501;
assign bitcast_ln14_61_fu_3598_p1 = reg_1873;
assign bitcast_ln14_62_fu_3678_p1 = init_1_load_15_reg_5561;
assign bitcast_ln14_63_fu_3682_p1 = select_ln14_95_reg_5935;
assign bitcast_ln14_6_fu_2283_p1 = reg_1864;
assign bitcast_ln14_7_fu_2392_p1 = reg_1860;
assign bitcast_ln14_8_fu_2397_p1 = reg_1864;
assign bitcast_ln14_9_fu_2496_p1 = reg_1860;
assign bitcast_ln14_fu_2081_p1 = reg_1856;
assign conv3_udiv_cast_cast_fu_1902_p1 = conv3_udiv_cast;
assign emission_0_address0 = emission_0_address0_local;
assign emission_0_address1 = emission_0_address1_local;
assign emission_0_ce0 = emission_0_ce0_local;
assign emission_0_ce1 = emission_0_ce1_local;
assign emission_1_address0 = emission_1_address0_local;
assign emission_1_address1 = emission_1_address1_local;
assign emission_1_ce0 = emission_1_ce0_local;
assign emission_1_ce1 = emission_1_ce1_local;
assign grp_fu_1842_p3 = ((empty[0:0] == 1'b1) ? emission_1_q1 : emission_0_q1);
assign grp_fu_1849_p3 = ((empty[0:0] == 1'b1) ? emission_1_q0 : emission_0_q0);
assign grp_fu_3912_p_ce = 1'b1;
assign grp_fu_3912_p_din0 = grp_fu_1834_p0;
assign grp_fu_3912_p_din1 = grp_fu_1834_p1;
assign grp_fu_3912_p_opcode = 2'd0;
assign grp_fu_7037_p_ce = 1'b1;
assign grp_fu_7037_p_din0 = grp_fu_1838_p0;
assign grp_fu_7037_p_din1 = grp_fu_1838_p1;
assign grp_fu_7037_p_opcode = 2'd0;
assign icmp_ln14_fu_2792_p2 = ((s_1_reg_4915 == 7'd0) ? 1'b1 : 1'b0);
assign init_0_address0 = init_0_address0_local;
assign init_0_address1 = init_0_address1_local;
assign init_0_ce0 = init_0_ce0_local;
assign init_0_ce1 = init_0_ce1_local;
assign init_1_address0 = init_1_address0_local;
assign init_1_address1 = init_1_address1_local;
assign init_1_ce0 = init_1_ce0_local;
assign init_1_ce1 = init_1_ce1_local;
assign lshr_ln9_fu_1926_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign or_ln14_10_fu_2288_p4 = {{{tmp_217_reg_5075}, {1'd1}}, {p_cast_reg_4908}};
assign or_ln14_11_fu_2302_p5 = {{{{tmp_217_reg_5075}, {1'd1}}, {tmp_221_reg_5089}}, {6'd32}};
assign or_ln14_12_fu_2172_p5 = {{{{tmp_217_fu_2131_p4}, {1'd1}}, {tmp_130_fu_2165_p3}}, {1'd1}};
assign or_ln14_13_fu_2402_p5 = {{{{tmp_217_reg_5075}, {1'd1}}, {tmp_130_reg_5096}}, {7'd64}};
assign or_ln14_14_fu_2423_p5 = {{{{tmp_217_reg_5075}, {1'd1}}, {tmp_130_reg_5096}}, {7'd96}};
assign or_ln14_15_fu_2241_p4 = {{{tmp_217_reg_5075}, {2'd3}}, {tmp_129_reg_5009}};
assign or_ln14_16_fu_2506_p4 = {{{tmp_217_reg_5075}, {2'd3}}, {conv3_udiv}};
assign or_ln14_17_fu_2520_p5 = {{{{tmp_217_reg_5075}, {2'd3}}, {tmp_129_reg_5009}}, {6'd32}};
assign or_ln14_18_fu_2255_p3 = {{tmp_217_reg_5075}, {3'd7}};
assign or_ln14_19_fu_2591_p3 = {{tmp_217_reg_5075}, {9'd448}};
assign or_ln14_1_fu_1996_p3 = {{tmp_162_fu_1986_p4}, {1'd1}};
assign or_ln14_20_fu_2609_p3 = {{tmp_217_reg_5075}, {9'd480}};
assign or_ln14_21_fu_2339_p4 = {{{tmp_131_fu_2323_p3}, {1'd1}}, {tmp_s_fu_2330_p4}};
assign or_ln14_22_fu_2674_p5 = {{{{tmp_131_reg_5220}, {1'd1}}, {tmp_132_reg_5327}}, {p_cast_reg_4908}};
assign or_ln14_23_fu_2689_p5 = {{{{tmp_131_reg_5220}, {1'd1}}, {tmp_s_reg_5246}}, {6'd32}};
assign or_ln14_24_fu_2364_p5 = {{{{tmp_131_fu_2323_p3}, {1'd1}}, {tmp_255_fu_2355_p4}}, {1'd1}};
assign or_ln14_25_fu_2742_p5 = {{{{tmp_131_reg_5220}, {1'd1}}, {tmp_255_reg_5251}}, {7'd64}};
assign or_ln14_26_fu_2763_p5 = {{{{tmp_131_reg_5220}, {1'd1}}, {tmp_255_reg_5251}}, {7'd96}};
assign or_ln14_27_fu_2451_p6 = {{{{{tmp_131_reg_5220}, {1'd1}}, {tmp_132_fu_2444_p3}}, {1'd1}}, {tmp_129_reg_5009}};
assign or_ln14_28_fu_2871_p6 = {{{{{tmp_131_reg_5220}, {1'd1}}, {tmp_132_reg_5327}}, {1'd1}}, {conv3_udiv}};
assign or_ln14_29_fu_2888_p7 = {{{{{{tmp_131_reg_5220}, {1'd1}}, {tmp_132_reg_5327}}, {1'd1}}, {tmp_129_reg_5009}}, {6'd32}};
assign or_ln14_2_fu_2010_p3 = {{tmp_162_reg_4968}, {7'd64}};
assign or_ln14_30_fu_2469_p5 = {{{{tmp_131_reg_5220}, {1'd1}}, {tmp_132_fu_2444_p3}}, {2'd3}};
assign or_ln14_31_fu_2992_p5 = {{{{tmp_131_reg_5220}, {1'd1}}, {tmp_132_reg_5327}}, {8'd192}};
assign or_ln14_32_fu_3013_p5 = {{{{tmp_131_reg_5220}, {1'd1}}, {tmp_132_reg_5327}}, {8'd224}};
assign or_ln14_33_fu_2541_p4 = {{{tmp_131_reg_5220}, {2'd3}}, {tmp_221_reg_5089}};
assign or_ln14_34_fu_3112_p4 = {{{tmp_131_reg_5220}, {2'd3}}, {p_cast_reg_4908}};
assign or_ln14_35_fu_3126_p5 = {{{{tmp_131_reg_5220}, {2'd3}}, {tmp_221_reg_5089}}, {6'd32}};
assign or_ln14_36_fu_2555_p5 = {{{{tmp_131_reg_5220}, {2'd3}}, {tmp_130_reg_5096}}, {1'd1}};
assign or_ln14_37_fu_3227_p5 = {{{{tmp_131_reg_5220}, {2'd3}}, {tmp_130_reg_5096}}, {7'd64}};
assign or_ln14_38_fu_3248_p5 = {{{{tmp_131_reg_5220}, {2'd3}}, {tmp_130_reg_5096}}, {7'd96}};
assign or_ln14_39_fu_2627_p4 = {{{tmp_131_reg_5220}, {3'd7}}, {tmp_129_reg_5009}};
assign or_ln14_3_fu_2028_p3 = {{tmp_162_reg_4968}, {7'd96}};
assign or_ln14_40_fu_3347_p4 = {{{tmp_131_reg_5220}, {3'd7}}, {conv3_udiv}};
assign or_ln14_41_fu_3361_p5 = {{{{tmp_131_reg_5220}, {3'd7}}, {tmp_129_reg_5009}}, {6'd32}};
assign or_ln14_42_fu_2641_p3 = {{tmp_131_reg_5220}, {4'd15}};
assign or_ln14_43_fu_3466_p3 = {{tmp_131_reg_5220}, {10'd960}};
assign or_ln14_44_fu_3488_p3 = {{tmp_131_reg_5220}, {10'd992}};
assign or_ln14_4_fu_2053_p4 = {{{tmp_65_reg_4938}, {1'd1}}, {tmp_129_fu_2046_p3}};
assign or_ln14_5_fu_2096_p4 = {{{tmp_65_reg_4938}, {1'd1}}, {conv3_udiv}};
assign or_ln14_6_fu_2110_p5 = {{{{tmp_65_reg_4938}, {1'd1}}, {tmp_129_reg_5009}}, {6'd32}};
assign or_ln14_7_fu_2068_p3 = {{tmp_65_reg_4938}, {2'd3}};
assign or_ln14_8_fu_2205_p3 = {{tmp_65_reg_4938}, {8'd192}};
assign or_ln14_9_fu_2223_p3 = {{tmp_65_reg_4938}, {8'd224}};
assign or_ln14_s_fu_2149_p4 = {{{tmp_217_fu_2131_p4}, {1'd1}}, {tmp_221_fu_2140_p4}};
assign or_ln1_fu_1966_p3 = {{lshr_ln9_fu_1926_p4}, {6'd32}};
assign or_ln_fu_1952_p3 = {{tmp_65_fu_1942_p4}, {p_cast_fu_1906_p1}};
assign p_cast_fu_1906_p1 = empty_9;
assign select_ln14_10_fu_3806_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? grp_fu_7037_p_dout0 : add6_21114_fu_514);
assign select_ln14_11_fu_3813_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? grp_fu_3912_p_dout0 : add6_20112_fu_510);
assign select_ln14_12_fu_3746_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? grp_fu_7037_p_dout0 : add6_19110_fu_506);
assign select_ln14_13_fu_3753_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? grp_fu_3912_p_dout0 : add6_18108_fu_502);
assign select_ln14_14_fu_3686_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? grp_fu_7037_p_dout0 : add6_17106_fu_498);
assign select_ln14_15_fu_3693_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? grp_fu_3912_p_dout0 : add6_16104_fu_494);
assign select_ln14_16_fu_3610_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? grp_fu_7037_p_dout0 : add6_15102_fu_490);
assign select_ln14_17_fu_3617_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? grp_fu_3912_p_dout0 : add6_14100_fu_486);
assign select_ln14_18_fu_3506_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? grp_fu_7037_p_dout0 : add6_1398_fu_482);
assign select_ln14_19_fu_3513_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? grp_fu_3912_p_dout0 : add6_1296_fu_478);
assign select_ln14_1_fu_4113_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? grp_fu_3912_p_dout0 : add6_30132_fu_550);
assign select_ln14_20_fu_3392_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? grp_fu_7037_p_dout0 : add6_1194_fu_474);
assign select_ln14_21_fu_3399_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? grp_fu_3912_p_dout0 : add6_1092_fu_470);
assign select_ln14_22_fu_3277_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? grp_fu_7037_p_dout0 : add6_990_fu_466);
assign select_ln14_23_fu_3284_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? grp_fu_3912_p_dout0 : add6_888_fu_462);
assign select_ln14_24_fu_3157_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? grp_fu_7037_p_dout0 : add6_786_fu_458);
assign select_ln14_25_fu_3164_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? grp_fu_3912_p_dout0 : add6_684_fu_454);
assign select_ln14_26_fu_3042_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? grp_fu_7037_p_dout0 : add6_582_fu_450);
assign select_ln14_27_fu_3049_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? grp_fu_3912_p_dout0 : add6_480_fu_446);
assign select_ln14_28_fu_2922_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? grp_fu_7037_p_dout0 : add6_378_fu_442);
assign select_ln14_29_fu_2929_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? grp_fu_3912_p_dout0 : add6_276_fu_438);
assign select_ln14_2_fu_4046_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? grp_fu_7037_p_dout0 : add6_29130_fu_546);
assign select_ln14_30_fu_2797_p3 = ((icmp_ln14_fu_2792_p2[0:0] == 1'b1) ? grp_fu_7037_p_dout0 : add6_174_fu_434);
assign select_ln14_31_fu_2805_p3 = ((icmp_ln14_fu_2792_p2[0:0] == 1'b1) ? grp_fu_3912_p_dout0 : add672_fu_430);
assign select_ln14_32_fu_4120_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? add6_3170_fu_426 : grp_fu_7037_p_dout0);
assign select_ln14_33_fu_4127_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? add6_3068_fu_422 : grp_fu_3912_p_dout0);
assign select_ln14_34_fu_4060_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? add6_2966_fu_418 : grp_fu_7037_p_dout0);
assign select_ln14_35_fu_4067_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? add6_2864_fu_414 : grp_fu_3912_p_dout0);
assign select_ln14_36_fu_4000_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? add6_2762_fu_410 : grp_fu_7037_p_dout0);
assign select_ln14_37_fu_4007_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? add6_2660_fu_406 : grp_fu_3912_p_dout0);
assign select_ln14_38_fu_3940_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? add6_2558_fu_402 : grp_fu_7037_p_dout0);
assign select_ln14_39_fu_3947_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? add6_2456_fu_398 : grp_fu_3912_p_dout0);
assign select_ln14_3_fu_4053_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? grp_fu_3912_p_dout0 : add6_28128_fu_542);
assign select_ln14_40_fu_3880_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? add6_2354_fu_394 : grp_fu_7037_p_dout0);
assign select_ln14_41_fu_3887_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? add6_2252_fu_390 : grp_fu_3912_p_dout0);
assign select_ln14_42_fu_3820_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? add6_2150_fu_386 : grp_fu_7037_p_dout0);
assign select_ln14_43_fu_3827_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? add6_2048_fu_382 : grp_fu_3912_p_dout0);
assign select_ln14_44_fu_3760_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? add6_1946_fu_378 : grp_fu_7037_p_dout0);
assign select_ln14_45_fu_3767_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? add6_1844_fu_374 : grp_fu_3912_p_dout0);
assign select_ln14_46_fu_3700_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? add6_1742_fu_370 : grp_fu_7037_p_dout0);
assign select_ln14_47_fu_3707_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? add6_1640_fu_366 : grp_fu_3912_p_dout0);
assign select_ln14_48_fu_3624_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? add6_1538_fu_362 : grp_fu_7037_p_dout0);
assign select_ln14_49_fu_3631_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? add6_1436_fu_358 : grp_fu_3912_p_dout0);
assign select_ln14_4_fu_3986_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? grp_fu_7037_p_dout0 : add6_27126_fu_538);
assign select_ln14_50_fu_3520_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? add6_1334_fu_354 : grp_fu_7037_p_dout0);
assign select_ln14_51_fu_3527_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? add6_1232_fu_350 : grp_fu_3912_p_dout0);
assign select_ln14_52_fu_3406_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? add6_1130_fu_346 : grp_fu_7037_p_dout0);
assign select_ln14_53_fu_3413_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? add6_1028_fu_342 : grp_fu_3912_p_dout0);
assign select_ln14_54_fu_3291_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? add6_926_fu_338 : grp_fu_7037_p_dout0);
assign select_ln14_55_fu_3298_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? add6_824_fu_334 : grp_fu_3912_p_dout0);
assign select_ln14_56_fu_3171_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? add6_722_fu_330 : grp_fu_7037_p_dout0);
assign select_ln14_57_fu_3178_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? add6_620_fu_326 : grp_fu_3912_p_dout0);
assign select_ln14_58_fu_3056_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? add6_518_fu_322 : grp_fu_7037_p_dout0);
assign select_ln14_59_fu_3063_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? add6_416_fu_318 : grp_fu_3912_p_dout0);
assign select_ln14_5_fu_3993_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? grp_fu_3912_p_dout0 : add6_26124_fu_534);
assign select_ln14_60_fu_2936_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? add6_314_fu_314 : grp_fu_7037_p_dout0);
assign select_ln14_61_fu_2943_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? add6_212_fu_310 : grp_fu_3912_p_dout0);
assign select_ln14_62_fu_2813_p3 = ((icmp_ln14_fu_2792_p2[0:0] == 1'b1) ? add6_110_fu_306 : grp_fu_7037_p_dout0);
assign select_ln14_63_fu_2821_p3 = ((icmp_ln14_fu_2792_p2[0:0] == 1'b1) ? add61_fu_302 : grp_fu_3912_p_dout0);
assign select_ln14_6_fu_3926_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? grp_fu_7037_p_dout0 : add6_25122_fu_530);
assign select_ln14_7_fu_3933_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? grp_fu_3912_p_dout0 : add6_24120_fu_526);
assign select_ln14_8_fu_3866_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? grp_fu_7037_p_dout0 : add6_23118_fu_522);
assign select_ln14_94_fu_3591_p3 = ((empty[0:0] == 1'b1) ? emission_1_q1 : emission_0_q1);
assign select_ln14_95_fu_3603_p3 = ((empty[0:0] == 1'b1) ? emission_1_q0 : emission_0_q0);
assign select_ln14_9_fu_3873_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? grp_fu_3912_p_dout0 : add6_22116_fu_518);
assign select_ln14_fu_4106_p3 = ((icmp_ln14_reg_5606[0:0] == 1'b1) ? grp_fu_7037_p_dout0 : add6_31134_fu_554);
assign tmp_129_fu_2046_p3 = s_1_reg_4915[32'd1];
assign tmp_130_fu_2165_p3 = s_1_reg_4915[32'd2];
assign tmp_131_fu_2323_p3 = s_1_reg_4915[32'd5];
assign tmp_132_fu_2444_p3 = s_1_reg_4915[32'd3];
assign tmp_162_fu_1986_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign tmp_217_fu_2131_p4 = {{s_1_reg_4915[5:4]}};
assign tmp_221_fu_2140_p4 = {{s_1_reg_4915[2:1]}};
assign tmp_255_fu_2355_p4 = {{s_1_reg_4915[3:2]}};
assign tmp_65_fu_1942_p4 = {{ap_sig_allocacmp_s_1[5:3]}};
assign tmp_s_fu_2330_p4 = {{s_1_reg_4915[3:1]}};
assign zext_ln14_10_fu_2417_p1 = add_ln14_7_fu_2412_p2;
assign zext_ln14_11_fu_2438_p1 = add_ln14_8_fu_2433_p2;
assign zext_ln14_12_fu_2514_p1 = or_ln14_16_fu_2506_p4;
assign zext_ln14_13_fu_2535_p1 = add_ln14_9_fu_2530_p2;
assign zext_ln14_14_fu_2603_p1 = add_ln14_10_fu_2598_p2;
assign zext_ln14_15_fu_2621_p1 = add_ln14_11_fu_2616_p2;
assign zext_ln14_16_fu_2683_p1 = or_ln14_22_fu_2674_p5;
assign zext_ln14_17_fu_2704_p1 = add_ln14_12_fu_2699_p2;
assign zext_ln14_18_fu_2757_p1 = add_ln14_13_fu_2752_p2;
assign zext_ln14_19_fu_2778_p1 = add_ln14_14_fu_2773_p2;
assign zext_ln14_1_fu_1980_p1 = add_ln14_fu_1974_p2;
assign zext_ln14_20_fu_2882_p1 = or_ln14_28_fu_2871_p6;
assign zext_ln14_21_fu_2906_p1 = add_ln14_15_fu_2901_p2;
assign zext_ln14_22_fu_3007_p1 = add_ln14_16_fu_3002_p2;
assign zext_ln14_23_fu_3028_p1 = add_ln14_17_fu_3023_p2;
assign zext_ln14_24_fu_3120_p1 = or_ln14_34_fu_3112_p4;
assign zext_ln14_25_fu_3141_p1 = add_ln14_18_fu_3136_p2;
assign zext_ln14_26_fu_3242_p1 = add_ln14_19_fu_3237_p2;
assign zext_ln14_27_fu_3263_p1 = add_ln14_20_fu_3258_p2;
assign zext_ln14_28_fu_3355_p1 = or_ln14_40_fu_3347_p4;
assign zext_ln14_29_fu_3376_p1 = add_ln14_21_fu_3371_p2;
assign zext_ln14_2_fu_2022_p1 = add_ln14_1_fu_2017_p2;
assign zext_ln14_30_fu_3478_p1 = add_ln14_22_fu_3473_p2;
assign zext_ln14_31_fu_3500_p1 = add_ln14_23_fu_3495_p2;
assign zext_ln14_32_fu_2004_p1 = or_ln14_1_fu_1996_p3;
assign zext_ln14_33_fu_2062_p1 = or_ln14_4_fu_2053_p4;
assign zext_ln14_34_fu_2075_p1 = or_ln14_7_fu_2068_p3;
assign zext_ln14_35_fu_2159_p1 = or_ln14_s_fu_2149_p4;
assign zext_ln14_36_fu_2184_p1 = or_ln14_12_fu_2172_p5;
assign zext_ln14_37_fu_2249_p1 = or_ln14_15_fu_2241_p4;
assign zext_ln14_38_fu_2262_p1 = or_ln14_18_fu_2255_p3;
assign zext_ln14_39_fu_2349_p1 = or_ln14_21_fu_2339_p4;
assign zext_ln14_3_fu_2040_p1 = add_ln14_2_fu_2035_p2;
assign zext_ln14_40_fu_2376_p1 = or_ln14_24_fu_2364_p5;
assign zext_ln14_41_fu_2463_p1 = or_ln14_27_fu_2451_p6;
assign zext_ln14_42_fu_2480_p1 = or_ln14_30_fu_2469_p5;
assign zext_ln14_43_fu_2549_p1 = or_ln14_33_fu_2541_p4;
assign zext_ln14_44_fu_2565_p1 = or_ln14_36_fu_2555_p5;
assign zext_ln14_45_fu_2635_p1 = or_ln14_39_fu_2627_p4;
assign zext_ln14_46_fu_2648_p1 = or_ln14_42_fu_2641_p3;
assign zext_ln14_4_fu_2104_p1 = or_ln14_5_fu_2096_p4;
assign zext_ln14_5_fu_2125_p1 = add_ln14_3_fu_2120_p2;
assign zext_ln14_6_fu_2217_p1 = add_ln14_4_fu_2212_p2;
assign zext_ln14_7_fu_2235_p1 = add_ln14_5_fu_2230_p2;
assign zext_ln14_8_fu_2296_p1 = or_ln14_10_fu_2288_p4;
assign zext_ln14_9_fu_2317_p1 = add_ln14_6_fu_2312_p2;
assign zext_ln14_fu_1960_p1 = or_ln_fu_1952_p3;
assign zext_ln9_fu_1936_p1 = lshr_ln9_fu_1926_p4;
always @ (posedge ap_clk) begin
    conv3_udiv_cast_cast_reg_4881[10:7] <= 4'b0000;
    p_cast_reg_4908[7] <= 1'b0;
end
endmodule 