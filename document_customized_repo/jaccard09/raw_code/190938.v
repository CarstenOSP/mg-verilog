module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_0_address0,v224_0_ce0,v224_0_q0,v224_0_address1,v224_0_ce1,v224_0_q1,v224_1_address0,v224_1_ce0,v224_1_q0,v224_1_address1,v224_1_ce1,v224_1_q1,v224_2_address0,v224_2_ce0,v224_2_q0,v224_2_address1,v224_2_ce1,v224_2_q1,v224_3_address0,v224_3_ce0,v224_3_q0,v224_3_address1,v224_3_ce1,v224_3_q1,v228_address0,v228_ce0,v228_q0,v228_address1,v228_ce1,v228_q1,v229_address0,v229_ce0,v229_we0,v229_d0,v229_q0,v229_address1,v229_ce1,v229_we1,v229_d1,v229_q1,v4,grp_fu_144_p_din0,grp_fu_144_p_din1,grp_fu_144_p_opcode,grp_fu_144_p_dout0,grp_fu_144_p_ce,grp_fu_148_p_din0,grp_fu_148_p_din1,grp_fu_148_p_dout0,grp_fu_148_p_ce,grp_fu_152_p_din0,grp_fu_152_p_din1,grp_fu_152_p_dout0,grp_fu_152_p_ce); 
parameter    ap_ST_fsm_state1 = 18'd1;
parameter    ap_ST_fsm_state2 = 18'd2;
parameter    ap_ST_fsm_state3 = 18'd4;
parameter    ap_ST_fsm_state4 = 18'd8;
parameter    ap_ST_fsm_state5 = 18'd16;
parameter    ap_ST_fsm_state6 = 18'd32;
parameter    ap_ST_fsm_state7 = 18'd64;
parameter    ap_ST_fsm_state8 = 18'd128;
parameter    ap_ST_fsm_state9 = 18'd256;
parameter    ap_ST_fsm_state10 = 18'd512;
parameter    ap_ST_fsm_state11 = 18'd1024;
parameter    ap_ST_fsm_state12 = 18'd2048;
parameter    ap_ST_fsm_state13 = 18'd4096;
parameter    ap_ST_fsm_state14 = 18'd8192;
parameter    ap_ST_fsm_state15 = 18'd16384;
parameter    ap_ST_fsm_state16 = 18'd32768;
parameter    ap_ST_fsm_state17 = 18'd65536;
parameter    ap_ST_fsm_state18 = 18'd131072;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [0:0] v236_dout;
input   v236_empty_n;
output   v236_read;
output  [13:0] v224_0_address0;
output   v224_0_ce0;
input  [31:0] v224_0_q0;
output  [13:0] v224_0_address1;
output   v224_0_ce1;
input  [31:0] v224_0_q1;
output  [13:0] v224_1_address0;
output   v224_1_ce0;
input  [31:0] v224_1_q0;
output  [13:0] v224_1_address1;
output   v224_1_ce1;
input  [31:0] v224_1_q1;
output  [13:0] v224_2_address0;
output   v224_2_ce0;
input  [31:0] v224_2_q0;
output  [13:0] v224_2_address1;
output   v224_2_ce1;
input  [31:0] v224_2_q1;
output  [13:0] v224_3_address0;
output   v224_3_ce0;
input  [31:0] v224_3_q0;
output  [13:0] v224_3_address1;
output   v224_3_ce1;
input  [31:0] v224_3_q1;
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
output  [31:0] grp_fu_144_p_din0;
output  [31:0] grp_fu_144_p_din1;
output  [1:0] grp_fu_144_p_opcode;
input  [31:0] grp_fu_144_p_dout0;
output   grp_fu_144_p_ce;
output  [31:0] grp_fu_148_p_din0;
output  [31:0] grp_fu_148_p_din1;
input  [31:0] grp_fu_148_p_dout0;
output   grp_fu_148_p_ce;
output  [31:0] grp_fu_152_p_din0;
output  [31:0] grp_fu_152_p_din1;
input  [31:0] grp_fu_152_p_dout0;
output   grp_fu_152_p_ce;
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
(* fsm_encoding = "none" *) reg   [17:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire   [15:0] mul_ln38_fu_566_p2;
reg   [15:0] mul_ln38_reg_1647;
wire    ap_CS_fsm_state2;
wire   [13:0] zext_ln31_fu_586_p1;
reg   [13:0] zext_ln31_reg_1652;
wire   [0:0] cmp11_fu_590_p2;
reg   [0:0] cmp11_reg_1674;
wire   [0:0] empty_fu_596_p2;
reg   [0:0] empty_reg_1679;
wire    ap_CS_fsm_state3;
wire   [7:0] empty_883_fu_645_p2;
reg   [7:0] empty_883_reg_1700;
wire   [7:0] empty_886_fu_651_p2;
reg   [7:0] empty_886_reg_1707;
wire   [7:0] add_ln32_fu_657_p2;
reg   [7:0] add_ln32_reg_1714;
wire   [15:0] mul_ln38_1_fu_684_p2;
reg   [15:0] mul_ln38_1_reg_1719;
wire   [31:0] grp_fu_520_p3;
reg   [31:0] v11_2_v_reg_1724;
wire    ap_CS_fsm_state4;
wire   [7:0] empty_889_fu_760_p2;
reg   [7:0] empty_889_reg_1749;
wire   [7:0] empty_892_fu_766_p2;
reg   [7:0] empty_892_reg_1756;
wire   [31:0] grp_fu_527_p3;
reg   [31:0] v24_2_v_reg_1763;
wire    ap_CS_fsm_state5;
reg   [31:0] v35_2_v_reg_1768;
wire   [7:0] empty_895_fu_842_p2;
reg   [7:0] empty_895_reg_1793;
wire   [7:0] empty_898_fu_848_p2;
reg   [7:0] empty_898_reg_1800;
reg   [31:0] v46_2_v_reg_1807;
wire    ap_CS_fsm_state6;
reg   [31:0] v57_2_v_reg_1812;
wire   [7:0] empty_901_fu_924_p2;
reg   [7:0] empty_901_reg_1837;
wire   [7:0] empty_904_fu_930_p2;
reg   [7:0] empty_904_reg_1844;
reg   [31:0] v68_2_v_reg_1851;
wire    ap_CS_fsm_state7;
reg   [31:0] v79_2_v_reg_1856;
wire   [15:0] mul_ln34_fu_1010_p2;
reg   [15:0] mul_ln34_reg_1881;
wire    ap_CS_fsm_state8;
wire   [15:0] mul_ln49_fu_1019_p2;
reg   [15:0] mul_ln49_reg_1886;
wire   [15:0] mul_ln62_fu_1028_p2;
reg   [15:0] mul_ln62_reg_1891;
wire   [15:0] mul_ln75_fu_1037_p2;
reg   [15:0] mul_ln75_reg_1896;
wire   [15:0] mul_ln88_fu_1046_p2;
reg   [15:0] mul_ln88_reg_1901;
wire   [15:0] mul_ln101_fu_1055_p2;
reg   [15:0] mul_ln101_reg_1906;
wire   [15:0] mul_ln114_fu_1064_p2;
reg   [15:0] mul_ln114_reg_1911;
wire   [15:0] mul_ln127_fu_1073_p2;
reg   [15:0] mul_ln127_reg_1916;
reg   [31:0] v90_2_v_reg_1921;
wire   [15:0] mul_ln140_fu_1082_p2;
reg   [15:0] mul_ln140_reg_1926;
reg   [31:0] v101_v_reg_1931;
wire   [31:0] v11_fu_1088_p1;
reg   [31:0] v11_reg_1936;
wire    ap_CS_fsm_state9;
wire   [31:0] v24_fu_1092_p1;
reg   [31:0] v24_reg_1941;
wire   [31:0] v35_fu_1096_p1;
reg   [31:0] v35_reg_1946;
wire   [31:0] v46_fu_1100_p1;
reg   [31:0] v46_reg_1951;
wire   [31:0] v57_fu_1104_p1;
reg   [31:0] v57_reg_1956;
wire   [31:0] v68_fu_1108_p1;
reg   [31:0] v68_reg_1961;
wire   [31:0] v79_fu_1112_p1;
reg   [31:0] v79_reg_1966;
wire   [31:0] v90_fu_1116_p1;
reg   [31:0] v90_reg_1971;
wire   [31:0] v101_fu_1120_p1;
reg   [31:0] v101_reg_1976;
wire    ap_CS_fsm_state11;
wire   [7:0] empty_909_fu_1167_p2;
reg   [7:0] empty_909_reg_1994;
wire   [7:0] empty_912_fu_1173_p2;
reg   [7:0] empty_912_reg_2001;
wire   [7:0] add_ln32_1_fu_1179_p2;
reg   [7:0] add_ln32_1_reg_2008;
wire   [31:0] grp_fu_534_p3;
reg   [31:0] v11_1_v_reg_2013;
wire    ap_CS_fsm_state12;
wire   [7:0] empty_915_fu_1265_p2;
reg   [7:0] empty_915_reg_2038;
wire   [7:0] empty_918_fu_1271_p2;
reg   [7:0] empty_918_reg_2045;
wire   [31:0] grp_fu_541_p3;
reg   [31:0] v24_1_v_reg_2052;
wire    ap_CS_fsm_state13;
reg   [31:0] v35_1_v_reg_2057;
wire   [7:0] empty_921_fu_1347_p2;
reg   [7:0] empty_921_reg_2082;
wire   [7:0] empty_924_fu_1353_p2;
reg   [7:0] empty_924_reg_2089;
reg   [31:0] v46_1_v_reg_2096;
wire    ap_CS_fsm_state14;
reg   [31:0] v57_1_v_reg_2101;
wire   [7:0] empty_927_fu_1429_p2;
reg   [7:0] empty_927_reg_2126;
wire   [7:0] empty_930_fu_1435_p2;
reg   [7:0] empty_930_reg_2133;
reg   [31:0] v68_1_v_reg_2140;
wire    ap_CS_fsm_state15;
reg   [31:0] v79_1_v_reg_2145;
wire   [15:0] mul_ln34_1_fu_1515_p2;
reg   [15:0] mul_ln34_1_reg_2170;
wire    ap_CS_fsm_state16;
wire   [15:0] mul_ln49_1_fu_1524_p2;
reg   [15:0] mul_ln49_1_reg_2175;
wire   [15:0] mul_ln62_1_fu_1533_p2;
reg   [15:0] mul_ln62_1_reg_2180;
wire   [15:0] mul_ln75_1_fu_1542_p2;
reg   [15:0] mul_ln75_1_reg_2185;
wire   [15:0] mul_ln88_1_fu_1551_p2;
reg   [15:0] mul_ln88_1_reg_2190;
wire   [15:0] mul_ln101_1_fu_1560_p2;
reg   [15:0] mul_ln101_1_reg_2195;
wire   [15:0] mul_ln114_1_fu_1569_p2;
reg   [15:0] mul_ln114_1_reg_2200;
wire   [15:0] mul_ln127_1_fu_1578_p2;
reg   [15:0] mul_ln127_1_reg_2205;
reg   [31:0] v90_1_v_reg_2210;
wire   [15:0] mul_ln140_1_fu_1587_p2;
reg   [15:0] mul_ln140_1_reg_2215;
reg   [31:0] v101_1_v_reg_2220;
wire   [31:0] v11_1_fu_1593_p1;
reg   [31:0] v11_1_reg_2225;
wire    ap_CS_fsm_state17;
wire   [31:0] v24_1_fu_1597_p1;
reg   [31:0] v24_1_reg_2230;
wire   [31:0] v35_1_fu_1601_p1;
reg   [31:0] v35_1_reg_2235;
wire   [31:0] v46_1_fu_1605_p1;
reg   [31:0] v46_1_reg_2240;
wire   [31:0] v57_1_fu_1609_p1;
reg   [31:0] v57_1_reg_2245;
wire   [31:0] v68_1_fu_1613_p1;
reg   [31:0] v68_1_reg_2250;
wire   [31:0] v79_1_fu_1617_p1;
reg   [31:0] v79_1_reg_2255;
wire   [31:0] v90_1_fu_1621_p1;
reg   [31:0] v90_1_reg_2260;
wire   [31:0] v101_1_fu_1625_p1;
reg   [31:0] v101_1_reg_2265;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_464_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_464_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_464_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_464_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_464_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_464_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_464_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_464_v228_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_464_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_464_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_464_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_464_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_464_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_464_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_464_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_464_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_464_grp_fu_2270_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_464_grp_fu_2270_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_464_grp_fu_2270_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_464_grp_fu_2270_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_464_grp_fu_2274_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_464_grp_fu_2274_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_464_grp_fu_2274_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_464_grp_fu_2278_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_464_grp_fu_2278_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_464_grp_fu_2278_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_234_fu_493_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_234_fu_493_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_234_fu_493_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_234_fu_493_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_234_fu_493_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_234_fu_493_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_234_fu_493_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_234_fu_493_v228_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_234_fu_493_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_234_fu_493_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_234_fu_493_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_234_fu_493_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_234_fu_493_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_234_fu_493_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_234_fu_493_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_234_fu_493_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_234_fu_493_grp_fu_2270_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_234_fu_493_grp_fu_2270_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_234_fu_493_grp_fu_2270_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_234_fu_493_grp_fu_2270_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_234_fu_493_grp_fu_2274_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_234_fu_493_grp_fu_2274_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_234_fu_493_grp_fu_2274_p_ce;
reg   [7:0] v6_reg_440;
wire   [0:0] icmp_ln31_fu_556_p2;
wire    ap_CS_fsm_state10;
reg   [7:0] v6_1_reg_452;
wire    ap_CS_fsm_state18;
wire   [0:0] icmp_ln32_fu_602_p2;
reg    grp_kernel_2mm_node0_Pipeline_label_2_fu_464_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_234_fu_493_ap_start_reg;
wire   [63:0] p_cast2169_fu_639_p1;
wire   [63:0] p_cast_fu_719_p1;
wire   [63:0] p_cast2170_fu_754_p1;
wire   [63:0] p_cast2171_fu_801_p1;
wire   [63:0] p_cast2172_fu_836_p1;
wire   [63:0] p_cast2173_fu_883_p1;
wire   [63:0] p_cast2174_fu_918_p1;
wire   [63:0] p_cast2175_fu_965_p1;
wire   [63:0] p_cast2176_fu_1000_p1;
wire   [63:0] p_cast2177_fu_1161_p1;
wire   [0:0] icmp_ln32_1_fu_1124_p2;
wire   [63:0] p_cast2178_fu_1224_p1;
wire   [63:0] p_cast2179_fu_1259_p1;
wire   [63:0] p_cast2180_fu_1306_p1;
wire   [63:0] p_cast2181_fu_1341_p1;
wire   [63:0] p_cast2182_fu_1388_p1;
wire   [63:0] p_cast2183_fu_1423_p1;
wire   [63:0] p_cast2184_fu_1470_p1;
wire   [63:0] p_cast2185_fu_1505_p1;
reg   [7:0] v5_fu_100;
wire   [7:0] add_ln31_fu_1185_p2;
reg    ap_block_state1;
reg    v236_read_local;
reg    v224_0_ce0_local;
reg   [13:0] v224_0_address0_local;
reg    v224_0_ce1_local;
reg   [13:0] v224_0_address1_local;
reg    v224_2_ce0_local;
reg   [13:0] v224_2_address0_local;
reg    v224_2_ce1_local;
reg   [13:0] v224_2_address1_local;
reg    v224_1_ce0_local;
reg   [13:0] v224_1_address0_local;
reg    v224_1_ce1_local;
reg   [13:0] v224_1_address1_local;
reg    v224_3_ce0_local;
reg   [13:0] v224_3_address0_local;
reg    v224_3_ce1_local;
reg   [13:0] v224_3_address1_local;
wire   [7:0] mul_ln38_fu_566_p0;
wire   [8:0] mul_ln38_fu_566_p1;
wire   [5:0] lshr_ln_fu_576_p4;
wire   [1:0] trunc_ln31_fu_572_p1;
wire   [11:0] tmp_13_fu_616_p3;
wire   [13:0] p_shl1_fu_608_p3;
wire   [13:0] p_shl2279_fu_624_p1;
wire   [13:0] empty_881_fu_628_p2;
wire   [13:0] empty_882_fu_634_p2;
wire   [6:0] tmp_fu_663_p4;
wire   [7:0] or_ln_fu_672_p3;
wire   [7:0] mul_ln38_1_fu_684_p0;
wire   [8:0] mul_ln38_1_fu_684_p1;
wire   [11:0] tmp_14_fu_697_p3;
wire   [13:0] p_shl2_fu_690_p3;
wire   [13:0] p_shl2277_fu_704_p1;
wire   [13:0] empty_884_fu_708_p2;
wire   [13:0] empty_885_fu_714_p2;
wire   [11:0] tmp_15_fu_732_p3;
wire   [13:0] p_shl3_fu_725_p3;
wire   [13:0] p_shl2275_fu_739_p1;
wire   [13:0] empty_887_fu_743_p2;
wire   [13:0] empty_888_fu_749_p2;
wire   [11:0] tmp_16_fu_779_p3;
wire   [13:0] p_shl4_fu_772_p3;
wire   [13:0] p_shl2273_fu_786_p1;
wire   [13:0] empty_890_fu_790_p2;
wire   [13:0] empty_891_fu_796_p2;
wire   [11:0] tmp_17_fu_814_p3;
wire   [13:0] p_shl5_fu_807_p3;
wire   [13:0] p_shl2271_fu_821_p1;
wire   [13:0] empty_893_fu_825_p2;
wire   [13:0] empty_894_fu_831_p2;
wire   [11:0] tmp_18_fu_861_p3;
wire   [13:0] p_shl6_fu_854_p3;
wire   [13:0] p_shl2269_fu_868_p1;
wire   [13:0] empty_896_fu_872_p2;
wire   [13:0] empty_897_fu_878_p2;
wire   [11:0] tmp_19_fu_896_p3;
wire   [13:0] p_shl7_fu_889_p3;
wire   [13:0] p_shl2267_fu_903_p1;
wire   [13:0] empty_899_fu_907_p2;
wire   [13:0] empty_900_fu_913_p2;
wire   [11:0] tmp_20_fu_943_p3;
wire   [13:0] p_shl8_fu_936_p3;
wire   [13:0] p_shl2265_fu_950_p1;
wire   [13:0] empty_902_fu_954_p2;
wire   [13:0] empty_903_fu_960_p2;
wire   [11:0] tmp_21_fu_978_p3;
wire   [13:0] p_shl9_fu_971_p3;
wire   [13:0] p_shl2263_fu_985_p1;
wire   [13:0] empty_905_fu_989_p2;
wire   [13:0] empty_906_fu_995_p2;
wire   [7:0] mul_ln34_fu_1010_p0;
wire   [8:0] mul_ln34_fu_1010_p1;
wire   [7:0] mul_ln49_fu_1019_p0;
wire   [8:0] mul_ln49_fu_1019_p1;
wire   [7:0] mul_ln62_fu_1028_p0;
wire   [8:0] mul_ln62_fu_1028_p1;
wire   [7:0] mul_ln75_fu_1037_p0;
wire   [8:0] mul_ln75_fu_1037_p1;
wire   [7:0] mul_ln88_fu_1046_p0;
wire   [8:0] mul_ln88_fu_1046_p1;
wire   [7:0] mul_ln101_fu_1055_p0;
wire   [8:0] mul_ln101_fu_1055_p1;
wire   [7:0] mul_ln114_fu_1064_p0;
wire   [8:0] mul_ln114_fu_1064_p1;
wire   [7:0] mul_ln127_fu_1073_p0;
wire   [8:0] mul_ln127_fu_1073_p1;
wire   [7:0] mul_ln140_fu_1082_p0;
wire   [8:0] mul_ln140_fu_1082_p1;
wire   [11:0] tmp_22_fu_1138_p3;
wire   [13:0] p_shl10_fu_1130_p3;
wire   [13:0] p_shl2261_fu_1146_p1;
wire   [13:0] empty_907_fu_1150_p2;
wire   [13:0] empty_908_fu_1156_p2;
wire   [11:0] tmp_23_fu_1202_p3;
wire   [13:0] p_shl11_fu_1195_p3;
wire   [13:0] p_shl2259_fu_1209_p1;
wire   [13:0] empty_910_fu_1213_p2;
wire   [13:0] empty_911_fu_1219_p2;
wire   [11:0] tmp_24_fu_1237_p3;
wire   [13:0] p_shl12_fu_1230_p3;
wire   [13:0] p_shl2257_fu_1244_p1;
wire   [13:0] empty_913_fu_1248_p2;
wire   [13:0] empty_914_fu_1254_p2;
wire   [11:0] tmp_25_fu_1284_p3;
wire   [13:0] p_shl13_fu_1277_p3;
wire   [13:0] p_shl2255_fu_1291_p1;
wire   [13:0] empty_916_fu_1295_p2;
wire   [13:0] empty_917_fu_1301_p2;
wire   [11:0] tmp_26_fu_1319_p3;
wire   [13:0] p_shl14_fu_1312_p3;
wire   [13:0] p_shl2253_fu_1326_p1;
wire   [13:0] empty_919_fu_1330_p2;
wire   [13:0] empty_920_fu_1336_p2;
wire   [11:0] tmp_27_fu_1366_p3;
wire   [13:0] p_shl15_fu_1359_p3;
wire   [13:0] p_shl2251_fu_1373_p1;
wire   [13:0] empty_922_fu_1377_p2;
wire   [13:0] empty_923_fu_1383_p2;
wire   [11:0] tmp_28_fu_1401_p3;
wire   [13:0] p_shl16_fu_1394_p3;
wire   [13:0] p_shl2249_fu_1408_p1;
wire   [13:0] empty_925_fu_1412_p2;
wire   [13:0] empty_926_fu_1418_p2;
wire   [11:0] tmp_29_fu_1448_p3;
wire   [13:0] p_shl17_fu_1441_p3;
wire   [13:0] p_shl2247_fu_1455_p1;
wire   [13:0] empty_928_fu_1459_p2;
wire   [13:0] empty_929_fu_1465_p2;
wire   [11:0] tmp_30_fu_1483_p3;
wire   [13:0] p_shl_fu_1476_p3;
wire   [13:0] p_shl2245_fu_1490_p1;
wire   [13:0] empty_931_fu_1494_p2;
wire   [13:0] empty_932_fu_1500_p2;
wire   [7:0] mul_ln34_1_fu_1515_p0;
wire   [8:0] mul_ln34_1_fu_1515_p1;
wire   [7:0] mul_ln49_1_fu_1524_p0;
wire   [8:0] mul_ln49_1_fu_1524_p1;
wire   [7:0] mul_ln62_1_fu_1533_p0;
wire   [8:0] mul_ln62_1_fu_1533_p1;
wire   [7:0] mul_ln75_1_fu_1542_p0;
wire   [8:0] mul_ln75_1_fu_1542_p1;
wire   [7:0] mul_ln88_1_fu_1551_p0;
wire   [8:0] mul_ln88_1_fu_1551_p1;
wire   [7:0] mul_ln101_1_fu_1560_p0;
wire   [8:0] mul_ln101_1_fu_1560_p1;
wire   [7:0] mul_ln114_1_fu_1569_p0;
wire   [8:0] mul_ln114_1_fu_1569_p1;
wire   [7:0] mul_ln127_1_fu_1578_p0;
wire   [8:0] mul_ln127_1_fu_1578_p1;
wire   [7:0] mul_ln140_1_fu_1587_p0;
wire   [8:0] mul_ln140_1_fu_1587_p1;
reg   [31:0] grp_fu_2270_p0;
reg   [31:0] grp_fu_2270_p1;
reg    grp_fu_2270_ce;
reg   [31:0] grp_fu_2274_p0;
reg   [31:0] grp_fu_2274_p1;
reg    grp_fu_2274_ce;
reg    grp_fu_2278_ce;
reg   [17:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
reg    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
wire    ap_ST_fsm_state17_blk;
reg    ap_ST_fsm_state18_blk;
wire   [15:0] mul_ln101_1_fu_1560_p00;
wire   [15:0] mul_ln101_fu_1055_p00;
wire   [15:0] mul_ln114_1_fu_1569_p00;
wire   [15:0] mul_ln114_fu_1064_p00;
wire   [15:0] mul_ln127_1_fu_1578_p00;
wire   [15:0] mul_ln127_fu_1073_p00;
wire   [15:0] mul_ln140_1_fu_1587_p00;
wire   [15:0] mul_ln140_fu_1082_p00;
wire   [15:0] mul_ln34_1_fu_1515_p00;
wire   [15:0] mul_ln34_fu_1010_p00;
wire   [15:0] mul_ln38_1_fu_684_p00;
wire   [15:0] mul_ln38_fu_566_p00;
wire   [15:0] mul_ln49_1_fu_1524_p00;
wire   [15:0] mul_ln49_fu_1019_p00;
wire   [15:0] mul_ln62_1_fu_1533_p00;
wire   [15:0] mul_ln62_fu_1028_p00;
wire   [15:0] mul_ln75_1_fu_1542_p00;
wire   [15:0] mul_ln75_fu_1037_p00;
wire   [15:0] mul_ln88_1_fu_1551_p00;
wire   [15:0] mul_ln88_fu_1046_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 18'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_2_fu_464_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_234_fu_493_ap_start_reg = 1'b0;
#0 v5_fu_100 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_2 grp_kernel_2mm_node0_Pipeline_label_2_fu_464(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_2_fu_464_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_2_fu_464_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_2_fu_464_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_2_fu_464_ap_ready),.mul_ln38(mul_ln38_reg_1647),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_464_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_464_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_464_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_464_v228_ce1),.v228_q1(v228_q1),.mul_ln34(mul_ln34_reg_1881),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_464_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_464_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_464_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_464_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_464_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_464_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_464_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_464_v229_d1),.v229_q1(v229_q1),.mul_ln49(mul_ln49_reg_1886),.mul_ln62(mul_ln62_reg_1891),.mul_ln75(mul_ln75_reg_1896),.mul_ln88(mul_ln88_reg_1901),.mul_ln101(mul_ln101_reg_1906),.mul_ln114(mul_ln114_reg_1911),.mul_ln127(mul_ln127_reg_1916),.mul_ln140(mul_ln140_reg_1926),.v4(v4),.cmp11(cmp11_reg_1674),.v11(v11_reg_1936),.v24(v24_reg_1941),.v35(v35_reg_1946),.v46(v46_reg_1951),.v57(v57_reg_1956),.v68(v68_reg_1961),.v79(v79_reg_1966),.v90(v90_reg_1971),.v101(v101_reg_1976),.grp_fu_2270_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_464_grp_fu_2270_p_din0),.grp_fu_2270_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_464_grp_fu_2270_p_din1),.grp_fu_2270_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_464_grp_fu_2270_p_opcode),.grp_fu_2270_p_dout0(grp_fu_144_p_dout0),.grp_fu_2270_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_464_grp_fu_2270_p_ce),.grp_fu_2274_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_464_grp_fu_2274_p_din0),.grp_fu_2274_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_464_grp_fu_2274_p_din1),.grp_fu_2274_p_dout0(grp_fu_148_p_dout0),.grp_fu_2274_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_464_grp_fu_2274_p_ce),.grp_fu_2278_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_464_grp_fu_2278_p_din0),.grp_fu_2278_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_464_grp_fu_2278_p_din1),.grp_fu_2278_p_dout0(grp_fu_152_p_dout0),.grp_fu_2278_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_464_grp_fu_2278_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_234 grp_kernel_2mm_node0_Pipeline_label_234_fu_493(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_234_fu_493_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_234_fu_493_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_234_fu_493_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_234_fu_493_ap_ready),.mul_ln38_1(mul_ln38_1_reg_1719),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_234_fu_493_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_234_fu_493_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_234_fu_493_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_234_fu_493_v228_ce1),.v228_q1(v228_q1),.mul_ln34_1(mul_ln34_1_reg_2170),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_234_fu_493_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_234_fu_493_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_234_fu_493_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_234_fu_493_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_234_fu_493_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_234_fu_493_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_234_fu_493_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_234_fu_493_v229_d1),.v229_q1(v229_q1),.mul_ln49_1(mul_ln49_1_reg_2175),.mul_ln62_1(mul_ln62_1_reg_2180),.mul_ln75_1(mul_ln75_1_reg_2185),.mul_ln88_1(mul_ln88_1_reg_2190),.mul_ln101_1(mul_ln101_1_reg_2195),.mul_ln114_1(mul_ln114_1_reg_2200),.mul_ln127_1(mul_ln127_1_reg_2205),.mul_ln140_1(mul_ln140_1_reg_2215),.v11_1(v11_1_reg_2225),.v24_1(v24_1_reg_2230),.v35_1(v35_1_reg_2235),.v46_1(v46_1_reg_2240),.v57_1(v57_1_reg_2245),.v68_1(v68_1_reg_2250),.v79_1(v79_1_reg_2255),.v90_1(v90_1_reg_2260),.v101_1(v101_1_reg_2265),.grp_fu_2270_p_din0(grp_kernel_2mm_node0_Pipeline_label_234_fu_493_grp_fu_2270_p_din0),.grp_fu_2270_p_din1(grp_kernel_2mm_node0_Pipeline_label_234_fu_493_grp_fu_2270_p_din1),.grp_fu_2270_p_opcode(grp_kernel_2mm_node0_Pipeline_label_234_fu_493_grp_fu_2270_p_opcode),.grp_fu_2270_p_dout0(grp_fu_144_p_dout0),.grp_fu_2270_p_ce(grp_kernel_2mm_node0_Pipeline_label_234_fu_493_grp_fu_2270_p_ce),.grp_fu_2274_p_din0(grp_kernel_2mm_node0_Pipeline_label_234_fu_493_grp_fu_2274_p_din0),.grp_fu_2274_p_din1(grp_kernel_2mm_node0_Pipeline_label_234_fu_493_grp_fu_2274_p_din1),.grp_fu_2274_p_dout0(grp_fu_148_p_dout0),.grp_fu_2274_p_ce(grp_kernel_2mm_node0_Pipeline_label_234_fu_493_grp_fu_2274_p_ce));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1231(.din0(mul_ln38_fu_566_p0),.din1(mul_ln38_fu_566_p1),.dout(mul_ln38_fu_566_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1232(.din0(mul_ln38_1_fu_684_p0),.din1(mul_ln38_1_fu_684_p1),.dout(mul_ln38_1_fu_684_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1233(.din0(mul_ln34_fu_1010_p0),.din1(mul_ln34_fu_1010_p1),.dout(mul_ln34_fu_1010_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1234(.din0(mul_ln49_fu_1019_p0),.din1(mul_ln49_fu_1019_p1),.dout(mul_ln49_fu_1019_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1235(.din0(mul_ln62_fu_1028_p0),.din1(mul_ln62_fu_1028_p1),.dout(mul_ln62_fu_1028_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1236(.din0(mul_ln75_fu_1037_p0),.din1(mul_ln75_fu_1037_p1),.dout(mul_ln75_fu_1037_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1237(.din0(mul_ln88_fu_1046_p0),.din1(mul_ln88_fu_1046_p1),.dout(mul_ln88_fu_1046_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1238(.din0(mul_ln101_fu_1055_p0),.din1(mul_ln101_fu_1055_p1),.dout(mul_ln101_fu_1055_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1239(.din0(mul_ln114_fu_1064_p0),.din1(mul_ln114_fu_1064_p1),.dout(mul_ln114_fu_1064_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1240(.din0(mul_ln127_fu_1073_p0),.din1(mul_ln127_fu_1073_p1),.dout(mul_ln127_fu_1073_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1241(.din0(mul_ln140_fu_1082_p0),.din1(mul_ln140_fu_1082_p1),.dout(mul_ln140_fu_1082_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1242(.din0(mul_ln34_1_fu_1515_p0),.din1(mul_ln34_1_fu_1515_p1),.dout(mul_ln34_1_fu_1515_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1243(.din0(mul_ln49_1_fu_1524_p0),.din1(mul_ln49_1_fu_1524_p1),.dout(mul_ln49_1_fu_1524_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1244(.din0(mul_ln62_1_fu_1533_p0),.din1(mul_ln62_1_fu_1533_p1),.dout(mul_ln62_1_fu_1533_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1245(.din0(mul_ln75_1_fu_1542_p0),.din1(mul_ln75_1_fu_1542_p1),.dout(mul_ln75_1_fu_1542_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1246(.din0(mul_ln88_1_fu_1551_p0),.din1(mul_ln88_1_fu_1551_p1),.dout(mul_ln88_1_fu_1551_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1247(.din0(mul_ln101_1_fu_1560_p0),.din1(mul_ln101_1_fu_1560_p1),.dout(mul_ln101_1_fu_1560_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1248(.din0(mul_ln114_1_fu_1569_p0),.din1(mul_ln114_1_fu_1569_p1),.dout(mul_ln114_1_fu_1569_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1249(.din0(mul_ln127_1_fu_1578_p0),.din1(mul_ln127_1_fu_1578_p1),.dout(mul_ln127_1_fu_1578_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1250(.din0(mul_ln140_1_fu_1587_p0),.din1(mul_ln140_1_fu_1587_p1),.dout(mul_ln140_1_fu_1587_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_234_fu_493_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state17)) begin
            grp_kernel_2mm_node0_Pipeline_label_234_fu_493_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_234_fu_493_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_234_fu_493_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_2_fu_464_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_464_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_464_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_464_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_100 <= 8'd0;
    end else if (((icmp_ln32_1_fu_1124_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        v5_fu_100 <= add_ln31_fu_1185_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln32_fu_602_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v6_1_reg_452 <= 8'd0;
    end else if (((grp_kernel_2mm_node0_Pipeline_label_234_fu_493_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state18))) begin
        v6_1_reg_452 <= add_ln32_1_reg_2008;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_464_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        v6_reg_440 <= add_ln32_reg_1714;
    end else if (((icmp_ln31_fu_556_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        v6_reg_440 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        add_ln32_1_reg_2008 <= add_ln32_1_fu_1179_p2;
        empty_909_reg_1994 <= empty_909_fu_1167_p2;
        empty_912_reg_2001 <= empty_912_fu_1173_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_reg_1714 <= add_ln32_fu_657_p2;
        empty_883_reg_1700 <= empty_883_fu_645_p2;
        empty_886_reg_1707 <= empty_886_fu_651_p2;
        mul_ln38_1_reg_1719 <= mul_ln38_1_fu_684_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cmp11_reg_1674 <= cmp11_fu_590_p2;
        empty_reg_1679 <= empty_fu_596_p2;
        mul_ln38_reg_1647 <= mul_ln38_fu_566_p2;
        zext_ln31_reg_1652[5 : 0] <= zext_ln31_fu_586_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        empty_889_reg_1749 <= empty_889_fu_760_p2;
        empty_892_reg_1756 <= empty_892_fu_766_p2;
        v11_2_v_reg_1724 <= grp_fu_520_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        empty_895_reg_1793 <= empty_895_fu_842_p2;
        empty_898_reg_1800 <= empty_898_fu_848_p2;
        v24_2_v_reg_1763 <= grp_fu_527_p3;
        v35_2_v_reg_1768 <= grp_fu_520_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        empty_901_reg_1837 <= empty_901_fu_924_p2;
        empty_904_reg_1844 <= empty_904_fu_930_p2;
        v46_2_v_reg_1807 <= grp_fu_520_p3;
        v57_2_v_reg_1812 <= grp_fu_527_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        empty_915_reg_2038 <= empty_915_fu_1265_p2;
        empty_918_reg_2045 <= empty_918_fu_1271_p2;
        v11_1_v_reg_2013 <= grp_fu_534_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        empty_921_reg_2082 <= empty_921_fu_1347_p2;
        empty_924_reg_2089 <= empty_924_fu_1353_p2;
        v24_1_v_reg_2052 <= grp_fu_541_p3;
        v35_1_v_reg_2057 <= grp_fu_534_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        empty_927_reg_2126 <= empty_927_fu_1429_p2;
        empty_930_reg_2133 <= empty_930_fu_1435_p2;
        v46_1_v_reg_2096 <= grp_fu_534_p3;
        v57_1_v_reg_2101 <= grp_fu_541_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        mul_ln101_1_reg_2195 <= mul_ln101_1_fu_1560_p2;
        mul_ln114_1_reg_2200 <= mul_ln114_1_fu_1569_p2;
        mul_ln127_1_reg_2205 <= mul_ln127_1_fu_1578_p2;
        mul_ln140_1_reg_2215 <= mul_ln140_1_fu_1587_p2;
        mul_ln34_1_reg_2170 <= mul_ln34_1_fu_1515_p2;
        mul_ln49_1_reg_2175 <= mul_ln49_1_fu_1524_p2;
        mul_ln62_1_reg_2180 <= mul_ln62_1_fu_1533_p2;
        mul_ln75_1_reg_2185 <= mul_ln75_1_fu_1542_p2;
        mul_ln88_1_reg_2190 <= mul_ln88_1_fu_1551_p2;
        v101_1_v_reg_2220 <= grp_fu_541_p3;
        v90_1_v_reg_2210 <= grp_fu_534_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        mul_ln101_reg_1906 <= mul_ln101_fu_1055_p2;
        mul_ln114_reg_1911 <= mul_ln114_fu_1064_p2;
        mul_ln127_reg_1916 <= mul_ln127_fu_1073_p2;
        mul_ln140_reg_1926 <= mul_ln140_fu_1082_p2;
        mul_ln34_reg_1881 <= mul_ln34_fu_1010_p2;
        mul_ln49_reg_1886 <= mul_ln49_fu_1019_p2;
        mul_ln62_reg_1891 <= mul_ln62_fu_1028_p2;
        mul_ln75_reg_1896 <= mul_ln75_fu_1037_p2;
        mul_ln88_reg_1901 <= mul_ln88_fu_1046_p2;
        v101_v_reg_1931 <= grp_fu_527_p3;
        v90_2_v_reg_1921 <= grp_fu_520_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v101_1_reg_2265 <= v101_1_fu_1625_p1;
        v11_1_reg_2225 <= v11_1_fu_1593_p1;
        v24_1_reg_2230 <= v24_1_fu_1597_p1;
        v35_1_reg_2235 <= v35_1_fu_1601_p1;
        v46_1_reg_2240 <= v46_1_fu_1605_p1;
        v57_1_reg_2245 <= v57_1_fu_1609_p1;
        v68_1_reg_2250 <= v68_1_fu_1613_p1;
        v79_1_reg_2255 <= v79_1_fu_1617_p1;
        v90_1_reg_2260 <= v90_1_fu_1621_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v101_reg_1976 <= v101_fu_1120_p1;
        v11_reg_1936 <= v11_fu_1088_p1;
        v24_reg_1941 <= v24_fu_1092_p1;
        v35_reg_1946 <= v35_fu_1096_p1;
        v46_reg_1951 <= v46_fu_1100_p1;
        v57_reg_1956 <= v57_fu_1104_p1;
        v68_reg_1961 <= v68_fu_1108_p1;
        v79_reg_1966 <= v79_fu_1112_p1;
        v90_reg_1971 <= v90_fu_1116_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        v68_1_v_reg_2140 <= grp_fu_534_p3;
        v79_1_v_reg_2145 <= grp_fu_541_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v68_2_v_reg_1851 <= grp_fu_520_p3;
        v79_2_v_reg_1856 <= grp_fu_527_p3;
    end
end
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_464_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
assign ap_ST_fsm_state17_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_234_fu_493_ap_done == 1'b0)) begin
        ap_ST_fsm_state18_blk = 1'b1;
    end else begin
        ap_ST_fsm_state18_blk = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state1)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
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
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln31_fu_556_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
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
    if (((icmp_ln31_fu_556_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_2270_ce = grp_kernel_2mm_node0_Pipeline_label_234_fu_493_grp_fu_2270_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2270_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_464_grp_fu_2270_p_ce;
    end else begin
        grp_fu_2270_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_2270_p0 = grp_kernel_2mm_node0_Pipeline_label_234_fu_493_grp_fu_2270_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2270_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_464_grp_fu_2270_p_din0;
    end else begin
        grp_fu_2270_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_2270_p1 = grp_kernel_2mm_node0_Pipeline_label_234_fu_493_grp_fu_2270_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2270_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_464_grp_fu_2270_p_din1;
    end else begin
        grp_fu_2270_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_2274_ce = grp_kernel_2mm_node0_Pipeline_label_234_fu_493_grp_fu_2274_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2274_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_464_grp_fu_2274_p_ce;
    end else begin
        grp_fu_2274_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_2274_p0 = grp_kernel_2mm_node0_Pipeline_label_234_fu_493_grp_fu_2274_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2274_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_464_grp_fu_2274_p_din0;
    end else begin
        grp_fu_2274_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_2274_p1 = grp_kernel_2mm_node0_Pipeline_label_234_fu_493_grp_fu_2274_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2274_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_464_grp_fu_2274_p_din1;
    end else begin
        grp_fu_2274_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2278_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_464_grp_fu_2278_p_ce;
    end else begin
        grp_fu_2278_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_0_address0_local = p_cast2175_fu_965_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_0_address0_local = p_cast2173_fu_883_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_0_address0_local = p_cast2171_fu_801_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_0_address0_local = p_cast2170_fu_754_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_0_address0_local = p_cast2169_fu_639_p1;
    end else begin
        v224_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_0_address1_local = p_cast2176_fu_1000_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_0_address1_local = p_cast2174_fu_918_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_0_address1_local = p_cast2172_fu_836_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_0_address1_local = p_cast_fu_719_p1;
    end else begin
        v224_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        v224_0_ce0_local = 1'b1;
    end else begin
        v224_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        v224_0_ce1_local = 1'b1;
    end else begin
        v224_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_1_address0_local = p_cast2184_fu_1470_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_1_address0_local = p_cast2182_fu_1388_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_1_address0_local = p_cast2180_fu_1306_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_1_address0_local = p_cast2179_fu_1259_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_1_address0_local = p_cast2177_fu_1161_p1;
    end else begin
        v224_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_1_address1_local = p_cast2185_fu_1505_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_1_address1_local = p_cast2183_fu_1423_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_1_address1_local = p_cast2181_fu_1341_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_1_address1_local = p_cast2178_fu_1224_p1;
    end else begin
        v224_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        v224_1_ce0_local = 1'b1;
    end else begin
        v224_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12))) begin
        v224_1_ce1_local = 1'b1;
    end else begin
        v224_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_2_address0_local = p_cast2175_fu_965_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_2_address0_local = p_cast2173_fu_883_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_2_address0_local = p_cast2171_fu_801_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_2_address0_local = p_cast2170_fu_754_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_2_address0_local = p_cast2169_fu_639_p1;
    end else begin
        v224_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_2_address1_local = p_cast2176_fu_1000_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_2_address1_local = p_cast2174_fu_918_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_2_address1_local = p_cast2172_fu_836_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_2_address1_local = p_cast_fu_719_p1;
    end else begin
        v224_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        v224_2_ce0_local = 1'b1;
    end else begin
        v224_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        v224_2_ce1_local = 1'b1;
    end else begin
        v224_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_3_address0_local = p_cast2184_fu_1470_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_3_address0_local = p_cast2182_fu_1388_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_3_address0_local = p_cast2180_fu_1306_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_3_address0_local = p_cast2179_fu_1259_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_3_address0_local = p_cast2177_fu_1161_p1;
    end else begin
        v224_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_3_address1_local = p_cast2185_fu_1505_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_3_address1_local = p_cast2183_fu_1423_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_3_address1_local = p_cast2181_fu_1341_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_3_address1_local = p_cast2178_fu_1224_p1;
    end else begin
        v224_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        v224_3_ce0_local = 1'b1;
    end else begin
        v224_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12))) begin
        v224_3_ce1_local = 1'b1;
    end else begin
        v224_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_234_fu_493_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_464_v228_address0;
    end else begin
        v228_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_234_fu_493_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_464_v228_address1;
    end else begin
        v228_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_234_fu_493_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_464_v228_ce0;
    end else begin
        v228_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_234_fu_493_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_464_v228_ce1;
    end else begin
        v228_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_234_fu_493_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_464_v229_address0;
    end else begin
        v229_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_234_fu_493_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_464_v229_address1;
    end else begin
        v229_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_234_fu_493_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_464_v229_ce0;
    end else begin
        v229_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_234_fu_493_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_464_v229_ce1;
    end else begin
        v229_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_234_fu_493_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_464_v229_d0;
    end else begin
        v229_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_234_fu_493_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_464_v229_d1;
    end else begin
        v229_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_234_fu_493_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_464_v229_we0;
    end else begin
        v229_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_234_fu_493_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_464_v229_we1;
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
            if (((icmp_ln31_fu_556_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln32_fu_602_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
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
            if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_464_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            if (((icmp_ln32_1_fu_1124_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
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
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_234_fu_493_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state18))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln31_fu_1185_p2 = (v5_fu_100 + 8'd2);
assign add_ln32_1_fu_1179_p2 = (v6_1_reg_452 + 8'd9);
assign add_ln32_fu_657_p2 = (v6_reg_440 + 8'd9);
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
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
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
assign cmp11_fu_590_p2 = ((v5_fu_100 == 8'd0) ? 1'b1 : 1'b0);
assign empty_881_fu_628_p2 = (p_shl1_fu_608_p3 - p_shl2279_fu_624_p1);
assign empty_882_fu_634_p2 = (empty_881_fu_628_p2 + zext_ln31_reg_1652);
assign empty_883_fu_645_p2 = (v6_reg_440 + 8'd1);
assign empty_884_fu_708_p2 = (p_shl2_fu_690_p3 - p_shl2277_fu_704_p1);
assign empty_885_fu_714_p2 = (empty_884_fu_708_p2 + zext_ln31_reg_1652);
assign empty_886_fu_651_p2 = (v6_reg_440 + 8'd2);
assign empty_887_fu_743_p2 = (p_shl3_fu_725_p3 - p_shl2275_fu_739_p1);
assign empty_888_fu_749_p2 = (empty_887_fu_743_p2 + zext_ln31_reg_1652);
assign empty_889_fu_760_p2 = (v6_reg_440 + 8'd3);
assign empty_890_fu_790_p2 = (p_shl4_fu_772_p3 - p_shl2273_fu_786_p1);
assign empty_891_fu_796_p2 = (empty_890_fu_790_p2 + zext_ln31_reg_1652);
assign empty_892_fu_766_p2 = (v6_reg_440 + 8'd4);
assign empty_893_fu_825_p2 = (p_shl5_fu_807_p3 - p_shl2271_fu_821_p1);
assign empty_894_fu_831_p2 = (empty_893_fu_825_p2 + zext_ln31_reg_1652);
assign empty_895_fu_842_p2 = (v6_reg_440 + 8'd5);
assign empty_896_fu_872_p2 = (p_shl6_fu_854_p3 - p_shl2269_fu_868_p1);
assign empty_897_fu_878_p2 = (empty_896_fu_872_p2 + zext_ln31_reg_1652);
assign empty_898_fu_848_p2 = (v6_reg_440 + 8'd6);
assign empty_899_fu_907_p2 = (p_shl7_fu_889_p3 - p_shl2267_fu_903_p1);
assign empty_900_fu_913_p2 = (empty_899_fu_907_p2 + zext_ln31_reg_1652);
assign empty_901_fu_924_p2 = (v6_reg_440 + 8'd7);
assign empty_902_fu_954_p2 = (p_shl8_fu_936_p3 - p_shl2265_fu_950_p1);
assign empty_903_fu_960_p2 = (empty_902_fu_954_p2 + zext_ln31_reg_1652);
assign empty_904_fu_930_p2 = (v6_reg_440 + 8'd8);
assign empty_905_fu_989_p2 = (p_shl9_fu_971_p3 - p_shl2263_fu_985_p1);
assign empty_906_fu_995_p2 = (empty_905_fu_989_p2 + zext_ln31_reg_1652);
assign empty_907_fu_1150_p2 = (p_shl10_fu_1130_p3 - p_shl2261_fu_1146_p1);
assign empty_908_fu_1156_p2 = (empty_907_fu_1150_p2 + zext_ln31_reg_1652);
assign empty_909_fu_1167_p2 = (v6_1_reg_452 + 8'd1);
assign empty_910_fu_1213_p2 = (p_shl11_fu_1195_p3 - p_shl2259_fu_1209_p1);
assign empty_911_fu_1219_p2 = (empty_910_fu_1213_p2 + zext_ln31_reg_1652);
assign empty_912_fu_1173_p2 = (v6_1_reg_452 + 8'd2);
assign empty_913_fu_1248_p2 = (p_shl12_fu_1230_p3 - p_shl2257_fu_1244_p1);
assign empty_914_fu_1254_p2 = (empty_913_fu_1248_p2 + zext_ln31_reg_1652);
assign empty_915_fu_1265_p2 = (v6_1_reg_452 + 8'd3);
assign empty_916_fu_1295_p2 = (p_shl13_fu_1277_p3 - p_shl2255_fu_1291_p1);
assign empty_917_fu_1301_p2 = (empty_916_fu_1295_p2 + zext_ln31_reg_1652);
assign empty_918_fu_1271_p2 = (v6_1_reg_452 + 8'd4);
assign empty_919_fu_1330_p2 = (p_shl14_fu_1312_p3 - p_shl2253_fu_1326_p1);
assign empty_920_fu_1336_p2 = (empty_919_fu_1330_p2 + zext_ln31_reg_1652);
assign empty_921_fu_1347_p2 = (v6_1_reg_452 + 8'd5);
assign empty_922_fu_1377_p2 = (p_shl15_fu_1359_p3 - p_shl2251_fu_1373_p1);
assign empty_923_fu_1383_p2 = (empty_922_fu_1377_p2 + zext_ln31_reg_1652);
assign empty_924_fu_1353_p2 = (v6_1_reg_452 + 8'd6);
assign empty_925_fu_1412_p2 = (p_shl16_fu_1394_p3 - p_shl2249_fu_1408_p1);
assign empty_926_fu_1418_p2 = (empty_925_fu_1412_p2 + zext_ln31_reg_1652);
assign empty_927_fu_1429_p2 = (v6_1_reg_452 + 8'd7);
assign empty_928_fu_1459_p2 = (p_shl17_fu_1441_p3 - p_shl2247_fu_1455_p1);
assign empty_929_fu_1465_p2 = (empty_928_fu_1459_p2 + zext_ln31_reg_1652);
assign empty_930_fu_1435_p2 = (v6_1_reg_452 + 8'd8);
assign empty_931_fu_1494_p2 = (p_shl_fu_1476_p3 - p_shl2245_fu_1490_p1);
assign empty_932_fu_1500_p2 = (empty_931_fu_1494_p2 + zext_ln31_reg_1652);
assign empty_fu_596_p2 = ((trunc_ln31_fu_572_p1 != 2'd0) ? 1'b1 : 1'b0);
assign grp_fu_144_p_ce = grp_fu_2270_ce;
assign grp_fu_144_p_din0 = grp_fu_2270_p0;
assign grp_fu_144_p_din1 = grp_fu_2270_p1;
assign grp_fu_144_p_opcode = 2'd0;
assign grp_fu_148_p_ce = grp_fu_2274_ce;
assign grp_fu_148_p_din0 = grp_fu_2274_p0;
assign grp_fu_148_p_din1 = grp_fu_2274_p1;
assign grp_fu_152_p_ce = grp_fu_2278_ce;
assign grp_fu_152_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_464_grp_fu_2278_p_din0;
assign grp_fu_152_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_464_grp_fu_2278_p_din1;
assign grp_fu_520_p3 = ((empty_reg_1679[0:0] == 1'b1) ? v224_2_q0 : v224_0_q0);
assign grp_fu_527_p3 = ((empty_reg_1679[0:0] == 1'b1) ? v224_2_q1 : v224_0_q1);
assign grp_fu_534_p3 = ((empty_reg_1679[0:0] == 1'b1) ? v224_3_q0 : v224_1_q0);
assign grp_fu_541_p3 = ((empty_reg_1679[0:0] == 1'b1) ? v224_3_q1 : v224_1_q1);
assign grp_kernel_2mm_node0_Pipeline_label_234_fu_493_ap_start = grp_kernel_2mm_node0_Pipeline_label_234_fu_493_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_2_fu_464_ap_start = grp_kernel_2mm_node0_Pipeline_label_2_fu_464_ap_start_reg;
assign icmp_ln31_fu_556_p2 = ((v5_fu_100 < 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_1_fu_1124_p2 = ((v6_1_reg_452 < 8'd180) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_602_p2 = ((v6_reg_440 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln_fu_576_p4 = {{v5_fu_100[7:2]}};
assign mul_ln101_1_fu_1560_p0 = mul_ln101_1_fu_1560_p00;
assign mul_ln101_1_fu_1560_p00 = empty_921_reg_2082;
assign mul_ln101_1_fu_1560_p1 = 16'd220;
assign mul_ln101_fu_1055_p0 = mul_ln101_fu_1055_p00;
assign mul_ln101_fu_1055_p00 = empty_895_reg_1793;
assign mul_ln101_fu_1055_p1 = 16'd220;
assign mul_ln114_1_fu_1569_p0 = mul_ln114_1_fu_1569_p00;
assign mul_ln114_1_fu_1569_p00 = empty_924_reg_2089;
assign mul_ln114_1_fu_1569_p1 = 16'd220;
assign mul_ln114_fu_1064_p0 = mul_ln114_fu_1064_p00;
assign mul_ln114_fu_1064_p00 = empty_898_reg_1800;
assign mul_ln114_fu_1064_p1 = 16'd220;
assign mul_ln127_1_fu_1578_p0 = mul_ln127_1_fu_1578_p00;
assign mul_ln127_1_fu_1578_p00 = empty_927_reg_2126;
assign mul_ln127_1_fu_1578_p1 = 16'd220;
assign mul_ln127_fu_1073_p0 = mul_ln127_fu_1073_p00;
assign mul_ln127_fu_1073_p00 = empty_901_reg_1837;
assign mul_ln127_fu_1073_p1 = 16'd220;
assign mul_ln140_1_fu_1587_p0 = mul_ln140_1_fu_1587_p00;
assign mul_ln140_1_fu_1587_p00 = empty_930_reg_2133;
assign mul_ln140_1_fu_1587_p1 = 16'd220;
assign mul_ln140_fu_1082_p0 = mul_ln140_fu_1082_p00;
assign mul_ln140_fu_1082_p00 = empty_904_reg_1844;
assign mul_ln140_fu_1082_p1 = 16'd220;
assign mul_ln34_1_fu_1515_p0 = mul_ln34_1_fu_1515_p00;
assign mul_ln34_1_fu_1515_p00 = v6_1_reg_452;
assign mul_ln34_1_fu_1515_p1 = 16'd220;
assign mul_ln34_fu_1010_p0 = mul_ln34_fu_1010_p00;
assign mul_ln34_fu_1010_p00 = v6_reg_440;
assign mul_ln34_fu_1010_p1 = 16'd220;
assign mul_ln38_1_fu_684_p0 = mul_ln38_1_fu_684_p00;
assign mul_ln38_1_fu_684_p00 = or_ln_fu_672_p3;
assign mul_ln38_1_fu_684_p1 = 16'd220;
assign mul_ln38_fu_566_p0 = mul_ln38_fu_566_p00;
assign mul_ln38_fu_566_p00 = v5_fu_100;
assign mul_ln38_fu_566_p1 = 16'd220;
assign mul_ln49_1_fu_1524_p0 = mul_ln49_1_fu_1524_p00;
assign mul_ln49_1_fu_1524_p00 = empty_909_reg_1994;
assign mul_ln49_1_fu_1524_p1 = 16'd220;
assign mul_ln49_fu_1019_p0 = mul_ln49_fu_1019_p00;
assign mul_ln49_fu_1019_p00 = empty_883_reg_1700;
assign mul_ln49_fu_1019_p1 = 16'd220;
assign mul_ln62_1_fu_1533_p0 = mul_ln62_1_fu_1533_p00;
assign mul_ln62_1_fu_1533_p00 = empty_912_reg_2001;
assign mul_ln62_1_fu_1533_p1 = 16'd220;
assign mul_ln62_fu_1028_p0 = mul_ln62_fu_1028_p00;
assign mul_ln62_fu_1028_p00 = empty_886_reg_1707;
assign mul_ln62_fu_1028_p1 = 16'd220;
assign mul_ln75_1_fu_1542_p0 = mul_ln75_1_fu_1542_p00;
assign mul_ln75_1_fu_1542_p00 = empty_915_reg_2038;
assign mul_ln75_1_fu_1542_p1 = 16'd220;
assign mul_ln75_fu_1037_p0 = mul_ln75_fu_1037_p00;
assign mul_ln75_fu_1037_p00 = empty_889_reg_1749;
assign mul_ln75_fu_1037_p1 = 16'd220;
assign mul_ln88_1_fu_1551_p0 = mul_ln88_1_fu_1551_p00;
assign mul_ln88_1_fu_1551_p00 = empty_918_reg_2045;
assign mul_ln88_1_fu_1551_p1 = 16'd220;
assign mul_ln88_fu_1046_p0 = mul_ln88_fu_1046_p00;
assign mul_ln88_fu_1046_p00 = empty_892_reg_1756;
assign mul_ln88_fu_1046_p1 = 16'd220;
assign or_ln_fu_672_p3 = {{tmp_fu_663_p4}, {1'd1}};
assign p_cast2169_fu_639_p1 = empty_882_fu_634_p2;
assign p_cast2170_fu_754_p1 = empty_888_fu_749_p2;
assign p_cast2171_fu_801_p1 = empty_891_fu_796_p2;
assign p_cast2172_fu_836_p1 = empty_894_fu_831_p2;
assign p_cast2173_fu_883_p1 = empty_897_fu_878_p2;
assign p_cast2174_fu_918_p1 = empty_900_fu_913_p2;
assign p_cast2175_fu_965_p1 = empty_903_fu_960_p2;
assign p_cast2176_fu_1000_p1 = empty_906_fu_995_p2;
assign p_cast2177_fu_1161_p1 = empty_908_fu_1156_p2;
assign p_cast2178_fu_1224_p1 = empty_911_fu_1219_p2;
assign p_cast2179_fu_1259_p1 = empty_914_fu_1254_p2;
assign p_cast2180_fu_1306_p1 = empty_917_fu_1301_p2;
assign p_cast2181_fu_1341_p1 = empty_920_fu_1336_p2;
assign p_cast2182_fu_1388_p1 = empty_923_fu_1383_p2;
assign p_cast2183_fu_1423_p1 = empty_926_fu_1418_p2;
assign p_cast2184_fu_1470_p1 = empty_929_fu_1465_p2;
assign p_cast2185_fu_1505_p1 = empty_932_fu_1500_p2;
assign p_cast_fu_719_p1 = empty_885_fu_714_p2;
assign p_shl10_fu_1130_p3 = {{v6_1_reg_452}, {6'd0}};
assign p_shl11_fu_1195_p3 = {{empty_909_reg_1994}, {6'd0}};
assign p_shl12_fu_1230_p3 = {{empty_912_reg_2001}, {6'd0}};
assign p_shl13_fu_1277_p3 = {{empty_915_reg_2038}, {6'd0}};
assign p_shl14_fu_1312_p3 = {{empty_918_reg_2045}, {6'd0}};
assign p_shl15_fu_1359_p3 = {{empty_921_reg_2082}, {6'd0}};
assign p_shl16_fu_1394_p3 = {{empty_924_reg_2089}, {6'd0}};
assign p_shl17_fu_1441_p3 = {{empty_927_reg_2126}, {6'd0}};
assign p_shl1_fu_608_p3 = {{v6_reg_440}, {6'd0}};
assign p_shl2245_fu_1490_p1 = tmp_30_fu_1483_p3;
assign p_shl2247_fu_1455_p1 = tmp_29_fu_1448_p3;
assign p_shl2249_fu_1408_p1 = tmp_28_fu_1401_p3;
assign p_shl2251_fu_1373_p1 = tmp_27_fu_1366_p3;
assign p_shl2253_fu_1326_p1 = tmp_26_fu_1319_p3;
assign p_shl2255_fu_1291_p1 = tmp_25_fu_1284_p3;
assign p_shl2257_fu_1244_p1 = tmp_24_fu_1237_p3;
assign p_shl2259_fu_1209_p1 = tmp_23_fu_1202_p3;
assign p_shl2261_fu_1146_p1 = tmp_22_fu_1138_p3;
assign p_shl2263_fu_985_p1 = tmp_21_fu_978_p3;
assign p_shl2265_fu_950_p1 = tmp_20_fu_943_p3;
assign p_shl2267_fu_903_p1 = tmp_19_fu_896_p3;
assign p_shl2269_fu_868_p1 = tmp_18_fu_861_p3;
assign p_shl2271_fu_821_p1 = tmp_17_fu_814_p3;
assign p_shl2273_fu_786_p1 = tmp_16_fu_779_p3;
assign p_shl2275_fu_739_p1 = tmp_15_fu_732_p3;
assign p_shl2277_fu_704_p1 = tmp_14_fu_697_p3;
assign p_shl2279_fu_624_p1 = tmp_13_fu_616_p3;
assign p_shl2_fu_690_p3 = {{empty_883_reg_1700}, {6'd0}};
assign p_shl3_fu_725_p3 = {{empty_886_reg_1707}, {6'd0}};
assign p_shl4_fu_772_p3 = {{empty_889_reg_1749}, {6'd0}};
assign p_shl5_fu_807_p3 = {{empty_892_reg_1756}, {6'd0}};
assign p_shl6_fu_854_p3 = {{empty_895_reg_1793}, {6'd0}};
assign p_shl7_fu_889_p3 = {{empty_898_reg_1800}, {6'd0}};
assign p_shl8_fu_936_p3 = {{empty_901_reg_1837}, {6'd0}};
assign p_shl9_fu_971_p3 = {{empty_904_reg_1844}, {6'd0}};
assign p_shl_fu_1476_p3 = {{empty_930_reg_2133}, {6'd0}};
assign tmp_13_fu_616_p3 = {{v6_reg_440}, {4'd0}};
assign tmp_14_fu_697_p3 = {{empty_883_reg_1700}, {4'd0}};
assign tmp_15_fu_732_p3 = {{empty_886_reg_1707}, {4'd0}};
assign tmp_16_fu_779_p3 = {{empty_889_reg_1749}, {4'd0}};
assign tmp_17_fu_814_p3 = {{empty_892_reg_1756}, {4'd0}};
assign tmp_18_fu_861_p3 = {{empty_895_reg_1793}, {4'd0}};
assign tmp_19_fu_896_p3 = {{empty_898_reg_1800}, {4'd0}};
assign tmp_20_fu_943_p3 = {{empty_901_reg_1837}, {4'd0}};
assign tmp_21_fu_978_p3 = {{empty_904_reg_1844}, {4'd0}};
assign tmp_22_fu_1138_p3 = {{v6_1_reg_452}, {4'd0}};
assign tmp_23_fu_1202_p3 = {{empty_909_reg_1994}, {4'd0}};
assign tmp_24_fu_1237_p3 = {{empty_912_reg_2001}, {4'd0}};
assign tmp_25_fu_1284_p3 = {{empty_915_reg_2038}, {4'd0}};
assign tmp_26_fu_1319_p3 = {{empty_918_reg_2045}, {4'd0}};
assign tmp_27_fu_1366_p3 = {{empty_921_reg_2082}, {4'd0}};
assign tmp_28_fu_1401_p3 = {{empty_924_reg_2089}, {4'd0}};
assign tmp_29_fu_1448_p3 = {{empty_927_reg_2126}, {4'd0}};
assign tmp_30_fu_1483_p3 = {{empty_930_reg_2133}, {4'd0}};
assign tmp_fu_663_p4 = {{v5_fu_100[7:1]}};
assign trunc_ln31_fu_572_p1 = v5_fu_100[1:0];
assign v101_1_fu_1625_p1 = v101_1_v_reg_2220;
assign v101_fu_1120_p1 = v101_v_reg_1931;
assign v11_1_fu_1593_p1 = v11_1_v_reg_2013;
assign v11_fu_1088_p1 = v11_2_v_reg_1724;
assign v224_0_address0 = v224_0_address0_local;
assign v224_0_address1 = v224_0_address1_local;
assign v224_0_ce0 = v224_0_ce0_local;
assign v224_0_ce1 = v224_0_ce1_local;
assign v224_1_address0 = v224_1_address0_local;
assign v224_1_address1 = v224_1_address1_local;
assign v224_1_ce0 = v224_1_ce0_local;
assign v224_1_ce1 = v224_1_ce1_local;
assign v224_2_address0 = v224_2_address0_local;
assign v224_2_address1 = v224_2_address1_local;
assign v224_2_ce0 = v224_2_ce0_local;
assign v224_2_ce1 = v224_2_ce1_local;
assign v224_3_address0 = v224_3_address0_local;
assign v224_3_address1 = v224_3_address1_local;
assign v224_3_ce0 = v224_3_ce0_local;
assign v224_3_ce1 = v224_3_ce1_local;
assign v236_read = v236_read_local;
assign v24_1_fu_1597_p1 = v24_1_v_reg_2052;
assign v24_fu_1092_p1 = v24_2_v_reg_1763;
assign v35_1_fu_1601_p1 = v35_1_v_reg_2057;
assign v35_fu_1096_p1 = v35_2_v_reg_1768;
assign v46_1_fu_1605_p1 = v46_1_v_reg_2096;
assign v46_fu_1100_p1 = v46_2_v_reg_1807;
assign v57_1_fu_1609_p1 = v57_1_v_reg_2101;
assign v57_fu_1104_p1 = v57_2_v_reg_1812;
assign v68_1_fu_1613_p1 = v68_1_v_reg_2140;
assign v68_fu_1108_p1 = v68_2_v_reg_1851;
assign v79_1_fu_1617_p1 = v79_1_v_reg_2145;
assign v79_fu_1112_p1 = v79_2_v_reg_1856;
assign v90_1_fu_1621_p1 = v90_1_v_reg_2210;
assign v90_fu_1116_p1 = v90_2_v_reg_1921;
assign zext_ln31_fu_586_p1 = lshr_ln_fu_576_p4;
always @ (posedge ap_clk) begin
    zext_ln31_reg_1652[13:6] <= 8'b00000000;
end
endmodule 