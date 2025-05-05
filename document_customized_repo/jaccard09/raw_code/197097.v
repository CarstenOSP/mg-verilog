module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_address0,v224_ce0,v224_q0,v224_address1,v224_ce1,v224_q1,v228_0_address0,v228_0_ce0,v228_0_q0,v228_0_address1,v228_0_ce1,v228_0_q1,v228_1_address0,v228_1_ce0,v228_1_q0,v228_1_address1,v228_1_ce1,v228_1_q1,v228_2_address0,v228_2_ce0,v228_2_q0,v228_2_address1,v228_2_ce1,v228_2_q1,v228_3_address0,v228_3_ce0,v228_3_q0,v228_3_address1,v228_3_ce1,v228_3_q1,v228_4_address0,v228_4_ce0,v228_4_q0,v228_4_address1,v228_4_ce1,v228_4_q1,v228_5_address0,v228_5_ce0,v228_5_q0,v228_5_address1,v228_5_ce1,v228_5_q1,v228_6_address0,v228_6_ce0,v228_6_q0,v228_6_address1,v228_6_ce1,v228_6_q1,v228_7_address0,v228_7_ce0,v228_7_q0,v228_7_address1,v228_7_ce1,v228_7_q1,v229_address0,v229_ce0,v229_we0,v229_d0,v229_q0,v229_address1,v229_ce1,v229_we1,v229_d1,v229_q1,v4,grp_fu_152_p_din0,grp_fu_152_p_din1,grp_fu_152_p_opcode,grp_fu_152_p_dout0,grp_fu_152_p_ce,grp_fu_156_p_din0,grp_fu_156_p_din1,grp_fu_156_p_dout0,grp_fu_156_p_ce,grp_fu_160_p_din0,grp_fu_160_p_din1,grp_fu_160_p_dout0,grp_fu_160_p_ce); 
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
output  [12:0] v228_0_address0;
output   v228_0_ce0;
input  [31:0] v228_0_q0;
output  [12:0] v228_0_address1;
output   v228_0_ce1;
input  [31:0] v228_0_q1;
output  [12:0] v228_1_address0;
output   v228_1_ce0;
input  [31:0] v228_1_q0;
output  [12:0] v228_1_address1;
output   v228_1_ce1;
input  [31:0] v228_1_q1;
output  [12:0] v228_2_address0;
output   v228_2_ce0;
input  [31:0] v228_2_q0;
output  [12:0] v228_2_address1;
output   v228_2_ce1;
input  [31:0] v228_2_q1;
output  [12:0] v228_3_address0;
output   v228_3_ce0;
input  [31:0] v228_3_q0;
output  [12:0] v228_3_address1;
output   v228_3_ce1;
input  [31:0] v228_3_q1;
output  [12:0] v228_4_address0;
output   v228_4_ce0;
input  [31:0] v228_4_q0;
output  [12:0] v228_4_address1;
output   v228_4_ce1;
input  [31:0] v228_4_q1;
output  [12:0] v228_5_address0;
output   v228_5_ce0;
input  [31:0] v228_5_q0;
output  [12:0] v228_5_address1;
output   v228_5_ce1;
input  [31:0] v228_5_q1;
output  [12:0] v228_6_address0;
output   v228_6_ce0;
input  [31:0] v228_6_q0;
output  [12:0] v228_6_address1;
output   v228_6_ce1;
input  [31:0] v228_6_q1;
output  [12:0] v228_7_address0;
output   v228_7_ce0;
input  [31:0] v228_7_q0;
output  [12:0] v228_7_address1;
output   v228_7_ce1;
input  [31:0] v228_7_q1;
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
output  [31:0] grp_fu_152_p_din0;
output  [31:0] grp_fu_152_p_din1;
output  [1:0] grp_fu_152_p_opcode;
input  [31:0] grp_fu_152_p_dout0;
output   grp_fu_152_p_ce;
output  [31:0] grp_fu_156_p_din0;
output  [31:0] grp_fu_156_p_din1;
input  [31:0] grp_fu_156_p_dout0;
output   grp_fu_156_p_ce;
output  [31:0] grp_fu_160_p_din0;
output  [31:0] grp_fu_160_p_din1;
input  [31:0] grp_fu_160_p_dout0;
output   grp_fu_160_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[12:0] v228_0_address0;
reg v228_0_ce0;
reg[12:0] v228_0_address1;
reg v228_0_ce1;
reg[12:0] v228_1_address0;
reg v228_1_ce0;
reg[12:0] v228_1_address1;
reg v228_1_ce1;
reg[12:0] v228_2_address0;
reg v228_2_ce0;
reg[12:0] v228_2_address1;
reg v228_2_ce1;
reg[12:0] v228_3_address0;
reg v228_3_ce0;
reg[12:0] v228_3_address1;
reg v228_3_ce1;
reg[12:0] v228_4_address0;
reg v228_4_ce0;
reg[12:0] v228_4_address1;
reg v228_4_ce1;
reg[12:0] v228_5_address0;
reg v228_5_ce0;
reg[12:0] v228_5_address1;
reg v228_5_ce1;
reg[12:0] v228_6_address0;
reg v228_6_ce0;
reg[12:0] v228_6_address1;
reg v228_6_ce1;
reg[12:0] v228_7_address0;
reg v228_7_ce0;
reg[12:0] v228_7_address1;
reg v228_7_ce1;
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
reg   [31:0] reg_389;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state12;
reg   [31:0] reg_393;
reg   [31:0] reg_397;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state13;
reg   [31:0] reg_401;
reg   [31:0] reg_405;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state14;
reg   [31:0] reg_409;
reg   [31:0] reg_413;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state15;
reg   [31:0] reg_417;
wire   [7:0] add_ln31_fu_435_p2;
reg   [7:0] add_ln31_reg_1087;
wire    ap_CS_fsm_state2;
wire   [15:0] zext_ln31_fu_441_p1;
reg   [15:0] zext_ln31_reg_1092;
wire   [2:0] trunc_ln31_fu_445_p1;
reg   [2:0] trunc_ln31_reg_1114;
wire   [12:0] mul_ln38_fu_463_p2;
reg   [12:0] mul_ln38_reg_1120;
wire   [0:0] cmp11_fu_469_p2;
reg   [0:0] cmp11_reg_1126;
wire   [15:0] v6_cast_fu_481_p1;
reg   [15:0] v6_cast_reg_1135;
wire    ap_CS_fsm_state3;
wire   [15:0] tmp_9_cast_fu_503_p1;
reg   [15:0] tmp_9_cast_reg_1141;
wire   [7:0] add_ln32_1_fu_507_p2;
reg   [7:0] add_ln32_1_reg_1147;
wire   [15:0] p_cast515_fu_523_p1;
reg   [15:0] p_cast515_reg_1152;
wire    ap_CS_fsm_state4;
wire   [15:0] p_cast516_fu_533_p1;
reg   [15:0] p_cast516_reg_1158;
wire   [15:0] p_cast517_fu_543_p1;
reg   [15:0] p_cast517_reg_1164;
wire    ap_CS_fsm_state5;
wire   [15:0] p_cast518_fu_553_p1;
reg   [15:0] p_cast518_reg_1170;
wire    ap_CS_fsm_state6;
wire   [15:0] p_cast519_fu_571_p1;
reg   [15:0] p_cast519_reg_1186;
wire   [15:0] p_cast520_fu_581_p1;
reg   [15:0] p_cast520_reg_1192;
wire   [15:0] p_cast521_fu_599_p1;
reg   [15:0] p_cast521_reg_1208;
wire   [15:0] add_ln32_cast522_fu_609_p1;
reg   [15:0] add_ln32_cast522_reg_1214;
wire   [15:0] p_cast523_fu_627_p1;
reg   [15:0] p_cast523_reg_1230;
wire   [15:0] p_cast524_fu_637_p1;
reg   [15:0] p_cast524_reg_1236;
wire   [15:0] p_cast525_fu_655_p1;
reg   [15:0] p_cast525_reg_1252;
wire   [15:0] p_cast526_fu_665_p1;
reg   [15:0] p_cast526_reg_1258;
wire   [15:0] p_cast527_fu_683_p1;
reg   [15:0] p_cast527_reg_1274;
wire   [15:0] p_cast528_fu_693_p1;
reg   [15:0] p_cast528_reg_1280;
wire   [15:0] mul_ln34_fu_697_p2;
reg   [15:0] mul_ln34_reg_1286;
wire    ap_CS_fsm_state11;
wire   [15:0] mul_ln49_fu_702_p2;
reg   [15:0] mul_ln49_reg_1291;
wire   [15:0] mul_ln62_fu_707_p2;
reg   [15:0] mul_ln62_reg_1296;
wire   [15:0] mul_ln75_fu_712_p2;
reg   [15:0] mul_ln75_reg_1301;
wire   [15:0] mul_ln88_fu_717_p2;
reg   [15:0] mul_ln88_reg_1306;
wire   [15:0] mul_ln101_fu_722_p2;
reg   [15:0] mul_ln101_reg_1311;
wire   [15:0] mul_ln114_fu_727_p2;
reg   [15:0] mul_ln114_reg_1316;
wire   [15:0] mul_ln127_fu_732_p2;
reg   [15:0] mul_ln127_reg_1321;
wire   [15:0] mul_ln140_fu_737_p2;
reg   [15:0] mul_ln140_reg_1326;
reg   [31:0] v224_load_8_reg_1331;
reg   [31:0] v224_load_9_reg_1336;
wire   [15:0] p_cast529_fu_756_p1;
reg   [15:0] p_cast529_reg_1351;
wire   [15:0] p_cast530_fu_766_p1;
reg   [15:0] p_cast530_reg_1357;
wire   [31:0] v11_fu_770_p1;
reg   [31:0] v11_reg_1363;
wire   [31:0] v24_fu_775_p1;
reg   [31:0] v24_reg_1368;
wire   [31:0] v35_fu_780_p1;
reg   [31:0] v35_reg_1373;
wire   [31:0] v46_fu_785_p1;
reg   [31:0] v46_reg_1378;
wire   [31:0] v57_fu_790_p1;
reg   [31:0] v57_reg_1383;
wire   [31:0] v68_fu_795_p1;
reg   [31:0] v68_reg_1388;
wire   [31:0] v79_fu_800_p1;
reg   [31:0] v79_reg_1393;
wire   [31:0] v90_fu_805_p1;
reg   [31:0] v90_reg_1398;
wire   [31:0] v101_fu_810_p1;
reg   [31:0] v101_reg_1403;
wire   [15:0] mul_ln34_1_fu_838_p2;
reg   [15:0] mul_ln34_1_reg_1438;
wire   [15:0] mul_ln49_1_fu_843_p2;
reg   [15:0] mul_ln49_1_reg_1443;
wire   [15:0] mul_ln62_1_fu_848_p2;
reg   [15:0] mul_ln62_1_reg_1448;
wire   [15:0] mul_ln75_1_fu_853_p2;
reg   [15:0] mul_ln75_1_reg_1453;
wire   [15:0] mul_ln88_1_fu_858_p2;
reg   [15:0] mul_ln88_1_reg_1458;
wire   [15:0] mul_ln101_1_fu_863_p2;
reg   [15:0] mul_ln101_1_reg_1463;
wire   [15:0] mul_ln114_1_fu_868_p2;
reg   [15:0] mul_ln114_1_reg_1468;
wire   [15:0] mul_ln127_1_fu_873_p2;
reg   [15:0] mul_ln127_1_reg_1473;
wire   [15:0] mul_ln140_1_fu_878_p2;
reg   [15:0] mul_ln140_1_reg_1478;
wire   [31:0] v11_1_fu_883_p1;
reg   [31:0] v11_1_reg_1483;
wire    ap_CS_fsm_state16;
wire   [31:0] v24_1_fu_887_p1;
reg   [31:0] v24_1_reg_1488;
wire   [31:0] v35_1_fu_892_p1;
reg   [31:0] v35_1_reg_1493;
wire   [31:0] v46_1_fu_897_p1;
reg   [31:0] v46_1_reg_1498;
wire   [31:0] v57_1_fu_902_p1;
reg   [31:0] v57_1_reg_1503;
wire   [31:0] v68_1_fu_907_p1;
reg   [31:0] v68_1_reg_1508;
wire   [31:0] v79_1_fu_912_p1;
reg   [31:0] v79_1_reg_1513;
wire   [31:0] v90_1_fu_917_p1;
reg   [31:0] v90_1_reg_1518;
wire   [31:0] v101_1_fu_922_p1;
reg   [31:0] v101_1_reg_1523;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_301_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_301_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_301_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_301_ap_ready;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_0_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_0_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_1_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_1_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_2_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_2_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_3_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_3_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_4_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_4_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_4_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_4_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_5_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_5_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_5_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_5_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_6_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_6_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_6_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_6_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_7_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_7_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_7_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_7_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_301_grp_fu_1528_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_301_grp_fu_1528_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_301_grp_fu_1528_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_301_grp_fu_1528_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_301_grp_fu_1532_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_301_grp_fu_1532_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_301_grp_fu_1532_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_301_grp_fu_1536_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_301_grp_fu_1536_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_301_grp_fu_1536_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_345_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_345_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_345_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_345_ap_ready;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_0_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_0_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_1_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_1_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_2_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_2_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_3_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_3_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_4_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_4_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_4_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_4_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_5_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_5_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_5_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_5_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_6_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_6_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_6_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_6_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_7_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_7_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_7_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_7_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_345_grp_fu_1528_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_345_grp_fu_1528_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_345_grp_fu_1528_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_345_grp_fu_1528_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_345_grp_fu_1532_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_345_grp_fu_1532_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_345_grp_fu_1532_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_345_grp_fu_1536_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_345_grp_fu_1536_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_345_grp_fu_1536_p_ce;
reg   [7:0] v6_reg_289;
wire    ap_CS_fsm_state17;
wire   [0:0] icmp_ln31_fu_429_p2;
reg    grp_kernel_2mm_node0_Pipeline_label_2_fu_301_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_26_fu_345_ap_start_reg;
wire   [63:0] p_cast531_fu_557_p1;
wire   [63:0] p_cast_fu_561_p1;
wire   [63:0] p_cast532_fu_585_p1;
wire   [63:0] p_cast533_fu_589_p1;
wire   [63:0] p_cast534_fu_613_p1;
wire   [63:0] p_cast535_fu_617_p1;
wire   [63:0] p_cast536_fu_641_p1;
wire   [63:0] p_cast537_fu_645_p1;
wire   [63:0] p_cast538_fu_669_p1;
wire   [63:0] p_cast539_fu_673_p1;
wire   [63:0] p_cast540_fu_742_p1;
wire   [63:0] p_cast541_fu_746_p1;
wire   [63:0] p_cast542_fu_814_p1;
wire   [63:0] p_cast543_fu_818_p1;
wire   [63:0] p_cast544_fu_822_p1;
wire   [63:0] p_cast545_fu_826_p1;
wire   [63:0] p_cast546_fu_830_p1;
wire   [63:0] p_cast547_fu_834_p1;
reg   [7:0] v5_fu_120;
wire   [0:0] icmp_ln32_fu_475_p2;
reg    ap_block_state1;
reg    v236_read_local;
reg    v224_ce1_local;
reg   [15:0] v224_address1_local;
reg    v224_ce0_local;
reg   [15:0] v224_address0_local;
wire   [4:0] lshr_ln_fu_449_p4;
wire   [4:0] mul_ln38_fu_463_p0;
wire   [8:0] mul_ln38_fu_463_p1;
wire   [6:0] tmp_fu_485_p4;
wire   [7:0] tmp_9_fu_495_p3;
wire   [7:0] empty_119_fu_517_p2;
wire   [7:0] empty_122_fu_527_p2;
wire   [7:0] empty_125_fu_537_p2;
wire   [7:0] empty_128_fu_547_p2;
wire   [15:0] grp_fu_927_p3;
wire   [15:0] grp_fu_935_p3;
wire   [7:0] empty_131_fu_565_p2;
wire   [7:0] empty_134_fu_575_p2;
wire   [15:0] grp_fu_943_p3;
wire   [15:0] grp_fu_951_p3;
wire   [7:0] empty_137_fu_593_p2;
wire   [7:0] add_ln32_fu_603_p2;
wire   [15:0] grp_fu_959_p3;
wire   [15:0] grp_fu_967_p3;
wire   [7:0] empty_142_fu_621_p2;
wire   [7:0] empty_145_fu_631_p2;
wire   [15:0] grp_fu_975_p3;
wire   [15:0] grp_fu_983_p3;
wire   [7:0] empty_148_fu_649_p2;
wire   [7:0] empty_151_fu_659_p2;
wire   [15:0] grp_fu_991_p3;
wire   [15:0] grp_fu_999_p3;
wire   [7:0] empty_154_fu_677_p2;
wire   [7:0] empty_157_fu_687_p2;
wire   [7:0] mul_ln34_fu_697_p0;
wire   [8:0] mul_ln34_fu_697_p1;
wire   [7:0] mul_ln49_fu_702_p0;
wire   [8:0] mul_ln49_fu_702_p1;
wire   [7:0] mul_ln62_fu_707_p0;
wire   [8:0] mul_ln62_fu_707_p1;
wire   [7:0] mul_ln75_fu_712_p0;
wire   [8:0] mul_ln75_fu_712_p1;
wire   [7:0] mul_ln88_fu_717_p0;
wire   [8:0] mul_ln88_fu_717_p1;
wire   [7:0] mul_ln101_fu_722_p0;
wire   [8:0] mul_ln101_fu_722_p1;
wire   [7:0] mul_ln114_fu_727_p0;
wire   [8:0] mul_ln114_fu_727_p1;
wire   [7:0] mul_ln127_fu_732_p0;
wire   [8:0] mul_ln127_fu_732_p1;
wire   [7:0] mul_ln140_fu_737_p0;
wire   [8:0] mul_ln140_fu_737_p1;
wire   [15:0] grp_fu_1007_p3;
wire   [15:0] grp_fu_1015_p3;
wire   [7:0] empty_160_fu_750_p2;
wire   [7:0] empty_163_fu_760_p2;
wire   [15:0] grp_fu_1023_p3;
wire   [15:0] grp_fu_1031_p3;
wire   [15:0] grp_fu_1039_p3;
wire   [15:0] grp_fu_1047_p3;
wire   [15:0] grp_fu_1055_p3;
wire   [15:0] grp_fu_1063_p3;
wire   [7:0] mul_ln34_1_fu_838_p0;
wire   [8:0] mul_ln34_1_fu_838_p1;
wire   [7:0] mul_ln49_1_fu_843_p0;
wire   [8:0] mul_ln49_1_fu_843_p1;
wire   [7:0] mul_ln62_1_fu_848_p0;
wire   [8:0] mul_ln62_1_fu_848_p1;
wire   [7:0] mul_ln75_1_fu_853_p0;
wire   [8:0] mul_ln75_1_fu_853_p1;
wire   [7:0] mul_ln88_1_fu_858_p0;
wire   [8:0] mul_ln88_1_fu_858_p1;
wire   [7:0] mul_ln101_1_fu_863_p0;
wire   [8:0] mul_ln101_1_fu_863_p1;
wire   [7:0] mul_ln114_1_fu_868_p0;
wire   [8:0] mul_ln114_1_fu_868_p1;
wire   [7:0] mul_ln127_1_fu_873_p0;
wire   [8:0] mul_ln127_1_fu_873_p1;
wire   [7:0] mul_ln140_1_fu_878_p0;
wire   [8:0] mul_ln140_1_fu_878_p1;
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
wire   [7:0] grp_fu_1047_p0;
wire   [7:0] grp_fu_1047_p1;
wire   [7:0] grp_fu_1047_p2;
wire   [7:0] grp_fu_1055_p0;
wire   [7:0] grp_fu_1055_p1;
wire   [7:0] grp_fu_1055_p2;
wire   [7:0] grp_fu_1063_p0;
wire   [7:0] grp_fu_1063_p1;
wire   [7:0] grp_fu_1063_p2;
reg    grp_fu_1039_ce;
reg    grp_fu_1047_ce;
reg    grp_fu_1055_ce;
reg    grp_fu_1063_ce;
reg   [31:0] grp_fu_1528_p0;
reg   [31:0] grp_fu_1528_p1;
reg    grp_fu_1528_ce;
reg   [31:0] grp_fu_1532_p0;
reg   [31:0] grp_fu_1532_p1;
reg    grp_fu_1532_ce;
reg   [31:0] grp_fu_1536_p0;
reg   [31:0] grp_fu_1536_p1;
reg    grp_fu_1536_ce;
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
wire   [15:0] grp_fu_1047_p00;
wire   [15:0] grp_fu_1055_p00;
wire   [15:0] grp_fu_1063_p00;
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
wire   [12:0] mul_ln38_fu_463_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_2_fu_301_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_26_fu_345_ap_start_reg = 1'b0;
#0 v5_fu_120 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_2 grp_kernel_2mm_node0_Pipeline_label_2_fu_301(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_ap_ready),.mul_ln38(mul_ln38_reg_1120),.v228_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_0_ce1),.v228_0_q1(v228_0_q1),.v228_1_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_1_ce1),.v228_1_q1(v228_1_q1),.v228_2_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_2_address0),.v228_2_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_2_ce0),.v228_2_q0(v228_2_q0),.v228_2_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_2_address1),.v228_2_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_2_ce1),.v228_2_q1(v228_2_q1),.v228_3_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_3_address0),.v228_3_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_3_ce0),.v228_3_q0(v228_3_q0),.v228_3_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_3_address1),.v228_3_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_3_ce1),.v228_3_q1(v228_3_q1),.v228_4_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_4_address0),.v228_4_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_4_ce0),.v228_4_q0(v228_4_q0),.v228_4_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_4_address1),.v228_4_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_4_ce1),.v228_4_q1(v228_4_q1),.v228_5_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_5_address0),.v228_5_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_5_ce0),.v228_5_q0(v228_5_q0),.v228_5_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_5_address1),.v228_5_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_5_ce1),.v228_5_q1(v228_5_q1),.v228_6_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_6_address0),.v228_6_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_6_ce0),.v228_6_q0(v228_6_q0),.v228_6_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_6_address1),.v228_6_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_6_ce1),.v228_6_q1(v228_6_q1),.v228_7_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_7_address0),.v228_7_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_7_ce0),.v228_7_q0(v228_7_q0),.v228_7_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_7_address1),.v228_7_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_7_ce1),.v228_7_q1(v228_7_q1),.mul_ln34(mul_ln34_reg_1286),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v229_d1),.v229_q1(v229_q1),.mul_ln49(mul_ln49_reg_1291),.mul_ln62(mul_ln62_reg_1296),.mul_ln75(mul_ln75_reg_1301),.mul_ln88(mul_ln88_reg_1306),.mul_ln101(mul_ln101_reg_1311),.mul_ln114(mul_ln114_reg_1316),.mul_ln127(mul_ln127_reg_1321),.mul_ln140(mul_ln140_reg_1326),.v4(v4),.cmp11(cmp11_reg_1126),.empty(trunc_ln31_reg_1114),.v11(v11_reg_1363),.v24(v24_reg_1368),.v35(v35_reg_1373),.v46(v46_reg_1378),.v57(v57_reg_1383),.v68(v68_reg_1388),.v79(v79_reg_1393),.v90(v90_reg_1398),.v101(v101_reg_1403),.grp_fu_1528_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_grp_fu_1528_p_din0),.grp_fu_1528_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_grp_fu_1528_p_din1),.grp_fu_1528_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_grp_fu_1528_p_opcode),.grp_fu_1528_p_dout0(grp_fu_152_p_dout0),.grp_fu_1528_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_grp_fu_1528_p_ce),.grp_fu_1532_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_grp_fu_1532_p_din0),.grp_fu_1532_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_grp_fu_1532_p_din1),.grp_fu_1532_p_dout0(grp_fu_156_p_dout0),.grp_fu_1532_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_grp_fu_1532_p_ce),.grp_fu_1536_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_grp_fu_1536_p_din0),.grp_fu_1536_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_grp_fu_1536_p_din1),.grp_fu_1536_p_dout0(grp_fu_160_p_dout0),.grp_fu_1536_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_301_grp_fu_1536_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_26 grp_kernel_2mm_node0_Pipeline_label_26_fu_345(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_ap_ready),.mul_ln38(mul_ln38_reg_1120),.v228_0_address0(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_0_ce1),.v228_0_q1(v228_0_q1),.v228_1_address0(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_1_ce1),.v228_1_q1(v228_1_q1),.v228_2_address0(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_2_address0),.v228_2_ce0(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_2_ce0),.v228_2_q0(v228_2_q0),.v228_2_address1(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_2_address1),.v228_2_ce1(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_2_ce1),.v228_2_q1(v228_2_q1),.v228_3_address0(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_3_address0),.v228_3_ce0(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_3_ce0),.v228_3_q0(v228_3_q0),.v228_3_address1(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_3_address1),.v228_3_ce1(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_3_ce1),.v228_3_q1(v228_3_q1),.v228_4_address0(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_4_address0),.v228_4_ce0(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_4_ce0),.v228_4_q0(v228_4_q0),.v228_4_address1(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_4_address1),.v228_4_ce1(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_4_ce1),.v228_4_q1(v228_4_q1),.v228_5_address0(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_5_address0),.v228_5_ce0(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_5_ce0),.v228_5_q0(v228_5_q0),.v228_5_address1(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_5_address1),.v228_5_ce1(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_5_ce1),.v228_5_q1(v228_5_q1),.v228_6_address0(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_6_address0),.v228_6_ce0(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_6_ce0),.v228_6_q0(v228_6_q0),.v228_6_address1(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_6_address1),.v228_6_ce1(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_6_ce1),.v228_6_q1(v228_6_q1),.v228_7_address0(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_7_address0),.v228_7_ce0(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_7_ce0),.v228_7_q0(v228_7_q0),.v228_7_address1(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_7_address1),.v228_7_ce1(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_7_ce1),.v228_7_q1(v228_7_q1),.mul_ln34_1(mul_ln34_1_reg_1438),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v229_d1),.v229_q1(v229_q1),.mul_ln49_1(mul_ln49_1_reg_1443),.mul_ln62_1(mul_ln62_1_reg_1448),.mul_ln75_1(mul_ln75_1_reg_1453),.mul_ln88_1(mul_ln88_1_reg_1458),.mul_ln101_1(mul_ln101_1_reg_1463),.mul_ln114_1(mul_ln114_1_reg_1468),.mul_ln127_1(mul_ln127_1_reg_1473),.mul_ln140_1(mul_ln140_1_reg_1478),.v4(v4),.cmp11(cmp11_reg_1126),.empty(trunc_ln31_reg_1114),.v11_1(v11_1_reg_1483),.v24_1(v24_1_reg_1488),.v35_1(v35_1_reg_1493),.v46_1(v46_1_reg_1498),.v57_1(v57_1_reg_1503),.v68_1(v68_1_reg_1508),.v79_1(v79_1_reg_1513),.v90_1(v90_1_reg_1518),.v101_1(v101_1_reg_1523),.grp_fu_1528_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_grp_fu_1528_p_din0),.grp_fu_1528_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_grp_fu_1528_p_din1),.grp_fu_1528_p_opcode(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_grp_fu_1528_p_opcode),.grp_fu_1528_p_dout0(grp_fu_152_p_dout0),.grp_fu_1528_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_grp_fu_1528_p_ce),.grp_fu_1532_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_grp_fu_1532_p_din0),.grp_fu_1532_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_grp_fu_1532_p_din1),.grp_fu_1532_p_dout0(grp_fu_156_p_dout0),.grp_fu_1532_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_grp_fu_1532_p_ce),.grp_fu_1536_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_grp_fu_1536_p_din0),.grp_fu_1536_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_grp_fu_1536_p_din1),.grp_fu_1536_p_dout0(grp_fu_160_p_dout0),.grp_fu_1536_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_345_grp_fu_1536_p_ce));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U197(.din0(mul_ln38_fu_463_p0),.din1(mul_ln38_fu_463_p1),.dout(mul_ln38_fu_463_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U198(.din0(mul_ln34_fu_697_p0),.din1(mul_ln34_fu_697_p1),.dout(mul_ln34_fu_697_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U199(.din0(mul_ln49_fu_702_p0),.din1(mul_ln49_fu_702_p1),.dout(mul_ln49_fu_702_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U200(.din0(mul_ln62_fu_707_p0),.din1(mul_ln62_fu_707_p1),.dout(mul_ln62_fu_707_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U201(.din0(mul_ln75_fu_712_p0),.din1(mul_ln75_fu_712_p1),.dout(mul_ln75_fu_712_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U202(.din0(mul_ln88_fu_717_p0),.din1(mul_ln88_fu_717_p1),.dout(mul_ln88_fu_717_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U203(.din0(mul_ln101_fu_722_p0),.din1(mul_ln101_fu_722_p1),.dout(mul_ln101_fu_722_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U204(.din0(mul_ln114_fu_727_p0),.din1(mul_ln114_fu_727_p1),.dout(mul_ln114_fu_727_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U205(.din0(mul_ln127_fu_732_p0),.din1(mul_ln127_fu_732_p1),.dout(mul_ln127_fu_732_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U206(.din0(mul_ln140_fu_737_p0),.din1(mul_ln140_fu_737_p1),.dout(mul_ln140_fu_737_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U207(.din0(mul_ln34_1_fu_838_p0),.din1(mul_ln34_1_fu_838_p1),.dout(mul_ln34_1_fu_838_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U208(.din0(mul_ln49_1_fu_843_p0),.din1(mul_ln49_1_fu_843_p1),.dout(mul_ln49_1_fu_843_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U209(.din0(mul_ln62_1_fu_848_p0),.din1(mul_ln62_1_fu_848_p1),.dout(mul_ln62_1_fu_848_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U210(.din0(mul_ln75_1_fu_853_p0),.din1(mul_ln75_1_fu_853_p1),.dout(mul_ln75_1_fu_853_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U211(.din0(mul_ln88_1_fu_858_p0),.din1(mul_ln88_1_fu_858_p1),.dout(mul_ln88_1_fu_858_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U212(.din0(mul_ln101_1_fu_863_p0),.din1(mul_ln101_1_fu_863_p1),.dout(mul_ln101_1_fu_863_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U213(.din0(mul_ln114_1_fu_868_p0),.din1(mul_ln114_1_fu_868_p1),.dout(mul_ln114_1_fu_868_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U214(.din0(mul_ln127_1_fu_873_p0),.din1(mul_ln127_1_fu_873_p1),.dout(mul_ln127_1_fu_873_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U215(.din0(mul_ln140_1_fu_878_p0),.din1(mul_ln140_1_fu_878_p1),.dout(mul_ln140_1_fu_878_p2));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U216(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_927_p0),.din1(grp_fu_927_p1),.din2(grp_fu_927_p2),.ce(1'b1),.dout(grp_fu_927_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U217(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_935_p0),.din1(grp_fu_935_p1),.din2(grp_fu_935_p2),.ce(1'b1),.dout(grp_fu_935_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U218(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_943_p0),.din1(grp_fu_943_p1),.din2(grp_fu_943_p2),.ce(1'b1),.dout(grp_fu_943_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U219(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_951_p0),.din1(grp_fu_951_p1),.din2(grp_fu_951_p2),.ce(1'b1),.dout(grp_fu_951_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U220(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_959_p0),.din1(grp_fu_959_p1),.din2(grp_fu_959_p2),.ce(1'b1),.dout(grp_fu_959_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U221(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_967_p0),.din1(grp_fu_967_p1),.din2(grp_fu_967_p2),.ce(1'b1),.dout(grp_fu_967_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U222(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_975_p0),.din1(grp_fu_975_p1),.din2(grp_fu_975_p2),.ce(1'b1),.dout(grp_fu_975_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U223(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_983_p0),.din1(grp_fu_983_p1),.din2(grp_fu_983_p2),.ce(1'b1),.dout(grp_fu_983_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U224(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_991_p0),.din1(grp_fu_991_p1),.din2(grp_fu_991_p2),.ce(1'b1),.dout(grp_fu_991_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U225(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_999_p0),.din1(grp_fu_999_p1),.din2(grp_fu_999_p2),.ce(1'b1),.dout(grp_fu_999_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U226(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1007_p0),.din1(grp_fu_1007_p1),.din2(grp_fu_1007_p2),.ce(1'b1),.dout(grp_fu_1007_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U227(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1015_p0),.din1(grp_fu_1015_p1),.din2(grp_fu_1015_p2),.ce(1'b1),.dout(grp_fu_1015_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U228(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1023_p0),.din1(grp_fu_1023_p1),.din2(grp_fu_1023_p2),.ce(1'b1),.dout(grp_fu_1023_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U229(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1031_p0),.din1(grp_fu_1031_p1),.din2(grp_fu_1031_p2),.ce(1'b1),.dout(grp_fu_1031_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U230(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1039_p0),.din1(grp_fu_1039_p1),.din2(grp_fu_1039_p2),.ce(grp_fu_1039_ce),.dout(grp_fu_1039_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U231(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1047_p0),.din1(grp_fu_1047_p1),.din2(grp_fu_1047_p2),.ce(grp_fu_1047_ce),.dout(grp_fu_1047_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U232(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1055_p0),.din1(grp_fu_1055_p1),.din2(grp_fu_1055_p2),.ce(grp_fu_1055_ce),.dout(grp_fu_1055_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U233(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1063_p0),.din1(grp_fu_1063_p1),.din2(grp_fu_1063_p2),.ce(grp_fu_1063_ce),.dout(grp_fu_1063_p3));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_26_fu_345_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node0_Pipeline_label_26_fu_345_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_26_fu_345_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_26_fu_345_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_2_fu_301_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_301_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_301_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_301_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_120 <= 8'd0;
    end else if (((icmp_ln32_fu_475_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v5_fu_120 <= add_ln31_reg_1087;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln31_fu_429_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v6_reg_289 <= 8'd0;
    end else if (((grp_kernel_2mm_node0_Pipeline_label_26_fu_345_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        v6_reg_289 <= add_ln32_1_reg_1147;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln31_reg_1087 <= add_ln31_fu_435_p2;
        cmp11_reg_1126 <= cmp11_fu_469_p2;
        mul_ln38_reg_1120 <= mul_ln38_fu_463_p2;
        trunc_ln31_reg_1114 <= trunc_ln31_fu_445_p1;
        zext_ln31_reg_1092[7 : 0] <= zext_ln31_fu_441_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_1_reg_1147 <= add_ln32_1_fu_507_p2;
        tmp_9_cast_reg_1141[7 : 1] <= tmp_9_cast_fu_503_p1[7 : 1];
        v6_cast_reg_1135[7 : 0] <= v6_cast_fu_481_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        add_ln32_cast522_reg_1214[7 : 0] <= add_ln32_cast522_fu_609_p1[7 : 0];
        p_cast521_reg_1208[7 : 0] <= p_cast521_fu_599_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln101_1_reg_1463 <= mul_ln101_1_fu_863_p2;
        mul_ln114_1_reg_1468 <= mul_ln114_1_fu_868_p2;
        mul_ln127_1_reg_1473 <= mul_ln127_1_fu_873_p2;
        mul_ln140_1_reg_1478 <= mul_ln140_1_fu_878_p2;
        mul_ln34_1_reg_1438 <= mul_ln34_1_fu_838_p2;
        mul_ln49_1_reg_1443 <= mul_ln49_1_fu_843_p2;
        mul_ln62_1_reg_1448 <= mul_ln62_1_fu_848_p2;
        mul_ln75_1_reg_1453 <= mul_ln75_1_fu_853_p2;
        mul_ln88_1_reg_1458 <= mul_ln88_1_fu_858_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        mul_ln101_reg_1311 <= mul_ln101_fu_722_p2;
        mul_ln114_reg_1316 <= mul_ln114_fu_727_p2;
        mul_ln127_reg_1321 <= mul_ln127_fu_732_p2;
        mul_ln140_reg_1326 <= mul_ln140_fu_737_p2;
        mul_ln34_reg_1286 <= mul_ln34_fu_697_p2;
        mul_ln49_reg_1291 <= mul_ln49_fu_702_p2;
        mul_ln62_reg_1296 <= mul_ln62_fu_707_p2;
        mul_ln75_reg_1301 <= mul_ln75_fu_712_p2;
        mul_ln88_reg_1306 <= mul_ln88_fu_717_p2;
        p_cast529_reg_1351[7 : 0] <= p_cast529_fu_756_p1[7 : 0];
        p_cast530_reg_1357[7 : 0] <= p_cast530_fu_766_p1[7 : 0];
        v224_load_8_reg_1331 <= v224_q1;
        v224_load_9_reg_1336 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        p_cast515_reg_1152[7 : 0] <= p_cast515_fu_523_p1[7 : 0];
        p_cast516_reg_1158[7 : 0] <= p_cast516_fu_533_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        p_cast517_reg_1164[7 : 0] <= p_cast517_fu_543_p1[7 : 0];
        p_cast518_reg_1170[7 : 0] <= p_cast518_fu_553_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        p_cast519_reg_1186[7 : 0] <= p_cast519_fu_571_p1[7 : 0];
        p_cast520_reg_1192[7 : 0] <= p_cast520_fu_581_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        p_cast523_reg_1230[7 : 0] <= p_cast523_fu_627_p1[7 : 0];
        p_cast524_reg_1236[7 : 0] <= p_cast524_fu_637_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        p_cast525_reg_1252[7 : 0] <= p_cast525_fu_655_p1[7 : 0];
        p_cast526_reg_1258[7 : 0] <= p_cast526_fu_665_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        p_cast527_reg_1274[7 : 0] <= p_cast527_fu_683_p1[7 : 0];
        p_cast528_reg_1280[7 : 0] <= p_cast528_fu_693_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7))) begin
        reg_389 <= v224_q1;
        reg_393 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_397 <= v224_q1;
        reg_401 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9))) begin
        reg_405 <= v224_q1;
        reg_409 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10))) begin
        reg_413 <= v224_q1;
        reg_417 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        v101_1_reg_1523 <= v101_1_fu_922_p1;
        v11_1_reg_1483 <= v11_1_fu_883_p1;
        v24_1_reg_1488 <= v24_1_fu_887_p1;
        v35_1_reg_1493 <= v35_1_fu_892_p1;
        v46_1_reg_1498 <= v46_1_fu_897_p1;
        v57_1_reg_1503 <= v57_1_fu_902_p1;
        v68_1_reg_1508 <= v68_1_fu_907_p1;
        v79_1_reg_1513 <= v79_1_fu_912_p1;
        v90_1_reg_1518 <= v90_1_fu_917_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        v101_reg_1403 <= v101_fu_810_p1;
        v11_reg_1363 <= v11_fu_770_p1;
        v24_reg_1368 <= v24_fu_775_p1;
        v35_reg_1373 <= v35_fu_780_p1;
        v46_reg_1378 <= v46_fu_785_p1;
        v57_reg_1383 <= v57_fu_790_p1;
        v68_reg_1388 <= v68_fu_795_p1;
        v79_reg_1393 <= v79_fu_800_p1;
        v90_reg_1398 <= v90_fu_805_p1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_301_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
    end
