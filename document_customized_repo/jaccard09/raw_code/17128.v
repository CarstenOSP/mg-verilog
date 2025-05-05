module backprop_get_oracle_activations2_43_44_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights3_0_address0,weights3_0_ce0,weights3_0_q0,weights3_0_address1,weights3_0_ce1,weights3_0_q1,weights3_1_address0,weights3_1_ce0,weights3_1_q0,weights3_1_address1,weights3_1_ce1,weights3_1_q1,output_differences_0_0_val,output_differences_0_1_val,output_differences_0_2_val,oracle_activations_0_address0,oracle_activations_0_ce0,oracle_activations_0_we0,oracle_activations_0_d0,oracle_activations_1_address0,oracle_activations_1_ce0,oracle_activations_1_we0,oracle_activations_1_d0,dactivations_0_address0,dactivations_0_ce0,dactivations_0_q0,dactivations_0_address1,dactivations_0_ce1,dactivations_0_q1,dactivations_1_address0,dactivations_1_ce0,dactivations_1_q0,dactivations_1_address1,dactivations_1_ce1,dactivations_1_q1,grp_fu_3145_p_din0,grp_fu_3145_p_din1,grp_fu_3145_p_opcode,grp_fu_3145_p_dout0,grp_fu_3145_p_ce,grp_fu_3149_p_din0,grp_fu_3149_p_din1,grp_fu_3149_p_opcode,grp_fu_3149_p_dout0,grp_fu_3149_p_ce,grp_fu_3153_p_din0,grp_fu_3153_p_din1,grp_fu_3153_p_opcode,grp_fu_3153_p_dout0,grp_fu_3153_p_ce,grp_fu_3157_p_din0,grp_fu_3157_p_din1,grp_fu_3157_p_opcode,grp_fu_3157_p_dout0,grp_fu_3157_p_ce,grp_fu_3181_p_din0,grp_fu_3181_p_din1,grp_fu_3181_p_dout0,grp_fu_3181_p_ce,grp_fu_3185_p_din0,grp_fu_3185_p_din1,grp_fu_3185_p_dout0,grp_fu_3185_p_ce,grp_fu_3189_p_din0,grp_fu_3189_p_din1,grp_fu_3189_p_dout0,grp_fu_3189_p_ce,grp_fu_3193_p_din0,grp_fu_3193_p_din1,grp_fu_3193_p_dout0,grp_fu_3193_p_ce,grp_fu_3197_p_din0,grp_fu_3197_p_din1,grp_fu_3197_p_dout0,grp_fu_3197_p_ce,grp_fu_3201_p_din0,grp_fu_3201_p_din1,grp_fu_3201_p_dout0,grp_fu_3201_p_ce); 
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
output  [6:0] weights3_0_address0;
output   weights3_0_ce0;
input  [63:0] weights3_0_q0;
output  [6:0] weights3_0_address1;
output   weights3_0_ce1;
input  [63:0] weights3_0_q1;
output  [6:0] weights3_1_address0;
output   weights3_1_ce0;
input  [63:0] weights3_1_q0;
output  [6:0] weights3_1_address1;
output   weights3_1_ce1;
input  [63:0] weights3_1_q1;
input  [63:0] output_differences_0_0_val;
input  [63:0] output_differences_0_1_val;
input  [63:0] output_differences_0_2_val;
output  [4:0] oracle_activations_0_address0;
output   oracle_activations_0_ce0;
output   oracle_activations_0_we0;
output  [63:0] oracle_activations_0_d0;
output  [4:0] oracle_activations_1_address0;
output   oracle_activations_1_ce0;
output   oracle_activations_1_we0;
output  [63:0] oracle_activations_1_d0;
output  [4:0] dactivations_0_address0;
output   dactivations_0_ce0;
input  [63:0] dactivations_0_q0;
output  [4:0] dactivations_0_address1;
output   dactivations_0_ce1;
input  [63:0] dactivations_0_q1;
output  [4:0] dactivations_1_address0;
output   dactivations_1_ce0;
input  [63:0] dactivations_1_q0;
output  [4:0] dactivations_1_address1;
output   dactivations_1_ce1;
input  [63:0] dactivations_1_q1;
output  [63:0] grp_fu_3145_p_din0;
output  [63:0] grp_fu_3145_p_din1;
output  [0:0] grp_fu_3145_p_opcode;
input  [63:0] grp_fu_3145_p_dout0;
output   grp_fu_3145_p_ce;
output  [63:0] grp_fu_3149_p_din0;
output  [63:0] grp_fu_3149_p_din1;
output  [0:0] grp_fu_3149_p_opcode;
input  [63:0] grp_fu_3149_p_dout0;
output   grp_fu_3149_p_ce;
output  [63:0] grp_fu_3153_p_din0;
output  [63:0] grp_fu_3153_p_din1;
output  [0:0] grp_fu_3153_p_opcode;
input  [63:0] grp_fu_3153_p_dout0;
output   grp_fu_3153_p_ce;
output  [63:0] grp_fu_3157_p_din0;
output  [63:0] grp_fu_3157_p_din1;
output  [0:0] grp_fu_3157_p_opcode;
input  [63:0] grp_fu_3157_p_dout0;
output   grp_fu_3157_p_ce;
output  [63:0] grp_fu_3181_p_din0;
output  [63:0] grp_fu_3181_p_din1;
input  [63:0] grp_fu_3181_p_dout0;
output   grp_fu_3181_p_ce;
output  [63:0] grp_fu_3185_p_din0;
output  [63:0] grp_fu_3185_p_din1;
input  [63:0] grp_fu_3185_p_dout0;
output   grp_fu_3185_p_ce;
output  [63:0] grp_fu_3189_p_din0;
output  [63:0] grp_fu_3189_p_din1;
input  [63:0] grp_fu_3189_p_dout0;
output   grp_fu_3189_p_ce;
output  [63:0] grp_fu_3193_p_din0;
output  [63:0] grp_fu_3193_p_din1;
input  [63:0] grp_fu_3193_p_dout0;
output   grp_fu_3193_p_ce;
output  [63:0] grp_fu_3197_p_din0;
output  [63:0] grp_fu_3197_p_din1;
input  [63:0] grp_fu_3197_p_dout0;
output   grp_fu_3197_p_ce;
output  [63:0] grp_fu_3201_p_din0;
output  [63:0] grp_fu_3201_p_din1;
input  [63:0] grp_fu_3201_p_dout0;
output   grp_fu_3201_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] tmp_67_reg_1192;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_550;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_block_pp0_stage5_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_554;
reg   [63:0] reg_558;
reg   [63:0] reg_562;
reg   [63:0] reg_566;
reg   [63:0] reg_571;
reg   [6:0] i_8_reg_1185;
reg   [0:0] tmp_67_reg_1192_pp0_iter1_reg;
reg   [0:0] tmp_67_reg_1192_pp0_iter2_reg;
reg   [0:0] tmp_67_reg_1192_pp0_iter3_reg;
reg   [0:0] tmp_67_reg_1192_pp0_iter4_reg;
reg   [0:0] tmp_67_reg_1192_pp0_iter5_reg;
reg   [0:0] tmp_67_reg_1192_pp0_iter6_reg;
wire   [63:0] zext_ln81_fu_606_p1;
reg   [63:0] zext_ln81_reg_1196;
reg   [63:0] zext_ln81_reg_1196_pp0_iter1_reg;
reg   [63:0] zext_ln81_reg_1196_pp0_iter2_reg;
reg   [63:0] zext_ln81_reg_1196_pp0_iter3_reg;
reg   [63:0] zext_ln81_reg_1196_pp0_iter4_reg;
reg   [63:0] zext_ln81_reg_1196_pp0_iter5_reg;
reg   [63:0] zext_ln81_reg_1196_pp0_iter6_reg;
reg   [5:0] tmp_reg_1212;
wire   [7:0] empty_fu_672_p2;
reg   [7:0] empty_reg_1222;
wire   [6:0] lshr_ln1_fu_678_p4;
reg   [6:0] lshr_ln1_reg_1233;
wire   [63:0] zext_ln83_1_fu_711_p1;
reg   [63:0] zext_ln83_1_reg_1243;
reg   [63:0] zext_ln83_1_reg_1243_pp0_iter1_reg;
reg   [63:0] zext_ln83_1_reg_1243_pp0_iter2_reg;
reg   [63:0] zext_ln83_1_reg_1243_pp0_iter3_reg;
reg   [63:0] zext_ln83_1_reg_1243_pp0_iter4_reg;
reg   [63:0] zext_ln83_1_reg_1243_pp0_iter5_reg;
reg   [63:0] zext_ln83_1_reg_1243_pp0_iter6_reg;
wire   [6:0] or_ln85_1_fu_727_p3;
reg   [6:0] or_ln85_1_reg_1249;
wire   [63:0] zext_ln85_4_fu_735_p1;
reg   [63:0] zext_ln85_4_reg_1258;
reg   [63:0] dactivations_0_load_reg_1283;
reg   [63:0] dactivations_0_load_reg_1283_pp0_iter1_reg;
reg   [63:0] dactivations_0_load_reg_1283_pp0_iter2_reg;
reg   [63:0] dactivations_0_load_reg_1283_pp0_iter3_reg;
reg   [63:0] dactivations_0_load_reg_1283_pp0_iter4_reg;
reg   [63:0] dactivations_0_load_reg_1283_pp0_iter5_reg;
wire   [6:0] lshr_ln85_2_fu_745_p4;
reg   [6:0] lshr_ln85_2_reg_1288;
wire   [63:0] zext_ln83_2_fu_786_p1;
reg   [63:0] zext_ln83_2_reg_1293;
reg   [63:0] zext_ln83_2_reg_1293_pp0_iter1_reg;
reg   [63:0] zext_ln83_2_reg_1293_pp0_iter2_reg;
reg   [63:0] zext_ln83_2_reg_1293_pp0_iter3_reg;
reg   [63:0] zext_ln83_2_reg_1293_pp0_iter4_reg;
reg   [63:0] zext_ln83_2_reg_1293_pp0_iter5_reg;
reg   [63:0] zext_ln83_2_reg_1293_pp0_iter6_reg;
wire   [63:0] zext_ln85_7_fu_797_p1;
reg   [63:0] zext_ln85_7_reg_1299;
wire   [6:0] lshr_ln85_4_fu_807_p4;
reg   [6:0] lshr_ln85_4_reg_1309;
wire   [63:0] zext_ln83_3_fu_830_p1;
reg   [63:0] zext_ln83_3_reg_1319;
reg   [63:0] zext_ln83_3_reg_1319_pp0_iter1_reg;
reg   [63:0] zext_ln83_3_reg_1319_pp0_iter2_reg;
reg   [63:0] zext_ln83_3_reg_1319_pp0_iter3_reg;
reg   [63:0] zext_ln83_3_reg_1319_pp0_iter4_reg;
reg   [63:0] zext_ln83_3_reg_1319_pp0_iter5_reg;
reg   [63:0] zext_ln83_3_reg_1319_pp0_iter6_reg;
wire   [63:0] zext_ln85_10_fu_841_p1;
reg   [63:0] zext_ln85_10_reg_1325;
reg   [63:0] dactivations_1_load_reg_1360;
reg   [63:0] dactivations_1_load_reg_1360_pp0_iter1_reg;
reg   [63:0] dactivations_1_load_reg_1360_pp0_iter2_reg;
reg   [63:0] dactivations_1_load_reg_1360_pp0_iter3_reg;
reg   [63:0] dactivations_1_load_reg_1360_pp0_iter4_reg;
reg   [63:0] dactivations_1_load_reg_1360_pp0_iter5_reg;
reg   [63:0] dactivations_0_load_1_reg_1365;
reg   [63:0] dactivations_0_load_1_reg_1365_pp0_iter1_reg;
reg   [63:0] dactivations_0_load_1_reg_1365_pp0_iter2_reg;
reg   [63:0] dactivations_0_load_1_reg_1365_pp0_iter3_reg;
reg   [63:0] dactivations_0_load_1_reg_1365_pp0_iter4_reg;
reg   [63:0] dactivations_0_load_1_reg_1365_pp0_iter5_reg;
reg   [63:0] dactivations_1_load_1_reg_1370;
reg   [63:0] dactivations_1_load_1_reg_1370_pp0_iter1_reg;
reg   [63:0] dactivations_1_load_1_reg_1370_pp0_iter2_reg;
reg   [63:0] dactivations_1_load_1_reg_1370_pp0_iter3_reg;
reg   [63:0] dactivations_1_load_1_reg_1370_pp0_iter4_reg;
reg   [63:0] dactivations_1_load_1_reg_1370_pp0_iter5_reg;
wire   [63:0] bitcast_ln85_fu_846_p1;
wire   [63:0] bitcast_ln85_1_fu_851_p1;
wire   [6:0] lshr_ln85_6_fu_901_p4;
reg   [6:0] lshr_ln85_6_reg_1385;
wire   [63:0] bitcast_ln85_3_fu_916_p1;
wire   [63:0] bitcast_ln85_6_fu_921_p1;
reg   [63:0] dactivations_0_load_2_reg_1420;
reg   [63:0] dactivations_0_load_2_reg_1420_pp0_iter1_reg;
reg   [63:0] dactivations_0_load_2_reg_1420_pp0_iter2_reg;
reg   [63:0] dactivations_0_load_2_reg_1420_pp0_iter3_reg;
reg   [63:0] dactivations_0_load_2_reg_1420_pp0_iter4_reg;
reg   [63:0] dactivations_0_load_2_reg_1420_pp0_iter5_reg;
reg   [63:0] dactivations_1_load_2_reg_1425;
reg   [63:0] dactivations_1_load_2_reg_1425_pp0_iter1_reg;
reg   [63:0] dactivations_1_load_2_reg_1425_pp0_iter2_reg;
reg   [63:0] dactivations_1_load_2_reg_1425_pp0_iter3_reg;
reg   [63:0] dactivations_1_load_2_reg_1425_pp0_iter4_reg;
reg   [63:0] dactivations_1_load_2_reg_1425_pp0_iter5_reg;
reg   [63:0] dactivations_0_load_3_reg_1430;
reg   [63:0] dactivations_0_load_3_reg_1430_pp0_iter1_reg;
reg   [63:0] dactivations_0_load_3_reg_1430_pp0_iter2_reg;
reg   [63:0] dactivations_0_load_3_reg_1430_pp0_iter3_reg;
reg   [63:0] dactivations_0_load_3_reg_1430_pp0_iter4_reg;
reg   [63:0] dactivations_0_load_3_reg_1430_pp0_iter5_reg;
reg   [63:0] dactivations_1_load_3_reg_1435;
reg   [63:0] dactivations_1_load_3_reg_1435_pp0_iter1_reg;
reg   [63:0] dactivations_1_load_3_reg_1435_pp0_iter2_reg;
reg   [63:0] dactivations_1_load_3_reg_1435_pp0_iter3_reg;
reg   [63:0] dactivations_1_load_3_reg_1435_pp0_iter4_reg;
reg   [63:0] dactivations_1_load_3_reg_1435_pp0_iter5_reg;
wire   [63:0] bitcast_ln85_9_fu_966_p1;
wire   [63:0] bitcast_ln85_12_fu_971_p1;
wire   [63:0] bitcast_ln85_15_fu_976_p1;
wire   [63:0] bitcast_ln85_18_fu_981_p1;
wire   [6:0] add_ln85_6_fu_1028_p2;
reg   [6:0] add_ln85_6_reg_1485;
wire   [6:0] add_ln85_8_fu_1033_p2;
reg   [6:0] add_ln85_8_reg_1490;
wire   [6:0] add_ln85_10_fu_1038_p2;
reg   [6:0] add_ln85_10_reg_1495;
wire   [6:0] add_ln85_12_fu_1043_p2;
reg   [6:0] add_ln85_12_reg_1500;
wire   [63:0] bitcast_ln85_4_fu_1048_p1;
wire   [63:0] bitcast_ln85_7_fu_1053_p1;
wire   [63:0] bitcast_ln85_10_fu_1058_p1;
wire   [63:0] bitcast_ln85_21_fu_1063_p1;
wire   [63:0] bitcast_ln85_13_fu_1084_p1;
wire   [63:0] bitcast_ln85_16_fu_1089_p1;
wire   [63:0] bitcast_ln85_19_fu_1094_p1;
wire   [63:0] bitcast_ln85_22_fu_1099_p1;
wire   [63:0] bitcast_ln85_2_fu_1114_p1;
wire   [63:0] bitcast_ln85_5_fu_1119_p1;
wire   [63:0] bitcast_ln85_8_fu_1124_p1;
wire   [63:0] bitcast_ln85_11_fu_1129_p1;
wire   [63:0] bitcast_ln85_14_fu_1134_p1;
wire   [63:0] bitcast_ln85_17_fu_1139_p1;
wire   [63:0] bitcast_ln85_20_fu_1144_p1;
wire   [63:0] bitcast_ln85_23_fu_1149_p1;
reg   [63:0] mul8_reg_1620;
reg   [63:0] mul8_s_reg_1625;
reg   [63:0] mul8_s_reg_1625_pp0_iter2_reg;
reg   [63:0] mul8_1_reg_1630;
reg   [63:0] mul8_2_reg_1635;
reg   [63:0] mul8_3_reg_1640;
reg   [63:0] mul8_4_reg_1645;
reg   [63:0] mul8_5_reg_1650;
reg   [63:0] mul8_6_reg_1655;
reg   [63:0] mul8_1_1_reg_1660;
reg   [63:0] mul8_1_1_reg_1660_pp0_iter2_reg;
reg   [63:0] mul8_2_1_reg_1665;
reg   [63:0] mul8_2_1_reg_1665_pp0_iter2_reg;
reg   [63:0] mul8_3_1_reg_1670;
reg   [63:0] mul8_3_1_reg_1670_pp0_iter2_reg;
reg   [63:0] mul8_7_reg_1675;
reg   [63:0] mul8_4_1_reg_1680;
reg   [63:0] mul8_4_1_reg_1680_pp0_iter2_reg;
reg   [63:0] mul8_5_1_reg_1685;
reg   [63:0] mul8_5_1_reg_1685_pp0_iter2_reg;
reg   [63:0] mul8_6_1_reg_1690;
reg   [63:0] mul8_6_1_reg_1690_pp0_iter2_reg;
reg   [63:0] mul8_7_1_reg_1695;
reg   [63:0] mul8_7_1_reg_1695_pp0_iter2_reg;
reg   [63:0] mul8_19_reg_1700;
reg   [63:0] mul8_19_reg_1700_pp0_iter3_reg;
reg   [63:0] mul8_19_reg_1700_pp0_iter4_reg;
reg   [63:0] mul8_1_2_reg_1705;
reg   [63:0] mul8_1_2_reg_1705_pp0_iter3_reg;
reg   [63:0] mul8_1_2_reg_1705_pp0_iter4_reg;
reg   [63:0] mul8_2_2_reg_1710;
reg   [63:0] mul8_2_2_reg_1710_pp0_iter3_reg;
reg   [63:0] mul8_2_2_reg_1710_pp0_iter4_reg;
reg   [63:0] mul8_3_2_reg_1715;
reg   [63:0] mul8_3_2_reg_1715_pp0_iter3_reg;
reg   [63:0] mul8_3_2_reg_1715_pp0_iter4_reg;
reg   [63:0] mul8_4_2_reg_1720;
reg   [63:0] mul8_4_2_reg_1720_pp0_iter3_reg;
reg   [63:0] mul8_4_2_reg_1720_pp0_iter4_reg;
reg   [63:0] mul8_5_2_reg_1725;
reg   [63:0] mul8_5_2_reg_1725_pp0_iter3_reg;
reg   [63:0] mul8_5_2_reg_1725_pp0_iter4_reg;
reg   [63:0] mul8_6_2_reg_1730;
reg   [63:0] mul8_6_2_reg_1730_pp0_iter3_reg;
reg   [63:0] mul8_6_2_reg_1730_pp0_iter4_reg;
reg   [63:0] mul8_7_2_reg_1735;
reg   [63:0] mul8_7_2_reg_1735_pp0_iter3_reg;
reg   [63:0] mul8_7_2_reg_1735_pp0_iter4_reg;
reg   [63:0] add_reg_1740;
reg   [63:0] add11_1_reg_1745;
reg   [63:0] add11_2_reg_1750;
reg   [63:0] add11_3_reg_1755;
reg   [63:0] add11_4_reg_1760;
reg   [63:0] add11_5_reg_1765;
reg   [63:0] add11_6_reg_1770;
reg   [63:0] add11_7_reg_1775;
reg   [63:0] add11_s_reg_1780;
reg   [63:0] add11_1_1_reg_1785;
reg   [63:0] add11_2_1_reg_1790;
reg   [63:0] add11_3_1_reg_1795;
reg   [63:0] add11_4_1_reg_1800;
reg   [63:0] add11_5_1_reg_1805;
reg   [63:0] add11_6_1_reg_1810;
reg   [63:0] add11_7_1_reg_1815;
reg   [63:0] add11_19_reg_1820;
reg   [63:0] add11_1_2_reg_1825;
reg   [63:0] add11_2_2_reg_1830;
reg   [63:0] add11_3_2_reg_1835;
reg   [63:0] add11_4_2_reg_1840;
reg   [63:0] add11_5_2_reg_1845;
reg   [63:0] add11_6_2_reg_1850;
reg   [63:0] add11_7_2_reg_1855;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln85_fu_636_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln85_2_fu_688_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln85_5_fu_755_p1;
wire   [63:0] zext_ln85_8_fu_817_p1;
wire   [63:0] zext_ln85_3_fu_871_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln85_6_fu_891_p1;
wire   [63:0] zext_ln85_11_fu_911_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln85_9_fu_941_p1;
wire   [63:0] zext_ln85_12_fu_961_p1;
wire   [63:0] zext_ln85_1_fu_993_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln87_fu_1003_p1;
wire   [63:0] zext_ln87_1_fu_1013_p1;
wire   [63:0] zext_ln87_2_fu_1023_p1;
wire   [63:0] zext_ln87_3_fu_1068_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln87_4_fu_1072_p1;
wire   [63:0] zext_ln87_5_fu_1076_p1;
wire   [63:0] zext_ln85_13_fu_1080_p1;
reg   [6:0] i_fu_118;
wire   [6:0] add_ln82_fu_1104_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_8;
reg    weights3_0_ce1_local;
reg   [6:0] weights3_0_address1_local;
reg    weights3_0_ce0_local;
reg   [6:0] weights3_0_address0_local;
reg    weights3_1_ce1_local;
reg   [6:0] weights3_1_address1_local;
reg    weights3_1_ce0_local;
reg   [6:0] weights3_1_address0_local;
reg    dactivations_0_ce1_local;
reg   [4:0] dactivations_0_address1_local;
reg    dactivations_0_ce0_local;
reg   [4:0] dactivations_0_address0_local;
reg    dactivations_1_ce1_local;
reg   [4:0] dactivations_1_address1_local;
reg    dactivations_1_ce0_local;
reg   [4:0] dactivations_1_address0_local;
reg    oracle_activations_0_we0_local;
reg    oracle_activations_0_ce0_local;
reg   [4:0] oracle_activations_0_address0_local;
reg    oracle_activations_1_we0_local;
reg    oracle_activations_1_ce0_local;
reg   [4:0] oracle_activations_1_address0_local;
reg   [63:0] grp_fu_506_p0;
reg   [63:0] grp_fu_506_p1;
reg   [63:0] grp_fu_511_p0;
reg   [63:0] grp_fu_511_p1;
reg   [63:0] grp_fu_516_p0;
reg   [63:0] grp_fu_516_p1;
reg   [63:0] grp_fu_521_p0;
reg   [63:0] grp_fu_521_p1;
reg   [63:0] grp_fu_526_p0;
reg   [63:0] grp_fu_526_p1;
reg   [63:0] grp_fu_530_p0;
reg   [63:0] grp_fu_530_p1;
reg   [63:0] grp_fu_534_p0;
reg   [63:0] grp_fu_534_p1;
reg   [63:0] grp_fu_538_p0;
reg   [63:0] grp_fu_538_p1;
reg   [63:0] grp_fu_542_p0;
reg   [63:0] grp_fu_542_p1;
reg   [63:0] grp_fu_546_p0;
reg   [63:0] grp_fu_546_p1;
wire   [5:0] lshr_ln_fu_592_p4;
wire   [4:0] tmp_68_fu_612_p4;
wire   [6:0] p_shl5_fu_622_p3;
wire   [6:0] zext_ln81_1_fu_602_p1;
wire   [6:0] sub_ln85_fu_630_p2;
wire   [5:0] or_ln9_fu_652_p3;
wire   [7:0] p_shl_fu_664_p3;
wire   [7:0] zext_ln83_fu_660_p1;
wire   [3:0] tmp_s_fu_693_p4;
wire   [4:0] or_ln1_fu_703_p3;
wire   [4:0] tmp_76_fu_717_p4;
wire   [7:0] empty_71_fu_740_p2;
wire   [2:0] tmp_77_fu_760_p4;
wire   [0:0] tmp_69_fu_769_p3;
wire   [4:0] or_ln83_1_fu_776_p4;
wire   [6:0] add_ln85_5_fu_792_p2;
wire   [7:0] empty_72_fu_802_p2;
wire   [4:0] or_ln83_2_fu_822_p3;
wire   [6:0] add_ln85_9_fu_836_p2;
wire   [7:0] add_ln85_fu_856_p2;
wire   [6:0] lshr_ln85_1_fu_861_p4;
wire   [7:0] add_ln85_3_fu_876_p2;
wire   [6:0] lshr_ln85_3_fu_881_p4;
wire   [7:0] empty_73_fu_896_p2;
wire   [7:0] add_ln85_7_fu_926_p2;
wire   [6:0] lshr_ln85_5_fu_931_p4;
wire   [7:0] add_ln85_11_fu_946_p2;
wire   [6:0] lshr_ln85_7_fu_951_p4;
wire   [6:0] or_ln_fu_986_p3;
wire   [6:0] add_ln85_1_fu_998_p2;
wire   [6:0] add_ln85_2_fu_1008_p2;
wire   [6:0] add_ln85_4_fu_1018_p2;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter6_stage1;
reg    ap_idle_pp0_0to5;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg   [5:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to7;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_118 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b1))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter7 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter6_stage1) & (ap_idle_pp0_0to5 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter6_stage1) & (ap_idle_pp0_0to5 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter6_stage1) & (ap_idle_pp0_0to5 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter6_stage1) & (ap_idle_pp0_0to5 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter6_stage1) & (ap_idle_pp0_0to5 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter6_stage1) & (ap_idle_pp0_0to5 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_118 <= 7'd0;
    end else if (((tmp_67_reg_1192 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        i_fu_118 <= add_ln82_fu_1104_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add11_19_reg_1820 <= grp_fu_3149_p_dout0;
        add11_1_2_reg_1825 <= grp_fu_3153_p_dout0;
        add11_2_2_reg_1830 <= grp_fu_3157_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_1_1_reg_1785 <= grp_fu_3153_p_dout0;
        add11_2_1_reg_1790 <= grp_fu_3157_p_dout0;
        add11_s_reg_1780 <= grp_fu_3149_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add11_1_reg_1745 <= grp_fu_3149_p_dout0;
        add11_2_reg_1750 <= grp_fu_3153_p_dout0;
        add_reg_1740 <= grp_fu_3145_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add11_3_1_reg_1795 <= grp_fu_3145_p_dout0;
        add11_4_1_reg_1800 <= grp_fu_3149_p_dout0;
        add11_5_1_reg_1805 <= grp_fu_3153_p_dout0;
        add11_6_1_reg_1810 <= grp_fu_3157_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add11_3_2_reg_1835 <= grp_fu_3145_p_dout0;
        add11_4_2_reg_1840 <= grp_fu_3149_p_dout0;
        add11_5_2_reg_1845 <= grp_fu_3153_p_dout0;
        add11_6_2_reg_1850 <= grp_fu_3157_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add11_3_reg_1755 <= grp_fu_3145_p_dout0;
        add11_4_reg_1760 <= grp_fu_3149_p_dout0;
        add11_5_reg_1765 <= grp_fu_3153_p_dout0;
        add11_6_reg_1770 <= grp_fu_3157_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add11_7_1_reg_1815 <= grp_fu_3145_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add11_7_2_reg_1855 <= grp_fu_3157_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_7_reg_1775 <= grp_fu_3145_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln85_10_reg_1495[6 : 2] <= add_ln85_10_fu_1038_p2[6 : 2];
        add_ln85_12_reg_1500 <= add_ln85_12_fu_1043_p2;
        add_ln85_6_reg_1485[6 : 2] <= add_ln85_6_fu_1028_p2[6 : 2];
        add_ln85_8_reg_1490 <= add_ln85_8_fu_1033_p2;
        mul8_1_1_reg_1660_pp0_iter2_reg <= mul8_1_1_reg_1660;
        mul8_2_1_reg_1665_pp0_iter2_reg <= mul8_2_1_reg_1665;
        mul8_3_1_reg_1670_pp0_iter2_reg <= mul8_3_1_reg_1670;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        dactivations_0_load_1_reg_1365 <= dactivations_0_q0;
        dactivations_0_load_reg_1283 <= dactivations_0_q1;
        dactivations_1_load_1_reg_1370 <= dactivations_1_q0;
        dactivations_1_load_reg_1360 <= dactivations_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        dactivations_0_load_1_reg_1365_pp0_iter1_reg <= dactivations_0_load_1_reg_1365;
        dactivations_0_load_1_reg_1365_pp0_iter2_reg <= dactivations_0_load_1_reg_1365_pp0_iter1_reg;
        dactivations_0_load_1_reg_1365_pp0_iter3_reg <= dactivations_0_load_1_reg_1365_pp0_iter2_reg;
        dactivations_0_load_1_reg_1365_pp0_iter4_reg <= dactivations_0_load_1_reg_1365_pp0_iter3_reg;
        dactivations_0_load_1_reg_1365_pp0_iter5_reg <= dactivations_0_load_1_reg_1365_pp0_iter4_reg;
        dactivations_0_load_reg_1283_pp0_iter1_reg <= dactivations_0_load_reg_1283;
        dactivations_0_load_reg_1283_pp0_iter2_reg <= dactivations_0_load_reg_1283_pp0_iter1_reg;
        dactivations_0_load_reg_1283_pp0_iter3_reg <= dactivations_0_load_reg_1283_pp0_iter2_reg;
        dactivations_0_load_reg_1283_pp0_iter4_reg <= dactivations_0_load_reg_1283_pp0_iter3_reg;
        dactivations_0_load_reg_1283_pp0_iter5_reg <= dactivations_0_load_reg_1283_pp0_iter4_reg;
        dactivations_1_load_1_reg_1370_pp0_iter1_reg <= dactivations_1_load_1_reg_1370;
        dactivations_1_load_1_reg_1370_pp0_iter2_reg <= dactivations_1_load_1_reg_1370_pp0_iter1_reg;
        dactivations_1_load_1_reg_1370_pp0_iter3_reg <= dactivations_1_load_1_reg_1370_pp0_iter2_reg;
        dactivations_1_load_1_reg_1370_pp0_iter4_reg <= dactivations_1_load_1_reg_1370_pp0_iter3_reg;
        dactivations_1_load_1_reg_1370_pp0_iter5_reg <= dactivations_1_load_1_reg_1370_pp0_iter4_reg;
        dactivations_1_load_reg_1360_pp0_iter1_reg <= dactivations_1_load_reg_1360;
        dactivations_1_load_reg_1360_pp0_iter2_reg <= dactivations_1_load_reg_1360_pp0_iter1_reg;
        dactivations_1_load_reg_1360_pp0_iter3_reg <= dactivations_1_load_reg_1360_pp0_iter2_reg;
        dactivations_1_load_reg_1360_pp0_iter4_reg <= dactivations_1_load_reg_1360_pp0_iter3_reg;
        dactivations_1_load_reg_1360_pp0_iter5_reg <= dactivations_1_load_reg_1360_pp0_iter4_reg;
        lshr_ln85_2_reg_1288 <= {{empty_71_fu_740_p2[7:1]}};
        lshr_ln85_4_reg_1309 <= {{empty_72_fu_802_p2[7:1]}};
        mul8_4_2_reg_1720_pp0_iter3_reg <= mul8_4_2_reg_1720;
        mul8_4_2_reg_1720_pp0_iter4_reg <= mul8_4_2_reg_1720_pp0_iter3_reg;
        mul8_5_2_reg_1725_pp0_iter3_reg <= mul8_5_2_reg_1725;
        mul8_5_2_reg_1725_pp0_iter4_reg <= mul8_5_2_reg_1725_pp0_iter3_reg;
        mul8_6_2_reg_1730_pp0_iter3_reg <= mul8_6_2_reg_1730;
        mul8_6_2_reg_1730_pp0_iter4_reg <= mul8_6_2_reg_1730_pp0_iter3_reg;
        mul8_7_2_reg_1735_pp0_iter3_reg <= mul8_7_2_reg_1735;
        mul8_7_2_reg_1735_pp0_iter4_reg <= mul8_7_2_reg_1735_pp0_iter3_reg;
        zext_ln83_2_reg_1293[0] <= zext_ln83_2_fu_786_p1[0];
zext_ln83_2_reg_1293[4 : 2] <= zext_ln83_2_fu_786_p1[4 : 2];
        zext_ln83_2_reg_1293_pp0_iter1_reg[0] <= zext_ln83_2_reg_1293[0];
zext_ln83_2_reg_1293_pp0_iter1_reg[4 : 2] <= zext_ln83_2_reg_1293[4 : 2];
        zext_ln83_2_reg_1293_pp0_iter2_reg[0] <= zext_ln83_2_reg_1293_pp0_iter1_reg[0];
zext_ln83_2_reg_1293_pp0_iter2_reg[4 : 2] <= zext_ln83_2_reg_1293_pp0_iter1_reg[4 : 2];
        zext_ln83_2_reg_1293_pp0_iter3_reg[0] <= zext_ln83_2_reg_1293_pp0_iter2_reg[0];
zext_ln83_2_reg_1293_pp0_iter3_reg[4 : 2] <= zext_ln83_2_reg_1293_pp0_iter2_reg[4 : 2];
        zext_ln83_2_reg_1293_pp0_iter4_reg[0] <= zext_ln83_2_reg_1293_pp0_iter3_reg[0];
zext_ln83_2_reg_1293_pp0_iter4_reg[4 : 2] <= zext_ln83_2_reg_1293_pp0_iter3_reg[4 : 2];
        zext_ln83_2_reg_1293_pp0_iter5_reg[0] <= zext_ln83_2_reg_1293_pp0_iter4_reg[0];
zext_ln83_2_reg_1293_pp0_iter5_reg[4 : 2] <= zext_ln83_2_reg_1293_pp0_iter4_reg[4 : 2];
        zext_ln83_2_reg_1293_pp0_iter6_reg[0] <= zext_ln83_2_reg_1293_pp0_iter5_reg[0];
zext_ln83_2_reg_1293_pp0_iter6_reg[4 : 2] <= zext_ln83_2_reg_1293_pp0_iter5_reg[4 : 2];
        zext_ln83_3_reg_1319[4 : 2] <= zext_ln83_3_fu_830_p1[4 : 2];
        zext_ln83_3_reg_1319_pp0_iter1_reg[4 : 2] <= zext_ln83_3_reg_1319[4 : 2];
        zext_ln83_3_reg_1319_pp0_iter2_reg[4 : 2] <= zext_ln83_3_reg_1319_pp0_iter1_reg[4 : 2];
        zext_ln83_3_reg_1319_pp0_iter3_reg[4 : 2] <= zext_ln83_3_reg_1319_pp0_iter2_reg[4 : 2];
        zext_ln83_3_reg_1319_pp0_iter4_reg[4 : 2] <= zext_ln83_3_reg_1319_pp0_iter3_reg[4 : 2];
        zext_ln83_3_reg_1319_pp0_iter5_reg[4 : 2] <= zext_ln83_3_reg_1319_pp0_iter4_reg[4 : 2];
        zext_ln83_3_reg_1319_pp0_iter6_reg[4 : 2] <= zext_ln83_3_reg_1319_pp0_iter5_reg[4 : 2];
        zext_ln85_10_reg_1325[6 : 2] <= zext_ln85_10_fu_841_p1[6 : 2];
        zext_ln85_7_reg_1299[6 : 2] <= zext_ln85_7_fu_797_p1[6 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        dactivations_0_load_2_reg_1420 <= dactivations_0_q1;
        dactivations_0_load_3_reg_1430 <= dactivations_0_q0;
        dactivations_1_load_2_reg_1425 <= dactivations_1_q1;
        dactivations_1_load_3_reg_1435 <= dactivations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        dactivations_0_load_2_reg_1420_pp0_iter1_reg <= dactivations_0_load_2_reg_1420;
        dactivations_0_load_2_reg_1420_pp0_iter2_reg <= dactivations_0_load_2_reg_1420_pp0_iter1_reg;
        dactivations_0_load_2_reg_1420_pp0_iter3_reg <= dactivations_0_load_2_reg_1420_pp0_iter2_reg;
        dactivations_0_load_2_reg_1420_pp0_iter4_reg <= dactivations_0_load_2_reg_1420_pp0_iter3_reg;
        dactivations_0_load_2_reg_1420_pp0_iter5_reg <= dactivations_0_load_2_reg_1420_pp0_iter4_reg;
        dactivations_0_load_3_reg_1430_pp0_iter1_reg <= dactivations_0_load_3_reg_1430;
        dactivations_0_load_3_reg_1430_pp0_iter2_reg <= dactivations_0_load_3_reg_1430_pp0_iter1_reg;
        dactivations_0_load_3_reg_1430_pp0_iter3_reg <= dactivations_0_load_3_reg_1430_pp0_iter2_reg;
        dactivations_0_load_3_reg_1430_pp0_iter4_reg <= dactivations_0_load_3_reg_1430_pp0_iter3_reg;
        dactivations_0_load_3_reg_1430_pp0_iter5_reg <= dactivations_0_load_3_reg_1430_pp0_iter4_reg;
        dactivations_1_load_2_reg_1425_pp0_iter1_reg <= dactivations_1_load_2_reg_1425;
        dactivations_1_load_2_reg_1425_pp0_iter2_reg <= dactivations_1_load_2_reg_1425_pp0_iter1_reg;
        dactivations_1_load_2_reg_1425_pp0_iter3_reg <= dactivations_1_load_2_reg_1425_pp0_iter2_reg;
        dactivations_1_load_2_reg_1425_pp0_iter4_reg <= dactivations_1_load_2_reg_1425_pp0_iter3_reg;
        dactivations_1_load_2_reg_1425_pp0_iter5_reg <= dactivations_1_load_2_reg_1425_pp0_iter4_reg;
        dactivations_1_load_3_reg_1435_pp0_iter1_reg <= dactivations_1_load_3_reg_1435;
        dactivations_1_load_3_reg_1435_pp0_iter2_reg <= dactivations_1_load_3_reg_1435_pp0_iter1_reg;
        dactivations_1_load_3_reg_1435_pp0_iter3_reg <= dactivations_1_load_3_reg_1435_pp0_iter2_reg;
        dactivations_1_load_3_reg_1435_pp0_iter4_reg <= dactivations_1_load_3_reg_1435_pp0_iter3_reg;
        dactivations_1_load_3_reg_1435_pp0_iter5_reg <= dactivations_1_load_3_reg_1435_pp0_iter4_reg;
        lshr_ln85_6_reg_1385 <= {{empty_73_fu_896_p2[7:1]}};
        mul8_s_reg_1625_pp0_iter2_reg <= mul8_s_reg_1625;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_1222[7 : 1] <= empty_fu_672_p2[7 : 1];
        i_8_reg_1185 <= ap_sig_allocacmp_i_8;
        lshr_ln1_reg_1233 <= {{empty_fu_672_p2[7:1]}};
        mul8_19_reg_1700_pp0_iter3_reg <= mul8_19_reg_1700;
        mul8_19_reg_1700_pp0_iter4_reg <= mul8_19_reg_1700_pp0_iter3_reg;
        mul8_1_2_reg_1705_pp0_iter3_reg <= mul8_1_2_reg_1705;
        mul8_1_2_reg_1705_pp0_iter4_reg <= mul8_1_2_reg_1705_pp0_iter3_reg;
        mul8_2_2_reg_1710_pp0_iter3_reg <= mul8_2_2_reg_1710;
        mul8_2_2_reg_1710_pp0_iter4_reg <= mul8_2_2_reg_1710_pp0_iter3_reg;
        mul8_3_2_reg_1715_pp0_iter3_reg <= mul8_3_2_reg_1715;
        mul8_3_2_reg_1715_pp0_iter4_reg <= mul8_3_2_reg_1715_pp0_iter3_reg;
        or_ln85_1_reg_1249[6 : 2] <= or_ln85_1_fu_727_p3[6 : 2];
        tmp_67_reg_1192 <= ap_sig_allocacmp_i_8[32'd6];
        tmp_67_reg_1192_pp0_iter1_reg <= tmp_67_reg_1192;
        tmp_67_reg_1192_pp0_iter2_reg <= tmp_67_reg_1192_pp0_iter1_reg;
        tmp_67_reg_1192_pp0_iter3_reg <= tmp_67_reg_1192_pp0_iter2_reg;
        tmp_67_reg_1192_pp0_iter4_reg <= tmp_67_reg_1192_pp0_iter3_reg;
        tmp_67_reg_1192_pp0_iter5_reg <= tmp_67_reg_1192_pp0_iter4_reg;
        tmp_67_reg_1192_pp0_iter6_reg <= tmp_67_reg_1192_pp0_iter5_reg;
        tmp_reg_1212 <= {{sub_ln85_fu_630_p2[6:1]}};
        zext_ln81_reg_1196[5 : 0] <= zext_ln81_fu_606_p1[5 : 0];
        zext_ln81_reg_1196_pp0_iter1_reg[5 : 0] <= zext_ln81_reg_1196[5 : 0];
        zext_ln81_reg_1196_pp0_iter2_reg[5 : 0] <= zext_ln81_reg_1196_pp0_iter1_reg[5 : 0];
        zext_ln81_reg_1196_pp0_iter3_reg[5 : 0] <= zext_ln81_reg_1196_pp0_iter2_reg[5 : 0];
        zext_ln81_reg_1196_pp0_iter4_reg[5 : 0] <= zext_ln81_reg_1196_pp0_iter3_reg[5 : 0];
        zext_ln81_reg_1196_pp0_iter5_reg[5 : 0] <= zext_ln81_reg_1196_pp0_iter4_reg[5 : 0];
        zext_ln81_reg_1196_pp0_iter6_reg[5 : 0] <= zext_ln81_reg_1196_pp0_iter5_reg[5 : 0];
        zext_ln83_1_reg_1243[4 : 1] <= zext_ln83_1_fu_711_p1[4 : 1];
        zext_ln83_1_reg_1243_pp0_iter1_reg[4 : 1] <= zext_ln83_1_reg_1243[4 : 1];
        zext_ln83_1_reg_1243_pp0_iter2_reg[4 : 1] <= zext_ln83_1_reg_1243_pp0_iter1_reg[4 : 1];
        zext_ln83_1_reg_1243_pp0_iter3_reg[4 : 1] <= zext_ln83_1_reg_1243_pp0_iter2_reg[4 : 1];
        zext_ln83_1_reg_1243_pp0_iter4_reg[4 : 1] <= zext_ln83_1_reg_1243_pp0_iter3_reg[4 : 1];
        zext_ln83_1_reg_1243_pp0_iter5_reg[4 : 1] <= zext_ln83_1_reg_1243_pp0_iter4_reg[4 : 1];
        zext_ln83_1_reg_1243_pp0_iter6_reg[4 : 1] <= zext_ln83_1_reg_1243_pp0_iter5_reg[4 : 1];
        zext_ln85_4_reg_1258[6 : 2] <= zext_ln85_4_fu_735_p1[6 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul8_19_reg_1700 <= grp_fu_3181_p_dout0;
        mul8_1_2_reg_1705 <= grp_fu_3185_p_dout0;
        mul8_2_2_reg_1710 <= grp_fu_3189_p_dout0;
        mul8_3_2_reg_1715 <= grp_fu_3193_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul8_1_1_reg_1660 <= grp_fu_3181_p_dout0;
        mul8_2_1_reg_1665 <= grp_fu_3185_p_dout0;
        mul8_3_1_reg_1670 <= grp_fu_3189_p_dout0;
        mul8_7_reg_1675 <= grp_fu_3193_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul8_1_reg_1630 <= grp_fu_3189_p_dout0;
        mul8_2_reg_1635 <= grp_fu_3193_p_dout0;
        mul8_reg_1620 <= grp_fu_3181_p_dout0;
        mul8_s_reg_1625 <= grp_fu_3185_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul8_3_reg_1640 <= grp_fu_3181_p_dout0;
        mul8_4_reg_1645 <= grp_fu_3185_p_dout0;
        mul8_5_reg_1650 <= grp_fu_3189_p_dout0;
        mul8_6_reg_1655 <= grp_fu_3193_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul8_4_1_reg_1680 <= grp_fu_3181_p_dout0;
        mul8_5_1_reg_1685 <= grp_fu_3185_p_dout0;
        mul8_6_1_reg_1690 <= grp_fu_3189_p_dout0;
        mul8_7_1_reg_1695 <= grp_fu_3193_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul8_4_1_reg_1680_pp0_iter2_reg <= mul8_4_1_reg_1680;
        mul8_5_1_reg_1685_pp0_iter2_reg <= mul8_5_1_reg_1685;
        mul8_6_1_reg_1690_pp0_iter2_reg <= mul8_6_1_reg_1690;
        mul8_7_1_reg_1695_pp0_iter2_reg <= mul8_7_1_reg_1695;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul8_4_2_reg_1720 <= grp_fu_3181_p_dout0;
        mul8_5_2_reg_1725 <= grp_fu_3185_p_dout0;
        mul8_6_2_reg_1730 <= grp_fu_3189_p_dout0;
        mul8_7_2_reg_1735 <= grp_fu_3193_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_550 <= weights3_0_q1;
        reg_554 <= weights3_1_q1;
        reg_558 <= weights3_1_q0;
        reg_562 <= weights3_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_566 <= grp_fu_3197_p_dout0;
        reg_571 <= grp_fu_3201_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_67_reg_1192 == 1'd1) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter6 == 1'b1) & (tmp_67_reg_1192_pp0_iter6_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter6_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter6_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to5 = 1'b1;
    end else begin
        ap_idle_pp0_0to5 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to7 = 1'b1;
    end else begin
        ap_idle_pp0_1to7 = 1'b0;
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
        ap_sig_allocacmp_i_8 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_8 = i_fu_118;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            dactivations_0_address0_local = zext_ln83_3_fu_830_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            dactivations_0_address0_local = zext_ln83_1_fu_711_p1;
        end else begin
            dactivations_0_address0_local = 'bx;
        end
    end else begin
        dactivations_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            dactivations_0_address1_local = zext_ln83_2_fu_786_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            dactivations_0_address1_local = zext_ln81_fu_606_p1;
        end else begin
            dactivations_0_address1_local = 'bx;
        end
    end else begin
        dactivations_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        dactivations_0_ce0_local = 1'b1;
    end else begin
        dactivations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        dactivations_0_ce1_local = 1'b1;
    end else begin
        dactivations_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            dactivations_1_address0_local = zext_ln83_3_fu_830_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            dactivations_1_address0_local = zext_ln83_1_fu_711_p1;
        end else begin
            dactivations_1_address0_local = 'bx;
        end
    end else begin
        dactivations_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            dactivations_1_address1_local = zext_ln83_2_fu_786_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            dactivations_1_address1_local = zext_ln81_fu_606_p1;
        end else begin
            dactivations_1_address1_local = 'bx;
        end
    end else begin
        dactivations_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        dactivations_1_ce0_local = 1'b1;
    end else begin
        dactivations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        dactivations_1_ce1_local = 1'b1;
    end else begin
        dactivations_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_506_p0 = add11_3_1_reg_1795;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_506_p0 = add11_7_reg_1775;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_506_p0 = add11_3_reg_1755;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_506_p0 = mul8_7_reg_1675;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_506_p0 = mul8_3_reg_1640;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_506_p0 = mul8_reg_1620;
    end else begin
        grp_fu_506_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_506_p1 = mul8_3_2_reg_1715_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_506_p1 = mul8_7_1_reg_1695_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_506_p1 = mul8_3_1_reg_1670_pp0_iter2_reg;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_506_p1 = 64'd0;
    end else begin
        grp_fu_506_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_511_p0 = add11_4_1_reg_1800;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_511_p0 = add11_s_reg_1780;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_511_p0 = add11_4_reg_1760;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_511_p0 = add_reg_1740;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_511_p0 = mul8_4_reg_1645;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_511_p0 = mul8_1_reg_1630;
    end else begin
        grp_fu_511_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_511_p1 = mul8_4_2_reg_1720_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_511_p1 = mul8_19_reg_1700_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_511_p1 = mul8_4_1_reg_1680_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_511_p1 = mul8_s_reg_1625_pp0_iter2_reg;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_511_p1 = 64'd0;
    end else begin
        grp_fu_511_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_516_p0 = add11_5_1_reg_1805;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_516_p0 = add11_1_1_reg_1785;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_516_p0 = add11_5_reg_1765;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_516_p0 = add11_1_reg_1745;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_516_p0 = mul8_5_reg_1650;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_516_p0 = mul8_2_reg_1635;
    end else begin
        grp_fu_516_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_516_p1 = mul8_5_2_reg_1725_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_516_p1 = mul8_1_2_reg_1705_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_516_p1 = mul8_5_1_reg_1685_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_516_p1 = mul8_1_1_reg_1660_pp0_iter2_reg;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_516_p1 = 64'd0;
    end else begin
        grp_fu_516_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_521_p0 = add11_7_1_reg_1815;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_521_p0 = add11_6_1_reg_1810;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_521_p0 = add11_2_1_reg_1790;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_521_p0 = add11_6_reg_1770;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_521_p0 = add11_2_reg_1750;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_521_p0 = mul8_6_reg_1655;
    end else begin
        grp_fu_521_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_521_p1 = mul8_7_2_reg_1735_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_521_p1 = mul8_6_2_reg_1730_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_521_p1 = mul8_2_2_reg_1710_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_521_p1 = mul8_6_1_reg_1690_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_521_p1 = mul8_2_1_reg_1665_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_521_p1 = 64'd0;
    end else begin
        grp_fu_521_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_526_p0 = bitcast_ln85_14_fu_1134_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_526_p0 = bitcast_ln85_2_fu_1114_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_526_p0 = bitcast_ln85_13_fu_1084_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_526_p0 = bitcast_ln85_4_fu_1048_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_526_p0 = bitcast_ln85_9_fu_966_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_526_p0 = bitcast_ln85_fu_846_p1;
    end else begin
        grp_fu_526_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_526_p1 = output_differences_0_2_val;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_526_p1 = output_differences_0_1_val;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_526_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_526_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_530_p0 = bitcast_ln85_17_fu_1139_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_530_p0 = bitcast_ln85_5_fu_1119_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_530_p0 = bitcast_ln85_16_fu_1089_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_530_p0 = bitcast_ln85_7_fu_1053_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_530_p0 = bitcast_ln85_12_fu_971_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_530_p0 = bitcast_ln85_1_fu_851_p1;
    end else begin
        grp_fu_530_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_530_p1 = output_differences_0_2_val;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_530_p1 = output_differences_0_0_val;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_530_p1 = output_differences_0_1_val;
    end else begin
        grp_fu_530_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_534_p0 = bitcast_ln85_20_fu_1144_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_534_p0 = bitcast_ln85_8_fu_1124_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_534_p0 = bitcast_ln85_19_fu_1094_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_534_p0 = bitcast_ln85_10_fu_1058_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_534_p0 = bitcast_ln85_15_fu_976_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_534_p0 = bitcast_ln85_3_fu_916_p1;
    end else begin
        grp_fu_534_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_534_p1 = output_differences_0_2_val;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_534_p1 = output_differences_0_1_val;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_534_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_534_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_538_p0 = bitcast_ln85_23_fu_1149_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_538_p0 = bitcast_ln85_11_fu_1129_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_538_p0 = bitcast_ln85_22_fu_1099_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_538_p0 = bitcast_ln85_21_fu_1063_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_538_p0 = bitcast_ln85_18_fu_981_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_538_p0 = bitcast_ln85_6_fu_921_p1;
    end else begin
        grp_fu_538_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_538_p1 = output_differences_0_2_val;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_538_p1 = output_differences_0_1_val;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_538_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_538_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_542_p0 = add11_6_2_reg_1850;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_542_p0 = add11_4_2_reg_1840;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_542_p0 = add11_2_2_reg_1830;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_542_p0 = add11_19_reg_1820;
    end else begin
        grp_fu_542_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_542_p1 = dactivations_0_load_3_reg_1430_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_542_p1 = dactivations_0_load_2_reg_1420_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_542_p1 = dactivations_0_load_1_reg_1365_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_542_p1 = dactivations_0_load_reg_1283_pp0_iter5_reg;
    end else begin
        grp_fu_542_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_546_p0 = add11_7_2_reg_1855;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_546_p0 = add11_5_2_reg_1845;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_546_p0 = add11_3_2_reg_1835;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_546_p0 = add11_1_2_reg_1825;
    end else begin
        grp_fu_546_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_546_p1 = dactivations_1_load_3_reg_1435_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_546_p1 = dactivations_1_load_2_reg_1425_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_546_p1 = dactivations_1_load_1_reg_1370_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_546_p1 = dactivations_1_load_reg_1360_pp0_iter5_reg;
    end else begin
        grp_fu_546_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_0_address0_local = zext_ln83_3_reg_1319_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations_0_address0_local = zext_ln83_2_reg_1293_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        oracle_activations_0_address0_local = zext_ln83_1_reg_1243_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        oracle_activations_0_address0_local = zext_ln81_reg_1196_pp0_iter6_reg;
    end else begin
        oracle_activations_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        oracle_activations_0_ce0_local = 1'b1;
    end else begin
        oracle_activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        oracle_activations_0_we0_local = 1'b1;
    end else begin
        oracle_activations_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_1_address0_local = zext_ln83_3_reg_1319_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations_1_address0_local = zext_ln83_2_reg_1293_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        oracle_activations_1_address0_local = zext_ln83_1_reg_1243_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        oracle_activations_1_address0_local = zext_ln81_reg_1196_pp0_iter6_reg;
    end else begin
        oracle_activations_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        oracle_activations_1_ce0_local = 1'b1;
    end else begin
        oracle_activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        oracle_activations_1_we0_local = 1'b1;
    end else begin
        oracle_activations_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights3_0_address0_local = zext_ln87_5_fu_1076_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights3_0_address0_local = zext_ln87_1_fu_1013_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            weights3_0_address0_local = zext_ln85_12_fu_961_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_0_address0_local = zext_ln85_6_fu_891_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_0_address0_local = zext_ln85_10_fu_841_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_0_address0_local = zext_ln85_4_fu_735_p1;
        end else begin
            weights3_0_address0_local = 'bx;
        end
    end else begin
        weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights3_0_address1_local = zext_ln87_3_fu_1068_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights3_0_address1_local = zext_ln85_1_fu_993_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            weights3_0_address1_local = zext_ln85_9_fu_941_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_0_address1_local = zext_ln85_3_fu_871_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_0_address1_local = zext_ln85_7_fu_797_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_0_address1_local = zext_ln85_fu_636_p1;
        end else begin
            weights3_0_address1_local = 'bx;
        end
    end else begin
        weights3_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_0_ce0_local = 1'b1;
    end else begin
        weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_0_ce1_local = 1'b1;
    end else begin
        weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights3_1_address0_local = zext_ln85_13_fu_1080_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights3_1_address0_local = zext_ln87_2_fu_1023_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            weights3_1_address0_local = zext_ln85_10_reg_1325;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_1_address0_local = zext_ln85_11_fu_911_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_1_address0_local = zext_ln85_8_fu_817_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_1_address0_local = zext_ln85_2_fu_688_p1;
        end else begin
            weights3_1_address0_local = 'bx;
        end
    end else begin
        weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights3_1_address1_local = zext_ln87_4_fu_1072_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights3_1_address1_local = zext_ln87_fu_1003_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            weights3_1_address1_local = zext_ln85_7_reg_1299;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_1_address1_local = zext_ln85_4_reg_1258;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_1_address1_local = zext_ln85_5_fu_755_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_1_address1_local = zext_ln85_fu_636_p1;
        end else begin
            weights3_1_address1_local = 'bx;
        end
    end else begin
        weights3_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_1_ce0_local = 1'b1;
    end else begin
        weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_1_ce1_local = 1'b1;
    end else begin
        weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to7 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter6_stage1) & (ap_idle_pp0_0to5 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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
assign add_ln82_fu_1104_p2 = (i_8_reg_1185 + 7'd8);
assign add_ln85_10_fu_1038_p2 = (or_ln85_1_reg_1249 + 7'd7);
assign add_ln85_11_fu_946_p2 = (empty_reg_1222 + 8'd19);
assign add_ln85_12_fu_1043_p2 = (lshr_ln85_6_reg_1385 + 7'd1);
assign add_ln85_1_fu_998_p2 = (lshr_ln1_reg_1233 + 7'd1);
assign add_ln85_2_fu_1008_p2 = (or_ln85_1_reg_1249 + 7'd1);
assign add_ln85_3_fu_876_p2 = (empty_reg_1222 + 8'd7);
assign add_ln85_4_fu_1018_p2 = (lshr_ln85_2_reg_1288 + 7'd1);
assign add_ln85_5_fu_792_p2 = (or_ln85_1_reg_1249 + 7'd3);
assign add_ln85_6_fu_1028_p2 = (or_ln85_1_reg_1249 + 7'd4);
assign add_ln85_7_fu_926_p2 = (empty_reg_1222 + 8'd13);
assign add_ln85_8_fu_1033_p2 = (lshr_ln85_4_reg_1309 + 7'd1);
assign add_ln85_9_fu_836_p2 = (or_ln85_1_reg_1249 + 7'd6);
assign add_ln85_fu_856_p2 = (empty_reg_1222 + 8'd1);
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
assign bitcast_ln85_10_fu_1058_p1 = reg_562;
assign bitcast_ln85_11_fu_1129_p1 = reg_558;
assign bitcast_ln85_12_fu_971_p1 = reg_550;
assign bitcast_ln85_13_fu_1084_p1 = reg_554;
assign bitcast_ln85_14_fu_1134_p1 = reg_550;
assign bitcast_ln85_15_fu_976_p1 = reg_558;
assign bitcast_ln85_16_fu_1089_p1 = reg_550;
assign bitcast_ln85_17_fu_1139_p1 = reg_554;
assign bitcast_ln85_18_fu_981_p1 = reg_562;
assign bitcast_ln85_19_fu_1094_p1 = reg_558;
assign bitcast_ln85_1_fu_851_p1 = reg_554;
assign bitcast_ln85_20_fu_1144_p1 = reg_562;
assign bitcast_ln85_21_fu_1063_p1 = reg_558;
assign bitcast_ln85_22_fu_1099_p1 = reg_562;
assign bitcast_ln85_23_fu_1149_p1 = reg_558;
assign bitcast_ln85_2_fu_1114_p1 = reg_550;
assign bitcast_ln85_3_fu_916_p1 = reg_558;
assign bitcast_ln85_4_fu_1048_p1 = reg_550;
assign bitcast_ln85_5_fu_1119_p1 = reg_554;
assign bitcast_ln85_6_fu_921_p1 = reg_562;
assign bitcast_ln85_7_fu_1053_p1 = reg_554;
assign bitcast_ln85_8_fu_1124_p1 = reg_562;
assign bitcast_ln85_9_fu_966_p1 = reg_554;
assign bitcast_ln85_fu_846_p1 = reg_550;
assign dactivations_0_address0 = dactivations_0_address0_local;
assign dactivations_0_address1 = dactivations_0_address1_local;
assign dactivations_0_ce0 = dactivations_0_ce0_local;
assign dactivations_0_ce1 = dactivations_0_ce1_local;
assign dactivations_1_address0 = dactivations_1_address0_local;
assign dactivations_1_address1 = dactivations_1_address1_local;
assign dactivations_1_ce0 = dactivations_1_ce0_local;
assign dactivations_1_ce1 = dactivations_1_ce1_local;
assign empty_71_fu_740_p2 = (empty_reg_1222 + 8'd6);
assign empty_72_fu_802_p2 = (empty_reg_1222 + 8'd12);
assign empty_73_fu_896_p2 = (empty_reg_1222 + 8'd18);
assign empty_fu_672_p2 = (p_shl_fu_664_p3 - zext_ln83_fu_660_p1);
assign grp_fu_3145_p_ce = 1'b1;
assign grp_fu_3145_p_din0 = grp_fu_506_p0;
assign grp_fu_3145_p_din1 = grp_fu_506_p1;
assign grp_fu_3145_p_opcode = 2'd0;
assign grp_fu_3149_p_ce = 1'b1;
assign grp_fu_3149_p_din0 = grp_fu_511_p0;
assign grp_fu_3149_p_din1 = grp_fu_511_p1;
assign grp_fu_3149_p_opcode = 2'd0;
assign grp_fu_3153_p_ce = 1'b1;
assign grp_fu_3153_p_din0 = grp_fu_516_p0;
assign grp_fu_3153_p_din1 = grp_fu_516_p1;
assign grp_fu_3153_p_opcode = 2'd0;
assign grp_fu_3157_p_ce = 1'b1;
assign grp_fu_3157_p_din0 = grp_fu_521_p0;
assign grp_fu_3157_p_din1 = grp_fu_521_p1;
assign grp_fu_3157_p_opcode = 2'd0;
assign grp_fu_3181_p_ce = 1'b1;
assign grp_fu_3181_p_din0 = grp_fu_526_p0;
assign grp_fu_3181_p_din1 = grp_fu_526_p1;
assign grp_fu_3185_p_ce = 1'b1;
assign grp_fu_3185_p_din0 = grp_fu_530_p0;
assign grp_fu_3185_p_din1 = grp_fu_530_p1;
assign grp_fu_3189_p_ce = 1'b1;
assign grp_fu_3189_p_din0 = grp_fu_534_p0;
assign grp_fu_3189_p_din1 = grp_fu_534_p1;
assign grp_fu_3193_p_ce = 1'b1;
assign grp_fu_3193_p_din0 = grp_fu_538_p0;
assign grp_fu_3193_p_din1 = grp_fu_538_p1;
assign grp_fu_3197_p_ce = 1'b1;
assign grp_fu_3197_p_din0 = grp_fu_542_p0;
assign grp_fu_3197_p_din1 = grp_fu_542_p1;
assign grp_fu_3201_p_ce = 1'b1;
assign grp_fu_3201_p_din0 = grp_fu_546_p0;
assign grp_fu_3201_p_din1 = grp_fu_546_p1;
assign lshr_ln1_fu_678_p4 = {{empty_fu_672_p2[7:1]}};
assign lshr_ln85_1_fu_861_p4 = {{add_ln85_fu_856_p2[7:1]}};
assign lshr_ln85_2_fu_745_p4 = {{empty_71_fu_740_p2[7:1]}};
assign lshr_ln85_3_fu_881_p4 = {{add_ln85_3_fu_876_p2[7:1]}};
assign lshr_ln85_4_fu_807_p4 = {{empty_72_fu_802_p2[7:1]}};
assign lshr_ln85_5_fu_931_p4 = {{add_ln85_7_fu_926_p2[7:1]}};
assign lshr_ln85_6_fu_901_p4 = {{empty_73_fu_896_p2[7:1]}};
assign lshr_ln85_7_fu_951_p4 = {{add_ln85_11_fu_946_p2[7:1]}};
assign lshr_ln_fu_592_p4 = {{ap_sig_allocacmp_i_8[6:1]}};
assign or_ln1_fu_703_p3 = {{tmp_s_fu_693_p4}, {1'd1}};
assign or_ln83_1_fu_776_p4 = {{{tmp_77_fu_760_p4}, {1'd1}}, {tmp_69_fu_769_p3}};
assign or_ln83_2_fu_822_p3 = {{tmp_77_fu_760_p4}, {2'd3}};
assign or_ln85_1_fu_727_p3 = {{tmp_76_fu_717_p4}, {2'd3}};
assign or_ln9_fu_652_p3 = {{tmp_68_fu_612_p4}, {1'd1}};
assign or_ln_fu_986_p3 = {{tmp_reg_1212}, {1'd1}};
assign oracle_activations_0_address0 = oracle_activations_0_address0_local;
assign oracle_activations_0_ce0 = oracle_activations_0_ce0_local;
assign oracle_activations_0_d0 = reg_566;
assign oracle_activations_0_we0 = oracle_activations_0_we0_local;
assign oracle_activations_1_address0 = oracle_activations_1_address0_local;
assign oracle_activations_1_ce0 = oracle_activations_1_ce0_local;
assign oracle_activations_1_d0 = reg_571;
assign oracle_activations_1_we0 = oracle_activations_1_we0_local;
assign p_shl5_fu_622_p3 = {{tmp_68_fu_612_p4}, {2'd0}};
assign p_shl_fu_664_p3 = {{tmp_68_fu_612_p4}, {3'd4}};
assign sub_ln85_fu_630_p2 = (p_shl5_fu_622_p3 - zext_ln81_1_fu_602_p1);
assign tmp_68_fu_612_p4 = {{ap_sig_allocacmp_i_8[5:1]}};
assign tmp_69_fu_769_p3 = i_8_reg_1185[32'd1];
assign tmp_76_fu_717_p4 = {{sub_ln85_fu_630_p2[6:2]}};
assign tmp_77_fu_760_p4 = {{i_8_reg_1185[5:3]}};
assign tmp_s_fu_693_p4 = {{ap_sig_allocacmp_i_8[5:2]}};
assign weights3_0_address0 = weights3_0_address0_local;
assign weights3_0_address1 = weights3_0_address1_local;
assign weights3_0_ce0 = weights3_0_ce0_local;
assign weights3_0_ce1 = weights3_0_ce1_local;
assign weights3_1_address0 = weights3_1_address0_local;
assign weights3_1_address1 = weights3_1_address1_local;
assign weights3_1_ce0 = weights3_1_ce0_local;
assign weights3_1_ce1 = weights3_1_ce1_local;
assign zext_ln81_1_fu_602_p1 = lshr_ln_fu_592_p4;
assign zext_ln81_fu_606_p1 = lshr_ln_fu_592_p4;
assign zext_ln83_1_fu_711_p1 = or_ln1_fu_703_p3;
assign zext_ln83_2_fu_786_p1 = or_ln83_1_fu_776_p4;
assign zext_ln83_3_fu_830_p1 = or_ln83_2_fu_822_p3;
assign zext_ln83_fu_660_p1 = or_ln9_fu_652_p3;
assign zext_ln85_10_fu_841_p1 = add_ln85_9_fu_836_p2;
assign zext_ln85_11_fu_911_p1 = lshr_ln85_6_fu_901_p4;
assign zext_ln85_12_fu_961_p1 = lshr_ln85_7_fu_951_p4;
assign zext_ln85_13_fu_1080_p1 = add_ln85_12_reg_1500;
assign zext_ln85_1_fu_993_p1 = or_ln_fu_986_p3;
assign zext_ln85_2_fu_688_p1 = lshr_ln1_fu_678_p4;
assign zext_ln85_3_fu_871_p1 = lshr_ln85_1_fu_861_p4;
assign zext_ln85_4_fu_735_p1 = or_ln85_1_fu_727_p3;
assign zext_ln85_5_fu_755_p1 = lshr_ln85_2_fu_745_p4;
assign zext_ln85_6_fu_891_p1 = lshr_ln85_3_fu_881_p4;
assign zext_ln85_7_fu_797_p1 = add_ln85_5_fu_792_p2;
assign zext_ln85_8_fu_817_p1 = lshr_ln85_4_fu_807_p4;
assign zext_ln85_9_fu_941_p1 = lshr_ln85_5_fu_931_p4;
assign zext_ln85_fu_636_p1 = sub_ln85_fu_630_p2;
assign zext_ln87_1_fu_1013_p1 = add_ln85_2_fu_1008_p2;
assign zext_ln87_2_fu_1023_p1 = add_ln85_4_fu_1018_p2;
assign zext_ln87_3_fu_1068_p1 = add_ln85_6_reg_1485;
assign zext_ln87_4_fu_1072_p1 = add_ln85_8_reg_1490;
assign zext_ln87_5_fu_1076_p1 = add_ln85_10_reg_1495;
assign zext_ln87_fu_1003_p1 = add_ln85_1_fu_998_p2;
always @ (posedge ap_clk) begin
    zext_ln81_reg_1196[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_1196_pp0_iter1_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_1196_pp0_iter2_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_1196_pp0_iter3_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_1196_pp0_iter4_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_1196_pp0_iter5_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_1196_pp0_iter6_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    empty_reg_1222[0] <= 1'b1;
    zext_ln83_1_reg_1243[0] <= 1'b1;
    zext_ln83_1_reg_1243[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_1_reg_1243_pp0_iter1_reg[0] <= 1'b1;
    zext_ln83_1_reg_1243_pp0_iter1_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_1_reg_1243_pp0_iter2_reg[0] <= 1'b1;
    zext_ln83_1_reg_1243_pp0_iter2_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_1_reg_1243_pp0_iter3_reg[0] <= 1'b1;
    zext_ln83_1_reg_1243_pp0_iter3_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_1_reg_1243_pp0_iter4_reg[0] <= 1'b1;
    zext_ln83_1_reg_1243_pp0_iter4_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_1_reg_1243_pp0_iter5_reg[0] <= 1'b1;
    zext_ln83_1_reg_1243_pp0_iter5_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_1_reg_1243_pp0_iter6_reg[0] <= 1'b1;
    zext_ln83_1_reg_1243_pp0_iter6_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    or_ln85_1_reg_1249[1:0] <= 2'b11;
    zext_ln85_4_reg_1258[1:0] <= 2'b11;
    zext_ln85_4_reg_1258[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln83_2_reg_1293[1] <= 1'b1;
    zext_ln83_2_reg_1293[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_2_reg_1293_pp0_iter1_reg[1] <= 1'b1;
    zext_ln83_2_reg_1293_pp0_iter1_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_2_reg_1293_pp0_iter2_reg[1] <= 1'b1;
    zext_ln83_2_reg_1293_pp0_iter2_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_2_reg_1293_pp0_iter3_reg[1] <= 1'b1;
    zext_ln83_2_reg_1293_pp0_iter3_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_2_reg_1293_pp0_iter4_reg[1] <= 1'b1;
    zext_ln83_2_reg_1293_pp0_iter4_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_2_reg_1293_pp0_iter5_reg[1] <= 1'b1;
    zext_ln83_2_reg_1293_pp0_iter5_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_2_reg_1293_pp0_iter6_reg[1] <= 1'b1;
    zext_ln83_2_reg_1293_pp0_iter6_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln85_7_reg_1299[1:0] <= 2'b10;
    zext_ln85_7_reg_1299[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln83_3_reg_1319[1:0] <= 2'b11;
    zext_ln83_3_reg_1319[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_3_reg_1319_pp0_iter1_reg[1:0] <= 2'b11;
    zext_ln83_3_reg_1319_pp0_iter1_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_3_reg_1319_pp0_iter2_reg[1:0] <= 2'b11;
    zext_ln83_3_reg_1319_pp0_iter2_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_3_reg_1319_pp0_iter3_reg[1:0] <= 2'b11;
    zext_ln83_3_reg_1319_pp0_iter3_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_3_reg_1319_pp0_iter4_reg[1:0] <= 2'b11;
    zext_ln83_3_reg_1319_pp0_iter4_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_3_reg_1319_pp0_iter5_reg[1:0] <= 2'b11;
    zext_ln83_3_reg_1319_pp0_iter5_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_3_reg_1319_pp0_iter6_reg[1:0] <= 2'b11;
    zext_ln83_3_reg_1319_pp0_iter6_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln85_10_reg_1325[1:0] <= 2'b01;
    zext_ln85_10_reg_1325[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    add_ln85_6_reg_1485[1:0] <= 2'b11;
    add_ln85_10_reg_1495[1:0] <= 2'b10;
end
endmodule 