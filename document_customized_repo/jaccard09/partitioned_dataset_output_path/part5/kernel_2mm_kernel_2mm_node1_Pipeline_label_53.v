
module kernel_2mm_kernel_2mm_node1_Pipeline_label_53 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,mul_ln175,v227_0_address0,v227_0_ce0,v227_0_q0,v227_0_address1,v227_0_ce1,v227_0_q1,v227_1_address0,v227_1_ce0,v227_1_q0,v227_1_address1,v227_1_ce1,v227_1_q1,v227_2_address0,v227_2_ce0,v227_2_q0,v227_2_address1,v227_2_ce1,v227_2_q1,v227_3_address0,v227_3_ce0,v227_3_q0,v227_3_address1,v227_3_ce1,v227_3_q1,v227_4_address0,v227_4_ce0,v227_4_q0,v227_4_address1,v227_4_ce1,v227_4_q1,v227_5_address0,v227_5_ce0,v227_5_q0,v227_5_address1,v227_5_ce1,v227_5_q1,v227_6_address0,v227_6_ce0,v227_6_q0,v227_6_address1,v227_6_ce1,v227_6_q1,v227_7_address0,v227_7_ce0,v227_7_q0,v227_7_address1,v227_7_ce1,v227_7_q1,mul_ln212,mul_ln264,mul_ln277,cmp11,empty,v120_1,v133_1,v144_1,v155_1,v166_1,v177_1,v188_1,v199_1,v210_1,grp_fu_8304_p_din0,grp_fu_8304_p_din1,grp_fu_8304_p_opcode,grp_fu_8304_p_dout0,grp_fu_8304_p_ce,grp_fu_8308_p_din0,grp_fu_8308_p_din1,grp_fu_8308_p_opcode,grp_fu_8308_p_dout0,grp_fu_8308_p_ce,grp_fu_8312_p_din0,grp_fu_8312_p_din1,grp_fu_8312_p_opcode,grp_fu_8312_p_dout0,grp_fu_8312_p_ce,grp_fu_8316_p_din0,grp_fu_8316_p_din1,grp_fu_8316_p_dout0,grp_fu_8316_p_ce,grp_fu_8320_p_din0,grp_fu_8320_p_din1,grp_fu_8320_p_dout0,grp_fu_8320_p_ce,grp_fu_8324_p_din0,grp_fu_8324_p_din1,grp_fu_8324_p_dout0,grp_fu_8324_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 6'd1;
parameter    ap_ST_fsm_pp0_stage1 = 6'd2;
parameter    ap_ST_fsm_pp0_stage2 = 6'd4;
parameter    ap_ST_fsm_pp0_stage3 = 6'd8;
parameter    ap_ST_fsm_pp0_stage4 = 6'd16;
parameter    ap_ST_fsm_pp0_stage5 = 6'd32;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [13:0] v225_3_address0;
output   v225_3_ce0;
output   v225_3_we0;
output  [31:0] v225_3_d0;
input  [31:0] v225_3_q0;
output  [13:0] v225_3_address1;
output   v225_3_ce1;
output   v225_3_we1;
output  [31:0] v225_3_d1;
input  [31:0] v225_3_q1;
output  [13:0] v225_2_address0;
output   v225_2_ce0;
output   v225_2_we0;
output  [31:0] v225_2_d0;
input  [31:0] v225_2_q0;
output  [13:0] v225_2_address1;
output   v225_2_ce1;
output   v225_2_we1;
output  [31:0] v225_2_d1;
input  [31:0] v225_2_q1;
output  [13:0] v225_1_address0;
output   v225_1_ce0;
output   v225_1_we0;
output  [31:0] v225_1_d0;
input  [31:0] v225_1_q0;
output  [13:0] v225_1_address1;
output   v225_1_ce1;
output   v225_1_we1;
output  [31:0] v225_1_d1;
input  [31:0] v225_1_q1;
output  [13:0] v225_0_address0;
output   v225_0_ce0;
output   v225_0_we0;
output  [31:0] v225_0_d0;
input  [31:0] v225_0_q0;
output  [13:0] v225_0_address1;
output   v225_0_ce1;
output   v225_0_we1;
output  [31:0] v225_0_d1;
input  [31:0] v225_0_q1;
input  [12:0] mul_ln175;
output  [12:0] v227_0_address0;
output   v227_0_ce0;
input  [31:0] v227_0_q0;
output  [12:0] v227_0_address1;
output   v227_0_ce1;
input  [31:0] v227_0_q1;
output  [12:0] v227_1_address0;
output   v227_1_ce0;
input  [31:0] v227_1_q0;
output  [12:0] v227_1_address1;
output   v227_1_ce1;
input  [31:0] v227_1_q1;
output  [12:0] v227_2_address0;
output   v227_2_ce0;
input  [31:0] v227_2_q0;
output  [12:0] v227_2_address1;
output   v227_2_ce1;
input  [31:0] v227_2_q1;
output  [12:0] v227_3_address0;
output   v227_3_ce0;
input  [31:0] v227_3_q0;
output  [12:0] v227_3_address1;
output   v227_3_ce1;
input  [31:0] v227_3_q1;
output  [12:0] v227_4_address0;
output   v227_4_ce0;
input  [31:0] v227_4_q0;
output  [12:0] v227_4_address1;
output   v227_4_ce1;
input  [31:0] v227_4_q1;
output  [12:0] v227_5_address0;
output   v227_5_ce0;
input  [31:0] v227_5_q0;
output  [12:0] v227_5_address1;
output   v227_5_ce1;
input  [31:0] v227_5_q1;
output  [12:0] v227_6_address0;
output   v227_6_ce0;
input  [31:0] v227_6_q0;
output  [12:0] v227_6_address1;
output   v227_6_ce1;
input  [31:0] v227_6_q1;
output  [12:0] v227_7_address0;
output   v227_7_ce0;
input  [31:0] v227_7_q0;
output  [12:0] v227_7_address1;
output   v227_7_ce1;
input  [31:0] v227_7_q1;
input  [13:0] mul_ln212;
input  [13:0] mul_ln264;
input  [13:0] mul_ln277;
input  [0:0] cmp11;
input  [2:0] empty;
input  [31:0] v120_1;
input  [31:0] v133_1;
input  [31:0] v144_1;
input  [31:0] v155_1;
input  [31:0] v166_1;
input  [31:0] v177_1;
input  [31:0] v188_1;
input  [31:0] v199_1;
input  [31:0] v210_1;
output  [31:0] grp_fu_8304_p_din0;
output  [31:0] grp_fu_8304_p_din1;
output  [1:0] grp_fu_8304_p_opcode;
input  [31:0] grp_fu_8304_p_dout0;
output   grp_fu_8304_p_ce;
output  [31:0] grp_fu_8308_p_din0;
output  [31:0] grp_fu_8308_p_din1;
output  [1:0] grp_fu_8308_p_opcode;
input  [31:0] grp_fu_8308_p_dout0;
output   grp_fu_8308_p_ce;
output  [31:0] grp_fu_8312_p_din0;
output  [31:0] grp_fu_8312_p_din1;
output  [1:0] grp_fu_8312_p_opcode;
input  [31:0] grp_fu_8312_p_dout0;
output   grp_fu_8312_p_ce;
output  [31:0] grp_fu_8316_p_din0;
output  [31:0] grp_fu_8316_p_din1;
input  [31:0] grp_fu_8316_p_dout0;
output   grp_fu_8316_p_ce;
output  [31:0] grp_fu_8320_p_din0;
output  [31:0] grp_fu_8320_p_din1;
input  [31:0] grp_fu_8320_p_dout0;
output   grp_fu_8320_p_ce;
output  [31:0] grp_fu_8324_p_din0;
output  [31:0] grp_fu_8324_p_din1;
input  [31:0] grp_fu_8324_p_dout0;
output   grp_fu_8324_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] icmp_ln170_reg_1333;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_614;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] reg_618;
reg   [31:0] reg_622;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_626;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_630;
reg   [31:0] reg_634;
reg   [7:0] v116_reg_1328;
wire   [0:0] icmp_ln170_fu_646_p2;
wire   [13:0] zext_ln175_fu_652_p1;
reg   [13:0] zext_ln175_reg_1337;
reg   [13:0] v225_1_addr_5_reg_1383;
reg   [13:0] v225_1_addr_5_reg_1383_pp0_iter1_reg;
reg   [13:0] v225_1_addr_5_reg_1383_pp0_iter2_reg;
reg   [13:0] v225_2_addr_5_reg_1388;
reg   [13:0] v225_2_addr_5_reg_1388_pp0_iter1_reg;
reg   [13:0] v225_2_addr_5_reg_1388_pp0_iter2_reg;
reg   [13:0] v225_3_addr_5_reg_1393;
reg   [13:0] v225_3_addr_5_reg_1393_pp0_iter1_reg;
reg   [13:0] v225_3_addr_5_reg_1393_pp0_iter2_reg;
wire   [13:0] zext_ln182_fu_709_p1;
reg   [13:0] zext_ln182_reg_1398;
reg   [13:0] v225_1_addr_6_reg_1444;
reg   [13:0] v225_1_addr_6_reg_1444_pp0_iter1_reg;
reg   [13:0] v225_1_addr_6_reg_1444_pp0_iter2_reg;
reg   [13:0] v225_2_addr_6_reg_1449;
reg   [13:0] v225_2_addr_6_reg_1449_pp0_iter1_reg;
reg   [13:0] v225_2_addr_6_reg_1449_pp0_iter2_reg;
reg   [13:0] v225_3_addr_6_reg_1454;
reg   [13:0] v225_3_addr_6_reg_1454_pp0_iter1_reg;
reg   [13:0] v225_3_addr_6_reg_1454_pp0_iter2_reg;
reg   [13:0] v225_0_addr_reg_1459;
reg   [13:0] v225_0_addr_reg_1459_pp0_iter1_reg;
reg   [13:0] v225_0_addr_reg_1459_pp0_iter2_reg;
reg   [13:0] v225_1_addr_reg_1465;
reg   [13:0] v225_1_addr_reg_1465_pp0_iter1_reg;
reg   [13:0] v225_1_addr_reg_1465_pp0_iter2_reg;
reg   [13:0] v225_2_addr_7_reg_1470;
reg   [13:0] v225_2_addr_7_reg_1470_pp0_iter1_reg;
reg   [13:0] v225_2_addr_7_reg_1470_pp0_iter2_reg;
reg   [13:0] v225_3_addr_7_reg_1475;
reg   [13:0] v225_3_addr_7_reg_1475_pp0_iter1_reg;
reg   [13:0] v225_3_addr_7_reg_1475_pp0_iter2_reg;
reg   [31:0] v225_1_load_4_reg_1480;
wire   [31:0] v121_fu_792_p19;
reg   [31:0] v121_reg_1485;
wire   [31:0] v125_fu_835_p3;
reg   [31:0] v125_reg_1492;
wire   [31:0] v127_fu_874_p19;
reg   [31:0] v127_reg_1497;
wire   [31:0] v131_fu_917_p3;
reg   [31:0] v131_reg_1504;
wire   [31:0] v137_fu_928_p3;
reg   [31:0] v137_reg_1509;
wire   [31:0] v142_fu_939_p3;
reg   [31:0] v142_reg_1514;
wire   [31:0] v148_fu_950_p3;
reg   [31:0] v148_reg_1519;
wire   [31:0] v164_fu_961_p3;
reg   [31:0] v164_reg_1524;
reg   [31:0] v122_reg_1529;
wire    ap_block_pp0_stage5_11001;
reg   [31:0] v128_reg_1534;
reg   [31:0] v134_reg_1539;
wire   [13:0] add_ln264_fu_978_p2;
reg   [13:0] add_ln264_reg_1544;
wire   [31:0] v118_fu_985_p3;
reg   [13:0] v225_0_addr_8_reg_1554;
reg   [13:0] v225_0_addr_8_reg_1554_pp0_iter2_reg;
wire   [13:0] add_ln271_fu_1005_p2;
reg   [13:0] add_ln271_reg_1560;
reg   [13:0] v225_1_addr_8_reg_1565;
reg   [13:0] v225_1_addr_8_reg_1565_pp0_iter2_reg;
reg   [13:0] v225_2_addr_8_reg_1570;
reg   [13:0] v225_2_addr_8_reg_1570_pp0_iter2_reg;
reg   [13:0] v225_3_addr_8_reg_1575;
reg   [13:0] v225_3_addr_8_reg_1575_pp0_iter2_reg;
reg   [31:0] v139_reg_1580;
reg   [31:0] v145_reg_1585;
reg   [31:0] v150_reg_1590;
reg   [13:0] v225_0_addr_7_reg_1595;
reg   [13:0] v225_0_addr_7_reg_1595_pp0_iter2_reg;
reg   [13:0] v225_1_addr_7_reg_1600;
reg   [13:0] v225_1_addr_7_reg_1600_pp0_iter2_reg;
reg   [13:0] v225_1_addr_7_reg_1600_pp0_iter3_reg;
reg   [13:0] v225_0_addr_9_reg_1605;
reg   [13:0] v225_0_addr_9_reg_1605_pp0_iter2_reg;
reg   [13:0] v225_0_addr_9_reg_1605_pp0_iter3_reg;
reg   [13:0] v225_1_addr_9_reg_1610;
reg   [13:0] v225_1_addr_9_reg_1610_pp0_iter2_reg;
reg   [13:0] v225_1_addr_9_reg_1610_pp0_iter3_reg;
wire   [31:0] v153_fu_1023_p3;
reg   [31:0] v153_reg_1615;
reg   [31:0] v156_reg_1620;
wire   [31:0] v159_fu_1034_p3;
reg   [31:0] v159_reg_1625;
reg   [31:0] v161_reg_1630;
reg   [31:0] v167_reg_1635;
wire   [31:0] v170_fu_1045_p3;
reg   [31:0] v170_reg_1640;
reg   [31:0] v172_reg_1645;
wire   [31:0] v175_fu_1056_p3;
reg   [31:0] v175_reg_1650;
reg   [31:0] v178_reg_1655;
wire   [31:0] v181_fu_1067_p3;
reg   [31:0] v181_reg_1660;
reg   [31:0] v183_reg_1665;
wire   [31:0] v186_fu_1078_p3;
reg   [31:0] v186_reg_1670;
wire   [31:0] v192_fu_1089_p3;
reg   [31:0] v192_reg_1675;
wire   [31:0] v197_fu_1100_p3;
reg   [31:0] v197_reg_1680;
wire   [31:0] v203_fu_1111_p3;
reg   [31:0] v203_reg_1685;
reg   [31:0] v189_reg_1690;
reg   [31:0] v194_reg_1695;
reg   [31:0] v200_reg_1700;
wire   [31:0] v208_fu_1122_p3;
reg   [31:0] v208_reg_1705;
wire   [31:0] v214_fu_1133_p3;
reg   [31:0] v214_reg_1710;
reg   [31:0] v205_reg_1715;
reg   [31:0] v211_reg_1720;
reg   [31:0] v216_reg_1725;
reg   [31:0] v206_reg_1730;
reg   [31:0] v212_reg_1735;
reg   [31:0] v217_reg_1740;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln175_6_fu_666_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln171_fu_684_p1;
wire   [63:0] zext_ln182_6_fu_723_p1;
wire   [63:0] zext_ln179_fu_741_p1;
wire   [63:0] zext_ln212_fu_752_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln219_fu_997_p1;
wire   [63:0] zext_ln264_fu_1009_p1;
wire   [63:0] zext_ln271_fu_1014_p1;
reg   [7:0] v116_1_fu_124;
wire   [7:0] add_ln170_fu_968_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v116;
reg    v225_1_ce1_local;
reg   [13:0] v225_1_address1_local;
reg    v225_1_ce0_local;
reg   [13:0] v225_1_address0_local;
wire    ap_block_pp0_stage2;
reg    v225_1_we1_local;
reg   [31:0] v225_1_d1_local;
wire   [31:0] bitcast_ln178_fu_1160_p1;
wire    ap_block_pp0_stage3;
reg    v225_1_we0_local;
reg   [31:0] v225_1_d0_local;
wire   [31:0] bitcast_ln185_fu_1165_p1;
wire   [31:0] bitcast_ln231_fu_1180_p1;
wire    ap_block_pp0_stage4;
wire   [31:0] bitcast_ln237_fu_1185_p1;
wire   [31:0] bitcast_ln283_fu_1219_p1;
wire    ap_block_pp0_stage5;
wire   [31:0] bitcast_ln289_fu_1223_p1;
reg    v227_0_ce1_local;
reg    v227_0_ce0_local;
reg    v227_1_ce1_local;
reg    v227_1_ce0_local;
reg    v227_2_ce1_local;
reg    v227_2_ce0_local;
reg    v227_3_ce1_local;
reg    v227_3_ce0_local;
reg    v227_4_ce1_local;
reg    v227_4_ce0_local;
reg    v227_5_ce1_local;
reg    v227_5_ce0_local;
reg    v227_6_ce1_local;
reg    v227_6_ce0_local;
reg    v227_7_ce1_local;
reg    v227_7_ce0_local;
reg    v225_2_ce1_local;
reg   [13:0] v225_2_address1_local;
reg    v225_2_ce0_local;
reg   [13:0] v225_2_address0_local;
reg    v225_2_we1_local;
reg   [31:0] v225_2_d1_local;
wire   [31:0] bitcast_ln192_fu_1140_p1;
reg    v225_2_we0_local;
reg   [31:0] v225_2_d0_local;
wire   [31:0] bitcast_ln198_fu_1145_p1;
wire   [31:0] bitcast_ln244_fu_1190_p1;
wire   [31:0] bitcast_ln250_fu_1195_p1;
reg    v225_3_ce1_local;
reg   [13:0] v225_3_address1_local;
reg    v225_3_ce0_local;
reg   [13:0] v225_3_address0_local;
reg    v225_3_we1_local;
reg   [31:0] v225_3_d1_local;
wire   [31:0] bitcast_ln205_fu_1150_p1;
reg    v225_3_we0_local;
reg   [31:0] v225_3_d0_local;
wire   [31:0] bitcast_ln211_fu_1155_p1;
wire   [31:0] bitcast_ln257_fu_1200_p1;
wire   [31:0] bitcast_ln263_fu_1205_p1;
reg    v225_0_ce1_local;
reg   [13:0] v225_0_address1_local;
reg    v225_0_ce0_local;
reg   [13:0] v225_0_address0_local;
reg    v225_0_we0_local;
reg   [31:0] v225_0_d0_local;
wire   [31:0] bitcast_ln218_fu_1170_p1;
reg    v225_0_we1_local;
reg   [31:0] v225_0_d1_local;
wire   [31:0] bitcast_ln224_fu_1175_p1;
wire   [31:0] bitcast_ln270_fu_1210_p1;
wire   [31:0] bitcast_ln276_fu_1215_p1;
reg   [31:0] grp_fu_590_p0;
reg   [31:0] grp_fu_590_p1;
reg   [31:0] grp_fu_594_p0;
reg   [31:0] grp_fu_594_p1;
reg   [31:0] grp_fu_598_p0;
reg   [31:0] grp_fu_598_p1;
reg   [31:0] grp_fu_602_p0;
reg   [31:0] grp_fu_602_p1;
reg   [31:0] grp_fu_606_p0;
reg   [31:0] grp_fu_606_p1;
reg   [31:0] grp_fu_610_p0;
reg   [31:0] grp_fu_610_p1;
wire   [12:0] zext_ln175_5_fu_656_p1;
wire   [12:0] add_ln175_fu_660_p2;
wire   [13:0] add_ln171_fu_678_p2;
wire   [6:0] tmp_8_fu_691_p4;
wire   [7:0] or_ln179_1_fu_701_p3;
wire   [12:0] zext_ln182_5_fu_713_p1;
wire   [12:0] add_ln182_fu_717_p2;
wire   [13:0] add_ln179_fu_735_p2;
wire   [13:0] add_ln212_fu_748_p2;
wire   [31:0] v121_fu_792_p2;
wire   [31:0] v121_fu_792_p4;
wire   [31:0] v121_fu_792_p6;
wire   [31:0] v121_fu_792_p8;
wire   [31:0] v121_fu_792_p10;
wire   [31:0] v121_fu_792_p12;
wire   [31:0] v121_fu_792_p14;
wire   [31:0] v121_fu_792_p16;
wire   [31:0] v121_fu_792_p17;
wire   [31:0] v124_fu_831_p1;
wire   [31:0] v127_fu_874_p2;
wire   [31:0] v127_fu_874_p4;
wire   [31:0] v127_fu_874_p6;
wire   [31:0] v127_fu_874_p8;
wire   [31:0] v127_fu_874_p10;
wire   [31:0] v127_fu_874_p12;
wire   [31:0] v127_fu_874_p14;
wire   [31:0] v127_fu_874_p16;
wire   [31:0] v127_fu_874_p17;
wire   [31:0] v130_fu_913_p1;
wire   [31:0] v136_fu_924_p1;
wire   [31:0] v141_fu_935_p1;
wire   [31:0] v147_fu_946_p1;
wire   [31:0] v163_fu_957_p1;
wire   [31:0] v117_fu_982_p1;
wire   [13:0] add_ln219_fu_993_p2;
wire   [31:0] v152_fu_1019_p1;
wire   [31:0] v158_fu_1030_p1;
wire   [31:0] v169_fu_1041_p1;
wire   [31:0] v174_fu_1052_p1;
wire   [31:0] v180_fu_1063_p1;
wire   [31:0] v185_fu_1074_p1;
wire   [31:0] v191_fu_1085_p1;
wire   [31:0] v196_fu_1096_p1;
wire   [31:0] v202_fu_1107_p1;
wire   [31:0] v207_fu_1118_p1;
wire   [31:0] v213_fu_1129_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [5:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
wire   [2:0] v121_fu_792_p1;
wire   [2:0] v121_fu_792_p3;
wire   [2:0] v121_fu_792_p5;
wire   [2:0] v121_fu_792_p7;
wire  signed [2:0] v121_fu_792_p9;
wire  signed [2:0] v121_fu_792_p11;
wire  signed [2:0] v121_fu_792_p13;
wire  signed [2:0] v121_fu_792_p15;
wire   [2:0] v127_fu_874_p1;
wire   [2:0] v127_fu_874_p3;
wire   [2:0] v127_fu_874_p5;
wire   [2:0] v127_fu_874_p7;
wire  signed [2:0] v127_fu_874_p9;
wire  signed [2:0] v127_fu_874_p11;
wire  signed [2:0] v127_fu_874_p13;
wire  signed [2:0] v127_fu_874_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v116_1_fu_124 = 8'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U43(.din0(v121_fu_792_p2),.din1(v121_fu_792_p4),.din2(v121_fu_792_p6),.din3(v121_fu_792_p8),.din4(v121_fu_792_p10),.din5(v121_fu_792_p12),.din6(v121_fu_792_p14),.din7(v121_fu_792_p16),.def(v121_fu_792_p17),.sel(empty),.dout(v121_fu_792_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U44(.din0(v127_fu_874_p2),.din1(v127_fu_874_p4),.din2(v127_fu_874_p6),.din3(v127_fu_874_p8),.din4(v127_fu_874_p10),.din5(v127_fu_874_p12),.din6(v127_fu_874_p14),.din7(v127_fu_874_p16),.def(v127_fu_874_p17),.sel(empty),.dout(v127_fu_874_p19));
kernel_2mm_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_fu_124 <= 8'd0;
    end else if (((icmp_ln170_reg_1333 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_1_fu_124 <= add_ln170_fu_968_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln264_reg_1544 <= add_ln264_fu_978_p2;
        add_ln271_reg_1560 <= add_ln271_fu_1005_p2;
        icmp_ln170_reg_1333 <= icmp_ln170_fu_646_p2;
        v116_reg_1328 <= ap_sig_allocacmp_v116;
        v225_0_addr_8_reg_1554 <= zext_ln219_fu_997_p1;
        v225_0_addr_8_reg_1554_pp0_iter2_reg <= v225_0_addr_8_reg_1554;
        v225_1_addr_5_reg_1383 <= zext_ln171_fu_684_p1;
        v225_1_addr_5_reg_1383_pp0_iter1_reg <= v225_1_addr_5_reg_1383;
        v225_1_addr_5_reg_1383_pp0_iter2_reg <= v225_1_addr_5_reg_1383_pp0_iter1_reg;
        v225_1_addr_6_reg_1444 <= zext_ln179_fu_741_p1;
        v225_1_addr_6_reg_1444_pp0_iter1_reg <= v225_1_addr_6_reg_1444;
        v225_1_addr_6_reg_1444_pp0_iter2_reg <= v225_1_addr_6_reg_1444_pp0_iter1_reg;
        v225_1_addr_8_reg_1565 <= zext_ln219_fu_997_p1;
        v225_1_addr_8_reg_1565_pp0_iter2_reg <= v225_1_addr_8_reg_1565;
        v225_2_addr_5_reg_1388 <= zext_ln171_fu_684_p1;
        v225_2_addr_5_reg_1388_pp0_iter1_reg <= v225_2_addr_5_reg_1388;
        v225_2_addr_5_reg_1388_pp0_iter2_reg <= v225_2_addr_5_reg_1388_pp0_iter1_reg;
        v225_2_addr_6_reg_1449 <= zext_ln179_fu_741_p1;
        v225_2_addr_6_reg_1449_pp0_iter1_reg <= v225_2_addr_6_reg_1449;
        v225_2_addr_6_reg_1449_pp0_iter2_reg <= v225_2_addr_6_reg_1449_pp0_iter1_reg;
        v225_2_addr_8_reg_1570 <= zext_ln219_fu_997_p1;
        v225_2_addr_8_reg_1570_pp0_iter2_reg <= v225_2_addr_8_reg_1570;
        v225_3_addr_5_reg_1393 <= zext_ln171_fu_684_p1;
        v225_3_addr_5_reg_1393_pp0_iter1_reg <= v225_3_addr_5_reg_1393;
        v225_3_addr_5_reg_1393_pp0_iter2_reg <= v225_3_addr_5_reg_1393_pp0_iter1_reg;
        v225_3_addr_6_reg_1454 <= zext_ln179_fu_741_p1;
        v225_3_addr_6_reg_1454_pp0_iter1_reg <= v225_3_addr_6_reg_1454;
        v225_3_addr_6_reg_1454_pp0_iter2_reg <= v225_3_addr_6_reg_1454_pp0_iter1_reg;
        v225_3_addr_8_reg_1575 <= zext_ln219_fu_997_p1;
        v225_3_addr_8_reg_1575_pp0_iter2_reg <= v225_3_addr_8_reg_1575;
        zext_ln175_reg_1337[7 : 0] <= zext_ln175_fu_652_p1[7 : 0];
        zext_ln182_reg_1398[7 : 1] <= zext_ln182_fu_709_p1[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_614 <= grp_fu_8304_p_dout0;
        reg_618 <= grp_fu_8308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_622 <= grp_fu_8312_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_626 <= grp_fu_8304_p_dout0;
        reg_630 <= grp_fu_8308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_634 <= grp_fu_8312_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v121_reg_1485 <= v121_fu_792_p19;
        v125_reg_1492 <= v125_fu_835_p3;
        v127_reg_1497 <= v127_fu_874_p19;
        v131_reg_1504 <= v131_fu_917_p3;
        v137_reg_1509 <= v137_fu_928_p3;
        v142_reg_1514 <= v142_fu_939_p3;
        v148_reg_1519 <= v148_fu_950_p3;
        v153_reg_1615 <= v153_fu_1023_p3;
        v159_reg_1625 <= v159_fu_1034_p3;
        v225_0_addr_7_reg_1595 <= zext_ln264_fu_1009_p1;
        v225_0_addr_7_reg_1595_pp0_iter2_reg <= v225_0_addr_7_reg_1595;
        v225_0_addr_9_reg_1605 <= zext_ln271_fu_1014_p1;
        v225_0_addr_9_reg_1605_pp0_iter2_reg <= v225_0_addr_9_reg_1605;
        v225_0_addr_9_reg_1605_pp0_iter3_reg <= v225_0_addr_9_reg_1605_pp0_iter2_reg;
        v225_0_addr_reg_1459 <= zext_ln212_fu_752_p1;
        v225_0_addr_reg_1459_pp0_iter1_reg <= v225_0_addr_reg_1459;
        v225_0_addr_reg_1459_pp0_iter2_reg <= v225_0_addr_reg_1459_pp0_iter1_reg;
        v225_1_addr_7_reg_1600 <= zext_ln264_fu_1009_p1;
        v225_1_addr_7_reg_1600_pp0_iter2_reg <= v225_1_addr_7_reg_1600;
        v225_1_addr_7_reg_1600_pp0_iter3_reg <= v225_1_addr_7_reg_1600_pp0_iter2_reg;
        v225_1_addr_9_reg_1610 <= zext_ln271_fu_1014_p1;
        v225_1_addr_9_reg_1610_pp0_iter2_reg <= v225_1_addr_9_reg_1610;
        v225_1_addr_9_reg_1610_pp0_iter3_reg <= v225_1_addr_9_reg_1610_pp0_iter2_reg;
        v225_1_addr_reg_1465 <= zext_ln212_fu_752_p1;
        v225_1_addr_reg_1465_pp0_iter1_reg <= v225_1_addr_reg_1465;
        v225_1_addr_reg_1465_pp0_iter2_reg <= v225_1_addr_reg_1465_pp0_iter1_reg;
        v225_2_addr_7_reg_1470 <= zext_ln212_fu_752_p1;
        v225_2_addr_7_reg_1470_pp0_iter1_reg <= v225_2_addr_7_reg_1470;
        v225_2_addr_7_reg_1470_pp0_iter2_reg <= v225_2_addr_7_reg_1470_pp0_iter1_reg;
        v225_3_addr_7_reg_1475 <= zext_ln212_fu_752_p1;
        v225_3_addr_7_reg_1475_pp0_iter1_reg <= v225_3_addr_7_reg_1475;
        v225_3_addr_7_reg_1475_pp0_iter2_reg <= v225_3_addr_7_reg_1475_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v122_reg_1529 <= grp_fu_8316_p_dout0;
        v128_reg_1534 <= grp_fu_8320_p_dout0;
        v134_reg_1539 <= grp_fu_8324_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v139_reg_1580 <= grp_fu_8316_p_dout0;
        v145_reg_1585 <= grp_fu_8320_p_dout0;
        v150_reg_1590 <= grp_fu_8324_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v156_reg_1620 <= grp_fu_8316_p_dout0;
        v161_reg_1630 <= grp_fu_8320_p_dout0;
        v167_reg_1635 <= grp_fu_8324_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v164_reg_1524 <= v164_fu_961_p3;
        v170_reg_1640 <= v170_fu_1045_p3;
        v175_reg_1650 <= v175_fu_1056_p3;
        v181_reg_1660 <= v181_fu_1067_p3;
        v186_reg_1670 <= v186_fu_1078_p3;
        v192_reg_1675 <= v192_fu_1089_p3;
        v197_reg_1680 <= v197_fu_1100_p3;
        v203_reg_1685 <= v203_fu_1111_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v172_reg_1645 <= grp_fu_8316_p_dout0;
        v178_reg_1655 <= grp_fu_8320_p_dout0;
        v183_reg_1665 <= grp_fu_8324_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v189_reg_1690 <= grp_fu_8316_p_dout0;
        v194_reg_1695 <= grp_fu_8320_p_dout0;
        v200_reg_1700 <= grp_fu_8324_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v205_reg_1715 <= grp_fu_8316_p_dout0;
        v211_reg_1720 <= grp_fu_8320_p_dout0;
        v216_reg_1725 <= grp_fu_8324_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v206_reg_1730 <= grp_fu_8304_p_dout0;
        v212_reg_1735 <= grp_fu_8308_p_dout0;
        v217_reg_1740 <= grp_fu_8312_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v208_reg_1705 <= v208_fu_1122_p3;
        v214_reg_1710 <= v214_fu_1133_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_load_4_reg_1480 <= v225_1_q1;
    end
end
always @ (*) begin
    if (((icmp_ln170_reg_1333 == 1'd0) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v116 = 8'd0;
    end else begin
        ap_sig_allocacmp_v116 = v116_1_fu_124;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_590_p0 = v203_reg_1685;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_590_p0 = v186_reg_1670;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_590_p0 = v170_reg_1640;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_590_p0 = v153_reg_1615;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_590_p0 = v137_reg_1509;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_590_p0 = v118_fu_985_p3;
        end else begin
            grp_fu_590_p0 = 'bx;
        end
    end else begin
        grp_fu_590_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_590_p1 = v205_reg_1715;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_590_p1 = v189_reg_1690;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_590_p1 = v172_reg_1645;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_590_p1 = v156_reg_1620;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_590_p1 = v139_reg_1580;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_590_p1 = v122_reg_1529;
        end else begin
            grp_fu_590_p1 = 'bx;
        end
    end else begin
        grp_fu_590_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_594_p0 = v208_reg_1705;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_594_p0 = v192_reg_1675;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_594_p0 = v175_reg_1650;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_594_p0 = v159_reg_1625;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_594_p0 = v142_reg_1514;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_594_p0 = v125_reg_1492;
        end else begin
            grp_fu_594_p0 = 'bx;
        end
    end else begin
        grp_fu_594_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_594_p1 = v211_reg_1720;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_594_p1 = v194_reg_1695;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_594_p1 = v178_reg_1655;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_594_p1 = v161_reg_1630;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_594_p1 = v145_reg_1585;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_594_p1 = v128_reg_1534;
        end else begin
            grp_fu_594_p1 = 'bx;
        end
    end else begin
        grp_fu_594_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_598_p0 = v214_reg_1710;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_598_p0 = v197_reg_1680;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_598_p0 = v181_reg_1660;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_598_p0 = v164_reg_1524;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_598_p0 = v148_reg_1519;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_598_p0 = v131_reg_1504;
        end else begin
            grp_fu_598_p0 = 'bx;
        end
    end else begin
        grp_fu_598_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_598_p1 = v216_reg_1725;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_598_p1 = v200_reg_1700;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_598_p1 = v183_reg_1665;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_598_p1 = v167_reg_1635;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_598_p1 = v150_reg_1590;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_598_p1 = v134_reg_1539;
        end else begin
            grp_fu_598_p1 = 'bx;
        end
    end else begin
        grp_fu_598_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_602_p0 = v199_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_602_p0 = v188_1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_602_p0 = v166_1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_602_p0 = v155_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_602_p0 = v133_1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_602_p0 = v120_1;
    end else begin
        grp_fu_602_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_602_p1 = v127_reg_1497;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_602_p1 = v121_reg_1485;
    end else begin
        grp_fu_602_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_606_p0 = v210_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_606_p0 = v188_1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_606_p0 = v177_1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_606_p0 = v155_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_606_p0 = v144_1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_606_p0 = v120_1;
    end else begin
        grp_fu_606_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_606_p1 = v121_reg_1485;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_606_p1 = v127_reg_1497;
    end else begin
        grp_fu_606_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_610_p0 = v210_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_610_p0 = v199_1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_610_p0 = v177_1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_610_p0 = v166_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_610_p0 = v144_1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_610_p0 = v133_1;
    end else begin
        grp_fu_610_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_610_p1 = v127_reg_1497;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_610_p1 = v121_reg_1485;
    end else begin
        grp_fu_610_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address0_local = v225_0_addr_9_reg_1605_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_address0_local = v225_0_addr_reg_1459_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address0_local = zext_ln271_fu_1014_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address0_local = zext_ln219_fu_997_p1;
    end else begin
        v225_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_0_address1_local = v225_0_addr_7_reg_1595_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_address1_local = v225_0_addr_8_reg_1554_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address1_local = zext_ln264_fu_1009_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address1_local = v225_0_addr_reg_1459;
    end else begin
        v225_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_0_ce0_local = 1'b1;
    end else begin
        v225_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_0_ce1_local = 1'b1;
    end else begin
        v225_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_d0_local = bitcast_ln276_fu_1215_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_d0_local = bitcast_ln218_fu_1170_p1;
    end else begin
        v225_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v225_0_d1_local = bitcast_ln270_fu_1210_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v225_0_d1_local = bitcast_ln224_fu_1175_p1;
        end else begin
            v225_0_d1_local = 'bx;
        end
    end else begin
        v225_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v225_0_we0_local = 1'b1;
    end else begin
        v225_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v225_0_we1_local = 1'b1;
    end else begin
        v225_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_1_address0_local = v225_1_addr_9_reg_1610_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_1_address0_local = v225_1_addr_8_reg_1565_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_1_address0_local = v225_1_addr_6_reg_1444_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_address0_local = v225_1_addr_9_reg_1610;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address0_local = v225_1_addr_8_reg_1565;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address0_local = zext_ln179_fu_741_p1;
    end else begin
        v225_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_1_address1_local = v225_1_addr_7_reg_1600_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_1_address1_local = v225_1_addr_reg_1465_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_1_address1_local = v225_1_addr_5_reg_1383_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_address1_local = v225_1_addr_7_reg_1600;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address1_local = zext_ln212_fu_752_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address1_local = zext_ln171_fu_684_p1;
    end else begin
        v225_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_1_ce0_local = 1'b1;
    end else begin
        v225_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_1_ce1_local = 1'b1;
    end else begin
        v225_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_1_d0_local = bitcast_ln289_fu_1223_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_1_d0_local = bitcast_ln237_fu_1185_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_1_d0_local = bitcast_ln185_fu_1165_p1;
    end else begin
        v225_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_1_d1_local = bitcast_ln283_fu_1219_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_1_d1_local = bitcast_ln231_fu_1180_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_1_d1_local = bitcast_ln178_fu_1160_p1;
    end else begin
        v225_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v225_1_we0_local = 1'b1;
    end else begin
        v225_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v225_1_we1_local = 1'b1;
    end else begin
        v225_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_2_address0_local = v225_2_addr_8_reg_1570_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_address0_local = v225_2_addr_6_reg_1449_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_address0_local = v225_2_addr_8_reg_1570;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address0_local = zext_ln179_fu_741_p1;
    end else begin
        v225_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_2_address1_local = v225_2_addr_7_reg_1470_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_address1_local = v225_2_addr_5_reg_1388_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_address1_local = v225_2_addr_7_reg_1470;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address1_local = zext_ln171_fu_684_p1;
    end else begin
        v225_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_2_ce0_local = 1'b1;
    end else begin
        v225_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_2_ce1_local = 1'b1;
    end else begin
        v225_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v225_2_d0_local = bitcast_ln250_fu_1195_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_2_d0_local = bitcast_ln198_fu_1145_p1;
        end else begin
            v225_2_d0_local = 'bx;
        end
    end else begin
        v225_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v225_2_d1_local = bitcast_ln244_fu_1190_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_2_d1_local = bitcast_ln192_fu_1140_p1;
        end else begin
            v225_2_d1_local = 'bx;
        end
    end else begin
        v225_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v225_2_we0_local = 1'b1;
    end else begin
        v225_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v225_2_we1_local = 1'b1;
    end else begin
        v225_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_3_address0_local = v225_3_addr_8_reg_1575_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_address0_local = v225_3_addr_6_reg_1454_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_address0_local = v225_3_addr_8_reg_1575;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address0_local = zext_ln179_fu_741_p1;
    end else begin
        v225_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_3_address1_local = v225_3_addr_7_reg_1475_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_address1_local = v225_3_addr_5_reg_1393_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_address1_local = v225_3_addr_7_reg_1475;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address1_local = zext_ln171_fu_684_p1;
    end else begin
        v225_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_3_ce0_local = 1'b1;
    end else begin
        v225_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_3_ce1_local = 1'b1;
    end else begin
        v225_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v225_3_d0_local = bitcast_ln263_fu_1205_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_3_d0_local = bitcast_ln211_fu_1155_p1;
        end else begin
            v225_3_d0_local = 'bx;
        end
    end else begin
        v225_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v225_3_d1_local = bitcast_ln257_fu_1200_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_3_d1_local = bitcast_ln205_fu_1150_p1;
        end else begin
            v225_3_d1_local = 'bx;
        end
    end else begin
        v225_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v225_3_we0_local = 1'b1;
    end else begin
        v225_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v225_3_we1_local = 1'b1;
    end else begin
        v225_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_0_ce0_local = 1'b1;
    end else begin
        v227_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_0_ce1_local = 1'b1;
    end else begin
        v227_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_1_ce0_local = 1'b1;
    end else begin
        v227_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_1_ce1_local = 1'b1;
    end else begin
        v227_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_2_ce0_local = 1'b1;
    end else begin
        v227_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_2_ce1_local = 1'b1;
    end else begin
        v227_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_3_ce0_local = 1'b1;
    end else begin
        v227_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_3_ce1_local = 1'b1;
    end else begin
        v227_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_4_ce0_local = 1'b1;
    end else begin
        v227_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_4_ce1_local = 1'b1;
    end else begin
        v227_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_5_ce0_local = 1'b1;
    end else begin
        v227_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_5_ce1_local = 1'b1;
    end else begin
        v227_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_6_ce0_local = 1'b1;
    end else begin
        v227_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_6_ce1_local = 1'b1;
    end else begin
        v227_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_7_ce0_local = 1'b1;
    end else begin
        v227_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_7_ce1_local = 1'b1;
    end else begin
        v227_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln170_fu_968_p2 = (v116_reg_1328 + 8'd2);
assign add_ln171_fu_678_p2 = (mul_ln277 + zext_ln175_fu_652_p1);
assign add_ln175_fu_660_p2 = (mul_ln175 + zext_ln175_5_fu_656_p1);
assign add_ln179_fu_735_p2 = (mul_ln277 + zext_ln182_fu_709_p1);
assign add_ln182_fu_717_p2 = (mul_ln175 + zext_ln182_5_fu_713_p1);
assign add_ln212_fu_748_p2 = (mul_ln212 + zext_ln175_reg_1337);
assign add_ln219_fu_993_p2 = (mul_ln212 + zext_ln182_reg_1398);
assign add_ln264_fu_978_p2 = (mul_ln264 + zext_ln175_reg_1337);
assign add_ln271_fu_1005_p2 = (mul_ln264 + zext_ln182_reg_1398);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_ready = ap_ready_sig;
assign bitcast_ln178_fu_1160_p1 = reg_614;
assign bitcast_ln185_fu_1165_p1 = reg_618;
assign bitcast_ln192_fu_1140_p1 = reg_622;
assign bitcast_ln198_fu_1145_p1 = reg_626;
assign bitcast_ln205_fu_1150_p1 = reg_630;
assign bitcast_ln211_fu_1155_p1 = reg_634;
assign bitcast_ln218_fu_1170_p1 = reg_626;
assign bitcast_ln224_fu_1175_p1 = reg_630;
assign bitcast_ln231_fu_1180_p1 = reg_622;
assign bitcast_ln237_fu_1185_p1 = reg_614;
assign bitcast_ln244_fu_1190_p1 = reg_618;
assign bitcast_ln250_fu_1195_p1 = reg_634;
assign bitcast_ln257_fu_1200_p1 = reg_614;
assign bitcast_ln263_fu_1205_p1 = reg_618;
assign bitcast_ln270_fu_1210_p1 = reg_622;
assign bitcast_ln276_fu_1215_p1 = v206_reg_1730;
assign bitcast_ln283_fu_1219_p1 = v212_reg_1735;
assign bitcast_ln289_fu_1223_p1 = v217_reg_1740;
assign grp_fu_8304_p_ce = 1'b1;
assign grp_fu_8304_p_din0 = grp_fu_590_p0;
assign grp_fu_8304_p_din1 = grp_fu_590_p1;
assign grp_fu_8304_p_opcode = 2'd0;
assign grp_fu_8308_p_ce = 1'b1;
assign grp_fu_8308_p_din0 = grp_fu_594_p0;
assign grp_fu_8308_p_din1 = grp_fu_594_p1;
assign grp_fu_8308_p_opcode = 2'd0;
assign grp_fu_8312_p_ce = 1'b1;
assign grp_fu_8312_p_din0 = grp_fu_598_p0;
assign grp_fu_8312_p_din1 = grp_fu_598_p1;
assign grp_fu_8312_p_opcode = 2'd0;
assign grp_fu_8316_p_ce = 1'b1;
assign grp_fu_8316_p_din0 = grp_fu_602_p0;
assign grp_fu_8316_p_din1 = grp_fu_602_p1;
assign grp_fu_8320_p_ce = 1'b1;
assign grp_fu_8320_p_din0 = grp_fu_606_p0;
assign grp_fu_8320_p_din1 = grp_fu_606_p1;
assign grp_fu_8324_p_ce = 1'b1;
assign grp_fu_8324_p_din0 = grp_fu_610_p0;
assign grp_fu_8324_p_din1 = grp_fu_610_p1;
assign icmp_ln170_fu_646_p2 = ((ap_sig_allocacmp_v116 < 8'd190) ? 1'b1 : 1'b0);
assign or_ln179_1_fu_701_p3 = {{tmp_8_fu_691_p4}, {1'd1}};
assign tmp_8_fu_691_p4 = {{ap_sig_allocacmp_v116[7:1]}};
assign v117_fu_982_p1 = v225_1_load_4_reg_1480;
assign v118_fu_985_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v117_fu_982_p1);
assign v121_fu_792_p10 = v227_4_q1;
assign v121_fu_792_p12 = v227_5_q1;
assign v121_fu_792_p14 = v227_6_q1;
assign v121_fu_792_p16 = v227_7_q1;
assign v121_fu_792_p17 = 'bx;
assign v121_fu_792_p2 = v227_0_q1;
assign v121_fu_792_p4 = v227_1_q1;
assign v121_fu_792_p6 = v227_2_q1;
assign v121_fu_792_p8 = v227_3_q1;
assign v124_fu_831_p1 = v225_1_q0;
assign v125_fu_835_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v124_fu_831_p1);
assign v127_fu_874_p10 = v227_4_q0;
assign v127_fu_874_p12 = v227_5_q0;
assign v127_fu_874_p14 = v227_6_q0;
assign v127_fu_874_p16 = v227_7_q0;
assign v127_fu_874_p17 = 'bx;
assign v127_fu_874_p2 = v227_0_q0;
assign v127_fu_874_p4 = v227_1_q0;
assign v127_fu_874_p6 = v227_2_q0;
assign v127_fu_874_p8 = v227_3_q0;
assign v130_fu_913_p1 = v225_2_q1;
assign v131_fu_917_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v130_fu_913_p1);
assign v136_fu_924_p1 = v225_2_q0;
assign v137_fu_928_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v136_fu_924_p1);
assign v141_fu_935_p1 = v225_3_q1;
assign v142_fu_939_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v141_fu_935_p1);
assign v147_fu_946_p1 = v225_3_q0;
assign v148_fu_950_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v147_fu_946_p1);
assign v152_fu_1019_p1 = v225_0_q1;
assign v153_fu_1023_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v152_fu_1019_p1);
assign v158_fu_1030_p1 = v225_0_q0;
assign v159_fu_1034_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v158_fu_1030_p1);
assign v163_fu_957_p1 = v225_1_q1;
assign v164_fu_961_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v163_fu_957_p1);
assign v169_fu_1041_p1 = v225_1_q0;
assign v170_fu_1045_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v169_fu_1041_p1);
assign v174_fu_1052_p1 = v225_2_q1;
assign v175_fu_1056_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v174_fu_1052_p1);
assign v180_fu_1063_p1 = v225_2_q0;
assign v181_fu_1067_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v180_fu_1063_p1);
assign v185_fu_1074_p1 = v225_3_q1;
assign v186_fu_1078_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v185_fu_1074_p1);
assign v191_fu_1085_p1 = v225_3_q0;
assign v192_fu_1089_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v191_fu_1085_p1);
assign v196_fu_1096_p1 = v225_0_q1;
assign v197_fu_1100_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v196_fu_1096_p1);
assign v202_fu_1107_p1 = v225_0_q0;
assign v203_fu_1111_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v202_fu_1107_p1);
assign v207_fu_1118_p1 = v225_1_q1;
assign v208_fu_1122_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v207_fu_1118_p1);
assign v213_fu_1129_p1 = v225_1_q0;
assign v214_fu_1133_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v213_fu_1129_p1);
assign v225_0_address0 = v225_0_address0_local;
assign v225_0_address1 = v225_0_address1_local;
assign v225_0_ce0 = v225_0_ce0_local;
assign v225_0_ce1 = v225_0_ce1_local;
assign v225_0_d0 = v225_0_d0_local;
assign v225_0_d1 = v225_0_d1_local;
assign v225_0_we0 = v225_0_we0_local;
assign v225_0_we1 = v225_0_we1_local;
assign v225_1_address0 = v225_1_address0_local;
assign v225_1_address1 = v225_1_address1_local;
assign v225_1_ce0 = v225_1_ce0_local;
assign v225_1_ce1 = v225_1_ce1_local;
assign v225_1_d0 = v225_1_d0_local;
assign v225_1_d1 = v225_1_d1_local;
assign v225_1_we0 = v225_1_we0_local;
assign v225_1_we1 = v225_1_we1_local;
assign v225_2_address0 = v225_2_address0_local;
assign v225_2_address1 = v225_2_address1_local;
assign v225_2_ce0 = v225_2_ce0_local;
assign v225_2_ce1 = v225_2_ce1_local;
assign v225_2_d0 = v225_2_d0_local;
assign v225_2_d1 = v225_2_d1_local;
assign v225_2_we0 = v225_2_we0_local;
assign v225_2_we1 = v225_2_we1_local;
assign v225_3_address0 = v225_3_address0_local;
assign v225_3_address1 = v225_3_address1_local;
assign v225_3_ce0 = v225_3_ce0_local;
assign v225_3_ce1 = v225_3_ce1_local;
assign v225_3_d0 = v225_3_d0_local;
assign v225_3_d1 = v225_3_d1_local;
assign v225_3_we0 = v225_3_we0_local;
assign v225_3_we1 = v225_3_we1_local;
assign v227_0_address0 = zext_ln182_6_fu_723_p1;
assign v227_0_address1 = zext_ln175_6_fu_666_p1;
assign v227_0_ce0 = v227_0_ce0_local;
assign v227_0_ce1 = v227_0_ce1_local;
assign v227_1_address0 = zext_ln182_6_fu_723_p1;
assign v227_1_address1 = zext_ln175_6_fu_666_p1;
assign v227_1_ce0 = v227_1_ce0_local;
assign v227_1_ce1 = v227_1_ce1_local;
assign v227_2_address0 = zext_ln182_6_fu_723_p1;
assign v227_2_address1 = zext_ln175_6_fu_666_p1;
assign v227_2_ce0 = v227_2_ce0_local;
assign v227_2_ce1 = v227_2_ce1_local;
assign v227_3_address0 = zext_ln182_6_fu_723_p1;
assign v227_3_address1 = zext_ln175_6_fu_666_p1;
assign v227_3_ce0 = v227_3_ce0_local;
assign v227_3_ce1 = v227_3_ce1_local;
assign v227_4_address0 = zext_ln182_6_fu_723_p1;
assign v227_4_address1 = zext_ln175_6_fu_666_p1;
assign v227_4_ce0 = v227_4_ce0_local;
assign v227_4_ce1 = v227_4_ce1_local;
assign v227_5_address0 = zext_ln182_6_fu_723_p1;
assign v227_5_address1 = zext_ln175_6_fu_666_p1;
assign v227_5_ce0 = v227_5_ce0_local;
assign v227_5_ce1 = v227_5_ce1_local;
assign v227_6_address0 = zext_ln182_6_fu_723_p1;
assign v227_6_address1 = zext_ln175_6_fu_666_p1;
assign v227_6_ce0 = v227_6_ce0_local;
assign v227_6_ce1 = v227_6_ce1_local;
assign v227_7_address0 = zext_ln182_6_fu_723_p1;
assign v227_7_address1 = zext_ln175_6_fu_666_p1;
assign v227_7_ce0 = v227_7_ce0_local;
assign v227_7_ce1 = v227_7_ce1_local;
assign zext_ln171_fu_684_p1 = add_ln171_fu_678_p2;
assign zext_ln175_5_fu_656_p1 = ap_sig_allocacmp_v116;
assign zext_ln175_6_fu_666_p1 = add_ln175_fu_660_p2;
assign zext_ln175_fu_652_p1 = ap_sig_allocacmp_v116;
assign zext_ln179_fu_741_p1 = add_ln179_fu_735_p2;
assign zext_ln182_5_fu_713_p1 = or_ln179_1_fu_701_p3;
assign zext_ln182_6_fu_723_p1 = add_ln182_fu_717_p2;
assign zext_ln182_fu_709_p1 = or_ln179_1_fu_701_p3;
assign zext_ln212_fu_752_p1 = add_ln212_fu_748_p2;
assign zext_ln219_fu_997_p1 = add_ln219_fu_993_p2;
assign zext_ln264_fu_1009_p1 = add_ln264_reg_1544;
assign zext_ln271_fu_1014_p1 = add_ln271_reg_1560;
always @ (posedge ap_clk) begin
    zext_ln175_reg_1337[13:8] <= 6'b000000;
    zext_ln182_reg_1398[0] <= 1'b1;
    zext_ln182_reg_1398[13:8] <= 6'b000000;
end
endmodule 
