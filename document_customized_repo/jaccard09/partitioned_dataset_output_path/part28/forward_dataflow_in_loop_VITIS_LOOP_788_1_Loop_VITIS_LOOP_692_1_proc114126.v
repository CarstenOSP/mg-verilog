
module forward_dataflow_in_loop_VITIS_LOOP_788_1_Loop_VITIS_LOOP_692_1_proc114126 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v367_address0,v367_ce0,v367_we0,v367_d0,v367_1_address0,v367_1_ce0,v367_1_we0,v367_1_d0,v367_2_address0,v367_2_ce0,v367_2_we0,v367_2_d0,v367_3_address0,v367_3_ce0,v367_3_we0,v367_3_d0,v367_4_address0,v367_4_ce0,v367_4_we0,v367_4_d0,v367_5_address0,v367_5_ce0,v367_5_we0,v367_5_d0,v367_6_address0,v367_6_ce0,v367_6_we0,v367_6_d0,v367_7_address0,v367_7_ce0,v367_7_we0,v367_7_d0,v367_8_address0,v367_8_ce0,v367_8_we0,v367_8_d0,v367_9_address0,v367_9_ce0,v367_9_we0,v367_9_d0,v367_10_address0,v367_10_ce0,v367_10_we0,v367_10_d0,v367_11_address0,v367_11_ce0,v367_11_we0,v367_11_d0,v367_12_address0,v367_12_ce0,v367_12_we0,v367_12_d0,v367_13_address0,v367_13_ce0,v367_13_we0,v367_13_d0,v367_14_address0,v367_14_ce0,v367_14_we0,v367_14_d0,v367_15_address0,v367_15_ce0,v367_15_we0,v367_15_d0,v362,v13692_0_0_0_address0,v13692_0_0_0_ce0,v13692_0_0_0_q0,v13692_0_0_1_address0,v13692_0_0_1_ce0,v13692_0_0_1_q0,v13692_0_1_0_address0,v13692_0_1_0_ce0,v13692_0_1_0_q0,v13692_0_1_1_address0,v13692_0_1_1_ce0,v13692_0_1_1_q0,v13692_1_0_0_address0,v13692_1_0_0_ce0,v13692_1_0_0_q0,v13692_1_0_1_address0,v13692_1_0_1_ce0,v13692_1_0_1_q0,v13692_1_1_0_address0,v13692_1_1_0_ce0,v13692_1_1_0_q0,v13692_1_1_1_address0,v13692_1_1_1_ce0,v13692_1_1_1_q0,v13692_2_0_0_address0,v13692_2_0_0_ce0,v13692_2_0_0_q0,v13692_2_0_1_address0,v13692_2_0_1_ce0,v13692_2_0_1_q0,v13692_2_1_0_address0,v13692_2_1_0_ce0,v13692_2_1_0_q0,v13692_2_1_1_address0,v13692_2_1_1_ce0,v13692_2_1_1_q0,v13692_3_0_0_address0,v13692_3_0_0_ce0,v13692_3_0_0_q0,v13692_3_0_1_address0,v13692_3_0_1_ce0,v13692_3_0_1_q0,v13692_3_1_0_address0,v13692_3_1_0_ce0,v13692_3_1_0_q0,v13692_3_1_1_address0,v13692_3_1_1_ce0,v13692_3_1_1_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [10:0] v367_address0;
output   v367_ce0;
output   v367_we0;
output  [7:0] v367_d0;
output  [10:0] v367_1_address0;
output   v367_1_ce0;
output   v367_1_we0;
output  [7:0] v367_1_d0;
output  [10:0] v367_2_address0;
output   v367_2_ce0;
output   v367_2_we0;
output  [7:0] v367_2_d0;
output  [10:0] v367_3_address0;
output   v367_3_ce0;
output   v367_3_we0;
output  [7:0] v367_3_d0;
output  [10:0] v367_4_address0;
output   v367_4_ce0;
output   v367_4_we0;
output  [7:0] v367_4_d0;
output  [10:0] v367_5_address0;
output   v367_5_ce0;
output   v367_5_we0;
output  [7:0] v367_5_d0;
output  [10:0] v367_6_address0;
output   v367_6_ce0;
output   v367_6_we0;
output  [7:0] v367_6_d0;
output  [10:0] v367_7_address0;
output   v367_7_ce0;
output   v367_7_we0;
output  [7:0] v367_7_d0;
output  [10:0] v367_8_address0;
output   v367_8_ce0;
output   v367_8_we0;
output  [7:0] v367_8_d0;
output  [10:0] v367_9_address0;
output   v367_9_ce0;
output   v367_9_we0;
output  [7:0] v367_9_d0;
output  [10:0] v367_10_address0;
output   v367_10_ce0;
output   v367_10_we0;
output  [7:0] v367_10_d0;
output  [10:0] v367_11_address0;
output   v367_11_ce0;
output   v367_11_we0;
output  [7:0] v367_11_d0;
output  [10:0] v367_12_address0;
output   v367_12_ce0;
output   v367_12_we0;
output  [7:0] v367_12_d0;
output  [10:0] v367_13_address0;
output   v367_13_ce0;
output   v367_13_we0;
output  [7:0] v367_13_d0;
output  [10:0] v367_14_address0;
output   v367_14_ce0;
output   v367_14_we0;
output  [7:0] v367_14_d0;
output  [10:0] v367_15_address0;
output   v367_15_ce0;
output   v367_15_we0;
output  [7:0] v367_15_d0;
input  [9:0] v362;
output  [20:0] v13692_0_0_0_address0;
output   v13692_0_0_0_ce0;
input  [7:0] v13692_0_0_0_q0;
output  [20:0] v13692_0_0_1_address0;
output   v13692_0_0_1_ce0;
input  [7:0] v13692_0_0_1_q0;
output  [20:0] v13692_0_1_0_address0;
output   v13692_0_1_0_ce0;
input  [7:0] v13692_0_1_0_q0;
output  [20:0] v13692_0_1_1_address0;
output   v13692_0_1_1_ce0;
input  [7:0] v13692_0_1_1_q0;
output  [20:0] v13692_1_0_0_address0;
output   v13692_1_0_0_ce0;
input  [7:0] v13692_1_0_0_q0;
output  [20:0] v13692_1_0_1_address0;
output   v13692_1_0_1_ce0;
input  [7:0] v13692_1_0_1_q0;
output  [20:0] v13692_1_1_0_address0;
output   v13692_1_1_0_ce0;
input  [7:0] v13692_1_1_0_q0;
output  [20:0] v13692_1_1_1_address0;
output   v13692_1_1_1_ce0;
input  [7:0] v13692_1_1_1_q0;
output  [20:0] v13692_2_0_0_address0;
output   v13692_2_0_0_ce0;
input  [7:0] v13692_2_0_0_q0;
output  [20:0] v13692_2_0_1_address0;
output   v13692_2_0_1_ce0;
input  [7:0] v13692_2_0_1_q0;
output  [20:0] v13692_2_1_0_address0;
output   v13692_2_1_0_ce0;
input  [7:0] v13692_2_1_0_q0;
output  [20:0] v13692_2_1_1_address0;
output   v13692_2_1_1_ce0;
input  [7:0] v13692_2_1_1_q0;
output  [20:0] v13692_3_0_0_address0;
output   v13692_3_0_0_ce0;
input  [7:0] v13692_3_0_0_q0;
output  [20:0] v13692_3_0_1_address0;
output   v13692_3_0_1_ce0;
input  [7:0] v13692_3_0_1_q0;
output  [20:0] v13692_3_1_0_address0;
output   v13692_3_1_0_ce0;
input  [7:0] v13692_3_1_0_q0;
output  [20:0] v13692_3_1_1_address0;
output   v13692_3_1_1_ce0;
input  [7:0] v13692_3_1_1_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln692_fu_1035_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_loop_exit_ready_delayed;
wire   [5:0] shl_ln_i_fu_716_p3;
reg   [5:0] shl_ln_i_reg_1834;
wire   [4:0] tmp_136_i_fu_724_p4;
reg   [4:0] tmp_136_i_reg_1839;
wire   [10:0] div7_cast_i_i_fu_742_p1;
reg   [10:0] div7_cast_i_i_reg_1847;
wire   [4:0] zext_ln750_cast_i_cast_fu_754_p3;
reg   [4:0] zext_ln750_cast_i_cast_reg_1852;
wire   [3:0] select_ln791_fu_762_p3;
reg   [3:0] select_ln791_reg_1857;
wire   [2:0] zext_ln750_5_cast_cast_i_cast_cast_fu_778_p3;
reg   [2:0] zext_ln750_5_cast_cast_i_cast_cast_reg_1862;
reg   [2:0] zext_ln750_5_cast_cast_i_cast_cast_reg_1862_pp0_iter1_reg;
wire   [0:0] empty_185_fu_885_p2;
reg   [0:0] empty_185_reg_1867;
wire   [0:0] icmp_ln695_mid211_i_fu_903_p2;
reg   [0:0] icmp_ln695_mid211_i_reg_1872;
wire   [5:0] select_ln693_fu_909_p3;
reg   [5:0] select_ln693_reg_1877;
wire   [1:0] v328_mid2_i_fu_929_p3;
reg   [1:0] v328_mid2_i_reg_1882;
reg   [1:0] v328_mid2_i_reg_1882_pp0_iter1_reg;
reg   [3:0] lshr_ln_i_reg_1888;
reg   [3:0] lshr_ln_i_reg_1888_pp0_iter1_reg;
reg   [5:0] tmp_138_i_reg_1895;
reg   [3:0] lshr_ln8_i_reg_1902;
reg   [3:0] lshr_ln8_i_reg_1902_pp0_iter1_reg;
wire   [0:0] icmp_ln695_fu_1017_p2;
reg   [0:0] icmp_ln695_reg_1912;
wire   [0:0] icmp_ln694_fu_1023_p2;
reg   [0:0] icmp_ln694_reg_1917;
wire   [0:0] icmp_ln693_fu_1029_p2;
reg   [0:0] icmp_ln693_reg_1922;
reg   [0:0] icmp_ln692_reg_1927;
wire   [2:0] lshr_ln9_i_fu_1281_p4;
reg   [2:0] lshr_ln9_i_reg_1931;
wire   [18:0] add_ln698_1_fu_1309_p2;
reg   [18:0] add_ln698_1_reg_1936;
wire   [17:0] trunc_ln698_fu_1315_p1;
reg   [17:0] trunc_ln698_reg_1941;
wire   [18:0] add_ln702_1_fu_1319_p2;
reg   [18:0] add_ln702_1_reg_1946;
wire   [17:0] trunc_ln702_fu_1325_p1;
reg   [17:0] trunc_ln702_reg_1951;
wire   [18:0] add_ln706_1_fu_1329_p2;
reg   [18:0] add_ln706_1_reg_1956;
wire   [17:0] trunc_ln706_fu_1335_p1;
reg   [17:0] trunc_ln706_reg_1961;
wire   [18:0] add_ln710_2_fu_1339_p2;
reg   [18:0] add_ln710_2_reg_1966;
wire   [17:0] trunc_ln710_fu_1345_p1;
reg   [17:0] trunc_ln710_reg_1971;
wire   [18:0] add_ln700_fu_1363_p2;
reg   [18:0] add_ln700_reg_1976;
wire   [17:0] trunc_ln700_fu_1369_p1;
reg   [17:0] trunc_ln700_reg_1981;
wire   [18:0] add_ln704_fu_1373_p2;
reg   [18:0] add_ln704_reg_1986;
wire   [17:0] trunc_ln704_fu_1379_p1;
reg   [17:0] trunc_ln704_reg_1991;
wire   [18:0] add_ln708_fu_1383_p2;
reg   [18:0] add_ln708_reg_1996;
wire   [17:0] trunc_ln708_fu_1389_p1;
reg   [17:0] trunc_ln708_reg_2001;
wire   [18:0] add_ln712_fu_1393_p2;
reg   [18:0] add_ln712_reg_2006;
wire   [17:0] trunc_ln712_fu_1399_p1;
reg   [17:0] trunc_ln712_reg_2011;
wire   [10:0] add_ln728_2_fu_1652_p2;
reg   [10:0] add_ln728_2_reg_2016;
reg   [0:0] ap_phi_mux_icmp_ln693199_i_phi_fu_673_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln694198_i_phi_fu_683_p4;
reg   [0:0] ap_phi_mux_icmp_ln695197_i_phi_fu_693_p4;
wire   [63:0] zext_ln698_5_fu_1676_p1;
wire   [63:0] zext_ln700_2_fu_1687_p1;
wire   [63:0] zext_ln702_2_fu_1698_p1;
wire   [63:0] zext_ln704_1_fu_1709_p1;
wire   [63:0] zext_ln706_3_fu_1720_p1;
wire   [63:0] zext_ln708_1_fu_1733_p1;
wire   [63:0] zext_ln710_2_fu_1746_p1;
wire   [63:0] zext_ln712_1_fu_1759_p1;
wire   [63:0] zext_ln728_4_fu_1766_p1;
reg   [10:0] indvar_flatten35190_i_fu_204;
wire   [10:0] add_ln692_1_fu_1011_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten35190_i_load;
reg   [5:0] v325191_i_fu_208;
wire   [5:0] select_ln692_1_fu_871_p3;
reg   [5:0] ap_sig_allocacmp_v325191_i_load;
reg   [8:0] indvar_flatten12192_i_fu_212;
wire   [8:0] select_ln693_1_fu_1003_p3;
reg   [8:0] ap_sig_allocacmp_indvar_flatten12192_i_load;
reg   [5:0] v326193_i_fu_216;
reg   [5:0] ap_sig_allocacmp_v326193_i_load;
reg   [4:0] indvar_flatten194_i_fu_220;
wire   [4:0] select_ln694_1_fu_989_p3;
reg   [4:0] ap_sig_allocacmp_indvar_flatten194_i_load;
reg   [3:0] v327195_i_fu_224;
wire   [3:0] select_ln694_fu_1087_p3;
reg   [1:0] v328196_i_fu_228;
wire   [1:0] add_ln695_fu_977_p2;
reg   [1:0] ap_sig_allocacmp_v328196_i_load;
reg    v13692_0_0_0_ce0_local;
reg    v13692_0_0_1_ce0_local;
reg    v13692_0_1_0_ce0_local;
reg    v13692_0_1_1_ce0_local;
reg    v13692_1_0_0_ce0_local;
reg    v13692_1_0_1_ce0_local;
reg    v13692_1_1_0_ce0_local;
reg    v13692_1_1_1_ce0_local;
reg    v13692_2_0_0_ce0_local;
reg    v13692_2_0_1_ce0_local;
reg    v13692_2_1_0_ce0_local;
reg    v13692_2_1_1_ce0_local;
reg    v13692_3_0_0_ce0_local;
reg    v13692_3_0_1_ce0_local;
reg    v13692_3_1_0_ce0_local;
reg    v13692_3_1_1_ce0_local;
reg    v367_15_we0_local;
reg    v367_15_ce0_local;
reg    v367_14_we0_local;
reg    v367_14_ce0_local;
reg    v367_13_we0_local;
reg    v367_13_ce0_local;
reg    v367_12_we0_local;
reg    v367_12_ce0_local;
reg    v367_11_we0_local;
reg    v367_11_ce0_local;
reg    v367_10_we0_local;
reg    v367_10_ce0_local;
reg    v367_9_we0_local;
reg    v367_9_ce0_local;
reg    v367_8_we0_local;
reg    v367_8_ce0_local;
reg    v367_7_we0_local;
reg    v367_7_ce0_local;
reg    v367_6_we0_local;
reg    v367_6_ce0_local;
reg    v367_5_we0_local;
reg    v367_5_ce0_local;
reg    v367_4_we0_local;
reg    v367_4_ce0_local;
reg    v367_3_we0_local;
reg    v367_3_ce0_local;
reg    v367_2_we0_local;
reg    v367_2_ce0_local;
reg    v367_1_we0_local;
reg    v367_1_ce0_local;
reg    v367_we0_local;
reg    v367_ce0_local;
wire   [2:0] empty_fu_704_p1;
wire   [9:0] div7_i_i_fu_734_p3;
wire   [10:0] v362_cast1_fu_700_p1;
wire   [0:0] tmp_fu_746_p3;
wire   [0:0] tmp_111_fu_770_p3;
wire   [0:0] xor_ln692_fu_853_p2;
wire   [5:0] add_ln692_fu_839_p2;
wire   [5:0] select_ln692_fu_845_p3;
wire   [0:0] and_ln692_1_fu_865_p2;
wire   [0:0] exitcond_flatten_not_i_fu_891_p2;
wire   [0:0] and_ln692_fu_859_p2;
wire   [0:0] not_exitcond_flatten_mid234_i_fu_897_p2;
wire   [5:0] add_ln693_fu_879_p2;
wire   [0:0] empty_186_fu_917_p2;
wire   [0:0] empty_187_fu_923_p2;
wire   [7:0] rem_i_i_fu_708_p3;
wire   [7:0] zext_ln692_fu_937_p1;
wire   [7:0] empty_188_fu_951_p2;
wire   [4:0] add_ln694_2_fu_983_p2;
wire   [8:0] add_ln693_1_fu_997_p2;
wire   [3:0] v327_mid26_i_fu_1074_p3;
wire   [3:0] add_ln694_fu_1081_p2;
wire   [5:0] zext_ln692_1_fu_1094_p1;
wire   [5:0] empty_189_fu_1097_p2;
wire   [14:0] tmp_137_i_fu_1102_p3;
wire   [14:0] tmp_139_i_fu_1114_p3;
wire   [10:0] zext_ln693_1_fu_1125_p1;
wire   [17:0] tmp_113_fu_1133_p5;
wire   [15:0] tmp_114_fu_1147_p5;
wire   [18:0] zext_ln698_fu_1143_p1;
wire   [18:0] zext_ln698_1_fu_1157_p1;
wire   [17:0] tmp_115_fu_1167_p5;
wire   [15:0] tmp_116_fu_1180_p5;
wire   [18:0] zext_ln706_fu_1176_p1;
wire   [18:0] zext_ln706_1_fu_1189_p1;
wire   [10:0] empty_190_fu_1128_p2;
wire   [9:0] tmp_146_i_fu_1199_p4;
wire   [15:0] tmp_137_i_cast_fu_1110_p1;
wire   [15:0] zext_ln702_fu_1209_p1;
wire   [15:0] add_ln702_fu_1213_p2;
wire   [16:0] tmp_118_fu_1227_p3;
wire   [18:0] tmp_117_fu_1219_p3;
wire   [18:0] zext_ln710_fu_1235_p1;
wire   [15:0] zext_ln693_fu_1121_p1;
wire   [15:0] add_ln710_1_fu_1245_p2;
wire   [16:0] tmp_120_fu_1259_p3;
wire   [18:0] tmp_119_fu_1251_p3;
wire   [18:0] zext_ln694_fu_1267_p1;
wire   [4:0] zext_ln694_1_fu_1277_p1;
wire   [3:0] zext_ln694_2_fu_1291_p1;
wire   [3:0] empty_192_fu_1300_p2;
wire   [18:0] add_ln698_fu_1161_p2;
wire   [18:0] zext_ln698_2_fu_1305_p1;
wire   [18:0] add_ln710_fu_1239_p2;
wire   [18:0] add_ln706_fu_1193_p2;
wire   [18:0] add_ln694_1_fu_1271_p2;
wire   [4:0] empty_191_fu_1295_p2;
wire   [3:0] tmp_147_i_fu_1349_p4;
wire   [18:0] zext_ln700_fu_1359_p1;
wire   [7:0] tmp_141_i_fu_1408_p3;
wire   [9:0] tmp_112_fu_1418_p4;
wire   [10:0] zext_ln728_1_fu_1426_p1;
wire   [10:0] zext_ln728_fu_1414_p1;
wire   [10:0] add_ln728_fu_1430_p2;
wire   [10:0] zext_ln728_2_fu_1436_p1;
wire   [10:0] add_ln728_1_fu_1439_p2;
wire   [10:0] shl_ln728_fu_1445_p2;
wire   [19:0] tmp_121_fu_1457_p3;
wire   [20:0] tmp_122_fu_1464_p3;
wire   [20:0] zext_ln698_3_fu_1471_p1;
wire   [19:0] tmp_123_fu_1481_p3;
wire   [20:0] tmp_124_fu_1488_p3;
wire   [20:0] zext_ln702_1_fu_1495_p1;
wire   [19:0] tmp_125_fu_1505_p3;
wire   [20:0] tmp_126_fu_1512_p3;
wire   [20:0] zext_ln706_2_fu_1519_p1;
wire   [19:0] tmp_127_fu_1529_p3;
wire   [20:0] tmp_128_fu_1536_p3;
wire   [20:0] zext_ln710_1_fu_1543_p1;
wire   [19:0] tmp_129_fu_1553_p3;
wire   [20:0] tmp_130_fu_1560_p3;
wire   [20:0] zext_ln700_1_fu_1567_p1;
wire   [19:0] tmp_131_fu_1577_p3;
wire   [20:0] tmp_132_fu_1584_p3;
wire   [20:0] zext_ln704_fu_1591_p1;
wire   [19:0] tmp_133_fu_1601_p3;
wire   [20:0] tmp_134_fu_1608_p3;
wire   [20:0] zext_ln708_fu_1615_p1;
wire   [19:0] tmp_135_fu_1625_p3;
wire   [20:0] tmp_136_fu_1632_p3;
wire   [20:0] zext_ln712_fu_1639_p1;
wire   [10:0] sub_ln728_fu_1451_p2;
wire   [10:0] zext_ln728_3_fu_1649_p1;
wire   [2:0] zext_ln695_fu_1658_p1;
wire   [2:0] add_ln697_fu_1661_p2;
wire   [20:0] sub_ln702_fu_1475_p2;
wire   [20:0] zext_ln698_4_fu_1666_p1;
wire   [20:0] add_ln698_2_fu_1670_p2;
wire   [20:0] sub_ln704_fu_1571_p2;
wire   [20:0] add_ln700_1_fu_1681_p2;
wire   [20:0] sub_ln706_fu_1499_p2;
wire   [20:0] add_ln702_2_fu_1692_p2;
wire   [20:0] sub_ln708_fu_1595_p2;
wire   [20:0] add_ln704_1_fu_1703_p2;
wire   [20:0] sub_ln710_fu_1523_p2;
wire   [20:0] add_ln706_2_fu_1714_p2;
wire   [20:0] sub_ln712_fu_1619_p2;
wire   [20:0] add_ln708_1_fu_1727_p2;
wire   [20:0] sub_ln710_1_fu_1547_p2;
wire   [20:0] add_ln710_3_fu_1740_p2;
wire   [20:0] sub_ln695_fu_1643_p2;
wire   [20:0] add_ln712_1_fu_1753_p2;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1247;
reg    ap_condition_317;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten35190_i_fu_204 = 11'd0;
#0 v325191_i_fu_208 = 6'd0;
#0 indvar_flatten12192_i_fu_212 = 9'd0;
#0 v326193_i_fu_216 = 6'd0;
#0 indvar_flatten194_i_fu_220 = 5'd0;
#0 v327195_i_fu_224 = 4'd0;
#0 v328196_i_fu_228 = 2'd0;
end
forward_flow_control_loop_delay_pipe flow_control_loop_delay_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(ap_continue),.ap_loop_exit_ready_delayed(ap_loop_exit_ready_delayed));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_317)) begin
        indvar_flatten12192_i_fu_212 <= select_ln693_1_fu_1003_p3;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_317)) begin
    indvar_flatten194_i_fu_220 <= select_ln694_1_fu_989_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_317)) begin
    indvar_flatten35190_i_fu_204 <= add_ln692_1_fu_1011_p2;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_317)) begin
    v325191_i_fu_208 <= select_ln692_1_fu_871_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_317)) begin
    v326193_i_fu_216 <= select_ln693_fu_909_p3;
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1))) begin
        v327195_i_fu_224 <= 4'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v327195_i_fu_224 <= select_ln694_fu_1087_p3;
    end
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_317)) begin
    v328196_i_fu_228 <= add_ln695_fu_977_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln698_1_reg_1936 <= add_ln698_1_fu_1309_p2;
        add_ln700_reg_1976 <= add_ln700_fu_1363_p2;
        add_ln702_1_reg_1946 <= add_ln702_1_fu_1319_p2;
        add_ln704_reg_1986 <= add_ln704_fu_1373_p2;
        add_ln706_1_reg_1956 <= add_ln706_1_fu_1329_p2;
        add_ln708_reg_1996 <= add_ln708_fu_1383_p2;
        add_ln710_2_reg_1966 <= add_ln710_2_fu_1339_p2;
        add_ln712_reg_2006 <= add_ln712_fu_1393_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        div7_cast_i_i_reg_1847[9 : 5] <= div7_cast_i_i_fu_742_p1[9 : 5];
        empty_185_reg_1867 <= empty_185_fu_885_p2;
        icmp_ln692_reg_1927 <= icmp_ln692_fu_1035_p2;
        icmp_ln695_mid211_i_reg_1872 <= icmp_ln695_mid211_i_fu_903_p2;
        lshr_ln8_i_reg_1902 <= {{select_ln693_fu_909_p3[4:1]}};
        lshr_ln8_i_reg_1902_pp0_iter1_reg <= lshr_ln8_i_reg_1902;
        lshr_ln9_i_reg_1931 <= {{select_ln694_fu_1087_p3[3:1]}};
        lshr_ln_i_reg_1888 <= {{select_ln692_1_fu_871_p3[5:2]}};
        lshr_ln_i_reg_1888_pp0_iter1_reg <= lshr_ln_i_reg_1888;
        select_ln693_reg_1877 <= select_ln693_fu_909_p3;
        select_ln791_reg_1857[0] <= select_ln791_fu_762_p3[0];
