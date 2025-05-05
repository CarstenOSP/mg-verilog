module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_0_address0,v224_0_ce0,v224_0_q0,v224_0_address1,v224_0_ce1,v224_0_q1,v224_1_address0,v224_1_ce0,v224_1_q0,v224_1_address1,v224_1_ce1,v224_1_q1,v228_0_address0,v228_0_ce0,v228_0_q0,v228_0_address1,v228_0_ce1,v228_0_q1,v228_1_address0,v228_1_ce0,v228_1_q0,v228_1_address1,v228_1_ce1,v228_1_q1,v228_2_address0,v228_2_ce0,v228_2_q0,v228_2_address1,v228_2_ce1,v228_2_q1,v228_3_address0,v228_3_ce0,v228_3_q0,v228_3_address1,v228_3_ce1,v228_3_q1,v229_address0,v229_ce0,v229_we0,v229_d0,v229_q0,v229_address1,v229_ce1,v229_we1,v229_d1,v229_q1,v4,grp_fu_136_p_din0,grp_fu_136_p_din1,grp_fu_136_p_opcode,grp_fu_136_p_dout0,grp_fu_136_p_ce,grp_fu_140_p_din0,grp_fu_140_p_din1,grp_fu_140_p_dout0,grp_fu_140_p_ce,grp_fu_144_p_din0,grp_fu_144_p_din1,grp_fu_144_p_dout0,grp_fu_144_p_ce); 
parameter    ap_ST_fsm_state1 = 13'd1;
parameter    ap_ST_fsm_state2 = 13'd2;
parameter    ap_ST_fsm_state3 = 13'd4;
parameter    ap_ST_fsm_state4 = 13'd8;
parameter    ap_ST_fsm_state5 = 13'd16;
parameter    ap_ST_fsm_state6 = 13'd32;
parameter    ap_ST_fsm_state7 = 13'd64;
parameter    ap_ST_fsm_state8 = 13'd128;
parameter    ap_ST_fsm_state9 = 13'd256;
parameter    ap_ST_fsm_state10 = 13'd512;
parameter    ap_ST_fsm_state11 = 13'd1024;
parameter    ap_ST_fsm_state12 = 13'd2048;
parameter    ap_ST_fsm_state13 = 13'd4096;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [0:0] v236_dout;
input   v236_empty_n;
output   v236_read;
output  [14:0] v224_0_address0;
output   v224_0_ce0;
input  [31:0] v224_0_q0;
output  [14:0] v224_0_address1;
output   v224_0_ce1;
input  [31:0] v224_0_q1;
output  [14:0] v224_1_address0;
output   v224_1_ce0;
input  [31:0] v224_1_q0;
output  [14:0] v224_1_address1;
output   v224_1_ce1;
input  [31:0] v224_1_q1;
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
(* fsm_encoding = "none" *) reg   [12:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire   [7:0] add_ln31_fu_344_p2;
reg   [7:0] add_ln31_reg_748;
wire    ap_CS_fsm_state2;
wire   [0:0] trunc_ln31_fu_350_p1;
reg   [0:0] trunc_ln31_reg_753;
wire   [1:0] trunc_ln31_1_fu_354_p1;
reg   [1:0] trunc_ln31_1_reg_759;
wire   [13:0] mul_ln38_fu_372_p2;
reg   [13:0] mul_ln38_reg_764;
wire   [14:0] zext_ln31_fu_388_p1;
reg   [14:0] zext_ln31_reg_769;
wire   [0:0] cmp11_fu_392_p2;
reg   [0:0] cmp11_reg_782;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln32_fu_408_p2;
reg   [7:0] add_ln32_reg_795;
wire   [7:0] empty_40_fu_418_p2;
reg   [7:0] empty_40_reg_800;
wire    ap_CS_fsm_state4;
wire   [7:0] empty_43_fu_428_p2;
reg   [7:0] empty_43_reg_810;
wire   [7:0] empty_46_fu_438_p2;
reg   [7:0] empty_46_reg_820;
wire    ap_CS_fsm_state5;
wire   [7:0] empty_49_fu_448_p2;
reg   [7:0] empty_49_reg_830;
wire    ap_CS_fsm_state6;
wire   [7:0] empty_52_fu_463_p2;
reg   [7:0] empty_52_reg_850;
wire   [7:0] empty_55_fu_473_p2;
reg   [7:0] empty_55_reg_860;
wire   [31:0] grp_fu_316_p3;
reg   [31:0] v11_1_v_reg_870;
wire    ap_CS_fsm_state7;
wire   [7:0] empty_58_fu_493_p2;
reg   [7:0] empty_58_reg_895;
wire   [7:0] empty_61_fu_503_p2;
reg   [7:0] empty_61_reg_905;
wire   [31:0] grp_fu_323_p3;
reg   [31:0] v24_1_v_reg_915;
wire    ap_CS_fsm_state8;
reg   [31:0] v35_1_v_reg_920;
reg   [31:0] v46_1_v_reg_945;
wire    ap_CS_fsm_state9;
reg   [31:0] v57_1_v_reg_950;
reg   [31:0] v68_1_v_reg_975;
wire    ap_CS_fsm_state10;
reg   [31:0] v79_1_v_reg_980;
wire   [15:0] mul_ln34_fu_547_p2;
reg   [15:0] mul_ln34_reg_1005;
wire    ap_CS_fsm_state11;
wire   [15:0] mul_ln49_fu_556_p2;
reg   [15:0] mul_ln49_reg_1010;
wire   [15:0] mul_ln62_fu_565_p2;
reg   [15:0] mul_ln62_reg_1015;
wire   [15:0] mul_ln75_fu_574_p2;
reg   [15:0] mul_ln75_reg_1020;
wire   [15:0] mul_ln88_fu_583_p2;
reg   [15:0] mul_ln88_reg_1025;
wire   [15:0] mul_ln101_fu_592_p2;
reg   [15:0] mul_ln101_reg_1030;
wire   [15:0] mul_ln114_fu_601_p2;
reg   [15:0] mul_ln114_reg_1035;
wire   [15:0] mul_ln127_fu_610_p2;
reg   [15:0] mul_ln127_reg_1040;
reg   [31:0] v90_1_v_reg_1045;
wire   [15:0] mul_ln140_fu_619_p2;
reg   [15:0] mul_ln140_reg_1050;
reg   [31:0] v101_v_reg_1055;
wire   [31:0] v11_fu_625_p1;
reg   [31:0] v11_reg_1060;
wire    ap_CS_fsm_state12;
wire   [31:0] v24_fu_629_p1;
reg   [31:0] v24_reg_1065;
wire   [31:0] v35_fu_633_p1;
reg   [31:0] v35_reg_1070;
wire   [31:0] v46_fu_637_p1;
reg   [31:0] v46_reg_1075;
wire   [31:0] v57_fu_641_p1;
reg   [31:0] v57_reg_1080;
wire   [31:0] v68_fu_645_p1;
reg   [31:0] v68_reg_1085;
wire   [31:0] v79_fu_649_p1;
reg   [31:0] v79_reg_1090;
wire   [31:0] v90_fu_653_p1;
reg   [31:0] v90_reg_1095;
wire   [31:0] v101_fu_657_p1;
reg   [31:0] v101_reg_1100;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_280_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_280_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_280_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_280_ap_ready;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_0_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_0_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_1_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_1_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_2_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_2_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_3_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_3_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_280_grp_fu_1105_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_280_grp_fu_1105_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_280_grp_fu_1105_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_280_grp_fu_1105_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_280_grp_fu_1109_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_280_grp_fu_1109_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_280_grp_fu_1109_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_280_grp_fu_1113_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_280_grp_fu_1113_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_280_grp_fu_1113_p_ce;
reg   [7:0] v6_reg_268;
wire   [0:0] icmp_ln31_fu_338_p2;
wire    ap_CS_fsm_state13;
reg    grp_kernel_2mm_node0_Pipeline_label_2_fu_280_ap_start_reg;
wire   [63:0] p_cast1371_fu_458_p1;
wire   [63:0] p_cast_fu_483_p1;
wire   [63:0] p_cast1372_fu_488_p1;
wire   [63:0] p_cast1373_fu_513_p1;
wire   [63:0] p_cast1374_fu_518_p1;
wire   [63:0] p_cast1375_fu_523_p1;
wire   [63:0] p_cast1376_fu_528_p1;
wire   [63:0] p_cast1377_fu_533_p1;
wire   [63:0] p_cast1378_fu_538_p1;
reg   [7:0] v5_fu_90;
wire   [0:0] icmp_ln32_fu_398_p2;
reg    ap_block_state1;
reg    v236_read_local;
reg    v224_0_ce0_local;
reg   [14:0] v224_0_address0_local;
reg    v224_0_ce1_local;
reg   [14:0] v224_0_address1_local;
reg    v224_1_ce0_local;
reg   [14:0] v224_1_address0_local;
reg    v224_1_ce1_local;
reg   [14:0] v224_1_address1_local;
wire   [5:0] lshr_ln_fu_358_p4;
wire   [5:0] mul_ln38_fu_372_p0;
wire   [8:0] mul_ln38_fu_372_p1;
wire   [6:0] lshr_ln31_1_fu_378_p4;
wire   [14:0] grp_fu_661_p3;
wire   [14:0] grp_fu_669_p3;
wire   [14:0] grp_fu_677_p3;
wire   [14:0] grp_fu_685_p3;
wire   [14:0] grp_fu_693_p3;
wire   [14:0] grp_fu_701_p3;
wire   [14:0] grp_fu_709_p3;
wire   [14:0] grp_fu_717_p3;
wire   [14:0] grp_fu_725_p3;
wire   [7:0] mul_ln34_fu_547_p0;
wire   [8:0] mul_ln34_fu_547_p1;
wire   [7:0] mul_ln49_fu_556_p0;
wire   [8:0] mul_ln49_fu_556_p1;
wire   [7:0] mul_ln62_fu_565_p0;
wire   [8:0] mul_ln62_fu_565_p1;
wire   [7:0] mul_ln75_fu_574_p0;
wire   [8:0] mul_ln75_fu_574_p1;
wire   [7:0] mul_ln88_fu_583_p0;
wire   [8:0] mul_ln88_fu_583_p1;
wire   [7:0] mul_ln101_fu_592_p0;
wire   [8:0] mul_ln101_fu_592_p1;
wire   [7:0] mul_ln114_fu_601_p0;
wire   [8:0] mul_ln114_fu_601_p1;
wire   [7:0] mul_ln127_fu_610_p0;
wire   [8:0] mul_ln127_fu_610_p1;
wire   [7:0] mul_ln140_fu_619_p0;
wire   [8:0] mul_ln140_fu_619_p1;
wire   [7:0] grp_fu_661_p0;
wire   [6:0] grp_fu_661_p1;
wire   [6:0] grp_fu_661_p2;
wire   [7:0] grp_fu_669_p0;
wire   [6:0] grp_fu_669_p1;
wire   [6:0] grp_fu_669_p2;
wire   [7:0] grp_fu_677_p0;
wire   [6:0] grp_fu_677_p1;
wire   [6:0] grp_fu_677_p2;
wire   [7:0] grp_fu_685_p0;
wire   [6:0] grp_fu_685_p1;
wire   [6:0] grp_fu_685_p2;
wire   [7:0] grp_fu_693_p0;
wire   [6:0] grp_fu_693_p1;
wire   [6:0] grp_fu_693_p2;
wire   [7:0] grp_fu_701_p0;
wire   [6:0] grp_fu_701_p1;
wire   [6:0] grp_fu_701_p2;
wire   [7:0] grp_fu_709_p0;
wire   [6:0] grp_fu_709_p1;
wire   [6:0] grp_fu_709_p2;
wire   [7:0] grp_fu_717_p0;
wire   [6:0] grp_fu_717_p1;
wire   [6:0] grp_fu_717_p2;
wire   [7:0] grp_fu_725_p0;
wire   [6:0] grp_fu_725_p1;
wire   [6:0] grp_fu_725_p2;
reg    grp_fu_1105_ce;
reg    grp_fu_1109_ce;
reg    grp_fu_1113_ce;
reg   [12:0] ap_NS_fsm;
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
wire   [14:0] grp_fu_661_p00;
wire   [14:0] grp_fu_669_p00;
wire   [14:0] grp_fu_677_p00;
wire   [14:0] grp_fu_685_p00;
wire   [14:0] grp_fu_693_p00;
wire   [14:0] grp_fu_701_p00;
wire   [14:0] grp_fu_709_p00;
wire   [14:0] grp_fu_717_p00;
wire   [14:0] grp_fu_725_p00;
wire   [15:0] mul_ln101_fu_592_p00;
wire   [15:0] mul_ln114_fu_601_p00;
wire   [15:0] mul_ln127_fu_610_p00;
wire   [15:0] mul_ln140_fu_619_p00;
wire   [15:0] mul_ln34_fu_547_p00;
wire   [13:0] mul_ln38_fu_372_p00;
wire   [15:0] mul_ln49_fu_556_p00;
wire   [15:0] mul_ln62_fu_565_p00;
wire   [15:0] mul_ln75_fu_574_p00;
wire   [15:0] mul_ln88_fu_583_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 13'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_2_fu_280_ap_start_reg = 1'b0;
#0 v5_fu_90 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_2 grp_kernel_2mm_node0_Pipeline_label_2_fu_280(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_2_fu_280_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_2_fu_280_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_2_fu_280_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_2_fu_280_ap_ready),.mul_ln38(mul_ln38_reg_764),.v228_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_0_ce1),.v228_0_q1(v228_0_q1),.v228_1_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_1_ce1),.v228_1_q1(v228_1_q1),.v228_2_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_2_address0),.v228_2_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_2_ce0),.v228_2_q0(v228_2_q0),.v228_2_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_2_address1),.v228_2_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_2_ce1),.v228_2_q1(v228_2_q1),.v228_3_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_3_address0),.v228_3_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_3_ce0),.v228_3_q0(v228_3_q0),.v228_3_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_3_address1),.v228_3_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_3_ce1),.v228_3_q1(v228_3_q1),.mul_ln34(mul_ln34_reg_1005),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v229_d1),.v229_q1(v229_q1),.mul_ln49(mul_ln49_reg_1010),.mul_ln62(mul_ln62_reg_1015),.mul_ln75(mul_ln75_reg_1020),.mul_ln88(mul_ln88_reg_1025),.mul_ln101(mul_ln101_reg_1030),.mul_ln114(mul_ln114_reg_1035),.mul_ln127(mul_ln127_reg_1040),.mul_ln140(mul_ln140_reg_1050),.v4(v4),.cmp11(cmp11_reg_782),.empty(trunc_ln31_1_reg_759),.v11(v11_reg_1060),.v24(v24_reg_1065),.v35(v35_reg_1070),.v46(v46_reg_1075),.v57(v57_reg_1080),.v68(v68_reg_1085),.v79(v79_reg_1090),.v90(v90_reg_1095),.v101(v101_reg_1100),.grp_fu_1105_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_280_grp_fu_1105_p_din0),.grp_fu_1105_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_280_grp_fu_1105_p_din1),.grp_fu_1105_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_280_grp_fu_1105_p_opcode),.grp_fu_1105_p_dout0(grp_fu_136_p_dout0),.grp_fu_1105_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_280_grp_fu_1105_p_ce),.grp_fu_1109_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_280_grp_fu_1109_p_din0),.grp_fu_1109_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_280_grp_fu_1109_p_din1),.grp_fu_1109_p_dout0(grp_fu_140_p_dout0),.grp_fu_1109_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_280_grp_fu_1109_p_ce),.grp_fu_1113_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_280_grp_fu_1113_p_din0),.grp_fu_1113_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_280_grp_fu_1113_p_din1),.grp_fu_1113_p_dout0(grp_fu_144_p_dout0),.grp_fu_1113_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_280_grp_fu_1113_p_ce));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U86(.din0(mul_ln38_fu_372_p0),.din1(mul_ln38_fu_372_p1),.dout(mul_ln38_fu_372_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U87(.din0(mul_ln34_fu_547_p0),.din1(mul_ln34_fu_547_p1),.dout(mul_ln34_fu_547_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U88(.din0(mul_ln49_fu_556_p0),.din1(mul_ln49_fu_556_p1),.dout(mul_ln49_fu_556_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U89(.din0(mul_ln62_fu_565_p0),.din1(mul_ln62_fu_565_p1),.dout(mul_ln62_fu_565_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U90(.din0(mul_ln75_fu_574_p0),.din1(mul_ln75_fu_574_p1),.dout(mul_ln75_fu_574_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U91(.din0(mul_ln88_fu_583_p0),.din1(mul_ln88_fu_583_p1),.dout(mul_ln88_fu_583_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U92(.din0(mul_ln101_fu_592_p0),.din1(mul_ln101_fu_592_p1),.dout(mul_ln101_fu_592_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U93(.din0(mul_ln114_fu_601_p0),.din1(mul_ln114_fu_601_p1),.dout(mul_ln114_fu_601_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U94(.din0(mul_ln127_fu_610_p0),.din1(mul_ln127_fu_610_p1),.dout(mul_ln127_fu_610_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U95(.din0(mul_ln140_fu_619_p0),.din1(mul_ln140_fu_619_p1),.dout(mul_ln140_fu_619_p2));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U96(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_661_p0),.din1(grp_fu_661_p1),.din2(grp_fu_661_p2),.ce(1'b1),.dout(grp_fu_661_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U97(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_669_p0),.din1(grp_fu_669_p1),.din2(grp_fu_669_p2),.ce(1'b1),.dout(grp_fu_669_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U98(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_677_p0),.din1(grp_fu_677_p1),.din2(grp_fu_677_p2),.ce(1'b1),.dout(grp_fu_677_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U99(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_685_p0),.din1(grp_fu_685_p1),.din2(grp_fu_685_p2),.ce(1'b1),.dout(grp_fu_685_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U100(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_693_p0),.din1(grp_fu_693_p1),.din2(grp_fu_693_p2),.ce(1'b1),.dout(grp_fu_693_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U101(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_701_p0),.din1(grp_fu_701_p1),.din2(grp_fu_701_p2),.ce(1'b1),.dout(grp_fu_701_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U102(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_709_p0),.din1(grp_fu_709_p1),.din2(grp_fu_709_p2),.ce(1'b1),.dout(grp_fu_709_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U103(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_717_p0),.din1(grp_fu_717_p1),.din2(grp_fu_717_p2),.ce(1'b1),.dout(grp_fu_717_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U104(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_725_p0),.din1(grp_fu_725_p1),.din2(grp_fu_725_p2),.ce(1'b1),.dout(grp_fu_725_p3));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_2_fu_280_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_280_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_280_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_280_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_90 <= 8'd0;
    end else if (((icmp_ln32_fu_398_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v5_fu_90 <= add_ln31_reg_748;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_280_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        v6_reg_268 <= add_ln32_reg_795;
    end else if (((icmp_ln31_fu_338_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v6_reg_268 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln31_reg_748 <= add_ln31_fu_344_p2;
        cmp11_reg_782 <= cmp11_fu_392_p2;
        mul_ln38_reg_764 <= mul_ln38_fu_372_p2;
        trunc_ln31_1_reg_759 <= trunc_ln31_1_fu_354_p1;
        trunc_ln31_reg_753 <= trunc_ln31_fu_350_p1;
        zext_ln31_reg_769[6 : 0] <= zext_ln31_fu_388_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_reg_795 <= add_ln32_fu_408_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        empty_40_reg_800 <= empty_40_fu_418_p2;
        empty_43_reg_810 <= empty_43_fu_428_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        empty_46_reg_820 <= empty_46_fu_438_p2;
        empty_49_reg_830 <= empty_49_fu_448_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        empty_52_reg_850 <= empty_52_fu_463_p2;
        empty_55_reg_860 <= empty_55_fu_473_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        empty_58_reg_895 <= empty_58_fu_493_p2;
        empty_61_reg_905 <= empty_61_fu_503_p2;
        v11_1_v_reg_870 <= grp_fu_316_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        mul_ln101_reg_1030 <= mul_ln101_fu_592_p2;
        mul_ln114_reg_1035 <= mul_ln114_fu_601_p2;
        mul_ln127_reg_1040 <= mul_ln127_fu_610_p2;
        mul_ln140_reg_1050 <= mul_ln140_fu_619_p2;
        mul_ln34_reg_1005 <= mul_ln34_fu_547_p2;
        mul_ln49_reg_1010 <= mul_ln49_fu_556_p2;
        mul_ln62_reg_1015 <= mul_ln62_fu_565_p2;
        mul_ln75_reg_1020 <= mul_ln75_fu_574_p2;
        mul_ln88_reg_1025 <= mul_ln88_fu_583_p2;
        v101_v_reg_1055 <= grp_fu_323_p3;
        v90_1_v_reg_1045 <= grp_fu_316_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        v101_reg_1100 <= v101_fu_657_p1;
        v11_reg_1060 <= v11_fu_625_p1;
        v24_reg_1065 <= v24_fu_629_p1;
        v35_reg_1070 <= v35_fu_633_p1;
        v46_reg_1075 <= v46_fu_637_p1;
        v57_reg_1080 <= v57_fu_641_p1;
        v68_reg_1085 <= v68_fu_645_p1;
        v79_reg_1090 <= v79_fu_649_p1;
        v90_reg_1095 <= v90_fu_653_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v24_1_v_reg_915 <= grp_fu_323_p3;
        v35_1_v_reg_920 <= grp_fu_316_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v46_1_v_reg_945 <= grp_fu_316_p3;
        v57_1_v_reg_950 <= grp_fu_323_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v68_1_v_reg_975 <= grp_fu_316_p3;
        v79_1_v_reg_980 <= grp_fu_323_p3;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_280_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
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
    if ((((icmp_ln31_fu_338_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln31_fu_338_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1105_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_280_grp_fu_1105_p_ce;
    end else begin
        grp_fu_1105_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1109_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_280_grp_fu_1109_p_ce;
    end else begin
        grp_fu_1109_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1113_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_280_grp_fu_1113_p_ce;
    end else begin
        grp_fu_1113_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_0_address0_local = p_cast1377_fu_533_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_0_address0_local = p_cast1375_fu_523_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_0_address0_local = p_cast1373_fu_513_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_0_address0_local = p_cast1372_fu_488_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_0_address0_local = p_cast1371_fu_458_p1;
    end else begin
        v224_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_0_address1_local = p_cast1378_fu_538_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_0_address1_local = p_cast1376_fu_528_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_0_address1_local = p_cast1374_fu_518_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_0_address1_local = p_cast_fu_483_p1;
    end else begin
        v224_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v224_0_ce0_local = 1'b1;
    end else begin
        v224_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        v224_0_ce1_local = 1'b1;
    end else begin
        v224_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_1_address0_local = p_cast1377_fu_533_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_1_address0_local = p_cast1375_fu_523_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_1_address0_local = p_cast1373_fu_513_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_1_address0_local = p_cast1372_fu_488_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_1_address0_local = p_cast1371_fu_458_p1;
    end else begin
        v224_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_1_address1_local = p_cast1378_fu_538_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_1_address1_local = p_cast1376_fu_528_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_1_address1_local = p_cast1374_fu_518_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_1_address1_local = p_cast_fu_483_p1;
    end else begin
        v224_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v224_1_ce0_local = 1'b1;
    end else begin
        v224_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        v224_1_ce1_local = 1'b1;
    end else begin
        v224_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
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
            if (((icmp_ln31_fu_338_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln32_fu_398_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_280_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln31_fu_344_p2 = (v5_fu_90 + 8'd1);
assign add_ln32_fu_408_p2 = (v6_reg_268 + 8'd9);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
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
assign cmp11_fu_392_p2 = ((v5_fu_90 == 8'd0) ? 1'b1 : 1'b0);
assign empty_40_fu_418_p2 = (v6_reg_268 + 8'd1);
assign empty_43_fu_428_p2 = (v6_reg_268 + 8'd2);
assign empty_46_fu_438_p2 = (v6_reg_268 + 8'd3);
assign empty_49_fu_448_p2 = (v6_reg_268 + 8'd4);
assign empty_52_fu_463_p2 = (v6_reg_268 + 8'd5);
assign empty_55_fu_473_p2 = (v6_reg_268 + 8'd6);
assign empty_58_fu_493_p2 = (v6_reg_268 + 8'd7);
assign empty_61_fu_503_p2 = (v6_reg_268 + 8'd8);
assign grp_fu_136_p_ce = grp_fu_1105_ce;
assign grp_fu_136_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_280_grp_fu_1105_p_din0;
assign grp_fu_136_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_280_grp_fu_1105_p_din1;
assign grp_fu_136_p_opcode = 2'd0;
assign grp_fu_140_p_ce = grp_fu_1109_ce;
assign grp_fu_140_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_280_grp_fu_1109_p_din0;
assign grp_fu_140_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_280_grp_fu_1109_p_din1;
assign grp_fu_144_p_ce = grp_fu_1113_ce;
assign grp_fu_144_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_280_grp_fu_1113_p_din0;
assign grp_fu_144_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_280_grp_fu_1113_p_din1;
assign grp_fu_316_p3 = ((trunc_ln31_reg_753[0:0] == 1'b1) ? v224_1_q0 : v224_0_q0);
assign grp_fu_323_p3 = ((trunc_ln31_reg_753[0:0] == 1'b1) ? v224_1_q1 : v224_0_q1);
assign grp_fu_661_p0 = grp_fu_661_p00;
assign grp_fu_661_p00 = v6_reg_268;
assign grp_fu_661_p1 = 15'd95;
assign grp_fu_661_p2 = zext_ln31_reg_769;
assign grp_fu_669_p0 = grp_fu_669_p00;
assign grp_fu_669_p00 = empty_40_fu_418_p2;
assign grp_fu_669_p1 = 15'd95;
assign grp_fu_669_p2 = zext_ln31_reg_769;
assign grp_fu_677_p0 = grp_fu_677_p00;
assign grp_fu_677_p00 = empty_43_fu_428_p2;
assign grp_fu_677_p1 = 15'd95;
assign grp_fu_677_p2 = zext_ln31_reg_769;
assign grp_fu_685_p0 = grp_fu_685_p00;
assign grp_fu_685_p00 = empty_46_fu_438_p2;
assign grp_fu_685_p1 = 15'd95;
assign grp_fu_685_p2 = zext_ln31_reg_769;
assign grp_fu_693_p0 = grp_fu_693_p00;
assign grp_fu_693_p00 = empty_49_fu_448_p2;
assign grp_fu_693_p1 = 15'd95;
assign grp_fu_693_p2 = zext_ln31_reg_769;
assign grp_fu_701_p0 = grp_fu_701_p00;
assign grp_fu_701_p00 = empty_52_fu_463_p2;
assign grp_fu_701_p1 = 15'd95;
assign grp_fu_701_p2 = zext_ln31_reg_769;
assign grp_fu_709_p0 = grp_fu_709_p00;
assign grp_fu_709_p00 = empty_55_fu_473_p2;
assign grp_fu_709_p1 = 15'd95;
assign grp_fu_709_p2 = zext_ln31_reg_769;
assign grp_fu_717_p0 = grp_fu_717_p00;
assign grp_fu_717_p00 = empty_58_fu_493_p2;
assign grp_fu_717_p1 = 15'd95;
assign grp_fu_717_p2 = zext_ln31_reg_769;
assign grp_fu_725_p0 = grp_fu_725_p00;
assign grp_fu_725_p00 = empty_61_fu_503_p2;
assign grp_fu_725_p1 = 15'd95;
assign grp_fu_725_p2 = zext_ln31_reg_769;
assign grp_kernel_2mm_node0_Pipeline_label_2_fu_280_ap_start = grp_kernel_2mm_node0_Pipeline_label_2_fu_280_ap_start_reg;
assign icmp_ln31_fu_338_p2 = ((v5_fu_90 == 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_398_p2 = ((v6_reg_268 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln31_1_fu_378_p4 = {{v5_fu_90[7:1]}};
assign lshr_ln_fu_358_p4 = {{v5_fu_90[7:2]}};
assign mul_ln101_fu_592_p0 = mul_ln101_fu_592_p00;
assign mul_ln101_fu_592_p00 = empty_52_reg_850;
assign mul_ln101_fu_592_p1 = 16'd220;
assign mul_ln114_fu_601_p0 = mul_ln114_fu_601_p00;
assign mul_ln114_fu_601_p00 = empty_55_reg_860;
assign mul_ln114_fu_601_p1 = 16'd220;
assign mul_ln127_fu_610_p0 = mul_ln127_fu_610_p00;
assign mul_ln127_fu_610_p00 = empty_58_reg_895;
assign mul_ln127_fu_610_p1 = 16'd220;
assign mul_ln140_fu_619_p0 = mul_ln140_fu_619_p00;
assign mul_ln140_fu_619_p00 = empty_61_reg_905;
assign mul_ln140_fu_619_p1 = 16'd220;
assign mul_ln34_fu_547_p0 = mul_ln34_fu_547_p00;
assign mul_ln34_fu_547_p00 = v6_reg_268;
assign mul_ln34_fu_547_p1 = 16'd220;
assign mul_ln38_fu_372_p0 = mul_ln38_fu_372_p00;
assign mul_ln38_fu_372_p00 = lshr_ln_fu_358_p4;
assign mul_ln38_fu_372_p1 = 14'd220;
assign mul_ln49_fu_556_p0 = mul_ln49_fu_556_p00;
assign mul_ln49_fu_556_p00 = empty_40_reg_800;
assign mul_ln49_fu_556_p1 = 16'd220;
assign mul_ln62_fu_565_p0 = mul_ln62_fu_565_p00;
assign mul_ln62_fu_565_p00 = empty_43_reg_810;
assign mul_ln62_fu_565_p1 = 16'd220;
assign mul_ln75_fu_574_p0 = mul_ln75_fu_574_p00;
assign mul_ln75_fu_574_p00 = empty_46_reg_820;
assign mul_ln75_fu_574_p1 = 16'd220;
assign mul_ln88_fu_583_p0 = mul_ln88_fu_583_p00;
assign mul_ln88_fu_583_p00 = empty_49_reg_830;
assign mul_ln88_fu_583_p1 = 16'd220;
assign p_cast1371_fu_458_p1 = grp_fu_661_p3;
assign p_cast1372_fu_488_p1 = grp_fu_677_p3;
assign p_cast1373_fu_513_p1 = grp_fu_685_p3;
assign p_cast1374_fu_518_p1 = grp_fu_693_p3;
assign p_cast1375_fu_523_p1 = grp_fu_701_p3;
assign p_cast1376_fu_528_p1 = grp_fu_709_p3;
assign p_cast1377_fu_533_p1 = grp_fu_717_p3;
assign p_cast1378_fu_538_p1 = grp_fu_725_p3;
assign p_cast_fu_483_p1 = grp_fu_669_p3;
assign trunc_ln31_1_fu_354_p1 = v5_fu_90[1:0];
assign trunc_ln31_fu_350_p1 = v5_fu_90[0:0];
assign v101_fu_657_p1 = v101_v_reg_1055;
assign v11_fu_625_p1 = v11_1_v_reg_870;
assign v224_0_address0 = v224_0_address0_local;
assign v224_0_address1 = v224_0_address1_local;
assign v224_0_ce0 = v224_0_ce0_local;
assign v224_0_ce1 = v224_0_ce1_local;
assign v224_1_address0 = v224_1_address0_local;
assign v224_1_address1 = v224_1_address1_local;
assign v224_1_ce0 = v224_1_ce0_local;
assign v224_1_ce1 = v224_1_ce1_local;
assign v228_0_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_0_address0;
assign v228_0_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_0_address1;
assign v228_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_0_ce0;
assign v228_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_0_ce1;
assign v228_1_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_1_address0;
assign v228_1_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_1_address1;
assign v228_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_1_ce0;
assign v228_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_1_ce1;
assign v228_2_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_2_address0;
assign v228_2_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_2_address1;
assign v228_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_2_ce0;
assign v228_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_2_ce1;
assign v228_3_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_3_address0;
assign v228_3_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_3_address1;
assign v228_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_3_ce0;
assign v228_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v228_3_ce1;
assign v229_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v229_address0;
assign v229_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v229_address1;
assign v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v229_ce0;
assign v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v229_ce1;
assign v229_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v229_d0;
assign v229_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v229_d1;
assign v229_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v229_we0;
assign v229_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_280_v229_we1;
assign v236_read = v236_read_local;
assign v24_fu_629_p1 = v24_1_v_reg_915;
assign v35_fu_633_p1 = v35_1_v_reg_920;
assign v46_fu_637_p1 = v46_1_v_reg_945;
assign v57_fu_641_p1 = v57_1_v_reg_950;
assign v68_fu_645_p1 = v68_1_v_reg_975;
assign v79_fu_649_p1 = v79_1_v_reg_980;
assign v90_fu_653_p1 = v90_1_v_reg_1045;
assign zext_ln31_fu_388_p1 = lshr_ln31_1_fu_378_p4;
always @ (posedge ap_clk) begin
    zext_ln31_reg_769[14:7] <= 8'b00000000;
end
endmodule 