module fft1D_512_fft1D_512_Pipeline_loop8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_we1,DATA_x_1_d1,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,DATA_x_address1,DATA_x_ce1,DATA_x_we1,DATA_x_d1,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_1_address0,smem_1_ce0,smem_1_q0,smem_1_address1,smem_1_ce1,smem_1_q1,smem_2_address0,smem_2_ce0,smem_2_q0,smem_2_address1,smem_2_ce1,smem_2_q1,smem_3_address0,smem_3_ce0,smem_3_q0,smem_3_address1,smem_3_ce1,smem_3_q1,smem_4_address0,smem_4_ce0,smem_4_q0,smem_4_address1,smem_4_ce1,smem_4_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
output   DATA_x_1_we0;
output  [63:0] DATA_x_1_d0;
output  [7:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
output   DATA_x_1_we1;
output  [63:0] DATA_x_1_d1;
output  [7:0] DATA_x_address0;
output   DATA_x_ce0;
output   DATA_x_we0;
output  [63:0] DATA_x_d0;
output  [7:0] DATA_x_address1;
output   DATA_x_ce1;
output   DATA_x_we1;
output  [63:0] DATA_x_d1;
output  [6:0] smem_address0;
output   smem_ce0;
input  [63:0] smem_q0;
output  [6:0] smem_address1;
output   smem_ce1;
input  [63:0] smem_q1;
output  [6:0] smem_1_address0;
output   smem_1_ce0;
input  [63:0] smem_1_q0;
output  [6:0] smem_1_address1;
output   smem_1_ce1;
input  [63:0] smem_1_q1;
output  [6:0] smem_2_address0;
output   smem_2_ce0;
input  [63:0] smem_2_q0;
output  [6:0] smem_2_address1;
output   smem_2_ce1;
input  [63:0] smem_2_q1;
output  [6:0] smem_3_address0;
output   smem_3_ce0;
input  [63:0] smem_3_q0;
output  [6:0] smem_3_address1;
output   smem_3_ce1;
input  [63:0] smem_3_q1;
output  [6:0] smem_4_address0;
output   smem_4_ce0;
input  [63:0] smem_4_q0;
output  [6:0] smem_4_address1;
output   smem_4_ce1;
input  [63:0] smem_4_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] tmp_reg_2030;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_2_reg_2022;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_2_reg_2022_pp0_iter1_reg;
reg   [6:0] tid_2_reg_2022_pp0_iter2_reg;
reg   [6:0] tid_2_reg_2022_pp0_iter3_reg;
reg   [0:0] tmp_reg_2030_pp0_iter1_reg;
reg   [0:0] tmp_reg_2030_pp0_iter2_reg;
reg   [0:0] tmp_reg_2030_pp0_iter3_reg;
wire   [2:0] tmp_44_fu_971_p4;
reg   [2:0] tmp_44_reg_2034;
wire   [8:0] offset_fu_985_p3;
reg   [8:0] offset_reg_2039;
reg   [8:0] offset_reg_2039_pp0_iter1_reg;
reg   [8:0] offset_reg_2039_pp0_iter2_reg;
wire   [8:0] offset_2_fu_1008_p4;
reg   [8:0] offset_2_reg_2046;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [8:0] offset_2_reg_2046_pp0_iter1_reg;
reg   [8:0] offset_2_reg_2046_pp0_iter2_reg;
reg   [7:0] tmp_46_reg_2053;
wire    ap_block_pp0_stage3_11001;
reg   [7:0] tmp_47_reg_2058;
reg   [7:0] tmp_48_reg_2063;
reg   [7:0] tmp_49_reg_2068;
reg   [7:0] tmp_50_reg_2073;
reg   [7:0] tmp_51_reg_2078;
reg   [7:0] tmp_52_reg_2083;
reg   [6:0] tmp_45_reg_2088;
wire   [2:0] trunc_ln172_fu_1121_p1;
reg   [2:0] trunc_ln172_reg_2093;
reg   [7:0] tmp_55_reg_2105;
reg   [7:0] tmp_56_reg_2110;
reg   [7:0] tmp_57_reg_2115;
reg   [7:0] tmp_58_reg_2120;
reg   [7:0] tmp_59_reg_2125;
reg   [7:0] tmp_60_reg_2130;
reg   [7:0] tmp_61_reg_2135;
reg   [6:0] tmp_54_reg_2340;
wire   [2:0] trunc_ln172_2_fu_1271_p1;
reg   [2:0] trunc_ln172_2_reg_2345;
wire   [63:0] tmp_s_fu_1275_p13;
reg   [63:0] tmp_s_reg_2357;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_21_fu_1302_p13;
reg   [63:0] tmp_21_reg_2362;
wire   [63:0] tmp_22_fu_1329_p13;
reg   [63:0] tmp_22_reg_2367;
wire   [63:0] tmp_23_fu_1356_p13;
reg   [63:0] tmp_23_reg_2372;
wire   [63:0] tmp_24_fu_1383_p13;
reg   [63:0] tmp_24_reg_2377;
wire   [63:0] tmp_25_fu_1410_p13;
reg   [63:0] tmp_25_reg_2382;
wire   [63:0] tmp_26_fu_1437_p13;
reg   [63:0] tmp_26_reg_2387;
wire   [63:0] tmp_27_fu_1464_p13;
reg   [63:0] tmp_27_reg_2392;
wire   [5:0] trunc_ln314_fu_1555_p1;
reg   [5:0] trunc_ln314_reg_2597;
wire   [63:0] tmp_28_fu_1586_p13;
reg   [63:0] tmp_28_reg_2603;
reg   [4:0] tmp_29_reg_2608;
wire   [63:0] tmp_30_fu_1622_p13;
reg   [63:0] tmp_30_reg_2616;
wire   [63:0] tmp_31_fu_1649_p13;
reg   [63:0] tmp_31_reg_2621;
wire   [63:0] tmp_32_fu_1676_p13;
reg   [63:0] tmp_32_reg_2626;
wire   [63:0] tmp_33_fu_1703_p13;
reg   [63:0] tmp_33_reg_2631;
wire   [63:0] tmp_34_fu_1730_p13;
reg   [63:0] tmp_34_reg_2636;
wire   [63:0] tmp_35_fu_1757_p13;
reg   [63:0] tmp_35_reg_2641;
wire   [63:0] tmp_36_fu_1784_p13;
reg   [63:0] tmp_36_reg_2646;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln172_2_fu_1188_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln315_fu_1196_p1;
wire   [63:0] zext_ln316_fu_1204_p1;
wire   [63:0] zext_ln317_fu_1212_p1;
wire   [63:0] zext_ln318_fu_1220_p1;
wire   [63:0] zext_ln319_fu_1228_p1;
wire   [63:0] zext_ln320_fu_1236_p1;
wire   [63:0] zext_ln321_fu_1244_p1;
wire   [63:0] zext_ln172_3_fu_1491_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln315_1_fu_1499_p1;
wire   [63:0] zext_ln316_1_fu_1507_p1;
wire   [63:0] zext_ln317_1_fu_1515_p1;
wire   [63:0] zext_ln318_1_fu_1523_p1;
wire   [63:0] zext_ln319_1_fu_1531_p1;
wire   [63:0] zext_ln320_1_fu_1539_p1;
wire   [63:0] zext_ln321_1_fu_1547_p1;
wire   [63:0] zext_ln314_fu_1566_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln315_2_fu_1580_p1;
wire   [63:0] zext_ln318_2_fu_1818_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln319_2_fu_1831_p1;
wire   [63:0] zext_ln314_1_fu_1844_p1;
wire   [63:0] zext_ln315_3_fu_1857_p1;
wire   [63:0] zext_ln318_3_fu_1870_p1;
wire   [63:0] zext_ln319_3_fu_1883_p1;
reg   [6:0] tid_fu_120;
wire   [6:0] add_ln309_fu_1023_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_2;
reg    smem_ce1_local;
reg   [6:0] smem_address1_local;
reg    smem_ce0_local;
reg   [6:0] smem_address0_local;
reg    smem_1_ce1_local;
reg   [6:0] smem_1_address1_local;
reg    smem_1_ce0_local;
reg   [6:0] smem_1_address0_local;
reg    smem_2_ce1_local;
reg   [6:0] smem_2_address1_local;
reg    smem_2_ce0_local;
reg   [6:0] smem_2_address0_local;
reg    smem_3_ce1_local;
reg   [6:0] smem_3_address1_local;
reg    smem_3_ce0_local;
reg   [6:0] smem_3_address0_local;
reg    smem_4_ce1_local;
reg   [6:0] smem_4_address1_local;
reg    smem_4_ce0_local;
reg   [6:0] smem_4_address0_local;
reg    DATA_x_we1_local;
reg   [63:0] DATA_x_d1_local;
reg    DATA_x_ce1_local;
reg   [7:0] DATA_x_address1_local;
reg    DATA_x_we0_local;
reg   [63:0] DATA_x_d0_local;
reg    DATA_x_ce0_local;
reg   [7:0] DATA_x_address0_local;
reg    DATA_x_1_we1_local;
reg   [63:0] DATA_x_1_d1_local;
reg    DATA_x_1_ce1_local;
reg   [7:0] DATA_x_1_address1_local;
reg    DATA_x_1_we0_local;
reg   [63:0] DATA_x_1_d0_local;
reg    DATA_x_1_ce0_local;
reg   [7:0] DATA_x_1_address0_local;
wire   [5:0] trunc_ln312_fu_981_p1;
wire   [8:0] grp_fu_993_p0;
wire   [3:0] grp_fu_993_p1;
wire   [4:0] tmp_53_fu_999_p4;
wire   [8:0] grp_fu_1017_p0;
wire   [3:0] grp_fu_1017_p1;
wire   [20:0] tmp_46_fu_1039_p1;
wire  signed [20:0] grp_fu_1889_p3;
wire   [20:0] tmp_47_fu_1048_p1;
wire  signed [20:0] grp_fu_1898_p3;
wire   [20:0] tmp_48_fu_1057_p1;
wire  signed [20:0] grp_fu_1907_p3;
wire   [20:0] tmp_49_fu_1066_p1;
wire  signed [20:0] grp_fu_1916_p3;
wire   [20:0] tmp_50_fu_1075_p1;
wire  signed [20:0] grp_fu_1925_p3;
wire   [20:0] tmp_51_fu_1084_p1;
wire  signed [20:0] grp_fu_1934_p3;
wire   [20:0] tmp_52_fu_1093_p1;
wire  signed [20:0] grp_fu_1943_p3;
wire   [8:0] mul_ln172_fu_1105_p0;
wire   [10:0] mul_ln172_fu_1105_p1;
wire   [18:0] mul_ln172_fu_1105_p2;
wire   [2:0] grp_fu_993_p2;
wire   [20:0] tmp_55_fu_1125_p1;
wire  signed [20:0] grp_fu_1952_p3;
wire   [20:0] tmp_56_fu_1134_p1;
wire  signed [20:0] grp_fu_1961_p3;
wire   [20:0] tmp_57_fu_1143_p1;
wire  signed [20:0] grp_fu_1970_p3;
wire   [20:0] tmp_58_fu_1152_p1;
wire  signed [20:0] grp_fu_1979_p3;
wire   [20:0] tmp_59_fu_1161_p1;
wire  signed [20:0] grp_fu_1988_p3;
wire   [20:0] tmp_60_fu_1170_p1;
wire  signed [20:0] grp_fu_1997_p3;
wire   [20:0] tmp_61_fu_1179_p1;
wire  signed [20:0] grp_fu_2006_p3;
wire   [8:0] mul_ln172_2_fu_1255_p0;
wire   [10:0] mul_ln172_2_fu_1255_p1;
wire   [18:0] mul_ln172_2_fu_1255_p2;
wire   [2:0] grp_fu_1017_p2;
wire   [63:0] tmp_s_fu_1275_p11;
wire   [63:0] tmp_21_fu_1302_p11;
wire   [63:0] tmp_22_fu_1329_p11;
wire   [63:0] tmp_23_fu_1356_p11;
wire   [63:0] tmp_24_fu_1383_p11;
wire   [63:0] tmp_25_fu_1410_p11;
wire   [63:0] tmp_26_fu_1437_p11;
wire   [63:0] tmp_27_fu_1464_p11;
wire   [7:0] shl_ln7_fu_1558_p3;
wire   [7:0] or_ln_fu_1572_p3;
wire   [63:0] tmp_28_fu_1586_p11;
wire   [63:0] tmp_30_fu_1622_p11;
wire   [63:0] tmp_31_fu_1649_p11;
wire   [63:0] tmp_32_fu_1676_p11;
wire   [63:0] tmp_33_fu_1703_p11;
wire   [63:0] tmp_34_fu_1730_p11;
wire   [63:0] tmp_35_fu_1757_p11;
wire   [63:0] tmp_36_fu_1784_p11;
wire   [7:0] or_ln4_fu_1811_p3;
wire   [7:0] or_ln5_fu_1824_p3;
wire   [7:0] shl_ln314_1_fu_1837_p3;
wire   [7:0] or_ln315_1_fu_1850_p3;
wire   [7:0] or_ln318_1_fu_1863_p3;
wire   [7:0] or_ln319_1_fu_1876_p3;
wire   [8:0] grp_fu_1889_p0;
wire   [9:0] zext_ln172_fu_1033_p1;
wire   [5:0] grp_fu_1889_p1;
wire   [10:0] grp_fu_1889_p2;
wire   [8:0] grp_fu_1898_p0;
wire   [3:0] grp_fu_1898_p1;
wire   [10:0] grp_fu_1898_p2;
wire   [8:0] grp_fu_1907_p0;
wire   [5:0] grp_fu_1907_p1;
wire   [10:0] grp_fu_1907_p2;
wire   [8:0] grp_fu_1916_p0;
wire   [4:0] grp_fu_1916_p1;
wire   [10:0] grp_fu_1916_p2;
wire   [8:0] grp_fu_1925_p0;
wire   [5:0] grp_fu_1925_p1;
wire   [10:0] grp_fu_1925_p2;
wire   [8:0] grp_fu_1934_p0;
wire   [4:0] grp_fu_1934_p1;
wire   [10:0] grp_fu_1934_p2;
wire   [8:0] grp_fu_1943_p0;
wire   [5:0] grp_fu_1943_p1;
wire   [10:0] grp_fu_1943_p2;
wire   [8:0] grp_fu_1952_p0;
wire   [9:0] zext_ln172_8_fu_1036_p1;
wire   [5:0] grp_fu_1952_p1;
wire   [10:0] grp_fu_1952_p2;
wire   [8:0] grp_fu_1961_p0;
wire   [3:0] grp_fu_1961_p1;
wire   [10:0] grp_fu_1961_p2;
wire   [8:0] grp_fu_1970_p0;
wire   [5:0] grp_fu_1970_p1;
wire   [10:0] grp_fu_1970_p2;
wire   [8:0] grp_fu_1979_p0;
wire   [4:0] grp_fu_1979_p1;
wire   [10:0] grp_fu_1979_p2;
wire   [8:0] grp_fu_1988_p0;
wire   [5:0] grp_fu_1988_p1;
wire   [10:0] grp_fu_1988_p2;
wire   [8:0] grp_fu_1997_p0;
wire   [4:0] grp_fu_1997_p1;
wire   [10:0] grp_fu_1997_p2;
wire   [8:0] grp_fu_2006_p0;
wire   [5:0] grp_fu_2006_p1;
wire   [10:0] grp_fu_2006_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter3_stage2;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [18:0] mul_ln172_2_fu_1255_p00;
wire   [18:0] mul_ln172_fu_1105_p00;
reg    ap_condition_1252;
reg    ap_condition_1255;
reg    ap_condition_1258;
reg    ap_condition_1261;
reg    ap_condition_1264;
reg    ap_condition_1268;
reg    ap_condition_1272;
reg    ap_condition_1276;
reg    ap_condition_1280;
reg    ap_condition_1284;
wire   [2:0] tmp_s_fu_1275_p1;
wire   [2:0] tmp_s_fu_1275_p3;
wire   [2:0] tmp_s_fu_1275_p5;
wire   [2:0] tmp_s_fu_1275_p7;
wire  signed [2:0] tmp_s_fu_1275_p9;
wire   [2:0] tmp_21_fu_1302_p1;
wire  signed [2:0] tmp_21_fu_1302_p3;
wire   [2:0] tmp_21_fu_1302_p5;
wire   [2:0] tmp_21_fu_1302_p7;
wire   [2:0] tmp_21_fu_1302_p9;
wire   [2:0] tmp_22_fu_1329_p1;
wire   [2:0] tmp_22_fu_1329_p3;
wire  signed [2:0] tmp_22_fu_1329_p5;
wire   [2:0] tmp_22_fu_1329_p7;
wire   [2:0] tmp_22_fu_1329_p9;
wire   [2:0] tmp_23_fu_1356_p1;
wire   [2:0] tmp_23_fu_1356_p3;
wire   [2:0] tmp_23_fu_1356_p5;
wire   [2:0] tmp_23_fu_1356_p7;
wire  signed [2:0] tmp_23_fu_1356_p9;
wire  signed [2:0] tmp_24_fu_1383_p1;
wire   [2:0] tmp_24_fu_1383_p3;
wire   [2:0] tmp_24_fu_1383_p5;
wire   [2:0] tmp_24_fu_1383_p7;
wire   [2:0] tmp_24_fu_1383_p9;
wire   [2:0] tmp_25_fu_1410_p1;
wire   [2:0] tmp_25_fu_1410_p3;
wire  signed [2:0] tmp_25_fu_1410_p5;
wire   [2:0] tmp_25_fu_1410_p7;
wire   [2:0] tmp_25_fu_1410_p9;
wire   [2:0] tmp_26_fu_1437_p1;
wire   [2:0] tmp_26_fu_1437_p3;
wire   [2:0] tmp_26_fu_1437_p5;
wire  signed [2:0] tmp_26_fu_1437_p7;
wire   [2:0] tmp_26_fu_1437_p9;
wire  signed [2:0] tmp_27_fu_1464_p1;
wire   [2:0] tmp_27_fu_1464_p3;
wire   [2:0] tmp_27_fu_1464_p5;
wire   [2:0] tmp_27_fu_1464_p7;
wire   [2:0] tmp_27_fu_1464_p9;
wire   [2:0] tmp_28_fu_1586_p1;
wire   [2:0] tmp_28_fu_1586_p3;
wire   [2:0] tmp_28_fu_1586_p5;
wire   [2:0] tmp_28_fu_1586_p7;
wire  signed [2:0] tmp_28_fu_1586_p9;
wire   [2:0] tmp_30_fu_1622_p1;
wire  signed [2:0] tmp_30_fu_1622_p3;
wire   [2:0] tmp_30_fu_1622_p5;
wire   [2:0] tmp_30_fu_1622_p7;
wire   [2:0] tmp_30_fu_1622_p9;
wire   [2:0] tmp_31_fu_1649_p1;
wire   [2:0] tmp_31_fu_1649_p3;
wire  signed [2:0] tmp_31_fu_1649_p5;
wire   [2:0] tmp_31_fu_1649_p7;
wire   [2:0] tmp_31_fu_1649_p9;
wire   [2:0] tmp_32_fu_1676_p1;
wire   [2:0] tmp_32_fu_1676_p3;
wire   [2:0] tmp_32_fu_1676_p5;
wire   [2:0] tmp_32_fu_1676_p7;
wire  signed [2:0] tmp_32_fu_1676_p9;
wire  signed [2:0] tmp_33_fu_1703_p1;
wire   [2:0] tmp_33_fu_1703_p3;
wire   [2:0] tmp_33_fu_1703_p5;
wire   [2:0] tmp_33_fu_1703_p7;
wire   [2:0] tmp_33_fu_1703_p9;
wire   [2:0] tmp_34_fu_1730_p1;
wire   [2:0] tmp_34_fu_1730_p3;
wire  signed [2:0] tmp_34_fu_1730_p5;
wire   [2:0] tmp_34_fu_1730_p7;
wire   [2:0] tmp_34_fu_1730_p9;
wire   [2:0] tmp_35_fu_1757_p1;
wire   [2:0] tmp_35_fu_1757_p3;
wire   [2:0] tmp_35_fu_1757_p5;
wire  signed [2:0] tmp_35_fu_1757_p7;
wire   [2:0] tmp_35_fu_1757_p9;
wire  signed [2:0] tmp_36_fu_1784_p1;
wire   [2:0] tmp_36_fu_1784_p3;
wire   [2:0] tmp_36_fu_1784_p5;
wire   [2:0] tmp_36_fu_1784_p7;
wire   [2:0] tmp_36_fu_1784_p9;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_120 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U443(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_993_p0),.din1(grp_fu_993_p1),.ce(1'b1),.dout(grp_fu_993_p2));
fft1D_512_urem_9ns_4ns_3_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_9ns_4ns_3_13_1_U444(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1017_p0),.din1(grp_fu_1017_p1),.ce(1'b1),.dout(grp_fu_1017_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U445(.din0(mul_ln172_fu_1105_p0),.din1(mul_ln172_fu_1105_p1),.dout(mul_ln172_fu_1105_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U446(.din0(mul_ln172_2_fu_1255_p0),.din1(mul_ln172_2_fu_1255_p1),.dout(mul_ln172_2_fu_1255_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U447(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_s_fu_1275_p11),.sel(trunc_ln172_reg_2093),.dout(tmp_s_fu_1275_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U448(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_21_fu_1302_p11),.sel(trunc_ln172_reg_2093),.dout(tmp_21_fu_1302_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U449(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_22_fu_1329_p11),.sel(trunc_ln172_reg_2093),.dout(tmp_22_fu_1329_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U450(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_23_fu_1356_p11),.sel(trunc_ln172_reg_2093),.dout(tmp_23_fu_1356_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U451(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_24_fu_1383_p11),.sel(trunc_ln172_reg_2093),.dout(tmp_24_fu_1383_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U452(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_25_fu_1410_p11),.sel(trunc_ln172_reg_2093),.dout(tmp_25_fu_1410_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U453(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_26_fu_1437_p11),.sel(trunc_ln172_reg_2093),.dout(tmp_26_fu_1437_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U454(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_27_fu_1464_p11),.sel(trunc_ln172_reg_2093),.dout(tmp_27_fu_1464_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U455(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_28_fu_1586_p11),.sel(trunc_ln172_2_reg_2345),.dout(tmp_28_fu_1586_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h3 ),.din0_WIDTH( 64 ),.CASE1( 3'h4 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U456(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_30_fu_1622_p11),.sel(trunc_ln172_2_reg_2345),.dout(tmp_30_fu_1622_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U457(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_31_fu_1649_p11),.sel(trunc_ln172_2_reg_2345),.dout(tmp_31_fu_1649_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U458(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_32_fu_1676_p11),.sel(trunc_ln172_2_reg_2345),.dout(tmp_32_fu_1676_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U459(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.def(tmp_33_fu_1703_p11),.sel(trunc_ln172_2_reg_2345),.dout(tmp_33_fu_1703_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 64 ),.CASE1( 3'h3 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U460(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_34_fu_1730_p11),.sel(trunc_ln172_2_reg_2345),.dout(tmp_34_fu_1730_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h3 ),.din2_WIDTH( 64 ),.CASE3( 3'h4 ),.din3_WIDTH( 64 ),.CASE4( 3'h0 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U461(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_35_fu_1757_p11),.sel(trunc_ln172_2_reg_2345),.dout(tmp_35_fu_1757_p13));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_11_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_11_3_64_1_1_U462(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.def(tmp_36_fu_1784_p11),.sel(trunc_ln172_2_reg_2345),.dout(tmp_36_fu_1784_p13));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U463(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1889_p0),.din1(grp_fu_1889_p1),.din2(grp_fu_1889_p2),.ce(1'b1),.dout(grp_fu_1889_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U464(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1898_p0),.din1(grp_fu_1898_p1),.din2(grp_fu_1898_p2),.ce(1'b1),.dout(grp_fu_1898_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U465(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1907_p0),.din1(grp_fu_1907_p1),.din2(grp_fu_1907_p2),.ce(1'b1),.dout(grp_fu_1907_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U466(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1916_p0),.din1(grp_fu_1916_p1),.din2(grp_fu_1916_p2),.ce(1'b1),.dout(grp_fu_1916_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U467(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1925_p0),.din1(grp_fu_1925_p1),.din2(grp_fu_1925_p2),.ce(1'b1),.dout(grp_fu_1925_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U468(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1934_p0),.din1(grp_fu_1934_p1),.din2(grp_fu_1934_p2),.ce(1'b1),.dout(grp_fu_1934_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U469(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1943_p0),.din1(grp_fu_1943_p1),.din2(grp_fu_1943_p2),.ce(1'b1),.dout(grp_fu_1943_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U470(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1952_p0),.din1(grp_fu_1952_p1),.din2(grp_fu_1952_p2),.ce(1'b1),.dout(grp_fu_1952_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U471(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1961_p0),.din1(grp_fu_1961_p1),.din2(grp_fu_1961_p2),.ce(1'b1),.dout(grp_fu_1961_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U472(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1970_p0),.din1(grp_fu_1970_p1),.din2(grp_fu_1970_p2),.ce(1'b1),.dout(grp_fu_1970_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U473(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1979_p0),.din1(grp_fu_1979_p1),.din2(grp_fu_1979_p2),.ce(1'b1),.dout(grp_fu_1979_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U474(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1988_p0),.din1(grp_fu_1988_p1),.din2(grp_fu_1988_p2),.ce(1'b1),.dout(grp_fu_1988_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U475(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1997_p0),.din1(grp_fu_1997_p1),.din2(grp_fu_1997_p2),.ce(1'b1),.dout(grp_fu_1997_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U476(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2006_p0),.din1(grp_fu_2006_p1),.din2(grp_fu_2006_p2),.ce(1'b1),.dout(grp_fu_2006_p3));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage2) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage2) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage2) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_120 <= 7'd0;
    end else if (((tmp_reg_2030 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tid_fu_120 <= add_ln309_fu_1023_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        offset_2_reg_2046[8 : 1] <= offset_2_fu_1008_p4[8 : 1];
        offset_2_reg_2046_pp0_iter1_reg[8 : 1] <= offset_2_reg_2046[8 : 1];
        offset_2_reg_2046_pp0_iter2_reg[8 : 1] <= offset_2_reg_2046_pp0_iter1_reg[8 : 1];
        tmp_54_reg_2340 <= {{mul_ln172_2_fu_1255_p2[18:12]}};
        trunc_ln172_2_reg_2345 <= trunc_ln172_2_fu_1271_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        offset_reg_2039 <= offset_fu_985_p3;
        offset_reg_2039_pp0_iter1_reg <= offset_reg_2039;
        offset_reg_2039_pp0_iter2_reg <= offset_reg_2039_pp0_iter1_reg;
        tid_2_reg_2022 <= ap_sig_allocacmp_tid_2;
        tid_2_reg_2022_pp0_iter1_reg <= tid_2_reg_2022;
        tid_2_reg_2022_pp0_iter2_reg <= tid_2_reg_2022_pp0_iter1_reg;
        tid_2_reg_2022_pp0_iter3_reg <= tid_2_reg_2022_pp0_iter2_reg;
        tmp_44_reg_2034 <= {{ap_sig_allocacmp_tid_2[5:3]}};
        tmp_45_reg_2088 <= {{mul_ln172_fu_1105_p2[18:12]}};
        tmp_55_reg_2105 <= {{tmp_55_fu_1125_p1[20:13]}};
        tmp_56_reg_2110 <= {{tmp_56_fu_1134_p1[20:13]}};
        tmp_57_reg_2115 <= {{tmp_57_fu_1143_p1[20:13]}};
        tmp_58_reg_2120 <= {{tmp_58_fu_1152_p1[20:13]}};
        tmp_59_reg_2125 <= {{tmp_59_fu_1161_p1[20:13]}};
        tmp_60_reg_2130 <= {{tmp_60_fu_1170_p1[20:13]}};
        tmp_61_reg_2135 <= {{tmp_61_fu_1179_p1[20:13]}};
        tmp_reg_2030 <= ap_sig_allocacmp_tid_2[32'd6];
        tmp_reg_2030_pp0_iter1_reg <= tmp_reg_2030;
        tmp_reg_2030_pp0_iter2_reg <= tmp_reg_2030_pp0_iter1_reg;
        tmp_reg_2030_pp0_iter3_reg <= tmp_reg_2030_pp0_iter2_reg;
        trunc_ln172_reg_2093 <= trunc_ln172_fu_1121_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_21_reg_2362 <= tmp_21_fu_1302_p13;
        tmp_22_reg_2367 <= tmp_22_fu_1329_p13;
        tmp_23_reg_2372 <= tmp_23_fu_1356_p13;
        tmp_24_reg_2377 <= tmp_24_fu_1383_p13;
        tmp_25_reg_2382 <= tmp_25_fu_1410_p13;
        tmp_26_reg_2387 <= tmp_26_fu_1437_p13;
        tmp_27_reg_2392 <= tmp_27_fu_1464_p13;
        tmp_s_reg_2357 <= tmp_s_fu_1275_p13;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_28_reg_2603 <= tmp_28_fu_1586_p13;
        tmp_29_reg_2608 <= {{tid_2_reg_2022_pp0_iter3_reg[5:1]}};
        tmp_30_reg_2616 <= tmp_30_fu_1622_p13;
        tmp_31_reg_2621 <= tmp_31_fu_1649_p13;
        tmp_32_reg_2626 <= tmp_32_fu_1676_p13;
        tmp_33_reg_2631 <= tmp_33_fu_1703_p13;
        tmp_34_reg_2636 <= tmp_34_fu_1730_p13;
        tmp_35_reg_2641 <= tmp_35_fu_1757_p13;
        tmp_36_reg_2646 <= tmp_36_fu_1784_p13;
        tmp_46_reg_2053 <= {{tmp_46_fu_1039_p1[20:13]}};
        tmp_47_reg_2058 <= {{tmp_47_fu_1048_p1[20:13]}};
        tmp_48_reg_2063 <= {{tmp_48_fu_1057_p1[20:13]}};
        tmp_49_reg_2068 <= {{tmp_49_fu_1066_p1[20:13]}};
        tmp_50_reg_2073 <= {{tmp_50_fu_1075_p1[20:13]}};
        tmp_51_reg_2078 <= {{tmp_51_fu_1084_p1[20:13]}};
        tmp_52_reg_2083 <= {{tmp_52_fu_1093_p1[20:13]}};
        trunc_ln314_reg_2597 <= trunc_ln314_fu_1555_p1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_address0_local = zext_ln319_3_fu_1883_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address0_local = zext_ln315_3_fu_1857_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address0_local = zext_ln319_2_fu_1831_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address0_local = zext_ln315_2_fu_1580_p1;
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_address1_local = zext_ln318_3_fu_1870_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_address1_local = zext_ln314_1_fu_1844_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_address1_local = zext_ln318_2_fu_1818_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_address1_local = zext_ln314_fu_1566_p1;
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_d0_local = tmp_36_reg_2646;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d0_local = tmp_32_reg_2626;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d0_local = tmp_27_reg_2392;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_d0_local = tmp_23_reg_2372;
    end else begin
        DATA_x_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_d1_local = tmp_35_reg_2641;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_d1_local = tmp_31_reg_2621;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_d1_local = tmp_26_reg_2387;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_1_d1_local = tmp_22_reg_2367;
    end else begin
        DATA_x_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_we0_local = 1'b1;
    end else begin
        DATA_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_1_we1_local = 1'b1;
    end else begin
        DATA_x_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_address0_local = zext_ln319_3_fu_1883_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address0_local = zext_ln315_3_fu_1857_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address0_local = zext_ln319_2_fu_1831_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_address0_local = zext_ln315_2_fu_1580_p1;
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_address1_local = zext_ln318_3_fu_1870_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_address1_local = zext_ln314_1_fu_1844_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_address1_local = zext_ln318_2_fu_1818_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_address1_local = zext_ln314_fu_1566_p1;
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_d0_local = tmp_34_reg_2636;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d0_local = tmp_30_reg_2616;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d0_local = tmp_25_reg_2382;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_d0_local = tmp_21_reg_2362;
    end else begin
        DATA_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_d1_local = tmp_33_reg_2631;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_d1_local = tmp_28_reg_2603;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_d1_local = tmp_24_reg_2377;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        DATA_x_d1_local = tmp_s_reg_2357;
    end else begin
        DATA_x_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_we0_local = 1'b1;
    end else begin
        DATA_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_x_we1_local = 1'b1;
    end else begin
        DATA_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_2030 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_reg_2030_pp0_iter3_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter3_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to4 = 1'b1;
    end else begin
        ap_idle_pp0_1to4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_2 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_2 = tid_fu_120;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1276)) begin
            smem_1_address0_local = zext_ln318_1_fu_1523_p1;
        end else if ((1'b1 == ap_condition_1272)) begin
            smem_1_address0_local = zext_ln316_1_fu_1507_p1;
        end else if ((1'b1 == ap_condition_1268)) begin
            smem_1_address0_local = zext_ln172_3_fu_1491_p1;
        end else if ((1'b1 == ap_condition_1264)) begin
            smem_1_address0_local = zext_ln321_fu_1244_p1;
        end else if ((1'b1 == ap_condition_1261)) begin
            smem_1_address0_local = zext_ln320_fu_1236_p1;
        end else if ((1'b1 == ap_condition_1258)) begin
            smem_1_address0_local = zext_ln319_fu_1228_p1;
        end else if ((1'b1 == ap_condition_1255)) begin
            smem_1_address0_local = zext_ln317_fu_1212_p1;
        end else if ((1'b1 == ap_condition_1252)) begin
            smem_1_address0_local = zext_ln315_fu_1196_p1;
        end else begin
            smem_1_address0_local = 'bx;
        end
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1276)) begin
            smem_1_address1_local = zext_ln321_1_fu_1547_p1;
        end else if ((1'b1 == ap_condition_1284)) begin
            smem_1_address1_local = zext_ln320_1_fu_1539_p1;
        end else if ((1'b1 == ap_condition_1272)) begin
            smem_1_address1_local = zext_ln319_1_fu_1531_p1;
        end else if ((1'b1 == ap_condition_1268)) begin
            smem_1_address1_local = zext_ln317_1_fu_1515_p1;
        end else if ((1'b1 == ap_condition_1280)) begin
            smem_1_address1_local = zext_ln315_1_fu_1499_p1;
        end else if ((1'b1 == ap_condition_1264)) begin
            smem_1_address1_local = zext_ln318_fu_1220_p1;
        end else if ((1'b1 == ap_condition_1258)) begin
            smem_1_address1_local = zext_ln316_fu_1204_p1;
        end else if ((1'b1 == ap_condition_1255)) begin
            smem_1_address1_local = zext_ln172_2_fu_1188_p1;
        end else begin
            smem_1_address1_local = 'bx;
        end
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_2345 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_2345 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_2345 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd0)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_2345 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_2345 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_2345 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_2345 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_2345 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd0)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1268)) begin
            smem_2_address0_local = zext_ln318_1_fu_1523_p1;
        end else if ((1'b1 == ap_condition_1280)) begin
            smem_2_address0_local = zext_ln316_1_fu_1507_p1;
        end else if ((1'b1 == ap_condition_1284)) begin
            smem_2_address0_local = zext_ln172_3_fu_1491_p1;
        end else if ((1'b1 == ap_condition_1255)) begin
            smem_2_address0_local = zext_ln321_fu_1244_p1;
        end else if ((1'b1 == ap_condition_1258)) begin
            smem_2_address0_local = zext_ln320_fu_1236_p1;
        end else if ((1'b1 == ap_condition_1252)) begin
            smem_2_address0_local = zext_ln319_fu_1228_p1;
        end else if ((1'b1 == ap_condition_1261)) begin
            smem_2_address0_local = zext_ln317_fu_1212_p1;
        end else if ((1'b1 == ap_condition_1264)) begin
            smem_2_address0_local = zext_ln315_fu_1196_p1;
        end else begin
            smem_2_address0_local = 'bx;
        end
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1268)) begin
            smem_2_address1_local = zext_ln321_1_fu_1547_p1;
        end else if ((1'b1 == ap_condition_1272)) begin
            smem_2_address1_local = zext_ln320_1_fu_1539_p1;
        end else if ((1'b1 == ap_condition_1280)) begin
            smem_2_address1_local = zext_ln319_1_fu_1531_p1;
        end else if ((1'b1 == ap_condition_1284)) begin
            smem_2_address1_local = zext_ln317_1_fu_1515_p1;
        end else if ((1'b1 == ap_condition_1276)) begin
            smem_2_address1_local = zext_ln315_1_fu_1499_p1;
        end else if ((1'b1 == ap_condition_1255)) begin
            smem_2_address1_local = zext_ln318_fu_1220_p1;
        end else if ((1'b1 == ap_condition_1252)) begin
            smem_2_address1_local = zext_ln316_fu_1204_p1;
        end else if ((1'b1 == ap_condition_1261)) begin
            smem_2_address1_local = zext_ln172_2_fu_1188_p1;
        end else begin
            smem_2_address1_local = 'bx;
        end
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_2345 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_2345 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_2345 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd0)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_2345 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_2345 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_2345 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_2345 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_2345 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd1)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1284)) begin
            smem_3_address0_local = zext_ln318_1_fu_1523_p1;
        end else if ((1'b1 == ap_condition_1276)) begin
            smem_3_address0_local = zext_ln316_1_fu_1507_p1;
        end else if ((1'b1 == ap_condition_1272)) begin
            smem_3_address0_local = zext_ln172_3_fu_1491_p1;
        end else if ((1'b1 == ap_condition_1261)) begin
            smem_3_address0_local = zext_ln321_fu_1244_p1;
        end else if ((1'b1 == ap_condition_1252)) begin
            smem_3_address0_local = zext_ln320_fu_1236_p1;
        end else if ((1'b1 == ap_condition_1264)) begin
            smem_3_address0_local = zext_ln319_fu_1228_p1;
        end else if ((1'b1 == ap_condition_1258)) begin
            smem_3_address0_local = zext_ln317_fu_1212_p1;
        end else if ((1'b1 == ap_condition_1255)) begin
            smem_3_address0_local = zext_ln315_fu_1196_p1;
        end else begin
            smem_3_address0_local = 'bx;
        end
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1284)) begin
            smem_3_address1_local = zext_ln321_1_fu_1547_p1;
        end else if ((1'b1 == ap_condition_1280)) begin
            smem_3_address1_local = zext_ln320_1_fu_1539_p1;
        end else if ((1'b1 == ap_condition_1276)) begin
            smem_3_address1_local = zext_ln319_1_fu_1531_p1;
        end else if ((1'b1 == ap_condition_1272)) begin
            smem_3_address1_local = zext_ln317_1_fu_1515_p1;
        end else if ((1'b1 == ap_condition_1268)) begin
            smem_3_address1_local = zext_ln315_1_fu_1499_p1;
        end else if ((1'b1 == ap_condition_1261)) begin
            smem_3_address1_local = zext_ln318_fu_1220_p1;
        end else if ((1'b1 == ap_condition_1264)) begin
            smem_3_address1_local = zext_ln316_fu_1204_p1;
        end else if ((1'b1 == ap_condition_1258)) begin
            smem_3_address1_local = zext_ln172_2_fu_1188_p1;
        end else begin
            smem_3_address1_local = 'bx;
        end
    end else begin
        smem_3_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_2345 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_2345 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_2345 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd0)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_2345 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_2345 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_2345 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_2345 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_2345 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd0)))) begin
        smem_3_ce1_local = 1'b1;
    end else begin
        smem_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1272)) begin
            smem_4_address0_local = zext_ln318_1_fu_1523_p1;
        end else if ((1'b1 == ap_condition_1268)) begin
            smem_4_address0_local = zext_ln316_1_fu_1507_p1;
        end else if ((1'b1 == ap_condition_1280)) begin
            smem_4_address0_local = zext_ln172_3_fu_1491_p1;
        end else if ((1'b1 == ap_condition_1258)) begin
            smem_4_address0_local = zext_ln321_fu_1244_p1;
        end else if ((1'b1 == ap_condition_1264)) begin
            smem_4_address0_local = zext_ln320_fu_1236_p1;
        end else if ((1'b1 == ap_condition_1255)) begin
            smem_4_address0_local = zext_ln319_fu_1228_p1;
        end else if ((1'b1 == ap_condition_1252)) begin
            smem_4_address0_local = zext_ln317_fu_1212_p1;
        end else if ((1'b1 == ap_condition_1261)) begin
            smem_4_address0_local = zext_ln315_fu_1196_p1;
        end else begin
            smem_4_address0_local = 'bx;
        end
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1272)) begin
            smem_4_address1_local = zext_ln321_1_fu_1547_p1;
        end else if ((1'b1 == ap_condition_1276)) begin
            smem_4_address1_local = zext_ln320_1_fu_1539_p1;
        end else if ((1'b1 == ap_condition_1268)) begin
            smem_4_address1_local = zext_ln319_1_fu_1531_p1;
        end else if ((1'b1 == ap_condition_1280)) begin
            smem_4_address1_local = zext_ln317_1_fu_1515_p1;
        end else if ((1'b1 == ap_condition_1284)) begin
            smem_4_address1_local = zext_ln315_1_fu_1499_p1;
        end else if ((1'b1 == ap_condition_1258)) begin
            smem_4_address1_local = zext_ln318_fu_1220_p1;
        end else if ((1'b1 == ap_condition_1255)) begin
            smem_4_address1_local = zext_ln316_fu_1204_p1;
        end else if ((1'b1 == ap_condition_1252)) begin
            smem_4_address1_local = zext_ln172_2_fu_1188_p1;
        end else begin
            smem_4_address1_local = 'bx;
        end
    end else begin
        smem_4_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_2345 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_2345 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_2345 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd0)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_2345 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_2345 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_2345 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_2345 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_2345 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd1)))) begin
        smem_4_ce1_local = 1'b1;
    end else begin
        smem_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1280)) begin
            smem_address0_local = zext_ln318_1_fu_1523_p1;
        end else if ((1'b1 == ap_condition_1284)) begin
            smem_address0_local = zext_ln316_1_fu_1507_p1;
        end else if ((1'b1 == ap_condition_1276)) begin
            smem_address0_local = zext_ln172_3_fu_1491_p1;
        end else if ((1'b1 == ap_condition_1252)) begin
            smem_address0_local = zext_ln321_fu_1244_p1;
        end else if ((1'b1 == ap_condition_1255)) begin
            smem_address0_local = zext_ln320_fu_1236_p1;
        end else if ((1'b1 == ap_condition_1261)) begin
            smem_address0_local = zext_ln319_fu_1228_p1;
        end else if ((1'b1 == ap_condition_1264)) begin
            smem_address0_local = zext_ln317_fu_1212_p1;
        end else if ((1'b1 == ap_condition_1258)) begin
            smem_address0_local = zext_ln315_fu_1196_p1;
        end else begin
            smem_address0_local = 'bx;
        end
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if ((1'b1 == ap_condition_1280)) begin
            smem_address1_local = zext_ln321_1_fu_1547_p1;
        end else if ((1'b1 == ap_condition_1268)) begin
            smem_address1_local = zext_ln320_1_fu_1539_p1;
        end else if ((1'b1 == ap_condition_1284)) begin
            smem_address1_local = zext_ln319_1_fu_1531_p1;
        end else if ((1'b1 == ap_condition_1276)) begin
            smem_address1_local = zext_ln317_1_fu_1515_p1;
        end else if ((1'b1 == ap_condition_1272)) begin
            smem_address1_local = zext_ln315_1_fu_1499_p1;
        end else if ((1'b1 == ap_condition_1252)) begin
            smem_address1_local = zext_ln318_fu_1220_p1;
        end else if ((1'b1 == ap_condition_1261)) begin
            smem_address1_local = zext_ln316_fu_1204_p1;
        end else if ((1'b1 == ap_condition_1264)) begin
            smem_address1_local = zext_ln172_2_fu_1188_p1;
        end else begin
            smem_address1_local = 'bx;
        end
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_2345 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_2345 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_2345 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd1)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd0)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_2345 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_2345 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_2345 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_2345 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln172_2_reg_2345 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd2)) | ((1'b0 == ap_block_pp0_stage1_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd0)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((1'b1 == ap_condition_exit_pp0_iter3_stage2) & (ap_idle_pp0_0to2 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign DATA_x_1_address0 = DATA_x_1_address0_local;
assign DATA_x_1_address1 = DATA_x_1_address1_local;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_ce1 = DATA_x_1_ce1_local;
assign DATA_x_1_d0 = DATA_x_1_d0_local;
assign DATA_x_1_d1 = DATA_x_1_d1_local;
assign DATA_x_1_we0 = DATA_x_1_we0_local;
assign DATA_x_1_we1 = DATA_x_1_we1_local;
assign DATA_x_address0 = DATA_x_address0_local;
assign DATA_x_address1 = DATA_x_address1_local;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign DATA_x_d0 = DATA_x_d0_local;
assign DATA_x_d1 = DATA_x_d1_local;
assign DATA_x_we0 = DATA_x_we0_local;
assign DATA_x_we1 = DATA_x_we1_local;
assign add_ln309_fu_1023_p2 = (tid_2_reg_2022 + 7'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
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
always @ (*) begin
    ap_condition_1252 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd4));
end
always @ (*) begin
    ap_condition_1255 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd1));
end
always @ (*) begin
    ap_condition_1258 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd3));
end
always @ (*) begin
    ap_condition_1261 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd2));
end
always @ (*) begin
    ap_condition_1264 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_reg_2093 == 3'd0));
end
always @ (*) begin
    ap_condition_1268 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_2_reg_2345 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1272 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_2_reg_2345 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1276 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_2_reg_2345 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1280 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_2_reg_2345 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1284 = ((1'b0 == ap_block_pp0_stage2) & (trunc_ln172_2_reg_2345 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign grp_fu_1017_p0 = {{{tmp_44_reg_2034}, {tmp_53_fu_999_p4}}, {1'd1}};
assign grp_fu_1017_p1 = 9'd5;
assign grp_fu_1889_p0 = zext_ln172_fu_1033_p1;
assign grp_fu_1889_p1 = 10'd32;
assign grp_fu_1889_p2 = 21'd1639;
assign grp_fu_1898_p0 = zext_ln172_fu_1033_p1;
assign grp_fu_1898_p1 = 10'd8;
assign grp_fu_1898_p2 = 21'd1639;
assign grp_fu_1907_p0 = zext_ln172_fu_1033_p1;
assign grp_fu_1907_p1 = 10'd40;
assign grp_fu_1907_p2 = 21'd1639;
assign grp_fu_1916_p0 = zext_ln172_fu_1033_p1;
assign grp_fu_1916_p1 = 10'd16;
assign grp_fu_1916_p2 = 21'd1639;
assign grp_fu_1925_p0 = zext_ln172_fu_1033_p1;
assign grp_fu_1925_p1 = 10'd48;
assign grp_fu_1925_p2 = 21'd1639;
assign grp_fu_1934_p0 = zext_ln172_fu_1033_p1;
assign grp_fu_1934_p1 = 10'd24;
assign grp_fu_1934_p2 = 21'd1639;
assign grp_fu_1943_p0 = zext_ln172_fu_1033_p1;
assign grp_fu_1943_p1 = 10'd56;
assign grp_fu_1943_p2 = 21'd1639;
assign grp_fu_1952_p0 = zext_ln172_8_fu_1036_p1;
assign grp_fu_1952_p1 = 10'd32;
assign grp_fu_1952_p2 = 21'd1639;
assign grp_fu_1961_p0 = zext_ln172_8_fu_1036_p1;
assign grp_fu_1961_p1 = 10'd8;
assign grp_fu_1961_p2 = 21'd1639;
assign grp_fu_1970_p0 = zext_ln172_8_fu_1036_p1;
assign grp_fu_1970_p1 = 10'd40;
assign grp_fu_1970_p2 = 21'd1639;
assign grp_fu_1979_p0 = zext_ln172_8_fu_1036_p1;
assign grp_fu_1979_p1 = 10'd16;
assign grp_fu_1979_p2 = 21'd1639;
assign grp_fu_1988_p0 = zext_ln172_8_fu_1036_p1;
assign grp_fu_1988_p1 = 10'd48;
assign grp_fu_1988_p2 = 21'd1639;
assign grp_fu_1997_p0 = zext_ln172_8_fu_1036_p1;
assign grp_fu_1997_p1 = 10'd24;
assign grp_fu_1997_p2 = 21'd1639;
assign grp_fu_2006_p0 = zext_ln172_8_fu_1036_p1;
assign grp_fu_2006_p1 = 10'd56;
assign grp_fu_2006_p2 = 21'd1639;
assign grp_fu_993_p0 = {{tmp_44_fu_971_p4}, {trunc_ln312_fu_981_p1}};
assign grp_fu_993_p1 = 9'd5;
assign mul_ln172_2_fu_1255_p0 = mul_ln172_2_fu_1255_p00;
assign mul_ln172_2_fu_1255_p00 = offset_2_reg_2046_pp0_iter2_reg;
assign mul_ln172_2_fu_1255_p1 = 19'd820;
assign mul_ln172_fu_1105_p0 = mul_ln172_fu_1105_p00;
assign mul_ln172_fu_1105_p00 = offset_reg_2039_pp0_iter2_reg;
assign mul_ln172_fu_1105_p1 = 19'd820;
assign offset_2_fu_1008_p4 = {{{tmp_44_reg_2034}, {tmp_53_fu_999_p4}}, {1'd1}};
assign offset_fu_985_p3 = {{tmp_44_fu_971_p4}, {trunc_ln312_fu_981_p1}};
assign or_ln315_1_fu_1850_p3 = {{tmp_29_reg_2608}, {3'd6}};
assign or_ln318_1_fu_1863_p3 = {{tmp_29_reg_2608}, {3'd5}};
assign or_ln319_1_fu_1876_p3 = {{tmp_29_reg_2608}, {3'd7}};
assign or_ln4_fu_1811_p3 = {{trunc_ln314_reg_2597}, {2'd1}};
assign or_ln5_fu_1824_p3 = {{trunc_ln314_reg_2597}, {2'd3}};
assign or_ln_fu_1572_p3 = {{trunc_ln314_fu_1555_p1}, {2'd2}};
assign shl_ln314_1_fu_1837_p3 = {{tmp_29_reg_2608}, {3'd4}};
assign shl_ln7_fu_1558_p3 = {{trunc_ln314_fu_1555_p1}, {2'd0}};
assign smem_1_address0 = smem_1_address0_local;
assign smem_1_address1 = smem_1_address1_local;
assign smem_1_ce0 = smem_1_ce0_local;
assign smem_1_ce1 = smem_1_ce1_local;
assign smem_2_address0 = smem_2_address0_local;
assign smem_2_address1 = smem_2_address1_local;
assign smem_2_ce0 = smem_2_ce0_local;
assign smem_2_ce1 = smem_2_ce1_local;
assign smem_3_address0 = smem_3_address0_local;
assign smem_3_address1 = smem_3_address1_local;
assign smem_3_ce0 = smem_3_ce0_local;
assign smem_3_ce1 = smem_3_ce1_local;
assign smem_4_address0 = smem_4_address0_local;
assign smem_4_address1 = smem_4_address1_local;
assign smem_4_ce0 = smem_4_ce0_local;
assign smem_4_ce1 = smem_4_ce1_local;
assign smem_address0 = smem_address0_local;
assign smem_address1 = smem_address1_local;
assign smem_ce0 = smem_ce0_local;
assign smem_ce1 = smem_ce1_local;
assign tmp_21_fu_1302_p11 = 'bx;
assign tmp_22_fu_1329_p11 = 'bx;
assign tmp_23_fu_1356_p11 = 'bx;
assign tmp_24_fu_1383_p11 = 'bx;
assign tmp_25_fu_1410_p11 = 'bx;
assign tmp_26_fu_1437_p11 = 'bx;
assign tmp_27_fu_1464_p11 = 'bx;
assign tmp_28_fu_1586_p11 = 'bx;
assign tmp_30_fu_1622_p11 = 'bx;
assign tmp_31_fu_1649_p11 = 'bx;
assign tmp_32_fu_1676_p11 = 'bx;
assign tmp_33_fu_1703_p11 = 'bx;
assign tmp_34_fu_1730_p11 = 'bx;
assign tmp_35_fu_1757_p11 = 'bx;
assign tmp_36_fu_1784_p11 = 'bx;
assign tmp_44_fu_971_p4 = {{ap_sig_allocacmp_tid_2[5:3]}};
assign tmp_46_fu_1039_p1 = grp_fu_1889_p3;
assign tmp_47_fu_1048_p1 = grp_fu_1898_p3;
assign tmp_48_fu_1057_p1 = grp_fu_1907_p3;
assign tmp_49_fu_1066_p1 = grp_fu_1916_p3;
assign tmp_50_fu_1075_p1 = grp_fu_1925_p3;
assign tmp_51_fu_1084_p1 = grp_fu_1934_p3;
assign tmp_52_fu_1093_p1 = grp_fu_1943_p3;
assign tmp_53_fu_999_p4 = {{tid_2_reg_2022[5:1]}};
assign tmp_55_fu_1125_p1 = grp_fu_1952_p3;
assign tmp_56_fu_1134_p1 = grp_fu_1961_p3;
assign tmp_57_fu_1143_p1 = grp_fu_1970_p3;
assign tmp_58_fu_1152_p1 = grp_fu_1979_p3;
assign tmp_59_fu_1161_p1 = grp_fu_1988_p3;
assign tmp_60_fu_1170_p1 = grp_fu_1997_p3;
assign tmp_61_fu_1179_p1 = grp_fu_2006_p3;
assign tmp_s_fu_1275_p11 = 'bx;
assign trunc_ln172_2_fu_1271_p1 = grp_fu_1017_p2[2:0];
assign trunc_ln172_fu_1121_p1 = grp_fu_993_p2[2:0];
assign trunc_ln312_fu_981_p1 = ap_sig_allocacmp_tid_2[5:0];
assign trunc_ln314_fu_1555_p1 = tid_2_reg_2022_pp0_iter3_reg[5:0];
assign zext_ln172_2_fu_1188_p1 = tmp_45_reg_2088;
assign zext_ln172_3_fu_1491_p1 = tmp_54_reg_2340;
assign zext_ln172_8_fu_1036_p1 = offset_2_reg_2046_pp0_iter1_reg;
assign zext_ln172_fu_1033_p1 = offset_reg_2039_pp0_iter1_reg;
assign zext_ln314_1_fu_1844_p1 = shl_ln314_1_fu_1837_p3;
assign zext_ln314_fu_1566_p1 = shl_ln7_fu_1558_p3;
assign zext_ln315_1_fu_1499_p1 = tmp_55_reg_2105;
assign zext_ln315_2_fu_1580_p1 = or_ln_fu_1572_p3;
assign zext_ln315_3_fu_1857_p1 = or_ln315_1_fu_1850_p3;
assign zext_ln315_fu_1196_p1 = tmp_46_reg_2053;
assign zext_ln316_1_fu_1507_p1 = tmp_56_reg_2110;
assign zext_ln316_fu_1204_p1 = tmp_47_reg_2058;
assign zext_ln317_1_fu_1515_p1 = tmp_57_reg_2115;
assign zext_ln317_fu_1212_p1 = tmp_48_reg_2063;
assign zext_ln318_1_fu_1523_p1 = tmp_58_reg_2120;
assign zext_ln318_2_fu_1818_p1 = or_ln4_fu_1811_p3;
assign zext_ln318_3_fu_1870_p1 = or_ln318_1_fu_1863_p3;
assign zext_ln318_fu_1220_p1 = tmp_49_reg_2068;
assign zext_ln319_1_fu_1531_p1 = tmp_59_reg_2125;
assign zext_ln319_2_fu_1831_p1 = or_ln5_fu_1824_p3;
assign zext_ln319_3_fu_1883_p1 = or_ln319_1_fu_1876_p3;
assign zext_ln319_fu_1228_p1 = tmp_50_reg_2073;
assign zext_ln320_1_fu_1539_p1 = tmp_60_reg_2130;
assign zext_ln320_fu_1236_p1 = tmp_51_reg_2078;
assign zext_ln321_1_fu_1547_p1 = tmp_61_reg_2135;
assign zext_ln321_fu_1244_p1 = tmp_52_reg_2083;
always @ (posedge ap_clk) begin
    offset_2_reg_2046[0] <= 1'b1;
    offset_2_reg_2046_pp0_iter1_reg[0] <= 1'b1;
    offset_2_reg_2046_pp0_iter2_reg[0] <= 1'b1;
end
endmodule 