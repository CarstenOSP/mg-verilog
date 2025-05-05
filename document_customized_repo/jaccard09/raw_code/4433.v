module sha_stream_sha_transform_Pipeline_trans_lp4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_35_reload,B_31_reload,C_42_reload,D_35_reload,E_31_reload,W_address0,W_ce0,W_q0,W_address1,W_ce1,W_q1,W_4_address0,W_4_ce0,W_4_q0,W_4_address1,W_4_ce1,W_4_q1,W_8_address0,W_8_ce0,W_8_q0,W_8_address1,W_8_ce1,W_8_q1,W_12_address0,W_12_ce0,W_12_q0,W_12_address1,W_12_ce1,W_12_q1,W_1_address0,W_1_ce0,W_1_q0,W_1_address1,W_1_ce1,W_1_q1,W_5_address0,W_5_ce0,W_5_q0,W_5_address1,W_5_ce1,W_5_q1,W_9_address0,W_9_ce0,W_9_q0,W_9_address1,W_9_ce1,W_9_q1,W_13_address0,W_13_ce0,W_13_q0,W_13_address1,W_13_ce1,W_13_q1,W_2_address0,W_2_ce0,W_2_q0,W_2_address1,W_2_ce1,W_2_q1,W_6_address0,W_6_ce0,W_6_q0,W_6_address1,W_6_ce1,W_6_q1,W_10_address0,W_10_ce0,W_10_q0,W_10_address1,W_10_ce1,W_10_q1,W_14_address0,W_14_ce0,W_14_q0,W_14_address1,W_14_ce1,W_14_q1,W_3_address0,W_3_ce0,W_3_q0,W_3_address1,W_3_ce1,W_3_q1,W_7_address0,W_7_ce0,W_7_q0,W_7_address1,W_7_ce1,W_7_q1,W_11_address0,W_11_ce0,W_11_q0,W_11_address1,W_11_ce1,W_11_q1,W_15_address0,W_15_ce0,W_15_q0,W_15_address1,W_15_ce1,W_15_q1,E_30_out,E_30_out_ap_vld,B_30_out,B_30_out_ap_vld,D_33_out,D_33_out_ap_vld,A_33_out,A_33_out_ap_vld,C_36_out,C_36_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 9'd1;
parameter    ap_ST_fsm_pp0_stage1 = 9'd2;
parameter    ap_ST_fsm_pp0_stage2 = 9'd4;
parameter    ap_ST_fsm_pp0_stage3 = 9'd8;
parameter    ap_ST_fsm_pp0_stage4 = 9'd16;
parameter    ap_ST_fsm_pp0_stage5 = 9'd32;
parameter    ap_ST_fsm_pp0_stage6 = 9'd64;
parameter    ap_ST_fsm_pp0_stage7 = 9'd128;
parameter    ap_ST_fsm_pp0_stage8 = 9'd256;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] A_35_reload;
input  [31:0] B_31_reload;
input  [31:0] C_42_reload;
input  [31:0] D_35_reload;
input  [31:0] E_31_reload;
output  [2:0] W_address0;
output   W_ce0;
input  [31:0] W_q0;
output  [2:0] W_address1;
output   W_ce1;
input  [31:0] W_q1;
output  [2:0] W_4_address0;
output   W_4_ce0;
input  [31:0] W_4_q0;
output  [2:0] W_4_address1;
output   W_4_ce1;
input  [31:0] W_4_q1;
output  [2:0] W_8_address0;
output   W_8_ce0;
input  [31:0] W_8_q0;
output  [2:0] W_8_address1;
output   W_8_ce1;
input  [31:0] W_8_q1;
output  [2:0] W_12_address0;
output   W_12_ce0;
input  [31:0] W_12_q0;
output  [2:0] W_12_address1;
output   W_12_ce1;
input  [31:0] W_12_q1;
output  [2:0] W_1_address0;
output   W_1_ce0;
input  [31:0] W_1_q0;
output  [2:0] W_1_address1;
output   W_1_ce1;
input  [31:0] W_1_q1;
output  [2:0] W_5_address0;
output   W_5_ce0;
input  [31:0] W_5_q0;
output  [2:0] W_5_address1;
output   W_5_ce1;
input  [31:0] W_5_q1;
output  [2:0] W_9_address0;
output   W_9_ce0;
input  [31:0] W_9_q0;
output  [2:0] W_9_address1;
output   W_9_ce1;
input  [31:0] W_9_q1;
output  [2:0] W_13_address0;
output   W_13_ce0;
input  [31:0] W_13_q0;
output  [2:0] W_13_address1;
output   W_13_ce1;
input  [31:0] W_13_q1;
output  [2:0] W_2_address0;
output   W_2_ce0;
input  [31:0] W_2_q0;
output  [2:0] W_2_address1;
output   W_2_ce1;
input  [31:0] W_2_q1;
output  [2:0] W_6_address0;
output   W_6_ce0;
input  [31:0] W_6_q0;
output  [2:0] W_6_address1;
output   W_6_ce1;
input  [31:0] W_6_q1;
output  [2:0] W_10_address0;
output   W_10_ce0;
input  [31:0] W_10_q0;
output  [2:0] W_10_address1;
output   W_10_ce1;
input  [31:0] W_10_q1;
output  [2:0] W_14_address0;
output   W_14_ce0;
input  [31:0] W_14_q0;
output  [2:0] W_14_address1;
output   W_14_ce1;
input  [31:0] W_14_q1;
output  [2:0] W_3_address0;
output   W_3_ce0;
input  [31:0] W_3_q0;
output  [2:0] W_3_address1;
output   W_3_ce1;
input  [31:0] W_3_q1;
output  [2:0] W_7_address0;
output   W_7_ce0;
input  [31:0] W_7_q0;
output  [2:0] W_7_address1;
output   W_7_ce1;
input  [31:0] W_7_q1;
output  [2:0] W_11_address0;
output   W_11_ce0;
input  [31:0] W_11_q0;
output  [2:0] W_11_address1;
output   W_11_ce1;
input  [31:0] W_11_q1;
output  [2:0] W_15_address0;
output   W_15_ce0;
input  [31:0] W_15_q0;
output  [2:0] W_15_address1;
output   W_15_ce1;
input  [31:0] W_15_q1;
output  [31:0] E_30_out;
output   E_30_out_ap_vld;
output  [31:0] B_30_out;
output   B_30_out_ap_vld;
output  [31:0] D_33_out;
output   D_33_out_ap_vld;
output  [31:0] A_33_out;
output   A_33_out_ap_vld;
output  [31:0] C_36_out;
output   C_36_out_ap_vld;
reg ap_idle;
reg E_30_out_ap_vld;
reg B_30_out_ap_vld;
reg D_33_out_ap_vld;
reg A_33_out_ap_vld;
reg C_36_out_ap_vld;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] icmp_ln120_reg_1741;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] i_reg_1644;
wire   [3:0] trunc_ln8_fu_646_p1;
reg   [3:0] trunc_ln8_reg_1649;
wire   [0:0] icmp_ln120_fu_686_p2;
reg   [31:0] D_9_reg_1825;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] C_reg_1830;
wire   [31:0] add_ln122_1_fu_829_p2;
reg   [31:0] add_ln122_1_reg_1836;
wire   [31:0] add_ln122_fu_835_p2;
reg   [31:0] add_ln122_reg_1841;
wire   [1:0] trunc_ln122_1_fu_841_p1;
reg   [1:0] trunc_ln122_1_reg_1846;
reg   [29:0] lshr_ln122_1_reg_1851;
wire   [31:0] tmp_1_fu_855_p11;
reg   [31:0] tmp_1_reg_1856;
wire   [31:0] tmp_2_fu_878_p11;
reg   [31:0] tmp_2_reg_1861;
wire   [31:0] tmp_3_fu_901_p11;
reg   [31:0] tmp_3_reg_1866;
wire   [31:0] tmp_4_fu_924_p11;
reg   [31:0] tmp_4_reg_1871;
wire   [31:0] tmp_5_fu_947_p11;
reg   [31:0] tmp_5_reg_1876;
wire   [31:0] tmp_6_fu_970_p11;
reg   [31:0] tmp_6_reg_1881;
wire   [31:0] tmp_7_fu_993_p11;
reg   [31:0] tmp_7_reg_1886;
wire   [31:0] temp_fu_1046_p2;
reg   [31:0] temp_reg_1891;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] C_9_fu_1051_p3;
reg   [31:0] C_9_reg_1896;
wire   [31:0] add_ln122_5_fu_1090_p2;
reg   [31:0] add_ln122_5_reg_1902;
wire   [31:0] add_ln122_4_fu_1095_p2;
reg   [31:0] add_ln122_4_reg_1907;
wire   [1:0] trunc_ln122_3_fu_1101_p1;
reg   [1:0] trunc_ln122_3_reg_1912;
reg   [29:0] lshr_ln122_3_reg_1917;
wire   [1:0] trunc_ln122_5_fu_1115_p1;
reg   [1:0] trunc_ln122_5_reg_1922;
reg   [29:0] lshr_ln122_5_reg_1927;
wire   [31:0] temp_7_fu_1133_p2;
reg   [31:0] temp_7_reg_1932;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] E_21_fu_1138_p3;
reg   [31:0] E_21_reg_1937;
wire   [31:0] add_ln122_9_fu_1176_p2;
reg   [31:0] add_ln122_9_reg_1944;
wire   [31:0] add_ln122_8_fu_1181_p2;
reg   [31:0] add_ln122_8_reg_1949;
wire   [1:0] trunc_ln122_7_fu_1187_p1;
reg   [1:0] trunc_ln122_7_reg_1954;
reg   [29:0] lshr_ln122_7_reg_1959;
wire   [31:0] B_20_fu_1205_p2;
reg   [31:0] B_20_reg_1964;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [31:0] D_fu_1210_p3;
reg   [31:0] D_reg_1972;
wire   [31:0] add_ln122_13_fu_1248_p2;
reg   [31:0] add_ln122_13_reg_1979;
wire   [31:0] add_ln122_12_fu_1253_p2;
reg   [31:0] add_ln122_12_reg_1984;
wire   [31:0] A_fu_1263_p2;
reg   [31:0] A_reg_1989;
wire    ap_block_pp0_stage5_11001;
wire   [31:0] C_10_fu_1269_p3;
reg   [31:0] C_10_reg_1994;
wire   [31:0] add_ln122_17_fu_1308_p2;
reg   [31:0] add_ln122_17_reg_2000;
wire   [31:0] add_ln122_16_fu_1313_p2;
reg   [31:0] add_ln122_16_reg_2005;
wire   [31:0] C_12_fu_1333_p3;
reg   [31:0] C_12_reg_2010;
wire   [31:0] temp_8_fu_1350_p2;
reg   [31:0] temp_8_reg_2016;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [31:0] C_11_fu_1367_p3;
reg   [31:0] C_11_reg_2021;
wire   [31:0] add_ln122_21_fu_1407_p2;
reg   [31:0] add_ln122_21_reg_2027;
wire   [31:0] add_ln122_20_fu_1412_p2;
reg   [31:0] add_ln122_20_reg_2032;
wire   [31:0] C_13_fu_1432_p3;
reg   [31:0] C_13_reg_2037;
wire   [31:0] add_ln122_24_fu_1485_p2;
reg   [31:0] add_ln122_24_reg_2042;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [31:0] xor_ln122_15_fu_1496_p2;
reg   [31:0] xor_ln122_15_reg_2047;
wire   [31:0] temp_10_fu_1538_p2;
reg   [31:0] temp_10_reg_2052;
wire    ap_block_pp0_stage8_11001;
wire   [26:0] trunc_ln122_14_fu_1543_p1;
reg   [26:0] trunc_ln122_14_reg_2057;
reg   [4:0] lshr_ln122_13_reg_2062;
wire   [31:0] add_ln122_30_fu_1578_p2;
reg   [31:0] add_ln122_30_reg_2067;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln100_fu_660_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln120_fu_702_p1;
wire   [63:0] zext_ln100_1_fu_726_p1;
wire   [63:0] zext_ln100_2_fu_750_p1;
wire   [63:0] zext_ln100_3_fu_774_p1;
reg   [31:0] E_fu_124;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [31:0] B_fu_128;
reg   [31:0] E_10_fu_132;
reg   [31:0] B_10_fu_136;
wire   [31:0] temp_11_fu_1592_p2;
wire    ap_block_pp0_stage2;
reg   [31:0] E_11_fu_140;
wire   [31:0] C_8_fu_1515_p3;
reg   [5:0] i_2_fu_144;
wire   [5:0] add_ln120_4_fu_1557_p2;
reg   [5:0] ap_sig_allocacmp_i;
wire    ap_block_pp0_stage5_01001;
reg    W_ce1_local;
reg    W_ce0_local;
reg    W_4_ce1_local;
reg    W_4_ce0_local;
reg    W_8_ce1_local;
reg    W_8_ce0_local;
reg    W_12_ce1_local;
reg    W_12_ce0_local;
reg    W_1_ce1_local;
reg    W_1_ce0_local;
reg    W_5_ce1_local;
reg    W_5_ce0_local;
reg    W_9_ce1_local;
reg    W_9_ce0_local;
reg    W_13_ce1_local;
reg    W_13_ce0_local;
reg    W_2_ce1_local;
reg    W_2_ce0_local;
reg    W_6_ce1_local;
reg    W_6_ce0_local;
reg    W_10_ce1_local;
reg    W_10_ce0_local;
reg    W_14_ce1_local;
reg    W_14_ce0_local;
reg    W_3_ce1_local;
reg    W_3_ce0_local;
reg    W_7_ce1_local;
reg    W_7_ce0_local;
reg    W_11_ce1_local;
reg    W_11_ce0_local;
reg    W_15_ce1_local;
reg    W_15_ce0_local;
wire   [1:0] lshr_ln100_1_fu_650_p4;
wire   [5:0] add_ln120_fu_680_p2;
wire   [1:0] lshr_ln100_2_fu_692_p4;
wire   [5:0] add_ln120_1_fu_710_p2;
wire   [1:0] lshr_ln100_3_fu_716_p4;
wire   [5:0] add_ln120_2_fu_734_p2;
wire   [1:0] lshr_ln100_4_fu_740_p4;
wire   [5:0] add_ln120_3_fu_758_p2;
wire   [1:0] lshr_ln100_5_fu_764_p4;
wire   [31:0] tmp_s_fu_794_p9;
wire   [31:0] xor_ln122_fu_817_p2;
wire   [31:0] tmp_s_fu_794_p11;
wire   [31:0] xor_ln122_1_fu_823_p2;
wire   [31:0] tmp_1_fu_855_p9;
wire   [31:0] tmp_2_fu_878_p9;
wire   [31:0] tmp_3_fu_901_p9;
wire   [31:0] tmp_4_fu_924_p9;
wire   [31:0] tmp_5_fu_947_p9;
wire   [31:0] tmp_6_fu_970_p9;
wire   [31:0] tmp_7_fu_993_p9;
wire   [26:0] trunc_ln122_fu_1019_p1;
wire   [4:0] lshr_ln4_fu_1023_p4;
wire   [31:0] or_ln1_fu_1033_p3;
wire   [31:0] add_ln122_2_fu_1041_p2;
wire   [31:0] xor_ln122_2_fu_1071_p2;
wire   [26:0] trunc_ln122_2_fu_1057_p1;
wire   [4:0] lshr_ln122_2_fu_1061_p4;
wire   [31:0] or_ln122_2_fu_1082_p3;
wire   [31:0] xor_ln122_3_fu_1077_p2;
wire    ap_block_pp0_stage3;
wire   [31:0] add_ln122_6_fu_1129_p2;
wire   [31:0] xor_ln122_4_fu_1158_p2;
wire   [26:0] trunc_ln122_4_fu_1144_p1;
wire   [4:0] lshr_ln122_4_fu_1148_p4;
wire   [31:0] or_ln122_4_fu_1168_p3;
wire   [31:0] xor_ln122_5_fu_1163_p2;
wire    ap_block_pp0_stage4;
wire   [31:0] add_ln122_10_fu_1201_p2;
wire   [31:0] xor_ln122_6_fu_1230_p2;
wire   [26:0] trunc_ln122_6_fu_1216_p1;
wire   [4:0] lshr_ln122_6_fu_1220_p4;
wire   [31:0] or_ln122_6_fu_1240_p3;
wire   [31:0] xor_ln122_7_fu_1234_p2;
wire    ap_block_pp0_stage5;
wire   [31:0] add_ln122_14_fu_1259_p2;
wire   [31:0] xor_ln122_8_fu_1290_p2;
wire   [26:0] trunc_ln122_8_fu_1276_p1;
wire   [4:0] lshr_ln122_8_fu_1280_p4;
wire   [31:0] or_ln122_8_fu_1300_p3;
wire   [31:0] xor_ln122_9_fu_1294_p2;
wire   [1:0] trunc_ln122_11_fu_1319_p1;
wire   [29:0] lshr_ln122_10_fu_1323_p4;
wire    ap_block_pp0_stage6;
wire   [31:0] add_ln122_18_fu_1346_p2;
wire   [1:0] trunc_ln122_9_fu_1355_p1;
wire   [29:0] lshr_ln122_9_fu_1358_p4;
wire   [31:0] xor_ln122_10_fu_1389_p2;
wire   [26:0] trunc_ln122_10_fu_1375_p1;
wire   [4:0] lshr_ln122_s_fu_1379_p4;
wire   [31:0] or_ln122_s_fu_1399_p3;
wire   [31:0] xor_ln122_11_fu_1393_p2;
wire   [1:0] trunc_ln122_13_fu_1418_p1;
wire   [29:0] lshr_ln122_12_fu_1422_p4;
wire    ap_block_pp0_stage7;
wire   [31:0] add_ln122_22_fu_1445_p2;
wire   [31:0] temp_9_fu_1449_p2;
wire   [31:0] xor_ln122_12_fu_1468_p2;
wire   [26:0] trunc_ln122_12_fu_1454_p1;
wire   [4:0] lshr_ln122_11_fu_1458_p4;
wire   [31:0] or_ln122_1_fu_1477_p3;
wire   [31:0] xor_ln122_13_fu_1472_p2;
wire   [31:0] xor_ln122_14_fu_1491_p2;
wire   [1:0] trunc_ln122_15_fu_1501_p1;
wire   [29:0] lshr_ln122_14_fu_1505_p4;
wire    ap_block_pp0_stage8;
wire   [31:0] add_ln122_25_fu_1528_p2;
wire   [31:0] add_ln122_26_fu_1533_p2;
wire   [31:0] or_ln122_3_fu_1567_p3;
wire   [31:0] add_ln122_29_fu_1573_p2;
wire   [31:0] add_ln122_28_fu_1588_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [8:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [3:0] tmp_s_fu_794_p1;
wire   [3:0] tmp_s_fu_794_p3;
wire  signed [3:0] tmp_s_fu_794_p5;
wire  signed [3:0] tmp_s_fu_794_p7;
wire   [3:0] tmp_1_fu_855_p1;
wire   [3:0] tmp_1_fu_855_p3;
wire  signed [3:0] tmp_1_fu_855_p5;
wire  signed [3:0] tmp_1_fu_855_p7;
wire   [3:0] tmp_2_fu_878_p1;
wire   [3:0] tmp_2_fu_878_p3;
wire  signed [3:0] tmp_2_fu_878_p5;
wire  signed [3:0] tmp_2_fu_878_p7;
wire   [3:0] tmp_3_fu_901_p1;
wire   [3:0] tmp_3_fu_901_p3;
wire  signed [3:0] tmp_3_fu_901_p5;
wire  signed [3:0] tmp_3_fu_901_p7;
wire  signed [3:0] tmp_4_fu_924_p1;
wire   [3:0] tmp_4_fu_924_p3;
wire   [3:0] tmp_4_fu_924_p5;
wire  signed [3:0] tmp_4_fu_924_p7;
wire  signed [3:0] tmp_5_fu_947_p1;
wire   [3:0] tmp_5_fu_947_p3;
wire   [3:0] tmp_5_fu_947_p5;
wire  signed [3:0] tmp_5_fu_947_p7;
wire  signed [3:0] tmp_6_fu_970_p1;
wire   [3:0] tmp_6_fu_970_p3;
wire   [3:0] tmp_6_fu_970_p5;
wire  signed [3:0] tmp_6_fu_970_p7;
wire  signed [3:0] tmp_7_fu_993_p1;
wire   [3:0] tmp_7_fu_993_p3;
wire   [3:0] tmp_7_fu_993_p5;
wire  signed [3:0] tmp_7_fu_993_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_fu_124 = 32'd0;
#0 B_fu_128 = 32'd0;
#0 E_10_fu_132 = 32'd0;
#0 B_10_fu_136 = 32'd0;
#0 E_11_fu_140 = 32'd0;
#0 i_2_fu_144 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h4 ),.din1_WIDTH( 32 ),.CASE2( 4'h8 ),.din2_WIDTH( 32 ),.CASE3( 4'hC ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U48(.din0(W_q1),.din1(W_4_q1),.din2(W_8_q1),.din3(W_12_q1),.def(tmp_s_fu_794_p9),.sel(trunc_ln8_reg_1649),.dout(tmp_s_fu_794_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h4 ),.din1_WIDTH( 32 ),.CASE2( 4'h8 ),.din2_WIDTH( 32 ),.CASE3( 4'hC ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U49(.din0(W_1_q1),.din1(W_5_q1),.din2(W_9_q1),.din3(W_13_q1),.def(tmp_1_fu_855_p9),.sel(trunc_ln8_reg_1649),.dout(tmp_1_fu_855_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h4 ),.din1_WIDTH( 32 ),.CASE2( 4'h8 ),.din2_WIDTH( 32 ),.CASE3( 4'hC ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U50(.din0(W_2_q1),.din1(W_6_q1),.din2(W_10_q1),.din3(W_14_q1),.def(tmp_2_fu_878_p9),.sel(trunc_ln8_reg_1649),.dout(tmp_2_fu_878_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h4 ),.din1_WIDTH( 32 ),.CASE2( 4'h8 ),.din2_WIDTH( 32 ),.CASE3( 4'hC ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U51(.din0(W_3_q1),.din1(W_7_q1),.din2(W_11_q1),.din3(W_15_q1),.def(tmp_3_fu_901_p9),.sel(trunc_ln8_reg_1649),.dout(tmp_3_fu_901_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hC ),.din0_WIDTH( 32 ),.CASE1( 4'h0 ),.din1_WIDTH( 32 ),.CASE2( 4'h4 ),.din2_WIDTH( 32 ),.CASE3( 4'h8 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U52(.din0(W_q0),.din1(W_4_q0),.din2(W_8_q0),.din3(W_12_q0),.def(tmp_4_fu_924_p9),.sel(trunc_ln8_reg_1649),.dout(tmp_4_fu_924_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hC ),.din0_WIDTH( 32 ),.CASE1( 4'h0 ),.din1_WIDTH( 32 ),.CASE2( 4'h4 ),.din2_WIDTH( 32 ),.CASE3( 4'h8 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U53(.din0(W_1_q0),.din1(W_5_q0),.din2(W_9_q0),.din3(W_13_q0),.def(tmp_5_fu_947_p9),.sel(trunc_ln8_reg_1649),.dout(tmp_5_fu_947_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hC ),.din0_WIDTH( 32 ),.CASE1( 4'h0 ),.din1_WIDTH( 32 ),.CASE2( 4'h4 ),.din2_WIDTH( 32 ),.CASE3( 4'h8 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U54(.din0(W_2_q0),.din1(W_6_q0),.din2(W_10_q0),.din3(W_14_q0),.def(tmp_6_fu_970_p9),.sel(trunc_ln8_reg_1649),.dout(tmp_6_fu_970_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hC ),.din0_WIDTH( 32 ),.CASE1( 4'h0 ),.din1_WIDTH( 32 ),.CASE2( 4'h4 ),.din2_WIDTH( 32 ),.CASE3( 4'h8 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U55(.din0(W_3_q0),.din1(W_7_q0),.din2(W_11_q0),.din3(W_15_q0),.def(tmp_7_fu_993_p9),.sel(trunc_ln8_reg_1649),.dout(tmp_7_fu_993_p11));
sha_stream_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_10_fu_136 <= A_35_reload;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_10_fu_136 <= temp_11_fu_1592_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            B_fu_128 <= B_31_reload;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            B_fu_128 <= temp_10_reg_2052;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_10_fu_132 <= D_35_reload;
    end else if (((icmp_ln120_reg_1741 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        E_10_fu_132 <= C_13_fu_1432_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_11_fu_140 <= C_42_reload;
    end else if (((icmp_ln120_reg_1741 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        E_11_fu_140 <= C_8_fu_1515_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_fu_124 <= E_31_reload;
    end else if (((icmp_ln120_reg_1741 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        E_fu_124 <= C_12_fu_1333_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_2_fu_144 <= 6'd20;
    end else if (((icmp_ln120_reg_1741 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        i_2_fu_144 <= add_ln120_4_fu_1557_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        A_reg_1989 <= A_fu_1263_p2;
        C_10_reg_1994 <= C_10_fu_1269_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        B_20_reg_1964 <= B_20_fu_1205_p2;
        D_reg_1972 <= D_fu_1210_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        C_11_reg_2021 <= C_11_fu_1367_p3;
        C_13_reg_2037 <= C_13_fu_1432_p3;
        add_ln122_20_reg_2032 <= add_ln122_20_fu_1412_p2;
        add_ln122_21_reg_2027 <= add_ln122_21_fu_1407_p2;
        temp_8_reg_2016 <= temp_8_fu_1350_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        C_12_reg_2010 <= C_12_fu_1333_p3;
        add_ln122_16_reg_2005 <= add_ln122_16_fu_1313_p2;
        add_ln122_17_reg_2000 <= add_ln122_17_fu_1308_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        C_9_reg_1896 <= C_9_fu_1051_p3;
        add_ln122_4_reg_1907 <= add_ln122_4_fu_1095_p2;
        add_ln122_5_reg_1902 <= add_ln122_5_fu_1090_p2;
        lshr_ln122_3_reg_1917 <= {{B_10_fu_136[31:2]}};
        lshr_ln122_5_reg_1927 <= {{temp_fu_1046_p2[31:2]}};
        temp_reg_1891 <= temp_fu_1046_p2;
        trunc_ln122_3_reg_1912 <= trunc_ln122_3_fu_1101_p1;
        trunc_ln122_5_reg_1922 <= trunc_ln122_5_fu_1115_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        C_reg_1830 <= E_11_fu_140;
        D_9_reg_1825 <= E_10_fu_132;
        add_ln122_1_reg_1836 <= add_ln122_1_fu_829_p2;
        add_ln122_reg_1841 <= add_ln122_fu_835_p2;
        lshr_ln122_1_reg_1851 <= {{B_fu_128[31:2]}};
        tmp_1_reg_1856 <= tmp_1_fu_855_p11;
        tmp_2_reg_1861 <= tmp_2_fu_878_p11;
        tmp_3_reg_1866 <= tmp_3_fu_901_p11;
        tmp_4_reg_1871 <= tmp_4_fu_924_p11;
        tmp_5_reg_1876 <= tmp_5_fu_947_p11;
        tmp_6_reg_1881 <= tmp_6_fu_970_p11;
        tmp_7_reg_1886 <= tmp_7_fu_993_p11;
        trunc_ln122_1_reg_1846 <= trunc_ln122_1_fu_841_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        E_21_reg_1937 <= E_21_fu_1138_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln122_12_reg_1984 <= add_ln122_12_fu_1253_p2;
        add_ln122_13_reg_1979 <= add_ln122_13_fu_1248_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln122_24_reg_2042 <= add_ln122_24_fu_1485_p2;
        xor_ln122_15_reg_2047 <= xor_ln122_15_fu_1496_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln122_30_reg_2067 <= add_ln122_30_fu_1578_p2;
        i_reg_1644 <= ap_sig_allocacmp_i;
        icmp_ln120_reg_1741 <= icmp_ln120_fu_686_p2;
        trunc_ln8_reg_1649 <= trunc_ln8_fu_646_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln122_8_reg_1949 <= add_ln122_8_fu_1181_p2;
        add_ln122_9_reg_1944 <= add_ln122_9_fu_1176_p2;
        lshr_ln122_7_reg_1959 <= {{temp_7_fu_1133_p2[31:2]}};
        temp_7_reg_1932 <= temp_7_fu_1133_p2;
        trunc_ln122_7_reg_1954 <= trunc_ln122_7_fu_1187_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        lshr_ln122_13_reg_2062 <= {{temp_10_fu_1538_p2[31:27]}};
        temp_10_reg_2052 <= temp_10_fu_1538_p2;
        trunc_ln122_14_reg_2057 <= trunc_ln122_14_fu_1543_p1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_1741 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        A_33_out_ap_vld = 1'b1;
    end else begin
        A_33_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_1741 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        B_30_out_ap_vld = 1'b1;
    end else begin
        B_30_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_1741 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        C_36_out_ap_vld = 1'b1;
    end else begin
        C_36_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_1741 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        D_33_out_ap_vld = 1'b1;
    end else begin
        D_33_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_1741 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        E_30_out_ap_vld = 1'b1;
    end else begin
        E_30_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_10_ce0_local = 1'b1;
    end else begin
        W_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_10_ce1_local = 1'b1;
    end else begin
        W_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_11_ce0_local = 1'b1;
    end else begin
        W_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_11_ce1_local = 1'b1;
    end else begin
        W_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_12_ce0_local = 1'b1;
    end else begin
        W_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_12_ce1_local = 1'b1;
    end else begin
        W_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_13_ce0_local = 1'b1;
    end else begin
        W_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_13_ce1_local = 1'b1;
    end else begin
        W_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_14_ce0_local = 1'b1;
    end else begin
        W_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_14_ce1_local = 1'b1;
    end else begin
        W_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_15_ce0_local = 1'b1;
    end else begin
        W_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_15_ce1_local = 1'b1;
    end else begin
        W_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_1_ce1_local = 1'b1;
    end else begin
        W_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_2_ce0_local = 1'b1;
    end else begin
        W_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_2_ce1_local = 1'b1;
    end else begin
        W_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_3_ce0_local = 1'b1;
    end else begin
        W_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_3_ce1_local = 1'b1;
    end else begin
        W_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_4_ce0_local = 1'b1;
    end else begin
        W_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_4_ce1_local = 1'b1;
    end else begin
        W_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_5_ce0_local = 1'b1;
    end else begin
        W_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_5_ce1_local = 1'b1;
    end else begin
        W_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_6_ce0_local = 1'b1;
    end else begin
        W_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_6_ce1_local = 1'b1;
    end else begin
        W_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_7_ce0_local = 1'b1;
    end else begin
        W_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_7_ce1_local = 1'b1;
    end else begin
        W_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_8_ce0_local = 1'b1;
    end else begin
        W_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_8_ce1_local = 1'b1;
    end else begin
        W_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_9_ce0_local = 1'b1;
    end else begin
        W_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_9_ce1_local = 1'b1;
    end else begin
        W_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_ce1_local = 1'b1;
    end else begin
        W_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln120_reg_1741 == 1'd0) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i = 6'd20;
    end else begin
        ap_sig_allocacmp_i = i_2_fu_144;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_33_out = A_fu_1263_p2;
assign A_fu_1263_p2 = (add_ln122_12_reg_1984 + add_ln122_14_fu_1259_p2);
assign B_20_fu_1205_p2 = (add_ln122_8_reg_1949 + add_ln122_10_fu_1201_p2);
assign B_30_out = B_20_reg_1964;
assign C_10_fu_1269_p3 = {{trunc_ln122_7_reg_1954}, {lshr_ln122_7_reg_1959}};
assign C_11_fu_1367_p3 = {{trunc_ln122_9_fu_1355_p1}, {lshr_ln122_9_fu_1358_p4}};
assign C_12_fu_1333_p3 = {{trunc_ln122_11_fu_1319_p1}, {lshr_ln122_10_fu_1323_p4}};
assign C_13_fu_1432_p3 = {{trunc_ln122_13_fu_1418_p1}, {lshr_ln122_12_fu_1422_p4}};
assign C_36_out = C_10_fu_1269_p3;
assign C_8_fu_1515_p3 = {{trunc_ln122_15_fu_1501_p1}, {lshr_ln122_14_fu_1505_p4}};
assign C_9_fu_1051_p3 = {{trunc_ln122_1_reg_1846}, {lshr_ln122_1_reg_1851}};
assign D_33_out = D_reg_1972;
assign D_fu_1210_p3 = {{trunc_ln122_5_reg_1922}, {lshr_ln122_5_reg_1927}};
assign E_21_fu_1138_p3 = {{trunc_ln122_3_reg_1912}, {lshr_ln122_3_reg_1917}};
assign E_30_out = E_21_reg_1937;
assign W_10_address0 = zext_ln100_2_fu_750_p1;
assign W_10_address1 = zext_ln100_fu_660_p1;
assign W_10_ce0 = W_10_ce0_local;
assign W_10_ce1 = W_10_ce1_local;
assign W_11_address0 = zext_ln100_3_fu_774_p1;
assign W_11_address1 = zext_ln100_fu_660_p1;
assign W_11_ce0 = W_11_ce0_local;
assign W_11_ce1 = W_11_ce1_local;
assign W_12_address0 = zext_ln120_fu_702_p1;
assign W_12_address1 = zext_ln100_fu_660_p1;
assign W_12_ce0 = W_12_ce0_local;
assign W_12_ce1 = W_12_ce1_local;
assign W_13_address0 = zext_ln100_1_fu_726_p1;
assign W_13_address1 = zext_ln100_fu_660_p1;
assign W_13_ce0 = W_13_ce0_local;
assign W_13_ce1 = W_13_ce1_local;
assign W_14_address0 = zext_ln100_2_fu_750_p1;
assign W_14_address1 = zext_ln100_fu_660_p1;
assign W_14_ce0 = W_14_ce0_local;
assign W_14_ce1 = W_14_ce1_local;
assign W_15_address0 = zext_ln100_3_fu_774_p1;
assign W_15_address1 = zext_ln100_fu_660_p1;
assign W_15_ce0 = W_15_ce0_local;
assign W_15_ce1 = W_15_ce1_local;
assign W_1_address0 = zext_ln100_1_fu_726_p1;
assign W_1_address1 = zext_ln100_fu_660_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_1_ce1 = W_1_ce1_local;
assign W_2_address0 = zext_ln100_2_fu_750_p1;
assign W_2_address1 = zext_ln100_fu_660_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_2_ce1 = W_2_ce1_local;
assign W_3_address0 = zext_ln100_3_fu_774_p1;
assign W_3_address1 = zext_ln100_fu_660_p1;
assign W_3_ce0 = W_3_ce0_local;
assign W_3_ce1 = W_3_ce1_local;
assign W_4_address0 = zext_ln120_fu_702_p1;
assign W_4_address1 = zext_ln100_fu_660_p1;
assign W_4_ce0 = W_4_ce0_local;
assign W_4_ce1 = W_4_ce1_local;
assign W_5_address0 = zext_ln100_1_fu_726_p1;
assign W_5_address1 = zext_ln100_fu_660_p1;
assign W_5_ce0 = W_5_ce0_local;
assign W_5_ce1 = W_5_ce1_local;
assign W_6_address0 = zext_ln100_2_fu_750_p1;
assign W_6_address1 = zext_ln100_fu_660_p1;
assign W_6_ce0 = W_6_ce0_local;
assign W_6_ce1 = W_6_ce1_local;
assign W_7_address0 = zext_ln100_3_fu_774_p1;
assign W_7_address1 = zext_ln100_fu_660_p1;
assign W_7_ce0 = W_7_ce0_local;
assign W_7_ce1 = W_7_ce1_local;
assign W_8_address0 = zext_ln120_fu_702_p1;
assign W_8_address1 = zext_ln100_fu_660_p1;
assign W_8_ce0 = W_8_ce0_local;
assign W_8_ce1 = W_8_ce1_local;
assign W_9_address0 = zext_ln100_1_fu_726_p1;
assign W_9_address1 = zext_ln100_fu_660_p1;
assign W_9_ce0 = W_9_ce0_local;
assign W_9_ce1 = W_9_ce1_local;
assign W_address0 = zext_ln120_fu_702_p1;
assign W_address1 = zext_ln100_fu_660_p1;
assign W_ce0 = W_ce0_local;
assign W_ce1 = W_ce1_local;
assign add_ln120_1_fu_710_p2 = (ap_sig_allocacmp_i + 6'd5);
assign add_ln120_2_fu_734_p2 = (ap_sig_allocacmp_i + 6'd6);
assign add_ln120_3_fu_758_p2 = (ap_sig_allocacmp_i + 6'd7);
assign add_ln120_4_fu_1557_p2 = (i_reg_1644 + 6'd8);
assign add_ln120_fu_680_p2 = (ap_sig_allocacmp_i + 6'd4);
assign add_ln122_10_fu_1201_p2 = (add_ln122_9_reg_1944 + C_reg_1830);
assign add_ln122_12_fu_1253_p2 = (or_ln122_6_fu_1240_p3 + xor_ln122_7_fu_1234_p2);
assign add_ln122_13_fu_1248_p2 = (tmp_3_reg_1866 + 32'd1859775393);
assign add_ln122_14_fu_1259_p2 = (add_ln122_13_reg_1979 + C_9_reg_1896);
assign add_ln122_16_fu_1313_p2 = (or_ln122_8_fu_1300_p3 + xor_ln122_9_fu_1294_p2);
assign add_ln122_17_fu_1308_p2 = (tmp_4_reg_1871 + 32'd1859775393);
assign add_ln122_18_fu_1346_p2 = (add_ln122_17_reg_2000 + E_21_reg_1937);
assign add_ln122_1_fu_829_p2 = (tmp_s_fu_794_p11 + 32'd1859775393);
assign add_ln122_20_fu_1412_p2 = (or_ln122_s_fu_1399_p3 + xor_ln122_11_fu_1393_p2);
assign add_ln122_21_fu_1407_p2 = (tmp_5_reg_1876 + 32'd1859775393);
assign add_ln122_22_fu_1445_p2 = (add_ln122_21_reg_2027 + D_reg_1972);
assign add_ln122_24_fu_1485_p2 = (or_ln122_1_fu_1477_p3 + xor_ln122_13_fu_1472_p2);
assign add_ln122_25_fu_1528_p2 = (tmp_6_reg_1881 + 32'd1859775393);
assign add_ln122_26_fu_1533_p2 = (add_ln122_25_fu_1528_p2 + C_10_reg_1994);
assign add_ln122_28_fu_1588_p2 = (C_11_reg_2021 + xor_ln122_15_reg_2047);
assign add_ln122_29_fu_1573_p2 = (tmp_7_reg_1886 + 32'd1859775393);
assign add_ln122_2_fu_1041_p2 = (add_ln122_1_reg_1836 + or_ln1_fu_1033_p3);
assign add_ln122_30_fu_1578_p2 = (or_ln122_3_fu_1567_p3 + add_ln122_29_fu_1573_p2);
assign add_ln122_4_fu_1095_p2 = (or_ln122_2_fu_1082_p3 + xor_ln122_3_fu_1077_p2);
assign add_ln122_5_fu_1090_p2 = (tmp_1_reg_1856 + 32'd1859775393);
assign add_ln122_6_fu_1129_p2 = (add_ln122_5_reg_1902 + D_9_reg_1825);
assign add_ln122_8_fu_1181_p2 = (or_ln122_4_fu_1168_p3 + xor_ln122_5_fu_1163_p2);
assign add_ln122_9_fu_1176_p2 = (tmp_2_reg_1861 + 32'd1859775393);
assign add_ln122_fu_835_p2 = (xor_ln122_1_fu_823_p2 + E_fu_124);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
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
assign ap_block_pp0_stage5_01001 = ~(1'b1 == 1'b1);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_ready = ap_ready_sig;
assign icmp_ln120_fu_686_p2 = ((add_ln120_fu_680_p2 < 6'd40) ? 1'b1 : 1'b0);
assign lshr_ln100_1_fu_650_p4 = {{ap_sig_allocacmp_i[5:4]}};
assign lshr_ln100_2_fu_692_p4 = {{add_ln120_fu_680_p2[5:4]}};
assign lshr_ln100_3_fu_716_p4 = {{add_ln120_1_fu_710_p2[5:4]}};
assign lshr_ln100_4_fu_740_p4 = {{add_ln120_2_fu_734_p2[5:4]}};
assign lshr_ln100_5_fu_764_p4 = {{add_ln120_3_fu_758_p2[5:4]}};
assign lshr_ln122_10_fu_1323_p4 = {{A_fu_1263_p2[31:2]}};
assign lshr_ln122_11_fu_1458_p4 = {{temp_9_fu_1449_p2[31:27]}};
assign lshr_ln122_12_fu_1422_p4 = {{temp_8_fu_1350_p2[31:2]}};
assign lshr_ln122_14_fu_1505_p4 = {{temp_9_fu_1449_p2[31:2]}};
assign lshr_ln122_2_fu_1061_p4 = {{temp_fu_1046_p2[31:27]}};
assign lshr_ln122_4_fu_1148_p4 = {{temp_7_fu_1133_p2[31:27]}};
assign lshr_ln122_6_fu_1220_p4 = {{B_20_fu_1205_p2[31:27]}};
assign lshr_ln122_8_fu_1280_p4 = {{A_fu_1263_p2[31:27]}};
assign lshr_ln122_9_fu_1358_p4 = {{B_20_reg_1964[31:2]}};
assign lshr_ln122_s_fu_1379_p4 = {{temp_8_fu_1350_p2[31:27]}};
assign lshr_ln4_fu_1023_p4 = {{B_10_fu_136[31:27]}};
assign or_ln122_1_fu_1477_p3 = {{trunc_ln122_12_fu_1454_p1}, {lshr_ln122_11_fu_1458_p4}};
assign or_ln122_2_fu_1082_p3 = {{trunc_ln122_2_fu_1057_p1}, {lshr_ln122_2_fu_1061_p4}};
assign or_ln122_3_fu_1567_p3 = {{trunc_ln122_14_reg_2057}, {lshr_ln122_13_reg_2062}};
assign or_ln122_4_fu_1168_p3 = {{trunc_ln122_4_fu_1144_p1}, {lshr_ln122_4_fu_1148_p4}};
assign or_ln122_6_fu_1240_p3 = {{trunc_ln122_6_fu_1216_p1}, {lshr_ln122_6_fu_1220_p4}};
assign or_ln122_8_fu_1300_p3 = {{trunc_ln122_8_fu_1276_p1}, {lshr_ln122_8_fu_1280_p4}};
assign or_ln122_s_fu_1399_p3 = {{trunc_ln122_10_fu_1375_p1}, {lshr_ln122_s_fu_1379_p4}};
assign or_ln1_fu_1033_p3 = {{trunc_ln122_fu_1019_p1}, {lshr_ln4_fu_1023_p4}};
assign temp_10_fu_1538_p2 = (add_ln122_24_reg_2042 + add_ln122_26_fu_1533_p2);
assign temp_11_fu_1592_p2 = (add_ln122_30_reg_2067 + add_ln122_28_fu_1588_p2);
assign temp_7_fu_1133_p2 = (add_ln122_4_reg_1907 + add_ln122_6_fu_1129_p2);
assign temp_8_fu_1350_p2 = (add_ln122_16_reg_2005 + add_ln122_18_fu_1346_p2);
assign temp_9_fu_1449_p2 = (add_ln122_20_reg_2032 + add_ln122_22_fu_1445_p2);
assign temp_fu_1046_p2 = (add_ln122_reg_1841 + add_ln122_2_fu_1041_p2);
assign tmp_1_fu_855_p9 = 'bx;
assign tmp_2_fu_878_p9 = 'bx;
assign tmp_3_fu_901_p9 = 'bx;
assign tmp_4_fu_924_p9 = 'bx;
assign tmp_5_fu_947_p9 = 'bx;
assign tmp_6_fu_970_p9 = 'bx;
assign tmp_7_fu_993_p9 = 'bx;
assign tmp_s_fu_794_p9 = 'bx;
assign trunc_ln122_10_fu_1375_p1 = temp_8_fu_1350_p2[26:0];
assign trunc_ln122_11_fu_1319_p1 = A_fu_1263_p2[1:0];
assign trunc_ln122_12_fu_1454_p1 = temp_9_fu_1449_p2[26:0];
assign trunc_ln122_13_fu_1418_p1 = temp_8_fu_1350_p2[1:0];
assign trunc_ln122_14_fu_1543_p1 = temp_10_fu_1538_p2[26:0];
assign trunc_ln122_15_fu_1501_p1 = temp_9_fu_1449_p2[1:0];
assign trunc_ln122_1_fu_841_p1 = B_fu_128[1:0];
assign trunc_ln122_2_fu_1057_p1 = temp_fu_1046_p2[26:0];
assign trunc_ln122_3_fu_1101_p1 = B_10_fu_136[1:0];
assign trunc_ln122_4_fu_1144_p1 = temp_7_fu_1133_p2[26:0];
assign trunc_ln122_5_fu_1115_p1 = temp_fu_1046_p2[1:0];
assign trunc_ln122_6_fu_1216_p1 = B_20_fu_1205_p2[26:0];
assign trunc_ln122_7_fu_1187_p1 = temp_7_fu_1133_p2[1:0];
assign trunc_ln122_8_fu_1276_p1 = A_fu_1263_p2[26:0];
assign trunc_ln122_9_fu_1355_p1 = B_20_reg_1964[1:0];
assign trunc_ln122_fu_1019_p1 = B_10_fu_136[26:0];
assign trunc_ln8_fu_646_p1 = ap_sig_allocacmp_i[3:0];
assign xor_ln122_10_fu_1389_p2 = (C_10_reg_1994 ^ A_reg_1989);
assign xor_ln122_11_fu_1393_p2 = (xor_ln122_10_fu_1389_p2 ^ C_11_fu_1367_p3);
assign xor_ln122_12_fu_1468_p2 = (temp_8_reg_2016 ^ C_11_reg_2021);
assign xor_ln122_13_fu_1472_p2 = (xor_ln122_12_fu_1468_p2 ^ C_12_reg_2010);
assign xor_ln122_14_fu_1491_p2 = (temp_9_fu_1449_p2 ^ C_12_reg_2010);
assign xor_ln122_15_fu_1496_p2 = (xor_ln122_14_fu_1491_p2 ^ C_13_reg_2037);
assign xor_ln122_1_fu_823_p2 = (xor_ln122_fu_817_p2 ^ E_11_fu_140);
assign xor_ln122_2_fu_1071_p2 = (C_9_fu_1051_p3 ^ B_10_fu_136);
assign xor_ln122_3_fu_1077_p2 = (xor_ln122_2_fu_1071_p2 ^ C_reg_1830);
assign xor_ln122_4_fu_1158_p2 = (temp_reg_1891 ^ E_21_fu_1138_p3);
assign xor_ln122_5_fu_1163_p2 = (xor_ln122_4_fu_1158_p2 ^ C_9_reg_1896);
assign xor_ln122_6_fu_1230_p2 = (temp_7_reg_1932 ^ E_21_reg_1937);
assign xor_ln122_7_fu_1234_p2 = (xor_ln122_6_fu_1230_p2 ^ D_fu_1210_p3);
assign xor_ln122_8_fu_1290_p2 = (D_reg_1972 ^ B_20_reg_1964);
assign xor_ln122_9_fu_1294_p2 = (xor_ln122_8_fu_1290_p2 ^ C_10_fu_1269_p3);
assign xor_ln122_fu_817_p2 = (E_10_fu_132 ^ B_fu_128);
assign zext_ln100_1_fu_726_p1 = lshr_ln100_3_fu_716_p4;
assign zext_ln100_2_fu_750_p1 = lshr_ln100_4_fu_740_p4;
assign zext_ln100_3_fu_774_p1 = lshr_ln100_5_fu_764_p4;
assign zext_ln100_fu_660_p1 = lshr_ln100_1_fu_650_p4;
assign zext_ln120_fu_702_p1 = lshr_ln100_2_fu_692_p4;
endmodule 