end
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_26_fu_345_ap_done == 1'b0)) begin
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
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln31_fu_429_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
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
    if (((icmp_ln31_fu_429_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_301_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1039_ce = 1'b1;
    end else begin
        grp_fu_1039_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_301_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1047_ce = 1'b1;
    end else begin
        grp_fu_1047_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_301_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1055_ce = 1'b1;
    end else begin
        grp_fu_1055_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_301_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1063_ce = 1'b1;
    end else begin
        grp_fu_1063_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1528_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_grp_fu_1528_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1528_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_grp_fu_1528_p_ce;
    end else begin
        grp_fu_1528_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1528_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_grp_fu_1528_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1528_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_grp_fu_1528_p_din0;
    end else begin
        grp_fu_1528_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1528_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_grp_fu_1528_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1528_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_grp_fu_1528_p_din1;
    end else begin
        grp_fu_1528_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1532_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_grp_fu_1532_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1532_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_grp_fu_1532_p_ce;
    end else begin
        grp_fu_1532_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1532_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_grp_fu_1532_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1532_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_grp_fu_1532_p_din0;
    end else begin
        grp_fu_1532_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1532_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_grp_fu_1532_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1532_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_grp_fu_1532_p_din1;
    end else begin
        grp_fu_1532_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1536_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_grp_fu_1536_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1536_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_grp_fu_1536_p_ce;
    end else begin
        grp_fu_1536_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1536_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_grp_fu_1536_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1536_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_grp_fu_1536_p_din0;
    end else begin
        grp_fu_1536_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1536_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_grp_fu_1536_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1536_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_grp_fu_1536_p_din1;
    end else begin
        grp_fu_1536_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_address0_local = p_cast547_fu_834_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_address0_local = p_cast545_fu_826_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_address0_local = p_cast543_fu_818_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_address0_local = p_cast541_fu_746_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address0_local = p_cast539_fu_673_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address0_local = p_cast537_fu_645_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address0_local = p_cast535_fu_617_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address0_local = p_cast533_fu_589_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_address0_local = p_cast_fu_561_p1;
    end else begin
        v224_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_address1_local = p_cast546_fu_830_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_address1_local = p_cast544_fu_822_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_address1_local = p_cast542_fu_814_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_address1_local = p_cast540_fu_742_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address1_local = p_cast538_fu_669_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address1_local = p_cast536_fu_641_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address1_local = p_cast534_fu_613_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address1_local = p_cast532_fu_585_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_address1_local = p_cast531_fu_557_p1;
    end else begin
        v224_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_301_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        v224_ce0_local = 1'b1;
    end else begin
        v224_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_301_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        v224_ce1_local = 1'b1;
    end else begin
        v224_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_0_address0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_0_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_0_address0;
    end else begin
        v228_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_0_address1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_0_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_0_address1;
    end else begin
        v228_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_0_ce0;
    end else begin
        v228_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_0_ce1;
    end else begin
        v228_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_1_address0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_1_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_1_address0;
    end else begin
        v228_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_1_address1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_1_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_1_address1;
    end else begin
        v228_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_1_ce0;
    end else begin
        v228_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_1_ce1;
    end else begin
        v228_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_2_address0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_2_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_2_address0;
    end else begin
        v228_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_2_address1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_2_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_2_address1;
    end else begin
        v228_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_2_ce0;
    end else begin
        v228_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_2_ce1;
    end else begin
        v228_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_3_address0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_3_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_3_address0;
    end else begin
        v228_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_3_address1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_3_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_3_address1;
    end else begin
        v228_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_3_ce0;
    end else begin
        v228_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_3_ce1;
    end else begin
        v228_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_4_address0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_4_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_4_address0;
    end else begin
        v228_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_4_address1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_4_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_4_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_4_address1;
    end else begin
        v228_4_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_4_ce0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_4_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_4_ce0;
    end else begin
        v228_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_4_ce1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_4_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_4_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_4_ce1;
    end else begin
        v228_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_5_address0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_5_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_5_address0;
    end else begin
        v228_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_5_address1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_5_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_5_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_5_address1;
    end else begin
        v228_5_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_5_ce0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_5_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_5_ce0;
    end else begin
        v228_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_5_ce1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_5_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_5_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_5_ce1;
    end else begin
        v228_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_6_address0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_6_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_6_address0;
    end else begin
        v228_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_6_address1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_6_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_6_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_6_address1;
    end else begin
        v228_6_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_6_ce0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_6_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_6_ce0;
    end else begin
        v228_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_6_ce1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_6_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_6_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_6_ce1;
    end else begin
        v228_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_7_address0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_7_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_7_address0;
    end else begin
        v228_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_7_address1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_7_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_7_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_7_address1;
    end else begin
        v228_7_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_7_ce0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_7_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_7_ce0;
    end else begin
        v228_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_7_ce1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v228_7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_7_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v228_7_ce1;
    end else begin
        v228_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v229_address0;
    end else begin
        v229_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v229_address1;
    end else begin
        v229_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v229_ce0;
    end else begin
        v229_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v229_ce1;
    end else begin
        v229_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v229_d0;
    end else begin
        v229_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v229_d1;
    end else begin
        v229_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v229_we0;
    end else begin
        v229_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_v229_we1;
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
            if (((icmp_ln31_fu_429_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln32_fu_475_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_301_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_26_fu_345_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
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
assign add_ln31_fu_435_p2 = (v5_fu_120 + 8'd1);
assign add_ln32_1_fu_507_p2 = (v6_reg_289 + 8'd18);
assign add_ln32_cast522_fu_609_p1 = add_ln32_fu_603_p2;
assign add_ln32_fu_603_p2 = (v6_reg_289 + 8'd9);
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
assign cmp11_fu_469_p2 = ((v5_fu_120 == 8'd0) ? 1'b1 : 1'b0);
assign empty_119_fu_517_p2 = (v6_reg_289 + 8'd2);
assign empty_122_fu_527_p2 = (v6_reg_289 + 8'd3);
assign empty_125_fu_537_p2 = (v6_reg_289 + 8'd4);
assign empty_128_fu_547_p2 = (v6_reg_289 + 8'd5);
assign empty_131_fu_565_p2 = (v6_reg_289 + 8'd6);
assign empty_134_fu_575_p2 = (v6_reg_289 + 8'd7);
assign empty_137_fu_593_p2 = (v6_reg_289 + 8'd8);
assign empty_142_fu_621_p2 = (v6_reg_289 + 8'd10);
assign empty_145_fu_631_p2 = (v6_reg_289 + 8'd11);
assign empty_148_fu_649_p2 = (v6_reg_289 + 8'd12);
assign empty_151_fu_659_p2 = (v6_reg_289 + 8'd13);
assign empty_154_fu_677_p2 = (v6_reg_289 + 8'd14);
assign empty_157_fu_687_p2 = (v6_reg_289 + 8'd15);
assign empty_160_fu_750_p2 = (v6_reg_289 + 8'd16);
assign empty_163_fu_760_p2 = (v6_reg_289 + 8'd17);
assign grp_fu_1007_p0 = grp_fu_1007_p00;
assign grp_fu_1007_p00 = empty_142_fu_621_p2;
assign grp_fu_1007_p1 = 16'd190;
assign grp_fu_1007_p2 = zext_ln31_reg_1092;
assign grp_fu_1015_p0 = grp_fu_1015_p00;
assign grp_fu_1015_p00 = empty_145_fu_631_p2;
assign grp_fu_1015_p1 = 16'd190;
assign grp_fu_1015_p2 = zext_ln31_reg_1092;
assign grp_fu_1023_p0 = grp_fu_1023_p00;
assign grp_fu_1023_p00 = empty_148_fu_649_p2;
assign grp_fu_1023_p1 = 16'd190;
assign grp_fu_1023_p2 = zext_ln31_reg_1092;
assign grp_fu_1031_p0 = grp_fu_1031_p00;
assign grp_fu_1031_p00 = empty_151_fu_659_p2;
assign grp_fu_1031_p1 = 16'd190;
assign grp_fu_1031_p2 = zext_ln31_reg_1092;
assign grp_fu_1039_p0 = grp_fu_1039_p00;
assign grp_fu_1039_p00 = empty_154_fu_677_p2;
assign grp_fu_1039_p1 = 16'd190;
assign grp_fu_1039_p2 = zext_ln31_reg_1092;
assign grp_fu_1047_p0 = grp_fu_1047_p00;
assign grp_fu_1047_p00 = empty_157_fu_687_p2;
assign grp_fu_1047_p1 = 16'd190;
assign grp_fu_1047_p2 = zext_ln31_reg_1092;
assign grp_fu_1055_p0 = grp_fu_1055_p00;
assign grp_fu_1055_p00 = empty_160_fu_750_p2;
assign grp_fu_1055_p1 = 16'd190;
assign grp_fu_1055_p2 = zext_ln31_reg_1092;
assign grp_fu_1063_p0 = grp_fu_1063_p00;
assign grp_fu_1063_p00 = empty_163_fu_760_p2;
assign grp_fu_1063_p1 = 16'd190;
assign grp_fu_1063_p2 = zext_ln31_reg_1092;
assign grp_fu_152_p_ce = grp_fu_1528_ce;
assign grp_fu_152_p_din0 = grp_fu_1528_p0;
assign grp_fu_152_p_din1 = grp_fu_1528_p1;
assign grp_fu_152_p_opcode = 2'd0;
assign grp_fu_156_p_ce = grp_fu_1532_ce;
assign grp_fu_156_p_din0 = grp_fu_1532_p0;
assign grp_fu_156_p_din1 = grp_fu_1532_p1;
assign grp_fu_160_p_ce = grp_fu_1536_ce;
assign grp_fu_160_p_din0 = grp_fu_1536_p0;
assign grp_fu_160_p_din1 = grp_fu_1536_p1;
assign grp_fu_927_p0 = grp_fu_927_p00;
assign grp_fu_927_p00 = v6_reg_289;
assign grp_fu_927_p1 = 16'd190;
assign grp_fu_927_p2 = zext_ln31_reg_1092;
assign grp_fu_935_p0 = grp_fu_935_p00;
assign grp_fu_935_p00 = tmp_9_fu_495_p3;
assign grp_fu_935_p1 = 16'd190;
assign grp_fu_935_p2 = zext_ln31_reg_1092;
assign grp_fu_943_p0 = grp_fu_943_p00;
assign grp_fu_943_p00 = empty_119_fu_517_p2;
assign grp_fu_943_p1 = 16'd190;
assign grp_fu_943_p2 = zext_ln31_reg_1092;
assign grp_fu_951_p0 = grp_fu_951_p00;
assign grp_fu_951_p00 = empty_122_fu_527_p2;
assign grp_fu_951_p1 = 16'd190;
assign grp_fu_951_p2 = zext_ln31_reg_1092;
assign grp_fu_959_p0 = grp_fu_959_p00;
assign grp_fu_959_p00 = empty_125_fu_537_p2;
assign grp_fu_959_p1 = 16'd190;
assign grp_fu_959_p2 = zext_ln31_reg_1092;
assign grp_fu_967_p0 = grp_fu_967_p00;
assign grp_fu_967_p00 = empty_128_fu_547_p2;
assign grp_fu_967_p1 = 16'd190;
assign grp_fu_967_p2 = zext_ln31_reg_1092;
assign grp_fu_975_p0 = grp_fu_975_p00;
assign grp_fu_975_p00 = empty_131_fu_565_p2;
assign grp_fu_975_p1 = 16'd190;
assign grp_fu_975_p2 = zext_ln31_reg_1092;
assign grp_fu_983_p0 = grp_fu_983_p00;
assign grp_fu_983_p00 = empty_134_fu_575_p2;
assign grp_fu_983_p1 = 16'd190;
assign grp_fu_983_p2 = zext_ln31_reg_1092;
assign grp_fu_991_p0 = grp_fu_991_p00;
assign grp_fu_991_p00 = empty_137_fu_593_p2;
assign grp_fu_991_p1 = 16'd190;
assign grp_fu_991_p2 = zext_ln31_reg_1092;
assign grp_fu_999_p0 = grp_fu_999_p00;
assign grp_fu_999_p00 = add_ln32_fu_603_p2;
assign grp_fu_999_p1 = 16'd190;
assign grp_fu_999_p2 = zext_ln31_reg_1092;
assign grp_kernel_2mm_node0_Pipeline_label_26_fu_345_ap_start = grp_kernel_2mm_node0_Pipeline_label_26_fu_345_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_2_fu_301_ap_start = grp_kernel_2mm_node0_Pipeline_label_2_fu_301_ap_start_reg;
assign icmp_ln31_fu_429_p2 = ((v5_fu_120 == 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_475_p2 = ((v6_reg_289 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln_fu_449_p4 = {{v5_fu_120[7:3]}};
assign mul_ln101_1_fu_863_p0 = p_cast527_reg_1274;
assign mul_ln101_1_fu_863_p1 = 16'd220;
assign mul_ln101_fu_722_p0 = p_cast518_reg_1170;
assign mul_ln101_fu_722_p1 = 16'd220;
assign mul_ln114_1_fu_868_p0 = p_cast528_reg_1280;
assign mul_ln114_1_fu_868_p1 = 16'd220;
assign mul_ln114_fu_727_p0 = p_cast519_reg_1186;
assign mul_ln114_fu_727_p1 = 16'd220;
assign mul_ln127_1_fu_873_p0 = p_cast529_reg_1351;
assign mul_ln127_1_fu_873_p1 = 16'd220;
assign mul_ln127_fu_732_p0 = p_cast520_reg_1192;
assign mul_ln127_fu_732_p1 = 16'd220;
assign mul_ln140_1_fu_878_p0 = p_cast530_reg_1357;
assign mul_ln140_1_fu_878_p1 = 16'd220;
assign mul_ln140_fu_737_p0 = p_cast521_reg_1208;
assign mul_ln140_fu_737_p1 = 16'd220;
assign mul_ln34_1_fu_838_p0 = add_ln32_cast522_reg_1214;
assign mul_ln34_1_fu_838_p1 = 16'd220;
assign mul_ln34_fu_697_p0 = v6_cast_reg_1135;
assign mul_ln34_fu_697_p1 = 16'd220;
assign mul_ln38_fu_463_p0 = mul_ln38_fu_463_p00;
assign mul_ln38_fu_463_p00 = lshr_ln_fu_449_p4;
assign mul_ln38_fu_463_p1 = 13'd220;
assign mul_ln49_1_fu_843_p0 = p_cast523_reg_1230;
assign mul_ln49_1_fu_843_p1 = 16'd220;
assign mul_ln49_fu_702_p0 = tmp_9_cast_reg_1141;
assign mul_ln49_fu_702_p1 = 16'd220;
assign mul_ln62_1_fu_848_p0 = p_cast524_reg_1236;
assign mul_ln62_1_fu_848_p1 = 16'd220;
assign mul_ln62_fu_707_p0 = p_cast515_reg_1152;
assign mul_ln62_fu_707_p1 = 16'd220;
assign mul_ln75_1_fu_853_p0 = p_cast525_reg_1252;
assign mul_ln75_1_fu_853_p1 = 16'd220;
assign mul_ln75_fu_712_p0 = p_cast516_reg_1158;
assign mul_ln75_fu_712_p1 = 16'd220;
assign mul_ln88_1_fu_858_p0 = p_cast526_reg_1258;
assign mul_ln88_1_fu_858_p1 = 16'd220;
assign mul_ln88_fu_717_p0 = p_cast517_reg_1164;
assign mul_ln88_fu_717_p1 = 16'd220;
assign p_cast515_fu_523_p1 = empty_119_fu_517_p2;
assign p_cast516_fu_533_p1 = empty_122_fu_527_p2;
assign p_cast517_fu_543_p1 = empty_125_fu_537_p2;
assign p_cast518_fu_553_p1 = empty_128_fu_547_p2;
assign p_cast519_fu_571_p1 = empty_131_fu_565_p2;
assign p_cast520_fu_581_p1 = empty_134_fu_575_p2;
assign p_cast521_fu_599_p1 = empty_137_fu_593_p2;
assign p_cast523_fu_627_p1 = empty_142_fu_621_p2;
assign p_cast524_fu_637_p1 = empty_145_fu_631_p2;
assign p_cast525_fu_655_p1 = empty_148_fu_649_p2;
assign p_cast526_fu_665_p1 = empty_151_fu_659_p2;
assign p_cast527_fu_683_p1 = empty_154_fu_677_p2;
assign p_cast528_fu_693_p1 = empty_157_fu_687_p2;
assign p_cast529_fu_756_p1 = empty_160_fu_750_p2;
assign p_cast530_fu_766_p1 = empty_163_fu_760_p2;
assign p_cast531_fu_557_p1 = grp_fu_927_p3;
assign p_cast532_fu_585_p1 = grp_fu_943_p3;
assign p_cast533_fu_589_p1 = grp_fu_951_p3;
assign p_cast534_fu_613_p1 = grp_fu_959_p3;
assign p_cast535_fu_617_p1 = grp_fu_967_p3;
assign p_cast536_fu_641_p1 = grp_fu_975_p3;
assign p_cast537_fu_645_p1 = grp_fu_983_p3;
assign p_cast538_fu_669_p1 = grp_fu_991_p3;
assign p_cast539_fu_673_p1 = grp_fu_999_p3;
assign p_cast540_fu_742_p1 = grp_fu_1007_p3;
assign p_cast541_fu_746_p1 = grp_fu_1015_p3;
assign p_cast542_fu_814_p1 = grp_fu_1023_p3;
assign p_cast543_fu_818_p1 = grp_fu_1031_p3;
assign p_cast544_fu_822_p1 = grp_fu_1039_p3;
assign p_cast545_fu_826_p1 = grp_fu_1047_p3;
assign p_cast546_fu_830_p1 = grp_fu_1055_p3;
assign p_cast547_fu_834_p1 = grp_fu_1063_p3;
assign p_cast_fu_561_p1 = grp_fu_935_p3;
assign tmp_9_cast_fu_503_p1 = tmp_9_fu_495_p3;
assign tmp_9_fu_495_p3 = {{tmp_fu_485_p4}, {1'd1}};
assign tmp_fu_485_p4 = {{v6_reg_289[7:1]}};
assign trunc_ln31_fu_445_p1 = v5_fu_120[2:0];
assign v101_1_fu_922_p1 = reg_417;
assign v101_fu_810_p1 = v224_load_8_reg_1331;
assign v11_1_fu_883_p1 = v224_load_9_reg_1336;
assign v11_fu_770_p1 = reg_389;
assign v224_address0 = v224_address0_local;
assign v224_address1 = v224_address1_local;
assign v224_ce0 = v224_ce0_local;
assign v224_ce1 = v224_ce1_local;
assign v236_read = v236_read_local;
assign v24_1_fu_887_p1 = reg_389;
assign v24_fu_775_p1 = reg_393;
assign v35_1_fu_892_p1 = reg_393;
assign v35_fu_780_p1 = reg_397;
assign v46_1_fu_897_p1 = reg_397;
assign v46_fu_785_p1 = reg_401;
assign v57_1_fu_902_p1 = reg_401;
assign v57_fu_790_p1 = reg_405;
assign v68_1_fu_907_p1 = reg_405;
assign v68_fu_795_p1 = reg_409;
assign v6_cast_fu_481_p1 = v6_reg_289;
assign v79_1_fu_912_p1 = reg_409;
assign v79_fu_800_p1 = reg_413;
assign v90_1_fu_917_p1 = reg_413;
assign v90_fu_805_p1 = reg_417;
assign zext_ln31_fu_441_p1 = v5_fu_120;
always @ (posedge ap_clk) begin
    zext_ln31_reg_1092[15:8] <= 8'b00000000;
    v6_cast_reg_1135[15:8] <= 8'b00000000;
    tmp_9_cast_reg_1141[0] <= 1'b1;
    tmp_9_cast_reg_1141[15:8] <= 8'b00000000;
    p_cast515_reg_1152[15:8] <= 8'b00000000;
    p_cast516_reg_1158[15:8] <= 8'b00000000;
    p_cast517_reg_1164[15:8] <= 8'b00000000;
    p_cast518_reg_1170[15:8] <= 8'b00000000;
    p_cast519_reg_1186[15:8] <= 8'b00000000;
    p_cast520_reg_1192[15:8] <= 8'b00000000;
    p_cast521_reg_1208[15:8] <= 8'b00000000;
    add_ln32_cast522_reg_1214[15:8] <= 8'b00000000;
    p_cast523_reg_1230[15:8] <= 8'b00000000;
    p_cast524_reg_1236[15:8] <= 8'b00000000;
    p_cast525_reg_1252[15:8] <= 8'b00000000;
    p_cast526_reg_1258[15:8] <= 8'b00000000;
    p_cast527_reg_1274[15:8] <= 8'b00000000;
    p_cast528_reg_1280[15:8] <= 8'b00000000;
    p_cast529_reg_1351[15:8] <= 8'b00000000;
    p_cast530_reg_1357[15:8] <= 8'b00000000;
end
endmodule 