module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_address0,v224_ce0,v224_q0,v224_address1,v224_ce1,v224_q1,v228_address0,v228_ce0,v228_q0,v228_address1,v228_ce1,v228_q1,v229_0_address0,v229_0_ce0,v229_0_we0,v229_0_d0,v229_0_q0,v229_0_address1,v229_0_ce1,v229_0_we1,v229_0_d1,v229_0_q1,v229_1_address0,v229_1_ce0,v229_1_we0,v229_1_d0,v229_1_q0,v229_1_address1,v229_1_ce1,v229_1_we1,v229_1_d1,v229_1_q1,v229_2_address0,v229_2_ce0,v229_2_we0,v229_2_d0,v229_2_q0,v229_2_address1,v229_2_ce1,v229_2_we1,v229_2_d1,v229_2_q1,v229_3_address0,v229_3_ce0,v229_3_we0,v229_3_d0,v229_3_q0,v229_3_address1,v229_3_ce1,v229_3_we1,v229_3_d1,v229_3_q1,v4,grp_fu_144_p_din0,grp_fu_144_p_din1,grp_fu_144_p_opcode,grp_fu_144_p_dout0,grp_fu_144_p_ce,grp_fu_148_p_din0,grp_fu_148_p_din1,grp_fu_148_p_dout0,grp_fu_148_p_ce,grp_fu_152_p_din0,grp_fu_152_p_din1,grp_fu_152_p_dout0,grp_fu_152_p_ce,grp_fu_156_p_din0,grp_fu_156_p_din1,grp_fu_156_p_dout0,grp_fu_156_p_ce,grp_fu_160_p_din0,grp_fu_160_p_din1,grp_fu_160_p_dout0,grp_fu_160_p_ce,grp_fu_164_p_din0,grp_fu_164_p_din1,grp_fu_164_p_dout0,grp_fu_164_p_ce,grp_fu_168_p_din0,grp_fu_168_p_din1,grp_fu_168_p_dout0,grp_fu_168_p_ce); 
parameter    ap_ST_fsm_state1 = 26'd1;
parameter    ap_ST_fsm_state2 = 26'd2;
parameter    ap_ST_fsm_state3 = 26'd4;
parameter    ap_ST_fsm_state4 = 26'd8;
parameter    ap_ST_fsm_state5 = 26'd16;
parameter    ap_ST_fsm_state6 = 26'd32;
parameter    ap_ST_fsm_state7 = 26'd64;
parameter    ap_ST_fsm_state8 = 26'd128;
parameter    ap_ST_fsm_state9 = 26'd256;
parameter    ap_ST_fsm_state10 = 26'd512;
parameter    ap_ST_fsm_state11 = 26'd1024;
parameter    ap_ST_fsm_state12 = 26'd2048;
parameter    ap_ST_fsm_state13 = 26'd4096;
parameter    ap_ST_fsm_state14 = 26'd8192;
parameter    ap_ST_fsm_state15 = 26'd16384;
parameter    ap_ST_fsm_state16 = 26'd32768;
parameter    ap_ST_fsm_state17 = 26'd65536;
parameter    ap_ST_fsm_state18 = 26'd131072;
parameter    ap_ST_fsm_state19 = 26'd262144;
parameter    ap_ST_fsm_state20 = 26'd524288;
parameter    ap_ST_fsm_state21 = 26'd1048576;
parameter    ap_ST_fsm_state22 = 26'd2097152;
parameter    ap_ST_fsm_state23 = 26'd4194304;
parameter    ap_ST_fsm_state24 = 26'd8388608;
parameter    ap_ST_fsm_state25 = 26'd16777216;
parameter    ap_ST_fsm_state26 = 26'd33554432;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [0:0] v236_dout;
input   v236_empty_n;
output   v236_read;
output  [15:0] v224_address0;
output   v224_ce0;
input  [31:0] v224_q0;
output  [15:0] v224_address1;
output   v224_ce1;
input  [31:0] v224_q1;
output  [15:0] v228_address0;
output   v228_ce0;
input  [31:0] v228_q0;
output  [15:0] v228_address1;
output   v228_ce1;
input  [31:0] v228_q1;
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
output  [31:0] grp_fu_168_p_din0;
output  [31:0] grp_fu_168_p_din1;
input  [31:0] grp_fu_168_p_dout0;
output   grp_fu_168_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[15:0] v228_address0;
reg v228_ce0;
reg[15:0] v228_address1;
reg v228_ce1;
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
(* fsm_encoding = "none" *) reg   [25:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
reg   [31:0] reg_617;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state21;
reg   [31:0] reg_621;
reg   [31:0] reg_625;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state22;
reg   [31:0] reg_629;
reg   [31:0] reg_633;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state23;
reg   [31:0] reg_637;
reg   [31:0] reg_641;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state19;
wire    ap_CS_fsm_state24;
reg   [31:0] reg_645;
reg   [31:0] reg_649;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state20;
reg   [31:0] reg_653;
reg   [15:0] phi_mul_load_reg_1608;
wire    ap_CS_fsm_state2;
wire   [15:0] add_ln31_1_fu_673_p2;
reg   [15:0] add_ln31_1_reg_1616;
wire   [7:0] add_ln31_fu_685_p2;
reg   [7:0] add_ln31_reg_1624;
wire   [15:0] zext_ln31_fu_691_p1;
reg   [15:0] zext_ln31_reg_1629;
wire   [0:0] cmp11_fu_695_p2;
reg   [0:0] cmp11_reg_1669;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln32_3_fu_733_p2;
reg   [7:0] add_ln32_3_reg_1690;
wire   [5:0] lshr_ln_fu_747_p4;
reg   [5:0] lshr_ln_reg_1695;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state6;
wire   [13:0] mul_ln34_fu_824_p2;
reg   [13:0] mul_ln34_reg_1768;
wire   [13:0] mul_ln88_fu_839_p2;
reg   [13:0] mul_ln88_reg_1773;
wire   [13:0] mul_ln140_fu_854_p2;
reg   [13:0] mul_ln140_reg_1778;
wire   [31:0] v11_fu_868_p1;
reg   [31:0] v11_reg_1794;
wire   [31:0] v24_fu_873_p1;
reg   [31:0] v24_reg_1799;
wire   [31:0] v35_fu_878_p1;
reg   [31:0] v35_reg_1804;
wire   [31:0] v46_fu_883_p1;
reg   [31:0] v46_reg_1809;
wire   [31:0] v57_fu_888_p1;
reg   [31:0] v57_reg_1814;
wire   [31:0] v68_fu_893_p1;
reg   [31:0] v68_reg_1819;
wire   [31:0] v79_fu_898_p1;
reg   [31:0] v79_reg_1824;
wire   [31:0] v90_fu_903_p1;
reg   [31:0] v90_reg_1829;
wire   [31:0] v101_fu_908_p1;
reg   [31:0] v101_reg_1834;
wire   [13:0] mul_ln75_fu_946_p2;
reg   [13:0] mul_ln75_reg_1869;
wire   [13:0] mul_ln127_fu_961_p2;
reg   [13:0] mul_ln127_reg_1874;
wire   [31:0] v11_1_fu_975_p1;
reg   [31:0] v11_1_reg_1890;
wire   [31:0] v24_1_fu_980_p1;
reg   [31:0] v24_1_reg_1895;
wire   [31:0] v35_1_fu_985_p1;
reg   [31:0] v35_1_reg_1900;
wire   [31:0] v46_1_fu_990_p1;
reg   [31:0] v46_1_reg_1905;
wire   [31:0] v57_1_fu_995_p1;
reg   [31:0] v57_1_reg_1910;
wire   [31:0] v68_1_fu_1000_p1;
reg   [31:0] v68_1_reg_1915;
wire   [31:0] v79_1_fu_1005_p1;
reg   [31:0] v79_1_reg_1920;
wire   [31:0] v90_1_fu_1010_p1;
reg   [31:0] v90_1_reg_1925;
wire   [31:0] v101_1_fu_1015_p1;
reg   [31:0] v101_1_reg_1930;
wire   [13:0] mul_ln62_fu_1061_p2;
reg   [13:0] mul_ln62_reg_1975;
wire   [13:0] mul_ln114_fu_1076_p2;
reg   [13:0] mul_ln114_reg_1980;
wire   [31:0] v11_2_fu_1090_p1;
reg   [31:0] v11_2_reg_1996;
wire   [31:0] v24_2_fu_1095_p1;
reg   [31:0] v24_2_reg_2001;
wire   [31:0] v35_2_fu_1100_p1;
reg   [31:0] v35_2_reg_2006;
wire   [31:0] v46_2_fu_1105_p1;
reg   [31:0] v46_2_reg_2011;
wire   [31:0] v57_2_fu_1110_p1;
reg   [31:0] v57_2_reg_2016;
wire   [31:0] v68_2_fu_1115_p1;
reg   [31:0] v68_2_reg_2021;
wire   [31:0] v79_2_fu_1120_p1;
reg   [31:0] v79_2_reg_2026;
wire   [31:0] v90_2_fu_1125_p1;
reg   [31:0] v90_2_reg_2031;
wire   [31:0] v101_2_fu_1130_p1;
reg   [31:0] v101_2_reg_2036;
wire   [13:0] mul_ln49_fu_1168_p2;
reg   [13:0] mul_ln49_reg_2071;
wire   [13:0] mul_ln101_fu_1183_p2;
reg   [13:0] mul_ln101_reg_2076;
wire   [31:0] v11_3_fu_1189_p1;
reg   [31:0] v11_3_reg_2081;
wire    ap_CS_fsm_state25;
wire   [31:0] v24_3_fu_1194_p1;
reg   [31:0] v24_3_reg_2086;
wire   [31:0] v35_3_fu_1199_p1;
reg   [31:0] v35_3_reg_2091;
wire   [31:0] v46_3_fu_1204_p1;
reg   [31:0] v46_3_reg_2096;
wire   [31:0] v57_3_fu_1209_p1;
reg   [31:0] v57_3_reg_2101;
wire   [31:0] v68_3_fu_1214_p1;
reg   [31:0] v68_3_reg_2106;
wire   [31:0] v79_3_fu_1219_p1;
reg   [31:0] v79_3_reg_2111;
wire   [31:0] v90_3_fu_1224_p1;
reg   [31:0] v90_3_reg_2116;
wire   [31:0] v101_3_fu_1229_p1;
reg   [31:0] v101_3_reg_2121;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_501_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_501_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_501_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_501_ap_ready;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_3_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_3_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_3_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_3_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_3_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_3_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_2_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_2_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_2_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_2_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_2_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_2_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_1_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_1_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_0_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_0_d1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v228_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2126_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2126_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2126_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2126_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2130_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2130_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2130_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2130_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2134_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2134_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2134_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2134_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2138_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2138_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2138_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2142_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2142_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2142_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2146_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2146_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2146_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2150_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2150_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2150_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2154_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2154_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2154_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2158_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2158_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2158_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_530_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_530_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_530_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_530_ap_ready;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_3_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_3_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_3_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_3_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_3_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_3_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_2_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_2_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_2_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_2_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_2_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_2_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_1_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_1_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_0_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_0_d1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v228_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2126_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2126_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2126_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2126_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2130_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2130_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2130_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2130_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2134_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2134_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2134_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2134_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2138_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2138_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2138_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2142_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2142_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2142_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2146_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2146_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2146_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2150_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2150_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2150_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2154_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2154_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2154_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2158_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2158_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2158_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_559_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_559_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_559_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_559_ap_ready;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_3_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_3_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_3_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_3_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_3_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_3_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_2_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_2_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_2_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_2_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_2_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_2_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_1_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_1_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_0_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_0_d1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v228_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2126_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2126_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2126_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2126_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2130_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2130_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2130_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2130_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2134_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2134_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2134_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2134_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2138_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2138_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2138_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2142_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2142_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2142_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2146_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2146_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2146_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2150_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2150_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2150_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2154_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2154_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2154_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2158_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2158_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2158_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_588_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_588_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_588_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_588_ap_ready;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_3_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_3_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_3_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_3_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_3_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_3_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_2_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_2_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_2_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_2_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_2_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_2_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_1_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_1_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_0_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_0_d1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v228_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2126_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2126_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2126_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2126_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2130_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2130_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2130_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2130_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2134_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2134_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2134_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2134_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2138_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2138_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2138_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2142_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2142_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2142_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2146_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2146_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2146_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2150_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2150_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2150_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2154_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2154_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2154_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2158_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2158_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2158_p_ce;
reg   [7:0] v6_reg_489;
wire    ap_CS_fsm_state26;
wire   [0:0] icmp_ln31_fu_679_p2;
reg    grp_kernel_2mm_node0_Pipeline_label_2_fu_501_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_24_fu_530_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_25_fu_559_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_26_fu_588_ap_start_reg;
wire   [63:0] p_cast760_fu_781_p1;
wire   [63:0] p_cast_fu_785_p1;
wire   [63:0] p_cast761_fu_789_p1;
wire   [63:0] p_cast762_fu_793_p1;
wire   [63:0] p_cast763_fu_797_p1;
wire   [63:0] p_cast764_fu_801_p1;
wire   [63:0] p_cast765_fu_805_p1;
wire   [63:0] p_cast766_fu_809_p1;
wire   [63:0] p_cast767_fu_813_p1;
wire   [63:0] p_cast768_fu_817_p1;
wire   [63:0] p_cast769_fu_860_p1;
wire   [63:0] p_cast770_fu_864_p1;
wire   [63:0] p_cast771_fu_913_p1;
wire   [63:0] p_cast772_fu_917_p1;
wire   [63:0] p_cast773_fu_921_p1;
wire   [63:0] p_cast774_fu_925_p1;
wire   [63:0] p_cast775_fu_929_p1;
wire   [63:0] p_cast776_fu_933_p1;
wire   [63:0] p_cast777_fu_967_p1;
wire   [63:0] p_cast778_fu_971_p1;
wire   [63:0] p_cast779_fu_1020_p1;
wire   [63:0] p_cast780_fu_1024_p1;
wire   [63:0] p_cast781_fu_1028_p1;
wire   [63:0] p_cast782_fu_1032_p1;
wire   [63:0] p_cast783_fu_1036_p1;
wire   [63:0] p_cast784_fu_1040_p1;
wire   [63:0] p_cast785_fu_1044_p1;
wire   [63:0] p_cast786_fu_1048_p1;
wire   [63:0] p_cast787_fu_1082_p1;
wire   [63:0] p_cast788_fu_1086_p1;
wire   [63:0] p_cast789_fu_1135_p1;
wire   [63:0] p_cast790_fu_1139_p1;
wire   [63:0] p_cast791_fu_1143_p1;
wire   [63:0] p_cast792_fu_1147_p1;
wire   [63:0] p_cast793_fu_1151_p1;
wire   [63:0] p_cast794_fu_1155_p1;
reg   [15:0] phi_mul_fu_172;
wire   [0:0] icmp_ln32_fu_701_p2;
reg    ap_block_state1;
reg   [7:0] v5_fu_176;
reg    v236_read_local;
reg    v224_ce1_local;
reg   [15:0] v224_address1_local;
reg    v224_ce0_local;
reg   [15:0] v224_address0_local;
wire   [6:0] tmp_fu_711_p4;
wire   [7:0] tmp_s_fu_721_p3;
wire   [7:0] tmp_3_fu_757_p3;
wire   [7:0] tmp_4_fu_769_p3;
wire   [15:0] grp_fu_1234_p3;
wire   [15:0] grp_fu_1242_p3;
wire   [15:0] grp_fu_1250_p3;
wire   [15:0] grp_fu_1258_p3;
wire   [15:0] grp_fu_1266_p4;
wire   [15:0] grp_fu_1276_p4;
wire   [15:0] grp_fu_1286_p4;
wire   [15:0] grp_fu_1296_p4;
wire   [15:0] grp_fu_1306_p4;
wire   [15:0] grp_fu_1316_p4;
wire   [5:0] mul_ln34_fu_824_p0;
wire   [8:0] mul_ln34_fu_824_p1;
wire   [5:0] empty_76_fu_830_p2;
wire   [5:0] mul_ln88_fu_839_p0;
wire   [8:0] mul_ln88_fu_839_p1;
wire   [5:0] empty_89_fu_845_p2;
wire   [5:0] mul_ln140_fu_854_p0;
wire   [8:0] mul_ln140_fu_854_p1;
wire   [15:0] grp_fu_1326_p4;
wire   [15:0] grp_fu_1336_p4;
wire   [15:0] grp_fu_1346_p4;
wire   [15:0] grp_fu_1356_p4;
wire   [15:0] grp_fu_1366_p4;
wire   [15:0] grp_fu_1376_p4;
wire   [15:0] grp_fu_1386_p4;
wire   [15:0] grp_fu_1396_p4;
wire   [5:0] empty_101_fu_937_p2;
wire   [5:0] mul_ln75_fu_946_p0;
wire   [8:0] mul_ln75_fu_946_p1;
wire   [5:0] empty_114_fu_952_p2;
wire   [5:0] mul_ln127_fu_961_p0;
wire   [8:0] mul_ln127_fu_961_p1;
wire   [15:0] grp_fu_1406_p4;
wire   [15:0] grp_fu_1416_p4;
wire   [15:0] grp_fu_1426_p4;
wire   [15:0] grp_fu_1436_p4;
wire   [15:0] grp_fu_1446_p4;
wire   [15:0] grp_fu_1456_p4;
wire   [15:0] grp_fu_1466_p4;
wire   [15:0] grp_fu_1476_p4;
wire   [15:0] grp_fu_1486_p4;
wire   [15:0] grp_fu_1496_p4;
wire   [5:0] empty_126_fu_1052_p2;
wire   [5:0] mul_ln62_fu_1061_p0;
wire   [8:0] mul_ln62_fu_1061_p1;
wire   [5:0] empty_139_fu_1067_p2;
wire   [5:0] mul_ln114_fu_1076_p0;
wire   [8:0] mul_ln114_fu_1076_p1;
wire   [15:0] grp_fu_1506_p4;
wire   [15:0] grp_fu_1516_p4;
wire   [15:0] grp_fu_1526_p4;
wire   [15:0] grp_fu_1536_p4;
wire   [15:0] grp_fu_1546_p4;
wire   [15:0] grp_fu_1556_p4;
wire   [15:0] grp_fu_1566_p4;
wire   [15:0] grp_fu_1576_p4;
wire   [5:0] empty_151_fu_1159_p2;
wire   [5:0] mul_ln49_fu_1168_p0;
wire   [8:0] mul_ln49_fu_1168_p1;
wire   [5:0] empty_164_fu_1174_p2;
wire   [5:0] mul_ln101_fu_1183_p0;
wire   [8:0] mul_ln101_fu_1183_p1;
wire   [7:0] grp_fu_1234_p0;
wire   [7:0] grp_fu_1234_p1;
wire   [7:0] grp_fu_1234_p2;
wire    ap_CS_fsm_state5;
wire   [7:0] grp_fu_1242_p0;
wire   [7:0] grp_fu_1242_p1;
wire   [7:0] grp_fu_1242_p2;
wire   [7:0] grp_fu_1250_p0;
wire   [7:0] grp_fu_1250_p1;
wire   [7:0] grp_fu_1250_p2;
wire   [7:0] grp_fu_1258_p0;
wire   [7:0] grp_fu_1258_p1;
wire   [7:0] grp_fu_1258_p2;
wire   [2:0] grp_fu_1266_p1;
wire   [7:0] grp_fu_1266_p2;
wire   [7:0] grp_fu_1266_p3;
wire   [2:0] grp_fu_1276_p1;
wire   [7:0] grp_fu_1276_p2;
wire   [7:0] grp_fu_1276_p3;
wire   [2:0] grp_fu_1286_p1;
wire   [7:0] grp_fu_1286_p2;
wire   [7:0] grp_fu_1286_p3;
wire   [2:0] grp_fu_1296_p1;
wire   [7:0] grp_fu_1296_p2;
wire   [7:0] grp_fu_1296_p3;
wire   [3:0] grp_fu_1306_p1;
wire   [7:0] grp_fu_1306_p2;
wire   [7:0] grp_fu_1306_p3;
wire   [3:0] grp_fu_1316_p1;
wire   [7:0] grp_fu_1316_p2;
wire   [7:0] grp_fu_1316_p3;
wire   [3:0] grp_fu_1326_p1;
wire   [7:0] grp_fu_1326_p2;
wire   [7:0] grp_fu_1326_p3;
wire   [3:0] grp_fu_1336_p1;
wire   [7:0] grp_fu_1336_p2;
wire   [7:0] grp_fu_1336_p3;
wire   [3:0] grp_fu_1346_p1;
wire   [7:0] grp_fu_1346_p2;
wire   [7:0] grp_fu_1346_p3;
wire   [3:0] grp_fu_1356_p1;
wire   [7:0] grp_fu_1356_p2;
wire   [7:0] grp_fu_1356_p3;
wire   [3:0] grp_fu_1366_p1;
wire   [7:0] grp_fu_1366_p2;
wire   [7:0] grp_fu_1366_p3;
wire   [3:0] grp_fu_1376_p1;
wire   [7:0] grp_fu_1376_p2;
wire   [7:0] grp_fu_1376_p3;
wire   [4:0] grp_fu_1386_p1;
wire   [7:0] grp_fu_1386_p2;
wire   [7:0] grp_fu_1386_p3;
wire   [4:0] grp_fu_1396_p1;
wire   [7:0] grp_fu_1396_p2;
wire   [7:0] grp_fu_1396_p3;
wire   [4:0] grp_fu_1406_p1;
wire   [7:0] grp_fu_1406_p2;
wire   [7:0] grp_fu_1406_p3;
wire   [4:0] grp_fu_1416_p1;
wire   [7:0] grp_fu_1416_p2;
wire   [7:0] grp_fu_1416_p3;
wire   [4:0] grp_fu_1426_p1;
wire   [7:0] grp_fu_1426_p2;
wire   [7:0] grp_fu_1426_p3;
wire   [4:0] grp_fu_1436_p1;
wire   [7:0] grp_fu_1436_p2;
wire   [7:0] grp_fu_1436_p3;
wire   [4:0] grp_fu_1446_p1;
wire   [7:0] grp_fu_1446_p2;
wire   [7:0] grp_fu_1446_p3;
wire   [4:0] grp_fu_1456_p1;
wire   [7:0] grp_fu_1456_p2;
wire   [7:0] grp_fu_1456_p3;
wire   [4:0] grp_fu_1466_p1;
wire   [7:0] grp_fu_1466_p2;
wire   [7:0] grp_fu_1466_p3;
wire   [4:0] grp_fu_1476_p1;
wire   [7:0] grp_fu_1476_p2;
wire   [7:0] grp_fu_1476_p3;
wire   [4:0] grp_fu_1486_p1;
wire   [7:0] grp_fu_1486_p2;
wire   [7:0] grp_fu_1486_p3;
wire   [4:0] grp_fu_1496_p1;
wire   [7:0] grp_fu_1496_p2;
wire   [7:0] grp_fu_1496_p3;
wire   [4:0] grp_fu_1506_p1;
wire   [7:0] grp_fu_1506_p2;
wire   [7:0] grp_fu_1506_p3;
wire   [4:0] grp_fu_1516_p1;
wire   [7:0] grp_fu_1516_p2;
wire   [7:0] grp_fu_1516_p3;
wire   [4:0] grp_fu_1526_p1;
wire   [7:0] grp_fu_1526_p2;
wire   [7:0] grp_fu_1526_p3;
wire   [4:0] grp_fu_1536_p1;
wire   [7:0] grp_fu_1536_p2;
wire   [7:0] grp_fu_1536_p3;
wire   [5:0] grp_fu_1546_p1;
wire   [7:0] grp_fu_1546_p2;
wire   [7:0] grp_fu_1546_p3;
wire   [5:0] grp_fu_1556_p1;
wire   [7:0] grp_fu_1556_p2;
wire   [7:0] grp_fu_1556_p3;
wire   [5:0] grp_fu_1566_p1;
wire   [7:0] grp_fu_1566_p2;
wire   [7:0] grp_fu_1566_p3;
wire   [5:0] grp_fu_1576_p1;
wire   [7:0] grp_fu_1576_p2;
wire   [7:0] grp_fu_1576_p3;
reg    grp_fu_1366_ce;
reg    grp_fu_1376_ce;
reg    grp_fu_1386_ce;
reg    grp_fu_1396_ce;
reg    grp_fu_1406_ce;
reg    grp_fu_1416_ce;
reg    grp_fu_1426_ce;
reg    grp_fu_1436_ce;
reg    grp_fu_1446_ce;
reg    grp_fu_1456_ce;
reg    grp_fu_1466_ce;
reg    grp_fu_1476_ce;
reg    grp_fu_1486_ce;
reg    grp_fu_1496_ce;
reg    grp_fu_1506_ce;
reg    grp_fu_1516_ce;
reg    grp_fu_1546_ce;
reg    grp_fu_1556_ce;
reg    grp_fu_1566_ce;
reg    grp_fu_1576_ce;
reg   [31:0] grp_fu_2126_p0;
reg   [31:0] grp_fu_2126_p1;
reg    grp_fu_2126_ce;
wire   [31:0] grp_fu_2130_p2;
reg   [31:0] grp_fu_2130_p0;
reg   [31:0] grp_fu_2130_p1;
reg    grp_fu_2130_ce;
wire   [31:0] grp_fu_2134_p2;
reg   [31:0] grp_fu_2134_p0;
reg   [31:0] grp_fu_2134_p1;
reg    grp_fu_2134_ce;
reg   [31:0] grp_fu_2138_p0;
reg   [31:0] grp_fu_2138_p1;
reg    grp_fu_2138_ce;
reg   [31:0] grp_fu_2142_p0;
reg   [31:0] grp_fu_2142_p1;
reg    grp_fu_2142_ce;
reg   [31:0] grp_fu_2146_p0;
reg   [31:0] grp_fu_2146_p1;
reg    grp_fu_2146_ce;
reg   [31:0] grp_fu_2150_p0;
reg   [31:0] grp_fu_2150_p1;
reg    grp_fu_2150_ce;
reg   [31:0] grp_fu_2154_p0;
reg   [31:0] grp_fu_2154_p1;
reg    grp_fu_2154_ce;
reg   [31:0] grp_fu_2158_p0;
reg   [31:0] grp_fu_2158_p1;
reg    grp_fu_2158_ce;
reg   [25:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
reg    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
reg    ap_ST_fsm_state17_blk;
wire    ap_ST_fsm_state18_blk;
wire    ap_ST_fsm_state19_blk;
wire    ap_ST_fsm_state20_blk;
wire    ap_ST_fsm_state21_blk;
reg    ap_ST_fsm_state22_blk;
wire    ap_ST_fsm_state23_blk;
wire    ap_ST_fsm_state24_blk;
wire    ap_ST_fsm_state25_blk;
reg    ap_ST_fsm_state26_blk;
wire   [15:0] grp_fu_1234_p00;
wire   [15:0] grp_fu_1242_p00;
wire   [15:0] grp_fu_1250_p00;
wire   [15:0] grp_fu_1258_p00;
wire   [13:0] mul_ln101_fu_1183_p00;
wire   [13:0] mul_ln114_fu_1076_p00;
wire   [13:0] mul_ln127_fu_961_p00;
wire   [13:0] mul_ln140_fu_854_p00;
wire   [13:0] mul_ln34_fu_824_p00;
wire   [13:0] mul_ln49_fu_1168_p00;
wire   [13:0] mul_ln62_fu_1061_p00;
wire   [13:0] mul_ln75_fu_946_p00;
wire   [13:0] mul_ln88_fu_839_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 26'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_2_fu_501_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_24_fu_530_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_25_fu_559_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_26_fu_588_ap_start_reg = 1'b0;
#0 phi_mul_fu_172 = 16'd0;
#0 v5_fu_176 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_2 grp_kernel_2mm_node0_Pipeline_label_2_fu_501(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_ap_ready),.v229_3_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_3_address0),.v229_3_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_3_ce0),.v229_3_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_3_we0),.v229_3_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_3_d0),.v229_3_q0(v229_3_q0),.v229_3_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_3_address1),.v229_3_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_3_ce1),.v229_3_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_3_we1),.v229_3_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_3_d1),.v229_3_q1(v229_3_q1),.v229_2_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_2_address0),.v229_2_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_2_ce0),.v229_2_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_2_we0),.v229_2_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_2_d0),.v229_2_q0(v229_2_q0),.v229_2_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_2_address1),.v229_2_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_2_ce1),.v229_2_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_2_we1),.v229_2_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_2_d1),.v229_2_q1(v229_2_q1),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_0_d1),.v229_0_q1(v229_0_q1),.phi_mul(phi_mul_load_reg_1608),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v228_ce1),.v228_q1(v228_q1),.mul_ln34(mul_ln34_reg_1768),.mul_ln88(mul_ln88_reg_1773),.mul_ln140(mul_ln140_reg_1778),.v4(v4),.cmp11(cmp11_reg_1669),.v11(v11_reg_1794),.v24(v24_reg_1799),.v35(v35_reg_1804),.v46(v46_reg_1809),.v57(v57_reg_1814),.v68(v68_reg_1819),.v79(v79_reg_1824),.v90(v90_reg_1829),.v101(v101_reg_1834),.grp_fu_2126_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2126_p_din0),.grp_fu_2126_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2126_p_din1),.grp_fu_2126_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2126_p_opcode),.grp_fu_2126_p_dout0(grp_fu_144_p_dout0),.grp_fu_2126_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2126_p_ce),.grp_fu_2130_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2130_p_din0),.grp_fu_2130_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2130_p_din1),.grp_fu_2130_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2130_p_opcode),.grp_fu_2130_p_dout0(grp_fu_2130_p2),.grp_fu_2130_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2130_p_ce),.grp_fu_2134_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2134_p_din0),.grp_fu_2134_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2134_p_din1),.grp_fu_2134_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2134_p_opcode),.grp_fu_2134_p_dout0(grp_fu_2134_p2),.grp_fu_2134_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2134_p_ce),.grp_fu_2138_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2138_p_din0),.grp_fu_2138_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2138_p_din1),.grp_fu_2138_p_dout0(grp_fu_148_p_dout0),.grp_fu_2138_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2138_p_ce),.grp_fu_2142_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2142_p_din0),.grp_fu_2142_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2142_p_din1),.grp_fu_2142_p_dout0(grp_fu_152_p_dout0),.grp_fu_2142_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2142_p_ce),.grp_fu_2146_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2146_p_din0),.grp_fu_2146_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2146_p_din1),.grp_fu_2146_p_dout0(grp_fu_156_p_dout0),.grp_fu_2146_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2146_p_ce),.grp_fu_2150_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2150_p_din0),.grp_fu_2150_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2150_p_din1),.grp_fu_2150_p_dout0(grp_fu_160_p_dout0),.grp_fu_2150_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2150_p_ce),.grp_fu_2154_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2154_p_din0),.grp_fu_2154_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2154_p_din1),.grp_fu_2154_p_dout0(grp_fu_164_p_dout0),.grp_fu_2154_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2154_p_ce),.grp_fu_2158_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2158_p_din0),.grp_fu_2158_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2158_p_din1),.grp_fu_2158_p_dout0(grp_fu_168_p_dout0),.grp_fu_2158_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2158_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_24 grp_kernel_2mm_node0_Pipeline_label_24_fu_530(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_ap_ready),.v229_3_address0(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_3_address0),.v229_3_ce0(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_3_ce0),.v229_3_we0(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_3_we0),.v229_3_d0(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_3_d0),.v229_3_q0(v229_3_q0),.v229_3_address1(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_3_address1),.v229_3_ce1(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_3_ce1),.v229_3_we1(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_3_we1),.v229_3_d1(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_3_d1),.v229_3_q1(v229_3_q1),.v229_2_address0(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_2_address0),.v229_2_ce0(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_2_ce0),.v229_2_we0(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_2_we0),.v229_2_d0(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_2_d0),.v229_2_q0(v229_2_q0),.v229_2_address1(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_2_address1),.v229_2_ce1(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_2_ce1),.v229_2_we1(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_2_we1),.v229_2_d1(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_2_d1),.v229_2_q1(v229_2_q1),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_0_d1),.v229_0_q1(v229_0_q1),.phi_mul(phi_mul_load_reg_1608),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v228_ce1),.v228_q1(v228_q1),.mul_ln75(mul_ln75_reg_1869),.mul_ln127(mul_ln127_reg_1874),.mul_ln140(mul_ln140_reg_1778),.v4(v4),.cmp11(cmp11_reg_1669),.v11_1(v11_1_reg_1890),.v24_1(v24_1_reg_1895),.v35_1(v35_1_reg_1900),.v46_1(v46_1_reg_1905),.v57_1(v57_1_reg_1910),.v68_1(v68_1_reg_1915),.v79_1(v79_1_reg_1920),.v90_1(v90_1_reg_1925),.v101_1(v101_1_reg_1930),.grp_fu_2126_p_din0(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2126_p_din0),.grp_fu_2126_p_din1(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2126_p_din1),.grp_fu_2126_p_opcode(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2126_p_opcode),.grp_fu_2126_p_dout0(grp_fu_144_p_dout0),.grp_fu_2126_p_ce(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2126_p_ce),.grp_fu_2130_p_din0(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2130_p_din0),.grp_fu_2130_p_din1(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2130_p_din1),.grp_fu_2130_p_opcode(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2130_p_opcode),.grp_fu_2130_p_dout0(grp_fu_2130_p2),.grp_fu_2130_p_ce(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2130_p_ce),.grp_fu_2134_p_din0(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2134_p_din0),.grp_fu_2134_p_din1(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2134_p_din1),.grp_fu_2134_p_opcode(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2134_p_opcode),.grp_fu_2134_p_dout0(grp_fu_2134_p2),.grp_fu_2134_p_ce(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2134_p_ce),.grp_fu_2138_p_din0(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2138_p_din0),.grp_fu_2138_p_din1(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2138_p_din1),.grp_fu_2138_p_dout0(grp_fu_148_p_dout0),.grp_fu_2138_p_ce(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2138_p_ce),.grp_fu_2142_p_din0(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2142_p_din0),.grp_fu_2142_p_din1(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2142_p_din1),.grp_fu_2142_p_dout0(grp_fu_152_p_dout0),.grp_fu_2142_p_ce(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2142_p_ce),.grp_fu_2146_p_din0(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2146_p_din0),.grp_fu_2146_p_din1(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2146_p_din1),.grp_fu_2146_p_dout0(grp_fu_156_p_dout0),.grp_fu_2146_p_ce(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2146_p_ce),.grp_fu_2150_p_din0(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2150_p_din0),.grp_fu_2150_p_din1(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2150_p_din1),.grp_fu_2150_p_dout0(grp_fu_160_p_dout0),.grp_fu_2150_p_ce(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2150_p_ce),.grp_fu_2154_p_din0(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2154_p_din0),.grp_fu_2154_p_din1(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2154_p_din1),.grp_fu_2154_p_dout0(grp_fu_164_p_dout0),.grp_fu_2154_p_ce(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2154_p_ce),.grp_fu_2158_p_din0(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2158_p_din0),.grp_fu_2158_p_din1(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2158_p_din1),.grp_fu_2158_p_dout0(grp_fu_168_p_dout0),.grp_fu_2158_p_ce(grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2158_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_25 grp_kernel_2mm_node0_Pipeline_label_25_fu_559(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_ap_ready),.v229_3_address0(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_3_address0),.v229_3_ce0(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_3_ce0),.v229_3_we0(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_3_we0),.v229_3_d0(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_3_d0),.v229_3_q0(v229_3_q0),.v229_3_address1(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_3_address1),.v229_3_ce1(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_3_ce1),.v229_3_we1(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_3_we1),.v229_3_d1(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_3_d1),.v229_3_q1(v229_3_q1),.v229_2_address0(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_2_address0),.v229_2_ce0(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_2_ce0),.v229_2_we0(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_2_we0),.v229_2_d0(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_2_d0),.v229_2_q0(v229_2_q0),.v229_2_address1(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_2_address1),.v229_2_ce1(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_2_ce1),.v229_2_we1(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_2_we1),.v229_2_d1(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_2_d1),.v229_2_q1(v229_2_q1),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_0_d1),.v229_0_q1(v229_0_q1),.phi_mul(phi_mul_load_reg_1608),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v228_ce1),.v228_q1(v228_q1),.mul_ln62(mul_ln62_reg_1975),.mul_ln114(mul_ln114_reg_1980),.mul_ln127(mul_ln127_reg_1874),.v4(v4),.cmp11(cmp11_reg_1669),.v11_2(v11_2_reg_1996),.v24_2(v24_2_reg_2001),.v35_2(v35_2_reg_2006),.v46_2(v46_2_reg_2011),.v57_2(v57_2_reg_2016),.v68_2(v68_2_reg_2021),.v79_2(v79_2_reg_2026),.v90_2(v90_2_reg_2031),.v101_2(v101_2_reg_2036),.grp_fu_2126_p_din0(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2126_p_din0),.grp_fu_2126_p_din1(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2126_p_din1),.grp_fu_2126_p_opcode(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2126_p_opcode),.grp_fu_2126_p_dout0(grp_fu_144_p_dout0),.grp_fu_2126_p_ce(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2126_p_ce),.grp_fu_2130_p_din0(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2130_p_din0),.grp_fu_2130_p_din1(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2130_p_din1),.grp_fu_2130_p_opcode(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2130_p_opcode),.grp_fu_2130_p_dout0(grp_fu_2130_p2),.grp_fu_2130_p_ce(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2130_p_ce),.grp_fu_2134_p_din0(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2134_p_din0),.grp_fu_2134_p_din1(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2134_p_din1),.grp_fu_2134_p_opcode(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2134_p_opcode),.grp_fu_2134_p_dout0(grp_fu_2134_p2),.grp_fu_2134_p_ce(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2134_p_ce),.grp_fu_2138_p_din0(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2138_p_din0),.grp_fu_2138_p_din1(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2138_p_din1),.grp_fu_2138_p_dout0(grp_fu_148_p_dout0),.grp_fu_2138_p_ce(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2138_p_ce),.grp_fu_2142_p_din0(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2142_p_din0),.grp_fu_2142_p_din1(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2142_p_din1),.grp_fu_2142_p_dout0(grp_fu_152_p_dout0),.grp_fu_2142_p_ce(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2142_p_ce),.grp_fu_2146_p_din0(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2146_p_din0),.grp_fu_2146_p_din1(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2146_p_din1),.grp_fu_2146_p_dout0(grp_fu_156_p_dout0),.grp_fu_2146_p_ce(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2146_p_ce),.grp_fu_2150_p_din0(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2150_p_din0),.grp_fu_2150_p_din1(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2150_p_din1),.grp_fu_2150_p_dout0(grp_fu_160_p_dout0),.grp_fu_2150_p_ce(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2150_p_ce),.grp_fu_2154_p_din0(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2154_p_din0),.grp_fu_2154_p_din1(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2154_p_din1),.grp_fu_2154_p_dout0(grp_fu_164_p_dout0),.grp_fu_2154_p_ce(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2154_p_ce),.grp_fu_2158_p_din0(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2158_p_din0),.grp_fu_2158_p_din1(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2158_p_din1),.grp_fu_2158_p_dout0(grp_fu_168_p_dout0),.grp_fu_2158_p_ce(grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2158_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_26 grp_kernel_2mm_node0_Pipeline_label_26_fu_588(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_ap_ready),.v229_3_address0(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_3_address0),.v229_3_ce0(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_3_ce0),.v229_3_we0(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_3_we0),.v229_3_d0(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_3_d0),.v229_3_q0(v229_3_q0),.v229_3_address1(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_3_address1),.v229_3_ce1(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_3_ce1),.v229_3_we1(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_3_we1),.v229_3_d1(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_3_d1),.v229_3_q1(v229_3_q1),.v229_2_address0(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_2_address0),.v229_2_ce0(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_2_ce0),.v229_2_we0(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_2_we0),.v229_2_d0(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_2_d0),.v229_2_q0(v229_2_q0),.v229_2_address1(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_2_address1),.v229_2_ce1(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_2_ce1),.v229_2_we1(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_2_we1),.v229_2_d1(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_2_d1),.v229_2_q1(v229_2_q1),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_0_d1),.v229_0_q1(v229_0_q1),.phi_mul(phi_mul_load_reg_1608),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v228_ce1),.v228_q1(v228_q1),.mul_ln49(mul_ln49_reg_2071),.mul_ln101(mul_ln101_reg_2076),.mul_ln114(mul_ln114_reg_1980),.v4(v4),.cmp11(cmp11_reg_1669),.v11_3(v11_3_reg_2081),.v24_3(v24_3_reg_2086),.v35_3(v35_3_reg_2091),.v46_3(v46_3_reg_2096),.v57_3(v57_3_reg_2101),.v68_3(v68_3_reg_2106),.v79_3(v79_3_reg_2111),.v90_3(v90_3_reg_2116),.v101_3(v101_3_reg_2121),.grp_fu_2126_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2126_p_din0),.grp_fu_2126_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2126_p_din1),.grp_fu_2126_p_opcode(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2126_p_opcode),.grp_fu_2126_p_dout0(grp_fu_144_p_dout0),.grp_fu_2126_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2126_p_ce),.grp_fu_2130_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2130_p_din0),.grp_fu_2130_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2130_p_din1),.grp_fu_2130_p_opcode(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2130_p_opcode),.grp_fu_2130_p_dout0(grp_fu_2130_p2),.grp_fu_2130_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2130_p_ce),.grp_fu_2134_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2134_p_din0),.grp_fu_2134_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2134_p_din1),.grp_fu_2134_p_opcode(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2134_p_opcode),.grp_fu_2134_p_dout0(grp_fu_2134_p2),.grp_fu_2134_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2134_p_ce),.grp_fu_2138_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2138_p_din0),.grp_fu_2138_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2138_p_din1),.grp_fu_2138_p_dout0(grp_fu_148_p_dout0),.grp_fu_2138_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2138_p_ce),.grp_fu_2142_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2142_p_din0),.grp_fu_2142_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2142_p_din1),.grp_fu_2142_p_dout0(grp_fu_152_p_dout0),.grp_fu_2142_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2142_p_ce),.grp_fu_2146_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2146_p_din0),.grp_fu_2146_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2146_p_din1),.grp_fu_2146_p_dout0(grp_fu_156_p_dout0),.grp_fu_2146_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2146_p_ce),.grp_fu_2150_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2150_p_din0),.grp_fu_2150_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2150_p_din1),.grp_fu_2150_p_dout0(grp_fu_160_p_dout0),.grp_fu_2150_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2150_p_ce),.grp_fu_2154_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2154_p_din0),.grp_fu_2154_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2154_p_din1),.grp_fu_2154_p_dout0(grp_fu_164_p_dout0),.grp_fu_2154_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2154_p_ce),.grp_fu_2158_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2158_p_din0),.grp_fu_2158_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2158_p_din1),.grp_fu_2158_p_dout0(grp_fu_168_p_dout0),.grp_fu_2158_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2158_p_ce));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U250(.din0(mul_ln34_fu_824_p0),.din1(mul_ln34_fu_824_p1),.dout(mul_ln34_fu_824_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U251(.din0(mul_ln88_fu_839_p0),.din1(mul_ln88_fu_839_p1),.dout(mul_ln88_fu_839_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U252(.din0(mul_ln140_fu_854_p0),.din1(mul_ln140_fu_854_p1),.dout(mul_ln140_fu_854_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U253(.din0(mul_ln75_fu_946_p0),.din1(mul_ln75_fu_946_p1),.dout(mul_ln75_fu_946_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U254(.din0(mul_ln127_fu_961_p0),.din1(mul_ln127_fu_961_p1),.dout(mul_ln127_fu_961_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U255(.din0(mul_ln62_fu_1061_p0),.din1(mul_ln62_fu_1061_p1),.dout(mul_ln62_fu_1061_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U256(.din0(mul_ln114_fu_1076_p0),.din1(mul_ln114_fu_1076_p1),.dout(mul_ln114_fu_1076_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U257(.din0(mul_ln49_fu_1168_p0),.din1(mul_ln49_fu_1168_p1),.dout(mul_ln49_fu_1168_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U258(.din0(mul_ln101_fu_1183_p0),.din1(mul_ln101_fu_1183_p1),.dout(mul_ln101_fu_1183_p2));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U259(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1234_p0),.din1(grp_fu_1234_p1),.din2(grp_fu_1234_p2),.ce(1'b1),.dout(grp_fu_1234_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U260(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1242_p0),.din1(grp_fu_1242_p1),.din2(grp_fu_1242_p2),.ce(1'b1),.dout(grp_fu_1242_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U261(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1250_p0),.din1(grp_fu_1250_p1),.din2(grp_fu_1250_p2),.ce(1'b1),.dout(grp_fu_1250_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U262(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1258_p0),.din1(grp_fu_1258_p1),.din2(grp_fu_1258_p2),.ce(1'b1),.dout(grp_fu_1258_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U263(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_489),.din1(grp_fu_1266_p1),.din2(grp_fu_1266_p2),.din3(grp_fu_1266_p3),.ce(1'b1),.dout(grp_fu_1266_p4));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U264(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_489),.din1(grp_fu_1276_p1),.din2(grp_fu_1276_p2),.din3(grp_fu_1276_p3),.ce(1'b1),.dout(grp_fu_1276_p4));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U265(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_489),.din1(grp_fu_1286_p1),.din2(grp_fu_1286_p2),.din3(grp_fu_1286_p3),.ce(1'b1),.dout(grp_fu_1286_p4));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U266(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_489),.din1(grp_fu_1296_p1),.din2(grp_fu_1296_p2),.din3(grp_fu_1296_p3),.ce(1'b1),.dout(grp_fu_1296_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U267(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_489),.din1(grp_fu_1306_p1),.din2(grp_fu_1306_p2),.din3(grp_fu_1306_p3),.ce(1'b1),.dout(grp_fu_1306_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U268(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_489),.din1(grp_fu_1316_p1),.din2(grp_fu_1316_p2),.din3(grp_fu_1316_p3),.ce(1'b1),.dout(grp_fu_1316_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U269(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_489),.din1(grp_fu_1326_p1),.din2(grp_fu_1326_p2),.din3(grp_fu_1326_p3),.ce(1'b1),.dout(grp_fu_1326_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U270(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_489),.din1(grp_fu_1336_p1),.din2(grp_fu_1336_p2),.din3(grp_fu_1336_p3),.ce(1'b1),.dout(grp_fu_1336_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U271(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_489),.din1(grp_fu_1346_p1),.din2(grp_fu_1346_p2),.din3(grp_fu_1346_p3),.ce(1'b1),.dout(grp_fu_1346_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U272(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_489),.din1(grp_fu_1356_p1),.din2(grp_fu_1356_p2),.din3(grp_fu_1356_p3),.ce(1'b1),.dout(grp_fu_1356_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U273(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_489),.din1(grp_fu_1366_p1),.din2(grp_fu_1366_p2),.din3(grp_fu_1366_p3),.ce(grp_fu_1366_ce),.dout(grp_fu_1366_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U274(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_489),.din1(grp_fu_1376_p1),.din2(grp_fu_1376_p2),.din3(grp_fu_1376_p3),.ce(grp_fu_1376_ce),.dout(grp_fu_1376_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U275(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_489),.din1(grp_fu_1386_p1),.din2(grp_fu_1386_p2),.din3(grp_fu_1386_p3),.ce(grp_fu_1386_ce),.dout(grp_fu_1386_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U276(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_489),.din1(grp_fu_1396_p1),.din2(grp_fu_1396_p2),.din3(grp_fu_1396_p3),.ce(grp_fu_1396_ce),.dout(grp_fu_1396_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U277(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_489),.din1(grp_fu_1406_p1),.din2(grp_fu_1406_p2),.din3(grp_fu_1406_p3),.ce(grp_fu_1406_ce),.dout(grp_fu_1406_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U278(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_489),.din1(grp_fu_1416_p1),.din2(grp_fu_1416_p2),.din3(grp_fu_1416_p3),.ce(grp_fu_1416_ce),.dout(grp_fu_1416_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U279(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_489),.din1(grp_fu_1426_p1),.din2(grp_fu_1426_p2),.din3(grp_fu_1426_p3),.ce(grp_fu_1426_ce),.dout(grp_fu_1426_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U280(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_489),.din1(grp_fu_1436_p1),.din2(grp_fu_1436_p2),.din3(grp_fu_1436_p3),.ce(grp_fu_1436_ce),.dout(grp_fu_1436_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U281(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_489),.din1(grp_fu_1446_p1),.din2(grp_fu_1446_p2),.din3(grp_fu_1446_p3),.ce(grp_fu_1446_ce),.dout(grp_fu_1446_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U282(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_489),.din1(grp_fu_1456_p1),.din2(grp_fu_1456_p2),.din3(grp_fu_1456_p3),.ce(grp_fu_1456_ce),.dout(grp_fu_1456_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U283(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_489),.din1(grp_fu_1466_p1),.din2(grp_fu_1466_p2),.din3(grp_fu_1466_p3),.ce(grp_fu_1466_ce),.dout(grp_fu_1466_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U284(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_489),.din1(grp_fu_1476_p1),.din2(grp_fu_1476_p2),.din3(grp_fu_1476_p3),.ce(grp_fu_1476_ce),.dout(grp_fu_1476_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U285(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_489),.din1(grp_fu_1486_p1),.din2(grp_fu_1486_p2),.din3(grp_fu_1486_p3),.ce(grp_fu_1486_ce),.dout(grp_fu_1486_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U286(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_489),.din1(grp_fu_1496_p1),.din2(grp_fu_1496_p2),.din3(grp_fu_1496_p3),.ce(grp_fu_1496_ce),.dout(grp_fu_1496_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U287(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_489),.din1(grp_fu_1506_p1),.din2(grp_fu_1506_p2),.din3(grp_fu_1506_p3),.ce(grp_fu_1506_ce),.dout(grp_fu_1506_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U288(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_489),.din1(grp_fu_1516_p1),.din2(grp_fu_1516_p2),.din3(grp_fu_1516_p3),.ce(grp_fu_1516_ce),.dout(grp_fu_1516_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U289(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_489),.din1(grp_fu_1526_p1),.din2(grp_fu_1526_p2),.din3(grp_fu_1526_p3),.ce(1'b1),.dout(grp_fu_1526_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U290(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_489),.din1(grp_fu_1536_p1),.din2(grp_fu_1536_p2),.din3(grp_fu_1536_p3),.ce(1'b1),.dout(grp_fu_1536_p4));
kernel_2mm_ama_addmuladd_8ns_6ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_6ns_8ns_8ns_16_4_1_U291(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_489),.din1(grp_fu_1546_p1),.din2(grp_fu_1546_p2),.din3(grp_fu_1546_p3),.ce(grp_fu_1546_ce),.dout(grp_fu_1546_p4));
kernel_2mm_ama_addmuladd_8ns_6ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_6ns_8ns_8ns_16_4_1_U292(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_489),.din1(grp_fu_1556_p1),.din2(grp_fu_1556_p2),.din3(grp_fu_1556_p3),.ce(grp_fu_1556_ce),.dout(grp_fu_1556_p4));
kernel_2mm_ama_addmuladd_8ns_6ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_6ns_8ns_8ns_16_4_1_U293(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_489),.din1(grp_fu_1566_p1),.din2(grp_fu_1566_p2),.din3(grp_fu_1566_p3),.ce(grp_fu_1566_ce),.dout(grp_fu_1566_p4));
kernel_2mm_ama_addmuladd_8ns_6ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_6ns_8ns_8ns_16_4_1_U294(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_489),.din1(grp_fu_1576_p1),.din2(grp_fu_1576_p2),.din3(grp_fu_1576_p3),.ce(grp_fu_1576_ce),.dout(grp_fu_1576_p4));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U296(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2130_p0),.din1(grp_fu_2130_p1),.ce(grp_fu_2130_ce),.dout(grp_fu_2130_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U297(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2134_p0),.din1(grp_fu_2134_p1),.ce(grp_fu_2134_ce),.dout(grp_fu_2134_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_24_fu_530_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node0_Pipeline_label_24_fu_530_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_24_fu_530_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_24_fu_530_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_25_fu_559_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state21)) begin
            grp_kernel_2mm_node0_Pipeline_label_25_fu_559_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_25_fu_559_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_25_fu_559_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_26_fu_588_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state25)) begin
            grp_kernel_2mm_node0_Pipeline_label_26_fu_588_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_26_fu_588_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_26_fu_588_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_2_fu_501_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_501_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_501_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_501_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_fu_172 <= 16'd0;
    end else if (((icmp_ln32_fu_701_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_mul_fu_172 <= add_ln31_1_reg_1616;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_176 <= 8'd0;
    end else if (((icmp_ln32_fu_701_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v5_fu_176 <= add_ln31_reg_1624;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln31_fu_679_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v6_reg_489 <= 8'd0;
    end else if (((grp_kernel_2mm_node0_Pipeline_label_26_fu_588_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26))) begin
        v6_reg_489 <= add_ln32_3_reg_1690;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln31_1_reg_1616 <= add_ln31_1_fu_673_p2;
        add_ln31_reg_1624 <= add_ln31_fu_685_p2;
        cmp11_reg_1669 <= cmp11_fu_695_p2;
        phi_mul_load_reg_1608 <= phi_mul_fu_172;
        zext_ln31_reg_1629[7 : 0] <= zext_ln31_fu_691_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_3_reg_1690 <= add_ln32_3_fu_733_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        lshr_ln_reg_1695 <= {{v6_reg_489[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        mul_ln101_reg_2076 <= mul_ln101_fu_1183_p2;
        mul_ln49_reg_2071 <= mul_ln49_fu_1168_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        mul_ln114_reg_1980 <= mul_ln114_fu_1076_p2;
        mul_ln62_reg_1975 <= mul_ln62_fu_1061_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln127_reg_1874 <= mul_ln127_fu_961_p2;
        mul_ln75_reg_1869 <= mul_ln75_fu_946_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        mul_ln140_reg_1778 <= mul_ln140_fu_854_p2;
        mul_ln34_reg_1768 <= mul_ln34_fu_824_p2;
        mul_ln88_reg_1773 <= mul_ln88_fu_839_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7))) begin
        reg_617 <= v224_q1;
        reg_621 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_625 <= v224_q1;
        reg_629 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9))) begin
        reg_633 <= v224_q1;
        reg_637 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10))) begin
        reg_641 <= v224_q1;
        reg_645 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        reg_649 <= v224_q1;
        reg_653 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        v101_1_reg_1930 <= v101_1_fu_1015_p1;
        v11_1_reg_1890 <= v11_1_fu_975_p1;
        v24_1_reg_1895 <= v24_1_fu_980_p1;
        v35_1_reg_1900 <= v35_1_fu_985_p1;
        v46_1_reg_1905 <= v46_1_fu_990_p1;
        v57_1_reg_1910 <= v57_1_fu_995_p1;
        v68_1_reg_1915 <= v68_1_fu_1000_p1;
        v79_1_reg_1920 <= v79_1_fu_1005_p1;
        v90_1_reg_1925 <= v90_1_fu_1010_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v101_2_reg_2036 <= v101_2_fu_1130_p1;
        v11_2_reg_1996 <= v11_2_fu_1090_p1;
        v24_2_reg_2001 <= v24_2_fu_1095_p1;
        v35_2_reg_2006 <= v35_2_fu_1100_p1;
        v46_2_reg_2011 <= v46_2_fu_1105_p1;
        v57_2_reg_2016 <= v57_2_fu_1110_p1;
        v68_2_reg_2021 <= v68_2_fu_1115_p1;
        v79_2_reg_2026 <= v79_2_fu_1120_p1;
        v90_2_reg_2031 <= v90_2_fu_1125_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        v101_3_reg_2121 <= v101_3_fu_1229_p1;
        v11_3_reg_2081 <= v11_3_fu_1189_p1;
        v24_3_reg_2086 <= v24_3_fu_1194_p1;
        v35_3_reg_2091 <= v35_3_fu_1199_p1;
        v46_3_reg_2096 <= v46_3_fu_1204_p1;
        v57_3_reg_2101 <= v57_3_fu_1209_p1;
        v68_3_reg_2106 <= v68_3_fu_1214_p1;
        v79_3_reg_2111 <= v79_3_fu_1219_p1;
        v90_3_reg_2116 <= v90_3_fu_1224_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        v101_reg_1834 <= v101_fu_908_p1;
        v11_reg_1794 <= v11_fu_868_p1;
        v24_reg_1799 <= v24_fu_873_p1;
        v35_reg_1804 <= v35_fu_878_p1;
        v46_reg_1809 <= v46_fu_883_p1;
        v57_reg_1814 <= v57_fu_888_p1;
        v68_reg_1819 <= v68_fu_893_p1;
        v79_reg_1824 <= v79_fu_898_p1;
        v90_reg_1829 <= v90_fu_903_p1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_501_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
    end
