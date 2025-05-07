module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_address0,v224_ce0,v224_q0,v224_address1,v224_ce1,v224_q1,v228_address0,v228_ce0,v228_q0,v228_address1,v228_ce1,v228_q1,v229_address0,v229_ce0,v229_we0,v229_d0,v229_q0,v229_address1,v229_ce1,v229_we1,v229_d1,v229_q1,v4,grp_fu_120_p_din0,grp_fu_120_p_din1,grp_fu_120_p_opcode,grp_fu_120_p_dout0,grp_fu_120_p_ce,grp_fu_124_p_din0,grp_fu_124_p_din1,grp_fu_124_p_dout0,grp_fu_124_p_ce,grp_fu_128_p_din0,grp_fu_128_p_din1,grp_fu_128_p_dout0,grp_fu_128_p_ce); 
parameter    ap_ST_fsm_state1 = 17'd1;
parameter    ap_ST_fsm_state2 = 17'd2;
parameter    ap_ST_fsm_state3 = 17'd4;
parameter    ap_ST_fsm_state4 = 17'd8;
parameter    ap_ST_fsm_state5 = 17'd16;
parameter    ap_ST_fsm_state6 = 17'd32;
parameter    ap_ST_fsm_state7 = 17'd64;
parameter    ap_ST_fsm_state8 = 17'd128;
parameter    ap_ST_fsm_state9 = 17'd256;
parameter    ap_ST_fsm_state10 = 17'd512;
parameter    ap_ST_fsm_state11 = 17'd1024;
parameter    ap_ST_fsm_state12 = 17'd2048;
parameter    ap_ST_fsm_state13 = 17'd4096;
parameter    ap_ST_fsm_state14 = 17'd8192;
parameter    ap_ST_fsm_state15 = 17'd16384;
parameter    ap_ST_fsm_state16 = 17'd32768;
parameter    ap_ST_fsm_state17 = 17'd65536;
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
output  [15:0] v229_address0;
output   v229_ce0;
output   v229_we0;
output  [31:0] v229_d0;
input  [31:0] v229_q0;
output  [15:0] v229_address1;
output   v229_ce1;
output   v229_we1;
output  [31:0] v229_d1;
input  [31:0] v229_q1;
input  [31:0] v4;
output  [31:0] grp_fu_120_p_din0;
output  [31:0] grp_fu_120_p_din1;
output  [1:0] grp_fu_120_p_opcode;
input  [31:0] grp_fu_120_p_dout0;
output   grp_fu_120_p_ce;
output  [31:0] grp_fu_124_p_din0;
output  [31:0] grp_fu_124_p_din1;
input  [31:0] grp_fu_124_p_dout0;
output   grp_fu_124_p_ce;
output  [31:0] grp_fu_128_p_din0;
output  [31:0] grp_fu_128_p_din1;
input  [31:0] grp_fu_128_p_dout0;
output   grp_fu_128_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[15:0] v228_address0;
reg v228_ce0;
reg[15:0] v228_address1;
reg v228_ce1;
reg[15:0] v229_address0;
reg v229_ce0;
reg v229_we0;
reg[31:0] v229_d0;
reg[15:0] v229_address1;
reg v229_ce1;
reg v229_we1;
reg[31:0] v229_d1;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
reg   [31:0] reg_345;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state12;
reg   [31:0] reg_349;
reg   [31:0] reg_353;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state13;
reg   [31:0] reg_357;
reg   [31:0] reg_361;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state14;
reg   [31:0] reg_365;
reg   [31:0] reg_369;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state15;
reg   [31:0] reg_373;
reg   [15:0] phi_mul_load_reg_1041;
wire    ap_CS_fsm_state2;
wire   [15:0] add_ln31_1_fu_393_p2;
reg   [15:0] add_ln31_1_reg_1047;
wire   [7:0] add_ln31_fu_405_p2;
reg   [7:0] add_ln31_reg_1055;
wire   [15:0] zext_ln31_fu_411_p1;
reg   [15:0] zext_ln31_reg_1060;
wire   [0:0] cmp11_fu_415_p2;
reg   [0:0] cmp11_reg_1082;
wire   [15:0] v6_cast_fu_427_p1;
reg   [15:0] v6_cast_reg_1091;
wire    ap_CS_fsm_state3;
wire   [15:0] tmp_1_cast_fu_449_p1;
reg   [15:0] tmp_1_cast_reg_1097;
wire   [7:0] add_ln32_1_fu_453_p2;
reg   [7:0] add_ln32_1_reg_1103;
wire   [15:0] p_cast346_fu_473_p1;
reg   [15:0] p_cast346_reg_1108;
wire    ap_CS_fsm_state4;
wire   [15:0] p_cast347_fu_483_p1;
reg   [15:0] p_cast347_reg_1114;
wire   [15:0] p_cast348_fu_493_p1;
reg   [15:0] p_cast348_reg_1120;
wire    ap_CS_fsm_state5;
wire   [15:0] p_cast349_fu_503_p1;
reg   [15:0] p_cast349_reg_1126;
wire    ap_CS_fsm_state6;
wire   [15:0] p_cast350_fu_521_p1;
reg   [15:0] p_cast350_reg_1142;
wire   [15:0] p_cast351_fu_531_p1;
reg   [15:0] p_cast351_reg_1148;
wire   [15:0] p_cast352_fu_549_p1;
reg   [15:0] p_cast352_reg_1164;
wire   [15:0] add_ln32_cast353_fu_559_p1;
reg   [15:0] add_ln32_cast353_reg_1170;
wire   [15:0] p_cast354_fu_577_p1;
reg   [15:0] p_cast354_reg_1186;
wire   [15:0] p_cast355_fu_587_p1;
reg   [15:0] p_cast355_reg_1192;
wire   [15:0] p_cast356_fu_605_p1;
reg   [15:0] p_cast356_reg_1208;
wire   [15:0] p_cast357_fu_615_p1;
reg   [15:0] p_cast357_reg_1214;
wire   [15:0] p_cast358_fu_633_p1;
reg   [15:0] p_cast358_reg_1230;
wire   [15:0] p_cast359_fu_643_p1;
reg   [15:0] p_cast359_reg_1236;
wire   [15:0] mul_ln34_fu_647_p2;
reg   [15:0] mul_ln34_reg_1242;
wire    ap_CS_fsm_state11;
wire   [15:0] mul_ln49_fu_652_p2;
reg   [15:0] mul_ln49_reg_1247;
wire   [15:0] mul_ln62_fu_657_p2;
reg   [15:0] mul_ln62_reg_1252;
wire   [15:0] mul_ln75_fu_662_p2;
reg   [15:0] mul_ln75_reg_1257;
wire   [15:0] mul_ln88_fu_667_p2;
reg   [15:0] mul_ln88_reg_1262;
wire   [15:0] mul_ln101_fu_672_p2;
reg   [15:0] mul_ln101_reg_1267;
wire   [15:0] mul_ln114_fu_677_p2;
reg   [15:0] mul_ln114_reg_1272;
wire   [15:0] mul_ln127_fu_682_p2;
reg   [15:0] mul_ln127_reg_1277;
wire   [15:0] mul_ln140_fu_687_p2;
reg   [15:0] mul_ln140_reg_1282;
reg   [31:0] v224_load_8_reg_1287;
reg   [31:0] v224_load_9_reg_1292;
wire   [15:0] p_cast360_fu_706_p1;
reg   [15:0] p_cast360_reg_1307;
wire   [15:0] p_cast361_fu_716_p1;
reg   [15:0] p_cast361_reg_1313;
wire   [31:0] v11_fu_720_p1;
reg   [31:0] v11_reg_1319;
wire   [31:0] v24_fu_725_p1;
reg   [31:0] v24_reg_1324;
wire   [31:0] v35_fu_730_p1;
reg   [31:0] v35_reg_1329;
wire   [31:0] v46_fu_735_p1;
reg   [31:0] v46_reg_1334;
wire   [31:0] v57_fu_740_p1;
reg   [31:0] v57_reg_1339;
wire   [31:0] v68_fu_745_p1;
reg   [31:0] v68_reg_1344;
wire   [31:0] v79_fu_750_p1;
reg   [31:0] v79_reg_1349;
wire   [31:0] v90_fu_755_p1;
reg   [31:0] v90_reg_1354;
wire   [31:0] v101_fu_760_p1;
reg   [31:0] v101_reg_1359;
wire   [15:0] mul_ln34_1_fu_788_p2;
reg   [15:0] mul_ln34_1_reg_1394;
wire   [15:0] mul_ln49_1_fu_793_p2;
reg   [15:0] mul_ln49_1_reg_1399;
wire   [15:0] mul_ln62_1_fu_798_p2;
reg   [15:0] mul_ln62_1_reg_1404;
wire   [15:0] mul_ln75_1_fu_803_p2;
reg   [15:0] mul_ln75_1_reg_1409;
wire   [15:0] mul_ln88_1_fu_808_p2;
reg   [15:0] mul_ln88_1_reg_1414;
wire   [15:0] mul_ln101_1_fu_813_p2;
reg   [15:0] mul_ln101_1_reg_1419;
wire   [15:0] mul_ln114_1_fu_818_p2;
reg   [15:0] mul_ln114_1_reg_1424;
wire   [15:0] mul_ln127_1_fu_823_p2;
reg   [15:0] mul_ln127_1_reg_1429;
wire   [15:0] mul_ln140_1_fu_828_p2;
reg   [15:0] mul_ln140_1_reg_1434;
wire   [31:0] v11_1_fu_833_p1;
reg   [31:0] v11_1_reg_1439;
wire    ap_CS_fsm_state16;
wire   [31:0] v24_1_fu_837_p1;
reg   [31:0] v24_1_reg_1444;
wire   [31:0] v35_1_fu_842_p1;
reg   [31:0] v35_1_reg_1449;
wire   [31:0] v46_1_fu_847_p1;
reg   [31:0] v46_1_reg_1454;
wire   [31:0] v57_1_fu_852_p1;
reg   [31:0] v57_1_reg_1459;
wire   [31:0] v68_1_fu_857_p1;
reg   [31:0] v68_1_reg_1464;
wire   [31:0] v79_1_fu_862_p1;
reg   [31:0] v79_1_reg_1469;
wire   [31:0] v90_1_fu_867_p1;
reg   [31:0] v90_1_reg_1474;
wire   [31:0] v101_1_fu_872_p1;
reg   [31:0] v101_1_reg_1479;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_287_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_287_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_287_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_287_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_287_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_287_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_287_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_287_v228_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_287_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_287_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_287_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_287_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_287_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_287_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_287_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_287_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_287_grp_fu_1484_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_287_grp_fu_1484_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_287_grp_fu_1484_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_287_grp_fu_1484_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_287_grp_fu_1488_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_287_grp_fu_1488_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_287_grp_fu_1488_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_287_grp_fu_1492_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_287_grp_fu_1492_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_287_grp_fu_1492_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_316_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_316_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_316_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_316_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_316_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_316_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_316_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_316_v228_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_316_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_316_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_316_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_316_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_316_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_316_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_316_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_316_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_316_grp_fu_1484_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_316_grp_fu_1484_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_316_grp_fu_1484_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_316_grp_fu_1484_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_316_grp_fu_1488_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_316_grp_fu_1488_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_316_grp_fu_1488_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_316_grp_fu_1492_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_316_grp_fu_1492_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_316_grp_fu_1492_p_ce;
reg   [7:0] v6_reg_275;
wire    ap_CS_fsm_state17;
wire   [0:0] icmp_ln31_fu_399_p2;
reg    grp_kernel_2mm_node0_Pipeline_label_2_fu_287_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_23_fu_316_ap_start_reg;
wire   [63:0] p_cast362_fu_507_p1;
wire   [63:0] p_cast_fu_511_p1;
wire   [63:0] p_cast363_fu_535_p1;
wire   [63:0] p_cast364_fu_539_p1;
wire   [63:0] p_cast365_fu_563_p1;
wire   [63:0] p_cast366_fu_567_p1;
wire   [63:0] p_cast367_fu_591_p1;
wire   [63:0] p_cast368_fu_595_p1;
wire   [63:0] p_cast369_fu_619_p1;
wire   [63:0] p_cast370_fu_623_p1;
wire   [63:0] p_cast371_fu_692_p1;
wire   [63:0] p_cast372_fu_696_p1;
wire   [63:0] p_cast373_fu_764_p1;
wire   [63:0] p_cast374_fu_768_p1;
wire   [63:0] p_cast375_fu_772_p1;
wire   [63:0] p_cast376_fu_776_p1;
wire   [63:0] p_cast377_fu_780_p1;
wire   [63:0] p_cast378_fu_784_p1;
reg   [15:0] phi_mul_fu_102;
wire   [0:0] icmp_ln32_fu_421_p2;
reg    ap_block_state1;
reg   [7:0] v5_fu_106;
reg    v236_read_local;
reg    v224_ce1_local;
reg   [15:0] v224_address1_local;
reg    v224_ce0_local;
reg   [15:0] v224_address0_local;
wire   [6:0] tmp_fu_431_p4;
wire   [7:0] tmp_1_fu_441_p3;
wire   [7:0] empty_42_fu_467_p2;
wire   [7:0] empty_45_fu_477_p2;
wire   [7:0] empty_48_fu_487_p2;
wire   [7:0] empty_51_fu_497_p2;
wire   [15:0] grp_fu_877_p3;
wire   [15:0] grp_fu_885_p3;
wire   [7:0] empty_54_fu_515_p2;
wire   [7:0] empty_57_fu_525_p2;
wire   [15:0] grp_fu_893_p3;
wire   [15:0] grp_fu_901_p3;
wire   [7:0] empty_60_fu_543_p2;
wire   [7:0] add_ln32_fu_553_p2;
wire   [15:0] grp_fu_909_p3;
wire   [15:0] grp_fu_917_p3;
wire   [7:0] empty_65_fu_571_p2;
wire   [7:0] empty_68_fu_581_p2;
wire   [15:0] grp_fu_925_p3;
wire   [15:0] grp_fu_933_p3;
wire   [7:0] empty_71_fu_599_p2;
wire   [7:0] empty_74_fu_609_p2;
wire   [15:0] grp_fu_941_p3;
wire   [15:0] grp_fu_949_p3;
wire   [7:0] empty_77_fu_627_p2;
wire   [7:0] empty_80_fu_637_p2;
wire   [7:0] mul_ln34_fu_647_p0;
wire   [8:0] mul_ln34_fu_647_p1;
wire   [7:0] mul_ln49_fu_652_p0;
wire   [8:0] mul_ln49_fu_652_p1;
wire   [7:0] mul_ln62_fu_657_p0;
wire   [8:0] mul_ln62_fu_657_p1;
wire   [7:0] mul_ln75_fu_662_p0;
wire   [8:0] mul_ln75_fu_662_p1;
wire   [7:0] mul_ln88_fu_667_p0;
wire   [8:0] mul_ln88_fu_667_p1;
wire   [7:0] mul_ln101_fu_672_p0;
wire   [8:0] mul_ln101_fu_672_p1;
wire   [7:0] mul_ln114_fu_677_p0;
wire   [8:0] mul_ln114_fu_677_p1;
wire   [7:0] mul_ln127_fu_682_p0;
wire   [8:0] mul_ln127_fu_682_p1;
wire   [7:0] mul_ln140_fu_687_p0;
wire   [8:0] mul_ln140_fu_687_p1;
wire   [15:0] grp_fu_957_p3;
wire   [15:0] grp_fu_965_p3;
wire   [7:0] empty_83_fu_700_p2;
wire   [7:0] empty_86_fu_710_p2;
wire   [15:0] grp_fu_973_p3;
wire   [15:0] grp_fu_981_p3;
wire   [15:0] grp_fu_989_p3;
wire   [15:0] grp_fu_997_p3;
wire   [15:0] grp_fu_1005_p3;
wire   [15:0] grp_fu_1013_p3;
wire   [7:0] mul_ln34_1_fu_788_p0;
wire   [8:0] mul_ln34_1_fu_788_p1;
wire   [7:0] mul_ln49_1_fu_793_p0;
wire   [8:0] mul_ln49_1_fu_793_p1;
wire   [7:0] mul_ln62_1_fu_798_p0;
wire   [8:0] mul_ln62_1_fu_798_p1;
wire   [7:0] mul_ln75_1_fu_803_p0;
wire   [8:0] mul_ln75_1_fu_803_p1;
wire   [7:0] mul_ln88_1_fu_808_p0;
wire   [8:0] mul_ln88_1_fu_808_p1;
wire   [7:0] mul_ln101_1_fu_813_p0;
wire   [8:0] mul_ln101_1_fu_813_p1;
wire   [7:0] mul_ln114_1_fu_818_p0;
wire   [8:0] mul_ln114_1_fu_818_p1;
wire   [7:0] mul_ln127_1_fu_823_p0;
wire   [8:0] mul_ln127_1_fu_823_p1;
wire   [7:0] mul_ln140_1_fu_828_p0;
wire   [8:0] mul_ln140_1_fu_828_p1;
wire   [7:0] grp_fu_877_p0;
wire   [7:0] grp_fu_877_p1;
wire   [7:0] grp_fu_877_p2;
wire   [7:0] grp_fu_885_p0;
wire   [7:0] grp_fu_885_p1;
wire   [7:0] grp_fu_885_p2;
wire   [7:0] grp_fu_893_p0;
wire   [7:0] grp_fu_893_p1;
wire   [7:0] grp_fu_893_p2;
wire   [7:0] grp_fu_901_p0;
wire   [7:0] grp_fu_901_p1;
wire   [7:0] grp_fu_901_p2;
wire   [7:0] grp_fu_909_p0;
wire   [7:0] grp_fu_909_p1;
wire   [7:0] grp_fu_909_p2;
wire   [7:0] grp_fu_917_p0;
wire   [7:0] grp_fu_917_p1;
wire   [7:0] grp_fu_917_p2;
wire   [7:0] grp_fu_925_p0;
wire   [7:0] grp_fu_925_p1;
wire   [7:0] grp_fu_925_p2;
wire   [7:0] grp_fu_933_p0;
wire   [7:0] grp_fu_933_p1;
wire   [7:0] grp_fu_933_p2;
wire   [7:0] grp_fu_941_p0;
wire   [7:0] grp_fu_941_p1;
wire   [7:0] grp_fu_941_p2;
wire   [7:0] grp_fu_949_p0;
wire   [7:0] grp_fu_949_p1;
wire   [7:0] grp_fu_949_p2;
wire   [7:0] grp_fu_957_p0;
wire   [7:0] grp_fu_957_p1;
wire   [7:0] grp_fu_957_p2;
wire   [7:0] grp_fu_965_p0;
wire   [7:0] grp_fu_965_p1;
wire   [7:0] grp_fu_965_p2;
wire   [7:0] grp_fu_973_p0;
wire   [7:0] grp_fu_973_p1;
wire   [7:0] grp_fu_973_p2;
wire   [7:0] grp_fu_981_p0;
wire   [7:0] grp_fu_981_p1;
wire   [7:0] grp_fu_981_p2;
wire   [7:0] grp_fu_989_p0;
wire   [7:0] grp_fu_989_p1;
wire   [7:0] grp_fu_989_p2;
wire   [7:0] grp_fu_997_p0;
wire   [7:0] grp_fu_997_p1;
wire   [7:0] grp_fu_997_p2;
wire   [7:0] grp_fu_1005_p0;
wire   [7:0] grp_fu_1005_p1;
wire   [7:0] grp_fu_1005_p2;
wire   [7:0] grp_fu_1013_p0;
wire   [7:0] grp_fu_1013_p1;
wire   [7:0] grp_fu_1013_p2;
reg    grp_fu_989_ce;
reg    grp_fu_997_ce;
reg    grp_fu_1005_ce;
reg    grp_fu_1013_ce;
reg   [31:0] grp_fu_1484_p0;
reg   [31:0] grp_fu_1484_p1;
reg    grp_fu_1484_ce;
reg   [31:0] grp_fu_1488_p0;
reg   [31:0] grp_fu_1488_p1;
reg    grp_fu_1488_ce;
reg   [31:0] grp_fu_1492_p0;
reg   [31:0] grp_fu_1492_p1;
reg    grp_fu_1492_ce;
reg   [16:0] ap_NS_fsm;
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
wire   [15:0] grp_fu_1005_p00;
wire   [15:0] grp_fu_1013_p00;
wire   [15:0] grp_fu_877_p00;
wire   [15:0] grp_fu_885_p00;
wire   [15:0] grp_fu_893_p00;
wire   [15:0] grp_fu_901_p00;
wire   [15:0] grp_fu_909_p00;
wire   [15:0] grp_fu_917_p00;
wire   [15:0] grp_fu_925_p00;
wire   [15:0] grp_fu_933_p00;
wire   [15:0] grp_fu_941_p00;
wire   [15:0] grp_fu_949_p00;
wire   [15:0] grp_fu_957_p00;
wire   [15:0] grp_fu_965_p00;
wire   [15:0] grp_fu_973_p00;
wire   [15:0] grp_fu_981_p00;
wire   [15:0] grp_fu_989_p00;
wire   [15:0] grp_fu_997_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_2_fu_287_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_23_fu_316_ap_start_reg = 1'b0;
#0 phi_mul_fu_102 = 16'd0;
#0 v5_fu_106 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_2 grp_kernel_2mm_node0_Pipeline_label_2_fu_287(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_2_fu_287_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_2_fu_287_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_2_fu_287_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_2_fu_287_ap_ready),.phi_mul(phi_mul_load_reg_1041),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_287_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_287_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_287_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_287_v228_ce1),.v228_q1(v228_q1),.mul_ln34(mul_ln34_reg_1242),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_287_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_287_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_287_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_287_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_287_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_287_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_287_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_287_v229_d1),.v229_q1(v229_q1),.mul_ln49(mul_ln49_reg_1247),.mul_ln62(mul_ln62_reg_1252),.mul_ln75(mul_ln75_reg_1257),.mul_ln88(mul_ln88_reg_1262),.mul_ln101(mul_ln101_reg_1267),.mul_ln114(mul_ln114_reg_1272),.mul_ln127(mul_ln127_reg_1277),.mul_ln140(mul_ln140_reg_1282),.v4(v4),.cmp11(cmp11_reg_1082),.v11(v11_reg_1319),.v24(v24_reg_1324),.v35(v35_reg_1329),.v46(v46_reg_1334),.v57(v57_reg_1339),.v68(v68_reg_1344),.v79(v79_reg_1349),.v90(v90_reg_1354),.v101(v101_reg_1359),.grp_fu_1484_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_287_grp_fu_1484_p_din0),.grp_fu_1484_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_287_grp_fu_1484_p_din1),.grp_fu_1484_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_287_grp_fu_1484_p_opcode),.grp_fu_1484_p_dout0(grp_fu_120_p_dout0),.grp_fu_1484_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_287_grp_fu_1484_p_ce),.grp_fu_1488_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_287_grp_fu_1488_p_din0),.grp_fu_1488_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_287_grp_fu_1488_p_din1),.grp_fu_1488_p_dout0(grp_fu_124_p_dout0),.grp_fu_1488_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_287_grp_fu_1488_p_ce),.grp_fu_1492_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_287_grp_fu_1492_p_din0),.grp_fu_1492_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_287_grp_fu_1492_p_din1),.grp_fu_1492_p_dout0(grp_fu_128_p_dout0),.grp_fu_1492_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_287_grp_fu_1492_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_23 grp_kernel_2mm_node0_Pipeline_label_23_fu_316(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_23_fu_316_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_23_fu_316_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_23_fu_316_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_23_fu_316_ap_ready),.phi_mul(phi_mul_load_reg_1041),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_23_fu_316_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_23_fu_316_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_23_fu_316_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_23_fu_316_v228_ce1),.v228_q1(v228_q1),.mul_ln34_1(mul_ln34_1_reg_1394),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_23_fu_316_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_23_fu_316_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_23_fu_316_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_23_fu_316_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_23_fu_316_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_23_fu_316_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_23_fu_316_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_23_fu_316_v229_d1),.v229_q1(v229_q1),.mul_ln49_1(mul_ln49_1_reg_1399),.mul_ln62_1(mul_ln62_1_reg_1404),.mul_ln75_1(mul_ln75_1_reg_1409),.mul_ln88_1(mul_ln88_1_reg_1414),.mul_ln101_1(mul_ln101_1_reg_1419),.mul_ln114_1(mul_ln114_1_reg_1424),.mul_ln127_1(mul_ln127_1_reg_1429),.mul_ln140_1(mul_ln140_1_reg_1434),.v4(v4),.cmp11(cmp11_reg_1082),.v11_1(v11_1_reg_1439),.v24_1(v24_1_reg_1444),.v35_1(v35_1_reg_1449),.v46_1(v46_1_reg_1454),.v57_1(v57_1_reg_1459),.v68_1(v68_1_reg_1464),.v79_1(v79_1_reg_1469),.v90_1(v90_1_reg_1474),.v101_1(v101_1_reg_1479),.grp_fu_1484_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_316_grp_fu_1484_p_din0),.grp_fu_1484_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_316_grp_fu_1484_p_din1),.grp_fu_1484_p_opcode(grp_kernel_2mm_node0_Pipeline_label_23_fu_316_grp_fu_1484_p_opcode),.grp_fu_1484_p_dout0(grp_fu_120_p_dout0),.grp_fu_1484_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_316_grp_fu_1484_p_ce),.grp_fu_1488_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_316_grp_fu_1488_p_din0),.grp_fu_1488_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_316_grp_fu_1488_p_din1),.grp_fu_1488_p_dout0(grp_fu_124_p_dout0),.grp_fu_1488_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_316_grp_fu_1488_p_ce),.grp_fu_1492_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_316_grp_fu_1492_p_din0),.grp_fu_1492_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_316_grp_fu_1492_p_din1),.grp_fu_1492_p_dout0(grp_fu_128_p_dout0),.grp_fu_1492_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_316_grp_fu_1492_p_ce));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U91(.din0(mul_ln34_fu_647_p0),.din1(mul_ln34_fu_647_p1),.dout(mul_ln34_fu_647_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U92(.din0(mul_ln49_fu_652_p0),.din1(mul_ln49_fu_652_p1),.dout(mul_ln49_fu_652_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U93(.din0(mul_ln62_fu_657_p0),.din1(mul_ln62_fu_657_p1),.dout(mul_ln62_fu_657_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U94(.din0(mul_ln75_fu_662_p0),.din1(mul_ln75_fu_662_p1),.dout(mul_ln75_fu_662_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U95(.din0(mul_ln88_fu_667_p0),.din1(mul_ln88_fu_667_p1),.dout(mul_ln88_fu_667_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U96(.din0(mul_ln101_fu_672_p0),.din1(mul_ln101_fu_672_p1),.dout(mul_ln101_fu_672_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U97(.din0(mul_ln114_fu_677_p0),.din1(mul_ln114_fu_677_p1),.dout(mul_ln114_fu_677_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U98(.din0(mul_ln127_fu_682_p0),.din1(mul_ln127_fu_682_p1),.dout(mul_ln127_fu_682_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U99(.din0(mul_ln140_fu_687_p0),.din1(mul_ln140_fu_687_p1),.dout(mul_ln140_fu_687_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U100(.din0(mul_ln34_1_fu_788_p0),.din1(mul_ln34_1_fu_788_p1),.dout(mul_ln34_1_fu_788_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U101(.din0(mul_ln49_1_fu_793_p0),.din1(mul_ln49_1_fu_793_p1),.dout(mul_ln49_1_fu_793_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U102(.din0(mul_ln62_1_fu_798_p0),.din1(mul_ln62_1_fu_798_p1),.dout(mul_ln62_1_fu_798_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U103(.din0(mul_ln75_1_fu_803_p0),.din1(mul_ln75_1_fu_803_p1),.dout(mul_ln75_1_fu_803_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U104(.din0(mul_ln88_1_fu_808_p0),.din1(mul_ln88_1_fu_808_p1),.dout(mul_ln88_1_fu_808_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U105(.din0(mul_ln101_1_fu_813_p0),.din1(mul_ln101_1_fu_813_p1),.dout(mul_ln101_1_fu_813_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U106(.din0(mul_ln114_1_fu_818_p0),.din1(mul_ln114_1_fu_818_p1),.dout(mul_ln114_1_fu_818_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U107(.din0(mul_ln127_1_fu_823_p0),.din1(mul_ln127_1_fu_823_p1),.dout(mul_ln127_1_fu_823_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U108(.din0(mul_ln140_1_fu_828_p0),.din1(mul_ln140_1_fu_828_p1),.dout(mul_ln140_1_fu_828_p2));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U109(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_877_p0),.din1(grp_fu_877_p1),.din2(grp_fu_877_p2),.ce(1'b1),.dout(grp_fu_877_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U110(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_885_p0),.din1(grp_fu_885_p1),.din2(grp_fu_885_p2),.ce(1'b1),.dout(grp_fu_885_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U111(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_893_p0),.din1(grp_fu_893_p1),.din2(grp_fu_893_p2),.ce(1'b1),.dout(grp_fu_893_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U112(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_901_p0),.din1(grp_fu_901_p1),.din2(grp_fu_901_p2),.ce(1'b1),.dout(grp_fu_901_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U113(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_909_p0),.din1(grp_fu_909_p1),.din2(grp_fu_909_p2),.ce(1'b1),.dout(grp_fu_909_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U114(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_917_p0),.din1(grp_fu_917_p1),.din2(grp_fu_917_p2),.ce(1'b1),.dout(grp_fu_917_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U115(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_925_p0),.din1(grp_fu_925_p1),.din2(grp_fu_925_p2),.ce(1'b1),.dout(grp_fu_925_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U116(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_933_p0),.din1(grp_fu_933_p1),.din2(grp_fu_933_p2),.ce(1'b1),.dout(grp_fu_933_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U117(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_941_p0),.din1(grp_fu_941_p1),.din2(grp_fu_941_p2),.ce(1'b1),.dout(grp_fu_941_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U118(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_949_p0),.din1(grp_fu_949_p1),.din2(grp_fu_949_p2),.ce(1'b1),.dout(grp_fu_949_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U119(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_957_p0),.din1(grp_fu_957_p1),.din2(grp_fu_957_p2),.ce(1'b1),.dout(grp_fu_957_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U120(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_965_p0),.din1(grp_fu_965_p1),.din2(grp_fu_965_p2),.ce(1'b1),.dout(grp_fu_965_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U121(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_973_p0),.din1(grp_fu_973_p1),.din2(grp_fu_973_p2),.ce(1'b1),.dout(grp_fu_973_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U122(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_981_p0),.din1(grp_fu_981_p1),.din2(grp_fu_981_p2),.ce(1'b1),.dout(grp_fu_981_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U123(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_989_p0),.din1(grp_fu_989_p1),.din2(grp_fu_989_p2),.ce(grp_fu_989_ce),.dout(grp_fu_989_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U124(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_997_p0),.din1(grp_fu_997_p1),.din2(grp_fu_997_p2),.ce(grp_fu_997_ce),.dout(grp_fu_997_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U125(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1005_p0),.din1(grp_fu_1005_p1),.din2(grp_fu_1005_p2),.ce(grp_fu_1005_ce),.dout(grp_fu_1005_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U126(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1013_p0),.din1(grp_fu_1013_p1),.din2(grp_fu_1013_p2),.ce(grp_fu_1013_ce),.dout(grp_fu_1013_p3));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_23_fu_316_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node0_Pipeline_label_23_fu_316_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_23_fu_316_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_23_fu_316_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_2_fu_287_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_287_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_287_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_287_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_fu_102 <= 16'd0;
    end else if (((icmp_ln32_fu_421_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_mul_fu_102 <= add_ln31_1_reg_1047;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_106 <= 8'd0;
    end else if (((icmp_ln32_fu_421_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v5_fu_106 <= add_ln31_reg_1055;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln31_fu_399_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v6_reg_275 <= 8'd0;
    end else if (((grp_kernel_2mm_node0_Pipeline_label_23_fu_316_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        v6_reg_275 <= add_ln32_1_reg_1103;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln31_1_reg_1047 <= add_ln31_1_fu_393_p2;
        add_ln31_reg_1055 <= add_ln31_fu_405_p2;
        cmp11_reg_1082 <= cmp11_fu_415_p2;
        phi_mul_load_reg_1041 <= phi_mul_fu_102;
        zext_ln31_reg_1060[7 : 0] <= zext_ln31_fu_411_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_1_reg_1103 <= add_ln32_1_fu_453_p2;
        tmp_1_cast_reg_1097[7 : 1] <= tmp_1_cast_fu_449_p1[7 : 1];
        v6_cast_reg_1091[7 : 0] <= v6_cast_fu_427_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        add_ln32_cast353_reg_1170[7 : 0] <= add_ln32_cast353_fu_559_p1[7 : 0];
        p_cast352_reg_1164[7 : 0] <= p_cast352_fu_549_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln101_1_reg_1419 <= mul_ln101_1_fu_813_p2;
        mul_ln114_1_reg_1424 <= mul_ln114_1_fu_818_p2;
        mul_ln127_1_reg_1429 <= mul_ln127_1_fu_823_p2;
        mul_ln140_1_reg_1434 <= mul_ln140_1_fu_828_p2;
        mul_ln34_1_reg_1394 <= mul_ln34_1_fu_788_p2;
        mul_ln49_1_reg_1399 <= mul_ln49_1_fu_793_p2;
        mul_ln62_1_reg_1404 <= mul_ln62_1_fu_798_p2;
        mul_ln75_1_reg_1409 <= mul_ln75_1_fu_803_p2;
        mul_ln88_1_reg_1414 <= mul_ln88_1_fu_808_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        mul_ln101_reg_1267 <= mul_ln101_fu_672_p2;
        mul_ln114_reg_1272 <= mul_ln114_fu_677_p2;
        mul_ln127_reg_1277 <= mul_ln127_fu_682_p2;
        mul_ln140_reg_1282 <= mul_ln140_fu_687_p2;
        mul_ln34_reg_1242 <= mul_ln34_fu_647_p2;
        mul_ln49_reg_1247 <= mul_ln49_fu_652_p2;
        mul_ln62_reg_1252 <= mul_ln62_fu_657_p2;
        mul_ln75_reg_1257 <= mul_ln75_fu_662_p2;
        mul_ln88_reg_1262 <= mul_ln88_fu_667_p2;
        p_cast360_reg_1307[7 : 0] <= p_cast360_fu_706_p1[7 : 0];
        p_cast361_reg_1313[7 : 0] <= p_cast361_fu_716_p1[7 : 0];
        v224_load_8_reg_1287 <= v224_q1;
        v224_load_9_reg_1292 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        p_cast346_reg_1108[7 : 0] <= p_cast346_fu_473_p1[7 : 0];
        p_cast347_reg_1114[7 : 0] <= p_cast347_fu_483_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        p_cast348_reg_1120[7 : 0] <= p_cast348_fu_493_p1[7 : 0];
        p_cast349_reg_1126[7 : 0] <= p_cast349_fu_503_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        p_cast350_reg_1142[7 : 0] <= p_cast350_fu_521_p1[7 : 0];
        p_cast351_reg_1148[7 : 0] <= p_cast351_fu_531_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        p_cast354_reg_1186[7 : 0] <= p_cast354_fu_577_p1[7 : 0];
        p_cast355_reg_1192[7 : 0] <= p_cast355_fu_587_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        p_cast356_reg_1208[7 : 0] <= p_cast356_fu_605_p1[7 : 0];
        p_cast357_reg_1214[7 : 0] <= p_cast357_fu_615_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        p_cast358_reg_1230[7 : 0] <= p_cast358_fu_633_p1[7 : 0];
        p_cast359_reg_1236[7 : 0] <= p_cast359_fu_643_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7))) begin
        reg_345 <= v224_q1;
        reg_349 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state13))) begin
        reg_353 <= v224_q1;
        reg_357 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9))) begin
        reg_361 <= v224_q1;
        reg_365 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10))) begin
        reg_369 <= v224_q1;
        reg_373 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        v101_1_reg_1479 <= v101_1_fu_872_p1;
        v11_1_reg_1439 <= v11_1_fu_833_p1;
        v24_1_reg_1444 <= v24_1_fu_837_p1;
        v35_1_reg_1449 <= v35_1_fu_842_p1;
        v46_1_reg_1454 <= v46_1_fu_847_p1;
        v57_1_reg_1459 <= v57_1_fu_852_p1;
        v68_1_reg_1464 <= v68_1_fu_857_p1;
        v79_1_reg_1469 <= v79_1_fu_862_p1;
        v90_1_reg_1474 <= v90_1_fu_867_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        v101_reg_1359 <= v101_fu_760_p1;
        v11_reg_1319 <= v11_fu_720_p1;
        v24_reg_1324 <= v24_fu_725_p1;
        v35_reg_1329 <= v35_fu_730_p1;
        v46_reg_1334 <= v46_fu_735_p1;
        v57_reg_1339 <= v57_fu_740_p1;
        v68_reg_1344 <= v68_fu_745_p1;
        v79_reg_1349 <= v79_fu_750_p1;
        v90_reg_1354 <= v90_fu_755_p1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_287_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
    end
