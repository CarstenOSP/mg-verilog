module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_address0,v224_ce0,v224_q0,v224_address1,v224_ce1,v224_q1,v228_0_address0,v228_0_ce0,v228_0_q0,v228_0_address1,v228_0_ce1,v228_0_q1,v228_1_address0,v228_1_ce0,v228_1_q0,v228_1_address1,v228_1_ce1,v228_1_q1,v228_2_address0,v228_2_ce0,v228_2_q0,v228_2_address1,v228_2_ce1,v228_2_q1,v228_3_address0,v228_3_ce0,v228_3_q0,v228_3_address1,v228_3_ce1,v228_3_q1,v229_0_address0,v229_0_ce0,v229_0_we0,v229_0_d0,v229_0_q0,v229_0_address1,v229_0_ce1,v229_0_we1,v229_0_d1,v229_0_q1,v229_1_address0,v229_1_ce0,v229_1_we0,v229_1_d0,v229_1_q0,v229_1_address1,v229_1_ce1,v229_1_we1,v229_1_d1,v229_1_q1,v4,grp_fu_140_p_din0,grp_fu_140_p_din1,grp_fu_140_p_opcode,grp_fu_140_p_dout0,grp_fu_140_p_ce,grp_fu_144_p_din0,grp_fu_144_p_din1,grp_fu_144_p_dout0,grp_fu_144_p_ce,grp_fu_148_p_din0,grp_fu_148_p_din1,grp_fu_148_p_dout0,grp_fu_148_p_ce); 
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
output  [31:0] grp_fu_140_p_din0;
output  [31:0] grp_fu_140_p_din1;
output  [1:0] grp_fu_140_p_opcode;
input  [31:0] grp_fu_140_p_dout0;
output   grp_fu_140_p_ce;
output  [31:0] grp_fu_144_p_din0;
output  [31:0] grp_fu_144_p_din1;
input  [31:0] grp_fu_144_p_dout0;
output   grp_fu_144_p_ce;
output  [31:0] grp_fu_148_p_din0;
output  [31:0] grp_fu_148_p_din1;
input  [31:0] grp_fu_148_p_dout0;
output   grp_fu_148_p_ce;
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
reg   [31:0] reg_379;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state12;
reg   [31:0] reg_383;
reg   [31:0] reg_387;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state13;
reg   [31:0] reg_391;
reg   [31:0] reg_395;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state14;
reg   [31:0] reg_399;
reg   [31:0] reg_403;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state15;
reg   [31:0] reg_407;
wire   [7:0] add_ln31_fu_425_p2;
reg   [7:0] add_ln31_reg_988;
wire    ap_CS_fsm_state2;
wire   [15:0] zext_ln31_fu_431_p1;
reg   [15:0] zext_ln31_reg_993;
wire   [1:0] trunc_ln31_fu_435_p1;
reg   [1:0] trunc_ln31_reg_1015;
wire   [13:0] mul_ln38_fu_453_p2;
reg   [13:0] mul_ln38_reg_1021;
wire   [0:0] cmp11_fu_459_p2;
reg   [0:0] cmp11_reg_1027;
wire    ap_CS_fsm_state3;
wire   [6:0] lshr_ln1_fu_475_p4;
reg   [6:0] lshr_ln1_reg_1041;
wire   [7:0] add_ln32_1_fu_497_p2;
reg   [7:0] add_ln32_1_reg_1059;
wire    ap_CS_fsm_state6;
wire   [14:0] mul_ln34_fu_550_p2;
reg   [14:0] mul_ln34_reg_1114;
wire    ap_CS_fsm_state11;
wire   [14:0] mul_ln62_fu_565_p2;
reg   [14:0] mul_ln62_reg_1119;
wire   [14:0] mul_ln88_fu_580_p2;
reg   [14:0] mul_ln88_reg_1124;
wire   [14:0] mul_ln114_fu_595_p2;
reg   [14:0] mul_ln114_reg_1129;
wire   [14:0] mul_ln140_fu_610_p2;
reg   [14:0] mul_ln140_reg_1134;
reg   [31:0] v224_load_8_reg_1140;
reg   [31:0] v224_load_9_reg_1145;
wire   [31:0] v11_fu_624_p1;
reg   [31:0] v11_reg_1160;
wire   [31:0] v24_fu_629_p1;
reg   [31:0] v24_reg_1165;
wire   [31:0] v35_fu_634_p1;
reg   [31:0] v35_reg_1170;
wire   [31:0] v46_fu_639_p1;
reg   [31:0] v46_reg_1175;
wire   [31:0] v57_fu_644_p1;
reg   [31:0] v57_reg_1180;
wire   [31:0] v68_fu_649_p1;
reg   [31:0] v68_reg_1185;
wire   [31:0] v79_fu_654_p1;
reg   [31:0] v79_reg_1190;
wire   [31:0] v90_fu_659_p1;
reg   [31:0] v90_reg_1195;
wire   [31:0] v101_fu_664_p1;
reg   [31:0] v101_reg_1200;
wire   [14:0] mul_ln49_fu_701_p2;
reg   [14:0] mul_ln49_reg_1235;
wire   [14:0] mul_ln75_fu_716_p2;
reg   [14:0] mul_ln75_reg_1240;
wire   [14:0] mul_ln101_fu_731_p2;
reg   [14:0] mul_ln101_reg_1245;
wire   [14:0] mul_ln127_fu_746_p2;
reg   [14:0] mul_ln127_reg_1250;
wire   [31:0] v11_1_fu_752_p1;
reg   [31:0] v11_1_reg_1255;
wire    ap_CS_fsm_state16;
wire   [31:0] v24_1_fu_756_p1;
reg   [31:0] v24_1_reg_1260;
wire   [31:0] v35_1_fu_761_p1;
reg   [31:0] v35_1_reg_1265;
wire   [31:0] v46_1_fu_766_p1;
reg   [31:0] v46_1_reg_1270;
wire   [31:0] v57_1_fu_771_p1;
reg   [31:0] v57_1_reg_1275;
wire   [31:0] v68_1_fu_776_p1;
reg   [31:0] v68_1_reg_1280;
wire   [31:0] v79_1_fu_781_p1;
reg   [31:0] v79_1_reg_1285;
wire   [31:0] v90_1_fu_786_p1;
reg   [31:0] v90_1_reg_1290;
wire   [31:0] v101_1_fu_791_p1;
reg   [31:0] v101_1_reg_1295;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_311_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_311_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_311_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_311_ap_ready;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_0_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_0_d1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_1_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_1_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_0_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_0_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_1_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_1_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_2_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_2_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_3_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_3_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1300_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1300_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1300_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1300_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1304_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1304_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1304_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1304_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1308_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1308_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1308_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1312_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1312_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1312_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1316_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1316_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1316_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1320_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1320_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1320_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_345_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_345_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_345_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_345_ap_ready;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_0_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_0_d1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_1_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_1_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_0_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_0_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_1_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_1_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_2_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_2_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_3_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_3_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1300_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1300_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1300_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1300_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1304_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1304_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1304_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1304_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1308_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1308_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1308_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1312_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1312_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1312_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1316_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1316_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1316_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1320_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1320_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1320_p_ce;
reg   [7:0] v6_reg_299;
wire    ap_CS_fsm_state17;
wire   [0:0] icmp_ln31_fu_419_p2;
reg    grp_kernel_2mm_node0_Pipeline_label_2_fu_311_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_210_fu_345_ap_start_reg;
wire   [63:0] p_cast2639_fu_507_p1;
wire   [63:0] p_cast_fu_511_p1;
wire   [63:0] p_cast2640_fu_515_p1;
wire   [63:0] p_cast2641_fu_519_p1;
wire   [63:0] p_cast2642_fu_523_p1;
wire   [63:0] p_cast2643_fu_527_p1;
wire   [63:0] p_cast2644_fu_531_p1;
wire   [63:0] p_cast2645_fu_535_p1;
wire   [63:0] p_cast2646_fu_539_p1;
wire   [63:0] p_cast2647_fu_543_p1;
wire   [63:0] p_cast2648_fu_616_p1;
wire   [63:0] p_cast2649_fu_620_p1;
wire   [63:0] p_cast2650_fu_668_p1;
wire   [63:0] p_cast2651_fu_672_p1;
wire   [63:0] p_cast2652_fu_676_p1;
wire   [63:0] p_cast2653_fu_680_p1;
wire   [63:0] p_cast2654_fu_684_p1;
wire   [63:0] p_cast2655_fu_688_p1;
reg   [7:0] v5_fu_130;
wire   [0:0] icmp_ln32_fu_465_p2;
reg    ap_block_state1;
reg    v236_read_local;
reg    v224_ce1_local;
reg   [15:0] v224_address1_local;
reg    v224_ce0_local;
reg   [15:0] v224_address0_local;
wire   [5:0] lshr_ln_fu_439_p4;
wire   [5:0] mul_ln38_fu_453_p0;
wire   [8:0] mul_ln38_fu_453_p1;
wire   [7:0] tmp_s_fu_485_p3;
wire   [15:0] grp_fu_796_p3;
wire   [15:0] grp_fu_804_p3;
wire   [15:0] grp_fu_812_p4;
wire   [15:0] grp_fu_822_p4;
wire   [15:0] grp_fu_832_p4;
wire   [15:0] grp_fu_842_p4;
wire   [15:0] grp_fu_852_p4;
wire   [15:0] grp_fu_862_p4;
wire   [15:0] grp_fu_872_p4;
wire   [15:0] grp_fu_882_p4;
wire   [6:0] mul_ln34_fu_550_p0;
wire   [8:0] mul_ln34_fu_550_p1;
wire   [6:0] empty_222_fu_556_p2;
wire   [6:0] mul_ln62_fu_565_p0;
wire   [8:0] mul_ln62_fu_565_p1;
wire   [6:0] empty_229_fu_571_p2;
wire   [6:0] mul_ln88_fu_580_p0;
wire   [8:0] mul_ln88_fu_580_p1;
wire   [6:0] empty_236_fu_586_p2;
wire   [6:0] mul_ln114_fu_595_p0;
wire   [8:0] mul_ln114_fu_595_p1;
wire   [6:0] empty_243_fu_601_p2;
wire   [6:0] mul_ln140_fu_610_p0;
wire   [8:0] mul_ln140_fu_610_p1;
wire   [15:0] grp_fu_892_p4;
wire   [15:0] grp_fu_902_p4;
wire   [15:0] grp_fu_912_p4;
wire   [15:0] grp_fu_922_p4;
wire   [15:0] grp_fu_932_p4;
wire   [15:0] grp_fu_942_p4;
wire   [15:0] grp_fu_952_p4;
wire   [15:0] grp_fu_962_p4;
wire   [6:0] empty_249_fu_692_p2;
wire   [6:0] mul_ln49_fu_701_p0;
wire   [8:0] mul_ln49_fu_701_p1;
wire   [6:0] empty_256_fu_707_p2;
wire   [6:0] mul_ln75_fu_716_p0;
wire   [8:0] mul_ln75_fu_716_p1;
wire   [6:0] empty_263_fu_722_p2;
wire   [6:0] mul_ln101_fu_731_p0;
wire   [8:0] mul_ln101_fu_731_p1;
wire   [6:0] empty_270_fu_737_p2;
wire   [6:0] mul_ln127_fu_746_p0;
wire   [8:0] mul_ln127_fu_746_p1;
wire   [7:0] grp_fu_796_p0;
wire   [7:0] grp_fu_796_p1;
wire   [7:0] grp_fu_796_p2;
wire    ap_CS_fsm_state5;
wire   [7:0] grp_fu_804_p0;
wire   [7:0] grp_fu_804_p1;
wire   [7:0] grp_fu_804_p2;
wire   [1:0] grp_fu_812_p1;
wire   [7:0] grp_fu_812_p2;
wire   [7:0] grp_fu_812_p3;
wire    ap_CS_fsm_state4;
wire   [1:0] grp_fu_822_p1;
wire   [7:0] grp_fu_822_p2;
wire   [7:0] grp_fu_822_p3;
wire   [2:0] grp_fu_832_p1;
wire   [7:0] grp_fu_832_p2;
wire   [7:0] grp_fu_832_p3;
wire   [2:0] grp_fu_842_p1;
wire   [7:0] grp_fu_842_p2;
wire   [7:0] grp_fu_842_p3;
wire   [2:0] grp_fu_852_p1;
wire   [7:0] grp_fu_852_p2;
wire   [7:0] grp_fu_852_p3;
wire   [2:0] grp_fu_862_p1;
wire   [7:0] grp_fu_862_p2;
wire   [7:0] grp_fu_862_p3;
wire   [3:0] grp_fu_872_p1;
wire   [7:0] grp_fu_872_p2;
wire   [7:0] grp_fu_872_p3;
wire   [3:0] grp_fu_882_p1;
wire   [7:0] grp_fu_882_p2;
wire   [7:0] grp_fu_882_p3;
wire   [3:0] grp_fu_892_p1;
wire   [7:0] grp_fu_892_p2;
wire   [7:0] grp_fu_892_p3;
wire   [3:0] grp_fu_902_p1;
wire   [7:0] grp_fu_902_p2;
wire   [7:0] grp_fu_902_p3;
wire   [3:0] grp_fu_912_p1;
wire   [7:0] grp_fu_912_p2;
wire   [7:0] grp_fu_912_p3;
wire   [3:0] grp_fu_922_p1;
wire   [7:0] grp_fu_922_p2;
wire   [7:0] grp_fu_922_p3;
wire   [3:0] grp_fu_932_p1;
wire   [7:0] grp_fu_932_p2;
wire   [7:0] grp_fu_932_p3;
wire   [3:0] grp_fu_942_p1;
wire   [7:0] grp_fu_942_p2;
wire   [7:0] grp_fu_942_p3;
wire   [4:0] grp_fu_952_p1;
wire   [7:0] grp_fu_952_p2;
wire   [7:0] grp_fu_952_p3;
wire   [4:0] grp_fu_962_p1;
wire   [7:0] grp_fu_962_p2;
wire   [7:0] grp_fu_962_p3;
reg    grp_fu_932_ce;
reg    grp_fu_942_ce;
reg    grp_fu_952_ce;
reg    grp_fu_962_ce;
reg   [31:0] grp_fu_1300_p0;
reg   [31:0] grp_fu_1300_p1;
reg    grp_fu_1300_ce;
wire   [31:0] grp_fu_1304_p2;
reg   [31:0] grp_fu_1304_p0;
reg   [31:0] grp_fu_1304_p1;
reg    grp_fu_1304_ce;
reg   [31:0] grp_fu_1308_p0;
reg   [31:0] grp_fu_1308_p1;
reg    grp_fu_1308_ce;
reg   [31:0] grp_fu_1312_p0;
reg   [31:0] grp_fu_1312_p1;
reg    grp_fu_1312_ce;
wire   [31:0] grp_fu_1316_p2;
reg   [31:0] grp_fu_1316_p0;
reg   [31:0] grp_fu_1316_p1;
reg    grp_fu_1316_ce;
wire   [31:0] grp_fu_1320_p2;
reg   [31:0] grp_fu_1320_p0;
reg   [31:0] grp_fu_1320_p1;
reg    grp_fu_1320_ce;
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
wire   [15:0] grp_fu_796_p00;
wire   [15:0] grp_fu_804_p00;
wire   [14:0] mul_ln101_fu_731_p00;
wire   [14:0] mul_ln114_fu_595_p00;
wire   [14:0] mul_ln127_fu_746_p00;
wire   [14:0] mul_ln140_fu_610_p00;
wire   [14:0] mul_ln34_fu_550_p00;
wire   [13:0] mul_ln38_fu_453_p00;
wire   [14:0] mul_ln49_fu_701_p00;
wire   [14:0] mul_ln62_fu_565_p00;
wire   [14:0] mul_ln75_fu_716_p00;
wire   [14:0] mul_ln88_fu_580_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_2_fu_311_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_210_fu_345_ap_start_reg = 1'b0;
#0 v5_fu_130 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_2 grp_kernel_2mm_node0_Pipeline_label_2_fu_311(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_ap_ready),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_0_d1),.v229_0_q1(v229_0_q1),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_1_d1),.v229_1_q1(v229_1_q1),.mul_ln38(mul_ln38_reg_1021),.v228_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_0_ce1),.v228_0_q1(v228_0_q1),.v228_1_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_1_ce1),.v228_1_q1(v228_1_q1),.v228_2_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_2_address0),.v228_2_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_2_ce0),.v228_2_q0(v228_2_q0),.v228_2_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_2_address1),.v228_2_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_2_ce1),.v228_2_q1(v228_2_q1),.v228_3_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_3_address0),.v228_3_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_3_ce0),.v228_3_q0(v228_3_q0),.v228_3_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_3_address1),.v228_3_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_3_ce1),.v228_3_q1(v228_3_q1),.mul_ln34(mul_ln34_reg_1114),.mul_ln62(mul_ln62_reg_1119),.mul_ln88(mul_ln88_reg_1124),.mul_ln114(mul_ln114_reg_1129),.mul_ln140(mul_ln140_reg_1134),.v4(v4),.cmp11(cmp11_reg_1027),.empty(trunc_ln31_reg_1015),.v11(v11_reg_1160),.v24(v24_reg_1165),.v35(v35_reg_1170),.v46(v46_reg_1175),.v57(v57_reg_1180),.v68(v68_reg_1185),.v79(v79_reg_1190),.v90(v90_reg_1195),.v101(v101_reg_1200),.grp_fu_1300_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1300_p_din0),.grp_fu_1300_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1300_p_din1),.grp_fu_1300_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1300_p_opcode),.grp_fu_1300_p_dout0(grp_fu_140_p_dout0),.grp_fu_1300_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1300_p_ce),.grp_fu_1304_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1304_p_din0),.grp_fu_1304_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1304_p_din1),.grp_fu_1304_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1304_p_opcode),.grp_fu_1304_p_dout0(grp_fu_1304_p2),.grp_fu_1304_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1304_p_ce),.grp_fu_1308_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1308_p_din0),.grp_fu_1308_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1308_p_din1),.grp_fu_1308_p_dout0(grp_fu_144_p_dout0),.grp_fu_1308_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1308_p_ce),.grp_fu_1312_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1312_p_din0),.grp_fu_1312_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1312_p_din1),.grp_fu_1312_p_dout0(grp_fu_148_p_dout0),.grp_fu_1312_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1312_p_ce),.grp_fu_1316_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1316_p_din0),.grp_fu_1316_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1316_p_din1),.grp_fu_1316_p_dout0(grp_fu_1316_p2),.grp_fu_1316_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1316_p_ce),.grp_fu_1320_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1320_p_din0),.grp_fu_1320_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1320_p_din1),.grp_fu_1320_p_dout0(grp_fu_1320_p2),.grp_fu_1320_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1320_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_210 grp_kernel_2mm_node0_Pipeline_label_210_fu_345(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_ap_ready),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_0_d1),.v229_0_q1(v229_0_q1),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_1_d1),.v229_1_q1(v229_1_q1),.mul_ln38(mul_ln38_reg_1021),.v228_0_address0(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_0_ce1),.v228_0_q1(v228_0_q1),.v228_1_address0(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_1_ce1),.v228_1_q1(v228_1_q1),.v228_2_address0(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_2_address0),.v228_2_ce0(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_2_ce0),.v228_2_q0(v228_2_q0),.v228_2_address1(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_2_address1),.v228_2_ce1(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_2_ce1),.v228_2_q1(v228_2_q1),.v228_3_address0(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_3_address0),.v228_3_ce0(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_3_ce0),.v228_3_q0(v228_3_q0),.v228_3_address1(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_3_address1),.v228_3_ce1(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_3_ce1),.v228_3_q1(v228_3_q1),.mul_ln49(mul_ln49_reg_1235),.mul_ln75(mul_ln75_reg_1240),.mul_ln101(mul_ln101_reg_1245),.mul_ln127(mul_ln127_reg_1250),.mul_ln140(mul_ln140_reg_1134),.v4(v4),.cmp11(cmp11_reg_1027),.empty(trunc_ln31_reg_1015),.v11_1(v11_1_reg_1255),.v24_1(v24_1_reg_1260),.v35_1(v35_1_reg_1265),.v46_1(v46_1_reg_1270),.v57_1(v57_1_reg_1275),.v68_1(v68_1_reg_1280),.v79_1(v79_1_reg_1285),.v90_1(v90_1_reg_1290),.v101_1(v101_1_reg_1295),.grp_fu_1300_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1300_p_din0),.grp_fu_1300_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1300_p_din1),.grp_fu_1300_p_opcode(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1300_p_opcode),.grp_fu_1300_p_dout0(grp_fu_140_p_dout0),.grp_fu_1300_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1300_p_ce),.grp_fu_1304_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1304_p_din0),.grp_fu_1304_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1304_p_din1),.grp_fu_1304_p_opcode(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1304_p_opcode),.grp_fu_1304_p_dout0(grp_fu_1304_p2),.grp_fu_1304_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1304_p_ce),.grp_fu_1308_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1308_p_din0),.grp_fu_1308_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1308_p_din1),.grp_fu_1308_p_dout0(grp_fu_144_p_dout0),.grp_fu_1308_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1308_p_ce),.grp_fu_1312_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1312_p_din0),.grp_fu_1312_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1312_p_din1),.grp_fu_1312_p_dout0(grp_fu_148_p_dout0),.grp_fu_1312_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1312_p_ce),.grp_fu_1316_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1316_p_din0),.grp_fu_1316_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1316_p_din1),.grp_fu_1316_p_dout0(grp_fu_1316_p2),.grp_fu_1316_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1316_p_ce),.grp_fu_1320_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1320_p_din0),.grp_fu_1320_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1320_p_din1),.grp_fu_1320_p_dout0(grp_fu_1320_p2),.grp_fu_1320_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1320_p_ce));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U331(.din0(mul_ln38_fu_453_p0),.din1(mul_ln38_fu_453_p1),.dout(mul_ln38_fu_453_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U332(.din0(mul_ln34_fu_550_p0),.din1(mul_ln34_fu_550_p1),.dout(mul_ln34_fu_550_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U333(.din0(mul_ln62_fu_565_p0),.din1(mul_ln62_fu_565_p1),.dout(mul_ln62_fu_565_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U334(.din0(mul_ln88_fu_580_p0),.din1(mul_ln88_fu_580_p1),.dout(mul_ln88_fu_580_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U335(.din0(mul_ln114_fu_595_p0),.din1(mul_ln114_fu_595_p1),.dout(mul_ln114_fu_595_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U336(.din0(mul_ln140_fu_610_p0),.din1(mul_ln140_fu_610_p1),.dout(mul_ln140_fu_610_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U337(.din0(mul_ln49_fu_701_p0),.din1(mul_ln49_fu_701_p1),.dout(mul_ln49_fu_701_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U338(.din0(mul_ln75_fu_716_p0),.din1(mul_ln75_fu_716_p1),.dout(mul_ln75_fu_716_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U339(.din0(mul_ln101_fu_731_p0),.din1(mul_ln101_fu_731_p1),.dout(mul_ln101_fu_731_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U340(.din0(mul_ln127_fu_746_p0),.din1(mul_ln127_fu_746_p1),.dout(mul_ln127_fu_746_p2));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U341(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_796_p0),.din1(grp_fu_796_p1),.din2(grp_fu_796_p2),.ce(1'b1),.dout(grp_fu_796_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U342(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_804_p0),.din1(grp_fu_804_p1),.din2(grp_fu_804_p2),.ce(1'b1),.dout(grp_fu_804_p3));
kernel_2mm_ama_addmuladd_8ns_2ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 2 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_2ns_8ns_8ns_16_4_1_U343(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_299),.din1(grp_fu_812_p1),.din2(grp_fu_812_p2),.din3(grp_fu_812_p3),.ce(1'b1),.dout(grp_fu_812_p4));
kernel_2mm_ama_addmuladd_8ns_2ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 2 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_2ns_8ns_8ns_16_4_1_U344(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_299),.din1(grp_fu_822_p1),.din2(grp_fu_822_p2),.din3(grp_fu_822_p3),.ce(1'b1),.dout(grp_fu_822_p4));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U345(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_299),.din1(grp_fu_832_p1),.din2(grp_fu_832_p2),.din3(grp_fu_832_p3),.ce(1'b1),.dout(grp_fu_832_p4));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U346(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_299),.din1(grp_fu_842_p1),.din2(grp_fu_842_p2),.din3(grp_fu_842_p3),.ce(1'b1),.dout(grp_fu_842_p4));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U347(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_299),.din1(grp_fu_852_p1),.din2(grp_fu_852_p2),.din3(grp_fu_852_p3),.ce(1'b1),.dout(grp_fu_852_p4));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U348(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_299),.din1(grp_fu_862_p1),.din2(grp_fu_862_p2),.din3(grp_fu_862_p3),.ce(1'b1),.dout(grp_fu_862_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U349(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_299),.din1(grp_fu_872_p1),.din2(grp_fu_872_p2),.din3(grp_fu_872_p3),.ce(1'b1),.dout(grp_fu_872_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U350(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_299),.din1(grp_fu_882_p1),.din2(grp_fu_882_p2),.din3(grp_fu_882_p3),.ce(1'b1),.dout(grp_fu_882_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U351(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_299),.din1(grp_fu_892_p1),.din2(grp_fu_892_p2),.din3(grp_fu_892_p3),.ce(1'b1),.dout(grp_fu_892_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U352(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_299),.din1(grp_fu_902_p1),.din2(grp_fu_902_p2),.din3(grp_fu_902_p3),.ce(1'b1),.dout(grp_fu_902_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U353(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_299),.din1(grp_fu_912_p1),.din2(grp_fu_912_p2),.din3(grp_fu_912_p3),.ce(1'b1),.dout(grp_fu_912_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U354(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_299),.din1(grp_fu_922_p1),.din2(grp_fu_922_p2),.din3(grp_fu_922_p3),.ce(1'b1),.dout(grp_fu_922_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U355(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_299),.din1(grp_fu_932_p1),.din2(grp_fu_932_p2),.din3(grp_fu_932_p3),.ce(grp_fu_932_ce),.dout(grp_fu_932_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U356(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_299),.din1(grp_fu_942_p1),.din2(grp_fu_942_p2),.din3(grp_fu_942_p3),.ce(grp_fu_942_ce),.dout(grp_fu_942_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U357(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_299),.din1(grp_fu_952_p1),.din2(grp_fu_952_p2),.din3(grp_fu_952_p3),.ce(grp_fu_952_ce),.dout(grp_fu_952_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U358(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_299),.din1(grp_fu_962_p1),.din2(grp_fu_962_p2),.din3(grp_fu_962_p3),.ce(grp_fu_962_ce),.dout(grp_fu_962_p4));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U360(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1304_p0),.din1(grp_fu_1304_p1),.ce(grp_fu_1304_ce),.dout(grp_fu_1304_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U363(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1316_p0),.din1(grp_fu_1316_p1),.ce(grp_fu_1316_ce),.dout(grp_fu_1316_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U364(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1320_p0),.din1(grp_fu_1320_p1),.ce(grp_fu_1320_ce),.dout(grp_fu_1320_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_210_fu_345_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node0_Pipeline_label_210_fu_345_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_210_fu_345_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_210_fu_345_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_2_fu_311_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_311_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_311_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_311_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_130 <= 8'd0;
    end else if (((icmp_ln32_fu_465_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v5_fu_130 <= add_ln31_reg_988;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln31_fu_419_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v6_reg_299 <= 8'd0;
    end else if (((grp_kernel_2mm_node0_Pipeline_label_210_fu_345_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        v6_reg_299 <= add_ln32_1_reg_1059;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln31_reg_988 <= add_ln31_fu_425_p2;
        cmp11_reg_1027 <= cmp11_fu_459_p2;
        mul_ln38_reg_1021 <= mul_ln38_fu_453_p2;
        trunc_ln31_reg_1015 <= trunc_ln31_fu_435_p1;
        zext_ln31_reg_993[7 : 0] <= zext_ln31_fu_431_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_1_reg_1059 <= add_ln32_1_fu_497_p2;
        lshr_ln1_reg_1041 <= {{v6_reg_299[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln101_reg_1245 <= mul_ln101_fu_731_p2;
        mul_ln127_reg_1250 <= mul_ln127_fu_746_p2;
        mul_ln49_reg_1235 <= mul_ln49_fu_701_p2;
        mul_ln75_reg_1240 <= mul_ln75_fu_716_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        mul_ln114_reg_1129 <= mul_ln114_fu_595_p2;
        mul_ln140_reg_1134 <= mul_ln140_fu_610_p2;
        mul_ln34_reg_1114 <= mul_ln34_fu_550_p2;
        mul_ln62_reg_1119 <= mul_ln62_fu_565_p2;
        mul_ln88_reg_1124 <= mul_ln88_fu_580_p2;
        v224_load_8_reg_1140 <= v224_q1;
        v224_load_9_reg_1145 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7))) begin
        reg_379 <= v224_q1;
        reg_383 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_387 <= v224_q1;
        reg_391 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9))) begin
        reg_395 <= v224_q1;
        reg_399 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10))) begin
        reg_403 <= v224_q1;
        reg_407 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        v101_1_reg_1295 <= v101_1_fu_791_p1;
        v11_1_reg_1255 <= v11_1_fu_752_p1;
        v24_1_reg_1260 <= v24_1_fu_756_p1;
        v35_1_reg_1265 <= v35_1_fu_761_p1;
        v46_1_reg_1270 <= v46_1_fu_766_p1;
        v57_1_reg_1275 <= v57_1_fu_771_p1;
        v68_1_reg_1280 <= v68_1_fu_776_p1;
        v79_1_reg_1285 <= v79_1_fu_781_p1;
        v90_1_reg_1290 <= v90_1_fu_786_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        v101_reg_1200 <= v101_fu_664_p1;
        v11_reg_1160 <= v11_fu_624_p1;
        v24_reg_1165 <= v24_fu_629_p1;
        v35_reg_1170 <= v35_fu_634_p1;
        v46_reg_1175 <= v46_fu_639_p1;
        v57_reg_1180 <= v57_fu_644_p1;
        v68_reg_1185 <= v68_fu_649_p1;
        v79_reg_1190 <= v79_fu_654_p1;
        v90_reg_1195 <= v90_fu_659_p1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_311_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
    end
end
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_210_fu_345_ap_done == 1'b0)) begin
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
    if ((((icmp_ln31_fu_419_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((icmp_ln31_fu_419_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1300_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1300_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1300_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1300_p_ce;
    end else begin
        grp_fu_1300_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1300_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1300_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1300_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1300_p_din0;
    end else begin
        grp_fu_1300_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1300_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1300_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1300_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1300_p_din1;
    end else begin
        grp_fu_1300_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1304_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1304_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1304_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1304_p_ce;
    end else begin
        grp_fu_1304_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1304_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1304_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1304_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1304_p_din0;
    end else begin
        grp_fu_1304_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1304_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1304_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1304_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1304_p_din1;
    end else begin
        grp_fu_1304_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1308_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1308_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1308_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1308_p_ce;
    end else begin
        grp_fu_1308_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1308_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1308_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1308_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1308_p_din0;
    end else begin
        grp_fu_1308_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1308_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1308_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1308_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1308_p_din1;
    end else begin
        grp_fu_1308_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1312_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1312_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1312_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1312_p_ce;
    end else begin
        grp_fu_1312_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1312_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1312_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1312_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1312_p_din0;
    end else begin
        grp_fu_1312_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1312_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1312_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1312_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1312_p_din1;
    end else begin
        grp_fu_1312_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1316_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1316_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1316_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1316_p_ce;
    end else begin
        grp_fu_1316_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1316_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1316_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1316_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1316_p_din0;
    end else begin
        grp_fu_1316_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1316_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1316_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1316_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1316_p_din1;
    end else begin
        grp_fu_1316_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1320_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1320_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1320_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1320_p_ce;
    end else begin
        grp_fu_1320_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1320_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1320_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1320_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1320_p_din0;
    end else begin
        grp_fu_1320_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1320_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_grp_fu_1320_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1320_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_grp_fu_1320_p_din1;
    end else begin
        grp_fu_1320_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_311_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_932_ce = 1'b1;
    end else begin
        grp_fu_932_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_311_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_942_ce = 1'b1;
    end else begin
        grp_fu_942_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_311_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_952_ce = 1'b1;
    end else begin
        grp_fu_952_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_311_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_962_ce = 1'b1;
    end else begin
        grp_fu_962_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_address0_local = p_cast2655_fu_688_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_address0_local = p_cast2653_fu_680_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_address0_local = p_cast2651_fu_672_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_address0_local = p_cast2649_fu_620_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address0_local = p_cast2647_fu_543_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address0_local = p_cast2645_fu_535_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address0_local = p_cast2643_fu_527_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address0_local = p_cast2641_fu_519_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_address0_local = p_cast_fu_511_p1;
    end else begin
        v224_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_address1_local = p_cast2654_fu_684_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_address1_local = p_cast2652_fu_676_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_address1_local = p_cast2650_fu_668_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_address1_local = p_cast2648_fu_616_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address1_local = p_cast2646_fu_539_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address1_local = p_cast2644_fu_531_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address1_local = p_cast2642_fu_523_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address1_local = p_cast2640_fu_515_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_address1_local = p_cast2639_fu_507_p1;
    end else begin
        v224_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_311_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        v224_ce0_local = 1'b1;
    end else begin
        v224_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_311_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        v224_ce1_local = 1'b1;
    end else begin
        v224_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_0_address0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_0_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_0_address0;
    end else begin
        v228_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_0_address1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_0_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_0_address1;
    end else begin
        v228_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_0_ce0;
    end else begin
        v228_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_0_ce1;
    end else begin
        v228_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_1_address0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_1_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_1_address0;
    end else begin
        v228_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_1_address1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_1_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_1_address1;
    end else begin
        v228_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_1_ce0;
    end else begin
        v228_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_1_ce1;
    end else begin
        v228_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_2_address0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_2_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_2_address0;
    end else begin
        v228_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_2_address1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_2_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_2_address1;
    end else begin
        v228_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_2_ce0;
    end else begin
        v228_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_2_ce1;
    end else begin
        v228_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_3_address0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_3_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_3_address0;
    end else begin
        v228_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_3_address1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_3_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_3_address1;
    end else begin
        v228_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_3_ce0;
    end else begin
        v228_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v228_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v228_3_ce1;
    end else begin
        v228_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_0_address0;
    end else begin
        v229_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_0_address1;
    end else begin
        v229_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_0_ce0;
    end else begin
        v229_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_0_ce1;
    end else begin
        v229_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_0_d0;
    end else begin
        v229_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_0_d1;
    end else begin
        v229_0_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_0_we0;
    end else begin
        v229_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_0_we1;
    end else begin
        v229_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_1_address0;
    end else begin
        v229_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_1_address1;
    end else begin
        v229_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_1_ce0;
    end else begin
        v229_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_1_ce1;
    end else begin
        v229_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_1_d0;
    end else begin
        v229_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_1_d1;
    end else begin
        v229_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_1_we0;
    end else begin
        v229_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_v229_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_v229_1_we1;
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
            if (((icmp_ln31_fu_419_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln32_fu_465_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_311_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_210_fu_345_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
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
assign add_ln31_fu_425_p2 = (v5_fu_130 + 8'd1);
assign add_ln32_1_fu_497_p2 = (v6_reg_299 + 8'd18);
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
assign cmp11_fu_459_p2 = ((v5_fu_130 == 8'd0) ? 1'b1 : 1'b0);
assign empty_222_fu_556_p2 = (lshr_ln1_reg_1041 + 7'd1);
assign empty_229_fu_571_p2 = (lshr_ln1_reg_1041 + 7'd2);
assign empty_236_fu_586_p2 = (lshr_ln1_reg_1041 + 7'd3);
assign empty_243_fu_601_p2 = (lshr_ln1_reg_1041 + 7'd4);
assign empty_249_fu_692_p2 = (lshr_ln1_reg_1041 + 7'd5);
assign empty_256_fu_707_p2 = (lshr_ln1_reg_1041 + 7'd6);
assign empty_263_fu_722_p2 = (lshr_ln1_reg_1041 + 7'd7);
assign empty_270_fu_737_p2 = (lshr_ln1_reg_1041 + 7'd8);
assign grp_fu_140_p_ce = grp_fu_1300_ce;
assign grp_fu_140_p_din0 = grp_fu_1300_p0;
assign grp_fu_140_p_din1 = grp_fu_1300_p1;
assign grp_fu_140_p_opcode = 2'd0;
assign grp_fu_144_p_ce = grp_fu_1308_ce;
assign grp_fu_144_p_din0 = grp_fu_1308_p0;
assign grp_fu_144_p_din1 = grp_fu_1308_p1;
assign grp_fu_148_p_ce = grp_fu_1312_ce;
assign grp_fu_148_p_din0 = grp_fu_1312_p0;
assign grp_fu_148_p_din1 = grp_fu_1312_p1;
assign grp_fu_796_p0 = grp_fu_796_p00;
assign grp_fu_796_p00 = v6_reg_299;
assign grp_fu_796_p1 = 16'd190;
assign grp_fu_796_p2 = zext_ln31_reg_993;
assign grp_fu_804_p0 = grp_fu_804_p00;
assign grp_fu_804_p00 = tmp_s_fu_485_p3;
assign grp_fu_804_p1 = 16'd190;
assign grp_fu_804_p2 = zext_ln31_reg_993;
assign grp_fu_812_p1 = 8'd2;
assign grp_fu_812_p2 = 16'd190;
assign grp_fu_812_p3 = zext_ln31_reg_993;
assign grp_fu_822_p1 = 8'd3;
assign grp_fu_822_p2 = 16'd190;
assign grp_fu_822_p3 = zext_ln31_reg_993;
assign grp_fu_832_p1 = 8'd4;
assign grp_fu_832_p2 = 16'd190;
assign grp_fu_832_p3 = zext_ln31_reg_993;
assign grp_fu_842_p1 = 8'd5;
assign grp_fu_842_p2 = 16'd190;
assign grp_fu_842_p3 = zext_ln31_reg_993;
assign grp_fu_852_p1 = 8'd6;
assign grp_fu_852_p2 = 16'd190;
assign grp_fu_852_p3 = zext_ln31_reg_993;
assign grp_fu_862_p1 = 8'd7;
assign grp_fu_862_p2 = 16'd190;
assign grp_fu_862_p3 = zext_ln31_reg_993;
assign grp_fu_872_p1 = 8'd8;
assign grp_fu_872_p2 = 16'd190;
assign grp_fu_872_p3 = zext_ln31_reg_993;
assign grp_fu_882_p1 = 8'd9;
assign grp_fu_882_p2 = 16'd190;
assign grp_fu_882_p3 = zext_ln31_reg_993;
assign grp_fu_892_p1 = 8'd10;
assign grp_fu_892_p2 = 16'd190;
assign grp_fu_892_p3 = zext_ln31_reg_993;
assign grp_fu_902_p1 = 8'd11;
assign grp_fu_902_p2 = 16'd190;
assign grp_fu_902_p3 = zext_ln31_reg_993;
assign grp_fu_912_p1 = 8'd12;
assign grp_fu_912_p2 = 16'd190;
assign grp_fu_912_p3 = zext_ln31_reg_993;
assign grp_fu_922_p1 = 8'd13;
assign grp_fu_922_p2 = 16'd190;
assign grp_fu_922_p3 = zext_ln31_reg_993;
assign grp_fu_932_p1 = 8'd14;
assign grp_fu_932_p2 = 16'd190;
assign grp_fu_932_p3 = zext_ln31_reg_993;
assign grp_fu_942_p1 = 8'd15;
assign grp_fu_942_p2 = 16'd190;
assign grp_fu_942_p3 = zext_ln31_reg_993;
assign grp_fu_952_p1 = 8'd16;
assign grp_fu_952_p2 = 16'd190;
assign grp_fu_952_p3 = zext_ln31_reg_993;
assign grp_fu_962_p1 = 8'd17;
assign grp_fu_962_p2 = 16'd190;
assign grp_fu_962_p3 = zext_ln31_reg_993;
assign grp_kernel_2mm_node0_Pipeline_label_210_fu_345_ap_start = grp_kernel_2mm_node0_Pipeline_label_210_fu_345_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_2_fu_311_ap_start = grp_kernel_2mm_node0_Pipeline_label_2_fu_311_ap_start_reg;
assign icmp_ln31_fu_419_p2 = ((v5_fu_130 == 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_465_p2 = ((v6_reg_299 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_475_p4 = {{v6_reg_299[7:1]}};
assign lshr_ln_fu_439_p4 = {{v5_fu_130[7:2]}};
assign mul_ln101_fu_731_p0 = mul_ln101_fu_731_p00;
assign mul_ln101_fu_731_p00 = empty_263_fu_722_p2;
assign mul_ln101_fu_731_p1 = 15'd220;
assign mul_ln114_fu_595_p0 = mul_ln114_fu_595_p00;
assign mul_ln114_fu_595_p00 = empty_236_fu_586_p2;
assign mul_ln114_fu_595_p1 = 15'd220;
assign mul_ln127_fu_746_p0 = mul_ln127_fu_746_p00;
assign mul_ln127_fu_746_p00 = empty_270_fu_737_p2;
assign mul_ln127_fu_746_p1 = 15'd220;
assign mul_ln140_fu_610_p0 = mul_ln140_fu_610_p00;
assign mul_ln140_fu_610_p00 = empty_243_fu_601_p2;
assign mul_ln140_fu_610_p1 = 15'd220;
assign mul_ln34_fu_550_p0 = mul_ln34_fu_550_p00;
assign mul_ln34_fu_550_p00 = lshr_ln1_reg_1041;
assign mul_ln34_fu_550_p1 = 15'd220;
assign mul_ln38_fu_453_p0 = mul_ln38_fu_453_p00;
assign mul_ln38_fu_453_p00 = lshr_ln_fu_439_p4;
assign mul_ln38_fu_453_p1 = 14'd220;
assign mul_ln49_fu_701_p0 = mul_ln49_fu_701_p00;
assign mul_ln49_fu_701_p00 = empty_249_fu_692_p2;
assign mul_ln49_fu_701_p1 = 15'd220;
assign mul_ln62_fu_565_p0 = mul_ln62_fu_565_p00;
assign mul_ln62_fu_565_p00 = empty_222_fu_556_p2;
assign mul_ln62_fu_565_p1 = 15'd220;
assign mul_ln75_fu_716_p0 = mul_ln75_fu_716_p00;
assign mul_ln75_fu_716_p00 = empty_256_fu_707_p2;
assign mul_ln75_fu_716_p1 = 15'd220;
assign mul_ln88_fu_580_p0 = mul_ln88_fu_580_p00;
assign mul_ln88_fu_580_p00 = empty_229_fu_571_p2;
assign mul_ln88_fu_580_p1 = 15'd220;
assign p_cast2639_fu_507_p1 = grp_fu_796_p3;
assign p_cast2640_fu_515_p1 = grp_fu_812_p4;
assign p_cast2641_fu_519_p1 = grp_fu_822_p4;
assign p_cast2642_fu_523_p1 = grp_fu_832_p4;
assign p_cast2643_fu_527_p1 = grp_fu_842_p4;
assign p_cast2644_fu_531_p1 = grp_fu_852_p4;
assign p_cast2645_fu_535_p1 = grp_fu_862_p4;
assign p_cast2646_fu_539_p1 = grp_fu_872_p4;
assign p_cast2647_fu_543_p1 = grp_fu_882_p4;
assign p_cast2648_fu_616_p1 = grp_fu_892_p4;
assign p_cast2649_fu_620_p1 = grp_fu_902_p4;
assign p_cast2650_fu_668_p1 = grp_fu_912_p4;
assign p_cast2651_fu_672_p1 = grp_fu_922_p4;
assign p_cast2652_fu_676_p1 = grp_fu_932_p4;
assign p_cast2653_fu_680_p1 = grp_fu_942_p4;
assign p_cast2654_fu_684_p1 = grp_fu_952_p4;
assign p_cast2655_fu_688_p1 = grp_fu_962_p4;
assign p_cast_fu_511_p1 = grp_fu_804_p3;
assign tmp_s_fu_485_p3 = {{lshr_ln1_fu_475_p4}, {1'd1}};
assign trunc_ln31_fu_435_p1 = v5_fu_130[1:0];
assign v101_1_fu_791_p1 = reg_407;
assign v101_fu_664_p1 = v224_load_8_reg_1140;
assign v11_1_fu_752_p1 = v224_load_9_reg_1145;
assign v11_fu_624_p1 = reg_379;
assign v224_address0 = v224_address0_local;
assign v224_address1 = v224_address1_local;
assign v224_ce0 = v224_ce0_local;
assign v224_ce1 = v224_ce1_local;
assign v236_read = v236_read_local;
assign v24_1_fu_756_p1 = reg_379;
assign v24_fu_629_p1 = reg_383;
assign v35_1_fu_761_p1 = reg_383;
assign v35_fu_634_p1 = reg_387;
assign v46_1_fu_766_p1 = reg_387;
assign v46_fu_639_p1 = reg_391;
assign v57_1_fu_771_p1 = reg_391;
assign v57_fu_644_p1 = reg_395;
assign v68_1_fu_776_p1 = reg_395;
assign v68_fu_649_p1 = reg_399;
assign v79_1_fu_781_p1 = reg_399;
assign v79_fu_654_p1 = reg_403;
assign v90_1_fu_786_p1 = reg_403;
assign v90_fu_659_p1 = reg_407;
assign zext_ln31_fu_431_p1 = v5_fu_130;
always @ (posedge ap_clk) begin
    zext_ln31_reg_993[15:8] <= 8'b00000000;
end
endmodule 