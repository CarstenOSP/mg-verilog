module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_address0,v226_ce0,v226_q0,v226_address1,v226_ce1,v226_q1,v227_0_address0,v227_0_ce0,v227_0_q0,v227_0_address1,v227_0_ce1,v227_0_q1,v227_1_address0,v227_1_ce0,v227_1_q0,v227_1_address1,v227_1_ce1,v227_1_q1,v227_2_address0,v227_2_ce0,v227_2_q0,v227_2_address1,v227_2_ce1,v227_2_q1,v227_3_address0,v227_3_ce0,v227_3_q0,v227_3_address1,v227_3_ce1,v227_3_q1,v236_din,v236_full_n,v236_write,v225_address0,v225_ce0,v225_we0,v225_d0,v225_q0,v225_address1,v225_ce1,v225_we1,v225_d1,v225_q1,v113,grp_fu_144_p_din0,grp_fu_144_p_din1,grp_fu_144_p_opcode,grp_fu_144_p_dout0,grp_fu_144_p_ce,grp_fu_148_p_din0,grp_fu_148_p_din1,grp_fu_148_p_dout0,grp_fu_148_p_ce,grp_fu_152_p_din0,grp_fu_152_p_din1,grp_fu_152_p_dout0,grp_fu_152_p_ce); 
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
output  [13:0] v227_0_address0;
output   v227_0_ce0;
input  [31:0] v227_0_q0;
output  [13:0] v227_0_address1;
output   v227_0_ce1;
input  [31:0] v227_0_q1;
output  [13:0] v227_1_address0;
output   v227_1_ce0;
input  [31:0] v227_1_q0;
output  [13:0] v227_1_address1;
output   v227_1_ce1;
input  [31:0] v227_1_q1;
output  [13:0] v227_2_address0;
output   v227_2_ce0;
input  [31:0] v227_2_q0;
output  [13:0] v227_2_address1;
output   v227_2_ce1;
input  [31:0] v227_2_q1;
output  [13:0] v227_3_address0;
output   v227_3_ce0;
input  [31:0] v227_3_q0;
output  [13:0] v227_3_address1;
output   v227_3_ce1;
input  [31:0] v227_3_q1;
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
wire   [0:0] icmp_ln168_fu_491_p2;
reg   [31:0] reg_386;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state22;
reg   [31:0] reg_391;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state23;
reg   [31:0] reg_395;
reg   [31:0] reg_399;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state24;
reg   [31:0] reg_404;
reg   [31:0] reg_409;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state25;
reg   [31:0] reg_414;
reg   [31:0] reg_419;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state26;
reg   [31:0] reg_424;
reg   [31:0] reg_429;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state30;
reg   [31:0] reg_435;
wire   [31:0] grp_fu_358_p2;
reg   [31:0] reg_441;
wire   [31:0] grp_fu_362_p2;
reg   [31:0] reg_447;
wire   [31:0] grp_fu_366_p2;
reg   [31:0] reg_453;
wire   [31:0] grp_fu_370_p2;
reg   [31:0] reg_459;
wire   [31:0] grp_fu_374_p2;
reg   [31:0] reg_465;
wire   [31:0] grp_fu_378_p2;
reg   [31:0] reg_471;
wire   [31:0] grp_fu_382_p2;
reg   [31:0] reg_477;
wire   [15:0] zext_ln168_fu_497_p1;
reg   [15:0] zext_ln168_reg_1176;
wire   [1:0] trunc_ln168_fu_501_p1;
reg   [1:0] trunc_ln168_reg_1189;
wire   [13:0] mul_ln175_fu_519_p2;
reg   [13:0] mul_ln175_reg_1195;
wire   [0:0] cmp11_fu_525_p2;
reg   [0:0] cmp11_reg_1201;
wire   [15:0] v115_cast_fu_537_p1;
reg   [15:0] v115_cast_reg_1209;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln169_fu_541_p2;
reg   [7:0] add_ln169_reg_1215;
wire   [15:0] zext_ln169_fu_564_p1;
reg   [15:0] zext_ln169_reg_1220;
wire   [15:0] p_cast2219_fu_574_p1;
reg   [15:0] p_cast2219_reg_1233;
wire    ap_CS_fsm_state4;
wire   [15:0] p_cast2220_fu_584_p1;
reg   [15:0] p_cast2220_reg_1239;
wire   [15:0] p_cast2221_fu_594_p1;
reg   [15:0] p_cast2221_reg_1245;
wire    ap_CS_fsm_state5;
wire   [15:0] p_cast2222_fu_604_p1;
reg   [15:0] p_cast2222_reg_1251;
wire    ap_CS_fsm_state6;
wire   [15:0] p_cast2223_fu_618_p1;
reg   [15:0] p_cast2223_reg_1262;
wire   [15:0] p_cast2224_fu_628_p1;
reg   [15:0] p_cast2224_reg_1268;
wire   [15:0] p_cast2225_fu_646_p1;
reg   [15:0] p_cast2225_reg_1284;
wire   [15:0] p_cast2226_fu_656_p1;
reg   [15:0] p_cast2226_reg_1290;
wire   [31:0] v119_fu_684_p1;
wire    ap_CS_fsm_state12;
wire   [31:0] v132_fu_689_p1;
wire   [31:0] v143_fu_694_p1;
wire   [31:0] v154_fu_699_p1;
wire   [31:0] v165_fu_704_p1;
wire   [31:0] v176_fu_709_p1;
wire   [31:0] v187_fu_714_p1;
wire   [31:0] v198_fu_719_p1;
wire   [31:0] v209_fu_724_p1;
wire   [15:0] mul_ln171_fu_729_p2;
reg   [15:0] mul_ln171_reg_1371;
wire   [15:0] mul_ln186_fu_734_p2;
reg   [15:0] mul_ln186_reg_1376;
wire   [15:0] mul_ln199_fu_739_p2;
reg   [15:0] mul_ln199_reg_1381;
wire   [15:0] mul_ln212_fu_744_p2;
reg   [15:0] mul_ln212_reg_1386;
wire   [15:0] mul_ln225_fu_749_p2;
reg   [15:0] mul_ln225_reg_1391;
wire   [15:0] mul_ln238_fu_754_p2;
reg   [15:0] mul_ln238_reg_1396;
wire   [15:0] mul_ln251_fu_759_p2;
reg   [15:0] mul_ln251_reg_1401;
wire   [15:0] mul_ln264_fu_764_p2;
reg   [15:0] mul_ln264_reg_1406;
wire   [15:0] mul_ln277_fu_769_p2;
reg   [15:0] mul_ln277_reg_1411;
wire   [15:0] v115_1_cast_fu_780_p1;
reg   [15:0] v115_1_cast_reg_1419;
wire    ap_CS_fsm_state18;
wire   [7:0] add_ln169_1_fu_784_p2;
reg   [7:0] add_ln169_1_reg_1425;
wire   [15:0] p_cast2227_fu_806_p1;
reg   [15:0] p_cast2227_reg_1430;
wire    ap_CS_fsm_state19;
wire   [15:0] p_cast2228_fu_816_p1;
reg   [15:0] p_cast2228_reg_1436;
wire   [15:0] p_cast2229_fu_826_p1;
reg   [15:0] p_cast2229_reg_1442;
wire    ap_CS_fsm_state20;
wire   [15:0] p_cast2230_fu_836_p1;
reg   [15:0] p_cast2230_reg_1448;
wire    ap_CS_fsm_state21;
wire   [15:0] p_cast2231_fu_850_p1;
reg   [15:0] p_cast2231_reg_1459;
wire   [15:0] p_cast2232_fu_860_p1;
reg   [15:0] p_cast2232_reg_1465;
wire   [15:0] p_cast2233_fu_878_p1;
reg   [15:0] p_cast2233_reg_1481;
wire   [15:0] p_cast2234_fu_888_p1;
reg   [15:0] p_cast2234_reg_1487;
wire   [31:0] v119_1_fu_916_p1;
wire    ap_CS_fsm_state27;
wire   [31:0] v132_1_fu_921_p1;
wire   [31:0] v143_1_fu_926_p1;
wire   [31:0] v154_1_fu_931_p1;
wire   [31:0] v165_1_fu_936_p1;
wire   [31:0] v176_1_fu_941_p1;
wire   [31:0] v187_1_fu_946_p1;
wire   [31:0] v198_1_fu_951_p1;
wire   [31:0] v209_1_fu_956_p1;
wire   [15:0] mul_ln171_1_fu_961_p2;
reg   [15:0] mul_ln171_1_reg_1568;
wire   [15:0] mul_ln186_1_fu_966_p2;
reg   [15:0] mul_ln186_1_reg_1573;
wire   [15:0] mul_ln199_1_fu_971_p2;
reg   [15:0] mul_ln199_1_reg_1578;
wire   [15:0] mul_ln212_1_fu_976_p2;
reg   [15:0] mul_ln212_1_reg_1583;
wire   [15:0] mul_ln225_1_fu_981_p2;
reg   [15:0] mul_ln225_1_reg_1588;
wire   [15:0] mul_ln238_1_fu_986_p2;
reg   [15:0] mul_ln238_1_reg_1593;
wire   [15:0] mul_ln251_1_fu_991_p2;
reg   [15:0] mul_ln251_1_reg_1598;
wire   [15:0] mul_ln264_1_fu_996_p2;
reg   [15:0] mul_ln264_1_reg_1603;
wire   [15:0] mul_ln277_1_fu_1001_p2;
reg   [15:0] mul_ln277_1_reg_1608;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_ready;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_0_ce0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_0_ce1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_2_ce0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_2_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_2_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1613_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1613_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1613_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1613_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_350_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_350_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_350_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_320_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_320_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_320_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_320_ap_ready;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v227_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v227_1_ce0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v227_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v227_1_ce1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v227_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v227_3_ce0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v227_3_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v227_3_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1613_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1613_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1613_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1613_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_350_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_350_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_350_p_ce;
reg   [7:0] v115_reg_265;
reg    ap_block_state2;
wire    ap_CS_fsm_state17;
reg   [7:0] v115_1_reg_277;
wire    ap_CS_fsm_state32;
wire   [0:0] icmp_ln169_fu_531_p2;
reg    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_start_reg;
wire    ap_CS_fsm_state16;
reg    grp_kernel_2mm_node1_Pipeline_label_53_fu_320_ap_start_reg;
wire    ap_CS_fsm_state31;
wire   [63:0] p_cast2235_fu_608_p1;
wire   [63:0] p_cast_fu_632_p1;
wire   [63:0] p_cast2236_fu_636_p1;
wire   [63:0] p_cast2237_fu_660_p1;
wire   [63:0] p_cast2238_fu_664_p1;
wire   [63:0] p_cast2239_fu_668_p1;
wire   [63:0] p_cast2240_fu_672_p1;
wire   [63:0] p_cast2241_fu_676_p1;
wire   [63:0] p_cast2242_fu_680_p1;
wire   [63:0] p_cast2243_fu_840_p1;
wire   [63:0] p_cast2244_fu_864_p1;
wire   [63:0] p_cast2245_fu_868_p1;
wire   [63:0] p_cast2246_fu_892_p1;
wire   [63:0] p_cast2247_fu_896_p1;
wire   [63:0] p_cast2248_fu_900_p1;
wire   [63:0] p_cast2249_fu_904_p1;
wire   [63:0] p_cast2250_fu_908_p1;
wire   [63:0] p_cast2251_fu_912_p1;
reg   [7:0] v114_fu_94;
wire   [7:0] add_ln168_fu_790_p2;
wire   [0:0] icmp_ln169_1_fu_774_p2;
reg    v236_write_local;
reg    v226_ce0_local;
reg   [15:0] v226_address0_local;
reg    v226_ce1_local;
reg   [15:0] v226_address1_local;
reg   [31:0] grp_fu_350_p0;
reg   [31:0] grp_fu_350_p1;
reg   [31:0] grp_fu_354_p0;
reg   [31:0] grp_fu_358_p0;
reg   [31:0] grp_fu_362_p0;
reg   [31:0] grp_fu_366_p0;
reg   [31:0] grp_fu_370_p0;
reg   [31:0] grp_fu_374_p0;
reg   [31:0] grp_fu_378_p0;
reg   [31:0] grp_fu_382_p0;
wire   [5:0] lshr_ln_fu_505_p4;
wire   [5:0] mul_ln175_fu_519_p0;
wire   [8:0] mul_ln175_fu_519_p1;
wire   [6:0] tmp_fu_547_p4;
wire   [7:0] or_ln_fu_556_p3;
wire   [7:0] empty_15_fu_568_p2;
wire   [7:0] empty_18_fu_578_p2;
wire   [7:0] empty_21_fu_588_p2;
wire   [7:0] empty_24_fu_598_p2;
wire   [15:0] grp_fu_1006_p3;
wire   [7:0] empty_27_fu_612_p2;
wire   [7:0] empty_30_fu_622_p2;
wire   [15:0] grp_fu_1014_p3;
wire   [15:0] grp_fu_1022_p3;
wire   [7:0] empty_33_fu_640_p2;
wire   [7:0] empty_36_fu_650_p2;
wire   [15:0] grp_fu_1030_p3;
wire   [15:0] grp_fu_1038_p3;
wire   [15:0] grp_fu_1046_p3;
wire   [15:0] grp_fu_1054_p3;
wire   [15:0] grp_fu_1062_p3;
wire   [15:0] grp_fu_1070_p3;
wire   [7:0] mul_ln171_fu_729_p0;
wire   [8:0] mul_ln171_fu_729_p1;
wire   [7:0] mul_ln186_fu_734_p0;
wire   [8:0] mul_ln186_fu_734_p1;
wire   [7:0] mul_ln199_fu_739_p0;
wire   [8:0] mul_ln199_fu_739_p1;
wire   [7:0] mul_ln212_fu_744_p0;
wire   [8:0] mul_ln212_fu_744_p1;
wire   [7:0] mul_ln225_fu_749_p0;
wire   [8:0] mul_ln225_fu_749_p1;
wire   [7:0] mul_ln238_fu_754_p0;
wire   [8:0] mul_ln238_fu_754_p1;
wire   [7:0] mul_ln251_fu_759_p0;
wire   [8:0] mul_ln251_fu_759_p1;
wire   [7:0] mul_ln264_fu_764_p0;
wire   [8:0] mul_ln264_fu_764_p1;
wire   [7:0] mul_ln277_fu_769_p0;
wire   [8:0] mul_ln277_fu_769_p1;
wire   [7:0] empty_41_fu_800_p2;
wire   [7:0] empty_44_fu_810_p2;
wire   [7:0] empty_47_fu_820_p2;
wire   [7:0] empty_50_fu_830_p2;
wire   [15:0] grp_fu_1078_p3;
wire   [7:0] empty_53_fu_844_p2;
wire   [7:0] empty_56_fu_854_p2;
wire   [15:0] grp_fu_1086_p3;
wire   [15:0] grp_fu_1094_p3;
wire   [7:0] empty_59_fu_872_p2;
wire   [7:0] empty_62_fu_882_p2;
wire   [15:0] grp_fu_1102_p3;
wire   [15:0] grp_fu_1110_p3;
wire   [15:0] grp_fu_1118_p3;
wire   [15:0] grp_fu_1126_p3;
wire   [15:0] grp_fu_1134_p3;
wire   [15:0] grp_fu_1142_p3;
wire   [7:0] mul_ln171_1_fu_961_p0;
wire   [8:0] mul_ln171_1_fu_961_p1;
wire   [7:0] mul_ln186_1_fu_966_p0;
wire   [8:0] mul_ln186_1_fu_966_p1;
wire   [7:0] mul_ln199_1_fu_971_p0;
wire   [8:0] mul_ln199_1_fu_971_p1;
wire   [7:0] mul_ln212_1_fu_976_p0;
wire   [8:0] mul_ln212_1_fu_976_p1;
wire   [7:0] mul_ln225_1_fu_981_p0;
wire   [8:0] mul_ln225_1_fu_981_p1;
wire   [7:0] mul_ln238_1_fu_986_p0;
wire   [8:0] mul_ln238_1_fu_986_p1;
wire   [7:0] mul_ln251_1_fu_991_p0;
wire   [8:0] mul_ln251_1_fu_991_p1;
wire   [7:0] mul_ln264_1_fu_996_p0;
wire   [8:0] mul_ln264_1_fu_996_p1;
wire   [7:0] mul_ln277_1_fu_1001_p0;
wire   [8:0] mul_ln277_1_fu_1001_p1;
wire   [7:0] grp_fu_1006_p0;
wire   [7:0] grp_fu_1006_p1;
wire   [7:0] grp_fu_1006_p2;
wire   [7:0] grp_fu_1014_p0;
wire   [7:0] grp_fu_1014_p1;
wire   [7:0] grp_fu_1014_p2;
wire   [7:0] grp_fu_1022_p0;
wire   [7:0] grp_fu_1022_p1;
wire   [7:0] grp_fu_1022_p2;
wire   [7:0] grp_fu_1030_p0;
wire   [7:0] grp_fu_1030_p1;
wire   [7:0] grp_fu_1030_p2;
wire   [7:0] grp_fu_1038_p0;
wire   [7:0] grp_fu_1038_p1;
wire   [7:0] grp_fu_1038_p2;
wire   [7:0] grp_fu_1046_p0;
wire   [7:0] grp_fu_1046_p1;
wire   [7:0] grp_fu_1046_p2;
wire   [7:0] grp_fu_1054_p0;
wire   [7:0] grp_fu_1054_p1;
wire   [7:0] grp_fu_1054_p2;
wire   [7:0] grp_fu_1062_p0;
wire   [7:0] grp_fu_1062_p1;
wire   [7:0] grp_fu_1062_p2;
wire   [7:0] grp_fu_1070_p0;
wire   [7:0] grp_fu_1070_p1;
wire   [7:0] grp_fu_1070_p2;
wire   [7:0] grp_fu_1078_p0;
wire   [7:0] grp_fu_1078_p1;
wire   [7:0] grp_fu_1078_p2;
wire   [7:0] grp_fu_1086_p0;
wire   [7:0] grp_fu_1086_p1;
wire   [7:0] grp_fu_1086_p2;
wire   [7:0] grp_fu_1094_p0;
wire   [7:0] grp_fu_1094_p1;
wire   [7:0] grp_fu_1094_p2;
wire   [7:0] grp_fu_1102_p0;
wire   [7:0] grp_fu_1102_p1;
wire   [7:0] grp_fu_1102_p2;
wire   [7:0] grp_fu_1110_p0;
wire   [7:0] grp_fu_1110_p1;
wire   [7:0] grp_fu_1110_p2;
wire   [7:0] grp_fu_1118_p0;
wire   [7:0] grp_fu_1118_p1;
wire   [7:0] grp_fu_1118_p2;
wire   [7:0] grp_fu_1126_p0;
wire   [7:0] grp_fu_1126_p1;
wire   [7:0] grp_fu_1126_p2;
wire   [7:0] grp_fu_1134_p0;
wire   [7:0] grp_fu_1134_p1;
wire   [7:0] grp_fu_1134_p2;
wire   [7:0] grp_fu_1142_p0;
wire   [7:0] grp_fu_1142_p1;
wire   [7:0] grp_fu_1142_p2;
reg    grp_fu_350_ce;
reg   [31:0] grp_fu_1613_p0;
reg   [31:0] grp_fu_1613_p1;
reg    grp_fu_1613_ce;
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
wire   [15:0] grp_fu_1006_p00;
wire   [15:0] grp_fu_1014_p00;
wire   [15:0] grp_fu_1022_p00;
wire   [15:0] grp_fu_1030_p00;
wire   [15:0] grp_fu_1038_p00;
wire   [15:0] grp_fu_1046_p00;
wire   [15:0] grp_fu_1054_p00;
wire   [15:0] grp_fu_1062_p00;
wire   [15:0] grp_fu_1070_p00;
wire   [15:0] grp_fu_1078_p00;
wire   [15:0] grp_fu_1086_p00;
wire   [15:0] grp_fu_1094_p00;
wire   [15:0] grp_fu_1102_p00;
wire   [15:0] grp_fu_1110_p00;
wire   [15:0] grp_fu_1118_p00;
wire   [15:0] grp_fu_1126_p00;
wire   [15:0] grp_fu_1134_p00;
wire   [15:0] grp_fu_1142_p00;
wire   [13:0] mul_ln175_fu_519_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 32'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_53_fu_320_ap_start_reg = 1'b0;
#0 v114_fu_94 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_5 grp_kernel_2mm_node1_Pipeline_label_5_fu_289(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_ready),.mul_ln175(mul_ln175_reg_1195),.v227_0_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_0_address0),.v227_0_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_0_ce0),.v227_0_q0(v227_0_q0),.v227_0_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_0_address1),.v227_0_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_0_ce1),.v227_0_q1(v227_0_q1),.v227_2_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_2_address0),.v227_2_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_2_ce0),.v227_2_q0(v227_2_q0),.v227_2_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_2_address1),.v227_2_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_2_ce1),.v227_2_q1(v227_2_q1),.mul_ln171(mul_ln171_reg_1371),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_d1),.v225_q1(v225_q1),.mul_ln186(mul_ln186_reg_1376),.mul_ln199(mul_ln199_reg_1381),.mul_ln212(mul_ln212_reg_1386),.mul_ln225(mul_ln225_reg_1391),.mul_ln238(mul_ln238_reg_1396),.mul_ln251(mul_ln251_reg_1401),.mul_ln264(mul_ln264_reg_1406),.mul_ln277(mul_ln277_reg_1411),.cmp11(cmp11_reg_1201),.empty(trunc_ln168_reg_1189),.v120(reg_429),.v133(reg_435),.v144(reg_441),.v155(reg_447),.v166(reg_453),.v177(reg_459),.v188(reg_465),.v199(reg_471),.v210(reg_477),.grp_fu_1613_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1613_p_din0),.grp_fu_1613_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1613_p_din1),.grp_fu_1613_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1613_p_opcode),.grp_fu_1613_p_dout0(grp_fu_144_p_dout0),.grp_fu_1613_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1613_p_ce),.grp_fu_350_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_350_p_din0),.grp_fu_350_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_350_p_din1),.grp_fu_350_p_dout0(grp_fu_148_p_dout0),.grp_fu_350_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_350_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_53 grp_kernel_2mm_node1_Pipeline_label_53_fu_320(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_ap_ready),.mul_ln175(mul_ln175_reg_1195),.v227_1_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v227_1_address0),.v227_1_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v227_1_ce0),.v227_1_q0(v227_1_q0),.v227_1_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v227_1_address1),.v227_1_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v227_1_ce1),.v227_1_q1(v227_1_q1),.v227_3_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v227_3_address0),.v227_3_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v227_3_ce0),.v227_3_q0(v227_3_q0),.v227_3_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v227_3_address1),.v227_3_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v227_3_ce1),.v227_3_q1(v227_3_q1),.mul_ln171_1(mul_ln171_1_reg_1568),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_d1),.v225_q1(v225_q1),.mul_ln186_1(mul_ln186_1_reg_1573),.mul_ln199_1(mul_ln199_1_reg_1578),.mul_ln212_1(mul_ln212_1_reg_1583),.mul_ln225_1(mul_ln225_1_reg_1588),.mul_ln238_1(mul_ln238_1_reg_1593),.mul_ln251_1(mul_ln251_1_reg_1598),.mul_ln264_1(mul_ln264_1_reg_1603),.mul_ln277_1(mul_ln277_1_reg_1608),.empty(trunc_ln168_reg_1189),.v120_1(reg_429),.v133_1(reg_435),.v144_1(reg_441),.v155_1(reg_447),.v166_1(reg_453),.v177_1(reg_459),.v188_1(reg_465),.v199_1(reg_471),.v210_1(reg_477),.grp_fu_1613_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1613_p_din0),.grp_fu_1613_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1613_p_din1),.grp_fu_1613_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1613_p_opcode),.grp_fu_1613_p_dout0(grp_fu_144_p_dout0),.grp_fu_1613_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1613_p_ce),.grp_fu_350_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_350_p_din0),.grp_fu_350_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_350_p_din1),.grp_fu_350_p_dout0(grp_fu_148_p_dout0),.grp_fu_350_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_350_p_ce));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U54(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_358_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_358_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U55(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_362_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_362_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U56(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_366_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_366_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U57(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_370_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_370_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U58(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_374_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_374_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U59(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_378_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_378_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U60(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_382_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_382_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U61(.din0(mul_ln175_fu_519_p0),.din1(mul_ln175_fu_519_p1),.dout(mul_ln175_fu_519_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U62(.din0(mul_ln171_fu_729_p0),.din1(mul_ln171_fu_729_p1),.dout(mul_ln171_fu_729_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U63(.din0(mul_ln186_fu_734_p0),.din1(mul_ln186_fu_734_p1),.dout(mul_ln186_fu_734_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U64(.din0(mul_ln199_fu_739_p0),.din1(mul_ln199_fu_739_p1),.dout(mul_ln199_fu_739_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U65(.din0(mul_ln212_fu_744_p0),.din1(mul_ln212_fu_744_p1),.dout(mul_ln212_fu_744_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U66(.din0(mul_ln225_fu_749_p0),.din1(mul_ln225_fu_749_p1),.dout(mul_ln225_fu_749_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U67(.din0(mul_ln238_fu_754_p0),.din1(mul_ln238_fu_754_p1),.dout(mul_ln238_fu_754_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U68(.din0(mul_ln251_fu_759_p0),.din1(mul_ln251_fu_759_p1),.dout(mul_ln251_fu_759_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U69(.din0(mul_ln264_fu_764_p0),.din1(mul_ln264_fu_764_p1),.dout(mul_ln264_fu_764_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U70(.din0(mul_ln277_fu_769_p0),.din1(mul_ln277_fu_769_p1),.dout(mul_ln277_fu_769_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U71(.din0(mul_ln171_1_fu_961_p0),.din1(mul_ln171_1_fu_961_p1),.dout(mul_ln171_1_fu_961_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U72(.din0(mul_ln186_1_fu_966_p0),.din1(mul_ln186_1_fu_966_p1),.dout(mul_ln186_1_fu_966_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U73(.din0(mul_ln199_1_fu_971_p0),.din1(mul_ln199_1_fu_971_p1),.dout(mul_ln199_1_fu_971_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U74(.din0(mul_ln212_1_fu_976_p0),.din1(mul_ln212_1_fu_976_p1),.dout(mul_ln212_1_fu_976_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U75(.din0(mul_ln225_1_fu_981_p0),.din1(mul_ln225_1_fu_981_p1),.dout(mul_ln225_1_fu_981_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U76(.din0(mul_ln238_1_fu_986_p0),.din1(mul_ln238_1_fu_986_p1),.dout(mul_ln238_1_fu_986_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U77(.din0(mul_ln251_1_fu_991_p0),.din1(mul_ln251_1_fu_991_p1),.dout(mul_ln251_1_fu_991_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U78(.din0(mul_ln264_1_fu_996_p0),.din1(mul_ln264_1_fu_996_p1),.dout(mul_ln264_1_fu_996_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U79(.din0(mul_ln277_1_fu_1001_p0),.din1(mul_ln277_1_fu_1001_p1),.dout(mul_ln277_1_fu_1001_p2));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U80(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1006_p0),.din1(grp_fu_1006_p1),.din2(grp_fu_1006_p2),.ce(1'b1),.dout(grp_fu_1006_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U81(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1014_p0),.din1(grp_fu_1014_p1),.din2(grp_fu_1014_p2),.ce(1'b1),.dout(grp_fu_1014_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U82(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1022_p0),.din1(grp_fu_1022_p1),.din2(grp_fu_1022_p2),.ce(1'b1),.dout(grp_fu_1022_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U83(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1030_p0),.din1(grp_fu_1030_p1),.din2(grp_fu_1030_p2),.ce(1'b1),.dout(grp_fu_1030_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U84(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1038_p0),.din1(grp_fu_1038_p1),.din2(grp_fu_1038_p2),.ce(1'b1),.dout(grp_fu_1038_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U85(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1046_p0),.din1(grp_fu_1046_p1),.din2(grp_fu_1046_p2),.ce(1'b1),.dout(grp_fu_1046_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U86(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1054_p0),.din1(grp_fu_1054_p1),.din2(grp_fu_1054_p2),.ce(1'b1),.dout(grp_fu_1054_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U87(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1062_p0),.din1(grp_fu_1062_p1),.din2(grp_fu_1062_p2),.ce(1'b1),.dout(grp_fu_1062_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U88(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1070_p0),.din1(grp_fu_1070_p1),.din2(grp_fu_1070_p2),.ce(1'b1),.dout(grp_fu_1070_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U89(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1078_p0),.din1(grp_fu_1078_p1),.din2(grp_fu_1078_p2),.ce(1'b1),.dout(grp_fu_1078_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U90(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1086_p0),.din1(grp_fu_1086_p1),.din2(grp_fu_1086_p2),.ce(1'b1),.dout(grp_fu_1086_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U91(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1094_p0),.din1(grp_fu_1094_p1),.din2(grp_fu_1094_p2),.ce(1'b1),.dout(grp_fu_1094_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U92(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1102_p0),.din1(grp_fu_1102_p1),.din2(grp_fu_1102_p2),.ce(1'b1),.dout(grp_fu_1102_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U93(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1110_p0),.din1(grp_fu_1110_p1),.din2(grp_fu_1110_p2),.ce(1'b1),.dout(grp_fu_1110_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U94(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1118_p0),.din1(grp_fu_1118_p1),.din2(grp_fu_1118_p2),.ce(1'b1),.dout(grp_fu_1118_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U95(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1126_p0),.din1(grp_fu_1126_p1),.din2(grp_fu_1126_p2),.ce(1'b1),.dout(grp_fu_1126_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U96(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1134_p0),.din1(grp_fu_1134_p1),.din2(grp_fu_1134_p2),.ce(1'b1),.dout(grp_fu_1134_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U97(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1142_p0),.din1(grp_fu_1142_p1),.din2(grp_fu_1142_p2),.ce(1'b1),.dout(grp_fu_1142_p3));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_53_fu_320_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state31)) begin
            grp_kernel_2mm_node1_Pipeline_label_53_fu_320_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_53_fu_320_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_53_fu_320_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        reg_386 <= v226_q1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        reg_386 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        reg_399 <= v226_q1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        reg_399 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        reg_404 <= v226_q0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        reg_404 <= v226_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        reg_409 <= v226_q1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        reg_409 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        reg_414 <= v226_q0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        reg_414 <= v226_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        reg_419 <= v226_q1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        reg_419 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        reg_424 <= v226_q0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        reg_424 <= v226_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_94 <= 8'd0;
    end else if (((icmp_ln169_1_fu_774_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state18))) begin
        v114_fu_94 <= add_ln168_fu_790_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln169_fu_531_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v115_1_reg_277 <= 8'd0;
    end else if (((grp_kernel_2mm_node1_Pipeline_label_53_fu_320_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state32))) begin
        v115_1_reg_277 <= add_ln169_1_reg_1425;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        v115_reg_265 <= add_ln169_reg_1215;
    end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_491_p2 == 1'd1))) begin
        v115_reg_265 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        add_ln169_1_reg_1425 <= add_ln169_1_fu_784_p2;
        v115_1_cast_reg_1419[7 : 0] <= v115_1_cast_fu_780_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln169_reg_1215 <= add_ln169_fu_541_p2;
        v115_cast_reg_1209[7 : 0] <= v115_cast_fu_537_p1[7 : 0];
        zext_ln169_reg_1220[7 : 1] <= zext_ln169_fu_564_p1[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cmp11_reg_1201 <= cmp11_fu_525_p2;
        mul_ln175_reg_1195 <= mul_ln175_fu_519_p2;
        trunc_ln168_reg_1189 <= trunc_ln168_fu_501_p1;
        zext_ln168_reg_1176[7 : 0] <= zext_ln168_fu_497_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        mul_ln171_1_reg_1568 <= mul_ln171_1_fu_961_p2;
        mul_ln186_1_reg_1573 <= mul_ln186_1_fu_966_p2;
        mul_ln199_1_reg_1578 <= mul_ln199_1_fu_971_p2;
        mul_ln212_1_reg_1583 <= mul_ln212_1_fu_976_p2;
        mul_ln225_1_reg_1588 <= mul_ln225_1_fu_981_p2;
        mul_ln238_1_reg_1593 <= mul_ln238_1_fu_986_p2;
        mul_ln251_1_reg_1598 <= mul_ln251_1_fu_991_p2;
        mul_ln264_1_reg_1603 <= mul_ln264_1_fu_996_p2;
        mul_ln277_1_reg_1608 <= mul_ln277_1_fu_1001_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln171_reg_1371 <= mul_ln171_fu_729_p2;
        mul_ln186_reg_1376 <= mul_ln186_fu_734_p2;
        mul_ln199_reg_1381 <= mul_ln199_fu_739_p2;
        mul_ln212_reg_1386 <= mul_ln212_fu_744_p2;
        mul_ln225_reg_1391 <= mul_ln225_fu_749_p2;
        mul_ln238_reg_1396 <= mul_ln238_fu_754_p2;
        mul_ln251_reg_1401 <= mul_ln251_fu_759_p2;
        mul_ln264_reg_1406 <= mul_ln264_fu_764_p2;
        mul_ln277_reg_1411 <= mul_ln277_fu_769_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        p_cast2219_reg_1233[7 : 0] <= p_cast2219_fu_574_p1[7 : 0];
        p_cast2220_reg_1239[7 : 0] <= p_cast2220_fu_584_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        p_cast2221_reg_1245[7 : 0] <= p_cast2221_fu_594_p1[7 : 0];
        p_cast2222_reg_1251[7 : 0] <= p_cast2222_fu_604_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        p_cast2223_reg_1262[7 : 0] <= p_cast2223_fu_618_p1[7 : 0];
        p_cast2224_reg_1268[7 : 0] <= p_cast2224_fu_628_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        p_cast2225_reg_1284[7 : 0] <= p_cast2225_fu_646_p1[7 : 0];
        p_cast2226_reg_1290[7 : 0] <= p_cast2226_fu_656_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        p_cast2227_reg_1430[7 : 0] <= p_cast2227_fu_806_p1[7 : 0];
        p_cast2228_reg_1436[7 : 0] <= p_cast2228_fu_816_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        p_cast2229_reg_1442[7 : 0] <= p_cast2229_fu_826_p1[7 : 0];
        p_cast2230_reg_1448[7 : 0] <= p_cast2230_fu_836_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        p_cast2231_reg_1459[7 : 0] <= p_cast2231_fu_850_p1[7 : 0];
        p_cast2232_reg_1465[7 : 0] <= p_cast2232_fu_860_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        p_cast2233_reg_1481[7 : 0] <= p_cast2233_fu_878_p1[7 : 0];
        p_cast2234_reg_1487[7 : 0] <= p_cast2234_fu_888_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_391 <= v226_q1;
        reg_395 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state15))) begin
        reg_429 <= grp_fu_148_p_dout0;
        reg_435 <= grp_fu_152_p_dout0;
        reg_441 <= grp_fu_358_p2;
        reg_447 <= grp_fu_362_p2;
        reg_453 <= grp_fu_366_p2;
        reg_459 <= grp_fu_370_p2;
        reg_465 <= grp_fu_374_p2;
        reg_471 <= grp_fu_378_p2;
        reg_477 <= grp_fu_382_p2;
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
    if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_done == 1'b0)) begin
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
    if ((grp_kernel_2mm_node1_Pipeline_label_53_fu_320_ap_done == 1'b0)) begin
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
    if ((((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_491_p2 == 1'd0)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_491_p2 == 1'd0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1613_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1613_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1613_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1613_p_ce;
    end else begin
        grp_fu_1613_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1613_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1613_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1613_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1613_p_din0;
    end else begin
        grp_fu_1613_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1613_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1613_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1613_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1613_p_din1;
    end else begin
        grp_fu_1613_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_350_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_350_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_350_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_350_p_ce;
    end else begin
        grp_fu_350_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_350_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_350_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_350_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_350_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_350_p0 = v119_1_fu_916_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_350_p0 = v119_fu_684_p1;
    end else begin
        grp_fu_350_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_350_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_350_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_350_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_350_p_din1;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state12))) begin
        grp_fu_350_p1 = v113;
    end else begin
        grp_fu_350_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_354_p0 = v132_1_fu_921_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_354_p0 = v132_fu_689_p1;
    end else begin
        grp_fu_354_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_358_p0 = v143_1_fu_926_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_358_p0 = v143_fu_694_p1;
    end else begin
        grp_fu_358_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_362_p0 = v154_1_fu_931_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_362_p0 = v154_fu_699_p1;
    end else begin
        grp_fu_362_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_366_p0 = v165_1_fu_936_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_366_p0 = v165_fu_704_p1;
    end else begin
        grp_fu_366_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_370_p0 = v176_1_fu_941_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_370_p0 = v176_fu_709_p1;
    end else begin
        grp_fu_370_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_374_p0 = v187_1_fu_946_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_374_p0 = v187_fu_714_p1;
    end else begin
        grp_fu_374_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_378_p0 = v198_1_fu_951_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_378_p0 = v198_fu_719_p1;
    end else begin
        grp_fu_378_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_382_p0 = v209_1_fu_956_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_382_p0 = v209_fu_724_p1;
    end else begin
        grp_fu_382_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_address0;
    end else begin
        v225_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_address1;
    end else begin
        v225_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_ce0;
    end else begin
        v225_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_ce1;
    end else begin
        v225_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_d0;
    end else begin
        v225_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_d1;
    end else begin
        v225_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_we0;
    end else begin
        v225_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_we1;
    end else begin
        v225_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        v226_address0_local = p_cast2251_fu_912_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        v226_address0_local = p_cast2249_fu_904_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        v226_address0_local = p_cast2247_fu_896_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v226_address0_local = p_cast2245_fu_868_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_address0_local = p_cast2241_fu_676_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_address0_local = p_cast2239_fu_668_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_address0_local = p_cast2237_fu_660_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_address0_local = p_cast2236_fu_636_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_address0_local = p_cast2235_fu_608_p1;
    end else begin
        v226_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        v226_address1_local = p_cast2250_fu_908_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        v226_address1_local = p_cast2248_fu_900_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        v226_address1_local = p_cast2246_fu_892_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v226_address1_local = p_cast2244_fu_864_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v226_address1_local = p_cast2243_fu_840_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_address1_local = p_cast2242_fu_680_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_address1_local = p_cast2240_fu_672_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_address1_local = p_cast2238_fu_664_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_address1_local = p_cast_fu_632_p1;
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
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_491_p2 == 1'd0))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_491_p2 == 1'd0))) begin
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
            if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_491_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_491_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln169_fu_531_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        ap_ST_fsm_state18 : begin
            if (((icmp_ln169_1_fu_774_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state18))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_53_fu_320_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state32))) begin
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
assign add_ln168_fu_790_p2 = (v114_fu_94 + 8'd2);
assign add_ln169_1_fu_784_p2 = (v115_1_reg_277 + 8'd9);
assign add_ln169_fu_541_p2 = (v115_reg_265 + 8'd9);
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
    ap_block_state2 = ((v236_full_n == 1'b0) & (icmp_ln168_fu_491_p2 == 1'd0));
end
assign cmp11_fu_525_p2 = ((v114_fu_94 == 8'd0) ? 1'b1 : 1'b0);
assign empty_15_fu_568_p2 = (v115_reg_265 + 8'd1);
assign empty_18_fu_578_p2 = (v115_reg_265 + 8'd2);
assign empty_21_fu_588_p2 = (v115_reg_265 + 8'd3);
assign empty_24_fu_598_p2 = (v115_reg_265 + 8'd4);
assign empty_27_fu_612_p2 = (v115_reg_265 + 8'd5);
assign empty_30_fu_622_p2 = (v115_reg_265 + 8'd6);
assign empty_33_fu_640_p2 = (v115_reg_265 + 8'd7);
assign empty_36_fu_650_p2 = (v115_reg_265 + 8'd8);
assign empty_41_fu_800_p2 = (v115_1_reg_277 + 8'd1);
assign empty_44_fu_810_p2 = (v115_1_reg_277 + 8'd2);
assign empty_47_fu_820_p2 = (v115_1_reg_277 + 8'd3);
assign empty_50_fu_830_p2 = (v115_1_reg_277 + 8'd4);
assign empty_53_fu_844_p2 = (v115_1_reg_277 + 8'd5);
assign empty_56_fu_854_p2 = (v115_1_reg_277 + 8'd6);
assign empty_59_fu_872_p2 = (v115_1_reg_277 + 8'd7);
assign empty_62_fu_882_p2 = (v115_1_reg_277 + 8'd8);
assign grp_fu_1006_p0 = grp_fu_1006_p00;
assign grp_fu_1006_p00 = v115_reg_265;
assign grp_fu_1006_p1 = 16'd210;
assign grp_fu_1006_p2 = zext_ln168_reg_1176;
assign grp_fu_1014_p0 = grp_fu_1014_p00;
assign grp_fu_1014_p00 = empty_15_fu_568_p2;
assign grp_fu_1014_p1 = 16'd210;
assign grp_fu_1014_p2 = zext_ln168_reg_1176;
assign grp_fu_1022_p0 = grp_fu_1022_p00;
assign grp_fu_1022_p00 = empty_18_fu_578_p2;
assign grp_fu_1022_p1 = 16'd210;
assign grp_fu_1022_p2 = zext_ln168_reg_1176;
assign grp_fu_1030_p0 = grp_fu_1030_p00;
assign grp_fu_1030_p00 = empty_21_fu_588_p2;
assign grp_fu_1030_p1 = 16'd210;
assign grp_fu_1030_p2 = zext_ln168_reg_1176;
assign grp_fu_1038_p0 = grp_fu_1038_p00;
assign grp_fu_1038_p00 = empty_24_fu_598_p2;
assign grp_fu_1038_p1 = 16'd210;
assign grp_fu_1038_p2 = zext_ln168_reg_1176;
assign grp_fu_1046_p0 = grp_fu_1046_p00;
assign grp_fu_1046_p00 = empty_27_fu_612_p2;
assign grp_fu_1046_p1 = 16'd210;
assign grp_fu_1046_p2 = zext_ln168_reg_1176;
assign grp_fu_1054_p0 = grp_fu_1054_p00;
assign grp_fu_1054_p00 = empty_30_fu_622_p2;
assign grp_fu_1054_p1 = 16'd210;
assign grp_fu_1054_p2 = zext_ln168_reg_1176;
assign grp_fu_1062_p0 = grp_fu_1062_p00;
assign grp_fu_1062_p00 = empty_33_fu_640_p2;
assign grp_fu_1062_p1 = 16'd210;
assign grp_fu_1062_p2 = zext_ln168_reg_1176;
assign grp_fu_1070_p0 = grp_fu_1070_p00;
assign grp_fu_1070_p00 = empty_36_fu_650_p2;
assign grp_fu_1070_p1 = 16'd210;
assign grp_fu_1070_p2 = zext_ln168_reg_1176;
assign grp_fu_1078_p0 = grp_fu_1078_p00;
assign grp_fu_1078_p00 = v115_1_reg_277;
assign grp_fu_1078_p1 = 16'd210;
assign grp_fu_1078_p2 = zext_ln169_reg_1220;
assign grp_fu_1086_p0 = grp_fu_1086_p00;
assign grp_fu_1086_p00 = empty_41_fu_800_p2;
assign grp_fu_1086_p1 = 16'd210;
assign grp_fu_1086_p2 = zext_ln169_reg_1220;
assign grp_fu_1094_p0 = grp_fu_1094_p00;
assign grp_fu_1094_p00 = empty_44_fu_810_p2;
assign grp_fu_1094_p1 = 16'd210;
assign grp_fu_1094_p2 = zext_ln169_reg_1220;
assign grp_fu_1102_p0 = grp_fu_1102_p00;
assign grp_fu_1102_p00 = empty_47_fu_820_p2;
assign grp_fu_1102_p1 = 16'd210;
assign grp_fu_1102_p2 = zext_ln169_reg_1220;
assign grp_fu_1110_p0 = grp_fu_1110_p00;
assign grp_fu_1110_p00 = empty_50_fu_830_p2;
assign grp_fu_1110_p1 = 16'd210;
assign grp_fu_1110_p2 = zext_ln169_reg_1220;
assign grp_fu_1118_p0 = grp_fu_1118_p00;
assign grp_fu_1118_p00 = empty_53_fu_844_p2;
assign grp_fu_1118_p1 = 16'd210;
assign grp_fu_1118_p2 = zext_ln169_reg_1220;
assign grp_fu_1126_p0 = grp_fu_1126_p00;
assign grp_fu_1126_p00 = empty_56_fu_854_p2;
assign grp_fu_1126_p1 = 16'd210;
assign grp_fu_1126_p2 = zext_ln169_reg_1220;
assign grp_fu_1134_p0 = grp_fu_1134_p00;
assign grp_fu_1134_p00 = empty_59_fu_872_p2;
assign grp_fu_1134_p1 = 16'd210;
assign grp_fu_1134_p2 = zext_ln169_reg_1220;
assign grp_fu_1142_p0 = grp_fu_1142_p00;
assign grp_fu_1142_p00 = empty_62_fu_882_p2;
assign grp_fu_1142_p1 = 16'd210;
assign grp_fu_1142_p2 = zext_ln169_reg_1220;
assign grp_fu_144_p_ce = grp_fu_1613_ce;
assign grp_fu_144_p_din0 = grp_fu_1613_p0;
assign grp_fu_144_p_din1 = grp_fu_1613_p1;
assign grp_fu_144_p_opcode = 2'd0;
assign grp_fu_148_p_ce = grp_fu_350_ce;
assign grp_fu_148_p_din0 = grp_fu_350_p0;
assign grp_fu_148_p_din1 = grp_fu_350_p1;
assign grp_fu_152_p_ce = 1'b1;
assign grp_fu_152_p_din0 = grp_fu_354_p0;
assign grp_fu_152_p_din1 = v113;
assign grp_kernel_2mm_node1_Pipeline_label_53_fu_320_ap_start = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_start = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_start_reg;
assign icmp_ln168_fu_491_p2 = ((v114_fu_94 < 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln169_1_fu_774_p2 = ((v115_1_reg_277 < 8'd180) ? 1'b1 : 1'b0);
assign icmp_ln169_fu_531_p2 = ((v115_reg_265 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln_fu_505_p4 = {{v114_fu_94[7:2]}};
assign mul_ln171_1_fu_961_p0 = v115_1_cast_reg_1419;
assign mul_ln171_1_fu_961_p1 = 16'd190;
assign mul_ln171_fu_729_p0 = v115_cast_reg_1209;
assign mul_ln171_fu_729_p1 = 16'd190;
assign mul_ln175_fu_519_p0 = mul_ln175_fu_519_p00;
assign mul_ln175_fu_519_p00 = lshr_ln_fu_505_p4;
assign mul_ln175_fu_519_p1 = 14'd190;
assign mul_ln186_1_fu_966_p0 = p_cast2227_reg_1430;
assign mul_ln186_1_fu_966_p1 = 16'd190;
assign mul_ln186_fu_734_p0 = p_cast2219_reg_1233;
assign mul_ln186_fu_734_p1 = 16'd190;
assign mul_ln199_1_fu_971_p0 = p_cast2228_reg_1436;
assign mul_ln199_1_fu_971_p1 = 16'd190;
assign mul_ln199_fu_739_p0 = p_cast2220_reg_1239;
assign mul_ln199_fu_739_p1 = 16'd190;
assign mul_ln212_1_fu_976_p0 = p_cast2229_reg_1442;
assign mul_ln212_1_fu_976_p1 = 16'd190;
assign mul_ln212_fu_744_p0 = p_cast2221_reg_1245;
assign mul_ln212_fu_744_p1 = 16'd190;
assign mul_ln225_1_fu_981_p0 = p_cast2230_reg_1448;
assign mul_ln225_1_fu_981_p1 = 16'd190;
assign mul_ln225_fu_749_p0 = p_cast2222_reg_1251;
assign mul_ln225_fu_749_p1 = 16'd190;
assign mul_ln238_1_fu_986_p0 = p_cast2231_reg_1459;
assign mul_ln238_1_fu_986_p1 = 16'd190;
assign mul_ln238_fu_754_p0 = p_cast2223_reg_1262;
assign mul_ln238_fu_754_p1 = 16'd190;
assign mul_ln251_1_fu_991_p0 = p_cast2232_reg_1465;
assign mul_ln251_1_fu_991_p1 = 16'd190;
assign mul_ln251_fu_759_p0 = p_cast2224_reg_1268;
assign mul_ln251_fu_759_p1 = 16'd190;
assign mul_ln264_1_fu_996_p0 = p_cast2233_reg_1481;
assign mul_ln264_1_fu_996_p1 = 16'd190;
assign mul_ln264_fu_764_p0 = p_cast2225_reg_1284;
assign mul_ln264_fu_764_p1 = 16'd190;
assign mul_ln277_1_fu_1001_p0 = p_cast2234_reg_1487;
assign mul_ln277_1_fu_1001_p1 = 16'd190;
assign mul_ln277_fu_769_p0 = p_cast2226_reg_1290;
assign mul_ln277_fu_769_p1 = 16'd190;
assign or_ln_fu_556_p3 = {{tmp_fu_547_p4}, {1'd1}};
assign p_cast2219_fu_574_p1 = empty_15_fu_568_p2;
assign p_cast2220_fu_584_p1 = empty_18_fu_578_p2;
assign p_cast2221_fu_594_p1 = empty_21_fu_588_p2;
assign p_cast2222_fu_604_p1 = empty_24_fu_598_p2;
assign p_cast2223_fu_618_p1 = empty_27_fu_612_p2;
assign p_cast2224_fu_628_p1 = empty_30_fu_622_p2;
assign p_cast2225_fu_646_p1 = empty_33_fu_640_p2;
assign p_cast2226_fu_656_p1 = empty_36_fu_650_p2;
assign p_cast2227_fu_806_p1 = empty_41_fu_800_p2;
assign p_cast2228_fu_816_p1 = empty_44_fu_810_p2;
assign p_cast2229_fu_826_p1 = empty_47_fu_820_p2;
assign p_cast2230_fu_836_p1 = empty_50_fu_830_p2;
assign p_cast2231_fu_850_p1 = empty_53_fu_844_p2;
assign p_cast2232_fu_860_p1 = empty_56_fu_854_p2;
assign p_cast2233_fu_878_p1 = empty_59_fu_872_p2;
assign p_cast2234_fu_888_p1 = empty_62_fu_882_p2;
assign p_cast2235_fu_608_p1 = grp_fu_1006_p3;
assign p_cast2236_fu_636_p1 = grp_fu_1022_p3;
assign p_cast2237_fu_660_p1 = grp_fu_1030_p3;
assign p_cast2238_fu_664_p1 = grp_fu_1038_p3;
assign p_cast2239_fu_668_p1 = grp_fu_1046_p3;
assign p_cast2240_fu_672_p1 = grp_fu_1054_p3;
assign p_cast2241_fu_676_p1 = grp_fu_1062_p3;
assign p_cast2242_fu_680_p1 = grp_fu_1070_p3;
assign p_cast2243_fu_840_p1 = grp_fu_1078_p3;
assign p_cast2244_fu_864_p1 = grp_fu_1086_p3;
assign p_cast2245_fu_868_p1 = grp_fu_1094_p3;
assign p_cast2246_fu_892_p1 = grp_fu_1102_p3;
assign p_cast2247_fu_896_p1 = grp_fu_1110_p3;
assign p_cast2248_fu_900_p1 = grp_fu_1118_p3;
assign p_cast2249_fu_904_p1 = grp_fu_1126_p3;
assign p_cast2250_fu_908_p1 = grp_fu_1134_p3;
assign p_cast2251_fu_912_p1 = grp_fu_1142_p3;
assign p_cast_fu_632_p1 = grp_fu_1014_p3;
assign tmp_fu_547_p4 = {{v114_fu_94[7:1]}};
assign trunc_ln168_fu_501_p1 = v114_fu_94[1:0];
assign v115_1_cast_fu_780_p1 = v115_1_reg_277;
assign v115_cast_fu_537_p1 = v115_reg_265;
assign v119_1_fu_916_p1 = reg_386;
assign v119_fu_684_p1 = reg_386;
assign v132_1_fu_921_p1 = reg_391;
assign v132_fu_689_p1 = reg_391;
assign v143_1_fu_926_p1 = reg_395;
assign v143_fu_694_p1 = reg_395;
assign v154_1_fu_931_p1 = reg_399;
assign v154_fu_699_p1 = reg_399;
assign v165_1_fu_936_p1 = reg_404;
assign v165_fu_704_p1 = reg_404;
assign v176_1_fu_941_p1 = reg_409;
assign v176_fu_709_p1 = reg_409;
assign v187_1_fu_946_p1 = reg_414;
assign v187_fu_714_p1 = reg_414;
assign v198_1_fu_951_p1 = reg_419;
assign v198_fu_719_p1 = reg_419;
assign v209_1_fu_956_p1 = reg_424;
assign v209_fu_724_p1 = reg_424;
assign v226_address0 = v226_address0_local;
assign v226_address1 = v226_address1_local;
assign v226_ce0 = v226_ce0_local;
assign v226_ce1 = v226_ce1_local;
assign v227_0_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_0_address0;
assign v227_0_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_0_address1;
assign v227_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_0_ce0;
assign v227_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_0_ce1;
assign v227_1_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v227_1_address0;
assign v227_1_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v227_1_address1;
assign v227_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v227_1_ce0;
assign v227_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v227_1_ce1;
assign v227_2_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_2_address0;
assign v227_2_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_2_address1;
assign v227_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_2_ce0;
assign v227_2_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_2_ce1;
assign v227_3_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v227_3_address0;
assign v227_3_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v227_3_address1;
assign v227_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v227_3_ce0;
assign v227_3_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v227_3_ce1;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
assign zext_ln168_fu_497_p1 = v114_fu_94;
assign zext_ln169_fu_564_p1 = or_ln_fu_556_p3;
always @ (posedge ap_clk) begin
    zext_ln168_reg_1176[15:8] <= 8'b00000000;
    v115_cast_reg_1209[15:8] <= 8'b00000000;
    zext_ln169_reg_1220[0] <= 1'b1;
    zext_ln169_reg_1220[15:8] <= 8'b00000000;
    p_cast2219_reg_1233[15:8] <= 8'b00000000;
    p_cast2220_reg_1239[15:8] <= 8'b00000000;
    p_cast2221_reg_1245[15:8] <= 8'b00000000;
    p_cast2222_reg_1251[15:8] <= 8'b00000000;
    p_cast2223_reg_1262[15:8] <= 8'b00000000;
    p_cast2224_reg_1268[15:8] <= 8'b00000000;
    p_cast2225_reg_1284[15:8] <= 8'b00000000;
    p_cast2226_reg_1290[15:8] <= 8'b00000000;
    v115_1_cast_reg_1419[15:8] <= 8'b00000000;
    p_cast2227_reg_1430[15:8] <= 8'b00000000;
    p_cast2228_reg_1436[15:8] <= 8'b00000000;
    p_cast2229_reg_1442[15:8] <= 8'b00000000;
    p_cast2230_reg_1448[15:8] <= 8'b00000000;
    p_cast2231_reg_1459[15:8] <= 8'b00000000;
    p_cast2232_reg_1465[15:8] <= 8'b00000000;
    p_cast2233_reg_1481[15:8] <= 8'b00000000;
    p_cast2234_reg_1487[15:8] <= 8'b00000000;
end
endmodule 