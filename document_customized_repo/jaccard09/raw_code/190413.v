module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_0_address0,v226_0_ce0,v226_0_q0,v226_0_address1,v226_0_ce1,v226_0_q1,v226_1_address0,v226_1_ce0,v226_1_q0,v226_1_address1,v226_1_ce1,v226_1_q1,v227_address0,v227_ce0,v227_q0,v227_address1,v227_ce1,v227_q1,v236_din,v236_full_n,v236_write,v225_address0,v225_ce0,v225_we0,v225_d0,v225_q0,v225_address1,v225_ce1,v225_we1,v225_d1,v225_q1,v113,grp_fu_128_p_din0,grp_fu_128_p_din1,grp_fu_128_p_opcode,grp_fu_128_p_dout0,grp_fu_128_p_ce,grp_fu_132_p_din0,grp_fu_132_p_din1,grp_fu_132_p_dout0,grp_fu_132_p_ce,grp_fu_136_p_din0,grp_fu_136_p_din1,grp_fu_136_p_dout0,grp_fu_136_p_ce); 
parameter    ap_ST_fsm_state1 = 21'd1;
parameter    ap_ST_fsm_state2 = 21'd2;
parameter    ap_ST_fsm_state3 = 21'd4;
parameter    ap_ST_fsm_state4 = 21'd8;
parameter    ap_ST_fsm_state5 = 21'd16;
parameter    ap_ST_fsm_state6 = 21'd32;
parameter    ap_ST_fsm_state7 = 21'd64;
parameter    ap_ST_fsm_state8 = 21'd128;
parameter    ap_ST_fsm_state9 = 21'd256;
parameter    ap_ST_fsm_state10 = 21'd512;
parameter    ap_ST_fsm_state11 = 21'd1024;
parameter    ap_ST_fsm_state12 = 21'd2048;
parameter    ap_ST_fsm_state13 = 21'd4096;
parameter    ap_ST_fsm_state14 = 21'd8192;
parameter    ap_ST_fsm_state15 = 21'd16384;
parameter    ap_ST_fsm_state16 = 21'd32768;
parameter    ap_ST_fsm_state17 = 21'd65536;
parameter    ap_ST_fsm_state18 = 21'd131072;
parameter    ap_ST_fsm_state19 = 21'd262144;
parameter    ap_ST_fsm_state20 = 21'd524288;
parameter    ap_ST_fsm_state21 = 21'd1048576;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [14:0] v226_0_address0;
output   v226_0_ce0;
input  [31:0] v226_0_q0;
output  [14:0] v226_0_address1;
output   v226_0_ce1;
input  [31:0] v226_0_q1;
output  [14:0] v226_1_address0;
output   v226_1_ce0;
input  [31:0] v226_1_q0;
output  [14:0] v226_1_address1;
output   v226_1_ce1;
input  [31:0] v226_1_q1;
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
output  [31:0] grp_fu_128_p_din0;
output  [31:0] grp_fu_128_p_din1;
output  [1:0] grp_fu_128_p_opcode;
input  [31:0] grp_fu_128_p_dout0;
output   grp_fu_128_p_ce;
output  [31:0] grp_fu_132_p_din0;
output  [31:0] grp_fu_132_p_din1;
input  [31:0] grp_fu_132_p_dout0;
output   grp_fu_132_p_ce;
output  [31:0] grp_fu_136_p_din0;
output  [31:0] grp_fu_136_p_din1;
input  [31:0] grp_fu_136_p_dout0;
output   grp_fu_136_p_ce;
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
(* fsm_encoding = "none" *) reg   [20:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_658_p2;
wire   [31:0] grp_fu_536_p3;
reg   [31:0] reg_550;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state12;
wire   [31:0] grp_fu_543_p3;
reg   [31:0] reg_554;
reg   [31:0] reg_558;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state13;
reg   [31:0] reg_562;
reg   [31:0] reg_566;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state14;
reg   [31:0] reg_570;
reg   [31:0] reg_574;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state15;
reg   [31:0] reg_578;
reg   [31:0] reg_582;
wire    ap_CS_fsm_state19;
wire   [31:0] grp_fu_504_p2;
reg   [31:0] reg_588;
wire   [31:0] grp_fu_508_p2;
reg   [31:0] reg_594;
wire   [31:0] grp_fu_512_p2;
reg   [31:0] reg_600;
wire   [31:0] grp_fu_516_p2;
reg   [31:0] reg_606;
wire   [31:0] grp_fu_520_p2;
reg   [31:0] reg_612;
wire   [31:0] grp_fu_524_p2;
reg   [31:0] reg_618;
wire   [31:0] grp_fu_528_p2;
reg   [31:0] reg_624;
wire   [31:0] grp_fu_532_p2;
reg   [31:0] reg_630;
reg   [15:0] phi_mul_load_reg_1412;
wire   [15:0] add_ln168_1_fu_652_p2;
reg   [15:0] add_ln168_1_reg_1418;
wire   [7:0] add_ln168_fu_664_p2;
reg   [7:0] add_ln168_reg_1426;
wire   [0:0] trunc_ln168_fu_670_p1;
reg   [0:0] trunc_ln168_reg_1431;
wire   [14:0] zext_ln168_fu_684_p1;
reg   [14:0] zext_ln168_reg_1437;
wire   [0:0] cmp11_fu_688_p2;
reg   [0:0] cmp11_reg_1459;
wire    ap_CS_fsm_state3;
wire   [7:0] tmp_1_fu_714_p3;
reg   [7:0] tmp_1_reg_1473;
wire   [7:0] add_ln169_1_fu_726_p2;
reg   [7:0] add_ln169_1_reg_1483;
wire   [7:0] empty_19_fu_740_p2;
reg   [7:0] empty_19_reg_1488;
wire    ap_CS_fsm_state4;
wire   [7:0] empty_22_fu_750_p2;
reg   [7:0] empty_22_reg_1498;
wire   [7:0] empty_25_fu_760_p2;
reg   [7:0] empty_25_reg_1508;
wire    ap_CS_fsm_state5;
wire   [7:0] empty_28_fu_770_p2;
reg   [7:0] empty_28_reg_1518;
wire    ap_CS_fsm_state6;
wire   [7:0] empty_31_fu_790_p2;
reg   [7:0] empty_31_reg_1548;
wire   [7:0] empty_34_fu_800_p2;
reg   [7:0] empty_34_reg_1558;
wire   [7:0] empty_37_fu_820_p2;
reg   [7:0] empty_37_reg_1588;
wire   [7:0] add_ln169_fu_830_p2;
reg   [7:0] add_ln169_reg_1598;
wire   [7:0] empty_42_fu_850_p2;
reg   [7:0] empty_42_reg_1628;
wire   [7:0] empty_45_fu_860_p2;
reg   [7:0] empty_45_reg_1638;
wire   [7:0] empty_48_fu_880_p2;
reg   [7:0] empty_48_reg_1668;
wire   [7:0] empty_51_fu_890_p2;
reg   [7:0] empty_51_reg_1678;
wire   [7:0] empty_54_fu_910_p2;
reg   [7:0] empty_54_reg_1708;
wire   [7:0] empty_57_fu_920_p2;
reg   [7:0] empty_57_reg_1718;
reg   [31:0] v209_v_reg_1728;
wire    ap_CS_fsm_state11;
reg   [31:0] v119_1_v_reg_1733;
wire   [7:0] empty_60_fu_940_p2;
reg   [7:0] empty_60_reg_1758;
wire   [7:0] empty_63_fu_950_p2;
reg   [7:0] empty_63_reg_1768;
wire   [31:0] v119_fu_960_p1;
wire   [31:0] v132_fu_965_p1;
wire   [31:0] v143_fu_970_p1;
wire   [31:0] v154_fu_975_p1;
wire   [31:0] v165_fu_980_p1;
wire   [31:0] v176_fu_985_p1;
wire   [31:0] v187_fu_990_p1;
wire   [31:0] v198_fu_995_p1;
wire   [31:0] v209_fu_1000_p1;
wire   [15:0] mul_ln171_fu_1038_p2;
reg   [15:0] mul_ln171_reg_1883;
wire   [15:0] mul_ln186_fu_1047_p2;
reg   [15:0] mul_ln186_reg_1888;
wire   [15:0] mul_ln199_fu_1056_p2;
reg   [15:0] mul_ln199_reg_1893;
wire   [15:0] mul_ln212_fu_1065_p2;
reg   [15:0] mul_ln212_reg_1898;
wire   [15:0] mul_ln225_fu_1074_p2;
reg   [15:0] mul_ln225_reg_1903;
wire   [15:0] mul_ln238_fu_1083_p2;
reg   [15:0] mul_ln238_reg_1908;
wire   [15:0] mul_ln251_fu_1092_p2;
reg   [15:0] mul_ln251_reg_1913;
wire   [15:0] mul_ln264_fu_1101_p2;
reg   [15:0] mul_ln264_reg_1918;
wire   [15:0] mul_ln277_fu_1110_p2;
reg   [15:0] mul_ln277_reg_1923;
wire   [31:0] v119_1_fu_1116_p1;
wire    ap_CS_fsm_state16;
wire   [31:0] v132_1_fu_1120_p1;
wire   [31:0] v143_1_fu_1125_p1;
wire   [31:0] v154_1_fu_1130_p1;
wire   [31:0] v165_1_fu_1135_p1;
wire   [31:0] v176_1_fu_1140_p1;
wire   [31:0] v187_1_fu_1145_p1;
wire   [31:0] v198_1_fu_1150_p1;
wire   [31:0] v209_1_fu_1155_p1;
wire   [15:0] mul_ln171_1_fu_1163_p2;
reg   [15:0] mul_ln171_1_reg_1973;
wire   [15:0] mul_ln186_1_fu_1172_p2;
reg   [15:0] mul_ln186_1_reg_1978;
wire   [15:0] mul_ln199_1_fu_1181_p2;
reg   [15:0] mul_ln199_1_reg_1983;
wire   [15:0] mul_ln212_1_fu_1190_p2;
reg   [15:0] mul_ln212_1_reg_1988;
wire   [15:0] mul_ln225_1_fu_1199_p2;
reg   [15:0] mul_ln225_1_reg_1993;
wire   [15:0] mul_ln238_1_fu_1208_p2;
reg   [15:0] mul_ln238_1_reg_1998;
wire   [15:0] mul_ln251_1_fu_1217_p2;
reg   [15:0] mul_ln251_1_reg_2003;
wire   [15:0] mul_ln264_1_fu_1226_p2;
reg   [15:0] mul_ln264_1_reg_2008;
wire   [15:0] mul_ln277_1_fu_1235_p2;
reg   [15:0] mul_ln277_1_reg_2013;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_444_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_444_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_444_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_444_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_444_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_444_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_444_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_444_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_444_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_444_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_444_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_444_v225_d1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_444_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_444_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_444_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_444_v227_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_444_grp_fu_2018_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_444_grp_fu_2018_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_444_grp_fu_2018_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_444_grp_fu_2018_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_444_grp_fu_2022_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_444_grp_fu_2022_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_444_grp_fu_2022_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_472_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_472_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_472_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_472_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_472_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_472_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_472_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_472_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_472_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_472_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_472_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_472_v225_d1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_472_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_472_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_472_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_472_v227_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_472_grp_fu_2018_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_472_grp_fu_2018_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_472_grp_fu_2018_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_472_grp_fu_2018_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_472_grp_fu_2022_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_472_grp_fu_2022_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_472_grp_fu_2022_p_ce;
reg   [7:0] v115_reg_432;
wire    ap_CS_fsm_state21;
reg    ap_block_state2;
reg    grp_kernel_2mm_node1_Pipeline_label_5_fu_444_ap_start_reg;
wire    ap_CS_fsm_state17;
reg    grp_kernel_2mm_node1_Pipeline_label_53_fu_472_ap_start_reg;
wire    ap_CS_fsm_state20;
wire   [63:0] p_cast494_fu_780_p1;
wire   [63:0] p_cast_fu_785_p1;
wire   [63:0] p_cast495_fu_810_p1;
wire   [63:0] p_cast496_fu_815_p1;
wire   [63:0] p_cast497_fu_840_p1;
wire   [63:0] p_cast498_fu_845_p1;
wire   [63:0] p_cast499_fu_870_p1;
wire   [63:0] p_cast500_fu_875_p1;
wire   [63:0] p_cast501_fu_900_p1;
wire   [63:0] p_cast502_fu_905_p1;
wire   [63:0] p_cast503_fu_930_p1;
wire   [63:0] p_cast504_fu_935_p1;
wire   [63:0] p_cast505_fu_1004_p1;
wire   [63:0] p_cast506_fu_1009_p1;
wire   [63:0] p_cast507_fu_1014_p1;
wire   [63:0] p_cast508_fu_1019_p1;
wire   [63:0] p_cast509_fu_1024_p1;
wire   [63:0] p_cast510_fu_1029_p1;
reg   [15:0] phi_mul_fu_104;
wire   [0:0] icmp_ln169_fu_694_p2;
reg   [7:0] v114_fu_108;
reg    v236_write_local;
reg    v226_0_ce1_local;
reg   [14:0] v226_0_address1_local;
reg    v226_0_ce0_local;
reg   [14:0] v226_0_address0_local;
reg    v226_1_ce1_local;
reg   [14:0] v226_1_address1_local;
reg    v226_1_ce0_local;
reg   [14:0] v226_1_address0_local;
reg   [31:0] grp_fu_500_p0;
reg   [31:0] grp_fu_504_p0;
reg   [31:0] grp_fu_508_p0;
reg   [31:0] grp_fu_512_p0;
reg   [31:0] grp_fu_516_p0;
reg   [31:0] grp_fu_520_p0;
reg   [31:0] grp_fu_524_p0;
reg   [31:0] grp_fu_528_p0;
reg   [31:0] grp_fu_532_p0;
wire   [6:0] lshr_ln_fu_674_p4;
wire   [6:0] tmp_fu_704_p4;
wire   [14:0] grp_fu_1241_p3;
wire   [14:0] grp_fu_1249_p3;
wire   [14:0] grp_fu_1257_p3;
wire   [14:0] grp_fu_1265_p3;
wire   [14:0] grp_fu_1273_p3;
wire   [14:0] grp_fu_1281_p3;
wire   [14:0] grp_fu_1289_p3;
wire   [14:0] grp_fu_1297_p3;
wire   [14:0] grp_fu_1305_p3;
wire   [14:0] grp_fu_1313_p3;
wire   [14:0] grp_fu_1321_p3;
wire   [14:0] grp_fu_1329_p3;
wire   [14:0] grp_fu_1337_p3;
wire   [14:0] grp_fu_1345_p3;
wire   [14:0] grp_fu_1353_p3;
wire   [14:0] grp_fu_1361_p3;
wire   [14:0] grp_fu_1369_p3;
wire   [14:0] grp_fu_1377_p3;
wire   [7:0] mul_ln171_fu_1038_p0;
wire   [8:0] mul_ln171_fu_1038_p1;
wire   [7:0] mul_ln186_fu_1047_p0;
wire   [8:0] mul_ln186_fu_1047_p1;
wire   [7:0] mul_ln199_fu_1056_p0;
wire   [8:0] mul_ln199_fu_1056_p1;
wire   [7:0] mul_ln212_fu_1065_p0;
wire   [8:0] mul_ln212_fu_1065_p1;
wire   [7:0] mul_ln225_fu_1074_p0;
wire   [8:0] mul_ln225_fu_1074_p1;
wire   [7:0] mul_ln238_fu_1083_p0;
wire   [8:0] mul_ln238_fu_1083_p1;
wire   [7:0] mul_ln251_fu_1092_p0;
wire   [8:0] mul_ln251_fu_1092_p1;
wire   [7:0] mul_ln264_fu_1101_p0;
wire   [8:0] mul_ln264_fu_1101_p1;
wire   [7:0] mul_ln277_fu_1110_p0;
wire   [8:0] mul_ln277_fu_1110_p1;
wire   [7:0] mul_ln171_1_fu_1163_p0;
wire   [8:0] mul_ln171_1_fu_1163_p1;
wire   [7:0] mul_ln186_1_fu_1172_p0;
wire   [8:0] mul_ln186_1_fu_1172_p1;
wire   [7:0] mul_ln199_1_fu_1181_p0;
wire   [8:0] mul_ln199_1_fu_1181_p1;
wire   [7:0] mul_ln212_1_fu_1190_p0;
wire   [8:0] mul_ln212_1_fu_1190_p1;
wire   [7:0] mul_ln225_1_fu_1199_p0;
wire   [8:0] mul_ln225_1_fu_1199_p1;
wire   [7:0] mul_ln238_1_fu_1208_p0;
wire   [8:0] mul_ln238_1_fu_1208_p1;
wire   [7:0] mul_ln251_1_fu_1217_p0;
wire   [8:0] mul_ln251_1_fu_1217_p1;
wire   [7:0] mul_ln264_1_fu_1226_p0;
wire   [8:0] mul_ln264_1_fu_1226_p1;
wire   [7:0] mul_ln277_1_fu_1235_p0;
wire   [8:0] mul_ln277_1_fu_1235_p1;
wire   [7:0] grp_fu_1241_p0;
wire   [6:0] grp_fu_1241_p1;
wire   [6:0] grp_fu_1241_p2;
wire   [7:0] grp_fu_1249_p0;
wire   [6:0] grp_fu_1249_p1;
wire   [6:0] grp_fu_1249_p2;
wire   [7:0] grp_fu_1257_p0;
wire   [6:0] grp_fu_1257_p1;
wire   [6:0] grp_fu_1257_p2;
wire   [7:0] grp_fu_1265_p0;
wire   [6:0] grp_fu_1265_p1;
wire   [6:0] grp_fu_1265_p2;
wire   [7:0] grp_fu_1273_p0;
wire   [6:0] grp_fu_1273_p1;
wire   [6:0] grp_fu_1273_p2;
wire   [7:0] grp_fu_1281_p0;
wire   [6:0] grp_fu_1281_p1;
wire   [6:0] grp_fu_1281_p2;
wire   [7:0] grp_fu_1289_p0;
wire   [6:0] grp_fu_1289_p1;
wire   [6:0] grp_fu_1289_p2;
wire   [7:0] grp_fu_1297_p0;
wire   [6:0] grp_fu_1297_p1;
wire   [6:0] grp_fu_1297_p2;
wire   [7:0] grp_fu_1305_p0;
wire   [6:0] grp_fu_1305_p1;
wire   [6:0] grp_fu_1305_p2;
wire   [7:0] grp_fu_1313_p0;
wire   [6:0] grp_fu_1313_p1;
wire   [6:0] grp_fu_1313_p2;
wire   [7:0] grp_fu_1321_p0;
wire   [6:0] grp_fu_1321_p1;
wire   [6:0] grp_fu_1321_p2;
wire   [7:0] grp_fu_1329_p0;
wire   [6:0] grp_fu_1329_p1;
wire   [6:0] grp_fu_1329_p2;
wire   [7:0] grp_fu_1337_p0;
wire   [6:0] grp_fu_1337_p1;
wire   [6:0] grp_fu_1337_p2;
wire   [7:0] grp_fu_1345_p0;
wire   [6:0] grp_fu_1345_p1;
wire   [6:0] grp_fu_1345_p2;
wire   [7:0] grp_fu_1353_p0;
wire   [6:0] grp_fu_1353_p1;
wire   [6:0] grp_fu_1353_p2;
wire   [7:0] grp_fu_1361_p0;
wire   [6:0] grp_fu_1361_p1;
wire   [6:0] grp_fu_1361_p2;
wire   [7:0] grp_fu_1369_p0;
wire   [6:0] grp_fu_1369_p1;
wire   [6:0] grp_fu_1369_p2;
wire   [7:0] grp_fu_1377_p0;
wire   [6:0] grp_fu_1377_p1;
wire   [6:0] grp_fu_1377_p2;
reg    grp_fu_500_ce;
wire    ap_CS_fsm_state18;
reg    grp_fu_504_ce;
reg    grp_fu_508_ce;
reg    grp_fu_512_ce;
reg    grp_fu_516_ce;
reg    grp_fu_520_ce;
reg    grp_fu_524_ce;
reg    grp_fu_528_ce;
reg    grp_fu_532_ce;
reg   [31:0] grp_fu_2018_p0;
reg   [31:0] grp_fu_2018_p1;
reg    grp_fu_2018_ce;
reg   [31:0] grp_fu_2022_p0;
reg   [31:0] grp_fu_2022_p1;
reg    grp_fu_2022_ce;
reg   [20:0] ap_NS_fsm;
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
reg    ap_ST_fsm_state21_blk;
wire   [14:0] grp_fu_1241_p00;
wire   [14:0] grp_fu_1249_p00;
wire   [14:0] grp_fu_1257_p00;
wire   [14:0] grp_fu_1265_p00;
wire   [14:0] grp_fu_1273_p00;
wire   [14:0] grp_fu_1281_p00;
wire   [14:0] grp_fu_1289_p00;
wire   [14:0] grp_fu_1297_p00;
wire   [14:0] grp_fu_1305_p00;
wire   [14:0] grp_fu_1313_p00;
wire   [14:0] grp_fu_1321_p00;
wire   [14:0] grp_fu_1329_p00;
wire   [14:0] grp_fu_1337_p00;
wire   [14:0] grp_fu_1345_p00;
wire   [14:0] grp_fu_1353_p00;
wire   [14:0] grp_fu_1361_p00;
wire   [14:0] grp_fu_1369_p00;
wire   [14:0] grp_fu_1377_p00;
wire   [15:0] mul_ln171_1_fu_1163_p00;
wire   [15:0] mul_ln171_fu_1038_p00;
wire   [15:0] mul_ln186_1_fu_1172_p00;
wire   [15:0] mul_ln186_fu_1047_p00;
wire   [15:0] mul_ln199_1_fu_1181_p00;
wire   [15:0] mul_ln199_fu_1056_p00;
wire   [15:0] mul_ln212_1_fu_1190_p00;
wire   [15:0] mul_ln212_fu_1065_p00;
wire   [15:0] mul_ln225_1_fu_1199_p00;
wire   [15:0] mul_ln225_fu_1074_p00;
wire   [15:0] mul_ln238_1_fu_1208_p00;
wire   [15:0] mul_ln238_fu_1083_p00;
wire   [15:0] mul_ln251_1_fu_1217_p00;
wire   [15:0] mul_ln251_fu_1092_p00;
wire   [15:0] mul_ln264_1_fu_1226_p00;
wire   [15:0] mul_ln264_fu_1101_p00;
wire   [15:0] mul_ln277_1_fu_1235_p00;
wire   [15:0] mul_ln277_fu_1110_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 21'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_5_fu_444_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_53_fu_472_ap_start_reg = 1'b0;
#0 phi_mul_fu_104 = 16'd0;
#0 v114_fu_108 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_5 grp_kernel_2mm_node1_Pipeline_label_5_fu_444(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_5_fu_444_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_5_fu_444_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_5_fu_444_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_5_fu_444_ap_ready),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_444_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_444_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_444_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_444_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_444_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_444_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_444_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_444_v225_d1),.v225_q1(v225_q1),.phi_mul(phi_mul_load_reg_1412),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_444_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_444_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_444_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_444_v227_ce1),.v227_q1(v227_q1),.mul_ln171(mul_ln171_reg_1883),.mul_ln186(mul_ln186_reg_1888),.mul_ln199(mul_ln199_reg_1893),.mul_ln212(mul_ln212_reg_1898),.mul_ln225(mul_ln225_reg_1903),.mul_ln238(mul_ln238_reg_1908),.mul_ln251(mul_ln251_reg_1913),.mul_ln264(mul_ln264_reg_1918),.mul_ln277(mul_ln277_reg_1923),.cmp11(cmp11_reg_1459),.v120(reg_582),.v133(reg_588),.v144(reg_594),.v155(reg_600),.v166(reg_606),.v177(reg_612),.v188(reg_618),.v199(reg_624),.v210(reg_630),.grp_fu_2018_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_444_grp_fu_2018_p_din0),.grp_fu_2018_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_444_grp_fu_2018_p_din1),.grp_fu_2018_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_444_grp_fu_2018_p_opcode),.grp_fu_2018_p_dout0(grp_fu_128_p_dout0),.grp_fu_2018_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_444_grp_fu_2018_p_ce),.grp_fu_2022_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_444_grp_fu_2022_p_din0),.grp_fu_2022_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_444_grp_fu_2022_p_din1),.grp_fu_2022_p_dout0(grp_fu_132_p_dout0),.grp_fu_2022_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_444_grp_fu_2022_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_53 grp_kernel_2mm_node1_Pipeline_label_53_fu_472(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_53_fu_472_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_53_fu_472_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_53_fu_472_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_53_fu_472_ap_ready),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_472_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_472_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_472_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_472_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_472_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_472_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_472_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_472_v225_d1),.v225_q1(v225_q1),.phi_mul(phi_mul_load_reg_1412),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_472_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_472_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_472_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_472_v227_ce1),.v227_q1(v227_q1),.mul_ln171_1(mul_ln171_1_reg_1973),.mul_ln186_1(mul_ln186_1_reg_1978),.mul_ln199_1(mul_ln199_1_reg_1983),.mul_ln212_1(mul_ln212_1_reg_1988),.mul_ln225_1(mul_ln225_1_reg_1993),.mul_ln238_1(mul_ln238_1_reg_1998),.mul_ln251_1(mul_ln251_1_reg_2003),.mul_ln264_1(mul_ln264_1_reg_2008),.mul_ln277_1(mul_ln277_1_reg_2013),.cmp11(cmp11_reg_1459),.v120_1(reg_582),.v133_1(reg_588),.v144_1(reg_594),.v155_1(reg_600),.v166_1(reg_606),.v177_1(reg_612),.v188_1(reg_618),.v199_1(reg_624),.v210_1(reg_630),.grp_fu_2018_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_472_grp_fu_2018_p_din0),.grp_fu_2018_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_472_grp_fu_2018_p_din1),.grp_fu_2018_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_472_grp_fu_2018_p_opcode),.grp_fu_2018_p_dout0(grp_fu_128_p_dout0),.grp_fu_2018_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_472_grp_fu_2018_p_ce),.grp_fu_2022_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_472_grp_fu_2022_p_din0),.grp_fu_2022_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_472_grp_fu_2022_p_din1),.grp_fu_2022_p_dout0(grp_fu_132_p_dout0),.grp_fu_2022_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_472_grp_fu_2022_p_ce));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U50(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_504_p0),.din1(v113),.ce(grp_fu_504_ce),.dout(grp_fu_504_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U51(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_508_p0),.din1(v113),.ce(grp_fu_508_ce),.dout(grp_fu_508_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U52(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_512_p0),.din1(v113),.ce(grp_fu_512_ce),.dout(grp_fu_512_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U53(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_516_p0),.din1(v113),.ce(grp_fu_516_ce),.dout(grp_fu_516_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U54(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_520_p0),.din1(v113),.ce(grp_fu_520_ce),.dout(grp_fu_520_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U55(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_524_p0),.din1(v113),.ce(grp_fu_524_ce),.dout(grp_fu_524_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U56(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_528_p0),.din1(v113),.ce(grp_fu_528_ce),.dout(grp_fu_528_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U57(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_532_p0),.din1(v113),.ce(grp_fu_532_ce),.dout(grp_fu_532_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U58(.din0(mul_ln171_fu_1038_p0),.din1(mul_ln171_fu_1038_p1),.dout(mul_ln171_fu_1038_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U59(.din0(mul_ln186_fu_1047_p0),.din1(mul_ln186_fu_1047_p1),.dout(mul_ln186_fu_1047_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U60(.din0(mul_ln199_fu_1056_p0),.din1(mul_ln199_fu_1056_p1),.dout(mul_ln199_fu_1056_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U61(.din0(mul_ln212_fu_1065_p0),.din1(mul_ln212_fu_1065_p1),.dout(mul_ln212_fu_1065_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U62(.din0(mul_ln225_fu_1074_p0),.din1(mul_ln225_fu_1074_p1),.dout(mul_ln225_fu_1074_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U63(.din0(mul_ln238_fu_1083_p0),.din1(mul_ln238_fu_1083_p1),.dout(mul_ln238_fu_1083_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U64(.din0(mul_ln251_fu_1092_p0),.din1(mul_ln251_fu_1092_p1),.dout(mul_ln251_fu_1092_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U65(.din0(mul_ln264_fu_1101_p0),.din1(mul_ln264_fu_1101_p1),.dout(mul_ln264_fu_1101_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U66(.din0(mul_ln277_fu_1110_p0),.din1(mul_ln277_fu_1110_p1),.dout(mul_ln277_fu_1110_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U67(.din0(mul_ln171_1_fu_1163_p0),.din1(mul_ln171_1_fu_1163_p1),.dout(mul_ln171_1_fu_1163_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U68(.din0(mul_ln186_1_fu_1172_p0),.din1(mul_ln186_1_fu_1172_p1),.dout(mul_ln186_1_fu_1172_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U69(.din0(mul_ln199_1_fu_1181_p0),.din1(mul_ln199_1_fu_1181_p1),.dout(mul_ln199_1_fu_1181_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U70(.din0(mul_ln212_1_fu_1190_p0),.din1(mul_ln212_1_fu_1190_p1),.dout(mul_ln212_1_fu_1190_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U71(.din0(mul_ln225_1_fu_1199_p0),.din1(mul_ln225_1_fu_1199_p1),.dout(mul_ln225_1_fu_1199_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U72(.din0(mul_ln238_1_fu_1208_p0),.din1(mul_ln238_1_fu_1208_p1),.dout(mul_ln238_1_fu_1208_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U73(.din0(mul_ln251_1_fu_1217_p0),.din1(mul_ln251_1_fu_1217_p1),.dout(mul_ln251_1_fu_1217_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U74(.din0(mul_ln264_1_fu_1226_p0),.din1(mul_ln264_1_fu_1226_p1),.dout(mul_ln264_1_fu_1226_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U75(.din0(mul_ln277_1_fu_1235_p0),.din1(mul_ln277_1_fu_1235_p1),.dout(mul_ln277_1_fu_1235_p2));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U76(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1241_p0),.din1(grp_fu_1241_p1),.din2(grp_fu_1241_p2),.ce(1'b1),.dout(grp_fu_1241_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U77(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1249_p0),.din1(grp_fu_1249_p1),.din2(grp_fu_1249_p2),.ce(1'b1),.dout(grp_fu_1249_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U78(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1257_p0),.din1(grp_fu_1257_p1),.din2(grp_fu_1257_p2),.ce(1'b1),.dout(grp_fu_1257_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U79(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1265_p0),.din1(grp_fu_1265_p1),.din2(grp_fu_1265_p2),.ce(1'b1),.dout(grp_fu_1265_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U80(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1273_p0),.din1(grp_fu_1273_p1),.din2(grp_fu_1273_p2),.ce(1'b1),.dout(grp_fu_1273_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U81(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1281_p0),.din1(grp_fu_1281_p1),.din2(grp_fu_1281_p2),.ce(1'b1),.dout(grp_fu_1281_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U82(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1289_p0),.din1(grp_fu_1289_p1),.din2(grp_fu_1289_p2),.ce(1'b1),.dout(grp_fu_1289_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U83(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1297_p0),.din1(grp_fu_1297_p1),.din2(grp_fu_1297_p2),.ce(1'b1),.dout(grp_fu_1297_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U84(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1305_p0),.din1(grp_fu_1305_p1),.din2(grp_fu_1305_p2),.ce(1'b1),.dout(grp_fu_1305_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U85(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1313_p0),.din1(grp_fu_1313_p1),.din2(grp_fu_1313_p2),.ce(1'b1),.dout(grp_fu_1313_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U86(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1321_p0),.din1(grp_fu_1321_p1),.din2(grp_fu_1321_p2),.ce(1'b1),.dout(grp_fu_1321_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U87(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1329_p0),.din1(grp_fu_1329_p1),.din2(grp_fu_1329_p2),.ce(1'b1),.dout(grp_fu_1329_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U88(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1337_p0),.din1(grp_fu_1337_p1),.din2(grp_fu_1337_p2),.ce(1'b1),.dout(grp_fu_1337_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U89(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1345_p0),.din1(grp_fu_1345_p1),.din2(grp_fu_1345_p2),.ce(1'b1),.dout(grp_fu_1345_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U90(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1353_p0),.din1(grp_fu_1353_p1),.din2(grp_fu_1353_p2),.ce(1'b1),.dout(grp_fu_1353_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U91(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1361_p0),.din1(grp_fu_1361_p1),.din2(grp_fu_1361_p2),.ce(1'b1),.dout(grp_fu_1361_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U92(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1369_p0),.din1(grp_fu_1369_p1),.din2(grp_fu_1369_p2),.ce(1'b1),.dout(grp_fu_1369_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U93(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1377_p0),.din1(grp_fu_1377_p1),.din2(grp_fu_1377_p2),.ce(1'b1),.dout(grp_fu_1377_p3));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_53_fu_472_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state20)) begin
            grp_kernel_2mm_node1_Pipeline_label_53_fu_472_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_53_fu_472_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_53_fu_472_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_5_fu_444_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_444_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_444_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_444_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_fu_104 <= 16'd0;
    end else if (((icmp_ln169_fu_694_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_mul_fu_104 <= add_ln168_1_reg_1418;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_108 <= 8'd0;
    end else if (((icmp_ln169_fu_694_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v114_fu_108 <= add_ln168_reg_1426;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln168_fu_658_p2 == 1'd0) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2))) begin
        v115_reg_432 <= 8'd0;
    end else if (((grp_kernel_2mm_node1_Pipeline_label_53_fu_472_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21))) begin
        v115_reg_432 <= add_ln169_1_reg_1483;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln168_1_reg_1418 <= add_ln168_1_fu_652_p2;
        add_ln168_reg_1426 <= add_ln168_fu_664_p2;
        cmp11_reg_1459 <= cmp11_fu_688_p2;
        phi_mul_load_reg_1412 <= phi_mul_fu_104;
        trunc_ln168_reg_1431 <= trunc_ln168_fu_670_p1;
        zext_ln168_reg_1437[6 : 0] <= zext_ln168_fu_684_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln169_1_reg_1483 <= add_ln169_1_fu_726_p2;
        tmp_1_reg_1473[7 : 1] <= tmp_1_fu_714_p3[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        add_ln169_reg_1598 <= add_ln169_fu_830_p2;
        empty_37_reg_1588 <= empty_37_fu_820_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        empty_19_reg_1488 <= empty_19_fu_740_p2;
        empty_22_reg_1498 <= empty_22_fu_750_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        empty_25_reg_1508 <= empty_25_fu_760_p2;
        empty_28_reg_1518 <= empty_28_fu_770_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        empty_31_reg_1548 <= empty_31_fu_790_p2;
        empty_34_reg_1558 <= empty_34_fu_800_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        empty_42_reg_1628 <= empty_42_fu_850_p2;
        empty_45_reg_1638 <= empty_45_fu_860_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        empty_48_reg_1668 <= empty_48_fu_880_p2;
        empty_51_reg_1678 <= empty_51_fu_890_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        empty_54_reg_1708 <= empty_54_fu_910_p2;
        empty_57_reg_1718 <= empty_57_fu_920_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        empty_60_reg_1758 <= empty_60_fu_940_p2;
        empty_63_reg_1768 <= empty_63_fu_950_p2;
        v119_1_v_reg_1733 <= grp_fu_543_p3;
        v209_v_reg_1728 <= grp_fu_536_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        mul_ln171_1_reg_1973 <= mul_ln171_1_fu_1163_p2;
        mul_ln186_1_reg_1978 <= mul_ln186_1_fu_1172_p2;
        mul_ln199_1_reg_1983 <= mul_ln199_1_fu_1181_p2;
        mul_ln212_1_reg_1988 <= mul_ln212_1_fu_1190_p2;
        mul_ln225_1_reg_1993 <= mul_ln225_1_fu_1199_p2;
        mul_ln238_1_reg_1998 <= mul_ln238_1_fu_1208_p2;
        mul_ln251_1_reg_2003 <= mul_ln251_1_fu_1217_p2;
        mul_ln264_1_reg_2008 <= mul_ln264_1_fu_1226_p2;
        mul_ln277_1_reg_2013 <= mul_ln277_1_fu_1235_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln171_reg_1883 <= mul_ln171_fu_1038_p2;
        mul_ln186_reg_1888 <= mul_ln186_fu_1047_p2;
        mul_ln199_reg_1893 <= mul_ln199_fu_1056_p2;
        mul_ln212_reg_1898 <= mul_ln212_fu_1065_p2;
        mul_ln225_reg_1903 <= mul_ln225_fu_1074_p2;
        mul_ln238_reg_1908 <= mul_ln238_fu_1083_p2;
        mul_ln251_reg_1913 <= mul_ln251_fu_1092_p2;
        mul_ln264_reg_1918 <= mul_ln264_fu_1101_p2;
        mul_ln277_reg_1923 <= mul_ln277_fu_1110_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7))) begin
        reg_550 <= grp_fu_536_p3;
        reg_554 <= grp_fu_543_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_558 <= grp_fu_536_p3;
        reg_562 <= grp_fu_543_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9))) begin
        reg_566 <= grp_fu_536_p3;
        reg_570 <= grp_fu_543_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10))) begin
        reg_574 <= grp_fu_536_p3;
        reg_578 <= grp_fu_543_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15))) begin
        reg_582 <= grp_fu_136_p_dout0;
        reg_588 <= grp_fu_504_p2;
        reg_594 <= grp_fu_508_p2;
        reg_600 <= grp_fu_512_p2;
        reg_606 <= grp_fu_516_p2;
        reg_612 <= grp_fu_520_p2;
        reg_618 <= grp_fu_524_p2;
        reg_624 <= grp_fu_528_p2;
        reg_630 <= grp_fu_532_p2;
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
    if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_444_ap_done == 1'b0)) begin
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
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_53_fu_472_ap_done == 1'b0)) begin
        ap_ST_fsm_state21_blk = 1'b1;
    end else begin
        ap_ST_fsm_state21_blk = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state2)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
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
    if ((((icmp_ln168_fu_658_p2 == 1'd1) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((icmp_ln168_fu_658_p2 == 1'd1) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2018_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_472_grp_fu_2018_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2018_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_444_grp_fu_2018_p_ce;
    end else begin
        grp_fu_2018_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2018_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_472_grp_fu_2018_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2018_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_444_grp_fu_2018_p_din0;
    end else begin
        grp_fu_2018_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2018_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_472_grp_fu_2018_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2018_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_444_grp_fu_2018_p_din1;
    end else begin
        grp_fu_2018_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2022_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_472_grp_fu_2022_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2022_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_444_grp_fu_2022_p_ce;
    end else begin
        grp_fu_2022_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2022_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_472_grp_fu_2022_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2022_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_444_grp_fu_2022_p_din0;
    end else begin
        grp_fu_2022_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2022_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_472_grp_fu_2022_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2022_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_444_grp_fu_2022_p_din1;
    end else begin
        grp_fu_2022_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_444_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_500_ce = 1'b1;
    end else begin
        grp_fu_500_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_500_p0 = v119_1_fu_1116_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_500_p0 = v119_fu_960_p1;
    end else begin
        grp_fu_500_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_444_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_504_ce = 1'b1;
    end else begin
        grp_fu_504_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_504_p0 = v132_1_fu_1120_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_504_p0 = v132_fu_965_p1;
    end else begin
        grp_fu_504_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_444_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_508_ce = 1'b1;
    end else begin
        grp_fu_508_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_508_p0 = v143_1_fu_1125_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_508_p0 = v143_fu_970_p1;
    end else begin
        grp_fu_508_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_444_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_512_ce = 1'b1;
    end else begin
        grp_fu_512_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_512_p0 = v154_1_fu_1130_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_512_p0 = v154_fu_975_p1;
    end else begin
        grp_fu_512_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_444_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_516_ce = 1'b1;
    end else begin
        grp_fu_516_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_516_p0 = v165_1_fu_1135_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_516_p0 = v165_fu_980_p1;
    end else begin
        grp_fu_516_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_444_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_520_ce = 1'b1;
    end else begin
        grp_fu_520_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_520_p0 = v176_1_fu_1140_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_520_p0 = v176_fu_985_p1;
    end else begin
        grp_fu_520_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_444_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_524_ce = 1'b1;
    end else begin
        grp_fu_524_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_524_p0 = v187_1_fu_1145_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_524_p0 = v187_fu_990_p1;
    end else begin
        grp_fu_524_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_444_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_528_ce = 1'b1;
    end else begin
        grp_fu_528_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_528_p0 = v198_1_fu_1150_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_528_p0 = v198_fu_995_p1;
    end else begin
        grp_fu_528_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_444_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_532_ce = 1'b1;
    end else begin
        grp_fu_532_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_532_p0 = v209_1_fu_1155_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_532_p0 = v209_fu_1000_p1;
    end else begin
        grp_fu_532_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_472_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_444_v225_address0;
    end else begin
        v225_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_472_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_444_v225_address1;
    end else begin
        v225_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_472_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_444_v225_ce0;
    end else begin
        v225_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_472_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_444_v225_ce1;
    end else begin
        v225_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_472_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_444_v225_d0;
    end else begin
        v225_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_472_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_444_v225_d1;
    end else begin
        v225_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_472_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_444_v225_we0;
    end else begin
        v225_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_472_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_444_v225_we1;
    end else begin
        v225_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_0_address0_local = p_cast510_fu_1029_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_0_address0_local = p_cast508_fu_1019_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_0_address0_local = p_cast506_fu_1009_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_0_address0_local = p_cast504_fu_935_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address0_local = p_cast502_fu_905_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address0_local = p_cast500_fu_875_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address0_local = p_cast498_fu_845_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address0_local = p_cast496_fu_815_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_0_address0_local = p_cast_fu_785_p1;
    end else begin
        v226_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_0_address1_local = p_cast509_fu_1024_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_0_address1_local = p_cast507_fu_1014_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_0_address1_local = p_cast505_fu_1004_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_0_address1_local = p_cast503_fu_930_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address1_local = p_cast501_fu_900_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address1_local = p_cast499_fu_870_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address1_local = p_cast497_fu_840_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address1_local = p_cast495_fu_810_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_0_address1_local = p_cast494_fu_780_p1;
    end else begin
        v226_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7))) begin
        v226_0_ce0_local = 1'b1;
    end else begin
        v226_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7))) begin
        v226_0_ce1_local = 1'b1;
    end else begin
        v226_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_1_address0_local = p_cast510_fu_1029_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_1_address0_local = p_cast508_fu_1019_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_1_address0_local = p_cast506_fu_1009_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_1_address0_local = p_cast504_fu_935_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_1_address0_local = p_cast502_fu_905_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address0_local = p_cast500_fu_875_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address0_local = p_cast498_fu_845_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address0_local = p_cast496_fu_815_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_1_address0_local = p_cast_fu_785_p1;
    end else begin
        v226_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_1_address1_local = p_cast509_fu_1024_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_1_address1_local = p_cast507_fu_1014_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_1_address1_local = p_cast505_fu_1004_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_1_address1_local = p_cast503_fu_930_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_1_address1_local = p_cast501_fu_900_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address1_local = p_cast499_fu_870_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address1_local = p_cast497_fu_840_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address1_local = p_cast495_fu_810_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_1_address1_local = p_cast494_fu_780_p1;
    end else begin
        v226_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7))) begin
        v226_1_ce0_local = 1'b1;
    end else begin
        v226_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7))) begin
        v226_1_ce1_local = 1'b1;
    end else begin
        v226_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_472_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_444_v227_address0;
    end else begin
        v227_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_472_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_444_v227_address1;
    end else begin
        v227_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_472_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_444_v227_ce0;
    end else begin
        v227_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_472_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_444_v227_ce1;
    end else begin
        v227_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln168_fu_658_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((icmp_ln168_fu_658_p2 == 1'd1) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2))) begin
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
            if (((icmp_ln168_fu_658_p2 == 1'd1) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((icmp_ln168_fu_658_p2 == 1'd0) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln169_fu_694_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_444_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_53_fu_472_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln168_1_fu_652_p2 = (phi_mul_fu_104 + 16'd190);
assign add_ln168_fu_664_p2 = (v114_fu_108 + 8'd1);
assign add_ln169_1_fu_726_p2 = (v115_reg_432 + 8'd18);
assign add_ln169_fu_830_p2 = (v115_reg_432 + 8'd9);
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
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state2 = ((icmp_ln168_fu_658_p2 == 1'd1) & (v236_full_n == 1'b0));
end
assign cmp11_fu_688_p2 = ((v114_fu_108 == 8'd0) ? 1'b1 : 1'b0);
assign empty_19_fu_740_p2 = (v115_reg_432 + 8'd2);
assign empty_22_fu_750_p2 = (v115_reg_432 + 8'd3);
assign empty_25_fu_760_p2 = (v115_reg_432 + 8'd4);
assign empty_28_fu_770_p2 = (v115_reg_432 + 8'd5);
assign empty_31_fu_790_p2 = (v115_reg_432 + 8'd6);
assign empty_34_fu_800_p2 = (v115_reg_432 + 8'd7);
assign empty_37_fu_820_p2 = (v115_reg_432 + 8'd8);
assign empty_42_fu_850_p2 = (v115_reg_432 + 8'd10);
assign empty_45_fu_860_p2 = (v115_reg_432 + 8'd11);
assign empty_48_fu_880_p2 = (v115_reg_432 + 8'd12);
assign empty_51_fu_890_p2 = (v115_reg_432 + 8'd13);
assign empty_54_fu_910_p2 = (v115_reg_432 + 8'd14);
assign empty_57_fu_920_p2 = (v115_reg_432 + 8'd15);
assign empty_60_fu_940_p2 = (v115_reg_432 + 8'd16);
assign empty_63_fu_950_p2 = (v115_reg_432 + 8'd17);
assign grp_fu_1241_p0 = grp_fu_1241_p00;
assign grp_fu_1241_p00 = v115_reg_432;
assign grp_fu_1241_p1 = 15'd105;
assign grp_fu_1241_p2 = zext_ln168_reg_1437;
assign grp_fu_1249_p0 = grp_fu_1249_p00;
assign grp_fu_1249_p00 = tmp_1_fu_714_p3;
assign grp_fu_1249_p1 = 15'd105;
assign grp_fu_1249_p2 = zext_ln168_reg_1437;
assign grp_fu_1257_p0 = grp_fu_1257_p00;
assign grp_fu_1257_p00 = empty_19_fu_740_p2;
assign grp_fu_1257_p1 = 15'd105;
assign grp_fu_1257_p2 = zext_ln168_reg_1437;
assign grp_fu_1265_p0 = grp_fu_1265_p00;
assign grp_fu_1265_p00 = empty_22_fu_750_p2;
assign grp_fu_1265_p1 = 15'd105;
assign grp_fu_1265_p2 = zext_ln168_reg_1437;
assign grp_fu_1273_p0 = grp_fu_1273_p00;
assign grp_fu_1273_p00 = empty_25_fu_760_p2;
assign grp_fu_1273_p1 = 15'd105;
assign grp_fu_1273_p2 = zext_ln168_reg_1437;
assign grp_fu_1281_p0 = grp_fu_1281_p00;
assign grp_fu_1281_p00 = empty_28_fu_770_p2;
assign grp_fu_1281_p1 = 15'd105;
assign grp_fu_1281_p2 = zext_ln168_reg_1437;
assign grp_fu_1289_p0 = grp_fu_1289_p00;
assign grp_fu_1289_p00 = empty_31_fu_790_p2;
assign grp_fu_1289_p1 = 15'd105;
assign grp_fu_1289_p2 = zext_ln168_reg_1437;
assign grp_fu_128_p_ce = grp_fu_2018_ce;
assign grp_fu_128_p_din0 = grp_fu_2018_p0;
assign grp_fu_128_p_din1 = grp_fu_2018_p1;
assign grp_fu_128_p_opcode = 2'd0;
assign grp_fu_1297_p0 = grp_fu_1297_p00;
assign grp_fu_1297_p00 = empty_34_fu_800_p2;
assign grp_fu_1297_p1 = 15'd105;
assign grp_fu_1297_p2 = zext_ln168_reg_1437;
assign grp_fu_1305_p0 = grp_fu_1305_p00;
assign grp_fu_1305_p00 = empty_37_fu_820_p2;
assign grp_fu_1305_p1 = 15'd105;
assign grp_fu_1305_p2 = zext_ln168_reg_1437;
assign grp_fu_1313_p0 = grp_fu_1313_p00;
assign grp_fu_1313_p00 = add_ln169_fu_830_p2;
assign grp_fu_1313_p1 = 15'd105;
assign grp_fu_1313_p2 = zext_ln168_reg_1437;
assign grp_fu_1321_p0 = grp_fu_1321_p00;
assign grp_fu_1321_p00 = empty_42_fu_850_p2;
assign grp_fu_1321_p1 = 15'd105;
assign grp_fu_1321_p2 = zext_ln168_reg_1437;
assign grp_fu_1329_p0 = grp_fu_1329_p00;
assign grp_fu_1329_p00 = empty_45_fu_860_p2;
assign grp_fu_1329_p1 = 15'd105;
assign grp_fu_1329_p2 = zext_ln168_reg_1437;
assign grp_fu_132_p_ce = grp_fu_2022_ce;
assign grp_fu_132_p_din0 = grp_fu_2022_p0;
assign grp_fu_132_p_din1 = grp_fu_2022_p1;
assign grp_fu_1337_p0 = grp_fu_1337_p00;
assign grp_fu_1337_p00 = empty_48_fu_880_p2;
assign grp_fu_1337_p1 = 15'd105;
assign grp_fu_1337_p2 = zext_ln168_reg_1437;
assign grp_fu_1345_p0 = grp_fu_1345_p00;
assign grp_fu_1345_p00 = empty_51_fu_890_p2;
assign grp_fu_1345_p1 = 15'd105;
assign grp_fu_1345_p2 = zext_ln168_reg_1437;
assign grp_fu_1353_p0 = grp_fu_1353_p00;
assign grp_fu_1353_p00 = empty_54_fu_910_p2;
assign grp_fu_1353_p1 = 15'd105;
assign grp_fu_1353_p2 = zext_ln168_reg_1437;
assign grp_fu_1361_p0 = grp_fu_1361_p00;
assign grp_fu_1361_p00 = empty_57_fu_920_p2;
assign grp_fu_1361_p1 = 15'd105;
assign grp_fu_1361_p2 = zext_ln168_reg_1437;
assign grp_fu_1369_p0 = grp_fu_1369_p00;
assign grp_fu_1369_p00 = empty_60_fu_940_p2;
assign grp_fu_1369_p1 = 15'd105;
assign grp_fu_1369_p2 = zext_ln168_reg_1437;
assign grp_fu_136_p_ce = grp_fu_500_ce;
assign grp_fu_136_p_din0 = grp_fu_500_p0;
assign grp_fu_136_p_din1 = v113;
assign grp_fu_1377_p0 = grp_fu_1377_p00;
assign grp_fu_1377_p00 = empty_63_fu_950_p2;
assign grp_fu_1377_p1 = 15'd105;
assign grp_fu_1377_p2 = zext_ln168_reg_1437;
assign grp_fu_536_p3 = ((trunc_ln168_reg_1431[0:0] == 1'b1) ? v226_1_q1 : v226_0_q1);
assign grp_fu_543_p3 = ((trunc_ln168_reg_1431[0:0] == 1'b1) ? v226_1_q0 : v226_0_q0);
assign grp_kernel_2mm_node1_Pipeline_label_53_fu_472_ap_start = grp_kernel_2mm_node1_Pipeline_label_53_fu_472_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_5_fu_444_ap_start = grp_kernel_2mm_node1_Pipeline_label_5_fu_444_ap_start_reg;
assign icmp_ln168_fu_658_p2 = ((v114_fu_108 == 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln169_fu_694_p2 = ((v115_reg_432 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln_fu_674_p4 = {{v114_fu_108[7:1]}};
assign mul_ln171_1_fu_1163_p0 = mul_ln171_1_fu_1163_p00;
assign mul_ln171_1_fu_1163_p00 = add_ln169_reg_1598;
assign mul_ln171_1_fu_1163_p1 = 16'd190;
assign mul_ln171_fu_1038_p0 = mul_ln171_fu_1038_p00;
assign mul_ln171_fu_1038_p00 = v115_reg_432;
assign mul_ln171_fu_1038_p1 = 16'd190;
assign mul_ln186_1_fu_1172_p0 = mul_ln186_1_fu_1172_p00;
assign mul_ln186_1_fu_1172_p00 = empty_42_reg_1628;
assign mul_ln186_1_fu_1172_p1 = 16'd190;
assign mul_ln186_fu_1047_p0 = mul_ln186_fu_1047_p00;
assign mul_ln186_fu_1047_p00 = tmp_1_reg_1473;
assign mul_ln186_fu_1047_p1 = 16'd190;
assign mul_ln199_1_fu_1181_p0 = mul_ln199_1_fu_1181_p00;
assign mul_ln199_1_fu_1181_p00 = empty_45_reg_1638;
assign mul_ln199_1_fu_1181_p1 = 16'd190;
assign mul_ln199_fu_1056_p0 = mul_ln199_fu_1056_p00;
assign mul_ln199_fu_1056_p00 = empty_19_reg_1488;
assign mul_ln199_fu_1056_p1 = 16'd190;
assign mul_ln212_1_fu_1190_p0 = mul_ln212_1_fu_1190_p00;
assign mul_ln212_1_fu_1190_p00 = empty_48_reg_1668;
assign mul_ln212_1_fu_1190_p1 = 16'd190;
assign mul_ln212_fu_1065_p0 = mul_ln212_fu_1065_p00;
assign mul_ln212_fu_1065_p00 = empty_22_reg_1498;
assign mul_ln212_fu_1065_p1 = 16'd190;
assign mul_ln225_1_fu_1199_p0 = mul_ln225_1_fu_1199_p00;
assign mul_ln225_1_fu_1199_p00 = empty_51_reg_1678;
assign mul_ln225_1_fu_1199_p1 = 16'd190;
assign mul_ln225_fu_1074_p0 = mul_ln225_fu_1074_p00;
assign mul_ln225_fu_1074_p00 = empty_25_reg_1508;
assign mul_ln225_fu_1074_p1 = 16'd190;
assign mul_ln238_1_fu_1208_p0 = mul_ln238_1_fu_1208_p00;
assign mul_ln238_1_fu_1208_p00 = empty_54_reg_1708;
assign mul_ln238_1_fu_1208_p1 = 16'd190;
assign mul_ln238_fu_1083_p0 = mul_ln238_fu_1083_p00;
assign mul_ln238_fu_1083_p00 = empty_28_reg_1518;
assign mul_ln238_fu_1083_p1 = 16'd190;
assign mul_ln251_1_fu_1217_p0 = mul_ln251_1_fu_1217_p00;
assign mul_ln251_1_fu_1217_p00 = empty_57_reg_1718;
assign mul_ln251_1_fu_1217_p1 = 16'd190;
assign mul_ln251_fu_1092_p0 = mul_ln251_fu_1092_p00;
assign mul_ln251_fu_1092_p00 = empty_31_reg_1548;
assign mul_ln251_fu_1092_p1 = 16'd190;
assign mul_ln264_1_fu_1226_p0 = mul_ln264_1_fu_1226_p00;
assign mul_ln264_1_fu_1226_p00 = empty_60_reg_1758;
assign mul_ln264_1_fu_1226_p1 = 16'd190;
assign mul_ln264_fu_1101_p0 = mul_ln264_fu_1101_p00;
assign mul_ln264_fu_1101_p00 = empty_34_reg_1558;
assign mul_ln264_fu_1101_p1 = 16'd190;
assign mul_ln277_1_fu_1235_p0 = mul_ln277_1_fu_1235_p00;
assign mul_ln277_1_fu_1235_p00 = empty_63_reg_1768;
assign mul_ln277_1_fu_1235_p1 = 16'd190;
assign mul_ln277_fu_1110_p0 = mul_ln277_fu_1110_p00;
assign mul_ln277_fu_1110_p00 = empty_37_reg_1588;
assign mul_ln277_fu_1110_p1 = 16'd190;
assign p_cast494_fu_780_p1 = grp_fu_1241_p3;
assign p_cast495_fu_810_p1 = grp_fu_1257_p3;
assign p_cast496_fu_815_p1 = grp_fu_1265_p3;
assign p_cast497_fu_840_p1 = grp_fu_1273_p3;
assign p_cast498_fu_845_p1 = grp_fu_1281_p3;
assign p_cast499_fu_870_p1 = grp_fu_1289_p3;
assign p_cast500_fu_875_p1 = grp_fu_1297_p3;
assign p_cast501_fu_900_p1 = grp_fu_1305_p3;
assign p_cast502_fu_905_p1 = grp_fu_1313_p3;
assign p_cast503_fu_930_p1 = grp_fu_1321_p3;
assign p_cast504_fu_935_p1 = grp_fu_1329_p3;
assign p_cast505_fu_1004_p1 = grp_fu_1337_p3;
assign p_cast506_fu_1009_p1 = grp_fu_1345_p3;
assign p_cast507_fu_1014_p1 = grp_fu_1353_p3;
assign p_cast508_fu_1019_p1 = grp_fu_1361_p3;
assign p_cast509_fu_1024_p1 = grp_fu_1369_p3;
assign p_cast510_fu_1029_p1 = grp_fu_1377_p3;
assign p_cast_fu_785_p1 = grp_fu_1249_p3;
assign tmp_1_fu_714_p3 = {{tmp_fu_704_p4}, {1'd1}};
assign tmp_fu_704_p4 = {{v115_reg_432[7:1]}};
assign trunc_ln168_fu_670_p1 = v114_fu_108[0:0];
assign v119_1_fu_1116_p1 = v119_1_v_reg_1733;
assign v119_fu_960_p1 = reg_550;
assign v132_1_fu_1120_p1 = reg_550;
assign v132_fu_965_p1 = reg_554;
assign v143_1_fu_1125_p1 = reg_554;
assign v143_fu_970_p1 = reg_558;
assign v154_1_fu_1130_p1 = reg_558;
assign v154_fu_975_p1 = reg_562;
assign v165_1_fu_1135_p1 = reg_562;
assign v165_fu_980_p1 = reg_566;
assign v176_1_fu_1140_p1 = reg_566;
assign v176_fu_985_p1 = reg_570;
assign v187_1_fu_1145_p1 = reg_570;
assign v187_fu_990_p1 = reg_574;
assign v198_1_fu_1150_p1 = reg_574;
assign v198_fu_995_p1 = reg_578;
assign v209_1_fu_1155_p1 = reg_578;
assign v209_fu_1000_p1 = v209_v_reg_1728;
assign v226_0_address0 = v226_0_address0_local;
assign v226_0_address1 = v226_0_address1_local;
assign v226_0_ce0 = v226_0_ce0_local;
assign v226_0_ce1 = v226_0_ce1_local;
assign v226_1_address0 = v226_1_address0_local;
assign v226_1_address1 = v226_1_address1_local;
assign v226_1_ce0 = v226_1_ce0_local;
assign v226_1_ce1 = v226_1_ce1_local;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
assign zext_ln168_fu_684_p1 = lshr_ln_fu_674_p4;
always @ (posedge ap_clk) begin
    zext_ln168_reg_1437[14:7] <= 8'b00000000;
    tmp_1_reg_1473[0] <= 1'b1;
end
endmodule 