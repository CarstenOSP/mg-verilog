module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_address0,v226_ce0,v226_q0,v226_address1,v226_ce1,v226_q1,v227_0_address0,v227_0_ce0,v227_0_q0,v227_0_address1,v227_0_ce1,v227_0_q1,v227_1_address0,v227_1_ce0,v227_1_q0,v227_1_address1,v227_1_ce1,v227_1_q1,v236_din,v236_full_n,v236_write,v225_address0,v225_ce0,v225_we0,v225_d0,v225_q0,v225_address1,v225_ce1,v225_we1,v225_d1,v225_q1,v113,grp_fu_184_p_din0,grp_fu_184_p_din1,grp_fu_184_p_opcode,grp_fu_184_p_dout0,grp_fu_184_p_ce,grp_fu_188_p_din0,grp_fu_188_p_din1,grp_fu_188_p_dout0,grp_fu_188_p_ce,grp_fu_192_p_din0,grp_fu_192_p_din1,grp_fu_192_p_dout0,grp_fu_192_p_ce,grp_fu_196_p_din0,grp_fu_196_p_din1,grp_fu_196_p_dout0,grp_fu_196_p_ce,grp_fu_200_p_din0,grp_fu_200_p_din1,grp_fu_200_p_dout0,grp_fu_200_p_ce); 
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
output  [14:0] v227_0_address0;
output   v227_0_ce0;
input  [31:0] v227_0_q0;
output  [14:0] v227_0_address1;
output   v227_0_ce1;
input  [31:0] v227_0_q1;
output  [14:0] v227_1_address0;
output   v227_1_ce0;
input  [31:0] v227_1_q0;
output  [14:0] v227_1_address1;
output   v227_1_ce1;
input  [31:0] v227_1_q1;
output  [0:0] v236_din;
input   v236_full_n;
output   v236_write;
output  [15:0] v225_address0;
output   v225_ce0;
output   v225_we0;
output  [31:0] v225_d0;
input  [31:0] v225_q0;
output  [15:0] v225_address1;
output   v225_ce1;
output   v225_we1;
output  [31:0] v225_d1;
input  [31:0] v225_q1;
input  [31:0] v113;
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
output  [31:0] grp_fu_196_p_din0;
output  [31:0] grp_fu_196_p_din1;
input  [31:0] grp_fu_196_p_dout0;
output   grp_fu_196_p_ce;
output  [31:0] grp_fu_200_p_din0;
output  [31:0] grp_fu_200_p_din1;
input  [31:0] grp_fu_200_p_dout0;
output   grp_fu_200_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[15:0] v225_address0;
reg v225_ce0;
reg v225_we0;
reg[31:0] v225_d0;
reg[15:0] v225_address1;
reg v225_ce1;
reg v225_we1;
reg[31:0] v225_d1;
(* fsm_encoding = "none" *) reg   [31:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_477_p2;
reg   [31:0] reg_372;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state22;
reg   [31:0] reg_377;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state23;
reg   [31:0] reg_381;
reg   [31:0] reg_385;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state24;
reg   [31:0] reg_390;
reg   [31:0] reg_395;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state25;
reg   [31:0] reg_400;
reg   [31:0] reg_405;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state26;
reg   [31:0] reg_410;
reg   [31:0] reg_415;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state30;
reg   [31:0] reg_421;
reg   [31:0] reg_427;
reg   [31:0] reg_433;
wire   [31:0] grp_fu_352_p2;
reg   [31:0] reg_439;
wire   [31:0] grp_fu_356_p2;
reg   [31:0] reg_445;
wire   [31:0] grp_fu_360_p2;
reg   [31:0] reg_451;
wire   [31:0] grp_fu_364_p2;
reg   [31:0] reg_457;
wire   [31:0] grp_fu_368_p2;
reg   [31:0] reg_463;
wire   [15:0] zext_ln168_fu_483_p1;
reg   [15:0] zext_ln168_reg_1148;
wire   [6:0] lshr_ln_fu_487_p4;
reg   [6:0] lshr_ln_reg_1161;
wire   [14:0] mul_ln175_fu_501_p2;
reg   [14:0] mul_ln175_reg_1166;
wire   [0:0] cmp11_fu_507_p2;
reg   [0:0] cmp11_reg_1172;
wire   [15:0] v115_cast_fu_519_p1;
reg   [15:0] v115_cast_reg_1180;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln169_fu_523_p2;
reg   [7:0] add_ln169_reg_1186;
wire   [15:0] zext_ln169_fu_536_p1;
reg   [15:0] zext_ln169_reg_1191;
wire   [15:0] p_cast2032_fu_546_p1;
reg   [15:0] p_cast2032_reg_1204;
wire    ap_CS_fsm_state4;
wire   [15:0] p_cast2033_fu_556_p1;
reg   [15:0] p_cast2033_reg_1210;
wire   [15:0] p_cast2034_fu_566_p1;
reg   [15:0] p_cast2034_reg_1216;
wire    ap_CS_fsm_state5;
wire   [15:0] p_cast2035_fu_576_p1;
reg   [15:0] p_cast2035_reg_1222;
wire    ap_CS_fsm_state6;
wire   [15:0] p_cast2036_fu_590_p1;
reg   [15:0] p_cast2036_reg_1233;
wire   [15:0] p_cast2037_fu_600_p1;
reg   [15:0] p_cast2037_reg_1239;
wire   [15:0] p_cast2038_fu_618_p1;
reg   [15:0] p_cast2038_reg_1255;
wire   [15:0] p_cast2039_fu_628_p1;
reg   [15:0] p_cast2039_reg_1261;
wire   [31:0] v119_fu_656_p1;
wire    ap_CS_fsm_state12;
wire   [31:0] v132_fu_661_p1;
wire   [31:0] v143_fu_666_p1;
wire   [31:0] v154_fu_671_p1;
wire   [31:0] v165_fu_676_p1;
wire   [31:0] v176_fu_681_p1;
wire   [31:0] v187_fu_686_p1;
wire   [31:0] v198_fu_691_p1;
wire   [31:0] v209_fu_696_p1;
wire   [15:0] mul_ln171_fu_701_p2;
reg   [15:0] mul_ln171_reg_1342;
wire   [15:0] mul_ln186_fu_706_p2;
reg   [15:0] mul_ln186_reg_1347;
wire   [15:0] mul_ln199_fu_711_p2;
reg   [15:0] mul_ln199_reg_1352;
wire   [15:0] mul_ln212_fu_716_p2;
reg   [15:0] mul_ln212_reg_1357;
wire   [15:0] mul_ln225_fu_721_p2;
reg   [15:0] mul_ln225_reg_1362;
wire   [15:0] mul_ln238_fu_726_p2;
reg   [15:0] mul_ln238_reg_1367;
wire   [15:0] mul_ln251_fu_731_p2;
reg   [15:0] mul_ln251_reg_1372;
wire   [15:0] mul_ln264_fu_736_p2;
reg   [15:0] mul_ln264_reg_1377;
wire   [15:0] mul_ln277_fu_741_p2;
reg   [15:0] mul_ln277_reg_1382;
wire   [15:0] v115_1_cast_fu_752_p1;
reg   [15:0] v115_1_cast_reg_1390;
wire    ap_CS_fsm_state18;
wire   [7:0] add_ln169_1_fu_756_p2;
reg   [7:0] add_ln169_1_reg_1396;
wire   [15:0] p_cast2040_fu_778_p1;
reg   [15:0] p_cast2040_reg_1401;
wire    ap_CS_fsm_state19;
wire   [15:0] p_cast2041_fu_788_p1;
reg   [15:0] p_cast2041_reg_1407;
wire   [15:0] p_cast2042_fu_798_p1;
reg   [15:0] p_cast2042_reg_1413;
wire    ap_CS_fsm_state20;
wire   [15:0] p_cast2043_fu_808_p1;
reg   [15:0] p_cast2043_reg_1419;
wire    ap_CS_fsm_state21;
wire   [15:0] p_cast2044_fu_822_p1;
reg   [15:0] p_cast2044_reg_1430;
wire   [15:0] p_cast2045_fu_832_p1;
reg   [15:0] p_cast2045_reg_1436;
wire   [15:0] p_cast2046_fu_850_p1;
reg   [15:0] p_cast2046_reg_1452;
wire   [15:0] p_cast2047_fu_860_p1;
reg   [15:0] p_cast2047_reg_1458;
wire   [31:0] v119_1_fu_888_p1;
wire    ap_CS_fsm_state27;
wire   [31:0] v132_1_fu_893_p1;
wire   [31:0] v143_1_fu_898_p1;
wire   [31:0] v154_1_fu_903_p1;
wire   [31:0] v165_1_fu_908_p1;
wire   [31:0] v176_1_fu_913_p1;
wire   [31:0] v187_1_fu_918_p1;
wire   [31:0] v198_1_fu_923_p1;
wire   [31:0] v209_1_fu_928_p1;
wire   [15:0] mul_ln171_1_fu_933_p2;
reg   [15:0] mul_ln171_1_reg_1539;
wire   [15:0] mul_ln186_1_fu_938_p2;
reg   [15:0] mul_ln186_1_reg_1544;
wire   [15:0] mul_ln199_1_fu_943_p2;
reg   [15:0] mul_ln199_1_reg_1549;
wire   [15:0] mul_ln212_1_fu_948_p2;
reg   [15:0] mul_ln212_1_reg_1554;
wire   [15:0] mul_ln225_1_fu_953_p2;
reg   [15:0] mul_ln225_1_reg_1559;
wire   [15:0] mul_ln238_1_fu_958_p2;
reg   [15:0] mul_ln238_1_reg_1564;
wire   [15:0] mul_ln251_1_fu_963_p2;
reg   [15:0] mul_ln251_1_reg_1569;
wire   [15:0] mul_ln264_1_fu_968_p2;
reg   [15:0] mul_ln264_1_reg_1574;
wire   [15:0] mul_ln277_1_fu_973_p2;
reg   [15:0] mul_ln277_1_reg_1579;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_281_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_281_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_281_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_281_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_281_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_281_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_281_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_281_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_281_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_281_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_281_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_281_v225_d1;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_281_v227_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_281_v227_0_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_281_v227_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_281_v227_0_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_281_grp_fu_1584_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_281_grp_fu_1584_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_281_grp_fu_1584_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_281_grp_fu_1584_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_281_grp_fu_336_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_281_grp_fu_336_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_281_grp_fu_336_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_309_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_309_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_309_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_309_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_309_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_309_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_309_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_309_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_309_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_309_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_309_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_309_v225_d1;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_309_v227_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_309_v227_1_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_309_v227_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_309_v227_1_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_309_grp_fu_1584_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_309_grp_fu_1584_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_309_grp_fu_1584_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_309_grp_fu_1584_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_309_grp_fu_336_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_309_grp_fu_336_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_309_grp_fu_336_p_ce;
reg   [7:0] v115_reg_257;
reg    ap_block_state2;
wire    ap_CS_fsm_state17;
reg   [7:0] v115_1_reg_269;
wire    ap_CS_fsm_state32;
wire   [0:0] icmp_ln169_fu_513_p2;
reg    grp_kernel_2mm_node1_Pipeline_label_5_fu_281_ap_start_reg;
wire    ap_CS_fsm_state16;
reg    grp_kernel_2mm_node1_Pipeline_label_53_fu_309_ap_start_reg;
wire    ap_CS_fsm_state31;
wire   [63:0] p_cast2048_fu_580_p1;
wire   [63:0] p_cast_fu_604_p1;
wire   [63:0] p_cast2049_fu_608_p1;
wire   [63:0] p_cast2050_fu_632_p1;
wire   [63:0] p_cast2051_fu_636_p1;
wire   [63:0] p_cast2052_fu_640_p1;
wire   [63:0] p_cast2053_fu_644_p1;
wire   [63:0] p_cast2054_fu_648_p1;
wire   [63:0] p_cast2055_fu_652_p1;
wire   [63:0] p_cast2056_fu_812_p1;
wire   [63:0] p_cast2057_fu_836_p1;
wire   [63:0] p_cast2058_fu_840_p1;
wire   [63:0] p_cast2059_fu_864_p1;
wire   [63:0] p_cast2060_fu_868_p1;
wire   [63:0] p_cast2061_fu_872_p1;
wire   [63:0] p_cast2062_fu_876_p1;
wire   [63:0] p_cast2063_fu_880_p1;
wire   [63:0] p_cast2064_fu_884_p1;
reg   [7:0] v114_fu_86;
wire   [7:0] add_ln168_fu_762_p2;
wire   [0:0] icmp_ln169_1_fu_746_p2;
reg    v236_write_local;
reg    v226_ce0_local;
reg   [15:0] v226_address0_local;
reg    v226_ce1_local;
reg   [15:0] v226_address1_local;
reg   [31:0] grp_fu_336_p0;
reg   [31:0] grp_fu_336_p1;
reg   [31:0] grp_fu_340_p0;
reg   [31:0] grp_fu_344_p0;
reg   [31:0] grp_fu_348_p0;
reg   [31:0] grp_fu_352_p0;
reg   [31:0] grp_fu_356_p0;
reg   [31:0] grp_fu_360_p0;
reg   [31:0] grp_fu_364_p0;
reg   [31:0] grp_fu_368_p0;
wire   [6:0] mul_ln175_fu_501_p0;
wire   [8:0] mul_ln175_fu_501_p1;
wire   [7:0] or_ln_fu_529_p3;
wire   [7:0] empty_19_fu_540_p2;
wire   [7:0] empty_22_fu_550_p2;
wire   [7:0] empty_25_fu_560_p2;
wire   [7:0] empty_28_fu_570_p2;
wire   [15:0] grp_fu_978_p3;
wire   [7:0] empty_31_fu_584_p2;
wire   [7:0] empty_34_fu_594_p2;
wire   [15:0] grp_fu_986_p3;
wire   [15:0] grp_fu_994_p3;
wire   [7:0] empty_37_fu_612_p2;
wire   [7:0] empty_40_fu_622_p2;
wire   [15:0] grp_fu_1002_p3;
wire   [15:0] grp_fu_1010_p3;
wire   [15:0] grp_fu_1018_p3;
wire   [15:0] grp_fu_1026_p3;
wire   [15:0] grp_fu_1034_p3;
wire   [15:0] grp_fu_1042_p3;
wire   [7:0] mul_ln171_fu_701_p0;
wire   [8:0] mul_ln171_fu_701_p1;
wire   [7:0] mul_ln186_fu_706_p0;
wire   [8:0] mul_ln186_fu_706_p1;
wire   [7:0] mul_ln199_fu_711_p0;
wire   [8:0] mul_ln199_fu_711_p1;
wire   [7:0] mul_ln212_fu_716_p0;
wire   [8:0] mul_ln212_fu_716_p1;
wire   [7:0] mul_ln225_fu_721_p0;
wire   [8:0] mul_ln225_fu_721_p1;
wire   [7:0] mul_ln238_fu_726_p0;
wire   [8:0] mul_ln238_fu_726_p1;
wire   [7:0] mul_ln251_fu_731_p0;
wire   [8:0] mul_ln251_fu_731_p1;
wire   [7:0] mul_ln264_fu_736_p0;
wire   [8:0] mul_ln264_fu_736_p1;
wire   [7:0] mul_ln277_fu_741_p0;
wire   [8:0] mul_ln277_fu_741_p1;
wire   [7:0] empty_45_fu_772_p2;
wire   [7:0] empty_48_fu_782_p2;
wire   [7:0] empty_51_fu_792_p2;
wire   [7:0] empty_54_fu_802_p2;
wire   [15:0] grp_fu_1050_p3;
wire   [7:0] empty_57_fu_816_p2;
wire   [7:0] empty_60_fu_826_p2;
wire   [15:0] grp_fu_1058_p3;
wire   [15:0] grp_fu_1066_p3;
wire   [7:0] empty_63_fu_844_p2;
wire   [7:0] empty_66_fu_854_p2;
wire   [15:0] grp_fu_1074_p3;
wire   [15:0] grp_fu_1082_p3;
wire   [15:0] grp_fu_1090_p3;
wire   [15:0] grp_fu_1098_p3;
wire   [15:0] grp_fu_1106_p3;
wire   [15:0] grp_fu_1114_p3;
wire   [7:0] mul_ln171_1_fu_933_p0;
wire   [8:0] mul_ln171_1_fu_933_p1;
wire   [7:0] mul_ln186_1_fu_938_p0;
wire   [8:0] mul_ln186_1_fu_938_p1;
wire   [7:0] mul_ln199_1_fu_943_p0;
wire   [8:0] mul_ln199_1_fu_943_p1;
wire   [7:0] mul_ln212_1_fu_948_p0;
wire   [8:0] mul_ln212_1_fu_948_p1;
wire   [7:0] mul_ln225_1_fu_953_p0;
wire   [8:0] mul_ln225_1_fu_953_p1;
wire   [7:0] mul_ln238_1_fu_958_p0;
wire   [8:0] mul_ln238_1_fu_958_p1;
wire   [7:0] mul_ln251_1_fu_963_p0;
wire   [8:0] mul_ln251_1_fu_963_p1;
wire   [7:0] mul_ln264_1_fu_968_p0;
wire   [8:0] mul_ln264_1_fu_968_p1;
wire   [7:0] mul_ln277_1_fu_973_p0;
wire   [8:0] mul_ln277_1_fu_973_p1;
wire   [7:0] grp_fu_978_p0;
wire   [7:0] grp_fu_978_p1;
wire   [7:0] grp_fu_978_p2;
wire   [7:0] grp_fu_986_p0;
wire   [7:0] grp_fu_986_p1;
wire   [7:0] grp_fu_986_p2;
wire   [7:0] grp_fu_994_p0;
wire   [7:0] grp_fu_994_p1;
wire   [7:0] grp_fu_994_p2;
wire   [7:0] grp_fu_1002_p0;
wire   [7:0] grp_fu_1002_p1;
wire   [7:0] grp_fu_1002_p2;
wire   [7:0] grp_fu_1010_p0;
wire   [7:0] grp_fu_1010_p1;
wire   [7:0] grp_fu_1010_p2;
wire   [7:0] grp_fu_1018_p0;
wire   [7:0] grp_fu_1018_p1;
wire   [7:0] grp_fu_1018_p2;
wire   [7:0] grp_fu_1026_p0;
wire   [7:0] grp_fu_1026_p1;
wire   [7:0] grp_fu_1026_p2;
wire   [7:0] grp_fu_1034_p0;
wire   [7:0] grp_fu_1034_p1;
wire   [7:0] grp_fu_1034_p2;
wire   [7:0] grp_fu_1042_p0;
wire   [7:0] grp_fu_1042_p1;
wire   [7:0] grp_fu_1042_p2;
wire   [7:0] grp_fu_1050_p0;
wire   [7:0] grp_fu_1050_p1;
wire   [7:0] grp_fu_1050_p2;
wire   [7:0] grp_fu_1058_p0;
wire   [7:0] grp_fu_1058_p1;
wire   [7:0] grp_fu_1058_p2;
wire   [7:0] grp_fu_1066_p0;
wire   [7:0] grp_fu_1066_p1;
wire   [7:0] grp_fu_1066_p2;
wire   [7:0] grp_fu_1074_p0;
wire   [7:0] grp_fu_1074_p1;
wire   [7:0] grp_fu_1074_p2;
wire   [7:0] grp_fu_1082_p0;
wire   [7:0] grp_fu_1082_p1;
wire   [7:0] grp_fu_1082_p2;
wire   [7:0] grp_fu_1090_p0;
wire   [7:0] grp_fu_1090_p1;
wire   [7:0] grp_fu_1090_p2;
wire   [7:0] grp_fu_1098_p0;
wire   [7:0] grp_fu_1098_p1;
wire   [7:0] grp_fu_1098_p2;
wire   [7:0] grp_fu_1106_p0;
wire   [7:0] grp_fu_1106_p1;
wire   [7:0] grp_fu_1106_p2;
wire   [7:0] grp_fu_1114_p0;
wire   [7:0] grp_fu_1114_p1;
wire   [7:0] grp_fu_1114_p2;
reg    grp_fu_336_ce;
reg   [31:0] grp_fu_1584_p0;
reg   [31:0] grp_fu_1584_p1;
reg    grp_fu_1584_ce;
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
wire   [15:0] grp_fu_1002_p00;
wire   [15:0] grp_fu_1010_p00;
wire   [15:0] grp_fu_1018_p00;
wire   [15:0] grp_fu_1026_p00;
wire   [15:0] grp_fu_1034_p00;
wire   [15:0] grp_fu_1042_p00;
wire   [15:0] grp_fu_1050_p00;
wire   [15:0] grp_fu_1058_p00;
wire   [15:0] grp_fu_1066_p00;
wire   [15:0] grp_fu_1074_p00;
wire   [15:0] grp_fu_1082_p00;
wire   [15:0] grp_fu_1090_p00;
wire   [15:0] grp_fu_1098_p00;
wire   [15:0] grp_fu_1106_p00;
wire   [15:0] grp_fu_1114_p00;
wire   [15:0] grp_fu_978_p00;
wire   [15:0] grp_fu_986_p00;
wire   [15:0] grp_fu_994_p00;
wire   [14:0] mul_ln175_fu_501_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 32'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_5_fu_281_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_53_fu_309_ap_start_reg = 1'b0;
#0 v114_fu_86 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_5 grp_kernel_2mm_node1_Pipeline_label_5_fu_281(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_5_fu_281_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_5_fu_281_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_5_fu_281_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_5_fu_281_ap_ready),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_281_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_281_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_281_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_281_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_281_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_281_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_281_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_281_v225_d1),.v225_q1(v225_q1),.mul_ln175(mul_ln175_reg_1166),.v227_0_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_281_v227_0_address0),.v227_0_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_281_v227_0_ce0),.v227_0_q0(v227_0_q0),.v227_0_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_281_v227_0_address1),.v227_0_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_281_v227_0_ce1),.v227_0_q1(v227_0_q1),.mul_ln171(mul_ln171_reg_1342),.mul_ln186(mul_ln186_reg_1347),.mul_ln199(mul_ln199_reg_1352),.mul_ln212(mul_ln212_reg_1357),.mul_ln225(mul_ln225_reg_1362),.mul_ln238(mul_ln238_reg_1367),.mul_ln251(mul_ln251_reg_1372),.mul_ln264(mul_ln264_reg_1377),.mul_ln277(mul_ln277_reg_1382),.cmp11(cmp11_reg_1172),.v120(reg_415),.v133(reg_421),.v144(reg_427),.v155(reg_433),.v166(reg_439),.v177(reg_445),.v188(reg_451),.v199(reg_457),.v210(reg_463),.grp_fu_1584_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_281_grp_fu_1584_p_din0),.grp_fu_1584_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_281_grp_fu_1584_p_din1),.grp_fu_1584_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_281_grp_fu_1584_p_opcode),.grp_fu_1584_p_dout0(grp_fu_184_p_dout0),.grp_fu_1584_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_281_grp_fu_1584_p_ce),.grp_fu_336_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_281_grp_fu_336_p_din0),.grp_fu_336_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_281_grp_fu_336_p_din1),.grp_fu_336_p_dout0(grp_fu_188_p_dout0),.grp_fu_336_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_281_grp_fu_336_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_53 grp_kernel_2mm_node1_Pipeline_label_53_fu_309(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_53_fu_309_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_53_fu_309_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_53_fu_309_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_53_fu_309_ap_ready),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_309_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_309_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_309_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_309_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_309_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_309_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_309_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_309_v225_d1),.v225_q1(v225_q1),.mul_ln175(mul_ln175_reg_1166),.v227_1_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_309_v227_1_address0),.v227_1_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_309_v227_1_ce0),.v227_1_q0(v227_1_q0),.v227_1_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_309_v227_1_address1),.v227_1_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_309_v227_1_ce1),.v227_1_q1(v227_1_q1),.mul_ln171_1(mul_ln171_1_reg_1539),.mul_ln186_1(mul_ln186_1_reg_1544),.mul_ln199_1(mul_ln199_1_reg_1549),.mul_ln212_1(mul_ln212_1_reg_1554),.mul_ln225_1(mul_ln225_1_reg_1559),.mul_ln238_1(mul_ln238_1_reg_1564),.mul_ln251_1(mul_ln251_1_reg_1569),.mul_ln264_1(mul_ln264_1_reg_1574),.mul_ln277_1(mul_ln277_1_reg_1579),.v120_1(reg_415),.v133_1(reg_421),.v144_1(reg_427),.v155_1(reg_433),.v166_1(reg_439),.v177_1(reg_445),.v188_1(reg_451),.v199_1(reg_457),.v210_1(reg_463),.grp_fu_1584_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_309_grp_fu_1584_p_din0),.grp_fu_1584_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_309_grp_fu_1584_p_din1),.grp_fu_1584_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_309_grp_fu_1584_p_opcode),.grp_fu_1584_p_dout0(grp_fu_184_p_dout0),.grp_fu_1584_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_309_grp_fu_1584_p_ce),.grp_fu_336_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_309_grp_fu_336_p_din0),.grp_fu_336_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_309_grp_fu_336_p_din1),.grp_fu_336_p_dout0(grp_fu_188_p_dout0),.grp_fu_336_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_309_grp_fu_336_p_ce));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U52(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_352_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_352_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U53(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_356_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_356_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U54(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_360_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_360_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U55(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_364_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_364_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U56(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_368_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_368_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U57(.din0(mul_ln175_fu_501_p0),.din1(mul_ln175_fu_501_p1),.dout(mul_ln175_fu_501_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U58(.din0(mul_ln171_fu_701_p0),.din1(mul_ln171_fu_701_p1),.dout(mul_ln171_fu_701_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U59(.din0(mul_ln186_fu_706_p0),.din1(mul_ln186_fu_706_p1),.dout(mul_ln186_fu_706_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U60(.din0(mul_ln199_fu_711_p0),.din1(mul_ln199_fu_711_p1),.dout(mul_ln199_fu_711_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U61(.din0(mul_ln212_fu_716_p0),.din1(mul_ln212_fu_716_p1),.dout(mul_ln212_fu_716_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U62(.din0(mul_ln225_fu_721_p0),.din1(mul_ln225_fu_721_p1),.dout(mul_ln225_fu_721_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U63(.din0(mul_ln238_fu_726_p0),.din1(mul_ln238_fu_726_p1),.dout(mul_ln238_fu_726_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U64(.din0(mul_ln251_fu_731_p0),.din1(mul_ln251_fu_731_p1),.dout(mul_ln251_fu_731_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U65(.din0(mul_ln264_fu_736_p0),.din1(mul_ln264_fu_736_p1),.dout(mul_ln264_fu_736_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U66(.din0(mul_ln277_fu_741_p0),.din1(mul_ln277_fu_741_p1),.dout(mul_ln277_fu_741_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U67(.din0(mul_ln171_1_fu_933_p0),.din1(mul_ln171_1_fu_933_p1),.dout(mul_ln171_1_fu_933_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U68(.din0(mul_ln186_1_fu_938_p0),.din1(mul_ln186_1_fu_938_p1),.dout(mul_ln186_1_fu_938_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U69(.din0(mul_ln199_1_fu_943_p0),.din1(mul_ln199_1_fu_943_p1),.dout(mul_ln199_1_fu_943_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U70(.din0(mul_ln212_1_fu_948_p0),.din1(mul_ln212_1_fu_948_p1),.dout(mul_ln212_1_fu_948_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U71(.din0(mul_ln225_1_fu_953_p0),.din1(mul_ln225_1_fu_953_p1),.dout(mul_ln225_1_fu_953_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U72(.din0(mul_ln238_1_fu_958_p0),.din1(mul_ln238_1_fu_958_p1),.dout(mul_ln238_1_fu_958_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U73(.din0(mul_ln251_1_fu_963_p0),.din1(mul_ln251_1_fu_963_p1),.dout(mul_ln251_1_fu_963_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U74(.din0(mul_ln264_1_fu_968_p0),.din1(mul_ln264_1_fu_968_p1),.dout(mul_ln264_1_fu_968_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U75(.din0(mul_ln277_1_fu_973_p0),.din1(mul_ln277_1_fu_973_p1),.dout(mul_ln277_1_fu_973_p2));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U76(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_978_p0),.din1(grp_fu_978_p1),.din2(grp_fu_978_p2),.ce(1'b1),.dout(grp_fu_978_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U77(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_986_p0),.din1(grp_fu_986_p1),.din2(grp_fu_986_p2),.ce(1'b1),.dout(grp_fu_986_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U78(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_994_p0),.din1(grp_fu_994_p1),.din2(grp_fu_994_p2),.ce(1'b1),.dout(grp_fu_994_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U79(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1002_p0),.din1(grp_fu_1002_p1),.din2(grp_fu_1002_p2),.ce(1'b1),.dout(grp_fu_1002_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U80(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1010_p0),.din1(grp_fu_1010_p1),.din2(grp_fu_1010_p2),.ce(1'b1),.dout(grp_fu_1010_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U81(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1018_p0),.din1(grp_fu_1018_p1),.din2(grp_fu_1018_p2),.ce(1'b1),.dout(grp_fu_1018_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U82(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1026_p0),.din1(grp_fu_1026_p1),.din2(grp_fu_1026_p2),.ce(1'b1),.dout(grp_fu_1026_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U83(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1034_p0),.din1(grp_fu_1034_p1),.din2(grp_fu_1034_p2),.ce(1'b1),.dout(grp_fu_1034_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U84(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1042_p0),.din1(grp_fu_1042_p1),.din2(grp_fu_1042_p2),.ce(1'b1),.dout(grp_fu_1042_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U85(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1050_p0),.din1(grp_fu_1050_p1),.din2(grp_fu_1050_p2),.ce(1'b1),.dout(grp_fu_1050_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U86(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1058_p0),.din1(grp_fu_1058_p1),.din2(grp_fu_1058_p2),.ce(1'b1),.dout(grp_fu_1058_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U87(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1066_p0),.din1(grp_fu_1066_p1),.din2(grp_fu_1066_p2),.ce(1'b1),.dout(grp_fu_1066_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U88(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1074_p0),.din1(grp_fu_1074_p1),.din2(grp_fu_1074_p2),.ce(1'b1),.dout(grp_fu_1074_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U89(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1082_p0),.din1(grp_fu_1082_p1),.din2(grp_fu_1082_p2),.ce(1'b1),.dout(grp_fu_1082_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U90(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1090_p0),.din1(grp_fu_1090_p1),.din2(grp_fu_1090_p2),.ce(1'b1),.dout(grp_fu_1090_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U91(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1098_p0),.din1(grp_fu_1098_p1),.din2(grp_fu_1098_p2),.ce(1'b1),.dout(grp_fu_1098_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U92(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1106_p0),.din1(grp_fu_1106_p1),.din2(grp_fu_1106_p2),.ce(1'b1),.dout(grp_fu_1106_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U93(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1114_p0),.din1(grp_fu_1114_p1),.din2(grp_fu_1114_p2),.ce(1'b1),.dout(grp_fu_1114_p3));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_53_fu_309_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state31)) begin
            grp_kernel_2mm_node1_Pipeline_label_53_fu_309_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_53_fu_309_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_53_fu_309_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_5_fu_281_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_281_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_281_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_281_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        reg_372 <= v226_q1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        reg_372 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        reg_385 <= v226_q1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        reg_385 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        reg_390 <= v226_q0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        reg_390 <= v226_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        reg_395 <= v226_q1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        reg_395 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        reg_400 <= v226_q0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        reg_400 <= v226_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        reg_405 <= v226_q1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        reg_405 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        reg_410 <= v226_q0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        reg_410 <= v226_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_86 <= 8'd0;
    end else if (((icmp_ln169_1_fu_746_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state18))) begin
        v114_fu_86 <= add_ln168_fu_762_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln169_fu_513_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v115_1_reg_269 <= 8'd0;
    end else if (((grp_kernel_2mm_node1_Pipeline_label_53_fu_309_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state32))) begin
        v115_1_reg_269 <= add_ln169_1_reg_1396;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_281_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        v115_reg_257 <= add_ln169_reg_1186;
    end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_477_p2 == 1'd1))) begin
        v115_reg_257 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        add_ln169_1_reg_1396 <= add_ln169_1_fu_756_p2;
        v115_1_cast_reg_1390[7 : 0] <= v115_1_cast_fu_752_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln169_reg_1186 <= add_ln169_fu_523_p2;
        v115_cast_reg_1180[7 : 0] <= v115_cast_fu_519_p1[7 : 0];
        zext_ln169_reg_1191[7 : 1] <= zext_ln169_fu_536_p1[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cmp11_reg_1172 <= cmp11_fu_507_p2;
        lshr_ln_reg_1161 <= {{v114_fu_86[7:1]}};
        mul_ln175_reg_1166 <= mul_ln175_fu_501_p2;
        zext_ln168_reg_1148[7 : 0] <= zext_ln168_fu_483_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        mul_ln171_1_reg_1539 <= mul_ln171_1_fu_933_p2;
        mul_ln186_1_reg_1544 <= mul_ln186_1_fu_938_p2;
        mul_ln199_1_reg_1549 <= mul_ln199_1_fu_943_p2;
        mul_ln212_1_reg_1554 <= mul_ln212_1_fu_948_p2;
        mul_ln225_1_reg_1559 <= mul_ln225_1_fu_953_p2;
        mul_ln238_1_reg_1564 <= mul_ln238_1_fu_958_p2;
        mul_ln251_1_reg_1569 <= mul_ln251_1_fu_963_p2;
        mul_ln264_1_reg_1574 <= mul_ln264_1_fu_968_p2;
        mul_ln277_1_reg_1579 <= mul_ln277_1_fu_973_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln171_reg_1342 <= mul_ln171_fu_701_p2;
        mul_ln186_reg_1347 <= mul_ln186_fu_706_p2;
        mul_ln199_reg_1352 <= mul_ln199_fu_711_p2;
        mul_ln212_reg_1357 <= mul_ln212_fu_716_p2;
        mul_ln225_reg_1362 <= mul_ln225_fu_721_p2;
        mul_ln238_reg_1367 <= mul_ln238_fu_726_p2;
        mul_ln251_reg_1372 <= mul_ln251_fu_731_p2;
        mul_ln264_reg_1377 <= mul_ln264_fu_736_p2;
        mul_ln277_reg_1382 <= mul_ln277_fu_741_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        p_cast2032_reg_1204[7 : 0] <= p_cast2032_fu_546_p1[7 : 0];
        p_cast2033_reg_1210[7 : 0] <= p_cast2033_fu_556_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        p_cast2034_reg_1216[7 : 0] <= p_cast2034_fu_566_p1[7 : 0];
        p_cast2035_reg_1222[7 : 0] <= p_cast2035_fu_576_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        p_cast2036_reg_1233[7 : 0] <= p_cast2036_fu_590_p1[7 : 0];
        p_cast2037_reg_1239[7 : 0] <= p_cast2037_fu_600_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        p_cast2038_reg_1255[7 : 0] <= p_cast2038_fu_618_p1[7 : 0];
        p_cast2039_reg_1261[7 : 0] <= p_cast2039_fu_628_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        p_cast2040_reg_1401[7 : 0] <= p_cast2040_fu_778_p1[7 : 0];
        p_cast2041_reg_1407[7 : 0] <= p_cast2041_fu_788_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        p_cast2042_reg_1413[7 : 0] <= p_cast2042_fu_798_p1[7 : 0];
        p_cast2043_reg_1419[7 : 0] <= p_cast2043_fu_808_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        p_cast2044_reg_1430[7 : 0] <= p_cast2044_fu_822_p1[7 : 0];
        p_cast2045_reg_1436[7 : 0] <= p_cast2045_fu_832_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        p_cast2046_reg_1452[7 : 0] <= p_cast2046_fu_850_p1[7 : 0];
        p_cast2047_reg_1458[7 : 0] <= p_cast2047_fu_860_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_377 <= v226_q1;
        reg_381 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state15))) begin
        reg_415 <= grp_fu_188_p_dout0;
        reg_421 <= grp_fu_192_p_dout0;
        reg_427 <= grp_fu_196_p_dout0;
        reg_433 <= grp_fu_200_p_dout0;
        reg_439 <= grp_fu_352_p2;
        reg_445 <= grp_fu_356_p2;
        reg_451 <= grp_fu_360_p2;
        reg_457 <= grp_fu_364_p2;
        reg_463 <= grp_fu_368_p2;
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
    if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_281_ap_done == 1'b0)) begin
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
    if ((grp_kernel_2mm_node1_Pipeline_label_53_fu_309_ap_done == 1'b0)) begin
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
    if ((((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_477_p2 == 1'd0)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_477_p2 == 1'd0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1584_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_309_grp_fu_1584_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1584_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_281_grp_fu_1584_p_ce;
    end else begin
        grp_fu_1584_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1584_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_309_grp_fu_1584_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1584_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_281_grp_fu_1584_p_din0;
    end else begin
        grp_fu_1584_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1584_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_309_grp_fu_1584_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1584_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_281_grp_fu_1584_p_din1;
    end else begin
        grp_fu_1584_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_336_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_309_grp_fu_336_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_336_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_281_grp_fu_336_p_ce;
    end else begin
        grp_fu_336_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_336_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_309_grp_fu_336_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_336_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_281_grp_fu_336_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_336_p0 = v119_1_fu_888_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_336_p0 = v119_fu_656_p1;
    end else begin
        grp_fu_336_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_336_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_309_grp_fu_336_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_336_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_281_grp_fu_336_p_din1;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state12))) begin
        grp_fu_336_p1 = v113;
    end else begin
        grp_fu_336_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_340_p0 = v132_1_fu_893_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_340_p0 = v132_fu_661_p1;
    end else begin
        grp_fu_340_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_344_p0 = v143_1_fu_898_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_344_p0 = v143_fu_666_p1;
    end else begin
        grp_fu_344_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_348_p0 = v154_1_fu_903_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_348_p0 = v154_fu_671_p1;
    end else begin
        grp_fu_348_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_352_p0 = v165_1_fu_908_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_352_p0 = v165_fu_676_p1;
    end else begin
        grp_fu_352_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_356_p0 = v176_1_fu_913_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_356_p0 = v176_fu_681_p1;
    end else begin
        grp_fu_356_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_360_p0 = v187_1_fu_918_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_360_p0 = v187_fu_686_p1;
    end else begin
        grp_fu_360_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_364_p0 = v198_1_fu_923_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_364_p0 = v198_fu_691_p1;
    end else begin
        grp_fu_364_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_368_p0 = v209_1_fu_928_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_368_p0 = v209_fu_696_p1;
    end else begin
        grp_fu_368_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_309_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_281_v225_address0;
    end else begin
        v225_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_309_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_281_v225_address1;
    end else begin
        v225_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_309_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_281_v225_ce0;
    end else begin
        v225_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_309_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_281_v225_ce1;
    end else begin
        v225_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_309_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_281_v225_d0;
    end else begin
        v225_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_309_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_281_v225_d1;
    end else begin
        v225_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_309_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_281_v225_we0;
    end else begin
        v225_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_309_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_281_v225_we1;
    end else begin
        v225_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        v226_address0_local = p_cast2064_fu_884_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        v226_address0_local = p_cast2062_fu_876_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        v226_address0_local = p_cast2060_fu_868_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v226_address0_local = p_cast2058_fu_840_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_address0_local = p_cast2054_fu_648_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_address0_local = p_cast2052_fu_640_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_address0_local = p_cast2050_fu_632_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_address0_local = p_cast2049_fu_608_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_address0_local = p_cast2048_fu_580_p1;
    end else begin
        v226_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        v226_address1_local = p_cast2063_fu_880_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        v226_address1_local = p_cast2061_fu_872_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        v226_address1_local = p_cast2059_fu_864_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v226_address1_local = p_cast2057_fu_836_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v226_address1_local = p_cast2056_fu_812_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_address1_local = p_cast2055_fu_652_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_address1_local = p_cast2053_fu_644_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_address1_local = p_cast2051_fu_636_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_address1_local = p_cast_fu_604_p1;
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
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_477_p2 == 1'd0))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_477_p2 == 1'd0))) begin
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
            if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_477_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_477_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln169_fu_513_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_281_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        ap_ST_fsm_state18 : begin
            if (((icmp_ln169_1_fu_746_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state18))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_53_fu_309_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state32))) begin
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
assign add_ln168_fu_762_p2 = (v114_fu_86 + 8'd2);
assign add_ln169_1_fu_756_p2 = (v115_1_reg_269 + 8'd9);
assign add_ln169_fu_523_p2 = (v115_reg_257 + 8'd9);
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
    ap_block_state2 = ((v236_full_n == 1'b0) & (icmp_ln168_fu_477_p2 == 1'd0));
end
assign cmp11_fu_507_p2 = ((v114_fu_86 == 8'd0) ? 1'b1 : 1'b0);
assign empty_19_fu_540_p2 = (v115_reg_257 + 8'd1);
assign empty_22_fu_550_p2 = (v115_reg_257 + 8'd2);
assign empty_25_fu_560_p2 = (v115_reg_257 + 8'd3);
assign empty_28_fu_570_p2 = (v115_reg_257 + 8'd4);
assign empty_31_fu_584_p2 = (v115_reg_257 + 8'd5);
assign empty_34_fu_594_p2 = (v115_reg_257 + 8'd6);
assign empty_37_fu_612_p2 = (v115_reg_257 + 8'd7);
assign empty_40_fu_622_p2 = (v115_reg_257 + 8'd8);
assign empty_45_fu_772_p2 = (v115_1_reg_269 + 8'd1);
assign empty_48_fu_782_p2 = (v115_1_reg_269 + 8'd2);
assign empty_51_fu_792_p2 = (v115_1_reg_269 + 8'd3);
assign empty_54_fu_802_p2 = (v115_1_reg_269 + 8'd4);
assign empty_57_fu_816_p2 = (v115_1_reg_269 + 8'd5);
assign empty_60_fu_826_p2 = (v115_1_reg_269 + 8'd6);
assign empty_63_fu_844_p2 = (v115_1_reg_269 + 8'd7);
assign empty_66_fu_854_p2 = (v115_1_reg_269 + 8'd8);
assign grp_fu_1002_p0 = grp_fu_1002_p00;
assign grp_fu_1002_p00 = empty_25_fu_560_p2;
assign grp_fu_1002_p1 = 16'd210;
assign grp_fu_1002_p2 = zext_ln168_reg_1148;
assign grp_fu_1010_p0 = grp_fu_1010_p00;
assign grp_fu_1010_p00 = empty_28_fu_570_p2;
assign grp_fu_1010_p1 = 16'd210;
assign grp_fu_1010_p2 = zext_ln168_reg_1148;
assign grp_fu_1018_p0 = grp_fu_1018_p00;
assign grp_fu_1018_p00 = empty_31_fu_584_p2;
assign grp_fu_1018_p1 = 16'd210;
assign grp_fu_1018_p2 = zext_ln168_reg_1148;
assign grp_fu_1026_p0 = grp_fu_1026_p00;
assign grp_fu_1026_p00 = empty_34_fu_594_p2;
assign grp_fu_1026_p1 = 16'd210;
assign grp_fu_1026_p2 = zext_ln168_reg_1148;
assign grp_fu_1034_p0 = grp_fu_1034_p00;
assign grp_fu_1034_p00 = empty_37_fu_612_p2;
assign grp_fu_1034_p1 = 16'd210;
assign grp_fu_1034_p2 = zext_ln168_reg_1148;
assign grp_fu_1042_p0 = grp_fu_1042_p00;
assign grp_fu_1042_p00 = empty_40_fu_622_p2;
assign grp_fu_1042_p1 = 16'd210;
assign grp_fu_1042_p2 = zext_ln168_reg_1148;
assign grp_fu_1050_p0 = grp_fu_1050_p00;
assign grp_fu_1050_p00 = v115_1_reg_269;
assign grp_fu_1050_p1 = 16'd210;
assign grp_fu_1050_p2 = zext_ln169_reg_1191;
assign grp_fu_1058_p0 = grp_fu_1058_p00;
assign grp_fu_1058_p00 = empty_45_fu_772_p2;
assign grp_fu_1058_p1 = 16'd210;
assign grp_fu_1058_p2 = zext_ln169_reg_1191;
assign grp_fu_1066_p0 = grp_fu_1066_p00;
assign grp_fu_1066_p00 = empty_48_fu_782_p2;
assign grp_fu_1066_p1 = 16'd210;
assign grp_fu_1066_p2 = zext_ln169_reg_1191;
assign grp_fu_1074_p0 = grp_fu_1074_p00;
assign grp_fu_1074_p00 = empty_51_fu_792_p2;
assign grp_fu_1074_p1 = 16'd210;
assign grp_fu_1074_p2 = zext_ln169_reg_1191;
assign grp_fu_1082_p0 = grp_fu_1082_p00;
assign grp_fu_1082_p00 = empty_54_fu_802_p2;
assign grp_fu_1082_p1 = 16'd210;
assign grp_fu_1082_p2 = zext_ln169_reg_1191;
assign grp_fu_1090_p0 = grp_fu_1090_p00;
assign grp_fu_1090_p00 = empty_57_fu_816_p2;
assign grp_fu_1090_p1 = 16'd210;
assign grp_fu_1090_p2 = zext_ln169_reg_1191;
assign grp_fu_1098_p0 = grp_fu_1098_p00;
assign grp_fu_1098_p00 = empty_60_fu_826_p2;
assign grp_fu_1098_p1 = 16'd210;
assign grp_fu_1098_p2 = zext_ln169_reg_1191;
assign grp_fu_1106_p0 = grp_fu_1106_p00;
assign grp_fu_1106_p00 = empty_63_fu_844_p2;
assign grp_fu_1106_p1 = 16'd210;
assign grp_fu_1106_p2 = zext_ln169_reg_1191;
assign grp_fu_1114_p0 = grp_fu_1114_p00;
assign grp_fu_1114_p00 = empty_66_fu_854_p2;
assign grp_fu_1114_p1 = 16'd210;
assign grp_fu_1114_p2 = zext_ln169_reg_1191;
assign grp_fu_184_p_ce = grp_fu_1584_ce;
assign grp_fu_184_p_din0 = grp_fu_1584_p0;
assign grp_fu_184_p_din1 = grp_fu_1584_p1;
assign grp_fu_184_p_opcode = 2'd0;
assign grp_fu_188_p_ce = grp_fu_336_ce;
assign grp_fu_188_p_din0 = grp_fu_336_p0;
assign grp_fu_188_p_din1 = grp_fu_336_p1;
assign grp_fu_192_p_ce = 1'b1;
assign grp_fu_192_p_din0 = grp_fu_340_p0;
assign grp_fu_192_p_din1 = v113;
assign grp_fu_196_p_ce = 1'b1;
assign grp_fu_196_p_din0 = grp_fu_344_p0;
assign grp_fu_196_p_din1 = v113;
assign grp_fu_200_p_ce = 1'b1;
assign grp_fu_200_p_din0 = grp_fu_348_p0;
assign grp_fu_200_p_din1 = v113;
assign grp_fu_978_p0 = grp_fu_978_p00;
assign grp_fu_978_p00 = v115_reg_257;
assign grp_fu_978_p1 = 16'd210;
assign grp_fu_978_p2 = zext_ln168_reg_1148;
assign grp_fu_986_p0 = grp_fu_986_p00;
assign grp_fu_986_p00 = empty_19_fu_540_p2;
assign grp_fu_986_p1 = 16'd210;
assign grp_fu_986_p2 = zext_ln168_reg_1148;
assign grp_fu_994_p0 = grp_fu_994_p00;
assign grp_fu_994_p00 = empty_22_fu_550_p2;
assign grp_fu_994_p1 = 16'd210;
assign grp_fu_994_p2 = zext_ln168_reg_1148;
assign grp_kernel_2mm_node1_Pipeline_label_53_fu_309_ap_start = grp_kernel_2mm_node1_Pipeline_label_53_fu_309_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_5_fu_281_ap_start = grp_kernel_2mm_node1_Pipeline_label_5_fu_281_ap_start_reg;
assign icmp_ln168_fu_477_p2 = ((v114_fu_86 < 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln169_1_fu_746_p2 = ((v115_1_reg_269 < 8'd180) ? 1'b1 : 1'b0);
assign icmp_ln169_fu_513_p2 = ((v115_reg_257 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln_fu_487_p4 = {{v114_fu_86[7:1]}};
assign mul_ln171_1_fu_933_p0 = v115_1_cast_reg_1390;
assign mul_ln171_1_fu_933_p1 = 16'd190;
assign mul_ln171_fu_701_p0 = v115_cast_reg_1180;
assign mul_ln171_fu_701_p1 = 16'd190;
assign mul_ln175_fu_501_p0 = mul_ln175_fu_501_p00;
assign mul_ln175_fu_501_p00 = lshr_ln_fu_487_p4;
assign mul_ln175_fu_501_p1 = 15'd190;
assign mul_ln186_1_fu_938_p0 = p_cast2040_reg_1401;
assign mul_ln186_1_fu_938_p1 = 16'd190;
assign mul_ln186_fu_706_p0 = p_cast2032_reg_1204;
assign mul_ln186_fu_706_p1 = 16'd190;
assign mul_ln199_1_fu_943_p0 = p_cast2041_reg_1407;
assign mul_ln199_1_fu_943_p1 = 16'd190;
assign mul_ln199_fu_711_p0 = p_cast2033_reg_1210;
assign mul_ln199_fu_711_p1 = 16'd190;
assign mul_ln212_1_fu_948_p0 = p_cast2042_reg_1413;
assign mul_ln212_1_fu_948_p1 = 16'd190;
assign mul_ln212_fu_716_p0 = p_cast2034_reg_1216;
assign mul_ln212_fu_716_p1 = 16'd190;
assign mul_ln225_1_fu_953_p0 = p_cast2043_reg_1419;
assign mul_ln225_1_fu_953_p1 = 16'd190;
assign mul_ln225_fu_721_p0 = p_cast2035_reg_1222;
assign mul_ln225_fu_721_p1 = 16'd190;
assign mul_ln238_1_fu_958_p0 = p_cast2044_reg_1430;
assign mul_ln238_1_fu_958_p1 = 16'd190;
assign mul_ln238_fu_726_p0 = p_cast2036_reg_1233;
assign mul_ln238_fu_726_p1 = 16'd190;
assign mul_ln251_1_fu_963_p0 = p_cast2045_reg_1436;
assign mul_ln251_1_fu_963_p1 = 16'd190;
assign mul_ln251_fu_731_p0 = p_cast2037_reg_1239;
assign mul_ln251_fu_731_p1 = 16'd190;
assign mul_ln264_1_fu_968_p0 = p_cast2046_reg_1452;
assign mul_ln264_1_fu_968_p1 = 16'd190;
assign mul_ln264_fu_736_p0 = p_cast2038_reg_1255;
assign mul_ln264_fu_736_p1 = 16'd190;
assign mul_ln277_1_fu_973_p0 = p_cast2047_reg_1458;
assign mul_ln277_1_fu_973_p1 = 16'd190;
assign mul_ln277_fu_741_p0 = p_cast2039_reg_1261;
assign mul_ln277_fu_741_p1 = 16'd190;
assign or_ln_fu_529_p3 = {{lshr_ln_reg_1161}, {1'd1}};
assign p_cast2032_fu_546_p1 = empty_19_fu_540_p2;
assign p_cast2033_fu_556_p1 = empty_22_fu_550_p2;
assign p_cast2034_fu_566_p1 = empty_25_fu_560_p2;
assign p_cast2035_fu_576_p1 = empty_28_fu_570_p2;
assign p_cast2036_fu_590_p1 = empty_31_fu_584_p2;
assign p_cast2037_fu_600_p1 = empty_34_fu_594_p2;
assign p_cast2038_fu_618_p1 = empty_37_fu_612_p2;
assign p_cast2039_fu_628_p1 = empty_40_fu_622_p2;
assign p_cast2040_fu_778_p1 = empty_45_fu_772_p2;
assign p_cast2041_fu_788_p1 = empty_48_fu_782_p2;
assign p_cast2042_fu_798_p1 = empty_51_fu_792_p2;
assign p_cast2043_fu_808_p1 = empty_54_fu_802_p2;
assign p_cast2044_fu_822_p1 = empty_57_fu_816_p2;
assign p_cast2045_fu_832_p1 = empty_60_fu_826_p2;
assign p_cast2046_fu_850_p1 = empty_63_fu_844_p2;
assign p_cast2047_fu_860_p1 = empty_66_fu_854_p2;
assign p_cast2048_fu_580_p1 = grp_fu_978_p3;
assign p_cast2049_fu_608_p1 = grp_fu_994_p3;
assign p_cast2050_fu_632_p1 = grp_fu_1002_p3;
assign p_cast2051_fu_636_p1 = grp_fu_1010_p3;
assign p_cast2052_fu_640_p1 = grp_fu_1018_p3;
assign p_cast2053_fu_644_p1 = grp_fu_1026_p3;
assign p_cast2054_fu_648_p1 = grp_fu_1034_p3;
assign p_cast2055_fu_652_p1 = grp_fu_1042_p3;
assign p_cast2056_fu_812_p1 = grp_fu_1050_p3;
assign p_cast2057_fu_836_p1 = grp_fu_1058_p3;
assign p_cast2058_fu_840_p1 = grp_fu_1066_p3;
assign p_cast2059_fu_864_p1 = grp_fu_1074_p3;
assign p_cast2060_fu_868_p1 = grp_fu_1082_p3;
assign p_cast2061_fu_872_p1 = grp_fu_1090_p3;
assign p_cast2062_fu_876_p1 = grp_fu_1098_p3;
assign p_cast2063_fu_880_p1 = grp_fu_1106_p3;
assign p_cast2064_fu_884_p1 = grp_fu_1114_p3;
assign p_cast_fu_604_p1 = grp_fu_986_p3;
assign v115_1_cast_fu_752_p1 = v115_1_reg_269;
assign v115_cast_fu_519_p1 = v115_reg_257;
assign v119_1_fu_888_p1 = reg_372;
assign v119_fu_656_p1 = reg_372;
assign v132_1_fu_893_p1 = reg_377;
assign v132_fu_661_p1 = reg_377;
assign v143_1_fu_898_p1 = reg_381;
assign v143_fu_666_p1 = reg_381;
assign v154_1_fu_903_p1 = reg_385;
assign v154_fu_671_p1 = reg_385;
assign v165_1_fu_908_p1 = reg_390;
assign v165_fu_676_p1 = reg_390;
assign v176_1_fu_913_p1 = reg_395;
assign v176_fu_681_p1 = reg_395;
assign v187_1_fu_918_p1 = reg_400;
assign v187_fu_686_p1 = reg_400;
assign v198_1_fu_923_p1 = reg_405;
assign v198_fu_691_p1 = reg_405;
assign v209_1_fu_928_p1 = reg_410;
assign v209_fu_696_p1 = reg_410;
assign v226_address0 = v226_address0_local;
assign v226_address1 = v226_address1_local;
assign v226_ce0 = v226_ce0_local;
assign v226_ce1 = v226_ce1_local;
assign v227_0_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_281_v227_0_address0;
assign v227_0_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_281_v227_0_address1;
assign v227_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_281_v227_0_ce0;
assign v227_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_281_v227_0_ce1;
assign v227_1_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_309_v227_1_address0;
assign v227_1_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_309_v227_1_address1;
assign v227_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_309_v227_1_ce0;
assign v227_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_309_v227_1_ce1;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
assign zext_ln168_fu_483_p1 = v114_fu_86;
assign zext_ln169_fu_536_p1 = or_ln_fu_529_p3;
always @ (posedge ap_clk) begin
    zext_ln168_reg_1148[15:8] <= 8'b00000000;
    v115_cast_reg_1180[15:8] <= 8'b00000000;
    zext_ln169_reg_1191[0] <= 1'b1;
    zext_ln169_reg_1191[15:8] <= 8'b00000000;
    p_cast2032_reg_1204[15:8] <= 8'b00000000;
    p_cast2033_reg_1210[15:8] <= 8'b00000000;
    p_cast2034_reg_1216[15:8] <= 8'b00000000;
    p_cast2035_reg_1222[15:8] <= 8'b00000000;
    p_cast2036_reg_1233[15:8] <= 8'b00000000;
    p_cast2037_reg_1239[15:8] <= 8'b00000000;
    p_cast2038_reg_1255[15:8] <= 8'b00000000;
    p_cast2039_reg_1261[15:8] <= 8'b00000000;
    v115_1_cast_reg_1390[15:8] <= 8'b00000000;
    p_cast2040_reg_1401[15:8] <= 8'b00000000;
    p_cast2041_reg_1407[15:8] <= 8'b00000000;
    p_cast2042_reg_1413[15:8] <= 8'b00000000;
    p_cast2043_reg_1419[15:8] <= 8'b00000000;
    p_cast2044_reg_1430[15:8] <= 8'b00000000;
    p_cast2045_reg_1436[15:8] <= 8'b00000000;
    p_cast2046_reg_1452[15:8] <= 8'b00000000;
    p_cast2047_reg_1458[15:8] <= 8'b00000000;
end
endmodule 