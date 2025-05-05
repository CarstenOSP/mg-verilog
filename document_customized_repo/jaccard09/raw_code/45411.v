module backprop_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,activations_address0,activations_ce0,activations_we0,activations_d0,activations_address1,activations_ce1,activations_we1,activations_d1,weights1_address0,weights1_ce0,weights1_q0,weights1_address1,weights1_ce1,weights1_q1,empty_19,empty_20,empty_21,empty_22,empty_23,empty_24,empty_25,empty_26,empty_27,empty_28,empty_29,empty_30,empty,grp_fu_580_p_din0,grp_fu_580_p_din1,grp_fu_580_p_opcode,grp_fu_580_p_dout0,grp_fu_580_p_ce,grp_fu_584_p_din0,grp_fu_584_p_din1,grp_fu_584_p_opcode,grp_fu_584_p_dout0,grp_fu_584_p_ce,grp_fu_588_p_din0,grp_fu_588_p_din1,grp_fu_588_p_dout0,grp_fu_588_p_ce,grp_fu_592_p_din0,grp_fu_592_p_din1,grp_fu_592_p_dout0,grp_fu_592_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 26'd1;
parameter    ap_ST_fsm_pp0_stage1 = 26'd2;
parameter    ap_ST_fsm_pp0_stage2 = 26'd4;
parameter    ap_ST_fsm_pp0_stage3 = 26'd8;
parameter    ap_ST_fsm_pp0_stage4 = 26'd16;
parameter    ap_ST_fsm_pp0_stage5 = 26'd32;
parameter    ap_ST_fsm_pp0_stage6 = 26'd64;
parameter    ap_ST_fsm_pp0_stage7 = 26'd128;
parameter    ap_ST_fsm_pp0_stage8 = 26'd256;
parameter    ap_ST_fsm_pp0_stage9 = 26'd512;
parameter    ap_ST_fsm_pp0_stage10 = 26'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 26'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 26'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 26'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 26'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 26'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 26'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 26'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 26'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 26'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 26'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 26'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 26'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 26'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 26'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 26'd33554432;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] activations_address0;
output   activations_ce0;
output   activations_we0;
output  [63:0] activations_d0;
output  [5:0] activations_address1;
output   activations_ce1;
output   activations_we1;
output  [63:0] activations_d1;
output  [9:0] weights1_address0;
output   weights1_ce0;
input  [63:0] weights1_q0;
output  [9:0] weights1_address1;
output   weights1_ce1;
input  [63:0] weights1_q1;
input  [63:0] empty_19;
input  [63:0] empty_20;
input  [63:0] empty_21;
input  [63:0] empty_22;
input  [63:0] empty_23;
input  [63:0] empty_24;
input  [63:0] empty_25;
input  [63:0] empty_26;
input  [63:0] empty_27;
input  [63:0] empty_28;
input  [63:0] empty_29;
input  [63:0] empty_30;
input  [63:0] empty;
output  [63:0] grp_fu_580_p_din0;
output  [63:0] grp_fu_580_p_din1;
output  [0:0] grp_fu_580_p_opcode;
input  [63:0] grp_fu_580_p_dout0;
output   grp_fu_580_p_ce;
output  [63:0] grp_fu_584_p_din0;
output  [63:0] grp_fu_584_p_din1;
output  [0:0] grp_fu_584_p_opcode;
input  [63:0] grp_fu_584_p_dout0;
output   grp_fu_584_p_ce;
output  [63:0] grp_fu_588_p_din0;
output  [63:0] grp_fu_588_p_din1;
input  [63:0] grp_fu_588_p_dout0;
output   grp_fu_588_p_ce;
output  [63:0] grp_fu_592_p_din0;
output  [63:0] grp_fu_592_p_din1;
input  [63:0] grp_fu_592_p_dout0;
output   grp_fu_592_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [25:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_subdone;
reg   [0:0] tmp_14_reg_1834;
reg    ap_condition_exit_pp0_iter0_stage25;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_756;
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
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire    ap_block_pp0_stage25_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] reg_760;
reg   [63:0] reg_764;
reg   [63:0] reg_769;
reg   [63:0] reg_774;
reg   [63:0] reg_779;
reg   [63:0] reg_784;
reg   [63:0] reg_789;
reg   [63:0] reg_794;
reg   [63:0] reg_799;
reg   [63:0] reg_804;
reg   [63:0] reg_809;
reg   [63:0] reg_814;
reg   [63:0] reg_819;
reg   [63:0] reg_824;
reg   [63:0] reg_830;
reg   [63:0] reg_836;
reg   [63:0] reg_841;
reg   [6:0] j_1_reg_1826;
reg   [6:0] j_1_reg_1826_pp0_iter1_reg;
reg   [6:0] j_1_reg_1826_pp0_iter2_reg;
reg   [6:0] j_1_reg_1826_pp0_iter3_reg;
reg   [6:0] j_1_reg_1826_pp0_iter4_reg;
reg   [0:0] tmp_14_reg_1834_pp0_iter1_reg;
reg   [0:0] tmp_14_reg_1834_pp0_iter2_reg;
reg   [0:0] tmp_14_reg_1834_pp0_iter3_reg;
wire   [9:0] mul_ln36_fu_866_p2;
reg   [9:0] mul_ln36_reg_1838;
reg   [8:0] tmp_reg_1891;
reg   [7:0] tmp_s_reg_1896;
wire   [63:0] bitcast_ln36_fu_926_p1;
wire   [63:0] bitcast_ln36_13_fu_943_p1;
wire   [63:0] bitcast_ln36_26_fu_958_p1;
wire   [63:0] bitcast_ln36_39_fu_973_p1;
wire   [63:0] bitcast_ln36_1_fu_988_p1;
wire   [63:0] bitcast_ln36_14_fu_1005_p1;
wire   [63:0] bitcast_ln36_27_fu_1020_p1;
wire   [63:0] bitcast_ln36_40_fu_1035_p1;
wire   [63:0] bitcast_ln36_2_fu_1050_p1;
wire   [63:0] bitcast_ln36_15_fu_1067_p1;
wire   [63:0] bitcast_ln36_28_fu_1082_p1;
wire   [63:0] bitcast_ln36_41_fu_1097_p1;
reg   [63:0] mul8_reg_2042;
wire   [63:0] bitcast_ln36_3_fu_1112_p1;
reg   [63:0] mul8_1_reg_2057;
wire   [63:0] bitcast_ln36_16_fu_1127_p1;
reg   [63:0] mul8_2_reg_2072;
wire   [63:0] bitcast_ln36_29_fu_1142_p1;
reg   [63:0] mul8_3_reg_2087;
wire   [63:0] bitcast_ln36_42_fu_1157_p1;
reg   [63:0] mul8_s_reg_2102;
wire   [63:0] bitcast_ln36_4_fu_1172_p1;
reg   [63:0] mul8_1_1_reg_2117;
wire   [63:0] bitcast_ln36_17_fu_1187_p1;
reg   [63:0] mul8_2_1_reg_2132;
wire   [63:0] bitcast_ln36_30_fu_1202_p1;
reg   [63:0] mul8_3_1_reg_2147;
wire   [63:0] bitcast_ln36_43_fu_1217_p1;
reg   [63:0] mul8_13_reg_2162;
wire   [63:0] bitcast_ln36_5_fu_1232_p1;
reg   [63:0] mul8_1_2_reg_2177;
wire   [63:0] bitcast_ln36_18_fu_1247_p1;
reg   [63:0] mul8_2_2_reg_2192;
wire   [63:0] bitcast_ln36_31_fu_1262_p1;
reg   [63:0] mul8_3_2_reg_2207;
wire   [63:0] bitcast_ln36_44_fu_1277_p1;
reg   [63:0] mul8_14_reg_2222;
wire   [63:0] bitcast_ln36_6_fu_1292_p1;
reg   [63:0] mul8_1_3_reg_2237;
wire   [63:0] bitcast_ln36_19_fu_1307_p1;
reg   [63:0] mul8_2_3_reg_2252;
wire   [63:0] bitcast_ln36_32_fu_1322_p1;
reg   [63:0] mul8_3_3_reg_2267;
wire   [63:0] bitcast_ln36_45_fu_1337_p1;
reg   [63:0] mul8_4_reg_2282;
wire   [63:0] bitcast_ln36_7_fu_1352_p1;
reg   [63:0] mul8_1_4_reg_2297;
wire   [63:0] bitcast_ln36_20_fu_1367_p1;
reg   [63:0] mul8_2_4_reg_2312;
wire   [63:0] bitcast_ln36_33_fu_1382_p1;
reg   [63:0] mul8_3_4_reg_2327;
wire   [63:0] bitcast_ln36_46_fu_1397_p1;
reg   [63:0] mul8_5_reg_2342;
reg   [63:0] mul8_5_reg_2342_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_8_fu_1412_p1;
reg   [63:0] mul8_1_5_reg_2357;
reg   [63:0] mul8_1_5_reg_2357_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_21_fu_1427_p1;
reg   [63:0] mul8_2_5_reg_2372;
reg   [63:0] mul8_2_5_reg_2372_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_34_fu_1442_p1;
reg   [63:0] mul8_3_5_reg_2387;
reg   [63:0] mul8_3_5_reg_2387_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_47_fu_1457_p1;
reg   [63:0] mul8_6_reg_2402;
reg   [63:0] mul8_6_reg_2402_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_9_fu_1472_p1;
reg   [63:0] mul8_1_6_reg_2417;
reg   [63:0] mul8_1_6_reg_2417_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_22_fu_1487_p1;
reg   [63:0] mul8_2_6_reg_2432;
reg   [63:0] mul8_2_6_reg_2432_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_35_fu_1502_p1;
reg   [63:0] mul8_3_6_reg_2447;
reg   [63:0] mul8_3_6_reg_2447_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_48_fu_1517_p1;
reg   [63:0] mul8_7_reg_2462;
reg   [63:0] mul8_7_reg_2462_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_10_fu_1532_p1;
reg   [63:0] mul8_1_7_reg_2477;
reg   [63:0] mul8_1_7_reg_2477_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_23_fu_1547_p1;
reg   [63:0] mul8_2_7_reg_2492;
reg   [63:0] mul8_2_7_reg_2492_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_36_fu_1562_p1;
reg   [63:0] mul8_3_7_reg_2507;
reg   [63:0] mul8_3_7_reg_2507_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_49_fu_1577_p1;
reg   [63:0] mul8_8_reg_2522;
reg   [63:0] mul8_8_reg_2522_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_11_fu_1592_p1;
reg   [63:0] mul8_1_8_reg_2537;
reg   [63:0] mul8_1_8_reg_2537_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_24_fu_1607_p1;
reg   [63:0] mul8_2_8_reg_2552;
reg   [63:0] mul8_2_8_reg_2552_pp0_iter2_reg;
wire   [63:0] bitcast_ln36_37_fu_1632_p1;
reg   [63:0] mul8_3_8_reg_2567;
reg   [63:0] mul8_3_8_reg_2567_pp0_iter2_reg;
wire   [63:0] bitcast_ln36_50_fu_1647_p1;
reg   [63:0] mul8_9_reg_2582;
reg   [63:0] mul8_9_reg_2582_pp0_iter2_reg;
reg   [63:0] mul8_9_reg_2582_pp0_iter3_reg;
wire   [63:0] bitcast_ln36_12_fu_1662_p1;
reg   [63:0] mul8_1_9_reg_2592;
reg   [63:0] mul8_1_9_reg_2592_pp0_iter2_reg;
reg   [63:0] mul8_1_9_reg_2592_pp0_iter3_reg;
wire   [63:0] bitcast_ln36_25_fu_1667_p1;
reg   [63:0] mul8_2_9_reg_2602;
reg   [63:0] mul8_2_9_reg_2602_pp0_iter2_reg;
reg   [63:0] mul8_2_9_reg_2602_pp0_iter3_reg;
wire   [63:0] bitcast_ln36_38_fu_1672_p1;
reg   [63:0] mul8_3_9_reg_2612;
reg   [63:0] mul8_3_9_reg_2612_pp0_iter2_reg;
reg   [63:0] mul8_3_9_reg_2612_pp0_iter3_reg;
wire   [63:0] bitcast_ln36_51_fu_1677_p1;
reg   [63:0] mul8_10_reg_2622;
reg   [63:0] mul8_10_reg_2622_pp0_iter2_reg;
reg   [63:0] mul8_10_reg_2622_pp0_iter3_reg;
reg   [63:0] mul8_1_s_reg_2627;
reg   [63:0] mul8_1_s_reg_2627_pp0_iter2_reg;
reg   [63:0] mul8_1_s_reg_2627_pp0_iter3_reg;
reg   [63:0] mul8_2_s_reg_2632;
reg   [63:0] mul8_2_s_reg_2632_pp0_iter2_reg;
reg   [63:0] mul8_2_s_reg_2632_pp0_iter3_reg;
reg   [63:0] mul8_3_s_reg_2637;
reg   [63:0] mul8_3_s_reg_2637_pp0_iter2_reg;
reg   [63:0] mul8_3_s_reg_2637_pp0_iter3_reg;
reg   [63:0] mul8_11_reg_2642;
reg   [63:0] mul8_11_reg_2642_pp0_iter2_reg;
reg   [63:0] mul8_11_reg_2642_pp0_iter3_reg;
reg   [63:0] mul8_1_10_reg_2647;
reg   [63:0] mul8_1_10_reg_2647_pp0_iter2_reg;
reg   [63:0] mul8_1_10_reg_2647_pp0_iter3_reg;
reg   [63:0] mul8_2_10_reg_2652;
reg   [63:0] mul8_2_10_reg_2652_pp0_iter2_reg;
reg   [63:0] mul8_2_10_reg_2652_pp0_iter3_reg;
reg   [63:0] mul8_3_10_reg_2657;
reg   [63:0] mul8_3_10_reg_2657_pp0_iter2_reg;
reg   [63:0] mul8_3_10_reg_2657_pp0_iter3_reg;
reg   [63:0] mul8_12_reg_2662;
reg   [63:0] mul8_12_reg_2662_pp0_iter2_reg;
reg   [63:0] mul8_12_reg_2662_pp0_iter3_reg;
reg   [63:0] mul8_1_11_reg_2667;
reg   [63:0] mul8_1_11_reg_2667_pp0_iter2_reg;
reg   [63:0] mul8_1_11_reg_2667_pp0_iter3_reg;
reg   [63:0] mul8_2_11_reg_2672;
reg   [63:0] mul8_2_11_reg_2672_pp0_iter2_reg;
reg   [63:0] mul8_2_11_reg_2672_pp0_iter3_reg;
reg   [63:0] mul8_3_11_reg_2677;
reg   [63:0] mul8_3_11_reg_2677_pp0_iter2_reg;
reg   [63:0] mul8_3_11_reg_2677_pp0_iter3_reg;
reg   [3:0] tmp_16_reg_2682;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage11_subdone;
wire   [63:0] zext_ln36_fu_892_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln36_13_fu_901_p1;
wire   [63:0] zext_ln36_26_fu_911_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln36_39_fu_921_p1;
wire   [63:0] zext_ln36_1_fu_938_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln36_14_fu_953_p1;
wire   [63:0] zext_ln36_27_fu_968_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln36_40_fu_983_p1;
wire   [63:0] zext_ln36_2_fu_1000_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln36_15_fu_1015_p1;
wire   [63:0] zext_ln36_28_fu_1030_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln36_41_fu_1045_p1;
wire   [63:0] zext_ln36_3_fu_1062_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln36_16_fu_1077_p1;
wire   [63:0] zext_ln36_29_fu_1092_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln36_42_fu_1107_p1;
wire   [63:0] zext_ln36_4_fu_1122_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln36_17_fu_1137_p1;
wire   [63:0] zext_ln36_30_fu_1152_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln36_43_fu_1167_p1;
wire   [63:0] zext_ln36_5_fu_1182_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln36_18_fu_1197_p1;
wire   [63:0] zext_ln36_31_fu_1212_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln36_44_fu_1227_p1;
wire   [63:0] zext_ln36_6_fu_1242_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln36_19_fu_1257_p1;
wire   [63:0] zext_ln36_32_fu_1272_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln36_45_fu_1287_p1;
wire   [63:0] zext_ln36_7_fu_1302_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln36_20_fu_1317_p1;
wire   [63:0] zext_ln36_33_fu_1332_p1;
wire    ap_block_pp0_stage16;
wire   [63:0] zext_ln36_46_fu_1347_p1;
wire   [63:0] zext_ln36_8_fu_1362_p1;
wire    ap_block_pp0_stage17;
wire   [63:0] zext_ln36_21_fu_1377_p1;
wire   [63:0] zext_ln36_34_fu_1392_p1;
wire    ap_block_pp0_stage18;
wire   [63:0] zext_ln36_47_fu_1407_p1;
wire   [63:0] zext_ln36_9_fu_1422_p1;
wire    ap_block_pp0_stage19;
wire   [63:0] zext_ln36_22_fu_1437_p1;
wire   [63:0] zext_ln36_35_fu_1452_p1;
wire    ap_block_pp0_stage20;
wire   [63:0] zext_ln36_48_fu_1467_p1;
wire   [63:0] zext_ln36_10_fu_1482_p1;
wire    ap_block_pp0_stage21;
wire   [63:0] zext_ln36_23_fu_1497_p1;
wire   [63:0] zext_ln36_36_fu_1512_p1;
wire    ap_block_pp0_stage22;
wire   [63:0] zext_ln36_49_fu_1527_p1;
wire   [63:0] zext_ln36_11_fu_1542_p1;
wire    ap_block_pp0_stage23;
wire   [63:0] zext_ln36_24_fu_1557_p1;
wire   [63:0] zext_ln36_37_fu_1572_p1;
wire    ap_block_pp0_stage24;
wire   [63:0] zext_ln36_50_fu_1587_p1;
wire   [63:0] zext_ln36_12_fu_1602_p1;
wire    ap_block_pp0_stage25;
wire   [63:0] zext_ln36_25_fu_1617_p1;
wire   [63:0] zext_ln36_38_fu_1642_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln36_51_fu_1657_p1;
wire   [63:0] zext_ln33_fu_1682_p1;
wire   [63:0] zext_ln34_fu_1703_p1;
wire   [63:0] zext_ln34_1_fu_1724_p1;
wire   [63:0] zext_ln34_2_fu_1736_p1;
reg   [6:0] j_fu_190;
wire   [6:0] add_ln33_fu_1622_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_1;
reg    weights1_ce1_local;
reg   [9:0] weights1_address1_local;
reg    weights1_ce0_local;
reg   [9:0] weights1_address0_local;
reg    activations_we1_local;
reg    activations_ce1_local;
reg   [5:0] activations_address1_local;
reg    activations_we0_local;
reg    activations_ce0_local;
reg   [5:0] activations_address0_local;
reg   [63:0] grp_fu_738_p0;
reg   [63:0] grp_fu_738_p1;
reg   [63:0] grp_fu_743_p0;
reg   [63:0] grp_fu_743_p1;
reg   [63:0] grp_fu_748_p0;
reg   [63:0] grp_fu_748_p1;
reg   [63:0] grp_fu_752_p0;
reg   [63:0] grp_fu_752_p1;
wire   [6:0] mul_ln36_fu_866_p0;
wire   [4:0] mul_ln36_fu_866_p1;
wire   [9:0] empty_42_fu_896_p2;
wire   [9:0] empty_43_fu_906_p2;
wire   [9:0] empty_44_fu_916_p2;
wire   [9:0] or_ln_fu_931_p3;
wire   [9:0] add_ln36_9_fu_948_p2;
wire   [9:0] add_ln36_21_fu_963_p2;
wire   [9:0] add_ln36_33_fu_978_p2;
wire   [9:0] or_ln36_1_fu_993_p3;
wire   [9:0] add_ln36_10_fu_1010_p2;
wire   [9:0] add_ln36_22_fu_1025_p2;
wire   [9:0] add_ln36_34_fu_1040_p2;
wire   [9:0] or_ln36_2_fu_1055_p3;
wire   [9:0] add_ln36_11_fu_1072_p2;
wire   [9:0] add_ln36_23_fu_1087_p2;
wire   [9:0] add_ln36_35_fu_1102_p2;
wire   [9:0] add_ln36_fu_1117_p2;
wire   [9:0] add_ln36_12_fu_1132_p2;
wire   [9:0] add_ln36_24_fu_1147_p2;
wire   [9:0] add_ln36_36_fu_1162_p2;
wire   [9:0] add_ln36_1_fu_1177_p2;
wire   [9:0] add_ln36_13_fu_1192_p2;
wire   [9:0] add_ln36_25_fu_1207_p2;
wire   [9:0] add_ln36_37_fu_1222_p2;
wire   [9:0] add_ln36_2_fu_1237_p2;
wire   [9:0] add_ln36_14_fu_1252_p2;
wire   [9:0] add_ln36_26_fu_1267_p2;
wire   [9:0] add_ln36_38_fu_1282_p2;
wire   [9:0] add_ln36_3_fu_1297_p2;
wire   [9:0] add_ln36_15_fu_1312_p2;
wire   [9:0] add_ln36_27_fu_1327_p2;
wire   [9:0] add_ln36_39_fu_1342_p2;
wire   [9:0] add_ln36_4_fu_1357_p2;
wire   [9:0] add_ln36_16_fu_1372_p2;
wire   [9:0] add_ln36_28_fu_1387_p2;
wire   [9:0] add_ln36_40_fu_1402_p2;
wire   [9:0] add_ln36_5_fu_1417_p2;
wire   [9:0] add_ln36_17_fu_1432_p2;
wire   [9:0] add_ln36_29_fu_1447_p2;
wire   [9:0] add_ln36_41_fu_1462_p2;
wire   [9:0] add_ln36_6_fu_1477_p2;
wire   [9:0] add_ln36_18_fu_1492_p2;
wire   [9:0] add_ln36_30_fu_1507_p2;
wire   [9:0] add_ln36_42_fu_1522_p2;
wire   [9:0] add_ln36_7_fu_1537_p2;
wire   [9:0] add_ln36_19_fu_1552_p2;
wire   [9:0] add_ln36_31_fu_1567_p2;
wire   [9:0] add_ln36_43_fu_1582_p2;
wire   [9:0] add_ln36_8_fu_1597_p2;
wire   [9:0] add_ln36_20_fu_1612_p2;
wire   [9:0] add_ln36_32_fu_1637_p2;
wire   [9:0] add_ln36_44_fu_1652_p2;
wire   [4:0] tmp_15_fu_1686_p4;
wire   [5:0] or_ln6_fu_1695_p3;
wire   [5:0] or_ln33_1_fu_1717_p3;
wire   [5:0] or_ln33_2_fu_1729_p3;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage18_00001;
wire    ap_block_pp0_stage19_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage16_00001;
wire    ap_block_pp0_stage17_00001;
wire    ap_block_pp0_stage24_00001;
wire    ap_block_pp0_stage25_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage14_00001;
wire    ap_block_pp0_stage15_00001;
wire    ap_block_pp0_stage22_00001;
wire    ap_block_pp0_stage23_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage13_00001;
wire    ap_block_pp0_stage20_00001;
wire    ap_block_pp0_stage21_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter3_stage11;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [25:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage16_subdone;
wire    ap_block_pp0_stage17_subdone;
wire    ap_block_pp0_stage18_subdone;
wire    ap_block_pp0_stage19_subdone;
wire    ap_block_pp0_stage20_subdone;
wire    ap_block_pp0_stage21_subdone;
wire    ap_block_pp0_stage22_subdone;
wire    ap_block_pp0_stage23_subdone;
wire    ap_block_pp0_stage24_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [9:0] mul_ln36_fu_866_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 26'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_fu_190 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_mul_7ns_5ns_10_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 5 ),.dout_WIDTH( 10 ))
mul_7ns_5ns_10_1_1_U5(.din0(mul_ln36_fu_866_p0),.din1(mul_ln36_fu_866_p1),.dout(mul_ln36_fu_866_p2));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage25),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage25)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage25_subdone) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage25_subdone) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage25_subdone) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage25_subdone) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage11) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage25_11001) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage11) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage25_11001) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage11) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage25_11001) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        j_fu_190 <= 7'd0;
    end else if (((tmp_14_reg_1834 == 1'd0) & (1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        j_fu_190 <= add_ln33_fu_1622_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_1_reg_1826 <= ap_sig_allocacmp_j_1;
        j_1_reg_1826_pp0_iter1_reg <= j_1_reg_1826;
        j_1_reg_1826_pp0_iter2_reg <= j_1_reg_1826_pp0_iter1_reg;
        j_1_reg_1826_pp0_iter3_reg <= j_1_reg_1826_pp0_iter2_reg;
        j_1_reg_1826_pp0_iter4_reg <= j_1_reg_1826_pp0_iter3_reg;
        mul8_2_8_reg_2552_pp0_iter2_reg <= mul8_2_8_reg_2552;
        mul8_3_8_reg_2567_pp0_iter2_reg <= mul8_3_8_reg_2567;
        mul_ln36_reg_1838 <= mul_ln36_fu_866_p2;
        tmp_14_reg_1834 <= ap_sig_allocacmp_j_1[32'd6];
        tmp_14_reg_1834_pp0_iter1_reg <= tmp_14_reg_1834;
        tmp_14_reg_1834_pp0_iter2_reg <= tmp_14_reg_1834_pp0_iter1_reg;
        tmp_14_reg_1834_pp0_iter3_reg <= tmp_14_reg_1834_pp0_iter2_reg;
        tmp_reg_1891 <= {{mul_ln36_fu_866_p2[9:1]}};
        tmp_s_reg_1896 <= {{mul_ln36_fu_866_p2[9:2]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul8_10_reg_2622 <= grp_fu_588_p_dout0;
        mul8_1_s_reg_2627 <= grp_fu_592_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul8_10_reg_2622_pp0_iter2_reg <= mul8_10_reg_2622;
        mul8_10_reg_2622_pp0_iter3_reg <= mul8_10_reg_2622_pp0_iter2_reg;
        mul8_1_s_reg_2627_pp0_iter2_reg <= mul8_1_s_reg_2627;
        mul8_1_s_reg_2627_pp0_iter3_reg <= mul8_1_s_reg_2627_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul8_11_reg_2642 <= grp_fu_588_p_dout0;
        mul8_1_10_reg_2647 <= grp_fu_592_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul8_11_reg_2642_pp0_iter2_reg <= mul8_11_reg_2642;
        mul8_11_reg_2642_pp0_iter3_reg <= mul8_11_reg_2642_pp0_iter2_reg;
        mul8_1_10_reg_2647_pp0_iter2_reg <= mul8_1_10_reg_2647;
        mul8_1_10_reg_2647_pp0_iter3_reg <= mul8_1_10_reg_2647_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul8_12_reg_2662 <= grp_fu_588_p_dout0;
        mul8_1_11_reg_2667 <= grp_fu_592_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul8_12_reg_2662_pp0_iter2_reg <= mul8_12_reg_2662;
        mul8_12_reg_2662_pp0_iter3_reg <= mul8_12_reg_2662_pp0_iter2_reg;
        mul8_1_11_reg_2667_pp0_iter2_reg <= mul8_1_11_reg_2667;
        mul8_1_11_reg_2667_pp0_iter3_reg <= mul8_1_11_reg_2667_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        mul8_13_reg_2162 <= grp_fu_588_p_dout0;
        mul8_1_2_reg_2177 <= grp_fu_592_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        mul8_14_reg_2222 <= grp_fu_588_p_dout0;
        mul8_1_3_reg_2237 <= grp_fu_592_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        mul8_1_1_reg_2117 <= grp_fu_592_p_dout0;
        mul8_s_reg_2102 <= grp_fu_588_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        mul8_1_4_reg_2297 <= grp_fu_592_p_dout0;
        mul8_4_reg_2282 <= grp_fu_588_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        mul8_1_5_reg_2357 <= grp_fu_592_p_dout0;
        mul8_5_reg_2342 <= grp_fu_588_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        mul8_1_5_reg_2357_pp0_iter1_reg <= mul8_1_5_reg_2357;
        mul8_5_reg_2342_pp0_iter1_reg <= mul8_5_reg_2342;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        mul8_1_6_reg_2417 <= grp_fu_592_p_dout0;
        mul8_6_reg_2402 <= grp_fu_588_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        mul8_1_6_reg_2417_pp0_iter1_reg <= mul8_1_6_reg_2417;
        mul8_6_reg_2402_pp0_iter1_reg <= mul8_6_reg_2402;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        mul8_1_7_reg_2477 <= grp_fu_592_p_dout0;
        mul8_7_reg_2462 <= grp_fu_588_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        mul8_1_7_reg_2477_pp0_iter1_reg <= mul8_1_7_reg_2477;
        mul8_7_reg_2462_pp0_iter1_reg <= mul8_7_reg_2462;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        mul8_1_8_reg_2537 <= grp_fu_592_p_dout0;
        mul8_8_reg_2522 <= grp_fu_588_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        mul8_1_8_reg_2537_pp0_iter1_reg <= mul8_1_8_reg_2537;
        mul8_8_reg_2522_pp0_iter1_reg <= mul8_8_reg_2522;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul8_1_9_reg_2592 <= grp_fu_592_p_dout0;
        mul8_9_reg_2582 <= grp_fu_588_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul8_1_9_reg_2592_pp0_iter2_reg <= mul8_1_9_reg_2592;
        mul8_1_9_reg_2592_pp0_iter3_reg <= mul8_1_9_reg_2592_pp0_iter2_reg;
        mul8_9_reg_2582_pp0_iter2_reg <= mul8_9_reg_2582;
        mul8_9_reg_2582_pp0_iter3_reg <= mul8_9_reg_2582_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul8_1_reg_2057 <= grp_fu_592_p_dout0;
        mul8_reg_2042 <= grp_fu_588_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul8_2_10_reg_2652 <= grp_fu_588_p_dout0;
        mul8_3_10_reg_2657 <= grp_fu_592_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul8_2_10_reg_2652_pp0_iter2_reg <= mul8_2_10_reg_2652;
        mul8_2_10_reg_2652_pp0_iter3_reg <= mul8_2_10_reg_2652_pp0_iter2_reg;
        mul8_3_10_reg_2657_pp0_iter2_reg <= mul8_3_10_reg_2657;
        mul8_3_10_reg_2657_pp0_iter3_reg <= mul8_3_10_reg_2657_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul8_2_11_reg_2672 <= grp_fu_588_p_dout0;
        mul8_3_11_reg_2677 <= grp_fu_592_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul8_2_11_reg_2672_pp0_iter2_reg <= mul8_2_11_reg_2672;
        mul8_2_11_reg_2672_pp0_iter3_reg <= mul8_2_11_reg_2672_pp0_iter2_reg;
        mul8_3_11_reg_2677_pp0_iter2_reg <= mul8_3_11_reg_2677;
        mul8_3_11_reg_2677_pp0_iter3_reg <= mul8_3_11_reg_2677_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        mul8_2_1_reg_2132 <= grp_fu_588_p_dout0;
        mul8_3_1_reg_2147 <= grp_fu_592_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        mul8_2_2_reg_2192 <= grp_fu_588_p_dout0;
        mul8_3_2_reg_2207 <= grp_fu_592_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        mul8_2_3_reg_2252 <= grp_fu_588_p_dout0;
        mul8_3_3_reg_2267 <= grp_fu_592_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        mul8_2_4_reg_2312 <= grp_fu_588_p_dout0;
        mul8_3_4_reg_2327 <= grp_fu_592_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        mul8_2_5_reg_2372 <= grp_fu_588_p_dout0;
        mul8_3_5_reg_2387 <= grp_fu_592_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        mul8_2_5_reg_2372_pp0_iter1_reg <= mul8_2_5_reg_2372;
        mul8_3_5_reg_2387_pp0_iter1_reg <= mul8_3_5_reg_2387;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        mul8_2_6_reg_2432 <= grp_fu_588_p_dout0;
        mul8_3_6_reg_2447 <= grp_fu_592_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        mul8_2_6_reg_2432_pp0_iter1_reg <= mul8_2_6_reg_2432;
        mul8_3_6_reg_2447_pp0_iter1_reg <= mul8_3_6_reg_2447;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        mul8_2_7_reg_2492 <= grp_fu_588_p_dout0;
        mul8_3_7_reg_2507 <= grp_fu_592_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        mul8_2_7_reg_2492_pp0_iter1_reg <= mul8_2_7_reg_2492;
        mul8_3_7_reg_2507_pp0_iter1_reg <= mul8_3_7_reg_2507;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul8_2_8_reg_2552 <= grp_fu_588_p_dout0;
        mul8_3_8_reg_2567 <= grp_fu_592_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul8_2_9_reg_2602 <= grp_fu_588_p_dout0;
        mul8_3_9_reg_2612 <= grp_fu_592_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul8_2_9_reg_2602_pp0_iter2_reg <= mul8_2_9_reg_2602;
        mul8_2_9_reg_2602_pp0_iter3_reg <= mul8_2_9_reg_2602_pp0_iter2_reg;
        mul8_3_9_reg_2612_pp0_iter2_reg <= mul8_3_9_reg_2612;
        mul8_3_9_reg_2612_pp0_iter3_reg <= mul8_3_9_reg_2612_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        mul8_2_reg_2072 <= grp_fu_588_p_dout0;
        mul8_3_reg_2087 <= grp_fu_592_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul8_2_s_reg_2632 <= grp_fu_588_p_dout0;
        mul8_3_s_reg_2637 <= grp_fu_592_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul8_2_s_reg_2632_pp0_iter2_reg <= mul8_2_s_reg_2632;
        mul8_2_s_reg_2632_pp0_iter3_reg <= mul8_2_s_reg_2632_pp0_iter2_reg;
        mul8_3_s_reg_2637_pp0_iter2_reg <= mul8_3_s_reg_2637;
        mul8_3_s_reg_2637_pp0_iter3_reg <= mul8_3_s_reg_2637_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_756 <= weights1_q1;
        reg_760 <= weights1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_764 <= grp_fu_580_p_dout0;
        reg_769 <= grp_fu_584_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_774 <= grp_fu_580_p_dout0;
        reg_779 <= grp_fu_584_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_784 <= grp_fu_580_p_dout0;
        reg_789 <= grp_fu_584_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_794 <= grp_fu_580_p_dout0;
        reg_799 <= grp_fu_584_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_804 <= grp_fu_580_p_dout0;
        reg_809 <= grp_fu_584_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_814 <= grp_fu_580_p_dout0;
        reg_819 <= grp_fu_584_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_824 <= grp_fu_580_p_dout0;
        reg_830 <= grp_fu_584_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_836 <= grp_fu_580_p_dout0;
        reg_841 <= grp_fu_584_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp_16_reg_2682 <= {{j_1_reg_1826_pp0_iter4_reg[5:2]}};
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            activations_address0_local = zext_ln34_2_fu_1736_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            activations_address0_local = zext_ln34_fu_1703_p1;
        end else begin
            activations_address0_local = 'bx;
        end
    end else begin
        activations_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            activations_address1_local = zext_ln34_1_fu_1724_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            activations_address1_local = zext_ln33_fu_1682_p1;
        end else begin
            activations_address1_local = 'bx;
        end
    end else begin
        activations_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        activations_ce0_local = 1'b1;
    end else begin
        activations_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        activations_ce1_local = 1'b1;
    end else begin
        activations_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        activations_we0_local = 1'b1;
    end else begin
        activations_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        activations_we1_local = 1'b1;
    end else begin
        activations_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_14_reg_1834 == 1'd1) & (1'b0 == ap_block_pp0_stage25_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        ap_condition_exit_pp0_iter0_stage25 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage25 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (tmp_14_reg_1834_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_condition_exit_pp0_iter3_stage11 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage11 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to4 = 1'b1;
    end else begin
        ap_idle_pp0_1to4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage25_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_j_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_j_1 = j_fu_190;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        grp_fu_738_p0 = reg_836;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        grp_fu_738_p0 = reg_824;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        grp_fu_738_p0 = reg_814;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        grp_fu_738_p0 = reg_804;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        grp_fu_738_p0 = reg_794;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        grp_fu_738_p0 = reg_784;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)))) begin
        grp_fu_738_p0 = reg_774;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        grp_fu_738_p0 = reg_764;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_738_p0 = mul8_2_reg_2072;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_738_p0 = mul8_reg_2042;
    end else begin
        grp_fu_738_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_738_p1 = mul8_2_11_reg_2672_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_738_p1 = mul8_12_reg_2662_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_738_p1 = mul8_2_10_reg_2652_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_738_p1 = mul8_11_reg_2642_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_738_p1 = mul8_2_s_reg_2632_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_738_p1 = mul8_10_reg_2622_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_738_p1 = mul8_2_9_reg_2602_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_738_p1 = mul8_9_reg_2582_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_738_p1 = mul8_2_8_reg_2552_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_738_p1 = mul8_8_reg_2522_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_738_p1 = mul8_2_7_reg_2492_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_738_p1 = mul8_7_reg_2462_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_738_p1 = mul8_2_6_reg_2432_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_738_p1 = mul8_6_reg_2402_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_738_p1 = mul8_2_5_reg_2372_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_738_p1 = mul8_5_reg_2342_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_738_p1 = mul8_2_4_reg_2312;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_738_p1 = mul8_4_reg_2282;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_738_p1 = mul8_2_3_reg_2252;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_738_p1 = mul8_14_reg_2222;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_738_p1 = mul8_2_2_reg_2192;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_738_p1 = mul8_13_reg_2162;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_738_p1 = mul8_2_1_reg_2132;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_738_p1 = mul8_s_reg_2102;
    end else if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_738_p1 = 64'd0;
    end else begin
        grp_fu_738_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        grp_fu_743_p0 = reg_841;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        grp_fu_743_p0 = reg_830;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        grp_fu_743_p0 = reg_819;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        grp_fu_743_p0 = reg_809;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        grp_fu_743_p0 = reg_799;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        grp_fu_743_p0 = reg_789;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)))) begin
        grp_fu_743_p0 = reg_779;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        grp_fu_743_p0 = reg_769;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_743_p0 = mul8_3_reg_2087;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_743_p0 = mul8_1_reg_2057;
    end else begin
        grp_fu_743_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_743_p1 = mul8_3_11_reg_2677_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_743_p1 = mul8_1_11_reg_2667_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_743_p1 = mul8_3_10_reg_2657_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_743_p1 = mul8_1_10_reg_2647_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_743_p1 = mul8_3_s_reg_2637_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_743_p1 = mul8_1_s_reg_2627_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_743_p1 = mul8_3_9_reg_2612_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_743_p1 = mul8_1_9_reg_2592_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_743_p1 = mul8_3_8_reg_2567_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_743_p1 = mul8_1_8_reg_2537_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_743_p1 = mul8_3_7_reg_2507_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_743_p1 = mul8_1_7_reg_2477_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_743_p1 = mul8_3_6_reg_2447_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_743_p1 = mul8_1_6_reg_2417_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_743_p1 = mul8_3_5_reg_2387_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_743_p1 = mul8_1_5_reg_2357_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_743_p1 = mul8_3_4_reg_2327;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_743_p1 = mul8_1_4_reg_2297;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_743_p1 = mul8_3_3_reg_2267;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_743_p1 = mul8_1_3_reg_2237;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_743_p1 = mul8_3_2_reg_2207;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_743_p1 = mul8_1_2_reg_2177;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_743_p1 = mul8_3_1_reg_2147;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_743_p1 = mul8_1_1_reg_2117;
    end else if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_743_p1 = 64'd0;
    end else begin
        grp_fu_743_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_748_p0 = bitcast_ln36_38_fu_1672_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_748_p0 = bitcast_ln36_12_fu_1662_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_748_p0 = bitcast_ln36_37_fu_1632_p1;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_748_p0 = bitcast_ln36_11_fu_1592_p1;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_748_p0 = bitcast_ln36_36_fu_1562_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_748_p0 = bitcast_ln36_10_fu_1532_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_748_p0 = bitcast_ln36_35_fu_1502_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_748_p0 = bitcast_ln36_9_fu_1472_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_748_p0 = bitcast_ln36_34_fu_1442_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_748_p0 = bitcast_ln36_8_fu_1412_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_748_p0 = bitcast_ln36_33_fu_1382_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_748_p0 = bitcast_ln36_7_fu_1352_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_748_p0 = bitcast_ln36_32_fu_1322_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_748_p0 = bitcast_ln36_6_fu_1292_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_748_p0 = bitcast_ln36_31_fu_1262_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_748_p0 = bitcast_ln36_5_fu_1232_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_748_p0 = bitcast_ln36_30_fu_1202_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_748_p0 = bitcast_ln36_4_fu_1172_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_748_p0 = bitcast_ln36_29_fu_1142_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_748_p0 = bitcast_ln36_3_fu_1112_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_748_p0 = bitcast_ln36_28_fu_1082_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_748_p0 = bitcast_ln36_2_fu_1050_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_748_p0 = bitcast_ln36_27_fu_1020_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_748_p0 = bitcast_ln36_1_fu_988_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_748_p0 = bitcast_ln36_26_fu_958_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_748_p0 = bitcast_ln36_fu_926_p1;
    end else begin
        grp_fu_748_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_748_p1 = empty;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)))) begin
        grp_fu_748_p1 = empty_30;
    end else if ((((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        grp_fu_748_p1 = empty_29;
    end else if ((((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)))) begin
        grp_fu_748_p1 = empty_28;
    end else if ((((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)))) begin
        grp_fu_748_p1 = empty_27;
    end else if ((((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        grp_fu_748_p1 = empty_26;
    end else if ((((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        grp_fu_748_p1 = empty_25;
    end else if ((((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        grp_fu_748_p1 = empty_24;
    end else if ((((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        grp_fu_748_p1 = empty_23;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_748_p1 = empty_22;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_748_p1 = empty_21;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_748_p1 = empty_20;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_748_p1 = empty_19;
    end else begin
        grp_fu_748_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_752_p0 = bitcast_ln36_51_fu_1677_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_752_p0 = bitcast_ln36_25_fu_1667_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_752_p0 = bitcast_ln36_50_fu_1647_p1;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_752_p0 = bitcast_ln36_24_fu_1607_p1;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_752_p0 = bitcast_ln36_49_fu_1577_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_752_p0 = bitcast_ln36_23_fu_1547_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_752_p0 = bitcast_ln36_48_fu_1517_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_752_p0 = bitcast_ln36_22_fu_1487_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_752_p0 = bitcast_ln36_47_fu_1457_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_752_p0 = bitcast_ln36_21_fu_1427_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_752_p0 = bitcast_ln36_46_fu_1397_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_752_p0 = bitcast_ln36_20_fu_1367_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_752_p0 = bitcast_ln36_45_fu_1337_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_752_p0 = bitcast_ln36_19_fu_1307_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_752_p0 = bitcast_ln36_44_fu_1277_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_752_p0 = bitcast_ln36_18_fu_1247_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_752_p0 = bitcast_ln36_43_fu_1217_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_752_p0 = bitcast_ln36_17_fu_1187_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_752_p0 = bitcast_ln36_42_fu_1157_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_752_p0 = bitcast_ln36_16_fu_1127_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_752_p0 = bitcast_ln36_41_fu_1097_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_752_p0 = bitcast_ln36_15_fu_1067_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_752_p0 = bitcast_ln36_40_fu_1035_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_752_p0 = bitcast_ln36_14_fu_1005_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_752_p0 = bitcast_ln36_39_fu_973_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_752_p0 = bitcast_ln36_13_fu_943_p1;
    end else begin
        grp_fu_752_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_752_p1 = empty;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)))) begin
        grp_fu_752_p1 = empty_30;
    end else if ((((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        grp_fu_752_p1 = empty_29;
    end else if ((((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)))) begin
        grp_fu_752_p1 = empty_28;
    end else if ((((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)))) begin
        grp_fu_752_p1 = empty_27;
    end else if ((((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        grp_fu_752_p1 = empty_26;
    end else if ((((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        grp_fu_752_p1 = empty_25;
    end else if ((((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        grp_fu_752_p1 = empty_24;
    end else if ((((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        grp_fu_752_p1 = empty_23;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_752_p1 = empty_22;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_752_p1 = empty_21;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_752_p1 = empty_20;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_752_p1 = empty_19;
    end else begin
        grp_fu_752_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_address0_local = zext_ln36_51_fu_1657_p1;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        weights1_address0_local = zext_ln36_25_fu_1617_p1;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        weights1_address0_local = zext_ln36_50_fu_1587_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights1_address0_local = zext_ln36_24_fu_1557_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights1_address0_local = zext_ln36_49_fu_1527_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights1_address0_local = zext_ln36_23_fu_1497_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights1_address0_local = zext_ln36_48_fu_1467_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights1_address0_local = zext_ln36_22_fu_1437_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights1_address0_local = zext_ln36_47_fu_1407_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights1_address0_local = zext_ln36_21_fu_1377_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights1_address0_local = zext_ln36_46_fu_1347_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights1_address0_local = zext_ln36_20_fu_1317_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights1_address0_local = zext_ln36_45_fu_1287_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights1_address0_local = zext_ln36_19_fu_1257_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights1_address0_local = zext_ln36_44_fu_1227_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights1_address0_local = zext_ln36_18_fu_1197_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights1_address0_local = zext_ln36_43_fu_1167_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights1_address0_local = zext_ln36_17_fu_1137_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights1_address0_local = zext_ln36_42_fu_1107_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights1_address0_local = zext_ln36_16_fu_1077_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights1_address0_local = zext_ln36_41_fu_1045_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights1_address0_local = zext_ln36_15_fu_1015_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_address0_local = zext_ln36_40_fu_983_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_address0_local = zext_ln36_14_fu_953_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_address0_local = zext_ln36_39_fu_921_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_address0_local = zext_ln36_13_fu_901_p1;
    end else begin
        weights1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_address1_local = zext_ln36_38_fu_1642_p1;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        weights1_address1_local = zext_ln36_12_fu_1602_p1;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        weights1_address1_local = zext_ln36_37_fu_1572_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights1_address1_local = zext_ln36_11_fu_1542_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights1_address1_local = zext_ln36_36_fu_1512_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights1_address1_local = zext_ln36_10_fu_1482_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights1_address1_local = zext_ln36_35_fu_1452_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights1_address1_local = zext_ln36_9_fu_1422_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights1_address1_local = zext_ln36_34_fu_1392_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights1_address1_local = zext_ln36_8_fu_1362_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights1_address1_local = zext_ln36_33_fu_1332_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights1_address1_local = zext_ln36_7_fu_1302_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights1_address1_local = zext_ln36_32_fu_1272_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights1_address1_local = zext_ln36_6_fu_1242_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights1_address1_local = zext_ln36_31_fu_1212_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights1_address1_local = zext_ln36_5_fu_1182_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights1_address1_local = zext_ln36_30_fu_1152_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights1_address1_local = zext_ln36_4_fu_1122_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights1_address1_local = zext_ln36_29_fu_1092_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights1_address1_local = zext_ln36_3_fu_1062_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights1_address1_local = zext_ln36_28_fu_1030_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights1_address1_local = zext_ln36_2_fu_1000_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_address1_local = zext_ln36_27_fu_968_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_address1_local = zext_ln36_1_fu_938_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_address1_local = zext_ln36_26_fu_911_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_address1_local = zext_ln36_fu_892_p1;
    end else begin
        weights1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_ce0_local = 1'b1;
    end else begin
        weights1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_ce1_local = 1'b1;
    end else begin
        weights1_ce1_local = 1'b0;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter3_stage11) & (ap_idle_pp0_0to2 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        ap_ST_fsm_pp0_stage16 : begin
            if ((1'b0 == ap_block_pp0_stage16_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end
        end
        ap_ST_fsm_pp0_stage17 : begin
            if ((1'b0 == ap_block_pp0_stage17_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end
        end
        ap_ST_fsm_pp0_stage18 : begin
            if ((1'b0 == ap_block_pp0_stage18_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end
        end
        ap_ST_fsm_pp0_stage19 : begin
            if ((1'b0 == ap_block_pp0_stage19_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end
        end
        ap_ST_fsm_pp0_stage20 : begin
            if ((1'b0 == ap_block_pp0_stage20_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end
        end
        ap_ST_fsm_pp0_stage21 : begin
            if ((1'b0 == ap_block_pp0_stage21_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end
        end
        ap_ST_fsm_pp0_stage22 : begin
            if ((1'b0 == ap_block_pp0_stage22_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end
        end
        ap_ST_fsm_pp0_stage23 : begin
            if ((1'b0 == ap_block_pp0_stage23_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end
        end
        ap_ST_fsm_pp0_stage24 : begin
            if ((1'b0 == ap_block_pp0_stage24_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end
        end
        ap_ST_fsm_pp0_stage25 : begin
            if ((1'b0 == ap_block_pp0_stage25_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign activations_address0 = activations_address0_local;
assign activations_address1 = activations_address1_local;
assign activations_ce0 = activations_ce0_local;
assign activations_ce1 = activations_ce1_local;
assign activations_d0 = reg_830;
assign activations_d1 = reg_824;
assign activations_we0 = activations_we0_local;
assign activations_we1 = activations_we1_local;
assign add_ln33_fu_1622_p2 = (j_1_reg_1826 + 7'd4);
assign add_ln36_10_fu_1010_p2 = (mul_ln36_reg_1838 + 10'd15);
assign add_ln36_11_fu_1072_p2 = (mul_ln36_reg_1838 + 10'd16);
assign add_ln36_12_fu_1132_p2 = (mul_ln36_reg_1838 + 10'd17);
assign add_ln36_13_fu_1192_p2 = (mul_ln36_reg_1838 + 10'd18);
assign add_ln36_14_fu_1252_p2 = (mul_ln36_reg_1838 + 10'd19);
assign add_ln36_15_fu_1312_p2 = (mul_ln36_reg_1838 + 10'd20);
assign add_ln36_16_fu_1372_p2 = (mul_ln36_reg_1838 + 10'd21);
assign add_ln36_17_fu_1432_p2 = (mul_ln36_reg_1838 + 10'd22);
assign add_ln36_18_fu_1492_p2 = (mul_ln36_reg_1838 + 10'd23);
assign add_ln36_19_fu_1552_p2 = (mul_ln36_reg_1838 + 10'd24);
assign add_ln36_1_fu_1177_p2 = (mul_ln36_reg_1838 + 10'd5);
assign add_ln36_20_fu_1612_p2 = (mul_ln36_reg_1838 + 10'd25);
assign add_ln36_21_fu_963_p2 = (mul_ln36_reg_1838 + 10'd27);
assign add_ln36_22_fu_1025_p2 = (mul_ln36_reg_1838 + 10'd28);
assign add_ln36_23_fu_1087_p2 = (mul_ln36_reg_1838 + 10'd29);
assign add_ln36_24_fu_1147_p2 = (mul_ln36_reg_1838 + 10'd30);
assign add_ln36_25_fu_1207_p2 = (mul_ln36_reg_1838 + 10'd31);
assign add_ln36_26_fu_1267_p2 = (mul_ln36_reg_1838 + 10'd32);
assign add_ln36_27_fu_1327_p2 = (mul_ln36_reg_1838 + 10'd33);
assign add_ln36_28_fu_1387_p2 = (mul_ln36_reg_1838 + 10'd34);
assign add_ln36_29_fu_1447_p2 = (mul_ln36_reg_1838 + 10'd35);
assign add_ln36_2_fu_1237_p2 = (mul_ln36_reg_1838 + 10'd6);
assign add_ln36_30_fu_1507_p2 = (mul_ln36_reg_1838 + 10'd36);
assign add_ln36_31_fu_1567_p2 = (mul_ln36_reg_1838 + 10'd37);
assign add_ln36_32_fu_1637_p2 = (mul_ln36_reg_1838 + 10'd38);
assign add_ln36_33_fu_978_p2 = (mul_ln36_reg_1838 + 10'd40);
assign add_ln36_34_fu_1040_p2 = (mul_ln36_reg_1838 + 10'd41);
assign add_ln36_35_fu_1102_p2 = (mul_ln36_reg_1838 + 10'd42);
assign add_ln36_36_fu_1162_p2 = (mul_ln36_reg_1838 + 10'd43);
assign add_ln36_37_fu_1222_p2 = (mul_ln36_reg_1838 + 10'd44);
assign add_ln36_38_fu_1282_p2 = (mul_ln36_reg_1838 + 10'd45);
assign add_ln36_39_fu_1342_p2 = (mul_ln36_reg_1838 + 10'd46);
assign add_ln36_3_fu_1297_p2 = (mul_ln36_reg_1838 + 10'd7);
assign add_ln36_40_fu_1402_p2 = (mul_ln36_reg_1838 + 10'd47);
assign add_ln36_41_fu_1462_p2 = (mul_ln36_reg_1838 + 10'd48);
assign add_ln36_42_fu_1522_p2 = (mul_ln36_reg_1838 + 10'd49);
assign add_ln36_43_fu_1582_p2 = (mul_ln36_reg_1838 + 10'd50);
assign add_ln36_44_fu_1652_p2 = (mul_ln36_reg_1838 + 10'd51);
assign add_ln36_4_fu_1357_p2 = (mul_ln36_reg_1838 + 10'd8);
assign add_ln36_5_fu_1417_p2 = (mul_ln36_reg_1838 + 10'd9);
assign add_ln36_6_fu_1477_p2 = (mul_ln36_reg_1838 + 10'd10);
assign add_ln36_7_fu_1537_p2 = (mul_ln36_reg_1838 + 10'd11);
assign add_ln36_8_fu_1597_p2 = (mul_ln36_reg_1838 + 10'd12);
assign add_ln36_9_fu_948_p2 = (mul_ln36_reg_1838 + 10'd14);
assign add_ln36_fu_1117_p2 = (mul_ln36_reg_1838 + 10'd4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_pp0_stage18 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_pp0_stage19 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage20 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_pp0_stage21 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_pp0_stage22 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_pp0_stage23 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_pp0_stage24 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_pp0_stage25 = ap_CS_fsm[32'd25];
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
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage25;
assign ap_ready = ap_ready_sig;
assign bitcast_ln36_10_fu_1532_p1 = reg_756;
assign bitcast_ln36_11_fu_1592_p1 = reg_756;
assign bitcast_ln36_12_fu_1662_p1 = reg_756;
assign bitcast_ln36_13_fu_943_p1 = reg_760;
assign bitcast_ln36_14_fu_1005_p1 = reg_760;
assign bitcast_ln36_15_fu_1067_p1 = reg_760;
assign bitcast_ln36_16_fu_1127_p1 = reg_760;
assign bitcast_ln36_17_fu_1187_p1 = reg_760;
assign bitcast_ln36_18_fu_1247_p1 = reg_760;
assign bitcast_ln36_19_fu_1307_p1 = reg_760;
assign bitcast_ln36_1_fu_988_p1 = reg_756;
assign bitcast_ln36_20_fu_1367_p1 = reg_760;
assign bitcast_ln36_21_fu_1427_p1 = reg_760;
assign bitcast_ln36_22_fu_1487_p1 = reg_760;
assign bitcast_ln36_23_fu_1547_p1 = reg_760;
assign bitcast_ln36_24_fu_1607_p1 = reg_760;
assign bitcast_ln36_25_fu_1667_p1 = reg_760;
assign bitcast_ln36_26_fu_958_p1 = reg_756;
assign bitcast_ln36_27_fu_1020_p1 = reg_756;
assign bitcast_ln36_28_fu_1082_p1 = reg_756;
assign bitcast_ln36_29_fu_1142_p1 = reg_756;
assign bitcast_ln36_2_fu_1050_p1 = reg_756;
assign bitcast_ln36_30_fu_1202_p1 = reg_756;
assign bitcast_ln36_31_fu_1262_p1 = reg_756;
assign bitcast_ln36_32_fu_1322_p1 = reg_756;
assign bitcast_ln36_33_fu_1382_p1 = reg_756;
assign bitcast_ln36_34_fu_1442_p1 = reg_756;
assign bitcast_ln36_35_fu_1502_p1 = reg_756;
assign bitcast_ln36_36_fu_1562_p1 = reg_756;
assign bitcast_ln36_37_fu_1632_p1 = reg_756;
assign bitcast_ln36_38_fu_1672_p1 = reg_756;
assign bitcast_ln36_39_fu_973_p1 = reg_760;
assign bitcast_ln36_3_fu_1112_p1 = reg_756;
assign bitcast_ln36_40_fu_1035_p1 = reg_760;
assign bitcast_ln36_41_fu_1097_p1 = reg_760;
assign bitcast_ln36_42_fu_1157_p1 = reg_760;
assign bitcast_ln36_43_fu_1217_p1 = reg_760;
assign bitcast_ln36_44_fu_1277_p1 = reg_760;
assign bitcast_ln36_45_fu_1337_p1 = reg_760;
assign bitcast_ln36_46_fu_1397_p1 = reg_760;
assign bitcast_ln36_47_fu_1457_p1 = reg_760;
assign bitcast_ln36_48_fu_1517_p1 = reg_760;
assign bitcast_ln36_49_fu_1577_p1 = reg_760;
assign bitcast_ln36_4_fu_1172_p1 = reg_756;
assign bitcast_ln36_50_fu_1647_p1 = reg_760;
assign bitcast_ln36_51_fu_1677_p1 = reg_760;
assign bitcast_ln36_5_fu_1232_p1 = reg_756;
assign bitcast_ln36_6_fu_1292_p1 = reg_756;
assign bitcast_ln36_7_fu_1352_p1 = reg_756;
assign bitcast_ln36_8_fu_1412_p1 = reg_756;
assign bitcast_ln36_9_fu_1472_p1 = reg_756;
assign bitcast_ln36_fu_926_p1 = reg_756;
assign empty_42_fu_896_p2 = (mul_ln36_reg_1838 + 10'd13);
assign empty_43_fu_906_p2 = (mul_ln36_reg_1838 + 10'd26);
assign empty_44_fu_916_p2 = (mul_ln36_reg_1838 + 10'd39);
assign grp_fu_580_p_ce = 1'b1;
assign grp_fu_580_p_din0 = grp_fu_738_p0;
assign grp_fu_580_p_din1 = grp_fu_738_p1;
assign grp_fu_580_p_opcode = 2'd0;
assign grp_fu_584_p_ce = 1'b1;
assign grp_fu_584_p_din0 = grp_fu_743_p0;
assign grp_fu_584_p_din1 = grp_fu_743_p1;
assign grp_fu_584_p_opcode = 2'd0;
assign grp_fu_588_p_ce = 1'b1;
assign grp_fu_588_p_din0 = grp_fu_748_p0;
assign grp_fu_588_p_din1 = grp_fu_748_p1;
assign grp_fu_592_p_ce = 1'b1;
assign grp_fu_592_p_din0 = grp_fu_752_p0;
assign grp_fu_592_p_din1 = grp_fu_752_p1;
assign mul_ln36_fu_866_p0 = mul_ln36_fu_866_p00;
assign mul_ln36_fu_866_p00 = ap_sig_allocacmp_j_1;
assign mul_ln36_fu_866_p1 = 10'd13;
assign or_ln33_1_fu_1717_p3 = {{tmp_16_reg_2682}, {2'd2}};
assign or_ln33_2_fu_1729_p3 = {{tmp_16_reg_2682}, {2'd3}};
assign or_ln36_1_fu_993_p3 = {{tmp_s_reg_1896}, {2'd2}};
assign or_ln36_2_fu_1055_p3 = {{tmp_s_reg_1896}, {2'd3}};
assign or_ln6_fu_1695_p3 = {{tmp_15_fu_1686_p4}, {1'd1}};
assign or_ln_fu_931_p3 = {{tmp_reg_1891}, {1'd1}};
assign tmp_15_fu_1686_p4 = {{j_1_reg_1826_pp0_iter4_reg[5:1]}};
assign weights1_address0 = weights1_address0_local;
assign weights1_address1 = weights1_address1_local;
assign weights1_ce0 = weights1_ce0_local;
assign weights1_ce1 = weights1_ce1_local;
assign zext_ln33_fu_1682_p1 = j_1_reg_1826_pp0_iter4_reg;
assign zext_ln34_1_fu_1724_p1 = or_ln33_1_fu_1717_p3;
assign zext_ln34_2_fu_1736_p1 = or_ln33_2_fu_1729_p3;
assign zext_ln34_fu_1703_p1 = or_ln6_fu_1695_p3;
assign zext_ln36_10_fu_1482_p1 = add_ln36_6_fu_1477_p2;
assign zext_ln36_11_fu_1542_p1 = add_ln36_7_fu_1537_p2;
assign zext_ln36_12_fu_1602_p1 = add_ln36_8_fu_1597_p2;
assign zext_ln36_13_fu_901_p1 = empty_42_fu_896_p2;
assign zext_ln36_14_fu_953_p1 = add_ln36_9_fu_948_p2;
assign zext_ln36_15_fu_1015_p1 = add_ln36_10_fu_1010_p2;
assign zext_ln36_16_fu_1077_p1 = add_ln36_11_fu_1072_p2;
assign zext_ln36_17_fu_1137_p1 = add_ln36_12_fu_1132_p2;
assign zext_ln36_18_fu_1197_p1 = add_ln36_13_fu_1192_p2;
assign zext_ln36_19_fu_1257_p1 = add_ln36_14_fu_1252_p2;
assign zext_ln36_1_fu_938_p1 = or_ln_fu_931_p3;
assign zext_ln36_20_fu_1317_p1 = add_ln36_15_fu_1312_p2;
assign zext_ln36_21_fu_1377_p1 = add_ln36_16_fu_1372_p2;
assign zext_ln36_22_fu_1437_p1 = add_ln36_17_fu_1432_p2;
assign zext_ln36_23_fu_1497_p1 = add_ln36_18_fu_1492_p2;
assign zext_ln36_24_fu_1557_p1 = add_ln36_19_fu_1552_p2;
assign zext_ln36_25_fu_1617_p1 = add_ln36_20_fu_1612_p2;
assign zext_ln36_26_fu_911_p1 = empty_43_fu_906_p2;
assign zext_ln36_27_fu_968_p1 = add_ln36_21_fu_963_p2;
assign zext_ln36_28_fu_1030_p1 = add_ln36_22_fu_1025_p2;
assign zext_ln36_29_fu_1092_p1 = add_ln36_23_fu_1087_p2;
assign zext_ln36_2_fu_1000_p1 = or_ln36_1_fu_993_p3;
assign zext_ln36_30_fu_1152_p1 = add_ln36_24_fu_1147_p2;
assign zext_ln36_31_fu_1212_p1 = add_ln36_25_fu_1207_p2;
assign zext_ln36_32_fu_1272_p1 = add_ln36_26_fu_1267_p2;
assign zext_ln36_33_fu_1332_p1 = add_ln36_27_fu_1327_p2;
assign zext_ln36_34_fu_1392_p1 = add_ln36_28_fu_1387_p2;
assign zext_ln36_35_fu_1452_p1 = add_ln36_29_fu_1447_p2;
assign zext_ln36_36_fu_1512_p1 = add_ln36_30_fu_1507_p2;
assign zext_ln36_37_fu_1572_p1 = add_ln36_31_fu_1567_p2;
assign zext_ln36_38_fu_1642_p1 = add_ln36_32_fu_1637_p2;
assign zext_ln36_39_fu_921_p1 = empty_44_fu_916_p2;
assign zext_ln36_3_fu_1062_p1 = or_ln36_2_fu_1055_p3;
assign zext_ln36_40_fu_983_p1 = add_ln36_33_fu_978_p2;
assign zext_ln36_41_fu_1045_p1 = add_ln36_34_fu_1040_p2;
assign zext_ln36_42_fu_1107_p1 = add_ln36_35_fu_1102_p2;
assign zext_ln36_43_fu_1167_p1 = add_ln36_36_fu_1162_p2;
assign zext_ln36_44_fu_1227_p1 = add_ln36_37_fu_1222_p2;
assign zext_ln36_45_fu_1287_p1 = add_ln36_38_fu_1282_p2;
assign zext_ln36_46_fu_1347_p1 = add_ln36_39_fu_1342_p2;
assign zext_ln36_47_fu_1407_p1 = add_ln36_40_fu_1402_p2;
assign zext_ln36_48_fu_1467_p1 = add_ln36_41_fu_1462_p2;
assign zext_ln36_49_fu_1527_p1 = add_ln36_42_fu_1522_p2;
assign zext_ln36_4_fu_1122_p1 = add_ln36_fu_1117_p2;
assign zext_ln36_50_fu_1587_p1 = add_ln36_43_fu_1582_p2;
assign zext_ln36_51_fu_1657_p1 = add_ln36_44_fu_1652_p2;
assign zext_ln36_5_fu_1182_p1 = add_ln36_1_fu_1177_p2;
assign zext_ln36_6_fu_1242_p1 = add_ln36_2_fu_1237_p2;
assign zext_ln36_7_fu_1302_p1 = add_ln36_3_fu_1297_p2;
assign zext_ln36_8_fu_1362_p1 = add_ln36_4_fu_1357_p2;
assign zext_ln36_9_fu_1422_p1 = add_ln36_5_fu_1417_p2;
assign zext_ln36_fu_892_p1 = mul_ln36_reg_1838;
endmodule 