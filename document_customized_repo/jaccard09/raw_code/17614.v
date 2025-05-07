module backprop_matrix_vector_product_with_bias_input_layer_35_36_1_Pipeline_mvp_product_input_l (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,activations_1_address0,activations_1_ce0,activations_1_we0,activations_1_d0,activations_0_address0,activations_0_ce0,activations_0_we0,activations_0_d0,activations_0_address1,activations_0_ce1,activations_0_we1,activations_0_d1,weights1_0_address0,weights1_0_ce0,weights1_0_q0,weights1_0_address1,weights1_0_ce1,weights1_0_q1,tmp,weights1_1_address0,weights1_1_ce0,weights1_1_q0,weights1_1_address1,weights1_1_ce1,weights1_1_q1,tmp_1,tmp_2,tmp_3,tmp_4,tmp_5,tmp_6,tmp_7,tmp_8,tmp_9,tmp_s,tmp_10,tmp_11,grp_fu_939_p_din0,grp_fu_939_p_din1,grp_fu_939_p_opcode,grp_fu_939_p_dout0,grp_fu_939_p_ce,grp_fu_943_p_din0,grp_fu_943_p_din1,grp_fu_943_p_opcode,grp_fu_943_p_dout0,grp_fu_943_p_ce,grp_fu_947_p_din0,grp_fu_947_p_din1,grp_fu_947_p_opcode,grp_fu_947_p_dout0,grp_fu_947_p_ce,grp_fu_951_p_din0,grp_fu_951_p_din1,grp_fu_951_p_opcode,grp_fu_951_p_dout0,grp_fu_951_p_ce,grp_fu_955_p_din0,grp_fu_955_p_din1,grp_fu_955_p_dout0,grp_fu_955_p_ce,grp_fu_959_p_din0,grp_fu_959_p_din1,grp_fu_959_p_dout0,grp_fu_959_p_ce,grp_fu_963_p_din0,grp_fu_963_p_din1,grp_fu_963_p_dout0,grp_fu_963_p_ce,grp_fu_967_p_din0,grp_fu_967_p_din1,grp_fu_967_p_dout0,grp_fu_967_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 13'd1;
parameter    ap_ST_fsm_pp0_stage1 = 13'd2;
parameter    ap_ST_fsm_pp0_stage2 = 13'd4;
parameter    ap_ST_fsm_pp0_stage3 = 13'd8;
parameter    ap_ST_fsm_pp0_stage4 = 13'd16;
parameter    ap_ST_fsm_pp0_stage5 = 13'd32;
parameter    ap_ST_fsm_pp0_stage6 = 13'd64;
parameter    ap_ST_fsm_pp0_stage7 = 13'd128;
parameter    ap_ST_fsm_pp0_stage8 = 13'd256;
parameter    ap_ST_fsm_pp0_stage9 = 13'd512;
parameter    ap_ST_fsm_pp0_stage10 = 13'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 13'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 13'd4096;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] activations_1_address0;
output   activations_1_ce0;
output   activations_1_we0;
output  [63:0] activations_1_d0;
output  [4:0] activations_0_address0;
output   activations_0_ce0;
output   activations_0_we0;
output  [63:0] activations_0_d0;
output  [4:0] activations_0_address1;
output   activations_0_ce1;
output   activations_0_we1;
output  [63:0] activations_0_d1;
output  [8:0] weights1_0_address0;
output   weights1_0_ce0;
input  [63:0] weights1_0_q0;
output  [8:0] weights1_0_address1;
output   weights1_0_ce1;
input  [63:0] weights1_0_q1;
input  [63:0] tmp;
output  [8:0] weights1_1_address0;
output   weights1_1_ce0;
input  [63:0] weights1_1_q0;
output  [8:0] weights1_1_address1;
output   weights1_1_ce1;
input  [63:0] weights1_1_q1;
input  [63:0] tmp_1;
input  [63:0] tmp_2;
input  [63:0] tmp_3;
input  [63:0] tmp_4;
input  [63:0] tmp_5;
input  [63:0] tmp_6;
input  [63:0] tmp_7;
input  [63:0] tmp_8;
input  [63:0] tmp_9;
input  [63:0] tmp_s;
input  [63:0] tmp_10;
input  [63:0] tmp_11;
output  [63:0] grp_fu_939_p_din0;
output  [63:0] grp_fu_939_p_din1;
output  [0:0] grp_fu_939_p_opcode;
input  [63:0] grp_fu_939_p_dout0;
output   grp_fu_939_p_ce;
output  [63:0] grp_fu_943_p_din0;
output  [63:0] grp_fu_943_p_din1;
output  [0:0] grp_fu_943_p_opcode;
input  [63:0] grp_fu_943_p_dout0;
output   grp_fu_943_p_ce;
output  [63:0] grp_fu_947_p_din0;
output  [63:0] grp_fu_947_p_din1;
output  [0:0] grp_fu_947_p_opcode;
input  [63:0] grp_fu_947_p_dout0;
output   grp_fu_947_p_ce;
output  [63:0] grp_fu_951_p_din0;
output  [63:0] grp_fu_951_p_din1;
output  [0:0] grp_fu_951_p_opcode;
input  [63:0] grp_fu_951_p_dout0;
output   grp_fu_951_p_ce;
output  [63:0] grp_fu_955_p_din0;
output  [63:0] grp_fu_955_p_din1;
input  [63:0] grp_fu_955_p_dout0;
output   grp_fu_955_p_ce;
output  [63:0] grp_fu_959_p_din0;
output  [63:0] grp_fu_959_p_din1;
input  [63:0] grp_fu_959_p_dout0;
output   grp_fu_959_p_ce;
output  [63:0] grp_fu_963_p_din0;
output  [63:0] grp_fu_963_p_din1;
input  [63:0] grp_fu_963_p_dout0;
output   grp_fu_963_p_ce;
output  [63:0] grp_fu_967_p_din0;
output  [63:0] grp_fu_967_p_din1;
input  [63:0] grp_fu_967_p_dout0;
output   grp_fu_967_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [12:0] ap_CS_fsm;
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
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_subdone;
reg   [0:0] tmp_12_reg_1786;
reg    ap_condition_exit_pp0_iter0_stage12;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_745;
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
wire    ap_block_pp0_stage12_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] reg_749;
reg   [63:0] reg_753;
reg   [63:0] reg_757;
reg   [63:0] reg_761;
reg   [63:0] reg_767;
reg   [63:0] reg_773;
reg   [6:0] j_1_reg_1780;
reg   [0:0] tmp_12_reg_1786_pp0_iter1_reg;
reg   [0:0] tmp_12_reg_1786_pp0_iter2_reg;
reg   [0:0] tmp_12_reg_1786_pp0_iter3_reg;
reg   [0:0] tmp_12_reg_1786_pp0_iter4_reg;
reg   [0:0] tmp_12_reg_1786_pp0_iter5_reg;
reg   [0:0] tmp_12_reg_1786_pp0_iter6_reg;
reg   [0:0] tmp_12_reg_1786_pp0_iter7_reg;
wire   [4:0] lshr_ln8_fu_796_p4;
reg   [4:0] lshr_ln8_reg_1790;
reg   [4:0] lshr_ln8_reg_1790_pp0_iter1_reg;
reg   [4:0] lshr_ln8_reg_1790_pp0_iter2_reg;
reg   [4:0] lshr_ln8_reg_1790_pp0_iter3_reg;
reg   [4:0] lshr_ln8_reg_1790_pp0_iter4_reg;
reg   [4:0] lshr_ln8_reg_1790_pp0_iter5_reg;
reg   [4:0] lshr_ln8_reg_1790_pp0_iter6_reg;
reg   [4:0] lshr_ln8_reg_1790_pp0_iter7_reg;
reg   [4:0] lshr_ln8_reg_1790_pp0_iter8_reg;
wire   [8:0] mul_ln36_fu_810_p2;
reg   [8:0] mul_ln36_reg_1796;
reg   [7:0] tmp_13_reg_1813;
wire   [9:0] empty_fu_842_p2;
reg   [9:0] empty_reg_1828;
wire   [8:0] lshr_ln9_fu_848_p4;
reg   [8:0] lshr_ln9_reg_1845;
wire   [63:0] zext_ln36_20_fu_868_p1;
reg   [63:0] zext_ln36_20_reg_1860;
wire   [8:0] lshr_ln36_7_fu_898_p4;
reg   [8:0] lshr_ln36_7_reg_1880;
wire   [63:0] bitcast_ln36_fu_933_p1;
wire   [63:0] bitcast_ln36_1_fu_938_p1;
wire   [63:0] zext_ln36_1_fu_950_p1;
reg   [63:0] zext_ln36_1_reg_1910;
wire   [63:0] bitcast_ln36_13_fu_955_p1;
wire   [63:0] bitcast_ln36_26_fu_970_p1;
wire   [63:0] zext_ln36_21_fu_980_p1;
reg   [63:0] zext_ln36_21_reg_1935;
wire   [63:0] bitcast_ln36_14_fu_995_p1;
wire   [63:0] bitcast_ln36_27_fu_1020_p1;
wire   [63:0] bitcast_ln36_39_fu_1025_p1;
wire   [63:0] bitcast_ln36_40_fu_1030_p1;
wire   [63:0] bitcast_ln36_2_fu_1055_p1;
wire   [63:0] zext_ln36_2_fu_1065_p1;
reg   [63:0] zext_ln36_2_reg_1995;
wire   [63:0] bitcast_ln36_15_fu_1070_p1;
wire   [63:0] bitcast_ln36_28_fu_1085_p1;
wire   [63:0] zext_ln36_22_fu_1095_p1;
reg   [63:0] zext_ln36_22_reg_2020;
wire   [63:0] bitcast_ln36_41_fu_1100_p1;
wire   [63:0] bitcast_ln36_3_fu_1115_p1;
wire   [63:0] bitcast_ln36_16_fu_1120_p1;
wire   [63:0] bitcast_ln36_29_fu_1145_p1;
wire   [63:0] bitcast_ln36_42_fu_1150_p1;
wire   [63:0] bitcast_ln36_4_fu_1175_p1;
wire   [63:0] zext_ln36_3_fu_1185_p1;
reg   [63:0] zext_ln36_3_reg_2085;
wire   [63:0] bitcast_ln36_17_fu_1190_p1;
wire   [63:0] bitcast_ln36_30_fu_1205_p1;
wire   [63:0] zext_ln36_23_fu_1215_p1;
reg   [63:0] zext_ln36_23_reg_2110;
wire   [63:0] bitcast_ln36_43_fu_1220_p1;
wire   [63:0] bitcast_ln36_5_fu_1235_p1;
wire   [63:0] bitcast_ln36_18_fu_1240_p1;
wire   [63:0] bitcast_ln36_31_fu_1265_p1;
wire   [63:0] bitcast_ln36_44_fu_1270_p1;
reg   [63:0] mul8_reg_2170;
reg   [63:0] mul8_s_reg_2175;
wire   [63:0] bitcast_ln36_6_fu_1295_p1;
wire   [63:0] zext_ln36_4_fu_1305_p1;
reg   [63:0] zext_ln36_4_reg_2185;
reg   [63:0] mul8_1_reg_2195;
wire   [63:0] bitcast_ln36_19_fu_1310_p1;
reg   [63:0] mul8_2_reg_2210;
wire   [63:0] bitcast_ln36_32_fu_1325_p1;
wire   [63:0] zext_ln36_24_fu_1335_p1;
reg   [63:0] zext_ln36_24_reg_2220;
wire   [63:0] bitcast_ln36_45_fu_1340_p1;
wire   [63:0] bitcast_ln36_7_fu_1355_p1;
reg   [63:0] mul8_1_1_reg_2250;
wire   [63:0] bitcast_ln36_20_fu_1360_p1;
reg   [63:0] mul8_2_1_reg_2265;
wire   [63:0] bitcast_ln36_33_fu_1385_p1;
reg   [63:0] mul8_3_reg_2280;
reg   [63:0] mul8_3_1_reg_2285;
wire   [63:0] bitcast_ln36_46_fu_1390_p1;
reg   [63:0] mul8_13_reg_2300;
reg   [63:0] mul8_13_reg_2300_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_8_fu_1415_p1;
wire   [63:0] zext_ln36_5_fu_1425_p1;
reg   [63:0] zext_ln36_5_reg_2310;
reg   [63:0] mul8_1_2_reg_2320;
reg   [63:0] mul8_1_2_reg_2320_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_21_fu_1430_p1;
reg   [63:0] mul8_2_2_reg_2335;
reg   [63:0] mul8_2_2_reg_2335_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_34_fu_1445_p1;
wire   [63:0] zext_ln36_25_fu_1455_p1;
reg   [63:0] zext_ln36_25_reg_2345;
reg   [63:0] mul8_3_2_reg_2355;
reg   [63:0] mul8_3_2_reg_2355_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_47_fu_1460_p1;
reg   [63:0] mul8_14_reg_2370;
reg   [63:0] mul8_14_reg_2370_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_9_fu_1475_p1;
reg   [63:0] mul8_1_3_reg_2385;
reg   [63:0] mul8_1_3_reg_2385_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_22_fu_1480_p1;
reg   [3:0] tmp_14_reg_2400;
reg   [3:0] tmp_14_reg_2400_pp0_iter1_reg;
reg   [3:0] tmp_14_reg_2400_pp0_iter2_reg;
reg   [3:0] tmp_14_reg_2400_pp0_iter3_reg;
reg   [3:0] tmp_14_reg_2400_pp0_iter4_reg;
reg   [3:0] tmp_14_reg_2400_pp0_iter5_reg;
reg   [3:0] tmp_14_reg_2400_pp0_iter6_reg;
reg   [3:0] tmp_14_reg_2400_pp0_iter7_reg;
reg   [63:0] mul8_2_3_reg_2405;
reg   [63:0] mul8_2_3_reg_2405_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_35_fu_1514_p1;
reg   [63:0] mul8_3_3_reg_2420;
reg   [63:0] mul8_3_3_reg_2420_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_48_fu_1519_p1;
reg   [63:0] mul8_4_reg_2435;
reg   [63:0] mul8_4_reg_2435_pp0_iter2_reg;
reg   [63:0] mul8_4_reg_2435_pp0_iter3_reg;
wire   [63:0] bitcast_ln36_10_fu_1554_p1;
reg   [63:0] mul8_1_4_reg_2450;
reg   [63:0] mul8_1_4_reg_2450_pp0_iter2_reg;
reg   [63:0] mul8_1_4_reg_2450_pp0_iter3_reg;
wire   [63:0] bitcast_ln36_23_fu_1569_p1;
reg   [63:0] mul8_2_4_reg_2465;
reg   [63:0] mul8_2_4_reg_2465_pp0_iter2_reg;
reg   [63:0] mul8_2_4_reg_2465_pp0_iter3_reg;
wire   [63:0] bitcast_ln36_36_fu_1584_p1;
reg   [63:0] mul8_3_4_reg_2480;
reg   [63:0] mul8_3_4_reg_2480_pp0_iter2_reg;
reg   [63:0] mul8_3_4_reg_2480_pp0_iter3_reg;
wire   [63:0] bitcast_ln36_49_fu_1599_p1;
reg   [63:0] mul8_5_reg_2495;
reg   [63:0] mul8_5_reg_2495_pp0_iter2_reg;
reg   [63:0] mul8_5_reg_2495_pp0_iter3_reg;
wire   [63:0] bitcast_ln36_11_fu_1614_p1;
reg   [63:0] mul8_1_5_reg_2505;
reg   [63:0] mul8_1_5_reg_2505_pp0_iter2_reg;
reg   [63:0] mul8_1_5_reg_2505_pp0_iter3_reg;
wire   [63:0] bitcast_ln36_24_fu_1619_p1;
reg   [63:0] mul8_2_5_reg_2515;
reg   [63:0] mul8_2_5_reg_2515_pp0_iter2_reg;
reg   [63:0] mul8_2_5_reg_2515_pp0_iter3_reg;
wire   [63:0] bitcast_ln36_37_fu_1624_p1;
reg   [63:0] mul8_3_5_reg_2525;
reg   [63:0] mul8_3_5_reg_2525_pp0_iter2_reg;
reg   [63:0] mul8_3_5_reg_2525_pp0_iter3_reg;
wire   [63:0] bitcast_ln36_50_fu_1629_p1;
reg   [63:0] mul8_6_reg_2535;
reg   [63:0] mul8_6_reg_2535_pp0_iter2_reg;
reg   [63:0] mul8_6_reg_2535_pp0_iter3_reg;
reg   [63:0] mul8_6_reg_2535_pp0_iter4_reg;
wire   [63:0] bitcast_ln36_12_fu_1634_p1;
reg   [63:0] mul8_1_6_reg_2545;
reg   [63:0] mul8_1_6_reg_2545_pp0_iter2_reg;
reg   [63:0] mul8_1_6_reg_2545_pp0_iter3_reg;
reg   [63:0] mul8_1_6_reg_2545_pp0_iter4_reg;
wire   [63:0] bitcast_ln36_25_fu_1639_p1;
reg   [63:0] mul8_2_6_reg_2555;
reg   [63:0] mul8_2_6_reg_2555_pp0_iter2_reg;
reg   [63:0] mul8_2_6_reg_2555_pp0_iter3_reg;
reg   [63:0] mul8_2_6_reg_2555_pp0_iter4_reg;
wire   [63:0] bitcast_ln36_38_fu_1644_p1;
reg   [63:0] mul8_3_6_reg_2565;
reg   [63:0] mul8_3_6_reg_2565_pp0_iter2_reg;
reg   [63:0] mul8_3_6_reg_2565_pp0_iter3_reg;
reg   [63:0] mul8_3_6_reg_2565_pp0_iter4_reg;
wire   [63:0] bitcast_ln36_51_fu_1649_p1;
reg   [63:0] mul8_7_reg_2575;
reg   [63:0] mul8_7_reg_2575_pp0_iter2_reg;
reg   [63:0] mul8_7_reg_2575_pp0_iter3_reg;
reg   [63:0] mul8_7_reg_2575_pp0_iter4_reg;
reg   [63:0] mul8_1_7_reg_2580;
reg   [63:0] mul8_1_7_reg_2580_pp0_iter2_reg;
reg   [63:0] mul8_1_7_reg_2580_pp0_iter3_reg;
reg   [63:0] mul8_1_7_reg_2580_pp0_iter4_reg;
reg   [63:0] mul8_2_7_reg_2585;
reg   [63:0] mul8_2_7_reg_2585_pp0_iter2_reg;
reg   [63:0] mul8_2_7_reg_2585_pp0_iter3_reg;
reg   [63:0] mul8_2_7_reg_2585_pp0_iter4_reg;
reg   [63:0] mul8_3_7_reg_2590;
reg   [63:0] mul8_3_7_reg_2590_pp0_iter2_reg;
reg   [63:0] mul8_3_7_reg_2590_pp0_iter3_reg;
reg   [63:0] mul8_3_7_reg_2590_pp0_iter4_reg;
reg   [63:0] add_reg_2595;
reg   [63:0] mul8_8_reg_2600;
reg   [63:0] mul8_8_reg_2600_pp0_iter2_reg;
reg   [63:0] mul8_8_reg_2600_pp0_iter3_reg;
reg   [63:0] mul8_8_reg_2600_pp0_iter4_reg;
reg   [63:0] mul8_8_reg_2600_pp0_iter5_reg;
reg   [63:0] add11_1_reg_2605;
reg   [63:0] mul8_1_8_reg_2610;
reg   [63:0] mul8_1_8_reg_2610_pp0_iter2_reg;
reg   [63:0] mul8_1_8_reg_2610_pp0_iter3_reg;
reg   [63:0] mul8_1_8_reg_2610_pp0_iter4_reg;
reg   [63:0] mul8_1_8_reg_2610_pp0_iter5_reg;
reg   [63:0] add11_2_reg_2615;
reg   [63:0] mul8_2_8_reg_2620;
reg   [63:0] mul8_2_8_reg_2620_pp0_iter2_reg;
reg   [63:0] mul8_2_8_reg_2620_pp0_iter3_reg;
reg   [63:0] mul8_2_8_reg_2620_pp0_iter4_reg;
reg   [63:0] mul8_2_8_reg_2620_pp0_iter5_reg;
reg   [63:0] mul8_3_8_reg_2625;
reg   [63:0] mul8_3_8_reg_2625_pp0_iter2_reg;
reg   [63:0] mul8_3_8_reg_2625_pp0_iter3_reg;
reg   [63:0] mul8_3_8_reg_2625_pp0_iter4_reg;
reg   [63:0] mul8_3_8_reg_2625_pp0_iter5_reg;
reg   [63:0] mul8_9_reg_2630;
reg   [63:0] mul8_9_reg_2630_pp0_iter2_reg;
reg   [63:0] mul8_9_reg_2630_pp0_iter3_reg;
reg   [63:0] mul8_9_reg_2630_pp0_iter4_reg;
reg   [63:0] mul8_9_reg_2630_pp0_iter5_reg;
reg   [63:0] mul8_1_9_reg_2635;
reg   [63:0] mul8_1_9_reg_2635_pp0_iter2_reg;
reg   [63:0] mul8_1_9_reg_2635_pp0_iter3_reg;
reg   [63:0] mul8_1_9_reg_2635_pp0_iter4_reg;
reg   [63:0] mul8_1_9_reg_2635_pp0_iter5_reg;
reg   [63:0] mul8_2_9_reg_2640;
reg   [63:0] mul8_2_9_reg_2640_pp0_iter2_reg;
reg   [63:0] mul8_2_9_reg_2640_pp0_iter3_reg;
reg   [63:0] mul8_2_9_reg_2640_pp0_iter4_reg;
reg   [63:0] mul8_2_9_reg_2640_pp0_iter5_reg;
reg   [63:0] add11_3_reg_2645;
reg   [63:0] mul8_3_9_reg_2650;
reg   [63:0] mul8_3_9_reg_2650_pp0_iter2_reg;
reg   [63:0] mul8_3_9_reg_2650_pp0_iter3_reg;
reg   [63:0] mul8_3_9_reg_2650_pp0_iter4_reg;
reg   [63:0] mul8_3_9_reg_2650_pp0_iter5_reg;
reg   [63:0] mul8_10_reg_2655;
reg   [63:0] mul8_10_reg_2655_pp0_iter2_reg;
reg   [63:0] mul8_10_reg_2655_pp0_iter3_reg;
reg   [63:0] mul8_10_reg_2655_pp0_iter4_reg;
reg   [63:0] mul8_10_reg_2655_pp0_iter5_reg;
reg   [63:0] mul8_10_reg_2655_pp0_iter6_reg;
reg   [63:0] mul8_1_s_reg_2660;
reg   [63:0] mul8_1_s_reg_2660_pp0_iter2_reg;
reg   [63:0] mul8_1_s_reg_2660_pp0_iter3_reg;
reg   [63:0] mul8_1_s_reg_2660_pp0_iter4_reg;
reg   [63:0] mul8_1_s_reg_2660_pp0_iter5_reg;
reg   [63:0] mul8_1_s_reg_2660_pp0_iter6_reg;
reg   [63:0] mul8_2_s_reg_2665;
reg   [63:0] mul8_2_s_reg_2665_pp0_iter2_reg;
reg   [63:0] mul8_2_s_reg_2665_pp0_iter3_reg;
reg   [63:0] mul8_2_s_reg_2665_pp0_iter4_reg;
reg   [63:0] mul8_2_s_reg_2665_pp0_iter5_reg;
reg   [63:0] mul8_2_s_reg_2665_pp0_iter6_reg;
reg   [63:0] mul8_3_s_reg_2670;
reg   [63:0] mul8_3_s_reg_2670_pp0_iter2_reg;
reg   [63:0] mul8_3_s_reg_2670_pp0_iter3_reg;
reg   [63:0] mul8_3_s_reg_2670_pp0_iter4_reg;
reg   [63:0] mul8_3_s_reg_2670_pp0_iter5_reg;
reg   [63:0] mul8_3_s_reg_2670_pp0_iter6_reg;
reg   [63:0] mul8_11_reg_2675;
reg   [63:0] mul8_11_reg_2675_pp0_iter2_reg;
reg   [63:0] mul8_11_reg_2675_pp0_iter3_reg;
reg   [63:0] mul8_11_reg_2675_pp0_iter4_reg;
reg   [63:0] mul8_11_reg_2675_pp0_iter5_reg;
reg   [63:0] mul8_11_reg_2675_pp0_iter6_reg;
reg   [63:0] mul8_1_10_reg_2680;
reg   [63:0] mul8_1_10_reg_2680_pp0_iter2_reg;
reg   [63:0] mul8_1_10_reg_2680_pp0_iter3_reg;
reg   [63:0] mul8_1_10_reg_2680_pp0_iter4_reg;
reg   [63:0] mul8_1_10_reg_2680_pp0_iter5_reg;
reg   [63:0] mul8_1_10_reg_2680_pp0_iter6_reg;
reg   [63:0] mul8_2_10_reg_2685;
reg   [63:0] mul8_2_10_reg_2685_pp0_iter2_reg;
reg   [63:0] mul8_2_10_reg_2685_pp0_iter3_reg;
reg   [63:0] mul8_2_10_reg_2685_pp0_iter4_reg;
reg   [63:0] mul8_2_10_reg_2685_pp0_iter5_reg;
reg   [63:0] mul8_2_10_reg_2685_pp0_iter6_reg;
reg   [63:0] mul8_3_10_reg_2690;
reg   [63:0] mul8_3_10_reg_2690_pp0_iter2_reg;
reg   [63:0] mul8_3_10_reg_2690_pp0_iter3_reg;
reg   [63:0] mul8_3_10_reg_2690_pp0_iter4_reg;
reg   [63:0] mul8_3_10_reg_2690_pp0_iter5_reg;
reg   [63:0] mul8_3_10_reg_2690_pp0_iter6_reg;
reg   [63:0] mul8_3_10_reg_2690_pp0_iter7_reg;
reg   [63:0] mul8_12_reg_2695;
reg   [63:0] mul8_12_reg_2695_pp0_iter2_reg;
reg   [63:0] mul8_12_reg_2695_pp0_iter3_reg;
reg   [63:0] mul8_12_reg_2695_pp0_iter4_reg;
reg   [63:0] mul8_12_reg_2695_pp0_iter5_reg;
reg   [63:0] mul8_12_reg_2695_pp0_iter6_reg;
reg   [63:0] mul8_12_reg_2695_pp0_iter7_reg;
reg   [63:0] mul8_1_11_reg_2700;
reg   [63:0] mul8_1_11_reg_2700_pp0_iter2_reg;
reg   [63:0] mul8_1_11_reg_2700_pp0_iter3_reg;
reg   [63:0] mul8_1_11_reg_2700_pp0_iter4_reg;
reg   [63:0] mul8_1_11_reg_2700_pp0_iter5_reg;
reg   [63:0] mul8_1_11_reg_2700_pp0_iter6_reg;
reg   [63:0] mul8_1_11_reg_2700_pp0_iter7_reg;
reg   [63:0] mul8_2_11_reg_2705;
reg   [63:0] mul8_2_11_reg_2705_pp0_iter2_reg;
reg   [63:0] mul8_2_11_reg_2705_pp0_iter3_reg;
reg   [63:0] mul8_2_11_reg_2705_pp0_iter4_reg;
reg   [63:0] mul8_2_11_reg_2705_pp0_iter5_reg;
reg   [63:0] mul8_2_11_reg_2705_pp0_iter6_reg;
reg   [63:0] mul8_2_11_reg_2705_pp0_iter7_reg;
reg   [63:0] mul8_3_11_reg_2710;
reg   [63:0] mul8_3_11_reg_2710_pp0_iter2_reg;
reg   [63:0] mul8_3_11_reg_2710_pp0_iter3_reg;
reg   [63:0] mul8_3_11_reg_2710_pp0_iter4_reg;
reg   [63:0] mul8_3_11_reg_2710_pp0_iter5_reg;
reg   [63:0] mul8_3_11_reg_2710_pp0_iter6_reg;
reg   [63:0] mul8_3_11_reg_2710_pp0_iter7_reg;
reg   [63:0] add11_s_reg_2715;
reg   [63:0] add11_3_1_reg_2720;
reg   [63:0] add11_13_reg_2725;
reg   [63:0] add11_1_2_reg_2730;
reg   [63:0] add11_2_2_reg_2735;
reg   [63:0] add11_3_2_reg_2740;
reg   [63:0] add11_14_reg_2745;
reg   [63:0] add11_1_3_reg_2750;
reg   [63:0] add11_2_3_reg_2755;
reg   [63:0] add11_3_3_reg_2760;
reg   [63:0] add11_4_reg_2765;
reg   [63:0] add11_1_4_reg_2770;
reg   [63:0] add11_2_4_reg_2775;
reg   [63:0] add11_3_4_reg_2780;
reg   [63:0] add11_5_reg_2785;
reg   [63:0] add11_1_5_reg_2790;
reg   [63:0] add11_2_5_reg_2795;
reg   [63:0] add11_3_5_reg_2800;
reg   [63:0] add11_6_reg_2805;
reg   [63:0] add11_1_6_reg_2810;
reg   [63:0] add11_3_6_reg_2815;
reg   [63:0] add11_7_reg_2820;
reg   [63:0] add11_1_7_reg_2825;
reg   [63:0] add11_2_7_reg_2830;
reg   [63:0] add11_3_7_reg_2835;
reg   [63:0] add11_8_reg_2840;
reg   [63:0] add11_1_8_reg_2845;
reg   [63:0] add11_2_8_reg_2850;
reg   [63:0] add11_3_8_reg_2855;
reg   [63:0] add11_9_reg_2860;
reg   [63:0] add11_1_9_reg_2865;
reg   [63:0] add11_2_9_reg_2870;
reg   [63:0] add11_3_9_reg_2875;
reg   [63:0] add11_10_reg_2880;
reg   [63:0] add11_1_s_reg_2885;
reg   [63:0] add11_2_s_reg_2890;
reg   [63:0] add11_3_s_reg_2895;
reg   [63:0] add11_11_reg_2900;
reg   [63:0] add11_1_10_reg_2905;
reg   [63:0] add11_2_10_reg_2910;
reg   [63:0] add11_3_10_reg_2915;
wire   [63:0] zext_ln34_1_fu_1666_p1;
reg   [63:0] zext_ln34_1_reg_2920;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage11_subdone;
wire   [63:0] zext_ln36_fu_826_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln36_7_fu_858_p1;
wire   [63:0] zext_ln36_8_fu_888_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln36_27_fu_908_p1;
wire   [63:0] zext_ln36_28_fu_928_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln36_9_fu_965_p1;
wire   [63:0] zext_ln36_29_fu_990_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln36_10_fu_1015_p1;
wire   [63:0] zext_ln36_30_fu_1050_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln36_11_fu_1080_p1;
wire   [63:0] zext_ln36_31_fu_1110_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln36_12_fu_1140_p1;
wire   [63:0] zext_ln36_32_fu_1170_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln36_13_fu_1200_p1;
wire   [63:0] zext_ln36_33_fu_1230_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln36_14_fu_1260_p1;
wire   [63:0] zext_ln36_34_fu_1290_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln36_15_fu_1320_p1;
wire   [63:0] zext_ln36_35_fu_1350_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln36_16_fu_1380_p1;
wire   [63:0] zext_ln36_36_fu_1410_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln36_17_fu_1440_p1;
wire   [63:0] zext_ln36_37_fu_1470_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln36_18_fu_1500_p1;
wire   [63:0] zext_ln36_38_fu_1539_p1;
wire   [63:0] zext_ln36_6_fu_1564_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln36_19_fu_1579_p1;
wire   [63:0] zext_ln36_26_fu_1594_p1;
wire   [63:0] zext_ln36_39_fu_1609_p1;
wire   [63:0] zext_ln32_fu_1654_p1;
reg   [6:0] j_fu_148;
wire   [6:0] add_ln33_fu_1544_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_1;
reg    weights1_0_ce1_local;
reg   [8:0] weights1_0_address1_local;
reg    weights1_0_ce0_local;
reg   [8:0] weights1_0_address0_local;
reg    weights1_1_ce1_local;
reg   [8:0] weights1_1_address1_local;
reg    weights1_1_ce0_local;
reg   [8:0] weights1_1_address0_local;
reg    activations_0_we1_local;
reg    activations_0_ce1_local;
reg    activations_0_we0_local;
reg    activations_0_ce0_local;
reg    activations_1_we0_local;
reg   [63:0] activations_1_d0_local;
reg    activations_1_ce0_local;
reg   [4:0] activations_1_address0_local;
reg   [63:0] grp_fu_710_p0;
reg   [63:0] grp_fu_710_p1;
reg   [63:0] grp_fu_715_p0;
reg   [63:0] grp_fu_715_p1;
reg   [63:0] grp_fu_720_p0;
reg   [63:0] grp_fu_720_p1;
reg   [63:0] grp_fu_725_p0;
reg   [63:0] grp_fu_725_p1;
reg   [63:0] grp_fu_729_p0;
reg   [63:0] grp_fu_729_p1;
reg   [63:0] grp_fu_733_p0;
reg   [63:0] grp_fu_733_p1;
reg   [63:0] grp_fu_737_p0;
reg   [63:0] grp_fu_737_p1;
reg   [63:0] grp_fu_741_p0;
reg   [63:0] grp_fu_741_p1;
wire   [4:0] mul_ln36_fu_810_p0;
wire   [4:0] mul_ln36_fu_810_p1;
wire   [5:0] or_ln7_fu_831_p3;
wire   [5:0] empty_fu_842_p0;
wire   [4:0] empty_fu_842_p1;
wire   [8:0] add_ln36_17_fu_863_p2;
wire   [9:0] add_ln36_5_fu_873_p2;
wire   [8:0] lshr_ln36_1_fu_878_p4;
wire   [9:0] empty_41_fu_893_p2;
wire   [9:0] add_ln36_24_fu_913_p2;
wire   [8:0] lshr_ln36_8_fu_918_p4;
wire   [8:0] or_ln_fu_943_p3;
wire   [8:0] add_ln36_6_fu_960_p2;
wire   [8:0] add_ln36_18_fu_975_p2;
wire   [8:0] add_ln36_25_fu_985_p2;
wire   [9:0] add_ln36_7_fu_1000_p2;
wire   [8:0] lshr_ln36_2_fu_1005_p4;
wire   [9:0] add_ln36_26_fu_1035_p2;
wire   [8:0] lshr_ln36_9_fu_1040_p4;
wire   [8:0] add_ln36_fu_1060_p2;
wire   [8:0] add_ln36_8_fu_1075_p2;
wire   [8:0] add_ln36_19_fu_1090_p2;
wire   [8:0] add_ln36_27_fu_1105_p2;
wire   [9:0] add_ln36_9_fu_1125_p2;
wire   [8:0] lshr_ln36_3_fu_1130_p4;
wire   [9:0] add_ln36_28_fu_1155_p2;
wire   [8:0] lshr_ln36_s_fu_1160_p4;
wire   [8:0] add_ln36_1_fu_1180_p2;
wire   [8:0] add_ln36_10_fu_1195_p2;
wire   [8:0] add_ln36_20_fu_1210_p2;
wire   [8:0] add_ln36_29_fu_1225_p2;
wire   [9:0] add_ln36_11_fu_1245_p2;
wire   [8:0] lshr_ln36_4_fu_1250_p4;
wire   [9:0] add_ln36_30_fu_1275_p2;
wire   [8:0] lshr_ln36_10_fu_1280_p4;
wire   [8:0] add_ln36_2_fu_1300_p2;
wire   [8:0] add_ln36_12_fu_1315_p2;
wire   [8:0] add_ln36_21_fu_1330_p2;
wire   [8:0] add_ln36_31_fu_1345_p2;
wire   [9:0] add_ln36_13_fu_1365_p2;
wire   [8:0] lshr_ln36_5_fu_1370_p4;
wire   [9:0] add_ln36_32_fu_1395_p2;
wire   [8:0] lshr_ln36_11_fu_1400_p4;
wire   [8:0] add_ln36_3_fu_1420_p2;
wire   [8:0] add_ln36_14_fu_1435_p2;
wire   [8:0] add_ln36_22_fu_1450_p2;
wire   [8:0] add_ln36_33_fu_1465_p2;
wire   [9:0] add_ln36_15_fu_1485_p2;
wire   [8:0] lshr_ln36_6_fu_1490_p4;
wire   [9:0] add_ln36_34_fu_1524_p2;
wire   [8:0] lshr_ln36_12_fu_1529_p4;
wire   [8:0] add_ln36_4_fu_1559_p2;
wire   [8:0] add_ln36_16_fu_1574_p2;
wire   [8:0] add_ln36_23_fu_1589_p2;
wire   [8:0] add_ln36_35_fu_1604_p2;
wire   [4:0] or_ln8_fu_1659_p3;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage2_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter7_stage11;
reg    ap_idle_pp0_0to6;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg   [12:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to8;
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
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [9:0] empty_fu_842_p00;
wire   [8:0] mul_ln36_fu_810_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 13'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_fu_148 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_mul_5ns_5ns_9_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 5 ),.dout_WIDTH( 9 ))
mul_5ns_5ns_9_1_1_U9(.din0(mul_ln36_fu_810_p0),.din1(mul_ln36_fu_810_p1),.dout(mul_ln36_fu_810_p2));
backprop_mul_6ns_5ns_10_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 5 ),.dout_WIDTH( 10 ))
mul_6ns_5ns_10_1_1_U10(.din0(empty_fu_842_p0),.din1(empty_fu_842_p1),.dout(empty_fu_842_p2));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage12),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage12)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage12_subdone) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage12_subdone) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage12_subdone) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage12_subdone) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage12_subdone) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage12_subdone) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage12_subdone) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter8 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage12_subdone) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter7_stage11) & (ap_idle_pp0_0to6 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter7_stage11) & (ap_idle_pp0_0to6 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter7_stage11) & (ap_idle_pp0_0to6 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter7_stage11) & (ap_idle_pp0_0to6 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter7_stage11) & (ap_idle_pp0_0to6 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter7_stage11) & (ap_idle_pp0_0to6 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter7_stage11) & (ap_idle_pp0_0to6 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        j_fu_148 <= 7'd0;
    end else if (((tmp_12_reg_1786 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        j_fu_148 <= add_ln33_fu_1544_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add11_10_reg_2880 <= grp_fu_943_p_dout0;
        add11_1_s_reg_2885 <= grp_fu_947_p_dout0;
        add11_2_s_reg_2890 <= grp_fu_951_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add11_11_reg_2900 <= grp_fu_943_p_dout0;
        add11_1_10_reg_2905 <= grp_fu_947_p_dout0;
        add11_2_10_reg_2910 <= grp_fu_951_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add11_13_reg_2725 <= grp_fu_939_p_dout0;
        add11_1_2_reg_2730 <= grp_fu_943_p_dout0;
        add11_2_2_reg_2735 <= grp_fu_947_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add11_14_reg_2745 <= grp_fu_939_p_dout0;
        add11_1_3_reg_2750 <= grp_fu_943_p_dout0;
        add11_2_3_reg_2755 <= grp_fu_947_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add11_1_4_reg_2770 <= grp_fu_943_p_dout0;
        add11_2_4_reg_2775 <= grp_fu_947_p_dout0;
        add11_4_reg_2765 <= grp_fu_939_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add11_1_5_reg_2790 <= grp_fu_947_p_dout0;
        add11_2_5_reg_2795 <= grp_fu_951_p_dout0;
        add11_5_reg_2785 <= grp_fu_943_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_1_6_reg_2810 <= grp_fu_947_p_dout0;
        add11_6_reg_2805 <= grp_fu_943_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add11_1_7_reg_2825 <= grp_fu_947_p_dout0;
        add11_2_7_reg_2830 <= grp_fu_951_p_dout0;
        add11_7_reg_2820 <= grp_fu_943_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add11_1_8_reg_2845 <= grp_fu_947_p_dout0;
        add11_2_8_reg_2850 <= grp_fu_951_p_dout0;
        add11_8_reg_2840 <= grp_fu_943_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        add11_1_9_reg_2865 <= grp_fu_947_p_dout0;
        add11_2_9_reg_2870 <= grp_fu_951_p_dout0;
        add11_9_reg_2860 <= grp_fu_943_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add11_1_reg_2605 <= grp_fu_943_p_dout0;
        add11_2_reg_2615 <= grp_fu_947_p_dout0;
        add_reg_2595 <= grp_fu_939_p_dout0;
        mul8_1_8_reg_2610 <= grp_fu_959_p_dout0;
        mul8_2_8_reg_2620 <= grp_fu_963_p_dout0;
        mul8_3_8_reg_2625 <= grp_fu_967_p_dout0;
        mul8_8_reg_2600 <= grp_fu_955_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add11_3_10_reg_2915 <= grp_fu_951_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_3_1_reg_2720 <= grp_fu_939_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add11_3_2_reg_2740 <= grp_fu_939_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add11_3_3_reg_2760 <= grp_fu_939_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        add11_3_4_reg_2780 <= grp_fu_939_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add11_3_5_reg_2800 <= grp_fu_939_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add11_3_6_reg_2815 <= grp_fu_939_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add11_3_7_reg_2835 <= grp_fu_939_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add11_3_8_reg_2855 <= grp_fu_951_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        add11_3_9_reg_2875 <= grp_fu_951_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add11_3_reg_2645 <= grp_fu_939_p_dout0;
        mul8_1_9_reg_2635 <= grp_fu_959_p_dout0;
        mul8_2_9_reg_2640 <= grp_fu_963_p_dout0;
        mul8_3_9_reg_2650 <= grp_fu_967_p_dout0;
        mul8_9_reg_2630 <= grp_fu_955_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add11_3_s_reg_2895 <= grp_fu_951_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        add11_s_reg_2715 <= grp_fu_939_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        empty_reg_1828 <= empty_fu_842_p2;
        lshr_ln9_reg_1845 <= {{empty_fu_842_p2[9:1]}};
        mul8_1_5_reg_2505_pp0_iter2_reg <= mul8_1_5_reg_2505;
        mul8_1_5_reg_2505_pp0_iter3_reg <= mul8_1_5_reg_2505_pp0_iter2_reg;
        mul8_2_5_reg_2515_pp0_iter2_reg <= mul8_2_5_reg_2515;
        mul8_2_5_reg_2515_pp0_iter3_reg <= mul8_2_5_reg_2515_pp0_iter2_reg;
        mul8_3_5_reg_2525_pp0_iter2_reg <= mul8_3_5_reg_2525;
        mul8_3_5_reg_2525_pp0_iter3_reg <= mul8_3_5_reg_2525_pp0_iter2_reg;
        mul8_5_reg_2495_pp0_iter2_reg <= mul8_5_reg_2495;
        mul8_5_reg_2495_pp0_iter3_reg <= mul8_5_reg_2495_pp0_iter2_reg;
        zext_ln36_20_reg_1860[8 : 0] <= zext_ln36_20_fu_868_p1[8 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_1_reg_1780 <= ap_sig_allocacmp_j_1;
        lshr_ln8_reg_1790 <= {{ap_sig_allocacmp_j_1[5:1]}};
        lshr_ln8_reg_1790_pp0_iter1_reg <= lshr_ln8_reg_1790;
        lshr_ln8_reg_1790_pp0_iter2_reg <= lshr_ln8_reg_1790_pp0_iter1_reg;
        lshr_ln8_reg_1790_pp0_iter3_reg <= lshr_ln8_reg_1790_pp0_iter2_reg;
        lshr_ln8_reg_1790_pp0_iter4_reg <= lshr_ln8_reg_1790_pp0_iter3_reg;
        lshr_ln8_reg_1790_pp0_iter5_reg <= lshr_ln8_reg_1790_pp0_iter4_reg;
        lshr_ln8_reg_1790_pp0_iter6_reg <= lshr_ln8_reg_1790_pp0_iter5_reg;
        lshr_ln8_reg_1790_pp0_iter7_reg <= lshr_ln8_reg_1790_pp0_iter6_reg;
        lshr_ln8_reg_1790_pp0_iter8_reg <= lshr_ln8_reg_1790_pp0_iter7_reg;
        mul8_1_4_reg_2450_pp0_iter2_reg <= mul8_1_4_reg_2450;
        mul8_1_4_reg_2450_pp0_iter3_reg <= mul8_1_4_reg_2450_pp0_iter2_reg;
        mul8_2_4_reg_2465_pp0_iter2_reg <= mul8_2_4_reg_2465;
        mul8_2_4_reg_2465_pp0_iter3_reg <= mul8_2_4_reg_2465_pp0_iter2_reg;
        mul8_3_4_reg_2480_pp0_iter2_reg <= mul8_3_4_reg_2480;
        mul8_3_4_reg_2480_pp0_iter3_reg <= mul8_3_4_reg_2480_pp0_iter2_reg;
        mul8_4_reg_2435_pp0_iter2_reg <= mul8_4_reg_2435;
        mul8_4_reg_2435_pp0_iter3_reg <= mul8_4_reg_2435_pp0_iter2_reg;
        mul_ln36_reg_1796 <= mul_ln36_fu_810_p2;
        tmp_12_reg_1786 <= ap_sig_allocacmp_j_1[32'd6];
        tmp_12_reg_1786_pp0_iter1_reg <= tmp_12_reg_1786;
        tmp_12_reg_1786_pp0_iter2_reg <= tmp_12_reg_1786_pp0_iter1_reg;
        tmp_12_reg_1786_pp0_iter3_reg <= tmp_12_reg_1786_pp0_iter2_reg;
        tmp_12_reg_1786_pp0_iter4_reg <= tmp_12_reg_1786_pp0_iter3_reg;
        tmp_12_reg_1786_pp0_iter5_reg <= tmp_12_reg_1786_pp0_iter4_reg;
        tmp_12_reg_1786_pp0_iter6_reg <= tmp_12_reg_1786_pp0_iter5_reg;
        tmp_12_reg_1786_pp0_iter7_reg <= tmp_12_reg_1786_pp0_iter6_reg;
        tmp_13_reg_1813 <= {{mul_ln36_fu_810_p2[8:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        lshr_ln36_7_reg_1880 <= {{empty_41_fu_893_p2[9:1]}};
        mul8_1_6_reg_2545_pp0_iter2_reg <= mul8_1_6_reg_2545;
        mul8_1_6_reg_2545_pp0_iter3_reg <= mul8_1_6_reg_2545_pp0_iter2_reg;
        mul8_1_6_reg_2545_pp0_iter4_reg <= mul8_1_6_reg_2545_pp0_iter3_reg;
        mul8_2_6_reg_2555_pp0_iter2_reg <= mul8_2_6_reg_2555;
        mul8_2_6_reg_2555_pp0_iter3_reg <= mul8_2_6_reg_2555_pp0_iter2_reg;
        mul8_2_6_reg_2555_pp0_iter4_reg <= mul8_2_6_reg_2555_pp0_iter3_reg;
        mul8_3_6_reg_2565_pp0_iter2_reg <= mul8_3_6_reg_2565;
        mul8_3_6_reg_2565_pp0_iter3_reg <= mul8_3_6_reg_2565_pp0_iter2_reg;
        mul8_3_6_reg_2565_pp0_iter4_reg <= mul8_3_6_reg_2565_pp0_iter3_reg;
        mul8_6_reg_2535_pp0_iter2_reg <= mul8_6_reg_2535;
        mul8_6_reg_2535_pp0_iter3_reg <= mul8_6_reg_2535_pp0_iter2_reg;
        mul8_6_reg_2535_pp0_iter4_reg <= mul8_6_reg_2535_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul8_10_reg_2655 <= grp_fu_955_p_dout0;
        mul8_1_s_reg_2660 <= grp_fu_959_p_dout0;
        mul8_2_s_reg_2665 <= grp_fu_963_p_dout0;
        mul8_3_s_reg_2670 <= grp_fu_967_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul8_10_reg_2655_pp0_iter2_reg <= mul8_10_reg_2655;
        mul8_10_reg_2655_pp0_iter3_reg <= mul8_10_reg_2655_pp0_iter2_reg;
        mul8_10_reg_2655_pp0_iter4_reg <= mul8_10_reg_2655_pp0_iter3_reg;
        mul8_10_reg_2655_pp0_iter5_reg <= mul8_10_reg_2655_pp0_iter4_reg;
        mul8_10_reg_2655_pp0_iter6_reg <= mul8_10_reg_2655_pp0_iter5_reg;
        mul8_1_s_reg_2660_pp0_iter2_reg <= mul8_1_s_reg_2660;
        mul8_1_s_reg_2660_pp0_iter3_reg <= mul8_1_s_reg_2660_pp0_iter2_reg;
        mul8_1_s_reg_2660_pp0_iter4_reg <= mul8_1_s_reg_2660_pp0_iter3_reg;
        mul8_1_s_reg_2660_pp0_iter5_reg <= mul8_1_s_reg_2660_pp0_iter4_reg;
        mul8_1_s_reg_2660_pp0_iter6_reg <= mul8_1_s_reg_2660_pp0_iter5_reg;
        mul8_2_s_reg_2665_pp0_iter2_reg <= mul8_2_s_reg_2665;
        mul8_2_s_reg_2665_pp0_iter3_reg <= mul8_2_s_reg_2665_pp0_iter2_reg;
        mul8_2_s_reg_2665_pp0_iter4_reg <= mul8_2_s_reg_2665_pp0_iter3_reg;
        mul8_2_s_reg_2665_pp0_iter5_reg <= mul8_2_s_reg_2665_pp0_iter4_reg;
        mul8_2_s_reg_2665_pp0_iter6_reg <= mul8_2_s_reg_2665_pp0_iter5_reg;
        mul8_3_s_reg_2670_pp0_iter2_reg <= mul8_3_s_reg_2670;
        mul8_3_s_reg_2670_pp0_iter3_reg <= mul8_3_s_reg_2670_pp0_iter2_reg;
        mul8_3_s_reg_2670_pp0_iter4_reg <= mul8_3_s_reg_2670_pp0_iter3_reg;
        mul8_3_s_reg_2670_pp0_iter5_reg <= mul8_3_s_reg_2670_pp0_iter4_reg;
        mul8_3_s_reg_2670_pp0_iter6_reg <= mul8_3_s_reg_2670_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul8_11_reg_2675 <= grp_fu_955_p_dout0;
        mul8_1_10_reg_2680 <= grp_fu_959_p_dout0;
        mul8_2_10_reg_2685 <= grp_fu_963_p_dout0;
        mul8_3_10_reg_2690 <= grp_fu_967_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul8_11_reg_2675_pp0_iter2_reg <= mul8_11_reg_2675;
        mul8_11_reg_2675_pp0_iter3_reg <= mul8_11_reg_2675_pp0_iter2_reg;
        mul8_11_reg_2675_pp0_iter4_reg <= mul8_11_reg_2675_pp0_iter3_reg;
        mul8_11_reg_2675_pp0_iter5_reg <= mul8_11_reg_2675_pp0_iter4_reg;
        mul8_11_reg_2675_pp0_iter6_reg <= mul8_11_reg_2675_pp0_iter5_reg;
        mul8_1_10_reg_2680_pp0_iter2_reg <= mul8_1_10_reg_2680;
        mul8_1_10_reg_2680_pp0_iter3_reg <= mul8_1_10_reg_2680_pp0_iter2_reg;
        mul8_1_10_reg_2680_pp0_iter4_reg <= mul8_1_10_reg_2680_pp0_iter3_reg;
        mul8_1_10_reg_2680_pp0_iter5_reg <= mul8_1_10_reg_2680_pp0_iter4_reg;
        mul8_1_10_reg_2680_pp0_iter6_reg <= mul8_1_10_reg_2680_pp0_iter5_reg;
        mul8_2_10_reg_2685_pp0_iter2_reg <= mul8_2_10_reg_2685;
        mul8_2_10_reg_2685_pp0_iter3_reg <= mul8_2_10_reg_2685_pp0_iter2_reg;
        mul8_2_10_reg_2685_pp0_iter4_reg <= mul8_2_10_reg_2685_pp0_iter3_reg;
        mul8_2_10_reg_2685_pp0_iter5_reg <= mul8_2_10_reg_2685_pp0_iter4_reg;
        mul8_2_10_reg_2685_pp0_iter6_reg <= mul8_2_10_reg_2685_pp0_iter5_reg;
        mul8_3_10_reg_2690_pp0_iter2_reg <= mul8_3_10_reg_2690;
        mul8_3_10_reg_2690_pp0_iter3_reg <= mul8_3_10_reg_2690_pp0_iter2_reg;
        mul8_3_10_reg_2690_pp0_iter4_reg <= mul8_3_10_reg_2690_pp0_iter3_reg;
        mul8_3_10_reg_2690_pp0_iter5_reg <= mul8_3_10_reg_2690_pp0_iter4_reg;
        mul8_3_10_reg_2690_pp0_iter6_reg <= mul8_3_10_reg_2690_pp0_iter5_reg;
        mul8_3_10_reg_2690_pp0_iter7_reg <= mul8_3_10_reg_2690_pp0_iter6_reg;
        zext_ln36_23_reg_2110[8 : 0] <= zext_ln36_23_fu_1215_p1[8 : 0];
        zext_ln36_3_reg_2085[8 : 0] <= zext_ln36_3_fu_1185_p1[8 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul8_12_reg_2695 <= grp_fu_955_p_dout0;
        mul8_1_11_reg_2700 <= grp_fu_959_p_dout0;
        mul8_2_11_reg_2705 <= grp_fu_963_p_dout0;
        mul8_3_11_reg_2710 <= grp_fu_967_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul8_12_reg_2695_pp0_iter2_reg <= mul8_12_reg_2695;
        mul8_12_reg_2695_pp0_iter3_reg <= mul8_12_reg_2695_pp0_iter2_reg;
        mul8_12_reg_2695_pp0_iter4_reg <= mul8_12_reg_2695_pp0_iter3_reg;
        mul8_12_reg_2695_pp0_iter5_reg <= mul8_12_reg_2695_pp0_iter4_reg;
        mul8_12_reg_2695_pp0_iter6_reg <= mul8_12_reg_2695_pp0_iter5_reg;
        mul8_12_reg_2695_pp0_iter7_reg <= mul8_12_reg_2695_pp0_iter6_reg;
        mul8_1_11_reg_2700_pp0_iter2_reg <= mul8_1_11_reg_2700;
        mul8_1_11_reg_2700_pp0_iter3_reg <= mul8_1_11_reg_2700_pp0_iter2_reg;
        mul8_1_11_reg_2700_pp0_iter4_reg <= mul8_1_11_reg_2700_pp0_iter3_reg;
        mul8_1_11_reg_2700_pp0_iter5_reg <= mul8_1_11_reg_2700_pp0_iter4_reg;
        mul8_1_11_reg_2700_pp0_iter6_reg <= mul8_1_11_reg_2700_pp0_iter5_reg;
        mul8_1_11_reg_2700_pp0_iter7_reg <= mul8_1_11_reg_2700_pp0_iter6_reg;
        mul8_2_11_reg_2705_pp0_iter2_reg <= mul8_2_11_reg_2705;
        mul8_2_11_reg_2705_pp0_iter3_reg <= mul8_2_11_reg_2705_pp0_iter2_reg;
        mul8_2_11_reg_2705_pp0_iter4_reg <= mul8_2_11_reg_2705_pp0_iter3_reg;
        mul8_2_11_reg_2705_pp0_iter5_reg <= mul8_2_11_reg_2705_pp0_iter4_reg;
        mul8_2_11_reg_2705_pp0_iter6_reg <= mul8_2_11_reg_2705_pp0_iter5_reg;
        mul8_2_11_reg_2705_pp0_iter7_reg <= mul8_2_11_reg_2705_pp0_iter6_reg;
        mul8_3_11_reg_2710_pp0_iter2_reg <= mul8_3_11_reg_2710;
        mul8_3_11_reg_2710_pp0_iter3_reg <= mul8_3_11_reg_2710_pp0_iter2_reg;
        mul8_3_11_reg_2710_pp0_iter4_reg <= mul8_3_11_reg_2710_pp0_iter3_reg;
        mul8_3_11_reg_2710_pp0_iter5_reg <= mul8_3_11_reg_2710_pp0_iter4_reg;
        mul8_3_11_reg_2710_pp0_iter6_reg <= mul8_3_11_reg_2710_pp0_iter5_reg;
        mul8_3_11_reg_2710_pp0_iter7_reg <= mul8_3_11_reg_2710_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        mul8_13_reg_2300 <= grp_fu_955_p_dout0;
        mul8_1_2_reg_2320 <= grp_fu_959_p_dout0;
        mul8_2_2_reg_2335 <= grp_fu_963_p_dout0;
        mul8_3_2_reg_2355 <= grp_fu_967_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        mul8_13_reg_2300_pp0_iter1_reg <= mul8_13_reg_2300;
        mul8_1_2_reg_2320_pp0_iter1_reg <= mul8_1_2_reg_2320;
        mul8_2_2_reg_2335_pp0_iter1_reg <= mul8_2_2_reg_2335;
        mul8_3_2_reg_2355_pp0_iter1_reg <= mul8_3_2_reg_2355;
        zext_ln36_25_reg_2345[8 : 0] <= zext_ln36_25_fu_1455_p1[8 : 0];
        zext_ln36_5_reg_2310[8 : 0] <= zext_ln36_5_fu_1425_p1[8 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        mul8_14_reg_2370 <= grp_fu_955_p_dout0;
        mul8_1_3_reg_2385 <= grp_fu_959_p_dout0;
        mul8_2_3_reg_2405 <= grp_fu_963_p_dout0;
        mul8_3_3_reg_2420 <= grp_fu_967_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        mul8_14_reg_2370_pp0_iter1_reg <= mul8_14_reg_2370;
        mul8_1_3_reg_2385_pp0_iter1_reg <= mul8_1_3_reg_2385;
        mul8_2_3_reg_2405_pp0_iter1_reg <= mul8_2_3_reg_2405;
        mul8_3_3_reg_2420_pp0_iter1_reg <= mul8_3_3_reg_2420;
        tmp_14_reg_2400 <= {{j_1_reg_1780[5:2]}};
        tmp_14_reg_2400_pp0_iter1_reg <= tmp_14_reg_2400;
        tmp_14_reg_2400_pp0_iter2_reg <= tmp_14_reg_2400_pp0_iter1_reg;
        tmp_14_reg_2400_pp0_iter3_reg <= tmp_14_reg_2400_pp0_iter2_reg;
        tmp_14_reg_2400_pp0_iter4_reg <= tmp_14_reg_2400_pp0_iter3_reg;
        tmp_14_reg_2400_pp0_iter5_reg <= tmp_14_reg_2400_pp0_iter4_reg;
        tmp_14_reg_2400_pp0_iter6_reg <= tmp_14_reg_2400_pp0_iter5_reg;
        tmp_14_reg_2400_pp0_iter7_reg <= tmp_14_reg_2400_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        mul8_1_1_reg_2250 <= grp_fu_955_p_dout0;
        mul8_2_1_reg_2265 <= grp_fu_959_p_dout0;
        mul8_3_1_reg_2285 <= grp_fu_967_p_dout0;
        mul8_3_reg_2280 <= grp_fu_963_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul8_1_4_reg_2450 <= grp_fu_959_p_dout0;
        mul8_2_4_reg_2465 <= grp_fu_963_p_dout0;
        mul8_3_4_reg_2480 <= grp_fu_967_p_dout0;
        mul8_4_reg_2435 <= grp_fu_955_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul8_1_5_reg_2505 <= grp_fu_959_p_dout0;
        mul8_2_5_reg_2515 <= grp_fu_963_p_dout0;
        mul8_3_5_reg_2525 <= grp_fu_967_p_dout0;
        mul8_5_reg_2495 <= grp_fu_955_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul8_1_6_reg_2545 <= grp_fu_959_p_dout0;
        mul8_2_6_reg_2555 <= grp_fu_963_p_dout0;
        mul8_3_6_reg_2565 <= grp_fu_967_p_dout0;
        mul8_6_reg_2535 <= grp_fu_955_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul8_1_7_reg_2580 <= grp_fu_959_p_dout0;
        mul8_2_7_reg_2585 <= grp_fu_963_p_dout0;
        mul8_3_7_reg_2590 <= grp_fu_967_p_dout0;
        mul8_7_reg_2575 <= grp_fu_955_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul8_1_7_reg_2580_pp0_iter2_reg <= mul8_1_7_reg_2580;
        mul8_1_7_reg_2580_pp0_iter3_reg <= mul8_1_7_reg_2580_pp0_iter2_reg;
        mul8_1_7_reg_2580_pp0_iter4_reg <= mul8_1_7_reg_2580_pp0_iter3_reg;
        mul8_2_7_reg_2585_pp0_iter2_reg <= mul8_2_7_reg_2585;
        mul8_2_7_reg_2585_pp0_iter3_reg <= mul8_2_7_reg_2585_pp0_iter2_reg;
        mul8_2_7_reg_2585_pp0_iter4_reg <= mul8_2_7_reg_2585_pp0_iter3_reg;
        mul8_3_7_reg_2590_pp0_iter2_reg <= mul8_3_7_reg_2590;
        mul8_3_7_reg_2590_pp0_iter3_reg <= mul8_3_7_reg_2590_pp0_iter2_reg;
        mul8_3_7_reg_2590_pp0_iter4_reg <= mul8_3_7_reg_2590_pp0_iter3_reg;
        mul8_7_reg_2575_pp0_iter2_reg <= mul8_7_reg_2575;
        mul8_7_reg_2575_pp0_iter3_reg <= mul8_7_reg_2575_pp0_iter2_reg;
        mul8_7_reg_2575_pp0_iter4_reg <= mul8_7_reg_2575_pp0_iter3_reg;
        zext_ln36_1_reg_1910[8 : 1] <= zext_ln36_1_fu_950_p1[8 : 1];
        zext_ln36_21_reg_1935[8 : 0] <= zext_ln36_21_fu_980_p1[8 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul8_1_8_reg_2610_pp0_iter2_reg <= mul8_1_8_reg_2610;
        mul8_1_8_reg_2610_pp0_iter3_reg <= mul8_1_8_reg_2610_pp0_iter2_reg;
        mul8_1_8_reg_2610_pp0_iter4_reg <= mul8_1_8_reg_2610_pp0_iter3_reg;
        mul8_1_8_reg_2610_pp0_iter5_reg <= mul8_1_8_reg_2610_pp0_iter4_reg;
        mul8_2_8_reg_2620_pp0_iter2_reg <= mul8_2_8_reg_2620;
        mul8_2_8_reg_2620_pp0_iter3_reg <= mul8_2_8_reg_2620_pp0_iter2_reg;
        mul8_2_8_reg_2620_pp0_iter4_reg <= mul8_2_8_reg_2620_pp0_iter3_reg;
        mul8_2_8_reg_2620_pp0_iter5_reg <= mul8_2_8_reg_2620_pp0_iter4_reg;
        mul8_3_8_reg_2625_pp0_iter2_reg <= mul8_3_8_reg_2625;
        mul8_3_8_reg_2625_pp0_iter3_reg <= mul8_3_8_reg_2625_pp0_iter2_reg;
        mul8_3_8_reg_2625_pp0_iter4_reg <= mul8_3_8_reg_2625_pp0_iter3_reg;
        mul8_3_8_reg_2625_pp0_iter5_reg <= mul8_3_8_reg_2625_pp0_iter4_reg;
        mul8_8_reg_2600_pp0_iter2_reg <= mul8_8_reg_2600;
        mul8_8_reg_2600_pp0_iter3_reg <= mul8_8_reg_2600_pp0_iter2_reg;
        mul8_8_reg_2600_pp0_iter4_reg <= mul8_8_reg_2600_pp0_iter3_reg;
        mul8_8_reg_2600_pp0_iter5_reg <= mul8_8_reg_2600_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul8_1_9_reg_2635_pp0_iter2_reg <= mul8_1_9_reg_2635;
        mul8_1_9_reg_2635_pp0_iter3_reg <= mul8_1_9_reg_2635_pp0_iter2_reg;
        mul8_1_9_reg_2635_pp0_iter4_reg <= mul8_1_9_reg_2635_pp0_iter3_reg;
        mul8_1_9_reg_2635_pp0_iter5_reg <= mul8_1_9_reg_2635_pp0_iter4_reg;
        mul8_2_9_reg_2640_pp0_iter2_reg <= mul8_2_9_reg_2640;
        mul8_2_9_reg_2640_pp0_iter3_reg <= mul8_2_9_reg_2640_pp0_iter2_reg;
        mul8_2_9_reg_2640_pp0_iter4_reg <= mul8_2_9_reg_2640_pp0_iter3_reg;
        mul8_2_9_reg_2640_pp0_iter5_reg <= mul8_2_9_reg_2640_pp0_iter4_reg;
        mul8_3_9_reg_2650_pp0_iter2_reg <= mul8_3_9_reg_2650;
        mul8_3_9_reg_2650_pp0_iter3_reg <= mul8_3_9_reg_2650_pp0_iter2_reg;
        mul8_3_9_reg_2650_pp0_iter4_reg <= mul8_3_9_reg_2650_pp0_iter3_reg;
        mul8_3_9_reg_2650_pp0_iter5_reg <= mul8_3_9_reg_2650_pp0_iter4_reg;
        mul8_9_reg_2630_pp0_iter2_reg <= mul8_9_reg_2630;
        mul8_9_reg_2630_pp0_iter3_reg <= mul8_9_reg_2630_pp0_iter2_reg;
        mul8_9_reg_2630_pp0_iter4_reg <= mul8_9_reg_2630_pp0_iter3_reg;
        mul8_9_reg_2630_pp0_iter5_reg <= mul8_9_reg_2630_pp0_iter4_reg;
        zext_ln36_22_reg_2020[8 : 0] <= zext_ln36_22_fu_1095_p1[8 : 0];
        zext_ln36_2_reg_1995[8 : 0] <= zext_ln36_2_fu_1065_p1[8 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul8_1_reg_2195 <= grp_fu_963_p_dout0;
        mul8_2_reg_2210 <= grp_fu_967_p_dout0;
        mul8_reg_2170 <= grp_fu_955_p_dout0;
        mul8_s_reg_2175 <= grp_fu_959_p_dout0;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_745 <= weights1_0_q1;
        reg_749 <= weights1_1_q1;
        reg_753 <= weights1_1_q0;
        reg_757 <= weights1_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_761 <= grp_fu_943_p_dout0;
        reg_767 <= grp_fu_947_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_773 <= grp_fu_951_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        zext_ln34_1_reg_2920[4 : 1] <= zext_ln34_1_fu_1666_p1[4 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        zext_ln36_24_reg_2220[8 : 0] <= zext_ln36_24_fu_1335_p1[8 : 0];
        zext_ln36_4_reg_2185[8 : 0] <= zext_ln36_4_fu_1305_p1[8 : 0];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        activations_0_ce0_local = 1'b1;
    end else begin
        activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        activations_0_ce1_local = 1'b1;
    end else begin
        activations_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        activations_0_we0_local = 1'b1;
    end else begin
        activations_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        activations_0_we1_local = 1'b1;
    end else begin
        activations_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            activations_1_address0_local = zext_ln34_1_reg_2920;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            activations_1_address0_local = zext_ln32_fu_1654_p1;
        end else begin
            activations_1_address0_local = 'bx;
        end
    end else begin
        activations_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        activations_1_ce0_local = 1'b1;
    end else begin
        activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            activations_1_d0_local = reg_773;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            activations_1_d0_local = reg_767;
        end else begin
            activations_1_d0_local = 'bx;
        end
    end else begin
        activations_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        activations_1_we0_local = 1'b1;
    end else begin
        activations_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_12_reg_1786 == 1'd1) & (1'b0 == ap_block_pp0_stage12_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        ap_condition_exit_pp0_iter0_stage12 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage12 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter7 == 1'b1) & (tmp_12_reg_1786_pp0_iter7_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_condition_exit_pp0_iter7_stage11 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter7_stage11 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to6 = 1'b1;
    end else begin
        ap_idle_pp0_0to6 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to8 = 1'b1;
    end else begin
        ap_idle_pp0_1to8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_j_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_j_1 = j_fu_148;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_710_p0 = add11_3_6_reg_2815;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_710_p0 = add11_3_5_reg_2800;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_710_p0 = add11_3_4_reg_2780;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_710_p0 = add11_3_3_reg_2760;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_710_p0 = add11_14_reg_2745;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_710_p0 = add11_3_2_reg_2740;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_710_p0 = add11_13_reg_2725;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_710_p0 = add11_3_1_reg_2720;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_710_p0 = add11_s_reg_2715;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_710_p0 = add11_3_reg_2645;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_710_p0 = add_reg_2595;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_710_p0 = mul8_3_reg_2280;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_710_p0 = mul8_reg_2170;
    end else begin
        grp_fu_710_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_710_p1 = mul8_3_7_reg_2590_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_710_p1 = mul8_3_6_reg_2565_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_710_p1 = mul8_3_5_reg_2525_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_710_p1 = mul8_3_4_reg_2480_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_710_p1 = mul8_4_reg_2435_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_710_p1 = mul8_3_3_reg_2420_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_710_p1 = mul8_14_reg_2370_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_710_p1 = mul8_3_2_reg_2355_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_710_p1 = mul8_13_reg_2300_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_710_p1 = mul8_3_1_reg_2285;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_710_p1 = mul8_s_reg_2175;
    end else if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_710_p1 = 64'd0;
    end else begin
        grp_fu_710_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_715_p0 = add11_11_reg_2900;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_715_p0 = add11_10_reg_2880;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_715_p0 = add11_9_reg_2860;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_715_p0 = add11_8_reg_2840;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_715_p0 = add11_7_reg_2820;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_715_p0 = add11_6_reg_2805;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_715_p0 = add11_5_reg_2785;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_715_p0 = add11_4_reg_2765;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_715_p0 = add11_1_3_reg_2750;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_715_p0 = add11_1_2_reg_2730;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_715_p0 = reg_761;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_715_p0 = add11_1_reg_2605;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_715_p0 = mul8_1_reg_2195;
    end else begin
        grp_fu_715_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_715_p1 = mul8_12_reg_2695_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_715_p1 = mul8_11_reg_2675_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_715_p1 = mul8_10_reg_2655_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_715_p1 = mul8_9_reg_2630_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_715_p1 = mul8_8_reg_2600_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_715_p1 = mul8_7_reg_2575_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_715_p1 = mul8_6_reg_2535_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_715_p1 = mul8_5_reg_2495_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_715_p1 = mul8_1_4_reg_2450_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_715_p1 = mul8_1_3_reg_2385_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_715_p1 = mul8_1_2_reg_2320_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_715_p1 = mul8_1_1_reg_2250;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_715_p1 = 64'd0;
    end else begin
        grp_fu_715_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_720_p0 = add11_1_10_reg_2905;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_720_p0 = add11_1_s_reg_2885;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_720_p0 = add11_1_9_reg_2865;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_720_p0 = add11_1_8_reg_2845;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_720_p0 = add11_1_7_reg_2825;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_720_p0 = add11_1_6_reg_2810;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_720_p0 = add11_1_5_reg_2790;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_720_p0 = add11_1_4_reg_2770;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_720_p0 = add11_2_3_reg_2755;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_720_p0 = add11_2_2_reg_2735;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_720_p0 = reg_767;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_720_p0 = add11_2_reg_2615;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_720_p0 = mul8_2_reg_2210;
    end else begin
        grp_fu_720_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_720_p1 = mul8_1_11_reg_2700_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_720_p1 = mul8_1_10_reg_2680_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_720_p1 = mul8_1_s_reg_2660_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_720_p1 = mul8_1_9_reg_2635_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_720_p1 = mul8_1_8_reg_2610_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_720_p1 = mul8_1_7_reg_2580_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_720_p1 = mul8_1_6_reg_2545_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_720_p1 = mul8_1_5_reg_2505_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_720_p1 = mul8_2_4_reg_2465_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_720_p1 = mul8_2_3_reg_2405_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_720_p1 = mul8_2_2_reg_2335_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_720_p1 = mul8_2_1_reg_2265;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_720_p1 = 64'd0;
    end else begin
        grp_fu_720_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_725_p0 = add11_3_10_reg_2915;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_725_p0 = add11_2_10_reg_2910;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_725_p0 = add11_3_s_reg_2895;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_725_p0 = add11_2_s_reg_2890;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_725_p0 = add11_3_9_reg_2875;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_725_p0 = add11_2_9_reg_2870;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_725_p0 = add11_3_8_reg_2855;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_725_p0 = add11_2_8_reg_2850;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_725_p0 = add11_3_7_reg_2835;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_725_p0 = add11_2_7_reg_2830;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_725_p0 = reg_773;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_725_p0 = add11_2_5_reg_2795;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_725_p0 = add11_2_4_reg_2775;
    end else begin
        grp_fu_725_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_725_p1 = mul8_3_11_reg_2710_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_725_p1 = mul8_2_11_reg_2705_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_725_p1 = mul8_3_10_reg_2690_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_725_p1 = mul8_2_10_reg_2685_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_725_p1 = mul8_3_s_reg_2670_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_725_p1 = mul8_2_s_reg_2665_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_725_p1 = mul8_3_9_reg_2650_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_725_p1 = mul8_2_9_reg_2640_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_725_p1 = mul8_3_8_reg_2625_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_725_p1 = mul8_2_8_reg_2620_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_725_p1 = mul8_2_7_reg_2585_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_725_p1 = mul8_2_6_reg_2555_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_725_p1 = mul8_2_5_reg_2515_pp0_iter3_reg;
    end else begin
        grp_fu_725_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_729_p0 = bitcast_ln36_12_fu_1634_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_729_p0 = bitcast_ln36_11_fu_1614_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_729_p0 = bitcast_ln36_10_fu_1554_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_729_p0 = bitcast_ln36_9_fu_1475_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_729_p0 = bitcast_ln36_8_fu_1415_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_729_p0 = bitcast_ln36_7_fu_1355_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_729_p0 = bitcast_ln36_6_fu_1295_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_729_p0 = bitcast_ln36_5_fu_1235_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_729_p0 = bitcast_ln36_4_fu_1175_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_729_p0 = bitcast_ln36_3_fu_1115_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_729_p0 = bitcast_ln36_2_fu_1055_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_729_p0 = bitcast_ln36_14_fu_995_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_729_p0 = bitcast_ln36_fu_933_p1;
    end else begin
        grp_fu_729_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_729_p1 = tmp_11;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_729_p1 = tmp_10;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_729_p1 = tmp_s;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_729_p1 = tmp_9;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_729_p1 = tmp_8;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_729_p1 = tmp_7;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_729_p1 = tmp_6;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_729_p1 = tmp_5;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_729_p1 = tmp_4;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_729_p1 = tmp_3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_729_p1 = tmp_2;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_729_p1 = tmp_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_729_p1 = tmp;
    end else begin
        grp_fu_729_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_733_p0 = bitcast_ln36_25_fu_1639_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_733_p0 = bitcast_ln36_24_fu_1619_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_733_p0 = bitcast_ln36_23_fu_1569_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_733_p0 = bitcast_ln36_22_fu_1480_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_733_p0 = bitcast_ln36_21_fu_1430_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_733_p0 = bitcast_ln36_20_fu_1360_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_733_p0 = bitcast_ln36_19_fu_1310_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_733_p0 = bitcast_ln36_18_fu_1240_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_733_p0 = bitcast_ln36_17_fu_1190_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_733_p0 = bitcast_ln36_16_fu_1120_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_733_p0 = bitcast_ln36_15_fu_1070_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_733_p0 = bitcast_ln36_27_fu_1020_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_733_p0 = bitcast_ln36_1_fu_938_p1;
    end else begin
        grp_fu_733_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_733_p1 = tmp_11;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_733_p1 = tmp_10;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_733_p1 = tmp_s;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_733_p1 = tmp_9;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_733_p1 = tmp_8;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_733_p1 = tmp_7;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_733_p1 = tmp_6;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_733_p1 = tmp_5;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_733_p1 = tmp_4;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_733_p1 = tmp_3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_733_p1 = tmp_2;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_733_p1 = tmp_1;
    end else begin
        grp_fu_733_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_737_p0 = bitcast_ln36_38_fu_1644_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_737_p0 = bitcast_ln36_37_fu_1624_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_737_p0 = bitcast_ln36_36_fu_1584_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_737_p0 = bitcast_ln36_35_fu_1514_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_737_p0 = bitcast_ln36_34_fu_1445_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_737_p0 = bitcast_ln36_33_fu_1385_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_737_p0 = bitcast_ln36_32_fu_1325_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_737_p0 = bitcast_ln36_31_fu_1265_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_737_p0 = bitcast_ln36_30_fu_1205_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_737_p0 = bitcast_ln36_29_fu_1145_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_737_p0 = bitcast_ln36_28_fu_1085_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_737_p0 = bitcast_ln36_39_fu_1025_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_737_p0 = bitcast_ln36_13_fu_955_p1;
    end else begin
        grp_fu_737_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_737_p1 = tmp_11;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_737_p1 = tmp_10;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_737_p1 = tmp_s;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_737_p1 = tmp_9;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_737_p1 = tmp_8;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_737_p1 = tmp_7;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_737_p1 = tmp_6;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_737_p1 = tmp_5;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_737_p1 = tmp_4;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_737_p1 = tmp_3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_737_p1 = tmp_2;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_737_p1 = tmp;
    end else begin
        grp_fu_737_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_741_p0 = bitcast_ln36_51_fu_1649_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_741_p0 = bitcast_ln36_50_fu_1629_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_741_p0 = bitcast_ln36_49_fu_1599_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_741_p0 = bitcast_ln36_48_fu_1519_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_741_p0 = bitcast_ln36_47_fu_1460_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_741_p0 = bitcast_ln36_46_fu_1390_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_741_p0 = bitcast_ln36_45_fu_1340_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_741_p0 = bitcast_ln36_44_fu_1270_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_741_p0 = bitcast_ln36_43_fu_1220_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_741_p0 = bitcast_ln36_42_fu_1150_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_741_p0 = bitcast_ln36_41_fu_1100_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_741_p0 = bitcast_ln36_40_fu_1030_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_741_p0 = bitcast_ln36_26_fu_970_p1;
    end else begin
        grp_fu_741_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_741_p1 = tmp_11;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_741_p1 = tmp_10;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_741_p1 = tmp_s;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_741_p1 = tmp_9;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_741_p1 = tmp_8;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_741_p1 = tmp_7;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_741_p1 = tmp_6;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_741_p1 = tmp_5;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_741_p1 = tmp_4;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_741_p1 = tmp_3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_741_p1 = tmp_2;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_741_p1 = tmp_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_741_p1 = tmp;
    end else begin
        grp_fu_741_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_0_address0_local = zext_ln36_26_fu_1594_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights1_0_address0_local = zext_ln36_38_fu_1539_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights1_0_address0_local = zext_ln36_25_fu_1455_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights1_0_address0_local = zext_ln36_36_fu_1410_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights1_0_address0_local = zext_ln36_24_fu_1335_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights1_0_address0_local = zext_ln36_34_fu_1290_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights1_0_address0_local = zext_ln36_23_fu_1215_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights1_0_address0_local = zext_ln36_32_fu_1170_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights1_0_address0_local = zext_ln36_22_fu_1095_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_0_address0_local = zext_ln36_30_fu_1050_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_0_address0_local = zext_ln36_21_fu_980_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_0_address0_local = zext_ln36_28_fu_928_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_0_address0_local = zext_ln36_20_fu_868_p1;
    end else begin
        weights1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_0_address1_local = zext_ln36_6_fu_1564_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights1_0_address1_local = zext_ln36_18_fu_1500_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights1_0_address1_local = zext_ln36_5_fu_1425_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights1_0_address1_local = zext_ln36_16_fu_1380_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights1_0_address1_local = zext_ln36_4_fu_1305_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights1_0_address1_local = zext_ln36_14_fu_1260_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights1_0_address1_local = zext_ln36_3_fu_1185_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights1_0_address1_local = zext_ln36_12_fu_1140_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights1_0_address1_local = zext_ln36_2_fu_1065_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_0_address1_local = zext_ln36_10_fu_1015_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_0_address1_local = zext_ln36_1_fu_950_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_0_address1_local = zext_ln36_8_fu_888_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_0_address1_local = zext_ln36_fu_826_p1;
    end else begin
        weights1_0_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_0_ce0_local = 1'b1;
    end else begin
        weights1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_0_ce1_local = 1'b1;
    end else begin
        weights1_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_1_address0_local = zext_ln36_39_fu_1609_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights1_1_address0_local = zext_ln36_25_reg_2345;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights1_1_address0_local = zext_ln36_37_fu_1470_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights1_1_address0_local = zext_ln36_24_reg_2220;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights1_1_address0_local = zext_ln36_35_fu_1350_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights1_1_address0_local = zext_ln36_23_reg_2110;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights1_1_address0_local = zext_ln36_33_fu_1230_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights1_1_address0_local = zext_ln36_22_reg_2020;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights1_1_address0_local = zext_ln36_31_fu_1110_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_1_address0_local = zext_ln36_21_reg_1935;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_1_address0_local = zext_ln36_29_fu_990_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_1_address0_local = zext_ln36_27_fu_908_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_1_address0_local = zext_ln36_7_fu_858_p1;
    end else begin
        weights1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_1_address1_local = zext_ln36_19_fu_1579_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights1_1_address1_local = zext_ln36_5_reg_2310;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights1_1_address1_local = zext_ln36_17_fu_1440_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights1_1_address1_local = zext_ln36_4_reg_2185;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights1_1_address1_local = zext_ln36_15_fu_1320_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights1_1_address1_local = zext_ln36_3_reg_2085;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights1_1_address1_local = zext_ln36_13_fu_1200_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights1_1_address1_local = zext_ln36_2_reg_1995;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights1_1_address1_local = zext_ln36_11_fu_1080_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_1_address1_local = zext_ln36_1_reg_1910;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_1_address1_local = zext_ln36_9_fu_965_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_1_address1_local = zext_ln36_20_reg_1860;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_1_address1_local = zext_ln36_fu_826_p1;
    end else begin
        weights1_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_1_ce0_local = 1'b1;
    end else begin
        weights1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_1_ce1_local = 1'b1;
    end else begin
        weights1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to8 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((1'b1 == ap_condition_exit_pp0_iter7_stage11) & (ap_idle_pp0_0to6 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign activations_0_address0 = zext_ln34_1_fu_1666_p1;
assign activations_0_address1 = zext_ln32_fu_1654_p1;
assign activations_0_ce0 = activations_0_ce0_local;
assign activations_0_ce1 = activations_0_ce1_local;
assign activations_0_d0 = reg_773;
assign activations_0_d1 = reg_761;
assign activations_0_we0 = activations_0_we0_local;
assign activations_0_we1 = activations_0_we1_local;
assign activations_1_address0 = activations_1_address0_local;
assign activations_1_ce0 = activations_1_ce0_local;
assign activations_1_d0 = activations_1_d0_local;
assign activations_1_we0 = activations_1_we0_local;
assign add_ln33_fu_1544_p2 = (j_1_reg_1780 + 7'd4);
assign add_ln36_10_fu_1195_p2 = (lshr_ln9_reg_1845 + 9'd3);
assign add_ln36_11_fu_1245_p2 = (empty_reg_1828 + 10'd7);
assign add_ln36_12_fu_1315_p2 = (lshr_ln9_reg_1845 + 9'd4);
assign add_ln36_13_fu_1365_p2 = (empty_reg_1828 + 10'd9);
assign add_ln36_14_fu_1435_p2 = (lshr_ln9_reg_1845 + 9'd5);
assign add_ln36_15_fu_1485_p2 = (empty_reg_1828 + 10'd11);
assign add_ln36_16_fu_1574_p2 = (lshr_ln9_reg_1845 + 9'd6);
assign add_ln36_17_fu_863_p2 = (mul_ln36_reg_1796 + 9'd13);
assign add_ln36_18_fu_975_p2 = (mul_ln36_reg_1796 + 9'd14);
assign add_ln36_19_fu_1090_p2 = (mul_ln36_reg_1796 + 9'd15);
assign add_ln36_1_fu_1180_p2 = (mul_ln36_reg_1796 + 9'd3);
assign add_ln36_20_fu_1210_p2 = (mul_ln36_reg_1796 + 9'd16);
assign add_ln36_21_fu_1330_p2 = (mul_ln36_reg_1796 + 9'd17);
assign add_ln36_22_fu_1450_p2 = (mul_ln36_reg_1796 + 9'd18);
assign add_ln36_23_fu_1589_p2 = (mul_ln36_reg_1796 + 9'd19);
assign add_ln36_24_fu_913_p2 = (empty_reg_1828 + 10'd27);
assign add_ln36_25_fu_985_p2 = (lshr_ln36_7_reg_1880 + 9'd1);
assign add_ln36_26_fu_1035_p2 = (empty_reg_1828 + 10'd29);
assign add_ln36_27_fu_1105_p2 = (lshr_ln36_7_reg_1880 + 9'd2);
assign add_ln36_28_fu_1155_p2 = (empty_reg_1828 + 10'd31);
assign add_ln36_29_fu_1225_p2 = (lshr_ln36_7_reg_1880 + 9'd3);
assign add_ln36_2_fu_1300_p2 = (mul_ln36_reg_1796 + 9'd4);
assign add_ln36_30_fu_1275_p2 = (empty_reg_1828 + 10'd33);
assign add_ln36_31_fu_1345_p2 = (lshr_ln36_7_reg_1880 + 9'd4);
assign add_ln36_32_fu_1395_p2 = (empty_reg_1828 + 10'd35);
assign add_ln36_33_fu_1465_p2 = (lshr_ln36_7_reg_1880 + 9'd5);
assign add_ln36_34_fu_1524_p2 = (empty_reg_1828 + 10'd37);
assign add_ln36_35_fu_1604_p2 = (lshr_ln36_7_reg_1880 + 9'd6);
assign add_ln36_3_fu_1420_p2 = (mul_ln36_reg_1796 + 9'd5);
assign add_ln36_4_fu_1559_p2 = (mul_ln36_reg_1796 + 9'd6);
assign add_ln36_5_fu_873_p2 = (empty_reg_1828 + 10'd1);
assign add_ln36_6_fu_960_p2 = (lshr_ln9_reg_1845 + 9'd1);
assign add_ln36_7_fu_1000_p2 = (empty_reg_1828 + 10'd3);
assign add_ln36_8_fu_1075_p2 = (lshr_ln9_reg_1845 + 9'd2);
assign add_ln36_9_fu_1125_p2 = (empty_reg_1828 + 10'd5);
assign add_ln36_fu_1060_p2 = (mul_ln36_reg_1796 + 9'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage12;
assign ap_ready = ap_ready_sig;
assign bitcast_ln36_10_fu_1554_p1 = reg_745;
assign bitcast_ln36_11_fu_1614_p1 = reg_749;
assign bitcast_ln36_12_fu_1634_p1 = reg_745;
assign bitcast_ln36_13_fu_955_p1 = reg_753;
assign bitcast_ln36_14_fu_995_p1 = reg_745;
assign bitcast_ln36_15_fu_1070_p1 = reg_749;
assign bitcast_ln36_16_fu_1120_p1 = reg_745;
assign bitcast_ln36_17_fu_1190_p1 = reg_749;
assign bitcast_ln36_18_fu_1240_p1 = reg_745;
assign bitcast_ln36_19_fu_1310_p1 = reg_749;
assign bitcast_ln36_1_fu_938_p1 = reg_749;
assign bitcast_ln36_20_fu_1360_p1 = reg_745;
assign bitcast_ln36_21_fu_1430_p1 = reg_749;
assign bitcast_ln36_22_fu_1480_p1 = reg_745;
assign bitcast_ln36_23_fu_1569_p1 = reg_749;
assign bitcast_ln36_24_fu_1619_p1 = reg_745;
assign bitcast_ln36_25_fu_1639_p1 = reg_749;
assign bitcast_ln36_26_fu_970_p1 = reg_757;
assign bitcast_ln36_27_fu_1020_p1 = reg_749;
assign bitcast_ln36_28_fu_1085_p1 = reg_757;
assign bitcast_ln36_29_fu_1145_p1 = reg_753;
assign bitcast_ln36_2_fu_1055_p1 = reg_745;
assign bitcast_ln36_30_fu_1205_p1 = reg_757;
assign bitcast_ln36_31_fu_1265_p1 = reg_753;
assign bitcast_ln36_32_fu_1325_p1 = reg_757;
assign bitcast_ln36_33_fu_1385_p1 = reg_753;
assign bitcast_ln36_34_fu_1445_p1 = reg_757;
assign bitcast_ln36_35_fu_1514_p1 = reg_753;
assign bitcast_ln36_36_fu_1584_p1 = reg_757;
assign bitcast_ln36_37_fu_1624_p1 = reg_753;
assign bitcast_ln36_38_fu_1644_p1 = reg_757;
assign bitcast_ln36_39_fu_1025_p1 = reg_753;
assign bitcast_ln36_3_fu_1115_p1 = reg_749;
assign bitcast_ln36_40_fu_1030_p1 = reg_757;
assign bitcast_ln36_41_fu_1100_p1 = reg_753;
assign bitcast_ln36_42_fu_1150_p1 = reg_757;
assign bitcast_ln36_43_fu_1220_p1 = reg_753;
assign bitcast_ln36_44_fu_1270_p1 = reg_757;
assign bitcast_ln36_45_fu_1340_p1 = reg_753;
assign bitcast_ln36_46_fu_1390_p1 = reg_757;
assign bitcast_ln36_47_fu_1460_p1 = reg_753;
assign bitcast_ln36_48_fu_1519_p1 = reg_757;
assign bitcast_ln36_49_fu_1599_p1 = reg_753;
assign bitcast_ln36_4_fu_1175_p1 = reg_745;
assign bitcast_ln36_50_fu_1629_p1 = reg_757;
assign bitcast_ln36_51_fu_1649_p1 = reg_753;
assign bitcast_ln36_5_fu_1235_p1 = reg_749;
assign bitcast_ln36_6_fu_1295_p1 = reg_745;
assign bitcast_ln36_7_fu_1355_p1 = reg_749;
assign bitcast_ln36_8_fu_1415_p1 = reg_745;
assign bitcast_ln36_9_fu_1475_p1 = reg_749;
assign bitcast_ln36_fu_933_p1 = reg_745;
assign empty_41_fu_893_p2 = (empty_reg_1828 + 10'd26);
assign empty_fu_842_p0 = empty_fu_842_p00;
assign empty_fu_842_p00 = or_ln7_fu_831_p3;
assign empty_fu_842_p1 = 10'd13;
assign grp_fu_939_p_ce = 1'b1;
assign grp_fu_939_p_din0 = grp_fu_710_p0;
assign grp_fu_939_p_din1 = grp_fu_710_p1;
assign grp_fu_939_p_opcode = 2'd0;
assign grp_fu_943_p_ce = 1'b1;
assign grp_fu_943_p_din0 = grp_fu_715_p0;
assign grp_fu_943_p_din1 = grp_fu_715_p1;
assign grp_fu_943_p_opcode = 2'd0;
assign grp_fu_947_p_ce = 1'b1;
assign grp_fu_947_p_din0 = grp_fu_720_p0;
assign grp_fu_947_p_din1 = grp_fu_720_p1;
assign grp_fu_947_p_opcode = 2'd0;
assign grp_fu_951_p_ce = 1'b1;
assign grp_fu_951_p_din0 = grp_fu_725_p0;
assign grp_fu_951_p_din1 = grp_fu_725_p1;
assign grp_fu_951_p_opcode = 2'd0;
assign grp_fu_955_p_ce = 1'b1;
assign grp_fu_955_p_din0 = grp_fu_729_p0;
assign grp_fu_955_p_din1 = grp_fu_729_p1;
assign grp_fu_959_p_ce = 1'b1;
assign grp_fu_959_p_din0 = grp_fu_733_p0;
assign grp_fu_959_p_din1 = grp_fu_733_p1;
assign grp_fu_963_p_ce = 1'b1;
assign grp_fu_963_p_din0 = grp_fu_737_p0;
assign grp_fu_963_p_din1 = grp_fu_737_p1;
assign grp_fu_967_p_ce = 1'b1;
assign grp_fu_967_p_din0 = grp_fu_741_p0;
assign grp_fu_967_p_din1 = grp_fu_741_p1;
assign lshr_ln36_10_fu_1280_p4 = {{add_ln36_30_fu_1275_p2[9:1]}};
assign lshr_ln36_11_fu_1400_p4 = {{add_ln36_32_fu_1395_p2[9:1]}};
assign lshr_ln36_12_fu_1529_p4 = {{add_ln36_34_fu_1524_p2[9:1]}};
assign lshr_ln36_1_fu_878_p4 = {{add_ln36_5_fu_873_p2[9:1]}};
assign lshr_ln36_2_fu_1005_p4 = {{add_ln36_7_fu_1000_p2[9:1]}};
assign lshr_ln36_3_fu_1130_p4 = {{add_ln36_9_fu_1125_p2[9:1]}};
assign lshr_ln36_4_fu_1250_p4 = {{add_ln36_11_fu_1245_p2[9:1]}};
assign lshr_ln36_5_fu_1370_p4 = {{add_ln36_13_fu_1365_p2[9:1]}};
assign lshr_ln36_6_fu_1490_p4 = {{add_ln36_15_fu_1485_p2[9:1]}};
assign lshr_ln36_7_fu_898_p4 = {{empty_41_fu_893_p2[9:1]}};
assign lshr_ln36_8_fu_918_p4 = {{add_ln36_24_fu_913_p2[9:1]}};
assign lshr_ln36_9_fu_1040_p4 = {{add_ln36_26_fu_1035_p2[9:1]}};
assign lshr_ln36_s_fu_1160_p4 = {{add_ln36_28_fu_1155_p2[9:1]}};
assign lshr_ln8_fu_796_p4 = {{ap_sig_allocacmp_j_1[5:1]}};
assign lshr_ln9_fu_848_p4 = {{empty_fu_842_p2[9:1]}};
assign mul_ln36_fu_810_p0 = mul_ln36_fu_810_p00;
assign mul_ln36_fu_810_p00 = lshr_ln8_fu_796_p4;
assign mul_ln36_fu_810_p1 = 9'd13;
assign or_ln7_fu_831_p3 = {{lshr_ln8_reg_1790}, {1'd1}};
assign or_ln8_fu_1659_p3 = {{tmp_14_reg_2400_pp0_iter7_reg}, {1'd1}};
assign or_ln_fu_943_p3 = {{tmp_13_reg_1813}, {1'd1}};
assign weights1_0_address0 = weights1_0_address0_local;
assign weights1_0_address1 = weights1_0_address1_local;
assign weights1_0_ce0 = weights1_0_ce0_local;
assign weights1_0_ce1 = weights1_0_ce1_local;
assign weights1_1_address0 = weights1_1_address0_local;
assign weights1_1_address1 = weights1_1_address1_local;
assign weights1_1_ce0 = weights1_1_ce0_local;
assign weights1_1_ce1 = weights1_1_ce1_local;
assign zext_ln32_fu_1654_p1 = lshr_ln8_reg_1790_pp0_iter8_reg;
assign zext_ln34_1_fu_1666_p1 = or_ln8_fu_1659_p3;
assign zext_ln36_10_fu_1015_p1 = lshr_ln36_2_fu_1005_p4;
assign zext_ln36_11_fu_1080_p1 = add_ln36_8_fu_1075_p2;
assign zext_ln36_12_fu_1140_p1 = lshr_ln36_3_fu_1130_p4;
assign zext_ln36_13_fu_1200_p1 = add_ln36_10_fu_1195_p2;
assign zext_ln36_14_fu_1260_p1 = lshr_ln36_4_fu_1250_p4;
assign zext_ln36_15_fu_1320_p1 = add_ln36_12_fu_1315_p2;
assign zext_ln36_16_fu_1380_p1 = lshr_ln36_5_fu_1370_p4;
assign zext_ln36_17_fu_1440_p1 = add_ln36_14_fu_1435_p2;
assign zext_ln36_18_fu_1500_p1 = lshr_ln36_6_fu_1490_p4;
assign zext_ln36_19_fu_1579_p1 = add_ln36_16_fu_1574_p2;
assign zext_ln36_1_fu_950_p1 = or_ln_fu_943_p3;
assign zext_ln36_20_fu_868_p1 = add_ln36_17_fu_863_p2;
assign zext_ln36_21_fu_980_p1 = add_ln36_18_fu_975_p2;
assign zext_ln36_22_fu_1095_p1 = add_ln36_19_fu_1090_p2;
assign zext_ln36_23_fu_1215_p1 = add_ln36_20_fu_1210_p2;
assign zext_ln36_24_fu_1335_p1 = add_ln36_21_fu_1330_p2;
assign zext_ln36_25_fu_1455_p1 = add_ln36_22_fu_1450_p2;
assign zext_ln36_26_fu_1594_p1 = add_ln36_23_fu_1589_p2;
assign zext_ln36_27_fu_908_p1 = lshr_ln36_7_fu_898_p4;
assign zext_ln36_28_fu_928_p1 = lshr_ln36_8_fu_918_p4;
assign zext_ln36_29_fu_990_p1 = add_ln36_25_fu_985_p2;
assign zext_ln36_2_fu_1065_p1 = add_ln36_fu_1060_p2;
assign zext_ln36_30_fu_1050_p1 = lshr_ln36_9_fu_1040_p4;
assign zext_ln36_31_fu_1110_p1 = add_ln36_27_fu_1105_p2;
assign zext_ln36_32_fu_1170_p1 = lshr_ln36_s_fu_1160_p4;
assign zext_ln36_33_fu_1230_p1 = add_ln36_29_fu_1225_p2;
assign zext_ln36_34_fu_1290_p1 = lshr_ln36_10_fu_1280_p4;
assign zext_ln36_35_fu_1350_p1 = add_ln36_31_fu_1345_p2;
assign zext_ln36_36_fu_1410_p1 = lshr_ln36_11_fu_1400_p4;
assign zext_ln36_37_fu_1470_p1 = add_ln36_33_fu_1465_p2;
assign zext_ln36_38_fu_1539_p1 = lshr_ln36_12_fu_1529_p4;
assign zext_ln36_39_fu_1609_p1 = add_ln36_35_fu_1604_p2;
assign zext_ln36_3_fu_1185_p1 = add_ln36_1_fu_1180_p2;
assign zext_ln36_4_fu_1305_p1 = add_ln36_2_fu_1300_p2;
assign zext_ln36_5_fu_1425_p1 = add_ln36_3_fu_1420_p2;
assign zext_ln36_6_fu_1564_p1 = add_ln36_4_fu_1559_p2;
assign zext_ln36_7_fu_858_p1 = lshr_ln9_fu_848_p4;
assign zext_ln36_8_fu_888_p1 = lshr_ln36_1_fu_878_p4;
assign zext_ln36_9_fu_965_p1 = add_ln36_6_fu_960_p2;
assign zext_ln36_fu_826_p1 = mul_ln36_reg_1796;
always @ (posedge ap_clk) begin
    zext_ln36_20_reg_1860[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln36_1_reg_1910[0] <= 1'b1;
    zext_ln36_1_reg_1910[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln36_21_reg_1935[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln36_2_reg_1995[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln36_22_reg_2020[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln36_3_reg_2085[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln36_23_reg_2110[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln36_4_reg_2185[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln36_24_reg_2220[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln36_5_reg_2310[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln36_25_reg_2345[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln34_1_reg_2920[0] <= 1'b1;
    zext_ln34_1_reg_2920[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
end
endmodule 