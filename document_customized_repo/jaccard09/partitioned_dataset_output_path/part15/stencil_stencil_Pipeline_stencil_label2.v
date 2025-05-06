
module stencil_stencil_Pipeline_stencil_label2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_3_address0,sol_3_ce0,sol_3_we0,sol_3_d0,sol_2_address0,sol_2_ce0,sol_2_we0,sol_2_d0,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,r,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,orig_2_address0,orig_2_ce0,orig_2_q0,orig_2_address1,orig_2_ce1,orig_2_q1,indvars_iv_next173,tmp_4,filter_load_2,filter_load_5,filter_load_1,filter_load_8,filter_load,filter_load_6,filter_load_4,filter_load_3,filter_load_7,orig_3_address0,orig_3_ce0,orig_3_q0,orig_3_address1,orig_3_ce1,orig_3_q1,tmp);  
parameter    ap_ST_fsm_pp0_stage0 = 5'd1;
parameter    ap_ST_fsm_pp0_stage1 = 5'd2;
parameter    ap_ST_fsm_pp0_stage2 = 5'd4;
parameter    ap_ST_fsm_pp0_stage3 = 5'd8;
parameter    ap_ST_fsm_pp0_stage4 = 5'd16;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] sol_3_address0;
output   sol_3_ce0;
output   sol_3_we0;
output  [31:0] sol_3_d0;
output  [10:0] sol_2_address0;
output   sol_2_ce0;
output   sol_2_we0;
output  [31:0] sol_2_d0;
output  [10:0] sol_1_address0;
output   sol_1_ce0;
output   sol_1_we0;
output  [31:0] sol_1_d0;
output  [10:0] sol_0_address0;
output   sol_0_ce0;
output   sol_0_we0;
output  [31:0] sol_0_d0;
input  [6:0] r;
output  [10:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [10:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
output  [10:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [10:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
output  [10:0] orig_2_address0;
output   orig_2_ce0;
input  [31:0] orig_2_q0;
output  [10:0] orig_2_address1;
output   orig_2_ce1;
input  [31:0] orig_2_q1;
input  [6:0] indvars_iv_next173;
input  [6:0] tmp_4;
input  [31:0] filter_load_2;
input  [31:0] filter_load_5;
input  [31:0] filter_load_1;
input  [31:0] filter_load_8;
input  [31:0] filter_load;
input  [31:0] filter_load_6;
input  [31:0] filter_load_4;
input  [31:0] filter_load_3;
input  [31:0] filter_load_7;
output  [10:0] orig_3_address0;
output   orig_3_ce0;
input  [31:0] orig_3_q0;
output  [10:0] orig_3_address1;
output   orig_3_ce1;
input  [31:0] orig_3_q1;
input  [12:0] tmp;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_subdone;
reg   [0:0] icmp_ln8_reg_1913;
reg    ap_condition_exit_pp0_iter0_stage4;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg  signed [31:0] reg_618;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg  signed [31:0] reg_627;
reg  signed [31:0] reg_635;
wire   [31:0] grp_fu_558_p2;
reg   [31:0] reg_642;
wire   [31:0] grp_fu_562_p2;
reg   [31:0] reg_646;
wire    ap_block_pp0_stage4_11001;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] grp_fu_566_p2;
reg   [31:0] reg_650;
wire   [31:0] grp_fu_570_p2;
reg   [31:0] reg_654;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] grp_fu_574_p2;
reg   [31:0] reg_658;
wire   [31:0] grp_fu_578_p2;
reg   [31:0] reg_662;
wire   [31:0] grp_fu_582_p2;
reg   [31:0] reg_666;
wire   [31:0] grp_fu_586_p2;
reg   [31:0] reg_670;
wire   [31:0] grp_fu_590_p2;
reg   [31:0] reg_674;
wire   [31:0] grp_fu_594_p2;
reg   [31:0] reg_678;
wire   [31:0] grp_fu_598_p2;
reg   [31:0] reg_682;
wire   [31:0] grp_fu_602_p2;
reg   [31:0] reg_686;
wire   [31:0] grp_fu_606_p2;
reg   [31:0] reg_690;
wire   [31:0] grp_fu_610_p2;
reg   [31:0] reg_694;
wire   [31:0] grp_fu_614_p2;
reg   [31:0] reg_698;
reg  signed [31:0] reg_702;
reg   [31:0] reg_709;
reg   [31:0] reg_713;
reg   [31:0] reg_717;
reg   [31:0] reg_721;
reg   [31:0] reg_725;
reg   [31:0] reg_729;
reg   [31:0] reg_733;
reg   [31:0] reg_737;
reg   [5:0] c_1_reg_1638;
wire   [63:0] zext_ln12_fu_767_p1;
reg   [63:0] zext_ln12_reg_1643;
reg   [63:0] zext_ln12_reg_1643_pp0_iter1_reg;
wire   [63:0] zext_ln12_1_fu_780_p1;
reg   [63:0] zext_ln12_1_reg_1654;
wire   [63:0] zext_ln12_2_fu_794_p1;
reg   [63:0] zext_ln12_2_reg_1665;
wire   [12:0] or_ln8_cast_fu_809_p1;
reg   [12:0] or_ln8_cast_reg_1695;
wire   [12:0] tmp_7_fu_813_p3;
reg   [12:0] tmp_7_reg_1701;
wire   [12:0] empty_fu_842_p2;
reg   [12:0] empty_reg_1712;
wire   [12:0] zext_ln12_6_fu_856_p1;
reg   [12:0] zext_ln12_6_reg_1720;
reg   [2:0] tmp_s_reg_1731;
reg  signed [31:0] orig_2_load_2_reg_1740;
reg  signed [31:0] orig_3_load_reg_1747;
reg  signed [31:0] orig_3_load_1_reg_1754;
reg  signed [31:0] orig_0_load_3_reg_1766;
wire   [12:0] tmp_8_fu_891_p3;
reg   [12:0] tmp_8_reg_1773;
reg  signed [31:0] orig_1_load_3_reg_1789;
wire   [63:0] zext_ln12_10_fu_984_p1;
reg   [63:0] zext_ln12_10_reg_1806;
reg   [63:0] zext_ln12_10_reg_1806_pp0_iter1_reg;
wire   [63:0] zext_ln12_11_fu_998_p1;
reg   [63:0] zext_ln12_11_reg_1819;
reg  signed [31:0] orig_3_load_2_reg_1844;
reg  signed [31:0] orig_0_load_4_reg_1851;
reg  signed [31:0] orig_0_load_5_reg_1858;
reg  signed [31:0] orig_1_load_4_reg_1865;
reg  signed [31:0] orig_1_load_5_reg_1872;
reg  signed [31:0] orig_2_load_3_reg_1878;
reg  signed [31:0] orig_2_load_4_reg_1884;
reg  signed [31:0] orig_3_load_3_reg_1896;
wire   [0:0] icmp_ln8_fu_1024_p2;
reg   [0:0] icmp_ln8_reg_1913_pp0_iter1_reg;
reg   [10:0] lshr_ln12_9_reg_1927;
reg   [10:0] lshr_ln12_10_reg_1937;
reg   [10:0] lshr_ln12_11_reg_1942;
reg  signed [31:0] orig_2_load_5_reg_1952;
reg  signed [31:0] orig_3_load_4_reg_1959;
reg  signed [31:0] orig_3_load_5_reg_1966;
reg  signed [31:0] orig_0_load_6_reg_1972;
reg  signed [31:0] orig_0_load_reg_1993;
wire   [31:0] add_ln13_5_fu_1168_p2;
reg   [31:0] add_ln13_5_reg_2008;
wire   [31:0] add_ln13_17_fu_1174_p2;
reg   [31:0] add_ln13_17_reg_2013;
reg   [31:0] mul_ln13_28_reg_2018;
reg   [31:0] mul_ln13_36_reg_2023;
reg   [31:0] mul_ln13_37_reg_2028;
reg  signed [31:0] orig_0_load_8_reg_2033;
reg  signed [31:0] orig_1_load_7_reg_2039;
reg  signed [31:0] orig_1_load_8_reg_2044;
reg  signed [31:0] orig_0_load_1_reg_2049;
reg   [31:0] mul_ln13_16_reg_2054;
wire   [31:0] add_ln13_13_fu_1196_p2;
reg   [31:0] add_ln13_13_reg_2059;
wire   [31:0] add_ln13_21_fu_1208_p2;
reg   [31:0] add_ln13_21_reg_2064;
wire   [31:0] add_ln13_24_fu_1214_p2;
reg   [31:0] add_ln13_24_reg_2069;
wire   [31:0] add_ln13_25_fu_1220_p2;
reg   [31:0] add_ln13_25_reg_2074;
wire   [31:0] add_ln13_29_fu_1231_p2;
reg   [31:0] add_ln13_29_reg_2079;
reg   [31:0] mul_ln13_54_reg_2084;
reg   [31:0] mul_ln13_55_reg_2089;
reg   [31:0] mul_ln13_60_reg_2094;
wire   [31:0] add_ln13_6_fu_1243_p2;
reg   [31:0] add_ln13_6_reg_2099;
wire   [31:0] add_ln13_9_fu_1248_p2;
reg   [31:0] add_ln13_9_reg_2104;
wire   [31:0] add_ln13_14_fu_1259_p2;
reg   [31:0] add_ln13_14_reg_2109;
wire   [31:0] add_ln13_16_fu_1264_p2;
reg   [31:0] add_ln13_16_reg_2114;
wire   [31:0] add_ln13_22_fu_1276_p2;
reg   [31:0] add_ln13_22_reg_2119;
wire   [31:0] add_ln13_30_fu_1287_p2;
reg   [31:0] add_ln13_30_reg_2124;
wire   [31:0] add_ln13_37_fu_1297_p2;
reg   [31:0] add_ln13_37_reg_2129;
wire   [31:0] add_ln13_45_fu_1308_p2;
reg   [31:0] add_ln13_45_reg_2134;
reg   [31:0] mul_ln13_62_reg_2139;
reg   [31:0] mul_ln13_2_reg_2144;
reg   [31:0] mul_ln13_7_reg_2149;
wire   [31:0] temp_2_fu_1318_p2;
reg   [31:0] temp_2_reg_2154;
wire   [31:0] temp_3_fu_1327_p2;
reg   [31:0] temp_3_reg_2159;
wire   [31:0] add_ln13_32_fu_1332_p2;
reg   [31:0] add_ln13_32_reg_2164;
wire   [31:0] add_ln13_38_fu_1344_p2;
reg   [31:0] add_ln13_38_reg_2169;
wire   [31:0] add_ln13_40_fu_1349_p2;
reg   [31:0] add_ln13_40_reg_2174;
wire   [31:0] add_ln13_46_fu_1361_p2;
reg   [31:0] add_ln13_46_reg_2179;
wire   [31:0] add_ln13_53_fu_1371_p2;
reg   [31:0] add_ln13_53_reg_2184;
wire   [31:0] add_ln13_61_fu_1382_p2;
reg   [31:0] add_ln13_61_reg_2189;
wire   [31:0] temp_fu_1404_p2;
reg   [31:0] temp_reg_2194;
wire   [31:0] temp_1_fu_1420_p2;
reg   [31:0] temp_1_reg_2199;
wire   [31:0] temp_4_fu_1436_p2;
reg   [31:0] temp_4_reg_2204;
wire   [31:0] temp_5_fu_1452_p2;
reg   [31:0] temp_5_reg_2209;
wire   [31:0] add_ln13_48_fu_1457_p2;
reg   [31:0] add_ln13_48_reg_2214;
wire   [31:0] add_ln13_49_fu_1463_p2;
reg   [31:0] add_ln13_49_reg_2219;
wire   [31:0] add_ln13_54_fu_1473_p2;
reg   [31:0] add_ln13_54_reg_2224;
wire   [31:0] add_ln13_56_fu_1478_p2;
reg   [31:0] add_ln13_56_reg_2229;
wire   [31:0] add_ln13_57_fu_1484_p2;
reg   [31:0] add_ln13_57_reg_2234;
wire   [31:0] add_ln13_62_fu_1496_p2;
reg   [31:0] add_ln13_62_reg_2239;
wire   [31:0] temp_6_fu_1505_p2;
reg   [31:0] temp_6_reg_2244;
wire   [31:0] temp_7_fu_1514_p2;
reg   [31:0] temp_7_reg_2249;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln12_3_fu_837_p1;
wire   [63:0] zext_ln12_7_fu_876_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln12_4_fu_913_p1;
wire   [63:0] zext_ln12_5_fu_932_p1;
wire   [63:0] zext_ln12_8_fu_952_p1;
wire   [63:0] zext_ln12_9_fu_971_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln12_12_fu_1011_p1;
wire   [63:0] zext_ln12_13_fu_1049_p1;
wire   [63:0] zext_ln12_14_fu_1069_p1;
wire   [63:0] zext_ln12_17_fu_1115_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln12_15_fu_1150_p1;
wire   [63:0] zext_ln12_18_fu_1154_p1;
wire   [63:0] zext_ln12_19_fu_1158_p1;
wire    ap_block_pp0_stage4;
reg   [5:0] c_fu_116;
wire   [5:0] add_ln8_fu_1180_p2;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_c_1;
reg    orig_2_ce1_local;
reg   [10:0] orig_2_address1_local;
reg    orig_2_ce0_local;
reg   [10:0] orig_2_address0_local;
reg    orig_0_ce1_local;
reg   [10:0] orig_0_address1_local;
reg    orig_0_ce0_local;
reg   [10:0] orig_0_address0_local;
reg    orig_1_ce1_local;
reg   [10:0] orig_1_address1_local;
reg    orig_1_ce0_local;
reg   [10:0] orig_1_address0_local;
reg    orig_3_ce1_local;
reg   [10:0] orig_3_address1_local;
reg    orig_3_ce0_local;
reg   [10:0] orig_3_address0_local;
reg    sol_2_we0_local;
reg   [31:0] sol_2_d0_local;
reg    sol_2_ce0_local;
reg   [10:0] sol_2_address0_local;
reg    sol_3_we0_local;
reg   [31:0] sol_3_d0_local;
reg    sol_3_ce0_local;
reg   [10:0] sol_3_address0_local;
reg    sol_0_we0_local;
reg   [31:0] sol_0_d0_local;
reg    sol_0_ce0_local;
reg   [10:0] sol_0_address0_local;
reg    sol_1_we0_local;
reg   [31:0] sol_1_d0_local;
reg    sol_1_ce0_local;
reg   [10:0] sol_1_address0_local;
reg  signed [31:0] grp_fu_558_p0;
reg  signed [31:0] grp_fu_558_p1;
reg  signed [31:0] grp_fu_562_p0;
reg  signed [31:0] grp_fu_562_p1;
reg  signed [31:0] grp_fu_566_p0;
reg  signed [31:0] grp_fu_566_p1;
reg  signed [31:0] grp_fu_570_p0;
reg  signed [31:0] grp_fu_570_p1;
reg  signed [31:0] grp_fu_574_p0;
reg  signed [31:0] grp_fu_574_p1;
reg  signed [31:0] grp_fu_578_p0;
reg  signed [31:0] grp_fu_578_p1;
reg  signed [31:0] grp_fu_582_p0;
reg  signed [31:0] grp_fu_582_p1;
reg  signed [31:0] grp_fu_586_p0;
reg  signed [31:0] grp_fu_586_p1;
reg  signed [31:0] grp_fu_590_p0;
reg  signed [31:0] grp_fu_590_p1;
reg  signed [31:0] grp_fu_594_p0;
reg  signed [31:0] grp_fu_594_p1;
reg  signed [31:0] grp_fu_598_p0;
reg  signed [31:0] grp_fu_598_p1;
reg  signed [31:0] grp_fu_602_p0;
reg  signed [31:0] grp_fu_602_p1;
reg  signed [31:0] grp_fu_606_p0;
reg  signed [31:0] grp_fu_606_p1;
reg  signed [31:0] grp_fu_610_p0;
reg  signed [31:0] grp_fu_610_p1;
reg  signed [31:0] grp_fu_614_p0;
reg  signed [31:0] grp_fu_614_p1;
wire   [3:0] lshr_ln_fu_749_p4;
wire   [10:0] add_ln_fu_759_p3;
wire   [10:0] add_ln5_fu_772_p3;
wire   [10:0] add_ln5_1_fu_786_p3;
wire   [5:0] or_ln8_fu_801_p3;
wire   [12:0] add_ln12_fu_821_p2;
wire   [10:0] lshr_ln12_1_fu_827_p4;
wire   [5:0] or_ln8_1_fu_848_p3;
wire   [12:0] add_ln12_3_fu_860_p2;
wire   [10:0] lshr_ln12_4_fu_866_p4;
wire   [12:0] add_ln12_1_fu_898_p2;
wire   [10:0] lshr_ln12_2_fu_903_p4;
wire   [12:0] add_ln12_2_fu_918_p2;
wire   [10:0] lshr_ln12_3_fu_922_p4;
wire   [12:0] add_ln12_4_fu_937_p2;
wire   [10:0] lshr_ln12_5_fu_942_p4;
wire   [12:0] add_ln12_5_fu_957_p2;
wire   [10:0] lshr_ln12_6_fu_961_p4;
wire   [10:0] add_ln12_7_fu_976_p4;
wire   [10:0] add_ln12_8_fu_990_p4;
wire   [10:0] add_ln12_9_fu_1003_p4;
wire   [5:0] or_ln8_2_fu_1017_p3;
wire   [12:0] zext_ln8_fu_1030_p1;
wire   [12:0] add_ln12_6_fu_1034_p2;
wire   [10:0] lshr_ln12_7_fu_1039_p4;
wire   [12:0] add_ln12_10_fu_1054_p2;
wire   [10:0] lshr_ln12_8_fu_1059_p4;
wire   [12:0] add_ln12_11_fu_1074_p2;
wire   [5:0] or_ln8_3_fu_1089_p3;
wire   [12:0] zext_ln12_16_fu_1096_p1;
wire   [12:0] add_ln12_12_fu_1100_p2;
wire   [10:0] lshr_ln12_s_fu_1105_p4;
wire   [12:0] add_ln12_13_fu_1120_p2;
wire   [12:0] add_ln12_14_fu_1135_p2;
wire   [31:0] add_ln13_4_fu_1162_p2;
wire   [31:0] add_ln13_12_fu_1190_p2;
wire   [31:0] add_ln13_20_fu_1202_p2;
wire   [31:0] add_ln13_28_fu_1226_p2;
wire   [31:0] add_ln13_3_fu_1237_p2;
wire   [31:0] add_ln13_11_fu_1253_p2;
wire   [31:0] add_ln13_19_fu_1270_p2;
wire   [31:0] add_ln13_27_fu_1281_p2;
wire   [31:0] add_ln13_36_fu_1292_p2;
wire   [31:0] add_ln13_44_fu_1302_p2;
wire   [31:0] add_ln13_18_fu_1314_p2;
wire   [31:0] add_ln13_26_fu_1323_p2;
wire   [31:0] add_ln13_35_fu_1338_p2;
wire   [31:0] add_ln13_43_fu_1355_p2;
wire   [31:0] add_ln13_52_fu_1366_p2;
wire   [31:0] add_ln13_60_fu_1376_p2;
wire   [31:0] add_ln13_1_fu_1393_p2;
wire   [31:0] add_ln13_fu_1388_p2;
wire   [31:0] add_ln13_2_fu_1398_p2;
wire   [31:0] add_ln13_8_fu_1409_p2;
wire   [31:0] add_ln13_10_fu_1415_p2;
wire   [31:0] add_ln13_33_fu_1425_p2;
wire   [31:0] add_ln13_34_fu_1431_p2;
wire   [31:0] add_ln13_41_fu_1441_p2;
wire   [31:0] add_ln13_42_fu_1447_p2;
wire   [31:0] add_ln13_51_fu_1469_p2;
wire   [31:0] add_ln13_59_fu_1490_p2;
wire   [31:0] add_ln13_50_fu_1501_p2;
wire   [31:0] add_ln13_58_fu_1510_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage0;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [4:0] ap_NS_fsm;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 c_fu_116 = 6'd0;
#0 ap_done_reg = 1'b0;
end
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_558_p0),.din1(grp_fu_558_p1),.ce(1'b1),.dout(grp_fu_558_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_562_p0),.din1(grp_fu_562_p1),.ce(1'b1),.dout(grp_fu_562_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_566_p0),.din1(grp_fu_566_p1),.ce(1'b1),.dout(grp_fu_566_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_570_p0),.din1(grp_fu_570_p1),.ce(1'b1),.dout(grp_fu_570_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U5(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_574_p0),.din1(grp_fu_574_p1),.ce(1'b1),.dout(grp_fu_574_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U6(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_578_p0),.din1(grp_fu_578_p1),.ce(1'b1),.dout(grp_fu_578_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U7(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_582_p0),.din1(grp_fu_582_p1),.ce(1'b1),.dout(grp_fu_582_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U8(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_586_p0),.din1(grp_fu_586_p1),.ce(1'b1),.dout(grp_fu_586_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U9(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_590_p0),.din1(grp_fu_590_p1),.ce(1'b1),.dout(grp_fu_590_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U10(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_594_p0),.din1(grp_fu_594_p1),.ce(1'b1),.dout(grp_fu_594_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U11(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_598_p0),.din1(grp_fu_598_p1),.ce(1'b1),.dout(grp_fu_598_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U12(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_602_p0),.din1(grp_fu_602_p1),.ce(1'b1),.dout(grp_fu_602_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U13(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_606_p0),.din1(grp_fu_606_p1),.ce(1'b1),.dout(grp_fu_606_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U14(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_610_p0),.din1(grp_fu_610_p1),.ce(1'b1),.dout(grp_fu_610_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U15(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_614_p0),.din1(grp_fu_614_p1),.ce(1'b1),.dout(grp_fu_614_p2));
stencil_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage4),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter2_stage0) & (ap_idle_pp0_0to1 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0)) | ((1'b1 == ap_condition_exit_pp0_iter2_stage0) & (ap_idle_pp0_0to1 == 1'b1)))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c_fu_116 <= 6'd0;
    end else if (((icmp_ln8_reg_1913 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        c_fu_116 <= add_ln8_fu_1180_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_627 <= orig_0_q0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_627 <= orig_0_q1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln13_13_reg_2059 <= add_ln13_13_fu_1196_p2;
        add_ln13_21_reg_2064 <= add_ln13_21_fu_1208_p2;
        add_ln13_24_reg_2069 <= add_ln13_24_fu_1214_p2;
        add_ln13_25_reg_2074 <= add_ln13_25_fu_1220_p2;
        add_ln13_29_reg_2079 <= add_ln13_29_fu_1231_p2;
        c_1_reg_1638 <= ap_sig_allocacmp_c_1;
        empty_reg_1712 <= empty_fu_842_p2;
        or_ln8_cast_reg_1695[5 : 2] <= or_ln8_cast_fu_809_p1[5 : 2];
        tmp_7_reg_1701[12 : 6] <= tmp_7_fu_813_p3[12 : 6];
        tmp_s_reg_1731 <= {{ap_sig_allocacmp_c_1[5:3]}};
        zext_ln12_1_reg_1654[10 : 0] <= zext_ln12_1_fu_780_p1[10 : 0];
        zext_ln12_2_reg_1665[10 : 0] <= zext_ln12_2_fu_794_p1[10 : 0];
        zext_ln12_6_reg_1720[5 : 2] <= zext_ln12_6_fu_856_p1[5 : 2];
        zext_ln12_reg_1643[10 : 0] <= zext_ln12_fu_767_p1[10 : 0];
        zext_ln12_reg_1643_pp0_iter1_reg[10 : 0] <= zext_ln12_reg_1643[10 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln13_14_reg_2109 <= add_ln13_14_fu_1259_p2;
        add_ln13_16_reg_2114 <= add_ln13_16_fu_1264_p2;
        add_ln13_22_reg_2119 <= add_ln13_22_fu_1276_p2;
        add_ln13_30_reg_2124 <= add_ln13_30_fu_1287_p2;
        add_ln13_37_reg_2129 <= add_ln13_37_fu_1297_p2;
        add_ln13_45_reg_2134 <= add_ln13_45_fu_1308_p2;
        add_ln13_6_reg_2099 <= add_ln13_6_fu_1243_p2;
        add_ln13_9_reg_2104 <= add_ln13_9_fu_1248_p2;
        tmp_8_reg_1773[12 : 6] <= tmp_8_fu_891_p3[12 : 6];
        zext_ln12_10_reg_1806[10 : 1] <= zext_ln12_10_fu_984_p1[10 : 1];
        zext_ln12_10_reg_1806_pp0_iter1_reg[10 : 1] <= zext_ln12_10_reg_1806[10 : 1];
        zext_ln12_11_reg_1819[10 : 1] <= zext_ln12_11_fu_998_p1[10 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln13_17_reg_2013 <= add_ln13_17_fu_1174_p2;
        add_ln13_5_reg_2008 <= add_ln13_5_fu_1168_p2;
        temp_6_reg_2244 <= temp_6_fu_1505_p2;
        temp_7_reg_2249 <= temp_7_fu_1514_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln13_32_reg_2164 <= add_ln13_32_fu_1332_p2;
        add_ln13_38_reg_2169 <= add_ln13_38_fu_1344_p2;
        add_ln13_40_reg_2174 <= add_ln13_40_fu_1349_p2;
        add_ln13_46_reg_2179 <= add_ln13_46_fu_1361_p2;
        add_ln13_53_reg_2184 <= add_ln13_53_fu_1371_p2;
        add_ln13_61_reg_2189 <= add_ln13_61_fu_1382_p2;
        icmp_ln8_reg_1913 <= icmp_ln8_fu_1024_p2;
        icmp_ln8_reg_1913_pp0_iter1_reg <= icmp_ln8_reg_1913;
        lshr_ln12_10_reg_1937 <= {{add_ln12_13_fu_1120_p2[12:2]}};
        lshr_ln12_11_reg_1942 <= {{add_ln12_14_fu_1135_p2[12:2]}};
        lshr_ln12_9_reg_1927 <= {{add_ln12_11_fu_1074_p2[12:2]}};
        temp_2_reg_2154 <= temp_2_fu_1318_p2;
        temp_3_reg_2159 <= temp_3_fu_1327_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln13_48_reg_2214 <= add_ln13_48_fu_1457_p2;
        add_ln13_49_reg_2219 <= add_ln13_49_fu_1463_p2;
        add_ln13_54_reg_2224 <= add_ln13_54_fu_1473_p2;
        add_ln13_56_reg_2229 <= add_ln13_56_fu_1478_p2;
        add_ln13_57_reg_2234 <= add_ln13_57_fu_1484_p2;
        add_ln13_62_reg_2239 <= add_ln13_62_fu_1496_p2;
        temp_1_reg_2199 <= temp_1_fu_1420_p2;
        temp_4_reg_2204 <= temp_4_fu_1436_p2;
        temp_5_reg_2209 <= temp_5_fu_1452_p2;
        temp_reg_2194 <= temp_fu_1404_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_ln13_16_reg_2054 <= grp_fu_570_p2;
        mul_ln13_54_reg_2084 <= grp_fu_602_p2;
        mul_ln13_55_reg_2089 <= grp_fu_606_p2;
        mul_ln13_60_reg_2094 <= grp_fu_610_p2;
        orig_0_load_1_reg_2049 <= orig_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul_ln13_28_reg_2018 <= grp_fu_574_p2;
        mul_ln13_36_reg_2023 <= grp_fu_606_p2;
        mul_ln13_37_reg_2028 <= grp_fu_610_p2;
        orig_0_load_8_reg_2033 <= orig_0_q0;
        orig_0_load_reg_1993 <= orig_0_q1;
        orig_1_load_7_reg_2039 <= orig_1_q1;
        orig_1_load_8_reg_2044 <= orig_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_ln13_2_reg_2144 <= grp_fu_558_p2;
        mul_ln13_7_reg_2149 <= grp_fu_562_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln13_62_reg_2139 <= grp_fu_598_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_load_3_reg_1766 <= orig_0_q0;
        orig_1_load_3_reg_1789 <= orig_1_q0;
        orig_2_load_2_reg_1740 <= orig_2_q0;
        orig_3_load_1_reg_1754 <= orig_3_q0;
        orig_3_load_reg_1747 <= orig_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_0_load_4_reg_1851 <= orig_0_q1;
        orig_0_load_5_reg_1858 <= orig_0_q0;
        orig_1_load_4_reg_1865 <= orig_1_q1;
        orig_1_load_5_reg_1872 <= orig_1_q0;
        orig_2_load_3_reg_1878 <= orig_2_q1;
        orig_2_load_4_reg_1884 <= orig_2_q0;
        orig_3_load_2_reg_1844 <= orig_3_q1;
        orig_3_load_3_reg_1896 <= orig_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_0_load_6_reg_1972 <= orig_0_q1;
        orig_2_load_5_reg_1952 <= orig_2_q0;
        orig_3_load_4_reg_1959 <= orig_3_q1;
        orig_3_load_5_reg_1966 <= orig_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_618 <= orig_2_q1;
        reg_635 <= orig_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_642 <= grp_fu_558_p2;
        reg_674 <= grp_fu_590_p2;
        reg_690 <= grp_fu_606_p2;
        reg_694 <= grp_fu_610_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_646 <= grp_fu_562_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_650 <= grp_fu_566_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_654 <= grp_fu_570_p2;
        reg_686 <= grp_fu_602_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_658 <= grp_fu_574_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_662 <= grp_fu_578_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_666 <= grp_fu_582_p2;
        reg_670 <= grp_fu_586_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_678 <= grp_fu_594_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_682 <= grp_fu_598_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_698 <= grp_fu_614_p2;
        reg_702 <= orig_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_709 <= grp_fu_558_p2;
        reg_717 <= grp_fu_582_p2;
        reg_721 <= grp_fu_586_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_713 <= grp_fu_578_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_725 <= grp_fu_590_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_729 <= grp_fu_594_p2;
        reg_733 <= grp_fu_614_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_737 <= grp_fu_566_p2;
    end
end
always @ (*) begin
    if (((icmp_ln8_reg_1913 == 1'd1) & (1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln8_reg_1913_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_c_1 = 6'd0;
    end else begin
        ap_sig_allocacmp_c_1 = c_fu_116;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_558_p0 = reg_702;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_558_p0 = orig_0_load_reg_1993;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_558_p0 = orig_3_load_2_reg_1844;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_558_p0 = reg_618;
    end else begin
        grp_fu_558_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_558_p1 = filter_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_558_p1 = filter_load;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_558_p1 = filter_load_2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_558_p1 = filter_load_8;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_558_p1 = filter_load_5;
    end else begin
        grp_fu_558_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_562_p0 = orig_0_load_1_reg_2049;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_562_p0 = orig_1_load_3_reg_1789;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_562_p0 = reg_635;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_562_p0 = orig_0_load_4_reg_1851;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_562_p0 = orig_2_load_2_reg_1740;
    end else begin
        grp_fu_562_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_562_p1 = filter_load_3;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_562_p1 = filter_load_1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_562_p1 = filter_load_4;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_562_p1 = filter_load_5;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_562_p1 = filter_load_8;
    end else begin
        grp_fu_562_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_566_p0 = reg_702;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_566_p0 = orig_0_load_3_reg_1766;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_566_p0 = reg_618;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_566_p0 = orig_0_load_5_reg_1858;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_566_p0 = reg_627;
    end else begin
        grp_fu_566_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_566_p1 = filter_load;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_566_p1 = filter_load_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_566_p1 = filter_load_8;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_566_p1 = filter_load_6;
    end else begin
        grp_fu_566_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_570_p0 = orig_0_load_5_reg_1858;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_570_p0 = orig_0_load_4_reg_1851;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_570_p0 = orig_3_load_2_reg_1844;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_570_p0 = reg_635;
    end else begin
        grp_fu_570_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_570_p1 = filter_load_6;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_570_p1 = filter_load_3;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_570_p1 = filter_load_7;
    end else begin
        grp_fu_570_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_574_p0 = orig_1_load_5_reg_1872;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_574_p0 = reg_618;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_574_p0 = orig_1_load_4_reg_1865;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_574_p0 = orig_3_load_reg_1747;
    end else begin
        grp_fu_574_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_574_p1 = filter_load_6;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_574_p1 = filter_load_7;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_574_p1 = filter_load;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_574_p1 = filter_load_5;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_574_p1 = filter_load_2;
    end else begin
        grp_fu_574_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_578_p0 = orig_2_load_3_reg_1878;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_578_p0 = orig_2_load_5_reg_1952;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_578_p0 = orig_0_load_3_reg_1766;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_578_p0 = orig_3_load_1_reg_1754;
    end else begin
        grp_fu_578_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_578_p1 = filter_load;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_578_p1 = filter_load_8;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_578_p1 = filter_load_1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_578_p1 = filter_load_5;
    end else begin
        grp_fu_578_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_582_p0 = orig_2_load_5_reg_1952;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_582_p0 = orig_1_load_3_reg_1789;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_582_p0 = orig_1_load_4_reg_1865;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_582_p0 = orig_1_load_5_reg_1872;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_582_p0 = reg_635;
    end else begin
        grp_fu_582_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_582_p1 = filter_load;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_582_p1 = filter_load_4;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_582_p1 = filter_load_8;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_582_p1 = filter_load_6;
    end else begin
        grp_fu_582_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_586_p0 = orig_2_load_4_reg_1884;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_586_p0 = orig_1_load_4_reg_1865;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_586_p0 = orig_3_load_4_reg_1959;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_586_p0 = orig_3_load_reg_1747;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_586_p0 = reg_618;
    end else begin
        grp_fu_586_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_586_p1 = filter_load_3;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_586_p1 = filter_load_5;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_586_p1 = filter_load;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_586_p1 = filter_load_4;
    end else begin
        grp_fu_586_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_590_p0 = orig_0_load_6_reg_1972;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_590_p0 = orig_3_load_3_reg_1896;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_590_p0 = orig_3_load_5_reg_1966;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_590_p0 = orig_3_load_2_reg_1844;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_590_p0 = orig_2_load_2_reg_1740;
    end else begin
        grp_fu_590_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_590_p1 = filter_load_1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_590_p1 = filter_load_8;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_590_p1 = filter_load_6;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_590_p1 = filter_load_7;
    end else begin
        grp_fu_590_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_594_p0 = orig_3_load_3_reg_1896;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_594_p0 = orig_0_load_8_reg_2033;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_594_p0 = orig_2_load_4_reg_1884;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_594_p0 = orig_0_load_4_reg_1851;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_594_p0 = orig_0_load_3_reg_1766;
    end else begin
        grp_fu_594_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_594_p1 = filter_load;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_594_p1 = filter_load_8;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_594_p1 = filter_load_4;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_594_p1 = filter_load_2;
    end else begin
        grp_fu_594_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_598_p0 = orig_3_load_5_reg_1966;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_598_p0 = orig_2_load_5_reg_1952;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_598_p0 = orig_3_load_1_reg_1754;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_598_p0 = orig_3_load_reg_1747;
    end else begin
        grp_fu_598_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_598_p1 = filter_load_6;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_598_p1 = filter_load_7;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_598_p1 = filter_load_3;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_598_p1 = filter_load_1;
    end else begin
        grp_fu_598_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_602_p0 = orig_3_load_4_reg_1959;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_602_p0 = orig_1_load_7_reg_2039;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_602_p0 = orig_0_load_6_reg_1972;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_602_p0 = orig_0_load_5_reg_1858;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_602_p0 = orig_2_load_2_reg_1740;
    end else begin
        grp_fu_602_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_602_p1 = filter_load_3;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_602_p1 = filter_load_5;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_602_p1 = filter_load_2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_602_p1 = filter_load_7;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_602_p1 = filter_load_6;
    end else begin
        grp_fu_602_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_606_p0 = orig_1_load_8_reg_2044;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_606_p0 = reg_627;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_606_p0 = orig_2_load_3_reg_1878;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_606_p0 = orig_3_load_1_reg_1754;
    end else begin
        grp_fu_606_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_606_p1 = filter_load_8;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_606_p1 = filter_load_5;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_606_p1 = filter_load_2;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_606_p1 = filter_load_4;
    end else begin
        grp_fu_606_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_610_p0 = reg_627;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_610_p0 = orig_3_load_4_reg_1959;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_610_p0 = orig_2_load_4_reg_1884;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_610_p0 = reg_618;
    end else begin
        grp_fu_610_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_610_p1 = filter_load_4;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_610_p1 = filter_load_5;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_610_p1 = filter_load_3;
    end else begin
        grp_fu_610_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_614_p0 = orig_0_load_8_reg_2033;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_614_p0 = reg_702;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_614_p0 = orig_3_load_3_reg_1896;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_614_p0 = orig_1_load_3_reg_1789;
    end else begin
        grp_fu_614_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_614_p1 = filter_load_7;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_614_p1 = filter_load_2;
    end else begin
        grp_fu_614_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_0_address0_local = zext_ln12_1_reg_1654;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_0_address0_local = zext_ln12_15_fu_1150_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_0_address0_local = zext_ln12_14_fu_1069_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_0_address0_local = zext_ln12_5_fu_932_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_0_address0_local = zext_ln12_3_fu_837_p1;
        end else begin
            orig_0_address0_local = 'bx;
        end
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_0_address1_local = zext_ln12_reg_1643;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_0_address1_local = zext_ln12_13_fu_1049_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_0_address1_local = zext_ln12_4_fu_913_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_0_address1_local = zext_ln12_2_fu_794_p1;
        end else begin
            orig_0_address1_local = 'bx;
        end
    end else begin
        orig_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_1_address0_local = zext_ln12_reg_1643;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_1_address0_local = zext_ln12_19_fu_1158_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_1_address0_local = zext_ln12_17_fu_1115_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_1_address0_local = zext_ln12_9_fu_971_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_1_address0_local = zext_ln12_7_fu_876_p1;
        end else begin
            orig_1_address0_local = 'bx;
        end
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_1_address1_local = zext_ln12_18_fu_1154_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_1_address1_local = zext_ln12_1_reg_1654;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_1_address1_local = zext_ln12_8_fu_952_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_1_address1_local = zext_ln12_2_fu_794_p1;
        end else begin
            orig_1_address1_local = 'bx;
        end
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_2_address0_local = zext_ln12_12_fu_1011_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_2_address0_local = zext_ln12_11_fu_998_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_2_address0_local = zext_ln12_2_fu_794_p1;
        end else begin
            orig_2_address0_local = 'bx;
        end
    end else begin
        orig_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_2_address1_local = zext_ln12_reg_1643;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_2_address1_local = zext_ln12_10_fu_984_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_2_address1_local = zext_ln12_1_fu_780_p1;
        end else begin
            orig_2_address1_local = 'bx;
        end
    end else begin
        orig_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_2_ce0_local = 1'b1;
    end else begin
        orig_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_2_ce1_local = 1'b1;
    end else begin
        orig_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_3_address0_local = zext_ln12_12_fu_1011_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_3_address0_local = zext_ln12_10_fu_984_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_3_address0_local = zext_ln12_1_fu_780_p1;
        end else begin
            orig_3_address0_local = 'bx;
        end
    end else begin
        orig_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_3_address1_local = zext_ln12_11_reg_1819;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_3_address1_local = zext_ln12_2_reg_1665;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_3_address1_local = zext_ln12_fu_767_p1;
        end else begin
            orig_3_address1_local = 'bx;
        end
    end else begin
        orig_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_3_ce0_local = 1'b1;
    end else begin
        orig_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_3_ce1_local = 1'b1;
    end else begin
        orig_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_0_address0_local = zext_ln12_10_reg_1806_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        sol_0_address0_local = zext_ln12_reg_1643_pp0_iter1_reg;
    end else begin
        sol_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        sol_0_ce0_local = 1'b1;
    end else begin
        sol_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_0_d0_local = temp_4_reg_2204;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        sol_0_d0_local = temp_reg_2194;
    end else begin
        sol_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        sol_0_we0_local = 1'b1;
    end else begin
        sol_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_1_address0_local = zext_ln12_10_reg_1806_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        sol_1_address0_local = zext_ln12_reg_1643_pp0_iter1_reg;
    end else begin
        sol_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        sol_1_ce0_local = 1'b1;
    end else begin
        sol_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_1_d0_local = temp_5_reg_2209;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        sol_1_d0_local = temp_1_reg_2199;
    end else begin
        sol_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_2_address0_local = zext_ln12_10_reg_1806_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_2_address0_local = zext_ln12_reg_1643_pp0_iter1_reg;
    end else begin
        sol_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_2_ce0_local = 1'b1;
    end else begin
        sol_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_2_d0_local = temp_6_reg_2244;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_2_d0_local = temp_2_reg_2154;
    end else begin
        sol_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln8_reg_1913_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_2_we0_local = 1'b1;
    end else begin
        sol_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_3_address0_local = zext_ln12_10_reg_1806_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_3_address0_local = zext_ln12_reg_1643_pp0_iter1_reg;
    end else begin
        sol_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_3_ce0_local = 1'b1;
    end else begin
        sol_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_3_d0_local = temp_7_reg_2249;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sol_3_d0_local = temp_3_reg_2159;
    end else begin
        sol_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln8_reg_1913_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_3_we0_local = 1'b1;
    end else begin
        sol_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter2_stage0) & (ap_idle_pp0_0to1 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln12_10_fu_1054_p2 = (zext_ln8_fu_1030_p1 + tmp_8_reg_1773);
assign add_ln12_11_fu_1074_p2 = (zext_ln8_fu_1030_p1 + empty_reg_1712);
assign add_ln12_12_fu_1100_p2 = (zext_ln12_16_fu_1096_p1 + tmp_7_reg_1701);
assign add_ln12_13_fu_1120_p2 = (zext_ln12_16_fu_1096_p1 + tmp_8_reg_1773);
assign add_ln12_14_fu_1135_p2 = (zext_ln12_16_fu_1096_p1 + empty_reg_1712);
assign add_ln12_1_fu_898_p2 = (or_ln8_cast_reg_1695 + tmp_8_fu_891_p3);
assign add_ln12_2_fu_918_p2 = (or_ln8_cast_reg_1695 + empty_reg_1712);
assign add_ln12_3_fu_860_p2 = (zext_ln12_6_fu_856_p1 + tmp_7_fu_813_p3);
assign add_ln12_4_fu_937_p2 = (zext_ln12_6_reg_1720 + tmp_8_fu_891_p3);
assign add_ln12_5_fu_957_p2 = (zext_ln12_6_reg_1720 + empty_reg_1712);
assign add_ln12_6_fu_1034_p2 = (zext_ln8_fu_1030_p1 + tmp_7_reg_1701);
assign add_ln12_7_fu_976_p4 = {{{r}, {tmp_s_reg_1731}}, {1'd1}};
assign add_ln12_8_fu_990_p4 = {{{indvars_iv_next173}, {tmp_s_reg_1731}}, {1'd1}};
assign add_ln12_9_fu_1003_p4 = {{{tmp_4}, {tmp_s_reg_1731}}, {1'd1}};
assign add_ln12_fu_821_p2 = (or_ln8_cast_fu_809_p1 + tmp_7_fu_813_p3);
assign add_ln13_10_fu_1415_p2 = (add_ln13_9_reg_2104 + add_ln13_8_fu_1409_p2);
assign add_ln13_11_fu_1253_p2 = (reg_666 + reg_674);
assign add_ln13_12_fu_1190_p2 = (reg_662 + reg_709);
assign add_ln13_13_fu_1196_p2 = (add_ln13_12_fu_1190_p2 + reg_658);
assign add_ln13_14_fu_1259_p2 = (add_ln13_13_reg_2059 + add_ln13_11_fu_1253_p2);
assign add_ln13_16_fu_1264_p2 = (reg_694 + reg_658);
assign add_ln13_17_fu_1174_p2 = (reg_686 + reg_682);
assign add_ln13_18_fu_1314_p2 = (add_ln13_17_reg_2013 + add_ln13_16_reg_2114);
assign add_ln13_19_fu_1270_p2 = (reg_690 + reg_654);
assign add_ln13_1_fu_1393_p2 = (reg_709 + mul_ln13_7_reg_2149);
assign add_ln13_20_fu_1202_p2 = (reg_646 + reg_650);
assign add_ln13_21_fu_1208_p2 = (add_ln13_20_fu_1202_p2 + reg_678);
assign add_ln13_22_fu_1276_p2 = (add_ln13_21_reg_2064 + add_ln13_19_fu_1270_p2);
assign add_ln13_24_fu_1214_p2 = (reg_682 + reg_721);
assign add_ln13_25_fu_1220_p2 = (reg_725 + reg_713);
assign add_ln13_26_fu_1323_p2 = (add_ln13_25_reg_2074 + add_ln13_24_reg_2069);
assign add_ln13_27_fu_1281_p2 = (reg_729 + reg_686);
assign add_ln13_28_fu_1226_p2 = (mul_ln13_28_reg_2018 + reg_717);
assign add_ln13_29_fu_1231_p2 = (add_ln13_28_fu_1226_p2 + reg_698);
assign add_ln13_2_fu_1398_p2 = (add_ln13_1_fu_1393_p2 + add_ln13_fu_1388_p2);
assign add_ln13_30_fu_1287_p2 = (add_ln13_29_reg_2079 + add_ln13_27_fu_1281_p2);
assign add_ln13_32_fu_1332_p2 = (reg_654 + reg_737);
assign add_ln13_33_fu_1425_p2 = (reg_654 + reg_646);
assign add_ln13_34_fu_1431_p2 = (add_ln13_33_fu_1425_p2 + add_ln13_32_reg_2164);
assign add_ln13_35_fu_1338_p2 = (reg_717 + reg_658);
assign add_ln13_36_fu_1292_p2 = (mul_ln13_37_reg_2028 + reg_662);
assign add_ln13_37_fu_1297_p2 = (add_ln13_36_fu_1292_p2 + mul_ln13_36_reg_2023);
assign add_ln13_38_fu_1344_p2 = (add_ln13_37_reg_2129 + add_ln13_35_fu_1338_p2);
assign add_ln13_3_fu_1237_p2 = (reg_646 + reg_642);
assign add_ln13_40_fu_1349_p2 = (reg_670 + reg_666);
assign add_ln13_41_fu_1441_p2 = (reg_658 + reg_662);
assign add_ln13_42_fu_1447_p2 = (add_ln13_41_fu_1441_p2 + add_ln13_40_reg_2174);
assign add_ln13_43_fu_1355_p2 = (reg_678 + reg_682);
assign add_ln13_44_fu_1302_p2 = (reg_721 + reg_725);
assign add_ln13_45_fu_1308_p2 = (add_ln13_44_fu_1302_p2 + reg_733);
assign add_ln13_46_fu_1361_p2 = (add_ln13_45_reg_2134 + add_ln13_43_fu_1355_p2);
assign add_ln13_48_fu_1457_p2 = (reg_670 + reg_713);
assign add_ln13_49_fu_1463_p2 = (reg_666 + reg_674);
assign add_ln13_4_fu_1162_p2 = (reg_654 + reg_646);
assign add_ln13_50_fu_1501_p2 = (add_ln13_49_reg_2219 + add_ln13_48_reg_2214);
assign add_ln13_51_fu_1469_p2 = (mul_ln13_60_reg_2094 + mul_ln13_62_reg_2139);
assign add_ln13_52_fu_1366_p2 = (mul_ln13_55_reg_2089 + reg_729);
assign add_ln13_53_fu_1371_p2 = (add_ln13_52_fu_1366_p2 + mul_ln13_54_reg_2084);
assign add_ln13_54_fu_1473_p2 = (add_ln13_53_reg_2184 + add_ln13_51_fu_1469_p2);
assign add_ln13_56_fu_1478_p2 = (reg_686 + reg_678);
assign add_ln13_57_fu_1484_p2 = (reg_682 + reg_725);
assign add_ln13_58_fu_1510_p2 = (add_ln13_57_reg_2234 + add_ln13_56_reg_2229);
assign add_ln13_59_fu_1490_p2 = (reg_694 + reg_733);
assign add_ln13_5_fu_1168_p2 = (add_ln13_4_fu_1162_p2 + reg_650);
assign add_ln13_60_fu_1376_p2 = (reg_686 + reg_690);
assign add_ln13_61_fu_1382_p2 = (add_ln13_60_fu_1376_p2 + reg_698);
assign add_ln13_62_fu_1496_p2 = (add_ln13_61_reg_2189 + add_ln13_59_fu_1490_p2);
assign add_ln13_6_fu_1243_p2 = (add_ln13_5_reg_2008 + add_ln13_3_fu_1237_p2);
assign add_ln13_8_fu_1409_p2 = (reg_650 + reg_737);
assign add_ln13_9_fu_1248_p2 = (mul_ln13_16_reg_2054 + reg_670);
assign add_ln13_fu_1388_p2 = (mul_ln13_2_reg_2144 + reg_642);
assign add_ln5_1_fu_786_p3 = {{tmp_4}, {lshr_ln_fu_749_p4}};
assign add_ln5_fu_772_p3 = {{indvars_iv_next173}, {lshr_ln_fu_749_p4}};
assign add_ln8_fu_1180_p2 = (c_1_reg_1638 + 6'd8);
assign add_ln_fu_759_p3 = {{r}, {lshr_ln_fu_749_p4}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage4;
assign ap_ready = ap_ready_sig;
assign empty_fu_842_p2 = (tmp + 13'd130);
assign icmp_ln8_fu_1024_p2 = ((or_ln8_2_fu_1017_p3 == 6'd62) ? 1'b1 : 1'b0);
assign lshr_ln12_1_fu_827_p4 = {{add_ln12_fu_821_p2[12:2]}};
assign lshr_ln12_2_fu_903_p4 = {{add_ln12_1_fu_898_p2[12:2]}};
assign lshr_ln12_3_fu_922_p4 = {{add_ln12_2_fu_918_p2[12:2]}};
assign lshr_ln12_4_fu_866_p4 = {{add_ln12_3_fu_860_p2[12:2]}};
assign lshr_ln12_5_fu_942_p4 = {{add_ln12_4_fu_937_p2[12:2]}};
assign lshr_ln12_6_fu_961_p4 = {{add_ln12_5_fu_957_p2[12:2]}};
assign lshr_ln12_7_fu_1039_p4 = {{add_ln12_6_fu_1034_p2[12:2]}};
assign lshr_ln12_8_fu_1059_p4 = {{add_ln12_10_fu_1054_p2[12:2]}};
assign lshr_ln12_s_fu_1105_p4 = {{add_ln12_12_fu_1100_p2[12:2]}};
assign lshr_ln_fu_749_p4 = {{ap_sig_allocacmp_c_1[5:2]}};
assign or_ln8_1_fu_848_p3 = {{lshr_ln_fu_749_p4}, {2'd3}};
assign or_ln8_2_fu_1017_p3 = {{tmp_s_reg_1731}, {3'd6}};
assign or_ln8_3_fu_1089_p3 = {{tmp_s_reg_1731}, {3'd7}};
assign or_ln8_cast_fu_809_p1 = or_ln8_fu_801_p3;
assign or_ln8_fu_801_p3 = {{lshr_ln_fu_749_p4}, {2'd2}};
assign orig_0_address0 = orig_0_address0_local;
assign orig_0_address1 = orig_0_address1_local;
assign orig_0_ce0 = orig_0_ce0_local;
assign orig_0_ce1 = orig_0_ce1_local;
assign orig_1_address0 = orig_1_address0_local;
assign orig_1_address1 = orig_1_address1_local;
assign orig_1_ce0 = orig_1_ce0_local;
assign orig_1_ce1 = orig_1_ce1_local;
assign orig_2_address0 = orig_2_address0_local;
assign orig_2_address1 = orig_2_address1_local;
assign orig_2_ce0 = orig_2_ce0_local;
assign orig_2_ce1 = orig_2_ce1_local;
assign orig_3_address0 = orig_3_address0_local;
assign orig_3_address1 = orig_3_address1_local;
assign orig_3_ce0 = orig_3_ce0_local;
assign orig_3_ce1 = orig_3_ce1_local;
assign sol_0_address0 = sol_0_address0_local;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_d0 = sol_0_d0_local;
assign sol_0_we0 = sol_0_we0_local;
assign sol_1_address0 = sol_1_address0_local;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_d0 = sol_1_d0_local;
assign sol_1_we0 = sol_1_we0_local;
assign sol_2_address0 = sol_2_address0_local;
assign sol_2_ce0 = sol_2_ce0_local;
assign sol_2_d0 = sol_2_d0_local;
assign sol_2_we0 = sol_2_we0_local;
assign sol_3_address0 = sol_3_address0_local;
assign sol_3_ce0 = sol_3_ce0_local;
assign sol_3_d0 = sol_3_d0_local;
assign sol_3_we0 = sol_3_we0_local;
assign temp_1_fu_1420_p2 = (add_ln13_14_reg_2109 + add_ln13_10_fu_1415_p2);
assign temp_2_fu_1318_p2 = (add_ln13_22_reg_2119 + add_ln13_18_fu_1314_p2);
assign temp_3_fu_1327_p2 = (add_ln13_30_reg_2124 + add_ln13_26_fu_1323_p2);
assign temp_4_fu_1436_p2 = (add_ln13_38_reg_2169 + add_ln13_34_fu_1431_p2);
assign temp_5_fu_1452_p2 = (add_ln13_46_reg_2179 + add_ln13_42_fu_1447_p2);
assign temp_6_fu_1505_p2 = (add_ln13_54_reg_2224 + add_ln13_50_fu_1501_p2);
assign temp_7_fu_1514_p2 = (add_ln13_62_reg_2239 + add_ln13_58_fu_1510_p2);
assign temp_fu_1404_p2 = (add_ln13_6_reg_2099 + add_ln13_2_fu_1398_p2);
assign tmp_7_fu_813_p3 = {{r}, {6'd2}};
assign tmp_8_fu_891_p3 = {{indvars_iv_next173}, {6'd2}};
assign zext_ln12_10_fu_984_p1 = add_ln12_7_fu_976_p4;
assign zext_ln12_11_fu_998_p1 = add_ln12_8_fu_990_p4;
assign zext_ln12_12_fu_1011_p1 = add_ln12_9_fu_1003_p4;
assign zext_ln12_13_fu_1049_p1 = lshr_ln12_7_fu_1039_p4;
assign zext_ln12_14_fu_1069_p1 = lshr_ln12_8_fu_1059_p4;
assign zext_ln12_15_fu_1150_p1 = lshr_ln12_9_reg_1927;
assign zext_ln12_16_fu_1096_p1 = or_ln8_3_fu_1089_p3;
assign zext_ln12_17_fu_1115_p1 = lshr_ln12_s_fu_1105_p4;
assign zext_ln12_18_fu_1154_p1 = lshr_ln12_10_reg_1937;
assign zext_ln12_19_fu_1158_p1 = lshr_ln12_11_reg_1942;
assign zext_ln12_1_fu_780_p1 = add_ln5_fu_772_p3;
assign zext_ln12_2_fu_794_p1 = add_ln5_1_fu_786_p3;
assign zext_ln12_3_fu_837_p1 = lshr_ln12_1_fu_827_p4;
assign zext_ln12_4_fu_913_p1 = lshr_ln12_2_fu_903_p4;
assign zext_ln12_5_fu_932_p1 = lshr_ln12_3_fu_922_p4;
assign zext_ln12_6_fu_856_p1 = or_ln8_1_fu_848_p3;
assign zext_ln12_7_fu_876_p1 = lshr_ln12_4_fu_866_p4;
assign zext_ln12_8_fu_952_p1 = lshr_ln12_5_fu_942_p4;
assign zext_ln12_9_fu_971_p1 = lshr_ln12_6_fu_961_p4;
assign zext_ln12_fu_767_p1 = add_ln_fu_759_p3;
assign zext_ln8_fu_1030_p1 = or_ln8_2_fu_1017_p3;
always @ (posedge ap_clk) begin
    zext_ln12_reg_1643[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln12_reg_1643_pp0_iter1_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln12_1_reg_1654[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln12_2_reg_1665[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    or_ln8_cast_reg_1695[1:0] <= 2'b10;
    or_ln8_cast_reg_1695[12:6] <= 7'b0000000;
    tmp_7_reg_1701[5:0] <= 6'b000010;
    zext_ln12_6_reg_1720[1:0] <= 2'b11;
    zext_ln12_6_reg_1720[12:6] <= 7'b0000000;
    tmp_8_reg_1773[5:0] <= 6'b000010;
    zext_ln12_10_reg_1806[0] <= 1'b1;
    zext_ln12_10_reg_1806[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln12_10_reg_1806_pp0_iter1_reg[0] <= 1'b1;
    zext_ln12_10_reg_1806_pp0_iter1_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln12_11_reg_1819[0] <= 1'b1;
    zext_ln12_11_reg_1819[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
end
endmodule 
