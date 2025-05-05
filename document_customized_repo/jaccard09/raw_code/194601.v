module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_0_address0,v224_0_ce0,v224_0_q0,v224_0_address1,v224_0_ce1,v224_0_q1,v224_1_address0,v224_1_ce0,v224_1_q0,v224_1_address1,v224_1_ce1,v224_1_q1,v224_2_address0,v224_2_ce0,v224_2_q0,v224_2_address1,v224_2_ce1,v224_2_q1,v224_3_address0,v224_3_ce0,v224_3_q0,v224_3_address1,v224_3_ce1,v224_3_q1,v228_0_address0,v228_0_ce0,v228_0_q0,v228_0_address1,v228_0_ce1,v228_0_q1,v228_1_address0,v228_1_ce0,v228_1_q0,v228_1_address1,v228_1_ce1,v228_1_q1,v228_2_address0,v228_2_ce0,v228_2_q0,v228_2_address1,v228_2_ce1,v228_2_q1,v228_3_address0,v228_3_ce0,v228_3_q0,v228_3_address1,v228_3_ce1,v228_3_q1,v229_address0,v229_ce0,v229_we0,v229_d0,v229_q0,v229_address1,v229_ce1,v229_we1,v229_d1,v229_q1,v4,grp_fu_176_p_din0,grp_fu_176_p_din1,grp_fu_176_p_opcode,grp_fu_176_p_dout0,grp_fu_176_p_ce,grp_fu_180_p_din0,grp_fu_180_p_din1,grp_fu_180_p_dout0,grp_fu_180_p_ce,grp_fu_172_p_din0,grp_fu_172_p_din1,grp_fu_172_p_dout0,grp_fu_172_p_ce); 
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
output  [13:0] v228_0_address0;
output   v228_0_ce0;
input  [31:0] v228_0_q0;
output  [13:0] v228_0_address1;
output   v228_0_ce1;
input  [31:0] v228_0_q1;
output  [13:0] v228_1_address0;
output   v228_1_ce0;
input  [31:0] v228_1_q0;
output  [13:0] v228_1_address1;
output   v228_1_ce1;
input  [31:0] v228_1_q1;
output  [13:0] v228_2_address0;
output   v228_2_ce0;
input  [31:0] v228_2_q0;
output  [13:0] v228_2_address1;
output   v228_2_ce1;
input  [31:0] v228_2_q1;
output  [13:0] v228_3_address0;
output   v228_3_ce0;
input  [31:0] v228_3_q0;
output  [13:0] v228_3_address1;
output   v228_3_ce1;
input  [31:0] v228_3_q1;
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
output  [31:0] grp_fu_176_p_din0;
output  [31:0] grp_fu_176_p_din1;
output  [1:0] grp_fu_176_p_opcode;
input  [31:0] grp_fu_176_p_dout0;
output   grp_fu_176_p_ce;
output  [31:0] grp_fu_180_p_din0;
output  [31:0] grp_fu_180_p_din1;
input  [31:0] grp_fu_180_p_dout0;
output   grp_fu_180_p_ce;
output  [31:0] grp_fu_172_p_din0;
output  [31:0] grp_fu_172_p_din1;
input  [31:0] grp_fu_172_p_dout0;
output   grp_fu_172_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
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
wire   [13:0] zext_ln38_fu_584_p1;
reg   [13:0] zext_ln38_reg_1624;
wire    ap_CS_fsm_state2;
wire   [13:0] mul_ln38_fu_588_p2;
reg   [13:0] mul_ln38_reg_1646;
wire   [0:0] cmp11_fu_594_p2;
reg   [0:0] cmp11_reg_1652;
wire   [0:0] empty_fu_600_p2;
reg   [0:0] empty_reg_1657;
wire    ap_CS_fsm_state3;
wire   [7:0] empty_212_fu_649_p2;
reg   [7:0] empty_212_reg_1680;
wire   [7:0] empty_215_fu_655_p2;
reg   [7:0] empty_215_reg_1687;
wire   [7:0] add_ln32_fu_661_p2;
reg   [7:0] add_ln32_reg_1694;
wire   [31:0] grp_fu_528_p3;
reg   [31:0] v11_v_reg_1699;
wire    ap_CS_fsm_state4;
wire   [7:0] empty_218_fu_737_p2;
reg   [7:0] empty_218_reg_1724;
wire   [7:0] empty_221_fu_743_p2;
reg   [7:0] empty_221_reg_1731;
wire   [31:0] grp_fu_535_p3;
reg   [31:0] v24_2_v_reg_1738;
wire    ap_CS_fsm_state5;
reg   [31:0] v35_2_v_reg_1743;
wire   [7:0] empty_224_fu_819_p2;
reg   [7:0] empty_224_reg_1768;
wire   [7:0] empty_227_fu_825_p2;
reg   [7:0] empty_227_reg_1775;
reg   [31:0] v46_2_v_reg_1782;
wire    ap_CS_fsm_state6;
reg   [31:0] v57_2_v_reg_1787;
wire   [7:0] empty_230_fu_901_p2;
reg   [7:0] empty_230_reg_1812;
wire   [7:0] empty_233_fu_907_p2;
reg   [7:0] empty_233_reg_1819;
reg   [31:0] v68_2_v_reg_1826;
wire    ap_CS_fsm_state7;
reg   [31:0] v79_2_v_reg_1831;
wire   [15:0] mul_ln34_fu_987_p2;
reg   [15:0] mul_ln34_reg_1856;
wire    ap_CS_fsm_state8;
wire   [15:0] mul_ln49_fu_996_p2;
reg   [15:0] mul_ln49_reg_1861;
wire   [15:0] mul_ln62_fu_1005_p2;
reg   [15:0] mul_ln62_reg_1866;
wire   [15:0] mul_ln75_fu_1014_p2;
reg   [15:0] mul_ln75_reg_1871;
wire   [15:0] mul_ln88_fu_1023_p2;
reg   [15:0] mul_ln88_reg_1876;
wire   [15:0] mul_ln101_fu_1032_p2;
reg   [15:0] mul_ln101_reg_1881;
wire   [15:0] mul_ln114_fu_1041_p2;
reg   [15:0] mul_ln114_reg_1886;
wire   [15:0] mul_ln127_fu_1050_p2;
reg   [15:0] mul_ln127_reg_1891;
reg   [31:0] v90_2_v_reg_1896;
wire   [15:0] mul_ln140_fu_1059_p2;
reg   [15:0] mul_ln140_reg_1901;
reg   [31:0] v101_v_reg_1906;
wire   [31:0] v11_fu_1065_p1;
reg   [31:0] v11_reg_1911;
wire    ap_CS_fsm_state9;
wire   [31:0] v24_fu_1069_p1;
reg   [31:0] v24_reg_1916;
wire   [31:0] v35_fu_1073_p1;
reg   [31:0] v35_reg_1921;
wire   [31:0] v46_fu_1077_p1;
reg   [31:0] v46_reg_1926;
wire   [31:0] v57_fu_1081_p1;
reg   [31:0] v57_reg_1931;
wire   [31:0] v68_fu_1085_p1;
reg   [31:0] v68_reg_1936;
wire   [31:0] v79_fu_1089_p1;
reg   [31:0] v79_reg_1941;
wire   [31:0] v90_fu_1093_p1;
reg   [31:0] v90_reg_1946;
wire   [31:0] v101_fu_1097_p1;
reg   [31:0] v101_reg_1951;
wire    ap_CS_fsm_state11;
wire   [7:0] empty_238_fu_1144_p2;
reg   [7:0] empty_238_reg_1969;
wire   [7:0] empty_241_fu_1150_p2;
reg   [7:0] empty_241_reg_1976;
wire   [7:0] add_ln32_1_fu_1156_p2;
reg   [7:0] add_ln32_1_reg_1983;
wire   [31:0] grp_fu_542_p3;
reg   [31:0] v11_1_v_reg_1988;
wire    ap_CS_fsm_state12;
wire   [7:0] empty_244_fu_1242_p2;
reg   [7:0] empty_244_reg_2013;
wire   [7:0] empty_247_fu_1248_p2;
reg   [7:0] empty_247_reg_2020;
wire   [31:0] grp_fu_549_p3;
reg   [31:0] v24_1_v_reg_2027;
wire    ap_CS_fsm_state13;
reg   [31:0] v35_1_v_reg_2032;
wire   [7:0] empty_250_fu_1324_p2;
reg   [7:0] empty_250_reg_2057;
wire   [7:0] empty_253_fu_1330_p2;
reg   [7:0] empty_253_reg_2064;
reg   [31:0] v46_1_v_reg_2071;
wire    ap_CS_fsm_state14;
reg   [31:0] v57_1_v_reg_2076;
wire   [7:0] empty_256_fu_1406_p2;
reg   [7:0] empty_256_reg_2101;
wire   [7:0] empty_259_fu_1412_p2;
reg   [7:0] empty_259_reg_2108;
reg   [31:0] v68_1_v_reg_2115;
wire    ap_CS_fsm_state15;
reg   [31:0] v79_1_v_reg_2120;
wire   [15:0] mul_ln34_1_fu_1492_p2;
reg   [15:0] mul_ln34_1_reg_2145;
wire    ap_CS_fsm_state16;
wire   [15:0] mul_ln49_1_fu_1501_p2;
reg   [15:0] mul_ln49_1_reg_2150;
wire   [15:0] mul_ln62_1_fu_1510_p2;
reg   [15:0] mul_ln62_1_reg_2155;
wire   [15:0] mul_ln75_1_fu_1519_p2;
reg   [15:0] mul_ln75_1_reg_2160;
wire   [15:0] mul_ln88_1_fu_1528_p2;
reg   [15:0] mul_ln88_1_reg_2165;
wire   [15:0] mul_ln101_1_fu_1537_p2;
reg   [15:0] mul_ln101_1_reg_2170;
wire   [15:0] mul_ln114_1_fu_1546_p2;
reg   [15:0] mul_ln114_1_reg_2175;
wire   [15:0] mul_ln127_1_fu_1555_p2;
reg   [15:0] mul_ln127_1_reg_2180;
reg   [31:0] v90_1_v_reg_2185;
wire   [15:0] mul_ln140_1_fu_1564_p2;
reg   [15:0] mul_ln140_1_reg_2190;
reg   [31:0] v101_1_v_reg_2195;
wire   [31:0] v11_1_fu_1570_p1;
reg   [31:0] v11_1_reg_2200;
wire    ap_CS_fsm_state17;
wire   [31:0] v24_1_fu_1574_p1;
reg   [31:0] v24_1_reg_2205;
wire   [31:0] v35_1_fu_1578_p1;
reg   [31:0] v35_1_reg_2210;
wire   [31:0] v46_1_fu_1582_p1;
reg   [31:0] v46_1_reg_2215;
wire   [31:0] v57_1_fu_1586_p1;
reg   [31:0] v57_1_reg_2220;
wire   [31:0] v68_1_fu_1590_p1;
reg   [31:0] v68_1_reg_2225;
wire   [31:0] v79_1_fu_1594_p1;
reg   [31:0] v79_1_reg_2230;
wire   [31:0] v90_1_fu_1598_p1;
reg   [31:0] v90_1_reg_2235;
wire   [31:0] v101_1_fu_1602_p1;
reg   [31:0] v101_1_reg_2240;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_466_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_466_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_466_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_466_ap_ready;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v228_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v228_0_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v228_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v228_0_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v228_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v228_2_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v228_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v228_2_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_466_grp_fu_2245_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_466_grp_fu_2245_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_466_grp_fu_2245_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_466_grp_fu_2245_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_466_grp_fu_2249_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_466_grp_fu_2249_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_466_grp_fu_2249_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_466_grp_fu_2253_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_466_grp_fu_2253_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_466_grp_fu_2253_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_498_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_498_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_498_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_498_ap_ready;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v228_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v228_1_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v228_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v228_1_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v228_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v228_3_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v228_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v228_3_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_498_grp_fu_2245_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_498_grp_fu_2245_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_498_grp_fu_2245_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_498_grp_fu_2245_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_498_grp_fu_2249_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_498_grp_fu_2249_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_498_grp_fu_2249_p_ce;
reg   [7:0] v6_reg_442;
wire   [0:0] icmp_ln31_fu_564_p2;
wire    ap_CS_fsm_state10;
reg   [7:0] v6_1_reg_454;
wire    ap_CS_fsm_state18;
wire   [0:0] icmp_ln32_fu_606_p2;
reg    grp_kernel_2mm_node0_Pipeline_label_2_fu_466_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_24_fu_498_ap_start_reg;
wire   [63:0] p_cast2360_fu_643_p1;
wire   [63:0] p_cast_fu_696_p1;
wire   [63:0] p_cast2361_fu_731_p1;
wire   [63:0] p_cast2362_fu_778_p1;
wire   [63:0] p_cast2363_fu_813_p1;
wire   [63:0] p_cast2364_fu_860_p1;
wire   [63:0] p_cast2365_fu_895_p1;
wire   [63:0] p_cast2366_fu_942_p1;
wire   [63:0] p_cast2367_fu_977_p1;
wire   [63:0] p_cast2368_fu_1138_p1;
wire   [0:0] icmp_ln32_1_fu_1101_p2;
wire   [63:0] p_cast2369_fu_1201_p1;
wire   [63:0] p_cast2370_fu_1236_p1;
wire   [63:0] p_cast2371_fu_1283_p1;
wire   [63:0] p_cast2372_fu_1318_p1;
wire   [63:0] p_cast2373_fu_1365_p1;
wire   [63:0] p_cast2374_fu_1400_p1;
wire   [63:0] p_cast2375_fu_1447_p1;
wire   [63:0] p_cast2376_fu_1482_p1;
reg   [7:0] v5_fu_102;
wire   [7:0] add_ln31_fu_1162_p2;
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
wire   [5:0] lshr_ln_fu_574_p4;
wire   [5:0] mul_ln38_fu_588_p0;
wire   [8:0] mul_ln38_fu_588_p1;
wire   [1:0] trunc_ln31_fu_570_p1;
wire   [11:0] tmp_fu_620_p3;
wire   [13:0] p_shl1_fu_612_p3;
wire   [13:0] p_shl2468_fu_628_p1;
wire   [13:0] empty_210_fu_632_p2;
wire   [13:0] empty_211_fu_638_p2;
wire   [11:0] tmp_11_fu_674_p3;
wire   [13:0] p_shl2_fu_667_p3;
wire   [13:0] p_shl2466_fu_681_p1;
wire   [13:0] empty_213_fu_685_p2;
wire   [13:0] empty_214_fu_691_p2;
wire   [11:0] tmp_12_fu_709_p3;
wire   [13:0] p_shl3_fu_702_p3;
wire   [13:0] p_shl2464_fu_716_p1;
wire   [13:0] empty_216_fu_720_p2;
wire   [13:0] empty_217_fu_726_p2;
wire   [11:0] tmp_13_fu_756_p3;
wire   [13:0] p_shl4_fu_749_p3;
wire   [13:0] p_shl2462_fu_763_p1;
wire   [13:0] empty_219_fu_767_p2;
wire   [13:0] empty_220_fu_773_p2;
wire   [11:0] tmp_14_fu_791_p3;
wire   [13:0] p_shl5_fu_784_p3;
wire   [13:0] p_shl2460_fu_798_p1;
wire   [13:0] empty_222_fu_802_p2;
wire   [13:0] empty_223_fu_808_p2;
wire   [11:0] tmp_15_fu_838_p3;
wire   [13:0] p_shl6_fu_831_p3;
wire   [13:0] p_shl2458_fu_845_p1;
wire   [13:0] empty_225_fu_849_p2;
wire   [13:0] empty_226_fu_855_p2;
wire   [11:0] tmp_16_fu_873_p3;
wire   [13:0] p_shl7_fu_866_p3;
wire   [13:0] p_shl2456_fu_880_p1;
wire   [13:0] empty_228_fu_884_p2;
wire   [13:0] empty_229_fu_890_p2;
wire   [11:0] tmp_17_fu_920_p3;
wire   [13:0] p_shl8_fu_913_p3;
wire   [13:0] p_shl2454_fu_927_p1;
wire   [13:0] empty_231_fu_931_p2;
wire   [13:0] empty_232_fu_937_p2;
wire   [11:0] tmp_18_fu_955_p3;
wire   [13:0] p_shl9_fu_948_p3;
wire   [13:0] p_shl2452_fu_962_p1;
wire   [13:0] empty_234_fu_966_p2;
wire   [13:0] empty_235_fu_972_p2;
wire   [7:0] mul_ln34_fu_987_p0;
wire   [8:0] mul_ln34_fu_987_p1;
wire   [7:0] mul_ln49_fu_996_p0;
wire   [8:0] mul_ln49_fu_996_p1;
wire   [7:0] mul_ln62_fu_1005_p0;
wire   [8:0] mul_ln62_fu_1005_p1;
wire   [7:0] mul_ln75_fu_1014_p0;
wire   [8:0] mul_ln75_fu_1014_p1;
wire   [7:0] mul_ln88_fu_1023_p0;
wire   [8:0] mul_ln88_fu_1023_p1;
wire   [7:0] mul_ln101_fu_1032_p0;
wire   [8:0] mul_ln101_fu_1032_p1;
wire   [7:0] mul_ln114_fu_1041_p0;
wire   [8:0] mul_ln114_fu_1041_p1;
wire   [7:0] mul_ln127_fu_1050_p0;
wire   [8:0] mul_ln127_fu_1050_p1;
wire   [7:0] mul_ln140_fu_1059_p0;
wire   [8:0] mul_ln140_fu_1059_p1;
wire   [11:0] tmp_19_fu_1115_p3;
wire   [13:0] p_shl10_fu_1107_p3;
wire   [13:0] p_shl2450_fu_1123_p1;
wire   [13:0] empty_236_fu_1127_p2;
wire   [13:0] empty_237_fu_1133_p2;
wire   [11:0] tmp_20_fu_1179_p3;
wire   [13:0] p_shl11_fu_1172_p3;
wire   [13:0] p_shl2448_fu_1186_p1;
wire   [13:0] empty_239_fu_1190_p2;
wire   [13:0] empty_240_fu_1196_p2;
wire   [11:0] tmp_21_fu_1214_p3;
wire   [13:0] p_shl12_fu_1207_p3;
wire   [13:0] p_shl2446_fu_1221_p1;
wire   [13:0] empty_242_fu_1225_p2;
wire   [13:0] empty_243_fu_1231_p2;
wire   [11:0] tmp_22_fu_1261_p3;
wire   [13:0] p_shl13_fu_1254_p3;
wire   [13:0] p_shl2444_fu_1268_p1;
wire   [13:0] empty_245_fu_1272_p2;
wire   [13:0] empty_246_fu_1278_p2;
wire   [11:0] tmp_23_fu_1296_p3;
wire   [13:0] p_shl14_fu_1289_p3;
wire   [13:0] p_shl2442_fu_1303_p1;
wire   [13:0] empty_248_fu_1307_p2;
wire   [13:0] empty_249_fu_1313_p2;
wire   [11:0] tmp_24_fu_1343_p3;
wire   [13:0] p_shl15_fu_1336_p3;
wire   [13:0] p_shl2440_fu_1350_p1;
wire   [13:0] empty_251_fu_1354_p2;
wire   [13:0] empty_252_fu_1360_p2;
wire   [11:0] tmp_25_fu_1378_p3;
wire   [13:0] p_shl16_fu_1371_p3;
wire   [13:0] p_shl2438_fu_1385_p1;
wire   [13:0] empty_254_fu_1389_p2;
wire   [13:0] empty_255_fu_1395_p2;
wire   [11:0] tmp_26_fu_1425_p3;
wire   [13:0] p_shl17_fu_1418_p3;
wire   [13:0] p_shl2436_fu_1432_p1;
wire   [13:0] empty_257_fu_1436_p2;
wire   [13:0] empty_258_fu_1442_p2;
wire   [11:0] tmp_27_fu_1460_p3;
wire   [13:0] p_shl_fu_1453_p3;
wire   [13:0] p_shl2434_fu_1467_p1;
wire   [13:0] empty_260_fu_1471_p2;
wire   [13:0] empty_261_fu_1477_p2;
wire   [7:0] mul_ln34_1_fu_1492_p0;
wire   [8:0] mul_ln34_1_fu_1492_p1;
wire   [7:0] mul_ln49_1_fu_1501_p0;
wire   [8:0] mul_ln49_1_fu_1501_p1;
wire   [7:0] mul_ln62_1_fu_1510_p0;
wire   [8:0] mul_ln62_1_fu_1510_p1;
wire   [7:0] mul_ln75_1_fu_1519_p0;
wire   [8:0] mul_ln75_1_fu_1519_p1;
wire   [7:0] mul_ln88_1_fu_1528_p0;
wire   [8:0] mul_ln88_1_fu_1528_p1;
wire   [7:0] mul_ln101_1_fu_1537_p0;
wire   [8:0] mul_ln101_1_fu_1537_p1;
wire   [7:0] mul_ln114_1_fu_1546_p0;
wire   [8:0] mul_ln114_1_fu_1546_p1;
wire   [7:0] mul_ln127_1_fu_1555_p0;
wire   [8:0] mul_ln127_1_fu_1555_p1;
wire   [7:0] mul_ln140_1_fu_1564_p0;
wire   [8:0] mul_ln140_1_fu_1564_p1;
reg   [31:0] grp_fu_2245_p0;
reg   [31:0] grp_fu_2245_p1;
reg    grp_fu_2245_ce;
reg   [31:0] grp_fu_2249_p0;
reg   [31:0] grp_fu_2249_p1;
reg    grp_fu_2249_ce;
reg    grp_fu_2253_ce;
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
wire   [15:0] mul_ln101_1_fu_1537_p00;
wire   [15:0] mul_ln101_fu_1032_p00;
wire   [15:0] mul_ln114_1_fu_1546_p00;
wire   [15:0] mul_ln114_fu_1041_p00;
wire   [15:0] mul_ln127_1_fu_1555_p00;
wire   [15:0] mul_ln127_fu_1050_p00;
wire   [15:0] mul_ln140_1_fu_1564_p00;
wire   [15:0] mul_ln140_fu_1059_p00;
wire   [15:0] mul_ln34_1_fu_1492_p00;
wire   [15:0] mul_ln34_fu_987_p00;
wire   [13:0] mul_ln38_fu_588_p00;
wire   [15:0] mul_ln49_1_fu_1501_p00;
wire   [15:0] mul_ln49_fu_996_p00;
wire   [15:0] mul_ln62_1_fu_1510_p00;
wire   [15:0] mul_ln62_fu_1005_p00;
wire   [15:0] mul_ln75_1_fu_1519_p00;
wire   [15:0] mul_ln75_fu_1014_p00;
wire   [15:0] mul_ln88_1_fu_1528_p00;
wire   [15:0] mul_ln88_fu_1023_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 18'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_2_fu_466_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_24_fu_498_ap_start_reg = 1'b0;
#0 v5_fu_102 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_2 grp_kernel_2mm_node0_Pipeline_label_2_fu_466(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_2_fu_466_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_2_fu_466_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_2_fu_466_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_2_fu_466_ap_ready),.mul_ln38(mul_ln38_reg_1646),.v228_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v228_0_ce1),.v228_0_q1(v228_0_q1),.v228_2_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v228_2_address0),.v228_2_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v228_2_ce0),.v228_2_q0(v228_2_q0),.v228_2_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v228_2_address1),.v228_2_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v228_2_ce1),.v228_2_q1(v228_2_q1),.mul_ln34(mul_ln34_reg_1856),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v229_d1),.v229_q1(v229_q1),.mul_ln49(mul_ln49_reg_1861),.mul_ln62(mul_ln62_reg_1866),.mul_ln75(mul_ln75_reg_1871),.mul_ln88(mul_ln88_reg_1876),.mul_ln101(mul_ln101_reg_1881),.mul_ln114(mul_ln114_reg_1886),.mul_ln127(mul_ln127_reg_1891),.mul_ln140(mul_ln140_reg_1901),.v4(v4),.cmp11(cmp11_reg_1652),.empty(empty_reg_1657),.v11(v11_reg_1911),.v24(v24_reg_1916),.v35(v35_reg_1921),.v46(v46_reg_1926),.v57(v57_reg_1931),.v68(v68_reg_1936),.v79(v79_reg_1941),.v90(v90_reg_1946),.v101(v101_reg_1951),.grp_fu_2245_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_466_grp_fu_2245_p_din0),.grp_fu_2245_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_466_grp_fu_2245_p_din1),.grp_fu_2245_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_466_grp_fu_2245_p_opcode),.grp_fu_2245_p_dout0(grp_fu_176_p_dout0),.grp_fu_2245_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_466_grp_fu_2245_p_ce),.grp_fu_2249_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_466_grp_fu_2249_p_din0),.grp_fu_2249_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_466_grp_fu_2249_p_din1),.grp_fu_2249_p_dout0(grp_fu_180_p_dout0),.grp_fu_2249_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_466_grp_fu_2249_p_ce),.grp_fu_2253_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_466_grp_fu_2253_p_din0),.grp_fu_2253_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_466_grp_fu_2253_p_din1),.grp_fu_2253_p_dout0(grp_fu_172_p_dout0),.grp_fu_2253_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_466_grp_fu_2253_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_24 grp_kernel_2mm_node0_Pipeline_label_24_fu_498(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_24_fu_498_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_24_fu_498_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_24_fu_498_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_24_fu_498_ap_ready),.mul_ln38(mul_ln38_reg_1646),.v228_1_address0(grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v228_1_ce1),.v228_1_q1(v228_1_q1),.v228_3_address0(grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v228_3_address0),.v228_3_ce0(grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v228_3_ce0),.v228_3_q0(v228_3_q0),.v228_3_address1(grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v228_3_address1),.v228_3_ce1(grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v228_3_ce1),.v228_3_q1(v228_3_q1),.mul_ln34_1(mul_ln34_1_reg_2145),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v229_d1),.v229_q1(v229_q1),.mul_ln49_1(mul_ln49_1_reg_2150),.mul_ln62_1(mul_ln62_1_reg_2155),.mul_ln75_1(mul_ln75_1_reg_2160),.mul_ln88_1(mul_ln88_1_reg_2165),.mul_ln101_1(mul_ln101_1_reg_2170),.mul_ln114_1(mul_ln114_1_reg_2175),.mul_ln127_1(mul_ln127_1_reg_2180),.mul_ln140_1(mul_ln140_1_reg_2190),.empty(empty_reg_1657),.v11_1(v11_1_reg_2200),.v24_1(v24_1_reg_2205),.v35_1(v35_1_reg_2210),.v46_1(v46_1_reg_2215),.v57_1(v57_1_reg_2220),.v68_1(v68_1_reg_2225),.v79_1(v79_1_reg_2230),.v90_1(v90_1_reg_2235),.v101_1(v101_1_reg_2240),.grp_fu_2245_p_din0(grp_kernel_2mm_node0_Pipeline_label_24_fu_498_grp_fu_2245_p_din0),.grp_fu_2245_p_din1(grp_kernel_2mm_node0_Pipeline_label_24_fu_498_grp_fu_2245_p_din1),.grp_fu_2245_p_opcode(grp_kernel_2mm_node0_Pipeline_label_24_fu_498_grp_fu_2245_p_opcode),.grp_fu_2245_p_dout0(grp_fu_176_p_dout0),.grp_fu_2245_p_ce(grp_kernel_2mm_node0_Pipeline_label_24_fu_498_grp_fu_2245_p_ce),.grp_fu_2249_p_din0(grp_kernel_2mm_node0_Pipeline_label_24_fu_498_grp_fu_2249_p_din0),.grp_fu_2249_p_din1(grp_kernel_2mm_node0_Pipeline_label_24_fu_498_grp_fu_2249_p_din1),.grp_fu_2249_p_dout0(grp_fu_180_p_dout0),.grp_fu_2249_p_ce(grp_kernel_2mm_node0_Pipeline_label_24_fu_498_grp_fu_2249_p_ce));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U183(.din0(mul_ln38_fu_588_p0),.din1(mul_ln38_fu_588_p1),.dout(mul_ln38_fu_588_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U184(.din0(mul_ln34_fu_987_p0),.din1(mul_ln34_fu_987_p1),.dout(mul_ln34_fu_987_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U185(.din0(mul_ln49_fu_996_p0),.din1(mul_ln49_fu_996_p1),.dout(mul_ln49_fu_996_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U186(.din0(mul_ln62_fu_1005_p0),.din1(mul_ln62_fu_1005_p1),.dout(mul_ln62_fu_1005_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U187(.din0(mul_ln75_fu_1014_p0),.din1(mul_ln75_fu_1014_p1),.dout(mul_ln75_fu_1014_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U188(.din0(mul_ln88_fu_1023_p0),.din1(mul_ln88_fu_1023_p1),.dout(mul_ln88_fu_1023_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U189(.din0(mul_ln101_fu_1032_p0),.din1(mul_ln101_fu_1032_p1),.dout(mul_ln101_fu_1032_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U190(.din0(mul_ln114_fu_1041_p0),.din1(mul_ln114_fu_1041_p1),.dout(mul_ln114_fu_1041_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U191(.din0(mul_ln127_fu_1050_p0),.din1(mul_ln127_fu_1050_p1),.dout(mul_ln127_fu_1050_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U192(.din0(mul_ln140_fu_1059_p0),.din1(mul_ln140_fu_1059_p1),.dout(mul_ln140_fu_1059_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U193(.din0(mul_ln34_1_fu_1492_p0),.din1(mul_ln34_1_fu_1492_p1),.dout(mul_ln34_1_fu_1492_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U194(.din0(mul_ln49_1_fu_1501_p0),.din1(mul_ln49_1_fu_1501_p1),.dout(mul_ln49_1_fu_1501_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U195(.din0(mul_ln62_1_fu_1510_p0),.din1(mul_ln62_1_fu_1510_p1),.dout(mul_ln62_1_fu_1510_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U196(.din0(mul_ln75_1_fu_1519_p0),.din1(mul_ln75_1_fu_1519_p1),.dout(mul_ln75_1_fu_1519_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U197(.din0(mul_ln88_1_fu_1528_p0),.din1(mul_ln88_1_fu_1528_p1),.dout(mul_ln88_1_fu_1528_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U198(.din0(mul_ln101_1_fu_1537_p0),.din1(mul_ln101_1_fu_1537_p1),.dout(mul_ln101_1_fu_1537_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U199(.din0(mul_ln114_1_fu_1546_p0),.din1(mul_ln114_1_fu_1546_p1),.dout(mul_ln114_1_fu_1546_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U200(.din0(mul_ln127_1_fu_1555_p0),.din1(mul_ln127_1_fu_1555_p1),.dout(mul_ln127_1_fu_1555_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U201(.din0(mul_ln140_1_fu_1564_p0),.din1(mul_ln140_1_fu_1564_p1),.dout(mul_ln140_1_fu_1564_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_24_fu_498_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state17)) begin
            grp_kernel_2mm_node0_Pipeline_label_24_fu_498_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_24_fu_498_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_24_fu_498_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_2_fu_466_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_466_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_466_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_466_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_102 <= 8'd0;
    end else if (((icmp_ln32_1_fu_1101_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        v5_fu_102 <= add_ln31_fu_1162_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln32_fu_606_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v6_1_reg_454 <= 8'd0;
    end else if (((grp_kernel_2mm_node0_Pipeline_label_24_fu_498_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state18))) begin
        v6_1_reg_454 <= add_ln32_1_reg_1983;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_466_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        v6_reg_442 <= add_ln32_reg_1694;
    end else if (((icmp_ln31_fu_564_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        v6_reg_442 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        add_ln32_1_reg_1983 <= add_ln32_1_fu_1156_p2;
        empty_238_reg_1969 <= empty_238_fu_1144_p2;
        empty_241_reg_1976 <= empty_241_fu_1150_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_reg_1694 <= add_ln32_fu_661_p2;
        empty_212_reg_1680 <= empty_212_fu_649_p2;
        empty_215_reg_1687 <= empty_215_fu_655_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cmp11_reg_1652 <= cmp11_fu_594_p2;
        empty_reg_1657 <= empty_fu_600_p2;
        mul_ln38_reg_1646 <= mul_ln38_fu_588_p2;
        zext_ln38_reg_1624[5 : 0] <= zext_ln38_fu_584_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        empty_218_reg_1724 <= empty_218_fu_737_p2;
        empty_221_reg_1731 <= empty_221_fu_743_p2;
        v11_v_reg_1699 <= grp_fu_528_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        empty_224_reg_1768 <= empty_224_fu_819_p2;
        empty_227_reg_1775 <= empty_227_fu_825_p2;
        v24_2_v_reg_1738 <= grp_fu_535_p3;
        v35_2_v_reg_1743 <= grp_fu_528_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        empty_230_reg_1812 <= empty_230_fu_901_p2;
        empty_233_reg_1819 <= empty_233_fu_907_p2;
        v46_2_v_reg_1782 <= grp_fu_528_p3;
        v57_2_v_reg_1787 <= grp_fu_535_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        empty_244_reg_2013 <= empty_244_fu_1242_p2;
        empty_247_reg_2020 <= empty_247_fu_1248_p2;
        v11_1_v_reg_1988 <= grp_fu_542_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        empty_250_reg_2057 <= empty_250_fu_1324_p2;
        empty_253_reg_2064 <= empty_253_fu_1330_p2;
        v24_1_v_reg_2027 <= grp_fu_549_p3;
        v35_1_v_reg_2032 <= grp_fu_542_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        empty_256_reg_2101 <= empty_256_fu_1406_p2;
        empty_259_reg_2108 <= empty_259_fu_1412_p2;
        v46_1_v_reg_2071 <= grp_fu_542_p3;
        v57_1_v_reg_2076 <= grp_fu_549_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        mul_ln101_1_reg_2170 <= mul_ln101_1_fu_1537_p2;
        mul_ln114_1_reg_2175 <= mul_ln114_1_fu_1546_p2;
        mul_ln127_1_reg_2180 <= mul_ln127_1_fu_1555_p2;
        mul_ln140_1_reg_2190 <= mul_ln140_1_fu_1564_p2;
        mul_ln34_1_reg_2145 <= mul_ln34_1_fu_1492_p2;
        mul_ln49_1_reg_2150 <= mul_ln49_1_fu_1501_p2;
        mul_ln62_1_reg_2155 <= mul_ln62_1_fu_1510_p2;
        mul_ln75_1_reg_2160 <= mul_ln75_1_fu_1519_p2;
        mul_ln88_1_reg_2165 <= mul_ln88_1_fu_1528_p2;
        v101_1_v_reg_2195 <= grp_fu_549_p3;
        v90_1_v_reg_2185 <= grp_fu_542_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        mul_ln101_reg_1881 <= mul_ln101_fu_1032_p2;
        mul_ln114_reg_1886 <= mul_ln114_fu_1041_p2;
        mul_ln127_reg_1891 <= mul_ln127_fu_1050_p2;
        mul_ln140_reg_1901 <= mul_ln140_fu_1059_p2;
        mul_ln34_reg_1856 <= mul_ln34_fu_987_p2;
        mul_ln49_reg_1861 <= mul_ln49_fu_996_p2;
        mul_ln62_reg_1866 <= mul_ln62_fu_1005_p2;
        mul_ln75_reg_1871 <= mul_ln75_fu_1014_p2;
        mul_ln88_reg_1876 <= mul_ln88_fu_1023_p2;
        v101_v_reg_1906 <= grp_fu_535_p3;
        v90_2_v_reg_1896 <= grp_fu_528_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v101_1_reg_2240 <= v101_1_fu_1602_p1;
        v11_1_reg_2200 <= v11_1_fu_1570_p1;
        v24_1_reg_2205 <= v24_1_fu_1574_p1;
        v35_1_reg_2210 <= v35_1_fu_1578_p1;
        v46_1_reg_2215 <= v46_1_fu_1582_p1;
        v57_1_reg_2220 <= v57_1_fu_1586_p1;
        v68_1_reg_2225 <= v68_1_fu_1590_p1;
        v79_1_reg_2230 <= v79_1_fu_1594_p1;
        v90_1_reg_2235 <= v90_1_fu_1598_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v101_reg_1951 <= v101_fu_1097_p1;
        v11_reg_1911 <= v11_fu_1065_p1;
        v24_reg_1916 <= v24_fu_1069_p1;
        v35_reg_1921 <= v35_fu_1073_p1;
        v46_reg_1926 <= v46_fu_1077_p1;
        v57_reg_1931 <= v57_fu_1081_p1;
        v68_reg_1936 <= v68_fu_1085_p1;
        v79_reg_1941 <= v79_fu_1089_p1;
        v90_reg_1946 <= v90_fu_1093_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        v68_1_v_reg_2115 <= grp_fu_542_p3;
        v79_1_v_reg_2120 <= grp_fu_549_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v68_2_v_reg_1826 <= grp_fu_528_p3;
        v79_2_v_reg_1831 <= grp_fu_535_p3;
    end
end
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_466_ap_done == 1'b0)) begin
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
    if ((grp_kernel_2mm_node0_Pipeline_label_24_fu_498_ap_done == 1'b0)) begin
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
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln31_fu_564_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
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
    if (((icmp_ln31_fu_564_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_2245_ce = grp_kernel_2mm_node0_Pipeline_label_24_fu_498_grp_fu_2245_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2245_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_466_grp_fu_2245_p_ce;
    end else begin
        grp_fu_2245_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_2245_p0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_498_grp_fu_2245_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2245_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_466_grp_fu_2245_p_din0;
    end else begin
        grp_fu_2245_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_2245_p1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_498_grp_fu_2245_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2245_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_466_grp_fu_2245_p_din1;
    end else begin
        grp_fu_2245_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_2249_ce = grp_kernel_2mm_node0_Pipeline_label_24_fu_498_grp_fu_2249_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2249_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_466_grp_fu_2249_p_ce;
    end else begin
        grp_fu_2249_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_2249_p0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_498_grp_fu_2249_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2249_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_466_grp_fu_2249_p_din0;
    end else begin
        grp_fu_2249_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_2249_p1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_498_grp_fu_2249_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2249_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_466_grp_fu_2249_p_din1;
    end else begin
        grp_fu_2249_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2253_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_466_grp_fu_2253_p_ce;
    end else begin
        grp_fu_2253_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_0_address0_local = p_cast2366_fu_942_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_0_address0_local = p_cast2364_fu_860_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_0_address0_local = p_cast2362_fu_778_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_0_address0_local = p_cast2361_fu_731_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_0_address0_local = p_cast2360_fu_643_p1;
    end else begin
        v224_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_0_address1_local = p_cast2367_fu_977_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_0_address1_local = p_cast2365_fu_895_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_0_address1_local = p_cast2363_fu_813_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_0_address1_local = p_cast_fu_696_p1;
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
        v224_1_address0_local = p_cast2375_fu_1447_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_1_address0_local = p_cast2373_fu_1365_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_1_address0_local = p_cast2371_fu_1283_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_1_address0_local = p_cast2370_fu_1236_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_1_address0_local = p_cast2368_fu_1138_p1;
    end else begin
        v224_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_1_address1_local = p_cast2376_fu_1482_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_1_address1_local = p_cast2374_fu_1400_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_1_address1_local = p_cast2372_fu_1318_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_1_address1_local = p_cast2369_fu_1201_p1;
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
        v224_2_address0_local = p_cast2366_fu_942_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_2_address0_local = p_cast2364_fu_860_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_2_address0_local = p_cast2362_fu_778_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_2_address0_local = p_cast2361_fu_731_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_2_address0_local = p_cast2360_fu_643_p1;
    end else begin
        v224_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_2_address1_local = p_cast2367_fu_977_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_2_address1_local = p_cast2365_fu_895_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_2_address1_local = p_cast2363_fu_813_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_2_address1_local = p_cast_fu_696_p1;
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
        v224_3_address0_local = p_cast2375_fu_1447_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_3_address0_local = p_cast2373_fu_1365_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_3_address0_local = p_cast2371_fu_1283_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_3_address0_local = p_cast2370_fu_1236_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_3_address0_local = p_cast2368_fu_1138_p1;
    end else begin
        v224_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_3_address1_local = p_cast2376_fu_1482_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_3_address1_local = p_cast2374_fu_1400_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_3_address1_local = p_cast2372_fu_1318_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_3_address1_local = p_cast2369_fu_1201_p1;
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
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v229_address0;
    end else begin
        v229_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v229_address1;
    end else begin
        v229_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v229_ce0;
    end else begin
        v229_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v229_ce1;
    end else begin
        v229_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v229_d0;
    end else begin
        v229_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v229_d1;
    end else begin
        v229_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v229_we0;
    end else begin
        v229_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v229_we1;
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
            if (((icmp_ln31_fu_564_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln32_fu_606_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_466_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            if (((icmp_ln32_1_fu_1101_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_24_fu_498_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state18))) begin
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
assign add_ln31_fu_1162_p2 = (v5_fu_102 + 8'd2);
assign add_ln32_1_fu_1156_p2 = (v6_1_reg_454 + 8'd9);
assign add_ln32_fu_661_p2 = (v6_reg_442 + 8'd9);
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
assign cmp11_fu_594_p2 = ((v5_fu_102 == 8'd0) ? 1'b1 : 1'b0);
assign empty_210_fu_632_p2 = (p_shl1_fu_612_p3 - p_shl2468_fu_628_p1);
assign empty_211_fu_638_p2 = (empty_210_fu_632_p2 + zext_ln38_reg_1624);
assign empty_212_fu_649_p2 = (v6_reg_442 + 8'd1);
assign empty_213_fu_685_p2 = (p_shl2_fu_667_p3 - p_shl2466_fu_681_p1);
assign empty_214_fu_691_p2 = (empty_213_fu_685_p2 + zext_ln38_reg_1624);
assign empty_215_fu_655_p2 = (v6_reg_442 + 8'd2);
assign empty_216_fu_720_p2 = (p_shl3_fu_702_p3 - p_shl2464_fu_716_p1);
assign empty_217_fu_726_p2 = (empty_216_fu_720_p2 + zext_ln38_reg_1624);
assign empty_218_fu_737_p2 = (v6_reg_442 + 8'd3);
assign empty_219_fu_767_p2 = (p_shl4_fu_749_p3 - p_shl2462_fu_763_p1);
assign empty_220_fu_773_p2 = (empty_219_fu_767_p2 + zext_ln38_reg_1624);
assign empty_221_fu_743_p2 = (v6_reg_442 + 8'd4);
assign empty_222_fu_802_p2 = (p_shl5_fu_784_p3 - p_shl2460_fu_798_p1);
assign empty_223_fu_808_p2 = (empty_222_fu_802_p2 + zext_ln38_reg_1624);
assign empty_224_fu_819_p2 = (v6_reg_442 + 8'd5);
assign empty_225_fu_849_p2 = (p_shl6_fu_831_p3 - p_shl2458_fu_845_p1);
assign empty_226_fu_855_p2 = (empty_225_fu_849_p2 + zext_ln38_reg_1624);
assign empty_227_fu_825_p2 = (v6_reg_442 + 8'd6);
assign empty_228_fu_884_p2 = (p_shl7_fu_866_p3 - p_shl2456_fu_880_p1);
assign empty_229_fu_890_p2 = (empty_228_fu_884_p2 + zext_ln38_reg_1624);
assign empty_230_fu_901_p2 = (v6_reg_442 + 8'd7);
assign empty_231_fu_931_p2 = (p_shl8_fu_913_p3 - p_shl2454_fu_927_p1);
assign empty_232_fu_937_p2 = (empty_231_fu_931_p2 + zext_ln38_reg_1624);
assign empty_233_fu_907_p2 = (v6_reg_442 + 8'd8);
assign empty_234_fu_966_p2 = (p_shl9_fu_948_p3 - p_shl2452_fu_962_p1);
assign empty_235_fu_972_p2 = (empty_234_fu_966_p2 + zext_ln38_reg_1624);
assign empty_236_fu_1127_p2 = (p_shl10_fu_1107_p3 - p_shl2450_fu_1123_p1);
assign empty_237_fu_1133_p2 = (empty_236_fu_1127_p2 + zext_ln38_reg_1624);
assign empty_238_fu_1144_p2 = (v6_1_reg_454 + 8'd1);
assign empty_239_fu_1190_p2 = (p_shl11_fu_1172_p3 - p_shl2448_fu_1186_p1);
assign empty_240_fu_1196_p2 = (empty_239_fu_1190_p2 + zext_ln38_reg_1624);
assign empty_241_fu_1150_p2 = (v6_1_reg_454 + 8'd2);
assign empty_242_fu_1225_p2 = (p_shl12_fu_1207_p3 - p_shl2446_fu_1221_p1);
assign empty_243_fu_1231_p2 = (empty_242_fu_1225_p2 + zext_ln38_reg_1624);
assign empty_244_fu_1242_p2 = (v6_1_reg_454 + 8'd3);
assign empty_245_fu_1272_p2 = (p_shl13_fu_1254_p3 - p_shl2444_fu_1268_p1);
assign empty_246_fu_1278_p2 = (empty_245_fu_1272_p2 + zext_ln38_reg_1624);
assign empty_247_fu_1248_p2 = (v6_1_reg_454 + 8'd4);
assign empty_248_fu_1307_p2 = (p_shl14_fu_1289_p3 - p_shl2442_fu_1303_p1);
assign empty_249_fu_1313_p2 = (empty_248_fu_1307_p2 + zext_ln38_reg_1624);
assign empty_250_fu_1324_p2 = (v6_1_reg_454 + 8'd5);
assign empty_251_fu_1354_p2 = (p_shl15_fu_1336_p3 - p_shl2440_fu_1350_p1);
assign empty_252_fu_1360_p2 = (empty_251_fu_1354_p2 + zext_ln38_reg_1624);
assign empty_253_fu_1330_p2 = (v6_1_reg_454 + 8'd6);
assign empty_254_fu_1389_p2 = (p_shl16_fu_1371_p3 - p_shl2438_fu_1385_p1);
assign empty_255_fu_1395_p2 = (empty_254_fu_1389_p2 + zext_ln38_reg_1624);
assign empty_256_fu_1406_p2 = (v6_1_reg_454 + 8'd7);
assign empty_257_fu_1436_p2 = (p_shl17_fu_1418_p3 - p_shl2436_fu_1432_p1);
assign empty_258_fu_1442_p2 = (empty_257_fu_1436_p2 + zext_ln38_reg_1624);
assign empty_259_fu_1412_p2 = (v6_1_reg_454 + 8'd8);
assign empty_260_fu_1471_p2 = (p_shl_fu_1453_p3 - p_shl2434_fu_1467_p1);
assign empty_261_fu_1477_p2 = (empty_260_fu_1471_p2 + zext_ln38_reg_1624);
assign empty_fu_600_p2 = ((trunc_ln31_fu_570_p1 != 2'd0) ? 1'b1 : 1'b0);
assign grp_fu_172_p_ce = grp_fu_2253_ce;
assign grp_fu_172_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_466_grp_fu_2253_p_din0;
assign grp_fu_172_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_466_grp_fu_2253_p_din1;
assign grp_fu_176_p_ce = grp_fu_2245_ce;
assign grp_fu_176_p_din0 = grp_fu_2245_p0;
assign grp_fu_176_p_din1 = grp_fu_2245_p1;
assign grp_fu_176_p_opcode = 2'd0;
assign grp_fu_180_p_ce = grp_fu_2249_ce;
assign grp_fu_180_p_din0 = grp_fu_2249_p0;
assign grp_fu_180_p_din1 = grp_fu_2249_p1;
assign grp_fu_528_p3 = ((empty_reg_1657[0:0] == 1'b1) ? v224_2_q0 : v224_0_q0);
assign grp_fu_535_p3 = ((empty_reg_1657[0:0] == 1'b1) ? v224_2_q1 : v224_0_q1);
assign grp_fu_542_p3 = ((empty_reg_1657[0:0] == 1'b1) ? v224_3_q0 : v224_1_q0);
assign grp_fu_549_p3 = ((empty_reg_1657[0:0] == 1'b1) ? v224_3_q1 : v224_1_q1);
assign grp_kernel_2mm_node0_Pipeline_label_24_fu_498_ap_start = grp_kernel_2mm_node0_Pipeline_label_24_fu_498_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_2_fu_466_ap_start = grp_kernel_2mm_node0_Pipeline_label_2_fu_466_ap_start_reg;
assign icmp_ln31_fu_564_p2 = ((v5_fu_102 < 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_1_fu_1101_p2 = ((v6_1_reg_454 < 8'd180) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_606_p2 = ((v6_reg_442 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln_fu_574_p4 = {{v5_fu_102[7:2]}};
assign mul_ln101_1_fu_1537_p0 = mul_ln101_1_fu_1537_p00;
assign mul_ln101_1_fu_1537_p00 = empty_250_reg_2057;
assign mul_ln101_1_fu_1537_p1 = 16'd220;
assign mul_ln101_fu_1032_p0 = mul_ln101_fu_1032_p00;
assign mul_ln101_fu_1032_p00 = empty_224_reg_1768;
assign mul_ln101_fu_1032_p1 = 16'd220;
assign mul_ln114_1_fu_1546_p0 = mul_ln114_1_fu_1546_p00;
assign mul_ln114_1_fu_1546_p00 = empty_253_reg_2064;
assign mul_ln114_1_fu_1546_p1 = 16'd220;
assign mul_ln114_fu_1041_p0 = mul_ln114_fu_1041_p00;
assign mul_ln114_fu_1041_p00 = empty_227_reg_1775;
assign mul_ln114_fu_1041_p1 = 16'd220;
assign mul_ln127_1_fu_1555_p0 = mul_ln127_1_fu_1555_p00;
assign mul_ln127_1_fu_1555_p00 = empty_256_reg_2101;
assign mul_ln127_1_fu_1555_p1 = 16'd220;
assign mul_ln127_fu_1050_p0 = mul_ln127_fu_1050_p00;
assign mul_ln127_fu_1050_p00 = empty_230_reg_1812;
assign mul_ln127_fu_1050_p1 = 16'd220;
assign mul_ln140_1_fu_1564_p0 = mul_ln140_1_fu_1564_p00;
assign mul_ln140_1_fu_1564_p00 = empty_259_reg_2108;
assign mul_ln140_1_fu_1564_p1 = 16'd220;
assign mul_ln140_fu_1059_p0 = mul_ln140_fu_1059_p00;
assign mul_ln140_fu_1059_p00 = empty_233_reg_1819;
assign mul_ln140_fu_1059_p1 = 16'd220;
assign mul_ln34_1_fu_1492_p0 = mul_ln34_1_fu_1492_p00;
assign mul_ln34_1_fu_1492_p00 = v6_1_reg_454;
assign mul_ln34_1_fu_1492_p1 = 16'd220;
assign mul_ln34_fu_987_p0 = mul_ln34_fu_987_p00;
assign mul_ln34_fu_987_p00 = v6_reg_442;
assign mul_ln34_fu_987_p1 = 16'd220;
assign mul_ln38_fu_588_p0 = mul_ln38_fu_588_p00;
assign mul_ln38_fu_588_p00 = lshr_ln_fu_574_p4;
assign mul_ln38_fu_588_p1 = 14'd220;
assign mul_ln49_1_fu_1501_p0 = mul_ln49_1_fu_1501_p00;
assign mul_ln49_1_fu_1501_p00 = empty_238_reg_1969;
assign mul_ln49_1_fu_1501_p1 = 16'd220;
assign mul_ln49_fu_996_p0 = mul_ln49_fu_996_p00;
assign mul_ln49_fu_996_p00 = empty_212_reg_1680;
assign mul_ln49_fu_996_p1 = 16'd220;
assign mul_ln62_1_fu_1510_p0 = mul_ln62_1_fu_1510_p00;
assign mul_ln62_1_fu_1510_p00 = empty_241_reg_1976;
assign mul_ln62_1_fu_1510_p1 = 16'd220;
assign mul_ln62_fu_1005_p0 = mul_ln62_fu_1005_p00;
assign mul_ln62_fu_1005_p00 = empty_215_reg_1687;
assign mul_ln62_fu_1005_p1 = 16'd220;
assign mul_ln75_1_fu_1519_p0 = mul_ln75_1_fu_1519_p00;
assign mul_ln75_1_fu_1519_p00 = empty_244_reg_2013;
assign mul_ln75_1_fu_1519_p1 = 16'd220;
assign mul_ln75_fu_1014_p0 = mul_ln75_fu_1014_p00;
assign mul_ln75_fu_1014_p00 = empty_218_reg_1724;
assign mul_ln75_fu_1014_p1 = 16'd220;
assign mul_ln88_1_fu_1528_p0 = mul_ln88_1_fu_1528_p00;
assign mul_ln88_1_fu_1528_p00 = empty_247_reg_2020;
assign mul_ln88_1_fu_1528_p1 = 16'd220;
assign mul_ln88_fu_1023_p0 = mul_ln88_fu_1023_p00;
assign mul_ln88_fu_1023_p00 = empty_221_reg_1731;
assign mul_ln88_fu_1023_p1 = 16'd220;
assign p_cast2360_fu_643_p1 = empty_211_fu_638_p2;
assign p_cast2361_fu_731_p1 = empty_217_fu_726_p2;
assign p_cast2362_fu_778_p1 = empty_220_fu_773_p2;
assign p_cast2363_fu_813_p1 = empty_223_fu_808_p2;
assign p_cast2364_fu_860_p1 = empty_226_fu_855_p2;
assign p_cast2365_fu_895_p1 = empty_229_fu_890_p2;
assign p_cast2366_fu_942_p1 = empty_232_fu_937_p2;
assign p_cast2367_fu_977_p1 = empty_235_fu_972_p2;
assign p_cast2368_fu_1138_p1 = empty_237_fu_1133_p2;
assign p_cast2369_fu_1201_p1 = empty_240_fu_1196_p2;
assign p_cast2370_fu_1236_p1 = empty_243_fu_1231_p2;
assign p_cast2371_fu_1283_p1 = empty_246_fu_1278_p2;
assign p_cast2372_fu_1318_p1 = empty_249_fu_1313_p2;
assign p_cast2373_fu_1365_p1 = empty_252_fu_1360_p2;
assign p_cast2374_fu_1400_p1 = empty_255_fu_1395_p2;
assign p_cast2375_fu_1447_p1 = empty_258_fu_1442_p2;
assign p_cast2376_fu_1482_p1 = empty_261_fu_1477_p2;
assign p_cast_fu_696_p1 = empty_214_fu_691_p2;
assign p_shl10_fu_1107_p3 = {{v6_1_reg_454}, {6'd0}};
assign p_shl11_fu_1172_p3 = {{empty_238_reg_1969}, {6'd0}};
assign p_shl12_fu_1207_p3 = {{empty_241_reg_1976}, {6'd0}};
assign p_shl13_fu_1254_p3 = {{empty_244_reg_2013}, {6'd0}};
assign p_shl14_fu_1289_p3 = {{empty_247_reg_2020}, {6'd0}};
assign p_shl15_fu_1336_p3 = {{empty_250_reg_2057}, {6'd0}};
assign p_shl16_fu_1371_p3 = {{empty_253_reg_2064}, {6'd0}};
assign p_shl17_fu_1418_p3 = {{empty_256_reg_2101}, {6'd0}};
assign p_shl1_fu_612_p3 = {{v6_reg_442}, {6'd0}};
assign p_shl2434_fu_1467_p1 = tmp_27_fu_1460_p3;
assign p_shl2436_fu_1432_p1 = tmp_26_fu_1425_p3;
assign p_shl2438_fu_1385_p1 = tmp_25_fu_1378_p3;
assign p_shl2440_fu_1350_p1 = tmp_24_fu_1343_p3;
assign p_shl2442_fu_1303_p1 = tmp_23_fu_1296_p3;
assign p_shl2444_fu_1268_p1 = tmp_22_fu_1261_p3;
assign p_shl2446_fu_1221_p1 = tmp_21_fu_1214_p3;
assign p_shl2448_fu_1186_p1 = tmp_20_fu_1179_p3;
assign p_shl2450_fu_1123_p1 = tmp_19_fu_1115_p3;
assign p_shl2452_fu_962_p1 = tmp_18_fu_955_p3;
assign p_shl2454_fu_927_p1 = tmp_17_fu_920_p3;
assign p_shl2456_fu_880_p1 = tmp_16_fu_873_p3;
assign p_shl2458_fu_845_p1 = tmp_15_fu_838_p3;
assign p_shl2460_fu_798_p1 = tmp_14_fu_791_p3;
assign p_shl2462_fu_763_p1 = tmp_13_fu_756_p3;
assign p_shl2464_fu_716_p1 = tmp_12_fu_709_p3;
assign p_shl2466_fu_681_p1 = tmp_11_fu_674_p3;
assign p_shl2468_fu_628_p1 = tmp_fu_620_p3;
assign p_shl2_fu_667_p3 = {{empty_212_reg_1680}, {6'd0}};
assign p_shl3_fu_702_p3 = {{empty_215_reg_1687}, {6'd0}};
assign p_shl4_fu_749_p3 = {{empty_218_reg_1724}, {6'd0}};
assign p_shl5_fu_784_p3 = {{empty_221_reg_1731}, {6'd0}};
assign p_shl6_fu_831_p3 = {{empty_224_reg_1768}, {6'd0}};
assign p_shl7_fu_866_p3 = {{empty_227_reg_1775}, {6'd0}};
assign p_shl8_fu_913_p3 = {{empty_230_reg_1812}, {6'd0}};
assign p_shl9_fu_948_p3 = {{empty_233_reg_1819}, {6'd0}};
assign p_shl_fu_1453_p3 = {{empty_259_reg_2108}, {6'd0}};
assign tmp_11_fu_674_p3 = {{empty_212_reg_1680}, {4'd0}};
assign tmp_12_fu_709_p3 = {{empty_215_reg_1687}, {4'd0}};
assign tmp_13_fu_756_p3 = {{empty_218_reg_1724}, {4'd0}};
assign tmp_14_fu_791_p3 = {{empty_221_reg_1731}, {4'd0}};
assign tmp_15_fu_838_p3 = {{empty_224_reg_1768}, {4'd0}};
assign tmp_16_fu_873_p3 = {{empty_227_reg_1775}, {4'd0}};
assign tmp_17_fu_920_p3 = {{empty_230_reg_1812}, {4'd0}};
assign tmp_18_fu_955_p3 = {{empty_233_reg_1819}, {4'd0}};
assign tmp_19_fu_1115_p3 = {{v6_1_reg_454}, {4'd0}};
assign tmp_20_fu_1179_p3 = {{empty_238_reg_1969}, {4'd0}};
assign tmp_21_fu_1214_p3 = {{empty_241_reg_1976}, {4'd0}};
assign tmp_22_fu_1261_p3 = {{empty_244_reg_2013}, {4'd0}};
assign tmp_23_fu_1296_p3 = {{empty_247_reg_2020}, {4'd0}};
assign tmp_24_fu_1343_p3 = {{empty_250_reg_2057}, {4'd0}};
assign tmp_25_fu_1378_p3 = {{empty_253_reg_2064}, {4'd0}};
assign tmp_26_fu_1425_p3 = {{empty_256_reg_2101}, {4'd0}};
assign tmp_27_fu_1460_p3 = {{empty_259_reg_2108}, {4'd0}};
assign tmp_fu_620_p3 = {{v6_reg_442}, {4'd0}};
assign trunc_ln31_fu_570_p1 = v5_fu_102[1:0];
assign v101_1_fu_1602_p1 = v101_1_v_reg_2195;
assign v101_fu_1097_p1 = v101_v_reg_1906;
assign v11_1_fu_1570_p1 = v11_1_v_reg_1988;
assign v11_fu_1065_p1 = v11_v_reg_1699;
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
assign v228_0_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v228_0_address0;
assign v228_0_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v228_0_address1;
assign v228_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v228_0_ce0;
assign v228_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v228_0_ce1;
assign v228_1_address0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v228_1_address0;
assign v228_1_address1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v228_1_address1;
assign v228_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v228_1_ce0;
assign v228_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v228_1_ce1;
assign v228_2_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v228_2_address0;
assign v228_2_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v228_2_address1;
assign v228_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v228_2_ce0;
assign v228_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_466_v228_2_ce1;
assign v228_3_address0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v228_3_address0;
assign v228_3_address1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v228_3_address1;
assign v228_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v228_3_ce0;
assign v228_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_498_v228_3_ce1;
assign v236_read = v236_read_local;
assign v24_1_fu_1574_p1 = v24_1_v_reg_2027;
assign v24_fu_1069_p1 = v24_2_v_reg_1738;
assign v35_1_fu_1578_p1 = v35_1_v_reg_2032;
assign v35_fu_1073_p1 = v35_2_v_reg_1743;
assign v46_1_fu_1582_p1 = v46_1_v_reg_2071;
assign v46_fu_1077_p1 = v46_2_v_reg_1782;
assign v57_1_fu_1586_p1 = v57_1_v_reg_2076;
assign v57_fu_1081_p1 = v57_2_v_reg_1787;
assign v68_1_fu_1590_p1 = v68_1_v_reg_2115;
assign v68_fu_1085_p1 = v68_2_v_reg_1826;
assign v79_1_fu_1594_p1 = v79_1_v_reg_2120;
assign v79_fu_1089_p1 = v79_2_v_reg_1831;
assign v90_1_fu_1598_p1 = v90_1_v_reg_2185;
assign v90_fu_1093_p1 = v90_2_v_reg_1896;
assign zext_ln38_fu_584_p1 = lshr_ln_fu_574_p4;
always @ (posedge ap_clk) begin
    zext_ln38_reg_1624[13:6] <= 8'b00000000;
end
endmodule 