module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_0_address0,v224_0_ce0,v224_0_q0,v224_0_address1,v224_0_ce1,v224_0_q1,v224_1_address0,v224_1_ce0,v224_1_q0,v224_1_address1,v224_1_ce1,v224_1_q1,v224_2_address0,v224_2_ce0,v224_2_q0,v224_2_address1,v224_2_ce1,v224_2_q1,v224_3_address0,v224_3_ce0,v224_3_q0,v224_3_address1,v224_3_ce1,v224_3_q1,v224_4_address0,v224_4_ce0,v224_4_q0,v224_4_address1,v224_4_ce1,v224_4_q1,v224_5_address0,v224_5_ce0,v224_5_q0,v224_5_address1,v224_5_ce1,v224_5_q1,v224_6_address0,v224_6_ce0,v224_6_q0,v224_6_address1,v224_6_ce1,v224_6_q1,v224_7_address0,v224_7_ce0,v224_7_q0,v224_7_address1,v224_7_ce1,v224_7_q1,v228_0_address0,v228_0_ce0,v228_0_q0,v228_0_address1,v228_0_ce1,v228_0_q1,v228_1_address0,v228_1_ce0,v228_1_q0,v228_1_address1,v228_1_ce1,v228_1_q1,v229_address0,v229_ce0,v229_we0,v229_d0,v229_q0,v229_address1,v229_ce1,v229_we1,v229_d1,v229_q1,v4,grp_fu_180_p_din0,grp_fu_180_p_din1,grp_fu_180_p_opcode,grp_fu_180_p_dout0,grp_fu_180_p_ce,grp_fu_184_p_din0,grp_fu_184_p_din1,grp_fu_184_p_dout0,grp_fu_184_p_ce,grp_fu_188_p_din0,grp_fu_188_p_din1,grp_fu_188_p_dout0,grp_fu_188_p_ce); 
parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_state6 = 10'd32;
parameter    ap_ST_fsm_state7 = 10'd64;
parameter    ap_ST_fsm_state8 = 10'd128;
parameter    ap_ST_fsm_state9 = 10'd256;
parameter    ap_ST_fsm_state10 = 10'd512;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [0:0] v236_dout;
input   v236_empty_n;
output   v236_read;
output  [12:0] v224_0_address0;
output   v224_0_ce0;
input  [31:0] v224_0_q0;
output  [12:0] v224_0_address1;
output   v224_0_ce1;
input  [31:0] v224_0_q1;
output  [12:0] v224_1_address0;
output   v224_1_ce0;
input  [31:0] v224_1_q0;
output  [12:0] v224_1_address1;
output   v224_1_ce1;
input  [31:0] v224_1_q1;
output  [12:0] v224_2_address0;
output   v224_2_ce0;
input  [31:0] v224_2_q0;
output  [12:0] v224_2_address1;
output   v224_2_ce1;
input  [31:0] v224_2_q1;
output  [12:0] v224_3_address0;
output   v224_3_ce0;
input  [31:0] v224_3_q0;
output  [12:0] v224_3_address1;
output   v224_3_ce1;
input  [31:0] v224_3_q1;
output  [12:0] v224_4_address0;
output   v224_4_ce0;
input  [31:0] v224_4_q0;
output  [12:0] v224_4_address1;
output   v224_4_ce1;
input  [31:0] v224_4_q1;
output  [12:0] v224_5_address0;
output   v224_5_ce0;
input  [31:0] v224_5_q0;
output  [12:0] v224_5_address1;
output   v224_5_ce1;
input  [31:0] v224_5_q1;
output  [12:0] v224_6_address0;
output   v224_6_ce0;
input  [31:0] v224_6_q0;
output  [12:0] v224_6_address1;
output   v224_6_ce1;
input  [31:0] v224_6_q1;
output  [12:0] v224_7_address0;
output   v224_7_ce0;
input  [31:0] v224_7_q0;
output  [12:0] v224_7_address1;
output   v224_7_ce1;
input  [31:0] v224_7_q1;
output  [14:0] v228_0_address0;
output   v228_0_ce0;
input  [31:0] v228_0_q0;
output  [14:0] v228_0_address1;
output   v228_0_ce1;
input  [31:0] v228_0_q1;
output  [14:0] v228_1_address0;
output   v228_1_ce0;
input  [31:0] v228_1_q0;
output  [14:0] v228_1_address1;
output   v228_1_ce1;
input  [31:0] v228_1_q1;
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
output  [31:0] grp_fu_180_p_din0;
output  [31:0] grp_fu_180_p_din1;
output  [1:0] grp_fu_180_p_opcode;
input  [31:0] grp_fu_180_p_dout0;
output   grp_fu_180_p_ce;
output  [31:0] grp_fu_184_p_din0;
output  [31:0] grp_fu_184_p_din1;
input  [31:0] grp_fu_184_p_dout0;
output   grp_fu_184_p_ce;
output  [31:0] grp_fu_188_p_din0;
output  [31:0] grp_fu_188_p_din1;
input  [31:0] grp_fu_188_p_dout0;
output   grp_fu_188_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire   [7:0] add_ln31_fu_844_p2;
reg   [7:0] add_ln31_reg_2069;
wire    ap_CS_fsm_state2;
wire   [2:0] trunc_ln31_fu_850_p1;
reg   [2:0] trunc_ln31_reg_2074;
wire   [0:0] trunc_ln31_1_fu_854_p1;
reg   [0:0] trunc_ln31_1_reg_2087;
wire   [14:0] mul_ln38_fu_872_p2;
reg   [14:0] mul_ln38_reg_2092;
wire   [12:0] zext_ln31_fu_888_p1;
reg   [12:0] zext_ln31_reg_2097;
wire   [0:0] cmp11_fu_892_p2;
reg   [0:0] cmp11_reg_2110;
wire    ap_CS_fsm_state3;
wire   [7:0] empty_148_fu_947_p2;
reg   [7:0] empty_148_reg_2158;
wire   [7:0] empty_159_fu_953_p2;
reg   [7:0] empty_159_reg_2165;
wire   [7:0] add_ln32_fu_959_p2;
reg   [7:0] add_ln32_reg_2172;
wire   [31:0] v11_fu_1001_p19;
reg   [31:0] v11_reg_2177;
wire    ap_CS_fsm_state4;
wire   [7:0] empty_170_fu_1122_p2;
reg   [7:0] empty_170_reg_2262;
wire   [7:0] empty_181_fu_1128_p2;
reg   [7:0] empty_181_reg_2269;
wire   [31:0] v24_fu_1166_p19;
reg   [31:0] v24_reg_2276;
wire    ap_CS_fsm_state5;
wire   [31:0] v35_fu_1237_p19;
reg   [31:0] v35_reg_2281;
wire   [7:0] empty_192_fu_1358_p2;
reg   [7:0] empty_192_reg_2366;
wire   [7:0] empty_203_fu_1364_p2;
reg   [7:0] empty_203_reg_2373;
wire   [31:0] v46_fu_1402_p19;
reg   [31:0] v46_reg_2380;
wire    ap_CS_fsm_state6;
wire   [31:0] v57_1_fu_1473_p19;
reg   [31:0] v57_1_reg_2385;
wire   [7:0] empty_214_fu_1594_p2;
reg   [7:0] empty_214_reg_2470;
wire   [7:0] empty_225_fu_1600_p2;
reg   [7:0] empty_225_reg_2477;
wire   [31:0] v68_1_fu_1638_p19;
reg   [31:0] v68_1_reg_2484;
wire    ap_CS_fsm_state7;
wire   [31:0] v79_1_fu_1709_p19;
reg   [31:0] v79_1_reg_2489;
wire   [15:0] mul_ln34_fu_1834_p2;
reg   [15:0] mul_ln34_reg_2574;
wire    ap_CS_fsm_state8;
wire   [15:0] mul_ln49_fu_1843_p2;
reg   [15:0] mul_ln49_reg_2579;
wire   [15:0] mul_ln62_fu_1852_p2;
reg   [15:0] mul_ln62_reg_2584;
wire   [15:0] mul_ln75_fu_1861_p2;
reg   [15:0] mul_ln75_reg_2589;
wire   [15:0] mul_ln88_fu_1870_p2;
reg   [15:0] mul_ln88_reg_2594;
wire   [15:0] mul_ln101_fu_1879_p2;
reg   [15:0] mul_ln101_reg_2599;
wire   [15:0] mul_ln114_fu_1888_p2;
reg   [15:0] mul_ln114_reg_2604;
wire   [15:0] mul_ln127_fu_1897_p2;
reg   [15:0] mul_ln127_reg_2609;
wire   [31:0] v90_1_fu_1935_p19;
reg   [31:0] v90_1_reg_2614;
wire   [15:0] mul_ln140_fu_1977_p2;
reg   [15:0] mul_ln140_reg_2619;
wire   [31:0] v101_1_fu_2015_p19;
reg   [31:0] v101_1_reg_2624;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_d1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_0_ce0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_0_ce1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_1_ce0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_1_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_2629_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_2629_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_2629_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_2629_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_2633_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_2633_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_2633_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_2637_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_2637_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_2637_p_ce;
reg   [7:0] v6_reg_786;
wire   [0:0] icmp_ln31_fu_838_p2;
wire    ap_CS_fsm_state10;
reg    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_ap_start_reg;
wire    ap_CS_fsm_state9;
wire   [63:0] p_cast1509_fu_935_p1;
wire   [0:0] icmp_ln32_fu_898_p2;
wire   [63:0] p_cast_fu_1069_p1;
wire   [63:0] p_cast1510_fu_1110_p1;
wire   [63:0] p_cast1511_fu_1305_p1;
wire   [63:0] p_cast1512_fu_1346_p1;
wire   [63:0] p_cast1513_fu_1541_p1;
wire   [63:0] p_cast1514_fu_1582_p1;
wire   [63:0] p_cast1515_fu_1777_p1;
wire   [63:0] p_cast1516_fu_1818_p1;
reg   [7:0] v5_fu_122;
reg    ap_block_state1;
reg    v236_read_local;
reg    v224_0_ce0_local;
reg   [12:0] v224_0_address0_local;
reg    v224_0_ce1_local;
reg   [12:0] v224_0_address1_local;
reg    v224_1_ce0_local;
reg   [12:0] v224_1_address0_local;
reg    v224_1_ce1_local;
reg   [12:0] v224_1_address1_local;
reg    v224_2_ce0_local;
reg   [12:0] v224_2_address0_local;
reg    v224_2_ce1_local;
reg   [12:0] v224_2_address1_local;
reg    v224_3_ce0_local;
reg   [12:0] v224_3_address0_local;
reg    v224_3_ce1_local;
reg   [12:0] v224_3_address1_local;
reg    v224_4_ce0_local;
reg   [12:0] v224_4_address0_local;
reg    v224_4_ce1_local;
reg   [12:0] v224_4_address1_local;
reg    v224_5_ce0_local;
reg   [12:0] v224_5_address0_local;
reg    v224_5_ce1_local;
reg   [12:0] v224_5_address1_local;
reg    v224_6_ce0_local;
reg   [12:0] v224_6_address0_local;
reg    v224_6_ce1_local;
reg   [12:0] v224_6_address1_local;
reg    v224_7_ce0_local;
reg   [12:0] v224_7_address0_local;
reg    v224_7_ce1_local;
reg   [12:0] v224_7_address1_local;
wire   [6:0] lshr_ln_fu_858_p4;
wire   [6:0] mul_ln38_fu_872_p0;
wire   [8:0] mul_ln38_fu_872_p1;
wire   [4:0] lshr_ln31_1_fu_878_p4;
wire   [10:0] tmp_fu_912_p3;
wire   [12:0] p_shl1_fu_904_p3;
wire   [12:0] p_shl1565_fu_920_p1;
wire   [12:0] empty_fu_924_p2;
wire   [12:0] empty_139_fu_930_p2;
wire   [31:0] v11_fu_1001_p2;
wire   [31:0] v11_fu_1001_p4;
wire   [31:0] v11_fu_1001_p6;
wire   [31:0] v11_fu_1001_p8;
wire   [31:0] v11_fu_1001_p10;
wire   [31:0] v11_fu_1001_p12;
wire   [31:0] v11_fu_1001_p14;
wire   [31:0] v11_fu_1001_p16;
wire   [31:0] v11_fu_1001_p17;
wire   [10:0] tmp_13_fu_1047_p3;
wire   [12:0] p_shl2_fu_1040_p3;
wire   [12:0] p_shl1563_fu_1054_p1;
wire   [12:0] empty_149_fu_1058_p2;
wire   [12:0] empty_150_fu_1064_p2;
wire   [10:0] tmp_14_fu_1088_p3;
wire   [12:0] p_shl3_fu_1081_p3;
wire   [12:0] p_shl1561_fu_1095_p1;
wire   [12:0] empty_160_fu_1099_p2;
wire   [12:0] empty_161_fu_1105_p2;
wire   [31:0] v24_fu_1166_p2;
wire   [31:0] v24_fu_1166_p4;
wire   [31:0] v24_fu_1166_p6;
wire   [31:0] v24_fu_1166_p8;
wire   [31:0] v24_fu_1166_p10;
wire   [31:0] v24_fu_1166_p12;
wire   [31:0] v24_fu_1166_p14;
wire   [31:0] v24_fu_1166_p16;
wire   [31:0] v24_fu_1166_p17;
wire   [31:0] v35_fu_1237_p2;
wire   [31:0] v35_fu_1237_p4;
wire   [31:0] v35_fu_1237_p6;
wire   [31:0] v35_fu_1237_p8;
wire   [31:0] v35_fu_1237_p10;
wire   [31:0] v35_fu_1237_p12;
wire   [31:0] v35_fu_1237_p14;
wire   [31:0] v35_fu_1237_p16;
wire   [31:0] v35_fu_1237_p17;
wire   [10:0] tmp_15_fu_1283_p3;
wire   [12:0] p_shl4_fu_1276_p3;
wire   [12:0] p_shl1559_fu_1290_p1;
wire   [12:0] empty_171_fu_1294_p2;
wire   [12:0] empty_172_fu_1300_p2;
wire   [10:0] tmp_16_fu_1324_p3;
wire   [12:0] p_shl5_fu_1317_p3;
wire   [12:0] p_shl1557_fu_1331_p1;
wire   [12:0] empty_182_fu_1335_p2;
wire   [12:0] empty_183_fu_1341_p2;
wire   [31:0] v46_fu_1402_p2;
wire   [31:0] v46_fu_1402_p4;
wire   [31:0] v46_fu_1402_p6;
wire   [31:0] v46_fu_1402_p8;
wire   [31:0] v46_fu_1402_p10;
wire   [31:0] v46_fu_1402_p12;
wire   [31:0] v46_fu_1402_p14;
wire   [31:0] v46_fu_1402_p16;
wire   [31:0] v46_fu_1402_p17;
wire   [31:0] v57_1_fu_1473_p2;
wire   [31:0] v57_1_fu_1473_p4;
wire   [31:0] v57_1_fu_1473_p6;
wire   [31:0] v57_1_fu_1473_p8;
wire   [31:0] v57_1_fu_1473_p10;
wire   [31:0] v57_1_fu_1473_p12;
wire   [31:0] v57_1_fu_1473_p14;
wire   [31:0] v57_1_fu_1473_p16;
wire   [31:0] v57_1_fu_1473_p17;
wire   [10:0] tmp_17_fu_1519_p3;
wire   [12:0] p_shl6_fu_1512_p3;
wire   [12:0] p_shl1555_fu_1526_p1;
wire   [12:0] empty_193_fu_1530_p2;
wire   [12:0] empty_194_fu_1536_p2;
wire   [10:0] tmp_18_fu_1560_p3;
wire   [12:0] p_shl7_fu_1553_p3;
wire   [12:0] p_shl1553_fu_1567_p1;
wire   [12:0] empty_204_fu_1571_p2;
wire   [12:0] empty_205_fu_1577_p2;
wire   [31:0] v68_1_fu_1638_p2;
wire   [31:0] v68_1_fu_1638_p4;
wire   [31:0] v68_1_fu_1638_p6;
wire   [31:0] v68_1_fu_1638_p8;
wire   [31:0] v68_1_fu_1638_p10;
wire   [31:0] v68_1_fu_1638_p12;
wire   [31:0] v68_1_fu_1638_p14;
wire   [31:0] v68_1_fu_1638_p16;
wire   [31:0] v68_1_fu_1638_p17;
wire   [31:0] v79_1_fu_1709_p2;
wire   [31:0] v79_1_fu_1709_p4;
wire   [31:0] v79_1_fu_1709_p6;
wire   [31:0] v79_1_fu_1709_p8;
wire   [31:0] v79_1_fu_1709_p10;
wire   [31:0] v79_1_fu_1709_p12;
wire   [31:0] v79_1_fu_1709_p14;
wire   [31:0] v79_1_fu_1709_p16;
wire   [31:0] v79_1_fu_1709_p17;
wire   [10:0] tmp_19_fu_1755_p3;
wire   [12:0] p_shl8_fu_1748_p3;
wire   [12:0] p_shl1551_fu_1762_p1;
wire   [12:0] empty_215_fu_1766_p2;
wire   [12:0] empty_216_fu_1772_p2;
wire   [10:0] tmp_20_fu_1796_p3;
wire   [12:0] p_shl_fu_1789_p3;
wire   [12:0] p_shl1549_fu_1803_p1;
wire   [12:0] empty_226_fu_1807_p2;
wire   [12:0] empty_227_fu_1813_p2;
wire   [7:0] mul_ln34_fu_1834_p0;
wire   [8:0] mul_ln34_fu_1834_p1;
wire   [7:0] mul_ln49_fu_1843_p0;
wire   [8:0] mul_ln49_fu_1843_p1;
wire   [7:0] mul_ln62_fu_1852_p0;
wire   [8:0] mul_ln62_fu_1852_p1;
wire   [7:0] mul_ln75_fu_1861_p0;
wire   [8:0] mul_ln75_fu_1861_p1;
wire   [7:0] mul_ln88_fu_1870_p0;
wire   [8:0] mul_ln88_fu_1870_p1;
wire   [7:0] mul_ln101_fu_1879_p0;
wire   [8:0] mul_ln101_fu_1879_p1;
wire   [7:0] mul_ln114_fu_1888_p0;
wire   [8:0] mul_ln114_fu_1888_p1;
wire   [7:0] mul_ln127_fu_1897_p0;
wire   [8:0] mul_ln127_fu_1897_p1;
wire   [31:0] v90_1_fu_1935_p2;
wire   [31:0] v90_1_fu_1935_p4;
wire   [31:0] v90_1_fu_1935_p6;
wire   [31:0] v90_1_fu_1935_p8;
wire   [31:0] v90_1_fu_1935_p10;
wire   [31:0] v90_1_fu_1935_p12;
wire   [31:0] v90_1_fu_1935_p14;
wire   [31:0] v90_1_fu_1935_p16;
wire   [31:0] v90_1_fu_1935_p17;
wire   [7:0] mul_ln140_fu_1977_p0;
wire   [8:0] mul_ln140_fu_1977_p1;
wire   [31:0] v101_1_fu_2015_p2;
wire   [31:0] v101_1_fu_2015_p4;
wire   [31:0] v101_1_fu_2015_p6;
wire   [31:0] v101_1_fu_2015_p8;
wire   [31:0] v101_1_fu_2015_p10;
wire   [31:0] v101_1_fu_2015_p12;
wire   [31:0] v101_1_fu_2015_p14;
wire   [31:0] v101_1_fu_2015_p16;
wire   [31:0] v101_1_fu_2015_p17;
reg    grp_fu_2629_ce;
reg    grp_fu_2633_ce;
reg    grp_fu_2637_ce;
reg   [9:0] ap_NS_fsm;
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
wire   [15:0] mul_ln101_fu_1879_p00;
wire   [15:0] mul_ln114_fu_1888_p00;
wire   [15:0] mul_ln127_fu_1897_p00;
wire   [15:0] mul_ln140_fu_1977_p00;
wire   [15:0] mul_ln34_fu_1834_p00;
wire   [14:0] mul_ln38_fu_872_p00;
wire   [15:0] mul_ln49_fu_1843_p00;
wire   [15:0] mul_ln62_fu_1852_p00;
wire   [15:0] mul_ln75_fu_1861_p00;
wire   [15:0] mul_ln88_fu_1870_p00;
wire   [2:0] v11_fu_1001_p1;
wire   [2:0] v11_fu_1001_p3;
wire   [2:0] v11_fu_1001_p5;
wire   [2:0] v11_fu_1001_p7;
wire  signed [2:0] v11_fu_1001_p9;
wire  signed [2:0] v11_fu_1001_p11;
wire  signed [2:0] v11_fu_1001_p13;
wire  signed [2:0] v11_fu_1001_p15;
wire   [2:0] v24_fu_1166_p1;
wire   [2:0] v24_fu_1166_p3;
wire   [2:0] v24_fu_1166_p5;
wire   [2:0] v24_fu_1166_p7;
wire  signed [2:0] v24_fu_1166_p9;
wire  signed [2:0] v24_fu_1166_p11;
wire  signed [2:0] v24_fu_1166_p13;
wire  signed [2:0] v24_fu_1166_p15;
wire   [2:0] v35_fu_1237_p1;
wire   [2:0] v35_fu_1237_p3;
wire   [2:0] v35_fu_1237_p5;
wire   [2:0] v35_fu_1237_p7;
wire  signed [2:0] v35_fu_1237_p9;
wire  signed [2:0] v35_fu_1237_p11;
wire  signed [2:0] v35_fu_1237_p13;
wire  signed [2:0] v35_fu_1237_p15;
wire   [2:0] v46_fu_1402_p1;
wire   [2:0] v46_fu_1402_p3;
wire   [2:0] v46_fu_1402_p5;
wire   [2:0] v46_fu_1402_p7;
wire  signed [2:0] v46_fu_1402_p9;
wire  signed [2:0] v46_fu_1402_p11;
wire  signed [2:0] v46_fu_1402_p13;
wire  signed [2:0] v46_fu_1402_p15;
wire   [2:0] v57_1_fu_1473_p1;
wire   [2:0] v57_1_fu_1473_p3;
wire   [2:0] v57_1_fu_1473_p5;
wire   [2:0] v57_1_fu_1473_p7;
wire  signed [2:0] v57_1_fu_1473_p9;
wire  signed [2:0] v57_1_fu_1473_p11;
wire  signed [2:0] v57_1_fu_1473_p13;
wire  signed [2:0] v57_1_fu_1473_p15;
wire   [2:0] v68_1_fu_1638_p1;
wire   [2:0] v68_1_fu_1638_p3;
wire   [2:0] v68_1_fu_1638_p5;
wire   [2:0] v68_1_fu_1638_p7;
wire  signed [2:0] v68_1_fu_1638_p9;
wire  signed [2:0] v68_1_fu_1638_p11;
wire  signed [2:0] v68_1_fu_1638_p13;
wire  signed [2:0] v68_1_fu_1638_p15;
wire   [2:0] v79_1_fu_1709_p1;
wire   [2:0] v79_1_fu_1709_p3;
wire   [2:0] v79_1_fu_1709_p5;
wire   [2:0] v79_1_fu_1709_p7;
wire  signed [2:0] v79_1_fu_1709_p9;
wire  signed [2:0] v79_1_fu_1709_p11;
wire  signed [2:0] v79_1_fu_1709_p13;
wire  signed [2:0] v79_1_fu_1709_p15;
wire   [2:0] v90_1_fu_1935_p1;
wire   [2:0] v90_1_fu_1935_p3;
wire   [2:0] v90_1_fu_1935_p5;
wire   [2:0] v90_1_fu_1935_p7;
wire  signed [2:0] v90_1_fu_1935_p9;
wire  signed [2:0] v90_1_fu_1935_p11;
wire  signed [2:0] v90_1_fu_1935_p13;
wire  signed [2:0] v90_1_fu_1935_p15;
wire   [2:0] v101_1_fu_2015_p1;
wire   [2:0] v101_1_fu_2015_p3;
wire   [2:0] v101_1_fu_2015_p5;
wire   [2:0] v101_1_fu_2015_p7;
wire  signed [2:0] v101_1_fu_2015_p9;
wire  signed [2:0] v101_1_fu_2015_p11;
wire  signed [2:0] v101_1_fu_2015_p13;
wire  signed [2:0] v101_1_fu_2015_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_2_fu_798_ap_start_reg = 1'b0;
#0 v5_fu_122 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_2 grp_kernel_2mm_node0_Pipeline_label_2_fu_798(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_ap_ready),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_d1),.v229_q1(v229_q1),.mul_ln38(mul_ln38_reg_2092),.v228_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_0_ce1),.v228_0_q1(v228_0_q1),.v228_1_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_1_ce1),.v228_1_q1(v228_1_q1),.mul_ln34(mul_ln34_reg_2574),.mul_ln49(mul_ln49_reg_2579),.mul_ln62(mul_ln62_reg_2584),.mul_ln75(mul_ln75_reg_2589),.mul_ln88(mul_ln88_reg_2594),.mul_ln101(mul_ln101_reg_2599),.mul_ln114(mul_ln114_reg_2604),.mul_ln127(mul_ln127_reg_2609),.mul_ln140(mul_ln140_reg_2619),.v4(v4),.cmp11(cmp11_reg_2110),.empty(trunc_ln31_1_reg_2087),.v11(v11_reg_2177),.v24(v24_reg_2276),.v35(v35_reg_2281),.v46(v46_reg_2380),.v57_1(v57_1_reg_2385),.v68_1(v68_1_reg_2484),.v79_1(v79_1_reg_2489),.v90_1(v90_1_reg_2614),.v101_1(v101_1_reg_2624),.grp_fu_2629_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_2629_p_din0),.grp_fu_2629_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_2629_p_din1),.grp_fu_2629_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_2629_p_opcode),.grp_fu_2629_p_dout0(grp_fu_180_p_dout0),.grp_fu_2629_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_2629_p_ce),.grp_fu_2633_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_2633_p_din0),.grp_fu_2633_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_2633_p_din1),.grp_fu_2633_p_dout0(grp_fu_184_p_dout0),.grp_fu_2633_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_2633_p_ce),.grp_fu_2637_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_2637_p_din0),.grp_fu_2637_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_2637_p_din1),.grp_fu_2637_p_dout0(grp_fu_188_p_dout0),.grp_fu_2637_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_2637_p_ce));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U158(.din0(mul_ln38_fu_872_p0),.din1(mul_ln38_fu_872_p1),.dout(mul_ln38_fu_872_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U159(.din0(v11_fu_1001_p2),.din1(v11_fu_1001_p4),.din2(v11_fu_1001_p6),.din3(v11_fu_1001_p8),.din4(v11_fu_1001_p10),.din5(v11_fu_1001_p12),.din6(v11_fu_1001_p14),.din7(v11_fu_1001_p16),.def(v11_fu_1001_p17),.sel(trunc_ln31_reg_2074),.dout(v11_fu_1001_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U160(.din0(v24_fu_1166_p2),.din1(v24_fu_1166_p4),.din2(v24_fu_1166_p6),.din3(v24_fu_1166_p8),.din4(v24_fu_1166_p10),.din5(v24_fu_1166_p12),.din6(v24_fu_1166_p14),.din7(v24_fu_1166_p16),.def(v24_fu_1166_p17),.sel(trunc_ln31_reg_2074),.dout(v24_fu_1166_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U161(.din0(v35_fu_1237_p2),.din1(v35_fu_1237_p4),.din2(v35_fu_1237_p6),.din3(v35_fu_1237_p8),.din4(v35_fu_1237_p10),.din5(v35_fu_1237_p12),.din6(v35_fu_1237_p14),.din7(v35_fu_1237_p16),.def(v35_fu_1237_p17),.sel(trunc_ln31_reg_2074),.dout(v35_fu_1237_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U162(.din0(v46_fu_1402_p2),.din1(v46_fu_1402_p4),.din2(v46_fu_1402_p6),.din3(v46_fu_1402_p8),.din4(v46_fu_1402_p10),.din5(v46_fu_1402_p12),.din6(v46_fu_1402_p14),.din7(v46_fu_1402_p16),.def(v46_fu_1402_p17),.sel(trunc_ln31_reg_2074),.dout(v46_fu_1402_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U163(.din0(v57_1_fu_1473_p2),.din1(v57_1_fu_1473_p4),.din2(v57_1_fu_1473_p6),.din3(v57_1_fu_1473_p8),.din4(v57_1_fu_1473_p10),.din5(v57_1_fu_1473_p12),.din6(v57_1_fu_1473_p14),.din7(v57_1_fu_1473_p16),.def(v57_1_fu_1473_p17),.sel(trunc_ln31_reg_2074),.dout(v57_1_fu_1473_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U164(.din0(v68_1_fu_1638_p2),.din1(v68_1_fu_1638_p4),.din2(v68_1_fu_1638_p6),.din3(v68_1_fu_1638_p8),.din4(v68_1_fu_1638_p10),.din5(v68_1_fu_1638_p12),.din6(v68_1_fu_1638_p14),.din7(v68_1_fu_1638_p16),.def(v68_1_fu_1638_p17),.sel(trunc_ln31_reg_2074),.dout(v68_1_fu_1638_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U165(.din0(v79_1_fu_1709_p2),.din1(v79_1_fu_1709_p4),.din2(v79_1_fu_1709_p6),.din3(v79_1_fu_1709_p8),.din4(v79_1_fu_1709_p10),.din5(v79_1_fu_1709_p12),.din6(v79_1_fu_1709_p14),.din7(v79_1_fu_1709_p16),.def(v79_1_fu_1709_p17),.sel(trunc_ln31_reg_2074),.dout(v79_1_fu_1709_p19));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U166(.din0(mul_ln34_fu_1834_p0),.din1(mul_ln34_fu_1834_p1),.dout(mul_ln34_fu_1834_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U167(.din0(mul_ln49_fu_1843_p0),.din1(mul_ln49_fu_1843_p1),.dout(mul_ln49_fu_1843_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U168(.din0(mul_ln62_fu_1852_p0),.din1(mul_ln62_fu_1852_p1),.dout(mul_ln62_fu_1852_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U169(.din0(mul_ln75_fu_1861_p0),.din1(mul_ln75_fu_1861_p1),.dout(mul_ln75_fu_1861_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U170(.din0(mul_ln88_fu_1870_p0),.din1(mul_ln88_fu_1870_p1),.dout(mul_ln88_fu_1870_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U171(.din0(mul_ln101_fu_1879_p0),.din1(mul_ln101_fu_1879_p1),.dout(mul_ln101_fu_1879_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U172(.din0(mul_ln114_fu_1888_p0),.din1(mul_ln114_fu_1888_p1),.dout(mul_ln114_fu_1888_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U173(.din0(mul_ln127_fu_1897_p0),.din1(mul_ln127_fu_1897_p1),.dout(mul_ln127_fu_1897_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U174(.din0(v90_1_fu_1935_p2),.din1(v90_1_fu_1935_p4),.din2(v90_1_fu_1935_p6),.din3(v90_1_fu_1935_p8),.din4(v90_1_fu_1935_p10),.din5(v90_1_fu_1935_p12),.din6(v90_1_fu_1935_p14),.din7(v90_1_fu_1935_p16),.def(v90_1_fu_1935_p17),.sel(trunc_ln31_reg_2074),.dout(v90_1_fu_1935_p19));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U175(.din0(mul_ln140_fu_1977_p0),.din1(mul_ln140_fu_1977_p1),.dout(mul_ln140_fu_1977_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U176(.din0(v101_1_fu_2015_p2),.din1(v101_1_fu_2015_p4),.din2(v101_1_fu_2015_p6),.din3(v101_1_fu_2015_p8),.din4(v101_1_fu_2015_p10),.din5(v101_1_fu_2015_p12),.din6(v101_1_fu_2015_p14),.din7(v101_1_fu_2015_p16),.def(v101_1_fu_2015_p17),.sel(trunc_ln31_reg_2074),.dout(v101_1_fu_2015_p19));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_2_fu_798_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_798_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_798_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_798_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_122 <= 8'd0;
    end else if (((icmp_ln32_fu_898_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v5_fu_122 <= add_ln31_reg_2069;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_798_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        v6_reg_786 <= add_ln32_reg_2172;
    end else if (((icmp_ln31_fu_838_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v6_reg_786 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln31_reg_2069 <= add_ln31_fu_844_p2;
        cmp11_reg_2110 <= cmp11_fu_892_p2;
        mul_ln38_reg_2092 <= mul_ln38_fu_872_p2;
        trunc_ln31_1_reg_2087 <= trunc_ln31_1_fu_854_p1;
        trunc_ln31_reg_2074 <= trunc_ln31_fu_850_p1;
        zext_ln31_reg_2097[4 : 0] <= zext_ln31_fu_888_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_reg_2172 <= add_ln32_fu_959_p2;
        empty_148_reg_2158 <= empty_148_fu_947_p2;
        empty_159_reg_2165 <= empty_159_fu_953_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        empty_170_reg_2262 <= empty_170_fu_1122_p2;
        empty_181_reg_2269 <= empty_181_fu_1128_p2;
        v11_reg_2177 <= v11_fu_1001_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        empty_192_reg_2366 <= empty_192_fu_1358_p2;
        empty_203_reg_2373 <= empty_203_fu_1364_p2;
        v24_reg_2276 <= v24_fu_1166_p19;
        v35_reg_2281 <= v35_fu_1237_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        empty_214_reg_2470 <= empty_214_fu_1594_p2;
        empty_225_reg_2477 <= empty_225_fu_1600_p2;
        v46_reg_2380 <= v46_fu_1402_p19;
        v57_1_reg_2385 <= v57_1_fu_1473_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        mul_ln101_reg_2599 <= mul_ln101_fu_1879_p2;
        mul_ln114_reg_2604 <= mul_ln114_fu_1888_p2;
        mul_ln127_reg_2609 <= mul_ln127_fu_1897_p2;
        mul_ln140_reg_2619 <= mul_ln140_fu_1977_p2;
        mul_ln34_reg_2574 <= mul_ln34_fu_1834_p2;
        mul_ln49_reg_2579 <= mul_ln49_fu_1843_p2;
        mul_ln62_reg_2584 <= mul_ln62_fu_1852_p2;
        mul_ln75_reg_2589 <= mul_ln75_fu_1861_p2;
        mul_ln88_reg_2594 <= mul_ln88_fu_1870_p2;
        v101_1_reg_2624 <= v101_1_fu_2015_p19;
        v90_1_reg_2614 <= v90_1_fu_1935_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v68_1_reg_2484 <= v68_1_fu_1638_p19;
        v79_1_reg_2489 <= v79_1_fu_1709_p19;
    end
end
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_798_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
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
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) | ((icmp_ln31_fu_838_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln31_fu_838_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2629_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_2629_p_ce;
    end else begin
        grp_fu_2629_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2633_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_2633_p_ce;
    end else begin
        grp_fu_2633_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2637_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_2637_p_ce;
    end else begin
        grp_fu_2637_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_0_address0_local = p_cast1515_fu_1777_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_0_address0_local = p_cast1513_fu_1541_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_0_address0_local = p_cast1511_fu_1305_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_0_address0_local = p_cast1510_fu_1110_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_0_address0_local = p_cast1509_fu_935_p1;
    end else begin
        v224_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_0_address1_local = p_cast1516_fu_1818_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_0_address1_local = p_cast1514_fu_1582_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_0_address1_local = p_cast1512_fu_1346_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_0_address1_local = p_cast_fu_1069_p1;
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
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_1_address0_local = p_cast1515_fu_1777_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_1_address0_local = p_cast1513_fu_1541_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_1_address0_local = p_cast1511_fu_1305_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_1_address0_local = p_cast1510_fu_1110_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_1_address0_local = p_cast1509_fu_935_p1;
    end else begin
        v224_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_1_address1_local = p_cast1516_fu_1818_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_1_address1_local = p_cast1514_fu_1582_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_1_address1_local = p_cast1512_fu_1346_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_1_address1_local = p_cast_fu_1069_p1;
    end else begin
        v224_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        v224_1_ce0_local = 1'b1;
    end else begin
        v224_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        v224_1_ce1_local = 1'b1;
    end else begin
        v224_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_2_address0_local = p_cast1515_fu_1777_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_2_address0_local = p_cast1513_fu_1541_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_2_address0_local = p_cast1511_fu_1305_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_2_address0_local = p_cast1510_fu_1110_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_2_address0_local = p_cast1509_fu_935_p1;
    end else begin
        v224_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_2_address1_local = p_cast1516_fu_1818_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_2_address1_local = p_cast1514_fu_1582_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_2_address1_local = p_cast1512_fu_1346_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_2_address1_local = p_cast_fu_1069_p1;
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
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_3_address0_local = p_cast1515_fu_1777_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_3_address0_local = p_cast1513_fu_1541_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_3_address0_local = p_cast1511_fu_1305_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_3_address0_local = p_cast1510_fu_1110_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_3_address0_local = p_cast1509_fu_935_p1;
    end else begin
        v224_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_3_address1_local = p_cast1516_fu_1818_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_3_address1_local = p_cast1514_fu_1582_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_3_address1_local = p_cast1512_fu_1346_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_3_address1_local = p_cast_fu_1069_p1;
    end else begin
        v224_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        v224_3_ce0_local = 1'b1;
    end else begin
        v224_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        v224_3_ce1_local = 1'b1;
    end else begin
        v224_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_4_address0_local = p_cast1515_fu_1777_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_4_address0_local = p_cast1513_fu_1541_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_4_address0_local = p_cast1511_fu_1305_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_4_address0_local = p_cast1510_fu_1110_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_4_address0_local = p_cast1509_fu_935_p1;
    end else begin
        v224_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_4_address1_local = p_cast1516_fu_1818_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_4_address1_local = p_cast1514_fu_1582_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_4_address1_local = p_cast1512_fu_1346_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_4_address1_local = p_cast_fu_1069_p1;
    end else begin
        v224_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        v224_4_ce0_local = 1'b1;
    end else begin
        v224_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        v224_4_ce1_local = 1'b1;
    end else begin
        v224_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_5_address0_local = p_cast1515_fu_1777_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_5_address0_local = p_cast1513_fu_1541_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_5_address0_local = p_cast1511_fu_1305_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_5_address0_local = p_cast1510_fu_1110_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_5_address0_local = p_cast1509_fu_935_p1;
    end else begin
        v224_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_5_address1_local = p_cast1516_fu_1818_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_5_address1_local = p_cast1514_fu_1582_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_5_address1_local = p_cast1512_fu_1346_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_5_address1_local = p_cast_fu_1069_p1;
    end else begin
        v224_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        v224_5_ce0_local = 1'b1;
    end else begin
        v224_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        v224_5_ce1_local = 1'b1;
    end else begin
        v224_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_6_address0_local = p_cast1515_fu_1777_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_6_address0_local = p_cast1513_fu_1541_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_6_address0_local = p_cast1511_fu_1305_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_6_address0_local = p_cast1510_fu_1110_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_6_address0_local = p_cast1509_fu_935_p1;
    end else begin
        v224_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_6_address1_local = p_cast1516_fu_1818_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_6_address1_local = p_cast1514_fu_1582_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_6_address1_local = p_cast1512_fu_1346_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_6_address1_local = p_cast_fu_1069_p1;
    end else begin
        v224_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        v224_6_ce0_local = 1'b1;
    end else begin
        v224_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        v224_6_ce1_local = 1'b1;
    end else begin
        v224_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_7_address0_local = p_cast1515_fu_1777_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_7_address0_local = p_cast1513_fu_1541_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_7_address0_local = p_cast1511_fu_1305_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_7_address0_local = p_cast1510_fu_1110_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_7_address0_local = p_cast1509_fu_935_p1;
    end else begin
        v224_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_7_address1_local = p_cast1516_fu_1818_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_7_address1_local = p_cast1514_fu_1582_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_7_address1_local = p_cast1512_fu_1346_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_7_address1_local = p_cast_fu_1069_p1;
    end else begin
        v224_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        v224_7_ce0_local = 1'b1;
    end else begin
        v224_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        v224_7_ce1_local = 1'b1;
    end else begin
        v224_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
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
            if (((icmp_ln31_fu_838_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln32_fu_898_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
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
            if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_798_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln31_fu_844_p2 = (v5_fu_122 + 8'd1);
assign add_ln32_fu_959_p2 = (v6_reg_786 + 8'd9);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
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
assign cmp11_fu_892_p2 = ((v5_fu_122 == 8'd0) ? 1'b1 : 1'b0);
assign empty_139_fu_930_p2 = (empty_fu_924_p2 + zext_ln31_reg_2097);
assign empty_148_fu_947_p2 = (v6_reg_786 + 8'd1);
assign empty_149_fu_1058_p2 = (p_shl2_fu_1040_p3 - p_shl1563_fu_1054_p1);
assign empty_150_fu_1064_p2 = (empty_149_fu_1058_p2 + zext_ln31_reg_2097);
assign empty_159_fu_953_p2 = (v6_reg_786 + 8'd2);
assign empty_160_fu_1099_p2 = (p_shl3_fu_1081_p3 - p_shl1561_fu_1095_p1);
assign empty_161_fu_1105_p2 = (empty_160_fu_1099_p2 + zext_ln31_reg_2097);
assign empty_170_fu_1122_p2 = (v6_reg_786 + 8'd3);
assign empty_171_fu_1294_p2 = (p_shl4_fu_1276_p3 - p_shl1559_fu_1290_p1);
assign empty_172_fu_1300_p2 = (empty_171_fu_1294_p2 + zext_ln31_reg_2097);
assign empty_181_fu_1128_p2 = (v6_reg_786 + 8'd4);
assign empty_182_fu_1335_p2 = (p_shl5_fu_1317_p3 - p_shl1557_fu_1331_p1);
assign empty_183_fu_1341_p2 = (empty_182_fu_1335_p2 + zext_ln31_reg_2097);
assign empty_192_fu_1358_p2 = (v6_reg_786 + 8'd5);
assign empty_193_fu_1530_p2 = (p_shl6_fu_1512_p3 - p_shl1555_fu_1526_p1);
assign empty_194_fu_1536_p2 = (empty_193_fu_1530_p2 + zext_ln31_reg_2097);
assign empty_203_fu_1364_p2 = (v6_reg_786 + 8'd6);
assign empty_204_fu_1571_p2 = (p_shl7_fu_1553_p3 - p_shl1553_fu_1567_p1);
assign empty_205_fu_1577_p2 = (empty_204_fu_1571_p2 + zext_ln31_reg_2097);
assign empty_214_fu_1594_p2 = (v6_reg_786 + 8'd7);
assign empty_215_fu_1766_p2 = (p_shl8_fu_1748_p3 - p_shl1551_fu_1762_p1);
assign empty_216_fu_1772_p2 = (empty_215_fu_1766_p2 + zext_ln31_reg_2097);
assign empty_225_fu_1600_p2 = (v6_reg_786 + 8'd8);
assign empty_226_fu_1807_p2 = (p_shl_fu_1789_p3 - p_shl1549_fu_1803_p1);
assign empty_227_fu_1813_p2 = (empty_226_fu_1807_p2 + zext_ln31_reg_2097);
assign empty_fu_924_p2 = (p_shl1_fu_904_p3 - p_shl1565_fu_920_p1);
assign grp_fu_180_p_ce = grp_fu_2629_ce;
assign grp_fu_180_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_2629_p_din0;
assign grp_fu_180_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_2629_p_din1;
assign grp_fu_180_p_opcode = 2'd0;
assign grp_fu_184_p_ce = grp_fu_2633_ce;
assign grp_fu_184_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_2633_p_din0;
assign grp_fu_184_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_2633_p_din1;
assign grp_fu_188_p_ce = grp_fu_2637_ce;
assign grp_fu_188_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_2637_p_din0;
assign grp_fu_188_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_2637_p_din1;
assign grp_kernel_2mm_node0_Pipeline_label_2_fu_798_ap_start = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_ap_start_reg;
assign icmp_ln31_fu_838_p2 = ((v5_fu_122 == 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_898_p2 = ((v6_reg_786 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln31_1_fu_878_p4 = {{v5_fu_122[7:3]}};
assign lshr_ln_fu_858_p4 = {{v5_fu_122[7:1]}};
assign mul_ln101_fu_1879_p0 = mul_ln101_fu_1879_p00;
assign mul_ln101_fu_1879_p00 = empty_192_reg_2366;
assign mul_ln101_fu_1879_p1 = 16'd220;
assign mul_ln114_fu_1888_p0 = mul_ln114_fu_1888_p00;
assign mul_ln114_fu_1888_p00 = empty_203_reg_2373;
assign mul_ln114_fu_1888_p1 = 16'd220;
assign mul_ln127_fu_1897_p0 = mul_ln127_fu_1897_p00;
assign mul_ln127_fu_1897_p00 = empty_214_reg_2470;
assign mul_ln127_fu_1897_p1 = 16'd220;
assign mul_ln140_fu_1977_p0 = mul_ln140_fu_1977_p00;
assign mul_ln140_fu_1977_p00 = empty_225_reg_2477;
assign mul_ln140_fu_1977_p1 = 16'd220;
assign mul_ln34_fu_1834_p0 = mul_ln34_fu_1834_p00;
assign mul_ln34_fu_1834_p00 = v6_reg_786;
assign mul_ln34_fu_1834_p1 = 16'd220;
assign mul_ln38_fu_872_p0 = mul_ln38_fu_872_p00;
assign mul_ln38_fu_872_p00 = lshr_ln_fu_858_p4;
assign mul_ln38_fu_872_p1 = 15'd220;
assign mul_ln49_fu_1843_p0 = mul_ln49_fu_1843_p00;
assign mul_ln49_fu_1843_p00 = empty_148_reg_2158;
assign mul_ln49_fu_1843_p1 = 16'd220;
assign mul_ln62_fu_1852_p0 = mul_ln62_fu_1852_p00;
assign mul_ln62_fu_1852_p00 = empty_159_reg_2165;
assign mul_ln62_fu_1852_p1 = 16'd220;
assign mul_ln75_fu_1861_p0 = mul_ln75_fu_1861_p00;
assign mul_ln75_fu_1861_p00 = empty_170_reg_2262;
assign mul_ln75_fu_1861_p1 = 16'd220;
assign mul_ln88_fu_1870_p0 = mul_ln88_fu_1870_p00;
assign mul_ln88_fu_1870_p00 = empty_181_reg_2269;
assign mul_ln88_fu_1870_p1 = 16'd220;
assign p_cast1509_fu_935_p1 = empty_139_fu_930_p2;
assign p_cast1510_fu_1110_p1 = empty_161_fu_1105_p2;
assign p_cast1511_fu_1305_p1 = empty_172_fu_1300_p2;
assign p_cast1512_fu_1346_p1 = empty_183_fu_1341_p2;
assign p_cast1513_fu_1541_p1 = empty_194_fu_1536_p2;
assign p_cast1514_fu_1582_p1 = empty_205_fu_1577_p2;
assign p_cast1515_fu_1777_p1 = empty_216_fu_1772_p2;
assign p_cast1516_fu_1818_p1 = empty_227_fu_1813_p2;
assign p_cast_fu_1069_p1 = empty_150_fu_1064_p2;
assign p_shl1549_fu_1803_p1 = tmp_20_fu_1796_p3;
assign p_shl1551_fu_1762_p1 = tmp_19_fu_1755_p3;
assign p_shl1553_fu_1567_p1 = tmp_18_fu_1560_p3;
assign p_shl1555_fu_1526_p1 = tmp_17_fu_1519_p3;
assign p_shl1557_fu_1331_p1 = tmp_16_fu_1324_p3;
assign p_shl1559_fu_1290_p1 = tmp_15_fu_1283_p3;
assign p_shl1561_fu_1095_p1 = tmp_14_fu_1088_p3;
assign p_shl1563_fu_1054_p1 = tmp_13_fu_1047_p3;
assign p_shl1565_fu_920_p1 = tmp_fu_912_p3;
assign p_shl1_fu_904_p3 = {{v6_reg_786}, {5'd0}};
assign p_shl2_fu_1040_p3 = {{empty_148_reg_2158}, {5'd0}};
assign p_shl3_fu_1081_p3 = {{empty_159_reg_2165}, {5'd0}};
assign p_shl4_fu_1276_p3 = {{empty_170_reg_2262}, {5'd0}};
assign p_shl5_fu_1317_p3 = {{empty_181_reg_2269}, {5'd0}};
assign p_shl6_fu_1512_p3 = {{empty_192_reg_2366}, {5'd0}};
assign p_shl7_fu_1553_p3 = {{empty_203_reg_2373}, {5'd0}};
assign p_shl8_fu_1748_p3 = {{empty_214_reg_2470}, {5'd0}};
assign p_shl_fu_1789_p3 = {{empty_225_reg_2477}, {5'd0}};
assign tmp_13_fu_1047_p3 = {{empty_148_reg_2158}, {3'd0}};
assign tmp_14_fu_1088_p3 = {{empty_159_reg_2165}, {3'd0}};
assign tmp_15_fu_1283_p3 = {{empty_170_reg_2262}, {3'd0}};
assign tmp_16_fu_1324_p3 = {{empty_181_reg_2269}, {3'd0}};
assign tmp_17_fu_1519_p3 = {{empty_192_reg_2366}, {3'd0}};
assign tmp_18_fu_1560_p3 = {{empty_203_reg_2373}, {3'd0}};
assign tmp_19_fu_1755_p3 = {{empty_214_reg_2470}, {3'd0}};
assign tmp_20_fu_1796_p3 = {{empty_225_reg_2477}, {3'd0}};
assign tmp_fu_912_p3 = {{v6_reg_786}, {3'd0}};
assign trunc_ln31_1_fu_854_p1 = v5_fu_122[0:0];
assign trunc_ln31_fu_850_p1 = v5_fu_122[2:0];
assign v101_1_fu_2015_p10 = v224_4_q1;
assign v101_1_fu_2015_p12 = v224_5_q1;
assign v101_1_fu_2015_p14 = v224_6_q1;
assign v101_1_fu_2015_p16 = v224_7_q1;
assign v101_1_fu_2015_p17 = 'bx;
assign v101_1_fu_2015_p2 = v224_0_q1;
assign v101_1_fu_2015_p4 = v224_1_q1;
assign v101_1_fu_2015_p6 = v224_2_q1;
assign v101_1_fu_2015_p8 = v224_3_q1;
assign v11_fu_1001_p10 = v224_4_q0;
assign v11_fu_1001_p12 = v224_5_q0;
assign v11_fu_1001_p14 = v224_6_q0;
assign v11_fu_1001_p16 = v224_7_q0;
assign v11_fu_1001_p17 = 'bx;
assign v11_fu_1001_p2 = v224_0_q0;
assign v11_fu_1001_p4 = v224_1_q0;
assign v11_fu_1001_p6 = v224_2_q0;
assign v11_fu_1001_p8 = v224_3_q0;
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
assign v224_4_address0 = v224_4_address0_local;
assign v224_4_address1 = v224_4_address1_local;
assign v224_4_ce0 = v224_4_ce0_local;
assign v224_4_ce1 = v224_4_ce1_local;
assign v224_5_address0 = v224_5_address0_local;
assign v224_5_address1 = v224_5_address1_local;
assign v224_5_ce0 = v224_5_ce0_local;
assign v224_5_ce1 = v224_5_ce1_local;
assign v224_6_address0 = v224_6_address0_local;
assign v224_6_address1 = v224_6_address1_local;
assign v224_6_ce0 = v224_6_ce0_local;
assign v224_6_ce1 = v224_6_ce1_local;
assign v224_7_address0 = v224_7_address0_local;
assign v224_7_address1 = v224_7_address1_local;
assign v224_7_ce0 = v224_7_ce0_local;
assign v224_7_ce1 = v224_7_ce1_local;
assign v228_0_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_0_address0;
assign v228_0_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_0_address1;
assign v228_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_0_ce0;
assign v228_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_0_ce1;
assign v228_1_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_1_address0;
assign v228_1_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_1_address1;
assign v228_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_1_ce0;
assign v228_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_1_ce1;
assign v229_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_address0;
assign v229_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_address1;
assign v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_ce0;
assign v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_ce1;
assign v229_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_d0;
assign v229_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_d1;
assign v229_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_we0;
assign v229_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_we1;
assign v236_read = v236_read_local;
assign v24_fu_1166_p10 = v224_4_q1;
assign v24_fu_1166_p12 = v224_5_q1;
assign v24_fu_1166_p14 = v224_6_q1;
assign v24_fu_1166_p16 = v224_7_q1;
assign v24_fu_1166_p17 = 'bx;
assign v24_fu_1166_p2 = v224_0_q1;
assign v24_fu_1166_p4 = v224_1_q1;
assign v24_fu_1166_p6 = v224_2_q1;
assign v24_fu_1166_p8 = v224_3_q1;
assign v35_fu_1237_p10 = v224_4_q0;
assign v35_fu_1237_p12 = v224_5_q0;
assign v35_fu_1237_p14 = v224_6_q0;
assign v35_fu_1237_p16 = v224_7_q0;
assign v35_fu_1237_p17 = 'bx;
assign v35_fu_1237_p2 = v224_0_q0;
assign v35_fu_1237_p4 = v224_1_q0;
assign v35_fu_1237_p6 = v224_2_q0;
assign v35_fu_1237_p8 = v224_3_q0;
assign v46_fu_1402_p10 = v224_4_q0;
assign v46_fu_1402_p12 = v224_5_q0;
assign v46_fu_1402_p14 = v224_6_q0;
assign v46_fu_1402_p16 = v224_7_q0;
assign v46_fu_1402_p17 = 'bx;
assign v46_fu_1402_p2 = v224_0_q0;
assign v46_fu_1402_p4 = v224_1_q0;
assign v46_fu_1402_p6 = v224_2_q0;
assign v46_fu_1402_p8 = v224_3_q0;
assign v57_1_fu_1473_p10 = v224_4_q1;
assign v57_1_fu_1473_p12 = v224_5_q1;
assign v57_1_fu_1473_p14 = v224_6_q1;
assign v57_1_fu_1473_p16 = v224_7_q1;
assign v57_1_fu_1473_p17 = 'bx;
assign v57_1_fu_1473_p2 = v224_0_q1;
assign v57_1_fu_1473_p4 = v224_1_q1;
assign v57_1_fu_1473_p6 = v224_2_q1;
assign v57_1_fu_1473_p8 = v224_3_q1;
assign v68_1_fu_1638_p10 = v224_4_q0;
assign v68_1_fu_1638_p12 = v224_5_q0;
assign v68_1_fu_1638_p14 = v224_6_q0;
assign v68_1_fu_1638_p16 = v224_7_q0;
assign v68_1_fu_1638_p17 = 'bx;
assign v68_1_fu_1638_p2 = v224_0_q0;
assign v68_1_fu_1638_p4 = v224_1_q0;
assign v68_1_fu_1638_p6 = v224_2_q0;
assign v68_1_fu_1638_p8 = v224_3_q0;
assign v79_1_fu_1709_p10 = v224_4_q1;
assign v79_1_fu_1709_p12 = v224_5_q1;
assign v79_1_fu_1709_p14 = v224_6_q1;
assign v79_1_fu_1709_p16 = v224_7_q1;
assign v79_1_fu_1709_p17 = 'bx;
assign v79_1_fu_1709_p2 = v224_0_q1;
assign v79_1_fu_1709_p4 = v224_1_q1;
assign v79_1_fu_1709_p6 = v224_2_q1;
assign v79_1_fu_1709_p8 = v224_3_q1;
assign v90_1_fu_1935_p10 = v224_4_q0;
assign v90_1_fu_1935_p12 = v224_5_q0;
assign v90_1_fu_1935_p14 = v224_6_q0;
assign v90_1_fu_1935_p16 = v224_7_q0;
assign v90_1_fu_1935_p17 = 'bx;
assign v90_1_fu_1935_p2 = v224_0_q0;
assign v90_1_fu_1935_p4 = v224_1_q0;
assign v90_1_fu_1935_p6 = v224_2_q0;
assign v90_1_fu_1935_p8 = v224_3_q0;
assign zext_ln31_fu_888_p1 = lshr_ln31_1_fu_878_p4;
always @ (posedge ap_clk) begin
    zext_ln31_reg_2097[12:5] <= 8'b00000000;
end
endmodule 