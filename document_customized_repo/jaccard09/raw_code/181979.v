module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_0_address0,v224_0_ce0,v224_0_q0,v224_0_address1,v224_0_ce1,v224_0_q1,v224_1_address0,v224_1_ce0,v224_1_q0,v224_1_address1,v224_1_ce1,v224_1_q1,v224_2_address0,v224_2_ce0,v224_2_q0,v224_2_address1,v224_2_ce1,v224_2_q1,v224_3_address0,v224_3_ce0,v224_3_q0,v224_3_address1,v224_3_ce1,v224_3_q1,v228_0_address0,v228_0_ce0,v228_0_q0,v228_0_address1,v228_0_ce1,v228_0_q1,v228_1_address0,v228_1_ce0,v228_1_q0,v228_1_address1,v228_1_ce1,v228_1_q1,v228_2_address0,v228_2_ce0,v228_2_q0,v228_2_address1,v228_2_ce1,v228_2_q1,v228_3_address0,v228_3_ce0,v228_3_q0,v228_3_address1,v228_3_ce1,v228_3_q1,v229_0_address0,v229_0_ce0,v229_0_we0,v229_0_d0,v229_0_q0,v229_0_address1,v229_0_ce1,v229_0_we1,v229_0_d1,v229_0_q1,v229_1_address0,v229_1_ce0,v229_1_we0,v229_1_d0,v229_1_q0,v229_1_address1,v229_1_ce1,v229_1_we1,v229_1_d1,v229_1_q1,v4,grp_fu_148_p_din0,grp_fu_148_p_din1,grp_fu_148_p_opcode,grp_fu_148_p_dout0,grp_fu_148_p_ce,grp_fu_152_p_din0,grp_fu_152_p_din1,grp_fu_152_p_dout0,grp_fu_152_p_ce,grp_fu_156_p_din0,grp_fu_156_p_din1,grp_fu_156_p_dout0,grp_fu_156_p_ce,grp_fu_160_p_din0,grp_fu_160_p_din1,grp_fu_160_p_dout0,grp_fu_160_p_ce,grp_fu_164_p_din0,grp_fu_164_p_din1,grp_fu_164_p_dout0,grp_fu_164_p_ce); 
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
output  [14:0] v229_0_address0;
output   v229_0_ce0;
output   v229_0_we0;
output  [31:0] v229_0_d0;
input  [31:0] v229_0_q0;
output  [14:0] v229_0_address1;
output   v229_0_ce1;
output   v229_0_we1;
output  [31:0] v229_0_d1;
input  [31:0] v229_0_q1;
output  [14:0] v229_1_address0;
output   v229_1_ce0;
output   v229_1_we0;
output  [31:0] v229_1_d0;
input  [31:0] v229_1_q0;
output  [14:0] v229_1_address1;
output   v229_1_ce1;
output   v229_1_we1;
output  [31:0] v229_1_d1;
input  [31:0] v229_1_q1;
input  [31:0] v4;
output  [31:0] grp_fu_148_p_din0;
output  [31:0] grp_fu_148_p_din1;
output  [1:0] grp_fu_148_p_opcode;
input  [31:0] grp_fu_148_p_dout0;
output   grp_fu_148_p_ce;
output  [31:0] grp_fu_152_p_din0;
output  [31:0] grp_fu_152_p_din1;
input  [31:0] grp_fu_152_p_dout0;
output   grp_fu_152_p_ce;
output  [31:0] grp_fu_156_p_din0;
output  [31:0] grp_fu_156_p_din1;
input  [31:0] grp_fu_156_p_dout0;
output   grp_fu_156_p_ce;
output  [31:0] grp_fu_160_p_din0;
output  [31:0] grp_fu_160_p_din1;
input  [31:0] grp_fu_160_p_dout0;
output   grp_fu_160_p_ce;
output  [31:0] grp_fu_164_p_din0;
output  [31:0] grp_fu_164_p_din1;
input  [31:0] grp_fu_164_p_dout0;
output   grp_fu_164_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[13:0] v228_0_address0;
reg v228_0_ce0;
reg[13:0] v228_0_address1;
reg v228_0_ce1;
reg[13:0] v228_1_address0;
reg v228_1_ce0;
reg[13:0] v228_1_address1;
reg v228_1_ce1;
reg[13:0] v228_2_address0;
reg v228_2_ce0;
reg[13:0] v228_2_address1;
reg v228_2_ce1;
reg[13:0] v228_3_address0;
reg v228_3_ce0;
reg[13:0] v228_3_address1;
reg v228_3_ce1;
reg[14:0] v229_0_address0;
reg v229_0_ce0;
reg v229_0_we0;
reg[31:0] v229_0_d0;
reg[14:0] v229_0_address1;
reg v229_0_ce1;
reg v229_0_we1;
reg[31:0] v229_0_d1;
reg[14:0] v229_1_address0;
reg v229_1_ce0;
reg v229_1_we0;
reg[31:0] v229_1_d0;
reg[14:0] v229_1_address1;
reg v229_1_ce1;
reg v229_1_we1;
reg[31:0] v229_1_d1;
(* fsm_encoding = "none" *) reg   [13:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire   [7:0] add_ln31_fu_880_p2;
reg   [7:0] add_ln31_reg_2557;
wire    ap_CS_fsm_state2;
wire   [1:0] trunc_ln31_fu_886_p1;
reg   [1:0] trunc_ln31_reg_2562;
wire   [13:0] zext_ln38_fu_900_p1;
reg   [13:0] zext_ln38_reg_2586;
wire   [13:0] mul_ln38_fu_904_p2;
reg   [13:0] mul_ln38_reg_2608;
wire   [0:0] cmp11_fu_910_p2;
reg   [0:0] cmp11_reg_2614;
wire    ap_CS_fsm_state3;
wire   [6:0] lshr_ln1_fu_961_p4;
reg   [6:0] lshr_ln1_reg_2643;
wire   [7:0] empty_436_fu_1010_p2;
reg   [7:0] empty_436_reg_2676;
wire   [7:0] empty_444_fu_1016_p2;
reg   [7:0] empty_444_reg_2682;
wire   [7:0] add_ln32_1_fu_1022_p2;
reg   [7:0] add_ln32_1_reg_2688;
wire   [31:0] v11_fu_1048_p11;
reg   [31:0] v11_reg_2693;
wire    ap_CS_fsm_state4;
wire   [31:0] v24_fu_1087_p11;
reg   [31:0] v24_reg_2698;
wire   [7:0] empty_451_fu_1184_p2;
reg   [7:0] empty_451_reg_2743;
wire   [7:0] empty_459_fu_1190_p2;
reg   [7:0] empty_459_reg_2749;
wire   [31:0] v35_fu_1212_p11;
reg   [31:0] v35_reg_2755;
wire    ap_CS_fsm_state5;
wire   [31:0] v46_2_fu_1251_p11;
reg   [31:0] v46_2_reg_2760;
wire   [7:0] empty_466_fu_1348_p2;
reg   [7:0] empty_466_reg_2805;
wire   [7:0] empty_474_fu_1354_p2;
reg   [7:0] empty_474_reg_2811;
wire   [31:0] v57_2_fu_1376_p11;
reg   [31:0] v57_2_reg_2817;
wire    ap_CS_fsm_state6;
wire   [31:0] v68_2_fu_1415_p11;
reg   [31:0] v68_2_reg_2822;
wire   [7:0] empty_481_fu_1512_p2;
reg   [7:0] empty_481_reg_2867;
wire   [7:0] add_ln32_fu_1518_p2;
reg   [7:0] add_ln32_reg_2873;
wire   [31:0] v79_2_fu_1540_p11;
reg   [31:0] v79_2_reg_2879;
wire    ap_CS_fsm_state7;
wire   [31:0] v90_2_fu_1579_p11;
reg   [31:0] v90_2_reg_2884;
wire   [7:0] empty_495_fu_1676_p2;
reg   [7:0] empty_495_reg_2929;
wire   [7:0] empty_503_fu_1682_p2;
reg   [7:0] empty_503_reg_2935;
wire   [14:0] mul_ln34_fu_1691_p2;
reg   [14:0] mul_ln34_reg_2941;
wire    ap_CS_fsm_state8;
wire   [14:0] mul_ln62_fu_1706_p2;
reg   [14:0] mul_ln62_reg_2946;
wire   [14:0] mul_ln88_fu_1721_p2;
reg   [14:0] mul_ln88_reg_2951;
wire   [14:0] mul_ln114_fu_1736_p2;
reg   [14:0] mul_ln114_reg_2956;
wire   [14:0] mul_ln140_fu_1751_p2;
reg   [14:0] mul_ln140_reg_2961;
wire   [31:0] v_fu_1773_p11;
reg   [31:0] v_reg_2967;
wire   [31:0] v11_1_fu_1812_p11;
reg   [31:0] v11_1_reg_2972;
wire   [7:0] empty_510_fu_1909_p2;
reg   [7:0] empty_510_reg_3017;
wire   [7:0] empty_518_fu_1915_p2;
reg   [7:0] empty_518_reg_3023;
wire   [31:0] v24_1_fu_1937_p11;
reg   [31:0] v24_1_reg_3029;
wire    ap_CS_fsm_state9;
wire   [31:0] v35_1_fu_1976_p11;
reg   [31:0] v35_1_reg_3034;
wire   [7:0] empty_525_fu_2073_p2;
reg   [7:0] empty_525_reg_3079;
wire   [7:0] empty_533_fu_2079_p2;
reg   [7:0] empty_533_reg_3085;
wire   [31:0] v46_1_fu_2101_p11;
reg   [31:0] v46_1_reg_3091;
wire    ap_CS_fsm_state10;
wire   [31:0] v57_1_fu_2140_p11;
reg   [31:0] v57_1_reg_3096;
wire   [13:0] empty_542_fu_2269_p2;
reg   [13:0] empty_542_reg_3141;
wire   [13:0] empty_550_fu_2306_p2;
reg   [13:0] empty_550_reg_3146;
wire   [31:0] v68_1_fu_2327_p11;
reg   [31:0] v68_1_reg_3151;
wire    ap_CS_fsm_state11;
wire   [31:0] v79_1_fu_2366_p11;
reg   [31:0] v79_1_reg_3156;
wire   [14:0] mul_ln49_fu_2412_p2;
reg   [14:0] mul_ln49_reg_3201;
wire    ap_CS_fsm_state12;
wire   [14:0] mul_ln75_fu_2427_p2;
reg   [14:0] mul_ln75_reg_3206;
wire   [14:0] mul_ln101_fu_2442_p2;
reg   [14:0] mul_ln101_reg_3211;
wire   [14:0] mul_ln127_fu_2457_p2;
reg   [14:0] mul_ln127_reg_3216;
wire   [31:0] v90_1_fu_2479_p11;
reg   [31:0] v90_1_reg_3221;
wire   [31:0] v101_1_fu_2518_p11;
reg   [31:0] v101_1_reg_3226;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_ap_ready;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_1_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_1_d1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_0_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_0_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_0_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_0_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_1_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_1_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_2_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_2_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_3_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_3_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3231_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3231_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3231_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3231_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3235_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3235_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3235_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3235_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3239_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3239_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3239_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3243_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3243_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3243_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3247_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3247_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3247_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3251_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3251_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3251_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_832_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_832_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_832_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_832_ap_ready;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_1_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_1_d1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_0_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_0_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_0_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_0_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_1_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_1_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_2_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_2_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_3_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_3_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3231_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3231_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3231_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3231_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3235_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3235_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3235_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3235_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3239_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3239_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3239_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3243_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3243_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3243_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3247_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3247_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3247_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3251_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3251_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3251_p_ce;
reg   [7:0] v6_reg_786;
wire    ap_CS_fsm_state14;
wire   [0:0] icmp_ln31_fu_874_p2;
reg    grp_kernel_2mm_node0_Pipeline_label_2_fu_798_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_218_fu_832_ap_start_reg;
wire    ap_CS_fsm_state13;
wire   [63:0] p_cast778_fu_953_p1;
wire   [0:0] icmp_ln32_fu_916_p2;
wire   [63:0] p_cast_fu_1002_p1;
wire   [63:0] p_cast779_fu_1139_p1;
wire   [63:0] p_cast780_fu_1176_p1;
wire   [63:0] p_cast781_fu_1303_p1;
wire   [63:0] p_cast782_fu_1340_p1;
wire   [63:0] p_cast783_fu_1467_p1;
wire   [63:0] p_cast784_fu_1504_p1;
wire   [63:0] p_cast785_fu_1631_p1;
wire   [63:0] p_cast786_fu_1668_p1;
wire   [63:0] p_cast787_fu_1864_p1;
wire   [63:0] p_cast788_fu_1901_p1;
wire   [63:0] p_cast789_fu_2028_p1;
wire   [63:0] p_cast790_fu_2065_p1;
wire   [63:0] p_cast791_fu_2192_p1;
wire   [63:0] p_cast792_fu_2229_p1;
wire   [63:0] p_cast793_fu_2389_p1;
wire   [63:0] p_cast794_fu_2396_p1;
reg   [7:0] v5_fu_158;
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
wire   [5:0] lshr_ln_fu_890_p4;
wire   [5:0] mul_ln38_fu_904_p0;
wire   [8:0] mul_ln38_fu_904_p1;
wire   [11:0] tmp_fu_930_p3;
wire   [13:0] p_shl1_fu_922_p3;
wire   [13:0] p_shl876_fu_938_p1;
wire   [13:0] empty_fu_942_p2;
wire   [13:0] empty_425_fu_948_p2;
wire   [11:0] tmp_5_fu_979_p3;
wire   [13:0] p_shl2_fu_971_p3;
wire   [13:0] p_shl874_fu_987_p1;
wire   [13:0] empty_430_fu_991_p2;
wire   [13:0] empty_431_fu_997_p2;
wire   [31:0] v11_fu_1048_p2;
wire   [31:0] v11_fu_1048_p4;
wire   [31:0] v11_fu_1048_p6;
wire   [31:0] v11_fu_1048_p8;
wire   [31:0] v11_fu_1048_p9;
wire   [31:0] v24_fu_1087_p2;
wire   [31:0] v24_fu_1087_p4;
wire   [31:0] v24_fu_1087_p6;
wire   [31:0] v24_fu_1087_p8;
wire   [31:0] v24_fu_1087_p9;
wire   [11:0] tmp_6_fu_1117_p3;
wire   [13:0] p_shl3_fu_1110_p3;
wire   [13:0] p_shl872_fu_1124_p1;
wire   [13:0] empty_437_fu_1128_p2;
wire   [13:0] empty_438_fu_1134_p2;
wire   [11:0] tmp_7_fu_1154_p3;
wire   [13:0] p_shl4_fu_1147_p3;
wire   [13:0] p_shl870_fu_1161_p1;
wire   [13:0] empty_445_fu_1165_p2;
wire   [13:0] empty_446_fu_1171_p2;
wire   [31:0] v35_fu_1212_p2;
wire   [31:0] v35_fu_1212_p4;
wire   [31:0] v35_fu_1212_p6;
wire   [31:0] v35_fu_1212_p8;
wire   [31:0] v35_fu_1212_p9;
wire   [31:0] v46_2_fu_1251_p2;
wire   [31:0] v46_2_fu_1251_p4;
wire   [31:0] v46_2_fu_1251_p6;
wire   [31:0] v46_2_fu_1251_p8;
wire   [31:0] v46_2_fu_1251_p9;
wire   [11:0] tmp_8_fu_1281_p3;
wire   [13:0] p_shl5_fu_1274_p3;
wire   [13:0] p_shl868_fu_1288_p1;
wire   [13:0] empty_452_fu_1292_p2;
wire   [13:0] empty_453_fu_1298_p2;
wire   [11:0] tmp_9_fu_1318_p3;
wire   [13:0] p_shl6_fu_1311_p3;
wire   [13:0] p_shl866_fu_1325_p1;
wire   [13:0] empty_460_fu_1329_p2;
wire   [13:0] empty_461_fu_1335_p2;
wire   [31:0] v57_2_fu_1376_p2;
wire   [31:0] v57_2_fu_1376_p4;
wire   [31:0] v57_2_fu_1376_p6;
wire   [31:0] v57_2_fu_1376_p8;
wire   [31:0] v57_2_fu_1376_p9;
wire   [31:0] v68_2_fu_1415_p2;
wire   [31:0] v68_2_fu_1415_p4;
wire   [31:0] v68_2_fu_1415_p6;
wire   [31:0] v68_2_fu_1415_p8;
wire   [31:0] v68_2_fu_1415_p9;
wire   [11:0] tmp_10_fu_1445_p3;
wire   [13:0] p_shl7_fu_1438_p3;
wire   [13:0] p_shl864_fu_1452_p1;
wire   [13:0] empty_467_fu_1456_p2;
wire   [13:0] empty_468_fu_1462_p2;
wire   [11:0] tmp_11_fu_1482_p3;
wire   [13:0] p_shl8_fu_1475_p3;
wire   [13:0] p_shl862_fu_1489_p1;
wire   [13:0] empty_475_fu_1493_p2;
wire   [13:0] empty_476_fu_1499_p2;
wire   [31:0] v79_2_fu_1540_p2;
wire   [31:0] v79_2_fu_1540_p4;
wire   [31:0] v79_2_fu_1540_p6;
wire   [31:0] v79_2_fu_1540_p8;
wire   [31:0] v79_2_fu_1540_p9;
wire   [31:0] v90_2_fu_1579_p2;
wire   [31:0] v90_2_fu_1579_p4;
wire   [31:0] v90_2_fu_1579_p6;
wire   [31:0] v90_2_fu_1579_p8;
wire   [31:0] v90_2_fu_1579_p9;
wire   [11:0] tmp_12_fu_1609_p3;
wire   [13:0] p_shl9_fu_1602_p3;
wire   [13:0] p_shl860_fu_1616_p1;
wire   [13:0] empty_482_fu_1620_p2;
wire   [13:0] empty_483_fu_1626_p2;
wire   [11:0] tmp_13_fu_1646_p3;
wire   [13:0] p_shl10_fu_1639_p3;
wire   [13:0] p_shl858_fu_1653_p1;
wire   [13:0] empty_489_fu_1657_p2;
wire   [13:0] empty_490_fu_1663_p2;
wire   [6:0] mul_ln34_fu_1691_p0;
wire   [8:0] mul_ln34_fu_1691_p1;
wire   [6:0] empty_439_fu_1697_p2;
wire   [6:0] mul_ln62_fu_1706_p0;
wire   [8:0] mul_ln62_fu_1706_p1;
wire   [6:0] empty_454_fu_1712_p2;
wire   [6:0] mul_ln88_fu_1721_p0;
wire   [8:0] mul_ln88_fu_1721_p1;
wire   [6:0] empty_469_fu_1727_p2;
wire   [6:0] mul_ln114_fu_1736_p0;
wire   [8:0] mul_ln114_fu_1736_p1;
wire   [6:0] empty_484_fu_1742_p2;
wire   [6:0] mul_ln140_fu_1751_p0;
wire   [8:0] mul_ln140_fu_1751_p1;
wire   [31:0] v_fu_1773_p2;
wire   [31:0] v_fu_1773_p4;
wire   [31:0] v_fu_1773_p6;
wire   [31:0] v_fu_1773_p8;
wire   [31:0] v_fu_1773_p9;
wire   [31:0] v11_1_fu_1812_p2;
wire   [31:0] v11_1_fu_1812_p4;
wire   [31:0] v11_1_fu_1812_p6;
wire   [31:0] v11_1_fu_1812_p8;
wire   [31:0] v11_1_fu_1812_p9;
wire   [11:0] tmp_14_fu_1842_p3;
wire   [13:0] p_shl11_fu_1835_p3;
wire   [13:0] p_shl856_fu_1849_p1;
wire   [13:0] empty_496_fu_1853_p2;
wire   [13:0] empty_497_fu_1859_p2;
wire   [11:0] tmp_15_fu_1879_p3;
wire   [13:0] p_shl12_fu_1872_p3;
wire   [13:0] p_shl854_fu_1886_p1;
wire   [13:0] empty_504_fu_1890_p2;
wire   [13:0] empty_505_fu_1896_p2;
wire   [31:0] v24_1_fu_1937_p2;
wire   [31:0] v24_1_fu_1937_p4;
wire   [31:0] v24_1_fu_1937_p6;
wire   [31:0] v24_1_fu_1937_p8;
wire   [31:0] v24_1_fu_1937_p9;
wire   [31:0] v35_1_fu_1976_p2;
wire   [31:0] v35_1_fu_1976_p4;
wire   [31:0] v35_1_fu_1976_p6;
wire   [31:0] v35_1_fu_1976_p8;
wire   [31:0] v35_1_fu_1976_p9;
wire   [11:0] tmp_16_fu_2006_p3;
wire   [13:0] p_shl13_fu_1999_p3;
wire   [13:0] p_shl852_fu_2013_p1;
wire   [13:0] empty_511_fu_2017_p2;
wire   [13:0] empty_512_fu_2023_p2;
wire   [11:0] tmp_17_fu_2043_p3;
wire   [13:0] p_shl14_fu_2036_p3;
wire   [13:0] p_shl850_fu_2050_p1;
wire   [13:0] empty_519_fu_2054_p2;
wire   [13:0] empty_520_fu_2060_p2;
wire   [31:0] v46_1_fu_2101_p2;
wire   [31:0] v46_1_fu_2101_p4;
wire   [31:0] v46_1_fu_2101_p6;
wire   [31:0] v46_1_fu_2101_p8;
wire   [31:0] v46_1_fu_2101_p9;
wire   [31:0] v57_1_fu_2140_p2;
wire   [31:0] v57_1_fu_2140_p4;
wire   [31:0] v57_1_fu_2140_p6;
wire   [31:0] v57_1_fu_2140_p8;
wire   [31:0] v57_1_fu_2140_p9;
wire   [11:0] tmp_18_fu_2170_p3;
wire   [13:0] p_shl15_fu_2163_p3;
wire   [13:0] p_shl848_fu_2177_p1;
wire   [13:0] empty_526_fu_2181_p2;
wire   [13:0] empty_527_fu_2187_p2;
wire   [11:0] tmp_19_fu_2207_p3;
wire   [13:0] p_shl16_fu_2200_p3;
wire   [13:0] p_shl846_fu_2214_p1;
wire   [13:0] empty_534_fu_2218_p2;
wire   [13:0] empty_535_fu_2224_p2;
wire   [7:0] empty_540_fu_2237_p2;
wire   [11:0] tmp_20_fu_2251_p3;
wire   [13:0] p_shl17_fu_2243_p3;
wire   [13:0] p_shl844_fu_2259_p1;
wire   [13:0] empty_541_fu_2263_p2;
wire   [7:0] empty_548_fu_2274_p2;
wire   [11:0] tmp_21_fu_2288_p3;
wire   [13:0] p_shl_fu_2280_p3;
wire   [13:0] p_shl842_fu_2296_p1;
wire   [13:0] empty_549_fu_2300_p2;
wire   [31:0] v68_1_fu_2327_p2;
wire   [31:0] v68_1_fu_2327_p4;
wire   [31:0] v68_1_fu_2327_p6;
wire   [31:0] v68_1_fu_2327_p8;
wire   [31:0] v68_1_fu_2327_p9;
wire   [31:0] v79_1_fu_2366_p2;
wire   [31:0] v79_1_fu_2366_p4;
wire   [31:0] v79_1_fu_2366_p6;
wire   [31:0] v79_1_fu_2366_p8;
wire   [31:0] v79_1_fu_2366_p9;
wire   [6:0] empty_498_fu_2403_p2;
wire   [6:0] mul_ln49_fu_2412_p0;
wire   [8:0] mul_ln49_fu_2412_p1;
wire   [6:0] empty_513_fu_2418_p2;
wire   [6:0] mul_ln75_fu_2427_p0;
wire   [8:0] mul_ln75_fu_2427_p1;
wire   [6:0] empty_528_fu_2433_p2;
wire   [6:0] mul_ln101_fu_2442_p0;
wire   [8:0] mul_ln101_fu_2442_p1;
wire   [6:0] empty_543_fu_2448_p2;
wire   [6:0] mul_ln127_fu_2457_p0;
wire   [8:0] mul_ln127_fu_2457_p1;
wire   [31:0] v90_1_fu_2479_p2;
wire   [31:0] v90_1_fu_2479_p4;
wire   [31:0] v90_1_fu_2479_p6;
wire   [31:0] v90_1_fu_2479_p8;
wire   [31:0] v90_1_fu_2479_p9;
wire   [31:0] v101_1_fu_2518_p2;
wire   [31:0] v101_1_fu_2518_p4;
wire   [31:0] v101_1_fu_2518_p6;
wire   [31:0] v101_1_fu_2518_p8;
wire   [31:0] v101_1_fu_2518_p9;
reg   [31:0] grp_fu_3231_p0;
reg   [31:0] grp_fu_3231_p1;
reg    grp_fu_3231_ce;
wire   [31:0] grp_fu_3235_p2;
reg   [31:0] grp_fu_3235_p0;
reg   [31:0] grp_fu_3235_p1;
reg    grp_fu_3235_ce;
reg   [31:0] grp_fu_3239_p0;
reg   [31:0] grp_fu_3239_p1;
reg    grp_fu_3239_ce;
reg   [31:0] grp_fu_3243_p0;
reg   [31:0] grp_fu_3243_p1;
reg    grp_fu_3243_ce;
reg   [31:0] grp_fu_3247_p0;
reg   [31:0] grp_fu_3247_p1;
reg    grp_fu_3247_ce;
reg   [31:0] grp_fu_3251_p0;
reg   [31:0] grp_fu_3251_p1;
reg    grp_fu_3251_ce;
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
wire   [14:0] mul_ln101_fu_2442_p00;
wire   [14:0] mul_ln114_fu_1736_p00;
wire   [14:0] mul_ln127_fu_2457_p00;
wire   [14:0] mul_ln140_fu_1751_p00;
wire   [14:0] mul_ln34_fu_1691_p00;
wire   [13:0] mul_ln38_fu_904_p00;
wire   [14:0] mul_ln49_fu_2412_p00;
wire   [14:0] mul_ln62_fu_1706_p00;
wire   [14:0] mul_ln75_fu_2427_p00;
wire   [14:0] mul_ln88_fu_1721_p00;
wire   [1:0] v11_fu_1048_p1;
wire   [1:0] v11_fu_1048_p3;
wire  signed [1:0] v11_fu_1048_p5;
wire  signed [1:0] v11_fu_1048_p7;
wire   [1:0] v24_fu_1087_p1;
wire   [1:0] v24_fu_1087_p3;
wire  signed [1:0] v24_fu_1087_p5;
wire  signed [1:0] v24_fu_1087_p7;
wire   [1:0] v35_fu_1212_p1;
wire   [1:0] v35_fu_1212_p3;
wire  signed [1:0] v35_fu_1212_p5;
wire  signed [1:0] v35_fu_1212_p7;
wire   [1:0] v46_2_fu_1251_p1;
wire   [1:0] v46_2_fu_1251_p3;
wire  signed [1:0] v46_2_fu_1251_p5;
wire  signed [1:0] v46_2_fu_1251_p7;
wire   [1:0] v57_2_fu_1376_p1;
wire   [1:0] v57_2_fu_1376_p3;
wire  signed [1:0] v57_2_fu_1376_p5;
wire  signed [1:0] v57_2_fu_1376_p7;
wire   [1:0] v68_2_fu_1415_p1;
wire   [1:0] v68_2_fu_1415_p3;
wire  signed [1:0] v68_2_fu_1415_p5;
wire  signed [1:0] v68_2_fu_1415_p7;
wire   [1:0] v79_2_fu_1540_p1;
wire   [1:0] v79_2_fu_1540_p3;
wire  signed [1:0] v79_2_fu_1540_p5;
wire  signed [1:0] v79_2_fu_1540_p7;
wire   [1:0] v90_2_fu_1579_p1;
wire   [1:0] v90_2_fu_1579_p3;
wire  signed [1:0] v90_2_fu_1579_p5;
wire  signed [1:0] v90_2_fu_1579_p7;
wire   [1:0] v_fu_1773_p1;
wire   [1:0] v_fu_1773_p3;
wire  signed [1:0] v_fu_1773_p5;
wire  signed [1:0] v_fu_1773_p7;
wire   [1:0] v11_1_fu_1812_p1;
wire   [1:0] v11_1_fu_1812_p3;
wire  signed [1:0] v11_1_fu_1812_p5;
wire  signed [1:0] v11_1_fu_1812_p7;
wire   [1:0] v24_1_fu_1937_p1;
wire   [1:0] v24_1_fu_1937_p3;
wire  signed [1:0] v24_1_fu_1937_p5;
wire  signed [1:0] v24_1_fu_1937_p7;
wire   [1:0] v35_1_fu_1976_p1;
wire   [1:0] v35_1_fu_1976_p3;
wire  signed [1:0] v35_1_fu_1976_p5;
wire  signed [1:0] v35_1_fu_1976_p7;
wire   [1:0] v46_1_fu_2101_p1;
wire   [1:0] v46_1_fu_2101_p3;
wire  signed [1:0] v46_1_fu_2101_p5;
wire  signed [1:0] v46_1_fu_2101_p7;
wire   [1:0] v57_1_fu_2140_p1;
wire   [1:0] v57_1_fu_2140_p3;
wire  signed [1:0] v57_1_fu_2140_p5;
wire  signed [1:0] v57_1_fu_2140_p7;
wire   [1:0] v68_1_fu_2327_p1;
wire   [1:0] v68_1_fu_2327_p3;
wire  signed [1:0] v68_1_fu_2327_p5;
wire  signed [1:0] v68_1_fu_2327_p7;
wire   [1:0] v79_1_fu_2366_p1;
wire   [1:0] v79_1_fu_2366_p3;
wire  signed [1:0] v79_1_fu_2366_p5;
wire  signed [1:0] v79_1_fu_2366_p7;
wire   [1:0] v90_1_fu_2479_p1;
wire   [1:0] v90_1_fu_2479_p3;
wire  signed [1:0] v90_1_fu_2479_p5;
wire  signed [1:0] v90_1_fu_2479_p7;
wire   [1:0] v101_1_fu_2518_p1;
wire   [1:0] v101_1_fu_2518_p3;
wire  signed [1:0] v101_1_fu_2518_p5;
wire  signed [1:0] v101_1_fu_2518_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 14'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_2_fu_798_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_218_fu_832_ap_start_reg = 1'b0;
#0 v5_fu_158 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_2 grp_kernel_2mm_node0_Pipeline_label_2_fu_798(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_ap_ready),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_0_d1),.v229_0_q1(v229_0_q1),.mul_ln38(mul_ln38_reg_2608),.v228_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_0_ce1),.v228_0_q1(v228_0_q1),.v228_1_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_1_ce1),.v228_1_q1(v228_1_q1),.v228_2_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_2_address0),.v228_2_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_2_ce0),.v228_2_q0(v228_2_q0),.v228_2_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_2_address1),.v228_2_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_2_ce1),.v228_2_q1(v228_2_q1),.v228_3_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_3_address0),.v228_3_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_3_ce0),.v228_3_q0(v228_3_q0),.v228_3_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_3_address1),.v228_3_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_3_ce1),.v228_3_q1(v228_3_q1),.mul_ln34(mul_ln34_reg_2941),.mul_ln62(mul_ln62_reg_2946),.mul_ln88(mul_ln88_reg_2951),.mul_ln114(mul_ln114_reg_2956),.mul_ln140(mul_ln140_reg_2961),.v4(v4),.cmp11(cmp11_reg_2614),.empty(trunc_ln31_reg_2562),.v11(v11_reg_2693),.v24(v24_reg_2698),.v35(v35_reg_2755),.v46_2(v46_2_reg_2760),.v57_2(v57_2_reg_2817),.v68_2(v68_2_reg_2822),.v79_2(v79_2_reg_2879),.v90_2(v90_2_reg_2884),.v101(v_reg_2967),.grp_fu_3231_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3231_p_din0),.grp_fu_3231_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3231_p_din1),.grp_fu_3231_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3231_p_opcode),.grp_fu_3231_p_dout0(grp_fu_148_p_dout0),.grp_fu_3231_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3231_p_ce),.grp_fu_3235_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3235_p_din0),.grp_fu_3235_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3235_p_din1),.grp_fu_3235_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3235_p_opcode),.grp_fu_3235_p_dout0(grp_fu_3235_p2),.grp_fu_3235_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3235_p_ce),.grp_fu_3239_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3239_p_din0),.grp_fu_3239_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3239_p_din1),.grp_fu_3239_p_dout0(grp_fu_152_p_dout0),.grp_fu_3239_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3239_p_ce),.grp_fu_3243_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3243_p_din0),.grp_fu_3243_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3243_p_din1),.grp_fu_3243_p_dout0(grp_fu_156_p_dout0),.grp_fu_3243_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3243_p_ce),.grp_fu_3247_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3247_p_din0),.grp_fu_3247_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3247_p_din1),.grp_fu_3247_p_dout0(grp_fu_160_p_dout0),.grp_fu_3247_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3247_p_ce),.grp_fu_3251_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3251_p_din0),.grp_fu_3251_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3251_p_din1),.grp_fu_3251_p_dout0(grp_fu_164_p_dout0),.grp_fu_3251_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3251_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_218 grp_kernel_2mm_node0_Pipeline_label_218_fu_832(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_ap_ready),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_0_d1),.v229_0_q1(v229_0_q1),.mul_ln38(mul_ln38_reg_2608),.v228_0_address0(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_0_ce1),.v228_0_q1(v228_0_q1),.v228_1_address0(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_1_ce1),.v228_1_q1(v228_1_q1),.v228_2_address0(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_2_address0),.v228_2_ce0(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_2_ce0),.v228_2_q0(v228_2_q0),.v228_2_address1(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_2_address1),.v228_2_ce1(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_2_ce1),.v228_2_q1(v228_2_q1),.v228_3_address0(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_3_address0),.v228_3_ce0(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_3_ce0),.v228_3_q0(v228_3_q0),.v228_3_address1(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_3_address1),.v228_3_ce1(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_3_ce1),.v228_3_q1(v228_3_q1),.mul_ln49(mul_ln49_reg_3201),.mul_ln75(mul_ln75_reg_3206),.mul_ln101(mul_ln101_reg_3211),.mul_ln127(mul_ln127_reg_3216),.mul_ln140(mul_ln140_reg_2961),.v4(v4),.cmp11(cmp11_reg_2614),.empty(trunc_ln31_reg_2562),.v11_1(v11_1_reg_2972),.v24_1(v24_1_reg_3029),.v35_1(v35_1_reg_3034),.v46_1(v46_1_reg_3091),.v57_1(v57_1_reg_3096),.v68_1(v68_1_reg_3151),.v79_1(v79_1_reg_3156),.v90_1(v90_1_reg_3221),.v101_1(v101_1_reg_3226),.grp_fu_3231_p_din0(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3231_p_din0),.grp_fu_3231_p_din1(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3231_p_din1),.grp_fu_3231_p_opcode(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3231_p_opcode),.grp_fu_3231_p_dout0(grp_fu_148_p_dout0),.grp_fu_3231_p_ce(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3231_p_ce),.grp_fu_3235_p_din0(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3235_p_din0),.grp_fu_3235_p_din1(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3235_p_din1),.grp_fu_3235_p_opcode(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3235_p_opcode),.grp_fu_3235_p_dout0(grp_fu_3235_p2),.grp_fu_3235_p_ce(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3235_p_ce),.grp_fu_3239_p_din0(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3239_p_din0),.grp_fu_3239_p_din1(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3239_p_din1),.grp_fu_3239_p_dout0(grp_fu_152_p_dout0),.grp_fu_3239_p_ce(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3239_p_ce),.grp_fu_3243_p_din0(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3243_p_din0),.grp_fu_3243_p_din1(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3243_p_din1),.grp_fu_3243_p_dout0(grp_fu_156_p_dout0),.grp_fu_3243_p_ce(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3243_p_ce),.grp_fu_3247_p_din0(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3247_p_din0),.grp_fu_3247_p_din1(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3247_p_din1),.grp_fu_3247_p_dout0(grp_fu_160_p_dout0),.grp_fu_3247_p_ce(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3247_p_ce),.grp_fu_3251_p_din0(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3251_p_din0),.grp_fu_3251_p_din1(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3251_p_din1),.grp_fu_3251_p_dout0(grp_fu_164_p_dout0),.grp_fu_3251_p_ce(grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3251_p_ce));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U754(.din0(mul_ln38_fu_904_p0),.din1(mul_ln38_fu_904_p1),.dout(mul_ln38_fu_904_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U755(.din0(v11_fu_1048_p2),.din1(v11_fu_1048_p4),.din2(v11_fu_1048_p6),.din3(v11_fu_1048_p8),.def(v11_fu_1048_p9),.sel(trunc_ln31_reg_2562),.dout(v11_fu_1048_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U756(.din0(v24_fu_1087_p2),.din1(v24_fu_1087_p4),.din2(v24_fu_1087_p6),.din3(v24_fu_1087_p8),.def(v24_fu_1087_p9),.sel(trunc_ln31_reg_2562),.dout(v24_fu_1087_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U757(.din0(v35_fu_1212_p2),.din1(v35_fu_1212_p4),.din2(v35_fu_1212_p6),.din3(v35_fu_1212_p8),.def(v35_fu_1212_p9),.sel(trunc_ln31_reg_2562),.dout(v35_fu_1212_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U758(.din0(v46_2_fu_1251_p2),.din1(v46_2_fu_1251_p4),.din2(v46_2_fu_1251_p6),.din3(v46_2_fu_1251_p8),.def(v46_2_fu_1251_p9),.sel(trunc_ln31_reg_2562),.dout(v46_2_fu_1251_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U759(.din0(v57_2_fu_1376_p2),.din1(v57_2_fu_1376_p4),.din2(v57_2_fu_1376_p6),.din3(v57_2_fu_1376_p8),.def(v57_2_fu_1376_p9),.sel(trunc_ln31_reg_2562),.dout(v57_2_fu_1376_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U760(.din0(v68_2_fu_1415_p2),.din1(v68_2_fu_1415_p4),.din2(v68_2_fu_1415_p6),.din3(v68_2_fu_1415_p8),.def(v68_2_fu_1415_p9),.sel(trunc_ln31_reg_2562),.dout(v68_2_fu_1415_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U761(.din0(v79_2_fu_1540_p2),.din1(v79_2_fu_1540_p4),.din2(v79_2_fu_1540_p6),.din3(v79_2_fu_1540_p8),.def(v79_2_fu_1540_p9),.sel(trunc_ln31_reg_2562),.dout(v79_2_fu_1540_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U762(.din0(v90_2_fu_1579_p2),.din1(v90_2_fu_1579_p4),.din2(v90_2_fu_1579_p6),.din3(v90_2_fu_1579_p8),.def(v90_2_fu_1579_p9),.sel(trunc_ln31_reg_2562),.dout(v90_2_fu_1579_p11));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U763(.din0(mul_ln34_fu_1691_p0),.din1(mul_ln34_fu_1691_p1),.dout(mul_ln34_fu_1691_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U764(.din0(mul_ln62_fu_1706_p0),.din1(mul_ln62_fu_1706_p1),.dout(mul_ln62_fu_1706_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U765(.din0(mul_ln88_fu_1721_p0),.din1(mul_ln88_fu_1721_p1),.dout(mul_ln88_fu_1721_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U766(.din0(mul_ln114_fu_1736_p0),.din1(mul_ln114_fu_1736_p1),.dout(mul_ln114_fu_1736_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U767(.din0(mul_ln140_fu_1751_p0),.din1(mul_ln140_fu_1751_p1),.dout(mul_ln140_fu_1751_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U768(.din0(v_fu_1773_p2),.din1(v_fu_1773_p4),.din2(v_fu_1773_p6),.din3(v_fu_1773_p8),.def(v_fu_1773_p9),.sel(trunc_ln31_reg_2562),.dout(v_fu_1773_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U769(.din0(v11_1_fu_1812_p2),.din1(v11_1_fu_1812_p4),.din2(v11_1_fu_1812_p6),.din3(v11_1_fu_1812_p8),.def(v11_1_fu_1812_p9),.sel(trunc_ln31_reg_2562),.dout(v11_1_fu_1812_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U770(.din0(v24_1_fu_1937_p2),.din1(v24_1_fu_1937_p4),.din2(v24_1_fu_1937_p6),.din3(v24_1_fu_1937_p8),.def(v24_1_fu_1937_p9),.sel(trunc_ln31_reg_2562),.dout(v24_1_fu_1937_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U771(.din0(v35_1_fu_1976_p2),.din1(v35_1_fu_1976_p4),.din2(v35_1_fu_1976_p6),.din3(v35_1_fu_1976_p8),.def(v35_1_fu_1976_p9),.sel(trunc_ln31_reg_2562),.dout(v35_1_fu_1976_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U772(.din0(v46_1_fu_2101_p2),.din1(v46_1_fu_2101_p4),.din2(v46_1_fu_2101_p6),.din3(v46_1_fu_2101_p8),.def(v46_1_fu_2101_p9),.sel(trunc_ln31_reg_2562),.dout(v46_1_fu_2101_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U773(.din0(v57_1_fu_2140_p2),.din1(v57_1_fu_2140_p4),.din2(v57_1_fu_2140_p6),.din3(v57_1_fu_2140_p8),.def(v57_1_fu_2140_p9),.sel(trunc_ln31_reg_2562),.dout(v57_1_fu_2140_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U774(.din0(v68_1_fu_2327_p2),.din1(v68_1_fu_2327_p4),.din2(v68_1_fu_2327_p6),.din3(v68_1_fu_2327_p8),.def(v68_1_fu_2327_p9),.sel(trunc_ln31_reg_2562),.dout(v68_1_fu_2327_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U775(.din0(v79_1_fu_2366_p2),.din1(v79_1_fu_2366_p4),.din2(v79_1_fu_2366_p6),.din3(v79_1_fu_2366_p8),.def(v79_1_fu_2366_p9),.sel(trunc_ln31_reg_2562),.dout(v79_1_fu_2366_p11));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U776(.din0(mul_ln49_fu_2412_p0),.din1(mul_ln49_fu_2412_p1),.dout(mul_ln49_fu_2412_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U777(.din0(mul_ln75_fu_2427_p0),.din1(mul_ln75_fu_2427_p1),.dout(mul_ln75_fu_2427_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U778(.din0(mul_ln101_fu_2442_p0),.din1(mul_ln101_fu_2442_p1),.dout(mul_ln101_fu_2442_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U779(.din0(mul_ln127_fu_2457_p0),.din1(mul_ln127_fu_2457_p1),.dout(mul_ln127_fu_2457_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U780(.din0(v90_1_fu_2479_p2),.din1(v90_1_fu_2479_p4),.din2(v90_1_fu_2479_p6),.din3(v90_1_fu_2479_p8),.def(v90_1_fu_2479_p9),.sel(trunc_ln31_reg_2562),.dout(v90_1_fu_2479_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U781(.din0(v101_1_fu_2518_p2),.din1(v101_1_fu_2518_p4),.din2(v101_1_fu_2518_p6),.din3(v101_1_fu_2518_p8),.def(v101_1_fu_2518_p9),.sel(trunc_ln31_reg_2562),.dout(v101_1_fu_2518_p11));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U783(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3235_p0),.din1(grp_fu_3235_p1),.ce(grp_fu_3235_ce),.dout(grp_fu_3235_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_218_fu_832_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state13)) begin
            grp_kernel_2mm_node0_Pipeline_label_218_fu_832_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_218_fu_832_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_218_fu_832_ap_start_reg <= 1'b0;
        end
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
        v5_fu_158 <= 8'd0;
    end else if (((icmp_ln32_fu_916_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v5_fu_158 <= add_ln31_reg_2557;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln31_fu_874_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v6_reg_786 <= 8'd0;
    end else if (((grp_kernel_2mm_node0_Pipeline_label_218_fu_832_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
        v6_reg_786 <= add_ln32_1_reg_2688;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln31_reg_2557 <= add_ln31_fu_880_p2;
        cmp11_reg_2614 <= cmp11_fu_910_p2;
        mul_ln38_reg_2608 <= mul_ln38_fu_904_p2;
        trunc_ln31_reg_2562 <= trunc_ln31_fu_886_p1;
        zext_ln38_reg_2586[5 : 0] <= zext_ln38_fu_900_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_1_reg_2688 <= add_ln32_1_fu_1022_p2;
        empty_436_reg_2676 <= empty_436_fu_1010_p2;
        empty_444_reg_2682 <= empty_444_fu_1016_p2;
        lshr_ln1_reg_2643 <= {{v6_reg_786[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        add_ln32_reg_2873 <= add_ln32_fu_1518_p2;
        empty_481_reg_2867 <= empty_481_fu_1512_p2;
        v57_2_reg_2817 <= v57_2_fu_1376_p11;
        v68_2_reg_2822 <= v68_2_fu_1415_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        empty_451_reg_2743 <= empty_451_fu_1184_p2;
        empty_459_reg_2749 <= empty_459_fu_1190_p2;
        v11_reg_2693 <= v11_fu_1048_p11;
        v24_reg_2698 <= v24_fu_1087_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        empty_466_reg_2805 <= empty_466_fu_1348_p2;
        empty_474_reg_2811 <= empty_474_fu_1354_p2;
        v35_reg_2755 <= v35_fu_1212_p11;
        v46_2_reg_2760 <= v46_2_fu_1251_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        empty_495_reg_2929 <= empty_495_fu_1676_p2;
        empty_503_reg_2935 <= empty_503_fu_1682_p2;
        v79_2_reg_2879 <= v79_2_fu_1540_p11;
        v90_2_reg_2884 <= v90_2_fu_1579_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        empty_510_reg_3017 <= empty_510_fu_1909_p2;
        empty_518_reg_3023 <= empty_518_fu_1915_p2;
        mul_ln114_reg_2956 <= mul_ln114_fu_1736_p2;
        mul_ln140_reg_2961 <= mul_ln140_fu_1751_p2;
        mul_ln34_reg_2941 <= mul_ln34_fu_1691_p2;
        mul_ln62_reg_2946 <= mul_ln62_fu_1706_p2;
        mul_ln88_reg_2951 <= mul_ln88_fu_1721_p2;
        v11_1_reg_2972 <= v11_1_fu_1812_p11;
        v_reg_2967 <= v_fu_1773_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        empty_525_reg_3079 <= empty_525_fu_2073_p2;
        empty_533_reg_3085 <= empty_533_fu_2079_p2;
        v24_1_reg_3029 <= v24_1_fu_1937_p11;
        v35_1_reg_3034 <= v35_1_fu_1976_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        empty_542_reg_3141 <= empty_542_fu_2269_p2;
        empty_550_reg_3146 <= empty_550_fu_2306_p2;
        v46_1_reg_3091 <= v46_1_fu_2101_p11;
        v57_1_reg_3096 <= v57_1_fu_2140_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        mul_ln101_reg_3211 <= mul_ln101_fu_2442_p2;
        mul_ln127_reg_3216 <= mul_ln127_fu_2457_p2;
        mul_ln49_reg_3201 <= mul_ln49_fu_2412_p2;
        mul_ln75_reg_3206 <= mul_ln75_fu_2427_p2;
        v101_1_reg_3226 <= v101_1_fu_2518_p11;
        v90_1_reg_3221 <= v90_1_fu_2479_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v68_1_reg_3151 <= v68_1_fu_2327_p11;
        v79_1_reg_3156 <= v79_1_fu_2366_p11;
    end
end
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_798_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_218_fu_832_ap_done == 1'b0)) begin
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
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) | ((icmp_ln31_fu_874_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
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
    if (((icmp_ln31_fu_874_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3231_ce = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3231_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3231_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3231_p_ce;
    end else begin
        grp_fu_3231_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3231_p0 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3231_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3231_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3231_p_din0;
    end else begin
        grp_fu_3231_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3231_p1 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3231_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3231_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3231_p_din1;
    end else begin
        grp_fu_3231_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3235_ce = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3235_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3235_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3235_p_ce;
    end else begin
        grp_fu_3235_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3235_p0 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3235_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3235_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3235_p_din0;
    end else begin
        grp_fu_3235_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3235_p1 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3235_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3235_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3235_p_din1;
    end else begin
        grp_fu_3235_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3239_ce = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3239_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3239_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3239_p_ce;
    end else begin
        grp_fu_3239_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3239_p0 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3239_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3239_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3239_p_din0;
    end else begin
        grp_fu_3239_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3239_p1 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3239_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3239_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3239_p_din1;
    end else begin
        grp_fu_3239_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3243_ce = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3243_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3243_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3243_p_ce;
    end else begin
        grp_fu_3243_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3243_p0 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3243_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3243_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3243_p_din0;
    end else begin
        grp_fu_3243_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3243_p1 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3243_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3243_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3243_p_din1;
    end else begin
        grp_fu_3243_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3247_ce = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3247_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3247_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3247_p_ce;
    end else begin
        grp_fu_3247_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3247_p0 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3247_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3247_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3247_p_din0;
    end else begin
        grp_fu_3247_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3247_p1 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3247_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3247_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3247_p_din1;
    end else begin
        grp_fu_3247_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3251_ce = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3251_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3251_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3251_p_ce;
    end else begin
        grp_fu_3251_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3251_p0 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3251_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3251_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3251_p_din0;
    end else begin
        grp_fu_3251_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3251_p1 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_grp_fu_3251_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3251_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_grp_fu_3251_p_din1;
    end else begin
        grp_fu_3251_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_0_address0_local = p_cast794_fu_2396_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_0_address0_local = p_cast792_fu_2229_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_0_address0_local = p_cast790_fu_2065_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_0_address0_local = p_cast788_fu_1901_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_0_address0_local = p_cast786_fu_1668_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_0_address0_local = p_cast784_fu_1504_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_0_address0_local = p_cast782_fu_1340_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_0_address0_local = p_cast780_fu_1176_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_0_address0_local = p_cast_fu_1002_p1;
    end else begin
        v224_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_0_address1_local = p_cast793_fu_2389_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_0_address1_local = p_cast791_fu_2192_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_0_address1_local = p_cast789_fu_2028_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_0_address1_local = p_cast787_fu_1864_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_0_address1_local = p_cast785_fu_1631_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_0_address1_local = p_cast783_fu_1467_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_0_address1_local = p_cast781_fu_1303_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_0_address1_local = p_cast779_fu_1139_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_0_address1_local = p_cast778_fu_953_p1;
    end else begin
        v224_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_798_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        v224_0_ce0_local = 1'b1;
    end else begin
        v224_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_798_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        v224_0_ce1_local = 1'b1;
    end else begin
        v224_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_1_address0_local = p_cast794_fu_2396_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_1_address0_local = p_cast792_fu_2229_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_1_address0_local = p_cast790_fu_2065_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_1_address0_local = p_cast788_fu_1901_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_1_address0_local = p_cast786_fu_1668_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_1_address0_local = p_cast784_fu_1504_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_1_address0_local = p_cast782_fu_1340_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_1_address0_local = p_cast780_fu_1176_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_1_address0_local = p_cast_fu_1002_p1;
    end else begin
        v224_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_1_address1_local = p_cast793_fu_2389_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_1_address1_local = p_cast791_fu_2192_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_1_address1_local = p_cast789_fu_2028_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_1_address1_local = p_cast787_fu_1864_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_1_address1_local = p_cast785_fu_1631_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_1_address1_local = p_cast783_fu_1467_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_1_address1_local = p_cast781_fu_1303_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_1_address1_local = p_cast779_fu_1139_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_1_address1_local = p_cast778_fu_953_p1;
    end else begin
        v224_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_798_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        v224_1_ce0_local = 1'b1;
    end else begin
        v224_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_798_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        v224_1_ce1_local = 1'b1;
    end else begin
        v224_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_2_address0_local = p_cast794_fu_2396_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_2_address0_local = p_cast792_fu_2229_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_2_address0_local = p_cast790_fu_2065_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_2_address0_local = p_cast788_fu_1901_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_2_address0_local = p_cast786_fu_1668_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_2_address0_local = p_cast784_fu_1504_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_2_address0_local = p_cast782_fu_1340_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_2_address0_local = p_cast780_fu_1176_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_2_address0_local = p_cast_fu_1002_p1;
    end else begin
        v224_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_2_address1_local = p_cast793_fu_2389_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_2_address1_local = p_cast791_fu_2192_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_2_address1_local = p_cast789_fu_2028_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_2_address1_local = p_cast787_fu_1864_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_2_address1_local = p_cast785_fu_1631_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_2_address1_local = p_cast783_fu_1467_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_2_address1_local = p_cast781_fu_1303_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_2_address1_local = p_cast779_fu_1139_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_2_address1_local = p_cast778_fu_953_p1;
    end else begin
        v224_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_798_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        v224_2_ce0_local = 1'b1;
    end else begin
        v224_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_798_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        v224_2_ce1_local = 1'b1;
    end else begin
        v224_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_3_address0_local = p_cast794_fu_2396_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_3_address0_local = p_cast792_fu_2229_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_3_address0_local = p_cast790_fu_2065_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_3_address0_local = p_cast788_fu_1901_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_3_address0_local = p_cast786_fu_1668_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_3_address0_local = p_cast784_fu_1504_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_3_address0_local = p_cast782_fu_1340_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_3_address0_local = p_cast780_fu_1176_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_3_address0_local = p_cast_fu_1002_p1;
    end else begin
        v224_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_3_address1_local = p_cast793_fu_2389_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_3_address1_local = p_cast791_fu_2192_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_3_address1_local = p_cast789_fu_2028_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_3_address1_local = p_cast787_fu_1864_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_3_address1_local = p_cast785_fu_1631_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_3_address1_local = p_cast783_fu_1467_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_3_address1_local = p_cast781_fu_1303_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_3_address1_local = p_cast779_fu_1139_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_3_address1_local = p_cast778_fu_953_p1;
    end else begin
        v224_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_798_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        v224_3_ce0_local = 1'b1;
    end else begin
        v224_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_798_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        v224_3_ce1_local = 1'b1;
    end else begin
        v224_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_0_address0 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_0_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_0_address0;
    end else begin
        v228_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_0_address1 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_0_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_0_address1;
    end else begin
        v228_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_0_ce0;
    end else begin
        v228_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_0_ce1;
    end else begin
        v228_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_1_address0 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_1_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_1_address0;
    end else begin
        v228_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_1_address1 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_1_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_1_address1;
    end else begin
        v228_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_1_ce0;
    end else begin
        v228_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_1_ce1;
    end else begin
        v228_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_2_address0 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_2_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_2_address0;
    end else begin
        v228_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_2_address1 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_2_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_2_address1;
    end else begin
        v228_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_2_ce0;
    end else begin
        v228_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_2_ce1;
    end else begin
        v228_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_3_address0 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_3_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_3_address0;
    end else begin
        v228_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_3_address1 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_3_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_3_address1;
    end else begin
        v228_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_3_ce0;
    end else begin
        v228_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v228_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v228_3_ce1;
    end else begin
        v228_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_0_address0;
    end else begin
        v229_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_0_address1;
    end else begin
        v229_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_0_ce0;
    end else begin
        v229_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_0_ce1;
    end else begin
        v229_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_0_d0;
    end else begin
        v229_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_0_d1;
    end else begin
        v229_0_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_0_we0;
    end else begin
        v229_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_0_we1;
    end else begin
        v229_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_1_address0;
    end else begin
        v229_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_1_address1;
    end else begin
        v229_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_1_ce0;
    end else begin
        v229_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_1_ce1;
    end else begin
        v229_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_1_d0;
    end else begin
        v229_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_1_d1;
    end else begin
        v229_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_1_we0;
    end else begin
        v229_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_v229_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_v229_1_we1;
    end else begin
        v229_1_we1 = 1'b0;
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
            if (((icmp_ln31_fu_874_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln32_fu_916_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_218_fu_832_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
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
assign add_ln31_fu_880_p2 = (v5_fu_158 + 8'd1);
assign add_ln32_1_fu_1022_p2 = (v6_reg_786 + 8'd18);
assign add_ln32_fu_1518_p2 = (v6_reg_786 + 8'd9);
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
assign cmp11_fu_910_p2 = ((v5_fu_158 == 8'd0) ? 1'b1 : 1'b0);
assign empty_425_fu_948_p2 = (empty_fu_942_p2 + zext_ln38_reg_2586);
assign empty_430_fu_991_p2 = (p_shl2_fu_971_p3 - p_shl874_fu_987_p1);
assign empty_431_fu_997_p2 = (empty_430_fu_991_p2 + zext_ln38_reg_2586);
assign empty_436_fu_1010_p2 = (v6_reg_786 + 8'd2);
assign empty_437_fu_1128_p2 = (p_shl3_fu_1110_p3 - p_shl872_fu_1124_p1);
assign empty_438_fu_1134_p2 = (empty_437_fu_1128_p2 + zext_ln38_reg_2586);
assign empty_439_fu_1697_p2 = (lshr_ln1_reg_2643 + 7'd1);
assign empty_444_fu_1016_p2 = (v6_reg_786 + 8'd3);
assign empty_445_fu_1165_p2 = (p_shl4_fu_1147_p3 - p_shl870_fu_1161_p1);
assign empty_446_fu_1171_p2 = (empty_445_fu_1165_p2 + zext_ln38_reg_2586);
assign empty_451_fu_1184_p2 = (v6_reg_786 + 8'd4);
assign empty_452_fu_1292_p2 = (p_shl5_fu_1274_p3 - p_shl868_fu_1288_p1);
assign empty_453_fu_1298_p2 = (empty_452_fu_1292_p2 + zext_ln38_reg_2586);
assign empty_454_fu_1712_p2 = (lshr_ln1_reg_2643 + 7'd2);
assign empty_459_fu_1190_p2 = (v6_reg_786 + 8'd5);
assign empty_460_fu_1329_p2 = (p_shl6_fu_1311_p3 - p_shl866_fu_1325_p1);
assign empty_461_fu_1335_p2 = (empty_460_fu_1329_p2 + zext_ln38_reg_2586);
assign empty_466_fu_1348_p2 = (v6_reg_786 + 8'd6);
assign empty_467_fu_1456_p2 = (p_shl7_fu_1438_p3 - p_shl864_fu_1452_p1);
assign empty_468_fu_1462_p2 = (empty_467_fu_1456_p2 + zext_ln38_reg_2586);
assign empty_469_fu_1727_p2 = (lshr_ln1_reg_2643 + 7'd3);
assign empty_474_fu_1354_p2 = (v6_reg_786 + 8'd7);
assign empty_475_fu_1493_p2 = (p_shl8_fu_1475_p3 - p_shl862_fu_1489_p1);
assign empty_476_fu_1499_p2 = (empty_475_fu_1493_p2 + zext_ln38_reg_2586);
assign empty_481_fu_1512_p2 = (v6_reg_786 + 8'd8);
assign empty_482_fu_1620_p2 = (p_shl9_fu_1602_p3 - p_shl860_fu_1616_p1);
assign empty_483_fu_1626_p2 = (empty_482_fu_1620_p2 + zext_ln38_reg_2586);
assign empty_484_fu_1742_p2 = (lshr_ln1_reg_2643 + 7'd4);
assign empty_489_fu_1657_p2 = (p_shl10_fu_1639_p3 - p_shl858_fu_1653_p1);
assign empty_490_fu_1663_p2 = (empty_489_fu_1657_p2 + zext_ln38_reg_2586);
assign empty_495_fu_1676_p2 = (v6_reg_786 + 8'd10);
assign empty_496_fu_1853_p2 = (p_shl11_fu_1835_p3 - p_shl856_fu_1849_p1);
assign empty_497_fu_1859_p2 = (empty_496_fu_1853_p2 + zext_ln38_reg_2586);
assign empty_498_fu_2403_p2 = (lshr_ln1_reg_2643 + 7'd5);
assign empty_503_fu_1682_p2 = (v6_reg_786 + 8'd11);
assign empty_504_fu_1890_p2 = (p_shl12_fu_1872_p3 - p_shl854_fu_1886_p1);
assign empty_505_fu_1896_p2 = (empty_504_fu_1890_p2 + zext_ln38_reg_2586);
assign empty_510_fu_1909_p2 = (v6_reg_786 + 8'd12);
assign empty_511_fu_2017_p2 = (p_shl13_fu_1999_p3 - p_shl852_fu_2013_p1);
assign empty_512_fu_2023_p2 = (empty_511_fu_2017_p2 + zext_ln38_reg_2586);
assign empty_513_fu_2418_p2 = (lshr_ln1_reg_2643 + 7'd6);
assign empty_518_fu_1915_p2 = (v6_reg_786 + 8'd13);
assign empty_519_fu_2054_p2 = (p_shl14_fu_2036_p3 - p_shl850_fu_2050_p1);
assign empty_520_fu_2060_p2 = (empty_519_fu_2054_p2 + zext_ln38_reg_2586);
assign empty_525_fu_2073_p2 = (v6_reg_786 + 8'd14);
assign empty_526_fu_2181_p2 = (p_shl15_fu_2163_p3 - p_shl848_fu_2177_p1);
assign empty_527_fu_2187_p2 = (empty_526_fu_2181_p2 + zext_ln38_reg_2586);
assign empty_528_fu_2433_p2 = (lshr_ln1_reg_2643 + 7'd7);
assign empty_533_fu_2079_p2 = (v6_reg_786 + 8'd15);
assign empty_534_fu_2218_p2 = (p_shl16_fu_2200_p3 - p_shl846_fu_2214_p1);
assign empty_535_fu_2224_p2 = (empty_534_fu_2218_p2 + zext_ln38_reg_2586);
assign empty_540_fu_2237_p2 = (v6_reg_786 + 8'd16);
assign empty_541_fu_2263_p2 = (p_shl17_fu_2243_p3 - p_shl844_fu_2259_p1);
assign empty_542_fu_2269_p2 = (empty_541_fu_2263_p2 + zext_ln38_reg_2586);
assign empty_543_fu_2448_p2 = (lshr_ln1_reg_2643 + 7'd8);
assign empty_548_fu_2274_p2 = (v6_reg_786 + 8'd17);
assign empty_549_fu_2300_p2 = (p_shl_fu_2280_p3 - p_shl842_fu_2296_p1);
assign empty_550_fu_2306_p2 = (empty_549_fu_2300_p2 + zext_ln38_reg_2586);
assign empty_fu_942_p2 = (p_shl1_fu_922_p3 - p_shl876_fu_938_p1);
assign grp_fu_148_p_ce = grp_fu_3231_ce;
assign grp_fu_148_p_din0 = grp_fu_3231_p0;
assign grp_fu_148_p_din1 = grp_fu_3231_p1;
assign grp_fu_148_p_opcode = 2'd0;
assign grp_fu_152_p_ce = grp_fu_3239_ce;
assign grp_fu_152_p_din0 = grp_fu_3239_p0;
assign grp_fu_152_p_din1 = grp_fu_3239_p1;
assign grp_fu_156_p_ce = grp_fu_3243_ce;
assign grp_fu_156_p_din0 = grp_fu_3243_p0;
assign grp_fu_156_p_din1 = grp_fu_3243_p1;
assign grp_fu_160_p_ce = grp_fu_3247_ce;
assign grp_fu_160_p_din0 = grp_fu_3247_p0;
assign grp_fu_160_p_din1 = grp_fu_3247_p1;
assign grp_fu_164_p_ce = grp_fu_3251_ce;
assign grp_fu_164_p_din0 = grp_fu_3251_p0;
assign grp_fu_164_p_din1 = grp_fu_3251_p1;
assign grp_kernel_2mm_node0_Pipeline_label_218_fu_832_ap_start = grp_kernel_2mm_node0_Pipeline_label_218_fu_832_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_2_fu_798_ap_start = grp_kernel_2mm_node0_Pipeline_label_2_fu_798_ap_start_reg;
assign icmp_ln31_fu_874_p2 = ((v5_fu_158 == 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_916_p2 = ((v6_reg_786 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_961_p4 = {{v6_reg_786[7:1]}};
assign lshr_ln_fu_890_p4 = {{v5_fu_158[7:2]}};
assign mul_ln101_fu_2442_p0 = mul_ln101_fu_2442_p00;
assign mul_ln101_fu_2442_p00 = empty_528_fu_2433_p2;
assign mul_ln101_fu_2442_p1 = 15'd220;
assign mul_ln114_fu_1736_p0 = mul_ln114_fu_1736_p00;
assign mul_ln114_fu_1736_p00 = empty_469_fu_1727_p2;
assign mul_ln114_fu_1736_p1 = 15'd220;
assign mul_ln127_fu_2457_p0 = mul_ln127_fu_2457_p00;
assign mul_ln127_fu_2457_p00 = empty_543_fu_2448_p2;
assign mul_ln127_fu_2457_p1 = 15'd220;
assign mul_ln140_fu_1751_p0 = mul_ln140_fu_1751_p00;
assign mul_ln140_fu_1751_p00 = empty_484_fu_1742_p2;
assign mul_ln140_fu_1751_p1 = 15'd220;
assign mul_ln34_fu_1691_p0 = mul_ln34_fu_1691_p00;
assign mul_ln34_fu_1691_p00 = lshr_ln1_reg_2643;
assign mul_ln34_fu_1691_p1 = 15'd220;
assign mul_ln38_fu_904_p0 = mul_ln38_fu_904_p00;
assign mul_ln38_fu_904_p00 = lshr_ln_fu_890_p4;
assign mul_ln38_fu_904_p1 = 14'd220;
assign mul_ln49_fu_2412_p0 = mul_ln49_fu_2412_p00;
assign mul_ln49_fu_2412_p00 = empty_498_fu_2403_p2;
assign mul_ln49_fu_2412_p1 = 15'd220;
assign mul_ln62_fu_1706_p0 = mul_ln62_fu_1706_p00;
assign mul_ln62_fu_1706_p00 = empty_439_fu_1697_p2;
assign mul_ln62_fu_1706_p1 = 15'd220;
assign mul_ln75_fu_2427_p0 = mul_ln75_fu_2427_p00;
assign mul_ln75_fu_2427_p00 = empty_513_fu_2418_p2;
assign mul_ln75_fu_2427_p1 = 15'd220;
assign mul_ln88_fu_1721_p0 = mul_ln88_fu_1721_p00;
assign mul_ln88_fu_1721_p00 = empty_454_fu_1712_p2;
assign mul_ln88_fu_1721_p1 = 15'd220;
assign p_cast778_fu_953_p1 = empty_425_fu_948_p2;
assign p_cast779_fu_1139_p1 = empty_438_fu_1134_p2;
assign p_cast780_fu_1176_p1 = empty_446_fu_1171_p2;
assign p_cast781_fu_1303_p1 = empty_453_fu_1298_p2;
assign p_cast782_fu_1340_p1 = empty_461_fu_1335_p2;
assign p_cast783_fu_1467_p1 = empty_468_fu_1462_p2;
assign p_cast784_fu_1504_p1 = empty_476_fu_1499_p2;
assign p_cast785_fu_1631_p1 = empty_483_fu_1626_p2;
assign p_cast786_fu_1668_p1 = empty_490_fu_1663_p2;
assign p_cast787_fu_1864_p1 = empty_497_fu_1859_p2;
assign p_cast788_fu_1901_p1 = empty_505_fu_1896_p2;
assign p_cast789_fu_2028_p1 = empty_512_fu_2023_p2;
assign p_cast790_fu_2065_p1 = empty_520_fu_2060_p2;
assign p_cast791_fu_2192_p1 = empty_527_fu_2187_p2;
assign p_cast792_fu_2229_p1 = empty_535_fu_2224_p2;
assign p_cast793_fu_2389_p1 = empty_542_reg_3141;
assign p_cast794_fu_2396_p1 = empty_550_reg_3146;
assign p_cast_fu_1002_p1 = empty_431_fu_997_p2;
assign p_shl10_fu_1639_p3 = {{add_ln32_reg_2873}, {6'd0}};
assign p_shl11_fu_1835_p3 = {{empty_495_reg_2929}, {6'd0}};
assign p_shl12_fu_1872_p3 = {{empty_503_reg_2935}, {6'd0}};
assign p_shl13_fu_1999_p3 = {{empty_510_reg_3017}, {6'd0}};
assign p_shl14_fu_2036_p3 = {{empty_518_reg_3023}, {6'd0}};
assign p_shl15_fu_2163_p3 = {{empty_525_reg_3079}, {6'd0}};
assign p_shl16_fu_2200_p3 = {{empty_533_reg_3085}, {6'd0}};
assign p_shl17_fu_2243_p3 = {{empty_540_fu_2237_p2}, {6'd0}};
assign p_shl1_fu_922_p3 = {{v6_reg_786}, {6'd0}};
assign p_shl2_fu_971_p3 = {{lshr_ln1_fu_961_p4}, {7'd64}};
assign p_shl3_fu_1110_p3 = {{empty_436_reg_2676}, {6'd0}};
assign p_shl4_fu_1147_p3 = {{empty_444_reg_2682}, {6'd0}};
assign p_shl5_fu_1274_p3 = {{empty_451_reg_2743}, {6'd0}};
assign p_shl6_fu_1311_p3 = {{empty_459_reg_2749}, {6'd0}};
assign p_shl7_fu_1438_p3 = {{empty_466_reg_2805}, {6'd0}};
assign p_shl842_fu_2296_p1 = tmp_21_fu_2288_p3;
assign p_shl844_fu_2259_p1 = tmp_20_fu_2251_p3;
assign p_shl846_fu_2214_p1 = tmp_19_fu_2207_p3;
assign p_shl848_fu_2177_p1 = tmp_18_fu_2170_p3;
assign p_shl850_fu_2050_p1 = tmp_17_fu_2043_p3;
assign p_shl852_fu_2013_p1 = tmp_16_fu_2006_p3;
assign p_shl854_fu_1886_p1 = tmp_15_fu_1879_p3;
assign p_shl856_fu_1849_p1 = tmp_14_fu_1842_p3;
assign p_shl858_fu_1653_p1 = tmp_13_fu_1646_p3;
assign p_shl860_fu_1616_p1 = tmp_12_fu_1609_p3;
assign p_shl862_fu_1489_p1 = tmp_11_fu_1482_p3;
assign p_shl864_fu_1452_p1 = tmp_10_fu_1445_p3;
assign p_shl866_fu_1325_p1 = tmp_9_fu_1318_p3;
assign p_shl868_fu_1288_p1 = tmp_8_fu_1281_p3;
assign p_shl870_fu_1161_p1 = tmp_7_fu_1154_p3;
assign p_shl872_fu_1124_p1 = tmp_6_fu_1117_p3;
assign p_shl874_fu_987_p1 = tmp_5_fu_979_p3;
assign p_shl876_fu_938_p1 = tmp_fu_930_p3;
assign p_shl8_fu_1475_p3 = {{empty_474_reg_2811}, {6'd0}};
assign p_shl9_fu_1602_p3 = {{empty_481_reg_2867}, {6'd0}};
assign p_shl_fu_2280_p3 = {{empty_548_fu_2274_p2}, {6'd0}};
assign tmp_10_fu_1445_p3 = {{empty_466_reg_2805}, {4'd0}};
assign tmp_11_fu_1482_p3 = {{empty_474_reg_2811}, {4'd0}};
assign tmp_12_fu_1609_p3 = {{empty_481_reg_2867}, {4'd0}};
assign tmp_13_fu_1646_p3 = {{add_ln32_reg_2873}, {4'd0}};
assign tmp_14_fu_1842_p3 = {{empty_495_reg_2929}, {4'd0}};
assign tmp_15_fu_1879_p3 = {{empty_503_reg_2935}, {4'd0}};
assign tmp_16_fu_2006_p3 = {{empty_510_reg_3017}, {4'd0}};
assign tmp_17_fu_2043_p3 = {{empty_518_reg_3023}, {4'd0}};
assign tmp_18_fu_2170_p3 = {{empty_525_reg_3079}, {4'd0}};
assign tmp_19_fu_2207_p3 = {{empty_533_reg_3085}, {4'd0}};
assign tmp_20_fu_2251_p3 = {{empty_540_fu_2237_p2}, {4'd0}};
assign tmp_21_fu_2288_p3 = {{empty_548_fu_2274_p2}, {4'd0}};
assign tmp_5_fu_979_p3 = {{lshr_ln1_fu_961_p4}, {5'd16}};
assign tmp_6_fu_1117_p3 = {{empty_436_reg_2676}, {4'd0}};
assign tmp_7_fu_1154_p3 = {{empty_444_reg_2682}, {4'd0}};
assign tmp_8_fu_1281_p3 = {{empty_451_reg_2743}, {4'd0}};
assign tmp_9_fu_1318_p3 = {{empty_459_reg_2749}, {4'd0}};
assign tmp_fu_930_p3 = {{v6_reg_786}, {4'd0}};
assign trunc_ln31_fu_886_p1 = v5_fu_158[1:0];
assign v101_1_fu_2518_p2 = v224_0_q0;
assign v101_1_fu_2518_p4 = v224_1_q0;
assign v101_1_fu_2518_p6 = v224_2_q0;
assign v101_1_fu_2518_p8 = v224_3_q0;
assign v101_1_fu_2518_p9 = 'bx;
assign v11_1_fu_1812_p2 = v224_0_q0;
assign v11_1_fu_1812_p4 = v224_1_q0;
assign v11_1_fu_1812_p6 = v224_2_q0;
assign v11_1_fu_1812_p8 = v224_3_q0;
assign v11_1_fu_1812_p9 = 'bx;
assign v11_fu_1048_p2 = v224_0_q1;
assign v11_fu_1048_p4 = v224_1_q1;
assign v11_fu_1048_p6 = v224_2_q1;
assign v11_fu_1048_p8 = v224_3_q1;
assign v11_fu_1048_p9 = 'bx;
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
assign v24_1_fu_1937_p2 = v224_0_q1;
assign v24_1_fu_1937_p4 = v224_1_q1;
assign v24_1_fu_1937_p6 = v224_2_q1;
assign v24_1_fu_1937_p8 = v224_3_q1;
assign v24_1_fu_1937_p9 = 'bx;
assign v24_fu_1087_p2 = v224_0_q0;
assign v24_fu_1087_p4 = v224_1_q0;
assign v24_fu_1087_p6 = v224_2_q0;
assign v24_fu_1087_p8 = v224_3_q0;
assign v24_fu_1087_p9 = 'bx;
assign v35_1_fu_1976_p2 = v224_0_q0;
assign v35_1_fu_1976_p4 = v224_1_q0;
assign v35_1_fu_1976_p6 = v224_2_q0;
assign v35_1_fu_1976_p8 = v224_3_q0;
assign v35_1_fu_1976_p9 = 'bx;
assign v35_fu_1212_p2 = v224_0_q1;
assign v35_fu_1212_p4 = v224_1_q1;
assign v35_fu_1212_p6 = v224_2_q1;
assign v35_fu_1212_p8 = v224_3_q1;
assign v35_fu_1212_p9 = 'bx;
assign v46_1_fu_2101_p2 = v224_0_q1;
assign v46_1_fu_2101_p4 = v224_1_q1;
assign v46_1_fu_2101_p6 = v224_2_q1;
assign v46_1_fu_2101_p8 = v224_3_q1;
assign v46_1_fu_2101_p9 = 'bx;
assign v46_2_fu_1251_p2 = v224_0_q0;
assign v46_2_fu_1251_p4 = v224_1_q0;
assign v46_2_fu_1251_p6 = v224_2_q0;
assign v46_2_fu_1251_p8 = v224_3_q0;
assign v46_2_fu_1251_p9 = 'bx;
assign v57_1_fu_2140_p2 = v224_0_q0;
assign v57_1_fu_2140_p4 = v224_1_q0;
assign v57_1_fu_2140_p6 = v224_2_q0;
assign v57_1_fu_2140_p8 = v224_3_q0;
assign v57_1_fu_2140_p9 = 'bx;
assign v57_2_fu_1376_p2 = v224_0_q1;
assign v57_2_fu_1376_p4 = v224_1_q1;
assign v57_2_fu_1376_p6 = v224_2_q1;
assign v57_2_fu_1376_p8 = v224_3_q1;
assign v57_2_fu_1376_p9 = 'bx;
assign v68_1_fu_2327_p2 = v224_0_q1;
assign v68_1_fu_2327_p4 = v224_1_q1;
assign v68_1_fu_2327_p6 = v224_2_q1;
assign v68_1_fu_2327_p8 = v224_3_q1;
assign v68_1_fu_2327_p9 = 'bx;
assign v68_2_fu_1415_p2 = v224_0_q0;
assign v68_2_fu_1415_p4 = v224_1_q0;
assign v68_2_fu_1415_p6 = v224_2_q0;
assign v68_2_fu_1415_p8 = v224_3_q0;
assign v68_2_fu_1415_p9 = 'bx;
assign v79_1_fu_2366_p2 = v224_0_q0;
assign v79_1_fu_2366_p4 = v224_1_q0;
assign v79_1_fu_2366_p6 = v224_2_q0;
assign v79_1_fu_2366_p8 = v224_3_q0;
assign v79_1_fu_2366_p9 = 'bx;
assign v79_2_fu_1540_p2 = v224_0_q1;
assign v79_2_fu_1540_p4 = v224_1_q1;
assign v79_2_fu_1540_p6 = v224_2_q1;
assign v79_2_fu_1540_p8 = v224_3_q1;
assign v79_2_fu_1540_p9 = 'bx;
assign v90_1_fu_2479_p2 = v224_0_q1;
assign v90_1_fu_2479_p4 = v224_1_q1;
assign v90_1_fu_2479_p6 = v224_2_q1;
assign v90_1_fu_2479_p8 = v224_3_q1;
assign v90_1_fu_2479_p9 = 'bx;
assign v90_2_fu_1579_p2 = v224_0_q0;
assign v90_2_fu_1579_p4 = v224_1_q0;
assign v90_2_fu_1579_p6 = v224_2_q0;
assign v90_2_fu_1579_p8 = v224_3_q0;
assign v90_2_fu_1579_p9 = 'bx;
assign v_fu_1773_p2 = v224_0_q1;
assign v_fu_1773_p4 = v224_1_q1;
assign v_fu_1773_p6 = v224_2_q1;
assign v_fu_1773_p8 = v224_3_q1;
assign v_fu_1773_p9 = 'bx;
assign zext_ln38_fu_900_p1 = lshr_ln_fu_890_p4;
always @ (posedge ap_clk) begin
    zext_ln38_reg_2586[13:6] <= 8'b00000000;
end
endmodule 