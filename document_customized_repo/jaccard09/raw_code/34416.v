module backprop_update_weights_37_38_1_Pipeline_up_weight_loop10 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights3_3_address0,weights3_3_ce0,weights3_3_we0,weights3_3_d0,weights3_3_q0,weights3_3_address1,weights3_3_ce1,weights3_3_we1,weights3_3_d1,weights3_3_q1,weights3_2_address0,weights3_2_ce0,weights3_2_we0,weights3_2_d0,weights3_2_q0,weights3_2_address1,weights3_2_ce1,weights3_2_we1,weights3_2_d1,weights3_2_q1,weights3_1_address0,weights3_1_ce0,weights3_1_we0,weights3_1_d0,weights3_1_q0,weights3_1_address1,weights3_1_ce1,weights3_1_we1,weights3_1_d1,weights3_1_q1,weights3_0_address0,weights3_0_ce0,weights3_0_we0,weights3_0_d0,weights3_0_q0,weights3_0_address1,weights3_0_ce1,weights3_0_we1,weights3_0_d1,weights3_0_q1,norm_84); 
parameter    ap_ST_fsm_pp0_stage0 = 12'd1;
parameter    ap_ST_fsm_pp0_stage1 = 12'd2;
parameter    ap_ST_fsm_pp0_stage2 = 12'd4;
parameter    ap_ST_fsm_pp0_stage3 = 12'd8;
parameter    ap_ST_fsm_pp0_stage4 = 12'd16;
parameter    ap_ST_fsm_pp0_stage5 = 12'd32;
parameter    ap_ST_fsm_pp0_stage6 = 12'd64;
parameter    ap_ST_fsm_pp0_stage7 = 12'd128;
parameter    ap_ST_fsm_pp0_stage8 = 12'd256;
parameter    ap_ST_fsm_pp0_stage9 = 12'd512;
parameter    ap_ST_fsm_pp0_stage10 = 12'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 12'd2048;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] weights3_3_address0;
output   weights3_3_ce0;
output   weights3_3_we0;
output  [63:0] weights3_3_d0;
input  [63:0] weights3_3_q0;
output  [5:0] weights3_3_address1;
output   weights3_3_ce1;
output   weights3_3_we1;
output  [63:0] weights3_3_d1;
input  [63:0] weights3_3_q1;
output  [5:0] weights3_2_address0;
output   weights3_2_ce0;
output   weights3_2_we0;
output  [63:0] weights3_2_d0;
input  [63:0] weights3_2_q0;
output  [5:0] weights3_2_address1;
output   weights3_2_ce1;
output   weights3_2_we1;
output  [63:0] weights3_2_d1;
input  [63:0] weights3_2_q1;
output  [5:0] weights3_1_address0;
output   weights3_1_ce0;
output   weights3_1_we0;
output  [63:0] weights3_1_d0;
input  [63:0] weights3_1_q0;
output  [5:0] weights3_1_address1;
output   weights3_1_ce1;
output   weights3_1_we1;
output  [63:0] weights3_1_d1;
input  [63:0] weights3_1_q1;
output  [5:0] weights3_0_address0;
output   weights3_0_ce0;
output   weights3_0_we0;
output  [63:0] weights3_0_d0;
input  [63:0] weights3_0_q0;
output  [5:0] weights3_0_address1;
output   weights3_0_ce1;
output   weights3_0_we1;
output  [63:0] weights3_0_d1;
input  [63:0] weights3_0_q1;
input  [63:0] norm_84;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_subdone;
reg   [0:0] tmp_reg_1777;
reg    ap_condition_exit_pp0_iter0_stage11;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_565;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] reg_569;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_573;
reg   [63:0] reg_577;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] reg_581;
reg   [63:0] reg_585;
reg   [63:0] reg_590;
reg   [63:0] reg_595;
reg   [63:0] reg_600;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] reg_605;
reg   [63:0] reg_610;
reg   [63:0] reg_615;
reg   [63:0] reg_620;
wire   [63:0] grp_fu_549_p2;
reg   [63:0] reg_625;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [63:0] grp_fu_553_p2;
reg   [63:0] reg_629;
wire   [63:0] grp_fu_557_p2;
reg   [63:0] reg_633;
wire   [63:0] grp_fu_561_p2;
reg   [63:0] reg_637;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] reg_641;
reg   [63:0] reg_645;
reg   [63:0] reg_649;
reg   [63:0] reg_653;
reg   [63:0] reg_657;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] reg_661;
reg   [63:0] reg_665;
reg   [63:0] reg_669;
reg   [6:0] i_4_reg_1772;
reg   [5:0] weights3_0_addr_reg_1781;
reg   [5:0] weights3_0_addr_reg_1781_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_reg_1781_pp0_iter2_reg;
reg   [5:0] weights3_0_addr_reg_1781_pp0_iter3_reg;
reg   [5:0] weights3_0_addr_reg_1781_pp0_iter4_reg;
reg   [5:0] weights3_0_addr_reg_1781_pp0_iter5_reg;
wire   [7:0] empty_fu_754_p2;
reg   [7:0] empty_reg_1786;
wire   [5:0] or_ln5_fu_785_p3;
reg   [5:0] or_ln5_reg_1813;
reg   [5:0] weights3_1_addr_reg_1819;
reg   [5:0] weights3_1_addr_reg_1819_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_reg_1819_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_reg_1819_pp0_iter3_reg;
reg   [5:0] weights3_1_addr_reg_1819_pp0_iter4_reg;
reg   [5:0] weights3_1_addr_reg_1819_pp0_iter5_reg;
reg   [5:0] weights3_2_addr_reg_1824;
reg   [5:0] weights3_2_addr_reg_1824_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_reg_1824_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_reg_1824_pp0_iter3_reg;
reg   [5:0] weights3_2_addr_reg_1824_pp0_iter4_reg;
reg   [5:0] weights3_2_addr_reg_1824_pp0_iter5_reg;
reg   [5:0] weights3_3_addr_reg_1829;
reg   [5:0] weights3_3_addr_reg_1829_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_reg_1829_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_reg_1829_pp0_iter3_reg;
reg   [5:0] weights3_3_addr_reg_1829_pp0_iter4_reg;
reg   [5:0] weights3_3_addr_reg_1829_pp0_iter5_reg;
reg   [5:0] weights3_0_addr_14_reg_1835;
reg   [5:0] weights3_0_addr_14_reg_1835_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_14_reg_1835_pp0_iter2_reg;
reg   [5:0] weights3_0_addr_14_reg_1835_pp0_iter3_reg;
reg   [5:0] weights3_0_addr_14_reg_1835_pp0_iter4_reg;
reg   [5:0] weights3_0_addr_14_reg_1835_pp0_iter5_reg;
reg   [5:0] weights3_1_addr_14_reg_1840;
reg   [5:0] weights3_1_addr_14_reg_1840_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_14_reg_1840_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_14_reg_1840_pp0_iter3_reg;
reg   [5:0] weights3_1_addr_14_reg_1840_pp0_iter4_reg;
reg   [5:0] weights3_1_addr_14_reg_1840_pp0_iter5_reg;
reg   [5:0] weights3_2_addr_14_reg_1845;
reg   [5:0] weights3_2_addr_14_reg_1845_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_14_reg_1845_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_14_reg_1845_pp0_iter3_reg;
reg   [5:0] weights3_2_addr_14_reg_1845_pp0_iter4_reg;
reg   [5:0] weights3_2_addr_14_reg_1845_pp0_iter5_reg;
reg   [5:0] weights3_0_addr_12_reg_1850;
reg   [5:0] weights3_0_addr_12_reg_1850_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_12_reg_1850_pp0_iter2_reg;
reg   [5:0] weights3_0_addr_12_reg_1850_pp0_iter3_reg;
reg   [5:0] weights3_0_addr_12_reg_1850_pp0_iter4_reg;
reg   [5:0] weights3_0_addr_12_reg_1850_pp0_iter5_reg;
reg   [5:0] weights3_1_addr_12_reg_1855;
reg   [5:0] weights3_1_addr_12_reg_1855_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_12_reg_1855_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_12_reg_1855_pp0_iter3_reg;
reg   [5:0] weights3_1_addr_12_reg_1855_pp0_iter4_reg;
reg   [5:0] weights3_1_addr_12_reg_1855_pp0_iter5_reg;
reg   [5:0] weights3_2_addr_12_reg_1860;
reg   [5:0] weights3_2_addr_12_reg_1860_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_12_reg_1860_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_12_reg_1860_pp0_iter3_reg;
reg   [5:0] weights3_2_addr_12_reg_1860_pp0_iter4_reg;
reg   [5:0] weights3_2_addr_12_reg_1860_pp0_iter5_reg;
reg   [5:0] weights3_3_addr_12_reg_1865;
reg   [5:0] weights3_3_addr_12_reg_1865_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_12_reg_1865_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_12_reg_1865_pp0_iter3_reg;
reg   [5:0] weights3_3_addr_12_reg_1865_pp0_iter4_reg;
reg   [5:0] weights3_3_addr_12_reg_1865_pp0_iter5_reg;
reg   [5:0] weights3_0_addr_13_reg_1870;
reg   [5:0] weights3_0_addr_13_reg_1870_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_13_reg_1870_pp0_iter2_reg;
reg   [5:0] weights3_0_addr_13_reg_1870_pp0_iter3_reg;
reg   [5:0] weights3_0_addr_13_reg_1870_pp0_iter4_reg;
reg   [5:0] weights3_0_addr_13_reg_1870_pp0_iter5_reg;
reg   [5:0] weights3_1_addr_13_reg_1875;
reg   [5:0] weights3_1_addr_13_reg_1875_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_13_reg_1875_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_13_reg_1875_pp0_iter3_reg;
reg   [5:0] weights3_1_addr_13_reg_1875_pp0_iter4_reg;
reg   [5:0] weights3_1_addr_13_reg_1875_pp0_iter5_reg;
reg   [5:0] weights3_2_addr_13_reg_1880;
reg   [5:0] weights3_2_addr_13_reg_1880_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_13_reg_1880_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_13_reg_1880_pp0_iter3_reg;
reg   [5:0] weights3_2_addr_13_reg_1880_pp0_iter4_reg;
reg   [5:0] weights3_2_addr_13_reg_1880_pp0_iter5_reg;
reg   [5:0] weights3_3_addr_13_reg_1885;
reg   [5:0] weights3_3_addr_13_reg_1885_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_13_reg_1885_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_13_reg_1885_pp0_iter3_reg;
reg   [5:0] weights3_3_addr_13_reg_1885_pp0_iter4_reg;
reg   [5:0] weights3_3_addr_13_reg_1885_pp0_iter5_reg;
wire   [63:0] bitcast_ln194_fu_903_p1;
wire   [63:0] bitcast_ln194_1_fu_1031_p1;
wire   [63:0] bitcast_ln194_2_fu_1036_p1;
wire   [63:0] bitcast_ln194_3_fu_1041_p1;
reg   [5:0] weights3_3_addr_14_reg_1910;
reg   [5:0] weights3_3_addr_14_reg_1910_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_14_reg_1910_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_14_reg_1910_pp0_iter3_reg;
reg   [5:0] weights3_3_addr_14_reg_1910_pp0_iter4_reg;
reg   [5:0] weights3_3_addr_14_reg_1910_pp0_iter5_reg;
reg   [5:0] weights3_0_addr_15_reg_1915;
reg   [5:0] weights3_0_addr_15_reg_1915_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_15_reg_1915_pp0_iter2_reg;
reg   [5:0] weights3_0_addr_15_reg_1915_pp0_iter3_reg;
reg   [5:0] weights3_0_addr_15_reg_1915_pp0_iter4_reg;
reg   [5:0] weights3_0_addr_15_reg_1915_pp0_iter5_reg;
reg   [5:0] weights3_1_addr_15_reg_1920;
reg   [5:0] weights3_1_addr_15_reg_1920_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_15_reg_1920_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_15_reg_1920_pp0_iter3_reg;
reg   [5:0] weights3_1_addr_15_reg_1920_pp0_iter4_reg;
reg   [5:0] weights3_1_addr_15_reg_1920_pp0_iter5_reg;
reg   [5:0] weights3_2_addr_15_reg_1925;
reg   [5:0] weights3_2_addr_15_reg_1925_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_15_reg_1925_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_15_reg_1925_pp0_iter3_reg;
reg   [5:0] weights3_2_addr_15_reg_1925_pp0_iter4_reg;
reg   [5:0] weights3_2_addr_15_reg_1925_pp0_iter5_reg;
reg   [5:0] weights3_3_addr_15_reg_1930;
reg   [5:0] weights3_3_addr_15_reg_1930_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_15_reg_1930_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_15_reg_1930_pp0_iter3_reg;
reg   [5:0] weights3_3_addr_15_reg_1930_pp0_iter4_reg;
reg   [5:0] weights3_3_addr_15_reg_1930_pp0_iter5_reg;
reg   [5:0] weights3_0_addr_16_reg_1935;
reg   [5:0] weights3_0_addr_16_reg_1935_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_16_reg_1935_pp0_iter2_reg;
reg   [5:0] weights3_0_addr_16_reg_1935_pp0_iter3_reg;
reg   [5:0] weights3_0_addr_16_reg_1935_pp0_iter4_reg;
reg   [5:0] weights3_0_addr_16_reg_1935_pp0_iter5_reg;
reg   [5:0] weights3_1_addr_16_reg_1940;
reg   [5:0] weights3_1_addr_16_reg_1940_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_16_reg_1940_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_16_reg_1940_pp0_iter3_reg;
reg   [5:0] weights3_1_addr_16_reg_1940_pp0_iter4_reg;
reg   [5:0] weights3_1_addr_16_reg_1940_pp0_iter5_reg;
reg   [5:0] weights3_2_addr_16_reg_1945;
reg   [5:0] weights3_2_addr_16_reg_1945_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_16_reg_1945_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_16_reg_1945_pp0_iter3_reg;
reg   [5:0] weights3_2_addr_16_reg_1945_pp0_iter4_reg;
reg   [5:0] weights3_2_addr_16_reg_1945_pp0_iter5_reg;
reg   [5:0] weights3_3_addr_16_reg_1950;
reg   [5:0] weights3_3_addr_16_reg_1950_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_16_reg_1950_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_16_reg_1950_pp0_iter3_reg;
reg   [5:0] weights3_3_addr_16_reg_1950_pp0_iter4_reg;
reg   [5:0] weights3_3_addr_16_reg_1950_pp0_iter5_reg;
wire   [63:0] bitcast_ln194_4_fu_1139_p1;
wire   [63:0] bitcast_ln194_12_fu_1144_p1;
wire   [63:0] bitcast_ln194_13_fu_1149_p1;
wire   [63:0] bitcast_ln194_14_fu_1154_p1;
reg   [63:0] weights3_1_load_16_reg_1975;
reg   [63:0] weights3_2_load_16_reg_1980;
reg   [5:0] weights3_0_addr_17_reg_1985;
reg   [5:0] weights3_0_addr_17_reg_1985_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_17_reg_1985_pp0_iter2_reg;
reg   [5:0] weights3_0_addr_17_reg_1985_pp0_iter3_reg;
reg   [5:0] weights3_0_addr_17_reg_1985_pp0_iter4_reg;
reg   [5:0] weights3_0_addr_17_reg_1985_pp0_iter5_reg;
reg   [5:0] weights3_1_addr_17_reg_1990;
reg   [5:0] weights3_1_addr_17_reg_1990_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_17_reg_1990_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_17_reg_1990_pp0_iter3_reg;
reg   [5:0] weights3_1_addr_17_reg_1990_pp0_iter4_reg;
reg   [5:0] weights3_1_addr_17_reg_1990_pp0_iter5_reg;
reg   [5:0] weights3_2_addr_17_reg_1995;
reg   [5:0] weights3_2_addr_17_reg_1995_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_17_reg_1995_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_17_reg_1995_pp0_iter3_reg;
reg   [5:0] weights3_2_addr_17_reg_1995_pp0_iter4_reg;
reg   [5:0] weights3_2_addr_17_reg_1995_pp0_iter5_reg;
reg   [5:0] weights3_3_addr_17_reg_2000;
reg   [5:0] weights3_3_addr_17_reg_2000_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_17_reg_2000_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_17_reg_2000_pp0_iter3_reg;
reg   [5:0] weights3_3_addr_17_reg_2000_pp0_iter4_reg;
reg   [5:0] weights3_3_addr_17_reg_2000_pp0_iter5_reg;
reg   [5:0] weights3_0_addr_18_reg_2005;
reg   [5:0] weights3_0_addr_18_reg_2005_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_18_reg_2005_pp0_iter2_reg;
reg   [5:0] weights3_0_addr_18_reg_2005_pp0_iter3_reg;
reg   [5:0] weights3_0_addr_18_reg_2005_pp0_iter4_reg;
reg   [5:0] weights3_0_addr_18_reg_2005_pp0_iter5_reg;
reg   [5:0] weights3_1_addr_18_reg_2010;
reg   [5:0] weights3_1_addr_18_reg_2010_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_18_reg_2010_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_18_reg_2010_pp0_iter3_reg;
reg   [5:0] weights3_1_addr_18_reg_2010_pp0_iter4_reg;
reg   [5:0] weights3_1_addr_18_reg_2010_pp0_iter5_reg;
reg   [5:0] weights3_2_addr_18_reg_2015;
reg   [5:0] weights3_2_addr_18_reg_2015_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_18_reg_2015_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_18_reg_2015_pp0_iter3_reg;
reg   [5:0] weights3_2_addr_18_reg_2015_pp0_iter4_reg;
reg   [5:0] weights3_2_addr_18_reg_2015_pp0_iter5_reg;
reg   [5:0] weights3_3_addr_18_reg_2020;
reg   [5:0] weights3_3_addr_18_reg_2020_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_18_reg_2020_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_18_reg_2020_pp0_iter3_reg;
reg   [5:0] weights3_3_addr_18_reg_2020_pp0_iter4_reg;
reg   [5:0] weights3_3_addr_18_reg_2020_pp0_iter5_reg;
wire   [63:0] bitcast_ln194_5_fu_1213_p1;
wire   [63:0] bitcast_ln194_6_fu_1218_p1;
wire   [63:0] bitcast_ln194_7_fu_1223_p1;
wire   [63:0] bitcast_ln194_8_fu_1228_p1;
reg   [63:0] weights3_3_load_17_reg_2045;
reg   [63:0] weights3_0_load_18_reg_2050;
reg   [63:0] weights3_1_load_18_reg_2055;
reg   [63:0] weights3_2_load_18_reg_2060;
reg   [5:0] weights3_0_addr_19_reg_2065;
reg   [5:0] weights3_0_addr_19_reg_2065_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_19_reg_2065_pp0_iter2_reg;
reg   [5:0] weights3_0_addr_19_reg_2065_pp0_iter3_reg;
reg   [5:0] weights3_0_addr_19_reg_2065_pp0_iter4_reg;
reg   [5:0] weights3_0_addr_19_reg_2065_pp0_iter5_reg;
reg   [5:0] weights3_1_addr_19_reg_2070;
reg   [5:0] weights3_1_addr_19_reg_2070_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_19_reg_2070_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_19_reg_2070_pp0_iter3_reg;
reg   [5:0] weights3_1_addr_19_reg_2070_pp0_iter4_reg;
reg   [5:0] weights3_1_addr_19_reg_2070_pp0_iter5_reg;
reg   [5:0] weights3_2_addr_19_reg_2075;
reg   [5:0] weights3_2_addr_19_reg_2075_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_19_reg_2075_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_19_reg_2075_pp0_iter3_reg;
reg   [5:0] weights3_2_addr_19_reg_2075_pp0_iter4_reg;
reg   [5:0] weights3_2_addr_19_reg_2075_pp0_iter5_reg;
reg   [5:0] weights3_3_addr_19_reg_2080;
reg   [5:0] weights3_3_addr_19_reg_2080_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_19_reg_2080_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_19_reg_2080_pp0_iter3_reg;
reg   [5:0] weights3_3_addr_19_reg_2080_pp0_iter4_reg;
reg   [5:0] weights3_3_addr_19_reg_2080_pp0_iter5_reg;
reg   [5:0] weights3_0_addr_20_reg_2085;
reg   [5:0] weights3_0_addr_20_reg_2085_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_20_reg_2085_pp0_iter2_reg;
reg   [5:0] weights3_0_addr_20_reg_2085_pp0_iter3_reg;
reg   [5:0] weights3_0_addr_20_reg_2085_pp0_iter4_reg;
reg   [5:0] weights3_0_addr_20_reg_2085_pp0_iter5_reg;
reg   [5:0] weights3_1_addr_20_reg_2090;
reg   [5:0] weights3_1_addr_20_reg_2090_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_20_reg_2090_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_20_reg_2090_pp0_iter3_reg;
reg   [5:0] weights3_1_addr_20_reg_2090_pp0_iter4_reg;
reg   [5:0] weights3_1_addr_20_reg_2090_pp0_iter5_reg;
reg   [5:0] weights3_2_addr_20_reg_2095;
reg   [5:0] weights3_2_addr_20_reg_2095_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_20_reg_2095_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_20_reg_2095_pp0_iter3_reg;
reg   [5:0] weights3_2_addr_20_reg_2095_pp0_iter4_reg;
reg   [5:0] weights3_2_addr_20_reg_2095_pp0_iter5_reg;
wire   [63:0] bitcast_ln194_9_fu_1356_p1;
wire   [63:0] bitcast_ln194_10_fu_1361_p1;
wire   [63:0] bitcast_ln194_11_fu_1366_p1;
wire   [63:0] bitcast_ln194_15_fu_1371_p1;
reg   [63:0] weights3_0_load_19_reg_2120;
reg   [63:0] weights3_0_load_20_reg_2125;
reg   [63:0] weights3_1_load_20_reg_2130;
reg   [63:0] weights3_2_load_20_reg_2135;
reg   [5:0] weights3_3_addr_20_reg_2140;
reg   [5:0] weights3_3_addr_20_reg_2140_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_20_reg_2140_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_20_reg_2140_pp0_iter3_reg;
reg   [5:0] weights3_3_addr_20_reg_2140_pp0_iter4_reg;
reg   [5:0] weights3_3_addr_20_reg_2140_pp0_iter5_reg;
reg   [5:0] weights3_0_addr_21_reg_2145;
reg   [5:0] weights3_0_addr_21_reg_2145_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_21_reg_2145_pp0_iter2_reg;
reg   [5:0] weights3_0_addr_21_reg_2145_pp0_iter3_reg;
reg   [5:0] weights3_0_addr_21_reg_2145_pp0_iter4_reg;
reg   [5:0] weights3_0_addr_21_reg_2145_pp0_iter5_reg;
reg   [5:0] weights3_1_addr_21_reg_2150;
reg   [5:0] weights3_1_addr_21_reg_2150_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_21_reg_2150_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_21_reg_2150_pp0_iter3_reg;
reg   [5:0] weights3_1_addr_21_reg_2150_pp0_iter4_reg;
reg   [5:0] weights3_1_addr_21_reg_2150_pp0_iter5_reg;
reg   [5:0] weights3_2_addr_21_reg_2155;
reg   [5:0] weights3_2_addr_21_reg_2155_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_21_reg_2155_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_21_reg_2155_pp0_iter3_reg;
reg   [5:0] weights3_2_addr_21_reg_2155_pp0_iter4_reg;
reg   [5:0] weights3_2_addr_21_reg_2155_pp0_iter5_reg;
reg   [5:0] weights3_3_addr_21_reg_2160;
reg   [5:0] weights3_3_addr_21_reg_2160_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_21_reg_2160_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_21_reg_2160_pp0_iter3_reg;
reg   [5:0] weights3_3_addr_21_reg_2160_pp0_iter4_reg;
reg   [5:0] weights3_3_addr_21_reg_2160_pp0_iter5_reg;
reg   [5:0] weights3_0_addr_22_reg_2165;
reg   [5:0] weights3_0_addr_22_reg_2165_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_22_reg_2165_pp0_iter2_reg;
reg   [5:0] weights3_0_addr_22_reg_2165_pp0_iter3_reg;
reg   [5:0] weights3_0_addr_22_reg_2165_pp0_iter4_reg;
reg   [5:0] weights3_0_addr_22_reg_2165_pp0_iter5_reg;
reg   [5:0] weights3_0_addr_22_reg_2165_pp0_iter6_reg;
reg   [5:0] weights3_1_addr_22_reg_2170;
reg   [5:0] weights3_1_addr_22_reg_2170_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_22_reg_2170_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_22_reg_2170_pp0_iter3_reg;
reg   [5:0] weights3_1_addr_22_reg_2170_pp0_iter4_reg;
reg   [5:0] weights3_1_addr_22_reg_2170_pp0_iter5_reg;
reg   [5:0] weights3_1_addr_22_reg_2170_pp0_iter6_reg;
reg   [5:0] weights3_2_addr_22_reg_2175;
reg   [5:0] weights3_2_addr_22_reg_2175_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_22_reg_2175_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_22_reg_2175_pp0_iter3_reg;
reg   [5:0] weights3_2_addr_22_reg_2175_pp0_iter4_reg;
reg   [5:0] weights3_2_addr_22_reg_2175_pp0_iter5_reg;
reg   [5:0] weights3_2_addr_22_reg_2175_pp0_iter6_reg;
reg   [5:0] weights3_3_addr_22_reg_2180;
reg   [5:0] weights3_3_addr_22_reg_2180_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_22_reg_2180_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_22_reg_2180_pp0_iter3_reg;
reg   [5:0] weights3_3_addr_22_reg_2180_pp0_iter4_reg;
reg   [5:0] weights3_3_addr_22_reg_2180_pp0_iter5_reg;
wire   [63:0] bitcast_ln194_16_fu_1376_p1;
wire   [63:0] bitcast_ln194_17_fu_1381_p1;
wire   [63:0] bitcast_ln194_18_fu_1386_p1;
wire   [63:0] bitcast_ln194_19_fu_1391_p1;
reg   [63:0] weights3_3_load_21_reg_2206;
reg   [63:0] weights3_0_load_22_reg_2211;
reg   [63:0] weights3_1_load_22_reg_2216;
reg   [63:0] weights3_2_load_22_reg_2221;
wire   [63:0] bitcast_ln194_20_fu_1396_p1;
wire   [63:0] bitcast_ln194_21_fu_1401_p1;
wire   [63:0] bitcast_ln194_22_fu_1405_p1;
wire   [63:0] bitcast_ln194_23_fu_1409_p1;
wire   [63:0] bitcast_ln194_24_fu_1414_p1;
wire   [63:0] bitcast_ln194_25_fu_1419_p1;
wire   [63:0] bitcast_ln194_26_fu_1424_p1;
wire   [63:0] bitcast_ln194_27_fu_1429_p1;
wire   [63:0] bitcast_ln194_28_fu_1433_p1;
wire   [63:0] bitcast_ln194_29_fu_1437_p1;
wire   [63:0] bitcast_ln194_30_fu_1441_p1;
wire   [63:0] bitcast_ln194_31_fu_1445_p1;
wire   [63:0] bitcast_ln194_32_fu_1450_p1;
wire   [63:0] bitcast_ln194_33_fu_1454_p1;
wire   [63:0] bitcast_ln194_34_fu_1459_p1;
wire   [63:0] bitcast_ln194_35_fu_1464_p1;
wire   [63:0] bitcast_ln194_36_fu_1469_p1;
wire   [63:0] bitcast_ln194_37_fu_1473_p1;
wire   [63:0] bitcast_ln194_38_fu_1477_p1;
wire   [63:0] bitcast_ln194_39_fu_1481_p1;
wire   [63:0] bitcast_ln194_40_fu_1496_p1;
wire   [63:0] bitcast_ln194_41_fu_1501_p1;
wire   [63:0] bitcast_ln194_42_fu_1506_p1;
wire   [63:0] bitcast_ln194_43_fu_1511_p1;
wire   [63:0] bitcast_ln194_44_fu_1515_p1;
wire   [63:0] bitcast_ln194_45_fu_1519_p1;
wire   [63:0] bitcast_ln194_46_fu_1523_p1;
wire   [63:0] bitcast_ln194_47_fu_1527_p1;
reg   [63:0] div213_3_reg_2366;
reg   [63:0] div213_3_1_reg_2371;
reg   [63:0] div213_3_2_reg_2376;
reg   [63:0] div213_5_reg_2381;
reg   [63:0] div213_5_1_reg_2386;
reg   [63:0] div213_5_2_reg_2391;
reg   [63:0] div213_6_reg_2396;
reg   [63:0] div213_6_1_reg_2401;
reg   [63:0] div213_6_2_reg_2406;
reg   [63:0] div213_7_reg_2411;
reg   [63:0] div213_7_1_reg_2416;
reg   [63:0] div213_7_2_reg_2421;
reg   [63:0] div213_14_2_reg_2426;
reg   [63:0] div213_15_reg_2431;
reg   [63:0] div213_15_1_reg_2436;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln194_fu_717_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln194_1_fu_770_p1;
wire   [63:0] or_ln194_cast_fu_793_p1;
wire   [63:0] zext_ln194_2_fu_815_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] lshr_ln194_3_cast_fu_835_p1;
wire   [63:0] zext_ln194_3_fu_855_p1;
wire   [63:0] lshr_ln194_5_cast_fu_876_p1;
wire   [63:0] zext_ln194_4_fu_896_p1;
wire   [63:0] zext_ln194_5_fu_923_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln194_6_fu_943_p1;
wire   [63:0] lshr_ln194_9_cast_fu_963_p1;
wire   [63:0] zext_ln194_7_fu_983_p1;
wire   [63:0] lshr_ln194_11_cast_fu_1004_p1;
wire   [63:0] zext_ln194_8_fu_1024_p1;
wire   [63:0] add_ln194_6_cast_fu_1051_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln194_9_fu_1073_p1;
wire   [63:0] zext_ln194_10_fu_1093_p1;
wire   [63:0] lshr_ln194_15_cast_fu_1113_p1;
wire   [63:0] zext_ln194_11_fu_1133_p1;
wire   [63:0] lshr_ln194_17_cast_fu_1174_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln194_12_fu_1194_p1;
wire   [63:0] add_ln194_10_cast_fu_1206_p1;
wire   [63:0] zext_ln194_13_fu_1248_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln194_14_fu_1268_p1;
wire   [63:0] lshr_ln194_21_cast_fu_1288_p1;
wire   [63:0] zext_ln194_15_fu_1308_p1;
wire   [63:0] lshr_ln194_23_cast_fu_1329_p1;
wire   [63:0] zext_ln194_16_fu_1349_p1;
reg   [6:0] i_fu_122;
wire   [6:0] add_ln192_fu_1486_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_4;
reg    weights3_0_ce1_local;
reg   [5:0] weights3_0_address1_local;
reg    weights3_0_ce0_local;
reg   [5:0] weights3_0_address0_local;
reg    weights3_0_we1_local;
reg   [63:0] weights3_0_d1_local;
wire   [63:0] bitcast_ln194_48_fu_1532_p1;
wire    ap_block_pp0_stage6;
reg    weights3_0_we0_local;
reg   [63:0] weights3_0_d0_local;
wire   [63:0] bitcast_ln194_51_fu_1537_p1;
wire   [63:0] bitcast_ln194_49_fu_1567_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] bitcast_ln194_50_fu_1572_p1;
wire   [63:0] bitcast_ln194_52_fu_1604_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] bitcast_ln194_53_fu_1608_p1;
wire   [63:0] bitcast_ln194_54_fu_1636_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] bitcast_ln194_55_fu_1641_p1;
wire   [63:0] bitcast_ln194_56_fu_1675_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] bitcast_ln194_57_fu_1680_p1;
wire   [63:0] bitcast_ln194_58_fu_1715_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] bitcast_ln194_59_fu_1745_p1;
reg    weights3_1_ce1_local;
reg   [5:0] weights3_1_address1_local;
reg    weights3_1_ce0_local;
reg   [5:0] weights3_1_address0_local;
reg    weights3_1_we1_local;
reg   [63:0] weights3_1_d1_local;
wire   [63:0] bitcast_ln194_60_fu_1542_p1;
reg    weights3_1_we0_local;
reg   [63:0] weights3_1_d0_local;
wire   [63:0] bitcast_ln194_63_fu_1547_p1;
wire   [63:0] bitcast_ln194_61_fu_1577_p1;
wire   [63:0] bitcast_ln194_62_fu_1582_p1;
wire   [63:0] bitcast_ln194_64_fu_1612_p1;
wire   [63:0] bitcast_ln194_65_fu_1616_p1;
wire   [63:0] bitcast_ln194_66_fu_1646_p1;
wire   [63:0] bitcast_ln194_67_fu_1651_p1;
wire   [63:0] bitcast_ln194_68_fu_1685_p1;
wire   [63:0] bitcast_ln194_69_fu_1690_p1;
wire   [63:0] bitcast_ln194_70_fu_1720_p1;
wire   [63:0] bitcast_ln194_71_fu_1749_p1;
reg    weights3_2_ce1_local;
reg   [5:0] weights3_2_address1_local;
reg    weights3_2_ce0_local;
reg   [5:0] weights3_2_address0_local;
reg    weights3_2_we1_local;
reg   [63:0] weights3_2_d1_local;
wire   [63:0] bitcast_ln194_72_fu_1552_p1;
reg    weights3_2_we0_local;
reg   [63:0] weights3_2_d0_local;
wire   [63:0] bitcast_ln194_75_fu_1557_p1;
wire   [63:0] bitcast_ln194_73_fu_1586_p1;
wire   [63:0] bitcast_ln194_74_fu_1591_p1;
wire   [63:0] bitcast_ln194_76_fu_1620_p1;
wire   [63:0] bitcast_ln194_77_fu_1624_p1;
wire   [63:0] bitcast_ln194_78_fu_1656_p1;
wire   [63:0] bitcast_ln194_79_fu_1661_p1;
wire   [63:0] bitcast_ln194_80_fu_1695_p1;
wire   [63:0] bitcast_ln194_81_fu_1700_p1;
wire   [63:0] bitcast_ln194_82_fu_1725_p1;
wire   [63:0] bitcast_ln194_83_fu_1753_p1;
reg    weights3_3_ce1_local;
reg   [5:0] weights3_3_address1_local;
reg    weights3_3_ce0_local;
reg   [5:0] weights3_3_address0_local;
reg    weights3_3_we0_local;
reg   [63:0] weights3_3_d0_local;
wire   [63:0] bitcast_ln194_84_fu_1562_p1;
reg    weights3_3_we1_local;
reg   [63:0] weights3_3_d1_local;
wire   [63:0] bitcast_ln194_85_fu_1595_p1;
wire   [63:0] bitcast_ln194_86_fu_1600_p1;
wire   [63:0] bitcast_ln194_87_fu_1628_p1;
wire   [63:0] bitcast_ln194_88_fu_1632_p1;
wire   [63:0] bitcast_ln194_89_fu_1666_p1;
wire   [63:0] bitcast_ln194_90_fu_1670_p1;
wire   [63:0] bitcast_ln194_91_fu_1705_p1;
wire   [63:0] bitcast_ln194_92_fu_1710_p1;
wire   [63:0] bitcast_ln194_93_fu_1730_p1;
wire   [63:0] bitcast_ln194_94_fu_1735_p1;
wire   [63:0] bitcast_ln194_95_fu_1740_p1;
reg   [63:0] grp_fu_549_p0;
reg   [63:0] grp_fu_553_p0;
reg   [63:0] grp_fu_557_p0;
reg   [63:0] grp_fu_561_p0;
wire   [3:0] lshr_ln7_fu_689_p4;
wire   [5:0] p_shl1_fu_703_p3;
wire   [5:0] zext_ln194_17_fu_699_p1;
wire   [5:0] sub_ln194_fu_711_p2;
wire   [4:0] tmp_s_fu_724_p4;
wire   [5:0] or_ln4_fu_734_p3;
wire   [7:0] p_shl_fu_746_p3;
wire   [7:0] or_ln192_cast_fu_742_p1;
wire   [5:0] lshr_ln194_1_fu_760_p4;
wire   [3:0] tmp_5_fu_775_p4;
wire   [7:0] add_ln194_fu_800_p2;
wire   [5:0] lshr_ln194_2_fu_805_p4;
wire   [7:0] add_ln194_1_fu_820_p2;
wire   [5:0] lshr_ln194_3_fu_825_p4;
wire   [7:0] empty_51_fu_840_p2;
wire   [5:0] lshr_ln194_4_fu_845_p4;
wire   [7:0] add_ln194_2_fu_861_p2;
wire   [5:0] lshr_ln194_5_fu_866_p4;
wire   [7:0] empty_52_fu_881_p2;
wire   [5:0] lshr_ln194_6_fu_886_p4;
wire   [7:0] empty_53_fu_908_p2;
wire   [5:0] lshr_ln194_7_fu_913_p4;
wire   [7:0] add_ln194_3_fu_928_p2;
wire   [5:0] lshr_ln194_8_fu_933_p4;
wire   [7:0] add_ln194_4_fu_948_p2;
wire   [5:0] lshr_ln194_9_fu_953_p4;
wire   [7:0] empty_54_fu_968_p2;
wire   [5:0] lshr_ln194_s_fu_973_p4;
wire   [7:0] add_ln194_5_fu_989_p2;
wire   [5:0] lshr_ln194_10_fu_994_p4;
wire   [7:0] empty_55_fu_1009_p2;
wire   [5:0] lshr_ln194_11_fu_1014_p4;
wire   [5:0] add_ln194_6_fu_1046_p2;
wire   [7:0] empty_56_fu_1058_p2;
wire   [5:0] lshr_ln194_12_fu_1063_p4;
wire   [7:0] add_ln194_7_fu_1078_p2;
wire   [5:0] lshr_ln194_13_fu_1083_p4;
wire   [7:0] add_ln194_8_fu_1098_p2;
wire   [5:0] lshr_ln194_14_fu_1103_p4;
wire   [7:0] empty_57_fu_1118_p2;
wire   [5:0] lshr_ln194_15_fu_1123_p4;
wire   [7:0] add_ln194_9_fu_1159_p2;
wire   [5:0] lshr_ln194_16_fu_1164_p4;
wire   [7:0] empty_58_fu_1179_p2;
wire   [5:0] lshr_ln194_17_fu_1184_p4;
wire   [5:0] add_ln194_10_fu_1201_p2;
wire   [7:0] empty_59_fu_1233_p2;
wire   [5:0] lshr_ln194_18_fu_1238_p4;
wire   [7:0] add_ln194_11_fu_1253_p2;
wire   [5:0] lshr_ln194_19_fu_1258_p4;
wire   [7:0] add_ln194_12_fu_1273_p2;
wire   [5:0] lshr_ln194_20_fu_1278_p4;
wire   [7:0] empty_60_fu_1293_p2;
wire   [5:0] lshr_ln194_21_fu_1298_p4;
wire   [7:0] add_ln194_13_fu_1314_p2;
wire   [5:0] lshr_ln194_22_fu_1319_p4;
wire   [7:0] empty_61_fu_1334_p2;
wire   [5:0] lshr_ln194_23_fu_1339_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg   [11:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to6;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 12'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_122 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U441(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_549_p0),.din1(norm_84),.ce(1'b1),.dout(grp_fu_549_p2));
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U442(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_553_p0),.din1(norm_84),.ce(1'b1),.dout(grp_fu_553_p2));
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U443(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_557_p0),.din1(norm_84),.ce(1'b1),.dout(grp_fu_557_p2));
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U444(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_561_p0),.din1(norm_84),.ce(1'b1),.dout(grp_fu_561_p2));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage11),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage11)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        i_fu_122 <= 7'd0;
    end else if (((tmp_reg_1777 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        i_fu_122 <= add_ln192_fu_1486_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_585 <= weights3_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_585 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_590 <= weights3_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_590 <= weights3_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_595 <= weights3_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_595 <= weights3_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_600 <= weights3_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_600 <= weights3_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_605 <= weights3_2_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_605 <= weights3_2_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_610 <= weights3_3_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_610 <= weights3_3_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_615 <= weights3_3_q0;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_615 <= weights3_3_q1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            reg_620 <= weights3_3_q1;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_620 <= weights3_3_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        div213_14_2_reg_2426 <= grp_fu_549_p2;
        div213_15_1_reg_2436 <= grp_fu_557_p2;
        div213_15_reg_2431 <= grp_fu_553_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        div213_3_1_reg_2371 <= grp_fu_553_p2;
        div213_3_2_reg_2376 <= grp_fu_557_p2;
        div213_3_reg_2366 <= grp_fu_549_p2;
        div213_5_reg_2381 <= grp_fu_561_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        div213_5_1_reg_2386 <= grp_fu_549_p2;
        div213_5_2_reg_2391 <= grp_fu_553_p2;
        div213_6_1_reg_2401 <= grp_fu_561_p2;
        div213_6_reg_2396 <= grp_fu_557_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        div213_6_2_reg_2406 <= grp_fu_549_p2;
        div213_7_1_reg_2416 <= grp_fu_557_p2;
        div213_7_2_reg_2421 <= grp_fu_561_p2;
        div213_7_reg_2411 <= grp_fu_553_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_1786[7 : 1] <= empty_fu_754_p2[7 : 1];
        i_4_reg_1772 <= ap_sig_allocacmp_i_4;
        or_ln5_reg_1813[5 : 2] <= or_ln5_fu_785_p3[5 : 2];
        tmp_reg_1777 <= ap_sig_allocacmp_i_4[32'd6];
        weights3_0_addr_14_reg_1835[5 : 2] <= or_ln194_cast_fu_793_p1[5 : 2];
        weights3_0_addr_14_reg_1835_pp0_iter1_reg[5 : 2] <= weights3_0_addr_14_reg_1835[5 : 2];
        weights3_0_addr_14_reg_1835_pp0_iter2_reg[5 : 2] <= weights3_0_addr_14_reg_1835_pp0_iter1_reg[5 : 2];
        weights3_0_addr_14_reg_1835_pp0_iter3_reg[5 : 2] <= weights3_0_addr_14_reg_1835_pp0_iter2_reg[5 : 2];
        weights3_0_addr_14_reg_1835_pp0_iter4_reg[5 : 2] <= weights3_0_addr_14_reg_1835_pp0_iter3_reg[5 : 2];
        weights3_0_addr_14_reg_1835_pp0_iter5_reg[5 : 2] <= weights3_0_addr_14_reg_1835_pp0_iter4_reg[5 : 2];
        weights3_0_addr_reg_1781 <= zext_ln194_fu_717_p1;
        weights3_0_addr_reg_1781_pp0_iter1_reg <= weights3_0_addr_reg_1781;
        weights3_0_addr_reg_1781_pp0_iter2_reg <= weights3_0_addr_reg_1781_pp0_iter1_reg;
        weights3_0_addr_reg_1781_pp0_iter3_reg <= weights3_0_addr_reg_1781_pp0_iter2_reg;
        weights3_0_addr_reg_1781_pp0_iter4_reg <= weights3_0_addr_reg_1781_pp0_iter3_reg;
        weights3_0_addr_reg_1781_pp0_iter5_reg <= weights3_0_addr_reg_1781_pp0_iter4_reg;
        weights3_1_addr_14_reg_1840[5 : 2] <= or_ln194_cast_fu_793_p1[5 : 2];
        weights3_1_addr_14_reg_1840_pp0_iter1_reg[5 : 2] <= weights3_1_addr_14_reg_1840[5 : 2];
        weights3_1_addr_14_reg_1840_pp0_iter2_reg[5 : 2] <= weights3_1_addr_14_reg_1840_pp0_iter1_reg[5 : 2];
        weights3_1_addr_14_reg_1840_pp0_iter3_reg[5 : 2] <= weights3_1_addr_14_reg_1840_pp0_iter2_reg[5 : 2];
        weights3_1_addr_14_reg_1840_pp0_iter4_reg[5 : 2] <= weights3_1_addr_14_reg_1840_pp0_iter3_reg[5 : 2];
        weights3_1_addr_14_reg_1840_pp0_iter5_reg[5 : 2] <= weights3_1_addr_14_reg_1840_pp0_iter4_reg[5 : 2];
        weights3_1_addr_reg_1819 <= zext_ln194_fu_717_p1;
        weights3_1_addr_reg_1819_pp0_iter1_reg <= weights3_1_addr_reg_1819;
        weights3_1_addr_reg_1819_pp0_iter2_reg <= weights3_1_addr_reg_1819_pp0_iter1_reg;
        weights3_1_addr_reg_1819_pp0_iter3_reg <= weights3_1_addr_reg_1819_pp0_iter2_reg;
        weights3_1_addr_reg_1819_pp0_iter4_reg <= weights3_1_addr_reg_1819_pp0_iter3_reg;
        weights3_1_addr_reg_1819_pp0_iter5_reg <= weights3_1_addr_reg_1819_pp0_iter4_reg;
        weights3_2_addr_14_reg_1845[5 : 2] <= or_ln194_cast_fu_793_p1[5 : 2];
        weights3_2_addr_14_reg_1845_pp0_iter1_reg[5 : 2] <= weights3_2_addr_14_reg_1845[5 : 2];
        weights3_2_addr_14_reg_1845_pp0_iter2_reg[5 : 2] <= weights3_2_addr_14_reg_1845_pp0_iter1_reg[5 : 2];
        weights3_2_addr_14_reg_1845_pp0_iter3_reg[5 : 2] <= weights3_2_addr_14_reg_1845_pp0_iter2_reg[5 : 2];
        weights3_2_addr_14_reg_1845_pp0_iter4_reg[5 : 2] <= weights3_2_addr_14_reg_1845_pp0_iter3_reg[5 : 2];
        weights3_2_addr_14_reg_1845_pp0_iter5_reg[5 : 2] <= weights3_2_addr_14_reg_1845_pp0_iter4_reg[5 : 2];
        weights3_2_addr_reg_1824 <= zext_ln194_fu_717_p1;
        weights3_2_addr_reg_1824_pp0_iter1_reg <= weights3_2_addr_reg_1824;
        weights3_2_addr_reg_1824_pp0_iter2_reg <= weights3_2_addr_reg_1824_pp0_iter1_reg;
        weights3_2_addr_reg_1824_pp0_iter3_reg <= weights3_2_addr_reg_1824_pp0_iter2_reg;
        weights3_2_addr_reg_1824_pp0_iter4_reg <= weights3_2_addr_reg_1824_pp0_iter3_reg;
        weights3_2_addr_reg_1824_pp0_iter5_reg <= weights3_2_addr_reg_1824_pp0_iter4_reg;
        weights3_3_addr_reg_1829 <= zext_ln194_1_fu_770_p1;
        weights3_3_addr_reg_1829_pp0_iter1_reg <= weights3_3_addr_reg_1829;
        weights3_3_addr_reg_1829_pp0_iter2_reg <= weights3_3_addr_reg_1829_pp0_iter1_reg;
        weights3_3_addr_reg_1829_pp0_iter3_reg <= weights3_3_addr_reg_1829_pp0_iter2_reg;
        weights3_3_addr_reg_1829_pp0_iter4_reg <= weights3_3_addr_reg_1829_pp0_iter3_reg;
        weights3_3_addr_reg_1829_pp0_iter5_reg <= weights3_3_addr_reg_1829_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_565 <= weights3_0_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_569 <= weights3_1_q1;
        reg_573 <= weights3_2_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_577 <= weights3_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_581 <= weights3_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_625 <= grp_fu_549_p2;
        reg_629 <= grp_fu_553_p2;
        reg_633 <= grp_fu_557_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_637 <= grp_fu_561_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_641 <= grp_fu_549_p2;
        reg_645 <= grp_fu_553_p2;
        reg_649 <= grp_fu_557_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_653 <= grp_fu_561_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_657 <= grp_fu_549_p2;
        reg_661 <= grp_fu_553_p2;
        reg_665 <= grp_fu_557_p2;
        reg_669 <= grp_fu_561_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_0_addr_12_reg_1850 <= zext_ln194_2_fu_815_p1;
        weights3_0_addr_12_reg_1850_pp0_iter1_reg <= weights3_0_addr_12_reg_1850;
        weights3_0_addr_12_reg_1850_pp0_iter2_reg <= weights3_0_addr_12_reg_1850_pp0_iter1_reg;
        weights3_0_addr_12_reg_1850_pp0_iter3_reg <= weights3_0_addr_12_reg_1850_pp0_iter2_reg;
        weights3_0_addr_12_reg_1850_pp0_iter4_reg <= weights3_0_addr_12_reg_1850_pp0_iter3_reg;
        weights3_0_addr_12_reg_1850_pp0_iter5_reg <= weights3_0_addr_12_reg_1850_pp0_iter4_reg;
        weights3_0_addr_13_reg_1870 <= lshr_ln194_5_cast_fu_876_p1;
        weights3_0_addr_13_reg_1870_pp0_iter1_reg <= weights3_0_addr_13_reg_1870;
        weights3_0_addr_13_reg_1870_pp0_iter2_reg <= weights3_0_addr_13_reg_1870_pp0_iter1_reg;
        weights3_0_addr_13_reg_1870_pp0_iter3_reg <= weights3_0_addr_13_reg_1870_pp0_iter2_reg;
        weights3_0_addr_13_reg_1870_pp0_iter4_reg <= weights3_0_addr_13_reg_1870_pp0_iter3_reg;
        weights3_0_addr_13_reg_1870_pp0_iter5_reg <= weights3_0_addr_13_reg_1870_pp0_iter4_reg;
        weights3_1_addr_12_reg_1855 <= lshr_ln194_3_cast_fu_835_p1;
        weights3_1_addr_12_reg_1855_pp0_iter1_reg <= weights3_1_addr_12_reg_1855;
        weights3_1_addr_12_reg_1855_pp0_iter2_reg <= weights3_1_addr_12_reg_1855_pp0_iter1_reg;
        weights3_1_addr_12_reg_1855_pp0_iter3_reg <= weights3_1_addr_12_reg_1855_pp0_iter2_reg;
        weights3_1_addr_12_reg_1855_pp0_iter4_reg <= weights3_1_addr_12_reg_1855_pp0_iter3_reg;
        weights3_1_addr_12_reg_1855_pp0_iter5_reg <= weights3_1_addr_12_reg_1855_pp0_iter4_reg;
        weights3_1_addr_13_reg_1875 <= zext_ln194_4_fu_896_p1;
        weights3_1_addr_13_reg_1875_pp0_iter1_reg <= weights3_1_addr_13_reg_1875;
        weights3_1_addr_13_reg_1875_pp0_iter2_reg <= weights3_1_addr_13_reg_1875_pp0_iter1_reg;
        weights3_1_addr_13_reg_1875_pp0_iter3_reg <= weights3_1_addr_13_reg_1875_pp0_iter2_reg;
        weights3_1_addr_13_reg_1875_pp0_iter4_reg <= weights3_1_addr_13_reg_1875_pp0_iter3_reg;
        weights3_1_addr_13_reg_1875_pp0_iter5_reg <= weights3_1_addr_13_reg_1875_pp0_iter4_reg;
        weights3_2_addr_12_reg_1860 <= zext_ln194_3_fu_855_p1;
        weights3_2_addr_12_reg_1860_pp0_iter1_reg <= weights3_2_addr_12_reg_1860;
        weights3_2_addr_12_reg_1860_pp0_iter2_reg <= weights3_2_addr_12_reg_1860_pp0_iter1_reg;
        weights3_2_addr_12_reg_1860_pp0_iter3_reg <= weights3_2_addr_12_reg_1860_pp0_iter2_reg;
        weights3_2_addr_12_reg_1860_pp0_iter4_reg <= weights3_2_addr_12_reg_1860_pp0_iter3_reg;
        weights3_2_addr_12_reg_1860_pp0_iter5_reg <= weights3_2_addr_12_reg_1860_pp0_iter4_reg;
        weights3_2_addr_13_reg_1880 <= zext_ln194_4_fu_896_p1;
        weights3_2_addr_13_reg_1880_pp0_iter1_reg <= weights3_2_addr_13_reg_1880;
        weights3_2_addr_13_reg_1880_pp0_iter2_reg <= weights3_2_addr_13_reg_1880_pp0_iter1_reg;
        weights3_2_addr_13_reg_1880_pp0_iter3_reg <= weights3_2_addr_13_reg_1880_pp0_iter2_reg;
        weights3_2_addr_13_reg_1880_pp0_iter4_reg <= weights3_2_addr_13_reg_1880_pp0_iter3_reg;
        weights3_2_addr_13_reg_1880_pp0_iter5_reg <= weights3_2_addr_13_reg_1880_pp0_iter4_reg;
        weights3_3_addr_12_reg_1865 <= zext_ln194_3_fu_855_p1;
        weights3_3_addr_12_reg_1865_pp0_iter1_reg <= weights3_3_addr_12_reg_1865;
        weights3_3_addr_12_reg_1865_pp0_iter2_reg <= weights3_3_addr_12_reg_1865_pp0_iter1_reg;
        weights3_3_addr_12_reg_1865_pp0_iter3_reg <= weights3_3_addr_12_reg_1865_pp0_iter2_reg;
        weights3_3_addr_12_reg_1865_pp0_iter4_reg <= weights3_3_addr_12_reg_1865_pp0_iter3_reg;
        weights3_3_addr_12_reg_1865_pp0_iter5_reg <= weights3_3_addr_12_reg_1865_pp0_iter4_reg;
        weights3_3_addr_13_reg_1885 <= zext_ln194_4_fu_896_p1;
        weights3_3_addr_13_reg_1885_pp0_iter1_reg <= weights3_3_addr_13_reg_1885;
        weights3_3_addr_13_reg_1885_pp0_iter2_reg <= weights3_3_addr_13_reg_1885_pp0_iter1_reg;
        weights3_3_addr_13_reg_1885_pp0_iter3_reg <= weights3_3_addr_13_reg_1885_pp0_iter2_reg;
        weights3_3_addr_13_reg_1885_pp0_iter4_reg <= weights3_3_addr_13_reg_1885_pp0_iter3_reg;
        weights3_3_addr_13_reg_1885_pp0_iter5_reg <= weights3_3_addr_13_reg_1885_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_0_addr_15_reg_1915 <= zext_ln194_6_fu_943_p1;
        weights3_0_addr_15_reg_1915_pp0_iter1_reg <= weights3_0_addr_15_reg_1915;
        weights3_0_addr_15_reg_1915_pp0_iter2_reg <= weights3_0_addr_15_reg_1915_pp0_iter1_reg;
        weights3_0_addr_15_reg_1915_pp0_iter3_reg <= weights3_0_addr_15_reg_1915_pp0_iter2_reg;
        weights3_0_addr_15_reg_1915_pp0_iter4_reg <= weights3_0_addr_15_reg_1915_pp0_iter3_reg;
        weights3_0_addr_15_reg_1915_pp0_iter5_reg <= weights3_0_addr_15_reg_1915_pp0_iter4_reg;
        weights3_0_addr_16_reg_1935 <= lshr_ln194_11_cast_fu_1004_p1;
        weights3_0_addr_16_reg_1935_pp0_iter1_reg <= weights3_0_addr_16_reg_1935;
        weights3_0_addr_16_reg_1935_pp0_iter2_reg <= weights3_0_addr_16_reg_1935_pp0_iter1_reg;
        weights3_0_addr_16_reg_1935_pp0_iter3_reg <= weights3_0_addr_16_reg_1935_pp0_iter2_reg;
        weights3_0_addr_16_reg_1935_pp0_iter4_reg <= weights3_0_addr_16_reg_1935_pp0_iter3_reg;
        weights3_0_addr_16_reg_1935_pp0_iter5_reg <= weights3_0_addr_16_reg_1935_pp0_iter4_reg;
        weights3_1_addr_15_reg_1920 <= lshr_ln194_9_cast_fu_963_p1;
        weights3_1_addr_15_reg_1920_pp0_iter1_reg <= weights3_1_addr_15_reg_1920;
        weights3_1_addr_15_reg_1920_pp0_iter2_reg <= weights3_1_addr_15_reg_1920_pp0_iter1_reg;
        weights3_1_addr_15_reg_1920_pp0_iter3_reg <= weights3_1_addr_15_reg_1920_pp0_iter2_reg;
        weights3_1_addr_15_reg_1920_pp0_iter4_reg <= weights3_1_addr_15_reg_1920_pp0_iter3_reg;
        weights3_1_addr_15_reg_1920_pp0_iter5_reg <= weights3_1_addr_15_reg_1920_pp0_iter4_reg;
        weights3_1_addr_16_reg_1940 <= zext_ln194_8_fu_1024_p1;
        weights3_1_addr_16_reg_1940_pp0_iter1_reg <= weights3_1_addr_16_reg_1940;
        weights3_1_addr_16_reg_1940_pp0_iter2_reg <= weights3_1_addr_16_reg_1940_pp0_iter1_reg;
        weights3_1_addr_16_reg_1940_pp0_iter3_reg <= weights3_1_addr_16_reg_1940_pp0_iter2_reg;
        weights3_1_addr_16_reg_1940_pp0_iter4_reg <= weights3_1_addr_16_reg_1940_pp0_iter3_reg;
        weights3_1_addr_16_reg_1940_pp0_iter5_reg <= weights3_1_addr_16_reg_1940_pp0_iter4_reg;
        weights3_2_addr_15_reg_1925 <= zext_ln194_7_fu_983_p1;
        weights3_2_addr_15_reg_1925_pp0_iter1_reg <= weights3_2_addr_15_reg_1925;
        weights3_2_addr_15_reg_1925_pp0_iter2_reg <= weights3_2_addr_15_reg_1925_pp0_iter1_reg;
        weights3_2_addr_15_reg_1925_pp0_iter3_reg <= weights3_2_addr_15_reg_1925_pp0_iter2_reg;
        weights3_2_addr_15_reg_1925_pp0_iter4_reg <= weights3_2_addr_15_reg_1925_pp0_iter3_reg;
        weights3_2_addr_15_reg_1925_pp0_iter5_reg <= weights3_2_addr_15_reg_1925_pp0_iter4_reg;
        weights3_2_addr_16_reg_1945 <= zext_ln194_8_fu_1024_p1;
        weights3_2_addr_16_reg_1945_pp0_iter1_reg <= weights3_2_addr_16_reg_1945;
        weights3_2_addr_16_reg_1945_pp0_iter2_reg <= weights3_2_addr_16_reg_1945_pp0_iter1_reg;
        weights3_2_addr_16_reg_1945_pp0_iter3_reg <= weights3_2_addr_16_reg_1945_pp0_iter2_reg;
        weights3_2_addr_16_reg_1945_pp0_iter4_reg <= weights3_2_addr_16_reg_1945_pp0_iter3_reg;
        weights3_2_addr_16_reg_1945_pp0_iter5_reg <= weights3_2_addr_16_reg_1945_pp0_iter4_reg;
        weights3_3_addr_14_reg_1910 <= zext_ln194_5_fu_923_p1;
        weights3_3_addr_14_reg_1910_pp0_iter1_reg <= weights3_3_addr_14_reg_1910;
        weights3_3_addr_14_reg_1910_pp0_iter2_reg <= weights3_3_addr_14_reg_1910_pp0_iter1_reg;
        weights3_3_addr_14_reg_1910_pp0_iter3_reg <= weights3_3_addr_14_reg_1910_pp0_iter2_reg;
        weights3_3_addr_14_reg_1910_pp0_iter4_reg <= weights3_3_addr_14_reg_1910_pp0_iter3_reg;
        weights3_3_addr_14_reg_1910_pp0_iter5_reg <= weights3_3_addr_14_reg_1910_pp0_iter4_reg;
        weights3_3_addr_15_reg_1930 <= zext_ln194_7_fu_983_p1;
        weights3_3_addr_15_reg_1930_pp0_iter1_reg <= weights3_3_addr_15_reg_1930;
        weights3_3_addr_15_reg_1930_pp0_iter2_reg <= weights3_3_addr_15_reg_1930_pp0_iter1_reg;
        weights3_3_addr_15_reg_1930_pp0_iter3_reg <= weights3_3_addr_15_reg_1930_pp0_iter2_reg;
        weights3_3_addr_15_reg_1930_pp0_iter4_reg <= weights3_3_addr_15_reg_1930_pp0_iter3_reg;
        weights3_3_addr_15_reg_1930_pp0_iter5_reg <= weights3_3_addr_15_reg_1930_pp0_iter4_reg;
        weights3_3_addr_16_reg_1950 <= zext_ln194_8_fu_1024_p1;
        weights3_3_addr_16_reg_1950_pp0_iter1_reg <= weights3_3_addr_16_reg_1950;
        weights3_3_addr_16_reg_1950_pp0_iter2_reg <= weights3_3_addr_16_reg_1950_pp0_iter1_reg;
        weights3_3_addr_16_reg_1950_pp0_iter3_reg <= weights3_3_addr_16_reg_1950_pp0_iter2_reg;
        weights3_3_addr_16_reg_1950_pp0_iter4_reg <= weights3_3_addr_16_reg_1950_pp0_iter3_reg;
        weights3_3_addr_16_reg_1950_pp0_iter5_reg <= weights3_3_addr_16_reg_1950_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_0_addr_17_reg_1985[5 : 2] <= add_ln194_6_cast_fu_1051_p1[5 : 2];
        weights3_0_addr_17_reg_1985_pp0_iter1_reg[5 : 2] <= weights3_0_addr_17_reg_1985[5 : 2];
        weights3_0_addr_17_reg_1985_pp0_iter2_reg[5 : 2] <= weights3_0_addr_17_reg_1985_pp0_iter1_reg[5 : 2];
        weights3_0_addr_17_reg_1985_pp0_iter3_reg[5 : 2] <= weights3_0_addr_17_reg_1985_pp0_iter2_reg[5 : 2];
        weights3_0_addr_17_reg_1985_pp0_iter4_reg[5 : 2] <= weights3_0_addr_17_reg_1985_pp0_iter3_reg[5 : 2];
        weights3_0_addr_17_reg_1985_pp0_iter5_reg[5 : 2] <= weights3_0_addr_17_reg_1985_pp0_iter4_reg[5 : 2];
        weights3_0_addr_18_reg_2005 <= zext_ln194_10_fu_1093_p1;
        weights3_0_addr_18_reg_2005_pp0_iter1_reg <= weights3_0_addr_18_reg_2005;
        weights3_0_addr_18_reg_2005_pp0_iter2_reg <= weights3_0_addr_18_reg_2005_pp0_iter1_reg;
        weights3_0_addr_18_reg_2005_pp0_iter3_reg <= weights3_0_addr_18_reg_2005_pp0_iter2_reg;
        weights3_0_addr_18_reg_2005_pp0_iter4_reg <= weights3_0_addr_18_reg_2005_pp0_iter3_reg;
        weights3_0_addr_18_reg_2005_pp0_iter5_reg <= weights3_0_addr_18_reg_2005_pp0_iter4_reg;
        weights3_1_addr_17_reg_1990[5 : 2] <= add_ln194_6_cast_fu_1051_p1[5 : 2];
        weights3_1_addr_17_reg_1990_pp0_iter1_reg[5 : 2] <= weights3_1_addr_17_reg_1990[5 : 2];
        weights3_1_addr_17_reg_1990_pp0_iter2_reg[5 : 2] <= weights3_1_addr_17_reg_1990_pp0_iter1_reg[5 : 2];
        weights3_1_addr_17_reg_1990_pp0_iter3_reg[5 : 2] <= weights3_1_addr_17_reg_1990_pp0_iter2_reg[5 : 2];
        weights3_1_addr_17_reg_1990_pp0_iter4_reg[5 : 2] <= weights3_1_addr_17_reg_1990_pp0_iter3_reg[5 : 2];
        weights3_1_addr_17_reg_1990_pp0_iter5_reg[5 : 2] <= weights3_1_addr_17_reg_1990_pp0_iter4_reg[5 : 2];
        weights3_1_addr_18_reg_2010 <= lshr_ln194_15_cast_fu_1113_p1;
        weights3_1_addr_18_reg_2010_pp0_iter1_reg <= weights3_1_addr_18_reg_2010;
        weights3_1_addr_18_reg_2010_pp0_iter2_reg <= weights3_1_addr_18_reg_2010_pp0_iter1_reg;
        weights3_1_addr_18_reg_2010_pp0_iter3_reg <= weights3_1_addr_18_reg_2010_pp0_iter2_reg;
        weights3_1_addr_18_reg_2010_pp0_iter4_reg <= weights3_1_addr_18_reg_2010_pp0_iter3_reg;
        weights3_1_addr_18_reg_2010_pp0_iter5_reg <= weights3_1_addr_18_reg_2010_pp0_iter4_reg;
        weights3_2_addr_17_reg_1995[5 : 2] <= add_ln194_6_cast_fu_1051_p1[5 : 2];
        weights3_2_addr_17_reg_1995_pp0_iter1_reg[5 : 2] <= weights3_2_addr_17_reg_1995[5 : 2];
        weights3_2_addr_17_reg_1995_pp0_iter2_reg[5 : 2] <= weights3_2_addr_17_reg_1995_pp0_iter1_reg[5 : 2];
        weights3_2_addr_17_reg_1995_pp0_iter3_reg[5 : 2] <= weights3_2_addr_17_reg_1995_pp0_iter2_reg[5 : 2];
        weights3_2_addr_17_reg_1995_pp0_iter4_reg[5 : 2] <= weights3_2_addr_17_reg_1995_pp0_iter3_reg[5 : 2];
        weights3_2_addr_17_reg_1995_pp0_iter5_reg[5 : 2] <= weights3_2_addr_17_reg_1995_pp0_iter4_reg[5 : 2];
        weights3_2_addr_18_reg_2015 <= zext_ln194_11_fu_1133_p1;
        weights3_2_addr_18_reg_2015_pp0_iter1_reg <= weights3_2_addr_18_reg_2015;
        weights3_2_addr_18_reg_2015_pp0_iter2_reg <= weights3_2_addr_18_reg_2015_pp0_iter1_reg;
        weights3_2_addr_18_reg_2015_pp0_iter3_reg <= weights3_2_addr_18_reg_2015_pp0_iter2_reg;
        weights3_2_addr_18_reg_2015_pp0_iter4_reg <= weights3_2_addr_18_reg_2015_pp0_iter3_reg;
        weights3_2_addr_18_reg_2015_pp0_iter5_reg <= weights3_2_addr_18_reg_2015_pp0_iter4_reg;
        weights3_3_addr_17_reg_2000 <= zext_ln194_9_fu_1073_p1;
        weights3_3_addr_17_reg_2000_pp0_iter1_reg <= weights3_3_addr_17_reg_2000;
        weights3_3_addr_17_reg_2000_pp0_iter2_reg <= weights3_3_addr_17_reg_2000_pp0_iter1_reg;
        weights3_3_addr_17_reg_2000_pp0_iter3_reg <= weights3_3_addr_17_reg_2000_pp0_iter2_reg;
        weights3_3_addr_17_reg_2000_pp0_iter4_reg <= weights3_3_addr_17_reg_2000_pp0_iter3_reg;
        weights3_3_addr_17_reg_2000_pp0_iter5_reg <= weights3_3_addr_17_reg_2000_pp0_iter4_reg;
        weights3_3_addr_18_reg_2020 <= zext_ln194_11_fu_1133_p1;
        weights3_3_addr_18_reg_2020_pp0_iter1_reg <= weights3_3_addr_18_reg_2020;
        weights3_3_addr_18_reg_2020_pp0_iter2_reg <= weights3_3_addr_18_reg_2020_pp0_iter1_reg;
        weights3_3_addr_18_reg_2020_pp0_iter3_reg <= weights3_3_addr_18_reg_2020_pp0_iter2_reg;
        weights3_3_addr_18_reg_2020_pp0_iter4_reg <= weights3_3_addr_18_reg_2020_pp0_iter3_reg;
        weights3_3_addr_18_reg_2020_pp0_iter5_reg <= weights3_3_addr_18_reg_2020_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_0_addr_19_reg_2065 <= lshr_ln194_17_cast_fu_1174_p1;
        weights3_0_addr_19_reg_2065_pp0_iter1_reg <= weights3_0_addr_19_reg_2065;
        weights3_0_addr_19_reg_2065_pp0_iter2_reg <= weights3_0_addr_19_reg_2065_pp0_iter1_reg;
        weights3_0_addr_19_reg_2065_pp0_iter3_reg <= weights3_0_addr_19_reg_2065_pp0_iter2_reg;
        weights3_0_addr_19_reg_2065_pp0_iter4_reg <= weights3_0_addr_19_reg_2065_pp0_iter3_reg;
        weights3_0_addr_19_reg_2065_pp0_iter5_reg <= weights3_0_addr_19_reg_2065_pp0_iter4_reg;
        weights3_0_addr_20_reg_2085[5 : 2] <= add_ln194_10_cast_fu_1206_p1[5 : 2];
        weights3_0_addr_20_reg_2085_pp0_iter1_reg[5 : 2] <= weights3_0_addr_20_reg_2085[5 : 2];
        weights3_0_addr_20_reg_2085_pp0_iter2_reg[5 : 2] <= weights3_0_addr_20_reg_2085_pp0_iter1_reg[5 : 2];
        weights3_0_addr_20_reg_2085_pp0_iter3_reg[5 : 2] <= weights3_0_addr_20_reg_2085_pp0_iter2_reg[5 : 2];
        weights3_0_addr_20_reg_2085_pp0_iter4_reg[5 : 2] <= weights3_0_addr_20_reg_2085_pp0_iter3_reg[5 : 2];
        weights3_0_addr_20_reg_2085_pp0_iter5_reg[5 : 2] <= weights3_0_addr_20_reg_2085_pp0_iter4_reg[5 : 2];
        weights3_1_addr_19_reg_2070 <= zext_ln194_12_fu_1194_p1;
        weights3_1_addr_19_reg_2070_pp0_iter1_reg <= weights3_1_addr_19_reg_2070;
        weights3_1_addr_19_reg_2070_pp0_iter2_reg <= weights3_1_addr_19_reg_2070_pp0_iter1_reg;
        weights3_1_addr_19_reg_2070_pp0_iter3_reg <= weights3_1_addr_19_reg_2070_pp0_iter2_reg;
        weights3_1_addr_19_reg_2070_pp0_iter4_reg <= weights3_1_addr_19_reg_2070_pp0_iter3_reg;
        weights3_1_addr_19_reg_2070_pp0_iter5_reg <= weights3_1_addr_19_reg_2070_pp0_iter4_reg;
        weights3_1_addr_20_reg_2090[5 : 2] <= add_ln194_10_cast_fu_1206_p1[5 : 2];
        weights3_1_addr_20_reg_2090_pp0_iter1_reg[5 : 2] <= weights3_1_addr_20_reg_2090[5 : 2];
        weights3_1_addr_20_reg_2090_pp0_iter2_reg[5 : 2] <= weights3_1_addr_20_reg_2090_pp0_iter1_reg[5 : 2];
        weights3_1_addr_20_reg_2090_pp0_iter3_reg[5 : 2] <= weights3_1_addr_20_reg_2090_pp0_iter2_reg[5 : 2];
        weights3_1_addr_20_reg_2090_pp0_iter4_reg[5 : 2] <= weights3_1_addr_20_reg_2090_pp0_iter3_reg[5 : 2];
        weights3_1_addr_20_reg_2090_pp0_iter5_reg[5 : 2] <= weights3_1_addr_20_reg_2090_pp0_iter4_reg[5 : 2];
        weights3_2_addr_19_reg_2075 <= zext_ln194_12_fu_1194_p1;
        weights3_2_addr_19_reg_2075_pp0_iter1_reg <= weights3_2_addr_19_reg_2075;
        weights3_2_addr_19_reg_2075_pp0_iter2_reg <= weights3_2_addr_19_reg_2075_pp0_iter1_reg;
        weights3_2_addr_19_reg_2075_pp0_iter3_reg <= weights3_2_addr_19_reg_2075_pp0_iter2_reg;
        weights3_2_addr_19_reg_2075_pp0_iter4_reg <= weights3_2_addr_19_reg_2075_pp0_iter3_reg;
        weights3_2_addr_19_reg_2075_pp0_iter5_reg <= weights3_2_addr_19_reg_2075_pp0_iter4_reg;
        weights3_2_addr_20_reg_2095[5 : 2] <= add_ln194_10_cast_fu_1206_p1[5 : 2];
        weights3_2_addr_20_reg_2095_pp0_iter1_reg[5 : 2] <= weights3_2_addr_20_reg_2095[5 : 2];
        weights3_2_addr_20_reg_2095_pp0_iter2_reg[5 : 2] <= weights3_2_addr_20_reg_2095_pp0_iter1_reg[5 : 2];
        weights3_2_addr_20_reg_2095_pp0_iter3_reg[5 : 2] <= weights3_2_addr_20_reg_2095_pp0_iter2_reg[5 : 2];
        weights3_2_addr_20_reg_2095_pp0_iter4_reg[5 : 2] <= weights3_2_addr_20_reg_2095_pp0_iter3_reg[5 : 2];
        weights3_2_addr_20_reg_2095_pp0_iter5_reg[5 : 2] <= weights3_2_addr_20_reg_2095_pp0_iter4_reg[5 : 2];
        weights3_3_addr_19_reg_2080 <= zext_ln194_12_fu_1194_p1;
        weights3_3_addr_19_reg_2080_pp0_iter1_reg <= weights3_3_addr_19_reg_2080;
        weights3_3_addr_19_reg_2080_pp0_iter2_reg <= weights3_3_addr_19_reg_2080_pp0_iter1_reg;
        weights3_3_addr_19_reg_2080_pp0_iter3_reg <= weights3_3_addr_19_reg_2080_pp0_iter2_reg;
        weights3_3_addr_19_reg_2080_pp0_iter4_reg <= weights3_3_addr_19_reg_2080_pp0_iter3_reg;
        weights3_3_addr_19_reg_2080_pp0_iter5_reg <= weights3_3_addr_19_reg_2080_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_0_addr_21_reg_2145 <= zext_ln194_14_fu_1268_p1;
        weights3_0_addr_21_reg_2145_pp0_iter1_reg <= weights3_0_addr_21_reg_2145;
        weights3_0_addr_21_reg_2145_pp0_iter2_reg <= weights3_0_addr_21_reg_2145_pp0_iter1_reg;
        weights3_0_addr_21_reg_2145_pp0_iter3_reg <= weights3_0_addr_21_reg_2145_pp0_iter2_reg;
        weights3_0_addr_21_reg_2145_pp0_iter4_reg <= weights3_0_addr_21_reg_2145_pp0_iter3_reg;
        weights3_0_addr_21_reg_2145_pp0_iter5_reg <= weights3_0_addr_21_reg_2145_pp0_iter4_reg;
        weights3_0_addr_22_reg_2165 <= lshr_ln194_23_cast_fu_1329_p1;
        weights3_0_addr_22_reg_2165_pp0_iter1_reg <= weights3_0_addr_22_reg_2165;
        weights3_0_addr_22_reg_2165_pp0_iter2_reg <= weights3_0_addr_22_reg_2165_pp0_iter1_reg;
        weights3_0_addr_22_reg_2165_pp0_iter3_reg <= weights3_0_addr_22_reg_2165_pp0_iter2_reg;
        weights3_0_addr_22_reg_2165_pp0_iter4_reg <= weights3_0_addr_22_reg_2165_pp0_iter3_reg;
        weights3_0_addr_22_reg_2165_pp0_iter5_reg <= weights3_0_addr_22_reg_2165_pp0_iter4_reg;
        weights3_0_addr_22_reg_2165_pp0_iter6_reg <= weights3_0_addr_22_reg_2165_pp0_iter5_reg;
        weights3_1_addr_21_reg_2150 <= lshr_ln194_21_cast_fu_1288_p1;
        weights3_1_addr_21_reg_2150_pp0_iter1_reg <= weights3_1_addr_21_reg_2150;
        weights3_1_addr_21_reg_2150_pp0_iter2_reg <= weights3_1_addr_21_reg_2150_pp0_iter1_reg;
        weights3_1_addr_21_reg_2150_pp0_iter3_reg <= weights3_1_addr_21_reg_2150_pp0_iter2_reg;
        weights3_1_addr_21_reg_2150_pp0_iter4_reg <= weights3_1_addr_21_reg_2150_pp0_iter3_reg;
        weights3_1_addr_21_reg_2150_pp0_iter5_reg <= weights3_1_addr_21_reg_2150_pp0_iter4_reg;
        weights3_1_addr_22_reg_2170 <= zext_ln194_16_fu_1349_p1;
        weights3_1_addr_22_reg_2170_pp0_iter1_reg <= weights3_1_addr_22_reg_2170;
        weights3_1_addr_22_reg_2170_pp0_iter2_reg <= weights3_1_addr_22_reg_2170_pp0_iter1_reg;
        weights3_1_addr_22_reg_2170_pp0_iter3_reg <= weights3_1_addr_22_reg_2170_pp0_iter2_reg;
        weights3_1_addr_22_reg_2170_pp0_iter4_reg <= weights3_1_addr_22_reg_2170_pp0_iter3_reg;
        weights3_1_addr_22_reg_2170_pp0_iter5_reg <= weights3_1_addr_22_reg_2170_pp0_iter4_reg;
        weights3_1_addr_22_reg_2170_pp0_iter6_reg <= weights3_1_addr_22_reg_2170_pp0_iter5_reg;
        weights3_2_addr_21_reg_2155 <= zext_ln194_15_fu_1308_p1;
        weights3_2_addr_21_reg_2155_pp0_iter1_reg <= weights3_2_addr_21_reg_2155;
        weights3_2_addr_21_reg_2155_pp0_iter2_reg <= weights3_2_addr_21_reg_2155_pp0_iter1_reg;
        weights3_2_addr_21_reg_2155_pp0_iter3_reg <= weights3_2_addr_21_reg_2155_pp0_iter2_reg;
        weights3_2_addr_21_reg_2155_pp0_iter4_reg <= weights3_2_addr_21_reg_2155_pp0_iter3_reg;
        weights3_2_addr_21_reg_2155_pp0_iter5_reg <= weights3_2_addr_21_reg_2155_pp0_iter4_reg;
        weights3_2_addr_22_reg_2175 <= zext_ln194_16_fu_1349_p1;
        weights3_2_addr_22_reg_2175_pp0_iter1_reg <= weights3_2_addr_22_reg_2175;
        weights3_2_addr_22_reg_2175_pp0_iter2_reg <= weights3_2_addr_22_reg_2175_pp0_iter1_reg;
        weights3_2_addr_22_reg_2175_pp0_iter3_reg <= weights3_2_addr_22_reg_2175_pp0_iter2_reg;
        weights3_2_addr_22_reg_2175_pp0_iter4_reg <= weights3_2_addr_22_reg_2175_pp0_iter3_reg;
        weights3_2_addr_22_reg_2175_pp0_iter5_reg <= weights3_2_addr_22_reg_2175_pp0_iter4_reg;
        weights3_2_addr_22_reg_2175_pp0_iter6_reg <= weights3_2_addr_22_reg_2175_pp0_iter5_reg;
        weights3_3_addr_20_reg_2140 <= zext_ln194_13_fu_1248_p1;
        weights3_3_addr_20_reg_2140_pp0_iter1_reg <= weights3_3_addr_20_reg_2140;
        weights3_3_addr_20_reg_2140_pp0_iter2_reg <= weights3_3_addr_20_reg_2140_pp0_iter1_reg;
        weights3_3_addr_20_reg_2140_pp0_iter3_reg <= weights3_3_addr_20_reg_2140_pp0_iter2_reg;
        weights3_3_addr_20_reg_2140_pp0_iter4_reg <= weights3_3_addr_20_reg_2140_pp0_iter3_reg;
        weights3_3_addr_20_reg_2140_pp0_iter5_reg <= weights3_3_addr_20_reg_2140_pp0_iter4_reg;
        weights3_3_addr_21_reg_2160 <= zext_ln194_15_fu_1308_p1;
        weights3_3_addr_21_reg_2160_pp0_iter1_reg <= weights3_3_addr_21_reg_2160;
        weights3_3_addr_21_reg_2160_pp0_iter2_reg <= weights3_3_addr_21_reg_2160_pp0_iter1_reg;
        weights3_3_addr_21_reg_2160_pp0_iter3_reg <= weights3_3_addr_21_reg_2160_pp0_iter2_reg;
        weights3_3_addr_21_reg_2160_pp0_iter4_reg <= weights3_3_addr_21_reg_2160_pp0_iter3_reg;
        weights3_3_addr_21_reg_2160_pp0_iter5_reg <= weights3_3_addr_21_reg_2160_pp0_iter4_reg;
        weights3_3_addr_22_reg_2180 <= zext_ln194_16_fu_1349_p1;
        weights3_3_addr_22_reg_2180_pp0_iter1_reg <= weights3_3_addr_22_reg_2180;
        weights3_3_addr_22_reg_2180_pp0_iter2_reg <= weights3_3_addr_22_reg_2180_pp0_iter1_reg;
        weights3_3_addr_22_reg_2180_pp0_iter3_reg <= weights3_3_addr_22_reg_2180_pp0_iter2_reg;
        weights3_3_addr_22_reg_2180_pp0_iter4_reg <= weights3_3_addr_22_reg_2180_pp0_iter3_reg;
        weights3_3_addr_22_reg_2180_pp0_iter5_reg <= weights3_3_addr_22_reg_2180_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_0_load_18_reg_2050 <= weights3_0_q0;
        weights3_1_load_18_reg_2055 <= weights3_1_q0;
        weights3_2_load_18_reg_2060 <= weights3_2_q0;
        weights3_3_load_17_reg_2045 <= weights3_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_0_load_19_reg_2120 <= weights3_0_q1;
        weights3_0_load_20_reg_2125 <= weights3_0_q0;
        weights3_1_load_20_reg_2130 <= weights3_1_q0;
        weights3_2_load_20_reg_2135 <= weights3_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_0_load_22_reg_2211 <= weights3_0_q0;
        weights3_1_load_22_reg_2216 <= weights3_1_q0;
        weights3_2_load_22_reg_2221 <= weights3_2_q0;
        weights3_3_load_21_reg_2206 <= weights3_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_1_load_16_reg_1975 <= weights3_1_q0;
        weights3_2_load_16_reg_1980 <= weights3_2_q0;
    end
end
always @ (*) begin
    if (((tmp_reg_1777 == 1'd1) & (1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_condition_exit_pp0_iter0_stage11 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage11 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to6 = 1'b1;
    end else begin
        ap_idle_pp0_1to6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_4 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_4 = i_fu_122;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_549_p0 = bitcast_ln194_44_fu_1515_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_549_p0 = bitcast_ln194_40_fu_1496_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_549_p0 = bitcast_ln194_36_fu_1469_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_549_p0 = bitcast_ln194_32_fu_1450_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_549_p0 = bitcast_ln194_28_fu_1433_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_549_p0 = bitcast_ln194_24_fu_1414_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_549_p0 = bitcast_ln194_20_fu_1396_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_549_p0 = bitcast_ln194_16_fu_1376_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_549_p0 = bitcast_ln194_9_fu_1356_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_549_p0 = bitcast_ln194_5_fu_1213_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_549_p0 = bitcast_ln194_4_fu_1139_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_549_p0 = bitcast_ln194_fu_903_p1;
    end else begin
        grp_fu_549_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_553_p0 = bitcast_ln194_45_fu_1519_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_553_p0 = bitcast_ln194_41_fu_1501_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_553_p0 = bitcast_ln194_37_fu_1473_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_553_p0 = bitcast_ln194_33_fu_1454_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_553_p0 = bitcast_ln194_29_fu_1437_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_553_p0 = bitcast_ln194_25_fu_1419_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_553_p0 = bitcast_ln194_21_fu_1401_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_553_p0 = bitcast_ln194_17_fu_1381_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_553_p0 = bitcast_ln194_10_fu_1361_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_553_p0 = bitcast_ln194_6_fu_1218_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_553_p0 = bitcast_ln194_12_fu_1144_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_553_p0 = bitcast_ln194_1_fu_1031_p1;
    end else begin
        grp_fu_553_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_557_p0 = bitcast_ln194_46_fu_1523_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_557_p0 = bitcast_ln194_42_fu_1506_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_557_p0 = bitcast_ln194_38_fu_1477_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_557_p0 = bitcast_ln194_34_fu_1459_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_557_p0 = bitcast_ln194_30_fu_1441_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_557_p0 = bitcast_ln194_26_fu_1424_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_557_p0 = bitcast_ln194_22_fu_1405_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_557_p0 = bitcast_ln194_18_fu_1386_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_557_p0 = bitcast_ln194_11_fu_1366_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_557_p0 = bitcast_ln194_7_fu_1223_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_557_p0 = bitcast_ln194_13_fu_1149_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_557_p0 = bitcast_ln194_2_fu_1036_p1;
    end else begin
        grp_fu_557_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_561_p0 = bitcast_ln194_47_fu_1527_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_561_p0 = bitcast_ln194_43_fu_1511_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_561_p0 = bitcast_ln194_39_fu_1481_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_561_p0 = bitcast_ln194_35_fu_1464_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_561_p0 = bitcast_ln194_31_fu_1445_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_561_p0 = bitcast_ln194_27_fu_1429_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_561_p0 = bitcast_ln194_23_fu_1409_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_561_p0 = bitcast_ln194_19_fu_1391_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_561_p0 = bitcast_ln194_15_fu_1371_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_561_p0 = bitcast_ln194_8_fu_1228_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_561_p0 = bitcast_ln194_14_fu_1154_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_561_p0 = bitcast_ln194_3_fu_1041_p1;
    end else begin
        grp_fu_561_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_0_address0_local = weights3_0_addr_22_reg_2165_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_0_address0_local = weights3_0_addr_20_reg_2085_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_0_address0_local = weights3_0_addr_18_reg_2005_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_0_address0_local = weights3_0_addr_16_reg_1935_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_0_address0_local = weights3_0_addr_13_reg_1870_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_0_address0_local = weights3_0_addr_14_reg_1835_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_0_address0_local = lshr_ln194_23_cast_fu_1329_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_0_address0_local = add_ln194_10_cast_fu_1206_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_0_address0_local = zext_ln194_10_fu_1093_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_0_address0_local = lshr_ln194_11_cast_fu_1004_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_0_address0_local = lshr_ln194_5_cast_fu_876_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_0_address0_local = or_ln194_cast_fu_793_p1;
    end else begin
        weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_0_address1_local = weights3_0_addr_21_reg_2145_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_0_address1_local = weights3_0_addr_19_reg_2065_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_0_address1_local = weights3_0_addr_17_reg_1985_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_0_address1_local = weights3_0_addr_15_reg_1915_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_0_address1_local = weights3_0_addr_12_reg_1850_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_0_address1_local = weights3_0_addr_reg_1781_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_0_address1_local = zext_ln194_14_fu_1268_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_0_address1_local = lshr_ln194_17_cast_fu_1174_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_0_address1_local = add_ln194_6_cast_fu_1051_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_0_address1_local = zext_ln194_6_fu_943_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_0_address1_local = zext_ln194_2_fu_815_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_0_address1_local = zext_ln194_fu_717_p1;
    end else begin
        weights3_0_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_0_ce0_local = 1'b1;
    end else begin
        weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_0_ce1_local = 1'b1;
    end else begin
        weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_0_d0_local = bitcast_ln194_59_fu_1745_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_0_d0_local = bitcast_ln194_57_fu_1680_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_0_d0_local = bitcast_ln194_55_fu_1641_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_0_d0_local = bitcast_ln194_53_fu_1608_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_0_d0_local = bitcast_ln194_50_fu_1572_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_0_d0_local = bitcast_ln194_51_fu_1537_p1;
    end else begin
        weights3_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            weights3_0_d1_local = bitcast_ln194_58_fu_1715_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            weights3_0_d1_local = bitcast_ln194_56_fu_1675_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            weights3_0_d1_local = bitcast_ln194_54_fu_1636_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            weights3_0_d1_local = bitcast_ln194_52_fu_1604_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            weights3_0_d1_local = bitcast_ln194_49_fu_1567_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            weights3_0_d1_local = bitcast_ln194_48_fu_1532_p1;
        end else begin
            weights3_0_d1_local = 'bx;
        end
    end else begin
        weights3_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        weights3_0_we0_local = 1'b1;
    end else begin
        weights3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        weights3_0_we1_local = 1'b1;
    end else begin
        weights3_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_1_address0_local = weights3_1_addr_22_reg_2170_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_1_address0_local = weights3_1_addr_20_reg_2090_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_1_address0_local = weights3_1_addr_18_reg_2010_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_1_address0_local = weights3_1_addr_16_reg_1940_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_1_address0_local = weights3_1_addr_13_reg_1875_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_1_address0_local = weights3_1_addr_14_reg_1840_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_1_address0_local = zext_ln194_16_fu_1349_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_1_address0_local = add_ln194_10_cast_fu_1206_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_1_address0_local = lshr_ln194_15_cast_fu_1113_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_1_address0_local = zext_ln194_8_fu_1024_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_1_address0_local = zext_ln194_4_fu_896_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_1_address0_local = or_ln194_cast_fu_793_p1;
    end else begin
        weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_1_address1_local = weights3_1_addr_21_reg_2150_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_1_address1_local = weights3_1_addr_19_reg_2070_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_1_address1_local = weights3_1_addr_17_reg_1990_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_1_address1_local = weights3_1_addr_15_reg_1920_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_1_address1_local = weights3_1_addr_12_reg_1855_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_1_address1_local = weights3_1_addr_reg_1819_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_1_address1_local = lshr_ln194_21_cast_fu_1288_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_1_address1_local = zext_ln194_12_fu_1194_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_1_address1_local = add_ln194_6_cast_fu_1051_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_1_address1_local = lshr_ln194_9_cast_fu_963_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_1_address1_local = lshr_ln194_3_cast_fu_835_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_1_address1_local = zext_ln194_fu_717_p1;
    end else begin
        weights3_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_1_ce0_local = 1'b1;
    end else begin
        weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_1_ce1_local = 1'b1;
    end else begin
        weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_1_d0_local = bitcast_ln194_71_fu_1749_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_1_d0_local = bitcast_ln194_69_fu_1690_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_1_d0_local = bitcast_ln194_67_fu_1651_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_1_d0_local = bitcast_ln194_65_fu_1616_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_1_d0_local = bitcast_ln194_62_fu_1582_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_1_d0_local = bitcast_ln194_63_fu_1547_p1;
    end else begin
        weights3_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            weights3_1_d1_local = bitcast_ln194_70_fu_1720_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            weights3_1_d1_local = bitcast_ln194_68_fu_1685_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            weights3_1_d1_local = bitcast_ln194_66_fu_1646_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            weights3_1_d1_local = bitcast_ln194_64_fu_1612_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            weights3_1_d1_local = bitcast_ln194_61_fu_1577_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            weights3_1_d1_local = bitcast_ln194_60_fu_1542_p1;
        end else begin
            weights3_1_d1_local = 'bx;
        end
    end else begin
        weights3_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        weights3_1_we0_local = 1'b1;
    end else begin
        weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        weights3_1_we1_local = 1'b1;
    end else begin
        weights3_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_2_address0_local = weights3_2_addr_22_reg_2175_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_2_address0_local = weights3_2_addr_20_reg_2095_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_2_address0_local = weights3_2_addr_18_reg_2015_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_2_address0_local = weights3_2_addr_16_reg_1945_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_2_address0_local = weights3_2_addr_13_reg_1880_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_2_address0_local = weights3_2_addr_14_reg_1845_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_2_address0_local = zext_ln194_16_fu_1349_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_2_address0_local = add_ln194_10_cast_fu_1206_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_2_address0_local = zext_ln194_11_fu_1133_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_2_address0_local = zext_ln194_8_fu_1024_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_2_address0_local = zext_ln194_4_fu_896_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_2_address0_local = or_ln194_cast_fu_793_p1;
    end else begin
        weights3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_2_address1_local = weights3_2_addr_21_reg_2155_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_2_address1_local = weights3_2_addr_19_reg_2075_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_2_address1_local = weights3_2_addr_17_reg_1995_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_2_address1_local = weights3_2_addr_15_reg_1925_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_2_address1_local = weights3_2_addr_12_reg_1860_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_2_address1_local = weights3_2_addr_reg_1824_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_2_address1_local = zext_ln194_15_fu_1308_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_2_address1_local = zext_ln194_12_fu_1194_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_2_address1_local = add_ln194_6_cast_fu_1051_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_2_address1_local = zext_ln194_7_fu_983_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_2_address1_local = zext_ln194_3_fu_855_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_2_address1_local = zext_ln194_fu_717_p1;
    end else begin
        weights3_2_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_2_ce0_local = 1'b1;
    end else begin
        weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_2_ce1_local = 1'b1;
    end else begin
        weights3_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_2_d0_local = bitcast_ln194_83_fu_1753_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_2_d0_local = bitcast_ln194_81_fu_1700_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_2_d0_local = bitcast_ln194_79_fu_1661_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_2_d0_local = bitcast_ln194_77_fu_1624_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_2_d0_local = bitcast_ln194_74_fu_1591_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_2_d0_local = bitcast_ln194_75_fu_1557_p1;
    end else begin
        weights3_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            weights3_2_d1_local = bitcast_ln194_82_fu_1725_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            weights3_2_d1_local = bitcast_ln194_80_fu_1695_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            weights3_2_d1_local = bitcast_ln194_78_fu_1656_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            weights3_2_d1_local = bitcast_ln194_76_fu_1620_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            weights3_2_d1_local = bitcast_ln194_73_fu_1586_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            weights3_2_d1_local = bitcast_ln194_72_fu_1552_p1;
        end else begin
            weights3_2_d1_local = 'bx;
        end
    end else begin
        weights3_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        weights3_2_we0_local = 1'b1;
    end else begin
        weights3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        weights3_2_we1_local = 1'b1;
    end else begin
        weights3_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_3_address0_local = weights3_3_addr_22_reg_2180_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_3_address0_local = weights3_3_addr_21_reg_2160_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_3_address0_local = weights3_3_addr_19_reg_2080_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_3_address0_local = weights3_3_addr_17_reg_2000_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_3_address0_local = weights3_3_addr_15_reg_1930_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_3_address0_local = weights3_3_addr_13_reg_1885_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_3_address0_local = weights3_3_addr_reg_1829_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_3_address0_local = zext_ln194_15_fu_1308_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_3_address0_local = zext_ln194_12_fu_1194_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_3_address0_local = zext_ln194_9_fu_1073_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_3_address0_local = zext_ln194_7_fu_983_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_3_address0_local = zext_ln194_4_fu_896_p1;
    end else begin
        weights3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_3_address1_local = weights3_3_addr_20_reg_2140_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_3_address1_local = weights3_3_addr_18_reg_2020_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_3_address1_local = weights3_3_addr_16_reg_1950_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_3_address1_local = weights3_3_addr_14_reg_1910_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_3_address1_local = weights3_3_addr_12_reg_1865_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_3_address1_local = weights3_3_addr_22_reg_2180;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_3_address1_local = zext_ln194_13_fu_1248_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_3_address1_local = weights3_3_addr_18_reg_2020;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_3_address1_local = weights3_3_addr_16_reg_1950;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_3_address1_local = zext_ln194_5_fu_923_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_3_address1_local = zext_ln194_3_fu_855_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_3_address1_local = zext_ln194_1_fu_770_p1;
    end else begin
        weights3_3_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_3_ce0_local = 1'b1;
    end else begin
        weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_3_ce1_local = 1'b1;
    end else begin
        weights3_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_3_d0_local = bitcast_ln194_95_fu_1740_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_3_d0_local = bitcast_ln194_94_fu_1735_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_3_d0_local = bitcast_ln194_92_fu_1710_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_3_d0_local = bitcast_ln194_90_fu_1670_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_3_d0_local = bitcast_ln194_88_fu_1632_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_3_d0_local = bitcast_ln194_86_fu_1600_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_3_d0_local = bitcast_ln194_84_fu_1562_p1;
    end else begin
        weights3_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            weights3_3_d1_local = bitcast_ln194_93_fu_1730_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            weights3_3_d1_local = bitcast_ln194_91_fu_1705_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            weights3_3_d1_local = bitcast_ln194_89_fu_1666_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            weights3_3_d1_local = bitcast_ln194_87_fu_1628_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            weights3_3_d1_local = bitcast_ln194_85_fu_1595_p1;
        end else begin
            weights3_3_d1_local = 'bx;
        end
    end else begin
        weights3_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        weights3_3_we0_local = 1'b1;
    end else begin
        weights3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        weights3_3_we1_local = 1'b1;
    end else begin
        weights3_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to6 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln192_fu_1486_p2 = (i_4_reg_1772 + 7'd16);
assign add_ln194_10_cast_fu_1206_p1 = add_ln194_10_fu_1201_p2;
assign add_ln194_10_fu_1201_p2 = (or_ln5_reg_1813 + 6'd6);
assign add_ln194_11_fu_1253_p2 = (empty_reg_1786 + 8'd37);
assign add_ln194_12_fu_1273_p2 = (empty_reg_1786 + 8'd38);
assign add_ln194_13_fu_1314_p2 = (empty_reg_1786 + 8'd41);
assign add_ln194_1_fu_820_p2 = (empty_reg_1786 + 8'd2);
assign add_ln194_2_fu_861_p2 = (empty_reg_1786 + 8'd5);
assign add_ln194_3_fu_928_p2 = (empty_reg_1786 + 8'd13);
assign add_ln194_4_fu_948_p2 = (empty_reg_1786 + 8'd14);
assign add_ln194_5_fu_989_p2 = (empty_reg_1786 + 8'd17);
assign add_ln194_6_cast_fu_1051_p1 = add_ln194_6_fu_1046_p2;
assign add_ln194_6_fu_1046_p2 = (or_ln5_reg_1813 + 6'd3);
assign add_ln194_7_fu_1078_p2 = (empty_reg_1786 + 8'd25);
assign add_ln194_8_fu_1098_p2 = (empty_reg_1786 + 8'd26);
assign add_ln194_9_fu_1159_p2 = (empty_reg_1786 + 8'd29);
assign add_ln194_fu_800_p2 = (empty_reg_1786 + 8'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
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
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage11;
assign ap_ready = ap_ready_sig;
assign bitcast_ln194_10_fu_1361_p1 = reg_605;
assign bitcast_ln194_11_fu_1366_p1 = reg_610;
assign bitcast_ln194_12_fu_1144_p1 = reg_581;
assign bitcast_ln194_13_fu_1149_p1 = reg_585;
assign bitcast_ln194_14_fu_1154_p1 = reg_590;
assign bitcast_ln194_15_fu_1371_p1 = reg_615;
assign bitcast_ln194_16_fu_1376_p1 = reg_565;
assign bitcast_ln194_17_fu_1381_p1 = reg_585;
assign bitcast_ln194_18_fu_1386_p1 = reg_590;
assign bitcast_ln194_19_fu_1391_p1 = reg_620;
assign bitcast_ln194_1_fu_1031_p1 = reg_569;
assign bitcast_ln194_20_fu_1396_p1 = reg_581;
assign bitcast_ln194_21_fu_1401_p1 = weights3_1_load_16_reg_1975;
assign bitcast_ln194_22_fu_1405_p1 = weights3_2_load_16_reg_1980;
assign bitcast_ln194_23_fu_1409_p1 = reg_577;
assign bitcast_ln194_24_fu_1414_p1 = reg_595;
assign bitcast_ln194_25_fu_1419_p1 = reg_569;
assign bitcast_ln194_26_fu_1424_p1 = reg_573;
assign bitcast_ln194_27_fu_1429_p1 = weights3_3_load_17_reg_2045;
assign bitcast_ln194_28_fu_1433_p1 = weights3_0_load_18_reg_2050;
assign bitcast_ln194_29_fu_1437_p1 = weights3_1_load_18_reg_2055;
assign bitcast_ln194_2_fu_1036_p1 = reg_573;
assign bitcast_ln194_30_fu_1441_p1 = weights3_2_load_18_reg_2060;
assign bitcast_ln194_31_fu_1445_p1 = reg_610;
assign bitcast_ln194_32_fu_1450_p1 = weights3_0_load_19_reg_2120;
assign bitcast_ln194_33_fu_1454_p1 = reg_600;
assign bitcast_ln194_34_fu_1459_p1 = reg_605;
assign bitcast_ln194_35_fu_1464_p1 = reg_615;
assign bitcast_ln194_36_fu_1469_p1 = weights3_0_load_20_reg_2125;
assign bitcast_ln194_37_fu_1473_p1 = weights3_1_load_20_reg_2130;
assign bitcast_ln194_38_fu_1477_p1 = weights3_2_load_20_reg_2135;
assign bitcast_ln194_39_fu_1481_p1 = reg_620;
assign bitcast_ln194_3_fu_1041_p1 = reg_577;
assign bitcast_ln194_40_fu_1496_p1 = reg_565;
assign bitcast_ln194_41_fu_1501_p1 = reg_585;
assign bitcast_ln194_42_fu_1506_p1 = reg_590;
assign bitcast_ln194_43_fu_1511_p1 = weights3_3_load_21_reg_2206;
assign bitcast_ln194_44_fu_1515_p1 = weights3_0_load_22_reg_2211;
assign bitcast_ln194_45_fu_1519_p1 = weights3_1_load_22_reg_2216;
assign bitcast_ln194_46_fu_1523_p1 = weights3_2_load_22_reg_2221;
assign bitcast_ln194_47_fu_1527_p1 = reg_577;
assign bitcast_ln194_48_fu_1532_p1 = reg_625;
assign bitcast_ln194_49_fu_1567_p1 = reg_641;
assign bitcast_ln194_4_fu_1139_p1 = reg_565;
assign bitcast_ln194_50_fu_1572_p1 = reg_669;
assign bitcast_ln194_51_fu_1537_p1 = reg_645;
assign bitcast_ln194_52_fu_1604_p1 = div213_5_1_reg_2386;
assign bitcast_ln194_53_fu_1608_p1 = div213_6_2_reg_2406;
assign bitcast_ln194_54_fu_1636_p1 = reg_625;
assign bitcast_ln194_55_fu_1641_p1 = reg_641;
assign bitcast_ln194_56_fu_1675_p1 = reg_657;
assign bitcast_ln194_57_fu_1680_p1 = reg_625;
assign bitcast_ln194_58_fu_1715_p1 = reg_625;
assign bitcast_ln194_59_fu_1745_p1 = div213_14_2_reg_2426;
assign bitcast_ln194_5_fu_1213_p1 = reg_569;
assign bitcast_ln194_60_fu_1542_p1 = reg_629;
assign bitcast_ln194_61_fu_1577_p1 = reg_657;
assign bitcast_ln194_62_fu_1582_p1 = div213_3_reg_2366;
assign bitcast_ln194_63_fu_1547_p1 = reg_649;
assign bitcast_ln194_64_fu_1612_p1 = div213_5_2_reg_2391;
assign bitcast_ln194_65_fu_1616_p1 = div213_7_reg_2411;
assign bitcast_ln194_66_fu_1646_p1 = reg_629;
assign bitcast_ln194_67_fu_1651_p1 = reg_645;
assign bitcast_ln194_68_fu_1685_p1 = reg_661;
assign bitcast_ln194_69_fu_1690_p1 = reg_629;
assign bitcast_ln194_6_fu_1218_p1 = reg_573;
assign bitcast_ln194_70_fu_1720_p1 = reg_629;
assign bitcast_ln194_71_fu_1749_p1 = div213_15_reg_2431;
assign bitcast_ln194_72_fu_1552_p1 = reg_633;
assign bitcast_ln194_73_fu_1586_p1 = reg_661;
assign bitcast_ln194_74_fu_1591_p1 = div213_3_1_reg_2371;
assign bitcast_ln194_75_fu_1557_p1 = reg_653;
assign bitcast_ln194_76_fu_1620_p1 = div213_6_reg_2396;
assign bitcast_ln194_77_fu_1624_p1 = div213_7_1_reg_2416;
assign bitcast_ln194_78_fu_1656_p1 = reg_633;
assign bitcast_ln194_79_fu_1661_p1 = reg_649;
assign bitcast_ln194_7_fu_1223_p1 = reg_577;
assign bitcast_ln194_80_fu_1695_p1 = reg_665;
assign bitcast_ln194_81_fu_1700_p1 = reg_633;
assign bitcast_ln194_82_fu_1725_p1 = reg_633;
assign bitcast_ln194_83_fu_1753_p1 = div213_15_1_reg_2436;
assign bitcast_ln194_84_fu_1562_p1 = reg_637;
assign bitcast_ln194_85_fu_1595_p1 = reg_665;
assign bitcast_ln194_86_fu_1600_p1 = div213_3_2_reg_2376;
assign bitcast_ln194_87_fu_1628_p1 = div213_5_reg_2381;
assign bitcast_ln194_88_fu_1632_p1 = div213_6_1_reg_2401;
assign bitcast_ln194_89_fu_1666_p1 = div213_7_2_reg_2421;
assign bitcast_ln194_8_fu_1228_p1 = reg_595;
assign bitcast_ln194_90_fu_1670_p1 = reg_637;
assign bitcast_ln194_91_fu_1705_p1 = reg_653;
assign bitcast_ln194_92_fu_1710_p1 = reg_669;
assign bitcast_ln194_93_fu_1730_p1 = reg_637;
assign bitcast_ln194_94_fu_1735_p1 = reg_653;
assign bitcast_ln194_95_fu_1740_p1 = reg_637;
assign bitcast_ln194_9_fu_1356_p1 = reg_600;
assign bitcast_ln194_fu_903_p1 = reg_565;
assign empty_51_fu_840_p2 = (empty_reg_1786 + 8'd3);
assign empty_52_fu_881_p2 = (empty_reg_1786 + 8'd6);
assign empty_53_fu_908_p2 = (empty_reg_1786 + 8'd12);
assign empty_54_fu_968_p2 = (empty_reg_1786 + 8'd15);
assign empty_55_fu_1009_p2 = (empty_reg_1786 + 8'd18);
assign empty_56_fu_1058_p2 = (empty_reg_1786 + 8'd24);
assign empty_57_fu_1118_p2 = (empty_reg_1786 + 8'd27);
assign empty_58_fu_1179_p2 = (empty_reg_1786 + 8'd30);
assign empty_59_fu_1233_p2 = (empty_reg_1786 + 8'd36);
assign empty_60_fu_1293_p2 = (empty_reg_1786 + 8'd39);
assign empty_61_fu_1334_p2 = (empty_reg_1786 + 8'd42);
assign empty_fu_754_p2 = (p_shl_fu_746_p3 - or_ln192_cast_fu_742_p1);
assign lshr_ln194_10_fu_994_p4 = {{add_ln194_5_fu_989_p2[7:2]}};
assign lshr_ln194_11_cast_fu_1004_p1 = lshr_ln194_10_fu_994_p4;
assign lshr_ln194_11_fu_1014_p4 = {{empty_55_fu_1009_p2[7:2]}};
assign lshr_ln194_12_fu_1063_p4 = {{empty_56_fu_1058_p2[7:2]}};
assign lshr_ln194_13_fu_1083_p4 = {{add_ln194_7_fu_1078_p2[7:2]}};
assign lshr_ln194_14_fu_1103_p4 = {{add_ln194_8_fu_1098_p2[7:2]}};
assign lshr_ln194_15_cast_fu_1113_p1 = lshr_ln194_14_fu_1103_p4;
assign lshr_ln194_15_fu_1123_p4 = {{empty_57_fu_1118_p2[7:2]}};
assign lshr_ln194_16_fu_1164_p4 = {{add_ln194_9_fu_1159_p2[7:2]}};
assign lshr_ln194_17_cast_fu_1174_p1 = lshr_ln194_16_fu_1164_p4;
assign lshr_ln194_17_fu_1184_p4 = {{empty_58_fu_1179_p2[7:2]}};
assign lshr_ln194_18_fu_1238_p4 = {{empty_59_fu_1233_p2[7:2]}};
assign lshr_ln194_19_fu_1258_p4 = {{add_ln194_11_fu_1253_p2[7:2]}};
assign lshr_ln194_1_fu_760_p4 = {{empty_fu_754_p2[7:2]}};
assign lshr_ln194_20_fu_1278_p4 = {{add_ln194_12_fu_1273_p2[7:2]}};
assign lshr_ln194_21_cast_fu_1288_p1 = lshr_ln194_20_fu_1278_p4;
assign lshr_ln194_21_fu_1298_p4 = {{empty_60_fu_1293_p2[7:2]}};
assign lshr_ln194_22_fu_1319_p4 = {{add_ln194_13_fu_1314_p2[7:2]}};
assign lshr_ln194_23_cast_fu_1329_p1 = lshr_ln194_22_fu_1319_p4;
assign lshr_ln194_23_fu_1339_p4 = {{empty_61_fu_1334_p2[7:2]}};
assign lshr_ln194_2_fu_805_p4 = {{add_ln194_fu_800_p2[7:2]}};
assign lshr_ln194_3_cast_fu_835_p1 = lshr_ln194_3_fu_825_p4;
assign lshr_ln194_3_fu_825_p4 = {{add_ln194_1_fu_820_p2[7:2]}};
assign lshr_ln194_4_fu_845_p4 = {{empty_51_fu_840_p2[7:2]}};
assign lshr_ln194_5_cast_fu_876_p1 = lshr_ln194_5_fu_866_p4;
assign lshr_ln194_5_fu_866_p4 = {{add_ln194_2_fu_861_p2[7:2]}};
assign lshr_ln194_6_fu_886_p4 = {{empty_52_fu_881_p2[7:2]}};
assign lshr_ln194_7_fu_913_p4 = {{empty_53_fu_908_p2[7:2]}};
assign lshr_ln194_8_fu_933_p4 = {{add_ln194_3_fu_928_p2[7:2]}};
assign lshr_ln194_9_cast_fu_963_p1 = lshr_ln194_9_fu_953_p4;
assign lshr_ln194_9_fu_953_p4 = {{add_ln194_4_fu_948_p2[7:2]}};
assign lshr_ln194_s_fu_973_p4 = {{empty_54_fu_968_p2[7:2]}};
assign lshr_ln7_fu_689_p4 = {{ap_sig_allocacmp_i_4[5:2]}};
assign or_ln192_cast_fu_742_p1 = or_ln4_fu_734_p3;
assign or_ln194_cast_fu_793_p1 = or_ln5_fu_785_p3;
assign or_ln4_fu_734_p3 = {{tmp_s_fu_724_p4}, {1'd1}};
assign or_ln5_fu_785_p3 = {{tmp_5_fu_775_p4}, {2'd3}};
assign p_shl1_fu_703_p3 = {{lshr_ln7_fu_689_p4}, {2'd0}};
assign p_shl_fu_746_p3 = {{tmp_s_fu_724_p4}, {3'd4}};
assign sub_ln194_fu_711_p2 = (p_shl1_fu_703_p3 - zext_ln194_17_fu_699_p1);
assign tmp_5_fu_775_p4 = {{sub_ln194_fu_711_p2[5:2]}};
assign tmp_s_fu_724_p4 = {{ap_sig_allocacmp_i_4[5:1]}};
assign weights3_0_address0 = weights3_0_address0_local;
assign weights3_0_address1 = weights3_0_address1_local;
assign weights3_0_ce0 = weights3_0_ce0_local;
assign weights3_0_ce1 = weights3_0_ce1_local;
assign weights3_0_d0 = weights3_0_d0_local;
assign weights3_0_d1 = weights3_0_d1_local;
assign weights3_0_we0 = weights3_0_we0_local;
assign weights3_0_we1 = weights3_0_we1_local;
assign weights3_1_address0 = weights3_1_address0_local;
assign weights3_1_address1 = weights3_1_address1_local;
assign weights3_1_ce0 = weights3_1_ce0_local;
assign weights3_1_ce1 = weights3_1_ce1_local;
assign weights3_1_d0 = weights3_1_d0_local;
assign weights3_1_d1 = weights3_1_d1_local;
assign weights3_1_we0 = weights3_1_we0_local;
assign weights3_1_we1 = weights3_1_we1_local;
assign weights3_2_address0 = weights3_2_address0_local;
assign weights3_2_address1 = weights3_2_address1_local;
assign weights3_2_ce0 = weights3_2_ce0_local;
assign weights3_2_ce1 = weights3_2_ce1_local;
assign weights3_2_d0 = weights3_2_d0_local;
assign weights3_2_d1 = weights3_2_d1_local;
assign weights3_2_we0 = weights3_2_we0_local;
assign weights3_2_we1 = weights3_2_we1_local;
assign weights3_3_address0 = weights3_3_address0_local;
assign weights3_3_address1 = weights3_3_address1_local;
assign weights3_3_ce0 = weights3_3_ce0_local;
assign weights3_3_ce1 = weights3_3_ce1_local;
assign weights3_3_d0 = weights3_3_d0_local;
assign weights3_3_d1 = weights3_3_d1_local;
assign weights3_3_we0 = weights3_3_we0_local;
assign weights3_3_we1 = weights3_3_we1_local;
assign zext_ln194_10_fu_1093_p1 = lshr_ln194_13_fu_1083_p4;
assign zext_ln194_11_fu_1133_p1 = lshr_ln194_15_fu_1123_p4;
assign zext_ln194_12_fu_1194_p1 = lshr_ln194_17_fu_1184_p4;
assign zext_ln194_13_fu_1248_p1 = lshr_ln194_18_fu_1238_p4;
assign zext_ln194_14_fu_1268_p1 = lshr_ln194_19_fu_1258_p4;
assign zext_ln194_15_fu_1308_p1 = lshr_ln194_21_fu_1298_p4;
assign zext_ln194_16_fu_1349_p1 = lshr_ln194_23_fu_1339_p4;
assign zext_ln194_17_fu_699_p1 = lshr_ln7_fu_689_p4;
assign zext_ln194_1_fu_770_p1 = lshr_ln194_1_fu_760_p4;
assign zext_ln194_2_fu_815_p1 = lshr_ln194_2_fu_805_p4;
assign zext_ln194_3_fu_855_p1 = lshr_ln194_4_fu_845_p4;
assign zext_ln194_4_fu_896_p1 = lshr_ln194_6_fu_886_p4;
assign zext_ln194_5_fu_923_p1 = lshr_ln194_7_fu_913_p4;
assign zext_ln194_6_fu_943_p1 = lshr_ln194_8_fu_933_p4;
assign zext_ln194_7_fu_983_p1 = lshr_ln194_s_fu_973_p4;
assign zext_ln194_8_fu_1024_p1 = lshr_ln194_11_fu_1014_p4;
assign zext_ln194_9_fu_1073_p1 = lshr_ln194_12_fu_1063_p4;
assign zext_ln194_fu_717_p1 = sub_ln194_fu_711_p2;
always @ (posedge ap_clk) begin
    empty_reg_1786[0] <= 1'b1;
    or_ln5_reg_1813[1:0] <= 2'b11;
    weights3_0_addr_14_reg_1835[1:0] <= 2'b11;
    weights3_0_addr_14_reg_1835_pp0_iter1_reg[1:0] <= 2'b11;
    weights3_0_addr_14_reg_1835_pp0_iter2_reg[1:0] <= 2'b11;
    weights3_0_addr_14_reg_1835_pp0_iter3_reg[1:0] <= 2'b11;
    weights3_0_addr_14_reg_1835_pp0_iter4_reg[1:0] <= 2'b11;
    weights3_0_addr_14_reg_1835_pp0_iter5_reg[1:0] <= 2'b11;
    weights3_1_addr_14_reg_1840[1:0] <= 2'b11;
    weights3_1_addr_14_reg_1840_pp0_iter1_reg[1:0] <= 2'b11;
    weights3_1_addr_14_reg_1840_pp0_iter2_reg[1:0] <= 2'b11;
    weights3_1_addr_14_reg_1840_pp0_iter3_reg[1:0] <= 2'b11;
    weights3_1_addr_14_reg_1840_pp0_iter4_reg[1:0] <= 2'b11;
    weights3_1_addr_14_reg_1840_pp0_iter5_reg[1:0] <= 2'b11;
    weights3_2_addr_14_reg_1845[1:0] <= 2'b11;
    weights3_2_addr_14_reg_1845_pp0_iter1_reg[1:0] <= 2'b11;
    weights3_2_addr_14_reg_1845_pp0_iter2_reg[1:0] <= 2'b11;
    weights3_2_addr_14_reg_1845_pp0_iter3_reg[1:0] <= 2'b11;
    weights3_2_addr_14_reg_1845_pp0_iter4_reg[1:0] <= 2'b11;
    weights3_2_addr_14_reg_1845_pp0_iter5_reg[1:0] <= 2'b11;
    weights3_0_addr_17_reg_1985[1:0] <= 2'b10;
    weights3_0_addr_17_reg_1985_pp0_iter1_reg[1:0] <= 2'b10;
    weights3_0_addr_17_reg_1985_pp0_iter2_reg[1:0] <= 2'b10;
    weights3_0_addr_17_reg_1985_pp0_iter3_reg[1:0] <= 2'b10;
    weights3_0_addr_17_reg_1985_pp0_iter4_reg[1:0] <= 2'b10;
    weights3_0_addr_17_reg_1985_pp0_iter5_reg[1:0] <= 2'b10;
    weights3_1_addr_17_reg_1990[1:0] <= 2'b10;
    weights3_1_addr_17_reg_1990_pp0_iter1_reg[1:0] <= 2'b10;
    weights3_1_addr_17_reg_1990_pp0_iter2_reg[1:0] <= 2'b10;
    weights3_1_addr_17_reg_1990_pp0_iter3_reg[1:0] <= 2'b10;
    weights3_1_addr_17_reg_1990_pp0_iter4_reg[1:0] <= 2'b10;
    weights3_1_addr_17_reg_1990_pp0_iter5_reg[1:0] <= 2'b10;
    weights3_2_addr_17_reg_1995[1:0] <= 2'b10;
    weights3_2_addr_17_reg_1995_pp0_iter1_reg[1:0] <= 2'b10;
    weights3_2_addr_17_reg_1995_pp0_iter2_reg[1:0] <= 2'b10;
    weights3_2_addr_17_reg_1995_pp0_iter3_reg[1:0] <= 2'b10;
    weights3_2_addr_17_reg_1995_pp0_iter4_reg[1:0] <= 2'b10;
    weights3_2_addr_17_reg_1995_pp0_iter5_reg[1:0] <= 2'b10;
    weights3_0_addr_20_reg_2085[1:0] <= 2'b01;
    weights3_0_addr_20_reg_2085_pp0_iter1_reg[1:0] <= 2'b01;
    weights3_0_addr_20_reg_2085_pp0_iter2_reg[1:0] <= 2'b01;
    weights3_0_addr_20_reg_2085_pp0_iter3_reg[1:0] <= 2'b01;
    weights3_0_addr_20_reg_2085_pp0_iter4_reg[1:0] <= 2'b01;
    weights3_0_addr_20_reg_2085_pp0_iter5_reg[1:0] <= 2'b01;
    weights3_1_addr_20_reg_2090[1:0] <= 2'b01;
    weights3_1_addr_20_reg_2090_pp0_iter1_reg[1:0] <= 2'b01;
    weights3_1_addr_20_reg_2090_pp0_iter2_reg[1:0] <= 2'b01;
    weights3_1_addr_20_reg_2090_pp0_iter3_reg[1:0] <= 2'b01;
    weights3_1_addr_20_reg_2090_pp0_iter4_reg[1:0] <= 2'b01;
    weights3_1_addr_20_reg_2090_pp0_iter5_reg[1:0] <= 2'b01;
    weights3_2_addr_20_reg_2095[1:0] <= 2'b01;
    weights3_2_addr_20_reg_2095_pp0_iter1_reg[1:0] <= 2'b01;
    weights3_2_addr_20_reg_2095_pp0_iter2_reg[1:0] <= 2'b01;
    weights3_2_addr_20_reg_2095_pp0_iter3_reg[1:0] <= 2'b01;
    weights3_2_addr_20_reg_2095_pp0_iter4_reg[1:0] <= 2'b01;
    weights3_2_addr_20_reg_2095_pp0_iter5_reg[1:0] <= 2'b01;
end
endmodule 