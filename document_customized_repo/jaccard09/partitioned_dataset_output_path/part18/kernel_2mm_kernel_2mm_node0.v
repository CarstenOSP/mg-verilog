
module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_0_address0,v224_0_ce0,v224_0_q0,v224_0_address1,v224_0_ce1,v224_0_q1,v224_1_address0,v224_1_ce0,v224_1_q0,v224_1_address1,v224_1_ce1,v224_1_q1,v224_2_address0,v224_2_ce0,v224_2_q0,v224_2_address1,v224_2_ce1,v224_2_q1,v224_3_address0,v224_3_ce0,v224_3_q0,v224_3_address1,v224_3_ce1,v224_3_q1,v228_0_address0,v228_0_ce0,v228_0_q0,v228_0_address1,v228_0_ce1,v228_0_q1,v228_1_address0,v228_1_ce0,v228_1_q0,v228_1_address1,v228_1_ce1,v228_1_q1,v229_address0,v229_ce0,v229_we0,v229_d0,v229_q0,v229_address1,v229_ce1,v229_we1,v229_d1,v229_q1,v4,grp_fu_172_p_din0,grp_fu_172_p_din1,grp_fu_172_p_opcode,grp_fu_172_p_dout0,grp_fu_172_p_ce,grp_fu_164_p_din0,grp_fu_164_p_din1,grp_fu_164_p_dout0,grp_fu_164_p_ce,grp_fu_168_p_din0,grp_fu_168_p_din1,grp_fu_168_p_dout0,grp_fu_168_p_ce);  
parameter    ap_ST_fsm_state1 = 14'd1;
parameter    ap_ST_fsm_state2 = 14'd2;
parameter    ap_ST_fsm_state3 = 14'd4;
parameter    ap_ST_fsm_state4 = 14'd8;
parameter    ap_ST_fsm_state5 = 14'd16;
parameter    ap_ST_fsm_state6 = 14'd32;
parameter    ap_ST_fsm_state7 = 14'd64;
parameter    ap_ST_fsm_state8 = 14'd128;
parameter    ap_ST_fsm_state9 = 14'd256;
parameter    ap_ST_fsm_state10 = 14'd512;
parameter    ap_ST_fsm_state11 = 14'd1024;
parameter    ap_ST_fsm_state12 = 14'd2048;
parameter    ap_ST_fsm_state13 = 14'd4096;
parameter    ap_ST_fsm_state14 = 14'd8192;
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
output  [31:0] grp_fu_172_p_din0;
output  [31:0] grp_fu_172_p_din1;
output  [1:0] grp_fu_172_p_opcode;
input  [31:0] grp_fu_172_p_dout0;
output   grp_fu_172_p_ce;
output  [31:0] grp_fu_164_p_din0;
output  [31:0] grp_fu_164_p_din1;
input  [31:0] grp_fu_164_p_dout0;
output   grp_fu_164_p_ce;
output  [31:0] grp_fu_168_p_din0;
output  [31:0] grp_fu_168_p_din1;
input  [31:0] grp_fu_168_p_dout0;
output   grp_fu_168_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[14:0] v228_0_address0;
reg v228_0_ce0;
reg[14:0] v228_0_address1;
reg v228_0_ce1;
reg[14:0] v228_1_address0;
reg v228_1_ce0;
reg[14:0] v228_1_address1;
reg v228_1_ce1;
reg[15:0] v229_address0;
reg v229_ce0;
reg v229_we0;
reg[31:0] v229_d0;
reg[15:0] v229_address1;
reg v229_ce1;
reg v229_we1;
reg[31:0] v229_d1;
(* fsm_encoding = "none" *) reg   [13:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire   [7:0] add_ln31_fu_858_p2;
reg   [7:0] add_ln31_reg_2593;
wire    ap_CS_fsm_state2;
wire   [1:0] trunc_ln31_fu_864_p1;
reg   [1:0] trunc_ln31_reg_2598;
wire   [0:0] trunc_ln31_1_fu_868_p1;
reg   [0:0] trunc_ln31_1_reg_2620;
wire   [14:0] mul_ln38_fu_886_p2;
reg   [14:0] mul_ln38_reg_2626;
wire   [13:0] zext_ln31_fu_902_p1;
reg   [13:0] zext_ln31_reg_2632;
wire   [0:0] cmp11_fu_906_p2;
reg   [0:0] cmp11_reg_2654;
wire    ap_CS_fsm_state3;
wire   [6:0] tmp_fu_957_p4;
reg   [6:0] tmp_reg_2683;
wire   [7:0] empty_261_fu_1006_p2;
reg   [7:0] empty_261_reg_2708;
wire   [7:0] empty_268_fu_1012_p2;
reg   [7:0] empty_268_reg_2715;
wire   [7:0] add_ln32_1_fu_1018_p2;
reg   [7:0] add_ln32_1_reg_2722;
wire   [31:0] v11_fu_1044_p11;
reg   [31:0] v11_reg_2727;
wire    ap_CS_fsm_state4;
wire   [31:0] v24_fu_1083_p11;
reg   [31:0] v24_reg_2732;
wire   [7:0] empty_275_fu_1180_p2;
reg   [7:0] empty_275_reg_2777;
wire   [7:0] empty_282_fu_1186_p2;
reg   [7:0] empty_282_reg_2784;
wire   [31:0] v35_2_fu_1208_p11;
reg   [31:0] v35_2_reg_2791;
wire    ap_CS_fsm_state5;
wire   [31:0] v46_2_fu_1247_p11;
reg   [31:0] v46_2_reg_2796;
wire   [7:0] empty_289_fu_1344_p2;
reg   [7:0] empty_289_reg_2841;
wire   [7:0] empty_296_fu_1350_p2;
reg   [7:0] empty_296_reg_2848;
wire   [31:0] v57_2_fu_1372_p11;
reg   [31:0] v57_2_reg_2855;
wire    ap_CS_fsm_state6;
wire   [31:0] v68_2_fu_1411_p11;
reg   [31:0] v68_2_reg_2860;
wire   [7:0] empty_303_fu_1508_p2;
reg   [7:0] empty_303_reg_2905;
wire   [7:0] add_ln32_fu_1514_p2;
reg   [7:0] add_ln32_reg_2912;
wire   [31:0] v79_2_fu_1536_p11;
reg   [31:0] v79_2_reg_2919;
wire    ap_CS_fsm_state7;
wire   [31:0] v90_2_fu_1575_p11;
reg   [31:0] v90_2_reg_2924;
wire   [7:0] empty_316_fu_1672_p2;
reg   [7:0] empty_316_reg_2969;
wire   [7:0] empty_323_fu_1678_p2;
reg   [7:0] empty_323_reg_2976;
wire   [15:0] mul_ln34_fu_1688_p2;
reg   [15:0] mul_ln34_reg_2983;
wire    ap_CS_fsm_state8;
wire   [15:0] mul_ln49_fu_1705_p2;
reg   [15:0] mul_ln49_reg_2988;
wire   [15:0] mul_ln62_fu_1714_p2;
reg   [15:0] mul_ln62_reg_2993;
wire   [15:0] mul_ln75_fu_1723_p2;
reg   [15:0] mul_ln75_reg_2998;
wire   [15:0] mul_ln88_fu_1732_p2;
reg   [15:0] mul_ln88_reg_3003;
wire   [15:0] mul_ln101_fu_1741_p2;
reg   [15:0] mul_ln101_reg_3008;
wire   [15:0] mul_ln114_fu_1750_p2;
reg   [15:0] mul_ln114_reg_3013;
wire   [15:0] mul_ln127_fu_1759_p2;
reg   [15:0] mul_ln127_reg_3018;
wire   [15:0] mul_ln140_fu_1768_p2;
reg   [15:0] mul_ln140_reg_3023;
wire   [31:0] v_fu_1790_p11;
reg   [31:0] v_reg_3028;
wire   [31:0] v11_1_fu_1829_p11;
reg   [31:0] v11_1_reg_3033;
wire   [7:0] empty_330_fu_1926_p2;
reg   [7:0] empty_330_reg_3078;
wire   [7:0] empty_337_fu_1932_p2;
reg   [7:0] empty_337_reg_3085;
wire   [31:0] v24_1_fu_1954_p11;
reg   [31:0] v24_1_reg_3092;
wire    ap_CS_fsm_state9;
wire   [31:0] v35_1_fu_1993_p11;
reg   [31:0] v35_1_reg_3097;
wire   [7:0] empty_344_fu_2090_p2;
reg   [7:0] empty_344_reg_3142;
wire   [7:0] empty_351_fu_2096_p2;
reg   [7:0] empty_351_reg_3149;
wire   [31:0] v46_1_fu_2118_p11;
reg   [31:0] v46_1_reg_3156;
wire    ap_CS_fsm_state10;
wire   [31:0] v57_1_fu_2157_p11;
reg   [31:0] v57_1_reg_3161;
wire   [7:0] empty_358_fu_2254_p2;
reg   [7:0] empty_358_reg_3206;
wire   [7:0] empty_365_fu_2260_p2;
reg   [7:0] empty_365_reg_3213;
wire   [31:0] v68_1_fu_2282_p11;
reg   [31:0] v68_1_reg_3220;
wire    ap_CS_fsm_state11;
wire   [31:0] v79_1_fu_2321_p11;
reg   [31:0] v79_1_reg_3225;
wire   [15:0] mul_ln34_1_fu_2421_p2;
reg   [15:0] mul_ln34_1_reg_3270;
wire    ap_CS_fsm_state12;
wire   [15:0] mul_ln49_1_fu_2430_p2;
reg   [15:0] mul_ln49_1_reg_3275;
wire   [15:0] mul_ln62_1_fu_2439_p2;
reg   [15:0] mul_ln62_1_reg_3280;
wire   [15:0] mul_ln75_1_fu_2448_p2;
reg   [15:0] mul_ln75_1_reg_3285;
wire   [15:0] mul_ln88_1_fu_2457_p2;
reg   [15:0] mul_ln88_1_reg_3290;
wire   [15:0] mul_ln101_1_fu_2466_p2;
reg   [15:0] mul_ln101_1_reg_3295;
wire   [15:0] mul_ln114_1_fu_2475_p2;
reg   [15:0] mul_ln114_1_reg_3300;
wire   [15:0] mul_ln127_1_fu_2484_p2;
reg   [15:0] mul_ln127_1_reg_3305;
wire   [31:0] v90_1_fu_2506_p11;
reg   [31:0] v90_1_reg_3310;
wire   [15:0] mul_ln140_1_fu_2532_p2;
reg   [15:0] mul_ln140_1_reg_3315;
wire   [31:0] v101_1_fu_2554_p11;
reg   [31:0] v101_1_reg_3320;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_780_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_780_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_780_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_780_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v229_d1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v228_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v228_0_ce0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v228_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v228_0_ce1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v228_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v228_1_ce0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v228_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v228_1_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_780_grp_fu_3325_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_780_grp_fu_3325_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_780_grp_fu_3325_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_780_grp_fu_3325_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_780_grp_fu_3329_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_780_grp_fu_3329_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_780_grp_fu_3329_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_780_grp_fu_3333_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_780_grp_fu_3333_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_780_grp_fu_3333_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_812_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_812_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_812_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_812_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v229_d1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v228_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v228_0_ce0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v228_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v228_0_ce1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v228_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v228_1_ce0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v228_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v228_1_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_812_grp_fu_3325_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_812_grp_fu_3325_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_812_grp_fu_3325_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_812_grp_fu_3325_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_812_grp_fu_3329_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_812_grp_fu_3329_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_812_grp_fu_3329_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_812_grp_fu_3333_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_812_grp_fu_3333_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_812_grp_fu_3333_p_ce;
reg   [7:0] v6_reg_768;
wire    ap_CS_fsm_state14;
wire   [0:0] icmp_ln31_fu_852_p2;
reg    grp_kernel_2mm_node0_Pipeline_label_2_fu_780_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_210_fu_812_ap_start_reg;
wire    ap_CS_fsm_state13;
wire   [63:0] p_cast735_fu_949_p1;
wire   [0:0] icmp_ln32_fu_912_p2;
wire   [63:0] p_cast_fu_998_p1;
wire   [63:0] p_cast736_fu_1135_p1;
wire   [63:0] p_cast737_fu_1172_p1;
wire   [63:0] p_cast738_fu_1299_p1;
wire   [63:0] p_cast739_fu_1336_p1;
wire   [63:0] p_cast740_fu_1463_p1;
wire   [63:0] p_cast741_fu_1500_p1;
wire   [63:0] p_cast742_fu_1627_p1;
wire   [63:0] p_cast743_fu_1664_p1;
wire   [63:0] p_cast744_fu_1881_p1;
wire   [63:0] p_cast745_fu_1918_p1;
wire   [63:0] p_cast746_fu_2045_p1;
wire   [63:0] p_cast747_fu_2082_p1;
wire   [63:0] p_cast748_fu_2209_p1;
wire   [63:0] p_cast749_fu_2246_p1;
wire   [63:0] p_cast750_fu_2373_p1;
wire   [63:0] p_cast751_fu_2410_p1;
reg   [7:0] v5_fu_140;
reg    ap_block_state1;
reg    v236_read_local;
reg    v224_0_ce1_local;
reg   [13:0] v224_0_address1_local;
reg    v224_0_ce0_local;
reg   [13:0] v224_0_address0_local;
reg    v224_1_ce1_local;
reg   [13:0] v224_1_address1_local;
reg    v224_1_ce0_local;
reg   [13:0] v224_1_address0_local;
reg    v224_2_ce1_local;
reg   [13:0] v224_2_address1_local;
reg    v224_2_ce0_local;
reg   [13:0] v224_2_address0_local;
reg    v224_3_ce1_local;
reg   [13:0] v224_3_address1_local;
reg    v224_3_ce0_local;
reg   [13:0] v224_3_address0_local;
wire   [6:0] lshr_ln_fu_872_p4;
wire   [6:0] mul_ln38_fu_886_p0;
wire   [8:0] mul_ln38_fu_886_p1;
wire   [5:0] lshr_ln31_1_fu_892_p4;
wire   [11:0] tmp_39_fu_926_p3;
wire   [13:0] p_shl1_fu_918_p3;
wire   [13:0] p_shl843_fu_934_p1;
wire   [13:0] empty_fu_938_p2;
wire   [13:0] empty_250_fu_944_p2;
wire   [11:0] tmp_40_fu_975_p3;
wire   [13:0] p_shl2_fu_967_p3;
wire   [13:0] p_shl841_fu_983_p1;
wire   [13:0] empty_255_fu_987_p2;
wire   [13:0] empty_256_fu_993_p2;
wire   [31:0] v11_fu_1044_p2;
wire   [31:0] v11_fu_1044_p4;
wire   [31:0] v11_fu_1044_p6;
wire   [31:0] v11_fu_1044_p8;
wire   [31:0] v11_fu_1044_p9;
wire   [31:0] v24_fu_1083_p2;
wire   [31:0] v24_fu_1083_p4;
wire   [31:0] v24_fu_1083_p6;
wire   [31:0] v24_fu_1083_p8;
wire   [31:0] v24_fu_1083_p9;
wire   [11:0] tmp_41_fu_1113_p3;
wire   [13:0] p_shl3_fu_1106_p3;
wire   [13:0] p_shl839_fu_1120_p1;
wire   [13:0] empty_262_fu_1124_p2;
wire   [13:0] empty_263_fu_1130_p2;
wire   [11:0] tmp_42_fu_1150_p3;
wire   [13:0] p_shl4_fu_1143_p3;
wire   [13:0] p_shl837_fu_1157_p1;
wire   [13:0] empty_269_fu_1161_p2;
wire   [13:0] empty_270_fu_1167_p2;
wire   [31:0] v35_2_fu_1208_p2;
wire   [31:0] v35_2_fu_1208_p4;
wire   [31:0] v35_2_fu_1208_p6;
wire   [31:0] v35_2_fu_1208_p8;
wire   [31:0] v35_2_fu_1208_p9;
wire   [31:0] v46_2_fu_1247_p2;
wire   [31:0] v46_2_fu_1247_p4;
wire   [31:0] v46_2_fu_1247_p6;
wire   [31:0] v46_2_fu_1247_p8;
wire   [31:0] v46_2_fu_1247_p9;
wire   [11:0] tmp_43_fu_1277_p3;
wire   [13:0] p_shl5_fu_1270_p3;
wire   [13:0] p_shl835_fu_1284_p1;
wire   [13:0] empty_276_fu_1288_p2;
wire   [13:0] empty_277_fu_1294_p2;
wire   [11:0] tmp_44_fu_1314_p3;
wire   [13:0] p_shl6_fu_1307_p3;
wire   [13:0] p_shl833_fu_1321_p1;
wire   [13:0] empty_283_fu_1325_p2;
wire   [13:0] empty_284_fu_1331_p2;
wire   [31:0] v57_2_fu_1372_p2;
wire   [31:0] v57_2_fu_1372_p4;
wire   [31:0] v57_2_fu_1372_p6;
wire   [31:0] v57_2_fu_1372_p8;
wire   [31:0] v57_2_fu_1372_p9;
wire   [31:0] v68_2_fu_1411_p2;
wire   [31:0] v68_2_fu_1411_p4;
wire   [31:0] v68_2_fu_1411_p6;
wire   [31:0] v68_2_fu_1411_p8;
wire   [31:0] v68_2_fu_1411_p9;
wire   [11:0] tmp_45_fu_1441_p3;
wire   [13:0] p_shl7_fu_1434_p3;
wire   [13:0] p_shl831_fu_1448_p1;
wire   [13:0] empty_290_fu_1452_p2;
wire   [13:0] empty_291_fu_1458_p2;
wire   [11:0] tmp_46_fu_1478_p3;
wire   [13:0] p_shl8_fu_1471_p3;
wire   [13:0] p_shl829_fu_1485_p1;
wire   [13:0] empty_297_fu_1489_p2;
wire   [13:0] empty_298_fu_1495_p2;
wire   [31:0] v79_2_fu_1536_p2;
wire   [31:0] v79_2_fu_1536_p4;
wire   [31:0] v79_2_fu_1536_p6;
wire   [31:0] v79_2_fu_1536_p8;
wire   [31:0] v79_2_fu_1536_p9;
wire   [31:0] v90_2_fu_1575_p2;
wire   [31:0] v90_2_fu_1575_p4;
wire   [31:0] v90_2_fu_1575_p6;
wire   [31:0] v90_2_fu_1575_p8;
wire   [31:0] v90_2_fu_1575_p9;
wire   [11:0] tmp_47_fu_1605_p3;
wire   [13:0] p_shl9_fu_1598_p3;
wire   [13:0] p_shl827_fu_1612_p1;
wire   [13:0] empty_304_fu_1616_p2;
wire   [13:0] empty_305_fu_1622_p2;
wire   [11:0] tmp_48_fu_1642_p3;
wire   [13:0] p_shl10_fu_1635_p3;
wire   [13:0] p_shl825_fu_1649_p1;
wire   [13:0] empty_310_fu_1653_p2;
wire   [13:0] empty_311_fu_1659_p2;
wire   [7:0] mul_ln34_fu_1688_p0;
wire   [8:0] mul_ln34_fu_1688_p1;
wire   [7:0] tmp_s_fu_1694_p3;
wire   [7:0] mul_ln49_fu_1705_p0;
wire   [8:0] mul_ln49_fu_1705_p1;
wire   [7:0] mul_ln62_fu_1714_p0;
wire   [8:0] mul_ln62_fu_1714_p1;
wire   [7:0] mul_ln75_fu_1723_p0;
wire   [8:0] mul_ln75_fu_1723_p1;
wire   [7:0] mul_ln88_fu_1732_p0;
wire   [8:0] mul_ln88_fu_1732_p1;
wire   [7:0] mul_ln101_fu_1741_p0;
wire   [8:0] mul_ln101_fu_1741_p1;
wire   [7:0] mul_ln114_fu_1750_p0;
wire   [8:0] mul_ln114_fu_1750_p1;
wire   [7:0] mul_ln127_fu_1759_p0;
wire   [8:0] mul_ln127_fu_1759_p1;
wire   [7:0] mul_ln140_fu_1768_p0;
wire   [8:0] mul_ln140_fu_1768_p1;
wire   [31:0] v_fu_1790_p2;
wire   [31:0] v_fu_1790_p4;
wire   [31:0] v_fu_1790_p6;
wire   [31:0] v_fu_1790_p8;
wire   [31:0] v_fu_1790_p9;
wire   [31:0] v11_1_fu_1829_p2;
wire   [31:0] v11_1_fu_1829_p4;
wire   [31:0] v11_1_fu_1829_p6;
wire   [31:0] v11_1_fu_1829_p8;
wire   [31:0] v11_1_fu_1829_p9;
wire   [11:0] tmp_49_fu_1859_p3;
wire   [13:0] p_shl11_fu_1852_p3;
wire   [13:0] p_shl823_fu_1866_p1;
wire   [13:0] empty_317_fu_1870_p2;
wire   [13:0] empty_318_fu_1876_p2;
wire   [11:0] tmp_50_fu_1896_p3;
wire   [13:0] p_shl12_fu_1889_p3;
wire   [13:0] p_shl821_fu_1903_p1;
wire   [13:0] empty_324_fu_1907_p2;
wire   [13:0] empty_325_fu_1913_p2;
wire   [31:0] v24_1_fu_1954_p2;
wire   [31:0] v24_1_fu_1954_p4;
wire   [31:0] v24_1_fu_1954_p6;
wire   [31:0] v24_1_fu_1954_p8;
wire   [31:0] v24_1_fu_1954_p9;
wire   [31:0] v35_1_fu_1993_p2;
wire   [31:0] v35_1_fu_1993_p4;
wire   [31:0] v35_1_fu_1993_p6;
wire   [31:0] v35_1_fu_1993_p8;
wire   [31:0] v35_1_fu_1993_p9;
wire   [11:0] tmp_51_fu_2023_p3;
wire   [13:0] p_shl13_fu_2016_p3;
wire   [13:0] p_shl819_fu_2030_p1;
wire   [13:0] empty_331_fu_2034_p2;
wire   [13:0] empty_332_fu_2040_p2;
wire   [11:0] tmp_52_fu_2060_p3;
wire   [13:0] p_shl14_fu_2053_p3;
wire   [13:0] p_shl817_fu_2067_p1;
wire   [13:0] empty_338_fu_2071_p2;
wire   [13:0] empty_339_fu_2077_p2;
wire   [31:0] v46_1_fu_2118_p2;
wire   [31:0] v46_1_fu_2118_p4;
wire   [31:0] v46_1_fu_2118_p6;
wire   [31:0] v46_1_fu_2118_p8;
wire   [31:0] v46_1_fu_2118_p9;
wire   [31:0] v57_1_fu_2157_p2;
wire   [31:0] v57_1_fu_2157_p4;
wire   [31:0] v57_1_fu_2157_p6;
wire   [31:0] v57_1_fu_2157_p8;
wire   [31:0] v57_1_fu_2157_p9;
wire   [11:0] tmp_53_fu_2187_p3;
wire   [13:0] p_shl15_fu_2180_p3;
wire   [13:0] p_shl815_fu_2194_p1;
wire   [13:0] empty_345_fu_2198_p2;
wire   [13:0] empty_346_fu_2204_p2;
wire   [11:0] tmp_54_fu_2224_p3;
wire   [13:0] p_shl16_fu_2217_p3;
wire   [13:0] p_shl813_fu_2231_p1;
wire   [13:0] empty_352_fu_2235_p2;
wire   [13:0] empty_353_fu_2241_p2;
wire   [31:0] v68_1_fu_2282_p2;
wire   [31:0] v68_1_fu_2282_p4;
wire   [31:0] v68_1_fu_2282_p6;
wire   [31:0] v68_1_fu_2282_p8;
wire   [31:0] v68_1_fu_2282_p9;
wire   [31:0] v79_1_fu_2321_p2;
wire   [31:0] v79_1_fu_2321_p4;
wire   [31:0] v79_1_fu_2321_p6;
wire   [31:0] v79_1_fu_2321_p8;
wire   [31:0] v79_1_fu_2321_p9;
wire   [11:0] tmp_55_fu_2351_p3;
wire   [13:0] p_shl17_fu_2344_p3;
wire   [13:0] p_shl811_fu_2358_p1;
wire   [13:0] empty_359_fu_2362_p2;
wire   [13:0] empty_360_fu_2368_p2;
wire   [11:0] tmp_56_fu_2388_p3;
wire   [13:0] p_shl_fu_2381_p3;
wire   [13:0] p_shl809_fu_2395_p1;
wire   [13:0] empty_366_fu_2399_p2;
wire   [13:0] empty_367_fu_2405_p2;
wire   [7:0] mul_ln34_1_fu_2421_p0;
wire   [8:0] mul_ln34_1_fu_2421_p1;
wire   [7:0] mul_ln49_1_fu_2430_p0;
wire   [8:0] mul_ln49_1_fu_2430_p1;
wire   [7:0] mul_ln62_1_fu_2439_p0;
wire   [8:0] mul_ln62_1_fu_2439_p1;
wire   [7:0] mul_ln75_1_fu_2448_p0;
wire   [8:0] mul_ln75_1_fu_2448_p1;
wire   [7:0] mul_ln88_1_fu_2457_p0;
wire   [8:0] mul_ln88_1_fu_2457_p1;
wire   [7:0] mul_ln101_1_fu_2466_p0;
wire   [8:0] mul_ln101_1_fu_2466_p1;
wire   [7:0] mul_ln114_1_fu_2475_p0;
wire   [8:0] mul_ln114_1_fu_2475_p1;
wire   [7:0] mul_ln127_1_fu_2484_p0;
wire   [8:0] mul_ln127_1_fu_2484_p1;
wire   [31:0] v90_1_fu_2506_p2;
wire   [31:0] v90_1_fu_2506_p4;
wire   [31:0] v90_1_fu_2506_p6;
wire   [31:0] v90_1_fu_2506_p8;
wire   [31:0] v90_1_fu_2506_p9;
wire   [7:0] mul_ln140_1_fu_2532_p0;
wire   [8:0] mul_ln140_1_fu_2532_p1;
wire   [31:0] v101_1_fu_2554_p2;
wire   [31:0] v101_1_fu_2554_p4;
wire   [31:0] v101_1_fu_2554_p6;
wire   [31:0] v101_1_fu_2554_p8;
wire   [31:0] v101_1_fu_2554_p9;
reg   [31:0] grp_fu_3325_p0;
reg   [31:0] grp_fu_3325_p1;
reg    grp_fu_3325_ce;
reg   [31:0] grp_fu_3329_p0;
reg   [31:0] grp_fu_3329_p1;
reg    grp_fu_3329_ce;
reg   [31:0] grp_fu_3333_p0;
reg   [31:0] grp_fu_3333_p1;
reg    grp_fu_3333_ce;
reg   [13:0] ap_NS_fsm;
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
reg    ap_ST_fsm_state14_blk;
wire   [15:0] mul_ln101_1_fu_2466_p00;
wire   [15:0] mul_ln101_fu_1741_p00;
wire   [15:0] mul_ln114_1_fu_2475_p00;
wire   [15:0] mul_ln114_fu_1750_p00;
wire   [15:0] mul_ln127_1_fu_2484_p00;
wire   [15:0] mul_ln127_fu_1759_p00;
wire   [15:0] mul_ln140_1_fu_2532_p00;
wire   [15:0] mul_ln140_fu_1768_p00;
wire   [15:0] mul_ln34_1_fu_2421_p00;
wire   [15:0] mul_ln34_fu_1688_p00;
wire   [14:0] mul_ln38_fu_886_p00;
wire   [15:0] mul_ln49_1_fu_2430_p00;
wire   [15:0] mul_ln49_fu_1705_p00;
wire   [15:0] mul_ln62_1_fu_2439_p00;
wire   [15:0] mul_ln62_fu_1714_p00;
wire   [15:0] mul_ln75_1_fu_2448_p00;
wire   [15:0] mul_ln75_fu_1723_p00;
wire   [15:0] mul_ln88_1_fu_2457_p00;
wire   [15:0] mul_ln88_fu_1732_p00;
wire   [1:0] v11_fu_1044_p1;
wire   [1:0] v11_fu_1044_p3;
wire  signed [1:0] v11_fu_1044_p5;
wire  signed [1:0] v11_fu_1044_p7;
wire   [1:0] v24_fu_1083_p1;
wire   [1:0] v24_fu_1083_p3;
wire  signed [1:0] v24_fu_1083_p5;
wire  signed [1:0] v24_fu_1083_p7;
wire   [1:0] v35_2_fu_1208_p1;
wire   [1:0] v35_2_fu_1208_p3;
wire  signed [1:0] v35_2_fu_1208_p5;
wire  signed [1:0] v35_2_fu_1208_p7;
wire   [1:0] v46_2_fu_1247_p1;
wire   [1:0] v46_2_fu_1247_p3;
wire  signed [1:0] v46_2_fu_1247_p5;
wire  signed [1:0] v46_2_fu_1247_p7;
wire   [1:0] v57_2_fu_1372_p1;
wire   [1:0] v57_2_fu_1372_p3;
wire  signed [1:0] v57_2_fu_1372_p5;
wire  signed [1:0] v57_2_fu_1372_p7;
wire   [1:0] v68_2_fu_1411_p1;
wire   [1:0] v68_2_fu_1411_p3;
wire  signed [1:0] v68_2_fu_1411_p5;
wire  signed [1:0] v68_2_fu_1411_p7;
wire   [1:0] v79_2_fu_1536_p1;
wire   [1:0] v79_2_fu_1536_p3;
wire  signed [1:0] v79_2_fu_1536_p5;
wire  signed [1:0] v79_2_fu_1536_p7;
wire   [1:0] v90_2_fu_1575_p1;
wire   [1:0] v90_2_fu_1575_p3;
wire  signed [1:0] v90_2_fu_1575_p5;
wire  signed [1:0] v90_2_fu_1575_p7;
wire   [1:0] v_fu_1790_p1;
wire   [1:0] v_fu_1790_p3;
wire  signed [1:0] v_fu_1790_p5;
wire  signed [1:0] v_fu_1790_p7;
wire   [1:0] v11_1_fu_1829_p1;
wire   [1:0] v11_1_fu_1829_p3;
wire  signed [1:0] v11_1_fu_1829_p5;
wire  signed [1:0] v11_1_fu_1829_p7;
wire   [1:0] v24_1_fu_1954_p1;
wire   [1:0] v24_1_fu_1954_p3;
wire  signed [1:0] v24_1_fu_1954_p5;
wire  signed [1:0] v24_1_fu_1954_p7;
wire   [1:0] v35_1_fu_1993_p1;
wire   [1:0] v35_1_fu_1993_p3;
wire  signed [1:0] v35_1_fu_1993_p5;
wire  signed [1:0] v35_1_fu_1993_p7;
wire   [1:0] v46_1_fu_2118_p1;
wire   [1:0] v46_1_fu_2118_p3;
wire  signed [1:0] v46_1_fu_2118_p5;
wire  signed [1:0] v46_1_fu_2118_p7;
wire   [1:0] v57_1_fu_2157_p1;
wire   [1:0] v57_1_fu_2157_p3;
wire  signed [1:0] v57_1_fu_2157_p5;
wire  signed [1:0] v57_1_fu_2157_p7;
wire   [1:0] v68_1_fu_2282_p1;
wire   [1:0] v68_1_fu_2282_p3;
wire  signed [1:0] v68_1_fu_2282_p5;
wire  signed [1:0] v68_1_fu_2282_p7;
wire   [1:0] v79_1_fu_2321_p1;
wire   [1:0] v79_1_fu_2321_p3;
wire  signed [1:0] v79_1_fu_2321_p5;
wire  signed [1:0] v79_1_fu_2321_p7;
wire   [1:0] v90_1_fu_2506_p1;
wire   [1:0] v90_1_fu_2506_p3;
wire  signed [1:0] v90_1_fu_2506_p5;
wire  signed [1:0] v90_1_fu_2506_p7;
wire   [1:0] v101_1_fu_2554_p1;
wire   [1:0] v101_1_fu_2554_p3;
wire  signed [1:0] v101_1_fu_2554_p5;
wire  signed [1:0] v101_1_fu_2554_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 14'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_2_fu_780_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_210_fu_812_ap_start_reg = 1'b0;
#0 v5_fu_140 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_2 grp_kernel_2mm_node0_Pipeline_label_2_fu_780(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_2_fu_780_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_2_fu_780_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_2_fu_780_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_2_fu_780_ap_ready),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v229_d1),.v229_q1(v229_q1),.mul_ln38(mul_ln38_reg_2626),.v228_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v228_0_ce1),.v228_0_q1(v228_0_q1),.v228_1_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v228_1_ce1),.v228_1_q1(v228_1_q1),.mul_ln34(mul_ln34_reg_2983),.mul_ln49(mul_ln49_reg_2988),.mul_ln62(mul_ln62_reg_2993),.mul_ln75(mul_ln75_reg_2998),.mul_ln88(mul_ln88_reg_3003),.mul_ln101(mul_ln101_reg_3008),.mul_ln114(mul_ln114_reg_3013),.mul_ln127(mul_ln127_reg_3018),.mul_ln140(mul_ln140_reg_3023),.v4(v4),.cmp11(cmp11_reg_2654),.empty(trunc_ln31_1_reg_2620),.v11(v11_reg_2727),.v24(v24_reg_2732),.v35_2(v35_2_reg_2791),.v46_2(v46_2_reg_2796),.v57_2(v57_2_reg_2855),.v68_2(v68_2_reg_2860),.v79_2(v79_2_reg_2919),.v90_2(v90_2_reg_2924),.v101(v_reg_3028),.grp_fu_3325_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_780_grp_fu_3325_p_din0),.grp_fu_3325_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_780_grp_fu_3325_p_din1),.grp_fu_3325_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_780_grp_fu_3325_p_opcode),.grp_fu_3325_p_dout0(grp_fu_172_p_dout0),.grp_fu_3325_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_780_grp_fu_3325_p_ce),.grp_fu_3329_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_780_grp_fu_3329_p_din0),.grp_fu_3329_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_780_grp_fu_3329_p_din1),.grp_fu_3329_p_dout0(grp_fu_164_p_dout0),.grp_fu_3329_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_780_grp_fu_3329_p_ce),.grp_fu_3333_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_780_grp_fu_3333_p_din0),.grp_fu_3333_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_780_grp_fu_3333_p_din1),.grp_fu_3333_p_dout0(grp_fu_168_p_dout0),.grp_fu_3333_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_780_grp_fu_3333_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_210 grp_kernel_2mm_node0_Pipeline_label_210_fu_812(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_210_fu_812_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_210_fu_812_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_210_fu_812_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_210_fu_812_ap_ready),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v229_d1),.v229_q1(v229_q1),.mul_ln38(mul_ln38_reg_2626),.v228_0_address0(grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v228_0_ce1),.v228_0_q1(v228_0_q1),.v228_1_address0(grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v228_1_ce1),.v228_1_q1(v228_1_q1),.mul_ln34_1(mul_ln34_1_reg_3270),.mul_ln49_1(mul_ln49_1_reg_3275),.mul_ln62_1(mul_ln62_1_reg_3280),.mul_ln75_1(mul_ln75_1_reg_3285),.mul_ln88_1(mul_ln88_1_reg_3290),.mul_ln101_1(mul_ln101_1_reg_3295),.mul_ln114_1(mul_ln114_1_reg_3300),.mul_ln127_1(mul_ln127_1_reg_3305),.mul_ln140_1(mul_ln140_1_reg_3315),.v4(v4),.cmp11(cmp11_reg_2654),.empty(trunc_ln31_1_reg_2620),.v11_1(v11_1_reg_3033),.v24_1(v24_1_reg_3092),.v35_1(v35_1_reg_3097),.v46_1(v46_1_reg_3156),.v57_1(v57_1_reg_3161),.v68_1(v68_1_reg_3220),.v79_1(v79_1_reg_3225),.v90_1(v90_1_reg_3310),.v101_1(v101_1_reg_3320),.grp_fu_3325_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_812_grp_fu_3325_p_din0),.grp_fu_3325_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_812_grp_fu_3325_p_din1),.grp_fu_3325_p_opcode(grp_kernel_2mm_node0_Pipeline_label_210_fu_812_grp_fu_3325_p_opcode),.grp_fu_3325_p_dout0(grp_fu_172_p_dout0),.grp_fu_3325_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_812_grp_fu_3325_p_ce),.grp_fu_3329_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_812_grp_fu_3329_p_din0),.grp_fu_3329_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_812_grp_fu_3329_p_din1),.grp_fu_3329_p_dout0(grp_fu_164_p_dout0),.grp_fu_3329_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_812_grp_fu_3329_p_ce),.grp_fu_3333_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_812_grp_fu_3333_p_din0),.grp_fu_3333_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_812_grp_fu_3333_p_din1),.grp_fu_3333_p_dout0(grp_fu_168_p_dout0),.grp_fu_3333_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_812_grp_fu_3333_p_ce));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U614(.din0(mul_ln38_fu_886_p0),.din1(mul_ln38_fu_886_p1),.dout(mul_ln38_fu_886_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U615(.din0(v11_fu_1044_p2),.din1(v11_fu_1044_p4),.din2(v11_fu_1044_p6),.din3(v11_fu_1044_p8),.def(v11_fu_1044_p9),.sel(trunc_ln31_reg_2598),.dout(v11_fu_1044_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U616(.din0(v24_fu_1083_p2),.din1(v24_fu_1083_p4),.din2(v24_fu_1083_p6),.din3(v24_fu_1083_p8),.def(v24_fu_1083_p9),.sel(trunc_ln31_reg_2598),.dout(v24_fu_1083_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U617(.din0(v35_2_fu_1208_p2),.din1(v35_2_fu_1208_p4),.din2(v35_2_fu_1208_p6),.din3(v35_2_fu_1208_p8),.def(v35_2_fu_1208_p9),.sel(trunc_ln31_reg_2598),.dout(v35_2_fu_1208_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U618(.din0(v46_2_fu_1247_p2),.din1(v46_2_fu_1247_p4),.din2(v46_2_fu_1247_p6),.din3(v46_2_fu_1247_p8),.def(v46_2_fu_1247_p9),.sel(trunc_ln31_reg_2598),.dout(v46_2_fu_1247_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U619(.din0(v57_2_fu_1372_p2),.din1(v57_2_fu_1372_p4),.din2(v57_2_fu_1372_p6),.din3(v57_2_fu_1372_p8),.def(v57_2_fu_1372_p9),.sel(trunc_ln31_reg_2598),.dout(v57_2_fu_1372_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U620(.din0(v68_2_fu_1411_p2),.din1(v68_2_fu_1411_p4),.din2(v68_2_fu_1411_p6),.din3(v68_2_fu_1411_p8),.def(v68_2_fu_1411_p9),.sel(trunc_ln31_reg_2598),.dout(v68_2_fu_1411_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U621(.din0(v79_2_fu_1536_p2),.din1(v79_2_fu_1536_p4),.din2(v79_2_fu_1536_p6),.din3(v79_2_fu_1536_p8),.def(v79_2_fu_1536_p9),.sel(trunc_ln31_reg_2598),.dout(v79_2_fu_1536_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U622(.din0(v90_2_fu_1575_p2),.din1(v90_2_fu_1575_p4),.din2(v90_2_fu_1575_p6),.din3(v90_2_fu_1575_p8),.def(v90_2_fu_1575_p9),.sel(trunc_ln31_reg_2598),.dout(v90_2_fu_1575_p11));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U623(.din0(mul_ln34_fu_1688_p0),.din1(mul_ln34_fu_1688_p1),.dout(mul_ln34_fu_1688_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U624(.din0(mul_ln49_fu_1705_p0),.din1(mul_ln49_fu_1705_p1),.dout(mul_ln49_fu_1705_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U625(.din0(mul_ln62_fu_1714_p0),.din1(mul_ln62_fu_1714_p1),.dout(mul_ln62_fu_1714_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U626(.din0(mul_ln75_fu_1723_p0),.din1(mul_ln75_fu_1723_p1),.dout(mul_ln75_fu_1723_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U627(.din0(mul_ln88_fu_1732_p0),.din1(mul_ln88_fu_1732_p1),.dout(mul_ln88_fu_1732_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U628(.din0(mul_ln101_fu_1741_p0),.din1(mul_ln101_fu_1741_p1),.dout(mul_ln101_fu_1741_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U629(.din0(mul_ln114_fu_1750_p0),.din1(mul_ln114_fu_1750_p1),.dout(mul_ln114_fu_1750_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U630(.din0(mul_ln127_fu_1759_p0),.din1(mul_ln127_fu_1759_p1),.dout(mul_ln127_fu_1759_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U631(.din0(mul_ln140_fu_1768_p0),.din1(mul_ln140_fu_1768_p1),.dout(mul_ln140_fu_1768_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U632(.din0(v_fu_1790_p2),.din1(v_fu_1790_p4),.din2(v_fu_1790_p6),.din3(v_fu_1790_p8),.def(v_fu_1790_p9),.sel(trunc_ln31_reg_2598),.dout(v_fu_1790_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U633(.din0(v11_1_fu_1829_p2),.din1(v11_1_fu_1829_p4),.din2(v11_1_fu_1829_p6),.din3(v11_1_fu_1829_p8),.def(v11_1_fu_1829_p9),.sel(trunc_ln31_reg_2598),.dout(v11_1_fu_1829_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U634(.din0(v24_1_fu_1954_p2),.din1(v24_1_fu_1954_p4),.din2(v24_1_fu_1954_p6),.din3(v24_1_fu_1954_p8),.def(v24_1_fu_1954_p9),.sel(trunc_ln31_reg_2598),.dout(v24_1_fu_1954_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U635(.din0(v35_1_fu_1993_p2),.din1(v35_1_fu_1993_p4),.din2(v35_1_fu_1993_p6),.din3(v35_1_fu_1993_p8),.def(v35_1_fu_1993_p9),.sel(trunc_ln31_reg_2598),.dout(v35_1_fu_1993_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U636(.din0(v46_1_fu_2118_p2),.din1(v46_1_fu_2118_p4),.din2(v46_1_fu_2118_p6),.din3(v46_1_fu_2118_p8),.def(v46_1_fu_2118_p9),.sel(trunc_ln31_reg_2598),.dout(v46_1_fu_2118_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U637(.din0(v57_1_fu_2157_p2),.din1(v57_1_fu_2157_p4),.din2(v57_1_fu_2157_p6),.din3(v57_1_fu_2157_p8),.def(v57_1_fu_2157_p9),.sel(trunc_ln31_reg_2598),.dout(v57_1_fu_2157_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U638(.din0(v68_1_fu_2282_p2),.din1(v68_1_fu_2282_p4),.din2(v68_1_fu_2282_p6),.din3(v68_1_fu_2282_p8),.def(v68_1_fu_2282_p9),.sel(trunc_ln31_reg_2598),.dout(v68_1_fu_2282_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U639(.din0(v79_1_fu_2321_p2),.din1(v79_1_fu_2321_p4),.din2(v79_1_fu_2321_p6),.din3(v79_1_fu_2321_p8),.def(v79_1_fu_2321_p9),.sel(trunc_ln31_reg_2598),.dout(v79_1_fu_2321_p11));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U640(.din0(mul_ln34_1_fu_2421_p0),.din1(mul_ln34_1_fu_2421_p1),.dout(mul_ln34_1_fu_2421_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U641(.din0(mul_ln49_1_fu_2430_p0),.din1(mul_ln49_1_fu_2430_p1),.dout(mul_ln49_1_fu_2430_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U642(.din0(mul_ln62_1_fu_2439_p0),.din1(mul_ln62_1_fu_2439_p1),.dout(mul_ln62_1_fu_2439_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U643(.din0(mul_ln75_1_fu_2448_p0),.din1(mul_ln75_1_fu_2448_p1),.dout(mul_ln75_1_fu_2448_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U644(.din0(mul_ln88_1_fu_2457_p0),.din1(mul_ln88_1_fu_2457_p1),.dout(mul_ln88_1_fu_2457_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U645(.din0(mul_ln101_1_fu_2466_p0),.din1(mul_ln101_1_fu_2466_p1),.dout(mul_ln101_1_fu_2466_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U646(.din0(mul_ln114_1_fu_2475_p0),.din1(mul_ln114_1_fu_2475_p1),.dout(mul_ln114_1_fu_2475_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U647(.din0(mul_ln127_1_fu_2484_p0),.din1(mul_ln127_1_fu_2484_p1),.dout(mul_ln127_1_fu_2484_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U648(.din0(v90_1_fu_2506_p2),.din1(v90_1_fu_2506_p4),.din2(v90_1_fu_2506_p6),.din3(v90_1_fu_2506_p8),.def(v90_1_fu_2506_p9),.sel(trunc_ln31_reg_2598),.dout(v90_1_fu_2506_p11));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U649(.din0(mul_ln140_1_fu_2532_p0),.din1(mul_ln140_1_fu_2532_p1),.dout(mul_ln140_1_fu_2532_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U650(.din0(v101_1_fu_2554_p2),.din1(v101_1_fu_2554_p4),.din2(v101_1_fu_2554_p6),.din3(v101_1_fu_2554_p8),.def(v101_1_fu_2554_p9),.sel(trunc_ln31_reg_2598),.dout(v101_1_fu_2554_p11));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_210_fu_812_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state13)) begin
            grp_kernel_2mm_node0_Pipeline_label_210_fu_812_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_210_fu_812_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_210_fu_812_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_2_fu_780_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_780_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_780_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_780_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_140 <= 8'd0;
    end else if (((icmp_ln32_fu_912_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v5_fu_140 <= add_ln31_reg_2593;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln31_fu_852_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v6_reg_768 <= 8'd0;
    end else if (((grp_kernel_2mm_node0_Pipeline_label_210_fu_812_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
        v6_reg_768 <= add_ln32_1_reg_2722;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln31_reg_2593 <= add_ln31_fu_858_p2;
        cmp11_reg_2654 <= cmp11_fu_906_p2;
        mul_ln38_reg_2626 <= mul_ln38_fu_886_p2;
        trunc_ln31_1_reg_2620 <= trunc_ln31_1_fu_868_p1;
        trunc_ln31_reg_2598 <= trunc_ln31_fu_864_p1;
        zext_ln31_reg_2632[5 : 0] <= zext_ln31_fu_902_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_1_reg_2722 <= add_ln32_1_fu_1018_p2;
        empty_261_reg_2708 <= empty_261_fu_1006_p2;
        empty_268_reg_2715 <= empty_268_fu_1012_p2;
        tmp_reg_2683 <= {{v6_reg_768[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        add_ln32_reg_2912 <= add_ln32_fu_1514_p2;
        empty_303_reg_2905 <= empty_303_fu_1508_p2;
        v57_2_reg_2855 <= v57_2_fu_1372_p11;
        v68_2_reg_2860 <= v68_2_fu_1411_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        empty_275_reg_2777 <= empty_275_fu_1180_p2;
        empty_282_reg_2784 <= empty_282_fu_1186_p2;
        v11_reg_2727 <= v11_fu_1044_p11;
        v24_reg_2732 <= v24_fu_1083_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        empty_289_reg_2841 <= empty_289_fu_1344_p2;
        empty_296_reg_2848 <= empty_296_fu_1350_p2;
        v35_2_reg_2791 <= v35_2_fu_1208_p11;
        v46_2_reg_2796 <= v46_2_fu_1247_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        empty_316_reg_2969 <= empty_316_fu_1672_p2;
        empty_323_reg_2976 <= empty_323_fu_1678_p2;
        v79_2_reg_2919 <= v79_2_fu_1536_p11;
        v90_2_reg_2924 <= v90_2_fu_1575_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        empty_330_reg_3078 <= empty_330_fu_1926_p2;
        empty_337_reg_3085 <= empty_337_fu_1932_p2;
        mul_ln101_reg_3008 <= mul_ln101_fu_1741_p2;
        mul_ln114_reg_3013 <= mul_ln114_fu_1750_p2;
        mul_ln127_reg_3018 <= mul_ln127_fu_1759_p2;
        mul_ln140_reg_3023 <= mul_ln140_fu_1768_p2;
        mul_ln34_reg_2983 <= mul_ln34_fu_1688_p2;
        mul_ln49_reg_2988 <= mul_ln49_fu_1705_p2;
        mul_ln62_reg_2993 <= mul_ln62_fu_1714_p2;
        mul_ln75_reg_2998 <= mul_ln75_fu_1723_p2;
        mul_ln88_reg_3003 <= mul_ln88_fu_1732_p2;
        v11_1_reg_3033 <= v11_1_fu_1829_p11;
        v_reg_3028 <= v_fu_1790_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        empty_344_reg_3142 <= empty_344_fu_2090_p2;
        empty_351_reg_3149 <= empty_351_fu_2096_p2;
        v24_1_reg_3092 <= v24_1_fu_1954_p11;
        v35_1_reg_3097 <= v35_1_fu_1993_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        empty_358_reg_3206 <= empty_358_fu_2254_p2;
        empty_365_reg_3213 <= empty_365_fu_2260_p2;
        v46_1_reg_3156 <= v46_1_fu_2118_p11;
        v57_1_reg_3161 <= v57_1_fu_2157_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        mul_ln101_1_reg_3295 <= mul_ln101_1_fu_2466_p2;
        mul_ln114_1_reg_3300 <= mul_ln114_1_fu_2475_p2;
        mul_ln127_1_reg_3305 <= mul_ln127_1_fu_2484_p2;
        mul_ln140_1_reg_3315 <= mul_ln140_1_fu_2532_p2;
        mul_ln34_1_reg_3270 <= mul_ln34_1_fu_2421_p2;
        mul_ln49_1_reg_3275 <= mul_ln49_1_fu_2430_p2;
        mul_ln62_1_reg_3280 <= mul_ln62_1_fu_2439_p2;
        mul_ln75_1_reg_3285 <= mul_ln75_1_fu_2448_p2;
        mul_ln88_1_reg_3290 <= mul_ln88_1_fu_2457_p2;
        v101_1_reg_3320 <= v101_1_fu_2554_p11;
        v90_1_reg_3310 <= v90_1_fu_2506_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v68_1_reg_3220 <= v68_1_fu_2282_p11;
        v79_1_reg_3225 <= v79_1_fu_2321_p11;
    end
end
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_780_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_210_fu_812_ap_done == 1'b0)) begin
        ap_ST_fsm_state14_blk = 1'b1;
    end else begin
        ap_ST_fsm_state14_blk = 1'b0;
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
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) | ((icmp_ln31_fu_852_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
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
    if (((icmp_ln31_fu_852_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3325_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_812_grp_fu_3325_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3325_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_780_grp_fu_3325_p_ce;
    end else begin
        grp_fu_3325_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3325_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_812_grp_fu_3325_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3325_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_780_grp_fu_3325_p_din0;
    end else begin
        grp_fu_3325_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3325_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_812_grp_fu_3325_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3325_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_780_grp_fu_3325_p_din1;
    end else begin
        grp_fu_3325_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3329_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_812_grp_fu_3329_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3329_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_780_grp_fu_3329_p_ce;
    end else begin
        grp_fu_3329_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3329_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_812_grp_fu_3329_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3329_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_780_grp_fu_3329_p_din0;
    end else begin
        grp_fu_3329_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3329_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_812_grp_fu_3329_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3329_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_780_grp_fu_3329_p_din1;
    end else begin
        grp_fu_3329_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3333_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_812_grp_fu_3333_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3333_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_780_grp_fu_3333_p_ce;
    end else begin
        grp_fu_3333_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3333_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_812_grp_fu_3333_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3333_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_780_grp_fu_3333_p_din0;
    end else begin
        grp_fu_3333_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3333_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_812_grp_fu_3333_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3333_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_780_grp_fu_3333_p_din1;
    end else begin
        grp_fu_3333_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_0_address0_local = p_cast751_fu_2410_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_0_address0_local = p_cast749_fu_2246_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_0_address0_local = p_cast747_fu_2082_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_0_address0_local = p_cast745_fu_1918_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_0_address0_local = p_cast743_fu_1664_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_0_address0_local = p_cast741_fu_1500_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_0_address0_local = p_cast739_fu_1336_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_0_address0_local = p_cast737_fu_1172_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_0_address0_local = p_cast_fu_998_p1;
    end else begin
        v224_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_0_address1_local = p_cast750_fu_2373_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_0_address1_local = p_cast748_fu_2209_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_0_address1_local = p_cast746_fu_2045_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_0_address1_local = p_cast744_fu_1881_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_0_address1_local = p_cast742_fu_1627_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_0_address1_local = p_cast740_fu_1463_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_0_address1_local = p_cast738_fu_1299_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_0_address1_local = p_cast736_fu_1135_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_0_address1_local = p_cast735_fu_949_p1;
    end else begin
        v224_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_780_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        v224_0_ce0_local = 1'b1;
    end else begin
        v224_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_780_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        v224_0_ce1_local = 1'b1;
    end else begin
        v224_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_1_address0_local = p_cast751_fu_2410_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_1_address0_local = p_cast749_fu_2246_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_1_address0_local = p_cast747_fu_2082_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_1_address0_local = p_cast745_fu_1918_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_1_address0_local = p_cast743_fu_1664_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_1_address0_local = p_cast741_fu_1500_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_1_address0_local = p_cast739_fu_1336_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_1_address0_local = p_cast737_fu_1172_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_1_address0_local = p_cast_fu_998_p1;
    end else begin
        v224_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_1_address1_local = p_cast750_fu_2373_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_1_address1_local = p_cast748_fu_2209_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_1_address1_local = p_cast746_fu_2045_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_1_address1_local = p_cast744_fu_1881_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_1_address1_local = p_cast742_fu_1627_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_1_address1_local = p_cast740_fu_1463_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_1_address1_local = p_cast738_fu_1299_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_1_address1_local = p_cast736_fu_1135_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_1_address1_local = p_cast735_fu_949_p1;
    end else begin
        v224_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_780_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        v224_1_ce0_local = 1'b1;
    end else begin
        v224_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_780_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        v224_1_ce1_local = 1'b1;
    end else begin
        v224_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_2_address0_local = p_cast751_fu_2410_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_2_address0_local = p_cast749_fu_2246_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_2_address0_local = p_cast747_fu_2082_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_2_address0_local = p_cast745_fu_1918_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_2_address0_local = p_cast743_fu_1664_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_2_address0_local = p_cast741_fu_1500_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_2_address0_local = p_cast739_fu_1336_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_2_address0_local = p_cast737_fu_1172_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_2_address0_local = p_cast_fu_998_p1;
    end else begin
        v224_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_2_address1_local = p_cast750_fu_2373_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_2_address1_local = p_cast748_fu_2209_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_2_address1_local = p_cast746_fu_2045_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_2_address1_local = p_cast744_fu_1881_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_2_address1_local = p_cast742_fu_1627_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_2_address1_local = p_cast740_fu_1463_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_2_address1_local = p_cast738_fu_1299_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_2_address1_local = p_cast736_fu_1135_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_2_address1_local = p_cast735_fu_949_p1;
    end else begin
        v224_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_780_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        v224_2_ce0_local = 1'b1;
    end else begin
        v224_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_780_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        v224_2_ce1_local = 1'b1;
    end else begin
        v224_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_3_address0_local = p_cast751_fu_2410_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_3_address0_local = p_cast749_fu_2246_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_3_address0_local = p_cast747_fu_2082_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_3_address0_local = p_cast745_fu_1918_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_3_address0_local = p_cast743_fu_1664_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_3_address0_local = p_cast741_fu_1500_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_3_address0_local = p_cast739_fu_1336_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_3_address0_local = p_cast737_fu_1172_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_3_address0_local = p_cast_fu_998_p1;
    end else begin
        v224_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_3_address1_local = p_cast750_fu_2373_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_3_address1_local = p_cast748_fu_2209_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_3_address1_local = p_cast746_fu_2045_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_3_address1_local = p_cast744_fu_1881_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_3_address1_local = p_cast742_fu_1627_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_3_address1_local = p_cast740_fu_1463_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_3_address1_local = p_cast738_fu_1299_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_3_address1_local = p_cast736_fu_1135_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_3_address1_local = p_cast735_fu_949_p1;
    end else begin
        v224_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_780_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        v224_3_ce0_local = 1'b1;
    end else begin
        v224_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_780_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        v224_3_ce1_local = 1'b1;
    end else begin
        v224_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_0_address0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v228_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_0_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v228_0_address0;
    end else begin
        v228_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_0_address1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v228_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_0_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v228_0_address1;
    end else begin
        v228_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v228_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v228_0_ce0;
    end else begin
        v228_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v228_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v228_0_ce1;
    end else begin
        v228_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_1_address0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v228_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_1_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v228_1_address0;
    end else begin
        v228_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_1_address1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v228_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_1_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v228_1_address1;
    end else begin
        v228_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v228_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v228_1_ce0;
    end else begin
        v228_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v228_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v228_1_ce1;
    end else begin
        v228_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v229_address0;
    end else begin
        v229_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v229_address1;
    end else begin
        v229_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v229_ce0;
    end else begin
        v229_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v229_ce1;
    end else begin
        v229_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v229_d0;
    end else begin
        v229_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v229_d1;
    end else begin
        v229_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v229_we0;
    end else begin
        v229_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_812_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_780_v229_we1;
    end else begin
        v229_we1 = 1'b0;
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
            if (((icmp_ln31_fu_852_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln32_fu_912_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_780_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_210_fu_812_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln31_fu_858_p2 = (v5_fu_140 + 8'd1);
assign add_ln32_1_fu_1018_p2 = (v6_reg_768 + 8'd18);
assign add_ln32_fu_1514_p2 = (v6_reg_768 + 8'd9);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
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
assign cmp11_fu_906_p2 = ((v5_fu_140 == 8'd0) ? 1'b1 : 1'b0);
assign empty_250_fu_944_p2 = (empty_fu_938_p2 + zext_ln31_reg_2632);
assign empty_255_fu_987_p2 = (p_shl2_fu_967_p3 - p_shl841_fu_983_p1);
assign empty_256_fu_993_p2 = (empty_255_fu_987_p2 + zext_ln31_reg_2632);
assign empty_261_fu_1006_p2 = (v6_reg_768 + 8'd2);
assign empty_262_fu_1124_p2 = (p_shl3_fu_1106_p3 - p_shl839_fu_1120_p1);
assign empty_263_fu_1130_p2 = (empty_262_fu_1124_p2 + zext_ln31_reg_2632);
assign empty_268_fu_1012_p2 = (v6_reg_768 + 8'd3);
assign empty_269_fu_1161_p2 = (p_shl4_fu_1143_p3 - p_shl837_fu_1157_p1);
assign empty_270_fu_1167_p2 = (empty_269_fu_1161_p2 + zext_ln31_reg_2632);
assign empty_275_fu_1180_p2 = (v6_reg_768 + 8'd4);
assign empty_276_fu_1288_p2 = (p_shl5_fu_1270_p3 - p_shl835_fu_1284_p1);
assign empty_277_fu_1294_p2 = (empty_276_fu_1288_p2 + zext_ln31_reg_2632);
assign empty_282_fu_1186_p2 = (v6_reg_768 + 8'd5);
assign empty_283_fu_1325_p2 = (p_shl6_fu_1307_p3 - p_shl833_fu_1321_p1);
assign empty_284_fu_1331_p2 = (empty_283_fu_1325_p2 + zext_ln31_reg_2632);
assign empty_289_fu_1344_p2 = (v6_reg_768 + 8'd6);
assign empty_290_fu_1452_p2 = (p_shl7_fu_1434_p3 - p_shl831_fu_1448_p1);
assign empty_291_fu_1458_p2 = (empty_290_fu_1452_p2 + zext_ln31_reg_2632);
assign empty_296_fu_1350_p2 = (v6_reg_768 + 8'd7);
assign empty_297_fu_1489_p2 = (p_shl8_fu_1471_p3 - p_shl829_fu_1485_p1);
assign empty_298_fu_1495_p2 = (empty_297_fu_1489_p2 + zext_ln31_reg_2632);
assign empty_303_fu_1508_p2 = (v6_reg_768 + 8'd8);
assign empty_304_fu_1616_p2 = (p_shl9_fu_1598_p3 - p_shl827_fu_1612_p1);
assign empty_305_fu_1622_p2 = (empty_304_fu_1616_p2 + zext_ln31_reg_2632);
assign empty_310_fu_1653_p2 = (p_shl10_fu_1635_p3 - p_shl825_fu_1649_p1);
assign empty_311_fu_1659_p2 = (empty_310_fu_1653_p2 + zext_ln31_reg_2632);
assign empty_316_fu_1672_p2 = (v6_reg_768 + 8'd10);
assign empty_317_fu_1870_p2 = (p_shl11_fu_1852_p3 - p_shl823_fu_1866_p1);
assign empty_318_fu_1876_p2 = (empty_317_fu_1870_p2 + zext_ln31_reg_2632);
assign empty_323_fu_1678_p2 = (v6_reg_768 + 8'd11);
assign empty_324_fu_1907_p2 = (p_shl12_fu_1889_p3 - p_shl821_fu_1903_p1);
assign empty_325_fu_1913_p2 = (empty_324_fu_1907_p2 + zext_ln31_reg_2632);
assign empty_330_fu_1926_p2 = (v6_reg_768 + 8'd12);
assign empty_331_fu_2034_p2 = (p_shl13_fu_2016_p3 - p_shl819_fu_2030_p1);
assign empty_332_fu_2040_p2 = (empty_331_fu_2034_p2 + zext_ln31_reg_2632);
assign empty_337_fu_1932_p2 = (v6_reg_768 + 8'd13);
assign empty_338_fu_2071_p2 = (p_shl14_fu_2053_p3 - p_shl817_fu_2067_p1);
assign empty_339_fu_2077_p2 = (empty_338_fu_2071_p2 + zext_ln31_reg_2632);
assign empty_344_fu_2090_p2 = (v6_reg_768 + 8'd14);
assign empty_345_fu_2198_p2 = (p_shl15_fu_2180_p3 - p_shl815_fu_2194_p1);
assign empty_346_fu_2204_p2 = (empty_345_fu_2198_p2 + zext_ln31_reg_2632);
assign empty_351_fu_2096_p2 = (v6_reg_768 + 8'd15);
assign empty_352_fu_2235_p2 = (p_shl16_fu_2217_p3 - p_shl813_fu_2231_p1);
assign empty_353_fu_2241_p2 = (empty_352_fu_2235_p2 + zext_ln31_reg_2632);
assign empty_358_fu_2254_p2 = (v6_reg_768 + 8'd16);
assign empty_359_fu_2362_p2 = (p_shl17_fu_2344_p3 - p_shl811_fu_2358_p1);
assign empty_360_fu_2368_p2 = (empty_359_fu_2362_p2 + zext_ln31_reg_2632);
assign empty_365_fu_2260_p2 = (v6_reg_768 + 8'd17);
assign empty_366_fu_2399_p2 = (p_shl_fu_2381_p3 - p_shl809_fu_2395_p1);
assign empty_367_fu_2405_p2 = (empty_366_fu_2399_p2 + zext_ln31_reg_2632);
assign empty_fu_938_p2 = (p_shl1_fu_918_p3 - p_shl843_fu_934_p1);
assign grp_fu_164_p_ce = grp_fu_3329_ce;
assign grp_fu_164_p_din0 = grp_fu_3329_p0;
assign grp_fu_164_p_din1 = grp_fu_3329_p1;
assign grp_fu_168_p_ce = grp_fu_3333_ce;
assign grp_fu_168_p_din0 = grp_fu_3333_p0;
assign grp_fu_168_p_din1 = grp_fu_3333_p1;
assign grp_fu_172_p_ce = grp_fu_3325_ce;
assign grp_fu_172_p_din0 = grp_fu_3325_p0;
assign grp_fu_172_p_din1 = grp_fu_3325_p1;
assign grp_fu_172_p_opcode = 2'd0;
assign grp_kernel_2mm_node0_Pipeline_label_210_fu_812_ap_start = grp_kernel_2mm_node0_Pipeline_label_210_fu_812_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_2_fu_780_ap_start = grp_kernel_2mm_node0_Pipeline_label_2_fu_780_ap_start_reg;
assign icmp_ln31_fu_852_p2 = ((v5_fu_140 == 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_912_p2 = ((v6_reg_768 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln31_1_fu_892_p4 = {{v5_fu_140[7:2]}};
assign lshr_ln_fu_872_p4 = {{v5_fu_140[7:1]}};
assign mul_ln101_1_fu_2466_p0 = mul_ln101_1_fu_2466_p00;
assign mul_ln101_1_fu_2466_p00 = empty_344_reg_3142;
assign mul_ln101_1_fu_2466_p1 = 16'd220;
assign mul_ln101_fu_1741_p0 = mul_ln101_fu_1741_p00;
assign mul_ln101_fu_1741_p00 = empty_282_reg_2784;
assign mul_ln101_fu_1741_p1 = 16'd220;
assign mul_ln114_1_fu_2475_p0 = mul_ln114_1_fu_2475_p00;
assign mul_ln114_1_fu_2475_p00 = empty_351_reg_3149;
assign mul_ln114_1_fu_2475_p1 = 16'd220;
assign mul_ln114_fu_1750_p0 = mul_ln114_fu_1750_p00;
assign mul_ln114_fu_1750_p00 = empty_289_reg_2841;
assign mul_ln114_fu_1750_p1 = 16'd220;
assign mul_ln127_1_fu_2484_p0 = mul_ln127_1_fu_2484_p00;
assign mul_ln127_1_fu_2484_p00 = empty_358_reg_3206;
assign mul_ln127_1_fu_2484_p1 = 16'd220;
assign mul_ln127_fu_1759_p0 = mul_ln127_fu_1759_p00;
assign mul_ln127_fu_1759_p00 = empty_296_reg_2848;
assign mul_ln127_fu_1759_p1 = 16'd220;
assign mul_ln140_1_fu_2532_p0 = mul_ln140_1_fu_2532_p00;
assign mul_ln140_1_fu_2532_p00 = empty_365_reg_3213;
assign mul_ln140_1_fu_2532_p1 = 16'd220;
assign mul_ln140_fu_1768_p0 = mul_ln140_fu_1768_p00;
assign mul_ln140_fu_1768_p00 = empty_303_reg_2905;
assign mul_ln140_fu_1768_p1 = 16'd220;
assign mul_ln34_1_fu_2421_p0 = mul_ln34_1_fu_2421_p00;
assign mul_ln34_1_fu_2421_p00 = add_ln32_reg_2912;
assign mul_ln34_1_fu_2421_p1 = 16'd220;
assign mul_ln34_fu_1688_p0 = mul_ln34_fu_1688_p00;
assign mul_ln34_fu_1688_p00 = v6_reg_768;
assign mul_ln34_fu_1688_p1 = 16'd220;
assign mul_ln38_fu_886_p0 = mul_ln38_fu_886_p00;
assign mul_ln38_fu_886_p00 = lshr_ln_fu_872_p4;
assign mul_ln38_fu_886_p1 = 15'd220;
assign mul_ln49_1_fu_2430_p0 = mul_ln49_1_fu_2430_p00;
assign mul_ln49_1_fu_2430_p00 = empty_316_reg_2969;
assign mul_ln49_1_fu_2430_p1 = 16'd220;
assign mul_ln49_fu_1705_p0 = mul_ln49_fu_1705_p00;
assign mul_ln49_fu_1705_p00 = tmp_s_fu_1694_p3;
assign mul_ln49_fu_1705_p1 = 16'd220;
assign mul_ln62_1_fu_2439_p0 = mul_ln62_1_fu_2439_p00;
assign mul_ln62_1_fu_2439_p00 = empty_323_reg_2976;
assign mul_ln62_1_fu_2439_p1 = 16'd220;
assign mul_ln62_fu_1714_p0 = mul_ln62_fu_1714_p00;
assign mul_ln62_fu_1714_p00 = empty_261_reg_2708;
assign mul_ln62_fu_1714_p1 = 16'd220;
assign mul_ln75_1_fu_2448_p0 = mul_ln75_1_fu_2448_p00;
assign mul_ln75_1_fu_2448_p00 = empty_330_reg_3078;
assign mul_ln75_1_fu_2448_p1 = 16'd220;
assign mul_ln75_fu_1723_p0 = mul_ln75_fu_1723_p00;
assign mul_ln75_fu_1723_p00 = empty_268_reg_2715;
assign mul_ln75_fu_1723_p1 = 16'd220;
assign mul_ln88_1_fu_2457_p0 = mul_ln88_1_fu_2457_p00;
assign mul_ln88_1_fu_2457_p00 = empty_337_reg_3085;
assign mul_ln88_1_fu_2457_p1 = 16'd220;
assign mul_ln88_fu_1732_p0 = mul_ln88_fu_1732_p00;
assign mul_ln88_fu_1732_p00 = empty_275_reg_2777;
assign mul_ln88_fu_1732_p1 = 16'd220;
assign p_cast735_fu_949_p1 = empty_250_fu_944_p2;
assign p_cast736_fu_1135_p1 = empty_263_fu_1130_p2;
assign p_cast737_fu_1172_p1 = empty_270_fu_1167_p2;
assign p_cast738_fu_1299_p1 = empty_277_fu_1294_p2;
assign p_cast739_fu_1336_p1 = empty_284_fu_1331_p2;
assign p_cast740_fu_1463_p1 = empty_291_fu_1458_p2;
assign p_cast741_fu_1500_p1 = empty_298_fu_1495_p2;
assign p_cast742_fu_1627_p1 = empty_305_fu_1622_p2;
assign p_cast743_fu_1664_p1 = empty_311_fu_1659_p2;
assign p_cast744_fu_1881_p1 = empty_318_fu_1876_p2;
assign p_cast745_fu_1918_p1 = empty_325_fu_1913_p2;
assign p_cast746_fu_2045_p1 = empty_332_fu_2040_p2;
assign p_cast747_fu_2082_p1 = empty_339_fu_2077_p2;
assign p_cast748_fu_2209_p1 = empty_346_fu_2204_p2;
assign p_cast749_fu_2246_p1 = empty_353_fu_2241_p2;
assign p_cast750_fu_2373_p1 = empty_360_fu_2368_p2;
assign p_cast751_fu_2410_p1 = empty_367_fu_2405_p2;
assign p_cast_fu_998_p1 = empty_256_fu_993_p2;
assign p_shl10_fu_1635_p3 = {{add_ln32_reg_2912}, {6'd0}};
assign p_shl11_fu_1852_p3 = {{empty_316_reg_2969}, {6'd0}};
assign p_shl12_fu_1889_p3 = {{empty_323_reg_2976}, {6'd0}};
assign p_shl13_fu_2016_p3 = {{empty_330_reg_3078}, {6'd0}};
assign p_shl14_fu_2053_p3 = {{empty_337_reg_3085}, {6'd0}};
assign p_shl15_fu_2180_p3 = {{empty_344_reg_3142}, {6'd0}};
assign p_shl16_fu_2217_p3 = {{empty_351_reg_3149}, {6'd0}};
assign p_shl17_fu_2344_p3 = {{empty_358_reg_3206}, {6'd0}};
assign p_shl1_fu_918_p3 = {{v6_reg_768}, {6'd0}};
assign p_shl2_fu_967_p3 = {{tmp_fu_957_p4}, {7'd64}};
assign p_shl3_fu_1106_p3 = {{empty_261_reg_2708}, {6'd0}};
assign p_shl4_fu_1143_p3 = {{empty_268_reg_2715}, {6'd0}};
assign p_shl5_fu_1270_p3 = {{empty_275_reg_2777}, {6'd0}};
assign p_shl6_fu_1307_p3 = {{empty_282_reg_2784}, {6'd0}};
assign p_shl7_fu_1434_p3 = {{empty_289_reg_2841}, {6'd0}};
assign p_shl809_fu_2395_p1 = tmp_56_fu_2388_p3;
assign p_shl811_fu_2358_p1 = tmp_55_fu_2351_p3;
assign p_shl813_fu_2231_p1 = tmp_54_fu_2224_p3;
assign p_shl815_fu_2194_p1 = tmp_53_fu_2187_p3;
assign p_shl817_fu_2067_p1 = tmp_52_fu_2060_p3;
assign p_shl819_fu_2030_p1 = tmp_51_fu_2023_p3;
assign p_shl821_fu_1903_p1 = tmp_50_fu_1896_p3;
assign p_shl823_fu_1866_p1 = tmp_49_fu_1859_p3;
assign p_shl825_fu_1649_p1 = tmp_48_fu_1642_p3;
assign p_shl827_fu_1612_p1 = tmp_47_fu_1605_p3;
assign p_shl829_fu_1485_p1 = tmp_46_fu_1478_p3;
assign p_shl831_fu_1448_p1 = tmp_45_fu_1441_p3;
assign p_shl833_fu_1321_p1 = tmp_44_fu_1314_p3;
assign p_shl835_fu_1284_p1 = tmp_43_fu_1277_p3;
assign p_shl837_fu_1157_p1 = tmp_42_fu_1150_p3;
assign p_shl839_fu_1120_p1 = tmp_41_fu_1113_p3;
assign p_shl841_fu_983_p1 = tmp_40_fu_975_p3;
assign p_shl843_fu_934_p1 = tmp_39_fu_926_p3;
assign p_shl8_fu_1471_p3 = {{empty_296_reg_2848}, {6'd0}};
assign p_shl9_fu_1598_p3 = {{empty_303_reg_2905}, {6'd0}};
assign p_shl_fu_2381_p3 = {{empty_365_reg_3213}, {6'd0}};
assign tmp_39_fu_926_p3 = {{v6_reg_768}, {4'd0}};
assign tmp_40_fu_975_p3 = {{tmp_fu_957_p4}, {5'd16}};
assign tmp_41_fu_1113_p3 = {{empty_261_reg_2708}, {4'd0}};
assign tmp_42_fu_1150_p3 = {{empty_268_reg_2715}, {4'd0}};
assign tmp_43_fu_1277_p3 = {{empty_275_reg_2777}, {4'd0}};
assign tmp_44_fu_1314_p3 = {{empty_282_reg_2784}, {4'd0}};
assign tmp_45_fu_1441_p3 = {{empty_289_reg_2841}, {4'd0}};
assign tmp_46_fu_1478_p3 = {{empty_296_reg_2848}, {4'd0}};
assign tmp_47_fu_1605_p3 = {{empty_303_reg_2905}, {4'd0}};
assign tmp_48_fu_1642_p3 = {{add_ln32_reg_2912}, {4'd0}};
assign tmp_49_fu_1859_p3 = {{empty_316_reg_2969}, {4'd0}};
assign tmp_50_fu_1896_p3 = {{empty_323_reg_2976}, {4'd0}};
assign tmp_51_fu_2023_p3 = {{empty_330_reg_3078}, {4'd0}};
assign tmp_52_fu_2060_p3 = {{empty_337_reg_3085}, {4'd0}};
assign tmp_53_fu_2187_p3 = {{empty_344_reg_3142}, {4'd0}};
assign tmp_54_fu_2224_p3 = {{empty_351_reg_3149}, {4'd0}};
assign tmp_55_fu_2351_p3 = {{empty_358_reg_3206}, {4'd0}};
assign tmp_56_fu_2388_p3 = {{empty_365_reg_3213}, {4'd0}};
assign tmp_fu_957_p4 = {{v6_reg_768[7:1]}};
assign tmp_s_fu_1694_p3 = {{tmp_reg_2683}, {1'd1}};
assign trunc_ln31_1_fu_868_p1 = v5_fu_140[0:0];
assign trunc_ln31_fu_864_p1 = v5_fu_140[1:0];
assign v101_1_fu_2554_p2 = v224_0_q0;
assign v101_1_fu_2554_p4 = v224_1_q0;
assign v101_1_fu_2554_p6 = v224_2_q0;
assign v101_1_fu_2554_p8 = v224_3_q0;
assign v101_1_fu_2554_p9 = 'bx;
assign v11_1_fu_1829_p2 = v224_0_q0;
assign v11_1_fu_1829_p4 = v224_1_q0;
assign v11_1_fu_1829_p6 = v224_2_q0;
assign v11_1_fu_1829_p8 = v224_3_q0;
assign v11_1_fu_1829_p9 = 'bx;
assign v11_fu_1044_p2 = v224_0_q1;
assign v11_fu_1044_p4 = v224_1_q1;
assign v11_fu_1044_p6 = v224_2_q1;
assign v11_fu_1044_p8 = v224_3_q1;
assign v11_fu_1044_p9 = 'bx;
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
assign v24_1_fu_1954_p2 = v224_0_q1;
assign v24_1_fu_1954_p4 = v224_1_q1;
assign v24_1_fu_1954_p6 = v224_2_q1;
assign v24_1_fu_1954_p8 = v224_3_q1;
assign v24_1_fu_1954_p9 = 'bx;
assign v24_fu_1083_p2 = v224_0_q0;
assign v24_fu_1083_p4 = v224_1_q0;
assign v24_fu_1083_p6 = v224_2_q0;
assign v24_fu_1083_p8 = v224_3_q0;
assign v24_fu_1083_p9 = 'bx;
assign v35_1_fu_1993_p2 = v224_0_q0;
assign v35_1_fu_1993_p4 = v224_1_q0;
assign v35_1_fu_1993_p6 = v224_2_q0;
assign v35_1_fu_1993_p8 = v224_3_q0;
assign v35_1_fu_1993_p9 = 'bx;
assign v35_2_fu_1208_p2 = v224_0_q1;
assign v35_2_fu_1208_p4 = v224_1_q1;
assign v35_2_fu_1208_p6 = v224_2_q1;
assign v35_2_fu_1208_p8 = v224_3_q1;
assign v35_2_fu_1208_p9 = 'bx;
assign v46_1_fu_2118_p2 = v224_0_q1;
assign v46_1_fu_2118_p4 = v224_1_q1;
assign v46_1_fu_2118_p6 = v224_2_q1;
assign v46_1_fu_2118_p8 = v224_3_q1;
assign v46_1_fu_2118_p9 = 'bx;
assign v46_2_fu_1247_p2 = v224_0_q0;
assign v46_2_fu_1247_p4 = v224_1_q0;
assign v46_2_fu_1247_p6 = v224_2_q0;
assign v46_2_fu_1247_p8 = v224_3_q0;
assign v46_2_fu_1247_p9 = 'bx;
assign v57_1_fu_2157_p2 = v224_0_q0;
assign v57_1_fu_2157_p4 = v224_1_q0;
assign v57_1_fu_2157_p6 = v224_2_q0;
assign v57_1_fu_2157_p8 = v224_3_q0;
assign v57_1_fu_2157_p9 = 'bx;
assign v57_2_fu_1372_p2 = v224_0_q1;
assign v57_2_fu_1372_p4 = v224_1_q1;
assign v57_2_fu_1372_p6 = v224_2_q1;
assign v57_2_fu_1372_p8 = v224_3_q1;
assign v57_2_fu_1372_p9 = 'bx;
assign v68_1_fu_2282_p2 = v224_0_q1;
assign v68_1_fu_2282_p4 = v224_1_q1;
assign v68_1_fu_2282_p6 = v224_2_q1;
assign v68_1_fu_2282_p8 = v224_3_q1;
assign v68_1_fu_2282_p9 = 'bx;
assign v68_2_fu_1411_p2 = v224_0_q0;
assign v68_2_fu_1411_p4 = v224_1_q0;
assign v68_2_fu_1411_p6 = v224_2_q0;
assign v68_2_fu_1411_p8 = v224_3_q0;
assign v68_2_fu_1411_p9 = 'bx;
assign v79_1_fu_2321_p2 = v224_0_q0;
assign v79_1_fu_2321_p4 = v224_1_q0;
assign v79_1_fu_2321_p6 = v224_2_q0;
assign v79_1_fu_2321_p8 = v224_3_q0;
assign v79_1_fu_2321_p9 = 'bx;
assign v79_2_fu_1536_p2 = v224_0_q1;
assign v79_2_fu_1536_p4 = v224_1_q1;
assign v79_2_fu_1536_p6 = v224_2_q1;
assign v79_2_fu_1536_p8 = v224_3_q1;
assign v79_2_fu_1536_p9 = 'bx;
assign v90_1_fu_2506_p2 = v224_0_q1;
assign v90_1_fu_2506_p4 = v224_1_q1;
assign v90_1_fu_2506_p6 = v224_2_q1;
assign v90_1_fu_2506_p8 = v224_3_q1;
assign v90_1_fu_2506_p9 = 'bx;
assign v90_2_fu_1575_p2 = v224_0_q0;
assign v90_2_fu_1575_p4 = v224_1_q0;
assign v90_2_fu_1575_p6 = v224_2_q0;
assign v90_2_fu_1575_p8 = v224_3_q0;
assign v90_2_fu_1575_p9 = 'bx;
assign v_fu_1790_p2 = v224_0_q1;
assign v_fu_1790_p4 = v224_1_q1;
assign v_fu_1790_p6 = v224_2_q1;
assign v_fu_1790_p8 = v224_3_q1;
assign v_fu_1790_p9 = 'bx;
assign zext_ln31_fu_902_p1 = lshr_ln31_1_fu_892_p4;
always @ (posedge ap_clk) begin
    zext_ln31_reg_2632[13:6] <= 8'b00000000;
end
endmodule 
