module backprop_update_weights_45_46_1_Pipeline_VITIS_LOOP_166_4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights2_3_address0,weights2_3_ce0,weights2_3_we0,weights2_3_d0,weights2_3_q0,weights2_3_address1,weights2_3_ce1,weights2_3_we1,weights2_3_d1,weights2_3_q1,weights2_2_address0,weights2_2_ce0,weights2_2_we0,weights2_2_d0,weights2_2_q0,weights2_2_address1,weights2_2_ce1,weights2_2_we1,weights2_2_d1,weights2_2_q1,weights2_1_address0,weights2_1_ce0,weights2_1_we0,weights2_1_d0,weights2_1_q0,weights2_1_address1,weights2_1_ce1,weights2_1_we1,weights2_1_d1,weights2_1_q1,weights2_0_address0,weights2_0_ce0,weights2_0_we0,weights2_0_d0,weights2_0_q0,weights2_0_address1,weights2_0_ce1,weights2_0_we1,weights2_0_d1,weights2_0_q1,norm_66,grp_fu_6306_p_din0,grp_fu_6306_p_din1,grp_fu_6306_p_dout0,grp_fu_6306_p_ce,grp_fu_6310_p_din0,grp_fu_6310_p_din1,grp_fu_6310_p_dout0,grp_fu_6310_p_ce,grp_fu_6314_p_din0,grp_fu_6314_p_din1,grp_fu_6314_p_dout0,grp_fu_6314_p_ce,grp_fu_6318_p_din0,grp_fu_6318_p_din1,grp_fu_6318_p_dout0,grp_fu_6318_p_ce); 
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
output  [9:0] weights2_3_address0;
output   weights2_3_ce0;
output   weights2_3_we0;
output  [63:0] weights2_3_d0;
input  [63:0] weights2_3_q0;
output  [9:0] weights2_3_address1;
output   weights2_3_ce1;
output   weights2_3_we1;
output  [63:0] weights2_3_d1;
input  [63:0] weights2_3_q1;
output  [9:0] weights2_2_address0;
output   weights2_2_ce0;
output   weights2_2_we0;
output  [63:0] weights2_2_d0;
input  [63:0] weights2_2_q0;
output  [9:0] weights2_2_address1;
output   weights2_2_ce1;
output   weights2_2_we1;
output  [63:0] weights2_2_d1;
input  [63:0] weights2_2_q1;
output  [9:0] weights2_1_address0;
output   weights2_1_ce0;
output   weights2_1_we0;
output  [63:0] weights2_1_d0;
input  [63:0] weights2_1_q0;
output  [9:0] weights2_1_address1;
output   weights2_1_ce1;
output   weights2_1_we1;
output  [63:0] weights2_1_d1;
input  [63:0] weights2_1_q1;
output  [9:0] weights2_0_address0;
output   weights2_0_ce0;
output   weights2_0_we0;
output  [63:0] weights2_0_d0;
input  [63:0] weights2_0_q0;
output  [9:0] weights2_0_address1;
output   weights2_0_ce1;
output   weights2_0_we1;
output  [63:0] weights2_0_d1;
input  [63:0] weights2_0_q1;
input  [63:0] norm_66;
output  [63:0] grp_fu_6306_p_din0;
output  [63:0] grp_fu_6306_p_din1;
input  [63:0] grp_fu_6306_p_dout0;
output   grp_fu_6306_p_ce;
output  [63:0] grp_fu_6310_p_din0;
output  [63:0] grp_fu_6310_p_din1;
input  [63:0] grp_fu_6310_p_dout0;
output   grp_fu_6310_p_ce;
output  [63:0] grp_fu_6314_p_din0;
output  [63:0] grp_fu_6314_p_din1;
input  [63:0] grp_fu_6314_p_dout0;
output   grp_fu_6314_p_ce;
output  [63:0] grp_fu_6318_p_din0;
output  [63:0] grp_fu_6318_p_din1;
input  [63:0] grp_fu_6318_p_dout0;
output   grp_fu_6318_p_ce;
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
reg   [0:0] icmp_ln166_reg_1676;
reg    ap_condition_exit_pp0_iter0_stage15;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_650;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] reg_654;
reg   [63:0] reg_658;
reg   [63:0] reg_662;
reg   [63:0] reg_666;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] reg_671;
reg   [63:0] reg_676;
reg   [63:0] reg_681;
reg   [63:0] reg_686;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] reg_691;
reg   [63:0] reg_696;
reg   [63:0] reg_701;
reg   [63:0] reg_706;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] reg_711;
reg   [63:0] reg_716;
reg   [63:0] reg_721;
reg   [63:0] reg_726;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] reg_730;
reg   [63:0] reg_734;
reg   [63:0] reg_738;
reg   [63:0] reg_742;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] reg_746;
reg   [63:0] reg_750;
reg   [63:0] reg_754;
reg   [63:0] reg_758;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] reg_762;
reg   [63:0] reg_766;
reg   [63:0] reg_770;
reg   [63:0] reg_774;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] reg_778;
reg   [63:0] reg_782;
reg   [63:0] reg_786;
wire   [0:0] icmp_ln166_fu_798_p2;
wire   [5:0] trunc_ln168_fu_810_p1;
reg   [5:0] trunc_ln168_reg_1680;
reg   [9:0] weights2_0_addr_reg_1698;
reg   [9:0] weights2_0_addr_reg_1698_pp0_iter1_reg;
reg   [9:0] weights2_0_addr_reg_1698_pp0_iter2_reg;
reg   [9:0] weights2_0_addr_reg_1698_pp0_iter3_reg;
reg   [9:0] weights2_1_addr_reg_1703;
reg   [9:0] weights2_1_addr_reg_1703_pp0_iter1_reg;
reg   [9:0] weights2_1_addr_reg_1703_pp0_iter2_reg;
reg   [9:0] weights2_1_addr_reg_1703_pp0_iter3_reg;
reg   [9:0] weights2_2_addr_reg_1708;
reg   [9:0] weights2_2_addr_reg_1708_pp0_iter1_reg;
reg   [9:0] weights2_2_addr_reg_1708_pp0_iter2_reg;
reg   [9:0] weights2_2_addr_reg_1708_pp0_iter3_reg;
reg   [9:0] weights2_3_addr_reg_1713;
reg   [9:0] weights2_3_addr_reg_1713_pp0_iter1_reg;
reg   [9:0] weights2_3_addr_reg_1713_pp0_iter2_reg;
reg   [9:0] weights2_3_addr_reg_1713_pp0_iter3_reg;
reg   [9:0] weights2_0_addr_1_reg_1718;
reg   [9:0] weights2_0_addr_1_reg_1718_pp0_iter1_reg;
reg   [9:0] weights2_0_addr_1_reg_1718_pp0_iter2_reg;
reg   [9:0] weights2_0_addr_1_reg_1718_pp0_iter3_reg;
reg   [9:0] weights2_1_addr_1_reg_1724;
reg   [9:0] weights2_1_addr_1_reg_1724_pp0_iter1_reg;
reg   [9:0] weights2_1_addr_1_reg_1724_pp0_iter2_reg;
reg   [9:0] weights2_1_addr_1_reg_1724_pp0_iter3_reg;
reg   [9:0] weights2_2_addr_1_reg_1730;
reg   [9:0] weights2_2_addr_1_reg_1730_pp0_iter1_reg;
reg   [9:0] weights2_2_addr_1_reg_1730_pp0_iter2_reg;
reg   [9:0] weights2_2_addr_1_reg_1730_pp0_iter3_reg;
reg   [9:0] weights2_3_addr_1_reg_1736;
reg   [9:0] weights2_3_addr_1_reg_1736_pp0_iter1_reg;
reg   [9:0] weights2_3_addr_1_reg_1736_pp0_iter2_reg;
reg   [9:0] weights2_3_addr_1_reg_1736_pp0_iter3_reg;
reg   [9:0] weights2_0_addr_2_reg_1742;
reg   [9:0] weights2_0_addr_2_reg_1742_pp0_iter1_reg;
reg   [9:0] weights2_0_addr_2_reg_1742_pp0_iter2_reg;
reg   [9:0] weights2_0_addr_2_reg_1742_pp0_iter3_reg;
reg   [9:0] weights2_1_addr_2_reg_1747;
reg   [9:0] weights2_1_addr_2_reg_1747_pp0_iter1_reg;
reg   [9:0] weights2_1_addr_2_reg_1747_pp0_iter2_reg;
reg   [9:0] weights2_1_addr_2_reg_1747_pp0_iter3_reg;
reg   [9:0] weights2_2_addr_2_reg_1752;
reg   [9:0] weights2_2_addr_2_reg_1752_pp0_iter1_reg;
reg   [9:0] weights2_2_addr_2_reg_1752_pp0_iter2_reg;
reg   [9:0] weights2_2_addr_2_reg_1752_pp0_iter3_reg;
reg   [9:0] weights2_3_addr_2_reg_1757;
reg   [9:0] weights2_3_addr_2_reg_1757_pp0_iter1_reg;
reg   [9:0] weights2_3_addr_2_reg_1757_pp0_iter2_reg;
reg   [9:0] weights2_3_addr_2_reg_1757_pp0_iter3_reg;
reg   [9:0] weights2_0_addr_3_reg_1762;
reg   [9:0] weights2_0_addr_3_reg_1762_pp0_iter1_reg;
reg   [9:0] weights2_0_addr_3_reg_1762_pp0_iter2_reg;
reg   [9:0] weights2_0_addr_3_reg_1762_pp0_iter3_reg;
reg   [9:0] weights2_0_addr_3_reg_1762_pp0_iter4_reg;
reg   [9:0] weights2_1_addr_3_reg_1768;
reg   [9:0] weights2_1_addr_3_reg_1768_pp0_iter1_reg;
reg   [9:0] weights2_1_addr_3_reg_1768_pp0_iter2_reg;
reg   [9:0] weights2_1_addr_3_reg_1768_pp0_iter3_reg;
reg   [9:0] weights2_1_addr_3_reg_1768_pp0_iter4_reg;
reg   [9:0] weights2_2_addr_3_reg_1774;
reg   [9:0] weights2_2_addr_3_reg_1774_pp0_iter1_reg;
reg   [9:0] weights2_2_addr_3_reg_1774_pp0_iter2_reg;
reg   [9:0] weights2_2_addr_3_reg_1774_pp0_iter3_reg;
reg   [9:0] weights2_2_addr_3_reg_1774_pp0_iter4_reg;
reg   [9:0] weights2_3_addr_3_reg_1780;
reg   [9:0] weights2_3_addr_3_reg_1780_pp0_iter1_reg;
reg   [9:0] weights2_3_addr_3_reg_1780_pp0_iter2_reg;
reg   [9:0] weights2_3_addr_3_reg_1780_pp0_iter3_reg;
reg   [9:0] weights2_3_addr_3_reg_1780_pp0_iter4_reg;
wire   [63:0] bitcast_ln168_fu_881_p1;
wire   [63:0] bitcast_ln168_2_fu_886_p1;
wire   [63:0] bitcast_ln168_4_fu_891_p1;
wire   [63:0] bitcast_ln168_6_fu_896_p1;
reg   [9:0] weights2_0_addr_4_reg_1806;
reg   [9:0] weights2_0_addr_4_reg_1806_pp0_iter1_reg;
reg   [9:0] weights2_0_addr_4_reg_1806_pp0_iter2_reg;
reg   [9:0] weights2_0_addr_4_reg_1806_pp0_iter3_reg;
reg   [9:0] weights2_0_addr_4_reg_1806_pp0_iter4_reg;
reg   [9:0] weights2_1_addr_4_reg_1812;
reg   [9:0] weights2_1_addr_4_reg_1812_pp0_iter1_reg;
reg   [9:0] weights2_1_addr_4_reg_1812_pp0_iter2_reg;
reg   [9:0] weights2_1_addr_4_reg_1812_pp0_iter3_reg;
reg   [9:0] weights2_1_addr_4_reg_1812_pp0_iter4_reg;
reg   [9:0] weights2_2_addr_4_reg_1818;
reg   [9:0] weights2_2_addr_4_reg_1818_pp0_iter1_reg;
reg   [9:0] weights2_2_addr_4_reg_1818_pp0_iter2_reg;
reg   [9:0] weights2_2_addr_4_reg_1818_pp0_iter3_reg;
reg   [9:0] weights2_2_addr_4_reg_1818_pp0_iter4_reg;
reg   [9:0] weights2_3_addr_4_reg_1824;
reg   [9:0] weights2_3_addr_4_reg_1824_pp0_iter1_reg;
reg   [9:0] weights2_3_addr_4_reg_1824_pp0_iter2_reg;
reg   [9:0] weights2_3_addr_4_reg_1824_pp0_iter3_reg;
reg   [9:0] weights2_3_addr_4_reg_1824_pp0_iter4_reg;
reg   [9:0] weights2_0_addr_5_reg_1830;
reg   [9:0] weights2_0_addr_5_reg_1830_pp0_iter1_reg;
reg   [9:0] weights2_0_addr_5_reg_1830_pp0_iter2_reg;
reg   [9:0] weights2_0_addr_5_reg_1830_pp0_iter3_reg;
reg   [9:0] weights2_0_addr_5_reg_1830_pp0_iter4_reg;
reg   [9:0] weights2_1_addr_5_reg_1836;
reg   [9:0] weights2_1_addr_5_reg_1836_pp0_iter1_reg;
reg   [9:0] weights2_1_addr_5_reg_1836_pp0_iter2_reg;
reg   [9:0] weights2_1_addr_5_reg_1836_pp0_iter3_reg;
reg   [9:0] weights2_1_addr_5_reg_1836_pp0_iter4_reg;
reg   [9:0] weights2_2_addr_5_reg_1842;
reg   [9:0] weights2_2_addr_5_reg_1842_pp0_iter1_reg;
reg   [9:0] weights2_2_addr_5_reg_1842_pp0_iter2_reg;
reg   [9:0] weights2_2_addr_5_reg_1842_pp0_iter3_reg;
reg   [9:0] weights2_2_addr_5_reg_1842_pp0_iter4_reg;
reg   [9:0] weights2_3_addr_5_reg_1848;
reg   [9:0] weights2_3_addr_5_reg_1848_pp0_iter1_reg;
reg   [9:0] weights2_3_addr_5_reg_1848_pp0_iter2_reg;
reg   [9:0] weights2_3_addr_5_reg_1848_pp0_iter3_reg;
reg   [9:0] weights2_3_addr_5_reg_1848_pp0_iter4_reg;
wire   [63:0] bitcast_ln168_8_fu_931_p1;
wire   [63:0] bitcast_ln168_10_fu_936_p1;
wire   [63:0] bitcast_ln168_12_fu_941_p1;
wire   [63:0] bitcast_ln168_14_fu_946_p1;
reg   [9:0] weights2_0_addr_6_reg_1874;
reg   [9:0] weights2_0_addr_6_reg_1874_pp0_iter1_reg;
reg   [9:0] weights2_0_addr_6_reg_1874_pp0_iter2_reg;
reg   [9:0] weights2_0_addr_6_reg_1874_pp0_iter3_reg;
reg   [9:0] weights2_0_addr_6_reg_1874_pp0_iter4_reg;
reg   [9:0] weights2_1_addr_6_reg_1880;
reg   [9:0] weights2_1_addr_6_reg_1880_pp0_iter1_reg;
reg   [9:0] weights2_1_addr_6_reg_1880_pp0_iter2_reg;
reg   [9:0] weights2_1_addr_6_reg_1880_pp0_iter3_reg;
reg   [9:0] weights2_1_addr_6_reg_1880_pp0_iter4_reg;
reg   [9:0] weights2_2_addr_6_reg_1886;
reg   [9:0] weights2_2_addr_6_reg_1886_pp0_iter1_reg;
reg   [9:0] weights2_2_addr_6_reg_1886_pp0_iter2_reg;
reg   [9:0] weights2_2_addr_6_reg_1886_pp0_iter3_reg;
reg   [9:0] weights2_2_addr_6_reg_1886_pp0_iter4_reg;
reg   [9:0] weights2_3_addr_6_reg_1892;
reg   [9:0] weights2_3_addr_6_reg_1892_pp0_iter1_reg;
reg   [9:0] weights2_3_addr_6_reg_1892_pp0_iter2_reg;
reg   [9:0] weights2_3_addr_6_reg_1892_pp0_iter3_reg;
reg   [9:0] weights2_3_addr_6_reg_1892_pp0_iter4_reg;
reg   [9:0] weights2_0_addr_7_reg_1898;
reg   [9:0] weights2_0_addr_7_reg_1898_pp0_iter1_reg;
reg   [9:0] weights2_0_addr_7_reg_1898_pp0_iter2_reg;
reg   [9:0] weights2_0_addr_7_reg_1898_pp0_iter3_reg;
reg   [9:0] weights2_0_addr_7_reg_1898_pp0_iter4_reg;
reg   [9:0] weights2_1_addr_7_reg_1904;
reg   [9:0] weights2_1_addr_7_reg_1904_pp0_iter1_reg;
reg   [9:0] weights2_1_addr_7_reg_1904_pp0_iter2_reg;
reg   [9:0] weights2_1_addr_7_reg_1904_pp0_iter3_reg;
reg   [9:0] weights2_1_addr_7_reg_1904_pp0_iter4_reg;
reg   [9:0] weights2_2_addr_7_reg_1910;
reg   [9:0] weights2_2_addr_7_reg_1910_pp0_iter1_reg;
reg   [9:0] weights2_2_addr_7_reg_1910_pp0_iter2_reg;
reg   [9:0] weights2_2_addr_7_reg_1910_pp0_iter3_reg;
reg   [9:0] weights2_2_addr_7_reg_1910_pp0_iter4_reg;
reg   [9:0] weights2_3_addr_7_reg_1916;
reg   [9:0] weights2_3_addr_7_reg_1916_pp0_iter1_reg;
reg   [9:0] weights2_3_addr_7_reg_1916_pp0_iter2_reg;
reg   [9:0] weights2_3_addr_7_reg_1916_pp0_iter3_reg;
reg   [9:0] weights2_3_addr_7_reg_1916_pp0_iter4_reg;
wire   [63:0] bitcast_ln168_16_fu_981_p1;
wire   [63:0] bitcast_ln168_18_fu_986_p1;
wire   [63:0] bitcast_ln168_20_fu_991_p1;
wire   [63:0] bitcast_ln168_22_fu_996_p1;
reg   [63:0] weights2_0_load_7_reg_1942;
reg   [63:0] weights2_1_load_7_reg_1947;
reg   [63:0] weights2_2_load_7_reg_1952;
reg   [63:0] weights2_3_load_7_reg_1957;
reg   [9:0] weights2_0_addr_8_reg_1962;
reg   [9:0] weights2_0_addr_8_reg_1962_pp0_iter1_reg;
reg   [9:0] weights2_0_addr_8_reg_1962_pp0_iter2_reg;
reg   [9:0] weights2_0_addr_8_reg_1962_pp0_iter3_reg;
reg   [9:0] weights2_0_addr_8_reg_1962_pp0_iter4_reg;
reg   [9:0] weights2_1_addr_8_reg_1968;
reg   [9:0] weights2_1_addr_8_reg_1968_pp0_iter1_reg;
reg   [9:0] weights2_1_addr_8_reg_1968_pp0_iter2_reg;
reg   [9:0] weights2_1_addr_8_reg_1968_pp0_iter3_reg;
reg   [9:0] weights2_1_addr_8_reg_1968_pp0_iter4_reg;
reg   [9:0] weights2_2_addr_8_reg_1974;
reg   [9:0] weights2_2_addr_8_reg_1974_pp0_iter1_reg;
reg   [9:0] weights2_2_addr_8_reg_1974_pp0_iter2_reg;
reg   [9:0] weights2_2_addr_8_reg_1974_pp0_iter3_reg;
reg   [9:0] weights2_2_addr_8_reg_1974_pp0_iter4_reg;
reg   [9:0] weights2_3_addr_8_reg_1980;
reg   [9:0] weights2_3_addr_8_reg_1980_pp0_iter1_reg;
reg   [9:0] weights2_3_addr_8_reg_1980_pp0_iter2_reg;
reg   [9:0] weights2_3_addr_8_reg_1980_pp0_iter3_reg;
reg   [9:0] weights2_3_addr_8_reg_1980_pp0_iter4_reg;
reg   [9:0] weights2_0_addr_9_reg_1986;
reg   [9:0] weights2_0_addr_9_reg_1986_pp0_iter1_reg;
reg   [9:0] weights2_0_addr_9_reg_1986_pp0_iter2_reg;
reg   [9:0] weights2_0_addr_9_reg_1986_pp0_iter3_reg;
reg   [9:0] weights2_0_addr_9_reg_1986_pp0_iter4_reg;
reg   [9:0] weights2_1_addr_9_reg_1992;
reg   [9:0] weights2_1_addr_9_reg_1992_pp0_iter1_reg;
reg   [9:0] weights2_1_addr_9_reg_1992_pp0_iter2_reg;
reg   [9:0] weights2_1_addr_9_reg_1992_pp0_iter3_reg;
reg   [9:0] weights2_1_addr_9_reg_1992_pp0_iter4_reg;
reg   [9:0] weights2_2_addr_9_reg_1998;
reg   [9:0] weights2_2_addr_9_reg_1998_pp0_iter1_reg;
reg   [9:0] weights2_2_addr_9_reg_1998_pp0_iter2_reg;
reg   [9:0] weights2_2_addr_9_reg_1998_pp0_iter3_reg;
reg   [9:0] weights2_2_addr_9_reg_1998_pp0_iter4_reg;
reg   [9:0] weights2_3_addr_9_reg_2004;
reg   [9:0] weights2_3_addr_9_reg_2004_pp0_iter1_reg;
reg   [9:0] weights2_3_addr_9_reg_2004_pp0_iter2_reg;
reg   [9:0] weights2_3_addr_9_reg_2004_pp0_iter3_reg;
reg   [9:0] weights2_3_addr_9_reg_2004_pp0_iter4_reg;
wire   [63:0] bitcast_ln168_24_fu_1031_p1;
wire   [63:0] bitcast_ln168_26_fu_1036_p1;
wire   [63:0] bitcast_ln168_28_fu_1041_p1;
wire   [63:0] bitcast_ln168_30_fu_1046_p1;
reg   [63:0] weights2_0_load_9_reg_2030;
reg   [63:0] weights2_1_load_9_reg_2035;
reg   [63:0] weights2_2_load_9_reg_2040;
reg   [63:0] weights2_3_load_9_reg_2045;
reg   [9:0] weights2_0_addr_10_reg_2050;
reg   [9:0] weights2_0_addr_10_reg_2050_pp0_iter1_reg;
reg   [9:0] weights2_0_addr_10_reg_2050_pp0_iter2_reg;
reg   [9:0] weights2_0_addr_10_reg_2050_pp0_iter3_reg;
reg   [9:0] weights2_0_addr_10_reg_2050_pp0_iter4_reg;
reg   [9:0] weights2_1_addr_10_reg_2056;
reg   [9:0] weights2_1_addr_10_reg_2056_pp0_iter1_reg;
reg   [9:0] weights2_1_addr_10_reg_2056_pp0_iter2_reg;
reg   [9:0] weights2_1_addr_10_reg_2056_pp0_iter3_reg;
reg   [9:0] weights2_1_addr_10_reg_2056_pp0_iter4_reg;
reg   [9:0] weights2_2_addr_10_reg_2062;
reg   [9:0] weights2_2_addr_10_reg_2062_pp0_iter1_reg;
reg   [9:0] weights2_2_addr_10_reg_2062_pp0_iter2_reg;
reg   [9:0] weights2_2_addr_10_reg_2062_pp0_iter3_reg;
reg   [9:0] weights2_2_addr_10_reg_2062_pp0_iter4_reg;
reg   [9:0] weights2_3_addr_10_reg_2068;
reg   [9:0] weights2_3_addr_10_reg_2068_pp0_iter1_reg;
reg   [9:0] weights2_3_addr_10_reg_2068_pp0_iter2_reg;
reg   [9:0] weights2_3_addr_10_reg_2068_pp0_iter3_reg;
reg   [9:0] weights2_3_addr_10_reg_2068_pp0_iter4_reg;
reg   [9:0] weights2_0_addr_11_reg_2074;
reg   [9:0] weights2_0_addr_11_reg_2074_pp0_iter1_reg;
reg   [9:0] weights2_0_addr_11_reg_2074_pp0_iter2_reg;
reg   [9:0] weights2_0_addr_11_reg_2074_pp0_iter3_reg;
reg   [9:0] weights2_0_addr_11_reg_2074_pp0_iter4_reg;
reg   [9:0] weights2_1_addr_11_reg_2080;
reg   [9:0] weights2_1_addr_11_reg_2080_pp0_iter1_reg;
reg   [9:0] weights2_1_addr_11_reg_2080_pp0_iter2_reg;
reg   [9:0] weights2_1_addr_11_reg_2080_pp0_iter3_reg;
reg   [9:0] weights2_1_addr_11_reg_2080_pp0_iter4_reg;
reg   [9:0] weights2_2_addr_11_reg_2086;
reg   [9:0] weights2_2_addr_11_reg_2086_pp0_iter1_reg;
reg   [9:0] weights2_2_addr_11_reg_2086_pp0_iter2_reg;
reg   [9:0] weights2_2_addr_11_reg_2086_pp0_iter3_reg;
reg   [9:0] weights2_2_addr_11_reg_2086_pp0_iter4_reg;
reg   [9:0] weights2_3_addr_11_reg_2092;
reg   [9:0] weights2_3_addr_11_reg_2092_pp0_iter1_reg;
reg   [9:0] weights2_3_addr_11_reg_2092_pp0_iter2_reg;
reg   [9:0] weights2_3_addr_11_reg_2092_pp0_iter3_reg;
reg   [9:0] weights2_3_addr_11_reg_2092_pp0_iter4_reg;
wire   [63:0] bitcast_ln168_32_fu_1081_p1;
wire   [63:0] bitcast_ln168_34_fu_1086_p1;
wire   [63:0] bitcast_ln168_36_fu_1091_p1;
wire   [63:0] bitcast_ln168_38_fu_1096_p1;
reg   [63:0] weights2_0_load_11_reg_2118;
reg   [63:0] weights2_1_load_11_reg_2123;
reg   [63:0] weights2_2_load_11_reg_2128;
reg   [63:0] weights2_3_load_11_reg_2133;
reg   [9:0] weights2_0_addr_12_reg_2138;
reg   [9:0] weights2_0_addr_12_reg_2138_pp0_iter1_reg;
reg   [9:0] weights2_0_addr_12_reg_2138_pp0_iter2_reg;
reg   [9:0] weights2_0_addr_12_reg_2138_pp0_iter3_reg;
reg   [9:0] weights2_0_addr_12_reg_2138_pp0_iter4_reg;
reg   [9:0] weights2_1_addr_12_reg_2144;
reg   [9:0] weights2_1_addr_12_reg_2144_pp0_iter1_reg;
reg   [9:0] weights2_1_addr_12_reg_2144_pp0_iter2_reg;
reg   [9:0] weights2_1_addr_12_reg_2144_pp0_iter3_reg;
reg   [9:0] weights2_1_addr_12_reg_2144_pp0_iter4_reg;
reg   [9:0] weights2_2_addr_12_reg_2150;
reg   [9:0] weights2_2_addr_12_reg_2150_pp0_iter1_reg;
reg   [9:0] weights2_2_addr_12_reg_2150_pp0_iter2_reg;
reg   [9:0] weights2_2_addr_12_reg_2150_pp0_iter3_reg;
reg   [9:0] weights2_2_addr_12_reg_2150_pp0_iter4_reg;
reg   [9:0] weights2_3_addr_12_reg_2156;
reg   [9:0] weights2_3_addr_12_reg_2156_pp0_iter1_reg;
reg   [9:0] weights2_3_addr_12_reg_2156_pp0_iter2_reg;
reg   [9:0] weights2_3_addr_12_reg_2156_pp0_iter3_reg;
reg   [9:0] weights2_3_addr_12_reg_2156_pp0_iter4_reg;
reg   [9:0] weights2_0_addr_13_reg_2162;
reg   [9:0] weights2_0_addr_13_reg_2162_pp0_iter1_reg;
reg   [9:0] weights2_0_addr_13_reg_2162_pp0_iter2_reg;
reg   [9:0] weights2_0_addr_13_reg_2162_pp0_iter3_reg;
reg   [9:0] weights2_0_addr_13_reg_2162_pp0_iter4_reg;
reg   [9:0] weights2_1_addr_13_reg_2167;
reg   [9:0] weights2_1_addr_13_reg_2167_pp0_iter1_reg;
reg   [9:0] weights2_1_addr_13_reg_2167_pp0_iter2_reg;
reg   [9:0] weights2_1_addr_13_reg_2167_pp0_iter3_reg;
reg   [9:0] weights2_1_addr_13_reg_2167_pp0_iter4_reg;
reg   [9:0] weights2_2_addr_13_reg_2172;
reg   [9:0] weights2_2_addr_13_reg_2172_pp0_iter1_reg;
reg   [9:0] weights2_2_addr_13_reg_2172_pp0_iter2_reg;
reg   [9:0] weights2_2_addr_13_reg_2172_pp0_iter3_reg;
reg   [9:0] weights2_2_addr_13_reg_2172_pp0_iter4_reg;
reg   [9:0] weights2_3_addr_13_reg_2177;
reg   [9:0] weights2_3_addr_13_reg_2177_pp0_iter1_reg;
reg   [9:0] weights2_3_addr_13_reg_2177_pp0_iter2_reg;
reg   [9:0] weights2_3_addr_13_reg_2177_pp0_iter3_reg;
reg   [9:0] weights2_3_addr_13_reg_2177_pp0_iter4_reg;
wire   [63:0] bitcast_ln168_40_fu_1131_p1;
wire   [63:0] bitcast_ln168_42_fu_1136_p1;
wire   [63:0] bitcast_ln168_44_fu_1141_p1;
wire   [63:0] bitcast_ln168_46_fu_1146_p1;
reg   [63:0] weights2_0_load_13_reg_2202;
reg   [63:0] weights2_1_load_13_reg_2207;
reg   [63:0] weights2_2_load_13_reg_2212;
reg   [63:0] weights2_3_load_13_reg_2217;
reg   [9:0] weights2_0_addr_14_reg_2222;
reg   [9:0] weights2_0_addr_14_reg_2222_pp0_iter1_reg;
reg   [9:0] weights2_0_addr_14_reg_2222_pp0_iter2_reg;
reg   [9:0] weights2_0_addr_14_reg_2222_pp0_iter3_reg;
reg   [9:0] weights2_0_addr_14_reg_2222_pp0_iter4_reg;
reg   [9:0] weights2_1_addr_14_reg_2228;
reg   [9:0] weights2_1_addr_14_reg_2228_pp0_iter1_reg;
reg   [9:0] weights2_1_addr_14_reg_2228_pp0_iter2_reg;
reg   [9:0] weights2_1_addr_14_reg_2228_pp0_iter3_reg;
reg   [9:0] weights2_1_addr_14_reg_2228_pp0_iter4_reg;
reg   [9:0] weights2_2_addr_14_reg_2234;
reg   [9:0] weights2_2_addr_14_reg_2234_pp0_iter1_reg;
reg   [9:0] weights2_2_addr_14_reg_2234_pp0_iter2_reg;
reg   [9:0] weights2_2_addr_14_reg_2234_pp0_iter3_reg;
reg   [9:0] weights2_2_addr_14_reg_2234_pp0_iter4_reg;
reg   [9:0] weights2_3_addr_14_reg_2240;
reg   [9:0] weights2_3_addr_14_reg_2240_pp0_iter1_reg;
reg   [9:0] weights2_3_addr_14_reg_2240_pp0_iter2_reg;
reg   [9:0] weights2_3_addr_14_reg_2240_pp0_iter3_reg;
reg   [9:0] weights2_3_addr_14_reg_2240_pp0_iter4_reg;
reg   [9:0] weights2_0_addr_15_reg_2246;
reg   [9:0] weights2_0_addr_15_reg_2246_pp0_iter1_reg;
reg   [9:0] weights2_0_addr_15_reg_2246_pp0_iter2_reg;
reg   [9:0] weights2_0_addr_15_reg_2246_pp0_iter3_reg;
reg   [9:0] weights2_0_addr_15_reg_2246_pp0_iter4_reg;
reg   [9:0] weights2_1_addr_15_reg_2251;
reg   [9:0] weights2_1_addr_15_reg_2251_pp0_iter1_reg;
reg   [9:0] weights2_1_addr_15_reg_2251_pp0_iter2_reg;
reg   [9:0] weights2_1_addr_15_reg_2251_pp0_iter3_reg;
reg   [9:0] weights2_1_addr_15_reg_2251_pp0_iter4_reg;
reg   [9:0] weights2_2_addr_15_reg_2256;
reg   [9:0] weights2_2_addr_15_reg_2256_pp0_iter1_reg;
reg   [9:0] weights2_2_addr_15_reg_2256_pp0_iter2_reg;
reg   [9:0] weights2_2_addr_15_reg_2256_pp0_iter3_reg;
reg   [9:0] weights2_2_addr_15_reg_2256_pp0_iter4_reg;
reg   [9:0] weights2_3_addr_15_reg_2261;
reg   [9:0] weights2_3_addr_15_reg_2261_pp0_iter1_reg;
reg   [9:0] weights2_3_addr_15_reg_2261_pp0_iter2_reg;
reg   [9:0] weights2_3_addr_15_reg_2261_pp0_iter3_reg;
reg   [9:0] weights2_3_addr_15_reg_2261_pp0_iter4_reg;
wire   [63:0] bitcast_ln168_48_fu_1181_p1;
wire   [63:0] bitcast_ln168_50_fu_1186_p1;
wire   [63:0] bitcast_ln168_52_fu_1191_p1;
wire   [63:0] bitcast_ln168_54_fu_1196_p1;
reg   [63:0] weights2_0_load_15_reg_2286;
reg   [63:0] weights2_1_load_15_reg_2291;
reg   [63:0] weights2_2_load_15_reg_2296;
reg   [63:0] weights2_3_load_15_reg_2301;
wire   [63:0] bitcast_ln168_56_fu_1201_p1;
wire   [63:0] bitcast_ln168_58_fu_1205_p1;
wire   [63:0] bitcast_ln168_60_fu_1209_p1;
wire   [63:0] bitcast_ln168_62_fu_1213_p1;
wire   [63:0] bitcast_ln168_64_fu_1217_p1;
wire   [63:0] bitcast_ln168_66_fu_1222_p1;
wire   [63:0] bitcast_ln168_68_fu_1227_p1;
wire   [63:0] bitcast_ln168_70_fu_1232_p1;
wire   [63:0] bitcast_ln168_72_fu_1237_p1;
wire   [63:0] bitcast_ln168_74_fu_1241_p1;
wire   [63:0] bitcast_ln168_76_fu_1245_p1;
wire   [63:0] bitcast_ln168_78_fu_1249_p1;
wire   [63:0] bitcast_ln168_80_fu_1253_p1;
wire   [63:0] bitcast_ln168_82_fu_1258_p1;
wire   [63:0] bitcast_ln168_84_fu_1263_p1;
wire   [63:0] bitcast_ln168_86_fu_1268_p1;
wire   [63:0] bitcast_ln168_88_fu_1273_p1;
wire   [63:0] bitcast_ln168_90_fu_1277_p1;
wire   [63:0] bitcast_ln168_92_fu_1281_p1;
wire   [63:0] bitcast_ln168_94_fu_1285_p1;
wire   [63:0] bitcast_ln168_96_fu_1289_p1;
wire   [63:0] bitcast_ln168_98_fu_1294_p1;
wire   [63:0] bitcast_ln168_100_fu_1299_p1;
wire   [63:0] bitcast_ln168_102_fu_1304_p1;
wire   [63:0] bitcast_ln168_104_fu_1309_p1;
wire   [63:0] bitcast_ln168_106_fu_1313_p1;
wire   [63:0] bitcast_ln168_108_fu_1317_p1;
wire   [63:0] bitcast_ln168_110_fu_1321_p1;
wire   [63:0] bitcast_ln168_112_fu_1325_p1;
wire   [63:0] bitcast_ln168_114_fu_1330_p1;
wire   [63:0] bitcast_ln168_116_fu_1335_p1;
wire   [63:0] bitcast_ln168_118_fu_1340_p1;
wire   [63:0] bitcast_ln168_120_fu_1345_p1;
wire   [63:0] bitcast_ln168_122_fu_1349_p1;
wire   [63:0] bitcast_ln168_124_fu_1353_p1;
wire   [63:0] bitcast_ln168_126_fu_1357_p1;
reg   [63:0] div131_27_reg_2486;
reg   [63:0] div131_28_reg_2491;
reg   [63:0] div131_29_reg_2496;
reg   [63:0] div131_30_reg_2501;
reg   [63:0] div131_31_reg_2506;
reg   [63:0] div131_32_reg_2511;
reg   [63:0] div131_33_reg_2516;
reg   [63:0] div131_34_reg_2521;
reg   [63:0] div131_35_reg_2526;
reg   [63:0] div131_36_reg_2531;
reg   [63:0] div131_37_reg_2536;
reg   [63:0] div131_38_reg_2541;
reg   [63:0] div131_39_reg_2546;
reg   [63:0] div131_40_reg_2551;
reg   [63:0] div131_41_reg_2556;
reg   [63:0] div131_42_reg_2561;
reg   [63:0] div131_43_reg_2566;
reg   [63:0] div131_44_reg_2571;
reg   [63:0] div131_45_reg_2576;
reg   [63:0] div131_46_reg_2581;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln168_fu_822_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln168_1_fu_838_p1;
wire   [63:0] zext_ln168_2_fu_858_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln168_3_fu_873_p1;
wire   [63:0] zext_ln168_4_fu_908_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln168_5_fu_923_p1;
wire   [63:0] zext_ln168_6_fu_958_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln168_7_fu_973_p1;
wire   [63:0] zext_ln168_8_fu_1008_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln168_9_fu_1023_p1;
wire   [63:0] zext_ln168_10_fu_1058_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln168_11_fu_1073_p1;
wire   [63:0] zext_ln168_12_fu_1108_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln168_13_fu_1123_p1;
wire   [63:0] zext_ln168_14_fu_1158_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln168_15_fu_1173_p1;
reg   [6:0] i_fu_76;
wire   [6:0] add_ln166_fu_804_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_3;
reg    weights2_0_ce1_local;
reg   [9:0] weights2_0_address1_local;
reg    weights2_0_ce0_local;
reg   [9:0] weights2_0_address0_local;
reg    weights2_0_we1_local;
reg   [63:0] weights2_0_d1_local;
wire   [63:0] bitcast_ln168_1_fu_1361_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] bitcast_ln168_9_fu_1381_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] bitcast_ln168_17_fu_1401_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] bitcast_ln168_25_fu_1421_p1;
wire    ap_block_pp0_stage8;
reg    weights2_0_we0_local;
reg   [63:0] weights2_0_d0_local;
wire   [63:0] bitcast_ln168_33_fu_1441_p1;
wire   [63:0] bitcast_ln168_41_fu_1461_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] bitcast_ln168_49_fu_1481_p1;
wire   [63:0] bitcast_ln168_57_fu_1501_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] bitcast_ln168_65_fu_1517_p1;
wire   [63:0] bitcast_ln168_73_fu_1533_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] bitcast_ln168_81_fu_1549_p1;
wire   [63:0] bitcast_ln168_89_fu_1565_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] bitcast_ln168_97_fu_1581_p1;
wire   [63:0] bitcast_ln168_105_fu_1601_p1;
wire   [63:0] bitcast_ln168_113_fu_1621_p1;
wire   [63:0] bitcast_ln168_121_fu_1641_p1;
reg    weights2_1_ce1_local;
reg   [9:0] weights2_1_address1_local;
reg    weights2_1_ce0_local;
reg   [9:0] weights2_1_address0_local;
reg    weights2_1_we1_local;
reg   [63:0] weights2_1_d1_local;
wire   [63:0] bitcast_ln168_3_fu_1366_p1;
wire   [63:0] bitcast_ln168_11_fu_1386_p1;
wire   [63:0] bitcast_ln168_19_fu_1406_p1;
wire   [63:0] bitcast_ln168_27_fu_1426_p1;
reg    weights2_1_we0_local;
reg   [63:0] weights2_1_d0_local;
wire   [63:0] bitcast_ln168_35_fu_1446_p1;
wire   [63:0] bitcast_ln168_43_fu_1466_p1;
wire   [63:0] bitcast_ln168_51_fu_1486_p1;
wire   [63:0] bitcast_ln168_59_fu_1505_p1;
wire   [63:0] bitcast_ln168_67_fu_1521_p1;
wire   [63:0] bitcast_ln168_75_fu_1537_p1;
wire   [63:0] bitcast_ln168_83_fu_1553_p1;
wire   [63:0] bitcast_ln168_91_fu_1569_p1;
wire   [63:0] bitcast_ln168_99_fu_1586_p1;
wire   [63:0] bitcast_ln168_107_fu_1606_p1;
wire   [63:0] bitcast_ln168_115_fu_1626_p1;
wire   [63:0] bitcast_ln168_123_fu_1646_p1;
reg    weights2_2_ce1_local;
reg   [9:0] weights2_2_address1_local;
reg    weights2_2_ce0_local;
reg   [9:0] weights2_2_address0_local;
reg    weights2_2_we1_local;
reg   [63:0] weights2_2_d1_local;
wire   [63:0] bitcast_ln168_5_fu_1371_p1;
wire   [63:0] bitcast_ln168_13_fu_1391_p1;
wire   [63:0] bitcast_ln168_21_fu_1411_p1;
wire   [63:0] bitcast_ln168_29_fu_1431_p1;
reg    weights2_2_we0_local;
reg   [63:0] weights2_2_d0_local;
wire   [63:0] bitcast_ln168_37_fu_1451_p1;
wire   [63:0] bitcast_ln168_45_fu_1471_p1;
wire   [63:0] bitcast_ln168_53_fu_1491_p1;
wire   [63:0] bitcast_ln168_61_fu_1509_p1;
wire   [63:0] bitcast_ln168_69_fu_1525_p1;
wire   [63:0] bitcast_ln168_77_fu_1541_p1;
wire   [63:0] bitcast_ln168_85_fu_1557_p1;
wire   [63:0] bitcast_ln168_93_fu_1573_p1;
wire   [63:0] bitcast_ln168_101_fu_1591_p1;
wire   [63:0] bitcast_ln168_109_fu_1611_p1;
wire   [63:0] bitcast_ln168_117_fu_1631_p1;
wire   [63:0] bitcast_ln168_125_fu_1651_p1;
reg    weights2_3_ce1_local;
reg   [9:0] weights2_3_address1_local;
reg    weights2_3_ce0_local;
reg   [9:0] weights2_3_address0_local;
reg    weights2_3_we1_local;
reg   [63:0] weights2_3_d1_local;
wire   [63:0] bitcast_ln168_7_fu_1376_p1;
wire   [63:0] bitcast_ln168_15_fu_1396_p1;
wire   [63:0] bitcast_ln168_23_fu_1416_p1;
wire   [63:0] bitcast_ln168_31_fu_1436_p1;
reg    weights2_3_we0_local;
reg   [63:0] weights2_3_d0_local;
wire   [63:0] bitcast_ln168_39_fu_1456_p1;
wire   [63:0] bitcast_ln168_47_fu_1476_p1;
wire   [63:0] bitcast_ln168_55_fu_1496_p1;
wire   [63:0] bitcast_ln168_63_fu_1513_p1;
wire   [63:0] bitcast_ln168_71_fu_1529_p1;
wire   [63:0] bitcast_ln168_79_fu_1545_p1;
wire   [63:0] bitcast_ln168_87_fu_1561_p1;
wire   [63:0] bitcast_ln168_95_fu_1577_p1;
wire   [63:0] bitcast_ln168_103_fu_1596_p1;
wire   [63:0] bitcast_ln168_111_fu_1616_p1;
wire   [63:0] bitcast_ln168_119_fu_1636_p1;
wire   [63:0] bitcast_ln168_127_fu_1656_p1;
reg   [63:0] grp_fu_634_p0;
reg   [63:0] grp_fu_638_p0;
reg   [63:0] grp_fu_642_p0;
reg   [63:0] grp_fu_646_p0;
wire   [9:0] shl_ln2_fu_814_p3;
wire   [9:0] or_ln3_fu_830_p3;
wire   [9:0] or_ln168_1_fu_851_p3;
wire   [9:0] or_ln168_2_fu_866_p3;
wire   [9:0] or_ln168_3_fu_901_p3;
wire   [9:0] or_ln168_4_fu_916_p3;
wire   [9:0] or_ln168_5_fu_951_p3;
wire   [9:0] or_ln168_6_fu_966_p3;
wire   [9:0] or_ln168_7_fu_1001_p3;
wire   [9:0] or_ln168_8_fu_1016_p3;
wire   [9:0] or_ln168_9_fu_1051_p3;
wire   [9:0] or_ln168_s_fu_1066_p3;
wire   [9:0] or_ln168_10_fu_1101_p3;
wire   [9:0] or_ln168_11_fu_1116_p3;
wire   [9:0] or_ln168_12_fu_1151_p3;
wire   [9:0] or_ln168_13_fu_1166_p3;
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
#0 i_fu_76 = 7'd0;
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln166_fu_798_p2 == 1'd0))) begin
            i_fu_76 <= add_ln166_fu_804_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_76 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_666 <= weights2_0_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_666 <= weights2_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_671 <= weights2_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_671 <= weights2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_676 <= weights2_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_676 <= weights2_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_681 <= weights2_3_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_681 <= weights2_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_686 <= weights2_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_686 <= weights2_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_691 <= weights2_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_691 <= weights2_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_696 <= weights2_2_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_696 <= weights2_2_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_701 <= weights2_3_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_701 <= weights2_3_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            reg_706 <= weights2_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_706 <= weights2_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            reg_711 <= weights2_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_711 <= weights2_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            reg_716 <= weights2_2_q1;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_716 <= weights2_2_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            reg_721 <= weights2_3_q1;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_721 <= weights2_3_q0;
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
        div131_27_reg_2486 <= grp_fu_6306_p_dout0;
        div131_28_reg_2491 <= grp_fu_6310_p_dout0;
        div131_29_reg_2496 <= grp_fu_6314_p_dout0;
        div131_30_reg_2501 <= grp_fu_6318_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        div131_31_reg_2506 <= grp_fu_6306_p_dout0;
        div131_32_reg_2511 <= grp_fu_6310_p_dout0;
        div131_33_reg_2516 <= grp_fu_6314_p_dout0;
        div131_34_reg_2521 <= grp_fu_6318_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        div131_35_reg_2526 <= grp_fu_6306_p_dout0;
        div131_36_reg_2531 <= grp_fu_6310_p_dout0;
        div131_37_reg_2536 <= grp_fu_6314_p_dout0;
        div131_38_reg_2541 <= grp_fu_6318_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        div131_39_reg_2546 <= grp_fu_6306_p_dout0;
        div131_40_reg_2551 <= grp_fu_6310_p_dout0;
        div131_41_reg_2556 <= grp_fu_6314_p_dout0;
        div131_42_reg_2561 <= grp_fu_6318_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        div131_43_reg_2566 <= grp_fu_6306_p_dout0;
        div131_44_reg_2571 <= grp_fu_6310_p_dout0;
        div131_45_reg_2576 <= grp_fu_6314_p_dout0;
        div131_46_reg_2581 <= grp_fu_6318_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln166_reg_1676 <= icmp_ln166_fu_798_p2;
        trunc_ln168_reg_1680 <= trunc_ln168_fu_810_p1;
        weights2_0_addr_1_reg_1718[9 : 4] <= zext_ln168_1_fu_838_p1[9 : 4];
        weights2_0_addr_1_reg_1718_pp0_iter1_reg[9 : 4] <= weights2_0_addr_1_reg_1718[9 : 4];
        weights2_0_addr_1_reg_1718_pp0_iter2_reg[9 : 4] <= weights2_0_addr_1_reg_1718_pp0_iter1_reg[9 : 4];
        weights2_0_addr_1_reg_1718_pp0_iter3_reg[9 : 4] <= weights2_0_addr_1_reg_1718_pp0_iter2_reg[9 : 4];
        weights2_0_addr_reg_1698[9 : 4] <= zext_ln168_fu_822_p1[9 : 4];
        weights2_0_addr_reg_1698_pp0_iter1_reg[9 : 4] <= weights2_0_addr_reg_1698[9 : 4];
        weights2_0_addr_reg_1698_pp0_iter2_reg[9 : 4] <= weights2_0_addr_reg_1698_pp0_iter1_reg[9 : 4];
        weights2_0_addr_reg_1698_pp0_iter3_reg[9 : 4] <= weights2_0_addr_reg_1698_pp0_iter2_reg[9 : 4];
        weights2_1_addr_1_reg_1724[9 : 4] <= zext_ln168_1_fu_838_p1[9 : 4];
        weights2_1_addr_1_reg_1724_pp0_iter1_reg[9 : 4] <= weights2_1_addr_1_reg_1724[9 : 4];
        weights2_1_addr_1_reg_1724_pp0_iter2_reg[9 : 4] <= weights2_1_addr_1_reg_1724_pp0_iter1_reg[9 : 4];
        weights2_1_addr_1_reg_1724_pp0_iter3_reg[9 : 4] <= weights2_1_addr_1_reg_1724_pp0_iter2_reg[9 : 4];
        weights2_1_addr_reg_1703[9 : 4] <= zext_ln168_fu_822_p1[9 : 4];
        weights2_1_addr_reg_1703_pp0_iter1_reg[9 : 4] <= weights2_1_addr_reg_1703[9 : 4];
        weights2_1_addr_reg_1703_pp0_iter2_reg[9 : 4] <= weights2_1_addr_reg_1703_pp0_iter1_reg[9 : 4];
        weights2_1_addr_reg_1703_pp0_iter3_reg[9 : 4] <= weights2_1_addr_reg_1703_pp0_iter2_reg[9 : 4];
        weights2_2_addr_1_reg_1730[9 : 4] <= zext_ln168_1_fu_838_p1[9 : 4];
        weights2_2_addr_1_reg_1730_pp0_iter1_reg[9 : 4] <= weights2_2_addr_1_reg_1730[9 : 4];
        weights2_2_addr_1_reg_1730_pp0_iter2_reg[9 : 4] <= weights2_2_addr_1_reg_1730_pp0_iter1_reg[9 : 4];
        weights2_2_addr_1_reg_1730_pp0_iter3_reg[9 : 4] <= weights2_2_addr_1_reg_1730_pp0_iter2_reg[9 : 4];
        weights2_2_addr_reg_1708[9 : 4] <= zext_ln168_fu_822_p1[9 : 4];
        weights2_2_addr_reg_1708_pp0_iter1_reg[9 : 4] <= weights2_2_addr_reg_1708[9 : 4];
        weights2_2_addr_reg_1708_pp0_iter2_reg[9 : 4] <= weights2_2_addr_reg_1708_pp0_iter1_reg[9 : 4];
        weights2_2_addr_reg_1708_pp0_iter3_reg[9 : 4] <= weights2_2_addr_reg_1708_pp0_iter2_reg[9 : 4];
        weights2_3_addr_1_reg_1736[9 : 4] <= zext_ln168_1_fu_838_p1[9 : 4];
        weights2_3_addr_1_reg_1736_pp0_iter1_reg[9 : 4] <= weights2_3_addr_1_reg_1736[9 : 4];
        weights2_3_addr_1_reg_1736_pp0_iter2_reg[9 : 4] <= weights2_3_addr_1_reg_1736_pp0_iter1_reg[9 : 4];
        weights2_3_addr_1_reg_1736_pp0_iter3_reg[9 : 4] <= weights2_3_addr_1_reg_1736_pp0_iter2_reg[9 : 4];
        weights2_3_addr_reg_1713[9 : 4] <= zext_ln168_fu_822_p1[9 : 4];
        weights2_3_addr_reg_1713_pp0_iter1_reg[9 : 4] <= weights2_3_addr_reg_1713[9 : 4];
        weights2_3_addr_reg_1713_pp0_iter2_reg[9 : 4] <= weights2_3_addr_reg_1713_pp0_iter1_reg[9 : 4];
        weights2_3_addr_reg_1713_pp0_iter3_reg[9 : 4] <= weights2_3_addr_reg_1713_pp0_iter2_reg[9 : 4];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_650 <= weights2_0_q1;
        reg_654 <= weights2_1_q1;
        reg_658 <= weights2_2_q1;
        reg_662 <= weights2_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_726 <= grp_fu_6306_p_dout0;
        reg_730 <= grp_fu_6310_p_dout0;
        reg_734 <= grp_fu_6314_p_dout0;
        reg_738 <= grp_fu_6318_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_742 <= grp_fu_6306_p_dout0;
        reg_746 <= grp_fu_6310_p_dout0;
        reg_750 <= grp_fu_6314_p_dout0;
        reg_754 <= grp_fu_6318_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_758 <= grp_fu_6306_p_dout0;
        reg_762 <= grp_fu_6310_p_dout0;
        reg_766 <= grp_fu_6314_p_dout0;
        reg_770 <= grp_fu_6318_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_774 <= grp_fu_6306_p_dout0;
        reg_778 <= grp_fu_6310_p_dout0;
        reg_782 <= grp_fu_6314_p_dout0;
        reg_786 <= grp_fu_6318_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights2_0_addr_10_reg_2050[9 : 4] <= zext_ln168_10_fu_1058_p1[9 : 4];
        weights2_0_addr_10_reg_2050_pp0_iter1_reg[9 : 4] <= weights2_0_addr_10_reg_2050[9 : 4];
        weights2_0_addr_10_reg_2050_pp0_iter2_reg[9 : 4] <= weights2_0_addr_10_reg_2050_pp0_iter1_reg[9 : 4];
        weights2_0_addr_10_reg_2050_pp0_iter3_reg[9 : 4] <= weights2_0_addr_10_reg_2050_pp0_iter2_reg[9 : 4];
        weights2_0_addr_10_reg_2050_pp0_iter4_reg[9 : 4] <= weights2_0_addr_10_reg_2050_pp0_iter3_reg[9 : 4];
        weights2_0_addr_11_reg_2074[9 : 4] <= zext_ln168_11_fu_1073_p1[9 : 4];
        weights2_0_addr_11_reg_2074_pp0_iter1_reg[9 : 4] <= weights2_0_addr_11_reg_2074[9 : 4];
        weights2_0_addr_11_reg_2074_pp0_iter2_reg[9 : 4] <= weights2_0_addr_11_reg_2074_pp0_iter1_reg[9 : 4];
        weights2_0_addr_11_reg_2074_pp0_iter3_reg[9 : 4] <= weights2_0_addr_11_reg_2074_pp0_iter2_reg[9 : 4];
        weights2_0_addr_11_reg_2074_pp0_iter4_reg[9 : 4] <= weights2_0_addr_11_reg_2074_pp0_iter3_reg[9 : 4];
        weights2_1_addr_10_reg_2056[9 : 4] <= zext_ln168_10_fu_1058_p1[9 : 4];
        weights2_1_addr_10_reg_2056_pp0_iter1_reg[9 : 4] <= weights2_1_addr_10_reg_2056[9 : 4];
        weights2_1_addr_10_reg_2056_pp0_iter2_reg[9 : 4] <= weights2_1_addr_10_reg_2056_pp0_iter1_reg[9 : 4];
        weights2_1_addr_10_reg_2056_pp0_iter3_reg[9 : 4] <= weights2_1_addr_10_reg_2056_pp0_iter2_reg[9 : 4];
        weights2_1_addr_10_reg_2056_pp0_iter4_reg[9 : 4] <= weights2_1_addr_10_reg_2056_pp0_iter3_reg[9 : 4];
        weights2_1_addr_11_reg_2080[9 : 4] <= zext_ln168_11_fu_1073_p1[9 : 4];
        weights2_1_addr_11_reg_2080_pp0_iter1_reg[9 : 4] <= weights2_1_addr_11_reg_2080[9 : 4];
        weights2_1_addr_11_reg_2080_pp0_iter2_reg[9 : 4] <= weights2_1_addr_11_reg_2080_pp0_iter1_reg[9 : 4];
        weights2_1_addr_11_reg_2080_pp0_iter3_reg[9 : 4] <= weights2_1_addr_11_reg_2080_pp0_iter2_reg[9 : 4];
        weights2_1_addr_11_reg_2080_pp0_iter4_reg[9 : 4] <= weights2_1_addr_11_reg_2080_pp0_iter3_reg[9 : 4];
        weights2_2_addr_10_reg_2062[9 : 4] <= zext_ln168_10_fu_1058_p1[9 : 4];
        weights2_2_addr_10_reg_2062_pp0_iter1_reg[9 : 4] <= weights2_2_addr_10_reg_2062[9 : 4];
        weights2_2_addr_10_reg_2062_pp0_iter2_reg[9 : 4] <= weights2_2_addr_10_reg_2062_pp0_iter1_reg[9 : 4];
        weights2_2_addr_10_reg_2062_pp0_iter3_reg[9 : 4] <= weights2_2_addr_10_reg_2062_pp0_iter2_reg[9 : 4];
        weights2_2_addr_10_reg_2062_pp0_iter4_reg[9 : 4] <= weights2_2_addr_10_reg_2062_pp0_iter3_reg[9 : 4];
        weights2_2_addr_11_reg_2086[9 : 4] <= zext_ln168_11_fu_1073_p1[9 : 4];
        weights2_2_addr_11_reg_2086_pp0_iter1_reg[9 : 4] <= weights2_2_addr_11_reg_2086[9 : 4];
        weights2_2_addr_11_reg_2086_pp0_iter2_reg[9 : 4] <= weights2_2_addr_11_reg_2086_pp0_iter1_reg[9 : 4];
        weights2_2_addr_11_reg_2086_pp0_iter3_reg[9 : 4] <= weights2_2_addr_11_reg_2086_pp0_iter2_reg[9 : 4];
        weights2_2_addr_11_reg_2086_pp0_iter4_reg[9 : 4] <= weights2_2_addr_11_reg_2086_pp0_iter3_reg[9 : 4];
        weights2_3_addr_10_reg_2068[9 : 4] <= zext_ln168_10_fu_1058_p1[9 : 4];
        weights2_3_addr_10_reg_2068_pp0_iter1_reg[9 : 4] <= weights2_3_addr_10_reg_2068[9 : 4];
        weights2_3_addr_10_reg_2068_pp0_iter2_reg[9 : 4] <= weights2_3_addr_10_reg_2068_pp0_iter1_reg[9 : 4];
        weights2_3_addr_10_reg_2068_pp0_iter3_reg[9 : 4] <= weights2_3_addr_10_reg_2068_pp0_iter2_reg[9 : 4];
        weights2_3_addr_10_reg_2068_pp0_iter4_reg[9 : 4] <= weights2_3_addr_10_reg_2068_pp0_iter3_reg[9 : 4];
        weights2_3_addr_11_reg_2092[9 : 4] <= zext_ln168_11_fu_1073_p1[9 : 4];
        weights2_3_addr_11_reg_2092_pp0_iter1_reg[9 : 4] <= weights2_3_addr_11_reg_2092[9 : 4];
        weights2_3_addr_11_reg_2092_pp0_iter2_reg[9 : 4] <= weights2_3_addr_11_reg_2092_pp0_iter1_reg[9 : 4];
        weights2_3_addr_11_reg_2092_pp0_iter3_reg[9 : 4] <= weights2_3_addr_11_reg_2092_pp0_iter2_reg[9 : 4];
        weights2_3_addr_11_reg_2092_pp0_iter4_reg[9 : 4] <= weights2_3_addr_11_reg_2092_pp0_iter3_reg[9 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights2_0_addr_12_reg_2138[9 : 4] <= zext_ln168_12_fu_1108_p1[9 : 4];
        weights2_0_addr_12_reg_2138_pp0_iter1_reg[9 : 4] <= weights2_0_addr_12_reg_2138[9 : 4];
        weights2_0_addr_12_reg_2138_pp0_iter2_reg[9 : 4] <= weights2_0_addr_12_reg_2138_pp0_iter1_reg[9 : 4];
        weights2_0_addr_12_reg_2138_pp0_iter3_reg[9 : 4] <= weights2_0_addr_12_reg_2138_pp0_iter2_reg[9 : 4];
        weights2_0_addr_12_reg_2138_pp0_iter4_reg[9 : 4] <= weights2_0_addr_12_reg_2138_pp0_iter3_reg[9 : 4];
        weights2_0_addr_13_reg_2162[9 : 4] <= zext_ln168_13_fu_1123_p1[9 : 4];
        weights2_0_addr_13_reg_2162_pp0_iter1_reg[9 : 4] <= weights2_0_addr_13_reg_2162[9 : 4];
        weights2_0_addr_13_reg_2162_pp0_iter2_reg[9 : 4] <= weights2_0_addr_13_reg_2162_pp0_iter1_reg[9 : 4];
        weights2_0_addr_13_reg_2162_pp0_iter3_reg[9 : 4] <= weights2_0_addr_13_reg_2162_pp0_iter2_reg[9 : 4];
        weights2_0_addr_13_reg_2162_pp0_iter4_reg[9 : 4] <= weights2_0_addr_13_reg_2162_pp0_iter3_reg[9 : 4];
        weights2_1_addr_12_reg_2144[9 : 4] <= zext_ln168_12_fu_1108_p1[9 : 4];
        weights2_1_addr_12_reg_2144_pp0_iter1_reg[9 : 4] <= weights2_1_addr_12_reg_2144[9 : 4];
        weights2_1_addr_12_reg_2144_pp0_iter2_reg[9 : 4] <= weights2_1_addr_12_reg_2144_pp0_iter1_reg[9 : 4];
        weights2_1_addr_12_reg_2144_pp0_iter3_reg[9 : 4] <= weights2_1_addr_12_reg_2144_pp0_iter2_reg[9 : 4];
        weights2_1_addr_12_reg_2144_pp0_iter4_reg[9 : 4] <= weights2_1_addr_12_reg_2144_pp0_iter3_reg[9 : 4];
        weights2_1_addr_13_reg_2167[9 : 4] <= zext_ln168_13_fu_1123_p1[9 : 4];
        weights2_1_addr_13_reg_2167_pp0_iter1_reg[9 : 4] <= weights2_1_addr_13_reg_2167[9 : 4];
        weights2_1_addr_13_reg_2167_pp0_iter2_reg[9 : 4] <= weights2_1_addr_13_reg_2167_pp0_iter1_reg[9 : 4];
        weights2_1_addr_13_reg_2167_pp0_iter3_reg[9 : 4] <= weights2_1_addr_13_reg_2167_pp0_iter2_reg[9 : 4];
        weights2_1_addr_13_reg_2167_pp0_iter4_reg[9 : 4] <= weights2_1_addr_13_reg_2167_pp0_iter3_reg[9 : 4];
        weights2_2_addr_12_reg_2150[9 : 4] <= zext_ln168_12_fu_1108_p1[9 : 4];
        weights2_2_addr_12_reg_2150_pp0_iter1_reg[9 : 4] <= weights2_2_addr_12_reg_2150[9 : 4];
        weights2_2_addr_12_reg_2150_pp0_iter2_reg[9 : 4] <= weights2_2_addr_12_reg_2150_pp0_iter1_reg[9 : 4];
        weights2_2_addr_12_reg_2150_pp0_iter3_reg[9 : 4] <= weights2_2_addr_12_reg_2150_pp0_iter2_reg[9 : 4];
        weights2_2_addr_12_reg_2150_pp0_iter4_reg[9 : 4] <= weights2_2_addr_12_reg_2150_pp0_iter3_reg[9 : 4];
        weights2_2_addr_13_reg_2172[9 : 4] <= zext_ln168_13_fu_1123_p1[9 : 4];
        weights2_2_addr_13_reg_2172_pp0_iter1_reg[9 : 4] <= weights2_2_addr_13_reg_2172[9 : 4];
        weights2_2_addr_13_reg_2172_pp0_iter2_reg[9 : 4] <= weights2_2_addr_13_reg_2172_pp0_iter1_reg[9 : 4];
        weights2_2_addr_13_reg_2172_pp0_iter3_reg[9 : 4] <= weights2_2_addr_13_reg_2172_pp0_iter2_reg[9 : 4];
        weights2_2_addr_13_reg_2172_pp0_iter4_reg[9 : 4] <= weights2_2_addr_13_reg_2172_pp0_iter3_reg[9 : 4];
        weights2_3_addr_12_reg_2156[9 : 4] <= zext_ln168_12_fu_1108_p1[9 : 4];
        weights2_3_addr_12_reg_2156_pp0_iter1_reg[9 : 4] <= weights2_3_addr_12_reg_2156[9 : 4];
        weights2_3_addr_12_reg_2156_pp0_iter2_reg[9 : 4] <= weights2_3_addr_12_reg_2156_pp0_iter1_reg[9 : 4];
        weights2_3_addr_12_reg_2156_pp0_iter3_reg[9 : 4] <= weights2_3_addr_12_reg_2156_pp0_iter2_reg[9 : 4];
        weights2_3_addr_12_reg_2156_pp0_iter4_reg[9 : 4] <= weights2_3_addr_12_reg_2156_pp0_iter3_reg[9 : 4];
        weights2_3_addr_13_reg_2177[9 : 4] <= zext_ln168_13_fu_1123_p1[9 : 4];
        weights2_3_addr_13_reg_2177_pp0_iter1_reg[9 : 4] <= weights2_3_addr_13_reg_2177[9 : 4];
        weights2_3_addr_13_reg_2177_pp0_iter2_reg[9 : 4] <= weights2_3_addr_13_reg_2177_pp0_iter1_reg[9 : 4];
        weights2_3_addr_13_reg_2177_pp0_iter3_reg[9 : 4] <= weights2_3_addr_13_reg_2177_pp0_iter2_reg[9 : 4];
        weights2_3_addr_13_reg_2177_pp0_iter4_reg[9 : 4] <= weights2_3_addr_13_reg_2177_pp0_iter3_reg[9 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights2_0_addr_14_reg_2222[9 : 4] <= zext_ln168_14_fu_1158_p1[9 : 4];
        weights2_0_addr_14_reg_2222_pp0_iter1_reg[9 : 4] <= weights2_0_addr_14_reg_2222[9 : 4];
        weights2_0_addr_14_reg_2222_pp0_iter2_reg[9 : 4] <= weights2_0_addr_14_reg_2222_pp0_iter1_reg[9 : 4];
        weights2_0_addr_14_reg_2222_pp0_iter3_reg[9 : 4] <= weights2_0_addr_14_reg_2222_pp0_iter2_reg[9 : 4];
        weights2_0_addr_14_reg_2222_pp0_iter4_reg[9 : 4] <= weights2_0_addr_14_reg_2222_pp0_iter3_reg[9 : 4];
        weights2_0_addr_15_reg_2246[9 : 4] <= zext_ln168_15_fu_1173_p1[9 : 4];
        weights2_0_addr_15_reg_2246_pp0_iter1_reg[9 : 4] <= weights2_0_addr_15_reg_2246[9 : 4];
        weights2_0_addr_15_reg_2246_pp0_iter2_reg[9 : 4] <= weights2_0_addr_15_reg_2246_pp0_iter1_reg[9 : 4];
        weights2_0_addr_15_reg_2246_pp0_iter3_reg[9 : 4] <= weights2_0_addr_15_reg_2246_pp0_iter2_reg[9 : 4];
        weights2_0_addr_15_reg_2246_pp0_iter4_reg[9 : 4] <= weights2_0_addr_15_reg_2246_pp0_iter3_reg[9 : 4];
        weights2_1_addr_14_reg_2228[9 : 4] <= zext_ln168_14_fu_1158_p1[9 : 4];
        weights2_1_addr_14_reg_2228_pp0_iter1_reg[9 : 4] <= weights2_1_addr_14_reg_2228[9 : 4];
        weights2_1_addr_14_reg_2228_pp0_iter2_reg[9 : 4] <= weights2_1_addr_14_reg_2228_pp0_iter1_reg[9 : 4];
        weights2_1_addr_14_reg_2228_pp0_iter3_reg[9 : 4] <= weights2_1_addr_14_reg_2228_pp0_iter2_reg[9 : 4];
        weights2_1_addr_14_reg_2228_pp0_iter4_reg[9 : 4] <= weights2_1_addr_14_reg_2228_pp0_iter3_reg[9 : 4];
        weights2_1_addr_15_reg_2251[9 : 4] <= zext_ln168_15_fu_1173_p1[9 : 4];
        weights2_1_addr_15_reg_2251_pp0_iter1_reg[9 : 4] <= weights2_1_addr_15_reg_2251[9 : 4];
        weights2_1_addr_15_reg_2251_pp0_iter2_reg[9 : 4] <= weights2_1_addr_15_reg_2251_pp0_iter1_reg[9 : 4];
        weights2_1_addr_15_reg_2251_pp0_iter3_reg[9 : 4] <= weights2_1_addr_15_reg_2251_pp0_iter2_reg[9 : 4];
        weights2_1_addr_15_reg_2251_pp0_iter4_reg[9 : 4] <= weights2_1_addr_15_reg_2251_pp0_iter3_reg[9 : 4];
        weights2_2_addr_14_reg_2234[9 : 4] <= zext_ln168_14_fu_1158_p1[9 : 4];
        weights2_2_addr_14_reg_2234_pp0_iter1_reg[9 : 4] <= weights2_2_addr_14_reg_2234[9 : 4];
        weights2_2_addr_14_reg_2234_pp0_iter2_reg[9 : 4] <= weights2_2_addr_14_reg_2234_pp0_iter1_reg[9 : 4];
        weights2_2_addr_14_reg_2234_pp0_iter3_reg[9 : 4] <= weights2_2_addr_14_reg_2234_pp0_iter2_reg[9 : 4];
        weights2_2_addr_14_reg_2234_pp0_iter4_reg[9 : 4] <= weights2_2_addr_14_reg_2234_pp0_iter3_reg[9 : 4];
        weights2_2_addr_15_reg_2256[9 : 4] <= zext_ln168_15_fu_1173_p1[9 : 4];
        weights2_2_addr_15_reg_2256_pp0_iter1_reg[9 : 4] <= weights2_2_addr_15_reg_2256[9 : 4];
        weights2_2_addr_15_reg_2256_pp0_iter2_reg[9 : 4] <= weights2_2_addr_15_reg_2256_pp0_iter1_reg[9 : 4];
        weights2_2_addr_15_reg_2256_pp0_iter3_reg[9 : 4] <= weights2_2_addr_15_reg_2256_pp0_iter2_reg[9 : 4];
        weights2_2_addr_15_reg_2256_pp0_iter4_reg[9 : 4] <= weights2_2_addr_15_reg_2256_pp0_iter3_reg[9 : 4];
        weights2_3_addr_14_reg_2240[9 : 4] <= zext_ln168_14_fu_1158_p1[9 : 4];
        weights2_3_addr_14_reg_2240_pp0_iter1_reg[9 : 4] <= weights2_3_addr_14_reg_2240[9 : 4];
        weights2_3_addr_14_reg_2240_pp0_iter2_reg[9 : 4] <= weights2_3_addr_14_reg_2240_pp0_iter1_reg[9 : 4];
        weights2_3_addr_14_reg_2240_pp0_iter3_reg[9 : 4] <= weights2_3_addr_14_reg_2240_pp0_iter2_reg[9 : 4];
        weights2_3_addr_14_reg_2240_pp0_iter4_reg[9 : 4] <= weights2_3_addr_14_reg_2240_pp0_iter3_reg[9 : 4];
        weights2_3_addr_15_reg_2261[9 : 4] <= zext_ln168_15_fu_1173_p1[9 : 4];
        weights2_3_addr_15_reg_2261_pp0_iter1_reg[9 : 4] <= weights2_3_addr_15_reg_2261[9 : 4];
        weights2_3_addr_15_reg_2261_pp0_iter2_reg[9 : 4] <= weights2_3_addr_15_reg_2261_pp0_iter1_reg[9 : 4];
        weights2_3_addr_15_reg_2261_pp0_iter3_reg[9 : 4] <= weights2_3_addr_15_reg_2261_pp0_iter2_reg[9 : 4];
        weights2_3_addr_15_reg_2261_pp0_iter4_reg[9 : 4] <= weights2_3_addr_15_reg_2261_pp0_iter3_reg[9 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_0_addr_2_reg_1742[9 : 4] <= zext_ln168_2_fu_858_p1[9 : 4];
        weights2_0_addr_2_reg_1742_pp0_iter1_reg[9 : 4] <= weights2_0_addr_2_reg_1742[9 : 4];
        weights2_0_addr_2_reg_1742_pp0_iter2_reg[9 : 4] <= weights2_0_addr_2_reg_1742_pp0_iter1_reg[9 : 4];
        weights2_0_addr_2_reg_1742_pp0_iter3_reg[9 : 4] <= weights2_0_addr_2_reg_1742_pp0_iter2_reg[9 : 4];
        weights2_0_addr_3_reg_1762[9 : 4] <= zext_ln168_3_fu_873_p1[9 : 4];
        weights2_0_addr_3_reg_1762_pp0_iter1_reg[9 : 4] <= weights2_0_addr_3_reg_1762[9 : 4];
        weights2_0_addr_3_reg_1762_pp0_iter2_reg[9 : 4] <= weights2_0_addr_3_reg_1762_pp0_iter1_reg[9 : 4];
        weights2_0_addr_3_reg_1762_pp0_iter3_reg[9 : 4] <= weights2_0_addr_3_reg_1762_pp0_iter2_reg[9 : 4];
        weights2_0_addr_3_reg_1762_pp0_iter4_reg[9 : 4] <= weights2_0_addr_3_reg_1762_pp0_iter3_reg[9 : 4];
        weights2_1_addr_2_reg_1747[9 : 4] <= zext_ln168_2_fu_858_p1[9 : 4];
        weights2_1_addr_2_reg_1747_pp0_iter1_reg[9 : 4] <= weights2_1_addr_2_reg_1747[9 : 4];
        weights2_1_addr_2_reg_1747_pp0_iter2_reg[9 : 4] <= weights2_1_addr_2_reg_1747_pp0_iter1_reg[9 : 4];
        weights2_1_addr_2_reg_1747_pp0_iter3_reg[9 : 4] <= weights2_1_addr_2_reg_1747_pp0_iter2_reg[9 : 4];
        weights2_1_addr_3_reg_1768[9 : 4] <= zext_ln168_3_fu_873_p1[9 : 4];
        weights2_1_addr_3_reg_1768_pp0_iter1_reg[9 : 4] <= weights2_1_addr_3_reg_1768[9 : 4];
        weights2_1_addr_3_reg_1768_pp0_iter2_reg[9 : 4] <= weights2_1_addr_3_reg_1768_pp0_iter1_reg[9 : 4];
        weights2_1_addr_3_reg_1768_pp0_iter3_reg[9 : 4] <= weights2_1_addr_3_reg_1768_pp0_iter2_reg[9 : 4];
        weights2_1_addr_3_reg_1768_pp0_iter4_reg[9 : 4] <= weights2_1_addr_3_reg_1768_pp0_iter3_reg[9 : 4];
        weights2_2_addr_2_reg_1752[9 : 4] <= zext_ln168_2_fu_858_p1[9 : 4];
        weights2_2_addr_2_reg_1752_pp0_iter1_reg[9 : 4] <= weights2_2_addr_2_reg_1752[9 : 4];
        weights2_2_addr_2_reg_1752_pp0_iter2_reg[9 : 4] <= weights2_2_addr_2_reg_1752_pp0_iter1_reg[9 : 4];
        weights2_2_addr_2_reg_1752_pp0_iter3_reg[9 : 4] <= weights2_2_addr_2_reg_1752_pp0_iter2_reg[9 : 4];
        weights2_2_addr_3_reg_1774[9 : 4] <= zext_ln168_3_fu_873_p1[9 : 4];
        weights2_2_addr_3_reg_1774_pp0_iter1_reg[9 : 4] <= weights2_2_addr_3_reg_1774[9 : 4];
        weights2_2_addr_3_reg_1774_pp0_iter2_reg[9 : 4] <= weights2_2_addr_3_reg_1774_pp0_iter1_reg[9 : 4];
        weights2_2_addr_3_reg_1774_pp0_iter3_reg[9 : 4] <= weights2_2_addr_3_reg_1774_pp0_iter2_reg[9 : 4];
        weights2_2_addr_3_reg_1774_pp0_iter4_reg[9 : 4] <= weights2_2_addr_3_reg_1774_pp0_iter3_reg[9 : 4];
        weights2_3_addr_2_reg_1757[9 : 4] <= zext_ln168_2_fu_858_p1[9 : 4];
        weights2_3_addr_2_reg_1757_pp0_iter1_reg[9 : 4] <= weights2_3_addr_2_reg_1757[9 : 4];
        weights2_3_addr_2_reg_1757_pp0_iter2_reg[9 : 4] <= weights2_3_addr_2_reg_1757_pp0_iter1_reg[9 : 4];
        weights2_3_addr_2_reg_1757_pp0_iter3_reg[9 : 4] <= weights2_3_addr_2_reg_1757_pp0_iter2_reg[9 : 4];
        weights2_3_addr_3_reg_1780[9 : 4] <= zext_ln168_3_fu_873_p1[9 : 4];
        weights2_3_addr_3_reg_1780_pp0_iter1_reg[9 : 4] <= weights2_3_addr_3_reg_1780[9 : 4];
        weights2_3_addr_3_reg_1780_pp0_iter2_reg[9 : 4] <= weights2_3_addr_3_reg_1780_pp0_iter1_reg[9 : 4];
        weights2_3_addr_3_reg_1780_pp0_iter3_reg[9 : 4] <= weights2_3_addr_3_reg_1780_pp0_iter2_reg[9 : 4];
        weights2_3_addr_3_reg_1780_pp0_iter4_reg[9 : 4] <= weights2_3_addr_3_reg_1780_pp0_iter3_reg[9 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_0_addr_4_reg_1806[9 : 4] <= zext_ln168_4_fu_908_p1[9 : 4];
        weights2_0_addr_4_reg_1806_pp0_iter1_reg[9 : 4] <= weights2_0_addr_4_reg_1806[9 : 4];
        weights2_0_addr_4_reg_1806_pp0_iter2_reg[9 : 4] <= weights2_0_addr_4_reg_1806_pp0_iter1_reg[9 : 4];
        weights2_0_addr_4_reg_1806_pp0_iter3_reg[9 : 4] <= weights2_0_addr_4_reg_1806_pp0_iter2_reg[9 : 4];
        weights2_0_addr_4_reg_1806_pp0_iter4_reg[9 : 4] <= weights2_0_addr_4_reg_1806_pp0_iter3_reg[9 : 4];
        weights2_0_addr_5_reg_1830[9 : 4] <= zext_ln168_5_fu_923_p1[9 : 4];
        weights2_0_addr_5_reg_1830_pp0_iter1_reg[9 : 4] <= weights2_0_addr_5_reg_1830[9 : 4];
        weights2_0_addr_5_reg_1830_pp0_iter2_reg[9 : 4] <= weights2_0_addr_5_reg_1830_pp0_iter1_reg[9 : 4];
        weights2_0_addr_5_reg_1830_pp0_iter3_reg[9 : 4] <= weights2_0_addr_5_reg_1830_pp0_iter2_reg[9 : 4];
        weights2_0_addr_5_reg_1830_pp0_iter4_reg[9 : 4] <= weights2_0_addr_5_reg_1830_pp0_iter3_reg[9 : 4];
        weights2_1_addr_4_reg_1812[9 : 4] <= zext_ln168_4_fu_908_p1[9 : 4];
        weights2_1_addr_4_reg_1812_pp0_iter1_reg[9 : 4] <= weights2_1_addr_4_reg_1812[9 : 4];
        weights2_1_addr_4_reg_1812_pp0_iter2_reg[9 : 4] <= weights2_1_addr_4_reg_1812_pp0_iter1_reg[9 : 4];
        weights2_1_addr_4_reg_1812_pp0_iter3_reg[9 : 4] <= weights2_1_addr_4_reg_1812_pp0_iter2_reg[9 : 4];
        weights2_1_addr_4_reg_1812_pp0_iter4_reg[9 : 4] <= weights2_1_addr_4_reg_1812_pp0_iter3_reg[9 : 4];
        weights2_1_addr_5_reg_1836[9 : 4] <= zext_ln168_5_fu_923_p1[9 : 4];
        weights2_1_addr_5_reg_1836_pp0_iter1_reg[9 : 4] <= weights2_1_addr_5_reg_1836[9 : 4];
        weights2_1_addr_5_reg_1836_pp0_iter2_reg[9 : 4] <= weights2_1_addr_5_reg_1836_pp0_iter1_reg[9 : 4];
        weights2_1_addr_5_reg_1836_pp0_iter3_reg[9 : 4] <= weights2_1_addr_5_reg_1836_pp0_iter2_reg[9 : 4];
        weights2_1_addr_5_reg_1836_pp0_iter4_reg[9 : 4] <= weights2_1_addr_5_reg_1836_pp0_iter3_reg[9 : 4];
        weights2_2_addr_4_reg_1818[9 : 4] <= zext_ln168_4_fu_908_p1[9 : 4];
        weights2_2_addr_4_reg_1818_pp0_iter1_reg[9 : 4] <= weights2_2_addr_4_reg_1818[9 : 4];
        weights2_2_addr_4_reg_1818_pp0_iter2_reg[9 : 4] <= weights2_2_addr_4_reg_1818_pp0_iter1_reg[9 : 4];
        weights2_2_addr_4_reg_1818_pp0_iter3_reg[9 : 4] <= weights2_2_addr_4_reg_1818_pp0_iter2_reg[9 : 4];
        weights2_2_addr_4_reg_1818_pp0_iter4_reg[9 : 4] <= weights2_2_addr_4_reg_1818_pp0_iter3_reg[9 : 4];
        weights2_2_addr_5_reg_1842[9 : 4] <= zext_ln168_5_fu_923_p1[9 : 4];
        weights2_2_addr_5_reg_1842_pp0_iter1_reg[9 : 4] <= weights2_2_addr_5_reg_1842[9 : 4];
        weights2_2_addr_5_reg_1842_pp0_iter2_reg[9 : 4] <= weights2_2_addr_5_reg_1842_pp0_iter1_reg[9 : 4];
        weights2_2_addr_5_reg_1842_pp0_iter3_reg[9 : 4] <= weights2_2_addr_5_reg_1842_pp0_iter2_reg[9 : 4];
        weights2_2_addr_5_reg_1842_pp0_iter4_reg[9 : 4] <= weights2_2_addr_5_reg_1842_pp0_iter3_reg[9 : 4];
        weights2_3_addr_4_reg_1824[9 : 4] <= zext_ln168_4_fu_908_p1[9 : 4];
        weights2_3_addr_4_reg_1824_pp0_iter1_reg[9 : 4] <= weights2_3_addr_4_reg_1824[9 : 4];
        weights2_3_addr_4_reg_1824_pp0_iter2_reg[9 : 4] <= weights2_3_addr_4_reg_1824_pp0_iter1_reg[9 : 4];
        weights2_3_addr_4_reg_1824_pp0_iter3_reg[9 : 4] <= weights2_3_addr_4_reg_1824_pp0_iter2_reg[9 : 4];
        weights2_3_addr_4_reg_1824_pp0_iter4_reg[9 : 4] <= weights2_3_addr_4_reg_1824_pp0_iter3_reg[9 : 4];
        weights2_3_addr_5_reg_1848[9 : 4] <= zext_ln168_5_fu_923_p1[9 : 4];
        weights2_3_addr_5_reg_1848_pp0_iter1_reg[9 : 4] <= weights2_3_addr_5_reg_1848[9 : 4];
        weights2_3_addr_5_reg_1848_pp0_iter2_reg[9 : 4] <= weights2_3_addr_5_reg_1848_pp0_iter1_reg[9 : 4];
        weights2_3_addr_5_reg_1848_pp0_iter3_reg[9 : 4] <= weights2_3_addr_5_reg_1848_pp0_iter2_reg[9 : 4];
        weights2_3_addr_5_reg_1848_pp0_iter4_reg[9 : 4] <= weights2_3_addr_5_reg_1848_pp0_iter3_reg[9 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_0_addr_6_reg_1874[9 : 4] <= zext_ln168_6_fu_958_p1[9 : 4];
        weights2_0_addr_6_reg_1874_pp0_iter1_reg[9 : 4] <= weights2_0_addr_6_reg_1874[9 : 4];
        weights2_0_addr_6_reg_1874_pp0_iter2_reg[9 : 4] <= weights2_0_addr_6_reg_1874_pp0_iter1_reg[9 : 4];
        weights2_0_addr_6_reg_1874_pp0_iter3_reg[9 : 4] <= weights2_0_addr_6_reg_1874_pp0_iter2_reg[9 : 4];
        weights2_0_addr_6_reg_1874_pp0_iter4_reg[9 : 4] <= weights2_0_addr_6_reg_1874_pp0_iter3_reg[9 : 4];
        weights2_0_addr_7_reg_1898[9 : 4] <= zext_ln168_7_fu_973_p1[9 : 4];
        weights2_0_addr_7_reg_1898_pp0_iter1_reg[9 : 4] <= weights2_0_addr_7_reg_1898[9 : 4];
        weights2_0_addr_7_reg_1898_pp0_iter2_reg[9 : 4] <= weights2_0_addr_7_reg_1898_pp0_iter1_reg[9 : 4];
        weights2_0_addr_7_reg_1898_pp0_iter3_reg[9 : 4] <= weights2_0_addr_7_reg_1898_pp0_iter2_reg[9 : 4];
        weights2_0_addr_7_reg_1898_pp0_iter4_reg[9 : 4] <= weights2_0_addr_7_reg_1898_pp0_iter3_reg[9 : 4];
        weights2_1_addr_6_reg_1880[9 : 4] <= zext_ln168_6_fu_958_p1[9 : 4];
        weights2_1_addr_6_reg_1880_pp0_iter1_reg[9 : 4] <= weights2_1_addr_6_reg_1880[9 : 4];
        weights2_1_addr_6_reg_1880_pp0_iter2_reg[9 : 4] <= weights2_1_addr_6_reg_1880_pp0_iter1_reg[9 : 4];
        weights2_1_addr_6_reg_1880_pp0_iter3_reg[9 : 4] <= weights2_1_addr_6_reg_1880_pp0_iter2_reg[9 : 4];
        weights2_1_addr_6_reg_1880_pp0_iter4_reg[9 : 4] <= weights2_1_addr_6_reg_1880_pp0_iter3_reg[9 : 4];
        weights2_1_addr_7_reg_1904[9 : 4] <= zext_ln168_7_fu_973_p1[9 : 4];
        weights2_1_addr_7_reg_1904_pp0_iter1_reg[9 : 4] <= weights2_1_addr_7_reg_1904[9 : 4];
        weights2_1_addr_7_reg_1904_pp0_iter2_reg[9 : 4] <= weights2_1_addr_7_reg_1904_pp0_iter1_reg[9 : 4];
        weights2_1_addr_7_reg_1904_pp0_iter3_reg[9 : 4] <= weights2_1_addr_7_reg_1904_pp0_iter2_reg[9 : 4];
        weights2_1_addr_7_reg_1904_pp0_iter4_reg[9 : 4] <= weights2_1_addr_7_reg_1904_pp0_iter3_reg[9 : 4];
        weights2_2_addr_6_reg_1886[9 : 4] <= zext_ln168_6_fu_958_p1[9 : 4];
        weights2_2_addr_6_reg_1886_pp0_iter1_reg[9 : 4] <= weights2_2_addr_6_reg_1886[9 : 4];
        weights2_2_addr_6_reg_1886_pp0_iter2_reg[9 : 4] <= weights2_2_addr_6_reg_1886_pp0_iter1_reg[9 : 4];
        weights2_2_addr_6_reg_1886_pp0_iter3_reg[9 : 4] <= weights2_2_addr_6_reg_1886_pp0_iter2_reg[9 : 4];
        weights2_2_addr_6_reg_1886_pp0_iter4_reg[9 : 4] <= weights2_2_addr_6_reg_1886_pp0_iter3_reg[9 : 4];
        weights2_2_addr_7_reg_1910[9 : 4] <= zext_ln168_7_fu_973_p1[9 : 4];
        weights2_2_addr_7_reg_1910_pp0_iter1_reg[9 : 4] <= weights2_2_addr_7_reg_1910[9 : 4];
        weights2_2_addr_7_reg_1910_pp0_iter2_reg[9 : 4] <= weights2_2_addr_7_reg_1910_pp0_iter1_reg[9 : 4];
        weights2_2_addr_7_reg_1910_pp0_iter3_reg[9 : 4] <= weights2_2_addr_7_reg_1910_pp0_iter2_reg[9 : 4];
        weights2_2_addr_7_reg_1910_pp0_iter4_reg[9 : 4] <= weights2_2_addr_7_reg_1910_pp0_iter3_reg[9 : 4];
        weights2_3_addr_6_reg_1892[9 : 4] <= zext_ln168_6_fu_958_p1[9 : 4];
        weights2_3_addr_6_reg_1892_pp0_iter1_reg[9 : 4] <= weights2_3_addr_6_reg_1892[9 : 4];
        weights2_3_addr_6_reg_1892_pp0_iter2_reg[9 : 4] <= weights2_3_addr_6_reg_1892_pp0_iter1_reg[9 : 4];
        weights2_3_addr_6_reg_1892_pp0_iter3_reg[9 : 4] <= weights2_3_addr_6_reg_1892_pp0_iter2_reg[9 : 4];
        weights2_3_addr_6_reg_1892_pp0_iter4_reg[9 : 4] <= weights2_3_addr_6_reg_1892_pp0_iter3_reg[9 : 4];
        weights2_3_addr_7_reg_1916[9 : 4] <= zext_ln168_7_fu_973_p1[9 : 4];
        weights2_3_addr_7_reg_1916_pp0_iter1_reg[9 : 4] <= weights2_3_addr_7_reg_1916[9 : 4];
        weights2_3_addr_7_reg_1916_pp0_iter2_reg[9 : 4] <= weights2_3_addr_7_reg_1916_pp0_iter1_reg[9 : 4];
        weights2_3_addr_7_reg_1916_pp0_iter3_reg[9 : 4] <= weights2_3_addr_7_reg_1916_pp0_iter2_reg[9 : 4];
        weights2_3_addr_7_reg_1916_pp0_iter4_reg[9 : 4] <= weights2_3_addr_7_reg_1916_pp0_iter3_reg[9 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_0_addr_8_reg_1962[9 : 4] <= zext_ln168_8_fu_1008_p1[9 : 4];
        weights2_0_addr_8_reg_1962_pp0_iter1_reg[9 : 4] <= weights2_0_addr_8_reg_1962[9 : 4];
        weights2_0_addr_8_reg_1962_pp0_iter2_reg[9 : 4] <= weights2_0_addr_8_reg_1962_pp0_iter1_reg[9 : 4];
        weights2_0_addr_8_reg_1962_pp0_iter3_reg[9 : 4] <= weights2_0_addr_8_reg_1962_pp0_iter2_reg[9 : 4];
        weights2_0_addr_8_reg_1962_pp0_iter4_reg[9 : 4] <= weights2_0_addr_8_reg_1962_pp0_iter3_reg[9 : 4];
        weights2_0_addr_9_reg_1986[9 : 4] <= zext_ln168_9_fu_1023_p1[9 : 4];
        weights2_0_addr_9_reg_1986_pp0_iter1_reg[9 : 4] <= weights2_0_addr_9_reg_1986[9 : 4];
        weights2_0_addr_9_reg_1986_pp0_iter2_reg[9 : 4] <= weights2_0_addr_9_reg_1986_pp0_iter1_reg[9 : 4];
        weights2_0_addr_9_reg_1986_pp0_iter3_reg[9 : 4] <= weights2_0_addr_9_reg_1986_pp0_iter2_reg[9 : 4];
        weights2_0_addr_9_reg_1986_pp0_iter4_reg[9 : 4] <= weights2_0_addr_9_reg_1986_pp0_iter3_reg[9 : 4];
        weights2_1_addr_8_reg_1968[9 : 4] <= zext_ln168_8_fu_1008_p1[9 : 4];
        weights2_1_addr_8_reg_1968_pp0_iter1_reg[9 : 4] <= weights2_1_addr_8_reg_1968[9 : 4];
        weights2_1_addr_8_reg_1968_pp0_iter2_reg[9 : 4] <= weights2_1_addr_8_reg_1968_pp0_iter1_reg[9 : 4];
        weights2_1_addr_8_reg_1968_pp0_iter3_reg[9 : 4] <= weights2_1_addr_8_reg_1968_pp0_iter2_reg[9 : 4];
        weights2_1_addr_8_reg_1968_pp0_iter4_reg[9 : 4] <= weights2_1_addr_8_reg_1968_pp0_iter3_reg[9 : 4];
        weights2_1_addr_9_reg_1992[9 : 4] <= zext_ln168_9_fu_1023_p1[9 : 4];
        weights2_1_addr_9_reg_1992_pp0_iter1_reg[9 : 4] <= weights2_1_addr_9_reg_1992[9 : 4];
        weights2_1_addr_9_reg_1992_pp0_iter2_reg[9 : 4] <= weights2_1_addr_9_reg_1992_pp0_iter1_reg[9 : 4];
        weights2_1_addr_9_reg_1992_pp0_iter3_reg[9 : 4] <= weights2_1_addr_9_reg_1992_pp0_iter2_reg[9 : 4];
        weights2_1_addr_9_reg_1992_pp0_iter4_reg[9 : 4] <= weights2_1_addr_9_reg_1992_pp0_iter3_reg[9 : 4];
        weights2_2_addr_8_reg_1974[9 : 4] <= zext_ln168_8_fu_1008_p1[9 : 4];
        weights2_2_addr_8_reg_1974_pp0_iter1_reg[9 : 4] <= weights2_2_addr_8_reg_1974[9 : 4];
        weights2_2_addr_8_reg_1974_pp0_iter2_reg[9 : 4] <= weights2_2_addr_8_reg_1974_pp0_iter1_reg[9 : 4];
        weights2_2_addr_8_reg_1974_pp0_iter3_reg[9 : 4] <= weights2_2_addr_8_reg_1974_pp0_iter2_reg[9 : 4];
        weights2_2_addr_8_reg_1974_pp0_iter4_reg[9 : 4] <= weights2_2_addr_8_reg_1974_pp0_iter3_reg[9 : 4];
        weights2_2_addr_9_reg_1998[9 : 4] <= zext_ln168_9_fu_1023_p1[9 : 4];
        weights2_2_addr_9_reg_1998_pp0_iter1_reg[9 : 4] <= weights2_2_addr_9_reg_1998[9 : 4];
        weights2_2_addr_9_reg_1998_pp0_iter2_reg[9 : 4] <= weights2_2_addr_9_reg_1998_pp0_iter1_reg[9 : 4];
        weights2_2_addr_9_reg_1998_pp0_iter3_reg[9 : 4] <= weights2_2_addr_9_reg_1998_pp0_iter2_reg[9 : 4];
        weights2_2_addr_9_reg_1998_pp0_iter4_reg[9 : 4] <= weights2_2_addr_9_reg_1998_pp0_iter3_reg[9 : 4];
        weights2_3_addr_8_reg_1980[9 : 4] <= zext_ln168_8_fu_1008_p1[9 : 4];
        weights2_3_addr_8_reg_1980_pp0_iter1_reg[9 : 4] <= weights2_3_addr_8_reg_1980[9 : 4];
        weights2_3_addr_8_reg_1980_pp0_iter2_reg[9 : 4] <= weights2_3_addr_8_reg_1980_pp0_iter1_reg[9 : 4];
        weights2_3_addr_8_reg_1980_pp0_iter3_reg[9 : 4] <= weights2_3_addr_8_reg_1980_pp0_iter2_reg[9 : 4];
        weights2_3_addr_8_reg_1980_pp0_iter4_reg[9 : 4] <= weights2_3_addr_8_reg_1980_pp0_iter3_reg[9 : 4];
        weights2_3_addr_9_reg_2004[9 : 4] <= zext_ln168_9_fu_1023_p1[9 : 4];
        weights2_3_addr_9_reg_2004_pp0_iter1_reg[9 : 4] <= weights2_3_addr_9_reg_2004[9 : 4];
        weights2_3_addr_9_reg_2004_pp0_iter2_reg[9 : 4] <= weights2_3_addr_9_reg_2004_pp0_iter1_reg[9 : 4];
        weights2_3_addr_9_reg_2004_pp0_iter3_reg[9 : 4] <= weights2_3_addr_9_reg_2004_pp0_iter2_reg[9 : 4];
        weights2_3_addr_9_reg_2004_pp0_iter4_reg[9 : 4] <= weights2_3_addr_9_reg_2004_pp0_iter3_reg[9 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights2_0_load_11_reg_2118 <= weights2_0_q0;
        weights2_1_load_11_reg_2123 <= weights2_1_q0;
        weights2_2_load_11_reg_2128 <= weights2_2_q0;
        weights2_3_load_11_reg_2133 <= weights2_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights2_0_load_13_reg_2202 <= weights2_0_q0;
        weights2_1_load_13_reg_2207 <= weights2_1_q0;
        weights2_2_load_13_reg_2212 <= weights2_2_q0;
        weights2_3_load_13_reg_2217 <= weights2_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights2_0_load_15_reg_2286 <= weights2_0_q0;
        weights2_1_load_15_reg_2291 <= weights2_1_q0;
        weights2_2_load_15_reg_2296 <= weights2_2_q0;
        weights2_3_load_15_reg_2301 <= weights2_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_0_load_7_reg_1942 <= weights2_0_q0;
        weights2_1_load_7_reg_1947 <= weights2_1_q0;
        weights2_2_load_7_reg_1952 <= weights2_2_q0;
        weights2_3_load_7_reg_1957 <= weights2_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights2_0_load_9_reg_2030 <= weights2_0_q0;
        weights2_1_load_9_reg_2035 <= weights2_1_q0;
        weights2_2_load_9_reg_2040 <= weights2_2_q0;
        weights2_3_load_9_reg_2045 <= weights2_3_q0;
    end
end
always @ (*) begin
    if (((icmp_ln166_reg_1676 == 1'd1) & (1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
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
        ap_sig_allocacmp_i_3 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_3 = i_fu_76;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_634_p0 = bitcast_ln168_120_fu_1345_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_634_p0 = bitcast_ln168_112_fu_1325_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_634_p0 = bitcast_ln168_104_fu_1309_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_634_p0 = bitcast_ln168_96_fu_1289_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_634_p0 = bitcast_ln168_88_fu_1273_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_634_p0 = bitcast_ln168_80_fu_1253_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_634_p0 = bitcast_ln168_72_fu_1237_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_634_p0 = bitcast_ln168_64_fu_1217_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_634_p0 = bitcast_ln168_56_fu_1201_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_634_p0 = bitcast_ln168_48_fu_1181_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_634_p0 = bitcast_ln168_40_fu_1131_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_634_p0 = bitcast_ln168_32_fu_1081_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_634_p0 = bitcast_ln168_24_fu_1031_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_634_p0 = bitcast_ln168_16_fu_981_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_634_p0 = bitcast_ln168_8_fu_931_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_634_p0 = bitcast_ln168_fu_881_p1;
    end else begin
        grp_fu_634_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_638_p0 = bitcast_ln168_122_fu_1349_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_638_p0 = bitcast_ln168_114_fu_1330_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_638_p0 = bitcast_ln168_106_fu_1313_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_638_p0 = bitcast_ln168_98_fu_1294_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_638_p0 = bitcast_ln168_90_fu_1277_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_638_p0 = bitcast_ln168_82_fu_1258_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_638_p0 = bitcast_ln168_74_fu_1241_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_638_p0 = bitcast_ln168_66_fu_1222_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_638_p0 = bitcast_ln168_58_fu_1205_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_638_p0 = bitcast_ln168_50_fu_1186_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_638_p0 = bitcast_ln168_42_fu_1136_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_638_p0 = bitcast_ln168_34_fu_1086_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_638_p0 = bitcast_ln168_26_fu_1036_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_638_p0 = bitcast_ln168_18_fu_986_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_638_p0 = bitcast_ln168_10_fu_936_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_638_p0 = bitcast_ln168_2_fu_886_p1;
    end else begin
        grp_fu_638_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_642_p0 = bitcast_ln168_124_fu_1353_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_642_p0 = bitcast_ln168_116_fu_1335_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_642_p0 = bitcast_ln168_108_fu_1317_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_642_p0 = bitcast_ln168_100_fu_1299_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_642_p0 = bitcast_ln168_92_fu_1281_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_642_p0 = bitcast_ln168_84_fu_1263_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_642_p0 = bitcast_ln168_76_fu_1245_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_642_p0 = bitcast_ln168_68_fu_1227_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_642_p0 = bitcast_ln168_60_fu_1209_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_642_p0 = bitcast_ln168_52_fu_1191_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_642_p0 = bitcast_ln168_44_fu_1141_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_642_p0 = bitcast_ln168_36_fu_1091_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_642_p0 = bitcast_ln168_28_fu_1041_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_642_p0 = bitcast_ln168_20_fu_991_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_642_p0 = bitcast_ln168_12_fu_941_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_642_p0 = bitcast_ln168_4_fu_891_p1;
    end else begin
        grp_fu_642_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_646_p0 = bitcast_ln168_126_fu_1357_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_646_p0 = bitcast_ln168_118_fu_1340_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_646_p0 = bitcast_ln168_110_fu_1321_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_646_p0 = bitcast_ln168_102_fu_1304_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_646_p0 = bitcast_ln168_94_fu_1285_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_646_p0 = bitcast_ln168_86_fu_1268_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_646_p0 = bitcast_ln168_78_fu_1249_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_646_p0 = bitcast_ln168_70_fu_1232_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_646_p0 = bitcast_ln168_62_fu_1213_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_646_p0 = bitcast_ln168_54_fu_1196_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_646_p0 = bitcast_ln168_46_fu_1146_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_646_p0 = bitcast_ln168_38_fu_1096_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_646_p0 = bitcast_ln168_30_fu_1046_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_646_p0 = bitcast_ln168_22_fu_996_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_646_p0 = bitcast_ln168_14_fu_946_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_646_p0 = bitcast_ln168_6_fu_896_p1;
    end else begin
        grp_fu_646_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights2_0_address0_local = weights2_0_addr_15_reg_2246_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights2_0_address0_local = weights2_0_addr_14_reg_2222_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights2_0_address0_local = weights2_0_addr_13_reg_2162_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights2_0_address0_local = weights2_0_addr_12_reg_2138_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights2_0_address0_local = weights2_0_addr_10_reg_2050_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights2_0_address0_local = weights2_0_addr_8_reg_1962_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights2_0_address0_local = weights2_0_addr_6_reg_1874_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights2_0_address0_local = weights2_0_addr_4_reg_1806_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights2_0_address0_local = zext_ln168_15_fu_1173_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights2_0_address0_local = zext_ln168_13_fu_1123_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights2_0_address0_local = zext_ln168_11_fu_1073_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_0_address0_local = zext_ln168_9_fu_1023_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_0_address0_local = zext_ln168_7_fu_973_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_0_address0_local = zext_ln168_5_fu_923_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_0_address0_local = zext_ln168_3_fu_873_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_0_address0_local = zext_ln168_1_fu_838_p1;
    end else begin
        weights2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights2_0_address1_local = weights2_0_addr_11_reg_2074_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights2_0_address1_local = weights2_0_addr_9_reg_1986_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights2_0_address1_local = weights2_0_addr_7_reg_1898_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights2_0_address1_local = weights2_0_addr_5_reg_1830_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights2_0_address1_local = weights2_0_addr_3_reg_1762_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights2_0_address1_local = weights2_0_addr_2_reg_1742_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights2_0_address1_local = weights2_0_addr_1_reg_1718_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights2_0_address1_local = weights2_0_addr_reg_1698_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights2_0_address1_local = zext_ln168_14_fu_1158_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights2_0_address1_local = zext_ln168_12_fu_1108_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights2_0_address1_local = zext_ln168_10_fu_1058_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_0_address1_local = zext_ln168_8_fu_1008_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_0_address1_local = zext_ln168_6_fu_958_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_0_address1_local = zext_ln168_4_fu_908_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_0_address1_local = zext_ln168_2_fu_858_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_0_address1_local = zext_ln168_fu_822_p1;
    end else begin
        weights2_0_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_0_ce0_local = 1'b1;
    end else begin
        weights2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_0_ce1_local = 1'b1;
    end else begin
        weights2_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            weights2_0_d0_local = bitcast_ln168_121_fu_1641_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            weights2_0_d0_local = bitcast_ln168_113_fu_1621_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            weights2_0_d0_local = bitcast_ln168_105_fu_1601_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            weights2_0_d0_local = bitcast_ln168_97_fu_1581_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            weights2_0_d0_local = bitcast_ln168_81_fu_1549_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            weights2_0_d0_local = bitcast_ln168_65_fu_1517_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            weights2_0_d0_local = bitcast_ln168_49_fu_1481_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            weights2_0_d0_local = bitcast_ln168_33_fu_1441_p1;
        end else begin
            weights2_0_d0_local = 'bx;
        end
    end else begin
        weights2_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights2_0_d1_local = bitcast_ln168_89_fu_1565_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights2_0_d1_local = bitcast_ln168_73_fu_1533_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights2_0_d1_local = bitcast_ln168_57_fu_1501_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights2_0_d1_local = bitcast_ln168_41_fu_1461_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights2_0_d1_local = bitcast_ln168_25_fu_1421_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights2_0_d1_local = bitcast_ln168_17_fu_1401_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights2_0_d1_local = bitcast_ln168_9_fu_1381_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights2_0_d1_local = bitcast_ln168_1_fu_1361_p1;
    end else begin
        weights2_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        weights2_0_we0_local = 1'b1;
    end else begin
        weights2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        weights2_0_we1_local = 1'b1;
    end else begin
        weights2_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights2_1_address0_local = weights2_1_addr_15_reg_2251_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights2_1_address0_local = weights2_1_addr_14_reg_2228_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights2_1_address0_local = weights2_1_addr_13_reg_2167_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights2_1_address0_local = weights2_1_addr_12_reg_2144_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights2_1_address0_local = weights2_1_addr_10_reg_2056_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights2_1_address0_local = weights2_1_addr_8_reg_1968_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights2_1_address0_local = weights2_1_addr_6_reg_1880_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights2_1_address0_local = weights2_1_addr_4_reg_1812_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights2_1_address0_local = zext_ln168_15_fu_1173_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights2_1_address0_local = zext_ln168_13_fu_1123_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights2_1_address0_local = zext_ln168_11_fu_1073_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_1_address0_local = zext_ln168_9_fu_1023_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_1_address0_local = zext_ln168_7_fu_973_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_1_address0_local = zext_ln168_5_fu_923_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_1_address0_local = zext_ln168_3_fu_873_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_1_address0_local = zext_ln168_1_fu_838_p1;
    end else begin
        weights2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights2_1_address1_local = weights2_1_addr_11_reg_2080_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights2_1_address1_local = weights2_1_addr_9_reg_1992_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights2_1_address1_local = weights2_1_addr_7_reg_1904_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights2_1_address1_local = weights2_1_addr_5_reg_1836_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights2_1_address1_local = weights2_1_addr_3_reg_1768_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights2_1_address1_local = weights2_1_addr_2_reg_1747_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights2_1_address1_local = weights2_1_addr_1_reg_1724_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights2_1_address1_local = weights2_1_addr_reg_1703_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights2_1_address1_local = zext_ln168_14_fu_1158_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights2_1_address1_local = zext_ln168_12_fu_1108_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights2_1_address1_local = zext_ln168_10_fu_1058_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_1_address1_local = zext_ln168_8_fu_1008_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_1_address1_local = zext_ln168_6_fu_958_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_1_address1_local = zext_ln168_4_fu_908_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_1_address1_local = zext_ln168_2_fu_858_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_1_address1_local = zext_ln168_fu_822_p1;
    end else begin
        weights2_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_1_ce0_local = 1'b1;
    end else begin
        weights2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_1_ce1_local = 1'b1;
    end else begin
        weights2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            weights2_1_d0_local = bitcast_ln168_123_fu_1646_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            weights2_1_d0_local = bitcast_ln168_115_fu_1626_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            weights2_1_d0_local = bitcast_ln168_107_fu_1606_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            weights2_1_d0_local = bitcast_ln168_99_fu_1586_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            weights2_1_d0_local = bitcast_ln168_83_fu_1553_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            weights2_1_d0_local = bitcast_ln168_67_fu_1521_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            weights2_1_d0_local = bitcast_ln168_51_fu_1486_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            weights2_1_d0_local = bitcast_ln168_35_fu_1446_p1;
        end else begin
            weights2_1_d0_local = 'bx;
        end
    end else begin
        weights2_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights2_1_d1_local = bitcast_ln168_91_fu_1569_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights2_1_d1_local = bitcast_ln168_75_fu_1537_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights2_1_d1_local = bitcast_ln168_59_fu_1505_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights2_1_d1_local = bitcast_ln168_43_fu_1466_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights2_1_d1_local = bitcast_ln168_27_fu_1426_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights2_1_d1_local = bitcast_ln168_19_fu_1406_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights2_1_d1_local = bitcast_ln168_11_fu_1386_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights2_1_d1_local = bitcast_ln168_3_fu_1366_p1;
    end else begin
        weights2_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        weights2_1_we0_local = 1'b1;
    end else begin
        weights2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        weights2_1_we1_local = 1'b1;
    end else begin
        weights2_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights2_2_address0_local = weights2_2_addr_15_reg_2256_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights2_2_address0_local = weights2_2_addr_14_reg_2234_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights2_2_address0_local = weights2_2_addr_13_reg_2172_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights2_2_address0_local = weights2_2_addr_12_reg_2150_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights2_2_address0_local = weights2_2_addr_10_reg_2062_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights2_2_address0_local = weights2_2_addr_8_reg_1974_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights2_2_address0_local = weights2_2_addr_6_reg_1886_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights2_2_address0_local = weights2_2_addr_4_reg_1818_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights2_2_address0_local = zext_ln168_15_fu_1173_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights2_2_address0_local = zext_ln168_13_fu_1123_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights2_2_address0_local = zext_ln168_11_fu_1073_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_2_address0_local = zext_ln168_9_fu_1023_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_2_address0_local = zext_ln168_7_fu_973_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_2_address0_local = zext_ln168_5_fu_923_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_2_address0_local = zext_ln168_3_fu_873_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_2_address0_local = zext_ln168_1_fu_838_p1;
    end else begin
        weights2_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights2_2_address1_local = weights2_2_addr_11_reg_2086_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights2_2_address1_local = weights2_2_addr_9_reg_1998_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights2_2_address1_local = weights2_2_addr_7_reg_1910_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights2_2_address1_local = weights2_2_addr_5_reg_1842_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights2_2_address1_local = weights2_2_addr_3_reg_1774_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights2_2_address1_local = weights2_2_addr_2_reg_1752_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights2_2_address1_local = weights2_2_addr_1_reg_1730_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights2_2_address1_local = weights2_2_addr_reg_1708_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights2_2_address1_local = zext_ln168_14_fu_1158_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights2_2_address1_local = zext_ln168_12_fu_1108_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights2_2_address1_local = zext_ln168_10_fu_1058_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_2_address1_local = zext_ln168_8_fu_1008_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_2_address1_local = zext_ln168_6_fu_958_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_2_address1_local = zext_ln168_4_fu_908_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_2_address1_local = zext_ln168_2_fu_858_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_2_address1_local = zext_ln168_fu_822_p1;
    end else begin
        weights2_2_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_2_ce0_local = 1'b1;
    end else begin
        weights2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_2_ce1_local = 1'b1;
    end else begin
        weights2_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            weights2_2_d0_local = bitcast_ln168_125_fu_1651_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            weights2_2_d0_local = bitcast_ln168_117_fu_1631_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            weights2_2_d0_local = bitcast_ln168_109_fu_1611_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            weights2_2_d0_local = bitcast_ln168_101_fu_1591_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            weights2_2_d0_local = bitcast_ln168_85_fu_1557_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            weights2_2_d0_local = bitcast_ln168_69_fu_1525_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            weights2_2_d0_local = bitcast_ln168_53_fu_1491_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            weights2_2_d0_local = bitcast_ln168_37_fu_1451_p1;
        end else begin
            weights2_2_d0_local = 'bx;
        end
    end else begin
        weights2_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights2_2_d1_local = bitcast_ln168_93_fu_1573_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights2_2_d1_local = bitcast_ln168_77_fu_1541_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights2_2_d1_local = bitcast_ln168_61_fu_1509_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights2_2_d1_local = bitcast_ln168_45_fu_1471_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights2_2_d1_local = bitcast_ln168_29_fu_1431_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights2_2_d1_local = bitcast_ln168_21_fu_1411_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights2_2_d1_local = bitcast_ln168_13_fu_1391_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights2_2_d1_local = bitcast_ln168_5_fu_1371_p1;
    end else begin
        weights2_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        weights2_2_we0_local = 1'b1;
    end else begin
        weights2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        weights2_2_we1_local = 1'b1;
    end else begin
        weights2_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights2_3_address0_local = weights2_3_addr_15_reg_2261_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights2_3_address0_local = weights2_3_addr_14_reg_2240_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights2_3_address0_local = weights2_3_addr_13_reg_2177_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights2_3_address0_local = weights2_3_addr_12_reg_2156_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights2_3_address0_local = weights2_3_addr_10_reg_2068_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights2_3_address0_local = weights2_3_addr_8_reg_1980_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights2_3_address0_local = weights2_3_addr_6_reg_1892_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights2_3_address0_local = weights2_3_addr_4_reg_1824_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights2_3_address0_local = zext_ln168_15_fu_1173_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights2_3_address0_local = zext_ln168_13_fu_1123_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights2_3_address0_local = zext_ln168_11_fu_1073_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_3_address0_local = zext_ln168_9_fu_1023_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_3_address0_local = zext_ln168_7_fu_973_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_3_address0_local = zext_ln168_5_fu_923_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_3_address0_local = zext_ln168_3_fu_873_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_3_address0_local = zext_ln168_1_fu_838_p1;
    end else begin
        weights2_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights2_3_address1_local = weights2_3_addr_11_reg_2092_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights2_3_address1_local = weights2_3_addr_9_reg_2004_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights2_3_address1_local = weights2_3_addr_7_reg_1916_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights2_3_address1_local = weights2_3_addr_5_reg_1848_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights2_3_address1_local = weights2_3_addr_3_reg_1780_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights2_3_address1_local = weights2_3_addr_2_reg_1757_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights2_3_address1_local = weights2_3_addr_1_reg_1736_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights2_3_address1_local = weights2_3_addr_reg_1713_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights2_3_address1_local = zext_ln168_14_fu_1158_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights2_3_address1_local = zext_ln168_12_fu_1108_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights2_3_address1_local = zext_ln168_10_fu_1058_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_3_address1_local = zext_ln168_8_fu_1008_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_3_address1_local = zext_ln168_6_fu_958_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_3_address1_local = zext_ln168_4_fu_908_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_3_address1_local = zext_ln168_2_fu_858_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_3_address1_local = zext_ln168_fu_822_p1;
    end else begin
        weights2_3_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_3_ce0_local = 1'b1;
    end else begin
        weights2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_3_ce1_local = 1'b1;
    end else begin
        weights2_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            weights2_3_d0_local = bitcast_ln168_127_fu_1656_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            weights2_3_d0_local = bitcast_ln168_119_fu_1636_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            weights2_3_d0_local = bitcast_ln168_111_fu_1616_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            weights2_3_d0_local = bitcast_ln168_103_fu_1596_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            weights2_3_d0_local = bitcast_ln168_87_fu_1561_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            weights2_3_d0_local = bitcast_ln168_71_fu_1529_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            weights2_3_d0_local = bitcast_ln168_55_fu_1496_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            weights2_3_d0_local = bitcast_ln168_39_fu_1456_p1;
        end else begin
            weights2_3_d0_local = 'bx;
        end
    end else begin
        weights2_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights2_3_d1_local = bitcast_ln168_95_fu_1577_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights2_3_d1_local = bitcast_ln168_79_fu_1545_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights2_3_d1_local = bitcast_ln168_63_fu_1513_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights2_3_d1_local = bitcast_ln168_47_fu_1476_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights2_3_d1_local = bitcast_ln168_31_fu_1436_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights2_3_d1_local = bitcast_ln168_23_fu_1416_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights2_3_d1_local = bitcast_ln168_15_fu_1396_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights2_3_d1_local = bitcast_ln168_7_fu_1376_p1;
    end else begin
        weights2_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        weights2_3_we0_local = 1'b1;
    end else begin
        weights2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        weights2_3_we1_local = 1'b1;
    end else begin
        weights2_3_we1_local = 1'b0;
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
assign add_ln166_fu_804_p2 = (ap_sig_allocacmp_i_3 + 7'd1);
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
assign bitcast_ln168_100_fu_1299_p1 = reg_716;
assign bitcast_ln168_101_fu_1591_p1 = reg_734;
assign bitcast_ln168_102_fu_1304_p1 = reg_721;
assign bitcast_ln168_103_fu_1596_p1 = reg_738;
assign bitcast_ln168_104_fu_1309_p1 = weights2_0_load_13_reg_2202;
assign bitcast_ln168_105_fu_1601_p1 = reg_742;
assign bitcast_ln168_106_fu_1313_p1 = weights2_1_load_13_reg_2207;
assign bitcast_ln168_107_fu_1606_p1 = reg_746;
assign bitcast_ln168_108_fu_1317_p1 = weights2_2_load_13_reg_2212;
assign bitcast_ln168_109_fu_1611_p1 = reg_750;
assign bitcast_ln168_10_fu_936_p1 = reg_671;
assign bitcast_ln168_110_fu_1321_p1 = weights2_3_load_13_reg_2217;
assign bitcast_ln168_111_fu_1616_p1 = reg_754;
assign bitcast_ln168_112_fu_1325_p1 = reg_650;
assign bitcast_ln168_113_fu_1621_p1 = reg_758;
assign bitcast_ln168_114_fu_1330_p1 = reg_654;
assign bitcast_ln168_115_fu_1626_p1 = reg_762;
assign bitcast_ln168_116_fu_1335_p1 = reg_658;
assign bitcast_ln168_117_fu_1631_p1 = reg_766;
assign bitcast_ln168_118_fu_1340_p1 = reg_662;
assign bitcast_ln168_119_fu_1636_p1 = reg_770;
assign bitcast_ln168_11_fu_1386_p1 = reg_730;
assign bitcast_ln168_120_fu_1345_p1 = weights2_0_load_15_reg_2286;
assign bitcast_ln168_121_fu_1641_p1 = reg_774;
assign bitcast_ln168_122_fu_1349_p1 = weights2_1_load_15_reg_2291;
assign bitcast_ln168_123_fu_1646_p1 = reg_778;
assign bitcast_ln168_124_fu_1353_p1 = weights2_2_load_15_reg_2296;
assign bitcast_ln168_125_fu_1651_p1 = reg_782;
assign bitcast_ln168_126_fu_1357_p1 = weights2_3_load_15_reg_2301;
assign bitcast_ln168_127_fu_1656_p1 = reg_786;
assign bitcast_ln168_12_fu_941_p1 = reg_676;
assign bitcast_ln168_13_fu_1391_p1 = reg_734;
assign bitcast_ln168_14_fu_946_p1 = reg_681;
assign bitcast_ln168_15_fu_1396_p1 = reg_738;
assign bitcast_ln168_16_fu_981_p1 = reg_650;
assign bitcast_ln168_17_fu_1401_p1 = reg_726;
assign bitcast_ln168_18_fu_986_p1 = reg_654;
assign bitcast_ln168_19_fu_1406_p1 = reg_730;
assign bitcast_ln168_1_fu_1361_p1 = reg_726;
assign bitcast_ln168_20_fu_991_p1 = reg_658;
assign bitcast_ln168_21_fu_1411_p1 = reg_734;
assign bitcast_ln168_22_fu_996_p1 = reg_662;
assign bitcast_ln168_23_fu_1416_p1 = reg_738;
assign bitcast_ln168_24_fu_1031_p1 = reg_686;
assign bitcast_ln168_25_fu_1421_p1 = reg_726;
assign bitcast_ln168_26_fu_1036_p1 = reg_691;
assign bitcast_ln168_27_fu_1426_p1 = reg_730;
assign bitcast_ln168_28_fu_1041_p1 = reg_696;
assign bitcast_ln168_29_fu_1431_p1 = reg_734;
assign bitcast_ln168_2_fu_886_p1 = reg_654;
assign bitcast_ln168_30_fu_1046_p1 = reg_701;
assign bitcast_ln168_31_fu_1436_p1 = reg_738;
assign bitcast_ln168_32_fu_1081_p1 = reg_666;
assign bitcast_ln168_33_fu_1441_p1 = reg_742;
assign bitcast_ln168_34_fu_1086_p1 = reg_671;
assign bitcast_ln168_35_fu_1446_p1 = reg_746;
assign bitcast_ln168_36_fu_1091_p1 = reg_676;
assign bitcast_ln168_37_fu_1451_p1 = reg_750;
assign bitcast_ln168_38_fu_1096_p1 = reg_681;
assign bitcast_ln168_39_fu_1456_p1 = reg_754;
assign bitcast_ln168_3_fu_1366_p1 = reg_730;
assign bitcast_ln168_40_fu_1131_p1 = reg_706;
assign bitcast_ln168_41_fu_1461_p1 = reg_758;
assign bitcast_ln168_42_fu_1136_p1 = reg_711;
assign bitcast_ln168_43_fu_1466_p1 = reg_762;
assign bitcast_ln168_44_fu_1141_p1 = reg_716;
assign bitcast_ln168_45_fu_1471_p1 = reg_766;
assign bitcast_ln168_46_fu_1146_p1 = reg_721;
assign bitcast_ln168_47_fu_1476_p1 = reg_770;
assign bitcast_ln168_48_fu_1181_p1 = reg_650;
assign bitcast_ln168_49_fu_1481_p1 = reg_774;
assign bitcast_ln168_4_fu_891_p1 = reg_658;
assign bitcast_ln168_50_fu_1186_p1 = reg_654;
assign bitcast_ln168_51_fu_1486_p1 = reg_778;
assign bitcast_ln168_52_fu_1191_p1 = reg_658;
assign bitcast_ln168_53_fu_1491_p1 = reg_782;
assign bitcast_ln168_54_fu_1196_p1 = reg_662;
assign bitcast_ln168_55_fu_1496_p1 = reg_786;
assign bitcast_ln168_56_fu_1201_p1 = weights2_0_load_7_reg_1942;
assign bitcast_ln168_57_fu_1501_p1 = div131_27_reg_2486;
assign bitcast_ln168_58_fu_1205_p1 = weights2_1_load_7_reg_1947;
assign bitcast_ln168_59_fu_1505_p1 = div131_28_reg_2491;
assign bitcast_ln168_5_fu_1371_p1 = reg_734;
assign bitcast_ln168_60_fu_1209_p1 = weights2_2_load_7_reg_1952;
assign bitcast_ln168_61_fu_1509_p1 = div131_29_reg_2496;
assign bitcast_ln168_62_fu_1213_p1 = weights2_3_load_7_reg_1957;
assign bitcast_ln168_63_fu_1513_p1 = div131_30_reg_2501;
assign bitcast_ln168_64_fu_1217_p1 = reg_686;
assign bitcast_ln168_65_fu_1517_p1 = div131_31_reg_2506;
assign bitcast_ln168_66_fu_1222_p1 = reg_691;
assign bitcast_ln168_67_fu_1521_p1 = div131_32_reg_2511;
assign bitcast_ln168_68_fu_1227_p1 = reg_696;
assign bitcast_ln168_69_fu_1525_p1 = div131_33_reg_2516;
assign bitcast_ln168_6_fu_896_p1 = reg_662;
assign bitcast_ln168_70_fu_1232_p1 = reg_701;
assign bitcast_ln168_71_fu_1529_p1 = div131_34_reg_2521;
assign bitcast_ln168_72_fu_1237_p1 = weights2_0_load_9_reg_2030;
assign bitcast_ln168_73_fu_1533_p1 = div131_35_reg_2526;
assign bitcast_ln168_74_fu_1241_p1 = weights2_1_load_9_reg_2035;
assign bitcast_ln168_75_fu_1537_p1 = div131_36_reg_2531;
assign bitcast_ln168_76_fu_1245_p1 = weights2_2_load_9_reg_2040;
assign bitcast_ln168_77_fu_1541_p1 = div131_37_reg_2536;
assign bitcast_ln168_78_fu_1249_p1 = weights2_3_load_9_reg_2045;
assign bitcast_ln168_79_fu_1545_p1 = div131_38_reg_2541;
assign bitcast_ln168_7_fu_1376_p1 = reg_738;
assign bitcast_ln168_80_fu_1253_p1 = reg_666;
assign bitcast_ln168_81_fu_1549_p1 = div131_39_reg_2546;
assign bitcast_ln168_82_fu_1258_p1 = reg_671;
assign bitcast_ln168_83_fu_1553_p1 = div131_40_reg_2551;
assign bitcast_ln168_84_fu_1263_p1 = reg_676;
assign bitcast_ln168_85_fu_1557_p1 = div131_41_reg_2556;
assign bitcast_ln168_86_fu_1268_p1 = reg_681;
assign bitcast_ln168_87_fu_1561_p1 = div131_42_reg_2561;
assign bitcast_ln168_88_fu_1273_p1 = weights2_0_load_11_reg_2118;
assign bitcast_ln168_89_fu_1565_p1 = div131_43_reg_2566;
assign bitcast_ln168_8_fu_931_p1 = reg_666;
assign bitcast_ln168_90_fu_1277_p1 = weights2_1_load_11_reg_2123;
assign bitcast_ln168_91_fu_1569_p1 = div131_44_reg_2571;
assign bitcast_ln168_92_fu_1281_p1 = weights2_2_load_11_reg_2128;
assign bitcast_ln168_93_fu_1573_p1 = div131_45_reg_2576;
assign bitcast_ln168_94_fu_1285_p1 = weights2_3_load_11_reg_2133;
assign bitcast_ln168_95_fu_1577_p1 = div131_46_reg_2581;
assign bitcast_ln168_96_fu_1289_p1 = reg_706;
assign bitcast_ln168_97_fu_1581_p1 = reg_726;
assign bitcast_ln168_98_fu_1294_p1 = reg_711;
assign bitcast_ln168_99_fu_1586_p1 = reg_730;
assign bitcast_ln168_9_fu_1381_p1 = reg_726;
assign bitcast_ln168_fu_881_p1 = reg_650;
assign grp_fu_6306_p_ce = 1'b1;
assign grp_fu_6306_p_din0 = grp_fu_634_p0;
assign grp_fu_6306_p_din1 = norm_66;
assign grp_fu_6310_p_ce = 1'b1;
assign grp_fu_6310_p_din0 = grp_fu_638_p0;
assign grp_fu_6310_p_din1 = norm_66;
assign grp_fu_6314_p_ce = 1'b1;
assign grp_fu_6314_p_din0 = grp_fu_642_p0;
assign grp_fu_6314_p_din1 = norm_66;
assign grp_fu_6318_p_ce = 1'b1;
assign grp_fu_6318_p_din0 = grp_fu_646_p0;
assign grp_fu_6318_p_din1 = norm_66;
assign icmp_ln166_fu_798_p2 = ((ap_sig_allocacmp_i_3 == 7'd64) ? 1'b1 : 1'b0);
assign or_ln168_10_fu_1101_p3 = {{trunc_ln168_reg_1680}, {4'd12}};
assign or_ln168_11_fu_1116_p3 = {{trunc_ln168_reg_1680}, {4'd13}};
assign or_ln168_12_fu_1151_p3 = {{trunc_ln168_reg_1680}, {4'd14}};
assign or_ln168_13_fu_1166_p3 = {{trunc_ln168_reg_1680}, {4'd15}};
assign or_ln168_1_fu_851_p3 = {{trunc_ln168_reg_1680}, {4'd2}};
assign or_ln168_2_fu_866_p3 = {{trunc_ln168_reg_1680}, {4'd3}};
assign or_ln168_3_fu_901_p3 = {{trunc_ln168_reg_1680}, {4'd4}};
assign or_ln168_4_fu_916_p3 = {{trunc_ln168_reg_1680}, {4'd5}};
assign or_ln168_5_fu_951_p3 = {{trunc_ln168_reg_1680}, {4'd6}};
assign or_ln168_6_fu_966_p3 = {{trunc_ln168_reg_1680}, {4'd7}};
assign or_ln168_7_fu_1001_p3 = {{trunc_ln168_reg_1680}, {4'd8}};
assign or_ln168_8_fu_1016_p3 = {{trunc_ln168_reg_1680}, {4'd9}};
assign or_ln168_9_fu_1051_p3 = {{trunc_ln168_reg_1680}, {4'd10}};
assign or_ln168_s_fu_1066_p3 = {{trunc_ln168_reg_1680}, {4'd11}};
assign or_ln3_fu_830_p3 = {{trunc_ln168_fu_810_p1}, {4'd1}};
assign shl_ln2_fu_814_p3 = {{trunc_ln168_fu_810_p1}, {4'd0}};
assign trunc_ln168_fu_810_p1 = ap_sig_allocacmp_i_3[5:0];
assign weights2_0_address0 = weights2_0_address0_local;
assign weights2_0_address1 = weights2_0_address1_local;
assign weights2_0_ce0 = weights2_0_ce0_local;
assign weights2_0_ce1 = weights2_0_ce1_local;
assign weights2_0_d0 = weights2_0_d0_local;
assign weights2_0_d1 = weights2_0_d1_local;
assign weights2_0_we0 = weights2_0_we0_local;
assign weights2_0_we1 = weights2_0_we1_local;
assign weights2_1_address0 = weights2_1_address0_local;
assign weights2_1_address1 = weights2_1_address1_local;
assign weights2_1_ce0 = weights2_1_ce0_local;
assign weights2_1_ce1 = weights2_1_ce1_local;
assign weights2_1_d0 = weights2_1_d0_local;
assign weights2_1_d1 = weights2_1_d1_local;
assign weights2_1_we0 = weights2_1_we0_local;
assign weights2_1_we1 = weights2_1_we1_local;
assign weights2_2_address0 = weights2_2_address0_local;
assign weights2_2_address1 = weights2_2_address1_local;
assign weights2_2_ce0 = weights2_2_ce0_local;
assign weights2_2_ce1 = weights2_2_ce1_local;
assign weights2_2_d0 = weights2_2_d0_local;
assign weights2_2_d1 = weights2_2_d1_local;
assign weights2_2_we0 = weights2_2_we0_local;
assign weights2_2_we1 = weights2_2_we1_local;
assign weights2_3_address0 = weights2_3_address0_local;
assign weights2_3_address1 = weights2_3_address1_local;
assign weights2_3_ce0 = weights2_3_ce0_local;
assign weights2_3_ce1 = weights2_3_ce1_local;
assign weights2_3_d0 = weights2_3_d0_local;
assign weights2_3_d1 = weights2_3_d1_local;
assign weights2_3_we0 = weights2_3_we0_local;
assign weights2_3_we1 = weights2_3_we1_local;
assign zext_ln168_10_fu_1058_p1 = or_ln168_9_fu_1051_p3;
assign zext_ln168_11_fu_1073_p1 = or_ln168_s_fu_1066_p3;
assign zext_ln168_12_fu_1108_p1 = or_ln168_10_fu_1101_p3;
assign zext_ln168_13_fu_1123_p1 = or_ln168_11_fu_1116_p3;
assign zext_ln168_14_fu_1158_p1 = or_ln168_12_fu_1151_p3;
assign zext_ln168_15_fu_1173_p1 = or_ln168_13_fu_1166_p3;
assign zext_ln168_1_fu_838_p1 = or_ln3_fu_830_p3;
assign zext_ln168_2_fu_858_p1 = or_ln168_1_fu_851_p3;
assign zext_ln168_3_fu_873_p1 = or_ln168_2_fu_866_p3;
assign zext_ln168_4_fu_908_p1 = or_ln168_3_fu_901_p3;
assign zext_ln168_5_fu_923_p1 = or_ln168_4_fu_916_p3;
assign zext_ln168_6_fu_958_p1 = or_ln168_5_fu_951_p3;
assign zext_ln168_7_fu_973_p1 = or_ln168_6_fu_966_p3;
assign zext_ln168_8_fu_1008_p1 = or_ln168_7_fu_1001_p3;
assign zext_ln168_9_fu_1023_p1 = or_ln168_8_fu_1016_p3;
assign zext_ln168_fu_822_p1 = shl_ln2_fu_814_p3;
always @ (posedge ap_clk) begin
    weights2_0_addr_reg_1698[3:0] <= 4'b0000;
    weights2_0_addr_reg_1698_pp0_iter1_reg[3:0] <= 4'b0000;
    weights2_0_addr_reg_1698_pp0_iter2_reg[3:0] <= 4'b0000;
    weights2_0_addr_reg_1698_pp0_iter3_reg[3:0] <= 4'b0000;
    weights2_1_addr_reg_1703[3:0] <= 4'b0000;
    weights2_1_addr_reg_1703_pp0_iter1_reg[3:0] <= 4'b0000;
    weights2_1_addr_reg_1703_pp0_iter2_reg[3:0] <= 4'b0000;
    weights2_1_addr_reg_1703_pp0_iter3_reg[3:0] <= 4'b0000;
    weights2_2_addr_reg_1708[3:0] <= 4'b0000;
    weights2_2_addr_reg_1708_pp0_iter1_reg[3:0] <= 4'b0000;
    weights2_2_addr_reg_1708_pp0_iter2_reg[3:0] <= 4'b0000;
    weights2_2_addr_reg_1708_pp0_iter3_reg[3:0] <= 4'b0000;
    weights2_3_addr_reg_1713[3:0] <= 4'b0000;
    weights2_3_addr_reg_1713_pp0_iter1_reg[3:0] <= 4'b0000;
    weights2_3_addr_reg_1713_pp0_iter2_reg[3:0] <= 4'b0000;
    weights2_3_addr_reg_1713_pp0_iter3_reg[3:0] <= 4'b0000;
    weights2_0_addr_1_reg_1718[3:0] <= 4'b0001;
    weights2_0_addr_1_reg_1718_pp0_iter1_reg[3:0] <= 4'b0001;
    weights2_0_addr_1_reg_1718_pp0_iter2_reg[3:0] <= 4'b0001;
    weights2_0_addr_1_reg_1718_pp0_iter3_reg[3:0] <= 4'b0001;
    weights2_1_addr_1_reg_1724[3:0] <= 4'b0001;
    weights2_1_addr_1_reg_1724_pp0_iter1_reg[3:0] <= 4'b0001;
    weights2_1_addr_1_reg_1724_pp0_iter2_reg[3:0] <= 4'b0001;
    weights2_1_addr_1_reg_1724_pp0_iter3_reg[3:0] <= 4'b0001;
    weights2_2_addr_1_reg_1730[3:0] <= 4'b0001;
    weights2_2_addr_1_reg_1730_pp0_iter1_reg[3:0] <= 4'b0001;
    weights2_2_addr_1_reg_1730_pp0_iter2_reg[3:0] <= 4'b0001;
    weights2_2_addr_1_reg_1730_pp0_iter3_reg[3:0] <= 4'b0001;
    weights2_3_addr_1_reg_1736[3:0] <= 4'b0001;
    weights2_3_addr_1_reg_1736_pp0_iter1_reg[3:0] <= 4'b0001;
    weights2_3_addr_1_reg_1736_pp0_iter2_reg[3:0] <= 4'b0001;
    weights2_3_addr_1_reg_1736_pp0_iter3_reg[3:0] <= 4'b0001;
    weights2_0_addr_2_reg_1742[3:0] <= 4'b0010;
    weights2_0_addr_2_reg_1742_pp0_iter1_reg[3:0] <= 4'b0010;
    weights2_0_addr_2_reg_1742_pp0_iter2_reg[3:0] <= 4'b0010;
    weights2_0_addr_2_reg_1742_pp0_iter3_reg[3:0] <= 4'b0010;
    weights2_1_addr_2_reg_1747[3:0] <= 4'b0010;
    weights2_1_addr_2_reg_1747_pp0_iter1_reg[3:0] <= 4'b0010;
    weights2_1_addr_2_reg_1747_pp0_iter2_reg[3:0] <= 4'b0010;
    weights2_1_addr_2_reg_1747_pp0_iter3_reg[3:0] <= 4'b0010;
    weights2_2_addr_2_reg_1752[3:0] <= 4'b0010;
    weights2_2_addr_2_reg_1752_pp0_iter1_reg[3:0] <= 4'b0010;
    weights2_2_addr_2_reg_1752_pp0_iter2_reg[3:0] <= 4'b0010;
    weights2_2_addr_2_reg_1752_pp0_iter3_reg[3:0] <= 4'b0010;
    weights2_3_addr_2_reg_1757[3:0] <= 4'b0010;
    weights2_3_addr_2_reg_1757_pp0_iter1_reg[3:0] <= 4'b0010;
    weights2_3_addr_2_reg_1757_pp0_iter2_reg[3:0] <= 4'b0010;
    weights2_3_addr_2_reg_1757_pp0_iter3_reg[3:0] <= 4'b0010;
    weights2_0_addr_3_reg_1762[3:0] <= 4'b0011;
    weights2_0_addr_3_reg_1762_pp0_iter1_reg[3:0] <= 4'b0011;
    weights2_0_addr_3_reg_1762_pp0_iter2_reg[3:0] <= 4'b0011;
    weights2_0_addr_3_reg_1762_pp0_iter3_reg[3:0] <= 4'b0011;
    weights2_0_addr_3_reg_1762_pp0_iter4_reg[3:0] <= 4'b0011;
    weights2_1_addr_3_reg_1768[3:0] <= 4'b0011;
    weights2_1_addr_3_reg_1768_pp0_iter1_reg[3:0] <= 4'b0011;
    weights2_1_addr_3_reg_1768_pp0_iter2_reg[3:0] <= 4'b0011;
    weights2_1_addr_3_reg_1768_pp0_iter3_reg[3:0] <= 4'b0011;
    weights2_1_addr_3_reg_1768_pp0_iter4_reg[3:0] <= 4'b0011;
    weights2_2_addr_3_reg_1774[3:0] <= 4'b0011;
    weights2_2_addr_3_reg_1774_pp0_iter1_reg[3:0] <= 4'b0011;
    weights2_2_addr_3_reg_1774_pp0_iter2_reg[3:0] <= 4'b0011;
    weights2_2_addr_3_reg_1774_pp0_iter3_reg[3:0] <= 4'b0011;
    weights2_2_addr_3_reg_1774_pp0_iter4_reg[3:0] <= 4'b0011;
    weights2_3_addr_3_reg_1780[3:0] <= 4'b0011;
    weights2_3_addr_3_reg_1780_pp0_iter1_reg[3:0] <= 4'b0011;
    weights2_3_addr_3_reg_1780_pp0_iter2_reg[3:0] <= 4'b0011;
    weights2_3_addr_3_reg_1780_pp0_iter3_reg[3:0] <= 4'b0011;
    weights2_3_addr_3_reg_1780_pp0_iter4_reg[3:0] <= 4'b0011;
    weights2_0_addr_4_reg_1806[3:0] <= 4'b0100;
    weights2_0_addr_4_reg_1806_pp0_iter1_reg[3:0] <= 4'b0100;
    weights2_0_addr_4_reg_1806_pp0_iter2_reg[3:0] <= 4'b0100;
    weights2_0_addr_4_reg_1806_pp0_iter3_reg[3:0] <= 4'b0100;
    weights2_0_addr_4_reg_1806_pp0_iter4_reg[3:0] <= 4'b0100;
    weights2_1_addr_4_reg_1812[3:0] <= 4'b0100;
    weights2_1_addr_4_reg_1812_pp0_iter1_reg[3:0] <= 4'b0100;
    weights2_1_addr_4_reg_1812_pp0_iter2_reg[3:0] <= 4'b0100;
    weights2_1_addr_4_reg_1812_pp0_iter3_reg[3:0] <= 4'b0100;
    weights2_1_addr_4_reg_1812_pp0_iter4_reg[3:0] <= 4'b0100;
    weights2_2_addr_4_reg_1818[3:0] <= 4'b0100;
    weights2_2_addr_4_reg_1818_pp0_iter1_reg[3:0] <= 4'b0100;
    weights2_2_addr_4_reg_1818_pp0_iter2_reg[3:0] <= 4'b0100;
    weights2_2_addr_4_reg_1818_pp0_iter3_reg[3:0] <= 4'b0100;
    weights2_2_addr_4_reg_1818_pp0_iter4_reg[3:0] <= 4'b0100;
    weights2_3_addr_4_reg_1824[3:0] <= 4'b0100;
    weights2_3_addr_4_reg_1824_pp0_iter1_reg[3:0] <= 4'b0100;
    weights2_3_addr_4_reg_1824_pp0_iter2_reg[3:0] <= 4'b0100;
    weights2_3_addr_4_reg_1824_pp0_iter3_reg[3:0] <= 4'b0100;
    weights2_3_addr_4_reg_1824_pp0_iter4_reg[3:0] <= 4'b0100;
    weights2_0_addr_5_reg_1830[3:0] <= 4'b0101;
    weights2_0_addr_5_reg_1830_pp0_iter1_reg[3:0] <= 4'b0101;
    weights2_0_addr_5_reg_1830_pp0_iter2_reg[3:0] <= 4'b0101;
    weights2_0_addr_5_reg_1830_pp0_iter3_reg[3:0] <= 4'b0101;
    weights2_0_addr_5_reg_1830_pp0_iter4_reg[3:0] <= 4'b0101;
    weights2_1_addr_5_reg_1836[3:0] <= 4'b0101;
    weights2_1_addr_5_reg_1836_pp0_iter1_reg[3:0] <= 4'b0101;
    weights2_1_addr_5_reg_1836_pp0_iter2_reg[3:0] <= 4'b0101;
    weights2_1_addr_5_reg_1836_pp0_iter3_reg[3:0] <= 4'b0101;
    weights2_1_addr_5_reg_1836_pp0_iter4_reg[3:0] <= 4'b0101;
    weights2_2_addr_5_reg_1842[3:0] <= 4'b0101;
    weights2_2_addr_5_reg_1842_pp0_iter1_reg[3:0] <= 4'b0101;
    weights2_2_addr_5_reg_1842_pp0_iter2_reg[3:0] <= 4'b0101;
    weights2_2_addr_5_reg_1842_pp0_iter3_reg[3:0] <= 4'b0101;
    weights2_2_addr_5_reg_1842_pp0_iter4_reg[3:0] <= 4'b0101;
    weights2_3_addr_5_reg_1848[3:0] <= 4'b0101;
    weights2_3_addr_5_reg_1848_pp0_iter1_reg[3:0] <= 4'b0101;
    weights2_3_addr_5_reg_1848_pp0_iter2_reg[3:0] <= 4'b0101;
    weights2_3_addr_5_reg_1848_pp0_iter3_reg[3:0] <= 4'b0101;
    weights2_3_addr_5_reg_1848_pp0_iter4_reg[3:0] <= 4'b0101;
    weights2_0_addr_6_reg_1874[3:0] <= 4'b0110;
    weights2_0_addr_6_reg_1874_pp0_iter1_reg[3:0] <= 4'b0110;
    weights2_0_addr_6_reg_1874_pp0_iter2_reg[3:0] <= 4'b0110;
    weights2_0_addr_6_reg_1874_pp0_iter3_reg[3:0] <= 4'b0110;
    weights2_0_addr_6_reg_1874_pp0_iter4_reg[3:0] <= 4'b0110;
    weights2_1_addr_6_reg_1880[3:0] <= 4'b0110;
    weights2_1_addr_6_reg_1880_pp0_iter1_reg[3:0] <= 4'b0110;
    weights2_1_addr_6_reg_1880_pp0_iter2_reg[3:0] <= 4'b0110;
    weights2_1_addr_6_reg_1880_pp0_iter3_reg[3:0] <= 4'b0110;
    weights2_1_addr_6_reg_1880_pp0_iter4_reg[3:0] <= 4'b0110;
    weights2_2_addr_6_reg_1886[3:0] <= 4'b0110;
    weights2_2_addr_6_reg_1886_pp0_iter1_reg[3:0] <= 4'b0110;
    weights2_2_addr_6_reg_1886_pp0_iter2_reg[3:0] <= 4'b0110;
    weights2_2_addr_6_reg_1886_pp0_iter3_reg[3:0] <= 4'b0110;
    weights2_2_addr_6_reg_1886_pp0_iter4_reg[3:0] <= 4'b0110;
    weights2_3_addr_6_reg_1892[3:0] <= 4'b0110;
    weights2_3_addr_6_reg_1892_pp0_iter1_reg[3:0] <= 4'b0110;
    weights2_3_addr_6_reg_1892_pp0_iter2_reg[3:0] <= 4'b0110;
    weights2_3_addr_6_reg_1892_pp0_iter3_reg[3:0] <= 4'b0110;
    weights2_3_addr_6_reg_1892_pp0_iter4_reg[3:0] <= 4'b0110;
    weights2_0_addr_7_reg_1898[3:0] <= 4'b0111;
    weights2_0_addr_7_reg_1898_pp0_iter1_reg[3:0] <= 4'b0111;
    weights2_0_addr_7_reg_1898_pp0_iter2_reg[3:0] <= 4'b0111;
    weights2_0_addr_7_reg_1898_pp0_iter3_reg[3:0] <= 4'b0111;
    weights2_0_addr_7_reg_1898_pp0_iter4_reg[3:0] <= 4'b0111;
    weights2_1_addr_7_reg_1904[3:0] <= 4'b0111;
    weights2_1_addr_7_reg_1904_pp0_iter1_reg[3:0] <= 4'b0111;
    weights2_1_addr_7_reg_1904_pp0_iter2_reg[3:0] <= 4'b0111;
    weights2_1_addr_7_reg_1904_pp0_iter3_reg[3:0] <= 4'b0111;
    weights2_1_addr_7_reg_1904_pp0_iter4_reg[3:0] <= 4'b0111;
    weights2_2_addr_7_reg_1910[3:0] <= 4'b0111;
    weights2_2_addr_7_reg_1910_pp0_iter1_reg[3:0] <= 4'b0111;
    weights2_2_addr_7_reg_1910_pp0_iter2_reg[3:0] <= 4'b0111;
    weights2_2_addr_7_reg_1910_pp0_iter3_reg[3:0] <= 4'b0111;
    weights2_2_addr_7_reg_1910_pp0_iter4_reg[3:0] <= 4'b0111;
    weights2_3_addr_7_reg_1916[3:0] <= 4'b0111;
    weights2_3_addr_7_reg_1916_pp0_iter1_reg[3:0] <= 4'b0111;
    weights2_3_addr_7_reg_1916_pp0_iter2_reg[3:0] <= 4'b0111;
    weights2_3_addr_7_reg_1916_pp0_iter3_reg[3:0] <= 4'b0111;
    weights2_3_addr_7_reg_1916_pp0_iter4_reg[3:0] <= 4'b0111;
    weights2_0_addr_8_reg_1962[3:0] <= 4'b1000;
    weights2_0_addr_8_reg_1962_pp0_iter1_reg[3:0] <= 4'b1000;
    weights2_0_addr_8_reg_1962_pp0_iter2_reg[3:0] <= 4'b1000;
    weights2_0_addr_8_reg_1962_pp0_iter3_reg[3:0] <= 4'b1000;
    weights2_0_addr_8_reg_1962_pp0_iter4_reg[3:0] <= 4'b1000;
    weights2_1_addr_8_reg_1968[3:0] <= 4'b1000;
    weights2_1_addr_8_reg_1968_pp0_iter1_reg[3:0] <= 4'b1000;
    weights2_1_addr_8_reg_1968_pp0_iter2_reg[3:0] <= 4'b1000;
    weights2_1_addr_8_reg_1968_pp0_iter3_reg[3:0] <= 4'b1000;
    weights2_1_addr_8_reg_1968_pp0_iter4_reg[3:0] <= 4'b1000;
    weights2_2_addr_8_reg_1974[3:0] <= 4'b1000;
    weights2_2_addr_8_reg_1974_pp0_iter1_reg[3:0] <= 4'b1000;
    weights2_2_addr_8_reg_1974_pp0_iter2_reg[3:0] <= 4'b1000;
    weights2_2_addr_8_reg_1974_pp0_iter3_reg[3:0] <= 4'b1000;
    weights2_2_addr_8_reg_1974_pp0_iter4_reg[3:0] <= 4'b1000;
    weights2_3_addr_8_reg_1980[3:0] <= 4'b1000;
    weights2_3_addr_8_reg_1980_pp0_iter1_reg[3:0] <= 4'b1000;
    weights2_3_addr_8_reg_1980_pp0_iter2_reg[3:0] <= 4'b1000;
    weights2_3_addr_8_reg_1980_pp0_iter3_reg[3:0] <= 4'b1000;
    weights2_3_addr_8_reg_1980_pp0_iter4_reg[3:0] <= 4'b1000;
    weights2_0_addr_9_reg_1986[3:0] <= 4'b1001;
    weights2_0_addr_9_reg_1986_pp0_iter1_reg[3:0] <= 4'b1001;
    weights2_0_addr_9_reg_1986_pp0_iter2_reg[3:0] <= 4'b1001;
    weights2_0_addr_9_reg_1986_pp0_iter3_reg[3:0] <= 4'b1001;
    weights2_0_addr_9_reg_1986_pp0_iter4_reg[3:0] <= 4'b1001;
    weights2_1_addr_9_reg_1992[3:0] <= 4'b1001;
    weights2_1_addr_9_reg_1992_pp0_iter1_reg[3:0] <= 4'b1001;
    weights2_1_addr_9_reg_1992_pp0_iter2_reg[3:0] <= 4'b1001;
    weights2_1_addr_9_reg_1992_pp0_iter3_reg[3:0] <= 4'b1001;
    weights2_1_addr_9_reg_1992_pp0_iter4_reg[3:0] <= 4'b1001;
    weights2_2_addr_9_reg_1998[3:0] <= 4'b1001;
    weights2_2_addr_9_reg_1998_pp0_iter1_reg[3:0] <= 4'b1001;
    weights2_2_addr_9_reg_1998_pp0_iter2_reg[3:0] <= 4'b1001;
    weights2_2_addr_9_reg_1998_pp0_iter3_reg[3:0] <= 4'b1001;
    weights2_2_addr_9_reg_1998_pp0_iter4_reg[3:0] <= 4'b1001;
    weights2_3_addr_9_reg_2004[3:0] <= 4'b1001;
    weights2_3_addr_9_reg_2004_pp0_iter1_reg[3:0] <= 4'b1001;
    weights2_3_addr_9_reg_2004_pp0_iter2_reg[3:0] <= 4'b1001;
    weights2_3_addr_9_reg_2004_pp0_iter3_reg[3:0] <= 4'b1001;
    weights2_3_addr_9_reg_2004_pp0_iter4_reg[3:0] <= 4'b1001;
    weights2_0_addr_10_reg_2050[3:0] <= 4'b1010;
    weights2_0_addr_10_reg_2050_pp0_iter1_reg[3:0] <= 4'b1010;
    weights2_0_addr_10_reg_2050_pp0_iter2_reg[3:0] <= 4'b1010;
    weights2_0_addr_10_reg_2050_pp0_iter3_reg[3:0] <= 4'b1010;
    weights2_0_addr_10_reg_2050_pp0_iter4_reg[3:0] <= 4'b1010;
    weights2_1_addr_10_reg_2056[3:0] <= 4'b1010;
    weights2_1_addr_10_reg_2056_pp0_iter1_reg[3:0] <= 4'b1010;
    weights2_1_addr_10_reg_2056_pp0_iter2_reg[3:0] <= 4'b1010;
    weights2_1_addr_10_reg_2056_pp0_iter3_reg[3:0] <= 4'b1010;
    weights2_1_addr_10_reg_2056_pp0_iter4_reg[3:0] <= 4'b1010;
    weights2_2_addr_10_reg_2062[3:0] <= 4'b1010;
    weights2_2_addr_10_reg_2062_pp0_iter1_reg[3:0] <= 4'b1010;
    weights2_2_addr_10_reg_2062_pp0_iter2_reg[3:0] <= 4'b1010;
    weights2_2_addr_10_reg_2062_pp0_iter3_reg[3:0] <= 4'b1010;
    weights2_2_addr_10_reg_2062_pp0_iter4_reg[3:0] <= 4'b1010;
    weights2_3_addr_10_reg_2068[3:0] <= 4'b1010;
    weights2_3_addr_10_reg_2068_pp0_iter1_reg[3:0] <= 4'b1010;
    weights2_3_addr_10_reg_2068_pp0_iter2_reg[3:0] <= 4'b1010;
    weights2_3_addr_10_reg_2068_pp0_iter3_reg[3:0] <= 4'b1010;
    weights2_3_addr_10_reg_2068_pp0_iter4_reg[3:0] <= 4'b1010;
    weights2_0_addr_11_reg_2074[3:0] <= 4'b1011;
    weights2_0_addr_11_reg_2074_pp0_iter1_reg[3:0] <= 4'b1011;
    weights2_0_addr_11_reg_2074_pp0_iter2_reg[3:0] <= 4'b1011;
    weights2_0_addr_11_reg_2074_pp0_iter3_reg[3:0] <= 4'b1011;
    weights2_0_addr_11_reg_2074_pp0_iter4_reg[3:0] <= 4'b1011;
    weights2_1_addr_11_reg_2080[3:0] <= 4'b1011;
    weights2_1_addr_11_reg_2080_pp0_iter1_reg[3:0] <= 4'b1011;
    weights2_1_addr_11_reg_2080_pp0_iter2_reg[3:0] <= 4'b1011;
    weights2_1_addr_11_reg_2080_pp0_iter3_reg[3:0] <= 4'b1011;
    weights2_1_addr_11_reg_2080_pp0_iter4_reg[3:0] <= 4'b1011;
    weights2_2_addr_11_reg_2086[3:0] <= 4'b1011;
    weights2_2_addr_11_reg_2086_pp0_iter1_reg[3:0] <= 4'b1011;
    weights2_2_addr_11_reg_2086_pp0_iter2_reg[3:0] <= 4'b1011;
    weights2_2_addr_11_reg_2086_pp0_iter3_reg[3:0] <= 4'b1011;
    weights2_2_addr_11_reg_2086_pp0_iter4_reg[3:0] <= 4'b1011;
    weights2_3_addr_11_reg_2092[3:0] <= 4'b1011;
    weights2_3_addr_11_reg_2092_pp0_iter1_reg[3:0] <= 4'b1011;
    weights2_3_addr_11_reg_2092_pp0_iter2_reg[3:0] <= 4'b1011;
    weights2_3_addr_11_reg_2092_pp0_iter3_reg[3:0] <= 4'b1011;
    weights2_3_addr_11_reg_2092_pp0_iter4_reg[3:0] <= 4'b1011;
    weights2_0_addr_12_reg_2138[3:0] <= 4'b1100;
    weights2_0_addr_12_reg_2138_pp0_iter1_reg[3:0] <= 4'b1100;
    weights2_0_addr_12_reg_2138_pp0_iter2_reg[3:0] <= 4'b1100;
    weights2_0_addr_12_reg_2138_pp0_iter3_reg[3:0] <= 4'b1100;
    weights2_0_addr_12_reg_2138_pp0_iter4_reg[3:0] <= 4'b1100;
    weights2_1_addr_12_reg_2144[3:0] <= 4'b1100;
    weights2_1_addr_12_reg_2144_pp0_iter1_reg[3:0] <= 4'b1100;
    weights2_1_addr_12_reg_2144_pp0_iter2_reg[3:0] <= 4'b1100;
    weights2_1_addr_12_reg_2144_pp0_iter3_reg[3:0] <= 4'b1100;
    weights2_1_addr_12_reg_2144_pp0_iter4_reg[3:0] <= 4'b1100;
    weights2_2_addr_12_reg_2150[3:0] <= 4'b1100;
    weights2_2_addr_12_reg_2150_pp0_iter1_reg[3:0] <= 4'b1100;
    weights2_2_addr_12_reg_2150_pp0_iter2_reg[3:0] <= 4'b1100;
    weights2_2_addr_12_reg_2150_pp0_iter3_reg[3:0] <= 4'b1100;
    weights2_2_addr_12_reg_2150_pp0_iter4_reg[3:0] <= 4'b1100;
    weights2_3_addr_12_reg_2156[3:0] <= 4'b1100;
    weights2_3_addr_12_reg_2156_pp0_iter1_reg[3:0] <= 4'b1100;
    weights2_3_addr_12_reg_2156_pp0_iter2_reg[3:0] <= 4'b1100;
    weights2_3_addr_12_reg_2156_pp0_iter3_reg[3:0] <= 4'b1100;
    weights2_3_addr_12_reg_2156_pp0_iter4_reg[3:0] <= 4'b1100;
    weights2_0_addr_13_reg_2162[3:0] <= 4'b1101;
    weights2_0_addr_13_reg_2162_pp0_iter1_reg[3:0] <= 4'b1101;
    weights2_0_addr_13_reg_2162_pp0_iter2_reg[3:0] <= 4'b1101;
    weights2_0_addr_13_reg_2162_pp0_iter3_reg[3:0] <= 4'b1101;
    weights2_0_addr_13_reg_2162_pp0_iter4_reg[3:0] <= 4'b1101;
    weights2_1_addr_13_reg_2167[3:0] <= 4'b1101;
    weights2_1_addr_13_reg_2167_pp0_iter1_reg[3:0] <= 4'b1101;
    weights2_1_addr_13_reg_2167_pp0_iter2_reg[3:0] <= 4'b1101;
    weights2_1_addr_13_reg_2167_pp0_iter3_reg[3:0] <= 4'b1101;
    weights2_1_addr_13_reg_2167_pp0_iter4_reg[3:0] <= 4'b1101;
    weights2_2_addr_13_reg_2172[3:0] <= 4'b1101;
    weights2_2_addr_13_reg_2172_pp0_iter1_reg[3:0] <= 4'b1101;
    weights2_2_addr_13_reg_2172_pp0_iter2_reg[3:0] <= 4'b1101;
    weights2_2_addr_13_reg_2172_pp0_iter3_reg[3:0] <= 4'b1101;
    weights2_2_addr_13_reg_2172_pp0_iter4_reg[3:0] <= 4'b1101;
    weights2_3_addr_13_reg_2177[3:0] <= 4'b1101;
    weights2_3_addr_13_reg_2177_pp0_iter1_reg[3:0] <= 4'b1101;
    weights2_3_addr_13_reg_2177_pp0_iter2_reg[3:0] <= 4'b1101;
    weights2_3_addr_13_reg_2177_pp0_iter3_reg[3:0] <= 4'b1101;
    weights2_3_addr_13_reg_2177_pp0_iter4_reg[3:0] <= 4'b1101;
    weights2_0_addr_14_reg_2222[3:0] <= 4'b1110;
    weights2_0_addr_14_reg_2222_pp0_iter1_reg[3:0] <= 4'b1110;
    weights2_0_addr_14_reg_2222_pp0_iter2_reg[3:0] <= 4'b1110;
    weights2_0_addr_14_reg_2222_pp0_iter3_reg[3:0] <= 4'b1110;
    weights2_0_addr_14_reg_2222_pp0_iter4_reg[3:0] <= 4'b1110;
    weights2_1_addr_14_reg_2228[3:0] <= 4'b1110;
    weights2_1_addr_14_reg_2228_pp0_iter1_reg[3:0] <= 4'b1110;
    weights2_1_addr_14_reg_2228_pp0_iter2_reg[3:0] <= 4'b1110;
    weights2_1_addr_14_reg_2228_pp0_iter3_reg[3:0] <= 4'b1110;
    weights2_1_addr_14_reg_2228_pp0_iter4_reg[3:0] <= 4'b1110;
    weights2_2_addr_14_reg_2234[3:0] <= 4'b1110;
    weights2_2_addr_14_reg_2234_pp0_iter1_reg[3:0] <= 4'b1110;
    weights2_2_addr_14_reg_2234_pp0_iter2_reg[3:0] <= 4'b1110;
    weights2_2_addr_14_reg_2234_pp0_iter3_reg[3:0] <= 4'b1110;
    weights2_2_addr_14_reg_2234_pp0_iter4_reg[3:0] <= 4'b1110;
    weights2_3_addr_14_reg_2240[3:0] <= 4'b1110;
    weights2_3_addr_14_reg_2240_pp0_iter1_reg[3:0] <= 4'b1110;
    weights2_3_addr_14_reg_2240_pp0_iter2_reg[3:0] <= 4'b1110;
    weights2_3_addr_14_reg_2240_pp0_iter3_reg[3:0] <= 4'b1110;
    weights2_3_addr_14_reg_2240_pp0_iter4_reg[3:0] <= 4'b1110;
    weights2_0_addr_15_reg_2246[3:0] <= 4'b1111;
    weights2_0_addr_15_reg_2246_pp0_iter1_reg[3:0] <= 4'b1111;
    weights2_0_addr_15_reg_2246_pp0_iter2_reg[3:0] <= 4'b1111;
    weights2_0_addr_15_reg_2246_pp0_iter3_reg[3:0] <= 4'b1111;
    weights2_0_addr_15_reg_2246_pp0_iter4_reg[3:0] <= 4'b1111;
    weights2_1_addr_15_reg_2251[3:0] <= 4'b1111;
    weights2_1_addr_15_reg_2251_pp0_iter1_reg[3:0] <= 4'b1111;
    weights2_1_addr_15_reg_2251_pp0_iter2_reg[3:0] <= 4'b1111;
    weights2_1_addr_15_reg_2251_pp0_iter3_reg[3:0] <= 4'b1111;
    weights2_1_addr_15_reg_2251_pp0_iter4_reg[3:0] <= 4'b1111;
    weights2_2_addr_15_reg_2256[3:0] <= 4'b1111;
    weights2_2_addr_15_reg_2256_pp0_iter1_reg[3:0] <= 4'b1111;
    weights2_2_addr_15_reg_2256_pp0_iter2_reg[3:0] <= 4'b1111;
    weights2_2_addr_15_reg_2256_pp0_iter3_reg[3:0] <= 4'b1111;
    weights2_2_addr_15_reg_2256_pp0_iter4_reg[3:0] <= 4'b1111;
    weights2_3_addr_15_reg_2261[3:0] <= 4'b1111;
    weights2_3_addr_15_reg_2261_pp0_iter1_reg[3:0] <= 4'b1111;
    weights2_3_addr_15_reg_2261_pp0_iter2_reg[3:0] <= 4'b1111;
    weights2_3_addr_15_reg_2261_pp0_iter3_reg[3:0] <= 4'b1111;
    weights2_3_addr_15_reg_2261_pp0_iter4_reg[3:0] <= 4'b1111;
end
endmodule 