module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_address0,v224_ce0,v224_q0,v224_address1,v224_ce1,v224_q1,v228_0_address0,v228_0_ce0,v228_0_q0,v228_0_address1,v228_0_ce1,v228_0_q1,v228_1_address0,v228_1_ce0,v228_1_q0,v228_1_address1,v228_1_ce1,v228_1_q1,v229_address0,v229_ce0,v229_we0,v229_d0,v229_q0,v229_address1,v229_ce1,v229_we1,v229_d1,v229_q1,v4,grp_fu_124_p_din0,grp_fu_124_p_din1,grp_fu_124_p_opcode,grp_fu_124_p_dout0,grp_fu_124_p_ce,grp_fu_128_p_din0,grp_fu_128_p_din1,grp_fu_128_p_dout0,grp_fu_128_p_ce,grp_fu_132_p_din0,grp_fu_132_p_din1,grp_fu_132_p_dout0,grp_fu_132_p_ce); 
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
output  [14:0] v228_0_address0;
output   v228_0_ce0;
input  [31:0] v228_0_q0;
output  [14:0] v228_0_address1;
output   v228_0_ce1;
input  [31:0] v228_0_q1;
output  [14:0] v228_1_address0;
output   v228_1_ce0;
input  [31:0] v228_1_q0;
output  [14:0] v228_1_address1;
output   v228_1_ce1;
input  [31:0] v228_1_q1;
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
output  [31:0] grp_fu_124_p_din0;
output  [31:0] grp_fu_124_p_din1;
output  [1:0] grp_fu_124_p_opcode;
input  [31:0] grp_fu_124_p_dout0;
output   grp_fu_124_p_ce;
output  [31:0] grp_fu_128_p_din0;
output  [31:0] grp_fu_128_p_din1;
input  [31:0] grp_fu_128_p_dout0;
output   grp_fu_128_p_ce;
output  [31:0] grp_fu_132_p_din0;
output  [31:0] grp_fu_132_p_din1;
input  [31:0] grp_fu_132_p_dout0;
output   grp_fu_132_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[14:0] v228_0_address0;
reg v228_0_ce0;
reg[14:0] v228_0_address1;
reg v228_0_ce1;
reg[14:0] v228_1_address0;
reg v228_1_ce0;
reg[14:0] v228_1_address1;
reg v228_1_ce1;
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
reg   [31:0] reg_349;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state12;
reg   [31:0] reg_353;
reg   [31:0] reg_357;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state13;
reg   [31:0] reg_361;
reg   [31:0] reg_365;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state14;
reg   [31:0] reg_369;
reg   [31:0] reg_373;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state15;
reg   [31:0] reg_377;
wire   [7:0] add_ln31_fu_395_p2;
reg   [7:0] add_ln31_reg_1047;
wire    ap_CS_fsm_state2;
wire   [15:0] zext_ln31_fu_401_p1;
reg   [15:0] zext_ln31_reg_1052;
wire   [0:0] trunc_ln31_fu_405_p1;
reg   [0:0] trunc_ln31_reg_1074;
wire   [14:0] mul_ln38_fu_423_p2;
reg   [14:0] mul_ln38_reg_1080;
wire   [0:0] cmp11_fu_429_p2;
reg   [0:0] cmp11_reg_1086;
wire   [15:0] v6_cast_fu_441_p1;
reg   [15:0] v6_cast_reg_1095;
wire    ap_CS_fsm_state3;
wire   [15:0] tmp_8_cast_fu_463_p1;
reg   [15:0] tmp_8_cast_reg_1101;
wire   [7:0] add_ln32_1_fu_467_p2;
reg   [7:0] add_ln32_1_reg_1107;
wire   [15:0] p_cast371_fu_483_p1;
reg   [15:0] p_cast371_reg_1112;
wire    ap_CS_fsm_state4;
wire   [15:0] p_cast372_fu_493_p1;
reg   [15:0] p_cast372_reg_1118;
wire   [15:0] p_cast373_fu_503_p1;
reg   [15:0] p_cast373_reg_1124;
wire    ap_CS_fsm_state5;
wire   [15:0] p_cast374_fu_513_p1;
reg   [15:0] p_cast374_reg_1130;
wire    ap_CS_fsm_state6;
wire   [15:0] p_cast375_fu_531_p1;
reg   [15:0] p_cast375_reg_1146;
wire   [15:0] p_cast376_fu_541_p1;
reg   [15:0] p_cast376_reg_1152;
wire   [15:0] p_cast377_fu_559_p1;
reg   [15:0] p_cast377_reg_1168;
wire   [15:0] add_ln32_cast378_fu_569_p1;
reg   [15:0] add_ln32_cast378_reg_1174;
wire   [15:0] p_cast379_fu_587_p1;
reg   [15:0] p_cast379_reg_1190;
wire   [15:0] p_cast380_fu_597_p1;
reg   [15:0] p_cast380_reg_1196;
wire   [15:0] p_cast381_fu_615_p1;
reg   [15:0] p_cast381_reg_1212;
wire   [15:0] p_cast382_fu_625_p1;
reg   [15:0] p_cast382_reg_1218;
wire   [15:0] p_cast383_fu_643_p1;
reg   [15:0] p_cast383_reg_1234;
wire   [15:0] p_cast384_fu_653_p1;
reg   [15:0] p_cast384_reg_1240;
wire   [15:0] mul_ln34_fu_657_p2;
reg   [15:0] mul_ln34_reg_1246;
wire    ap_CS_fsm_state11;
wire   [15:0] mul_ln49_fu_662_p2;
reg   [15:0] mul_ln49_reg_1251;
wire   [15:0] mul_ln62_fu_667_p2;
reg   [15:0] mul_ln62_reg_1256;
wire   [15:0] mul_ln75_fu_672_p2;
reg   [15:0] mul_ln75_reg_1261;
wire   [15:0] mul_ln88_fu_677_p2;
reg   [15:0] mul_ln88_reg_1266;
wire   [15:0] mul_ln101_fu_682_p2;
reg   [15:0] mul_ln101_reg_1271;
wire   [15:0] mul_ln114_fu_687_p2;
reg   [15:0] mul_ln114_reg_1276;
wire   [15:0] mul_ln127_fu_692_p2;
reg   [15:0] mul_ln127_reg_1281;
wire   [15:0] mul_ln140_fu_697_p2;
reg   [15:0] mul_ln140_reg_1286;
reg   [31:0] v224_load_8_reg_1291;
reg   [31:0] v224_load_9_reg_1296;
wire   [15:0] p_cast385_fu_716_p1;
reg   [15:0] p_cast385_reg_1311;
wire   [15:0] p_cast386_fu_726_p1;
reg   [15:0] p_cast386_reg_1317;
wire   [31:0] v11_fu_730_p1;
reg   [31:0] v11_reg_1323;
wire   [31:0] v24_fu_735_p1;
reg   [31:0] v24_reg_1328;
wire   [31:0] v35_fu_740_p1;
reg   [31:0] v35_reg_1333;
wire   [31:0] v46_fu_745_p1;
reg   [31:0] v46_reg_1338;
wire   [31:0] v57_fu_750_p1;
reg   [31:0] v57_reg_1343;
wire   [31:0] v68_fu_755_p1;
reg   [31:0] v68_reg_1348;
wire   [31:0] v79_fu_760_p1;
reg   [31:0] v79_reg_1353;
wire   [31:0] v90_fu_765_p1;
reg   [31:0] v90_reg_1358;
wire   [31:0] v101_fu_770_p1;
reg   [31:0] v101_reg_1363;
wire   [15:0] mul_ln34_1_fu_798_p2;
reg   [15:0] mul_ln34_1_reg_1398;
wire   [15:0] mul_ln49_1_fu_803_p2;
reg   [15:0] mul_ln49_1_reg_1403;
wire   [15:0] mul_ln62_1_fu_808_p2;
reg   [15:0] mul_ln62_1_reg_1408;
wire   [15:0] mul_ln75_1_fu_813_p2;
reg   [15:0] mul_ln75_1_reg_1413;
wire   [15:0] mul_ln88_1_fu_818_p2;
reg   [15:0] mul_ln88_1_reg_1418;
wire   [15:0] mul_ln101_1_fu_823_p2;
reg   [15:0] mul_ln101_1_reg_1423;
wire   [15:0] mul_ln114_1_fu_828_p2;
reg   [15:0] mul_ln114_1_reg_1428;
wire   [15:0] mul_ln127_1_fu_833_p2;
reg   [15:0] mul_ln127_1_reg_1433;
wire   [15:0] mul_ln140_1_fu_838_p2;
reg   [15:0] mul_ln140_1_reg_1438;
wire   [31:0] v11_1_fu_843_p1;
reg   [31:0] v11_1_reg_1443;
wire    ap_CS_fsm_state16;
wire   [31:0] v24_1_fu_847_p1;
reg   [31:0] v24_1_reg_1448;
wire   [31:0] v35_1_fu_852_p1;
reg   [31:0] v35_1_reg_1453;
wire   [31:0] v46_1_fu_857_p1;
reg   [31:0] v46_1_reg_1458;
wire   [31:0] v57_1_fu_862_p1;
reg   [31:0] v57_1_reg_1463;
wire   [31:0] v68_1_fu_867_p1;
reg   [31:0] v68_1_reg_1468;
wire   [31:0] v79_1_fu_872_p1;
reg   [31:0] v79_1_reg_1473;
wire   [31:0] v90_1_fu_877_p1;
reg   [31:0] v90_1_reg_1478;
wire   [31:0] v101_1_fu_882_p1;
reg   [31:0] v101_1_reg_1483;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_285_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_285_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_285_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_285_ap_ready;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v228_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v228_0_ce0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v228_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v228_0_ce1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v228_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v228_1_ce0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v228_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v228_1_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_285_grp_fu_1488_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_285_grp_fu_1488_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_285_grp_fu_1488_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_285_grp_fu_1488_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_285_grp_fu_1492_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_285_grp_fu_1492_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_285_grp_fu_1492_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_285_grp_fu_1496_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_285_grp_fu_1496_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_285_grp_fu_1496_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_317_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_317_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_317_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_317_ap_ready;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v228_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v228_0_ce0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v228_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v228_0_ce1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v228_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v228_1_ce0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v228_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v228_1_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_317_grp_fu_1488_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_317_grp_fu_1488_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_317_grp_fu_1488_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_317_grp_fu_1488_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_317_grp_fu_1492_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_317_grp_fu_1492_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_317_grp_fu_1492_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_317_grp_fu_1496_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_317_grp_fu_1496_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_317_grp_fu_1496_p_ce;
reg   [7:0] v6_reg_273;
wire    ap_CS_fsm_state17;
wire   [0:0] icmp_ln31_fu_389_p2;
reg    grp_kernel_2mm_node0_Pipeline_label_2_fu_285_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_26_fu_317_ap_start_reg;
wire   [63:0] p_cast387_fu_517_p1;
wire   [63:0] p_cast_fu_521_p1;
wire   [63:0] p_cast388_fu_545_p1;
wire   [63:0] p_cast389_fu_549_p1;
wire   [63:0] p_cast390_fu_573_p1;
wire   [63:0] p_cast391_fu_577_p1;
wire   [63:0] p_cast392_fu_601_p1;
wire   [63:0] p_cast393_fu_605_p1;
wire   [63:0] p_cast394_fu_629_p1;
wire   [63:0] p_cast395_fu_633_p1;
wire   [63:0] p_cast396_fu_702_p1;
wire   [63:0] p_cast397_fu_706_p1;
wire   [63:0] p_cast398_fu_774_p1;
wire   [63:0] p_cast399_fu_778_p1;
wire   [63:0] p_cast400_fu_782_p1;
wire   [63:0] p_cast401_fu_786_p1;
wire   [63:0] p_cast402_fu_790_p1;
wire   [63:0] p_cast403_fu_794_p1;
reg   [7:0] v5_fu_104;
wire   [0:0] icmp_ln32_fu_435_p2;
reg    ap_block_state1;
reg    v236_read_local;
reg    v224_ce1_local;
reg   [15:0] v224_address1_local;
reg    v224_ce0_local;
reg   [15:0] v224_address0_local;
wire   [6:0] lshr_ln_fu_409_p4;
wire   [6:0] mul_ln38_fu_423_p0;
wire   [8:0] mul_ln38_fu_423_p1;
wire   [6:0] tmp_fu_445_p4;
wire   [7:0] tmp_8_fu_455_p3;
wire   [7:0] empty_120_fu_477_p2;
wire   [7:0] empty_123_fu_487_p2;
wire   [7:0] empty_126_fu_497_p2;
wire   [7:0] empty_129_fu_507_p2;
wire   [15:0] grp_fu_887_p3;
wire   [15:0] grp_fu_895_p3;
wire   [7:0] empty_132_fu_525_p2;
wire   [7:0] empty_135_fu_535_p2;
wire   [15:0] grp_fu_903_p3;
wire   [15:0] grp_fu_911_p3;
wire   [7:0] empty_138_fu_553_p2;
wire   [7:0] add_ln32_fu_563_p2;
wire   [15:0] grp_fu_919_p3;
wire   [15:0] grp_fu_927_p3;
wire   [7:0] empty_143_fu_581_p2;
wire   [7:0] empty_146_fu_591_p2;
wire   [15:0] grp_fu_935_p3;
wire   [15:0] grp_fu_943_p3;
wire   [7:0] empty_149_fu_609_p2;
wire   [7:0] empty_152_fu_619_p2;
wire   [15:0] grp_fu_951_p3;
wire   [15:0] grp_fu_959_p3;
wire   [7:0] empty_155_fu_637_p2;
wire   [7:0] empty_158_fu_647_p2;
wire   [7:0] mul_ln34_fu_657_p0;
wire   [8:0] mul_ln34_fu_657_p1;
wire   [7:0] mul_ln49_fu_662_p0;
wire   [8:0] mul_ln49_fu_662_p1;
wire   [7:0] mul_ln62_fu_667_p0;
wire   [8:0] mul_ln62_fu_667_p1;
wire   [7:0] mul_ln75_fu_672_p0;
wire   [8:0] mul_ln75_fu_672_p1;
wire   [7:0] mul_ln88_fu_677_p0;
wire   [8:0] mul_ln88_fu_677_p1;
wire   [7:0] mul_ln101_fu_682_p0;
wire   [8:0] mul_ln101_fu_682_p1;
wire   [7:0] mul_ln114_fu_687_p0;
wire   [8:0] mul_ln114_fu_687_p1;
wire   [7:0] mul_ln127_fu_692_p0;
wire   [8:0] mul_ln127_fu_692_p1;
wire   [7:0] mul_ln140_fu_697_p0;
wire   [8:0] mul_ln140_fu_697_p1;
wire   [15:0] grp_fu_967_p3;
wire   [15:0] grp_fu_975_p3;
wire   [7:0] empty_161_fu_710_p2;
wire   [7:0] empty_164_fu_720_p2;
wire   [15:0] grp_fu_983_p3;
wire   [15:0] grp_fu_991_p3;
wire   [15:0] grp_fu_999_p3;
wire   [15:0] grp_fu_1007_p3;
wire   [15:0] grp_fu_1015_p3;
wire   [15:0] grp_fu_1023_p3;
wire   [7:0] mul_ln34_1_fu_798_p0;
wire   [8:0] mul_ln34_1_fu_798_p1;
wire   [7:0] mul_ln49_1_fu_803_p0;
wire   [8:0] mul_ln49_1_fu_803_p1;
wire   [7:0] mul_ln62_1_fu_808_p0;
wire   [8:0] mul_ln62_1_fu_808_p1;
wire   [7:0] mul_ln75_1_fu_813_p0;
wire   [8:0] mul_ln75_1_fu_813_p1;
wire   [7:0] mul_ln88_1_fu_818_p0;
wire   [8:0] mul_ln88_1_fu_818_p1;
wire   [7:0] mul_ln101_1_fu_823_p0;
wire   [8:0] mul_ln101_1_fu_823_p1;
wire   [7:0] mul_ln114_1_fu_828_p0;
wire   [8:0] mul_ln114_1_fu_828_p1;
wire   [7:0] mul_ln127_1_fu_833_p0;
wire   [8:0] mul_ln127_1_fu_833_p1;
wire   [7:0] mul_ln140_1_fu_838_p0;
wire   [8:0] mul_ln140_1_fu_838_p1;
wire   [7:0] grp_fu_887_p0;
wire   [7:0] grp_fu_887_p1;
wire   [7:0] grp_fu_887_p2;
wire   [7:0] grp_fu_895_p0;
wire   [7:0] grp_fu_895_p1;
wire   [7:0] grp_fu_895_p2;
wire   [7:0] grp_fu_903_p0;
wire   [7:0] grp_fu_903_p1;
wire   [7:0] grp_fu_903_p2;
wire   [7:0] grp_fu_911_p0;
wire   [7:0] grp_fu_911_p1;
wire   [7:0] grp_fu_911_p2;
wire   [7:0] grp_fu_919_p0;
wire   [7:0] grp_fu_919_p1;
wire   [7:0] grp_fu_919_p2;
wire   [7:0] grp_fu_927_p0;
wire   [7:0] grp_fu_927_p1;
wire   [7:0] grp_fu_927_p2;
wire   [7:0] grp_fu_935_p0;
wire   [7:0] grp_fu_935_p1;
wire   [7:0] grp_fu_935_p2;
wire   [7:0] grp_fu_943_p0;
wire   [7:0] grp_fu_943_p1;
wire   [7:0] grp_fu_943_p2;
wire   [7:0] grp_fu_951_p0;
wire   [7:0] grp_fu_951_p1;
wire   [7:0] grp_fu_951_p2;
wire   [7:0] grp_fu_959_p0;
wire   [7:0] grp_fu_959_p1;
wire   [7:0] grp_fu_959_p2;
wire   [7:0] grp_fu_967_p0;
wire   [7:0] grp_fu_967_p1;
wire   [7:0] grp_fu_967_p2;
wire   [7:0] grp_fu_975_p0;
wire   [7:0] grp_fu_975_p1;
wire   [7:0] grp_fu_975_p2;
wire   [7:0] grp_fu_983_p0;
wire   [7:0] grp_fu_983_p1;
wire   [7:0] grp_fu_983_p2;
wire   [7:0] grp_fu_991_p0;
wire   [7:0] grp_fu_991_p1;
wire   [7:0] grp_fu_991_p2;
wire   [7:0] grp_fu_999_p0;
wire   [7:0] grp_fu_999_p1;
wire   [7:0] grp_fu_999_p2;
wire   [7:0] grp_fu_1007_p0;
wire   [7:0] grp_fu_1007_p1;
wire   [7:0] grp_fu_1007_p2;
wire   [7:0] grp_fu_1015_p0;
wire   [7:0] grp_fu_1015_p1;
wire   [7:0] grp_fu_1015_p2;
wire   [7:0] grp_fu_1023_p0;
wire   [7:0] grp_fu_1023_p1;
wire   [7:0] grp_fu_1023_p2;
reg    grp_fu_999_ce;
reg    grp_fu_1007_ce;
reg    grp_fu_1015_ce;
reg    grp_fu_1023_ce;
reg   [31:0] grp_fu_1488_p0;
reg   [31:0] grp_fu_1488_p1;
reg    grp_fu_1488_ce;
reg   [31:0] grp_fu_1492_p0;
reg   [31:0] grp_fu_1492_p1;
reg    grp_fu_1492_ce;
reg   [31:0] grp_fu_1496_p0;
reg   [31:0] grp_fu_1496_p1;
reg    grp_fu_1496_ce;
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
wire   [15:0] grp_fu_1007_p00;
wire   [15:0] grp_fu_1015_p00;
wire   [15:0] grp_fu_1023_p00;
wire   [15:0] grp_fu_887_p00;
wire   [15:0] grp_fu_895_p00;
wire   [15:0] grp_fu_903_p00;
wire   [15:0] grp_fu_911_p00;
wire   [15:0] grp_fu_919_p00;
wire   [15:0] grp_fu_927_p00;
wire   [15:0] grp_fu_935_p00;
wire   [15:0] grp_fu_943_p00;
wire   [15:0] grp_fu_951_p00;
wire   [15:0] grp_fu_959_p00;
wire   [15:0] grp_fu_967_p00;
wire   [15:0] grp_fu_975_p00;
wire   [15:0] grp_fu_983_p00;
wire   [15:0] grp_fu_991_p00;
wire   [15:0] grp_fu_999_p00;
wire   [14:0] mul_ln38_fu_423_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_2_fu_285_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_26_fu_317_ap_start_reg = 1'b0;
#0 v5_fu_104 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_2 grp_kernel_2mm_node0_Pipeline_label_2_fu_285(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_2_fu_285_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_2_fu_285_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_2_fu_285_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_2_fu_285_ap_ready),.mul_ln38(mul_ln38_reg_1080),.v228_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v228_0_ce1),.v228_0_q1(v228_0_q1),.v228_1_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v228_1_ce1),.v228_1_q1(v228_1_q1),.mul_ln34(mul_ln34_reg_1246),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v229_d1),.v229_q1(v229_q1),.mul_ln49(mul_ln49_reg_1251),.mul_ln62(mul_ln62_reg_1256),.mul_ln75(mul_ln75_reg_1261),.mul_ln88(mul_ln88_reg_1266),.mul_ln101(mul_ln101_reg_1271),.mul_ln114(mul_ln114_reg_1276),.mul_ln127(mul_ln127_reg_1281),.mul_ln140(mul_ln140_reg_1286),.v4(v4),.cmp11(cmp11_reg_1086),.empty(trunc_ln31_reg_1074),.v11(v11_reg_1323),.v24(v24_reg_1328),.v35(v35_reg_1333),.v46(v46_reg_1338),.v57(v57_reg_1343),.v68(v68_reg_1348),.v79(v79_reg_1353),.v90(v90_reg_1358),.v101(v101_reg_1363),.grp_fu_1488_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_285_grp_fu_1488_p_din0),.grp_fu_1488_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_285_grp_fu_1488_p_din1),.grp_fu_1488_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_285_grp_fu_1488_p_opcode),.grp_fu_1488_p_dout0(grp_fu_124_p_dout0),.grp_fu_1488_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_285_grp_fu_1488_p_ce),.grp_fu_1492_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_285_grp_fu_1492_p_din0),.grp_fu_1492_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_285_grp_fu_1492_p_din1),.grp_fu_1492_p_dout0(grp_fu_128_p_dout0),.grp_fu_1492_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_285_grp_fu_1492_p_ce),.grp_fu_1496_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_285_grp_fu_1496_p_din0),.grp_fu_1496_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_285_grp_fu_1496_p_din1),.grp_fu_1496_p_dout0(grp_fu_132_p_dout0),.grp_fu_1496_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_285_grp_fu_1496_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_26 grp_kernel_2mm_node0_Pipeline_label_26_fu_317(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_26_fu_317_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_26_fu_317_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_26_fu_317_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_26_fu_317_ap_ready),.mul_ln38(mul_ln38_reg_1080),.v228_0_address0(grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v228_0_ce1),.v228_0_q1(v228_0_q1),.v228_1_address0(grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v228_1_ce1),.v228_1_q1(v228_1_q1),.mul_ln34_1(mul_ln34_1_reg_1398),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v229_d1),.v229_q1(v229_q1),.mul_ln49_1(mul_ln49_1_reg_1403),.mul_ln62_1(mul_ln62_1_reg_1408),.mul_ln75_1(mul_ln75_1_reg_1413),.mul_ln88_1(mul_ln88_1_reg_1418),.mul_ln101_1(mul_ln101_1_reg_1423),.mul_ln114_1(mul_ln114_1_reg_1428),.mul_ln127_1(mul_ln127_1_reg_1433),.mul_ln140_1(mul_ln140_1_reg_1438),.v4(v4),.cmp11(cmp11_reg_1086),.empty(trunc_ln31_reg_1074),.v11_1(v11_1_reg_1443),.v24_1(v24_1_reg_1448),.v35_1(v35_1_reg_1453),.v46_1(v46_1_reg_1458),.v57_1(v57_1_reg_1463),.v68_1(v68_1_reg_1468),.v79_1(v79_1_reg_1473),.v90_1(v90_1_reg_1478),.v101_1(v101_1_reg_1483),.grp_fu_1488_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_317_grp_fu_1488_p_din0),.grp_fu_1488_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_317_grp_fu_1488_p_din1),.grp_fu_1488_p_opcode(grp_kernel_2mm_node0_Pipeline_label_26_fu_317_grp_fu_1488_p_opcode),.grp_fu_1488_p_dout0(grp_fu_124_p_dout0),.grp_fu_1488_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_317_grp_fu_1488_p_ce),.grp_fu_1492_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_317_grp_fu_1492_p_din0),.grp_fu_1492_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_317_grp_fu_1492_p_din1),.grp_fu_1492_p_dout0(grp_fu_128_p_dout0),.grp_fu_1492_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_317_grp_fu_1492_p_ce),.grp_fu_1496_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_317_grp_fu_1496_p_din0),.grp_fu_1496_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_317_grp_fu_1496_p_din1),.grp_fu_1496_p_dout0(grp_fu_132_p_dout0),.grp_fu_1496_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_317_grp_fu_1496_p_ce));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U180(.din0(mul_ln38_fu_423_p0),.din1(mul_ln38_fu_423_p1),.dout(mul_ln38_fu_423_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U181(.din0(mul_ln34_fu_657_p0),.din1(mul_ln34_fu_657_p1),.dout(mul_ln34_fu_657_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U182(.din0(mul_ln49_fu_662_p0),.din1(mul_ln49_fu_662_p1),.dout(mul_ln49_fu_662_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U183(.din0(mul_ln62_fu_667_p0),.din1(mul_ln62_fu_667_p1),.dout(mul_ln62_fu_667_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U184(.din0(mul_ln75_fu_672_p0),.din1(mul_ln75_fu_672_p1),.dout(mul_ln75_fu_672_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U185(.din0(mul_ln88_fu_677_p0),.din1(mul_ln88_fu_677_p1),.dout(mul_ln88_fu_677_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U186(.din0(mul_ln101_fu_682_p0),.din1(mul_ln101_fu_682_p1),.dout(mul_ln101_fu_682_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U187(.din0(mul_ln114_fu_687_p0),.din1(mul_ln114_fu_687_p1),.dout(mul_ln114_fu_687_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U188(.din0(mul_ln127_fu_692_p0),.din1(mul_ln127_fu_692_p1),.dout(mul_ln127_fu_692_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U189(.din0(mul_ln140_fu_697_p0),.din1(mul_ln140_fu_697_p1),.dout(mul_ln140_fu_697_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U190(.din0(mul_ln34_1_fu_798_p0),.din1(mul_ln34_1_fu_798_p1),.dout(mul_ln34_1_fu_798_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U191(.din0(mul_ln49_1_fu_803_p0),.din1(mul_ln49_1_fu_803_p1),.dout(mul_ln49_1_fu_803_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U192(.din0(mul_ln62_1_fu_808_p0),.din1(mul_ln62_1_fu_808_p1),.dout(mul_ln62_1_fu_808_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U193(.din0(mul_ln75_1_fu_813_p0),.din1(mul_ln75_1_fu_813_p1),.dout(mul_ln75_1_fu_813_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U194(.din0(mul_ln88_1_fu_818_p0),.din1(mul_ln88_1_fu_818_p1),.dout(mul_ln88_1_fu_818_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U195(.din0(mul_ln101_1_fu_823_p0),.din1(mul_ln101_1_fu_823_p1),.dout(mul_ln101_1_fu_823_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U196(.din0(mul_ln114_1_fu_828_p0),.din1(mul_ln114_1_fu_828_p1),.dout(mul_ln114_1_fu_828_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U197(.din0(mul_ln127_1_fu_833_p0),.din1(mul_ln127_1_fu_833_p1),.dout(mul_ln127_1_fu_833_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U198(.din0(mul_ln140_1_fu_838_p0),.din1(mul_ln140_1_fu_838_p1),.dout(mul_ln140_1_fu_838_p2));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U199(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_887_p0),.din1(grp_fu_887_p1),.din2(grp_fu_887_p2),.ce(1'b1),.dout(grp_fu_887_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U200(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_895_p0),.din1(grp_fu_895_p1),.din2(grp_fu_895_p2),.ce(1'b1),.dout(grp_fu_895_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U201(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_903_p0),.din1(grp_fu_903_p1),.din2(grp_fu_903_p2),.ce(1'b1),.dout(grp_fu_903_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U202(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_911_p0),.din1(grp_fu_911_p1),.din2(grp_fu_911_p2),.ce(1'b1),.dout(grp_fu_911_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U203(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_919_p0),.din1(grp_fu_919_p1),.din2(grp_fu_919_p2),.ce(1'b1),.dout(grp_fu_919_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U204(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_927_p0),.din1(grp_fu_927_p1),.din2(grp_fu_927_p2),.ce(1'b1),.dout(grp_fu_927_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U205(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_935_p0),.din1(grp_fu_935_p1),.din2(grp_fu_935_p2),.ce(1'b1),.dout(grp_fu_935_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U206(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_943_p0),.din1(grp_fu_943_p1),.din2(grp_fu_943_p2),.ce(1'b1),.dout(grp_fu_943_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U207(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_951_p0),.din1(grp_fu_951_p1),.din2(grp_fu_951_p2),.ce(1'b1),.dout(grp_fu_951_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U208(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_959_p0),.din1(grp_fu_959_p1),.din2(grp_fu_959_p2),.ce(1'b1),.dout(grp_fu_959_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U209(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_967_p0),.din1(grp_fu_967_p1),.din2(grp_fu_967_p2),.ce(1'b1),.dout(grp_fu_967_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U210(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_975_p0),.din1(grp_fu_975_p1),.din2(grp_fu_975_p2),.ce(1'b1),.dout(grp_fu_975_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U211(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_983_p0),.din1(grp_fu_983_p1),.din2(grp_fu_983_p2),.ce(1'b1),.dout(grp_fu_983_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U212(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_991_p0),.din1(grp_fu_991_p1),.din2(grp_fu_991_p2),.ce(1'b1),.dout(grp_fu_991_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U213(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_999_p0),.din1(grp_fu_999_p1),.din2(grp_fu_999_p2),.ce(grp_fu_999_ce),.dout(grp_fu_999_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U214(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1007_p0),.din1(grp_fu_1007_p1),.din2(grp_fu_1007_p2),.ce(grp_fu_1007_ce),.dout(grp_fu_1007_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U215(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1015_p0),.din1(grp_fu_1015_p1),.din2(grp_fu_1015_p2),.ce(grp_fu_1015_ce),.dout(grp_fu_1015_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U216(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1023_p0),.din1(grp_fu_1023_p1),.din2(grp_fu_1023_p2),.ce(grp_fu_1023_ce),.dout(grp_fu_1023_p3));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_26_fu_317_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node0_Pipeline_label_26_fu_317_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_26_fu_317_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_26_fu_317_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_2_fu_285_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_285_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_285_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_285_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_104 <= 8'd0;
    end else if (((icmp_ln32_fu_435_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v5_fu_104 <= add_ln31_reg_1047;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln31_fu_389_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v6_reg_273 <= 8'd0;
    end else if (((grp_kernel_2mm_node0_Pipeline_label_26_fu_317_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        v6_reg_273 <= add_ln32_1_reg_1107;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln31_reg_1047 <= add_ln31_fu_395_p2;
        cmp11_reg_1086 <= cmp11_fu_429_p2;
        mul_ln38_reg_1080 <= mul_ln38_fu_423_p2;
        trunc_ln31_reg_1074 <= trunc_ln31_fu_405_p1;
        zext_ln31_reg_1052[7 : 0] <= zext_ln31_fu_401_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_1_reg_1107 <= add_ln32_1_fu_467_p2;
        tmp_8_cast_reg_1101[7 : 1] <= tmp_8_cast_fu_463_p1[7 : 1];
        v6_cast_reg_1095[7 : 0] <= v6_cast_fu_441_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        add_ln32_cast378_reg_1174[7 : 0] <= add_ln32_cast378_fu_569_p1[7 : 0];
        p_cast377_reg_1168[7 : 0] <= p_cast377_fu_559_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln101_1_reg_1423 <= mul_ln101_1_fu_823_p2;
        mul_ln114_1_reg_1428 <= mul_ln114_1_fu_828_p2;
        mul_ln127_1_reg_1433 <= mul_ln127_1_fu_833_p2;
        mul_ln140_1_reg_1438 <= mul_ln140_1_fu_838_p2;
        mul_ln34_1_reg_1398 <= mul_ln34_1_fu_798_p2;
        mul_ln49_1_reg_1403 <= mul_ln49_1_fu_803_p2;
        mul_ln62_1_reg_1408 <= mul_ln62_1_fu_808_p2;
        mul_ln75_1_reg_1413 <= mul_ln75_1_fu_813_p2;
        mul_ln88_1_reg_1418 <= mul_ln88_1_fu_818_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        mul_ln101_reg_1271 <= mul_ln101_fu_682_p2;
        mul_ln114_reg_1276 <= mul_ln114_fu_687_p2;
        mul_ln127_reg_1281 <= mul_ln127_fu_692_p2;
        mul_ln140_reg_1286 <= mul_ln140_fu_697_p2;
        mul_ln34_reg_1246 <= mul_ln34_fu_657_p2;
        mul_ln49_reg_1251 <= mul_ln49_fu_662_p2;
        mul_ln62_reg_1256 <= mul_ln62_fu_667_p2;
        mul_ln75_reg_1261 <= mul_ln75_fu_672_p2;
        mul_ln88_reg_1266 <= mul_ln88_fu_677_p2;
        p_cast385_reg_1311[7 : 0] <= p_cast385_fu_716_p1[7 : 0];
        p_cast386_reg_1317[7 : 0] <= p_cast386_fu_726_p1[7 : 0];
        v224_load_8_reg_1291 <= v224_q1;
        v224_load_9_reg_1296 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        p_cast371_reg_1112[7 : 0] <= p_cast371_fu_483_p1[7 : 0];
        p_cast372_reg_1118[7 : 0] <= p_cast372_fu_493_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        p_cast373_reg_1124[7 : 0] <= p_cast373_fu_503_p1[7 : 0];
        p_cast374_reg_1130[7 : 0] <= p_cast374_fu_513_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        p_cast375_reg_1146[7 : 0] <= p_cast375_fu_531_p1[7 : 0];
        p_cast376_reg_1152[7 : 0] <= p_cast376_fu_541_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        p_cast379_reg_1190[7 : 0] <= p_cast379_fu_587_p1[7 : 0];
        p_cast380_reg_1196[7 : 0] <= p_cast380_fu_597_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        p_cast381_reg_1212[7 : 0] <= p_cast381_fu_615_p1[7 : 0];
        p_cast382_reg_1218[7 : 0] <= p_cast382_fu_625_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        p_cast383_reg_1234[7 : 0] <= p_cast383_fu_643_p1[7 : 0];
        p_cast384_reg_1240[7 : 0] <= p_cast384_fu_653_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7))) begin
        reg_349 <= v224_q1;
        reg_353 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_357 <= v224_q1;
        reg_361 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9))) begin
        reg_365 <= v224_q1;
        reg_369 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10))) begin
        reg_373 <= v224_q1;
        reg_377 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        v101_1_reg_1483 <= v101_1_fu_882_p1;
        v11_1_reg_1443 <= v11_1_fu_843_p1;
        v24_1_reg_1448 <= v24_1_fu_847_p1;
        v35_1_reg_1453 <= v35_1_fu_852_p1;
        v46_1_reg_1458 <= v46_1_fu_857_p1;
        v57_1_reg_1463 <= v57_1_fu_862_p1;
        v68_1_reg_1468 <= v68_1_fu_867_p1;
        v79_1_reg_1473 <= v79_1_fu_872_p1;
        v90_1_reg_1478 <= v90_1_fu_877_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        v101_reg_1363 <= v101_fu_770_p1;
        v11_reg_1323 <= v11_fu_730_p1;
        v24_reg_1328 <= v24_fu_735_p1;
        v35_reg_1333 <= v35_fu_740_p1;
        v46_reg_1338 <= v46_fu_745_p1;
        v57_reg_1343 <= v57_fu_750_p1;
        v68_reg_1348 <= v68_fu_755_p1;
        v79_reg_1353 <= v79_fu_760_p1;
        v90_reg_1358 <= v90_fu_765_p1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_285_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
    end
