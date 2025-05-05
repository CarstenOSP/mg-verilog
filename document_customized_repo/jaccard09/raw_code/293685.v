module backprop_backprop_Pipeline_label_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v20_1_address0,v20_1_ce0,v20_1_we0,v20_1_d0,v20_address0,v20_ce0,v20_we0,v20_d0,v0_0_address0,v0_0_ce0,v0_0_q0,v0_0_address1,v0_0_ce1,v0_0_q1,v0_1_address0,v0_1_ce0,v0_1_q0,v0_1_address1,v0_1_ce1,v0_1_q1,v26,v26_1,v26_2,v26_3,v26_4,v26_5,v26_6,v26_7,v26_8,v26_9,v26_10,v26_11,v26_12,grp_fu_5807_p_din0,grp_fu_5807_p_din1,grp_fu_5807_p_opcode,grp_fu_5807_p_dout0,grp_fu_5807_p_ce,grp_fu_5811_p_din0,grp_fu_5811_p_din1,grp_fu_5811_p_opcode,grp_fu_5811_p_dout0,grp_fu_5811_p_ce,grp_fu_5815_p_din0,grp_fu_5815_p_din1,grp_fu_5815_p_dout0,grp_fu_5815_p_ce,grp_fu_5819_p_din0,grp_fu_5819_p_din1,grp_fu_5819_p_dout0,grp_fu_5819_p_ce); 
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
output  [4:0] v20_1_address0;
output   v20_1_ce0;
output   v20_1_we0;
output  [63:0] v20_1_d0;
output  [4:0] v20_address0;
output   v20_ce0;
output   v20_we0;
output  [63:0] v20_d0;
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
output  [63:0] grp_fu_5807_p_din0;
output  [63:0] grp_fu_5807_p_din1;
output  [0:0] grp_fu_5807_p_opcode;
input  [63:0] grp_fu_5807_p_dout0;
output   grp_fu_5807_p_ce;
output  [63:0] grp_fu_5811_p_din0;
output  [63:0] grp_fu_5811_p_din1;
output  [0:0] grp_fu_5811_p_opcode;
input  [63:0] grp_fu_5811_p_dout0;
output   grp_fu_5811_p_ce;
output  [63:0] grp_fu_5815_p_din0;
output  [63:0] grp_fu_5815_p_din1;
input  [63:0] grp_fu_5815_p_dout0;
output   grp_fu_5815_p_ce;
output  [63:0] grp_fu_5819_p_din0;
output  [63:0] grp_fu_5819_p_din1;
input  [63:0] grp_fu_5819_p_dout0;
output   grp_fu_5819_p_ce;
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
reg   [0:0] icmp_ln66_reg_1140;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] v23_1_reg_1132;
wire   [0:0] icmp_ln66_fu_498_p2;
reg   [0:0] icmp_ln66_reg_1140_pp0_iter1_reg;
reg   [0:0] icmp_ln66_reg_1140_pp0_iter2_reg;
reg   [0:0] icmp_ln66_reg_1140_pp0_iter3_reg;
reg   [0:0] icmp_ln66_reg_1140_pp0_iter4_reg;
reg   [0:0] icmp_ln66_reg_1140_pp0_iter5_reg;
reg   [0:0] icmp_ln66_reg_1140_pp0_iter6_reg;
reg   [0:0] icmp_ln66_reg_1140_pp0_iter7_reg;
reg   [0:0] icmp_ln66_reg_1140_pp0_iter8_reg;
reg   [0:0] icmp_ln66_reg_1140_pp0_iter9_reg;
reg   [0:0] icmp_ln66_reg_1140_pp0_iter10_reg;
reg   [0:0] icmp_ln66_reg_1140_pp0_iter11_reg;
reg   [0:0] icmp_ln66_reg_1140_pp0_iter12_reg;
reg   [0:0] icmp_ln66_reg_1140_pp0_iter13_reg;
reg   [0:0] icmp_ln66_reg_1140_pp0_iter14_reg;
reg   [0:0] icmp_ln66_reg_1140_pp0_iter15_reg;
reg   [9:0] phi_mul_load_reg_1144;
reg   [9:0] phi_mul_load_reg_1144_pp0_iter1_reg;
reg   [9:0] phi_mul_load_reg_1144_pp0_iter2_reg;
wire   [0:0] trunc_ln66_1_fu_507_p1;
reg   [0:0] trunc_ln66_1_reg_1171;
reg   [0:0] trunc_ln66_1_reg_1171_pp0_iter1_reg;
reg   [0:0] trunc_ln66_1_reg_1171_pp0_iter2_reg;
reg   [0:0] trunc_ln66_1_reg_1171_pp0_iter3_reg;
reg   [0:0] trunc_ln66_1_reg_1171_pp0_iter4_reg;
reg   [0:0] trunc_ln66_1_reg_1171_pp0_iter5_reg;
reg   [0:0] trunc_ln66_1_reg_1171_pp0_iter6_reg;
reg   [0:0] trunc_ln66_1_reg_1171_pp0_iter7_reg;
reg   [0:0] trunc_ln66_1_reg_1171_pp0_iter8_reg;
reg   [0:0] trunc_ln66_1_reg_1171_pp0_iter9_reg;
reg   [0:0] trunc_ln66_1_reg_1171_pp0_iter10_reg;
reg   [0:0] trunc_ln66_1_reg_1171_pp0_iter11_reg;
reg   [0:0] trunc_ln66_1_reg_1171_pp0_iter12_reg;
reg   [0:0] trunc_ln66_1_reg_1171_pp0_iter13_reg;
reg   [0:0] trunc_ln66_1_reg_1171_pp0_iter14_reg;
reg   [0:0] trunc_ln66_1_reg_1171_pp0_iter15_reg;
reg   [0:0] trunc_ln66_1_reg_1171_pp0_iter16_reg;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] select_ln69_fu_583_p3;
reg   [63:0] select_ln69_reg_1205;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] v25_fu_613_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [4:0] lshr_ln1_reg_1255;
wire    ap_block_pp0_stage6_11001;
reg   [4:0] lshr_ln1_reg_1255_pp0_iter1_reg;
reg   [4:0] lshr_ln1_reg_1255_pp0_iter2_reg;
reg   [4:0] lshr_ln1_reg_1255_pp0_iter3_reg;
reg   [4:0] lshr_ln1_reg_1255_pp0_iter4_reg;
reg   [4:0] lshr_ln1_reg_1255_pp0_iter5_reg;
reg   [4:0] lshr_ln1_reg_1255_pp0_iter6_reg;
reg   [4:0] lshr_ln1_reg_1255_pp0_iter7_reg;
reg   [4:0] lshr_ln1_reg_1255_pp0_iter8_reg;
reg   [4:0] lshr_ln1_reg_1255_pp0_iter9_reg;
reg   [4:0] lshr_ln1_reg_1255_pp0_iter10_reg;
reg   [4:0] lshr_ln1_reg_1255_pp0_iter11_reg;
reg   [4:0] lshr_ln1_reg_1255_pp0_iter12_reg;
reg   [4:0] lshr_ln1_reg_1255_pp0_iter13_reg;
reg   [4:0] lshr_ln1_reg_1255_pp0_iter14_reg;
reg   [4:0] lshr_ln1_reg_1255_pp0_iter15_reg;
reg   [4:0] lshr_ln1_reg_1255_pp0_iter16_reg;
reg   [63:0] v27_reg_1260;
wire   [63:0] select_ln69_1_fu_735_p3;
reg   [63:0] select_ln69_1_reg_1285;
wire   [63:0] select_ln69_2_fu_754_p3;
reg   [63:0] select_ln69_2_reg_1290;
wire   [63:0] v25_1_fu_774_p1;
wire   [63:0] v25_2_fu_778_p1;
wire   [63:0] select_ln69_3_fu_793_p3;
reg   [63:0] select_ln69_3_reg_1325;
wire   [63:0] select_ln69_4_fu_812_p3;
reg   [63:0] select_ln69_4_reg_1330;
wire   [0:0] icmp_ln69_4_fu_831_p2;
reg   [0:0] icmp_ln69_4_reg_1345;
wire   [9:0] grp_fu_607_p2;
reg   [9:0] urem_ln69_5_reg_1350;
wire   [0:0] icmp_ln69_5_fu_842_p2;
reg   [0:0] icmp_ln69_5_reg_1355;
wire   [0:0] icmp_ln69_6_fu_853_p2;
reg   [0:0] icmp_ln69_6_reg_1360;
wire   [0:0] icmp_ln69_7_fu_864_p2;
reg   [0:0] icmp_ln69_7_reg_1365;
wire   [0:0] icmp_ln69_8_fu_875_p2;
reg   [0:0] icmp_ln69_8_reg_1370;
wire   [0:0] icmp_ln69_9_fu_886_p2;
reg   [0:0] icmp_ln69_9_reg_1375;
wire   [0:0] icmp_ln69_10_fu_897_p2;
reg   [0:0] icmp_ln69_10_reg_1380;
wire   [0:0] icmp_ln69_11_fu_908_p2;
reg   [0:0] icmp_ln69_11_reg_1385;
wire   [63:0] v25_3_fu_914_p1;
wire   [63:0] v25_4_fu_918_p1;
wire   [63:0] select_ln69_5_fu_922_p3;
reg   [63:0] select_ln69_5_reg_1400;
wire   [9:0] grp_fu_633_p2;
reg   [9:0] urem_ln69_7_reg_1425;
reg   [63:0] v29_13_reg_1430;
wire   [63:0] v25_5_fu_940_p1;
wire   [63:0] select_ln69_6_fu_944_p3;
reg   [63:0] select_ln69_6_reg_1440;
wire   [63:0] select_ln69_7_fu_951_p3;
reg   [63:0] select_ln69_7_reg_1445;
wire   [9:0] grp_fu_655_p2;
reg   [9:0] urem_ln69_9_reg_1470;
wire   [63:0] v25_6_fu_969_p1;
wire   [63:0] v25_7_fu_973_p1;
wire   [63:0] select_ln69_8_fu_977_p3;
reg   [63:0] select_ln69_8_reg_1485;
wire   [63:0] select_ln69_9_fu_984_p3;
reg   [63:0] select_ln69_9_reg_1490;
wire   [9:0] grp_fu_677_p2;
reg   [9:0] urem_ln69_11_reg_1515;
wire   [63:0] v25_8_fu_1002_p1;
wire   [63:0] v25_9_fu_1006_p1;
wire   [63:0] select_ln69_10_fu_1010_p3;
reg   [63:0] select_ln69_10_reg_1530;
wire   [63:0] select_ln69_11_fu_1017_p3;
reg   [63:0] select_ln69_11_reg_1535;
wire   [63:0] v25_10_fu_1029_p1;
wire   [63:0] v25_11_fu_1033_p1;
wire   [63:0] select_ln69_12_fu_1037_p3;
reg   [63:0] select_ln69_12_reg_1560;
reg   [63:0] v27_1_reg_1565;
reg   [63:0] v27_2_reg_1570;
reg   [63:0] v27_2_reg_1570_pp0_iter4_reg;
wire   [63:0] v25_12_fu_1044_p1;
reg   [63:0] v27_3_reg_1580;
reg   [63:0] v27_3_reg_1580_pp0_iter4_reg;
reg   [63:0] v27_3_reg_1580_pp0_iter5_reg;
reg   [63:0] v27_4_reg_1585;
reg   [63:0] v27_4_reg_1585_pp0_iter4_reg;
reg   [63:0] v27_4_reg_1585_pp0_iter5_reg;
reg   [63:0] v27_4_reg_1585_pp0_iter6_reg;
reg   [63:0] v27_5_reg_1590;
reg   [63:0] v27_5_reg_1590_pp0_iter4_reg;
reg   [63:0] v27_5_reg_1590_pp0_iter5_reg;
reg   [63:0] v27_5_reg_1590_pp0_iter6_reg;
reg   [63:0] v27_5_reg_1590_pp0_iter7_reg;
reg   [63:0] v27_6_reg_1595;
reg   [63:0] v27_6_reg_1595_pp0_iter4_reg;
reg   [63:0] v27_6_reg_1595_pp0_iter5_reg;
reg   [63:0] v27_6_reg_1595_pp0_iter6_reg;
reg   [63:0] v27_6_reg_1595_pp0_iter7_reg;
reg   [63:0] v27_6_reg_1595_pp0_iter8_reg;
reg   [63:0] v27_7_reg_1600;
reg   [63:0] v27_7_reg_1600_pp0_iter4_reg;
reg   [63:0] v27_7_reg_1600_pp0_iter5_reg;
reg   [63:0] v27_7_reg_1600_pp0_iter6_reg;
reg   [63:0] v27_7_reg_1600_pp0_iter7_reg;
reg   [63:0] v27_7_reg_1600_pp0_iter8_reg;
reg   [63:0] v27_7_reg_1600_pp0_iter9_reg;
reg   [63:0] v27_8_reg_1605;
reg   [63:0] v27_8_reg_1605_pp0_iter4_reg;
reg   [63:0] v27_8_reg_1605_pp0_iter5_reg;
reg   [63:0] v27_8_reg_1605_pp0_iter6_reg;
reg   [63:0] v27_8_reg_1605_pp0_iter7_reg;
reg   [63:0] v27_8_reg_1605_pp0_iter8_reg;
reg   [63:0] v27_8_reg_1605_pp0_iter9_reg;
reg   [63:0] v27_8_reg_1605_pp0_iter10_reg;
reg   [63:0] v27_9_reg_1610;
reg   [63:0] v27_9_reg_1610_pp0_iter4_reg;
reg   [63:0] v27_9_reg_1610_pp0_iter5_reg;
reg   [63:0] v27_9_reg_1610_pp0_iter6_reg;
reg   [63:0] v27_9_reg_1610_pp0_iter7_reg;
reg   [63:0] v27_9_reg_1610_pp0_iter8_reg;
reg   [63:0] v27_9_reg_1610_pp0_iter9_reg;
reg   [63:0] v27_9_reg_1610_pp0_iter10_reg;
reg   [63:0] v27_9_reg_1610_pp0_iter11_reg;
reg   [63:0] v27_10_reg_1615;
reg   [63:0] v27_10_reg_1615_pp0_iter4_reg;
reg   [63:0] v27_10_reg_1615_pp0_iter5_reg;
reg   [63:0] v27_10_reg_1615_pp0_iter6_reg;
reg   [63:0] v27_10_reg_1615_pp0_iter7_reg;
reg   [63:0] v27_10_reg_1615_pp0_iter8_reg;
reg   [63:0] v27_10_reg_1615_pp0_iter9_reg;
reg   [63:0] v27_10_reg_1615_pp0_iter10_reg;
reg   [63:0] v27_10_reg_1615_pp0_iter11_reg;
reg   [63:0] v27_10_reg_1615_pp0_iter12_reg;
reg   [63:0] v27_11_reg_1620;
reg   [63:0] v27_11_reg_1620_pp0_iter4_reg;
reg   [63:0] v27_11_reg_1620_pp0_iter5_reg;
reg   [63:0] v27_11_reg_1620_pp0_iter6_reg;
reg   [63:0] v27_11_reg_1620_pp0_iter7_reg;
reg   [63:0] v27_11_reg_1620_pp0_iter8_reg;
reg   [63:0] v27_11_reg_1620_pp0_iter9_reg;
reg   [63:0] v27_11_reg_1620_pp0_iter10_reg;
reg   [63:0] v27_11_reg_1620_pp0_iter11_reg;
reg   [63:0] v27_11_reg_1620_pp0_iter12_reg;
reg   [63:0] v27_11_reg_1620_pp0_iter13_reg;
reg   [63:0] v27_12_reg_1625;
reg   [63:0] v27_12_reg_1625_pp0_iter4_reg;
reg   [63:0] v27_12_reg_1625_pp0_iter5_reg;
reg   [63:0] v27_12_reg_1625_pp0_iter6_reg;
reg   [63:0] v27_12_reg_1625_pp0_iter7_reg;
reg   [63:0] v27_12_reg_1625_pp0_iter8_reg;
reg   [63:0] v27_12_reg_1625_pp0_iter9_reg;
reg   [63:0] v27_12_reg_1625_pp0_iter10_reg;
reg   [63:0] v27_12_reg_1625_pp0_iter11_reg;
reg   [63:0] v27_12_reg_1625_pp0_iter12_reg;
reg   [63:0] v27_12_reg_1625_pp0_iter13_reg;
reg   [63:0] v27_12_reg_1625_pp0_iter14_reg;
reg   [63:0] v29_14_reg_1630;
reg   [63:0] v29_15_reg_1635;
reg   [63:0] v29_16_reg_1640;
reg   [63:0] v29_17_reg_1645;
reg   [63:0] v29_18_reg_1650;
reg   [63:0] v29_19_reg_1655;
reg   [63:0] v29_20_reg_1660;
reg   [63:0] v29_21_reg_1665;
reg   [63:0] v29_22_reg_1670;
reg   [63:0] v29_23_reg_1675;
reg   [63:0] v29_24_reg_1680;
reg   [63:0] v29_reg_1685;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln69_1_fu_548_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln69_2_fu_712_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln69_3_fu_718_p1;
wire   [63:0] zext_ln69_4_fu_762_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln69_5_fu_768_p1;
wire   [63:0] zext_ln69_6_fu_820_p1;
wire   [63:0] zext_ln69_7_fu_929_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln69_8_fu_934_p1;
wire   [63:0] zext_ln69_9_fu_958_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln69_10_fu_963_p1;
wire   [63:0] zext_ln69_11_fu_991_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln69_12_fu_996_p1;
wire   [63:0] zext_ln69_13_fu_1024_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln66_fu_1048_p1;
reg   [9:0] phi_mul_fu_130;
wire   [9:0] add_ln69_24_fu_697_p2;
wire    ap_loop_init;
reg   [9:0] ap_sig_allocacmp_phi_mul_load;
reg   [6:0] v23_fu_134;
wire   [6:0] add_ln66_fu_683_p2;
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
reg    v20_1_we0_local;
reg    v20_1_ce0_local;
reg   [63:0] grp_fu_468_p0;
reg   [63:0] grp_fu_468_p1;
reg   [63:0] grp_fu_473_p0;
reg   [63:0] grp_fu_473_p1;
reg   [63:0] grp_fu_477_p0;
reg   [63:0] grp_fu_477_p1;
reg   [63:0] grp_fu_481_p0;
reg   [63:0] grp_fu_481_p1;
wire   [9:0] grp_fu_517_p0;
wire   [9:0] grp_fu_529_p0;
wire   [4:0] trunc_ln66_fu_535_p1;
wire   [4:0] mul_ln69_fu_542_p0;
wire   [4:0] mul_ln69_fu_542_p1;
wire   [8:0] mul_ln69_fu_542_p2;
wire   [9:0] grp_fu_559_p0;
wire   [9:0] grp_fu_570_p0;
wire   [0:0] tmp_fu_576_p3;
wire   [9:0] grp_fu_596_p0;
wire   [9:0] grp_fu_607_p0;
wire   [9:0] grp_fu_622_p0;
wire   [9:0] grp_fu_633_p0;
wire   [9:0] grp_fu_644_p0;
wire   [9:0] grp_fu_655_p0;
wire   [9:0] grp_fu_666_p0;
wire   [9:0] grp_fu_677_p0;
wire   [9:0] grp_fu_517_p2;
wire   [9:0] grp_fu_529_p2;
wire   [9:0] add_ln69_12_fu_724_p2;
wire   [0:0] icmp_ln69_fu_729_p2;
wire   [9:0] add_ln69_13_fu_743_p2;
wire   [0:0] icmp_ln69_1_fu_748_p2;
wire   [9:0] grp_fu_559_p2;
wire   [9:0] grp_fu_570_p2;
wire   [9:0] add_ln69_14_fu_782_p2;
wire   [0:0] icmp_ln69_2_fu_787_p2;
wire   [9:0] add_ln69_15_fu_801_p2;
wire   [0:0] icmp_ln69_3_fu_806_p2;
wire   [9:0] grp_fu_596_p2;
wire   [9:0] add_ln69_16_fu_826_p2;
wire   [9:0] add_ln69_17_fu_837_p2;
wire   [9:0] add_ln69_18_fu_848_p2;
wire   [9:0] add_ln69_19_fu_859_p2;
wire   [9:0] add_ln69_20_fu_870_p2;
wire   [9:0] add_ln69_21_fu_881_p2;
wire   [9:0] add_ln69_22_fu_892_p2;
wire   [9:0] add_ln69_23_fu_903_p2;
wire   [9:0] grp_fu_622_p2;
wire   [9:0] grp_fu_644_p2;
wire   [9:0] grp_fu_666_p2;
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
wire   [8:0] mul_ln69_fu_542_p00;
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
#0 phi_mul_fu_130 = 10'd0;
#0 v23_fu_134 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_urem_10ns_10ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 10 ),.dout_WIDTH( 10 ))
urem_10ns_10ns_10_14_1_U21(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_517_p0),.din1(10'd416),.ce(1'b1),.dout(grp_fu_517_p2));
backprop_urem_10ns_10ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 10 ),.dout_WIDTH( 10 ))
urem_10ns_10ns_10_14_1_U22(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_529_p0),.din1(10'd416),.ce(1'b1),.dout(grp_fu_529_p2));
backprop_mul_5ns_5ns_9_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 5 ),.dout_WIDTH( 9 ))
mul_5ns_5ns_9_1_1_U23(.din0(mul_ln69_fu_542_p0),.din1(mul_ln69_fu_542_p1),.dout(mul_ln69_fu_542_p2));
backprop_urem_10ns_10ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 10 ),.dout_WIDTH( 10 ))
urem_10ns_10ns_10_14_1_U24(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_559_p0),.din1(10'd416),.ce(1'b1),.dout(grp_fu_559_p2));
backprop_urem_10ns_10ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 10 ),.dout_WIDTH( 10 ))
urem_10ns_10ns_10_14_1_U25(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_570_p0),.din1(10'd416),.ce(1'b1),.dout(grp_fu_570_p2));
backprop_urem_10ns_10ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 10 ),.dout_WIDTH( 10 ))
urem_10ns_10ns_10_14_1_U26(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_596_p0),.din1(10'd416),.ce(1'b1),.dout(grp_fu_596_p2));
backprop_urem_10ns_10ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 10 ),.dout_WIDTH( 10 ))
urem_10ns_10ns_10_14_1_U27(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_607_p0),.din1(10'd416),.ce(1'b1),.dout(grp_fu_607_p2));
backprop_urem_10ns_10ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 10 ),.dout_WIDTH( 10 ))
urem_10ns_10ns_10_14_1_U28(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_622_p0),.din1(10'd416),.ce(1'b1),.dout(grp_fu_622_p2));
backprop_urem_10ns_10ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 10 ),.dout_WIDTH( 10 ))
urem_10ns_10ns_10_14_1_U29(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_633_p0),.din1(10'd416),.ce(1'b1),.dout(grp_fu_633_p2));
backprop_urem_10ns_10ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 10 ),.dout_WIDTH( 10 ))
urem_10ns_10ns_10_14_1_U30(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_644_p0),.din1(10'd416),.ce(1'b1),.dout(grp_fu_644_p2));
backprop_urem_10ns_10ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 10 ),.dout_WIDTH( 10 ))
urem_10ns_10ns_10_14_1_U31(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_655_p0),.din1(10'd416),.ce(1'b1),.dout(grp_fu_655_p2));
backprop_urem_10ns_10ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 10 ),.dout_WIDTH( 10 ))
urem_10ns_10ns_10_14_1_U32(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_666_p0),.din1(10'd416),.ce(1'b1),.dout(grp_fu_666_p2));
backprop_urem_10ns_10ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 10 ),.dout_WIDTH( 10 ))
urem_10ns_10ns_10_14_1_U33(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_677_p0),.din1(10'd416),.ce(1'b1),.dout(grp_fu_677_p2));
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
        phi_mul_fu_130 <= 10'd0;
    end else if (((icmp_ln66_reg_1140 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        phi_mul_fu_130 <= add_ln69_24_fu_697_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v23_fu_134 <= 7'd0;
    end else if (((icmp_ln66_reg_1140 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v23_fu_134 <= add_ln66_fu_683_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln66_reg_1140 <= icmp_ln66_fu_498_p2;
        icmp_ln66_reg_1140_pp0_iter10_reg <= icmp_ln66_reg_1140_pp0_iter9_reg;
        icmp_ln66_reg_1140_pp0_iter11_reg <= icmp_ln66_reg_1140_pp0_iter10_reg;
        icmp_ln66_reg_1140_pp0_iter12_reg <= icmp_ln66_reg_1140_pp0_iter11_reg;
        icmp_ln66_reg_1140_pp0_iter13_reg <= icmp_ln66_reg_1140_pp0_iter12_reg;
        icmp_ln66_reg_1140_pp0_iter14_reg <= icmp_ln66_reg_1140_pp0_iter13_reg;
        icmp_ln66_reg_1140_pp0_iter15_reg <= icmp_ln66_reg_1140_pp0_iter14_reg;
        icmp_ln66_reg_1140_pp0_iter1_reg <= icmp_ln66_reg_1140;
        icmp_ln66_reg_1140_pp0_iter2_reg <= icmp_ln66_reg_1140_pp0_iter1_reg;
        icmp_ln66_reg_1140_pp0_iter3_reg <= icmp_ln66_reg_1140_pp0_iter2_reg;
        icmp_ln66_reg_1140_pp0_iter4_reg <= icmp_ln66_reg_1140_pp0_iter3_reg;
        icmp_ln66_reg_1140_pp0_iter5_reg <= icmp_ln66_reg_1140_pp0_iter4_reg;
        icmp_ln66_reg_1140_pp0_iter6_reg <= icmp_ln66_reg_1140_pp0_iter5_reg;
        icmp_ln66_reg_1140_pp0_iter7_reg <= icmp_ln66_reg_1140_pp0_iter6_reg;
        icmp_ln66_reg_1140_pp0_iter8_reg <= icmp_ln66_reg_1140_pp0_iter7_reg;
        icmp_ln66_reg_1140_pp0_iter9_reg <= icmp_ln66_reg_1140_pp0_iter8_reg;
        phi_mul_load_reg_1144 <= ap_sig_allocacmp_phi_mul_load;
        phi_mul_load_reg_1144_pp0_iter1_reg <= phi_mul_load_reg_1144;
        phi_mul_load_reg_1144_pp0_iter2_reg <= phi_mul_load_reg_1144_pp0_iter1_reg;
        select_ln69_1_reg_1285 <= select_ln69_1_fu_735_p3;
        select_ln69_2_reg_1290 <= select_ln69_2_fu_754_p3;
        trunc_ln66_1_reg_1171 <= trunc_ln66_1_fu_507_p1;
        trunc_ln66_1_reg_1171_pp0_iter10_reg <= trunc_ln66_1_reg_1171_pp0_iter9_reg;
        trunc_ln66_1_reg_1171_pp0_iter11_reg <= trunc_ln66_1_reg_1171_pp0_iter10_reg;
        trunc_ln66_1_reg_1171_pp0_iter12_reg <= trunc_ln66_1_reg_1171_pp0_iter11_reg;
        trunc_ln66_1_reg_1171_pp0_iter13_reg <= trunc_ln66_1_reg_1171_pp0_iter12_reg;
        trunc_ln66_1_reg_1171_pp0_iter14_reg <= trunc_ln66_1_reg_1171_pp0_iter13_reg;
        trunc_ln66_1_reg_1171_pp0_iter15_reg <= trunc_ln66_1_reg_1171_pp0_iter14_reg;
        trunc_ln66_1_reg_1171_pp0_iter16_reg <= trunc_ln66_1_reg_1171_pp0_iter15_reg;
        trunc_ln66_1_reg_1171_pp0_iter1_reg <= trunc_ln66_1_reg_1171;
        trunc_ln66_1_reg_1171_pp0_iter2_reg <= trunc_ln66_1_reg_1171_pp0_iter1_reg;
        trunc_ln66_1_reg_1171_pp0_iter3_reg <= trunc_ln66_1_reg_1171_pp0_iter2_reg;
        trunc_ln66_1_reg_1171_pp0_iter4_reg <= trunc_ln66_1_reg_1171_pp0_iter3_reg;
        trunc_ln66_1_reg_1171_pp0_iter5_reg <= trunc_ln66_1_reg_1171_pp0_iter4_reg;
        trunc_ln66_1_reg_1171_pp0_iter6_reg <= trunc_ln66_1_reg_1171_pp0_iter5_reg;
        trunc_ln66_1_reg_1171_pp0_iter7_reg <= trunc_ln66_1_reg_1171_pp0_iter6_reg;
        trunc_ln66_1_reg_1171_pp0_iter8_reg <= trunc_ln66_1_reg_1171_pp0_iter7_reg;
        trunc_ln66_1_reg_1171_pp0_iter9_reg <= trunc_ln66_1_reg_1171_pp0_iter8_reg;
        v23_1_reg_1132 <= ap_sig_allocacmp_v23_1;
        v27_2_reg_1570_pp0_iter4_reg <= v27_2_reg_1570;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln69_10_reg_1380 <= icmp_ln69_10_fu_897_p2;
        icmp_ln69_11_reg_1385 <= icmp_ln69_11_fu_908_p2;
        icmp_ln69_4_reg_1345 <= icmp_ln69_4_fu_831_p2;
        icmp_ln69_5_reg_1355 <= icmp_ln69_5_fu_842_p2;
        icmp_ln69_6_reg_1360 <= icmp_ln69_6_fu_853_p2;
        icmp_ln69_7_reg_1365 <= icmp_ln69_7_fu_864_p2;
        icmp_ln69_8_reg_1370 <= icmp_ln69_8_fu_875_p2;
        icmp_ln69_9_reg_1375 <= icmp_ln69_9_fu_886_p2;
        select_ln69_3_reg_1325 <= select_ln69_3_fu_793_p3;
        select_ln69_4_reg_1330 <= select_ln69_4_fu_812_p3;
        urem_ln69_5_reg_1350 <= grp_fu_607_p2;
        v27_3_reg_1580_pp0_iter4_reg <= v27_3_reg_1580;
        v27_3_reg_1580_pp0_iter5_reg <= v27_3_reg_1580_pp0_iter4_reg;
        v27_4_reg_1585_pp0_iter4_reg <= v27_4_reg_1585;
        v27_4_reg_1585_pp0_iter5_reg <= v27_4_reg_1585_pp0_iter4_reg;
        v27_4_reg_1585_pp0_iter6_reg <= v27_4_reg_1585_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        lshr_ln1_reg_1255 <= {{v23_1_reg_1132[5:1]}};
        lshr_ln1_reg_1255_pp0_iter10_reg <= lshr_ln1_reg_1255_pp0_iter9_reg;
        lshr_ln1_reg_1255_pp0_iter11_reg <= lshr_ln1_reg_1255_pp0_iter10_reg;
        lshr_ln1_reg_1255_pp0_iter12_reg <= lshr_ln1_reg_1255_pp0_iter11_reg;
        lshr_ln1_reg_1255_pp0_iter13_reg <= lshr_ln1_reg_1255_pp0_iter12_reg;
        lshr_ln1_reg_1255_pp0_iter14_reg <= lshr_ln1_reg_1255_pp0_iter13_reg;
        lshr_ln1_reg_1255_pp0_iter15_reg <= lshr_ln1_reg_1255_pp0_iter14_reg;
        lshr_ln1_reg_1255_pp0_iter16_reg <= lshr_ln1_reg_1255_pp0_iter15_reg;
        lshr_ln1_reg_1255_pp0_iter1_reg <= lshr_ln1_reg_1255;
        lshr_ln1_reg_1255_pp0_iter2_reg <= lshr_ln1_reg_1255_pp0_iter1_reg;
        lshr_ln1_reg_1255_pp0_iter3_reg <= lshr_ln1_reg_1255_pp0_iter2_reg;
        lshr_ln1_reg_1255_pp0_iter4_reg <= lshr_ln1_reg_1255_pp0_iter3_reg;
        lshr_ln1_reg_1255_pp0_iter5_reg <= lshr_ln1_reg_1255_pp0_iter4_reg;
        lshr_ln1_reg_1255_pp0_iter6_reg <= lshr_ln1_reg_1255_pp0_iter5_reg;
        lshr_ln1_reg_1255_pp0_iter7_reg <= lshr_ln1_reg_1255_pp0_iter6_reg;
        lshr_ln1_reg_1255_pp0_iter8_reg <= lshr_ln1_reg_1255_pp0_iter7_reg;
        lshr_ln1_reg_1255_pp0_iter9_reg <= lshr_ln1_reg_1255_pp0_iter8_reg;
        select_ln69_12_reg_1560 <= select_ln69_12_fu_1037_p3;
        v27_12_reg_1625_pp0_iter10_reg <= v27_12_reg_1625_pp0_iter9_reg;
        v27_12_reg_1625_pp0_iter11_reg <= v27_12_reg_1625_pp0_iter10_reg;
        v27_12_reg_1625_pp0_iter12_reg <= v27_12_reg_1625_pp0_iter11_reg;
        v27_12_reg_1625_pp0_iter13_reg <= v27_12_reg_1625_pp0_iter12_reg;
        v27_12_reg_1625_pp0_iter14_reg <= v27_12_reg_1625_pp0_iter13_reg;
        v27_12_reg_1625_pp0_iter4_reg <= v27_12_reg_1625;
        v27_12_reg_1625_pp0_iter5_reg <= v27_12_reg_1625_pp0_iter4_reg;
        v27_12_reg_1625_pp0_iter6_reg <= v27_12_reg_1625_pp0_iter5_reg;
        v27_12_reg_1625_pp0_iter7_reg <= v27_12_reg_1625_pp0_iter6_reg;
        v27_12_reg_1625_pp0_iter8_reg <= v27_12_reg_1625_pp0_iter7_reg;
        v27_12_reg_1625_pp0_iter9_reg <= v27_12_reg_1625_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        select_ln69_10_reg_1530 <= select_ln69_10_fu_1010_p3;
        select_ln69_11_reg_1535 <= select_ln69_11_fu_1017_p3;
        v27_10_reg_1615_pp0_iter10_reg <= v27_10_reg_1615_pp0_iter9_reg;
        v27_10_reg_1615_pp0_iter11_reg <= v27_10_reg_1615_pp0_iter10_reg;
        v27_10_reg_1615_pp0_iter12_reg <= v27_10_reg_1615_pp0_iter11_reg;
        v27_10_reg_1615_pp0_iter4_reg <= v27_10_reg_1615;
        v27_10_reg_1615_pp0_iter5_reg <= v27_10_reg_1615_pp0_iter4_reg;
        v27_10_reg_1615_pp0_iter6_reg <= v27_10_reg_1615_pp0_iter5_reg;
        v27_10_reg_1615_pp0_iter7_reg <= v27_10_reg_1615_pp0_iter6_reg;
        v27_10_reg_1615_pp0_iter8_reg <= v27_10_reg_1615_pp0_iter7_reg;
        v27_10_reg_1615_pp0_iter9_reg <= v27_10_reg_1615_pp0_iter8_reg;
        v27_11_reg_1620_pp0_iter10_reg <= v27_11_reg_1620_pp0_iter9_reg;
        v27_11_reg_1620_pp0_iter11_reg <= v27_11_reg_1620_pp0_iter10_reg;
        v27_11_reg_1620_pp0_iter12_reg <= v27_11_reg_1620_pp0_iter11_reg;
        v27_11_reg_1620_pp0_iter13_reg <= v27_11_reg_1620_pp0_iter12_reg;
        v27_11_reg_1620_pp0_iter4_reg <= v27_11_reg_1620;
        v27_11_reg_1620_pp0_iter5_reg <= v27_11_reg_1620_pp0_iter4_reg;
        v27_11_reg_1620_pp0_iter6_reg <= v27_11_reg_1620_pp0_iter5_reg;
        v27_11_reg_1620_pp0_iter7_reg <= v27_11_reg_1620_pp0_iter6_reg;
        v27_11_reg_1620_pp0_iter8_reg <= v27_11_reg_1620_pp0_iter7_reg;
        v27_11_reg_1620_pp0_iter9_reg <= v27_11_reg_1620_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln69_5_reg_1400 <= select_ln69_5_fu_922_p3;
        select_ln69_reg_1205 <= select_ln69_fu_583_p3;
        urem_ln69_7_reg_1425 <= grp_fu_633_p2;
        v27_5_reg_1590_pp0_iter4_reg <= v27_5_reg_1590;
        v27_5_reg_1590_pp0_iter5_reg <= v27_5_reg_1590_pp0_iter4_reg;
        v27_5_reg_1590_pp0_iter6_reg <= v27_5_reg_1590_pp0_iter5_reg;
        v27_5_reg_1590_pp0_iter7_reg <= v27_5_reg_1590_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        select_ln69_6_reg_1440 <= select_ln69_6_fu_944_p3;
        select_ln69_7_reg_1445 <= select_ln69_7_fu_951_p3;
        urem_ln69_9_reg_1470 <= grp_fu_655_p2;
        v27_6_reg_1595_pp0_iter4_reg <= v27_6_reg_1595;
        v27_6_reg_1595_pp0_iter5_reg <= v27_6_reg_1595_pp0_iter4_reg;
        v27_6_reg_1595_pp0_iter6_reg <= v27_6_reg_1595_pp0_iter5_reg;
        v27_6_reg_1595_pp0_iter7_reg <= v27_6_reg_1595_pp0_iter6_reg;
        v27_6_reg_1595_pp0_iter8_reg <= v27_6_reg_1595_pp0_iter7_reg;
        v27_7_reg_1600_pp0_iter4_reg <= v27_7_reg_1600;
        v27_7_reg_1600_pp0_iter5_reg <= v27_7_reg_1600_pp0_iter4_reg;
        v27_7_reg_1600_pp0_iter6_reg <= v27_7_reg_1600_pp0_iter5_reg;
        v27_7_reg_1600_pp0_iter7_reg <= v27_7_reg_1600_pp0_iter6_reg;
        v27_7_reg_1600_pp0_iter8_reg <= v27_7_reg_1600_pp0_iter7_reg;
        v27_7_reg_1600_pp0_iter9_reg <= v27_7_reg_1600_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        select_ln69_8_reg_1485 <= select_ln69_8_fu_977_p3;
        select_ln69_9_reg_1490 <= select_ln69_9_fu_984_p3;
        urem_ln69_11_reg_1515 <= grp_fu_677_p2;
        v27_8_reg_1605_pp0_iter10_reg <= v27_8_reg_1605_pp0_iter9_reg;
        v27_8_reg_1605_pp0_iter4_reg <= v27_8_reg_1605;
        v27_8_reg_1605_pp0_iter5_reg <= v27_8_reg_1605_pp0_iter4_reg;
        v27_8_reg_1605_pp0_iter6_reg <= v27_8_reg_1605_pp0_iter5_reg;
        v27_8_reg_1605_pp0_iter7_reg <= v27_8_reg_1605_pp0_iter6_reg;
        v27_8_reg_1605_pp0_iter8_reg <= v27_8_reg_1605_pp0_iter7_reg;
        v27_8_reg_1605_pp0_iter9_reg <= v27_8_reg_1605_pp0_iter8_reg;
        v27_9_reg_1610_pp0_iter10_reg <= v27_9_reg_1610_pp0_iter9_reg;
        v27_9_reg_1610_pp0_iter11_reg <= v27_9_reg_1610_pp0_iter10_reg;
        v27_9_reg_1610_pp0_iter4_reg <= v27_9_reg_1610;
        v27_9_reg_1610_pp0_iter5_reg <= v27_9_reg_1610_pp0_iter4_reg;
        v27_9_reg_1610_pp0_iter6_reg <= v27_9_reg_1610_pp0_iter5_reg;
        v27_9_reg_1610_pp0_iter7_reg <= v27_9_reg_1610_pp0_iter6_reg;
        v27_9_reg_1610_pp0_iter8_reg <= v27_9_reg_1610_pp0_iter7_reg;
        v27_9_reg_1610_pp0_iter9_reg <= v27_9_reg_1610_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v27_10_reg_1615 <= grp_fu_5815_p_dout0;
        v27_11_reg_1620 <= grp_fu_5819_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v27_12_reg_1625 <= grp_fu_5815_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v27_1_reg_1565 <= grp_fu_5815_p_dout0;
        v27_2_reg_1570 <= grp_fu_5819_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v27_3_reg_1580 <= grp_fu_5815_p_dout0;
        v27_4_reg_1585 <= grp_fu_5819_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v27_5_reg_1590 <= grp_fu_5819_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v27_6_reg_1595 <= grp_fu_5815_p_dout0;
        v27_7_reg_1600 <= grp_fu_5819_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v27_8_reg_1605 <= grp_fu_5815_p_dout0;
        v27_9_reg_1610 <= grp_fu_5819_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v27_reg_1260 <= grp_fu_5815_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v29_13_reg_1430 <= grp_fu_5807_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v29_14_reg_1630 <= grp_fu_5807_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v29_15_reg_1635 <= grp_fu_5807_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v29_16_reg_1640 <= grp_fu_5811_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v29_17_reg_1645 <= grp_fu_5807_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v29_18_reg_1650 <= grp_fu_5807_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v29_19_reg_1655 <= grp_fu_5807_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v29_20_reg_1660 <= grp_fu_5807_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v29_21_reg_1665 <= grp_fu_5811_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v29_22_reg_1670 <= grp_fu_5811_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v29_23_reg_1675 <= grp_fu_5811_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v29_24_reg_1680 <= grp_fu_5811_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v29_reg_1685 <= grp_fu_5811_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln66_reg_1140 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter16 == 1'b1) & (icmp_ln66_reg_1140_pp0_iter15_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_phi_mul_load = phi_mul_fu_130;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v23_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_v23_1 = v23_fu_134;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_468_p0 = v29_19_reg_1655;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_468_p0 = v29_18_reg_1650;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_468_p0 = v29_17_reg_1645;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_468_p0 = v29_16_reg_1640;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_468_p0 = v29_14_reg_1630;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_468_p0 = v29_13_reg_1430;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_468_p0 = v27_reg_1260;
    end else begin
        grp_fu_468_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_468_p1 = v27_7_reg_1600_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_468_p1 = v27_6_reg_1595_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_468_p1 = v27_5_reg_1590_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_468_p1 = v27_4_reg_1585_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_468_p1 = v27_2_reg_1570_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_468_p1 = v27_1_reg_1565;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_468_p1 = 64'd0;
    end else begin
        grp_fu_468_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_473_p0 = v29_24_reg_1680;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_473_p0 = v29_23_reg_1675;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_473_p0 = v29_22_reg_1670;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_473_p0 = v29_21_reg_1665;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_473_p0 = v29_20_reg_1660;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_473_p0 = v29_15_reg_1635;
    end else begin
        grp_fu_473_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_473_p1 = v27_12_reg_1625_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_473_p1 = v27_11_reg_1620_pp0_iter13_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_473_p1 = v27_10_reg_1615_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_473_p1 = v27_9_reg_1610_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_473_p1 = v27_8_reg_1605_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_473_p1 = v27_3_reg_1580_pp0_iter5_reg;
    end else begin
        grp_fu_473_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_477_p0 = v25_12_fu_1044_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_477_p0 = v25_10_fu_1029_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_477_p0 = v25_8_fu_1002_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_477_p0 = v25_6_fu_969_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_477_p0 = v25_3_fu_914_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_477_p0 = v25_1_fu_774_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_477_p0 = v25_fu_613_p1;
    end else begin
        grp_fu_477_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_477_p1 = v26_12;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_477_p1 = v26_10;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_477_p1 = v26_8;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_477_p1 = v26_6;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_477_p1 = v26_3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_477_p1 = v26_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_477_p1 = v26;
    end else begin
        grp_fu_477_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_481_p0 = v25_11_fu_1033_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_481_p0 = v25_9_fu_1006_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_481_p0 = v25_7_fu_973_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_481_p0 = v25_5_fu_940_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_481_p0 = v25_4_fu_918_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_481_p0 = v25_2_fu_778_p1;
        end else begin
            grp_fu_481_p0 = 'bx;
        end
    end else begin
        grp_fu_481_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_481_p1 = v26_11;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_481_p1 = v26_9;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_481_p1 = v26_7;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_481_p1 = v26_5;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_481_p1 = v26_4;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_481_p1 = v26_2;
        end else begin
            grp_fu_481_p1 = 'bx;
        end
    end else begin
        grp_fu_481_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v0_0_address0_local = zext_ln69_13_fu_1024_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_0_address0_local = zext_ln69_12_fu_996_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_0_address0_local = zext_ln69_10_fu_963_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_0_address0_local = zext_ln69_8_fu_934_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_0_address0_local = zext_ln69_6_fu_820_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_0_address0_local = zext_ln69_5_fu_768_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_0_address0_local = zext_ln69_2_fu_712_p1;
    end else begin
        v0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_0_address1_local = zext_ln69_11_fu_991_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_0_address1_local = zext_ln69_9_fu_958_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_0_address1_local = zext_ln69_7_fu_929_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_0_address1_local = zext_ln69_4_fu_762_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_0_address1_local = zext_ln69_3_fu_718_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_0_address1_local = zext_ln69_1_fu_548_p1;
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
        v0_1_address0_local = zext_ln69_13_fu_1024_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_1_address0_local = zext_ln69_12_fu_996_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_1_address0_local = zext_ln69_10_fu_963_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_1_address0_local = zext_ln69_8_fu_934_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_1_address0_local = zext_ln69_6_fu_820_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_1_address0_local = zext_ln69_5_fu_768_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_1_address0_local = zext_ln69_2_fu_712_p1;
    end else begin
        v0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_1_address1_local = zext_ln69_11_fu_991_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_1_address1_local = zext_ln69_9_fu_958_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_1_address1_local = zext_ln69_7_fu_929_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_1_address1_local = zext_ln69_4_fu_762_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_1_address1_local = zext_ln69_3_fu_718_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_1_address1_local = zext_ln69_1_fu_548_p1;
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
        v20_1_ce0_local = 1'b1;
    end else begin
        v20_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (trunc_ln66_1_reg_1171_pp0_iter16_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v20_1_we0_local = 1'b1;
    end else begin
        v20_1_we0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (trunc_ln66_1_reg_1171_pp0_iter16_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
assign add_ln66_fu_683_p2 = (v23_1_reg_1132 + 7'd1);
assign add_ln69_12_fu_724_p2 = ($signed(phi_mul_load_reg_1144_pp0_iter1_reg) + $signed(10'd609));
assign add_ln69_13_fu_743_p2 = ($signed(phi_mul_load_reg_1144_pp0_iter1_reg) + $signed(10'd610));
assign add_ln69_14_fu_782_p2 = ($signed(phi_mul_load_reg_1144_pp0_iter2_reg) + $signed(10'd611));
assign add_ln69_15_fu_801_p2 = ($signed(phi_mul_load_reg_1144_pp0_iter2_reg) + $signed(10'd612));
assign add_ln69_16_fu_826_p2 = ($signed(phi_mul_load_reg_1144_pp0_iter2_reg) + $signed(10'd613));
assign add_ln69_17_fu_837_p2 = ($signed(phi_mul_load_reg_1144_pp0_iter2_reg) + $signed(10'd614));
assign add_ln69_18_fu_848_p2 = ($signed(phi_mul_load_reg_1144_pp0_iter2_reg) + $signed(10'd615));
assign add_ln69_19_fu_859_p2 = ($signed(phi_mul_load_reg_1144_pp0_iter2_reg) + $signed(10'd616));
assign add_ln69_20_fu_870_p2 = ($signed(phi_mul_load_reg_1144_pp0_iter2_reg) + $signed(10'd617));
assign add_ln69_21_fu_881_p2 = ($signed(phi_mul_load_reg_1144_pp0_iter2_reg) + $signed(10'd618));
assign add_ln69_22_fu_892_p2 = ($signed(phi_mul_load_reg_1144_pp0_iter2_reg) + $signed(10'd619));
assign add_ln69_23_fu_903_p2 = ($signed(phi_mul_load_reg_1144_pp0_iter2_reg) + $signed(10'd620));
assign add_ln69_24_fu_697_p2 = (phi_mul_load_reg_1144 + 10'd13);
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
assign grp_fu_517_p0 = (ap_sig_allocacmp_phi_mul_load + 10'd1);
assign grp_fu_529_p0 = (ap_sig_allocacmp_phi_mul_load + 10'd2);
assign grp_fu_559_p0 = (phi_mul_load_reg_1144 + 10'd3);
assign grp_fu_570_p0 = (phi_mul_load_reg_1144 + 10'd4);
assign grp_fu_5807_p_ce = 1'b1;
assign grp_fu_5807_p_din0 = grp_fu_468_p0;
assign grp_fu_5807_p_din1 = grp_fu_468_p1;
assign grp_fu_5807_p_opcode = 2'd0;
assign grp_fu_5811_p_ce = 1'b1;
assign grp_fu_5811_p_din0 = grp_fu_473_p0;
assign grp_fu_5811_p_din1 = grp_fu_473_p1;
assign grp_fu_5811_p_opcode = 2'd0;
assign grp_fu_5815_p_ce = 1'b1;
assign grp_fu_5815_p_din0 = grp_fu_477_p0;
assign grp_fu_5815_p_din1 = grp_fu_477_p1;
assign grp_fu_5819_p_ce = 1'b1;
assign grp_fu_5819_p_din0 = grp_fu_481_p0;
assign grp_fu_5819_p_din1 = grp_fu_481_p1;
assign grp_fu_596_p0 = (phi_mul_load_reg_1144 + 10'd5);
assign grp_fu_607_p0 = (phi_mul_load_reg_1144 + 10'd6);
assign grp_fu_622_p0 = (phi_mul_load_reg_1144 + 10'd7);
assign grp_fu_633_p0 = (phi_mul_load_reg_1144 + 10'd8);
assign grp_fu_644_p0 = (phi_mul_load_reg_1144 + 10'd9);
assign grp_fu_655_p0 = (phi_mul_load_reg_1144 + 10'd10);
assign grp_fu_666_p0 = (phi_mul_load_reg_1144 + 10'd11);
assign grp_fu_677_p0 = (phi_mul_load_reg_1144 + 10'd12);
assign icmp_ln66_fu_498_p2 = ((ap_sig_allocacmp_v23_1 == 7'd64) ? 1'b1 : 1'b0);
assign icmp_ln69_10_fu_897_p2 = ((add_ln69_22_fu_892_p2 < 10'd416) ? 1'b1 : 1'b0);
assign icmp_ln69_11_fu_908_p2 = ((add_ln69_23_fu_903_p2 < 10'd416) ? 1'b1 : 1'b0);
assign icmp_ln69_1_fu_748_p2 = ((add_ln69_13_fu_743_p2 < 10'd416) ? 1'b1 : 1'b0);
assign icmp_ln69_2_fu_787_p2 = ((add_ln69_14_fu_782_p2 < 10'd416) ? 1'b1 : 1'b0);
assign icmp_ln69_3_fu_806_p2 = ((add_ln69_15_fu_801_p2 < 10'd416) ? 1'b1 : 1'b0);
assign icmp_ln69_4_fu_831_p2 = ((add_ln69_16_fu_826_p2 < 10'd416) ? 1'b1 : 1'b0);
assign icmp_ln69_5_fu_842_p2 = ((add_ln69_17_fu_837_p2 < 10'd416) ? 1'b1 : 1'b0);
assign icmp_ln69_6_fu_853_p2 = ((add_ln69_18_fu_848_p2 < 10'd416) ? 1'b1 : 1'b0);
assign icmp_ln69_7_fu_864_p2 = ((add_ln69_19_fu_859_p2 < 10'd416) ? 1'b1 : 1'b0);
assign icmp_ln69_8_fu_875_p2 = ((add_ln69_20_fu_870_p2 < 10'd416) ? 1'b1 : 1'b0);
assign icmp_ln69_9_fu_886_p2 = ((add_ln69_21_fu_881_p2 < 10'd416) ? 1'b1 : 1'b0);
assign icmp_ln69_fu_729_p2 = ((add_ln69_12_fu_724_p2 < 10'd416) ? 1'b1 : 1'b0);
assign mul_ln69_fu_542_p0 = mul_ln69_fu_542_p00;
assign mul_ln69_fu_542_p00 = trunc_ln66_fu_535_p1;
assign mul_ln69_fu_542_p1 = 9'd13;
assign select_ln69_10_fu_1010_p3 = ((icmp_ln69_9_reg_1375[0:0] == 1'b1) ? v0_1_q1 : v0_0_q1);
assign select_ln69_11_fu_1017_p3 = ((icmp_ln69_10_reg_1380[0:0] == 1'b1) ? v0_1_q0 : v0_0_q0);
assign select_ln69_12_fu_1037_p3 = ((icmp_ln69_11_reg_1385[0:0] == 1'b1) ? v0_1_q0 : v0_0_q0);
assign select_ln69_1_fu_735_p3 = ((icmp_ln69_fu_729_p2[0:0] == 1'b1) ? v0_1_q0 : v0_0_q0);
assign select_ln69_2_fu_754_p3 = ((icmp_ln69_1_fu_748_p2[0:0] == 1'b1) ? v0_1_q1 : v0_0_q1);
assign select_ln69_3_fu_793_p3 = ((icmp_ln69_2_fu_787_p2[0:0] == 1'b1) ? v0_1_q1 : v0_0_q1);
assign select_ln69_4_fu_812_p3 = ((icmp_ln69_3_fu_806_p2[0:0] == 1'b1) ? v0_1_q0 : v0_0_q0);
assign select_ln69_5_fu_922_p3 = ((icmp_ln69_4_reg_1345[0:0] == 1'b1) ? v0_1_q0 : v0_0_q0);
assign select_ln69_6_fu_944_p3 = ((icmp_ln69_5_reg_1355[0:0] == 1'b1) ? v0_1_q1 : v0_0_q1);
assign select_ln69_7_fu_951_p3 = ((icmp_ln69_6_reg_1360[0:0] == 1'b1) ? v0_1_q0 : v0_0_q0);
assign select_ln69_8_fu_977_p3 = ((icmp_ln69_7_reg_1365[0:0] == 1'b1) ? v0_1_q1 : v0_0_q1);
assign select_ln69_9_fu_984_p3 = ((icmp_ln69_8_reg_1370[0:0] == 1'b1) ? v0_1_q0 : v0_0_q0);
assign select_ln69_fu_583_p3 = ((tmp_fu_576_p3[0:0] == 1'b1) ? v0_1_q1 : v0_0_q1);
assign tmp_fu_576_p3 = v23_1_reg_1132[32'd5];
assign trunc_ln66_1_fu_507_p1 = ap_sig_allocacmp_v23_1[0:0];
assign trunc_ln66_fu_535_p1 = v23_1_reg_1132[4:0];
assign v0_0_address0 = v0_0_address0_local;
assign v0_0_address1 = v0_0_address1_local;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_0_ce1 = v0_0_ce1_local;
assign v0_1_address0 = v0_1_address0_local;
assign v0_1_address1 = v0_1_address1_local;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_1_ce1 = v0_1_ce1_local;
assign v20_1_address0 = zext_ln66_fu_1048_p1;
assign v20_1_ce0 = v20_1_ce0_local;
assign v20_1_d0 = v29_reg_1685;
assign v20_1_we0 = v20_1_we0_local;
assign v20_address0 = zext_ln66_fu_1048_p1;
assign v20_ce0 = v20_ce0_local;
assign v20_d0 = v29_reg_1685;
assign v20_we0 = v20_we0_local;
assign v25_10_fu_1029_p1 = select_ln69_10_reg_1530;
assign v25_11_fu_1033_p1 = select_ln69_11_reg_1535;
assign v25_12_fu_1044_p1 = select_ln69_12_reg_1560;
assign v25_1_fu_774_p1 = select_ln69_1_reg_1285;
assign v25_2_fu_778_p1 = select_ln69_2_reg_1290;
assign v25_3_fu_914_p1 = select_ln69_3_reg_1325;
assign v25_4_fu_918_p1 = select_ln69_4_reg_1330;
assign v25_5_fu_940_p1 = select_ln69_5_reg_1400;
assign v25_6_fu_969_p1 = select_ln69_6_reg_1440;
assign v25_7_fu_973_p1 = select_ln69_7_reg_1445;
assign v25_8_fu_1002_p1 = select_ln69_8_reg_1485;
assign v25_9_fu_1006_p1 = select_ln69_9_reg_1490;
assign v25_fu_613_p1 = select_ln69_reg_1205;
assign zext_ln66_fu_1048_p1 = lshr_ln1_reg_1255_pp0_iter16_reg;
assign zext_ln69_10_fu_963_p1 = grp_fu_644_p2;
assign zext_ln69_11_fu_991_p1 = urem_ln69_9_reg_1470;
assign zext_ln69_12_fu_996_p1 = grp_fu_666_p2;
assign zext_ln69_13_fu_1024_p1 = urem_ln69_11_reg_1515;
assign zext_ln69_1_fu_548_p1 = mul_ln69_fu_542_p2;
assign zext_ln69_2_fu_712_p1 = grp_fu_517_p2;
assign zext_ln69_3_fu_718_p1 = grp_fu_529_p2;
assign zext_ln69_4_fu_762_p1 = grp_fu_559_p2;
assign zext_ln69_5_fu_768_p1 = grp_fu_570_p2;
assign zext_ln69_6_fu_820_p1 = grp_fu_596_p2;
assign zext_ln69_7_fu_929_p1 = urem_ln69_5_reg_1350;
assign zext_ln69_8_fu_934_p1 = grp_fu_622_p2;
assign zext_ln69_9_fu_958_p1 = urem_ln69_7_reg_1425;
endmodule 