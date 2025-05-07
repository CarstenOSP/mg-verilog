module backprop_backprop_Pipeline_label_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v0_0_address0,v0_0_ce0,v0_0_q0,v0_0_address1,v0_0_ce1,v0_0_q1,v0_1_address0,v0_1_ce0,v0_1_q0,v0_1_address1,v0_1_ce1,v0_1_q1,v0_2_address0,v0_2_ce0,v0_2_q0,v0_2_address1,v0_2_ce1,v0_2_q1,v0_3_address0,v0_3_ce0,v0_3_q0,v0_3_address1,v0_3_ce1,v0_3_q1,v26,v26_1,v26_2,v26_3,v26_4,v26_5,v26_6,v26_7,v26_8,v26_9,v26_12,v26_10,v26_11,v20_address0,v20_ce0,v20_we0,v20_d0,grp_fu_5231_p_din0,grp_fu_5231_p_din1,grp_fu_5231_p_opcode,grp_fu_5231_p_dout0,grp_fu_5231_p_ce,grp_fu_5235_p_din0,grp_fu_5235_p_din1,grp_fu_5235_p_opcode,grp_fu_5235_p_dout0,grp_fu_5235_p_ce,grp_fu_5243_p_din0,grp_fu_5243_p_din1,grp_fu_5243_p_dout0,grp_fu_5243_p_ce,grp_fu_5247_p_din0,grp_fu_5247_p_din1,grp_fu_5247_p_dout0,grp_fu_5247_p_ce); 
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
output  [5:0] v20_address0;
output   v20_ce0;
output   v20_we0;
output  [63:0] v20_d0;
output  [63:0] grp_fu_5231_p_din0;
output  [63:0] grp_fu_5231_p_din1;
output  [0:0] grp_fu_5231_p_opcode;
input  [63:0] grp_fu_5231_p_dout0;
output   grp_fu_5231_p_ce;
output  [63:0] grp_fu_5235_p_din0;
output  [63:0] grp_fu_5235_p_din1;
output  [0:0] grp_fu_5235_p_opcode;
input  [63:0] grp_fu_5235_p_dout0;
output   grp_fu_5235_p_ce;
output  [63:0] grp_fu_5243_p_din0;
output  [63:0] grp_fu_5243_p_din1;
input  [63:0] grp_fu_5243_p_dout0;
output   grp_fu_5243_p_ce;
output  [63:0] grp_fu_5247_p_din0;
output  [63:0] grp_fu_5247_p_din1;
input  [63:0] grp_fu_5247_p_dout0;
output   grp_fu_5247_p_ce;
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
reg   [0:0] icmp_ln66_reg_1824;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] v23_1_reg_1817;
reg   [6:0] v23_1_reg_1817_pp0_iter1_reg;
reg   [6:0] v23_1_reg_1817_pp0_iter2_reg;
reg   [6:0] v23_1_reg_1817_pp0_iter3_reg;
reg   [6:0] v23_1_reg_1817_pp0_iter4_reg;
reg   [6:0] v23_1_reg_1817_pp0_iter5_reg;
reg   [6:0] v23_1_reg_1817_pp0_iter6_reg;
reg   [6:0] v23_1_reg_1817_pp0_iter7_reg;
reg   [6:0] v23_1_reg_1817_pp0_iter8_reg;
reg   [6:0] v23_1_reg_1817_pp0_iter9_reg;
reg   [6:0] v23_1_reg_1817_pp0_iter10_reg;
reg   [6:0] v23_1_reg_1817_pp0_iter11_reg;
reg   [6:0] v23_1_reg_1817_pp0_iter12_reg;
reg   [6:0] v23_1_reg_1817_pp0_iter13_reg;
reg   [6:0] v23_1_reg_1817_pp0_iter14_reg;
reg   [6:0] v23_1_reg_1817_pp0_iter15_reg;
reg   [6:0] v23_1_reg_1817_pp0_iter16_reg;
wire   [0:0] icmp_ln66_fu_709_p2;
reg   [0:0] icmp_ln66_reg_1824_pp0_iter1_reg;
reg   [0:0] icmp_ln66_reg_1824_pp0_iter2_reg;
reg   [0:0] icmp_ln66_reg_1824_pp0_iter3_reg;
reg   [0:0] icmp_ln66_reg_1824_pp0_iter4_reg;
reg   [0:0] icmp_ln66_reg_1824_pp0_iter5_reg;
reg   [0:0] icmp_ln66_reg_1824_pp0_iter6_reg;
reg   [0:0] icmp_ln66_reg_1824_pp0_iter7_reg;
reg   [0:0] icmp_ln66_reg_1824_pp0_iter8_reg;
reg   [0:0] icmp_ln66_reg_1824_pp0_iter9_reg;
reg   [0:0] icmp_ln66_reg_1824_pp0_iter10_reg;
reg   [0:0] icmp_ln66_reg_1824_pp0_iter11_reg;
reg   [0:0] icmp_ln66_reg_1824_pp0_iter12_reg;
reg   [0:0] icmp_ln66_reg_1824_pp0_iter13_reg;
reg   [0:0] icmp_ln66_reg_1824_pp0_iter14_reg;
reg   [0:0] icmp_ln66_reg_1824_pp0_iter15_reg;
reg   [9:0] phi_mul_load_reg_1828;
wire   [7:0] mul_ln69_fu_726_p2;
reg   [7:0] mul_ln69_reg_1843;
wire   [9:0] add_ln69_fu_732_p2;
reg   [9:0] add_ln69_reg_1848;
reg   [9:0] add_ln69_reg_1848_pp0_iter1_reg;
wire   [9:0] add_ln69_1_fu_744_p2;
reg   [9:0] add_ln69_1_reg_1854;
reg   [9:0] add_ln69_1_reg_1854_pp0_iter1_reg;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [9:0] add_ln69_2_fu_763_p2;
reg   [9:0] add_ln69_2_reg_1880;
reg   [9:0] add_ln69_2_reg_1880_pp0_iter1_reg;
wire   [9:0] add_ln69_3_fu_774_p2;
reg   [9:0] add_ln69_3_reg_1886;
reg   [9:0] add_ln69_3_reg_1886_pp0_iter1_reg;
wire   [63:0] v25_fu_810_p11;
reg   [63:0] v25_reg_1892;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [9:0] add_ln69_4_fu_834_p2;
reg   [9:0] add_ln69_4_reg_1897;
reg   [9:0] add_ln69_4_reg_1897_pp0_iter1_reg;
wire   [9:0] add_ln69_5_fu_845_p2;
reg   [9:0] add_ln69_5_reg_1903;
reg   [9:0] add_ln69_5_reg_1903_pp0_iter1_reg;
reg   [9:0] add_ln69_5_reg_1903_pp0_iter2_reg;
wire   [9:0] add_ln69_6_fu_856_p2;
reg   [9:0] add_ln69_6_reg_1909;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [9:0] add_ln69_6_reg_1909_pp0_iter1_reg;
wire   [9:0] add_ln69_7_fu_867_p2;
reg   [9:0] add_ln69_7_reg_1915;
reg   [9:0] add_ln69_7_reg_1915_pp0_iter1_reg;
reg   [9:0] add_ln69_7_reg_1915_pp0_iter2_reg;
wire   [9:0] add_ln69_8_fu_878_p2;
reg   [9:0] add_ln69_8_reg_1921;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [9:0] add_ln69_8_reg_1921_pp0_iter1_reg;
wire   [9:0] add_ln69_9_fu_889_p2;
reg   [9:0] add_ln69_9_reg_1927;
reg   [9:0] add_ln69_9_reg_1927_pp0_iter1_reg;
reg   [9:0] add_ln69_9_reg_1927_pp0_iter2_reg;
wire   [9:0] add_ln69_10_fu_900_p2;
reg   [9:0] add_ln69_10_reg_1933;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [9:0] add_ln69_10_reg_1933_pp0_iter1_reg;
wire   [9:0] add_ln69_11_fu_911_p2;
reg   [9:0] add_ln69_11_reg_1939;
reg   [9:0] add_ln69_11_reg_1939_pp0_iter1_reg;
reg   [9:0] add_ln69_11_reg_1939_pp0_iter2_reg;
reg   [1:0] trunc_ln69_1_reg_1945;
reg   [1:0] trunc_ln69_2_reg_1950;
reg   [63:0] v27_reg_1955;
reg   [1:0] trunc_ln69_3_reg_1960;
reg   [1:0] trunc_ln69_4_reg_1965;
reg   [1:0] trunc_ln69_5_reg_1970;
reg   [1:0] trunc_ln69_7_reg_1975;
reg   [1:0] trunc_ln69_9_reg_1980;
wire    ap_block_pp0_stage6_11001;
reg   [1:0] trunc_ln69_10_reg_2025;
wire   [63:0] v25_1_fu_1126_p11;
reg   [63:0] v25_1_reg_2030;
wire   [63:0] v25_2_fu_1165_p11;
reg   [63:0] v25_2_reg_2035;
wire   [63:0] v25_3_fu_1220_p11;
reg   [63:0] v25_3_reg_2080;
wire   [63:0] v25_4_fu_1259_p11;
reg   [63:0] v25_4_reg_2085;
wire   [9:0] grp_fu_850_p2;
reg   [9:0] urem_ln69_5_reg_2110;
wire   [63:0] v25_5_fu_1306_p11;
reg   [63:0] v25_5_reg_2115;
wire   [9:0] grp_fu_872_p2;
reg   [9:0] urem_ln69_7_reg_2160;
reg   [63:0] v29_13_reg_2165;
wire   [63:0] v25_6_fu_1379_p11;
reg   [63:0] v25_6_reg_2170;
wire   [63:0] v25_7_fu_1419_p11;
reg   [63:0] v25_7_reg_2175;
wire   [9:0] grp_fu_894_p2;
reg   [9:0] urem_ln69_9_reg_2220;
wire   [63:0] v25_8_fu_1492_p11;
reg   [63:0] v25_8_reg_2225;
wire   [63:0] v25_9_fu_1532_p11;
reg   [63:0] v25_9_reg_2230;
wire   [9:0] grp_fu_916_p2;
reg   [9:0] urem_ln69_11_reg_2275;
wire   [63:0] v25_10_fu_1605_p11;
reg   [63:0] v25_10_reg_2280;
wire   [63:0] v25_11_fu_1645_p11;
reg   [63:0] v25_11_reg_2285;
wire   [63:0] v25_12_fu_1710_p11;
reg   [63:0] v25_12_reg_2310;
reg   [63:0] v27_1_reg_2315;
reg   [63:0] v27_2_reg_2320;
reg   [63:0] v27_2_reg_2320_pp0_iter4_reg;
reg   [63:0] v27_3_reg_2325;
reg   [63:0] v27_3_reg_2325_pp0_iter4_reg;
reg   [63:0] v27_3_reg_2325_pp0_iter5_reg;
reg   [63:0] v27_4_reg_2330;
reg   [63:0] v27_4_reg_2330_pp0_iter4_reg;
reg   [63:0] v27_4_reg_2330_pp0_iter5_reg;
reg   [63:0] v27_4_reg_2330_pp0_iter6_reg;
reg   [63:0] v27_5_reg_2335;
reg   [63:0] v27_5_reg_2335_pp0_iter4_reg;
reg   [63:0] v27_5_reg_2335_pp0_iter5_reg;
reg   [63:0] v27_5_reg_2335_pp0_iter6_reg;
reg   [63:0] v27_5_reg_2335_pp0_iter7_reg;
reg   [63:0] v27_6_reg_2340;
reg   [63:0] v27_6_reg_2340_pp0_iter4_reg;
reg   [63:0] v27_6_reg_2340_pp0_iter5_reg;
reg   [63:0] v27_6_reg_2340_pp0_iter6_reg;
reg   [63:0] v27_6_reg_2340_pp0_iter7_reg;
reg   [63:0] v27_6_reg_2340_pp0_iter8_reg;
reg   [63:0] v27_7_reg_2345;
reg   [63:0] v27_7_reg_2345_pp0_iter4_reg;
reg   [63:0] v27_7_reg_2345_pp0_iter5_reg;
reg   [63:0] v27_7_reg_2345_pp0_iter6_reg;
reg   [63:0] v27_7_reg_2345_pp0_iter7_reg;
reg   [63:0] v27_7_reg_2345_pp0_iter8_reg;
reg   [63:0] v27_7_reg_2345_pp0_iter9_reg;
reg   [63:0] v27_8_reg_2350;
reg   [63:0] v27_8_reg_2350_pp0_iter4_reg;
reg   [63:0] v27_8_reg_2350_pp0_iter5_reg;
reg   [63:0] v27_8_reg_2350_pp0_iter6_reg;
reg   [63:0] v27_8_reg_2350_pp0_iter7_reg;
reg   [63:0] v27_8_reg_2350_pp0_iter8_reg;
reg   [63:0] v27_8_reg_2350_pp0_iter9_reg;
reg   [63:0] v27_8_reg_2350_pp0_iter10_reg;
reg   [63:0] v27_9_reg_2355;
reg   [63:0] v27_9_reg_2355_pp0_iter4_reg;
reg   [63:0] v27_9_reg_2355_pp0_iter5_reg;
reg   [63:0] v27_9_reg_2355_pp0_iter6_reg;
reg   [63:0] v27_9_reg_2355_pp0_iter7_reg;
reg   [63:0] v27_9_reg_2355_pp0_iter8_reg;
reg   [63:0] v27_9_reg_2355_pp0_iter9_reg;
reg   [63:0] v27_9_reg_2355_pp0_iter10_reg;
reg   [63:0] v27_9_reg_2355_pp0_iter11_reg;
reg   [63:0] v27_10_reg_2360;
reg   [63:0] v27_10_reg_2360_pp0_iter4_reg;
reg   [63:0] v27_10_reg_2360_pp0_iter5_reg;
reg   [63:0] v27_10_reg_2360_pp0_iter6_reg;
reg   [63:0] v27_10_reg_2360_pp0_iter7_reg;
reg   [63:0] v27_10_reg_2360_pp0_iter8_reg;
reg   [63:0] v27_10_reg_2360_pp0_iter9_reg;
reg   [63:0] v27_10_reg_2360_pp0_iter10_reg;
reg   [63:0] v27_10_reg_2360_pp0_iter11_reg;
reg   [63:0] v27_10_reg_2360_pp0_iter12_reg;
reg   [63:0] v27_11_reg_2365;
reg   [63:0] v27_11_reg_2365_pp0_iter4_reg;
reg   [63:0] v27_11_reg_2365_pp0_iter5_reg;
reg   [63:0] v27_11_reg_2365_pp0_iter6_reg;
reg   [63:0] v27_11_reg_2365_pp0_iter7_reg;
reg   [63:0] v27_11_reg_2365_pp0_iter8_reg;
reg   [63:0] v27_11_reg_2365_pp0_iter9_reg;
reg   [63:0] v27_11_reg_2365_pp0_iter10_reg;
reg   [63:0] v27_11_reg_2365_pp0_iter11_reg;
reg   [63:0] v27_11_reg_2365_pp0_iter12_reg;
reg   [63:0] v27_11_reg_2365_pp0_iter13_reg;
reg   [63:0] v27_12_reg_2370;
reg   [63:0] v27_12_reg_2370_pp0_iter4_reg;
reg   [63:0] v27_12_reg_2370_pp0_iter5_reg;
reg   [63:0] v27_12_reg_2370_pp0_iter6_reg;
reg   [63:0] v27_12_reg_2370_pp0_iter7_reg;
reg   [63:0] v27_12_reg_2370_pp0_iter8_reg;
reg   [63:0] v27_12_reg_2370_pp0_iter9_reg;
reg   [63:0] v27_12_reg_2370_pp0_iter10_reg;
reg   [63:0] v27_12_reg_2370_pp0_iter11_reg;
reg   [63:0] v27_12_reg_2370_pp0_iter12_reg;
reg   [63:0] v27_12_reg_2370_pp0_iter13_reg;
reg   [63:0] v27_12_reg_2370_pp0_iter14_reg;
reg   [63:0] v29_14_reg_2375;
reg   [63:0] v29_15_reg_2380;
reg   [63:0] v29_16_reg_2385;
reg   [63:0] v29_17_reg_2390;
reg   [63:0] v29_18_reg_2395;
reg   [63:0] v29_19_reg_2400;
reg   [63:0] v29_20_reg_2405;
reg   [63:0] v29_21_reg_2410;
reg   [63:0] v29_22_reg_2415;
reg   [63:0] v29_23_reg_2420;
reg   [63:0] v29_24_reg_2425;
reg   [63:0] v29_reg_2430;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln69_1_fu_756_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln69_2_fu_1075_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln69_4_fu_1083_p1;
wire   [63:0] zext_ln69_5_fu_1188_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln69_6_fu_1196_p1;
wire   [63:0] zext_ln69_7_fu_1282_p1;
wire   [63:0] zext_ln69_8_fu_1329_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln69_9_fu_1336_p1;
wire   [63:0] zext_ln69_10_fu_1442_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln69_11_fu_1449_p1;
wire   [63:0] zext_ln69_12_fu_1555_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln69_13_fu_1562_p1;
wire   [63:0] zext_ln69_14_fu_1668_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln66_fu_1734_p1;
reg   [9:0] phi_mul_fu_128;
wire   [9:0] add_ln69_12_fu_927_p2;
wire    ap_loop_init;
reg   [9:0] ap_sig_allocacmp_phi_mul_load;
reg   [6:0] v23_fu_132;
wire   [6:0] add_ln66_fu_922_p2;
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
reg   [63:0] grp_fu_679_p0;
reg   [63:0] grp_fu_679_p1;
reg   [63:0] grp_fu_684_p0;
reg   [63:0] grp_fu_684_p1;
reg   [63:0] grp_fu_688_p0;
reg   [63:0] grp_fu_688_p1;
reg   [63:0] grp_fu_692_p0;
reg   [63:0] grp_fu_692_p1;
wire   [3:0] trunc_ln66_fu_718_p1;
wire   [3:0] mul_ln69_fu_726_p0;
wire   [4:0] mul_ln69_fu_726_p1;
wire   [9:0] grp_fu_738_p0;
wire   [8:0] grp_fu_738_p1;
wire   [9:0] grp_fu_750_p0;
wire   [8:0] grp_fu_750_p1;
wire   [9:0] grp_fu_768_p0;
wire   [8:0] grp_fu_768_p1;
wire   [9:0] grp_fu_779_p0;
wire   [8:0] grp_fu_779_p1;
wire   [63:0] v25_fu_810_p2;
wire   [63:0] v25_fu_810_p4;
wire   [63:0] v25_fu_810_p6;
wire   [63:0] v25_fu_810_p8;
wire   [63:0] v25_fu_810_p9;
wire   [1:0] v25_fu_810_p10;
wire   [9:0] grp_fu_839_p0;
wire   [8:0] grp_fu_839_p1;
wire   [9:0] grp_fu_850_p0;
wire   [8:0] grp_fu_850_p1;
wire   [9:0] grp_fu_861_p0;
wire   [8:0] grp_fu_861_p1;
wire   [9:0] grp_fu_872_p0;
wire   [8:0] grp_fu_872_p1;
wire   [9:0] grp_fu_883_p0;
wire   [8:0] grp_fu_883_p1;
wire   [9:0] grp_fu_894_p0;
wire   [8:0] grp_fu_894_p1;
wire   [9:0] grp_fu_905_p0;
wire   [8:0] grp_fu_905_p1;
wire   [9:0] grp_fu_916_p0;
wire   [8:0] grp_fu_916_p1;
wire   [9:0] mul_ln69_1_fu_945_p0;
wire   [11:0] mul_ln69_1_fu_945_p1;
wire   [20:0] mul_ln69_1_fu_945_p2;
wire   [9:0] mul_ln69_2_fu_964_p0;
wire   [11:0] mul_ln69_2_fu_964_p1;
wire   [20:0] mul_ln69_2_fu_964_p2;
wire   [9:0] mul_ln69_3_fu_983_p0;
wire   [11:0] mul_ln69_3_fu_983_p1;
wire   [20:0] mul_ln69_3_fu_983_p2;
wire   [9:0] mul_ln69_4_fu_1002_p0;
wire   [11:0] mul_ln69_4_fu_1002_p1;
wire   [20:0] mul_ln69_4_fu_1002_p2;
wire   [9:0] mul_ln69_5_fu_1021_p0;
wire   [11:0] mul_ln69_5_fu_1021_p1;
wire   [20:0] mul_ln69_5_fu_1021_p2;
wire   [9:0] mul_ln69_7_fu_1040_p0;
wire   [11:0] mul_ln69_7_fu_1040_p1;
wire   [20:0] mul_ln69_7_fu_1040_p2;
wire   [9:0] mul_ln69_9_fu_1059_p0;
wire   [11:0] mul_ln69_9_fu_1059_p1;
wire   [20:0] mul_ln69_9_fu_1059_p2;
wire   [9:0] grp_fu_738_p2;
wire   [9:0] grp_fu_750_p2;
wire   [9:0] mul_ln69_11_fu_1094_p0;
wire   [11:0] mul_ln69_11_fu_1094_p1;
wire   [20:0] mul_ln69_11_fu_1094_p2;
wire   [63:0] v25_1_fu_1126_p2;
wire   [63:0] v25_1_fu_1126_p4;
wire   [63:0] v25_1_fu_1126_p6;
wire   [63:0] v25_1_fu_1126_p8;
wire   [63:0] v25_1_fu_1126_p9;
wire   [63:0] v25_2_fu_1165_p2;
wire   [63:0] v25_2_fu_1165_p4;
wire   [63:0] v25_2_fu_1165_p6;
wire   [63:0] v25_2_fu_1165_p8;
wire   [63:0] v25_2_fu_1165_p9;
wire   [9:0] grp_fu_768_p2;
wire   [9:0] grp_fu_779_p2;
wire   [63:0] v25_3_fu_1220_p2;
wire   [63:0] v25_3_fu_1220_p4;
wire   [63:0] v25_3_fu_1220_p6;
wire   [63:0] v25_3_fu_1220_p8;
wire   [63:0] v25_3_fu_1220_p9;
wire   [63:0] v25_4_fu_1259_p2;
wire   [63:0] v25_4_fu_1259_p4;
wire   [63:0] v25_4_fu_1259_p6;
wire   [63:0] v25_4_fu_1259_p8;
wire   [63:0] v25_4_fu_1259_p9;
wire   [9:0] grp_fu_839_p2;
wire   [63:0] v25_5_fu_1306_p2;
wire   [63:0] v25_5_fu_1306_p4;
wire   [63:0] v25_5_fu_1306_p6;
wire   [63:0] v25_5_fu_1306_p8;
wire   [63:0] v25_5_fu_1306_p9;
wire   [9:0] grp_fu_861_p2;
wire   [9:0] mul_ln69_6_fu_1347_p0;
wire   [11:0] mul_ln69_6_fu_1347_p1;
wire   [20:0] mul_ln69_6_fu_1347_p2;
wire   [63:0] v25_6_fu_1379_p2;
wire   [63:0] v25_6_fu_1379_p4;
wire   [63:0] v25_6_fu_1379_p6;
wire   [63:0] v25_6_fu_1379_p8;
wire   [63:0] v25_6_fu_1379_p9;
wire   [1:0] v25_6_fu_1379_p10;
wire   [63:0] v25_7_fu_1419_p2;
wire   [63:0] v25_7_fu_1419_p4;
wire   [63:0] v25_7_fu_1419_p6;
wire   [63:0] v25_7_fu_1419_p8;
wire   [63:0] v25_7_fu_1419_p9;
wire   [9:0] grp_fu_883_p2;
wire   [9:0] mul_ln69_8_fu_1460_p0;
wire   [11:0] mul_ln69_8_fu_1460_p1;
wire   [20:0] mul_ln69_8_fu_1460_p2;
wire   [63:0] v25_8_fu_1492_p2;
wire   [63:0] v25_8_fu_1492_p4;
wire   [63:0] v25_8_fu_1492_p6;
wire   [63:0] v25_8_fu_1492_p8;
wire   [63:0] v25_8_fu_1492_p9;
wire   [1:0] v25_8_fu_1492_p10;
wire   [63:0] v25_9_fu_1532_p2;
wire   [63:0] v25_9_fu_1532_p4;
wire   [63:0] v25_9_fu_1532_p6;
wire   [63:0] v25_9_fu_1532_p8;
wire   [63:0] v25_9_fu_1532_p9;
wire   [9:0] grp_fu_905_p2;
wire   [9:0] mul_ln69_10_fu_1573_p0;
wire   [11:0] mul_ln69_10_fu_1573_p1;
wire   [20:0] mul_ln69_10_fu_1573_p2;
wire   [63:0] v25_10_fu_1605_p2;
wire   [63:0] v25_10_fu_1605_p4;
wire   [63:0] v25_10_fu_1605_p6;
wire   [63:0] v25_10_fu_1605_p8;
wire   [63:0] v25_10_fu_1605_p9;
wire   [1:0] v25_10_fu_1605_p10;
wire   [63:0] v25_11_fu_1645_p2;
wire   [63:0] v25_11_fu_1645_p4;
wire   [63:0] v25_11_fu_1645_p6;
wire   [63:0] v25_11_fu_1645_p8;
wire   [63:0] v25_11_fu_1645_p9;
wire   [9:0] mul_ln69_12_fu_1678_p0;
wire   [11:0] mul_ln69_12_fu_1678_p1;
wire   [20:0] mul_ln69_12_fu_1678_p2;
wire   [63:0] v25_12_fu_1710_p2;
wire   [63:0] v25_12_fu_1710_p4;
wire   [63:0] v25_12_fu_1710_p6;
wire   [63:0] v25_12_fu_1710_p8;
wire   [63:0] v25_12_fu_1710_p9;
wire   [1:0] v25_12_fu_1710_p10;
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
wire   [20:0] mul_ln69_10_fu_1573_p00;
wire   [20:0] mul_ln69_11_fu_1094_p00;
wire   [20:0] mul_ln69_12_fu_1678_p00;
wire   [20:0] mul_ln69_1_fu_945_p00;
wire   [20:0] mul_ln69_2_fu_964_p00;
wire   [20:0] mul_ln69_3_fu_983_p00;
wire   [20:0] mul_ln69_4_fu_1002_p00;
wire   [20:0] mul_ln69_5_fu_1021_p00;
wire   [20:0] mul_ln69_6_fu_1347_p00;
wire   [20:0] mul_ln69_7_fu_1040_p00;
wire   [20:0] mul_ln69_8_fu_1460_p00;
wire   [20:0] mul_ln69_9_fu_1059_p00;
wire   [7:0] mul_ln69_fu_726_p00;
wire   [1:0] v25_fu_810_p1;
wire   [1:0] v25_fu_810_p3;
wire  signed [1:0] v25_fu_810_p5;
wire  signed [1:0] v25_fu_810_p7;
wire   [1:0] v25_1_fu_1126_p1;
wire   [1:0] v25_1_fu_1126_p3;
wire  signed [1:0] v25_1_fu_1126_p5;
wire  signed [1:0] v25_1_fu_1126_p7;
wire   [1:0] v25_2_fu_1165_p1;
wire   [1:0] v25_2_fu_1165_p3;
wire  signed [1:0] v25_2_fu_1165_p5;
wire  signed [1:0] v25_2_fu_1165_p7;
wire   [1:0] v25_3_fu_1220_p1;
wire   [1:0] v25_3_fu_1220_p3;
wire  signed [1:0] v25_3_fu_1220_p5;
wire  signed [1:0] v25_3_fu_1220_p7;
wire   [1:0] v25_4_fu_1259_p1;
wire   [1:0] v25_4_fu_1259_p3;
wire  signed [1:0] v25_4_fu_1259_p5;
wire  signed [1:0] v25_4_fu_1259_p7;
wire   [1:0] v25_5_fu_1306_p1;
wire   [1:0] v25_5_fu_1306_p3;
wire  signed [1:0] v25_5_fu_1306_p5;
wire  signed [1:0] v25_5_fu_1306_p7;
wire   [1:0] v25_6_fu_1379_p1;
wire   [1:0] v25_6_fu_1379_p3;
wire  signed [1:0] v25_6_fu_1379_p5;
wire  signed [1:0] v25_6_fu_1379_p7;
wire   [1:0] v25_7_fu_1419_p1;
wire   [1:0] v25_7_fu_1419_p3;
wire  signed [1:0] v25_7_fu_1419_p5;
wire  signed [1:0] v25_7_fu_1419_p7;
wire   [1:0] v25_8_fu_1492_p1;
wire   [1:0] v25_8_fu_1492_p3;
wire  signed [1:0] v25_8_fu_1492_p5;
wire  signed [1:0] v25_8_fu_1492_p7;
wire   [1:0] v25_9_fu_1532_p1;
wire   [1:0] v25_9_fu_1532_p3;
wire  signed [1:0] v25_9_fu_1532_p5;
wire  signed [1:0] v25_9_fu_1532_p7;
wire   [1:0] v25_10_fu_1605_p1;
wire   [1:0] v25_10_fu_1605_p3;
wire  signed [1:0] v25_10_fu_1605_p5;
wire  signed [1:0] v25_10_fu_1605_p7;
wire   [1:0] v25_11_fu_1645_p1;
wire   [1:0] v25_11_fu_1645_p3;
wire  signed [1:0] v25_11_fu_1645_p5;
wire  signed [1:0] v25_11_fu_1645_p7;
wire   [1:0] v25_12_fu_1710_p1;
wire   [1:0] v25_12_fu_1710_p3;
wire  signed [1:0] v25_12_fu_1710_p5;
wire  signed [1:0] v25_12_fu_1710_p7;
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
#0 phi_mul_fu_128 = 10'd0;
#0 v23_fu_132 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_mul_4ns_5ns_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 4 ),.din1_WIDTH( 5 ),.dout_WIDTH( 8 ))
mul_4ns_5ns_8_1_1_U13(.din0(mul_ln69_fu_726_p0),.din1(mul_ln69_fu_726_p1),.dout(mul_ln69_fu_726_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U14(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_738_p0),.din1(grp_fu_738_p1),.ce(1'b1),.dout(grp_fu_738_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U15(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_750_p0),.din1(grp_fu_750_p1),.ce(1'b1),.dout(grp_fu_750_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U16(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_768_p0),.din1(grp_fu_768_p1),.ce(1'b1),.dout(grp_fu_768_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U17(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_779_p0),.din1(grp_fu_779_p1),.ce(1'b1),.dout(grp_fu_779_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U18(.din0(v25_fu_810_p2),.din1(v25_fu_810_p4),.din2(v25_fu_810_p6),.din3(v25_fu_810_p8),.def(v25_fu_810_p9),.sel(v25_fu_810_p10),.dout(v25_fu_810_p11));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U19(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_839_p0),.din1(grp_fu_839_p1),.ce(1'b1),.dout(grp_fu_839_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U20(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_850_p0),.din1(grp_fu_850_p1),.ce(1'b1),.dout(grp_fu_850_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U21(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_861_p0),.din1(grp_fu_861_p1),.ce(1'b1),.dout(grp_fu_861_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U22(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_872_p0),.din1(grp_fu_872_p1),.ce(1'b1),.dout(grp_fu_872_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U23(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_883_p0),.din1(grp_fu_883_p1),.ce(1'b1),.dout(grp_fu_883_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U24(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_894_p0),.din1(grp_fu_894_p1),.ce(1'b1),.dout(grp_fu_894_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U25(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_905_p0),.din1(grp_fu_905_p1),.ce(1'b1),.dout(grp_fu_905_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U26(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_916_p0),.din1(grp_fu_916_p1),.ce(1'b1),.dout(grp_fu_916_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U27(.din0(mul_ln69_1_fu_945_p0),.din1(mul_ln69_1_fu_945_p1),.dout(mul_ln69_1_fu_945_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U28(.din0(mul_ln69_2_fu_964_p0),.din1(mul_ln69_2_fu_964_p1),.dout(mul_ln69_2_fu_964_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U29(.din0(mul_ln69_3_fu_983_p0),.din1(mul_ln69_3_fu_983_p1),.dout(mul_ln69_3_fu_983_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U30(.din0(mul_ln69_4_fu_1002_p0),.din1(mul_ln69_4_fu_1002_p1),.dout(mul_ln69_4_fu_1002_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U31(.din0(mul_ln69_5_fu_1021_p0),.din1(mul_ln69_5_fu_1021_p1),.dout(mul_ln69_5_fu_1021_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U32(.din0(mul_ln69_7_fu_1040_p0),.din1(mul_ln69_7_fu_1040_p1),.dout(mul_ln69_7_fu_1040_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U33(.din0(mul_ln69_9_fu_1059_p0),.din1(mul_ln69_9_fu_1059_p1),.dout(mul_ln69_9_fu_1059_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U34(.din0(mul_ln69_11_fu_1094_p0),.din1(mul_ln69_11_fu_1094_p1),.dout(mul_ln69_11_fu_1094_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U35(.din0(v25_1_fu_1126_p2),.din1(v25_1_fu_1126_p4),.din2(v25_1_fu_1126_p6),.din3(v25_1_fu_1126_p8),.def(v25_1_fu_1126_p9),.sel(trunc_ln69_1_reg_1945),.dout(v25_1_fu_1126_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U36(.din0(v25_2_fu_1165_p2),.din1(v25_2_fu_1165_p4),.din2(v25_2_fu_1165_p6),.din3(v25_2_fu_1165_p8),.def(v25_2_fu_1165_p9),.sel(trunc_ln69_2_reg_1950),.dout(v25_2_fu_1165_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U37(.din0(v25_3_fu_1220_p2),.din1(v25_3_fu_1220_p4),.din2(v25_3_fu_1220_p6),.din3(v25_3_fu_1220_p8),.def(v25_3_fu_1220_p9),.sel(trunc_ln69_3_reg_1960),.dout(v25_3_fu_1220_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U38(.din0(v25_4_fu_1259_p2),.din1(v25_4_fu_1259_p4),.din2(v25_4_fu_1259_p6),.din3(v25_4_fu_1259_p8),.def(v25_4_fu_1259_p9),.sel(trunc_ln69_4_reg_1965),.dout(v25_4_fu_1259_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U39(.din0(v25_5_fu_1306_p2),.din1(v25_5_fu_1306_p4),.din2(v25_5_fu_1306_p6),.din3(v25_5_fu_1306_p8),.def(v25_5_fu_1306_p9),.sel(trunc_ln69_5_reg_1970),.dout(v25_5_fu_1306_p11));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U40(.din0(mul_ln69_6_fu_1347_p0),.din1(mul_ln69_6_fu_1347_p1),.dout(mul_ln69_6_fu_1347_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U41(.din0(v25_6_fu_1379_p2),.din1(v25_6_fu_1379_p4),.din2(v25_6_fu_1379_p6),.din3(v25_6_fu_1379_p8),.def(v25_6_fu_1379_p9),.sel(v25_6_fu_1379_p10),.dout(v25_6_fu_1379_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U42(.din0(v25_7_fu_1419_p2),.din1(v25_7_fu_1419_p4),.din2(v25_7_fu_1419_p6),.din3(v25_7_fu_1419_p8),.def(v25_7_fu_1419_p9),.sel(trunc_ln69_7_reg_1975),.dout(v25_7_fu_1419_p11));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U43(.din0(mul_ln69_8_fu_1460_p0),.din1(mul_ln69_8_fu_1460_p1),.dout(mul_ln69_8_fu_1460_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U44(.din0(v25_8_fu_1492_p2),.din1(v25_8_fu_1492_p4),.din2(v25_8_fu_1492_p6),.din3(v25_8_fu_1492_p8),.def(v25_8_fu_1492_p9),.sel(v25_8_fu_1492_p10),.dout(v25_8_fu_1492_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U45(.din0(v25_9_fu_1532_p2),.din1(v25_9_fu_1532_p4),.din2(v25_9_fu_1532_p6),.din3(v25_9_fu_1532_p8),.def(v25_9_fu_1532_p9),.sel(trunc_ln69_9_reg_1980),.dout(v25_9_fu_1532_p11));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U46(.din0(mul_ln69_10_fu_1573_p0),.din1(mul_ln69_10_fu_1573_p1),.dout(mul_ln69_10_fu_1573_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U47(.din0(v25_10_fu_1605_p2),.din1(v25_10_fu_1605_p4),.din2(v25_10_fu_1605_p6),.din3(v25_10_fu_1605_p8),.def(v25_10_fu_1605_p9),.sel(v25_10_fu_1605_p10),.dout(v25_10_fu_1605_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U48(.din0(v25_11_fu_1645_p2),.din1(v25_11_fu_1645_p4),.din2(v25_11_fu_1645_p6),.din3(v25_11_fu_1645_p8),.def(v25_11_fu_1645_p9),.sel(trunc_ln69_10_reg_2025),.dout(v25_11_fu_1645_p11));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U49(.din0(mul_ln69_12_fu_1678_p0),.din1(mul_ln69_12_fu_1678_p1),.dout(mul_ln69_12_fu_1678_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U50(.din0(v25_12_fu_1710_p2),.din1(v25_12_fu_1710_p4),.din2(v25_12_fu_1710_p6),.din3(v25_12_fu_1710_p8),.def(v25_12_fu_1710_p9),.sel(v25_12_fu_1710_p10),.dout(v25_12_fu_1710_p11));
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
        phi_mul_fu_128 <= 10'd0;
    end else if (((icmp_ln66_reg_1824 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        phi_mul_fu_128 <= add_ln69_12_fu_927_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v23_fu_132 <= 7'd0;
    end else if (((icmp_ln66_reg_1824 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v23_fu_132 <= add_ln66_fu_922_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln69_10_reg_1933 <= add_ln69_10_fu_900_p2;
        add_ln69_10_reg_1933_pp0_iter1_reg <= add_ln69_10_reg_1933;
        add_ln69_11_reg_1939 <= add_ln69_11_fu_911_p2;
        add_ln69_11_reg_1939_pp0_iter1_reg <= add_ln69_11_reg_1939;
        add_ln69_11_reg_1939_pp0_iter2_reg <= add_ln69_11_reg_1939_pp0_iter1_reg;
        trunc_ln69_9_reg_1980 <= {{mul_ln69_9_fu_1059_p2[19:18]}};
        v25_10_reg_2280 <= v25_10_fu_1605_p11;
        v25_11_reg_2285 <= v25_11_fu_1645_p11;
        v27_10_reg_2360_pp0_iter10_reg <= v27_10_reg_2360_pp0_iter9_reg;
        v27_10_reg_2360_pp0_iter11_reg <= v27_10_reg_2360_pp0_iter10_reg;
        v27_10_reg_2360_pp0_iter12_reg <= v27_10_reg_2360_pp0_iter11_reg;
        v27_10_reg_2360_pp0_iter4_reg <= v27_10_reg_2360;
        v27_10_reg_2360_pp0_iter5_reg <= v27_10_reg_2360_pp0_iter4_reg;
        v27_10_reg_2360_pp0_iter6_reg <= v27_10_reg_2360_pp0_iter5_reg;
        v27_10_reg_2360_pp0_iter7_reg <= v27_10_reg_2360_pp0_iter6_reg;
        v27_10_reg_2360_pp0_iter8_reg <= v27_10_reg_2360_pp0_iter7_reg;
        v27_10_reg_2360_pp0_iter9_reg <= v27_10_reg_2360_pp0_iter8_reg;
        v27_11_reg_2365_pp0_iter10_reg <= v27_11_reg_2365_pp0_iter9_reg;
        v27_11_reg_2365_pp0_iter11_reg <= v27_11_reg_2365_pp0_iter10_reg;
        v27_11_reg_2365_pp0_iter12_reg <= v27_11_reg_2365_pp0_iter11_reg;
        v27_11_reg_2365_pp0_iter13_reg <= v27_11_reg_2365_pp0_iter12_reg;
        v27_11_reg_2365_pp0_iter4_reg <= v27_11_reg_2365;
        v27_11_reg_2365_pp0_iter5_reg <= v27_11_reg_2365_pp0_iter4_reg;
        v27_11_reg_2365_pp0_iter6_reg <= v27_11_reg_2365_pp0_iter5_reg;
        v27_11_reg_2365_pp0_iter7_reg <= v27_11_reg_2365_pp0_iter6_reg;
        v27_11_reg_2365_pp0_iter8_reg <= v27_11_reg_2365_pp0_iter7_reg;
        v27_11_reg_2365_pp0_iter9_reg <= v27_11_reg_2365_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln69_1_reg_1854 <= add_ln69_1_fu_744_p2;
        add_ln69_1_reg_1854_pp0_iter1_reg <= add_ln69_1_reg_1854;
        add_ln69_reg_1848 <= add_ln69_fu_732_p2;
        add_ln69_reg_1848_pp0_iter1_reg <= add_ln69_reg_1848;
        icmp_ln66_reg_1824 <= icmp_ln66_fu_709_p2;
        icmp_ln66_reg_1824_pp0_iter10_reg <= icmp_ln66_reg_1824_pp0_iter9_reg;
        icmp_ln66_reg_1824_pp0_iter11_reg <= icmp_ln66_reg_1824_pp0_iter10_reg;
        icmp_ln66_reg_1824_pp0_iter12_reg <= icmp_ln66_reg_1824_pp0_iter11_reg;
        icmp_ln66_reg_1824_pp0_iter13_reg <= icmp_ln66_reg_1824_pp0_iter12_reg;
        icmp_ln66_reg_1824_pp0_iter14_reg <= icmp_ln66_reg_1824_pp0_iter13_reg;
        icmp_ln66_reg_1824_pp0_iter15_reg <= icmp_ln66_reg_1824_pp0_iter14_reg;
        icmp_ln66_reg_1824_pp0_iter1_reg <= icmp_ln66_reg_1824;
        icmp_ln66_reg_1824_pp0_iter2_reg <= icmp_ln66_reg_1824_pp0_iter1_reg;
        icmp_ln66_reg_1824_pp0_iter3_reg <= icmp_ln66_reg_1824_pp0_iter2_reg;
        icmp_ln66_reg_1824_pp0_iter4_reg <= icmp_ln66_reg_1824_pp0_iter3_reg;
        icmp_ln66_reg_1824_pp0_iter5_reg <= icmp_ln66_reg_1824_pp0_iter4_reg;
        icmp_ln66_reg_1824_pp0_iter6_reg <= icmp_ln66_reg_1824_pp0_iter5_reg;
        icmp_ln66_reg_1824_pp0_iter7_reg <= icmp_ln66_reg_1824_pp0_iter6_reg;
        icmp_ln66_reg_1824_pp0_iter8_reg <= icmp_ln66_reg_1824_pp0_iter7_reg;
        icmp_ln66_reg_1824_pp0_iter9_reg <= icmp_ln66_reg_1824_pp0_iter8_reg;
        mul_ln69_reg_1843 <= mul_ln69_fu_726_p2;
        phi_mul_load_reg_1828 <= ap_sig_allocacmp_phi_mul_load;
        v23_1_reg_1817 <= ap_sig_allocacmp_v23_1;
        v23_1_reg_1817_pp0_iter10_reg <= v23_1_reg_1817_pp0_iter9_reg;
        v23_1_reg_1817_pp0_iter11_reg <= v23_1_reg_1817_pp0_iter10_reg;
        v23_1_reg_1817_pp0_iter12_reg <= v23_1_reg_1817_pp0_iter11_reg;
        v23_1_reg_1817_pp0_iter13_reg <= v23_1_reg_1817_pp0_iter12_reg;
        v23_1_reg_1817_pp0_iter14_reg <= v23_1_reg_1817_pp0_iter13_reg;
        v23_1_reg_1817_pp0_iter15_reg <= v23_1_reg_1817_pp0_iter14_reg;
        v23_1_reg_1817_pp0_iter16_reg <= v23_1_reg_1817_pp0_iter15_reg;
        v23_1_reg_1817_pp0_iter1_reg <= v23_1_reg_1817;
        v23_1_reg_1817_pp0_iter2_reg <= v23_1_reg_1817_pp0_iter1_reg;
        v23_1_reg_1817_pp0_iter3_reg <= v23_1_reg_1817_pp0_iter2_reg;
        v23_1_reg_1817_pp0_iter4_reg <= v23_1_reg_1817_pp0_iter3_reg;
        v23_1_reg_1817_pp0_iter5_reg <= v23_1_reg_1817_pp0_iter4_reg;
        v23_1_reg_1817_pp0_iter6_reg <= v23_1_reg_1817_pp0_iter5_reg;
        v23_1_reg_1817_pp0_iter7_reg <= v23_1_reg_1817_pp0_iter6_reg;
        v23_1_reg_1817_pp0_iter8_reg <= v23_1_reg_1817_pp0_iter7_reg;
        v23_1_reg_1817_pp0_iter9_reg <= v23_1_reg_1817_pp0_iter8_reg;
        v25_1_reg_2030 <= v25_1_fu_1126_p11;
        v25_2_reg_2035 <= v25_2_fu_1165_p11;
        v27_2_reg_2320_pp0_iter4_reg <= v27_2_reg_2320;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln69_2_reg_1880 <= add_ln69_2_fu_763_p2;
        add_ln69_2_reg_1880_pp0_iter1_reg <= add_ln69_2_reg_1880;
        add_ln69_3_reg_1886 <= add_ln69_3_fu_774_p2;
        add_ln69_3_reg_1886_pp0_iter1_reg <= add_ln69_3_reg_1886;
        trunc_ln69_1_reg_1945 <= {{mul_ln69_1_fu_945_p2[19:18]}};
        trunc_ln69_2_reg_1950 <= {{mul_ln69_2_fu_964_p2[19:18]}};
        urem_ln69_5_reg_2110 <= grp_fu_850_p2;
        v25_3_reg_2080 <= v25_3_fu_1220_p11;
        v25_4_reg_2085 <= v25_4_fu_1259_p11;
        v27_3_reg_2325_pp0_iter4_reg <= v27_3_reg_2325;
        v27_3_reg_2325_pp0_iter5_reg <= v27_3_reg_2325_pp0_iter4_reg;
        v27_4_reg_2330_pp0_iter4_reg <= v27_4_reg_2330;
        v27_4_reg_2330_pp0_iter5_reg <= v27_4_reg_2330_pp0_iter4_reg;
        v27_4_reg_2330_pp0_iter6_reg <= v27_4_reg_2330_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln69_4_reg_1897 <= add_ln69_4_fu_834_p2;
        add_ln69_4_reg_1897_pp0_iter1_reg <= add_ln69_4_reg_1897;
        add_ln69_5_reg_1903 <= add_ln69_5_fu_845_p2;
        add_ln69_5_reg_1903_pp0_iter1_reg <= add_ln69_5_reg_1903;
        add_ln69_5_reg_1903_pp0_iter2_reg <= add_ln69_5_reg_1903_pp0_iter1_reg;
        trunc_ln69_3_reg_1960 <= {{mul_ln69_3_fu_983_p2[19:18]}};
        trunc_ln69_4_reg_1965 <= {{mul_ln69_4_fu_1002_p2[19:18]}};
        urem_ln69_7_reg_2160 <= grp_fu_872_p2;
        v25_5_reg_2115 <= v25_5_fu_1306_p11;
        v25_reg_1892 <= v25_fu_810_p11;
        v27_5_reg_2335_pp0_iter4_reg <= v27_5_reg_2335;
        v27_5_reg_2335_pp0_iter5_reg <= v27_5_reg_2335_pp0_iter4_reg;
        v27_5_reg_2335_pp0_iter6_reg <= v27_5_reg_2335_pp0_iter5_reg;
        v27_5_reg_2335_pp0_iter7_reg <= v27_5_reg_2335_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln69_6_reg_1909 <= add_ln69_6_fu_856_p2;
        add_ln69_6_reg_1909_pp0_iter1_reg <= add_ln69_6_reg_1909;
        add_ln69_7_reg_1915 <= add_ln69_7_fu_867_p2;
        add_ln69_7_reg_1915_pp0_iter1_reg <= add_ln69_7_reg_1915;
        add_ln69_7_reg_1915_pp0_iter2_reg <= add_ln69_7_reg_1915_pp0_iter1_reg;
        trunc_ln69_5_reg_1970 <= {{mul_ln69_5_fu_1021_p2[19:18]}};
        urem_ln69_9_reg_2220 <= grp_fu_894_p2;
        v25_6_reg_2170 <= v25_6_fu_1379_p11;
        v25_7_reg_2175 <= v25_7_fu_1419_p11;
        v27_6_reg_2340_pp0_iter4_reg <= v27_6_reg_2340;
        v27_6_reg_2340_pp0_iter5_reg <= v27_6_reg_2340_pp0_iter4_reg;
        v27_6_reg_2340_pp0_iter6_reg <= v27_6_reg_2340_pp0_iter5_reg;
        v27_6_reg_2340_pp0_iter7_reg <= v27_6_reg_2340_pp0_iter6_reg;
        v27_6_reg_2340_pp0_iter8_reg <= v27_6_reg_2340_pp0_iter7_reg;
        v27_7_reg_2345_pp0_iter4_reg <= v27_7_reg_2345;
        v27_7_reg_2345_pp0_iter5_reg <= v27_7_reg_2345_pp0_iter4_reg;
        v27_7_reg_2345_pp0_iter6_reg <= v27_7_reg_2345_pp0_iter5_reg;
        v27_7_reg_2345_pp0_iter7_reg <= v27_7_reg_2345_pp0_iter6_reg;
        v27_7_reg_2345_pp0_iter8_reg <= v27_7_reg_2345_pp0_iter7_reg;
        v27_7_reg_2345_pp0_iter9_reg <= v27_7_reg_2345_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln69_8_reg_1921 <= add_ln69_8_fu_878_p2;
        add_ln69_8_reg_1921_pp0_iter1_reg <= add_ln69_8_reg_1921;
        add_ln69_9_reg_1927 <= add_ln69_9_fu_889_p2;
        add_ln69_9_reg_1927_pp0_iter1_reg <= add_ln69_9_reg_1927;
        add_ln69_9_reg_1927_pp0_iter2_reg <= add_ln69_9_reg_1927_pp0_iter1_reg;
        trunc_ln69_7_reg_1975 <= {{mul_ln69_7_fu_1040_p2[19:18]}};
        urem_ln69_11_reg_2275 <= grp_fu_916_p2;
        v25_8_reg_2225 <= v25_8_fu_1492_p11;
        v25_9_reg_2230 <= v25_9_fu_1532_p11;
        v27_8_reg_2350_pp0_iter10_reg <= v27_8_reg_2350_pp0_iter9_reg;
        v27_8_reg_2350_pp0_iter4_reg <= v27_8_reg_2350;
        v27_8_reg_2350_pp0_iter5_reg <= v27_8_reg_2350_pp0_iter4_reg;
        v27_8_reg_2350_pp0_iter6_reg <= v27_8_reg_2350_pp0_iter5_reg;
        v27_8_reg_2350_pp0_iter7_reg <= v27_8_reg_2350_pp0_iter6_reg;
        v27_8_reg_2350_pp0_iter8_reg <= v27_8_reg_2350_pp0_iter7_reg;
        v27_8_reg_2350_pp0_iter9_reg <= v27_8_reg_2350_pp0_iter8_reg;
        v27_9_reg_2355_pp0_iter10_reg <= v27_9_reg_2355_pp0_iter9_reg;
        v27_9_reg_2355_pp0_iter11_reg <= v27_9_reg_2355_pp0_iter10_reg;
        v27_9_reg_2355_pp0_iter4_reg <= v27_9_reg_2355;
        v27_9_reg_2355_pp0_iter5_reg <= v27_9_reg_2355_pp0_iter4_reg;
        v27_9_reg_2355_pp0_iter6_reg <= v27_9_reg_2355_pp0_iter5_reg;
        v27_9_reg_2355_pp0_iter7_reg <= v27_9_reg_2355_pp0_iter6_reg;
        v27_9_reg_2355_pp0_iter8_reg <= v27_9_reg_2355_pp0_iter7_reg;
        v27_9_reg_2355_pp0_iter9_reg <= v27_9_reg_2355_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        trunc_ln69_10_reg_2025 <= {{mul_ln69_11_fu_1094_p2[19:18]}};
        v25_12_reg_2310 <= v25_12_fu_1710_p11;
        v27_12_reg_2370_pp0_iter10_reg <= v27_12_reg_2370_pp0_iter9_reg;
        v27_12_reg_2370_pp0_iter11_reg <= v27_12_reg_2370_pp0_iter10_reg;
        v27_12_reg_2370_pp0_iter12_reg <= v27_12_reg_2370_pp0_iter11_reg;
        v27_12_reg_2370_pp0_iter13_reg <= v27_12_reg_2370_pp0_iter12_reg;
        v27_12_reg_2370_pp0_iter14_reg <= v27_12_reg_2370_pp0_iter13_reg;
        v27_12_reg_2370_pp0_iter4_reg <= v27_12_reg_2370;
        v27_12_reg_2370_pp0_iter5_reg <= v27_12_reg_2370_pp0_iter4_reg;
        v27_12_reg_2370_pp0_iter6_reg <= v27_12_reg_2370_pp0_iter5_reg;
        v27_12_reg_2370_pp0_iter7_reg <= v27_12_reg_2370_pp0_iter6_reg;
        v27_12_reg_2370_pp0_iter8_reg <= v27_12_reg_2370_pp0_iter7_reg;
        v27_12_reg_2370_pp0_iter9_reg <= v27_12_reg_2370_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v27_10_reg_2360 <= grp_fu_5243_p_dout0;
        v27_11_reg_2365 <= grp_fu_5247_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v27_12_reg_2370 <= grp_fu_5243_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v27_1_reg_2315 <= grp_fu_5243_p_dout0;
        v27_2_reg_2320 <= grp_fu_5247_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v27_3_reg_2325 <= grp_fu_5243_p_dout0;
        v27_4_reg_2330 <= grp_fu_5247_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v27_5_reg_2335 <= grp_fu_5247_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v27_6_reg_2340 <= grp_fu_5243_p_dout0;
        v27_7_reg_2345 <= grp_fu_5247_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v27_8_reg_2350 <= grp_fu_5243_p_dout0;
        v27_9_reg_2355 <= grp_fu_5247_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v27_reg_1955 <= grp_fu_5243_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v29_13_reg_2165 <= grp_fu_5231_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v29_14_reg_2375 <= grp_fu_5231_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v29_15_reg_2380 <= grp_fu_5231_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v29_16_reg_2385 <= grp_fu_5235_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v29_17_reg_2390 <= grp_fu_5231_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v29_18_reg_2395 <= grp_fu_5231_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v29_19_reg_2400 <= grp_fu_5231_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v29_20_reg_2405 <= grp_fu_5231_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v29_21_reg_2410 <= grp_fu_5235_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v29_22_reg_2415 <= grp_fu_5235_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v29_23_reg_2420 <= grp_fu_5235_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v29_24_reg_2425 <= grp_fu_5235_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v29_reg_2430 <= grp_fu_5235_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln66_reg_1824 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter16 == 1'b1) & (icmp_ln66_reg_1824_pp0_iter15_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_phi_mul_load = phi_mul_fu_128;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v23_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_v23_1 = v23_fu_132;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_679_p0 = v29_19_reg_2400;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_679_p0 = v29_18_reg_2395;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_679_p0 = v29_17_reg_2390;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_679_p0 = v29_16_reg_2385;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_679_p0 = v29_14_reg_2375;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_679_p0 = v29_13_reg_2165;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_679_p0 = v27_reg_1955;
    end else begin
        grp_fu_679_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_679_p1 = v27_7_reg_2345_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_679_p1 = v27_6_reg_2340_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_679_p1 = v27_5_reg_2335_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_679_p1 = v27_4_reg_2330_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_679_p1 = v27_2_reg_2320_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_679_p1 = v27_1_reg_2315;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_679_p1 = 64'd0;
    end else begin
        grp_fu_679_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_684_p0 = v29_24_reg_2425;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_684_p0 = v29_23_reg_2420;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_684_p0 = v29_22_reg_2415;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_684_p0 = v29_21_reg_2410;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_684_p0 = v29_20_reg_2405;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_684_p0 = v29_15_reg_2380;
    end else begin
        grp_fu_684_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_684_p1 = v27_12_reg_2370_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_684_p1 = v27_11_reg_2365_pp0_iter13_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_684_p1 = v27_10_reg_2360_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_684_p1 = v27_9_reg_2355_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_684_p1 = v27_8_reg_2350_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_684_p1 = v27_3_reg_2325_pp0_iter5_reg;
    end else begin
        grp_fu_684_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_688_p0 = v25_12_reg_2310;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_688_p0 = v25_10_reg_2280;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_688_p0 = v25_8_reg_2225;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_688_p0 = v25_6_reg_2170;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_688_p0 = v25_3_reg_2080;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_688_p0 = v25_1_reg_2030;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_688_p0 = v25_reg_1892;
    end else begin
        grp_fu_688_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_688_p1 = v26_11;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_688_p1 = v26_12;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_688_p1 = v26_8;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_688_p1 = v26_6;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_688_p1 = v26_3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_688_p1 = v26_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_688_p1 = v26;
    end else begin
        grp_fu_688_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_692_p0 = v25_11_reg_2285;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_692_p0 = v25_9_reg_2230;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_692_p0 = v25_7_reg_2175;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_692_p0 = v25_5_reg_2115;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_692_p0 = v25_4_reg_2085;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_692_p0 = v25_2_reg_2035;
        end else begin
            grp_fu_692_p0 = 'bx;
        end
    end else begin
        grp_fu_692_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_692_p1 = v26_10;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_692_p1 = v26_9;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_692_p1 = v26_7;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_692_p1 = v26_5;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_692_p1 = v26_4;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_692_p1 = v26_2;
        end else begin
            grp_fu_692_p1 = 'bx;
        end
    end else begin
        grp_fu_692_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v0_0_address0_local = zext_ln69_14_fu_1668_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_0_address0_local = zext_ln69_13_fu_1562_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_0_address0_local = zext_ln69_11_fu_1449_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_0_address0_local = zext_ln69_9_fu_1336_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_0_address0_local = zext_ln69_7_fu_1282_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_0_address0_local = zext_ln69_6_fu_1196_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_0_address0_local = zext_ln69_2_fu_1075_p1;
    end else begin
        v0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_0_address1_local = zext_ln69_12_fu_1555_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_0_address1_local = zext_ln69_10_fu_1442_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_0_address1_local = zext_ln69_8_fu_1329_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_0_address1_local = zext_ln69_5_fu_1188_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_0_address1_local = zext_ln69_4_fu_1083_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_0_address1_local = zext_ln69_1_fu_756_p1;
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
        v0_1_address0_local = zext_ln69_14_fu_1668_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_1_address0_local = zext_ln69_13_fu_1562_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_1_address0_local = zext_ln69_11_fu_1449_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_1_address0_local = zext_ln69_9_fu_1336_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_1_address0_local = zext_ln69_7_fu_1282_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_1_address0_local = zext_ln69_6_fu_1196_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_1_address0_local = zext_ln69_2_fu_1075_p1;
    end else begin
        v0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_1_address1_local = zext_ln69_12_fu_1555_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_1_address1_local = zext_ln69_10_fu_1442_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_1_address1_local = zext_ln69_8_fu_1329_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_1_address1_local = zext_ln69_5_fu_1188_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_1_address1_local = zext_ln69_4_fu_1083_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_1_address1_local = zext_ln69_1_fu_756_p1;
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
        v0_2_address0_local = zext_ln69_14_fu_1668_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_2_address0_local = zext_ln69_13_fu_1562_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_2_address0_local = zext_ln69_11_fu_1449_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_2_address0_local = zext_ln69_9_fu_1336_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_2_address0_local = zext_ln69_7_fu_1282_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_2_address0_local = zext_ln69_6_fu_1196_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_2_address0_local = zext_ln69_2_fu_1075_p1;
    end else begin
        v0_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_2_address1_local = zext_ln69_12_fu_1555_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_2_address1_local = zext_ln69_10_fu_1442_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_2_address1_local = zext_ln69_8_fu_1329_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_2_address1_local = zext_ln69_5_fu_1188_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_2_address1_local = zext_ln69_4_fu_1083_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_2_address1_local = zext_ln69_1_fu_756_p1;
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
        v0_3_address0_local = zext_ln69_14_fu_1668_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_3_address0_local = zext_ln69_13_fu_1562_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_3_address0_local = zext_ln69_11_fu_1449_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_3_address0_local = zext_ln69_9_fu_1336_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_3_address0_local = zext_ln69_7_fu_1282_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_3_address0_local = zext_ln69_6_fu_1196_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_3_address0_local = zext_ln69_2_fu_1075_p1;
    end else begin
        v0_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_3_address1_local = zext_ln69_12_fu_1555_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_3_address1_local = zext_ln69_10_fu_1442_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_3_address1_local = zext_ln69_8_fu_1329_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_3_address1_local = zext_ln69_5_fu_1188_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_3_address1_local = zext_ln69_4_fu_1083_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_3_address1_local = zext_ln69_1_fu_756_p1;
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
assign add_ln66_fu_922_p2 = (v23_1_reg_1817 + 7'd1);
assign add_ln69_10_fu_900_p2 = (phi_mul_load_reg_1828 + 10'd11);
assign add_ln69_11_fu_911_p2 = (phi_mul_load_reg_1828 + 10'd12);
assign add_ln69_12_fu_927_p2 = (phi_mul_load_reg_1828 + 10'd13);
assign add_ln69_1_fu_744_p2 = (ap_sig_allocacmp_phi_mul_load + 10'd2);
assign add_ln69_2_fu_763_p2 = (phi_mul_load_reg_1828 + 10'd3);
assign add_ln69_3_fu_774_p2 = (phi_mul_load_reg_1828 + 10'd4);
assign add_ln69_4_fu_834_p2 = (phi_mul_load_reg_1828 + 10'd5);
assign add_ln69_5_fu_845_p2 = (phi_mul_load_reg_1828 + 10'd6);
assign add_ln69_6_fu_856_p2 = (phi_mul_load_reg_1828 + 10'd7);
assign add_ln69_7_fu_867_p2 = (phi_mul_load_reg_1828 + 10'd8);
assign add_ln69_8_fu_878_p2 = (phi_mul_load_reg_1828 + 10'd9);
assign add_ln69_9_fu_889_p2 = (phi_mul_load_reg_1828 + 10'd10);
assign add_ln69_fu_732_p2 = (ap_sig_allocacmp_phi_mul_load + 10'd1);
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
assign grp_fu_5231_p_ce = 1'b1;
assign grp_fu_5231_p_din0 = grp_fu_679_p0;
assign grp_fu_5231_p_din1 = grp_fu_679_p1;
assign grp_fu_5231_p_opcode = 2'd0;
assign grp_fu_5235_p_ce = 1'b1;
assign grp_fu_5235_p_din0 = grp_fu_684_p0;
assign grp_fu_5235_p_din1 = grp_fu_684_p1;
assign grp_fu_5235_p_opcode = 2'd0;
assign grp_fu_5243_p_ce = 1'b1;
assign grp_fu_5243_p_din0 = grp_fu_688_p0;
assign grp_fu_5243_p_din1 = grp_fu_688_p1;
assign grp_fu_5247_p_ce = 1'b1;
assign grp_fu_5247_p_din0 = grp_fu_692_p0;
assign grp_fu_5247_p_din1 = grp_fu_692_p1;
assign grp_fu_738_p0 = (ap_sig_allocacmp_phi_mul_load + 10'd1);
assign grp_fu_738_p1 = 10'd208;
assign grp_fu_750_p0 = (ap_sig_allocacmp_phi_mul_load + 10'd2);
assign grp_fu_750_p1 = 10'd208;
assign grp_fu_768_p0 = (phi_mul_load_reg_1828 + 10'd3);
assign grp_fu_768_p1 = 10'd208;
assign grp_fu_779_p0 = (phi_mul_load_reg_1828 + 10'd4);
assign grp_fu_779_p1 = 10'd208;
assign grp_fu_839_p0 = (phi_mul_load_reg_1828 + 10'd5);
assign grp_fu_839_p1 = 10'd208;
assign grp_fu_850_p0 = (phi_mul_load_reg_1828 + 10'd6);
assign grp_fu_850_p1 = 10'd208;
assign grp_fu_861_p0 = (phi_mul_load_reg_1828 + 10'd7);
assign grp_fu_861_p1 = 10'd208;
assign grp_fu_872_p0 = (phi_mul_load_reg_1828 + 10'd8);
assign grp_fu_872_p1 = 10'd208;
assign grp_fu_883_p0 = (phi_mul_load_reg_1828 + 10'd9);
assign grp_fu_883_p1 = 10'd208;
assign grp_fu_894_p0 = (phi_mul_load_reg_1828 + 10'd10);
assign grp_fu_894_p1 = 10'd208;
assign grp_fu_905_p0 = (phi_mul_load_reg_1828 + 10'd11);
assign grp_fu_905_p1 = 10'd208;
assign grp_fu_916_p0 = (phi_mul_load_reg_1828 + 10'd12);
assign grp_fu_916_p1 = 10'd208;
assign icmp_ln66_fu_709_p2 = ((ap_sig_allocacmp_v23_1 == 7'd64) ? 1'b1 : 1'b0);
assign mul_ln69_10_fu_1573_p0 = mul_ln69_10_fu_1573_p00;
assign mul_ln69_10_fu_1573_p00 = add_ln69_9_reg_1927_pp0_iter2_reg;
assign mul_ln69_10_fu_1573_p1 = 21'd1261;
assign mul_ln69_11_fu_1094_p0 = mul_ln69_11_fu_1094_p00;
assign mul_ln69_11_fu_1094_p00 = add_ln69_10_reg_1933_pp0_iter1_reg;
assign mul_ln69_11_fu_1094_p1 = 21'd1261;
assign mul_ln69_12_fu_1678_p0 = mul_ln69_12_fu_1678_p00;
assign mul_ln69_12_fu_1678_p00 = add_ln69_11_reg_1939_pp0_iter2_reg;
assign mul_ln69_12_fu_1678_p1 = 21'd1261;
assign mul_ln69_1_fu_945_p0 = mul_ln69_1_fu_945_p00;
assign mul_ln69_1_fu_945_p00 = add_ln69_reg_1848_pp0_iter1_reg;
assign mul_ln69_1_fu_945_p1 = 21'd1261;
assign mul_ln69_2_fu_964_p0 = mul_ln69_2_fu_964_p00;
assign mul_ln69_2_fu_964_p00 = add_ln69_1_reg_1854_pp0_iter1_reg;
assign mul_ln69_2_fu_964_p1 = 21'd1261;
assign mul_ln69_3_fu_983_p0 = mul_ln69_3_fu_983_p00;
assign mul_ln69_3_fu_983_p00 = add_ln69_2_reg_1880_pp0_iter1_reg;
assign mul_ln69_3_fu_983_p1 = 21'd1261;
assign mul_ln69_4_fu_1002_p0 = mul_ln69_4_fu_1002_p00;
assign mul_ln69_4_fu_1002_p00 = add_ln69_3_reg_1886_pp0_iter1_reg;
assign mul_ln69_4_fu_1002_p1 = 21'd1261;
assign mul_ln69_5_fu_1021_p0 = mul_ln69_5_fu_1021_p00;
assign mul_ln69_5_fu_1021_p00 = add_ln69_4_reg_1897_pp0_iter1_reg;
assign mul_ln69_5_fu_1021_p1 = 21'd1261;
assign mul_ln69_6_fu_1347_p0 = mul_ln69_6_fu_1347_p00;
assign mul_ln69_6_fu_1347_p00 = add_ln69_5_reg_1903_pp0_iter2_reg;
assign mul_ln69_6_fu_1347_p1 = 21'd1261;
assign mul_ln69_7_fu_1040_p0 = mul_ln69_7_fu_1040_p00;
assign mul_ln69_7_fu_1040_p00 = add_ln69_6_reg_1909_pp0_iter1_reg;
assign mul_ln69_7_fu_1040_p1 = 21'd1261;
assign mul_ln69_8_fu_1460_p0 = mul_ln69_8_fu_1460_p00;
assign mul_ln69_8_fu_1460_p00 = add_ln69_7_reg_1915_pp0_iter2_reg;
assign mul_ln69_8_fu_1460_p1 = 21'd1261;
assign mul_ln69_9_fu_1059_p0 = mul_ln69_9_fu_1059_p00;
assign mul_ln69_9_fu_1059_p00 = add_ln69_8_reg_1921_pp0_iter1_reg;
assign mul_ln69_9_fu_1059_p1 = 21'd1261;
assign mul_ln69_fu_726_p0 = mul_ln69_fu_726_p00;
assign mul_ln69_fu_726_p00 = trunc_ln66_fu_718_p1;
assign mul_ln69_fu_726_p1 = 8'd13;
assign trunc_ln66_fu_718_p1 = ap_sig_allocacmp_v23_1[3:0];
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
assign v20_address0 = zext_ln66_fu_1734_p1;
assign v20_ce0 = v20_ce0_local;
assign v20_d0 = v29_reg_2430;
assign v20_we0 = v20_we0_local;
assign v25_10_fu_1605_p10 = {{mul_ln69_10_fu_1573_p2[19:18]}};
assign v25_10_fu_1605_p2 = v0_0_q1;
assign v25_10_fu_1605_p4 = v0_1_q1;
assign v25_10_fu_1605_p6 = v0_2_q1;
assign v25_10_fu_1605_p8 = v0_3_q1;
assign v25_10_fu_1605_p9 = 'bx;
assign v25_11_fu_1645_p2 = v0_0_q0;
assign v25_11_fu_1645_p4 = v0_1_q0;
assign v25_11_fu_1645_p6 = v0_2_q0;
assign v25_11_fu_1645_p8 = v0_3_q0;
assign v25_11_fu_1645_p9 = 'bx;
assign v25_12_fu_1710_p10 = {{mul_ln69_12_fu_1678_p2[19:18]}};
assign v25_12_fu_1710_p2 = v0_0_q0;
assign v25_12_fu_1710_p4 = v0_1_q0;
assign v25_12_fu_1710_p6 = v0_2_q0;
assign v25_12_fu_1710_p8 = v0_3_q0;
assign v25_12_fu_1710_p9 = 'bx;
assign v25_1_fu_1126_p2 = v0_0_q0;
assign v25_1_fu_1126_p4 = v0_1_q0;
assign v25_1_fu_1126_p6 = v0_2_q0;
assign v25_1_fu_1126_p8 = v0_3_q0;
assign v25_1_fu_1126_p9 = 'bx;
assign v25_2_fu_1165_p2 = v0_0_q1;
assign v25_2_fu_1165_p4 = v0_1_q1;
assign v25_2_fu_1165_p6 = v0_2_q1;
assign v25_2_fu_1165_p8 = v0_3_q1;
assign v25_2_fu_1165_p9 = 'bx;
assign v25_3_fu_1220_p2 = v0_0_q1;
assign v25_3_fu_1220_p4 = v0_1_q1;
assign v25_3_fu_1220_p6 = v0_2_q1;
assign v25_3_fu_1220_p8 = v0_3_q1;
assign v25_3_fu_1220_p9 = 'bx;
assign v25_4_fu_1259_p2 = v0_0_q0;
assign v25_4_fu_1259_p4 = v0_1_q0;
assign v25_4_fu_1259_p6 = v0_2_q0;
assign v25_4_fu_1259_p8 = v0_3_q0;
assign v25_4_fu_1259_p9 = 'bx;
assign v25_5_fu_1306_p2 = v0_0_q0;
assign v25_5_fu_1306_p4 = v0_1_q0;
assign v25_5_fu_1306_p6 = v0_2_q0;
assign v25_5_fu_1306_p8 = v0_3_q0;
assign v25_5_fu_1306_p9 = 'bx;
assign v25_6_fu_1379_p10 = {{mul_ln69_6_fu_1347_p2[19:18]}};
assign v25_6_fu_1379_p2 = v0_0_q1;
assign v25_6_fu_1379_p4 = v0_1_q1;
assign v25_6_fu_1379_p6 = v0_2_q1;
assign v25_6_fu_1379_p8 = v0_3_q1;
assign v25_6_fu_1379_p9 = 'bx;
assign v25_7_fu_1419_p2 = v0_0_q0;
assign v25_7_fu_1419_p4 = v0_1_q0;
assign v25_7_fu_1419_p6 = v0_2_q0;
assign v25_7_fu_1419_p8 = v0_3_q0;
assign v25_7_fu_1419_p9 = 'bx;
assign v25_8_fu_1492_p10 = {{mul_ln69_8_fu_1460_p2[19:18]}};
assign v25_8_fu_1492_p2 = v0_0_q1;
assign v25_8_fu_1492_p4 = v0_1_q1;
assign v25_8_fu_1492_p6 = v0_2_q1;
assign v25_8_fu_1492_p8 = v0_3_q1;
assign v25_8_fu_1492_p9 = 'bx;
assign v25_9_fu_1532_p2 = v0_0_q0;
assign v25_9_fu_1532_p4 = v0_1_q0;
assign v25_9_fu_1532_p6 = v0_2_q0;
assign v25_9_fu_1532_p8 = v0_3_q0;
assign v25_9_fu_1532_p9 = 'bx;
assign v25_fu_810_p10 = {{v23_1_reg_1817[5:4]}};
assign v25_fu_810_p2 = v0_0_q1;
assign v25_fu_810_p4 = v0_1_q1;
assign v25_fu_810_p6 = v0_2_q1;
assign v25_fu_810_p8 = v0_3_q1;
assign v25_fu_810_p9 = 'bx;
assign zext_ln66_fu_1734_p1 = v23_1_reg_1817_pp0_iter16_reg;
assign zext_ln69_10_fu_1442_p1 = urem_ln69_7_reg_2160;
assign zext_ln69_11_fu_1449_p1 = grp_fu_883_p2;
assign zext_ln69_12_fu_1555_p1 = urem_ln69_9_reg_2220;
assign zext_ln69_13_fu_1562_p1 = grp_fu_905_p2;
assign zext_ln69_14_fu_1668_p1 = urem_ln69_11_reg_2275;
assign zext_ln69_1_fu_756_p1 = mul_ln69_reg_1843;
assign zext_ln69_2_fu_1075_p1 = grp_fu_738_p2;
assign zext_ln69_4_fu_1083_p1 = grp_fu_750_p2;
assign zext_ln69_5_fu_1188_p1 = grp_fu_768_p2;
assign zext_ln69_6_fu_1196_p1 = grp_fu_779_p2;
assign zext_ln69_7_fu_1282_p1 = grp_fu_839_p2;
assign zext_ln69_8_fu_1329_p1 = urem_ln69_5_reg_2110;
assign zext_ln69_9_fu_1336_p1 = grp_fu_861_p2;
endmodule 