select_ln791_reg_1857[2] <= select_ln791_fu_762_p3[2];
        shl_ln_i_reg_1834[5 : 3] <= shl_ln_i_fu_716_p3[5 : 3];
        tmp_136_i_reg_1839 <= {{v362[9:5]}};
        tmp_138_i_reg_1895 <= {{empty_188_fu_951_p2[7:2]}};
        trunc_ln698_reg_1941 <= trunc_ln698_fu_1315_p1;
        trunc_ln700_reg_1981 <= trunc_ln700_fu_1369_p1;
        trunc_ln702_reg_1951 <= trunc_ln702_fu_1325_p1;
        trunc_ln704_reg_1991 <= trunc_ln704_fu_1379_p1;
        trunc_ln706_reg_1961 <= trunc_ln706_fu_1335_p1;
        trunc_ln708_reg_2001 <= trunc_ln708_fu_1389_p1;
        trunc_ln710_reg_1971 <= trunc_ln710_fu_1345_p1;
        trunc_ln712_reg_2011 <= trunc_ln712_fu_1399_p1;
        v328_mid2_i_reg_1882 <= v328_mid2_i_fu_929_p3;
        v328_mid2_i_reg_1882_pp0_iter1_reg <= v328_mid2_i_reg_1882;
        zext_ln750_5_cast_cast_i_cast_cast_reg_1862[1 : 0] <= zext_ln750_5_cast_cast_i_cast_cast_fu_778_p3[1 : 0];
        zext_ln750_5_cast_cast_i_cast_cast_reg_1862_pp0_iter1_reg[1 : 0] <= zext_ln750_5_cast_cast_i_cast_cast_reg_1862[1 : 0];
        zext_ln750_cast_i_cast_reg_1852[1] <= zext_ln750_cast_i_cast_fu_754_p3[1];
