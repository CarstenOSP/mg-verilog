module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_0_address0,v224_0_ce0,v224_0_q0,v224_0_address1,v224_0_ce1,v224_0_q1,v224_1_address0,v224_1_ce0,v224_1_q0,v224_1_address1,v224_1_ce1,v224_1_q1,v224_2_address0,v224_2_ce0,v224_2_q0,v224_2_address1,v224_2_ce1,v224_2_q1,v224_3_address0,v224_3_ce0,v224_3_q0,v224_3_address1,v224_3_ce1,v224_3_q1,v228_address0,v228_ce0,v228_q0,v228_address1,v228_ce1,v228_q1,v229_0_address0,v229_0_ce0,v229_0_we0,v229_0_d0,v229_0_q0,v229_0_address1,v229_0_ce1,v229_0_we1,v229_0_d1,v229_0_q1,v229_1_address0,v229_1_ce0,v229_1_we0,v229_1_d0,v229_1_q0,v229_1_address1,v229_1_ce1,v229_1_we1,v229_1_d1,v229_1_q1,v229_2_address0,v229_2_ce0,v229_2_we0,v229_2_d0,v229_2_q0,v229_2_address1,v229_2_ce1,v229_2_we1,v229_2_d1,v229_2_q1,v229_3_address0,v229_3_ce0,v229_3_we0,v229_3_d0,v229_3_q0,v229_3_address1,v229_3_ce1,v229_3_we1,v229_3_d1,v229_3_q1,v229_4_address0,v229_4_ce0,v229_4_we0,v229_4_d0,v229_4_q0,v229_4_address1,v229_4_ce1,v229_4_we1,v229_4_d1,v229_4_q1,v229_5_address0,v229_5_ce0,v229_5_we0,v229_5_d0,v229_5_q0,v229_5_address1,v229_5_ce1,v229_5_we1,v229_5_d1,v229_5_q1,v229_6_address0,v229_6_ce0,v229_6_we0,v229_6_d0,v229_6_q0,v229_6_address1,v229_6_ce1,v229_6_we1,v229_6_d1,v229_6_q1,v229_7_address0,v229_7_ce0,v229_7_we0,v229_7_d0,v229_7_q0,v229_7_address1,v229_7_ce1,v229_7_we1,v229_7_d1,v229_7_q1,v4,grp_fu_172_p_din0,grp_fu_172_p_din1,grp_fu_172_p_opcode,grp_fu_172_p_dout0,grp_fu_172_p_ce,grp_fu_176_p_din0,grp_fu_176_p_din1,grp_fu_176_p_opcode,grp_fu_176_p_dout0,grp_fu_176_p_ce,grp_fu_180_p_din0,grp_fu_180_p_din1,grp_fu_180_p_opcode,grp_fu_180_p_dout0,grp_fu_180_p_ce,grp_fu_184_p_din0,grp_fu_184_p_din1,grp_fu_184_p_opcode,grp_fu_184_p_dout0,grp_fu_184_p_ce,grp_fu_188_p_din0,grp_fu_188_p_din1,grp_fu_188_p_opcode,grp_fu_188_p_dout0,grp_fu_188_p_ce,grp_fu_192_p_din0,grp_fu_192_p_din1,grp_fu_192_p_dout0,grp_fu_192_p_ce,grp_fu_196_p_din0,grp_fu_196_p_din1,grp_fu_196_p_dout0,grp_fu_196_p_ce,grp_fu_200_p_din0,grp_fu_200_p_din1,grp_fu_200_p_dout0,grp_fu_200_p_ce,grp_fu_204_p_din0,grp_fu_204_p_din1,grp_fu_204_p_dout0,grp_fu_204_p_ce,grp_fu_208_p_din0,grp_fu_208_p_din1,grp_fu_208_p_dout0,grp_fu_208_p_ce,grp_fu_212_p_din0,grp_fu_212_p_din1,grp_fu_212_p_dout0,grp_fu_212_p_ce,grp_fu_216_p_din0,grp_fu_216_p_din1,grp_fu_216_p_dout0,grp_fu_216_p_ce,grp_fu_220_p_din0,grp_fu_220_p_din1,grp_fu_220_p_dout0,grp_fu_220_p_ce,grp_fu_224_p_din0,grp_fu_224_p_din1,grp_fu_224_p_dout0,grp_fu_224_p_ce); 
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
output  [12:0] v229_0_address0;
output   v229_0_ce0;
output   v229_0_we0;
output  [31:0] v229_0_d0;
input  [31:0] v229_0_q0;
output  [12:0] v229_0_address1;
output   v229_0_ce1;
output   v229_0_we1;
output  [31:0] v229_0_d1;
input  [31:0] v229_0_q1;
output  [12:0] v229_1_address0;
output   v229_1_ce0;
output   v229_1_we0;
output  [31:0] v229_1_d0;
input  [31:0] v229_1_q0;
output  [12:0] v229_1_address1;
output   v229_1_ce1;
output   v229_1_we1;
output  [31:0] v229_1_d1;
input  [31:0] v229_1_q1;
output  [12:0] v229_2_address0;
output   v229_2_ce0;
output   v229_2_we0;
output  [31:0] v229_2_d0;
input  [31:0] v229_2_q0;
output  [12:0] v229_2_address1;
output   v229_2_ce1;
output   v229_2_we1;
output  [31:0] v229_2_d1;
input  [31:0] v229_2_q1;
output  [12:0] v229_3_address0;
output   v229_3_ce0;
output   v229_3_we0;
output  [31:0] v229_3_d0;
input  [31:0] v229_3_q0;
output  [12:0] v229_3_address1;
output   v229_3_ce1;
output   v229_3_we1;
output  [31:0] v229_3_d1;
input  [31:0] v229_3_q1;
output  [12:0] v229_4_address0;
output   v229_4_ce0;
output   v229_4_we0;
output  [31:0] v229_4_d0;
input  [31:0] v229_4_q0;
output  [12:0] v229_4_address1;
output   v229_4_ce1;
output   v229_4_we1;
output  [31:0] v229_4_d1;
input  [31:0] v229_4_q1;
output  [12:0] v229_5_address0;
output   v229_5_ce0;
output   v229_5_we0;
output  [31:0] v229_5_d0;
input  [31:0] v229_5_q0;
output  [12:0] v229_5_address1;
output   v229_5_ce1;
output   v229_5_we1;
output  [31:0] v229_5_d1;
input  [31:0] v229_5_q1;
output  [12:0] v229_6_address0;
output   v229_6_ce0;
output   v229_6_we0;
output  [31:0] v229_6_d0;
input  [31:0] v229_6_q0;
output  [12:0] v229_6_address1;
output   v229_6_ce1;
output   v229_6_we1;
output  [31:0] v229_6_d1;
input  [31:0] v229_6_q1;
output  [12:0] v229_7_address0;
output   v229_7_ce0;
output   v229_7_we0;
output  [31:0] v229_7_d0;
input  [31:0] v229_7_q0;
output  [12:0] v229_7_address1;
output   v229_7_ce1;
output   v229_7_we1;
output  [31:0] v229_7_d1;
input  [31:0] v229_7_q1;
input  [31:0] v4;
output  [31:0] grp_fu_172_p_din0;
output  [31:0] grp_fu_172_p_din1;
output  [1:0] grp_fu_172_p_opcode;
input  [31:0] grp_fu_172_p_dout0;
output   grp_fu_172_p_ce;
output  [31:0] grp_fu_176_p_din0;
output  [31:0] grp_fu_176_p_din1;
output  [1:0] grp_fu_176_p_opcode;
input  [31:0] grp_fu_176_p_dout0;
output   grp_fu_176_p_ce;
output  [31:0] grp_fu_180_p_din0;
output  [31:0] grp_fu_180_p_din1;
output  [1:0] grp_fu_180_p_opcode;
input  [31:0] grp_fu_180_p_dout0;
output   grp_fu_180_p_ce;
output  [31:0] grp_fu_184_p_din0;
output  [31:0] grp_fu_184_p_din1;
output  [1:0] grp_fu_184_p_opcode;
input  [31:0] grp_fu_184_p_dout0;
output   grp_fu_184_p_ce;
output  [31:0] grp_fu_188_p_din0;
output  [31:0] grp_fu_188_p_din1;
output  [1:0] grp_fu_188_p_opcode;
input  [31:0] grp_fu_188_p_dout0;
output   grp_fu_188_p_ce;
output  [31:0] grp_fu_192_p_din0;
output  [31:0] grp_fu_192_p_din1;
input  [31:0] grp_fu_192_p_dout0;
output   grp_fu_192_p_ce;
output  [31:0] grp_fu_196_p_din0;
output  [31:0] grp_fu_196_p_din1;
input  [31:0] grp_fu_196_p_dout0;
output   grp_fu_196_p_ce;
output  [31:0] grp_fu_200_p_din0;
output  [31:0] grp_fu_200_p_din1;
input  [31:0] grp_fu_200_p_dout0;
output   grp_fu_200_p_ce;
output  [31:0] grp_fu_204_p_din0;
output  [31:0] grp_fu_204_p_din1;
input  [31:0] grp_fu_204_p_dout0;
output   grp_fu_204_p_ce;
output  [31:0] grp_fu_208_p_din0;
output  [31:0] grp_fu_208_p_din1;
input  [31:0] grp_fu_208_p_dout0;
output   grp_fu_208_p_ce;
output  [31:0] grp_fu_212_p_din0;
output  [31:0] grp_fu_212_p_din1;
input  [31:0] grp_fu_212_p_dout0;
output   grp_fu_212_p_ce;
output  [31:0] grp_fu_216_p_din0;
output  [31:0] grp_fu_216_p_din1;
input  [31:0] grp_fu_216_p_dout0;
output   grp_fu_216_p_ce;
output  [31:0] grp_fu_220_p_din0;
output  [31:0] grp_fu_220_p_din1;
input  [31:0] grp_fu_220_p_dout0;
output   grp_fu_220_p_ce;
output  [31:0] grp_fu_224_p_din0;
output  [31:0] grp_fu_224_p_din1;
input  [31:0] grp_fu_224_p_dout0;
output   grp_fu_224_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
reg   [15:0] phi_mul_load_reg_1541;
wire    ap_CS_fsm_state2;
wire   [15:0] add_ln31_1_fu_545_p2;
reg   [15:0] add_ln31_1_reg_1546;
wire   [7:0] add_ln31_fu_557_p2;
reg   [7:0] add_ln31_reg_1554;
wire   [1:0] trunc_ln31_fu_563_p1;
reg   [1:0] trunc_ln31_reg_1559;
wire   [13:0] zext_ln31_fu_577_p1;
reg   [13:0] zext_ln31_reg_1572;
wire   [0:0] cmp11_fu_581_p2;
reg   [0:0] cmp11_reg_1585;
wire    ap_CS_fsm_state3;
wire   [7:0] empty_53_fu_632_p2;
reg   [7:0] empty_53_reg_1613;
reg   [4:0] tmp_reg_1619;
wire   [7:0] empty_60_fu_648_p2;
reg   [7:0] empty_60_reg_1624;
reg   [4:0] tmp_s_reg_1630;
wire   [7:0] add_ln32_fu_664_p2;
reg   [7:0] add_ln32_reg_1635;
wire   [31:0] v11_fu_694_p11;
reg   [31:0] v11_reg_1640;
wire    ap_CS_fsm_state4;
wire   [7:0] empty_67_fu_791_p2;
reg   [7:0] empty_67_reg_1685;
reg   [4:0] tmp_5_reg_1691;
wire   [7:0] empty_74_fu_807_p2;
reg   [7:0] empty_74_reg_1696;
reg   [4:0] tmp_6_reg_1702;
wire   [31:0] v24_fu_839_p11;
reg   [31:0] v24_reg_1707;
wire    ap_CS_fsm_state5;
wire   [31:0] v35_1_fu_878_p11;
reg   [31:0] v35_1_reg_1712;
wire   [7:0] empty_81_fu_975_p2;
reg   [7:0] empty_81_reg_1757;
reg   [4:0] tmp_13_reg_1763;
wire   [7:0] empty_88_fu_991_p2;
reg   [7:0] empty_88_reg_1768;
reg   [4:0] tmp_15_reg_1774;
wire   [31:0] v46_1_fu_1023_p11;
reg   [31:0] v46_1_reg_1779;
wire    ap_CS_fsm_state6;
wire   [31:0] v57_1_fu_1062_p11;
reg   [31:0] v57_1_reg_1784;
wire   [13:0] empty_97_fu_1191_p2;
reg   [13:0] empty_97_reg_1829;
reg   [4:0] tmp_17_reg_1834;
wire   [13:0] empty_104_fu_1238_p2;
reg   [13:0] empty_104_reg_1839;
wire   [31:0] v_fu_1259_p11;
reg   [31:0] v_reg_1844;
wire    ap_CS_fsm_state7;
wire   [31:0] v59_fu_1298_p11;
reg   [31:0] v59_reg_1849;
wire   [2:0] trunc_ln32_fu_1335_p1;
reg   [2:0] trunc_ln32_reg_1894;
wire    ap_CS_fsm_state8;
wire   [12:0] mul_ln34_fu_1353_p2;
reg   [12:0] mul_ln34_reg_1900;
wire   [12:0] mul_ln49_fu_1362_p2;
reg   [12:0] mul_ln49_reg_1905;
wire   [12:0] mul_ln62_fu_1371_p2;
reg   [12:0] mul_ln62_reg_1910;
wire   [12:0] mul_ln75_fu_1380_p2;
reg   [12:0] mul_ln75_reg_1915;
wire   [12:0] mul_ln88_fu_1389_p2;
reg   [12:0] mul_ln88_reg_1920;
wire   [12:0] mul_ln101_fu_1398_p2;
reg   [12:0] mul_ln101_reg_1925;
wire   [12:0] mul_ln114_fu_1407_p2;
reg   [12:0] mul_ln114_reg_1930;
wire   [12:0] mul_ln127_fu_1416_p2;
reg   [12:0] mul_ln127_reg_1935;
wire   [31:0] v60_fu_1438_p11;
reg   [31:0] v60_reg_1940;
wire   [12:0] mul_ln140_fu_1471_p2;
reg   [12:0] mul_ln140_reg_1945;
wire   [31:0] v61_fu_1493_p11;
reg   [31:0] v61_reg_1950;
wire   [0:0] empty_110_fu_1516_p2;
reg   [0:0] empty_110_reg_1955;
wire    ap_CS_fsm_state9;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_ap_ready;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_7_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_7_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_7_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_7_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_7_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_7_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_7_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_7_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_6_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_6_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_6_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_6_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_6_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_6_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_6_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_6_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_5_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_5_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_5_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_5_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_5_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_5_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_5_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_5_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_4_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_4_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_4_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_4_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_4_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_4_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_4_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_4_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_3_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_3_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_3_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_3_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_3_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_3_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_2_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_2_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_2_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_2_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_2_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_2_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_1_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_1_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_0_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_0_d1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v228_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1960_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1960_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1960_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1960_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1964_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1964_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1964_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1964_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1968_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1968_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1968_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1968_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1972_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1972_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1972_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1972_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1976_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1976_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1976_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1976_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1980_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1980_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1980_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1984_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1984_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1984_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1988_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1988_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1988_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1992_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1992_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1992_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1996_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1996_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1996_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_2000_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_2000_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_2000_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_2004_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_2004_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_2004_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_2008_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_2008_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_2008_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_2012_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_2012_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_2012_p_ce;
reg   [7:0] v6_reg_472;
wire   [0:0] icmp_ln31_fu_551_p2;
wire    ap_CS_fsm_state10;
reg    grp_kernel_2mm_node0_Pipeline_label_2_fu_484_ap_start_reg;
wire   [63:0] p_cast1147_fu_624_p1;
wire   [0:0] icmp_ln32_fu_587_p2;
wire   [63:0] p_cast_fu_746_p1;
wire   [63:0] p_cast1148_fu_783_p1;
wire   [63:0] p_cast1149_fu_930_p1;
wire   [63:0] p_cast1150_fu_967_p1;
wire   [63:0] p_cast1151_fu_1114_p1;
wire   [63:0] p_cast1152_fu_1151_p1;
wire   [63:0] p_cast1153_fu_1321_p1;
wire   [63:0] p_cast1154_fu_1328_p1;
reg   [15:0] phi_mul_fu_128;
reg    ap_block_state1;
reg   [7:0] v5_fu_132;
reg    v236_read_local;
reg    v224_0_ce0_local;
reg   [13:0] v224_0_address0_local;
reg    v224_0_ce1_local;
reg   [13:0] v224_0_address1_local;
reg    v224_1_ce0_local;
reg   [13:0] v224_1_address0_local;
reg    v224_1_ce1_local;
reg   [13:0] v224_1_address1_local;
reg    v224_2_ce0_local;
reg   [13:0] v224_2_address0_local;
reg    v224_2_ce1_local;
reg   [13:0] v224_2_address1_local;
reg    v224_3_ce0_local;
reg   [13:0] v224_3_address0_local;
reg    v224_3_ce1_local;
reg   [13:0] v224_3_address1_local;
wire   [5:0] lshr_ln_fu_567_p4;
wire   [11:0] tmp_7_fu_601_p3;
wire   [13:0] p_shl1_fu_593_p3;
wire   [13:0] p_shl1202_fu_609_p1;
wire   [13:0] empty_fu_613_p2;
wire   [13:0] empty_48_fu_619_p2;
wire   [31:0] v11_fu_694_p2;
wire   [31:0] v11_fu_694_p4;
wire   [31:0] v11_fu_694_p6;
wire   [31:0] v11_fu_694_p8;
wire   [31:0] v11_fu_694_p9;
wire   [11:0] tmp_8_fu_724_p3;
wire   [13:0] p_shl2_fu_717_p3;
wire   [13:0] p_shl1200_fu_731_p1;
wire   [13:0] empty_54_fu_735_p2;
wire   [13:0] empty_55_fu_741_p2;
wire   [11:0] tmp_9_fu_761_p3;
wire   [13:0] p_shl3_fu_754_p3;
wire   [13:0] p_shl1198_fu_768_p1;
wire   [13:0] empty_61_fu_772_p2;
wire   [13:0] empty_62_fu_778_p2;
wire   [31:0] v24_fu_839_p2;
wire   [31:0] v24_fu_839_p4;
wire   [31:0] v24_fu_839_p6;
wire   [31:0] v24_fu_839_p8;
wire   [31:0] v24_fu_839_p9;
wire   [31:0] v35_1_fu_878_p2;
wire   [31:0] v35_1_fu_878_p4;
wire   [31:0] v35_1_fu_878_p6;
wire   [31:0] v35_1_fu_878_p8;
wire   [31:0] v35_1_fu_878_p9;
wire   [11:0] tmp_10_fu_908_p3;
wire   [13:0] p_shl4_fu_901_p3;
wire   [13:0] p_shl1196_fu_915_p1;
wire   [13:0] empty_68_fu_919_p2;
wire   [13:0] empty_69_fu_925_p2;
wire   [11:0] tmp_11_fu_945_p3;
wire   [13:0] p_shl5_fu_938_p3;
wire   [13:0] p_shl1194_fu_952_p1;
wire   [13:0] empty_75_fu_956_p2;
wire   [13:0] empty_76_fu_962_p2;
wire   [31:0] v46_1_fu_1023_p2;
wire   [31:0] v46_1_fu_1023_p4;
wire   [31:0] v46_1_fu_1023_p6;
wire   [31:0] v46_1_fu_1023_p8;
wire   [31:0] v46_1_fu_1023_p9;
wire   [31:0] v57_1_fu_1062_p2;
wire   [31:0] v57_1_fu_1062_p4;
wire   [31:0] v57_1_fu_1062_p6;
wire   [31:0] v57_1_fu_1062_p8;
wire   [31:0] v57_1_fu_1062_p9;
wire   [11:0] tmp_12_fu_1092_p3;
wire   [13:0] p_shl6_fu_1085_p3;
wire   [13:0] p_shl1192_fu_1099_p1;
wire   [13:0] empty_82_fu_1103_p2;
wire   [13:0] empty_83_fu_1109_p2;
wire   [11:0] tmp_14_fu_1129_p3;
wire   [13:0] p_shl7_fu_1122_p3;
wire   [13:0] p_shl1190_fu_1136_p1;
wire   [13:0] empty_89_fu_1140_p2;
wire   [13:0] empty_90_fu_1146_p2;
wire   [7:0] empty_95_fu_1159_p2;
wire   [11:0] tmp_16_fu_1173_p3;
wire   [13:0] p_shl8_fu_1165_p3;
wire   [13:0] p_shl1188_fu_1181_p1;
wire   [13:0] empty_96_fu_1185_p2;
wire   [7:0] empty_102_fu_1206_p2;
wire   [11:0] tmp_18_fu_1220_p3;
wire   [13:0] p_shl_fu_1212_p3;
wire   [13:0] p_shl1186_fu_1228_p1;
wire   [13:0] empty_103_fu_1232_p2;
wire   [31:0] v_fu_1259_p2;
wire   [31:0] v_fu_1259_p4;
wire   [31:0] v_fu_1259_p6;
wire   [31:0] v_fu_1259_p8;
wire   [31:0] v_fu_1259_p9;
wire   [31:0] v59_fu_1298_p2;
wire   [31:0] v59_fu_1298_p4;
wire   [31:0] v59_fu_1298_p6;
wire   [31:0] v59_fu_1298_p8;
wire   [31:0] v59_fu_1298_p9;
wire   [4:0] lshr_ln1_fu_1339_p4;
wire   [4:0] mul_ln34_fu_1353_p0;
wire   [8:0] mul_ln34_fu_1353_p1;
wire   [4:0] mul_ln49_fu_1362_p0;
wire   [8:0] mul_ln49_fu_1362_p1;
wire   [4:0] mul_ln62_fu_1371_p0;
wire   [8:0] mul_ln62_fu_1371_p1;
wire   [4:0] mul_ln75_fu_1380_p0;
wire   [8:0] mul_ln75_fu_1380_p1;
wire   [4:0] mul_ln88_fu_1389_p0;
wire   [8:0] mul_ln88_fu_1389_p1;
wire   [4:0] mul_ln101_fu_1398_p0;
wire   [8:0] mul_ln101_fu_1398_p1;
wire   [4:0] mul_ln114_fu_1407_p0;
wire   [8:0] mul_ln114_fu_1407_p1;
wire   [4:0] mul_ln127_fu_1416_p0;
wire   [8:0] mul_ln127_fu_1416_p1;
wire   [31:0] v60_fu_1438_p2;
wire   [31:0] v60_fu_1438_p4;
wire   [31:0] v60_fu_1438_p6;
wire   [31:0] v60_fu_1438_p8;
wire   [31:0] v60_fu_1438_p9;
wire   [4:0] empty_105_fu_1461_p2;
wire   [4:0] mul_ln140_fu_1471_p0;
wire   [8:0] mul_ln140_fu_1471_p1;
wire   [31:0] v61_fu_1493_p2;
wire   [31:0] v61_fu_1493_p4;
wire   [31:0] v61_fu_1493_p6;
wire   [31:0] v61_fu_1493_p8;
wire   [31:0] v61_fu_1493_p9;
reg    grp_fu_1960_ce;
reg    grp_fu_1964_ce;
reg    grp_fu_1968_ce;
reg    grp_fu_1972_ce;
reg    grp_fu_1976_ce;
reg    grp_fu_1980_ce;
reg    grp_fu_1984_ce;
reg    grp_fu_1988_ce;
reg    grp_fu_1992_ce;
reg    grp_fu_1996_ce;
reg    grp_fu_2000_ce;
reg    grp_fu_2004_ce;
reg    grp_fu_2008_ce;
reg    grp_fu_2012_ce;
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
wire   [12:0] mul_ln101_fu_1398_p00;
wire   [12:0] mul_ln114_fu_1407_p00;
wire   [12:0] mul_ln127_fu_1416_p00;
wire   [12:0] mul_ln140_fu_1471_p00;
wire   [12:0] mul_ln34_fu_1353_p00;
wire   [12:0] mul_ln49_fu_1362_p00;
wire   [12:0] mul_ln62_fu_1371_p00;
wire   [12:0] mul_ln75_fu_1380_p00;
wire   [12:0] mul_ln88_fu_1389_p00;
wire   [1:0] v11_fu_694_p1;
wire   [1:0] v11_fu_694_p3;
wire  signed [1:0] v11_fu_694_p5;
wire  signed [1:0] v11_fu_694_p7;
wire   [1:0] v24_fu_839_p1;
wire   [1:0] v24_fu_839_p3;
wire  signed [1:0] v24_fu_839_p5;
wire  signed [1:0] v24_fu_839_p7;
wire   [1:0] v35_1_fu_878_p1;
wire   [1:0] v35_1_fu_878_p3;
wire  signed [1:0] v35_1_fu_878_p5;
wire  signed [1:0] v35_1_fu_878_p7;
wire   [1:0] v46_1_fu_1023_p1;
wire   [1:0] v46_1_fu_1023_p3;
wire  signed [1:0] v46_1_fu_1023_p5;
wire  signed [1:0] v46_1_fu_1023_p7;
wire   [1:0] v57_1_fu_1062_p1;
wire   [1:0] v57_1_fu_1062_p3;
wire  signed [1:0] v57_1_fu_1062_p5;
wire  signed [1:0] v57_1_fu_1062_p7;
wire   [1:0] v_fu_1259_p1;
wire   [1:0] v_fu_1259_p3;
wire  signed [1:0] v_fu_1259_p5;
wire  signed [1:0] v_fu_1259_p7;
wire   [1:0] v59_fu_1298_p1;
wire   [1:0] v59_fu_1298_p3;
wire  signed [1:0] v59_fu_1298_p5;
wire  signed [1:0] v59_fu_1298_p7;
wire   [1:0] v60_fu_1438_p1;
wire   [1:0] v60_fu_1438_p3;
wire  signed [1:0] v60_fu_1438_p5;
wire  signed [1:0] v60_fu_1438_p7;
wire   [1:0] v61_fu_1493_p1;
wire   [1:0] v61_fu_1493_p3;
wire  signed [1:0] v61_fu_1493_p5;
wire  signed [1:0] v61_fu_1493_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_2_fu_484_ap_start_reg = 1'b0;
#0 phi_mul_fu_128 = 16'd0;
#0 v5_fu_132 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_2 grp_kernel_2mm_node0_Pipeline_label_2_fu_484(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_ap_ready),.v4(v4),.cmp11(cmp11_reg_1585),.v229_7_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_7_address0),.v229_7_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_7_ce0),.v229_7_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_7_we0),.v229_7_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_7_d0),.v229_7_q0(v229_7_q0),.v229_7_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_7_address1),.v229_7_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_7_ce1),.v229_7_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_7_we1),.v229_7_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_7_d1),.v229_7_q1(v229_7_q1),.v229_6_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_6_address0),.v229_6_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_6_ce0),.v229_6_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_6_we0),.v229_6_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_6_d0),.v229_6_q0(v229_6_q0),.v229_6_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_6_address1),.v229_6_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_6_ce1),.v229_6_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_6_we1),.v229_6_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_6_d1),.v229_6_q1(v229_6_q1),.v229_5_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_5_address0),.v229_5_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_5_ce0),.v229_5_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_5_we0),.v229_5_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_5_d0),.v229_5_q0(v229_5_q0),.v229_5_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_5_address1),.v229_5_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_5_ce1),.v229_5_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_5_we1),.v229_5_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_5_d1),.v229_5_q1(v229_5_q1),.v229_4_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_4_address0),.v229_4_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_4_ce0),.v229_4_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_4_we0),.v229_4_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_4_d0),.v229_4_q0(v229_4_q0),.v229_4_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_4_address1),.v229_4_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_4_ce1),.v229_4_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_4_we1),.v229_4_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_4_d1),.v229_4_q1(v229_4_q1),.v229_3_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_3_address0),.v229_3_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_3_ce0),.v229_3_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_3_we0),.v229_3_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_3_d0),.v229_3_q0(v229_3_q0),.v229_3_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_3_address1),.v229_3_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_3_ce1),.v229_3_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_3_we1),.v229_3_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_3_d1),.v229_3_q1(v229_3_q1),.v229_2_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_2_address0),.v229_2_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_2_ce0),.v229_2_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_2_we0),.v229_2_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_2_d0),.v229_2_q0(v229_2_q0),.v229_2_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_2_address1),.v229_2_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_2_ce1),.v229_2_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_2_we1),.v229_2_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_2_d1),.v229_2_q1(v229_2_q1),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_0_d1),.v229_0_q1(v229_0_q1),.phi_mul(phi_mul_load_reg_1541),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v228_ce1),.v228_q1(v228_q1),.mul_ln34(mul_ln34_reg_1900),.mul_ln140(mul_ln140_reg_1945),.mul_ln127(mul_ln127_reg_1935),.mul_ln114(mul_ln114_reg_1930),.mul_ln101(mul_ln101_reg_1925),.mul_ln88(mul_ln88_reg_1920),.mul_ln75(mul_ln75_reg_1915),.mul_ln62(mul_ln62_reg_1910),.mul_ln49(mul_ln49_reg_1905),.empty_18(trunc_ln32_reg_1894),.v11(v11_reg_1640),.v24(v24_reg_1707),.v35_1(v35_1_reg_1712),.v46_1(v46_1_reg_1779),.v57_1(v57_1_reg_1784),.v68(v_reg_1844),.v79(v59_reg_1849),.v90(v60_reg_1940),.v101(v61_reg_1950),.empty(empty_110_reg_1955),.grp_fu_1960_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1960_p_din0),.grp_fu_1960_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1960_p_din1),.grp_fu_1960_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1960_p_opcode),.grp_fu_1960_p_dout0(grp_fu_172_p_dout0),.grp_fu_1960_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1960_p_ce),.grp_fu_1964_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1964_p_din0),.grp_fu_1964_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1964_p_din1),.grp_fu_1964_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1964_p_opcode),.grp_fu_1964_p_dout0(grp_fu_176_p_dout0),.grp_fu_1964_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1964_p_ce),.grp_fu_1968_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1968_p_din0),.grp_fu_1968_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1968_p_din1),.grp_fu_1968_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1968_p_opcode),.grp_fu_1968_p_dout0(grp_fu_180_p_dout0),.grp_fu_1968_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1968_p_ce),.grp_fu_1972_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1972_p_din0),.grp_fu_1972_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1972_p_din1),.grp_fu_1972_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1972_p_opcode),.grp_fu_1972_p_dout0(grp_fu_184_p_dout0),.grp_fu_1972_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1972_p_ce),.grp_fu_1976_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1976_p_din0),.grp_fu_1976_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1976_p_din1),.grp_fu_1976_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1976_p_opcode),.grp_fu_1976_p_dout0(grp_fu_188_p_dout0),.grp_fu_1976_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1976_p_ce),.grp_fu_1980_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1980_p_din0),.grp_fu_1980_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1980_p_din1),.grp_fu_1980_p_dout0(grp_fu_192_p_dout0),.grp_fu_1980_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1980_p_ce),.grp_fu_1984_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1984_p_din0),.grp_fu_1984_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1984_p_din1),.grp_fu_1984_p_dout0(grp_fu_196_p_dout0),.grp_fu_1984_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1984_p_ce),.grp_fu_1988_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1988_p_din0),.grp_fu_1988_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1988_p_din1),.grp_fu_1988_p_dout0(grp_fu_200_p_dout0),.grp_fu_1988_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1988_p_ce),.grp_fu_1992_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1992_p_din0),.grp_fu_1992_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1992_p_din1),.grp_fu_1992_p_dout0(grp_fu_204_p_dout0),.grp_fu_1992_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1992_p_ce),.grp_fu_1996_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1996_p_din0),.grp_fu_1996_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1996_p_din1),.grp_fu_1996_p_dout0(grp_fu_208_p_dout0),.grp_fu_1996_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1996_p_ce),.grp_fu_2000_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_2000_p_din0),.grp_fu_2000_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_2000_p_din1),.grp_fu_2000_p_dout0(grp_fu_212_p_dout0),.grp_fu_2000_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_2000_p_ce),.grp_fu_2004_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_2004_p_din0),.grp_fu_2004_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_2004_p_din1),.grp_fu_2004_p_dout0(grp_fu_216_p_dout0),.grp_fu_2004_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_2004_p_ce),.grp_fu_2008_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_2008_p_din0),.grp_fu_2008_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_2008_p_din1),.grp_fu_2008_p_dout0(grp_fu_220_p_dout0),.grp_fu_2008_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_2008_p_ce),.grp_fu_2012_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_2012_p_din0),.grp_fu_2012_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_2012_p_din1),.grp_fu_2012_p_dout0(grp_fu_224_p_dout0),.grp_fu_2012_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_2012_p_ce));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U158(.din0(v11_fu_694_p2),.din1(v11_fu_694_p4),.din2(v11_fu_694_p6),.din3(v11_fu_694_p8),.def(v11_fu_694_p9),.sel(trunc_ln31_reg_1559),.dout(v11_fu_694_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U159(.din0(v24_fu_839_p2),.din1(v24_fu_839_p4),.din2(v24_fu_839_p6),.din3(v24_fu_839_p8),.def(v24_fu_839_p9),.sel(trunc_ln31_reg_1559),.dout(v24_fu_839_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U160(.din0(v35_1_fu_878_p2),.din1(v35_1_fu_878_p4),.din2(v35_1_fu_878_p6),.din3(v35_1_fu_878_p8),.def(v35_1_fu_878_p9),.sel(trunc_ln31_reg_1559),.dout(v35_1_fu_878_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U161(.din0(v46_1_fu_1023_p2),.din1(v46_1_fu_1023_p4),.din2(v46_1_fu_1023_p6),.din3(v46_1_fu_1023_p8),.def(v46_1_fu_1023_p9),.sel(trunc_ln31_reg_1559),.dout(v46_1_fu_1023_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U162(.din0(v57_1_fu_1062_p2),.din1(v57_1_fu_1062_p4),.din2(v57_1_fu_1062_p6),.din3(v57_1_fu_1062_p8),.def(v57_1_fu_1062_p9),.sel(trunc_ln31_reg_1559),.dout(v57_1_fu_1062_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U163(.din0(v_fu_1259_p2),.din1(v_fu_1259_p4),.din2(v_fu_1259_p6),.din3(v_fu_1259_p8),.def(v_fu_1259_p9),.sel(trunc_ln31_reg_1559),.dout(v_fu_1259_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U164(.din0(v59_fu_1298_p2),.din1(v59_fu_1298_p4),.din2(v59_fu_1298_p6),.din3(v59_fu_1298_p8),.def(v59_fu_1298_p9),.sel(trunc_ln31_reg_1559),.dout(v59_fu_1298_p11));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U165(.din0(mul_ln34_fu_1353_p0),.din1(mul_ln34_fu_1353_p1),.dout(mul_ln34_fu_1353_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U166(.din0(mul_ln49_fu_1362_p0),.din1(mul_ln49_fu_1362_p1),.dout(mul_ln49_fu_1362_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U167(.din0(mul_ln62_fu_1371_p0),.din1(mul_ln62_fu_1371_p1),.dout(mul_ln62_fu_1371_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U168(.din0(mul_ln75_fu_1380_p0),.din1(mul_ln75_fu_1380_p1),.dout(mul_ln75_fu_1380_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U169(.din0(mul_ln88_fu_1389_p0),.din1(mul_ln88_fu_1389_p1),.dout(mul_ln88_fu_1389_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U170(.din0(mul_ln101_fu_1398_p0),.din1(mul_ln101_fu_1398_p1),.dout(mul_ln101_fu_1398_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U171(.din0(mul_ln114_fu_1407_p0),.din1(mul_ln114_fu_1407_p1),.dout(mul_ln114_fu_1407_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U172(.din0(mul_ln127_fu_1416_p0),.din1(mul_ln127_fu_1416_p1),.dout(mul_ln127_fu_1416_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U173(.din0(v60_fu_1438_p2),.din1(v60_fu_1438_p4),.din2(v60_fu_1438_p6),.din3(v60_fu_1438_p8),.def(v60_fu_1438_p9),.sel(trunc_ln31_reg_1559),.dout(v60_fu_1438_p11));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U174(.din0(mul_ln140_fu_1471_p0),.din1(mul_ln140_fu_1471_p1),.dout(mul_ln140_fu_1471_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U175(.din0(v61_fu_1493_p2),.din1(v61_fu_1493_p4),.din2(v61_fu_1493_p6),.din3(v61_fu_1493_p8),.def(v61_fu_1493_p9),.sel(trunc_ln31_reg_1559),.dout(v61_fu_1493_p11));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_2_fu_484_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_484_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_484_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_484_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_fu_128 <= 16'd0;
    end else if (((icmp_ln32_fu_587_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_mul_fu_128 <= add_ln31_1_reg_1546;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_132 <= 8'd0;
    end else if (((icmp_ln32_fu_587_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v5_fu_132 <= add_ln31_reg_1554;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_484_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        v6_reg_472 <= add_ln32_reg_1635;
    end else if (((icmp_ln31_fu_551_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v6_reg_472 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln31_1_reg_1546 <= add_ln31_1_fu_545_p2;
        add_ln31_reg_1554 <= add_ln31_fu_557_p2;
        cmp11_reg_1585 <= cmp11_fu_581_p2;
        phi_mul_load_reg_1541 <= phi_mul_fu_128;
        trunc_ln31_reg_1559 <= trunc_ln31_fu_563_p1;
        zext_ln31_reg_1572[5 : 0] <= zext_ln31_fu_577_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_reg_1635 <= add_ln32_fu_664_p2;
        empty_53_reg_1613 <= empty_53_fu_632_p2;
        empty_60_reg_1624 <= empty_60_fu_648_p2;
        tmp_reg_1619 <= {{empty_53_fu_632_p2[7:3]}};
        tmp_s_reg_1630 <= {{empty_60_fu_648_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        empty_104_reg_1839 <= empty_104_fu_1238_p2;
        empty_97_reg_1829 <= empty_97_fu_1191_p2;
        tmp_17_reg_1834 <= {{empty_95_fu_1159_p2[7:3]}};
        v46_1_reg_1779 <= v46_1_fu_1023_p11;
        v57_1_reg_1784 <= v57_1_fu_1062_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        empty_110_reg_1955 <= empty_110_fu_1516_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        empty_67_reg_1685 <= empty_67_fu_791_p2;
        empty_74_reg_1696 <= empty_74_fu_807_p2;
        tmp_5_reg_1691 <= {{empty_67_fu_791_p2[7:3]}};
        tmp_6_reg_1702 <= {{empty_74_fu_807_p2[7:3]}};
        v11_reg_1640 <= v11_fu_694_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        empty_81_reg_1757 <= empty_81_fu_975_p2;
        empty_88_reg_1768 <= empty_88_fu_991_p2;
        tmp_13_reg_1763 <= {{empty_81_fu_975_p2[7:3]}};
        tmp_15_reg_1774 <= {{empty_88_fu_991_p2[7:3]}};
        v24_reg_1707 <= v24_fu_839_p11;
        v35_1_reg_1712 <= v35_1_fu_878_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        mul_ln101_reg_1925 <= mul_ln101_fu_1398_p2;
        mul_ln114_reg_1930 <= mul_ln114_fu_1407_p2;
        mul_ln127_reg_1935 <= mul_ln127_fu_1416_p2;
        mul_ln140_reg_1945 <= mul_ln140_fu_1471_p2;
        mul_ln34_reg_1900 <= mul_ln34_fu_1353_p2;
        mul_ln49_reg_1905 <= mul_ln49_fu_1362_p2;
        mul_ln62_reg_1910 <= mul_ln62_fu_1371_p2;
        mul_ln75_reg_1915 <= mul_ln75_fu_1380_p2;
        mul_ln88_reg_1920 <= mul_ln88_fu_1389_p2;
        trunc_ln32_reg_1894 <= trunc_ln32_fu_1335_p1;
        v60_reg_1940 <= v60_fu_1438_p11;
        v61_reg_1950 <= v61_fu_1493_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v59_reg_1849 <= v59_fu_1298_p11;
        v_reg_1844 <= v_fu_1259_p11;
    end
end
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_484_ap_done == 1'b0)) begin
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
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) | ((icmp_ln31_fu_551_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
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
    if (((icmp_ln31_fu_551_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1960_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1960_p_ce;
    end else begin
        grp_fu_1960_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1964_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1964_p_ce;
    end else begin
        grp_fu_1964_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1968_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1968_p_ce;
    end else begin
        grp_fu_1968_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1972_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1972_p_ce;
    end else begin
        grp_fu_1972_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1976_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1976_p_ce;
    end else begin
        grp_fu_1976_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1980_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1980_p_ce;
    end else begin
        grp_fu_1980_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1984_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1984_p_ce;
    end else begin
        grp_fu_1984_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1988_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1988_p_ce;
    end else begin
        grp_fu_1988_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1992_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1992_p_ce;
    end else begin
        grp_fu_1992_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1996_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1996_p_ce;
    end else begin
        grp_fu_1996_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2000_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_2000_p_ce;
    end else begin
        grp_fu_2000_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2004_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_2004_p_ce;
    end else begin
        grp_fu_2004_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2008_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_2008_p_ce;
    end else begin
        grp_fu_2008_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2012_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_2012_p_ce;
    end else begin
        grp_fu_2012_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_0_address0_local = p_cast1153_fu_1321_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_0_address0_local = p_cast1151_fu_1114_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_0_address0_local = p_cast1149_fu_930_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_0_address0_local = p_cast1148_fu_783_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_0_address0_local = p_cast1147_fu_624_p1;
    end else begin
        v224_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_0_address1_local = p_cast1154_fu_1328_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_0_address1_local = p_cast1152_fu_1151_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_0_address1_local = p_cast1150_fu_967_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_0_address1_local = p_cast_fu_746_p1;
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
        v224_1_address0_local = p_cast1153_fu_1321_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_1_address0_local = p_cast1151_fu_1114_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_1_address0_local = p_cast1149_fu_930_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_1_address0_local = p_cast1148_fu_783_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_1_address0_local = p_cast1147_fu_624_p1;
    end else begin
        v224_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_1_address1_local = p_cast1154_fu_1328_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_1_address1_local = p_cast1152_fu_1151_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_1_address1_local = p_cast1150_fu_967_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_1_address1_local = p_cast_fu_746_p1;
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
        v224_2_address0_local = p_cast1153_fu_1321_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_2_address0_local = p_cast1151_fu_1114_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_2_address0_local = p_cast1149_fu_930_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_2_address0_local = p_cast1148_fu_783_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_2_address0_local = p_cast1147_fu_624_p1;
    end else begin
        v224_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_2_address1_local = p_cast1154_fu_1328_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_2_address1_local = p_cast1152_fu_1151_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_2_address1_local = p_cast1150_fu_967_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_2_address1_local = p_cast_fu_746_p1;
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
        v224_3_address0_local = p_cast1153_fu_1321_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_3_address0_local = p_cast1151_fu_1114_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_3_address0_local = p_cast1149_fu_930_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_3_address0_local = p_cast1148_fu_783_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_3_address0_local = p_cast1147_fu_624_p1;
    end else begin
        v224_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_3_address1_local = p_cast1154_fu_1328_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_3_address1_local = p_cast1152_fu_1151_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_3_address1_local = p_cast1150_fu_967_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_3_address1_local = p_cast_fu_746_p1;
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
            if (((icmp_ln31_fu_551_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln32_fu_587_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_484_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
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
assign add_ln31_1_fu_545_p2 = (phi_mul_fu_128 + 16'd220);
assign add_ln31_fu_557_p2 = (v5_fu_132 + 8'd1);
assign add_ln32_fu_664_p2 = (v6_reg_472 + 8'd9);
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
assign cmp11_fu_581_p2 = ((v5_fu_132 == 8'd0) ? 1'b1 : 1'b0);
assign empty_102_fu_1206_p2 = (v6_reg_472 + 8'd8);
assign empty_103_fu_1232_p2 = (p_shl_fu_1212_p3 - p_shl1186_fu_1228_p1);
assign empty_104_fu_1238_p2 = (empty_103_fu_1232_p2 + zext_ln31_reg_1572);
assign empty_105_fu_1461_p2 = (lshr_ln1_fu_1339_p4 + 5'd1);
assign empty_110_fu_1516_p2 = ((trunc_ln32_reg_1894 == 3'd7) ? 1'b1 : 1'b0);
assign empty_48_fu_619_p2 = (empty_fu_613_p2 + zext_ln31_reg_1572);
assign empty_53_fu_632_p2 = (v6_reg_472 + 8'd1);
assign empty_54_fu_735_p2 = (p_shl2_fu_717_p3 - p_shl1200_fu_731_p1);
assign empty_55_fu_741_p2 = (empty_54_fu_735_p2 + zext_ln31_reg_1572);
assign empty_60_fu_648_p2 = (v6_reg_472 + 8'd2);
assign empty_61_fu_772_p2 = (p_shl3_fu_754_p3 - p_shl1198_fu_768_p1);
assign empty_62_fu_778_p2 = (empty_61_fu_772_p2 + zext_ln31_reg_1572);
assign empty_67_fu_791_p2 = (v6_reg_472 + 8'd3);
assign empty_68_fu_919_p2 = (p_shl4_fu_901_p3 - p_shl1196_fu_915_p1);
assign empty_69_fu_925_p2 = (empty_68_fu_919_p2 + zext_ln31_reg_1572);
assign empty_74_fu_807_p2 = (v6_reg_472 + 8'd4);
assign empty_75_fu_956_p2 = (p_shl5_fu_938_p3 - p_shl1194_fu_952_p1);
assign empty_76_fu_962_p2 = (empty_75_fu_956_p2 + zext_ln31_reg_1572);
assign empty_81_fu_975_p2 = (v6_reg_472 + 8'd5);
assign empty_82_fu_1103_p2 = (p_shl6_fu_1085_p3 - p_shl1192_fu_1099_p1);
assign empty_83_fu_1109_p2 = (empty_82_fu_1103_p2 + zext_ln31_reg_1572);
assign empty_88_fu_991_p2 = (v6_reg_472 + 8'd6);
assign empty_89_fu_1140_p2 = (p_shl7_fu_1122_p3 - p_shl1190_fu_1136_p1);
assign empty_90_fu_1146_p2 = (empty_89_fu_1140_p2 + zext_ln31_reg_1572);
assign empty_95_fu_1159_p2 = (v6_reg_472 + 8'd7);
assign empty_96_fu_1185_p2 = (p_shl8_fu_1165_p3 - p_shl1188_fu_1181_p1);
assign empty_97_fu_1191_p2 = (empty_96_fu_1185_p2 + zext_ln31_reg_1572);
assign empty_fu_613_p2 = (p_shl1_fu_593_p3 - p_shl1202_fu_609_p1);
assign grp_fu_172_p_ce = grp_fu_1960_ce;
assign grp_fu_172_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1960_p_din0;
assign grp_fu_172_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1960_p_din1;
assign grp_fu_172_p_opcode = 2'd0;
assign grp_fu_176_p_ce = grp_fu_1964_ce;
assign grp_fu_176_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1964_p_din0;
assign grp_fu_176_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1964_p_din1;
assign grp_fu_176_p_opcode = 2'd0;
assign grp_fu_180_p_ce = grp_fu_1968_ce;
assign grp_fu_180_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1968_p_din0;
assign grp_fu_180_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1968_p_din1;
assign grp_fu_180_p_opcode = 2'd0;
assign grp_fu_184_p_ce = grp_fu_1972_ce;
assign grp_fu_184_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1972_p_din0;
assign grp_fu_184_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1972_p_din1;
assign grp_fu_184_p_opcode = 2'd0;
assign grp_fu_188_p_ce = grp_fu_1976_ce;
assign grp_fu_188_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1976_p_din0;
assign grp_fu_188_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1976_p_din1;
assign grp_fu_188_p_opcode = 2'd0;
assign grp_fu_192_p_ce = grp_fu_1980_ce;
assign grp_fu_192_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1980_p_din0;
assign grp_fu_192_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1980_p_din1;
assign grp_fu_196_p_ce = grp_fu_1984_ce;
assign grp_fu_196_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1984_p_din0;
assign grp_fu_196_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1984_p_din1;
assign grp_fu_200_p_ce = grp_fu_1988_ce;
assign grp_fu_200_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1988_p_din0;
assign grp_fu_200_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1988_p_din1;
assign grp_fu_204_p_ce = grp_fu_1992_ce;
assign grp_fu_204_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1992_p_din0;
assign grp_fu_204_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1992_p_din1;
assign grp_fu_208_p_ce = grp_fu_1996_ce;
assign grp_fu_208_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1996_p_din0;
assign grp_fu_208_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_1996_p_din1;
assign grp_fu_212_p_ce = grp_fu_2000_ce;
assign grp_fu_212_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_2000_p_din0;
assign grp_fu_212_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_2000_p_din1;
assign grp_fu_216_p_ce = grp_fu_2004_ce;
assign grp_fu_216_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_2004_p_din0;
assign grp_fu_216_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_2004_p_din1;
assign grp_fu_220_p_ce = grp_fu_2008_ce;
assign grp_fu_220_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_2008_p_din0;
assign grp_fu_220_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_2008_p_din1;
assign grp_fu_224_p_ce = grp_fu_2012_ce;
assign grp_fu_224_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_2012_p_din0;
assign grp_fu_224_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_grp_fu_2012_p_din1;
assign grp_kernel_2mm_node0_Pipeline_label_2_fu_484_ap_start = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_ap_start_reg;
assign icmp_ln31_fu_551_p2 = ((v5_fu_132 == 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_587_p2 = ((v6_reg_472 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_1339_p4 = {{v6_reg_472[7:3]}};
assign lshr_ln_fu_567_p4 = {{v5_fu_132[7:2]}};
assign mul_ln101_fu_1398_p0 = mul_ln101_fu_1398_p00;
assign mul_ln101_fu_1398_p00 = tmp_13_reg_1763;
assign mul_ln101_fu_1398_p1 = 13'd220;
assign mul_ln114_fu_1407_p0 = mul_ln114_fu_1407_p00;
assign mul_ln114_fu_1407_p00 = tmp_15_reg_1774;
assign mul_ln114_fu_1407_p1 = 13'd220;
assign mul_ln127_fu_1416_p0 = mul_ln127_fu_1416_p00;
assign mul_ln127_fu_1416_p00 = tmp_17_reg_1834;
assign mul_ln127_fu_1416_p1 = 13'd220;
assign mul_ln140_fu_1471_p0 = mul_ln140_fu_1471_p00;
assign mul_ln140_fu_1471_p00 = empty_105_fu_1461_p2;
assign mul_ln140_fu_1471_p1 = 13'd220;
assign mul_ln34_fu_1353_p0 = mul_ln34_fu_1353_p00;
assign mul_ln34_fu_1353_p00 = lshr_ln1_fu_1339_p4;
assign mul_ln34_fu_1353_p1 = 13'd220;
assign mul_ln49_fu_1362_p0 = mul_ln49_fu_1362_p00;
assign mul_ln49_fu_1362_p00 = tmp_reg_1619;
assign mul_ln49_fu_1362_p1 = 13'd220;
assign mul_ln62_fu_1371_p0 = mul_ln62_fu_1371_p00;
assign mul_ln62_fu_1371_p00 = tmp_s_reg_1630;
assign mul_ln62_fu_1371_p1 = 13'd220;
assign mul_ln75_fu_1380_p0 = mul_ln75_fu_1380_p00;
assign mul_ln75_fu_1380_p00 = tmp_5_reg_1691;
assign mul_ln75_fu_1380_p1 = 13'd220;
assign mul_ln88_fu_1389_p0 = mul_ln88_fu_1389_p00;
assign mul_ln88_fu_1389_p00 = tmp_6_reg_1702;
assign mul_ln88_fu_1389_p1 = 13'd220;
assign p_cast1147_fu_624_p1 = empty_48_fu_619_p2;
assign p_cast1148_fu_783_p1 = empty_62_fu_778_p2;
assign p_cast1149_fu_930_p1 = empty_69_fu_925_p2;
assign p_cast1150_fu_967_p1 = empty_76_fu_962_p2;
assign p_cast1151_fu_1114_p1 = empty_83_fu_1109_p2;
assign p_cast1152_fu_1151_p1 = empty_90_fu_1146_p2;
assign p_cast1153_fu_1321_p1 = empty_97_reg_1829;
assign p_cast1154_fu_1328_p1 = empty_104_reg_1839;
assign p_cast_fu_746_p1 = empty_55_fu_741_p2;
assign p_shl1186_fu_1228_p1 = tmp_18_fu_1220_p3;
assign p_shl1188_fu_1181_p1 = tmp_16_fu_1173_p3;
assign p_shl1190_fu_1136_p1 = tmp_14_fu_1129_p3;
assign p_shl1192_fu_1099_p1 = tmp_12_fu_1092_p3;
assign p_shl1194_fu_952_p1 = tmp_11_fu_945_p3;
assign p_shl1196_fu_915_p1 = tmp_10_fu_908_p3;
assign p_shl1198_fu_768_p1 = tmp_9_fu_761_p3;
assign p_shl1200_fu_731_p1 = tmp_8_fu_724_p3;
assign p_shl1202_fu_609_p1 = tmp_7_fu_601_p3;
assign p_shl1_fu_593_p3 = {{v6_reg_472}, {6'd0}};
assign p_shl2_fu_717_p3 = {{empty_53_reg_1613}, {6'd0}};
assign p_shl3_fu_754_p3 = {{empty_60_reg_1624}, {6'd0}};
assign p_shl4_fu_901_p3 = {{empty_67_reg_1685}, {6'd0}};
assign p_shl5_fu_938_p3 = {{empty_74_reg_1696}, {6'd0}};
assign p_shl6_fu_1085_p3 = {{empty_81_reg_1757}, {6'd0}};
assign p_shl7_fu_1122_p3 = {{empty_88_reg_1768}, {6'd0}};
assign p_shl8_fu_1165_p3 = {{empty_95_fu_1159_p2}, {6'd0}};
assign p_shl_fu_1212_p3 = {{empty_102_fu_1206_p2}, {6'd0}};
assign tmp_10_fu_908_p3 = {{empty_67_reg_1685}, {4'd0}};
assign tmp_11_fu_945_p3 = {{empty_74_reg_1696}, {4'd0}};
assign tmp_12_fu_1092_p3 = {{empty_81_reg_1757}, {4'd0}};
assign tmp_14_fu_1129_p3 = {{empty_88_reg_1768}, {4'd0}};
assign tmp_16_fu_1173_p3 = {{empty_95_fu_1159_p2}, {4'd0}};
assign tmp_18_fu_1220_p3 = {{empty_102_fu_1206_p2}, {4'd0}};
assign tmp_7_fu_601_p3 = {{v6_reg_472}, {4'd0}};
assign tmp_8_fu_724_p3 = {{empty_53_reg_1613}, {4'd0}};
assign tmp_9_fu_761_p3 = {{empty_60_reg_1624}, {4'd0}};
assign trunc_ln31_fu_563_p1 = v5_fu_132[1:0];
assign trunc_ln32_fu_1335_p1 = v6_reg_472[2:0];
assign v11_fu_694_p2 = v224_0_q0;
assign v11_fu_694_p4 = v224_1_q0;
assign v11_fu_694_p6 = v224_2_q0;
assign v11_fu_694_p8 = v224_3_q0;
assign v11_fu_694_p9 = 'bx;
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
assign v228_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v228_address0;
assign v228_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v228_address1;
assign v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v228_ce0;
assign v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v228_ce1;
assign v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_0_address0;
assign v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_0_address1;
assign v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_0_ce0;
assign v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_0_ce1;
assign v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_0_d0;
assign v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_0_d1;
assign v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_0_we0;
assign v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_0_we1;
assign v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_1_address0;
assign v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_1_address1;
assign v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_1_ce0;
assign v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_1_ce1;
assign v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_1_d0;
assign v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_1_d1;
assign v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_1_we0;
assign v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_1_we1;
assign v229_2_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_2_address0;
assign v229_2_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_2_address1;
assign v229_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_2_ce0;
assign v229_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_2_ce1;
assign v229_2_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_2_d0;
assign v229_2_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_2_d1;
assign v229_2_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_2_we0;
assign v229_2_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_2_we1;
assign v229_3_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_3_address0;
assign v229_3_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_3_address1;
assign v229_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_3_ce0;
assign v229_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_3_ce1;
assign v229_3_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_3_d0;
assign v229_3_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_3_d1;
assign v229_3_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_3_we0;
assign v229_3_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_3_we1;
assign v229_4_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_4_address0;
assign v229_4_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_4_address1;
assign v229_4_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_4_ce0;
assign v229_4_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_4_ce1;
assign v229_4_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_4_d0;
assign v229_4_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_4_d1;
assign v229_4_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_4_we0;
assign v229_4_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_4_we1;
assign v229_5_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_5_address0;
assign v229_5_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_5_address1;
assign v229_5_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_5_ce0;
assign v229_5_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_5_ce1;
assign v229_5_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_5_d0;
assign v229_5_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_5_d1;
assign v229_5_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_5_we0;
assign v229_5_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_5_we1;
assign v229_6_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_6_address0;
assign v229_6_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_6_address1;
assign v229_6_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_6_ce0;
assign v229_6_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_6_ce1;
assign v229_6_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_6_d0;
assign v229_6_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_6_d1;
assign v229_6_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_6_we0;
assign v229_6_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_6_we1;
assign v229_7_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_7_address0;
assign v229_7_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_7_address1;
assign v229_7_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_7_ce0;
assign v229_7_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_7_ce1;
assign v229_7_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_7_d0;
assign v229_7_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_7_d1;
assign v229_7_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_7_we0;
assign v229_7_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_484_v229_7_we1;
assign v236_read = v236_read_local;
assign v24_fu_839_p2 = v224_0_q1;
assign v24_fu_839_p4 = v224_1_q1;
assign v24_fu_839_p6 = v224_2_q1;
assign v24_fu_839_p8 = v224_3_q1;
assign v24_fu_839_p9 = 'bx;
assign v35_1_fu_878_p2 = v224_0_q0;
assign v35_1_fu_878_p4 = v224_1_q0;
assign v35_1_fu_878_p6 = v224_2_q0;
assign v35_1_fu_878_p8 = v224_3_q0;
assign v35_1_fu_878_p9 = 'bx;
assign v46_1_fu_1023_p2 = v224_0_q0;
assign v46_1_fu_1023_p4 = v224_1_q0;
assign v46_1_fu_1023_p6 = v224_2_q0;
assign v46_1_fu_1023_p8 = v224_3_q0;
assign v46_1_fu_1023_p9 = 'bx;
assign v57_1_fu_1062_p2 = v224_0_q1;
assign v57_1_fu_1062_p4 = v224_1_q1;
assign v57_1_fu_1062_p6 = v224_2_q1;
assign v57_1_fu_1062_p8 = v224_3_q1;
assign v57_1_fu_1062_p9 = 'bx;
assign v59_fu_1298_p2 = v224_0_q1;
assign v59_fu_1298_p4 = v224_1_q1;
assign v59_fu_1298_p6 = v224_2_q1;
assign v59_fu_1298_p8 = v224_3_q1;
assign v59_fu_1298_p9 = 'bx;
assign v60_fu_1438_p2 = v224_0_q0;
assign v60_fu_1438_p4 = v224_1_q0;
assign v60_fu_1438_p6 = v224_2_q0;
assign v60_fu_1438_p8 = v224_3_q0;
assign v60_fu_1438_p9 = 'bx;
assign v61_fu_1493_p2 = v224_0_q1;
assign v61_fu_1493_p4 = v224_1_q1;
assign v61_fu_1493_p6 = v224_2_q1;
assign v61_fu_1493_p8 = v224_3_q1;
assign v61_fu_1493_p9 = 'bx;
assign v_fu_1259_p2 = v224_0_q0;
assign v_fu_1259_p4 = v224_1_q0;
assign v_fu_1259_p6 = v224_2_q0;
assign v_fu_1259_p8 = v224_3_q0;
assign v_fu_1259_p9 = 'bx;
assign zext_ln31_fu_577_p1 = lshr_ln_fu_567_p4;
always @ (posedge ap_clk) begin
    zext_ln31_reg_1572[13:6] <= 8'b00000000;
end
endmodule 