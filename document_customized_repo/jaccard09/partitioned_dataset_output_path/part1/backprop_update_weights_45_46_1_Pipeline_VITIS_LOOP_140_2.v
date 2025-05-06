
module backprop_update_weights_45_46_1_Pipeline_VITIS_LOOP_140_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights1_3_address0,weights1_3_ce0,weights1_3_we0,weights1_3_d0,weights1_3_q0,weights1_3_address1,weights1_3_ce1,weights1_3_we1,weights1_3_d1,weights1_3_q1,weights1_2_address0,weights1_2_ce0,weights1_2_we0,weights1_2_d0,weights1_2_q0,weights1_2_address1,weights1_2_ce1,weights1_2_we1,weights1_2_d1,weights1_2_q1,weights1_1_address0,weights1_1_ce0,weights1_1_we0,weights1_1_d0,weights1_1_q0,weights1_1_address1,weights1_1_ce1,weights1_1_we1,weights1_1_d1,weights1_1_q1,weights1_0_address0,weights1_0_ce0,weights1_0_we0,weights1_0_d0,weights1_0_q0,weights1_0_address1,weights1_0_ce1,weights1_0_we1,weights1_0_d1,weights1_0_q1,norm,grp_fu_6290_p_din0,grp_fu_6290_p_din1,grp_fu_6290_p_dout0,grp_fu_6290_p_ce,grp_fu_6294_p_din0,grp_fu_6294_p_din1,grp_fu_6294_p_dout0,grp_fu_6294_p_ce,grp_fu_6298_p_din0,grp_fu_6298_p_din1,grp_fu_6298_p_dout0,grp_fu_6298_p_ce,grp_fu_6302_p_din0,grp_fu_6302_p_din1,grp_fu_6302_p_dout0,grp_fu_6302_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 16'd1;
parameter    ap_ST_fsm_pp0_stage1 = 16'd2;
parameter    ap_ST_fsm_pp0_stage2 = 16'd4;
parameter    ap_ST_fsm_pp0_stage3 = 16'd8;
parameter    ap_ST_fsm_pp0_stage4 = 16'd16;
parameter    ap_ST_fsm_pp0_stage5 = 16'd32;
parameter    ap_ST_fsm_pp0_stage6 = 16'd64;
parameter    ap_ST_fsm_pp0_stage7 = 16'd128;
parameter    ap_ST_fsm_pp0_stage8 = 16'd256;
parameter    ap_ST_fsm_pp0_stage9 = 16'd512;
parameter    ap_ST_fsm_pp0_stage10 = 16'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 16'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 16'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 16'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 16'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 16'd32768;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] weights1_3_address0;
output   weights1_3_ce0;
output   weights1_3_we0;
output  [63:0] weights1_3_d0;
input  [63:0] weights1_3_q0;
output  [7:0] weights1_3_address1;
output   weights1_3_ce1;
output   weights1_3_we1;
output  [63:0] weights1_3_d1;
input  [63:0] weights1_3_q1;
output  [7:0] weights1_2_address0;
output   weights1_2_ce0;
output   weights1_2_we0;
output  [63:0] weights1_2_d0;
input  [63:0] weights1_2_q0;
output  [7:0] weights1_2_address1;
output   weights1_2_ce1;
output   weights1_2_we1;
output  [63:0] weights1_2_d1;
input  [63:0] weights1_2_q1;
output  [7:0] weights1_1_address0;
output   weights1_1_ce0;
output   weights1_1_we0;
output  [63:0] weights1_1_d0;
input  [63:0] weights1_1_q0;
output  [7:0] weights1_1_address1;
output   weights1_1_ce1;
output   weights1_1_we1;
output  [63:0] weights1_1_d1;
input  [63:0] weights1_1_q1;
output  [7:0] weights1_0_address0;
output   weights1_0_ce0;
output   weights1_0_we0;
output  [63:0] weights1_0_d0;
input  [63:0] weights1_0_q0;
output  [7:0] weights1_0_address1;
output   weights1_0_ce1;
output   weights1_0_we1;
output  [63:0] weights1_0_d1;
input  [63:0] weights1_0_q1;
input  [63:0] norm;
output  [63:0] grp_fu_6290_p_din0;
output  [63:0] grp_fu_6290_p_din1;
input  [63:0] grp_fu_6290_p_dout0;
output   grp_fu_6290_p_ce;
output  [63:0] grp_fu_6294_p_din0;
output  [63:0] grp_fu_6294_p_din1;
input  [63:0] grp_fu_6294_p_dout0;
output   grp_fu_6294_p_ce;
output  [63:0] grp_fu_6298_p_din0;
output  [63:0] grp_fu_6298_p_din1;
input  [63:0] grp_fu_6298_p_dout0;
output   grp_fu_6298_p_ce;
output  [63:0] grp_fu_6302_p_din0;
output  [63:0] grp_fu_6302_p_din1;
input  [63:0] grp_fu_6302_p_dout0;
output   grp_fu_6302_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [0:0] icmp_ln140_reg_1684;
reg    ap_condition_exit_pp0_iter0_stage15;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_644;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] reg_648;
reg   [63:0] reg_652;
reg   [63:0] reg_656;
reg   [63:0] reg_660;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] reg_665;
reg   [63:0] reg_670;
reg   [63:0] reg_675;
reg   [63:0] reg_680;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] reg_685;
reg   [63:0] reg_690;
reg   [63:0] reg_695;
reg   [63:0] reg_700;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] reg_705;
reg   [63:0] reg_710;
reg   [63:0] reg_715;
reg   [63:0] reg_720;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] reg_724;
reg   [63:0] reg_728;
reg   [63:0] reg_732;
reg   [63:0] reg_736;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] reg_740;
reg   [63:0] reg_744;
reg   [63:0] reg_748;
reg   [63:0] reg_752;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] reg_756;
reg   [63:0] reg_760;
reg   [63:0] reg_764;
reg   [63:0] reg_768;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] reg_772;
reg   [63:0] reg_776;
reg   [63:0] reg_780;
reg   [3:0] i_reg_1666;
wire   [0:0] icmp_ln140_fu_792_p2;
reg   [7:0] weights1_0_addr_reg_1688;
reg   [7:0] weights1_0_addr_reg_1688_pp0_iter1_reg;
reg   [7:0] weights1_0_addr_reg_1688_pp0_iter2_reg;
reg   [7:0] weights1_0_addr_reg_1688_pp0_iter3_reg;
reg   [7:0] weights1_1_addr_reg_1693;
reg   [7:0] weights1_1_addr_reg_1693_pp0_iter1_reg;
reg   [7:0] weights1_1_addr_reg_1693_pp0_iter2_reg;
reg   [7:0] weights1_1_addr_reg_1693_pp0_iter3_reg;
reg   [7:0] weights1_2_addr_reg_1698;
reg   [7:0] weights1_2_addr_reg_1698_pp0_iter1_reg;
reg   [7:0] weights1_2_addr_reg_1698_pp0_iter2_reg;
reg   [7:0] weights1_2_addr_reg_1698_pp0_iter3_reg;
reg   [7:0] weights1_3_addr_reg_1703;
reg   [7:0] weights1_3_addr_reg_1703_pp0_iter1_reg;
reg   [7:0] weights1_3_addr_reg_1703_pp0_iter2_reg;
reg   [7:0] weights1_3_addr_reg_1703_pp0_iter3_reg;
reg   [7:0] weights1_0_addr_1_reg_1708;
reg   [7:0] weights1_0_addr_1_reg_1708_pp0_iter1_reg;
reg   [7:0] weights1_0_addr_1_reg_1708_pp0_iter2_reg;
reg   [7:0] weights1_0_addr_1_reg_1708_pp0_iter3_reg;
reg   [7:0] weights1_1_addr_1_reg_1714;
reg   [7:0] weights1_1_addr_1_reg_1714_pp0_iter1_reg;
reg   [7:0] weights1_1_addr_1_reg_1714_pp0_iter2_reg;
reg   [7:0] weights1_1_addr_1_reg_1714_pp0_iter3_reg;
reg   [7:0] weights1_2_addr_1_reg_1720;
reg   [7:0] weights1_2_addr_1_reg_1720_pp0_iter1_reg;
reg   [7:0] weights1_2_addr_1_reg_1720_pp0_iter2_reg;
reg   [7:0] weights1_2_addr_1_reg_1720_pp0_iter3_reg;
reg   [7:0] weights1_3_addr_1_reg_1726;
reg   [7:0] weights1_3_addr_1_reg_1726_pp0_iter1_reg;
reg   [7:0] weights1_3_addr_1_reg_1726_pp0_iter2_reg;
reg   [7:0] weights1_3_addr_1_reg_1726_pp0_iter3_reg;
reg   [7:0] weights1_0_addr_2_reg_1732;
reg   [7:0] weights1_0_addr_2_reg_1732_pp0_iter1_reg;
reg   [7:0] weights1_0_addr_2_reg_1732_pp0_iter2_reg;
reg   [7:0] weights1_0_addr_2_reg_1732_pp0_iter3_reg;
reg   [7:0] weights1_1_addr_2_reg_1737;
reg   [7:0] weights1_1_addr_2_reg_1737_pp0_iter1_reg;
reg   [7:0] weights1_1_addr_2_reg_1737_pp0_iter2_reg;
reg   [7:0] weights1_1_addr_2_reg_1737_pp0_iter3_reg;
reg   [7:0] weights1_2_addr_2_reg_1742;
reg   [7:0] weights1_2_addr_2_reg_1742_pp0_iter1_reg;
reg   [7:0] weights1_2_addr_2_reg_1742_pp0_iter2_reg;
reg   [7:0] weights1_2_addr_2_reg_1742_pp0_iter3_reg;
reg   [7:0] weights1_3_addr_2_reg_1747;
reg   [7:0] weights1_3_addr_2_reg_1747_pp0_iter1_reg;
reg   [7:0] weights1_3_addr_2_reg_1747_pp0_iter2_reg;
reg   [7:0] weights1_3_addr_2_reg_1747_pp0_iter3_reg;
reg   [7:0] weights1_0_addr_3_reg_1752;
reg   [7:0] weights1_0_addr_3_reg_1752_pp0_iter1_reg;
reg   [7:0] weights1_0_addr_3_reg_1752_pp0_iter2_reg;
reg   [7:0] weights1_0_addr_3_reg_1752_pp0_iter3_reg;
reg   [7:0] weights1_0_addr_3_reg_1752_pp0_iter4_reg;
reg   [7:0] weights1_1_addr_3_reg_1758;
reg   [7:0] weights1_1_addr_3_reg_1758_pp0_iter1_reg;
reg   [7:0] weights1_1_addr_3_reg_1758_pp0_iter2_reg;
reg   [7:0] weights1_1_addr_3_reg_1758_pp0_iter3_reg;
reg   [7:0] weights1_1_addr_3_reg_1758_pp0_iter4_reg;
reg   [7:0] weights1_2_addr_3_reg_1764;
reg   [7:0] weights1_2_addr_3_reg_1764_pp0_iter1_reg;
reg   [7:0] weights1_2_addr_3_reg_1764_pp0_iter2_reg;
reg   [7:0] weights1_2_addr_3_reg_1764_pp0_iter3_reg;
reg   [7:0] weights1_2_addr_3_reg_1764_pp0_iter4_reg;
reg   [7:0] weights1_3_addr_3_reg_1770;
reg   [7:0] weights1_3_addr_3_reg_1770_pp0_iter1_reg;
reg   [7:0] weights1_3_addr_3_reg_1770_pp0_iter2_reg;
reg   [7:0] weights1_3_addr_3_reg_1770_pp0_iter3_reg;
reg   [7:0] weights1_3_addr_3_reg_1770_pp0_iter4_reg;
wire   [63:0] bitcast_ln142_fu_871_p1;
wire   [63:0] bitcast_ln142_2_fu_876_p1;
wire   [63:0] bitcast_ln142_4_fu_881_p1;
wire   [63:0] bitcast_ln142_6_fu_886_p1;
reg   [7:0] weights1_0_addr_4_reg_1796;
reg   [7:0] weights1_0_addr_4_reg_1796_pp0_iter1_reg;
reg   [7:0] weights1_0_addr_4_reg_1796_pp0_iter2_reg;
reg   [7:0] weights1_0_addr_4_reg_1796_pp0_iter3_reg;
reg   [7:0] weights1_0_addr_4_reg_1796_pp0_iter4_reg;
reg   [7:0] weights1_1_addr_4_reg_1802;
reg   [7:0] weights1_1_addr_4_reg_1802_pp0_iter1_reg;
reg   [7:0] weights1_1_addr_4_reg_1802_pp0_iter2_reg;
reg   [7:0] weights1_1_addr_4_reg_1802_pp0_iter3_reg;
reg   [7:0] weights1_1_addr_4_reg_1802_pp0_iter4_reg;
reg   [7:0] weights1_2_addr_4_reg_1808;
reg   [7:0] weights1_2_addr_4_reg_1808_pp0_iter1_reg;
reg   [7:0] weights1_2_addr_4_reg_1808_pp0_iter2_reg;
reg   [7:0] weights1_2_addr_4_reg_1808_pp0_iter3_reg;
reg   [7:0] weights1_2_addr_4_reg_1808_pp0_iter4_reg;
reg   [7:0] weights1_3_addr_4_reg_1814;
reg   [7:0] weights1_3_addr_4_reg_1814_pp0_iter1_reg;
reg   [7:0] weights1_3_addr_4_reg_1814_pp0_iter2_reg;
reg   [7:0] weights1_3_addr_4_reg_1814_pp0_iter3_reg;
reg   [7:0] weights1_3_addr_4_reg_1814_pp0_iter4_reg;
reg   [7:0] weights1_0_addr_5_reg_1820;
reg   [7:0] weights1_0_addr_5_reg_1820_pp0_iter1_reg;
reg   [7:0] weights1_0_addr_5_reg_1820_pp0_iter2_reg;
reg   [7:0] weights1_0_addr_5_reg_1820_pp0_iter3_reg;
reg   [7:0] weights1_0_addr_5_reg_1820_pp0_iter4_reg;
reg   [7:0] weights1_1_addr_5_reg_1826;
reg   [7:0] weights1_1_addr_5_reg_1826_pp0_iter1_reg;
reg   [7:0] weights1_1_addr_5_reg_1826_pp0_iter2_reg;
reg   [7:0] weights1_1_addr_5_reg_1826_pp0_iter3_reg;
reg   [7:0] weights1_1_addr_5_reg_1826_pp0_iter4_reg;
reg   [7:0] weights1_2_addr_5_reg_1832;
reg   [7:0] weights1_2_addr_5_reg_1832_pp0_iter1_reg;
reg   [7:0] weights1_2_addr_5_reg_1832_pp0_iter2_reg;
reg   [7:0] weights1_2_addr_5_reg_1832_pp0_iter3_reg;
reg   [7:0] weights1_2_addr_5_reg_1832_pp0_iter4_reg;
reg   [7:0] weights1_3_addr_5_reg_1838;
reg   [7:0] weights1_3_addr_5_reg_1838_pp0_iter1_reg;
reg   [7:0] weights1_3_addr_5_reg_1838_pp0_iter2_reg;
reg   [7:0] weights1_3_addr_5_reg_1838_pp0_iter3_reg;
reg   [7:0] weights1_3_addr_5_reg_1838_pp0_iter4_reg;
wire   [63:0] bitcast_ln142_8_fu_921_p1;
wire   [63:0] bitcast_ln142_10_fu_926_p1;
wire   [63:0] bitcast_ln142_12_fu_931_p1;
wire   [63:0] bitcast_ln142_14_fu_936_p1;
reg   [7:0] weights1_0_addr_6_reg_1864;
reg   [7:0] weights1_0_addr_6_reg_1864_pp0_iter1_reg;
reg   [7:0] weights1_0_addr_6_reg_1864_pp0_iter2_reg;
reg   [7:0] weights1_0_addr_6_reg_1864_pp0_iter3_reg;
reg   [7:0] weights1_0_addr_6_reg_1864_pp0_iter4_reg;
reg   [7:0] weights1_1_addr_6_reg_1870;
reg   [7:0] weights1_1_addr_6_reg_1870_pp0_iter1_reg;
reg   [7:0] weights1_1_addr_6_reg_1870_pp0_iter2_reg;
reg   [7:0] weights1_1_addr_6_reg_1870_pp0_iter3_reg;
reg   [7:0] weights1_1_addr_6_reg_1870_pp0_iter4_reg;
reg   [7:0] weights1_2_addr_6_reg_1876;
reg   [7:0] weights1_2_addr_6_reg_1876_pp0_iter1_reg;
reg   [7:0] weights1_2_addr_6_reg_1876_pp0_iter2_reg;
reg   [7:0] weights1_2_addr_6_reg_1876_pp0_iter3_reg;
reg   [7:0] weights1_2_addr_6_reg_1876_pp0_iter4_reg;
reg   [7:0] weights1_3_addr_6_reg_1882;
reg   [7:0] weights1_3_addr_6_reg_1882_pp0_iter1_reg;
reg   [7:0] weights1_3_addr_6_reg_1882_pp0_iter2_reg;
reg   [7:0] weights1_3_addr_6_reg_1882_pp0_iter3_reg;
reg   [7:0] weights1_3_addr_6_reg_1882_pp0_iter4_reg;
reg   [7:0] weights1_0_addr_7_reg_1888;
reg   [7:0] weights1_0_addr_7_reg_1888_pp0_iter1_reg;
reg   [7:0] weights1_0_addr_7_reg_1888_pp0_iter2_reg;
reg   [7:0] weights1_0_addr_7_reg_1888_pp0_iter3_reg;
reg   [7:0] weights1_0_addr_7_reg_1888_pp0_iter4_reg;
reg   [7:0] weights1_1_addr_7_reg_1894;
reg   [7:0] weights1_1_addr_7_reg_1894_pp0_iter1_reg;
reg   [7:0] weights1_1_addr_7_reg_1894_pp0_iter2_reg;
reg   [7:0] weights1_1_addr_7_reg_1894_pp0_iter3_reg;
reg   [7:0] weights1_1_addr_7_reg_1894_pp0_iter4_reg;
reg   [7:0] weights1_2_addr_7_reg_1900;
reg   [7:0] weights1_2_addr_7_reg_1900_pp0_iter1_reg;
reg   [7:0] weights1_2_addr_7_reg_1900_pp0_iter2_reg;
reg   [7:0] weights1_2_addr_7_reg_1900_pp0_iter3_reg;
reg   [7:0] weights1_2_addr_7_reg_1900_pp0_iter4_reg;
reg   [7:0] weights1_3_addr_7_reg_1906;
reg   [7:0] weights1_3_addr_7_reg_1906_pp0_iter1_reg;
reg   [7:0] weights1_3_addr_7_reg_1906_pp0_iter2_reg;
reg   [7:0] weights1_3_addr_7_reg_1906_pp0_iter3_reg;
reg   [7:0] weights1_3_addr_7_reg_1906_pp0_iter4_reg;
wire   [63:0] bitcast_ln142_16_fu_971_p1;
wire   [63:0] bitcast_ln142_18_fu_976_p1;
wire   [63:0] bitcast_ln142_20_fu_981_p1;
wire   [63:0] bitcast_ln142_22_fu_986_p1;
reg   [63:0] weights1_0_load_7_reg_1932;
reg   [63:0] weights1_1_load_7_reg_1937;
reg   [63:0] weights1_2_load_7_reg_1942;
reg   [63:0] weights1_3_load_7_reg_1947;
reg   [7:0] weights1_0_addr_8_reg_1952;
reg   [7:0] weights1_0_addr_8_reg_1952_pp0_iter1_reg;
reg   [7:0] weights1_0_addr_8_reg_1952_pp0_iter2_reg;
reg   [7:0] weights1_0_addr_8_reg_1952_pp0_iter3_reg;
reg   [7:0] weights1_0_addr_8_reg_1952_pp0_iter4_reg;
reg   [7:0] weights1_1_addr_8_reg_1958;
reg   [7:0] weights1_1_addr_8_reg_1958_pp0_iter1_reg;
reg   [7:0] weights1_1_addr_8_reg_1958_pp0_iter2_reg;
reg   [7:0] weights1_1_addr_8_reg_1958_pp0_iter3_reg;
reg   [7:0] weights1_1_addr_8_reg_1958_pp0_iter4_reg;
reg   [7:0] weights1_2_addr_8_reg_1964;
reg   [7:0] weights1_2_addr_8_reg_1964_pp0_iter1_reg;
reg   [7:0] weights1_2_addr_8_reg_1964_pp0_iter2_reg;
reg   [7:0] weights1_2_addr_8_reg_1964_pp0_iter3_reg;
reg   [7:0] weights1_2_addr_8_reg_1964_pp0_iter4_reg;
reg   [7:0] weights1_3_addr_8_reg_1970;
reg   [7:0] weights1_3_addr_8_reg_1970_pp0_iter1_reg;
reg   [7:0] weights1_3_addr_8_reg_1970_pp0_iter2_reg;
reg   [7:0] weights1_3_addr_8_reg_1970_pp0_iter3_reg;
reg   [7:0] weights1_3_addr_8_reg_1970_pp0_iter4_reg;
reg   [7:0] weights1_0_addr_9_reg_1976;
reg   [7:0] weights1_0_addr_9_reg_1976_pp0_iter1_reg;
reg   [7:0] weights1_0_addr_9_reg_1976_pp0_iter2_reg;
reg   [7:0] weights1_0_addr_9_reg_1976_pp0_iter3_reg;
reg   [7:0] weights1_0_addr_9_reg_1976_pp0_iter4_reg;
reg   [7:0] weights1_1_addr_9_reg_1982;
reg   [7:0] weights1_1_addr_9_reg_1982_pp0_iter1_reg;
reg   [7:0] weights1_1_addr_9_reg_1982_pp0_iter2_reg;
reg   [7:0] weights1_1_addr_9_reg_1982_pp0_iter3_reg;
reg   [7:0] weights1_1_addr_9_reg_1982_pp0_iter4_reg;
reg   [7:0] weights1_2_addr_9_reg_1988;
reg   [7:0] weights1_2_addr_9_reg_1988_pp0_iter1_reg;
reg   [7:0] weights1_2_addr_9_reg_1988_pp0_iter2_reg;
reg   [7:0] weights1_2_addr_9_reg_1988_pp0_iter3_reg;
reg   [7:0] weights1_2_addr_9_reg_1988_pp0_iter4_reg;
reg   [7:0] weights1_3_addr_9_reg_1994;
reg   [7:0] weights1_3_addr_9_reg_1994_pp0_iter1_reg;
reg   [7:0] weights1_3_addr_9_reg_1994_pp0_iter2_reg;
reg   [7:0] weights1_3_addr_9_reg_1994_pp0_iter3_reg;
reg   [7:0] weights1_3_addr_9_reg_1994_pp0_iter4_reg;
wire   [63:0] bitcast_ln142_24_fu_1021_p1;
wire   [63:0] bitcast_ln142_26_fu_1026_p1;
wire   [63:0] bitcast_ln142_28_fu_1031_p1;
wire   [63:0] bitcast_ln142_30_fu_1036_p1;
reg   [63:0] weights1_0_load_9_reg_2020;
reg   [63:0] weights1_1_load_9_reg_2025;
reg   [63:0] weights1_2_load_9_reg_2030;
reg   [63:0] weights1_3_load_9_reg_2035;
reg   [7:0] weights1_0_addr_10_reg_2040;
reg   [7:0] weights1_0_addr_10_reg_2040_pp0_iter1_reg;
reg   [7:0] weights1_0_addr_10_reg_2040_pp0_iter2_reg;
reg   [7:0] weights1_0_addr_10_reg_2040_pp0_iter3_reg;
reg   [7:0] weights1_0_addr_10_reg_2040_pp0_iter4_reg;
reg   [7:0] weights1_1_addr_10_reg_2046;
reg   [7:0] weights1_1_addr_10_reg_2046_pp0_iter1_reg;
reg   [7:0] weights1_1_addr_10_reg_2046_pp0_iter2_reg;
reg   [7:0] weights1_1_addr_10_reg_2046_pp0_iter3_reg;
reg   [7:0] weights1_1_addr_10_reg_2046_pp0_iter4_reg;
reg   [7:0] weights1_2_addr_10_reg_2052;
reg   [7:0] weights1_2_addr_10_reg_2052_pp0_iter1_reg;
reg   [7:0] weights1_2_addr_10_reg_2052_pp0_iter2_reg;
reg   [7:0] weights1_2_addr_10_reg_2052_pp0_iter3_reg;
reg   [7:0] weights1_2_addr_10_reg_2052_pp0_iter4_reg;
reg   [7:0] weights1_3_addr_10_reg_2058;
reg   [7:0] weights1_3_addr_10_reg_2058_pp0_iter1_reg;
reg   [7:0] weights1_3_addr_10_reg_2058_pp0_iter2_reg;
reg   [7:0] weights1_3_addr_10_reg_2058_pp0_iter3_reg;
reg   [7:0] weights1_3_addr_10_reg_2058_pp0_iter4_reg;
reg   [7:0] weights1_0_addr_11_reg_2064;
reg   [7:0] weights1_0_addr_11_reg_2064_pp0_iter1_reg;
reg   [7:0] weights1_0_addr_11_reg_2064_pp0_iter2_reg;
reg   [7:0] weights1_0_addr_11_reg_2064_pp0_iter3_reg;
reg   [7:0] weights1_0_addr_11_reg_2064_pp0_iter4_reg;
reg   [7:0] weights1_1_addr_11_reg_2070;
reg   [7:0] weights1_1_addr_11_reg_2070_pp0_iter1_reg;
reg   [7:0] weights1_1_addr_11_reg_2070_pp0_iter2_reg;
reg   [7:0] weights1_1_addr_11_reg_2070_pp0_iter3_reg;
reg   [7:0] weights1_1_addr_11_reg_2070_pp0_iter4_reg;
reg   [7:0] weights1_2_addr_11_reg_2076;
reg   [7:0] weights1_2_addr_11_reg_2076_pp0_iter1_reg;
reg   [7:0] weights1_2_addr_11_reg_2076_pp0_iter2_reg;
reg   [7:0] weights1_2_addr_11_reg_2076_pp0_iter3_reg;
reg   [7:0] weights1_2_addr_11_reg_2076_pp0_iter4_reg;
reg   [7:0] weights1_3_addr_11_reg_2082;
reg   [7:0] weights1_3_addr_11_reg_2082_pp0_iter1_reg;
reg   [7:0] weights1_3_addr_11_reg_2082_pp0_iter2_reg;
reg   [7:0] weights1_3_addr_11_reg_2082_pp0_iter3_reg;
reg   [7:0] weights1_3_addr_11_reg_2082_pp0_iter4_reg;
wire   [63:0] bitcast_ln142_32_fu_1071_p1;
wire   [63:0] bitcast_ln142_34_fu_1076_p1;
wire   [63:0] bitcast_ln142_36_fu_1081_p1;
wire   [63:0] bitcast_ln142_38_fu_1086_p1;
reg   [63:0] weights1_0_load_11_reg_2108;
reg   [63:0] weights1_1_load_11_reg_2113;
reg   [63:0] weights1_2_load_11_reg_2118;
reg   [63:0] weights1_3_load_11_reg_2123;
reg   [7:0] weights1_0_addr_12_reg_2128;
reg   [7:0] weights1_0_addr_12_reg_2128_pp0_iter1_reg;
reg   [7:0] weights1_0_addr_12_reg_2128_pp0_iter2_reg;
reg   [7:0] weights1_0_addr_12_reg_2128_pp0_iter3_reg;
reg   [7:0] weights1_0_addr_12_reg_2128_pp0_iter4_reg;
reg   [7:0] weights1_1_addr_12_reg_2134;
reg   [7:0] weights1_1_addr_12_reg_2134_pp0_iter1_reg;
reg   [7:0] weights1_1_addr_12_reg_2134_pp0_iter2_reg;
reg   [7:0] weights1_1_addr_12_reg_2134_pp0_iter3_reg;
reg   [7:0] weights1_1_addr_12_reg_2134_pp0_iter4_reg;
reg   [7:0] weights1_2_addr_12_reg_2140;
reg   [7:0] weights1_2_addr_12_reg_2140_pp0_iter1_reg;
reg   [7:0] weights1_2_addr_12_reg_2140_pp0_iter2_reg;
reg   [7:0] weights1_2_addr_12_reg_2140_pp0_iter3_reg;
reg   [7:0] weights1_2_addr_12_reg_2140_pp0_iter4_reg;
reg   [7:0] weights1_3_addr_12_reg_2146;
reg   [7:0] weights1_3_addr_12_reg_2146_pp0_iter1_reg;
reg   [7:0] weights1_3_addr_12_reg_2146_pp0_iter2_reg;
reg   [7:0] weights1_3_addr_12_reg_2146_pp0_iter3_reg;
reg   [7:0] weights1_3_addr_12_reg_2146_pp0_iter4_reg;
reg   [7:0] weights1_0_addr_13_reg_2152;
reg   [7:0] weights1_0_addr_13_reg_2152_pp0_iter1_reg;
reg   [7:0] weights1_0_addr_13_reg_2152_pp0_iter2_reg;
reg   [7:0] weights1_0_addr_13_reg_2152_pp0_iter3_reg;
reg   [7:0] weights1_0_addr_13_reg_2152_pp0_iter4_reg;
reg   [7:0] weights1_1_addr_13_reg_2157;
reg   [7:0] weights1_1_addr_13_reg_2157_pp0_iter1_reg;
reg   [7:0] weights1_1_addr_13_reg_2157_pp0_iter2_reg;
reg   [7:0] weights1_1_addr_13_reg_2157_pp0_iter3_reg;
reg   [7:0] weights1_1_addr_13_reg_2157_pp0_iter4_reg;
reg   [7:0] weights1_2_addr_13_reg_2162;
reg   [7:0] weights1_2_addr_13_reg_2162_pp0_iter1_reg;
reg   [7:0] weights1_2_addr_13_reg_2162_pp0_iter2_reg;
reg   [7:0] weights1_2_addr_13_reg_2162_pp0_iter3_reg;
reg   [7:0] weights1_2_addr_13_reg_2162_pp0_iter4_reg;
reg   [7:0] weights1_3_addr_13_reg_2167;
reg   [7:0] weights1_3_addr_13_reg_2167_pp0_iter1_reg;
reg   [7:0] weights1_3_addr_13_reg_2167_pp0_iter2_reg;
reg   [7:0] weights1_3_addr_13_reg_2167_pp0_iter3_reg;
reg   [7:0] weights1_3_addr_13_reg_2167_pp0_iter4_reg;
wire   [63:0] bitcast_ln142_40_fu_1121_p1;
wire   [63:0] bitcast_ln142_42_fu_1126_p1;
wire   [63:0] bitcast_ln142_44_fu_1131_p1;
wire   [63:0] bitcast_ln142_46_fu_1136_p1;
reg   [63:0] weights1_0_load_13_reg_2192;
reg   [63:0] weights1_1_load_13_reg_2197;
reg   [63:0] weights1_2_load_13_reg_2202;
reg   [63:0] weights1_3_load_13_reg_2207;
reg   [7:0] weights1_0_addr_14_reg_2212;
reg   [7:0] weights1_0_addr_14_reg_2212_pp0_iter1_reg;
reg   [7:0] weights1_0_addr_14_reg_2212_pp0_iter2_reg;
reg   [7:0] weights1_0_addr_14_reg_2212_pp0_iter3_reg;
reg   [7:0] weights1_0_addr_14_reg_2212_pp0_iter4_reg;
reg   [7:0] weights1_1_addr_14_reg_2218;
reg   [7:0] weights1_1_addr_14_reg_2218_pp0_iter1_reg;
reg   [7:0] weights1_1_addr_14_reg_2218_pp0_iter2_reg;
reg   [7:0] weights1_1_addr_14_reg_2218_pp0_iter3_reg;
reg   [7:0] weights1_1_addr_14_reg_2218_pp0_iter4_reg;
reg   [7:0] weights1_2_addr_14_reg_2224;
reg   [7:0] weights1_2_addr_14_reg_2224_pp0_iter1_reg;
reg   [7:0] weights1_2_addr_14_reg_2224_pp0_iter2_reg;
reg   [7:0] weights1_2_addr_14_reg_2224_pp0_iter3_reg;
reg   [7:0] weights1_2_addr_14_reg_2224_pp0_iter4_reg;
reg   [7:0] weights1_3_addr_14_reg_2230;
reg   [7:0] weights1_3_addr_14_reg_2230_pp0_iter1_reg;
reg   [7:0] weights1_3_addr_14_reg_2230_pp0_iter2_reg;
reg   [7:0] weights1_3_addr_14_reg_2230_pp0_iter3_reg;
reg   [7:0] weights1_3_addr_14_reg_2230_pp0_iter4_reg;
reg   [7:0] weights1_0_addr_15_reg_2236;
reg   [7:0] weights1_0_addr_15_reg_2236_pp0_iter1_reg;
reg   [7:0] weights1_0_addr_15_reg_2236_pp0_iter2_reg;
reg   [7:0] weights1_0_addr_15_reg_2236_pp0_iter3_reg;
reg   [7:0] weights1_0_addr_15_reg_2236_pp0_iter4_reg;
reg   [7:0] weights1_1_addr_15_reg_2241;
reg   [7:0] weights1_1_addr_15_reg_2241_pp0_iter1_reg;
reg   [7:0] weights1_1_addr_15_reg_2241_pp0_iter2_reg;
reg   [7:0] weights1_1_addr_15_reg_2241_pp0_iter3_reg;
reg   [7:0] weights1_1_addr_15_reg_2241_pp0_iter4_reg;
reg   [7:0] weights1_2_addr_15_reg_2246;
reg   [7:0] weights1_2_addr_15_reg_2246_pp0_iter1_reg;
reg   [7:0] weights1_2_addr_15_reg_2246_pp0_iter2_reg;
reg   [7:0] weights1_2_addr_15_reg_2246_pp0_iter3_reg;
reg   [7:0] weights1_2_addr_15_reg_2246_pp0_iter4_reg;
reg   [7:0] weights1_3_addr_15_reg_2251;
reg   [7:0] weights1_3_addr_15_reg_2251_pp0_iter1_reg;
reg   [7:0] weights1_3_addr_15_reg_2251_pp0_iter2_reg;
reg   [7:0] weights1_3_addr_15_reg_2251_pp0_iter3_reg;
reg   [7:0] weights1_3_addr_15_reg_2251_pp0_iter4_reg;
wire   [63:0] bitcast_ln142_48_fu_1171_p1;
wire   [63:0] bitcast_ln142_50_fu_1176_p1;
wire   [63:0] bitcast_ln142_52_fu_1181_p1;
wire   [63:0] bitcast_ln142_54_fu_1186_p1;
reg   [63:0] weights1_0_load_15_reg_2276;
reg   [63:0] weights1_1_load_15_reg_2281;
reg   [63:0] weights1_2_load_15_reg_2286;
reg   [63:0] weights1_3_load_15_reg_2291;
wire   [63:0] bitcast_ln142_56_fu_1191_p1;
wire   [63:0] bitcast_ln142_58_fu_1195_p1;
wire   [63:0] bitcast_ln142_60_fu_1199_p1;
wire   [63:0] bitcast_ln142_62_fu_1203_p1;
wire   [63:0] bitcast_ln142_64_fu_1207_p1;
wire   [63:0] bitcast_ln142_66_fu_1212_p1;
wire   [63:0] bitcast_ln142_68_fu_1217_p1;
wire   [63:0] bitcast_ln142_70_fu_1222_p1;
wire   [63:0] bitcast_ln142_72_fu_1227_p1;
wire   [63:0] bitcast_ln142_74_fu_1231_p1;
wire   [63:0] bitcast_ln142_76_fu_1235_p1;
wire   [63:0] bitcast_ln142_78_fu_1239_p1;
wire   [63:0] bitcast_ln142_80_fu_1243_p1;
wire   [63:0] bitcast_ln142_82_fu_1248_p1;
wire   [63:0] bitcast_ln142_84_fu_1253_p1;
wire   [63:0] bitcast_ln142_86_fu_1258_p1;
wire   [63:0] bitcast_ln142_88_fu_1263_p1;
wire   [63:0] bitcast_ln142_90_fu_1267_p1;
wire   [63:0] bitcast_ln142_92_fu_1271_p1;
wire   [63:0] bitcast_ln142_94_fu_1275_p1;
wire   [63:0] bitcast_ln142_96_fu_1279_p1;
wire   [63:0] bitcast_ln142_98_fu_1284_p1;
wire   [63:0] bitcast_ln142_100_fu_1289_p1;
wire   [63:0] bitcast_ln142_102_fu_1294_p1;
wire   [63:0] bitcast_ln142_104_fu_1299_p1;
wire   [63:0] bitcast_ln142_106_fu_1303_p1;
wire   [63:0] bitcast_ln142_108_fu_1307_p1;
wire   [63:0] bitcast_ln142_110_fu_1311_p1;
wire   [63:0] bitcast_ln142_112_fu_1315_p1;
wire   [63:0] bitcast_ln142_114_fu_1320_p1;
wire   [63:0] bitcast_ln142_116_fu_1325_p1;
wire   [63:0] bitcast_ln142_118_fu_1330_p1;
wire   [63:0] bitcast_ln142_120_fu_1335_p1;
wire   [63:0] bitcast_ln142_122_fu_1339_p1;
wire   [63:0] bitcast_ln142_124_fu_1343_p1;
wire   [63:0] bitcast_ln142_126_fu_1347_p1;
reg   [63:0] div_27_reg_2476;
reg   [63:0] div_28_reg_2481;
reg   [63:0] div_29_reg_2486;
reg   [63:0] div_30_reg_2491;
reg   [63:0] div_31_reg_2496;
reg   [63:0] div_32_reg_2501;
reg   [63:0] div_33_reg_2506;
reg   [63:0] div_34_reg_2511;
reg   [63:0] div_35_reg_2516;
reg   [63:0] div_36_reg_2521;
reg   [63:0] div_37_reg_2526;
reg   [63:0] div_38_reg_2531;
reg   [63:0] div_39_reg_2536;
reg   [63:0] div_40_reg_2541;
reg   [63:0] div_41_reg_2546;
reg   [63:0] div_42_reg_2551;
reg   [63:0] div_43_reg_2556;
reg   [63:0] div_44_reg_2561;
reg   [63:0] div_45_reg_2566;
reg   [63:0] div_46_reg_2571;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln142_fu_812_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln142_1_fu_828_p1;
wire   [63:0] zext_ln142_2_fu_848_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln142_3_fu_863_p1;
wire   [63:0] zext_ln142_4_fu_898_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln142_5_fu_913_p1;
wire   [63:0] zext_ln142_6_fu_948_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln142_7_fu_963_p1;
wire   [63:0] zext_ln142_8_fu_998_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln142_9_fu_1013_p1;
wire   [63:0] zext_ln142_10_fu_1048_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln142_11_fu_1063_p1;
wire   [63:0] zext_ln142_12_fu_1098_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln142_13_fu_1113_p1;
wire   [63:0] zext_ln142_14_fu_1148_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln142_15_fu_1163_p1;
reg   [3:0] i_1_fu_70;
wire   [3:0] add_ln140_fu_798_p2;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_i;
reg    weights1_0_ce1_local;
reg   [7:0] weights1_0_address1_local;
reg    weights1_0_ce0_local;
reg   [7:0] weights1_0_address0_local;
reg    weights1_0_we1_local;
reg   [63:0] weights1_0_d1_local;
wire   [63:0] bitcast_ln142_1_fu_1351_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] bitcast_ln142_9_fu_1371_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] bitcast_ln142_17_fu_1391_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] bitcast_ln142_25_fu_1411_p1;
wire    ap_block_pp0_stage8;
reg    weights1_0_we0_local;
reg   [63:0] weights1_0_d0_local;
wire   [63:0] bitcast_ln142_33_fu_1431_p1;
wire   [63:0] bitcast_ln142_41_fu_1451_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] bitcast_ln142_49_fu_1471_p1;
wire   [63:0] bitcast_ln142_57_fu_1491_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] bitcast_ln142_65_fu_1507_p1;
wire   [63:0] bitcast_ln142_73_fu_1523_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] bitcast_ln142_81_fu_1539_p1;
wire   [63:0] bitcast_ln142_89_fu_1555_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] bitcast_ln142_97_fu_1571_p1;
wire   [63:0] bitcast_ln142_105_fu_1591_p1;
wire   [63:0] bitcast_ln142_113_fu_1611_p1;
wire   [63:0] bitcast_ln142_121_fu_1631_p1;
reg    weights1_1_ce1_local;
reg   [7:0] weights1_1_address1_local;
reg    weights1_1_ce0_local;
reg   [7:0] weights1_1_address0_local;
reg    weights1_1_we1_local;
reg   [63:0] weights1_1_d1_local;
wire   [63:0] bitcast_ln142_3_fu_1356_p1;
wire   [63:0] bitcast_ln142_11_fu_1376_p1;
wire   [63:0] bitcast_ln142_19_fu_1396_p1;
wire   [63:0] bitcast_ln142_27_fu_1416_p1;
reg    weights1_1_we0_local;
reg   [63:0] weights1_1_d0_local;
wire   [63:0] bitcast_ln142_35_fu_1436_p1;
wire   [63:0] bitcast_ln142_43_fu_1456_p1;
wire   [63:0] bitcast_ln142_51_fu_1476_p1;
wire   [63:0] bitcast_ln142_59_fu_1495_p1;
wire   [63:0] bitcast_ln142_67_fu_1511_p1;
wire   [63:0] bitcast_ln142_75_fu_1527_p1;
wire   [63:0] bitcast_ln142_83_fu_1543_p1;
wire   [63:0] bitcast_ln142_91_fu_1559_p1;
wire   [63:0] bitcast_ln142_99_fu_1576_p1;
wire   [63:0] bitcast_ln142_107_fu_1596_p1;
wire   [63:0] bitcast_ln142_115_fu_1616_p1;
wire   [63:0] bitcast_ln142_123_fu_1636_p1;
reg    weights1_2_ce1_local;
reg   [7:0] weights1_2_address1_local;
reg    weights1_2_ce0_local;
reg   [7:0] weights1_2_address0_local;
reg    weights1_2_we1_local;
reg   [63:0] weights1_2_d1_local;
wire   [63:0] bitcast_ln142_5_fu_1361_p1;
wire   [63:0] bitcast_ln142_13_fu_1381_p1;
wire   [63:0] bitcast_ln142_21_fu_1401_p1;
wire   [63:0] bitcast_ln142_29_fu_1421_p1;
reg    weights1_2_we0_local;
reg   [63:0] weights1_2_d0_local;
wire   [63:0] bitcast_ln142_37_fu_1441_p1;
wire   [63:0] bitcast_ln142_45_fu_1461_p1;
wire   [63:0] bitcast_ln142_53_fu_1481_p1;
wire   [63:0] bitcast_ln142_61_fu_1499_p1;
wire   [63:0] bitcast_ln142_69_fu_1515_p1;
wire   [63:0] bitcast_ln142_77_fu_1531_p1;
wire   [63:0] bitcast_ln142_85_fu_1547_p1;
wire   [63:0] bitcast_ln142_93_fu_1563_p1;
wire   [63:0] bitcast_ln142_101_fu_1581_p1;
wire   [63:0] bitcast_ln142_109_fu_1601_p1;
wire   [63:0] bitcast_ln142_117_fu_1621_p1;
wire   [63:0] bitcast_ln142_125_fu_1641_p1;
reg    weights1_3_ce1_local;
reg   [7:0] weights1_3_address1_local;
reg    weights1_3_ce0_local;
reg   [7:0] weights1_3_address0_local;
reg    weights1_3_we1_local;
reg   [63:0] weights1_3_d1_local;
wire   [63:0] bitcast_ln142_7_fu_1366_p1;
wire   [63:0] bitcast_ln142_15_fu_1386_p1;
wire   [63:0] bitcast_ln142_23_fu_1406_p1;
wire   [63:0] bitcast_ln142_31_fu_1426_p1;
reg    weights1_3_we0_local;
reg   [63:0] weights1_3_d0_local;
wire   [63:0] bitcast_ln142_39_fu_1446_p1;
wire   [63:0] bitcast_ln142_47_fu_1466_p1;
wire   [63:0] bitcast_ln142_55_fu_1486_p1;
wire   [63:0] bitcast_ln142_63_fu_1503_p1;
wire   [63:0] bitcast_ln142_71_fu_1519_p1;
wire   [63:0] bitcast_ln142_79_fu_1535_p1;
wire   [63:0] bitcast_ln142_87_fu_1551_p1;
wire   [63:0] bitcast_ln142_95_fu_1567_p1;
wire   [63:0] bitcast_ln142_103_fu_1586_p1;
wire   [63:0] bitcast_ln142_111_fu_1606_p1;
wire   [63:0] bitcast_ln142_119_fu_1626_p1;
wire   [63:0] bitcast_ln142_127_fu_1646_p1;
reg   [63:0] grp_fu_628_p0;
reg   [63:0] grp_fu_632_p0;
reg   [63:0] grp_fu_636_p0;
reg   [63:0] grp_fu_640_p0;
wire   [7:0] shl_ln1_fu_804_p3;
wire   [7:0] or_ln1_fu_820_p3;
wire   [7:0] or_ln142_1_fu_841_p3;
wire   [7:0] or_ln142_2_fu_856_p3;
wire   [7:0] or_ln142_3_fu_891_p3;
wire   [7:0] or_ln142_4_fu_906_p3;
wire   [7:0] or_ln142_5_fu_941_p3;
wire   [7:0] or_ln142_6_fu_956_p3;
wire   [7:0] or_ln142_7_fu_991_p3;
wire   [7:0] or_ln142_8_fu_1006_p3;
wire   [7:0] or_ln142_9_fu_1041_p3;
wire   [7:0] or_ln142_s_fu_1056_p3;
wire   [7:0] or_ln142_10_fu_1091_p3;
wire   [7:0] or_ln142_11_fu_1106_p3;
wire   [7:0] or_ln142_12_fu_1141_p3;
wire   [7:0] or_ln142_13_fu_1156_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [15:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
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
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_1_fu_70 = 4'd0;
#0 ap_done_reg = 1'b0;
end
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage15),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage15)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln140_fu_792_p2 == 1'd0))) begin
            i_1_fu_70 <= add_ln140_fu_798_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_1_fu_70 <= 4'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_660 <= weights1_0_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_660 <= weights1_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_665 <= weights1_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_665 <= weights1_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_670 <= weights1_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_670 <= weights1_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_675 <= weights1_3_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_675 <= weights1_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_680 <= weights1_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_680 <= weights1_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_685 <= weights1_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_685 <= weights1_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_690 <= weights1_2_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_690 <= weights1_2_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_695 <= weights1_3_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_695 <= weights1_3_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            reg_700 <= weights1_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_700 <= weights1_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            reg_705 <= weights1_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_705 <= weights1_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            reg_710 <= weights1_2_q1;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_710 <= weights1_2_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            reg_715 <= weights1_3_q1;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_715 <= weights1_3_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        div_27_reg_2476 <= grp_fu_6290_p_dout0;
        div_28_reg_2481 <= grp_fu_6294_p_dout0;
        div_29_reg_2486 <= grp_fu_6298_p_dout0;
        div_30_reg_2491 <= grp_fu_6302_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        div_31_reg_2496 <= grp_fu_6290_p_dout0;
        div_32_reg_2501 <= grp_fu_6294_p_dout0;
        div_33_reg_2506 <= grp_fu_6298_p_dout0;
        div_34_reg_2511 <= grp_fu_6302_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        div_35_reg_2516 <= grp_fu_6290_p_dout0;
        div_36_reg_2521 <= grp_fu_6294_p_dout0;
        div_37_reg_2526 <= grp_fu_6298_p_dout0;
        div_38_reg_2531 <= grp_fu_6302_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        div_39_reg_2536 <= grp_fu_6290_p_dout0;
        div_40_reg_2541 <= grp_fu_6294_p_dout0;
        div_41_reg_2546 <= grp_fu_6298_p_dout0;
        div_42_reg_2551 <= grp_fu_6302_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        div_43_reg_2556 <= grp_fu_6290_p_dout0;
        div_44_reg_2561 <= grp_fu_6294_p_dout0;
        div_45_reg_2566 <= grp_fu_6298_p_dout0;
        div_46_reg_2571 <= grp_fu_6302_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_reg_1666 <= ap_sig_allocacmp_i;
        icmp_ln140_reg_1684 <= icmp_ln140_fu_792_p2;
        weights1_0_addr_1_reg_1708[7 : 4] <= zext_ln142_1_fu_828_p1[7 : 4];
        weights1_0_addr_1_reg_1708_pp0_iter1_reg[7 : 4] <= weights1_0_addr_1_reg_1708[7 : 4];
        weights1_0_addr_1_reg_1708_pp0_iter2_reg[7 : 4] <= weights1_0_addr_1_reg_1708_pp0_iter1_reg[7 : 4];
        weights1_0_addr_1_reg_1708_pp0_iter3_reg[7 : 4] <= weights1_0_addr_1_reg_1708_pp0_iter2_reg[7 : 4];
        weights1_0_addr_reg_1688[7 : 4] <= zext_ln142_fu_812_p1[7 : 4];
        weights1_0_addr_reg_1688_pp0_iter1_reg[7 : 4] <= weights1_0_addr_reg_1688[7 : 4];
        weights1_0_addr_reg_1688_pp0_iter2_reg[7 : 4] <= weights1_0_addr_reg_1688_pp0_iter1_reg[7 : 4];
        weights1_0_addr_reg_1688_pp0_iter3_reg[7 : 4] <= weights1_0_addr_reg_1688_pp0_iter2_reg[7 : 4];
        weights1_1_addr_1_reg_1714[7 : 4] <= zext_ln142_1_fu_828_p1[7 : 4];
        weights1_1_addr_1_reg_1714_pp0_iter1_reg[7 : 4] <= weights1_1_addr_1_reg_1714[7 : 4];
        weights1_1_addr_1_reg_1714_pp0_iter2_reg[7 : 4] <= weights1_1_addr_1_reg_1714_pp0_iter1_reg[7 : 4];
        weights1_1_addr_1_reg_1714_pp0_iter3_reg[7 : 4] <= weights1_1_addr_1_reg_1714_pp0_iter2_reg[7 : 4];
        weights1_1_addr_reg_1693[7 : 4] <= zext_ln142_fu_812_p1[7 : 4];
        weights1_1_addr_reg_1693_pp0_iter1_reg[7 : 4] <= weights1_1_addr_reg_1693[7 : 4];
        weights1_1_addr_reg_1693_pp0_iter2_reg[7 : 4] <= weights1_1_addr_reg_1693_pp0_iter1_reg[7 : 4];
        weights1_1_addr_reg_1693_pp0_iter3_reg[7 : 4] <= weights1_1_addr_reg_1693_pp0_iter2_reg[7 : 4];
        weights1_2_addr_1_reg_1720[7 : 4] <= zext_ln142_1_fu_828_p1[7 : 4];
        weights1_2_addr_1_reg_1720_pp0_iter1_reg[7 : 4] <= weights1_2_addr_1_reg_1720[7 : 4];
        weights1_2_addr_1_reg_1720_pp0_iter2_reg[7 : 4] <= weights1_2_addr_1_reg_1720_pp0_iter1_reg[7 : 4];
        weights1_2_addr_1_reg_1720_pp0_iter3_reg[7 : 4] <= weights1_2_addr_1_reg_1720_pp0_iter2_reg[7 : 4];
        weights1_2_addr_reg_1698[7 : 4] <= zext_ln142_fu_812_p1[7 : 4];
        weights1_2_addr_reg_1698_pp0_iter1_reg[7 : 4] <= weights1_2_addr_reg_1698[7 : 4];
        weights1_2_addr_reg_1698_pp0_iter2_reg[7 : 4] <= weights1_2_addr_reg_1698_pp0_iter1_reg[7 : 4];
        weights1_2_addr_reg_1698_pp0_iter3_reg[7 : 4] <= weights1_2_addr_reg_1698_pp0_iter2_reg[7 : 4];
        weights1_3_addr_1_reg_1726[7 : 4] <= zext_ln142_1_fu_828_p1[7 : 4];
        weights1_3_addr_1_reg_1726_pp0_iter1_reg[7 : 4] <= weights1_3_addr_1_reg_1726[7 : 4];
        weights1_3_addr_1_reg_1726_pp0_iter2_reg[7 : 4] <= weights1_3_addr_1_reg_1726_pp0_iter1_reg[7 : 4];
        weights1_3_addr_1_reg_1726_pp0_iter3_reg[7 : 4] <= weights1_3_addr_1_reg_1726_pp0_iter2_reg[7 : 4];
        weights1_3_addr_reg_1703[7 : 4] <= zext_ln142_fu_812_p1[7 : 4];
        weights1_3_addr_reg_1703_pp0_iter1_reg[7 : 4] <= weights1_3_addr_reg_1703[7 : 4];
        weights1_3_addr_reg_1703_pp0_iter2_reg[7 : 4] <= weights1_3_addr_reg_1703_pp0_iter1_reg[7 : 4];
        weights1_3_addr_reg_1703_pp0_iter3_reg[7 : 4] <= weights1_3_addr_reg_1703_pp0_iter2_reg[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_644 <= weights1_0_q1;
        reg_648 <= weights1_1_q1;
        reg_652 <= weights1_2_q1;
        reg_656 <= weights1_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_720 <= grp_fu_6290_p_dout0;
        reg_724 <= grp_fu_6294_p_dout0;
        reg_728 <= grp_fu_6298_p_dout0;
        reg_732 <= grp_fu_6302_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_736 <= grp_fu_6290_p_dout0;
        reg_740 <= grp_fu_6294_p_dout0;
        reg_744 <= grp_fu_6298_p_dout0;
        reg_748 <= grp_fu_6302_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_752 <= grp_fu_6290_p_dout0;
        reg_756 <= grp_fu_6294_p_dout0;
        reg_760 <= grp_fu_6298_p_dout0;
        reg_764 <= grp_fu_6302_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_768 <= grp_fu_6290_p_dout0;
        reg_772 <= grp_fu_6294_p_dout0;
        reg_776 <= grp_fu_6298_p_dout0;
        reg_780 <= grp_fu_6302_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights1_0_addr_10_reg_2040[7 : 4] <= zext_ln142_10_fu_1048_p1[7 : 4];
        weights1_0_addr_10_reg_2040_pp0_iter1_reg[7 : 4] <= weights1_0_addr_10_reg_2040[7 : 4];
        weights1_0_addr_10_reg_2040_pp0_iter2_reg[7 : 4] <= weights1_0_addr_10_reg_2040_pp0_iter1_reg[7 : 4];
        weights1_0_addr_10_reg_2040_pp0_iter3_reg[7 : 4] <= weights1_0_addr_10_reg_2040_pp0_iter2_reg[7 : 4];
        weights1_0_addr_10_reg_2040_pp0_iter4_reg[7 : 4] <= weights1_0_addr_10_reg_2040_pp0_iter3_reg[7 : 4];
        weights1_0_addr_11_reg_2064[7 : 4] <= zext_ln142_11_fu_1063_p1[7 : 4];
        weights1_0_addr_11_reg_2064_pp0_iter1_reg[7 : 4] <= weights1_0_addr_11_reg_2064[7 : 4];
        weights1_0_addr_11_reg_2064_pp0_iter2_reg[7 : 4] <= weights1_0_addr_11_reg_2064_pp0_iter1_reg[7 : 4];
        weights1_0_addr_11_reg_2064_pp0_iter3_reg[7 : 4] <= weights1_0_addr_11_reg_2064_pp0_iter2_reg[7 : 4];
        weights1_0_addr_11_reg_2064_pp0_iter4_reg[7 : 4] <= weights1_0_addr_11_reg_2064_pp0_iter3_reg[7 : 4];
        weights1_1_addr_10_reg_2046[7 : 4] <= zext_ln142_10_fu_1048_p1[7 : 4];
        weights1_1_addr_10_reg_2046_pp0_iter1_reg[7 : 4] <= weights1_1_addr_10_reg_2046[7 : 4];
        weights1_1_addr_10_reg_2046_pp0_iter2_reg[7 : 4] <= weights1_1_addr_10_reg_2046_pp0_iter1_reg[7 : 4];
        weights1_1_addr_10_reg_2046_pp0_iter3_reg[7 : 4] <= weights1_1_addr_10_reg_2046_pp0_iter2_reg[7 : 4];
        weights1_1_addr_10_reg_2046_pp0_iter4_reg[7 : 4] <= weights1_1_addr_10_reg_2046_pp0_iter3_reg[7 : 4];
        weights1_1_addr_11_reg_2070[7 : 4] <= zext_ln142_11_fu_1063_p1[7 : 4];
        weights1_1_addr_11_reg_2070_pp0_iter1_reg[7 : 4] <= weights1_1_addr_11_reg_2070[7 : 4];
        weights1_1_addr_11_reg_2070_pp0_iter2_reg[7 : 4] <= weights1_1_addr_11_reg_2070_pp0_iter1_reg[7 : 4];
        weights1_1_addr_11_reg_2070_pp0_iter3_reg[7 : 4] <= weights1_1_addr_11_reg_2070_pp0_iter2_reg[7 : 4];
        weights1_1_addr_11_reg_2070_pp0_iter4_reg[7 : 4] <= weights1_1_addr_11_reg_2070_pp0_iter3_reg[7 : 4];
        weights1_2_addr_10_reg_2052[7 : 4] <= zext_ln142_10_fu_1048_p1[7 : 4];
        weights1_2_addr_10_reg_2052_pp0_iter1_reg[7 : 4] <= weights1_2_addr_10_reg_2052[7 : 4];
        weights1_2_addr_10_reg_2052_pp0_iter2_reg[7 : 4] <= weights1_2_addr_10_reg_2052_pp0_iter1_reg[7 : 4];
        weights1_2_addr_10_reg_2052_pp0_iter3_reg[7 : 4] <= weights1_2_addr_10_reg_2052_pp0_iter2_reg[7 : 4];
        weights1_2_addr_10_reg_2052_pp0_iter4_reg[7 : 4] <= weights1_2_addr_10_reg_2052_pp0_iter3_reg[7 : 4];
        weights1_2_addr_11_reg_2076[7 : 4] <= zext_ln142_11_fu_1063_p1[7 : 4];
        weights1_2_addr_11_reg_2076_pp0_iter1_reg[7 : 4] <= weights1_2_addr_11_reg_2076[7 : 4];
        weights1_2_addr_11_reg_2076_pp0_iter2_reg[7 : 4] <= weights1_2_addr_11_reg_2076_pp0_iter1_reg[7 : 4];
        weights1_2_addr_11_reg_2076_pp0_iter3_reg[7 : 4] <= weights1_2_addr_11_reg_2076_pp0_iter2_reg[7 : 4];
        weights1_2_addr_11_reg_2076_pp0_iter4_reg[7 : 4] <= weights1_2_addr_11_reg_2076_pp0_iter3_reg[7 : 4];
        weights1_3_addr_10_reg_2058[7 : 4] <= zext_ln142_10_fu_1048_p1[7 : 4];
        weights1_3_addr_10_reg_2058_pp0_iter1_reg[7 : 4] <= weights1_3_addr_10_reg_2058[7 : 4];
        weights1_3_addr_10_reg_2058_pp0_iter2_reg[7 : 4] <= weights1_3_addr_10_reg_2058_pp0_iter1_reg[7 : 4];
        weights1_3_addr_10_reg_2058_pp0_iter3_reg[7 : 4] <= weights1_3_addr_10_reg_2058_pp0_iter2_reg[7 : 4];
        weights1_3_addr_10_reg_2058_pp0_iter4_reg[7 : 4] <= weights1_3_addr_10_reg_2058_pp0_iter3_reg[7 : 4];
        weights1_3_addr_11_reg_2082[7 : 4] <= zext_ln142_11_fu_1063_p1[7 : 4];
        weights1_3_addr_11_reg_2082_pp0_iter1_reg[7 : 4] <= weights1_3_addr_11_reg_2082[7 : 4];
        weights1_3_addr_11_reg_2082_pp0_iter2_reg[7 : 4] <= weights1_3_addr_11_reg_2082_pp0_iter1_reg[7 : 4];
        weights1_3_addr_11_reg_2082_pp0_iter3_reg[7 : 4] <= weights1_3_addr_11_reg_2082_pp0_iter2_reg[7 : 4];
        weights1_3_addr_11_reg_2082_pp0_iter4_reg[7 : 4] <= weights1_3_addr_11_reg_2082_pp0_iter3_reg[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights1_0_addr_12_reg_2128[7 : 4] <= zext_ln142_12_fu_1098_p1[7 : 4];
        weights1_0_addr_12_reg_2128_pp0_iter1_reg[7 : 4] <= weights1_0_addr_12_reg_2128[7 : 4];
        weights1_0_addr_12_reg_2128_pp0_iter2_reg[7 : 4] <= weights1_0_addr_12_reg_2128_pp0_iter1_reg[7 : 4];
        weights1_0_addr_12_reg_2128_pp0_iter3_reg[7 : 4] <= weights1_0_addr_12_reg_2128_pp0_iter2_reg[7 : 4];
        weights1_0_addr_12_reg_2128_pp0_iter4_reg[7 : 4] <= weights1_0_addr_12_reg_2128_pp0_iter3_reg[7 : 4];
        weights1_0_addr_13_reg_2152[7 : 4] <= zext_ln142_13_fu_1113_p1[7 : 4];
        weights1_0_addr_13_reg_2152_pp0_iter1_reg[7 : 4] <= weights1_0_addr_13_reg_2152[7 : 4];
        weights1_0_addr_13_reg_2152_pp0_iter2_reg[7 : 4] <= weights1_0_addr_13_reg_2152_pp0_iter1_reg[7 : 4];
        weights1_0_addr_13_reg_2152_pp0_iter3_reg[7 : 4] <= weights1_0_addr_13_reg_2152_pp0_iter2_reg[7 : 4];
        weights1_0_addr_13_reg_2152_pp0_iter4_reg[7 : 4] <= weights1_0_addr_13_reg_2152_pp0_iter3_reg[7 : 4];
        weights1_1_addr_12_reg_2134[7 : 4] <= zext_ln142_12_fu_1098_p1[7 : 4];
        weights1_1_addr_12_reg_2134_pp0_iter1_reg[7 : 4] <= weights1_1_addr_12_reg_2134[7 : 4];
        weights1_1_addr_12_reg_2134_pp0_iter2_reg[7 : 4] <= weights1_1_addr_12_reg_2134_pp0_iter1_reg[7 : 4];
        weights1_1_addr_12_reg_2134_pp0_iter3_reg[7 : 4] <= weights1_1_addr_12_reg_2134_pp0_iter2_reg[7 : 4];
        weights1_1_addr_12_reg_2134_pp0_iter4_reg[7 : 4] <= weights1_1_addr_12_reg_2134_pp0_iter3_reg[7 : 4];
        weights1_1_addr_13_reg_2157[7 : 4] <= zext_ln142_13_fu_1113_p1[7 : 4];
        weights1_1_addr_13_reg_2157_pp0_iter1_reg[7 : 4] <= weights1_1_addr_13_reg_2157[7 : 4];
        weights1_1_addr_13_reg_2157_pp0_iter2_reg[7 : 4] <= weights1_1_addr_13_reg_2157_pp0_iter1_reg[7 : 4];
        weights1_1_addr_13_reg_2157_pp0_iter3_reg[7 : 4] <= weights1_1_addr_13_reg_2157_pp0_iter2_reg[7 : 4];
        weights1_1_addr_13_reg_2157_pp0_iter4_reg[7 : 4] <= weights1_1_addr_13_reg_2157_pp0_iter3_reg[7 : 4];
        weights1_2_addr_12_reg_2140[7 : 4] <= zext_ln142_12_fu_1098_p1[7 : 4];
        weights1_2_addr_12_reg_2140_pp0_iter1_reg[7 : 4] <= weights1_2_addr_12_reg_2140[7 : 4];
        weights1_2_addr_12_reg_2140_pp0_iter2_reg[7 : 4] <= weights1_2_addr_12_reg_2140_pp0_iter1_reg[7 : 4];
        weights1_2_addr_12_reg_2140_pp0_iter3_reg[7 : 4] <= weights1_2_addr_12_reg_2140_pp0_iter2_reg[7 : 4];
        weights1_2_addr_12_reg_2140_pp0_iter4_reg[7 : 4] <= weights1_2_addr_12_reg_2140_pp0_iter3_reg[7 : 4];
        weights1_2_addr_13_reg_2162[7 : 4] <= zext_ln142_13_fu_1113_p1[7 : 4];
        weights1_2_addr_13_reg_2162_pp0_iter1_reg[7 : 4] <= weights1_2_addr_13_reg_2162[7 : 4];
        weights1_2_addr_13_reg_2162_pp0_iter2_reg[7 : 4] <= weights1_2_addr_13_reg_2162_pp0_iter1_reg[7 : 4];
        weights1_2_addr_13_reg_2162_pp0_iter3_reg[7 : 4] <= weights1_2_addr_13_reg_2162_pp0_iter2_reg[7 : 4];
        weights1_2_addr_13_reg_2162_pp0_iter4_reg[7 : 4] <= weights1_2_addr_13_reg_2162_pp0_iter3_reg[7 : 4];
        weights1_3_addr_12_reg_2146[7 : 4] <= zext_ln142_12_fu_1098_p1[7 : 4];
        weights1_3_addr_12_reg_2146_pp0_iter1_reg[7 : 4] <= weights1_3_addr_12_reg_2146[7 : 4];
        weights1_3_addr_12_reg_2146_pp0_iter2_reg[7 : 4] <= weights1_3_addr_12_reg_2146_pp0_iter1_reg[7 : 4];
        weights1_3_addr_12_reg_2146_pp0_iter3_reg[7 : 4] <= weights1_3_addr_12_reg_2146_pp0_iter2_reg[7 : 4];
        weights1_3_addr_12_reg_2146_pp0_iter4_reg[7 : 4] <= weights1_3_addr_12_reg_2146_pp0_iter3_reg[7 : 4];
        weights1_3_addr_13_reg_2167[7 : 4] <= zext_ln142_13_fu_1113_p1[7 : 4];
        weights1_3_addr_13_reg_2167_pp0_iter1_reg[7 : 4] <= weights1_3_addr_13_reg_2167[7 : 4];
        weights1_3_addr_13_reg_2167_pp0_iter2_reg[7 : 4] <= weights1_3_addr_13_reg_2167_pp0_iter1_reg[7 : 4];
        weights1_3_addr_13_reg_2167_pp0_iter3_reg[7 : 4] <= weights1_3_addr_13_reg_2167_pp0_iter2_reg[7 : 4];
        weights1_3_addr_13_reg_2167_pp0_iter4_reg[7 : 4] <= weights1_3_addr_13_reg_2167_pp0_iter3_reg[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights1_0_addr_14_reg_2212[7 : 4] <= zext_ln142_14_fu_1148_p1[7 : 4];
        weights1_0_addr_14_reg_2212_pp0_iter1_reg[7 : 4] <= weights1_0_addr_14_reg_2212[7 : 4];
        weights1_0_addr_14_reg_2212_pp0_iter2_reg[7 : 4] <= weights1_0_addr_14_reg_2212_pp0_iter1_reg[7 : 4];
        weights1_0_addr_14_reg_2212_pp0_iter3_reg[7 : 4] <= weights1_0_addr_14_reg_2212_pp0_iter2_reg[7 : 4];
        weights1_0_addr_14_reg_2212_pp0_iter4_reg[7 : 4] <= weights1_0_addr_14_reg_2212_pp0_iter3_reg[7 : 4];
        weights1_0_addr_15_reg_2236[7 : 4] <= zext_ln142_15_fu_1163_p1[7 : 4];
        weights1_0_addr_15_reg_2236_pp0_iter1_reg[7 : 4] <= weights1_0_addr_15_reg_2236[7 : 4];
        weights1_0_addr_15_reg_2236_pp0_iter2_reg[7 : 4] <= weights1_0_addr_15_reg_2236_pp0_iter1_reg[7 : 4];
        weights1_0_addr_15_reg_2236_pp0_iter3_reg[7 : 4] <= weights1_0_addr_15_reg_2236_pp0_iter2_reg[7 : 4];
        weights1_0_addr_15_reg_2236_pp0_iter4_reg[7 : 4] <= weights1_0_addr_15_reg_2236_pp0_iter3_reg[7 : 4];
        weights1_1_addr_14_reg_2218[7 : 4] <= zext_ln142_14_fu_1148_p1[7 : 4];
        weights1_1_addr_14_reg_2218_pp0_iter1_reg[7 : 4] <= weights1_1_addr_14_reg_2218[7 : 4];
        weights1_1_addr_14_reg_2218_pp0_iter2_reg[7 : 4] <= weights1_1_addr_14_reg_2218_pp0_iter1_reg[7 : 4];
        weights1_1_addr_14_reg_2218_pp0_iter3_reg[7 : 4] <= weights1_1_addr_14_reg_2218_pp0_iter2_reg[7 : 4];
        weights1_1_addr_14_reg_2218_pp0_iter4_reg[7 : 4] <= weights1_1_addr_14_reg_2218_pp0_iter3_reg[7 : 4];
        weights1_1_addr_15_reg_2241[7 : 4] <= zext_ln142_15_fu_1163_p1[7 : 4];
        weights1_1_addr_15_reg_2241_pp0_iter1_reg[7 : 4] <= weights1_1_addr_15_reg_2241[7 : 4];
        weights1_1_addr_15_reg_2241_pp0_iter2_reg[7 : 4] <= weights1_1_addr_15_reg_2241_pp0_iter1_reg[7 : 4];
        weights1_1_addr_15_reg_2241_pp0_iter3_reg[7 : 4] <= weights1_1_addr_15_reg_2241_pp0_iter2_reg[7 : 4];
        weights1_1_addr_15_reg_2241_pp0_iter4_reg[7 : 4] <= weights1_1_addr_15_reg_2241_pp0_iter3_reg[7 : 4];
        weights1_2_addr_14_reg_2224[7 : 4] <= zext_ln142_14_fu_1148_p1[7 : 4];
        weights1_2_addr_14_reg_2224_pp0_iter1_reg[7 : 4] <= weights1_2_addr_14_reg_2224[7 : 4];
        weights1_2_addr_14_reg_2224_pp0_iter2_reg[7 : 4] <= weights1_2_addr_14_reg_2224_pp0_iter1_reg[7 : 4];
        weights1_2_addr_14_reg_2224_pp0_iter3_reg[7 : 4] <= weights1_2_addr_14_reg_2224_pp0_iter2_reg[7 : 4];
        weights1_2_addr_14_reg_2224_pp0_iter4_reg[7 : 4] <= weights1_2_addr_14_reg_2224_pp0_iter3_reg[7 : 4];
        weights1_2_addr_15_reg_2246[7 : 4] <= zext_ln142_15_fu_1163_p1[7 : 4];
        weights1_2_addr_15_reg_2246_pp0_iter1_reg[7 : 4] <= weights1_2_addr_15_reg_2246[7 : 4];
        weights1_2_addr_15_reg_2246_pp0_iter2_reg[7 : 4] <= weights1_2_addr_15_reg_2246_pp0_iter1_reg[7 : 4];
        weights1_2_addr_15_reg_2246_pp0_iter3_reg[7 : 4] <= weights1_2_addr_15_reg_2246_pp0_iter2_reg[7 : 4];
        weights1_2_addr_15_reg_2246_pp0_iter4_reg[7 : 4] <= weights1_2_addr_15_reg_2246_pp0_iter3_reg[7 : 4];
        weights1_3_addr_14_reg_2230[7 : 4] <= zext_ln142_14_fu_1148_p1[7 : 4];
        weights1_3_addr_14_reg_2230_pp0_iter1_reg[7 : 4] <= weights1_3_addr_14_reg_2230[7 : 4];
        weights1_3_addr_14_reg_2230_pp0_iter2_reg[7 : 4] <= weights1_3_addr_14_reg_2230_pp0_iter1_reg[7 : 4];
        weights1_3_addr_14_reg_2230_pp0_iter3_reg[7 : 4] <= weights1_3_addr_14_reg_2230_pp0_iter2_reg[7 : 4];
        weights1_3_addr_14_reg_2230_pp0_iter4_reg[7 : 4] <= weights1_3_addr_14_reg_2230_pp0_iter3_reg[7 : 4];
        weights1_3_addr_15_reg_2251[7 : 4] <= zext_ln142_15_fu_1163_p1[7 : 4];
        weights1_3_addr_15_reg_2251_pp0_iter1_reg[7 : 4] <= weights1_3_addr_15_reg_2251[7 : 4];
        weights1_3_addr_15_reg_2251_pp0_iter2_reg[7 : 4] <= weights1_3_addr_15_reg_2251_pp0_iter1_reg[7 : 4];
        weights1_3_addr_15_reg_2251_pp0_iter3_reg[7 : 4] <= weights1_3_addr_15_reg_2251_pp0_iter2_reg[7 : 4];
        weights1_3_addr_15_reg_2251_pp0_iter4_reg[7 : 4] <= weights1_3_addr_15_reg_2251_pp0_iter3_reg[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_0_addr_2_reg_1732[7 : 4] <= zext_ln142_2_fu_848_p1[7 : 4];
        weights1_0_addr_2_reg_1732_pp0_iter1_reg[7 : 4] <= weights1_0_addr_2_reg_1732[7 : 4];
        weights1_0_addr_2_reg_1732_pp0_iter2_reg[7 : 4] <= weights1_0_addr_2_reg_1732_pp0_iter1_reg[7 : 4];
        weights1_0_addr_2_reg_1732_pp0_iter3_reg[7 : 4] <= weights1_0_addr_2_reg_1732_pp0_iter2_reg[7 : 4];
        weights1_0_addr_3_reg_1752[7 : 4] <= zext_ln142_3_fu_863_p1[7 : 4];
        weights1_0_addr_3_reg_1752_pp0_iter1_reg[7 : 4] <= weights1_0_addr_3_reg_1752[7 : 4];
        weights1_0_addr_3_reg_1752_pp0_iter2_reg[7 : 4] <= weights1_0_addr_3_reg_1752_pp0_iter1_reg[7 : 4];
        weights1_0_addr_3_reg_1752_pp0_iter3_reg[7 : 4] <= weights1_0_addr_3_reg_1752_pp0_iter2_reg[7 : 4];
        weights1_0_addr_3_reg_1752_pp0_iter4_reg[7 : 4] <= weights1_0_addr_3_reg_1752_pp0_iter3_reg[7 : 4];
        weights1_1_addr_2_reg_1737[7 : 4] <= zext_ln142_2_fu_848_p1[7 : 4];
        weights1_1_addr_2_reg_1737_pp0_iter1_reg[7 : 4] <= weights1_1_addr_2_reg_1737[7 : 4];
        weights1_1_addr_2_reg_1737_pp0_iter2_reg[7 : 4] <= weights1_1_addr_2_reg_1737_pp0_iter1_reg[7 : 4];
        weights1_1_addr_2_reg_1737_pp0_iter3_reg[7 : 4] <= weights1_1_addr_2_reg_1737_pp0_iter2_reg[7 : 4];
        weights1_1_addr_3_reg_1758[7 : 4] <= zext_ln142_3_fu_863_p1[7 : 4];
        weights1_1_addr_3_reg_1758_pp0_iter1_reg[7 : 4] <= weights1_1_addr_3_reg_1758[7 : 4];
        weights1_1_addr_3_reg_1758_pp0_iter2_reg[7 : 4] <= weights1_1_addr_3_reg_1758_pp0_iter1_reg[7 : 4];
        weights1_1_addr_3_reg_1758_pp0_iter3_reg[7 : 4] <= weights1_1_addr_3_reg_1758_pp0_iter2_reg[7 : 4];
        weights1_1_addr_3_reg_1758_pp0_iter4_reg[7 : 4] <= weights1_1_addr_3_reg_1758_pp0_iter3_reg[7 : 4];
        weights1_2_addr_2_reg_1742[7 : 4] <= zext_ln142_2_fu_848_p1[7 : 4];
        weights1_2_addr_2_reg_1742_pp0_iter1_reg[7 : 4] <= weights1_2_addr_2_reg_1742[7 : 4];
        weights1_2_addr_2_reg_1742_pp0_iter2_reg[7 : 4] <= weights1_2_addr_2_reg_1742_pp0_iter1_reg[7 : 4];
        weights1_2_addr_2_reg_1742_pp0_iter3_reg[7 : 4] <= weights1_2_addr_2_reg_1742_pp0_iter2_reg[7 : 4];
        weights1_2_addr_3_reg_1764[7 : 4] <= zext_ln142_3_fu_863_p1[7 : 4];
        weights1_2_addr_3_reg_1764_pp0_iter1_reg[7 : 4] <= weights1_2_addr_3_reg_1764[7 : 4];
        weights1_2_addr_3_reg_1764_pp0_iter2_reg[7 : 4] <= weights1_2_addr_3_reg_1764_pp0_iter1_reg[7 : 4];
        weights1_2_addr_3_reg_1764_pp0_iter3_reg[7 : 4] <= weights1_2_addr_3_reg_1764_pp0_iter2_reg[7 : 4];
        weights1_2_addr_3_reg_1764_pp0_iter4_reg[7 : 4] <= weights1_2_addr_3_reg_1764_pp0_iter3_reg[7 : 4];
        weights1_3_addr_2_reg_1747[7 : 4] <= zext_ln142_2_fu_848_p1[7 : 4];
        weights1_3_addr_2_reg_1747_pp0_iter1_reg[7 : 4] <= weights1_3_addr_2_reg_1747[7 : 4];
        weights1_3_addr_2_reg_1747_pp0_iter2_reg[7 : 4] <= weights1_3_addr_2_reg_1747_pp0_iter1_reg[7 : 4];
        weights1_3_addr_2_reg_1747_pp0_iter3_reg[7 : 4] <= weights1_3_addr_2_reg_1747_pp0_iter2_reg[7 : 4];
        weights1_3_addr_3_reg_1770[7 : 4] <= zext_ln142_3_fu_863_p1[7 : 4];
        weights1_3_addr_3_reg_1770_pp0_iter1_reg[7 : 4] <= weights1_3_addr_3_reg_1770[7 : 4];
        weights1_3_addr_3_reg_1770_pp0_iter2_reg[7 : 4] <= weights1_3_addr_3_reg_1770_pp0_iter1_reg[7 : 4];
        weights1_3_addr_3_reg_1770_pp0_iter3_reg[7 : 4] <= weights1_3_addr_3_reg_1770_pp0_iter2_reg[7 : 4];
        weights1_3_addr_3_reg_1770_pp0_iter4_reg[7 : 4] <= weights1_3_addr_3_reg_1770_pp0_iter3_reg[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_0_addr_4_reg_1796[7 : 4] <= zext_ln142_4_fu_898_p1[7 : 4];
        weights1_0_addr_4_reg_1796_pp0_iter1_reg[7 : 4] <= weights1_0_addr_4_reg_1796[7 : 4];
        weights1_0_addr_4_reg_1796_pp0_iter2_reg[7 : 4] <= weights1_0_addr_4_reg_1796_pp0_iter1_reg[7 : 4];
        weights1_0_addr_4_reg_1796_pp0_iter3_reg[7 : 4] <= weights1_0_addr_4_reg_1796_pp0_iter2_reg[7 : 4];
        weights1_0_addr_4_reg_1796_pp0_iter4_reg[7 : 4] <= weights1_0_addr_4_reg_1796_pp0_iter3_reg[7 : 4];
        weights1_0_addr_5_reg_1820[7 : 4] <= zext_ln142_5_fu_913_p1[7 : 4];
        weights1_0_addr_5_reg_1820_pp0_iter1_reg[7 : 4] <= weights1_0_addr_5_reg_1820[7 : 4];
        weights1_0_addr_5_reg_1820_pp0_iter2_reg[7 : 4] <= weights1_0_addr_5_reg_1820_pp0_iter1_reg[7 : 4];
        weights1_0_addr_5_reg_1820_pp0_iter3_reg[7 : 4] <= weights1_0_addr_5_reg_1820_pp0_iter2_reg[7 : 4];
        weights1_0_addr_5_reg_1820_pp0_iter4_reg[7 : 4] <= weights1_0_addr_5_reg_1820_pp0_iter3_reg[7 : 4];
        weights1_1_addr_4_reg_1802[7 : 4] <= zext_ln142_4_fu_898_p1[7 : 4];
        weights1_1_addr_4_reg_1802_pp0_iter1_reg[7 : 4] <= weights1_1_addr_4_reg_1802[7 : 4];
        weights1_1_addr_4_reg_1802_pp0_iter2_reg[7 : 4] <= weights1_1_addr_4_reg_1802_pp0_iter1_reg[7 : 4];
        weights1_1_addr_4_reg_1802_pp0_iter3_reg[7 : 4] <= weights1_1_addr_4_reg_1802_pp0_iter2_reg[7 : 4];
        weights1_1_addr_4_reg_1802_pp0_iter4_reg[7 : 4] <= weights1_1_addr_4_reg_1802_pp0_iter3_reg[7 : 4];
        weights1_1_addr_5_reg_1826[7 : 4] <= zext_ln142_5_fu_913_p1[7 : 4];
        weights1_1_addr_5_reg_1826_pp0_iter1_reg[7 : 4] <= weights1_1_addr_5_reg_1826[7 : 4];
        weights1_1_addr_5_reg_1826_pp0_iter2_reg[7 : 4] <= weights1_1_addr_5_reg_1826_pp0_iter1_reg[7 : 4];
        weights1_1_addr_5_reg_1826_pp0_iter3_reg[7 : 4] <= weights1_1_addr_5_reg_1826_pp0_iter2_reg[7 : 4];
        weights1_1_addr_5_reg_1826_pp0_iter4_reg[7 : 4] <= weights1_1_addr_5_reg_1826_pp0_iter3_reg[7 : 4];
        weights1_2_addr_4_reg_1808[7 : 4] <= zext_ln142_4_fu_898_p1[7 : 4];
        weights1_2_addr_4_reg_1808_pp0_iter1_reg[7 : 4] <= weights1_2_addr_4_reg_1808[7 : 4];
        weights1_2_addr_4_reg_1808_pp0_iter2_reg[7 : 4] <= weights1_2_addr_4_reg_1808_pp0_iter1_reg[7 : 4];
        weights1_2_addr_4_reg_1808_pp0_iter3_reg[7 : 4] <= weights1_2_addr_4_reg_1808_pp0_iter2_reg[7 : 4];
        weights1_2_addr_4_reg_1808_pp0_iter4_reg[7 : 4] <= weights1_2_addr_4_reg_1808_pp0_iter3_reg[7 : 4];
        weights1_2_addr_5_reg_1832[7 : 4] <= zext_ln142_5_fu_913_p1[7 : 4];
        weights1_2_addr_5_reg_1832_pp0_iter1_reg[7 : 4] <= weights1_2_addr_5_reg_1832[7 : 4];
        weights1_2_addr_5_reg_1832_pp0_iter2_reg[7 : 4] <= weights1_2_addr_5_reg_1832_pp0_iter1_reg[7 : 4];
        weights1_2_addr_5_reg_1832_pp0_iter3_reg[7 : 4] <= weights1_2_addr_5_reg_1832_pp0_iter2_reg[7 : 4];
        weights1_2_addr_5_reg_1832_pp0_iter4_reg[7 : 4] <= weights1_2_addr_5_reg_1832_pp0_iter3_reg[7 : 4];
        weights1_3_addr_4_reg_1814[7 : 4] <= zext_ln142_4_fu_898_p1[7 : 4];
        weights1_3_addr_4_reg_1814_pp0_iter1_reg[7 : 4] <= weights1_3_addr_4_reg_1814[7 : 4];
        weights1_3_addr_4_reg_1814_pp0_iter2_reg[7 : 4] <= weights1_3_addr_4_reg_1814_pp0_iter1_reg[7 : 4];
        weights1_3_addr_4_reg_1814_pp0_iter3_reg[7 : 4] <= weights1_3_addr_4_reg_1814_pp0_iter2_reg[7 : 4];
        weights1_3_addr_4_reg_1814_pp0_iter4_reg[7 : 4] <= weights1_3_addr_4_reg_1814_pp0_iter3_reg[7 : 4];
        weights1_3_addr_5_reg_1838[7 : 4] <= zext_ln142_5_fu_913_p1[7 : 4];
        weights1_3_addr_5_reg_1838_pp0_iter1_reg[7 : 4] <= weights1_3_addr_5_reg_1838[7 : 4];
        weights1_3_addr_5_reg_1838_pp0_iter2_reg[7 : 4] <= weights1_3_addr_5_reg_1838_pp0_iter1_reg[7 : 4];
        weights1_3_addr_5_reg_1838_pp0_iter3_reg[7 : 4] <= weights1_3_addr_5_reg_1838_pp0_iter2_reg[7 : 4];
        weights1_3_addr_5_reg_1838_pp0_iter4_reg[7 : 4] <= weights1_3_addr_5_reg_1838_pp0_iter3_reg[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_0_addr_6_reg_1864[7 : 4] <= zext_ln142_6_fu_948_p1[7 : 4];
        weights1_0_addr_6_reg_1864_pp0_iter1_reg[7 : 4] <= weights1_0_addr_6_reg_1864[7 : 4];
        weights1_0_addr_6_reg_1864_pp0_iter2_reg[7 : 4] <= weights1_0_addr_6_reg_1864_pp0_iter1_reg[7 : 4];
        weights1_0_addr_6_reg_1864_pp0_iter3_reg[7 : 4] <= weights1_0_addr_6_reg_1864_pp0_iter2_reg[7 : 4];
        weights1_0_addr_6_reg_1864_pp0_iter4_reg[7 : 4] <= weights1_0_addr_6_reg_1864_pp0_iter3_reg[7 : 4];
        weights1_0_addr_7_reg_1888[7 : 4] <= zext_ln142_7_fu_963_p1[7 : 4];
        weights1_0_addr_7_reg_1888_pp0_iter1_reg[7 : 4] <= weights1_0_addr_7_reg_1888[7 : 4];
        weights1_0_addr_7_reg_1888_pp0_iter2_reg[7 : 4] <= weights1_0_addr_7_reg_1888_pp0_iter1_reg[7 : 4];
        weights1_0_addr_7_reg_1888_pp0_iter3_reg[7 : 4] <= weights1_0_addr_7_reg_1888_pp0_iter2_reg[7 : 4];
        weights1_0_addr_7_reg_1888_pp0_iter4_reg[7 : 4] <= weights1_0_addr_7_reg_1888_pp0_iter3_reg[7 : 4];
        weights1_1_addr_6_reg_1870[7 : 4] <= zext_ln142_6_fu_948_p1[7 : 4];
        weights1_1_addr_6_reg_1870_pp0_iter1_reg[7 : 4] <= weights1_1_addr_6_reg_1870[7 : 4];
        weights1_1_addr_6_reg_1870_pp0_iter2_reg[7 : 4] <= weights1_1_addr_6_reg_1870_pp0_iter1_reg[7 : 4];
        weights1_1_addr_6_reg_1870_pp0_iter3_reg[7 : 4] <= weights1_1_addr_6_reg_1870_pp0_iter2_reg[7 : 4];
        weights1_1_addr_6_reg_1870_pp0_iter4_reg[7 : 4] <= weights1_1_addr_6_reg_1870_pp0_iter3_reg[7 : 4];
        weights1_1_addr_7_reg_1894[7 : 4] <= zext_ln142_7_fu_963_p1[7 : 4];
        weights1_1_addr_7_reg_1894_pp0_iter1_reg[7 : 4] <= weights1_1_addr_7_reg_1894[7 : 4];
        weights1_1_addr_7_reg_1894_pp0_iter2_reg[7 : 4] <= weights1_1_addr_7_reg_1894_pp0_iter1_reg[7 : 4];
        weights1_1_addr_7_reg_1894_pp0_iter3_reg[7 : 4] <= weights1_1_addr_7_reg_1894_pp0_iter2_reg[7 : 4];
        weights1_1_addr_7_reg_1894_pp0_iter4_reg[7 : 4] <= weights1_1_addr_7_reg_1894_pp0_iter3_reg[7 : 4];
        weights1_2_addr_6_reg_1876[7 : 4] <= zext_ln142_6_fu_948_p1[7 : 4];
        weights1_2_addr_6_reg_1876_pp0_iter1_reg[7 : 4] <= weights1_2_addr_6_reg_1876[7 : 4];
        weights1_2_addr_6_reg_1876_pp0_iter2_reg[7 : 4] <= weights1_2_addr_6_reg_1876_pp0_iter1_reg[7 : 4];
        weights1_2_addr_6_reg_1876_pp0_iter3_reg[7 : 4] <= weights1_2_addr_6_reg_1876_pp0_iter2_reg[7 : 4];
        weights1_2_addr_6_reg_1876_pp0_iter4_reg[7 : 4] <= weights1_2_addr_6_reg_1876_pp0_iter3_reg[7 : 4];
        weights1_2_addr_7_reg_1900[7 : 4] <= zext_ln142_7_fu_963_p1[7 : 4];
        weights1_2_addr_7_reg_1900_pp0_iter1_reg[7 : 4] <= weights1_2_addr_7_reg_1900[7 : 4];
        weights1_2_addr_7_reg_1900_pp0_iter2_reg[7 : 4] <= weights1_2_addr_7_reg_1900_pp0_iter1_reg[7 : 4];
        weights1_2_addr_7_reg_1900_pp0_iter3_reg[7 : 4] <= weights1_2_addr_7_reg_1900_pp0_iter2_reg[7 : 4];
        weights1_2_addr_7_reg_1900_pp0_iter4_reg[7 : 4] <= weights1_2_addr_7_reg_1900_pp0_iter3_reg[7 : 4];
        weights1_3_addr_6_reg_1882[7 : 4] <= zext_ln142_6_fu_948_p1[7 : 4];
        weights1_3_addr_6_reg_1882_pp0_iter1_reg[7 : 4] <= weights1_3_addr_6_reg_1882[7 : 4];
        weights1_3_addr_6_reg_1882_pp0_iter2_reg[7 : 4] <= weights1_3_addr_6_reg_1882_pp0_iter1_reg[7 : 4];
        weights1_3_addr_6_reg_1882_pp0_iter3_reg[7 : 4] <= weights1_3_addr_6_reg_1882_pp0_iter2_reg[7 : 4];
        weights1_3_addr_6_reg_1882_pp0_iter4_reg[7 : 4] <= weights1_3_addr_6_reg_1882_pp0_iter3_reg[7 : 4];
        weights1_3_addr_7_reg_1906[7 : 4] <= zext_ln142_7_fu_963_p1[7 : 4];
        weights1_3_addr_7_reg_1906_pp0_iter1_reg[7 : 4] <= weights1_3_addr_7_reg_1906[7 : 4];
        weights1_3_addr_7_reg_1906_pp0_iter2_reg[7 : 4] <= weights1_3_addr_7_reg_1906_pp0_iter1_reg[7 : 4];
        weights1_3_addr_7_reg_1906_pp0_iter3_reg[7 : 4] <= weights1_3_addr_7_reg_1906_pp0_iter2_reg[7 : 4];
        weights1_3_addr_7_reg_1906_pp0_iter4_reg[7 : 4] <= weights1_3_addr_7_reg_1906_pp0_iter3_reg[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_0_addr_8_reg_1952[7 : 4] <= zext_ln142_8_fu_998_p1[7 : 4];
        weights1_0_addr_8_reg_1952_pp0_iter1_reg[7 : 4] <= weights1_0_addr_8_reg_1952[7 : 4];
        weights1_0_addr_8_reg_1952_pp0_iter2_reg[7 : 4] <= weights1_0_addr_8_reg_1952_pp0_iter1_reg[7 : 4];
        weights1_0_addr_8_reg_1952_pp0_iter3_reg[7 : 4] <= weights1_0_addr_8_reg_1952_pp0_iter2_reg[7 : 4];
        weights1_0_addr_8_reg_1952_pp0_iter4_reg[7 : 4] <= weights1_0_addr_8_reg_1952_pp0_iter3_reg[7 : 4];
        weights1_0_addr_9_reg_1976[7 : 4] <= zext_ln142_9_fu_1013_p1[7 : 4];
        weights1_0_addr_9_reg_1976_pp0_iter1_reg[7 : 4] <= weights1_0_addr_9_reg_1976[7 : 4];
        weights1_0_addr_9_reg_1976_pp0_iter2_reg[7 : 4] <= weights1_0_addr_9_reg_1976_pp0_iter1_reg[7 : 4];
        weights1_0_addr_9_reg_1976_pp0_iter3_reg[7 : 4] <= weights1_0_addr_9_reg_1976_pp0_iter2_reg[7 : 4];
        weights1_0_addr_9_reg_1976_pp0_iter4_reg[7 : 4] <= weights1_0_addr_9_reg_1976_pp0_iter3_reg[7 : 4];
        weights1_1_addr_8_reg_1958[7 : 4] <= zext_ln142_8_fu_998_p1[7 : 4];
        weights1_1_addr_8_reg_1958_pp0_iter1_reg[7 : 4] <= weights1_1_addr_8_reg_1958[7 : 4];
        weights1_1_addr_8_reg_1958_pp0_iter2_reg[7 : 4] <= weights1_1_addr_8_reg_1958_pp0_iter1_reg[7 : 4];
        weights1_1_addr_8_reg_1958_pp0_iter3_reg[7 : 4] <= weights1_1_addr_8_reg_1958_pp0_iter2_reg[7 : 4];
        weights1_1_addr_8_reg_1958_pp0_iter4_reg[7 : 4] <= weights1_1_addr_8_reg_1958_pp0_iter3_reg[7 : 4];
        weights1_1_addr_9_reg_1982[7 : 4] <= zext_ln142_9_fu_1013_p1[7 : 4];
        weights1_1_addr_9_reg_1982_pp0_iter1_reg[7 : 4] <= weights1_1_addr_9_reg_1982[7 : 4];
        weights1_1_addr_9_reg_1982_pp0_iter2_reg[7 : 4] <= weights1_1_addr_9_reg_1982_pp0_iter1_reg[7 : 4];
        weights1_1_addr_9_reg_1982_pp0_iter3_reg[7 : 4] <= weights1_1_addr_9_reg_1982_pp0_iter2_reg[7 : 4];
        weights1_1_addr_9_reg_1982_pp0_iter4_reg[7 : 4] <= weights1_1_addr_9_reg_1982_pp0_iter3_reg[7 : 4];
        weights1_2_addr_8_reg_1964[7 : 4] <= zext_ln142_8_fu_998_p1[7 : 4];
        weights1_2_addr_8_reg_1964_pp0_iter1_reg[7 : 4] <= weights1_2_addr_8_reg_1964[7 : 4];
        weights1_2_addr_8_reg_1964_pp0_iter2_reg[7 : 4] <= weights1_2_addr_8_reg_1964_pp0_iter1_reg[7 : 4];
        weights1_2_addr_8_reg_1964_pp0_iter3_reg[7 : 4] <= weights1_2_addr_8_reg_1964_pp0_iter2_reg[7 : 4];
        weights1_2_addr_8_reg_1964_pp0_iter4_reg[7 : 4] <= weights1_2_addr_8_reg_1964_pp0_iter3_reg[7 : 4];
        weights1_2_addr_9_reg_1988[7 : 4] <= zext_ln142_9_fu_1013_p1[7 : 4];
        weights1_2_addr_9_reg_1988_pp0_iter1_reg[7 : 4] <= weights1_2_addr_9_reg_1988[7 : 4];
        weights1_2_addr_9_reg_1988_pp0_iter2_reg[7 : 4] <= weights1_2_addr_9_reg_1988_pp0_iter1_reg[7 : 4];
        weights1_2_addr_9_reg_1988_pp0_iter3_reg[7 : 4] <= weights1_2_addr_9_reg_1988_pp0_iter2_reg[7 : 4];
        weights1_2_addr_9_reg_1988_pp0_iter4_reg[7 : 4] <= weights1_2_addr_9_reg_1988_pp0_iter3_reg[7 : 4];
        weights1_3_addr_8_reg_1970[7 : 4] <= zext_ln142_8_fu_998_p1[7 : 4];
        weights1_3_addr_8_reg_1970_pp0_iter1_reg[7 : 4] <= weights1_3_addr_8_reg_1970[7 : 4];
        weights1_3_addr_8_reg_1970_pp0_iter2_reg[7 : 4] <= weights1_3_addr_8_reg_1970_pp0_iter1_reg[7 : 4];
        weights1_3_addr_8_reg_1970_pp0_iter3_reg[7 : 4] <= weights1_3_addr_8_reg_1970_pp0_iter2_reg[7 : 4];
        weights1_3_addr_8_reg_1970_pp0_iter4_reg[7 : 4] <= weights1_3_addr_8_reg_1970_pp0_iter3_reg[7 : 4];
        weights1_3_addr_9_reg_1994[7 : 4] <= zext_ln142_9_fu_1013_p1[7 : 4];
        weights1_3_addr_9_reg_1994_pp0_iter1_reg[7 : 4] <= weights1_3_addr_9_reg_1994[7 : 4];
        weights1_3_addr_9_reg_1994_pp0_iter2_reg[7 : 4] <= weights1_3_addr_9_reg_1994_pp0_iter1_reg[7 : 4];
        weights1_3_addr_9_reg_1994_pp0_iter3_reg[7 : 4] <= weights1_3_addr_9_reg_1994_pp0_iter2_reg[7 : 4];
        weights1_3_addr_9_reg_1994_pp0_iter4_reg[7 : 4] <= weights1_3_addr_9_reg_1994_pp0_iter3_reg[7 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights1_0_load_11_reg_2108 <= weights1_0_q0;
        weights1_1_load_11_reg_2113 <= weights1_1_q0;
        weights1_2_load_11_reg_2118 <= weights1_2_q0;
        weights1_3_load_11_reg_2123 <= weights1_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights1_0_load_13_reg_2192 <= weights1_0_q0;
        weights1_1_load_13_reg_2197 <= weights1_1_q0;
        weights1_2_load_13_reg_2202 <= weights1_2_q0;
        weights1_3_load_13_reg_2207 <= weights1_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights1_0_load_15_reg_2276 <= weights1_0_q0;
        weights1_1_load_15_reg_2281 <= weights1_1_q0;
        weights1_2_load_15_reg_2286 <= weights1_2_q0;
        weights1_3_load_15_reg_2291 <= weights1_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_0_load_7_reg_1932 <= weights1_0_q0;
        weights1_1_load_7_reg_1937 <= weights1_1_q0;
        weights1_2_load_7_reg_1942 <= weights1_2_q0;
        weights1_3_load_7_reg_1947 <= weights1_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights1_0_load_9_reg_2020 <= weights1_0_q0;
        weights1_1_load_9_reg_2025 <= weights1_1_q0;
        weights1_2_load_9_reg_2030 <= weights1_2_q0;
        weights1_3_load_9_reg_2035 <= weights1_3_q0;
    end
end
always @ (*) begin
    if (((icmp_ln140_reg_1684 == 1'd1) & (1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to4 = 1'b1;
    end else begin
        ap_idle_pp0_1to4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i = 4'd0;
    end else begin
        ap_sig_allocacmp_i = i_1_fu_70;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_628_p0 = bitcast_ln142_120_fu_1335_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_628_p0 = bitcast_ln142_112_fu_1315_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_628_p0 = bitcast_ln142_104_fu_1299_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_628_p0 = bitcast_ln142_96_fu_1279_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_628_p0 = bitcast_ln142_88_fu_1263_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_628_p0 = bitcast_ln142_80_fu_1243_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_628_p0 = bitcast_ln142_72_fu_1227_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_628_p0 = bitcast_ln142_64_fu_1207_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_628_p0 = bitcast_ln142_56_fu_1191_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_628_p0 = bitcast_ln142_48_fu_1171_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_628_p0 = bitcast_ln142_40_fu_1121_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_628_p0 = bitcast_ln142_32_fu_1071_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_628_p0 = bitcast_ln142_24_fu_1021_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_628_p0 = bitcast_ln142_16_fu_971_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_628_p0 = bitcast_ln142_8_fu_921_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_628_p0 = bitcast_ln142_fu_871_p1;
    end else begin
        grp_fu_628_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_632_p0 = bitcast_ln142_122_fu_1339_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_632_p0 = bitcast_ln142_114_fu_1320_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_632_p0 = bitcast_ln142_106_fu_1303_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_632_p0 = bitcast_ln142_98_fu_1284_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_632_p0 = bitcast_ln142_90_fu_1267_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_632_p0 = bitcast_ln142_82_fu_1248_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_632_p0 = bitcast_ln142_74_fu_1231_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_632_p0 = bitcast_ln142_66_fu_1212_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_632_p0 = bitcast_ln142_58_fu_1195_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_632_p0 = bitcast_ln142_50_fu_1176_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_632_p0 = bitcast_ln142_42_fu_1126_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_632_p0 = bitcast_ln142_34_fu_1076_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_632_p0 = bitcast_ln142_26_fu_1026_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_632_p0 = bitcast_ln142_18_fu_976_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_632_p0 = bitcast_ln142_10_fu_926_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_632_p0 = bitcast_ln142_2_fu_876_p1;
    end else begin
        grp_fu_632_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_636_p0 = bitcast_ln142_124_fu_1343_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_636_p0 = bitcast_ln142_116_fu_1325_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_636_p0 = bitcast_ln142_108_fu_1307_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_636_p0 = bitcast_ln142_100_fu_1289_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_636_p0 = bitcast_ln142_92_fu_1271_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_636_p0 = bitcast_ln142_84_fu_1253_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_636_p0 = bitcast_ln142_76_fu_1235_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_636_p0 = bitcast_ln142_68_fu_1217_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_636_p0 = bitcast_ln142_60_fu_1199_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_636_p0 = bitcast_ln142_52_fu_1181_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_636_p0 = bitcast_ln142_44_fu_1131_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_636_p0 = bitcast_ln142_36_fu_1081_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_636_p0 = bitcast_ln142_28_fu_1031_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_636_p0 = bitcast_ln142_20_fu_981_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_636_p0 = bitcast_ln142_12_fu_931_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_636_p0 = bitcast_ln142_4_fu_881_p1;
    end else begin
        grp_fu_636_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_640_p0 = bitcast_ln142_126_fu_1347_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_640_p0 = bitcast_ln142_118_fu_1330_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_640_p0 = bitcast_ln142_110_fu_1311_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_640_p0 = bitcast_ln142_102_fu_1294_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_640_p0 = bitcast_ln142_94_fu_1275_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_640_p0 = bitcast_ln142_86_fu_1258_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_640_p0 = bitcast_ln142_78_fu_1239_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_640_p0 = bitcast_ln142_70_fu_1222_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_640_p0 = bitcast_ln142_62_fu_1203_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_640_p0 = bitcast_ln142_54_fu_1186_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_640_p0 = bitcast_ln142_46_fu_1136_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_640_p0 = bitcast_ln142_38_fu_1086_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_640_p0 = bitcast_ln142_30_fu_1036_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_640_p0 = bitcast_ln142_22_fu_986_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_640_p0 = bitcast_ln142_14_fu_936_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_640_p0 = bitcast_ln142_6_fu_886_p1;
    end else begin
        grp_fu_640_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights1_0_address0_local = weights1_0_addr_15_reg_2236_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights1_0_address0_local = weights1_0_addr_14_reg_2212_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights1_0_address0_local = weights1_0_addr_13_reg_2152_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights1_0_address0_local = weights1_0_addr_12_reg_2128_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights1_0_address0_local = weights1_0_addr_10_reg_2040_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights1_0_address0_local = weights1_0_addr_8_reg_1952_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights1_0_address0_local = weights1_0_addr_6_reg_1864_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights1_0_address0_local = weights1_0_addr_4_reg_1796_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights1_0_address0_local = zext_ln142_15_fu_1163_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights1_0_address0_local = zext_ln142_13_fu_1113_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights1_0_address0_local = zext_ln142_11_fu_1063_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_0_address0_local = zext_ln142_9_fu_1013_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_0_address0_local = zext_ln142_7_fu_963_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_0_address0_local = zext_ln142_5_fu_913_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_0_address0_local = zext_ln142_3_fu_863_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_0_address0_local = zext_ln142_1_fu_828_p1;
    end else begin
        weights1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights1_0_address1_local = weights1_0_addr_11_reg_2064_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights1_0_address1_local = weights1_0_addr_9_reg_1976_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights1_0_address1_local = weights1_0_addr_7_reg_1888_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights1_0_address1_local = weights1_0_addr_5_reg_1820_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights1_0_address1_local = weights1_0_addr_3_reg_1752_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights1_0_address1_local = weights1_0_addr_2_reg_1732_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights1_0_address1_local = weights1_0_addr_1_reg_1708_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights1_0_address1_local = weights1_0_addr_reg_1688_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights1_0_address1_local = zext_ln142_14_fu_1148_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights1_0_address1_local = zext_ln142_12_fu_1098_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights1_0_address1_local = zext_ln142_10_fu_1048_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_0_address1_local = zext_ln142_8_fu_998_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_0_address1_local = zext_ln142_6_fu_948_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_0_address1_local = zext_ln142_4_fu_898_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_0_address1_local = zext_ln142_2_fu_848_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_0_address1_local = zext_ln142_fu_812_p1;
    end else begin
        weights1_0_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_0_ce0_local = 1'b1;
    end else begin
        weights1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_0_ce1_local = 1'b1;
    end else begin
        weights1_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            weights1_0_d0_local = bitcast_ln142_121_fu_1631_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            weights1_0_d0_local = bitcast_ln142_113_fu_1611_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            weights1_0_d0_local = bitcast_ln142_105_fu_1591_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            weights1_0_d0_local = bitcast_ln142_97_fu_1571_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            weights1_0_d0_local = bitcast_ln142_81_fu_1539_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            weights1_0_d0_local = bitcast_ln142_65_fu_1507_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            weights1_0_d0_local = bitcast_ln142_49_fu_1471_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            weights1_0_d0_local = bitcast_ln142_33_fu_1431_p1;
        end else begin
            weights1_0_d0_local = 'bx;
        end
    end else begin
        weights1_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights1_0_d1_local = bitcast_ln142_89_fu_1555_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights1_0_d1_local = bitcast_ln142_73_fu_1523_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights1_0_d1_local = bitcast_ln142_57_fu_1491_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights1_0_d1_local = bitcast_ln142_41_fu_1451_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights1_0_d1_local = bitcast_ln142_25_fu_1411_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights1_0_d1_local = bitcast_ln142_17_fu_1391_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights1_0_d1_local = bitcast_ln142_9_fu_1371_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights1_0_d1_local = bitcast_ln142_1_fu_1351_p1;
    end else begin
        weights1_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        weights1_0_we0_local = 1'b1;
    end else begin
        weights1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        weights1_0_we1_local = 1'b1;
    end else begin
        weights1_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights1_1_address0_local = weights1_1_addr_15_reg_2241_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights1_1_address0_local = weights1_1_addr_14_reg_2218_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights1_1_address0_local = weights1_1_addr_13_reg_2157_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights1_1_address0_local = weights1_1_addr_12_reg_2134_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights1_1_address0_local = weights1_1_addr_10_reg_2046_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights1_1_address0_local = weights1_1_addr_8_reg_1958_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights1_1_address0_local = weights1_1_addr_6_reg_1870_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights1_1_address0_local = weights1_1_addr_4_reg_1802_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights1_1_address0_local = zext_ln142_15_fu_1163_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights1_1_address0_local = zext_ln142_13_fu_1113_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights1_1_address0_local = zext_ln142_11_fu_1063_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_1_address0_local = zext_ln142_9_fu_1013_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_1_address0_local = zext_ln142_7_fu_963_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_1_address0_local = zext_ln142_5_fu_913_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_1_address0_local = zext_ln142_3_fu_863_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_1_address0_local = zext_ln142_1_fu_828_p1;
    end else begin
        weights1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights1_1_address1_local = weights1_1_addr_11_reg_2070_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights1_1_address1_local = weights1_1_addr_9_reg_1982_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights1_1_address1_local = weights1_1_addr_7_reg_1894_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights1_1_address1_local = weights1_1_addr_5_reg_1826_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights1_1_address1_local = weights1_1_addr_3_reg_1758_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights1_1_address1_local = weights1_1_addr_2_reg_1737_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights1_1_address1_local = weights1_1_addr_1_reg_1714_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights1_1_address1_local = weights1_1_addr_reg_1693_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights1_1_address1_local = zext_ln142_14_fu_1148_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights1_1_address1_local = zext_ln142_12_fu_1098_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights1_1_address1_local = zext_ln142_10_fu_1048_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_1_address1_local = zext_ln142_8_fu_998_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_1_address1_local = zext_ln142_6_fu_948_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_1_address1_local = zext_ln142_4_fu_898_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_1_address1_local = zext_ln142_2_fu_848_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_1_address1_local = zext_ln142_fu_812_p1;
    end else begin
        weights1_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_1_ce0_local = 1'b1;
    end else begin
        weights1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_1_ce1_local = 1'b1;
    end else begin
        weights1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            weights1_1_d0_local = bitcast_ln142_123_fu_1636_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            weights1_1_d0_local = bitcast_ln142_115_fu_1616_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            weights1_1_d0_local = bitcast_ln142_107_fu_1596_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            weights1_1_d0_local = bitcast_ln142_99_fu_1576_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            weights1_1_d0_local = bitcast_ln142_83_fu_1543_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            weights1_1_d0_local = bitcast_ln142_67_fu_1511_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            weights1_1_d0_local = bitcast_ln142_51_fu_1476_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            weights1_1_d0_local = bitcast_ln142_35_fu_1436_p1;
        end else begin
            weights1_1_d0_local = 'bx;
        end
    end else begin
        weights1_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights1_1_d1_local = bitcast_ln142_91_fu_1559_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights1_1_d1_local = bitcast_ln142_75_fu_1527_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights1_1_d1_local = bitcast_ln142_59_fu_1495_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights1_1_d1_local = bitcast_ln142_43_fu_1456_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights1_1_d1_local = bitcast_ln142_27_fu_1416_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights1_1_d1_local = bitcast_ln142_19_fu_1396_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights1_1_d1_local = bitcast_ln142_11_fu_1376_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights1_1_d1_local = bitcast_ln142_3_fu_1356_p1;
    end else begin
        weights1_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        weights1_1_we0_local = 1'b1;
    end else begin
        weights1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        weights1_1_we1_local = 1'b1;
    end else begin
        weights1_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights1_2_address0_local = weights1_2_addr_15_reg_2246_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights1_2_address0_local = weights1_2_addr_14_reg_2224_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights1_2_address0_local = weights1_2_addr_13_reg_2162_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights1_2_address0_local = weights1_2_addr_12_reg_2140_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights1_2_address0_local = weights1_2_addr_10_reg_2052_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights1_2_address0_local = weights1_2_addr_8_reg_1964_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights1_2_address0_local = weights1_2_addr_6_reg_1876_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights1_2_address0_local = weights1_2_addr_4_reg_1808_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights1_2_address0_local = zext_ln142_15_fu_1163_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights1_2_address0_local = zext_ln142_13_fu_1113_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights1_2_address0_local = zext_ln142_11_fu_1063_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_2_address0_local = zext_ln142_9_fu_1013_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_2_address0_local = zext_ln142_7_fu_963_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_2_address0_local = zext_ln142_5_fu_913_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_2_address0_local = zext_ln142_3_fu_863_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_2_address0_local = zext_ln142_1_fu_828_p1;
    end else begin
        weights1_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights1_2_address1_local = weights1_2_addr_11_reg_2076_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights1_2_address1_local = weights1_2_addr_9_reg_1988_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights1_2_address1_local = weights1_2_addr_7_reg_1900_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights1_2_address1_local = weights1_2_addr_5_reg_1832_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights1_2_address1_local = weights1_2_addr_3_reg_1764_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights1_2_address1_local = weights1_2_addr_2_reg_1742_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights1_2_address1_local = weights1_2_addr_1_reg_1720_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights1_2_address1_local = weights1_2_addr_reg_1698_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights1_2_address1_local = zext_ln142_14_fu_1148_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights1_2_address1_local = zext_ln142_12_fu_1098_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights1_2_address1_local = zext_ln142_10_fu_1048_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_2_address1_local = zext_ln142_8_fu_998_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_2_address1_local = zext_ln142_6_fu_948_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_2_address1_local = zext_ln142_4_fu_898_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_2_address1_local = zext_ln142_2_fu_848_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_2_address1_local = zext_ln142_fu_812_p1;
    end else begin
        weights1_2_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_2_ce0_local = 1'b1;
    end else begin
        weights1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_2_ce1_local = 1'b1;
    end else begin
        weights1_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            weights1_2_d0_local = bitcast_ln142_125_fu_1641_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            weights1_2_d0_local = bitcast_ln142_117_fu_1621_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            weights1_2_d0_local = bitcast_ln142_109_fu_1601_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            weights1_2_d0_local = bitcast_ln142_101_fu_1581_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            weights1_2_d0_local = bitcast_ln142_85_fu_1547_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            weights1_2_d0_local = bitcast_ln142_69_fu_1515_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            weights1_2_d0_local = bitcast_ln142_53_fu_1481_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            weights1_2_d0_local = bitcast_ln142_37_fu_1441_p1;
        end else begin
            weights1_2_d0_local = 'bx;
        end
    end else begin
        weights1_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights1_2_d1_local = bitcast_ln142_93_fu_1563_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights1_2_d1_local = bitcast_ln142_77_fu_1531_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights1_2_d1_local = bitcast_ln142_61_fu_1499_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights1_2_d1_local = bitcast_ln142_45_fu_1461_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights1_2_d1_local = bitcast_ln142_29_fu_1421_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights1_2_d1_local = bitcast_ln142_21_fu_1401_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights1_2_d1_local = bitcast_ln142_13_fu_1381_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights1_2_d1_local = bitcast_ln142_5_fu_1361_p1;
    end else begin
        weights1_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        weights1_2_we0_local = 1'b1;
    end else begin
        weights1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        weights1_2_we1_local = 1'b1;
    end else begin
        weights1_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights1_3_address0_local = weights1_3_addr_15_reg_2251_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights1_3_address0_local = weights1_3_addr_14_reg_2230_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights1_3_address0_local = weights1_3_addr_13_reg_2167_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights1_3_address0_local = weights1_3_addr_12_reg_2146_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights1_3_address0_local = weights1_3_addr_10_reg_2058_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights1_3_address0_local = weights1_3_addr_8_reg_1970_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights1_3_address0_local = weights1_3_addr_6_reg_1882_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights1_3_address0_local = weights1_3_addr_4_reg_1814_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights1_3_address0_local = zext_ln142_15_fu_1163_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights1_3_address0_local = zext_ln142_13_fu_1113_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights1_3_address0_local = zext_ln142_11_fu_1063_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_3_address0_local = zext_ln142_9_fu_1013_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_3_address0_local = zext_ln142_7_fu_963_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_3_address0_local = zext_ln142_5_fu_913_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_3_address0_local = zext_ln142_3_fu_863_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_3_address0_local = zext_ln142_1_fu_828_p1;
    end else begin
        weights1_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights1_3_address1_local = weights1_3_addr_11_reg_2082_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights1_3_address1_local = weights1_3_addr_9_reg_1994_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights1_3_address1_local = weights1_3_addr_7_reg_1906_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights1_3_address1_local = weights1_3_addr_5_reg_1838_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights1_3_address1_local = weights1_3_addr_3_reg_1770_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights1_3_address1_local = weights1_3_addr_2_reg_1747_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights1_3_address1_local = weights1_3_addr_1_reg_1726_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights1_3_address1_local = weights1_3_addr_reg_1703_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights1_3_address1_local = zext_ln142_14_fu_1148_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights1_3_address1_local = zext_ln142_12_fu_1098_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights1_3_address1_local = zext_ln142_10_fu_1048_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_3_address1_local = zext_ln142_8_fu_998_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_3_address1_local = zext_ln142_6_fu_948_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_3_address1_local = zext_ln142_4_fu_898_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_3_address1_local = zext_ln142_2_fu_848_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_3_address1_local = zext_ln142_fu_812_p1;
    end else begin
        weights1_3_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_3_ce0_local = 1'b1;
    end else begin
        weights1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_3_ce1_local = 1'b1;
    end else begin
        weights1_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            weights1_3_d0_local = bitcast_ln142_127_fu_1646_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            weights1_3_d0_local = bitcast_ln142_119_fu_1626_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            weights1_3_d0_local = bitcast_ln142_111_fu_1606_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            weights1_3_d0_local = bitcast_ln142_103_fu_1586_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            weights1_3_d0_local = bitcast_ln142_87_fu_1551_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            weights1_3_d0_local = bitcast_ln142_71_fu_1519_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            weights1_3_d0_local = bitcast_ln142_55_fu_1486_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            weights1_3_d0_local = bitcast_ln142_39_fu_1446_p1;
        end else begin
            weights1_3_d0_local = 'bx;
        end
    end else begin
        weights1_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights1_3_d1_local = bitcast_ln142_95_fu_1567_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights1_3_d1_local = bitcast_ln142_79_fu_1535_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights1_3_d1_local = bitcast_ln142_63_fu_1503_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights1_3_d1_local = bitcast_ln142_47_fu_1466_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights1_3_d1_local = bitcast_ln142_31_fu_1426_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights1_3_d1_local = bitcast_ln142_23_fu_1406_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights1_3_d1_local = bitcast_ln142_15_fu_1386_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights1_3_d1_local = bitcast_ln142_7_fu_1366_p1;
    end else begin
        weights1_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        weights1_3_we0_local = 1'b1;
    end else begin
        weights1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        weights1_3_we1_local = 1'b1;
    end else begin
        weights1_3_we1_local = 1'b0;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln140_fu_798_p2 = (ap_sig_allocacmp_i + 4'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
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
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage15;
assign ap_ready = ap_ready_sig;
assign bitcast_ln142_100_fu_1289_p1 = reg_710;
assign bitcast_ln142_101_fu_1581_p1 = reg_728;
assign bitcast_ln142_102_fu_1294_p1 = reg_715;
assign bitcast_ln142_103_fu_1586_p1 = reg_732;
assign bitcast_ln142_104_fu_1299_p1 = weights1_0_load_13_reg_2192;
assign bitcast_ln142_105_fu_1591_p1 = reg_736;
assign bitcast_ln142_106_fu_1303_p1 = weights1_1_load_13_reg_2197;
assign bitcast_ln142_107_fu_1596_p1 = reg_740;
assign bitcast_ln142_108_fu_1307_p1 = weights1_2_load_13_reg_2202;
assign bitcast_ln142_109_fu_1601_p1 = reg_744;
assign bitcast_ln142_10_fu_926_p1 = reg_665;
assign bitcast_ln142_110_fu_1311_p1 = weights1_3_load_13_reg_2207;
assign bitcast_ln142_111_fu_1606_p1 = reg_748;
assign bitcast_ln142_112_fu_1315_p1 = reg_644;
assign bitcast_ln142_113_fu_1611_p1 = reg_752;
assign bitcast_ln142_114_fu_1320_p1 = reg_648;
assign bitcast_ln142_115_fu_1616_p1 = reg_756;
assign bitcast_ln142_116_fu_1325_p1 = reg_652;
assign bitcast_ln142_117_fu_1621_p1 = reg_760;
assign bitcast_ln142_118_fu_1330_p1 = reg_656;
assign bitcast_ln142_119_fu_1626_p1 = reg_764;
assign bitcast_ln142_11_fu_1376_p1 = reg_724;
assign bitcast_ln142_120_fu_1335_p1 = weights1_0_load_15_reg_2276;
assign bitcast_ln142_121_fu_1631_p1 = reg_768;
assign bitcast_ln142_122_fu_1339_p1 = weights1_1_load_15_reg_2281;
assign bitcast_ln142_123_fu_1636_p1 = reg_772;
assign bitcast_ln142_124_fu_1343_p1 = weights1_2_load_15_reg_2286;
assign bitcast_ln142_125_fu_1641_p1 = reg_776;
assign bitcast_ln142_126_fu_1347_p1 = weights1_3_load_15_reg_2291;
assign bitcast_ln142_127_fu_1646_p1 = reg_780;
assign bitcast_ln142_12_fu_931_p1 = reg_670;
assign bitcast_ln142_13_fu_1381_p1 = reg_728;
assign bitcast_ln142_14_fu_936_p1 = reg_675;
assign bitcast_ln142_15_fu_1386_p1 = reg_732;
assign bitcast_ln142_16_fu_971_p1 = reg_644;
assign bitcast_ln142_17_fu_1391_p1 = reg_720;
assign bitcast_ln142_18_fu_976_p1 = reg_648;
assign bitcast_ln142_19_fu_1396_p1 = reg_724;
assign bitcast_ln142_1_fu_1351_p1 = reg_720;
assign bitcast_ln142_20_fu_981_p1 = reg_652;
assign bitcast_ln142_21_fu_1401_p1 = reg_728;
assign bitcast_ln142_22_fu_986_p1 = reg_656;
assign bitcast_ln142_23_fu_1406_p1 = reg_732;
assign bitcast_ln142_24_fu_1021_p1 = reg_680;
assign bitcast_ln142_25_fu_1411_p1 = reg_720;
assign bitcast_ln142_26_fu_1026_p1 = reg_685;
assign bitcast_ln142_27_fu_1416_p1 = reg_724;
assign bitcast_ln142_28_fu_1031_p1 = reg_690;
assign bitcast_ln142_29_fu_1421_p1 = reg_728;
assign bitcast_ln142_2_fu_876_p1 = reg_648;
assign bitcast_ln142_30_fu_1036_p1 = reg_695;
assign bitcast_ln142_31_fu_1426_p1 = reg_732;
assign bitcast_ln142_32_fu_1071_p1 = reg_660;
assign bitcast_ln142_33_fu_1431_p1 = reg_736;
assign bitcast_ln142_34_fu_1076_p1 = reg_665;
assign bitcast_ln142_35_fu_1436_p1 = reg_740;
assign bitcast_ln142_36_fu_1081_p1 = reg_670;
assign bitcast_ln142_37_fu_1441_p1 = reg_744;
assign bitcast_ln142_38_fu_1086_p1 = reg_675;
assign bitcast_ln142_39_fu_1446_p1 = reg_748;
assign bitcast_ln142_3_fu_1356_p1 = reg_724;
assign bitcast_ln142_40_fu_1121_p1 = reg_700;
assign bitcast_ln142_41_fu_1451_p1 = reg_752;
assign bitcast_ln142_42_fu_1126_p1 = reg_705;
assign bitcast_ln142_43_fu_1456_p1 = reg_756;
assign bitcast_ln142_44_fu_1131_p1 = reg_710;
assign bitcast_ln142_45_fu_1461_p1 = reg_760;
assign bitcast_ln142_46_fu_1136_p1 = reg_715;
assign bitcast_ln142_47_fu_1466_p1 = reg_764;
assign bitcast_ln142_48_fu_1171_p1 = reg_644;
assign bitcast_ln142_49_fu_1471_p1 = reg_768;
assign bitcast_ln142_4_fu_881_p1 = reg_652;
assign bitcast_ln142_50_fu_1176_p1 = reg_648;
assign bitcast_ln142_51_fu_1476_p1 = reg_772;
assign bitcast_ln142_52_fu_1181_p1 = reg_652;
assign bitcast_ln142_53_fu_1481_p1 = reg_776;
assign bitcast_ln142_54_fu_1186_p1 = reg_656;
assign bitcast_ln142_55_fu_1486_p1 = reg_780;
assign bitcast_ln142_56_fu_1191_p1 = weights1_0_load_7_reg_1932;
assign bitcast_ln142_57_fu_1491_p1 = div_27_reg_2476;
assign bitcast_ln142_58_fu_1195_p1 = weights1_1_load_7_reg_1937;
assign bitcast_ln142_59_fu_1495_p1 = div_28_reg_2481;
assign bitcast_ln142_5_fu_1361_p1 = reg_728;
assign bitcast_ln142_60_fu_1199_p1 = weights1_2_load_7_reg_1942;
assign bitcast_ln142_61_fu_1499_p1 = div_29_reg_2486;
assign bitcast_ln142_62_fu_1203_p1 = weights1_3_load_7_reg_1947;
assign bitcast_ln142_63_fu_1503_p1 = div_30_reg_2491;
assign bitcast_ln142_64_fu_1207_p1 = reg_680;
assign bitcast_ln142_65_fu_1507_p1 = div_31_reg_2496;
assign bitcast_ln142_66_fu_1212_p1 = reg_685;
assign bitcast_ln142_67_fu_1511_p1 = div_32_reg_2501;
assign bitcast_ln142_68_fu_1217_p1 = reg_690;
assign bitcast_ln142_69_fu_1515_p1 = div_33_reg_2506;
assign bitcast_ln142_6_fu_886_p1 = reg_656;
assign bitcast_ln142_70_fu_1222_p1 = reg_695;
assign bitcast_ln142_71_fu_1519_p1 = div_34_reg_2511;
assign bitcast_ln142_72_fu_1227_p1 = weights1_0_load_9_reg_2020;
assign bitcast_ln142_73_fu_1523_p1 = div_35_reg_2516;
assign bitcast_ln142_74_fu_1231_p1 = weights1_1_load_9_reg_2025;
assign bitcast_ln142_75_fu_1527_p1 = div_36_reg_2521;
assign bitcast_ln142_76_fu_1235_p1 = weights1_2_load_9_reg_2030;
assign bitcast_ln142_77_fu_1531_p1 = div_37_reg_2526;
assign bitcast_ln142_78_fu_1239_p1 = weights1_3_load_9_reg_2035;
assign bitcast_ln142_79_fu_1535_p1 = div_38_reg_2531;
assign bitcast_ln142_7_fu_1366_p1 = reg_732;
assign bitcast_ln142_80_fu_1243_p1 = reg_660;
assign bitcast_ln142_81_fu_1539_p1 = div_39_reg_2536;
assign bitcast_ln142_82_fu_1248_p1 = reg_665;
assign bitcast_ln142_83_fu_1543_p1 = div_40_reg_2541;
assign bitcast_ln142_84_fu_1253_p1 = reg_670;
assign bitcast_ln142_85_fu_1547_p1 = div_41_reg_2546;
assign bitcast_ln142_86_fu_1258_p1 = reg_675;
assign bitcast_ln142_87_fu_1551_p1 = div_42_reg_2551;
assign bitcast_ln142_88_fu_1263_p1 = weights1_0_load_11_reg_2108;
assign bitcast_ln142_89_fu_1555_p1 = div_43_reg_2556;
assign bitcast_ln142_8_fu_921_p1 = reg_660;
assign bitcast_ln142_90_fu_1267_p1 = weights1_1_load_11_reg_2113;
assign bitcast_ln142_91_fu_1559_p1 = div_44_reg_2561;
assign bitcast_ln142_92_fu_1271_p1 = weights1_2_load_11_reg_2118;
assign bitcast_ln142_93_fu_1563_p1 = div_45_reg_2566;
assign bitcast_ln142_94_fu_1275_p1 = weights1_3_load_11_reg_2123;
assign bitcast_ln142_95_fu_1567_p1 = div_46_reg_2571;
assign bitcast_ln142_96_fu_1279_p1 = reg_700;
assign bitcast_ln142_97_fu_1571_p1 = reg_720;
assign bitcast_ln142_98_fu_1284_p1 = reg_705;
assign bitcast_ln142_99_fu_1576_p1 = reg_724;
assign bitcast_ln142_9_fu_1371_p1 = reg_720;
assign bitcast_ln142_fu_871_p1 = reg_644;
assign grp_fu_6290_p_ce = 1'b1;
assign grp_fu_6290_p_din0 = grp_fu_628_p0;
assign grp_fu_6290_p_din1 = norm;
assign grp_fu_6294_p_ce = 1'b1;
assign grp_fu_6294_p_din0 = grp_fu_632_p0;
assign grp_fu_6294_p_din1 = norm;
assign grp_fu_6298_p_ce = 1'b1;
assign grp_fu_6298_p_din0 = grp_fu_636_p0;
assign grp_fu_6298_p_din1 = norm;
assign grp_fu_6302_p_ce = 1'b1;
assign grp_fu_6302_p_din0 = grp_fu_640_p0;
assign grp_fu_6302_p_din1 = norm;
assign icmp_ln140_fu_792_p2 = ((ap_sig_allocacmp_i == 4'd13) ? 1'b1 : 1'b0);
assign or_ln142_10_fu_1091_p3 = {{i_reg_1666}, {4'd12}};
assign or_ln142_11_fu_1106_p3 = {{i_reg_1666}, {4'd13}};
assign or_ln142_12_fu_1141_p3 = {{i_reg_1666}, {4'd14}};
assign or_ln142_13_fu_1156_p3 = {{i_reg_1666}, {4'd15}};
assign or_ln142_1_fu_841_p3 = {{i_reg_1666}, {4'd2}};
assign or_ln142_2_fu_856_p3 = {{i_reg_1666}, {4'd3}};
assign or_ln142_3_fu_891_p3 = {{i_reg_1666}, {4'd4}};
assign or_ln142_4_fu_906_p3 = {{i_reg_1666}, {4'd5}};
assign or_ln142_5_fu_941_p3 = {{i_reg_1666}, {4'd6}};
assign or_ln142_6_fu_956_p3 = {{i_reg_1666}, {4'd7}};
assign or_ln142_7_fu_991_p3 = {{i_reg_1666}, {4'd8}};
assign or_ln142_8_fu_1006_p3 = {{i_reg_1666}, {4'd9}};
assign or_ln142_9_fu_1041_p3 = {{i_reg_1666}, {4'd10}};
assign or_ln142_s_fu_1056_p3 = {{i_reg_1666}, {4'd11}};
assign or_ln1_fu_820_p3 = {{ap_sig_allocacmp_i}, {4'd1}};
assign shl_ln1_fu_804_p3 = {{ap_sig_allocacmp_i}, {4'd0}};
assign weights1_0_address0 = weights1_0_address0_local;
assign weights1_0_address1 = weights1_0_address1_local;
assign weights1_0_ce0 = weights1_0_ce0_local;
assign weights1_0_ce1 = weights1_0_ce1_local;
assign weights1_0_d0 = weights1_0_d0_local;
assign weights1_0_d1 = weights1_0_d1_local;
assign weights1_0_we0 = weights1_0_we0_local;
assign weights1_0_we1 = weights1_0_we1_local;
assign weights1_1_address0 = weights1_1_address0_local;
assign weights1_1_address1 = weights1_1_address1_local;
assign weights1_1_ce0 = weights1_1_ce0_local;
assign weights1_1_ce1 = weights1_1_ce1_local;
assign weights1_1_d0 = weights1_1_d0_local;
assign weights1_1_d1 = weights1_1_d1_local;
assign weights1_1_we0 = weights1_1_we0_local;
assign weights1_1_we1 = weights1_1_we1_local;
assign weights1_2_address0 = weights1_2_address0_local;
assign weights1_2_address1 = weights1_2_address1_local;
assign weights1_2_ce0 = weights1_2_ce0_local;
assign weights1_2_ce1 = weights1_2_ce1_local;
assign weights1_2_d0 = weights1_2_d0_local;
assign weights1_2_d1 = weights1_2_d1_local;
assign weights1_2_we0 = weights1_2_we0_local;
assign weights1_2_we1 = weights1_2_we1_local;
assign weights1_3_address0 = weights1_3_address0_local;
assign weights1_3_address1 = weights1_3_address1_local;
assign weights1_3_ce0 = weights1_3_ce0_local;
assign weights1_3_ce1 = weights1_3_ce1_local;
assign weights1_3_d0 = weights1_3_d0_local;
assign weights1_3_d1 = weights1_3_d1_local;
assign weights1_3_we0 = weights1_3_we0_local;
assign weights1_3_we1 = weights1_3_we1_local;
assign zext_ln142_10_fu_1048_p1 = or_ln142_9_fu_1041_p3;
assign zext_ln142_11_fu_1063_p1 = or_ln142_s_fu_1056_p3;
assign zext_ln142_12_fu_1098_p1 = or_ln142_10_fu_1091_p3;
assign zext_ln142_13_fu_1113_p1 = or_ln142_11_fu_1106_p3;
assign zext_ln142_14_fu_1148_p1 = or_ln142_12_fu_1141_p3;
assign zext_ln142_15_fu_1163_p1 = or_ln142_13_fu_1156_p3;
assign zext_ln142_1_fu_828_p1 = or_ln1_fu_820_p3;
assign zext_ln142_2_fu_848_p1 = or_ln142_1_fu_841_p3;
assign zext_ln142_3_fu_863_p1 = or_ln142_2_fu_856_p3;
assign zext_ln142_4_fu_898_p1 = or_ln142_3_fu_891_p3;
assign zext_ln142_5_fu_913_p1 = or_ln142_4_fu_906_p3;
assign zext_ln142_6_fu_948_p1 = or_ln142_5_fu_941_p3;
assign zext_ln142_7_fu_963_p1 = or_ln142_6_fu_956_p3;
assign zext_ln142_8_fu_998_p1 = or_ln142_7_fu_991_p3;
assign zext_ln142_9_fu_1013_p1 = or_ln142_8_fu_1006_p3;
assign zext_ln142_fu_812_p1 = shl_ln1_fu_804_p3;
always @ (posedge ap_clk) begin
    weights1_0_addr_reg_1688[3:0] <= 4'b0000;
    weights1_0_addr_reg_1688_pp0_iter1_reg[3:0] <= 4'b0000;
    weights1_0_addr_reg_1688_pp0_iter2_reg[3:0] <= 4'b0000;
    weights1_0_addr_reg_1688_pp0_iter3_reg[3:0] <= 4'b0000;
    weights1_1_addr_reg_1693[3:0] <= 4'b0000;
    weights1_1_addr_reg_1693_pp0_iter1_reg[3:0] <= 4'b0000;
    weights1_1_addr_reg_1693_pp0_iter2_reg[3:0] <= 4'b0000;
    weights1_1_addr_reg_1693_pp0_iter3_reg[3:0] <= 4'b0000;
    weights1_2_addr_reg_1698[3:0] <= 4'b0000;
    weights1_2_addr_reg_1698_pp0_iter1_reg[3:0] <= 4'b0000;
    weights1_2_addr_reg_1698_pp0_iter2_reg[3:0] <= 4'b0000;
    weights1_2_addr_reg_1698_pp0_iter3_reg[3:0] <= 4'b0000;
    weights1_3_addr_reg_1703[3:0] <= 4'b0000;
    weights1_3_addr_reg_1703_pp0_iter1_reg[3:0] <= 4'b0000;
    weights1_3_addr_reg_1703_pp0_iter2_reg[3:0] <= 4'b0000;
    weights1_3_addr_reg_1703_pp0_iter3_reg[3:0] <= 4'b0000;
    weights1_0_addr_1_reg_1708[3:0] <= 4'b0001;
    weights1_0_addr_1_reg_1708_pp0_iter1_reg[3:0] <= 4'b0001;
    weights1_0_addr_1_reg_1708_pp0_iter2_reg[3:0] <= 4'b0001;
    weights1_0_addr_1_reg_1708_pp0_iter3_reg[3:0] <= 4'b0001;
    weights1_1_addr_1_reg_1714[3:0] <= 4'b0001;
    weights1_1_addr_1_reg_1714_pp0_iter1_reg[3:0] <= 4'b0001;
    weights1_1_addr_1_reg_1714_pp0_iter2_reg[3:0] <= 4'b0001;
    weights1_1_addr_1_reg_1714_pp0_iter3_reg[3:0] <= 4'b0001;
    weights1_2_addr_1_reg_1720[3:0] <= 4'b0001;
    weights1_2_addr_1_reg_1720_pp0_iter1_reg[3:0] <= 4'b0001;
    weights1_2_addr_1_reg_1720_pp0_iter2_reg[3:0] <= 4'b0001;
    weights1_2_addr_1_reg_1720_pp0_iter3_reg[3:0] <= 4'b0001;
    weights1_3_addr_1_reg_1726[3:0] <= 4'b0001;
    weights1_3_addr_1_reg_1726_pp0_iter1_reg[3:0] <= 4'b0001;
    weights1_3_addr_1_reg_1726_pp0_iter2_reg[3:0] <= 4'b0001;
    weights1_3_addr_1_reg_1726_pp0_iter3_reg[3:0] <= 4'b0001;
    weights1_0_addr_2_reg_1732[3:0] <= 4'b0010;
    weights1_0_addr_2_reg_1732_pp0_iter1_reg[3:0] <= 4'b0010;
    weights1_0_addr_2_reg_1732_pp0_iter2_reg[3:0] <= 4'b0010;
    weights1_0_addr_2_reg_1732_pp0_iter3_reg[3:0] <= 4'b0010;
    weights1_1_addr_2_reg_1737[3:0] <= 4'b0010;
    weights1_1_addr_2_reg_1737_pp0_iter1_reg[3:0] <= 4'b0010;
    weights1_1_addr_2_reg_1737_pp0_iter2_reg[3:0] <= 4'b0010;
    weights1_1_addr_2_reg_1737_pp0_iter3_reg[3:0] <= 4'b0010;
    weights1_2_addr_2_reg_1742[3:0] <= 4'b0010;
    weights1_2_addr_2_reg_1742_pp0_iter1_reg[3:0] <= 4'b0010;
    weights1_2_addr_2_reg_1742_pp0_iter2_reg[3:0] <= 4'b0010;
    weights1_2_addr_2_reg_1742_pp0_iter3_reg[3:0] <= 4'b0010;
    weights1_3_addr_2_reg_1747[3:0] <= 4'b0010;
    weights1_3_addr_2_reg_1747_pp0_iter1_reg[3:0] <= 4'b0010;
    weights1_3_addr_2_reg_1747_pp0_iter2_reg[3:0] <= 4'b0010;
    weights1_3_addr_2_reg_1747_pp0_iter3_reg[3:0] <= 4'b0010;
    weights1_0_addr_3_reg_1752[3:0] <= 4'b0011;
    weights1_0_addr_3_reg_1752_pp0_iter1_reg[3:0] <= 4'b0011;
    weights1_0_addr_3_reg_1752_pp0_iter2_reg[3:0] <= 4'b0011;
    weights1_0_addr_3_reg_1752_pp0_iter3_reg[3:0] <= 4'b0011;
    weights1_0_addr_3_reg_1752_pp0_iter4_reg[3:0] <= 4'b0011;
    weights1_1_addr_3_reg_1758[3:0] <= 4'b0011;
    weights1_1_addr_3_reg_1758_pp0_iter1_reg[3:0] <= 4'b0011;
    weights1_1_addr_3_reg_1758_pp0_iter2_reg[3:0] <= 4'b0011;
    weights1_1_addr_3_reg_1758_pp0_iter3_reg[3:0] <= 4'b0011;
    weights1_1_addr_3_reg_1758_pp0_iter4_reg[3:0] <= 4'b0011;
    weights1_2_addr_3_reg_1764[3:0] <= 4'b0011;
    weights1_2_addr_3_reg_1764_pp0_iter1_reg[3:0] <= 4'b0011;
    weights1_2_addr_3_reg_1764_pp0_iter2_reg[3:0] <= 4'b0011;
    weights1_2_addr_3_reg_1764_pp0_iter3_reg[3:0] <= 4'b0011;
    weights1_2_addr_3_reg_1764_pp0_iter4_reg[3:0] <= 4'b0011;
    weights1_3_addr_3_reg_1770[3:0] <= 4'b0011;
    weights1_3_addr_3_reg_1770_pp0_iter1_reg[3:0] <= 4'b0011;
    weights1_3_addr_3_reg_1770_pp0_iter2_reg[3:0] <= 4'b0011;
    weights1_3_addr_3_reg_1770_pp0_iter3_reg[3:0] <= 4'b0011;
    weights1_3_addr_3_reg_1770_pp0_iter4_reg[3:0] <= 4'b0011;
    weights1_0_addr_4_reg_1796[3:0] <= 4'b0100;
    weights1_0_addr_4_reg_1796_pp0_iter1_reg[3:0] <= 4'b0100;
    weights1_0_addr_4_reg_1796_pp0_iter2_reg[3:0] <= 4'b0100;
    weights1_0_addr_4_reg_1796_pp0_iter3_reg[3:0] <= 4'b0100;
    weights1_0_addr_4_reg_1796_pp0_iter4_reg[3:0] <= 4'b0100;
    weights1_1_addr_4_reg_1802[3:0] <= 4'b0100;
    weights1_1_addr_4_reg_1802_pp0_iter1_reg[3:0] <= 4'b0100;
    weights1_1_addr_4_reg_1802_pp0_iter2_reg[3:0] <= 4'b0100;
    weights1_1_addr_4_reg_1802_pp0_iter3_reg[3:0] <= 4'b0100;
    weights1_1_addr_4_reg_1802_pp0_iter4_reg[3:0] <= 4'b0100;
    weights1_2_addr_4_reg_1808[3:0] <= 4'b0100;
    weights1_2_addr_4_reg_1808_pp0_iter1_reg[3:0] <= 4'b0100;
    weights1_2_addr_4_reg_1808_pp0_iter2_reg[3:0] <= 4'b0100;
    weights1_2_addr_4_reg_1808_pp0_iter3_reg[3:0] <= 4'b0100;
    weights1_2_addr_4_reg_1808_pp0_iter4_reg[3:0] <= 4'b0100;
    weights1_3_addr_4_reg_1814[3:0] <= 4'b0100;
    weights1_3_addr_4_reg_1814_pp0_iter1_reg[3:0] <= 4'b0100;
    weights1_3_addr_4_reg_1814_pp0_iter2_reg[3:0] <= 4'b0100;
    weights1_3_addr_4_reg_1814_pp0_iter3_reg[3:0] <= 4'b0100;
    weights1_3_addr_4_reg_1814_pp0_iter4_reg[3:0] <= 4'b0100;
    weights1_0_addr_5_reg_1820[3:0] <= 4'b0101;
    weights1_0_addr_5_reg_1820_pp0_iter1_reg[3:0] <= 4'b0101;
    weights1_0_addr_5_reg_1820_pp0_iter2_reg[3:0] <= 4'b0101;
    weights1_0_addr_5_reg_1820_pp0_iter3_reg[3:0] <= 4'b0101;
    weights1_0_addr_5_reg_1820_pp0_iter4_reg[3:0] <= 4'b0101;
    weights1_1_addr_5_reg_1826[3:0] <= 4'b0101;
    weights1_1_addr_5_reg_1826_pp0_iter1_reg[3:0] <= 4'b0101;
    weights1_1_addr_5_reg_1826_pp0_iter2_reg[3:0] <= 4'b0101;
    weights1_1_addr_5_reg_1826_pp0_iter3_reg[3:0] <= 4'b0101;
    weights1_1_addr_5_reg_1826_pp0_iter4_reg[3:0] <= 4'b0101;
    weights1_2_addr_5_reg_1832[3:0] <= 4'b0101;
    weights1_2_addr_5_reg_1832_pp0_iter1_reg[3:0] <= 4'b0101;
    weights1_2_addr_5_reg_1832_pp0_iter2_reg[3:0] <= 4'b0101;
    weights1_2_addr_5_reg_1832_pp0_iter3_reg[3:0] <= 4'b0101;
    weights1_2_addr_5_reg_1832_pp0_iter4_reg[3:0] <= 4'b0101;
    weights1_3_addr_5_reg_1838[3:0] <= 4'b0101;
    weights1_3_addr_5_reg_1838_pp0_iter1_reg[3:0] <= 4'b0101;
    weights1_3_addr_5_reg_1838_pp0_iter2_reg[3:0] <= 4'b0101;
    weights1_3_addr_5_reg_1838_pp0_iter3_reg[3:0] <= 4'b0101;
    weights1_3_addr_5_reg_1838_pp0_iter4_reg[3:0] <= 4'b0101;
    weights1_0_addr_6_reg_1864[3:0] <= 4'b0110;
    weights1_0_addr_6_reg_1864_pp0_iter1_reg[3:0] <= 4'b0110;
    weights1_0_addr_6_reg_1864_pp0_iter2_reg[3:0] <= 4'b0110;
    weights1_0_addr_6_reg_1864_pp0_iter3_reg[3:0] <= 4'b0110;
    weights1_0_addr_6_reg_1864_pp0_iter4_reg[3:0] <= 4'b0110;
    weights1_1_addr_6_reg_1870[3:0] <= 4'b0110;
    weights1_1_addr_6_reg_1870_pp0_iter1_reg[3:0] <= 4'b0110;
    weights1_1_addr_6_reg_1870_pp0_iter2_reg[3:0] <= 4'b0110;
    weights1_1_addr_6_reg_1870_pp0_iter3_reg[3:0] <= 4'b0110;
    weights1_1_addr_6_reg_1870_pp0_iter4_reg[3:0] <= 4'b0110;
    weights1_2_addr_6_reg_1876[3:0] <= 4'b0110;
    weights1_2_addr_6_reg_1876_pp0_iter1_reg[3:0] <= 4'b0110;
    weights1_2_addr_6_reg_1876_pp0_iter2_reg[3:0] <= 4'b0110;
    weights1_2_addr_6_reg_1876_pp0_iter3_reg[3:0] <= 4'b0110;
    weights1_2_addr_6_reg_1876_pp0_iter4_reg[3:0] <= 4'b0110;
    weights1_3_addr_6_reg_1882[3:0] <= 4'b0110;
    weights1_3_addr_6_reg_1882_pp0_iter1_reg[3:0] <= 4'b0110;
    weights1_3_addr_6_reg_1882_pp0_iter2_reg[3:0] <= 4'b0110;
    weights1_3_addr_6_reg_1882_pp0_iter3_reg[3:0] <= 4'b0110;
    weights1_3_addr_6_reg_1882_pp0_iter4_reg[3:0] <= 4'b0110;
    weights1_0_addr_7_reg_1888[3:0] <= 4'b0111;
    weights1_0_addr_7_reg_1888_pp0_iter1_reg[3:0] <= 4'b0111;
    weights1_0_addr_7_reg_1888_pp0_iter2_reg[3:0] <= 4'b0111;
    weights1_0_addr_7_reg_1888_pp0_iter3_reg[3:0] <= 4'b0111;
    weights1_0_addr_7_reg_1888_pp0_iter4_reg[3:0] <= 4'b0111;
    weights1_1_addr_7_reg_1894[3:0] <= 4'b0111;
    weights1_1_addr_7_reg_1894_pp0_iter1_reg[3:0] <= 4'b0111;
    weights1_1_addr_7_reg_1894_pp0_iter2_reg[3:0] <= 4'b0111;
    weights1_1_addr_7_reg_1894_pp0_iter3_reg[3:0] <= 4'b0111;
    weights1_1_addr_7_reg_1894_pp0_iter4_reg[3:0] <= 4'b0111;
    weights1_2_addr_7_reg_1900[3:0] <= 4'b0111;
    weights1_2_addr_7_reg_1900_pp0_iter1_reg[3:0] <= 4'b0111;
    weights1_2_addr_7_reg_1900_pp0_iter2_reg[3:0] <= 4'b0111;
    weights1_2_addr_7_reg_1900_pp0_iter3_reg[3:0] <= 4'b0111;
    weights1_2_addr_7_reg_1900_pp0_iter4_reg[3:0] <= 4'b0111;
    weights1_3_addr_7_reg_1906[3:0] <= 4'b0111;
    weights1_3_addr_7_reg_1906_pp0_iter1_reg[3:0] <= 4'b0111;
    weights1_3_addr_7_reg_1906_pp0_iter2_reg[3:0] <= 4'b0111;
    weights1_3_addr_7_reg_1906_pp0_iter3_reg[3:0] <= 4'b0111;
    weights1_3_addr_7_reg_1906_pp0_iter4_reg[3:0] <= 4'b0111;
    weights1_0_addr_8_reg_1952[3:0] <= 4'b1000;
    weights1_0_addr_8_reg_1952_pp0_iter1_reg[3:0] <= 4'b1000;
    weights1_0_addr_8_reg_1952_pp0_iter2_reg[3:0] <= 4'b1000;
    weights1_0_addr_8_reg_1952_pp0_iter3_reg[3:0] <= 4'b1000;
    weights1_0_addr_8_reg_1952_pp0_iter4_reg[3:0] <= 4'b1000;
    weights1_1_addr_8_reg_1958[3:0] <= 4'b1000;
    weights1_1_addr_8_reg_1958_pp0_iter1_reg[3:0] <= 4'b1000;
    weights1_1_addr_8_reg_1958_pp0_iter2_reg[3:0] <= 4'b1000;
    weights1_1_addr_8_reg_1958_pp0_iter3_reg[3:0] <= 4'b1000;
    weights1_1_addr_8_reg_1958_pp0_iter4_reg[3:0] <= 4'b1000;
    weights1_2_addr_8_reg_1964[3:0] <= 4'b1000;
    weights1_2_addr_8_reg_1964_pp0_iter1_reg[3:0] <= 4'b1000;
    weights1_2_addr_8_reg_1964_pp0_iter2_reg[3:0] <= 4'b1000;
    weights1_2_addr_8_reg_1964_pp0_iter3_reg[3:0] <= 4'b1000;
    weights1_2_addr_8_reg_1964_pp0_iter4_reg[3:0] <= 4'b1000;
    weights1_3_addr_8_reg_1970[3:0] <= 4'b1000;
    weights1_3_addr_8_reg_1970_pp0_iter1_reg[3:0] <= 4'b1000;
    weights1_3_addr_8_reg_1970_pp0_iter2_reg[3:0] <= 4'b1000;
    weights1_3_addr_8_reg_1970_pp0_iter3_reg[3:0] <= 4'b1000;
    weights1_3_addr_8_reg_1970_pp0_iter4_reg[3:0] <= 4'b1000;
    weights1_0_addr_9_reg_1976[3:0] <= 4'b1001;
    weights1_0_addr_9_reg_1976_pp0_iter1_reg[3:0] <= 4'b1001;
    weights1_0_addr_9_reg_1976_pp0_iter2_reg[3:0] <= 4'b1001;
    weights1_0_addr_9_reg_1976_pp0_iter3_reg[3:0] <= 4'b1001;
    weights1_0_addr_9_reg_1976_pp0_iter4_reg[3:0] <= 4'b1001;
    weights1_1_addr_9_reg_1982[3:0] <= 4'b1001;
    weights1_1_addr_9_reg_1982_pp0_iter1_reg[3:0] <= 4'b1001;
    weights1_1_addr_9_reg_1982_pp0_iter2_reg[3:0] <= 4'b1001;
    weights1_1_addr_9_reg_1982_pp0_iter3_reg[3:0] <= 4'b1001;
    weights1_1_addr_9_reg_1982_pp0_iter4_reg[3:0] <= 4'b1001;
    weights1_2_addr_9_reg_1988[3:0] <= 4'b1001;
    weights1_2_addr_9_reg_1988_pp0_iter1_reg[3:0] <= 4'b1001;
    weights1_2_addr_9_reg_1988_pp0_iter2_reg[3:0] <= 4'b1001;
    weights1_2_addr_9_reg_1988_pp0_iter3_reg[3:0] <= 4'b1001;
    weights1_2_addr_9_reg_1988_pp0_iter4_reg[3:0] <= 4'b1001;
    weights1_3_addr_9_reg_1994[3:0] <= 4'b1001;
    weights1_3_addr_9_reg_1994_pp0_iter1_reg[3:0] <= 4'b1001;
    weights1_3_addr_9_reg_1994_pp0_iter2_reg[3:0] <= 4'b1001;
    weights1_3_addr_9_reg_1994_pp0_iter3_reg[3:0] <= 4'b1001;
    weights1_3_addr_9_reg_1994_pp0_iter4_reg[3:0] <= 4'b1001;
    weights1_0_addr_10_reg_2040[3:0] <= 4'b1010;
    weights1_0_addr_10_reg_2040_pp0_iter1_reg[3:0] <= 4'b1010;
    weights1_0_addr_10_reg_2040_pp0_iter2_reg[3:0] <= 4'b1010;
    weights1_0_addr_10_reg_2040_pp0_iter3_reg[3:0] <= 4'b1010;
    weights1_0_addr_10_reg_2040_pp0_iter4_reg[3:0] <= 4'b1010;
    weights1_1_addr_10_reg_2046[3:0] <= 4'b1010;
    weights1_1_addr_10_reg_2046_pp0_iter1_reg[3:0] <= 4'b1010;
    weights1_1_addr_10_reg_2046_pp0_iter2_reg[3:0] <= 4'b1010;
    weights1_1_addr_10_reg_2046_pp0_iter3_reg[3:0] <= 4'b1010;
    weights1_1_addr_10_reg_2046_pp0_iter4_reg[3:0] <= 4'b1010;
    weights1_2_addr_10_reg_2052[3:0] <= 4'b1010;
    weights1_2_addr_10_reg_2052_pp0_iter1_reg[3:0] <= 4'b1010;
    weights1_2_addr_10_reg_2052_pp0_iter2_reg[3:0] <= 4'b1010;
    weights1_2_addr_10_reg_2052_pp0_iter3_reg[3:0] <= 4'b1010;
    weights1_2_addr_10_reg_2052_pp0_iter4_reg[3:0] <= 4'b1010;
    weights1_3_addr_10_reg_2058[3:0] <= 4'b1010;
    weights1_3_addr_10_reg_2058_pp0_iter1_reg[3:0] <= 4'b1010;
    weights1_3_addr_10_reg_2058_pp0_iter2_reg[3:0] <= 4'b1010;
    weights1_3_addr_10_reg_2058_pp0_iter3_reg[3:0] <= 4'b1010;
    weights1_3_addr_10_reg_2058_pp0_iter4_reg[3:0] <= 4'b1010;
    weights1_0_addr_11_reg_2064[3:0] <= 4'b1011;
    weights1_0_addr_11_reg_2064_pp0_iter1_reg[3:0] <= 4'b1011;
    weights1_0_addr_11_reg_2064_pp0_iter2_reg[3:0] <= 4'b1011;
    weights1_0_addr_11_reg_2064_pp0_iter3_reg[3:0] <= 4'b1011;
    weights1_0_addr_11_reg_2064_pp0_iter4_reg[3:0] <= 4'b1011;
    weights1_1_addr_11_reg_2070[3:0] <= 4'b1011;
    weights1_1_addr_11_reg_2070_pp0_iter1_reg[3:0] <= 4'b1011;
    weights1_1_addr_11_reg_2070_pp0_iter2_reg[3:0] <= 4'b1011;
    weights1_1_addr_11_reg_2070_pp0_iter3_reg[3:0] <= 4'b1011;
    weights1_1_addr_11_reg_2070_pp0_iter4_reg[3:0] <= 4'b1011;
    weights1_2_addr_11_reg_2076[3:0] <= 4'b1011;
    weights1_2_addr_11_reg_2076_pp0_iter1_reg[3:0] <= 4'b1011;
    weights1_2_addr_11_reg_2076_pp0_iter2_reg[3:0] <= 4'b1011;
    weights1_2_addr_11_reg_2076_pp0_iter3_reg[3:0] <= 4'b1011;
    weights1_2_addr_11_reg_2076_pp0_iter4_reg[3:0] <= 4'b1011;
    weights1_3_addr_11_reg_2082[3:0] <= 4'b1011;
    weights1_3_addr_11_reg_2082_pp0_iter1_reg[3:0] <= 4'b1011;
    weights1_3_addr_11_reg_2082_pp0_iter2_reg[3:0] <= 4'b1011;
    weights1_3_addr_11_reg_2082_pp0_iter3_reg[3:0] <= 4'b1011;
    weights1_3_addr_11_reg_2082_pp0_iter4_reg[3:0] <= 4'b1011;
    weights1_0_addr_12_reg_2128[3:0] <= 4'b1100;
    weights1_0_addr_12_reg_2128_pp0_iter1_reg[3:0] <= 4'b1100;
    weights1_0_addr_12_reg_2128_pp0_iter2_reg[3:0] <= 4'b1100;
    weights1_0_addr_12_reg_2128_pp0_iter3_reg[3:0] <= 4'b1100;
    weights1_0_addr_12_reg_2128_pp0_iter4_reg[3:0] <= 4'b1100;
    weights1_1_addr_12_reg_2134[3:0] <= 4'b1100;
    weights1_1_addr_12_reg_2134_pp0_iter1_reg[3:0] <= 4'b1100;
    weights1_1_addr_12_reg_2134_pp0_iter2_reg[3:0] <= 4'b1100;
    weights1_1_addr_12_reg_2134_pp0_iter3_reg[3:0] <= 4'b1100;
    weights1_1_addr_12_reg_2134_pp0_iter4_reg[3:0] <= 4'b1100;
    weights1_2_addr_12_reg_2140[3:0] <= 4'b1100;
    weights1_2_addr_12_reg_2140_pp0_iter1_reg[3:0] <= 4'b1100;
    weights1_2_addr_12_reg_2140_pp0_iter2_reg[3:0] <= 4'b1100;
    weights1_2_addr_12_reg_2140_pp0_iter3_reg[3:0] <= 4'b1100;
    weights1_2_addr_12_reg_2140_pp0_iter4_reg[3:0] <= 4'b1100;
    weights1_3_addr_12_reg_2146[3:0] <= 4'b1100;
    weights1_3_addr_12_reg_2146_pp0_iter1_reg[3:0] <= 4'b1100;
    weights1_3_addr_12_reg_2146_pp0_iter2_reg[3:0] <= 4'b1100;
    weights1_3_addr_12_reg_2146_pp0_iter3_reg[3:0] <= 4'b1100;
    weights1_3_addr_12_reg_2146_pp0_iter4_reg[3:0] <= 4'b1100;
    weights1_0_addr_13_reg_2152[3:0] <= 4'b1101;
    weights1_0_addr_13_reg_2152_pp0_iter1_reg[3:0] <= 4'b1101;
    weights1_0_addr_13_reg_2152_pp0_iter2_reg[3:0] <= 4'b1101;
    weights1_0_addr_13_reg_2152_pp0_iter3_reg[3:0] <= 4'b1101;
    weights1_0_addr_13_reg_2152_pp0_iter4_reg[3:0] <= 4'b1101;
    weights1_1_addr_13_reg_2157[3:0] <= 4'b1101;
    weights1_1_addr_13_reg_2157_pp0_iter1_reg[3:0] <= 4'b1101;
    weights1_1_addr_13_reg_2157_pp0_iter2_reg[3:0] <= 4'b1101;
    weights1_1_addr_13_reg_2157_pp0_iter3_reg[3:0] <= 4'b1101;
    weights1_1_addr_13_reg_2157_pp0_iter4_reg[3:0] <= 4'b1101;
    weights1_2_addr_13_reg_2162[3:0] <= 4'b1101;
    weights1_2_addr_13_reg_2162_pp0_iter1_reg[3:0] <= 4'b1101;
    weights1_2_addr_13_reg_2162_pp0_iter2_reg[3:0] <= 4'b1101;
    weights1_2_addr_13_reg_2162_pp0_iter3_reg[3:0] <= 4'b1101;
    weights1_2_addr_13_reg_2162_pp0_iter4_reg[3:0] <= 4'b1101;
    weights1_3_addr_13_reg_2167[3:0] <= 4'b1101;
    weights1_3_addr_13_reg_2167_pp0_iter1_reg[3:0] <= 4'b1101;
    weights1_3_addr_13_reg_2167_pp0_iter2_reg[3:0] <= 4'b1101;
    weights1_3_addr_13_reg_2167_pp0_iter3_reg[3:0] <= 4'b1101;
    weights1_3_addr_13_reg_2167_pp0_iter4_reg[3:0] <= 4'b1101;
    weights1_0_addr_14_reg_2212[3:0] <= 4'b1110;
    weights1_0_addr_14_reg_2212_pp0_iter1_reg[3:0] <= 4'b1110;
    weights1_0_addr_14_reg_2212_pp0_iter2_reg[3:0] <= 4'b1110;
    weights1_0_addr_14_reg_2212_pp0_iter3_reg[3:0] <= 4'b1110;
    weights1_0_addr_14_reg_2212_pp0_iter4_reg[3:0] <= 4'b1110;
    weights1_1_addr_14_reg_2218[3:0] <= 4'b1110;
    weights1_1_addr_14_reg_2218_pp0_iter1_reg[3:0] <= 4'b1110;
    weights1_1_addr_14_reg_2218_pp0_iter2_reg[3:0] <= 4'b1110;
    weights1_1_addr_14_reg_2218_pp0_iter3_reg[3:0] <= 4'b1110;
    weights1_1_addr_14_reg_2218_pp0_iter4_reg[3:0] <= 4'b1110;
    weights1_2_addr_14_reg_2224[3:0] <= 4'b1110;
    weights1_2_addr_14_reg_2224_pp0_iter1_reg[3:0] <= 4'b1110;
    weights1_2_addr_14_reg_2224_pp0_iter2_reg[3:0] <= 4'b1110;
    weights1_2_addr_14_reg_2224_pp0_iter3_reg[3:0] <= 4'b1110;
    weights1_2_addr_14_reg_2224_pp0_iter4_reg[3:0] <= 4'b1110;
    weights1_3_addr_14_reg_2230[3:0] <= 4'b1110;
    weights1_3_addr_14_reg_2230_pp0_iter1_reg[3:0] <= 4'b1110;
    weights1_3_addr_14_reg_2230_pp0_iter2_reg[3:0] <= 4'b1110;
    weights1_3_addr_14_reg_2230_pp0_iter3_reg[3:0] <= 4'b1110;
    weights1_3_addr_14_reg_2230_pp0_iter4_reg[3:0] <= 4'b1110;
    weights1_0_addr_15_reg_2236[3:0] <= 4'b1111;
    weights1_0_addr_15_reg_2236_pp0_iter1_reg[3:0] <= 4'b1111;
    weights1_0_addr_15_reg_2236_pp0_iter2_reg[3:0] <= 4'b1111;
    weights1_0_addr_15_reg_2236_pp0_iter3_reg[3:0] <= 4'b1111;
    weights1_0_addr_15_reg_2236_pp0_iter4_reg[3:0] <= 4'b1111;
    weights1_1_addr_15_reg_2241[3:0] <= 4'b1111;
    weights1_1_addr_15_reg_2241_pp0_iter1_reg[3:0] <= 4'b1111;
    weights1_1_addr_15_reg_2241_pp0_iter2_reg[3:0] <= 4'b1111;
    weights1_1_addr_15_reg_2241_pp0_iter3_reg[3:0] <= 4'b1111;
    weights1_1_addr_15_reg_2241_pp0_iter4_reg[3:0] <= 4'b1111;
    weights1_2_addr_15_reg_2246[3:0] <= 4'b1111;
    weights1_2_addr_15_reg_2246_pp0_iter1_reg[3:0] <= 4'b1111;
    weights1_2_addr_15_reg_2246_pp0_iter2_reg[3:0] <= 4'b1111;
    weights1_2_addr_15_reg_2246_pp0_iter3_reg[3:0] <= 4'b1111;
    weights1_2_addr_15_reg_2246_pp0_iter4_reg[3:0] <= 4'b1111;
    weights1_3_addr_15_reg_2251[3:0] <= 4'b1111;
    weights1_3_addr_15_reg_2251_pp0_iter1_reg[3:0] <= 4'b1111;
    weights1_3_addr_15_reg_2251_pp0_iter2_reg[3:0] <= 4'b1111;
    weights1_3_addr_15_reg_2251_pp0_iter3_reg[3:0] <= 4'b1111;
    weights1_3_addr_15_reg_2251_pp0_iter4_reg[3:0] <= 4'b1111;
end
endmodule 
