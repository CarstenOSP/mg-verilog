module backprop_backprop_Pipeline_label_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v0_0_address0,v0_0_ce0,v0_0_q0,v0_0_address1,v0_0_ce1,v0_0_q1,v0_1_address0,v0_1_ce0,v0_1_q0,v0_1_address1,v0_1_ce1,v0_1_q1,v26,v26_1,v26_2,v26_3,v26_4,v26_5,v26_6,v26_7,v26_8,v26_9,v26_10,v26_11,v26_12,v20_address0,v20_ce0,v20_we0,v20_d0,grp_fu_3794_p_din0,grp_fu_3794_p_din1,grp_fu_3794_p_opcode,grp_fu_3794_p_dout0,grp_fu_3794_p_ce,grp_fu_3798_p_din0,grp_fu_3798_p_din1,grp_fu_3798_p_opcode,grp_fu_3798_p_dout0,grp_fu_3798_p_ce,grp_fu_3802_p_din0,grp_fu_3802_p_din1,grp_fu_3802_p_dout0,grp_fu_3802_p_ce,grp_fu_3806_p_din0,grp_fu_3806_p_din1,grp_fu_3806_p_dout0,grp_fu_3806_p_ce); 
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
output  [8:0] v0_0_address0;
output   v0_0_ce0;
input  [63:0] v0_0_q0;
output  [8:0] v0_0_address1;
output   v0_0_ce1;
input  [63:0] v0_0_q1;
output  [8:0] v0_1_address0;
output   v0_1_ce0;
input  [63:0] v0_1_q0;
output  [8:0] v0_1_address1;
output   v0_1_ce1;
input  [63:0] v0_1_q1;
input  [63:0] v26;
input  [63:0] v26_1;
input  [63:0] v26_2;
input  [63:0] v26_3;
input  [63:0] v26_4;
input  [63:0] v26_5;
input  [63:0] v26_6;
input  [63:0] v26_7;
input  [63:0] v26_8;
input  [63:0] v26_9;
input  [63:0] v26_10;
input  [63:0] v26_11;
input  [63:0] v26_12;
output  [5:0] v20_address0;
output   v20_ce0;
output   v20_we0;
output  [63:0] v20_d0;
output  [63:0] grp_fu_3794_p_din0;
output  [63:0] grp_fu_3794_p_din1;
output  [0:0] grp_fu_3794_p_opcode;
input  [63:0] grp_fu_3794_p_dout0;
output   grp_fu_3794_p_ce;
output  [63:0] grp_fu_3798_p_din0;
output  [63:0] grp_fu_3798_p_din1;
output  [0:0] grp_fu_3798_p_opcode;
input  [63:0] grp_fu_3798_p_dout0;
output   grp_fu_3798_p_ce;
output  [63:0] grp_fu_3802_p_din0;
output  [63:0] grp_fu_3802_p_din1;
input  [63:0] grp_fu_3802_p_dout0;
output   grp_fu_3802_p_ce;
output  [63:0] grp_fu_3806_p_din0;
output  [63:0] grp_fu_3806_p_din1;
input  [63:0] grp_fu_3806_p_dout0;
output   grp_fu_3806_p_ce;
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
reg    ap_enable_reg_pp0_iter17;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] icmp_ln66_reg_1109;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] v23_1_reg_1101;
reg   [6:0] v23_1_reg_1101_pp0_iter1_reg;
reg   [6:0] v23_1_reg_1101_pp0_iter2_reg;
reg   [6:0] v23_1_reg_1101_pp0_iter3_reg;
reg   [6:0] v23_1_reg_1101_pp0_iter4_reg;
reg   [6:0] v23_1_reg_1101_pp0_iter5_reg;
reg   [6:0] v23_1_reg_1101_pp0_iter6_reg;
reg   [6:0] v23_1_reg_1101_pp0_iter7_reg;
reg   [6:0] v23_1_reg_1101_pp0_iter8_reg;
reg   [6:0] v23_1_reg_1101_pp0_iter9_reg;
reg   [6:0] v23_1_reg_1101_pp0_iter10_reg;
reg   [6:0] v23_1_reg_1101_pp0_iter11_reg;
reg   [6:0] v23_1_reg_1101_pp0_iter12_reg;
reg   [6:0] v23_1_reg_1101_pp0_iter13_reg;
reg   [6:0] v23_1_reg_1101_pp0_iter14_reg;
reg   [6:0] v23_1_reg_1101_pp0_iter15_reg;
reg   [6:0] v23_1_reg_1101_pp0_iter16_reg;
wire   [0:0] icmp_ln66_fu_481_p2;
reg   [0:0] icmp_ln66_reg_1109_pp0_iter1_reg;
reg   [0:0] icmp_ln66_reg_1109_pp0_iter2_reg;
reg   [0:0] icmp_ln66_reg_1109_pp0_iter3_reg;
reg   [0:0] icmp_ln66_reg_1109_pp0_iter4_reg;
reg   [0:0] icmp_ln66_reg_1109_pp0_iter5_reg;
reg   [0:0] icmp_ln66_reg_1109_pp0_iter6_reg;
reg   [0:0] icmp_ln66_reg_1109_pp0_iter7_reg;
reg   [0:0] icmp_ln66_reg_1109_pp0_iter8_reg;
reg   [0:0] icmp_ln66_reg_1109_pp0_iter9_reg;
reg   [0:0] icmp_ln66_reg_1109_pp0_iter10_reg;
reg   [0:0] icmp_ln66_reg_1109_pp0_iter11_reg;
reg   [0:0] icmp_ln66_reg_1109_pp0_iter12_reg;
reg   [0:0] icmp_ln66_reg_1109_pp0_iter13_reg;
reg   [0:0] icmp_ln66_reg_1109_pp0_iter14_reg;
reg   [0:0] icmp_ln66_reg_1109_pp0_iter15_reg;
reg   [9:0] phi_mul_load_reg_1113;
reg   [9:0] phi_mul_load_reg_1113_pp0_iter1_reg;
reg   [9:0] phi_mul_load_reg_1113_pp0_iter2_reg;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] select_ln69_fu_562_p3;
reg   [63:0] select_ln69_reg_1170;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] v25_fu_592_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] v27_reg_1220;
wire    ap_block_pp0_stage6_11001;
wire   [63:0] select_ln69_1_fu_705_p3;
reg   [63:0] select_ln69_1_reg_1245;
wire   [63:0] select_ln69_2_fu_724_p3;
reg   [63:0] select_ln69_2_reg_1250;
wire   [63:0] v25_1_fu_744_p1;
wire   [63:0] v25_2_fu_748_p1;
wire   [63:0] select_ln69_3_fu_763_p3;
reg   [63:0] select_ln69_3_reg_1285;
wire   [63:0] select_ln69_4_fu_782_p3;
reg   [63:0] select_ln69_4_reg_1290;
wire   [0:0] icmp_ln69_4_fu_801_p2;
reg   [0:0] icmp_ln69_4_reg_1305;
wire   [9:0] grp_fu_586_p2;
reg   [9:0] urem_ln69_5_reg_1310;
wire   [0:0] icmp_ln69_5_fu_812_p2;
reg   [0:0] icmp_ln69_5_reg_1315;
wire   [0:0] icmp_ln69_6_fu_823_p2;
reg   [0:0] icmp_ln69_6_reg_1320;
wire   [0:0] icmp_ln69_7_fu_834_p2;
reg   [0:0] icmp_ln69_7_reg_1325;
wire   [0:0] icmp_ln69_8_fu_845_p2;
reg   [0:0] icmp_ln69_8_reg_1330;
wire   [0:0] icmp_ln69_9_fu_856_p2;
reg   [0:0] icmp_ln69_9_reg_1335;
wire   [0:0] icmp_ln69_10_fu_867_p2;
reg   [0:0] icmp_ln69_10_reg_1340;
wire   [0:0] icmp_ln69_11_fu_878_p2;
reg   [0:0] icmp_ln69_11_reg_1345;
wire   [63:0] v25_3_fu_884_p1;
wire   [63:0] v25_4_fu_888_p1;
wire   [63:0] select_ln69_5_fu_892_p3;
reg   [63:0] select_ln69_5_reg_1360;
wire   [9:0] grp_fu_612_p2;
reg   [9:0] urem_ln69_7_reg_1385;
reg   [63:0] v29_13_reg_1390;
wire   [63:0] v25_5_fu_910_p1;
wire   [63:0] select_ln69_6_fu_914_p3;
reg   [63:0] select_ln69_6_reg_1400;
wire   [63:0] select_ln69_7_fu_921_p3;
reg   [63:0] select_ln69_7_reg_1405;
wire   [9:0] grp_fu_634_p2;
reg   [9:0] urem_ln69_9_reg_1430;
wire   [63:0] v25_6_fu_939_p1;
wire   [63:0] v25_7_fu_943_p1;
wire   [63:0] select_ln69_8_fu_947_p3;
reg   [63:0] select_ln69_8_reg_1445;
wire   [63:0] select_ln69_9_fu_954_p3;
reg   [63:0] select_ln69_9_reg_1450;
wire   [9:0] grp_fu_656_p2;
reg   [9:0] urem_ln69_11_reg_1475;
wire   [63:0] v25_8_fu_972_p1;
wire   [63:0] v25_9_fu_976_p1;
wire   [63:0] select_ln69_10_fu_980_p3;
reg   [63:0] select_ln69_10_reg_1490;
wire   [63:0] select_ln69_11_fu_987_p3;
reg   [63:0] select_ln69_11_reg_1495;
wire   [63:0] v25_10_fu_999_p1;
wire   [63:0] v25_11_fu_1003_p1;
wire   [63:0] select_ln69_12_fu_1007_p3;
reg   [63:0] select_ln69_12_reg_1520;
reg   [63:0] v27_1_reg_1525;
reg   [63:0] v27_2_reg_1530;
reg   [63:0] v27_2_reg_1530_pp0_iter4_reg;
wire   [63:0] v25_12_fu_1014_p1;
reg   [63:0] v27_3_reg_1540;
reg   [63:0] v27_3_reg_1540_pp0_iter4_reg;
reg   [63:0] v27_3_reg_1540_pp0_iter5_reg;
reg   [63:0] v27_4_reg_1545;
reg   [63:0] v27_4_reg_1545_pp0_iter4_reg;
reg   [63:0] v27_4_reg_1545_pp0_iter5_reg;
reg   [63:0] v27_4_reg_1545_pp0_iter6_reg;
reg   [63:0] v27_5_reg_1550;
reg   [63:0] v27_5_reg_1550_pp0_iter4_reg;
reg   [63:0] v27_5_reg_1550_pp0_iter5_reg;
reg   [63:0] v27_5_reg_1550_pp0_iter6_reg;
reg   [63:0] v27_5_reg_1550_pp0_iter7_reg;
reg   [63:0] v27_6_reg_1555;
reg   [63:0] v27_6_reg_1555_pp0_iter4_reg;
reg   [63:0] v27_6_reg_1555_pp0_iter5_reg;
reg   [63:0] v27_6_reg_1555_pp0_iter6_reg;
reg   [63:0] v27_6_reg_1555_pp0_iter7_reg;
reg   [63:0] v27_6_reg_1555_pp0_iter8_reg;
reg   [63:0] v27_7_reg_1560;
reg   [63:0] v27_7_reg_1560_pp0_iter4_reg;
reg   [63:0] v27_7_reg_1560_pp0_iter5_reg;
reg   [63:0] v27_7_reg_1560_pp0_iter6_reg;
reg   [63:0] v27_7_reg_1560_pp0_iter7_reg;
reg   [63:0] v27_7_reg_1560_pp0_iter8_reg;
reg   [63:0] v27_7_reg_1560_pp0_iter9_reg;
reg   [63:0] v27_8_reg_1565;
reg   [63:0] v27_8_reg_1565_pp0_iter4_reg;
reg   [63:0] v27_8_reg_1565_pp0_iter5_reg;
reg   [63:0] v27_8_reg_1565_pp0_iter6_reg;
reg   [63:0] v27_8_reg_1565_pp0_iter7_reg;
reg   [63:0] v27_8_reg_1565_pp0_iter8_reg;
reg   [63:0] v27_8_reg_1565_pp0_iter9_reg;
reg   [63:0] v27_8_reg_1565_pp0_iter10_reg;
reg   [63:0] v27_9_reg_1570;
reg   [63:0] v27_9_reg_1570_pp0_iter4_reg;
reg   [63:0] v27_9_reg_1570_pp0_iter5_reg;
reg   [63:0] v27_9_reg_1570_pp0_iter6_reg;
reg   [63:0] v27_9_reg_1570_pp0_iter7_reg;
reg   [63:0] v27_9_reg_1570_pp0_iter8_reg;
reg   [63:0] v27_9_reg_1570_pp0_iter9_reg;
reg   [63:0] v27_9_reg_1570_pp0_iter10_reg;
reg   [63:0] v27_9_reg_1570_pp0_iter11_reg;
reg   [63:0] v27_10_reg_1575;
reg   [63:0] v27_10_reg_1575_pp0_iter4_reg;
reg   [63:0] v27_10_reg_1575_pp0_iter5_reg;
reg   [63:0] v27_10_reg_1575_pp0_iter6_reg;
reg   [63:0] v27_10_reg_1575_pp0_iter7_reg;
reg   [63:0] v27_10_reg_1575_pp0_iter8_reg;
reg   [63:0] v27_10_reg_1575_pp0_iter9_reg;
reg   [63:0] v27_10_reg_1575_pp0_iter10_reg;
reg   [63:0] v27_10_reg_1575_pp0_iter11_reg;
reg   [63:0] v27_10_reg_1575_pp0_iter12_reg;
reg   [63:0] v27_11_reg_1580;
reg   [63:0] v27_11_reg_1580_pp0_iter4_reg;
reg   [63:0] v27_11_reg_1580_pp0_iter5_reg;
reg   [63:0] v27_11_reg_1580_pp0_iter6_reg;
reg   [63:0] v27_11_reg_1580_pp0_iter7_reg;
reg   [63:0] v27_11_reg_1580_pp0_iter8_reg;
reg   [63:0] v27_11_reg_1580_pp0_iter9_reg;
reg   [63:0] v27_11_reg_1580_pp0_iter10_reg;
reg   [63:0] v27_11_reg_1580_pp0_iter11_reg;
reg   [63:0] v27_11_reg_1580_pp0_iter12_reg;
reg   [63:0] v27_11_reg_1580_pp0_iter13_reg;
reg   [63:0] v27_12_reg_1585;
reg   [63:0] v27_12_reg_1585_pp0_iter4_reg;
reg   [63:0] v27_12_reg_1585_pp0_iter5_reg;
reg   [63:0] v27_12_reg_1585_pp0_iter6_reg;
reg   [63:0] v27_12_reg_1585_pp0_iter7_reg;
reg   [63:0] v27_12_reg_1585_pp0_iter8_reg;
reg   [63:0] v27_12_reg_1585_pp0_iter9_reg;
reg   [63:0] v27_12_reg_1585_pp0_iter10_reg;
reg   [63:0] v27_12_reg_1585_pp0_iter11_reg;
reg   [63:0] v27_12_reg_1585_pp0_iter12_reg;
reg   [63:0] v27_12_reg_1585_pp0_iter13_reg;
reg   [63:0] v27_12_reg_1585_pp0_iter14_reg;
reg   [63:0] v29_14_reg_1590;
reg   [63:0] v29_15_reg_1595;
reg   [63:0] v29_16_reg_1600;
reg   [63:0] v29_17_reg_1605;
reg   [63:0] v29_18_reg_1610;
reg   [63:0] v29_19_reg_1615;
reg   [63:0] v29_20_reg_1620;
reg   [63:0] v29_21_reg_1625;
reg   [63:0] v29_22_reg_1630;
reg   [63:0] v29_23_reg_1635;
reg   [63:0] v29_24_reg_1640;
reg   [63:0] v29_reg_1645;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln69_1_fu_527_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln69_2_fu_682_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln69_3_fu_688_p1;
wire   [63:0] zext_ln69_4_fu_732_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln69_5_fu_738_p1;
wire   [63:0] zext_ln69_6_fu_790_p1;
wire   [63:0] zext_ln69_7_fu_899_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln69_8_fu_904_p1;
wire   [63:0] zext_ln69_9_fu_928_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln69_10_fu_933_p1;
wire   [63:0] zext_ln69_11_fu_961_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln69_12_fu_966_p1;
wire   [63:0] zext_ln69_13_fu_994_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln66_fu_1018_p1;
reg   [9:0] phi_mul_fu_126;
wire   [9:0] add_ln69_24_fu_667_p2;
wire    ap_loop_init;
reg   [9:0] ap_sig_allocacmp_phi_mul_load;
reg   [6:0] v23_fu_130;
wire   [6:0] add_ln66_fu_662_p2;
reg   [6:0] ap_sig_allocacmp_v23_1;
reg    v0_0_ce1_local;
reg   [8:0] v0_0_address1_local;
reg    v0_0_ce0_local;
reg   [8:0] v0_0_address0_local;
reg    v0_1_ce1_local;
reg   [8:0] v0_1_address1_local;
reg    v0_1_ce0_local;
reg   [8:0] v0_1_address0_local;
reg    v20_we0_local;
reg    v20_ce0_local;
reg   [63:0] grp_fu_451_p0;
reg   [63:0] grp_fu_451_p1;
reg   [63:0] grp_fu_456_p0;
reg   [63:0] grp_fu_456_p1;
reg   [63:0] grp_fu_460_p0;
reg   [63:0] grp_fu_460_p1;
reg   [63:0] grp_fu_464_p0;
reg   [63:0] grp_fu_464_p1;
wire   [9:0] grp_fu_496_p0;
wire   [9:0] grp_fu_508_p0;
wire   [4:0] trunc_ln66_fu_514_p1;
wire   [4:0] mul_ln69_fu_521_p0;
wire   [4:0] mul_ln69_fu_521_p1;
wire   [8:0] mul_ln69_fu_521_p2;
wire   [9:0] grp_fu_538_p0;
wire   [9:0] grp_fu_549_p0;
wire   [0:0] tmp_fu_555_p3;
wire   [9:0] grp_fu_575_p0;
wire   [9:0] grp_fu_586_p0;
wire   [9:0] grp_fu_601_p0;
wire   [9:0] grp_fu_612_p0;
wire   [9:0] grp_fu_623_p0;
wire   [9:0] grp_fu_634_p0;
wire   [9:0] grp_fu_645_p0;
wire   [9:0] grp_fu_656_p0;
wire   [9:0] grp_fu_496_p2;
wire   [9:0] grp_fu_508_p2;
wire   [9:0] add_ln69_12_fu_694_p2;
wire   [0:0] icmp_ln69_fu_699_p2;
wire   [9:0] add_ln69_13_fu_713_p2;
wire   [0:0] icmp_ln69_1_fu_718_p2;
wire   [9:0] grp_fu_538_p2;
wire   [9:0] grp_fu_549_p2;
wire   [9:0] add_ln69_14_fu_752_p2;
wire   [0:0] icmp_ln69_2_fu_757_p2;
wire   [9:0] add_ln69_15_fu_771_p2;
wire   [0:0] icmp_ln69_3_fu_776_p2;
wire   [9:0] grp_fu_575_p2;
wire   [9:0] add_ln69_16_fu_796_p2;
wire   [9:0] add_ln69_17_fu_807_p2;
wire   [9:0] add_ln69_18_fu_818_p2;
wire   [9:0] add_ln69_19_fu_829_p2;
wire   [9:0] add_ln69_20_fu_840_p2;
wire   [9:0] add_ln69_21_fu_851_p2;
wire   [9:0] add_ln69_22_fu_862_p2;
wire   [9:0] add_ln69_23_fu_873_p2;
wire   [9:0] grp_fu_601_p2;
wire   [9:0] grp_fu_623_p2;
wire   [9:0] grp_fu_645_p2;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage0_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter16_stage0;
reg    ap_idle_pp0_0to15;
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
reg    ap_loop_exit_ready_pp0_iter16_reg;
reg   [6:0] ap_NS_fsm;
reg    ap_idle_pp0_1to17;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [8:0] mul_ln69_fu_521_p00;
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
#0 ap_enable_reg_pp0_iter17 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 phi_mul_fu_126 = 10'd0;
#0 v23_fu_130 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_urem_10ns_10ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 10 ),.dout_WIDTH( 10 ))
urem_10ns_10ns_10_14_1_U13(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_496_p0),.din1(10'd416),.ce(1'b1),.dout(grp_fu_496_p2));
backprop_urem_10ns_10ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 10 ),.dout_WIDTH( 10 ))
urem_10ns_10ns_10_14_1_U14(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_508_p0),.din1(10'd416),.ce(1'b1),.dout(grp_fu_508_p2));
backprop_mul_5ns_5ns_9_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 5 ),.dout_WIDTH( 9 ))
mul_5ns_5ns_9_1_1_U15(.din0(mul_ln69_fu_521_p0),.din1(mul_ln69_fu_521_p1),.dout(mul_ln69_fu_521_p2));
backprop_urem_10ns_10ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 10 ),.dout_WIDTH( 10 ))
urem_10ns_10ns_10_14_1_U16(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_538_p0),.din1(10'd416),.ce(1'b1),.dout(grp_fu_538_p2));
backprop_urem_10ns_10ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 10 ),.dout_WIDTH( 10 ))
urem_10ns_10ns_10_14_1_U17(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_549_p0),.din1(10'd416),.ce(1'b1),.dout(grp_fu_549_p2));
backprop_urem_10ns_10ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 10 ),.dout_WIDTH( 10 ))
urem_10ns_10ns_10_14_1_U18(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_575_p0),.din1(10'd416),.ce(1'b1),.dout(grp_fu_575_p2));
backprop_urem_10ns_10ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 10 ),.dout_WIDTH( 10 ))
urem_10ns_10ns_10_14_1_U19(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_586_p0),.din1(10'd416),.ce(1'b1),.dout(grp_fu_586_p2));
backprop_urem_10ns_10ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 10 ),.dout_WIDTH( 10 ))
urem_10ns_10ns_10_14_1_U20(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_601_p0),.din1(10'd416),.ce(1'b1),.dout(grp_fu_601_p2));
backprop_urem_10ns_10ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 10 ),.dout_WIDTH( 10 ))
urem_10ns_10ns_10_14_1_U21(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_612_p0),.din1(10'd416),.ce(1'b1),.dout(grp_fu_612_p2));
backprop_urem_10ns_10ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 10 ),.dout_WIDTH( 10 ))
urem_10ns_10ns_10_14_1_U22(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_623_p0),.din1(10'd416),.ce(1'b1),.dout(grp_fu_623_p2));
backprop_urem_10ns_10ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 10 ),.dout_WIDTH( 10 ))
urem_10ns_10ns_10_14_1_U23(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_634_p0),.din1(10'd416),.ce(1'b1),.dout(grp_fu_634_p2));
backprop_urem_10ns_10ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 10 ),.dout_WIDTH( 10 ))
urem_10ns_10ns_10_14_1_U24(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_645_p0),.din1(10'd416),.ce(1'b1),.dout(grp_fu_645_p2));
backprop_urem_10ns_10ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 10 ),.dout_WIDTH( 10 ))
urem_10ns_10ns_10_14_1_U25(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_656_p0),.din1(10'd416),.ce(1'b1),.dout(grp_fu_656_p2));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter17 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
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
    if (((1'b1 == ap_condition_exit_pp0_iter16_stage0) & (ap_idle_pp0_0to15 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter16_stage0) & (ap_idle_pp0_0to15 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter16_stage0) & (ap_idle_pp0_0to15 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter16_stage0) & (ap_idle_pp0_0to15 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter16_stage0) & (ap_idle_pp0_0to15 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter16_stage0) & (ap_idle_pp0_0to15 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter16_stage0) & (ap_idle_pp0_0to15 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter16_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter16_stage0) & (ap_idle_pp0_0to15 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter16_stage0) & (ap_idle_pp0_0to15 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter16_stage0) & (ap_idle_pp0_0to15 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter16_stage0) & (ap_idle_pp0_0to15 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter16_stage0) & (ap_idle_pp0_0to15 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter16_stage0) & (ap_idle_pp0_0to15 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter16_stage0) & (ap_idle_pp0_0to15 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter16_stage0) & (ap_idle_pp0_0to15 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter16_stage0) & (ap_idle_pp0_0to15 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        phi_mul_fu_126 <= 10'd0;
    end else if (((icmp_ln66_reg_1109 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        phi_mul_fu_126 <= add_ln69_24_fu_667_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v23_fu_130 <= 7'd0;
    end else if (((icmp_ln66_reg_1109 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v23_fu_130 <= add_ln66_fu_662_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln66_reg_1109 <= icmp_ln66_fu_481_p2;
        icmp_ln66_reg_1109_pp0_iter10_reg <= icmp_ln66_reg_1109_pp0_iter9_reg;
        icmp_ln66_reg_1109_pp0_iter11_reg <= icmp_ln66_reg_1109_pp0_iter10_reg;
        icmp_ln66_reg_1109_pp0_iter12_reg <= icmp_ln66_reg_1109_pp0_iter11_reg;
        icmp_ln66_reg_1109_pp0_iter13_reg <= icmp_ln66_reg_1109_pp0_iter12_reg;
        icmp_ln66_reg_1109_pp0_iter14_reg <= icmp_ln66_reg_1109_pp0_iter13_reg;
        icmp_ln66_reg_1109_pp0_iter15_reg <= icmp_ln66_reg_1109_pp0_iter14_reg;
        icmp_ln66_reg_1109_pp0_iter1_reg <= icmp_ln66_reg_1109;
        icmp_ln66_reg_1109_pp0_iter2_reg <= icmp_ln66_reg_1109_pp0_iter1_reg;
        icmp_ln66_reg_1109_pp0_iter3_reg <= icmp_ln66_reg_1109_pp0_iter2_reg;
        icmp_ln66_reg_1109_pp0_iter4_reg <= icmp_ln66_reg_1109_pp0_iter3_reg;
        icmp_ln66_reg_1109_pp0_iter5_reg <= icmp_ln66_reg_1109_pp0_iter4_reg;
        icmp_ln66_reg_1109_pp0_iter6_reg <= icmp_ln66_reg_1109_pp0_iter5_reg;
        icmp_ln66_reg_1109_pp0_iter7_reg <= icmp_ln66_reg_1109_pp0_iter6_reg;
        icmp_ln66_reg_1109_pp0_iter8_reg <= icmp_ln66_reg_1109_pp0_iter7_reg;
        icmp_ln66_reg_1109_pp0_iter9_reg <= icmp_ln66_reg_1109_pp0_iter8_reg;
        phi_mul_load_reg_1113 <= ap_sig_allocacmp_phi_mul_load;
        phi_mul_load_reg_1113_pp0_iter1_reg <= phi_mul_load_reg_1113;
        phi_mul_load_reg_1113_pp0_iter2_reg <= phi_mul_load_reg_1113_pp0_iter1_reg;
        select_ln69_1_reg_1245 <= select_ln69_1_fu_705_p3;
        select_ln69_2_reg_1250 <= select_ln69_2_fu_724_p3;
        v23_1_reg_1101 <= ap_sig_allocacmp_v23_1;
        v23_1_reg_1101_pp0_iter10_reg <= v23_1_reg_1101_pp0_iter9_reg;
        v23_1_reg_1101_pp0_iter11_reg <= v23_1_reg_1101_pp0_iter10_reg;
        v23_1_reg_1101_pp0_iter12_reg <= v23_1_reg_1101_pp0_iter11_reg;
        v23_1_reg_1101_pp0_iter13_reg <= v23_1_reg_1101_pp0_iter12_reg;
        v23_1_reg_1101_pp0_iter14_reg <= v23_1_reg_1101_pp0_iter13_reg;
        v23_1_reg_1101_pp0_iter15_reg <= v23_1_reg_1101_pp0_iter14_reg;
        v23_1_reg_1101_pp0_iter16_reg <= v23_1_reg_1101_pp0_iter15_reg;
        v23_1_reg_1101_pp0_iter1_reg <= v23_1_reg_1101;
        v23_1_reg_1101_pp0_iter2_reg <= v23_1_reg_1101_pp0_iter1_reg;
        v23_1_reg_1101_pp0_iter3_reg <= v23_1_reg_1101_pp0_iter2_reg;
        v23_1_reg_1101_pp0_iter4_reg <= v23_1_reg_1101_pp0_iter3_reg;
        v23_1_reg_1101_pp0_iter5_reg <= v23_1_reg_1101_pp0_iter4_reg;
        v23_1_reg_1101_pp0_iter6_reg <= v23_1_reg_1101_pp0_iter5_reg;
        v23_1_reg_1101_pp0_iter7_reg <= v23_1_reg_1101_pp0_iter6_reg;
        v23_1_reg_1101_pp0_iter8_reg <= v23_1_reg_1101_pp0_iter7_reg;
        v23_1_reg_1101_pp0_iter9_reg <= v23_1_reg_1101_pp0_iter8_reg;
        v27_2_reg_1530_pp0_iter4_reg <= v27_2_reg_1530;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln69_10_reg_1340 <= icmp_ln69_10_fu_867_p2;
        icmp_ln69_11_reg_1345 <= icmp_ln69_11_fu_878_p2;
        icmp_ln69_4_reg_1305 <= icmp_ln69_4_fu_801_p2;
        icmp_ln69_5_reg_1315 <= icmp_ln69_5_fu_812_p2;
        icmp_ln69_6_reg_1320 <= icmp_ln69_6_fu_823_p2;
        icmp_ln69_7_reg_1325 <= icmp_ln69_7_fu_834_p2;
        icmp_ln69_8_reg_1330 <= icmp_ln69_8_fu_845_p2;
        icmp_ln69_9_reg_1335 <= icmp_ln69_9_fu_856_p2;
        select_ln69_3_reg_1285 <= select_ln69_3_fu_763_p3;
        select_ln69_4_reg_1290 <= select_ln69_4_fu_782_p3;
        urem_ln69_5_reg_1310 <= grp_fu_586_p2;
        v27_3_reg_1540_pp0_iter4_reg <= v27_3_reg_1540;
        v27_3_reg_1540_pp0_iter5_reg <= v27_3_reg_1540_pp0_iter4_reg;
        v27_4_reg_1545_pp0_iter4_reg <= v27_4_reg_1545;
        v27_4_reg_1545_pp0_iter5_reg <= v27_4_reg_1545_pp0_iter4_reg;
        v27_4_reg_1545_pp0_iter6_reg <= v27_4_reg_1545_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        select_ln69_10_reg_1490 <= select_ln69_10_fu_980_p3;
        select_ln69_11_reg_1495 <= select_ln69_11_fu_987_p3;
        v27_10_reg_1575_pp0_iter10_reg <= v27_10_reg_1575_pp0_iter9_reg;
        v27_10_reg_1575_pp0_iter11_reg <= v27_10_reg_1575_pp0_iter10_reg;
        v27_10_reg_1575_pp0_iter12_reg <= v27_10_reg_1575_pp0_iter11_reg;
        v27_10_reg_1575_pp0_iter4_reg <= v27_10_reg_1575;
        v27_10_reg_1575_pp0_iter5_reg <= v27_10_reg_1575_pp0_iter4_reg;
        v27_10_reg_1575_pp0_iter6_reg <= v27_10_reg_1575_pp0_iter5_reg;
        v27_10_reg_1575_pp0_iter7_reg <= v27_10_reg_1575_pp0_iter6_reg;
        v27_10_reg_1575_pp0_iter8_reg <= v27_10_reg_1575_pp0_iter7_reg;
        v27_10_reg_1575_pp0_iter9_reg <= v27_10_reg_1575_pp0_iter8_reg;
        v27_11_reg_1580_pp0_iter10_reg <= v27_11_reg_1580_pp0_iter9_reg;
        v27_11_reg_1580_pp0_iter11_reg <= v27_11_reg_1580_pp0_iter10_reg;
        v27_11_reg_1580_pp0_iter12_reg <= v27_11_reg_1580_pp0_iter11_reg;
        v27_11_reg_1580_pp0_iter13_reg <= v27_11_reg_1580_pp0_iter12_reg;
        v27_11_reg_1580_pp0_iter4_reg <= v27_11_reg_1580;
        v27_11_reg_1580_pp0_iter5_reg <= v27_11_reg_1580_pp0_iter4_reg;
        v27_11_reg_1580_pp0_iter6_reg <= v27_11_reg_1580_pp0_iter5_reg;
        v27_11_reg_1580_pp0_iter7_reg <= v27_11_reg_1580_pp0_iter6_reg;
        v27_11_reg_1580_pp0_iter8_reg <= v27_11_reg_1580_pp0_iter7_reg;
        v27_11_reg_1580_pp0_iter9_reg <= v27_11_reg_1580_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        select_ln69_12_reg_1520 <= select_ln69_12_fu_1007_p3;
        v27_12_reg_1585_pp0_iter10_reg <= v27_12_reg_1585_pp0_iter9_reg;
        v27_12_reg_1585_pp0_iter11_reg <= v27_12_reg_1585_pp0_iter10_reg;
        v27_12_reg_1585_pp0_iter12_reg <= v27_12_reg_1585_pp0_iter11_reg;
        v27_12_reg_1585_pp0_iter13_reg <= v27_12_reg_1585_pp0_iter12_reg;
        v27_12_reg_1585_pp0_iter14_reg <= v27_12_reg_1585_pp0_iter13_reg;
        v27_12_reg_1585_pp0_iter4_reg <= v27_12_reg_1585;
        v27_12_reg_1585_pp0_iter5_reg <= v27_12_reg_1585_pp0_iter4_reg;
        v27_12_reg_1585_pp0_iter6_reg <= v27_12_reg_1585_pp0_iter5_reg;
        v27_12_reg_1585_pp0_iter7_reg <= v27_12_reg_1585_pp0_iter6_reg;
        v27_12_reg_1585_pp0_iter8_reg <= v27_12_reg_1585_pp0_iter7_reg;
        v27_12_reg_1585_pp0_iter9_reg <= v27_12_reg_1585_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln69_5_reg_1360 <= select_ln69_5_fu_892_p3;
        select_ln69_reg_1170 <= select_ln69_fu_562_p3;
        urem_ln69_7_reg_1385 <= grp_fu_612_p2;
        v27_5_reg_1550_pp0_iter4_reg <= v27_5_reg_1550;
        v27_5_reg_1550_pp0_iter5_reg <= v27_5_reg_1550_pp0_iter4_reg;
        v27_5_reg_1550_pp0_iter6_reg <= v27_5_reg_1550_pp0_iter5_reg;
        v27_5_reg_1550_pp0_iter7_reg <= v27_5_reg_1550_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        select_ln69_6_reg_1400 <= select_ln69_6_fu_914_p3;
        select_ln69_7_reg_1405 <= select_ln69_7_fu_921_p3;
        urem_ln69_9_reg_1430 <= grp_fu_634_p2;
        v27_6_reg_1555_pp0_iter4_reg <= v27_6_reg_1555;
        v27_6_reg_1555_pp0_iter5_reg <= v27_6_reg_1555_pp0_iter4_reg;
        v27_6_reg_1555_pp0_iter6_reg <= v27_6_reg_1555_pp0_iter5_reg;
        v27_6_reg_1555_pp0_iter7_reg <= v27_6_reg_1555_pp0_iter6_reg;
        v27_6_reg_1555_pp0_iter8_reg <= v27_6_reg_1555_pp0_iter7_reg;
        v27_7_reg_1560_pp0_iter4_reg <= v27_7_reg_1560;
        v27_7_reg_1560_pp0_iter5_reg <= v27_7_reg_1560_pp0_iter4_reg;
        v27_7_reg_1560_pp0_iter6_reg <= v27_7_reg_1560_pp0_iter5_reg;
        v27_7_reg_1560_pp0_iter7_reg <= v27_7_reg_1560_pp0_iter6_reg;
        v27_7_reg_1560_pp0_iter8_reg <= v27_7_reg_1560_pp0_iter7_reg;
        v27_7_reg_1560_pp0_iter9_reg <= v27_7_reg_1560_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        select_ln69_8_reg_1445 <= select_ln69_8_fu_947_p3;
        select_ln69_9_reg_1450 <= select_ln69_9_fu_954_p3;
        urem_ln69_11_reg_1475 <= grp_fu_656_p2;
        v27_8_reg_1565_pp0_iter10_reg <= v27_8_reg_1565_pp0_iter9_reg;
        v27_8_reg_1565_pp0_iter4_reg <= v27_8_reg_1565;
        v27_8_reg_1565_pp0_iter5_reg <= v27_8_reg_1565_pp0_iter4_reg;
        v27_8_reg_1565_pp0_iter6_reg <= v27_8_reg_1565_pp0_iter5_reg;
        v27_8_reg_1565_pp0_iter7_reg <= v27_8_reg_1565_pp0_iter6_reg;
        v27_8_reg_1565_pp0_iter8_reg <= v27_8_reg_1565_pp0_iter7_reg;
        v27_8_reg_1565_pp0_iter9_reg <= v27_8_reg_1565_pp0_iter8_reg;
        v27_9_reg_1570_pp0_iter10_reg <= v27_9_reg_1570_pp0_iter9_reg;
        v27_9_reg_1570_pp0_iter11_reg <= v27_9_reg_1570_pp0_iter10_reg;
        v27_9_reg_1570_pp0_iter4_reg <= v27_9_reg_1570;
        v27_9_reg_1570_pp0_iter5_reg <= v27_9_reg_1570_pp0_iter4_reg;
        v27_9_reg_1570_pp0_iter6_reg <= v27_9_reg_1570_pp0_iter5_reg;
        v27_9_reg_1570_pp0_iter7_reg <= v27_9_reg_1570_pp0_iter6_reg;
        v27_9_reg_1570_pp0_iter8_reg <= v27_9_reg_1570_pp0_iter7_reg;
        v27_9_reg_1570_pp0_iter9_reg <= v27_9_reg_1570_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v27_10_reg_1575 <= grp_fu_3802_p_dout0;
        v27_11_reg_1580 <= grp_fu_3806_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v27_12_reg_1585 <= grp_fu_3802_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v27_1_reg_1525 <= grp_fu_3802_p_dout0;
        v27_2_reg_1530 <= grp_fu_3806_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v27_3_reg_1540 <= grp_fu_3802_p_dout0;
        v27_4_reg_1545 <= grp_fu_3806_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v27_5_reg_1550 <= grp_fu_3806_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v27_6_reg_1555 <= grp_fu_3802_p_dout0;
        v27_7_reg_1560 <= grp_fu_3806_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v27_8_reg_1565 <= grp_fu_3802_p_dout0;
        v27_9_reg_1570 <= grp_fu_3806_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v27_reg_1220 <= grp_fu_3802_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v29_13_reg_1390 <= grp_fu_3794_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v29_14_reg_1590 <= grp_fu_3794_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v29_15_reg_1595 <= grp_fu_3794_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v29_16_reg_1600 <= grp_fu_3798_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v29_17_reg_1605 <= grp_fu_3794_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v29_18_reg_1610 <= grp_fu_3794_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v29_19_reg_1615 <= grp_fu_3794_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v29_20_reg_1620 <= grp_fu_3794_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v29_21_reg_1625 <= grp_fu_3798_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v29_22_reg_1630 <= grp_fu_3798_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v29_23_reg_1635 <= grp_fu_3798_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v29_24_reg_1640 <= grp_fu_3798_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v29_reg_1645 <= grp_fu_3798_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln66_reg_1109 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter16 == 1'b1) & (icmp_ln66_reg_1109_pp0_iter15_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter16_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter16_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to15 = 1'b1;
    end else begin
        ap_idle_pp0_0to15 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to17 = 1'b1;
    end else begin
        ap_idle_pp0_1to17 = 1'b0;
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
        ap_sig_allocacmp_phi_mul_load = 10'd0;
    end else begin
        ap_sig_allocacmp_phi_mul_load = phi_mul_fu_126;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v23_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_v23_1 = v23_fu_130;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_451_p0 = v29_19_reg_1615;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_451_p0 = v29_18_reg_1610;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_451_p0 = v29_17_reg_1605;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_451_p0 = v29_16_reg_1600;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_451_p0 = v29_14_reg_1590;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_451_p0 = v29_13_reg_1390;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_451_p0 = v27_reg_1220;
    end else begin
        grp_fu_451_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_451_p1 = v27_7_reg_1560_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_451_p1 = v27_6_reg_1555_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_451_p1 = v27_5_reg_1550_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_451_p1 = v27_4_reg_1545_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_451_p1 = v27_2_reg_1530_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_451_p1 = v27_1_reg_1525;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_451_p1 = 64'd0;
    end else begin
        grp_fu_451_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_456_p0 = v29_24_reg_1640;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_456_p0 = v29_23_reg_1635;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_456_p0 = v29_22_reg_1630;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_456_p0 = v29_21_reg_1625;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_456_p0 = v29_20_reg_1620;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_456_p0 = v29_15_reg_1595;
    end else begin
        grp_fu_456_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_456_p1 = v27_12_reg_1585_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_456_p1 = v27_11_reg_1580_pp0_iter13_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_456_p1 = v27_10_reg_1575_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_456_p1 = v27_9_reg_1570_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_456_p1 = v27_8_reg_1565_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_456_p1 = v27_3_reg_1540_pp0_iter5_reg;
    end else begin
        grp_fu_456_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_460_p0 = v25_12_fu_1014_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_460_p0 = v25_10_fu_999_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_460_p0 = v25_8_fu_972_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_460_p0 = v25_6_fu_939_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_460_p0 = v25_3_fu_884_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_460_p0 = v25_1_fu_744_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_460_p0 = v25_fu_592_p1;
    end else begin
        grp_fu_460_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_460_p1 = v26_12;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_460_p1 = v26_10;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_460_p1 = v26_8;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_460_p1 = v26_6;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_460_p1 = v26_3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_460_p1 = v26_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_460_p1 = v26;
    end else begin
        grp_fu_460_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_464_p0 = v25_11_fu_1003_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_464_p0 = v25_9_fu_976_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_464_p0 = v25_7_fu_943_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_464_p0 = v25_5_fu_910_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_464_p0 = v25_4_fu_888_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_464_p0 = v25_2_fu_748_p1;
        end else begin
            grp_fu_464_p0 = 'bx;
        end
    end else begin
        grp_fu_464_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_464_p1 = v26_11;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_464_p1 = v26_9;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_464_p1 = v26_7;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_464_p1 = v26_5;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_464_p1 = v26_4;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_464_p1 = v26_2;
        end else begin
            grp_fu_464_p1 = 'bx;
        end
    end else begin
        grp_fu_464_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v0_0_address0_local = zext_ln69_13_fu_994_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_0_address0_local = zext_ln69_12_fu_966_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_0_address0_local = zext_ln69_10_fu_933_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_0_address0_local = zext_ln69_8_fu_904_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_0_address0_local = zext_ln69_6_fu_790_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_0_address0_local = zext_ln69_5_fu_738_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_0_address0_local = zext_ln69_2_fu_682_p1;
    end else begin
        v0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_0_address1_local = zext_ln69_11_fu_961_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_0_address1_local = zext_ln69_9_fu_928_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_0_address1_local = zext_ln69_7_fu_899_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_0_address1_local = zext_ln69_4_fu_732_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_0_address1_local = zext_ln69_3_fu_688_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_0_address1_local = zext_ln69_1_fu_527_p1;
    end else begin
        v0_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_0_ce1_local = 1'b1;
    end else begin
        v0_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v0_1_address0_local = zext_ln69_13_fu_994_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_1_address0_local = zext_ln69_12_fu_966_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_1_address0_local = zext_ln69_10_fu_933_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_1_address0_local = zext_ln69_8_fu_904_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_1_address0_local = zext_ln69_6_fu_790_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_1_address0_local = zext_ln69_5_fu_738_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_1_address0_local = zext_ln69_2_fu_682_p1;
    end else begin
        v0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_1_address1_local = zext_ln69_11_fu_961_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_1_address1_local = zext_ln69_9_fu_928_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_1_address1_local = zext_ln69_7_fu_899_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_1_address1_local = zext_ln69_4_fu_732_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_1_address1_local = zext_ln69_3_fu_688_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_1_address1_local = zext_ln69_1_fu_527_p1;
    end else begin
        v0_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_1_ce1_local = 1'b1;
    end else begin
        v0_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v20_ce0_local = 1'b1;
    end else begin
        v20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v20_we0_local = 1'b1;
    end else begin
        v20_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter16_stage0) & (ap_idle_pp0_0to15 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to17 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln66_fu_662_p2 = (v23_1_reg_1101 + 7'd1);
assign add_ln69_12_fu_694_p2 = ($signed(phi_mul_load_reg_1113_pp0_iter1_reg) + $signed(10'd609));
assign add_ln69_13_fu_713_p2 = ($signed(phi_mul_load_reg_1113_pp0_iter1_reg) + $signed(10'd610));
assign add_ln69_14_fu_752_p2 = ($signed(phi_mul_load_reg_1113_pp0_iter2_reg) + $signed(10'd611));
assign add_ln69_15_fu_771_p2 = ($signed(phi_mul_load_reg_1113_pp0_iter2_reg) + $signed(10'd612));
assign add_ln69_16_fu_796_p2 = ($signed(phi_mul_load_reg_1113_pp0_iter2_reg) + $signed(10'd613));
assign add_ln69_17_fu_807_p2 = ($signed(phi_mul_load_reg_1113_pp0_iter2_reg) + $signed(10'd614));
assign add_ln69_18_fu_818_p2 = ($signed(phi_mul_load_reg_1113_pp0_iter2_reg) + $signed(10'd615));
assign add_ln69_19_fu_829_p2 = ($signed(phi_mul_load_reg_1113_pp0_iter2_reg) + $signed(10'd616));
assign add_ln69_20_fu_840_p2 = ($signed(phi_mul_load_reg_1113_pp0_iter2_reg) + $signed(10'd617));
assign add_ln69_21_fu_851_p2 = ($signed(phi_mul_load_reg_1113_pp0_iter2_reg) + $signed(10'd618));
assign add_ln69_22_fu_862_p2 = ($signed(phi_mul_load_reg_1113_pp0_iter2_reg) + $signed(10'd619));
assign add_ln69_23_fu_873_p2 = ($signed(phi_mul_load_reg_1113_pp0_iter2_reg) + $signed(10'd620));
assign add_ln69_24_fu_667_p2 = (phi_mul_load_reg_1113 + 10'd13);
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
assign grp_fu_3794_p_ce = 1'b1;
assign grp_fu_3794_p_din0 = grp_fu_451_p0;
assign grp_fu_3794_p_din1 = grp_fu_451_p1;
assign grp_fu_3794_p_opcode = 2'd0;
assign grp_fu_3798_p_ce = 1'b1;
assign grp_fu_3798_p_din0 = grp_fu_456_p0;
assign grp_fu_3798_p_din1 = grp_fu_456_p1;
assign grp_fu_3798_p_opcode = 2'd0;
assign grp_fu_3802_p_ce = 1'b1;
assign grp_fu_3802_p_din0 = grp_fu_460_p0;
assign grp_fu_3802_p_din1 = grp_fu_460_p1;
assign grp_fu_3806_p_ce = 1'b1;
assign grp_fu_3806_p_din0 = grp_fu_464_p0;
assign grp_fu_3806_p_din1 = grp_fu_464_p1;
assign grp_fu_496_p0 = (ap_sig_allocacmp_phi_mul_load + 10'd1);
assign grp_fu_508_p0 = (ap_sig_allocacmp_phi_mul_load + 10'd2);
assign grp_fu_538_p0 = (phi_mul_load_reg_1113 + 10'd3);
assign grp_fu_549_p0 = (phi_mul_load_reg_1113 + 10'd4);
assign grp_fu_575_p0 = (phi_mul_load_reg_1113 + 10'd5);
assign grp_fu_586_p0 = (phi_mul_load_reg_1113 + 10'd6);
assign grp_fu_601_p0 = (phi_mul_load_reg_1113 + 10'd7);
assign grp_fu_612_p0 = (phi_mul_load_reg_1113 + 10'd8);
assign grp_fu_623_p0 = (phi_mul_load_reg_1113 + 10'd9);
assign grp_fu_634_p0 = (phi_mul_load_reg_1113 + 10'd10);
assign grp_fu_645_p0 = (phi_mul_load_reg_1113 + 10'd11);
assign grp_fu_656_p0 = (phi_mul_load_reg_1113 + 10'd12);
assign icmp_ln66_fu_481_p2 = ((ap_sig_allocacmp_v23_1 == 7'd64) ? 1'b1 : 1'b0);
assign icmp_ln69_10_fu_867_p2 = ((add_ln69_22_fu_862_p2 < 10'd416) ? 1'b1 : 1'b0);
assign icmp_ln69_11_fu_878_p2 = ((add_ln69_23_fu_873_p2 < 10'd416) ? 1'b1 : 1'b0);
assign icmp_ln69_1_fu_718_p2 = ((add_ln69_13_fu_713_p2 < 10'd416) ? 1'b1 : 1'b0);
assign icmp_ln69_2_fu_757_p2 = ((add_ln69_14_fu_752_p2 < 10'd416) ? 1'b1 : 1'b0);
assign icmp_ln69_3_fu_776_p2 = ((add_ln69_15_fu_771_p2 < 10'd416) ? 1'b1 : 1'b0);
assign icmp_ln69_4_fu_801_p2 = ((add_ln69_16_fu_796_p2 < 10'd416) ? 1'b1 : 1'b0);
assign icmp_ln69_5_fu_812_p2 = ((add_ln69_17_fu_807_p2 < 10'd416) ? 1'b1 : 1'b0);
assign icmp_ln69_6_fu_823_p2 = ((add_ln69_18_fu_818_p2 < 10'd416) ? 1'b1 : 1'b0);
assign icmp_ln69_7_fu_834_p2 = ((add_ln69_19_fu_829_p2 < 10'd416) ? 1'b1 : 1'b0);
assign icmp_ln69_8_fu_845_p2 = ((add_ln69_20_fu_840_p2 < 10'd416) ? 1'b1 : 1'b0);
assign icmp_ln69_9_fu_856_p2 = ((add_ln69_21_fu_851_p2 < 10'd416) ? 1'b1 : 1'b0);
assign icmp_ln69_fu_699_p2 = ((add_ln69_12_fu_694_p2 < 10'd416) ? 1'b1 : 1'b0);
assign mul_ln69_fu_521_p0 = mul_ln69_fu_521_p00;
assign mul_ln69_fu_521_p00 = trunc_ln66_fu_514_p1;
assign mul_ln69_fu_521_p1 = 9'd13;
assign select_ln69_10_fu_980_p3 = ((icmp_ln69_9_reg_1335[0:0] == 1'b1) ? v0_1_q1 : v0_0_q1);
assign select_ln69_11_fu_987_p3 = ((icmp_ln69_10_reg_1340[0:0] == 1'b1) ? v0_1_q0 : v0_0_q0);
assign select_ln69_12_fu_1007_p3 = ((icmp_ln69_11_reg_1345[0:0] == 1'b1) ? v0_1_q0 : v0_0_q0);
assign select_ln69_1_fu_705_p3 = ((icmp_ln69_fu_699_p2[0:0] == 1'b1) ? v0_1_q0 : v0_0_q0);
assign select_ln69_2_fu_724_p3 = ((icmp_ln69_1_fu_718_p2[0:0] == 1'b1) ? v0_1_q1 : v0_0_q1);
assign select_ln69_3_fu_763_p3 = ((icmp_ln69_2_fu_757_p2[0:0] == 1'b1) ? v0_1_q1 : v0_0_q1);
assign select_ln69_4_fu_782_p3 = ((icmp_ln69_3_fu_776_p2[0:0] == 1'b1) ? v0_1_q0 : v0_0_q0);
assign select_ln69_5_fu_892_p3 = ((icmp_ln69_4_reg_1305[0:0] == 1'b1) ? v0_1_q0 : v0_0_q0);
assign select_ln69_6_fu_914_p3 = ((icmp_ln69_5_reg_1315[0:0] == 1'b1) ? v0_1_q1 : v0_0_q1);
assign select_ln69_7_fu_921_p3 = ((icmp_ln69_6_reg_1320[0:0] == 1'b1) ? v0_1_q0 : v0_0_q0);
assign select_ln69_8_fu_947_p3 = ((icmp_ln69_7_reg_1325[0:0] == 1'b1) ? v0_1_q1 : v0_0_q1);
assign select_ln69_9_fu_954_p3 = ((icmp_ln69_8_reg_1330[0:0] == 1'b1) ? v0_1_q0 : v0_0_q0);
assign select_ln69_fu_562_p3 = ((tmp_fu_555_p3[0:0] == 1'b1) ? v0_1_q1 : v0_0_q1);
assign tmp_fu_555_p3 = v23_1_reg_1101[32'd5];
assign trunc_ln66_fu_514_p1 = v23_1_reg_1101[4:0];
assign v0_0_address0 = v0_0_address0_local;
assign v0_0_address1 = v0_0_address1_local;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_0_ce1 = v0_0_ce1_local;
assign v0_1_address0 = v0_1_address0_local;
assign v0_1_address1 = v0_1_address1_local;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_1_ce1 = v0_1_ce1_local;
assign v20_address0 = zext_ln66_fu_1018_p1;
assign v20_ce0 = v20_ce0_local;
assign v20_d0 = v29_reg_1645;
assign v20_we0 = v20_we0_local;
assign v25_10_fu_999_p1 = select_ln69_10_reg_1490;
assign v25_11_fu_1003_p1 = select_ln69_11_reg_1495;
assign v25_12_fu_1014_p1 = select_ln69_12_reg_1520;
assign v25_1_fu_744_p1 = select_ln69_1_reg_1245;
assign v25_2_fu_748_p1 = select_ln69_2_reg_1250;
assign v25_3_fu_884_p1 = select_ln69_3_reg_1285;
assign v25_4_fu_888_p1 = select_ln69_4_reg_1290;
assign v25_5_fu_910_p1 = select_ln69_5_reg_1360;
assign v25_6_fu_939_p1 = select_ln69_6_reg_1400;
assign v25_7_fu_943_p1 = select_ln69_7_reg_1405;
assign v25_8_fu_972_p1 = select_ln69_8_reg_1445;
assign v25_9_fu_976_p1 = select_ln69_9_reg_1450;
assign v25_fu_592_p1 = select_ln69_reg_1170;
assign zext_ln66_fu_1018_p1 = v23_1_reg_1101_pp0_iter16_reg;
assign zext_ln69_10_fu_933_p1 = grp_fu_623_p2;
assign zext_ln69_11_fu_961_p1 = urem_ln69_9_reg_1430;
assign zext_ln69_12_fu_966_p1 = grp_fu_645_p2;
assign zext_ln69_13_fu_994_p1 = urem_ln69_11_reg_1475;
assign zext_ln69_1_fu_527_p1 = mul_ln69_fu_521_p2;
assign zext_ln69_2_fu_682_p1 = grp_fu_496_p2;
assign zext_ln69_3_fu_688_p1 = grp_fu_508_p2;
assign zext_ln69_4_fu_732_p1 = grp_fu_538_p2;
assign zext_ln69_5_fu_738_p1 = grp_fu_549_p2;
assign zext_ln69_6_fu_790_p1 = grp_fu_575_p2;
assign zext_ln69_7_fu_899_p1 = urem_ln69_5_reg_1310;
assign zext_ln69_8_fu_904_p1 = grp_fu_601_p2;
assign zext_ln69_9_fu_928_p1 = urem_ln69_7_reg_1385;
endmodule 