end
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_24_fu_530_ap_done == 1'b0)) begin
        ap_ST_fsm_state17_blk = 1'b1;
    end else begin
        ap_ST_fsm_state17_blk = 1'b0;
    end
end
assign ap_ST_fsm_state18_blk = 1'b0;
assign ap_ST_fsm_state19_blk = 1'b0;
always @ (*) begin
    if ((1'b1 == ap_block_state1)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state20_blk = 1'b0;
assign ap_ST_fsm_state21_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_25_fu_559_ap_done == 1'b0)) begin
        ap_ST_fsm_state22_blk = 1'b1;
    end else begin
        ap_ST_fsm_state22_blk = 1'b0;
    end
end
assign ap_ST_fsm_state23_blk = 1'b0;
assign ap_ST_fsm_state24_blk = 1'b0;
assign ap_ST_fsm_state25_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_26_fu_588_ap_done == 1'b0)) begin
        ap_ST_fsm_state26_blk = 1'b1;
    end else begin
        ap_ST_fsm_state26_blk = 1'b0;
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
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln31_fu_679_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
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
    if (((icmp_ln31_fu_679_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_501_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1366_ce = 1'b1;
    end else begin
        grp_fu_1366_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_501_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1376_ce = 1'b1;
    end else begin
        grp_fu_1376_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_501_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1386_ce = 1'b1;
    end else begin
        grp_fu_1386_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_501_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1396_ce = 1'b1;
    end else begin
        grp_fu_1396_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_501_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1406_ce = 1'b1;
    end else begin
        grp_fu_1406_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_501_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1416_ce = 1'b1;
    end else begin
        grp_fu_1416_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_501_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1426_ce = 1'b1;
    end else begin
        grp_fu_1426_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_501_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1436_ce = 1'b1;
    end else begin
        grp_fu_1436_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node0_Pipeline_label_24_fu_530_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1446_ce = 1'b1;
    end else begin
        grp_fu_1446_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node0_Pipeline_label_24_fu_530_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1456_ce = 1'b1;
    end else begin
        grp_fu_1456_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node0_Pipeline_label_24_fu_530_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1466_ce = 1'b1;
    end else begin
        grp_fu_1466_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node0_Pipeline_label_24_fu_530_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1476_ce = 1'b1;
    end else begin
        grp_fu_1476_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node0_Pipeline_label_24_fu_530_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1486_ce = 1'b1;
    end else begin
        grp_fu_1486_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node0_Pipeline_label_24_fu_530_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1496_ce = 1'b1;
    end else begin
        grp_fu_1496_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node0_Pipeline_label_24_fu_530_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1506_ce = 1'b1;
    end else begin
        grp_fu_1506_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node0_Pipeline_label_24_fu_530_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1516_ce = 1'b1;
    end else begin
        grp_fu_1516_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state21) | ((grp_kernel_2mm_node0_Pipeline_label_25_fu_559_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22)))) begin
        grp_fu_1546_ce = 1'b1;
    end else begin
        grp_fu_1546_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state21) | ((grp_kernel_2mm_node0_Pipeline_label_25_fu_559_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22)))) begin
        grp_fu_1556_ce = 1'b1;
    end else begin
        grp_fu_1556_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state21) | ((grp_kernel_2mm_node0_Pipeline_label_25_fu_559_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22)))) begin
        grp_fu_1566_ce = 1'b1;
    end else begin
        grp_fu_1566_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state21) | ((grp_kernel_2mm_node0_Pipeline_label_25_fu_559_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22)))) begin
        grp_fu_1576_ce = 1'b1;
    end else begin
        grp_fu_1576_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2126_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2126_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2126_ce = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2126_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2126_ce = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2126_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2126_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2126_p_ce;
    end else begin
        grp_fu_2126_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2126_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2126_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2126_p0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2126_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2126_p0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2126_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2126_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2126_p_din0;
    end else begin
        grp_fu_2126_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2126_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2126_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2126_p1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2126_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2126_p1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2126_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2126_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2126_p_din1;
    end else begin
        grp_fu_2126_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2130_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2130_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2130_ce = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2130_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2130_ce = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2130_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2130_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2130_p_ce;
    end else begin
        grp_fu_2130_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2130_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2130_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2130_p0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2130_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2130_p0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2130_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2130_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2130_p_din0;
    end else begin
        grp_fu_2130_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2130_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2130_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2130_p1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2130_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2130_p1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2130_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2130_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2130_p_din1;
    end else begin
        grp_fu_2130_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2134_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2134_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2134_ce = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2134_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2134_ce = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2134_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2134_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2134_p_ce;
    end else begin
        grp_fu_2134_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2134_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2134_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2134_p0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2134_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2134_p0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2134_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2134_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2134_p_din0;
    end else begin
        grp_fu_2134_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2134_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2134_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2134_p1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2134_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2134_p1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2134_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2134_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2134_p_din1;
    end else begin
        grp_fu_2134_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2138_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2138_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2138_ce = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2138_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2138_ce = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2138_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2138_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2138_p_ce;
    end else begin
        grp_fu_2138_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2138_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2138_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2138_p0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2138_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2138_p0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2138_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2138_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2138_p_din0;
    end else begin
        grp_fu_2138_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2138_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2138_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2138_p1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2138_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2138_p1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2138_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2138_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2138_p_din1;
    end else begin
        grp_fu_2138_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2142_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2142_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2142_ce = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2142_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2142_ce = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2142_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2142_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2142_p_ce;
    end else begin
        grp_fu_2142_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2142_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2142_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2142_p0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2142_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2142_p0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2142_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2142_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2142_p_din0;
    end else begin
        grp_fu_2142_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2142_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2142_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2142_p1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2142_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2142_p1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2142_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2142_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2142_p_din1;
    end else begin
        grp_fu_2142_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2146_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2146_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2146_ce = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2146_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2146_ce = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2146_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2146_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2146_p_ce;
    end else begin
        grp_fu_2146_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2146_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2146_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2146_p0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2146_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2146_p0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2146_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2146_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2146_p_din0;
    end else begin
        grp_fu_2146_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2146_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2146_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2146_p1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2146_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2146_p1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2146_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2146_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2146_p_din1;
    end else begin
        grp_fu_2146_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2150_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2150_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2150_ce = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2150_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2150_ce = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2150_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2150_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2150_p_ce;
    end else begin
        grp_fu_2150_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2150_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2150_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2150_p0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2150_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2150_p0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2150_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2150_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2150_p_din0;
    end else begin
        grp_fu_2150_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2150_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2150_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2150_p1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2150_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2150_p1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2150_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2150_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2150_p_din1;
    end else begin
        grp_fu_2150_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2154_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2154_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2154_ce = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2154_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2154_ce = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2154_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2154_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2154_p_ce;
    end else begin
        grp_fu_2154_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2154_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2154_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2154_p0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2154_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2154_p0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2154_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2154_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2154_p_din0;
    end else begin
        grp_fu_2154_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2154_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2154_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2154_p1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2154_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2154_p1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2154_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2154_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2154_p_din1;
    end else begin
        grp_fu_2154_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2158_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2158_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2158_ce = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2158_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2158_ce = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2158_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2158_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2158_p_ce;
    end else begin
        grp_fu_2158_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2158_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2158_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2158_p0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2158_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2158_p0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2158_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2158_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2158_p_din0;
    end else begin
        grp_fu_2158_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2158_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_grp_fu_2158_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2158_p1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_grp_fu_2158_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2158_p1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_grp_fu_2158_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2158_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_grp_fu_2158_p_din1;
    end else begin
        grp_fu_2158_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v224_address0_local = p_cast794_fu_1155_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v224_address0_local = p_cast792_fu_1147_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v224_address0_local = p_cast790_fu_1139_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        v224_address0_local = p_cast788_fu_1086_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v224_address0_local = p_cast786_fu_1048_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_address0_local = p_cast784_fu_1040_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v224_address0_local = p_cast782_fu_1032_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v224_address0_local = p_cast780_fu_1024_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_address0_local = p_cast778_fu_971_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_address0_local = p_cast776_fu_933_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_address0_local = p_cast774_fu_925_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_address0_local = p_cast772_fu_917_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_address0_local = p_cast770_fu_864_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address0_local = p_cast768_fu_817_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address0_local = p_cast766_fu_809_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address0_local = p_cast764_fu_801_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address0_local = p_cast762_fu_793_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_address0_local = p_cast_fu_785_p1;
    end else begin
        v224_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v224_address1_local = p_cast793_fu_1151_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v224_address1_local = p_cast791_fu_1143_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v224_address1_local = p_cast789_fu_1135_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        v224_address1_local = p_cast787_fu_1082_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v224_address1_local = p_cast785_fu_1044_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_address1_local = p_cast783_fu_1036_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v224_address1_local = p_cast781_fu_1028_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v224_address1_local = p_cast779_fu_1020_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_address1_local = p_cast777_fu_967_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_address1_local = p_cast775_fu_929_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_address1_local = p_cast773_fu_921_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_address1_local = p_cast771_fu_913_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_address1_local = p_cast769_fu_860_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address1_local = p_cast767_fu_813_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address1_local = p_cast765_fu_805_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address1_local = p_cast763_fu_797_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address1_local = p_cast761_fu_789_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_address1_local = p_cast760_fu_781_p1;
    end else begin
        v224_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | ((grp_kernel_2mm_node0_Pipeline_label_25_fu_559_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22)) | ((grp_kernel_2mm_node0_Pipeline_label_24_fu_530_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_501_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        v224_ce0_local = 1'b1;
    end else begin
        v224_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | ((grp_kernel_2mm_node0_Pipeline_label_25_fu_559_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22)) | ((grp_kernel_2mm_node0_Pipeline_label_24_fu_530_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_501_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        v224_ce1_local = 1'b1;
    end else begin
        v224_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v228_address0;
    end else begin
        v228_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v228_address1;
    end else begin
        v228_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v228_ce0;
    end else begin
        v228_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v228_ce1;
    end else begin
        v228_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_0_address0;
    end else begin
        v229_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_0_address1;
    end else begin
        v229_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_0_ce0;
    end else begin
        v229_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_0_ce1;
    end else begin
        v229_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_0_d0;
    end else begin
        v229_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_0_d1;
    end else begin
        v229_0_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_0_we0;
    end else begin
        v229_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_0_we1;
    end else begin
        v229_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_1_address0;
    end else begin
        v229_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_1_address1;
    end else begin
        v229_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_1_ce0;
    end else begin
        v229_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_1_ce1;
    end else begin
        v229_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_1_d0;
    end else begin
        v229_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_1_d1;
    end else begin
        v229_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_1_we0;
    end else begin
        v229_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_1_we1;
    end else begin
        v229_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_2_address0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_2_address0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_2_address0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_2_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_2_address0;
    end else begin
        v229_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_2_address1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_2_address1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_2_address1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_2_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_2_address1;
    end else begin
        v229_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_2_ce0;
    end else begin
        v229_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_2_ce1;
    end else begin
        v229_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_2_d0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_2_d0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_2_d0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_2_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_2_d0;
    end else begin
        v229_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_2_d1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_2_d1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_2_d1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_2_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_2_d1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_2_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_2_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_2_d1;
    end else begin
        v229_2_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_2_we0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_2_we0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_2_we0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_2_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_2_we0;
    end else begin
        v229_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_2_we1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_2_we1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_2_we1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_2_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_2_we1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_2_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_2_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_2_we1;
    end else begin
        v229_2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_3_address0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_3_address0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_3_address0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_3_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_3_address0;
    end else begin
        v229_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_3_address1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_3_address1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_3_address1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_3_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_3_address1;
    end else begin
        v229_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_3_ce0;
    end else begin
        v229_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_3_ce1;
    end else begin
        v229_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_3_d0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_3_d0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_3_d0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_3_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_3_d0;
    end else begin
        v229_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_3_d1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_3_d1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_3_d1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_3_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_3_d1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_3_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_3_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_3_d1;
    end else begin
        v229_3_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_3_we0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_3_we0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_3_we0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_3_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_3_we0;
    end else begin
        v229_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_3_we1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_v229_3_we1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_3_we1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_v229_3_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_3_we1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_v229_3_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_3_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_v229_3_we1;
    end else begin
        v229_3_we1 = 1'b0;
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
            if (((icmp_ln31_fu_679_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln32_fu_701_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_501_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
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
            if (((grp_kernel_2mm_node0_Pipeline_label_24_fu_530_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_25_fu_559_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
                ap_NS_fsm = ap_ST_fsm_state23;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_26_fu_588_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state26;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln31_1_fu_673_p2 = (phi_mul_fu_172 + 16'd220);
assign add_ln31_fu_685_p2 = (v5_fu_176 + 8'd1);
assign add_ln32_3_fu_733_p2 = (v6_reg_489 + 8'd36);
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
assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_state25 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_state26 = ap_CS_fsm[32'd25];
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
assign cmp11_fu_695_p2 = ((v5_fu_176 == 8'd0) ? 1'b1 : 1'b0);
assign empty_101_fu_937_p2 = (lshr_ln_reg_1695 + 6'd3);
assign empty_114_fu_952_p2 = (lshr_ln_reg_1695 + 6'd4);
assign empty_126_fu_1052_p2 = (lshr_ln_reg_1695 + 6'd5);
assign empty_139_fu_1067_p2 = (lshr_ln_reg_1695 + 6'd6);
assign empty_151_fu_1159_p2 = (lshr_ln_reg_1695 + 6'd7);
assign empty_164_fu_1174_p2 = (lshr_ln_reg_1695 + 6'd8);
assign empty_76_fu_830_p2 = (lshr_ln_reg_1695 + 6'd1);
assign empty_89_fu_845_p2 = (lshr_ln_reg_1695 + 6'd2);
assign grp_fu_1234_p0 = grp_fu_1234_p00;
assign grp_fu_1234_p00 = v6_reg_489;
assign grp_fu_1234_p1 = 16'd190;
assign grp_fu_1234_p2 = zext_ln31_reg_1629;
assign grp_fu_1242_p0 = grp_fu_1242_p00;
assign grp_fu_1242_p00 = tmp_s_fu_721_p3;
assign grp_fu_1242_p1 = 16'd190;
assign grp_fu_1242_p2 = zext_ln31_reg_1629;
assign grp_fu_1250_p0 = grp_fu_1250_p00;
assign grp_fu_1250_p00 = tmp_3_fu_757_p3;
assign grp_fu_1250_p1 = 16'd190;
assign grp_fu_1250_p2 = zext_ln31_reg_1629;
assign grp_fu_1258_p0 = grp_fu_1258_p00;
assign grp_fu_1258_p00 = tmp_4_fu_769_p3;
assign grp_fu_1258_p1 = 16'd190;
assign grp_fu_1258_p2 = zext_ln31_reg_1629;
assign grp_fu_1266_p1 = 8'd4;
assign grp_fu_1266_p2 = 16'd190;
assign grp_fu_1266_p3 = zext_ln31_reg_1629;
assign grp_fu_1276_p1 = 8'd5;
assign grp_fu_1276_p2 = 16'd190;
assign grp_fu_1276_p3 = zext_ln31_reg_1629;
assign grp_fu_1286_p1 = 8'd6;
assign grp_fu_1286_p2 = 16'd190;
assign grp_fu_1286_p3 = zext_ln31_reg_1629;
assign grp_fu_1296_p1 = 8'd7;
assign grp_fu_1296_p2 = 16'd190;
assign grp_fu_1296_p3 = zext_ln31_reg_1629;
assign grp_fu_1306_p1 = 8'd8;
assign grp_fu_1306_p2 = 16'd190;
assign grp_fu_1306_p3 = zext_ln31_reg_1629;
assign grp_fu_1316_p1 = 8'd9;
assign grp_fu_1316_p2 = 16'd190;
assign grp_fu_1316_p3 = zext_ln31_reg_1629;
assign grp_fu_1326_p1 = 8'd10;
assign grp_fu_1326_p2 = 16'd190;
assign grp_fu_1326_p3 = zext_ln31_reg_1629;
assign grp_fu_1336_p1 = 8'd11;
assign grp_fu_1336_p2 = 16'd190;
assign grp_fu_1336_p3 = zext_ln31_reg_1629;
assign grp_fu_1346_p1 = 8'd12;
assign grp_fu_1346_p2 = 16'd190;
assign grp_fu_1346_p3 = zext_ln31_reg_1629;
assign grp_fu_1356_p1 = 8'd13;
assign grp_fu_1356_p2 = 16'd190;
assign grp_fu_1356_p3 = zext_ln31_reg_1629;
assign grp_fu_1366_p1 = 8'd14;
assign grp_fu_1366_p2 = 16'd190;
assign grp_fu_1366_p3 = zext_ln31_reg_1629;
assign grp_fu_1376_p1 = 8'd15;
assign grp_fu_1376_p2 = 16'd190;
assign grp_fu_1376_p3 = zext_ln31_reg_1629;
assign grp_fu_1386_p1 = 8'd16;
assign grp_fu_1386_p2 = 16'd190;
assign grp_fu_1386_p3 = zext_ln31_reg_1629;
assign grp_fu_1396_p1 = 8'd17;
assign grp_fu_1396_p2 = 16'd190;
assign grp_fu_1396_p3 = zext_ln31_reg_1629;
assign grp_fu_1406_p1 = 8'd18;
assign grp_fu_1406_p2 = 16'd190;
assign grp_fu_1406_p3 = zext_ln31_reg_1629;
assign grp_fu_1416_p1 = 8'd19;
assign grp_fu_1416_p2 = 16'd190;
assign grp_fu_1416_p3 = zext_ln31_reg_1629;
assign grp_fu_1426_p1 = 8'd20;
assign grp_fu_1426_p2 = 16'd190;
assign grp_fu_1426_p3 = zext_ln31_reg_1629;
assign grp_fu_1436_p1 = 8'd21;
assign grp_fu_1436_p2 = 16'd190;
assign grp_fu_1436_p3 = zext_ln31_reg_1629;
assign grp_fu_1446_p1 = 8'd22;
assign grp_fu_1446_p2 = 16'd190;
assign grp_fu_1446_p3 = zext_ln31_reg_1629;
assign grp_fu_144_p_ce = grp_fu_2126_ce;
assign grp_fu_144_p_din0 = grp_fu_2126_p0;
assign grp_fu_144_p_din1 = grp_fu_2126_p1;
assign grp_fu_144_p_opcode = 2'd0;
assign grp_fu_1456_p1 = 8'd23;
assign grp_fu_1456_p2 = 16'd190;
assign grp_fu_1456_p3 = zext_ln31_reg_1629;
assign grp_fu_1466_p1 = 8'd24;
assign grp_fu_1466_p2 = 16'd190;
assign grp_fu_1466_p3 = zext_ln31_reg_1629;
assign grp_fu_1476_p1 = 8'd25;
assign grp_fu_1476_p2 = 16'd190;
assign grp_fu_1476_p3 = zext_ln31_reg_1629;
assign grp_fu_1486_p1 = 8'd26;
assign grp_fu_1486_p2 = 16'd190;
assign grp_fu_1486_p3 = zext_ln31_reg_1629;
assign grp_fu_148_p_ce = grp_fu_2138_ce;
assign grp_fu_148_p_din0 = grp_fu_2138_p0;
assign grp_fu_148_p_din1 = grp_fu_2138_p1;
assign grp_fu_1496_p1 = 8'd27;
assign grp_fu_1496_p2 = 16'd190;
assign grp_fu_1496_p3 = zext_ln31_reg_1629;
assign grp_fu_1506_p1 = 8'd28;
assign grp_fu_1506_p2 = 16'd190;
assign grp_fu_1506_p3 = zext_ln31_reg_1629;
assign grp_fu_1516_p1 = 8'd29;
assign grp_fu_1516_p2 = 16'd190;
assign grp_fu_1516_p3 = zext_ln31_reg_1629;
assign grp_fu_1526_p1 = 8'd30;
assign grp_fu_1526_p2 = 16'd190;
assign grp_fu_1526_p3 = zext_ln31_reg_1629;
assign grp_fu_152_p_ce = grp_fu_2142_ce;
assign grp_fu_152_p_din0 = grp_fu_2142_p0;
assign grp_fu_152_p_din1 = grp_fu_2142_p1;
assign grp_fu_1536_p1 = 8'd31;
assign grp_fu_1536_p2 = 16'd190;
assign grp_fu_1536_p3 = zext_ln31_reg_1629;
assign grp_fu_1546_p1 = 8'd32;
assign grp_fu_1546_p2 = 16'd190;
assign grp_fu_1546_p3 = zext_ln31_reg_1629;
assign grp_fu_1556_p1 = 8'd33;
assign grp_fu_1556_p2 = 16'd190;
assign grp_fu_1556_p3 = zext_ln31_reg_1629;
assign grp_fu_1566_p1 = 8'd34;
assign grp_fu_1566_p2 = 16'd190;
assign grp_fu_1566_p3 = zext_ln31_reg_1629;
assign grp_fu_156_p_ce = grp_fu_2146_ce;
assign grp_fu_156_p_din0 = grp_fu_2146_p0;
assign grp_fu_156_p_din1 = grp_fu_2146_p1;
assign grp_fu_1576_p1 = 8'd35;
assign grp_fu_1576_p2 = 16'd190;
assign grp_fu_1576_p3 = zext_ln31_reg_1629;
assign grp_fu_160_p_ce = grp_fu_2150_ce;
assign grp_fu_160_p_din0 = grp_fu_2150_p0;
assign grp_fu_160_p_din1 = grp_fu_2150_p1;
assign grp_fu_164_p_ce = grp_fu_2154_ce;
assign grp_fu_164_p_din0 = grp_fu_2154_p0;
assign grp_fu_164_p_din1 = grp_fu_2154_p1;
assign grp_fu_168_p_ce = grp_fu_2158_ce;
assign grp_fu_168_p_din0 = grp_fu_2158_p0;
assign grp_fu_168_p_din1 = grp_fu_2158_p1;
assign grp_kernel_2mm_node0_Pipeline_label_24_fu_530_ap_start = grp_kernel_2mm_node0_Pipeline_label_24_fu_530_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_25_fu_559_ap_start = grp_kernel_2mm_node0_Pipeline_label_25_fu_559_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_26_fu_588_ap_start = grp_kernel_2mm_node0_Pipeline_label_26_fu_588_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_2_fu_501_ap_start = grp_kernel_2mm_node0_Pipeline_label_2_fu_501_ap_start_reg;
assign icmp_ln31_fu_679_p2 = ((v5_fu_176 == 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_701_p2 = ((v6_reg_489 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln_fu_747_p4 = {{v6_reg_489[7:2]}};
assign mul_ln101_fu_1183_p0 = mul_ln101_fu_1183_p00;
assign mul_ln101_fu_1183_p00 = empty_164_fu_1174_p2;
assign mul_ln101_fu_1183_p1 = 14'd220;
assign mul_ln114_fu_1076_p0 = mul_ln114_fu_1076_p00;
assign mul_ln114_fu_1076_p00 = empty_139_fu_1067_p2;
assign mul_ln114_fu_1076_p1 = 14'd220;
assign mul_ln127_fu_961_p0 = mul_ln127_fu_961_p00;
assign mul_ln127_fu_961_p00 = empty_114_fu_952_p2;
assign mul_ln127_fu_961_p1 = 14'd220;
assign mul_ln140_fu_854_p0 = mul_ln140_fu_854_p00;
assign mul_ln140_fu_854_p00 = empty_89_fu_845_p2;
assign mul_ln140_fu_854_p1 = 14'd220;
assign mul_ln34_fu_824_p0 = mul_ln34_fu_824_p00;
assign mul_ln34_fu_824_p00 = lshr_ln_reg_1695;
assign mul_ln34_fu_824_p1 = 14'd220;
assign mul_ln49_fu_1168_p0 = mul_ln49_fu_1168_p00;
assign mul_ln49_fu_1168_p00 = empty_151_fu_1159_p2;
assign mul_ln49_fu_1168_p1 = 14'd220;
assign mul_ln62_fu_1061_p0 = mul_ln62_fu_1061_p00;
assign mul_ln62_fu_1061_p00 = empty_126_fu_1052_p2;
assign mul_ln62_fu_1061_p1 = 14'd220;
assign mul_ln75_fu_946_p0 = mul_ln75_fu_946_p00;
assign mul_ln75_fu_946_p00 = empty_101_fu_937_p2;
assign mul_ln75_fu_946_p1 = 14'd220;
assign mul_ln88_fu_839_p0 = mul_ln88_fu_839_p00;
assign mul_ln88_fu_839_p00 = empty_76_fu_830_p2;
assign mul_ln88_fu_839_p1 = 14'd220;
assign p_cast760_fu_781_p1 = grp_fu_1234_p3;
assign p_cast761_fu_789_p1 = grp_fu_1250_p3;
assign p_cast762_fu_793_p1 = grp_fu_1258_p3;
assign p_cast763_fu_797_p1 = grp_fu_1266_p4;
assign p_cast764_fu_801_p1 = grp_fu_1276_p4;
assign p_cast765_fu_805_p1 = grp_fu_1286_p4;
assign p_cast766_fu_809_p1 = grp_fu_1296_p4;
assign p_cast767_fu_813_p1 = grp_fu_1306_p4;
assign p_cast768_fu_817_p1 = grp_fu_1316_p4;
assign p_cast769_fu_860_p1 = grp_fu_1326_p4;
assign p_cast770_fu_864_p1 = grp_fu_1336_p4;
assign p_cast771_fu_913_p1 = grp_fu_1346_p4;
assign p_cast772_fu_917_p1 = grp_fu_1356_p4;
assign p_cast773_fu_921_p1 = grp_fu_1366_p4;
assign p_cast774_fu_925_p1 = grp_fu_1376_p4;
assign p_cast775_fu_929_p1 = grp_fu_1386_p4;
assign p_cast776_fu_933_p1 = grp_fu_1396_p4;
assign p_cast777_fu_967_p1 = grp_fu_1406_p4;
assign p_cast778_fu_971_p1 = grp_fu_1416_p4;
assign p_cast779_fu_1020_p1 = grp_fu_1426_p4;
assign p_cast780_fu_1024_p1 = grp_fu_1436_p4;
assign p_cast781_fu_1028_p1 = grp_fu_1446_p4;
assign p_cast782_fu_1032_p1 = grp_fu_1456_p4;
assign p_cast783_fu_1036_p1 = grp_fu_1466_p4;
assign p_cast784_fu_1040_p1 = grp_fu_1476_p4;
assign p_cast785_fu_1044_p1 = grp_fu_1486_p4;
assign p_cast786_fu_1048_p1 = grp_fu_1496_p4;
assign p_cast787_fu_1082_p1 = grp_fu_1506_p4;
assign p_cast788_fu_1086_p1 = grp_fu_1516_p4;
assign p_cast789_fu_1135_p1 = grp_fu_1526_p4;
assign p_cast790_fu_1139_p1 = grp_fu_1536_p4;
assign p_cast791_fu_1143_p1 = grp_fu_1546_p4;
assign p_cast792_fu_1147_p1 = grp_fu_1556_p4;
assign p_cast793_fu_1151_p1 = grp_fu_1566_p4;
assign p_cast794_fu_1155_p1 = grp_fu_1576_p4;
assign p_cast_fu_785_p1 = grp_fu_1242_p3;
assign tmp_3_fu_757_p3 = {{lshr_ln_fu_747_p4}, {2'd2}};
assign tmp_4_fu_769_p3 = {{lshr_ln_fu_747_p4}, {2'd3}};
assign tmp_fu_711_p4 = {{v6_reg_489[7:1]}};
assign tmp_s_fu_721_p3 = {{tmp_fu_711_p4}, {1'd1}};
assign v101_1_fu_1015_p1 = reg_645;
assign v101_2_fu_1130_p1 = reg_649;
assign v101_3_fu_1229_p1 = reg_645;
assign v101_fu_908_p1 = reg_649;
assign v11_1_fu_975_p1 = reg_653;
assign v11_2_fu_1090_p1 = reg_617;
assign v11_3_fu_1189_p1 = reg_653;
assign v11_fu_868_p1 = reg_617;
assign v224_address0 = v224_address0_local;
assign v224_address1 = v224_address1_local;
assign v224_ce0 = v224_ce0_local;
assign v224_ce1 = v224_ce1_local;
assign v236_read = v236_read_local;
assign v24_1_fu_980_p1 = reg_617;
assign v24_2_fu_1095_p1 = reg_621;
assign v24_3_fu_1194_p1 = reg_617;
assign v24_fu_873_p1 = reg_621;
assign v35_1_fu_985_p1 = reg_621;
assign v35_2_fu_1100_p1 = reg_625;
assign v35_3_fu_1199_p1 = reg_621;
assign v35_fu_878_p1 = reg_625;
assign v46_1_fu_990_p1 = reg_625;
assign v46_2_fu_1105_p1 = reg_629;
assign v46_3_fu_1204_p1 = reg_625;
assign v46_fu_883_p1 = reg_629;
assign v57_1_fu_995_p1 = reg_629;
assign v57_2_fu_1110_p1 = reg_633;
assign v57_3_fu_1209_p1 = reg_629;
assign v57_fu_888_p1 = reg_633;
assign v68_1_fu_1000_p1 = reg_633;
assign v68_2_fu_1115_p1 = reg_637;
assign v68_3_fu_1214_p1 = reg_633;
assign v68_fu_893_p1 = reg_637;
assign v79_1_fu_1005_p1 = reg_637;
assign v79_2_fu_1120_p1 = reg_641;
assign v79_3_fu_1219_p1 = reg_637;
assign v79_fu_898_p1 = reg_641;
assign v90_1_fu_1010_p1 = reg_641;
assign v90_2_fu_1125_p1 = reg_645;
assign v90_3_fu_1224_p1 = reg_641;
assign v90_fu_903_p1 = reg_645;
assign zext_ln31_fu_691_p1 = v5_fu_176;
always @ (posedge ap_clk) begin
    zext_ln31_reg_1629[15:8] <= 8'b00000000;
end
endmodule 