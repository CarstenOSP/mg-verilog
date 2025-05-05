module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_address0,v224_ce0,v224_q0,v224_address1,v224_ce1,v224_q1,v228_0_address0,v228_0_ce0,v228_0_q0,v228_0_address1,v228_0_ce1,v228_0_q1,v228_1_address0,v228_1_ce0,v228_1_q0,v228_1_address1,v228_1_ce1,v228_1_q1,v228_2_address0,v228_2_ce0,v228_2_q0,v228_2_address1,v228_2_ce1,v228_2_q1,v228_3_address0,v228_3_ce0,v228_3_q0,v228_3_address1,v228_3_ce1,v228_3_q1,v229_address0,v229_ce0,v229_we0,v229_d0,v229_q0,v229_address1,v229_ce1,v229_we1,v229_d1,v229_q1,v4,grp_fu_132_p_din0,grp_fu_132_p_din1,grp_fu_132_p_opcode,grp_fu_132_p_dout0,grp_fu_132_p_ce,grp_fu_136_p_din0,grp_fu_136_p_din1,grp_fu_136_p_dout0,grp_fu_136_p_ce,grp_fu_140_p_din0,grp_fu_140_p_din1,grp_fu_140_p_dout0,grp_fu_140_p_ce); 
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
reg[13:0] v228_0_address0;
reg v228_0_ce0;
reg[13:0] v228_0_address1;
reg v228_0_ce1;
reg[13:0] v228_1_address0;
reg v228_1_ce0;
reg[13:0] v228_1_address1;
reg v228_1_ce1;
reg[13:0] v228_2_address0;
reg v228_2_ce0;
reg[13:0] v228_2_address1;
reg v228_2_ce1;
reg[13:0] v228_3_address0;
reg v228_3_ce0;
reg[13:0] v228_3_address1;
reg v228_3_ce1;
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
reg   [31:0] reg_365;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state12;
reg   [31:0] reg_369;
reg   [31:0] reg_373;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state13;
reg   [31:0] reg_377;
reg   [31:0] reg_381;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state14;
reg   [31:0] reg_385;
reg   [31:0] reg_389;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state15;
reg   [31:0] reg_393;
wire   [7:0] add_ln31_fu_411_p2;
reg   [7:0] add_ln31_reg_1063;
wire    ap_CS_fsm_state2;
wire   [15:0] zext_ln31_fu_417_p1;
reg   [15:0] zext_ln31_reg_1068;
wire   [1:0] trunc_ln31_fu_421_p1;
reg   [1:0] trunc_ln31_reg_1090;
wire   [13:0] mul_ln38_fu_439_p2;
reg   [13:0] mul_ln38_reg_1096;
wire   [0:0] cmp11_fu_445_p2;
reg   [0:0] cmp11_reg_1102;
wire   [15:0] v6_cast_fu_457_p1;
reg   [15:0] v6_cast_reg_1111;
wire    ap_CS_fsm_state3;
wire   [15:0] tmp_48_cast_fu_479_p1;
reg   [15:0] tmp_48_cast_reg_1117;
wire   [7:0] add_ln32_1_fu_483_p2;
reg   [7:0] add_ln32_1_reg_1123;
wire   [15:0] p_cast419_fu_499_p1;
reg   [15:0] p_cast419_reg_1128;
wire    ap_CS_fsm_state4;
wire   [15:0] p_cast420_fu_509_p1;
reg   [15:0] p_cast420_reg_1134;
wire   [15:0] p_cast421_fu_519_p1;
reg   [15:0] p_cast421_reg_1140;
wire    ap_CS_fsm_state5;
wire   [15:0] p_cast422_fu_529_p1;
reg   [15:0] p_cast422_reg_1146;
wire    ap_CS_fsm_state6;
wire   [15:0] p_cast423_fu_547_p1;
reg   [15:0] p_cast423_reg_1162;
wire   [15:0] p_cast424_fu_557_p1;
reg   [15:0] p_cast424_reg_1168;
wire   [15:0] p_cast425_fu_575_p1;
reg   [15:0] p_cast425_reg_1184;
wire   [15:0] add_ln32_cast426_fu_585_p1;
reg   [15:0] add_ln32_cast426_reg_1190;
wire   [15:0] p_cast427_fu_603_p1;
reg   [15:0] p_cast427_reg_1206;
wire   [15:0] p_cast428_fu_613_p1;
reg   [15:0] p_cast428_reg_1212;
wire   [15:0] p_cast429_fu_631_p1;
reg   [15:0] p_cast429_reg_1228;
wire   [15:0] p_cast430_fu_641_p1;
reg   [15:0] p_cast430_reg_1234;
wire   [15:0] p_cast431_fu_659_p1;
reg   [15:0] p_cast431_reg_1250;
wire   [15:0] p_cast432_fu_669_p1;
reg   [15:0] p_cast432_reg_1256;
wire   [15:0] mul_ln34_fu_673_p2;
reg   [15:0] mul_ln34_reg_1262;
wire    ap_CS_fsm_state11;
wire   [15:0] mul_ln49_fu_678_p2;
reg   [15:0] mul_ln49_reg_1267;
wire   [15:0] mul_ln62_fu_683_p2;
reg   [15:0] mul_ln62_reg_1272;
wire   [15:0] mul_ln75_fu_688_p2;
reg   [15:0] mul_ln75_reg_1277;
wire   [15:0] mul_ln88_fu_693_p2;
reg   [15:0] mul_ln88_reg_1282;
wire   [15:0] mul_ln101_fu_698_p2;
reg   [15:0] mul_ln101_reg_1287;
wire   [15:0] mul_ln114_fu_703_p2;
reg   [15:0] mul_ln114_reg_1292;
wire   [15:0] mul_ln127_fu_708_p2;
reg   [15:0] mul_ln127_reg_1297;
wire   [15:0] mul_ln140_fu_713_p2;
reg   [15:0] mul_ln140_reg_1302;
reg   [31:0] v224_load_8_reg_1307;
reg   [31:0] v224_load_9_reg_1312;
wire   [15:0] p_cast433_fu_732_p1;
reg   [15:0] p_cast433_reg_1327;
wire   [15:0] p_cast434_fu_742_p1;
reg   [15:0] p_cast434_reg_1333;
wire   [31:0] v11_fu_746_p1;
reg   [31:0] v11_reg_1339;
wire   [31:0] v24_fu_751_p1;
reg   [31:0] v24_reg_1344;
wire   [31:0] v35_fu_756_p1;
reg   [31:0] v35_reg_1349;
wire   [31:0] v46_fu_761_p1;
reg   [31:0] v46_reg_1354;
wire   [31:0] v57_fu_766_p1;
reg   [31:0] v57_reg_1359;
wire   [31:0] v68_fu_771_p1;
reg   [31:0] v68_reg_1364;
wire   [31:0] v79_fu_776_p1;
reg   [31:0] v79_reg_1369;
wire   [31:0] v90_fu_781_p1;
reg   [31:0] v90_reg_1374;
wire   [31:0] v101_fu_786_p1;
reg   [31:0] v101_reg_1379;
wire   [15:0] mul_ln34_1_fu_814_p2;
reg   [15:0] mul_ln34_1_reg_1414;
wire   [15:0] mul_ln49_1_fu_819_p2;
reg   [15:0] mul_ln49_1_reg_1419;
wire   [15:0] mul_ln62_1_fu_824_p2;
reg   [15:0] mul_ln62_1_reg_1424;
wire   [15:0] mul_ln75_1_fu_829_p2;
reg   [15:0] mul_ln75_1_reg_1429;
wire   [15:0] mul_ln88_1_fu_834_p2;
reg   [15:0] mul_ln88_1_reg_1434;
wire   [15:0] mul_ln101_1_fu_839_p2;
reg   [15:0] mul_ln101_1_reg_1439;
wire   [15:0] mul_ln114_1_fu_844_p2;
reg   [15:0] mul_ln114_1_reg_1444;
wire   [15:0] mul_ln127_1_fu_849_p2;
reg   [15:0] mul_ln127_1_reg_1449;
wire   [15:0] mul_ln140_1_fu_854_p2;
reg   [15:0] mul_ln140_1_reg_1454;
wire   [31:0] v11_1_fu_859_p1;
reg   [31:0] v11_1_reg_1459;
wire    ap_CS_fsm_state16;
wire   [31:0] v24_1_fu_863_p1;
reg   [31:0] v24_1_reg_1464;
wire   [31:0] v35_1_fu_868_p1;
reg   [31:0] v35_1_reg_1469;
wire   [31:0] v46_1_fu_873_p1;
reg   [31:0] v46_1_reg_1474;
wire   [31:0] v57_1_fu_878_p1;
reg   [31:0] v57_1_reg_1479;
wire   [31:0] v68_1_fu_883_p1;
reg   [31:0] v68_1_reg_1484;
wire   [31:0] v79_1_fu_888_p1;
reg   [31:0] v79_1_reg_1489;
wire   [31:0] v90_1_fu_893_p1;
reg   [31:0] v90_1_reg_1494;
wire   [31:0] v101_1_fu_898_p1;
reg   [31:0] v101_1_reg_1499;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_293_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_293_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_293_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_293_ap_ready;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_0_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_0_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_1_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_1_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_2_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_2_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_3_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_3_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_293_grp_fu_1504_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_293_grp_fu_1504_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_293_grp_fu_1504_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_293_grp_fu_1504_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_293_grp_fu_1508_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_293_grp_fu_1508_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_293_grp_fu_1508_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_293_grp_fu_1512_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_293_grp_fu_1512_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_293_grp_fu_1512_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_329_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_329_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_329_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_329_ap_ready;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_0_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_0_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_1_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_1_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_2_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_2_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_3_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_3_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_329_grp_fu_1504_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_329_grp_fu_1504_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_329_grp_fu_1504_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_329_grp_fu_1504_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_329_grp_fu_1508_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_329_grp_fu_1508_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_329_grp_fu_1508_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_329_grp_fu_1512_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_218_fu_329_grp_fu_1512_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_218_fu_329_grp_fu_1512_p_ce;
reg   [7:0] v6_reg_281;
wire    ap_CS_fsm_state17;
wire   [0:0] icmp_ln31_fu_405_p2;
reg    grp_kernel_2mm_node0_Pipeline_label_2_fu_293_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_218_fu_329_ap_start_reg;
wire   [63:0] p_cast435_fu_533_p1;
wire   [63:0] p_cast_fu_537_p1;
wire   [63:0] p_cast436_fu_561_p1;
wire   [63:0] p_cast437_fu_565_p1;
wire   [63:0] p_cast438_fu_589_p1;
wire   [63:0] p_cast439_fu_593_p1;
wire   [63:0] p_cast440_fu_617_p1;
wire   [63:0] p_cast441_fu_621_p1;
wire   [63:0] p_cast442_fu_645_p1;
wire   [63:0] p_cast443_fu_649_p1;
wire   [63:0] p_cast444_fu_718_p1;
wire   [63:0] p_cast445_fu_722_p1;
wire   [63:0] p_cast446_fu_790_p1;
wire   [63:0] p_cast447_fu_794_p1;
wire   [63:0] p_cast448_fu_798_p1;
wire   [63:0] p_cast449_fu_802_p1;
wire   [63:0] p_cast450_fu_806_p1;
wire   [63:0] p_cast451_fu_810_p1;
reg   [7:0] v5_fu_112;
wire   [0:0] icmp_ln32_fu_451_p2;
reg    ap_block_state1;
reg    v236_read_local;
reg    v224_ce1_local;
reg   [15:0] v224_address1_local;
reg    v224_ce0_local;
reg   [15:0] v224_address0_local;
wire   [5:0] lshr_ln_fu_425_p4;
wire   [5:0] mul_ln38_fu_439_p0;
wire   [8:0] mul_ln38_fu_439_p1;
wire   [6:0] tmp_fu_461_p4;
wire   [7:0] tmp_s_fu_471_p3;
wire   [7:0] empty_425_fu_493_p2;
wire   [7:0] empty_428_fu_503_p2;
wire   [7:0] empty_431_fu_513_p2;
wire   [7:0] empty_434_fu_523_p2;
wire   [15:0] grp_fu_903_p3;
wire   [15:0] grp_fu_911_p3;
wire   [7:0] empty_437_fu_541_p2;
wire   [7:0] empty_440_fu_551_p2;
wire   [15:0] grp_fu_919_p3;
wire   [15:0] grp_fu_927_p3;
wire   [7:0] empty_443_fu_569_p2;
wire   [7:0] add_ln32_fu_579_p2;
wire   [15:0] grp_fu_935_p3;
wire   [15:0] grp_fu_943_p3;
wire   [7:0] empty_448_fu_597_p2;
wire   [7:0] empty_451_fu_607_p2;
wire   [15:0] grp_fu_951_p3;
wire   [15:0] grp_fu_959_p3;
wire   [7:0] empty_454_fu_625_p2;
wire   [7:0] empty_457_fu_635_p2;
wire   [15:0] grp_fu_967_p3;
wire   [15:0] grp_fu_975_p3;
wire   [7:0] empty_460_fu_653_p2;
wire   [7:0] empty_463_fu_663_p2;
wire   [7:0] mul_ln34_fu_673_p0;
wire   [8:0] mul_ln34_fu_673_p1;
wire   [7:0] mul_ln49_fu_678_p0;
wire   [8:0] mul_ln49_fu_678_p1;
wire   [7:0] mul_ln62_fu_683_p0;
wire   [8:0] mul_ln62_fu_683_p1;
wire   [7:0] mul_ln75_fu_688_p0;
wire   [8:0] mul_ln75_fu_688_p1;
wire   [7:0] mul_ln88_fu_693_p0;
wire   [8:0] mul_ln88_fu_693_p1;
wire   [7:0] mul_ln101_fu_698_p0;
wire   [8:0] mul_ln101_fu_698_p1;
wire   [7:0] mul_ln114_fu_703_p0;
wire   [8:0] mul_ln114_fu_703_p1;
wire   [7:0] mul_ln127_fu_708_p0;
wire   [8:0] mul_ln127_fu_708_p1;
wire   [7:0] mul_ln140_fu_713_p0;
wire   [8:0] mul_ln140_fu_713_p1;
wire   [15:0] grp_fu_983_p3;
wire   [15:0] grp_fu_991_p3;
wire   [7:0] empty_466_fu_726_p2;
wire   [7:0] empty_469_fu_736_p2;
wire   [15:0] grp_fu_999_p3;
wire   [15:0] grp_fu_1007_p3;
wire   [15:0] grp_fu_1015_p3;
wire   [15:0] grp_fu_1023_p3;
wire   [15:0] grp_fu_1031_p3;
wire   [15:0] grp_fu_1039_p3;
wire   [7:0] mul_ln34_1_fu_814_p0;
wire   [8:0] mul_ln34_1_fu_814_p1;
wire   [7:0] mul_ln49_1_fu_819_p0;
wire   [8:0] mul_ln49_1_fu_819_p1;
wire   [7:0] mul_ln62_1_fu_824_p0;
wire   [8:0] mul_ln62_1_fu_824_p1;
wire   [7:0] mul_ln75_1_fu_829_p0;
wire   [8:0] mul_ln75_1_fu_829_p1;
wire   [7:0] mul_ln88_1_fu_834_p0;
wire   [8:0] mul_ln88_1_fu_834_p1;
wire   [7:0] mul_ln101_1_fu_839_p0;
wire   [8:0] mul_ln101_1_fu_839_p1;
wire   [7:0] mul_ln114_1_fu_844_p0;
wire   [8:0] mul_ln114_1_fu_844_p1;
wire   [7:0] mul_ln127_1_fu_849_p0;
wire   [8:0] mul_ln127_1_fu_849_p1;
wire   [7:0] mul_ln140_1_fu_854_p0;
wire   [8:0] mul_ln140_1_fu_854_p1;
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
wire   [7:0] grp_fu_1031_p0;
wire   [7:0] grp_fu_1031_p1;
wire   [7:0] grp_fu_1031_p2;
wire   [7:0] grp_fu_1039_p0;
wire   [7:0] grp_fu_1039_p1;
wire   [7:0] grp_fu_1039_p2;
reg    grp_fu_1015_ce;
reg    grp_fu_1023_ce;
reg    grp_fu_1031_ce;
reg    grp_fu_1039_ce;
reg   [31:0] grp_fu_1504_p0;
reg   [31:0] grp_fu_1504_p1;
reg    grp_fu_1504_ce;
reg   [31:0] grp_fu_1508_p0;
reg   [31:0] grp_fu_1508_p1;
reg    grp_fu_1508_ce;
reg   [31:0] grp_fu_1512_p0;
reg   [31:0] grp_fu_1512_p1;
reg    grp_fu_1512_ce;
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
wire   [15:0] grp_fu_1031_p00;
wire   [15:0] grp_fu_1039_p00;
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
wire   [13:0] mul_ln38_fu_439_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_2_fu_293_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_218_fu_329_ap_start_reg = 1'b0;
#0 v5_fu_112 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_2 grp_kernel_2mm_node0_Pipeline_label_2_fu_293(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_2_fu_293_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_2_fu_293_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_2_fu_293_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_2_fu_293_ap_ready),.mul_ln38(mul_ln38_reg_1096),.v228_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_0_ce1),.v228_0_q1(v228_0_q1),.v228_1_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_1_ce1),.v228_1_q1(v228_1_q1),.v228_2_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_2_address0),.v228_2_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_2_ce0),.v228_2_q0(v228_2_q0),.v228_2_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_2_address1),.v228_2_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_2_ce1),.v228_2_q1(v228_2_q1),.v228_3_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_3_address0),.v228_3_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_3_ce0),.v228_3_q0(v228_3_q0),.v228_3_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_3_address1),.v228_3_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_3_ce1),.v228_3_q1(v228_3_q1),.mul_ln34(mul_ln34_reg_1262),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v229_d1),.v229_q1(v229_q1),.mul_ln49(mul_ln49_reg_1267),.mul_ln62(mul_ln62_reg_1272),.mul_ln75(mul_ln75_reg_1277),.mul_ln88(mul_ln88_reg_1282),.mul_ln101(mul_ln101_reg_1287),.mul_ln114(mul_ln114_reg_1292),.mul_ln127(mul_ln127_reg_1297),.mul_ln140(mul_ln140_reg_1302),.v4(v4),.cmp11(cmp11_reg_1102),.empty(trunc_ln31_reg_1090),.v11(v11_reg_1339),.v24(v24_reg_1344),.v35(v35_reg_1349),.v46(v46_reg_1354),.v57(v57_reg_1359),.v68(v68_reg_1364),.v79(v79_reg_1369),.v90(v90_reg_1374),.v101(v101_reg_1379),.grp_fu_1504_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_293_grp_fu_1504_p_din0),.grp_fu_1504_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_293_grp_fu_1504_p_din1),.grp_fu_1504_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_293_grp_fu_1504_p_opcode),.grp_fu_1504_p_dout0(grp_fu_132_p_dout0),.grp_fu_1504_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_293_grp_fu_1504_p_ce),.grp_fu_1508_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_293_grp_fu_1508_p_din0),.grp_fu_1508_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_293_grp_fu_1508_p_din1),.grp_fu_1508_p_dout0(grp_fu_136_p_dout0),.grp_fu_1508_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_293_grp_fu_1508_p_ce),.grp_fu_1512_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_293_grp_fu_1512_p_din0),.grp_fu_1512_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_293_grp_fu_1512_p_din1),.grp_fu_1512_p_dout0(grp_fu_140_p_dout0),.grp_fu_1512_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_293_grp_fu_1512_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_218 grp_kernel_2mm_node0_Pipeline_label_218_fu_329(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_218_fu_329_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_218_fu_329_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_218_fu_329_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_218_fu_329_ap_ready),.mul_ln38(mul_ln38_reg_1096),.v228_0_address0(grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_0_ce1),.v228_0_q1(v228_0_q1),.v228_1_address0(grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_1_ce1),.v228_1_q1(v228_1_q1),.v228_2_address0(grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_2_address0),.v228_2_ce0(grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_2_ce0),.v228_2_q0(v228_2_q0),.v228_2_address1(grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_2_address1),.v228_2_ce1(grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_2_ce1),.v228_2_q1(v228_2_q1),.v228_3_address0(grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_3_address0),.v228_3_ce0(grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_3_ce0),.v228_3_q0(v228_3_q0),.v228_3_address1(grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_3_address1),.v228_3_ce1(grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_3_ce1),.v228_3_q1(v228_3_q1),.mul_ln34_1(mul_ln34_1_reg_1414),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v229_d1),.v229_q1(v229_q1),.mul_ln49_1(mul_ln49_1_reg_1419),.mul_ln62_1(mul_ln62_1_reg_1424),.mul_ln75_1(mul_ln75_1_reg_1429),.mul_ln88_1(mul_ln88_1_reg_1434),.mul_ln101_1(mul_ln101_1_reg_1439),.mul_ln114_1(mul_ln114_1_reg_1444),.mul_ln127_1(mul_ln127_1_reg_1449),.mul_ln140_1(mul_ln140_1_reg_1454),.v4(v4),.cmp11(cmp11_reg_1102),.empty(trunc_ln31_reg_1090),.v11_1(v11_1_reg_1459),.v24_1(v24_1_reg_1464),.v35_1(v35_1_reg_1469),.v46_1(v46_1_reg_1474),.v57_1(v57_1_reg_1479),.v68_1(v68_1_reg_1484),.v79_1(v79_1_reg_1489),.v90_1(v90_1_reg_1494),.v101_1(v101_1_reg_1499),.grp_fu_1504_p_din0(grp_kernel_2mm_node0_Pipeline_label_218_fu_329_grp_fu_1504_p_din0),.grp_fu_1504_p_din1(grp_kernel_2mm_node0_Pipeline_label_218_fu_329_grp_fu_1504_p_din1),.grp_fu_1504_p_opcode(grp_kernel_2mm_node0_Pipeline_label_218_fu_329_grp_fu_1504_p_opcode),.grp_fu_1504_p_dout0(grp_fu_132_p_dout0),.grp_fu_1504_p_ce(grp_kernel_2mm_node0_Pipeline_label_218_fu_329_grp_fu_1504_p_ce),.grp_fu_1508_p_din0(grp_kernel_2mm_node0_Pipeline_label_218_fu_329_grp_fu_1508_p_din0),.grp_fu_1508_p_din1(grp_kernel_2mm_node0_Pipeline_label_218_fu_329_grp_fu_1508_p_din1),.grp_fu_1508_p_dout0(grp_fu_136_p_dout0),.grp_fu_1508_p_ce(grp_kernel_2mm_node0_Pipeline_label_218_fu_329_grp_fu_1508_p_ce),.grp_fu_1512_p_din0(grp_kernel_2mm_node0_Pipeline_label_218_fu_329_grp_fu_1512_p_din0),.grp_fu_1512_p_din1(grp_kernel_2mm_node0_Pipeline_label_218_fu_329_grp_fu_1512_p_din1),.grp_fu_1512_p_dout0(grp_fu_140_p_dout0),.grp_fu_1512_p_ce(grp_kernel_2mm_node0_Pipeline_label_218_fu_329_grp_fu_1512_p_ce));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U754(.din0(mul_ln38_fu_439_p0),.din1(mul_ln38_fu_439_p1),.dout(mul_ln38_fu_439_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U755(.din0(mul_ln34_fu_673_p0),.din1(mul_ln34_fu_673_p1),.dout(mul_ln34_fu_673_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U756(.din0(mul_ln49_fu_678_p0),.din1(mul_ln49_fu_678_p1),.dout(mul_ln49_fu_678_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U757(.din0(mul_ln62_fu_683_p0),.din1(mul_ln62_fu_683_p1),.dout(mul_ln62_fu_683_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U758(.din0(mul_ln75_fu_688_p0),.din1(mul_ln75_fu_688_p1),.dout(mul_ln75_fu_688_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U759(.din0(mul_ln88_fu_693_p0),.din1(mul_ln88_fu_693_p1),.dout(mul_ln88_fu_693_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U760(.din0(mul_ln101_fu_698_p0),.din1(mul_ln101_fu_698_p1),.dout(mul_ln101_fu_698_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U761(.din0(mul_ln114_fu_703_p0),.din1(mul_ln114_fu_703_p1),.dout(mul_ln114_fu_703_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U762(.din0(mul_ln127_fu_708_p0),.din1(mul_ln127_fu_708_p1),.dout(mul_ln127_fu_708_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U763(.din0(mul_ln140_fu_713_p0),.din1(mul_ln140_fu_713_p1),.dout(mul_ln140_fu_713_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U764(.din0(mul_ln34_1_fu_814_p0),.din1(mul_ln34_1_fu_814_p1),.dout(mul_ln34_1_fu_814_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U765(.din0(mul_ln49_1_fu_819_p0),.din1(mul_ln49_1_fu_819_p1),.dout(mul_ln49_1_fu_819_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U766(.din0(mul_ln62_1_fu_824_p0),.din1(mul_ln62_1_fu_824_p1),.dout(mul_ln62_1_fu_824_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U767(.din0(mul_ln75_1_fu_829_p0),.din1(mul_ln75_1_fu_829_p1),.dout(mul_ln75_1_fu_829_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U768(.din0(mul_ln88_1_fu_834_p0),.din1(mul_ln88_1_fu_834_p1),.dout(mul_ln88_1_fu_834_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U769(.din0(mul_ln101_1_fu_839_p0),.din1(mul_ln101_1_fu_839_p1),.dout(mul_ln101_1_fu_839_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U770(.din0(mul_ln114_1_fu_844_p0),.din1(mul_ln114_1_fu_844_p1),.dout(mul_ln114_1_fu_844_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U771(.din0(mul_ln127_1_fu_849_p0),.din1(mul_ln127_1_fu_849_p1),.dout(mul_ln127_1_fu_849_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U772(.din0(mul_ln140_1_fu_854_p0),.din1(mul_ln140_1_fu_854_p1),.dout(mul_ln140_1_fu_854_p2));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U773(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_903_p0),.din1(grp_fu_903_p1),.din2(grp_fu_903_p2),.ce(1'b1),.dout(grp_fu_903_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U774(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_911_p0),.din1(grp_fu_911_p1),.din2(grp_fu_911_p2),.ce(1'b1),.dout(grp_fu_911_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U775(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_919_p0),.din1(grp_fu_919_p1),.din2(grp_fu_919_p2),.ce(1'b1),.dout(grp_fu_919_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U776(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_927_p0),.din1(grp_fu_927_p1),.din2(grp_fu_927_p2),.ce(1'b1),.dout(grp_fu_927_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U777(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_935_p0),.din1(grp_fu_935_p1),.din2(grp_fu_935_p2),.ce(1'b1),.dout(grp_fu_935_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U778(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_943_p0),.din1(grp_fu_943_p1),.din2(grp_fu_943_p2),.ce(1'b1),.dout(grp_fu_943_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U779(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_951_p0),.din1(grp_fu_951_p1),.din2(grp_fu_951_p2),.ce(1'b1),.dout(grp_fu_951_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U780(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_959_p0),.din1(grp_fu_959_p1),.din2(grp_fu_959_p2),.ce(1'b1),.dout(grp_fu_959_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U781(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_967_p0),.din1(grp_fu_967_p1),.din2(grp_fu_967_p2),.ce(1'b1),.dout(grp_fu_967_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U782(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_975_p0),.din1(grp_fu_975_p1),.din2(grp_fu_975_p2),.ce(1'b1),.dout(grp_fu_975_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U783(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_983_p0),.din1(grp_fu_983_p1),.din2(grp_fu_983_p2),.ce(1'b1),.dout(grp_fu_983_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U784(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_991_p0),.din1(grp_fu_991_p1),.din2(grp_fu_991_p2),.ce(1'b1),.dout(grp_fu_991_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U785(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_999_p0),.din1(grp_fu_999_p1),.din2(grp_fu_999_p2),.ce(1'b1),.dout(grp_fu_999_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U786(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1007_p0),.din1(grp_fu_1007_p1),.din2(grp_fu_1007_p2),.ce(1'b1),.dout(grp_fu_1007_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U787(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1015_p0),.din1(grp_fu_1015_p1),.din2(grp_fu_1015_p2),.ce(grp_fu_1015_ce),.dout(grp_fu_1015_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U788(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1023_p0),.din1(grp_fu_1023_p1),.din2(grp_fu_1023_p2),.ce(grp_fu_1023_ce),.dout(grp_fu_1023_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U789(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1031_p0),.din1(grp_fu_1031_p1),.din2(grp_fu_1031_p2),.ce(grp_fu_1031_ce),.dout(grp_fu_1031_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U790(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1039_p0),.din1(grp_fu_1039_p1),.din2(grp_fu_1039_p2),.ce(grp_fu_1039_ce),.dout(grp_fu_1039_p3));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_218_fu_329_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node0_Pipeline_label_218_fu_329_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_218_fu_329_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_218_fu_329_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_2_fu_293_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_293_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_293_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_293_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_112 <= 8'd0;
    end else if (((icmp_ln32_fu_451_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v5_fu_112 <= add_ln31_reg_1063;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln31_fu_405_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v6_reg_281 <= 8'd0;
    end else if (((grp_kernel_2mm_node0_Pipeline_label_218_fu_329_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        v6_reg_281 <= add_ln32_1_reg_1123;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln31_reg_1063 <= add_ln31_fu_411_p2;
        cmp11_reg_1102 <= cmp11_fu_445_p2;
        mul_ln38_reg_1096 <= mul_ln38_fu_439_p2;
        trunc_ln31_reg_1090 <= trunc_ln31_fu_421_p1;
        zext_ln31_reg_1068[7 : 0] <= zext_ln31_fu_417_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_1_reg_1123 <= add_ln32_1_fu_483_p2;
        tmp_48_cast_reg_1117[7 : 1] <= tmp_48_cast_fu_479_p1[7 : 1];
        v6_cast_reg_1111[7 : 0] <= v6_cast_fu_457_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        add_ln32_cast426_reg_1190[7 : 0] <= add_ln32_cast426_fu_585_p1[7 : 0];
        p_cast425_reg_1184[7 : 0] <= p_cast425_fu_575_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln101_1_reg_1439 <= mul_ln101_1_fu_839_p2;
        mul_ln114_1_reg_1444 <= mul_ln114_1_fu_844_p2;
        mul_ln127_1_reg_1449 <= mul_ln127_1_fu_849_p2;
        mul_ln140_1_reg_1454 <= mul_ln140_1_fu_854_p2;
        mul_ln34_1_reg_1414 <= mul_ln34_1_fu_814_p2;
        mul_ln49_1_reg_1419 <= mul_ln49_1_fu_819_p2;
        mul_ln62_1_reg_1424 <= mul_ln62_1_fu_824_p2;
        mul_ln75_1_reg_1429 <= mul_ln75_1_fu_829_p2;
        mul_ln88_1_reg_1434 <= mul_ln88_1_fu_834_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        mul_ln101_reg_1287 <= mul_ln101_fu_698_p2;
        mul_ln114_reg_1292 <= mul_ln114_fu_703_p2;
        mul_ln127_reg_1297 <= mul_ln127_fu_708_p2;
        mul_ln140_reg_1302 <= mul_ln140_fu_713_p2;
        mul_ln34_reg_1262 <= mul_ln34_fu_673_p2;
        mul_ln49_reg_1267 <= mul_ln49_fu_678_p2;
        mul_ln62_reg_1272 <= mul_ln62_fu_683_p2;
        mul_ln75_reg_1277 <= mul_ln75_fu_688_p2;
        mul_ln88_reg_1282 <= mul_ln88_fu_693_p2;
        p_cast433_reg_1327[7 : 0] <= p_cast433_fu_732_p1[7 : 0];
        p_cast434_reg_1333[7 : 0] <= p_cast434_fu_742_p1[7 : 0];
        v224_load_8_reg_1307 <= v224_q1;
        v224_load_9_reg_1312 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        p_cast419_reg_1128[7 : 0] <= p_cast419_fu_499_p1[7 : 0];
        p_cast420_reg_1134[7 : 0] <= p_cast420_fu_509_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        p_cast421_reg_1140[7 : 0] <= p_cast421_fu_519_p1[7 : 0];
        p_cast422_reg_1146[7 : 0] <= p_cast422_fu_529_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        p_cast423_reg_1162[7 : 0] <= p_cast423_fu_547_p1[7 : 0];
        p_cast424_reg_1168[7 : 0] <= p_cast424_fu_557_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        p_cast427_reg_1206[7 : 0] <= p_cast427_fu_603_p1[7 : 0];
        p_cast428_reg_1212[7 : 0] <= p_cast428_fu_613_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        p_cast429_reg_1228[7 : 0] <= p_cast429_fu_631_p1[7 : 0];
        p_cast430_reg_1234[7 : 0] <= p_cast430_fu_641_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        p_cast431_reg_1250[7 : 0] <= p_cast431_fu_659_p1[7 : 0];
        p_cast432_reg_1256[7 : 0] <= p_cast432_fu_669_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7))) begin
        reg_365 <= v224_q1;
        reg_369 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_373 <= v224_q1;
        reg_377 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9))) begin
        reg_381 <= v224_q1;
        reg_385 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10))) begin
        reg_389 <= v224_q1;
        reg_393 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        v101_1_reg_1499 <= v101_1_fu_898_p1;
        v11_1_reg_1459 <= v11_1_fu_859_p1;
        v24_1_reg_1464 <= v24_1_fu_863_p1;
        v35_1_reg_1469 <= v35_1_fu_868_p1;
        v46_1_reg_1474 <= v46_1_fu_873_p1;
        v57_1_reg_1479 <= v57_1_fu_878_p1;
        v68_1_reg_1484 <= v68_1_fu_883_p1;
        v79_1_reg_1489 <= v79_1_fu_888_p1;
        v90_1_reg_1494 <= v90_1_fu_893_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        v101_reg_1379 <= v101_fu_786_p1;
        v11_reg_1339 <= v11_fu_746_p1;
        v24_reg_1344 <= v24_fu_751_p1;
        v35_reg_1349 <= v35_fu_756_p1;
        v46_reg_1354 <= v46_fu_761_p1;
        v57_reg_1359 <= v57_fu_766_p1;
        v68_reg_1364 <= v68_fu_771_p1;
        v79_reg_1369 <= v79_fu_776_p1;
        v90_reg_1374 <= v90_fu_781_p1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_293_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
    end
