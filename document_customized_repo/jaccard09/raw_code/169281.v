module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_address0,v224_ce0,v224_q0,v224_address1,v224_ce1,v224_q1,v228_address0,v228_ce0,v228_q0,v228_address1,v228_ce1,v228_q1,v229_0_address0,v229_0_ce0,v229_0_we0,v229_0_d0,v229_0_q0,v229_0_address1,v229_0_ce1,v229_0_we1,v229_0_d1,v229_0_q1,v229_1_address0,v229_1_ce0,v229_1_we0,v229_1_d0,v229_1_q0,v229_1_address1,v229_1_ce1,v229_1_we1,v229_1_d1,v229_1_q1,v4,grp_fu_136_p_din0,grp_fu_136_p_din1,grp_fu_136_p_opcode,grp_fu_136_p_dout0,grp_fu_136_p_ce,grp_fu_140_p_din0,grp_fu_140_p_din1,grp_fu_140_p_dout0,grp_fu_140_p_ce,grp_fu_144_p_din0,grp_fu_144_p_din1,grp_fu_144_p_dout0,grp_fu_144_p_ce,grp_fu_148_p_din0,grp_fu_148_p_din1,grp_fu_148_p_dout0,grp_fu_148_p_ce,grp_fu_152_p_din0,grp_fu_152_p_din1,grp_fu_152_p_dout0,grp_fu_152_p_ce); 
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
output  [31:0] grp_fu_136_p_din0;
output  [31:0] grp_fu_136_p_din1;
output  [1:0] grp_fu_136_p_opcode;
input  [31:0] grp_fu_136_p_dout0;
output   grp_fu_136_p_ce;
output  [31:0] grp_fu_140_p_din0;
output  [31:0] grp_fu_140_p_din1;
input  [31:0] grp_fu_140_p_dout0;
output   grp_fu_140_p_ce;
output  [31:0] grp_fu_144_p_din0;
output  [31:0] grp_fu_144_p_din1;
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
(* fsm_encoding = "none" *) reg   [25:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
reg   [31:0] reg_623;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state21;
reg   [31:0] reg_627;
reg   [31:0] reg_631;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state22;
reg   [31:0] reg_635;
reg   [31:0] reg_639;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state23;
reg   [31:0] reg_643;
reg   [31:0] reg_647;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state19;
wire    ap_CS_fsm_state24;
reg   [31:0] reg_651;
reg   [31:0] reg_655;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state20;
reg   [31:0] reg_659;
reg   [15:0] phi_mul_load_reg_1751;
wire    ap_CS_fsm_state2;
wire   [15:0] add_ln31_1_fu_679_p2;
reg   [15:0] add_ln31_1_reg_1759;
wire   [7:0] add_ln31_fu_691_p2;
reg   [7:0] add_ln31_reg_1767;
wire   [15:0] zext_ln31_fu_697_p1;
reg   [15:0] zext_ln31_reg_1772;
wire   [0:0] cmp11_fu_701_p2;
reg   [0:0] cmp11_reg_1812;
wire    ap_CS_fsm_state3;
wire   [6:0] lshr_ln_fu_717_p4;
reg   [6:0] lshr_ln_reg_1828;
wire   [7:0] add_ln32_3_fu_739_p2;
reg   [7:0] add_ln32_3_reg_1854;
wire   [5:0] tmp_9_fu_753_p4;
reg   [5:0] tmp_9_reg_1859;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state6;
wire   [14:0] mul_ln34_fu_830_p2;
reg   [14:0] mul_ln34_reg_1924;
wire   [14:0] mul_ln62_fu_847_p2;
reg   [14:0] mul_ln62_reg_1929;
wire   [14:0] mul_ln88_fu_862_p2;
reg   [14:0] mul_ln88_reg_1934;
wire   [14:0] mul_ln114_fu_877_p2;
reg   [14:0] mul_ln114_reg_1939;
wire   [14:0] mul_ln140_fu_892_p2;
reg   [14:0] mul_ln140_reg_1944;
wire   [31:0] v11_fu_906_p1;
reg   [31:0] v11_reg_1960;
wire   [31:0] v24_fu_911_p1;
reg   [31:0] v24_reg_1965;
wire   [31:0] v35_fu_916_p1;
reg   [31:0] v35_reg_1970;
wire   [31:0] v46_fu_921_p1;
reg   [31:0] v46_reg_1975;
wire   [31:0] v57_fu_926_p1;
reg   [31:0] v57_reg_1980;
wire   [31:0] v68_fu_931_p1;
reg   [31:0] v68_reg_1985;
wire   [31:0] v79_fu_936_p1;
reg   [31:0] v79_reg_1990;
wire   [31:0] v90_fu_941_p1;
reg   [31:0] v90_reg_1995;
wire   [31:0] v101_fu_946_p1;
reg   [31:0] v101_reg_2000;
wire   [14:0] mul_ln49_fu_984_p2;
reg   [14:0] mul_ln49_reg_2035;
wire   [14:0] mul_ln75_fu_999_p2;
reg   [14:0] mul_ln75_reg_2040;
wire   [14:0] mul_ln101_fu_1014_p2;
reg   [14:0] mul_ln101_reg_2045;
wire   [14:0] mul_ln127_fu_1029_p2;
reg   [14:0] mul_ln127_reg_2050;
wire   [31:0] v11_1_fu_1043_p1;
reg   [31:0] v11_1_reg_2065;
wire   [31:0] v24_1_fu_1048_p1;
reg   [31:0] v24_1_reg_2070;
wire   [31:0] v35_1_fu_1053_p1;
reg   [31:0] v35_1_reg_2075;
wire   [31:0] v46_1_fu_1058_p1;
reg   [31:0] v46_1_reg_2080;
wire   [31:0] v57_1_fu_1063_p1;
reg   [31:0] v57_1_reg_2085;
wire   [31:0] v68_1_fu_1068_p1;
reg   [31:0] v68_1_reg_2090;
wire   [31:0] v79_1_fu_1073_p1;
reg   [31:0] v79_1_reg_2095;
wire   [31:0] v90_1_fu_1078_p1;
reg   [31:0] v90_1_reg_2100;
wire   [31:0] v101_1_fu_1083_p1;
reg   [31:0] v101_1_reg_2105;
wire   [14:0] mul_ln34_1_fu_1129_p2;
reg   [14:0] mul_ln34_1_reg_2150;
wire   [14:0] mul_ln62_1_fu_1144_p2;
reg   [14:0] mul_ln62_1_reg_2155;
wire   [14:0] mul_ln88_1_fu_1159_p2;
reg   [14:0] mul_ln88_1_reg_2160;
wire   [14:0] mul_ln114_1_fu_1174_p2;
reg   [14:0] mul_ln114_1_reg_2165;
wire   [14:0] mul_ln140_1_fu_1189_p2;
reg   [14:0] mul_ln140_1_reg_2170;
wire   [31:0] v11_2_fu_1203_p1;
reg   [31:0] v11_2_reg_2186;
wire   [31:0] v24_2_fu_1208_p1;
reg   [31:0] v24_2_reg_2191;
wire   [31:0] v35_2_fu_1213_p1;
reg   [31:0] v35_2_reg_2196;
wire   [31:0] v46_2_fu_1218_p1;
reg   [31:0] v46_2_reg_2201;
wire   [31:0] v57_2_fu_1223_p1;
reg   [31:0] v57_2_reg_2206;
wire   [31:0] v68_2_fu_1228_p1;
reg   [31:0] v68_2_reg_2211;
wire   [31:0] v79_2_fu_1233_p1;
reg   [31:0] v79_2_reg_2216;
wire   [31:0] v90_2_fu_1238_p1;
reg   [31:0] v90_2_reg_2221;
wire   [31:0] v101_2_fu_1243_p1;
reg   [31:0] v101_2_reg_2226;
wire   [14:0] mul_ln49_1_fu_1281_p2;
reg   [14:0] mul_ln49_1_reg_2261;
wire   [14:0] mul_ln75_1_fu_1296_p2;
reg   [14:0] mul_ln75_1_reg_2266;
wire   [14:0] mul_ln101_1_fu_1311_p2;
reg   [14:0] mul_ln101_1_reg_2271;
wire   [14:0] mul_ln127_1_fu_1326_p2;
reg   [14:0] mul_ln127_1_reg_2276;
wire   [31:0] v11_3_fu_1332_p1;
reg   [31:0] v11_3_reg_2281;
wire    ap_CS_fsm_state25;
wire   [31:0] v24_3_fu_1337_p1;
reg   [31:0] v24_3_reg_2286;
wire   [31:0] v35_3_fu_1342_p1;
reg   [31:0] v35_3_reg_2291;
wire   [31:0] v46_3_fu_1347_p1;
reg   [31:0] v46_3_reg_2296;
wire   [31:0] v57_3_fu_1352_p1;
reg   [31:0] v57_3_reg_2301;
wire   [31:0] v68_3_fu_1357_p1;
reg   [31:0] v68_3_reg_2306;
wire   [31:0] v79_3_fu_1362_p1;
reg   [31:0] v79_3_reg_2311;
wire   [31:0] v90_3_fu_1367_p1;
reg   [31:0] v90_3_reg_2316;
wire   [31:0] v101_3_fu_1372_p1;
reg   [31:0] v101_3_reg_2321;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_515_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_515_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_515_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_515_ap_ready;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_1_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_1_d1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_0_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_0_d1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v228_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2326_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2326_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2326_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2326_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2330_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2330_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2330_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2330_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2334_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2334_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2334_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2338_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2338_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2338_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2342_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2342_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2342_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2346_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2346_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2346_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_542_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_542_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_542_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_542_ap_ready;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_1_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_1_d1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_0_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_0_d1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v228_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2326_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2326_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2326_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2326_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2330_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2330_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2330_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2330_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2334_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2334_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2334_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2338_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2338_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2338_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2342_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2342_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2342_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2346_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2346_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2346_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_211_fu_569_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_211_fu_569_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_211_fu_569_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_211_fu_569_ap_ready;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_1_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_1_d1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_0_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_0_d1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v228_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2326_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2326_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2326_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2326_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2330_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2330_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2330_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2330_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2334_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2334_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2334_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2338_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2338_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2338_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2342_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2342_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2342_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2346_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2346_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2346_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_212_fu_596_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_212_fu_596_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_212_fu_596_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_212_fu_596_ap_ready;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_1_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_1_d1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_0_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_0_d1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v228_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2326_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2326_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2326_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2326_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2330_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2330_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2330_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2330_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2334_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2334_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2334_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2338_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2338_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2338_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2342_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2342_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2342_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2346_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2346_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2346_p_ce;
reg   [7:0] v6_reg_503;
wire    ap_CS_fsm_state26;
wire   [0:0] icmp_ln31_fu_685_p2;
reg    grp_kernel_2mm_node0_Pipeline_label_2_fu_515_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_210_fu_542_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_211_fu_569_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_212_fu_596_ap_start_reg;
wire   [63:0] p_cast756_fu_787_p1;
wire   [63:0] p_cast_fu_791_p1;
wire   [63:0] p_cast757_fu_795_p1;
wire   [63:0] p_cast758_fu_799_p1;
wire   [63:0] p_cast759_fu_803_p1;
wire   [63:0] p_cast760_fu_807_p1;
wire   [63:0] p_cast761_fu_811_p1;
wire   [63:0] p_cast762_fu_815_p1;
wire   [63:0] p_cast763_fu_819_p1;
wire   [63:0] p_cast764_fu_823_p1;
wire   [63:0] p_cast765_fu_898_p1;
wire   [63:0] p_cast766_fu_902_p1;
wire   [63:0] p_cast767_fu_951_p1;
wire   [63:0] p_cast768_fu_955_p1;
wire   [63:0] p_cast769_fu_959_p1;
wire   [63:0] p_cast770_fu_963_p1;
wire   [63:0] p_cast771_fu_967_p1;
wire   [63:0] p_cast772_fu_971_p1;
wire   [63:0] p_cast773_fu_1035_p1;
wire   [63:0] p_cast774_fu_1039_p1;
wire   [63:0] p_cast775_fu_1088_p1;
wire   [63:0] p_cast776_fu_1092_p1;
wire   [63:0] p_cast777_fu_1096_p1;
wire   [63:0] p_cast778_fu_1100_p1;
wire   [63:0] p_cast779_fu_1104_p1;
wire   [63:0] p_cast780_fu_1108_p1;
wire   [63:0] p_cast781_fu_1112_p1;
wire   [63:0] p_cast782_fu_1116_p1;
wire   [63:0] p_cast783_fu_1195_p1;
wire   [63:0] p_cast784_fu_1199_p1;
wire   [63:0] p_cast785_fu_1248_p1;
wire   [63:0] p_cast786_fu_1252_p1;
wire   [63:0] p_cast787_fu_1256_p1;
wire   [63:0] p_cast788_fu_1260_p1;
wire   [63:0] p_cast789_fu_1264_p1;
wire   [63:0] p_cast790_fu_1268_p1;
reg   [15:0] phi_mul_fu_186;
wire   [0:0] icmp_ln32_fu_707_p2;
reg    ap_block_state1;
reg   [7:0] v5_fu_190;
reg    v236_read_local;
reg    v224_ce1_local;
reg   [15:0] v224_address1_local;
reg    v224_ce0_local;
reg   [15:0] v224_address0_local;
wire   [7:0] tmp_s_fu_727_p3;
wire   [7:0] tmp_10_fu_763_p3;
wire   [7:0] tmp_12_fu_775_p3;
wire   [15:0] grp_fu_1377_p3;
wire   [15:0] grp_fu_1385_p3;
wire   [15:0] grp_fu_1393_p3;
wire   [15:0] grp_fu_1401_p3;
wire   [15:0] grp_fu_1409_p4;
wire   [15:0] grp_fu_1419_p4;
wire   [15:0] grp_fu_1429_p4;
wire   [15:0] grp_fu_1439_p4;
wire   [15:0] grp_fu_1449_p4;
wire   [15:0] grp_fu_1459_p4;
wire   [6:0] mul_ln34_fu_830_p0;
wire   [8:0] mul_ln34_fu_830_p1;
wire   [6:0] tmp_11_fu_836_p3;
wire   [6:0] mul_ln62_fu_847_p0;
wire   [8:0] mul_ln62_fu_847_p1;
wire   [6:0] empty_514_fu_853_p2;
wire   [6:0] mul_ln88_fu_862_p0;
wire   [8:0] mul_ln88_fu_862_p1;
wire   [6:0] empty_521_fu_868_p2;
wire   [6:0] mul_ln114_fu_877_p0;
wire   [8:0] mul_ln114_fu_877_p1;
wire   [6:0] empty_528_fu_883_p2;
wire   [6:0] mul_ln140_fu_892_p0;
wire   [8:0] mul_ln140_fu_892_p1;
wire   [15:0] grp_fu_1469_p4;
wire   [15:0] grp_fu_1479_p4;
wire   [15:0] grp_fu_1489_p4;
wire   [15:0] grp_fu_1499_p4;
wire   [15:0] grp_fu_1509_p4;
wire   [15:0] grp_fu_1519_p4;
wire   [15:0] grp_fu_1529_p4;
wire   [15:0] grp_fu_1539_p4;
wire   [6:0] empty_534_fu_975_p2;
wire   [6:0] mul_ln49_fu_984_p0;
wire   [8:0] mul_ln49_fu_984_p1;
wire   [6:0] empty_541_fu_990_p2;
wire   [6:0] mul_ln75_fu_999_p0;
wire   [8:0] mul_ln75_fu_999_p1;
wire   [6:0] empty_548_fu_1005_p2;
wire   [6:0] mul_ln101_fu_1014_p0;
wire   [8:0] mul_ln101_fu_1014_p1;
wire   [6:0] empty_555_fu_1020_p2;
wire   [6:0] mul_ln127_fu_1029_p0;
wire   [8:0] mul_ln127_fu_1029_p1;
wire   [15:0] grp_fu_1549_p4;
wire   [15:0] grp_fu_1559_p4;
wire   [15:0] grp_fu_1569_p4;
wire   [15:0] grp_fu_1579_p4;
wire   [15:0] grp_fu_1589_p4;
wire   [15:0] grp_fu_1599_p4;
wire   [15:0] grp_fu_1609_p4;
wire   [15:0] grp_fu_1619_p4;
wire   [15:0] grp_fu_1629_p4;
wire   [15:0] grp_fu_1639_p4;
wire   [6:0] empty_561_fu_1120_p2;
wire   [6:0] mul_ln34_1_fu_1129_p0;
wire   [8:0] mul_ln34_1_fu_1129_p1;
wire   [6:0] empty_568_fu_1135_p2;
wire   [6:0] mul_ln62_1_fu_1144_p0;
wire   [8:0] mul_ln62_1_fu_1144_p1;
wire   [6:0] empty_575_fu_1150_p2;
wire   [6:0] mul_ln88_1_fu_1159_p0;
wire   [8:0] mul_ln88_1_fu_1159_p1;
wire   [6:0] empty_582_fu_1165_p2;
wire   [6:0] mul_ln114_1_fu_1174_p0;
wire   [8:0] mul_ln114_1_fu_1174_p1;
wire   [6:0] empty_589_fu_1180_p2;
wire   [6:0] mul_ln140_1_fu_1189_p0;
wire   [8:0] mul_ln140_1_fu_1189_p1;
wire   [15:0] grp_fu_1649_p4;
wire   [15:0] grp_fu_1659_p4;
wire   [15:0] grp_fu_1669_p4;
wire   [15:0] grp_fu_1679_p4;
wire   [15:0] grp_fu_1689_p4;
wire   [15:0] grp_fu_1699_p4;
wire   [15:0] grp_fu_1709_p4;
wire   [15:0] grp_fu_1719_p4;
wire   [6:0] empty_595_fu_1272_p2;
wire   [6:0] mul_ln49_1_fu_1281_p0;
wire   [8:0] mul_ln49_1_fu_1281_p1;
wire   [6:0] empty_602_fu_1287_p2;
wire   [6:0] mul_ln75_1_fu_1296_p0;
wire   [8:0] mul_ln75_1_fu_1296_p1;
wire   [6:0] empty_609_fu_1302_p2;
wire   [6:0] mul_ln101_1_fu_1311_p0;
wire   [8:0] mul_ln101_1_fu_1311_p1;
wire   [6:0] empty_616_fu_1317_p2;
wire   [6:0] mul_ln127_1_fu_1326_p0;
wire   [8:0] mul_ln127_1_fu_1326_p1;
wire   [7:0] grp_fu_1377_p0;
wire   [7:0] grp_fu_1377_p1;
wire   [7:0] grp_fu_1377_p2;
wire    ap_CS_fsm_state5;
wire   [7:0] grp_fu_1385_p0;
wire   [7:0] grp_fu_1385_p1;
wire   [7:0] grp_fu_1385_p2;
wire   [7:0] grp_fu_1393_p0;
wire   [7:0] grp_fu_1393_p1;
wire   [7:0] grp_fu_1393_p2;
wire   [7:0] grp_fu_1401_p0;
wire   [7:0] grp_fu_1401_p1;
wire   [7:0] grp_fu_1401_p2;
wire   [2:0] grp_fu_1409_p1;
wire   [7:0] grp_fu_1409_p2;
wire   [7:0] grp_fu_1409_p3;
wire   [2:0] grp_fu_1419_p1;
wire   [7:0] grp_fu_1419_p2;
wire   [7:0] grp_fu_1419_p3;
wire   [2:0] grp_fu_1429_p1;
wire   [7:0] grp_fu_1429_p2;
wire   [7:0] grp_fu_1429_p3;
wire   [2:0] grp_fu_1439_p1;
wire   [7:0] grp_fu_1439_p2;
wire   [7:0] grp_fu_1439_p3;
wire   [3:0] grp_fu_1449_p1;
wire   [7:0] grp_fu_1449_p2;
wire   [7:0] grp_fu_1449_p3;
wire   [3:0] grp_fu_1459_p1;
wire   [7:0] grp_fu_1459_p2;
wire   [7:0] grp_fu_1459_p3;
wire   [3:0] grp_fu_1469_p1;
wire   [7:0] grp_fu_1469_p2;
wire   [7:0] grp_fu_1469_p3;
wire   [3:0] grp_fu_1479_p1;
wire   [7:0] grp_fu_1479_p2;
wire   [7:0] grp_fu_1479_p3;
wire   [3:0] grp_fu_1489_p1;
wire   [7:0] grp_fu_1489_p2;
wire   [7:0] grp_fu_1489_p3;
wire   [3:0] grp_fu_1499_p1;
wire   [7:0] grp_fu_1499_p2;
wire   [7:0] grp_fu_1499_p3;
wire   [3:0] grp_fu_1509_p1;
wire   [7:0] grp_fu_1509_p2;
wire   [7:0] grp_fu_1509_p3;
wire   [3:0] grp_fu_1519_p1;
wire   [7:0] grp_fu_1519_p2;
wire   [7:0] grp_fu_1519_p3;
wire   [4:0] grp_fu_1529_p1;
wire   [7:0] grp_fu_1529_p2;
wire   [7:0] grp_fu_1529_p3;
wire   [4:0] grp_fu_1539_p1;
wire   [7:0] grp_fu_1539_p2;
wire   [7:0] grp_fu_1539_p3;
wire   [4:0] grp_fu_1549_p1;
wire   [7:0] grp_fu_1549_p2;
wire   [7:0] grp_fu_1549_p3;
wire   [4:0] grp_fu_1559_p1;
wire   [7:0] grp_fu_1559_p2;
wire   [7:0] grp_fu_1559_p3;
wire   [4:0] grp_fu_1569_p1;
wire   [7:0] grp_fu_1569_p2;
wire   [7:0] grp_fu_1569_p3;
wire   [4:0] grp_fu_1579_p1;
wire   [7:0] grp_fu_1579_p2;
wire   [7:0] grp_fu_1579_p3;
wire   [4:0] grp_fu_1589_p1;
wire   [7:0] grp_fu_1589_p2;
wire   [7:0] grp_fu_1589_p3;
wire   [4:0] grp_fu_1599_p1;
wire   [7:0] grp_fu_1599_p2;
wire   [7:0] grp_fu_1599_p3;
wire   [4:0] grp_fu_1609_p1;
wire   [7:0] grp_fu_1609_p2;
wire   [7:0] grp_fu_1609_p3;
wire   [4:0] grp_fu_1619_p1;
wire   [7:0] grp_fu_1619_p2;
wire   [7:0] grp_fu_1619_p3;
wire   [4:0] grp_fu_1629_p1;
wire   [7:0] grp_fu_1629_p2;
wire   [7:0] grp_fu_1629_p3;
wire   [4:0] grp_fu_1639_p1;
wire   [7:0] grp_fu_1639_p2;
wire   [7:0] grp_fu_1639_p3;
wire   [4:0] grp_fu_1649_p1;
wire   [7:0] grp_fu_1649_p2;
wire   [7:0] grp_fu_1649_p3;
wire   [4:0] grp_fu_1659_p1;
wire   [7:0] grp_fu_1659_p2;
wire   [7:0] grp_fu_1659_p3;
wire   [4:0] grp_fu_1669_p1;
wire   [7:0] grp_fu_1669_p2;
wire   [7:0] grp_fu_1669_p3;
wire   [4:0] grp_fu_1679_p1;
wire   [7:0] grp_fu_1679_p2;
wire   [7:0] grp_fu_1679_p3;
wire   [5:0] grp_fu_1689_p1;
wire   [7:0] grp_fu_1689_p2;
wire   [7:0] grp_fu_1689_p3;
wire   [5:0] grp_fu_1699_p1;
wire   [7:0] grp_fu_1699_p2;
wire   [7:0] grp_fu_1699_p3;
wire   [5:0] grp_fu_1709_p1;
wire   [7:0] grp_fu_1709_p2;
wire   [7:0] grp_fu_1709_p3;
wire   [5:0] grp_fu_1719_p1;
wire   [7:0] grp_fu_1719_p2;
wire   [7:0] grp_fu_1719_p3;
reg    grp_fu_1509_ce;
reg    grp_fu_1519_ce;
reg    grp_fu_1529_ce;
reg    grp_fu_1539_ce;
reg    grp_fu_1549_ce;
reg    grp_fu_1559_ce;
reg    grp_fu_1569_ce;
reg    grp_fu_1579_ce;
reg    grp_fu_1589_ce;
reg    grp_fu_1599_ce;
reg    grp_fu_1609_ce;
reg    grp_fu_1619_ce;
reg    grp_fu_1629_ce;
reg    grp_fu_1639_ce;
reg    grp_fu_1649_ce;
reg    grp_fu_1659_ce;
reg    grp_fu_1689_ce;
reg    grp_fu_1699_ce;
reg    grp_fu_1709_ce;
reg    grp_fu_1719_ce;
reg   [31:0] grp_fu_2326_p0;
reg   [31:0] grp_fu_2326_p1;
reg    grp_fu_2326_ce;
wire   [31:0] grp_fu_2330_p2;
reg   [31:0] grp_fu_2330_p0;
reg   [31:0] grp_fu_2330_p1;
reg    grp_fu_2330_ce;
reg   [31:0] grp_fu_2334_p0;
reg   [31:0] grp_fu_2334_p1;
reg    grp_fu_2334_ce;
reg   [31:0] grp_fu_2338_p0;
reg   [31:0] grp_fu_2338_p1;
reg    grp_fu_2338_ce;
reg   [31:0] grp_fu_2342_p0;
reg   [31:0] grp_fu_2342_p1;
reg    grp_fu_2342_ce;
reg   [31:0] grp_fu_2346_p0;
reg   [31:0] grp_fu_2346_p1;
reg    grp_fu_2346_ce;
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
wire   [15:0] grp_fu_1377_p00;
wire   [15:0] grp_fu_1385_p00;
wire   [15:0] grp_fu_1393_p00;
wire   [15:0] grp_fu_1401_p00;
wire   [14:0] mul_ln101_1_fu_1311_p00;
wire   [14:0] mul_ln101_fu_1014_p00;
wire   [14:0] mul_ln114_1_fu_1174_p00;
wire   [14:0] mul_ln114_fu_877_p00;
wire   [14:0] mul_ln127_1_fu_1326_p00;
wire   [14:0] mul_ln127_fu_1029_p00;
wire   [14:0] mul_ln140_1_fu_1189_p00;
wire   [14:0] mul_ln140_fu_892_p00;
wire   [14:0] mul_ln34_1_fu_1129_p00;
wire   [14:0] mul_ln34_fu_830_p00;
wire   [14:0] mul_ln49_1_fu_1281_p00;
wire   [14:0] mul_ln49_fu_984_p00;
wire   [14:0] mul_ln62_1_fu_1144_p00;
wire   [14:0] mul_ln62_fu_847_p00;
wire   [14:0] mul_ln75_1_fu_1296_p00;
wire   [14:0] mul_ln75_fu_999_p00;
wire   [14:0] mul_ln88_1_fu_1159_p00;
wire   [14:0] mul_ln88_fu_862_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 26'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_2_fu_515_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_210_fu_542_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_211_fu_569_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_212_fu_596_ap_start_reg = 1'b0;
#0 phi_mul_fu_186 = 16'd0;
#0 v5_fu_190 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_2 grp_kernel_2mm_node0_Pipeline_label_2_fu_515(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_ap_ready),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_0_d1),.v229_0_q1(v229_0_q1),.phi_mul(phi_mul_load_reg_1751),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v228_ce1),.v228_q1(v228_q1),.mul_ln34(mul_ln34_reg_1924),.mul_ln62(mul_ln62_reg_1929),.mul_ln88(mul_ln88_reg_1934),.mul_ln114(mul_ln114_reg_1939),.mul_ln140(mul_ln140_reg_1944),.v4(v4),.cmp11(cmp11_reg_1812),.v11(v11_reg_1960),.v24(v24_reg_1965),.v35(v35_reg_1970),.v46(v46_reg_1975),.v57(v57_reg_1980),.v68(v68_reg_1985),.v79(v79_reg_1990),.v90(v90_reg_1995),.v101(v101_reg_2000),.grp_fu_2326_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2326_p_din0),.grp_fu_2326_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2326_p_din1),.grp_fu_2326_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2326_p_opcode),.grp_fu_2326_p_dout0(grp_fu_136_p_dout0),.grp_fu_2326_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2326_p_ce),.grp_fu_2330_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2330_p_din0),.grp_fu_2330_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2330_p_din1),.grp_fu_2330_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2330_p_opcode),.grp_fu_2330_p_dout0(grp_fu_2330_p2),.grp_fu_2330_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2330_p_ce),.grp_fu_2334_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2334_p_din0),.grp_fu_2334_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2334_p_din1),.grp_fu_2334_p_dout0(grp_fu_140_p_dout0),.grp_fu_2334_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2334_p_ce),.grp_fu_2338_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2338_p_din0),.grp_fu_2338_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2338_p_din1),.grp_fu_2338_p_dout0(grp_fu_144_p_dout0),.grp_fu_2338_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2338_p_ce),.grp_fu_2342_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2342_p_din0),.grp_fu_2342_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2342_p_din1),.grp_fu_2342_p_dout0(grp_fu_148_p_dout0),.grp_fu_2342_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2342_p_ce),.grp_fu_2346_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2346_p_din0),.grp_fu_2346_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2346_p_din1),.grp_fu_2346_p_dout0(grp_fu_152_p_dout0),.grp_fu_2346_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2346_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_210 grp_kernel_2mm_node0_Pipeline_label_210_fu_542(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_ap_ready),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_0_d1),.v229_0_q1(v229_0_q1),.phi_mul(phi_mul_load_reg_1751),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v228_ce1),.v228_q1(v228_q1),.mul_ln49(mul_ln49_reg_2035),.mul_ln75(mul_ln75_reg_2040),.mul_ln101(mul_ln101_reg_2045),.mul_ln127(mul_ln127_reg_2050),.mul_ln140(mul_ln140_reg_1944),.v4(v4),.cmp11(cmp11_reg_1812),.v11_1(v11_1_reg_2065),.v24_1(v24_1_reg_2070),.v35_1(v35_1_reg_2075),.v46_1(v46_1_reg_2080),.v57_1(v57_1_reg_2085),.v68_1(v68_1_reg_2090),.v79_1(v79_1_reg_2095),.v90_1(v90_1_reg_2100),.v101_1(v101_1_reg_2105),.grp_fu_2326_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2326_p_din0),.grp_fu_2326_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2326_p_din1),.grp_fu_2326_p_opcode(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2326_p_opcode),.grp_fu_2326_p_dout0(grp_fu_136_p_dout0),.grp_fu_2326_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2326_p_ce),.grp_fu_2330_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2330_p_din0),.grp_fu_2330_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2330_p_din1),.grp_fu_2330_p_opcode(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2330_p_opcode),.grp_fu_2330_p_dout0(grp_fu_2330_p2),.grp_fu_2330_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2330_p_ce),.grp_fu_2334_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2334_p_din0),.grp_fu_2334_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2334_p_din1),.grp_fu_2334_p_dout0(grp_fu_140_p_dout0),.grp_fu_2334_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2334_p_ce),.grp_fu_2338_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2338_p_din0),.grp_fu_2338_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2338_p_din1),.grp_fu_2338_p_dout0(grp_fu_144_p_dout0),.grp_fu_2338_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2338_p_ce),.grp_fu_2342_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2342_p_din0),.grp_fu_2342_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2342_p_din1),.grp_fu_2342_p_dout0(grp_fu_148_p_dout0),.grp_fu_2342_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2342_p_ce),.grp_fu_2346_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2346_p_din0),.grp_fu_2346_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2346_p_din1),.grp_fu_2346_p_dout0(grp_fu_152_p_dout0),.grp_fu_2346_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2346_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_211 grp_kernel_2mm_node0_Pipeline_label_211_fu_569(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_ap_ready),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_0_d1),.v229_0_q1(v229_0_q1),.phi_mul(phi_mul_load_reg_1751),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v228_ce1),.v228_q1(v228_q1),.mul_ln34_1(mul_ln34_1_reg_2150),.mul_ln62_1(mul_ln62_1_reg_2155),.mul_ln88_1(mul_ln88_1_reg_2160),.mul_ln114_1(mul_ln114_1_reg_2165),.mul_ln140_1(mul_ln140_1_reg_2170),.v4(v4),.cmp11(cmp11_reg_1812),.v11_2(v11_2_reg_2186),.v24_2(v24_2_reg_2191),.v35_2(v35_2_reg_2196),.v46_2(v46_2_reg_2201),.v57_2(v57_2_reg_2206),.v68_2(v68_2_reg_2211),.v79_2(v79_2_reg_2216),.v90_2(v90_2_reg_2221),.v101_2(v101_2_reg_2226),.grp_fu_2326_p_din0(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2326_p_din0),.grp_fu_2326_p_din1(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2326_p_din1),.grp_fu_2326_p_opcode(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2326_p_opcode),.grp_fu_2326_p_dout0(grp_fu_136_p_dout0),.grp_fu_2326_p_ce(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2326_p_ce),.grp_fu_2330_p_din0(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2330_p_din0),.grp_fu_2330_p_din1(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2330_p_din1),.grp_fu_2330_p_opcode(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2330_p_opcode),.grp_fu_2330_p_dout0(grp_fu_2330_p2),.grp_fu_2330_p_ce(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2330_p_ce),.grp_fu_2334_p_din0(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2334_p_din0),.grp_fu_2334_p_din1(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2334_p_din1),.grp_fu_2334_p_dout0(grp_fu_140_p_dout0),.grp_fu_2334_p_ce(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2334_p_ce),.grp_fu_2338_p_din0(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2338_p_din0),.grp_fu_2338_p_din1(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2338_p_din1),.grp_fu_2338_p_dout0(grp_fu_144_p_dout0),.grp_fu_2338_p_ce(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2338_p_ce),.grp_fu_2342_p_din0(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2342_p_din0),.grp_fu_2342_p_din1(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2342_p_din1),.grp_fu_2342_p_dout0(grp_fu_148_p_dout0),.grp_fu_2342_p_ce(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2342_p_ce),.grp_fu_2346_p_din0(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2346_p_din0),.grp_fu_2346_p_din1(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2346_p_din1),.grp_fu_2346_p_dout0(grp_fu_152_p_dout0),.grp_fu_2346_p_ce(grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2346_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_212 grp_kernel_2mm_node0_Pipeline_label_212_fu_596(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_ap_ready),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_0_d1),.v229_0_q1(v229_0_q1),.phi_mul(phi_mul_load_reg_1751),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v228_ce1),.v228_q1(v228_q1),.mul_ln49_1(mul_ln49_1_reg_2261),.mul_ln75_1(mul_ln75_1_reg_2266),.mul_ln101_1(mul_ln101_1_reg_2271),.mul_ln127_1(mul_ln127_1_reg_2276),.mul_ln140_1(mul_ln140_1_reg_2170),.v4(v4),.cmp11(cmp11_reg_1812),.v11_3(v11_3_reg_2281),.v24_3(v24_3_reg_2286),.v35_3(v35_3_reg_2291),.v46_3(v46_3_reg_2296),.v57_3(v57_3_reg_2301),.v68_3(v68_3_reg_2306),.v79_3(v79_3_reg_2311),.v90_3(v90_3_reg_2316),.v101_3(v101_3_reg_2321),.grp_fu_2326_p_din0(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2326_p_din0),.grp_fu_2326_p_din1(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2326_p_din1),.grp_fu_2326_p_opcode(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2326_p_opcode),.grp_fu_2326_p_dout0(grp_fu_136_p_dout0),.grp_fu_2326_p_ce(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2326_p_ce),.grp_fu_2330_p_din0(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2330_p_din0),.grp_fu_2330_p_din1(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2330_p_din1),.grp_fu_2330_p_opcode(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2330_p_opcode),.grp_fu_2330_p_dout0(grp_fu_2330_p2),.grp_fu_2330_p_ce(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2330_p_ce),.grp_fu_2334_p_din0(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2334_p_din0),.grp_fu_2334_p_din1(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2334_p_din1),.grp_fu_2334_p_dout0(grp_fu_140_p_dout0),.grp_fu_2334_p_ce(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2334_p_ce),.grp_fu_2338_p_din0(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2338_p_din0),.grp_fu_2338_p_din1(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2338_p_din1),.grp_fu_2338_p_dout0(grp_fu_144_p_dout0),.grp_fu_2338_p_ce(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2338_p_ce),.grp_fu_2342_p_din0(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2342_p_din0),.grp_fu_2342_p_din1(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2342_p_din1),.grp_fu_2342_p_dout0(grp_fu_148_p_dout0),.grp_fu_2342_p_ce(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2342_p_ce),.grp_fu_2346_p_din0(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2346_p_din0),.grp_fu_2346_p_din1(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2346_p_din1),.grp_fu_2346_p_dout0(grp_fu_152_p_dout0),.grp_fu_2346_p_ce(grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2346_p_ce));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U538(.din0(mul_ln34_fu_830_p0),.din1(mul_ln34_fu_830_p1),.dout(mul_ln34_fu_830_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U539(.din0(mul_ln62_fu_847_p0),.din1(mul_ln62_fu_847_p1),.dout(mul_ln62_fu_847_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U540(.din0(mul_ln88_fu_862_p0),.din1(mul_ln88_fu_862_p1),.dout(mul_ln88_fu_862_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U541(.din0(mul_ln114_fu_877_p0),.din1(mul_ln114_fu_877_p1),.dout(mul_ln114_fu_877_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U542(.din0(mul_ln140_fu_892_p0),.din1(mul_ln140_fu_892_p1),.dout(mul_ln140_fu_892_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U543(.din0(mul_ln49_fu_984_p0),.din1(mul_ln49_fu_984_p1),.dout(mul_ln49_fu_984_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U544(.din0(mul_ln75_fu_999_p0),.din1(mul_ln75_fu_999_p1),.dout(mul_ln75_fu_999_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U545(.din0(mul_ln101_fu_1014_p0),.din1(mul_ln101_fu_1014_p1),.dout(mul_ln101_fu_1014_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U546(.din0(mul_ln127_fu_1029_p0),.din1(mul_ln127_fu_1029_p1),.dout(mul_ln127_fu_1029_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U547(.din0(mul_ln34_1_fu_1129_p0),.din1(mul_ln34_1_fu_1129_p1),.dout(mul_ln34_1_fu_1129_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U548(.din0(mul_ln62_1_fu_1144_p0),.din1(mul_ln62_1_fu_1144_p1),.dout(mul_ln62_1_fu_1144_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U549(.din0(mul_ln88_1_fu_1159_p0),.din1(mul_ln88_1_fu_1159_p1),.dout(mul_ln88_1_fu_1159_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U550(.din0(mul_ln114_1_fu_1174_p0),.din1(mul_ln114_1_fu_1174_p1),.dout(mul_ln114_1_fu_1174_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U551(.din0(mul_ln140_1_fu_1189_p0),.din1(mul_ln140_1_fu_1189_p1),.dout(mul_ln140_1_fu_1189_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U552(.din0(mul_ln49_1_fu_1281_p0),.din1(mul_ln49_1_fu_1281_p1),.dout(mul_ln49_1_fu_1281_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U553(.din0(mul_ln75_1_fu_1296_p0),.din1(mul_ln75_1_fu_1296_p1),.dout(mul_ln75_1_fu_1296_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U554(.din0(mul_ln101_1_fu_1311_p0),.din1(mul_ln101_1_fu_1311_p1),.dout(mul_ln101_1_fu_1311_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U555(.din0(mul_ln127_1_fu_1326_p0),.din1(mul_ln127_1_fu_1326_p1),.dout(mul_ln127_1_fu_1326_p2));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U556(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1377_p0),.din1(grp_fu_1377_p1),.din2(grp_fu_1377_p2),.ce(1'b1),.dout(grp_fu_1377_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U557(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1385_p0),.din1(grp_fu_1385_p1),.din2(grp_fu_1385_p2),.ce(1'b1),.dout(grp_fu_1385_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U558(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1393_p0),.din1(grp_fu_1393_p1),.din2(grp_fu_1393_p2),.ce(1'b1),.dout(grp_fu_1393_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U559(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1401_p0),.din1(grp_fu_1401_p1),.din2(grp_fu_1401_p2),.ce(1'b1),.dout(grp_fu_1401_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U560(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_503),.din1(grp_fu_1409_p1),.din2(grp_fu_1409_p2),.din3(grp_fu_1409_p3),.ce(1'b1),.dout(grp_fu_1409_p4));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U561(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_503),.din1(grp_fu_1419_p1),.din2(grp_fu_1419_p2),.din3(grp_fu_1419_p3),.ce(1'b1),.dout(grp_fu_1419_p4));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U562(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_503),.din1(grp_fu_1429_p1),.din2(grp_fu_1429_p2),.din3(grp_fu_1429_p3),.ce(1'b1),.dout(grp_fu_1429_p4));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U563(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_503),.din1(grp_fu_1439_p1),.din2(grp_fu_1439_p2),.din3(grp_fu_1439_p3),.ce(1'b1),.dout(grp_fu_1439_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U564(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_503),.din1(grp_fu_1449_p1),.din2(grp_fu_1449_p2),.din3(grp_fu_1449_p3),.ce(1'b1),.dout(grp_fu_1449_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U565(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_503),.din1(grp_fu_1459_p1),.din2(grp_fu_1459_p2),.din3(grp_fu_1459_p3),.ce(1'b1),.dout(grp_fu_1459_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U566(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_503),.din1(grp_fu_1469_p1),.din2(grp_fu_1469_p2),.din3(grp_fu_1469_p3),.ce(1'b1),.dout(grp_fu_1469_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U567(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_503),.din1(grp_fu_1479_p1),.din2(grp_fu_1479_p2),.din3(grp_fu_1479_p3),.ce(1'b1),.dout(grp_fu_1479_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U568(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_503),.din1(grp_fu_1489_p1),.din2(grp_fu_1489_p2),.din3(grp_fu_1489_p3),.ce(1'b1),.dout(grp_fu_1489_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U569(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_503),.din1(grp_fu_1499_p1),.din2(grp_fu_1499_p2),.din3(grp_fu_1499_p3),.ce(1'b1),.dout(grp_fu_1499_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U570(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_503),.din1(grp_fu_1509_p1),.din2(grp_fu_1509_p2),.din3(grp_fu_1509_p3),.ce(grp_fu_1509_ce),.dout(grp_fu_1509_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U571(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_503),.din1(grp_fu_1519_p1),.din2(grp_fu_1519_p2),.din3(grp_fu_1519_p3),.ce(grp_fu_1519_ce),.dout(grp_fu_1519_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U572(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_503),.din1(grp_fu_1529_p1),.din2(grp_fu_1529_p2),.din3(grp_fu_1529_p3),.ce(grp_fu_1529_ce),.dout(grp_fu_1529_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U573(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_503),.din1(grp_fu_1539_p1),.din2(grp_fu_1539_p2),.din3(grp_fu_1539_p3),.ce(grp_fu_1539_ce),.dout(grp_fu_1539_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U574(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_503),.din1(grp_fu_1549_p1),.din2(grp_fu_1549_p2),.din3(grp_fu_1549_p3),.ce(grp_fu_1549_ce),.dout(grp_fu_1549_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U575(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_503),.din1(grp_fu_1559_p1),.din2(grp_fu_1559_p2),.din3(grp_fu_1559_p3),.ce(grp_fu_1559_ce),.dout(grp_fu_1559_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U576(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_503),.din1(grp_fu_1569_p1),.din2(grp_fu_1569_p2),.din3(grp_fu_1569_p3),.ce(grp_fu_1569_ce),.dout(grp_fu_1569_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U577(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_503),.din1(grp_fu_1579_p1),.din2(grp_fu_1579_p2),.din3(grp_fu_1579_p3),.ce(grp_fu_1579_ce),.dout(grp_fu_1579_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U578(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_503),.din1(grp_fu_1589_p1),.din2(grp_fu_1589_p2),.din3(grp_fu_1589_p3),.ce(grp_fu_1589_ce),.dout(grp_fu_1589_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U579(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_503),.din1(grp_fu_1599_p1),.din2(grp_fu_1599_p2),.din3(grp_fu_1599_p3),.ce(grp_fu_1599_ce),.dout(grp_fu_1599_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U580(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_503),.din1(grp_fu_1609_p1),.din2(grp_fu_1609_p2),.din3(grp_fu_1609_p3),.ce(grp_fu_1609_ce),.dout(grp_fu_1609_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U581(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_503),.din1(grp_fu_1619_p1),.din2(grp_fu_1619_p2),.din3(grp_fu_1619_p3),.ce(grp_fu_1619_ce),.dout(grp_fu_1619_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U582(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_503),.din1(grp_fu_1629_p1),.din2(grp_fu_1629_p2),.din3(grp_fu_1629_p3),.ce(grp_fu_1629_ce),.dout(grp_fu_1629_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U583(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_503),.din1(grp_fu_1639_p1),.din2(grp_fu_1639_p2),.din3(grp_fu_1639_p3),.ce(grp_fu_1639_ce),.dout(grp_fu_1639_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U584(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_503),.din1(grp_fu_1649_p1),.din2(grp_fu_1649_p2),.din3(grp_fu_1649_p3),.ce(grp_fu_1649_ce),.dout(grp_fu_1649_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U585(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_503),.din1(grp_fu_1659_p1),.din2(grp_fu_1659_p2),.din3(grp_fu_1659_p3),.ce(grp_fu_1659_ce),.dout(grp_fu_1659_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U586(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_503),.din1(grp_fu_1669_p1),.din2(grp_fu_1669_p2),.din3(grp_fu_1669_p3),.ce(1'b1),.dout(grp_fu_1669_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U587(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_503),.din1(grp_fu_1679_p1),.din2(grp_fu_1679_p2),.din3(grp_fu_1679_p3),.ce(1'b1),.dout(grp_fu_1679_p4));
kernel_2mm_ama_addmuladd_8ns_6ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_6ns_8ns_8ns_16_4_1_U588(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_503),.din1(grp_fu_1689_p1),.din2(grp_fu_1689_p2),.din3(grp_fu_1689_p3),.ce(grp_fu_1689_ce),.dout(grp_fu_1689_p4));
kernel_2mm_ama_addmuladd_8ns_6ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_6ns_8ns_8ns_16_4_1_U589(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_503),.din1(grp_fu_1699_p1),.din2(grp_fu_1699_p2),.din3(grp_fu_1699_p3),.ce(grp_fu_1699_ce),.dout(grp_fu_1699_p4));
kernel_2mm_ama_addmuladd_8ns_6ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_6ns_8ns_8ns_16_4_1_U590(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_503),.din1(grp_fu_1709_p1),.din2(grp_fu_1709_p2),.din3(grp_fu_1709_p3),.ce(grp_fu_1709_ce),.dout(grp_fu_1709_p4));
kernel_2mm_ama_addmuladd_8ns_6ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_6ns_8ns_8ns_16_4_1_U591(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_503),.din1(grp_fu_1719_p1),.din2(grp_fu_1719_p2),.din3(grp_fu_1719_p3),.ce(grp_fu_1719_ce),.dout(grp_fu_1719_p4));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U593(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2330_p0),.din1(grp_fu_2330_p1),.ce(grp_fu_2330_ce),.dout(grp_fu_2330_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_210_fu_542_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node0_Pipeline_label_210_fu_542_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_210_fu_542_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_210_fu_542_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_211_fu_569_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state21)) begin
            grp_kernel_2mm_node0_Pipeline_label_211_fu_569_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_211_fu_569_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_211_fu_569_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_212_fu_596_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state25)) begin
            grp_kernel_2mm_node0_Pipeline_label_212_fu_596_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_212_fu_596_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_212_fu_596_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_2_fu_515_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_515_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_515_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_515_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_fu_186 <= 16'd0;
    end else if (((icmp_ln32_fu_707_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_mul_fu_186 <= add_ln31_1_reg_1759;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_190 <= 8'd0;
    end else if (((icmp_ln32_fu_707_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v5_fu_190 <= add_ln31_reg_1767;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln31_fu_685_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v6_reg_503 <= 8'd0;
    end else if (((grp_kernel_2mm_node0_Pipeline_label_212_fu_596_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26))) begin
        v6_reg_503 <= add_ln32_3_reg_1854;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln31_1_reg_1759 <= add_ln31_1_fu_679_p2;
        add_ln31_reg_1767 <= add_ln31_fu_691_p2;
        cmp11_reg_1812 <= cmp11_fu_701_p2;
        phi_mul_load_reg_1751 <= phi_mul_fu_186;
        zext_ln31_reg_1772[7 : 0] <= zext_ln31_fu_697_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_3_reg_1854 <= add_ln32_3_fu_739_p2;
        lshr_ln_reg_1828 <= {{v6_reg_503[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        mul_ln101_1_reg_2271 <= mul_ln101_1_fu_1311_p2;
        mul_ln127_1_reg_2276 <= mul_ln127_1_fu_1326_p2;
        mul_ln49_1_reg_2261 <= mul_ln49_1_fu_1281_p2;
        mul_ln75_1_reg_2266 <= mul_ln75_1_fu_1296_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln101_reg_2045 <= mul_ln101_fu_1014_p2;
        mul_ln127_reg_2050 <= mul_ln127_fu_1029_p2;
        mul_ln49_reg_2035 <= mul_ln49_fu_984_p2;
        mul_ln75_reg_2040 <= mul_ln75_fu_999_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        mul_ln114_1_reg_2165 <= mul_ln114_1_fu_1174_p2;
        mul_ln140_1_reg_2170 <= mul_ln140_1_fu_1189_p2;
        mul_ln34_1_reg_2150 <= mul_ln34_1_fu_1129_p2;
        mul_ln62_1_reg_2155 <= mul_ln62_1_fu_1144_p2;
        mul_ln88_1_reg_2160 <= mul_ln88_1_fu_1159_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        mul_ln114_reg_1939 <= mul_ln114_fu_877_p2;
        mul_ln140_reg_1944 <= mul_ln140_fu_892_p2;
        mul_ln34_reg_1924 <= mul_ln34_fu_830_p2;
        mul_ln62_reg_1929 <= mul_ln62_fu_847_p2;
        mul_ln88_reg_1934 <= mul_ln88_fu_862_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7))) begin
        reg_623 <= v224_q1;
        reg_627 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_631 <= v224_q1;
        reg_635 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9))) begin
        reg_639 <= v224_q1;
        reg_643 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10))) begin
        reg_647 <= v224_q1;
        reg_651 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        reg_655 <= v224_q1;
        reg_659 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_9_reg_1859 <= {{v6_reg_503[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        v101_1_reg_2105 <= v101_1_fu_1083_p1;
        v11_1_reg_2065 <= v11_1_fu_1043_p1;
        v24_1_reg_2070 <= v24_1_fu_1048_p1;
        v35_1_reg_2075 <= v35_1_fu_1053_p1;
        v46_1_reg_2080 <= v46_1_fu_1058_p1;
        v57_1_reg_2085 <= v57_1_fu_1063_p1;
        v68_1_reg_2090 <= v68_1_fu_1068_p1;
        v79_1_reg_2095 <= v79_1_fu_1073_p1;
        v90_1_reg_2100 <= v90_1_fu_1078_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v101_2_reg_2226 <= v101_2_fu_1243_p1;
        v11_2_reg_2186 <= v11_2_fu_1203_p1;
        v24_2_reg_2191 <= v24_2_fu_1208_p1;
        v35_2_reg_2196 <= v35_2_fu_1213_p1;
        v46_2_reg_2201 <= v46_2_fu_1218_p1;
        v57_2_reg_2206 <= v57_2_fu_1223_p1;
        v68_2_reg_2211 <= v68_2_fu_1228_p1;
        v79_2_reg_2216 <= v79_2_fu_1233_p1;
        v90_2_reg_2221 <= v90_2_fu_1238_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        v101_3_reg_2321 <= v101_3_fu_1372_p1;
        v11_3_reg_2281 <= v11_3_fu_1332_p1;
        v24_3_reg_2286 <= v24_3_fu_1337_p1;
        v35_3_reg_2291 <= v35_3_fu_1342_p1;
        v46_3_reg_2296 <= v46_3_fu_1347_p1;
        v57_3_reg_2301 <= v57_3_fu_1352_p1;
        v68_3_reg_2306 <= v68_3_fu_1357_p1;
        v79_3_reg_2311 <= v79_3_fu_1362_p1;
        v90_3_reg_2316 <= v90_3_fu_1367_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        v101_reg_2000 <= v101_fu_946_p1;
        v11_reg_1960 <= v11_fu_906_p1;
        v24_reg_1965 <= v24_fu_911_p1;
        v35_reg_1970 <= v35_fu_916_p1;
        v46_reg_1975 <= v46_fu_921_p1;
        v57_reg_1980 <= v57_fu_926_p1;
        v68_reg_1985 <= v68_fu_931_p1;
        v79_reg_1990 <= v79_fu_936_p1;
        v90_reg_1995 <= v90_fu_941_p1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_515_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
    end
end
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_210_fu_542_ap_done == 1'b0)) begin
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
    if ((grp_kernel_2mm_node0_Pipeline_label_211_fu_569_ap_done == 1'b0)) begin
        ap_ST_fsm_state22_blk = 1'b1;
    end else begin
        ap_ST_fsm_state22_blk = 1'b0;
    end
end
assign ap_ST_fsm_state23_blk = 1'b0;
assign ap_ST_fsm_state24_blk = 1'b0;
assign ap_ST_fsm_state25_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_212_fu_596_ap_done == 1'b0)) begin
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
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln31_fu_685_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
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
    if (((icmp_ln31_fu_685_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_515_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1509_ce = 1'b1;
    end else begin
        grp_fu_1509_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_515_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1519_ce = 1'b1;
    end else begin
        grp_fu_1519_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_515_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1529_ce = 1'b1;
    end else begin
        grp_fu_1529_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_515_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1539_ce = 1'b1;
    end else begin
        grp_fu_1539_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_515_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1549_ce = 1'b1;
    end else begin
        grp_fu_1549_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_515_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1559_ce = 1'b1;
    end else begin
        grp_fu_1559_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_515_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1569_ce = 1'b1;
    end else begin
        grp_fu_1569_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_515_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1579_ce = 1'b1;
    end else begin
        grp_fu_1579_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node0_Pipeline_label_210_fu_542_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1589_ce = 1'b1;
    end else begin
        grp_fu_1589_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node0_Pipeline_label_210_fu_542_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1599_ce = 1'b1;
    end else begin
        grp_fu_1599_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node0_Pipeline_label_210_fu_542_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1609_ce = 1'b1;
    end else begin
        grp_fu_1609_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node0_Pipeline_label_210_fu_542_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1619_ce = 1'b1;
    end else begin
        grp_fu_1619_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node0_Pipeline_label_210_fu_542_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1629_ce = 1'b1;
    end else begin
        grp_fu_1629_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node0_Pipeline_label_210_fu_542_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1639_ce = 1'b1;
    end else begin
        grp_fu_1639_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node0_Pipeline_label_210_fu_542_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1649_ce = 1'b1;
    end else begin
        grp_fu_1649_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node0_Pipeline_label_210_fu_542_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1659_ce = 1'b1;
    end else begin
        grp_fu_1659_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state21) | ((grp_kernel_2mm_node0_Pipeline_label_211_fu_569_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22)))) begin
        grp_fu_1689_ce = 1'b1;
    end else begin
        grp_fu_1689_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state21) | ((grp_kernel_2mm_node0_Pipeline_label_211_fu_569_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22)))) begin
        grp_fu_1699_ce = 1'b1;
    end else begin
        grp_fu_1699_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state21) | ((grp_kernel_2mm_node0_Pipeline_label_211_fu_569_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22)))) begin
        grp_fu_1709_ce = 1'b1;
    end else begin
        grp_fu_1709_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state21) | ((grp_kernel_2mm_node0_Pipeline_label_211_fu_569_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22)))) begin
        grp_fu_1719_ce = 1'b1;
    end else begin
        grp_fu_1719_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2326_ce = grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2326_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2326_ce = grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2326_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2326_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2326_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2326_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2326_p_ce;
    end else begin
        grp_fu_2326_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2326_p0 = grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2326_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2326_p0 = grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2326_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2326_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2326_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2326_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2326_p_din0;
    end else begin
        grp_fu_2326_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2326_p1 = grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2326_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2326_p1 = grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2326_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2326_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2326_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2326_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2326_p_din1;
    end else begin
        grp_fu_2326_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2330_ce = grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2330_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2330_ce = grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2330_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2330_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2330_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2330_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2330_p_ce;
    end else begin
        grp_fu_2330_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2330_p0 = grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2330_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2330_p0 = grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2330_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2330_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2330_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2330_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2330_p_din0;
    end else begin
        grp_fu_2330_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2330_p1 = grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2330_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2330_p1 = grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2330_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2330_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2330_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2330_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2330_p_din1;
    end else begin
        grp_fu_2330_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2334_ce = grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2334_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2334_ce = grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2334_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2334_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2334_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2334_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2334_p_ce;
    end else begin
        grp_fu_2334_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2334_p0 = grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2334_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2334_p0 = grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2334_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2334_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2334_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2334_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2334_p_din0;
    end else begin
        grp_fu_2334_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2334_p1 = grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2334_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2334_p1 = grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2334_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2334_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2334_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2334_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2334_p_din1;
    end else begin
        grp_fu_2334_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2338_ce = grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2338_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2338_ce = grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2338_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2338_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2338_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2338_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2338_p_ce;
    end else begin
        grp_fu_2338_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2338_p0 = grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2338_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2338_p0 = grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2338_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2338_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2338_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2338_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2338_p_din0;
    end else begin
        grp_fu_2338_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2338_p1 = grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2338_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2338_p1 = grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2338_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2338_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2338_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2338_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2338_p_din1;
    end else begin
        grp_fu_2338_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2342_ce = grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2342_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2342_ce = grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2342_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2342_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2342_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2342_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2342_p_ce;
    end else begin
        grp_fu_2342_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2342_p0 = grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2342_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2342_p0 = grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2342_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2342_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2342_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2342_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2342_p_din0;
    end else begin
        grp_fu_2342_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2342_p1 = grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2342_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2342_p1 = grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2342_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2342_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2342_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2342_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2342_p_din1;
    end else begin
        grp_fu_2342_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2346_ce = grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2346_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2346_ce = grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2346_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2346_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2346_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2346_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2346_p_ce;
    end else begin
        grp_fu_2346_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2346_p0 = grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2346_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2346_p0 = grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2346_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2346_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2346_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2346_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2346_p_din0;
    end else begin
        grp_fu_2346_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2346_p1 = grp_kernel_2mm_node0_Pipeline_label_212_fu_596_grp_fu_2346_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2346_p1 = grp_kernel_2mm_node0_Pipeline_label_211_fu_569_grp_fu_2346_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2346_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_542_grp_fu_2346_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2346_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_515_grp_fu_2346_p_din1;
    end else begin
        grp_fu_2346_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v224_address0_local = p_cast790_fu_1268_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v224_address0_local = p_cast788_fu_1260_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v224_address0_local = p_cast786_fu_1252_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        v224_address0_local = p_cast784_fu_1199_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v224_address0_local = p_cast782_fu_1116_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_address0_local = p_cast780_fu_1108_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v224_address0_local = p_cast778_fu_1100_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v224_address0_local = p_cast776_fu_1092_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_address0_local = p_cast774_fu_1039_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_address0_local = p_cast772_fu_971_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_address0_local = p_cast770_fu_963_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_address0_local = p_cast768_fu_955_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_address0_local = p_cast766_fu_902_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address0_local = p_cast764_fu_823_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address0_local = p_cast762_fu_815_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address0_local = p_cast760_fu_807_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address0_local = p_cast758_fu_799_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_address0_local = p_cast_fu_791_p1;
    end else begin
        v224_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v224_address1_local = p_cast789_fu_1264_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v224_address1_local = p_cast787_fu_1256_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v224_address1_local = p_cast785_fu_1248_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        v224_address1_local = p_cast783_fu_1195_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v224_address1_local = p_cast781_fu_1112_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_address1_local = p_cast779_fu_1104_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v224_address1_local = p_cast777_fu_1096_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v224_address1_local = p_cast775_fu_1088_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_address1_local = p_cast773_fu_1035_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_address1_local = p_cast771_fu_967_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_address1_local = p_cast769_fu_959_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_address1_local = p_cast767_fu_951_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_address1_local = p_cast765_fu_898_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address1_local = p_cast763_fu_819_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address1_local = p_cast761_fu_811_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address1_local = p_cast759_fu_803_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address1_local = p_cast757_fu_795_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_address1_local = p_cast756_fu_787_p1;
    end else begin
        v224_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | ((grp_kernel_2mm_node0_Pipeline_label_211_fu_569_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22)) | ((grp_kernel_2mm_node0_Pipeline_label_210_fu_542_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_515_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        v224_ce0_local = 1'b1;
    end else begin
        v224_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | ((grp_kernel_2mm_node0_Pipeline_label_211_fu_569_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22)) | ((grp_kernel_2mm_node0_Pipeline_label_210_fu_542_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_515_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        v224_ce1_local = 1'b1;
    end else begin
        v224_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v228_address0;
    end else begin
        v228_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v228_address1;
    end else begin
        v228_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v228_ce0;
    end else begin
        v228_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v228_ce1;
    end else begin
        v228_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_0_address0;
    end else begin
        v229_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_0_address1;
    end else begin
        v229_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_0_ce0;
    end else begin
        v229_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_0_ce1;
    end else begin
        v229_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_0_d0;
    end else begin
        v229_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_0_d1;
    end else begin
        v229_0_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_0_we0;
    end else begin
        v229_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_0_we1;
    end else begin
        v229_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_1_address0;
    end else begin
        v229_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_1_address1;
    end else begin
        v229_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_1_ce0;
    end else begin
        v229_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_1_ce1;
    end else begin
        v229_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_1_d0;
    end else begin
        v229_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_1_d1;
    end else begin
        v229_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_1_we0;
    end else begin
        v229_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_212_fu_596_v229_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_211_fu_569_v229_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_542_v229_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_515_v229_1_we1;
    end else begin
        v229_1_we1 = 1'b0;
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
            if (((icmp_ln31_fu_685_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln32_fu_707_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_515_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_210_fu_542_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_211_fu_569_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_212_fu_596_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26))) begin
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
assign add_ln31_1_fu_679_p2 = (phi_mul_fu_186 + 16'd220);
assign add_ln31_fu_691_p2 = (v5_fu_190 + 8'd1);
assign add_ln32_3_fu_739_p2 = (v6_reg_503 + 8'd36);
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
assign cmp11_fu_701_p2 = ((v5_fu_190 == 8'd0) ? 1'b1 : 1'b0);
assign empty_514_fu_853_p2 = (lshr_ln_reg_1828 + 7'd2);
assign empty_521_fu_868_p2 = (lshr_ln_reg_1828 + 7'd3);
assign empty_528_fu_883_p2 = (lshr_ln_reg_1828 + 7'd4);
assign empty_534_fu_975_p2 = (lshr_ln_reg_1828 + 7'd5);
assign empty_541_fu_990_p2 = (lshr_ln_reg_1828 + 7'd6);
assign empty_548_fu_1005_p2 = (lshr_ln_reg_1828 + 7'd7);
assign empty_555_fu_1020_p2 = (lshr_ln_reg_1828 + 7'd8);
assign empty_561_fu_1120_p2 = (lshr_ln_reg_1828 + 7'd9);
assign empty_568_fu_1135_p2 = (lshr_ln_reg_1828 + 7'd10);
assign empty_575_fu_1150_p2 = (lshr_ln_reg_1828 + 7'd11);
assign empty_582_fu_1165_p2 = (lshr_ln_reg_1828 + 7'd12);
assign empty_589_fu_1180_p2 = (lshr_ln_reg_1828 + 7'd13);
assign empty_595_fu_1272_p2 = (lshr_ln_reg_1828 + 7'd14);
assign empty_602_fu_1287_p2 = (lshr_ln_reg_1828 + 7'd15);
assign empty_609_fu_1302_p2 = (lshr_ln_reg_1828 + 7'd16);
assign empty_616_fu_1317_p2 = (lshr_ln_reg_1828 + 7'd17);
assign grp_fu_136_p_ce = grp_fu_2326_ce;
assign grp_fu_136_p_din0 = grp_fu_2326_p0;
assign grp_fu_136_p_din1 = grp_fu_2326_p1;
assign grp_fu_136_p_opcode = 2'd0;
assign grp_fu_1377_p0 = grp_fu_1377_p00;
assign grp_fu_1377_p00 = v6_reg_503;
assign grp_fu_1377_p1 = 16'd190;
assign grp_fu_1377_p2 = zext_ln31_reg_1772;
assign grp_fu_1385_p0 = grp_fu_1385_p00;
assign grp_fu_1385_p00 = tmp_s_fu_727_p3;
assign grp_fu_1385_p1 = 16'd190;
assign grp_fu_1385_p2 = zext_ln31_reg_1772;
assign grp_fu_1393_p0 = grp_fu_1393_p00;
assign grp_fu_1393_p00 = tmp_10_fu_763_p3;
assign grp_fu_1393_p1 = 16'd190;
assign grp_fu_1393_p2 = zext_ln31_reg_1772;
assign grp_fu_1401_p0 = grp_fu_1401_p00;
assign grp_fu_1401_p00 = tmp_12_fu_775_p3;
assign grp_fu_1401_p1 = 16'd190;
assign grp_fu_1401_p2 = zext_ln31_reg_1772;
assign grp_fu_1409_p1 = 8'd4;
assign grp_fu_1409_p2 = 16'd190;
assign grp_fu_1409_p3 = zext_ln31_reg_1772;
assign grp_fu_140_p_ce = grp_fu_2334_ce;
assign grp_fu_140_p_din0 = grp_fu_2334_p0;
assign grp_fu_140_p_din1 = grp_fu_2334_p1;
assign grp_fu_1419_p1 = 8'd5;
assign grp_fu_1419_p2 = 16'd190;
assign grp_fu_1419_p3 = zext_ln31_reg_1772;
assign grp_fu_1429_p1 = 8'd6;
assign grp_fu_1429_p2 = 16'd190;
assign grp_fu_1429_p3 = zext_ln31_reg_1772;
assign grp_fu_1439_p1 = 8'd7;
assign grp_fu_1439_p2 = 16'd190;
assign grp_fu_1439_p3 = zext_ln31_reg_1772;
assign grp_fu_1449_p1 = 8'd8;
assign grp_fu_1449_p2 = 16'd190;
assign grp_fu_1449_p3 = zext_ln31_reg_1772;
assign grp_fu_144_p_ce = grp_fu_2338_ce;
assign grp_fu_144_p_din0 = grp_fu_2338_p0;
assign grp_fu_144_p_din1 = grp_fu_2338_p1;
assign grp_fu_1459_p1 = 8'd9;
assign grp_fu_1459_p2 = 16'd190;
assign grp_fu_1459_p3 = zext_ln31_reg_1772;
assign grp_fu_1469_p1 = 8'd10;
assign grp_fu_1469_p2 = 16'd190;
assign grp_fu_1469_p3 = zext_ln31_reg_1772;
assign grp_fu_1479_p1 = 8'd11;
assign grp_fu_1479_p2 = 16'd190;
assign grp_fu_1479_p3 = zext_ln31_reg_1772;
assign grp_fu_1489_p1 = 8'd12;
assign grp_fu_1489_p2 = 16'd190;
assign grp_fu_1489_p3 = zext_ln31_reg_1772;
assign grp_fu_148_p_ce = grp_fu_2342_ce;
assign grp_fu_148_p_din0 = grp_fu_2342_p0;
assign grp_fu_148_p_din1 = grp_fu_2342_p1;
assign grp_fu_1499_p1 = 8'd13;
assign grp_fu_1499_p2 = 16'd190;
assign grp_fu_1499_p3 = zext_ln31_reg_1772;
assign grp_fu_1509_p1 = 8'd14;
assign grp_fu_1509_p2 = 16'd190;
assign grp_fu_1509_p3 = zext_ln31_reg_1772;
assign grp_fu_1519_p1 = 8'd15;
assign grp_fu_1519_p2 = 16'd190;
assign grp_fu_1519_p3 = zext_ln31_reg_1772;
assign grp_fu_1529_p1 = 8'd16;
assign grp_fu_1529_p2 = 16'd190;
assign grp_fu_1529_p3 = zext_ln31_reg_1772;
assign grp_fu_152_p_ce = grp_fu_2346_ce;
assign grp_fu_152_p_din0 = grp_fu_2346_p0;
assign grp_fu_152_p_din1 = grp_fu_2346_p1;
assign grp_fu_1539_p1 = 8'd17;
assign grp_fu_1539_p2 = 16'd190;
assign grp_fu_1539_p3 = zext_ln31_reg_1772;
assign grp_fu_1549_p1 = 8'd18;
assign grp_fu_1549_p2 = 16'd190;
assign grp_fu_1549_p3 = zext_ln31_reg_1772;
assign grp_fu_1559_p1 = 8'd19;
assign grp_fu_1559_p2 = 16'd190;
assign grp_fu_1559_p3 = zext_ln31_reg_1772;
assign grp_fu_1569_p1 = 8'd20;
assign grp_fu_1569_p2 = 16'd190;
assign grp_fu_1569_p3 = zext_ln31_reg_1772;
assign grp_fu_1579_p1 = 8'd21;
assign grp_fu_1579_p2 = 16'd190;
assign grp_fu_1579_p3 = zext_ln31_reg_1772;
assign grp_fu_1589_p1 = 8'd22;
assign grp_fu_1589_p2 = 16'd190;
assign grp_fu_1589_p3 = zext_ln31_reg_1772;
assign grp_fu_1599_p1 = 8'd23;
assign grp_fu_1599_p2 = 16'd190;
assign grp_fu_1599_p3 = zext_ln31_reg_1772;
assign grp_fu_1609_p1 = 8'd24;
assign grp_fu_1609_p2 = 16'd190;
assign grp_fu_1609_p3 = zext_ln31_reg_1772;
assign grp_fu_1619_p1 = 8'd25;
assign grp_fu_1619_p2 = 16'd190;
assign grp_fu_1619_p3 = zext_ln31_reg_1772;
assign grp_fu_1629_p1 = 8'd26;
assign grp_fu_1629_p2 = 16'd190;
assign grp_fu_1629_p3 = zext_ln31_reg_1772;
assign grp_fu_1639_p1 = 8'd27;
assign grp_fu_1639_p2 = 16'd190;
assign grp_fu_1639_p3 = zext_ln31_reg_1772;
assign grp_fu_1649_p1 = 8'd28;
assign grp_fu_1649_p2 = 16'd190;
assign grp_fu_1649_p3 = zext_ln31_reg_1772;
assign grp_fu_1659_p1 = 8'd29;
assign grp_fu_1659_p2 = 16'd190;
assign grp_fu_1659_p3 = zext_ln31_reg_1772;
assign grp_fu_1669_p1 = 8'd30;
assign grp_fu_1669_p2 = 16'd190;
assign grp_fu_1669_p3 = zext_ln31_reg_1772;
assign grp_fu_1679_p1 = 8'd31;
assign grp_fu_1679_p2 = 16'd190;
assign grp_fu_1679_p3 = zext_ln31_reg_1772;
assign grp_fu_1689_p1 = 8'd32;
assign grp_fu_1689_p2 = 16'd190;
assign grp_fu_1689_p3 = zext_ln31_reg_1772;
assign grp_fu_1699_p1 = 8'd33;
assign grp_fu_1699_p2 = 16'd190;
assign grp_fu_1699_p3 = zext_ln31_reg_1772;
assign grp_fu_1709_p1 = 8'd34;
assign grp_fu_1709_p2 = 16'd190;
assign grp_fu_1709_p3 = zext_ln31_reg_1772;
assign grp_fu_1719_p1 = 8'd35;
assign grp_fu_1719_p2 = 16'd190;
assign grp_fu_1719_p3 = zext_ln31_reg_1772;
assign grp_kernel_2mm_node0_Pipeline_label_210_fu_542_ap_start = grp_kernel_2mm_node0_Pipeline_label_210_fu_542_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_211_fu_569_ap_start = grp_kernel_2mm_node0_Pipeline_label_211_fu_569_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_212_fu_596_ap_start = grp_kernel_2mm_node0_Pipeline_label_212_fu_596_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_2_fu_515_ap_start = grp_kernel_2mm_node0_Pipeline_label_2_fu_515_ap_start_reg;
assign icmp_ln31_fu_685_p2 = ((v5_fu_190 == 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_707_p2 = ((v6_reg_503 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln_fu_717_p4 = {{v6_reg_503[7:1]}};
assign mul_ln101_1_fu_1311_p0 = mul_ln101_1_fu_1311_p00;
assign mul_ln101_1_fu_1311_p00 = empty_609_fu_1302_p2;
assign mul_ln101_1_fu_1311_p1 = 15'd220;
assign mul_ln101_fu_1014_p0 = mul_ln101_fu_1014_p00;
assign mul_ln101_fu_1014_p00 = empty_548_fu_1005_p2;
assign mul_ln101_fu_1014_p1 = 15'd220;
assign mul_ln114_1_fu_1174_p0 = mul_ln114_1_fu_1174_p00;
assign mul_ln114_1_fu_1174_p00 = empty_582_fu_1165_p2;
assign mul_ln114_1_fu_1174_p1 = 15'd220;
assign mul_ln114_fu_877_p0 = mul_ln114_fu_877_p00;
assign mul_ln114_fu_877_p00 = empty_521_fu_868_p2;
assign mul_ln114_fu_877_p1 = 15'd220;
assign mul_ln127_1_fu_1326_p0 = mul_ln127_1_fu_1326_p00;
assign mul_ln127_1_fu_1326_p00 = empty_616_fu_1317_p2;
assign mul_ln127_1_fu_1326_p1 = 15'd220;
assign mul_ln127_fu_1029_p0 = mul_ln127_fu_1029_p00;
assign mul_ln127_fu_1029_p00 = empty_555_fu_1020_p2;
assign mul_ln127_fu_1029_p1 = 15'd220;
assign mul_ln140_1_fu_1189_p0 = mul_ln140_1_fu_1189_p00;
assign mul_ln140_1_fu_1189_p00 = empty_589_fu_1180_p2;
assign mul_ln140_1_fu_1189_p1 = 15'd220;
assign mul_ln140_fu_892_p0 = mul_ln140_fu_892_p00;
assign mul_ln140_fu_892_p00 = empty_528_fu_883_p2;
assign mul_ln140_fu_892_p1 = 15'd220;
assign mul_ln34_1_fu_1129_p0 = mul_ln34_1_fu_1129_p00;
assign mul_ln34_1_fu_1129_p00 = empty_561_fu_1120_p2;
assign mul_ln34_1_fu_1129_p1 = 15'd220;
assign mul_ln34_fu_830_p0 = mul_ln34_fu_830_p00;
assign mul_ln34_fu_830_p00 = lshr_ln_reg_1828;
assign mul_ln34_fu_830_p1 = 15'd220;
assign mul_ln49_1_fu_1281_p0 = mul_ln49_1_fu_1281_p00;
assign mul_ln49_1_fu_1281_p00 = empty_595_fu_1272_p2;
assign mul_ln49_1_fu_1281_p1 = 15'd220;
assign mul_ln49_fu_984_p0 = mul_ln49_fu_984_p00;
assign mul_ln49_fu_984_p00 = empty_534_fu_975_p2;
assign mul_ln49_fu_984_p1 = 15'd220;
assign mul_ln62_1_fu_1144_p0 = mul_ln62_1_fu_1144_p00;
assign mul_ln62_1_fu_1144_p00 = empty_568_fu_1135_p2;
assign mul_ln62_1_fu_1144_p1 = 15'd220;
assign mul_ln62_fu_847_p0 = mul_ln62_fu_847_p00;
assign mul_ln62_fu_847_p00 = tmp_11_fu_836_p3;
assign mul_ln62_fu_847_p1 = 15'd220;
assign mul_ln75_1_fu_1296_p0 = mul_ln75_1_fu_1296_p00;
assign mul_ln75_1_fu_1296_p00 = empty_602_fu_1287_p2;
assign mul_ln75_1_fu_1296_p1 = 15'd220;
assign mul_ln75_fu_999_p0 = mul_ln75_fu_999_p00;
assign mul_ln75_fu_999_p00 = empty_541_fu_990_p2;
assign mul_ln75_fu_999_p1 = 15'd220;
assign mul_ln88_1_fu_1159_p0 = mul_ln88_1_fu_1159_p00;
assign mul_ln88_1_fu_1159_p00 = empty_575_fu_1150_p2;
assign mul_ln88_1_fu_1159_p1 = 15'd220;
assign mul_ln88_fu_862_p0 = mul_ln88_fu_862_p00;
assign mul_ln88_fu_862_p00 = empty_514_fu_853_p2;
assign mul_ln88_fu_862_p1 = 15'd220;
assign p_cast756_fu_787_p1 = grp_fu_1377_p3;
assign p_cast757_fu_795_p1 = grp_fu_1393_p3;
assign p_cast758_fu_799_p1 = grp_fu_1401_p3;
assign p_cast759_fu_803_p1 = grp_fu_1409_p4;
assign p_cast760_fu_807_p1 = grp_fu_1419_p4;
assign p_cast761_fu_811_p1 = grp_fu_1429_p4;
assign p_cast762_fu_815_p1 = grp_fu_1439_p4;
assign p_cast763_fu_819_p1 = grp_fu_1449_p4;
assign p_cast764_fu_823_p1 = grp_fu_1459_p4;
assign p_cast765_fu_898_p1 = grp_fu_1469_p4;
assign p_cast766_fu_902_p1 = grp_fu_1479_p4;
assign p_cast767_fu_951_p1 = grp_fu_1489_p4;
assign p_cast768_fu_955_p1 = grp_fu_1499_p4;
assign p_cast769_fu_959_p1 = grp_fu_1509_p4;
assign p_cast770_fu_963_p1 = grp_fu_1519_p4;
assign p_cast771_fu_967_p1 = grp_fu_1529_p4;
assign p_cast772_fu_971_p1 = grp_fu_1539_p4;
assign p_cast773_fu_1035_p1 = grp_fu_1549_p4;
assign p_cast774_fu_1039_p1 = grp_fu_1559_p4;
assign p_cast775_fu_1088_p1 = grp_fu_1569_p4;
assign p_cast776_fu_1092_p1 = grp_fu_1579_p4;
assign p_cast777_fu_1096_p1 = grp_fu_1589_p4;
assign p_cast778_fu_1100_p1 = grp_fu_1599_p4;
assign p_cast779_fu_1104_p1 = grp_fu_1609_p4;
assign p_cast780_fu_1108_p1 = grp_fu_1619_p4;
assign p_cast781_fu_1112_p1 = grp_fu_1629_p4;
assign p_cast782_fu_1116_p1 = grp_fu_1639_p4;
assign p_cast783_fu_1195_p1 = grp_fu_1649_p4;
assign p_cast784_fu_1199_p1 = grp_fu_1659_p4;
assign p_cast785_fu_1248_p1 = grp_fu_1669_p4;
assign p_cast786_fu_1252_p1 = grp_fu_1679_p4;
assign p_cast787_fu_1256_p1 = grp_fu_1689_p4;
assign p_cast788_fu_1260_p1 = grp_fu_1699_p4;
assign p_cast789_fu_1264_p1 = grp_fu_1709_p4;
assign p_cast790_fu_1268_p1 = grp_fu_1719_p4;
assign p_cast_fu_791_p1 = grp_fu_1385_p3;
assign tmp_10_fu_763_p3 = {{tmp_9_fu_753_p4}, {2'd2}};
assign tmp_11_fu_836_p3 = {{tmp_9_reg_1859}, {1'd1}};
assign tmp_12_fu_775_p3 = {{tmp_9_fu_753_p4}, {2'd3}};
assign tmp_9_fu_753_p4 = {{v6_reg_503[7:2]}};
assign tmp_s_fu_727_p3 = {{lshr_ln_fu_717_p4}, {1'd1}};
assign v101_1_fu_1083_p1 = reg_651;
assign v101_2_fu_1243_p1 = reg_655;
assign v101_3_fu_1372_p1 = reg_651;
assign v101_fu_946_p1 = reg_655;
assign v11_1_fu_1043_p1 = reg_659;
assign v11_2_fu_1203_p1 = reg_623;
assign v11_3_fu_1332_p1 = reg_659;
assign v11_fu_906_p1 = reg_623;
assign v224_address0 = v224_address0_local;
assign v224_address1 = v224_address1_local;
assign v224_ce0 = v224_ce0_local;
assign v224_ce1 = v224_ce1_local;
assign v236_read = v236_read_local;
assign v24_1_fu_1048_p1 = reg_623;
assign v24_2_fu_1208_p1 = reg_627;
assign v24_3_fu_1337_p1 = reg_623;
assign v24_fu_911_p1 = reg_627;
assign v35_1_fu_1053_p1 = reg_627;
assign v35_2_fu_1213_p1 = reg_631;
assign v35_3_fu_1342_p1 = reg_627;
assign v35_fu_916_p1 = reg_631;
assign v46_1_fu_1058_p1 = reg_631;
assign v46_2_fu_1218_p1 = reg_635;
assign v46_3_fu_1347_p1 = reg_631;
assign v46_fu_921_p1 = reg_635;
assign v57_1_fu_1063_p1 = reg_635;
assign v57_2_fu_1223_p1 = reg_639;
assign v57_3_fu_1352_p1 = reg_635;
assign v57_fu_926_p1 = reg_639;
assign v68_1_fu_1068_p1 = reg_639;
assign v68_2_fu_1228_p1 = reg_643;
assign v68_3_fu_1357_p1 = reg_639;
assign v68_fu_931_p1 = reg_643;
assign v79_1_fu_1073_p1 = reg_643;
assign v79_2_fu_1233_p1 = reg_647;
assign v79_3_fu_1362_p1 = reg_643;
assign v79_fu_936_p1 = reg_647;
assign v90_1_fu_1078_p1 = reg_647;
assign v90_2_fu_1238_p1 = reg_651;
assign v90_3_fu_1367_p1 = reg_647;
assign v90_fu_941_p1 = reg_651;
assign zext_ln31_fu_697_p1 = v5_fu_190;
always @ (posedge ap_clk) begin
    zext_ln31_reg_1772[15:8] <= 8'b00000000;
end
endmodule 