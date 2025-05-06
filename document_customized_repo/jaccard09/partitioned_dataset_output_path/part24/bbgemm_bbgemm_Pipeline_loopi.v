
module bbgemm_bbgemm_Pipeline_loopi (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,kk_cast4,m1_address0,m1_ce0,m1_q0,m1_address1,m1_ce1,m1_q1,empty_10,zext_ln15,prod_address0,prod_ce0,prod_we0,prod_d0,prod_q0,prod_address1,prod_ce1,prod_we1,prod_d1,prod_q1,empty_11,empty_12,empty_13,empty_14,empty_15,empty_16,empty_17,empty_18,empty_19,empty_20,empty_21,empty_22,empty_23,empty_24,empty_25,empty_26,empty_27,empty_28,empty_29,empty_30,empty_31,empty_32,empty_33,empty_34,empty_35,empty_36,empty_37,empty_38,empty_39,empty_40,empty_41,empty_42,empty_43,empty_44,empty_45,empty_46,empty_47,empty_48,empty_49,empty_50,empty_51,empty_52,empty_53,empty_54,empty_55,empty_56,empty_57,empty_58,empty_59,empty_60,empty_61,empty_62,empty_63,empty_64,empty_65,empty_66,empty_67,empty_68,empty_69,empty_70,empty_71,empty_72,empty);  
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [5:0] kk_cast4;
output  [11:0] m1_address0;
output   m1_ce0;
input  [63:0] m1_q0;
output  [11:0] m1_address1;
output   m1_ce1;
input  [63:0] m1_q1;
input  [63:0] empty_10;
input  [5:0] zext_ln15;
output  [11:0] prod_address0;
output   prod_ce0;
output   prod_we0;
output  [63:0] prod_d0;
input  [63:0] prod_q0;
output  [11:0] prod_address1;
output   prod_ce1;
output   prod_we1;
output  [63:0] prod_d1;
input  [63:0] prod_q1;
input  [63:0] empty_11;
input  [63:0] empty_12;
input  [63:0] empty_13;
input  [63:0] empty_14;
input  [63:0] empty_15;
input  [63:0] empty_16;
input  [63:0] empty_17;
input  [63:0] empty_18;
input  [63:0] empty_19;
input  [63:0] empty_20;
input  [63:0] empty_21;
input  [63:0] empty_22;
input  [63:0] empty_23;
input  [63:0] empty_24;
input  [63:0] empty_25;
input  [63:0] empty_26;
input  [63:0] empty_27;
input  [63:0] empty_28;
input  [63:0] empty_29;
input  [63:0] empty_30;
input  [63:0] empty_31;
input  [63:0] empty_32;
input  [63:0] empty_33;
input  [63:0] empty_34;
input  [63:0] empty_35;
input  [63:0] empty_36;
input  [63:0] empty_37;
input  [63:0] empty_38;
input  [63:0] empty_39;
input  [63:0] empty_40;
input  [63:0] empty_41;
input  [63:0] empty_42;
input  [63:0] empty_43;
input  [63:0] empty_44;
input  [63:0] empty_45;
input  [63:0] empty_46;
input  [63:0] empty_47;
input  [63:0] empty_48;
input  [63:0] empty_49;
input  [63:0] empty_50;
input  [63:0] empty_51;
input  [63:0] empty_52;
input  [63:0] empty_53;
input  [63:0] empty_54;
input  [63:0] empty_55;
input  [63:0] empty_56;
input  [63:0] empty_57;
input  [63:0] empty_58;
input  [63:0] empty_59;
input  [63:0] empty_60;
input  [63:0] empty_61;
input  [63:0] empty_62;
input  [63:0] empty_63;
input  [63:0] empty_64;
input  [63:0] empty_65;
input  [63:0] empty_66;
input  [63:0] empty_67;
input  [63:0] empty_68;
input  [63:0] empty_69;
input  [63:0] empty_70;
input  [63:0] empty_71;
input  [63:0] empty_72;
input  [63:0] empty;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
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
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln17_reg_1557;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_796;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_800;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
wire   [11:0] zext_ln15_cast_fu_805_p1;
reg   [11:0] zext_ln15_cast_reg_1537;
wire   [11:0] kk_cast4_cast_fu_809_p1;
reg   [11:0] kk_cast4_cast_reg_1547;
wire   [0:0] icmp_ln17_fu_821_p2;
wire   [5:0] empty_73_fu_833_p1;
reg   [5:0] empty_73_reg_1561;
reg   [11:0] prod_addr_reg_1576;
reg   [11:0] prod_addr_reg_1576_pp0_iter1_reg;
reg   [11:0] prod_addr_reg_1576_pp0_iter2_reg;
reg   [11:0] prod_addr_reg_1576_pp0_iter3_reg;
reg   [11:0] prod_addr_reg_1576_pp0_iter4_reg;
reg   [11:0] prod_addr_reg_1576_pp0_iter5_reg;
reg   [11:0] prod_addr_reg_1576_pp0_iter6_reg;
reg   [11:0] prod_addr_reg_1576_pp0_iter7_reg;
reg   [11:0] prod_addr_reg_1576_pp0_iter8_reg;
reg   [11:0] prod_addr_reg_1576_pp0_iter9_reg;
reg   [11:0] prod_addr_reg_1576_pp0_iter10_reg;
reg   [11:0] prod_addr_1_reg_1581;
reg   [11:0] prod_addr_1_reg_1581_pp0_iter1_reg;
reg   [11:0] prod_addr_1_reg_1581_pp0_iter2_reg;
reg   [11:0] prod_addr_1_reg_1581_pp0_iter3_reg;
reg   [11:0] prod_addr_1_reg_1581_pp0_iter4_reg;
reg   [11:0] prod_addr_1_reg_1581_pp0_iter5_reg;
reg   [11:0] prod_addr_1_reg_1581_pp0_iter6_reg;
reg   [11:0] prod_addr_1_reg_1581_pp0_iter7_reg;
reg   [11:0] prod_addr_1_reg_1581_pp0_iter8_reg;
reg   [11:0] prod_addr_1_reg_1581_pp0_iter9_reg;
reg   [11:0] prod_addr_1_reg_1581_pp0_iter10_reg;
reg   [63:0] prod_load_reg_1591;
reg   [63:0] prod_load_1_reg_1596;
reg   [11:0] prod_addr_2_reg_1601;
reg   [11:0] prod_addr_2_reg_1601_pp0_iter1_reg;
reg   [11:0] prod_addr_2_reg_1601_pp0_iter2_reg;
reg   [11:0] prod_addr_2_reg_1601_pp0_iter3_reg;
reg   [11:0] prod_addr_2_reg_1601_pp0_iter4_reg;
reg   [11:0] prod_addr_2_reg_1601_pp0_iter5_reg;
reg   [11:0] prod_addr_2_reg_1601_pp0_iter6_reg;
reg   [11:0] prod_addr_2_reg_1601_pp0_iter7_reg;
reg   [11:0] prod_addr_2_reg_1601_pp0_iter8_reg;
reg   [11:0] prod_addr_2_reg_1601_pp0_iter9_reg;
reg   [11:0] prod_addr_2_reg_1601_pp0_iter10_reg;
reg   [11:0] prod_addr_3_reg_1606;
reg   [11:0] prod_addr_3_reg_1606_pp0_iter1_reg;
reg   [11:0] prod_addr_3_reg_1606_pp0_iter2_reg;
reg   [11:0] prod_addr_3_reg_1606_pp0_iter3_reg;
reg   [11:0] prod_addr_3_reg_1606_pp0_iter4_reg;
reg   [11:0] prod_addr_3_reg_1606_pp0_iter5_reg;
reg   [11:0] prod_addr_3_reg_1606_pp0_iter6_reg;
reg   [11:0] prod_addr_3_reg_1606_pp0_iter7_reg;
reg   [11:0] prod_addr_3_reg_1606_pp0_iter8_reg;
reg   [11:0] prod_addr_3_reg_1606_pp0_iter9_reg;
reg   [11:0] prod_addr_3_reg_1606_pp0_iter10_reg;
wire   [63:0] temp_x_fu_952_p1;
reg   [63:0] prod_load_2_reg_1633;
reg   [63:0] prod_load_3_reg_1638;
reg   [11:0] prod_addr_4_reg_1643;
reg   [11:0] prod_addr_4_reg_1643_pp0_iter1_reg;
reg   [11:0] prod_addr_4_reg_1643_pp0_iter2_reg;
reg   [11:0] prod_addr_4_reg_1643_pp0_iter3_reg;
reg   [11:0] prod_addr_4_reg_1643_pp0_iter4_reg;
reg   [11:0] prod_addr_4_reg_1643_pp0_iter5_reg;
reg   [11:0] prod_addr_4_reg_1643_pp0_iter6_reg;
reg   [11:0] prod_addr_4_reg_1643_pp0_iter7_reg;
reg   [11:0] prod_addr_4_reg_1643_pp0_iter8_reg;
reg   [11:0] prod_addr_4_reg_1643_pp0_iter9_reg;
reg   [11:0] prod_addr_4_reg_1643_pp0_iter10_reg;
reg   [11:0] prod_addr_5_reg_1648;
reg   [11:0] prod_addr_5_reg_1648_pp0_iter1_reg;
reg   [11:0] prod_addr_5_reg_1648_pp0_iter2_reg;
reg   [11:0] prod_addr_5_reg_1648_pp0_iter3_reg;
reg   [11:0] prod_addr_5_reg_1648_pp0_iter4_reg;
reg   [11:0] prod_addr_5_reg_1648_pp0_iter5_reg;
reg   [11:0] prod_addr_5_reg_1648_pp0_iter6_reg;
reg   [11:0] prod_addr_5_reg_1648_pp0_iter7_reg;
reg   [11:0] prod_addr_5_reg_1648_pp0_iter8_reg;
reg   [11:0] prod_addr_5_reg_1648_pp0_iter9_reg;
reg   [11:0] prod_addr_5_reg_1648_pp0_iter10_reg;
reg   [63:0] m1_load_3_reg_1653;
reg   [63:0] prod_load_4_reg_1668;
reg   [63:0] prod_load_5_reg_1673;
reg   [11:0] prod_addr_6_reg_1678;
reg   [11:0] prod_addr_6_reg_1678_pp0_iter1_reg;
reg   [11:0] prod_addr_6_reg_1678_pp0_iter2_reg;
reg   [11:0] prod_addr_6_reg_1678_pp0_iter3_reg;
reg   [11:0] prod_addr_6_reg_1678_pp0_iter4_reg;
reg   [11:0] prod_addr_6_reg_1678_pp0_iter5_reg;
reg   [11:0] prod_addr_6_reg_1678_pp0_iter6_reg;
reg   [11:0] prod_addr_6_reg_1678_pp0_iter7_reg;
reg   [11:0] prod_addr_6_reg_1678_pp0_iter8_reg;
reg   [11:0] prod_addr_6_reg_1678_pp0_iter9_reg;
reg   [11:0] prod_addr_6_reg_1678_pp0_iter10_reg;
reg   [11:0] prod_addr_7_reg_1683;
reg   [11:0] prod_addr_7_reg_1683_pp0_iter1_reg;
reg   [11:0] prod_addr_7_reg_1683_pp0_iter2_reg;
reg   [11:0] prod_addr_7_reg_1683_pp0_iter3_reg;
reg   [11:0] prod_addr_7_reg_1683_pp0_iter4_reg;
reg   [11:0] prod_addr_7_reg_1683_pp0_iter5_reg;
reg   [11:0] prod_addr_7_reg_1683_pp0_iter6_reg;
reg   [11:0] prod_addr_7_reg_1683_pp0_iter7_reg;
reg   [11:0] prod_addr_7_reg_1683_pp0_iter8_reg;
reg   [11:0] prod_addr_7_reg_1683_pp0_iter9_reg;
reg   [11:0] prod_addr_7_reg_1683_pp0_iter10_reg;
wire   [63:0] temp_x_1_fu_1052_p1;
reg   [63:0] m1_load_5_reg_1700;
reg   [63:0] prod_load_6_reg_1715;
reg   [63:0] prod_load_7_reg_1720;
wire   [63:0] temp_x_2_fu_1084_p1;
wire   [63:0] temp_x_7_fu_1096_p1;
reg   [63:0] temp_x_7_reg_1737;
wire   [63:0] temp_x_3_fu_1100_p1;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] temp_x_4_fu_1111_p1;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [63:0] temp_x_5_fu_1123_p1;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] grp_fu_764_p2;
reg   [63:0] mul_reg_1785;
wire   [63:0] grp_fu_768_p2;
reg   [63:0] mul_1_reg_1790;
wire   [63:0] grp_fu_772_p2;
reg   [63:0] mul_2_reg_1795;
wire   [63:0] grp_fu_776_p2;
reg   [63:0] mul_3_reg_1800;
wire   [63:0] grp_fu_780_p2;
reg   [63:0] mul_4_reg_1805;
wire   [63:0] grp_fu_784_p2;
reg   [63:0] mul_5_reg_1810;
wire   [63:0] grp_fu_788_p2;
reg   [63:0] mul_6_reg_1815;
wire   [63:0] grp_fu_792_p2;
reg   [63:0] mul_7_reg_1820;
wire   [63:0] temp_x_6_fu_1134_p1;
wire   [63:0] bitcast_ln24_fu_1146_p1;
wire   [63:0] bitcast_ln24_1_fu_1150_p1;
wire   [63:0] bitcast_ln24_2_fu_1154_p1;
wire   [63:0] bitcast_ln24_3_fu_1158_p1;
wire   [63:0] bitcast_ln24_4_fu_1162_p1;
wire   [63:0] bitcast_ln24_5_fu_1166_p1;
wire   [63:0] bitcast_ln24_6_fu_1170_p1;
wire   [63:0] bitcast_ln24_7_fu_1174_p1;
reg   [63:0] mul_8_reg_1877;
reg   [63:0] mul_8_reg_1877_pp0_iter2_reg;
reg   [63:0] mul_9_reg_1882;
reg   [63:0] mul_9_reg_1882_pp0_iter2_reg;
reg   [63:0] mul_10_reg_1887;
reg   [63:0] mul_10_reg_1887_pp0_iter2_reg;
reg   [63:0] mul_11_reg_1892;
reg   [63:0] mul_11_reg_1892_pp0_iter2_reg;
reg   [63:0] mul_12_reg_1897;
reg   [63:0] mul_12_reg_1897_pp0_iter2_reg;
reg   [63:0] mul_13_reg_1902;
reg   [63:0] mul_13_reg_1902_pp0_iter2_reg;
reg   [63:0] mul_14_reg_1907;
reg   [63:0] mul_14_reg_1907_pp0_iter2_reg;
reg   [63:0] mul_15_reg_1912;
reg   [63:0] mul_15_reg_1912_pp0_iter2_reg;
reg   [63:0] mul_16_reg_1917;
reg   [63:0] mul_16_reg_1917_pp0_iter2_reg;
reg   [63:0] mul_16_reg_1917_pp0_iter3_reg;
reg   [63:0] mul_17_reg_1922;
reg   [63:0] mul_17_reg_1922_pp0_iter2_reg;
reg   [63:0] mul_17_reg_1922_pp0_iter3_reg;
reg   [63:0] mul_18_reg_1927;
reg   [63:0] mul_18_reg_1927_pp0_iter2_reg;
reg   [63:0] mul_18_reg_1927_pp0_iter3_reg;
reg   [63:0] mul_19_reg_1932;
reg   [63:0] mul_19_reg_1932_pp0_iter2_reg;
reg   [63:0] mul_19_reg_1932_pp0_iter3_reg;
reg   [63:0] mul_20_reg_1937;
reg   [63:0] mul_20_reg_1937_pp0_iter2_reg;
reg   [63:0] mul_20_reg_1937_pp0_iter3_reg;
reg   [63:0] mul_21_reg_1942;
reg   [63:0] mul_21_reg_1942_pp0_iter2_reg;
reg   [63:0] mul_21_reg_1942_pp0_iter3_reg;
reg   [63:0] mul_22_reg_1947;
reg   [63:0] mul_22_reg_1947_pp0_iter2_reg;
reg   [63:0] mul_22_reg_1947_pp0_iter3_reg;
reg   [63:0] mul_23_reg_1952;
reg   [63:0] mul_23_reg_1952_pp0_iter2_reg;
reg   [63:0] mul_23_reg_1952_pp0_iter3_reg;
reg   [63:0] mul_24_reg_1957;
reg   [63:0] mul_24_reg_1957_pp0_iter2_reg;
reg   [63:0] mul_24_reg_1957_pp0_iter3_reg;
reg   [63:0] mul_24_reg_1957_pp0_iter4_reg;
reg   [63:0] mul_25_reg_1962;
reg   [63:0] mul_25_reg_1962_pp0_iter2_reg;
reg   [63:0] mul_25_reg_1962_pp0_iter3_reg;
reg   [63:0] mul_25_reg_1962_pp0_iter4_reg;
reg   [63:0] mul_26_reg_1967;
reg   [63:0] mul_26_reg_1967_pp0_iter2_reg;
reg   [63:0] mul_26_reg_1967_pp0_iter3_reg;
reg   [63:0] mul_26_reg_1967_pp0_iter4_reg;
reg   [63:0] mul_27_reg_1972;
reg   [63:0] mul_27_reg_1972_pp0_iter2_reg;
reg   [63:0] mul_27_reg_1972_pp0_iter3_reg;
reg   [63:0] mul_27_reg_1972_pp0_iter4_reg;
reg   [63:0] mul_28_reg_1977;
reg   [63:0] mul_28_reg_1977_pp0_iter2_reg;
reg   [63:0] mul_28_reg_1977_pp0_iter3_reg;
reg   [63:0] mul_28_reg_1977_pp0_iter4_reg;
reg   [63:0] mul_29_reg_1982;
reg   [63:0] mul_29_reg_1982_pp0_iter2_reg;
reg   [63:0] mul_29_reg_1982_pp0_iter3_reg;
reg   [63:0] mul_29_reg_1982_pp0_iter4_reg;
reg   [63:0] mul_30_reg_1987;
reg   [63:0] mul_30_reg_1987_pp0_iter2_reg;
reg   [63:0] mul_30_reg_1987_pp0_iter3_reg;
reg   [63:0] mul_30_reg_1987_pp0_iter4_reg;
reg   [63:0] mul_31_reg_1992;
reg   [63:0] mul_31_reg_1992_pp0_iter2_reg;
reg   [63:0] mul_31_reg_1992_pp0_iter3_reg;
reg   [63:0] mul_31_reg_1992_pp0_iter4_reg;
reg   [63:0] mul_32_reg_1997;
reg   [63:0] mul_32_reg_1997_pp0_iter2_reg;
reg   [63:0] mul_32_reg_1997_pp0_iter3_reg;
reg   [63:0] mul_32_reg_1997_pp0_iter4_reg;
reg   [63:0] mul_32_reg_1997_pp0_iter5_reg;
reg   [63:0] mul_33_reg_2002;
reg   [63:0] mul_33_reg_2002_pp0_iter2_reg;
reg   [63:0] mul_33_reg_2002_pp0_iter3_reg;
reg   [63:0] mul_33_reg_2002_pp0_iter4_reg;
reg   [63:0] mul_33_reg_2002_pp0_iter5_reg;
reg   [63:0] mul_34_reg_2007;
reg   [63:0] mul_34_reg_2007_pp0_iter2_reg;
reg   [63:0] mul_34_reg_2007_pp0_iter3_reg;
reg   [63:0] mul_34_reg_2007_pp0_iter4_reg;
reg   [63:0] mul_34_reg_2007_pp0_iter5_reg;
reg   [63:0] mul_35_reg_2012;
reg   [63:0] mul_35_reg_2012_pp0_iter2_reg;
reg   [63:0] mul_35_reg_2012_pp0_iter3_reg;
reg   [63:0] mul_35_reg_2012_pp0_iter4_reg;
reg   [63:0] mul_35_reg_2012_pp0_iter5_reg;
reg   [63:0] mul_36_reg_2017;
reg   [63:0] mul_36_reg_2017_pp0_iter2_reg;
reg   [63:0] mul_36_reg_2017_pp0_iter3_reg;
reg   [63:0] mul_36_reg_2017_pp0_iter4_reg;
reg   [63:0] mul_36_reg_2017_pp0_iter5_reg;
reg   [63:0] mul_37_reg_2022;
reg   [63:0] mul_37_reg_2022_pp0_iter2_reg;
reg   [63:0] mul_37_reg_2022_pp0_iter3_reg;
reg   [63:0] mul_37_reg_2022_pp0_iter4_reg;
reg   [63:0] mul_37_reg_2022_pp0_iter5_reg;
reg   [63:0] mul_38_reg_2027;
reg   [63:0] mul_38_reg_2027_pp0_iter2_reg;
reg   [63:0] mul_38_reg_2027_pp0_iter3_reg;
reg   [63:0] mul_38_reg_2027_pp0_iter4_reg;
reg   [63:0] mul_38_reg_2027_pp0_iter5_reg;
reg   [63:0] mul_39_reg_2032;
reg   [63:0] mul_39_reg_2032_pp0_iter2_reg;
reg   [63:0] mul_39_reg_2032_pp0_iter3_reg;
reg   [63:0] mul_39_reg_2032_pp0_iter4_reg;
reg   [63:0] mul_39_reg_2032_pp0_iter5_reg;
reg   [63:0] mul_40_reg_2037;
reg   [63:0] mul_40_reg_2037_pp0_iter2_reg;
reg   [63:0] mul_40_reg_2037_pp0_iter3_reg;
reg   [63:0] mul_40_reg_2037_pp0_iter4_reg;
reg   [63:0] mul_40_reg_2037_pp0_iter5_reg;
reg   [63:0] mul_40_reg_2037_pp0_iter6_reg;
reg   [63:0] mul_41_reg_2042;
reg   [63:0] mul_41_reg_2042_pp0_iter2_reg;
reg   [63:0] mul_41_reg_2042_pp0_iter3_reg;
reg   [63:0] mul_41_reg_2042_pp0_iter4_reg;
reg   [63:0] mul_41_reg_2042_pp0_iter5_reg;
reg   [63:0] mul_41_reg_2042_pp0_iter6_reg;
reg   [63:0] mul_42_reg_2047;
reg   [63:0] mul_42_reg_2047_pp0_iter2_reg;
reg   [63:0] mul_42_reg_2047_pp0_iter3_reg;
reg   [63:0] mul_42_reg_2047_pp0_iter4_reg;
reg   [63:0] mul_42_reg_2047_pp0_iter5_reg;
reg   [63:0] mul_42_reg_2047_pp0_iter6_reg;
reg   [63:0] mul_43_reg_2052;
reg   [63:0] mul_43_reg_2052_pp0_iter2_reg;
reg   [63:0] mul_43_reg_2052_pp0_iter3_reg;
reg   [63:0] mul_43_reg_2052_pp0_iter4_reg;
reg   [63:0] mul_43_reg_2052_pp0_iter5_reg;
reg   [63:0] mul_43_reg_2052_pp0_iter6_reg;
reg   [63:0] mul_44_reg_2057;
reg   [63:0] mul_44_reg_2057_pp0_iter2_reg;
reg   [63:0] mul_44_reg_2057_pp0_iter3_reg;
reg   [63:0] mul_44_reg_2057_pp0_iter4_reg;
reg   [63:0] mul_44_reg_2057_pp0_iter5_reg;
reg   [63:0] mul_44_reg_2057_pp0_iter6_reg;
reg   [63:0] mul_45_reg_2062;
reg   [63:0] mul_45_reg_2062_pp0_iter2_reg;
reg   [63:0] mul_45_reg_2062_pp0_iter3_reg;
reg   [63:0] mul_45_reg_2062_pp0_iter4_reg;
reg   [63:0] mul_45_reg_2062_pp0_iter5_reg;
reg   [63:0] mul_45_reg_2062_pp0_iter6_reg;
reg   [63:0] mul_46_reg_2067;
reg   [63:0] mul_46_reg_2067_pp0_iter2_reg;
reg   [63:0] mul_46_reg_2067_pp0_iter3_reg;
reg   [63:0] mul_46_reg_2067_pp0_iter4_reg;
reg   [63:0] mul_46_reg_2067_pp0_iter5_reg;
reg   [63:0] mul_46_reg_2067_pp0_iter6_reg;
reg   [63:0] mul_47_reg_2072;
reg   [63:0] mul_47_reg_2072_pp0_iter2_reg;
reg   [63:0] mul_47_reg_2072_pp0_iter3_reg;
reg   [63:0] mul_47_reg_2072_pp0_iter4_reg;
reg   [63:0] mul_47_reg_2072_pp0_iter5_reg;
reg   [63:0] mul_47_reg_2072_pp0_iter6_reg;
reg   [63:0] mul_48_reg_2077;
reg   [63:0] mul_48_reg_2077_pp0_iter2_reg;
reg   [63:0] mul_48_reg_2077_pp0_iter3_reg;
reg   [63:0] mul_48_reg_2077_pp0_iter4_reg;
reg   [63:0] mul_48_reg_2077_pp0_iter5_reg;
reg   [63:0] mul_48_reg_2077_pp0_iter6_reg;
reg   [63:0] mul_48_reg_2077_pp0_iter7_reg;
reg   [63:0] mul_49_reg_2082;
reg   [63:0] mul_49_reg_2082_pp0_iter2_reg;
reg   [63:0] mul_49_reg_2082_pp0_iter3_reg;
reg   [63:0] mul_49_reg_2082_pp0_iter4_reg;
reg   [63:0] mul_49_reg_2082_pp0_iter5_reg;
reg   [63:0] mul_49_reg_2082_pp0_iter6_reg;
reg   [63:0] mul_49_reg_2082_pp0_iter7_reg;
reg   [63:0] mul_50_reg_2087;
reg   [63:0] mul_50_reg_2087_pp0_iter2_reg;
reg   [63:0] mul_50_reg_2087_pp0_iter3_reg;
reg   [63:0] mul_50_reg_2087_pp0_iter4_reg;
reg   [63:0] mul_50_reg_2087_pp0_iter5_reg;
reg   [63:0] mul_50_reg_2087_pp0_iter6_reg;
reg   [63:0] mul_50_reg_2087_pp0_iter7_reg;
reg   [63:0] mul_51_reg_2092;
reg   [63:0] mul_51_reg_2092_pp0_iter2_reg;
reg   [63:0] mul_51_reg_2092_pp0_iter3_reg;
reg   [63:0] mul_51_reg_2092_pp0_iter4_reg;
reg   [63:0] mul_51_reg_2092_pp0_iter5_reg;
reg   [63:0] mul_51_reg_2092_pp0_iter6_reg;
reg   [63:0] mul_51_reg_2092_pp0_iter7_reg;
reg   [63:0] mul_52_reg_2097;
reg   [63:0] mul_52_reg_2097_pp0_iter2_reg;
reg   [63:0] mul_52_reg_2097_pp0_iter3_reg;
reg   [63:0] mul_52_reg_2097_pp0_iter4_reg;
reg   [63:0] mul_52_reg_2097_pp0_iter5_reg;
reg   [63:0] mul_52_reg_2097_pp0_iter6_reg;
reg   [63:0] mul_52_reg_2097_pp0_iter7_reg;
reg   [63:0] mul_53_reg_2102;
reg   [63:0] mul_53_reg_2102_pp0_iter2_reg;
reg   [63:0] mul_53_reg_2102_pp0_iter3_reg;
reg   [63:0] mul_53_reg_2102_pp0_iter4_reg;
reg   [63:0] mul_53_reg_2102_pp0_iter5_reg;
reg   [63:0] mul_53_reg_2102_pp0_iter6_reg;
reg   [63:0] mul_53_reg_2102_pp0_iter7_reg;
reg   [63:0] mul_54_reg_2107;
reg   [63:0] mul_54_reg_2107_pp0_iter2_reg;
reg   [63:0] mul_54_reg_2107_pp0_iter3_reg;
reg   [63:0] mul_54_reg_2107_pp0_iter4_reg;
reg   [63:0] mul_54_reg_2107_pp0_iter5_reg;
reg   [63:0] mul_54_reg_2107_pp0_iter6_reg;
reg   [63:0] mul_54_reg_2107_pp0_iter7_reg;
reg   [63:0] mul_55_reg_2112;
reg   [63:0] mul_55_reg_2112_pp0_iter2_reg;
reg   [63:0] mul_55_reg_2112_pp0_iter3_reg;
reg   [63:0] mul_55_reg_2112_pp0_iter4_reg;
reg   [63:0] mul_55_reg_2112_pp0_iter5_reg;
reg   [63:0] mul_55_reg_2112_pp0_iter6_reg;
reg   [63:0] mul_55_reg_2112_pp0_iter7_reg;
reg   [63:0] mul_56_reg_2117;
reg   [63:0] mul_56_reg_2117_pp0_iter2_reg;
reg   [63:0] mul_56_reg_2117_pp0_iter3_reg;
reg   [63:0] mul_56_reg_2117_pp0_iter4_reg;
reg   [63:0] mul_56_reg_2117_pp0_iter5_reg;
reg   [63:0] mul_56_reg_2117_pp0_iter6_reg;
reg   [63:0] mul_56_reg_2117_pp0_iter7_reg;
reg   [63:0] mul_56_reg_2117_pp0_iter8_reg;
reg   [63:0] mul_57_reg_2122;
reg   [63:0] mul_57_reg_2122_pp0_iter2_reg;
reg   [63:0] mul_57_reg_2122_pp0_iter3_reg;
reg   [63:0] mul_57_reg_2122_pp0_iter4_reg;
reg   [63:0] mul_57_reg_2122_pp0_iter5_reg;
reg   [63:0] mul_57_reg_2122_pp0_iter6_reg;
reg   [63:0] mul_57_reg_2122_pp0_iter7_reg;
reg   [63:0] mul_57_reg_2122_pp0_iter8_reg;
reg   [63:0] mul_58_reg_2127;
reg   [63:0] mul_58_reg_2127_pp0_iter2_reg;
reg   [63:0] mul_58_reg_2127_pp0_iter3_reg;
reg   [63:0] mul_58_reg_2127_pp0_iter4_reg;
reg   [63:0] mul_58_reg_2127_pp0_iter5_reg;
reg   [63:0] mul_58_reg_2127_pp0_iter6_reg;
reg   [63:0] mul_58_reg_2127_pp0_iter7_reg;
reg   [63:0] mul_58_reg_2127_pp0_iter8_reg;
reg   [63:0] mul_59_reg_2132;
reg   [63:0] mul_59_reg_2132_pp0_iter2_reg;
reg   [63:0] mul_59_reg_2132_pp0_iter3_reg;
reg   [63:0] mul_59_reg_2132_pp0_iter4_reg;
reg   [63:0] mul_59_reg_2132_pp0_iter5_reg;
reg   [63:0] mul_59_reg_2132_pp0_iter6_reg;
reg   [63:0] mul_59_reg_2132_pp0_iter7_reg;
reg   [63:0] mul_59_reg_2132_pp0_iter8_reg;
reg   [63:0] mul_60_reg_2137;
reg   [63:0] mul_60_reg_2137_pp0_iter2_reg;
reg   [63:0] mul_60_reg_2137_pp0_iter3_reg;
reg   [63:0] mul_60_reg_2137_pp0_iter4_reg;
reg   [63:0] mul_60_reg_2137_pp0_iter5_reg;
reg   [63:0] mul_60_reg_2137_pp0_iter6_reg;
reg   [63:0] mul_60_reg_2137_pp0_iter7_reg;
reg   [63:0] mul_60_reg_2137_pp0_iter8_reg;
reg   [63:0] mul_61_reg_2142;
reg   [63:0] mul_61_reg_2142_pp0_iter2_reg;
reg   [63:0] mul_61_reg_2142_pp0_iter3_reg;
reg   [63:0] mul_61_reg_2142_pp0_iter4_reg;
reg   [63:0] mul_61_reg_2142_pp0_iter5_reg;
reg   [63:0] mul_61_reg_2142_pp0_iter6_reg;
reg   [63:0] mul_61_reg_2142_pp0_iter7_reg;
reg   [63:0] mul_61_reg_2142_pp0_iter8_reg;
reg   [63:0] mul_62_reg_2147;
reg   [63:0] mul_62_reg_2147_pp0_iter2_reg;
reg   [63:0] mul_62_reg_2147_pp0_iter3_reg;
reg   [63:0] mul_62_reg_2147_pp0_iter4_reg;
reg   [63:0] mul_62_reg_2147_pp0_iter5_reg;
reg   [63:0] mul_62_reg_2147_pp0_iter6_reg;
reg   [63:0] mul_62_reg_2147_pp0_iter7_reg;
reg   [63:0] mul_62_reg_2147_pp0_iter8_reg;
reg   [63:0] mul_63_reg_2152;
reg   [63:0] mul_63_reg_2152_pp0_iter2_reg;
reg   [63:0] mul_63_reg_2152_pp0_iter3_reg;
reg   [63:0] mul_63_reg_2152_pp0_iter4_reg;
reg   [63:0] mul_63_reg_2152_pp0_iter5_reg;
reg   [63:0] mul_63_reg_2152_pp0_iter6_reg;
reg   [63:0] mul_63_reg_2152_pp0_iter7_reg;
reg   [63:0] mul_63_reg_2152_pp0_iter8_reg;
wire   [63:0] grp_fu_732_p2;
reg   [63:0] add_reg_2157;
wire   [63:0] grp_fu_736_p2;
reg   [63:0] add26_s_reg_2162;
wire   [63:0] grp_fu_740_p2;
reg   [63:0] add26_8_reg_2167;
wire   [63:0] grp_fu_744_p2;
reg   [63:0] add26_9_reg_2172;
wire   [63:0] grp_fu_748_p2;
reg   [63:0] add26_10_reg_2177;
wire   [63:0] grp_fu_752_p2;
reg   [63:0] add26_11_reg_2182;
wire   [63:0] grp_fu_756_p2;
reg   [63:0] add26_12_reg_2187;
wire   [63:0] grp_fu_760_p2;
reg   [63:0] add26_13_reg_2192;
reg   [63:0] add26_1_reg_2197;
reg   [63:0] add26_1_1_reg_2202;
reg   [63:0] add26_1_2_reg_2207;
reg   [63:0] add26_1_3_reg_2212;
reg   [63:0] add26_1_4_reg_2217;
reg   [63:0] add26_1_5_reg_2222;
reg   [63:0] add26_1_6_reg_2227;
reg   [63:0] add26_1_7_reg_2232;
reg   [63:0] add26_2_reg_2237;
reg   [63:0] add26_2_1_reg_2242;
reg   [63:0] add26_2_2_reg_2247;
reg   [63:0] add26_2_3_reg_2252;
reg   [63:0] add26_2_4_reg_2257;
reg   [63:0] add26_2_5_reg_2262;
reg   [63:0] add26_2_6_reg_2267;
reg   [63:0] add26_2_7_reg_2272;
reg   [63:0] add26_3_reg_2277;
reg   [63:0] add26_3_1_reg_2282;
reg   [63:0] add26_3_2_reg_2287;
reg   [63:0] add26_3_3_reg_2292;
reg   [63:0] add26_3_4_reg_2297;
reg   [63:0] add26_3_5_reg_2302;
reg   [63:0] add26_3_6_reg_2307;
reg   [63:0] add26_3_7_reg_2312;
reg   [63:0] add26_4_reg_2317;
reg   [63:0] add26_4_1_reg_2322;
reg   [63:0] add26_4_2_reg_2327;
reg   [63:0] add26_4_3_reg_2332;
reg   [63:0] add26_4_4_reg_2337;
reg   [63:0] add26_4_5_reg_2342;
reg   [63:0] add26_4_6_reg_2347;
reg   [63:0] add26_4_7_reg_2352;
reg   [63:0] add26_5_reg_2357;
reg   [63:0] add26_5_1_reg_2362;
reg   [63:0] add26_5_2_reg_2367;
reg   [63:0] add26_5_3_reg_2372;
reg   [63:0] add26_5_4_reg_2377;
reg   [63:0] add26_5_5_reg_2382;
reg   [63:0] add26_5_6_reg_2387;
reg   [63:0] add26_5_7_reg_2392;
reg   [63:0] add26_6_reg_2397;
reg   [63:0] add26_6_1_reg_2402;
reg   [63:0] add26_6_2_reg_2407;
reg   [63:0] add26_6_3_reg_2412;
reg   [63:0] add26_6_4_reg_2417;
reg   [63:0] add26_6_5_reg_2422;
reg   [63:0] add26_6_6_reg_2427;
reg   [63:0] add26_6_7_reg_2432;
reg   [63:0] add26_7_reg_2437;
reg   [63:0] add26_7_1_reg_2442;
reg   [63:0] add26_7_2_reg_2447;
reg   [63:0] add26_7_3_reg_2452;
reg   [63:0] add26_7_4_reg_2457;
reg   [63:0] add26_7_5_reg_2462;
reg   [63:0] add26_7_6_reg_2467;
reg   [63:0] add26_7_7_reg_2472;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln21_fu_845_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln24_fu_858_p1;
wire   [63:0] zext_ln24_1_fu_877_p1;
wire   [63:0] zext_ln21_1_fu_888_p1;
wire   [63:0] zext_ln24_2_fu_910_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln24_3_fu_927_p1;
wire   [63:0] zext_ln21_2_fu_937_p1;
wire   [63:0] zext_ln21_3_fu_947_p1;
wire   [63:0] zext_ln24_4_fu_976_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln24_5_fu_993_p1;
wire   [63:0] zext_ln21_4_fu_1003_p1;
wire   [63:0] zext_ln21_5_fu_1013_p1;
wire   [63:0] zext_ln24_6_fu_1030_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln24_7_fu_1047_p1;
wire   [63:0] zext_ln21_6_fu_1069_p1;
wire   [63:0] zext_ln21_7_fu_1079_p1;
reg   [6:0] i_fu_186;
wire   [6:0] add_ln17_fu_827_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_1;
reg    m1_ce1_local;
reg   [11:0] m1_address1_local;
reg    m1_ce0_local;
reg   [11:0] m1_address0_local;
reg    prod_ce1_local;
reg   [11:0] prod_address1_local;
reg    prod_ce0_local;
reg   [11:0] prod_address0_local;
reg    prod_we1_local;
reg   [63:0] prod_d1_local;
wire   [63:0] bitcast_ln24_8_fu_1178_p1;
wire    ap_block_pp0_stage4;
reg    prod_we0_local;
reg   [63:0] prod_d0_local;
wire   [63:0] bitcast_ln24_9_fu_1182_p1;
wire   [63:0] bitcast_ln24_10_fu_1186_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] bitcast_ln24_11_fu_1190_p1;
wire   [63:0] bitcast_ln24_12_fu_1194_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] bitcast_ln24_13_fu_1198_p1;
wire   [63:0] bitcast_ln24_14_fu_1202_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] bitcast_ln24_15_fu_1206_p1;
reg   [63:0] grp_fu_732_p0;
reg   [63:0] grp_fu_732_p1;
reg   [63:0] grp_fu_736_p0;
reg   [63:0] grp_fu_736_p1;
reg   [63:0] grp_fu_740_p0;
reg   [63:0] grp_fu_740_p1;
reg   [63:0] grp_fu_744_p0;
reg   [63:0] grp_fu_744_p1;
reg   [63:0] grp_fu_748_p0;
reg   [63:0] grp_fu_748_p1;
reg   [63:0] grp_fu_752_p0;
reg   [63:0] grp_fu_752_p1;
reg   [63:0] grp_fu_756_p0;
reg   [63:0] grp_fu_756_p1;
reg   [63:0] grp_fu_760_p0;
reg   [63:0] grp_fu_760_p1;
reg   [63:0] grp_fu_764_p0;
reg   [63:0] grp_fu_764_p1;
reg   [63:0] grp_fu_768_p0;
reg   [63:0] grp_fu_768_p1;
reg   [63:0] grp_fu_772_p0;
reg   [63:0] grp_fu_772_p1;
reg   [63:0] grp_fu_776_p0;
reg   [63:0] grp_fu_776_p1;
reg   [63:0] grp_fu_780_p0;
reg   [63:0] grp_fu_780_p1;
reg   [63:0] grp_fu_784_p0;
reg   [63:0] grp_fu_784_p1;
reg   [63:0] grp_fu_788_p0;
reg   [63:0] grp_fu_788_p1;
reg   [63:0] grp_fu_792_p0;
reg   [63:0] grp_fu_792_p1;
wire   [11:0] add_ln_fu_837_p3;
wire   [11:0] add_ln1_fu_850_p3;
wire   [11:0] or_ln1_fu_863_p3;
wire   [11:0] add_ln24_fu_871_p2;
wire   [11:0] add_ln21_fu_882_p2;
wire   [11:0] or_ln24_1_fu_898_p3;
wire   [11:0] add_ln24_1_fu_905_p2;
wire   [11:0] or_ln24_2_fu_915_p3;
wire   [11:0] add_ln24_2_fu_922_p2;
wire   [11:0] add_ln21_1_fu_932_p2;
wire   [11:0] add_ln21_2_fu_942_p2;
wire   [11:0] or_ln24_3_fu_964_p3;
wire   [11:0] add_ln24_3_fu_971_p2;
wire   [11:0] or_ln24_4_fu_981_p3;
wire   [11:0] add_ln24_4_fu_988_p2;
wire   [11:0] add_ln21_3_fu_998_p2;
wire   [11:0] add_ln21_4_fu_1008_p2;
wire   [11:0] or_ln24_5_fu_1018_p3;
wire   [11:0] add_ln24_5_fu_1025_p2;
wire   [11:0] or_ln24_6_fu_1035_p3;
wire   [11:0] add_ln24_6_fu_1042_p2;
wire   [11:0] add_ln21_5_fu_1064_p2;
wire   [11:0] add_ln21_6_fu_1074_p2;
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
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to10;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
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
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_186 = 7'd0;
#0 ap_done_reg = 1'b0;
end
bbgemm_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_732_p0),.din1(grp_fu_732_p1),.ce(1'b1),.dout(grp_fu_732_p2));
bbgemm_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_736_p0),.din1(grp_fu_736_p1),.ce(1'b1),.dout(grp_fu_736_p2));
bbgemm_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_740_p0),.din1(grp_fu_740_p1),.ce(1'b1),.dout(grp_fu_740_p2));
bbgemm_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_744_p0),.din1(grp_fu_744_p1),.ce(1'b1),.dout(grp_fu_744_p2));
bbgemm_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U5(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_748_p0),.din1(grp_fu_748_p1),.ce(1'b1),.dout(grp_fu_748_p2));
bbgemm_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U6(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_752_p0),.din1(grp_fu_752_p1),.ce(1'b1),.dout(grp_fu_752_p2));
bbgemm_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U7(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_756_p0),.din1(grp_fu_756_p1),.ce(1'b1),.dout(grp_fu_756_p2));
bbgemm_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U8(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_760_p0),.din1(grp_fu_760_p1),.ce(1'b1),.dout(grp_fu_760_p2));
bbgemm_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U9(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_764_p0),.din1(grp_fu_764_p1),.ce(1'b1),.dout(grp_fu_764_p2));
bbgemm_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U10(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_768_p0),.din1(grp_fu_768_p1),.ce(1'b1),.dout(grp_fu_768_p2));
bbgemm_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U11(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_772_p0),.din1(grp_fu_772_p1),.ce(1'b1),.dout(grp_fu_772_p2));
bbgemm_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U12(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_776_p0),.din1(grp_fu_776_p1),.ce(1'b1),.dout(grp_fu_776_p2));
bbgemm_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U13(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_780_p0),.din1(grp_fu_780_p1),.ce(1'b1),.dout(grp_fu_780_p2));
bbgemm_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U14(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_784_p0),.din1(grp_fu_784_p1),.ce(1'b1),.dout(grp_fu_784_p2));
bbgemm_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U15(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_788_p0),.din1(grp_fu_788_p1),.ce(1'b1),.dout(grp_fu_788_p2));
bbgemm_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U16(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_792_p0),.din1(grp_fu_792_p1),.ce(1'b1),.dout(grp_fu_792_p2));
bbgemm_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage7)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln17_fu_821_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_186 <= add_ln17_fu_827_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_186 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_800 <= m1_q1;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_800 <= m1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add26_10_reg_2177 <= grp_fu_748_p2;
        add26_11_reg_2182 <= grp_fu_752_p2;
        add26_12_reg_2187 <= grp_fu_756_p2;
        add26_13_reg_2192 <= grp_fu_760_p2;
        add26_8_reg_2167 <= grp_fu_740_p2;
        add26_9_reg_2172 <= grp_fu_744_p2;
        add26_s_reg_2162 <= grp_fu_736_p2;
        add_reg_2157 <= grp_fu_732_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add26_1_1_reg_2202 <= grp_fu_736_p2;
        add26_1_2_reg_2207 <= grp_fu_740_p2;
        add26_1_3_reg_2212 <= grp_fu_744_p2;
        add26_1_4_reg_2217 <= grp_fu_748_p2;
        add26_1_5_reg_2222 <= grp_fu_752_p2;
        add26_1_6_reg_2227 <= grp_fu_756_p2;
        add26_1_7_reg_2232 <= grp_fu_760_p2;
        add26_1_reg_2197 <= grp_fu_732_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add26_2_1_reg_2242 <= grp_fu_736_p2;
        add26_2_2_reg_2247 <= grp_fu_740_p2;
        add26_2_3_reg_2252 <= grp_fu_744_p2;
        add26_2_4_reg_2257 <= grp_fu_748_p2;
        add26_2_5_reg_2262 <= grp_fu_752_p2;
        add26_2_6_reg_2267 <= grp_fu_756_p2;
        add26_2_7_reg_2272 <= grp_fu_760_p2;
        add26_2_reg_2237 <= grp_fu_732_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add26_3_1_reg_2282 <= grp_fu_736_p2;
        add26_3_2_reg_2287 <= grp_fu_740_p2;
        add26_3_3_reg_2292 <= grp_fu_744_p2;
        add26_3_4_reg_2297 <= grp_fu_748_p2;
        add26_3_5_reg_2302 <= grp_fu_752_p2;
        add26_3_6_reg_2307 <= grp_fu_756_p2;
        add26_3_7_reg_2312 <= grp_fu_760_p2;
        add26_3_reg_2277 <= grp_fu_732_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add26_4_1_reg_2322 <= grp_fu_736_p2;
        add26_4_2_reg_2327 <= grp_fu_740_p2;
        add26_4_3_reg_2332 <= grp_fu_744_p2;
        add26_4_4_reg_2337 <= grp_fu_748_p2;
        add26_4_5_reg_2342 <= grp_fu_752_p2;
        add26_4_6_reg_2347 <= grp_fu_756_p2;
        add26_4_7_reg_2352 <= grp_fu_760_p2;
        add26_4_reg_2317 <= grp_fu_732_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add26_5_1_reg_2362 <= grp_fu_736_p2;
        add26_5_2_reg_2367 <= grp_fu_740_p2;
        add26_5_3_reg_2372 <= grp_fu_744_p2;
        add26_5_4_reg_2377 <= grp_fu_748_p2;
        add26_5_5_reg_2382 <= grp_fu_752_p2;
        add26_5_6_reg_2387 <= grp_fu_756_p2;
        add26_5_7_reg_2392 <= grp_fu_760_p2;
        add26_5_reg_2357 <= grp_fu_732_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add26_6_1_reg_2402 <= grp_fu_736_p2;
        add26_6_2_reg_2407 <= grp_fu_740_p2;
        add26_6_3_reg_2412 <= grp_fu_744_p2;
        add26_6_4_reg_2417 <= grp_fu_748_p2;
        add26_6_5_reg_2422 <= grp_fu_752_p2;
        add26_6_6_reg_2427 <= grp_fu_756_p2;
        add26_6_7_reg_2432 <= grp_fu_760_p2;
        add26_6_reg_2397 <= grp_fu_732_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add26_7_1_reg_2442 <= grp_fu_736_p2;
        add26_7_2_reg_2447 <= grp_fu_740_p2;
        add26_7_3_reg_2452 <= grp_fu_744_p2;
        add26_7_4_reg_2457 <= grp_fu_748_p2;
        add26_7_5_reg_2462 <= grp_fu_752_p2;
        add26_7_6_reg_2467 <= grp_fu_756_p2;
        add26_7_7_reg_2472 <= grp_fu_760_p2;
        add26_7_reg_2437 <= grp_fu_732_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        mul_56_reg_2117_pp0_iter2_reg <= mul_56_reg_2117;
        mul_56_reg_2117_pp0_iter3_reg <= mul_56_reg_2117_pp0_iter2_reg;
        mul_56_reg_2117_pp0_iter4_reg <= mul_56_reg_2117_pp0_iter3_reg;
        mul_56_reg_2117_pp0_iter5_reg <= mul_56_reg_2117_pp0_iter4_reg;
        mul_56_reg_2117_pp0_iter6_reg <= mul_56_reg_2117_pp0_iter5_reg;
        mul_56_reg_2117_pp0_iter7_reg <= mul_56_reg_2117_pp0_iter6_reg;
        mul_56_reg_2117_pp0_iter8_reg <= mul_56_reg_2117_pp0_iter7_reg;
        mul_57_reg_2122_pp0_iter2_reg <= mul_57_reg_2122;
        mul_57_reg_2122_pp0_iter3_reg <= mul_57_reg_2122_pp0_iter2_reg;
        mul_57_reg_2122_pp0_iter4_reg <= mul_57_reg_2122_pp0_iter3_reg;
        mul_57_reg_2122_pp0_iter5_reg <= mul_57_reg_2122_pp0_iter4_reg;
        mul_57_reg_2122_pp0_iter6_reg <= mul_57_reg_2122_pp0_iter5_reg;
        mul_57_reg_2122_pp0_iter7_reg <= mul_57_reg_2122_pp0_iter6_reg;
        mul_57_reg_2122_pp0_iter8_reg <= mul_57_reg_2122_pp0_iter7_reg;
        mul_58_reg_2127_pp0_iter2_reg <= mul_58_reg_2127;
        mul_58_reg_2127_pp0_iter3_reg <= mul_58_reg_2127_pp0_iter2_reg;
        mul_58_reg_2127_pp0_iter4_reg <= mul_58_reg_2127_pp0_iter3_reg;
        mul_58_reg_2127_pp0_iter5_reg <= mul_58_reg_2127_pp0_iter4_reg;
        mul_58_reg_2127_pp0_iter6_reg <= mul_58_reg_2127_pp0_iter5_reg;
        mul_58_reg_2127_pp0_iter7_reg <= mul_58_reg_2127_pp0_iter6_reg;
        mul_58_reg_2127_pp0_iter8_reg <= mul_58_reg_2127_pp0_iter7_reg;
        mul_59_reg_2132_pp0_iter2_reg <= mul_59_reg_2132;
        mul_59_reg_2132_pp0_iter3_reg <= mul_59_reg_2132_pp0_iter2_reg;
        mul_59_reg_2132_pp0_iter4_reg <= mul_59_reg_2132_pp0_iter3_reg;
        mul_59_reg_2132_pp0_iter5_reg <= mul_59_reg_2132_pp0_iter4_reg;
        mul_59_reg_2132_pp0_iter6_reg <= mul_59_reg_2132_pp0_iter5_reg;
        mul_59_reg_2132_pp0_iter7_reg <= mul_59_reg_2132_pp0_iter6_reg;
        mul_59_reg_2132_pp0_iter8_reg <= mul_59_reg_2132_pp0_iter7_reg;
        mul_60_reg_2137_pp0_iter2_reg <= mul_60_reg_2137;
        mul_60_reg_2137_pp0_iter3_reg <= mul_60_reg_2137_pp0_iter2_reg;
        mul_60_reg_2137_pp0_iter4_reg <= mul_60_reg_2137_pp0_iter3_reg;
        mul_60_reg_2137_pp0_iter5_reg <= mul_60_reg_2137_pp0_iter4_reg;
        mul_60_reg_2137_pp0_iter6_reg <= mul_60_reg_2137_pp0_iter5_reg;
        mul_60_reg_2137_pp0_iter7_reg <= mul_60_reg_2137_pp0_iter6_reg;
        mul_60_reg_2137_pp0_iter8_reg <= mul_60_reg_2137_pp0_iter7_reg;
        mul_61_reg_2142_pp0_iter2_reg <= mul_61_reg_2142;
        mul_61_reg_2142_pp0_iter3_reg <= mul_61_reg_2142_pp0_iter2_reg;
        mul_61_reg_2142_pp0_iter4_reg <= mul_61_reg_2142_pp0_iter3_reg;
        mul_61_reg_2142_pp0_iter5_reg <= mul_61_reg_2142_pp0_iter4_reg;
        mul_61_reg_2142_pp0_iter6_reg <= mul_61_reg_2142_pp0_iter5_reg;
        mul_61_reg_2142_pp0_iter7_reg <= mul_61_reg_2142_pp0_iter6_reg;
        mul_61_reg_2142_pp0_iter8_reg <= mul_61_reg_2142_pp0_iter7_reg;
        mul_62_reg_2147_pp0_iter2_reg <= mul_62_reg_2147;
        mul_62_reg_2147_pp0_iter3_reg <= mul_62_reg_2147_pp0_iter2_reg;
        mul_62_reg_2147_pp0_iter4_reg <= mul_62_reg_2147_pp0_iter3_reg;
        mul_62_reg_2147_pp0_iter5_reg <= mul_62_reg_2147_pp0_iter4_reg;
        mul_62_reg_2147_pp0_iter6_reg <= mul_62_reg_2147_pp0_iter5_reg;
        mul_62_reg_2147_pp0_iter7_reg <= mul_62_reg_2147_pp0_iter6_reg;
        mul_62_reg_2147_pp0_iter8_reg <= mul_62_reg_2147_pp0_iter7_reg;
        mul_63_reg_2152_pp0_iter2_reg <= mul_63_reg_2152;
        mul_63_reg_2152_pp0_iter3_reg <= mul_63_reg_2152_pp0_iter2_reg;
        mul_63_reg_2152_pp0_iter4_reg <= mul_63_reg_2152_pp0_iter3_reg;
        mul_63_reg_2152_pp0_iter5_reg <= mul_63_reg_2152_pp0_iter4_reg;
        mul_63_reg_2152_pp0_iter6_reg <= mul_63_reg_2152_pp0_iter5_reg;
        mul_63_reg_2152_pp0_iter7_reg <= mul_63_reg_2152_pp0_iter6_reg;
        mul_63_reg_2152_pp0_iter8_reg <= mul_63_reg_2152_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_73_reg_1561 <= empty_73_fu_833_p1;
        icmp_ln17_reg_1557 <= icmp_ln17_fu_821_p2;
        kk_cast4_cast_reg_1547[5 : 0] <= kk_cast4_cast_fu_809_p1[5 : 0];
        prod_addr_1_reg_1581 <= zext_ln24_1_fu_877_p1;
        prod_addr_1_reg_1581_pp0_iter10_reg <= prod_addr_1_reg_1581_pp0_iter9_reg;
        prod_addr_1_reg_1581_pp0_iter1_reg <= prod_addr_1_reg_1581;
        prod_addr_1_reg_1581_pp0_iter2_reg <= prod_addr_1_reg_1581_pp0_iter1_reg;
        prod_addr_1_reg_1581_pp0_iter3_reg <= prod_addr_1_reg_1581_pp0_iter2_reg;
        prod_addr_1_reg_1581_pp0_iter4_reg <= prod_addr_1_reg_1581_pp0_iter3_reg;
        prod_addr_1_reg_1581_pp0_iter5_reg <= prod_addr_1_reg_1581_pp0_iter4_reg;
        prod_addr_1_reg_1581_pp0_iter6_reg <= prod_addr_1_reg_1581_pp0_iter5_reg;
        prod_addr_1_reg_1581_pp0_iter7_reg <= prod_addr_1_reg_1581_pp0_iter6_reg;
        prod_addr_1_reg_1581_pp0_iter8_reg <= prod_addr_1_reg_1581_pp0_iter7_reg;
        prod_addr_1_reg_1581_pp0_iter9_reg <= prod_addr_1_reg_1581_pp0_iter8_reg;
        prod_addr_reg_1576 <= zext_ln24_fu_858_p1;
        prod_addr_reg_1576_pp0_iter10_reg <= prod_addr_reg_1576_pp0_iter9_reg;
        prod_addr_reg_1576_pp0_iter1_reg <= prod_addr_reg_1576;
        prod_addr_reg_1576_pp0_iter2_reg <= prod_addr_reg_1576_pp0_iter1_reg;
        prod_addr_reg_1576_pp0_iter3_reg <= prod_addr_reg_1576_pp0_iter2_reg;
        prod_addr_reg_1576_pp0_iter4_reg <= prod_addr_reg_1576_pp0_iter3_reg;
        prod_addr_reg_1576_pp0_iter5_reg <= prod_addr_reg_1576_pp0_iter4_reg;
        prod_addr_reg_1576_pp0_iter6_reg <= prod_addr_reg_1576_pp0_iter5_reg;
        prod_addr_reg_1576_pp0_iter7_reg <= prod_addr_reg_1576_pp0_iter6_reg;
        prod_addr_reg_1576_pp0_iter8_reg <= prod_addr_reg_1576_pp0_iter7_reg;
        prod_addr_reg_1576_pp0_iter9_reg <= prod_addr_reg_1576_pp0_iter8_reg;
        zext_ln15_cast_reg_1537[5 : 0] <= zext_ln15_cast_fu_805_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        m1_load_3_reg_1653 <= m1_q0;
        prod_load_2_reg_1633 <= prod_q1;
        prod_load_3_reg_1638 <= prod_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        m1_load_5_reg_1700 <= m1_q0;
        prod_load_4_reg_1668 <= prod_q1;
        prod_load_5_reg_1673 <= prod_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_10_reg_1887 <= grp_fu_772_p2;
        mul_11_reg_1892 <= grp_fu_776_p2;
        mul_12_reg_1897 <= grp_fu_780_p2;
        mul_13_reg_1902 <= grp_fu_784_p2;
        mul_14_reg_1907 <= grp_fu_788_p2;
        mul_15_reg_1912 <= grp_fu_792_p2;
        mul_8_reg_1877 <= grp_fu_764_p2;
        mul_9_reg_1882 <= grp_fu_768_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_10_reg_1887_pp0_iter2_reg <= mul_10_reg_1887;
        mul_11_reg_1892_pp0_iter2_reg <= mul_11_reg_1892;
        mul_12_reg_1897_pp0_iter2_reg <= mul_12_reg_1897;
        mul_13_reg_1902_pp0_iter2_reg <= mul_13_reg_1902;
        mul_14_reg_1907_pp0_iter2_reg <= mul_14_reg_1907;
        mul_15_reg_1912_pp0_iter2_reg <= mul_15_reg_1912;
        mul_8_reg_1877_pp0_iter2_reg <= mul_8_reg_1877;
        mul_9_reg_1882_pp0_iter2_reg <= mul_9_reg_1882;
        prod_addr_2_reg_1601 <= zext_ln24_2_fu_910_p1;
        prod_addr_2_reg_1601_pp0_iter10_reg <= prod_addr_2_reg_1601_pp0_iter9_reg;
        prod_addr_2_reg_1601_pp0_iter1_reg <= prod_addr_2_reg_1601;
        prod_addr_2_reg_1601_pp0_iter2_reg <= prod_addr_2_reg_1601_pp0_iter1_reg;
        prod_addr_2_reg_1601_pp0_iter3_reg <= prod_addr_2_reg_1601_pp0_iter2_reg;
        prod_addr_2_reg_1601_pp0_iter4_reg <= prod_addr_2_reg_1601_pp0_iter3_reg;
        prod_addr_2_reg_1601_pp0_iter5_reg <= prod_addr_2_reg_1601_pp0_iter4_reg;
        prod_addr_2_reg_1601_pp0_iter6_reg <= prod_addr_2_reg_1601_pp0_iter5_reg;
        prod_addr_2_reg_1601_pp0_iter7_reg <= prod_addr_2_reg_1601_pp0_iter6_reg;
        prod_addr_2_reg_1601_pp0_iter8_reg <= prod_addr_2_reg_1601_pp0_iter7_reg;
        prod_addr_2_reg_1601_pp0_iter9_reg <= prod_addr_2_reg_1601_pp0_iter8_reg;
        prod_addr_3_reg_1606 <= zext_ln24_3_fu_927_p1;
        prod_addr_3_reg_1606_pp0_iter10_reg <= prod_addr_3_reg_1606_pp0_iter9_reg;
        prod_addr_3_reg_1606_pp0_iter1_reg <= prod_addr_3_reg_1606;
        prod_addr_3_reg_1606_pp0_iter2_reg <= prod_addr_3_reg_1606_pp0_iter1_reg;
        prod_addr_3_reg_1606_pp0_iter3_reg <= prod_addr_3_reg_1606_pp0_iter2_reg;
        prod_addr_3_reg_1606_pp0_iter4_reg <= prod_addr_3_reg_1606_pp0_iter3_reg;
        prod_addr_3_reg_1606_pp0_iter5_reg <= prod_addr_3_reg_1606_pp0_iter4_reg;
        prod_addr_3_reg_1606_pp0_iter6_reg <= prod_addr_3_reg_1606_pp0_iter5_reg;
        prod_addr_3_reg_1606_pp0_iter7_reg <= prod_addr_3_reg_1606_pp0_iter6_reg;
        prod_addr_3_reg_1606_pp0_iter8_reg <= prod_addr_3_reg_1606_pp0_iter7_reg;
        prod_addr_3_reg_1606_pp0_iter9_reg <= prod_addr_3_reg_1606_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_16_reg_1917 <= grp_fu_764_p2;
        mul_17_reg_1922 <= grp_fu_768_p2;
        mul_18_reg_1927 <= grp_fu_772_p2;
        mul_19_reg_1932 <= grp_fu_776_p2;
        mul_20_reg_1937 <= grp_fu_780_p2;
        mul_21_reg_1942 <= grp_fu_784_p2;
        mul_22_reg_1947 <= grp_fu_788_p2;
        mul_23_reg_1952 <= grp_fu_792_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_16_reg_1917_pp0_iter2_reg <= mul_16_reg_1917;
        mul_16_reg_1917_pp0_iter3_reg <= mul_16_reg_1917_pp0_iter2_reg;
        mul_17_reg_1922_pp0_iter2_reg <= mul_17_reg_1922;
        mul_17_reg_1922_pp0_iter3_reg <= mul_17_reg_1922_pp0_iter2_reg;
        mul_18_reg_1927_pp0_iter2_reg <= mul_18_reg_1927;
        mul_18_reg_1927_pp0_iter3_reg <= mul_18_reg_1927_pp0_iter2_reg;
        mul_19_reg_1932_pp0_iter2_reg <= mul_19_reg_1932;
        mul_19_reg_1932_pp0_iter3_reg <= mul_19_reg_1932_pp0_iter2_reg;
        mul_20_reg_1937_pp0_iter2_reg <= mul_20_reg_1937;
        mul_20_reg_1937_pp0_iter3_reg <= mul_20_reg_1937_pp0_iter2_reg;
        mul_21_reg_1942_pp0_iter2_reg <= mul_21_reg_1942;
        mul_21_reg_1942_pp0_iter3_reg <= mul_21_reg_1942_pp0_iter2_reg;
        mul_22_reg_1947_pp0_iter2_reg <= mul_22_reg_1947;
        mul_22_reg_1947_pp0_iter3_reg <= mul_22_reg_1947_pp0_iter2_reg;
        mul_23_reg_1952_pp0_iter2_reg <= mul_23_reg_1952;
        mul_23_reg_1952_pp0_iter3_reg <= mul_23_reg_1952_pp0_iter2_reg;
        prod_addr_4_reg_1643 <= zext_ln24_4_fu_976_p1;
        prod_addr_4_reg_1643_pp0_iter10_reg <= prod_addr_4_reg_1643_pp0_iter9_reg;
        prod_addr_4_reg_1643_pp0_iter1_reg <= prod_addr_4_reg_1643;
        prod_addr_4_reg_1643_pp0_iter2_reg <= prod_addr_4_reg_1643_pp0_iter1_reg;
        prod_addr_4_reg_1643_pp0_iter3_reg <= prod_addr_4_reg_1643_pp0_iter2_reg;
        prod_addr_4_reg_1643_pp0_iter4_reg <= prod_addr_4_reg_1643_pp0_iter3_reg;
        prod_addr_4_reg_1643_pp0_iter5_reg <= prod_addr_4_reg_1643_pp0_iter4_reg;
        prod_addr_4_reg_1643_pp0_iter6_reg <= prod_addr_4_reg_1643_pp0_iter5_reg;
        prod_addr_4_reg_1643_pp0_iter7_reg <= prod_addr_4_reg_1643_pp0_iter6_reg;
        prod_addr_4_reg_1643_pp0_iter8_reg <= prod_addr_4_reg_1643_pp0_iter7_reg;
        prod_addr_4_reg_1643_pp0_iter9_reg <= prod_addr_4_reg_1643_pp0_iter8_reg;
        prod_addr_5_reg_1648 <= zext_ln24_5_fu_993_p1;
        prod_addr_5_reg_1648_pp0_iter10_reg <= prod_addr_5_reg_1648_pp0_iter9_reg;
        prod_addr_5_reg_1648_pp0_iter1_reg <= prod_addr_5_reg_1648;
        prod_addr_5_reg_1648_pp0_iter2_reg <= prod_addr_5_reg_1648_pp0_iter1_reg;
        prod_addr_5_reg_1648_pp0_iter3_reg <= prod_addr_5_reg_1648_pp0_iter2_reg;
        prod_addr_5_reg_1648_pp0_iter4_reg <= prod_addr_5_reg_1648_pp0_iter3_reg;
        prod_addr_5_reg_1648_pp0_iter5_reg <= prod_addr_5_reg_1648_pp0_iter4_reg;
        prod_addr_5_reg_1648_pp0_iter6_reg <= prod_addr_5_reg_1648_pp0_iter5_reg;
        prod_addr_5_reg_1648_pp0_iter7_reg <= prod_addr_5_reg_1648_pp0_iter6_reg;
        prod_addr_5_reg_1648_pp0_iter8_reg <= prod_addr_5_reg_1648_pp0_iter7_reg;
        prod_addr_5_reg_1648_pp0_iter9_reg <= prod_addr_5_reg_1648_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_1_reg_1790 <= grp_fu_768_p2;
        mul_2_reg_1795 <= grp_fu_772_p2;
        mul_3_reg_1800 <= grp_fu_776_p2;
        mul_4_reg_1805 <= grp_fu_780_p2;
        mul_5_reg_1810 <= grp_fu_784_p2;
        mul_6_reg_1815 <= grp_fu_788_p2;
        mul_7_reg_1820 <= grp_fu_792_p2;
        mul_reg_1785 <= grp_fu_764_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul_24_reg_1957 <= grp_fu_764_p2;
        mul_25_reg_1962 <= grp_fu_768_p2;
        mul_26_reg_1967 <= grp_fu_772_p2;
        mul_27_reg_1972 <= grp_fu_776_p2;
        mul_28_reg_1977 <= grp_fu_780_p2;
        mul_29_reg_1982 <= grp_fu_784_p2;
        mul_30_reg_1987 <= grp_fu_788_p2;
        mul_31_reg_1992 <= grp_fu_792_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul_24_reg_1957_pp0_iter2_reg <= mul_24_reg_1957;
        mul_24_reg_1957_pp0_iter3_reg <= mul_24_reg_1957_pp0_iter2_reg;
        mul_24_reg_1957_pp0_iter4_reg <= mul_24_reg_1957_pp0_iter3_reg;
        mul_25_reg_1962_pp0_iter2_reg <= mul_25_reg_1962;
        mul_25_reg_1962_pp0_iter3_reg <= mul_25_reg_1962_pp0_iter2_reg;
        mul_25_reg_1962_pp0_iter4_reg <= mul_25_reg_1962_pp0_iter3_reg;
        mul_26_reg_1967_pp0_iter2_reg <= mul_26_reg_1967;
        mul_26_reg_1967_pp0_iter3_reg <= mul_26_reg_1967_pp0_iter2_reg;
        mul_26_reg_1967_pp0_iter4_reg <= mul_26_reg_1967_pp0_iter3_reg;
        mul_27_reg_1972_pp0_iter2_reg <= mul_27_reg_1972;
        mul_27_reg_1972_pp0_iter3_reg <= mul_27_reg_1972_pp0_iter2_reg;
        mul_27_reg_1972_pp0_iter4_reg <= mul_27_reg_1972_pp0_iter3_reg;
        mul_28_reg_1977_pp0_iter2_reg <= mul_28_reg_1977;
        mul_28_reg_1977_pp0_iter3_reg <= mul_28_reg_1977_pp0_iter2_reg;
        mul_28_reg_1977_pp0_iter4_reg <= mul_28_reg_1977_pp0_iter3_reg;
        mul_29_reg_1982_pp0_iter2_reg <= mul_29_reg_1982;
        mul_29_reg_1982_pp0_iter3_reg <= mul_29_reg_1982_pp0_iter2_reg;
        mul_29_reg_1982_pp0_iter4_reg <= mul_29_reg_1982_pp0_iter3_reg;
        mul_30_reg_1987_pp0_iter2_reg <= mul_30_reg_1987;
        mul_30_reg_1987_pp0_iter3_reg <= mul_30_reg_1987_pp0_iter2_reg;
        mul_30_reg_1987_pp0_iter4_reg <= mul_30_reg_1987_pp0_iter3_reg;
        mul_31_reg_1992_pp0_iter2_reg <= mul_31_reg_1992;
        mul_31_reg_1992_pp0_iter3_reg <= mul_31_reg_1992_pp0_iter2_reg;
        mul_31_reg_1992_pp0_iter4_reg <= mul_31_reg_1992_pp0_iter3_reg;
        prod_addr_6_reg_1678 <= zext_ln24_6_fu_1030_p1;
        prod_addr_6_reg_1678_pp0_iter10_reg <= prod_addr_6_reg_1678_pp0_iter9_reg;
        prod_addr_6_reg_1678_pp0_iter1_reg <= prod_addr_6_reg_1678;
        prod_addr_6_reg_1678_pp0_iter2_reg <= prod_addr_6_reg_1678_pp0_iter1_reg;
        prod_addr_6_reg_1678_pp0_iter3_reg <= prod_addr_6_reg_1678_pp0_iter2_reg;
        prod_addr_6_reg_1678_pp0_iter4_reg <= prod_addr_6_reg_1678_pp0_iter3_reg;
        prod_addr_6_reg_1678_pp0_iter5_reg <= prod_addr_6_reg_1678_pp0_iter4_reg;
        prod_addr_6_reg_1678_pp0_iter6_reg <= prod_addr_6_reg_1678_pp0_iter5_reg;
        prod_addr_6_reg_1678_pp0_iter7_reg <= prod_addr_6_reg_1678_pp0_iter6_reg;
        prod_addr_6_reg_1678_pp0_iter8_reg <= prod_addr_6_reg_1678_pp0_iter7_reg;
        prod_addr_6_reg_1678_pp0_iter9_reg <= prod_addr_6_reg_1678_pp0_iter8_reg;
        prod_addr_7_reg_1683 <= zext_ln24_7_fu_1047_p1;
        prod_addr_7_reg_1683_pp0_iter10_reg <= prod_addr_7_reg_1683_pp0_iter9_reg;
        prod_addr_7_reg_1683_pp0_iter1_reg <= prod_addr_7_reg_1683;
        prod_addr_7_reg_1683_pp0_iter2_reg <= prod_addr_7_reg_1683_pp0_iter1_reg;
        prod_addr_7_reg_1683_pp0_iter3_reg <= prod_addr_7_reg_1683_pp0_iter2_reg;
        prod_addr_7_reg_1683_pp0_iter4_reg <= prod_addr_7_reg_1683_pp0_iter3_reg;
        prod_addr_7_reg_1683_pp0_iter5_reg <= prod_addr_7_reg_1683_pp0_iter4_reg;
        prod_addr_7_reg_1683_pp0_iter6_reg <= prod_addr_7_reg_1683_pp0_iter5_reg;
        prod_addr_7_reg_1683_pp0_iter7_reg <= prod_addr_7_reg_1683_pp0_iter6_reg;
        prod_addr_7_reg_1683_pp0_iter8_reg <= prod_addr_7_reg_1683_pp0_iter7_reg;
        prod_addr_7_reg_1683_pp0_iter9_reg <= prod_addr_7_reg_1683_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul_32_reg_1997 <= grp_fu_764_p2;
        mul_33_reg_2002 <= grp_fu_768_p2;
        mul_34_reg_2007 <= grp_fu_772_p2;
        mul_35_reg_2012 <= grp_fu_776_p2;
        mul_36_reg_2017 <= grp_fu_780_p2;
        mul_37_reg_2022 <= grp_fu_784_p2;
        mul_38_reg_2027 <= grp_fu_788_p2;
        mul_39_reg_2032 <= grp_fu_792_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul_32_reg_1997_pp0_iter2_reg <= mul_32_reg_1997;
        mul_32_reg_1997_pp0_iter3_reg <= mul_32_reg_1997_pp0_iter2_reg;
        mul_32_reg_1997_pp0_iter4_reg <= mul_32_reg_1997_pp0_iter3_reg;
        mul_32_reg_1997_pp0_iter5_reg <= mul_32_reg_1997_pp0_iter4_reg;
        mul_33_reg_2002_pp0_iter2_reg <= mul_33_reg_2002;
        mul_33_reg_2002_pp0_iter3_reg <= mul_33_reg_2002_pp0_iter2_reg;
        mul_33_reg_2002_pp0_iter4_reg <= mul_33_reg_2002_pp0_iter3_reg;
        mul_33_reg_2002_pp0_iter5_reg <= mul_33_reg_2002_pp0_iter4_reg;
        mul_34_reg_2007_pp0_iter2_reg <= mul_34_reg_2007;
        mul_34_reg_2007_pp0_iter3_reg <= mul_34_reg_2007_pp0_iter2_reg;
        mul_34_reg_2007_pp0_iter4_reg <= mul_34_reg_2007_pp0_iter3_reg;
        mul_34_reg_2007_pp0_iter5_reg <= mul_34_reg_2007_pp0_iter4_reg;
        mul_35_reg_2012_pp0_iter2_reg <= mul_35_reg_2012;
        mul_35_reg_2012_pp0_iter3_reg <= mul_35_reg_2012_pp0_iter2_reg;
        mul_35_reg_2012_pp0_iter4_reg <= mul_35_reg_2012_pp0_iter3_reg;
        mul_35_reg_2012_pp0_iter5_reg <= mul_35_reg_2012_pp0_iter4_reg;
        mul_36_reg_2017_pp0_iter2_reg <= mul_36_reg_2017;
        mul_36_reg_2017_pp0_iter3_reg <= mul_36_reg_2017_pp0_iter2_reg;
        mul_36_reg_2017_pp0_iter4_reg <= mul_36_reg_2017_pp0_iter3_reg;
        mul_36_reg_2017_pp0_iter5_reg <= mul_36_reg_2017_pp0_iter4_reg;
        mul_37_reg_2022_pp0_iter2_reg <= mul_37_reg_2022;
        mul_37_reg_2022_pp0_iter3_reg <= mul_37_reg_2022_pp0_iter2_reg;
        mul_37_reg_2022_pp0_iter4_reg <= mul_37_reg_2022_pp0_iter3_reg;
        mul_37_reg_2022_pp0_iter5_reg <= mul_37_reg_2022_pp0_iter4_reg;
        mul_38_reg_2027_pp0_iter2_reg <= mul_38_reg_2027;
        mul_38_reg_2027_pp0_iter3_reg <= mul_38_reg_2027_pp0_iter2_reg;
        mul_38_reg_2027_pp0_iter4_reg <= mul_38_reg_2027_pp0_iter3_reg;
        mul_38_reg_2027_pp0_iter5_reg <= mul_38_reg_2027_pp0_iter4_reg;
        mul_39_reg_2032_pp0_iter2_reg <= mul_39_reg_2032;
        mul_39_reg_2032_pp0_iter3_reg <= mul_39_reg_2032_pp0_iter2_reg;
        mul_39_reg_2032_pp0_iter4_reg <= mul_39_reg_2032_pp0_iter3_reg;
        mul_39_reg_2032_pp0_iter5_reg <= mul_39_reg_2032_pp0_iter4_reg;
        temp_x_7_reg_1737 <= temp_x_7_fu_1096_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul_40_reg_2037 <= grp_fu_764_p2;
        mul_41_reg_2042 <= grp_fu_768_p2;
        mul_42_reg_2047 <= grp_fu_772_p2;
        mul_43_reg_2052 <= grp_fu_776_p2;
        mul_44_reg_2057 <= grp_fu_780_p2;
        mul_45_reg_2062 <= grp_fu_784_p2;
        mul_46_reg_2067 <= grp_fu_788_p2;
        mul_47_reg_2072 <= grp_fu_792_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul_40_reg_2037_pp0_iter2_reg <= mul_40_reg_2037;
        mul_40_reg_2037_pp0_iter3_reg <= mul_40_reg_2037_pp0_iter2_reg;
        mul_40_reg_2037_pp0_iter4_reg <= mul_40_reg_2037_pp0_iter3_reg;
        mul_40_reg_2037_pp0_iter5_reg <= mul_40_reg_2037_pp0_iter4_reg;
        mul_40_reg_2037_pp0_iter6_reg <= mul_40_reg_2037_pp0_iter5_reg;
        mul_41_reg_2042_pp0_iter2_reg <= mul_41_reg_2042;
        mul_41_reg_2042_pp0_iter3_reg <= mul_41_reg_2042_pp0_iter2_reg;
        mul_41_reg_2042_pp0_iter4_reg <= mul_41_reg_2042_pp0_iter3_reg;
        mul_41_reg_2042_pp0_iter5_reg <= mul_41_reg_2042_pp0_iter4_reg;
        mul_41_reg_2042_pp0_iter6_reg <= mul_41_reg_2042_pp0_iter5_reg;
        mul_42_reg_2047_pp0_iter2_reg <= mul_42_reg_2047;
        mul_42_reg_2047_pp0_iter3_reg <= mul_42_reg_2047_pp0_iter2_reg;
        mul_42_reg_2047_pp0_iter4_reg <= mul_42_reg_2047_pp0_iter3_reg;
        mul_42_reg_2047_pp0_iter5_reg <= mul_42_reg_2047_pp0_iter4_reg;
        mul_42_reg_2047_pp0_iter6_reg <= mul_42_reg_2047_pp0_iter5_reg;
        mul_43_reg_2052_pp0_iter2_reg <= mul_43_reg_2052;
        mul_43_reg_2052_pp0_iter3_reg <= mul_43_reg_2052_pp0_iter2_reg;
        mul_43_reg_2052_pp0_iter4_reg <= mul_43_reg_2052_pp0_iter3_reg;
        mul_43_reg_2052_pp0_iter5_reg <= mul_43_reg_2052_pp0_iter4_reg;
        mul_43_reg_2052_pp0_iter6_reg <= mul_43_reg_2052_pp0_iter5_reg;
        mul_44_reg_2057_pp0_iter2_reg <= mul_44_reg_2057;
        mul_44_reg_2057_pp0_iter3_reg <= mul_44_reg_2057_pp0_iter2_reg;
        mul_44_reg_2057_pp0_iter4_reg <= mul_44_reg_2057_pp0_iter3_reg;
        mul_44_reg_2057_pp0_iter5_reg <= mul_44_reg_2057_pp0_iter4_reg;
        mul_44_reg_2057_pp0_iter6_reg <= mul_44_reg_2057_pp0_iter5_reg;
        mul_45_reg_2062_pp0_iter2_reg <= mul_45_reg_2062;
        mul_45_reg_2062_pp0_iter3_reg <= mul_45_reg_2062_pp0_iter2_reg;
        mul_45_reg_2062_pp0_iter4_reg <= mul_45_reg_2062_pp0_iter3_reg;
        mul_45_reg_2062_pp0_iter5_reg <= mul_45_reg_2062_pp0_iter4_reg;
        mul_45_reg_2062_pp0_iter6_reg <= mul_45_reg_2062_pp0_iter5_reg;
        mul_46_reg_2067_pp0_iter2_reg <= mul_46_reg_2067;
        mul_46_reg_2067_pp0_iter3_reg <= mul_46_reg_2067_pp0_iter2_reg;
        mul_46_reg_2067_pp0_iter4_reg <= mul_46_reg_2067_pp0_iter3_reg;
        mul_46_reg_2067_pp0_iter5_reg <= mul_46_reg_2067_pp0_iter4_reg;
        mul_46_reg_2067_pp0_iter6_reg <= mul_46_reg_2067_pp0_iter5_reg;
        mul_47_reg_2072_pp0_iter2_reg <= mul_47_reg_2072;
        mul_47_reg_2072_pp0_iter3_reg <= mul_47_reg_2072_pp0_iter2_reg;
        mul_47_reg_2072_pp0_iter4_reg <= mul_47_reg_2072_pp0_iter3_reg;
        mul_47_reg_2072_pp0_iter5_reg <= mul_47_reg_2072_pp0_iter4_reg;
        mul_47_reg_2072_pp0_iter6_reg <= mul_47_reg_2072_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul_48_reg_2077 <= grp_fu_764_p2;
        mul_49_reg_2082 <= grp_fu_768_p2;
        mul_50_reg_2087 <= grp_fu_772_p2;
        mul_51_reg_2092 <= grp_fu_776_p2;
        mul_52_reg_2097 <= grp_fu_780_p2;
        mul_53_reg_2102 <= grp_fu_784_p2;
        mul_54_reg_2107 <= grp_fu_788_p2;
        mul_55_reg_2112 <= grp_fu_792_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul_48_reg_2077_pp0_iter2_reg <= mul_48_reg_2077;
        mul_48_reg_2077_pp0_iter3_reg <= mul_48_reg_2077_pp0_iter2_reg;
        mul_48_reg_2077_pp0_iter4_reg <= mul_48_reg_2077_pp0_iter3_reg;
        mul_48_reg_2077_pp0_iter5_reg <= mul_48_reg_2077_pp0_iter4_reg;
        mul_48_reg_2077_pp0_iter6_reg <= mul_48_reg_2077_pp0_iter5_reg;
        mul_48_reg_2077_pp0_iter7_reg <= mul_48_reg_2077_pp0_iter6_reg;
        mul_49_reg_2082_pp0_iter2_reg <= mul_49_reg_2082;
        mul_49_reg_2082_pp0_iter3_reg <= mul_49_reg_2082_pp0_iter2_reg;
        mul_49_reg_2082_pp0_iter4_reg <= mul_49_reg_2082_pp0_iter3_reg;
        mul_49_reg_2082_pp0_iter5_reg <= mul_49_reg_2082_pp0_iter4_reg;
        mul_49_reg_2082_pp0_iter6_reg <= mul_49_reg_2082_pp0_iter5_reg;
        mul_49_reg_2082_pp0_iter7_reg <= mul_49_reg_2082_pp0_iter6_reg;
        mul_50_reg_2087_pp0_iter2_reg <= mul_50_reg_2087;
        mul_50_reg_2087_pp0_iter3_reg <= mul_50_reg_2087_pp0_iter2_reg;
        mul_50_reg_2087_pp0_iter4_reg <= mul_50_reg_2087_pp0_iter3_reg;
        mul_50_reg_2087_pp0_iter5_reg <= mul_50_reg_2087_pp0_iter4_reg;
        mul_50_reg_2087_pp0_iter6_reg <= mul_50_reg_2087_pp0_iter5_reg;
        mul_50_reg_2087_pp0_iter7_reg <= mul_50_reg_2087_pp0_iter6_reg;
        mul_51_reg_2092_pp0_iter2_reg <= mul_51_reg_2092;
        mul_51_reg_2092_pp0_iter3_reg <= mul_51_reg_2092_pp0_iter2_reg;
        mul_51_reg_2092_pp0_iter4_reg <= mul_51_reg_2092_pp0_iter3_reg;
        mul_51_reg_2092_pp0_iter5_reg <= mul_51_reg_2092_pp0_iter4_reg;
        mul_51_reg_2092_pp0_iter6_reg <= mul_51_reg_2092_pp0_iter5_reg;
        mul_51_reg_2092_pp0_iter7_reg <= mul_51_reg_2092_pp0_iter6_reg;
        mul_52_reg_2097_pp0_iter2_reg <= mul_52_reg_2097;
        mul_52_reg_2097_pp0_iter3_reg <= mul_52_reg_2097_pp0_iter2_reg;
        mul_52_reg_2097_pp0_iter4_reg <= mul_52_reg_2097_pp0_iter3_reg;
        mul_52_reg_2097_pp0_iter5_reg <= mul_52_reg_2097_pp0_iter4_reg;
        mul_52_reg_2097_pp0_iter6_reg <= mul_52_reg_2097_pp0_iter5_reg;
        mul_52_reg_2097_pp0_iter7_reg <= mul_52_reg_2097_pp0_iter6_reg;
        mul_53_reg_2102_pp0_iter2_reg <= mul_53_reg_2102;
        mul_53_reg_2102_pp0_iter3_reg <= mul_53_reg_2102_pp0_iter2_reg;
        mul_53_reg_2102_pp0_iter4_reg <= mul_53_reg_2102_pp0_iter3_reg;
        mul_53_reg_2102_pp0_iter5_reg <= mul_53_reg_2102_pp0_iter4_reg;
        mul_53_reg_2102_pp0_iter6_reg <= mul_53_reg_2102_pp0_iter5_reg;
        mul_53_reg_2102_pp0_iter7_reg <= mul_53_reg_2102_pp0_iter6_reg;
        mul_54_reg_2107_pp0_iter2_reg <= mul_54_reg_2107;
        mul_54_reg_2107_pp0_iter3_reg <= mul_54_reg_2107_pp0_iter2_reg;
        mul_54_reg_2107_pp0_iter4_reg <= mul_54_reg_2107_pp0_iter3_reg;
        mul_54_reg_2107_pp0_iter5_reg <= mul_54_reg_2107_pp0_iter4_reg;
        mul_54_reg_2107_pp0_iter6_reg <= mul_54_reg_2107_pp0_iter5_reg;
        mul_54_reg_2107_pp0_iter7_reg <= mul_54_reg_2107_pp0_iter6_reg;
        mul_55_reg_2112_pp0_iter2_reg <= mul_55_reg_2112;
        mul_55_reg_2112_pp0_iter3_reg <= mul_55_reg_2112_pp0_iter2_reg;
        mul_55_reg_2112_pp0_iter4_reg <= mul_55_reg_2112_pp0_iter3_reg;
        mul_55_reg_2112_pp0_iter5_reg <= mul_55_reg_2112_pp0_iter4_reg;
        mul_55_reg_2112_pp0_iter6_reg <= mul_55_reg_2112_pp0_iter5_reg;
        mul_55_reg_2112_pp0_iter7_reg <= mul_55_reg_2112_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul_56_reg_2117 <= grp_fu_764_p2;
        mul_57_reg_2122 <= grp_fu_768_p2;
        mul_58_reg_2127 <= grp_fu_772_p2;
        mul_59_reg_2132 <= grp_fu_776_p2;
        mul_60_reg_2137 <= grp_fu_780_p2;
        mul_61_reg_2142 <= grp_fu_784_p2;
        mul_62_reg_2147 <= grp_fu_788_p2;
        mul_63_reg_2152 <= grp_fu_792_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        prod_load_1_reg_1596 <= prod_q0;
        prod_load_reg_1591 <= prod_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        prod_load_6_reg_1715 <= prod_q1;
        prod_load_7_reg_1720 <= prod_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_796 <= m1_q1;
    end
end
always @ (*) begin
    if (((icmp_ln17_reg_1557 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to10 = 1'b1;
    end else begin
        ap_idle_pp0_1to10 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_186;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_732_p0 = add26_6_reg_2397;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_732_p0 = add26_5_reg_2357;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_732_p0 = add26_4_reg_2317;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_732_p0 = add26_3_reg_2277;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_732_p0 = add26_2_reg_2237;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_732_p0 = add26_1_reg_2197;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_732_p0 = add_reg_2157;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_732_p0 = bitcast_ln24_fu_1146_p1;
    end else begin
        grp_fu_732_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_732_p1 = mul_56_reg_2117_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_732_p1 = mul_48_reg_2077_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_732_p1 = mul_40_reg_2037_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_732_p1 = mul_32_reg_1997_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_732_p1 = mul_24_reg_1957_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_732_p1 = mul_16_reg_1917_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_732_p1 = mul_8_reg_1877_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_732_p1 = mul_reg_1785;
    end else begin
        grp_fu_732_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_736_p0 = add26_6_1_reg_2402;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_736_p0 = add26_5_1_reg_2362;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_736_p0 = add26_4_1_reg_2322;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_736_p0 = add26_3_1_reg_2282;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_736_p0 = add26_2_1_reg_2242;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_736_p0 = add26_1_1_reg_2202;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_736_p0 = add26_s_reg_2162;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_736_p0 = bitcast_ln24_1_fu_1150_p1;
    end else begin
        grp_fu_736_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_736_p1 = mul_57_reg_2122_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_736_p1 = mul_49_reg_2082_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_736_p1 = mul_41_reg_2042_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_736_p1 = mul_33_reg_2002_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_736_p1 = mul_25_reg_1962_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_736_p1 = mul_17_reg_1922_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_736_p1 = mul_9_reg_1882_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_736_p1 = mul_1_reg_1790;
    end else begin
        grp_fu_736_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_740_p0 = add26_6_2_reg_2407;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_740_p0 = add26_5_2_reg_2367;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_740_p0 = add26_4_2_reg_2327;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_740_p0 = add26_3_2_reg_2287;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_740_p0 = add26_2_2_reg_2247;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_740_p0 = add26_1_2_reg_2207;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_740_p0 = add26_8_reg_2167;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_740_p0 = bitcast_ln24_2_fu_1154_p1;
    end else begin
        grp_fu_740_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_740_p1 = mul_58_reg_2127_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_740_p1 = mul_50_reg_2087_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_740_p1 = mul_42_reg_2047_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_740_p1 = mul_34_reg_2007_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_740_p1 = mul_26_reg_1967_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_740_p1 = mul_18_reg_1927_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_740_p1 = mul_10_reg_1887_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_740_p1 = mul_2_reg_1795;
    end else begin
        grp_fu_740_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_744_p0 = add26_6_3_reg_2412;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_744_p0 = add26_5_3_reg_2372;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_744_p0 = add26_4_3_reg_2332;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_744_p0 = add26_3_3_reg_2292;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_744_p0 = add26_2_3_reg_2252;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_744_p0 = add26_1_3_reg_2212;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_744_p0 = add26_9_reg_2172;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_744_p0 = bitcast_ln24_3_fu_1158_p1;
    end else begin
        grp_fu_744_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_744_p1 = mul_59_reg_2132_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_744_p1 = mul_51_reg_2092_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_744_p1 = mul_43_reg_2052_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_744_p1 = mul_35_reg_2012_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_744_p1 = mul_27_reg_1972_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_744_p1 = mul_19_reg_1932_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_744_p1 = mul_11_reg_1892_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_744_p1 = mul_3_reg_1800;
    end else begin
        grp_fu_744_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_748_p0 = add26_6_4_reg_2417;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_748_p0 = add26_5_4_reg_2377;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_748_p0 = add26_4_4_reg_2337;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_748_p0 = add26_3_4_reg_2297;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_748_p0 = add26_2_4_reg_2257;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_748_p0 = add26_1_4_reg_2217;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_748_p0 = add26_10_reg_2177;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_748_p0 = bitcast_ln24_4_fu_1162_p1;
    end else begin
        grp_fu_748_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_748_p1 = mul_60_reg_2137_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_748_p1 = mul_52_reg_2097_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_748_p1 = mul_44_reg_2057_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_748_p1 = mul_36_reg_2017_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_748_p1 = mul_28_reg_1977_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_748_p1 = mul_20_reg_1937_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_748_p1 = mul_12_reg_1897_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_748_p1 = mul_4_reg_1805;
    end else begin
        grp_fu_748_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_752_p0 = add26_6_5_reg_2422;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_752_p0 = add26_5_5_reg_2382;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_752_p0 = add26_4_5_reg_2342;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_752_p0 = add26_3_5_reg_2302;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_752_p0 = add26_2_5_reg_2262;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_752_p0 = add26_1_5_reg_2222;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_752_p0 = add26_11_reg_2182;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_752_p0 = bitcast_ln24_5_fu_1166_p1;
    end else begin
        grp_fu_752_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_752_p1 = mul_61_reg_2142_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_752_p1 = mul_53_reg_2102_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_752_p1 = mul_45_reg_2062_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_752_p1 = mul_37_reg_2022_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_752_p1 = mul_29_reg_1982_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_752_p1 = mul_21_reg_1942_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_752_p1 = mul_13_reg_1902_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_752_p1 = mul_5_reg_1810;
    end else begin
        grp_fu_752_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_756_p0 = add26_6_6_reg_2427;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_756_p0 = add26_5_6_reg_2387;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_756_p0 = add26_4_6_reg_2347;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_756_p0 = add26_3_6_reg_2307;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_756_p0 = add26_2_6_reg_2267;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_756_p0 = add26_1_6_reg_2227;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_756_p0 = add26_12_reg_2187;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_756_p0 = bitcast_ln24_6_fu_1170_p1;
    end else begin
        grp_fu_756_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_756_p1 = mul_62_reg_2147_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_756_p1 = mul_54_reg_2107_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_756_p1 = mul_46_reg_2067_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_756_p1 = mul_38_reg_2027_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_756_p1 = mul_30_reg_1987_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_756_p1 = mul_22_reg_1947_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_756_p1 = mul_14_reg_1907_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_756_p1 = mul_6_reg_1815;
    end else begin
        grp_fu_756_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_760_p0 = add26_6_7_reg_2432;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_760_p0 = add26_5_7_reg_2392;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_760_p0 = add26_4_7_reg_2352;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_760_p0 = add26_3_7_reg_2312;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_760_p0 = add26_2_7_reg_2272;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_760_p0 = add26_1_7_reg_2232;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_760_p0 = add26_13_reg_2192;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_760_p0 = bitcast_ln24_7_fu_1174_p1;
    end else begin
        grp_fu_760_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_760_p1 = mul_63_reg_2152_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_760_p1 = mul_55_reg_2112_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_760_p1 = mul_47_reg_2072_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_760_p1 = mul_39_reg_2032_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_760_p1 = mul_31_reg_1992_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_760_p1 = mul_23_reg_1952_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_760_p1 = mul_15_reg_1912_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_760_p1 = mul_7_reg_1820;
    end else begin
        grp_fu_760_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_764_p0 = temp_x_7_reg_1737;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_764_p0 = temp_x_6_fu_1134_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_764_p0 = temp_x_5_fu_1123_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_764_p0 = temp_x_4_fu_1111_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_764_p0 = temp_x_3_fu_1100_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_764_p0 = temp_x_2_fu_1084_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_764_p0 = temp_x_1_fu_1052_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_764_p0 = temp_x_fu_952_p1;
    end else begin
        grp_fu_764_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_764_p1 = empty_66;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_764_p1 = empty_58;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_764_p1 = empty_50;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_764_p1 = empty_42;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_764_p1 = empty_34;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_764_p1 = empty_26;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_764_p1 = empty_18;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_764_p1 = empty_10;
    end else begin
        grp_fu_764_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_768_p0 = temp_x_7_reg_1737;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_768_p0 = temp_x_6_fu_1134_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_768_p0 = temp_x_5_fu_1123_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_768_p0 = temp_x_4_fu_1111_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_768_p0 = temp_x_3_fu_1100_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_768_p0 = temp_x_2_fu_1084_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_768_p0 = temp_x_1_fu_1052_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_768_p0 = temp_x_fu_952_p1;
    end else begin
        grp_fu_768_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_768_p1 = empty_67;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_768_p1 = empty_59;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_768_p1 = empty_51;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_768_p1 = empty_43;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_768_p1 = empty_35;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_768_p1 = empty_27;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_768_p1 = empty_19;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_768_p1 = empty_11;
    end else begin
        grp_fu_768_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_772_p0 = temp_x_7_reg_1737;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_772_p0 = temp_x_6_fu_1134_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_772_p0 = temp_x_5_fu_1123_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_772_p0 = temp_x_4_fu_1111_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_772_p0 = temp_x_3_fu_1100_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_772_p0 = temp_x_2_fu_1084_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_772_p0 = temp_x_1_fu_1052_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_772_p0 = temp_x_fu_952_p1;
    end else begin
        grp_fu_772_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_772_p1 = empty_68;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_772_p1 = empty_60;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_772_p1 = empty_52;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_772_p1 = empty_44;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_772_p1 = empty_36;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_772_p1 = empty_28;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_772_p1 = empty_20;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_772_p1 = empty_12;
    end else begin
        grp_fu_772_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_776_p0 = temp_x_7_reg_1737;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_776_p0 = temp_x_6_fu_1134_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_776_p0 = temp_x_5_fu_1123_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_776_p0 = temp_x_4_fu_1111_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_776_p0 = temp_x_3_fu_1100_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_776_p0 = temp_x_2_fu_1084_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_776_p0 = temp_x_1_fu_1052_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_776_p0 = temp_x_fu_952_p1;
    end else begin
        grp_fu_776_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_776_p1 = empty_69;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_776_p1 = empty_61;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_776_p1 = empty_53;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_776_p1 = empty_45;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_776_p1 = empty_37;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_776_p1 = empty_29;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_776_p1 = empty_21;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_776_p1 = empty_13;
    end else begin
        grp_fu_776_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_780_p0 = temp_x_7_reg_1737;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_780_p0 = temp_x_6_fu_1134_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_780_p0 = temp_x_5_fu_1123_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_780_p0 = temp_x_4_fu_1111_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_780_p0 = temp_x_3_fu_1100_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_780_p0 = temp_x_2_fu_1084_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_780_p0 = temp_x_1_fu_1052_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_780_p0 = temp_x_fu_952_p1;
    end else begin
        grp_fu_780_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_780_p1 = empty_70;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_780_p1 = empty_62;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_780_p1 = empty_54;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_780_p1 = empty_46;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_780_p1 = empty_38;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_780_p1 = empty_30;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_780_p1 = empty_22;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_780_p1 = empty_14;
    end else begin
        grp_fu_780_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_784_p0 = temp_x_7_reg_1737;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_784_p0 = temp_x_6_fu_1134_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_784_p0 = temp_x_5_fu_1123_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_784_p0 = temp_x_4_fu_1111_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_784_p0 = temp_x_3_fu_1100_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_784_p0 = temp_x_2_fu_1084_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_784_p0 = temp_x_1_fu_1052_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_784_p0 = temp_x_fu_952_p1;
    end else begin
        grp_fu_784_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_784_p1 = empty_71;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_784_p1 = empty_63;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_784_p1 = empty_55;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_784_p1 = empty_47;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_784_p1 = empty_39;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_784_p1 = empty_31;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_784_p1 = empty_23;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_784_p1 = empty_15;
    end else begin
        grp_fu_784_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_788_p0 = temp_x_7_reg_1737;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_788_p0 = temp_x_6_fu_1134_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_788_p0 = temp_x_5_fu_1123_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_788_p0 = temp_x_4_fu_1111_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_788_p0 = temp_x_3_fu_1100_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_788_p0 = temp_x_2_fu_1084_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_788_p0 = temp_x_1_fu_1052_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_788_p0 = temp_x_fu_952_p1;
    end else begin
        grp_fu_788_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_788_p1 = empty_72;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_788_p1 = empty_64;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_788_p1 = empty_56;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_788_p1 = empty_48;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_788_p1 = empty_40;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_788_p1 = empty_32;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_788_p1 = empty_24;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_788_p1 = empty_16;
    end else begin
        grp_fu_788_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_792_p0 = temp_x_7_reg_1737;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_792_p0 = temp_x_6_fu_1134_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_792_p0 = temp_x_5_fu_1123_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_792_p0 = temp_x_4_fu_1111_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_792_p0 = temp_x_3_fu_1100_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_792_p0 = temp_x_2_fu_1084_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_792_p0 = temp_x_1_fu_1052_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_792_p0 = temp_x_fu_952_p1;
    end else begin
        grp_fu_792_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_792_p1 = empty;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_792_p1 = empty_65;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_792_p1 = empty_57;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_792_p1 = empty_49;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_792_p1 = empty_41;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_792_p1 = empty_33;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_792_p1 = empty_25;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_792_p1 = empty_17;
    end else begin
        grp_fu_792_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            m1_address0_local = zext_ln21_7_fu_1079_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            m1_address0_local = zext_ln21_5_fu_1013_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m1_address0_local = zext_ln21_3_fu_947_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            m1_address0_local = zext_ln21_1_fu_888_p1;
        end else begin
            m1_address0_local = 'bx;
        end
    end else begin
        m1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            m1_address1_local = zext_ln21_6_fu_1069_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            m1_address1_local = zext_ln21_4_fu_1003_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m1_address1_local = zext_ln21_2_fu_937_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            m1_address1_local = zext_ln21_fu_845_p1;
        end else begin
            m1_address1_local = 'bx;
        end
    end else begin
        m1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        m1_ce0_local = 1'b1;
    end else begin
        m1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        m1_ce1_local = 1'b1;
    end else begin
        m1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        prod_address0_local = prod_addr_7_reg_1683_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        prod_address0_local = prod_addr_5_reg_1648_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        prod_address0_local = prod_addr_3_reg_1606_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        prod_address0_local = prod_addr_1_reg_1581_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        prod_address0_local = zext_ln24_7_fu_1047_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        prod_address0_local = zext_ln24_5_fu_993_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        prod_address0_local = zext_ln24_3_fu_927_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prod_address0_local = zext_ln24_1_fu_877_p1;
    end else begin
        prod_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        prod_address1_local = prod_addr_6_reg_1678_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        prod_address1_local = prod_addr_4_reg_1643_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        prod_address1_local = prod_addr_2_reg_1601_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        prod_address1_local = prod_addr_reg_1576_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        prod_address1_local = zext_ln24_6_fu_1030_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        prod_address1_local = zext_ln24_4_fu_976_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        prod_address1_local = zext_ln24_2_fu_910_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prod_address1_local = zext_ln24_fu_858_p1;
    end else begin
        prod_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        prod_ce0_local = 1'b1;
    end else begin
        prod_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        prod_ce1_local = 1'b1;
    end else begin
        prod_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter10 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            prod_d0_local = bitcast_ln24_15_fu_1206_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            prod_d0_local = bitcast_ln24_13_fu_1198_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            prod_d0_local = bitcast_ln24_11_fu_1190_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            prod_d0_local = bitcast_ln24_9_fu_1182_p1;
        end else begin
            prod_d0_local = 'bx;
        end
    end else begin
        prod_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter10 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            prod_d1_local = bitcast_ln24_14_fu_1202_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            prod_d1_local = bitcast_ln24_12_fu_1194_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            prod_d1_local = bitcast_ln24_10_fu_1186_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            prod_d1_local = bitcast_ln24_8_fu_1178_p1;
        end else begin
            prod_d1_local = 'bx;
        end
    end else begin
        prod_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        prod_we0_local = 1'b1;
    end else begin
        prod_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        prod_we1_local = 1'b1;
    end else begin
        prod_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to10 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln17_fu_827_p2 = (ap_sig_allocacmp_i_1 + 7'd1);
assign add_ln1_fu_850_p3 = {{empty_73_fu_833_p1}, {zext_ln15}};
assign add_ln21_1_fu_932_p2 = (or_ln24_1_fu_898_p3 + kk_cast4_cast_reg_1547);
assign add_ln21_2_fu_942_p2 = (or_ln24_2_fu_915_p3 + kk_cast4_cast_reg_1547);
assign add_ln21_3_fu_998_p2 = (or_ln24_3_fu_964_p3 + kk_cast4_cast_reg_1547);
assign add_ln21_4_fu_1008_p2 = (or_ln24_4_fu_981_p3 + kk_cast4_cast_reg_1547);
assign add_ln21_5_fu_1064_p2 = (or_ln24_5_fu_1018_p3 + kk_cast4_cast_reg_1547);
assign add_ln21_6_fu_1074_p2 = (or_ln24_6_fu_1035_p3 + kk_cast4_cast_reg_1547);
assign add_ln21_fu_882_p2 = (or_ln1_fu_863_p3 + kk_cast4_cast_fu_809_p1);
assign add_ln24_1_fu_905_p2 = (or_ln24_1_fu_898_p3 + zext_ln15_cast_reg_1537);
assign add_ln24_2_fu_922_p2 = (or_ln24_2_fu_915_p3 + zext_ln15_cast_reg_1537);
assign add_ln24_3_fu_971_p2 = (or_ln24_3_fu_964_p3 + zext_ln15_cast_reg_1537);
assign add_ln24_4_fu_988_p2 = (or_ln24_4_fu_981_p3 + zext_ln15_cast_reg_1537);
assign add_ln24_5_fu_1025_p2 = (or_ln24_5_fu_1018_p3 + zext_ln15_cast_reg_1537);
assign add_ln24_6_fu_1042_p2 = (or_ln24_6_fu_1035_p3 + zext_ln15_cast_reg_1537);
assign add_ln24_fu_871_p2 = (or_ln1_fu_863_p3 + zext_ln15_cast_fu_805_p1);
assign add_ln_fu_837_p3 = {{empty_73_fu_833_p1}, {kk_cast4}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign bitcast_ln24_10_fu_1186_p1 = add26_7_2_reg_2447;
assign bitcast_ln24_11_fu_1190_p1 = add26_7_3_reg_2452;
assign bitcast_ln24_12_fu_1194_p1 = add26_7_4_reg_2457;
assign bitcast_ln24_13_fu_1198_p1 = add26_7_5_reg_2462;
assign bitcast_ln24_14_fu_1202_p1 = add26_7_6_reg_2467;
assign bitcast_ln24_15_fu_1206_p1 = add26_7_7_reg_2472;
assign bitcast_ln24_1_fu_1150_p1 = prod_load_1_reg_1596;
assign bitcast_ln24_2_fu_1154_p1 = prod_load_2_reg_1633;
assign bitcast_ln24_3_fu_1158_p1 = prod_load_3_reg_1638;
assign bitcast_ln24_4_fu_1162_p1 = prod_load_4_reg_1668;
assign bitcast_ln24_5_fu_1166_p1 = prod_load_5_reg_1673;
assign bitcast_ln24_6_fu_1170_p1 = prod_load_6_reg_1715;
assign bitcast_ln24_7_fu_1174_p1 = prod_load_7_reg_1720;
assign bitcast_ln24_8_fu_1178_p1 = add26_7_reg_2437;
assign bitcast_ln24_9_fu_1182_p1 = add26_7_1_reg_2442;
assign bitcast_ln24_fu_1146_p1 = prod_load_reg_1591;
assign empty_73_fu_833_p1 = ap_sig_allocacmp_i_1[5:0];
assign icmp_ln17_fu_821_p2 = ((ap_sig_allocacmp_i_1 == 7'd64) ? 1'b1 : 1'b0);
assign kk_cast4_cast_fu_809_p1 = kk_cast4;
assign m1_address0 = m1_address0_local;
assign m1_address1 = m1_address1_local;
assign m1_ce0 = m1_ce0_local;
assign m1_ce1 = m1_ce1_local;
assign or_ln1_fu_863_p3 = {{empty_73_fu_833_p1}, {6'd1}};
assign or_ln24_1_fu_898_p3 = {{empty_73_reg_1561}, {6'd2}};
assign or_ln24_2_fu_915_p3 = {{empty_73_reg_1561}, {6'd3}};
assign or_ln24_3_fu_964_p3 = {{empty_73_reg_1561}, {6'd4}};
assign or_ln24_4_fu_981_p3 = {{empty_73_reg_1561}, {6'd5}};
assign or_ln24_5_fu_1018_p3 = {{empty_73_reg_1561}, {6'd6}};
assign or_ln24_6_fu_1035_p3 = {{empty_73_reg_1561}, {6'd7}};
assign prod_address0 = prod_address0_local;
assign prod_address1 = prod_address1_local;
assign prod_ce0 = prod_ce0_local;
assign prod_ce1 = prod_ce1_local;
assign prod_d0 = prod_d0_local;
assign prod_d1 = prod_d1_local;
assign prod_we0 = prod_we0_local;
assign prod_we1 = prod_we1_local;
assign temp_x_1_fu_1052_p1 = reg_800;
assign temp_x_2_fu_1084_p1 = reg_796;
assign temp_x_3_fu_1100_p1 = m1_load_3_reg_1653;
assign temp_x_4_fu_1111_p1 = reg_800;
assign temp_x_5_fu_1123_p1 = m1_load_5_reg_1700;
assign temp_x_6_fu_1134_p1 = reg_796;
assign temp_x_7_fu_1096_p1 = m1_q0;
assign temp_x_fu_952_p1 = reg_796;
assign zext_ln15_cast_fu_805_p1 = zext_ln15;
assign zext_ln21_1_fu_888_p1 = add_ln21_fu_882_p2;
assign zext_ln21_2_fu_937_p1 = add_ln21_1_fu_932_p2;
assign zext_ln21_3_fu_947_p1 = add_ln21_2_fu_942_p2;
assign zext_ln21_4_fu_1003_p1 = add_ln21_3_fu_998_p2;
assign zext_ln21_5_fu_1013_p1 = add_ln21_4_fu_1008_p2;
assign zext_ln21_6_fu_1069_p1 = add_ln21_5_fu_1064_p2;
assign zext_ln21_7_fu_1079_p1 = add_ln21_6_fu_1074_p2;
assign zext_ln21_fu_845_p1 = add_ln_fu_837_p3;
assign zext_ln24_1_fu_877_p1 = add_ln24_fu_871_p2;
assign zext_ln24_2_fu_910_p1 = add_ln24_1_fu_905_p2;
assign zext_ln24_3_fu_927_p1 = add_ln24_2_fu_922_p2;
assign zext_ln24_4_fu_976_p1 = add_ln24_3_fu_971_p2;
assign zext_ln24_5_fu_993_p1 = add_ln24_4_fu_988_p2;
assign zext_ln24_6_fu_1030_p1 = add_ln24_5_fu_1025_p2;
assign zext_ln24_7_fu_1047_p1 = add_ln24_6_fu_1042_p2;
assign zext_ln24_fu_858_p1 = add_ln1_fu_850_p3;
always @ (posedge ap_clk) begin
    zext_ln15_cast_reg_1537[11:6] <= 6'b000000;
    kk_cast4_cast_reg_1547[11:6] <= 6'b000000;
end
endmodule 