zext_ln750_cast_i_cast_reg_1852[3] <= zext_ln750_cast_i_cast_fu_754_p3[3];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln728_2_reg_2016 <= add_ln728_2_fu_1652_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln693_reg_1922 <= icmp_ln693_fu_1029_p2;
        icmp_ln694_reg_1917 <= icmp_ln694_fu_1023_p2;
        icmp_ln695_reg_1912 <= icmp_ln695_fu_1017_p2;
    end
end
always @ (*) begin
    if (((icmp_ln692_fu_1035_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1247)) begin
            ap_phi_mux_icmp_ln693199_i_phi_fu_673_p4 = icmp_ln693_reg_1922;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln693199_i_phi_fu_673_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln693199_i_phi_fu_673_p4 = icmp_ln693_reg_1922;
        end
    end else begin
        ap_phi_mux_icmp_ln693199_i_phi_fu_673_p4 = icmp_ln693_reg_1922;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1247)) begin
            ap_phi_mux_icmp_ln694198_i_phi_fu_683_p4 = icmp_ln694_reg_1917;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln694198_i_phi_fu_683_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln694198_i_phi_fu_683_p4 = icmp_ln694_reg_1917;
        end
    end else begin
        ap_phi_mux_icmp_ln694198_i_phi_fu_683_p4 = icmp_ln694_reg_1917;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1247)) begin
            ap_phi_mux_icmp_ln695197_i_phi_fu_693_p4 = icmp_ln695_reg_1912;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln695197_i_phi_fu_693_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln695197_i_phi_fu_693_p4 = icmp_ln695_reg_1912;
        end
    end else begin
        ap_phi_mux_icmp_ln695197_i_phi_fu_693_p4 = icmp_ln695_reg_1912;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten12192_i_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12192_i_load = indvar_flatten12192_i_fu_212;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten194_i_load = 5'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten194_i_load = indvar_flatten194_i_fu_220;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten35190_i_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten35190_i_load = indvar_flatten35190_i_fu_204;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v325191_i_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v325191_i_load = v325191_i_fu_208;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v326193_i_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v326193_i_load = v326193_i_fu_216;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v328196_i_load = 2'd0;
    end else begin
        ap_sig_allocacmp_v328196_i_load = v328196_i_fu_228;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13692_0_0_0_ce0_local = 1'b1;
    end else begin
        v13692_0_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13692_0_0_1_ce0_local = 1'b1;
    end else begin
        v13692_0_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13692_0_1_0_ce0_local = 1'b1;
    end else begin
        v13692_0_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13692_0_1_1_ce0_local = 1'b1;
    end else begin
        v13692_0_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13692_1_0_0_ce0_local = 1'b1;
    end else begin
        v13692_1_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13692_1_0_1_ce0_local = 1'b1;
    end else begin
        v13692_1_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13692_1_1_0_ce0_local = 1'b1;
    end else begin
        v13692_1_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13692_1_1_1_ce0_local = 1'b1;
    end else begin
        v13692_1_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13692_2_0_0_ce0_local = 1'b1;
    end else begin
        v13692_2_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13692_2_0_1_ce0_local = 1'b1;
    end else begin
        v13692_2_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13692_2_1_0_ce0_local = 1'b1;
    end else begin
        v13692_2_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13692_2_1_1_ce0_local = 1'b1;
    end else begin
        v13692_2_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13692_3_0_0_ce0_local = 1'b1;
    end else begin
        v13692_3_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13692_3_0_1_ce0_local = 1'b1;
    end else begin
        v13692_3_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13692_3_1_0_ce0_local = 1'b1;
    end else begin
        v13692_3_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13692_3_1_1_ce0_local = 1'b1;
    end else begin
        v13692_3_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v367_10_ce0_local = 1'b1;
    end else begin
        v367_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v367_10_we0_local = 1'b1;
    end else begin
        v367_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v367_11_ce0_local = 1'b1;
    end else begin
        v367_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v367_11_we0_local = 1'b1;
    end else begin
        v367_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v367_12_ce0_local = 1'b1;
    end else begin
        v367_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v367_12_we0_local = 1'b1;
    end else begin
        v367_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v367_13_ce0_local = 1'b1;
    end else begin
        v367_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v367_13_we0_local = 1'b1;
    end else begin
        v367_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v367_14_ce0_local = 1'b1;
    end else begin
        v367_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v367_14_we0_local = 1'b1;
    end else begin
        v367_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v367_15_ce0_local = 1'b1;
    end else begin
        v367_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v367_15_we0_local = 1'b1;
    end else begin
        v367_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v367_1_ce0_local = 1'b1;
    end else begin
        v367_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v367_1_we0_local = 1'b1;
    end else begin
        v367_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v367_2_ce0_local = 1'b1;
    end else begin
        v367_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v367_2_we0_local = 1'b1;
    end else begin
        v367_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v367_3_ce0_local = 1'b1;
    end else begin
        v367_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v367_3_we0_local = 1'b1;
    end else begin
        v367_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v367_4_ce0_local = 1'b1;
    end else begin
        v367_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v367_4_we0_local = 1'b1;
    end else begin
        v367_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v367_5_ce0_local = 1'b1;
    end else begin
        v367_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v367_5_we0_local = 1'b1;
    end else begin
        v367_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v367_6_ce0_local = 1'b1;
    end else begin
        v367_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v367_6_we0_local = 1'b1;
    end else begin
        v367_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v367_7_ce0_local = 1'b1;
    end else begin
        v367_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v367_7_we0_local = 1'b1;
    end else begin
        v367_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v367_8_ce0_local = 1'b1;
    end else begin
        v367_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v367_8_we0_local = 1'b1;
    end else begin
        v367_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v367_9_ce0_local = 1'b1;
    end else begin
        v367_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v367_9_we0_local = 1'b1;
    end else begin
        v367_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v367_ce0_local = 1'b1;
    end else begin
        v367_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v367_we0_local = 1'b1;
    end else begin
        v367_we0_local = 1'b0;
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
assign add_ln692_1_fu_1011_p2 = (ap_sig_allocacmp_indvar_flatten35190_i_load + 11'd1);
assign add_ln692_fu_839_p2 = (ap_sig_allocacmp_v325191_i_load + 6'd4);
assign add_ln693_1_fu_997_p2 = (ap_sig_allocacmp_indvar_flatten12192_i_load + 9'd1);
assign add_ln693_fu_879_p2 = (select_ln692_fu_845_p3 + 6'd2);
assign add_ln694_1_fu_1271_p2 = (tmp_119_fu_1251_p3 + zext_ln694_fu_1267_p1);
assign add_ln694_2_fu_983_p2 = (ap_sig_allocacmp_indvar_flatten194_i_load + 5'd1);
assign add_ln694_fu_1081_p2 = (v327_mid26_i_fu_1074_p3 + 4'd2);
assign add_ln695_fu_977_p2 = (v328_mid2_i_fu_929_p3 + 2'd1);
assign add_ln697_fu_1661_p2 = (zext_ln750_5_cast_cast_i_cast_cast_reg_1862_pp0_iter1_reg + zext_ln695_fu_1658_p1);
assign add_ln698_1_fu_1309_p2 = (add_ln698_fu_1161_p2 + zext_ln698_2_fu_1305_p1);
assign add_ln698_2_fu_1670_p2 = (sub_ln702_fu_1475_p2 + zext_ln698_4_fu_1666_p1);
assign add_ln698_fu_1161_p2 = (zext_ln698_fu_1143_p1 + zext_ln698_1_fu_1157_p1);
assign add_ln700_1_fu_1681_p2 = (sub_ln704_fu_1571_p2 + zext_ln698_4_fu_1666_p1);
assign add_ln700_fu_1363_p2 = (add_ln698_fu_1161_p2 + zext_ln700_fu_1359_p1);
assign add_ln702_1_fu_1319_p2 = (add_ln710_fu_1239_p2 + zext_ln698_2_fu_1305_p1);
assign add_ln702_2_fu_1692_p2 = (sub_ln706_fu_1499_p2 + zext_ln698_4_fu_1666_p1);
assign add_ln702_fu_1213_p2 = (tmp_137_i_cast_fu_1110_p1 + zext_ln702_fu_1209_p1);
assign add_ln704_1_fu_1703_p2 = (sub_ln708_fu_1595_p2 + zext_ln698_4_fu_1666_p1);
assign add_ln704_fu_1373_p2 = (add_ln710_fu_1239_p2 + zext_ln700_fu_1359_p1);
assign add_ln706_1_fu_1329_p2 = (add_ln706_fu_1193_p2 + zext_ln698_2_fu_1305_p1);
assign add_ln706_2_fu_1714_p2 = (sub_ln710_fu_1523_p2 + zext_ln698_4_fu_1666_p1);
assign add_ln706_fu_1193_p2 = (zext_ln706_fu_1176_p1 + zext_ln706_1_fu_1189_p1);
assign add_ln708_1_fu_1727_p2 = (sub_ln712_fu_1619_p2 + zext_ln698_4_fu_1666_p1);
assign add_ln708_fu_1383_p2 = (add_ln706_fu_1193_p2 + zext_ln700_fu_1359_p1);
assign add_ln710_1_fu_1245_p2 = (zext_ln693_fu_1121_p1 + zext_ln702_fu_1209_p1);
assign add_ln710_2_fu_1339_p2 = (add_ln694_1_fu_1271_p2 + zext_ln698_2_fu_1305_p1);
assign add_ln710_3_fu_1740_p2 = (sub_ln710_1_fu_1547_p2 + zext_ln698_4_fu_1666_p1);
assign add_ln710_fu_1239_p2 = (tmp_117_fu_1219_p3 + zext_ln710_fu_1235_p1);
assign add_ln712_1_fu_1753_p2 = (sub_ln695_fu_1643_p2 + zext_ln698_4_fu_1666_p1);
assign add_ln712_fu_1393_p2 = (add_ln694_1_fu_1271_p2 + zext_ln700_fu_1359_p1);
assign add_ln728_1_fu_1439_p2 = (add_ln728_fu_1430_p2 + zext_ln728_2_fu_1436_p1);
assign add_ln728_2_fu_1652_p2 = (sub_ln728_fu_1451_p2 + zext_ln728_3_fu_1649_p1);
assign add_ln728_fu_1430_p2 = (zext_ln728_1_fu_1426_p1 + zext_ln728_fu_1414_p1);
assign and_ln692_1_fu_865_p2 = (xor_ln692_fu_853_p2 & ap_phi_mux_icmp_ln694198_i_phi_fu_683_p4);
assign and_ln692_fu_859_p2 = (xor_ln692_fu_853_p2 & ap_phi_mux_icmp_ln695197_i_phi_fu_693_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end
always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_done_reg == 1'b1);
end
always @ (*) begin
    ap_condition_1247 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln692_reg_1927 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_317 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign div7_cast_i_i_fu_742_p1 = div7_i_i_fu_734_p3;
assign div7_i_i_fu_734_p3 = {{tmp_136_i_fu_724_p4}, {5'd0}};
assign empty_185_fu_885_p2 = (ap_phi_mux_icmp_ln693199_i_phi_fu_673_p4 | and_ln692_1_fu_865_p2);
assign empty_186_fu_917_p2 = (icmp_ln695_mid211_i_fu_903_p2 | and_ln692_1_fu_865_p2);
assign empty_187_fu_923_p2 = (empty_186_fu_917_p2 | ap_phi_mux_icmp_ln693199_i_phi_fu_673_p4);
assign empty_188_fu_951_p2 = (rem_i_i_fu_708_p3 + zext_ln692_fu_937_p1);
assign empty_189_fu_1097_p2 = (zext_ln692_1_fu_1094_p1 + shl_ln_i_reg_1834);
assign empty_190_fu_1128_p2 = (div7_cast_i_i_reg_1847 + zext_ln693_1_fu_1125_p1);
assign empty_191_fu_1295_p2 = (zext_ln750_cast_i_cast_reg_1852 + zext_ln694_1_fu_1277_p1);
assign empty_192_fu_1300_p2 = (zext_ln694_2_fu_1291_p1 + select_ln791_reg_1857);
assign empty_fu_704_p1 = v362[2:0];
assign exitcond_flatten_not_i_fu_891_p2 = (ap_phi_mux_icmp_ln694198_i_phi_fu_683_p4 ^ 1'd1);
assign icmp_ln692_fu_1035_p2 = ((ap_sig_allocacmp_indvar_flatten35190_i_load == 11'd1919) ? 1'b1 : 1'b0);
assign icmp_ln693_fu_1029_p2 = ((select_ln693_1_fu_1003_p3 == 9'd240) ? 1'b1 : 1'b0);
assign icmp_ln694_fu_1023_p2 = ((select_ln694_1_fu_989_p3 == 5'd15) ? 1'b1 : 1'b0);
assign icmp_ln695_fu_1017_p2 = ((add_ln695_fu_977_p2 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln695_mid211_i_fu_903_p2 = (not_exitcond_flatten_mid234_i_fu_897_p2 & and_ln692_fu_859_p2);
assign lshr_ln9_i_fu_1281_p4 = {{select_ln694_fu_1087_p3[3:1]}};
assign not_exitcond_flatten_mid234_i_fu_897_p2 = (exitcond_flatten_not_i_fu_891_p2 | ap_phi_mux_icmp_ln693199_i_phi_fu_673_p4);
assign rem_i_i_fu_708_p3 = {{empty_fu_704_p1}, {5'd0}};
assign select_ln692_1_fu_871_p3 = ((ap_phi_mux_icmp_ln693199_i_phi_fu_673_p4[0:0] == 1'b1) ? add_ln692_fu_839_p2 : ap_sig_allocacmp_v325191_i_load);
assign select_ln692_fu_845_p3 = ((ap_phi_mux_icmp_ln693199_i_phi_fu_673_p4[0:0] == 1'b1) ? 6'd0 : ap_sig_allocacmp_v326193_i_load);
assign select_ln693_1_fu_1003_p3 = ((ap_phi_mux_icmp_ln693199_i_phi_fu_673_p4[0:0] == 1'b1) ? 9'd1 : add_ln693_1_fu_997_p2);
assign select_ln693_fu_909_p3 = ((and_ln692_1_fu_865_p2[0:0] == 1'b1) ? add_ln693_fu_879_p2 : select_ln692_fu_845_p3);
assign select_ln694_1_fu_989_p3 = ((empty_185_fu_885_p2[0:0] == 1'b1) ? 5'd1 : add_ln694_2_fu_983_p2);
assign select_ln694_fu_1087_p3 = ((icmp_ln695_mid211_i_reg_1872[0:0] == 1'b1) ? add_ln694_fu_1081_p2 : v327_mid26_i_fu_1074_p3);
assign select_ln791_fu_762_p3 = ((tmp_fu_746_p3[0:0] == 1'b1) ? 4'd5 : 4'd0);
assign shl_ln728_fu_1445_p2 = add_ln728_1_fu_1439_p2 << 11'd2;
assign shl_ln_i_fu_716_p3 = {{empty_fu_704_p1}, {3'd0}};
assign sub_ln695_fu_1643_p2 = (tmp_136_fu_1632_p3 - zext_ln712_fu_1639_p1);
assign sub_ln702_fu_1475_p2 = (tmp_122_fu_1464_p3 - zext_ln698_3_fu_1471_p1);
assign sub_ln704_fu_1571_p2 = (tmp_130_fu_1560_p3 - zext_ln700_1_fu_1567_p1);
assign sub_ln706_fu_1499_p2 = (tmp_124_fu_1488_p3 - zext_ln702_1_fu_1495_p1);
assign sub_ln708_fu_1595_p2 = (tmp_132_fu_1584_p3 - zext_ln704_fu_1591_p1);
assign sub_ln710_1_fu_1547_p2 = (tmp_128_fu_1536_p3 - zext_ln710_1_fu_1543_p1);
assign sub_ln710_fu_1523_p2 = (tmp_126_fu_1512_p3 - zext_ln706_2_fu_1519_p1);
assign sub_ln712_fu_1619_p2 = (tmp_134_fu_1608_p3 - zext_ln708_fu_1615_p1);
assign sub_ln728_fu_1451_p2 = (shl_ln728_fu_1445_p2 - add_ln728_1_fu_1439_p2);
assign tmp_111_fu_770_p3 = v362_cast1_fu_700_p1[32'd3];
assign tmp_112_fu_1418_p4 = {{{lshr_ln_i_reg_1888_pp0_iter1_reg}, {lshr_ln8_i_reg_1902_pp0_iter1_reg}}, {2'd0}};
assign tmp_113_fu_1133_p5 = {{{{empty_189_fu_1097_p2}, {tmp_136_i_reg_1839}}, {lshr_ln8_i_reg_1902}}, {3'd0}};
assign tmp_114_fu_1147_p5 = {{{{empty_189_fu_1097_p2}, {tmp_136_i_reg_1839}}, {lshr_ln8_i_reg_1902}}, {1'd0}};
assign tmp_115_fu_1167_p5 = {{{{tmp_138_i_reg_1895}, {tmp_136_i_reg_1839}}, {lshr_ln8_i_reg_1902}}, {3'd0}};
assign tmp_116_fu_1180_p5 = {{{{tmp_138_i_reg_1895}, {tmp_136_i_reg_1839}}, {lshr_ln8_i_reg_1902}}, {1'd0}};
assign tmp_117_fu_1219_p3 = {{add_ln702_fu_1213_p2}, {3'd0}};
assign tmp_118_fu_1227_p3 = {{add_ln702_fu_1213_p2}, {1'd0}};
assign tmp_119_fu_1251_p3 = {{add_ln710_1_fu_1245_p2}, {3'd0}};
assign tmp_120_fu_1259_p3 = {{add_ln710_1_fu_1245_p2}, {1'd0}};
assign tmp_121_fu_1457_p3 = {{add_ln698_1_reg_1936}, {1'd0}};
assign tmp_122_fu_1464_p3 = {{trunc_ln698_reg_1941}, {3'd0}};
assign tmp_123_fu_1481_p3 = {{add_ln702_1_reg_1946}, {1'd0}};
assign tmp_124_fu_1488_p3 = {{trunc_ln702_reg_1951}, {3'd0}};
assign tmp_125_fu_1505_p3 = {{add_ln706_1_reg_1956}, {1'd0}};
assign tmp_126_fu_1512_p3 = {{trunc_ln706_reg_1961}, {3'd0}};
assign tmp_127_fu_1529_p3 = {{add_ln710_2_reg_1966}, {1'd0}};
assign tmp_128_fu_1536_p3 = {{trunc_ln710_reg_1971}, {3'd0}};
assign tmp_129_fu_1553_p3 = {{add_ln700_reg_1976}, {1'd0}};
assign tmp_130_fu_1560_p3 = {{trunc_ln700_reg_1981}, {3'd0}};
assign tmp_131_fu_1577_p3 = {{add_ln704_reg_1986}, {1'd0}};
assign tmp_132_fu_1584_p3 = {{trunc_ln704_reg_1991}, {3'd0}};
assign tmp_133_fu_1601_p3 = {{add_ln708_reg_1996}, {1'd0}};
assign tmp_134_fu_1608_p3 = {{trunc_ln708_reg_2001}, {3'd0}};
assign tmp_135_fu_1625_p3 = {{add_ln712_reg_2006}, {1'd0}};
assign tmp_136_fu_1632_p3 = {{trunc_ln712_reg_2011}, {3'd0}};
assign tmp_136_i_fu_724_p4 = {{v362[9:5]}};
assign tmp_137_i_cast_fu_1110_p1 = tmp_137_i_fu_1102_p3;
assign tmp_137_i_fu_1102_p3 = {{empty_189_fu_1097_p2}, {9'd0}};
assign tmp_139_i_fu_1114_p3 = {{tmp_138_i_reg_1895}, {9'd0}};
assign tmp_141_i_fu_1408_p3 = {{lshr_ln_i_reg_1888_pp0_iter1_reg}, {lshr_ln8_i_reg_1902_pp0_iter1_reg}};
assign tmp_146_i_fu_1199_p4 = {{empty_190_fu_1128_p2[10:1]}};
assign tmp_147_i_fu_1349_p4 = {{empty_191_fu_1295_p2[4:1]}};
assign tmp_fu_746_p3 = v362_cast1_fu_700_p1[32'd4];
assign trunc_ln698_fu_1315_p1 = add_ln698_1_fu_1309_p2[17:0];
assign trunc_ln700_fu_1369_p1 = add_ln700_fu_1363_p2[17:0];
assign trunc_ln702_fu_1325_p1 = add_ln702_1_fu_1319_p2[17:0];
assign trunc_ln704_fu_1379_p1 = add_ln704_fu_1373_p2[17:0];
assign trunc_ln706_fu_1335_p1 = add_ln706_1_fu_1329_p2[17:0];
assign trunc_ln708_fu_1389_p1 = add_ln708_fu_1383_p2[17:0];
assign trunc_ln710_fu_1345_p1 = add_ln710_2_fu_1339_p2[17:0];
assign trunc_ln712_fu_1399_p1 = add_ln712_fu_1393_p2[17:0];
assign v13692_0_0_0_address0 = zext_ln698_5_fu_1676_p1;
assign v13692_0_0_0_ce0 = v13692_0_0_0_ce0_local;
assign v13692_0_0_1_address0 = zext_ln700_2_fu_1687_p1;
assign v13692_0_0_1_ce0 = v13692_0_0_1_ce0_local;
assign v13692_0_1_0_address0 = zext_ln702_2_fu_1698_p1;
assign v13692_0_1_0_ce0 = v13692_0_1_0_ce0_local;
assign v13692_0_1_1_address0 = zext_ln704_1_fu_1709_p1;
assign v13692_0_1_1_ce0 = v13692_0_1_1_ce0_local;
assign v13692_1_0_0_address0 = zext_ln706_3_fu_1720_p1;
assign v13692_1_0_0_ce0 = v13692_1_0_0_ce0_local;
assign v13692_1_0_1_address0 = zext_ln708_1_fu_1733_p1;
assign v13692_1_0_1_ce0 = v13692_1_0_1_ce0_local;
assign v13692_1_1_0_address0 = zext_ln710_2_fu_1746_p1;
assign v13692_1_1_0_ce0 = v13692_1_1_0_ce0_local;
assign v13692_1_1_1_address0 = zext_ln712_1_fu_1759_p1;
assign v13692_1_1_1_ce0 = v13692_1_1_1_ce0_local;
assign v13692_2_0_0_address0 = zext_ln706_3_fu_1720_p1;
assign v13692_2_0_0_ce0 = v13692_2_0_0_ce0_local;
assign v13692_2_0_1_address0 = zext_ln708_1_fu_1733_p1;
assign v13692_2_0_1_ce0 = v13692_2_0_1_ce0_local;
assign v13692_2_1_0_address0 = zext_ln710_2_fu_1746_p1;
assign v13692_2_1_0_ce0 = v13692_2_1_0_ce0_local;
assign v13692_2_1_1_address0 = zext_ln712_1_fu_1759_p1;
assign v13692_2_1_1_ce0 = v13692_2_1_1_ce0_local;
assign v13692_3_0_0_address0 = zext_ln706_3_fu_1720_p1;
assign v13692_3_0_0_ce0 = v13692_3_0_0_ce0_local;
assign v13692_3_0_1_address0 = zext_ln708_1_fu_1733_p1;
assign v13692_3_0_1_ce0 = v13692_3_0_1_ce0_local;
assign v13692_3_1_0_address0 = zext_ln710_2_fu_1746_p1;
assign v13692_3_1_0_ce0 = v13692_3_1_0_ce0_local;
assign v13692_3_1_1_address0 = zext_ln712_1_fu_1759_p1;
assign v13692_3_1_1_ce0 = v13692_3_1_1_ce0_local;
assign v327_mid26_i_fu_1074_p3 = ((empty_185_reg_1867[0:0] == 1'b1) ? 4'd0 : v327195_i_fu_224);
assign v328_mid2_i_fu_929_p3 = ((empty_187_fu_923_p2[0:0] == 1'b1) ? 2'd0 : ap_sig_allocacmp_v328196_i_load);
assign v362_cast1_fu_700_p1 = v362;
assign v367_10_address0 = zext_ln728_4_fu_1766_p1;
assign v367_10_ce0 = v367_10_ce0_local;
assign v367_10_d0 = v13692_1_0_1_q0;
assign v367_10_we0 = v367_10_we0_local;
assign v367_11_address0 = zext_ln728_4_fu_1766_p1;
assign v367_11_ce0 = v367_11_ce0_local;
assign v367_11_d0 = v13692_1_0_0_q0;
assign v367_11_we0 = v367_11_we0_local;
assign v367_12_address0 = zext_ln728_4_fu_1766_p1;
assign v367_12_ce0 = v367_12_ce0_local;
assign v367_12_d0 = v13692_0_1_1_q0;
assign v367_12_we0 = v367_12_we0_local;
assign v367_13_address0 = zext_ln728_4_fu_1766_p1;
assign v367_13_ce0 = v367_13_ce0_local;
assign v367_13_d0 = v13692_0_1_0_q0;
assign v367_13_we0 = v367_13_we0_local;
assign v367_14_address0 = zext_ln728_4_fu_1766_p1;
assign v367_14_ce0 = v367_14_ce0_local;
assign v367_14_d0 = v13692_0_0_1_q0;
assign v367_14_we0 = v367_14_we0_local;
assign v367_15_address0 = zext_ln728_4_fu_1766_p1;
assign v367_15_ce0 = v367_15_ce0_local;
assign v367_15_d0 = v13692_0_0_0_q0;
assign v367_15_we0 = v367_15_we0_local;
assign v367_1_address0 = zext_ln728_4_fu_1766_p1;
assign v367_1_ce0 = v367_1_ce0_local;
assign v367_1_d0 = v13692_3_1_0_q0;
assign v367_1_we0 = v367_1_we0_local;
assign v367_2_address0 = zext_ln728_4_fu_1766_p1;
assign v367_2_ce0 = v367_2_ce0_local;
assign v367_2_d0 = v13692_3_0_1_q0;
assign v367_2_we0 = v367_2_we0_local;
assign v367_3_address0 = zext_ln728_4_fu_1766_p1;
assign v367_3_ce0 = v367_3_ce0_local;
assign v367_3_d0 = v13692_3_0_0_q0;
assign v367_3_we0 = v367_3_we0_local;
assign v367_4_address0 = zext_ln728_4_fu_1766_p1;
assign v367_4_ce0 = v367_4_ce0_local;
assign v367_4_d0 = v13692_2_1_1_q0;
assign v367_4_we0 = v367_4_we0_local;
assign v367_5_address0 = zext_ln728_4_fu_1766_p1;
assign v367_5_ce0 = v367_5_ce0_local;
assign v367_5_d0 = v13692_2_1_0_q0;
assign v367_5_we0 = v367_5_we0_local;
assign v367_6_address0 = zext_ln728_4_fu_1766_p1;
assign v367_6_ce0 = v367_6_ce0_local;
assign v367_6_d0 = v13692_2_0_1_q0;
assign v367_6_we0 = v367_6_we0_local;
assign v367_7_address0 = zext_ln728_4_fu_1766_p1;
assign v367_7_ce0 = v367_7_ce0_local;
assign v367_7_d0 = v13692_2_0_0_q0;
assign v367_7_we0 = v367_7_we0_local;
assign v367_8_address0 = zext_ln728_4_fu_1766_p1;
assign v367_8_ce0 = v367_8_ce0_local;
assign v367_8_d0 = v13692_1_1_1_q0;
assign v367_8_we0 = v367_8_we0_local;
assign v367_9_address0 = zext_ln728_4_fu_1766_p1;
assign v367_9_ce0 = v367_9_ce0_local;
assign v367_9_d0 = v13692_1_1_0_q0;
assign v367_9_we0 = v367_9_we0_local;
assign v367_address0 = zext_ln728_4_fu_1766_p1;
assign v367_ce0 = v367_ce0_local;
assign v367_d0 = v13692_3_1_1_q0;
assign v367_we0 = v367_we0_local;
assign xor_ln692_fu_853_p2 = (ap_phi_mux_icmp_ln693199_i_phi_fu_673_p4 ^ 1'd1);
assign zext_ln692_1_fu_1094_p1 = lshr_ln_i_reg_1888;
assign zext_ln692_fu_937_p1 = select_ln692_1_fu_871_p3;
assign zext_ln693_1_fu_1125_p1 = select_ln693_reg_1877;
assign zext_ln693_fu_1121_p1 = tmp_139_i_fu_1114_p3;
assign zext_ln694_1_fu_1277_p1 = select_ln694_fu_1087_p3;
assign zext_ln694_2_fu_1291_p1 = lshr_ln9_i_fu_1281_p4;
assign zext_ln694_fu_1267_p1 = tmp_120_fu_1259_p3;
assign zext_ln695_fu_1658_p1 = v328_mid2_i_reg_1882_pp0_iter1_reg;
assign zext_ln698_1_fu_1157_p1 = tmp_114_fu_1147_p5;
assign zext_ln698_2_fu_1305_p1 = empty_192_fu_1300_p2;
assign zext_ln698_3_fu_1471_p1 = tmp_121_fu_1457_p3;
assign zext_ln698_4_fu_1666_p1 = add_ln697_fu_1661_p2;
assign zext_ln698_5_fu_1676_p1 = add_ln698_2_fu_1670_p2;
assign zext_ln698_fu_1143_p1 = tmp_113_fu_1133_p5;
assign zext_ln700_1_fu_1567_p1 = tmp_129_fu_1553_p3;
assign zext_ln700_2_fu_1687_p1 = add_ln700_1_fu_1681_p2;
assign zext_ln700_fu_1359_p1 = tmp_147_i_fu_1349_p4;
assign zext_ln702_1_fu_1495_p1 = tmp_123_fu_1481_p3;
assign zext_ln702_2_fu_1698_p1 = add_ln702_2_fu_1692_p2;
assign zext_ln702_fu_1209_p1 = tmp_146_i_fu_1199_p4;
assign zext_ln704_1_fu_1709_p1 = add_ln704_1_fu_1703_p2;
assign zext_ln704_fu_1591_p1 = tmp_131_fu_1577_p3;
assign zext_ln706_1_fu_1189_p1 = tmp_116_fu_1180_p5;
assign zext_ln706_2_fu_1519_p1 = tmp_125_fu_1505_p3;
assign zext_ln706_3_fu_1720_p1 = add_ln706_2_fu_1714_p2;
assign zext_ln706_fu_1176_p1 = tmp_115_fu_1167_p5;
assign zext_ln708_1_fu_1733_p1 = add_ln708_1_fu_1727_p2;
assign zext_ln708_fu_1615_p1 = tmp_133_fu_1601_p3;
assign zext_ln710_1_fu_1543_p1 = tmp_127_fu_1529_p3;
assign zext_ln710_2_fu_1746_p1 = add_ln710_3_fu_1740_p2;
assign zext_ln710_fu_1235_p1 = tmp_118_fu_1227_p3;
assign zext_ln712_1_fu_1759_p1 = add_ln712_1_fu_1753_p2;
assign zext_ln712_fu_1639_p1 = tmp_135_fu_1625_p3;
assign zext_ln728_1_fu_1426_p1 = tmp_112_fu_1418_p4;
assign zext_ln728_2_fu_1436_p1 = lshr_ln9_i_reg_1931;
assign zext_ln728_3_fu_1649_p1 = v328_mid2_i_reg_1882_pp0_iter1_reg;
assign zext_ln728_4_fu_1766_p1 = add_ln728_2_reg_2016;
assign zext_ln728_fu_1414_p1 = tmp_141_i_fu_1408_p3;
assign zext_ln750_5_cast_cast_i_cast_cast_fu_778_p3 = ((tmp_111_fu_770_p3[0:0] == 1'b1) ? 3'd3 : 3'd0);
assign zext_ln750_cast_i_cast_fu_754_p3 = ((tmp_fu_746_p3[0:0] == 1'b1) ? 5'd10 : 5'd0);
always @ (posedge ap_clk) begin
    shl_ln_i_reg_1834[2:0] <= 3'b000;
    div7_cast_i_i_reg_1847[4:0] <= 5'b00000;
    div7_cast_i_i_reg_1847[10] <= 1'b0;
    zext_ln750_cast_i_cast_reg_1852[0] <= 1'b0;
    zext_ln750_cast_i_cast_reg_1852[2:2] <= 1'b0;
    zext_ln750_cast_i_cast_reg_1852[4] <= 1'b0;
    select_ln791_reg_1857[1] <= 1'b0;
    select_ln791_reg_1857[3] <= 1'b0;
    zext_ln750_5_cast_cast_i_cast_cast_reg_1862[2] <= 1'b0;
    zext_ln750_5_cast_cast_i_cast_cast_reg_1862_pp0_iter1_reg[2] <= 1'b0;
end
endmodule 
