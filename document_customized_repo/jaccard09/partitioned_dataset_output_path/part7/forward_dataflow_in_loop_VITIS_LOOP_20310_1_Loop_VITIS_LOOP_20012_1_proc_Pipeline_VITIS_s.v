
module forward_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20012_1_proc_Pipeline_VITIS_s (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v15186,empty,idxprom_i1,zext_ln20266_1,zext_ln20266,v15400_address0,v15400_ce0,v15400_we0,v15400_d0,v15400_1_address0,v15400_1_ce0,v15400_1_we0,v15400_1_d0,v15400_2_address0,v15400_2_ce0,v15400_2_we0,v15400_2_d0,v15400_3_address0,v15400_3_ce0,v15400_3_we0,v15400_3_d0,v15400_4_address0,v15400_4_ce0,v15400_4_we0,v15400_4_d0,v15400_5_address0,v15400_5_ce0,v15400_5_we0,v15400_5_d0,v15400_6_address0,v15400_6_ce0,v15400_6_we0,v15400_6_d0,v15400_7_address0,v15400_7_ce0,v15400_7_we0,v15400_7_d0,v15400_8_address0,v15400_8_ce0,v15400_8_we0,v15400_8_d0,v15400_9_address0,v15400_9_ce0,v15400_9_we0,v15400_9_d0,v15400_10_address0,v15400_10_ce0,v15400_10_we0,v15400_10_d0,v15400_11_address0,v15400_11_ce0,v15400_11_we0,v15400_11_d0,v15400_12_address0,v15400_12_ce0,v15400_12_we0,v15400_12_d0,v15400_13_address0,v15400_13_ce0,v15400_13_we0,v15400_13_d0,v15400_14_address0,v15400_14_ce0,v15400_14_we0,v15400_14_d0,v15400_15_address0,v15400_15_ce0,v15400_15_we0,v15400_15_d0,v15399_7_address0,v15399_7_ce0,v15399_7_q0,v15398_15_address0,v15398_15_ce0,v15398_15_q0,v15399_6_address0,v15399_6_ce0,v15399_6_q0,v15398_14_address0,v15398_14_ce0,v15398_14_q0,v15399_5_address0,v15399_5_ce0,v15399_5_q0,v15398_13_address0,v15398_13_ce0,v15398_13_q0,v15399_4_address0,v15399_4_ce0,v15399_4_q0,v15398_12_address0,v15398_12_ce0,v15398_12_q0,v15399_3_address0,v15399_3_ce0,v15399_3_q0,v15398_11_address0,v15398_11_ce0,v15398_11_q0,v15399_2_address0,v15399_2_ce0,v15399_2_q0,v15398_10_address0,v15398_10_ce0,v15398_10_q0,v15399_1_address0,v15399_1_ce0,v15399_1_q0,v15398_9_address0,v15398_9_ce0,v15398_9_q0,v15399_address0,v15399_ce0,v15399_q0,v15398_8_address0,v15398_8_ce0,v15398_8_q0,v15398_7_address0,v15398_7_ce0,v15398_7_q0,v15398_6_address0,v15398_6_ce0,v15398_6_q0,v15398_5_address0,v15398_5_ce0,v15398_5_q0,v15398_4_address0,v15398_4_ce0,v15398_4_q0,v15398_3_address0,v15398_3_ce0,v15398_3_q0,v15398_2_address0,v15398_2_ce0,v15398_2_q0,v15398_1_address0,v15398_1_ce0,v15398_1_q0,v15398_address0,v15398_ce0,v15398_q0,brmerge112_i);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [4:0] v15186;
input  [0:0] empty;
input  [1:0] idxprom_i1;
input  [1:0] zext_ln20266_1;
input  [1:0] zext_ln20266;
output  [9:0] v15400_address0;
output   v15400_ce0;
output   v15400_we0;
output  [7:0] v15400_d0;
output  [9:0] v15400_1_address0;
output   v15400_1_ce0;
output   v15400_1_we0;
output  [7:0] v15400_1_d0;
output  [9:0] v15400_2_address0;
output   v15400_2_ce0;
output   v15400_2_we0;
output  [7:0] v15400_2_d0;
output  [9:0] v15400_3_address0;
output   v15400_3_ce0;
output   v15400_3_we0;
output  [7:0] v15400_3_d0;
output  [9:0] v15400_4_address0;
output   v15400_4_ce0;
output   v15400_4_we0;
output  [7:0] v15400_4_d0;
output  [9:0] v15400_5_address0;
output   v15400_5_ce0;
output   v15400_5_we0;
output  [7:0] v15400_5_d0;
output  [9:0] v15400_6_address0;
output   v15400_6_ce0;
output   v15400_6_we0;
output  [7:0] v15400_6_d0;
output  [9:0] v15400_7_address0;
output   v15400_7_ce0;
output   v15400_7_we0;
output  [7:0] v15400_7_d0;
output  [9:0] v15400_8_address0;
output   v15400_8_ce0;
output   v15400_8_we0;
output  [7:0] v15400_8_d0;
output  [9:0] v15400_9_address0;
output   v15400_9_ce0;
output   v15400_9_we0;
output  [7:0] v15400_9_d0;
output  [9:0] v15400_10_address0;
output   v15400_10_ce0;
output   v15400_10_we0;
output  [7:0] v15400_10_d0;
output  [9:0] v15400_11_address0;
output   v15400_11_ce0;
output   v15400_11_we0;
output  [7:0] v15400_11_d0;
output  [9:0] v15400_12_address0;
output   v15400_12_ce0;
output   v15400_12_we0;
output  [7:0] v15400_12_d0;
output  [9:0] v15400_13_address0;
output   v15400_13_ce0;
output   v15400_13_we0;
output  [7:0] v15400_13_d0;
output  [9:0] v15400_14_address0;
output   v15400_14_ce0;
output   v15400_14_we0;
output  [7:0] v15400_14_d0;
output  [9:0] v15400_15_address0;
output   v15400_15_ce0;
output   v15400_15_we0;
output  [7:0] v15400_15_d0;
output  [6:0] v15399_7_address0;
output   v15399_7_ce0;
input  [7:0] v15399_7_q0;
output  [9:0] v15398_15_address0;
output   v15398_15_ce0;
input  [7:0] v15398_15_q0;
output  [6:0] v15399_6_address0;
output   v15399_6_ce0;
input  [7:0] v15399_6_q0;
output  [9:0] v15398_14_address0;
output   v15398_14_ce0;
input  [7:0] v15398_14_q0;
output  [6:0] v15399_5_address0;
output   v15399_5_ce0;
input  [7:0] v15399_5_q0;
output  [9:0] v15398_13_address0;
output   v15398_13_ce0;
input  [7:0] v15398_13_q0;
output  [6:0] v15399_4_address0;
output   v15399_4_ce0;
input  [7:0] v15399_4_q0;
output  [9:0] v15398_12_address0;
output   v15398_12_ce0;
input  [7:0] v15398_12_q0;
output  [6:0] v15399_3_address0;
output   v15399_3_ce0;
input  [7:0] v15399_3_q0;
output  [9:0] v15398_11_address0;
output   v15398_11_ce0;
input  [7:0] v15398_11_q0;
output  [6:0] v15399_2_address0;
output   v15399_2_ce0;
input  [7:0] v15399_2_q0;
output  [9:0] v15398_10_address0;
output   v15398_10_ce0;
input  [7:0] v15398_10_q0;
output  [6:0] v15399_1_address0;
output   v15399_1_ce0;
input  [7:0] v15399_1_q0;
output  [9:0] v15398_9_address0;
output   v15398_9_ce0;
input  [7:0] v15398_9_q0;
output  [6:0] v15399_address0;
output   v15399_ce0;
input  [7:0] v15399_q0;
output  [9:0] v15398_8_address0;
output   v15398_8_ce0;
input  [7:0] v15398_8_q0;
output  [9:0] v15398_7_address0;
output   v15398_7_ce0;
input  [7:0] v15398_7_q0;
output  [9:0] v15398_6_address0;
output   v15398_6_ce0;
input  [7:0] v15398_6_q0;
output  [9:0] v15398_5_address0;
output   v15398_5_ce0;
input  [7:0] v15398_5_q0;
output  [9:0] v15398_4_address0;
output   v15398_4_ce0;
input  [7:0] v15398_4_q0;
output  [9:0] v15398_3_address0;
output   v15398_3_ce0;
input  [7:0] v15398_3_q0;
output  [9:0] v15398_2_address0;
output   v15398_2_ce0;
input  [7:0] v15398_2_q0;
output  [9:0] v15398_1_address0;
output   v15398_1_ce0;
input  [7:0] v15398_1_q0;
output  [9:0] v15398_address0;
output   v15398_ce0;
input  [7:0] v15398_q0;
input  [0:0] brmerge112_i;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln20012_fu_984_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [8:0] v15623_0_address0;
wire  signed [7:0] v15623_0_q0;
wire   [8:0] v15623_1_address0;
wire  signed [7:0] v15623_1_q0;
reg   [0:0] icmp_ln20013255_reg_792;
reg   [0:0] icmp_ln20014254_reg_803;
wire   [0:0] brmerge112_i_read_reg_1832;
wire    ap_block_pp0_stage0_11001;
wire   [8:0] zext_ln20266_cast_fu_814_p1;
reg   [8:0] zext_ln20266_cast_reg_1852;
wire   [7:0] zext_ln20266_1_cast_fu_818_p1;
reg   [7:0] zext_ln20266_1_cast_reg_1858;
wire   [2:0] lshr_ln_fu_874_p4;
reg   [2:0] lshr_ln_reg_1864;
reg   [2:0] lshr_ln_reg_1864_pp0_iter1_reg;
wire   [5:0] empty_180_fu_918_p2;
reg   [5:0] empty_180_reg_1870;
wire   [5:0] empty_188_fu_952_p2;
reg   [5:0] empty_188_reg_1876;
wire   [0:0] icmp_ln20013_fu_978_p2;
reg   [0:0] icmp_ln20013_reg_1882;
reg   [0:0] icmp_ln20012_reg_1887;
reg   [0:0] icmp_ln20012_reg_1887_pp0_iter1_reg;
wire   [8:0] empty_186_fu_1102_p2;
reg   [8:0] empty_186_reg_1891;
wire   [8:0] empty_194_fu_1150_p2;
reg   [8:0] empty_194_reg_1896;
reg   [3:0] lshr_ln10_reg_1901;
reg   [2:0] lshr_ln11_reg_1907;
reg   [2:0] lshr_ln11_reg_1907_pp0_iter2_reg;
reg   [2:0] lshr_ln11_reg_1907_pp0_iter3_reg;
wire   [0:0] icmp_ln20014_fu_1181_p2;
reg   [0:0] icmp_ln20014_reg_1913;
wire   [6:0] add_ln20185_fu_1232_p2;
reg   [6:0] add_ln20185_reg_1928;
reg   [6:0] add_ln20185_reg_1928_pp0_iter3_reg;
wire   [63:0] zext_ln20185_5_fu_1297_p1;
reg   [63:0] zext_ln20185_5_reg_2046;
reg   [63:0] zext_ln20185_5_reg_2046_pp0_iter5_reg;
reg   [0:0] ap_phi_mux_icmp_ln20013255_phi_fu_795_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln20014254_phi_fu_806_p4;
wire   [63:0] p_cast7_fu_1221_p1;
wire   [63:0] p_cast8_fu_1225_p1;
wire   [63:0] zext_ln20016_fu_1260_p1;
reg   [9:0] indvar_flatten12249_fu_190;
wire   [9:0] add_ln20012_1_fu_972_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten12249_load;
reg   [4:0] v15188250_fu_194;
wire   [4:0] v15188_fu_866_p3;
reg   [4:0] ap_sig_allocacmp_v15188250_load;
reg   [6:0] indvar_flatten251_fu_198;
wire   [6:0] select_ln20013_1_fu_964_p3;
reg   [6:0] ap_sig_allocacmp_indvar_flatten251_load;
reg   [4:0] v15189252_fu_202;
wire   [4:0] v15189_fu_1051_p3;
reg   [4:0] v15190253_fu_206;
wire   [4:0] v15190_fu_1175_p2;
reg    v15623_0_ce0_local;
reg    v15623_1_ce0_local;
reg    v15399_7_ce0_local;
reg    v15399_6_ce0_local;
reg    v15399_5_ce0_local;
reg    v15399_4_ce0_local;
reg    v15399_3_ce0_local;
reg    v15399_2_ce0_local;
reg    v15399_1_ce0_local;
reg    v15399_ce0_local;
reg    v15398_15_ce0_local;
reg    v15398_14_ce0_local;
reg    v15398_13_ce0_local;
reg    v15398_12_ce0_local;
reg    v15398_11_ce0_local;
reg    v15398_10_ce0_local;
reg    v15398_9_ce0_local;
reg    v15398_8_ce0_local;
reg    v15398_7_ce0_local;
reg    v15398_6_ce0_local;
reg    v15398_5_ce0_local;
reg    v15398_4_ce0_local;
reg    v15398_3_ce0_local;
reg    v15398_2_ce0_local;
reg    v15398_1_ce0_local;
reg    v15398_ce0_local;
reg    v15400_15_we0_local;
wire   [7:0] select_ln20027_fu_1330_p3;
reg    v15400_15_ce0_local;
reg    v15400_14_we0_local;
wire   [7:0] select_ln20038_fu_1350_p3;
reg    v15400_14_ce0_local;
reg    v15400_13_we0_local;
wire   [7:0] select_ln20049_fu_1370_p3;
reg    v15400_13_ce0_local;
reg    v15400_12_we0_local;
wire   [7:0] select_ln20060_fu_1390_p3;
reg    v15400_12_ce0_local;
reg    v15400_11_we0_local;
wire   [7:0] select_ln20071_fu_1410_p3;
reg    v15400_11_ce0_local;
reg    v15400_10_we0_local;
wire   [7:0] select_ln20082_fu_1430_p3;
reg    v15400_10_ce0_local;
reg    v15400_9_we0_local;
wire   [7:0] select_ln20093_fu_1450_p3;
reg    v15400_9_ce0_local;
reg    v15400_8_we0_local;
wire   [7:0] select_ln20104_fu_1470_p3;
reg    v15400_8_ce0_local;
reg    v15400_7_we0_local;
wire   [7:0] select_ln20115_fu_1490_p3;
reg    v15400_7_ce0_local;
reg    v15400_6_we0_local;
wire   [7:0] select_ln20125_fu_1510_p3;
reg    v15400_6_ce0_local;
reg    v15400_5_we0_local;
wire   [7:0] select_ln20135_fu_1530_p3;
reg    v15400_5_ce0_local;
reg    v15400_4_we0_local;
wire   [7:0] select_ln20145_fu_1550_p3;
reg    v15400_4_ce0_local;
reg    v15400_3_we0_local;
wire   [7:0] select_ln20155_fu_1570_p3;
reg    v15400_3_ce0_local;
reg    v15400_2_we0_local;
wire   [7:0] select_ln20165_fu_1590_p3;
reg    v15400_2_ce0_local;
reg    v15400_1_we0_local;
wire   [7:0] select_ln20175_fu_1610_p3;
reg    v15400_1_ce0_local;
reg    v15400_we0_local;
wire   [7:0] select_ln20185_fu_1630_p3;
reg    v15400_ce0_local;
wire   [4:0] add_ln20012_fu_860_p2;
wire   [3:0] tmp_s_fu_890_p3;
wire   [5:0] p_shl56_fu_902_p4;
wire   [5:0] tmp_72_cast_fu_898_p1;
wire   [5:0] empty_179_fu_912_p2;
wire   [5:0] idxprom_i1_cast_fu_822_p1;
wire   [4:0] empty_178_fu_884_p2;
wire   [3:0] tmp_10_fu_924_p4;
wire   [5:0] p_shl53_fu_938_p3;
wire   [5:0] tmp_73_cast_fu_934_p1;
wire   [5:0] empty_187_fu_946_p2;
wire   [6:0] add_ln20013_1_fu_958_p2;
wire   [0:0] xor_ln20012_fu_1019_p2;
wire   [4:0] select_ln20012_fu_1011_p3;
wire   [0:0] and_ln20012_fu_1025_p2;
wire   [0:0] empty_177_fu_1037_p2;
wire   [4:0] add_ln20013_fu_1031_p2;
wire   [7:0] p_shl55_fu_1062_p3;
wire   [7:0] p_cast_fu_1059_p1;
wire   [7:0] empty_181_fu_1069_p2;
wire   [7:0] empty_182_fu_1075_p2;
wire   [6:0] empty_183_fu_1080_p1;
wire   [8:0] tmp_65_fu_1084_p3;
wire   [8:0] empty_184_fu_1092_p1;
wire   [8:0] empty_185_fu_1096_p2;
wire   [7:0] p_shl52_fu_1110_p3;
wire   [7:0] p_cast3_fu_1107_p1;
wire   [7:0] empty_189_fu_1117_p2;
wire   [7:0] empty_190_fu_1123_p2;
wire   [6:0] empty_191_fu_1128_p1;
wire   [8:0] tmp_66_fu_1132_p3;
wire   [8:0] empty_192_fu_1140_p1;
wire   [8:0] empty_193_fu_1144_p2;
wire   [4:0] v15190_mid2_fu_1043_p3;
wire   [3:0] tmp_64_fu_1204_p3;
wire   [6:0] p_shl57_fu_1197_p3;
wire   [6:0] zext_ln20185_fu_1211_p1;
wire   [6:0] sub_ln20185_fu_1215_p2;
wire   [6:0] zext_ln20185_1_fu_1229_p1;
wire   [6:0] p_shl_fu_1238_p3;
wire   [6:0] sub_ln20016_fu_1245_p2;
wire   [6:0] zext_ln20185_3_fu_1251_p1;
wire   [6:0] add_ln20016_fu_1254_p2;
wire   [9:0] p_shl50_fu_1275_p3;
wire   [9:0] zext_ln20185_2_fu_1272_p1;
wire   [9:0] sub_ln20185_1_fu_1282_p2;
wire   [9:0] zext_ln20185_4_fu_1288_p1;
wire   [9:0] add_ln20185_1_fu_1291_p2;
wire  signed [7:0] v15199_fu_1317_p0;
wire   [7:0] grp_fu_1637_p3;
wire   [0:0] v15199_fu_1317_p2;
wire  signed [7:0] select_ln20027_fu_1330_p1;
wire   [7:0] select_ln20027_1_fu_1322_p3;
wire  signed [7:0] v15209_fu_1337_p0;
wire   [7:0] grp_fu_1647_p3;
wire   [0:0] v15209_fu_1337_p2;
wire  signed [7:0] select_ln20038_fu_1350_p1;
wire   [7:0] select_ln20038_1_fu_1342_p3;
wire  signed [7:0] v15219_fu_1357_p0;
wire   [7:0] grp_fu_1657_p3;
wire   [0:0] v15219_fu_1357_p2;
wire  signed [7:0] select_ln20049_fu_1370_p1;
wire   [7:0] select_ln20049_1_fu_1362_p3;
wire  signed [7:0] v15229_fu_1377_p0;
wire   [7:0] grp_fu_1667_p3;
wire   [0:0] v15229_fu_1377_p2;
wire  signed [7:0] select_ln20060_fu_1390_p1;
wire   [7:0] select_ln20060_1_fu_1382_p3;
wire  signed [7:0] v15239_fu_1397_p0;
wire   [7:0] grp_fu_1677_p3;
wire   [0:0] v15239_fu_1397_p2;
wire  signed [7:0] select_ln20071_fu_1410_p1;
wire   [7:0] select_ln20071_1_fu_1402_p3;
wire  signed [7:0] v15249_fu_1417_p0;
wire   [7:0] grp_fu_1687_p3;
wire   [0:0] v15249_fu_1417_p2;
wire  signed [7:0] select_ln20082_fu_1430_p1;
wire   [7:0] select_ln20082_1_fu_1422_p3;
wire  signed [7:0] v15259_fu_1437_p0;
wire   [7:0] grp_fu_1697_p3;
wire   [0:0] v15259_fu_1437_p2;
wire  signed [7:0] select_ln20093_fu_1450_p1;
wire   [7:0] select_ln20093_1_fu_1442_p3;
wire  signed [7:0] v15269_fu_1457_p0;
wire   [7:0] grp_fu_1707_p3;
wire   [0:0] v15269_fu_1457_p2;
wire  signed [7:0] select_ln20104_fu_1470_p1;
wire   [7:0] select_ln20104_1_fu_1462_p3;
wire  signed [7:0] v15279_fu_1477_p0;
wire   [7:0] grp_fu_1717_p3;
wire   [0:0] v15279_fu_1477_p2;
wire  signed [7:0] select_ln20115_fu_1490_p1;
wire   [7:0] select_ln20115_1_fu_1482_p3;
wire  signed [7:0] v15288_fu_1497_p0;
wire   [7:0] grp_fu_1727_p3;
wire   [0:0] v15288_fu_1497_p2;
wire  signed [7:0] select_ln20125_fu_1510_p1;
wire   [7:0] select_ln20125_1_fu_1502_p3;
wire  signed [7:0] v15297_fu_1517_p0;
wire   [7:0] grp_fu_1737_p3;
wire   [0:0] v15297_fu_1517_p2;
wire  signed [7:0] select_ln20135_fu_1530_p1;
wire   [7:0] select_ln20135_1_fu_1522_p3;
wire  signed [7:0] v15306_fu_1537_p0;
wire   [7:0] grp_fu_1747_p3;
wire   [0:0] v15306_fu_1537_p2;
wire  signed [7:0] select_ln20145_fu_1550_p1;
wire   [7:0] select_ln20145_1_fu_1542_p3;
wire  signed [7:0] v15315_fu_1557_p0;
wire   [7:0] grp_fu_1757_p3;
wire   [0:0] v15315_fu_1557_p2;
wire  signed [7:0] select_ln20155_fu_1570_p1;
wire   [7:0] select_ln20155_1_fu_1562_p3;
wire  signed [7:0] v15324_fu_1577_p0;
wire   [7:0] grp_fu_1767_p3;
wire   [0:0] v15324_fu_1577_p2;
wire  signed [7:0] select_ln20165_fu_1590_p1;
wire   [7:0] select_ln20165_1_fu_1582_p3;
wire  signed [7:0] v15333_fu_1597_p0;
wire   [7:0] grp_fu_1777_p3;
wire   [0:0] v15333_fu_1597_p2;
wire  signed [7:0] select_ln20175_fu_1610_p1;
wire   [7:0] select_ln20175_1_fu_1602_p3;
wire  signed [7:0] v15342_fu_1617_p0;
wire   [7:0] grp_fu_1787_p3;
wire   [0:0] v15342_fu_1617_p2;
wire  signed [7:0] select_ln20185_fu_1630_p1;
wire   [7:0] select_ln20185_1_fu_1622_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1338;
reg    ap_condition_1343;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 indvar_flatten12249_fu_190 = 10'd0;
#0 v15188250_fu_194 = 5'd0;
#0 indvar_flatten251_fu_198 = 7'd0;
#0 v15189252_fu_202 = 5'd0;
#0 v15190253_fu_206 = 5'd0;
#0 ap_done_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20012_1_proc_Pipeline_VITbkb #(.DataWidth( 8 ),.AddressRange( 432 ),.AddressWidth( 9 ))
v15623_0_U(.clk(ap_clk),.reset(ap_rst),.address0(v15623_0_address0),.ce0(v15623_0_ce0_local),.q0(v15623_0_q0));
forward_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20012_1_proc_Pipeline_VITcud #(.DataWidth( 8 ),.AddressRange( 432 ),.AddressWidth( 9 ))
v15623_1_U(.clk(ap_clk),.reset(ap_rst),.address0(v15623_1_address0),.ce0(v15623_1_ce0_local),.q0(v15623_1_q0));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U195(.clk(ap_clk),.reset(ap_rst),.din0(v15399_7_q0),.din1(v15623_0_q0),.din2(v15398_15_q0),.ce(1'b1),.dout(grp_fu_1637_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U196(.clk(ap_clk),.reset(ap_rst),.din0(v15399_6_q0),.din1(v15623_0_q0),.din2(v15398_14_q0),.ce(1'b1),.dout(grp_fu_1647_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U197(.clk(ap_clk),.reset(ap_rst),.din0(v15399_5_q0),.din1(v15623_0_q0),.din2(v15398_13_q0),.ce(1'b1),.dout(grp_fu_1657_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U198(.clk(ap_clk),.reset(ap_rst),.din0(v15399_4_q0),.din1(v15623_0_q0),.din2(v15398_12_q0),.ce(1'b1),.dout(grp_fu_1667_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U199(.clk(ap_clk),.reset(ap_rst),.din0(v15399_3_q0),.din1(v15623_0_q0),.din2(v15398_11_q0),.ce(1'b1),.dout(grp_fu_1677_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U200(.clk(ap_clk),.reset(ap_rst),.din0(v15399_2_q0),.din1(v15623_0_q0),.din2(v15398_10_q0),.ce(1'b1),.dout(grp_fu_1687_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U201(.clk(ap_clk),.reset(ap_rst),.din0(v15399_1_q0),.din1(v15623_0_q0),.din2(v15398_9_q0),.ce(1'b1),.dout(grp_fu_1697_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U202(.clk(ap_clk),.reset(ap_rst),.din0(v15399_q0),.din1(v15623_0_q0),.din2(v15398_8_q0),.ce(1'b1),.dout(grp_fu_1707_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U203(.clk(ap_clk),.reset(ap_rst),.din0(v15399_7_q0),.din1(v15623_1_q0),.din2(v15398_7_q0),.ce(1'b1),.dout(grp_fu_1717_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U204(.clk(ap_clk),.reset(ap_rst),.din0(v15399_6_q0),.din1(v15623_1_q0),.din2(v15398_6_q0),.ce(1'b1),.dout(grp_fu_1727_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U205(.clk(ap_clk),.reset(ap_rst),.din0(v15399_5_q0),.din1(v15623_1_q0),.din2(v15398_5_q0),.ce(1'b1),.dout(grp_fu_1737_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U206(.clk(ap_clk),.reset(ap_rst),.din0(v15399_4_q0),.din1(v15623_1_q0),.din2(v15398_4_q0),.ce(1'b1),.dout(grp_fu_1747_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U207(.clk(ap_clk),.reset(ap_rst),.din0(v15399_3_q0),.din1(v15623_1_q0),.din2(v15398_3_q0),.ce(1'b1),.dout(grp_fu_1757_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U208(.clk(ap_clk),.reset(ap_rst),.din0(v15399_2_q0),.din1(v15623_1_q0),.din2(v15398_2_q0),.ce(1'b1),.dout(grp_fu_1767_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U209(.clk(ap_clk),.reset(ap_rst),.din0(v15399_1_q0),.din1(v15623_1_q0),.din2(v15398_1_q0),.ce(1'b1),.dout(grp_fu_1777_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U210(.clk(ap_clk),.reset(ap_rst),.din0(v15399_q0),.din1(v15623_1_q0),.din2(v15398_q0),.ce(1'b1),.dout(grp_fu_1787_p3));
forward_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1343)) begin
            icmp_ln20013255_reg_792 <= icmp_ln20013_reg_1882;
        end else if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            icmp_ln20013255_reg_792 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln20012_reg_1887_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        icmp_ln20014254_reg_803 <= icmp_ln20014_reg_1913;
    end else if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln20014254_reg_803 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten12249_fu_190 <= add_ln20012_1_fu_972_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten12249_fu_190 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten251_fu_198 <= select_ln20013_1_fu_964_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten251_fu_198 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v15188250_fu_194 <= v15188_fu_866_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v15188250_fu_194 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v15189252_fu_202 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v15189252_fu_202 <= v15189_fu_1051_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v15190253_fu_206 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v15190253_fu_206 <= v15190_fu_1175_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln20185_reg_1928 <= add_ln20185_fu_1232_p2;
        add_ln20185_reg_1928_pp0_iter3_reg <= add_ln20185_reg_1928;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        lshr_ln11_reg_1907_pp0_iter2_reg <= lshr_ln11_reg_1907;
        lshr_ln11_reg_1907_pp0_iter3_reg <= lshr_ln11_reg_1907_pp0_iter2_reg;
        zext_ln20185_5_reg_2046[9 : 0] <= zext_ln20185_5_fu_1297_p1[9 : 0];
        zext_ln20185_5_reg_2046_pp0_iter5_reg[9 : 0] <= zext_ln20185_5_reg_2046[9 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_180_reg_1870 <= empty_180_fu_918_p2;
        empty_186_reg_1891 <= empty_186_fu_1102_p2;
        empty_188_reg_1876 <= empty_188_fu_952_p2;
        empty_194_reg_1896 <= empty_194_fu_1150_p2;
        icmp_ln20012_reg_1887 <= icmp_ln20012_fu_984_p2;
        icmp_ln20012_reg_1887_pp0_iter1_reg <= icmp_ln20012_reg_1887;
        lshr_ln10_reg_1901 <= {{v15189_fu_1051_p3[4:1]}};
        lshr_ln11_reg_1907 <= {{v15190_mid2_fu_1043_p3[4:2]}};
        lshr_ln_reg_1864 <= {{v15188_fu_866_p3[3:1]}};
        lshr_ln_reg_1864_pp0_iter1_reg <= lshr_ln_reg_1864;
        zext_ln20266_1_cast_reg_1858[1 : 0] <= zext_ln20266_1_cast_fu_818_p1[1 : 0];
        zext_ln20266_cast_reg_1852[1 : 0] <= zext_ln20266_cast_fu_814_p1[1 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln20013_reg_1882 <= icmp_ln20013_fu_978_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln20014_reg_1913 <= icmp_ln20014_fu_1181_p2;
    end
end
always @ (*) begin
    if (((icmp_ln20012_fu_984_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1338)) begin
            ap_phi_mux_icmp_ln20013255_phi_fu_795_p4 = icmp_ln20013_reg_1882;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln20013255_phi_fu_795_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln20013255_phi_fu_795_p4 = icmp_ln20013_reg_1882;
        end
    end else begin
        ap_phi_mux_icmp_ln20013255_phi_fu_795_p4 = icmp_ln20013_reg_1882;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln20012_reg_1887_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_icmp_ln20014254_phi_fu_806_p4 = icmp_ln20014_reg_1913;
    end else begin
        ap_phi_mux_icmp_ln20014254_phi_fu_806_p4 = icmp_ln20014254_reg_803;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten12249_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12249_load = indvar_flatten12249_fu_190;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten251_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten251_load = indvar_flatten251_fu_198;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v15188250_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v15188250_load = v15188250_fu_194;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15398_10_ce0_local = 1'b1;
    end else begin
        v15398_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15398_11_ce0_local = 1'b1;
    end else begin
        v15398_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15398_12_ce0_local = 1'b1;
    end else begin
        v15398_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15398_13_ce0_local = 1'b1;
    end else begin
        v15398_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15398_14_ce0_local = 1'b1;
    end else begin
        v15398_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15398_15_ce0_local = 1'b1;
    end else begin
        v15398_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15398_1_ce0_local = 1'b1;
    end else begin
        v15398_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15398_2_ce0_local = 1'b1;
    end else begin
        v15398_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15398_3_ce0_local = 1'b1;
    end else begin
        v15398_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15398_4_ce0_local = 1'b1;
    end else begin
        v15398_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15398_5_ce0_local = 1'b1;
    end else begin
        v15398_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15398_6_ce0_local = 1'b1;
    end else begin
        v15398_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15398_7_ce0_local = 1'b1;
    end else begin
        v15398_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15398_8_ce0_local = 1'b1;
    end else begin
        v15398_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15398_9_ce0_local = 1'b1;
    end else begin
        v15398_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15398_ce0_local = 1'b1;
    end else begin
        v15398_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15399_1_ce0_local = 1'b1;
    end else begin
        v15399_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15399_2_ce0_local = 1'b1;
    end else begin
        v15399_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15399_3_ce0_local = 1'b1;
    end else begin
        v15399_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15399_4_ce0_local = 1'b1;
    end else begin
        v15399_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15399_5_ce0_local = 1'b1;
    end else begin
        v15399_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15399_6_ce0_local = 1'b1;
    end else begin
        v15399_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15399_7_ce0_local = 1'b1;
    end else begin
        v15399_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15399_ce0_local = 1'b1;
    end else begin
        v15399_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v15400_10_ce0_local = 1'b1;
    end else begin
        v15400_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v15400_10_we0_local = 1'b1;
    end else begin
        v15400_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v15400_11_ce0_local = 1'b1;
    end else begin
        v15400_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v15400_11_we0_local = 1'b1;
    end else begin
        v15400_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v15400_12_ce0_local = 1'b1;
    end else begin
        v15400_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v15400_12_we0_local = 1'b1;
    end else begin
        v15400_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v15400_13_ce0_local = 1'b1;
    end else begin
        v15400_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v15400_13_we0_local = 1'b1;
    end else begin
        v15400_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v15400_14_ce0_local = 1'b1;
    end else begin
        v15400_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v15400_14_we0_local = 1'b1;
    end else begin
        v15400_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v15400_15_ce0_local = 1'b1;
    end else begin
        v15400_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v15400_15_we0_local = 1'b1;
    end else begin
        v15400_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v15400_1_ce0_local = 1'b1;
    end else begin
        v15400_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v15400_1_we0_local = 1'b1;
    end else begin
        v15400_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v15400_2_ce0_local = 1'b1;
    end else begin
        v15400_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v15400_2_we0_local = 1'b1;
    end else begin
        v15400_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v15400_3_ce0_local = 1'b1;
    end else begin
        v15400_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v15400_3_we0_local = 1'b1;
    end else begin
        v15400_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v15400_4_ce0_local = 1'b1;
    end else begin
        v15400_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v15400_4_we0_local = 1'b1;
    end else begin
        v15400_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v15400_5_ce0_local = 1'b1;
    end else begin
        v15400_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v15400_5_we0_local = 1'b1;
    end else begin
        v15400_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v15400_6_ce0_local = 1'b1;
    end else begin
        v15400_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v15400_6_we0_local = 1'b1;
    end else begin
        v15400_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v15400_7_ce0_local = 1'b1;
    end else begin
        v15400_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v15400_7_we0_local = 1'b1;
    end else begin
        v15400_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v15400_8_ce0_local = 1'b1;
    end else begin
        v15400_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v15400_8_we0_local = 1'b1;
    end else begin
        v15400_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v15400_9_ce0_local = 1'b1;
    end else begin
        v15400_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v15400_9_we0_local = 1'b1;
    end else begin
        v15400_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v15400_ce0_local = 1'b1;
    end else begin
        v15400_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v15400_we0_local = 1'b1;
    end else begin
        v15400_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15623_0_ce0_local = 1'b1;
    end else begin
        v15623_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15623_1_ce0_local = 1'b1;
    end else begin
        v15623_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln20012_1_fu_972_p2 = (ap_sig_allocacmp_indvar_flatten12249_load + 10'd1);
assign add_ln20012_fu_860_p2 = (ap_sig_allocacmp_v15188250_load + 5'd2);
assign add_ln20013_1_fu_958_p2 = (ap_sig_allocacmp_indvar_flatten251_load + 7'd1);
assign add_ln20013_fu_1031_p2 = (select_ln20012_fu_1011_p3 + 5'd2);
assign add_ln20016_fu_1254_p2 = (sub_ln20016_fu_1245_p2 + zext_ln20185_3_fu_1251_p1);
assign add_ln20185_1_fu_1291_p2 = (sub_ln20185_1_fu_1282_p2 + zext_ln20185_4_fu_1288_p1);
assign add_ln20185_fu_1232_p2 = (sub_ln20185_fu_1215_p2 + zext_ln20185_1_fu_1229_p1);
assign and_ln20012_fu_1025_p2 = (xor_ln20012_fu_1019_p2 & ap_phi_mux_icmp_ln20014254_phi_fu_806_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1338 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln20012_reg_1887 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_1343 = ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln20012_reg_1887 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign brmerge112_i_read_reg_1832 = brmerge112_i;
assign empty_177_fu_1037_p2 = (icmp_ln20013255_reg_792 | and_ln20012_fu_1025_p2);
assign empty_178_fu_884_p2 = (v15188_fu_866_p3 + v15186);
assign empty_179_fu_912_p2 = (p_shl56_fu_902_p4 - tmp_72_cast_fu_898_p1);
assign empty_180_fu_918_p2 = (empty_179_fu_912_p2 + idxprom_i1_cast_fu_822_p1);
assign empty_181_fu_1069_p2 = (p_shl55_fu_1062_p3 - p_cast_fu_1059_p1);
assign empty_182_fu_1075_p2 = (empty_181_fu_1069_p2 + zext_ln20266_1_cast_reg_1858);
assign empty_183_fu_1080_p1 = empty_182_fu_1075_p2[6:0];
assign empty_184_fu_1092_p1 = empty_182_fu_1075_p2;
assign empty_185_fu_1096_p2 = (tmp_65_fu_1084_p3 - empty_184_fu_1092_p1);
assign empty_186_fu_1102_p2 = (empty_185_fu_1096_p2 + zext_ln20266_cast_reg_1852);
assign empty_187_fu_946_p2 = (p_shl53_fu_938_p3 - tmp_73_cast_fu_934_p1);
assign empty_188_fu_952_p2 = (empty_187_fu_946_p2 + idxprom_i1_cast_fu_822_p1);
assign empty_189_fu_1117_p2 = (p_shl52_fu_1110_p3 - p_cast3_fu_1107_p1);
assign empty_190_fu_1123_p2 = (empty_189_fu_1117_p2 + zext_ln20266_1_cast_reg_1858);
assign empty_191_fu_1128_p1 = empty_190_fu_1123_p2[6:0];
assign empty_192_fu_1140_p1 = empty_190_fu_1123_p2;
assign empty_193_fu_1144_p2 = (tmp_66_fu_1132_p3 - empty_192_fu_1140_p1);
assign empty_194_fu_1150_p2 = (empty_193_fu_1144_p2 + zext_ln20266_cast_reg_1852);
assign icmp_ln20012_fu_984_p2 = ((ap_sig_allocacmp_indvar_flatten12249_load == 10'd783) ? 1'b1 : 1'b0);
assign icmp_ln20013_fu_978_p2 = ((select_ln20013_1_fu_964_p3 == 7'd98) ? 1'b1 : 1'b0);
assign icmp_ln20014_fu_1181_p2 = ((v15190_fu_1175_p2 == 5'd28) ? 1'b1 : 1'b0);
assign idxprom_i1_cast_fu_822_p1 = idxprom_i1;
assign lshr_ln_fu_874_p4 = {{v15188_fu_866_p3[3:1]}};
assign p_cast3_fu_1107_p1 = empty_188_reg_1876;
assign p_cast7_fu_1221_p1 = empty_186_reg_1891;
assign p_cast8_fu_1225_p1 = empty_194_reg_1896;
assign p_cast_fu_1059_p1 = empty_180_reg_1870;
assign p_shl50_fu_1275_p3 = {{add_ln20185_reg_1928_pp0_iter3_reg}, {3'd0}};
assign p_shl52_fu_1110_p3 = {{empty_188_reg_1876}, {2'd0}};
assign p_shl53_fu_938_p3 = {{tmp_10_fu_924_p4}, {2'd0}};
assign p_shl55_fu_1062_p3 = {{empty_180_reg_1870}, {2'd0}};
assign p_shl56_fu_902_p4 = {{{empty}, {lshr_ln_fu_874_p4}}, {2'd0}};
assign p_shl57_fu_1197_p3 = {{lshr_ln_reg_1864_pp0_iter1_reg}, {4'd0}};
assign p_shl_fu_1238_p3 = {{lshr_ln10_reg_1901}, {3'd0}};
assign select_ln20012_fu_1011_p3 = ((icmp_ln20013255_reg_792[0:0] == 1'b1) ? 5'd0 : v15189252_fu_202);
assign select_ln20013_1_fu_964_p3 = ((ap_phi_mux_icmp_ln20013255_phi_fu_795_p4[0:0] == 1'b1) ? 7'd1 : add_ln20013_1_fu_958_p2);
assign select_ln20027_1_fu_1322_p3 = ((v15199_fu_1317_p2[0:0] == 1'b1) ? 8'd127 : 8'd126);
assign select_ln20027_fu_1330_p1 = grp_fu_1637_p3;
assign select_ln20027_fu_1330_p3 = ((brmerge112_i[0:0] == 1'b1) ? select_ln20027_fu_1330_p1 : select_ln20027_1_fu_1322_p3);
assign select_ln20038_1_fu_1342_p3 = ((v15209_fu_1337_p2[0:0] == 1'b1) ? 8'd127 : 8'd126);
assign select_ln20038_fu_1350_p1 = grp_fu_1647_p3;
assign select_ln20038_fu_1350_p3 = ((brmerge112_i[0:0] == 1'b1) ? select_ln20038_fu_1350_p1 : select_ln20038_1_fu_1342_p3);
assign select_ln20049_1_fu_1362_p3 = ((v15219_fu_1357_p2[0:0] == 1'b1) ? 8'd127 : 8'd126);
assign select_ln20049_fu_1370_p1 = grp_fu_1657_p3;
assign select_ln20049_fu_1370_p3 = ((brmerge112_i[0:0] == 1'b1) ? select_ln20049_fu_1370_p1 : select_ln20049_1_fu_1362_p3);
assign select_ln20060_1_fu_1382_p3 = ((v15229_fu_1377_p2[0:0] == 1'b1) ? 8'd127 : 8'd126);
assign select_ln20060_fu_1390_p1 = grp_fu_1667_p3;
assign select_ln20060_fu_1390_p3 = ((brmerge112_i[0:0] == 1'b1) ? select_ln20060_fu_1390_p1 : select_ln20060_1_fu_1382_p3);
assign select_ln20071_1_fu_1402_p3 = ((v15239_fu_1397_p2[0:0] == 1'b1) ? 8'd127 : 8'd126);
assign select_ln20071_fu_1410_p1 = grp_fu_1677_p3;
assign select_ln20071_fu_1410_p3 = ((brmerge112_i[0:0] == 1'b1) ? select_ln20071_fu_1410_p1 : select_ln20071_1_fu_1402_p3);
assign select_ln20082_1_fu_1422_p3 = ((v15249_fu_1417_p2[0:0] == 1'b1) ? 8'd127 : 8'd126);
assign select_ln20082_fu_1430_p1 = grp_fu_1687_p3;
assign select_ln20082_fu_1430_p3 = ((brmerge112_i[0:0] == 1'b1) ? select_ln20082_fu_1430_p1 : select_ln20082_1_fu_1422_p3);
assign select_ln20093_1_fu_1442_p3 = ((v15259_fu_1437_p2[0:0] == 1'b1) ? 8'd127 : 8'd126);
assign select_ln20093_fu_1450_p1 = grp_fu_1697_p3;
assign select_ln20093_fu_1450_p3 = ((brmerge112_i[0:0] == 1'b1) ? select_ln20093_fu_1450_p1 : select_ln20093_1_fu_1442_p3);
assign select_ln20104_1_fu_1462_p3 = ((v15269_fu_1457_p2[0:0] == 1'b1) ? 8'd127 : 8'd126);
assign select_ln20104_fu_1470_p1 = grp_fu_1707_p3;
assign select_ln20104_fu_1470_p3 = ((brmerge112_i[0:0] == 1'b1) ? select_ln20104_fu_1470_p1 : select_ln20104_1_fu_1462_p3);
assign select_ln20115_1_fu_1482_p3 = ((v15279_fu_1477_p2[0:0] == 1'b1) ? 8'd127 : 8'd126);
assign select_ln20115_fu_1490_p1 = grp_fu_1717_p3;
assign select_ln20115_fu_1490_p3 = ((brmerge112_i[0:0] == 1'b1) ? select_ln20115_fu_1490_p1 : select_ln20115_1_fu_1482_p3);
assign select_ln20125_1_fu_1502_p3 = ((v15288_fu_1497_p2[0:0] == 1'b1) ? 8'd127 : 8'd126);
assign select_ln20125_fu_1510_p1 = grp_fu_1727_p3;
assign select_ln20125_fu_1510_p3 = ((brmerge112_i[0:0] == 1'b1) ? select_ln20125_fu_1510_p1 : select_ln20125_1_fu_1502_p3);
assign select_ln20135_1_fu_1522_p3 = ((v15297_fu_1517_p2[0:0] == 1'b1) ? 8'd127 : 8'd126);
assign select_ln20135_fu_1530_p1 = grp_fu_1737_p3;
assign select_ln20135_fu_1530_p3 = ((brmerge112_i[0:0] == 1'b1) ? select_ln20135_fu_1530_p1 : select_ln20135_1_fu_1522_p3);
assign select_ln20145_1_fu_1542_p3 = ((v15306_fu_1537_p2[0:0] == 1'b1) ? 8'd127 : 8'd126);
assign select_ln20145_fu_1550_p1 = grp_fu_1747_p3;
assign select_ln20145_fu_1550_p3 = ((brmerge112_i[0:0] == 1'b1) ? select_ln20145_fu_1550_p1 : select_ln20145_1_fu_1542_p3);
assign select_ln20155_1_fu_1562_p3 = ((v15315_fu_1557_p2[0:0] == 1'b1) ? 8'd127 : 8'd126);
assign select_ln20155_fu_1570_p1 = grp_fu_1757_p3;
assign select_ln20155_fu_1570_p3 = ((brmerge112_i[0:0] == 1'b1) ? select_ln20155_fu_1570_p1 : select_ln20155_1_fu_1562_p3);
assign select_ln20165_1_fu_1582_p3 = ((v15324_fu_1577_p2[0:0] == 1'b1) ? 8'd127 : 8'd126);
assign select_ln20165_fu_1590_p1 = grp_fu_1767_p3;
assign select_ln20165_fu_1590_p3 = ((brmerge112_i[0:0] == 1'b1) ? select_ln20165_fu_1590_p1 : select_ln20165_1_fu_1582_p3);
assign select_ln20175_1_fu_1602_p3 = ((v15333_fu_1597_p2[0:0] == 1'b1) ? 8'd127 : 8'd126);
assign select_ln20175_fu_1610_p1 = grp_fu_1777_p3;
assign select_ln20175_fu_1610_p3 = ((brmerge112_i[0:0] == 1'b1) ? select_ln20175_fu_1610_p1 : select_ln20175_1_fu_1602_p3);
assign select_ln20185_1_fu_1622_p3 = ((v15342_fu_1617_p2[0:0] == 1'b1) ? 8'd127 : 8'd126);
assign select_ln20185_fu_1630_p1 = grp_fu_1787_p3;
assign select_ln20185_fu_1630_p3 = ((brmerge112_i[0:0] == 1'b1) ? select_ln20185_fu_1630_p1 : select_ln20185_1_fu_1622_p3);
assign sub_ln20016_fu_1245_p2 = (p_shl_fu_1238_p3 - zext_ln20185_1_fu_1229_p1);
assign sub_ln20185_1_fu_1282_p2 = (p_shl50_fu_1275_p3 - zext_ln20185_2_fu_1272_p1);
assign sub_ln20185_fu_1215_p2 = (p_shl57_fu_1197_p3 - zext_ln20185_fu_1211_p1);
assign tmp_10_fu_924_p4 = {{empty_178_fu_884_p2[4:1]}};
assign tmp_64_fu_1204_p3 = {{lshr_ln_reg_1864_pp0_iter1_reg}, {1'd0}};
assign tmp_65_fu_1084_p3 = {{empty_183_fu_1080_p1}, {2'd0}};
assign tmp_66_fu_1132_p3 = {{empty_191_fu_1128_p1}, {2'd0}};
assign tmp_72_cast_fu_898_p1 = tmp_s_fu_890_p3;
assign tmp_73_cast_fu_934_p1 = tmp_10_fu_924_p4;
assign tmp_s_fu_890_p3 = {{empty}, {lshr_ln_fu_874_p4}};
assign v15188_fu_866_p3 = ((ap_phi_mux_icmp_ln20013255_phi_fu_795_p4[0:0] == 1'b1) ? add_ln20012_fu_860_p2 : ap_sig_allocacmp_v15188250_load);
assign v15189_fu_1051_p3 = ((and_ln20012_fu_1025_p2[0:0] == 1'b1) ? add_ln20013_fu_1031_p2 : select_ln20012_fu_1011_p3);
assign v15190_fu_1175_p2 = (v15190_mid2_fu_1043_p3 + 5'd4);
assign v15190_mid2_fu_1043_p3 = ((empty_177_fu_1037_p2[0:0] == 1'b1) ? 5'd0 : v15190253_fu_206);
assign v15199_fu_1317_p0 = grp_fu_1637_p3;
assign v15199_fu_1317_p2 = ((v15199_fu_1317_p0 == 8'd127) ? 1'b1 : 1'b0);
assign v15209_fu_1337_p0 = grp_fu_1647_p3;
assign v15209_fu_1337_p2 = ((v15209_fu_1337_p0 == 8'd127) ? 1'b1 : 1'b0);
assign v15219_fu_1357_p0 = grp_fu_1657_p3;
assign v15219_fu_1357_p2 = ((v15219_fu_1357_p0 == 8'd127) ? 1'b1 : 1'b0);
assign v15229_fu_1377_p0 = grp_fu_1667_p3;
assign v15229_fu_1377_p2 = ((v15229_fu_1377_p0 == 8'd127) ? 1'b1 : 1'b0);
assign v15239_fu_1397_p0 = grp_fu_1677_p3;
assign v15239_fu_1397_p2 = ((v15239_fu_1397_p0 == 8'd127) ? 1'b1 : 1'b0);
assign v15249_fu_1417_p0 = grp_fu_1687_p3;
assign v15249_fu_1417_p2 = ((v15249_fu_1417_p0 == 8'd127) ? 1'b1 : 1'b0);
assign v15259_fu_1437_p0 = grp_fu_1697_p3;
assign v15259_fu_1437_p2 = ((v15259_fu_1437_p0 == 8'd127) ? 1'b1 : 1'b0);
assign v15269_fu_1457_p0 = grp_fu_1707_p3;
assign v15269_fu_1457_p2 = ((v15269_fu_1457_p0 == 8'd127) ? 1'b1 : 1'b0);
assign v15279_fu_1477_p0 = grp_fu_1717_p3;
assign v15279_fu_1477_p2 = ((v15279_fu_1477_p0 == 8'd127) ? 1'b1 : 1'b0);
assign v15288_fu_1497_p0 = grp_fu_1727_p3;
assign v15288_fu_1497_p2 = ((v15288_fu_1497_p0 == 8'd127) ? 1'b1 : 1'b0);
assign v15297_fu_1517_p0 = grp_fu_1737_p3;
assign v15297_fu_1517_p2 = ((v15297_fu_1517_p0 == 8'd127) ? 1'b1 : 1'b0);
assign v15306_fu_1537_p0 = grp_fu_1747_p3;
assign v15306_fu_1537_p2 = ((v15306_fu_1537_p0 == 8'd127) ? 1'b1 : 1'b0);
assign v15315_fu_1557_p0 = grp_fu_1757_p3;
assign v15315_fu_1557_p2 = ((v15315_fu_1557_p0 == 8'd127) ? 1'b1 : 1'b0);
assign v15324_fu_1577_p0 = grp_fu_1767_p3;
assign v15324_fu_1577_p2 = ((v15324_fu_1577_p0 == 8'd127) ? 1'b1 : 1'b0);
assign v15333_fu_1597_p0 = grp_fu_1777_p3;
assign v15333_fu_1597_p2 = ((v15333_fu_1597_p0 == 8'd127) ? 1'b1 : 1'b0);
assign v15342_fu_1617_p0 = grp_fu_1787_p3;
assign v15342_fu_1617_p2 = ((v15342_fu_1617_p0 == 8'd127) ? 1'b1 : 1'b0);
assign v15398_10_address0 = zext_ln20185_5_fu_1297_p1;
assign v15398_10_ce0 = v15398_10_ce0_local;
assign v15398_11_address0 = zext_ln20185_5_fu_1297_p1;
assign v15398_11_ce0 = v15398_11_ce0_local;
assign v15398_12_address0 = zext_ln20185_5_fu_1297_p1;
assign v15398_12_ce0 = v15398_12_ce0_local;
assign v15398_13_address0 = zext_ln20185_5_fu_1297_p1;
assign v15398_13_ce0 = v15398_13_ce0_local;
assign v15398_14_address0 = zext_ln20185_5_fu_1297_p1;
assign v15398_14_ce0 = v15398_14_ce0_local;
assign v15398_15_address0 = zext_ln20185_5_fu_1297_p1;
assign v15398_15_ce0 = v15398_15_ce0_local;
assign v15398_1_address0 = zext_ln20185_5_fu_1297_p1;
assign v15398_1_ce0 = v15398_1_ce0_local;
assign v15398_2_address0 = zext_ln20185_5_fu_1297_p1;
assign v15398_2_ce0 = v15398_2_ce0_local;
assign v15398_3_address0 = zext_ln20185_5_fu_1297_p1;
assign v15398_3_ce0 = v15398_3_ce0_local;
assign v15398_4_address0 = zext_ln20185_5_fu_1297_p1;
assign v15398_4_ce0 = v15398_4_ce0_local;
assign v15398_5_address0 = zext_ln20185_5_fu_1297_p1;
assign v15398_5_ce0 = v15398_5_ce0_local;
assign v15398_6_address0 = zext_ln20185_5_fu_1297_p1;
assign v15398_6_ce0 = v15398_6_ce0_local;
assign v15398_7_address0 = zext_ln20185_5_fu_1297_p1;
assign v15398_7_ce0 = v15398_7_ce0_local;
assign v15398_8_address0 = zext_ln20185_5_fu_1297_p1;
assign v15398_8_ce0 = v15398_8_ce0_local;
assign v15398_9_address0 = zext_ln20185_5_fu_1297_p1;
assign v15398_9_ce0 = v15398_9_ce0_local;
assign v15398_address0 = zext_ln20185_5_fu_1297_p1;
assign v15398_ce0 = v15398_ce0_local;
assign v15399_1_address0 = zext_ln20016_fu_1260_p1;
assign v15399_1_ce0 = v15399_1_ce0_local;
assign v15399_2_address0 = zext_ln20016_fu_1260_p1;
assign v15399_2_ce0 = v15399_2_ce0_local;
assign v15399_3_address0 = zext_ln20016_fu_1260_p1;
assign v15399_3_ce0 = v15399_3_ce0_local;
assign v15399_4_address0 = zext_ln20016_fu_1260_p1;
assign v15399_4_ce0 = v15399_4_ce0_local;
assign v15399_5_address0 = zext_ln20016_fu_1260_p1;
assign v15399_5_ce0 = v15399_5_ce0_local;
assign v15399_6_address0 = zext_ln20016_fu_1260_p1;
assign v15399_6_ce0 = v15399_6_ce0_local;
assign v15399_7_address0 = zext_ln20016_fu_1260_p1;
assign v15399_7_ce0 = v15399_7_ce0_local;
assign v15399_address0 = zext_ln20016_fu_1260_p1;
assign v15399_ce0 = v15399_ce0_local;
assign v15400_10_address0 = zext_ln20185_5_reg_2046_pp0_iter5_reg;
assign v15400_10_ce0 = v15400_10_ce0_local;
assign v15400_10_d0 = select_ln20082_fu_1430_p3;
assign v15400_10_we0 = v15400_10_we0_local;
assign v15400_11_address0 = zext_ln20185_5_reg_2046_pp0_iter5_reg;
assign v15400_11_ce0 = v15400_11_ce0_local;
assign v15400_11_d0 = select_ln20071_fu_1410_p3;
assign v15400_11_we0 = v15400_11_we0_local;
assign v15400_12_address0 = zext_ln20185_5_reg_2046_pp0_iter5_reg;
assign v15400_12_ce0 = v15400_12_ce0_local;
assign v15400_12_d0 = select_ln20060_fu_1390_p3;
assign v15400_12_we0 = v15400_12_we0_local;
assign v15400_13_address0 = zext_ln20185_5_reg_2046_pp0_iter5_reg;
assign v15400_13_ce0 = v15400_13_ce0_local;
assign v15400_13_d0 = select_ln20049_fu_1370_p3;
assign v15400_13_we0 = v15400_13_we0_local;
assign v15400_14_address0 = zext_ln20185_5_reg_2046_pp0_iter5_reg;
assign v15400_14_ce0 = v15400_14_ce0_local;
assign v15400_14_d0 = select_ln20038_fu_1350_p3;
assign v15400_14_we0 = v15400_14_we0_local;
assign v15400_15_address0 = zext_ln20185_5_reg_2046_pp0_iter5_reg;
assign v15400_15_ce0 = v15400_15_ce0_local;
assign v15400_15_d0 = select_ln20027_fu_1330_p3;
assign v15400_15_we0 = v15400_15_we0_local;
assign v15400_1_address0 = zext_ln20185_5_reg_2046_pp0_iter5_reg;
assign v15400_1_ce0 = v15400_1_ce0_local;
assign v15400_1_d0 = select_ln20175_fu_1610_p3;
assign v15400_1_we0 = v15400_1_we0_local;
assign v15400_2_address0 = zext_ln20185_5_reg_2046_pp0_iter5_reg;
assign v15400_2_ce0 = v15400_2_ce0_local;
assign v15400_2_d0 = select_ln20165_fu_1590_p3;
assign v15400_2_we0 = v15400_2_we0_local;
assign v15400_3_address0 = zext_ln20185_5_reg_2046_pp0_iter5_reg;
assign v15400_3_ce0 = v15400_3_ce0_local;
assign v15400_3_d0 = select_ln20155_fu_1570_p3;
assign v15400_3_we0 = v15400_3_we0_local;
assign v15400_4_address0 = zext_ln20185_5_reg_2046_pp0_iter5_reg;
assign v15400_4_ce0 = v15400_4_ce0_local;
assign v15400_4_d0 = select_ln20145_fu_1550_p3;
assign v15400_4_we0 = v15400_4_we0_local;
assign v15400_5_address0 = zext_ln20185_5_reg_2046_pp0_iter5_reg;
assign v15400_5_ce0 = v15400_5_ce0_local;
assign v15400_5_d0 = select_ln20135_fu_1530_p3;
assign v15400_5_we0 = v15400_5_we0_local;
assign v15400_6_address0 = zext_ln20185_5_reg_2046_pp0_iter5_reg;
assign v15400_6_ce0 = v15400_6_ce0_local;
assign v15400_6_d0 = select_ln20125_fu_1510_p3;
assign v15400_6_we0 = v15400_6_we0_local;
assign v15400_7_address0 = zext_ln20185_5_reg_2046_pp0_iter5_reg;
assign v15400_7_ce0 = v15400_7_ce0_local;
assign v15400_7_d0 = select_ln20115_fu_1490_p3;
assign v15400_7_we0 = v15400_7_we0_local;
assign v15400_8_address0 = zext_ln20185_5_reg_2046_pp0_iter5_reg;
assign v15400_8_ce0 = v15400_8_ce0_local;
assign v15400_8_d0 = select_ln20104_fu_1470_p3;
assign v15400_8_we0 = v15400_8_we0_local;
assign v15400_9_address0 = zext_ln20185_5_reg_2046_pp0_iter5_reg;
assign v15400_9_ce0 = v15400_9_ce0_local;
assign v15400_9_d0 = select_ln20093_fu_1450_p3;
assign v15400_9_we0 = v15400_9_we0_local;
assign v15400_address0 = zext_ln20185_5_reg_2046_pp0_iter5_reg;
assign v15400_ce0 = v15400_ce0_local;
assign v15400_d0 = select_ln20185_fu_1630_p3;
assign v15400_we0 = v15400_we0_local;
assign v15623_0_address0 = p_cast7_fu_1221_p1;
assign v15623_1_address0 = p_cast8_fu_1225_p1;
assign xor_ln20012_fu_1019_p2 = (icmp_ln20013255_reg_792 ^ 1'd1);
assign zext_ln20016_fu_1260_p1 = add_ln20016_fu_1254_p2;
assign zext_ln20185_1_fu_1229_p1 = lshr_ln10_reg_1901;
assign zext_ln20185_2_fu_1272_p1 = add_ln20185_reg_1928_pp0_iter3_reg;
assign zext_ln20185_3_fu_1251_p1 = lshr_ln11_reg_1907;
assign zext_ln20185_4_fu_1288_p1 = lshr_ln11_reg_1907_pp0_iter3_reg;
assign zext_ln20185_5_fu_1297_p1 = add_ln20185_1_fu_1291_p2;
assign zext_ln20185_fu_1211_p1 = tmp_64_fu_1204_p3;
assign zext_ln20266_1_cast_fu_818_p1 = zext_ln20266_1;
assign zext_ln20266_cast_fu_814_p1 = zext_ln20266;
always @ (posedge ap_clk) begin
    zext_ln20266_cast_reg_1852[8:2] <= 7'b0000000;
    zext_ln20266_1_cast_reg_1858[7:2] <= 6'b000000;
    zext_ln20185_5_reg_2046[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln20185_5_reg_2046_pp0_iter5_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
end
endmodule 
