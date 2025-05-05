module backprop_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,activations_address0,activations_ce0,activations_we0,activations_d0,activations_address1,activations_ce1,activations_we1,activations_d1,weights1_address0,weights1_ce0,weights1_q0,weights1_address1,weights1_ce1,weights1_q1,empty_19,empty_20,empty_21,empty_22,empty_23,empty_24,empty_25,empty_26,empty_27,empty_28,empty_29,empty_30,empty,grp_fu_580_p_din0,grp_fu_580_p_din1,grp_fu_580_p_opcode,grp_fu_580_p_dout0,grp_fu_580_p_ce,grp_fu_584_p_din0,grp_fu_584_p_din1,grp_fu_584_p_opcode,grp_fu_584_p_dout0,grp_fu_584_p_ce,grp_fu_588_p_din0,grp_fu_588_p_din1,grp_fu_588_p_dout0,grp_fu_588_p_ce,grp_fu_592_p_din0,grp_fu_592_p_din1,grp_fu_592_p_dout0,grp_fu_592_p_ce); 
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
reg   [0:0] tmp_14_reg_1040;
reg    ap_condition_exit_pp0_iter0_stage12;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_470;
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
reg   [63:0] reg_474;
reg   [63:0] reg_478;
reg   [63:0] reg_484;
reg   [6:0] j_1_reg_1033;
reg   [6:0] j_1_reg_1033_pp0_iter1_reg;
reg   [6:0] j_1_reg_1033_pp0_iter2_reg;
reg   [6:0] j_1_reg_1033_pp0_iter3_reg;
reg   [6:0] j_1_reg_1033_pp0_iter4_reg;
reg   [6:0] j_1_reg_1033_pp0_iter5_reg;
reg   [6:0] j_1_reg_1033_pp0_iter6_reg;
reg   [6:0] j_1_reg_1033_pp0_iter7_reg;
reg   [6:0] j_1_reg_1033_pp0_iter8_reg;
reg   [0:0] tmp_14_reg_1040_pp0_iter1_reg;
reg   [0:0] tmp_14_reg_1040_pp0_iter2_reg;
reg   [0:0] tmp_14_reg_1040_pp0_iter3_reg;
reg   [0:0] tmp_14_reg_1040_pp0_iter4_reg;
reg   [0:0] tmp_14_reg_1040_pp0_iter5_reg;
reg   [0:0] tmp_14_reg_1040_pp0_iter6_reg;
reg   [0:0] tmp_14_reg_1040_pp0_iter7_reg;
wire   [9:0] mul_ln36_fu_510_p2;
reg   [9:0] mul_ln36_reg_1044;
reg   [8:0] tmp_reg_1073;
wire   [63:0] bitcast_ln36_fu_562_p1;
wire   [63:0] bitcast_ln36_13_fu_577_p1;
wire   [63:0] bitcast_ln36_1_fu_592_p1;
wire   [63:0] bitcast_ln36_14_fu_607_p1;
wire   [63:0] bitcast_ln36_2_fu_622_p1;
wire   [63:0] bitcast_ln36_15_fu_637_p1;
wire   [63:0] bitcast_ln36_3_fu_652_p1;
wire   [63:0] bitcast_ln36_16_fu_667_p1;
wire   [63:0] bitcast_ln36_4_fu_682_p1;
wire   [63:0] bitcast_ln36_17_fu_697_p1;
wire   [63:0] bitcast_ln36_5_fu_712_p1;
wire   [63:0] bitcast_ln36_18_fu_727_p1;
reg   [63:0] mul8_reg_1218;
wire   [63:0] bitcast_ln36_6_fu_742_p1;
reg   [63:0] mul8_1_reg_1233;
wire   [63:0] bitcast_ln36_19_fu_757_p1;
reg   [63:0] mul8_s_reg_1248;
wire   [63:0] bitcast_ln36_7_fu_772_p1;
reg   [63:0] mul8_1_1_reg_1263;
wire   [63:0] bitcast_ln36_20_fu_787_p1;
reg   [63:0] mul8_2_reg_1278;
reg   [63:0] mul8_2_reg_1278_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_8_fu_802_p1;
reg   [63:0] mul8_1_2_reg_1293;
reg   [63:0] mul8_1_2_reg_1293_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_21_fu_817_p1;
reg   [63:0] mul8_3_reg_1308;
reg   [63:0] mul8_3_reg_1308_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_9_fu_832_p1;
reg   [63:0] mul8_1_3_reg_1323;
reg   [63:0] mul8_1_3_reg_1323_pp0_iter1_reg;
wire   [63:0] bitcast_ln36_22_fu_847_p1;
reg   [63:0] mul8_4_reg_1338;
reg   [63:0] mul8_4_reg_1338_pp0_iter2_reg;
reg   [63:0] mul8_4_reg_1338_pp0_iter3_reg;
wire   [63:0] bitcast_ln36_10_fu_872_p1;
reg   [63:0] mul8_1_4_reg_1353;
reg   [63:0] mul8_1_4_reg_1353_pp0_iter2_reg;
reg   [63:0] mul8_1_4_reg_1353_pp0_iter3_reg;
wire   [63:0] bitcast_ln36_23_fu_887_p1;
reg   [63:0] mul8_5_reg_1368;
reg   [63:0] mul8_5_reg_1368_pp0_iter2_reg;
reg   [63:0] mul8_5_reg_1368_pp0_iter3_reg;
wire   [63:0] bitcast_ln36_11_fu_902_p1;
reg   [63:0] mul8_1_5_reg_1378;
reg   [63:0] mul8_1_5_reg_1378_pp0_iter2_reg;
reg   [63:0] mul8_1_5_reg_1378_pp0_iter3_reg;
wire   [63:0] bitcast_ln36_24_fu_907_p1;
reg   [63:0] mul8_6_reg_1388;
reg   [63:0] mul8_6_reg_1388_pp0_iter2_reg;
reg   [63:0] mul8_6_reg_1388_pp0_iter3_reg;
reg   [63:0] mul8_6_reg_1388_pp0_iter4_reg;
wire   [63:0] bitcast_ln36_12_fu_912_p1;
reg   [63:0] mul8_1_6_reg_1398;
reg   [63:0] mul8_1_6_reg_1398_pp0_iter2_reg;
reg   [63:0] mul8_1_6_reg_1398_pp0_iter3_reg;
reg   [63:0] mul8_1_6_reg_1398_pp0_iter4_reg;
wire   [63:0] bitcast_ln36_25_fu_917_p1;
reg   [63:0] mul8_7_reg_1408;
reg   [63:0] mul8_7_reg_1408_pp0_iter2_reg;
reg   [63:0] mul8_7_reg_1408_pp0_iter3_reg;
reg   [63:0] mul8_7_reg_1408_pp0_iter4_reg;
reg   [63:0] mul8_1_7_reg_1413;
reg   [63:0] mul8_1_7_reg_1413_pp0_iter2_reg;
reg   [63:0] mul8_1_7_reg_1413_pp0_iter3_reg;
reg   [63:0] mul8_1_7_reg_1413_pp0_iter4_reg;
reg   [63:0] add_reg_1418;
reg   [63:0] mul8_8_reg_1423;
reg   [63:0] mul8_8_reg_1423_pp0_iter2_reg;
reg   [63:0] mul8_8_reg_1423_pp0_iter3_reg;
reg   [63:0] mul8_8_reg_1423_pp0_iter4_reg;
reg   [63:0] mul8_8_reg_1423_pp0_iter5_reg;
reg   [63:0] add11_1_reg_1428;
reg   [63:0] mul8_1_8_reg_1433;
reg   [63:0] mul8_1_8_reg_1433_pp0_iter2_reg;
reg   [63:0] mul8_1_8_reg_1433_pp0_iter3_reg;
reg   [63:0] mul8_1_8_reg_1433_pp0_iter4_reg;
reg   [63:0] mul8_1_8_reg_1433_pp0_iter5_reg;
reg   [63:0] mul8_9_reg_1438;
reg   [63:0] mul8_9_reg_1438_pp0_iter2_reg;
reg   [63:0] mul8_9_reg_1438_pp0_iter3_reg;
reg   [63:0] mul8_9_reg_1438_pp0_iter4_reg;
reg   [63:0] mul8_9_reg_1438_pp0_iter5_reg;
reg   [63:0] mul8_1_9_reg_1443;
reg   [63:0] mul8_1_9_reg_1443_pp0_iter2_reg;
reg   [63:0] mul8_1_9_reg_1443_pp0_iter3_reg;
reg   [63:0] mul8_1_9_reg_1443_pp0_iter4_reg;
reg   [63:0] mul8_1_9_reg_1443_pp0_iter5_reg;
reg   [63:0] mul8_10_reg_1448;
reg   [63:0] mul8_10_reg_1448_pp0_iter2_reg;
reg   [63:0] mul8_10_reg_1448_pp0_iter3_reg;
reg   [63:0] mul8_10_reg_1448_pp0_iter4_reg;
reg   [63:0] mul8_10_reg_1448_pp0_iter5_reg;
reg   [63:0] mul8_10_reg_1448_pp0_iter6_reg;
reg   [63:0] mul8_1_s_reg_1453;
reg   [63:0] mul8_1_s_reg_1453_pp0_iter2_reg;
reg   [63:0] mul8_1_s_reg_1453_pp0_iter3_reg;
reg   [63:0] mul8_1_s_reg_1453_pp0_iter4_reg;
reg   [63:0] mul8_1_s_reg_1453_pp0_iter5_reg;
reg   [63:0] mul8_1_s_reg_1453_pp0_iter6_reg;
reg   [63:0] mul8_11_reg_1458;
reg   [63:0] mul8_11_reg_1458_pp0_iter2_reg;
reg   [63:0] mul8_11_reg_1458_pp0_iter3_reg;
reg   [63:0] mul8_11_reg_1458_pp0_iter4_reg;
reg   [63:0] mul8_11_reg_1458_pp0_iter5_reg;
reg   [63:0] mul8_11_reg_1458_pp0_iter6_reg;
reg   [63:0] mul8_1_10_reg_1463;
reg   [63:0] mul8_1_10_reg_1463_pp0_iter2_reg;
reg   [63:0] mul8_1_10_reg_1463_pp0_iter3_reg;
reg   [63:0] mul8_1_10_reg_1463_pp0_iter4_reg;
reg   [63:0] mul8_1_10_reg_1463_pp0_iter5_reg;
reg   [63:0] mul8_1_10_reg_1463_pp0_iter6_reg;
reg   [63:0] mul8_12_reg_1468;
reg   [63:0] mul8_12_reg_1468_pp0_iter2_reg;
reg   [63:0] mul8_12_reg_1468_pp0_iter3_reg;
reg   [63:0] mul8_12_reg_1468_pp0_iter4_reg;
reg   [63:0] mul8_12_reg_1468_pp0_iter5_reg;
reg   [63:0] mul8_12_reg_1468_pp0_iter6_reg;
reg   [63:0] mul8_12_reg_1468_pp0_iter7_reg;
reg   [63:0] mul8_1_11_reg_1473;
reg   [63:0] mul8_1_11_reg_1473_pp0_iter2_reg;
reg   [63:0] mul8_1_11_reg_1473_pp0_iter3_reg;
reg   [63:0] mul8_1_11_reg_1473_pp0_iter4_reg;
reg   [63:0] mul8_1_11_reg_1473_pp0_iter5_reg;
reg   [63:0] mul8_1_11_reg_1473_pp0_iter6_reg;
reg   [63:0] mul8_1_11_reg_1473_pp0_iter7_reg;
reg   [63:0] add11_2_reg_1478;
reg   [63:0] add11_1_2_reg_1483;
reg   [63:0] add11_3_reg_1488;
reg   [63:0] add11_1_3_reg_1493;
reg   [63:0] add11_4_reg_1498;
reg   [63:0] add11_1_4_reg_1503;
reg   [63:0] add11_5_reg_1508;
reg   [63:0] add11_1_5_reg_1513;
reg   [63:0] add11_6_reg_1518;
reg   [63:0] add11_1_6_reg_1523;
reg   [63:0] add11_7_reg_1528;
reg   [63:0] add11_1_7_reg_1533;
reg   [63:0] add11_8_reg_1538;
reg   [63:0] add11_1_8_reg_1543;
reg   [63:0] add11_9_reg_1548;
reg   [63:0] add11_1_9_reg_1553;
reg   [63:0] add11_10_reg_1558;
reg   [63:0] add11_1_s_reg_1563;
reg   [63:0] add11_11_reg_1568;
reg   [63:0] add11_1_10_reg_1573;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage10_subdone;
wire   [63:0] zext_ln36_fu_526_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln36_13_fu_535_p1;
wire   [63:0] zext_ln36_1_fu_547_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln36_14_fu_557_p1;
wire   [63:0] zext_ln36_2_fu_572_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln36_15_fu_587_p1;
wire   [63:0] zext_ln36_3_fu_602_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln36_16_fu_617_p1;
wire   [63:0] zext_ln36_4_fu_632_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln36_17_fu_647_p1;
wire   [63:0] zext_ln36_5_fu_662_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln36_18_fu_677_p1;
wire   [63:0] zext_ln36_6_fu_692_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln36_19_fu_707_p1;
wire   [63:0] zext_ln36_7_fu_722_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln36_20_fu_737_p1;
wire   [63:0] zext_ln36_8_fu_752_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln36_21_fu_767_p1;
wire   [63:0] zext_ln36_9_fu_782_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln36_22_fu_797_p1;
wire   [63:0] zext_ln36_10_fu_812_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln36_23_fu_827_p1;
wire   [63:0] zext_ln36_11_fu_842_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln36_24_fu_857_p1;
wire   [63:0] zext_ln36_12_fu_882_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln36_25_fu_897_p1;
wire   [63:0] zext_ln33_fu_922_p1;
wire   [63:0] zext_ln34_fu_943_p1;
reg   [6:0] j_fu_128;
wire   [6:0] add_ln33_fu_862_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_1;
reg    weights1_ce1_local;
reg   [9:0] weights1_address1_local;
reg    weights1_ce0_local;
reg   [9:0] weights1_address0_local;
reg    activations_we1_local;
reg    activations_ce1_local;
reg    activations_we0_local;
reg    activations_ce0_local;
reg   [63:0] grp_fu_452_p0;
reg   [63:0] grp_fu_452_p1;
reg   [63:0] grp_fu_457_p0;
reg   [63:0] grp_fu_457_p1;
reg   [63:0] grp_fu_462_p0;
reg   [63:0] grp_fu_462_p1;
reg   [63:0] grp_fu_466_p0;
reg   [63:0] grp_fu_466_p1;
wire   [6:0] mul_ln36_fu_510_p0;
wire   [4:0] mul_ln36_fu_510_p1;
wire   [9:0] empty_48_fu_530_p2;
wire   [9:0] or_ln_fu_540_p3;
wire   [9:0] add_ln36_11_fu_552_p2;
wire   [9:0] add_ln36_fu_567_p2;
wire   [9:0] add_ln36_12_fu_582_p2;
wire   [9:0] add_ln36_1_fu_597_p2;
wire   [9:0] add_ln36_13_fu_612_p2;
wire   [9:0] add_ln36_2_fu_627_p2;
wire   [9:0] add_ln36_14_fu_642_p2;
wire   [9:0] add_ln36_3_fu_657_p2;
wire   [9:0] add_ln36_15_fu_672_p2;
wire   [9:0] add_ln36_4_fu_687_p2;
wire   [9:0] add_ln36_16_fu_702_p2;
wire   [9:0] add_ln36_5_fu_717_p2;
wire   [9:0] add_ln36_17_fu_732_p2;
wire   [9:0] add_ln36_6_fu_747_p2;
wire   [9:0] add_ln36_18_fu_762_p2;
wire   [9:0] add_ln36_7_fu_777_p2;
wire   [9:0] add_ln36_19_fu_792_p2;
wire   [9:0] add_ln36_8_fu_807_p2;
wire   [9:0] add_ln36_20_fu_822_p2;
wire   [9:0] add_ln36_9_fu_837_p2;
wire   [9:0] add_ln36_21_fu_852_p2;
wire   [9:0] add_ln36_10_fu_877_p2;
wire   [9:0] add_ln36_22_fu_892_p2;
wire   [4:0] tmp_s_fu_926_p4;
wire   [5:0] or_ln7_fu_935_p3;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage2_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter7_stage10;
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
wire    ap_block_pp0_stage11_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [9:0] mul_ln36_fu_510_p00;
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
#0 j_fu_128 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_mul_7ns_5ns_10_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 5 ),.dout_WIDTH( 10 ))
mul_7ns_5ns_10_1_1_U5(.din0(mul_ln36_fu_510_p0),.din1(mul_ln36_fu_510_p1),.dout(mul_ln36_fu_510_p2));
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
        end else if (((1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_enable_reg_pp0_iter8 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage12_subdone) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter7_stage10) & (ap_idle_pp0_0to6 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter7_stage10) & (ap_idle_pp0_0to6 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter7_stage10) & (ap_idle_pp0_0to6 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter7_stage10) & (ap_idle_pp0_0to6 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter7_stage10) & (ap_idle_pp0_0to6 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter7_stage10) & (ap_idle_pp0_0to6 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter7_stage10) & (ap_idle_pp0_0to6 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_128 <= 7'd0;
    end else if (((tmp_14_reg_1040 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        j_fu_128 <= add_ln33_fu_862_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add11_10_reg_1558 <= grp_fu_580_p_dout0;
        add11_1_s_reg_1563 <= grp_fu_584_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add11_11_reg_1568 <= grp_fu_580_p_dout0;
        add11_1_10_reg_1573 <= grp_fu_584_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add11_1_2_reg_1483 <= grp_fu_584_p_dout0;
        add11_2_reg_1478 <= grp_fu_580_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add11_1_3_reg_1493 <= grp_fu_584_p_dout0;
        add11_3_reg_1488 <= grp_fu_580_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add11_1_4_reg_1503 <= grp_fu_584_p_dout0;
        add11_4_reg_1498 <= grp_fu_580_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add11_1_5_reg_1513 <= grp_fu_584_p_dout0;
        add11_5_reg_1508 <= grp_fu_580_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_1_6_reg_1523 <= grp_fu_584_p_dout0;
        add11_6_reg_1518 <= grp_fu_580_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add11_1_7_reg_1533 <= grp_fu_584_p_dout0;
        add11_7_reg_1528 <= grp_fu_580_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add11_1_8_reg_1543 <= grp_fu_584_p_dout0;
        add11_8_reg_1538 <= grp_fu_580_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        add11_1_9_reg_1553 <= grp_fu_584_p_dout0;
        add11_9_reg_1548 <= grp_fu_580_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add11_1_reg_1428 <= grp_fu_584_p_dout0;
        add_reg_1418 <= grp_fu_580_p_dout0;
        mul8_1_8_reg_1433 <= grp_fu_592_p_dout0;
        mul8_8_reg_1423 <= grp_fu_588_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_1_reg_1033 <= ap_sig_allocacmp_j_1;
        j_1_reg_1033_pp0_iter1_reg <= j_1_reg_1033;
        j_1_reg_1033_pp0_iter2_reg <= j_1_reg_1033_pp0_iter1_reg;
        j_1_reg_1033_pp0_iter3_reg <= j_1_reg_1033_pp0_iter2_reg;
        j_1_reg_1033_pp0_iter4_reg <= j_1_reg_1033_pp0_iter3_reg;
        j_1_reg_1033_pp0_iter5_reg <= j_1_reg_1033_pp0_iter4_reg;
        j_1_reg_1033_pp0_iter6_reg <= j_1_reg_1033_pp0_iter5_reg;
        j_1_reg_1033_pp0_iter7_reg <= j_1_reg_1033_pp0_iter6_reg;
        j_1_reg_1033_pp0_iter8_reg <= j_1_reg_1033_pp0_iter7_reg;
        mul8_1_4_reg_1353_pp0_iter2_reg <= mul8_1_4_reg_1353;
        mul8_1_4_reg_1353_pp0_iter3_reg <= mul8_1_4_reg_1353_pp0_iter2_reg;
        mul8_4_reg_1338_pp0_iter2_reg <= mul8_4_reg_1338;
        mul8_4_reg_1338_pp0_iter3_reg <= mul8_4_reg_1338_pp0_iter2_reg;
        mul_ln36_reg_1044 <= mul_ln36_fu_510_p2;
        tmp_14_reg_1040 <= ap_sig_allocacmp_j_1[32'd6];
        tmp_14_reg_1040_pp0_iter1_reg <= tmp_14_reg_1040;
        tmp_14_reg_1040_pp0_iter2_reg <= tmp_14_reg_1040_pp0_iter1_reg;
        tmp_14_reg_1040_pp0_iter3_reg <= tmp_14_reg_1040_pp0_iter2_reg;
        tmp_14_reg_1040_pp0_iter4_reg <= tmp_14_reg_1040_pp0_iter3_reg;
        tmp_14_reg_1040_pp0_iter5_reg <= tmp_14_reg_1040_pp0_iter4_reg;
        tmp_14_reg_1040_pp0_iter6_reg <= tmp_14_reg_1040_pp0_iter5_reg;
        tmp_14_reg_1040_pp0_iter7_reg <= tmp_14_reg_1040_pp0_iter6_reg;
        tmp_reg_1073 <= {{mul_ln36_fu_510_p2[9:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul8_10_reg_1448 <= grp_fu_588_p_dout0;
        mul8_1_s_reg_1453 <= grp_fu_592_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul8_10_reg_1448_pp0_iter2_reg <= mul8_10_reg_1448;
        mul8_10_reg_1448_pp0_iter3_reg <= mul8_10_reg_1448_pp0_iter2_reg;
        mul8_10_reg_1448_pp0_iter4_reg <= mul8_10_reg_1448_pp0_iter3_reg;
        mul8_10_reg_1448_pp0_iter5_reg <= mul8_10_reg_1448_pp0_iter4_reg;
        mul8_10_reg_1448_pp0_iter6_reg <= mul8_10_reg_1448_pp0_iter5_reg;
        mul8_1_s_reg_1453_pp0_iter2_reg <= mul8_1_s_reg_1453;
        mul8_1_s_reg_1453_pp0_iter3_reg <= mul8_1_s_reg_1453_pp0_iter2_reg;
        mul8_1_s_reg_1453_pp0_iter4_reg <= mul8_1_s_reg_1453_pp0_iter3_reg;
        mul8_1_s_reg_1453_pp0_iter5_reg <= mul8_1_s_reg_1453_pp0_iter4_reg;
        mul8_1_s_reg_1453_pp0_iter6_reg <= mul8_1_s_reg_1453_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul8_11_reg_1458 <= grp_fu_588_p_dout0;
        mul8_1_10_reg_1463 <= grp_fu_592_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul8_11_reg_1458_pp0_iter2_reg <= mul8_11_reg_1458;
        mul8_11_reg_1458_pp0_iter3_reg <= mul8_11_reg_1458_pp0_iter2_reg;
        mul8_11_reg_1458_pp0_iter4_reg <= mul8_11_reg_1458_pp0_iter3_reg;
        mul8_11_reg_1458_pp0_iter5_reg <= mul8_11_reg_1458_pp0_iter4_reg;
        mul8_11_reg_1458_pp0_iter6_reg <= mul8_11_reg_1458_pp0_iter5_reg;
        mul8_1_10_reg_1463_pp0_iter2_reg <= mul8_1_10_reg_1463;
        mul8_1_10_reg_1463_pp0_iter3_reg <= mul8_1_10_reg_1463_pp0_iter2_reg;
        mul8_1_10_reg_1463_pp0_iter4_reg <= mul8_1_10_reg_1463_pp0_iter3_reg;
        mul8_1_10_reg_1463_pp0_iter5_reg <= mul8_1_10_reg_1463_pp0_iter4_reg;
        mul8_1_10_reg_1463_pp0_iter6_reg <= mul8_1_10_reg_1463_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul8_12_reg_1468 <= grp_fu_588_p_dout0;
        mul8_1_11_reg_1473 <= grp_fu_592_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul8_12_reg_1468_pp0_iter2_reg <= mul8_12_reg_1468;
        mul8_12_reg_1468_pp0_iter3_reg <= mul8_12_reg_1468_pp0_iter2_reg;
        mul8_12_reg_1468_pp0_iter4_reg <= mul8_12_reg_1468_pp0_iter3_reg;
        mul8_12_reg_1468_pp0_iter5_reg <= mul8_12_reg_1468_pp0_iter4_reg;
        mul8_12_reg_1468_pp0_iter6_reg <= mul8_12_reg_1468_pp0_iter5_reg;
        mul8_12_reg_1468_pp0_iter7_reg <= mul8_12_reg_1468_pp0_iter6_reg;
        mul8_1_11_reg_1473_pp0_iter2_reg <= mul8_1_11_reg_1473;
        mul8_1_11_reg_1473_pp0_iter3_reg <= mul8_1_11_reg_1473_pp0_iter2_reg;
        mul8_1_11_reg_1473_pp0_iter4_reg <= mul8_1_11_reg_1473_pp0_iter3_reg;
        mul8_1_11_reg_1473_pp0_iter5_reg <= mul8_1_11_reg_1473_pp0_iter4_reg;
        mul8_1_11_reg_1473_pp0_iter6_reg <= mul8_1_11_reg_1473_pp0_iter5_reg;
        mul8_1_11_reg_1473_pp0_iter7_reg <= mul8_1_11_reg_1473_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        mul8_1_1_reg_1263 <= grp_fu_592_p_dout0;
        mul8_s_reg_1248 <= grp_fu_588_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        mul8_1_2_reg_1293 <= grp_fu_592_p_dout0;
        mul8_2_reg_1278 <= grp_fu_588_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        mul8_1_2_reg_1293_pp0_iter1_reg <= mul8_1_2_reg_1293;
        mul8_2_reg_1278_pp0_iter1_reg <= mul8_2_reg_1278;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        mul8_1_3_reg_1323 <= grp_fu_592_p_dout0;
        mul8_3_reg_1308 <= grp_fu_588_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        mul8_1_3_reg_1323_pp0_iter1_reg <= mul8_1_3_reg_1323;
        mul8_3_reg_1308_pp0_iter1_reg <= mul8_3_reg_1308;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul8_1_4_reg_1353 <= grp_fu_592_p_dout0;
        mul8_4_reg_1338 <= grp_fu_588_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul8_1_5_reg_1378 <= grp_fu_592_p_dout0;
        mul8_5_reg_1368 <= grp_fu_588_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul8_1_5_reg_1378_pp0_iter2_reg <= mul8_1_5_reg_1378;
        mul8_1_5_reg_1378_pp0_iter3_reg <= mul8_1_5_reg_1378_pp0_iter2_reg;
        mul8_5_reg_1368_pp0_iter2_reg <= mul8_5_reg_1368;
        mul8_5_reg_1368_pp0_iter3_reg <= mul8_5_reg_1368_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul8_1_6_reg_1398 <= grp_fu_592_p_dout0;
        mul8_6_reg_1388 <= grp_fu_588_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul8_1_6_reg_1398_pp0_iter2_reg <= mul8_1_6_reg_1398;
        mul8_1_6_reg_1398_pp0_iter3_reg <= mul8_1_6_reg_1398_pp0_iter2_reg;
        mul8_1_6_reg_1398_pp0_iter4_reg <= mul8_1_6_reg_1398_pp0_iter3_reg;
        mul8_6_reg_1388_pp0_iter2_reg <= mul8_6_reg_1388;
        mul8_6_reg_1388_pp0_iter3_reg <= mul8_6_reg_1388_pp0_iter2_reg;
        mul8_6_reg_1388_pp0_iter4_reg <= mul8_6_reg_1388_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul8_1_7_reg_1413 <= grp_fu_592_p_dout0;
        mul8_7_reg_1408 <= grp_fu_588_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul8_1_7_reg_1413_pp0_iter2_reg <= mul8_1_7_reg_1413;
        mul8_1_7_reg_1413_pp0_iter3_reg <= mul8_1_7_reg_1413_pp0_iter2_reg;
        mul8_1_7_reg_1413_pp0_iter4_reg <= mul8_1_7_reg_1413_pp0_iter3_reg;
        mul8_7_reg_1408_pp0_iter2_reg <= mul8_7_reg_1408;
        mul8_7_reg_1408_pp0_iter3_reg <= mul8_7_reg_1408_pp0_iter2_reg;
        mul8_7_reg_1408_pp0_iter4_reg <= mul8_7_reg_1408_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul8_1_8_reg_1433_pp0_iter2_reg <= mul8_1_8_reg_1433;
        mul8_1_8_reg_1433_pp0_iter3_reg <= mul8_1_8_reg_1433_pp0_iter2_reg;
        mul8_1_8_reg_1433_pp0_iter4_reg <= mul8_1_8_reg_1433_pp0_iter3_reg;
        mul8_1_8_reg_1433_pp0_iter5_reg <= mul8_1_8_reg_1433_pp0_iter4_reg;
        mul8_8_reg_1423_pp0_iter2_reg <= mul8_8_reg_1423;
        mul8_8_reg_1423_pp0_iter3_reg <= mul8_8_reg_1423_pp0_iter2_reg;
        mul8_8_reg_1423_pp0_iter4_reg <= mul8_8_reg_1423_pp0_iter3_reg;
        mul8_8_reg_1423_pp0_iter5_reg <= mul8_8_reg_1423_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul8_1_9_reg_1443 <= grp_fu_592_p_dout0;
        mul8_9_reg_1438 <= grp_fu_588_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul8_1_9_reg_1443_pp0_iter2_reg <= mul8_1_9_reg_1443;
        mul8_1_9_reg_1443_pp0_iter3_reg <= mul8_1_9_reg_1443_pp0_iter2_reg;
        mul8_1_9_reg_1443_pp0_iter4_reg <= mul8_1_9_reg_1443_pp0_iter3_reg;
        mul8_1_9_reg_1443_pp0_iter5_reg <= mul8_1_9_reg_1443_pp0_iter4_reg;
        mul8_9_reg_1438_pp0_iter2_reg <= mul8_9_reg_1438;
        mul8_9_reg_1438_pp0_iter3_reg <= mul8_9_reg_1438_pp0_iter2_reg;
        mul8_9_reg_1438_pp0_iter4_reg <= mul8_9_reg_1438_pp0_iter3_reg;
        mul8_9_reg_1438_pp0_iter5_reg <= mul8_9_reg_1438_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul8_1_reg_1233 <= grp_fu_592_p_dout0;
        mul8_reg_1218 <= grp_fu_588_p_dout0;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_470 <= weights1_q1;
        reg_474 <= weights1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_478 <= grp_fu_580_p_dout0;
        reg_484 <= grp_fu_584_p_dout0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        activations_ce0_local = 1'b1;
    end else begin
        activations_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        activations_ce1_local = 1'b1;
    end else begin
        activations_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        activations_we0_local = 1'b1;
    end else begin
        activations_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        activations_we1_local = 1'b1;
    end else begin
        activations_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_14_reg_1040 == 1'd1) & (1'b0 == ap_block_pp0_stage12_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        ap_condition_exit_pp0_iter0_stage12 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage12 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter7 == 1'b1) & (tmp_14_reg_1040_pp0_iter7_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_condition_exit_pp0_iter7_stage10 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter7_stage10 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_j_1 = j_fu_128;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_452_p0 = add11_11_reg_1568;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_452_p0 = add11_10_reg_1558;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_452_p0 = add11_9_reg_1548;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_452_p0 = add11_8_reg_1538;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_452_p0 = add11_7_reg_1528;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_452_p0 = add11_6_reg_1518;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_452_p0 = add11_5_reg_1508;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_452_p0 = add11_4_reg_1498;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_452_p0 = add11_3_reg_1488;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_452_p0 = add11_2_reg_1478;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_452_p0 = reg_478;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_452_p0 = add_reg_1418;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_452_p0 = mul8_reg_1218;
    end else begin
        grp_fu_452_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_452_p1 = mul8_12_reg_1468_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_452_p1 = mul8_11_reg_1458_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_452_p1 = mul8_10_reg_1448_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_452_p1 = mul8_9_reg_1438_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_452_p1 = mul8_8_reg_1423_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_452_p1 = mul8_7_reg_1408_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_452_p1 = mul8_6_reg_1388_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_452_p1 = mul8_5_reg_1368_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_452_p1 = mul8_4_reg_1338_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_452_p1 = mul8_3_reg_1308_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_452_p1 = mul8_2_reg_1278_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_452_p1 = mul8_s_reg_1248;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_452_p1 = 64'd0;
    end else begin
        grp_fu_452_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_457_p0 = add11_1_10_reg_1573;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_457_p0 = add11_1_s_reg_1563;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_457_p0 = add11_1_9_reg_1553;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_457_p0 = add11_1_8_reg_1543;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_457_p0 = add11_1_7_reg_1533;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_457_p0 = add11_1_6_reg_1523;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_457_p0 = add11_1_5_reg_1513;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_457_p0 = add11_1_4_reg_1503;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_457_p0 = add11_1_3_reg_1493;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_457_p0 = add11_1_2_reg_1483;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_457_p0 = reg_484;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_457_p0 = add11_1_reg_1428;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_457_p0 = mul8_1_reg_1233;
    end else begin
        grp_fu_457_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_457_p1 = mul8_1_11_reg_1473_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_457_p1 = mul8_1_10_reg_1463_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_457_p1 = mul8_1_s_reg_1453_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_457_p1 = mul8_1_9_reg_1443_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_457_p1 = mul8_1_8_reg_1433_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_457_p1 = mul8_1_7_reg_1413_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_457_p1 = mul8_1_6_reg_1398_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_457_p1 = mul8_1_5_reg_1378_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_457_p1 = mul8_1_4_reg_1353_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_457_p1 = mul8_1_3_reg_1323_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_457_p1 = mul8_1_2_reg_1293_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_457_p1 = mul8_1_1_reg_1263;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_457_p1 = 64'd0;
    end else begin
        grp_fu_457_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_462_p0 = bitcast_ln36_12_fu_912_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_462_p0 = bitcast_ln36_11_fu_902_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_462_p0 = bitcast_ln36_10_fu_872_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_462_p0 = bitcast_ln36_9_fu_832_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_462_p0 = bitcast_ln36_8_fu_802_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_462_p0 = bitcast_ln36_7_fu_772_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_462_p0 = bitcast_ln36_6_fu_742_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_462_p0 = bitcast_ln36_5_fu_712_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_462_p0 = bitcast_ln36_4_fu_682_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_462_p0 = bitcast_ln36_3_fu_652_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_462_p0 = bitcast_ln36_2_fu_622_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_462_p0 = bitcast_ln36_1_fu_592_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_462_p0 = bitcast_ln36_fu_562_p1;
    end else begin
        grp_fu_462_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_462_p1 = empty;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_462_p1 = empty_30;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_462_p1 = empty_29;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_462_p1 = empty_28;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_462_p1 = empty_27;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_462_p1 = empty_26;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_462_p1 = empty_25;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_462_p1 = empty_24;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_462_p1 = empty_23;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_462_p1 = empty_22;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_462_p1 = empty_21;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_462_p1 = empty_20;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_462_p1 = empty_19;
    end else begin
        grp_fu_462_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_466_p0 = bitcast_ln36_25_fu_917_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_466_p0 = bitcast_ln36_24_fu_907_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_466_p0 = bitcast_ln36_23_fu_887_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_466_p0 = bitcast_ln36_22_fu_847_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_466_p0 = bitcast_ln36_21_fu_817_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_466_p0 = bitcast_ln36_20_fu_787_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_466_p0 = bitcast_ln36_19_fu_757_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_466_p0 = bitcast_ln36_18_fu_727_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_466_p0 = bitcast_ln36_17_fu_697_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_466_p0 = bitcast_ln36_16_fu_667_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_466_p0 = bitcast_ln36_15_fu_637_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_466_p0 = bitcast_ln36_14_fu_607_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_466_p0 = bitcast_ln36_13_fu_577_p1;
    end else begin
        grp_fu_466_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_466_p1 = empty;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_466_p1 = empty_30;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_466_p1 = empty_29;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_466_p1 = empty_28;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_466_p1 = empty_27;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_466_p1 = empty_26;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_466_p1 = empty_25;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_466_p1 = empty_24;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_466_p1 = empty_23;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_466_p1 = empty_22;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_466_p1 = empty_21;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_466_p1 = empty_20;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_466_p1 = empty_19;
    end else begin
        grp_fu_466_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_address0_local = zext_ln36_25_fu_897_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights1_address0_local = zext_ln36_24_fu_857_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights1_address0_local = zext_ln36_23_fu_827_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights1_address0_local = zext_ln36_22_fu_797_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights1_address0_local = zext_ln36_21_fu_767_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights1_address0_local = zext_ln36_20_fu_737_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights1_address0_local = zext_ln36_19_fu_707_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights1_address0_local = zext_ln36_18_fu_677_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights1_address0_local = zext_ln36_17_fu_647_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_address0_local = zext_ln36_16_fu_617_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_address0_local = zext_ln36_15_fu_587_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_address0_local = zext_ln36_14_fu_557_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_address0_local = zext_ln36_13_fu_535_p1;
    end else begin
        weights1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_address1_local = zext_ln36_12_fu_882_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights1_address1_local = zext_ln36_11_fu_842_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights1_address1_local = zext_ln36_10_fu_812_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights1_address1_local = zext_ln36_9_fu_782_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights1_address1_local = zext_ln36_8_fu_752_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights1_address1_local = zext_ln36_7_fu_722_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights1_address1_local = zext_ln36_6_fu_692_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights1_address1_local = zext_ln36_5_fu_662_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights1_address1_local = zext_ln36_4_fu_632_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_address1_local = zext_ln36_3_fu_602_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_address1_local = zext_ln36_2_fu_572_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_address1_local = zext_ln36_1_fu_547_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_address1_local = zext_ln36_fu_526_p1;
    end else begin
        weights1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_ce0_local = 1'b1;
    end else begin
        weights1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_ce1_local = 1'b1;
    end else begin
        weights1_ce1_local = 1'b0;
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
            if (((1'b1 == ap_condition_exit_pp0_iter7_stage10) & (ap_idle_pp0_0to6 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
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
assign activations_address0 = zext_ln34_fu_943_p1;
assign activations_address1 = zext_ln33_fu_922_p1;
assign activations_ce0 = activations_ce0_local;
assign activations_ce1 = activations_ce1_local;
assign activations_d0 = reg_484;
assign activations_d1 = reg_478;
assign activations_we0 = activations_we0_local;
assign activations_we1 = activations_we1_local;
assign add_ln33_fu_862_p2 = (j_1_reg_1033 + 7'd2);
assign add_ln36_10_fu_877_p2 = (mul_ln36_reg_1044 + 10'd12);
assign add_ln36_11_fu_552_p2 = (mul_ln36_reg_1044 + 10'd14);
assign add_ln36_12_fu_582_p2 = (mul_ln36_reg_1044 + 10'd15);
assign add_ln36_13_fu_612_p2 = (mul_ln36_reg_1044 + 10'd16);
assign add_ln36_14_fu_642_p2 = (mul_ln36_reg_1044 + 10'd17);
assign add_ln36_15_fu_672_p2 = (mul_ln36_reg_1044 + 10'd18);
assign add_ln36_16_fu_702_p2 = (mul_ln36_reg_1044 + 10'd19);
assign add_ln36_17_fu_732_p2 = (mul_ln36_reg_1044 + 10'd20);
assign add_ln36_18_fu_762_p2 = (mul_ln36_reg_1044 + 10'd21);
assign add_ln36_19_fu_792_p2 = (mul_ln36_reg_1044 + 10'd22);
assign add_ln36_1_fu_597_p2 = (mul_ln36_reg_1044 + 10'd3);
assign add_ln36_20_fu_822_p2 = (mul_ln36_reg_1044 + 10'd23);
assign add_ln36_21_fu_852_p2 = (mul_ln36_reg_1044 + 10'd24);
assign add_ln36_22_fu_892_p2 = (mul_ln36_reg_1044 + 10'd25);
assign add_ln36_2_fu_627_p2 = (mul_ln36_reg_1044 + 10'd4);
assign add_ln36_3_fu_657_p2 = (mul_ln36_reg_1044 + 10'd5);
assign add_ln36_4_fu_687_p2 = (mul_ln36_reg_1044 + 10'd6);
assign add_ln36_5_fu_717_p2 = (mul_ln36_reg_1044 + 10'd7);
assign add_ln36_6_fu_747_p2 = (mul_ln36_reg_1044 + 10'd8);
assign add_ln36_7_fu_777_p2 = (mul_ln36_reg_1044 + 10'd9);
assign add_ln36_8_fu_807_p2 = (mul_ln36_reg_1044 + 10'd10);
assign add_ln36_9_fu_837_p2 = (mul_ln36_reg_1044 + 10'd11);
assign add_ln36_fu_567_p2 = (mul_ln36_reg_1044 + 10'd2);
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
assign bitcast_ln36_10_fu_872_p1 = reg_470;
assign bitcast_ln36_11_fu_902_p1 = reg_470;
assign bitcast_ln36_12_fu_912_p1 = reg_470;
assign bitcast_ln36_13_fu_577_p1 = reg_474;
assign bitcast_ln36_14_fu_607_p1 = reg_474;
assign bitcast_ln36_15_fu_637_p1 = reg_474;
assign bitcast_ln36_16_fu_667_p1 = reg_474;
assign bitcast_ln36_17_fu_697_p1 = reg_474;
assign bitcast_ln36_18_fu_727_p1 = reg_474;
assign bitcast_ln36_19_fu_757_p1 = reg_474;
assign bitcast_ln36_1_fu_592_p1 = reg_470;
assign bitcast_ln36_20_fu_787_p1 = reg_474;
assign bitcast_ln36_21_fu_817_p1 = reg_474;
assign bitcast_ln36_22_fu_847_p1 = reg_474;
assign bitcast_ln36_23_fu_887_p1 = reg_474;
assign bitcast_ln36_24_fu_907_p1 = reg_474;
assign bitcast_ln36_25_fu_917_p1 = reg_474;
assign bitcast_ln36_2_fu_622_p1 = reg_470;
assign bitcast_ln36_3_fu_652_p1 = reg_470;
assign bitcast_ln36_4_fu_682_p1 = reg_470;
assign bitcast_ln36_5_fu_712_p1 = reg_470;
assign bitcast_ln36_6_fu_742_p1 = reg_470;
assign bitcast_ln36_7_fu_772_p1 = reg_470;
assign bitcast_ln36_8_fu_802_p1 = reg_470;
assign bitcast_ln36_9_fu_832_p1 = reg_470;
assign bitcast_ln36_fu_562_p1 = reg_470;
assign empty_48_fu_530_p2 = (mul_ln36_reg_1044 + 10'd13);
assign grp_fu_580_p_ce = 1'b1;
assign grp_fu_580_p_din0 = grp_fu_452_p0;
assign grp_fu_580_p_din1 = grp_fu_452_p1;
assign grp_fu_580_p_opcode = 2'd0;
assign grp_fu_584_p_ce = 1'b1;
assign grp_fu_584_p_din0 = grp_fu_457_p0;
assign grp_fu_584_p_din1 = grp_fu_457_p1;
assign grp_fu_584_p_opcode = 2'd0;
assign grp_fu_588_p_ce = 1'b1;
assign grp_fu_588_p_din0 = grp_fu_462_p0;
assign grp_fu_588_p_din1 = grp_fu_462_p1;
assign grp_fu_592_p_ce = 1'b1;
assign grp_fu_592_p_din0 = grp_fu_466_p0;
assign grp_fu_592_p_din1 = grp_fu_466_p1;
assign mul_ln36_fu_510_p0 = mul_ln36_fu_510_p00;
assign mul_ln36_fu_510_p00 = ap_sig_allocacmp_j_1;
assign mul_ln36_fu_510_p1 = 10'd13;
assign or_ln7_fu_935_p3 = {{tmp_s_fu_926_p4}, {1'd1}};
assign or_ln_fu_540_p3 = {{tmp_reg_1073}, {1'd1}};
assign tmp_s_fu_926_p4 = {{j_1_reg_1033_pp0_iter8_reg[5:1]}};
assign weights1_address0 = weights1_address0_local;
assign weights1_address1 = weights1_address1_local;
assign weights1_ce0 = weights1_ce0_local;
assign weights1_ce1 = weights1_ce1_local;
assign zext_ln33_fu_922_p1 = j_1_reg_1033_pp0_iter8_reg;
assign zext_ln34_fu_943_p1 = or_ln7_fu_935_p3;
assign zext_ln36_10_fu_812_p1 = add_ln36_8_fu_807_p2;
assign zext_ln36_11_fu_842_p1 = add_ln36_9_fu_837_p2;
assign zext_ln36_12_fu_882_p1 = add_ln36_10_fu_877_p2;
assign zext_ln36_13_fu_535_p1 = empty_48_fu_530_p2;
assign zext_ln36_14_fu_557_p1 = add_ln36_11_fu_552_p2;
assign zext_ln36_15_fu_587_p1 = add_ln36_12_fu_582_p2;
assign zext_ln36_16_fu_617_p1 = add_ln36_13_fu_612_p2;
assign zext_ln36_17_fu_647_p1 = add_ln36_14_fu_642_p2;
assign zext_ln36_18_fu_677_p1 = add_ln36_15_fu_672_p2;
assign zext_ln36_19_fu_707_p1 = add_ln36_16_fu_702_p2;
assign zext_ln36_1_fu_547_p1 = or_ln_fu_540_p3;
assign zext_ln36_20_fu_737_p1 = add_ln36_17_fu_732_p2;
assign zext_ln36_21_fu_767_p1 = add_ln36_18_fu_762_p2;
assign zext_ln36_22_fu_797_p1 = add_ln36_19_fu_792_p2;
assign zext_ln36_23_fu_827_p1 = add_ln36_20_fu_822_p2;
assign zext_ln36_24_fu_857_p1 = add_ln36_21_fu_852_p2;
assign zext_ln36_25_fu_897_p1 = add_ln36_22_fu_892_p2;
assign zext_ln36_2_fu_572_p1 = add_ln36_fu_567_p2;
assign zext_ln36_3_fu_602_p1 = add_ln36_1_fu_597_p2;
assign zext_ln36_4_fu_632_p1 = add_ln36_2_fu_627_p2;
assign zext_ln36_5_fu_662_p1 = add_ln36_3_fu_657_p2;
assign zext_ln36_6_fu_692_p1 = add_ln36_4_fu_687_p2;
assign zext_ln36_7_fu_722_p1 = add_ln36_5_fu_717_p2;
assign zext_ln36_8_fu_752_p1 = add_ln36_6_fu_747_p2;
assign zext_ln36_9_fu_782_p1 = add_ln36_7_fu_777_p2;
assign zext_ln36_fu_526_p1 = mul_ln36_reg_1044;
endmodule 