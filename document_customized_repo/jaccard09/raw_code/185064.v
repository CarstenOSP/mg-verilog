module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_address0,v224_ce0,v224_q0,v224_address1,v224_ce1,v224_q1,v228_0_address0,v228_0_ce0,v228_0_q0,v228_0_address1,v228_0_ce1,v228_0_q1,v228_1_address0,v228_1_ce0,v228_1_q0,v228_1_address1,v228_1_ce1,v228_1_q1,v228_2_address0,v228_2_ce0,v228_2_q0,v228_2_address1,v228_2_ce1,v228_2_q1,v228_3_address0,v228_3_ce0,v228_3_q0,v228_3_address1,v228_3_ce1,v228_3_q1,v228_4_address0,v228_4_ce0,v228_4_q0,v228_4_address1,v228_4_ce1,v228_4_q1,v228_5_address0,v228_5_ce0,v228_5_q0,v228_5_address1,v228_5_ce1,v228_5_q1,v228_6_address0,v228_6_ce0,v228_6_q0,v228_6_address1,v228_6_ce1,v228_6_q1,v228_7_address0,v228_7_ce0,v228_7_q0,v228_7_address1,v228_7_ce1,v228_7_q1,v229_address0,v229_ce0,v229_we0,v229_d0,v229_q0,v229_address1,v229_ce1,v229_we1,v229_d1,v229_q1,v4,grp_fu_164_p_din0,grp_fu_164_p_din1,grp_fu_164_p_opcode,grp_fu_164_p_dout0,grp_fu_164_p_ce,grp_fu_168_p_din0,grp_fu_168_p_din1,grp_fu_168_p_dout0,grp_fu_168_p_ce,grp_fu_160_p_din0,grp_fu_160_p_din1,grp_fu_160_p_dout0,grp_fu_160_p_ce); 
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
output  [31:0] grp_fu_164_p_din0;
output  [31:0] grp_fu_164_p_din1;
output  [1:0] grp_fu_164_p_opcode;
input  [31:0] grp_fu_164_p_dout0;
output   grp_fu_164_p_ce;
output  [31:0] grp_fu_168_p_din0;
output  [31:0] grp_fu_168_p_din1;
input  [31:0] grp_fu_168_p_dout0;
output   grp_fu_168_p_ce;
output  [31:0] grp_fu_160_p_din0;
output  [31:0] grp_fu_160_p_din1;
input  [31:0] grp_fu_160_p_dout0;
output   grp_fu_160_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[15:0] v229_address0;
reg v229_ce0;
reg v229_we0;
reg[31:0] v229_d0;
reg[15:0] v229_address1;
reg v229_ce1;
reg v229_we1;
reg[31:0] v229_d1;
(* fsm_encoding = "none" *) reg   [23:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
reg   [31:0] reg_365;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state18;
reg   [31:0] reg_370;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state19;
reg   [31:0] reg_374;
reg   [31:0] reg_378;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state20;
reg   [31:0] reg_383;
reg   [31:0] reg_388;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state21;
reg   [31:0] reg_393;
reg   [31:0] reg_398;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state22;
reg   [31:0] reg_403;
wire   [15:0] zext_ln31_fu_422_p1;
reg   [15:0] zext_ln31_reg_1093;
wire    ap_CS_fsm_state2;
wire   [2:0] trunc_ln31_fu_426_p1;
reg   [2:0] trunc_ln31_reg_1106;
wire   [12:0] mul_ln38_fu_444_p2;
reg   [12:0] mul_ln38_reg_1112;
wire   [0:0] cmp11_fu_450_p2;
reg   [0:0] cmp11_reg_1118;
wire   [15:0] v6_cast_fu_462_p1;
reg   [15:0] v6_cast_reg_1126;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln32_fu_466_p2;
reg   [7:0] add_ln32_reg_1132;
wire   [15:0] zext_ln32_fu_489_p1;
reg   [15:0] zext_ln32_reg_1137;
wire   [15:0] p_cast2609_fu_499_p1;
reg   [15:0] p_cast2609_reg_1150;
wire    ap_CS_fsm_state4;
wire   [15:0] p_cast2610_fu_509_p1;
reg   [15:0] p_cast2610_reg_1156;
wire   [15:0] p_cast2611_fu_519_p1;
reg   [15:0] p_cast2611_reg_1162;
wire    ap_CS_fsm_state5;
wire   [15:0] p_cast2612_fu_529_p1;
reg   [15:0] p_cast2612_reg_1168;
wire    ap_CS_fsm_state6;
wire   [15:0] p_cast2613_fu_543_p1;
reg   [15:0] p_cast2613_reg_1179;
wire   [15:0] p_cast2614_fu_553_p1;
reg   [15:0] p_cast2614_reg_1185;
wire   [15:0] p_cast2615_fu_571_p1;
reg   [15:0] p_cast2615_reg_1201;
wire   [15:0] p_cast2616_fu_581_p1;
reg   [15:0] p_cast2616_reg_1207;
wire   [15:0] mul_ln34_fu_609_p2;
reg   [15:0] mul_ln34_reg_1243;
wire   [15:0] mul_ln49_fu_614_p2;
reg   [15:0] mul_ln49_reg_1248;
wire   [15:0] mul_ln62_fu_619_p2;
reg   [15:0] mul_ln62_reg_1253;
wire   [15:0] mul_ln75_fu_624_p2;
reg   [15:0] mul_ln75_reg_1258;
wire   [15:0] mul_ln88_fu_629_p2;
reg   [15:0] mul_ln88_reg_1263;
wire   [15:0] mul_ln101_fu_634_p2;
reg   [15:0] mul_ln101_reg_1268;
wire   [15:0] mul_ln114_fu_639_p2;
reg   [15:0] mul_ln114_reg_1273;
wire   [15:0] mul_ln127_fu_644_p2;
reg   [15:0] mul_ln127_reg_1278;
wire   [15:0] mul_ln140_fu_649_p2;
reg   [15:0] mul_ln140_reg_1283;
wire   [31:0] v11_fu_654_p1;
reg   [31:0] v11_reg_1288;
wire    ap_CS_fsm_state12;
wire   [31:0] v24_fu_659_p1;
reg   [31:0] v24_reg_1293;
wire   [31:0] v35_fu_664_p1;
reg   [31:0] v35_reg_1298;
wire   [31:0] v46_fu_669_p1;
reg   [31:0] v46_reg_1303;
wire   [31:0] v57_fu_674_p1;
reg   [31:0] v57_reg_1308;
wire   [31:0] v68_fu_679_p1;
reg   [31:0] v68_reg_1313;
wire   [31:0] v79_fu_684_p1;
reg   [31:0] v79_reg_1318;
wire   [31:0] v90_fu_689_p1;
reg   [31:0] v90_reg_1323;
wire   [31:0] v101_fu_694_p1;
reg   [31:0] v101_reg_1328;
wire   [15:0] v6_1_cast_fu_705_p1;
reg   [15:0] v6_1_cast_reg_1336;
wire    ap_CS_fsm_state14;
wire   [7:0] add_ln32_1_fu_709_p2;
reg   [7:0] add_ln32_1_reg_1342;
wire   [15:0] p_cast2617_fu_731_p1;
reg   [15:0] p_cast2617_reg_1347;
wire    ap_CS_fsm_state15;
wire   [15:0] p_cast2618_fu_741_p1;
reg   [15:0] p_cast2618_reg_1353;
wire   [15:0] p_cast2619_fu_751_p1;
reg   [15:0] p_cast2619_reg_1359;
wire    ap_CS_fsm_state16;
wire   [15:0] p_cast2620_fu_761_p1;
reg   [15:0] p_cast2620_reg_1365;
wire    ap_CS_fsm_state17;
wire   [15:0] p_cast2621_fu_775_p1;
reg   [15:0] p_cast2621_reg_1376;
wire   [15:0] p_cast2622_fu_785_p1;
reg   [15:0] p_cast2622_reg_1382;
wire   [15:0] p_cast2623_fu_803_p1;
reg   [15:0] p_cast2623_reg_1398;
wire   [15:0] p_cast2624_fu_813_p1;
reg   [15:0] p_cast2624_reg_1404;
wire   [15:0] mul_ln34_1_fu_841_p2;
reg   [15:0] mul_ln34_1_reg_1440;
wire   [15:0] mul_ln49_1_fu_846_p2;
reg   [15:0] mul_ln49_1_reg_1445;
wire   [15:0] mul_ln62_1_fu_851_p2;
reg   [15:0] mul_ln62_1_reg_1450;
wire   [15:0] mul_ln75_1_fu_856_p2;
reg   [15:0] mul_ln75_1_reg_1455;
wire   [15:0] mul_ln88_1_fu_861_p2;
reg   [15:0] mul_ln88_1_reg_1460;
wire   [15:0] mul_ln101_1_fu_866_p2;
reg   [15:0] mul_ln101_1_reg_1465;
wire   [15:0] mul_ln114_1_fu_871_p2;
reg   [15:0] mul_ln114_1_reg_1470;
wire   [15:0] mul_ln127_1_fu_876_p2;
reg   [15:0] mul_ln127_1_reg_1475;
wire   [15:0] mul_ln140_1_fu_881_p2;
reg   [15:0] mul_ln140_1_reg_1480;
wire   [31:0] v11_1_fu_886_p1;
reg   [31:0] v11_1_reg_1485;
wire    ap_CS_fsm_state23;
wire   [31:0] v24_1_fu_891_p1;
reg   [31:0] v24_1_reg_1490;
wire   [31:0] v35_1_fu_896_p1;
reg   [31:0] v35_1_reg_1495;
wire   [31:0] v46_1_fu_901_p1;
reg   [31:0] v46_1_reg_1500;
wire   [31:0] v57_1_fu_906_p1;
reg   [31:0] v57_1_reg_1505;
wire   [31:0] v68_1_fu_911_p1;
reg   [31:0] v68_1_reg_1510;
wire   [31:0] v79_1_fu_916_p1;
reg   [31:0] v79_1_reg_1515;
wire   [31:0] v90_1_fu_921_p1;
reg   [31:0] v90_1_reg_1520;
wire   [31:0] v101_1_fu_926_p1;
reg   [31:0] v101_1_reg_1525;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_295_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_295_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_295_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_295_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v229_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_0_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_0_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_2_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_2_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_4_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_4_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_4_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_4_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_6_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_6_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_6_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_6_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_295_grp_fu_1530_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_295_grp_fu_1530_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_295_grp_fu_1530_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_295_grp_fu_1530_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_295_grp_fu_1534_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_295_grp_fu_1534_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_295_grp_fu_1534_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_295_grp_fu_1538_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_295_grp_fu_1538_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_295_grp_fu_1538_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_331_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_331_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_331_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_331_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v229_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_1_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_1_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_3_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_3_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_5_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_5_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_5_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_5_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_7_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_7_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_7_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_7_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_331_grp_fu_1530_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_331_grp_fu_1530_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_331_grp_fu_1530_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_331_grp_fu_1530_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_331_grp_fu_1534_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_331_grp_fu_1534_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_331_grp_fu_1534_p_ce;
reg   [7:0] v6_reg_271;
wire   [0:0] icmp_ln31_fu_416_p2;
wire    ap_CS_fsm_state13;
reg   [7:0] v6_1_reg_283;
wire    ap_CS_fsm_state24;
wire   [0:0] icmp_ln32_fu_456_p2;
reg    grp_kernel_2mm_node0_Pipeline_label_2_fu_295_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_210_fu_331_ap_start_reg;
wire   [63:0] p_cast2625_fu_533_p1;
wire   [63:0] p_cast_fu_557_p1;
wire   [63:0] p_cast2626_fu_561_p1;
wire   [63:0] p_cast2627_fu_585_p1;
wire   [63:0] p_cast2628_fu_589_p1;
wire   [63:0] p_cast2629_fu_593_p1;
wire   [63:0] p_cast2630_fu_597_p1;
wire   [63:0] p_cast2631_fu_601_p1;
wire   [63:0] p_cast2632_fu_605_p1;
wire   [63:0] p_cast2633_fu_765_p1;
wire   [63:0] p_cast2634_fu_789_p1;
wire   [63:0] p_cast2635_fu_793_p1;
wire   [63:0] p_cast2636_fu_817_p1;
wire   [63:0] p_cast2637_fu_821_p1;
wire   [63:0] p_cast2638_fu_825_p1;
wire   [63:0] p_cast2639_fu_829_p1;
wire   [63:0] p_cast2640_fu_833_p1;
wire   [63:0] p_cast2641_fu_837_p1;
reg   [7:0] v5_fu_102;
wire   [7:0] add_ln31_fu_715_p2;
wire   [0:0] icmp_ln32_1_fu_699_p2;
reg    ap_block_state1;
reg    v236_read_local;
reg    v224_ce0_local;
reg   [15:0] v224_address0_local;
reg    v224_ce1_local;
reg   [15:0] v224_address1_local;
wire   [4:0] lshr_ln_fu_430_p4;
wire   [4:0] mul_ln38_fu_444_p0;
wire   [8:0] mul_ln38_fu_444_p1;
wire   [6:0] tmp_fu_472_p4;
wire   [7:0] or_ln_fu_481_p3;
wire   [7:0] empty_218_fu_493_p2;
wire   [7:0] empty_221_fu_503_p2;
wire   [7:0] empty_224_fu_513_p2;
wire   [7:0] empty_227_fu_523_p2;
wire   [15:0] grp_fu_931_p3;
wire   [7:0] empty_230_fu_537_p2;
wire   [7:0] empty_233_fu_547_p2;
wire   [15:0] grp_fu_939_p3;
wire   [15:0] grp_fu_947_p3;
wire   [7:0] empty_236_fu_565_p2;
wire   [7:0] empty_239_fu_575_p2;
wire   [15:0] grp_fu_955_p3;
wire   [15:0] grp_fu_963_p3;
wire   [15:0] grp_fu_971_p3;
wire   [15:0] grp_fu_979_p3;
wire   [15:0] grp_fu_987_p3;
wire   [15:0] grp_fu_995_p3;
wire   [7:0] mul_ln34_fu_609_p0;
wire   [8:0] mul_ln34_fu_609_p1;
wire   [7:0] mul_ln49_fu_614_p0;
wire   [8:0] mul_ln49_fu_614_p1;
wire   [7:0] mul_ln62_fu_619_p0;
wire   [8:0] mul_ln62_fu_619_p1;
wire   [7:0] mul_ln75_fu_624_p0;
wire   [8:0] mul_ln75_fu_624_p1;
wire   [7:0] mul_ln88_fu_629_p0;
wire   [8:0] mul_ln88_fu_629_p1;
wire   [7:0] mul_ln101_fu_634_p0;
wire   [8:0] mul_ln101_fu_634_p1;
wire   [7:0] mul_ln114_fu_639_p0;
wire   [8:0] mul_ln114_fu_639_p1;
wire   [7:0] mul_ln127_fu_644_p0;
wire   [8:0] mul_ln127_fu_644_p1;
wire   [7:0] mul_ln140_fu_649_p0;
wire   [8:0] mul_ln140_fu_649_p1;
wire   [7:0] empty_244_fu_725_p2;
wire   [7:0] empty_247_fu_735_p2;
wire   [7:0] empty_250_fu_745_p2;
wire   [7:0] empty_253_fu_755_p2;
wire   [15:0] grp_fu_1003_p3;
wire   [7:0] empty_256_fu_769_p2;
wire   [7:0] empty_259_fu_779_p2;
wire   [15:0] grp_fu_1011_p3;
wire   [15:0] grp_fu_1019_p3;
wire   [7:0] empty_262_fu_797_p2;
wire   [7:0] empty_265_fu_807_p2;
wire   [15:0] grp_fu_1027_p3;
wire   [15:0] grp_fu_1035_p3;
wire   [15:0] grp_fu_1043_p3;
wire   [15:0] grp_fu_1051_p3;
wire   [15:0] grp_fu_1059_p3;
wire   [15:0] grp_fu_1067_p3;
wire   [7:0] mul_ln34_1_fu_841_p0;
wire   [8:0] mul_ln34_1_fu_841_p1;
wire   [7:0] mul_ln49_1_fu_846_p0;
wire   [8:0] mul_ln49_1_fu_846_p1;
wire   [7:0] mul_ln62_1_fu_851_p0;
wire   [8:0] mul_ln62_1_fu_851_p1;
wire   [7:0] mul_ln75_1_fu_856_p0;
wire   [8:0] mul_ln75_1_fu_856_p1;
wire   [7:0] mul_ln88_1_fu_861_p0;
wire   [8:0] mul_ln88_1_fu_861_p1;
wire   [7:0] mul_ln101_1_fu_866_p0;
wire   [8:0] mul_ln101_1_fu_866_p1;
wire   [7:0] mul_ln114_1_fu_871_p0;
wire   [8:0] mul_ln114_1_fu_871_p1;
wire   [7:0] mul_ln127_1_fu_876_p0;
wire   [8:0] mul_ln127_1_fu_876_p1;
wire   [7:0] mul_ln140_1_fu_881_p0;
wire   [8:0] mul_ln140_1_fu_881_p1;
wire   [7:0] grp_fu_931_p0;
wire   [7:0] grp_fu_931_p1;
wire   [7:0] grp_fu_931_p2;
wire   [7:0] grp_fu_939_p0;
wire   [7:0] grp_fu_939_p1;
wire   [7:0] grp_fu_939_p2;
wire   [7:0] grp_fu_947_p0;
wire   [7:0] grp_fu_947_p1;
wire   [7:0] grp_fu_947_p2;
wire   [7:0] grp_fu_955_p0;
wire   [7:0] grp_fu_955_p1;
wire   [7:0] grp_fu_955_p2;
wire   [7:0] grp_fu_963_p0;
wire   [7:0] grp_fu_963_p1;
wire   [7:0] grp_fu_963_p2;
wire   [7:0] grp_fu_971_p0;
wire   [7:0] grp_fu_971_p1;
wire   [7:0] grp_fu_971_p2;
wire   [7:0] grp_fu_979_p0;
wire   [7:0] grp_fu_979_p1;
wire   [7:0] grp_fu_979_p2;
wire   [7:0] grp_fu_987_p0;
wire   [7:0] grp_fu_987_p1;
wire   [7:0] grp_fu_987_p2;
wire   [7:0] grp_fu_995_p0;
wire   [7:0] grp_fu_995_p1;
wire   [7:0] grp_fu_995_p2;
wire   [7:0] grp_fu_1003_p0;
wire   [7:0] grp_fu_1003_p1;
wire   [7:0] grp_fu_1003_p2;
wire   [7:0] grp_fu_1011_p0;
wire   [7:0] grp_fu_1011_p1;
wire   [7:0] grp_fu_1011_p2;
wire   [7:0] grp_fu_1019_p0;
wire   [7:0] grp_fu_1019_p1;
wire   [7:0] grp_fu_1019_p2;
wire   [7:0] grp_fu_1027_p0;
wire   [7:0] grp_fu_1027_p1;
wire   [7:0] grp_fu_1027_p2;
wire   [7:0] grp_fu_1035_p0;
wire   [7:0] grp_fu_1035_p1;
wire   [7:0] grp_fu_1035_p2;
wire   [7:0] grp_fu_1043_p0;
wire   [7:0] grp_fu_1043_p1;
wire   [7:0] grp_fu_1043_p2;
wire   [7:0] grp_fu_1051_p0;
wire   [7:0] grp_fu_1051_p1;
wire   [7:0] grp_fu_1051_p2;
wire   [7:0] grp_fu_1059_p0;
wire   [7:0] grp_fu_1059_p1;
wire   [7:0] grp_fu_1059_p2;
wire   [7:0] grp_fu_1067_p0;
wire   [7:0] grp_fu_1067_p1;
wire   [7:0] grp_fu_1067_p2;
reg   [31:0] grp_fu_1530_p0;
reg   [31:0] grp_fu_1530_p1;
reg    grp_fu_1530_ce;
reg   [31:0] grp_fu_1534_p0;
reg   [31:0] grp_fu_1534_p1;
reg    grp_fu_1534_ce;
reg    grp_fu_1538_ce;
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
wire   [15:0] grp_fu_1003_p00;
wire   [15:0] grp_fu_1011_p00;
wire   [15:0] grp_fu_1019_p00;
wire   [15:0] grp_fu_1027_p00;
wire   [15:0] grp_fu_1035_p00;
wire   [15:0] grp_fu_1043_p00;
wire   [15:0] grp_fu_1051_p00;
wire   [15:0] grp_fu_1059_p00;
wire   [15:0] grp_fu_1067_p00;
wire   [15:0] grp_fu_931_p00;
wire   [15:0] grp_fu_939_p00;
wire   [15:0] grp_fu_947_p00;
wire   [15:0] grp_fu_955_p00;
wire   [15:0] grp_fu_963_p00;
wire   [15:0] grp_fu_971_p00;
wire   [15:0] grp_fu_979_p00;
wire   [15:0] grp_fu_987_p00;
wire   [15:0] grp_fu_995_p00;
wire   [12:0] mul_ln38_fu_444_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 24'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_2_fu_295_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_210_fu_331_ap_start_reg = 1'b0;
#0 v5_fu_102 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_2 grp_kernel_2mm_node0_Pipeline_label_2_fu_295(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_2_fu_295_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_2_fu_295_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_2_fu_295_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_2_fu_295_ap_ready),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v229_d1),.v229_q1(v229_q1),.mul_ln38(mul_ln38_reg_1112),.v228_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_0_ce1),.v228_0_q1(v228_0_q1),.v228_2_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_2_address0),.v228_2_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_2_ce0),.v228_2_q0(v228_2_q0),.v228_2_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_2_address1),.v228_2_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_2_ce1),.v228_2_q1(v228_2_q1),.v228_4_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_4_address0),.v228_4_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_4_ce0),.v228_4_q0(v228_4_q0),.v228_4_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_4_address1),.v228_4_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_4_ce1),.v228_4_q1(v228_4_q1),.v228_6_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_6_address0),.v228_6_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_6_ce0),.v228_6_q0(v228_6_q0),.v228_6_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_6_address1),.v228_6_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_6_ce1),.v228_6_q1(v228_6_q1),.mul_ln34(mul_ln34_reg_1243),.mul_ln49(mul_ln49_reg_1248),.mul_ln62(mul_ln62_reg_1253),.mul_ln75(mul_ln75_reg_1258),.mul_ln88(mul_ln88_reg_1263),.mul_ln101(mul_ln101_reg_1268),.mul_ln114(mul_ln114_reg_1273),.mul_ln127(mul_ln127_reg_1278),.mul_ln140(mul_ln140_reg_1283),.v4(v4),.cmp11(cmp11_reg_1118),.empty(trunc_ln31_reg_1106),.v11(v11_reg_1288),.v24(v24_reg_1293),.v35(v35_reg_1298),.v46(v46_reg_1303),.v57(v57_reg_1308),.v68(v68_reg_1313),.v79(v79_reg_1318),.v90(v90_reg_1323),.v101(v101_reg_1328),.grp_fu_1530_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_295_grp_fu_1530_p_din0),.grp_fu_1530_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_295_grp_fu_1530_p_din1),.grp_fu_1530_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_295_grp_fu_1530_p_opcode),.grp_fu_1530_p_dout0(grp_fu_164_p_dout0),.grp_fu_1530_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_295_grp_fu_1530_p_ce),.grp_fu_1534_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_295_grp_fu_1534_p_din0),.grp_fu_1534_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_295_grp_fu_1534_p_din1),.grp_fu_1534_p_dout0(grp_fu_168_p_dout0),.grp_fu_1534_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_295_grp_fu_1534_p_ce),.grp_fu_1538_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_295_grp_fu_1538_p_din0),.grp_fu_1538_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_295_grp_fu_1538_p_din1),.grp_fu_1538_p_dout0(grp_fu_160_p_dout0),.grp_fu_1538_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_295_grp_fu_1538_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_210 grp_kernel_2mm_node0_Pipeline_label_210_fu_331(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_210_fu_331_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_210_fu_331_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_210_fu_331_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_210_fu_331_ap_ready),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v229_d1),.v229_q1(v229_q1),.mul_ln38(mul_ln38_reg_1112),.v228_1_address0(grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_1_ce1),.v228_1_q1(v228_1_q1),.v228_3_address0(grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_3_address0),.v228_3_ce0(grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_3_ce0),.v228_3_q0(v228_3_q0),.v228_3_address1(grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_3_address1),.v228_3_ce1(grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_3_ce1),.v228_3_q1(v228_3_q1),.v228_5_address0(grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_5_address0),.v228_5_ce0(grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_5_ce0),.v228_5_q0(v228_5_q0),.v228_5_address1(grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_5_address1),.v228_5_ce1(grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_5_ce1),.v228_5_q1(v228_5_q1),.v228_7_address0(grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_7_address0),.v228_7_ce0(grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_7_ce0),.v228_7_q0(v228_7_q0),.v228_7_address1(grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_7_address1),.v228_7_ce1(grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_7_ce1),.v228_7_q1(v228_7_q1),.mul_ln34_1(mul_ln34_1_reg_1440),.mul_ln49_1(mul_ln49_1_reg_1445),.mul_ln62_1(mul_ln62_1_reg_1450),.mul_ln75_1(mul_ln75_1_reg_1455),.mul_ln88_1(mul_ln88_1_reg_1460),.mul_ln101_1(mul_ln101_1_reg_1465),.mul_ln114_1(mul_ln114_1_reg_1470),.mul_ln127_1(mul_ln127_1_reg_1475),.mul_ln140_1(mul_ln140_1_reg_1480),.empty(trunc_ln31_reg_1106),.v11_1(v11_1_reg_1485),.v24_1(v24_1_reg_1490),.v35_1(v35_1_reg_1495),.v46_1(v46_1_reg_1500),.v57_1(v57_1_reg_1505),.v68_1(v68_1_reg_1510),.v79_1(v79_1_reg_1515),.v90_1(v90_1_reg_1520),.v101_1(v101_1_reg_1525),.grp_fu_1530_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_331_grp_fu_1530_p_din0),.grp_fu_1530_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_331_grp_fu_1530_p_din1),.grp_fu_1530_p_opcode(grp_kernel_2mm_node0_Pipeline_label_210_fu_331_grp_fu_1530_p_opcode),.grp_fu_1530_p_dout0(grp_fu_164_p_dout0),.grp_fu_1530_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_331_grp_fu_1530_p_ce),.grp_fu_1534_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_331_grp_fu_1534_p_din0),.grp_fu_1534_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_331_grp_fu_1534_p_din1),.grp_fu_1534_p_dout0(grp_fu_168_p_dout0),.grp_fu_1534_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_331_grp_fu_1534_p_ce));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U614(.din0(mul_ln38_fu_444_p0),.din1(mul_ln38_fu_444_p1),.dout(mul_ln38_fu_444_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U615(.din0(mul_ln34_fu_609_p0),.din1(mul_ln34_fu_609_p1),.dout(mul_ln34_fu_609_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U616(.din0(mul_ln49_fu_614_p0),.din1(mul_ln49_fu_614_p1),.dout(mul_ln49_fu_614_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U617(.din0(mul_ln62_fu_619_p0),.din1(mul_ln62_fu_619_p1),.dout(mul_ln62_fu_619_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U618(.din0(mul_ln75_fu_624_p0),.din1(mul_ln75_fu_624_p1),.dout(mul_ln75_fu_624_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U619(.din0(mul_ln88_fu_629_p0),.din1(mul_ln88_fu_629_p1),.dout(mul_ln88_fu_629_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U620(.din0(mul_ln101_fu_634_p0),.din1(mul_ln101_fu_634_p1),.dout(mul_ln101_fu_634_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U621(.din0(mul_ln114_fu_639_p0),.din1(mul_ln114_fu_639_p1),.dout(mul_ln114_fu_639_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U622(.din0(mul_ln127_fu_644_p0),.din1(mul_ln127_fu_644_p1),.dout(mul_ln127_fu_644_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U623(.din0(mul_ln140_fu_649_p0),.din1(mul_ln140_fu_649_p1),.dout(mul_ln140_fu_649_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U624(.din0(mul_ln34_1_fu_841_p0),.din1(mul_ln34_1_fu_841_p1),.dout(mul_ln34_1_fu_841_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U625(.din0(mul_ln49_1_fu_846_p0),.din1(mul_ln49_1_fu_846_p1),.dout(mul_ln49_1_fu_846_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U626(.din0(mul_ln62_1_fu_851_p0),.din1(mul_ln62_1_fu_851_p1),.dout(mul_ln62_1_fu_851_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U627(.din0(mul_ln75_1_fu_856_p0),.din1(mul_ln75_1_fu_856_p1),.dout(mul_ln75_1_fu_856_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U628(.din0(mul_ln88_1_fu_861_p0),.din1(mul_ln88_1_fu_861_p1),.dout(mul_ln88_1_fu_861_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U629(.din0(mul_ln101_1_fu_866_p0),.din1(mul_ln101_1_fu_866_p1),.dout(mul_ln101_1_fu_866_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U630(.din0(mul_ln114_1_fu_871_p0),.din1(mul_ln114_1_fu_871_p1),.dout(mul_ln114_1_fu_871_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U631(.din0(mul_ln127_1_fu_876_p0),.din1(mul_ln127_1_fu_876_p1),.dout(mul_ln127_1_fu_876_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U632(.din0(mul_ln140_1_fu_881_p0),.din1(mul_ln140_1_fu_881_p1),.dout(mul_ln140_1_fu_881_p2));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U633(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_931_p0),.din1(grp_fu_931_p1),.din2(grp_fu_931_p2),.ce(1'b1),.dout(grp_fu_931_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U634(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_939_p0),.din1(grp_fu_939_p1),.din2(grp_fu_939_p2),.ce(1'b1),.dout(grp_fu_939_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U635(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_947_p0),.din1(grp_fu_947_p1),.din2(grp_fu_947_p2),.ce(1'b1),.dout(grp_fu_947_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U636(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_955_p0),.din1(grp_fu_955_p1),.din2(grp_fu_955_p2),.ce(1'b1),.dout(grp_fu_955_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U637(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_963_p0),.din1(grp_fu_963_p1),.din2(grp_fu_963_p2),.ce(1'b1),.dout(grp_fu_963_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U638(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_971_p0),.din1(grp_fu_971_p1),.din2(grp_fu_971_p2),.ce(1'b1),.dout(grp_fu_971_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U639(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_979_p0),.din1(grp_fu_979_p1),.din2(grp_fu_979_p2),.ce(1'b1),.dout(grp_fu_979_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U640(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_987_p0),.din1(grp_fu_987_p1),.din2(grp_fu_987_p2),.ce(1'b1),.dout(grp_fu_987_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U641(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_995_p0),.din1(grp_fu_995_p1),.din2(grp_fu_995_p2),.ce(1'b1),.dout(grp_fu_995_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U642(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1003_p0),.din1(grp_fu_1003_p1),.din2(grp_fu_1003_p2),.ce(1'b1),.dout(grp_fu_1003_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U643(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1011_p0),.din1(grp_fu_1011_p1),.din2(grp_fu_1011_p2),.ce(1'b1),.dout(grp_fu_1011_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U644(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1019_p0),.din1(grp_fu_1019_p1),.din2(grp_fu_1019_p2),.ce(1'b1),.dout(grp_fu_1019_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U645(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1027_p0),.din1(grp_fu_1027_p1),.din2(grp_fu_1027_p2),.ce(1'b1),.dout(grp_fu_1027_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U646(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1035_p0),.din1(grp_fu_1035_p1),.din2(grp_fu_1035_p2),.ce(1'b1),.dout(grp_fu_1035_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U647(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1043_p0),.din1(grp_fu_1043_p1),.din2(grp_fu_1043_p2),.ce(1'b1),.dout(grp_fu_1043_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U648(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1051_p0),.din1(grp_fu_1051_p1),.din2(grp_fu_1051_p2),.ce(1'b1),.dout(grp_fu_1051_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U649(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1059_p0),.din1(grp_fu_1059_p1),.din2(grp_fu_1059_p2),.ce(1'b1),.dout(grp_fu_1059_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U650(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1067_p0),.din1(grp_fu_1067_p1),.din2(grp_fu_1067_p2),.ce(1'b1),.dout(grp_fu_1067_p3));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_210_fu_331_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state23)) begin
            grp_kernel_2mm_node0_Pipeline_label_210_fu_331_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_210_fu_331_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_210_fu_331_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_2_fu_295_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_295_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_295_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_295_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        reg_365 <= v224_q1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        reg_365 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        reg_378 <= v224_q1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        reg_378 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        reg_383 <= v224_q0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        reg_383 <= v224_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        reg_388 <= v224_q1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        reg_388 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        reg_393 <= v224_q0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        reg_393 <= v224_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        reg_398 <= v224_q1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        reg_398 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        reg_403 <= v224_q0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        reg_403 <= v224_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_102 <= 8'd0;
    end else if (((icmp_ln32_1_fu_699_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        v5_fu_102 <= add_ln31_fu_715_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln32_fu_456_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v6_1_reg_283 <= 8'd0;
    end else if (((grp_kernel_2mm_node0_Pipeline_label_210_fu_331_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state24))) begin
        v6_1_reg_283 <= add_ln32_1_reg_1342;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_295_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        v6_reg_271 <= add_ln32_reg_1132;
    end else if (((icmp_ln31_fu_416_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        v6_reg_271 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        add_ln32_1_reg_1342 <= add_ln32_1_fu_709_p2;
        v6_1_cast_reg_1336[7 : 0] <= v6_1_cast_fu_705_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_reg_1132 <= add_ln32_fu_466_p2;
        v6_cast_reg_1126[7 : 0] <= v6_cast_fu_462_p1[7 : 0];
        zext_ln32_reg_1137[7 : 1] <= zext_ln32_fu_489_p1[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cmp11_reg_1118 <= cmp11_fu_450_p2;
        mul_ln38_reg_1112 <= mul_ln38_fu_444_p2;
        trunc_ln31_reg_1106 <= trunc_ln31_fu_426_p1;
        zext_ln31_reg_1093[7 : 0] <= zext_ln31_fu_422_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        mul_ln101_1_reg_1465 <= mul_ln101_1_fu_866_p2;
        mul_ln114_1_reg_1470 <= mul_ln114_1_fu_871_p2;
        mul_ln127_1_reg_1475 <= mul_ln127_1_fu_876_p2;
        mul_ln140_1_reg_1480 <= mul_ln140_1_fu_881_p2;
        mul_ln34_1_reg_1440 <= mul_ln34_1_fu_841_p2;
        mul_ln49_1_reg_1445 <= mul_ln49_1_fu_846_p2;
        mul_ln62_1_reg_1450 <= mul_ln62_1_fu_851_p2;
        mul_ln75_1_reg_1455 <= mul_ln75_1_fu_856_p2;
        mul_ln88_1_reg_1460 <= mul_ln88_1_fu_861_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        mul_ln101_reg_1268 <= mul_ln101_fu_634_p2;
        mul_ln114_reg_1273 <= mul_ln114_fu_639_p2;
        mul_ln127_reg_1278 <= mul_ln127_fu_644_p2;
        mul_ln140_reg_1283 <= mul_ln140_fu_649_p2;
        mul_ln34_reg_1243 <= mul_ln34_fu_609_p2;
        mul_ln49_reg_1248 <= mul_ln49_fu_614_p2;
        mul_ln62_reg_1253 <= mul_ln62_fu_619_p2;
        mul_ln75_reg_1258 <= mul_ln75_fu_624_p2;
        mul_ln88_reg_1263 <= mul_ln88_fu_629_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        p_cast2609_reg_1150[7 : 0] <= p_cast2609_fu_499_p1[7 : 0];
        p_cast2610_reg_1156[7 : 0] <= p_cast2610_fu_509_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        p_cast2611_reg_1162[7 : 0] <= p_cast2611_fu_519_p1[7 : 0];
        p_cast2612_reg_1168[7 : 0] <= p_cast2612_fu_529_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        p_cast2613_reg_1179[7 : 0] <= p_cast2613_fu_543_p1[7 : 0];
        p_cast2614_reg_1185[7 : 0] <= p_cast2614_fu_553_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        p_cast2615_reg_1201[7 : 0] <= p_cast2615_fu_571_p1[7 : 0];
        p_cast2616_reg_1207[7 : 0] <= p_cast2616_fu_581_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        p_cast2617_reg_1347[7 : 0] <= p_cast2617_fu_731_p1[7 : 0];
        p_cast2618_reg_1353[7 : 0] <= p_cast2618_fu_741_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        p_cast2619_reg_1359[7 : 0] <= p_cast2619_fu_751_p1[7 : 0];
        p_cast2620_reg_1365[7 : 0] <= p_cast2620_fu_761_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        p_cast2621_reg_1376[7 : 0] <= p_cast2621_fu_775_p1[7 : 0];
        p_cast2622_reg_1382[7 : 0] <= p_cast2622_fu_785_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        p_cast2623_reg_1398[7 : 0] <= p_cast2623_fu_803_p1[7 : 0];
        p_cast2624_reg_1404[7 : 0] <= p_cast2624_fu_813_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_370 <= v224_q1;
        reg_374 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v101_1_reg_1525 <= v101_1_fu_926_p1;
        v11_1_reg_1485 <= v11_1_fu_886_p1;
        v24_1_reg_1490 <= v24_1_fu_891_p1;
        v35_1_reg_1495 <= v35_1_fu_896_p1;
        v46_1_reg_1500 <= v46_1_fu_901_p1;
        v57_1_reg_1505 <= v57_1_fu_906_p1;
        v68_1_reg_1510 <= v68_1_fu_911_p1;
        v79_1_reg_1515 <= v79_1_fu_916_p1;
        v90_1_reg_1520 <= v90_1_fu_921_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        v101_reg_1328 <= v101_fu_694_p1;
        v11_reg_1288 <= v11_fu_654_p1;
        v24_reg_1293 <= v24_fu_659_p1;
        v35_reg_1298 <= v35_fu_664_p1;
        v46_reg_1303 <= v46_fu_669_p1;
        v57_reg_1308 <= v57_fu_674_p1;
        v68_reg_1313 <= v68_fu_679_p1;
        v79_reg_1318 <= v79_fu_684_p1;
        v90_reg_1323 <= v90_fu_689_p1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_295_ap_done == 1'b0)) begin
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
    if ((grp_kernel_2mm_node0_Pipeline_label_210_fu_331_ap_done == 1'b0)) begin
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
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln31_fu_416_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
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
    if (((icmp_ln31_fu_416_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1530_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_331_grp_fu_1530_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1530_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_295_grp_fu_1530_p_ce;
    end else begin
        grp_fu_1530_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1530_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_331_grp_fu_1530_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1530_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_295_grp_fu_1530_p_din0;
    end else begin
        grp_fu_1530_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1530_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_331_grp_fu_1530_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1530_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_295_grp_fu_1530_p_din1;
    end else begin
        grp_fu_1530_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1534_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_331_grp_fu_1534_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1534_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_295_grp_fu_1534_p_ce;
    end else begin
        grp_fu_1534_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1534_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_331_grp_fu_1534_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1534_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_295_grp_fu_1534_p_din0;
    end else begin
        grp_fu_1534_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1534_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_331_grp_fu_1534_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1534_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_295_grp_fu_1534_p_din1;
    end else begin
        grp_fu_1534_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1538_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_295_grp_fu_1538_p_ce;
    end else begin
        grp_fu_1538_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v224_address0_local = p_cast2641_fu_837_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        v224_address0_local = p_cast2639_fu_829_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v224_address0_local = p_cast2637_fu_821_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_address0_local = p_cast2635_fu_793_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address0_local = p_cast2631_fu_601_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address0_local = p_cast2629_fu_593_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address0_local = p_cast2627_fu_585_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address0_local = p_cast2626_fu_561_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_address0_local = p_cast2625_fu_533_p1;
    end else begin
        v224_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v224_address1_local = p_cast2640_fu_833_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        v224_address1_local = p_cast2638_fu_825_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v224_address1_local = p_cast2636_fu_817_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_address1_local = p_cast2634_fu_789_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v224_address1_local = p_cast2633_fu_765_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address1_local = p_cast2632_fu_605_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address1_local = p_cast2630_fu_597_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address1_local = p_cast2628_fu_589_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address1_local = p_cast_fu_557_p1;
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
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v229_address0;
    end else begin
        v229_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v229_address1;
    end else begin
        v229_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v229_ce0;
    end else begin
        v229_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v229_ce1;
    end else begin
        v229_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v229_d0;
    end else begin
        v229_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v229_d1;
    end else begin
        v229_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v229_we0;
    end else begin
        v229_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v229_we1;
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
            if (((icmp_ln31_fu_416_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln32_fu_456_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_295_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state14 : begin
            if (((icmp_ln32_1_fu_699_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_210_fu_331_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state24))) begin
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
assign add_ln31_fu_715_p2 = (v5_fu_102 + 8'd2);
assign add_ln32_1_fu_709_p2 = (v6_1_reg_283 + 8'd9);
assign add_ln32_fu_466_p2 = (v6_reg_271 + 8'd9);
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
assign cmp11_fu_450_p2 = ((v5_fu_102 == 8'd0) ? 1'b1 : 1'b0);
assign empty_218_fu_493_p2 = (v6_reg_271 + 8'd1);
assign empty_221_fu_503_p2 = (v6_reg_271 + 8'd2);
assign empty_224_fu_513_p2 = (v6_reg_271 + 8'd3);
assign empty_227_fu_523_p2 = (v6_reg_271 + 8'd4);
assign empty_230_fu_537_p2 = (v6_reg_271 + 8'd5);
assign empty_233_fu_547_p2 = (v6_reg_271 + 8'd6);
assign empty_236_fu_565_p2 = (v6_reg_271 + 8'd7);
assign empty_239_fu_575_p2 = (v6_reg_271 + 8'd8);
assign empty_244_fu_725_p2 = (v6_1_reg_283 + 8'd1);
assign empty_247_fu_735_p2 = (v6_1_reg_283 + 8'd2);
assign empty_250_fu_745_p2 = (v6_1_reg_283 + 8'd3);
assign empty_253_fu_755_p2 = (v6_1_reg_283 + 8'd4);
assign empty_256_fu_769_p2 = (v6_1_reg_283 + 8'd5);
assign empty_259_fu_779_p2 = (v6_1_reg_283 + 8'd6);
assign empty_262_fu_797_p2 = (v6_1_reg_283 + 8'd7);
assign empty_265_fu_807_p2 = (v6_1_reg_283 + 8'd8);
assign grp_fu_1003_p0 = grp_fu_1003_p00;
assign grp_fu_1003_p00 = v6_1_reg_283;
assign grp_fu_1003_p1 = 16'd190;
assign grp_fu_1003_p2 = zext_ln32_reg_1137;
assign grp_fu_1011_p0 = grp_fu_1011_p00;
assign grp_fu_1011_p00 = empty_244_fu_725_p2;
assign grp_fu_1011_p1 = 16'd190;
assign grp_fu_1011_p2 = zext_ln32_reg_1137;
assign grp_fu_1019_p0 = grp_fu_1019_p00;
assign grp_fu_1019_p00 = empty_247_fu_735_p2;
assign grp_fu_1019_p1 = 16'd190;
assign grp_fu_1019_p2 = zext_ln32_reg_1137;
assign grp_fu_1027_p0 = grp_fu_1027_p00;
assign grp_fu_1027_p00 = empty_250_fu_745_p2;
assign grp_fu_1027_p1 = 16'd190;
assign grp_fu_1027_p2 = zext_ln32_reg_1137;
assign grp_fu_1035_p0 = grp_fu_1035_p00;
assign grp_fu_1035_p00 = empty_253_fu_755_p2;
assign grp_fu_1035_p1 = 16'd190;
assign grp_fu_1035_p2 = zext_ln32_reg_1137;
assign grp_fu_1043_p0 = grp_fu_1043_p00;
assign grp_fu_1043_p00 = empty_256_fu_769_p2;
assign grp_fu_1043_p1 = 16'd190;
assign grp_fu_1043_p2 = zext_ln32_reg_1137;
assign grp_fu_1051_p0 = grp_fu_1051_p00;
assign grp_fu_1051_p00 = empty_259_fu_779_p2;
assign grp_fu_1051_p1 = 16'd190;
assign grp_fu_1051_p2 = zext_ln32_reg_1137;
assign grp_fu_1059_p0 = grp_fu_1059_p00;
assign grp_fu_1059_p00 = empty_262_fu_797_p2;
assign grp_fu_1059_p1 = 16'd190;
assign grp_fu_1059_p2 = zext_ln32_reg_1137;
assign grp_fu_1067_p0 = grp_fu_1067_p00;
assign grp_fu_1067_p00 = empty_265_fu_807_p2;
assign grp_fu_1067_p1 = 16'd190;
assign grp_fu_1067_p2 = zext_ln32_reg_1137;
assign grp_fu_160_p_ce = grp_fu_1538_ce;
assign grp_fu_160_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_295_grp_fu_1538_p_din0;
assign grp_fu_160_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_295_grp_fu_1538_p_din1;
assign grp_fu_164_p_ce = grp_fu_1530_ce;
assign grp_fu_164_p_din0 = grp_fu_1530_p0;
assign grp_fu_164_p_din1 = grp_fu_1530_p1;
assign grp_fu_164_p_opcode = 2'd0;
assign grp_fu_168_p_ce = grp_fu_1534_ce;
assign grp_fu_168_p_din0 = grp_fu_1534_p0;
assign grp_fu_168_p_din1 = grp_fu_1534_p1;
assign grp_fu_931_p0 = grp_fu_931_p00;
assign grp_fu_931_p00 = v6_reg_271;
assign grp_fu_931_p1 = 16'd190;
assign grp_fu_931_p2 = zext_ln31_reg_1093;
assign grp_fu_939_p0 = grp_fu_939_p00;
assign grp_fu_939_p00 = empty_218_fu_493_p2;
assign grp_fu_939_p1 = 16'd190;
assign grp_fu_939_p2 = zext_ln31_reg_1093;
assign grp_fu_947_p0 = grp_fu_947_p00;
assign grp_fu_947_p00 = empty_221_fu_503_p2;
assign grp_fu_947_p1 = 16'd190;
assign grp_fu_947_p2 = zext_ln31_reg_1093;
assign grp_fu_955_p0 = grp_fu_955_p00;
assign grp_fu_955_p00 = empty_224_fu_513_p2;
assign grp_fu_955_p1 = 16'd190;
assign grp_fu_955_p2 = zext_ln31_reg_1093;
assign grp_fu_963_p0 = grp_fu_963_p00;
assign grp_fu_963_p00 = empty_227_fu_523_p2;
assign grp_fu_963_p1 = 16'd190;
assign grp_fu_963_p2 = zext_ln31_reg_1093;
assign grp_fu_971_p0 = grp_fu_971_p00;
assign grp_fu_971_p00 = empty_230_fu_537_p2;
assign grp_fu_971_p1 = 16'd190;
assign grp_fu_971_p2 = zext_ln31_reg_1093;
assign grp_fu_979_p0 = grp_fu_979_p00;
assign grp_fu_979_p00 = empty_233_fu_547_p2;
assign grp_fu_979_p1 = 16'd190;
assign grp_fu_979_p2 = zext_ln31_reg_1093;
assign grp_fu_987_p0 = grp_fu_987_p00;
assign grp_fu_987_p00 = empty_236_fu_565_p2;
assign grp_fu_987_p1 = 16'd190;
assign grp_fu_987_p2 = zext_ln31_reg_1093;
assign grp_fu_995_p0 = grp_fu_995_p00;
assign grp_fu_995_p00 = empty_239_fu_575_p2;
assign grp_fu_995_p1 = 16'd190;
assign grp_fu_995_p2 = zext_ln31_reg_1093;
assign grp_kernel_2mm_node0_Pipeline_label_210_fu_331_ap_start = grp_kernel_2mm_node0_Pipeline_label_210_fu_331_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_2_fu_295_ap_start = grp_kernel_2mm_node0_Pipeline_label_2_fu_295_ap_start_reg;
assign icmp_ln31_fu_416_p2 = ((v5_fu_102 < 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_1_fu_699_p2 = ((v6_1_reg_283 < 8'd180) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_456_p2 = ((v6_reg_271 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln_fu_430_p4 = {{v5_fu_102[7:3]}};
assign mul_ln101_1_fu_866_p0 = p_cast2621_reg_1376;
assign mul_ln101_1_fu_866_p1 = 16'd220;
assign mul_ln101_fu_634_p0 = p_cast2613_reg_1179;
assign mul_ln101_fu_634_p1 = 16'd220;
assign mul_ln114_1_fu_871_p0 = p_cast2622_reg_1382;
assign mul_ln114_1_fu_871_p1 = 16'd220;
assign mul_ln114_fu_639_p0 = p_cast2614_reg_1185;
assign mul_ln114_fu_639_p1 = 16'd220;
assign mul_ln127_1_fu_876_p0 = p_cast2623_reg_1398;
assign mul_ln127_1_fu_876_p1 = 16'd220;
assign mul_ln127_fu_644_p0 = p_cast2615_reg_1201;
assign mul_ln127_fu_644_p1 = 16'd220;
assign mul_ln140_1_fu_881_p0 = p_cast2624_reg_1404;
assign mul_ln140_1_fu_881_p1 = 16'd220;
assign mul_ln140_fu_649_p0 = p_cast2616_reg_1207;
assign mul_ln140_fu_649_p1 = 16'd220;
assign mul_ln34_1_fu_841_p0 = v6_1_cast_reg_1336;
assign mul_ln34_1_fu_841_p1 = 16'd220;
assign mul_ln34_fu_609_p0 = v6_cast_reg_1126;
assign mul_ln34_fu_609_p1 = 16'd220;
assign mul_ln38_fu_444_p0 = mul_ln38_fu_444_p00;
assign mul_ln38_fu_444_p00 = lshr_ln_fu_430_p4;
assign mul_ln38_fu_444_p1 = 13'd220;
assign mul_ln49_1_fu_846_p0 = p_cast2617_reg_1347;
assign mul_ln49_1_fu_846_p1 = 16'd220;
assign mul_ln49_fu_614_p0 = p_cast2609_reg_1150;
assign mul_ln49_fu_614_p1 = 16'd220;
assign mul_ln62_1_fu_851_p0 = p_cast2618_reg_1353;
assign mul_ln62_1_fu_851_p1 = 16'd220;
assign mul_ln62_fu_619_p0 = p_cast2610_reg_1156;
assign mul_ln62_fu_619_p1 = 16'd220;
assign mul_ln75_1_fu_856_p0 = p_cast2619_reg_1359;
assign mul_ln75_1_fu_856_p1 = 16'd220;
assign mul_ln75_fu_624_p0 = p_cast2611_reg_1162;
assign mul_ln75_fu_624_p1 = 16'd220;
assign mul_ln88_1_fu_861_p0 = p_cast2620_reg_1365;
assign mul_ln88_1_fu_861_p1 = 16'd220;
assign mul_ln88_fu_629_p0 = p_cast2612_reg_1168;
assign mul_ln88_fu_629_p1 = 16'd220;
assign or_ln_fu_481_p3 = {{tmp_fu_472_p4}, {1'd1}};
assign p_cast2609_fu_499_p1 = empty_218_fu_493_p2;
assign p_cast2610_fu_509_p1 = empty_221_fu_503_p2;
assign p_cast2611_fu_519_p1 = empty_224_fu_513_p2;
assign p_cast2612_fu_529_p1 = empty_227_fu_523_p2;
assign p_cast2613_fu_543_p1 = empty_230_fu_537_p2;
assign p_cast2614_fu_553_p1 = empty_233_fu_547_p2;
assign p_cast2615_fu_571_p1 = empty_236_fu_565_p2;
assign p_cast2616_fu_581_p1 = empty_239_fu_575_p2;
assign p_cast2617_fu_731_p1 = empty_244_fu_725_p2;
assign p_cast2618_fu_741_p1 = empty_247_fu_735_p2;
assign p_cast2619_fu_751_p1 = empty_250_fu_745_p2;
assign p_cast2620_fu_761_p1 = empty_253_fu_755_p2;
assign p_cast2621_fu_775_p1 = empty_256_fu_769_p2;
assign p_cast2622_fu_785_p1 = empty_259_fu_779_p2;
assign p_cast2623_fu_803_p1 = empty_262_fu_797_p2;
assign p_cast2624_fu_813_p1 = empty_265_fu_807_p2;
assign p_cast2625_fu_533_p1 = grp_fu_931_p3;
assign p_cast2626_fu_561_p1 = grp_fu_947_p3;
assign p_cast2627_fu_585_p1 = grp_fu_955_p3;
assign p_cast2628_fu_589_p1 = grp_fu_963_p3;
assign p_cast2629_fu_593_p1 = grp_fu_971_p3;
assign p_cast2630_fu_597_p1 = grp_fu_979_p3;
assign p_cast2631_fu_601_p1 = grp_fu_987_p3;
assign p_cast2632_fu_605_p1 = grp_fu_995_p3;
assign p_cast2633_fu_765_p1 = grp_fu_1003_p3;
assign p_cast2634_fu_789_p1 = grp_fu_1011_p3;
assign p_cast2635_fu_793_p1 = grp_fu_1019_p3;
assign p_cast2636_fu_817_p1 = grp_fu_1027_p3;
assign p_cast2637_fu_821_p1 = grp_fu_1035_p3;
assign p_cast2638_fu_825_p1 = grp_fu_1043_p3;
assign p_cast2639_fu_829_p1 = grp_fu_1051_p3;
assign p_cast2640_fu_833_p1 = grp_fu_1059_p3;
assign p_cast2641_fu_837_p1 = grp_fu_1067_p3;
assign p_cast_fu_557_p1 = grp_fu_939_p3;
assign tmp_fu_472_p4 = {{v5_fu_102[7:1]}};
assign trunc_ln31_fu_426_p1 = v5_fu_102[2:0];
assign v101_1_fu_926_p1 = reg_403;
assign v101_fu_694_p1 = reg_403;
assign v11_1_fu_886_p1 = reg_365;
assign v11_fu_654_p1 = reg_365;
assign v224_address0 = v224_address0_local;
assign v224_address1 = v224_address1_local;
assign v224_ce0 = v224_ce0_local;
assign v224_ce1 = v224_ce1_local;
assign v228_0_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_0_address0;
assign v228_0_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_0_address1;
assign v228_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_0_ce0;
assign v228_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_0_ce1;
assign v228_1_address0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_1_address0;
assign v228_1_address1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_1_address1;
assign v228_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_1_ce0;
assign v228_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_1_ce1;
assign v228_2_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_2_address0;
assign v228_2_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_2_address1;
assign v228_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_2_ce0;
assign v228_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_2_ce1;
assign v228_3_address0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_3_address0;
assign v228_3_address1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_3_address1;
assign v228_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_3_ce0;
assign v228_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_3_ce1;
assign v228_4_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_4_address0;
assign v228_4_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_4_address1;
assign v228_4_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_4_ce0;
assign v228_4_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_4_ce1;
assign v228_5_address0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_5_address0;
assign v228_5_address1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_5_address1;
assign v228_5_ce0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_5_ce0;
assign v228_5_ce1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_5_ce1;
assign v228_6_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_6_address0;
assign v228_6_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_6_address1;
assign v228_6_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_6_ce0;
assign v228_6_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_295_v228_6_ce1;
assign v228_7_address0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_7_address0;
assign v228_7_address1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_7_address1;
assign v228_7_ce0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_7_ce0;
assign v228_7_ce1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_331_v228_7_ce1;
assign v236_read = v236_read_local;
assign v24_1_fu_891_p1 = reg_370;
assign v24_fu_659_p1 = reg_370;
assign v35_1_fu_896_p1 = reg_374;
assign v35_fu_664_p1 = reg_374;
assign v46_1_fu_901_p1 = reg_378;
assign v46_fu_669_p1 = reg_378;
assign v57_1_fu_906_p1 = reg_383;
assign v57_fu_674_p1 = reg_383;
assign v68_1_fu_911_p1 = reg_388;
assign v68_fu_679_p1 = reg_388;
assign v6_1_cast_fu_705_p1 = v6_1_reg_283;
assign v6_cast_fu_462_p1 = v6_reg_271;
assign v79_1_fu_916_p1 = reg_393;
assign v79_fu_684_p1 = reg_393;
assign v90_1_fu_921_p1 = reg_398;
assign v90_fu_689_p1 = reg_398;
assign zext_ln31_fu_422_p1 = v5_fu_102;
assign zext_ln32_fu_489_p1 = or_ln_fu_481_p3;
always @ (posedge ap_clk) begin
    zext_ln31_reg_1093[15:8] <= 8'b00000000;
    v6_cast_reg_1126[15:8] <= 8'b00000000;
    zext_ln32_reg_1137[0] <= 1'b1;
    zext_ln32_reg_1137[15:8] <= 8'b00000000;
    p_cast2609_reg_1150[15:8] <= 8'b00000000;
    p_cast2610_reg_1156[15:8] <= 8'b00000000;
    p_cast2611_reg_1162[15:8] <= 8'b00000000;
    p_cast2612_reg_1168[15:8] <= 8'b00000000;
    p_cast2613_reg_1179[15:8] <= 8'b00000000;
    p_cast2614_reg_1185[15:8] <= 8'b00000000;
    p_cast2615_reg_1201[15:8] <= 8'b00000000;
    p_cast2616_reg_1207[15:8] <= 8'b00000000;
    v6_1_cast_reg_1336[15:8] <= 8'b00000000;
    p_cast2617_reg_1347[15:8] <= 8'b00000000;
    p_cast2618_reg_1353[15:8] <= 8'b00000000;
    p_cast2619_reg_1359[15:8] <= 8'b00000000;
    p_cast2620_reg_1365[15:8] <= 8'b00000000;
    p_cast2621_reg_1376[15:8] <= 8'b00000000;
    p_cast2622_reg_1382[15:8] <= 8'b00000000;
    p_cast2623_reg_1398[15:8] <= 8'b00000000;
    p_cast2624_reg_1404[15:8] <= 8'b00000000;
end
endmodule 