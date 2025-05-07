module backprop_backprop_Pipeline_label_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v20_1_address0,v20_1_ce0,v20_1_we0,v20_1_d0,v20_address0,v20_ce0,v20_we0,v20_d0,v0_0_address0,v0_0_ce0,v0_0_q0,v0_0_address1,v0_0_ce1,v0_0_q1,v0_1_address0,v0_1_ce0,v0_1_q0,v0_1_address1,v0_1_ce1,v0_1_q1,v0_2_address0,v0_2_ce0,v0_2_q0,v0_2_address1,v0_2_ce1,v0_2_q1,v0_3_address0,v0_3_ce0,v0_3_q0,v0_3_address1,v0_3_ce1,v0_3_q1,v26,v26_1,v26_2,v26_3,v26_4,v26_5,v26_6,v26_7,v26_8,v26_9,v26_12,v26_10,v26_11,grp_fu_50485_p_din0,grp_fu_50485_p_din1,grp_fu_50485_p_opcode,grp_fu_50485_p_dout0,grp_fu_50485_p_ce,grp_fu_50489_p_din0,grp_fu_50489_p_din1,grp_fu_50489_p_opcode,grp_fu_50489_p_dout0,grp_fu_50489_p_ce,grp_fu_21179_p_din0,grp_fu_21179_p_din1,grp_fu_21179_p_dout0,grp_fu_21179_p_ce,grp_fu_50493_p_din0,grp_fu_50493_p_din1,grp_fu_50493_p_dout0,grp_fu_50493_p_ce); 
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
output  [7:0] v0_0_address0;
output   v0_0_ce0;
input  [63:0] v0_0_q0;
output  [7:0] v0_0_address1;
output   v0_0_ce1;
input  [63:0] v0_0_q1;
output  [7:0] v0_1_address0;
output   v0_1_ce0;
input  [63:0] v0_1_q0;
output  [7:0] v0_1_address1;
output   v0_1_ce1;
input  [63:0] v0_1_q1;
output  [7:0] v0_2_address0;
output   v0_2_ce0;
input  [63:0] v0_2_q0;
output  [7:0] v0_2_address1;
output   v0_2_ce1;
input  [63:0] v0_2_q1;
output  [7:0] v0_3_address0;
output   v0_3_ce0;
input  [63:0] v0_3_q0;
output  [7:0] v0_3_address1;
output   v0_3_ce1;
input  [63:0] v0_3_q1;
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
input  [63:0] v26_12;
input  [63:0] v26_10;
input  [63:0] v26_11;
output  [63:0] grp_fu_50485_p_din0;
output  [63:0] grp_fu_50485_p_din1;
output  [0:0] grp_fu_50485_p_opcode;
input  [63:0] grp_fu_50485_p_dout0;
output   grp_fu_50485_p_ce;
output  [63:0] grp_fu_50489_p_din0;
output  [63:0] grp_fu_50489_p_din1;
output  [0:0] grp_fu_50489_p_opcode;
input  [63:0] grp_fu_50489_p_dout0;
output   grp_fu_50489_p_ce;
output  [63:0] grp_fu_21179_p_din0;
output  [63:0] grp_fu_21179_p_din1;
input  [63:0] grp_fu_21179_p_dout0;
output   grp_fu_21179_p_ce;
output  [63:0] grp_fu_50493_p_din0;
output  [63:0] grp_fu_50493_p_din1;
input  [63:0] grp_fu_50493_p_dout0;
output   grp_fu_50493_p_ce;
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
reg   [0:0] icmp_ln66_reg_1855;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] v23_1_reg_1848;
wire   [0:0] icmp_ln66_fu_726_p2;
reg   [0:0] icmp_ln66_reg_1855_pp0_iter1_reg;
reg   [0:0] icmp_ln66_reg_1855_pp0_iter2_reg;
reg   [0:0] icmp_ln66_reg_1855_pp0_iter3_reg;
reg   [0:0] icmp_ln66_reg_1855_pp0_iter4_reg;
reg   [0:0] icmp_ln66_reg_1855_pp0_iter5_reg;
reg   [0:0] icmp_ln66_reg_1855_pp0_iter6_reg;
reg   [0:0] icmp_ln66_reg_1855_pp0_iter7_reg;
reg   [0:0] icmp_ln66_reg_1855_pp0_iter8_reg;
reg   [0:0] icmp_ln66_reg_1855_pp0_iter9_reg;
reg   [0:0] icmp_ln66_reg_1855_pp0_iter10_reg;
reg   [0:0] icmp_ln66_reg_1855_pp0_iter11_reg;
reg   [0:0] icmp_ln66_reg_1855_pp0_iter12_reg;
reg   [0:0] icmp_ln66_reg_1855_pp0_iter13_reg;
reg   [0:0] icmp_ln66_reg_1855_pp0_iter14_reg;
reg   [0:0] icmp_ln66_reg_1855_pp0_iter15_reg;
reg   [9:0] phi_mul_load_reg_1859;
wire   [0:0] trunc_ln66_1_fu_739_p1;
reg   [0:0] trunc_ln66_1_reg_1874;
reg   [0:0] trunc_ln66_1_reg_1874_pp0_iter1_reg;
reg   [0:0] trunc_ln66_1_reg_1874_pp0_iter2_reg;
reg   [0:0] trunc_ln66_1_reg_1874_pp0_iter3_reg;
reg   [0:0] trunc_ln66_1_reg_1874_pp0_iter4_reg;
reg   [0:0] trunc_ln66_1_reg_1874_pp0_iter5_reg;
reg   [0:0] trunc_ln66_1_reg_1874_pp0_iter6_reg;
reg   [0:0] trunc_ln66_1_reg_1874_pp0_iter7_reg;
reg   [0:0] trunc_ln66_1_reg_1874_pp0_iter8_reg;
reg   [0:0] trunc_ln66_1_reg_1874_pp0_iter9_reg;
reg   [0:0] trunc_ln66_1_reg_1874_pp0_iter10_reg;
reg   [0:0] trunc_ln66_1_reg_1874_pp0_iter11_reg;
reg   [0:0] trunc_ln66_1_reg_1874_pp0_iter12_reg;
reg   [0:0] trunc_ln66_1_reg_1874_pp0_iter13_reg;
reg   [0:0] trunc_ln66_1_reg_1874_pp0_iter14_reg;
reg   [0:0] trunc_ln66_1_reg_1874_pp0_iter15_reg;
reg   [0:0] trunc_ln66_1_reg_1874_pp0_iter16_reg;
wire   [7:0] mul_ln69_fu_747_p2;
reg   [7:0] mul_ln69_reg_1878;
wire   [9:0] add_ln69_fu_753_p2;
reg   [9:0] add_ln69_reg_1883;
reg   [9:0] add_ln69_reg_1883_pp0_iter1_reg;
wire   [9:0] add_ln69_1_fu_765_p2;
reg   [9:0] add_ln69_1_reg_1889;
reg   [9:0] add_ln69_1_reg_1889_pp0_iter1_reg;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [9:0] add_ln69_2_fu_784_p2;
reg   [9:0] add_ln69_2_reg_1915;
reg   [9:0] add_ln69_2_reg_1915_pp0_iter1_reg;
wire   [9:0] add_ln69_3_fu_795_p2;
reg   [9:0] add_ln69_3_reg_1921;
reg   [9:0] add_ln69_3_reg_1921_pp0_iter1_reg;
wire   [63:0] v25_fu_831_p11;
reg   [63:0] v25_reg_1927;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [9:0] add_ln69_4_fu_855_p2;
reg   [9:0] add_ln69_4_reg_1932;
reg   [9:0] add_ln69_4_reg_1932_pp0_iter1_reg;
wire   [9:0] add_ln69_5_fu_866_p2;
reg   [9:0] add_ln69_5_reg_1938;
reg   [9:0] add_ln69_5_reg_1938_pp0_iter1_reg;
reg   [9:0] add_ln69_5_reg_1938_pp0_iter2_reg;
wire   [9:0] add_ln69_6_fu_877_p2;
reg   [9:0] add_ln69_6_reg_1944;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [9:0] add_ln69_6_reg_1944_pp0_iter1_reg;
wire   [9:0] add_ln69_7_fu_888_p2;
reg   [9:0] add_ln69_7_reg_1950;
reg   [9:0] add_ln69_7_reg_1950_pp0_iter1_reg;
reg   [9:0] add_ln69_7_reg_1950_pp0_iter2_reg;
wire   [9:0] add_ln69_8_fu_899_p2;
reg   [9:0] add_ln69_8_reg_1956;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [9:0] add_ln69_8_reg_1956_pp0_iter1_reg;
wire   [9:0] add_ln69_9_fu_910_p2;
reg   [9:0] add_ln69_9_reg_1962;
reg   [9:0] add_ln69_9_reg_1962_pp0_iter1_reg;
reg   [9:0] add_ln69_9_reg_1962_pp0_iter2_reg;
wire   [9:0] add_ln69_10_fu_921_p2;
reg   [9:0] add_ln69_10_reg_1968;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [9:0] add_ln69_10_reg_1968_pp0_iter1_reg;
wire   [9:0] add_ln69_11_fu_932_p2;
reg   [9:0] add_ln69_11_reg_1974;
reg   [9:0] add_ln69_11_reg_1974_pp0_iter1_reg;
reg   [9:0] add_ln69_11_reg_1974_pp0_iter2_reg;
reg   [4:0] lshr_ln1_reg_1980;
wire    ap_block_pp0_stage6_11001;
reg   [4:0] lshr_ln1_reg_1980_pp0_iter1_reg;
reg   [4:0] lshr_ln1_reg_1980_pp0_iter2_reg;
reg   [4:0] lshr_ln1_reg_1980_pp0_iter3_reg;
reg   [4:0] lshr_ln1_reg_1980_pp0_iter4_reg;
reg   [4:0] lshr_ln1_reg_1980_pp0_iter5_reg;
reg   [4:0] lshr_ln1_reg_1980_pp0_iter6_reg;
reg   [4:0] lshr_ln1_reg_1980_pp0_iter7_reg;
reg   [4:0] lshr_ln1_reg_1980_pp0_iter8_reg;
reg   [4:0] lshr_ln1_reg_1980_pp0_iter9_reg;
reg   [4:0] lshr_ln1_reg_1980_pp0_iter10_reg;
reg   [4:0] lshr_ln1_reg_1980_pp0_iter11_reg;
reg   [4:0] lshr_ln1_reg_1980_pp0_iter12_reg;
reg   [4:0] lshr_ln1_reg_1980_pp0_iter13_reg;
reg   [4:0] lshr_ln1_reg_1980_pp0_iter14_reg;
reg   [4:0] lshr_ln1_reg_1980_pp0_iter15_reg;
reg   [4:0] lshr_ln1_reg_1980_pp0_iter16_reg;
reg   [1:0] trunc_ln69_1_reg_1985;
reg   [1:0] trunc_ln69_2_reg_1990;
reg   [63:0] v27_reg_1995;
reg   [1:0] trunc_ln69_3_reg_2000;
reg   [1:0] trunc_ln69_4_reg_2005;
reg   [1:0] trunc_ln69_5_reg_2010;
reg   [1:0] trunc_ln69_7_reg_2015;
reg   [1:0] trunc_ln69_9_reg_2020;
reg   [1:0] trunc_ln69_10_reg_2065;
wire   [63:0] v25_1_fu_1156_p11;
reg   [63:0] v25_1_reg_2070;
wire   [63:0] v25_2_fu_1195_p11;
reg   [63:0] v25_2_reg_2075;
wire   [63:0] v25_3_fu_1250_p11;
reg   [63:0] v25_3_reg_2120;
wire   [63:0] v25_4_fu_1289_p11;
reg   [63:0] v25_4_reg_2125;
wire   [9:0] grp_fu_871_p2;
reg   [9:0] urem_ln69_5_reg_2150;
wire   [63:0] v25_5_fu_1336_p11;
reg   [63:0] v25_5_reg_2155;
wire   [9:0] grp_fu_893_p2;
reg   [9:0] urem_ln69_7_reg_2200;
reg   [63:0] v29_13_reg_2205;
wire   [63:0] v25_6_fu_1409_p11;
reg   [63:0] v25_6_reg_2210;
wire   [63:0] v25_7_fu_1449_p11;
reg   [63:0] v25_7_reg_2215;
wire   [9:0] grp_fu_915_p2;
reg   [9:0] urem_ln69_9_reg_2260;
wire   [63:0] v25_8_fu_1522_p11;
reg   [63:0] v25_8_reg_2265;
wire   [63:0] v25_9_fu_1562_p11;
reg   [63:0] v25_9_reg_2270;
wire   [9:0] grp_fu_937_p2;
reg   [9:0] urem_ln69_11_reg_2315;
wire   [63:0] v25_10_fu_1635_p11;
reg   [63:0] v25_10_reg_2320;
wire   [63:0] v25_11_fu_1675_p11;
reg   [63:0] v25_11_reg_2325;
wire   [63:0] v25_12_fu_1740_p11;
reg   [63:0] v25_12_reg_2350;
reg   [63:0] v27_1_reg_2355;
reg   [63:0] v27_2_reg_2360;
reg   [63:0] v27_2_reg_2360_pp0_iter4_reg;
reg   [63:0] v27_3_reg_2365;
reg   [63:0] v27_3_reg_2365_pp0_iter4_reg;
reg   [63:0] v27_3_reg_2365_pp0_iter5_reg;
reg   [63:0] v27_4_reg_2370;
reg   [63:0] v27_4_reg_2370_pp0_iter4_reg;
reg   [63:0] v27_4_reg_2370_pp0_iter5_reg;
reg   [63:0] v27_4_reg_2370_pp0_iter6_reg;
reg   [63:0] v27_5_reg_2375;
reg   [63:0] v27_5_reg_2375_pp0_iter4_reg;
reg   [63:0] v27_5_reg_2375_pp0_iter5_reg;
reg   [63:0] v27_5_reg_2375_pp0_iter6_reg;
reg   [63:0] v27_5_reg_2375_pp0_iter7_reg;
reg   [63:0] v27_6_reg_2380;
reg   [63:0] v27_6_reg_2380_pp0_iter4_reg;
reg   [63:0] v27_6_reg_2380_pp0_iter5_reg;
reg   [63:0] v27_6_reg_2380_pp0_iter6_reg;
reg   [63:0] v27_6_reg_2380_pp0_iter7_reg;
reg   [63:0] v27_6_reg_2380_pp0_iter8_reg;
reg   [63:0] v27_7_reg_2385;
reg   [63:0] v27_7_reg_2385_pp0_iter4_reg;
reg   [63:0] v27_7_reg_2385_pp0_iter5_reg;
reg   [63:0] v27_7_reg_2385_pp0_iter6_reg;
reg   [63:0] v27_7_reg_2385_pp0_iter7_reg;
reg   [63:0] v27_7_reg_2385_pp0_iter8_reg;
reg   [63:0] v27_7_reg_2385_pp0_iter9_reg;
reg   [63:0] v27_8_reg_2390;
reg   [63:0] v27_8_reg_2390_pp0_iter4_reg;
reg   [63:0] v27_8_reg_2390_pp0_iter5_reg;
reg   [63:0] v27_8_reg_2390_pp0_iter6_reg;
reg   [63:0] v27_8_reg_2390_pp0_iter7_reg;
reg   [63:0] v27_8_reg_2390_pp0_iter8_reg;
reg   [63:0] v27_8_reg_2390_pp0_iter9_reg;
reg   [63:0] v27_8_reg_2390_pp0_iter10_reg;
reg   [63:0] v27_9_reg_2395;
reg   [63:0] v27_9_reg_2395_pp0_iter4_reg;
reg   [63:0] v27_9_reg_2395_pp0_iter5_reg;
reg   [63:0] v27_9_reg_2395_pp0_iter6_reg;
reg   [63:0] v27_9_reg_2395_pp0_iter7_reg;
reg   [63:0] v27_9_reg_2395_pp0_iter8_reg;
reg   [63:0] v27_9_reg_2395_pp0_iter9_reg;
reg   [63:0] v27_9_reg_2395_pp0_iter10_reg;
reg   [63:0] v27_9_reg_2395_pp0_iter11_reg;
reg   [63:0] v27_10_reg_2400;
reg   [63:0] v27_10_reg_2400_pp0_iter4_reg;
reg   [63:0] v27_10_reg_2400_pp0_iter5_reg;
reg   [63:0] v27_10_reg_2400_pp0_iter6_reg;
reg   [63:0] v27_10_reg_2400_pp0_iter7_reg;
reg   [63:0] v27_10_reg_2400_pp0_iter8_reg;
reg   [63:0] v27_10_reg_2400_pp0_iter9_reg;
reg   [63:0] v27_10_reg_2400_pp0_iter10_reg;
reg   [63:0] v27_10_reg_2400_pp0_iter11_reg;
reg   [63:0] v27_10_reg_2400_pp0_iter12_reg;
reg   [63:0] v27_11_reg_2405;
reg   [63:0] v27_11_reg_2405_pp0_iter4_reg;
reg   [63:0] v27_11_reg_2405_pp0_iter5_reg;
reg   [63:0] v27_11_reg_2405_pp0_iter6_reg;
reg   [63:0] v27_11_reg_2405_pp0_iter7_reg;
reg   [63:0] v27_11_reg_2405_pp0_iter8_reg;
reg   [63:0] v27_11_reg_2405_pp0_iter9_reg;
reg   [63:0] v27_11_reg_2405_pp0_iter10_reg;
reg   [63:0] v27_11_reg_2405_pp0_iter11_reg;
reg   [63:0] v27_11_reg_2405_pp0_iter12_reg;
reg   [63:0] v27_11_reg_2405_pp0_iter13_reg;
reg   [63:0] v27_12_reg_2410;
reg   [63:0] v27_12_reg_2410_pp0_iter4_reg;
reg   [63:0] v27_12_reg_2410_pp0_iter5_reg;
reg   [63:0] v27_12_reg_2410_pp0_iter6_reg;
reg   [63:0] v27_12_reg_2410_pp0_iter7_reg;
reg   [63:0] v27_12_reg_2410_pp0_iter8_reg;
reg   [63:0] v27_12_reg_2410_pp0_iter9_reg;
reg   [63:0] v27_12_reg_2410_pp0_iter10_reg;
reg   [63:0] v27_12_reg_2410_pp0_iter11_reg;
reg   [63:0] v27_12_reg_2410_pp0_iter12_reg;
reg   [63:0] v27_12_reg_2410_pp0_iter13_reg;
reg   [63:0] v27_12_reg_2410_pp0_iter14_reg;
reg   [63:0] v29_14_reg_2415;
reg   [63:0] v29_15_reg_2420;
reg   [63:0] v29_16_reg_2425;
reg   [63:0] v29_17_reg_2430;
reg   [63:0] v29_18_reg_2435;
reg   [63:0] v29_19_reg_2440;
reg   [63:0] v29_20_reg_2445;
reg   [63:0] v29_21_reg_2450;
reg   [63:0] v29_22_reg_2455;
reg   [63:0] v29_23_reg_2460;
reg   [63:0] v29_24_reg_2465;
reg   [63:0] v29_reg_2470;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln69_1_fu_777_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln69_2_fu_1105_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln69_4_fu_1113_p1;
wire   [63:0] zext_ln69_5_fu_1218_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln69_6_fu_1226_p1;
wire   [63:0] zext_ln69_7_fu_1312_p1;
wire   [63:0] zext_ln69_8_fu_1359_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln69_9_fu_1366_p1;
wire   [63:0] zext_ln69_10_fu_1472_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln69_11_fu_1479_p1;
wire   [63:0] zext_ln69_12_fu_1585_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln69_13_fu_1592_p1;
wire   [63:0] zext_ln69_14_fu_1698_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln66_fu_1764_p1;
reg   [9:0] phi_mul_fu_132;
wire   [9:0] add_ln69_12_fu_957_p2;
wire    ap_loop_init;
reg   [9:0] ap_sig_allocacmp_phi_mul_load;
reg   [6:0] v23_fu_136;
wire   [6:0] add_ln66_fu_943_p2;
reg   [6:0] ap_sig_allocacmp_v23_1;
reg    v0_0_ce1_local;
reg   [7:0] v0_0_address1_local;
reg    v0_0_ce0_local;
reg   [7:0] v0_0_address0_local;
reg    v0_1_ce1_local;
reg   [7:0] v0_1_address1_local;
reg    v0_1_ce0_local;
reg   [7:0] v0_1_address0_local;
reg    v0_2_ce1_local;
reg   [7:0] v0_2_address1_local;
reg    v0_2_ce0_local;
reg   [7:0] v0_2_address0_local;
reg    v0_3_ce1_local;
reg   [7:0] v0_3_address1_local;
reg    v0_3_ce0_local;
reg   [7:0] v0_3_address0_local;
reg    v20_we0_local;
reg    v20_ce0_local;
reg    v20_1_we0_local;
reg    v20_1_ce0_local;
reg   [63:0] grp_fu_696_p0;
reg   [63:0] grp_fu_696_p1;
reg   [63:0] grp_fu_701_p0;
reg   [63:0] grp_fu_701_p1;
reg   [63:0] grp_fu_705_p0;
reg   [63:0] grp_fu_705_p1;
reg   [63:0] grp_fu_709_p0;
reg   [63:0] grp_fu_709_p1;
wire   [3:0] trunc_ln66_fu_735_p1;
wire   [3:0] mul_ln69_fu_747_p0;
wire   [4:0] mul_ln69_fu_747_p1;
wire   [9:0] grp_fu_759_p0;
wire   [8:0] grp_fu_759_p1;
wire   [9:0] grp_fu_771_p0;
wire   [8:0] grp_fu_771_p1;
wire   [9:0] grp_fu_789_p0;
wire   [8:0] grp_fu_789_p1;
wire   [9:0] grp_fu_800_p0;
wire   [8:0] grp_fu_800_p1;
wire   [63:0] v25_fu_831_p2;
wire   [63:0] v25_fu_831_p4;
wire   [63:0] v25_fu_831_p6;
wire   [63:0] v25_fu_831_p8;
wire   [63:0] v25_fu_831_p9;
wire   [1:0] v25_fu_831_p10;
wire   [9:0] grp_fu_860_p0;
wire   [8:0] grp_fu_860_p1;
wire   [9:0] grp_fu_871_p0;
wire   [8:0] grp_fu_871_p1;
wire   [9:0] grp_fu_882_p0;
wire   [8:0] grp_fu_882_p1;
wire   [9:0] grp_fu_893_p0;
wire   [8:0] grp_fu_893_p1;
wire   [9:0] grp_fu_904_p0;
wire   [8:0] grp_fu_904_p1;
wire   [9:0] grp_fu_915_p0;
wire   [8:0] grp_fu_915_p1;
wire   [9:0] grp_fu_926_p0;
wire   [8:0] grp_fu_926_p1;
wire   [9:0] grp_fu_937_p0;
wire   [8:0] grp_fu_937_p1;
wire   [9:0] mul_ln69_1_fu_975_p0;
wire   [11:0] mul_ln69_1_fu_975_p1;
wire   [20:0] mul_ln69_1_fu_975_p2;
wire   [9:0] mul_ln69_2_fu_994_p0;
wire   [11:0] mul_ln69_2_fu_994_p1;
wire   [20:0] mul_ln69_2_fu_994_p2;
wire   [9:0] mul_ln69_3_fu_1013_p0;
wire   [11:0] mul_ln69_3_fu_1013_p1;
wire   [20:0] mul_ln69_3_fu_1013_p2;
wire   [9:0] mul_ln69_4_fu_1032_p0;
wire   [11:0] mul_ln69_4_fu_1032_p1;
wire   [20:0] mul_ln69_4_fu_1032_p2;
wire   [9:0] mul_ln69_5_fu_1051_p0;
wire   [11:0] mul_ln69_5_fu_1051_p1;
wire   [20:0] mul_ln69_5_fu_1051_p2;
wire   [9:0] mul_ln69_7_fu_1070_p0;
wire   [11:0] mul_ln69_7_fu_1070_p1;
wire   [20:0] mul_ln69_7_fu_1070_p2;
wire   [9:0] mul_ln69_9_fu_1089_p0;
wire   [11:0] mul_ln69_9_fu_1089_p1;
wire   [20:0] mul_ln69_9_fu_1089_p2;
wire   [9:0] grp_fu_759_p2;
wire   [9:0] grp_fu_771_p2;
wire   [9:0] mul_ln69_11_fu_1124_p0;
wire   [11:0] mul_ln69_11_fu_1124_p1;
wire   [20:0] mul_ln69_11_fu_1124_p2;
wire   [63:0] v25_1_fu_1156_p2;
wire   [63:0] v25_1_fu_1156_p4;
wire   [63:0] v25_1_fu_1156_p6;
wire   [63:0] v25_1_fu_1156_p8;
wire   [63:0] v25_1_fu_1156_p9;
wire   [63:0] v25_2_fu_1195_p2;
wire   [63:0] v25_2_fu_1195_p4;
wire   [63:0] v25_2_fu_1195_p6;
wire   [63:0] v25_2_fu_1195_p8;
wire   [63:0] v25_2_fu_1195_p9;
wire   [9:0] grp_fu_789_p2;
wire   [9:0] grp_fu_800_p2;
wire   [63:0] v25_3_fu_1250_p2;
wire   [63:0] v25_3_fu_1250_p4;
wire   [63:0] v25_3_fu_1250_p6;
wire   [63:0] v25_3_fu_1250_p8;
wire   [63:0] v25_3_fu_1250_p9;
wire   [63:0] v25_4_fu_1289_p2;
wire   [63:0] v25_4_fu_1289_p4;
wire   [63:0] v25_4_fu_1289_p6;
wire   [63:0] v25_4_fu_1289_p8;
wire   [63:0] v25_4_fu_1289_p9;
wire   [9:0] grp_fu_860_p2;
wire   [63:0] v25_5_fu_1336_p2;
wire   [63:0] v25_5_fu_1336_p4;
wire   [63:0] v25_5_fu_1336_p6;
wire   [63:0] v25_5_fu_1336_p8;
wire   [63:0] v25_5_fu_1336_p9;
wire   [9:0] grp_fu_882_p2;
wire   [9:0] mul_ln69_6_fu_1377_p0;
wire   [11:0] mul_ln69_6_fu_1377_p1;
wire   [20:0] mul_ln69_6_fu_1377_p2;
wire   [63:0] v25_6_fu_1409_p2;
wire   [63:0] v25_6_fu_1409_p4;
wire   [63:0] v25_6_fu_1409_p6;
wire   [63:0] v25_6_fu_1409_p8;
wire   [63:0] v25_6_fu_1409_p9;
wire   [1:0] v25_6_fu_1409_p10;
wire   [63:0] v25_7_fu_1449_p2;
wire   [63:0] v25_7_fu_1449_p4;
wire   [63:0] v25_7_fu_1449_p6;
wire   [63:0] v25_7_fu_1449_p8;
wire   [63:0] v25_7_fu_1449_p9;
wire   [9:0] grp_fu_904_p2;
wire   [9:0] mul_ln69_8_fu_1490_p0;
wire   [11:0] mul_ln69_8_fu_1490_p1;
wire   [20:0] mul_ln69_8_fu_1490_p2;
wire   [63:0] v25_8_fu_1522_p2;
wire   [63:0] v25_8_fu_1522_p4;
wire   [63:0] v25_8_fu_1522_p6;
wire   [63:0] v25_8_fu_1522_p8;
wire   [63:0] v25_8_fu_1522_p9;
wire   [1:0] v25_8_fu_1522_p10;
wire   [63:0] v25_9_fu_1562_p2;
wire   [63:0] v25_9_fu_1562_p4;
wire   [63:0] v25_9_fu_1562_p6;
wire   [63:0] v25_9_fu_1562_p8;
wire   [63:0] v25_9_fu_1562_p9;
wire   [9:0] grp_fu_926_p2;
wire   [9:0] mul_ln69_10_fu_1603_p0;
wire   [11:0] mul_ln69_10_fu_1603_p1;
wire   [20:0] mul_ln69_10_fu_1603_p2;
wire   [63:0] v25_10_fu_1635_p2;
wire   [63:0] v25_10_fu_1635_p4;
wire   [63:0] v25_10_fu_1635_p6;
wire   [63:0] v25_10_fu_1635_p8;
wire   [63:0] v25_10_fu_1635_p9;
wire   [1:0] v25_10_fu_1635_p10;
wire   [63:0] v25_11_fu_1675_p2;
wire   [63:0] v25_11_fu_1675_p4;
wire   [63:0] v25_11_fu_1675_p6;
wire   [63:0] v25_11_fu_1675_p8;
wire   [63:0] v25_11_fu_1675_p9;
wire   [9:0] mul_ln69_12_fu_1708_p0;
wire   [11:0] mul_ln69_12_fu_1708_p1;
wire   [20:0] mul_ln69_12_fu_1708_p2;
wire   [63:0] v25_12_fu_1740_p2;
wire   [63:0] v25_12_fu_1740_p4;
wire   [63:0] v25_12_fu_1740_p6;
wire   [63:0] v25_12_fu_1740_p8;
wire   [63:0] v25_12_fu_1740_p9;
wire   [1:0] v25_12_fu_1740_p10;
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
wire   [20:0] mul_ln69_10_fu_1603_p00;
wire   [20:0] mul_ln69_11_fu_1124_p00;
wire   [20:0] mul_ln69_12_fu_1708_p00;
wire   [20:0] mul_ln69_1_fu_975_p00;
wire   [20:0] mul_ln69_2_fu_994_p00;
wire   [20:0] mul_ln69_3_fu_1013_p00;
wire   [20:0] mul_ln69_4_fu_1032_p00;
wire   [20:0] mul_ln69_5_fu_1051_p00;
wire   [20:0] mul_ln69_6_fu_1377_p00;
wire   [20:0] mul_ln69_7_fu_1070_p00;
wire   [20:0] mul_ln69_8_fu_1490_p00;
wire   [20:0] mul_ln69_9_fu_1089_p00;
wire   [7:0] mul_ln69_fu_747_p00;
wire   [1:0] v25_fu_831_p1;
wire   [1:0] v25_fu_831_p3;
wire  signed [1:0] v25_fu_831_p5;
wire  signed [1:0] v25_fu_831_p7;
wire   [1:0] v25_1_fu_1156_p1;
wire   [1:0] v25_1_fu_1156_p3;
wire  signed [1:0] v25_1_fu_1156_p5;
wire  signed [1:0] v25_1_fu_1156_p7;
wire   [1:0] v25_2_fu_1195_p1;
wire   [1:0] v25_2_fu_1195_p3;
wire  signed [1:0] v25_2_fu_1195_p5;
wire  signed [1:0] v25_2_fu_1195_p7;
wire   [1:0] v25_3_fu_1250_p1;
wire   [1:0] v25_3_fu_1250_p3;
wire  signed [1:0] v25_3_fu_1250_p5;
wire  signed [1:0] v25_3_fu_1250_p7;
wire   [1:0] v25_4_fu_1289_p1;
wire   [1:0] v25_4_fu_1289_p3;
wire  signed [1:0] v25_4_fu_1289_p5;
wire  signed [1:0] v25_4_fu_1289_p7;
wire   [1:0] v25_5_fu_1336_p1;
wire   [1:0] v25_5_fu_1336_p3;
wire  signed [1:0] v25_5_fu_1336_p5;
wire  signed [1:0] v25_5_fu_1336_p7;
wire   [1:0] v25_6_fu_1409_p1;
wire   [1:0] v25_6_fu_1409_p3;
wire  signed [1:0] v25_6_fu_1409_p5;
wire  signed [1:0] v25_6_fu_1409_p7;
wire   [1:0] v25_7_fu_1449_p1;
wire   [1:0] v25_7_fu_1449_p3;
wire  signed [1:0] v25_7_fu_1449_p5;
wire  signed [1:0] v25_7_fu_1449_p7;
wire   [1:0] v25_8_fu_1522_p1;
wire   [1:0] v25_8_fu_1522_p3;
wire  signed [1:0] v25_8_fu_1522_p5;
wire  signed [1:0] v25_8_fu_1522_p7;
wire   [1:0] v25_9_fu_1562_p1;
wire   [1:0] v25_9_fu_1562_p3;
wire  signed [1:0] v25_9_fu_1562_p5;
wire  signed [1:0] v25_9_fu_1562_p7;
wire   [1:0] v25_10_fu_1635_p1;
wire   [1:0] v25_10_fu_1635_p3;
wire  signed [1:0] v25_10_fu_1635_p5;
wire  signed [1:0] v25_10_fu_1635_p7;
wire   [1:0] v25_11_fu_1675_p1;
wire   [1:0] v25_11_fu_1675_p3;
wire  signed [1:0] v25_11_fu_1675_p5;
wire  signed [1:0] v25_11_fu_1675_p7;
wire   [1:0] v25_12_fu_1740_p1;
wire   [1:0] v25_12_fu_1740_p3;
wire  signed [1:0] v25_12_fu_1740_p5;
wire  signed [1:0] v25_12_fu_1740_p7;
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
#0 phi_mul_fu_132 = 10'd0;
#0 v23_fu_136 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_mul_4ns_5ns_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 4 ),.din1_WIDTH( 5 ),.dout_WIDTH( 8 ))
mul_4ns_5ns_8_1_1_U18(.din0(mul_ln69_fu_747_p0),.din1(mul_ln69_fu_747_p1),.dout(mul_ln69_fu_747_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U19(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_759_p0),.din1(grp_fu_759_p1),.ce(1'b1),.dout(grp_fu_759_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U20(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_771_p0),.din1(grp_fu_771_p1),.ce(1'b1),.dout(grp_fu_771_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U21(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_789_p0),.din1(grp_fu_789_p1),.ce(1'b1),.dout(grp_fu_789_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U22(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_800_p0),.din1(grp_fu_800_p1),.ce(1'b1),.dout(grp_fu_800_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U23(.din0(v25_fu_831_p2),.din1(v25_fu_831_p4),.din2(v25_fu_831_p6),.din3(v25_fu_831_p8),.def(v25_fu_831_p9),.sel(v25_fu_831_p10),.dout(v25_fu_831_p11));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U24(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_860_p0),.din1(grp_fu_860_p1),.ce(1'b1),.dout(grp_fu_860_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U25(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_871_p0),.din1(grp_fu_871_p1),.ce(1'b1),.dout(grp_fu_871_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U26(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_882_p0),.din1(grp_fu_882_p1),.ce(1'b1),.dout(grp_fu_882_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U27(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_893_p0),.din1(grp_fu_893_p1),.ce(1'b1),.dout(grp_fu_893_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U28(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_904_p0),.din1(grp_fu_904_p1),.ce(1'b1),.dout(grp_fu_904_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U29(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_915_p0),.din1(grp_fu_915_p1),.ce(1'b1),.dout(grp_fu_915_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U30(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_926_p0),.din1(grp_fu_926_p1),.ce(1'b1),.dout(grp_fu_926_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U31(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_937_p0),.din1(grp_fu_937_p1),.ce(1'b1),.dout(grp_fu_937_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U32(.din0(mul_ln69_1_fu_975_p0),.din1(mul_ln69_1_fu_975_p1),.dout(mul_ln69_1_fu_975_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U33(.din0(mul_ln69_2_fu_994_p0),.din1(mul_ln69_2_fu_994_p1),.dout(mul_ln69_2_fu_994_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U34(.din0(mul_ln69_3_fu_1013_p0),.din1(mul_ln69_3_fu_1013_p1),.dout(mul_ln69_3_fu_1013_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U35(.din0(mul_ln69_4_fu_1032_p0),.din1(mul_ln69_4_fu_1032_p1),.dout(mul_ln69_4_fu_1032_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U36(.din0(mul_ln69_5_fu_1051_p0),.din1(mul_ln69_5_fu_1051_p1),.dout(mul_ln69_5_fu_1051_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U37(.din0(mul_ln69_7_fu_1070_p0),.din1(mul_ln69_7_fu_1070_p1),.dout(mul_ln69_7_fu_1070_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U38(.din0(mul_ln69_9_fu_1089_p0),.din1(mul_ln69_9_fu_1089_p1),.dout(mul_ln69_9_fu_1089_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U39(.din0(mul_ln69_11_fu_1124_p0),.din1(mul_ln69_11_fu_1124_p1),.dout(mul_ln69_11_fu_1124_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U40(.din0(v25_1_fu_1156_p2),.din1(v25_1_fu_1156_p4),.din2(v25_1_fu_1156_p6),.din3(v25_1_fu_1156_p8),.def(v25_1_fu_1156_p9),.sel(trunc_ln69_1_reg_1985),.dout(v25_1_fu_1156_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U41(.din0(v25_2_fu_1195_p2),.din1(v25_2_fu_1195_p4),.din2(v25_2_fu_1195_p6),.din3(v25_2_fu_1195_p8),.def(v25_2_fu_1195_p9),.sel(trunc_ln69_2_reg_1990),.dout(v25_2_fu_1195_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U42(.din0(v25_3_fu_1250_p2),.din1(v25_3_fu_1250_p4),.din2(v25_3_fu_1250_p6),.din3(v25_3_fu_1250_p8),.def(v25_3_fu_1250_p9),.sel(trunc_ln69_3_reg_2000),.dout(v25_3_fu_1250_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U43(.din0(v25_4_fu_1289_p2),.din1(v25_4_fu_1289_p4),.din2(v25_4_fu_1289_p6),.din3(v25_4_fu_1289_p8),.def(v25_4_fu_1289_p9),.sel(trunc_ln69_4_reg_2005),.dout(v25_4_fu_1289_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U44(.din0(v25_5_fu_1336_p2),.din1(v25_5_fu_1336_p4),.din2(v25_5_fu_1336_p6),.din3(v25_5_fu_1336_p8),.def(v25_5_fu_1336_p9),.sel(trunc_ln69_5_reg_2010),.dout(v25_5_fu_1336_p11));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U45(.din0(mul_ln69_6_fu_1377_p0),.din1(mul_ln69_6_fu_1377_p1),.dout(mul_ln69_6_fu_1377_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U46(.din0(v25_6_fu_1409_p2),.din1(v25_6_fu_1409_p4),.din2(v25_6_fu_1409_p6),.din3(v25_6_fu_1409_p8),.def(v25_6_fu_1409_p9),.sel(v25_6_fu_1409_p10),.dout(v25_6_fu_1409_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U47(.din0(v25_7_fu_1449_p2),.din1(v25_7_fu_1449_p4),.din2(v25_7_fu_1449_p6),.din3(v25_7_fu_1449_p8),.def(v25_7_fu_1449_p9),.sel(trunc_ln69_7_reg_2015),.dout(v25_7_fu_1449_p11));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U48(.din0(mul_ln69_8_fu_1490_p0),.din1(mul_ln69_8_fu_1490_p1),.dout(mul_ln69_8_fu_1490_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U49(.din0(v25_8_fu_1522_p2),.din1(v25_8_fu_1522_p4),.din2(v25_8_fu_1522_p6),.din3(v25_8_fu_1522_p8),.def(v25_8_fu_1522_p9),.sel(v25_8_fu_1522_p10),.dout(v25_8_fu_1522_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U50(.din0(v25_9_fu_1562_p2),.din1(v25_9_fu_1562_p4),.din2(v25_9_fu_1562_p6),.din3(v25_9_fu_1562_p8),.def(v25_9_fu_1562_p9),.sel(trunc_ln69_9_reg_2020),.dout(v25_9_fu_1562_p11));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U51(.din0(mul_ln69_10_fu_1603_p0),.din1(mul_ln69_10_fu_1603_p1),.dout(mul_ln69_10_fu_1603_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U52(.din0(v25_10_fu_1635_p2),.din1(v25_10_fu_1635_p4),.din2(v25_10_fu_1635_p6),.din3(v25_10_fu_1635_p8),.def(v25_10_fu_1635_p9),.sel(v25_10_fu_1635_p10),.dout(v25_10_fu_1635_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U53(.din0(v25_11_fu_1675_p2),.din1(v25_11_fu_1675_p4),.din2(v25_11_fu_1675_p6),.din3(v25_11_fu_1675_p8),.def(v25_11_fu_1675_p9),.sel(trunc_ln69_10_reg_2065),.dout(v25_11_fu_1675_p11));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U54(.din0(mul_ln69_12_fu_1708_p0),.din1(mul_ln69_12_fu_1708_p1),.dout(mul_ln69_12_fu_1708_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U55(.din0(v25_12_fu_1740_p2),.din1(v25_12_fu_1740_p4),.din2(v25_12_fu_1740_p6),.din3(v25_12_fu_1740_p8),.def(v25_12_fu_1740_p9),.sel(v25_12_fu_1740_p10),.dout(v25_12_fu_1740_p11));
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
        phi_mul_fu_132 <= 10'd0;
    end else if (((icmp_ln66_reg_1855 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        phi_mul_fu_132 <= add_ln69_12_fu_957_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v23_fu_136 <= 7'd0;
    end else if (((icmp_ln66_reg_1855 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v23_fu_136 <= add_ln66_fu_943_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln69_10_reg_1968 <= add_ln69_10_fu_921_p2;
        add_ln69_10_reg_1968_pp0_iter1_reg <= add_ln69_10_reg_1968;
        add_ln69_11_reg_1974 <= add_ln69_11_fu_932_p2;
        add_ln69_11_reg_1974_pp0_iter1_reg <= add_ln69_11_reg_1974;
        add_ln69_11_reg_1974_pp0_iter2_reg <= add_ln69_11_reg_1974_pp0_iter1_reg;
        trunc_ln69_9_reg_2020 <= {{mul_ln69_9_fu_1089_p2[19:18]}};
        v25_10_reg_2320 <= v25_10_fu_1635_p11;
        v25_11_reg_2325 <= v25_11_fu_1675_p11;
        v27_10_reg_2400_pp0_iter10_reg <= v27_10_reg_2400_pp0_iter9_reg;
        v27_10_reg_2400_pp0_iter11_reg <= v27_10_reg_2400_pp0_iter10_reg;
        v27_10_reg_2400_pp0_iter12_reg <= v27_10_reg_2400_pp0_iter11_reg;
        v27_10_reg_2400_pp0_iter4_reg <= v27_10_reg_2400;
        v27_10_reg_2400_pp0_iter5_reg <= v27_10_reg_2400_pp0_iter4_reg;
        v27_10_reg_2400_pp0_iter6_reg <= v27_10_reg_2400_pp0_iter5_reg;
        v27_10_reg_2400_pp0_iter7_reg <= v27_10_reg_2400_pp0_iter6_reg;
        v27_10_reg_2400_pp0_iter8_reg <= v27_10_reg_2400_pp0_iter7_reg;
        v27_10_reg_2400_pp0_iter9_reg <= v27_10_reg_2400_pp0_iter8_reg;
        v27_11_reg_2405_pp0_iter10_reg <= v27_11_reg_2405_pp0_iter9_reg;
        v27_11_reg_2405_pp0_iter11_reg <= v27_11_reg_2405_pp0_iter10_reg;
        v27_11_reg_2405_pp0_iter12_reg <= v27_11_reg_2405_pp0_iter11_reg;
        v27_11_reg_2405_pp0_iter13_reg <= v27_11_reg_2405_pp0_iter12_reg;
        v27_11_reg_2405_pp0_iter4_reg <= v27_11_reg_2405;
        v27_11_reg_2405_pp0_iter5_reg <= v27_11_reg_2405_pp0_iter4_reg;
        v27_11_reg_2405_pp0_iter6_reg <= v27_11_reg_2405_pp0_iter5_reg;
        v27_11_reg_2405_pp0_iter7_reg <= v27_11_reg_2405_pp0_iter6_reg;
        v27_11_reg_2405_pp0_iter8_reg <= v27_11_reg_2405_pp0_iter7_reg;
        v27_11_reg_2405_pp0_iter9_reg <= v27_11_reg_2405_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln69_1_reg_1889 <= add_ln69_1_fu_765_p2;
        add_ln69_1_reg_1889_pp0_iter1_reg <= add_ln69_1_reg_1889;
        add_ln69_reg_1883 <= add_ln69_fu_753_p2;
        add_ln69_reg_1883_pp0_iter1_reg <= add_ln69_reg_1883;
        icmp_ln66_reg_1855 <= icmp_ln66_fu_726_p2;
        icmp_ln66_reg_1855_pp0_iter10_reg <= icmp_ln66_reg_1855_pp0_iter9_reg;
        icmp_ln66_reg_1855_pp0_iter11_reg <= icmp_ln66_reg_1855_pp0_iter10_reg;
        icmp_ln66_reg_1855_pp0_iter12_reg <= icmp_ln66_reg_1855_pp0_iter11_reg;
        icmp_ln66_reg_1855_pp0_iter13_reg <= icmp_ln66_reg_1855_pp0_iter12_reg;
        icmp_ln66_reg_1855_pp0_iter14_reg <= icmp_ln66_reg_1855_pp0_iter13_reg;
        icmp_ln66_reg_1855_pp0_iter15_reg <= icmp_ln66_reg_1855_pp0_iter14_reg;
        icmp_ln66_reg_1855_pp0_iter1_reg <= icmp_ln66_reg_1855;
        icmp_ln66_reg_1855_pp0_iter2_reg <= icmp_ln66_reg_1855_pp0_iter1_reg;
        icmp_ln66_reg_1855_pp0_iter3_reg <= icmp_ln66_reg_1855_pp0_iter2_reg;
        icmp_ln66_reg_1855_pp0_iter4_reg <= icmp_ln66_reg_1855_pp0_iter3_reg;
        icmp_ln66_reg_1855_pp0_iter5_reg <= icmp_ln66_reg_1855_pp0_iter4_reg;
        icmp_ln66_reg_1855_pp0_iter6_reg <= icmp_ln66_reg_1855_pp0_iter5_reg;
        icmp_ln66_reg_1855_pp0_iter7_reg <= icmp_ln66_reg_1855_pp0_iter6_reg;
        icmp_ln66_reg_1855_pp0_iter8_reg <= icmp_ln66_reg_1855_pp0_iter7_reg;
        icmp_ln66_reg_1855_pp0_iter9_reg <= icmp_ln66_reg_1855_pp0_iter8_reg;
        mul_ln69_reg_1878 <= mul_ln69_fu_747_p2;
        phi_mul_load_reg_1859 <= ap_sig_allocacmp_phi_mul_load;
        trunc_ln66_1_reg_1874 <= trunc_ln66_1_fu_739_p1;
        trunc_ln66_1_reg_1874_pp0_iter10_reg <= trunc_ln66_1_reg_1874_pp0_iter9_reg;
        trunc_ln66_1_reg_1874_pp0_iter11_reg <= trunc_ln66_1_reg_1874_pp0_iter10_reg;
        trunc_ln66_1_reg_1874_pp0_iter12_reg <= trunc_ln66_1_reg_1874_pp0_iter11_reg;
        trunc_ln66_1_reg_1874_pp0_iter13_reg <= trunc_ln66_1_reg_1874_pp0_iter12_reg;
        trunc_ln66_1_reg_1874_pp0_iter14_reg <= trunc_ln66_1_reg_1874_pp0_iter13_reg;
        trunc_ln66_1_reg_1874_pp0_iter15_reg <= trunc_ln66_1_reg_1874_pp0_iter14_reg;
        trunc_ln66_1_reg_1874_pp0_iter16_reg <= trunc_ln66_1_reg_1874_pp0_iter15_reg;
        trunc_ln66_1_reg_1874_pp0_iter1_reg <= trunc_ln66_1_reg_1874;
        trunc_ln66_1_reg_1874_pp0_iter2_reg <= trunc_ln66_1_reg_1874_pp0_iter1_reg;
        trunc_ln66_1_reg_1874_pp0_iter3_reg <= trunc_ln66_1_reg_1874_pp0_iter2_reg;
        trunc_ln66_1_reg_1874_pp0_iter4_reg <= trunc_ln66_1_reg_1874_pp0_iter3_reg;
        trunc_ln66_1_reg_1874_pp0_iter5_reg <= trunc_ln66_1_reg_1874_pp0_iter4_reg;
        trunc_ln66_1_reg_1874_pp0_iter6_reg <= trunc_ln66_1_reg_1874_pp0_iter5_reg;
        trunc_ln66_1_reg_1874_pp0_iter7_reg <= trunc_ln66_1_reg_1874_pp0_iter6_reg;
        trunc_ln66_1_reg_1874_pp0_iter8_reg <= trunc_ln66_1_reg_1874_pp0_iter7_reg;
        trunc_ln66_1_reg_1874_pp0_iter9_reg <= trunc_ln66_1_reg_1874_pp0_iter8_reg;
        v23_1_reg_1848 <= ap_sig_allocacmp_v23_1;
        v25_1_reg_2070 <= v25_1_fu_1156_p11;
        v25_2_reg_2075 <= v25_2_fu_1195_p11;
        v27_2_reg_2360_pp0_iter4_reg <= v27_2_reg_2360;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln69_2_reg_1915 <= add_ln69_2_fu_784_p2;
        add_ln69_2_reg_1915_pp0_iter1_reg <= add_ln69_2_reg_1915;
        add_ln69_3_reg_1921 <= add_ln69_3_fu_795_p2;
        add_ln69_3_reg_1921_pp0_iter1_reg <= add_ln69_3_reg_1921;
        trunc_ln69_1_reg_1985 <= {{mul_ln69_1_fu_975_p2[19:18]}};
        trunc_ln69_2_reg_1990 <= {{mul_ln69_2_fu_994_p2[19:18]}};
        urem_ln69_5_reg_2150 <= grp_fu_871_p2;
        v25_3_reg_2120 <= v25_3_fu_1250_p11;
        v25_4_reg_2125 <= v25_4_fu_1289_p11;
        v27_3_reg_2365_pp0_iter4_reg <= v27_3_reg_2365;
        v27_3_reg_2365_pp0_iter5_reg <= v27_3_reg_2365_pp0_iter4_reg;
        v27_4_reg_2370_pp0_iter4_reg <= v27_4_reg_2370;
        v27_4_reg_2370_pp0_iter5_reg <= v27_4_reg_2370_pp0_iter4_reg;
        v27_4_reg_2370_pp0_iter6_reg <= v27_4_reg_2370_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln69_4_reg_1932 <= add_ln69_4_fu_855_p2;
        add_ln69_4_reg_1932_pp0_iter1_reg <= add_ln69_4_reg_1932;
        add_ln69_5_reg_1938 <= add_ln69_5_fu_866_p2;
        add_ln69_5_reg_1938_pp0_iter1_reg <= add_ln69_5_reg_1938;
        add_ln69_5_reg_1938_pp0_iter2_reg <= add_ln69_5_reg_1938_pp0_iter1_reg;
        trunc_ln69_3_reg_2000 <= {{mul_ln69_3_fu_1013_p2[19:18]}};
        trunc_ln69_4_reg_2005 <= {{mul_ln69_4_fu_1032_p2[19:18]}};
        urem_ln69_7_reg_2200 <= grp_fu_893_p2;
        v25_5_reg_2155 <= v25_5_fu_1336_p11;
        v25_reg_1927 <= v25_fu_831_p11;
        v27_5_reg_2375_pp0_iter4_reg <= v27_5_reg_2375;
        v27_5_reg_2375_pp0_iter5_reg <= v27_5_reg_2375_pp0_iter4_reg;
        v27_5_reg_2375_pp0_iter6_reg <= v27_5_reg_2375_pp0_iter5_reg;
        v27_5_reg_2375_pp0_iter7_reg <= v27_5_reg_2375_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln69_6_reg_1944 <= add_ln69_6_fu_877_p2;
        add_ln69_6_reg_1944_pp0_iter1_reg <= add_ln69_6_reg_1944;
        add_ln69_7_reg_1950 <= add_ln69_7_fu_888_p2;
        add_ln69_7_reg_1950_pp0_iter1_reg <= add_ln69_7_reg_1950;
        add_ln69_7_reg_1950_pp0_iter2_reg <= add_ln69_7_reg_1950_pp0_iter1_reg;
        trunc_ln69_5_reg_2010 <= {{mul_ln69_5_fu_1051_p2[19:18]}};
        urem_ln69_9_reg_2260 <= grp_fu_915_p2;
        v25_6_reg_2210 <= v25_6_fu_1409_p11;
        v25_7_reg_2215 <= v25_7_fu_1449_p11;
        v27_6_reg_2380_pp0_iter4_reg <= v27_6_reg_2380;
        v27_6_reg_2380_pp0_iter5_reg <= v27_6_reg_2380_pp0_iter4_reg;
        v27_6_reg_2380_pp0_iter6_reg <= v27_6_reg_2380_pp0_iter5_reg;
        v27_6_reg_2380_pp0_iter7_reg <= v27_6_reg_2380_pp0_iter6_reg;
        v27_6_reg_2380_pp0_iter8_reg <= v27_6_reg_2380_pp0_iter7_reg;
        v27_7_reg_2385_pp0_iter4_reg <= v27_7_reg_2385;
        v27_7_reg_2385_pp0_iter5_reg <= v27_7_reg_2385_pp0_iter4_reg;
        v27_7_reg_2385_pp0_iter6_reg <= v27_7_reg_2385_pp0_iter5_reg;
        v27_7_reg_2385_pp0_iter7_reg <= v27_7_reg_2385_pp0_iter6_reg;
        v27_7_reg_2385_pp0_iter8_reg <= v27_7_reg_2385_pp0_iter7_reg;
        v27_7_reg_2385_pp0_iter9_reg <= v27_7_reg_2385_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln69_8_reg_1956 <= add_ln69_8_fu_899_p2;
        add_ln69_8_reg_1956_pp0_iter1_reg <= add_ln69_8_reg_1956;
        add_ln69_9_reg_1962 <= add_ln69_9_fu_910_p2;
        add_ln69_9_reg_1962_pp0_iter1_reg <= add_ln69_9_reg_1962;
        add_ln69_9_reg_1962_pp0_iter2_reg <= add_ln69_9_reg_1962_pp0_iter1_reg;
        trunc_ln69_7_reg_2015 <= {{mul_ln69_7_fu_1070_p2[19:18]}};
        urem_ln69_11_reg_2315 <= grp_fu_937_p2;
        v25_8_reg_2265 <= v25_8_fu_1522_p11;
        v25_9_reg_2270 <= v25_9_fu_1562_p11;
        v27_8_reg_2390_pp0_iter10_reg <= v27_8_reg_2390_pp0_iter9_reg;
        v27_8_reg_2390_pp0_iter4_reg <= v27_8_reg_2390;
        v27_8_reg_2390_pp0_iter5_reg <= v27_8_reg_2390_pp0_iter4_reg;
        v27_8_reg_2390_pp0_iter6_reg <= v27_8_reg_2390_pp0_iter5_reg;
        v27_8_reg_2390_pp0_iter7_reg <= v27_8_reg_2390_pp0_iter6_reg;
        v27_8_reg_2390_pp0_iter8_reg <= v27_8_reg_2390_pp0_iter7_reg;
        v27_8_reg_2390_pp0_iter9_reg <= v27_8_reg_2390_pp0_iter8_reg;
        v27_9_reg_2395_pp0_iter10_reg <= v27_9_reg_2395_pp0_iter9_reg;
        v27_9_reg_2395_pp0_iter11_reg <= v27_9_reg_2395_pp0_iter10_reg;
        v27_9_reg_2395_pp0_iter4_reg <= v27_9_reg_2395;
        v27_9_reg_2395_pp0_iter5_reg <= v27_9_reg_2395_pp0_iter4_reg;
        v27_9_reg_2395_pp0_iter6_reg <= v27_9_reg_2395_pp0_iter5_reg;
        v27_9_reg_2395_pp0_iter7_reg <= v27_9_reg_2395_pp0_iter6_reg;
        v27_9_reg_2395_pp0_iter8_reg <= v27_9_reg_2395_pp0_iter7_reg;
        v27_9_reg_2395_pp0_iter9_reg <= v27_9_reg_2395_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        lshr_ln1_reg_1980 <= {{v23_1_reg_1848[5:1]}};
        lshr_ln1_reg_1980_pp0_iter10_reg <= lshr_ln1_reg_1980_pp0_iter9_reg;
        lshr_ln1_reg_1980_pp0_iter11_reg <= lshr_ln1_reg_1980_pp0_iter10_reg;
        lshr_ln1_reg_1980_pp0_iter12_reg <= lshr_ln1_reg_1980_pp0_iter11_reg;
        lshr_ln1_reg_1980_pp0_iter13_reg <= lshr_ln1_reg_1980_pp0_iter12_reg;
        lshr_ln1_reg_1980_pp0_iter14_reg <= lshr_ln1_reg_1980_pp0_iter13_reg;
        lshr_ln1_reg_1980_pp0_iter15_reg <= lshr_ln1_reg_1980_pp0_iter14_reg;
        lshr_ln1_reg_1980_pp0_iter16_reg <= lshr_ln1_reg_1980_pp0_iter15_reg;
        lshr_ln1_reg_1980_pp0_iter1_reg <= lshr_ln1_reg_1980;
        lshr_ln1_reg_1980_pp0_iter2_reg <= lshr_ln1_reg_1980_pp0_iter1_reg;
        lshr_ln1_reg_1980_pp0_iter3_reg <= lshr_ln1_reg_1980_pp0_iter2_reg;
        lshr_ln1_reg_1980_pp0_iter4_reg <= lshr_ln1_reg_1980_pp0_iter3_reg;
        lshr_ln1_reg_1980_pp0_iter5_reg <= lshr_ln1_reg_1980_pp0_iter4_reg;
        lshr_ln1_reg_1980_pp0_iter6_reg <= lshr_ln1_reg_1980_pp0_iter5_reg;
        lshr_ln1_reg_1980_pp0_iter7_reg <= lshr_ln1_reg_1980_pp0_iter6_reg;
        lshr_ln1_reg_1980_pp0_iter8_reg <= lshr_ln1_reg_1980_pp0_iter7_reg;
        lshr_ln1_reg_1980_pp0_iter9_reg <= lshr_ln1_reg_1980_pp0_iter8_reg;
        trunc_ln69_10_reg_2065 <= {{mul_ln69_11_fu_1124_p2[19:18]}};
        v25_12_reg_2350 <= v25_12_fu_1740_p11;
        v27_12_reg_2410_pp0_iter10_reg <= v27_12_reg_2410_pp0_iter9_reg;
        v27_12_reg_2410_pp0_iter11_reg <= v27_12_reg_2410_pp0_iter10_reg;
        v27_12_reg_2410_pp0_iter12_reg <= v27_12_reg_2410_pp0_iter11_reg;
        v27_12_reg_2410_pp0_iter13_reg <= v27_12_reg_2410_pp0_iter12_reg;
        v27_12_reg_2410_pp0_iter14_reg <= v27_12_reg_2410_pp0_iter13_reg;
        v27_12_reg_2410_pp0_iter4_reg <= v27_12_reg_2410;
        v27_12_reg_2410_pp0_iter5_reg <= v27_12_reg_2410_pp0_iter4_reg;
        v27_12_reg_2410_pp0_iter6_reg <= v27_12_reg_2410_pp0_iter5_reg;
        v27_12_reg_2410_pp0_iter7_reg <= v27_12_reg_2410_pp0_iter6_reg;
        v27_12_reg_2410_pp0_iter8_reg <= v27_12_reg_2410_pp0_iter7_reg;
        v27_12_reg_2410_pp0_iter9_reg <= v27_12_reg_2410_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v27_10_reg_2400 <= grp_fu_21179_p_dout0;
        v27_11_reg_2405 <= grp_fu_50493_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v27_12_reg_2410 <= grp_fu_21179_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v27_1_reg_2355 <= grp_fu_21179_p_dout0;
        v27_2_reg_2360 <= grp_fu_50493_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v27_3_reg_2365 <= grp_fu_21179_p_dout0;
        v27_4_reg_2370 <= grp_fu_50493_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v27_5_reg_2375 <= grp_fu_50493_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v27_6_reg_2380 <= grp_fu_21179_p_dout0;
        v27_7_reg_2385 <= grp_fu_50493_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v27_8_reg_2390 <= grp_fu_21179_p_dout0;
        v27_9_reg_2395 <= grp_fu_50493_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v27_reg_1995 <= grp_fu_21179_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v29_13_reg_2205 <= grp_fu_50485_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v29_14_reg_2415 <= grp_fu_50485_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v29_15_reg_2420 <= grp_fu_50485_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v29_16_reg_2425 <= grp_fu_50489_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v29_17_reg_2430 <= grp_fu_50485_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v29_18_reg_2435 <= grp_fu_50485_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v29_19_reg_2440 <= grp_fu_50485_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v29_20_reg_2445 <= grp_fu_50485_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v29_21_reg_2450 <= grp_fu_50489_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v29_22_reg_2455 <= grp_fu_50489_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v29_23_reg_2460 <= grp_fu_50489_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v29_24_reg_2465 <= grp_fu_50489_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v29_reg_2470 <= grp_fu_50489_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln66_reg_1855 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter16 == 1'b1) & (icmp_ln66_reg_1855_pp0_iter15_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_phi_mul_load = phi_mul_fu_132;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v23_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_v23_1 = v23_fu_136;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_696_p0 = v29_19_reg_2440;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_696_p0 = v29_18_reg_2435;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_696_p0 = v29_17_reg_2430;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_696_p0 = v29_16_reg_2425;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_696_p0 = v29_14_reg_2415;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_696_p0 = v29_13_reg_2205;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_696_p0 = v27_reg_1995;
    end else begin
        grp_fu_696_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_696_p1 = v27_7_reg_2385_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_696_p1 = v27_6_reg_2380_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_696_p1 = v27_5_reg_2375_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_696_p1 = v27_4_reg_2370_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_696_p1 = v27_2_reg_2360_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_696_p1 = v27_1_reg_2355;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_696_p1 = 64'd0;
    end else begin
        grp_fu_696_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_701_p0 = v29_24_reg_2465;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_701_p0 = v29_23_reg_2460;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_701_p0 = v29_22_reg_2455;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_701_p0 = v29_21_reg_2450;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_701_p0 = v29_20_reg_2445;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_701_p0 = v29_15_reg_2420;
    end else begin
        grp_fu_701_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_701_p1 = v27_12_reg_2410_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_701_p1 = v27_11_reg_2405_pp0_iter13_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_701_p1 = v27_10_reg_2400_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_701_p1 = v27_9_reg_2395_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_701_p1 = v27_8_reg_2390_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_701_p1 = v27_3_reg_2365_pp0_iter5_reg;
    end else begin
        grp_fu_701_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_705_p0 = v25_12_reg_2350;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_705_p0 = v25_10_reg_2320;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_705_p0 = v25_8_reg_2265;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_705_p0 = v25_6_reg_2210;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_705_p0 = v25_3_reg_2120;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_705_p0 = v25_1_reg_2070;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_705_p0 = v25_reg_1927;
    end else begin
        grp_fu_705_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_705_p1 = v26_11;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_705_p1 = v26_12;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_705_p1 = v26_8;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_705_p1 = v26_6;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_705_p1 = v26_3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_705_p1 = v26_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_705_p1 = v26;
    end else begin
        grp_fu_705_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_709_p0 = v25_11_reg_2325;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_709_p0 = v25_9_reg_2270;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_709_p0 = v25_7_reg_2215;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_709_p0 = v25_5_reg_2155;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_709_p0 = v25_4_reg_2125;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_709_p0 = v25_2_reg_2075;
        end else begin
            grp_fu_709_p0 = 'bx;
        end
    end else begin
        grp_fu_709_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_709_p1 = v26_10;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_709_p1 = v26_9;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_709_p1 = v26_7;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_709_p1 = v26_5;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_709_p1 = v26_4;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_709_p1 = v26_2;
        end else begin
            grp_fu_709_p1 = 'bx;
        end
    end else begin
        grp_fu_709_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v0_0_address0_local = zext_ln69_14_fu_1698_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_0_address0_local = zext_ln69_13_fu_1592_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_0_address0_local = zext_ln69_11_fu_1479_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_0_address0_local = zext_ln69_9_fu_1366_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_0_address0_local = zext_ln69_7_fu_1312_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_0_address0_local = zext_ln69_6_fu_1226_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_0_address0_local = zext_ln69_2_fu_1105_p1;
    end else begin
        v0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_0_address1_local = zext_ln69_12_fu_1585_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_0_address1_local = zext_ln69_10_fu_1472_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_0_address1_local = zext_ln69_8_fu_1359_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_0_address1_local = zext_ln69_5_fu_1218_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_0_address1_local = zext_ln69_4_fu_1113_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_0_address1_local = zext_ln69_1_fu_777_p1;
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
        v0_1_address0_local = zext_ln69_14_fu_1698_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_1_address0_local = zext_ln69_13_fu_1592_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_1_address0_local = zext_ln69_11_fu_1479_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_1_address0_local = zext_ln69_9_fu_1366_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_1_address0_local = zext_ln69_7_fu_1312_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_1_address0_local = zext_ln69_6_fu_1226_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_1_address0_local = zext_ln69_2_fu_1105_p1;
    end else begin
        v0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_1_address1_local = zext_ln69_12_fu_1585_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_1_address1_local = zext_ln69_10_fu_1472_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_1_address1_local = zext_ln69_8_fu_1359_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_1_address1_local = zext_ln69_5_fu_1218_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_1_address1_local = zext_ln69_4_fu_1113_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_1_address1_local = zext_ln69_1_fu_777_p1;
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
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v0_2_address0_local = zext_ln69_14_fu_1698_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_2_address0_local = zext_ln69_13_fu_1592_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_2_address0_local = zext_ln69_11_fu_1479_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_2_address0_local = zext_ln69_9_fu_1366_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_2_address0_local = zext_ln69_7_fu_1312_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_2_address0_local = zext_ln69_6_fu_1226_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_2_address0_local = zext_ln69_2_fu_1105_p1;
    end else begin
        v0_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_2_address1_local = zext_ln69_12_fu_1585_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_2_address1_local = zext_ln69_10_fu_1472_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_2_address1_local = zext_ln69_8_fu_1359_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_2_address1_local = zext_ln69_5_fu_1218_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_2_address1_local = zext_ln69_4_fu_1113_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_2_address1_local = zext_ln69_1_fu_777_p1;
    end else begin
        v0_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_2_ce0_local = 1'b1;
    end else begin
        v0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_2_ce1_local = 1'b1;
    end else begin
        v0_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v0_3_address0_local = zext_ln69_14_fu_1698_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_3_address0_local = zext_ln69_13_fu_1592_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_3_address0_local = zext_ln69_11_fu_1479_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_3_address0_local = zext_ln69_9_fu_1366_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_3_address0_local = zext_ln69_7_fu_1312_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_3_address0_local = zext_ln69_6_fu_1226_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_3_address0_local = zext_ln69_2_fu_1105_p1;
    end else begin
        v0_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_3_address1_local = zext_ln69_12_fu_1585_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_3_address1_local = zext_ln69_10_fu_1472_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_3_address1_local = zext_ln69_8_fu_1359_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_3_address1_local = zext_ln69_5_fu_1218_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_3_address1_local = zext_ln69_4_fu_1113_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_3_address1_local = zext_ln69_1_fu_777_p1;
    end else begin
        v0_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_3_ce0_local = 1'b1;
    end else begin
        v0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_3_ce1_local = 1'b1;
    end else begin
        v0_3_ce1_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (trunc_ln66_1_reg_1874_pp0_iter16_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (trunc_ln66_1_reg_1874_pp0_iter16_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
assign add_ln66_fu_943_p2 = (v23_1_reg_1848 + 7'd1);
assign add_ln69_10_fu_921_p2 = (phi_mul_load_reg_1859 + 10'd11);
assign add_ln69_11_fu_932_p2 = (phi_mul_load_reg_1859 + 10'd12);
assign add_ln69_12_fu_957_p2 = (phi_mul_load_reg_1859 + 10'd13);
assign add_ln69_1_fu_765_p2 = (ap_sig_allocacmp_phi_mul_load + 10'd2);
assign add_ln69_2_fu_784_p2 = (phi_mul_load_reg_1859 + 10'd3);
assign add_ln69_3_fu_795_p2 = (phi_mul_load_reg_1859 + 10'd4);
assign add_ln69_4_fu_855_p2 = (phi_mul_load_reg_1859 + 10'd5);
assign add_ln69_5_fu_866_p2 = (phi_mul_load_reg_1859 + 10'd6);
assign add_ln69_6_fu_877_p2 = (phi_mul_load_reg_1859 + 10'd7);
assign add_ln69_7_fu_888_p2 = (phi_mul_load_reg_1859 + 10'd8);
assign add_ln69_8_fu_899_p2 = (phi_mul_load_reg_1859 + 10'd9);
assign add_ln69_9_fu_910_p2 = (phi_mul_load_reg_1859 + 10'd10);
assign add_ln69_fu_753_p2 = (ap_sig_allocacmp_phi_mul_load + 10'd1);
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
assign grp_fu_21179_p_ce = 1'b1;
assign grp_fu_21179_p_din0 = grp_fu_705_p0;
assign grp_fu_21179_p_din1 = grp_fu_705_p1;
assign grp_fu_50485_p_ce = 1'b1;
assign grp_fu_50485_p_din0 = grp_fu_696_p0;
assign grp_fu_50485_p_din1 = grp_fu_696_p1;
assign grp_fu_50485_p_opcode = 2'd0;
assign grp_fu_50489_p_ce = 1'b1;
assign grp_fu_50489_p_din0 = grp_fu_701_p0;
assign grp_fu_50489_p_din1 = grp_fu_701_p1;
assign grp_fu_50489_p_opcode = 2'd0;
assign grp_fu_50493_p_ce = 1'b1;
assign grp_fu_50493_p_din0 = grp_fu_709_p0;
assign grp_fu_50493_p_din1 = grp_fu_709_p1;
assign grp_fu_759_p0 = (ap_sig_allocacmp_phi_mul_load + 10'd1);
assign grp_fu_759_p1 = 10'd208;
assign grp_fu_771_p0 = (ap_sig_allocacmp_phi_mul_load + 10'd2);
assign grp_fu_771_p1 = 10'd208;
assign grp_fu_789_p0 = (phi_mul_load_reg_1859 + 10'd3);
assign grp_fu_789_p1 = 10'd208;
assign grp_fu_800_p0 = (phi_mul_load_reg_1859 + 10'd4);
assign grp_fu_800_p1 = 10'd208;
assign grp_fu_860_p0 = (phi_mul_load_reg_1859 + 10'd5);
assign grp_fu_860_p1 = 10'd208;
assign grp_fu_871_p0 = (phi_mul_load_reg_1859 + 10'd6);
assign grp_fu_871_p1 = 10'd208;
assign grp_fu_882_p0 = (phi_mul_load_reg_1859 + 10'd7);
assign grp_fu_882_p1 = 10'd208;
assign grp_fu_893_p0 = (phi_mul_load_reg_1859 + 10'd8);
assign grp_fu_893_p1 = 10'd208;
assign grp_fu_904_p0 = (phi_mul_load_reg_1859 + 10'd9);
assign grp_fu_904_p1 = 10'd208;
assign grp_fu_915_p0 = (phi_mul_load_reg_1859 + 10'd10);
assign grp_fu_915_p1 = 10'd208;
assign grp_fu_926_p0 = (phi_mul_load_reg_1859 + 10'd11);
assign grp_fu_926_p1 = 10'd208;
assign grp_fu_937_p0 = (phi_mul_load_reg_1859 + 10'd12);
assign grp_fu_937_p1 = 10'd208;
assign icmp_ln66_fu_726_p2 = ((ap_sig_allocacmp_v23_1 == 7'd64) ? 1'b1 : 1'b0);
assign mul_ln69_10_fu_1603_p0 = mul_ln69_10_fu_1603_p00;
assign mul_ln69_10_fu_1603_p00 = add_ln69_9_reg_1962_pp0_iter2_reg;
assign mul_ln69_10_fu_1603_p1 = 21'd1261;
assign mul_ln69_11_fu_1124_p0 = mul_ln69_11_fu_1124_p00;
assign mul_ln69_11_fu_1124_p00 = add_ln69_10_reg_1968_pp0_iter1_reg;
assign mul_ln69_11_fu_1124_p1 = 21'd1261;
assign mul_ln69_12_fu_1708_p0 = mul_ln69_12_fu_1708_p00;
assign mul_ln69_12_fu_1708_p00 = add_ln69_11_reg_1974_pp0_iter2_reg;
assign mul_ln69_12_fu_1708_p1 = 21'd1261;
assign mul_ln69_1_fu_975_p0 = mul_ln69_1_fu_975_p00;
assign mul_ln69_1_fu_975_p00 = add_ln69_reg_1883_pp0_iter1_reg;
assign mul_ln69_1_fu_975_p1 = 21'd1261;
assign mul_ln69_2_fu_994_p0 = mul_ln69_2_fu_994_p00;
assign mul_ln69_2_fu_994_p00 = add_ln69_1_reg_1889_pp0_iter1_reg;
assign mul_ln69_2_fu_994_p1 = 21'd1261;
assign mul_ln69_3_fu_1013_p0 = mul_ln69_3_fu_1013_p00;
assign mul_ln69_3_fu_1013_p00 = add_ln69_2_reg_1915_pp0_iter1_reg;
assign mul_ln69_3_fu_1013_p1 = 21'd1261;
assign mul_ln69_4_fu_1032_p0 = mul_ln69_4_fu_1032_p00;
assign mul_ln69_4_fu_1032_p00 = add_ln69_3_reg_1921_pp0_iter1_reg;
assign mul_ln69_4_fu_1032_p1 = 21'd1261;
assign mul_ln69_5_fu_1051_p0 = mul_ln69_5_fu_1051_p00;
assign mul_ln69_5_fu_1051_p00 = add_ln69_4_reg_1932_pp0_iter1_reg;
assign mul_ln69_5_fu_1051_p1 = 21'd1261;
assign mul_ln69_6_fu_1377_p0 = mul_ln69_6_fu_1377_p00;
assign mul_ln69_6_fu_1377_p00 = add_ln69_5_reg_1938_pp0_iter2_reg;
assign mul_ln69_6_fu_1377_p1 = 21'd1261;
assign mul_ln69_7_fu_1070_p0 = mul_ln69_7_fu_1070_p00;
assign mul_ln69_7_fu_1070_p00 = add_ln69_6_reg_1944_pp0_iter1_reg;
assign mul_ln69_7_fu_1070_p1 = 21'd1261;
assign mul_ln69_8_fu_1490_p0 = mul_ln69_8_fu_1490_p00;
assign mul_ln69_8_fu_1490_p00 = add_ln69_7_reg_1950_pp0_iter2_reg;
assign mul_ln69_8_fu_1490_p1 = 21'd1261;
assign mul_ln69_9_fu_1089_p0 = mul_ln69_9_fu_1089_p00;
assign mul_ln69_9_fu_1089_p00 = add_ln69_8_reg_1956_pp0_iter1_reg;
assign mul_ln69_9_fu_1089_p1 = 21'd1261;
assign mul_ln69_fu_747_p0 = mul_ln69_fu_747_p00;
assign mul_ln69_fu_747_p00 = trunc_ln66_fu_735_p1;
assign mul_ln69_fu_747_p1 = 8'd13;
assign trunc_ln66_1_fu_739_p1 = ap_sig_allocacmp_v23_1[0:0];
assign trunc_ln66_fu_735_p1 = ap_sig_allocacmp_v23_1[3:0];
assign v0_0_address0 = v0_0_address0_local;
assign v0_0_address1 = v0_0_address1_local;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_0_ce1 = v0_0_ce1_local;
assign v0_1_address0 = v0_1_address0_local;
assign v0_1_address1 = v0_1_address1_local;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_1_ce1 = v0_1_ce1_local;
assign v0_2_address0 = v0_2_address0_local;
assign v0_2_address1 = v0_2_address1_local;
assign v0_2_ce0 = v0_2_ce0_local;
assign v0_2_ce1 = v0_2_ce1_local;
assign v0_3_address0 = v0_3_address0_local;
assign v0_3_address1 = v0_3_address1_local;
assign v0_3_ce0 = v0_3_ce0_local;
assign v0_3_ce1 = v0_3_ce1_local;
assign v20_1_address0 = zext_ln66_fu_1764_p1;
assign v20_1_ce0 = v20_1_ce0_local;
assign v20_1_d0 = v29_reg_2470;
assign v20_1_we0 = v20_1_we0_local;
assign v20_address0 = zext_ln66_fu_1764_p1;
assign v20_ce0 = v20_ce0_local;
assign v20_d0 = v29_reg_2470;
assign v20_we0 = v20_we0_local;
assign v25_10_fu_1635_p10 = {{mul_ln69_10_fu_1603_p2[19:18]}};
assign v25_10_fu_1635_p2 = v0_0_q1;
assign v25_10_fu_1635_p4 = v0_1_q1;
assign v25_10_fu_1635_p6 = v0_2_q1;
assign v25_10_fu_1635_p8 = v0_3_q1;
assign v25_10_fu_1635_p9 = 'bx;
assign v25_11_fu_1675_p2 = v0_0_q0;
assign v25_11_fu_1675_p4 = v0_1_q0;
assign v25_11_fu_1675_p6 = v0_2_q0;
assign v25_11_fu_1675_p8 = v0_3_q0;
assign v25_11_fu_1675_p9 = 'bx;
assign v25_12_fu_1740_p10 = {{mul_ln69_12_fu_1708_p2[19:18]}};
assign v25_12_fu_1740_p2 = v0_0_q0;
assign v25_12_fu_1740_p4 = v0_1_q0;
assign v25_12_fu_1740_p6 = v0_2_q0;
assign v25_12_fu_1740_p8 = v0_3_q0;
assign v25_12_fu_1740_p9 = 'bx;
assign v25_1_fu_1156_p2 = v0_0_q0;
assign v25_1_fu_1156_p4 = v0_1_q0;
assign v25_1_fu_1156_p6 = v0_2_q0;
assign v25_1_fu_1156_p8 = v0_3_q0;
assign v25_1_fu_1156_p9 = 'bx;
assign v25_2_fu_1195_p2 = v0_0_q1;
assign v25_2_fu_1195_p4 = v0_1_q1;
assign v25_2_fu_1195_p6 = v0_2_q1;
assign v25_2_fu_1195_p8 = v0_3_q1;
assign v25_2_fu_1195_p9 = 'bx;
assign v25_3_fu_1250_p2 = v0_0_q1;
assign v25_3_fu_1250_p4 = v0_1_q1;
assign v25_3_fu_1250_p6 = v0_2_q1;
assign v25_3_fu_1250_p8 = v0_3_q1;
assign v25_3_fu_1250_p9 = 'bx;
assign v25_4_fu_1289_p2 = v0_0_q0;
assign v25_4_fu_1289_p4 = v0_1_q0;
assign v25_4_fu_1289_p6 = v0_2_q0;
assign v25_4_fu_1289_p8 = v0_3_q0;
assign v25_4_fu_1289_p9 = 'bx;
assign v25_5_fu_1336_p2 = v0_0_q0;
assign v25_5_fu_1336_p4 = v0_1_q0;
assign v25_5_fu_1336_p6 = v0_2_q0;
assign v25_5_fu_1336_p8 = v0_3_q0;
assign v25_5_fu_1336_p9 = 'bx;
assign v25_6_fu_1409_p10 = {{mul_ln69_6_fu_1377_p2[19:18]}};
assign v25_6_fu_1409_p2 = v0_0_q1;
assign v25_6_fu_1409_p4 = v0_1_q1;
assign v25_6_fu_1409_p6 = v0_2_q1;
assign v25_6_fu_1409_p8 = v0_3_q1;
assign v25_6_fu_1409_p9 = 'bx;
assign v25_7_fu_1449_p2 = v0_0_q0;
assign v25_7_fu_1449_p4 = v0_1_q0;
assign v25_7_fu_1449_p6 = v0_2_q0;
assign v25_7_fu_1449_p8 = v0_3_q0;
assign v25_7_fu_1449_p9 = 'bx;
assign v25_8_fu_1522_p10 = {{mul_ln69_8_fu_1490_p2[19:18]}};
assign v25_8_fu_1522_p2 = v0_0_q1;
assign v25_8_fu_1522_p4 = v0_1_q1;
assign v25_8_fu_1522_p6 = v0_2_q1;
assign v25_8_fu_1522_p8 = v0_3_q1;
assign v25_8_fu_1522_p9 = 'bx;
assign v25_9_fu_1562_p2 = v0_0_q0;
assign v25_9_fu_1562_p4 = v0_1_q0;
assign v25_9_fu_1562_p6 = v0_2_q0;
assign v25_9_fu_1562_p8 = v0_3_q0;
assign v25_9_fu_1562_p9 = 'bx;
assign v25_fu_831_p10 = {{v23_1_reg_1848[5:4]}};
assign v25_fu_831_p2 = v0_0_q1;
assign v25_fu_831_p4 = v0_1_q1;
assign v25_fu_831_p6 = v0_2_q1;
assign v25_fu_831_p8 = v0_3_q1;
assign v25_fu_831_p9 = 'bx;
assign zext_ln66_fu_1764_p1 = lshr_ln1_reg_1980_pp0_iter16_reg;
assign zext_ln69_10_fu_1472_p1 = urem_ln69_7_reg_2200;
assign zext_ln69_11_fu_1479_p1 = grp_fu_904_p2;
assign zext_ln69_12_fu_1585_p1 = urem_ln69_9_reg_2260;
assign zext_ln69_13_fu_1592_p1 = grp_fu_926_p2;
assign zext_ln69_14_fu_1698_p1 = urem_ln69_11_reg_2315;
assign zext_ln69_1_fu_777_p1 = mul_ln69_reg_1878;
assign zext_ln69_2_fu_1105_p1 = grp_fu_759_p2;
assign zext_ln69_4_fu_1113_p1 = grp_fu_771_p2;
assign zext_ln69_5_fu_1218_p1 = grp_fu_789_p2;
assign zext_ln69_6_fu_1226_p1 = grp_fu_800_p2;
assign zext_ln69_7_fu_1312_p1 = grp_fu_860_p2;
assign zext_ln69_8_fu_1359_p1 = urem_ln69_5_reg_2150;
assign zext_ln69_9_fu_1366_p1 = grp_fu_882_p2;
endmodule 