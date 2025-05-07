module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_0_address0,v224_0_ce0,v224_0_q0,v224_0_address1,v224_0_ce1,v224_0_q1,v224_1_address0,v224_1_ce0,v224_1_q0,v224_1_address1,v224_1_ce1,v224_1_q1,v224_2_address0,v224_2_ce0,v224_2_q0,v224_2_address1,v224_2_ce1,v224_2_q1,v224_3_address0,v224_3_ce0,v224_3_q0,v224_3_address1,v224_3_ce1,v224_3_q1,v228_0_address0,v228_0_ce0,v228_0_q0,v228_0_address1,v228_0_ce1,v228_0_q1,v228_1_address0,v228_1_ce0,v228_1_q0,v228_1_address1,v228_1_ce1,v228_1_q1,v228_2_address0,v228_2_ce0,v228_2_q0,v228_2_address1,v228_2_ce1,v228_2_q1,v228_3_address0,v228_3_ce0,v228_3_q0,v228_3_address1,v228_3_ce1,v228_3_q1,v229_0_address0,v229_0_ce0,v229_0_we0,v229_0_d0,v229_0_q0,v229_0_address1,v229_0_ce1,v229_0_we1,v229_0_d1,v229_0_q1,v229_1_address0,v229_1_ce0,v229_1_we0,v229_1_d0,v229_1_q0,v229_1_address1,v229_1_ce1,v229_1_we1,v229_1_d1,v229_1_q1,v229_2_address0,v229_2_ce0,v229_2_we0,v229_2_d0,v229_2_q0,v229_2_address1,v229_2_ce1,v229_2_we1,v229_2_d1,v229_2_q1,v229_3_address0,v229_3_ce0,v229_3_we0,v229_3_d0,v229_3_q0,v229_3_address1,v229_3_ce1,v229_3_we1,v229_3_d1,v229_3_q1,v4,grp_fu_184_p_din0,grp_fu_184_p_din1,grp_fu_184_p_opcode,grp_fu_184_p_dout0,grp_fu_184_p_ce,grp_fu_188_p_din0,grp_fu_188_p_din1,grp_fu_188_p_dout0,grp_fu_188_p_ce,grp_fu_192_p_din0,grp_fu_192_p_din1,grp_fu_192_p_dout0,grp_fu_192_p_ce); 
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
output  [13:0] v229_0_address0;
output   v229_0_ce0;
output   v229_0_we0;
output  [31:0] v229_0_d0;
input  [31:0] v229_0_q0;
output  [13:0] v229_0_address1;
output   v229_0_ce1;
output   v229_0_we1;
output  [31:0] v229_0_d1;
input  [31:0] v229_0_q1;
output  [13:0] v229_1_address0;
output   v229_1_ce0;
output   v229_1_we0;
output  [31:0] v229_1_d0;
input  [31:0] v229_1_q0;
output  [13:0] v229_1_address1;
output   v229_1_ce1;
output   v229_1_we1;
output  [31:0] v229_1_d1;
input  [31:0] v229_1_q1;
output  [13:0] v229_2_address0;
output   v229_2_ce0;
output   v229_2_we0;
output  [31:0] v229_2_d0;
input  [31:0] v229_2_q0;
output  [13:0] v229_2_address1;
output   v229_2_ce1;
output   v229_2_we1;
output  [31:0] v229_2_d1;
input  [31:0] v229_2_q1;
output  [13:0] v229_3_address0;
output   v229_3_ce0;
output   v229_3_we0;
output  [31:0] v229_3_d0;
input  [31:0] v229_3_q0;
output  [13:0] v229_3_address1;
output   v229_3_ce1;
output   v229_3_we1;
output  [31:0] v229_3_d1;
input  [31:0] v229_3_q1;
input  [31:0] v4;
output  [31:0] grp_fu_184_p_din0;
output  [31:0] grp_fu_184_p_din1;
output  [1:0] grp_fu_184_p_opcode;
input  [31:0] grp_fu_184_p_dout0;
output   grp_fu_184_p_ce;
output  [31:0] grp_fu_188_p_din0;
output  [31:0] grp_fu_188_p_din1;
input  [31:0] grp_fu_188_p_dout0;
output   grp_fu_188_p_ce;
output  [31:0] grp_fu_192_p_din0;
output  [31:0] grp_fu_192_p_din1;
input  [31:0] grp_fu_192_p_dout0;
output   grp_fu_192_p_ce;
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
reg[13:0] v229_0_address0;
reg v229_0_ce0;
reg v229_0_we0;
reg[31:0] v229_0_d0;
reg[13:0] v229_0_address1;
reg v229_0_ce1;
reg v229_0_we1;
reg[31:0] v229_0_d1;
reg[13:0] v229_1_address0;
reg v229_1_ce0;
reg v229_1_we0;
reg[31:0] v229_1_d0;
reg[13:0] v229_1_address1;
reg v229_1_ce1;
reg v229_1_we1;
reg[31:0] v229_1_d1;
reg[13:0] v229_2_address0;
reg v229_2_ce0;
reg v229_2_we0;
reg[31:0] v229_2_d0;
reg[13:0] v229_2_address1;
reg v229_2_ce1;
reg v229_2_we1;
reg[31:0] v229_2_d1;
reg[13:0] v229_3_address0;
reg v229_3_ce0;
reg v229_3_we0;
reg[31:0] v229_3_d0;
reg[13:0] v229_3_address1;
reg v229_3_ce1;
reg v229_3_we1;
reg[31:0] v229_3_d1;
(* fsm_encoding = "none" *) reg   [13:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire   [7:0] add_ln31_fu_893_p2;
reg   [7:0] add_ln31_reg_2763;
wire    ap_CS_fsm_state2;
wire   [1:0] trunc_ln31_fu_899_p1;
reg   [1:0] trunc_ln31_reg_2768;
wire   [13:0] zext_ln38_fu_913_p1;
reg   [13:0] zext_ln38_reg_2792;
wire   [13:0] mul_ln38_fu_917_p2;
reg   [13:0] mul_ln38_reg_2814;
wire   [0:0] cmp11_fu_923_p2;
reg   [0:0] cmp11_reg_2820;
wire    ap_CS_fsm_state3;
wire   [7:0] empty_53_fu_1023_p2;
reg   [7:0] empty_53_reg_2869;
reg   [5:0] tmp_2_reg_2875;
wire   [7:0] empty_60_fu_1039_p2;
reg   [7:0] empty_60_reg_2880;
reg   [5:0] tmp_3_reg_2886;
wire   [7:0] add_ln32_1_fu_1055_p2;
reg   [7:0] add_ln32_1_reg_2891;
wire   [31:0] v11_2_fu_1081_p11;
reg   [31:0] v11_2_reg_2896;
wire    ap_CS_fsm_state4;
wire   [31:0] v24_2_fu_1120_p11;
reg   [31:0] v24_2_reg_2901;
wire   [7:0] empty_67_fu_1217_p2;
reg   [7:0] empty_67_reg_2946;
wire   [7:0] empty_75_fu_1223_p2;
reg   [7:0] empty_75_reg_2952;
reg   [5:0] tmp_4_reg_2958;
wire   [31:0] v35_2_fu_1255_p11;
reg   [31:0] v35_2_reg_2963;
wire    ap_CS_fsm_state5;
wire   [31:0] v_fu_1294_p11;
reg   [31:0] v_reg_2968;
wire   [7:0] empty_82_fu_1391_p2;
reg   [7:0] empty_82_reg_3013;
reg   [5:0] tmp_5_reg_3019;
wire   [7:0] empty_89_fu_1407_p2;
reg   [7:0] empty_89_reg_3024;
reg   [5:0] tmp_6_reg_3030;
wire   [31:0] v22_fu_1439_p11;
reg   [31:0] v22_reg_3035;
wire    ap_CS_fsm_state6;
wire   [31:0] v23_fu_1478_p11;
reg   [31:0] v23_reg_3040;
wire   [7:0] empty_96_fu_1575_p2;
reg   [7:0] empty_96_reg_3085;
wire   [7:0] add_ln32_fu_1581_p2;
reg   [7:0] add_ln32_reg_3091;
reg   [5:0] tmp_8_reg_3097;
wire   [31:0] v24_fu_1613_p11;
reg   [31:0] v24_reg_3102;
wire    ap_CS_fsm_state7;
wire   [31:0] v25_fu_1652_p11;
reg   [31:0] v25_reg_3107;
wire   [7:0] empty_110_fu_1749_p2;
reg   [7:0] empty_110_reg_3152;
reg   [5:0] tmp_9_reg_3158;
wire   [7:0] empty_117_fu_1765_p2;
reg   [7:0] empty_117_reg_3163;
reg   [5:0] tmp_s_reg_3169;
wire   [5:0] lshr_ln1_fu_1781_p4;
reg   [5:0] lshr_ln1_reg_3174;
wire    ap_CS_fsm_state8;
wire   [13:0] mul_ln34_fu_1795_p2;
reg   [13:0] mul_ln34_reg_3180;
wire   [13:0] mul_ln62_fu_1804_p2;
reg   [13:0] mul_ln62_reg_3185;
wire   [13:0] mul_ln75_fu_1813_p2;
reg   [13:0] mul_ln75_reg_3190;
wire   [13:0] mul_ln88_fu_1829_p2;
reg   [13:0] mul_ln88_reg_3195;
wire   [13:0] mul_ln101_fu_1838_p2;
reg   [13:0] mul_ln101_reg_3200;
wire   [13:0] mul_ln114_fu_1847_p2;
reg   [13:0] mul_ln114_reg_3205;
wire   [13:0] mul_ln127_fu_1856_p2;
reg   [13:0] mul_ln127_reg_3210;
wire   [13:0] mul_ln140_fu_1872_p2;
reg   [13:0] mul_ln140_reg_3215;
wire   [31:0] v26_fu_1894_p11;
reg   [31:0] v26_reg_3220;
wire   [31:0] v11_1_fu_1933_p11;
reg   [31:0] v11_1_reg_3225;
wire   [7:0] empty_124_fu_2030_p2;
reg   [7:0] empty_124_reg_3270;
wire   [7:0] empty_132_fu_2036_p2;
reg   [7:0] empty_132_reg_3276;
reg   [5:0] tmp_1_reg_3282;
wire   [1:0] trunc_ln32_fu_2052_p1;
reg   [1:0] trunc_ln32_reg_3287;
wire    ap_CS_fsm_state9;
wire   [0:0] icmp_ln41_fu_2057_p2;
reg   [0:0] icmp_ln41_reg_3293;
wire   [31:0] v24_1_fu_2080_p11;
reg   [31:0] v24_1_reg_3299;
wire   [31:0] v35_1_fu_2119_p11;
reg   [31:0] v35_1_reg_3304;
wire   [7:0] empty_139_fu_2216_p2;
reg   [7:0] empty_139_reg_3349;
reg   [5:0] tmp_10_reg_3355;
wire   [7:0] empty_146_fu_2232_p2;
reg   [7:0] empty_146_reg_3360;
reg   [5:0] tmp_11_reg_3366;
wire   [31:0] v46_1_fu_2264_p11;
reg   [31:0] v46_1_reg_3371;
wire    ap_CS_fsm_state10;
wire   [31:0] v57_1_fu_2303_p11;
reg   [31:0] v57_1_reg_3376;
wire   [13:0] empty_155_fu_2432_p2;
reg   [13:0] empty_155_reg_3421;
wire   [13:0] empty_163_fu_2469_p2;
reg   [13:0] empty_163_reg_3426;
reg   [5:0] tmp_12_reg_3431;
wire   [31:0] v68_1_fu_2500_p11;
reg   [31:0] v68_1_reg_3436;
wire    ap_CS_fsm_state11;
wire   [31:0] v79_1_fu_2539_p11;
reg   [31:0] v79_1_reg_3441;
wire   [13:0] mul_ln34_1_fu_2579_p2;
reg   [13:0] mul_ln34_1_reg_3486;
wire    ap_CS_fsm_state12;
wire   [13:0] mul_ln49_fu_2588_p2;
reg   [13:0] mul_ln49_reg_3491;
wire   [13:0] mul_ln62_1_fu_2597_p2;
reg   [13:0] mul_ln62_1_reg_3496;
wire   [13:0] mul_ln75_1_fu_2612_p2;
reg   [13:0] mul_ln75_1_reg_3501;
wire   [13:0] mul_ln88_1_fu_2621_p2;
reg   [13:0] mul_ln88_1_reg_3506;
wire   [13:0] mul_ln101_1_fu_2630_p2;
reg   [13:0] mul_ln101_1_reg_3511;
wire   [13:0] mul_ln114_1_fu_2639_p2;
reg   [13:0] mul_ln114_1_reg_3516;
wire   [13:0] mul_ln127_1_fu_2654_p2;
reg   [13:0] mul_ln127_1_reg_3521;
wire   [31:0] v90_1_fu_2676_p11;
reg   [31:0] v90_1_reg_3526;
wire   [13:0] mul_ln140_1_fu_2702_p2;
reg   [13:0] mul_ln140_1_reg_3531;
wire   [31:0] v101_1_fu_2724_p11;
reg   [31:0] v101_1_reg_3536;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_ap_ready;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_3_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_3_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_3_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_3_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_3_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_3_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_2_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_2_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_2_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_2_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_2_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_2_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_1_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_1_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_0_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_0_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_0_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_0_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_1_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_1_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_2_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_2_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_3_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_3_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3541_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3541_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3541_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3541_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3545_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3545_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3545_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3545_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3549_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3549_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3549_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3549_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3553_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3553_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3553_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3553_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3557_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3557_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3557_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3557_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3561_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3561_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3561_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3561_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3565_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3565_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3565_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3569_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3569_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3569_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3573_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3573_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3573_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3577_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3577_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3577_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3581_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3581_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3581_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3585_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3585_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3585_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3589_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3589_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3589_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3593_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3593_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3593_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3597_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3597_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3597_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3601_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3601_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3601_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3605_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3605_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3605_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_ap_ready;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_3_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_3_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_3_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_3_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_3_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_3_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_2_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_2_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_2_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_2_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_2_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_2_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_1_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_1_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_0_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_0_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_0_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_0_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_1_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_1_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_2_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_2_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_3_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_3_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3541_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3541_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3541_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3541_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3545_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3545_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3545_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3545_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3549_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3549_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3549_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3549_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3553_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3553_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3553_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3553_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3557_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3557_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3557_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3557_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3561_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3561_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3561_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3561_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3565_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3565_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3565_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3569_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3569_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3569_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3573_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3573_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3573_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3577_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3577_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3577_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3581_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3581_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3581_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3585_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3585_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3585_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3589_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3589_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3589_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3593_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3593_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3593_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3597_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3597_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3597_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3601_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3601_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3601_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3605_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3605_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3605_p_ce;
reg   [7:0] v6_reg_780;
wire    ap_CS_fsm_state14;
wire   [0:0] icmp_ln31_fu_887_p2;
reg    grp_kernel_2mm_node0_Pipeline_label_2_fu_792_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_23_fu_835_ap_start_reg;
wire    ap_CS_fsm_state13;
wire   [63:0] p_cast1003_fu_966_p1;
wire   [0:0] icmp_ln32_fu_929_p2;
wire   [63:0] p_cast_fu_1015_p1;
wire   [63:0] p_cast1004_fu_1172_p1;
wire   [63:0] p_cast1005_fu_1209_p1;
wire   [63:0] p_cast1006_fu_1346_p1;
wire   [63:0] p_cast1007_fu_1383_p1;
wire   [63:0] p_cast1008_fu_1530_p1;
wire   [63:0] p_cast1009_fu_1567_p1;
wire   [63:0] p_cast1010_fu_1704_p1;
wire   [63:0] p_cast1011_fu_1741_p1;
wire   [63:0] p_cast1012_fu_1985_p1;
wire   [63:0] p_cast1013_fu_2022_p1;
wire   [63:0] p_cast1014_fu_2171_p1;
wire   [63:0] p_cast1015_fu_2208_p1;
wire   [63:0] p_cast1016_fu_2355_p1;
wire   [63:0] p_cast1017_fu_2392_p1;
wire   [63:0] p_cast1018_fu_2562_p1;
wire   [63:0] p_cast1019_fu_2569_p1;
reg   [7:0] v5_fu_152;
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
wire   [5:0] lshr_ln_fu_903_p4;
wire   [5:0] mul_ln38_fu_917_p0;
wire   [8:0] mul_ln38_fu_917_p1;
wire   [11:0] tmp_7_fu_943_p3;
wire   [13:0] p_shl1_fu_935_p3;
wire   [13:0] p_shl1110_fu_951_p1;
wire   [13:0] empty_fu_955_p2;
wire   [13:0] empty_42_fu_961_p2;
wire   [6:0] tmp_fu_974_p4;
wire   [11:0] tmp_15_fu_992_p3;
wire   [13:0] p_shl2_fu_984_p3;
wire   [13:0] p_shl1108_fu_1000_p1;
wire   [13:0] empty_47_fu_1004_p2;
wire   [13:0] empty_48_fu_1010_p2;
wire   [31:0] v11_2_fu_1081_p2;
wire   [31:0] v11_2_fu_1081_p4;
wire   [31:0] v11_2_fu_1081_p6;
wire   [31:0] v11_2_fu_1081_p8;
wire   [31:0] v11_2_fu_1081_p9;
wire   [31:0] v24_2_fu_1120_p2;
wire   [31:0] v24_2_fu_1120_p4;
wire   [31:0] v24_2_fu_1120_p6;
wire   [31:0] v24_2_fu_1120_p8;
wire   [31:0] v24_2_fu_1120_p9;
wire   [11:0] tmp_16_fu_1150_p3;
wire   [13:0] p_shl3_fu_1143_p3;
wire   [13:0] p_shl1106_fu_1157_p1;
wire   [13:0] empty_54_fu_1161_p2;
wire   [13:0] empty_55_fu_1167_p2;
wire   [11:0] tmp_17_fu_1187_p3;
wire   [13:0] p_shl4_fu_1180_p3;
wire   [13:0] p_shl1104_fu_1194_p1;
wire   [13:0] empty_61_fu_1198_p2;
wire   [13:0] empty_62_fu_1204_p2;
wire   [31:0] v35_2_fu_1255_p2;
wire   [31:0] v35_2_fu_1255_p4;
wire   [31:0] v35_2_fu_1255_p6;
wire   [31:0] v35_2_fu_1255_p8;
wire   [31:0] v35_2_fu_1255_p9;
wire   [31:0] v_fu_1294_p2;
wire   [31:0] v_fu_1294_p4;
wire   [31:0] v_fu_1294_p6;
wire   [31:0] v_fu_1294_p8;
wire   [31:0] v_fu_1294_p9;
wire   [11:0] tmp_18_fu_1324_p3;
wire   [13:0] p_shl5_fu_1317_p3;
wire   [13:0] p_shl1102_fu_1331_p1;
wire   [13:0] empty_68_fu_1335_p2;
wire   [13:0] empty_69_fu_1341_p2;
wire   [11:0] tmp_19_fu_1361_p3;
wire   [13:0] p_shl6_fu_1354_p3;
wire   [13:0] p_shl1100_fu_1368_p1;
wire   [13:0] empty_76_fu_1372_p2;
wire   [13:0] empty_77_fu_1378_p2;
wire   [31:0] v22_fu_1439_p2;
wire   [31:0] v22_fu_1439_p4;
wire   [31:0] v22_fu_1439_p6;
wire   [31:0] v22_fu_1439_p8;
wire   [31:0] v22_fu_1439_p9;
wire   [31:0] v23_fu_1478_p2;
wire   [31:0] v23_fu_1478_p4;
wire   [31:0] v23_fu_1478_p6;
wire   [31:0] v23_fu_1478_p8;
wire   [31:0] v23_fu_1478_p9;
wire   [11:0] tmp_20_fu_1508_p3;
wire   [13:0] p_shl7_fu_1501_p3;
wire   [13:0] p_shl1098_fu_1515_p1;
wire   [13:0] empty_83_fu_1519_p2;
wire   [13:0] empty_84_fu_1525_p2;
wire   [11:0] tmp_21_fu_1545_p3;
wire   [13:0] p_shl8_fu_1538_p3;
wire   [13:0] p_shl1096_fu_1552_p1;
wire   [13:0] empty_90_fu_1556_p2;
wire   [13:0] empty_91_fu_1562_p2;
wire   [31:0] v24_fu_1613_p2;
wire   [31:0] v24_fu_1613_p4;
wire   [31:0] v24_fu_1613_p6;
wire   [31:0] v24_fu_1613_p8;
wire   [31:0] v24_fu_1613_p9;
wire   [31:0] v25_fu_1652_p2;
wire   [31:0] v25_fu_1652_p4;
wire   [31:0] v25_fu_1652_p6;
wire   [31:0] v25_fu_1652_p8;
wire   [31:0] v25_fu_1652_p9;
wire   [11:0] tmp_22_fu_1682_p3;
wire   [13:0] p_shl9_fu_1675_p3;
wire   [13:0] p_shl1094_fu_1689_p1;
wire   [13:0] empty_97_fu_1693_p2;
wire   [13:0] empty_98_fu_1699_p2;
wire   [11:0] tmp_23_fu_1719_p3;
wire   [13:0] p_shl10_fu_1712_p3;
wire   [13:0] p_shl1092_fu_1726_p1;
wire   [13:0] empty_104_fu_1730_p2;
wire   [13:0] empty_105_fu_1736_p2;
wire   [5:0] mul_ln34_fu_1795_p0;
wire   [8:0] mul_ln34_fu_1795_p1;
wire   [5:0] mul_ln62_fu_1804_p0;
wire   [8:0] mul_ln62_fu_1804_p1;
wire   [5:0] mul_ln75_fu_1813_p0;
wire   [8:0] mul_ln75_fu_1813_p1;
wire   [5:0] empty_70_fu_1819_p2;
wire   [5:0] mul_ln88_fu_1829_p0;
wire   [8:0] mul_ln88_fu_1829_p1;
wire   [5:0] mul_ln101_fu_1838_p0;
wire   [8:0] mul_ln101_fu_1838_p1;
wire   [5:0] mul_ln114_fu_1847_p0;
wire   [8:0] mul_ln114_fu_1847_p1;
wire   [5:0] mul_ln127_fu_1856_p0;
wire   [8:0] mul_ln127_fu_1856_p1;
wire   [5:0] empty_99_fu_1862_p2;
wire   [5:0] mul_ln140_fu_1872_p0;
wire   [8:0] mul_ln140_fu_1872_p1;
wire   [31:0] v26_fu_1894_p2;
wire   [31:0] v26_fu_1894_p4;
wire   [31:0] v26_fu_1894_p6;
wire   [31:0] v26_fu_1894_p8;
wire   [31:0] v26_fu_1894_p9;
wire   [31:0] v11_1_fu_1933_p2;
wire   [31:0] v11_1_fu_1933_p4;
wire   [31:0] v11_1_fu_1933_p6;
wire   [31:0] v11_1_fu_1933_p8;
wire   [31:0] v11_1_fu_1933_p9;
wire   [11:0] tmp_24_fu_1963_p3;
wire   [13:0] p_shl11_fu_1956_p3;
wire   [13:0] p_shl1090_fu_1970_p1;
wire   [13:0] empty_111_fu_1974_p2;
wire   [13:0] empty_112_fu_1980_p2;
wire   [11:0] tmp_25_fu_2000_p3;
wire   [13:0] p_shl12_fu_1993_p3;
wire   [13:0] p_shl1088_fu_2007_p1;
wire   [13:0] empty_118_fu_2011_p2;
wire   [13:0] empty_119_fu_2017_p2;
wire   [31:0] v24_1_fu_2080_p2;
wire   [31:0] v24_1_fu_2080_p4;
wire   [31:0] v24_1_fu_2080_p6;
wire   [31:0] v24_1_fu_2080_p8;
wire   [31:0] v24_1_fu_2080_p9;
wire   [31:0] v35_1_fu_2119_p2;
wire   [31:0] v35_1_fu_2119_p4;
wire   [31:0] v35_1_fu_2119_p6;
wire   [31:0] v35_1_fu_2119_p8;
wire   [31:0] v35_1_fu_2119_p9;
wire   [11:0] tmp_26_fu_2149_p3;
wire   [13:0] p_shl13_fu_2142_p3;
wire   [13:0] p_shl1086_fu_2156_p1;
wire   [13:0] empty_125_fu_2160_p2;
wire   [13:0] empty_126_fu_2166_p2;
wire   [11:0] tmp_27_fu_2186_p3;
wire   [13:0] p_shl14_fu_2179_p3;
wire   [13:0] p_shl1084_fu_2193_p1;
wire   [13:0] empty_133_fu_2197_p2;
wire   [13:0] empty_134_fu_2203_p2;
wire   [31:0] v46_1_fu_2264_p2;
wire   [31:0] v46_1_fu_2264_p4;
wire   [31:0] v46_1_fu_2264_p6;
wire   [31:0] v46_1_fu_2264_p8;
wire   [31:0] v46_1_fu_2264_p9;
wire   [31:0] v57_1_fu_2303_p2;
wire   [31:0] v57_1_fu_2303_p4;
wire   [31:0] v57_1_fu_2303_p6;
wire   [31:0] v57_1_fu_2303_p8;
wire   [31:0] v57_1_fu_2303_p9;
wire   [11:0] tmp_28_fu_2333_p3;
wire   [13:0] p_shl15_fu_2326_p3;
wire   [13:0] p_shl1082_fu_2340_p1;
wire   [13:0] empty_140_fu_2344_p2;
wire   [13:0] empty_141_fu_2350_p2;
wire   [11:0] tmp_29_fu_2370_p3;
wire   [13:0] p_shl16_fu_2363_p3;
wire   [13:0] p_shl1080_fu_2377_p1;
wire   [13:0] empty_147_fu_2381_p2;
wire   [13:0] empty_148_fu_2387_p2;
wire   [7:0] empty_153_fu_2400_p2;
wire   [11:0] tmp_30_fu_2414_p3;
wire   [13:0] p_shl17_fu_2406_p3;
wire   [13:0] p_shl1078_fu_2422_p1;
wire   [13:0] empty_154_fu_2426_p2;
wire   [7:0] empty_161_fu_2437_p2;
wire   [11:0] tmp_31_fu_2451_p3;
wire   [13:0] p_shl_fu_2443_p3;
wire   [13:0] p_shl1076_fu_2459_p1;
wire   [13:0] empty_162_fu_2463_p2;
wire   [31:0] v68_1_fu_2500_p2;
wire   [31:0] v68_1_fu_2500_p4;
wire   [31:0] v68_1_fu_2500_p6;
wire   [31:0] v68_1_fu_2500_p8;
wire   [31:0] v68_1_fu_2500_p9;
wire   [31:0] v79_1_fu_2539_p2;
wire   [31:0] v79_1_fu_2539_p4;
wire   [31:0] v79_1_fu_2539_p6;
wire   [31:0] v79_1_fu_2539_p8;
wire   [31:0] v79_1_fu_2539_p9;
wire   [5:0] mul_ln34_1_fu_2579_p0;
wire   [8:0] mul_ln34_1_fu_2579_p1;
wire   [5:0] mul_ln49_fu_2588_p0;
wire   [8:0] mul_ln49_fu_2588_p1;
wire   [5:0] mul_ln62_1_fu_2597_p0;
wire   [8:0] mul_ln62_1_fu_2597_p1;
wire   [5:0] empty_127_fu_2603_p2;
wire   [5:0] mul_ln75_1_fu_2612_p0;
wire   [8:0] mul_ln75_1_fu_2612_p1;
wire   [5:0] mul_ln88_1_fu_2621_p0;
wire   [8:0] mul_ln88_1_fu_2621_p1;
wire   [5:0] mul_ln101_1_fu_2630_p0;
wire   [8:0] mul_ln101_1_fu_2630_p1;
wire   [5:0] mul_ln114_1_fu_2639_p0;
wire   [8:0] mul_ln114_1_fu_2639_p1;
wire   [5:0] empty_156_fu_2645_p2;
wire   [5:0] mul_ln127_1_fu_2654_p0;
wire   [8:0] mul_ln127_1_fu_2654_p1;
wire   [31:0] v90_1_fu_2676_p2;
wire   [31:0] v90_1_fu_2676_p4;
wire   [31:0] v90_1_fu_2676_p6;
wire   [31:0] v90_1_fu_2676_p8;
wire   [31:0] v90_1_fu_2676_p9;
wire   [5:0] mul_ln140_1_fu_2702_p0;
wire   [8:0] mul_ln140_1_fu_2702_p1;
wire   [31:0] v101_1_fu_2724_p2;
wire   [31:0] v101_1_fu_2724_p4;
wire   [31:0] v101_1_fu_2724_p6;
wire   [31:0] v101_1_fu_2724_p8;
wire   [31:0] v101_1_fu_2724_p9;
reg   [31:0] grp_fu_3541_p0;
reg   [31:0] grp_fu_3541_p1;
reg    grp_fu_3541_ce;
wire   [31:0] grp_fu_3545_p2;
reg   [31:0] grp_fu_3545_p0;
reg   [31:0] grp_fu_3545_p1;
reg    grp_fu_3545_ce;
wire   [31:0] grp_fu_3549_p2;
reg   [31:0] grp_fu_3549_p0;
reg   [31:0] grp_fu_3549_p1;
reg    grp_fu_3549_ce;
wire   [31:0] grp_fu_3553_p2;
reg   [31:0] grp_fu_3553_p0;
reg   [31:0] grp_fu_3553_p1;
reg    grp_fu_3553_ce;
wire   [31:0] grp_fu_3557_p2;
reg   [31:0] grp_fu_3557_p0;
reg   [31:0] grp_fu_3557_p1;
reg    grp_fu_3557_ce;
wire   [31:0] grp_fu_3561_p2;
reg   [31:0] grp_fu_3561_p0;
reg   [31:0] grp_fu_3561_p1;
reg    grp_fu_3561_ce;
reg   [31:0] grp_fu_3565_p0;
reg   [31:0] grp_fu_3565_p1;
reg    grp_fu_3565_ce;
reg   [31:0] grp_fu_3569_p0;
reg   [31:0] grp_fu_3569_p1;
reg    grp_fu_3569_ce;
wire   [31:0] grp_fu_3573_p2;
reg   [31:0] grp_fu_3573_p0;
reg   [31:0] grp_fu_3573_p1;
reg    grp_fu_3573_ce;
wire   [31:0] grp_fu_3577_p2;
reg   [31:0] grp_fu_3577_p0;
reg   [31:0] grp_fu_3577_p1;
reg    grp_fu_3577_ce;
wire   [31:0] grp_fu_3581_p2;
reg   [31:0] grp_fu_3581_p0;
reg   [31:0] grp_fu_3581_p1;
reg    grp_fu_3581_ce;
wire   [31:0] grp_fu_3585_p2;
reg   [31:0] grp_fu_3585_p0;
reg   [31:0] grp_fu_3585_p1;
reg    grp_fu_3585_ce;
wire   [31:0] grp_fu_3589_p2;
reg   [31:0] grp_fu_3589_p0;
reg   [31:0] grp_fu_3589_p1;
reg    grp_fu_3589_ce;
wire   [31:0] grp_fu_3593_p2;
reg   [31:0] grp_fu_3593_p0;
reg   [31:0] grp_fu_3593_p1;
reg    grp_fu_3593_ce;
wire   [31:0] grp_fu_3597_p2;
reg   [31:0] grp_fu_3597_p0;
reg   [31:0] grp_fu_3597_p1;
reg    grp_fu_3597_ce;
wire   [31:0] grp_fu_3601_p2;
reg   [31:0] grp_fu_3601_p0;
reg   [31:0] grp_fu_3601_p1;
reg    grp_fu_3601_ce;
wire   [31:0] grp_fu_3605_p2;
reg   [31:0] grp_fu_3605_p0;
reg   [31:0] grp_fu_3605_p1;
reg    grp_fu_3605_ce;
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
wire   [13:0] mul_ln101_1_fu_2630_p00;
wire   [13:0] mul_ln101_fu_1838_p00;
wire   [13:0] mul_ln114_1_fu_2639_p00;
wire   [13:0] mul_ln114_fu_1847_p00;
wire   [13:0] mul_ln127_1_fu_2654_p00;
wire   [13:0] mul_ln127_fu_1856_p00;
wire   [13:0] mul_ln140_1_fu_2702_p00;
wire   [13:0] mul_ln140_fu_1872_p00;
wire   [13:0] mul_ln34_1_fu_2579_p00;
wire   [13:0] mul_ln34_fu_1795_p00;
wire   [13:0] mul_ln38_fu_917_p00;
wire   [13:0] mul_ln49_fu_2588_p00;
wire   [13:0] mul_ln62_1_fu_2597_p00;
wire   [13:0] mul_ln62_fu_1804_p00;
wire   [13:0] mul_ln75_1_fu_2612_p00;
wire   [13:0] mul_ln75_fu_1813_p00;
wire   [13:0] mul_ln88_1_fu_2621_p00;
wire   [13:0] mul_ln88_fu_1829_p00;
wire   [1:0] v11_2_fu_1081_p1;
wire   [1:0] v11_2_fu_1081_p3;
wire  signed [1:0] v11_2_fu_1081_p5;
wire  signed [1:0] v11_2_fu_1081_p7;
wire   [1:0] v24_2_fu_1120_p1;
wire   [1:0] v24_2_fu_1120_p3;
wire  signed [1:0] v24_2_fu_1120_p5;
wire  signed [1:0] v24_2_fu_1120_p7;
wire   [1:0] v35_2_fu_1255_p1;
wire   [1:0] v35_2_fu_1255_p3;
wire  signed [1:0] v35_2_fu_1255_p5;
wire  signed [1:0] v35_2_fu_1255_p7;
wire   [1:0] v_fu_1294_p1;
wire   [1:0] v_fu_1294_p3;
wire  signed [1:0] v_fu_1294_p5;
wire  signed [1:0] v_fu_1294_p7;
wire   [1:0] v22_fu_1439_p1;
wire   [1:0] v22_fu_1439_p3;
wire  signed [1:0] v22_fu_1439_p5;
wire  signed [1:0] v22_fu_1439_p7;
wire   [1:0] v23_fu_1478_p1;
wire   [1:0] v23_fu_1478_p3;
wire  signed [1:0] v23_fu_1478_p5;
wire  signed [1:0] v23_fu_1478_p7;
wire   [1:0] v24_fu_1613_p1;
wire   [1:0] v24_fu_1613_p3;
wire  signed [1:0] v24_fu_1613_p5;
wire  signed [1:0] v24_fu_1613_p7;
wire   [1:0] v25_fu_1652_p1;
wire   [1:0] v25_fu_1652_p3;
wire  signed [1:0] v25_fu_1652_p5;
wire  signed [1:0] v25_fu_1652_p7;
wire   [1:0] v26_fu_1894_p1;
wire   [1:0] v26_fu_1894_p3;
wire  signed [1:0] v26_fu_1894_p5;
wire  signed [1:0] v26_fu_1894_p7;
wire   [1:0] v11_1_fu_1933_p1;
wire   [1:0] v11_1_fu_1933_p3;
wire  signed [1:0] v11_1_fu_1933_p5;
wire  signed [1:0] v11_1_fu_1933_p7;
wire   [1:0] v24_1_fu_2080_p1;
wire   [1:0] v24_1_fu_2080_p3;
wire  signed [1:0] v24_1_fu_2080_p5;
wire  signed [1:0] v24_1_fu_2080_p7;
wire   [1:0] v35_1_fu_2119_p1;
wire   [1:0] v35_1_fu_2119_p3;
wire  signed [1:0] v35_1_fu_2119_p5;
wire  signed [1:0] v35_1_fu_2119_p7;
wire   [1:0] v46_1_fu_2264_p1;
wire   [1:0] v46_1_fu_2264_p3;
wire  signed [1:0] v46_1_fu_2264_p5;
wire  signed [1:0] v46_1_fu_2264_p7;
wire   [1:0] v57_1_fu_2303_p1;
wire   [1:0] v57_1_fu_2303_p3;
wire  signed [1:0] v57_1_fu_2303_p5;
wire  signed [1:0] v57_1_fu_2303_p7;
wire   [1:0] v68_1_fu_2500_p1;
wire   [1:0] v68_1_fu_2500_p3;
wire  signed [1:0] v68_1_fu_2500_p5;
wire  signed [1:0] v68_1_fu_2500_p7;
wire   [1:0] v79_1_fu_2539_p1;
wire   [1:0] v79_1_fu_2539_p3;
wire  signed [1:0] v79_1_fu_2539_p5;
wire  signed [1:0] v79_1_fu_2539_p7;
wire   [1:0] v90_1_fu_2676_p1;
wire   [1:0] v90_1_fu_2676_p3;
wire  signed [1:0] v90_1_fu_2676_p5;
wire  signed [1:0] v90_1_fu_2676_p7;
wire   [1:0] v101_1_fu_2724_p1;
wire   [1:0] v101_1_fu_2724_p3;
wire  signed [1:0] v101_1_fu_2724_p5;
wire  signed [1:0] v101_1_fu_2724_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 14'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_2_fu_792_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_23_fu_835_ap_start_reg = 1'b0;
#0 v5_fu_152 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_2 grp_kernel_2mm_node0_Pipeline_label_2_fu_792(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_ap_ready),.v4(v4),.cmp11(cmp11_reg_2820),.v229_3_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_3_address0),.v229_3_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_3_ce0),.v229_3_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_3_we0),.v229_3_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_3_d0),.v229_3_q0(v229_3_q0),.v229_3_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_3_address1),.v229_3_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_3_ce1),.v229_3_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_3_we1),.v229_3_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_3_d1),.v229_3_q1(v229_3_q1),.v229_2_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_2_address0),.v229_2_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_2_ce0),.v229_2_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_2_we0),.v229_2_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_2_d0),.v229_2_q0(v229_2_q0),.v229_2_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_2_address1),.v229_2_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_2_ce1),.v229_2_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_2_we1),.v229_2_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_2_d1),.v229_2_q1(v229_2_q1),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_0_d1),.v229_0_q1(v229_0_q1),.mul_ln38(mul_ln38_reg_2814),.v228_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_0_ce1),.v228_0_q1(v228_0_q1),.v228_1_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_1_ce1),.v228_1_q1(v228_1_q1),.v228_2_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_2_address0),.v228_2_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_2_ce0),.v228_2_q0(v228_2_q0),.v228_2_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_2_address1),.v228_2_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_2_ce1),.v228_2_q1(v228_2_q1),.v228_3_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_3_address0),.v228_3_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_3_ce0),.v228_3_q0(v228_3_q0),.v228_3_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_3_address1),.v228_3_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_3_ce1),.v228_3_q1(v228_3_q1),.mul_ln34(mul_ln34_reg_3180),.mul_ln88(mul_ln88_reg_3195),.mul_ln140(mul_ln140_reg_3215),.mul_ln62(mul_ln62_reg_3185),.mul_ln114(mul_ln114_reg_3205),.mul_ln101(mul_ln101_reg_3200),.mul_ln75(mul_ln75_reg_3190),.mul_ln127(mul_ln127_reg_3210),.empty_14(trunc_ln32_reg_3287),.empty(trunc_ln31_reg_2768),.v11_2(v11_2_reg_2896),.v24_2(v24_2_reg_2901),.v35_2(v35_2_reg_2963),.v46(v_reg_2968),.v57(v22_reg_3035),.v68(v23_reg_3040),.v79(v24_reg_3102),.v90(v25_reg_3107),.v101(v26_reg_3220),.icmp_ln41(icmp_ln41_reg_3293),.grp_fu_3541_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3541_p_din0),.grp_fu_3541_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3541_p_din1),.grp_fu_3541_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3541_p_opcode),.grp_fu_3541_p_dout0(grp_fu_184_p_dout0),.grp_fu_3541_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3541_p_ce),.grp_fu_3545_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3545_p_din0),.grp_fu_3545_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3545_p_din1),.grp_fu_3545_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3545_p_opcode),.grp_fu_3545_p_dout0(grp_fu_3545_p2),.grp_fu_3545_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3545_p_ce),.grp_fu_3549_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3549_p_din0),.grp_fu_3549_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3549_p_din1),.grp_fu_3549_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3549_p_opcode),.grp_fu_3549_p_dout0(grp_fu_3549_p2),.grp_fu_3549_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3549_p_ce),.grp_fu_3553_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3553_p_din0),.grp_fu_3553_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3553_p_din1),.grp_fu_3553_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3553_p_opcode),.grp_fu_3553_p_dout0(grp_fu_3553_p2),.grp_fu_3553_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3553_p_ce),.grp_fu_3557_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3557_p_din0),.grp_fu_3557_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3557_p_din1),.grp_fu_3557_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3557_p_opcode),.grp_fu_3557_p_dout0(grp_fu_3557_p2),.grp_fu_3557_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3557_p_ce),.grp_fu_3561_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3561_p_din0),.grp_fu_3561_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3561_p_din1),.grp_fu_3561_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3561_p_opcode),.grp_fu_3561_p_dout0(grp_fu_3561_p2),.grp_fu_3561_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3561_p_ce),.grp_fu_3565_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3565_p_din0),.grp_fu_3565_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3565_p_din1),.grp_fu_3565_p_dout0(grp_fu_188_p_dout0),.grp_fu_3565_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3565_p_ce),.grp_fu_3569_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3569_p_din0),.grp_fu_3569_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3569_p_din1),.grp_fu_3569_p_dout0(grp_fu_192_p_dout0),.grp_fu_3569_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3569_p_ce),.grp_fu_3573_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3573_p_din0),.grp_fu_3573_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3573_p_din1),.grp_fu_3573_p_dout0(grp_fu_3573_p2),.grp_fu_3573_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3573_p_ce),.grp_fu_3577_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3577_p_din0),.grp_fu_3577_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3577_p_din1),.grp_fu_3577_p_dout0(grp_fu_3577_p2),.grp_fu_3577_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3577_p_ce),.grp_fu_3581_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3581_p_din0),.grp_fu_3581_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3581_p_din1),.grp_fu_3581_p_dout0(grp_fu_3581_p2),.grp_fu_3581_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3581_p_ce),.grp_fu_3585_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3585_p_din0),.grp_fu_3585_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3585_p_din1),.grp_fu_3585_p_dout0(grp_fu_3585_p2),.grp_fu_3585_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3585_p_ce),.grp_fu_3589_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3589_p_din0),.grp_fu_3589_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3589_p_din1),.grp_fu_3589_p_dout0(grp_fu_3589_p2),.grp_fu_3589_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3589_p_ce),.grp_fu_3593_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3593_p_din0),.grp_fu_3593_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3593_p_din1),.grp_fu_3593_p_dout0(grp_fu_3593_p2),.grp_fu_3593_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3593_p_ce),.grp_fu_3597_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3597_p_din0),.grp_fu_3597_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3597_p_din1),.grp_fu_3597_p_dout0(grp_fu_3597_p2),.grp_fu_3597_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3597_p_ce),.grp_fu_3601_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3601_p_din0),.grp_fu_3601_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3601_p_din1),.grp_fu_3601_p_dout0(grp_fu_3601_p2),.grp_fu_3601_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3601_p_ce),.grp_fu_3605_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3605_p_din0),.grp_fu_3605_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3605_p_din1),.grp_fu_3605_p_dout0(grp_fu_3605_p2),.grp_fu_3605_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3605_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_23 grp_kernel_2mm_node0_Pipeline_label_23_fu_835(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_ap_ready),.v4(v4),.cmp11(cmp11_reg_2820),.v229_3_address0(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_3_address0),.v229_3_ce0(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_3_ce0),.v229_3_we0(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_3_we0),.v229_3_d0(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_3_d0),.v229_3_q0(v229_3_q0),.v229_3_address1(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_3_address1),.v229_3_ce1(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_3_ce1),.v229_3_we1(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_3_we1),.v229_3_d1(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_3_d1),.v229_3_q1(v229_3_q1),.v229_2_address0(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_2_address0),.v229_2_ce0(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_2_ce0),.v229_2_we0(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_2_we0),.v229_2_d0(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_2_d0),.v229_2_q0(v229_2_q0),.v229_2_address1(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_2_address1),.v229_2_ce1(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_2_ce1),.v229_2_we1(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_2_we1),.v229_2_d1(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_2_d1),.v229_2_q1(v229_2_q1),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_0_d1),.v229_0_q1(v229_0_q1),.mul_ln38(mul_ln38_reg_2814),.v228_0_address0(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_0_ce1),.v228_0_q1(v228_0_q1),.v228_1_address0(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_1_ce1),.v228_1_q1(v228_1_q1),.v228_2_address0(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_2_address0),.v228_2_ce0(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_2_ce0),.v228_2_q0(v228_2_q0),.v228_2_address1(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_2_address1),.v228_2_ce1(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_2_ce1),.v228_2_q1(v228_2_q1),.v228_3_address0(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_3_address0),.v228_3_ce0(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_3_ce0),.v228_3_q0(v228_3_q0),.v228_3_address1(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_3_address1),.v228_3_ce1(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_3_ce1),.v228_3_q1(v228_3_q1),.mul_ln49(mul_ln49_reg_3491),.mul_ln75_1(mul_ln75_1_reg_3501),.mul_ln127_1(mul_ln127_1_reg_3521),.mul_ln101_1(mul_ln101_1_reg_3511),.mul_ln34_1(mul_ln34_1_reg_3486),.mul_ln88_1(mul_ln88_1_reg_3506),.mul_ln140_1(mul_ln140_1_reg_3531),.mul_ln62_1(mul_ln62_1_reg_3496),.mul_ln114_1(mul_ln114_1_reg_3516),.empty_13(trunc_ln32_reg_3287),.empty(trunc_ln31_reg_2768),.v11_1(v11_1_reg_3225),.v24_1(v24_1_reg_3299),.v35_1(v35_1_reg_3304),.v46_1(v46_1_reg_3371),.v57_1(v57_1_reg_3376),.v68_1(v68_1_reg_3436),.v79_1(v79_1_reg_3441),.v90_1(v90_1_reg_3526),.v101_1(v101_1_reg_3536),.icmp_ln41(icmp_ln41_reg_3293),.grp_fu_3541_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3541_p_din0),.grp_fu_3541_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3541_p_din1),.grp_fu_3541_p_opcode(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3541_p_opcode),.grp_fu_3541_p_dout0(grp_fu_184_p_dout0),.grp_fu_3541_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3541_p_ce),.grp_fu_3545_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3545_p_din0),.grp_fu_3545_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3545_p_din1),.grp_fu_3545_p_opcode(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3545_p_opcode),.grp_fu_3545_p_dout0(grp_fu_3545_p2),.grp_fu_3545_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3545_p_ce),.grp_fu_3549_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3549_p_din0),.grp_fu_3549_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3549_p_din1),.grp_fu_3549_p_opcode(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3549_p_opcode),.grp_fu_3549_p_dout0(grp_fu_3549_p2),.grp_fu_3549_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3549_p_ce),.grp_fu_3553_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3553_p_din0),.grp_fu_3553_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3553_p_din1),.grp_fu_3553_p_opcode(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3553_p_opcode),.grp_fu_3553_p_dout0(grp_fu_3553_p2),.grp_fu_3553_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3553_p_ce),.grp_fu_3557_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3557_p_din0),.grp_fu_3557_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3557_p_din1),.grp_fu_3557_p_opcode(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3557_p_opcode),.grp_fu_3557_p_dout0(grp_fu_3557_p2),.grp_fu_3557_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3557_p_ce),.grp_fu_3561_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3561_p_din0),.grp_fu_3561_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3561_p_din1),.grp_fu_3561_p_opcode(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3561_p_opcode),.grp_fu_3561_p_dout0(grp_fu_3561_p2),.grp_fu_3561_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3561_p_ce),.grp_fu_3565_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3565_p_din0),.grp_fu_3565_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3565_p_din1),.grp_fu_3565_p_dout0(grp_fu_188_p_dout0),.grp_fu_3565_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3565_p_ce),.grp_fu_3569_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3569_p_din0),.grp_fu_3569_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3569_p_din1),.grp_fu_3569_p_dout0(grp_fu_192_p_dout0),.grp_fu_3569_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3569_p_ce),.grp_fu_3573_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3573_p_din0),.grp_fu_3573_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3573_p_din1),.grp_fu_3573_p_dout0(grp_fu_3573_p2),.grp_fu_3573_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3573_p_ce),.grp_fu_3577_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3577_p_din0),.grp_fu_3577_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3577_p_din1),.grp_fu_3577_p_dout0(grp_fu_3577_p2),.grp_fu_3577_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3577_p_ce),.grp_fu_3581_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3581_p_din0),.grp_fu_3581_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3581_p_din1),.grp_fu_3581_p_dout0(grp_fu_3581_p2),.grp_fu_3581_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3581_p_ce),.grp_fu_3585_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3585_p_din0),.grp_fu_3585_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3585_p_din1),.grp_fu_3585_p_dout0(grp_fu_3585_p2),.grp_fu_3585_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3585_p_ce),.grp_fu_3589_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3589_p_din0),.grp_fu_3589_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3589_p_din1),.grp_fu_3589_p_dout0(grp_fu_3589_p2),.grp_fu_3589_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3589_p_ce),.grp_fu_3593_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3593_p_din0),.grp_fu_3593_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3593_p_din1),.grp_fu_3593_p_dout0(grp_fu_3593_p2),.grp_fu_3593_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3593_p_ce),.grp_fu_3597_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3597_p_din0),.grp_fu_3597_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3597_p_din1),.grp_fu_3597_p_dout0(grp_fu_3597_p2),.grp_fu_3597_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3597_p_ce),.grp_fu_3601_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3601_p_din0),.grp_fu_3601_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3601_p_din1),.grp_fu_3601_p_dout0(grp_fu_3601_p2),.grp_fu_3601_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3601_p_ce),.grp_fu_3605_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3605_p_din0),.grp_fu_3605_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3605_p_din1),.grp_fu_3605_p_dout0(grp_fu_3605_p2),.grp_fu_3605_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3605_p_ce));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U164(.din0(mul_ln38_fu_917_p0),.din1(mul_ln38_fu_917_p1),.dout(mul_ln38_fu_917_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U165(.din0(v11_2_fu_1081_p2),.din1(v11_2_fu_1081_p4),.din2(v11_2_fu_1081_p6),.din3(v11_2_fu_1081_p8),.def(v11_2_fu_1081_p9),.sel(trunc_ln31_reg_2768),.dout(v11_2_fu_1081_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U166(.din0(v24_2_fu_1120_p2),.din1(v24_2_fu_1120_p4),.din2(v24_2_fu_1120_p6),.din3(v24_2_fu_1120_p8),.def(v24_2_fu_1120_p9),.sel(trunc_ln31_reg_2768),.dout(v24_2_fu_1120_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U167(.din0(v35_2_fu_1255_p2),.din1(v35_2_fu_1255_p4),.din2(v35_2_fu_1255_p6),.din3(v35_2_fu_1255_p8),.def(v35_2_fu_1255_p9),.sel(trunc_ln31_reg_2768),.dout(v35_2_fu_1255_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U168(.din0(v_fu_1294_p2),.din1(v_fu_1294_p4),.din2(v_fu_1294_p6),.din3(v_fu_1294_p8),.def(v_fu_1294_p9),.sel(trunc_ln31_reg_2768),.dout(v_fu_1294_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U169(.din0(v22_fu_1439_p2),.din1(v22_fu_1439_p4),.din2(v22_fu_1439_p6),.din3(v22_fu_1439_p8),.def(v22_fu_1439_p9),.sel(trunc_ln31_reg_2768),.dout(v22_fu_1439_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U170(.din0(v23_fu_1478_p2),.din1(v23_fu_1478_p4),.din2(v23_fu_1478_p6),.din3(v23_fu_1478_p8),.def(v23_fu_1478_p9),.sel(trunc_ln31_reg_2768),.dout(v23_fu_1478_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U171(.din0(v24_fu_1613_p2),.din1(v24_fu_1613_p4),.din2(v24_fu_1613_p6),.din3(v24_fu_1613_p8),.def(v24_fu_1613_p9),.sel(trunc_ln31_reg_2768),.dout(v24_fu_1613_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U172(.din0(v25_fu_1652_p2),.din1(v25_fu_1652_p4),.din2(v25_fu_1652_p6),.din3(v25_fu_1652_p8),.def(v25_fu_1652_p9),.sel(trunc_ln31_reg_2768),.dout(v25_fu_1652_p11));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U173(.din0(mul_ln34_fu_1795_p0),.din1(mul_ln34_fu_1795_p1),.dout(mul_ln34_fu_1795_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U174(.din0(mul_ln62_fu_1804_p0),.din1(mul_ln62_fu_1804_p1),.dout(mul_ln62_fu_1804_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U175(.din0(mul_ln75_fu_1813_p0),.din1(mul_ln75_fu_1813_p1),.dout(mul_ln75_fu_1813_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U176(.din0(mul_ln88_fu_1829_p0),.din1(mul_ln88_fu_1829_p1),.dout(mul_ln88_fu_1829_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U177(.din0(mul_ln101_fu_1838_p0),.din1(mul_ln101_fu_1838_p1),.dout(mul_ln101_fu_1838_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U178(.din0(mul_ln114_fu_1847_p0),.din1(mul_ln114_fu_1847_p1),.dout(mul_ln114_fu_1847_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U179(.din0(mul_ln127_fu_1856_p0),.din1(mul_ln127_fu_1856_p1),.dout(mul_ln127_fu_1856_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U180(.din0(mul_ln140_fu_1872_p0),.din1(mul_ln140_fu_1872_p1),.dout(mul_ln140_fu_1872_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U181(.din0(v26_fu_1894_p2),.din1(v26_fu_1894_p4),.din2(v26_fu_1894_p6),.din3(v26_fu_1894_p8),.def(v26_fu_1894_p9),.sel(trunc_ln31_reg_2768),.dout(v26_fu_1894_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U182(.din0(v11_1_fu_1933_p2),.din1(v11_1_fu_1933_p4),.din2(v11_1_fu_1933_p6),.din3(v11_1_fu_1933_p8),.def(v11_1_fu_1933_p9),.sel(trunc_ln31_reg_2768),.dout(v11_1_fu_1933_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U183(.din0(v24_1_fu_2080_p2),.din1(v24_1_fu_2080_p4),.din2(v24_1_fu_2080_p6),.din3(v24_1_fu_2080_p8),.def(v24_1_fu_2080_p9),.sel(trunc_ln31_reg_2768),.dout(v24_1_fu_2080_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U184(.din0(v35_1_fu_2119_p2),.din1(v35_1_fu_2119_p4),.din2(v35_1_fu_2119_p6),.din3(v35_1_fu_2119_p8),.def(v35_1_fu_2119_p9),.sel(trunc_ln31_reg_2768),.dout(v35_1_fu_2119_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U185(.din0(v46_1_fu_2264_p2),.din1(v46_1_fu_2264_p4),.din2(v46_1_fu_2264_p6),.din3(v46_1_fu_2264_p8),.def(v46_1_fu_2264_p9),.sel(trunc_ln31_reg_2768),.dout(v46_1_fu_2264_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U186(.din0(v57_1_fu_2303_p2),.din1(v57_1_fu_2303_p4),.din2(v57_1_fu_2303_p6),.din3(v57_1_fu_2303_p8),.def(v57_1_fu_2303_p9),.sel(trunc_ln31_reg_2768),.dout(v57_1_fu_2303_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U187(.din0(v68_1_fu_2500_p2),.din1(v68_1_fu_2500_p4),.din2(v68_1_fu_2500_p6),.din3(v68_1_fu_2500_p8),.def(v68_1_fu_2500_p9),.sel(trunc_ln31_reg_2768),.dout(v68_1_fu_2500_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U188(.din0(v79_1_fu_2539_p2),.din1(v79_1_fu_2539_p4),.din2(v79_1_fu_2539_p6),.din3(v79_1_fu_2539_p8),.def(v79_1_fu_2539_p9),.sel(trunc_ln31_reg_2768),.dout(v79_1_fu_2539_p11));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U189(.din0(mul_ln34_1_fu_2579_p0),.din1(mul_ln34_1_fu_2579_p1),.dout(mul_ln34_1_fu_2579_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U190(.din0(mul_ln49_fu_2588_p0),.din1(mul_ln49_fu_2588_p1),.dout(mul_ln49_fu_2588_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U191(.din0(mul_ln62_1_fu_2597_p0),.din1(mul_ln62_1_fu_2597_p1),.dout(mul_ln62_1_fu_2597_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U192(.din0(mul_ln75_1_fu_2612_p0),.din1(mul_ln75_1_fu_2612_p1),.dout(mul_ln75_1_fu_2612_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U193(.din0(mul_ln88_1_fu_2621_p0),.din1(mul_ln88_1_fu_2621_p1),.dout(mul_ln88_1_fu_2621_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U194(.din0(mul_ln101_1_fu_2630_p0),.din1(mul_ln101_1_fu_2630_p1),.dout(mul_ln101_1_fu_2630_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U195(.din0(mul_ln114_1_fu_2639_p0),.din1(mul_ln114_1_fu_2639_p1),.dout(mul_ln114_1_fu_2639_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U196(.din0(mul_ln127_1_fu_2654_p0),.din1(mul_ln127_1_fu_2654_p1),.dout(mul_ln127_1_fu_2654_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U197(.din0(v90_1_fu_2676_p2),.din1(v90_1_fu_2676_p4),.din2(v90_1_fu_2676_p6),.din3(v90_1_fu_2676_p8),.def(v90_1_fu_2676_p9),.sel(trunc_ln31_reg_2768),.dout(v90_1_fu_2676_p11));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U198(.din0(mul_ln140_1_fu_2702_p0),.din1(mul_ln140_1_fu_2702_p1),.dout(mul_ln140_1_fu_2702_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U199(.din0(v101_1_fu_2724_p2),.din1(v101_1_fu_2724_p4),.din2(v101_1_fu_2724_p6),.din3(v101_1_fu_2724_p8),.def(v101_1_fu_2724_p9),.sel(trunc_ln31_reg_2768),.dout(v101_1_fu_2724_p11));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U201(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3545_p0),.din1(grp_fu_3545_p1),.ce(grp_fu_3545_ce),.dout(grp_fu_3545_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U202(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3549_p0),.din1(grp_fu_3549_p1),.ce(grp_fu_3549_ce),.dout(grp_fu_3549_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U203(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3553_p0),.din1(grp_fu_3553_p1),.ce(grp_fu_3553_ce),.dout(grp_fu_3553_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U204(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3557_p0),.din1(grp_fu_3557_p1),.ce(grp_fu_3557_ce),.dout(grp_fu_3557_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U205(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3561_p0),.din1(grp_fu_3561_p1),.ce(grp_fu_3561_ce),.dout(grp_fu_3561_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U208(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3573_p0),.din1(grp_fu_3573_p1),.ce(grp_fu_3573_ce),.dout(grp_fu_3573_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U209(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3577_p0),.din1(grp_fu_3577_p1),.ce(grp_fu_3577_ce),.dout(grp_fu_3577_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U210(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3581_p0),.din1(grp_fu_3581_p1),.ce(grp_fu_3581_ce),.dout(grp_fu_3581_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U211(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3585_p0),.din1(grp_fu_3585_p1),.ce(grp_fu_3585_ce),.dout(grp_fu_3585_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U212(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3589_p0),.din1(grp_fu_3589_p1),.ce(grp_fu_3589_ce),.dout(grp_fu_3589_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U213(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3593_p0),.din1(grp_fu_3593_p1),.ce(grp_fu_3593_ce),.dout(grp_fu_3593_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U214(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3597_p0),.din1(grp_fu_3597_p1),.ce(grp_fu_3597_ce),.dout(grp_fu_3597_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U215(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3601_p0),.din1(grp_fu_3601_p1),.ce(grp_fu_3601_ce),.dout(grp_fu_3601_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U216(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3605_p0),.din1(grp_fu_3605_p1),.ce(grp_fu_3605_ce),.dout(grp_fu_3605_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_23_fu_835_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state13)) begin
            grp_kernel_2mm_node0_Pipeline_label_23_fu_835_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_23_fu_835_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_23_fu_835_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_2_fu_792_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_792_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_792_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_792_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_152 <= 8'd0;
    end else if (((icmp_ln32_fu_929_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v5_fu_152 <= add_ln31_reg_2763;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln31_fu_887_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v6_reg_780 <= 8'd0;
    end else if (((grp_kernel_2mm_node0_Pipeline_label_23_fu_835_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
        v6_reg_780 <= add_ln32_1_reg_2891;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln31_reg_2763 <= add_ln31_fu_893_p2;
        cmp11_reg_2820 <= cmp11_fu_923_p2;
        mul_ln38_reg_2814 <= mul_ln38_fu_917_p2;
        trunc_ln31_reg_2768 <= trunc_ln31_fu_899_p1;
        zext_ln38_reg_2792[5 : 0] <= zext_ln38_fu_913_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_1_reg_2891 <= add_ln32_1_fu_1055_p2;
        empty_53_reg_2869 <= empty_53_fu_1023_p2;
        empty_60_reg_2880 <= empty_60_fu_1039_p2;
        tmp_2_reg_2875 <= {{empty_53_fu_1023_p2[7:2]}};
        tmp_3_reg_2886 <= {{empty_60_fu_1039_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        add_ln32_reg_3091 <= add_ln32_fu_1581_p2;
        empty_96_reg_3085 <= empty_96_fu_1575_p2;
        tmp_8_reg_3097 <= {{add_ln32_fu_1581_p2[7:2]}};
        v22_reg_3035 <= v22_fu_1439_p11;
        v23_reg_3040 <= v23_fu_1478_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        empty_110_reg_3152 <= empty_110_fu_1749_p2;
        empty_117_reg_3163 <= empty_117_fu_1765_p2;
        tmp_9_reg_3158 <= {{empty_110_fu_1749_p2[7:2]}};
        tmp_s_reg_3169 <= {{empty_117_fu_1765_p2[7:2]}};
        v24_reg_3102 <= v24_fu_1613_p11;
        v25_reg_3107 <= v25_fu_1652_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        empty_124_reg_3270 <= empty_124_fu_2030_p2;
        empty_132_reg_3276 <= empty_132_fu_2036_p2;
        lshr_ln1_reg_3174 <= {{v6_reg_780[7:2]}};
        mul_ln101_reg_3200 <= mul_ln101_fu_1838_p2;
        mul_ln114_reg_3205 <= mul_ln114_fu_1847_p2;
        mul_ln127_reg_3210 <= mul_ln127_fu_1856_p2;
        mul_ln140_reg_3215 <= mul_ln140_fu_1872_p2;
        mul_ln34_reg_3180 <= mul_ln34_fu_1795_p2;
        mul_ln62_reg_3185 <= mul_ln62_fu_1804_p2;
        mul_ln75_reg_3190 <= mul_ln75_fu_1813_p2;
        mul_ln88_reg_3195 <= mul_ln88_fu_1829_p2;
        tmp_1_reg_3282 <= {{empty_132_fu_2036_p2[7:2]}};
        v11_1_reg_3225 <= v11_1_fu_1933_p11;
        v26_reg_3220 <= v26_fu_1894_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        empty_139_reg_3349 <= empty_139_fu_2216_p2;
        empty_146_reg_3360 <= empty_146_fu_2232_p2;
        icmp_ln41_reg_3293 <= icmp_ln41_fu_2057_p2;
        tmp_10_reg_3355 <= {{empty_139_fu_2216_p2[7:2]}};
        tmp_11_reg_3366 <= {{empty_146_fu_2232_p2[7:2]}};
        trunc_ln32_reg_3287 <= trunc_ln32_fu_2052_p1;
        v24_1_reg_3299 <= v24_1_fu_2080_p11;
        v35_1_reg_3304 <= v35_1_fu_2119_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        empty_155_reg_3421 <= empty_155_fu_2432_p2;
        empty_163_reg_3426 <= empty_163_fu_2469_p2;
        tmp_12_reg_3431 <= {{empty_161_fu_2437_p2[7:2]}};
        v46_1_reg_3371 <= v46_1_fu_2264_p11;
        v57_1_reg_3376 <= v57_1_fu_2303_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        empty_67_reg_2946 <= empty_67_fu_1217_p2;
        empty_75_reg_2952 <= empty_75_fu_1223_p2;
        tmp_4_reg_2958 <= {{empty_75_fu_1223_p2[7:2]}};
        v11_2_reg_2896 <= v11_2_fu_1081_p11;
        v24_2_reg_2901 <= v24_2_fu_1120_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        empty_82_reg_3013 <= empty_82_fu_1391_p2;
        empty_89_reg_3024 <= empty_89_fu_1407_p2;
        tmp_5_reg_3019 <= {{empty_82_fu_1391_p2[7:2]}};
        tmp_6_reg_3030 <= {{empty_89_fu_1407_p2[7:2]}};
        v35_2_reg_2963 <= v35_2_fu_1255_p11;
        v_reg_2968 <= v_fu_1294_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        mul_ln101_1_reg_3511 <= mul_ln101_1_fu_2630_p2;
        mul_ln114_1_reg_3516 <= mul_ln114_1_fu_2639_p2;
        mul_ln127_1_reg_3521 <= mul_ln127_1_fu_2654_p2;
        mul_ln140_1_reg_3531 <= mul_ln140_1_fu_2702_p2;
        mul_ln34_1_reg_3486 <= mul_ln34_1_fu_2579_p2;
        mul_ln49_reg_3491 <= mul_ln49_fu_2588_p2;
        mul_ln62_1_reg_3496 <= mul_ln62_1_fu_2597_p2;
        mul_ln75_1_reg_3501 <= mul_ln75_1_fu_2612_p2;
        mul_ln88_1_reg_3506 <= mul_ln88_1_fu_2621_p2;
        v101_1_reg_3536 <= v101_1_fu_2724_p11;
        v90_1_reg_3526 <= v90_1_fu_2676_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v68_1_reg_3436 <= v68_1_fu_2500_p11;
        v79_1_reg_3441 <= v79_1_fu_2539_p11;
    end
end
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_792_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_23_fu_835_ap_done == 1'b0)) begin
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
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) | ((icmp_ln31_fu_887_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
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
    if (((icmp_ln31_fu_887_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3541_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3541_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3541_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3541_p_ce;
    end else begin
        grp_fu_3541_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3541_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3541_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3541_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3541_p_din0;
    end else begin
        grp_fu_3541_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3541_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3541_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3541_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3541_p_din1;
    end else begin
        grp_fu_3541_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3545_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3545_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3545_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3545_p_ce;
    end else begin
        grp_fu_3545_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3545_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3545_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3545_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3545_p_din0;
    end else begin
        grp_fu_3545_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3545_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3545_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3545_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3545_p_din1;
    end else begin
        grp_fu_3545_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3549_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3549_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3549_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3549_p_ce;
    end else begin
        grp_fu_3549_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3549_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3549_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3549_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3549_p_din0;
    end else begin
        grp_fu_3549_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3549_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3549_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3549_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3549_p_din1;
    end else begin
        grp_fu_3549_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3553_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3553_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3553_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3553_p_ce;
    end else begin
        grp_fu_3553_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3553_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3553_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3553_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3553_p_din0;
    end else begin
        grp_fu_3553_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3553_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3553_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3553_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3553_p_din1;
    end else begin
        grp_fu_3553_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3557_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3557_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3557_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3557_p_ce;
    end else begin
        grp_fu_3557_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3557_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3557_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3557_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3557_p_din0;
    end else begin
        grp_fu_3557_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3557_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3557_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3557_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3557_p_din1;
    end else begin
        grp_fu_3557_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3561_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3561_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3561_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3561_p_ce;
    end else begin
        grp_fu_3561_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3561_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3561_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3561_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3561_p_din0;
    end else begin
        grp_fu_3561_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3561_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3561_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3561_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3561_p_din1;
    end else begin
        grp_fu_3561_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3565_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3565_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3565_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3565_p_ce;
    end else begin
        grp_fu_3565_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3565_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3565_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3565_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3565_p_din0;
    end else begin
        grp_fu_3565_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3565_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3565_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3565_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3565_p_din1;
    end else begin
        grp_fu_3565_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3569_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3569_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3569_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3569_p_ce;
    end else begin
        grp_fu_3569_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3569_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3569_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3569_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3569_p_din0;
    end else begin
        grp_fu_3569_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3569_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3569_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3569_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3569_p_din1;
    end else begin
        grp_fu_3569_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3573_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3573_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3573_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3573_p_ce;
    end else begin
        grp_fu_3573_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3573_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3573_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3573_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3573_p_din0;
    end else begin
        grp_fu_3573_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3573_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3573_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3573_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3573_p_din1;
    end else begin
        grp_fu_3573_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3577_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3577_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3577_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3577_p_ce;
    end else begin
        grp_fu_3577_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3577_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3577_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3577_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3577_p_din0;
    end else begin
        grp_fu_3577_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3577_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3577_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3577_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3577_p_din1;
    end else begin
        grp_fu_3577_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3581_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3581_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3581_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3581_p_ce;
    end else begin
        grp_fu_3581_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3581_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3581_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3581_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3581_p_din0;
    end else begin
        grp_fu_3581_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3581_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3581_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3581_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3581_p_din1;
    end else begin
        grp_fu_3581_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3585_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3585_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3585_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3585_p_ce;
    end else begin
        grp_fu_3585_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3585_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3585_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3585_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3585_p_din0;
    end else begin
        grp_fu_3585_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3585_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3585_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3585_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3585_p_din1;
    end else begin
        grp_fu_3585_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3589_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3589_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3589_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3589_p_ce;
    end else begin
        grp_fu_3589_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3589_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3589_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3589_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3589_p_din0;
    end else begin
        grp_fu_3589_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3589_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3589_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3589_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3589_p_din1;
    end else begin
        grp_fu_3589_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3593_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3593_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3593_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3593_p_ce;
    end else begin
        grp_fu_3593_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3593_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3593_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3593_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3593_p_din0;
    end else begin
        grp_fu_3593_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3593_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3593_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3593_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3593_p_din1;
    end else begin
        grp_fu_3593_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3597_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3597_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3597_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3597_p_ce;
    end else begin
        grp_fu_3597_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3597_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3597_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3597_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3597_p_din0;
    end else begin
        grp_fu_3597_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3597_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3597_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3597_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3597_p_din1;
    end else begin
        grp_fu_3597_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3601_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3601_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3601_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3601_p_ce;
    end else begin
        grp_fu_3601_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3601_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3601_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3601_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3601_p_din0;
    end else begin
        grp_fu_3601_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3601_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3601_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3601_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3601_p_din1;
    end else begin
        grp_fu_3601_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3605_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3605_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3605_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3605_p_ce;
    end else begin
        grp_fu_3605_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3605_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3605_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3605_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3605_p_din0;
    end else begin
        grp_fu_3605_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3605_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_grp_fu_3605_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3605_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_grp_fu_3605_p_din1;
    end else begin
        grp_fu_3605_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_0_address0_local = p_cast1019_fu_2569_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_0_address0_local = p_cast1017_fu_2392_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_0_address0_local = p_cast1015_fu_2208_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_0_address0_local = p_cast1013_fu_2022_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_0_address0_local = p_cast1011_fu_1741_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_0_address0_local = p_cast1009_fu_1567_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_0_address0_local = p_cast1007_fu_1383_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_0_address0_local = p_cast1005_fu_1209_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_0_address0_local = p_cast_fu_1015_p1;
    end else begin
        v224_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_0_address1_local = p_cast1018_fu_2562_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_0_address1_local = p_cast1016_fu_2355_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_0_address1_local = p_cast1014_fu_2171_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_0_address1_local = p_cast1012_fu_1985_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_0_address1_local = p_cast1010_fu_1704_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_0_address1_local = p_cast1008_fu_1530_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_0_address1_local = p_cast1006_fu_1346_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_0_address1_local = p_cast1004_fu_1172_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_0_address1_local = p_cast1003_fu_966_p1;
    end else begin
        v224_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_792_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        v224_0_ce0_local = 1'b1;
    end else begin
        v224_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_792_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        v224_0_ce1_local = 1'b1;
    end else begin
        v224_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_1_address0_local = p_cast1019_fu_2569_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_1_address0_local = p_cast1017_fu_2392_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_1_address0_local = p_cast1015_fu_2208_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_1_address0_local = p_cast1013_fu_2022_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_1_address0_local = p_cast1011_fu_1741_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_1_address0_local = p_cast1009_fu_1567_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_1_address0_local = p_cast1007_fu_1383_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_1_address0_local = p_cast1005_fu_1209_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_1_address0_local = p_cast_fu_1015_p1;
    end else begin
        v224_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_1_address1_local = p_cast1018_fu_2562_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_1_address1_local = p_cast1016_fu_2355_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_1_address1_local = p_cast1014_fu_2171_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_1_address1_local = p_cast1012_fu_1985_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_1_address1_local = p_cast1010_fu_1704_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_1_address1_local = p_cast1008_fu_1530_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_1_address1_local = p_cast1006_fu_1346_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_1_address1_local = p_cast1004_fu_1172_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_1_address1_local = p_cast1003_fu_966_p1;
    end else begin
        v224_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_792_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        v224_1_ce0_local = 1'b1;
    end else begin
        v224_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_792_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        v224_1_ce1_local = 1'b1;
    end else begin
        v224_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_2_address0_local = p_cast1019_fu_2569_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_2_address0_local = p_cast1017_fu_2392_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_2_address0_local = p_cast1015_fu_2208_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_2_address0_local = p_cast1013_fu_2022_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_2_address0_local = p_cast1011_fu_1741_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_2_address0_local = p_cast1009_fu_1567_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_2_address0_local = p_cast1007_fu_1383_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_2_address0_local = p_cast1005_fu_1209_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_2_address0_local = p_cast_fu_1015_p1;
    end else begin
        v224_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_2_address1_local = p_cast1018_fu_2562_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_2_address1_local = p_cast1016_fu_2355_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_2_address1_local = p_cast1014_fu_2171_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_2_address1_local = p_cast1012_fu_1985_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_2_address1_local = p_cast1010_fu_1704_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_2_address1_local = p_cast1008_fu_1530_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_2_address1_local = p_cast1006_fu_1346_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_2_address1_local = p_cast1004_fu_1172_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_2_address1_local = p_cast1003_fu_966_p1;
    end else begin
        v224_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_792_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        v224_2_ce0_local = 1'b1;
    end else begin
        v224_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_792_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        v224_2_ce1_local = 1'b1;
    end else begin
        v224_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_3_address0_local = p_cast1019_fu_2569_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_3_address0_local = p_cast1017_fu_2392_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_3_address0_local = p_cast1015_fu_2208_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_3_address0_local = p_cast1013_fu_2022_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_3_address0_local = p_cast1011_fu_1741_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_3_address0_local = p_cast1009_fu_1567_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_3_address0_local = p_cast1007_fu_1383_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_3_address0_local = p_cast1005_fu_1209_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_3_address0_local = p_cast_fu_1015_p1;
    end else begin
        v224_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_3_address1_local = p_cast1018_fu_2562_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_3_address1_local = p_cast1016_fu_2355_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_3_address1_local = p_cast1014_fu_2171_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_3_address1_local = p_cast1012_fu_1985_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_3_address1_local = p_cast1010_fu_1704_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_3_address1_local = p_cast1008_fu_1530_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_3_address1_local = p_cast1006_fu_1346_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_3_address1_local = p_cast1004_fu_1172_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_3_address1_local = p_cast1003_fu_966_p1;
    end else begin
        v224_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_792_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        v224_3_ce0_local = 1'b1;
    end else begin
        v224_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_792_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        v224_3_ce1_local = 1'b1;
    end else begin
        v224_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_0_address0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_0_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_0_address0;
    end else begin
        v228_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_0_address1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_0_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_0_address1;
    end else begin
        v228_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_0_ce0;
    end else begin
        v228_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_0_ce1;
    end else begin
        v228_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_1_address0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_1_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_1_address0;
    end else begin
        v228_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_1_address1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_1_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_1_address1;
    end else begin
        v228_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_1_ce0;
    end else begin
        v228_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_1_ce1;
    end else begin
        v228_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_2_address0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_2_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_2_address0;
    end else begin
        v228_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_2_address1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_2_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_2_address1;
    end else begin
        v228_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_2_ce0;
    end else begin
        v228_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_2_ce1;
    end else begin
        v228_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_3_address0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_3_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_3_address0;
    end else begin
        v228_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_3_address1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_3_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_3_address1;
    end else begin
        v228_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_3_ce0;
    end else begin
        v228_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v228_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v228_3_ce1;
    end else begin
        v228_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_0_address0;
    end else begin
        v229_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_0_address1;
    end else begin
        v229_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_0_ce0;
    end else begin
        v229_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_0_ce1;
    end else begin
        v229_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_0_d0;
    end else begin
        v229_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_0_d1;
    end else begin
        v229_0_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_0_we0;
    end else begin
        v229_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_0_we1;
    end else begin
        v229_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_1_address0;
    end else begin
        v229_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_1_address1;
    end else begin
        v229_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_1_ce0;
    end else begin
        v229_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_1_ce1;
    end else begin
        v229_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_1_d0;
    end else begin
        v229_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_1_d1;
    end else begin
        v229_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_1_we0;
    end else begin
        v229_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_1_we1;
    end else begin
        v229_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_2_address0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_2_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_2_address0;
    end else begin
        v229_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_2_address1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_2_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_2_address1;
    end else begin
        v229_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_2_ce0;
    end else begin
        v229_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_2_ce1;
    end else begin
        v229_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_2_d0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_2_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_2_d0;
    end else begin
        v229_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_2_d1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_2_d1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_2_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_2_d1;
    end else begin
        v229_2_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_2_we0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_2_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_2_we0;
    end else begin
        v229_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_2_we1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_2_we1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_2_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_2_we1;
    end else begin
        v229_2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_3_address0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_3_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_3_address0;
    end else begin
        v229_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_3_address1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_3_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_3_address1;
    end else begin
        v229_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_3_ce0;
    end else begin
        v229_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_3_ce1;
    end else begin
        v229_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_3_d0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_3_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_3_d0;
    end else begin
        v229_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_3_d1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_3_d1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_3_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_3_d1;
    end else begin
        v229_3_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_3_we0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_3_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_3_we0;
    end else begin
        v229_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_3_we1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_v229_3_we1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_3_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_v229_3_we1;
    end else begin
        v229_3_we1 = 1'b0;
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
            if (((icmp_ln31_fu_887_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln32_fu_929_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_792_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_23_fu_835_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
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
assign add_ln31_fu_893_p2 = (v5_fu_152 + 8'd1);
assign add_ln32_1_fu_1055_p2 = (v6_reg_780 + 8'd18);
assign add_ln32_fu_1581_p2 = (v6_reg_780 + 8'd9);
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
assign cmp11_fu_923_p2 = ((v5_fu_152 == 8'd0) ? 1'b1 : 1'b0);
assign empty_104_fu_1730_p2 = (p_shl10_fu_1712_p3 - p_shl1092_fu_1726_p1);
assign empty_105_fu_1736_p2 = (empty_104_fu_1730_p2 + zext_ln38_reg_2792);
assign empty_110_fu_1749_p2 = (v6_reg_780 + 8'd10);
assign empty_111_fu_1974_p2 = (p_shl11_fu_1956_p3 - p_shl1090_fu_1970_p1);
assign empty_112_fu_1980_p2 = (empty_111_fu_1974_p2 + zext_ln38_reg_2792);
assign empty_117_fu_1765_p2 = (v6_reg_780 + 8'd11);
assign empty_118_fu_2011_p2 = (p_shl12_fu_1993_p3 - p_shl1088_fu_2007_p1);
assign empty_119_fu_2017_p2 = (empty_118_fu_2011_p2 + zext_ln38_reg_2792);
assign empty_124_fu_2030_p2 = (v6_reg_780 + 8'd12);
assign empty_125_fu_2160_p2 = (p_shl13_fu_2142_p3 - p_shl1086_fu_2156_p1);
assign empty_126_fu_2166_p2 = (empty_125_fu_2160_p2 + zext_ln38_reg_2792);
assign empty_127_fu_2603_p2 = (lshr_ln1_reg_3174 + 6'd3);
assign empty_132_fu_2036_p2 = (v6_reg_780 + 8'd13);
assign empty_133_fu_2197_p2 = (p_shl14_fu_2179_p3 - p_shl1084_fu_2193_p1);
assign empty_134_fu_2203_p2 = (empty_133_fu_2197_p2 + zext_ln38_reg_2792);
assign empty_139_fu_2216_p2 = (v6_reg_780 + 8'd14);
assign empty_140_fu_2344_p2 = (p_shl15_fu_2326_p3 - p_shl1082_fu_2340_p1);
assign empty_141_fu_2350_p2 = (empty_140_fu_2344_p2 + zext_ln38_reg_2792);
assign empty_146_fu_2232_p2 = (v6_reg_780 + 8'd15);
assign empty_147_fu_2381_p2 = (p_shl16_fu_2363_p3 - p_shl1080_fu_2377_p1);
assign empty_148_fu_2387_p2 = (empty_147_fu_2381_p2 + zext_ln38_reg_2792);
assign empty_153_fu_2400_p2 = (v6_reg_780 + 8'd16);
assign empty_154_fu_2426_p2 = (p_shl17_fu_2406_p3 - p_shl1078_fu_2422_p1);
assign empty_155_fu_2432_p2 = (empty_154_fu_2426_p2 + zext_ln38_reg_2792);
assign empty_156_fu_2645_p2 = (lshr_ln1_reg_3174 + 6'd4);
assign empty_161_fu_2437_p2 = (v6_reg_780 + 8'd17);
assign empty_162_fu_2463_p2 = (p_shl_fu_2443_p3 - p_shl1076_fu_2459_p1);
assign empty_163_fu_2469_p2 = (empty_162_fu_2463_p2 + zext_ln38_reg_2792);
assign empty_42_fu_961_p2 = (empty_fu_955_p2 + zext_ln38_reg_2792);
assign empty_47_fu_1004_p2 = (p_shl2_fu_984_p3 - p_shl1108_fu_1000_p1);
assign empty_48_fu_1010_p2 = (empty_47_fu_1004_p2 + zext_ln38_reg_2792);
assign empty_53_fu_1023_p2 = (v6_reg_780 + 8'd2);
assign empty_54_fu_1161_p2 = (p_shl3_fu_1143_p3 - p_shl1106_fu_1157_p1);
assign empty_55_fu_1167_p2 = (empty_54_fu_1161_p2 + zext_ln38_reg_2792);
assign empty_60_fu_1039_p2 = (v6_reg_780 + 8'd3);
assign empty_61_fu_1198_p2 = (p_shl4_fu_1180_p3 - p_shl1104_fu_1194_p1);
assign empty_62_fu_1204_p2 = (empty_61_fu_1198_p2 + zext_ln38_reg_2792);
assign empty_67_fu_1217_p2 = (v6_reg_780 + 8'd4);
assign empty_68_fu_1335_p2 = (p_shl5_fu_1317_p3 - p_shl1102_fu_1331_p1);
assign empty_69_fu_1341_p2 = (empty_68_fu_1335_p2 + zext_ln38_reg_2792);
assign empty_70_fu_1819_p2 = (lshr_ln1_fu_1781_p4 + 6'd1);
assign empty_75_fu_1223_p2 = (v6_reg_780 + 8'd5);
assign empty_76_fu_1372_p2 = (p_shl6_fu_1354_p3 - p_shl1100_fu_1368_p1);
assign empty_77_fu_1378_p2 = (empty_76_fu_1372_p2 + zext_ln38_reg_2792);
assign empty_82_fu_1391_p2 = (v6_reg_780 + 8'd6);
assign empty_83_fu_1519_p2 = (p_shl7_fu_1501_p3 - p_shl1098_fu_1515_p1);
assign empty_84_fu_1525_p2 = (empty_83_fu_1519_p2 + zext_ln38_reg_2792);
assign empty_89_fu_1407_p2 = (v6_reg_780 + 8'd7);
assign empty_90_fu_1556_p2 = (p_shl8_fu_1538_p3 - p_shl1096_fu_1552_p1);
assign empty_91_fu_1562_p2 = (empty_90_fu_1556_p2 + zext_ln38_reg_2792);
assign empty_96_fu_1575_p2 = (v6_reg_780 + 8'd8);
assign empty_97_fu_1693_p2 = (p_shl9_fu_1675_p3 - p_shl1094_fu_1689_p1);
assign empty_98_fu_1699_p2 = (empty_97_fu_1693_p2 + zext_ln38_reg_2792);
assign empty_99_fu_1862_p2 = (lshr_ln1_fu_1781_p4 + 6'd2);
assign empty_fu_955_p2 = (p_shl1_fu_935_p3 - p_shl1110_fu_951_p1);
assign grp_fu_184_p_ce = grp_fu_3541_ce;
assign grp_fu_184_p_din0 = grp_fu_3541_p0;
assign grp_fu_184_p_din1 = grp_fu_3541_p1;
assign grp_fu_184_p_opcode = 2'd0;
assign grp_fu_188_p_ce = grp_fu_3565_ce;
assign grp_fu_188_p_din0 = grp_fu_3565_p0;
assign grp_fu_188_p_din1 = grp_fu_3565_p1;
assign grp_fu_192_p_ce = grp_fu_3569_ce;
assign grp_fu_192_p_din0 = grp_fu_3569_p0;
assign grp_fu_192_p_din1 = grp_fu_3569_p1;
assign grp_kernel_2mm_node0_Pipeline_label_23_fu_835_ap_start = grp_kernel_2mm_node0_Pipeline_label_23_fu_835_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_2_fu_792_ap_start = grp_kernel_2mm_node0_Pipeline_label_2_fu_792_ap_start_reg;
assign icmp_ln31_fu_887_p2 = ((v5_fu_152 == 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_929_p2 = ((v6_reg_780 < 8'd180) ? 1'b1 : 1'b0);
assign icmp_ln41_fu_2057_p2 = ((trunc_ln32_fu_2052_p1 == 2'd0) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_1781_p4 = {{v6_reg_780[7:2]}};
assign lshr_ln_fu_903_p4 = {{v5_fu_152[7:2]}};
assign mul_ln101_1_fu_2630_p0 = mul_ln101_1_fu_2630_p00;
assign mul_ln101_1_fu_2630_p00 = tmp_10_reg_3355;
assign mul_ln101_1_fu_2630_p1 = 14'd220;
assign mul_ln101_fu_1838_p0 = mul_ln101_fu_1838_p00;
assign mul_ln101_fu_1838_p00 = tmp_4_reg_2958;
assign mul_ln101_fu_1838_p1 = 14'd220;
assign mul_ln114_1_fu_2639_p0 = mul_ln114_1_fu_2639_p00;
assign mul_ln114_1_fu_2639_p00 = tmp_11_reg_3366;
assign mul_ln114_1_fu_2639_p1 = 14'd220;
assign mul_ln114_fu_1847_p0 = mul_ln114_fu_1847_p00;
assign mul_ln114_fu_1847_p00 = tmp_5_reg_3019;
assign mul_ln114_fu_1847_p1 = 14'd220;
assign mul_ln127_1_fu_2654_p0 = mul_ln127_1_fu_2654_p00;
assign mul_ln127_1_fu_2654_p00 = empty_156_fu_2645_p2;
assign mul_ln127_1_fu_2654_p1 = 14'd220;
assign mul_ln127_fu_1856_p0 = mul_ln127_fu_1856_p00;
assign mul_ln127_fu_1856_p00 = tmp_6_reg_3030;
assign mul_ln127_fu_1856_p1 = 14'd220;
assign mul_ln140_1_fu_2702_p0 = mul_ln140_1_fu_2702_p00;
assign mul_ln140_1_fu_2702_p00 = tmp_12_reg_3431;
assign mul_ln140_1_fu_2702_p1 = 14'd220;
assign mul_ln140_fu_1872_p0 = mul_ln140_fu_1872_p00;
assign mul_ln140_fu_1872_p00 = empty_99_fu_1862_p2;
assign mul_ln140_fu_1872_p1 = 14'd220;
assign mul_ln34_1_fu_2579_p0 = mul_ln34_1_fu_2579_p00;
assign mul_ln34_1_fu_2579_p00 = tmp_8_reg_3097;
assign mul_ln34_1_fu_2579_p1 = 14'd220;
assign mul_ln34_fu_1795_p0 = mul_ln34_fu_1795_p00;
assign mul_ln34_fu_1795_p00 = lshr_ln1_fu_1781_p4;
assign mul_ln34_fu_1795_p1 = 14'd220;
assign mul_ln38_fu_917_p0 = mul_ln38_fu_917_p00;
assign mul_ln38_fu_917_p00 = lshr_ln_fu_903_p4;
assign mul_ln38_fu_917_p1 = 14'd220;
assign mul_ln49_fu_2588_p0 = mul_ln49_fu_2588_p00;
assign mul_ln49_fu_2588_p00 = tmp_9_reg_3158;
assign mul_ln49_fu_2588_p1 = 14'd220;
assign mul_ln62_1_fu_2597_p0 = mul_ln62_1_fu_2597_p00;
assign mul_ln62_1_fu_2597_p00 = tmp_s_reg_3169;
assign mul_ln62_1_fu_2597_p1 = 14'd220;
assign mul_ln62_fu_1804_p0 = mul_ln62_fu_1804_p00;
assign mul_ln62_fu_1804_p00 = tmp_2_reg_2875;
assign mul_ln62_fu_1804_p1 = 14'd220;
assign mul_ln75_1_fu_2612_p0 = mul_ln75_1_fu_2612_p00;
assign mul_ln75_1_fu_2612_p00 = empty_127_fu_2603_p2;
assign mul_ln75_1_fu_2612_p1 = 14'd220;
assign mul_ln75_fu_1813_p0 = mul_ln75_fu_1813_p00;
assign mul_ln75_fu_1813_p00 = tmp_3_reg_2886;
assign mul_ln75_fu_1813_p1 = 14'd220;
assign mul_ln88_1_fu_2621_p0 = mul_ln88_1_fu_2621_p00;
assign mul_ln88_1_fu_2621_p00 = tmp_1_reg_3282;
assign mul_ln88_1_fu_2621_p1 = 14'd220;
assign mul_ln88_fu_1829_p0 = mul_ln88_fu_1829_p00;
assign mul_ln88_fu_1829_p00 = empty_70_fu_1819_p2;
assign mul_ln88_fu_1829_p1 = 14'd220;
assign p_cast1003_fu_966_p1 = empty_42_fu_961_p2;
assign p_cast1004_fu_1172_p1 = empty_55_fu_1167_p2;
assign p_cast1005_fu_1209_p1 = empty_62_fu_1204_p2;
assign p_cast1006_fu_1346_p1 = empty_69_fu_1341_p2;
assign p_cast1007_fu_1383_p1 = empty_77_fu_1378_p2;
assign p_cast1008_fu_1530_p1 = empty_84_fu_1525_p2;
assign p_cast1009_fu_1567_p1 = empty_91_fu_1562_p2;
assign p_cast1010_fu_1704_p1 = empty_98_fu_1699_p2;
assign p_cast1011_fu_1741_p1 = empty_105_fu_1736_p2;
assign p_cast1012_fu_1985_p1 = empty_112_fu_1980_p2;
assign p_cast1013_fu_2022_p1 = empty_119_fu_2017_p2;
assign p_cast1014_fu_2171_p1 = empty_126_fu_2166_p2;
assign p_cast1015_fu_2208_p1 = empty_134_fu_2203_p2;
assign p_cast1016_fu_2355_p1 = empty_141_fu_2350_p2;
assign p_cast1017_fu_2392_p1 = empty_148_fu_2387_p2;
assign p_cast1018_fu_2562_p1 = empty_155_reg_3421;
assign p_cast1019_fu_2569_p1 = empty_163_reg_3426;
assign p_cast_fu_1015_p1 = empty_48_fu_1010_p2;
assign p_shl1076_fu_2459_p1 = tmp_31_fu_2451_p3;
assign p_shl1078_fu_2422_p1 = tmp_30_fu_2414_p3;
assign p_shl1080_fu_2377_p1 = tmp_29_fu_2370_p3;
assign p_shl1082_fu_2340_p1 = tmp_28_fu_2333_p3;
assign p_shl1084_fu_2193_p1 = tmp_27_fu_2186_p3;
assign p_shl1086_fu_2156_p1 = tmp_26_fu_2149_p3;
assign p_shl1088_fu_2007_p1 = tmp_25_fu_2000_p3;
assign p_shl1090_fu_1970_p1 = tmp_24_fu_1963_p3;
assign p_shl1092_fu_1726_p1 = tmp_23_fu_1719_p3;
assign p_shl1094_fu_1689_p1 = tmp_22_fu_1682_p3;
assign p_shl1096_fu_1552_p1 = tmp_21_fu_1545_p3;
assign p_shl1098_fu_1515_p1 = tmp_20_fu_1508_p3;
assign p_shl10_fu_1712_p3 = {{add_ln32_reg_3091}, {6'd0}};
assign p_shl1100_fu_1368_p1 = tmp_19_fu_1361_p3;
assign p_shl1102_fu_1331_p1 = tmp_18_fu_1324_p3;
assign p_shl1104_fu_1194_p1 = tmp_17_fu_1187_p3;
assign p_shl1106_fu_1157_p1 = tmp_16_fu_1150_p3;
assign p_shl1108_fu_1000_p1 = tmp_15_fu_992_p3;
assign p_shl1110_fu_951_p1 = tmp_7_fu_943_p3;
assign p_shl11_fu_1956_p3 = {{empty_110_reg_3152}, {6'd0}};
assign p_shl12_fu_1993_p3 = {{empty_117_reg_3163}, {6'd0}};
assign p_shl13_fu_2142_p3 = {{empty_124_reg_3270}, {6'd0}};
assign p_shl14_fu_2179_p3 = {{empty_132_reg_3276}, {6'd0}};
assign p_shl15_fu_2326_p3 = {{empty_139_reg_3349}, {6'd0}};
assign p_shl16_fu_2363_p3 = {{empty_146_reg_3360}, {6'd0}};
assign p_shl17_fu_2406_p3 = {{empty_153_fu_2400_p2}, {6'd0}};
assign p_shl1_fu_935_p3 = {{v6_reg_780}, {6'd0}};
assign p_shl2_fu_984_p3 = {{tmp_fu_974_p4}, {7'd64}};
assign p_shl3_fu_1143_p3 = {{empty_53_reg_2869}, {6'd0}};
assign p_shl4_fu_1180_p3 = {{empty_60_reg_2880}, {6'd0}};
assign p_shl5_fu_1317_p3 = {{empty_67_reg_2946}, {6'd0}};
assign p_shl6_fu_1354_p3 = {{empty_75_reg_2952}, {6'd0}};
assign p_shl7_fu_1501_p3 = {{empty_82_reg_3013}, {6'd0}};
assign p_shl8_fu_1538_p3 = {{empty_89_reg_3024}, {6'd0}};
assign p_shl9_fu_1675_p3 = {{empty_96_reg_3085}, {6'd0}};
assign p_shl_fu_2443_p3 = {{empty_161_fu_2437_p2}, {6'd0}};
assign tmp_15_fu_992_p3 = {{tmp_fu_974_p4}, {5'd16}};
assign tmp_16_fu_1150_p3 = {{empty_53_reg_2869}, {4'd0}};
assign tmp_17_fu_1187_p3 = {{empty_60_reg_2880}, {4'd0}};
assign tmp_18_fu_1324_p3 = {{empty_67_reg_2946}, {4'd0}};
assign tmp_19_fu_1361_p3 = {{empty_75_reg_2952}, {4'd0}};
assign tmp_20_fu_1508_p3 = {{empty_82_reg_3013}, {4'd0}};
assign tmp_21_fu_1545_p3 = {{empty_89_reg_3024}, {4'd0}};
assign tmp_22_fu_1682_p3 = {{empty_96_reg_3085}, {4'd0}};
assign tmp_23_fu_1719_p3 = {{add_ln32_reg_3091}, {4'd0}};
assign tmp_24_fu_1963_p3 = {{empty_110_reg_3152}, {4'd0}};
assign tmp_25_fu_2000_p3 = {{empty_117_reg_3163}, {4'd0}};
assign tmp_26_fu_2149_p3 = {{empty_124_reg_3270}, {4'd0}};
assign tmp_27_fu_2186_p3 = {{empty_132_reg_3276}, {4'd0}};
assign tmp_28_fu_2333_p3 = {{empty_139_reg_3349}, {4'd0}};
assign tmp_29_fu_2370_p3 = {{empty_146_reg_3360}, {4'd0}};
assign tmp_30_fu_2414_p3 = {{empty_153_fu_2400_p2}, {4'd0}};
assign tmp_31_fu_2451_p3 = {{empty_161_fu_2437_p2}, {4'd0}};
assign tmp_7_fu_943_p3 = {{v6_reg_780}, {4'd0}};
assign tmp_fu_974_p4 = {{v6_reg_780[7:1]}};
assign trunc_ln31_fu_899_p1 = v5_fu_152[1:0];
assign trunc_ln32_fu_2052_p1 = v6_reg_780[1:0];
assign v101_1_fu_2724_p2 = v224_0_q0;
assign v101_1_fu_2724_p4 = v224_1_q0;
assign v101_1_fu_2724_p6 = v224_2_q0;
assign v101_1_fu_2724_p8 = v224_3_q0;
assign v101_1_fu_2724_p9 = 'bx;
assign v11_1_fu_1933_p2 = v224_0_q0;
assign v11_1_fu_1933_p4 = v224_1_q0;
assign v11_1_fu_1933_p6 = v224_2_q0;
assign v11_1_fu_1933_p8 = v224_3_q0;
assign v11_1_fu_1933_p9 = 'bx;
assign v11_2_fu_1081_p2 = v224_0_q1;
assign v11_2_fu_1081_p4 = v224_1_q1;
assign v11_2_fu_1081_p6 = v224_2_q1;
assign v11_2_fu_1081_p8 = v224_3_q1;
assign v11_2_fu_1081_p9 = 'bx;
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
assign v22_fu_1439_p2 = v224_0_q1;
assign v22_fu_1439_p4 = v224_1_q1;
assign v22_fu_1439_p6 = v224_2_q1;
assign v22_fu_1439_p8 = v224_3_q1;
assign v22_fu_1439_p9 = 'bx;
assign v236_read = v236_read_local;
assign v23_fu_1478_p2 = v224_0_q0;
assign v23_fu_1478_p4 = v224_1_q0;
assign v23_fu_1478_p6 = v224_2_q0;
assign v23_fu_1478_p8 = v224_3_q0;
assign v23_fu_1478_p9 = 'bx;
assign v24_1_fu_2080_p2 = v224_0_q1;
assign v24_1_fu_2080_p4 = v224_1_q1;
assign v24_1_fu_2080_p6 = v224_2_q1;
assign v24_1_fu_2080_p8 = v224_3_q1;
assign v24_1_fu_2080_p9 = 'bx;
assign v24_2_fu_1120_p2 = v224_0_q0;
assign v24_2_fu_1120_p4 = v224_1_q0;
assign v24_2_fu_1120_p6 = v224_2_q0;
assign v24_2_fu_1120_p8 = v224_3_q0;
assign v24_2_fu_1120_p9 = 'bx;
assign v24_fu_1613_p2 = v224_0_q1;
assign v24_fu_1613_p4 = v224_1_q1;
assign v24_fu_1613_p6 = v224_2_q1;
assign v24_fu_1613_p8 = v224_3_q1;
assign v24_fu_1613_p9 = 'bx;
assign v25_fu_1652_p2 = v224_0_q0;
assign v25_fu_1652_p4 = v224_1_q0;
assign v25_fu_1652_p6 = v224_2_q0;
assign v25_fu_1652_p8 = v224_3_q0;
assign v25_fu_1652_p9 = 'bx;
assign v26_fu_1894_p2 = v224_0_q1;
assign v26_fu_1894_p4 = v224_1_q1;
assign v26_fu_1894_p6 = v224_2_q1;
assign v26_fu_1894_p8 = v224_3_q1;
assign v26_fu_1894_p9 = 'bx;
assign v35_1_fu_2119_p2 = v224_0_q0;
assign v35_1_fu_2119_p4 = v224_1_q0;
assign v35_1_fu_2119_p6 = v224_2_q0;
assign v35_1_fu_2119_p8 = v224_3_q0;
assign v35_1_fu_2119_p9 = 'bx;
assign v35_2_fu_1255_p2 = v224_0_q1;
assign v35_2_fu_1255_p4 = v224_1_q1;
assign v35_2_fu_1255_p6 = v224_2_q1;
assign v35_2_fu_1255_p8 = v224_3_q1;
assign v35_2_fu_1255_p9 = 'bx;
assign v46_1_fu_2264_p2 = v224_0_q1;
assign v46_1_fu_2264_p4 = v224_1_q1;
assign v46_1_fu_2264_p6 = v224_2_q1;
assign v46_1_fu_2264_p8 = v224_3_q1;
assign v46_1_fu_2264_p9 = 'bx;
assign v57_1_fu_2303_p2 = v224_0_q0;
assign v57_1_fu_2303_p4 = v224_1_q0;
assign v57_1_fu_2303_p6 = v224_2_q0;
assign v57_1_fu_2303_p8 = v224_3_q0;
assign v57_1_fu_2303_p9 = 'bx;
assign v68_1_fu_2500_p2 = v224_0_q1;
assign v68_1_fu_2500_p4 = v224_1_q1;
assign v68_1_fu_2500_p6 = v224_2_q1;
assign v68_1_fu_2500_p8 = v224_3_q1;
assign v68_1_fu_2500_p9 = 'bx;
assign v79_1_fu_2539_p2 = v224_0_q0;
assign v79_1_fu_2539_p4 = v224_1_q0;
assign v79_1_fu_2539_p6 = v224_2_q0;
assign v79_1_fu_2539_p8 = v224_3_q0;
assign v79_1_fu_2539_p9 = 'bx;
assign v90_1_fu_2676_p2 = v224_0_q1;
assign v90_1_fu_2676_p4 = v224_1_q1;
assign v90_1_fu_2676_p6 = v224_2_q1;
assign v90_1_fu_2676_p8 = v224_3_q1;
assign v90_1_fu_2676_p9 = 'bx;
assign v_fu_1294_p2 = v224_0_q0;
assign v_fu_1294_p4 = v224_1_q0;
assign v_fu_1294_p6 = v224_2_q0;
assign v_fu_1294_p8 = v224_3_q0;
assign v_fu_1294_p9 = 'bx;
assign zext_ln38_fu_913_p1 = lshr_ln_fu_903_p4;
always @ (posedge ap_clk) begin
    zext_ln38_reg_2792[13:6] <= 8'b00000000;
end
endmodule 