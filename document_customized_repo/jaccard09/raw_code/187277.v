module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_address0,v224_ce0,v224_q0,v224_address1,v224_ce1,v224_q1,v228_0_address0,v228_0_ce0,v228_0_q0,v228_0_address1,v228_0_ce1,v228_0_q1,v228_1_address0,v228_1_ce0,v228_1_q0,v228_1_address1,v228_1_ce1,v228_1_q1,v228_2_address0,v228_2_ce0,v228_2_q0,v228_2_address1,v228_2_ce1,v228_2_q1,v228_3_address0,v228_3_ce0,v228_3_q0,v228_3_address1,v228_3_ce1,v228_3_q1,v229_0_address0,v229_0_ce0,v229_0_we0,v229_0_d0,v229_0_q0,v229_0_address1,v229_0_ce1,v229_0_we1,v229_0_d1,v229_0_q1,v229_1_address0,v229_1_ce0,v229_1_we0,v229_1_d0,v229_1_q0,v229_1_address1,v229_1_ce1,v229_1_we1,v229_1_d1,v229_1_q1,v229_2_address0,v229_2_ce0,v229_2_we0,v229_2_d0,v229_2_q0,v229_2_address1,v229_2_ce1,v229_2_we1,v229_2_d1,v229_2_q1,v229_3_address0,v229_3_ce0,v229_3_we0,v229_3_d0,v229_3_q0,v229_3_address1,v229_3_ce1,v229_3_we1,v229_3_d1,v229_3_q1,v229_4_address0,v229_4_ce0,v229_4_we0,v229_4_d0,v229_4_q0,v229_4_address1,v229_4_ce1,v229_4_we1,v229_4_d1,v229_4_q1,v229_5_address0,v229_5_ce0,v229_5_we0,v229_5_d0,v229_5_q0,v229_5_address1,v229_5_ce1,v229_5_we1,v229_5_d1,v229_5_q1,v229_6_address0,v229_6_ce0,v229_6_we0,v229_6_d0,v229_6_q0,v229_6_address1,v229_6_ce1,v229_6_we1,v229_6_d1,v229_6_q1,v229_7_address0,v229_7_ce0,v229_7_we0,v229_7_d0,v229_7_q0,v229_7_address1,v229_7_ce1,v229_7_we1,v229_7_d1,v229_7_q1,v4,grp_fu_192_p_din0,grp_fu_192_p_din1,grp_fu_192_p_dout0,grp_fu_192_p_ce,grp_fu_196_p_din0,grp_fu_196_p_din1,grp_fu_196_p_dout0,grp_fu_196_p_ce,grp_fu_200_p_din0,grp_fu_200_p_din1,grp_fu_200_p_dout0,grp_fu_200_p_ce,grp_fu_204_p_din0,grp_fu_204_p_din1,grp_fu_204_p_dout0,grp_fu_204_p_ce,grp_fu_208_p_din0,grp_fu_208_p_din1,grp_fu_208_p_dout0,grp_fu_208_p_ce,grp_fu_228_p_din0,grp_fu_228_p_din1,grp_fu_228_p_opcode,grp_fu_228_p_dout0,grp_fu_228_p_ce,grp_fu_232_p_din0,grp_fu_232_p_din1,grp_fu_232_p_opcode,grp_fu_232_p_dout0,grp_fu_232_p_ce,grp_fu_236_p_din0,grp_fu_236_p_din1,grp_fu_236_p_opcode,grp_fu_236_p_dout0,grp_fu_236_p_ce,grp_fu_240_p_din0,grp_fu_240_p_din1,grp_fu_240_p_opcode,grp_fu_240_p_dout0,grp_fu_240_p_ce,grp_fu_212_p_din0,grp_fu_212_p_din1,grp_fu_212_p_dout0,grp_fu_212_p_ce,grp_fu_216_p_din0,grp_fu_216_p_din1,grp_fu_216_p_dout0,grp_fu_216_p_ce,grp_fu_220_p_din0,grp_fu_220_p_din1,grp_fu_220_p_dout0,grp_fu_220_p_ce,grp_fu_224_p_din0,grp_fu_224_p_din1,grp_fu_224_p_dout0,grp_fu_224_p_ce); 
parameter    ap_ST_fsm_state1 = 24'd1;
parameter    ap_ST_fsm_state2 = 24'd2;
parameter    ap_ST_fsm_state3 = 24'd4;
parameter    ap_ST_fsm_state4 = 24'd8;
parameter    ap_ST_fsm_state5 = 24'd16;
parameter    ap_ST_fsm_state6 = 24'd32;
parameter    ap_ST_fsm_state7 = 24'd64;
parameter    ap_ST_fsm_state8 = 24'd128;
parameter    ap_ST_fsm_state9 = 24'd256;
parameter    ap_ST_fsm_state10 = 24'd512;
parameter    ap_ST_fsm_state11 = 24'd1024;
parameter    ap_ST_fsm_state12 = 24'd2048;
parameter    ap_ST_fsm_state13 = 24'd4096;
parameter    ap_ST_fsm_state14 = 24'd8192;
parameter    ap_ST_fsm_state15 = 24'd16384;
parameter    ap_ST_fsm_state16 = 24'd32768;
parameter    ap_ST_fsm_state17 = 24'd65536;
parameter    ap_ST_fsm_state18 = 24'd131072;
parameter    ap_ST_fsm_state19 = 24'd262144;
parameter    ap_ST_fsm_state20 = 24'd524288;
parameter    ap_ST_fsm_state21 = 24'd1048576;
parameter    ap_ST_fsm_state22 = 24'd2097152;
parameter    ap_ST_fsm_state23 = 24'd4194304;
parameter    ap_ST_fsm_state24 = 24'd8388608;
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
output  [31:0] grp_fu_228_p_din0;
output  [31:0] grp_fu_228_p_din1;
output  [1:0] grp_fu_228_p_opcode;
input  [31:0] grp_fu_228_p_dout0;
output   grp_fu_228_p_ce;
output  [31:0] grp_fu_232_p_din0;
output  [31:0] grp_fu_232_p_din1;
output  [1:0] grp_fu_232_p_opcode;
input  [31:0] grp_fu_232_p_dout0;
output   grp_fu_232_p_ce;
output  [31:0] grp_fu_236_p_din0;
output  [31:0] grp_fu_236_p_din1;
output  [1:0] grp_fu_236_p_opcode;
input  [31:0] grp_fu_236_p_dout0;
output   grp_fu_236_p_ce;
output  [31:0] grp_fu_240_p_din0;
output  [31:0] grp_fu_240_p_din1;
output  [1:0] grp_fu_240_p_opcode;
input  [31:0] grp_fu_240_p_dout0;
output   grp_fu_240_p_ce;
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
reg[12:0] v229_0_address0;
reg v229_0_ce0;
reg v229_0_we0;
reg[31:0] v229_0_d0;
reg[12:0] v229_0_address1;
reg v229_0_ce1;
reg v229_0_we1;
reg[31:0] v229_0_d1;
reg[12:0] v229_1_address0;
reg v229_1_ce0;
reg v229_1_we0;
reg[31:0] v229_1_d0;
reg[12:0] v229_1_address1;
reg v229_1_ce1;
reg v229_1_we1;
reg[31:0] v229_1_d1;
reg[12:0] v229_2_address0;
reg v229_2_ce0;
reg v229_2_we0;
reg[31:0] v229_2_d0;
reg[12:0] v229_2_address1;
reg v229_2_ce1;
reg v229_2_we1;
reg[31:0] v229_2_d1;
reg[12:0] v229_3_address0;
reg v229_3_ce0;
reg v229_3_we0;
reg[31:0] v229_3_d0;
reg[12:0] v229_3_address1;
reg v229_3_ce1;
reg v229_3_we1;
reg[31:0] v229_3_d1;
reg[12:0] v229_4_address0;
reg v229_4_ce0;
reg v229_4_we0;
reg[31:0] v229_4_d0;
reg[12:0] v229_4_address1;
reg v229_4_ce1;
reg v229_4_we1;
reg[31:0] v229_4_d1;
reg[12:0] v229_5_address0;
reg v229_5_ce0;
reg v229_5_we0;
reg[31:0] v229_5_d0;
reg[12:0] v229_5_address1;
reg v229_5_ce1;
reg v229_5_we1;
reg[31:0] v229_5_d1;
reg[12:0] v229_6_address0;
reg v229_6_ce0;
reg v229_6_we0;
reg[31:0] v229_6_d0;
reg[12:0] v229_6_address1;
reg v229_6_ce1;
reg v229_6_we1;
reg[31:0] v229_6_d1;
reg[12:0] v229_7_address0;
reg v229_7_ce0;
reg v229_7_we0;
reg[31:0] v229_7_d0;
reg[12:0] v229_7_address1;
reg v229_7_ce1;
reg v229_7_we1;
reg[31:0] v229_7_d1;
(* fsm_encoding = "none" *) reg   [23:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
reg   [31:0] reg_403;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state18;
reg   [31:0] reg_408;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state19;
reg   [31:0] reg_412;
reg   [31:0] reg_416;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state20;
reg   [31:0] reg_421;
reg   [31:0] reg_426;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state21;
reg   [31:0] reg_431;
reg   [31:0] reg_436;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state22;
reg   [31:0] reg_441;
wire   [15:0] zext_ln31_fu_460_p1;
reg   [15:0] zext_ln31_reg_1383;
wire    ap_CS_fsm_state2;
wire   [1:0] trunc_ln31_fu_464_p1;
reg   [1:0] trunc_ln31_reg_1396;
wire   [13:0] mul_ln38_fu_482_p2;
reg   [13:0] mul_ln38_reg_1402;
wire   [0:0] cmp11_fu_488_p2;
reg   [0:0] cmp11_reg_1408;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln32_fu_504_p2;
reg   [7:0] add_ln32_reg_1421;
wire   [15:0] zext_ln32_fu_527_p1;
reg   [15:0] zext_ln32_reg_1426;
wire    ap_CS_fsm_state4;
reg   [4:0] tmp_reg_1444;
reg   [4:0] tmp_s_reg_1454;
wire    ap_CS_fsm_state5;
reg   [4:0] tmp_45_reg_1464;
reg   [4:0] tmp_46_reg_1474;
wire    ap_CS_fsm_state6;
reg   [4:0] tmp_47_reg_1489;
reg   [4:0] tmp_48_reg_1499;
reg   [4:0] tmp_49_reg_1519;
wire   [2:0] trunc_ln32_fu_707_p1;
reg   [2:0] trunc_ln32_reg_1554;
wire   [12:0] mul_ln34_fu_725_p2;
reg   [12:0] mul_ln34_reg_1560;
wire   [12:0] mul_ln49_fu_734_p2;
reg   [12:0] mul_ln49_reg_1565;
wire   [12:0] mul_ln62_fu_743_p2;
reg   [12:0] mul_ln62_reg_1570;
wire   [12:0] mul_ln75_fu_752_p2;
reg   [12:0] mul_ln75_reg_1575;
wire   [12:0] mul_ln88_fu_761_p2;
reg   [12:0] mul_ln88_reg_1580;
wire   [12:0] mul_ln101_fu_770_p2;
reg   [12:0] mul_ln101_reg_1585;
wire   [12:0] mul_ln114_fu_779_p2;
reg   [12:0] mul_ln114_reg_1590;
wire   [12:0] mul_ln127_fu_788_p2;
reg   [12:0] mul_ln127_reg_1595;
wire   [12:0] mul_ln140_fu_804_p2;
reg   [12:0] mul_ln140_reg_1600;
wire   [31:0] v11_fu_810_p1;
reg   [31:0] v11_reg_1605;
wire    ap_CS_fsm_state12;
wire   [31:0] v24_fu_815_p1;
reg   [31:0] v24_reg_1610;
wire   [31:0] v35_fu_820_p1;
reg   [31:0] v35_reg_1615;
wire   [31:0] v46_fu_825_p1;
reg   [31:0] v46_reg_1620;
wire   [31:0] v57_fu_830_p1;
reg   [31:0] v57_reg_1625;
wire   [31:0] v68_fu_835_p1;
reg   [31:0] v68_reg_1630;
wire   [31:0] v79_fu_840_p1;
reg   [31:0] v79_reg_1635;
wire   [31:0] v90_fu_845_p1;
reg   [31:0] v90_reg_1640;
wire   [31:0] v101_fu_850_p1;
reg   [31:0] v101_reg_1645;
wire   [0:0] empty_291_fu_855_p2;
reg   [0:0] empty_291_reg_1650;
wire    ap_CS_fsm_state14;
wire   [7:0] add_ln32_1_fu_871_p2;
reg   [7:0] add_ln32_1_reg_1663;
wire    ap_CS_fsm_state15;
reg   [4:0] tmp_51_reg_1673;
reg   [4:0] tmp_52_reg_1683;
wire    ap_CS_fsm_state16;
reg   [4:0] tmp_53_reg_1693;
reg   [4:0] tmp_54_reg_1703;
wire    ap_CS_fsm_state17;
reg   [4:0] tmp_55_reg_1718;
reg   [4:0] tmp_56_reg_1728;
reg   [4:0] tmp_57_reg_1748;
wire   [2:0] trunc_ln32_1_fu_1063_p1;
reg   [2:0] trunc_ln32_1_reg_1783;
wire   [12:0] mul_ln34_1_fu_1081_p2;
reg   [12:0] mul_ln34_1_reg_1789;
wire   [12:0] mul_ln49_1_fu_1090_p2;
reg   [12:0] mul_ln49_1_reg_1794;
wire   [12:0] mul_ln62_1_fu_1099_p2;
reg   [12:0] mul_ln62_1_reg_1799;
wire   [12:0] mul_ln75_1_fu_1108_p2;
reg   [12:0] mul_ln75_1_reg_1804;
wire   [12:0] mul_ln88_1_fu_1117_p2;
reg   [12:0] mul_ln88_1_reg_1809;
wire   [12:0] mul_ln101_1_fu_1126_p2;
reg   [12:0] mul_ln101_1_reg_1814;
wire   [12:0] mul_ln114_1_fu_1135_p2;
reg   [12:0] mul_ln114_1_reg_1819;
wire   [12:0] mul_ln127_1_fu_1144_p2;
reg   [12:0] mul_ln127_1_reg_1824;
wire   [12:0] mul_ln140_1_fu_1160_p2;
reg   [12:0] mul_ln140_1_reg_1829;
wire   [31:0] v11_1_fu_1166_p1;
reg   [31:0] v11_1_reg_1834;
wire    ap_CS_fsm_state23;
wire   [31:0] v24_1_fu_1171_p1;
reg   [31:0] v24_1_reg_1839;
wire   [31:0] v35_1_fu_1176_p1;
reg   [31:0] v35_1_reg_1844;
wire   [31:0] v46_1_fu_1181_p1;
reg   [31:0] v46_1_reg_1849;
wire   [31:0] v57_1_fu_1186_p1;
reg   [31:0] v57_1_reg_1854;
wire   [31:0] v68_1_fu_1191_p1;
reg   [31:0] v68_1_reg_1859;
wire   [31:0] v79_1_fu_1196_p1;
reg   [31:0] v79_1_reg_1864;
wire   [31:0] v90_1_fu_1201_p1;
reg   [31:0] v90_1_reg_1869;
wire   [31:0] v101_1_fu_1206_p1;
reg   [31:0] v101_1_reg_1874;
wire   [0:0] empty_319_fu_1211_p2;
reg   [0:0] empty_319_reg_1879;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_ap_ready;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_0_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_0_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_1_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_1_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_2_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_2_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_2_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_2_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_2_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_2_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_3_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_3_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_3_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_3_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_3_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_3_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_4_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_4_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_4_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_4_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_4_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_4_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_4_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_4_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_5_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_5_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_5_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_5_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_5_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_5_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_5_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_5_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_6_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_6_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_6_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_6_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_6_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_6_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_6_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_6_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_7_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_7_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_7_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_7_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_7_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_7_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_7_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_7_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v228_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v228_0_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v228_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v228_0_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v228_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v228_2_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v228_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v228_2_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1884_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1884_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1884_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1888_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1888_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1888_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1892_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1892_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1892_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1896_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1896_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1896_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1900_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1900_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1900_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1904_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1904_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1904_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1904_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1908_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1908_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1908_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1908_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1912_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1912_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1912_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1912_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1916_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1916_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1916_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1916_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1920_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1920_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1920_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1920_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1924_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1924_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1924_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1924_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1928_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1928_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1928_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1928_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1932_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1932_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1932_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1932_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1936_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1936_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1936_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1936_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1940_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1940_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1940_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1944_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1944_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1944_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1948_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1948_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1948_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1952_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1952_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1952_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_ap_ready;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_0_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_0_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_1_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_1_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_2_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_2_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_2_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_2_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_2_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_2_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_3_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_3_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_3_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_3_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_3_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_3_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_4_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_4_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_4_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_4_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_4_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_4_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_4_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_4_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_5_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_5_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_5_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_5_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_5_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_5_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_5_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_5_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_6_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_6_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_6_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_6_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_6_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_6_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_6_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_6_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_7_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_7_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_7_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_7_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_7_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_7_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_7_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_7_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v228_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v228_1_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v228_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v228_1_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v228_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v228_3_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v228_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v228_3_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1904_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1904_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1904_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1904_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1908_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1908_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1908_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1908_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1912_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1912_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1912_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1912_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1916_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1916_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1916_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1916_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1920_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1920_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1920_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1920_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1924_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1924_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1924_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1924_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1928_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1928_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1928_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1928_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1932_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1932_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1932_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1932_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1936_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1936_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1936_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1936_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1884_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1884_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1884_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1888_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1888_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1888_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1892_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1892_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1892_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1896_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1896_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1896_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1900_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1900_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1900_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1940_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1940_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1940_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1944_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1944_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1944_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1948_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1948_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1948_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1952_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1952_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1952_p_ce;
reg   [7:0] v6_reg_285;
wire   [0:0] icmp_ln31_fu_454_p2;
wire    ap_CS_fsm_state13;
reg   [7:0] v6_1_reg_297;
wire    ap_CS_fsm_state24;
wire   [0:0] icmp_ln32_fu_494_p2;
reg    grp_kernel_2mm_node0_Pipeline_label_2_fu_309_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_210_fu_357_ap_start_reg;
wire   [63:0] p_cast14383_fu_611_p1;
wire   [63:0] p_cast_fu_655_p1;
wire   [63:0] p_cast14384_fu_659_p1;
wire   [63:0] p_cast14385_fu_683_p1;
wire   [63:0] p_cast14386_fu_687_p1;
wire   [63:0] p_cast14387_fu_691_p1;
wire   [63:0] p_cast14388_fu_695_p1;
wire   [63:0] p_cast14389_fu_699_p1;
wire   [63:0] p_cast14390_fu_703_p1;
wire   [63:0] p_cast14391_fu_967_p1;
wire   [63:0] p_cast14392_fu_1011_p1;
wire   [63:0] p_cast14393_fu_1015_p1;
wire   [63:0] p_cast14394_fu_1039_p1;
wire   [63:0] p_cast14395_fu_1043_p1;
wire   [63:0] p_cast14396_fu_1047_p1;
wire   [63:0] p_cast14397_fu_1051_p1;
wire   [63:0] p_cast14398_fu_1055_p1;
wire   [63:0] p_cast14399_fu_1059_p1;
reg   [7:0] v5_fu_116;
wire   [7:0] add_ln31_fu_877_p2;
wire   [0:0] icmp_ln32_1_fu_861_p2;
reg    ap_block_state1;
reg    v236_read_local;
reg    v224_ce0_local;
reg   [15:0] v224_address0_local;
reg    v224_ce1_local;
reg   [15:0] v224_address1_local;
wire   [5:0] lshr_ln_fu_468_p4;
wire   [5:0] mul_ln38_fu_482_p0;
wire   [8:0] mul_ln38_fu_482_p1;
wire   [6:0] tmp_50_fu_510_p4;
wire   [7:0] or_ln_fu_519_p3;
wire   [7:0] empty_266_fu_531_p2;
wire   [7:0] empty_269_fu_551_p2;
wire   [7:0] empty_272_fu_571_p2;
wire   [7:0] empty_275_fu_591_p2;
wire   [15:0] grp_fu_1217_p3;
wire   [7:0] empty_278_fu_615_p2;
wire   [7:0] empty_281_fu_635_p2;
wire   [15:0] grp_fu_1225_p3;
wire   [15:0] grp_fu_1233_p3;
wire   [7:0] empty_284_fu_663_p2;
wire   [15:0] grp_fu_1241_p3;
wire   [15:0] grp_fu_1249_p3;
wire   [15:0] grp_fu_1257_p3;
wire   [15:0] grp_fu_1265_p3;
wire   [15:0] grp_fu_1273_p3;
wire   [15:0] grp_fu_1281_p4;
wire   [4:0] lshr_ln2_fu_711_p4;
wire   [4:0] mul_ln34_fu_725_p0;
wire   [8:0] mul_ln34_fu_725_p1;
wire   [4:0] mul_ln49_fu_734_p0;
wire   [8:0] mul_ln49_fu_734_p1;
wire   [4:0] mul_ln62_fu_743_p0;
wire   [8:0] mul_ln62_fu_743_p1;
wire   [4:0] mul_ln75_fu_752_p0;
wire   [8:0] mul_ln75_fu_752_p1;
wire   [4:0] mul_ln88_fu_761_p0;
wire   [8:0] mul_ln88_fu_761_p1;
wire   [4:0] mul_ln101_fu_770_p0;
wire   [8:0] mul_ln101_fu_770_p1;
wire   [4:0] mul_ln114_fu_779_p0;
wire   [8:0] mul_ln114_fu_779_p1;
wire   [4:0] mul_ln127_fu_788_p0;
wire   [8:0] mul_ln127_fu_788_p1;
wire   [4:0] empty_290_fu_794_p2;
wire   [4:0] mul_ln140_fu_804_p0;
wire   [8:0] mul_ln140_fu_804_p1;
wire   [7:0] empty_294_fu_887_p2;
wire   [7:0] empty_297_fu_907_p2;
wire   [7:0] empty_300_fu_927_p2;
wire   [7:0] empty_303_fu_947_p2;
wire   [15:0] grp_fu_1291_p3;
wire   [7:0] empty_306_fu_971_p2;
wire   [7:0] empty_309_fu_991_p2;
wire   [15:0] grp_fu_1299_p3;
wire   [15:0] grp_fu_1307_p3;
wire   [7:0] empty_312_fu_1019_p2;
wire   [15:0] grp_fu_1315_p3;
wire   [15:0] grp_fu_1323_p3;
wire   [15:0] grp_fu_1331_p3;
wire   [15:0] grp_fu_1339_p3;
wire   [15:0] grp_fu_1347_p3;
wire   [15:0] grp_fu_1355_p4;
wire   [4:0] lshr_ln32_1_fu_1067_p4;
wire   [4:0] mul_ln34_1_fu_1081_p0;
wire   [8:0] mul_ln34_1_fu_1081_p1;
wire   [4:0] mul_ln49_1_fu_1090_p0;
wire   [8:0] mul_ln49_1_fu_1090_p1;
wire   [4:0] mul_ln62_1_fu_1099_p0;
wire   [8:0] mul_ln62_1_fu_1099_p1;
wire   [4:0] mul_ln75_1_fu_1108_p0;
wire   [8:0] mul_ln75_1_fu_1108_p1;
wire   [4:0] mul_ln88_1_fu_1117_p0;
wire   [8:0] mul_ln88_1_fu_1117_p1;
wire   [4:0] mul_ln101_1_fu_1126_p0;
wire   [8:0] mul_ln101_1_fu_1126_p1;
wire   [4:0] mul_ln114_1_fu_1135_p0;
wire   [8:0] mul_ln114_1_fu_1135_p1;
wire   [4:0] mul_ln127_1_fu_1144_p0;
wire   [8:0] mul_ln127_1_fu_1144_p1;
wire   [4:0] empty_318_fu_1150_p2;
wire   [4:0] mul_ln140_1_fu_1160_p0;
wire   [8:0] mul_ln140_1_fu_1160_p1;
wire   [7:0] grp_fu_1217_p0;
wire   [7:0] grp_fu_1217_p1;
wire   [7:0] grp_fu_1217_p2;
wire   [7:0] grp_fu_1225_p0;
wire   [7:0] grp_fu_1225_p1;
wire   [7:0] grp_fu_1225_p2;
wire   [7:0] grp_fu_1233_p0;
wire   [7:0] grp_fu_1233_p1;
wire   [7:0] grp_fu_1233_p2;
wire   [7:0] grp_fu_1241_p0;
wire   [7:0] grp_fu_1241_p1;
wire   [7:0] grp_fu_1241_p2;
wire   [7:0] grp_fu_1249_p0;
wire   [7:0] grp_fu_1249_p1;
wire   [7:0] grp_fu_1249_p2;
wire   [7:0] grp_fu_1257_p0;
wire   [7:0] grp_fu_1257_p1;
wire   [7:0] grp_fu_1257_p2;
wire   [7:0] grp_fu_1265_p0;
wire   [7:0] grp_fu_1265_p1;
wire   [7:0] grp_fu_1265_p2;
wire   [7:0] grp_fu_1273_p0;
wire   [7:0] grp_fu_1273_p1;
wire   [7:0] grp_fu_1273_p2;
wire   [3:0] grp_fu_1281_p1;
wire   [7:0] grp_fu_1281_p2;
wire   [7:0] grp_fu_1281_p3;
wire   [7:0] grp_fu_1291_p0;
wire   [7:0] grp_fu_1291_p1;
wire   [7:0] grp_fu_1291_p2;
wire   [7:0] grp_fu_1299_p0;
wire   [7:0] grp_fu_1299_p1;
wire   [7:0] grp_fu_1299_p2;
wire   [7:0] grp_fu_1307_p0;
wire   [7:0] grp_fu_1307_p1;
wire   [7:0] grp_fu_1307_p2;
wire   [7:0] grp_fu_1315_p0;
wire   [7:0] grp_fu_1315_p1;
wire   [7:0] grp_fu_1315_p2;
wire   [7:0] grp_fu_1323_p0;
wire   [7:0] grp_fu_1323_p1;
wire   [7:0] grp_fu_1323_p2;
wire   [7:0] grp_fu_1331_p0;
wire   [7:0] grp_fu_1331_p1;
wire   [7:0] grp_fu_1331_p2;
wire   [7:0] grp_fu_1339_p0;
wire   [7:0] grp_fu_1339_p1;
wire   [7:0] grp_fu_1339_p2;
wire   [7:0] grp_fu_1347_p0;
wire   [7:0] grp_fu_1347_p1;
wire   [7:0] grp_fu_1347_p2;
wire   [3:0] grp_fu_1355_p1;
wire   [7:0] grp_fu_1355_p2;
wire   [7:0] grp_fu_1355_p3;
reg   [31:0] grp_fu_1884_p0;
reg   [31:0] grp_fu_1884_p1;
reg    grp_fu_1884_ce;
reg   [31:0] grp_fu_1888_p0;
reg   [31:0] grp_fu_1888_p1;
reg    grp_fu_1888_ce;
reg   [31:0] grp_fu_1892_p0;
reg   [31:0] grp_fu_1892_p1;
reg    grp_fu_1892_ce;
reg   [31:0] grp_fu_1896_p0;
reg   [31:0] grp_fu_1896_p1;
reg    grp_fu_1896_ce;
reg   [31:0] grp_fu_1900_p0;
reg   [31:0] grp_fu_1900_p1;
reg    grp_fu_1900_ce;
reg   [31:0] grp_fu_1904_p0;
reg   [31:0] grp_fu_1904_p1;
reg    grp_fu_1904_ce;
reg   [31:0] grp_fu_1908_p0;
reg   [31:0] grp_fu_1908_p1;
reg    grp_fu_1908_ce;
reg   [31:0] grp_fu_1912_p0;
reg   [31:0] grp_fu_1912_p1;
reg    grp_fu_1912_ce;
reg   [31:0] grp_fu_1916_p0;
reg   [31:0] grp_fu_1916_p1;
reg    grp_fu_1916_ce;
wire   [31:0] grp_fu_1920_p2;
reg   [31:0] grp_fu_1920_p0;
reg   [31:0] grp_fu_1920_p1;
reg    grp_fu_1920_ce;
wire   [31:0] grp_fu_1924_p2;
reg   [31:0] grp_fu_1924_p0;
reg   [31:0] grp_fu_1924_p1;
reg    grp_fu_1924_ce;
wire   [31:0] grp_fu_1928_p2;
reg   [31:0] grp_fu_1928_p0;
reg   [31:0] grp_fu_1928_p1;
reg    grp_fu_1928_ce;
wire   [31:0] grp_fu_1932_p2;
reg   [31:0] grp_fu_1932_p0;
reg   [31:0] grp_fu_1932_p1;
reg    grp_fu_1932_ce;
wire   [31:0] grp_fu_1936_p2;
reg   [31:0] grp_fu_1936_p0;
reg   [31:0] grp_fu_1936_p1;
reg    grp_fu_1936_ce;
reg   [31:0] grp_fu_1940_p0;
reg   [31:0] grp_fu_1940_p1;
reg    grp_fu_1940_ce;
reg   [31:0] grp_fu_1944_p0;
reg   [31:0] grp_fu_1944_p1;
reg    grp_fu_1944_ce;
reg   [31:0] grp_fu_1948_p0;
reg   [31:0] grp_fu_1948_p1;
reg    grp_fu_1948_ce;
reg   [31:0] grp_fu_1952_p0;
reg   [31:0] grp_fu_1952_p1;
reg    grp_fu_1952_ce;
reg   [23:0] ap_NS_fsm;
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
wire    ap_ST_fsm_state17_blk;
wire    ap_ST_fsm_state18_blk;
wire    ap_ST_fsm_state19_blk;
wire    ap_ST_fsm_state20_blk;
wire    ap_ST_fsm_state21_blk;
wire    ap_ST_fsm_state22_blk;
wire    ap_ST_fsm_state23_blk;
reg    ap_ST_fsm_state24_blk;
wire   [15:0] grp_fu_1217_p00;
wire   [15:0] grp_fu_1225_p00;
wire   [15:0] grp_fu_1233_p00;
wire   [15:0] grp_fu_1241_p00;
wire   [15:0] grp_fu_1249_p00;
wire   [15:0] grp_fu_1257_p00;
wire   [15:0] grp_fu_1265_p00;
wire   [15:0] grp_fu_1273_p00;
wire   [15:0] grp_fu_1291_p00;
wire   [15:0] grp_fu_1299_p00;
wire   [15:0] grp_fu_1307_p00;
wire   [15:0] grp_fu_1315_p00;
wire   [15:0] grp_fu_1323_p00;
wire   [15:0] grp_fu_1331_p00;
wire   [15:0] grp_fu_1339_p00;
wire   [15:0] grp_fu_1347_p00;
wire   [12:0] mul_ln101_1_fu_1126_p00;
wire   [12:0] mul_ln101_fu_770_p00;
wire   [12:0] mul_ln114_1_fu_1135_p00;
wire   [12:0] mul_ln114_fu_779_p00;
wire   [12:0] mul_ln127_1_fu_1144_p00;
wire   [12:0] mul_ln127_fu_788_p00;
wire   [12:0] mul_ln140_1_fu_1160_p00;
wire   [12:0] mul_ln140_fu_804_p00;
wire   [12:0] mul_ln34_1_fu_1081_p00;
wire   [12:0] mul_ln34_fu_725_p00;
wire   [13:0] mul_ln38_fu_482_p00;
wire   [12:0] mul_ln49_1_fu_1090_p00;
wire   [12:0] mul_ln49_fu_734_p00;
wire   [12:0] mul_ln62_1_fu_1099_p00;
wire   [12:0] mul_ln62_fu_743_p00;
wire   [12:0] mul_ln75_1_fu_1108_p00;
wire   [12:0] mul_ln75_fu_752_p00;
wire   [12:0] mul_ln88_1_fu_1117_p00;
wire   [12:0] mul_ln88_fu_761_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 24'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_2_fu_309_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_210_fu_357_ap_start_reg = 1'b0;
#0 v5_fu_116 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_2 grp_kernel_2mm_node0_Pipeline_label_2_fu_309(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_ap_ready),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_0_d1),.v229_0_q1(v229_0_q1),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_2_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_2_address0),.v229_2_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_2_ce0),.v229_2_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_2_we0),.v229_2_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_2_d0),.v229_2_q0(v229_2_q0),.v229_2_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_2_address1),.v229_2_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_2_ce1),.v229_2_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_2_we1),.v229_2_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_2_d1),.v229_2_q1(v229_2_q1),.v229_3_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_3_address0),.v229_3_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_3_ce0),.v229_3_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_3_we0),.v229_3_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_3_d0),.v229_3_q0(v229_3_q0),.v229_3_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_3_address1),.v229_3_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_3_ce1),.v229_3_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_3_we1),.v229_3_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_3_d1),.v229_3_q1(v229_3_q1),.v229_4_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_4_address0),.v229_4_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_4_ce0),.v229_4_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_4_we0),.v229_4_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_4_d0),.v229_4_q0(v229_4_q0),.v229_4_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_4_address1),.v229_4_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_4_ce1),.v229_4_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_4_we1),.v229_4_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_4_d1),.v229_4_q1(v229_4_q1),.v229_5_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_5_address0),.v229_5_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_5_ce0),.v229_5_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_5_we0),.v229_5_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_5_d0),.v229_5_q0(v229_5_q0),.v229_5_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_5_address1),.v229_5_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_5_ce1),.v229_5_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_5_we1),.v229_5_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_5_d1),.v229_5_q1(v229_5_q1),.v229_6_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_6_address0),.v229_6_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_6_ce0),.v229_6_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_6_we0),.v229_6_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_6_d0),.v229_6_q0(v229_6_q0),.v229_6_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_6_address1),.v229_6_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_6_ce1),.v229_6_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_6_we1),.v229_6_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_6_d1),.v229_6_q1(v229_6_q1),.v229_7_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_7_address0),.v229_7_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_7_ce0),.v229_7_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_7_we0),.v229_7_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_7_d0),.v229_7_q0(v229_7_q0),.v229_7_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_7_address1),.v229_7_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_7_ce1),.v229_7_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_7_we1),.v229_7_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_7_d1),.v229_7_q1(v229_7_q1),.mul_ln38(mul_ln38_reg_1402),.v228_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v228_0_ce1),.v228_0_q1(v228_0_q1),.v228_2_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v228_2_address0),.v228_2_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v228_2_ce0),.v228_2_q0(v228_2_q0),.v228_2_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v228_2_address1),.v228_2_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v228_2_ce1),.v228_2_q1(v228_2_q1),.mul_ln34(mul_ln34_reg_1560),.mul_ln140(mul_ln140_reg_1600),.mul_ln127(mul_ln127_reg_1595),.mul_ln114(mul_ln114_reg_1590),.mul_ln101(mul_ln101_reg_1585),.mul_ln88(mul_ln88_reg_1580),.mul_ln75(mul_ln75_reg_1575),.mul_ln62(mul_ln62_reg_1570),.mul_ln49(mul_ln49_reg_1565),.empty_23(trunc_ln32_reg_1554),.v4(v4),.cmp11(cmp11_reg_1408),.empty_24(trunc_ln31_reg_1396),.v11(v11_reg_1605),.v24(v24_reg_1610),.v35(v35_reg_1615),.v46(v46_reg_1620),.v57(v57_reg_1625),.v68(v68_reg_1630),.v79(v79_reg_1635),.v90(v90_reg_1640),.v101(v101_reg_1645),.empty(empty_291_reg_1650),.grp_fu_1884_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1884_p_din0),.grp_fu_1884_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1884_p_din1),.grp_fu_1884_p_dout0(grp_fu_192_p_dout0),.grp_fu_1884_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1884_p_ce),.grp_fu_1888_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1888_p_din0),.grp_fu_1888_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1888_p_din1),.grp_fu_1888_p_dout0(grp_fu_196_p_dout0),.grp_fu_1888_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1888_p_ce),.grp_fu_1892_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1892_p_din0),.grp_fu_1892_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1892_p_din1),.grp_fu_1892_p_dout0(grp_fu_200_p_dout0),.grp_fu_1892_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1892_p_ce),.grp_fu_1896_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1896_p_din0),.grp_fu_1896_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1896_p_din1),.grp_fu_1896_p_dout0(grp_fu_204_p_dout0),.grp_fu_1896_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1896_p_ce),.grp_fu_1900_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1900_p_din0),.grp_fu_1900_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1900_p_din1),.grp_fu_1900_p_dout0(grp_fu_208_p_dout0),.grp_fu_1900_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1900_p_ce),.grp_fu_1904_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1904_p_din0),.grp_fu_1904_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1904_p_din1),.grp_fu_1904_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1904_p_opcode),.grp_fu_1904_p_dout0(grp_fu_228_p_dout0),.grp_fu_1904_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1904_p_ce),.grp_fu_1908_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1908_p_din0),.grp_fu_1908_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1908_p_din1),.grp_fu_1908_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1908_p_opcode),.grp_fu_1908_p_dout0(grp_fu_232_p_dout0),.grp_fu_1908_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1908_p_ce),.grp_fu_1912_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1912_p_din0),.grp_fu_1912_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1912_p_din1),.grp_fu_1912_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1912_p_opcode),.grp_fu_1912_p_dout0(grp_fu_236_p_dout0),.grp_fu_1912_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1912_p_ce),.grp_fu_1916_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1916_p_din0),.grp_fu_1916_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1916_p_din1),.grp_fu_1916_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1916_p_opcode),.grp_fu_1916_p_dout0(grp_fu_240_p_dout0),.grp_fu_1916_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1916_p_ce),.grp_fu_1920_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1920_p_din0),.grp_fu_1920_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1920_p_din1),.grp_fu_1920_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1920_p_opcode),.grp_fu_1920_p_dout0(grp_fu_1920_p2),.grp_fu_1920_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1920_p_ce),.grp_fu_1924_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1924_p_din0),.grp_fu_1924_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1924_p_din1),.grp_fu_1924_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1924_p_opcode),.grp_fu_1924_p_dout0(grp_fu_1924_p2),.grp_fu_1924_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1924_p_ce),.grp_fu_1928_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1928_p_din0),.grp_fu_1928_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1928_p_din1),.grp_fu_1928_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1928_p_opcode),.grp_fu_1928_p_dout0(grp_fu_1928_p2),.grp_fu_1928_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1928_p_ce),.grp_fu_1932_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1932_p_din0),.grp_fu_1932_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1932_p_din1),.grp_fu_1932_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1932_p_opcode),.grp_fu_1932_p_dout0(grp_fu_1932_p2),.grp_fu_1932_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1932_p_ce),.grp_fu_1936_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1936_p_din0),.grp_fu_1936_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1936_p_din1),.grp_fu_1936_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1936_p_opcode),.grp_fu_1936_p_dout0(grp_fu_1936_p2),.grp_fu_1936_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1936_p_ce),.grp_fu_1940_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1940_p_din0),.grp_fu_1940_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1940_p_din1),.grp_fu_1940_p_dout0(grp_fu_212_p_dout0),.grp_fu_1940_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1940_p_ce),.grp_fu_1944_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1944_p_din0),.grp_fu_1944_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1944_p_din1),.grp_fu_1944_p_dout0(grp_fu_216_p_dout0),.grp_fu_1944_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1944_p_ce),.grp_fu_1948_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1948_p_din0),.grp_fu_1948_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1948_p_din1),.grp_fu_1948_p_dout0(grp_fu_220_p_dout0),.grp_fu_1948_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1948_p_ce),.grp_fu_1952_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1952_p_din0),.grp_fu_1952_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1952_p_din1),.grp_fu_1952_p_dout0(grp_fu_224_p_dout0),.grp_fu_1952_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1952_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_210 grp_kernel_2mm_node0_Pipeline_label_210_fu_357(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_ap_ready),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_0_d1),.v229_0_q1(v229_0_q1),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_2_address0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_2_address0),.v229_2_ce0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_2_ce0),.v229_2_we0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_2_we0),.v229_2_d0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_2_d0),.v229_2_q0(v229_2_q0),.v229_2_address1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_2_address1),.v229_2_ce1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_2_ce1),.v229_2_we1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_2_we1),.v229_2_d1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_2_d1),.v229_2_q1(v229_2_q1),.v229_3_address0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_3_address0),.v229_3_ce0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_3_ce0),.v229_3_we0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_3_we0),.v229_3_d0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_3_d0),.v229_3_q0(v229_3_q0),.v229_3_address1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_3_address1),.v229_3_ce1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_3_ce1),.v229_3_we1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_3_we1),.v229_3_d1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_3_d1),.v229_3_q1(v229_3_q1),.v229_4_address0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_4_address0),.v229_4_ce0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_4_ce0),.v229_4_we0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_4_we0),.v229_4_d0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_4_d0),.v229_4_q0(v229_4_q0),.v229_4_address1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_4_address1),.v229_4_ce1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_4_ce1),.v229_4_we1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_4_we1),.v229_4_d1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_4_d1),.v229_4_q1(v229_4_q1),.v229_5_address0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_5_address0),.v229_5_ce0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_5_ce0),.v229_5_we0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_5_we0),.v229_5_d0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_5_d0),.v229_5_q0(v229_5_q0),.v229_5_address1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_5_address1),.v229_5_ce1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_5_ce1),.v229_5_we1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_5_we1),.v229_5_d1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_5_d1),.v229_5_q1(v229_5_q1),.v229_6_address0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_6_address0),.v229_6_ce0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_6_ce0),.v229_6_we0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_6_we0),.v229_6_d0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_6_d0),.v229_6_q0(v229_6_q0),.v229_6_address1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_6_address1),.v229_6_ce1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_6_ce1),.v229_6_we1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_6_we1),.v229_6_d1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_6_d1),.v229_6_q1(v229_6_q1),.v229_7_address0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_7_address0),.v229_7_ce0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_7_ce0),.v229_7_we0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_7_we0),.v229_7_d0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_7_d0),.v229_7_q0(v229_7_q0),.v229_7_address1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_7_address1),.v229_7_ce1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_7_ce1),.v229_7_we1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_7_we1),.v229_7_d1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_7_d1),.v229_7_q1(v229_7_q1),.mul_ln38(mul_ln38_reg_1402),.v228_1_address0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v228_1_ce1),.v228_1_q1(v228_1_q1),.v228_3_address0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v228_3_address0),.v228_3_ce0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v228_3_ce0),.v228_3_q0(v228_3_q0),.v228_3_address1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v228_3_address1),.v228_3_ce1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v228_3_ce1),.v228_3_q1(v228_3_q1),.mul_ln34_1(mul_ln34_1_reg_1789),.mul_ln140_1(mul_ln140_1_reg_1829),.mul_ln127_1(mul_ln127_1_reg_1824),.mul_ln114_1(mul_ln114_1_reg_1819),.mul_ln101_1(mul_ln101_1_reg_1814),.mul_ln88_1(mul_ln88_1_reg_1809),.mul_ln75_1(mul_ln75_1_reg_1804),.mul_ln62_1(mul_ln62_1_reg_1799),.mul_ln49_1(mul_ln49_1_reg_1794),.empty_21(trunc_ln32_1_reg_1783),.empty_22(trunc_ln31_reg_1396),.v11_1(v11_1_reg_1834),.v24_1(v24_1_reg_1839),.v35_1(v35_1_reg_1844),.v46_1(v46_1_reg_1849),.v57_1(v57_1_reg_1854),.v68_1(v68_1_reg_1859),.v79_1(v79_1_reg_1864),.v90_1(v90_1_reg_1869),.v101_1(v101_1_reg_1874),.empty(empty_319_reg_1879),.grp_fu_1904_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1904_p_din0),.grp_fu_1904_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1904_p_din1),.grp_fu_1904_p_opcode(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1904_p_opcode),.grp_fu_1904_p_dout0(grp_fu_228_p_dout0),.grp_fu_1904_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1904_p_ce),.grp_fu_1908_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1908_p_din0),.grp_fu_1908_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1908_p_din1),.grp_fu_1908_p_opcode(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1908_p_opcode),.grp_fu_1908_p_dout0(grp_fu_232_p_dout0),.grp_fu_1908_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1908_p_ce),.grp_fu_1912_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1912_p_din0),.grp_fu_1912_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1912_p_din1),.grp_fu_1912_p_opcode(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1912_p_opcode),.grp_fu_1912_p_dout0(grp_fu_236_p_dout0),.grp_fu_1912_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1912_p_ce),.grp_fu_1916_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1916_p_din0),.grp_fu_1916_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1916_p_din1),.grp_fu_1916_p_opcode(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1916_p_opcode),.grp_fu_1916_p_dout0(grp_fu_240_p_dout0),.grp_fu_1916_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1916_p_ce),.grp_fu_1920_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1920_p_din0),.grp_fu_1920_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1920_p_din1),.grp_fu_1920_p_opcode(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1920_p_opcode),.grp_fu_1920_p_dout0(grp_fu_1920_p2),.grp_fu_1920_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1920_p_ce),.grp_fu_1924_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1924_p_din0),.grp_fu_1924_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1924_p_din1),.grp_fu_1924_p_opcode(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1924_p_opcode),.grp_fu_1924_p_dout0(grp_fu_1924_p2),.grp_fu_1924_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1924_p_ce),.grp_fu_1928_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1928_p_din0),.grp_fu_1928_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1928_p_din1),.grp_fu_1928_p_opcode(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1928_p_opcode),.grp_fu_1928_p_dout0(grp_fu_1928_p2),.grp_fu_1928_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1928_p_ce),.grp_fu_1932_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1932_p_din0),.grp_fu_1932_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1932_p_din1),.grp_fu_1932_p_opcode(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1932_p_opcode),.grp_fu_1932_p_dout0(grp_fu_1932_p2),.grp_fu_1932_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1932_p_ce),.grp_fu_1936_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1936_p_din0),.grp_fu_1936_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1936_p_din1),.grp_fu_1936_p_opcode(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1936_p_opcode),.grp_fu_1936_p_dout0(grp_fu_1936_p2),.grp_fu_1936_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1936_p_ce),.grp_fu_1884_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1884_p_din0),.grp_fu_1884_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1884_p_din1),.grp_fu_1884_p_dout0(grp_fu_192_p_dout0),.grp_fu_1884_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1884_p_ce),.grp_fu_1888_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1888_p_din0),.grp_fu_1888_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1888_p_din1),.grp_fu_1888_p_dout0(grp_fu_196_p_dout0),.grp_fu_1888_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1888_p_ce),.grp_fu_1892_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1892_p_din0),.grp_fu_1892_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1892_p_din1),.grp_fu_1892_p_dout0(grp_fu_200_p_dout0),.grp_fu_1892_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1892_p_ce),.grp_fu_1896_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1896_p_din0),.grp_fu_1896_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1896_p_din1),.grp_fu_1896_p_dout0(grp_fu_204_p_dout0),.grp_fu_1896_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1896_p_ce),.grp_fu_1900_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1900_p_din0),.grp_fu_1900_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1900_p_din1),.grp_fu_1900_p_dout0(grp_fu_208_p_dout0),.grp_fu_1900_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1900_p_ce),.grp_fu_1940_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1940_p_din0),.grp_fu_1940_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1940_p_din1),.grp_fu_1940_p_dout0(grp_fu_212_p_dout0),.grp_fu_1940_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1940_p_ce),.grp_fu_1944_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1944_p_din0),.grp_fu_1944_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1944_p_din1),.grp_fu_1944_p_dout0(grp_fu_216_p_dout0),.grp_fu_1944_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1944_p_ce),.grp_fu_1948_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1948_p_din0),.grp_fu_1948_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1948_p_din1),.grp_fu_1948_p_dout0(grp_fu_220_p_dout0),.grp_fu_1948_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1948_p_ce),.grp_fu_1952_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1952_p_din0),.grp_fu_1952_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1952_p_din1),.grp_fu_1952_p_dout0(grp_fu_224_p_dout0),.grp_fu_1952_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1952_p_ce));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U578(.din0(mul_ln38_fu_482_p0),.din1(mul_ln38_fu_482_p1),.dout(mul_ln38_fu_482_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U579(.din0(mul_ln34_fu_725_p0),.din1(mul_ln34_fu_725_p1),.dout(mul_ln34_fu_725_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U580(.din0(mul_ln49_fu_734_p0),.din1(mul_ln49_fu_734_p1),.dout(mul_ln49_fu_734_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U581(.din0(mul_ln62_fu_743_p0),.din1(mul_ln62_fu_743_p1),.dout(mul_ln62_fu_743_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U582(.din0(mul_ln75_fu_752_p0),.din1(mul_ln75_fu_752_p1),.dout(mul_ln75_fu_752_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U583(.din0(mul_ln88_fu_761_p0),.din1(mul_ln88_fu_761_p1),.dout(mul_ln88_fu_761_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U584(.din0(mul_ln101_fu_770_p0),.din1(mul_ln101_fu_770_p1),.dout(mul_ln101_fu_770_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U585(.din0(mul_ln114_fu_779_p0),.din1(mul_ln114_fu_779_p1),.dout(mul_ln114_fu_779_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U586(.din0(mul_ln127_fu_788_p0),.din1(mul_ln127_fu_788_p1),.dout(mul_ln127_fu_788_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U587(.din0(mul_ln140_fu_804_p0),.din1(mul_ln140_fu_804_p1),.dout(mul_ln140_fu_804_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U588(.din0(mul_ln34_1_fu_1081_p0),.din1(mul_ln34_1_fu_1081_p1),.dout(mul_ln34_1_fu_1081_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U589(.din0(mul_ln49_1_fu_1090_p0),.din1(mul_ln49_1_fu_1090_p1),.dout(mul_ln49_1_fu_1090_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U590(.din0(mul_ln62_1_fu_1099_p0),.din1(mul_ln62_1_fu_1099_p1),.dout(mul_ln62_1_fu_1099_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U591(.din0(mul_ln75_1_fu_1108_p0),.din1(mul_ln75_1_fu_1108_p1),.dout(mul_ln75_1_fu_1108_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U592(.din0(mul_ln88_1_fu_1117_p0),.din1(mul_ln88_1_fu_1117_p1),.dout(mul_ln88_1_fu_1117_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U593(.din0(mul_ln101_1_fu_1126_p0),.din1(mul_ln101_1_fu_1126_p1),.dout(mul_ln101_1_fu_1126_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U594(.din0(mul_ln114_1_fu_1135_p0),.din1(mul_ln114_1_fu_1135_p1),.dout(mul_ln114_1_fu_1135_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U595(.din0(mul_ln127_1_fu_1144_p0),.din1(mul_ln127_1_fu_1144_p1),.dout(mul_ln127_1_fu_1144_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U596(.din0(mul_ln140_1_fu_1160_p0),.din1(mul_ln140_1_fu_1160_p1),.dout(mul_ln140_1_fu_1160_p2));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U597(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1217_p0),.din1(grp_fu_1217_p1),.din2(grp_fu_1217_p2),.ce(1'b1),.dout(grp_fu_1217_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U598(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1225_p0),.din1(grp_fu_1225_p1),.din2(grp_fu_1225_p2),.ce(1'b1),.dout(grp_fu_1225_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U599(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1233_p0),.din1(grp_fu_1233_p1),.din2(grp_fu_1233_p2),.ce(1'b1),.dout(grp_fu_1233_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U600(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1241_p0),.din1(grp_fu_1241_p1),.din2(grp_fu_1241_p2),.ce(1'b1),.dout(grp_fu_1241_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U601(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1249_p0),.din1(grp_fu_1249_p1),.din2(grp_fu_1249_p2),.ce(1'b1),.dout(grp_fu_1249_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U602(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1257_p0),.din1(grp_fu_1257_p1),.din2(grp_fu_1257_p2),.ce(1'b1),.dout(grp_fu_1257_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U603(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1265_p0),.din1(grp_fu_1265_p1),.din2(grp_fu_1265_p2),.ce(1'b1),.dout(grp_fu_1265_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U604(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1273_p0),.din1(grp_fu_1273_p1),.din2(grp_fu_1273_p2),.ce(1'b1),.dout(grp_fu_1273_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U605(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_285),.din1(grp_fu_1281_p1),.din2(grp_fu_1281_p2),.din3(grp_fu_1281_p3),.ce(1'b1),.dout(grp_fu_1281_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U606(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1291_p0),.din1(grp_fu_1291_p1),.din2(grp_fu_1291_p2),.ce(1'b1),.dout(grp_fu_1291_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U607(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1299_p0),.din1(grp_fu_1299_p1),.din2(grp_fu_1299_p2),.ce(1'b1),.dout(grp_fu_1299_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U608(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1307_p0),.din1(grp_fu_1307_p1),.din2(grp_fu_1307_p2),.ce(1'b1),.dout(grp_fu_1307_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U609(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1315_p0),.din1(grp_fu_1315_p1),.din2(grp_fu_1315_p2),.ce(1'b1),.dout(grp_fu_1315_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U610(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1323_p0),.din1(grp_fu_1323_p1),.din2(grp_fu_1323_p2),.ce(1'b1),.dout(grp_fu_1323_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U611(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1331_p0),.din1(grp_fu_1331_p1),.din2(grp_fu_1331_p2),.ce(1'b1),.dout(grp_fu_1331_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U612(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1339_p0),.din1(grp_fu_1339_p1),.din2(grp_fu_1339_p2),.ce(1'b1),.dout(grp_fu_1339_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U613(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1347_p0),.din1(grp_fu_1347_p1),.din2(grp_fu_1347_p2),.ce(1'b1),.dout(grp_fu_1347_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U614(.clk(ap_clk),.reset(ap_rst),.din0(v6_1_reg_297),.din1(grp_fu_1355_p1),.din2(grp_fu_1355_p2),.din3(grp_fu_1355_p3),.ce(1'b1),.dout(grp_fu_1355_p4));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U624(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1920_p0),.din1(grp_fu_1920_p1),.ce(grp_fu_1920_ce),.dout(grp_fu_1920_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U625(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1924_p0),.din1(grp_fu_1924_p1),.ce(grp_fu_1924_ce),.dout(grp_fu_1924_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U626(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1928_p0),.din1(grp_fu_1928_p1),.ce(grp_fu_1928_ce),.dout(grp_fu_1928_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U627(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1932_p0),.din1(grp_fu_1932_p1),.ce(grp_fu_1932_ce),.dout(grp_fu_1932_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U628(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1936_p0),.din1(grp_fu_1936_p1),.ce(grp_fu_1936_ce),.dout(grp_fu_1936_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_210_fu_357_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state23)) begin
            grp_kernel_2mm_node0_Pipeline_label_210_fu_357_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_210_fu_357_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_210_fu_357_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_2_fu_309_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_309_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_309_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_309_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        reg_403 <= v224_q1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        reg_403 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        reg_416 <= v224_q1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        reg_416 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        reg_421 <= v224_q0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        reg_421 <= v224_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        reg_426 <= v224_q1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        reg_426 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        reg_431 <= v224_q0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        reg_431 <= v224_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        reg_436 <= v224_q1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        reg_436 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        reg_441 <= v224_q0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        reg_441 <= v224_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_116 <= 8'd0;
    end else if (((icmp_ln32_1_fu_861_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        v5_fu_116 <= add_ln31_fu_877_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln32_fu_494_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v6_1_reg_297 <= 8'd0;
    end else if (((grp_kernel_2mm_node0_Pipeline_label_210_fu_357_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state24))) begin
        v6_1_reg_297 <= add_ln32_1_reg_1663;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_309_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        v6_reg_285 <= add_ln32_reg_1421;
    end else if (((icmp_ln31_fu_454_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        v6_reg_285 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        add_ln32_1_reg_1663 <= add_ln32_1_fu_871_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_reg_1421 <= add_ln32_fu_504_p2;
        zext_ln32_reg_1426[7 : 1] <= zext_ln32_fu_527_p1[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cmp11_reg_1408 <= cmp11_fu_488_p2;
        mul_ln38_reg_1402 <= mul_ln38_fu_482_p2;
        trunc_ln31_reg_1396 <= trunc_ln31_fu_464_p1;
        zext_ln31_reg_1383[7 : 0] <= zext_ln31_fu_460_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        empty_291_reg_1650 <= empty_291_fu_855_p2;
        v101_reg_1645 <= v101_fu_850_p1;
        v11_reg_1605 <= v11_fu_810_p1;
        v24_reg_1610 <= v24_fu_815_p1;
        v35_reg_1615 <= v35_fu_820_p1;
        v46_reg_1620 <= v46_fu_825_p1;
        v57_reg_1625 <= v57_fu_830_p1;
        v68_reg_1630 <= v68_fu_835_p1;
        v79_reg_1635 <= v79_fu_840_p1;
        v90_reg_1640 <= v90_fu_845_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        empty_319_reg_1879 <= empty_319_fu_1211_p2;
        v101_1_reg_1874 <= v101_1_fu_1206_p1;
        v11_1_reg_1834 <= v11_1_fu_1166_p1;
        v24_1_reg_1839 <= v24_1_fu_1171_p1;
        v35_1_reg_1844 <= v35_1_fu_1176_p1;
        v46_1_reg_1849 <= v46_1_fu_1181_p1;
        v57_1_reg_1854 <= v57_1_fu_1186_p1;
        v68_1_reg_1859 <= v68_1_fu_1191_p1;
        v79_1_reg_1864 <= v79_1_fu_1196_p1;
        v90_1_reg_1869 <= v90_1_fu_1201_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        mul_ln101_1_reg_1814 <= mul_ln101_1_fu_1126_p2;
        mul_ln114_1_reg_1819 <= mul_ln114_1_fu_1135_p2;
        mul_ln127_1_reg_1824 <= mul_ln127_1_fu_1144_p2;
        mul_ln140_1_reg_1829 <= mul_ln140_1_fu_1160_p2;
        mul_ln34_1_reg_1789 <= mul_ln34_1_fu_1081_p2;
        mul_ln49_1_reg_1794 <= mul_ln49_1_fu_1090_p2;
        mul_ln62_1_reg_1799 <= mul_ln62_1_fu_1099_p2;
        mul_ln75_1_reg_1804 <= mul_ln75_1_fu_1108_p2;
        mul_ln88_1_reg_1809 <= mul_ln88_1_fu_1117_p2;
        trunc_ln32_1_reg_1783 <= trunc_ln32_1_fu_1063_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        mul_ln101_reg_1585 <= mul_ln101_fu_770_p2;
        mul_ln114_reg_1590 <= mul_ln114_fu_779_p2;
        mul_ln127_reg_1595 <= mul_ln127_fu_788_p2;
        mul_ln140_reg_1600 <= mul_ln140_fu_804_p2;
        mul_ln34_reg_1560 <= mul_ln34_fu_725_p2;
        mul_ln49_reg_1565 <= mul_ln49_fu_734_p2;
        mul_ln62_reg_1570 <= mul_ln62_fu_743_p2;
        mul_ln75_reg_1575 <= mul_ln75_fu_752_p2;
        mul_ln88_reg_1580 <= mul_ln88_fu_761_p2;
        trunc_ln32_reg_1554 <= trunc_ln32_fu_707_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_408 <= v224_q1;
        reg_412 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_45_reg_1464 <= {{empty_272_fu_571_p2[7:3]}};
        tmp_46_reg_1474 <= {{empty_275_fu_591_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_47_reg_1489 <= {{empty_278_fu_615_p2[7:3]}};
        tmp_48_reg_1499 <= {{empty_281_fu_635_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_49_reg_1519 <= {{empty_284_fu_663_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        tmp_51_reg_1673 <= {{empty_294_fu_887_p2[7:3]}};
        tmp_52_reg_1683 <= {{empty_297_fu_907_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        tmp_53_reg_1693 <= {{empty_300_fu_927_p2[7:3]}};
        tmp_54_reg_1703 <= {{empty_303_fu_947_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        tmp_55_reg_1718 <= {{empty_306_fu_971_p2[7:3]}};
        tmp_56_reg_1728 <= {{empty_309_fu_991_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        tmp_57_reg_1748 <= {{empty_312_fu_1019_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_reg_1444 <= {{empty_266_fu_531_p2[7:3]}};
        tmp_s_reg_1454 <= {{empty_269_fu_551_p2[7:3]}};
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_309_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
    end
end
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
assign ap_ST_fsm_state17_blk = 1'b0;
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
assign ap_ST_fsm_state22_blk = 1'b0;
assign ap_ST_fsm_state23_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_210_fu_357_ap_done == 1'b0)) begin
        ap_ST_fsm_state24_blk = 1'b1;
    end else begin
        ap_ST_fsm_state24_blk = 1'b0;
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
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln31_fu_454_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
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
    if (((icmp_ln31_fu_454_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1884_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1884_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1884_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1884_p_ce;
    end else begin
        grp_fu_1884_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1884_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1884_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1884_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1884_p_din0;
    end else begin
        grp_fu_1884_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1884_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1884_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1884_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1884_p_din1;
    end else begin
        grp_fu_1884_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1888_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1888_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1888_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1888_p_ce;
    end else begin
        grp_fu_1888_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1888_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1888_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1888_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1888_p_din0;
    end else begin
        grp_fu_1888_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1888_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1888_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1888_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1888_p_din1;
    end else begin
        grp_fu_1888_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1892_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1892_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1892_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1892_p_ce;
    end else begin
        grp_fu_1892_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1892_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1892_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1892_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1892_p_din0;
    end else begin
        grp_fu_1892_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1892_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1892_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1892_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1892_p_din1;
    end else begin
        grp_fu_1892_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1896_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1896_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1896_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1896_p_ce;
    end else begin
        grp_fu_1896_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1896_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1896_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1896_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1896_p_din0;
    end else begin
        grp_fu_1896_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1896_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1896_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1896_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1896_p_din1;
    end else begin
        grp_fu_1896_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1900_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1900_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1900_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1900_p_ce;
    end else begin
        grp_fu_1900_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1900_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1900_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1900_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1900_p_din0;
    end else begin
        grp_fu_1900_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1900_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1900_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1900_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1900_p_din1;
    end else begin
        grp_fu_1900_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1904_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1904_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1904_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1904_p_ce;
    end else begin
        grp_fu_1904_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1904_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1904_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1904_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1904_p_din0;
    end else begin
        grp_fu_1904_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1904_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1904_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1904_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1904_p_din1;
    end else begin
        grp_fu_1904_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1908_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1908_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1908_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1908_p_ce;
    end else begin
        grp_fu_1908_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1908_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1908_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1908_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1908_p_din0;
    end else begin
        grp_fu_1908_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1908_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1908_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1908_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1908_p_din1;
    end else begin
        grp_fu_1908_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1912_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1912_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1912_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1912_p_ce;
    end else begin
        grp_fu_1912_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1912_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1912_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1912_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1912_p_din0;
    end else begin
        grp_fu_1912_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1912_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1912_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1912_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1912_p_din1;
    end else begin
        grp_fu_1912_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1916_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1916_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1916_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1916_p_ce;
    end else begin
        grp_fu_1916_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1916_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1916_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1916_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1916_p_din0;
    end else begin
        grp_fu_1916_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1916_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1916_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1916_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1916_p_din1;
    end else begin
        grp_fu_1916_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1920_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1920_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1920_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1920_p_ce;
    end else begin
        grp_fu_1920_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1920_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1920_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1920_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1920_p_din0;
    end else begin
        grp_fu_1920_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1920_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1920_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1920_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1920_p_din1;
    end else begin
        grp_fu_1920_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1924_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1924_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1924_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1924_p_ce;
    end else begin
        grp_fu_1924_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1924_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1924_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1924_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1924_p_din0;
    end else begin
        grp_fu_1924_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1924_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1924_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1924_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1924_p_din1;
    end else begin
        grp_fu_1924_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1928_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1928_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1928_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1928_p_ce;
    end else begin
        grp_fu_1928_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1928_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1928_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1928_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1928_p_din0;
    end else begin
        grp_fu_1928_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1928_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1928_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1928_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1928_p_din1;
    end else begin
        grp_fu_1928_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1932_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1932_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1932_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1932_p_ce;
    end else begin
        grp_fu_1932_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1932_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1932_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1932_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1932_p_din0;
    end else begin
        grp_fu_1932_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1932_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1932_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1932_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1932_p_din1;
    end else begin
        grp_fu_1932_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1936_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1936_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1936_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1936_p_ce;
    end else begin
        grp_fu_1936_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1936_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1936_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1936_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1936_p_din0;
    end else begin
        grp_fu_1936_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1936_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1936_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1936_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1936_p_din1;
    end else begin
        grp_fu_1936_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1940_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1940_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1940_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1940_p_ce;
    end else begin
        grp_fu_1940_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1940_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1940_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1940_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1940_p_din0;
    end else begin
        grp_fu_1940_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1940_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1940_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1940_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1940_p_din1;
    end else begin
        grp_fu_1940_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1944_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1944_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1944_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1944_p_ce;
    end else begin
        grp_fu_1944_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1944_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1944_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1944_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1944_p_din0;
    end else begin
        grp_fu_1944_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1944_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1944_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1944_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1944_p_din1;
    end else begin
        grp_fu_1944_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1948_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1948_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1948_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1948_p_ce;
    end else begin
        grp_fu_1948_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1948_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1948_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1948_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1948_p_din0;
    end else begin
        grp_fu_1948_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1948_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1948_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1948_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1948_p_din1;
    end else begin
        grp_fu_1948_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1952_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1952_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1952_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1952_p_ce;
    end else begin
        grp_fu_1952_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1952_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1952_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1952_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1952_p_din0;
    end else begin
        grp_fu_1952_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1952_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_grp_fu_1952_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1952_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_grp_fu_1952_p_din1;
    end else begin
        grp_fu_1952_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v224_address0_local = p_cast14399_fu_1059_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        v224_address0_local = p_cast14397_fu_1051_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v224_address0_local = p_cast14395_fu_1043_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_address0_local = p_cast14393_fu_1015_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address0_local = p_cast14389_fu_699_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address0_local = p_cast14387_fu_691_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address0_local = p_cast14385_fu_683_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address0_local = p_cast14384_fu_659_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_address0_local = p_cast14383_fu_611_p1;
    end else begin
        v224_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v224_address1_local = p_cast14398_fu_1055_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        v224_address1_local = p_cast14396_fu_1047_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v224_address1_local = p_cast14394_fu_1039_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_address1_local = p_cast14392_fu_1011_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v224_address1_local = p_cast14391_fu_967_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address1_local = p_cast14390_fu_703_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address1_local = p_cast14388_fu_695_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address1_local = p_cast14386_fu_687_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address1_local = p_cast_fu_655_p1;
    end else begin
        v224_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state7))) begin
        v224_ce0_local = 1'b1;
    end else begin
        v224_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state7))) begin
        v224_ce1_local = 1'b1;
    end else begin
        v224_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_0_address0;
    end else begin
        v229_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_0_address1;
    end else begin
        v229_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_0_ce0;
    end else begin
        v229_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_0_ce1;
    end else begin
        v229_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_0_d0;
    end else begin
        v229_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_0_d1;
    end else begin
        v229_0_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_0_we0;
    end else begin
        v229_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_0_we1;
    end else begin
        v229_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_1_address0;
    end else begin
        v229_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_1_address1;
    end else begin
        v229_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_1_ce0;
    end else begin
        v229_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_1_ce1;
    end else begin
        v229_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_1_d0;
    end else begin
        v229_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_1_d1;
    end else begin
        v229_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_1_we0;
    end else begin
        v229_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_1_we1;
    end else begin
        v229_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_2_address0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_2_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_2_address0;
    end else begin
        v229_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_2_address1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_2_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_2_address1;
    end else begin
        v229_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_2_ce0;
    end else begin
        v229_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_2_ce1;
    end else begin
        v229_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_2_d0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_2_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_2_d0;
    end else begin
        v229_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_2_d1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_2_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_2_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_2_d1;
    end else begin
        v229_2_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_2_we0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_2_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_2_we0;
    end else begin
        v229_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_2_we1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_2_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_2_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_2_we1;
    end else begin
        v229_2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_3_address0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_3_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_3_address0;
    end else begin
        v229_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_3_address1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_3_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_3_address1;
    end else begin
        v229_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_3_ce0;
    end else begin
        v229_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_3_ce1;
    end else begin
        v229_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_3_d0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_3_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_3_d0;
    end else begin
        v229_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_3_d1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_3_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_3_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_3_d1;
    end else begin
        v229_3_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_3_we0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_3_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_3_we0;
    end else begin
        v229_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_3_we1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_3_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_3_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_3_we1;
    end else begin
        v229_3_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_4_address0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_4_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_4_address0;
    end else begin
        v229_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_4_address1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_4_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_4_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_4_address1;
    end else begin
        v229_4_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_4_ce0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_4_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_4_ce0;
    end else begin
        v229_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_4_ce1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_4_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_4_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_4_ce1;
    end else begin
        v229_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_4_d0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_4_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_4_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_4_d0;
    end else begin
        v229_4_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_4_d1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_4_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_4_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_4_d1;
    end else begin
        v229_4_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_4_we0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_4_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_4_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_4_we0;
    end else begin
        v229_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_4_we1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_4_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_4_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_4_we1;
    end else begin
        v229_4_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_5_address0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_5_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_5_address0;
    end else begin
        v229_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_5_address1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_5_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_5_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_5_address1;
    end else begin
        v229_5_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_5_ce0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_5_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_5_ce0;
    end else begin
        v229_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_5_ce1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_5_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_5_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_5_ce1;
    end else begin
        v229_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_5_d0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_5_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_5_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_5_d0;
    end else begin
        v229_5_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_5_d1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_5_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_5_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_5_d1;
    end else begin
        v229_5_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_5_we0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_5_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_5_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_5_we0;
    end else begin
        v229_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_5_we1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_5_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_5_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_5_we1;
    end else begin
        v229_5_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_6_address0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_6_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_6_address0;
    end else begin
        v229_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_6_address1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_6_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_6_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_6_address1;
    end else begin
        v229_6_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_6_ce0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_6_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_6_ce0;
    end else begin
        v229_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_6_ce1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_6_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_6_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_6_ce1;
    end else begin
        v229_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_6_d0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_6_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_6_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_6_d0;
    end else begin
        v229_6_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_6_d1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_6_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_6_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_6_d1;
    end else begin
        v229_6_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_6_we0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_6_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_6_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_6_we0;
    end else begin
        v229_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_6_we1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_6_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_6_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_6_we1;
    end else begin
        v229_6_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_7_address0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_7_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_7_address0;
    end else begin
        v229_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_7_address1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_7_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_7_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_7_address1;
    end else begin
        v229_7_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_7_ce0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_7_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_7_ce0;
    end else begin
        v229_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_7_ce1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_7_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_7_ce1;
    end else begin
        v229_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_7_d0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_7_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_7_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_7_d0;
    end else begin
        v229_7_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_7_d1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_7_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_7_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_7_d1;
    end else begin
        v229_7_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_7_we0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_7_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_7_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_7_we0;
    end else begin
        v229_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_7_we1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v229_7_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_7_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v229_7_we1;
    end else begin
        v229_7_we1 = 1'b0;
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
            if (((icmp_ln31_fu_454_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln32_fu_494_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
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
            if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_309_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state14 : begin
            if (((icmp_ln32_1_fu_861_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
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
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_210_fu_357_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state24))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state24;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln31_fu_877_p2 = (v5_fu_116 + 8'd2);
assign add_ln32_1_fu_871_p2 = (v6_1_reg_297 + 8'd9);
assign add_ln32_fu_504_p2 = (v6_reg_285 + 8'd9);
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
assign cmp11_fu_488_p2 = ((v5_fu_116 == 8'd0) ? 1'b1 : 1'b0);
assign empty_266_fu_531_p2 = (v6_reg_285 + 8'd1);
assign empty_269_fu_551_p2 = (v6_reg_285 + 8'd2);
assign empty_272_fu_571_p2 = (v6_reg_285 + 8'd3);
assign empty_275_fu_591_p2 = (v6_reg_285 + 8'd4);
assign empty_278_fu_615_p2 = (v6_reg_285 + 8'd5);
assign empty_281_fu_635_p2 = (v6_reg_285 + 8'd6);
assign empty_284_fu_663_p2 = (v6_reg_285 + 8'd7);
assign empty_290_fu_794_p2 = (lshr_ln2_fu_711_p4 + 5'd1);
assign empty_291_fu_855_p2 = ((trunc_ln32_reg_1554 == 3'd7) ? 1'b1 : 1'b0);
assign empty_294_fu_887_p2 = (v6_1_reg_297 + 8'd1);
assign empty_297_fu_907_p2 = (v6_1_reg_297 + 8'd2);
assign empty_300_fu_927_p2 = (v6_1_reg_297 + 8'd3);
assign empty_303_fu_947_p2 = (v6_1_reg_297 + 8'd4);
assign empty_306_fu_971_p2 = (v6_1_reg_297 + 8'd5);
assign empty_309_fu_991_p2 = (v6_1_reg_297 + 8'd6);
assign empty_312_fu_1019_p2 = (v6_1_reg_297 + 8'd7);
assign empty_318_fu_1150_p2 = (lshr_ln32_1_fu_1067_p4 + 5'd1);
assign empty_319_fu_1211_p2 = ((trunc_ln32_1_reg_1783 == 3'd7) ? 1'b1 : 1'b0);
assign grp_fu_1217_p0 = grp_fu_1217_p00;
assign grp_fu_1217_p00 = v6_reg_285;
assign grp_fu_1217_p1 = 16'd190;
assign grp_fu_1217_p2 = zext_ln31_reg_1383;
assign grp_fu_1225_p0 = grp_fu_1225_p00;
assign grp_fu_1225_p00 = empty_266_fu_531_p2;
assign grp_fu_1225_p1 = 16'd190;
assign grp_fu_1225_p2 = zext_ln31_reg_1383;
assign grp_fu_1233_p0 = grp_fu_1233_p00;
assign grp_fu_1233_p00 = empty_269_fu_551_p2;
assign grp_fu_1233_p1 = 16'd190;
assign grp_fu_1233_p2 = zext_ln31_reg_1383;
assign grp_fu_1241_p0 = grp_fu_1241_p00;
assign grp_fu_1241_p00 = empty_272_fu_571_p2;
assign grp_fu_1241_p1 = 16'd190;
assign grp_fu_1241_p2 = zext_ln31_reg_1383;
assign grp_fu_1249_p0 = grp_fu_1249_p00;
assign grp_fu_1249_p00 = empty_275_fu_591_p2;
assign grp_fu_1249_p1 = 16'd190;
assign grp_fu_1249_p2 = zext_ln31_reg_1383;
assign grp_fu_1257_p0 = grp_fu_1257_p00;
assign grp_fu_1257_p00 = empty_278_fu_615_p2;
assign grp_fu_1257_p1 = 16'd190;
assign grp_fu_1257_p2 = zext_ln31_reg_1383;
assign grp_fu_1265_p0 = grp_fu_1265_p00;
assign grp_fu_1265_p00 = empty_281_fu_635_p2;
assign grp_fu_1265_p1 = 16'd190;
assign grp_fu_1265_p2 = zext_ln31_reg_1383;
assign grp_fu_1273_p0 = grp_fu_1273_p00;
assign grp_fu_1273_p00 = empty_284_fu_663_p2;
assign grp_fu_1273_p1 = 16'd190;
assign grp_fu_1273_p2 = zext_ln31_reg_1383;
assign grp_fu_1281_p1 = 8'd8;
assign grp_fu_1281_p2 = 16'd190;
assign grp_fu_1281_p3 = zext_ln31_reg_1383;
assign grp_fu_1291_p0 = grp_fu_1291_p00;
assign grp_fu_1291_p00 = v6_1_reg_297;
assign grp_fu_1291_p1 = 16'd190;
assign grp_fu_1291_p2 = zext_ln32_reg_1426;
assign grp_fu_1299_p0 = grp_fu_1299_p00;
assign grp_fu_1299_p00 = empty_294_fu_887_p2;
assign grp_fu_1299_p1 = 16'd190;
assign grp_fu_1299_p2 = zext_ln32_reg_1426;
assign grp_fu_1307_p0 = grp_fu_1307_p00;
assign grp_fu_1307_p00 = empty_297_fu_907_p2;
assign grp_fu_1307_p1 = 16'd190;
assign grp_fu_1307_p2 = zext_ln32_reg_1426;
assign grp_fu_1315_p0 = grp_fu_1315_p00;
assign grp_fu_1315_p00 = empty_300_fu_927_p2;
assign grp_fu_1315_p1 = 16'd190;
assign grp_fu_1315_p2 = zext_ln32_reg_1426;
assign grp_fu_1323_p0 = grp_fu_1323_p00;
assign grp_fu_1323_p00 = empty_303_fu_947_p2;
assign grp_fu_1323_p1 = 16'd190;
assign grp_fu_1323_p2 = zext_ln32_reg_1426;
assign grp_fu_1331_p0 = grp_fu_1331_p00;
assign grp_fu_1331_p00 = empty_306_fu_971_p2;
assign grp_fu_1331_p1 = 16'd190;
assign grp_fu_1331_p2 = zext_ln32_reg_1426;
assign grp_fu_1339_p0 = grp_fu_1339_p00;
assign grp_fu_1339_p00 = empty_309_fu_991_p2;
assign grp_fu_1339_p1 = 16'd190;
assign grp_fu_1339_p2 = zext_ln32_reg_1426;
assign grp_fu_1347_p0 = grp_fu_1347_p00;
assign grp_fu_1347_p00 = empty_312_fu_1019_p2;
assign grp_fu_1347_p1 = 16'd190;
assign grp_fu_1347_p2 = zext_ln32_reg_1426;
assign grp_fu_1355_p1 = 8'd8;
assign grp_fu_1355_p2 = 16'd190;
assign grp_fu_1355_p3 = zext_ln32_reg_1426;
assign grp_fu_192_p_ce = grp_fu_1884_ce;
assign grp_fu_192_p_din0 = grp_fu_1884_p0;
assign grp_fu_192_p_din1 = grp_fu_1884_p1;
assign grp_fu_196_p_ce = grp_fu_1888_ce;
assign grp_fu_196_p_din0 = grp_fu_1888_p0;
assign grp_fu_196_p_din1 = grp_fu_1888_p1;
assign grp_fu_200_p_ce = grp_fu_1892_ce;
assign grp_fu_200_p_din0 = grp_fu_1892_p0;
assign grp_fu_200_p_din1 = grp_fu_1892_p1;
assign grp_fu_204_p_ce = grp_fu_1896_ce;
assign grp_fu_204_p_din0 = grp_fu_1896_p0;
assign grp_fu_204_p_din1 = grp_fu_1896_p1;
assign grp_fu_208_p_ce = grp_fu_1900_ce;
assign grp_fu_208_p_din0 = grp_fu_1900_p0;
assign grp_fu_208_p_din1 = grp_fu_1900_p1;
assign grp_fu_212_p_ce = grp_fu_1940_ce;
assign grp_fu_212_p_din0 = grp_fu_1940_p0;
assign grp_fu_212_p_din1 = grp_fu_1940_p1;
assign grp_fu_216_p_ce = grp_fu_1944_ce;
assign grp_fu_216_p_din0 = grp_fu_1944_p0;
assign grp_fu_216_p_din1 = grp_fu_1944_p1;
assign grp_fu_220_p_ce = grp_fu_1948_ce;
assign grp_fu_220_p_din0 = grp_fu_1948_p0;
assign grp_fu_220_p_din1 = grp_fu_1948_p1;
assign grp_fu_224_p_ce = grp_fu_1952_ce;
assign grp_fu_224_p_din0 = grp_fu_1952_p0;
assign grp_fu_224_p_din1 = grp_fu_1952_p1;
assign grp_fu_228_p_ce = grp_fu_1904_ce;
assign grp_fu_228_p_din0 = grp_fu_1904_p0;
assign grp_fu_228_p_din1 = grp_fu_1904_p1;
assign grp_fu_228_p_opcode = 2'd0;
assign grp_fu_232_p_ce = grp_fu_1908_ce;
assign grp_fu_232_p_din0 = grp_fu_1908_p0;
assign grp_fu_232_p_din1 = grp_fu_1908_p1;
assign grp_fu_232_p_opcode = 2'd0;
assign grp_fu_236_p_ce = grp_fu_1912_ce;
assign grp_fu_236_p_din0 = grp_fu_1912_p0;
assign grp_fu_236_p_din1 = grp_fu_1912_p1;
assign grp_fu_236_p_opcode = 2'd0;
assign grp_fu_240_p_ce = grp_fu_1916_ce;
assign grp_fu_240_p_din0 = grp_fu_1916_p0;
assign grp_fu_240_p_din1 = grp_fu_1916_p1;
assign grp_fu_240_p_opcode = 2'd0;
assign grp_kernel_2mm_node0_Pipeline_label_210_fu_357_ap_start = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_2_fu_309_ap_start = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_ap_start_reg;
assign icmp_ln31_fu_454_p2 = ((v5_fu_116 < 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_1_fu_861_p2 = ((v6_1_reg_297 < 8'd180) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_494_p2 = ((v6_reg_285 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln2_fu_711_p4 = {{v6_reg_285[7:3]}};
assign lshr_ln32_1_fu_1067_p4 = {{v6_1_reg_297[7:3]}};
assign lshr_ln_fu_468_p4 = {{v5_fu_116[7:2]}};
assign mul_ln101_1_fu_1126_p0 = mul_ln101_1_fu_1126_p00;
assign mul_ln101_1_fu_1126_p00 = tmp_55_reg_1718;
assign mul_ln101_1_fu_1126_p1 = 13'd220;
assign mul_ln101_fu_770_p0 = mul_ln101_fu_770_p00;
assign mul_ln101_fu_770_p00 = tmp_47_reg_1489;
assign mul_ln101_fu_770_p1 = 13'd220;
assign mul_ln114_1_fu_1135_p0 = mul_ln114_1_fu_1135_p00;
assign mul_ln114_1_fu_1135_p00 = tmp_56_reg_1728;
assign mul_ln114_1_fu_1135_p1 = 13'd220;
assign mul_ln114_fu_779_p0 = mul_ln114_fu_779_p00;
assign mul_ln114_fu_779_p00 = tmp_48_reg_1499;
assign mul_ln114_fu_779_p1 = 13'd220;
assign mul_ln127_1_fu_1144_p0 = mul_ln127_1_fu_1144_p00;
assign mul_ln127_1_fu_1144_p00 = tmp_57_reg_1748;
assign mul_ln127_1_fu_1144_p1 = 13'd220;
assign mul_ln127_fu_788_p0 = mul_ln127_fu_788_p00;
assign mul_ln127_fu_788_p00 = tmp_49_reg_1519;
assign mul_ln127_fu_788_p1 = 13'd220;
assign mul_ln140_1_fu_1160_p0 = mul_ln140_1_fu_1160_p00;
assign mul_ln140_1_fu_1160_p00 = empty_318_fu_1150_p2;
assign mul_ln140_1_fu_1160_p1 = 13'd220;
assign mul_ln140_fu_804_p0 = mul_ln140_fu_804_p00;
assign mul_ln140_fu_804_p00 = empty_290_fu_794_p2;
assign mul_ln140_fu_804_p1 = 13'd220;
assign mul_ln34_1_fu_1081_p0 = mul_ln34_1_fu_1081_p00;
assign mul_ln34_1_fu_1081_p00 = lshr_ln32_1_fu_1067_p4;
assign mul_ln34_1_fu_1081_p1 = 13'd220;
assign mul_ln34_fu_725_p0 = mul_ln34_fu_725_p00;
assign mul_ln34_fu_725_p00 = lshr_ln2_fu_711_p4;
assign mul_ln34_fu_725_p1 = 13'd220;
assign mul_ln38_fu_482_p0 = mul_ln38_fu_482_p00;
assign mul_ln38_fu_482_p00 = lshr_ln_fu_468_p4;
assign mul_ln38_fu_482_p1 = 14'd220;
assign mul_ln49_1_fu_1090_p0 = mul_ln49_1_fu_1090_p00;
assign mul_ln49_1_fu_1090_p00 = tmp_51_reg_1673;
assign mul_ln49_1_fu_1090_p1 = 13'd220;
assign mul_ln49_fu_734_p0 = mul_ln49_fu_734_p00;
assign mul_ln49_fu_734_p00 = tmp_reg_1444;
assign mul_ln49_fu_734_p1 = 13'd220;
assign mul_ln62_1_fu_1099_p0 = mul_ln62_1_fu_1099_p00;
assign mul_ln62_1_fu_1099_p00 = tmp_52_reg_1683;
assign mul_ln62_1_fu_1099_p1 = 13'd220;
assign mul_ln62_fu_743_p0 = mul_ln62_fu_743_p00;
assign mul_ln62_fu_743_p00 = tmp_s_reg_1454;
assign mul_ln62_fu_743_p1 = 13'd220;
assign mul_ln75_1_fu_1108_p0 = mul_ln75_1_fu_1108_p00;
assign mul_ln75_1_fu_1108_p00 = tmp_53_reg_1693;
assign mul_ln75_1_fu_1108_p1 = 13'd220;
assign mul_ln75_fu_752_p0 = mul_ln75_fu_752_p00;
assign mul_ln75_fu_752_p00 = tmp_45_reg_1464;
assign mul_ln75_fu_752_p1 = 13'd220;
assign mul_ln88_1_fu_1117_p0 = mul_ln88_1_fu_1117_p00;
assign mul_ln88_1_fu_1117_p00 = tmp_54_reg_1703;
assign mul_ln88_1_fu_1117_p1 = 13'd220;
assign mul_ln88_fu_761_p0 = mul_ln88_fu_761_p00;
assign mul_ln88_fu_761_p00 = tmp_46_reg_1474;
assign mul_ln88_fu_761_p1 = 13'd220;
assign or_ln_fu_519_p3 = {{tmp_50_fu_510_p4}, {1'd1}};
assign p_cast14383_fu_611_p1 = grp_fu_1217_p3;
assign p_cast14384_fu_659_p1 = grp_fu_1233_p3;
assign p_cast14385_fu_683_p1 = grp_fu_1241_p3;
assign p_cast14386_fu_687_p1 = grp_fu_1249_p3;
assign p_cast14387_fu_691_p1 = grp_fu_1257_p3;
assign p_cast14388_fu_695_p1 = grp_fu_1265_p3;
assign p_cast14389_fu_699_p1 = grp_fu_1273_p3;
assign p_cast14390_fu_703_p1 = grp_fu_1281_p4;
assign p_cast14391_fu_967_p1 = grp_fu_1291_p3;
assign p_cast14392_fu_1011_p1 = grp_fu_1299_p3;
assign p_cast14393_fu_1015_p1 = grp_fu_1307_p3;
assign p_cast14394_fu_1039_p1 = grp_fu_1315_p3;
assign p_cast14395_fu_1043_p1 = grp_fu_1323_p3;
assign p_cast14396_fu_1047_p1 = grp_fu_1331_p3;
assign p_cast14397_fu_1051_p1 = grp_fu_1339_p3;
assign p_cast14398_fu_1055_p1 = grp_fu_1347_p3;
assign p_cast14399_fu_1059_p1 = grp_fu_1355_p4;
assign p_cast_fu_655_p1 = grp_fu_1225_p3;
assign tmp_50_fu_510_p4 = {{v5_fu_116[7:1]}};
assign trunc_ln31_fu_464_p1 = v5_fu_116[1:0];
assign trunc_ln32_1_fu_1063_p1 = v6_1_reg_297[2:0];
assign trunc_ln32_fu_707_p1 = v6_reg_285[2:0];
assign v101_1_fu_1206_p1 = reg_441;
assign v101_fu_850_p1 = reg_441;
assign v11_1_fu_1166_p1 = reg_403;
assign v11_fu_810_p1 = reg_403;
assign v224_address0 = v224_address0_local;
assign v224_address1 = v224_address1_local;
assign v224_ce0 = v224_ce0_local;
assign v224_ce1 = v224_ce1_local;
assign v228_0_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v228_0_address0;
assign v228_0_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v228_0_address1;
assign v228_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v228_0_ce0;
assign v228_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v228_0_ce1;
assign v228_1_address0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v228_1_address0;
assign v228_1_address1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v228_1_address1;
assign v228_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v228_1_ce0;
assign v228_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v228_1_ce1;
assign v228_2_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v228_2_address0;
assign v228_2_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v228_2_address1;
assign v228_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v228_2_ce0;
assign v228_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_309_v228_2_ce1;
assign v228_3_address0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v228_3_address0;
assign v228_3_address1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v228_3_address1;
assign v228_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v228_3_ce0;
assign v228_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_357_v228_3_ce1;
assign v236_read = v236_read_local;
assign v24_1_fu_1171_p1 = reg_408;
assign v24_fu_815_p1 = reg_408;
assign v35_1_fu_1176_p1 = reg_412;
assign v35_fu_820_p1 = reg_412;
assign v46_1_fu_1181_p1 = reg_416;
assign v46_fu_825_p1 = reg_416;
assign v57_1_fu_1186_p1 = reg_421;
assign v57_fu_830_p1 = reg_421;
assign v68_1_fu_1191_p1 = reg_426;
assign v68_fu_835_p1 = reg_426;
assign v79_1_fu_1196_p1 = reg_431;
assign v79_fu_840_p1 = reg_431;
assign v90_1_fu_1201_p1 = reg_436;
assign v90_fu_845_p1 = reg_436;
assign zext_ln31_fu_460_p1 = v5_fu_116;
assign zext_ln32_fu_527_p1 = or_ln_fu_519_p3;
always @ (posedge ap_clk) begin
    zext_ln31_reg_1383[15:8] <= 8'b00000000;
    zext_ln32_reg_1426[0] <= 1'b1;
    zext_ln32_reg_1426[15:8] <= 8'b00000000;
end
endmodule 