end
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_26_fu_317_ap_done == 1'b0)) begin
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
    if ((((icmp_ln31_fu_389_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((icmp_ln31_fu_389_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_285_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1007_ce = 1'b1;
    end else begin
        grp_fu_1007_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state14) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_285_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1015_ce = 1'b1;
    end else begin
        grp_fu_1015_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state14) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_285_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1023_ce = 1'b1;
    end else begin
        grp_fu_1023_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1488_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_317_grp_fu_1488_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1488_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_285_grp_fu_1488_p_ce;
    end else begin
        grp_fu_1488_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1488_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_317_grp_fu_1488_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1488_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_285_grp_fu_1488_p_din0;
    end else begin
        grp_fu_1488_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1488_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_317_grp_fu_1488_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1488_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_285_grp_fu_1488_p_din1;
    end else begin
        grp_fu_1488_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1492_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_317_grp_fu_1492_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1492_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_285_grp_fu_1492_p_ce;
    end else begin
        grp_fu_1492_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1492_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_317_grp_fu_1492_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1492_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_285_grp_fu_1492_p_din0;
    end else begin
        grp_fu_1492_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1492_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_317_grp_fu_1492_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1492_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_285_grp_fu_1492_p_din1;
    end else begin
        grp_fu_1492_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1496_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_317_grp_fu_1496_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1496_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_285_grp_fu_1496_p_ce;
    end else begin
        grp_fu_1496_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1496_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_317_grp_fu_1496_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1496_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_285_grp_fu_1496_p_din0;
    end else begin
        grp_fu_1496_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1496_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_317_grp_fu_1496_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1496_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_285_grp_fu_1496_p_din1;
    end else begin
        grp_fu_1496_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_285_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_999_ce = 1'b1;
    end else begin
        grp_fu_999_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_address0_local = p_cast403_fu_794_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_address0_local = p_cast401_fu_786_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_address0_local = p_cast399_fu_778_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_address0_local = p_cast397_fu_706_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address0_local = p_cast395_fu_633_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address0_local = p_cast393_fu_605_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address0_local = p_cast391_fu_577_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address0_local = p_cast389_fu_549_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_address0_local = p_cast_fu_521_p1;
    end else begin
        v224_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_address1_local = p_cast402_fu_790_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_address1_local = p_cast400_fu_782_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_address1_local = p_cast398_fu_774_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_address1_local = p_cast396_fu_702_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address1_local = p_cast394_fu_629_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address1_local = p_cast392_fu_601_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address1_local = p_cast390_fu_573_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address1_local = p_cast388_fu_545_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_address1_local = p_cast387_fu_517_p1;
    end else begin
        v224_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_285_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        v224_ce0_local = 1'b1;
    end else begin
        v224_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_285_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        v224_ce1_local = 1'b1;
    end else begin
        v224_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_0_address0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v228_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_0_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v228_0_address0;
    end else begin
        v228_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_0_address1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v228_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_0_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v228_0_address1;
    end else begin
        v228_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v228_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v228_0_ce0;
    end else begin
        v228_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v228_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v228_0_ce1;
    end else begin
        v228_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_1_address0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v228_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_1_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v228_1_address0;
    end else begin
        v228_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_1_address1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v228_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_1_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v228_1_address1;
    end else begin
        v228_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v228_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v228_1_ce0;
    end else begin
        v228_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v228_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v228_1_ce1;
    end else begin
        v228_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v229_address0;
    end else begin
        v229_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v229_address1;
    end else begin
        v229_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v229_ce0;
    end else begin
        v229_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v229_ce1;
    end else begin
        v229_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v229_d0;
    end else begin
        v229_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v229_d1;
    end else begin
        v229_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v229_we0;
    end else begin
        v229_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_317_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_285_v229_we1;
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
            if (((icmp_ln31_fu_389_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln32_fu_435_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_285_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_26_fu_317_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
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
assign add_ln31_fu_395_p2 = (v5_fu_104 + 8'd1);
assign add_ln32_1_fu_467_p2 = (v6_reg_273 + 8'd18);
assign add_ln32_cast378_fu_569_p1 = add_ln32_fu_563_p2;
assign add_ln32_fu_563_p2 = (v6_reg_273 + 8'd9);
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
assign cmp11_fu_429_p2 = ((v5_fu_104 == 8'd0) ? 1'b1 : 1'b0);
assign empty_120_fu_477_p2 = (v6_reg_273 + 8'd2);
assign empty_123_fu_487_p2 = (v6_reg_273 + 8'd3);
assign empty_126_fu_497_p2 = (v6_reg_273 + 8'd4);
assign empty_129_fu_507_p2 = (v6_reg_273 + 8'd5);
assign empty_132_fu_525_p2 = (v6_reg_273 + 8'd6);
assign empty_135_fu_535_p2 = (v6_reg_273 + 8'd7);
assign empty_138_fu_553_p2 = (v6_reg_273 + 8'd8);
assign empty_143_fu_581_p2 = (v6_reg_273 + 8'd10);
assign empty_146_fu_591_p2 = (v6_reg_273 + 8'd11);
assign empty_149_fu_609_p2 = (v6_reg_273 + 8'd12);
assign empty_152_fu_619_p2 = (v6_reg_273 + 8'd13);
assign empty_155_fu_637_p2 = (v6_reg_273 + 8'd14);
assign empty_158_fu_647_p2 = (v6_reg_273 + 8'd15);
assign empty_161_fu_710_p2 = (v6_reg_273 + 8'd16);
assign empty_164_fu_720_p2 = (v6_reg_273 + 8'd17);
assign grp_fu_1007_p0 = grp_fu_1007_p00;
assign grp_fu_1007_p00 = empty_158_fu_647_p2;
assign grp_fu_1007_p1 = 16'd190;
assign grp_fu_1007_p2 = zext_ln31_reg_1052;
assign grp_fu_1015_p0 = grp_fu_1015_p00;
assign grp_fu_1015_p00 = empty_161_fu_710_p2;
assign grp_fu_1015_p1 = 16'd190;
assign grp_fu_1015_p2 = zext_ln31_reg_1052;
assign grp_fu_1023_p0 = grp_fu_1023_p00;
assign grp_fu_1023_p00 = empty_164_fu_720_p2;
assign grp_fu_1023_p1 = 16'd190;
assign grp_fu_1023_p2 = zext_ln31_reg_1052;
assign grp_fu_124_p_ce = grp_fu_1488_ce;
assign grp_fu_124_p_din0 = grp_fu_1488_p0;
assign grp_fu_124_p_din1 = grp_fu_1488_p1;
assign grp_fu_124_p_opcode = 2'd0;
assign grp_fu_128_p_ce = grp_fu_1492_ce;
assign grp_fu_128_p_din0 = grp_fu_1492_p0;
assign grp_fu_128_p_din1 = grp_fu_1492_p1;
assign grp_fu_132_p_ce = grp_fu_1496_ce;
assign grp_fu_132_p_din0 = grp_fu_1496_p0;
assign grp_fu_132_p_din1 = grp_fu_1496_p1;
assign grp_fu_887_p0 = grp_fu_887_p00;
assign grp_fu_887_p00 = v6_reg_273;
assign grp_fu_887_p1 = 16'd190;
assign grp_fu_887_p2 = zext_ln31_reg_1052;
assign grp_fu_895_p0 = grp_fu_895_p00;
assign grp_fu_895_p00 = tmp_8_fu_455_p3;
assign grp_fu_895_p1 = 16'd190;
assign grp_fu_895_p2 = zext_ln31_reg_1052;
assign grp_fu_903_p0 = grp_fu_903_p00;
assign grp_fu_903_p00 = empty_120_fu_477_p2;
assign grp_fu_903_p1 = 16'd190;
assign grp_fu_903_p2 = zext_ln31_reg_1052;
assign grp_fu_911_p0 = grp_fu_911_p00;
assign grp_fu_911_p00 = empty_123_fu_487_p2;
assign grp_fu_911_p1 = 16'd190;
assign grp_fu_911_p2 = zext_ln31_reg_1052;
assign grp_fu_919_p0 = grp_fu_919_p00;
assign grp_fu_919_p00 = empty_126_fu_497_p2;
assign grp_fu_919_p1 = 16'd190;
assign grp_fu_919_p2 = zext_ln31_reg_1052;
assign grp_fu_927_p0 = grp_fu_927_p00;
assign grp_fu_927_p00 = empty_129_fu_507_p2;
assign grp_fu_927_p1 = 16'd190;
assign grp_fu_927_p2 = zext_ln31_reg_1052;
assign grp_fu_935_p0 = grp_fu_935_p00;
assign grp_fu_935_p00 = empty_132_fu_525_p2;
assign grp_fu_935_p1 = 16'd190;
assign grp_fu_935_p2 = zext_ln31_reg_1052;
assign grp_fu_943_p0 = grp_fu_943_p00;
assign grp_fu_943_p00 = empty_135_fu_535_p2;
assign grp_fu_943_p1 = 16'd190;
assign grp_fu_943_p2 = zext_ln31_reg_1052;
assign grp_fu_951_p0 = grp_fu_951_p00;
assign grp_fu_951_p00 = empty_138_fu_553_p2;
assign grp_fu_951_p1 = 16'd190;
assign grp_fu_951_p2 = zext_ln31_reg_1052;
assign grp_fu_959_p0 = grp_fu_959_p00;
assign grp_fu_959_p00 = add_ln32_fu_563_p2;
assign grp_fu_959_p1 = 16'd190;
assign grp_fu_959_p2 = zext_ln31_reg_1052;
assign grp_fu_967_p0 = grp_fu_967_p00;
assign grp_fu_967_p00 = empty_143_fu_581_p2;
assign grp_fu_967_p1 = 16'd190;
assign grp_fu_967_p2 = zext_ln31_reg_1052;
assign grp_fu_975_p0 = grp_fu_975_p00;
assign grp_fu_975_p00 = empty_146_fu_591_p2;
assign grp_fu_975_p1 = 16'd190;
assign grp_fu_975_p2 = zext_ln31_reg_1052;
assign grp_fu_983_p0 = grp_fu_983_p00;
assign grp_fu_983_p00 = empty_149_fu_609_p2;
assign grp_fu_983_p1 = 16'd190;
assign grp_fu_983_p2 = zext_ln31_reg_1052;
assign grp_fu_991_p0 = grp_fu_991_p00;
assign grp_fu_991_p00 = empty_152_fu_619_p2;
assign grp_fu_991_p1 = 16'd190;
assign grp_fu_991_p2 = zext_ln31_reg_1052;
assign grp_fu_999_p0 = grp_fu_999_p00;
assign grp_fu_999_p00 = empty_155_fu_637_p2;
assign grp_fu_999_p1 = 16'd190;
assign grp_fu_999_p2 = zext_ln31_reg_1052;
assign grp_kernel_2mm_node0_Pipeline_label_26_fu_317_ap_start = grp_kernel_2mm_node0_Pipeline_label_26_fu_317_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_2_fu_285_ap_start = grp_kernel_2mm_node0_Pipeline_label_2_fu_285_ap_start_reg;
assign icmp_ln31_fu_389_p2 = ((v5_fu_104 == 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_435_p2 = ((v6_reg_273 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln_fu_409_p4 = {{v5_fu_104[7:1]}};
assign mul_ln101_1_fu_823_p0 = p_cast383_reg_1234;
assign mul_ln101_1_fu_823_p1 = 16'd220;
assign mul_ln101_fu_682_p0 = p_cast374_reg_1130;
assign mul_ln101_fu_682_p1 = 16'd220;
assign mul_ln114_1_fu_828_p0 = p_cast384_reg_1240;
assign mul_ln114_1_fu_828_p1 = 16'd220;
assign mul_ln114_fu_687_p0 = p_cast375_reg_1146;
assign mul_ln114_fu_687_p1 = 16'd220;
assign mul_ln127_1_fu_833_p0 = p_cast385_reg_1311;
assign mul_ln127_1_fu_833_p1 = 16'd220;
assign mul_ln127_fu_692_p0 = p_cast376_reg_1152;
assign mul_ln127_fu_692_p1 = 16'd220;
assign mul_ln140_1_fu_838_p0 = p_cast386_reg_1317;
assign mul_ln140_1_fu_838_p1 = 16'd220;
assign mul_ln140_fu_697_p0 = p_cast377_reg_1168;
assign mul_ln140_fu_697_p1 = 16'd220;
assign mul_ln34_1_fu_798_p0 = add_ln32_cast378_reg_1174;
assign mul_ln34_1_fu_798_p1 = 16'd220;
assign mul_ln34_fu_657_p0 = v6_cast_reg_1095;
assign mul_ln34_fu_657_p1 = 16'd220;
assign mul_ln38_fu_423_p0 = mul_ln38_fu_423_p00;
assign mul_ln38_fu_423_p00 = lshr_ln_fu_409_p4;
assign mul_ln38_fu_423_p1 = 15'd220;
assign mul_ln49_1_fu_803_p0 = p_cast379_reg_1190;
assign mul_ln49_1_fu_803_p1 = 16'd220;
assign mul_ln49_fu_662_p0 = tmp_8_cast_reg_1101;
assign mul_ln49_fu_662_p1 = 16'd220;
assign mul_ln62_1_fu_808_p0 = p_cast380_reg_1196;
assign mul_ln62_1_fu_808_p1 = 16'd220;
assign mul_ln62_fu_667_p0 = p_cast371_reg_1112;
assign mul_ln62_fu_667_p1 = 16'd220;
assign mul_ln75_1_fu_813_p0 = p_cast381_reg_1212;
assign mul_ln75_1_fu_813_p1 = 16'd220;
assign mul_ln75_fu_672_p0 = p_cast372_reg_1118;
assign mul_ln75_fu_672_p1 = 16'd220;
assign mul_ln88_1_fu_818_p0 = p_cast382_reg_1218;
assign mul_ln88_1_fu_818_p1 = 16'd220;
assign mul_ln88_fu_677_p0 = p_cast373_reg_1124;
assign mul_ln88_fu_677_p1 = 16'd220;
assign p_cast371_fu_483_p1 = empty_120_fu_477_p2;
assign p_cast372_fu_493_p1 = empty_123_fu_487_p2;
assign p_cast373_fu_503_p1 = empty_126_fu_497_p2;
assign p_cast374_fu_513_p1 = empty_129_fu_507_p2;
assign p_cast375_fu_531_p1 = empty_132_fu_525_p2;
assign p_cast376_fu_541_p1 = empty_135_fu_535_p2;
assign p_cast377_fu_559_p1 = empty_138_fu_553_p2;
assign p_cast379_fu_587_p1 = empty_143_fu_581_p2;
assign p_cast380_fu_597_p1 = empty_146_fu_591_p2;
assign p_cast381_fu_615_p1 = empty_149_fu_609_p2;
assign p_cast382_fu_625_p1 = empty_152_fu_619_p2;
assign p_cast383_fu_643_p1 = empty_155_fu_637_p2;
assign p_cast384_fu_653_p1 = empty_158_fu_647_p2;
assign p_cast385_fu_716_p1 = empty_161_fu_710_p2;
assign p_cast386_fu_726_p1 = empty_164_fu_720_p2;
assign p_cast387_fu_517_p1 = grp_fu_887_p3;
assign p_cast388_fu_545_p1 = grp_fu_903_p3;
assign p_cast389_fu_549_p1 = grp_fu_911_p3;
assign p_cast390_fu_573_p1 = grp_fu_919_p3;
assign p_cast391_fu_577_p1 = grp_fu_927_p3;
assign p_cast392_fu_601_p1 = grp_fu_935_p3;
assign p_cast393_fu_605_p1 = grp_fu_943_p3;
assign p_cast394_fu_629_p1 = grp_fu_951_p3;
assign p_cast395_fu_633_p1 = grp_fu_959_p3;
assign p_cast396_fu_702_p1 = grp_fu_967_p3;
assign p_cast397_fu_706_p1 = grp_fu_975_p3;
assign p_cast398_fu_774_p1 = grp_fu_983_p3;
assign p_cast399_fu_778_p1 = grp_fu_991_p3;
assign p_cast400_fu_782_p1 = grp_fu_999_p3;
assign p_cast401_fu_786_p1 = grp_fu_1007_p3;
assign p_cast402_fu_790_p1 = grp_fu_1015_p3;
assign p_cast403_fu_794_p1 = grp_fu_1023_p3;
assign p_cast_fu_521_p1 = grp_fu_895_p3;
assign tmp_8_cast_fu_463_p1 = tmp_8_fu_455_p3;
assign tmp_8_fu_455_p3 = {{tmp_fu_445_p4}, {1'd1}};
assign tmp_fu_445_p4 = {{v6_reg_273[7:1]}};
assign trunc_ln31_fu_405_p1 = v5_fu_104[0:0];
assign v101_1_fu_882_p1 = reg_377;
assign v101_fu_770_p1 = v224_load_8_reg_1291;
assign v11_1_fu_843_p1 = v224_load_9_reg_1296;
assign v11_fu_730_p1 = reg_349;
assign v224_address0 = v224_address0_local;
assign v224_address1 = v224_address1_local;
assign v224_ce0 = v224_ce0_local;
assign v224_ce1 = v224_ce1_local;
assign v236_read = v236_read_local;
assign v24_1_fu_847_p1 = reg_349;
assign v24_fu_735_p1 = reg_353;
assign v35_1_fu_852_p1 = reg_353;
assign v35_fu_740_p1 = reg_357;
assign v46_1_fu_857_p1 = reg_357;
assign v46_fu_745_p1 = reg_361;
assign v57_1_fu_862_p1 = reg_361;
assign v57_fu_750_p1 = reg_365;
assign v68_1_fu_867_p1 = reg_365;
assign v68_fu_755_p1 = reg_369;
assign v6_cast_fu_441_p1 = v6_reg_273;
assign v79_1_fu_872_p1 = reg_369;
assign v79_fu_760_p1 = reg_373;
assign v90_1_fu_877_p1 = reg_373;
assign v90_fu_765_p1 = reg_377;
assign zext_ln31_fu_401_p1 = v5_fu_104;
always @ (posedge ap_clk) begin
    zext_ln31_reg_1052[15:8] <= 8'b00000000;
    v6_cast_reg_1095[15:8] <= 8'b00000000;
    tmp_8_cast_reg_1101[0] <= 1'b1;
    tmp_8_cast_reg_1101[15:8] <= 8'b00000000;
    p_cast371_reg_1112[15:8] <= 8'b00000000;
    p_cast372_reg_1118[15:8] <= 8'b00000000;
    p_cast373_reg_1124[15:8] <= 8'b00000000;
    p_cast374_reg_1130[15:8] <= 8'b00000000;
    p_cast375_reg_1146[15:8] <= 8'b00000000;
    p_cast376_reg_1152[15:8] <= 8'b00000000;
    p_cast377_reg_1168[15:8] <= 8'b00000000;
    add_ln32_cast378_reg_1174[15:8] <= 8'b00000000;
    p_cast379_reg_1190[15:8] <= 8'b00000000;
    p_cast380_reg_1196[15:8] <= 8'b00000000;
    p_cast381_reg_1212[15:8] <= 8'b00000000;
    p_cast382_reg_1218[15:8] <= 8'b00000000;
    p_cast383_reg_1234[15:8] <= 8'b00000000;
    p_cast384_reg_1240[15:8] <= 8'b00000000;
    p_cast385_reg_1311[15:8] <= 8'b00000000;
    p_cast386_reg_1317[15:8] <= 8'b00000000;
end
endmodule 