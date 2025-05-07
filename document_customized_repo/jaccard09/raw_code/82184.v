module backprop_matrix_vector_product_with_bias_input_layer_35_36_1_Pipeline_mvp_product_input_l (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,activations_1_address0,activations_1_ce0,activations_1_we0,activations_1_d0,activations_0_address0,activations_0_ce0,activations_0_we0,activations_0_d0,weights1_0_address0,weights1_0_ce0,weights1_0_q0,weights1_0_address1,weights1_0_ce1,weights1_0_q1,tmp,weights1_1_address0,weights1_1_ce0,weights1_1_q0,weights1_1_address1,weights1_1_ce1,weights1_1_q1,tmp_s,tmp_15,tmp_16,tmp_17,tmp_18,tmp_19,tmp_20,tmp_21,tmp_22,tmp_23,tmp_24,tmp_25,grp_fu_939_p_din0,grp_fu_939_p_din1,grp_fu_939_p_opcode,grp_fu_939_p_dout0,grp_fu_939_p_ce,grp_fu_943_p_din0,grp_fu_943_p_din1,grp_fu_943_p_opcode,grp_fu_943_p_dout0,grp_fu_943_p_ce,grp_fu_947_p_din0,grp_fu_947_p_din1,grp_fu_947_p_opcode,grp_fu_947_p_dout0,grp_fu_947_p_ce,grp_fu_951_p_din0,grp_fu_951_p_din1,grp_fu_951_p_opcode,grp_fu_951_p_dout0,grp_fu_951_p_ce,grp_fu_955_p_din0,grp_fu_955_p_din1,grp_fu_955_p_dout0,grp_fu_955_p_ce,grp_fu_959_p_din0,grp_fu_959_p_din1,grp_fu_959_p_dout0,grp_fu_959_p_ce,grp_fu_963_p_din0,grp_fu_963_p_din1,grp_fu_963_p_dout0,grp_fu_963_p_ce,grp_fu_967_p_din0,grp_fu_967_p_din1,grp_fu_967_p_dout0,grp_fu_967_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 7'd1;
parameter    ap_ST_fsm_pp0_stage1 = 7'd2;
parameter    ap_ST_fsm_pp0_stage2 = 7'd4;
parameter    ap_ST_fsm_pp0_stage3 = 7'd8;
parameter    ap_ST_fsm_pp0_stage4 = 7'd16;
parameter    ap_ST_fsm_pp0_stage5 = 7'd32;
parameter    ap_ST_fsm_pp0_stage6 = 7'd64;
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
input  [63:0] tmp_s;
input  [63:0] tmp_15;
input  [63:0] tmp_16;
input  [63:0] tmp_17;
input  [63:0] tmp_18;
input  [63:0] tmp_19;
input  [63:0] tmp_20;
input  [63:0] tmp_21;
input  [63:0] tmp_22;
input  [63:0] tmp_23;
input  [63:0] tmp_24;
input  [63:0] tmp_25;
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
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
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
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] tmp_1_reg_1045;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_478;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] reg_483;
reg   [63:0] reg_488;
reg   [63:0] reg_493;
reg   [6:0] j_1_reg_1040;
reg   [0:0] tmp_1_reg_1045_pp0_iter1_reg;
reg   [0:0] tmp_1_reg_1045_pp0_iter2_reg;
reg   [0:0] tmp_1_reg_1045_pp0_iter3_reg;
reg   [0:0] tmp_1_reg_1045_pp0_iter4_reg;
reg   [0:0] tmp_1_reg_1045_pp0_iter5_reg;
reg   [0:0] tmp_1_reg_1045_pp0_iter6_reg;
reg   [0:0] tmp_1_reg_1045_pp0_iter7_reg;
reg   [0:0] tmp_1_reg_1045_pp0_iter8_reg;
reg   [0:0] tmp_1_reg_1045_pp0_iter9_reg;
reg   [0:0] tmp_1_reg_1045_pp0_iter10_reg;
reg   [0:0] tmp_1_reg_1045_pp0_iter11_reg;
reg   [0:0] tmp_1_reg_1045_pp0_iter12_reg;
reg   [0:0] tmp_1_reg_1045_pp0_iter13_reg;
reg   [0:0] tmp_1_reg_1045_pp0_iter14_reg;
reg   [0:0] tmp_1_reg_1045_pp0_iter15_reg;
wire   [4:0] lshr_ln7_fu_514_p4;
reg   [4:0] lshr_ln7_reg_1049;
reg   [4:0] lshr_ln7_reg_1049_pp0_iter1_reg;
reg   [4:0] lshr_ln7_reg_1049_pp0_iter2_reg;
reg   [4:0] lshr_ln7_reg_1049_pp0_iter3_reg;
reg   [4:0] lshr_ln7_reg_1049_pp0_iter4_reg;
reg   [4:0] lshr_ln7_reg_1049_pp0_iter5_reg;
reg   [4:0] lshr_ln7_reg_1049_pp0_iter6_reg;
reg   [4:0] lshr_ln7_reg_1049_pp0_iter7_reg;
reg   [4:0] lshr_ln7_reg_1049_pp0_iter8_reg;
reg   [4:0] lshr_ln7_reg_1049_pp0_iter9_reg;
reg   [4:0] lshr_ln7_reg_1049_pp0_iter10_reg;
reg   [4:0] lshr_ln7_reg_1049_pp0_iter11_reg;
reg   [4:0] lshr_ln7_reg_1049_pp0_iter12_reg;
reg   [4:0] lshr_ln7_reg_1049_pp0_iter13_reg;
reg   [4:0] lshr_ln7_reg_1049_pp0_iter14_reg;
reg   [4:0] lshr_ln7_reg_1049_pp0_iter15_reg;
reg   [4:0] lshr_ln7_reg_1049_pp0_iter16_reg;
wire   [8:0] mul_ln36_fu_528_p2;
reg   [8:0] mul_ln36_reg_1055;
wire   [63:0] zext_ln36_1_fu_544_p1;
reg   [63:0] zext_ln36_1_reg_1076;
wire   [9:0] empty_fu_560_p2;
reg   [9:0] empty_reg_1086;
wire   [8:0] lshr_ln8_fu_566_p4;
reg   [8:0] lshr_ln8_reg_1096;
wire   [63:0] bitcast_ln36_fu_631_p1;
wire   [63:0] bitcast_ln36_1_fu_636_p1;
wire   [63:0] bitcast_ln36_2_fu_641_p1;
wire   [63:0] bitcast_ln36_13_fu_657_p1;
wire   [63:0] bitcast_ln36_3_fu_692_p1;
wire   [63:0] bitcast_ln36_14_fu_708_p1;
wire   [63:0] bitcast_ln36_15_fu_713_p1;
wire   [63:0] bitcast_ln36_16_fu_718_p1;
wire   [63:0] bitcast_ln36_4_fu_753_p1;
wire   [63:0] bitcast_ln36_5_fu_758_p1;
wire   [63:0] bitcast_ln36_17_fu_774_p1;
wire   [63:0] bitcast_ln36_18_fu_779_p1;
reg   [8:0] lshr_ln36_6_reg_1251;
wire   [63:0] bitcast_ln36_6_fu_829_p1;
wire   [63:0] bitcast_ln36_7_fu_834_p1;
wire   [8:0] add_ln36_5_fu_850_p2;
reg   [8:0] add_ln36_5_reg_1276;
wire   [63:0] bitcast_ln36_19_fu_855_p1;
wire   [63:0] bitcast_ln36_20_fu_860_p1;
wire   [8:0] add_ln36_17_fu_879_p2;
reg   [8:0] add_ln36_17_reg_1301;
wire   [63:0] bitcast_ln36_8_fu_894_p1;
wire   [63:0] bitcast_ln36_9_fu_899_p1;
wire   [63:0] bitcast_ln36_21_fu_908_p1;
wire   [63:0] bitcast_ln36_22_fu_913_p1;
wire   [63:0] bitcast_ln36_10_fu_922_p1;
wire   [63:0] bitcast_ln36_11_fu_927_p1;
wire   [63:0] bitcast_ln36_23_fu_932_p1;
wire   [63:0] bitcast_ln36_24_fu_937_p1;
reg   [63:0] mul8_reg_1356;
reg   [63:0] mul8_s_reg_1361;
reg   [63:0] mul8_s_reg_1361_pp0_iter2_reg;
reg   [63:0] mul8_2_reg_1366;
reg   [63:0] mul8_2_reg_1366_pp0_iter2_reg;
reg   [63:0] mul8_2_reg_1366_pp0_iter3_reg;
wire   [63:0] bitcast_ln36_12_fu_942_p1;
reg   [63:0] mul8_1_reg_1376;
wire   [63:0] bitcast_ln36_25_fu_947_p1;
reg   [63:0] mul8_3_reg_1386;
reg   [63:0] mul8_3_reg_1386_pp0_iter2_reg;
reg   [63:0] mul8_3_reg_1386_pp0_iter3_reg;
reg   [63:0] mul8_3_reg_1386_pp0_iter4_reg;
reg   [63:0] mul8_1_1_reg_1391;
reg   [63:0] mul8_1_1_reg_1391_pp0_iter2_reg;
reg   [63:0] mul8_1_2_reg_1396;
reg   [63:0] mul8_1_2_reg_1396_pp0_iter2_reg;
reg   [63:0] mul8_1_2_reg_1396_pp0_iter3_reg;
reg   [63:0] mul8_1_3_reg_1401;
reg   [63:0] mul8_1_3_reg_1401_pp0_iter2_reg;
reg   [63:0] mul8_1_3_reg_1401_pp0_iter3_reg;
reg   [63:0] mul8_1_3_reg_1401_pp0_iter4_reg;
reg   [63:0] mul8_4_reg_1406;
reg   [63:0] mul8_4_reg_1406_pp0_iter2_reg;
reg   [63:0] mul8_4_reg_1406_pp0_iter3_reg;
reg   [63:0] mul8_4_reg_1406_pp0_iter4_reg;
reg   [63:0] mul8_4_reg_1406_pp0_iter5_reg;
reg   [63:0] mul8_5_reg_1411;
reg   [63:0] mul8_5_reg_1411_pp0_iter2_reg;
reg   [63:0] mul8_5_reg_1411_pp0_iter3_reg;
reg   [63:0] mul8_5_reg_1411_pp0_iter4_reg;
reg   [63:0] mul8_5_reg_1411_pp0_iter5_reg;
reg   [63:0] mul8_5_reg_1411_pp0_iter6_reg;
reg   [63:0] mul8_1_4_reg_1416;
reg   [63:0] mul8_1_4_reg_1416_pp0_iter2_reg;
reg   [63:0] mul8_1_4_reg_1416_pp0_iter3_reg;
reg   [63:0] mul8_1_4_reg_1416_pp0_iter4_reg;
reg   [63:0] mul8_1_4_reg_1416_pp0_iter5_reg;
reg   [63:0] mul8_1_5_reg_1421;
reg   [63:0] mul8_1_5_reg_1421_pp0_iter2_reg;
reg   [63:0] mul8_1_5_reg_1421_pp0_iter3_reg;
reg   [63:0] mul8_1_5_reg_1421_pp0_iter4_reg;
reg   [63:0] mul8_1_5_reg_1421_pp0_iter5_reg;
reg   [63:0] mul8_1_5_reg_1421_pp0_iter6_reg;
reg   [63:0] mul8_6_reg_1426;
reg   [63:0] mul8_6_reg_1426_pp0_iter2_reg;
reg   [63:0] mul8_6_reg_1426_pp0_iter3_reg;
reg   [63:0] mul8_6_reg_1426_pp0_iter4_reg;
reg   [63:0] mul8_6_reg_1426_pp0_iter5_reg;
reg   [63:0] mul8_6_reg_1426_pp0_iter6_reg;
reg   [63:0] mul8_6_reg_1426_pp0_iter7_reg;
reg   [63:0] mul8_7_reg_1431;
reg   [63:0] mul8_7_reg_1431_pp0_iter2_reg;
reg   [63:0] mul8_7_reg_1431_pp0_iter3_reg;
reg   [63:0] mul8_7_reg_1431_pp0_iter4_reg;
reg   [63:0] mul8_7_reg_1431_pp0_iter5_reg;
reg   [63:0] mul8_7_reg_1431_pp0_iter6_reg;
reg   [63:0] mul8_7_reg_1431_pp0_iter7_reg;
reg   [63:0] mul8_7_reg_1431_pp0_iter8_reg;
reg   [63:0] mul8_1_6_reg_1436;
reg   [63:0] mul8_1_6_reg_1436_pp0_iter2_reg;
reg   [63:0] mul8_1_6_reg_1436_pp0_iter3_reg;
reg   [63:0] mul8_1_6_reg_1436_pp0_iter4_reg;
reg   [63:0] mul8_1_6_reg_1436_pp0_iter5_reg;
reg   [63:0] mul8_1_6_reg_1436_pp0_iter6_reg;
reg   [63:0] mul8_1_6_reg_1436_pp0_iter7_reg;
reg   [63:0] mul8_1_7_reg_1441;
reg   [63:0] mul8_1_7_reg_1441_pp0_iter2_reg;
reg   [63:0] mul8_1_7_reg_1441_pp0_iter3_reg;
reg   [63:0] mul8_1_7_reg_1441_pp0_iter4_reg;
reg   [63:0] mul8_1_7_reg_1441_pp0_iter5_reg;
reg   [63:0] mul8_1_7_reg_1441_pp0_iter6_reg;
reg   [63:0] mul8_1_7_reg_1441_pp0_iter7_reg;
reg   [63:0] mul8_1_7_reg_1441_pp0_iter8_reg;
reg   [63:0] mul8_8_reg_1446;
reg   [63:0] mul8_8_reg_1446_pp0_iter2_reg;
reg   [63:0] mul8_8_reg_1446_pp0_iter3_reg;
reg   [63:0] mul8_8_reg_1446_pp0_iter4_reg;
reg   [63:0] mul8_8_reg_1446_pp0_iter5_reg;
reg   [63:0] mul8_8_reg_1446_pp0_iter6_reg;
reg   [63:0] mul8_8_reg_1446_pp0_iter7_reg;
reg   [63:0] mul8_8_reg_1446_pp0_iter8_reg;
reg   [63:0] mul8_8_reg_1446_pp0_iter9_reg;
reg   [63:0] mul8_9_reg_1451;
reg   [63:0] mul8_9_reg_1451_pp0_iter2_reg;
reg   [63:0] mul8_9_reg_1451_pp0_iter3_reg;
reg   [63:0] mul8_9_reg_1451_pp0_iter4_reg;
reg   [63:0] mul8_9_reg_1451_pp0_iter5_reg;
reg   [63:0] mul8_9_reg_1451_pp0_iter6_reg;
reg   [63:0] mul8_9_reg_1451_pp0_iter7_reg;
reg   [63:0] mul8_9_reg_1451_pp0_iter8_reg;
reg   [63:0] mul8_9_reg_1451_pp0_iter9_reg;
reg   [63:0] mul8_9_reg_1451_pp0_iter10_reg;
reg   [63:0] mul8_1_8_reg_1456;
reg   [63:0] mul8_1_8_reg_1456_pp0_iter2_reg;
reg   [63:0] mul8_1_8_reg_1456_pp0_iter3_reg;
reg   [63:0] mul8_1_8_reg_1456_pp0_iter4_reg;
reg   [63:0] mul8_1_8_reg_1456_pp0_iter5_reg;
reg   [63:0] mul8_1_8_reg_1456_pp0_iter6_reg;
reg   [63:0] mul8_1_8_reg_1456_pp0_iter7_reg;
reg   [63:0] mul8_1_8_reg_1456_pp0_iter8_reg;
reg   [63:0] mul8_1_8_reg_1456_pp0_iter9_reg;
reg   [63:0] mul8_1_9_reg_1461;
reg   [63:0] mul8_1_9_reg_1461_pp0_iter2_reg;
reg   [63:0] mul8_1_9_reg_1461_pp0_iter3_reg;
reg   [63:0] mul8_1_9_reg_1461_pp0_iter4_reg;
reg   [63:0] mul8_1_9_reg_1461_pp0_iter5_reg;
reg   [63:0] mul8_1_9_reg_1461_pp0_iter6_reg;
reg   [63:0] mul8_1_9_reg_1461_pp0_iter7_reg;
reg   [63:0] mul8_1_9_reg_1461_pp0_iter8_reg;
reg   [63:0] mul8_1_9_reg_1461_pp0_iter9_reg;
reg   [63:0] mul8_1_9_reg_1461_pp0_iter10_reg;
reg   [63:0] mul8_10_reg_1466;
reg   [63:0] mul8_10_reg_1466_pp0_iter3_reg;
reg   [63:0] mul8_10_reg_1466_pp0_iter4_reg;
reg   [63:0] mul8_10_reg_1466_pp0_iter5_reg;
reg   [63:0] mul8_10_reg_1466_pp0_iter6_reg;
reg   [63:0] mul8_10_reg_1466_pp0_iter7_reg;
reg   [63:0] mul8_10_reg_1466_pp0_iter8_reg;
reg   [63:0] mul8_10_reg_1466_pp0_iter9_reg;
reg   [63:0] mul8_10_reg_1466_pp0_iter10_reg;
reg   [63:0] mul8_10_reg_1466_pp0_iter11_reg;
reg   [63:0] mul8_10_reg_1466_pp0_iter12_reg;
reg   [63:0] mul8_11_reg_1471;
reg   [63:0] mul8_11_reg_1471_pp0_iter3_reg;
reg   [63:0] mul8_11_reg_1471_pp0_iter4_reg;
reg   [63:0] mul8_11_reg_1471_pp0_iter5_reg;
reg   [63:0] mul8_11_reg_1471_pp0_iter6_reg;
reg   [63:0] mul8_11_reg_1471_pp0_iter7_reg;
reg   [63:0] mul8_11_reg_1471_pp0_iter8_reg;
reg   [63:0] mul8_11_reg_1471_pp0_iter9_reg;
reg   [63:0] mul8_11_reg_1471_pp0_iter10_reg;
reg   [63:0] mul8_11_reg_1471_pp0_iter11_reg;
reg   [63:0] mul8_11_reg_1471_pp0_iter12_reg;
reg   [63:0] mul8_11_reg_1471_pp0_iter13_reg;
reg   [63:0] mul8_1_s_reg_1476;
reg   [63:0] mul8_1_s_reg_1476_pp0_iter3_reg;
reg   [63:0] mul8_1_s_reg_1476_pp0_iter4_reg;
reg   [63:0] mul8_1_s_reg_1476_pp0_iter5_reg;
reg   [63:0] mul8_1_s_reg_1476_pp0_iter6_reg;
reg   [63:0] mul8_1_s_reg_1476_pp0_iter7_reg;
reg   [63:0] mul8_1_s_reg_1476_pp0_iter8_reg;
reg   [63:0] mul8_1_s_reg_1476_pp0_iter9_reg;
reg   [63:0] mul8_1_s_reg_1476_pp0_iter10_reg;
reg   [63:0] mul8_1_s_reg_1476_pp0_iter11_reg;
reg   [63:0] mul8_1_s_reg_1476_pp0_iter12_reg;
reg   [63:0] mul8_1_10_reg_1481;
reg   [63:0] mul8_1_10_reg_1481_pp0_iter3_reg;
reg   [63:0] mul8_1_10_reg_1481_pp0_iter4_reg;
reg   [63:0] mul8_1_10_reg_1481_pp0_iter5_reg;
reg   [63:0] mul8_1_10_reg_1481_pp0_iter6_reg;
reg   [63:0] mul8_1_10_reg_1481_pp0_iter7_reg;
reg   [63:0] mul8_1_10_reg_1481_pp0_iter8_reg;
reg   [63:0] mul8_1_10_reg_1481_pp0_iter9_reg;
reg   [63:0] mul8_1_10_reg_1481_pp0_iter10_reg;
reg   [63:0] mul8_1_10_reg_1481_pp0_iter11_reg;
reg   [63:0] mul8_1_10_reg_1481_pp0_iter12_reg;
reg   [63:0] mul8_1_10_reg_1481_pp0_iter13_reg;
reg   [63:0] mul8_12_reg_1486;
reg   [63:0] mul8_12_reg_1486_pp0_iter3_reg;
reg   [63:0] mul8_12_reg_1486_pp0_iter4_reg;
reg   [63:0] mul8_12_reg_1486_pp0_iter5_reg;
reg   [63:0] mul8_12_reg_1486_pp0_iter6_reg;
reg   [63:0] mul8_12_reg_1486_pp0_iter7_reg;
reg   [63:0] mul8_12_reg_1486_pp0_iter8_reg;
reg   [63:0] mul8_12_reg_1486_pp0_iter9_reg;
reg   [63:0] mul8_12_reg_1486_pp0_iter10_reg;
reg   [63:0] mul8_12_reg_1486_pp0_iter11_reg;
reg   [63:0] mul8_12_reg_1486_pp0_iter12_reg;
reg   [63:0] mul8_12_reg_1486_pp0_iter13_reg;
reg   [63:0] mul8_12_reg_1486_pp0_iter14_reg;
reg   [63:0] mul8_1_11_reg_1491;
reg   [63:0] mul8_1_11_reg_1491_pp0_iter3_reg;
reg   [63:0] mul8_1_11_reg_1491_pp0_iter4_reg;
reg   [63:0] mul8_1_11_reg_1491_pp0_iter5_reg;
reg   [63:0] mul8_1_11_reg_1491_pp0_iter6_reg;
reg   [63:0] mul8_1_11_reg_1491_pp0_iter7_reg;
reg   [63:0] mul8_1_11_reg_1491_pp0_iter8_reg;
reg   [63:0] mul8_1_11_reg_1491_pp0_iter9_reg;
reg   [63:0] mul8_1_11_reg_1491_pp0_iter10_reg;
reg   [63:0] mul8_1_11_reg_1491_pp0_iter11_reg;
reg   [63:0] mul8_1_11_reg_1491_pp0_iter12_reg;
reg   [63:0] mul8_1_11_reg_1491_pp0_iter13_reg;
reg   [63:0] mul8_1_11_reg_1491_pp0_iter14_reg;
reg   [63:0] add_reg_1496;
reg   [63:0] add11_1_reg_1501;
reg   [63:0] add11_s_reg_1506;
reg   [63:0] add11_1_1_reg_1511;
reg   [63:0] add11_2_reg_1516;
reg   [63:0] add11_1_2_reg_1521;
reg   [63:0] add11_3_reg_1526;
reg   [63:0] add11_1_3_reg_1531;
reg   [63:0] add11_4_reg_1536;
reg   [63:0] add11_1_4_reg_1541;
reg   [63:0] add11_5_reg_1546;
reg   [63:0] add11_1_5_reg_1551;
reg   [63:0] add11_6_reg_1556;
reg   [63:0] add11_1_6_reg_1561;
reg   [63:0] add11_7_reg_1566;
reg   [63:0] add11_1_7_reg_1571;
reg   [63:0] add11_8_reg_1576;
reg   [63:0] add11_1_8_reg_1581;
reg   [63:0] add11_9_reg_1586;
reg   [63:0] add11_1_9_reg_1591;
reg   [63:0] add11_10_reg_1596;
reg   [63:0] add11_1_s_reg_1601;
reg   [63:0] add11_11_reg_1606;
reg   [63:0] add11_1_10_reg_1611;
reg   [63:0] add11_12_reg_1616;
reg   [63:0] add11_1_11_reg_1621;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln36_fu_534_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln36_7_fu_576_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln36_8_fu_596_p1;
wire   [63:0] zext_ln36_9_fu_606_p1;
wire   [63:0] zext_ln36_10_fu_626_p1;
wire   [63:0] zext_ln36_2_fu_651_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln36_11_fu_667_p1;
wire   [63:0] zext_ln36_12_fu_687_p1;
wire   [63:0] zext_ln36_3_fu_702_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln36_13_fu_728_p1;
wire   [63:0] zext_ln36_14_fu_748_p1;
wire   [63:0] zext_ln36_4_fu_768_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln36_15_fu_789_p1;
wire   [63:0] zext_ln36_16_fu_809_p1;
wire   [63:0] zext_ln36_5_fu_844_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln36_17_fu_870_p1;
wire   [63:0] zext_ln36_18_fu_875_p1;
wire   [63:0] zext_ln36_6_fu_904_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln36_19_fu_918_p1;
wire   [63:0] zext_ln32_fu_952_p1;
reg   [6:0] j_fu_110;
wire   [6:0] add_ln33_fu_884_p2;
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
reg    activations_0_we0_local;
reg    activations_0_ce0_local;
reg    activations_1_we0_local;
reg    activations_1_ce0_local;
reg   [63:0] grp_fu_444_p0;
reg   [63:0] grp_fu_444_p1;
reg   [63:0] grp_fu_449_p0;
reg   [63:0] grp_fu_449_p1;
reg   [63:0] grp_fu_454_p0;
reg   [63:0] grp_fu_454_p1;
reg   [63:0] grp_fu_458_p0;
reg   [63:0] grp_fu_458_p1;
reg   [63:0] grp_fu_462_p0;
reg   [63:0] grp_fu_462_p1;
reg   [63:0] grp_fu_466_p0;
reg   [63:0] grp_fu_466_p1;
reg   [63:0] grp_fu_470_p0;
reg   [63:0] grp_fu_470_p1;
reg   [63:0] grp_fu_474_p0;
reg   [63:0] grp_fu_474_p1;
wire   [4:0] mul_ln36_fu_528_p0;
wire   [4:0] mul_ln36_fu_528_p1;
wire   [8:0] add_ln36_fu_539_p2;
wire   [5:0] or_ln_fu_549_p3;
wire   [5:0] empty_fu_560_p0;
wire   [4:0] empty_fu_560_p1;
wire   [9:0] add_ln36_6_fu_581_p2;
wire   [8:0] lshr_ln36_1_fu_586_p4;
wire   [8:0] add_ln36_7_fu_601_p2;
wire   [9:0] add_ln36_8_fu_611_p2;
wire   [8:0] lshr_ln36_2_fu_616_p4;
wire   [8:0] add_ln36_1_fu_646_p2;
wire   [8:0] add_ln36_9_fu_662_p2;
wire   [9:0] add_ln36_10_fu_672_p2;
wire   [8:0] lshr_ln36_3_fu_677_p4;
wire   [8:0] add_ln36_2_fu_697_p2;
wire   [8:0] add_ln36_11_fu_723_p2;
wire   [9:0] add_ln36_12_fu_733_p2;
wire   [8:0] lshr_ln36_4_fu_738_p4;
wire   [8:0] add_ln36_3_fu_763_p2;
wire   [8:0] add_ln36_13_fu_784_p2;
wire   [9:0] add_ln36_14_fu_794_p2;
wire   [8:0] lshr_ln36_5_fu_799_p4;
wire   [9:0] add_ln36_16_fu_814_p2;
wire   [8:0] add_ln36_4_fu_839_p2;
wire   [8:0] add_ln36_15_fu_865_p2;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter15_stage2;
reg    ap_idle_pp0_0to14;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg    ap_loop_exit_ready_pp0_iter15_reg;
reg   [6:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to16;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [9:0] empty_fu_560_p00;
wire   [8:0] mul_ln36_fu_528_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_fu_110 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_mul_5ns_5ns_9_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 5 ),.dout_WIDTH( 9 ))
mul_5ns_5ns_9_1_1_U9(.din0(mul_ln36_fu_528_p0),.din1(mul_ln36_fu_528_p1),.dout(mul_ln36_fu_528_p2));
backprop_mul_6ns_5ns_10_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 5 ),.dout_WIDTH( 10 ))
mul_6ns_5ns_10_1_1_U10(.din0(empty_fu_560_p0),.din1(empty_fu_560_p1),.dout(empty_fu_560_p2));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage6),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready_pp0_iter15_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage6)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter16 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter15_stage2) & (ap_idle_pp0_0to14 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter15_stage2) & (ap_idle_pp0_0to14 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter15_stage2) & (ap_idle_pp0_0to14 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter15_stage2) & (ap_idle_pp0_0to14 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter15_stage2) & (ap_idle_pp0_0to14 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter15_stage2) & (ap_idle_pp0_0to14 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter15_stage2) & (ap_idle_pp0_0to14 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter15_stage2) & (ap_idle_pp0_0to14 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter15_stage2) & (ap_idle_pp0_0to14 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter15_stage2) & (ap_idle_pp0_0to14 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter15_stage2) & (ap_idle_pp0_0to14 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter15_stage2) & (ap_idle_pp0_0to14 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter15_stage2) & (ap_idle_pp0_0to14 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter15_stage2) & (ap_idle_pp0_0to14 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter15_stage2) & (ap_idle_pp0_0to14 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_110 <= 7'd0;
    end else if (((tmp_1_reg_1045 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        j_fu_110 <= add_ln33_fu_884_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_478 <= weights1_0_q0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_478 <= weights1_0_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_483 <= weights1_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_483 <= weights1_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_488 <= weights1_0_q1;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_488 <= weights1_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_493 <= weights1_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_493 <= weights1_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add11_10_reg_1596 <= grp_fu_947_p_dout0;
        add11_1_s_reg_1601 <= grp_fu_951_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_11_reg_1606 <= grp_fu_947_p_dout0;
        add11_1_10_reg_1611 <= grp_fu_951_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add11_12_reg_1616 <= grp_fu_947_p_dout0;
        add11_1_11_reg_1621 <= grp_fu_951_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add11_1_1_reg_1511 <= grp_fu_943_p_dout0;
        add11_s_reg_1506 <= grp_fu_939_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add11_1_2_reg_1521 <= grp_fu_943_p_dout0;
        add11_2_reg_1516 <= grp_fu_939_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add11_1_3_reg_1531 <= grp_fu_943_p_dout0;
        add11_3_reg_1526 <= grp_fu_939_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_1_4_reg_1541 <= grp_fu_943_p_dout0;
        add11_4_reg_1536 <= grp_fu_939_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add11_1_5_reg_1551 <= grp_fu_943_p_dout0;
        add11_5_reg_1546 <= grp_fu_939_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add11_1_6_reg_1561 <= grp_fu_943_p_dout0;
        add11_6_reg_1556 <= grp_fu_939_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add11_1_7_reg_1571 <= grp_fu_951_p_dout0;
        add11_7_reg_1566 <= grp_fu_947_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add11_1_8_reg_1581 <= grp_fu_951_p_dout0;
        add11_8_reg_1576 <= grp_fu_947_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add11_1_9_reg_1591 <= grp_fu_951_p_dout0;
        add11_9_reg_1586 <= grp_fu_947_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add11_1_reg_1501 <= grp_fu_943_p_dout0;
        add_reg_1496 <= grp_fu_939_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln36_17_reg_1301 <= add_ln36_17_fu_879_p2;
        add_ln36_5_reg_1276 <= add_ln36_5_fu_850_p2;
        mul8_1_8_reg_1456_pp0_iter2_reg <= mul8_1_8_reg_1456;
        mul8_1_8_reg_1456_pp0_iter3_reg <= mul8_1_8_reg_1456_pp0_iter2_reg;
        mul8_1_8_reg_1456_pp0_iter4_reg <= mul8_1_8_reg_1456_pp0_iter3_reg;
        mul8_1_8_reg_1456_pp0_iter5_reg <= mul8_1_8_reg_1456_pp0_iter4_reg;
        mul8_1_8_reg_1456_pp0_iter6_reg <= mul8_1_8_reg_1456_pp0_iter5_reg;
        mul8_1_8_reg_1456_pp0_iter7_reg <= mul8_1_8_reg_1456_pp0_iter6_reg;
        mul8_1_8_reg_1456_pp0_iter8_reg <= mul8_1_8_reg_1456_pp0_iter7_reg;
        mul8_1_8_reg_1456_pp0_iter9_reg <= mul8_1_8_reg_1456_pp0_iter8_reg;
        mul8_1_9_reg_1461_pp0_iter10_reg <= mul8_1_9_reg_1461_pp0_iter9_reg;
        mul8_1_9_reg_1461_pp0_iter2_reg <= mul8_1_9_reg_1461;
        mul8_1_9_reg_1461_pp0_iter3_reg <= mul8_1_9_reg_1461_pp0_iter2_reg;
        mul8_1_9_reg_1461_pp0_iter4_reg <= mul8_1_9_reg_1461_pp0_iter3_reg;
        mul8_1_9_reg_1461_pp0_iter5_reg <= mul8_1_9_reg_1461_pp0_iter4_reg;
        mul8_1_9_reg_1461_pp0_iter6_reg <= mul8_1_9_reg_1461_pp0_iter5_reg;
        mul8_1_9_reg_1461_pp0_iter7_reg <= mul8_1_9_reg_1461_pp0_iter6_reg;
        mul8_1_9_reg_1461_pp0_iter8_reg <= mul8_1_9_reg_1461_pp0_iter7_reg;
        mul8_1_9_reg_1461_pp0_iter9_reg <= mul8_1_9_reg_1461_pp0_iter8_reg;
        mul8_8_reg_1446_pp0_iter2_reg <= mul8_8_reg_1446;
        mul8_8_reg_1446_pp0_iter3_reg <= mul8_8_reg_1446_pp0_iter2_reg;
        mul8_8_reg_1446_pp0_iter4_reg <= mul8_8_reg_1446_pp0_iter3_reg;
        mul8_8_reg_1446_pp0_iter5_reg <= mul8_8_reg_1446_pp0_iter4_reg;
        mul8_8_reg_1446_pp0_iter6_reg <= mul8_8_reg_1446_pp0_iter5_reg;
        mul8_8_reg_1446_pp0_iter7_reg <= mul8_8_reg_1446_pp0_iter6_reg;
        mul8_8_reg_1446_pp0_iter8_reg <= mul8_8_reg_1446_pp0_iter7_reg;
        mul8_8_reg_1446_pp0_iter9_reg <= mul8_8_reg_1446_pp0_iter8_reg;
        mul8_9_reg_1451_pp0_iter10_reg <= mul8_9_reg_1451_pp0_iter9_reg;
        mul8_9_reg_1451_pp0_iter2_reg <= mul8_9_reg_1451;
        mul8_9_reg_1451_pp0_iter3_reg <= mul8_9_reg_1451_pp0_iter2_reg;
        mul8_9_reg_1451_pp0_iter4_reg <= mul8_9_reg_1451_pp0_iter3_reg;
        mul8_9_reg_1451_pp0_iter5_reg <= mul8_9_reg_1451_pp0_iter4_reg;
        mul8_9_reg_1451_pp0_iter6_reg <= mul8_9_reg_1451_pp0_iter5_reg;
        mul8_9_reg_1451_pp0_iter7_reg <= mul8_9_reg_1451_pp0_iter6_reg;
        mul8_9_reg_1451_pp0_iter8_reg <= mul8_9_reg_1451_pp0_iter7_reg;
        mul8_9_reg_1451_pp0_iter9_reg <= mul8_9_reg_1451_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        empty_reg_1086 <= empty_fu_560_p2;
        lshr_ln8_reg_1096 <= {{empty_fu_560_p2[9:1]}};
        mul8_12_reg_1486_pp0_iter10_reg <= mul8_12_reg_1486_pp0_iter9_reg;
        mul8_12_reg_1486_pp0_iter11_reg <= mul8_12_reg_1486_pp0_iter10_reg;
        mul8_12_reg_1486_pp0_iter12_reg <= mul8_12_reg_1486_pp0_iter11_reg;
        mul8_12_reg_1486_pp0_iter13_reg <= mul8_12_reg_1486_pp0_iter12_reg;
        mul8_12_reg_1486_pp0_iter14_reg <= mul8_12_reg_1486_pp0_iter13_reg;
        mul8_12_reg_1486_pp0_iter3_reg <= mul8_12_reg_1486;
        mul8_12_reg_1486_pp0_iter4_reg <= mul8_12_reg_1486_pp0_iter3_reg;
        mul8_12_reg_1486_pp0_iter5_reg <= mul8_12_reg_1486_pp0_iter4_reg;
        mul8_12_reg_1486_pp0_iter6_reg <= mul8_12_reg_1486_pp0_iter5_reg;
        mul8_12_reg_1486_pp0_iter7_reg <= mul8_12_reg_1486_pp0_iter6_reg;
        mul8_12_reg_1486_pp0_iter8_reg <= mul8_12_reg_1486_pp0_iter7_reg;
        mul8_12_reg_1486_pp0_iter9_reg <= mul8_12_reg_1486_pp0_iter8_reg;
        mul8_1_11_reg_1491_pp0_iter10_reg <= mul8_1_11_reg_1491_pp0_iter9_reg;
        mul8_1_11_reg_1491_pp0_iter11_reg <= mul8_1_11_reg_1491_pp0_iter10_reg;
        mul8_1_11_reg_1491_pp0_iter12_reg <= mul8_1_11_reg_1491_pp0_iter11_reg;
        mul8_1_11_reg_1491_pp0_iter13_reg <= mul8_1_11_reg_1491_pp0_iter12_reg;
        mul8_1_11_reg_1491_pp0_iter14_reg <= mul8_1_11_reg_1491_pp0_iter13_reg;
        mul8_1_11_reg_1491_pp0_iter3_reg <= mul8_1_11_reg_1491;
        mul8_1_11_reg_1491_pp0_iter4_reg <= mul8_1_11_reg_1491_pp0_iter3_reg;
        mul8_1_11_reg_1491_pp0_iter5_reg <= mul8_1_11_reg_1491_pp0_iter4_reg;
        mul8_1_11_reg_1491_pp0_iter6_reg <= mul8_1_11_reg_1491_pp0_iter5_reg;
        mul8_1_11_reg_1491_pp0_iter7_reg <= mul8_1_11_reg_1491_pp0_iter6_reg;
        mul8_1_11_reg_1491_pp0_iter8_reg <= mul8_1_11_reg_1491_pp0_iter7_reg;
        mul8_1_11_reg_1491_pp0_iter9_reg <= mul8_1_11_reg_1491_pp0_iter8_reg;
        zext_ln36_1_reg_1076[8 : 0] <= zext_ln36_1_fu_544_p1[8 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_1_reg_1040 <= ap_sig_allocacmp_j_1;
        lshr_ln7_reg_1049 <= {{ap_sig_allocacmp_j_1[5:1]}};
        lshr_ln7_reg_1049_pp0_iter10_reg <= lshr_ln7_reg_1049_pp0_iter9_reg;
        lshr_ln7_reg_1049_pp0_iter11_reg <= lshr_ln7_reg_1049_pp0_iter10_reg;
        lshr_ln7_reg_1049_pp0_iter12_reg <= lshr_ln7_reg_1049_pp0_iter11_reg;
        lshr_ln7_reg_1049_pp0_iter13_reg <= lshr_ln7_reg_1049_pp0_iter12_reg;
        lshr_ln7_reg_1049_pp0_iter14_reg <= lshr_ln7_reg_1049_pp0_iter13_reg;
        lshr_ln7_reg_1049_pp0_iter15_reg <= lshr_ln7_reg_1049_pp0_iter14_reg;
        lshr_ln7_reg_1049_pp0_iter16_reg <= lshr_ln7_reg_1049_pp0_iter15_reg;
        lshr_ln7_reg_1049_pp0_iter1_reg <= lshr_ln7_reg_1049;
        lshr_ln7_reg_1049_pp0_iter2_reg <= lshr_ln7_reg_1049_pp0_iter1_reg;
        lshr_ln7_reg_1049_pp0_iter3_reg <= lshr_ln7_reg_1049_pp0_iter2_reg;
        lshr_ln7_reg_1049_pp0_iter4_reg <= lshr_ln7_reg_1049_pp0_iter3_reg;
        lshr_ln7_reg_1049_pp0_iter5_reg <= lshr_ln7_reg_1049_pp0_iter4_reg;
        lshr_ln7_reg_1049_pp0_iter6_reg <= lshr_ln7_reg_1049_pp0_iter5_reg;
        lshr_ln7_reg_1049_pp0_iter7_reg <= lshr_ln7_reg_1049_pp0_iter6_reg;
        lshr_ln7_reg_1049_pp0_iter8_reg <= lshr_ln7_reg_1049_pp0_iter7_reg;
        lshr_ln7_reg_1049_pp0_iter9_reg <= lshr_ln7_reg_1049_pp0_iter8_reg;
        mul8_10_reg_1466_pp0_iter10_reg <= mul8_10_reg_1466_pp0_iter9_reg;
        mul8_10_reg_1466_pp0_iter11_reg <= mul8_10_reg_1466_pp0_iter10_reg;
        mul8_10_reg_1466_pp0_iter12_reg <= mul8_10_reg_1466_pp0_iter11_reg;
        mul8_10_reg_1466_pp0_iter3_reg <= mul8_10_reg_1466;
        mul8_10_reg_1466_pp0_iter4_reg <= mul8_10_reg_1466_pp0_iter3_reg;
        mul8_10_reg_1466_pp0_iter5_reg <= mul8_10_reg_1466_pp0_iter4_reg;
        mul8_10_reg_1466_pp0_iter6_reg <= mul8_10_reg_1466_pp0_iter5_reg;
        mul8_10_reg_1466_pp0_iter7_reg <= mul8_10_reg_1466_pp0_iter6_reg;
        mul8_10_reg_1466_pp0_iter8_reg <= mul8_10_reg_1466_pp0_iter7_reg;
        mul8_10_reg_1466_pp0_iter9_reg <= mul8_10_reg_1466_pp0_iter8_reg;
        mul8_11_reg_1471_pp0_iter10_reg <= mul8_11_reg_1471_pp0_iter9_reg;
        mul8_11_reg_1471_pp0_iter11_reg <= mul8_11_reg_1471_pp0_iter10_reg;
        mul8_11_reg_1471_pp0_iter12_reg <= mul8_11_reg_1471_pp0_iter11_reg;
        mul8_11_reg_1471_pp0_iter13_reg <= mul8_11_reg_1471_pp0_iter12_reg;
        mul8_11_reg_1471_pp0_iter3_reg <= mul8_11_reg_1471;
        mul8_11_reg_1471_pp0_iter4_reg <= mul8_11_reg_1471_pp0_iter3_reg;
        mul8_11_reg_1471_pp0_iter5_reg <= mul8_11_reg_1471_pp0_iter4_reg;
        mul8_11_reg_1471_pp0_iter6_reg <= mul8_11_reg_1471_pp0_iter5_reg;
        mul8_11_reg_1471_pp0_iter7_reg <= mul8_11_reg_1471_pp0_iter6_reg;
        mul8_11_reg_1471_pp0_iter8_reg <= mul8_11_reg_1471_pp0_iter7_reg;
        mul8_11_reg_1471_pp0_iter9_reg <= mul8_11_reg_1471_pp0_iter8_reg;
        mul8_1_10_reg_1481_pp0_iter10_reg <= mul8_1_10_reg_1481_pp0_iter9_reg;
        mul8_1_10_reg_1481_pp0_iter11_reg <= mul8_1_10_reg_1481_pp0_iter10_reg;
        mul8_1_10_reg_1481_pp0_iter12_reg <= mul8_1_10_reg_1481_pp0_iter11_reg;
        mul8_1_10_reg_1481_pp0_iter13_reg <= mul8_1_10_reg_1481_pp0_iter12_reg;
        mul8_1_10_reg_1481_pp0_iter3_reg <= mul8_1_10_reg_1481;
        mul8_1_10_reg_1481_pp0_iter4_reg <= mul8_1_10_reg_1481_pp0_iter3_reg;
        mul8_1_10_reg_1481_pp0_iter5_reg <= mul8_1_10_reg_1481_pp0_iter4_reg;
        mul8_1_10_reg_1481_pp0_iter6_reg <= mul8_1_10_reg_1481_pp0_iter5_reg;
        mul8_1_10_reg_1481_pp0_iter7_reg <= mul8_1_10_reg_1481_pp0_iter6_reg;
        mul8_1_10_reg_1481_pp0_iter8_reg <= mul8_1_10_reg_1481_pp0_iter7_reg;
        mul8_1_10_reg_1481_pp0_iter9_reg <= mul8_1_10_reg_1481_pp0_iter8_reg;
        mul8_1_s_reg_1476_pp0_iter10_reg <= mul8_1_s_reg_1476_pp0_iter9_reg;
        mul8_1_s_reg_1476_pp0_iter11_reg <= mul8_1_s_reg_1476_pp0_iter10_reg;
        mul8_1_s_reg_1476_pp0_iter12_reg <= mul8_1_s_reg_1476_pp0_iter11_reg;
        mul8_1_s_reg_1476_pp0_iter3_reg <= mul8_1_s_reg_1476;
        mul8_1_s_reg_1476_pp0_iter4_reg <= mul8_1_s_reg_1476_pp0_iter3_reg;
        mul8_1_s_reg_1476_pp0_iter5_reg <= mul8_1_s_reg_1476_pp0_iter4_reg;
        mul8_1_s_reg_1476_pp0_iter6_reg <= mul8_1_s_reg_1476_pp0_iter5_reg;
        mul8_1_s_reg_1476_pp0_iter7_reg <= mul8_1_s_reg_1476_pp0_iter6_reg;
        mul8_1_s_reg_1476_pp0_iter8_reg <= mul8_1_s_reg_1476_pp0_iter7_reg;
        mul8_1_s_reg_1476_pp0_iter9_reg <= mul8_1_s_reg_1476_pp0_iter8_reg;
        mul_ln36_reg_1055 <= mul_ln36_fu_528_p2;
        tmp_1_reg_1045 <= ap_sig_allocacmp_j_1[32'd6];
        tmp_1_reg_1045_pp0_iter10_reg <= tmp_1_reg_1045_pp0_iter9_reg;
        tmp_1_reg_1045_pp0_iter11_reg <= tmp_1_reg_1045_pp0_iter10_reg;
        tmp_1_reg_1045_pp0_iter12_reg <= tmp_1_reg_1045_pp0_iter11_reg;
        tmp_1_reg_1045_pp0_iter13_reg <= tmp_1_reg_1045_pp0_iter12_reg;
        tmp_1_reg_1045_pp0_iter14_reg <= tmp_1_reg_1045_pp0_iter13_reg;
        tmp_1_reg_1045_pp0_iter15_reg <= tmp_1_reg_1045_pp0_iter14_reg;
        tmp_1_reg_1045_pp0_iter1_reg <= tmp_1_reg_1045;
        tmp_1_reg_1045_pp0_iter2_reg <= tmp_1_reg_1045_pp0_iter1_reg;
        tmp_1_reg_1045_pp0_iter3_reg <= tmp_1_reg_1045_pp0_iter2_reg;
        tmp_1_reg_1045_pp0_iter4_reg <= tmp_1_reg_1045_pp0_iter3_reg;
        tmp_1_reg_1045_pp0_iter5_reg <= tmp_1_reg_1045_pp0_iter4_reg;
        tmp_1_reg_1045_pp0_iter6_reg <= tmp_1_reg_1045_pp0_iter5_reg;
        tmp_1_reg_1045_pp0_iter7_reg <= tmp_1_reg_1045_pp0_iter6_reg;
        tmp_1_reg_1045_pp0_iter8_reg <= tmp_1_reg_1045_pp0_iter7_reg;
        tmp_1_reg_1045_pp0_iter9_reg <= tmp_1_reg_1045_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        lshr_ln36_6_reg_1251 <= {{add_ln36_16_fu_814_p2[9:1]}};
        mul8_1_6_reg_1436_pp0_iter2_reg <= mul8_1_6_reg_1436;
        mul8_1_6_reg_1436_pp0_iter3_reg <= mul8_1_6_reg_1436_pp0_iter2_reg;
        mul8_1_6_reg_1436_pp0_iter4_reg <= mul8_1_6_reg_1436_pp0_iter3_reg;
        mul8_1_6_reg_1436_pp0_iter5_reg <= mul8_1_6_reg_1436_pp0_iter4_reg;
        mul8_1_6_reg_1436_pp0_iter6_reg <= mul8_1_6_reg_1436_pp0_iter5_reg;
        mul8_1_6_reg_1436_pp0_iter7_reg <= mul8_1_6_reg_1436_pp0_iter6_reg;
        mul8_1_7_reg_1441_pp0_iter2_reg <= mul8_1_7_reg_1441;
        mul8_1_7_reg_1441_pp0_iter3_reg <= mul8_1_7_reg_1441_pp0_iter2_reg;
        mul8_1_7_reg_1441_pp0_iter4_reg <= mul8_1_7_reg_1441_pp0_iter3_reg;
        mul8_1_7_reg_1441_pp0_iter5_reg <= mul8_1_7_reg_1441_pp0_iter4_reg;
        mul8_1_7_reg_1441_pp0_iter6_reg <= mul8_1_7_reg_1441_pp0_iter5_reg;
        mul8_1_7_reg_1441_pp0_iter7_reg <= mul8_1_7_reg_1441_pp0_iter6_reg;
        mul8_1_7_reg_1441_pp0_iter8_reg <= mul8_1_7_reg_1441_pp0_iter7_reg;
        mul8_6_reg_1426_pp0_iter2_reg <= mul8_6_reg_1426;
        mul8_6_reg_1426_pp0_iter3_reg <= mul8_6_reg_1426_pp0_iter2_reg;
        mul8_6_reg_1426_pp0_iter4_reg <= mul8_6_reg_1426_pp0_iter3_reg;
        mul8_6_reg_1426_pp0_iter5_reg <= mul8_6_reg_1426_pp0_iter4_reg;
        mul8_6_reg_1426_pp0_iter6_reg <= mul8_6_reg_1426_pp0_iter5_reg;
        mul8_6_reg_1426_pp0_iter7_reg <= mul8_6_reg_1426_pp0_iter6_reg;
        mul8_7_reg_1431_pp0_iter2_reg <= mul8_7_reg_1431;
        mul8_7_reg_1431_pp0_iter3_reg <= mul8_7_reg_1431_pp0_iter2_reg;
        mul8_7_reg_1431_pp0_iter4_reg <= mul8_7_reg_1431_pp0_iter3_reg;
        mul8_7_reg_1431_pp0_iter5_reg <= mul8_7_reg_1431_pp0_iter4_reg;
        mul8_7_reg_1431_pp0_iter6_reg <= mul8_7_reg_1431_pp0_iter5_reg;
        mul8_7_reg_1431_pp0_iter7_reg <= mul8_7_reg_1431_pp0_iter6_reg;
        mul8_7_reg_1431_pp0_iter8_reg <= mul8_7_reg_1431_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul8_10_reg_1466 <= grp_fu_955_p_dout0;
        mul8_11_reg_1471 <= grp_fu_959_p_dout0;
        mul8_1_10_reg_1481 <= grp_fu_967_p_dout0;
        mul8_1_s_reg_1476 <= grp_fu_963_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul8_12_reg_1486 <= grp_fu_955_p_dout0;
        mul8_1_11_reg_1491 <= grp_fu_959_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul8_1_1_reg_1391 <= grp_fu_959_p_dout0;
        mul8_1_2_reg_1396 <= grp_fu_963_p_dout0;
        mul8_1_3_reg_1401 <= grp_fu_967_p_dout0;
        mul8_3_reg_1386 <= grp_fu_955_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul8_1_1_reg_1391_pp0_iter2_reg <= mul8_1_1_reg_1391;
        mul8_1_2_reg_1396_pp0_iter2_reg <= mul8_1_2_reg_1396;
        mul8_1_2_reg_1396_pp0_iter3_reg <= mul8_1_2_reg_1396_pp0_iter2_reg;
        mul8_1_3_reg_1401_pp0_iter2_reg <= mul8_1_3_reg_1401;
        mul8_1_3_reg_1401_pp0_iter3_reg <= mul8_1_3_reg_1401_pp0_iter2_reg;
        mul8_1_3_reg_1401_pp0_iter4_reg <= mul8_1_3_reg_1401_pp0_iter3_reg;
        mul8_3_reg_1386_pp0_iter2_reg <= mul8_3_reg_1386;
        mul8_3_reg_1386_pp0_iter3_reg <= mul8_3_reg_1386_pp0_iter2_reg;
        mul8_3_reg_1386_pp0_iter4_reg <= mul8_3_reg_1386_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul8_1_4_reg_1416 <= grp_fu_963_p_dout0;
        mul8_1_5_reg_1421 <= grp_fu_967_p_dout0;
        mul8_4_reg_1406 <= grp_fu_955_p_dout0;
        mul8_5_reg_1411 <= grp_fu_959_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul8_1_4_reg_1416_pp0_iter2_reg <= mul8_1_4_reg_1416;
        mul8_1_4_reg_1416_pp0_iter3_reg <= mul8_1_4_reg_1416_pp0_iter2_reg;
        mul8_1_4_reg_1416_pp0_iter4_reg <= mul8_1_4_reg_1416_pp0_iter3_reg;
        mul8_1_4_reg_1416_pp0_iter5_reg <= mul8_1_4_reg_1416_pp0_iter4_reg;
        mul8_1_5_reg_1421_pp0_iter2_reg <= mul8_1_5_reg_1421;
        mul8_1_5_reg_1421_pp0_iter3_reg <= mul8_1_5_reg_1421_pp0_iter2_reg;
        mul8_1_5_reg_1421_pp0_iter4_reg <= mul8_1_5_reg_1421_pp0_iter3_reg;
        mul8_1_5_reg_1421_pp0_iter5_reg <= mul8_1_5_reg_1421_pp0_iter4_reg;
        mul8_1_5_reg_1421_pp0_iter6_reg <= mul8_1_5_reg_1421_pp0_iter5_reg;
        mul8_4_reg_1406_pp0_iter2_reg <= mul8_4_reg_1406;
        mul8_4_reg_1406_pp0_iter3_reg <= mul8_4_reg_1406_pp0_iter2_reg;
        mul8_4_reg_1406_pp0_iter4_reg <= mul8_4_reg_1406_pp0_iter3_reg;
        mul8_4_reg_1406_pp0_iter5_reg <= mul8_4_reg_1406_pp0_iter4_reg;
        mul8_5_reg_1411_pp0_iter2_reg <= mul8_5_reg_1411;
        mul8_5_reg_1411_pp0_iter3_reg <= mul8_5_reg_1411_pp0_iter2_reg;
        mul8_5_reg_1411_pp0_iter4_reg <= mul8_5_reg_1411_pp0_iter3_reg;
        mul8_5_reg_1411_pp0_iter5_reg <= mul8_5_reg_1411_pp0_iter4_reg;
        mul8_5_reg_1411_pp0_iter6_reg <= mul8_5_reg_1411_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul8_1_6_reg_1436 <= grp_fu_963_p_dout0;
        mul8_1_7_reg_1441 <= grp_fu_967_p_dout0;
        mul8_6_reg_1426 <= grp_fu_955_p_dout0;
        mul8_7_reg_1431 <= grp_fu_959_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul8_1_8_reg_1456 <= grp_fu_963_p_dout0;
        mul8_1_9_reg_1461 <= grp_fu_967_p_dout0;
        mul8_8_reg_1446 <= grp_fu_955_p_dout0;
        mul8_9_reg_1451 <= grp_fu_959_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul8_1_reg_1376 <= grp_fu_967_p_dout0;
        mul8_2_reg_1366 <= grp_fu_963_p_dout0;
        mul8_reg_1356 <= grp_fu_955_p_dout0;
        mul8_s_reg_1361 <= grp_fu_959_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul8_2_reg_1366_pp0_iter2_reg <= mul8_2_reg_1366;
        mul8_2_reg_1366_pp0_iter3_reg <= mul8_2_reg_1366_pp0_iter2_reg;
        mul8_s_reg_1361_pp0_iter2_reg <= mul8_s_reg_1361;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        activations_0_ce0_local = 1'b1;
    end else begin
        activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        activations_0_we0_local = 1'b1;
    end else begin
        activations_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        activations_1_ce0_local = 1'b1;
    end else begin
        activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        activations_1_we0_local = 1'b1;
    end else begin
        activations_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_1_reg_1045 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter15 == 1'b1) & (tmp_1_reg_1045_pp0_iter15_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter15_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter15_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready_pp0_iter15_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to14 = 1'b1;
    end else begin
        ap_idle_pp0_0to14 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to16 = 1'b1;
    end else begin
        ap_idle_pp0_1to16 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_j_1 = j_fu_110;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_444_p0 = add11_5_reg_1546;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_444_p0 = add11_4_reg_1536;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_444_p0 = add11_3_reg_1526;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_444_p0 = add11_2_reg_1516;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_444_p0 = add11_s_reg_1506;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_444_p0 = add_reg_1496;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_444_p0 = mul8_reg_1356;
    end else begin
        grp_fu_444_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_444_p1 = mul8_6_reg_1426_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_444_p1 = mul8_5_reg_1411_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_444_p1 = mul8_4_reg_1406_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_444_p1 = mul8_3_reg_1386_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_444_p1 = mul8_2_reg_1366_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_444_p1 = mul8_s_reg_1361_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_444_p1 = 64'd0;
    end else begin
        grp_fu_444_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_449_p0 = add11_1_5_reg_1551;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_449_p0 = add11_1_4_reg_1541;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_449_p0 = add11_1_3_reg_1531;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_449_p0 = add11_1_2_reg_1521;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_449_p0 = add11_1_1_reg_1511;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_449_p0 = add11_1_reg_1501;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_449_p0 = mul8_1_reg_1376;
    end else begin
        grp_fu_449_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_449_p1 = mul8_1_6_reg_1436_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_449_p1 = mul8_1_5_reg_1421_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_449_p1 = mul8_1_4_reg_1416_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_449_p1 = mul8_1_3_reg_1401_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_449_p1 = mul8_1_2_reg_1396_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_449_p1 = mul8_1_1_reg_1391_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_449_p1 = 64'd0;
    end else begin
        grp_fu_449_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_454_p0 = add11_11_reg_1606;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_454_p0 = add11_10_reg_1596;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_454_p0 = add11_9_reg_1586;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_454_p0 = add11_8_reg_1576;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_454_p0 = add11_7_reg_1566;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_454_p0 = add11_6_reg_1556;
    end else begin
        grp_fu_454_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_454_p1 = mul8_12_reg_1486_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_454_p1 = mul8_11_reg_1471_pp0_iter13_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_454_p1 = mul8_10_reg_1466_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_454_p1 = mul8_9_reg_1451_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_454_p1 = mul8_8_reg_1446_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_454_p1 = mul8_7_reg_1431_pp0_iter8_reg;
    end else begin
        grp_fu_454_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_458_p0 = add11_1_10_reg_1611;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_458_p0 = add11_1_s_reg_1601;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_458_p0 = add11_1_9_reg_1591;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_458_p0 = add11_1_8_reg_1581;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_458_p0 = add11_1_7_reg_1571;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_458_p0 = add11_1_6_reg_1561;
    end else begin
        grp_fu_458_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_458_p1 = mul8_1_11_reg_1491_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_458_p1 = mul8_1_10_reg_1481_pp0_iter13_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_458_p1 = mul8_1_s_reg_1476_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_458_p1 = mul8_1_9_reg_1461_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_458_p1 = mul8_1_8_reg_1456_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_458_p1 = mul8_1_7_reg_1441_pp0_iter8_reg;
    end else begin
        grp_fu_458_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_462_p0 = bitcast_ln36_12_fu_942_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_462_p0 = bitcast_ln36_10_fu_922_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_462_p0 = bitcast_ln36_8_fu_894_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_462_p0 = bitcast_ln36_6_fu_829_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_462_p0 = bitcast_ln36_4_fu_753_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_462_p0 = bitcast_ln36_3_fu_692_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_462_p0 = bitcast_ln36_fu_631_p1;
    end else begin
        grp_fu_462_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_462_p1 = tmp_25;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_462_p1 = tmp_23;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_462_p1 = tmp_21;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_462_p1 = tmp_19;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_462_p1 = tmp_17;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_462_p1 = tmp_16;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_462_p1 = tmp;
    end else begin
        grp_fu_462_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_466_p0 = bitcast_ln36_25_fu_947_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_466_p0 = bitcast_ln36_11_fu_927_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_466_p0 = bitcast_ln36_9_fu_899_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_466_p0 = bitcast_ln36_7_fu_834_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_466_p0 = bitcast_ln36_5_fu_758_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_466_p0 = bitcast_ln36_14_fu_708_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_466_p0 = bitcast_ln36_1_fu_636_p1;
    end else begin
        grp_fu_466_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_466_p1 = tmp_25;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_466_p1 = tmp_24;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_466_p1 = tmp_22;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_466_p1 = tmp_20;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_466_p1 = tmp_18;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_466_p1 = tmp_s;
    end else begin
        grp_fu_466_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_470_p0 = bitcast_ln36_23_fu_932_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_470_p0 = bitcast_ln36_21_fu_908_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_470_p0 = bitcast_ln36_19_fu_855_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_470_p0 = bitcast_ln36_17_fu_774_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_470_p0 = bitcast_ln36_15_fu_713_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_470_p0 = bitcast_ln36_2_fu_641_p1;
    end else begin
        grp_fu_470_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_470_p1 = tmp_23;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_470_p1 = tmp_21;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_470_p1 = tmp_19;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_470_p1 = tmp_17;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_470_p1 = tmp_15;
    end else begin
        grp_fu_470_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_474_p0 = bitcast_ln36_24_fu_937_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_474_p0 = bitcast_ln36_22_fu_913_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_474_p0 = bitcast_ln36_20_fu_860_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_474_p0 = bitcast_ln36_18_fu_779_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_474_p0 = bitcast_ln36_16_fu_718_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_474_p0 = bitcast_ln36_13_fu_657_p1;
    end else begin
        grp_fu_474_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_474_p1 = tmp_24;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_474_p1 = tmp_22;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_474_p1 = tmp_20;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_474_p1 = tmp_18;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_474_p1 = tmp_16;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_474_p1 = tmp;
    end else begin
        grp_fu_474_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_0_address0_local = zext_ln36_6_fu_904_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights1_0_address0_local = zext_ln36_5_fu_844_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights1_0_address0_local = zext_ln36_4_fu_768_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_0_address0_local = zext_ln36_3_fu_702_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_0_address0_local = zext_ln36_2_fu_651_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_0_address0_local = zext_ln36_8_fu_596_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_0_address0_local = zext_ln36_1_fu_544_p1;
    end else begin
        weights1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            weights1_0_address1_local = zext_ln36_18_fu_875_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights1_0_address1_local = zext_ln36_16_fu_809_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights1_0_address1_local = zext_ln36_14_fu_748_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            weights1_0_address1_local = zext_ln36_12_fu_687_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights1_0_address1_local = zext_ln36_10_fu_626_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights1_0_address1_local = zext_ln36_fu_534_p1;
        end else begin
            weights1_0_address1_local = 'bx;
        end
    end else begin
        weights1_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_0_ce0_local = 1'b1;
    end else begin
        weights1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_0_ce1_local = 1'b1;
    end else begin
        weights1_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_1_address0_local = zext_ln36_19_fu_918_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights1_1_address0_local = zext_ln36_5_fu_844_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights1_1_address0_local = zext_ln36_4_fu_768_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_1_address0_local = zext_ln36_3_fu_702_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_1_address0_local = zext_ln36_2_fu_651_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_1_address0_local = zext_ln36_1_reg_1076;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_1_address0_local = zext_ln36_7_fu_576_p1;
    end else begin
        weights1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            weights1_1_address1_local = zext_ln36_17_fu_870_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights1_1_address1_local = zext_ln36_15_fu_789_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights1_1_address1_local = zext_ln36_13_fu_728_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            weights1_1_address1_local = zext_ln36_11_fu_667_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights1_1_address1_local = zext_ln36_9_fu_606_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights1_1_address1_local = zext_ln36_fu_534_p1;
        end else begin
            weights1_1_address1_local = 'bx;
        end
    end else begin
        weights1_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_1_ce0_local = 1'b1;
    end else begin
        weights1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_1_ce1_local = 1'b1;
    end else begin
        weights1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to16 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((1'b1 == ap_condition_exit_pp0_iter15_stage2) & (ap_idle_pp0_0to14 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign activations_0_address0 = zext_ln32_fu_952_p1;
assign activations_0_ce0 = activations_0_ce0_local;
assign activations_0_d0 = add11_12_reg_1616;
assign activations_0_we0 = activations_0_we0_local;
assign activations_1_address0 = zext_ln32_fu_952_p1;
assign activations_1_ce0 = activations_1_ce0_local;
assign activations_1_d0 = add11_1_11_reg_1621;
assign activations_1_we0 = activations_1_we0_local;
assign add_ln33_fu_884_p2 = (j_1_reg_1040 + 7'd2);
assign add_ln36_10_fu_672_p2 = (empty_reg_1086 + 10'd5);
assign add_ln36_11_fu_723_p2 = (lshr_ln8_reg_1096 + 9'd3);
assign add_ln36_12_fu_733_p2 = (empty_reg_1086 + 10'd7);
assign add_ln36_13_fu_784_p2 = (lshr_ln8_reg_1096 + 9'd4);
assign add_ln36_14_fu_794_p2 = (empty_reg_1086 + 10'd9);
assign add_ln36_15_fu_865_p2 = (lshr_ln8_reg_1096 + 9'd5);
assign add_ln36_16_fu_814_p2 = (empty_reg_1086 + 10'd11);
assign add_ln36_17_fu_879_p2 = (lshr_ln8_reg_1096 + 9'd6);
assign add_ln36_1_fu_646_p2 = (mul_ln36_reg_1055 + 9'd2);
assign add_ln36_2_fu_697_p2 = (mul_ln36_reg_1055 + 9'd3);
assign add_ln36_3_fu_763_p2 = (mul_ln36_reg_1055 + 9'd4);
assign add_ln36_4_fu_839_p2 = (mul_ln36_reg_1055 + 9'd5);
assign add_ln36_5_fu_850_p2 = (mul_ln36_reg_1055 + 9'd6);
assign add_ln36_6_fu_581_p2 = (empty_reg_1086 + 10'd1);
assign add_ln36_7_fu_601_p2 = (lshr_ln8_reg_1096 + 9'd1);
assign add_ln36_8_fu_611_p2 = (empty_reg_1086 + 10'd3);
assign add_ln36_9_fu_662_p2 = (lshr_ln8_reg_1096 + 9'd2);
assign add_ln36_fu_539_p2 = (mul_ln36_reg_1055 + 9'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign bitcast_ln36_10_fu_922_p1 = reg_478;
assign bitcast_ln36_11_fu_927_p1 = reg_483;
assign bitcast_ln36_12_fu_942_p1 = reg_478;
assign bitcast_ln36_13_fu_657_p1 = reg_493;
assign bitcast_ln36_14_fu_708_p1 = reg_478;
assign bitcast_ln36_15_fu_713_p1 = reg_493;
assign bitcast_ln36_16_fu_718_p1 = reg_488;
assign bitcast_ln36_17_fu_774_p1 = reg_493;
assign bitcast_ln36_18_fu_779_p1 = reg_488;
assign bitcast_ln36_19_fu_855_p1 = reg_493;
assign bitcast_ln36_1_fu_636_p1 = reg_483;
assign bitcast_ln36_20_fu_860_p1 = reg_488;
assign bitcast_ln36_21_fu_908_p1 = reg_493;
assign bitcast_ln36_22_fu_913_p1 = reg_488;
assign bitcast_ln36_23_fu_932_p1 = reg_493;
assign bitcast_ln36_24_fu_937_p1 = reg_488;
assign bitcast_ln36_25_fu_947_p1 = reg_483;
assign bitcast_ln36_2_fu_641_p1 = reg_488;
assign bitcast_ln36_3_fu_692_p1 = reg_483;
assign bitcast_ln36_4_fu_753_p1 = reg_478;
assign bitcast_ln36_5_fu_758_p1 = reg_483;
assign bitcast_ln36_6_fu_829_p1 = reg_478;
assign bitcast_ln36_7_fu_834_p1 = reg_483;
assign bitcast_ln36_8_fu_894_p1 = reg_478;
assign bitcast_ln36_9_fu_899_p1 = reg_483;
assign bitcast_ln36_fu_631_p1 = reg_478;
assign empty_fu_560_p0 = empty_fu_560_p00;
assign empty_fu_560_p00 = or_ln_fu_549_p3;
assign empty_fu_560_p1 = 10'd13;
assign grp_fu_939_p_ce = 1'b1;
assign grp_fu_939_p_din0 = grp_fu_444_p0;
assign grp_fu_939_p_din1 = grp_fu_444_p1;
assign grp_fu_939_p_opcode = 2'd0;
assign grp_fu_943_p_ce = 1'b1;
assign grp_fu_943_p_din0 = grp_fu_449_p0;
assign grp_fu_943_p_din1 = grp_fu_449_p1;
assign grp_fu_943_p_opcode = 2'd0;
assign grp_fu_947_p_ce = 1'b1;
assign grp_fu_947_p_din0 = grp_fu_454_p0;
assign grp_fu_947_p_din1 = grp_fu_454_p1;
assign grp_fu_947_p_opcode = 2'd0;
assign grp_fu_951_p_ce = 1'b1;
assign grp_fu_951_p_din0 = grp_fu_458_p0;
assign grp_fu_951_p_din1 = grp_fu_458_p1;
assign grp_fu_951_p_opcode = 2'd0;
assign grp_fu_955_p_ce = 1'b1;
assign grp_fu_955_p_din0 = grp_fu_462_p0;
assign grp_fu_955_p_din1 = grp_fu_462_p1;
assign grp_fu_959_p_ce = 1'b1;
assign grp_fu_959_p_din0 = grp_fu_466_p0;
assign grp_fu_959_p_din1 = grp_fu_466_p1;
assign grp_fu_963_p_ce = 1'b1;
assign grp_fu_963_p_din0 = grp_fu_470_p0;
assign grp_fu_963_p_din1 = grp_fu_470_p1;
assign grp_fu_967_p_ce = 1'b1;
assign grp_fu_967_p_din0 = grp_fu_474_p0;
assign grp_fu_967_p_din1 = grp_fu_474_p1;
assign lshr_ln36_1_fu_586_p4 = {{add_ln36_6_fu_581_p2[9:1]}};
assign lshr_ln36_2_fu_616_p4 = {{add_ln36_8_fu_611_p2[9:1]}};
assign lshr_ln36_3_fu_677_p4 = {{add_ln36_10_fu_672_p2[9:1]}};
assign lshr_ln36_4_fu_738_p4 = {{add_ln36_12_fu_733_p2[9:1]}};
assign lshr_ln36_5_fu_799_p4 = {{add_ln36_14_fu_794_p2[9:1]}};
assign lshr_ln7_fu_514_p4 = {{ap_sig_allocacmp_j_1[5:1]}};
assign lshr_ln8_fu_566_p4 = {{empty_fu_560_p2[9:1]}};
assign mul_ln36_fu_528_p0 = mul_ln36_fu_528_p00;
assign mul_ln36_fu_528_p00 = lshr_ln7_fu_514_p4;
assign mul_ln36_fu_528_p1 = 9'd13;
assign or_ln_fu_549_p3 = {{lshr_ln7_reg_1049}, {1'd1}};
assign weights1_0_address0 = weights1_0_address0_local;
assign weights1_0_address1 = weights1_0_address1_local;
assign weights1_0_ce0 = weights1_0_ce0_local;
assign weights1_0_ce1 = weights1_0_ce1_local;
assign weights1_1_address0 = weights1_1_address0_local;
assign weights1_1_address1 = weights1_1_address1_local;
assign weights1_1_ce0 = weights1_1_ce0_local;
assign weights1_1_ce1 = weights1_1_ce1_local;
assign zext_ln32_fu_952_p1 = lshr_ln7_reg_1049_pp0_iter16_reg;
assign zext_ln36_10_fu_626_p1 = lshr_ln36_2_fu_616_p4;
assign zext_ln36_11_fu_667_p1 = add_ln36_9_fu_662_p2;
assign zext_ln36_12_fu_687_p1 = lshr_ln36_3_fu_677_p4;
assign zext_ln36_13_fu_728_p1 = add_ln36_11_fu_723_p2;
assign zext_ln36_14_fu_748_p1 = lshr_ln36_4_fu_738_p4;
assign zext_ln36_15_fu_789_p1 = add_ln36_13_fu_784_p2;
assign zext_ln36_16_fu_809_p1 = lshr_ln36_5_fu_799_p4;
assign zext_ln36_17_fu_870_p1 = add_ln36_15_fu_865_p2;
assign zext_ln36_18_fu_875_p1 = lshr_ln36_6_reg_1251;
assign zext_ln36_19_fu_918_p1 = add_ln36_17_reg_1301;
assign zext_ln36_1_fu_544_p1 = add_ln36_fu_539_p2;
assign zext_ln36_2_fu_651_p1 = add_ln36_1_fu_646_p2;
assign zext_ln36_3_fu_702_p1 = add_ln36_2_fu_697_p2;
assign zext_ln36_4_fu_768_p1 = add_ln36_3_fu_763_p2;
assign zext_ln36_5_fu_844_p1 = add_ln36_4_fu_839_p2;
assign zext_ln36_6_fu_904_p1 = add_ln36_5_reg_1276;
assign zext_ln36_7_fu_576_p1 = lshr_ln8_fu_566_p4;
assign zext_ln36_8_fu_596_p1 = lshr_ln36_1_fu_586_p4;
assign zext_ln36_9_fu_606_p1 = add_ln36_7_fu_601_p2;
assign zext_ln36_fu_534_p1 = mul_ln36_reg_1055;
always @ (posedge ap_clk) begin
    zext_ln36_1_reg_1076[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
end
endmodule 