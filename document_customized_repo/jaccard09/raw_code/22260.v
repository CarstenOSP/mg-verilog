module ellpack (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,nzval_address0,nzval_ce0,nzval_q0,nzval_address1,nzval_ce1,nzval_q1,cols_address0,cols_ce0,cols_q0,cols_address1,cols_ce1,cols_q1,vec_address0,vec_ce0,vec_q0,vec_address1,vec_ce1,vec_q1,out_r_address0,out_r_ce0,out_r_we0,out_r_d0,out_r_q0,out_r_address1,out_r_ce1,out_r_we1,out_r_d1,out_r_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 10'd1;
parameter    ap_ST_fsm_pp0_stage1 = 10'd2;
parameter    ap_ST_fsm_pp0_stage2 = 10'd4;
parameter    ap_ST_fsm_pp0_stage3 = 10'd8;
parameter    ap_ST_fsm_pp0_stage4 = 10'd16;
parameter    ap_ST_fsm_pp0_stage5 = 10'd32;
parameter    ap_ST_fsm_pp0_stage6 = 10'd64;
parameter    ap_ST_fsm_pp0_stage7 = 10'd128;
parameter    ap_ST_fsm_pp0_stage8 = 10'd256;
parameter    ap_ST_fsm_pp0_stage9 = 10'd512;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] nzval_address0;
output   nzval_ce0;
input  [63:0] nzval_q0;
output  [12:0] nzval_address1;
output   nzval_ce1;
input  [63:0] nzval_q1;
output  [12:0] cols_address0;
output   cols_ce0;
input  [31:0] cols_q0;
output  [12:0] cols_address1;
output   cols_ce1;
input  [31:0] cols_q1;
output  [8:0] vec_address0;
output   vec_ce0;
input  [63:0] vec_q0;
output  [8:0] vec_address1;
output   vec_ce1;
input  [63:0] vec_q1;
output  [8:0] out_r_address0;
output   out_r_ce0;
output   out_r_we0;
output  [63:0] out_r_d0;
input  [63:0] out_r_q0;
output  [8:0] out_r_address1;
output   out_r_ce1;
output   out_r_we1;
output  [63:0] out_r_d1;
input  [63:0] out_r_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
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
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_subdone;
reg   [0:0] icmp_ln13_reg_1400;
reg    ap_condition_exit_pp0_iter0_stage9;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_660;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] reg_664;
reg   [63:0] reg_668;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_672;
reg   [63:0] reg_676;
reg   [63:0] reg_680;
wire   [63:0] grp_fu_648_p2;
reg   [63:0] reg_684;
reg   [63:0] reg_689;
reg   [8:0] out_r_addr_reg_1344;
reg   [8:0] out_r_addr_reg_1344_pp0_iter1_reg;
reg   [8:0] out_r_addr_reg_1344_pp0_iter2_reg;
reg   [8:0] out_r_addr_reg_1344_pp0_iter3_reg;
reg   [8:0] out_r_addr_reg_1344_pp0_iter4_reg;
reg   [8:0] out_r_addr_reg_1344_pp0_iter5_reg;
reg   [8:0] out_r_addr_reg_1344_pp0_iter6_reg;
reg   [8:0] out_r_addr_reg_1344_pp0_iter7_reg;
reg   [8:0] out_r_addr_reg_1344_pp0_iter8_reg;
reg   [8:0] out_r_addr_reg_1344_pp0_iter9_reg;
wire   [12:0] empty_fu_731_p2;
reg   [12:0] empty_reg_1349;
reg   [10:0] tmp_1_reg_1389;
reg   [8:0] out_r_addr_1_reg_1395;
reg   [8:0] out_r_addr_1_reg_1395_pp0_iter1_reg;
reg   [8:0] out_r_addr_1_reg_1395_pp0_iter2_reg;
reg   [8:0] out_r_addr_1_reg_1395_pp0_iter3_reg;
reg   [8:0] out_r_addr_1_reg_1395_pp0_iter4_reg;
reg   [8:0] out_r_addr_1_reg_1395_pp0_iter5_reg;
reg   [8:0] out_r_addr_1_reg_1395_pp0_iter6_reg;
reg   [8:0] out_r_addr_1_reg_1395_pp0_iter7_reg;
reg   [8:0] out_r_addr_1_reg_1395_pp0_iter8_reg;
reg   [8:0] out_r_addr_1_reg_1395_pp0_iter9_reg;
wire   [0:0] icmp_ln13_fu_806_p2;
reg   [0:0] icmp_ln13_reg_1400_pp0_iter1_reg;
reg   [0:0] icmp_ln13_reg_1400_pp0_iter2_reg;
reg   [0:0] icmp_ln13_reg_1400_pp0_iter3_reg;
reg   [0:0] icmp_ln13_reg_1400_pp0_iter4_reg;
reg   [0:0] icmp_ln13_reg_1400_pp0_iter5_reg;
reg   [0:0] icmp_ln13_reg_1400_pp0_iter6_reg;
reg   [0:0] icmp_ln13_reg_1400_pp0_iter7_reg;
reg   [0:0] icmp_ln13_reg_1400_pp0_iter8_reg;
reg   [0:0] icmp_ln13_reg_1400_pp0_iter9_reg;
reg   [63:0] out_r_load_reg_1404;
reg   [63:0] out_r_load_1_reg_1419;
wire   [63:0] bitcast_ln16_fu_883_p1;
wire   [63:0] bitcast_ln16_1_fu_888_p1;
wire   [63:0] bitcast_ln16_2_fu_893_p1;
wire   [63:0] bitcast_ln16_3_fu_898_p1;
wire   [63:0] bitcast_ln16_20_fu_953_p1;
wire   [63:0] bitcast_ln16_21_fu_958_p1;
wire   [63:0] bitcast_ln16_22_fu_963_p1;
wire   [63:0] bitcast_ln16_23_fu_968_p1;
wire   [63:0] bitcast_ln16_4_fu_989_p1;
wire   [63:0] bitcast_ln16_5_fu_994_p1;
wire   [63:0] bitcast_ln16_24_fu_1015_p1;
wire   [63:0] bitcast_ln16_25_fu_1020_p1;
wire   [63:0] bitcast_ln16_6_fu_1041_p1;
wire   [63:0] bitcast_ln16_7_fu_1046_p1;
wire   [63:0] bitcast_ln16_26_fu_1067_p1;
wire   [63:0] bitcast_ln16_27_fu_1072_p1;
wire   [63:0] bitcast_ln16_8_fu_1093_p1;
wire   [63:0] bitcast_ln16_9_fu_1098_p1;
wire   [63:0] bitcast_ln16_28_fu_1119_p1;
wire   [63:0] bitcast_ln16_29_fu_1124_p1;
wire   [63:0] bitcast_ln16_10_fu_1145_p1;
wire   [63:0] bitcast_ln16_11_fu_1150_p1;
wire   [63:0] bitcast_ln16_30_fu_1171_p1;
wire   [63:0] bitcast_ln16_31_fu_1176_p1;
wire   [63:0] grp_fu_652_p2;
reg   [63:0] Si_reg_1774;
wire   [63:0] grp_fu_656_p2;
reg   [63:0] Si_1_reg_1779;
wire   [63:0] bitcast_ln16_12_fu_1197_p1;
wire   [63:0] bitcast_ln16_13_fu_1202_p1;
wire   [63:0] bitcast_ln16_32_fu_1223_p1;
wire   [63:0] bitcast_ln16_33_fu_1228_p1;
wire   [63:0] sum_fu_1249_p1;
wire   [63:0] bitcast_ln16_14_fu_1253_p1;
wire   [63:0] bitcast_ln16_15_fu_1258_p1;
reg   [63:0] Si_10_reg_1854;
reg   [63:0] Si_11_reg_1859;
wire   [63:0] bitcast_ln16_34_fu_1268_p1;
wire   [63:0] bitcast_ln16_35_fu_1273_p1;
reg   [63:0] Si_2_reg_1879;
reg   [63:0] Si_2_reg_1879_pp0_iter2_reg;
wire   [63:0] bitcast_ln16_16_fu_1283_p1;
wire   [63:0] bitcast_ln16_17_fu_1288_p1;
wire   [63:0] sum_11_fu_1293_p1;
reg   [63:0] Si_12_reg_1899;
reg   [63:0] Si_12_reg_1899_pp0_iter2_reg;
wire   [63:0] bitcast_ln16_36_fu_1297_p1;
wire   [63:0] bitcast_ln16_37_fu_1302_p1;
reg   [63:0] Si_3_reg_1914;
reg   [63:0] Si_3_reg_1914_pp0_iter2_reg;
reg   [63:0] Si_3_reg_1914_pp0_iter3_reg;
wire   [63:0] bitcast_ln16_18_fu_1307_p1;
wire   [63:0] bitcast_ln16_19_fu_1312_p1;
reg   [63:0] Si_13_reg_1929;
reg   [63:0] Si_13_reg_1929_pp0_iter2_reg;
reg   [63:0] Si_13_reg_1929_pp0_iter3_reg;
wire   [63:0] bitcast_ln16_38_fu_1317_p1;
wire   [63:0] bitcast_ln16_39_fu_1322_p1;
reg   [63:0] Si_4_reg_1944;
reg   [63:0] Si_4_reg_1944_pp0_iter2_reg;
reg   [63:0] Si_4_reg_1944_pp0_iter3_reg;
reg   [63:0] Si_14_reg_1949;
reg   [63:0] Si_14_reg_1949_pp0_iter2_reg;
reg   [63:0] Si_14_reg_1949_pp0_iter3_reg;
reg   [63:0] Si_5_reg_1954;
reg   [63:0] Si_5_reg_1954_pp0_iter2_reg;
reg   [63:0] Si_5_reg_1954_pp0_iter3_reg;
reg   [63:0] Si_5_reg_1954_pp0_iter4_reg;
reg   [63:0] Si_15_reg_1959;
reg   [63:0] Si_15_reg_1959_pp0_iter2_reg;
reg   [63:0] Si_15_reg_1959_pp0_iter3_reg;
reg   [63:0] Si_15_reg_1959_pp0_iter4_reg;
reg   [63:0] Si_6_reg_1964;
reg   [63:0] Si_6_reg_1964_pp0_iter2_reg;
reg   [63:0] Si_6_reg_1964_pp0_iter3_reg;
reg   [63:0] Si_6_reg_1964_pp0_iter4_reg;
reg   [63:0] Si_6_reg_1964_pp0_iter5_reg;
reg   [63:0] Si_16_reg_1969;
reg   [63:0] Si_16_reg_1969_pp0_iter2_reg;
reg   [63:0] Si_16_reg_1969_pp0_iter3_reg;
reg   [63:0] Si_16_reg_1969_pp0_iter4_reg;
reg   [63:0] Si_16_reg_1969_pp0_iter5_reg;
reg   [63:0] Si_7_reg_1974;
reg   [63:0] Si_7_reg_1974_pp0_iter2_reg;
reg   [63:0] Si_7_reg_1974_pp0_iter3_reg;
reg   [63:0] Si_7_reg_1974_pp0_iter4_reg;
reg   [63:0] Si_7_reg_1974_pp0_iter5_reg;
reg   [63:0] Si_17_reg_1979;
reg   [63:0] Si_17_reg_1979_pp0_iter2_reg;
reg   [63:0] Si_17_reg_1979_pp0_iter3_reg;
reg   [63:0] Si_17_reg_1979_pp0_iter4_reg;
reg   [63:0] Si_17_reg_1979_pp0_iter5_reg;
reg   [63:0] Si_17_reg_1979_pp0_iter6_reg;
wire   [63:0] grp_fu_644_p2;
reg   [63:0] sum_1_reg_1984;
reg   [63:0] Si_8_reg_1989;
reg   [63:0] Si_8_reg_1989_pp0_iter2_reg;
reg   [63:0] Si_8_reg_1989_pp0_iter3_reg;
reg   [63:0] Si_8_reg_1989_pp0_iter4_reg;
reg   [63:0] Si_8_reg_1989_pp0_iter5_reg;
reg   [63:0] Si_8_reg_1989_pp0_iter6_reg;
reg   [63:0] Si_18_reg_1994;
reg   [63:0] Si_18_reg_1994_pp0_iter2_reg;
reg   [63:0] Si_18_reg_1994_pp0_iter3_reg;
reg   [63:0] Si_18_reg_1994_pp0_iter4_reg;
reg   [63:0] Si_18_reg_1994_pp0_iter5_reg;
reg   [63:0] Si_18_reg_1994_pp0_iter6_reg;
reg   [63:0] Si_9_reg_1999;
reg   [63:0] Si_9_reg_1999_pp0_iter2_reg;
reg   [63:0] Si_9_reg_1999_pp0_iter3_reg;
reg   [63:0] Si_9_reg_1999_pp0_iter4_reg;
reg   [63:0] Si_9_reg_1999_pp0_iter5_reg;
reg   [63:0] Si_9_reg_1999_pp0_iter6_reg;
reg   [63:0] Si_9_reg_1999_pp0_iter7_reg;
reg   [63:0] sum_12_reg_2004;
reg   [63:0] Si_19_reg_2009;
reg   [63:0] Si_19_reg_2009_pp0_iter2_reg;
reg   [63:0] Si_19_reg_2009_pp0_iter3_reg;
reg   [63:0] Si_19_reg_2009_pp0_iter4_reg;
reg   [63:0] Si_19_reg_2009_pp0_iter5_reg;
reg   [63:0] Si_19_reg_2009_pp0_iter6_reg;
reg   [63:0] Si_19_reg_2009_pp0_iter7_reg;
reg   [63:0] sum_2_reg_2014;
reg   [63:0] sum_13_reg_2019;
reg   [63:0] sum_3_reg_2024;
reg   [63:0] sum_14_reg_2029;
reg   [63:0] sum_4_reg_2034;
reg   [63:0] sum_15_reg_2039;
reg   [63:0] sum_5_reg_2044;
reg   [63:0] sum_16_reg_2049;
reg   [63:0] sum_6_reg_2054;
reg   [63:0] sum_17_reg_2059;
reg   [63:0] sum_7_reg_2064;
reg   [63:0] sum_18_reg_2069;
reg   [63:0] sum_8_reg_2074;
reg   [63:0] sum_19_reg_2079;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln13_fu_702_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln16_fu_737_p1;
wire   [63:0] zext_ln16_2_fu_761_p1;
wire   [63:0] zext_ln14_fu_795_p1;
wire   [63:0] zext_ln16_1_fu_817_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln16_3_fu_822_p1;
wire   [63:0] zext_ln16_20_fu_832_p1;
wire   [63:0] zext_ln16_22_fu_843_p1;
wire   [63:0] zext_ln16_4_fu_856_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln16_21_fu_862_p1;
wire   [63:0] zext_ln16_23_fu_867_p1;
wire   [63:0] zext_ln16_24_fu_877_p1;
wire   [63:0] zext_ln16_5_fu_903_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln16_6_fu_915_p1;
wire   [63:0] zext_ln16_25_fu_921_p1;
wire   [63:0] zext_ln16_26_fu_931_p1;
wire   [63:0] zext_ln16_7_fu_937_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln16_8_fu_947_p1;
wire   [63:0] zext_ln16_27_fu_973_p1;
wire   [63:0] zext_ln16_28_fu_983_p1;
wire   [63:0] zext_ln16_9_fu_999_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln16_10_fu_1009_p1;
wire   [63:0] zext_ln16_29_fu_1025_p1;
wire   [63:0] zext_ln16_30_fu_1035_p1;
wire   [63:0] zext_ln16_11_fu_1051_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln16_12_fu_1061_p1;
wire   [63:0] zext_ln16_31_fu_1077_p1;
wire   [63:0] zext_ln16_32_fu_1087_p1;
wire   [63:0] zext_ln16_13_fu_1103_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln16_14_fu_1113_p1;
wire   [63:0] zext_ln16_33_fu_1129_p1;
wire   [63:0] zext_ln16_34_fu_1139_p1;
wire   [63:0] zext_ln16_15_fu_1155_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln16_16_fu_1165_p1;
wire   [63:0] zext_ln16_35_fu_1181_p1;
wire   [63:0] zext_ln16_36_fu_1191_p1;
wire   [63:0] zext_ln16_17_fu_1207_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln16_18_fu_1217_p1;
wire   [63:0] zext_ln16_37_fu_1233_p1;
wire   [63:0] zext_ln16_38_fu_1243_p1;
wire   [63:0] zext_ln16_19_fu_1263_p1;
wire   [63:0] zext_ln16_39_fu_1278_p1;
reg   [8:0] i1_fu_108;
wire   [8:0] i_fu_800_p2;
wire    ap_loop_init;
reg   [8:0] ap_sig_allocacmp_i1_load;
reg    out_r_ce1_local;
reg   [8:0] out_r_address1_local;
reg    out_r_ce0_local;
reg   [8:0] out_r_address0_local;
reg    out_r_we1_local;
wire   [63:0] bitcast_ln19_fu_1327_p1;
reg    out_r_we0_local;
wire   [63:0] bitcast_ln19_1_fu_1332_p1;
reg    nzval_ce1_local;
reg   [12:0] nzval_address1_local;
reg    nzval_ce0_local;
reg   [12:0] nzval_address0_local;
reg    cols_ce1_local;
reg   [12:0] cols_address1_local;
reg    cols_ce0_local;
reg   [12:0] cols_address0_local;
reg    vec_ce1_local;
reg   [8:0] vec_address1_local;
reg    vec_ce0_local;
reg   [8:0] vec_address0_local;
reg   [63:0] grp_fu_644_p0;
reg   [63:0] grp_fu_644_p1;
reg   [63:0] grp_fu_648_p0;
reg   [63:0] grp_fu_648_p1;
reg   [63:0] grp_fu_652_p0;
reg   [63:0] grp_fu_652_p1;
reg   [63:0] grp_fu_656_p0;
reg   [63:0] grp_fu_656_p1;
wire   [11:0] tmp_2_fu_707_p3;
wire   [9:0] tmp_3_fu_719_p3;
wire   [12:0] p_shl_fu_715_p1;
wire   [12:0] p_shl2_fu_727_p1;
wire   [11:0] tmp_fu_743_p4;
wire   [12:0] or_ln_fu_753_p3;
wire   [7:0] tmp_4_fu_777_p4;
wire   [8:0] or_ln1_fu_787_p3;
wire   [12:0] empty_9_fu_827_p2;
wire   [12:0] add_ln16_6_fu_838_p2;
wire   [12:0] or_ln16_1_fu_849_p3;
wire   [12:0] add_ln16_7_fu_872_p2;
wire   [12:0] or_ln16_2_fu_908_p3;
wire   [12:0] add_ln16_8_fu_926_p2;
wire   [12:0] add_ln16_fu_942_p2;
wire   [12:0] add_ln16_9_fu_978_p2;
wire   [12:0] add_ln16_1_fu_1004_p2;
wire   [12:0] add_ln16_10_fu_1030_p2;
wire   [12:0] add_ln16_2_fu_1056_p2;
wire   [12:0] add_ln16_11_fu_1082_p2;
wire   [12:0] add_ln16_3_fu_1108_p2;
wire   [12:0] add_ln16_12_fu_1134_p2;
wire   [12:0] add_ln16_4_fu_1160_p2;
wire   [12:0] add_ln16_13_fu_1186_p2;
wire   [12:0] add_ln16_5_fu_1212_p2;
wire   [12:0] add_ln16_14_fu_1238_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter9_stage1;
reg    ap_idle_pp0_0to8;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg   [9:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to9;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_784;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i1_fu_108 = 9'd0;
#0 ap_done_reg = 1'b0;
end
ellpack_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_644_p0),.din1(grp_fu_644_p1),.ce(1'b1),.dout(grp_fu_644_p2));
ellpack_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_648_p0),.din1(grp_fu_648_p1),.ce(1'b1),.dout(grp_fu_648_p2));
ellpack_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_652_p0),.din1(grp_fu_652_p1),.ce(1'b1),.dout(grp_fu_652_p2));
ellpack_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_656_p0),.din1(grp_fu_656_p1),.ce(1'b1),.dout(grp_fu_656_p2));
ellpack_flow_control_loop_pipe flow_control_loop_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage9),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(1'b1));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter9 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter9_stage1) & (ap_idle_pp0_0to8 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter9_stage1) & (ap_idle_pp0_0to8 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter9_stage1) & (ap_idle_pp0_0to8 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter9_stage1) & (ap_idle_pp0_0to8 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter9_stage1) & (ap_idle_pp0_0to8 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter9_stage1) & (ap_idle_pp0_0to8 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter9_stage1) & (ap_idle_pp0_0to8 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter9_stage1) & (ap_idle_pp0_0to8 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b0)) | ((1'b1 == ap_condition_exit_pp0_iter9_stage1) & (ap_idle_pp0_0to8 == 1'b1)))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_784)) begin
        i1_fu_108 <= i_fu_800_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        Si_10_reg_1854 <= grp_fu_652_p2;
        Si_11_reg_1859 <= grp_fu_656_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        Si_12_reg_1899 <= grp_fu_656_p2;
        Si_2_reg_1879 <= grp_fu_652_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        Si_12_reg_1899_pp0_iter2_reg <= Si_12_reg_1899;
        Si_2_reg_1879_pp0_iter2_reg <= Si_2_reg_1879;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        Si_13_reg_1929 <= grp_fu_656_p2;
        Si_3_reg_1914 <= grp_fu_652_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        Si_13_reg_1929_pp0_iter2_reg <= Si_13_reg_1929;
        Si_13_reg_1929_pp0_iter3_reg <= Si_13_reg_1929_pp0_iter2_reg;
        Si_3_reg_1914_pp0_iter2_reg <= Si_3_reg_1914;
        Si_3_reg_1914_pp0_iter3_reg <= Si_3_reg_1914_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        Si_14_reg_1949 <= grp_fu_656_p2;
        Si_4_reg_1944 <= grp_fu_652_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        Si_14_reg_1949_pp0_iter2_reg <= Si_14_reg_1949;
        Si_14_reg_1949_pp0_iter3_reg <= Si_14_reg_1949_pp0_iter2_reg;
        Si_4_reg_1944_pp0_iter2_reg <= Si_4_reg_1944;
        Si_4_reg_1944_pp0_iter3_reg <= Si_4_reg_1944_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        Si_15_reg_1959 <= grp_fu_656_p2;
        Si_5_reg_1954 <= grp_fu_652_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        Si_15_reg_1959_pp0_iter2_reg <= Si_15_reg_1959;
        Si_15_reg_1959_pp0_iter3_reg <= Si_15_reg_1959_pp0_iter2_reg;
        Si_15_reg_1959_pp0_iter4_reg <= Si_15_reg_1959_pp0_iter3_reg;
        Si_5_reg_1954_pp0_iter2_reg <= Si_5_reg_1954;
        Si_5_reg_1954_pp0_iter3_reg <= Si_5_reg_1954_pp0_iter2_reg;
        Si_5_reg_1954_pp0_iter4_reg <= Si_5_reg_1954_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        Si_16_reg_1969 <= grp_fu_656_p2;
        Si_6_reg_1964 <= grp_fu_652_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        Si_16_reg_1969_pp0_iter2_reg <= Si_16_reg_1969;
        Si_16_reg_1969_pp0_iter3_reg <= Si_16_reg_1969_pp0_iter2_reg;
        Si_16_reg_1969_pp0_iter4_reg <= Si_16_reg_1969_pp0_iter3_reg;
        Si_16_reg_1969_pp0_iter5_reg <= Si_16_reg_1969_pp0_iter4_reg;
        Si_6_reg_1964_pp0_iter2_reg <= Si_6_reg_1964;
        Si_6_reg_1964_pp0_iter3_reg <= Si_6_reg_1964_pp0_iter2_reg;
        Si_6_reg_1964_pp0_iter4_reg <= Si_6_reg_1964_pp0_iter3_reg;
        Si_6_reg_1964_pp0_iter5_reg <= Si_6_reg_1964_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        Si_17_reg_1979 <= grp_fu_656_p2;
        Si_7_reg_1974 <= grp_fu_652_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        Si_17_reg_1979_pp0_iter2_reg <= Si_17_reg_1979;
        Si_17_reg_1979_pp0_iter3_reg <= Si_17_reg_1979_pp0_iter2_reg;
        Si_17_reg_1979_pp0_iter4_reg <= Si_17_reg_1979_pp0_iter3_reg;
        Si_17_reg_1979_pp0_iter5_reg <= Si_17_reg_1979_pp0_iter4_reg;
        Si_17_reg_1979_pp0_iter6_reg <= Si_17_reg_1979_pp0_iter5_reg;
        Si_7_reg_1974_pp0_iter2_reg <= Si_7_reg_1974;
        Si_7_reg_1974_pp0_iter3_reg <= Si_7_reg_1974_pp0_iter2_reg;
        Si_7_reg_1974_pp0_iter4_reg <= Si_7_reg_1974_pp0_iter3_reg;
        Si_7_reg_1974_pp0_iter5_reg <= Si_7_reg_1974_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        Si_18_reg_1994 <= grp_fu_656_p2;
        Si_8_reg_1989 <= grp_fu_652_p2;
        sum_1_reg_1984 <= grp_fu_644_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        Si_18_reg_1994_pp0_iter2_reg <= Si_18_reg_1994;
        Si_18_reg_1994_pp0_iter3_reg <= Si_18_reg_1994_pp0_iter2_reg;
        Si_18_reg_1994_pp0_iter4_reg <= Si_18_reg_1994_pp0_iter3_reg;
        Si_18_reg_1994_pp0_iter5_reg <= Si_18_reg_1994_pp0_iter4_reg;
        Si_18_reg_1994_pp0_iter6_reg <= Si_18_reg_1994_pp0_iter5_reg;
        Si_8_reg_1989_pp0_iter2_reg <= Si_8_reg_1989;
        Si_8_reg_1989_pp0_iter3_reg <= Si_8_reg_1989_pp0_iter2_reg;
        Si_8_reg_1989_pp0_iter4_reg <= Si_8_reg_1989_pp0_iter3_reg;
        Si_8_reg_1989_pp0_iter5_reg <= Si_8_reg_1989_pp0_iter4_reg;
        Si_8_reg_1989_pp0_iter6_reg <= Si_8_reg_1989_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        Si_19_reg_2009 <= grp_fu_656_p2;
        Si_9_reg_1999 <= grp_fu_652_p2;
        sum_12_reg_2004 <= grp_fu_644_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        Si_19_reg_2009_pp0_iter2_reg <= Si_19_reg_2009;
        Si_19_reg_2009_pp0_iter3_reg <= Si_19_reg_2009_pp0_iter2_reg;
        Si_19_reg_2009_pp0_iter4_reg <= Si_19_reg_2009_pp0_iter3_reg;
        Si_19_reg_2009_pp0_iter5_reg <= Si_19_reg_2009_pp0_iter4_reg;
        Si_19_reg_2009_pp0_iter6_reg <= Si_19_reg_2009_pp0_iter5_reg;
        Si_19_reg_2009_pp0_iter7_reg <= Si_19_reg_2009_pp0_iter6_reg;
        Si_9_reg_1999_pp0_iter2_reg <= Si_9_reg_1999;
        Si_9_reg_1999_pp0_iter3_reg <= Si_9_reg_1999_pp0_iter2_reg;
        Si_9_reg_1999_pp0_iter4_reg <= Si_9_reg_1999_pp0_iter3_reg;
        Si_9_reg_1999_pp0_iter5_reg <= Si_9_reg_1999_pp0_iter4_reg;
        Si_9_reg_1999_pp0_iter6_reg <= Si_9_reg_1999_pp0_iter5_reg;
        Si_9_reg_1999_pp0_iter7_reg <= Si_9_reg_1999_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        Si_1_reg_1779 <= grp_fu_656_p2;
        Si_reg_1774 <= grp_fu_652_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_1349[12 : 1] <= empty_fu_731_p2[12 : 1];
        icmp_ln13_reg_1400 <= icmp_ln13_fu_806_p2;
        icmp_ln13_reg_1400_pp0_iter1_reg <= icmp_ln13_reg_1400;
        icmp_ln13_reg_1400_pp0_iter2_reg <= icmp_ln13_reg_1400_pp0_iter1_reg;
        icmp_ln13_reg_1400_pp0_iter3_reg <= icmp_ln13_reg_1400_pp0_iter2_reg;
        icmp_ln13_reg_1400_pp0_iter4_reg <= icmp_ln13_reg_1400_pp0_iter3_reg;
        icmp_ln13_reg_1400_pp0_iter5_reg <= icmp_ln13_reg_1400_pp0_iter4_reg;
        icmp_ln13_reg_1400_pp0_iter6_reg <= icmp_ln13_reg_1400_pp0_iter5_reg;
        icmp_ln13_reg_1400_pp0_iter7_reg <= icmp_ln13_reg_1400_pp0_iter6_reg;
        icmp_ln13_reg_1400_pp0_iter8_reg <= icmp_ln13_reg_1400_pp0_iter7_reg;
        icmp_ln13_reg_1400_pp0_iter9_reg <= icmp_ln13_reg_1400_pp0_iter8_reg;
        out_r_addr_1_reg_1395[8 : 1] <= zext_ln14_fu_795_p1[8 : 1];
        out_r_addr_1_reg_1395_pp0_iter1_reg[8 : 1] <= out_r_addr_1_reg_1395[8 : 1];
        out_r_addr_1_reg_1395_pp0_iter2_reg[8 : 1] <= out_r_addr_1_reg_1395_pp0_iter1_reg[8 : 1];
        out_r_addr_1_reg_1395_pp0_iter3_reg[8 : 1] <= out_r_addr_1_reg_1395_pp0_iter2_reg[8 : 1];
        out_r_addr_1_reg_1395_pp0_iter4_reg[8 : 1] <= out_r_addr_1_reg_1395_pp0_iter3_reg[8 : 1];
        out_r_addr_1_reg_1395_pp0_iter5_reg[8 : 1] <= out_r_addr_1_reg_1395_pp0_iter4_reg[8 : 1];
        out_r_addr_1_reg_1395_pp0_iter6_reg[8 : 1] <= out_r_addr_1_reg_1395_pp0_iter5_reg[8 : 1];
        out_r_addr_1_reg_1395_pp0_iter7_reg[8 : 1] <= out_r_addr_1_reg_1395_pp0_iter6_reg[8 : 1];
        out_r_addr_1_reg_1395_pp0_iter8_reg[8 : 1] <= out_r_addr_1_reg_1395_pp0_iter7_reg[8 : 1];
        out_r_addr_1_reg_1395_pp0_iter9_reg[8 : 1] <= out_r_addr_1_reg_1395_pp0_iter8_reg[8 : 1];
        out_r_addr_reg_1344 <= zext_ln13_fu_702_p1;
        out_r_addr_reg_1344_pp0_iter1_reg <= out_r_addr_reg_1344;
        out_r_addr_reg_1344_pp0_iter2_reg <= out_r_addr_reg_1344_pp0_iter1_reg;
        out_r_addr_reg_1344_pp0_iter3_reg <= out_r_addr_reg_1344_pp0_iter2_reg;
        out_r_addr_reg_1344_pp0_iter4_reg <= out_r_addr_reg_1344_pp0_iter3_reg;
        out_r_addr_reg_1344_pp0_iter5_reg <= out_r_addr_reg_1344_pp0_iter4_reg;
        out_r_addr_reg_1344_pp0_iter6_reg <= out_r_addr_reg_1344_pp0_iter5_reg;
        out_r_addr_reg_1344_pp0_iter7_reg <= out_r_addr_reg_1344_pp0_iter6_reg;
        out_r_addr_reg_1344_pp0_iter8_reg <= out_r_addr_reg_1344_pp0_iter7_reg;
        out_r_addr_reg_1344_pp0_iter9_reg <= out_r_addr_reg_1344_pp0_iter8_reg;
        tmp_1_reg_1389 <= {{empty_fu_731_p2[12:2]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        out_r_load_1_reg_1419 <= out_r_q0;
        out_r_load_reg_1404 <= out_r_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_660 <= nzval_q1;
        reg_664 <= nzval_q0;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_668 <= vec_q1;
        reg_672 <= vec_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_676 <= nzval_q1;
        reg_680 <= nzval_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_684 <= grp_fu_648_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_689 <= grp_fu_648_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        sum_13_reg_2019 <= grp_fu_644_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        sum_14_reg_2029 <= grp_fu_644_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sum_15_reg_2039 <= grp_fu_644_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sum_16_reg_2049 <= grp_fu_644_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        sum_17_reg_2059 <= grp_fu_648_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        sum_18_reg_2069 <= grp_fu_648_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        sum_19_reg_2079 <= grp_fu_648_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        sum_2_reg_2014 <= grp_fu_644_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sum_3_reg_2024 <= grp_fu_644_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sum_4_reg_2034 <= grp_fu_644_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        sum_5_reg_2044 <= grp_fu_644_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        sum_6_reg_2054 <= grp_fu_648_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        sum_7_reg_2064 <= grp_fu_648_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sum_8_reg_2074 <= grp_fu_648_p2;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_1400 == 1'd0) & (1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_condition_exit_pp0_iter0_stage9 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage9 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln13_reg_1400_pp0_iter9_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter9_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter9_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to8 = 1'b1;
    end else begin
        ap_idle_pp0_0to8 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to9 = 1'b1;
    end else begin
        ap_idle_pp0_1to9 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i1_load = 9'd0;
    end else begin
        ap_sig_allocacmp_i1_load = i1_fu_108;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            cols_address0_local = zext_ln16_38_fu_1243_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            cols_address0_local = zext_ln16_36_fu_1191_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            cols_address0_local = zext_ln16_34_fu_1139_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            cols_address0_local = zext_ln16_32_fu_1087_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            cols_address0_local = zext_ln16_30_fu_1035_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            cols_address0_local = zext_ln16_28_fu_983_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            cols_address0_local = zext_ln16_26_fu_931_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            cols_address0_local = zext_ln16_24_fu_877_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            cols_address0_local = zext_ln16_22_fu_843_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            cols_address0_local = zext_ln16_2_fu_761_p1;
        end else begin
            cols_address0_local = 'bx;
        end
    end else begin
        cols_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            cols_address1_local = zext_ln16_18_fu_1217_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            cols_address1_local = zext_ln16_16_fu_1165_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            cols_address1_local = zext_ln16_14_fu_1113_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            cols_address1_local = zext_ln16_12_fu_1061_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            cols_address1_local = zext_ln16_10_fu_1009_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            cols_address1_local = zext_ln16_8_fu_947_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            cols_address1_local = zext_ln16_6_fu_915_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            cols_address1_local = zext_ln16_4_fu_856_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            cols_address1_local = zext_ln16_20_fu_832_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            cols_address1_local = zext_ln16_fu_737_p1;
        end else begin
            cols_address1_local = 'bx;
        end
    end else begin
        cols_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        cols_ce0_local = 1'b1;
    end else begin
        cols_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        cols_ce1_local = 1'b1;
    end else begin
        cols_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_644_p0 = sum_15_reg_2039;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_644_p0 = sum_4_reg_2034;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_644_p0 = sum_14_reg_2029;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_644_p0 = sum_3_reg_2024;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_644_p0 = sum_13_reg_2019;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_644_p0 = sum_2_reg_2014;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_644_p0 = sum_12_reg_2004;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_644_p0 = sum_1_reg_1984;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_644_p0 = sum_11_fu_1293_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_644_p0 = sum_fu_1249_p1;
    end else begin
        grp_fu_644_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_644_p1 = Si_14_reg_1949_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_644_p1 = Si_4_reg_1944_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_644_p1 = Si_13_reg_1929_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_644_p1 = Si_3_reg_1914_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_644_p1 = Si_12_reg_1899_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_644_p1 = Si_2_reg_1879_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_644_p1 = Si_11_reg_1859;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_644_p1 = Si_1_reg_1779;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_644_p1 = Si_10_reg_1854;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_644_p1 = Si_reg_1774;
    end else begin
        grp_fu_644_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_648_p0 = reg_689;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_648_p0 = reg_684;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_648_p0 = sum_19_reg_2079;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_648_p0 = sum_8_reg_2074;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_648_p0 = sum_18_reg_2069;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_648_p0 = sum_7_reg_2064;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_648_p0 = sum_17_reg_2059;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_648_p0 = sum_6_reg_2054;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_648_p0 = sum_16_reg_2049;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_648_p0 = sum_5_reg_2044;
    end else begin
        grp_fu_648_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_648_p1 = Si_19_reg_2009_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_648_p1 = Si_9_reg_1999_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_648_p1 = Si_18_reg_1994_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_648_p1 = Si_8_reg_1989_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_648_p1 = Si_17_reg_1979_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_648_p1 = Si_7_reg_1974_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_648_p1 = Si_16_reg_1969_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_648_p1 = Si_6_reg_1964_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_648_p1 = Si_15_reg_1959_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_648_p1 = Si_5_reg_1954_pp0_iter4_reg;
    end else begin
        grp_fu_648_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_652_p0 = bitcast_ln16_18_fu_1307_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_652_p0 = bitcast_ln16_16_fu_1283_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_652_p0 = bitcast_ln16_14_fu_1253_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_652_p0 = bitcast_ln16_12_fu_1197_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_652_p0 = bitcast_ln16_10_fu_1145_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_652_p0 = bitcast_ln16_8_fu_1093_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_652_p0 = bitcast_ln16_6_fu_1041_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_652_p0 = bitcast_ln16_4_fu_989_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_652_p0 = bitcast_ln16_20_fu_953_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_652_p0 = bitcast_ln16_fu_883_p1;
    end else begin
        grp_fu_652_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_652_p1 = bitcast_ln16_19_fu_1312_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_652_p1 = bitcast_ln16_17_fu_1288_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_652_p1 = bitcast_ln16_15_fu_1258_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_652_p1 = bitcast_ln16_13_fu_1202_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_652_p1 = bitcast_ln16_11_fu_1150_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_652_p1 = bitcast_ln16_9_fu_1098_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_652_p1 = bitcast_ln16_7_fu_1046_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_652_p1 = bitcast_ln16_5_fu_994_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_652_p1 = bitcast_ln16_21_fu_958_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_652_p1 = bitcast_ln16_1_fu_888_p1;
    end else begin
        grp_fu_652_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_656_p0 = bitcast_ln16_38_fu_1317_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_656_p0 = bitcast_ln16_36_fu_1297_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_656_p0 = bitcast_ln16_34_fu_1268_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_656_p0 = bitcast_ln16_32_fu_1223_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_656_p0 = bitcast_ln16_30_fu_1171_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_656_p0 = bitcast_ln16_28_fu_1119_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_656_p0 = bitcast_ln16_26_fu_1067_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_656_p0 = bitcast_ln16_24_fu_1015_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_656_p0 = bitcast_ln16_22_fu_963_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_656_p0 = bitcast_ln16_2_fu_893_p1;
    end else begin
        grp_fu_656_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_656_p1 = bitcast_ln16_39_fu_1322_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_656_p1 = bitcast_ln16_37_fu_1302_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_656_p1 = bitcast_ln16_35_fu_1273_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_656_p1 = bitcast_ln16_33_fu_1228_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_656_p1 = bitcast_ln16_31_fu_1176_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_656_p1 = bitcast_ln16_29_fu_1124_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_656_p1 = bitcast_ln16_27_fu_1072_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_656_p1 = bitcast_ln16_25_fu_1020_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_656_p1 = bitcast_ln16_23_fu_968_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_656_p1 = bitcast_ln16_3_fu_898_p1;
    end else begin
        grp_fu_656_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            nzval_address0_local = zext_ln16_38_fu_1243_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            nzval_address0_local = zext_ln16_36_fu_1191_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            nzval_address0_local = zext_ln16_34_fu_1139_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            nzval_address0_local = zext_ln16_32_fu_1087_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            nzval_address0_local = zext_ln16_30_fu_1035_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            nzval_address0_local = zext_ln16_28_fu_983_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            nzval_address0_local = zext_ln16_26_fu_931_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            nzval_address0_local = zext_ln16_24_fu_877_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            nzval_address0_local = zext_ln16_22_fu_843_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            nzval_address0_local = zext_ln16_2_fu_761_p1;
        end else begin
            nzval_address0_local = 'bx;
        end
    end else begin
        nzval_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            nzval_address1_local = zext_ln16_18_fu_1217_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            nzval_address1_local = zext_ln16_16_fu_1165_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            nzval_address1_local = zext_ln16_14_fu_1113_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            nzval_address1_local = zext_ln16_12_fu_1061_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            nzval_address1_local = zext_ln16_10_fu_1009_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            nzval_address1_local = zext_ln16_8_fu_947_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            nzval_address1_local = zext_ln16_6_fu_915_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            nzval_address1_local = zext_ln16_4_fu_856_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            nzval_address1_local = zext_ln16_20_fu_832_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            nzval_address1_local = zext_ln16_fu_737_p1;
        end else begin
            nzval_address1_local = 'bx;
        end
    end else begin
        nzval_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        nzval_ce0_local = 1'b1;
    end else begin
        nzval_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        nzval_ce1_local = 1'b1;
    end else begin
        nzval_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        out_r_address0_local = out_r_addr_1_reg_1395_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_r_address0_local = zext_ln14_fu_795_p1;
    end else begin
        out_r_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        out_r_address1_local = out_r_addr_reg_1344_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_r_address1_local = zext_ln13_fu_702_p1;
    end else begin
        out_r_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        out_r_ce0_local = 1'b1;
    end else begin
        out_r_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        out_r_ce1_local = 1'b1;
    end else begin
        out_r_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        out_r_we0_local = 1'b1;
    end else begin
        out_r_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        out_r_we1_local = 1'b1;
    end else begin
        out_r_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        vec_address0_local = zext_ln16_39_fu_1278_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        vec_address0_local = zext_ln16_37_fu_1233_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        vec_address0_local = zext_ln16_35_fu_1181_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        vec_address0_local = zext_ln16_33_fu_1129_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        vec_address0_local = zext_ln16_31_fu_1077_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        vec_address0_local = zext_ln16_29_fu_1025_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        vec_address0_local = zext_ln16_27_fu_973_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        vec_address0_local = zext_ln16_25_fu_921_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        vec_address0_local = zext_ln16_23_fu_867_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        vec_address0_local = zext_ln16_3_fu_822_p1;
    end else begin
        vec_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        vec_address1_local = zext_ln16_19_fu_1263_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        vec_address1_local = zext_ln16_17_fu_1207_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        vec_address1_local = zext_ln16_15_fu_1155_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        vec_address1_local = zext_ln16_13_fu_1103_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        vec_address1_local = zext_ln16_11_fu_1051_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        vec_address1_local = zext_ln16_9_fu_999_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        vec_address1_local = zext_ln16_7_fu_937_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        vec_address1_local = zext_ln16_5_fu_903_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        vec_address1_local = zext_ln16_21_fu_862_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        vec_address1_local = zext_ln16_1_fu_817_p1;
    end else begin
        vec_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        vec_ce0_local = 1'b1;
    end else begin
        vec_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        vec_ce1_local = 1'b1;
    end else begin
        vec_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to9 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter9_stage1) & (ap_idle_pp0_0to8 == 1'b1))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln16_10_fu_1030_p2 = (empty_reg_1349 + 13'd15);
assign add_ln16_11_fu_1082_p2 = (empty_reg_1349 + 13'd16);
assign add_ln16_12_fu_1134_p2 = (empty_reg_1349 + 13'd17);
assign add_ln16_13_fu_1186_p2 = (empty_reg_1349 + 13'd18);
assign add_ln16_14_fu_1238_p2 = (empty_reg_1349 + 13'd19);
assign add_ln16_1_fu_1004_p2 = (empty_reg_1349 + 13'd5);
assign add_ln16_2_fu_1056_p2 = (empty_reg_1349 + 13'd6);
assign add_ln16_3_fu_1108_p2 = (empty_reg_1349 + 13'd7);
assign add_ln16_4_fu_1160_p2 = (empty_reg_1349 + 13'd8);
assign add_ln16_5_fu_1212_p2 = (empty_reg_1349 + 13'd9);
assign add_ln16_6_fu_838_p2 = (empty_reg_1349 + 13'd11);
assign add_ln16_7_fu_872_p2 = (empty_reg_1349 + 13'd12);
assign add_ln16_8_fu_926_p2 = (empty_reg_1349 + 13'd13);
assign add_ln16_9_fu_978_p2 = (empty_reg_1349 + 13'd14);
assign add_ln16_fu_942_p2 = (empty_reg_1349 + 13'd4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_784 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage9;
assign ap_ready = ap_ready_sig;
assign bitcast_ln16_10_fu_1145_p1 = reg_676;
assign bitcast_ln16_11_fu_1150_p1 = reg_668;
assign bitcast_ln16_12_fu_1197_p1 = reg_660;
assign bitcast_ln16_13_fu_1202_p1 = reg_668;
assign bitcast_ln16_14_fu_1253_p1 = reg_676;
assign bitcast_ln16_15_fu_1258_p1 = reg_668;
assign bitcast_ln16_16_fu_1283_p1 = reg_660;
assign bitcast_ln16_17_fu_1288_p1 = reg_668;
assign bitcast_ln16_18_fu_1307_p1 = reg_676;
assign bitcast_ln16_19_fu_1312_p1 = reg_668;
assign bitcast_ln16_1_fu_888_p1 = reg_668;
assign bitcast_ln16_20_fu_953_p1 = reg_676;
assign bitcast_ln16_21_fu_958_p1 = reg_668;
assign bitcast_ln16_22_fu_963_p1 = reg_680;
assign bitcast_ln16_23_fu_968_p1 = reg_672;
assign bitcast_ln16_24_fu_1015_p1 = reg_664;
assign bitcast_ln16_25_fu_1020_p1 = reg_672;
assign bitcast_ln16_26_fu_1067_p1 = reg_680;
assign bitcast_ln16_27_fu_1072_p1 = reg_672;
assign bitcast_ln16_28_fu_1119_p1 = reg_664;
assign bitcast_ln16_29_fu_1124_p1 = reg_672;
assign bitcast_ln16_2_fu_893_p1 = reg_664;
assign bitcast_ln16_30_fu_1171_p1 = reg_680;
assign bitcast_ln16_31_fu_1176_p1 = reg_672;
assign bitcast_ln16_32_fu_1223_p1 = reg_664;
assign bitcast_ln16_33_fu_1228_p1 = reg_672;
assign bitcast_ln16_34_fu_1268_p1 = reg_680;
assign bitcast_ln16_35_fu_1273_p1 = reg_672;
assign bitcast_ln16_36_fu_1297_p1 = reg_664;
assign bitcast_ln16_37_fu_1302_p1 = reg_672;
assign bitcast_ln16_38_fu_1317_p1 = reg_680;
assign bitcast_ln16_39_fu_1322_p1 = reg_672;
assign bitcast_ln16_3_fu_898_p1 = reg_672;
assign bitcast_ln16_4_fu_989_p1 = reg_660;
assign bitcast_ln16_5_fu_994_p1 = reg_668;
assign bitcast_ln16_6_fu_1041_p1 = reg_676;
assign bitcast_ln16_7_fu_1046_p1 = reg_668;
assign bitcast_ln16_8_fu_1093_p1 = reg_660;
assign bitcast_ln16_9_fu_1098_p1 = reg_668;
assign bitcast_ln16_fu_883_p1 = reg_660;
assign bitcast_ln19_1_fu_1332_p1 = reg_689;
assign bitcast_ln19_fu_1327_p1 = reg_684;
assign cols_address0 = cols_address0_local;
assign cols_address1 = cols_address1_local;
assign cols_ce0 = cols_ce0_local;
assign cols_ce1 = cols_ce1_local;
assign empty_9_fu_827_p2 = (empty_reg_1349 + 13'd10);
assign empty_fu_731_p2 = (p_shl_fu_715_p1 + p_shl2_fu_727_p1);
assign i_fu_800_p2 = (ap_sig_allocacmp_i1_load + 9'd2);
assign icmp_ln13_fu_806_p2 = ((i_fu_800_p2 < 9'd494) ? 1'b1 : 1'b0);
assign nzval_address0 = nzval_address0_local;
assign nzval_address1 = nzval_address1_local;
assign nzval_ce0 = nzval_ce0_local;
assign nzval_ce1 = nzval_ce1_local;
assign or_ln16_1_fu_849_p3 = {{tmp_1_reg_1389}, {2'd2}};
assign or_ln16_2_fu_908_p3 = {{tmp_1_reg_1389}, {2'd3}};
assign or_ln1_fu_787_p3 = {{tmp_4_fu_777_p4}, {1'd1}};
assign or_ln_fu_753_p3 = {{tmp_fu_743_p4}, {1'd1}};
assign out_r_address0 = out_r_address0_local;
assign out_r_address1 = out_r_address1_local;
assign out_r_ce0 = out_r_ce0_local;
assign out_r_ce1 = out_r_ce1_local;
assign out_r_d0 = bitcast_ln19_1_fu_1332_p1;
assign out_r_d1 = bitcast_ln19_fu_1327_p1;
assign out_r_we0 = out_r_we0_local;
assign out_r_we1 = out_r_we1_local;
assign p_shl2_fu_727_p1 = tmp_3_fu_719_p3;
assign p_shl_fu_715_p1 = tmp_2_fu_707_p3;
assign sum_11_fu_1293_p1 = out_r_load_1_reg_1419;
assign sum_fu_1249_p1 = out_r_load_reg_1404;
assign tmp_2_fu_707_p3 = {{ap_sig_allocacmp_i1_load}, {3'd0}};
assign tmp_3_fu_719_p3 = {{ap_sig_allocacmp_i1_load}, {1'd0}};
assign tmp_4_fu_777_p4 = {{ap_sig_allocacmp_i1_load[8:1]}};
assign tmp_fu_743_p4 = {{empty_fu_731_p2[12:1]}};
assign vec_address0 = vec_address0_local;
assign vec_address1 = vec_address1_local;
assign vec_ce0 = vec_ce0_local;
assign vec_ce1 = vec_ce1_local;
assign zext_ln13_fu_702_p1 = ap_sig_allocacmp_i1_load;
assign zext_ln14_fu_795_p1 = or_ln1_fu_787_p3;
assign zext_ln16_10_fu_1009_p1 = add_ln16_1_fu_1004_p2;
assign zext_ln16_11_fu_1051_p1 = cols_q1;
assign zext_ln16_12_fu_1061_p1 = add_ln16_2_fu_1056_p2;
assign zext_ln16_13_fu_1103_p1 = cols_q1;
assign zext_ln16_14_fu_1113_p1 = add_ln16_3_fu_1108_p2;
assign zext_ln16_15_fu_1155_p1 = cols_q1;
assign zext_ln16_16_fu_1165_p1 = add_ln16_4_fu_1160_p2;
assign zext_ln16_17_fu_1207_p1 = cols_q1;
assign zext_ln16_18_fu_1217_p1 = add_ln16_5_fu_1212_p2;
assign zext_ln16_19_fu_1263_p1 = cols_q1;
assign zext_ln16_1_fu_817_p1 = cols_q1;
assign zext_ln16_20_fu_832_p1 = empty_9_fu_827_p2;
assign zext_ln16_21_fu_862_p1 = cols_q1;
assign zext_ln16_22_fu_843_p1 = add_ln16_6_fu_838_p2;
assign zext_ln16_23_fu_867_p1 = cols_q0;
assign zext_ln16_24_fu_877_p1 = add_ln16_7_fu_872_p2;
assign zext_ln16_25_fu_921_p1 = cols_q0;
assign zext_ln16_26_fu_931_p1 = add_ln16_8_fu_926_p2;
assign zext_ln16_27_fu_973_p1 = cols_q0;
assign zext_ln16_28_fu_983_p1 = add_ln16_9_fu_978_p2;
assign zext_ln16_29_fu_1025_p1 = cols_q0;
assign zext_ln16_2_fu_761_p1 = or_ln_fu_753_p3;
assign zext_ln16_30_fu_1035_p1 = add_ln16_10_fu_1030_p2;
assign zext_ln16_31_fu_1077_p1 = cols_q0;
assign zext_ln16_32_fu_1087_p1 = add_ln16_11_fu_1082_p2;
assign zext_ln16_33_fu_1129_p1 = cols_q0;
assign zext_ln16_34_fu_1139_p1 = add_ln16_12_fu_1134_p2;
assign zext_ln16_35_fu_1181_p1 = cols_q0;
assign zext_ln16_36_fu_1191_p1 = add_ln16_13_fu_1186_p2;
assign zext_ln16_37_fu_1233_p1 = cols_q0;
assign zext_ln16_38_fu_1243_p1 = add_ln16_14_fu_1238_p2;
assign zext_ln16_39_fu_1278_p1 = cols_q0;
assign zext_ln16_3_fu_822_p1 = cols_q0;
assign zext_ln16_4_fu_856_p1 = or_ln16_1_fu_849_p3;
assign zext_ln16_5_fu_903_p1 = cols_q1;
assign zext_ln16_6_fu_915_p1 = or_ln16_2_fu_908_p3;
assign zext_ln16_7_fu_937_p1 = cols_q1;
assign zext_ln16_8_fu_947_p1 = add_ln16_fu_942_p2;
assign zext_ln16_9_fu_999_p1 = cols_q1;
assign zext_ln16_fu_737_p1 = empty_fu_731_p2;
always @ (posedge ap_clk) begin
    empty_reg_1349[0] <= 1'b0;
    out_r_addr_1_reg_1395[0] <= 1'b1;
    out_r_addr_1_reg_1395_pp0_iter1_reg[0] <= 1'b1;
    out_r_addr_1_reg_1395_pp0_iter2_reg[0] <= 1'b1;
    out_r_addr_1_reg_1395_pp0_iter3_reg[0] <= 1'b1;
    out_r_addr_1_reg_1395_pp0_iter4_reg[0] <= 1'b1;
    out_r_addr_1_reg_1395_pp0_iter5_reg[0] <= 1'b1;
    out_r_addr_1_reg_1395_pp0_iter6_reg[0] <= 1'b1;
    out_r_addr_1_reg_1395_pp0_iter7_reg[0] <= 1'b1;
    out_r_addr_1_reg_1395_pp0_iter8_reg[0] <= 1'b1;
    out_r_addr_1_reg_1395_pp0_iter9_reg[0] <= 1'b1;
end
endmodule 