end
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_218_fu_329_ap_done == 1'b0)) begin
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
    if ((((icmp_ln31_fu_405_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((icmp_ln31_fu_405_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_293_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1015_ce = 1'b1;
    end else begin
        grp_fu_1015_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_293_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1023_ce = 1'b1;
    end else begin
        grp_fu_1023_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_293_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1031_ce = 1'b1;
    end else begin
        grp_fu_1031_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_293_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1039_ce = 1'b1;
    end else begin
        grp_fu_1039_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1504_ce = grp_kernel_2mm_node0_Pipeline_label_218_fu_329_grp_fu_1504_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1504_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_293_grp_fu_1504_p_ce;
    end else begin
        grp_fu_1504_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1504_p0 = grp_kernel_2mm_node0_Pipeline_label_218_fu_329_grp_fu_1504_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1504_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_293_grp_fu_1504_p_din0;
    end else begin
        grp_fu_1504_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1504_p1 = grp_kernel_2mm_node0_Pipeline_label_218_fu_329_grp_fu_1504_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1504_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_293_grp_fu_1504_p_din1;
    end else begin
        grp_fu_1504_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1508_ce = grp_kernel_2mm_node0_Pipeline_label_218_fu_329_grp_fu_1508_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1508_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_293_grp_fu_1508_p_ce;
    end else begin
        grp_fu_1508_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1508_p0 = grp_kernel_2mm_node0_Pipeline_label_218_fu_329_grp_fu_1508_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1508_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_293_grp_fu_1508_p_din0;
    end else begin
        grp_fu_1508_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1508_p1 = grp_kernel_2mm_node0_Pipeline_label_218_fu_329_grp_fu_1508_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1508_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_293_grp_fu_1508_p_din1;
    end else begin
        grp_fu_1508_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1512_ce = grp_kernel_2mm_node0_Pipeline_label_218_fu_329_grp_fu_1512_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1512_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_293_grp_fu_1512_p_ce;
    end else begin
        grp_fu_1512_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1512_p0 = grp_kernel_2mm_node0_Pipeline_label_218_fu_329_grp_fu_1512_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1512_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_293_grp_fu_1512_p_din0;
    end else begin
        grp_fu_1512_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1512_p1 = grp_kernel_2mm_node0_Pipeline_label_218_fu_329_grp_fu_1512_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1512_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_293_grp_fu_1512_p_din1;
    end else begin
        grp_fu_1512_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_address0_local = p_cast451_fu_810_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_address0_local = p_cast449_fu_802_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_address0_local = p_cast447_fu_794_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_address0_local = p_cast445_fu_722_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address0_local = p_cast443_fu_649_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address0_local = p_cast441_fu_621_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address0_local = p_cast439_fu_593_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address0_local = p_cast437_fu_565_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_address0_local = p_cast_fu_537_p1;
    end else begin
        v224_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_address1_local = p_cast450_fu_806_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_address1_local = p_cast448_fu_798_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_address1_local = p_cast446_fu_790_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_address1_local = p_cast444_fu_718_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address1_local = p_cast442_fu_645_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address1_local = p_cast440_fu_617_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address1_local = p_cast438_fu_589_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address1_local = p_cast436_fu_561_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_address1_local = p_cast435_fu_533_p1;
    end else begin
        v224_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_293_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        v224_ce0_local = 1'b1;
    end else begin
        v224_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_293_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        v224_ce1_local = 1'b1;
    end else begin
        v224_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_0_address0 = grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_0_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_0_address0;
    end else begin
        v228_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_0_address1 = grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_0_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_0_address1;
    end else begin
        v228_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_0_ce0;
    end else begin
        v228_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_0_ce1;
    end else begin
        v228_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_1_address0 = grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_1_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_1_address0;
    end else begin
        v228_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_1_address1 = grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_1_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_1_address1;
    end else begin
        v228_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_1_ce0;
    end else begin
        v228_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_1_ce1;
    end else begin
        v228_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_2_address0 = grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_2_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_2_address0;
    end else begin
        v228_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_2_address1 = grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_2_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_2_address1;
    end else begin
        v228_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_2_ce0;
    end else begin
        v228_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_2_ce1;
    end else begin
        v228_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_3_address0 = grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_3_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_3_address0;
    end else begin
        v228_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_3_address1 = grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_3_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_3_address1;
    end else begin
        v228_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_3_ce0;
    end else begin
        v228_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v228_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v228_3_ce1;
    end else begin
        v228_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v229_address0;
    end else begin
        v229_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v229_address1;
    end else begin
        v229_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v229_ce0;
    end else begin
        v229_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v229_ce1;
    end else begin
        v229_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v229_d0;
    end else begin
        v229_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v229_d1;
    end else begin
        v229_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v229_we0;
    end else begin
        v229_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_218_fu_329_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_293_v229_we1;
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
            if (((icmp_ln31_fu_405_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln32_fu_451_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_293_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_218_fu_329_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
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
assign add_ln31_fu_411_p2 = (v5_fu_112 + 8'd1);
assign add_ln32_1_fu_483_p2 = (v6_reg_281 + 8'd18);
assign add_ln32_cast426_fu_585_p1 = add_ln32_fu_579_p2;
assign add_ln32_fu_579_p2 = (v6_reg_281 + 8'd9);
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
assign cmp11_fu_445_p2 = ((v5_fu_112 == 8'd0) ? 1'b1 : 1'b0);
assign empty_425_fu_493_p2 = (v6_reg_281 + 8'd2);
assign empty_428_fu_503_p2 = (v6_reg_281 + 8'd3);
assign empty_431_fu_513_p2 = (v6_reg_281 + 8'd4);
assign empty_434_fu_523_p2 = (v6_reg_281 + 8'd5);
assign empty_437_fu_541_p2 = (v6_reg_281 + 8'd6);
assign empty_440_fu_551_p2 = (v6_reg_281 + 8'd7);
assign empty_443_fu_569_p2 = (v6_reg_281 + 8'd8);
assign empty_448_fu_597_p2 = (v6_reg_281 + 8'd10);
assign empty_451_fu_607_p2 = (v6_reg_281 + 8'd11);
assign empty_454_fu_625_p2 = (v6_reg_281 + 8'd12);
assign empty_457_fu_635_p2 = (v6_reg_281 + 8'd13);
assign empty_460_fu_653_p2 = (v6_reg_281 + 8'd14);
assign empty_463_fu_663_p2 = (v6_reg_281 + 8'd15);
assign empty_466_fu_726_p2 = (v6_reg_281 + 8'd16);
assign empty_469_fu_736_p2 = (v6_reg_281 + 8'd17);
assign grp_fu_1007_p0 = grp_fu_1007_p00;
assign grp_fu_1007_p00 = empty_457_fu_635_p2;
assign grp_fu_1007_p1 = 16'd190;
assign grp_fu_1007_p2 = zext_ln31_reg_1068;
assign grp_fu_1015_p0 = grp_fu_1015_p00;
assign grp_fu_1015_p00 = empty_460_fu_653_p2;
assign grp_fu_1015_p1 = 16'd190;
assign grp_fu_1015_p2 = zext_ln31_reg_1068;
assign grp_fu_1023_p0 = grp_fu_1023_p00;
assign grp_fu_1023_p00 = empty_463_fu_663_p2;
assign grp_fu_1023_p1 = 16'd190;
assign grp_fu_1023_p2 = zext_ln31_reg_1068;
assign grp_fu_1031_p0 = grp_fu_1031_p00;
assign grp_fu_1031_p00 = empty_466_fu_726_p2;
assign grp_fu_1031_p1 = 16'd190;
assign grp_fu_1031_p2 = zext_ln31_reg_1068;
assign grp_fu_1039_p0 = grp_fu_1039_p00;
assign grp_fu_1039_p00 = empty_469_fu_736_p2;
assign grp_fu_1039_p1 = 16'd190;
assign grp_fu_1039_p2 = zext_ln31_reg_1068;
assign grp_fu_132_p_ce = grp_fu_1504_ce;
assign grp_fu_132_p_din0 = grp_fu_1504_p0;
assign grp_fu_132_p_din1 = grp_fu_1504_p1;
assign grp_fu_132_p_opcode = 2'd0;
assign grp_fu_136_p_ce = grp_fu_1508_ce;
assign grp_fu_136_p_din0 = grp_fu_1508_p0;
assign grp_fu_136_p_din1 = grp_fu_1508_p1;
assign grp_fu_140_p_ce = grp_fu_1512_ce;
assign grp_fu_140_p_din0 = grp_fu_1512_p0;
assign grp_fu_140_p_din1 = grp_fu_1512_p1;
assign grp_fu_903_p0 = grp_fu_903_p00;
assign grp_fu_903_p00 = v6_reg_281;
assign grp_fu_903_p1 = 16'd190;
assign grp_fu_903_p2 = zext_ln31_reg_1068;
assign grp_fu_911_p0 = grp_fu_911_p00;
assign grp_fu_911_p00 = tmp_s_fu_471_p3;
assign grp_fu_911_p1 = 16'd190;
assign grp_fu_911_p2 = zext_ln31_reg_1068;
assign grp_fu_919_p0 = grp_fu_919_p00;
assign grp_fu_919_p00 = empty_425_fu_493_p2;
assign grp_fu_919_p1 = 16'd190;
assign grp_fu_919_p2 = zext_ln31_reg_1068;
assign grp_fu_927_p0 = grp_fu_927_p00;
assign grp_fu_927_p00 = empty_428_fu_503_p2;
assign grp_fu_927_p1 = 16'd190;
assign grp_fu_927_p2 = zext_ln31_reg_1068;
assign grp_fu_935_p0 = grp_fu_935_p00;
assign grp_fu_935_p00 = empty_431_fu_513_p2;
assign grp_fu_935_p1 = 16'd190;
assign grp_fu_935_p2 = zext_ln31_reg_1068;
assign grp_fu_943_p0 = grp_fu_943_p00;
assign grp_fu_943_p00 = empty_434_fu_523_p2;
assign grp_fu_943_p1 = 16'd190;
assign grp_fu_943_p2 = zext_ln31_reg_1068;
assign grp_fu_951_p0 = grp_fu_951_p00;
assign grp_fu_951_p00 = empty_437_fu_541_p2;
assign grp_fu_951_p1 = 16'd190;
assign grp_fu_951_p2 = zext_ln31_reg_1068;
assign grp_fu_959_p0 = grp_fu_959_p00;
assign grp_fu_959_p00 = empty_440_fu_551_p2;
assign grp_fu_959_p1 = 16'd190;
assign grp_fu_959_p2 = zext_ln31_reg_1068;
assign grp_fu_967_p0 = grp_fu_967_p00;
assign grp_fu_967_p00 = empty_443_fu_569_p2;
assign grp_fu_967_p1 = 16'd190;
assign grp_fu_967_p2 = zext_ln31_reg_1068;
assign grp_fu_975_p0 = grp_fu_975_p00;
assign grp_fu_975_p00 = add_ln32_fu_579_p2;
assign grp_fu_975_p1 = 16'd190;
assign grp_fu_975_p2 = zext_ln31_reg_1068;
assign grp_fu_983_p0 = grp_fu_983_p00;
assign grp_fu_983_p00 = empty_448_fu_597_p2;
assign grp_fu_983_p1 = 16'd190;
assign grp_fu_983_p2 = zext_ln31_reg_1068;
assign grp_fu_991_p0 = grp_fu_991_p00;
assign grp_fu_991_p00 = empty_451_fu_607_p2;
assign grp_fu_991_p1 = 16'd190;
assign grp_fu_991_p2 = zext_ln31_reg_1068;
assign grp_fu_999_p0 = grp_fu_999_p00;
assign grp_fu_999_p00 = empty_454_fu_625_p2;
assign grp_fu_999_p1 = 16'd190;
assign grp_fu_999_p2 = zext_ln31_reg_1068;
assign grp_kernel_2mm_node0_Pipeline_label_218_fu_329_ap_start = grp_kernel_2mm_node0_Pipeline_label_218_fu_329_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_2_fu_293_ap_start = grp_kernel_2mm_node0_Pipeline_label_2_fu_293_ap_start_reg;
assign icmp_ln31_fu_405_p2 = ((v5_fu_112 == 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_451_p2 = ((v6_reg_281 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln_fu_425_p4 = {{v5_fu_112[7:2]}};
assign mul_ln101_1_fu_839_p0 = p_cast431_reg_1250;
assign mul_ln101_1_fu_839_p1 = 16'd220;
assign mul_ln101_fu_698_p0 = p_cast422_reg_1146;
assign mul_ln101_fu_698_p1 = 16'd220;
assign mul_ln114_1_fu_844_p0 = p_cast432_reg_1256;
assign mul_ln114_1_fu_844_p1 = 16'd220;
assign mul_ln114_fu_703_p0 = p_cast423_reg_1162;
assign mul_ln114_fu_703_p1 = 16'd220;
assign mul_ln127_1_fu_849_p0 = p_cast433_reg_1327;
assign mul_ln127_1_fu_849_p1 = 16'd220;
assign mul_ln127_fu_708_p0 = p_cast424_reg_1168;
assign mul_ln127_fu_708_p1 = 16'd220;
assign mul_ln140_1_fu_854_p0 = p_cast434_reg_1333;
assign mul_ln140_1_fu_854_p1 = 16'd220;
assign mul_ln140_fu_713_p0 = p_cast425_reg_1184;
assign mul_ln140_fu_713_p1 = 16'd220;
assign mul_ln34_1_fu_814_p0 = add_ln32_cast426_reg_1190;
assign mul_ln34_1_fu_814_p1 = 16'd220;
assign mul_ln34_fu_673_p0 = v6_cast_reg_1111;
assign mul_ln34_fu_673_p1 = 16'd220;
assign mul_ln38_fu_439_p0 = mul_ln38_fu_439_p00;
assign mul_ln38_fu_439_p00 = lshr_ln_fu_425_p4;
assign mul_ln38_fu_439_p1 = 14'd220;
assign mul_ln49_1_fu_819_p0 = p_cast427_reg_1206;
assign mul_ln49_1_fu_819_p1 = 16'd220;
assign mul_ln49_fu_678_p0 = tmp_48_cast_reg_1117;
assign mul_ln49_fu_678_p1 = 16'd220;
assign mul_ln62_1_fu_824_p0 = p_cast428_reg_1212;
assign mul_ln62_1_fu_824_p1 = 16'd220;
assign mul_ln62_fu_683_p0 = p_cast419_reg_1128;
assign mul_ln62_fu_683_p1 = 16'd220;
assign mul_ln75_1_fu_829_p0 = p_cast429_reg_1228;
assign mul_ln75_1_fu_829_p1 = 16'd220;
assign mul_ln75_fu_688_p0 = p_cast420_reg_1134;
assign mul_ln75_fu_688_p1 = 16'd220;
assign mul_ln88_1_fu_834_p0 = p_cast430_reg_1234;
assign mul_ln88_1_fu_834_p1 = 16'd220;
assign mul_ln88_fu_693_p0 = p_cast421_reg_1140;
assign mul_ln88_fu_693_p1 = 16'd220;
assign p_cast419_fu_499_p1 = empty_425_fu_493_p2;
assign p_cast420_fu_509_p1 = empty_428_fu_503_p2;
assign p_cast421_fu_519_p1 = empty_431_fu_513_p2;
assign p_cast422_fu_529_p1 = empty_434_fu_523_p2;
assign p_cast423_fu_547_p1 = empty_437_fu_541_p2;
assign p_cast424_fu_557_p1 = empty_440_fu_551_p2;
assign p_cast425_fu_575_p1 = empty_443_fu_569_p2;
assign p_cast427_fu_603_p1 = empty_448_fu_597_p2;
assign p_cast428_fu_613_p1 = empty_451_fu_607_p2;
assign p_cast429_fu_631_p1 = empty_454_fu_625_p2;
assign p_cast430_fu_641_p1 = empty_457_fu_635_p2;
assign p_cast431_fu_659_p1 = empty_460_fu_653_p2;
assign p_cast432_fu_669_p1 = empty_463_fu_663_p2;
assign p_cast433_fu_732_p1 = empty_466_fu_726_p2;
assign p_cast434_fu_742_p1 = empty_469_fu_736_p2;
assign p_cast435_fu_533_p1 = grp_fu_903_p3;
assign p_cast436_fu_561_p1 = grp_fu_919_p3;
assign p_cast437_fu_565_p1 = grp_fu_927_p3;
assign p_cast438_fu_589_p1 = grp_fu_935_p3;
assign p_cast439_fu_593_p1 = grp_fu_943_p3;
assign p_cast440_fu_617_p1 = grp_fu_951_p3;
assign p_cast441_fu_621_p1 = grp_fu_959_p3;
assign p_cast442_fu_645_p1 = grp_fu_967_p3;
assign p_cast443_fu_649_p1 = grp_fu_975_p3;
assign p_cast444_fu_718_p1 = grp_fu_983_p3;
assign p_cast445_fu_722_p1 = grp_fu_991_p3;
assign p_cast446_fu_790_p1 = grp_fu_999_p3;
assign p_cast447_fu_794_p1 = grp_fu_1007_p3;
assign p_cast448_fu_798_p1 = grp_fu_1015_p3;
assign p_cast449_fu_802_p1 = grp_fu_1023_p3;
assign p_cast450_fu_806_p1 = grp_fu_1031_p3;
assign p_cast451_fu_810_p1 = grp_fu_1039_p3;
assign p_cast_fu_537_p1 = grp_fu_911_p3;
assign tmp_48_cast_fu_479_p1 = tmp_s_fu_471_p3;
assign tmp_fu_461_p4 = {{v6_reg_281[7:1]}};
assign tmp_s_fu_471_p3 = {{tmp_fu_461_p4}, {1'd1}};
assign trunc_ln31_fu_421_p1 = v5_fu_112[1:0];
assign v101_1_fu_898_p1 = reg_393;
assign v101_fu_786_p1 = v224_load_8_reg_1307;
assign v11_1_fu_859_p1 = v224_load_9_reg_1312;
assign v11_fu_746_p1 = reg_365;
assign v224_address0 = v224_address0_local;
assign v224_address1 = v224_address1_local;
assign v224_ce0 = v224_ce0_local;
assign v224_ce1 = v224_ce1_local;
assign v236_read = v236_read_local;
assign v24_1_fu_863_p1 = reg_365;
assign v24_fu_751_p1 = reg_369;
assign v35_1_fu_868_p1 = reg_369;
assign v35_fu_756_p1 = reg_373;
assign v46_1_fu_873_p1 = reg_373;
assign v46_fu_761_p1 = reg_377;
assign v57_1_fu_878_p1 = reg_377;
assign v57_fu_766_p1 = reg_381;
assign v68_1_fu_883_p1 = reg_381;
assign v68_fu_771_p1 = reg_385;
assign v6_cast_fu_457_p1 = v6_reg_281;
assign v79_1_fu_888_p1 = reg_385;
assign v79_fu_776_p1 = reg_389;
assign v90_1_fu_893_p1 = reg_389;
assign v90_fu_781_p1 = reg_393;
assign zext_ln31_fu_417_p1 = v5_fu_112;
always @ (posedge ap_clk) begin
    zext_ln31_reg_1068[15:8] <= 8'b00000000;
    v6_cast_reg_1111[15:8] <= 8'b00000000;
    tmp_48_cast_reg_1117[0] <= 1'b1;
    tmp_48_cast_reg_1117[15:8] <= 8'b00000000;
    p_cast419_reg_1128[15:8] <= 8'b00000000;
    p_cast420_reg_1134[15:8] <= 8'b00000000;
    p_cast421_reg_1140[15:8] <= 8'b00000000;
    p_cast422_reg_1146[15:8] <= 8'b00000000;
    p_cast423_reg_1162[15:8] <= 8'b00000000;
    p_cast424_reg_1168[15:8] <= 8'b00000000;
    p_cast425_reg_1184[15:8] <= 8'b00000000;
    add_ln32_cast426_reg_1190[15:8] <= 8'b00000000;
    p_cast427_reg_1206[15:8] <= 8'b00000000;
    p_cast428_reg_1212[15:8] <= 8'b00000000;
    p_cast429_reg_1228[15:8] <= 8'b00000000;
    p_cast430_reg_1234[15:8] <= 8'b00000000;
    p_cast431_reg_1250[15:8] <= 8'b00000000;
    p_cast432_reg_1256[15:8] <= 8'b00000000;
    p_cast433_reg_1327[15:8] <= 8'b00000000;
    p_cast434_reg_1333[15:8] <= 8'b00000000;
end
endmodule 