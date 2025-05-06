
module stencil_stencil_Pipeline_stencil_label2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_7_address0,sol_7_ce0,sol_7_we0,sol_7_d0,sol_6_address0,sol_6_ce0,sol_6_we0,sol_6_d0,sol_5_address0,sol_5_ce0,sol_5_we0,sol_5_d0,sol_4_address0,sol_4_ce0,sol_4_we0,sol_4_d0,sol_3_address0,sol_3_ce0,sol_3_we0,sol_3_d0,sol_2_address0,sol_2_ce0,sol_2_we0,sol_2_d0,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,r,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,orig_2_address0,orig_2_ce0,orig_2_q0,orig_2_address1,orig_2_ce1,orig_2_q1,indvars_iv_next173,tmp_1,filter_load_2,filter_load_5,filter_load_1,filter_load_8,filter_load,filter_load_6,filter_load_4,filter_load_3,filter_load_7,orig_3_address0,orig_3_ce0,orig_3_q0,orig_3_address1,orig_3_ce1,orig_3_q1,orig_4_address0,orig_4_ce0,orig_4_q0,orig_4_address1,orig_4_ce1,orig_4_q1,orig_5_address0,orig_5_ce0,orig_5_q0,orig_5_address1,orig_5_ce1,orig_5_q1,orig_6_address0,orig_6_ce0,orig_6_q0,orig_6_address1,orig_6_ce1,orig_6_q1,orig_7_address0,orig_7_ce0,orig_7_q0,orig_7_address1,orig_7_ce1,orig_7_q1,tmp);  
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] sol_7_address0;
output   sol_7_ce0;
output   sol_7_we0;
output  [31:0] sol_7_d0;
output  [9:0] sol_6_address0;
output   sol_6_ce0;
output   sol_6_we0;
output  [31:0] sol_6_d0;
output  [9:0] sol_5_address0;
output   sol_5_ce0;
output   sol_5_we0;
output  [31:0] sol_5_d0;
output  [9:0] sol_4_address0;
output   sol_4_ce0;
output   sol_4_we0;
output  [31:0] sol_4_d0;
output  [9:0] sol_3_address0;
output   sol_3_ce0;
output   sol_3_we0;
output  [31:0] sol_3_d0;
output  [9:0] sol_2_address0;
output   sol_2_ce0;
output   sol_2_we0;
output  [31:0] sol_2_d0;
output  [9:0] sol_1_address0;
output   sol_1_ce0;
output   sol_1_we0;
output  [31:0] sol_1_d0;
output  [9:0] sol_0_address0;
output   sol_0_ce0;
output   sol_0_we0;
output  [31:0] sol_0_d0;
input  [6:0] r;
output  [9:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [9:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
output  [9:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [9:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
output  [9:0] orig_2_address0;
output   orig_2_ce0;
input  [31:0] orig_2_q0;
output  [9:0] orig_2_address1;
output   orig_2_ce1;
input  [31:0] orig_2_q1;
input  [6:0] indvars_iv_next173;
input  [9:0] tmp_1;
input  [31:0] filter_load_2;
input  [31:0] filter_load_5;
input  [31:0] filter_load_1;
input  [31:0] filter_load_8;
input  [31:0] filter_load;
input  [31:0] filter_load_6;
input  [31:0] filter_load_4;
input  [31:0] filter_load_3;
input  [31:0] filter_load_7;
output  [9:0] orig_3_address0;
output   orig_3_ce0;
input  [31:0] orig_3_q0;
output  [9:0] orig_3_address1;
output   orig_3_ce1;
input  [31:0] orig_3_q1;
output  [9:0] orig_4_address0;
output   orig_4_ce0;
input  [31:0] orig_4_q0;
output  [9:0] orig_4_address1;
output   orig_4_ce1;
input  [31:0] orig_4_q1;
output  [9:0] orig_5_address0;
output   orig_5_ce0;
input  [31:0] orig_5_q0;
output  [9:0] orig_5_address1;
output   orig_5_ce1;
input  [31:0] orig_5_q1;
output  [9:0] orig_6_address0;
output   orig_6_ce0;
input  [31:0] orig_6_q0;
output  [9:0] orig_6_address1;
output   orig_6_ce1;
input  [31:0] orig_6_q1;
output  [9:0] orig_7_address0;
output   orig_7_ce0;
input  [31:0] orig_7_q0;
output  [9:0] orig_7_address1;
output   orig_7_ce1;
input  [31:0] orig_7_q1;
input  [12:0] tmp;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] icmp_ln8_reg_1595;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_626_p2;
reg   [31:0] reg_718;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] grp_fu_630_p2;
reg   [31:0] reg_722;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] grp_fu_634_p2;
reg   [31:0] reg_726;
wire   [31:0] grp_fu_638_p2;
reg   [31:0] reg_730;
wire   [31:0] grp_fu_642_p2;
reg   [31:0] reg_734;
wire   [31:0] grp_fu_658_p2;
reg   [31:0] reg_738;
wire   [31:0] grp_fu_662_p2;
reg   [31:0] reg_742;
wire   [31:0] grp_fu_670_p2;
reg   [31:0] reg_746;
wire   [31:0] grp_fu_674_p2;
reg   [31:0] reg_750;
wire   [31:0] grp_fu_682_p2;
reg   [31:0] reg_754;
wire   [31:0] grp_fu_686_p2;
reg   [31:0] reg_758;
wire   [31:0] grp_fu_694_p2;
reg   [31:0] reg_762;
wire   [31:0] grp_fu_698_p2;
reg   [31:0] reg_766;
wire   [31:0] grp_fu_706_p2;
reg   [31:0] reg_770;
wire   [31:0] grp_fu_714_p2;
reg   [31:0] reg_774;
wire   [31:0] grp_fu_646_p2;
reg   [31:0] reg_778;
wire   [31:0] grp_fu_650_p2;
reg   [31:0] reg_782;
wire   [31:0] grp_fu_690_p2;
reg   [31:0] reg_786;
wire   [31:0] grp_fu_702_p2;
reg   [31:0] reg_790;
reg   [5:0] c_1_reg_1490;
wire   [63:0] zext_ln12_fu_820_p1;
reg   [63:0] zext_ln12_reg_1495;
reg   [63:0] zext_ln12_reg_1495_pp0_iter1_reg;
reg   [63:0] zext_ln12_reg_1495_pp0_iter2_reg;
wire   [63:0] zext_ln12_1_fu_837_p1;
reg   [63:0] zext_ln12_1_reg_1510;
wire   [63:0] zext_ln12_2_fu_869_p1;
reg   [63:0] zext_ln12_2_reg_1521;
wire   [0:0] icmp_ln8_fu_884_p2;
reg   [0:0] icmp_ln8_reg_1595_pp0_iter1_reg;
reg   [0:0] icmp_ln8_reg_1595_pp0_iter2_reg;
reg   [9:0] lshr_ln12_2_reg_1604;
reg   [9:0] lshr_ln12_3_reg_1609;
reg   [9:0] lshr_ln12_5_reg_1619;
reg   [9:0] lshr_ln12_6_reg_1624;
reg  signed [31:0] orig_2_load_1_reg_1634;
reg  signed [31:0] orig_0_load_2_reg_1640;
reg  signed [31:0] orig_1_load_2_reg_1645;
reg  signed [31:0] orig_2_load_2_reg_1651;
reg  signed [31:0] orig_3_load_reg_1658;
reg  signed [31:0] orig_3_load_1_reg_1665;
reg  signed [31:0] orig_4_load_reg_1677;
reg  signed [31:0] orig_4_load_1_reg_1682;
reg  signed [31:0] orig_5_load_reg_1694;
reg  signed [31:0] orig_5_load_1_reg_1701;
reg  signed [31:0] orig_6_load_reg_1713;
reg  signed [31:0] orig_6_load_1_reg_1720;
reg  signed [31:0] orig_7_load_reg_1732;
reg  signed [31:0] orig_7_load_1_reg_1739;
reg  signed [31:0] orig_0_load_3_reg_1751;
reg  signed [31:0] orig_1_load_3_reg_1767;
reg  signed [31:0] orig_2_load_reg_1792;
reg  signed [31:0] orig_3_load_2_reg_1809;
reg  signed [31:0] orig_4_load_2_reg_1816;
reg  signed [31:0] orig_5_load_2_reg_1823;
reg  signed [31:0] orig_6_load_2_reg_1829;
reg  signed [31:0] orig_7_load_2_reg_1836;
reg  signed [31:0] orig_0_load_4_reg_1843;
reg  signed [31:0] orig_0_load_5_reg_1849;
reg  signed [31:0] orig_1_load_4_reg_1855;
reg  signed [31:0] orig_1_load_5_reg_1860;
reg  signed [31:0] orig_0_load_reg_1865;
reg  signed [31:0] orig_1_load_reg_1870;
reg  signed [31:0] orig_0_load_1_reg_1876;
reg  signed [31:0] orig_1_load_1_reg_1881;
wire   [31:0] grp_fu_622_p2;
reg   [31:0] mul_ln13_1_reg_1887;
reg   [31:0] mul_ln13_14_reg_1892;
reg   [31:0] mul_ln13_15_reg_1897;
wire   [31:0] grp_fu_654_p2;
reg   [31:0] mul_ln13_17_reg_1902;
wire   [31:0] grp_fu_666_p2;
reg   [31:0] mul_ln13_24_reg_1907;
wire   [31:0] grp_fu_678_p2;
reg   [31:0] mul_ln13_33_reg_1912;
reg   [31:0] mul_ln13_42_reg_1917;
reg   [31:0] mul_ln13_51_reg_1922;
wire   [31:0] grp_fu_710_p2;
reg   [31:0] mul_ln13_60_reg_1927;
reg   [31:0] mul_ln13_reg_1932;
wire   [31:0] add_ln13_5_fu_1066_p2;
reg   [31:0] add_ln13_5_reg_1937;
reg   [31:0] mul_ln13_21_reg_1942;
reg   [31:0] mul_ln13_22_reg_1947;
reg   [31:0] mul_ln13_26_reg_1952;
reg   [31:0] mul_ln13_29_reg_1957;
reg   [31:0] mul_ln13_30_reg_1962;
reg   [31:0] mul_ln13_31_reg_1967;
reg   [31:0] mul_ln13_35_reg_1972;
reg   [31:0] mul_ln13_39_reg_1977;
reg   [31:0] mul_ln13_44_reg_1982;
reg   [31:0] mul_ln13_48_reg_1987;
reg   [31:0] mul_ln13_53_reg_1992;
reg   [31:0] mul_ln13_57_reg_1997;
reg   [31:0] mul_ln13_62_reg_2002;
reg   [31:0] mul_ln13_66_reg_2007;
reg   [31:0] mul_ln13_69_reg_2012;
reg   [31:0] mul_ln13_71_reg_2017;
reg   [31:0] mul_ln13_2_reg_2022;
reg   [31:0] mul_ln13_4_reg_2027;
wire   [31:0] add_ln13_13_fu_1078_p2;
reg   [31:0] add_ln13_13_reg_2032;
wire   [31:0] add_ln13_16_fu_1084_p2;
reg   [31:0] add_ln13_16_reg_2037;
wire   [31:0] add_ln13_17_fu_1089_p2;
reg   [31:0] add_ln13_17_reg_2042;
wire   [31:0] add_ln13_21_fu_1100_p2;
reg   [31:0] add_ln13_21_reg_2047;
wire   [31:0] add_ln13_29_fu_1111_p2;
reg   [31:0] add_ln13_29_reg_2052;
reg   [31:0] mul_ln13_38_reg_2057;
reg   [31:0] mul_ln13_43_reg_2062;
wire   [31:0] add_ln13_37_fu_1122_p2;
reg   [31:0] add_ln13_37_reg_2067;
reg   [31:0] mul_ln13_50_reg_2072;
wire   [31:0] add_ln13_45_fu_1133_p2;
reg   [31:0] add_ln13_45_reg_2077;
wire   [31:0] add_ln13_53_fu_1144_p2;
reg   [31:0] add_ln13_53_reg_2082;
reg   [31:0] mul_ln13_68_reg_2087;
wire   [31:0] add_ln13_61_fu_1155_p2;
reg   [31:0] add_ln13_61_reg_2092;
wire   [31:0] add_ln13_fu_1161_p2;
reg   [31:0] add_ln13_reg_2097;
wire   [31:0] add_ln13_1_fu_1165_p2;
reg   [31:0] add_ln13_1_reg_2102;
wire   [31:0] add_ln13_6_fu_1175_p2;
reg   [31:0] add_ln13_6_reg_2107;
wire   [31:0] add_ln13_8_fu_1180_p2;
reg   [31:0] add_ln13_8_reg_2112;
wire   [31:0] add_ln13_9_fu_1186_p2;
reg   [31:0] add_ln13_9_reg_2117;
wire   [31:0] add_ln13_14_fu_1195_p2;
reg   [31:0] add_ln13_14_reg_2122;
wire   [31:0] add_ln13_22_fu_1204_p2;
reg   [31:0] add_ln13_22_reg_2127;
wire   [31:0] add_ln13_24_fu_1209_p2;
reg   [31:0] add_ln13_24_reg_2132;
wire   [31:0] add_ln13_25_fu_1214_p2;
reg   [31:0] add_ln13_25_reg_2137;
wire   [31:0] add_ln13_30_fu_1223_p2;
reg   [31:0] add_ln13_30_reg_2142;
wire   [31:0] add_ln13_32_fu_1228_p2;
reg   [31:0] add_ln13_32_reg_2147;
wire   [31:0] add_ln13_33_fu_1233_p2;
reg   [31:0] add_ln13_33_reg_2152;
wire   [31:0] add_ln13_38_fu_1242_p2;
reg   [31:0] add_ln13_38_reg_2157;
wire   [31:0] add_ln13_40_fu_1247_p2;
reg   [31:0] add_ln13_40_reg_2162;
wire   [31:0] add_ln13_41_fu_1253_p2;
reg   [31:0] add_ln13_41_reg_2167;
wire   [31:0] add_ln13_46_fu_1262_p2;
reg   [31:0] add_ln13_46_reg_2172;
wire   [31:0] add_ln13_48_fu_1267_p2;
reg   [31:0] add_ln13_48_reg_2177;
wire   [31:0] add_ln13_49_fu_1273_p2;
reg   [31:0] add_ln13_49_reg_2182;
wire   [31:0] add_ln13_54_fu_1283_p2;
reg   [31:0] add_ln13_54_reg_2187;
wire   [31:0] add_ln13_56_fu_1288_p2;
reg   [31:0] add_ln13_56_reg_2192;
wire   [31:0] add_ln13_57_fu_1294_p2;
reg   [31:0] add_ln13_57_reg_2197;
wire   [31:0] add_ln13_62_fu_1303_p2;
reg   [31:0] add_ln13_62_reg_2202;
wire   [31:0] temp_fu_1312_p2;
reg   [31:0] temp_reg_2207;
wire   [31:0] temp_1_fu_1321_p2;
reg   [31:0] temp_1_reg_2212;
wire   [31:0] temp_2_fu_1330_p2;
reg   [31:0] temp_2_reg_2217;
wire   [31:0] temp_3_fu_1339_p2;
reg   [31:0] temp_3_reg_2222;
wire   [31:0] temp_4_fu_1348_p2;
reg   [31:0] temp_4_reg_2227;
wire   [31:0] temp_5_fu_1357_p2;
reg   [31:0] temp_5_reg_2232;
wire   [31:0] temp_6_fu_1366_p2;
reg   [31:0] temp_6_reg_2237;
wire   [31:0] temp_7_fu_1375_p2;
reg   [31:0] temp_7_reg_2242;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln12_3_fu_918_p1;
wire   [63:0] zext_ln12_7_fu_997_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln12_4_fu_1034_p1;
wire   [63:0] zext_ln12_5_fu_1038_p1;
wire   [63:0] zext_ln12_8_fu_1042_p1;
wire   [63:0] zext_ln12_9_fu_1046_p1;
wire    ap_block_pp0_stage2;
reg   [5:0] c_fu_124;
wire   [5:0] add_ln8_fu_1050_p2;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_c_1;
reg    orig_2_ce1_local;
reg    orig_2_ce0_local;
reg   [9:0] orig_2_address0_local;
reg    orig_0_ce1_local;
reg   [9:0] orig_0_address1_local;
reg    orig_0_ce0_local;
reg   [9:0] orig_0_address0_local;
reg    orig_1_ce1_local;
reg   [9:0] orig_1_address1_local;
reg    orig_1_ce0_local;
reg   [9:0] orig_1_address0_local;
reg    orig_3_ce1_local;
reg    orig_3_ce0_local;
reg   [9:0] orig_3_address0_local;
reg    orig_4_ce1_local;
reg    orig_4_ce0_local;
reg   [9:0] orig_4_address0_local;
reg    orig_5_ce1_local;
reg    orig_5_ce0_local;
reg   [9:0] orig_5_address0_local;
reg    orig_6_ce1_local;
reg    orig_6_ce0_local;
reg   [9:0] orig_6_address0_local;
reg    orig_7_ce1_local;
reg    orig_7_ce0_local;
reg   [9:0] orig_7_address0_local;
reg    sol_0_we0_local;
reg    sol_0_ce0_local;
reg    sol_1_we0_local;
reg    sol_1_ce0_local;
reg    sol_2_we0_local;
reg    sol_2_ce0_local;
reg    sol_3_we0_local;
reg    sol_3_ce0_local;
reg    sol_4_we0_local;
reg    sol_4_ce0_local;
reg    sol_5_we0_local;
reg    sol_5_ce0_local;
reg    sol_6_we0_local;
reg    sol_6_ce0_local;
reg    sol_7_we0_local;
reg    sol_7_ce0_local;
reg  signed [31:0] grp_fu_622_p0;
reg  signed [31:0] grp_fu_622_p1;
reg  signed [31:0] grp_fu_626_p0;
reg  signed [31:0] grp_fu_626_p1;
reg  signed [31:0] grp_fu_630_p0;
reg  signed [31:0] grp_fu_630_p1;
reg  signed [31:0] grp_fu_634_p0;
reg  signed [31:0] grp_fu_634_p1;
reg  signed [31:0] grp_fu_638_p0;
reg  signed [31:0] grp_fu_638_p1;
reg  signed [31:0] grp_fu_642_p0;
reg  signed [31:0] grp_fu_642_p1;
reg  signed [31:0] grp_fu_646_p0;
reg  signed [31:0] grp_fu_650_p0;
reg  signed [31:0] grp_fu_650_p1;
reg  signed [31:0] grp_fu_654_p0;
reg  signed [31:0] grp_fu_654_p1;
reg  signed [31:0] grp_fu_658_p1;
reg  signed [31:0] grp_fu_662_p0;
reg  signed [31:0] grp_fu_662_p1;
reg  signed [31:0] grp_fu_666_p0;
reg  signed [31:0] grp_fu_666_p1;
reg  signed [31:0] grp_fu_670_p0;
reg  signed [31:0] grp_fu_670_p1;
reg  signed [31:0] grp_fu_674_p0;
reg  signed [31:0] grp_fu_674_p1;
reg  signed [31:0] grp_fu_678_p0;
reg  signed [31:0] grp_fu_678_p1;
reg  signed [31:0] grp_fu_682_p0;
reg  signed [31:0] grp_fu_682_p1;
reg  signed [31:0] grp_fu_686_p0;
reg  signed [31:0] grp_fu_686_p1;
reg  signed [31:0] grp_fu_690_p0;
reg  signed [31:0] grp_fu_690_p1;
reg  signed [31:0] grp_fu_694_p0;
reg  signed [31:0] grp_fu_694_p1;
reg  signed [31:0] grp_fu_698_p0;
reg  signed [31:0] grp_fu_698_p1;
reg  signed [31:0] grp_fu_702_p0;
reg  signed [31:0] grp_fu_702_p1;
reg  signed [31:0] grp_fu_706_p0;
reg  signed [31:0] grp_fu_706_p1;
reg  signed [31:0] grp_fu_710_p0;
reg  signed [31:0] grp_fu_710_p1;
reg  signed [31:0] grp_fu_714_p0;
reg  signed [31:0] grp_fu_714_p1;
wire   [2:0] lshr_ln_fu_802_p4;
wire   [9:0] add_ln_fu_812_p3;
wire   [9:0] add_ln5_fu_829_p3;
wire   [3:0] zext_ln5_fu_847_p1;
wire   [4:0] zext_ln5_cast_fu_851_p3;
wire   [9:0] zext_ln5_1_fu_859_p1;
wire   [9:0] add_ln5_1_fu_863_p2;
wire   [5:0] or_ln8_fu_876_p3;
wire   [12:0] zext_ln8_fu_890_p1;
wire   [12:0] tmp_5_fu_894_p3;
wire   [12:0] add_ln12_fu_902_p2;
wire   [9:0] lshr_ln12_1_fu_908_p4;
wire   [12:0] tmp_6_fu_923_p3;
wire   [12:0] add_ln12_1_fu_931_p2;
wire   [12:0] empty_fu_947_p2;
wire   [12:0] add_ln12_2_fu_953_p2;
wire   [5:0] or_ln8_1_fu_969_p3;
wire   [12:0] zext_ln12_6_fu_977_p1;
wire   [12:0] add_ln12_3_fu_981_p2;
wire   [9:0] lshr_ln12_4_fu_987_p4;
wire   [12:0] add_ln12_4_fu_1002_p2;
wire   [12:0] add_ln12_5_fu_1018_p2;
wire   [31:0] add_ln13_4_fu_1060_p2;
wire   [31:0] add_ln13_12_fu_1072_p2;
wire   [31:0] add_ln13_20_fu_1095_p2;
wire   [31:0] add_ln13_28_fu_1106_p2;
wire   [31:0] add_ln13_36_fu_1117_p2;
wire   [31:0] add_ln13_44_fu_1128_p2;
wire   [31:0] add_ln13_52_fu_1139_p2;
wire   [31:0] add_ln13_60_fu_1150_p2;
wire   [31:0] add_ln13_3_fu_1170_p2;
wire   [31:0] add_ln13_11_fu_1191_p2;
wire   [31:0] add_ln13_19_fu_1200_p2;
wire   [31:0] add_ln13_27_fu_1219_p2;
wire   [31:0] add_ln13_35_fu_1238_p2;
wire   [31:0] add_ln13_43_fu_1258_p2;
wire   [31:0] add_ln13_51_fu_1279_p2;
wire   [31:0] add_ln13_59_fu_1299_p2;
wire   [31:0] add_ln13_2_fu_1308_p2;
wire   [31:0] add_ln13_10_fu_1317_p2;
wire   [31:0] add_ln13_18_fu_1326_p2;
wire   [31:0] add_ln13_26_fu_1335_p2;
wire   [31:0] add_ln13_34_fu_1344_p2;
wire   [31:0] add_ln13_42_fu_1353_p2;
wire   [31:0] add_ln13_50_fu_1362_p2;
wire   [31:0] add_ln13_58_fu_1371_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [2:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 c_fu_124 = 6'd0;
#0 ap_done_reg = 1'b0;
end
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_622_p0),.din1(grp_fu_622_p1),.ce(1'b1),.dout(grp_fu_622_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_626_p0),.din1(grp_fu_626_p1),.ce(1'b1),.dout(grp_fu_626_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_630_p0),.din1(grp_fu_630_p1),.ce(1'b1),.dout(grp_fu_630_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_634_p0),.din1(grp_fu_634_p1),.ce(1'b1),.dout(grp_fu_634_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U5(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_638_p0),.din1(grp_fu_638_p1),.ce(1'b1),.dout(grp_fu_638_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U6(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_642_p0),.din1(grp_fu_642_p1),.ce(1'b1),.dout(grp_fu_642_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U7(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_646_p0),.din1(filter_load_6),.ce(1'b1),.dout(grp_fu_646_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U8(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_650_p0),.din1(grp_fu_650_p1),.ce(1'b1),.dout(grp_fu_650_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U9(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_654_p0),.din1(grp_fu_654_p1),.ce(1'b1),.dout(grp_fu_654_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U10(.clk(ap_clk),.reset(ap_rst),.din0(orig_4_load_reg_1677),.din1(grp_fu_658_p1),.ce(1'b1),.dout(grp_fu_658_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U11(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_662_p0),.din1(grp_fu_662_p1),.ce(1'b1),.dout(grp_fu_662_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U12(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_666_p0),.din1(grp_fu_666_p1),.ce(1'b1),.dout(grp_fu_666_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U13(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_670_p0),.din1(grp_fu_670_p1),.ce(1'b1),.dout(grp_fu_670_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U14(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_674_p0),.din1(grp_fu_674_p1),.ce(1'b1),.dout(grp_fu_674_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U15(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_678_p0),.din1(grp_fu_678_p1),.ce(1'b1),.dout(grp_fu_678_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U16(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_682_p0),.din1(grp_fu_682_p1),.ce(1'b1),.dout(grp_fu_682_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U17(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_686_p0),.din1(grp_fu_686_p1),.ce(1'b1),.dout(grp_fu_686_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U18(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_690_p0),.din1(grp_fu_690_p1),.ce(1'b1),.dout(grp_fu_690_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U19(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_694_p0),.din1(grp_fu_694_p1),.ce(1'b1),.dout(grp_fu_694_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U20(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_698_p0),.din1(grp_fu_698_p1),.ce(1'b1),.dout(grp_fu_698_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U21(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_702_p0),.din1(grp_fu_702_p1),.ce(1'b1),.dout(grp_fu_702_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U22(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_706_p0),.din1(grp_fu_706_p1),.ce(1'b1),.dout(grp_fu_706_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U23(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_710_p0),.din1(grp_fu_710_p1),.ce(1'b1),.dout(grp_fu_710_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U24(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_714_p0),.din1(grp_fu_714_p1),.ce(1'b1),.dout(grp_fu_714_p2));
stencil_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage2)) begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0))) begin
            ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage2_11001)) begin
            ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c_fu_124 <= 6'd0;
    end else if (((icmp_ln8_reg_1595 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        c_fu_124 <= add_ln8_fu_1050_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln13_13_reg_2032 <= add_ln13_13_fu_1078_p2;
        add_ln13_16_reg_2037 <= add_ln13_16_fu_1084_p2;
        add_ln13_17_reg_2042 <= add_ln13_17_fu_1089_p2;
        add_ln13_21_reg_2047 <= add_ln13_21_fu_1100_p2;
        add_ln13_29_reg_2052 <= add_ln13_29_fu_1111_p2;
        add_ln13_37_reg_2067 <= add_ln13_37_fu_1122_p2;
        add_ln13_45_reg_2077 <= add_ln13_45_fu_1133_p2;
        add_ln13_53_reg_2082 <= add_ln13_53_fu_1144_p2;
        add_ln13_61_reg_2092 <= add_ln13_61_fu_1155_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln13_14_reg_2122 <= add_ln13_14_fu_1195_p2;
        add_ln13_1_reg_2102 <= add_ln13_1_fu_1165_p2;
        add_ln13_22_reg_2127 <= add_ln13_22_fu_1204_p2;
        add_ln13_24_reg_2132 <= add_ln13_24_fu_1209_p2;
        add_ln13_25_reg_2137 <= add_ln13_25_fu_1214_p2;
        add_ln13_30_reg_2142 <= add_ln13_30_fu_1223_p2;
        add_ln13_32_reg_2147 <= add_ln13_32_fu_1228_p2;
        add_ln13_33_reg_2152 <= add_ln13_33_fu_1233_p2;
        add_ln13_38_reg_2157 <= add_ln13_38_fu_1242_p2;
        add_ln13_40_reg_2162 <= add_ln13_40_fu_1247_p2;
        add_ln13_41_reg_2167 <= add_ln13_41_fu_1253_p2;
        add_ln13_46_reg_2172 <= add_ln13_46_fu_1262_p2;
        add_ln13_48_reg_2177 <= add_ln13_48_fu_1267_p2;
        add_ln13_49_reg_2182 <= add_ln13_49_fu_1273_p2;
        add_ln13_54_reg_2187 <= add_ln13_54_fu_1283_p2;
        add_ln13_56_reg_2192 <= add_ln13_56_fu_1288_p2;
        add_ln13_57_reg_2197 <= add_ln13_57_fu_1294_p2;
        add_ln13_62_reg_2202 <= add_ln13_62_fu_1303_p2;
        add_ln13_6_reg_2107 <= add_ln13_6_fu_1175_p2;
        add_ln13_8_reg_2112 <= add_ln13_8_fu_1180_p2;
        add_ln13_9_reg_2117 <= add_ln13_9_fu_1186_p2;
        add_ln13_reg_2097 <= add_ln13_fu_1161_p2;
        c_1_reg_1490 <= ap_sig_allocacmp_c_1;
        icmp_ln8_reg_1595 <= icmp_ln8_fu_884_p2;
        icmp_ln8_reg_1595_pp0_iter1_reg <= icmp_ln8_reg_1595;
        icmp_ln8_reg_1595_pp0_iter2_reg <= icmp_ln8_reg_1595_pp0_iter1_reg;
        lshr_ln12_2_reg_1604 <= {{add_ln12_1_fu_931_p2[12:3]}};
        lshr_ln12_3_reg_1609 <= {{add_ln12_2_fu_953_p2[12:3]}};
        lshr_ln12_5_reg_1619 <= {{add_ln12_4_fu_1002_p2[12:3]}};
        lshr_ln12_6_reg_1624 <= {{add_ln12_5_fu_1018_p2[12:3]}};
        zext_ln12_1_reg_1510[9 : 0] <= zext_ln12_1_fu_837_p1[9 : 0];
        zext_ln12_2_reg_1521[9 : 0] <= zext_ln12_2_fu_869_p1[9 : 0];
        zext_ln12_reg_1495[9 : 0] <= zext_ln12_fu_820_p1[9 : 0];
        zext_ln12_reg_1495_pp0_iter1_reg[9 : 0] <= zext_ln12_reg_1495[9 : 0];
        zext_ln12_reg_1495_pp0_iter2_reg[9 : 0] <= zext_ln12_reg_1495_pp0_iter1_reg[9 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln13_5_reg_1937 <= add_ln13_5_fu_1066_p2;
        temp_1_reg_2212 <= temp_1_fu_1321_p2;
        temp_2_reg_2217 <= temp_2_fu_1330_p2;
        temp_3_reg_2222 <= temp_3_fu_1339_p2;
        temp_4_reg_2227 <= temp_4_fu_1348_p2;
        temp_5_reg_2232 <= temp_5_fu_1357_p2;
        temp_6_reg_2237 <= temp_6_fu_1366_p2;
        temp_7_reg_2242 <= temp_7_fu_1375_p2;
        temp_reg_2207 <= temp_fu_1312_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_ln13_14_reg_1892 <= grp_fu_646_p2;
        mul_ln13_15_reg_1897 <= grp_fu_650_p2;
        mul_ln13_17_reg_1902 <= grp_fu_654_p2;
        mul_ln13_1_reg_1887 <= grp_fu_622_p2;
        mul_ln13_24_reg_1907 <= grp_fu_666_p2;
        mul_ln13_33_reg_1912 <= grp_fu_678_p2;
        mul_ln13_42_reg_1917 <= grp_fu_690_p2;
        mul_ln13_51_reg_1922 <= grp_fu_702_p2;
        mul_ln13_60_reg_1927 <= grp_fu_710_p2;
        orig_0_load_1_reg_1876 <= orig_0_q0;
        orig_0_load_reg_1865 <= orig_0_q1;
        orig_1_load_1_reg_1881 <= orig_1_q0;
        orig_1_load_reg_1870 <= orig_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln13_21_reg_1942 <= grp_fu_638_p2;
        mul_ln13_22_reg_1947 <= grp_fu_642_p2;
        mul_ln13_26_reg_1952 <= grp_fu_654_p2;
        mul_ln13_29_reg_1957 <= grp_fu_658_p2;
        mul_ln13_30_reg_1962 <= grp_fu_662_p2;
        mul_ln13_31_reg_1967 <= grp_fu_666_p2;
        mul_ln13_35_reg_1972 <= grp_fu_670_p2;
        mul_ln13_39_reg_1977 <= grp_fu_674_p2;
        mul_ln13_44_reg_1982 <= grp_fu_678_p2;
        mul_ln13_48_reg_1987 <= grp_fu_682_p2;
        mul_ln13_53_reg_1992 <= grp_fu_686_p2;
        mul_ln13_57_reg_1997 <= grp_fu_694_p2;
        mul_ln13_62_reg_2002 <= grp_fu_698_p2;
        mul_ln13_66_reg_2007 <= grp_fu_706_p2;
        mul_ln13_69_reg_2012 <= grp_fu_710_p2;
        mul_ln13_71_reg_2017 <= grp_fu_714_p2;
        mul_ln13_reg_1932 <= grp_fu_622_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_ln13_2_reg_2022 <= grp_fu_622_p2;
        mul_ln13_38_reg_2057 <= grp_fu_654_p2;
        mul_ln13_43_reg_2062 <= grp_fu_666_p2;
        mul_ln13_4_reg_2027 <= grp_fu_626_p2;
        mul_ln13_50_reg_2072 <= grp_fu_678_p2;
        mul_ln13_68_reg_2087 <= grp_fu_710_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_load_2_reg_1640 <= orig_0_q1;
        orig_0_load_3_reg_1751 <= orig_0_q0;
        orig_1_load_2_reg_1645 <= orig_1_q1;
        orig_1_load_3_reg_1767 <= orig_1_q0;
        orig_2_load_1_reg_1634 <= orig_2_q1;
        orig_2_load_2_reg_1651 <= orig_2_q0;
        orig_3_load_1_reg_1665 <= orig_3_q0;
        orig_3_load_reg_1658 <= orig_3_q1;
        orig_4_load_1_reg_1682 <= orig_4_q0;
        orig_4_load_reg_1677 <= orig_4_q1;
        orig_5_load_1_reg_1701 <= orig_5_q0;
        orig_5_load_reg_1694 <= orig_5_q1;
        orig_6_load_1_reg_1720 <= orig_6_q0;
        orig_6_load_reg_1713 <= orig_6_q1;
        orig_7_load_1_reg_1739 <= orig_7_q0;
        orig_7_load_reg_1732 <= orig_7_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_0_load_4_reg_1843 <= orig_0_q1;
        orig_0_load_5_reg_1849 <= orig_0_q0;
        orig_1_load_4_reg_1855 <= orig_1_q1;
        orig_1_load_5_reg_1860 <= orig_1_q0;
        orig_2_load_reg_1792 <= orig_2_q0;
        orig_3_load_2_reg_1809 <= orig_3_q0;
        orig_4_load_2_reg_1816 <= orig_4_q0;
        orig_5_load_2_reg_1823 <= orig_5_q0;
        orig_6_load_2_reg_1829 <= orig_6_q0;
        orig_7_load_2_reg_1836 <= orig_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_718 <= grp_fu_626_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_722 <= grp_fu_630_p2;
        reg_726 <= grp_fu_634_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_730 <= grp_fu_638_p2;
        reg_734 <= grp_fu_642_p2;
        reg_738 <= grp_fu_658_p2;
        reg_742 <= grp_fu_662_p2;
        reg_746 <= grp_fu_670_p2;
        reg_750 <= grp_fu_674_p2;
        reg_754 <= grp_fu_682_p2;
        reg_758 <= grp_fu_686_p2;
        reg_762 <= grp_fu_694_p2;
        reg_766 <= grp_fu_698_p2;
        reg_770 <= grp_fu_706_p2;
        reg_774 <= grp_fu_714_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_778 <= grp_fu_646_p2;
        reg_782 <= grp_fu_650_p2;
        reg_786 <= grp_fu_690_p2;
        reg_790 <= grp_fu_702_p2;
    end
end
always @ (*) begin
    if (((icmp_ln8_reg_1595 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_c_1 = 6'd0;
    end else begin
        ap_sig_allocacmp_c_1 = c_fu_124;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_622_p0 = orig_1_load_reg_1870;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_622_p0 = orig_2_load_reg_1792;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_622_p0 = orig_2_load_1_reg_1634;
    end else begin
        grp_fu_622_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_622_p1 = filter_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_622_p1 = filter_load_2;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_622_p1 = filter_load_5;
    end else begin
        grp_fu_622_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_626_p0 = orig_0_load_reg_1865;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_626_p0 = orig_2_load_reg_1792;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_626_p0 = orig_2_load_2_reg_1651;
    end else begin
        grp_fu_626_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_626_p1 = filter_load;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_626_p1 = filter_load_1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_626_p1 = filter_load_8;
    end else begin
        grp_fu_626_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_630_p0 = orig_1_load_1_reg_1881;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_630_p0 = orig_3_load_2_reg_1809;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_630_p0 = orig_0_load_2_reg_1640;
    end else begin
        grp_fu_630_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_630_p1 = filter_load_4;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_630_p1 = filter_load_8;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_630_p1 = filter_load_6;
    end else begin
        grp_fu_630_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_634_p0 = orig_0_load_1_reg_1876;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_634_p0 = orig_3_load_reg_1658;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_634_p0 = orig_1_load_2_reg_1645;
    end else begin
        grp_fu_634_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_634_p1 = filter_load_3;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_634_p1 = filter_load_1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_634_p1 = filter_load_7;
    end else begin
        grp_fu_634_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_638_p0 = orig_1_load_reg_1870;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_638_p0 = orig_4_load_2_reg_1816;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_638_p0 = orig_3_load_reg_1658;
    end else begin
        grp_fu_638_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_638_p1 = filter_load;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_638_p1 = filter_load_8;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_638_p1 = filter_load_2;
    end else begin
        grp_fu_638_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_642_p0 = orig_1_load_1_reg_1881;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_642_p0 = orig_2_load_reg_1792;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_642_p0 = orig_3_load_1_reg_1665;
    end else begin
        grp_fu_642_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_642_p1 = filter_load_3;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_642_p1 = filter_load;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_642_p1 = filter_load_5;
    end else begin
        grp_fu_642_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_646_p0 = orig_3_load_2_reg_1809;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_646_p0 = orig_2_load_2_reg_1651;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_646_p0 = orig_1_load_2_reg_1645;
    end else begin
        grp_fu_646_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_650_p0 = orig_3_load_1_reg_1665;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_650_p0 = orig_2_load_1_reg_1634;
    end else begin
        grp_fu_650_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_650_p1 = filter_load_3;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_650_p1 = filter_load_4;
    end else begin
        grp_fu_650_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_654_p0 = orig_5_load_reg_1694;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_654_p0 = orig_3_load_2_reg_1809;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_654_p0 = orig_2_load_2_reg_1651;
    end else begin
        grp_fu_654_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_654_p1 = filter_load_1;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_654_p1 = filter_load_7;
    end else begin
        grp_fu_654_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_658_p1 = filter_load;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_658_p1 = filter_load_1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_658_p1 = filter_load_2;
    end else begin
        grp_fu_658_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_662_p0 = orig_4_load_2_reg_1816;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_662_p0 = orig_5_load_2_reg_1823;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_662_p0 = orig_4_load_1_reg_1682;
    end else begin
        grp_fu_662_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_662_p1 = filter_load_6;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_662_p1 = filter_load_8;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_662_p1 = filter_load_5;
    end else begin
        grp_fu_662_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_666_p0 = orig_4_load_1_reg_1682;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_666_p0 = orig_3_load_reg_1658;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_666_p0 = orig_3_load_1_reg_1665;
    end else begin
        grp_fu_666_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_666_p1 = filter_load_3;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_666_p1 = filter_load;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_666_p1 = filter_load_4;
    end else begin
        grp_fu_666_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_670_p0 = orig_6_load_reg_1713;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_670_p0 = orig_4_load_2_reg_1816;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_670_p0 = orig_5_load_reg_1694;
    end else begin
        grp_fu_670_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_670_p1 = filter_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_670_p1 = filter_load_7;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_670_p1 = filter_load_2;
    end else begin
        grp_fu_670_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_674_p0 = orig_5_load_reg_1694;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_674_p0 = orig_6_load_2_reg_1829;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_674_p0 = orig_5_load_1_reg_1701;
    end else begin
        grp_fu_674_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_674_p1 = filter_load;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_674_p1 = filter_load_8;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_674_p1 = filter_load_5;
    end else begin
        grp_fu_674_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_678_p0 = orig_5_load_2_reg_1823;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_678_p0 = orig_4_load_1_reg_1682;
    end else begin
        grp_fu_678_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_678_p1 = filter_load_6;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_678_p1 = filter_load_7;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_678_p1 = filter_load_4;
    end else begin
        grp_fu_678_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_682_p0 = orig_5_load_1_reg_1701;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_682_p0 = orig_7_load_2_reg_1836;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_682_p0 = orig_6_load_reg_1713;
    end else begin
        grp_fu_682_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_682_p1 = filter_load_3;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_682_p1 = filter_load_8;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_682_p1 = filter_load_2;
    end else begin
        grp_fu_682_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_686_p0 = orig_7_load_reg_1732;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_686_p0 = orig_6_load_2_reg_1829;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_686_p0 = orig_6_load_1_reg_1720;
    end else begin
        grp_fu_686_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_686_p1 = filter_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_686_p1 = filter_load_7;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_686_p1 = filter_load_5;
    end else begin
        grp_fu_686_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_690_p0 = orig_6_load_reg_1713;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_690_p0 = orig_0_load_4_reg_1843;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_690_p0 = orig_5_load_1_reg_1701;
    end else begin
        grp_fu_690_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_690_p1 = filter_load;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_690_p1 = filter_load_5;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_690_p1 = filter_load_4;
    end else begin
        grp_fu_690_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_694_p0 = orig_6_load_2_reg_1829;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_694_p0 = orig_0_load_5_reg_1849;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_694_p0 = orig_7_load_reg_1732;
    end else begin
        grp_fu_694_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_694_p1 = filter_load_6;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_694_p1 = filter_load_8;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_694_p1 = filter_load_2;
    end else begin
        grp_fu_694_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_698_p0 = orig_6_load_1_reg_1720;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_698_p0 = orig_7_load_2_reg_1836;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_698_p0 = orig_7_load_1_reg_1739;
    end else begin
        grp_fu_698_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_698_p1 = filter_load_3;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_698_p1 = filter_load_7;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_698_p1 = filter_load_5;
    end else begin
        grp_fu_698_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_702_p0 = orig_0_load_3_reg_1751;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_702_p0 = orig_1_load_4_reg_1855;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_702_p0 = orig_6_load_1_reg_1720;
    end else begin
        grp_fu_702_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_702_p1 = filter_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_702_p1 = filter_load_5;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_702_p1 = filter_load_4;
    end else begin
        grp_fu_702_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_706_p0 = orig_7_load_reg_1732;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_706_p0 = orig_1_load_5_reg_1860;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_706_p0 = orig_0_load_3_reg_1751;
    end else begin
        grp_fu_706_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_706_p1 = filter_load;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_706_p1 = filter_load_8;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_706_p1 = filter_load_2;
    end else begin
        grp_fu_706_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_710_p0 = orig_7_load_2_reg_1836;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_710_p0 = orig_0_load_4_reg_1843;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_710_p0 = orig_7_load_1_reg_1739;
    end else begin
        grp_fu_710_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_710_p1 = filter_load_6;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_710_p1 = filter_load_4;
    end else begin
        grp_fu_710_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_714_p0 = orig_7_load_1_reg_1739;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_714_p0 = orig_0_load_5_reg_1849;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_714_p0 = orig_1_load_3_reg_1767;
    end else begin
        grp_fu_714_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_714_p1 = filter_load_3;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_714_p1 = filter_load_7;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_714_p1 = filter_load_2;
    end else begin
        grp_fu_714_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_0_address0_local = zext_ln12_1_reg_1510;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_0_address0_local = zext_ln12_5_fu_1038_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_0_address0_local = zext_ln12_3_fu_918_p1;
        end else begin
            orig_0_address0_local = 'bx;
        end
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_0_address1_local = zext_ln12_reg_1495;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_0_address1_local = zext_ln12_4_fu_1034_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_0_address1_local = zext_ln12_2_fu_869_p1;
        end else begin
            orig_0_address1_local = 'bx;
        end
    end else begin
        orig_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_1_address0_local = zext_ln12_1_reg_1510;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_1_address0_local = zext_ln12_9_fu_1046_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_1_address0_local = zext_ln12_7_fu_997_p1;
        end else begin
            orig_1_address0_local = 'bx;
        end
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_1_address1_local = zext_ln12_reg_1495;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_1_address1_local = zext_ln12_8_fu_1042_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_1_address1_local = zext_ln12_2_fu_869_p1;
        end else begin
            orig_1_address1_local = 'bx;
        end
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_2_address0_local = zext_ln12_reg_1495;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_2_address0_local = zext_ln12_2_fu_869_p1;
        end else begin
            orig_2_address0_local = 'bx;
        end
    end else begin
        orig_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_2_ce0_local = 1'b1;
    end else begin
        orig_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_2_ce1_local = 1'b1;
    end else begin
        orig_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_3_address0_local = zext_ln12_2_reg_1521;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_3_address0_local = zext_ln12_1_fu_837_p1;
        end else begin
            orig_3_address0_local = 'bx;
        end
    end else begin
        orig_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_3_ce0_local = 1'b1;
    end else begin
        orig_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_3_ce1_local = 1'b1;
    end else begin
        orig_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_4_address0_local = zext_ln12_2_reg_1521;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_4_address0_local = zext_ln12_1_fu_837_p1;
        end else begin
            orig_4_address0_local = 'bx;
        end
    end else begin
        orig_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_4_ce0_local = 1'b1;
    end else begin
        orig_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_4_ce1_local = 1'b1;
    end else begin
        orig_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_5_address0_local = zext_ln12_2_reg_1521;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_5_address0_local = zext_ln12_1_fu_837_p1;
        end else begin
            orig_5_address0_local = 'bx;
        end
    end else begin
        orig_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_5_ce0_local = 1'b1;
    end else begin
        orig_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_5_ce1_local = 1'b1;
    end else begin
        orig_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_6_address0_local = zext_ln12_2_reg_1521;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_6_address0_local = zext_ln12_1_fu_837_p1;
        end else begin
            orig_6_address0_local = 'bx;
        end
    end else begin
        orig_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_6_ce0_local = 1'b1;
    end else begin
        orig_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_6_ce1_local = 1'b1;
    end else begin
        orig_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_7_address0_local = zext_ln12_2_reg_1521;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_7_address0_local = zext_ln12_1_fu_837_p1;
        end else begin
            orig_7_address0_local = 'bx;
        end
    end else begin
        orig_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_7_ce0_local = 1'b1;
    end else begin
        orig_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_7_ce1_local = 1'b1;
    end else begin
        orig_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_0_ce0_local = 1'b1;
    end else begin
        sol_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_0_we0_local = 1'b1;
    end else begin
        sol_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_1_ce0_local = 1'b1;
    end else begin
        sol_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_2_ce0_local = 1'b1;
    end else begin
        sol_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_2_we0_local = 1'b1;
    end else begin
        sol_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_3_ce0_local = 1'b1;
    end else begin
        sol_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_3_we0_local = 1'b1;
    end else begin
        sol_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_4_ce0_local = 1'b1;
    end else begin
        sol_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_4_we0_local = 1'b1;
    end else begin
        sol_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_5_ce0_local = 1'b1;
    end else begin
        sol_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_5_we0_local = 1'b1;
    end else begin
        sol_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_6_ce0_local = 1'b1;
    end else begin
        sol_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln8_reg_1595_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_6_we0_local = 1'b1;
    end else begin
        sol_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_7_ce0_local = 1'b1;
    end else begin
        sol_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln8_reg_1595_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_7_we0_local = 1'b1;
    end else begin
        sol_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln12_1_fu_931_p2 = (zext_ln8_fu_890_p1 + tmp_6_fu_923_p3);
assign add_ln12_2_fu_953_p2 = (zext_ln8_fu_890_p1 + empty_fu_947_p2);
assign add_ln12_3_fu_981_p2 = (zext_ln12_6_fu_977_p1 + tmp_5_fu_894_p3);
assign add_ln12_4_fu_1002_p2 = (zext_ln12_6_fu_977_p1 + tmp_6_fu_923_p3);
assign add_ln12_5_fu_1018_p2 = (zext_ln12_6_fu_977_p1 + empty_fu_947_p2);
assign add_ln12_fu_902_p2 = (zext_ln8_fu_890_p1 + tmp_5_fu_894_p3);
assign add_ln13_10_fu_1317_p2 = (add_ln13_9_reg_2117 + add_ln13_8_reg_2112);
assign add_ln13_11_fu_1191_p2 = (mul_ln13_14_reg_1892 + mul_ln13_17_reg_1902);
assign add_ln13_12_fu_1072_p2 = (reg_734 + reg_722);
assign add_ln13_13_fu_1078_p2 = (add_ln13_12_fu_1072_p2 + reg_730);
assign add_ln13_14_fu_1195_p2 = (add_ln13_13_reg_2032 + add_ln13_11_fu_1191_p2);
assign add_ln13_16_fu_1084_p2 = (reg_782 + mul_ln13_22_reg_1947);
assign add_ln13_17_fu_1089_p2 = (reg_778 + reg_726);
assign add_ln13_18_fu_1326_p2 = (add_ln13_17_reg_2042 + add_ln13_16_reg_2037);
assign add_ln13_19_fu_1200_p2 = (mul_ln13_24_reg_1907 + mul_ln13_26_reg_1952);
assign add_ln13_1_fu_1165_p2 = (mul_ln13_reg_1932 + reg_726);
assign add_ln13_20_fu_1095_p2 = (reg_742 + mul_ln13_21_reg_1942);
assign add_ln13_21_fu_1100_p2 = (add_ln13_20_fu_1095_p2 + reg_738);
assign add_ln13_22_fu_1204_p2 = (add_ln13_21_reg_2047 + add_ln13_19_fu_1200_p2);
assign add_ln13_24_fu_1209_p2 = (reg_782 + mul_ln13_31_reg_1967);
assign add_ln13_25_fu_1214_p2 = (reg_778 + mul_ln13_29_reg_1957);
assign add_ln13_26_fu_1335_p2 = (add_ln13_25_reg_2137 + add_ln13_24_reg_2132);
assign add_ln13_27_fu_1219_p2 = (mul_ln13_33_reg_1912 + mul_ln13_35_reg_1972);
assign add_ln13_28_fu_1106_p2 = (reg_750 + mul_ln13_30_reg_1962);
assign add_ln13_29_fu_1111_p2 = (add_ln13_28_fu_1106_p2 + reg_746);
assign add_ln13_2_fu_1308_p2 = (add_ln13_1_reg_2102 + add_ln13_reg_2097);
assign add_ln13_30_fu_1223_p2 = (add_ln13_29_reg_2052 + add_ln13_27_fu_1219_p2);
assign add_ln13_32_fu_1228_p2 = (mul_ln13_43_reg_2062 + reg_738);
assign add_ln13_33_fu_1233_p2 = (reg_742 + mul_ln13_38_reg_2057);
assign add_ln13_34_fu_1344_p2 = (add_ln13_33_reg_2152 + add_ln13_32_reg_2147);
assign add_ln13_35_fu_1238_p2 = (mul_ln13_42_reg_1917 + mul_ln13_44_reg_1982);
assign add_ln13_36_fu_1117_p2 = (reg_758 + mul_ln13_39_reg_1977);
assign add_ln13_37_fu_1122_p2 = (add_ln13_36_fu_1117_p2 + reg_754);
assign add_ln13_38_fu_1242_p2 = (add_ln13_37_reg_2067 + add_ln13_35_fu_1238_p2);
assign add_ln13_3_fu_1170_p2 = (reg_722 + mul_ln13_1_reg_1887);
assign add_ln13_40_fu_1247_p2 = (reg_754 + reg_750);
assign add_ln13_41_fu_1253_p2 = (mul_ln13_50_reg_2072 + reg_746);
assign add_ln13_42_fu_1353_p2 = (add_ln13_41_reg_2167 + add_ln13_40_reg_2162);
assign add_ln13_43_fu_1258_p2 = (mul_ln13_51_reg_1922 + mul_ln13_53_reg_1992);
assign add_ln13_44_fu_1128_p2 = (reg_766 + mul_ln13_48_reg_1987);
assign add_ln13_45_fu_1133_p2 = (add_ln13_44_fu_1128_p2 + reg_762);
assign add_ln13_46_fu_1262_p2 = (add_ln13_45_reg_2077 + add_ln13_43_fu_1258_p2);
assign add_ln13_48_fu_1267_p2 = (reg_766 + reg_786);
assign add_ln13_49_fu_1273_p2 = (reg_762 + reg_758);
assign add_ln13_4_fu_1060_p2 = (reg_726 + reg_718);
assign add_ln13_50_fu_1362_p2 = (add_ln13_49_reg_2182 + add_ln13_48_reg_2177);
assign add_ln13_51_fu_1279_p2 = (mul_ln13_60_reg_1927 + mul_ln13_62_reg_2002);
assign add_ln13_52_fu_1139_p2 = (reg_786 + mul_ln13_57_reg_1997);
assign add_ln13_53_fu_1144_p2 = (add_ln13_52_fu_1139_p2 + reg_770);
assign add_ln13_54_fu_1283_p2 = (add_ln13_53_reg_2082 + add_ln13_51_fu_1279_p2);
assign add_ln13_56_fu_1288_p2 = (reg_774 + reg_770);
assign add_ln13_57_fu_1294_p2 = (mul_ln13_68_reg_2087 + reg_790);
assign add_ln13_58_fu_1371_p2 = (add_ln13_57_reg_2197 + add_ln13_56_reg_2192);
assign add_ln13_59_fu_1299_p2 = (mul_ln13_69_reg_2012 + mul_ln13_71_reg_2017);
assign add_ln13_5_fu_1066_p2 = (add_ln13_4_fu_1060_p2 + reg_722);
assign add_ln13_60_fu_1150_p2 = (reg_790 + mul_ln13_66_reg_2007);
assign add_ln13_61_fu_1155_p2 = (add_ln13_60_fu_1150_p2 + reg_774);
assign add_ln13_62_fu_1303_p2 = (add_ln13_61_reg_2092 + add_ln13_59_fu_1299_p2);
assign add_ln13_6_fu_1175_p2 = (add_ln13_5_reg_1937 + add_ln13_3_fu_1170_p2);
assign add_ln13_8_fu_1180_p2 = (reg_718 + reg_730);
assign add_ln13_9_fu_1186_p2 = (reg_734 + mul_ln13_15_reg_1897);
assign add_ln13_fu_1161_p2 = (mul_ln13_2_reg_2022 + mul_ln13_4_reg_2027);
assign add_ln5_1_fu_863_p2 = (zext_ln5_1_fu_859_p1 + tmp_1);
assign add_ln5_fu_829_p3 = {{indvars_iv_next173}, {lshr_ln_fu_802_p4}};
assign add_ln8_fu_1050_p2 = (c_1_reg_1490 + 6'd8);
assign add_ln_fu_812_p3 = {{r}, {lshr_ln_fu_802_p4}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign empty_fu_947_p2 = (tmp + 13'd130);
assign icmp_ln8_fu_884_p2 = ((or_ln8_fu_876_p3 == 6'd62) ? 1'b1 : 1'b0);
assign lshr_ln12_1_fu_908_p4 = {{add_ln12_fu_902_p2[12:3]}};
assign lshr_ln12_4_fu_987_p4 = {{add_ln12_3_fu_981_p2[12:3]}};
assign lshr_ln_fu_802_p4 = {{ap_sig_allocacmp_c_1[5:3]}};
assign or_ln8_1_fu_969_p3 = {{lshr_ln_fu_802_p4}, {3'd7}};
assign or_ln8_fu_876_p3 = {{lshr_ln_fu_802_p4}, {3'd6}};
assign orig_0_address0 = orig_0_address0_local;
assign orig_0_address1 = orig_0_address1_local;
assign orig_0_ce0 = orig_0_ce0_local;
assign orig_0_ce1 = orig_0_ce1_local;
assign orig_1_address0 = orig_1_address0_local;
assign orig_1_address1 = orig_1_address1_local;
assign orig_1_ce0 = orig_1_ce0_local;
assign orig_1_ce1 = orig_1_ce1_local;
assign orig_2_address0 = orig_2_address0_local;
assign orig_2_address1 = zext_ln12_1_fu_837_p1;
assign orig_2_ce0 = orig_2_ce0_local;
assign orig_2_ce1 = orig_2_ce1_local;
assign orig_3_address0 = orig_3_address0_local;
assign orig_3_address1 = zext_ln12_fu_820_p1;
assign orig_3_ce0 = orig_3_ce0_local;
assign orig_3_ce1 = orig_3_ce1_local;
assign orig_4_address0 = orig_4_address0_local;
assign orig_4_address1 = zext_ln12_fu_820_p1;
assign orig_4_ce0 = orig_4_ce0_local;
assign orig_4_ce1 = orig_4_ce1_local;
assign orig_5_address0 = orig_5_address0_local;
assign orig_5_address1 = zext_ln12_fu_820_p1;
assign orig_5_ce0 = orig_5_ce0_local;
assign orig_5_ce1 = orig_5_ce1_local;
assign orig_6_address0 = orig_6_address0_local;
assign orig_6_address1 = zext_ln12_fu_820_p1;
assign orig_6_ce0 = orig_6_ce0_local;
assign orig_6_ce1 = orig_6_ce1_local;
assign orig_7_address0 = orig_7_address0_local;
assign orig_7_address1 = zext_ln12_fu_820_p1;
assign orig_7_ce0 = orig_7_ce0_local;
assign orig_7_ce1 = orig_7_ce1_local;
assign sol_0_address0 = zext_ln12_reg_1495_pp0_iter2_reg;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_d0 = temp_reg_2207;
assign sol_0_we0 = sol_0_we0_local;
assign sol_1_address0 = zext_ln12_reg_1495_pp0_iter2_reg;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_d0 = temp_1_reg_2212;
assign sol_1_we0 = sol_1_we0_local;
assign sol_2_address0 = zext_ln12_reg_1495_pp0_iter2_reg;
assign sol_2_ce0 = sol_2_ce0_local;
assign sol_2_d0 = temp_2_reg_2217;
assign sol_2_we0 = sol_2_we0_local;
assign sol_3_address0 = zext_ln12_reg_1495_pp0_iter2_reg;
assign sol_3_ce0 = sol_3_ce0_local;
assign sol_3_d0 = temp_3_reg_2222;
assign sol_3_we0 = sol_3_we0_local;
assign sol_4_address0 = zext_ln12_reg_1495_pp0_iter2_reg;
assign sol_4_ce0 = sol_4_ce0_local;
assign sol_4_d0 = temp_4_reg_2227;
assign sol_4_we0 = sol_4_we0_local;
assign sol_5_address0 = zext_ln12_reg_1495_pp0_iter2_reg;
assign sol_5_ce0 = sol_5_ce0_local;
assign sol_5_d0 = temp_5_reg_2232;
assign sol_5_we0 = sol_5_we0_local;
assign sol_6_address0 = zext_ln12_reg_1495_pp0_iter2_reg;
assign sol_6_ce0 = sol_6_ce0_local;
assign sol_6_d0 = temp_6_reg_2237;
assign sol_6_we0 = sol_6_we0_local;
assign sol_7_address0 = zext_ln12_reg_1495_pp0_iter2_reg;
assign sol_7_ce0 = sol_7_ce0_local;
assign sol_7_d0 = temp_7_reg_2242;
assign sol_7_we0 = sol_7_we0_local;
assign temp_1_fu_1321_p2 = (add_ln13_14_reg_2122 + add_ln13_10_fu_1317_p2);
assign temp_2_fu_1330_p2 = (add_ln13_22_reg_2127 + add_ln13_18_fu_1326_p2);
assign temp_3_fu_1339_p2 = (add_ln13_30_reg_2142 + add_ln13_26_fu_1335_p2);
assign temp_4_fu_1348_p2 = (add_ln13_38_reg_2157 + add_ln13_34_fu_1344_p2);
assign temp_5_fu_1357_p2 = (add_ln13_46_reg_2172 + add_ln13_42_fu_1353_p2);
assign temp_6_fu_1366_p2 = (add_ln13_54_reg_2187 + add_ln13_50_fu_1362_p2);
assign temp_7_fu_1375_p2 = (add_ln13_62_reg_2202 + add_ln13_58_fu_1371_p2);
assign temp_fu_1312_p2 = (add_ln13_6_reg_2107 + add_ln13_2_fu_1308_p2);
assign tmp_5_fu_894_p3 = {{r}, {6'd2}};
assign tmp_6_fu_923_p3 = {{indvars_iv_next173}, {6'd2}};
assign zext_ln12_1_fu_837_p1 = add_ln5_fu_829_p3;
assign zext_ln12_2_fu_869_p1 = add_ln5_1_fu_863_p2;
assign zext_ln12_3_fu_918_p1 = lshr_ln12_1_fu_908_p4;
assign zext_ln12_4_fu_1034_p1 = lshr_ln12_2_reg_1604;
assign zext_ln12_5_fu_1038_p1 = lshr_ln12_3_reg_1609;
assign zext_ln12_6_fu_977_p1 = or_ln8_1_fu_969_p3;
assign zext_ln12_7_fu_997_p1 = lshr_ln12_4_fu_987_p4;
assign zext_ln12_8_fu_1042_p1 = lshr_ln12_5_reg_1619;
assign zext_ln12_9_fu_1046_p1 = lshr_ln12_6_reg_1624;
assign zext_ln12_fu_820_p1 = add_ln_fu_812_p3;
assign zext_ln5_1_fu_859_p1 = zext_ln5_cast_fu_851_p3;
assign zext_ln5_cast_fu_851_p3 = {{1'd1}, {zext_ln5_fu_847_p1}};
assign zext_ln5_fu_847_p1 = lshr_ln_fu_802_p4;
assign zext_ln8_fu_890_p1 = or_ln8_fu_876_p3;
always @ (posedge ap_clk) begin
    zext_ln12_reg_1495[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln12_reg_1495_pp0_iter1_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln12_reg_1495_pp0_iter2_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln12_1_reg_1510[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln12_2_reg_1521[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
end
endmodule 
