module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_address0,v224_ce0,v224_q0,v224_address1,v224_ce1,v224_q1,v228_address0,v228_ce0,v228_q0,v228_address1,v228_ce1,v228_q1,v229_address0,v229_ce0,v229_we0,v229_d0,v229_q0,v229_address1,v229_ce1,v229_we1,v229_d1,v229_q1,v4,grp_fu_148_p_din0,grp_fu_148_p_din1,grp_fu_148_p_opcode,grp_fu_148_p_dout0,grp_fu_148_p_ce,grp_fu_152_p_din0,grp_fu_152_p_din1,grp_fu_152_p_dout0,grp_fu_152_p_ce,grp_fu_156_p_din0,grp_fu_156_p_din1,grp_fu_156_p_dout0,grp_fu_156_p_ce); 
parameter    ap_ST_fsm_state1 = 26'd1;
parameter    ap_ST_fsm_state2 = 26'd2;
parameter    ap_ST_fsm_state3 = 26'd4;
parameter    ap_ST_fsm_state4 = 26'd8;
parameter    ap_ST_fsm_state5 = 26'd16;
parameter    ap_ST_fsm_state6 = 26'd32;
parameter    ap_ST_fsm_state7 = 26'd64;
parameter    ap_ST_fsm_state8 = 26'd128;
parameter    ap_ST_fsm_state9 = 26'd256;
parameter    ap_ST_fsm_state10 = 26'd512;
parameter    ap_ST_fsm_state11 = 26'd1024;
parameter    ap_ST_fsm_state12 = 26'd2048;
parameter    ap_ST_fsm_state13 = 26'd4096;
parameter    ap_ST_fsm_state14 = 26'd8192;
parameter    ap_ST_fsm_state15 = 26'd16384;
parameter    ap_ST_fsm_state16 = 26'd32768;
parameter    ap_ST_fsm_state17 = 26'd65536;
parameter    ap_ST_fsm_state18 = 26'd131072;
parameter    ap_ST_fsm_state19 = 26'd262144;
parameter    ap_ST_fsm_state20 = 26'd524288;
parameter    ap_ST_fsm_state21 = 26'd1048576;
parameter    ap_ST_fsm_state22 = 26'd2097152;
parameter    ap_ST_fsm_state23 = 26'd4194304;
parameter    ap_ST_fsm_state24 = 26'd8388608;
parameter    ap_ST_fsm_state25 = 26'd16777216;
parameter    ap_ST_fsm_state26 = 26'd33554432;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [0:0] v236_dout;
input   v236_empty_n;
output   v236_read;
output  [15:0] v224_address0;
output   v224_ce0;
input  [31:0] v224_q0;
output  [15:0] v224_address1;
output   v224_ce1;
input  [31:0] v224_q1;
output  [15:0] v228_address0;
output   v228_ce0;
input  [31:0] v228_q0;
output  [15:0] v228_address1;
output   v228_ce1;
input  [31:0] v228_q1;
output  [15:0] v229_address0;
output   v229_ce0;
output   v229_we0;
output  [31:0] v229_d0;
input  [31:0] v229_q0;
output  [15:0] v229_address1;
output   v229_ce1;
output   v229_we1;
output  [31:0] v229_d1;
input  [31:0] v229_q1;
input  [31:0] v4;
output  [31:0] grp_fu_148_p_din0;
output  [31:0] grp_fu_148_p_din1;
output  [1:0] grp_fu_148_p_opcode;
input  [31:0] grp_fu_148_p_dout0;
output   grp_fu_148_p_ce;
output  [31:0] grp_fu_152_p_din0;
output  [31:0] grp_fu_152_p_din1;
input  [31:0] grp_fu_152_p_dout0;
output   grp_fu_152_p_ce;
output  [31:0] grp_fu_156_p_din0;
output  [31:0] grp_fu_156_p_din1;
input  [31:0] grp_fu_156_p_dout0;
output   grp_fu_156_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[15:0] v228_address0;
reg v228_ce0;
reg[15:0] v228_address1;
reg v228_ce1;
reg[15:0] v229_address0;
reg v229_ce0;
reg v229_we0;
reg[31:0] v229_d0;
reg[15:0] v229_address1;
reg v229_ce1;
reg v229_we1;
reg[31:0] v229_d1;
(* fsm_encoding = "none" *) reg   [25:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
reg   [31:0] reg_593;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state21;
reg   [31:0] reg_597;
reg   [31:0] reg_601;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state22;
reg   [31:0] reg_605;
reg   [31:0] reg_609;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state23;
reg   [31:0] reg_613;
reg   [31:0] reg_617;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state19;
wire    ap_CS_fsm_state24;
reg   [31:0] reg_621;
reg   [31:0] reg_625;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state20;
reg   [31:0] reg_629;
reg   [15:0] phi_mul_load_reg_1891;
wire    ap_CS_fsm_state2;
wire   [15:0] add_ln31_1_fu_649_p2;
reg   [15:0] add_ln31_1_reg_1899;
wire   [7:0] add_ln31_fu_661_p2;
reg   [7:0] add_ln31_reg_1907;
wire   [15:0] zext_ln31_fu_667_p1;
reg   [15:0] zext_ln31_reg_1912;
wire   [0:0] cmp11_fu_671_p2;
reg   [0:0] cmp11_reg_1952;
wire   [15:0] v6_cast_fu_683_p1;
reg   [15:0] v6_cast_reg_1963;
wire    ap_CS_fsm_state3;
wire   [15:0] tmp_8_cast_fu_705_p1;
reg   [15:0] tmp_8_cast_reg_1969;
wire   [7:0] add_ln32_3_fu_709_p2;
reg   [7:0] add_ln32_3_reg_1975;
wire   [15:0] tmp_11_cast_fu_741_p1;
reg   [15:0] tmp_11_cast_reg_1980;
wire    ap_CS_fsm_state4;
wire   [15:0] tmp_13_cast_fu_753_p1;
reg   [15:0] tmp_13_cast_reg_1986;
wire   [15:0] p_cast4056_fu_763_p1;
reg   [15:0] p_cast4056_reg_1992;
wire    ap_CS_fsm_state5;
wire   [15:0] p_cast4057_fu_773_p1;
reg   [15:0] p_cast4057_reg_1998;
wire    ap_CS_fsm_state6;
wire   [15:0] p_cast4058_fu_791_p1;
reg   [15:0] p_cast4058_reg_2014;
wire   [15:0] p_cast4059_fu_801_p1;
reg   [15:0] p_cast4059_reg_2020;
wire   [15:0] p_cast4060_fu_819_p1;
reg   [15:0] p_cast4060_reg_2036;
wire   [15:0] add_ln32_cast4061_fu_829_p1;
reg   [15:0] add_ln32_cast4061_reg_2042;
wire   [15:0] p_cast4062_fu_847_p1;
reg   [15:0] p_cast4062_reg_2058;
wire   [15:0] p_cast4063_fu_857_p1;
reg   [15:0] p_cast4063_reg_2064;
wire   [15:0] p_cast4064_fu_875_p1;
reg   [15:0] p_cast4064_reg_2080;
wire   [15:0] p_cast4065_fu_885_p1;
reg   [15:0] p_cast4065_reg_2086;
wire   [15:0] p_cast4066_fu_903_p1;
reg   [15:0] p_cast4066_reg_2102;
wire   [15:0] p_cast4067_fu_913_p1;
reg   [15:0] p_cast4067_reg_2108;
wire   [15:0] mul_ln34_fu_917_p2;
reg   [15:0] mul_ln34_reg_2114;
wire   [15:0] mul_ln49_fu_922_p2;
reg   [15:0] mul_ln49_reg_2119;
wire   [15:0] mul_ln62_fu_927_p2;
reg   [15:0] mul_ln62_reg_2124;
wire   [15:0] mul_ln75_fu_932_p2;
reg   [15:0] mul_ln75_reg_2129;
wire   [15:0] mul_ln88_fu_937_p2;
reg   [15:0] mul_ln88_reg_2134;
wire   [15:0] mul_ln101_fu_942_p2;
reg   [15:0] mul_ln101_reg_2139;
wire   [15:0] mul_ln114_fu_947_p2;
reg   [15:0] mul_ln114_reg_2144;
wire   [15:0] mul_ln127_fu_952_p2;
reg   [15:0] mul_ln127_reg_2149;
wire   [15:0] mul_ln140_fu_957_p2;
reg   [15:0] mul_ln140_reg_2154;
wire   [15:0] p_cast4068_fu_976_p1;
reg   [15:0] p_cast4068_reg_2169;
wire   [15:0] p_cast4069_fu_986_p1;
reg   [15:0] p_cast4069_reg_2175;
wire   [31:0] v11_fu_990_p1;
reg   [31:0] v11_reg_2181;
wire   [31:0] v24_fu_995_p1;
reg   [31:0] v24_reg_2186;
wire   [31:0] v35_fu_1000_p1;
reg   [31:0] v35_reg_2191;
wire   [31:0] v46_fu_1005_p1;
reg   [31:0] v46_reg_2196;
wire   [31:0] v57_fu_1010_p1;
reg   [31:0] v57_reg_2201;
wire   [31:0] v68_fu_1015_p1;
reg   [31:0] v68_reg_2206;
wire   [31:0] v79_fu_1020_p1;
reg   [31:0] v79_reg_2211;
wire   [31:0] v90_fu_1025_p1;
reg   [31:0] v90_reg_2216;
wire   [31:0] v101_fu_1030_p1;
reg   [31:0] v101_reg_2221;
wire   [15:0] add_ln32_1_cast4070_fu_1049_p1;
reg   [15:0] add_ln32_1_cast4070_reg_2236;
wire   [15:0] p_cast4071_fu_1059_p1;
reg   [15:0] p_cast4071_reg_2242;
wire   [15:0] p_cast4072_fu_1077_p1;
reg   [15:0] p_cast4072_reg_2258;
wire   [15:0] p_cast4073_fu_1087_p1;
reg   [15:0] p_cast4073_reg_2264;
wire   [15:0] p_cast4074_fu_1105_p1;
reg   [15:0] p_cast4074_reg_2280;
wire   [15:0] p_cast4075_fu_1115_p1;
reg   [15:0] p_cast4075_reg_2286;
wire   [15:0] mul_ln34_1_fu_1119_p2;
reg   [15:0] mul_ln34_1_reg_2292;
wire   [15:0] mul_ln49_1_fu_1124_p2;
reg   [15:0] mul_ln49_1_reg_2297;
wire   [15:0] mul_ln62_1_fu_1129_p2;
reg   [15:0] mul_ln62_1_reg_2302;
wire   [15:0] mul_ln75_1_fu_1134_p2;
reg   [15:0] mul_ln75_1_reg_2307;
wire   [15:0] mul_ln88_1_fu_1139_p2;
reg   [15:0] mul_ln88_1_reg_2312;
wire   [15:0] mul_ln101_1_fu_1144_p2;
reg   [15:0] mul_ln101_1_reg_2317;
wire   [15:0] mul_ln114_1_fu_1149_p2;
reg   [15:0] mul_ln114_1_reg_2322;
wire   [15:0] mul_ln127_1_fu_1154_p2;
reg   [15:0] mul_ln127_1_reg_2327;
wire   [15:0] mul_ln140_1_fu_1159_p2;
reg   [15:0] mul_ln140_1_reg_2332;
wire   [15:0] p_cast4076_fu_1178_p1;
reg   [15:0] p_cast4076_reg_2347;
wire   [15:0] p_cast4077_fu_1188_p1;
reg   [15:0] p_cast4077_reg_2353;
wire   [31:0] v11_1_fu_1192_p1;
reg   [31:0] v11_1_reg_2359;
wire   [31:0] v24_1_fu_1197_p1;
reg   [31:0] v24_1_reg_2364;
wire   [31:0] v35_1_fu_1202_p1;
reg   [31:0] v35_1_reg_2369;
wire   [31:0] v46_1_fu_1207_p1;
reg   [31:0] v46_1_reg_2374;
wire   [31:0] v57_1_fu_1212_p1;
reg   [31:0] v57_1_reg_2379;
wire   [31:0] v68_1_fu_1217_p1;
reg   [31:0] v68_1_reg_2384;
wire   [31:0] v79_1_fu_1222_p1;
reg   [31:0] v79_1_reg_2389;
wire   [31:0] v90_1_fu_1227_p1;
reg   [31:0] v90_1_reg_2394;
wire   [31:0] v101_1_fu_1232_p1;
reg   [31:0] v101_1_reg_2399;
wire   [15:0] p_cast4078_fu_1251_p1;
reg   [15:0] p_cast4078_reg_2414;
wire   [15:0] add_ln32_2_cast4079_fu_1261_p1;
reg   [15:0] add_ln32_2_cast4079_reg_2420;
wire   [15:0] p_cast4080_fu_1279_p1;
reg   [15:0] p_cast4080_reg_2436;
wire   [15:0] p_cast4081_fu_1289_p1;
reg   [15:0] p_cast4081_reg_2442;
wire   [15:0] p_cast4082_fu_1307_p1;
reg   [15:0] p_cast4082_reg_2458;
wire   [15:0] p_cast4083_fu_1317_p1;
reg   [15:0] p_cast4083_reg_2464;
wire   [15:0] p_cast4084_fu_1335_p1;
reg   [15:0] p_cast4084_reg_2480;
wire   [15:0] p_cast4085_fu_1345_p1;
reg   [15:0] p_cast4085_reg_2486;
wire   [15:0] mul_ln34_2_fu_1349_p2;
reg   [15:0] mul_ln34_2_reg_2492;
wire   [15:0] mul_ln49_2_fu_1354_p2;
reg   [15:0] mul_ln49_2_reg_2497;
wire   [15:0] mul_ln62_2_fu_1359_p2;
reg   [15:0] mul_ln62_2_reg_2502;
wire   [15:0] mul_ln75_2_fu_1364_p2;
reg   [15:0] mul_ln75_2_reg_2507;
wire   [15:0] mul_ln88_2_fu_1369_p2;
reg   [15:0] mul_ln88_2_reg_2512;
wire   [15:0] mul_ln101_2_fu_1374_p2;
reg   [15:0] mul_ln101_2_reg_2517;
wire   [15:0] mul_ln114_2_fu_1379_p2;
reg   [15:0] mul_ln114_2_reg_2522;
wire   [15:0] mul_ln127_2_fu_1384_p2;
reg   [15:0] mul_ln127_2_reg_2527;
wire   [15:0] mul_ln140_2_fu_1389_p2;
reg   [15:0] mul_ln140_2_reg_2532;
wire   [15:0] p_cast4086_fu_1408_p1;
reg   [15:0] p_cast4086_reg_2547;
wire   [15:0] p_cast4087_fu_1418_p1;
reg   [15:0] p_cast4087_reg_2553;
wire   [31:0] v11_2_fu_1422_p1;
reg   [31:0] v11_2_reg_2559;
wire   [31:0] v24_2_fu_1427_p1;
reg   [31:0] v24_2_reg_2564;
wire   [31:0] v35_2_fu_1432_p1;
reg   [31:0] v35_2_reg_2569;
wire   [31:0] v46_2_fu_1437_p1;
reg   [31:0] v46_2_reg_2574;
wire   [31:0] v57_2_fu_1442_p1;
reg   [31:0] v57_2_reg_2579;
wire   [31:0] v68_2_fu_1447_p1;
reg   [31:0] v68_2_reg_2584;
wire   [31:0] v79_2_fu_1452_p1;
reg   [31:0] v79_2_reg_2589;
wire   [31:0] v90_2_fu_1457_p1;
reg   [31:0] v90_2_reg_2594;
wire   [31:0] v101_2_fu_1462_p1;
reg   [31:0] v101_2_reg_2599;
wire   [15:0] mul_ln34_3_fu_1491_p2;
reg   [15:0] mul_ln34_3_reg_2634;
wire   [15:0] mul_ln49_3_fu_1496_p2;
reg   [15:0] mul_ln49_3_reg_2639;
wire   [15:0] mul_ln62_3_fu_1501_p2;
reg   [15:0] mul_ln62_3_reg_2644;
wire   [15:0] mul_ln75_3_fu_1506_p2;
reg   [15:0] mul_ln75_3_reg_2649;
wire   [15:0] mul_ln88_3_fu_1511_p2;
reg   [15:0] mul_ln88_3_reg_2654;
wire   [15:0] mul_ln101_3_fu_1516_p2;
reg   [15:0] mul_ln101_3_reg_2659;
wire   [15:0] mul_ln114_3_fu_1521_p2;
reg   [15:0] mul_ln114_3_reg_2664;
wire   [15:0] mul_ln127_3_fu_1526_p2;
reg   [15:0] mul_ln127_3_reg_2669;
wire   [15:0] mul_ln140_3_fu_1531_p2;
reg   [15:0] mul_ln140_3_reg_2674;
wire   [31:0] v11_3_fu_1536_p1;
reg   [31:0] v11_3_reg_2679;
wire    ap_CS_fsm_state25;
wire   [31:0] v24_3_fu_1541_p1;
reg   [31:0] v24_3_reg_2684;
wire   [31:0] v35_3_fu_1546_p1;
reg   [31:0] v35_3_reg_2689;
wire   [31:0] v46_3_fu_1551_p1;
reg   [31:0] v46_3_reg_2694;
wire   [31:0] v57_3_fu_1556_p1;
reg   [31:0] v57_3_reg_2699;
wire   [31:0] v68_3_fu_1561_p1;
reg   [31:0] v68_3_reg_2704;
wire   [31:0] v79_3_fu_1566_p1;
reg   [31:0] v79_3_reg_2709;
wire   [31:0] v90_3_fu_1571_p1;
reg   [31:0] v90_3_reg_2714;
wire   [31:0] v101_3_fu_1576_p1;
reg   [31:0] v101_3_reg_2719;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_477_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_477_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_477_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_477_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_477_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_477_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_477_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_477_v228_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_477_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_477_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_477_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_477_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_477_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_477_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_477_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_477_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_477_grp_fu_2724_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_477_grp_fu_2724_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_477_grp_fu_2724_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_477_grp_fu_2724_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_477_grp_fu_2728_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_477_grp_fu_2728_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_477_grp_fu_2728_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_477_grp_fu_2732_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_477_grp_fu_2732_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_477_grp_fu_2732_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_506_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_506_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_506_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_506_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_506_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_506_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_506_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_506_v228_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_506_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_506_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_506_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_506_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_506_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_506_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_506_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_506_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_506_grp_fu_2724_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_506_grp_fu_2724_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_506_grp_fu_2724_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_506_grp_fu_2724_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_506_grp_fu_2728_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_506_grp_fu_2728_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_506_grp_fu_2728_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_506_grp_fu_2732_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_506_grp_fu_2732_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_506_grp_fu_2732_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_27_fu_535_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_27_fu_535_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_27_fu_535_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_27_fu_535_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_27_fu_535_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_27_fu_535_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_27_fu_535_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_27_fu_535_v228_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_27_fu_535_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_27_fu_535_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_27_fu_535_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_27_fu_535_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_27_fu_535_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_27_fu_535_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_27_fu_535_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_27_fu_535_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_27_fu_535_grp_fu_2724_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_27_fu_535_grp_fu_2724_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_27_fu_535_grp_fu_2724_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_27_fu_535_grp_fu_2724_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_27_fu_535_grp_fu_2728_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_27_fu_535_grp_fu_2728_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_27_fu_535_grp_fu_2728_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_27_fu_535_grp_fu_2732_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_27_fu_535_grp_fu_2732_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_27_fu_535_grp_fu_2732_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_28_fu_564_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_28_fu_564_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_28_fu_564_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_28_fu_564_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_28_fu_564_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_28_fu_564_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_28_fu_564_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_28_fu_564_v228_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_28_fu_564_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_28_fu_564_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_28_fu_564_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_28_fu_564_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_28_fu_564_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_28_fu_564_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_28_fu_564_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_28_fu_564_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_28_fu_564_grp_fu_2724_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_28_fu_564_grp_fu_2724_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_28_fu_564_grp_fu_2724_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_28_fu_564_grp_fu_2724_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_28_fu_564_grp_fu_2728_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_28_fu_564_grp_fu_2728_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_28_fu_564_grp_fu_2728_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_28_fu_564_grp_fu_2732_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_28_fu_564_grp_fu_2732_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_28_fu_564_grp_fu_2732_p_ce;
reg   [7:0] v6_reg_465;
wire    ap_CS_fsm_state26;
wire   [0:0] icmp_ln31_fu_655_p2;
reg    grp_kernel_2mm_node0_Pipeline_label_2_fu_477_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_26_fu_506_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_27_fu_535_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_28_fu_564_ap_start_reg;
wire   [63:0] p_cast4088_fu_777_p1;
wire   [63:0] p_cast_fu_781_p1;
wire   [63:0] p_cast4089_fu_805_p1;
wire   [63:0] p_cast4090_fu_809_p1;
wire   [63:0] p_cast4091_fu_833_p1;
wire   [63:0] p_cast4092_fu_837_p1;
wire   [63:0] p_cast4093_fu_861_p1;
wire   [63:0] p_cast4094_fu_865_p1;
wire   [63:0] p_cast4095_fu_889_p1;
wire   [63:0] p_cast4096_fu_893_p1;
wire   [63:0] p_cast4097_fu_962_p1;
wire   [63:0] p_cast4098_fu_966_p1;
wire   [63:0] p_cast4099_fu_1035_p1;
wire   [63:0] p_cast4100_fu_1039_p1;
wire   [63:0] p_cast4101_fu_1063_p1;
wire   [63:0] p_cast4102_fu_1067_p1;
wire   [63:0] p_cast4103_fu_1091_p1;
wire   [63:0] p_cast4104_fu_1095_p1;
wire   [63:0] p_cast4105_fu_1164_p1;
wire   [63:0] p_cast4106_fu_1168_p1;
wire   [63:0] p_cast4107_fu_1237_p1;
wire   [63:0] p_cast4108_fu_1241_p1;
wire   [63:0] p_cast4109_fu_1265_p1;
wire   [63:0] p_cast4110_fu_1269_p1;
wire   [63:0] p_cast4111_fu_1293_p1;
wire   [63:0] p_cast4112_fu_1297_p1;
wire   [63:0] p_cast4113_fu_1321_p1;
wire   [63:0] p_cast4114_fu_1325_p1;
wire   [63:0] p_cast4115_fu_1394_p1;
wire   [63:0] p_cast4116_fu_1398_p1;
wire   [63:0] p_cast4117_fu_1467_p1;
wire   [63:0] p_cast4118_fu_1471_p1;
wire   [63:0] p_cast4119_fu_1475_p1;
wire   [63:0] p_cast4120_fu_1479_p1;
wire   [63:0] p_cast4121_fu_1483_p1;
wire   [63:0] p_cast4122_fu_1487_p1;
reg   [15:0] phi_mul_fu_148;
wire   [0:0] icmp_ln32_fu_677_p2;
reg    ap_block_state1;
reg   [7:0] v5_fu_152;
reg    v236_read_local;
reg    v224_ce1_local;
reg   [15:0] v224_address1_local;
reg    v224_ce0_local;
reg   [15:0] v224_address0_local;
wire   [6:0] tmp_fu_687_p4;
wire   [7:0] tmp_8_fu_697_p3;
wire   [5:0] tmp_9_fu_723_p4;
wire   [7:0] tmp_11_fu_733_p3;
wire   [7:0] tmp_13_fu_745_p3;
wire   [7:0] empty_123_fu_757_p2;
wire   [7:0] empty_126_fu_767_p2;
wire   [15:0] grp_fu_1581_p3;
wire   [15:0] grp_fu_1589_p3;
wire   [7:0] empty_129_fu_785_p2;
wire   [7:0] empty_132_fu_795_p2;
wire   [15:0] grp_fu_1597_p3;
wire   [15:0] grp_fu_1605_p3;
wire   [7:0] empty_135_fu_813_p2;
wire   [7:0] add_ln32_fu_823_p2;
wire   [15:0] grp_fu_1613_p3;
wire   [15:0] grp_fu_1621_p3;
wire   [7:0] empty_140_fu_841_p2;
wire   [7:0] empty_143_fu_851_p2;
wire   [15:0] grp_fu_1629_p3;
wire   [15:0] grp_fu_1637_p3;
wire   [7:0] empty_146_fu_869_p2;
wire   [7:0] empty_149_fu_879_p2;
wire   [15:0] grp_fu_1645_p3;
wire   [15:0] grp_fu_1653_p3;
wire   [7:0] empty_152_fu_897_p2;
wire   [7:0] empty_155_fu_907_p2;
wire   [7:0] mul_ln34_fu_917_p0;
wire   [8:0] mul_ln34_fu_917_p1;
wire   [7:0] mul_ln49_fu_922_p0;
wire   [8:0] mul_ln49_fu_922_p1;
wire   [7:0] mul_ln62_fu_927_p0;
wire   [8:0] mul_ln62_fu_927_p1;
wire   [7:0] mul_ln75_fu_932_p0;
wire   [8:0] mul_ln75_fu_932_p1;
wire   [7:0] mul_ln88_fu_937_p0;
wire   [8:0] mul_ln88_fu_937_p1;
wire   [7:0] mul_ln101_fu_942_p0;
wire   [8:0] mul_ln101_fu_942_p1;
wire   [7:0] mul_ln114_fu_947_p0;
wire   [8:0] mul_ln114_fu_947_p1;
wire   [7:0] mul_ln127_fu_952_p0;
wire   [8:0] mul_ln127_fu_952_p1;
wire   [7:0] mul_ln140_fu_957_p0;
wire   [8:0] mul_ln140_fu_957_p1;
wire   [15:0] grp_fu_1661_p3;
wire   [15:0] grp_fu_1669_p3;
wire   [7:0] empty_158_fu_970_p2;
wire   [7:0] empty_161_fu_980_p2;
wire   [15:0] grp_fu_1677_p3;
wire   [15:0] grp_fu_1685_p3;
wire   [7:0] add_ln32_1_fu_1043_p2;
wire   [7:0] empty_166_fu_1053_p2;
wire   [15:0] grp_fu_1693_p3;
wire   [15:0] grp_fu_1701_p3;
wire   [7:0] empty_169_fu_1071_p2;
wire   [7:0] empty_172_fu_1081_p2;
wire   [15:0] grp_fu_1709_p3;
wire   [15:0] grp_fu_1717_p3;
wire   [7:0] empty_175_fu_1099_p2;
wire   [7:0] empty_178_fu_1109_p2;
wire   [7:0] mul_ln34_1_fu_1119_p0;
wire   [8:0] mul_ln34_1_fu_1119_p1;
wire   [7:0] mul_ln49_1_fu_1124_p0;
wire   [8:0] mul_ln49_1_fu_1124_p1;
wire   [7:0] mul_ln62_1_fu_1129_p0;
wire   [8:0] mul_ln62_1_fu_1129_p1;
wire   [7:0] mul_ln75_1_fu_1134_p0;
wire   [8:0] mul_ln75_1_fu_1134_p1;
wire   [7:0] mul_ln88_1_fu_1139_p0;
wire   [8:0] mul_ln88_1_fu_1139_p1;
wire   [7:0] mul_ln101_1_fu_1144_p0;
wire   [8:0] mul_ln101_1_fu_1144_p1;
wire   [7:0] mul_ln114_1_fu_1149_p0;
wire   [8:0] mul_ln114_1_fu_1149_p1;
wire   [7:0] mul_ln127_1_fu_1154_p0;
wire   [8:0] mul_ln127_1_fu_1154_p1;
wire   [7:0] mul_ln140_1_fu_1159_p0;
wire   [8:0] mul_ln140_1_fu_1159_p1;
wire   [15:0] grp_fu_1725_p3;
wire   [15:0] grp_fu_1733_p3;
wire   [7:0] empty_181_fu_1172_p2;
wire   [7:0] empty_184_fu_1182_p2;
wire   [15:0] grp_fu_1741_p3;
wire   [15:0] grp_fu_1749_p3;
wire   [7:0] empty_187_fu_1245_p2;
wire   [7:0] add_ln32_2_fu_1255_p2;
wire   [15:0] grp_fu_1757_p3;
wire   [15:0] grp_fu_1765_p3;
wire   [7:0] empty_192_fu_1273_p2;
wire   [7:0] empty_195_fu_1283_p2;
wire   [15:0] grp_fu_1773_p3;
wire   [15:0] grp_fu_1781_p3;
wire   [7:0] empty_198_fu_1301_p2;
wire   [7:0] empty_201_fu_1311_p2;
wire   [15:0] grp_fu_1789_p3;
wire   [15:0] grp_fu_1797_p3;
wire   [7:0] empty_204_fu_1329_p2;
wire   [7:0] empty_207_fu_1339_p2;
wire   [7:0] mul_ln34_2_fu_1349_p0;
wire   [8:0] mul_ln34_2_fu_1349_p1;
wire   [7:0] mul_ln49_2_fu_1354_p0;
wire   [8:0] mul_ln49_2_fu_1354_p1;
wire   [7:0] mul_ln62_2_fu_1359_p0;
wire   [8:0] mul_ln62_2_fu_1359_p1;
wire   [7:0] mul_ln75_2_fu_1364_p0;
wire   [8:0] mul_ln75_2_fu_1364_p1;
wire   [7:0] mul_ln88_2_fu_1369_p0;
wire   [8:0] mul_ln88_2_fu_1369_p1;
wire   [7:0] mul_ln101_2_fu_1374_p0;
wire   [8:0] mul_ln101_2_fu_1374_p1;
wire   [7:0] mul_ln114_2_fu_1379_p0;
wire   [8:0] mul_ln114_2_fu_1379_p1;
wire   [7:0] mul_ln127_2_fu_1384_p0;
wire   [8:0] mul_ln127_2_fu_1384_p1;
wire   [7:0] mul_ln140_2_fu_1389_p0;
wire   [8:0] mul_ln140_2_fu_1389_p1;
wire   [15:0] grp_fu_1805_p3;
wire   [15:0] grp_fu_1813_p3;
wire   [7:0] empty_210_fu_1402_p2;
wire   [7:0] empty_213_fu_1412_p2;
wire   [15:0] grp_fu_1821_p3;
wire   [15:0] grp_fu_1829_p3;
wire   [15:0] grp_fu_1837_p3;
wire   [15:0] grp_fu_1845_p3;
wire   [15:0] grp_fu_1853_p3;
wire   [15:0] grp_fu_1861_p3;
wire   [7:0] mul_ln34_3_fu_1491_p0;
wire   [8:0] mul_ln34_3_fu_1491_p1;
wire   [7:0] mul_ln49_3_fu_1496_p0;
wire   [8:0] mul_ln49_3_fu_1496_p1;
wire   [7:0] mul_ln62_3_fu_1501_p0;
wire   [8:0] mul_ln62_3_fu_1501_p1;
wire   [7:0] mul_ln75_3_fu_1506_p0;
wire   [8:0] mul_ln75_3_fu_1506_p1;
wire   [7:0] mul_ln88_3_fu_1511_p0;
wire   [8:0] mul_ln88_3_fu_1511_p1;
wire   [7:0] mul_ln101_3_fu_1516_p0;
wire   [8:0] mul_ln101_3_fu_1516_p1;
wire   [7:0] mul_ln114_3_fu_1521_p0;
wire   [8:0] mul_ln114_3_fu_1521_p1;
wire   [7:0] mul_ln127_3_fu_1526_p0;
wire   [8:0] mul_ln127_3_fu_1526_p1;
wire   [7:0] mul_ln140_3_fu_1531_p0;
wire   [8:0] mul_ln140_3_fu_1531_p1;
wire   [7:0] grp_fu_1581_p0;
wire   [7:0] grp_fu_1581_p1;
wire   [7:0] grp_fu_1581_p2;
wire   [7:0] grp_fu_1589_p0;
wire   [7:0] grp_fu_1589_p1;
wire   [7:0] grp_fu_1589_p2;
wire   [7:0] grp_fu_1597_p0;
wire   [7:0] grp_fu_1597_p1;
wire   [7:0] grp_fu_1597_p2;
wire   [7:0] grp_fu_1605_p0;
wire   [7:0] grp_fu_1605_p1;
wire   [7:0] grp_fu_1605_p2;
wire   [7:0] grp_fu_1613_p0;
wire   [7:0] grp_fu_1613_p1;
wire   [7:0] grp_fu_1613_p2;
wire   [7:0] grp_fu_1621_p0;
wire   [7:0] grp_fu_1621_p1;
wire   [7:0] grp_fu_1621_p2;
wire   [7:0] grp_fu_1629_p0;
wire   [7:0] grp_fu_1629_p1;
wire   [7:0] grp_fu_1629_p2;
wire   [7:0] grp_fu_1637_p0;
wire   [7:0] grp_fu_1637_p1;
wire   [7:0] grp_fu_1637_p2;
wire   [7:0] grp_fu_1645_p0;
wire   [7:0] grp_fu_1645_p1;
wire   [7:0] grp_fu_1645_p2;
wire   [7:0] grp_fu_1653_p0;
wire   [7:0] grp_fu_1653_p1;
wire   [7:0] grp_fu_1653_p2;
wire   [7:0] grp_fu_1661_p0;
wire   [7:0] grp_fu_1661_p1;
wire   [7:0] grp_fu_1661_p2;
wire   [7:0] grp_fu_1669_p0;
wire   [7:0] grp_fu_1669_p1;
wire   [7:0] grp_fu_1669_p2;
wire   [7:0] grp_fu_1677_p0;
wire   [7:0] grp_fu_1677_p1;
wire   [7:0] grp_fu_1677_p2;
wire   [7:0] grp_fu_1685_p0;
wire   [7:0] grp_fu_1685_p1;
wire   [7:0] grp_fu_1685_p2;
wire   [7:0] grp_fu_1693_p0;
wire   [7:0] grp_fu_1693_p1;
wire   [7:0] grp_fu_1693_p2;
wire   [7:0] grp_fu_1701_p0;
wire   [7:0] grp_fu_1701_p1;
wire   [7:0] grp_fu_1701_p2;
wire   [7:0] grp_fu_1709_p0;
wire   [7:0] grp_fu_1709_p1;
wire   [7:0] grp_fu_1709_p2;
wire   [7:0] grp_fu_1717_p0;
wire   [7:0] grp_fu_1717_p1;
wire   [7:0] grp_fu_1717_p2;
wire   [7:0] grp_fu_1725_p0;
wire   [7:0] grp_fu_1725_p1;
wire   [7:0] grp_fu_1725_p2;
wire   [7:0] grp_fu_1733_p0;
wire   [7:0] grp_fu_1733_p1;
wire   [7:0] grp_fu_1733_p2;
wire   [7:0] grp_fu_1741_p0;
wire   [7:0] grp_fu_1741_p1;
wire   [7:0] grp_fu_1741_p2;
wire   [7:0] grp_fu_1749_p0;
wire   [7:0] grp_fu_1749_p1;
wire   [7:0] grp_fu_1749_p2;
wire   [7:0] grp_fu_1757_p0;
wire   [7:0] grp_fu_1757_p1;
wire   [7:0] grp_fu_1757_p2;
wire   [7:0] grp_fu_1765_p0;
wire   [7:0] grp_fu_1765_p1;
wire   [7:0] grp_fu_1765_p2;
wire   [7:0] grp_fu_1773_p0;
wire   [7:0] grp_fu_1773_p1;
wire   [7:0] grp_fu_1773_p2;
wire   [7:0] grp_fu_1781_p0;
wire   [7:0] grp_fu_1781_p1;
wire   [7:0] grp_fu_1781_p2;
wire   [7:0] grp_fu_1789_p0;
wire   [7:0] grp_fu_1789_p1;
wire   [7:0] grp_fu_1789_p2;
wire   [7:0] grp_fu_1797_p0;
wire   [7:0] grp_fu_1797_p1;
wire   [7:0] grp_fu_1797_p2;
wire   [7:0] grp_fu_1805_p0;
wire   [7:0] grp_fu_1805_p1;
wire   [7:0] grp_fu_1805_p2;
wire   [7:0] grp_fu_1813_p0;
wire   [7:0] grp_fu_1813_p1;
wire   [7:0] grp_fu_1813_p2;
wire   [7:0] grp_fu_1821_p0;
wire   [7:0] grp_fu_1821_p1;
wire   [7:0] grp_fu_1821_p2;
wire   [7:0] grp_fu_1829_p0;
wire   [7:0] grp_fu_1829_p1;
wire   [7:0] grp_fu_1829_p2;
wire   [7:0] grp_fu_1837_p0;
wire   [7:0] grp_fu_1837_p1;
wire   [7:0] grp_fu_1837_p2;
wire   [7:0] grp_fu_1845_p0;
wire   [7:0] grp_fu_1845_p1;
wire   [7:0] grp_fu_1845_p2;
wire   [7:0] grp_fu_1853_p0;
wire   [7:0] grp_fu_1853_p1;
wire   [7:0] grp_fu_1853_p2;
wire   [7:0] grp_fu_1861_p0;
wire   [7:0] grp_fu_1861_p1;
wire   [7:0] grp_fu_1861_p2;
reg    grp_fu_1693_ce;
reg    grp_fu_1701_ce;
reg    grp_fu_1709_ce;
reg    grp_fu_1717_ce;
reg    grp_fu_1725_ce;
reg    grp_fu_1733_ce;
reg    grp_fu_1741_ce;
reg    grp_fu_1749_ce;
reg    grp_fu_1757_ce;
reg    grp_fu_1765_ce;
reg    grp_fu_1773_ce;
reg    grp_fu_1781_ce;
reg    grp_fu_1789_ce;
reg    grp_fu_1797_ce;
reg    grp_fu_1805_ce;
reg    grp_fu_1813_ce;
reg    grp_fu_1837_ce;
reg    grp_fu_1845_ce;
reg    grp_fu_1853_ce;
reg    grp_fu_1861_ce;
reg   [31:0] grp_fu_2724_p0;
reg   [31:0] grp_fu_2724_p1;
reg    grp_fu_2724_ce;
reg   [31:0] grp_fu_2728_p0;
reg   [31:0] grp_fu_2728_p1;
reg    grp_fu_2728_ce;
reg   [31:0] grp_fu_2732_p0;
reg   [31:0] grp_fu_2732_p1;
reg    grp_fu_2732_ce;
reg   [25:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
reg    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
reg    ap_ST_fsm_state17_blk;
wire    ap_ST_fsm_state18_blk;
wire    ap_ST_fsm_state19_blk;
wire    ap_ST_fsm_state20_blk;
wire    ap_ST_fsm_state21_blk;
reg    ap_ST_fsm_state22_blk;
wire    ap_ST_fsm_state23_blk;
wire    ap_ST_fsm_state24_blk;
wire    ap_ST_fsm_state25_blk;
reg    ap_ST_fsm_state26_blk;
wire   [15:0] grp_fu_1581_p00;
wire   [15:0] grp_fu_1589_p00;
wire   [15:0] grp_fu_1597_p00;
wire   [15:0] grp_fu_1605_p00;
wire   [15:0] grp_fu_1613_p00;
wire   [15:0] grp_fu_1621_p00;
wire   [15:0] grp_fu_1629_p00;
wire   [15:0] grp_fu_1637_p00;
wire   [15:0] grp_fu_1645_p00;
wire   [15:0] grp_fu_1653_p00;
wire   [15:0] grp_fu_1661_p00;
wire   [15:0] grp_fu_1669_p00;
wire   [15:0] grp_fu_1677_p00;
wire   [15:0] grp_fu_1685_p00;
wire   [15:0] grp_fu_1693_p00;
wire   [15:0] grp_fu_1701_p00;
wire   [15:0] grp_fu_1709_p00;
wire   [15:0] grp_fu_1717_p00;
wire   [15:0] grp_fu_1725_p00;
wire   [15:0] grp_fu_1733_p00;
wire   [15:0] grp_fu_1741_p00;
wire   [15:0] grp_fu_1749_p00;
wire   [15:0] grp_fu_1757_p00;
wire   [15:0] grp_fu_1765_p00;
wire   [15:0] grp_fu_1773_p00;
wire   [15:0] grp_fu_1781_p00;
wire   [15:0] grp_fu_1789_p00;
wire   [15:0] grp_fu_1797_p00;
wire   [15:0] grp_fu_1805_p00;
wire   [15:0] grp_fu_1813_p00;
wire   [15:0] grp_fu_1821_p00;
wire   [15:0] grp_fu_1829_p00;
wire   [15:0] grp_fu_1837_p00;
wire   [15:0] grp_fu_1845_p00;
wire   [15:0] grp_fu_1853_p00;
wire   [15:0] grp_fu_1861_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 26'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_2_fu_477_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_26_fu_506_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_27_fu_535_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_28_fu_564_ap_start_reg = 1'b0;
#0 phi_mul_fu_148 = 16'd0;
#0 v5_fu_152 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_2 grp_kernel_2mm_node0_Pipeline_label_2_fu_477(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_2_fu_477_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_2_fu_477_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_2_fu_477_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_2_fu_477_ap_ready),.phi_mul(phi_mul_load_reg_1891),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_477_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_477_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_477_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_477_v228_ce1),.v228_q1(v228_q1),.mul_ln34(mul_ln34_reg_2114),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_477_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_477_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_477_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_477_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_477_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_477_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_477_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_477_v229_d1),.v229_q1(v229_q1),.mul_ln49(mul_ln49_reg_2119),.mul_ln62(mul_ln62_reg_2124),.mul_ln75(mul_ln75_reg_2129),.mul_ln88(mul_ln88_reg_2134),.mul_ln101(mul_ln101_reg_2139),.mul_ln114(mul_ln114_reg_2144),.mul_ln127(mul_ln127_reg_2149),.mul_ln140(mul_ln140_reg_2154),.v4(v4),.cmp11(cmp11_reg_1952),.v11(v11_reg_2181),.v24(v24_reg_2186),.v35(v35_reg_2191),.v46(v46_reg_2196),.v57(v57_reg_2201),.v68(v68_reg_2206),.v79(v79_reg_2211),.v90(v90_reg_2216),.v101(v101_reg_2221),.grp_fu_2724_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_477_grp_fu_2724_p_din0),.grp_fu_2724_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_477_grp_fu_2724_p_din1),.grp_fu_2724_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_477_grp_fu_2724_p_opcode),.grp_fu_2724_p_dout0(grp_fu_148_p_dout0),.grp_fu_2724_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_477_grp_fu_2724_p_ce),.grp_fu_2728_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_477_grp_fu_2728_p_din0),.grp_fu_2728_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_477_grp_fu_2728_p_din1),.grp_fu_2728_p_dout0(grp_fu_152_p_dout0),.grp_fu_2728_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_477_grp_fu_2728_p_ce),.grp_fu_2732_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_477_grp_fu_2732_p_din0),.grp_fu_2732_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_477_grp_fu_2732_p_din1),.grp_fu_2732_p_dout0(grp_fu_156_p_dout0),.grp_fu_2732_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_477_grp_fu_2732_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_26 grp_kernel_2mm_node0_Pipeline_label_26_fu_506(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_26_fu_506_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_26_fu_506_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_26_fu_506_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_26_fu_506_ap_ready),.phi_mul(phi_mul_load_reg_1891),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_26_fu_506_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_26_fu_506_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_26_fu_506_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_26_fu_506_v228_ce1),.v228_q1(v228_q1),.mul_ln34_1(mul_ln34_1_reg_2292),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_26_fu_506_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_26_fu_506_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_26_fu_506_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_26_fu_506_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_26_fu_506_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_26_fu_506_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_26_fu_506_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_26_fu_506_v229_d1),.v229_q1(v229_q1),.mul_ln49_1(mul_ln49_1_reg_2297),.mul_ln62_1(mul_ln62_1_reg_2302),.mul_ln75_1(mul_ln75_1_reg_2307),.mul_ln88_1(mul_ln88_1_reg_2312),.mul_ln101_1(mul_ln101_1_reg_2317),.mul_ln114_1(mul_ln114_1_reg_2322),.mul_ln127_1(mul_ln127_1_reg_2327),.mul_ln140_1(mul_ln140_1_reg_2332),.v4(v4),.cmp11(cmp11_reg_1952),.v11_1(v11_1_reg_2359),.v24_1(v24_1_reg_2364),.v35_1(v35_1_reg_2369),.v46_1(v46_1_reg_2374),.v57_1(v57_1_reg_2379),.v68_1(v68_1_reg_2384),.v79_1(v79_1_reg_2389),.v90_1(v90_1_reg_2394),.v101_1(v101_1_reg_2399),.grp_fu_2724_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_506_grp_fu_2724_p_din0),.grp_fu_2724_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_506_grp_fu_2724_p_din1),.grp_fu_2724_p_opcode(grp_kernel_2mm_node0_Pipeline_label_26_fu_506_grp_fu_2724_p_opcode),.grp_fu_2724_p_dout0(grp_fu_148_p_dout0),.grp_fu_2724_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_506_grp_fu_2724_p_ce),.grp_fu_2728_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_506_grp_fu_2728_p_din0),.grp_fu_2728_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_506_grp_fu_2728_p_din1),.grp_fu_2728_p_dout0(grp_fu_152_p_dout0),.grp_fu_2728_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_506_grp_fu_2728_p_ce),.grp_fu_2732_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_506_grp_fu_2732_p_din0),.grp_fu_2732_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_506_grp_fu_2732_p_din1),.grp_fu_2732_p_dout0(grp_fu_156_p_dout0),.grp_fu_2732_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_506_grp_fu_2732_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_27 grp_kernel_2mm_node0_Pipeline_label_27_fu_535(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_27_fu_535_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_27_fu_535_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_27_fu_535_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_27_fu_535_ap_ready),.phi_mul(phi_mul_load_reg_1891),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_27_fu_535_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_27_fu_535_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_27_fu_535_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_27_fu_535_v228_ce1),.v228_q1(v228_q1),.mul_ln34_2(mul_ln34_2_reg_2492),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_27_fu_535_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_27_fu_535_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_27_fu_535_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_27_fu_535_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_27_fu_535_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_27_fu_535_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_27_fu_535_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_27_fu_535_v229_d1),.v229_q1(v229_q1),.mul_ln49_2(mul_ln49_2_reg_2497),.mul_ln62_2(mul_ln62_2_reg_2502),.mul_ln75_2(mul_ln75_2_reg_2507),.mul_ln88_2(mul_ln88_2_reg_2512),.mul_ln101_2(mul_ln101_2_reg_2517),.mul_ln114_2(mul_ln114_2_reg_2522),.mul_ln127_2(mul_ln127_2_reg_2527),.mul_ln140_2(mul_ln140_2_reg_2532),.v4(v4),.cmp11(cmp11_reg_1952),.v11_2(v11_2_reg_2559),.v24_2(v24_2_reg_2564),.v35_2(v35_2_reg_2569),.v46_2(v46_2_reg_2574),.v57_2(v57_2_reg_2579),.v68_2(v68_2_reg_2584),.v79_2(v79_2_reg_2589),.v90_2(v90_2_reg_2594),.v101_2(v101_2_reg_2599),.grp_fu_2724_p_din0(grp_kernel_2mm_node0_Pipeline_label_27_fu_535_grp_fu_2724_p_din0),.grp_fu_2724_p_din1(grp_kernel_2mm_node0_Pipeline_label_27_fu_535_grp_fu_2724_p_din1),.grp_fu_2724_p_opcode(grp_kernel_2mm_node0_Pipeline_label_27_fu_535_grp_fu_2724_p_opcode),.grp_fu_2724_p_dout0(grp_fu_148_p_dout0),.grp_fu_2724_p_ce(grp_kernel_2mm_node0_Pipeline_label_27_fu_535_grp_fu_2724_p_ce),.grp_fu_2728_p_din0(grp_kernel_2mm_node0_Pipeline_label_27_fu_535_grp_fu_2728_p_din0),.grp_fu_2728_p_din1(grp_kernel_2mm_node0_Pipeline_label_27_fu_535_grp_fu_2728_p_din1),.grp_fu_2728_p_dout0(grp_fu_152_p_dout0),.grp_fu_2728_p_ce(grp_kernel_2mm_node0_Pipeline_label_27_fu_535_grp_fu_2728_p_ce),.grp_fu_2732_p_din0(grp_kernel_2mm_node0_Pipeline_label_27_fu_535_grp_fu_2732_p_din0),.grp_fu_2732_p_din1(grp_kernel_2mm_node0_Pipeline_label_27_fu_535_grp_fu_2732_p_din1),.grp_fu_2732_p_dout0(grp_fu_156_p_dout0),.grp_fu_2732_p_ce(grp_kernel_2mm_node0_Pipeline_label_27_fu_535_grp_fu_2732_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_28 grp_kernel_2mm_node0_Pipeline_label_28_fu_564(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_28_fu_564_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_28_fu_564_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_28_fu_564_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_28_fu_564_ap_ready),.phi_mul(phi_mul_load_reg_1891),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_28_fu_564_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_28_fu_564_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_28_fu_564_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_28_fu_564_v228_ce1),.v228_q1(v228_q1),.mul_ln34_3(mul_ln34_3_reg_2634),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_28_fu_564_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_28_fu_564_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_28_fu_564_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_28_fu_564_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_28_fu_564_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_28_fu_564_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_28_fu_564_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_28_fu_564_v229_d1),.v229_q1(v229_q1),.mul_ln49_3(mul_ln49_3_reg_2639),.mul_ln62_3(mul_ln62_3_reg_2644),.mul_ln75_3(mul_ln75_3_reg_2649),.mul_ln88_3(mul_ln88_3_reg_2654),.mul_ln101_3(mul_ln101_3_reg_2659),.mul_ln114_3(mul_ln114_3_reg_2664),.mul_ln127_3(mul_ln127_3_reg_2669),.mul_ln140_3(mul_ln140_3_reg_2674),.v4(v4),.cmp11(cmp11_reg_1952),.v11_3(v11_3_reg_2679),.v24_3(v24_3_reg_2684),.v35_3(v35_3_reg_2689),.v46_3(v46_3_reg_2694),.v57_3(v57_3_reg_2699),.v68_3(v68_3_reg_2704),.v79_3(v79_3_reg_2709),.v90_3(v90_3_reg_2714),.v101_3(v101_3_reg_2719),.grp_fu_2724_p_din0(grp_kernel_2mm_node0_Pipeline_label_28_fu_564_grp_fu_2724_p_din0),.grp_fu_2724_p_din1(grp_kernel_2mm_node0_Pipeline_label_28_fu_564_grp_fu_2724_p_din1),.grp_fu_2724_p_opcode(grp_kernel_2mm_node0_Pipeline_label_28_fu_564_grp_fu_2724_p_opcode),.grp_fu_2724_p_dout0(grp_fu_148_p_dout0),.grp_fu_2724_p_ce(grp_kernel_2mm_node0_Pipeline_label_28_fu_564_grp_fu_2724_p_ce),.grp_fu_2728_p_din0(grp_kernel_2mm_node0_Pipeline_label_28_fu_564_grp_fu_2728_p_din0),.grp_fu_2728_p_din1(grp_kernel_2mm_node0_Pipeline_label_28_fu_564_grp_fu_2728_p_din1),.grp_fu_2728_p_dout0(grp_fu_152_p_dout0),.grp_fu_2728_p_ce(grp_kernel_2mm_node0_Pipeline_label_28_fu_564_grp_fu_2728_p_ce),.grp_fu_2732_p_din0(grp_kernel_2mm_node0_Pipeline_label_28_fu_564_grp_fu_2732_p_din0),.grp_fu_2732_p_din1(grp_kernel_2mm_node0_Pipeline_label_28_fu_564_grp_fu_2732_p_din1),.grp_fu_2732_p_dout0(grp_fu_156_p_dout0),.grp_fu_2732_p_ce(grp_kernel_2mm_node0_Pipeline_label_28_fu_564_grp_fu_2732_p_ce));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U241(.din0(mul_ln34_fu_917_p0),.din1(mul_ln34_fu_917_p1),.dout(mul_ln34_fu_917_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U242(.din0(mul_ln49_fu_922_p0),.din1(mul_ln49_fu_922_p1),.dout(mul_ln49_fu_922_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U243(.din0(mul_ln62_fu_927_p0),.din1(mul_ln62_fu_927_p1),.dout(mul_ln62_fu_927_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U244(.din0(mul_ln75_fu_932_p0),.din1(mul_ln75_fu_932_p1),.dout(mul_ln75_fu_932_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U245(.din0(mul_ln88_fu_937_p0),.din1(mul_ln88_fu_937_p1),.dout(mul_ln88_fu_937_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U246(.din0(mul_ln101_fu_942_p0),.din1(mul_ln101_fu_942_p1),.dout(mul_ln101_fu_942_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U247(.din0(mul_ln114_fu_947_p0),.din1(mul_ln114_fu_947_p1),.dout(mul_ln114_fu_947_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U248(.din0(mul_ln127_fu_952_p0),.din1(mul_ln127_fu_952_p1),.dout(mul_ln127_fu_952_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U249(.din0(mul_ln140_fu_957_p0),.din1(mul_ln140_fu_957_p1),.dout(mul_ln140_fu_957_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U250(.din0(mul_ln34_1_fu_1119_p0),.din1(mul_ln34_1_fu_1119_p1),.dout(mul_ln34_1_fu_1119_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U251(.din0(mul_ln49_1_fu_1124_p0),.din1(mul_ln49_1_fu_1124_p1),.dout(mul_ln49_1_fu_1124_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U252(.din0(mul_ln62_1_fu_1129_p0),.din1(mul_ln62_1_fu_1129_p1),.dout(mul_ln62_1_fu_1129_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U253(.din0(mul_ln75_1_fu_1134_p0),.din1(mul_ln75_1_fu_1134_p1),.dout(mul_ln75_1_fu_1134_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U254(.din0(mul_ln88_1_fu_1139_p0),.din1(mul_ln88_1_fu_1139_p1),.dout(mul_ln88_1_fu_1139_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U255(.din0(mul_ln101_1_fu_1144_p0),.din1(mul_ln101_1_fu_1144_p1),.dout(mul_ln101_1_fu_1144_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U256(.din0(mul_ln114_1_fu_1149_p0),.din1(mul_ln114_1_fu_1149_p1),.dout(mul_ln114_1_fu_1149_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U257(.din0(mul_ln127_1_fu_1154_p0),.din1(mul_ln127_1_fu_1154_p1),.dout(mul_ln127_1_fu_1154_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U258(.din0(mul_ln140_1_fu_1159_p0),.din1(mul_ln140_1_fu_1159_p1),.dout(mul_ln140_1_fu_1159_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U259(.din0(mul_ln34_2_fu_1349_p0),.din1(mul_ln34_2_fu_1349_p1),.dout(mul_ln34_2_fu_1349_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U260(.din0(mul_ln49_2_fu_1354_p0),.din1(mul_ln49_2_fu_1354_p1),.dout(mul_ln49_2_fu_1354_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U261(.din0(mul_ln62_2_fu_1359_p0),.din1(mul_ln62_2_fu_1359_p1),.dout(mul_ln62_2_fu_1359_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U262(.din0(mul_ln75_2_fu_1364_p0),.din1(mul_ln75_2_fu_1364_p1),.dout(mul_ln75_2_fu_1364_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U263(.din0(mul_ln88_2_fu_1369_p0),.din1(mul_ln88_2_fu_1369_p1),.dout(mul_ln88_2_fu_1369_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U264(.din0(mul_ln101_2_fu_1374_p0),.din1(mul_ln101_2_fu_1374_p1),.dout(mul_ln101_2_fu_1374_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U265(.din0(mul_ln114_2_fu_1379_p0),.din1(mul_ln114_2_fu_1379_p1),.dout(mul_ln114_2_fu_1379_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U266(.din0(mul_ln127_2_fu_1384_p0),.din1(mul_ln127_2_fu_1384_p1),.dout(mul_ln127_2_fu_1384_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U267(.din0(mul_ln140_2_fu_1389_p0),.din1(mul_ln140_2_fu_1389_p1),.dout(mul_ln140_2_fu_1389_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U268(.din0(mul_ln34_3_fu_1491_p0),.din1(mul_ln34_3_fu_1491_p1),.dout(mul_ln34_3_fu_1491_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U269(.din0(mul_ln49_3_fu_1496_p0),.din1(mul_ln49_3_fu_1496_p1),.dout(mul_ln49_3_fu_1496_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U270(.din0(mul_ln62_3_fu_1501_p0),.din1(mul_ln62_3_fu_1501_p1),.dout(mul_ln62_3_fu_1501_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U271(.din0(mul_ln75_3_fu_1506_p0),.din1(mul_ln75_3_fu_1506_p1),.dout(mul_ln75_3_fu_1506_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U272(.din0(mul_ln88_3_fu_1511_p0),.din1(mul_ln88_3_fu_1511_p1),.dout(mul_ln88_3_fu_1511_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U273(.din0(mul_ln101_3_fu_1516_p0),.din1(mul_ln101_3_fu_1516_p1),.dout(mul_ln101_3_fu_1516_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U274(.din0(mul_ln114_3_fu_1521_p0),.din1(mul_ln114_3_fu_1521_p1),.dout(mul_ln114_3_fu_1521_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U275(.din0(mul_ln127_3_fu_1526_p0),.din1(mul_ln127_3_fu_1526_p1),.dout(mul_ln127_3_fu_1526_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U276(.din0(mul_ln140_3_fu_1531_p0),.din1(mul_ln140_3_fu_1531_p1),.dout(mul_ln140_3_fu_1531_p2));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U277(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1581_p0),.din1(grp_fu_1581_p1),.din2(grp_fu_1581_p2),.ce(1'b1),.dout(grp_fu_1581_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U278(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1589_p0),.din1(grp_fu_1589_p1),.din2(grp_fu_1589_p2),.ce(1'b1),.dout(grp_fu_1589_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U279(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1597_p0),.din1(grp_fu_1597_p1),.din2(grp_fu_1597_p2),.ce(1'b1),.dout(grp_fu_1597_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U280(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1605_p0),.din1(grp_fu_1605_p1),.din2(grp_fu_1605_p2),.ce(1'b1),.dout(grp_fu_1605_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U281(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1613_p0),.din1(grp_fu_1613_p1),.din2(grp_fu_1613_p2),.ce(1'b1),.dout(grp_fu_1613_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U282(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1621_p0),.din1(grp_fu_1621_p1),.din2(grp_fu_1621_p2),.ce(1'b1),.dout(grp_fu_1621_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U283(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1629_p0),.din1(grp_fu_1629_p1),.din2(grp_fu_1629_p2),.ce(1'b1),.dout(grp_fu_1629_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U284(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1637_p0),.din1(grp_fu_1637_p1),.din2(grp_fu_1637_p2),.ce(1'b1),.dout(grp_fu_1637_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U285(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1645_p0),.din1(grp_fu_1645_p1),.din2(grp_fu_1645_p2),.ce(1'b1),.dout(grp_fu_1645_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U286(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1653_p0),.din1(grp_fu_1653_p1),.din2(grp_fu_1653_p2),.ce(1'b1),.dout(grp_fu_1653_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U287(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1661_p0),.din1(grp_fu_1661_p1),.din2(grp_fu_1661_p2),.ce(1'b1),.dout(grp_fu_1661_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U288(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1669_p0),.din1(grp_fu_1669_p1),.din2(grp_fu_1669_p2),.ce(1'b1),.dout(grp_fu_1669_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U289(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1677_p0),.din1(grp_fu_1677_p1),.din2(grp_fu_1677_p2),.ce(1'b1),.dout(grp_fu_1677_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U290(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1685_p0),.din1(grp_fu_1685_p1),.din2(grp_fu_1685_p2),.ce(1'b1),.dout(grp_fu_1685_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U291(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1693_p0),.din1(grp_fu_1693_p1),.din2(grp_fu_1693_p2),.ce(grp_fu_1693_ce),.dout(grp_fu_1693_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U292(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1701_p0),.din1(grp_fu_1701_p1),.din2(grp_fu_1701_p2),.ce(grp_fu_1701_ce),.dout(grp_fu_1701_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U293(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1709_p0),.din1(grp_fu_1709_p1),.din2(grp_fu_1709_p2),.ce(grp_fu_1709_ce),.dout(grp_fu_1709_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U294(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1717_p0),.din1(grp_fu_1717_p1),.din2(grp_fu_1717_p2),.ce(grp_fu_1717_ce),.dout(grp_fu_1717_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U295(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1725_p0),.din1(grp_fu_1725_p1),.din2(grp_fu_1725_p2),.ce(grp_fu_1725_ce),.dout(grp_fu_1725_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U296(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1733_p0),.din1(grp_fu_1733_p1),.din2(grp_fu_1733_p2),.ce(grp_fu_1733_ce),.dout(grp_fu_1733_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U297(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1741_p0),.din1(grp_fu_1741_p1),.din2(grp_fu_1741_p2),.ce(grp_fu_1741_ce),.dout(grp_fu_1741_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U298(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1749_p0),.din1(grp_fu_1749_p1),.din2(grp_fu_1749_p2),.ce(grp_fu_1749_ce),.dout(grp_fu_1749_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U299(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1757_p0),.din1(grp_fu_1757_p1),.din2(grp_fu_1757_p2),.ce(grp_fu_1757_ce),.dout(grp_fu_1757_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U300(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1765_p0),.din1(grp_fu_1765_p1),.din2(grp_fu_1765_p2),.ce(grp_fu_1765_ce),.dout(grp_fu_1765_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U301(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1773_p0),.din1(grp_fu_1773_p1),.din2(grp_fu_1773_p2),.ce(grp_fu_1773_ce),.dout(grp_fu_1773_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U302(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1781_p0),.din1(grp_fu_1781_p1),.din2(grp_fu_1781_p2),.ce(grp_fu_1781_ce),.dout(grp_fu_1781_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U303(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1789_p0),.din1(grp_fu_1789_p1),.din2(grp_fu_1789_p2),.ce(grp_fu_1789_ce),.dout(grp_fu_1789_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U304(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1797_p0),.din1(grp_fu_1797_p1),.din2(grp_fu_1797_p2),.ce(grp_fu_1797_ce),.dout(grp_fu_1797_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U305(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1805_p0),.din1(grp_fu_1805_p1),.din2(grp_fu_1805_p2),.ce(grp_fu_1805_ce),.dout(grp_fu_1805_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U306(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1813_p0),.din1(grp_fu_1813_p1),.din2(grp_fu_1813_p2),.ce(grp_fu_1813_ce),.dout(grp_fu_1813_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U307(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1821_p0),.din1(grp_fu_1821_p1),.din2(grp_fu_1821_p2),.ce(1'b1),.dout(grp_fu_1821_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U308(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1829_p0),.din1(grp_fu_1829_p1),.din2(grp_fu_1829_p2),.ce(1'b1),.dout(grp_fu_1829_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U309(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1837_p0),.din1(grp_fu_1837_p1),.din2(grp_fu_1837_p2),.ce(grp_fu_1837_ce),.dout(grp_fu_1837_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U310(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1845_p0),.din1(grp_fu_1845_p1),.din2(grp_fu_1845_p2),.ce(grp_fu_1845_ce),.dout(grp_fu_1845_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U311(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1853_p0),.din1(grp_fu_1853_p1),.din2(grp_fu_1853_p2),.ce(grp_fu_1853_ce),.dout(grp_fu_1853_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U312(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1861_p0),.din1(grp_fu_1861_p1),.din2(grp_fu_1861_p2),.ce(grp_fu_1861_ce),.dout(grp_fu_1861_p3));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_26_fu_506_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node0_Pipeline_label_26_fu_506_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_26_fu_506_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_26_fu_506_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_27_fu_535_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state21)) begin
            grp_kernel_2mm_node0_Pipeline_label_27_fu_535_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_27_fu_535_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_27_fu_535_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_28_fu_564_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state25)) begin
            grp_kernel_2mm_node0_Pipeline_label_28_fu_564_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_28_fu_564_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_28_fu_564_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_2_fu_477_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_477_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_477_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_477_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_fu_148 <= 16'd0;
    end else if (((icmp_ln32_fu_677_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_mul_fu_148 <= add_ln31_1_reg_1899;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_152 <= 8'd0;
    end else if (((icmp_ln32_fu_677_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v5_fu_152 <= add_ln31_reg_1907;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln31_fu_655_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v6_reg_465 <= 8'd0;
    end else if (((grp_kernel_2mm_node0_Pipeline_label_28_fu_564_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26))) begin
        v6_reg_465 <= add_ln32_3_reg_1975;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln31_1_reg_1899 <= add_ln31_1_fu_649_p2;
        add_ln31_reg_1907 <= add_ln31_fu_661_p2;
        cmp11_reg_1952 <= cmp11_fu_671_p2;
        phi_mul_load_reg_1891 <= phi_mul_fu_148;
        zext_ln31_reg_1912[7 : 0] <= zext_ln31_fu_667_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        add_ln32_1_cast4070_reg_2236[7 : 0] <= add_ln32_1_cast4070_fu_1049_p1[7 : 0];
        p_cast4071_reg_2242[7 : 0] <= p_cast4071_fu_1059_p1[7 : 0];
        v101_reg_2221 <= v101_fu_1030_p1;
        v11_reg_2181 <= v11_fu_990_p1;
        v24_reg_2186 <= v24_fu_995_p1;
        v35_reg_2191 <= v35_fu_1000_p1;
        v46_reg_2196 <= v46_fu_1005_p1;
        v57_reg_2201 <= v57_fu_1010_p1;
        v68_reg_2206 <= v68_fu_1015_p1;
        v79_reg_2211 <= v79_fu_1020_p1;
        v90_reg_2216 <= v90_fu_1025_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        add_ln32_2_cast4079_reg_2420[7 : 0] <= add_ln32_2_cast4079_fu_1261_p1[7 : 0];
        p_cast4078_reg_2414[7 : 0] <= p_cast4078_fu_1251_p1[7 : 0];
        v101_1_reg_2399 <= v101_1_fu_1232_p1;
        v11_1_reg_2359 <= v11_1_fu_1192_p1;
        v24_1_reg_2364 <= v24_1_fu_1197_p1;
        v35_1_reg_2369 <= v35_1_fu_1202_p1;
        v46_1_reg_2374 <= v46_1_fu_1207_p1;
        v57_1_reg_2379 <= v57_1_fu_1212_p1;
        v68_1_reg_2384 <= v68_1_fu_1217_p1;
        v79_1_reg_2389 <= v79_1_fu_1222_p1;
        v90_1_reg_2394 <= v90_1_fu_1227_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_3_reg_1975 <= add_ln32_3_fu_709_p2;
        tmp_8_cast_reg_1969[7 : 1] <= tmp_8_cast_fu_705_p1[7 : 1];
        v6_cast_reg_1963[7 : 0] <= v6_cast_fu_683_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        add_ln32_cast4061_reg_2042[7 : 0] <= add_ln32_cast4061_fu_829_p1[7 : 0];
        p_cast4060_reg_2036[7 : 0] <= p_cast4060_fu_819_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln101_1_reg_2317 <= mul_ln101_1_fu_1144_p2;
        mul_ln114_1_reg_2322 <= mul_ln114_1_fu_1149_p2;
        mul_ln127_1_reg_2327 <= mul_ln127_1_fu_1154_p2;
        mul_ln140_1_reg_2332 <= mul_ln140_1_fu_1159_p2;
        mul_ln34_1_reg_2292 <= mul_ln34_1_fu_1119_p2;
        mul_ln49_1_reg_2297 <= mul_ln49_1_fu_1124_p2;
        mul_ln62_1_reg_2302 <= mul_ln62_1_fu_1129_p2;
        mul_ln75_1_reg_2307 <= mul_ln75_1_fu_1134_p2;
        mul_ln88_1_reg_2312 <= mul_ln88_1_fu_1139_p2;
        p_cast4076_reg_2347[7 : 0] <= p_cast4076_fu_1178_p1[7 : 0];
        p_cast4077_reg_2353[7 : 0] <= p_cast4077_fu_1188_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        mul_ln101_2_reg_2517 <= mul_ln101_2_fu_1374_p2;
        mul_ln114_2_reg_2522 <= mul_ln114_2_fu_1379_p2;
        mul_ln127_2_reg_2527 <= mul_ln127_2_fu_1384_p2;
        mul_ln140_2_reg_2532 <= mul_ln140_2_fu_1389_p2;
        mul_ln34_2_reg_2492 <= mul_ln34_2_fu_1349_p2;
        mul_ln49_2_reg_2497 <= mul_ln49_2_fu_1354_p2;
        mul_ln62_2_reg_2502 <= mul_ln62_2_fu_1359_p2;
        mul_ln75_2_reg_2507 <= mul_ln75_2_fu_1364_p2;
        mul_ln88_2_reg_2512 <= mul_ln88_2_fu_1369_p2;
        p_cast4086_reg_2547[7 : 0] <= p_cast4086_fu_1408_p1[7 : 0];
        p_cast4087_reg_2553[7 : 0] <= p_cast4087_fu_1418_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        mul_ln101_3_reg_2659 <= mul_ln101_3_fu_1516_p2;
        mul_ln114_3_reg_2664 <= mul_ln114_3_fu_1521_p2;
        mul_ln127_3_reg_2669 <= mul_ln127_3_fu_1526_p2;
        mul_ln140_3_reg_2674 <= mul_ln140_3_fu_1531_p2;
        mul_ln34_3_reg_2634 <= mul_ln34_3_fu_1491_p2;
        mul_ln49_3_reg_2639 <= mul_ln49_3_fu_1496_p2;
        mul_ln62_3_reg_2644 <= mul_ln62_3_fu_1501_p2;
        mul_ln75_3_reg_2649 <= mul_ln75_3_fu_1506_p2;
        mul_ln88_3_reg_2654 <= mul_ln88_3_fu_1511_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        mul_ln101_reg_2139 <= mul_ln101_fu_942_p2;
        mul_ln114_reg_2144 <= mul_ln114_fu_947_p2;
        mul_ln127_reg_2149 <= mul_ln127_fu_952_p2;
        mul_ln140_reg_2154 <= mul_ln140_fu_957_p2;
        mul_ln34_reg_2114 <= mul_ln34_fu_917_p2;
        mul_ln49_reg_2119 <= mul_ln49_fu_922_p2;
        mul_ln62_reg_2124 <= mul_ln62_fu_927_p2;
        mul_ln75_reg_2129 <= mul_ln75_fu_932_p2;
        mul_ln88_reg_2134 <= mul_ln88_fu_937_p2;
        p_cast4068_reg_2169[7 : 0] <= p_cast4068_fu_976_p1[7 : 0];
        p_cast4069_reg_2175[7 : 0] <= p_cast4069_fu_986_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        p_cast4056_reg_1992[7 : 0] <= p_cast4056_fu_763_p1[7 : 0];
        p_cast4057_reg_1998[7 : 0] <= p_cast4057_fu_773_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        p_cast4058_reg_2014[7 : 0] <= p_cast4058_fu_791_p1[7 : 0];
        p_cast4059_reg_2020[7 : 0] <= p_cast4059_fu_801_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        p_cast4062_reg_2058[7 : 0] <= p_cast4062_fu_847_p1[7 : 0];
        p_cast4063_reg_2064[7 : 0] <= p_cast4063_fu_857_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        p_cast4064_reg_2080[7 : 0] <= p_cast4064_fu_875_p1[7 : 0];
        p_cast4065_reg_2086[7 : 0] <= p_cast4065_fu_885_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        p_cast4066_reg_2102[7 : 0] <= p_cast4066_fu_903_p1[7 : 0];
        p_cast4067_reg_2108[7 : 0] <= p_cast4067_fu_913_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        p_cast4072_reg_2258[7 : 0] <= p_cast4072_fu_1077_p1[7 : 0];
        p_cast4073_reg_2264[7 : 0] <= p_cast4073_fu_1087_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        p_cast4074_reg_2280[7 : 0] <= p_cast4074_fu_1105_p1[7 : 0];
        p_cast4075_reg_2286[7 : 0] <= p_cast4075_fu_1115_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        p_cast4080_reg_2436[7 : 0] <= p_cast4080_fu_1279_p1[7 : 0];
        p_cast4081_reg_2442[7 : 0] <= p_cast4081_fu_1289_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        p_cast4082_reg_2458[7 : 0] <= p_cast4082_fu_1307_p1[7 : 0];
        p_cast4083_reg_2464[7 : 0] <= p_cast4083_fu_1317_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        p_cast4084_reg_2480[7 : 0] <= p_cast4084_fu_1335_p1[7 : 0];
        p_cast4085_reg_2486[7 : 0] <= p_cast4085_fu_1345_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state16))) begin
        reg_593 <= v224_q1;
        reg_597 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_601 <= v224_q1;
        reg_605 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9))) begin
        reg_609 <= v224_q1;
        reg_613 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10))) begin
        reg_617 <= v224_q1;
        reg_621 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        reg_625 <= v224_q1;
        reg_629 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_11_cast_reg_1980[7 : 2] <= tmp_11_cast_fu_741_p1[7 : 2];
        tmp_13_cast_reg_1986[7 : 2] <= tmp_13_cast_fu_753_p1[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v101_2_reg_2599 <= v101_2_fu_1462_p1;
        v11_2_reg_2559 <= v11_2_fu_1422_p1;
        v24_2_reg_2564 <= v24_2_fu_1427_p1;
        v35_2_reg_2569 <= v35_2_fu_1432_p1;
        v46_2_reg_2574 <= v46_2_fu_1437_p1;
        v57_2_reg_2579 <= v57_2_fu_1442_p1;
        v68_2_reg_2584 <= v68_2_fu_1447_p1;
        v79_2_reg_2589 <= v79_2_fu_1452_p1;
        v90_2_reg_2594 <= v90_2_fu_1457_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        v101_3_reg_2719 <= v101_3_fu_1576_p1;
        v11_3_reg_2679 <= v11_3_fu_1536_p1;
        v24_3_reg_2684 <= v24_3_fu_1541_p1;
        v35_3_reg_2689 <= v35_3_fu_1546_p1;
        v46_3_reg_2694 <= v46_3_fu_1551_p1;
        v57_3_reg_2699 <= v57_3_fu_1556_p1;
        v68_3_reg_2704 <= v68_3_fu_1561_p1;
        v79_3_reg_2709 <= v79_3_fu_1566_p1;
        v90_3_reg_2714 <= v90_3_fu_1571_p1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_477_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
    end
end
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_26_fu_506_ap_done == 1'b0)) begin
        ap_ST_fsm_state17_blk = 1'b1;
    end else begin
        ap_ST_fsm_state17_blk = 1'b0;
    end
end
assign ap_ST_fsm_state18_blk = 1'b0;
assign ap_ST_fsm_state19_blk = 1'b0;
always @ (*) begin
    if ((1'b1 == ap_block_state1)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state20_blk = 1'b0;
assign ap_ST_fsm_state21_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_27_fu_535_ap_done == 1'b0)) begin
        ap_ST_fsm_state22_blk = 1'b1;
    end else begin
        ap_ST_fsm_state22_blk = 1'b0;
    end
end
assign ap_ST_fsm_state23_blk = 1'b0;
assign ap_ST_fsm_state24_blk = 1'b0;
assign ap_ST_fsm_state25_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_28_fu_564_ap_done == 1'b0)) begin
        ap_ST_fsm_state26_blk = 1'b1;
    end else begin
        ap_ST_fsm_state26_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln31_fu_655_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln31_fu_655_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_477_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1693_ce = 1'b1;
    end else begin
        grp_fu_1693_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_477_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1701_ce = 1'b1;
    end else begin
        grp_fu_1701_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state14) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_477_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1709_ce = 1'b1;
    end else begin
        grp_fu_1709_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state14) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_477_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1717_ce = 1'b1;
    end else begin
        grp_fu_1717_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_477_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1725_ce = 1'b1;
    end else begin
        grp_fu_1725_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_477_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1733_ce = 1'b1;
    end else begin
        grp_fu_1733_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_477_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1741_ce = 1'b1;
    end else begin
        grp_fu_1741_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_477_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1749_ce = 1'b1;
    end else begin
        grp_fu_1749_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node0_Pipeline_label_26_fu_506_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1757_ce = 1'b1;
    end else begin
        grp_fu_1757_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node0_Pipeline_label_26_fu_506_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1765_ce = 1'b1;
    end else begin
        grp_fu_1765_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node0_Pipeline_label_26_fu_506_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1773_ce = 1'b1;
    end else begin
        grp_fu_1773_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node0_Pipeline_label_26_fu_506_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1781_ce = 1'b1;
    end else begin
        grp_fu_1781_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node0_Pipeline_label_26_fu_506_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1789_ce = 1'b1;
    end else begin
        grp_fu_1789_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node0_Pipeline_label_26_fu_506_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1797_ce = 1'b1;
    end else begin
        grp_fu_1797_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node0_Pipeline_label_26_fu_506_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1805_ce = 1'b1;
    end else begin
        grp_fu_1805_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node0_Pipeline_label_26_fu_506_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1813_ce = 1'b1;
    end else begin
        grp_fu_1813_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state21) | ((grp_kernel_2mm_node0_Pipeline_label_27_fu_535_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22)))) begin
        grp_fu_1837_ce = 1'b1;
    end else begin
        grp_fu_1837_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state21) | ((grp_kernel_2mm_node0_Pipeline_label_27_fu_535_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22)))) begin
        grp_fu_1845_ce = 1'b1;
    end else begin
        grp_fu_1845_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state21) | ((grp_kernel_2mm_node0_Pipeline_label_27_fu_535_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22)))) begin
        grp_fu_1853_ce = 1'b1;
    end else begin
        grp_fu_1853_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state21) | ((grp_kernel_2mm_node0_Pipeline_label_27_fu_535_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22)))) begin
        grp_fu_1861_ce = 1'b1;
    end else begin
        grp_fu_1861_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2724_ce = grp_kernel_2mm_node0_Pipeline_label_28_fu_564_grp_fu_2724_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2724_ce = grp_kernel_2mm_node0_Pipeline_label_27_fu_535_grp_fu_2724_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2724_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_506_grp_fu_2724_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2724_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_477_grp_fu_2724_p_ce;
    end else begin
        grp_fu_2724_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2724_p0 = grp_kernel_2mm_node0_Pipeline_label_28_fu_564_grp_fu_2724_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2724_p0 = grp_kernel_2mm_node0_Pipeline_label_27_fu_535_grp_fu_2724_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2724_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_506_grp_fu_2724_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2724_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_477_grp_fu_2724_p_din0;
    end else begin
        grp_fu_2724_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2724_p1 = grp_kernel_2mm_node0_Pipeline_label_28_fu_564_grp_fu_2724_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2724_p1 = grp_kernel_2mm_node0_Pipeline_label_27_fu_535_grp_fu_2724_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2724_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_506_grp_fu_2724_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2724_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_477_grp_fu_2724_p_din1;
    end else begin
        grp_fu_2724_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2728_ce = grp_kernel_2mm_node0_Pipeline_label_28_fu_564_grp_fu_2728_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2728_ce = grp_kernel_2mm_node0_Pipeline_label_27_fu_535_grp_fu_2728_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2728_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_506_grp_fu_2728_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2728_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_477_grp_fu_2728_p_ce;
    end else begin
        grp_fu_2728_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2728_p0 = grp_kernel_2mm_node0_Pipeline_label_28_fu_564_grp_fu_2728_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2728_p0 = grp_kernel_2mm_node0_Pipeline_label_27_fu_535_grp_fu_2728_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2728_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_506_grp_fu_2728_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2728_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_477_grp_fu_2728_p_din0;
    end else begin
        grp_fu_2728_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2728_p1 = grp_kernel_2mm_node0_Pipeline_label_28_fu_564_grp_fu_2728_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2728_p1 = grp_kernel_2mm_node0_Pipeline_label_27_fu_535_grp_fu_2728_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2728_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_506_grp_fu_2728_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2728_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_477_grp_fu_2728_p_din1;
    end else begin
        grp_fu_2728_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2732_ce = grp_kernel_2mm_node0_Pipeline_label_28_fu_564_grp_fu_2732_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2732_ce = grp_kernel_2mm_node0_Pipeline_label_27_fu_535_grp_fu_2732_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2732_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_506_grp_fu_2732_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2732_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_477_grp_fu_2732_p_ce;
    end else begin
        grp_fu_2732_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2732_p0 = grp_kernel_2mm_node0_Pipeline_label_28_fu_564_grp_fu_2732_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2732_p0 = grp_kernel_2mm_node0_Pipeline_label_27_fu_535_grp_fu_2732_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2732_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_506_grp_fu_2732_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2732_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_477_grp_fu_2732_p_din0;
    end else begin
        grp_fu_2732_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2732_p1 = grp_kernel_2mm_node0_Pipeline_label_28_fu_564_grp_fu_2732_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2732_p1 = grp_kernel_2mm_node0_Pipeline_label_27_fu_535_grp_fu_2732_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2732_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_506_grp_fu_2732_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2732_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_477_grp_fu_2732_p_din1;
    end else begin
        grp_fu_2732_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v224_address0_local = p_cast4122_fu_1487_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v224_address0_local = p_cast4120_fu_1479_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v224_address0_local = p_cast4118_fu_1471_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        v224_address0_local = p_cast4116_fu_1398_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v224_address0_local = p_cast4114_fu_1325_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_address0_local = p_cast4112_fu_1297_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v224_address0_local = p_cast4110_fu_1269_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v224_address0_local = p_cast4108_fu_1241_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_address0_local = p_cast4106_fu_1168_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_address0_local = p_cast4104_fu_1095_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_address0_local = p_cast4102_fu_1067_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_address0_local = p_cast4100_fu_1039_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_address0_local = p_cast4098_fu_966_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address0_local = p_cast4096_fu_893_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address0_local = p_cast4094_fu_865_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address0_local = p_cast4092_fu_837_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address0_local = p_cast4090_fu_809_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_address0_local = p_cast_fu_781_p1;
    end else begin
        v224_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v224_address1_local = p_cast4121_fu_1483_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v224_address1_local = p_cast4119_fu_1475_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v224_address1_local = p_cast4117_fu_1467_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        v224_address1_local = p_cast4115_fu_1394_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v224_address1_local = p_cast4113_fu_1321_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_address1_local = p_cast4111_fu_1293_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v224_address1_local = p_cast4109_fu_1265_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v224_address1_local = p_cast4107_fu_1237_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_address1_local = p_cast4105_fu_1164_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_address1_local = p_cast4103_fu_1091_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_address1_local = p_cast4101_fu_1063_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_address1_local = p_cast4099_fu_1035_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_address1_local = p_cast4097_fu_962_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address1_local = p_cast4095_fu_889_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address1_local = p_cast4093_fu_861_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address1_local = p_cast4091_fu_833_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address1_local = p_cast4089_fu_805_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_address1_local = p_cast4088_fu_777_p1;
    end else begin
        v224_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node0_Pipeline_label_27_fu_535_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22)) | ((grp_kernel_2mm_node0_Pipeline_label_26_fu_506_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_477_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        v224_ce0_local = 1'b1;
    end else begin
        v224_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node0_Pipeline_label_27_fu_535_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22)) | ((grp_kernel_2mm_node0_Pipeline_label_26_fu_506_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_477_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        v224_ce1_local = 1'b1;
    end else begin
        v224_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_28_fu_564_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_27_fu_535_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_506_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_477_v228_address0;
    end else begin
        v228_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_28_fu_564_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_27_fu_535_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_506_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_477_v228_address1;
    end else begin
        v228_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_28_fu_564_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_27_fu_535_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_506_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_477_v228_ce0;
    end else begin
        v228_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_28_fu_564_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_27_fu_535_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_506_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_477_v228_ce1;
    end else begin
        v228_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_28_fu_564_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_27_fu_535_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_506_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_477_v229_address0;
    end else begin
        v229_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_28_fu_564_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_27_fu_535_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_506_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_477_v229_address1;
    end else begin
        v229_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_28_fu_564_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_27_fu_535_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_506_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_477_v229_ce0;
    end else begin
        v229_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_28_fu_564_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_27_fu_535_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_506_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_477_v229_ce1;
    end else begin
        v229_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_28_fu_564_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_27_fu_535_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_506_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_477_v229_d0;
    end else begin
        v229_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_28_fu_564_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_27_fu_535_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_506_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_477_v229_d1;
    end else begin
        v229_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_28_fu_564_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_27_fu_535_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_506_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_477_v229_we0;
    end else begin
        v229_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_28_fu_564_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_27_fu_535_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_506_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_477_v229_we1;
    end else begin
        v229_we1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v236_blk_n = v236_empty_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v236_read_local = 1'b1;
    end else begin
        v236_read_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln31_fu_655_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln32_fu_677_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_477_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_26_fu_506_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_27_fu_535_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
                ap_NS_fsm = ap_ST_fsm_state23;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_28_fu_564_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state26;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln31_1_fu_649_p2 = (phi_mul_fu_148 + 16'd220);
assign add_ln31_fu_661_p2 = (v5_fu_152 + 8'd1);
assign add_ln32_1_cast4070_fu_1049_p1 = add_ln32_1_fu_1043_p2;
assign add_ln32_1_fu_1043_p2 = (v6_reg_465 + 8'd18);
assign add_ln32_2_cast4079_fu_1261_p1 = add_ln32_2_fu_1255_p2;
assign add_ln32_2_fu_1255_p2 = (v6_reg_465 + 8'd27);
assign add_ln32_3_fu_709_p2 = (v6_reg_465 + 8'd36);
assign add_ln32_cast4061_fu_829_p1 = add_ln32_fu_823_p2;
assign add_ln32_fu_823_p2 = (v6_reg_465 + 8'd9);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_state25 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_state26 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state1 = ((v236_empty_n == 1'b0) | (ap_start == 1'b0));
end
assign cmp11_fu_671_p2 = ((v5_fu_152 == 8'd0) ? 1'b1 : 1'b0);
assign empty_123_fu_757_p2 = (v6_reg_465 + 8'd4);
assign empty_126_fu_767_p2 = (v6_reg_465 + 8'd5);
assign empty_129_fu_785_p2 = (v6_reg_465 + 8'd6);
assign empty_132_fu_795_p2 = (v6_reg_465 + 8'd7);
assign empty_135_fu_813_p2 = (v6_reg_465 + 8'd8);
assign empty_140_fu_841_p2 = (v6_reg_465 + 8'd10);
assign empty_143_fu_851_p2 = (v6_reg_465 + 8'd11);
assign empty_146_fu_869_p2 = (v6_reg_465 + 8'd12);
assign empty_149_fu_879_p2 = (v6_reg_465 + 8'd13);
assign empty_152_fu_897_p2 = (v6_reg_465 + 8'd14);
assign empty_155_fu_907_p2 = (v6_reg_465 + 8'd15);
assign empty_158_fu_970_p2 = (v6_reg_465 + 8'd16);
assign empty_161_fu_980_p2 = (v6_reg_465 + 8'd17);
assign empty_166_fu_1053_p2 = (v6_reg_465 + 8'd19);
assign empty_169_fu_1071_p2 = (v6_reg_465 + 8'd20);
assign empty_172_fu_1081_p2 = (v6_reg_465 + 8'd21);
assign empty_175_fu_1099_p2 = (v6_reg_465 + 8'd22);
assign empty_178_fu_1109_p2 = (v6_reg_465 + 8'd23);
assign empty_181_fu_1172_p2 = (v6_reg_465 + 8'd24);
assign empty_184_fu_1182_p2 = (v6_reg_465 + 8'd25);
assign empty_187_fu_1245_p2 = (v6_reg_465 + 8'd26);
assign empty_192_fu_1273_p2 = (v6_reg_465 + 8'd28);
assign empty_195_fu_1283_p2 = (v6_reg_465 + 8'd29);
assign empty_198_fu_1301_p2 = (v6_reg_465 + 8'd30);
assign empty_201_fu_1311_p2 = (v6_reg_465 + 8'd31);
assign empty_204_fu_1329_p2 = (v6_reg_465 + 8'd32);
assign empty_207_fu_1339_p2 = (v6_reg_465 + 8'd33);
assign empty_210_fu_1402_p2 = (v6_reg_465 + 8'd34);
assign empty_213_fu_1412_p2 = (v6_reg_465 + 8'd35);
assign grp_fu_148_p_ce = grp_fu_2724_ce;
assign grp_fu_148_p_din0 = grp_fu_2724_p0;
assign grp_fu_148_p_din1 = grp_fu_2724_p1;
assign grp_fu_148_p_opcode = 2'd0;
assign grp_fu_152_p_ce = grp_fu_2728_ce;
assign grp_fu_152_p_din0 = grp_fu_2728_p0;
assign grp_fu_152_p_din1 = grp_fu_2728_p1;
assign grp_fu_156_p_ce = grp_fu_2732_ce;
assign grp_fu_156_p_din0 = grp_fu_2732_p0;
assign grp_fu_156_p_din1 = grp_fu_2732_p1;
assign grp_fu_1581_p0 = grp_fu_1581_p00;
assign grp_fu_1581_p00 = v6_reg_465;
assign grp_fu_1581_p1 = 16'd190;
assign grp_fu_1581_p2 = zext_ln31_reg_1912;
assign grp_fu_1589_p0 = grp_fu_1589_p00;
assign grp_fu_1589_p00 = tmp_8_fu_697_p3;
assign grp_fu_1589_p1 = 16'd190;
assign grp_fu_1589_p2 = zext_ln31_reg_1912;
assign grp_fu_1597_p0 = grp_fu_1597_p00;
assign grp_fu_1597_p00 = tmp_11_fu_733_p3;
assign grp_fu_1597_p1 = 16'd190;
assign grp_fu_1597_p2 = zext_ln31_reg_1912;
assign grp_fu_1605_p0 = grp_fu_1605_p00;
assign grp_fu_1605_p00 = tmp_13_fu_745_p3;
assign grp_fu_1605_p1 = 16'd190;
assign grp_fu_1605_p2 = zext_ln31_reg_1912;
assign grp_fu_1613_p0 = grp_fu_1613_p00;
assign grp_fu_1613_p00 = empty_123_fu_757_p2;
assign grp_fu_1613_p1 = 16'd190;
assign grp_fu_1613_p2 = zext_ln31_reg_1912;
assign grp_fu_1621_p0 = grp_fu_1621_p00;
assign grp_fu_1621_p00 = empty_126_fu_767_p2;
assign grp_fu_1621_p1 = 16'd190;
assign grp_fu_1621_p2 = zext_ln31_reg_1912;
assign grp_fu_1629_p0 = grp_fu_1629_p00;
assign grp_fu_1629_p00 = empty_129_fu_785_p2;
assign grp_fu_1629_p1 = 16'd190;
assign grp_fu_1629_p2 = zext_ln31_reg_1912;
assign grp_fu_1637_p0 = grp_fu_1637_p00;
assign grp_fu_1637_p00 = empty_132_fu_795_p2;
assign grp_fu_1637_p1 = 16'd190;
assign grp_fu_1637_p2 = zext_ln31_reg_1912;
assign grp_fu_1645_p0 = grp_fu_1645_p00;
assign grp_fu_1645_p00 = empty_135_fu_813_p2;
assign grp_fu_1645_p1 = 16'd190;
assign grp_fu_1645_p2 = zext_ln31_reg_1912;
assign grp_fu_1653_p0 = grp_fu_1653_p00;
assign grp_fu_1653_p00 = add_ln32_fu_823_p2;
assign grp_fu_1653_p1 = 16'd190;
assign grp_fu_1653_p2 = zext_ln31_reg_1912;
assign grp_fu_1661_p0 = grp_fu_1661_p00;
assign grp_fu_1661_p00 = empty_140_fu_841_p2;
assign grp_fu_1661_p1 = 16'd190;
assign grp_fu_1661_p2 = zext_ln31_reg_1912;
assign grp_fu_1669_p0 = grp_fu_1669_p00;
assign grp_fu_1669_p00 = empty_143_fu_851_p2;
assign grp_fu_1669_p1 = 16'd190;
assign grp_fu_1669_p2 = zext_ln31_reg_1912;
assign grp_fu_1677_p0 = grp_fu_1677_p00;
assign grp_fu_1677_p00 = empty_146_fu_869_p2;
assign grp_fu_1677_p1 = 16'd190;
assign grp_fu_1677_p2 = zext_ln31_reg_1912;
assign grp_fu_1685_p0 = grp_fu_1685_p00;
assign grp_fu_1685_p00 = empty_149_fu_879_p2;
assign grp_fu_1685_p1 = 16'd190;
assign grp_fu_1685_p2 = zext_ln31_reg_1912;
assign grp_fu_1693_p0 = grp_fu_1693_p00;
assign grp_fu_1693_p00 = empty_152_fu_897_p2;
assign grp_fu_1693_p1 = 16'd190;
assign grp_fu_1693_p2 = zext_ln31_reg_1912;
assign grp_fu_1701_p0 = grp_fu_1701_p00;
assign grp_fu_1701_p00 = empty_155_fu_907_p2;
assign grp_fu_1701_p1 = 16'd190;
assign grp_fu_1701_p2 = zext_ln31_reg_1912;
assign grp_fu_1709_p0 = grp_fu_1709_p00;
assign grp_fu_1709_p00 = empty_158_fu_970_p2;
assign grp_fu_1709_p1 = 16'd190;
assign grp_fu_1709_p2 = zext_ln31_reg_1912;
assign grp_fu_1717_p0 = grp_fu_1717_p00;
assign grp_fu_1717_p00 = empty_161_fu_980_p2;
assign grp_fu_1717_p1 = 16'd190;
assign grp_fu_1717_p2 = zext_ln31_reg_1912;
assign grp_fu_1725_p0 = grp_fu_1725_p00;
assign grp_fu_1725_p00 = add_ln32_1_fu_1043_p2;
assign grp_fu_1725_p1 = 16'd190;
assign grp_fu_1725_p2 = zext_ln31_reg_1912;
assign grp_fu_1733_p0 = grp_fu_1733_p00;
assign grp_fu_1733_p00 = empty_166_fu_1053_p2;
assign grp_fu_1733_p1 = 16'd190;
assign grp_fu_1733_p2 = zext_ln31_reg_1912;
assign grp_fu_1741_p0 = grp_fu_1741_p00;
assign grp_fu_1741_p00 = empty_169_fu_1071_p2;
assign grp_fu_1741_p1 = 16'd190;
assign grp_fu_1741_p2 = zext_ln31_reg_1912;
assign grp_fu_1749_p0 = grp_fu_1749_p00;
assign grp_fu_1749_p00 = empty_172_fu_1081_p2;
assign grp_fu_1749_p1 = 16'd190;
assign grp_fu_1749_p2 = zext_ln31_reg_1912;
assign grp_fu_1757_p0 = grp_fu_1757_p00;
assign grp_fu_1757_p00 = empty_175_fu_1099_p2;
assign grp_fu_1757_p1 = 16'd190;
assign grp_fu_1757_p2 = zext_ln31_reg_1912;
assign grp_fu_1765_p0 = grp_fu_1765_p00;
assign grp_fu_1765_p00 = empty_178_fu_1109_p2;
assign grp_fu_1765_p1 = 16'd190;
assign grp_fu_1765_p2 = zext_ln31_reg_1912;
assign grp_fu_1773_p0 = grp_fu_1773_p00;
assign grp_fu_1773_p00 = empty_181_fu_1172_p2;
assign grp_fu_1773_p1 = 16'd190;
assign grp_fu_1773_p2 = zext_ln31_reg_1912;
assign grp_fu_1781_p0 = grp_fu_1781_p00;
assign grp_fu_1781_p00 = empty_184_fu_1182_p2;
assign grp_fu_1781_p1 = 16'd190;
assign grp_fu_1781_p2 = zext_ln31_reg_1912;
assign grp_fu_1789_p0 = grp_fu_1789_p00;
assign grp_fu_1789_p00 = empty_187_fu_1245_p2;
assign grp_fu_1789_p1 = 16'd190;
assign grp_fu_1789_p2 = zext_ln31_reg_1912;
assign grp_fu_1797_p0 = grp_fu_1797_p00;
assign grp_fu_1797_p00 = add_ln32_2_fu_1255_p2;
assign grp_fu_1797_p1 = 16'd190;
assign grp_fu_1797_p2 = zext_ln31_reg_1912;
assign grp_fu_1805_p0 = grp_fu_1805_p00;
assign grp_fu_1805_p00 = empty_192_fu_1273_p2;
assign grp_fu_1805_p1 = 16'd190;
assign grp_fu_1805_p2 = zext_ln31_reg_1912;
assign grp_fu_1813_p0 = grp_fu_1813_p00;
assign grp_fu_1813_p00 = empty_195_fu_1283_p2;
assign grp_fu_1813_p1 = 16'd190;
assign grp_fu_1813_p2 = zext_ln31_reg_1912;
assign grp_fu_1821_p0 = grp_fu_1821_p00;
assign grp_fu_1821_p00 = empty_198_fu_1301_p2;
assign grp_fu_1821_p1 = 16'd190;
assign grp_fu_1821_p2 = zext_ln31_reg_1912;
assign grp_fu_1829_p0 = grp_fu_1829_p00;
assign grp_fu_1829_p00 = empty_201_fu_1311_p2;
assign grp_fu_1829_p1 = 16'd190;
assign grp_fu_1829_p2 = zext_ln31_reg_1912;
assign grp_fu_1837_p0 = grp_fu_1837_p00;
assign grp_fu_1837_p00 = empty_204_fu_1329_p2;
assign grp_fu_1837_p1 = 16'd190;
assign grp_fu_1837_p2 = zext_ln31_reg_1912;
assign grp_fu_1845_p0 = grp_fu_1845_p00;
assign grp_fu_1845_p00 = empty_207_fu_1339_p2;
assign grp_fu_1845_p1 = 16'd190;
assign grp_fu_1845_p2 = zext_ln31_reg_1912;
assign grp_fu_1853_p0 = grp_fu_1853_p00;
assign grp_fu_1853_p00 = empty_210_fu_1402_p2;
assign grp_fu_1853_p1 = 16'd190;
assign grp_fu_1853_p2 = zext_ln31_reg_1912;
assign grp_fu_1861_p0 = grp_fu_1861_p00;
assign grp_fu_1861_p00 = empty_213_fu_1412_p2;
assign grp_fu_1861_p1 = 16'd190;
assign grp_fu_1861_p2 = zext_ln31_reg_1912;
assign grp_kernel_2mm_node0_Pipeline_label_26_fu_506_ap_start = grp_kernel_2mm_node0_Pipeline_label_26_fu_506_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_27_fu_535_ap_start = grp_kernel_2mm_node0_Pipeline_label_27_fu_535_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_28_fu_564_ap_start = grp_kernel_2mm_node0_Pipeline_label_28_fu_564_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_2_fu_477_ap_start = grp_kernel_2mm_node0_Pipeline_label_2_fu_477_ap_start_reg;
assign icmp_ln31_fu_655_p2 = ((v5_fu_152 == 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_677_p2 = ((v6_reg_465 < 8'd180) ? 1'b1 : 1'b0);
assign mul_ln101_1_fu_1144_p0 = p_cast4066_reg_2102;
assign mul_ln101_1_fu_1144_p1 = 16'd220;
assign mul_ln101_2_fu_1374_p0 = p_cast4075_reg_2286;
assign mul_ln101_2_fu_1374_p1 = 16'd220;
assign mul_ln101_3_fu_1516_p0 = p_cast4084_reg_2480;
assign mul_ln101_3_fu_1516_p1 = 16'd220;
assign mul_ln101_fu_942_p0 = p_cast4057_reg_1998;
assign mul_ln101_fu_942_p1 = 16'd220;
assign mul_ln114_1_fu_1149_p0 = p_cast4067_reg_2108;
assign mul_ln114_1_fu_1149_p1 = 16'd220;
assign mul_ln114_2_fu_1379_p0 = p_cast4076_reg_2347;
assign mul_ln114_2_fu_1379_p1 = 16'd220;
assign mul_ln114_3_fu_1521_p0 = p_cast4085_reg_2486;
assign mul_ln114_3_fu_1521_p1 = 16'd220;
assign mul_ln114_fu_947_p0 = p_cast4058_reg_2014;
assign mul_ln114_fu_947_p1 = 16'd220;
assign mul_ln127_1_fu_1154_p0 = p_cast4068_reg_2169;
assign mul_ln127_1_fu_1154_p1 = 16'd220;
assign mul_ln127_2_fu_1384_p0 = p_cast4077_reg_2353;
assign mul_ln127_2_fu_1384_p1 = 16'd220;
assign mul_ln127_3_fu_1526_p0 = p_cast4086_reg_2547;
assign mul_ln127_3_fu_1526_p1 = 16'd220;
assign mul_ln127_fu_952_p0 = p_cast4059_reg_2020;
assign mul_ln127_fu_952_p1 = 16'd220;
assign mul_ln140_1_fu_1159_p0 = p_cast4069_reg_2175;
assign mul_ln140_1_fu_1159_p1 = 16'd220;
assign mul_ln140_2_fu_1389_p0 = p_cast4078_reg_2414;
assign mul_ln140_2_fu_1389_p1 = 16'd220;
assign mul_ln140_3_fu_1531_p0 = p_cast4087_reg_2553;
assign mul_ln140_3_fu_1531_p1 = 16'd220;
assign mul_ln140_fu_957_p0 = p_cast4060_reg_2036;
assign mul_ln140_fu_957_p1 = 16'd220;
assign mul_ln34_1_fu_1119_p0 = add_ln32_cast4061_reg_2042;
assign mul_ln34_1_fu_1119_p1 = 16'd220;
assign mul_ln34_2_fu_1349_p0 = add_ln32_1_cast4070_reg_2236;
assign mul_ln34_2_fu_1349_p1 = 16'd220;
assign mul_ln34_3_fu_1491_p0 = add_ln32_2_cast4079_reg_2420;
assign mul_ln34_3_fu_1491_p1 = 16'd220;
assign mul_ln34_fu_917_p0 = v6_cast_reg_1963;
assign mul_ln34_fu_917_p1 = 16'd220;
assign mul_ln49_1_fu_1124_p0 = p_cast4062_reg_2058;
assign mul_ln49_1_fu_1124_p1 = 16'd220;
assign mul_ln49_2_fu_1354_p0 = p_cast4071_reg_2242;
assign mul_ln49_2_fu_1354_p1 = 16'd220;
assign mul_ln49_3_fu_1496_p0 = p_cast4080_reg_2436;
assign mul_ln49_3_fu_1496_p1 = 16'd220;
assign mul_ln49_fu_922_p0 = tmp_8_cast_reg_1969;
assign mul_ln49_fu_922_p1 = 16'd220;
assign mul_ln62_1_fu_1129_p0 = p_cast4063_reg_2064;
assign mul_ln62_1_fu_1129_p1 = 16'd220;
assign mul_ln62_2_fu_1359_p0 = p_cast4072_reg_2258;
assign mul_ln62_2_fu_1359_p1 = 16'd220;
assign mul_ln62_3_fu_1501_p0 = p_cast4081_reg_2442;
assign mul_ln62_3_fu_1501_p1 = 16'd220;
assign mul_ln62_fu_927_p0 = tmp_11_cast_reg_1980;
assign mul_ln62_fu_927_p1 = 16'd220;
assign mul_ln75_1_fu_1134_p0 = p_cast4064_reg_2080;
assign mul_ln75_1_fu_1134_p1 = 16'd220;
assign mul_ln75_2_fu_1364_p0 = p_cast4073_reg_2264;
assign mul_ln75_2_fu_1364_p1 = 16'd220;
assign mul_ln75_3_fu_1506_p0 = p_cast4082_reg_2458;
assign mul_ln75_3_fu_1506_p1 = 16'd220;
assign mul_ln75_fu_932_p0 = tmp_13_cast_reg_1986;
assign mul_ln75_fu_932_p1 = 16'd220;
assign mul_ln88_1_fu_1139_p0 = p_cast4065_reg_2086;
assign mul_ln88_1_fu_1139_p1 = 16'd220;
assign mul_ln88_2_fu_1369_p0 = p_cast4074_reg_2280;
assign mul_ln88_2_fu_1369_p1 = 16'd220;
assign mul_ln88_3_fu_1511_p0 = p_cast4083_reg_2464;
assign mul_ln88_3_fu_1511_p1 = 16'd220;
assign mul_ln88_fu_937_p0 = p_cast4056_reg_1992;
assign mul_ln88_fu_937_p1 = 16'd220;
assign p_cast4056_fu_763_p1 = empty_123_fu_757_p2;
assign p_cast4057_fu_773_p1 = empty_126_fu_767_p2;
assign p_cast4058_fu_791_p1 = empty_129_fu_785_p2;
assign p_cast4059_fu_801_p1 = empty_132_fu_795_p2;
assign p_cast4060_fu_819_p1 = empty_135_fu_813_p2;
assign p_cast4062_fu_847_p1 = empty_140_fu_841_p2;
assign p_cast4063_fu_857_p1 = empty_143_fu_851_p2;
assign p_cast4064_fu_875_p1 = empty_146_fu_869_p2;
assign p_cast4065_fu_885_p1 = empty_149_fu_879_p2;
assign p_cast4066_fu_903_p1 = empty_152_fu_897_p2;
assign p_cast4067_fu_913_p1 = empty_155_fu_907_p2;
assign p_cast4068_fu_976_p1 = empty_158_fu_970_p2;
assign p_cast4069_fu_986_p1 = empty_161_fu_980_p2;
assign p_cast4071_fu_1059_p1 = empty_166_fu_1053_p2;
assign p_cast4072_fu_1077_p1 = empty_169_fu_1071_p2;
assign p_cast4073_fu_1087_p1 = empty_172_fu_1081_p2;
assign p_cast4074_fu_1105_p1 = empty_175_fu_1099_p2;
assign p_cast4075_fu_1115_p1 = empty_178_fu_1109_p2;
assign p_cast4076_fu_1178_p1 = empty_181_fu_1172_p2;
assign p_cast4077_fu_1188_p1 = empty_184_fu_1182_p2;
assign p_cast4078_fu_1251_p1 = empty_187_fu_1245_p2;
assign p_cast4080_fu_1279_p1 = empty_192_fu_1273_p2;
assign p_cast4081_fu_1289_p1 = empty_195_fu_1283_p2;
assign p_cast4082_fu_1307_p1 = empty_198_fu_1301_p2;
assign p_cast4083_fu_1317_p1 = empty_201_fu_1311_p2;
assign p_cast4084_fu_1335_p1 = empty_204_fu_1329_p2;
assign p_cast4085_fu_1345_p1 = empty_207_fu_1339_p2;
assign p_cast4086_fu_1408_p1 = empty_210_fu_1402_p2;
assign p_cast4087_fu_1418_p1 = empty_213_fu_1412_p2;
assign p_cast4088_fu_777_p1 = grp_fu_1581_p3;
assign p_cast4089_fu_805_p1 = grp_fu_1597_p3;
assign p_cast4090_fu_809_p1 = grp_fu_1605_p3;
assign p_cast4091_fu_833_p1 = grp_fu_1613_p3;
assign p_cast4092_fu_837_p1 = grp_fu_1621_p3;
assign p_cast4093_fu_861_p1 = grp_fu_1629_p3;
assign p_cast4094_fu_865_p1 = grp_fu_1637_p3;
assign p_cast4095_fu_889_p1 = grp_fu_1645_p3;
assign p_cast4096_fu_893_p1 = grp_fu_1653_p3;
assign p_cast4097_fu_962_p1 = grp_fu_1661_p3;
assign p_cast4098_fu_966_p1 = grp_fu_1669_p3;
assign p_cast4099_fu_1035_p1 = grp_fu_1677_p3;
assign p_cast4100_fu_1039_p1 = grp_fu_1685_p3;
assign p_cast4101_fu_1063_p1 = grp_fu_1693_p3;
assign p_cast4102_fu_1067_p1 = grp_fu_1701_p3;
assign p_cast4103_fu_1091_p1 = grp_fu_1709_p3;
assign p_cast4104_fu_1095_p1 = grp_fu_1717_p3;
assign p_cast4105_fu_1164_p1 = grp_fu_1725_p3;
assign p_cast4106_fu_1168_p1 = grp_fu_1733_p3;
assign p_cast4107_fu_1237_p1 = grp_fu_1741_p3;
assign p_cast4108_fu_1241_p1 = grp_fu_1749_p3;
assign p_cast4109_fu_1265_p1 = grp_fu_1757_p3;
assign p_cast4110_fu_1269_p1 = grp_fu_1765_p3;
assign p_cast4111_fu_1293_p1 = grp_fu_1773_p3;
assign p_cast4112_fu_1297_p1 = grp_fu_1781_p3;
assign p_cast4113_fu_1321_p1 = grp_fu_1789_p3;
assign p_cast4114_fu_1325_p1 = grp_fu_1797_p3;
assign p_cast4115_fu_1394_p1 = grp_fu_1805_p3;
assign p_cast4116_fu_1398_p1 = grp_fu_1813_p3;
assign p_cast4117_fu_1467_p1 = grp_fu_1821_p3;
assign p_cast4118_fu_1471_p1 = grp_fu_1829_p3;
assign p_cast4119_fu_1475_p1 = grp_fu_1837_p3;
assign p_cast4120_fu_1479_p1 = grp_fu_1845_p3;
assign p_cast4121_fu_1483_p1 = grp_fu_1853_p3;
assign p_cast4122_fu_1487_p1 = grp_fu_1861_p3;
assign p_cast_fu_781_p1 = grp_fu_1589_p3;
assign tmp_11_cast_fu_741_p1 = tmp_11_fu_733_p3;
assign tmp_11_fu_733_p3 = {{tmp_9_fu_723_p4}, {2'd2}};
assign tmp_13_cast_fu_753_p1 = tmp_13_fu_745_p3;
assign tmp_13_fu_745_p3 = {{tmp_9_fu_723_p4}, {2'd3}};
assign tmp_8_cast_fu_705_p1 = tmp_8_fu_697_p3;
assign tmp_8_fu_697_p3 = {{tmp_fu_687_p4}, {1'd1}};
assign tmp_9_fu_723_p4 = {{v6_reg_465[7:2]}};
assign tmp_fu_687_p4 = {{v6_reg_465[7:1]}};
assign v101_1_fu_1232_p1 = reg_621;
assign v101_2_fu_1462_p1 = reg_625;
assign v101_3_fu_1576_p1 = reg_621;
assign v101_fu_1030_p1 = reg_625;
assign v11_1_fu_1192_p1 = reg_629;
assign v11_2_fu_1422_p1 = reg_593;
assign v11_3_fu_1536_p1 = reg_629;
assign v11_fu_990_p1 = reg_593;
assign v224_address0 = v224_address0_local;
assign v224_address1 = v224_address1_local;
assign v224_ce0 = v224_ce0_local;
assign v224_ce1 = v224_ce1_local;
assign v236_read = v236_read_local;
assign v24_1_fu_1197_p1 = reg_593;
assign v24_2_fu_1427_p1 = reg_597;
assign v24_3_fu_1541_p1 = reg_593;
assign v24_fu_995_p1 = reg_597;
assign v35_1_fu_1202_p1 = reg_597;
assign v35_2_fu_1432_p1 = reg_601;
assign v35_3_fu_1546_p1 = reg_597;
assign v35_fu_1000_p1 = reg_601;
assign v46_1_fu_1207_p1 = reg_601;
assign v46_2_fu_1437_p1 = reg_605;
assign v46_3_fu_1551_p1 = reg_601;
assign v46_fu_1005_p1 = reg_605;
assign v57_1_fu_1212_p1 = reg_605;
assign v57_2_fu_1442_p1 = reg_609;
assign v57_3_fu_1556_p1 = reg_605;
assign v57_fu_1010_p1 = reg_609;
assign v68_1_fu_1217_p1 = reg_609;
assign v68_2_fu_1447_p1 = reg_613;
assign v68_3_fu_1561_p1 = reg_609;
assign v68_fu_1015_p1 = reg_613;
assign v6_cast_fu_683_p1 = v6_reg_465;
assign v79_1_fu_1222_p1 = reg_613;
assign v79_2_fu_1452_p1 = reg_617;
assign v79_3_fu_1566_p1 = reg_613;
assign v79_fu_1020_p1 = reg_617;
assign v90_1_fu_1227_p1 = reg_617;
assign v90_2_fu_1457_p1 = reg_621;
assign v90_3_fu_1571_p1 = reg_617;
assign v90_fu_1025_p1 = reg_621;
assign zext_ln31_fu_667_p1 = v5_fu_152;
always @ (posedge ap_clk) begin
    zext_ln31_reg_1912[15:8] <= 8'b00000000;
    v6_cast_reg_1963[15:8] <= 8'b00000000;
    tmp_8_cast_reg_1969[0] <= 1'b1;
    tmp_8_cast_reg_1969[15:8] <= 8'b00000000;
    tmp_11_cast_reg_1980[1:0] <= 2'b10;
    tmp_11_cast_reg_1980[15:8] <= 8'b00000000;
    tmp_13_cast_reg_1986[1:0] <= 2'b11;
    tmp_13_cast_reg_1986[15:8] <= 8'b00000000;
    p_cast4056_reg_1992[15:8] <= 8'b00000000;
    p_cast4057_reg_1998[15:8] <= 8'b00000000;
    p_cast4058_reg_2014[15:8] <= 8'b00000000;
    p_cast4059_reg_2020[15:8] <= 8'b00000000;
    p_cast4060_reg_2036[15:8] <= 8'b00000000;
    add_ln32_cast4061_reg_2042[15:8] <= 8'b00000000;
    p_cast4062_reg_2058[15:8] <= 8'b00000000;
    p_cast4063_reg_2064[15:8] <= 8'b00000000;
    p_cast4064_reg_2080[15:8] <= 8'b00000000;
    p_cast4065_reg_2086[15:8] <= 8'b00000000;
    p_cast4066_reg_2102[15:8] <= 8'b00000000;
    p_cast4067_reg_2108[15:8] <= 8'b00000000;
    p_cast4068_reg_2169[15:8] <= 8'b00000000;
    p_cast4069_reg_2175[15:8] <= 8'b00000000;
    add_ln32_1_cast4070_reg_2236[15:8] <= 8'b00000000;
    p_cast4071_reg_2242[15:8] <= 8'b00000000;
    p_cast4072_reg_2258[15:8] <= 8'b00000000;
    p_cast4073_reg_2264[15:8] <= 8'b00000000;
    p_cast4074_reg_2280[15:8] <= 8'b00000000;
    p_cast4075_reg_2286[15:8] <= 8'b00000000;
    p_cast4076_reg_2347[15:8] <= 8'b00000000;
    p_cast4077_reg_2353[15:8] <= 8'b00000000;
    p_cast4078_reg_2414[15:8] <= 8'b00000000;
    add_ln32_2_cast4079_reg_2420[15:8] <= 8'b00000000;
    p_cast4080_reg_2436[15:8] <= 8'b00000000;
    p_cast4081_reg_2442[15:8] <= 8'b00000000;
    p_cast4082_reg_2458[15:8] <= 8'b00000000;
    p_cast4083_reg_2464[15:8] <= 8'b00000000;
    p_cast4084_reg_2480[15:8] <= 8'b00000000;
    p_cast4085_reg_2486[15:8] <= 8'b00000000;
    p_cast4086_reg_2547[15:8] <= 8'b00000000;
    p_cast4087_reg_2553[15:8] <= 8'b00000000;
end
endmodule 