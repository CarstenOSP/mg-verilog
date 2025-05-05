module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_address0,v226_ce0,v226_q0,v226_address1,v226_ce1,v226_q1,v227_address0,v227_ce0,v227_q0,v227_address1,v227_ce1,v227_q1,v236_din,v236_full_n,v236_write,v225_address0,v225_ce0,v225_we0,v225_d0,v225_q0,v225_address1,v225_ce1,v225_we1,v225_d1,v225_q1,v113,grp_fu_132_p_din0,grp_fu_132_p_din1,grp_fu_132_p_opcode,grp_fu_132_p_dout0,grp_fu_132_p_ce,grp_fu_136_p_din0,grp_fu_136_p_din1,grp_fu_136_p_dout0,grp_fu_136_p_ce,grp_fu_140_p_din0,grp_fu_140_p_din1,grp_fu_140_p_dout0,grp_fu_140_p_ce); 
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
output  [31:0] grp_fu_132_p_din0;
output  [31:0] grp_fu_132_p_din1;
output  [1:0] grp_fu_132_p_opcode;
input  [31:0] grp_fu_132_p_dout0;
output   grp_fu_132_p_ce;
output  [31:0] grp_fu_136_p_din0;
output  [31:0] grp_fu_136_p_din1;
input  [31:0] grp_fu_136_p_dout0;
output   grp_fu_136_p_ce;
output  [31:0] grp_fu_140_p_din0;
output  [31:0] grp_fu_140_p_din1;
input  [31:0] grp_fu_140_p_dout0;
output   grp_fu_140_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[15:0] v227_address0;
reg v227_ce0;
reg[15:0] v227_address1;
reg v227_ce1;
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
wire   [0:0] icmp_ln168_fu_473_p2;
reg   [31:0] reg_368;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state22;
reg   [31:0] reg_373;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state23;
reg   [31:0] reg_377;
reg   [31:0] reg_381;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state24;
reg   [31:0] reg_386;
reg   [31:0] reg_391;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state25;
reg   [31:0] reg_396;
reg   [31:0] reg_401;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state26;
reg   [31:0] reg_406;
reg   [31:0] reg_411;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state30;
reg   [31:0] reg_417;
wire   [31:0] grp_fu_340_p2;
reg   [31:0] reg_423;
wire   [31:0] grp_fu_344_p2;
reg   [31:0] reg_429;
wire   [31:0] grp_fu_348_p2;
reg   [31:0] reg_435;
wire   [31:0] grp_fu_352_p2;
reg   [31:0] reg_441;
wire   [31:0] grp_fu_356_p2;
reg   [31:0] reg_447;
wire   [31:0] grp_fu_360_p2;
reg   [31:0] reg_453;
wire   [31:0] grp_fu_364_p2;
reg   [31:0] reg_459;
wire   [15:0] zext_ln175_fu_479_p1;
reg   [15:0] zext_ln175_reg_1146;
wire   [15:0] mul_ln175_fu_483_p2;
reg   [15:0] mul_ln175_reg_1159;
wire   [0:0] cmp11_fu_489_p2;
reg   [0:0] cmp11_reg_1164;
wire   [15:0] v115_cast_fu_501_p1;
reg   [15:0] v115_cast_reg_1172;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln169_fu_505_p2;
reg   [7:0] add_ln169_reg_1178;
wire   [15:0] zext_ln175_15_fu_528_p1;
reg   [15:0] zext_ln175_15_reg_1183;
wire   [15:0] mul_ln175_1_fu_532_p2;
reg   [15:0] mul_ln175_1_reg_1196;
wire   [15:0] p_cast1066_fu_544_p1;
reg   [15:0] p_cast1066_reg_1201;
wire    ap_CS_fsm_state4;
wire   [15:0] p_cast1067_fu_554_p1;
reg   [15:0] p_cast1067_reg_1207;
wire   [15:0] p_cast1068_fu_564_p1;
reg   [15:0] p_cast1068_reg_1213;
wire    ap_CS_fsm_state5;
wire   [15:0] p_cast1069_fu_574_p1;
reg   [15:0] p_cast1069_reg_1219;
wire    ap_CS_fsm_state6;
wire   [15:0] p_cast1070_fu_588_p1;
reg   [15:0] p_cast1070_reg_1230;
wire   [15:0] p_cast1071_fu_598_p1;
reg   [15:0] p_cast1071_reg_1236;
wire   [15:0] p_cast1072_fu_616_p1;
reg   [15:0] p_cast1072_reg_1252;
wire   [15:0] p_cast1073_fu_626_p1;
reg   [15:0] p_cast1073_reg_1258;
wire   [31:0] v119_fu_654_p1;
wire    ap_CS_fsm_state12;
wire   [31:0] v132_fu_659_p1;
wire   [31:0] v143_fu_664_p1;
wire   [31:0] v154_fu_669_p1;
wire   [31:0] v165_fu_674_p1;
wire   [31:0] v176_fu_679_p1;
wire   [31:0] v187_fu_684_p1;
wire   [31:0] v198_fu_689_p1;
wire   [31:0] v209_fu_694_p1;
wire   [15:0] mul_ln171_fu_699_p2;
reg   [15:0] mul_ln171_reg_1339;
wire   [15:0] mul_ln186_fu_704_p2;
reg   [15:0] mul_ln186_reg_1344;
wire   [15:0] mul_ln199_fu_709_p2;
reg   [15:0] mul_ln199_reg_1349;
wire   [15:0] mul_ln212_fu_714_p2;
reg   [15:0] mul_ln212_reg_1354;
wire   [15:0] mul_ln225_fu_719_p2;
reg   [15:0] mul_ln225_reg_1359;
wire   [15:0] mul_ln238_fu_724_p2;
reg   [15:0] mul_ln238_reg_1364;
wire   [15:0] mul_ln251_fu_729_p2;
reg   [15:0] mul_ln251_reg_1369;
wire   [15:0] mul_ln264_fu_734_p2;
reg   [15:0] mul_ln264_reg_1374;
wire   [15:0] mul_ln277_fu_739_p2;
reg   [15:0] mul_ln277_reg_1379;
wire   [15:0] v115_1_cast_fu_750_p1;
reg   [15:0] v115_1_cast_reg_1387;
wire    ap_CS_fsm_state18;
wire   [7:0] add_ln169_1_fu_754_p2;
reg   [7:0] add_ln169_1_reg_1393;
wire   [15:0] p_cast1074_fu_776_p1;
reg   [15:0] p_cast1074_reg_1398;
wire    ap_CS_fsm_state19;
wire   [15:0] p_cast1075_fu_786_p1;
reg   [15:0] p_cast1075_reg_1404;
wire   [15:0] p_cast1076_fu_796_p1;
reg   [15:0] p_cast1076_reg_1410;
wire    ap_CS_fsm_state20;
wire   [15:0] p_cast1077_fu_806_p1;
reg   [15:0] p_cast1077_reg_1416;
wire    ap_CS_fsm_state21;
wire   [15:0] p_cast1078_fu_820_p1;
reg   [15:0] p_cast1078_reg_1427;
wire   [15:0] p_cast1079_fu_830_p1;
reg   [15:0] p_cast1079_reg_1433;
wire   [15:0] p_cast1080_fu_848_p1;
reg   [15:0] p_cast1080_reg_1449;
wire   [15:0] p_cast1081_fu_858_p1;
reg   [15:0] p_cast1081_reg_1455;
wire   [31:0] v119_1_fu_886_p1;
wire    ap_CS_fsm_state27;
wire   [31:0] v132_1_fu_891_p1;
wire   [31:0] v143_1_fu_896_p1;
wire   [31:0] v154_1_fu_901_p1;
wire   [31:0] v165_1_fu_906_p1;
wire   [31:0] v176_1_fu_911_p1;
wire   [31:0] v187_1_fu_916_p1;
wire   [31:0] v198_1_fu_921_p1;
wire   [31:0] v209_1_fu_926_p1;
wire   [15:0] mul_ln171_1_fu_931_p2;
reg   [15:0] mul_ln171_1_reg_1536;
wire   [15:0] mul_ln186_1_fu_936_p2;
reg   [15:0] mul_ln186_1_reg_1541;
wire   [15:0] mul_ln199_1_fu_941_p2;
reg   [15:0] mul_ln199_1_reg_1546;
wire   [15:0] mul_ln212_1_fu_946_p2;
reg   [15:0] mul_ln212_1_reg_1551;
wire   [15:0] mul_ln225_1_fu_951_p2;
reg   [15:0] mul_ln225_1_reg_1556;
wire   [15:0] mul_ln238_1_fu_956_p2;
reg   [15:0] mul_ln238_1_reg_1561;
wire   [15:0] mul_ln251_1_fu_961_p2;
reg   [15:0] mul_ln251_1_reg_1566;
wire   [15:0] mul_ln264_1_fu_966_p2;
reg   [15:0] mul_ln264_1_reg_1571;
wire   [15:0] mul_ln277_1_fu_971_p2;
reg   [15:0] mul_ln277_1_reg_1576;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_277_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_277_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_277_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_277_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_277_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_277_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_277_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_277_v227_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_277_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_277_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_277_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_277_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_277_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_277_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_277_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_277_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_277_grp_fu_1581_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_277_grp_fu_1581_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_277_grp_fu_1581_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_277_grp_fu_1581_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_277_grp_fu_332_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_277_grp_fu_332_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_277_grp_fu_332_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_305_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_305_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_305_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_305_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_305_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_305_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_305_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_305_v227_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_305_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_305_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_305_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_305_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_305_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_305_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_305_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_305_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_305_grp_fu_1581_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_305_grp_fu_1581_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_305_grp_fu_1581_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_305_grp_fu_1581_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_305_grp_fu_332_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_305_grp_fu_332_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_305_grp_fu_332_p_ce;
reg   [7:0] v115_reg_253;
reg    ap_block_state2;
wire    ap_CS_fsm_state17;
reg   [7:0] v115_1_reg_265;
wire    ap_CS_fsm_state32;
wire   [0:0] icmp_ln169_fu_495_p2;
reg    grp_kernel_2mm_node1_Pipeline_label_5_fu_277_ap_start_reg;
wire    ap_CS_fsm_state16;
reg    grp_kernel_2mm_node1_Pipeline_label_53_fu_305_ap_start_reg;
wire    ap_CS_fsm_state31;
wire   [63:0] p_cast1082_fu_578_p1;
wire   [63:0] p_cast_fu_602_p1;
wire   [63:0] p_cast1083_fu_606_p1;
wire   [63:0] p_cast1084_fu_630_p1;
wire   [63:0] p_cast1085_fu_634_p1;
wire   [63:0] p_cast1086_fu_638_p1;
wire   [63:0] p_cast1087_fu_642_p1;
wire   [63:0] p_cast1088_fu_646_p1;
wire   [63:0] p_cast1089_fu_650_p1;
wire   [63:0] p_cast1090_fu_810_p1;
wire   [63:0] p_cast1091_fu_834_p1;
wire   [63:0] p_cast1092_fu_838_p1;
wire   [63:0] p_cast1093_fu_862_p1;
wire   [63:0] p_cast1094_fu_866_p1;
wire   [63:0] p_cast1095_fu_870_p1;
wire   [63:0] p_cast1096_fu_874_p1;
wire   [63:0] p_cast1097_fu_878_p1;
wire   [63:0] p_cast1098_fu_882_p1;
reg   [7:0] v114_fu_82;
wire   [7:0] add_ln168_fu_760_p2;
wire   [0:0] icmp_ln169_1_fu_744_p2;
reg    v236_write_local;
reg    v226_ce0_local;
reg   [15:0] v226_address0_local;
reg    v226_ce1_local;
reg   [15:0] v226_address1_local;
reg   [31:0] grp_fu_332_p0;
reg   [31:0] grp_fu_332_p1;
reg   [31:0] grp_fu_336_p0;
reg   [31:0] grp_fu_340_p0;
reg   [31:0] grp_fu_344_p0;
reg   [31:0] grp_fu_348_p0;
reg   [31:0] grp_fu_352_p0;
reg   [31:0] grp_fu_356_p0;
reg   [31:0] grp_fu_360_p0;
reg   [31:0] grp_fu_364_p0;
wire   [7:0] mul_ln175_fu_483_p0;
wire   [8:0] mul_ln175_fu_483_p1;
wire   [6:0] tmp_fu_511_p4;
wire   [7:0] or_ln_fu_520_p3;
wire   [7:0] mul_ln175_1_fu_532_p0;
wire   [8:0] mul_ln175_1_fu_532_p1;
wire   [7:0] empty_17_fu_538_p2;
wire   [7:0] empty_20_fu_548_p2;
wire   [7:0] empty_23_fu_558_p2;
wire   [7:0] empty_26_fu_568_p2;
wire   [15:0] grp_fu_976_p3;
wire   [7:0] empty_29_fu_582_p2;
wire   [7:0] empty_32_fu_592_p2;
wire   [15:0] grp_fu_984_p3;
wire   [15:0] grp_fu_992_p3;
wire   [7:0] empty_35_fu_610_p2;
wire   [7:0] empty_38_fu_620_p2;
wire   [15:0] grp_fu_1000_p3;
wire   [15:0] grp_fu_1008_p3;
wire   [15:0] grp_fu_1016_p3;
wire   [15:0] grp_fu_1024_p3;
wire   [15:0] grp_fu_1032_p3;
wire   [15:0] grp_fu_1040_p3;
wire   [7:0] mul_ln171_fu_699_p0;
wire   [8:0] mul_ln171_fu_699_p1;
wire   [7:0] mul_ln186_fu_704_p0;
wire   [8:0] mul_ln186_fu_704_p1;
wire   [7:0] mul_ln199_fu_709_p0;
wire   [8:0] mul_ln199_fu_709_p1;
wire   [7:0] mul_ln212_fu_714_p0;
wire   [8:0] mul_ln212_fu_714_p1;
wire   [7:0] mul_ln225_fu_719_p0;
wire   [8:0] mul_ln225_fu_719_p1;
wire   [7:0] mul_ln238_fu_724_p0;
wire   [8:0] mul_ln238_fu_724_p1;
wire   [7:0] mul_ln251_fu_729_p0;
wire   [8:0] mul_ln251_fu_729_p1;
wire   [7:0] mul_ln264_fu_734_p0;
wire   [8:0] mul_ln264_fu_734_p1;
wire   [7:0] mul_ln277_fu_739_p0;
wire   [8:0] mul_ln277_fu_739_p1;
wire   [7:0] empty_43_fu_770_p2;
wire   [7:0] empty_46_fu_780_p2;
wire   [7:0] empty_49_fu_790_p2;
wire   [7:0] empty_52_fu_800_p2;
wire   [15:0] grp_fu_1048_p3;
wire   [7:0] empty_55_fu_814_p2;
wire   [7:0] empty_58_fu_824_p2;
wire   [15:0] grp_fu_1056_p3;
wire   [15:0] grp_fu_1064_p3;
wire   [7:0] empty_61_fu_842_p2;
wire   [7:0] empty_64_fu_852_p2;
wire   [15:0] grp_fu_1072_p3;
wire   [15:0] grp_fu_1080_p3;
wire   [15:0] grp_fu_1088_p3;
wire   [15:0] grp_fu_1096_p3;
wire   [15:0] grp_fu_1104_p3;
wire   [15:0] grp_fu_1112_p3;
wire   [7:0] mul_ln171_1_fu_931_p0;
wire   [8:0] mul_ln171_1_fu_931_p1;
wire   [7:0] mul_ln186_1_fu_936_p0;
wire   [8:0] mul_ln186_1_fu_936_p1;
wire   [7:0] mul_ln199_1_fu_941_p0;
wire   [8:0] mul_ln199_1_fu_941_p1;
wire   [7:0] mul_ln212_1_fu_946_p0;
wire   [8:0] mul_ln212_1_fu_946_p1;
wire   [7:0] mul_ln225_1_fu_951_p0;
wire   [8:0] mul_ln225_1_fu_951_p1;
wire   [7:0] mul_ln238_1_fu_956_p0;
wire   [8:0] mul_ln238_1_fu_956_p1;
wire   [7:0] mul_ln251_1_fu_961_p0;
wire   [8:0] mul_ln251_1_fu_961_p1;
wire   [7:0] mul_ln264_1_fu_966_p0;
wire   [8:0] mul_ln264_1_fu_966_p1;
wire   [7:0] mul_ln277_1_fu_971_p0;
wire   [8:0] mul_ln277_1_fu_971_p1;
wire   [7:0] grp_fu_976_p0;
wire   [7:0] grp_fu_976_p1;
wire   [7:0] grp_fu_976_p2;
wire   [7:0] grp_fu_984_p0;
wire   [7:0] grp_fu_984_p1;
wire   [7:0] grp_fu_984_p2;
wire   [7:0] grp_fu_992_p0;
wire   [7:0] grp_fu_992_p1;
wire   [7:0] grp_fu_992_p2;
wire   [7:0] grp_fu_1000_p0;
wire   [7:0] grp_fu_1000_p1;
wire   [7:0] grp_fu_1000_p2;
wire   [7:0] grp_fu_1008_p0;
wire   [7:0] grp_fu_1008_p1;
wire   [7:0] grp_fu_1008_p2;
wire   [7:0] grp_fu_1016_p0;
wire   [7:0] grp_fu_1016_p1;
wire   [7:0] grp_fu_1016_p2;
wire   [7:0] grp_fu_1024_p0;
wire   [7:0] grp_fu_1024_p1;
wire   [7:0] grp_fu_1024_p2;
wire   [7:0] grp_fu_1032_p0;
wire   [7:0] grp_fu_1032_p1;
wire   [7:0] grp_fu_1032_p2;
wire   [7:0] grp_fu_1040_p0;
wire   [7:0] grp_fu_1040_p1;
wire   [7:0] grp_fu_1040_p2;
wire   [7:0] grp_fu_1048_p0;
wire   [7:0] grp_fu_1048_p1;
wire   [7:0] grp_fu_1048_p2;
wire   [7:0] grp_fu_1056_p0;
wire   [7:0] grp_fu_1056_p1;
wire   [7:0] grp_fu_1056_p2;
wire   [7:0] grp_fu_1064_p0;
wire   [7:0] grp_fu_1064_p1;
wire   [7:0] grp_fu_1064_p2;
wire   [7:0] grp_fu_1072_p0;
wire   [7:0] grp_fu_1072_p1;
wire   [7:0] grp_fu_1072_p2;
wire   [7:0] grp_fu_1080_p0;
wire   [7:0] grp_fu_1080_p1;
wire   [7:0] grp_fu_1080_p2;
wire   [7:0] grp_fu_1088_p0;
wire   [7:0] grp_fu_1088_p1;
wire   [7:0] grp_fu_1088_p2;
wire   [7:0] grp_fu_1096_p0;
wire   [7:0] grp_fu_1096_p1;
wire   [7:0] grp_fu_1096_p2;
wire   [7:0] grp_fu_1104_p0;
wire   [7:0] grp_fu_1104_p1;
wire   [7:0] grp_fu_1104_p2;
wire   [7:0] grp_fu_1112_p0;
wire   [7:0] grp_fu_1112_p1;
wire   [7:0] grp_fu_1112_p2;
reg    grp_fu_332_ce;
reg   [31:0] grp_fu_1581_p0;
reg   [31:0] grp_fu_1581_p1;
reg    grp_fu_1581_ce;
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
wire   [15:0] grp_fu_1000_p00;
wire   [15:0] grp_fu_1008_p00;
wire   [15:0] grp_fu_1016_p00;
wire   [15:0] grp_fu_1024_p00;
wire   [15:0] grp_fu_1032_p00;
wire   [15:0] grp_fu_1040_p00;
wire   [15:0] grp_fu_1048_p00;
wire   [15:0] grp_fu_1056_p00;
wire   [15:0] grp_fu_1064_p00;
wire   [15:0] grp_fu_1072_p00;
wire   [15:0] grp_fu_1080_p00;
wire   [15:0] grp_fu_1088_p00;
wire   [15:0] grp_fu_1096_p00;
wire   [15:0] grp_fu_1104_p00;
wire   [15:0] grp_fu_1112_p00;
wire   [15:0] grp_fu_976_p00;
wire   [15:0] grp_fu_984_p00;
wire   [15:0] grp_fu_992_p00;
wire   [15:0] mul_ln175_1_fu_532_p00;
wire   [15:0] mul_ln175_fu_483_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 32'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_5_fu_277_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_53_fu_305_ap_start_reg = 1'b0;
#0 v114_fu_82 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_5 grp_kernel_2mm_node1_Pipeline_label_5_fu_277(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_5_fu_277_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_5_fu_277_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_5_fu_277_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_5_fu_277_ap_ready),.mul_ln175(mul_ln175_reg_1159),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_277_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_277_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_277_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_277_v227_ce1),.v227_q1(v227_q1),.mul_ln171(mul_ln171_reg_1339),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_277_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_277_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_277_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_277_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_277_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_277_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_277_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_277_v225_d1),.v225_q1(v225_q1),.mul_ln186(mul_ln186_reg_1344),.mul_ln199(mul_ln199_reg_1349),.mul_ln212(mul_ln212_reg_1354),.mul_ln225(mul_ln225_reg_1359),.mul_ln238(mul_ln238_reg_1364),.mul_ln251(mul_ln251_reg_1369),.mul_ln264(mul_ln264_reg_1374),.mul_ln277(mul_ln277_reg_1379),.cmp11(cmp11_reg_1164),.v120(reg_411),.v133(reg_417),.v144(reg_423),.v155(reg_429),.v166(reg_435),.v177(reg_441),.v188(reg_447),.v199(reg_453),.v210(reg_459),.grp_fu_1581_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_277_grp_fu_1581_p_din0),.grp_fu_1581_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_277_grp_fu_1581_p_din1),.grp_fu_1581_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_277_grp_fu_1581_p_opcode),.grp_fu_1581_p_dout0(grp_fu_132_p_dout0),.grp_fu_1581_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_277_grp_fu_1581_p_ce),.grp_fu_332_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_277_grp_fu_332_p_din0),.grp_fu_332_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_277_grp_fu_332_p_din1),.grp_fu_332_p_dout0(grp_fu_136_p_dout0),.grp_fu_332_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_277_grp_fu_332_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_53 grp_kernel_2mm_node1_Pipeline_label_53_fu_305(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_53_fu_305_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_53_fu_305_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_53_fu_305_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_53_fu_305_ap_ready),.mul_ln175_1(mul_ln175_1_reg_1196),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_305_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_305_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_305_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_305_v227_ce1),.v227_q1(v227_q1),.mul_ln171_1(mul_ln171_1_reg_1536),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_305_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_305_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_305_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_305_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_305_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_305_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_305_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_305_v225_d1),.v225_q1(v225_q1),.mul_ln186_1(mul_ln186_1_reg_1541),.mul_ln199_1(mul_ln199_1_reg_1546),.mul_ln212_1(mul_ln212_1_reg_1551),.mul_ln225_1(mul_ln225_1_reg_1556),.mul_ln238_1(mul_ln238_1_reg_1561),.mul_ln251_1(mul_ln251_1_reg_1566),.mul_ln264_1(mul_ln264_1_reg_1571),.mul_ln277_1(mul_ln277_1_reg_1576),.v120_1(reg_411),.v133_1(reg_417),.v144_1(reg_423),.v155_1(reg_429),.v166_1(reg_435),.v177_1(reg_441),.v188_1(reg_447),.v199_1(reg_453),.v210_1(reg_459),.grp_fu_1581_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_305_grp_fu_1581_p_din0),.grp_fu_1581_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_305_grp_fu_1581_p_din1),.grp_fu_1581_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_305_grp_fu_1581_p_opcode),.grp_fu_1581_p_dout0(grp_fu_132_p_dout0),.grp_fu_1581_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_305_grp_fu_1581_p_ce),.grp_fu_332_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_305_grp_fu_332_p_din0),.grp_fu_332_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_305_grp_fu_332_p_din1),.grp_fu_332_p_dout0(grp_fu_136_p_dout0),.grp_fu_332_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_305_grp_fu_332_p_ce));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U50(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_340_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_340_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U51(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_344_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_344_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U52(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_348_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_348_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U53(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_352_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_352_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U54(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_356_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_356_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U55(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_360_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_360_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U56(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_364_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_364_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U57(.din0(mul_ln175_fu_483_p0),.din1(mul_ln175_fu_483_p1),.dout(mul_ln175_fu_483_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U58(.din0(mul_ln175_1_fu_532_p0),.din1(mul_ln175_1_fu_532_p1),.dout(mul_ln175_1_fu_532_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U59(.din0(mul_ln171_fu_699_p0),.din1(mul_ln171_fu_699_p1),.dout(mul_ln171_fu_699_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U60(.din0(mul_ln186_fu_704_p0),.din1(mul_ln186_fu_704_p1),.dout(mul_ln186_fu_704_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U61(.din0(mul_ln199_fu_709_p0),.din1(mul_ln199_fu_709_p1),.dout(mul_ln199_fu_709_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U62(.din0(mul_ln212_fu_714_p0),.din1(mul_ln212_fu_714_p1),.dout(mul_ln212_fu_714_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U63(.din0(mul_ln225_fu_719_p0),.din1(mul_ln225_fu_719_p1),.dout(mul_ln225_fu_719_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U64(.din0(mul_ln238_fu_724_p0),.din1(mul_ln238_fu_724_p1),.dout(mul_ln238_fu_724_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U65(.din0(mul_ln251_fu_729_p0),.din1(mul_ln251_fu_729_p1),.dout(mul_ln251_fu_729_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U66(.din0(mul_ln264_fu_734_p0),.din1(mul_ln264_fu_734_p1),.dout(mul_ln264_fu_734_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U67(.din0(mul_ln277_fu_739_p0),.din1(mul_ln277_fu_739_p1),.dout(mul_ln277_fu_739_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U68(.din0(mul_ln171_1_fu_931_p0),.din1(mul_ln171_1_fu_931_p1),.dout(mul_ln171_1_fu_931_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U69(.din0(mul_ln186_1_fu_936_p0),.din1(mul_ln186_1_fu_936_p1),.dout(mul_ln186_1_fu_936_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U70(.din0(mul_ln199_1_fu_941_p0),.din1(mul_ln199_1_fu_941_p1),.dout(mul_ln199_1_fu_941_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U71(.din0(mul_ln212_1_fu_946_p0),.din1(mul_ln212_1_fu_946_p1),.dout(mul_ln212_1_fu_946_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U72(.din0(mul_ln225_1_fu_951_p0),.din1(mul_ln225_1_fu_951_p1),.dout(mul_ln225_1_fu_951_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U73(.din0(mul_ln238_1_fu_956_p0),.din1(mul_ln238_1_fu_956_p1),.dout(mul_ln238_1_fu_956_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U74(.din0(mul_ln251_1_fu_961_p0),.din1(mul_ln251_1_fu_961_p1),.dout(mul_ln251_1_fu_961_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U75(.din0(mul_ln264_1_fu_966_p0),.din1(mul_ln264_1_fu_966_p1),.dout(mul_ln264_1_fu_966_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U76(.din0(mul_ln277_1_fu_971_p0),.din1(mul_ln277_1_fu_971_p1),.dout(mul_ln277_1_fu_971_p2));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U77(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_976_p0),.din1(grp_fu_976_p1),.din2(grp_fu_976_p2),.ce(1'b1),.dout(grp_fu_976_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U78(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_984_p0),.din1(grp_fu_984_p1),.din2(grp_fu_984_p2),.ce(1'b1),.dout(grp_fu_984_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U79(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_992_p0),.din1(grp_fu_992_p1),.din2(grp_fu_992_p2),.ce(1'b1),.dout(grp_fu_992_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U80(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1000_p0),.din1(grp_fu_1000_p1),.din2(grp_fu_1000_p2),.ce(1'b1),.dout(grp_fu_1000_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U81(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1008_p0),.din1(grp_fu_1008_p1),.din2(grp_fu_1008_p2),.ce(1'b1),.dout(grp_fu_1008_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U82(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1016_p0),.din1(grp_fu_1016_p1),.din2(grp_fu_1016_p2),.ce(1'b1),.dout(grp_fu_1016_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U83(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1024_p0),.din1(grp_fu_1024_p1),.din2(grp_fu_1024_p2),.ce(1'b1),.dout(grp_fu_1024_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U84(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1032_p0),.din1(grp_fu_1032_p1),.din2(grp_fu_1032_p2),.ce(1'b1),.dout(grp_fu_1032_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U85(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1040_p0),.din1(grp_fu_1040_p1),.din2(grp_fu_1040_p2),.ce(1'b1),.dout(grp_fu_1040_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U86(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1048_p0),.din1(grp_fu_1048_p1),.din2(grp_fu_1048_p2),.ce(1'b1),.dout(grp_fu_1048_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U87(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1056_p0),.din1(grp_fu_1056_p1),.din2(grp_fu_1056_p2),.ce(1'b1),.dout(grp_fu_1056_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U88(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1064_p0),.din1(grp_fu_1064_p1),.din2(grp_fu_1064_p2),.ce(1'b1),.dout(grp_fu_1064_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U89(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1072_p0),.din1(grp_fu_1072_p1),.din2(grp_fu_1072_p2),.ce(1'b1),.dout(grp_fu_1072_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U90(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1080_p0),.din1(grp_fu_1080_p1),.din2(grp_fu_1080_p2),.ce(1'b1),.dout(grp_fu_1080_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U91(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1088_p0),.din1(grp_fu_1088_p1),.din2(grp_fu_1088_p2),.ce(1'b1),.dout(grp_fu_1088_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U92(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1096_p0),.din1(grp_fu_1096_p1),.din2(grp_fu_1096_p2),.ce(1'b1),.dout(grp_fu_1096_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U93(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1104_p0),.din1(grp_fu_1104_p1),.din2(grp_fu_1104_p2),.ce(1'b1),.dout(grp_fu_1104_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U94(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1112_p0),.din1(grp_fu_1112_p1),.din2(grp_fu_1112_p2),.ce(1'b1),.dout(grp_fu_1112_p3));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_53_fu_305_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state31)) begin
            grp_kernel_2mm_node1_Pipeline_label_53_fu_305_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_53_fu_305_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_53_fu_305_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_5_fu_277_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_277_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_277_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_277_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        reg_368 <= v226_q1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        reg_368 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        reg_381 <= v226_q1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        reg_381 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        reg_386 <= v226_q0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        reg_386 <= v226_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        reg_391 <= v226_q1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        reg_391 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        reg_396 <= v226_q0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        reg_396 <= v226_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        reg_401 <= v226_q1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        reg_401 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        reg_406 <= v226_q0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        reg_406 <= v226_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_82 <= 8'd0;
    end else if (((icmp_ln169_1_fu_744_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state18))) begin
        v114_fu_82 <= add_ln168_fu_760_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln169_fu_495_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v115_1_reg_265 <= 8'd0;
    end else if (((grp_kernel_2mm_node1_Pipeline_label_53_fu_305_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state32))) begin
        v115_1_reg_265 <= add_ln169_1_reg_1393;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_277_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        v115_reg_253 <= add_ln169_reg_1178;
    end else if (((icmp_ln168_fu_473_p2 == 1'd1) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2))) begin
        v115_reg_253 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        add_ln169_1_reg_1393 <= add_ln169_1_fu_754_p2;
        v115_1_cast_reg_1387[7 : 0] <= v115_1_cast_fu_750_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln169_reg_1178 <= add_ln169_fu_505_p2;
        mul_ln175_1_reg_1196 <= mul_ln175_1_fu_532_p2;
        v115_cast_reg_1172[7 : 0] <= v115_cast_fu_501_p1[7 : 0];
        zext_ln175_15_reg_1183[7 : 1] <= zext_ln175_15_fu_528_p1[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cmp11_reg_1164 <= cmp11_fu_489_p2;
        mul_ln175_reg_1159 <= mul_ln175_fu_483_p2;
        zext_ln175_reg_1146[7 : 0] <= zext_ln175_fu_479_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        mul_ln171_1_reg_1536 <= mul_ln171_1_fu_931_p2;
        mul_ln186_1_reg_1541 <= mul_ln186_1_fu_936_p2;
        mul_ln199_1_reg_1546 <= mul_ln199_1_fu_941_p2;
        mul_ln212_1_reg_1551 <= mul_ln212_1_fu_946_p2;
        mul_ln225_1_reg_1556 <= mul_ln225_1_fu_951_p2;
        mul_ln238_1_reg_1561 <= mul_ln238_1_fu_956_p2;
        mul_ln251_1_reg_1566 <= mul_ln251_1_fu_961_p2;
        mul_ln264_1_reg_1571 <= mul_ln264_1_fu_966_p2;
        mul_ln277_1_reg_1576 <= mul_ln277_1_fu_971_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln171_reg_1339 <= mul_ln171_fu_699_p2;
        mul_ln186_reg_1344 <= mul_ln186_fu_704_p2;
        mul_ln199_reg_1349 <= mul_ln199_fu_709_p2;
        mul_ln212_reg_1354 <= mul_ln212_fu_714_p2;
        mul_ln225_reg_1359 <= mul_ln225_fu_719_p2;
        mul_ln238_reg_1364 <= mul_ln238_fu_724_p2;
        mul_ln251_reg_1369 <= mul_ln251_fu_729_p2;
        mul_ln264_reg_1374 <= mul_ln264_fu_734_p2;
        mul_ln277_reg_1379 <= mul_ln277_fu_739_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        p_cast1066_reg_1201[7 : 0] <= p_cast1066_fu_544_p1[7 : 0];
        p_cast1067_reg_1207[7 : 0] <= p_cast1067_fu_554_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        p_cast1068_reg_1213[7 : 0] <= p_cast1068_fu_564_p1[7 : 0];
        p_cast1069_reg_1219[7 : 0] <= p_cast1069_fu_574_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        p_cast1070_reg_1230[7 : 0] <= p_cast1070_fu_588_p1[7 : 0];
        p_cast1071_reg_1236[7 : 0] <= p_cast1071_fu_598_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        p_cast1072_reg_1252[7 : 0] <= p_cast1072_fu_616_p1[7 : 0];
        p_cast1073_reg_1258[7 : 0] <= p_cast1073_fu_626_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        p_cast1074_reg_1398[7 : 0] <= p_cast1074_fu_776_p1[7 : 0];
        p_cast1075_reg_1404[7 : 0] <= p_cast1075_fu_786_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        p_cast1076_reg_1410[7 : 0] <= p_cast1076_fu_796_p1[7 : 0];
        p_cast1077_reg_1416[7 : 0] <= p_cast1077_fu_806_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        p_cast1078_reg_1427[7 : 0] <= p_cast1078_fu_820_p1[7 : 0];
        p_cast1079_reg_1433[7 : 0] <= p_cast1079_fu_830_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        p_cast1080_reg_1449[7 : 0] <= p_cast1080_fu_848_p1[7 : 0];
        p_cast1081_reg_1455[7 : 0] <= p_cast1081_fu_858_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_373 <= v226_q1;
        reg_377 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state15))) begin
        reg_411 <= grp_fu_136_p_dout0;
        reg_417 <= grp_fu_140_p_dout0;
        reg_423 <= grp_fu_340_p2;
        reg_429 <= grp_fu_344_p2;
        reg_435 <= grp_fu_348_p2;
        reg_441 <= grp_fu_352_p2;
        reg_447 <= grp_fu_356_p2;
        reg_453 <= grp_fu_360_p2;
        reg_459 <= grp_fu_364_p2;
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
    if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_277_ap_done == 1'b0)) begin
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
    if ((grp_kernel_2mm_node1_Pipeline_label_53_fu_305_ap_done == 1'b0)) begin
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
    if ((((icmp_ln168_fu_473_p2 == 1'd0) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((icmp_ln168_fu_473_p2 == 1'd0) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1581_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_305_grp_fu_1581_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1581_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_277_grp_fu_1581_p_ce;
    end else begin
        grp_fu_1581_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1581_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_305_grp_fu_1581_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1581_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_277_grp_fu_1581_p_din0;
    end else begin
        grp_fu_1581_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1581_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_305_grp_fu_1581_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1581_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_277_grp_fu_1581_p_din1;
    end else begin
        grp_fu_1581_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_332_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_305_grp_fu_332_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_332_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_277_grp_fu_332_p_ce;
    end else begin
        grp_fu_332_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_332_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_305_grp_fu_332_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_332_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_277_grp_fu_332_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_332_p0 = v119_1_fu_886_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_332_p0 = v119_fu_654_p1;
    end else begin
        grp_fu_332_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_332_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_305_grp_fu_332_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_332_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_277_grp_fu_332_p_din1;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state12))) begin
        grp_fu_332_p1 = v113;
    end else begin
        grp_fu_332_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_336_p0 = v132_1_fu_891_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_336_p0 = v132_fu_659_p1;
    end else begin
        grp_fu_336_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_340_p0 = v143_1_fu_896_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_340_p0 = v143_fu_664_p1;
    end else begin
        grp_fu_340_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_344_p0 = v154_1_fu_901_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_344_p0 = v154_fu_669_p1;
    end else begin
        grp_fu_344_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_348_p0 = v165_1_fu_906_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_348_p0 = v165_fu_674_p1;
    end else begin
        grp_fu_348_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_352_p0 = v176_1_fu_911_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_352_p0 = v176_fu_679_p1;
    end else begin
        grp_fu_352_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_356_p0 = v187_1_fu_916_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_356_p0 = v187_fu_684_p1;
    end else begin
        grp_fu_356_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_360_p0 = v198_1_fu_921_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_360_p0 = v198_fu_689_p1;
    end else begin
        grp_fu_360_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_364_p0 = v209_1_fu_926_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_364_p0 = v209_fu_694_p1;
    end else begin
        grp_fu_364_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_305_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_277_v225_address0;
    end else begin
        v225_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_305_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_277_v225_address1;
    end else begin
        v225_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_305_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_277_v225_ce0;
    end else begin
        v225_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_305_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_277_v225_ce1;
    end else begin
        v225_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_305_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_277_v225_d0;
    end else begin
        v225_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_305_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_277_v225_d1;
    end else begin
        v225_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_305_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_277_v225_we0;
    end else begin
        v225_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_305_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_277_v225_we1;
    end else begin
        v225_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        v226_address0_local = p_cast1098_fu_882_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        v226_address0_local = p_cast1096_fu_874_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        v226_address0_local = p_cast1094_fu_866_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v226_address0_local = p_cast1092_fu_838_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_address0_local = p_cast1088_fu_646_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_address0_local = p_cast1086_fu_638_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_address0_local = p_cast1084_fu_630_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_address0_local = p_cast1083_fu_606_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_address0_local = p_cast1082_fu_578_p1;
    end else begin
        v226_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        v226_address1_local = p_cast1097_fu_878_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        v226_address1_local = p_cast1095_fu_870_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        v226_address1_local = p_cast1093_fu_862_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v226_address1_local = p_cast1091_fu_834_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v226_address1_local = p_cast1090_fu_810_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_address1_local = p_cast1089_fu_650_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_address1_local = p_cast1087_fu_642_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_address1_local = p_cast1085_fu_634_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_address1_local = p_cast_fu_602_p1;
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
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_305_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_277_v227_address0;
    end else begin
        v227_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_305_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_277_v227_address1;
    end else begin
        v227_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_305_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_277_v227_ce0;
    end else begin
        v227_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_305_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_277_v227_ce1;
    end else begin
        v227_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln168_fu_473_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((icmp_ln168_fu_473_p2 == 1'd0) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2))) begin
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
            if (((icmp_ln168_fu_473_p2 == 1'd0) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((icmp_ln168_fu_473_p2 == 1'd1) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln169_fu_495_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_277_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        ap_ST_fsm_state18 : begin
            if (((icmp_ln169_1_fu_744_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state18))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_53_fu_305_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state32))) begin
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
assign add_ln168_fu_760_p2 = (v114_fu_82 + 8'd2);
assign add_ln169_1_fu_754_p2 = (v115_1_reg_265 + 8'd9);
assign add_ln169_fu_505_p2 = (v115_reg_253 + 8'd9);
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
    ap_block_state2 = ((icmp_ln168_fu_473_p2 == 1'd0) & (v236_full_n == 1'b0));
end
assign cmp11_fu_489_p2 = ((v114_fu_82 == 8'd0) ? 1'b1 : 1'b0);
assign empty_17_fu_538_p2 = (v115_reg_253 + 8'd1);
assign empty_20_fu_548_p2 = (v115_reg_253 + 8'd2);
assign empty_23_fu_558_p2 = (v115_reg_253 + 8'd3);
assign empty_26_fu_568_p2 = (v115_reg_253 + 8'd4);
assign empty_29_fu_582_p2 = (v115_reg_253 + 8'd5);
assign empty_32_fu_592_p2 = (v115_reg_253 + 8'd6);
assign empty_35_fu_610_p2 = (v115_reg_253 + 8'd7);
assign empty_38_fu_620_p2 = (v115_reg_253 + 8'd8);
assign empty_43_fu_770_p2 = (v115_1_reg_265 + 8'd1);
assign empty_46_fu_780_p2 = (v115_1_reg_265 + 8'd2);
assign empty_49_fu_790_p2 = (v115_1_reg_265 + 8'd3);
assign empty_52_fu_800_p2 = (v115_1_reg_265 + 8'd4);
assign empty_55_fu_814_p2 = (v115_1_reg_265 + 8'd5);
assign empty_58_fu_824_p2 = (v115_1_reg_265 + 8'd6);
assign empty_61_fu_842_p2 = (v115_1_reg_265 + 8'd7);
assign empty_64_fu_852_p2 = (v115_1_reg_265 + 8'd8);
assign grp_fu_1000_p0 = grp_fu_1000_p00;
assign grp_fu_1000_p00 = empty_23_fu_558_p2;
assign grp_fu_1000_p1 = 16'd210;
assign grp_fu_1000_p2 = zext_ln175_reg_1146;
assign grp_fu_1008_p0 = grp_fu_1008_p00;
assign grp_fu_1008_p00 = empty_26_fu_568_p2;
assign grp_fu_1008_p1 = 16'd210;
assign grp_fu_1008_p2 = zext_ln175_reg_1146;
assign grp_fu_1016_p0 = grp_fu_1016_p00;
assign grp_fu_1016_p00 = empty_29_fu_582_p2;
assign grp_fu_1016_p1 = 16'd210;
assign grp_fu_1016_p2 = zext_ln175_reg_1146;
assign grp_fu_1024_p0 = grp_fu_1024_p00;
assign grp_fu_1024_p00 = empty_32_fu_592_p2;
assign grp_fu_1024_p1 = 16'd210;
assign grp_fu_1024_p2 = zext_ln175_reg_1146;
assign grp_fu_1032_p0 = grp_fu_1032_p00;
assign grp_fu_1032_p00 = empty_35_fu_610_p2;
assign grp_fu_1032_p1 = 16'd210;
assign grp_fu_1032_p2 = zext_ln175_reg_1146;
assign grp_fu_1040_p0 = grp_fu_1040_p00;
assign grp_fu_1040_p00 = empty_38_fu_620_p2;
assign grp_fu_1040_p1 = 16'd210;
assign grp_fu_1040_p2 = zext_ln175_reg_1146;
assign grp_fu_1048_p0 = grp_fu_1048_p00;
assign grp_fu_1048_p00 = v115_1_reg_265;
assign grp_fu_1048_p1 = 16'd210;
assign grp_fu_1048_p2 = zext_ln175_15_reg_1183;
assign grp_fu_1056_p0 = grp_fu_1056_p00;
assign grp_fu_1056_p00 = empty_43_fu_770_p2;
assign grp_fu_1056_p1 = 16'd210;
assign grp_fu_1056_p2 = zext_ln175_15_reg_1183;
assign grp_fu_1064_p0 = grp_fu_1064_p00;
assign grp_fu_1064_p00 = empty_46_fu_780_p2;
assign grp_fu_1064_p1 = 16'd210;
assign grp_fu_1064_p2 = zext_ln175_15_reg_1183;
assign grp_fu_1072_p0 = grp_fu_1072_p00;
assign grp_fu_1072_p00 = empty_49_fu_790_p2;
assign grp_fu_1072_p1 = 16'd210;
assign grp_fu_1072_p2 = zext_ln175_15_reg_1183;
assign grp_fu_1080_p0 = grp_fu_1080_p00;
assign grp_fu_1080_p00 = empty_52_fu_800_p2;
assign grp_fu_1080_p1 = 16'd210;
assign grp_fu_1080_p2 = zext_ln175_15_reg_1183;
assign grp_fu_1088_p0 = grp_fu_1088_p00;
assign grp_fu_1088_p00 = empty_55_fu_814_p2;
assign grp_fu_1088_p1 = 16'd210;
assign grp_fu_1088_p2 = zext_ln175_15_reg_1183;
assign grp_fu_1096_p0 = grp_fu_1096_p00;
assign grp_fu_1096_p00 = empty_58_fu_824_p2;
assign grp_fu_1096_p1 = 16'd210;
assign grp_fu_1096_p2 = zext_ln175_15_reg_1183;
assign grp_fu_1104_p0 = grp_fu_1104_p00;
assign grp_fu_1104_p00 = empty_61_fu_842_p2;
assign grp_fu_1104_p1 = 16'd210;
assign grp_fu_1104_p2 = zext_ln175_15_reg_1183;
assign grp_fu_1112_p0 = grp_fu_1112_p00;
assign grp_fu_1112_p00 = empty_64_fu_852_p2;
assign grp_fu_1112_p1 = 16'd210;
assign grp_fu_1112_p2 = zext_ln175_15_reg_1183;
assign grp_fu_132_p_ce = grp_fu_1581_ce;
assign grp_fu_132_p_din0 = grp_fu_1581_p0;
assign grp_fu_132_p_din1 = grp_fu_1581_p1;
assign grp_fu_132_p_opcode = 2'd0;
assign grp_fu_136_p_ce = grp_fu_332_ce;
assign grp_fu_136_p_din0 = grp_fu_332_p0;
assign grp_fu_136_p_din1 = grp_fu_332_p1;
assign grp_fu_140_p_ce = 1'b1;
assign grp_fu_140_p_din0 = grp_fu_336_p0;
assign grp_fu_140_p_din1 = v113;
assign grp_fu_976_p0 = grp_fu_976_p00;
assign grp_fu_976_p00 = v115_reg_253;
assign grp_fu_976_p1 = 16'd210;
assign grp_fu_976_p2 = zext_ln175_reg_1146;
assign grp_fu_984_p0 = grp_fu_984_p00;
assign grp_fu_984_p00 = empty_17_fu_538_p2;
assign grp_fu_984_p1 = 16'd210;
assign grp_fu_984_p2 = zext_ln175_reg_1146;
assign grp_fu_992_p0 = grp_fu_992_p00;
assign grp_fu_992_p00 = empty_20_fu_548_p2;
assign grp_fu_992_p1 = 16'd210;
assign grp_fu_992_p2 = zext_ln175_reg_1146;
assign grp_kernel_2mm_node1_Pipeline_label_53_fu_305_ap_start = grp_kernel_2mm_node1_Pipeline_label_53_fu_305_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_5_fu_277_ap_start = grp_kernel_2mm_node1_Pipeline_label_5_fu_277_ap_start_reg;
assign icmp_ln168_fu_473_p2 = ((v114_fu_82 < 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln169_1_fu_744_p2 = ((v115_1_reg_265 < 8'd180) ? 1'b1 : 1'b0);
assign icmp_ln169_fu_495_p2 = ((v115_reg_253 < 8'd180) ? 1'b1 : 1'b0);
assign mul_ln171_1_fu_931_p0 = v115_1_cast_reg_1387;
assign mul_ln171_1_fu_931_p1 = 16'd190;
assign mul_ln171_fu_699_p0 = v115_cast_reg_1172;
assign mul_ln171_fu_699_p1 = 16'd190;
assign mul_ln175_1_fu_532_p0 = mul_ln175_1_fu_532_p00;
assign mul_ln175_1_fu_532_p00 = or_ln_fu_520_p3;
assign mul_ln175_1_fu_532_p1 = 16'd190;
assign mul_ln175_fu_483_p0 = mul_ln175_fu_483_p00;
assign mul_ln175_fu_483_p00 = v114_fu_82;
assign mul_ln175_fu_483_p1 = 16'd190;
assign mul_ln186_1_fu_936_p0 = p_cast1074_reg_1398;
assign mul_ln186_1_fu_936_p1 = 16'd190;
assign mul_ln186_fu_704_p0 = p_cast1066_reg_1201;
assign mul_ln186_fu_704_p1 = 16'd190;
assign mul_ln199_1_fu_941_p0 = p_cast1075_reg_1404;
assign mul_ln199_1_fu_941_p1 = 16'd190;
assign mul_ln199_fu_709_p0 = p_cast1067_reg_1207;
assign mul_ln199_fu_709_p1 = 16'd190;
assign mul_ln212_1_fu_946_p0 = p_cast1076_reg_1410;
assign mul_ln212_1_fu_946_p1 = 16'd190;
assign mul_ln212_fu_714_p0 = p_cast1068_reg_1213;
assign mul_ln212_fu_714_p1 = 16'd190;
assign mul_ln225_1_fu_951_p0 = p_cast1077_reg_1416;
assign mul_ln225_1_fu_951_p1 = 16'd190;
assign mul_ln225_fu_719_p0 = p_cast1069_reg_1219;
assign mul_ln225_fu_719_p1 = 16'd190;
assign mul_ln238_1_fu_956_p0 = p_cast1078_reg_1427;
assign mul_ln238_1_fu_956_p1 = 16'd190;
assign mul_ln238_fu_724_p0 = p_cast1070_reg_1230;
assign mul_ln238_fu_724_p1 = 16'd190;
assign mul_ln251_1_fu_961_p0 = p_cast1079_reg_1433;
assign mul_ln251_1_fu_961_p1 = 16'd190;
assign mul_ln251_fu_729_p0 = p_cast1071_reg_1236;
assign mul_ln251_fu_729_p1 = 16'd190;
assign mul_ln264_1_fu_966_p0 = p_cast1080_reg_1449;
assign mul_ln264_1_fu_966_p1 = 16'd190;
assign mul_ln264_fu_734_p0 = p_cast1072_reg_1252;
assign mul_ln264_fu_734_p1 = 16'd190;
assign mul_ln277_1_fu_971_p0 = p_cast1081_reg_1455;
assign mul_ln277_1_fu_971_p1 = 16'd190;
assign mul_ln277_fu_739_p0 = p_cast1073_reg_1258;
assign mul_ln277_fu_739_p1 = 16'd190;
assign or_ln_fu_520_p3 = {{tmp_fu_511_p4}, {1'd1}};
assign p_cast1066_fu_544_p1 = empty_17_fu_538_p2;
assign p_cast1067_fu_554_p1 = empty_20_fu_548_p2;
assign p_cast1068_fu_564_p1 = empty_23_fu_558_p2;
assign p_cast1069_fu_574_p1 = empty_26_fu_568_p2;
assign p_cast1070_fu_588_p1 = empty_29_fu_582_p2;
assign p_cast1071_fu_598_p1 = empty_32_fu_592_p2;
assign p_cast1072_fu_616_p1 = empty_35_fu_610_p2;
assign p_cast1073_fu_626_p1 = empty_38_fu_620_p2;
assign p_cast1074_fu_776_p1 = empty_43_fu_770_p2;
assign p_cast1075_fu_786_p1 = empty_46_fu_780_p2;
assign p_cast1076_fu_796_p1 = empty_49_fu_790_p2;
assign p_cast1077_fu_806_p1 = empty_52_fu_800_p2;
assign p_cast1078_fu_820_p1 = empty_55_fu_814_p2;
assign p_cast1079_fu_830_p1 = empty_58_fu_824_p2;
assign p_cast1080_fu_848_p1 = empty_61_fu_842_p2;
assign p_cast1081_fu_858_p1 = empty_64_fu_852_p2;
assign p_cast1082_fu_578_p1 = grp_fu_976_p3;
assign p_cast1083_fu_606_p1 = grp_fu_992_p3;
assign p_cast1084_fu_630_p1 = grp_fu_1000_p3;
assign p_cast1085_fu_634_p1 = grp_fu_1008_p3;
assign p_cast1086_fu_638_p1 = grp_fu_1016_p3;
assign p_cast1087_fu_642_p1 = grp_fu_1024_p3;
assign p_cast1088_fu_646_p1 = grp_fu_1032_p3;
assign p_cast1089_fu_650_p1 = grp_fu_1040_p3;
assign p_cast1090_fu_810_p1 = grp_fu_1048_p3;
assign p_cast1091_fu_834_p1 = grp_fu_1056_p3;
assign p_cast1092_fu_838_p1 = grp_fu_1064_p3;
assign p_cast1093_fu_862_p1 = grp_fu_1072_p3;
assign p_cast1094_fu_866_p1 = grp_fu_1080_p3;
assign p_cast1095_fu_870_p1 = grp_fu_1088_p3;
assign p_cast1096_fu_874_p1 = grp_fu_1096_p3;
assign p_cast1097_fu_878_p1 = grp_fu_1104_p3;
assign p_cast1098_fu_882_p1 = grp_fu_1112_p3;
assign p_cast_fu_602_p1 = grp_fu_984_p3;
assign tmp_fu_511_p4 = {{v114_fu_82[7:1]}};
assign v115_1_cast_fu_750_p1 = v115_1_reg_265;
assign v115_cast_fu_501_p1 = v115_reg_253;
assign v119_1_fu_886_p1 = reg_368;
assign v119_fu_654_p1 = reg_368;
assign v132_1_fu_891_p1 = reg_373;
assign v132_fu_659_p1 = reg_373;
assign v143_1_fu_896_p1 = reg_377;
assign v143_fu_664_p1 = reg_377;
assign v154_1_fu_901_p1 = reg_381;
assign v154_fu_669_p1 = reg_381;
assign v165_1_fu_906_p1 = reg_386;
assign v165_fu_674_p1 = reg_386;
assign v176_1_fu_911_p1 = reg_391;
assign v176_fu_679_p1 = reg_391;
assign v187_1_fu_916_p1 = reg_396;
assign v187_fu_684_p1 = reg_396;
assign v198_1_fu_921_p1 = reg_401;
assign v198_fu_689_p1 = reg_401;
assign v209_1_fu_926_p1 = reg_406;
assign v209_fu_694_p1 = reg_406;
assign v226_address0 = v226_address0_local;
assign v226_address1 = v226_address1_local;
assign v226_ce0 = v226_ce0_local;
assign v226_ce1 = v226_ce1_local;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
assign zext_ln175_15_fu_528_p1 = or_ln_fu_520_p3;
assign zext_ln175_fu_479_p1 = v114_fu_82;
always @ (posedge ap_clk) begin
    zext_ln175_reg_1146[15:8] <= 8'b00000000;
    v115_cast_reg_1172[15:8] <= 8'b00000000;
    zext_ln175_15_reg_1183[0] <= 1'b1;
    zext_ln175_15_reg_1183[15:8] <= 8'b00000000;
    p_cast1066_reg_1201[15:8] <= 8'b00000000;
    p_cast1067_reg_1207[15:8] <= 8'b00000000;
    p_cast1068_reg_1213[15:8] <= 8'b00000000;
    p_cast1069_reg_1219[15:8] <= 8'b00000000;
    p_cast1070_reg_1230[15:8] <= 8'b00000000;
    p_cast1071_reg_1236[15:8] <= 8'b00000000;
    p_cast1072_reg_1252[15:8] <= 8'b00000000;
    p_cast1073_reg_1258[15:8] <= 8'b00000000;
    v115_1_cast_reg_1387[15:8] <= 8'b00000000;
    p_cast1074_reg_1398[15:8] <= 8'b00000000;
    p_cast1075_reg_1404[15:8] <= 8'b00000000;
    p_cast1076_reg_1410[15:8] <= 8'b00000000;
    p_cast1077_reg_1416[15:8] <= 8'b00000000;
    p_cast1078_reg_1427[15:8] <= 8'b00000000;
    p_cast1079_reg_1433[15:8] <= 8'b00000000;
    p_cast1080_reg_1449[15:8] <= 8'b00000000;
    p_cast1081_reg_1455[15:8] <= 8'b00000000;
end
endmodule 