end
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_23_fu_316_ap_done == 1'b0)) begin
        ap_ST_fsm_state17_blk = 1'b1;
    end else begin
        ap_ST_fsm_state17_blk = 1'b0;
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
    if ((((icmp_ln31_fu_399_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((icmp_ln31_fu_399_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state14) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_287_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1005_ce = 1'b1;
    end else begin
        grp_fu_1005_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state14) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_287_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1013_ce = 1'b1;
    end else begin
        grp_fu_1013_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1484_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_316_grp_fu_1484_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1484_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_287_grp_fu_1484_p_ce;
    end else begin
        grp_fu_1484_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1484_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_316_grp_fu_1484_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1484_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_287_grp_fu_1484_p_din0;
    end else begin
        grp_fu_1484_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1484_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_316_grp_fu_1484_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1484_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_287_grp_fu_1484_p_din1;
    end else begin
        grp_fu_1484_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1488_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_316_grp_fu_1488_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1488_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_287_grp_fu_1488_p_ce;
    end else begin
        grp_fu_1488_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1488_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_316_grp_fu_1488_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1488_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_287_grp_fu_1488_p_din0;
    end else begin
        grp_fu_1488_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1488_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_316_grp_fu_1488_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1488_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_287_grp_fu_1488_p_din1;
    end else begin
        grp_fu_1488_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1492_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_316_grp_fu_1492_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1492_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_287_grp_fu_1492_p_ce;
    end else begin
        grp_fu_1492_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1492_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_316_grp_fu_1492_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1492_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_287_grp_fu_1492_p_din0;
    end else begin
        grp_fu_1492_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1492_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_316_grp_fu_1492_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1492_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_287_grp_fu_1492_p_din1;
    end else begin
        grp_fu_1492_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_287_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_989_ce = 1'b1;
    end else begin
        grp_fu_989_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_287_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_997_ce = 1'b1;
    end else begin
        grp_fu_997_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_address0_local = p_cast378_fu_784_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_address0_local = p_cast376_fu_776_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_address0_local = p_cast374_fu_768_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_address0_local = p_cast372_fu_696_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address0_local = p_cast370_fu_623_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address0_local = p_cast368_fu_595_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address0_local = p_cast366_fu_567_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address0_local = p_cast364_fu_539_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_address0_local = p_cast_fu_511_p1;
    end else begin
        v224_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_address1_local = p_cast377_fu_780_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_address1_local = p_cast375_fu_772_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_address1_local = p_cast373_fu_764_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_address1_local = p_cast371_fu_692_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address1_local = p_cast369_fu_619_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address1_local = p_cast367_fu_591_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address1_local = p_cast365_fu_563_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address1_local = p_cast363_fu_535_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_address1_local = p_cast362_fu_507_p1;
    end else begin
        v224_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_287_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        v224_ce0_local = 1'b1;
    end else begin
        v224_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_287_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        v224_ce1_local = 1'b1;
    end else begin
        v224_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_316_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_287_v228_address0;
    end else begin
        v228_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_316_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_287_v228_address1;
    end else begin
        v228_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_316_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_287_v228_ce0;
    end else begin
        v228_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_316_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_287_v228_ce1;
    end else begin
        v228_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_316_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_287_v229_address0;
    end else begin
        v229_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_316_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_287_v229_address1;
    end else begin
        v229_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_316_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_287_v229_ce0;
    end else begin
        v229_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_316_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_287_v229_ce1;
    end else begin
        v229_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_316_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_287_v229_d0;
    end else begin
        v229_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_316_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_287_v229_d1;
    end else begin
        v229_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_316_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_287_v229_we0;
    end else begin
        v229_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_316_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_287_v229_we1;
    end else begin
        v229_we1 = 1'b0;
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
            if (((icmp_ln31_fu_399_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln32_fu_421_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_287_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_23_fu_316_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln31_1_fu_393_p2 = (phi_mul_fu_102 + 16'd220);
assign add_ln31_fu_405_p2 = (v5_fu_106 + 8'd1);
assign add_ln32_1_fu_453_p2 = (v6_reg_275 + 8'd18);
assign add_ln32_cast353_fu_559_p1 = add_ln32_fu_553_p2;
assign add_ln32_fu_553_p2 = (v6_reg_275 + 8'd9);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];
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
assign cmp11_fu_415_p2 = ((v5_fu_106 == 8'd0) ? 1'b1 : 1'b0);
assign empty_42_fu_467_p2 = (v6_reg_275 + 8'd2);
assign empty_45_fu_477_p2 = (v6_reg_275 + 8'd3);
assign empty_48_fu_487_p2 = (v6_reg_275 + 8'd4);
assign empty_51_fu_497_p2 = (v6_reg_275 + 8'd5);
assign empty_54_fu_515_p2 = (v6_reg_275 + 8'd6);
assign empty_57_fu_525_p2 = (v6_reg_275 + 8'd7);
assign empty_60_fu_543_p2 = (v6_reg_275 + 8'd8);
assign empty_65_fu_571_p2 = (v6_reg_275 + 8'd10);
assign empty_68_fu_581_p2 = (v6_reg_275 + 8'd11);
assign empty_71_fu_599_p2 = (v6_reg_275 + 8'd12);
assign empty_74_fu_609_p2 = (v6_reg_275 + 8'd13);
assign empty_77_fu_627_p2 = (v6_reg_275 + 8'd14);
assign empty_80_fu_637_p2 = (v6_reg_275 + 8'd15);
assign empty_83_fu_700_p2 = (v6_reg_275 + 8'd16);
assign empty_86_fu_710_p2 = (v6_reg_275 + 8'd17);
assign grp_fu_1005_p0 = grp_fu_1005_p00;
assign grp_fu_1005_p00 = empty_83_fu_700_p2;
assign grp_fu_1005_p1 = 16'd190;
assign grp_fu_1005_p2 = zext_ln31_reg_1060;
assign grp_fu_1013_p0 = grp_fu_1013_p00;
assign grp_fu_1013_p00 = empty_86_fu_710_p2;
assign grp_fu_1013_p1 = 16'd190;
assign grp_fu_1013_p2 = zext_ln31_reg_1060;
assign grp_fu_120_p_ce = grp_fu_1484_ce;
assign grp_fu_120_p_din0 = grp_fu_1484_p0;
assign grp_fu_120_p_din1 = grp_fu_1484_p1;
assign grp_fu_120_p_opcode = 2'd0;
assign grp_fu_124_p_ce = grp_fu_1488_ce;
assign grp_fu_124_p_din0 = grp_fu_1488_p0;
assign grp_fu_124_p_din1 = grp_fu_1488_p1;
assign grp_fu_128_p_ce = grp_fu_1492_ce;
assign grp_fu_128_p_din0 = grp_fu_1492_p0;
assign grp_fu_128_p_din1 = grp_fu_1492_p1;
assign grp_fu_877_p0 = grp_fu_877_p00;
assign grp_fu_877_p00 = v6_reg_275;
assign grp_fu_877_p1 = 16'd190;
assign grp_fu_877_p2 = zext_ln31_reg_1060;
assign grp_fu_885_p0 = grp_fu_885_p00;
assign grp_fu_885_p00 = tmp_1_fu_441_p3;
assign grp_fu_885_p1 = 16'd190;
assign grp_fu_885_p2 = zext_ln31_reg_1060;
assign grp_fu_893_p0 = grp_fu_893_p00;
assign grp_fu_893_p00 = empty_42_fu_467_p2;
assign grp_fu_893_p1 = 16'd190;
assign grp_fu_893_p2 = zext_ln31_reg_1060;
assign grp_fu_901_p0 = grp_fu_901_p00;
assign grp_fu_901_p00 = empty_45_fu_477_p2;
assign grp_fu_901_p1 = 16'd190;
assign grp_fu_901_p2 = zext_ln31_reg_1060;
assign grp_fu_909_p0 = grp_fu_909_p00;
assign grp_fu_909_p00 = empty_48_fu_487_p2;
assign grp_fu_909_p1 = 16'd190;
assign grp_fu_909_p2 = zext_ln31_reg_1060;
assign grp_fu_917_p0 = grp_fu_917_p00;
assign grp_fu_917_p00 = empty_51_fu_497_p2;
assign grp_fu_917_p1 = 16'd190;
assign grp_fu_917_p2 = zext_ln31_reg_1060;
assign grp_fu_925_p0 = grp_fu_925_p00;
assign grp_fu_925_p00 = empty_54_fu_515_p2;
assign grp_fu_925_p1 = 16'd190;
assign grp_fu_925_p2 = zext_ln31_reg_1060;
assign grp_fu_933_p0 = grp_fu_933_p00;
assign grp_fu_933_p00 = empty_57_fu_525_p2;
assign grp_fu_933_p1 = 16'd190;
assign grp_fu_933_p2 = zext_ln31_reg_1060;
assign grp_fu_941_p0 = grp_fu_941_p00;
assign grp_fu_941_p00 = empty_60_fu_543_p2;
assign grp_fu_941_p1 = 16'd190;
assign grp_fu_941_p2 = zext_ln31_reg_1060;
assign grp_fu_949_p0 = grp_fu_949_p00;
assign grp_fu_949_p00 = add_ln32_fu_553_p2;
assign grp_fu_949_p1 = 16'd190;
assign grp_fu_949_p2 = zext_ln31_reg_1060;
assign grp_fu_957_p0 = grp_fu_957_p00;
assign grp_fu_957_p00 = empty_65_fu_571_p2;
assign grp_fu_957_p1 = 16'd190;
assign grp_fu_957_p2 = zext_ln31_reg_1060;
assign grp_fu_965_p0 = grp_fu_965_p00;
assign grp_fu_965_p00 = empty_68_fu_581_p2;
assign grp_fu_965_p1 = 16'd190;
assign grp_fu_965_p2 = zext_ln31_reg_1060;
assign grp_fu_973_p0 = grp_fu_973_p00;
assign grp_fu_973_p00 = empty_71_fu_599_p2;
assign grp_fu_973_p1 = 16'd190;
assign grp_fu_973_p2 = zext_ln31_reg_1060;
assign grp_fu_981_p0 = grp_fu_981_p00;
assign grp_fu_981_p00 = empty_74_fu_609_p2;
assign grp_fu_981_p1 = 16'd190;
assign grp_fu_981_p2 = zext_ln31_reg_1060;
assign grp_fu_989_p0 = grp_fu_989_p00;
assign grp_fu_989_p00 = empty_77_fu_627_p2;
assign grp_fu_989_p1 = 16'd190;
assign grp_fu_989_p2 = zext_ln31_reg_1060;
assign grp_fu_997_p0 = grp_fu_997_p00;
assign grp_fu_997_p00 = empty_80_fu_637_p2;
assign grp_fu_997_p1 = 16'd190;
assign grp_fu_997_p2 = zext_ln31_reg_1060;
assign grp_kernel_2mm_node0_Pipeline_label_23_fu_316_ap_start = grp_kernel_2mm_node0_Pipeline_label_23_fu_316_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_2_fu_287_ap_start = grp_kernel_2mm_node0_Pipeline_label_2_fu_287_ap_start_reg;
assign icmp_ln31_fu_399_p2 = ((v5_fu_106 == 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_421_p2 = ((v6_reg_275 < 8'd180) ? 1'b1 : 1'b0);
assign mul_ln101_1_fu_813_p0 = p_cast358_reg_1230;
assign mul_ln101_1_fu_813_p1 = 16'd220;
assign mul_ln101_fu_672_p0 = p_cast349_reg_1126;
assign mul_ln101_fu_672_p1 = 16'd220;
assign mul_ln114_1_fu_818_p0 = p_cast359_reg_1236;
assign mul_ln114_1_fu_818_p1 = 16'd220;
assign mul_ln114_fu_677_p0 = p_cast350_reg_1142;
assign mul_ln114_fu_677_p1 = 16'd220;
assign mul_ln127_1_fu_823_p0 = p_cast360_reg_1307;
assign mul_ln127_1_fu_823_p1 = 16'd220;
assign mul_ln127_fu_682_p0 = p_cast351_reg_1148;
assign mul_ln127_fu_682_p1 = 16'd220;
assign mul_ln140_1_fu_828_p0 = p_cast361_reg_1313;
assign mul_ln140_1_fu_828_p1 = 16'd220;
assign mul_ln140_fu_687_p0 = p_cast352_reg_1164;
assign mul_ln140_fu_687_p1 = 16'd220;
assign mul_ln34_1_fu_788_p0 = add_ln32_cast353_reg_1170;
assign mul_ln34_1_fu_788_p1 = 16'd220;
assign mul_ln34_fu_647_p0 = v6_cast_reg_1091;
assign mul_ln34_fu_647_p1 = 16'd220;
assign mul_ln49_1_fu_793_p0 = p_cast354_reg_1186;
assign mul_ln49_1_fu_793_p1 = 16'd220;
assign mul_ln49_fu_652_p0 = tmp_1_cast_reg_1097;
assign mul_ln49_fu_652_p1 = 16'd220;
assign mul_ln62_1_fu_798_p0 = p_cast355_reg_1192;
assign mul_ln62_1_fu_798_p1 = 16'd220;
assign mul_ln62_fu_657_p0 = p_cast346_reg_1108;
assign mul_ln62_fu_657_p1 = 16'd220;
assign mul_ln75_1_fu_803_p0 = p_cast356_reg_1208;
assign mul_ln75_1_fu_803_p1 = 16'd220;
assign mul_ln75_fu_662_p0 = p_cast347_reg_1114;
assign mul_ln75_fu_662_p1 = 16'd220;
assign mul_ln88_1_fu_808_p0 = p_cast357_reg_1214;
assign mul_ln88_1_fu_808_p1 = 16'd220;
assign mul_ln88_fu_667_p0 = p_cast348_reg_1120;
assign mul_ln88_fu_667_p1 = 16'd220;
assign p_cast346_fu_473_p1 = empty_42_fu_467_p2;
assign p_cast347_fu_483_p1 = empty_45_fu_477_p2;
assign p_cast348_fu_493_p1 = empty_48_fu_487_p2;
assign p_cast349_fu_503_p1 = empty_51_fu_497_p2;
assign p_cast350_fu_521_p1 = empty_54_fu_515_p2;
assign p_cast351_fu_531_p1 = empty_57_fu_525_p2;
assign p_cast352_fu_549_p1 = empty_60_fu_543_p2;
assign p_cast354_fu_577_p1 = empty_65_fu_571_p2;
assign p_cast355_fu_587_p1 = empty_68_fu_581_p2;
assign p_cast356_fu_605_p1 = empty_71_fu_599_p2;
assign p_cast357_fu_615_p1 = empty_74_fu_609_p2;
assign p_cast358_fu_633_p1 = empty_77_fu_627_p2;
assign p_cast359_fu_643_p1 = empty_80_fu_637_p2;
assign p_cast360_fu_706_p1 = empty_83_fu_700_p2;
assign p_cast361_fu_716_p1 = empty_86_fu_710_p2;
assign p_cast362_fu_507_p1 = grp_fu_877_p3;
assign p_cast363_fu_535_p1 = grp_fu_893_p3;
assign p_cast364_fu_539_p1 = grp_fu_901_p3;
assign p_cast365_fu_563_p1 = grp_fu_909_p3;
assign p_cast366_fu_567_p1 = grp_fu_917_p3;
assign p_cast367_fu_591_p1 = grp_fu_925_p3;
assign p_cast368_fu_595_p1 = grp_fu_933_p3;
assign p_cast369_fu_619_p1 = grp_fu_941_p3;
assign p_cast370_fu_623_p1 = grp_fu_949_p3;
assign p_cast371_fu_692_p1 = grp_fu_957_p3;
assign p_cast372_fu_696_p1 = grp_fu_965_p3;
assign p_cast373_fu_764_p1 = grp_fu_973_p3;
assign p_cast374_fu_768_p1 = grp_fu_981_p3;
assign p_cast375_fu_772_p1 = grp_fu_989_p3;
assign p_cast376_fu_776_p1 = grp_fu_997_p3;
assign p_cast377_fu_780_p1 = grp_fu_1005_p3;
assign p_cast378_fu_784_p1 = grp_fu_1013_p3;
assign p_cast_fu_511_p1 = grp_fu_885_p3;
assign tmp_1_cast_fu_449_p1 = tmp_1_fu_441_p3;
assign tmp_1_fu_441_p3 = {{tmp_fu_431_p4}, {1'd1}};
assign tmp_fu_431_p4 = {{v6_reg_275[7:1]}};
assign v101_1_fu_872_p1 = reg_373;
assign v101_fu_760_p1 = v224_load_8_reg_1287;
assign v11_1_fu_833_p1 = v224_load_9_reg_1292;
assign v11_fu_720_p1 = reg_345;
assign v224_address0 = v224_address0_local;
assign v224_address1 = v224_address1_local;
assign v224_ce0 = v224_ce0_local;
assign v224_ce1 = v224_ce1_local;
assign v236_read = v236_read_local;
assign v24_1_fu_837_p1 = reg_345;
assign v24_fu_725_p1 = reg_349;
assign v35_1_fu_842_p1 = reg_349;
assign v35_fu_730_p1 = reg_353;
assign v46_1_fu_847_p1 = reg_353;
assign v46_fu_735_p1 = reg_357;
assign v57_1_fu_852_p1 = reg_357;
assign v57_fu_740_p1 = reg_361;
assign v68_1_fu_857_p1 = reg_361;
assign v68_fu_745_p1 = reg_365;
assign v6_cast_fu_427_p1 = v6_reg_275;
assign v79_1_fu_862_p1 = reg_365;
assign v79_fu_750_p1 = reg_369;
assign v90_1_fu_867_p1 = reg_369;
assign v90_fu_755_p1 = reg_373;
assign zext_ln31_fu_411_p1 = v5_fu_106;
always @ (posedge ap_clk) begin
    zext_ln31_reg_1060[15:8] <= 8'b00000000;
    v6_cast_reg_1091[15:8] <= 8'b00000000;
    tmp_1_cast_reg_1097[0] <= 1'b1;
    tmp_1_cast_reg_1097[15:8] <= 8'b00000000;
    p_cast346_reg_1108[15:8] <= 8'b00000000;
    p_cast347_reg_1114[15:8] <= 8'b00000000;
    p_cast348_reg_1120[15:8] <= 8'b00000000;
    p_cast349_reg_1126[15:8] <= 8'b00000000;
    p_cast350_reg_1142[15:8] <= 8'b00000000;
    p_cast351_reg_1148[15:8] <= 8'b00000000;
    p_cast352_reg_1164[15:8] <= 8'b00000000;
    add_ln32_cast353_reg_1170[15:8] <= 8'b00000000;
    p_cast354_reg_1186[15:8] <= 8'b00000000;
    p_cast355_reg_1192[15:8] <= 8'b00000000;
    p_cast356_reg_1208[15:8] <= 8'b00000000;
    p_cast357_reg_1214[15:8] <= 8'b00000000;
    p_cast358_reg_1230[15:8] <= 8'b00000000;
    p_cast359_reg_1236[15:8] <= 8'b00000000;
    p_cast360_reg_1307[15:8] <= 8'b00000000;
    p_cast361_reg_1313[15:8] <= 8'b00000000;
end
endmodule 