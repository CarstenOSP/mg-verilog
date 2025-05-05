module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_address0,v226_ce0,v226_q0,v226_address1,v226_ce1,v226_q1,v227_address0,v227_ce0,v227_q0,v227_address1,v227_ce1,v227_q1,v236_din,v236_full_n,v236_write,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v113,grp_fu_176_p_din0,grp_fu_176_p_din1,grp_fu_176_p_opcode,grp_fu_176_p_dout0,grp_fu_176_p_ce,grp_fu_180_p_din0,grp_fu_180_p_din1,grp_fu_180_p_opcode,grp_fu_180_p_dout0,grp_fu_180_p_ce,grp_fu_184_p_din0,grp_fu_184_p_din1,grp_fu_184_p_dout0,grp_fu_184_p_ce,grp_fu_188_p_din0,grp_fu_188_p_din1,grp_fu_188_p_dout0,grp_fu_188_p_ce,grp_fu_192_p_din0,grp_fu_192_p_din1,grp_fu_192_p_dout0,grp_fu_192_p_ce,grp_fu_196_p_din0,grp_fu_196_p_din1,grp_fu_196_p_dout0,grp_fu_196_p_ce); 
parameter    ap_ST_fsm_state1 = 32'd1;
parameter    ap_ST_fsm_state2 = 32'd2;
parameter    ap_ST_fsm_state3 = 32'd4;
parameter    ap_ST_fsm_state4 = 32'd8;
parameter    ap_ST_fsm_state5 = 32'd16;
parameter    ap_ST_fsm_state6 = 32'd32;
parameter    ap_ST_fsm_state7 = 32'd64;
parameter    ap_ST_fsm_state8 = 32'd128;
parameter    ap_ST_fsm_state9 = 32'd256;
parameter    ap_ST_fsm_state10 = 32'd512;
parameter    ap_ST_fsm_state11 = 32'd1024;
parameter    ap_ST_fsm_state12 = 32'd2048;
parameter    ap_ST_fsm_state13 = 32'd4096;
parameter    ap_ST_fsm_state14 = 32'd8192;
parameter    ap_ST_fsm_state15 = 32'd16384;
parameter    ap_ST_fsm_state16 = 32'd32768;
parameter    ap_ST_fsm_state17 = 32'd65536;
parameter    ap_ST_fsm_state18 = 32'd131072;
parameter    ap_ST_fsm_state19 = 32'd262144;
parameter    ap_ST_fsm_state20 = 32'd524288;
parameter    ap_ST_fsm_state21 = 32'd1048576;
parameter    ap_ST_fsm_state22 = 32'd2097152;
parameter    ap_ST_fsm_state23 = 32'd4194304;
parameter    ap_ST_fsm_state24 = 32'd8388608;
parameter    ap_ST_fsm_state25 = 32'd16777216;
parameter    ap_ST_fsm_state26 = 32'd33554432;
parameter    ap_ST_fsm_state27 = 32'd67108864;
parameter    ap_ST_fsm_state28 = 32'd134217728;
parameter    ap_ST_fsm_state29 = 32'd268435456;
parameter    ap_ST_fsm_state30 = 32'd536870912;
parameter    ap_ST_fsm_state31 = 32'd1073741824;
parameter    ap_ST_fsm_state32 = 32'd2147483648;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [15:0] v226_address0;
output   v226_ce0;
input  [31:0] v226_q0;
output  [15:0] v226_address1;
output   v226_ce1;
input  [31:0] v226_q1;
output  [15:0] v227_address0;
output   v227_ce0;
input  [31:0] v227_q0;
output  [15:0] v227_address1;
output   v227_ce1;
input  [31:0] v227_q1;
output  [0:0] v236_din;
input   v236_full_n;
output   v236_write;
output  [13:0] v225_0_address0;
output   v225_0_ce0;
output   v225_0_we0;
output  [31:0] v225_0_d0;
input  [31:0] v225_0_q0;
output  [13:0] v225_0_address1;
output   v225_0_ce1;
output   v225_0_we1;
output  [31:0] v225_0_d1;
input  [31:0] v225_0_q1;
output  [13:0] v225_1_address0;
output   v225_1_ce0;
output   v225_1_we0;
output  [31:0] v225_1_d0;
input  [31:0] v225_1_q0;
output  [13:0] v225_1_address1;
output   v225_1_ce1;
output   v225_1_we1;
output  [31:0] v225_1_d1;
input  [31:0] v225_1_q1;
output  [13:0] v225_2_address0;
output   v225_2_ce0;
output   v225_2_we0;
output  [31:0] v225_2_d0;
input  [31:0] v225_2_q0;
output  [13:0] v225_2_address1;
output   v225_2_ce1;
output   v225_2_we1;
output  [31:0] v225_2_d1;
input  [31:0] v225_2_q1;
output  [13:0] v225_3_address0;
output   v225_3_ce0;
output   v225_3_we0;
output  [31:0] v225_3_d0;
input  [31:0] v225_3_q0;
output  [13:0] v225_3_address1;
output   v225_3_ce1;
output   v225_3_we1;
output  [31:0] v225_3_d1;
input  [31:0] v225_3_q1;
input  [31:0] v113;
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
output  [31:0] grp_fu_196_p_din0;
output  [31:0] grp_fu_196_p_din1;
input  [31:0] grp_fu_196_p_dout0;
output   grp_fu_196_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[15:0] v227_address0;
reg v227_ce0;
reg[15:0] v227_address1;
reg v227_ce1;
reg[13:0] v225_0_address0;
reg v225_0_ce0;
reg v225_0_we0;
reg[31:0] v225_0_d0;
reg[13:0] v225_0_address1;
reg v225_0_ce1;
reg v225_0_we1;
reg[31:0] v225_0_d1;
reg[13:0] v225_1_address0;
reg v225_1_ce0;
reg v225_1_we0;
reg[31:0] v225_1_d0;
reg[13:0] v225_1_address1;
reg v225_1_ce1;
reg v225_1_we1;
reg[31:0] v225_1_d1;
reg[13:0] v225_2_address0;
reg v225_2_ce0;
reg v225_2_we0;
reg[31:0] v225_2_d0;
reg[13:0] v225_2_address1;
reg v225_2_ce1;
reg v225_2_we1;
reg[31:0] v225_2_d1;
reg[13:0] v225_3_address0;
reg v225_3_ce0;
reg v225_3_we0;
reg[31:0] v225_3_d0;
reg[13:0] v225_3_address1;
reg v225_3_ce1;
reg v225_3_we1;
reg[31:0] v225_3_d1;
(* fsm_encoding = "none" *) reg   [31:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_507_p2;
reg   [31:0] reg_402;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state22;
reg   [31:0] reg_407;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state23;
reg   [31:0] reg_411;
reg   [31:0] reg_415;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state24;
reg   [31:0] reg_420;
reg   [31:0] reg_425;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state25;
reg   [31:0] reg_430;
reg   [31:0] reg_435;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state26;
reg   [31:0] reg_440;
reg   [31:0] reg_445;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state30;
reg   [31:0] reg_451;
reg   [31:0] reg_457;
reg   [31:0] reg_463;
wire   [31:0] grp_fu_382_p2;
reg   [31:0] reg_469;
wire   [31:0] grp_fu_386_p2;
reg   [31:0] reg_475;
wire   [31:0] grp_fu_390_p2;
reg   [31:0] reg_481;
wire   [31:0] grp_fu_394_p2;
reg   [31:0] reg_487;
wire   [31:0] grp_fu_398_p2;
reg   [31:0] reg_493;
wire   [15:0] zext_ln175_fu_513_p1;
reg   [15:0] zext_ln175_reg_1410;
wire   [15:0] mul_ln175_fu_517_p2;
reg   [15:0] mul_ln175_reg_1423;
wire   [0:0] cmp11_fu_523_p2;
reg   [0:0] cmp11_reg_1428;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln169_fu_539_p2;
reg   [7:0] add_ln169_reg_1441;
wire   [15:0] zext_ln175_31_fu_562_p1;
reg   [15:0] zext_ln175_31_reg_1446;
wire   [15:0] mul_ln175_1_fu_566_p2;
reg   [15:0] mul_ln175_1_reg_1459;
wire    ap_CS_fsm_state4;
reg   [5:0] tmp_reg_1469;
reg   [5:0] tmp_1_reg_1479;
wire    ap_CS_fsm_state5;
reg   [5:0] tmp_2_reg_1489;
wire    ap_CS_fsm_state6;
reg   [5:0] tmp_3_reg_1504;
reg   [5:0] tmp_4_reg_1514;
reg   [5:0] tmp_5_reg_1534;
wire   [31:0] v119_fu_728_p1;
wire    ap_CS_fsm_state12;
wire   [31:0] v132_fu_733_p1;
wire   [31:0] v143_fu_738_p1;
wire   [31:0] v154_fu_743_p1;
wire   [31:0] v165_fu_748_p1;
wire   [31:0] v176_fu_753_p1;
wire   [31:0] v187_fu_758_p1;
wire   [31:0] v198_fu_763_p1;
wire   [31:0] v209_fu_768_p1;
wire   [1:0] trunc_ln169_fu_773_p1;
reg   [1:0] trunc_ln169_reg_1614;
wire   [13:0] mul_ln171_fu_791_p2;
reg   [13:0] mul_ln171_reg_1620;
wire   [13:0] mul_ln186_fu_800_p2;
reg   [13:0] mul_ln186_reg_1625;
wire   [13:0] mul_ln199_fu_809_p2;
reg   [13:0] mul_ln199_reg_1630;
wire   [13:0] mul_ln212_fu_818_p2;
reg   [13:0] mul_ln212_reg_1635;
wire   [13:0] mul_ln225_fu_834_p2;
reg   [13:0] mul_ln225_reg_1640;
wire   [13:0] mul_ln238_fu_843_p2;
reg   [13:0] mul_ln238_reg_1645;
wire   [13:0] mul_ln251_fu_852_p2;
reg   [13:0] mul_ln251_reg_1650;
wire   [13:0] mul_ln264_fu_861_p2;
reg   [13:0] mul_ln264_reg_1655;
wire   [13:0] mul_ln277_fu_877_p2;
reg   [13:0] mul_ln277_reg_1660;
wire   [0:0] empty_49_fu_883_p2;
reg   [0:0] empty_49_reg_1665;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state18;
wire   [7:0] add_ln169_1_fu_899_p2;
reg   [7:0] add_ln169_1_reg_1678;
wire    ap_CS_fsm_state19;
reg   [5:0] tmp_s_reg_1688;
reg   [5:0] tmp_13_reg_1698;
wire    ap_CS_fsm_state20;
reg   [5:0] tmp_14_reg_1708;
wire    ap_CS_fsm_state21;
reg   [5:0] tmp_15_reg_1723;
reg   [5:0] tmp_16_reg_1733;
reg   [5:0] tmp_17_reg_1753;
wire   [31:0] v119_1_fu_1071_p1;
wire    ap_CS_fsm_state27;
wire   [31:0] v132_1_fu_1076_p1;
wire   [31:0] v143_1_fu_1081_p1;
wire   [31:0] v154_1_fu_1086_p1;
wire   [31:0] v165_1_fu_1091_p1;
wire   [31:0] v176_1_fu_1096_p1;
wire   [31:0] v187_1_fu_1101_p1;
wire   [31:0] v198_1_fu_1106_p1;
wire   [31:0] v209_1_fu_1111_p1;
wire   [1:0] trunc_ln169_1_fu_1116_p1;
reg   [1:0] trunc_ln169_1_reg_1833;
wire   [13:0] mul_ln171_1_fu_1134_p2;
reg   [13:0] mul_ln171_1_reg_1839;
wire   [13:0] mul_ln186_1_fu_1143_p2;
reg   [13:0] mul_ln186_1_reg_1844;
wire   [13:0] mul_ln199_1_fu_1152_p2;
reg   [13:0] mul_ln199_1_reg_1849;
wire   [13:0] mul_ln212_1_fu_1161_p2;
reg   [13:0] mul_ln212_1_reg_1854;
wire   [13:0] mul_ln225_1_fu_1177_p2;
reg   [13:0] mul_ln225_1_reg_1859;
wire   [13:0] mul_ln238_1_fu_1186_p2;
reg   [13:0] mul_ln238_1_reg_1864;
wire   [13:0] mul_ln251_1_fu_1195_p2;
reg   [13:0] mul_ln251_1_reg_1869;
wire   [13:0] mul_ln264_1_fu_1204_p2;
reg   [13:0] mul_ln264_1_reg_1874;
wire   [13:0] mul_ln277_1_fu_1220_p2;
reg   [13:0] mul_ln277_1_reg_1879;
wire   [0:0] empty_78_fu_1226_p2;
reg   [0:0] empty_78_reg_1884;
wire    ap_CS_fsm_state31;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_295_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_295_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_295_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_295_ap_ready;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_0_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_0_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_0_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_0_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_0_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_0_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_1_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_1_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_1_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_1_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_1_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_1_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_2_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_2_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_2_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_2_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_2_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_2_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_2_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_3_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_3_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_3_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_3_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_3_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_3_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_3_d1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v227_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1889_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1889_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1889_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1889_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1893_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1893_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1893_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1893_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1897_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1897_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1897_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1897_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1901_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1901_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1901_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1901_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1905_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1905_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1905_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1905_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_366_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_366_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_366_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_370_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_370_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_370_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_374_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_374_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_374_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_378_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_378_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_378_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_382_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_382_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_382_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_331_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_331_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_331_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_331_ap_ready;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_0_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_0_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_0_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_0_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_0_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_0_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_1_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_1_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_1_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_1_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_1_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_1_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_2_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_2_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_2_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_2_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_2_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_2_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_2_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_3_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_3_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_3_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_3_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_3_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_3_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_3_d1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v227_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1889_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1889_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1889_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1889_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1893_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1893_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1893_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1893_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1897_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1897_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1897_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1897_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1901_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1901_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1901_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1901_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1905_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1905_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1905_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1905_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_366_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_366_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_366_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_370_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_370_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_370_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_374_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_374_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_374_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_378_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_378_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_378_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_382_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_382_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_382_p_ce;
reg   [7:0] v115_reg_271;
reg    ap_block_state2;
wire    ap_CS_fsm_state17;
reg   [7:0] v115_1_reg_283;
wire    ap_CS_fsm_state32;
wire   [0:0] icmp_ln169_fu_529_p2;
reg    grp_kernel_2mm_node1_Pipeline_label_5_fu_295_ap_start_reg;
reg    grp_kernel_2mm_node1_Pipeline_label_53_fu_331_ap_start_reg;
wire   [63:0] p_cast7256_fu_632_p1;
wire   [63:0] p_cast_fu_676_p1;
wire   [63:0] p_cast7257_fu_680_p1;
wire   [63:0] p_cast7258_fu_704_p1;
wire   [63:0] p_cast7259_fu_708_p1;
wire   [63:0] p_cast7260_fu_712_p1;
wire   [63:0] p_cast7261_fu_716_p1;
wire   [63:0] p_cast7262_fu_720_p1;
wire   [63:0] p_cast7263_fu_724_p1;
wire   [63:0] p_cast7264_fu_975_p1;
wire   [63:0] p_cast7265_fu_1019_p1;
wire   [63:0] p_cast7266_fu_1023_p1;
wire   [63:0] p_cast7267_fu_1047_p1;
wire   [63:0] p_cast7268_fu_1051_p1;
wire   [63:0] p_cast7269_fu_1055_p1;
wire   [63:0] p_cast7270_fu_1059_p1;
wire   [63:0] p_cast7271_fu_1063_p1;
wire   [63:0] p_cast7272_fu_1067_p1;
reg   [7:0] v114_fu_100;
wire   [7:0] add_ln168_fu_905_p2;
wire   [0:0] icmp_ln169_1_fu_889_p2;
reg    v236_write_local;
reg    v226_ce0_local;
reg   [15:0] v226_address0_local;
reg    v226_ce1_local;
reg   [15:0] v226_address1_local;
reg   [31:0] grp_fu_366_p0;
reg   [31:0] grp_fu_366_p1;
reg   [31:0] grp_fu_370_p0;
reg   [31:0] grp_fu_370_p1;
reg   [31:0] grp_fu_374_p0;
reg   [31:0] grp_fu_374_p1;
reg   [31:0] grp_fu_378_p0;
reg   [31:0] grp_fu_378_p1;
reg   [31:0] grp_fu_382_p0;
reg   [31:0] grp_fu_382_p1;
reg   [31:0] grp_fu_386_p0;
reg   [31:0] grp_fu_390_p0;
reg   [31:0] grp_fu_394_p0;
reg   [31:0] grp_fu_398_p0;
wire   [7:0] mul_ln175_fu_517_p0;
wire   [8:0] mul_ln175_fu_517_p1;
wire   [6:0] tmp_6_fu_545_p4;
wire   [7:0] or_ln_fu_554_p3;
wire   [7:0] mul_ln175_1_fu_566_p0;
wire   [8:0] mul_ln175_1_fu_566_p1;
wire   [7:0] empty_23_fu_572_p2;
wire   [7:0] empty_26_fu_592_p2;
wire   [7:0] empty_29_fu_612_p2;
wire   [15:0] grp_fu_1232_p3;
wire   [7:0] empty_36_fu_636_p2;
wire   [7:0] empty_39_fu_656_p2;
wire   [15:0] grp_fu_1240_p3;
wire   [15:0] grp_fu_1248_p3;
wire   [7:0] empty_42_fu_684_p2;
wire   [15:0] grp_fu_1256_p3;
wire   [15:0] grp_fu_1264_p4;
wire   [15:0] grp_fu_1274_p3;
wire   [15:0] grp_fu_1282_p3;
wire   [15:0] grp_fu_1290_p3;
wire   [15:0] grp_fu_1298_p4;
wire   [5:0] lshr_ln_fu_777_p4;
wire   [5:0] mul_ln171_fu_791_p0;
wire   [8:0] mul_ln171_fu_791_p1;
wire   [5:0] mul_ln186_fu_800_p0;
wire   [8:0] mul_ln186_fu_800_p1;
wire   [5:0] mul_ln199_fu_809_p0;
wire   [8:0] mul_ln199_fu_809_p1;
wire   [5:0] mul_ln212_fu_818_p0;
wire   [8:0] mul_ln212_fu_818_p1;
wire   [5:0] empty_35_fu_824_p2;
wire   [5:0] mul_ln225_fu_834_p0;
wire   [8:0] mul_ln225_fu_834_p1;
wire   [5:0] mul_ln238_fu_843_p0;
wire   [8:0] mul_ln238_fu_843_p1;
wire   [5:0] mul_ln251_fu_852_p0;
wire   [8:0] mul_ln251_fu_852_p1;
wire   [5:0] mul_ln264_fu_861_p0;
wire   [8:0] mul_ln264_fu_861_p1;
wire   [5:0] empty_48_fu_867_p2;
wire   [5:0] mul_ln277_fu_877_p0;
wire   [8:0] mul_ln277_fu_877_p1;
wire   [7:0] empty_52_fu_915_p2;
wire   [7:0] empty_55_fu_935_p2;
wire   [7:0] empty_58_fu_955_p2;
wire   [15:0] grp_fu_1308_p3;
wire   [7:0] empty_65_fu_979_p2;
wire   [7:0] empty_68_fu_999_p2;
wire   [15:0] grp_fu_1316_p3;
wire   [15:0] grp_fu_1324_p3;
wire   [7:0] empty_71_fu_1027_p2;
wire   [15:0] grp_fu_1332_p3;
wire   [15:0] grp_fu_1340_p4;
wire   [15:0] grp_fu_1350_p3;
wire   [15:0] grp_fu_1358_p3;
wire   [15:0] grp_fu_1366_p3;
wire   [15:0] grp_fu_1374_p4;
wire   [5:0] lshr_ln169_1_fu_1120_p4;
wire   [5:0] mul_ln171_1_fu_1134_p0;
wire   [8:0] mul_ln171_1_fu_1134_p1;
wire   [5:0] mul_ln186_1_fu_1143_p0;
wire   [8:0] mul_ln186_1_fu_1143_p1;
wire   [5:0] mul_ln199_1_fu_1152_p0;
wire   [8:0] mul_ln199_1_fu_1152_p1;
wire   [5:0] mul_ln212_1_fu_1161_p0;
wire   [8:0] mul_ln212_1_fu_1161_p1;
wire   [5:0] empty_64_fu_1167_p2;
wire   [5:0] mul_ln225_1_fu_1177_p0;
wire   [8:0] mul_ln225_1_fu_1177_p1;
wire   [5:0] mul_ln238_1_fu_1186_p0;
wire   [8:0] mul_ln238_1_fu_1186_p1;
wire   [5:0] mul_ln251_1_fu_1195_p0;
wire   [8:0] mul_ln251_1_fu_1195_p1;
wire   [5:0] mul_ln264_1_fu_1204_p0;
wire   [8:0] mul_ln264_1_fu_1204_p1;
wire   [5:0] empty_77_fu_1210_p2;
wire   [5:0] mul_ln277_1_fu_1220_p0;
wire   [8:0] mul_ln277_1_fu_1220_p1;
wire   [7:0] grp_fu_1232_p0;
wire   [7:0] grp_fu_1232_p1;
wire   [7:0] grp_fu_1232_p2;
wire   [7:0] grp_fu_1240_p0;
wire   [7:0] grp_fu_1240_p1;
wire   [7:0] grp_fu_1240_p2;
wire   [7:0] grp_fu_1248_p0;
wire   [7:0] grp_fu_1248_p1;
wire   [7:0] grp_fu_1248_p2;
wire   [7:0] grp_fu_1256_p0;
wire   [7:0] grp_fu_1256_p1;
wire   [7:0] grp_fu_1256_p2;
wire   [2:0] grp_fu_1264_p1;
wire   [7:0] grp_fu_1264_p2;
wire   [7:0] grp_fu_1264_p3;
wire   [7:0] grp_fu_1274_p0;
wire   [7:0] grp_fu_1274_p1;
wire   [7:0] grp_fu_1274_p2;
wire   [7:0] grp_fu_1282_p0;
wire   [7:0] grp_fu_1282_p1;
wire   [7:0] grp_fu_1282_p2;
wire   [7:0] grp_fu_1290_p0;
wire   [7:0] grp_fu_1290_p1;
wire   [7:0] grp_fu_1290_p2;
wire   [3:0] grp_fu_1298_p1;
wire   [7:0] grp_fu_1298_p2;
wire   [7:0] grp_fu_1298_p3;
wire   [7:0] grp_fu_1308_p0;
wire   [7:0] grp_fu_1308_p1;
wire   [7:0] grp_fu_1308_p2;
wire   [7:0] grp_fu_1316_p0;
wire   [7:0] grp_fu_1316_p1;
wire   [7:0] grp_fu_1316_p2;
wire   [7:0] grp_fu_1324_p0;
wire   [7:0] grp_fu_1324_p1;
wire   [7:0] grp_fu_1324_p2;
wire   [7:0] grp_fu_1332_p0;
wire   [7:0] grp_fu_1332_p1;
wire   [7:0] grp_fu_1332_p2;
wire   [2:0] grp_fu_1340_p1;
wire   [7:0] grp_fu_1340_p2;
wire   [7:0] grp_fu_1340_p3;
wire   [7:0] grp_fu_1350_p0;
wire   [7:0] grp_fu_1350_p1;
wire   [7:0] grp_fu_1350_p2;
wire   [7:0] grp_fu_1358_p0;
wire   [7:0] grp_fu_1358_p1;
wire   [7:0] grp_fu_1358_p2;
wire   [7:0] grp_fu_1366_p0;
wire   [7:0] grp_fu_1366_p1;
wire   [7:0] grp_fu_1366_p2;
wire   [3:0] grp_fu_1374_p1;
wire   [7:0] grp_fu_1374_p2;
wire   [7:0] grp_fu_1374_p3;
reg    grp_fu_366_ce;
reg    grp_fu_370_ce;
reg    grp_fu_374_ce;
reg    grp_fu_378_ce;
reg    grp_fu_382_ce;
reg   [31:0] grp_fu_1889_p0;
reg   [31:0] grp_fu_1889_p1;
reg    grp_fu_1889_ce;
reg   [31:0] grp_fu_1893_p0;
reg   [31:0] grp_fu_1893_p1;
reg    grp_fu_1893_ce;
wire   [31:0] grp_fu_1897_p2;
reg   [31:0] grp_fu_1897_p0;
reg   [31:0] grp_fu_1897_p1;
reg    grp_fu_1897_ce;
wire   [31:0] grp_fu_1901_p2;
reg   [31:0] grp_fu_1901_p0;
reg   [31:0] grp_fu_1901_p1;
reg    grp_fu_1901_ce;
wire   [31:0] grp_fu_1905_p2;
reg   [31:0] grp_fu_1905_p0;
reg   [31:0] grp_fu_1905_p1;
reg    grp_fu_1905_ce;
reg   [31:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
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
wire    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
reg    ap_ST_fsm_state17_blk;
wire    ap_ST_fsm_state18_blk;
wire    ap_ST_fsm_state19_blk;
wire    ap_ST_fsm_state20_blk;
wire    ap_ST_fsm_state21_blk;
wire    ap_ST_fsm_state22_blk;
wire    ap_ST_fsm_state23_blk;
wire    ap_ST_fsm_state24_blk;
wire    ap_ST_fsm_state25_blk;
wire    ap_ST_fsm_state26_blk;
wire    ap_ST_fsm_state27_blk;
wire    ap_ST_fsm_state28_blk;
wire    ap_ST_fsm_state29_blk;
wire    ap_ST_fsm_state30_blk;
wire    ap_ST_fsm_state31_blk;
reg    ap_ST_fsm_state32_blk;
wire   [15:0] grp_fu_1232_p00;
wire   [15:0] grp_fu_1240_p00;
wire   [15:0] grp_fu_1248_p00;
wire   [15:0] grp_fu_1256_p00;
wire   [15:0] grp_fu_1274_p00;
wire   [15:0] grp_fu_1282_p00;
wire   [15:0] grp_fu_1290_p00;
wire   [15:0] grp_fu_1308_p00;
wire   [15:0] grp_fu_1316_p00;
wire   [15:0] grp_fu_1324_p00;
wire   [15:0] grp_fu_1332_p00;
wire   [15:0] grp_fu_1350_p00;
wire   [15:0] grp_fu_1358_p00;
wire   [15:0] grp_fu_1366_p00;
wire   [13:0] mul_ln171_1_fu_1134_p00;
wire   [13:0] mul_ln171_fu_791_p00;
wire   [15:0] mul_ln175_1_fu_566_p00;
wire   [15:0] mul_ln175_fu_517_p00;
wire   [13:0] mul_ln186_1_fu_1143_p00;
wire   [13:0] mul_ln186_fu_800_p00;
wire   [13:0] mul_ln199_1_fu_1152_p00;
wire   [13:0] mul_ln199_fu_809_p00;
wire   [13:0] mul_ln212_1_fu_1161_p00;
wire   [13:0] mul_ln212_fu_818_p00;
wire   [13:0] mul_ln225_1_fu_1177_p00;
wire   [13:0] mul_ln225_fu_834_p00;
wire   [13:0] mul_ln238_1_fu_1186_p00;
wire   [13:0] mul_ln238_fu_843_p00;
wire   [13:0] mul_ln251_1_fu_1195_p00;
wire   [13:0] mul_ln251_fu_852_p00;
wire   [13:0] mul_ln264_1_fu_1204_p00;
wire   [13:0] mul_ln264_fu_861_p00;
wire   [13:0] mul_ln277_1_fu_1220_p00;
wire   [13:0] mul_ln277_fu_877_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 32'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_5_fu_295_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_53_fu_331_ap_start_reg = 1'b0;
#0 v114_fu_100 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_5 grp_kernel_2mm_node1_Pipeline_label_5_fu_295(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_ap_ready),.v225_0_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_0_address0),.v225_0_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_0_ce0),.v225_0_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_0_we0),.v225_0_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_0_d0),.v225_0_q0(v225_0_q0),.v225_0_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_0_address1),.v225_0_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_0_ce1),.v225_0_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_0_we1),.v225_0_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_0_d1),.v225_0_q1(v225_0_q1),.v225_1_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_1_address0),.v225_1_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_1_ce0),.v225_1_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_1_we0),.v225_1_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_1_d0),.v225_1_q0(v225_1_q0),.v225_1_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_1_address1),.v225_1_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_1_ce1),.v225_1_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_1_we1),.v225_1_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_1_d1),.v225_1_q1(v225_1_q1),.v225_2_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_2_address0),.v225_2_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_2_ce0),.v225_2_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_2_we0),.v225_2_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_2_d0),.v225_2_q0(v225_2_q0),.v225_2_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_2_address1),.v225_2_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_2_ce1),.v225_2_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_2_we1),.v225_2_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_2_d1),.v225_2_q1(v225_2_q1),.v225_3_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_3_address0),.v225_3_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_3_ce0),.v225_3_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_3_we0),.v225_3_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_3_d0),.v225_3_q0(v225_3_q0),.v225_3_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_3_address1),.v225_3_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_3_ce1),.v225_3_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_3_we1),.v225_3_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_3_d1),.v225_3_q1(v225_3_q1),.mul_ln175(mul_ln175_reg_1423),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v227_ce1),.v227_q1(v227_q1),.mul_ln171(mul_ln171_reg_1620),.mul_ln225(mul_ln225_reg_1640),.mul_ln277(mul_ln277_reg_1660),.mul_ln212(mul_ln212_reg_1635),.mul_ln264(mul_ln264_reg_1655),.mul_ln199(mul_ln199_reg_1630),.mul_ln251(mul_ln251_reg_1650),.mul_ln186(mul_ln186_reg_1625),.mul_ln238(mul_ln238_reg_1645),.empty_20(trunc_ln169_reg_1614),.cmp11(cmp11_reg_1428),.v120(reg_445),.v133(reg_451),.v144(reg_457),.v155(reg_463),.v166(reg_469),.v177(reg_475),.v188(reg_481),.v199(reg_487),.v210(reg_493),.empty(empty_49_reg_1665),.grp_fu_1889_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1889_p_din0),.grp_fu_1889_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1889_p_din1),.grp_fu_1889_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1889_p_opcode),.grp_fu_1889_p_dout0(grp_fu_176_p_dout0),.grp_fu_1889_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1889_p_ce),.grp_fu_1893_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1893_p_din0),.grp_fu_1893_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1893_p_din1),.grp_fu_1893_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1893_p_opcode),.grp_fu_1893_p_dout0(grp_fu_180_p_dout0),.grp_fu_1893_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1893_p_ce),.grp_fu_1897_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1897_p_din0),.grp_fu_1897_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1897_p_din1),.grp_fu_1897_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1897_p_opcode),.grp_fu_1897_p_dout0(grp_fu_1897_p2),.grp_fu_1897_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1897_p_ce),.grp_fu_1901_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1901_p_din0),.grp_fu_1901_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1901_p_din1),.grp_fu_1901_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1901_p_opcode),.grp_fu_1901_p_dout0(grp_fu_1901_p2),.grp_fu_1901_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1901_p_ce),.grp_fu_1905_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1905_p_din0),.grp_fu_1905_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1905_p_din1),.grp_fu_1905_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1905_p_opcode),.grp_fu_1905_p_dout0(grp_fu_1905_p2),.grp_fu_1905_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1905_p_ce),.grp_fu_366_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_366_p_din0),.grp_fu_366_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_366_p_din1),.grp_fu_366_p_dout0(grp_fu_184_p_dout0),.grp_fu_366_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_366_p_ce),.grp_fu_370_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_370_p_din0),.grp_fu_370_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_370_p_din1),.grp_fu_370_p_dout0(grp_fu_188_p_dout0),.grp_fu_370_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_370_p_ce),.grp_fu_374_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_374_p_din0),.grp_fu_374_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_374_p_din1),.grp_fu_374_p_dout0(grp_fu_192_p_dout0),.grp_fu_374_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_374_p_ce),.grp_fu_378_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_378_p_din0),.grp_fu_378_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_378_p_din1),.grp_fu_378_p_dout0(grp_fu_196_p_dout0),.grp_fu_378_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_378_p_ce),.grp_fu_382_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_382_p_din0),.grp_fu_382_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_382_p_din1),.grp_fu_382_p_dout0(grp_fu_382_p2),.grp_fu_382_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_382_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_53 grp_kernel_2mm_node1_Pipeline_label_53_fu_331(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_ap_ready),.v225_0_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_0_address0),.v225_0_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_0_ce0),.v225_0_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_0_we0),.v225_0_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_0_d0),.v225_0_q0(v225_0_q0),.v225_0_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_0_address1),.v225_0_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_0_ce1),.v225_0_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_0_we1),.v225_0_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_0_d1),.v225_0_q1(v225_0_q1),.v225_1_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_1_address0),.v225_1_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_1_ce0),.v225_1_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_1_we0),.v225_1_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_1_d0),.v225_1_q0(v225_1_q0),.v225_1_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_1_address1),.v225_1_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_1_ce1),.v225_1_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_1_we1),.v225_1_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_1_d1),.v225_1_q1(v225_1_q1),.v225_2_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_2_address0),.v225_2_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_2_ce0),.v225_2_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_2_we0),.v225_2_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_2_d0),.v225_2_q0(v225_2_q0),.v225_2_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_2_address1),.v225_2_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_2_ce1),.v225_2_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_2_we1),.v225_2_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_2_d1),.v225_2_q1(v225_2_q1),.v225_3_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_3_address0),.v225_3_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_3_ce0),.v225_3_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_3_we0),.v225_3_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_3_d0),.v225_3_q0(v225_3_q0),.v225_3_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_3_address1),.v225_3_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_3_ce1),.v225_3_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_3_we1),.v225_3_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_3_d1),.v225_3_q1(v225_3_q1),.mul_ln175_1(mul_ln175_1_reg_1459),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v227_ce1),.v227_q1(v227_q1),.mul_ln171_1(mul_ln171_1_reg_1839),.mul_ln225_1(mul_ln225_1_reg_1859),.mul_ln277_1(mul_ln277_1_reg_1879),.mul_ln212_1(mul_ln212_1_reg_1854),.mul_ln264_1(mul_ln264_1_reg_1874),.mul_ln199_1(mul_ln199_1_reg_1849),.mul_ln251_1(mul_ln251_1_reg_1869),.mul_ln186_1(mul_ln186_1_reg_1844),.mul_ln238_1(mul_ln238_1_reg_1864),.empty_19(trunc_ln169_1_reg_1833),.v120_6(reg_445),.v133_1(reg_451),.v144_1(reg_457),.v155_1(reg_463),.v166_1(reg_469),.v177_1(reg_475),.v188_1(reg_481),.v199_1(reg_487),.v210_1(reg_493),.empty(empty_78_reg_1884),.grp_fu_1889_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1889_p_din0),.grp_fu_1889_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1889_p_din1),.grp_fu_1889_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1889_p_opcode),.grp_fu_1889_p_dout0(grp_fu_176_p_dout0),.grp_fu_1889_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1889_p_ce),.grp_fu_1893_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1893_p_din0),.grp_fu_1893_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1893_p_din1),.grp_fu_1893_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1893_p_opcode),.grp_fu_1893_p_dout0(grp_fu_180_p_dout0),.grp_fu_1893_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1893_p_ce),.grp_fu_1897_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1897_p_din0),.grp_fu_1897_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1897_p_din1),.grp_fu_1897_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1897_p_opcode),.grp_fu_1897_p_dout0(grp_fu_1897_p2),.grp_fu_1897_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1897_p_ce),.grp_fu_1901_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1901_p_din0),.grp_fu_1901_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1901_p_din1),.grp_fu_1901_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1901_p_opcode),.grp_fu_1901_p_dout0(grp_fu_1901_p2),.grp_fu_1901_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1901_p_ce),.grp_fu_1905_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1905_p_din0),.grp_fu_1905_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1905_p_din1),.grp_fu_1905_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1905_p_opcode),.grp_fu_1905_p_dout0(grp_fu_1905_p2),.grp_fu_1905_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1905_p_ce),.grp_fu_366_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_366_p_din0),.grp_fu_366_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_366_p_din1),.grp_fu_366_p_dout0(grp_fu_184_p_dout0),.grp_fu_366_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_366_p_ce),.grp_fu_370_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_370_p_din0),.grp_fu_370_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_370_p_din1),.grp_fu_370_p_dout0(grp_fu_188_p_dout0),.grp_fu_370_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_370_p_ce),.grp_fu_374_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_374_p_din0),.grp_fu_374_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_374_p_din1),.grp_fu_374_p_dout0(grp_fu_192_p_dout0),.grp_fu_374_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_374_p_ce),.grp_fu_378_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_378_p_din0),.grp_fu_378_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_378_p_din1),.grp_fu_378_p_dout0(grp_fu_196_p_dout0),.grp_fu_378_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_378_p_ce),.grp_fu_382_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_382_p_din0),.grp_fu_382_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_382_p_din1),.grp_fu_382_p_dout0(grp_fu_382_p2),.grp_fu_382_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_382_p_ce));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U87(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_382_p0),.din1(grp_fu_382_p1),.ce(grp_fu_382_ce),.dout(grp_fu_382_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U88(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_386_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_386_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U89(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_390_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_390_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U90(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_394_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_394_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U91(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_398_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_398_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U92(.din0(mul_ln175_fu_517_p0),.din1(mul_ln175_fu_517_p1),.dout(mul_ln175_fu_517_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U93(.din0(mul_ln175_1_fu_566_p0),.din1(mul_ln175_1_fu_566_p1),.dout(mul_ln175_1_fu_566_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U94(.din0(mul_ln171_fu_791_p0),.din1(mul_ln171_fu_791_p1),.dout(mul_ln171_fu_791_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U95(.din0(mul_ln186_fu_800_p0),.din1(mul_ln186_fu_800_p1),.dout(mul_ln186_fu_800_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U96(.din0(mul_ln199_fu_809_p0),.din1(mul_ln199_fu_809_p1),.dout(mul_ln199_fu_809_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U97(.din0(mul_ln212_fu_818_p0),.din1(mul_ln212_fu_818_p1),.dout(mul_ln212_fu_818_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U98(.din0(mul_ln225_fu_834_p0),.din1(mul_ln225_fu_834_p1),.dout(mul_ln225_fu_834_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U99(.din0(mul_ln238_fu_843_p0),.din1(mul_ln238_fu_843_p1),.dout(mul_ln238_fu_843_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U100(.din0(mul_ln251_fu_852_p0),.din1(mul_ln251_fu_852_p1),.dout(mul_ln251_fu_852_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U101(.din0(mul_ln264_fu_861_p0),.din1(mul_ln264_fu_861_p1),.dout(mul_ln264_fu_861_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U102(.din0(mul_ln277_fu_877_p0),.din1(mul_ln277_fu_877_p1),.dout(mul_ln277_fu_877_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U103(.din0(mul_ln171_1_fu_1134_p0),.din1(mul_ln171_1_fu_1134_p1),.dout(mul_ln171_1_fu_1134_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U104(.din0(mul_ln186_1_fu_1143_p0),.din1(mul_ln186_1_fu_1143_p1),.dout(mul_ln186_1_fu_1143_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U105(.din0(mul_ln199_1_fu_1152_p0),.din1(mul_ln199_1_fu_1152_p1),.dout(mul_ln199_1_fu_1152_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U106(.din0(mul_ln212_1_fu_1161_p0),.din1(mul_ln212_1_fu_1161_p1),.dout(mul_ln212_1_fu_1161_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U107(.din0(mul_ln225_1_fu_1177_p0),.din1(mul_ln225_1_fu_1177_p1),.dout(mul_ln225_1_fu_1177_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U108(.din0(mul_ln238_1_fu_1186_p0),.din1(mul_ln238_1_fu_1186_p1),.dout(mul_ln238_1_fu_1186_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U109(.din0(mul_ln251_1_fu_1195_p0),.din1(mul_ln251_1_fu_1195_p1),.dout(mul_ln251_1_fu_1195_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U110(.din0(mul_ln264_1_fu_1204_p0),.din1(mul_ln264_1_fu_1204_p1),.dout(mul_ln264_1_fu_1204_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U111(.din0(mul_ln277_1_fu_1220_p0),.din1(mul_ln277_1_fu_1220_p1),.dout(mul_ln277_1_fu_1220_p2));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U112(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1232_p0),.din1(grp_fu_1232_p1),.din2(grp_fu_1232_p2),.ce(1'b1),.dout(grp_fu_1232_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U113(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1240_p0),.din1(grp_fu_1240_p1),.din2(grp_fu_1240_p2),.ce(1'b1),.dout(grp_fu_1240_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U114(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1248_p0),.din1(grp_fu_1248_p1),.din2(grp_fu_1248_p2),.ce(1'b1),.dout(grp_fu_1248_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U115(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1256_p0),.din1(grp_fu_1256_p1),.din2(grp_fu_1256_p2),.ce(1'b1),.dout(grp_fu_1256_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U116(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_271),.din1(grp_fu_1264_p1),.din2(grp_fu_1264_p2),.din3(grp_fu_1264_p3),.ce(1'b1),.dout(grp_fu_1264_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U117(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1274_p0),.din1(grp_fu_1274_p1),.din2(grp_fu_1274_p2),.ce(1'b1),.dout(grp_fu_1274_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U118(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1282_p0),.din1(grp_fu_1282_p1),.din2(grp_fu_1282_p2),.ce(1'b1),.dout(grp_fu_1282_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U119(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1290_p0),.din1(grp_fu_1290_p1),.din2(grp_fu_1290_p2),.ce(1'b1),.dout(grp_fu_1290_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U120(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_271),.din1(grp_fu_1298_p1),.din2(grp_fu_1298_p2),.din3(grp_fu_1298_p3),.ce(1'b1),.dout(grp_fu_1298_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U121(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1308_p0),.din1(grp_fu_1308_p1),.din2(grp_fu_1308_p2),.ce(1'b1),.dout(grp_fu_1308_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U122(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1316_p0),.din1(grp_fu_1316_p1),.din2(grp_fu_1316_p2),.ce(1'b1),.dout(grp_fu_1316_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U123(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1324_p0),.din1(grp_fu_1324_p1),.din2(grp_fu_1324_p2),.ce(1'b1),.dout(grp_fu_1324_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U124(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1332_p0),.din1(grp_fu_1332_p1),.din2(grp_fu_1332_p2),.ce(1'b1),.dout(grp_fu_1332_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U125(.clk(ap_clk),.reset(ap_rst),.din0(v115_1_reg_283),.din1(grp_fu_1340_p1),.din2(grp_fu_1340_p2),.din3(grp_fu_1340_p3),.ce(1'b1),.dout(grp_fu_1340_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U126(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1350_p0),.din1(grp_fu_1350_p1),.din2(grp_fu_1350_p2),.ce(1'b1),.dout(grp_fu_1350_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U127(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1358_p0),.din1(grp_fu_1358_p1),.din2(grp_fu_1358_p2),.ce(1'b1),.dout(grp_fu_1358_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U128(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1366_p0),.din1(grp_fu_1366_p1),.din2(grp_fu_1366_p2),.ce(1'b1),.dout(grp_fu_1366_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U129(.clk(ap_clk),.reset(ap_rst),.din0(v115_1_reg_283),.din1(grp_fu_1374_p1),.din2(grp_fu_1374_p2),.din3(grp_fu_1374_p3),.ce(1'b1),.dout(grp_fu_1374_p4));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U132(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1897_p0),.din1(grp_fu_1897_p1),.ce(grp_fu_1897_ce),.dout(grp_fu_1897_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U133(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1901_p0),.din1(grp_fu_1901_p1),.ce(grp_fu_1901_ce),.dout(grp_fu_1901_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U134(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1905_p0),.din1(grp_fu_1905_p1),.ce(grp_fu_1905_ce),.dout(grp_fu_1905_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_53_fu_331_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state31)) begin
            grp_kernel_2mm_node1_Pipeline_label_53_fu_331_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_53_fu_331_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_53_fu_331_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_5_fu_295_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_295_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_295_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_295_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        reg_402 <= v226_q1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        reg_402 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        reg_415 <= v226_q1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        reg_415 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        reg_420 <= v226_q0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        reg_420 <= v226_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        reg_425 <= v226_q1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        reg_425 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        reg_430 <= v226_q0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        reg_430 <= v226_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        reg_435 <= v226_q1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        reg_435 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        reg_440 <= v226_q0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        reg_440 <= v226_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_100 <= 8'd0;
    end else if (((icmp_ln169_1_fu_889_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state18))) begin
        v114_fu_100 <= add_ln168_fu_905_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln169_fu_529_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v115_1_reg_283 <= 8'd0;
    end else if (((grp_kernel_2mm_node1_Pipeline_label_53_fu_331_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state32))) begin
        v115_1_reg_283 <= add_ln169_1_reg_1678;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_295_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        v115_reg_271 <= add_ln169_reg_1441;
    end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_507_p2 == 1'd1))) begin
        v115_reg_271 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        add_ln169_1_reg_1678 <= add_ln169_1_fu_899_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln169_reg_1441 <= add_ln169_fu_539_p2;
        mul_ln175_1_reg_1459 <= mul_ln175_1_fu_566_p2;
        zext_ln175_31_reg_1446[7 : 1] <= zext_ln175_31_fu_562_p1[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cmp11_reg_1428 <= cmp11_fu_523_p2;
        mul_ln175_reg_1423 <= mul_ln175_fu_517_p2;
        zext_ln175_reg_1410[7 : 0] <= zext_ln175_fu_513_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        empty_49_reg_1665 <= empty_49_fu_883_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state31)) begin
        empty_78_reg_1884 <= empty_78_fu_1226_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        mul_ln171_1_reg_1839 <= mul_ln171_1_fu_1134_p2;
        mul_ln186_1_reg_1844 <= mul_ln186_1_fu_1143_p2;
        mul_ln199_1_reg_1849 <= mul_ln199_1_fu_1152_p2;
        mul_ln212_1_reg_1854 <= mul_ln212_1_fu_1161_p2;
        mul_ln225_1_reg_1859 <= mul_ln225_1_fu_1177_p2;
        mul_ln238_1_reg_1864 <= mul_ln238_1_fu_1186_p2;
        mul_ln251_1_reg_1869 <= mul_ln251_1_fu_1195_p2;
        mul_ln264_1_reg_1874 <= mul_ln264_1_fu_1204_p2;
        mul_ln277_1_reg_1879 <= mul_ln277_1_fu_1220_p2;
        trunc_ln169_1_reg_1833 <= trunc_ln169_1_fu_1116_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln171_reg_1620 <= mul_ln171_fu_791_p2;
        mul_ln186_reg_1625 <= mul_ln186_fu_800_p2;
        mul_ln199_reg_1630 <= mul_ln199_fu_809_p2;
        mul_ln212_reg_1635 <= mul_ln212_fu_818_p2;
        mul_ln225_reg_1640 <= mul_ln225_fu_834_p2;
        mul_ln238_reg_1645 <= mul_ln238_fu_843_p2;
        mul_ln251_reg_1650 <= mul_ln251_fu_852_p2;
        mul_ln264_reg_1655 <= mul_ln264_fu_861_p2;
        mul_ln277_reg_1660 <= mul_ln277_fu_877_p2;
        trunc_ln169_reg_1614 <= trunc_ln169_fu_773_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_407 <= v226_q1;
        reg_411 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state15))) begin
        reg_445 <= grp_fu_184_p_dout0;
        reg_451 <= grp_fu_188_p_dout0;
        reg_457 <= grp_fu_192_p_dout0;
        reg_463 <= grp_fu_196_p_dout0;
        reg_469 <= grp_fu_382_p2;
        reg_475 <= grp_fu_386_p2;
        reg_481 <= grp_fu_390_p2;
        reg_487 <= grp_fu_394_p2;
        reg_493 <= grp_fu_398_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        tmp_13_reg_1698 <= {{empty_55_fu_935_p2[7:2]}};
        tmp_s_reg_1688 <= {{empty_52_fu_915_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        tmp_14_reg_1708 <= {{empty_58_fu_955_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        tmp_15_reg_1723 <= {{empty_65_fu_979_p2[7:2]}};
        tmp_16_reg_1733 <= {{empty_68_fu_999_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        tmp_17_reg_1753 <= {{empty_71_fu_1027_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_1_reg_1479 <= {{empty_26_fu_592_p2[7:2]}};
        tmp_reg_1469 <= {{empty_23_fu_572_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_2_reg_1489 <= {{empty_29_fu_612_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_3_reg_1504 <= {{empty_36_fu_636_p2[7:2]}};
        tmp_4_reg_1514 <= {{empty_39_fu_656_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_5_reg_1534 <= {{empty_42_fu_684_p2[7:2]}};
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_295_ap_done == 1'b0)) begin
        ap_ST_fsm_state17_blk = 1'b1;
    end else begin
        ap_ST_fsm_state17_blk = 1'b0;
    end
end
assign ap_ST_fsm_state18_blk = 1'b0;
assign ap_ST_fsm_state19_blk = 1'b0;
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state20_blk = 1'b0;
assign ap_ST_fsm_state21_blk = 1'b0;
assign ap_ST_fsm_state22_blk = 1'b0;
assign ap_ST_fsm_state23_blk = 1'b0;
assign ap_ST_fsm_state24_blk = 1'b0;
assign ap_ST_fsm_state25_blk = 1'b0;
assign ap_ST_fsm_state26_blk = 1'b0;
assign ap_ST_fsm_state27_blk = 1'b0;
assign ap_ST_fsm_state28_blk = 1'b0;
assign ap_ST_fsm_state29_blk = 1'b0;
always @ (*) begin
    if ((1'b1 == ap_block_state2)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state30_blk = 1'b0;
assign ap_ST_fsm_state31_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_53_fu_331_ap_done == 1'b0)) begin
        ap_ST_fsm_state32_blk = 1'b1;
    end else begin
        ap_ST_fsm_state32_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_507_p2 == 1'd0)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_507_p2 == 1'd0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1889_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1889_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1889_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1889_p_ce;
    end else begin
        grp_fu_1889_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1889_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1889_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1889_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1889_p_din0;
    end else begin
        grp_fu_1889_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1889_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1889_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1889_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1889_p_din1;
    end else begin
        grp_fu_1889_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1893_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1893_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1893_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1893_p_ce;
    end else begin
        grp_fu_1893_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1893_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1893_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1893_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1893_p_din0;
    end else begin
        grp_fu_1893_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1893_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1893_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1893_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1893_p_din1;
    end else begin
        grp_fu_1893_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1897_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1897_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1897_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1897_p_ce;
    end else begin
        grp_fu_1897_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1897_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1897_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1897_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1897_p_din0;
    end else begin
        grp_fu_1897_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1897_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1897_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1897_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1897_p_din1;
    end else begin
        grp_fu_1897_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1901_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1901_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1901_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1901_p_ce;
    end else begin
        grp_fu_1901_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1901_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1901_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1901_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1901_p_din0;
    end else begin
        grp_fu_1901_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1901_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1901_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1901_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1901_p_din1;
    end else begin
        grp_fu_1901_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1905_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1905_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1905_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1905_p_ce;
    end else begin
        grp_fu_1905_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1905_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1905_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1905_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1905_p_din0;
    end else begin
        grp_fu_1905_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1905_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_1905_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1905_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_1905_p_din1;
    end else begin
        grp_fu_1905_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_366_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_366_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_366_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_366_p_ce;
    end else begin
        grp_fu_366_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_366_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_366_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_366_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_366_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_366_p0 = v119_1_fu_1071_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_366_p0 = v119_fu_728_p1;
    end else begin
        grp_fu_366_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_366_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_366_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_366_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_366_p_din1;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state12))) begin
        grp_fu_366_p1 = v113;
    end else begin
        grp_fu_366_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_370_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_370_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_370_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_370_p_ce;
    end else begin
        grp_fu_370_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_370_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_370_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_370_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_370_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_370_p0 = v132_1_fu_1076_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_370_p0 = v132_fu_733_p1;
    end else begin
        grp_fu_370_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_370_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_370_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_370_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_370_p_din1;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state12))) begin
        grp_fu_370_p1 = v113;
    end else begin
        grp_fu_370_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_374_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_374_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_374_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_374_p_ce;
    end else begin
        grp_fu_374_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_374_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_374_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_374_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_374_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_374_p0 = v143_1_fu_1081_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_374_p0 = v143_fu_738_p1;
    end else begin
        grp_fu_374_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_374_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_374_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_374_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_374_p_din1;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state12))) begin
        grp_fu_374_p1 = v113;
    end else begin
        grp_fu_374_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_378_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_378_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_378_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_378_p_ce;
    end else begin
        grp_fu_378_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_378_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_378_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_378_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_378_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_378_p0 = v154_1_fu_1086_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_378_p0 = v154_fu_743_p1;
    end else begin
        grp_fu_378_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_378_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_378_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_378_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_378_p_din1;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state12))) begin
        grp_fu_378_p1 = v113;
    end else begin
        grp_fu_378_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_382_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_382_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_382_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_382_p_ce;
    end else begin
        grp_fu_382_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_382_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_382_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_382_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_382_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_382_p0 = v165_1_fu_1091_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_382_p0 = v165_fu_748_p1;
    end else begin
        grp_fu_382_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_382_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_grp_fu_382_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_382_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_grp_fu_382_p_din1;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state12))) begin
        grp_fu_382_p1 = v113;
    end else begin
        grp_fu_382_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_386_p0 = v176_1_fu_1096_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_386_p0 = v176_fu_753_p1;
    end else begin
        grp_fu_386_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_390_p0 = v187_1_fu_1101_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_390_p0 = v187_fu_758_p1;
    end else begin
        grp_fu_390_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_394_p0 = v198_1_fu_1106_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_394_p0 = v198_fu_763_p1;
    end else begin
        grp_fu_394_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_398_p0 = v209_1_fu_1111_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_398_p0 = v209_fu_768_p1;
    end else begin
        grp_fu_398_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_0_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_0_address0;
    end else begin
        v225_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_0_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_0_address1;
    end else begin
        v225_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_0_ce0;
    end else begin
        v225_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_0_ce1;
    end else begin
        v225_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_0_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_0_d0;
    end else begin
        v225_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_0_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_0_d1;
    end else begin
        v225_0_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_0_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_0_we0;
    end else begin
        v225_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_0_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_0_we1;
    end else begin
        v225_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_1_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_1_address0;
    end else begin
        v225_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_1_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_1_address1;
    end else begin
        v225_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_1_ce0;
    end else begin
        v225_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_1_ce1;
    end else begin
        v225_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_1_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_1_d0;
    end else begin
        v225_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_1_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_1_d1;
    end else begin
        v225_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_1_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_1_we0;
    end else begin
        v225_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_1_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_1_we1;
    end else begin
        v225_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_2_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_2_address0;
    end else begin
        v225_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_2_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_2_address1;
    end else begin
        v225_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_2_ce0;
    end else begin
        v225_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_2_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_2_ce1;
    end else begin
        v225_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_2_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_2_d0;
    end else begin
        v225_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_2_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_2_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_2_d1;
    end else begin
        v225_2_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_2_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_2_we0;
    end else begin
        v225_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_2_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_2_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_2_we1;
    end else begin
        v225_2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_3_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_3_address0;
    end else begin
        v225_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_3_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_3_address1;
    end else begin
        v225_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_3_ce0;
    end else begin
        v225_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_3_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_3_ce1;
    end else begin
        v225_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_3_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_3_d0;
    end else begin
        v225_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_3_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_3_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_3_d1;
    end else begin
        v225_3_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_3_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_3_we0;
    end else begin
        v225_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_3_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v225_3_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v225_3_we1;
    end else begin
        v225_3_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        v226_address0_local = p_cast7272_fu_1067_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        v226_address0_local = p_cast7270_fu_1059_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        v226_address0_local = p_cast7268_fu_1051_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v226_address0_local = p_cast7266_fu_1023_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_address0_local = p_cast7262_fu_720_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_address0_local = p_cast7260_fu_712_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_address0_local = p_cast7258_fu_704_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_address0_local = p_cast7257_fu_680_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_address0_local = p_cast7256_fu_632_p1;
    end else begin
        v226_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        v226_address1_local = p_cast7271_fu_1063_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        v226_address1_local = p_cast7269_fu_1055_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        v226_address1_local = p_cast7267_fu_1047_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v226_address1_local = p_cast7265_fu_1019_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v226_address1_local = p_cast7264_fu_975_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_address1_local = p_cast7263_fu_724_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_address1_local = p_cast7261_fu_716_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_address1_local = p_cast7259_fu_708_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_address1_local = p_cast_fu_676_p1;
    end else begin
        v226_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state7))) begin
        v226_ce0_local = 1'b1;
    end else begin
        v226_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state7))) begin
        v226_ce1_local = 1'b1;
    end else begin
        v226_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v227_address0;
    end else begin
        v227_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v227_address1;
    end else begin
        v227_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v227_ce0;
    end else begin
        v227_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_v227_ce1;
    end else begin
        v227_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_507_p2 == 1'd0))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_507_p2 == 1'd0))) begin
        v236_write_local = 1'b1;
    end else begin
        v236_write_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_507_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_507_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln169_fu_529_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state18;
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
            if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_295_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        ap_ST_fsm_state18 : begin
            if (((icmp_ln169_1_fu_889_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state18))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end
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
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state30;
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state31;
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        ap_ST_fsm_state32 : begin
            if (((grp_kernel_2mm_node1_Pipeline_label_53_fu_331_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state32))) begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state32;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln168_fu_905_p2 = (v114_fu_100 + 8'd2);
assign add_ln169_1_fu_899_p2 = (v115_1_reg_283 + 8'd9);
assign add_ln169_fu_539_p2 = (v115_reg_271 + 8'd9);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
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
assign ap_CS_fsm_state27 = ap_CS_fsm[32'd26];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state30 = ap_CS_fsm[32'd29];
assign ap_CS_fsm_state31 = ap_CS_fsm[32'd30];
assign ap_CS_fsm_state32 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state2 = ((v236_full_n == 1'b0) & (icmp_ln168_fu_507_p2 == 1'd0));
end
assign cmp11_fu_523_p2 = ((v114_fu_100 == 8'd0) ? 1'b1 : 1'b0);
assign empty_23_fu_572_p2 = (v115_reg_271 + 8'd1);
assign empty_26_fu_592_p2 = (v115_reg_271 + 8'd2);
assign empty_29_fu_612_p2 = (v115_reg_271 + 8'd3);
assign empty_35_fu_824_p2 = (lshr_ln_fu_777_p4 + 6'd1);
assign empty_36_fu_636_p2 = (v115_reg_271 + 8'd5);
assign empty_39_fu_656_p2 = (v115_reg_271 + 8'd6);
assign empty_42_fu_684_p2 = (v115_reg_271 + 8'd7);
assign empty_48_fu_867_p2 = (lshr_ln_fu_777_p4 + 6'd2);
assign empty_49_fu_883_p2 = ((trunc_ln169_reg_1614 == 2'd3) ? 1'b1 : 1'b0);
assign empty_52_fu_915_p2 = (v115_1_reg_283 + 8'd1);
assign empty_55_fu_935_p2 = (v115_1_reg_283 + 8'd2);
assign empty_58_fu_955_p2 = (v115_1_reg_283 + 8'd3);
assign empty_64_fu_1167_p2 = (lshr_ln169_1_fu_1120_p4 + 6'd1);
assign empty_65_fu_979_p2 = (v115_1_reg_283 + 8'd5);
assign empty_68_fu_999_p2 = (v115_1_reg_283 + 8'd6);
assign empty_71_fu_1027_p2 = (v115_1_reg_283 + 8'd7);
assign empty_77_fu_1210_p2 = (lshr_ln169_1_fu_1120_p4 + 6'd2);
assign empty_78_fu_1226_p2 = ((trunc_ln169_1_reg_1833 == 2'd3) ? 1'b1 : 1'b0);
assign grp_fu_1232_p0 = grp_fu_1232_p00;
assign grp_fu_1232_p00 = v115_reg_271;
assign grp_fu_1232_p1 = 16'd210;
assign grp_fu_1232_p2 = zext_ln175_reg_1410;
assign grp_fu_1240_p0 = grp_fu_1240_p00;
assign grp_fu_1240_p00 = empty_23_fu_572_p2;
assign grp_fu_1240_p1 = 16'd210;
assign grp_fu_1240_p2 = zext_ln175_reg_1410;
assign grp_fu_1248_p0 = grp_fu_1248_p00;
assign grp_fu_1248_p00 = empty_26_fu_592_p2;
assign grp_fu_1248_p1 = 16'd210;
assign grp_fu_1248_p2 = zext_ln175_reg_1410;
assign grp_fu_1256_p0 = grp_fu_1256_p00;
assign grp_fu_1256_p00 = empty_29_fu_612_p2;
assign grp_fu_1256_p1 = 16'd210;
assign grp_fu_1256_p2 = zext_ln175_reg_1410;
assign grp_fu_1264_p1 = 8'd4;
assign grp_fu_1264_p2 = 16'd210;
assign grp_fu_1264_p3 = zext_ln175_reg_1410;
assign grp_fu_1274_p0 = grp_fu_1274_p00;
assign grp_fu_1274_p00 = empty_36_fu_636_p2;
assign grp_fu_1274_p1 = 16'd210;
assign grp_fu_1274_p2 = zext_ln175_reg_1410;
assign grp_fu_1282_p0 = grp_fu_1282_p00;
assign grp_fu_1282_p00 = empty_39_fu_656_p2;
assign grp_fu_1282_p1 = 16'd210;
assign grp_fu_1282_p2 = zext_ln175_reg_1410;
assign grp_fu_1290_p0 = grp_fu_1290_p00;
assign grp_fu_1290_p00 = empty_42_fu_684_p2;
assign grp_fu_1290_p1 = 16'd210;
assign grp_fu_1290_p2 = zext_ln175_reg_1410;
assign grp_fu_1298_p1 = 8'd8;
assign grp_fu_1298_p2 = 16'd210;
assign grp_fu_1298_p3 = zext_ln175_reg_1410;
assign grp_fu_1308_p0 = grp_fu_1308_p00;
assign grp_fu_1308_p00 = v115_1_reg_283;
assign grp_fu_1308_p1 = 16'd210;
assign grp_fu_1308_p2 = zext_ln175_31_reg_1446;
assign grp_fu_1316_p0 = grp_fu_1316_p00;
assign grp_fu_1316_p00 = empty_52_fu_915_p2;
assign grp_fu_1316_p1 = 16'd210;
assign grp_fu_1316_p2 = zext_ln175_31_reg_1446;
assign grp_fu_1324_p0 = grp_fu_1324_p00;
assign grp_fu_1324_p00 = empty_55_fu_935_p2;
assign grp_fu_1324_p1 = 16'd210;
assign grp_fu_1324_p2 = zext_ln175_31_reg_1446;
assign grp_fu_1332_p0 = grp_fu_1332_p00;
assign grp_fu_1332_p00 = empty_58_fu_955_p2;
assign grp_fu_1332_p1 = 16'd210;
assign grp_fu_1332_p2 = zext_ln175_31_reg_1446;
assign grp_fu_1340_p1 = 8'd4;
assign grp_fu_1340_p2 = 16'd210;
assign grp_fu_1340_p3 = zext_ln175_31_reg_1446;
assign grp_fu_1350_p0 = grp_fu_1350_p00;
assign grp_fu_1350_p00 = empty_65_fu_979_p2;
assign grp_fu_1350_p1 = 16'd210;
assign grp_fu_1350_p2 = zext_ln175_31_reg_1446;
assign grp_fu_1358_p0 = grp_fu_1358_p00;
assign grp_fu_1358_p00 = empty_68_fu_999_p2;
assign grp_fu_1358_p1 = 16'd210;
assign grp_fu_1358_p2 = zext_ln175_31_reg_1446;
assign grp_fu_1366_p0 = grp_fu_1366_p00;
assign grp_fu_1366_p00 = empty_71_fu_1027_p2;
assign grp_fu_1366_p1 = 16'd210;
assign grp_fu_1366_p2 = zext_ln175_31_reg_1446;
assign grp_fu_1374_p1 = 8'd8;
assign grp_fu_1374_p2 = 16'd210;
assign grp_fu_1374_p3 = zext_ln175_31_reg_1446;
assign grp_fu_176_p_ce = grp_fu_1889_ce;
assign grp_fu_176_p_din0 = grp_fu_1889_p0;
assign grp_fu_176_p_din1 = grp_fu_1889_p1;
assign grp_fu_176_p_opcode = 2'd0;
assign grp_fu_180_p_ce = grp_fu_1893_ce;
assign grp_fu_180_p_din0 = grp_fu_1893_p0;
assign grp_fu_180_p_din1 = grp_fu_1893_p1;
assign grp_fu_180_p_opcode = 2'd0;
assign grp_fu_184_p_ce = grp_fu_366_ce;
assign grp_fu_184_p_din0 = grp_fu_366_p0;
assign grp_fu_184_p_din1 = grp_fu_366_p1;
assign grp_fu_188_p_ce = grp_fu_370_ce;
assign grp_fu_188_p_din0 = grp_fu_370_p0;
assign grp_fu_188_p_din1 = grp_fu_370_p1;
assign grp_fu_192_p_ce = grp_fu_374_ce;
assign grp_fu_192_p_din0 = grp_fu_374_p0;
assign grp_fu_192_p_din1 = grp_fu_374_p1;
assign grp_fu_196_p_ce = grp_fu_378_ce;
assign grp_fu_196_p_din0 = grp_fu_378_p0;
assign grp_fu_196_p_din1 = grp_fu_378_p1;
assign grp_kernel_2mm_node1_Pipeline_label_53_fu_331_ap_start = grp_kernel_2mm_node1_Pipeline_label_53_fu_331_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_5_fu_295_ap_start = grp_kernel_2mm_node1_Pipeline_label_5_fu_295_ap_start_reg;
assign icmp_ln168_fu_507_p2 = ((v114_fu_100 < 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln169_1_fu_889_p2 = ((v115_1_reg_283 < 8'd180) ? 1'b1 : 1'b0);
assign icmp_ln169_fu_529_p2 = ((v115_reg_271 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln169_1_fu_1120_p4 = {{v115_1_reg_283[7:2]}};
assign lshr_ln_fu_777_p4 = {{v115_reg_271[7:2]}};
assign mul_ln171_1_fu_1134_p0 = mul_ln171_1_fu_1134_p00;
assign mul_ln171_1_fu_1134_p00 = lshr_ln169_1_fu_1120_p4;
assign mul_ln171_1_fu_1134_p1 = 14'd190;
assign mul_ln171_fu_791_p0 = mul_ln171_fu_791_p00;
assign mul_ln171_fu_791_p00 = lshr_ln_fu_777_p4;
assign mul_ln171_fu_791_p1 = 14'd190;
assign mul_ln175_1_fu_566_p0 = mul_ln175_1_fu_566_p00;
assign mul_ln175_1_fu_566_p00 = or_ln_fu_554_p3;
assign mul_ln175_1_fu_566_p1 = 16'd190;
assign mul_ln175_fu_517_p0 = mul_ln175_fu_517_p00;
assign mul_ln175_fu_517_p00 = v114_fu_100;
assign mul_ln175_fu_517_p1 = 16'd190;
assign mul_ln186_1_fu_1143_p0 = mul_ln186_1_fu_1143_p00;
assign mul_ln186_1_fu_1143_p00 = tmp_s_reg_1688;
assign mul_ln186_1_fu_1143_p1 = 14'd190;
assign mul_ln186_fu_800_p0 = mul_ln186_fu_800_p00;
assign mul_ln186_fu_800_p00 = tmp_reg_1469;
assign mul_ln186_fu_800_p1 = 14'd190;
assign mul_ln199_1_fu_1152_p0 = mul_ln199_1_fu_1152_p00;
assign mul_ln199_1_fu_1152_p00 = tmp_13_reg_1698;
assign mul_ln199_1_fu_1152_p1 = 14'd190;
assign mul_ln199_fu_809_p0 = mul_ln199_fu_809_p00;
assign mul_ln199_fu_809_p00 = tmp_1_reg_1479;
assign mul_ln199_fu_809_p1 = 14'd190;
assign mul_ln212_1_fu_1161_p0 = mul_ln212_1_fu_1161_p00;
assign mul_ln212_1_fu_1161_p00 = tmp_14_reg_1708;
assign mul_ln212_1_fu_1161_p1 = 14'd190;
assign mul_ln212_fu_818_p0 = mul_ln212_fu_818_p00;
assign mul_ln212_fu_818_p00 = tmp_2_reg_1489;
assign mul_ln212_fu_818_p1 = 14'd190;
assign mul_ln225_1_fu_1177_p0 = mul_ln225_1_fu_1177_p00;
assign mul_ln225_1_fu_1177_p00 = empty_64_fu_1167_p2;
assign mul_ln225_1_fu_1177_p1 = 14'd190;
assign mul_ln225_fu_834_p0 = mul_ln225_fu_834_p00;
assign mul_ln225_fu_834_p00 = empty_35_fu_824_p2;
assign mul_ln225_fu_834_p1 = 14'd190;
assign mul_ln238_1_fu_1186_p0 = mul_ln238_1_fu_1186_p00;
assign mul_ln238_1_fu_1186_p00 = tmp_15_reg_1723;
assign mul_ln238_1_fu_1186_p1 = 14'd190;
assign mul_ln238_fu_843_p0 = mul_ln238_fu_843_p00;
assign mul_ln238_fu_843_p00 = tmp_3_reg_1504;
assign mul_ln238_fu_843_p1 = 14'd190;
assign mul_ln251_1_fu_1195_p0 = mul_ln251_1_fu_1195_p00;
assign mul_ln251_1_fu_1195_p00 = tmp_16_reg_1733;
assign mul_ln251_1_fu_1195_p1 = 14'd190;
assign mul_ln251_fu_852_p0 = mul_ln251_fu_852_p00;
assign mul_ln251_fu_852_p00 = tmp_4_reg_1514;
assign mul_ln251_fu_852_p1 = 14'd190;
assign mul_ln264_1_fu_1204_p0 = mul_ln264_1_fu_1204_p00;
assign mul_ln264_1_fu_1204_p00 = tmp_17_reg_1753;
assign mul_ln264_1_fu_1204_p1 = 14'd190;
assign mul_ln264_fu_861_p0 = mul_ln264_fu_861_p00;
assign mul_ln264_fu_861_p00 = tmp_5_reg_1534;
assign mul_ln264_fu_861_p1 = 14'd190;
assign mul_ln277_1_fu_1220_p0 = mul_ln277_1_fu_1220_p00;
assign mul_ln277_1_fu_1220_p00 = empty_77_fu_1210_p2;
assign mul_ln277_1_fu_1220_p1 = 14'd190;
assign mul_ln277_fu_877_p0 = mul_ln277_fu_877_p00;
assign mul_ln277_fu_877_p00 = empty_48_fu_867_p2;
assign mul_ln277_fu_877_p1 = 14'd190;
assign or_ln_fu_554_p3 = {{tmp_6_fu_545_p4}, {1'd1}};
assign p_cast7256_fu_632_p1 = grp_fu_1232_p3;
assign p_cast7257_fu_680_p1 = grp_fu_1248_p3;
assign p_cast7258_fu_704_p1 = grp_fu_1256_p3;
assign p_cast7259_fu_708_p1 = grp_fu_1264_p4;
assign p_cast7260_fu_712_p1 = grp_fu_1274_p3;
assign p_cast7261_fu_716_p1 = grp_fu_1282_p3;
assign p_cast7262_fu_720_p1 = grp_fu_1290_p3;
assign p_cast7263_fu_724_p1 = grp_fu_1298_p4;
assign p_cast7264_fu_975_p1 = grp_fu_1308_p3;
assign p_cast7265_fu_1019_p1 = grp_fu_1316_p3;
assign p_cast7266_fu_1023_p1 = grp_fu_1324_p3;
assign p_cast7267_fu_1047_p1 = grp_fu_1332_p3;
assign p_cast7268_fu_1051_p1 = grp_fu_1340_p4;
assign p_cast7269_fu_1055_p1 = grp_fu_1350_p3;
assign p_cast7270_fu_1059_p1 = grp_fu_1358_p3;
assign p_cast7271_fu_1063_p1 = grp_fu_1366_p3;
assign p_cast7272_fu_1067_p1 = grp_fu_1374_p4;
assign p_cast_fu_676_p1 = grp_fu_1240_p3;
assign tmp_6_fu_545_p4 = {{v114_fu_100[7:1]}};
assign trunc_ln169_1_fu_1116_p1 = v115_1_reg_283[1:0];
assign trunc_ln169_fu_773_p1 = v115_reg_271[1:0];
assign v119_1_fu_1071_p1 = reg_402;
assign v119_fu_728_p1 = reg_402;
assign v132_1_fu_1076_p1 = reg_407;
assign v132_fu_733_p1 = reg_407;
assign v143_1_fu_1081_p1 = reg_411;
assign v143_fu_738_p1 = reg_411;
assign v154_1_fu_1086_p1 = reg_415;
assign v154_fu_743_p1 = reg_415;
assign v165_1_fu_1091_p1 = reg_420;
assign v165_fu_748_p1 = reg_420;
assign v176_1_fu_1096_p1 = reg_425;
assign v176_fu_753_p1 = reg_425;
assign v187_1_fu_1101_p1 = reg_430;
assign v187_fu_758_p1 = reg_430;
assign v198_1_fu_1106_p1 = reg_435;
assign v198_fu_763_p1 = reg_435;
assign v209_1_fu_1111_p1 = reg_440;
assign v209_fu_768_p1 = reg_440;
assign v226_address0 = v226_address0_local;
assign v226_address1 = v226_address1_local;
assign v226_ce0 = v226_ce0_local;
assign v226_ce1 = v226_ce1_local;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
assign zext_ln175_31_fu_562_p1 = or_ln_fu_554_p3;
assign zext_ln175_fu_513_p1 = v114_fu_100;
always @ (posedge ap_clk) begin
    zext_ln175_reg_1410[15:8] <= 8'b00000000;
    zext_ln175_31_reg_1446[0] <= 1'b1;
    zext_ln175_31_reg_1446[15:8] <= 8'b00000000;
end
endmodule 