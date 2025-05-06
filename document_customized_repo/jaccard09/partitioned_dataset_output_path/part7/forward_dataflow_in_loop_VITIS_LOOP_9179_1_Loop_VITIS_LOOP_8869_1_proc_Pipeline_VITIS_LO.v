
module forward_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_8869_1_proc_Pipeline_VITIS_LO (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i38_cast_i,tmp,v5989_3_address0,v5989_3_ce0,v5989_3_q0,v5989_1_address0,v5989_1_ce0,v5989_1_q0,v5989_2_address0,v5989_2_ce0,v5989_2_q0,v5989_address0,v5989_ce0,v5989_q0,v5991_address0,v5991_ce0,v5991_we0,v5991_d0,v5991_address1,v5991_ce1,v5991_q1,v5991_1_address0,v5991_1_ce0,v5991_1_we0,v5991_1_d0,v5991_1_address1,v5991_1_ce1,v5991_1_q1,v5991_2_address0,v5991_2_ce0,v5991_2_we0,v5991_2_d0,v5991_2_address1,v5991_2_ce1,v5991_2_q1,v5991_3_address0,v5991_3_ce0,v5991_3_we0,v5991_3_d0,v5991_3_address1,v5991_3_ce1,v5991_3_q1,v5991_4_address0,v5991_4_ce0,v5991_4_we0,v5991_4_d0,v5991_4_address1,v5991_4_ce1,v5991_4_q1,v5991_5_address0,v5991_5_ce0,v5991_5_we0,v5991_5_d0,v5991_5_address1,v5991_5_ce1,v5991_5_q1,v5991_6_address0,v5991_6_ce0,v5991_6_we0,v5991_6_d0,v5991_6_address1,v5991_6_ce1,v5991_6_q1,v5991_7_address0,v5991_7_ce0,v5991_7_we0,v5991_7_d0,v5991_7_address1,v5991_7_ce1,v5991_7_q1,v5990_7_address0,v5990_7_ce0,v5990_7_q0,v5988_7_address0,v5988_7_ce0,v5988_7_q0,v5990_6_address0,v5990_6_ce0,v5990_6_q0,v5988_6_address0,v5988_6_ce0,v5988_6_q0,v5990_5_address0,v5990_5_ce0,v5990_5_q0,v5988_5_address0,v5988_5_ce0,v5988_5_q0,v5990_4_address0,v5990_4_ce0,v5990_4_q0,v5988_4_address0,v5988_4_ce0,v5988_4_q0,v5988_3_address0,v5988_3_ce0,v5988_3_q0,v5988_2_address0,v5988_2_ce0,v5988_2_q0,v5988_1_address0,v5988_1_ce0,v5988_1_q0,v5988_address0,v5988_ce0,v5988_q0,v5990_3_address0,v5990_3_ce0,v5990_3_q0,v5990_2_address0,v5990_2_ce0,v5990_2_q0,v5990_1_address0,v5990_1_ce0,v5990_1_q0,v5990_address0,v5990_ce0,v5990_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [6:0] mul_i38_cast_i;
input  [0:0] tmp;
output  [7:0] v5989_3_address0;
output   v5989_3_ce0;
input  [7:0] v5989_3_q0;
output  [7:0] v5989_1_address0;
output   v5989_1_ce0;
input  [7:0] v5989_1_q0;
output  [7:0] v5989_2_address0;
output   v5989_2_ce0;
input  [7:0] v5989_2_q0;
output  [7:0] v5989_address0;
output   v5989_ce0;
input  [7:0] v5989_q0;
output  [9:0] v5991_address0;
output   v5991_ce0;
output   v5991_we0;
output  [7:0] v5991_d0;
output  [9:0] v5991_address1;
output   v5991_ce1;
input  [7:0] v5991_q1;
output  [9:0] v5991_1_address0;
output   v5991_1_ce0;
output   v5991_1_we0;
output  [7:0] v5991_1_d0;
output  [9:0] v5991_1_address1;
output   v5991_1_ce1;
input  [7:0] v5991_1_q1;
output  [9:0] v5991_2_address0;
output   v5991_2_ce0;
output   v5991_2_we0;
output  [7:0] v5991_2_d0;
output  [9:0] v5991_2_address1;
output   v5991_2_ce1;
input  [7:0] v5991_2_q1;
output  [9:0] v5991_3_address0;
output   v5991_3_ce0;
output   v5991_3_we0;
output  [7:0] v5991_3_d0;
output  [9:0] v5991_3_address1;
output   v5991_3_ce1;
input  [7:0] v5991_3_q1;
output  [9:0] v5991_4_address0;
output   v5991_4_ce0;
output   v5991_4_we0;
output  [7:0] v5991_4_d0;
output  [9:0] v5991_4_address1;
output   v5991_4_ce1;
input  [7:0] v5991_4_q1;
output  [9:0] v5991_5_address0;
output   v5991_5_ce0;
output   v5991_5_we0;
output  [7:0] v5991_5_d0;
output  [9:0] v5991_5_address1;
output   v5991_5_ce1;
input  [7:0] v5991_5_q1;
output  [9:0] v5991_6_address0;
output   v5991_6_ce0;
output   v5991_6_we0;
output  [7:0] v5991_6_d0;
output  [9:0] v5991_6_address1;
output   v5991_6_ce1;
input  [7:0] v5991_6_q1;
output  [9:0] v5991_7_address0;
output   v5991_7_ce0;
output   v5991_7_we0;
output  [7:0] v5991_7_d0;
output  [9:0] v5991_7_address1;
output   v5991_7_ce1;
input  [7:0] v5991_7_q1;
output  [9:0] v5990_7_address0;
output   v5990_7_ce0;
input  [7:0] v5990_7_q0;
output  [9:0] v5988_7_address0;
output   v5988_7_ce0;
input  [7:0] v5988_7_q0;
output  [9:0] v5990_6_address0;
output   v5990_6_ce0;
input  [7:0] v5990_6_q0;
output  [9:0] v5988_6_address0;
output   v5988_6_ce0;
input  [7:0] v5988_6_q0;
output  [9:0] v5990_5_address0;
output   v5990_5_ce0;
input  [7:0] v5990_5_q0;
output  [9:0] v5988_5_address0;
output   v5988_5_ce0;
input  [7:0] v5988_5_q0;
output  [9:0] v5990_4_address0;
output   v5990_4_ce0;
input  [7:0] v5990_4_q0;
output  [9:0] v5988_4_address0;
output   v5988_4_ce0;
input  [7:0] v5988_4_q0;
output  [9:0] v5988_3_address0;
output   v5988_3_ce0;
input  [7:0] v5988_3_q0;
output  [9:0] v5988_2_address0;
output   v5988_2_ce0;
input  [7:0] v5988_2_q0;
output  [9:0] v5988_1_address0;
output   v5988_1_ce0;
input  [7:0] v5988_1_q0;
output  [9:0] v5988_address0;
output   v5988_ce0;
input  [7:0] v5988_q0;
output  [9:0] v5990_3_address0;
output   v5990_3_ce0;
input  [7:0] v5990_3_q0;
output  [9:0] v5990_2_address0;
output   v5990_2_ce0;
input  [7:0] v5990_2_q0;
output  [9:0] v5990_1_address0;
output   v5990_1_ce0;
input  [7:0] v5990_1_q0;
output  [9:0] v5990_address0;
output   v5990_ce0;
input  [7:0] v5990_q0;
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
reg    ap_enable_reg_pp0_iter7;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln8869_fu_694_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln8871174_reg_584;
reg   [0:0] icmp_ln8872173_reg_595;
reg   [0:0] icmp_ln8873172_reg_606;
wire    ap_block_pp0_stage0_11001;
wire  signed [7:0] mul_i38_cast_i_cast_fu_617_p1;
reg  signed [7:0] mul_i38_cast_i_cast_reg_1547;
wire   [0:0] xor_ln8869_fu_662_p2;
reg   [0:0] xor_ln8869_reg_1552;
wire   [0:0] icmp_ln8871_fu_688_p2;
reg   [0:0] icmp_ln8871_reg_1558;
reg   [0:0] icmp_ln8869_reg_1563;
reg   [0:0] icmp_ln8869_reg_1563_pp0_iter1_reg;
wire   [7:0] zext_ln8875_fu_847_p1;
reg   [7:0] zext_ln8875_reg_1567;
wire   [0:0] cmp33_i_i_fu_865_p2;
reg   [0:0] cmp33_i_i_reg_1572;
reg   [0:0] cmp33_i_i_reg_1572_pp0_iter2_reg;
reg   [0:0] cmp33_i_i_reg_1572_pp0_iter3_reg;
reg   [0:0] cmp33_i_i_reg_1572_pp0_iter4_reg;
reg   [0:0] cmp33_i_i_reg_1572_pp0_iter5_reg;
wire   [0:0] brmerge111_i_fu_900_p2;
reg   [0:0] brmerge111_i_reg_1584;
reg   [0:0] brmerge111_i_reg_1584_pp0_iter2_reg;
reg   [0:0] brmerge111_i_reg_1584_pp0_iter3_reg;
reg   [0:0] brmerge111_i_reg_1584_pp0_iter4_reg;
reg   [0:0] brmerge111_i_reg_1584_pp0_iter5_reg;
reg   [3:0] lshr_ln9_reg_1596;
wire   [2:0] lshr_ln1_fu_915_p4;
reg   [2:0] lshr_ln1_reg_1603;
wire   [7:0] add_ln8875_fu_929_p2;
reg   [7:0] add_ln8875_reg_1608;
wire   [6:0] trunc_ln8875_fu_935_p1;
reg   [6:0] trunc_ln8875_reg_1613;
reg   [2:0] lshr_ln2_reg_1618;
wire   [0:0] icmp_ln8873_fu_969_p2;
reg   [0:0] icmp_ln8873_reg_1623;
wire   [0:0] icmp_ln8872_fu_975_p2;
reg   [0:0] icmp_ln8872_reg_1628;
wire   [63:0] p_cast_fu_1034_p1;
reg   [63:0] p_cast_reg_1633;
wire   [9:0] add_ln8938_1_fu_1086_p2;
reg   [9:0] add_ln8938_1_reg_1649;
reg   [9:0] add_ln8938_1_reg_1649_pp0_iter3_reg;
reg   [9:0] add_ln8938_1_reg_1649_pp0_iter4_reg;
wire   [63:0] zext_ln8875_2_fu_1098_p1;
reg   [63:0] zext_ln8875_2_reg_1654;
reg  signed [7:0] v5781_reg_1752;
reg  signed [7:0] v5817_reg_1760;
reg  signed [7:0] v5780_reg_1768;
reg  signed [7:0] v5790_reg_1774;
reg  signed [7:0] v5799_reg_1780;
reg  signed [7:0] v5808_reg_1786;
reg   [9:0] v5991_addr_reg_1792;
reg   [9:0] v5991_addr_reg_1792_pp0_iter6_reg;
reg   [9:0] v5991_1_addr_reg_1798;
reg   [9:0] v5991_1_addr_reg_1798_pp0_iter6_reg;
reg   [9:0] v5991_2_addr_reg_1804;
reg   [9:0] v5991_2_addr_reg_1804_pp0_iter6_reg;
reg   [9:0] v5991_3_addr_reg_1810;
reg   [9:0] v5991_3_addr_reg_1810_pp0_iter6_reg;
reg   [9:0] v5991_4_addr_reg_1816;
reg   [9:0] v5991_4_addr_reg_1816_pp0_iter6_reg;
reg   [9:0] v5991_5_addr_reg_1822;
reg   [9:0] v5991_5_addr_reg_1822_pp0_iter6_reg;
reg   [9:0] v5991_6_addr_reg_1828;
reg   [9:0] v5991_6_addr_reg_1828_pp0_iter6_reg;
reg   [9:0] v5991_7_addr_reg_1834;
reg   [9:0] v5991_7_addr_reg_1834_pp0_iter6_reg;
wire   [7:0] mul_ln8880_fu_1125_p2;
wire   [7:0] mul_ln8889_fu_1129_p2;
wire   [7:0] mul_ln8898_fu_1133_p2;
wire   [7:0] mul_ln8907_fu_1137_p2;
wire   [7:0] mul_ln8916_fu_1141_p2;
wire   [7:0] mul_ln8924_fu_1145_p2;
wire   [7:0] mul_ln8932_fu_1149_p2;
wire   [7:0] mul_ln8940_fu_1153_p2;
wire   [7:0] select_ln8957_fu_1232_p3;
reg   [7:0] select_ln8957_reg_1920;
wire   [7:0] select_ln8968_fu_1258_p3;
reg   [7:0] select_ln8968_reg_1925;
wire   [7:0] select_ln8979_fu_1284_p3;
reg   [7:0] select_ln8979_reg_1930;
wire   [7:0] select_ln8990_fu_1310_p3;
reg   [7:0] select_ln8990_reg_1935;
wire   [7:0] select_ln9001_fu_1336_p3;
reg   [7:0] select_ln9001_reg_1940;
wire   [7:0] select_ln9011_fu_1362_p3;
reg   [7:0] select_ln9011_reg_1945;
wire   [7:0] select_ln9021_fu_1388_p3;
reg   [7:0] select_ln9021_reg_1950;
wire   [7:0] select_ln9031_fu_1414_p3;
reg   [7:0] select_ln9031_reg_1955;
reg   [0:0] ap_phi_mux_icmp_ln8871174_phi_fu_587_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln8872173_phi_fu_599_p4;
reg   [0:0] ap_phi_mux_icmp_ln8873172_phi_fu_610_p4;
wire   [63:0] zext_ln8938_5_fu_1106_p1;
reg   [13:0] indvar_flatten35165_fu_148;
wire   [13:0] add_ln8869_1_fu_682_p2;
reg   [13:0] ap_sig_allocacmp_indvar_flatten35165_load;
reg   [5:0] v5776166_fu_152;
wire   [5:0] v5776_fu_749_p3;
reg   [10:0] indvar_flatten12167_fu_156;
wire   [10:0] select_ln8871_1_fu_674_p3;
reg   [10:0] ap_sig_allocacmp_indvar_flatten12167_load;
reg   [5:0] v5777168_fu_160;
wire   [5:0] v5777_fu_795_p3;
reg   [5:0] indvar_flatten169_fu_164;
wire   [5:0] select_ln8872_1_fu_961_p3;
reg   [3:0] v5778170_fu_168;
wire   [3:0] v5778_fu_829_p3;
reg   [3:0] v5779171_fu_172;
wire   [3:0] v5779_fu_949_p2;
reg    v5989_2_ce0_local;
reg    v5989_ce0_local;
reg    v5990_3_ce0_local;
reg    v5990_2_ce0_local;
reg    v5990_1_ce0_local;
reg    v5990_ce0_local;
reg    v5989_3_ce0_local;
reg    v5989_1_ce0_local;
reg    v5990_7_ce0_local;
reg    v5990_6_ce0_local;
reg    v5990_5_ce0_local;
reg    v5990_4_ce0_local;
reg    v5988_7_ce0_local;
reg    v5991_7_ce1_local;
reg    v5991_7_we0_local;
reg    v5991_7_ce0_local;
reg    v5988_6_ce0_local;
reg    v5991_6_ce1_local;
reg    v5991_6_we0_local;
reg    v5991_6_ce0_local;
reg    v5988_5_ce0_local;
reg    v5991_5_ce1_local;
reg    v5991_5_we0_local;
reg    v5991_5_ce0_local;
reg    v5988_4_ce0_local;
reg    v5991_4_ce1_local;
reg    v5991_4_we0_local;
reg    v5991_4_ce0_local;
reg    v5988_3_ce0_local;
reg    v5991_3_ce1_local;
reg    v5991_3_we0_local;
reg    v5991_3_ce0_local;
reg    v5988_2_ce0_local;
reg    v5991_2_ce1_local;
reg    v5991_2_we0_local;
reg    v5991_2_ce0_local;
reg    v5988_1_ce0_local;
reg    v5991_1_ce1_local;
reg    v5991_1_we0_local;
reg    v5991_1_ce0_local;
reg    v5988_ce0_local;
reg    v5991_ce1_local;
reg    v5991_we0_local;
reg    v5991_ce0_local;
wire   [10:0] add_ln8871_1_fu_668_p2;
wire   [5:0] add_ln8869_fu_725_p2;
wire   [5:0] select_ln8869_fu_731_p3;
wire   [0:0] and_ln8869_1_fu_744_p2;
wire   [0:0] empty_fu_763_p2;
wire   [0:0] exitcond_flatten_not_fu_777_p2;
wire   [0:0] and_ln8869_fu_739_p2;
wire   [0:0] not_exitcond_flatten_mid234_fu_783_p2;
wire   [5:0] add_ln8871_fu_757_p2;
wire   [3:0] v5778_mid26_fu_769_p3;
wire   [0:0] icmp_ln8873_mid211_fu_789_p2;
wire   [0:0] empty_153_fu_809_p2;
wire   [0:0] empty_154_fu_815_p2;
wire   [3:0] add_ln8872_fu_803_p2;
wire   [4:0] lshr_ln_fu_837_p4;
wire   [7:0] p_shl_fu_851_p3;
wire   [4:0] empty_155_fu_871_p1;
wire   [5:0] v5776_cast13_cast_i_fu_875_p1;
wire   [5:0] empty_156_fu_879_p2;
wire  signed [7:0] p_cast14_i_fu_885_p1;
wire   [7:0] empty_157_fu_889_p2;
wire   [0:0] cmp262_i_not_i_fu_894_p2;
wire   [7:0] sub_ln8875_fu_859_p2;
wire   [7:0] zext_ln8938_1_fu_925_p1;
wire   [3:0] v5779_mid2_fu_821_p3;
wire   [5:0] add_ln8872_1_fu_955_p2;
wire   [6:0] p_shl19_fu_1009_p3;
wire   [6:0] zext_ln8938_fu_1006_p1;
wire   [7:0] tmp_s_fu_1022_p3;
wire   [7:0] empty_158_fu_1029_p2;
wire   [6:0] sub_ln8938_fu_1016_p2;
wire   [6:0] zext_ln8938_2_fu_1040_p1;
wire   [6:0] add_ln8938_fu_1043_p2;
wire   [9:0] p_shl18_fu_1053_p3;
wire   [9:0] zext_ln8938_3_fu_1049_p1;
wire   [9:0] tmp_29_fu_1067_p3;
wire   [9:0] zext_ln8875_1_fu_1074_p1;
wire   [9:0] sub_ln8938_1_fu_1061_p2;
wire   [9:0] zext_ln8938_4_fu_1083_p1;
wire   [9:0] sub_ln8874_fu_1077_p2;
wire   [9:0] add_ln8875_1_fu_1092_p2;
wire  signed [7:0] v5858_fu_1213_p0;
wire   [7:0] grp_fu_1421_p3;
wire   [7:0] v5784_fu_1157_p3;
(* use_dsp48 = "no" *) wire   [7:0] v5858_fu_1213_p2;
wire   [0:0] v5859_fu_1218_p2;
wire   [7:0] v5860_1_fu_1224_p3;
wire  signed [7:0] v5868_fu_1239_p0;
wire   [7:0] grp_fu_1430_p3;
wire   [7:0] v5793_fu_1164_p3;
(* use_dsp48 = "no" *) wire   [7:0] v5868_fu_1239_p2;
wire   [0:0] v5869_fu_1244_p2;
wire   [7:0] v5870_1_fu_1250_p3;
wire  signed [7:0] v5878_fu_1265_p0;
wire   [7:0] grp_fu_1439_p3;
wire   [7:0] v5802_fu_1171_p3;
(* use_dsp48 = "no" *) wire   [7:0] v5878_fu_1265_p2;
wire   [0:0] v5879_fu_1270_p2;
wire   [7:0] v5880_1_fu_1276_p3;
wire  signed [7:0] v5888_fu_1291_p0;
wire   [7:0] grp_fu_1448_p3;
wire   [7:0] v5811_fu_1178_p3;
(* use_dsp48 = "no" *) wire   [7:0] v5888_fu_1291_p2;
wire   [0:0] v5889_fu_1296_p2;
wire   [7:0] v5890_1_fu_1302_p3;
wire  signed [7:0] v5898_fu_1317_p0;
wire   [7:0] grp_fu_1457_p3;
wire   [7:0] v5820_fu_1185_p3;
(* use_dsp48 = "no" *) wire   [7:0] v5898_fu_1317_p2;
wire   [0:0] v5899_fu_1322_p2;
wire   [7:0] v5900_1_fu_1328_p3;
wire  signed [7:0] v5907_fu_1343_p0;
wire   [7:0] grp_fu_1466_p3;
wire   [7:0] v5828_fu_1192_p3;
(* use_dsp48 = "no" *) wire   [7:0] v5907_fu_1343_p2;
wire   [0:0] v5908_fu_1348_p2;
wire   [7:0] v5909_1_fu_1354_p3;
wire  signed [7:0] v5916_fu_1369_p0;
wire   [7:0] grp_fu_1475_p3;
wire   [7:0] v5836_fu_1199_p3;
(* use_dsp48 = "no" *) wire   [7:0] v5916_fu_1369_p2;
wire   [0:0] v5917_fu_1374_p2;
wire   [7:0] v5918_1_fu_1380_p3;
wire  signed [7:0] v5925_fu_1395_p0;
wire   [7:0] grp_fu_1484_p3;
wire   [7:0] v5844_fu_1206_p3;
(* use_dsp48 = "no" *) wire   [7:0] v5925_fu_1395_p2;
wire   [0:0] v5926_fu_1400_p2;
wire   [7:0] v5927_1_fu_1406_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1197;
reg    ap_condition_1202;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 indvar_flatten35165_fu_148 = 14'd0;
#0 v5776166_fu_152 = 6'd0;
#0 indvar_flatten12167_fu_156 = 11'd0;
#0 v5777168_fu_160 = 6'd0;
#0 indvar_flatten169_fu_164 = 6'd0;
#0 v5778170_fu_168 = 4'd0;
#0 v5779171_fu_172 = 4'd0;
#0 ap_done_reg = 1'b0;
end
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U5529(.din0(v5780_reg_1768),.din1(v5781_reg_1752),.dout(mul_ln8880_fu_1125_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U5530(.din0(v5790_reg_1774),.din1(v5781_reg_1752),.dout(mul_ln8889_fu_1129_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U5531(.din0(v5799_reg_1780),.din1(v5781_reg_1752),.dout(mul_ln8898_fu_1133_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U5532(.din0(v5808_reg_1786),.din1(v5781_reg_1752),.dout(mul_ln8907_fu_1137_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U5533(.din0(v5780_reg_1768),.din1(v5817_reg_1760),.dout(mul_ln8916_fu_1141_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U5534(.din0(v5790_reg_1774),.din1(v5817_reg_1760),.dout(mul_ln8924_fu_1145_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U5535(.din0(v5799_reg_1780),.din1(v5817_reg_1760),.dout(mul_ln8932_fu_1149_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U5536(.din0(v5808_reg_1786),.din1(v5817_reg_1760),.dout(mul_ln8940_fu_1153_p2));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U5537(.clk(ap_clk),.reset(ap_rst),.din0(v5990_3_q0),.din1(v5989_2_q0),.din2(mul_ln8880_fu_1125_p2),.ce(1'b1),.dout(grp_fu_1421_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U5538(.clk(ap_clk),.reset(ap_rst),.din0(v5990_2_q0),.din1(v5989_2_q0),.din2(mul_ln8889_fu_1129_p2),.ce(1'b1),.dout(grp_fu_1430_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U5539(.clk(ap_clk),.reset(ap_rst),.din0(v5990_1_q0),.din1(v5989_2_q0),.din2(mul_ln8898_fu_1133_p2),.ce(1'b1),.dout(grp_fu_1439_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U5540(.clk(ap_clk),.reset(ap_rst),.din0(v5990_q0),.din1(v5989_2_q0),.din2(mul_ln8907_fu_1137_p2),.ce(1'b1),.dout(grp_fu_1448_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U5541(.clk(ap_clk),.reset(ap_rst),.din0(v5990_3_q0),.din1(v5989_q0),.din2(mul_ln8916_fu_1141_p2),.ce(1'b1),.dout(grp_fu_1457_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U5542(.clk(ap_clk),.reset(ap_rst),.din0(v5990_2_q0),.din1(v5989_q0),.din2(mul_ln8924_fu_1145_p2),.ce(1'b1),.dout(grp_fu_1466_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U5543(.clk(ap_clk),.reset(ap_rst),.din0(v5990_1_q0),.din1(v5989_q0),.din2(mul_ln8932_fu_1149_p2),.ce(1'b1),.dout(grp_fu_1475_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U5544(.clk(ap_clk),.reset(ap_rst),.din0(v5990_q0),.din1(v5989_q0),.din2(mul_ln8940_fu_1153_p2),.ce(1'b1),.dout(grp_fu_1484_p3));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1202)) begin
            icmp_ln8871174_reg_584 <= icmp_ln8871_reg_1558;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln8871174_reg_584 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln8869_reg_1563_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        icmp_ln8872173_reg_595 <= icmp_ln8872_reg_1628;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln8872173_reg_595 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln8869_reg_1563_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        icmp_ln8873172_reg_606 <= icmp_ln8873_reg_1623;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln8873172_reg_606 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten12167_fu_156 <= select_ln8871_1_fu_674_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten12167_fu_156 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten169_fu_164 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten169_fu_164 <= select_ln8872_1_fu_961_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten35165_fu_148 <= add_ln8869_1_fu_682_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten35165_fu_148 <= 14'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v5776166_fu_152 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v5776166_fu_152 <= v5776_fu_749_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v5777168_fu_160 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v5777168_fu_160 <= v5777_fu_795_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v5778170_fu_168 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v5778170_fu_168 <= v5778_fu_829_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v5779171_fu_172 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v5779171_fu_172 <= v5779_fu_949_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln8875_reg_1608 <= add_ln8875_fu_929_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        brmerge111_i_reg_1584 <= brmerge111_i_fu_900_p2;
        cmp33_i_i_reg_1572 <= cmp33_i_i_fu_865_p2;
        icmp_ln8869_reg_1563 <= icmp_ln8869_fu_694_p2;
        icmp_ln8869_reg_1563_pp0_iter1_reg <= icmp_ln8869_reg_1563;
        lshr_ln1_reg_1603 <= {{v5778_fu_829_p3[3:1]}};
        lshr_ln2_reg_1618 <= {{v5779_mid2_fu_821_p3[3:1]}};
        lshr_ln9_reg_1596 <= {{v5777_fu_795_p3[4:1]}};
        mul_i38_cast_i_cast_reg_1547 <= mul_i38_cast_i_cast_fu_617_p1;
        trunc_ln8875_reg_1613 <= trunc_ln8875_fu_935_p1;
        xor_ln8869_reg_1552 <= xor_ln8869_fu_662_p2;
        zext_ln8875_reg_1567[4 : 0] <= zext_ln8875_fu_847_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln8938_1_reg_1649 <= add_ln8938_1_fu_1086_p2;
        add_ln8938_1_reg_1649_pp0_iter3_reg <= add_ln8938_1_reg_1649;
        add_ln8938_1_reg_1649_pp0_iter4_reg <= add_ln8938_1_reg_1649_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        brmerge111_i_reg_1584_pp0_iter2_reg <= brmerge111_i_reg_1584;
        brmerge111_i_reg_1584_pp0_iter3_reg <= brmerge111_i_reg_1584_pp0_iter2_reg;
        brmerge111_i_reg_1584_pp0_iter4_reg <= brmerge111_i_reg_1584_pp0_iter3_reg;
        brmerge111_i_reg_1584_pp0_iter5_reg <= brmerge111_i_reg_1584_pp0_iter4_reg;
        cmp33_i_i_reg_1572_pp0_iter2_reg <= cmp33_i_i_reg_1572;
        cmp33_i_i_reg_1572_pp0_iter3_reg <= cmp33_i_i_reg_1572_pp0_iter2_reg;
        cmp33_i_i_reg_1572_pp0_iter4_reg <= cmp33_i_i_reg_1572_pp0_iter3_reg;
        cmp33_i_i_reg_1572_pp0_iter5_reg <= cmp33_i_i_reg_1572_pp0_iter4_reg;
        p_cast_reg_1633[7 : 0] <= p_cast_fu_1034_p1[7 : 0];
        select_ln8957_reg_1920 <= select_ln8957_fu_1232_p3;
        select_ln8968_reg_1925 <= select_ln8968_fu_1258_p3;
        select_ln8979_reg_1930 <= select_ln8979_fu_1284_p3;
        select_ln8990_reg_1935 <= select_ln8990_fu_1310_p3;
        select_ln9001_reg_1940 <= select_ln9001_fu_1336_p3;
        select_ln9011_reg_1945 <= select_ln9011_fu_1362_p3;
        select_ln9021_reg_1950 <= select_ln9021_fu_1388_p3;
        select_ln9031_reg_1955 <= select_ln9031_fu_1414_p3;
        v5780_reg_1768 <= v5990_7_q0;
        v5781_reg_1752 <= v5989_3_q0;
        v5790_reg_1774 <= v5990_6_q0;
        v5799_reg_1780 <= v5990_5_q0;
        v5808_reg_1786 <= v5990_4_q0;
        v5817_reg_1760 <= v5989_1_q0;
        v5991_1_addr_reg_1798 <= zext_ln8938_5_fu_1106_p1;
        v5991_1_addr_reg_1798_pp0_iter6_reg <= v5991_1_addr_reg_1798;
        v5991_2_addr_reg_1804 <= zext_ln8938_5_fu_1106_p1;
        v5991_2_addr_reg_1804_pp0_iter6_reg <= v5991_2_addr_reg_1804;
        v5991_3_addr_reg_1810 <= zext_ln8938_5_fu_1106_p1;
        v5991_3_addr_reg_1810_pp0_iter6_reg <= v5991_3_addr_reg_1810;
        v5991_4_addr_reg_1816 <= zext_ln8938_5_fu_1106_p1;
        v5991_4_addr_reg_1816_pp0_iter6_reg <= v5991_4_addr_reg_1816;
        v5991_5_addr_reg_1822 <= zext_ln8938_5_fu_1106_p1;
        v5991_5_addr_reg_1822_pp0_iter6_reg <= v5991_5_addr_reg_1822;
        v5991_6_addr_reg_1828 <= zext_ln8938_5_fu_1106_p1;
        v5991_6_addr_reg_1828_pp0_iter6_reg <= v5991_6_addr_reg_1828;
        v5991_7_addr_reg_1834 <= zext_ln8938_5_fu_1106_p1;
        v5991_7_addr_reg_1834_pp0_iter6_reg <= v5991_7_addr_reg_1834;
        v5991_addr_reg_1792 <= zext_ln8938_5_fu_1106_p1;
        v5991_addr_reg_1792_pp0_iter6_reg <= v5991_addr_reg_1792;
        zext_ln8875_2_reg_1654[9 : 0] <= zext_ln8875_2_fu_1098_p1[9 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln8871_reg_1558 <= icmp_ln8871_fu_688_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln8872_reg_1628 <= icmp_ln8872_fu_975_p2;
        icmp_ln8873_reg_1623 <= icmp_ln8873_fu_969_p2;
    end
end
always @ (*) begin
    if (((icmp_ln8869_fu_694_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1197)) begin
            ap_phi_mux_icmp_ln8871174_phi_fu_587_p4 = icmp_ln8871_reg_1558;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln8871174_phi_fu_587_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln8871174_phi_fu_587_p4 = icmp_ln8871_reg_1558;
        end
    end else begin
        ap_phi_mux_icmp_ln8871174_phi_fu_587_p4 = icmp_ln8871_reg_1558;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln8869_reg_1563_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_icmp_ln8872173_phi_fu_599_p4 = icmp_ln8872_reg_1628;
    end else begin
        ap_phi_mux_icmp_ln8872173_phi_fu_599_p4 = icmp_ln8872173_reg_595;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln8869_reg_1563_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_icmp_ln8873172_phi_fu_610_p4 = icmp_ln8873_reg_1623;
    end else begin
        ap_phi_mux_icmp_ln8873172_phi_fu_610_p4 = icmp_ln8873172_reg_606;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten12167_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12167_load = indvar_flatten12167_fu_156;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten35165_load = 14'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten35165_load = indvar_flatten35165_fu_148;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5988_1_ce0_local = 1'b1;
    end else begin
        v5988_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5988_2_ce0_local = 1'b1;
    end else begin
        v5988_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5988_3_ce0_local = 1'b1;
    end else begin
        v5988_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5988_4_ce0_local = 1'b1;
    end else begin
        v5988_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5988_5_ce0_local = 1'b1;
    end else begin
        v5988_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5988_6_ce0_local = 1'b1;
    end else begin
        v5988_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5988_7_ce0_local = 1'b1;
    end else begin
        v5988_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5988_ce0_local = 1'b1;
    end else begin
        v5988_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5989_1_ce0_local = 1'b1;
    end else begin
        v5989_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5989_2_ce0_local = 1'b1;
    end else begin
        v5989_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5989_3_ce0_local = 1'b1;
    end else begin
        v5989_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5989_ce0_local = 1'b1;
    end else begin
        v5989_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5990_1_ce0_local = 1'b1;
    end else begin
        v5990_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5990_2_ce0_local = 1'b1;
    end else begin
        v5990_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5990_3_ce0_local = 1'b1;
    end else begin
        v5990_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5990_4_ce0_local = 1'b1;
    end else begin
        v5990_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5990_5_ce0_local = 1'b1;
    end else begin
        v5990_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5990_6_ce0_local = 1'b1;
    end else begin
        v5990_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5990_7_ce0_local = 1'b1;
    end else begin
        v5990_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5990_ce0_local = 1'b1;
    end else begin
        v5990_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5991_1_ce0_local = 1'b1;
    end else begin
        v5991_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5991_1_ce1_local = 1'b1;
    end else begin
        v5991_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5991_1_we0_local = 1'b1;
    end else begin
        v5991_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5991_2_ce0_local = 1'b1;
    end else begin
        v5991_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5991_2_ce1_local = 1'b1;
    end else begin
        v5991_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5991_2_we0_local = 1'b1;
    end else begin
        v5991_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5991_3_ce0_local = 1'b1;
    end else begin
        v5991_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5991_3_ce1_local = 1'b1;
    end else begin
        v5991_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5991_3_we0_local = 1'b1;
    end else begin
        v5991_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5991_4_ce0_local = 1'b1;
    end else begin
        v5991_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5991_4_ce1_local = 1'b1;
    end else begin
        v5991_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5991_4_we0_local = 1'b1;
    end else begin
        v5991_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5991_5_ce0_local = 1'b1;
    end else begin
        v5991_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5991_5_ce1_local = 1'b1;
    end else begin
        v5991_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5991_5_we0_local = 1'b1;
    end else begin
        v5991_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5991_6_ce0_local = 1'b1;
    end else begin
        v5991_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5991_6_ce1_local = 1'b1;
    end else begin
        v5991_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5991_6_we0_local = 1'b1;
    end else begin
        v5991_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5991_7_ce0_local = 1'b1;
    end else begin
        v5991_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5991_7_ce1_local = 1'b1;
    end else begin
        v5991_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5991_7_we0_local = 1'b1;
    end else begin
        v5991_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5991_ce0_local = 1'b1;
    end else begin
        v5991_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5991_ce1_local = 1'b1;
    end else begin
        v5991_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5991_we0_local = 1'b1;
    end else begin
        v5991_we0_local = 1'b0;
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
assign add_ln8869_1_fu_682_p2 = (ap_sig_allocacmp_indvar_flatten35165_load + 14'd1);
assign add_ln8869_fu_725_p2 = (v5776166_fu_152 + 6'd2);
assign add_ln8871_1_fu_668_p2 = (ap_sig_allocacmp_indvar_flatten12167_load + 11'd1);
assign add_ln8871_fu_757_p2 = (select_ln8869_fu_731_p3 + 6'd2);
assign add_ln8872_1_fu_955_p2 = (indvar_flatten169_fu_164 + 6'd1);
assign add_ln8872_fu_803_p2 = (v5778_mid26_fu_769_p3 + 4'd2);
assign add_ln8875_1_fu_1092_p2 = (sub_ln8874_fu_1077_p2 + zext_ln8938_4_fu_1083_p1);
assign add_ln8875_fu_929_p2 = (sub_ln8875_fu_859_p2 + zext_ln8938_1_fu_925_p1);
assign add_ln8938_1_fu_1086_p2 = (sub_ln8938_1_fu_1061_p2 + zext_ln8938_4_fu_1083_p1);
assign add_ln8938_fu_1043_p2 = (sub_ln8938_fu_1016_p2 + zext_ln8938_2_fu_1040_p1);
assign and_ln8869_1_fu_744_p2 = (xor_ln8869_reg_1552 & ap_phi_mux_icmp_ln8872173_phi_fu_599_p4);
assign and_ln8869_fu_739_p2 = (xor_ln8869_reg_1552 & ap_phi_mux_icmp_ln8873172_phi_fu_610_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1197 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln8869_reg_1563 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_1202 = ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln8869_reg_1563 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign brmerge111_i_fu_900_p2 = (tmp | cmp262_i_not_i_fu_894_p2);
assign cmp262_i_not_i_fu_894_p2 = ((empty_157_fu_889_p2 != 8'd193) ? 1'b1 : 1'b0);
assign cmp33_i_i_fu_865_p2 = ((v5776_fu_749_p3 == 6'd0) ? 1'b1 : 1'b0);
assign empty_153_fu_809_p2 = (icmp_ln8873_mid211_fu_789_p2 | and_ln8869_1_fu_744_p2);
assign empty_154_fu_815_p2 = (icmp_ln8871174_reg_584 | empty_153_fu_809_p2);
assign empty_155_fu_871_p1 = v5776_fu_749_p3[4:0];
assign empty_156_fu_879_p2 = (v5776_cast13_cast_i_fu_875_p1 ^ 6'd63);
assign empty_157_fu_889_p2 = ($signed(mul_i38_cast_i_cast_reg_1547) + $signed(p_cast14_i_fu_885_p1));
assign empty_158_fu_1029_p2 = (tmp_s_fu_1022_p3 + zext_ln8875_reg_1567);
assign empty_fu_763_p2 = (icmp_ln8871174_reg_584 | and_ln8869_1_fu_744_p2);
assign exitcond_flatten_not_fu_777_p2 = (ap_phi_mux_icmp_ln8872173_phi_fu_599_p4 ^ 1'd1);
assign icmp_ln8869_fu_694_p2 = ((ap_sig_allocacmp_indvar_flatten35165_load == 14'd12543) ? 1'b1 : 1'b0);
assign icmp_ln8871_fu_688_p2 = ((select_ln8871_1_fu_674_p3 == 11'd784) ? 1'b1 : 1'b0);
assign icmp_ln8872_fu_975_p2 = ((select_ln8872_1_fu_961_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln8873_fu_969_p2 = ((v5779_fu_949_p2 == 4'd14) ? 1'b1 : 1'b0);
assign icmp_ln8873_mid211_fu_789_p2 = (not_exitcond_flatten_mid234_fu_783_p2 & and_ln8869_fu_739_p2);
assign lshr_ln1_fu_915_p4 = {{v5778_fu_829_p3[3:1]}};
assign lshr_ln_fu_837_p4 = {{v5776_fu_749_p3[5:1]}};
assign mul_i38_cast_i_cast_fu_617_p1 = $signed(mul_i38_cast_i);
assign not_exitcond_flatten_mid234_fu_783_p2 = (icmp_ln8871174_reg_584 | exitcond_flatten_not_fu_777_p2);
assign p_cast14_i_fu_885_p1 = $signed(empty_156_fu_879_p2);
assign p_cast_fu_1034_p1 = empty_158_fu_1029_p2;
assign p_shl18_fu_1053_p3 = {{add_ln8938_fu_1043_p2}, {3'd0}};
assign p_shl19_fu_1009_p3 = {{lshr_ln9_reg_1596}, {3'd0}};
assign p_shl_fu_851_p3 = {{lshr_ln_fu_837_p4}, {3'd0}};
assign select_ln8869_fu_731_p3 = ((icmp_ln8871174_reg_584[0:0] == 1'b1) ? 6'd0 : v5777168_fu_160);
assign select_ln8871_1_fu_674_p3 = ((ap_phi_mux_icmp_ln8871174_phi_fu_587_p4[0:0] == 1'b1) ? 11'd1 : add_ln8871_1_fu_668_p2);
assign select_ln8872_1_fu_961_p3 = ((empty_fu_763_p2[0:0] == 1'b1) ? 6'd1 : add_ln8872_1_fu_955_p2);
assign select_ln8957_fu_1232_p3 = ((brmerge111_i_reg_1584_pp0_iter5_reg[0:0] == 1'b1) ? v5858_fu_1213_p2 : v5860_1_fu_1224_p3);
assign select_ln8968_fu_1258_p3 = ((brmerge111_i_reg_1584_pp0_iter5_reg[0:0] == 1'b1) ? v5868_fu_1239_p2 : v5870_1_fu_1250_p3);
assign select_ln8979_fu_1284_p3 = ((brmerge111_i_reg_1584_pp0_iter5_reg[0:0] == 1'b1) ? v5878_fu_1265_p2 : v5880_1_fu_1276_p3);
assign select_ln8990_fu_1310_p3 = ((brmerge111_i_reg_1584_pp0_iter5_reg[0:0] == 1'b1) ? v5888_fu_1291_p2 : v5890_1_fu_1302_p3);
assign select_ln9001_fu_1336_p3 = ((brmerge111_i_reg_1584_pp0_iter5_reg[0:0] == 1'b1) ? v5898_fu_1317_p2 : v5900_1_fu_1328_p3);
assign select_ln9011_fu_1362_p3 = ((brmerge111_i_reg_1584_pp0_iter5_reg[0:0] == 1'b1) ? v5907_fu_1343_p2 : v5909_1_fu_1354_p3);
assign select_ln9021_fu_1388_p3 = ((brmerge111_i_reg_1584_pp0_iter5_reg[0:0] == 1'b1) ? v5916_fu_1369_p2 : v5918_1_fu_1380_p3);
assign select_ln9031_fu_1414_p3 = ((brmerge111_i_reg_1584_pp0_iter5_reg[0:0] == 1'b1) ? v5925_fu_1395_p2 : v5927_1_fu_1406_p3);
assign sub_ln8874_fu_1077_p2 = (tmp_29_fu_1067_p3 - zext_ln8875_1_fu_1074_p1);
assign sub_ln8875_fu_859_p2 = (p_shl_fu_851_p3 - zext_ln8875_fu_847_p1);
assign sub_ln8938_1_fu_1061_p2 = (p_shl18_fu_1053_p3 - zext_ln8938_3_fu_1049_p1);
assign sub_ln8938_fu_1016_p2 = (p_shl19_fu_1009_p3 - zext_ln8938_fu_1006_p1);
assign tmp_29_fu_1067_p3 = {{trunc_ln8875_reg_1613}, {3'd0}};
assign tmp_s_fu_1022_p3 = {{lshr_ln9_reg_1596}, {4'd0}};
assign trunc_ln8875_fu_935_p1 = add_ln8875_fu_929_p2[6:0];
assign v5776_cast13_cast_i_fu_875_p1 = empty_155_fu_871_p1;
assign v5776_fu_749_p3 = ((icmp_ln8871174_reg_584[0:0] == 1'b1) ? add_ln8869_fu_725_p2 : v5776166_fu_152);
assign v5777_fu_795_p3 = ((and_ln8869_1_fu_744_p2[0:0] == 1'b1) ? add_ln8871_fu_757_p2 : select_ln8869_fu_731_p3);
assign v5778_fu_829_p3 = ((icmp_ln8873_mid211_fu_789_p2[0:0] == 1'b1) ? add_ln8872_fu_803_p2 : v5778_mid26_fu_769_p3);
assign v5778_mid26_fu_769_p3 = ((empty_fu_763_p2[0:0] == 1'b1) ? 4'd0 : v5778170_fu_168);
assign v5779_fu_949_p2 = (v5779_mid2_fu_821_p3 + 4'd2);
assign v5779_mid2_fu_821_p3 = ((empty_154_fu_815_p2[0:0] == 1'b1) ? 4'd0 : v5779171_fu_172);
assign v5784_fu_1157_p3 = ((cmp33_i_i_reg_1572_pp0_iter5_reg[0:0] == 1'b1) ? v5988_7_q0 : v5991_7_q1);
assign v5793_fu_1164_p3 = ((cmp33_i_i_reg_1572_pp0_iter5_reg[0:0] == 1'b1) ? v5988_6_q0 : v5991_6_q1);
assign v5802_fu_1171_p3 = ((cmp33_i_i_reg_1572_pp0_iter5_reg[0:0] == 1'b1) ? v5988_5_q0 : v5991_5_q1);
assign v5811_fu_1178_p3 = ((cmp33_i_i_reg_1572_pp0_iter5_reg[0:0] == 1'b1) ? v5988_4_q0 : v5991_4_q1);
assign v5820_fu_1185_p3 = ((cmp33_i_i_reg_1572_pp0_iter5_reg[0:0] == 1'b1) ? v5988_3_q0 : v5991_3_q1);
assign v5828_fu_1192_p3 = ((cmp33_i_i_reg_1572_pp0_iter5_reg[0:0] == 1'b1) ? v5988_2_q0 : v5991_2_q1);
assign v5836_fu_1199_p3 = ((cmp33_i_i_reg_1572_pp0_iter5_reg[0:0] == 1'b1) ? v5988_1_q0 : v5991_1_q1);
assign v5844_fu_1206_p3 = ((cmp33_i_i_reg_1572_pp0_iter5_reg[0:0] == 1'b1) ? v5988_q0 : v5991_q1);
assign v5858_fu_1213_p0 = grp_fu_1421_p3;
assign v5858_fu_1213_p2 = ($signed(v5858_fu_1213_p0) + $signed(v5784_fu_1157_p3));
assign v5859_fu_1218_p2 = (($signed(v5858_fu_1213_p2) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v5860_1_fu_1224_p3 = ((v5859_fu_1218_p2[0:0] == 1'b1) ? v5858_fu_1213_p2 : 8'd229);
assign v5868_fu_1239_p0 = grp_fu_1430_p3;
assign v5868_fu_1239_p2 = ($signed(v5868_fu_1239_p0) + $signed(v5793_fu_1164_p3));
assign v5869_fu_1244_p2 = (($signed(v5868_fu_1239_p2) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v5870_1_fu_1250_p3 = ((v5869_fu_1244_p2[0:0] == 1'b1) ? v5868_fu_1239_p2 : 8'd229);
assign v5878_fu_1265_p0 = grp_fu_1439_p3;
assign v5878_fu_1265_p2 = ($signed(v5878_fu_1265_p0) + $signed(v5802_fu_1171_p3));
assign v5879_fu_1270_p2 = (($signed(v5878_fu_1265_p2) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v5880_1_fu_1276_p3 = ((v5879_fu_1270_p2[0:0] == 1'b1) ? v5878_fu_1265_p2 : 8'd229);
assign v5888_fu_1291_p0 = grp_fu_1448_p3;
assign v5888_fu_1291_p2 = ($signed(v5888_fu_1291_p0) + $signed(v5811_fu_1178_p3));
assign v5889_fu_1296_p2 = (($signed(v5888_fu_1291_p2) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v5890_1_fu_1302_p3 = ((v5889_fu_1296_p2[0:0] == 1'b1) ? v5888_fu_1291_p2 : 8'd229);
assign v5898_fu_1317_p0 = grp_fu_1457_p3;
assign v5898_fu_1317_p2 = ($signed(v5898_fu_1317_p0) + $signed(v5820_fu_1185_p3));
assign v5899_fu_1322_p2 = (($signed(v5898_fu_1317_p2) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v5900_1_fu_1328_p3 = ((v5899_fu_1322_p2[0:0] == 1'b1) ? v5898_fu_1317_p2 : 8'd229);
assign v5907_fu_1343_p0 = grp_fu_1466_p3;
assign v5907_fu_1343_p2 = ($signed(v5907_fu_1343_p0) + $signed(v5828_fu_1192_p3));
assign v5908_fu_1348_p2 = (($signed(v5907_fu_1343_p2) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v5909_1_fu_1354_p3 = ((v5908_fu_1348_p2[0:0] == 1'b1) ? v5907_fu_1343_p2 : 8'd229);
assign v5916_fu_1369_p0 = grp_fu_1475_p3;
assign v5916_fu_1369_p2 = ($signed(v5916_fu_1369_p0) + $signed(v5836_fu_1199_p3));
assign v5917_fu_1374_p2 = (($signed(v5916_fu_1369_p2) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v5918_1_fu_1380_p3 = ((v5917_fu_1374_p2[0:0] == 1'b1) ? v5916_fu_1369_p2 : 8'd229);
assign v5925_fu_1395_p0 = grp_fu_1484_p3;
assign v5925_fu_1395_p2 = ($signed(v5925_fu_1395_p0) + $signed(v5844_fu_1206_p3));
assign v5926_fu_1400_p2 = (($signed(v5925_fu_1395_p2) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v5927_1_fu_1406_p3 = ((v5926_fu_1400_p2[0:0] == 1'b1) ? v5925_fu_1395_p2 : 8'd229);
assign v5988_1_address0 = zext_ln8938_5_fu_1106_p1;
assign v5988_1_ce0 = v5988_1_ce0_local;
assign v5988_2_address0 = zext_ln8938_5_fu_1106_p1;
assign v5988_2_ce0 = v5988_2_ce0_local;
assign v5988_3_address0 = zext_ln8938_5_fu_1106_p1;
assign v5988_3_ce0 = v5988_3_ce0_local;
assign v5988_4_address0 = zext_ln8938_5_fu_1106_p1;
assign v5988_4_ce0 = v5988_4_ce0_local;
assign v5988_5_address0 = zext_ln8938_5_fu_1106_p1;
assign v5988_5_ce0 = v5988_5_ce0_local;
assign v5988_6_address0 = zext_ln8938_5_fu_1106_p1;
assign v5988_6_ce0 = v5988_6_ce0_local;
assign v5988_7_address0 = zext_ln8938_5_fu_1106_p1;
assign v5988_7_ce0 = v5988_7_ce0_local;
assign v5988_address0 = zext_ln8938_5_fu_1106_p1;
assign v5988_ce0 = v5988_ce0_local;
assign v5989_1_address0 = p_cast_reg_1633;
assign v5989_1_ce0 = v5989_1_ce0_local;
assign v5989_2_address0 = p_cast_fu_1034_p1;
assign v5989_2_ce0 = v5989_2_ce0_local;
assign v5989_3_address0 = p_cast_reg_1633;
assign v5989_3_ce0 = v5989_3_ce0_local;
assign v5989_address0 = p_cast_fu_1034_p1;
assign v5989_ce0 = v5989_ce0_local;
assign v5990_1_address0 = zext_ln8875_2_fu_1098_p1;
assign v5990_1_ce0 = v5990_1_ce0_local;
assign v5990_2_address0 = zext_ln8875_2_fu_1098_p1;
assign v5990_2_ce0 = v5990_2_ce0_local;
assign v5990_3_address0 = zext_ln8875_2_fu_1098_p1;
assign v5990_3_ce0 = v5990_3_ce0_local;
assign v5990_4_address0 = zext_ln8875_2_reg_1654;
assign v5990_4_ce0 = v5990_4_ce0_local;
assign v5990_5_address0 = zext_ln8875_2_reg_1654;
assign v5990_5_ce0 = v5990_5_ce0_local;
assign v5990_6_address0 = zext_ln8875_2_reg_1654;
assign v5990_6_ce0 = v5990_6_ce0_local;
assign v5990_7_address0 = zext_ln8875_2_reg_1654;
assign v5990_7_ce0 = v5990_7_ce0_local;
assign v5990_address0 = zext_ln8875_2_fu_1098_p1;
assign v5990_ce0 = v5990_ce0_local;
assign v5991_1_address0 = v5991_1_addr_reg_1798_pp0_iter6_reg;
assign v5991_1_address1 = zext_ln8938_5_fu_1106_p1;
assign v5991_1_ce0 = v5991_1_ce0_local;
assign v5991_1_ce1 = v5991_1_ce1_local;
assign v5991_1_d0 = select_ln9021_reg_1950;
assign v5991_1_we0 = v5991_1_we0_local;
assign v5991_2_address0 = v5991_2_addr_reg_1804_pp0_iter6_reg;
assign v5991_2_address1 = zext_ln8938_5_fu_1106_p1;
assign v5991_2_ce0 = v5991_2_ce0_local;
assign v5991_2_ce1 = v5991_2_ce1_local;
assign v5991_2_d0 = select_ln9011_reg_1945;
assign v5991_2_we0 = v5991_2_we0_local;
assign v5991_3_address0 = v5991_3_addr_reg_1810_pp0_iter6_reg;
assign v5991_3_address1 = zext_ln8938_5_fu_1106_p1;
assign v5991_3_ce0 = v5991_3_ce0_local;
assign v5991_3_ce1 = v5991_3_ce1_local;
assign v5991_3_d0 = select_ln9001_reg_1940;
assign v5991_3_we0 = v5991_3_we0_local;
assign v5991_4_address0 = v5991_4_addr_reg_1816_pp0_iter6_reg;
assign v5991_4_address1 = zext_ln8938_5_fu_1106_p1;
assign v5991_4_ce0 = v5991_4_ce0_local;
assign v5991_4_ce1 = v5991_4_ce1_local;
assign v5991_4_d0 = select_ln8990_reg_1935;
assign v5991_4_we0 = v5991_4_we0_local;
assign v5991_5_address0 = v5991_5_addr_reg_1822_pp0_iter6_reg;
assign v5991_5_address1 = zext_ln8938_5_fu_1106_p1;
assign v5991_5_ce0 = v5991_5_ce0_local;
assign v5991_5_ce1 = v5991_5_ce1_local;
assign v5991_5_d0 = select_ln8979_reg_1930;
assign v5991_5_we0 = v5991_5_we0_local;
assign v5991_6_address0 = v5991_6_addr_reg_1828_pp0_iter6_reg;
assign v5991_6_address1 = zext_ln8938_5_fu_1106_p1;
assign v5991_6_ce0 = v5991_6_ce0_local;
assign v5991_6_ce1 = v5991_6_ce1_local;
assign v5991_6_d0 = select_ln8968_reg_1925;
assign v5991_6_we0 = v5991_6_we0_local;
assign v5991_7_address0 = v5991_7_addr_reg_1834_pp0_iter6_reg;
assign v5991_7_address1 = zext_ln8938_5_fu_1106_p1;
assign v5991_7_ce0 = v5991_7_ce0_local;
assign v5991_7_ce1 = v5991_7_ce1_local;
assign v5991_7_d0 = select_ln8957_reg_1920;
assign v5991_7_we0 = v5991_7_we0_local;
assign v5991_address0 = v5991_addr_reg_1792_pp0_iter6_reg;
assign v5991_address1 = zext_ln8938_5_fu_1106_p1;
assign v5991_ce0 = v5991_ce0_local;
assign v5991_ce1 = v5991_ce1_local;
assign v5991_d0 = select_ln9031_reg_1955;
assign v5991_we0 = v5991_we0_local;
assign xor_ln8869_fu_662_p2 = (ap_phi_mux_icmp_ln8871174_phi_fu_587_p4 ^ 1'd1);
assign zext_ln8875_1_fu_1074_p1 = add_ln8875_reg_1608;
assign zext_ln8875_2_fu_1098_p1 = add_ln8875_1_fu_1092_p2;
assign zext_ln8875_fu_847_p1 = lshr_ln_fu_837_p4;
assign zext_ln8938_1_fu_925_p1 = lshr_ln1_fu_915_p4;
assign zext_ln8938_2_fu_1040_p1 = lshr_ln1_reg_1603;
assign zext_ln8938_3_fu_1049_p1 = add_ln8938_fu_1043_p2;
assign zext_ln8938_4_fu_1083_p1 = lshr_ln2_reg_1618;
assign zext_ln8938_5_fu_1106_p1 = add_ln8938_1_reg_1649_pp0_iter4_reg;
assign zext_ln8938_fu_1006_p1 = lshr_ln9_reg_1596;
always @ (posedge ap_clk) begin
    zext_ln8875_reg_1567[7:5] <= 3'b000;
    p_cast_reg_1633[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln8875_2_reg_1654[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
end
endmodule 
