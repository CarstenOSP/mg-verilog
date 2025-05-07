module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_address0,v224_ce0,v224_q0,v224_address1,v224_ce1,v224_q1,v228_address0,v228_ce0,v228_q0,v228_address1,v228_ce1,v228_q1,v229_0_address0,v229_0_ce0,v229_0_we0,v229_0_d0,v229_0_q0,v229_0_address1,v229_0_ce1,v229_0_we1,v229_0_d1,v229_0_q1,v229_1_address0,v229_1_ce0,v229_1_we0,v229_1_d0,v229_1_q0,v229_1_address1,v229_1_ce1,v229_1_we1,v229_1_d1,v229_1_q1,v4,grp_fu_136_p_din0,grp_fu_136_p_din1,grp_fu_136_p_opcode,grp_fu_136_p_dout0,grp_fu_136_p_ce,grp_fu_140_p_din0,grp_fu_140_p_din1,grp_fu_140_p_dout0,grp_fu_140_p_ce,grp_fu_144_p_din0,grp_fu_144_p_din1,grp_fu_144_p_dout0,grp_fu_144_p_ce); 
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
output  [14:0] v229_0_address0;
output   v229_0_ce0;
output   v229_0_we0;
output  [31:0] v229_0_d0;
input  [31:0] v229_0_q0;
output  [14:0] v229_0_address1;
output   v229_0_ce1;
output   v229_0_we1;
output  [31:0] v229_0_d1;
input  [31:0] v229_0_q1;
output  [14:0] v229_1_address0;
output   v229_1_ce0;
output   v229_1_we0;
output  [31:0] v229_1_d0;
input  [31:0] v229_1_q0;
output  [14:0] v229_1_address1;
output   v229_1_ce1;
output   v229_1_we1;
output  [31:0] v229_1_d1;
input  [31:0] v229_1_q1;
input  [31:0] v4;
output  [31:0] grp_fu_136_p_din0;
output  [31:0] grp_fu_136_p_din1;
output  [1:0] grp_fu_136_p_opcode;
input  [31:0] grp_fu_136_p_dout0;
output   grp_fu_136_p_ce;
output  [31:0] grp_fu_140_p_din0;
output  [31:0] grp_fu_140_p_din1;
input  [31:0] grp_fu_140_p_dout0;
output   grp_fu_140_p_ce;
output  [31:0] grp_fu_144_p_din0;
output  [31:0] grp_fu_144_p_din1;
input  [31:0] grp_fu_144_p_dout0;
output   grp_fu_144_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[15:0] v228_address0;
reg v228_ce0;
reg[15:0] v228_address1;
reg v228_ce1;
reg[14:0] v229_0_address0;
reg v229_0_ce0;
reg v229_0_we0;
reg[31:0] v229_0_d0;
reg[14:0] v229_0_address1;
reg v229_0_ce1;
reg v229_0_we1;
reg[31:0] v229_0_d1;
reg[14:0] v229_1_address0;
reg v229_1_ce0;
reg v229_1_we0;
reg[31:0] v229_1_d0;
reg[14:0] v229_1_address1;
reg v229_1_ce1;
reg v229_1_we1;
reg[31:0] v229_1_d1;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
reg   [31:0] reg_361;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state12;
reg   [31:0] reg_365;
reg   [31:0] reg_369;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state13;
reg   [31:0] reg_373;
reg   [31:0] reg_377;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state14;
reg   [31:0] reg_381;
reg   [31:0] reg_385;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state15;
reg   [31:0] reg_389;
reg   [15:0] phi_mul_load_reg_968;
wire    ap_CS_fsm_state2;
wire   [15:0] add_ln31_1_fu_409_p2;
reg   [15:0] add_ln31_1_reg_974;
wire   [7:0] add_ln31_fu_421_p2;
reg   [7:0] add_ln31_reg_982;
wire   [15:0] zext_ln31_fu_427_p1;
reg   [15:0] zext_ln31_reg_987;
wire   [0:0] cmp11_fu_431_p2;
reg   [0:0] cmp11_reg_1009;
wire    ap_CS_fsm_state3;
wire   [6:0] lshr_ln_fu_447_p4;
reg   [6:0] lshr_ln_reg_1023;
wire   [7:0] add_ln32_1_fu_469_p2;
reg   [7:0] add_ln32_1_reg_1041;
wire    ap_CS_fsm_state6;
wire   [14:0] mul_ln34_fu_526_p2;
reg   [14:0] mul_ln34_reg_1096;
wire    ap_CS_fsm_state11;
wire   [14:0] mul_ln62_fu_541_p2;
reg   [14:0] mul_ln62_reg_1101;
wire   [14:0] mul_ln88_fu_556_p2;
reg   [14:0] mul_ln88_reg_1106;
wire   [14:0] mul_ln114_fu_571_p2;
reg   [14:0] mul_ln114_reg_1111;
wire   [14:0] mul_ln140_fu_586_p2;
reg   [14:0] mul_ln140_reg_1116;
reg   [31:0] v224_load_8_reg_1122;
reg   [31:0] v224_load_9_reg_1127;
wire   [31:0] v11_fu_600_p1;
reg   [31:0] v11_reg_1142;
wire   [31:0] v24_fu_605_p1;
reg   [31:0] v24_reg_1147;
wire   [31:0] v35_fu_610_p1;
reg   [31:0] v35_reg_1152;
wire   [31:0] v46_fu_615_p1;
reg   [31:0] v46_reg_1157;
wire   [31:0] v57_fu_620_p1;
reg   [31:0] v57_reg_1162;
wire   [31:0] v68_fu_625_p1;
reg   [31:0] v68_reg_1167;
wire   [31:0] v79_fu_630_p1;
reg   [31:0] v79_reg_1172;
wire   [31:0] v90_fu_635_p1;
reg   [31:0] v90_reg_1177;
wire   [31:0] v101_fu_640_p1;
reg   [31:0] v101_reg_1182;
wire   [14:0] mul_ln49_fu_677_p2;
reg   [14:0] mul_ln49_reg_1217;
wire   [14:0] mul_ln75_fu_692_p2;
reg   [14:0] mul_ln75_reg_1222;
wire   [14:0] mul_ln101_fu_707_p2;
reg   [14:0] mul_ln101_reg_1227;
wire   [14:0] mul_ln127_fu_722_p2;
reg   [14:0] mul_ln127_reg_1232;
wire   [31:0] v11_1_fu_728_p1;
reg   [31:0] v11_1_reg_1237;
wire    ap_CS_fsm_state16;
wire   [31:0] v24_1_fu_732_p1;
reg   [31:0] v24_1_reg_1242;
wire   [31:0] v35_1_fu_737_p1;
reg   [31:0] v35_1_reg_1247;
wire   [31:0] v46_1_fu_742_p1;
reg   [31:0] v46_1_reg_1252;
wire   [31:0] v57_1_fu_747_p1;
reg   [31:0] v57_1_reg_1257;
wire   [31:0] v68_1_fu_752_p1;
reg   [31:0] v68_1_reg_1262;
wire   [31:0] v79_1_fu_757_p1;
reg   [31:0] v79_1_reg_1267;
wire   [31:0] v90_1_fu_762_p1;
reg   [31:0] v90_1_reg_1272;
wire   [31:0] v101_1_fu_767_p1;
reg   [31:0] v101_1_reg_1277;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_307_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_307_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_307_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_307_ap_ready;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_0_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_0_d1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_1_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_1_d1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v228_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1282_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1282_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1282_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1282_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1286_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1286_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1286_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1286_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1290_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1290_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1290_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1294_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1294_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1294_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1298_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1298_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1298_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1302_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1302_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1302_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_334_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_334_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_334_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_334_ap_ready;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_0_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_0_d1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_1_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_1_d1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v228_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1282_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1282_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1282_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1282_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1286_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1286_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1286_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1286_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1290_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1290_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1290_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1294_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1294_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1294_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1298_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1298_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1298_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1302_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1302_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1302_p_ce;
reg   [7:0] v6_reg_295;
wire    ap_CS_fsm_state17;
wire   [0:0] icmp_ln31_fu_415_p2;
reg    grp_kernel_2mm_node0_Pipeline_label_2_fu_307_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_23_fu_334_ap_start_reg;
wire   [63:0] p_cast1102_fu_483_p1;
wire   [63:0] p_cast_fu_487_p1;
wire   [63:0] p_cast1103_fu_491_p1;
wire   [63:0] p_cast1104_fu_495_p1;
wire   [63:0] p_cast1105_fu_499_p1;
wire   [63:0] p_cast1106_fu_503_p1;
wire   [63:0] p_cast1107_fu_507_p1;
wire   [63:0] p_cast1108_fu_511_p1;
wire   [63:0] p_cast1109_fu_515_p1;
wire   [63:0] p_cast1110_fu_519_p1;
wire   [63:0] p_cast1111_fu_592_p1;
wire   [63:0] p_cast1112_fu_596_p1;
wire   [63:0] p_cast1113_fu_644_p1;
wire   [63:0] p_cast1114_fu_648_p1;
wire   [63:0] p_cast1115_fu_652_p1;
wire   [63:0] p_cast1116_fu_656_p1;
wire   [63:0] p_cast1117_fu_660_p1;
wire   [63:0] p_cast1118_fu_664_p1;
reg   [15:0] phi_mul_fu_122;
wire   [0:0] icmp_ln32_fu_437_p2;
reg    ap_block_state1;
reg   [7:0] v5_fu_126;
reg    v236_read_local;
reg    v224_ce1_local;
reg   [15:0] v224_address1_local;
reg    v224_ce0_local;
reg   [15:0] v224_address0_local;
wire   [7:0] tmp_1_fu_457_p3;
wire   [15:0] grp_fu_772_p3;
wire   [15:0] grp_fu_780_p3;
wire   [15:0] grp_fu_788_p4;
wire   [15:0] grp_fu_798_p4;
wire   [15:0] grp_fu_808_p4;
wire   [15:0] grp_fu_818_p4;
wire   [15:0] grp_fu_828_p4;
wire   [15:0] grp_fu_838_p4;
wire   [15:0] grp_fu_848_p4;
wire   [15:0] grp_fu_858_p4;
wire   [6:0] mul_ln34_fu_526_p0;
wire   [8:0] mul_ln34_fu_526_p1;
wire   [6:0] empty_46_fu_532_p2;
wire   [6:0] mul_ln62_fu_541_p0;
wire   [8:0] mul_ln62_fu_541_p1;
wire   [6:0] empty_53_fu_547_p2;
wire   [6:0] mul_ln88_fu_556_p0;
wire   [8:0] mul_ln88_fu_556_p1;
wire   [6:0] empty_60_fu_562_p2;
wire   [6:0] mul_ln114_fu_571_p0;
wire   [8:0] mul_ln114_fu_571_p1;
wire   [6:0] empty_67_fu_577_p2;
wire   [6:0] mul_ln140_fu_586_p0;
wire   [8:0] mul_ln140_fu_586_p1;
wire   [15:0] grp_fu_868_p4;
wire   [15:0] grp_fu_878_p4;
wire   [15:0] grp_fu_888_p4;
wire   [15:0] grp_fu_898_p4;
wire   [15:0] grp_fu_908_p4;
wire   [15:0] grp_fu_918_p4;
wire   [15:0] grp_fu_928_p4;
wire   [15:0] grp_fu_938_p4;
wire   [6:0] empty_73_fu_668_p2;
wire   [6:0] mul_ln49_fu_677_p0;
wire   [8:0] mul_ln49_fu_677_p1;
wire   [6:0] empty_80_fu_683_p2;
wire   [6:0] mul_ln75_fu_692_p0;
wire   [8:0] mul_ln75_fu_692_p1;
wire   [6:0] empty_87_fu_698_p2;
wire   [6:0] mul_ln101_fu_707_p0;
wire   [8:0] mul_ln101_fu_707_p1;
wire   [6:0] empty_94_fu_713_p2;
wire   [6:0] mul_ln127_fu_722_p0;
wire   [8:0] mul_ln127_fu_722_p1;
wire   [7:0] grp_fu_772_p0;
wire   [7:0] grp_fu_772_p1;
wire   [7:0] grp_fu_772_p2;
wire    ap_CS_fsm_state5;
wire   [7:0] grp_fu_780_p0;
wire   [7:0] grp_fu_780_p1;
wire   [7:0] grp_fu_780_p2;
wire   [1:0] grp_fu_788_p1;
wire   [7:0] grp_fu_788_p2;
wire   [7:0] grp_fu_788_p3;
wire    ap_CS_fsm_state4;
wire   [1:0] grp_fu_798_p1;
wire   [7:0] grp_fu_798_p2;
wire   [7:0] grp_fu_798_p3;
wire   [2:0] grp_fu_808_p1;
wire   [7:0] grp_fu_808_p2;
wire   [7:0] grp_fu_808_p3;
wire   [2:0] grp_fu_818_p1;
wire   [7:0] grp_fu_818_p2;
wire   [7:0] grp_fu_818_p3;
wire   [2:0] grp_fu_828_p1;
wire   [7:0] grp_fu_828_p2;
wire   [7:0] grp_fu_828_p3;
wire   [2:0] grp_fu_838_p1;
wire   [7:0] grp_fu_838_p2;
wire   [7:0] grp_fu_838_p3;
wire   [3:0] grp_fu_848_p1;
wire   [7:0] grp_fu_848_p2;
wire   [7:0] grp_fu_848_p3;
wire   [3:0] grp_fu_858_p1;
wire   [7:0] grp_fu_858_p2;
wire   [7:0] grp_fu_858_p3;
wire   [3:0] grp_fu_868_p1;
wire   [7:0] grp_fu_868_p2;
wire   [7:0] grp_fu_868_p3;
wire   [3:0] grp_fu_878_p1;
wire   [7:0] grp_fu_878_p2;
wire   [7:0] grp_fu_878_p3;
wire   [3:0] grp_fu_888_p1;
wire   [7:0] grp_fu_888_p2;
wire   [7:0] grp_fu_888_p3;
wire   [3:0] grp_fu_898_p1;
wire   [7:0] grp_fu_898_p2;
wire   [7:0] grp_fu_898_p3;
wire   [3:0] grp_fu_908_p1;
wire   [7:0] grp_fu_908_p2;
wire   [7:0] grp_fu_908_p3;
wire   [3:0] grp_fu_918_p1;
wire   [7:0] grp_fu_918_p2;
wire   [7:0] grp_fu_918_p3;
wire   [4:0] grp_fu_928_p1;
wire   [7:0] grp_fu_928_p2;
wire   [7:0] grp_fu_928_p3;
wire   [4:0] grp_fu_938_p1;
wire   [7:0] grp_fu_938_p2;
wire   [7:0] grp_fu_938_p3;
reg    grp_fu_908_ce;
reg    grp_fu_918_ce;
reg    grp_fu_928_ce;
reg    grp_fu_938_ce;
reg   [31:0] grp_fu_1282_p0;
reg   [31:0] grp_fu_1282_p1;
reg    grp_fu_1282_ce;
wire   [31:0] grp_fu_1286_p2;
reg   [31:0] grp_fu_1286_p0;
reg   [31:0] grp_fu_1286_p1;
reg    grp_fu_1286_ce;
reg   [31:0] grp_fu_1290_p0;
reg   [31:0] grp_fu_1290_p1;
reg    grp_fu_1290_ce;
reg   [31:0] grp_fu_1294_p0;
reg   [31:0] grp_fu_1294_p1;
reg    grp_fu_1294_ce;
wire   [31:0] grp_fu_1298_p2;
reg   [31:0] grp_fu_1298_p0;
reg   [31:0] grp_fu_1298_p1;
reg    grp_fu_1298_ce;
wire   [31:0] grp_fu_1302_p2;
reg   [31:0] grp_fu_1302_p0;
reg   [31:0] grp_fu_1302_p1;
reg    grp_fu_1302_ce;
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
wire   [15:0] grp_fu_772_p00;
wire   [15:0] grp_fu_780_p00;
wire   [14:0] mul_ln101_fu_707_p00;
wire   [14:0] mul_ln114_fu_571_p00;
wire   [14:0] mul_ln127_fu_722_p00;
wire   [14:0] mul_ln140_fu_586_p00;
wire   [14:0] mul_ln34_fu_526_p00;
wire   [14:0] mul_ln49_fu_677_p00;
wire   [14:0] mul_ln62_fu_541_p00;
wire   [14:0] mul_ln75_fu_692_p00;
wire   [14:0] mul_ln88_fu_556_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_2_fu_307_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_23_fu_334_ap_start_reg = 1'b0;
#0 phi_mul_fu_122 = 16'd0;
#0 v5_fu_126 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_2 grp_kernel_2mm_node0_Pipeline_label_2_fu_307(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_ap_ready),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_0_d1),.v229_0_q1(v229_0_q1),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_1_d1),.v229_1_q1(v229_1_q1),.phi_mul(phi_mul_load_reg_968),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v228_ce1),.v228_q1(v228_q1),.mul_ln34(mul_ln34_reg_1096),.mul_ln62(mul_ln62_reg_1101),.mul_ln88(mul_ln88_reg_1106),.mul_ln114(mul_ln114_reg_1111),.mul_ln140(mul_ln140_reg_1116),.v4(v4),.cmp11(cmp11_reg_1009),.v11(v11_reg_1142),.v24(v24_reg_1147),.v35(v35_reg_1152),.v46(v46_reg_1157),.v57(v57_reg_1162),.v68(v68_reg_1167),.v79(v79_reg_1172),.v90(v90_reg_1177),.v101(v101_reg_1182),.grp_fu_1282_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1282_p_din0),.grp_fu_1282_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1282_p_din1),.grp_fu_1282_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1282_p_opcode),.grp_fu_1282_p_dout0(grp_fu_136_p_dout0),.grp_fu_1282_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1282_p_ce),.grp_fu_1286_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1286_p_din0),.grp_fu_1286_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1286_p_din1),.grp_fu_1286_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1286_p_opcode),.grp_fu_1286_p_dout0(grp_fu_1286_p2),.grp_fu_1286_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1286_p_ce),.grp_fu_1290_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1290_p_din0),.grp_fu_1290_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1290_p_din1),.grp_fu_1290_p_dout0(grp_fu_140_p_dout0),.grp_fu_1290_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1290_p_ce),.grp_fu_1294_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1294_p_din0),.grp_fu_1294_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1294_p_din1),.grp_fu_1294_p_dout0(grp_fu_144_p_dout0),.grp_fu_1294_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1294_p_ce),.grp_fu_1298_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1298_p_din0),.grp_fu_1298_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1298_p_din1),.grp_fu_1298_p_dout0(grp_fu_1298_p2),.grp_fu_1298_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1298_p_ce),.grp_fu_1302_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1302_p_din0),.grp_fu_1302_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1302_p_din1),.grp_fu_1302_p_dout0(grp_fu_1302_p2),.grp_fu_1302_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1302_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_23 grp_kernel_2mm_node0_Pipeline_label_23_fu_334(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_ap_ready),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_0_d1),.v229_0_q1(v229_0_q1),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_1_d1),.v229_1_q1(v229_1_q1),.phi_mul(phi_mul_load_reg_968),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v228_ce1),.v228_q1(v228_q1),.mul_ln49(mul_ln49_reg_1217),.mul_ln75(mul_ln75_reg_1222),.mul_ln101(mul_ln101_reg_1227),.mul_ln127(mul_ln127_reg_1232),.mul_ln140(mul_ln140_reg_1116),.v4(v4),.cmp11(cmp11_reg_1009),.v11_1(v11_1_reg_1237),.v24_1(v24_1_reg_1242),.v35_1(v35_1_reg_1247),.v46_1(v46_1_reg_1252),.v57_1(v57_1_reg_1257),.v68_1(v68_1_reg_1262),.v79_1(v79_1_reg_1267),.v90_1(v90_1_reg_1272),.v101_1(v101_1_reg_1277),.grp_fu_1282_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1282_p_din0),.grp_fu_1282_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1282_p_din1),.grp_fu_1282_p_opcode(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1282_p_opcode),.grp_fu_1282_p_dout0(grp_fu_136_p_dout0),.grp_fu_1282_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1282_p_ce),.grp_fu_1286_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1286_p_din0),.grp_fu_1286_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1286_p_din1),.grp_fu_1286_p_opcode(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1286_p_opcode),.grp_fu_1286_p_dout0(grp_fu_1286_p2),.grp_fu_1286_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1286_p_ce),.grp_fu_1290_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1290_p_din0),.grp_fu_1290_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1290_p_din1),.grp_fu_1290_p_dout0(grp_fu_140_p_dout0),.grp_fu_1290_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1290_p_ce),.grp_fu_1294_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1294_p_din0),.grp_fu_1294_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1294_p_din1),.grp_fu_1294_p_dout0(grp_fu_144_p_dout0),.grp_fu_1294_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1294_p_ce),.grp_fu_1298_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1298_p_din0),.grp_fu_1298_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1298_p_din1),.grp_fu_1298_p_dout0(grp_fu_1298_p2),.grp_fu_1298_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1298_p_ce),.grp_fu_1302_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1302_p_din0),.grp_fu_1302_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1302_p_din1),.grp_fu_1302_p_dout0(grp_fu_1302_p2),.grp_fu_1302_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1302_p_ce));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U103(.din0(mul_ln34_fu_526_p0),.din1(mul_ln34_fu_526_p1),.dout(mul_ln34_fu_526_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U104(.din0(mul_ln62_fu_541_p0),.din1(mul_ln62_fu_541_p1),.dout(mul_ln62_fu_541_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U105(.din0(mul_ln88_fu_556_p0),.din1(mul_ln88_fu_556_p1),.dout(mul_ln88_fu_556_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U106(.din0(mul_ln114_fu_571_p0),.din1(mul_ln114_fu_571_p1),.dout(mul_ln114_fu_571_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U107(.din0(mul_ln140_fu_586_p0),.din1(mul_ln140_fu_586_p1),.dout(mul_ln140_fu_586_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U108(.din0(mul_ln49_fu_677_p0),.din1(mul_ln49_fu_677_p1),.dout(mul_ln49_fu_677_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U109(.din0(mul_ln75_fu_692_p0),.din1(mul_ln75_fu_692_p1),.dout(mul_ln75_fu_692_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U110(.din0(mul_ln101_fu_707_p0),.din1(mul_ln101_fu_707_p1),.dout(mul_ln101_fu_707_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U111(.din0(mul_ln127_fu_722_p0),.din1(mul_ln127_fu_722_p1),.dout(mul_ln127_fu_722_p2));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U112(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_772_p0),.din1(grp_fu_772_p1),.din2(grp_fu_772_p2),.ce(1'b1),.dout(grp_fu_772_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U113(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_780_p0),.din1(grp_fu_780_p1),.din2(grp_fu_780_p2),.ce(1'b1),.dout(grp_fu_780_p3));
kernel_2mm_ama_addmuladd_8ns_2ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 2 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_2ns_8ns_8ns_16_4_1_U114(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_295),.din1(grp_fu_788_p1),.din2(grp_fu_788_p2),.din3(grp_fu_788_p3),.ce(1'b1),.dout(grp_fu_788_p4));
kernel_2mm_ama_addmuladd_8ns_2ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 2 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_2ns_8ns_8ns_16_4_1_U115(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_295),.din1(grp_fu_798_p1),.din2(grp_fu_798_p2),.din3(grp_fu_798_p3),.ce(1'b1),.dout(grp_fu_798_p4));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U116(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_295),.din1(grp_fu_808_p1),.din2(grp_fu_808_p2),.din3(grp_fu_808_p3),.ce(1'b1),.dout(grp_fu_808_p4));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U117(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_295),.din1(grp_fu_818_p1),.din2(grp_fu_818_p2),.din3(grp_fu_818_p3),.ce(1'b1),.dout(grp_fu_818_p4));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U118(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_295),.din1(grp_fu_828_p1),.din2(grp_fu_828_p2),.din3(grp_fu_828_p3),.ce(1'b1),.dout(grp_fu_828_p4));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U119(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_295),.din1(grp_fu_838_p1),.din2(grp_fu_838_p2),.din3(grp_fu_838_p3),.ce(1'b1),.dout(grp_fu_838_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U120(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_295),.din1(grp_fu_848_p1),.din2(grp_fu_848_p2),.din3(grp_fu_848_p3),.ce(1'b1),.dout(grp_fu_848_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U121(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_295),.din1(grp_fu_858_p1),.din2(grp_fu_858_p2),.din3(grp_fu_858_p3),.ce(1'b1),.dout(grp_fu_858_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U122(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_295),.din1(grp_fu_868_p1),.din2(grp_fu_868_p2),.din3(grp_fu_868_p3),.ce(1'b1),.dout(grp_fu_868_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U123(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_295),.din1(grp_fu_878_p1),.din2(grp_fu_878_p2),.din3(grp_fu_878_p3),.ce(1'b1),.dout(grp_fu_878_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U124(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_295),.din1(grp_fu_888_p1),.din2(grp_fu_888_p2),.din3(grp_fu_888_p3),.ce(1'b1),.dout(grp_fu_888_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U125(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_295),.din1(grp_fu_898_p1),.din2(grp_fu_898_p2),.din3(grp_fu_898_p3),.ce(1'b1),.dout(grp_fu_898_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U126(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_295),.din1(grp_fu_908_p1),.din2(grp_fu_908_p2),.din3(grp_fu_908_p3),.ce(grp_fu_908_ce),.dout(grp_fu_908_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U127(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_295),.din1(grp_fu_918_p1),.din2(grp_fu_918_p2),.din3(grp_fu_918_p3),.ce(grp_fu_918_ce),.dout(grp_fu_918_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U128(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_295),.din1(grp_fu_928_p1),.din2(grp_fu_928_p2),.din3(grp_fu_928_p3),.ce(grp_fu_928_ce),.dout(grp_fu_928_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U129(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_295),.din1(grp_fu_938_p1),.din2(grp_fu_938_p2),.din3(grp_fu_938_p3),.ce(grp_fu_938_ce),.dout(grp_fu_938_p4));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U131(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1286_p0),.din1(grp_fu_1286_p1),.ce(grp_fu_1286_ce),.dout(grp_fu_1286_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U134(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1298_p0),.din1(grp_fu_1298_p1),.ce(grp_fu_1298_ce),.dout(grp_fu_1298_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U135(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1302_p0),.din1(grp_fu_1302_p1),.ce(grp_fu_1302_ce),.dout(grp_fu_1302_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_23_fu_334_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node0_Pipeline_label_23_fu_334_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_23_fu_334_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_23_fu_334_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_2_fu_307_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_307_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_307_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_307_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_fu_122 <= 16'd0;
    end else if (((icmp_ln32_fu_437_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_mul_fu_122 <= add_ln31_1_reg_974;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_126 <= 8'd0;
    end else if (((icmp_ln32_fu_437_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v5_fu_126 <= add_ln31_reg_982;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln31_fu_415_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v6_reg_295 <= 8'd0;
    end else if (((grp_kernel_2mm_node0_Pipeline_label_23_fu_334_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        v6_reg_295 <= add_ln32_1_reg_1041;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln31_1_reg_974 <= add_ln31_1_fu_409_p2;
        add_ln31_reg_982 <= add_ln31_fu_421_p2;
        cmp11_reg_1009 <= cmp11_fu_431_p2;
        phi_mul_load_reg_968 <= phi_mul_fu_122;
        zext_ln31_reg_987[7 : 0] <= zext_ln31_fu_427_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_1_reg_1041 <= add_ln32_1_fu_469_p2;
        lshr_ln_reg_1023 <= {{v6_reg_295[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln101_reg_1227 <= mul_ln101_fu_707_p2;
        mul_ln127_reg_1232 <= mul_ln127_fu_722_p2;
        mul_ln49_reg_1217 <= mul_ln49_fu_677_p2;
        mul_ln75_reg_1222 <= mul_ln75_fu_692_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        mul_ln114_reg_1111 <= mul_ln114_fu_571_p2;
        mul_ln140_reg_1116 <= mul_ln140_fu_586_p2;
        mul_ln34_reg_1096 <= mul_ln34_fu_526_p2;
        mul_ln62_reg_1101 <= mul_ln62_fu_541_p2;
        mul_ln88_reg_1106 <= mul_ln88_fu_556_p2;
        v224_load_8_reg_1122 <= v224_q1;
        v224_load_9_reg_1127 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7))) begin
        reg_361 <= v224_q1;
        reg_365 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_369 <= v224_q1;
        reg_373 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9))) begin
        reg_377 <= v224_q1;
        reg_381 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10))) begin
        reg_385 <= v224_q1;
        reg_389 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        v101_1_reg_1277 <= v101_1_fu_767_p1;
        v11_1_reg_1237 <= v11_1_fu_728_p1;
        v24_1_reg_1242 <= v24_1_fu_732_p1;
        v35_1_reg_1247 <= v35_1_fu_737_p1;
        v46_1_reg_1252 <= v46_1_fu_742_p1;
        v57_1_reg_1257 <= v57_1_fu_747_p1;
        v68_1_reg_1262 <= v68_1_fu_752_p1;
        v79_1_reg_1267 <= v79_1_fu_757_p1;
        v90_1_reg_1272 <= v90_1_fu_762_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        v101_reg_1182 <= v101_fu_640_p1;
        v11_reg_1142 <= v11_fu_600_p1;
        v24_reg_1147 <= v24_fu_605_p1;
        v35_reg_1152 <= v35_fu_610_p1;
        v46_reg_1157 <= v46_fu_615_p1;
        v57_reg_1162 <= v57_fu_620_p1;
        v68_reg_1167 <= v68_fu_625_p1;
        v79_reg_1172 <= v79_fu_630_p1;
        v90_reg_1177 <= v90_fu_635_p1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_307_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
    end
end
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_23_fu_334_ap_done == 1'b0)) begin
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
    if ((((icmp_ln31_fu_415_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((icmp_ln31_fu_415_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1282_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1282_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1282_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1282_p_ce;
    end else begin
        grp_fu_1282_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1282_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1282_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1282_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1282_p_din0;
    end else begin
        grp_fu_1282_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1282_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1282_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1282_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1282_p_din1;
    end else begin
        grp_fu_1282_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1286_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1286_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1286_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1286_p_ce;
    end else begin
        grp_fu_1286_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1286_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1286_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1286_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1286_p_din0;
    end else begin
        grp_fu_1286_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1286_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1286_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1286_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1286_p_din1;
    end else begin
        grp_fu_1286_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1290_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1290_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1290_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1290_p_ce;
    end else begin
        grp_fu_1290_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1290_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1290_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1290_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1290_p_din0;
    end else begin
        grp_fu_1290_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1290_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1290_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1290_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1290_p_din1;
    end else begin
        grp_fu_1290_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1294_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1294_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1294_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1294_p_ce;
    end else begin
        grp_fu_1294_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1294_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1294_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1294_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1294_p_din0;
    end else begin
        grp_fu_1294_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1294_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1294_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1294_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1294_p_din1;
    end else begin
        grp_fu_1294_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1298_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1298_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1298_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1298_p_ce;
    end else begin
        grp_fu_1298_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1298_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1298_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1298_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1298_p_din0;
    end else begin
        grp_fu_1298_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1298_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1298_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1298_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1298_p_din1;
    end else begin
        grp_fu_1298_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1302_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1302_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1302_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1302_p_ce;
    end else begin
        grp_fu_1302_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1302_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1302_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1302_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1302_p_din0;
    end else begin
        grp_fu_1302_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1302_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_334_grp_fu_1302_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1302_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_307_grp_fu_1302_p_din1;
    end else begin
        grp_fu_1302_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_307_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_908_ce = 1'b1;
    end else begin
        grp_fu_908_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_307_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_918_ce = 1'b1;
    end else begin
        grp_fu_918_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state14) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_307_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_928_ce = 1'b1;
    end else begin
        grp_fu_928_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state14) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_307_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_938_ce = 1'b1;
    end else begin
        grp_fu_938_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_address0_local = p_cast1118_fu_664_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_address0_local = p_cast1116_fu_656_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_address0_local = p_cast1114_fu_648_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_address0_local = p_cast1112_fu_596_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address0_local = p_cast1110_fu_519_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address0_local = p_cast1108_fu_511_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address0_local = p_cast1106_fu_503_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address0_local = p_cast1104_fu_495_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_address0_local = p_cast_fu_487_p1;
    end else begin
        v224_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_address1_local = p_cast1117_fu_660_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_address1_local = p_cast1115_fu_652_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_address1_local = p_cast1113_fu_644_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_address1_local = p_cast1111_fu_592_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address1_local = p_cast1109_fu_515_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address1_local = p_cast1107_fu_507_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address1_local = p_cast1105_fu_499_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address1_local = p_cast1103_fu_491_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_address1_local = p_cast1102_fu_483_p1;
    end else begin
        v224_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_307_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        v224_ce0_local = 1'b1;
    end else begin
        v224_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_307_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        v224_ce1_local = 1'b1;
    end else begin
        v224_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v228_address0;
    end else begin
        v228_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v228_address1;
    end else begin
        v228_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v228_ce0;
    end else begin
        v228_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v228_ce1;
    end else begin
        v228_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_0_address0;
    end else begin
        v229_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_0_address1;
    end else begin
        v229_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_0_ce0;
    end else begin
        v229_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_0_ce1;
    end else begin
        v229_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_0_d0;
    end else begin
        v229_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_0_d1;
    end else begin
        v229_0_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_0_we0;
    end else begin
        v229_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_0_we1;
    end else begin
        v229_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_1_address0;
    end else begin
        v229_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_1_address1;
    end else begin
        v229_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_1_ce0;
    end else begin
        v229_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_1_ce1;
    end else begin
        v229_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_1_d0;
    end else begin
        v229_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_1_d1;
    end else begin
        v229_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_1_we0;
    end else begin
        v229_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_334_v229_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_307_v229_1_we1;
    end else begin
        v229_1_we1 = 1'b0;
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
            if (((icmp_ln31_fu_415_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln32_fu_437_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_307_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_23_fu_334_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
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
assign add_ln31_1_fu_409_p2 = (phi_mul_fu_122 + 16'd220);
assign add_ln31_fu_421_p2 = (v5_fu_126 + 8'd1);
assign add_ln32_1_fu_469_p2 = (v6_reg_295 + 8'd18);
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
assign cmp11_fu_431_p2 = ((v5_fu_126 == 8'd0) ? 1'b1 : 1'b0);
assign empty_46_fu_532_p2 = (lshr_ln_reg_1023 + 7'd1);
assign empty_53_fu_547_p2 = (lshr_ln_reg_1023 + 7'd2);
assign empty_60_fu_562_p2 = (lshr_ln_reg_1023 + 7'd3);
assign empty_67_fu_577_p2 = (lshr_ln_reg_1023 + 7'd4);
assign empty_73_fu_668_p2 = (lshr_ln_reg_1023 + 7'd5);
assign empty_80_fu_683_p2 = (lshr_ln_reg_1023 + 7'd6);
assign empty_87_fu_698_p2 = (lshr_ln_reg_1023 + 7'd7);
assign empty_94_fu_713_p2 = (lshr_ln_reg_1023 + 7'd8);
assign grp_fu_136_p_ce = grp_fu_1282_ce;
assign grp_fu_136_p_din0 = grp_fu_1282_p0;
assign grp_fu_136_p_din1 = grp_fu_1282_p1;
assign grp_fu_136_p_opcode = 2'd0;
assign grp_fu_140_p_ce = grp_fu_1290_ce;
assign grp_fu_140_p_din0 = grp_fu_1290_p0;
assign grp_fu_140_p_din1 = grp_fu_1290_p1;
assign grp_fu_144_p_ce = grp_fu_1294_ce;
assign grp_fu_144_p_din0 = grp_fu_1294_p0;
assign grp_fu_144_p_din1 = grp_fu_1294_p1;
assign grp_fu_772_p0 = grp_fu_772_p00;
assign grp_fu_772_p00 = v6_reg_295;
assign grp_fu_772_p1 = 16'd190;
assign grp_fu_772_p2 = zext_ln31_reg_987;
assign grp_fu_780_p0 = grp_fu_780_p00;
assign grp_fu_780_p00 = tmp_1_fu_457_p3;
assign grp_fu_780_p1 = 16'd190;
assign grp_fu_780_p2 = zext_ln31_reg_987;
assign grp_fu_788_p1 = 8'd2;
assign grp_fu_788_p2 = 16'd190;
assign grp_fu_788_p3 = zext_ln31_reg_987;
assign grp_fu_798_p1 = 8'd3;
assign grp_fu_798_p2 = 16'd190;
assign grp_fu_798_p3 = zext_ln31_reg_987;
assign grp_fu_808_p1 = 8'd4;
assign grp_fu_808_p2 = 16'd190;
assign grp_fu_808_p3 = zext_ln31_reg_987;
assign grp_fu_818_p1 = 8'd5;
assign grp_fu_818_p2 = 16'd190;
assign grp_fu_818_p3 = zext_ln31_reg_987;
assign grp_fu_828_p1 = 8'd6;
assign grp_fu_828_p2 = 16'd190;
assign grp_fu_828_p3 = zext_ln31_reg_987;
assign grp_fu_838_p1 = 8'd7;
assign grp_fu_838_p2 = 16'd190;
assign grp_fu_838_p3 = zext_ln31_reg_987;
assign grp_fu_848_p1 = 8'd8;
assign grp_fu_848_p2 = 16'd190;
assign grp_fu_848_p3 = zext_ln31_reg_987;
assign grp_fu_858_p1 = 8'd9;
assign grp_fu_858_p2 = 16'd190;
assign grp_fu_858_p3 = zext_ln31_reg_987;
assign grp_fu_868_p1 = 8'd10;
assign grp_fu_868_p2 = 16'd190;
assign grp_fu_868_p3 = zext_ln31_reg_987;
assign grp_fu_878_p1 = 8'd11;
assign grp_fu_878_p2 = 16'd190;
assign grp_fu_878_p3 = zext_ln31_reg_987;
assign grp_fu_888_p1 = 8'd12;
assign grp_fu_888_p2 = 16'd190;
assign grp_fu_888_p3 = zext_ln31_reg_987;
assign grp_fu_898_p1 = 8'd13;
assign grp_fu_898_p2 = 16'd190;
assign grp_fu_898_p3 = zext_ln31_reg_987;
assign grp_fu_908_p1 = 8'd14;
assign grp_fu_908_p2 = 16'd190;
assign grp_fu_908_p3 = zext_ln31_reg_987;
assign grp_fu_918_p1 = 8'd15;
assign grp_fu_918_p2 = 16'd190;
assign grp_fu_918_p3 = zext_ln31_reg_987;
assign grp_fu_928_p1 = 8'd16;
assign grp_fu_928_p2 = 16'd190;
assign grp_fu_928_p3 = zext_ln31_reg_987;
assign grp_fu_938_p1 = 8'd17;
assign grp_fu_938_p2 = 16'd190;
assign grp_fu_938_p3 = zext_ln31_reg_987;
assign grp_kernel_2mm_node0_Pipeline_label_23_fu_334_ap_start = grp_kernel_2mm_node0_Pipeline_label_23_fu_334_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_2_fu_307_ap_start = grp_kernel_2mm_node0_Pipeline_label_2_fu_307_ap_start_reg;
assign icmp_ln31_fu_415_p2 = ((v5_fu_126 == 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_437_p2 = ((v6_reg_295 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln_fu_447_p4 = {{v6_reg_295[7:1]}};
assign mul_ln101_fu_707_p0 = mul_ln101_fu_707_p00;
assign mul_ln101_fu_707_p00 = empty_87_fu_698_p2;
assign mul_ln101_fu_707_p1 = 15'd220;
assign mul_ln114_fu_571_p0 = mul_ln114_fu_571_p00;
assign mul_ln114_fu_571_p00 = empty_60_fu_562_p2;
assign mul_ln114_fu_571_p1 = 15'd220;
assign mul_ln127_fu_722_p0 = mul_ln127_fu_722_p00;
assign mul_ln127_fu_722_p00 = empty_94_fu_713_p2;
assign mul_ln127_fu_722_p1 = 15'd220;
assign mul_ln140_fu_586_p0 = mul_ln140_fu_586_p00;
assign mul_ln140_fu_586_p00 = empty_67_fu_577_p2;
assign mul_ln140_fu_586_p1 = 15'd220;
assign mul_ln34_fu_526_p0 = mul_ln34_fu_526_p00;
assign mul_ln34_fu_526_p00 = lshr_ln_reg_1023;
assign mul_ln34_fu_526_p1 = 15'd220;
assign mul_ln49_fu_677_p0 = mul_ln49_fu_677_p00;
assign mul_ln49_fu_677_p00 = empty_73_fu_668_p2;
assign mul_ln49_fu_677_p1 = 15'd220;
assign mul_ln62_fu_541_p0 = mul_ln62_fu_541_p00;
assign mul_ln62_fu_541_p00 = empty_46_fu_532_p2;
assign mul_ln62_fu_541_p1 = 15'd220;
assign mul_ln75_fu_692_p0 = mul_ln75_fu_692_p00;
assign mul_ln75_fu_692_p00 = empty_80_fu_683_p2;
assign mul_ln75_fu_692_p1 = 15'd220;
assign mul_ln88_fu_556_p0 = mul_ln88_fu_556_p00;
assign mul_ln88_fu_556_p00 = empty_53_fu_547_p2;
assign mul_ln88_fu_556_p1 = 15'd220;
assign p_cast1102_fu_483_p1 = grp_fu_772_p3;
assign p_cast1103_fu_491_p1 = grp_fu_788_p4;
assign p_cast1104_fu_495_p1 = grp_fu_798_p4;
assign p_cast1105_fu_499_p1 = grp_fu_808_p4;
assign p_cast1106_fu_503_p1 = grp_fu_818_p4;
assign p_cast1107_fu_507_p1 = grp_fu_828_p4;
assign p_cast1108_fu_511_p1 = grp_fu_838_p4;
assign p_cast1109_fu_515_p1 = grp_fu_848_p4;
assign p_cast1110_fu_519_p1 = grp_fu_858_p4;
assign p_cast1111_fu_592_p1 = grp_fu_868_p4;
assign p_cast1112_fu_596_p1 = grp_fu_878_p4;
assign p_cast1113_fu_644_p1 = grp_fu_888_p4;
assign p_cast1114_fu_648_p1 = grp_fu_898_p4;
assign p_cast1115_fu_652_p1 = grp_fu_908_p4;
assign p_cast1116_fu_656_p1 = grp_fu_918_p4;
assign p_cast1117_fu_660_p1 = grp_fu_928_p4;
assign p_cast1118_fu_664_p1 = grp_fu_938_p4;
assign p_cast_fu_487_p1 = grp_fu_780_p3;
assign tmp_1_fu_457_p3 = {{lshr_ln_fu_447_p4}, {1'd1}};
assign v101_1_fu_767_p1 = reg_389;
assign v101_fu_640_p1 = v224_load_8_reg_1122;
assign v11_1_fu_728_p1 = v224_load_9_reg_1127;
assign v11_fu_600_p1 = reg_361;
assign v224_address0 = v224_address0_local;
assign v224_address1 = v224_address1_local;
assign v224_ce0 = v224_ce0_local;
assign v224_ce1 = v224_ce1_local;
assign v236_read = v236_read_local;
assign v24_1_fu_732_p1 = reg_361;
assign v24_fu_605_p1 = reg_365;
assign v35_1_fu_737_p1 = reg_365;
assign v35_fu_610_p1 = reg_369;
assign v46_1_fu_742_p1 = reg_369;
assign v46_fu_615_p1 = reg_373;
assign v57_1_fu_747_p1 = reg_373;
assign v57_fu_620_p1 = reg_377;
assign v68_1_fu_752_p1 = reg_377;
assign v68_fu_625_p1 = reg_381;
assign v79_1_fu_757_p1 = reg_381;
assign v79_fu_630_p1 = reg_385;
assign v90_1_fu_762_p1 = reg_385;
assign v90_fu_635_p1 = reg_389;
assign zext_ln31_fu_427_p1 = v5_fu_126;
always @ (posedge ap_clk) begin
    zext_ln31_reg_987[15:8] <= 8'b00000000;
end
endmodule 