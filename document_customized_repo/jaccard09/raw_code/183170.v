module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_address0,v224_ce0,v224_q0,v224_address1,v224_ce1,v224_q1,v228_0_address0,v228_0_ce0,v228_0_q0,v228_0_address1,v228_0_ce1,v228_0_q1,v228_1_address0,v228_1_ce0,v228_1_q0,v228_1_address1,v228_1_ce1,v228_1_q1,v228_2_address0,v228_2_ce0,v228_2_q0,v228_2_address1,v228_2_ce1,v228_2_q1,v228_3_address0,v228_3_ce0,v228_3_q0,v228_3_address1,v228_3_ce1,v228_3_q1,v229_address0,v229_ce0,v229_we0,v229_d0,v229_q0,v229_address1,v229_ce1,v229_we1,v229_d1,v229_q1,v4,grp_fu_132_p_din0,grp_fu_132_p_din1,grp_fu_132_p_opcode,grp_fu_132_p_dout0,grp_fu_132_p_ce,grp_fu_136_p_din0,grp_fu_136_p_din1,grp_fu_136_p_dout0,grp_fu_136_p_ce,grp_fu_140_p_din0,grp_fu_140_p_din1,grp_fu_140_p_dout0,grp_fu_140_p_ce); 
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
(* fsm_encoding = "none" *) reg   [12:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire   [7:0] add_ln31_fu_245_p2;
reg   [7:0] add_ln31_reg_589;
wire    ap_CS_fsm_state2;
wire   [15:0] zext_ln31_fu_251_p1;
reg   [15:0] zext_ln31_reg_594;
wire   [1:0] trunc_ln31_fu_255_p1;
reg   [1:0] trunc_ln31_reg_607;
wire   [13:0] mul_ln38_fu_273_p2;
reg   [13:0] mul_ln38_reg_612;
wire   [0:0] cmp11_fu_279_p2;
reg   [0:0] cmp11_reg_617;
wire   [15:0] v6_cast_fu_291_p1;
reg   [15:0] v6_cast_reg_625;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln32_fu_295_p2;
reg   [7:0] add_ln32_reg_631;
wire   [15:0] p_cast1300_fu_311_p1;
reg   [15:0] p_cast1300_reg_636;
wire    ap_CS_fsm_state4;
wire   [15:0] p_cast1301_fu_321_p1;
reg   [15:0] p_cast1301_reg_642;
wire   [15:0] p_cast1302_fu_331_p1;
reg   [15:0] p_cast1302_reg_648;
wire    ap_CS_fsm_state5;
wire   [15:0] p_cast1303_fu_341_p1;
reg   [15:0] p_cast1303_reg_654;
wire    ap_CS_fsm_state6;
wire   [15:0] p_cast1304_fu_355_p1;
reg   [15:0] p_cast1304_reg_665;
wire   [15:0] p_cast1305_fu_365_p1;
reg   [15:0] p_cast1305_reg_671;
reg   [31:0] v224_load_reg_677;
wire    ap_CS_fsm_state7;
wire   [15:0] p_cast1306_fu_383_p1;
reg   [15:0] p_cast1306_reg_692;
wire   [15:0] p_cast1307_fu_393_p1;
reg   [15:0] p_cast1307_reg_698;
reg   [31:0] v224_load_1_reg_704;
wire    ap_CS_fsm_state8;
reg   [31:0] v224_load_2_reg_709;
reg   [31:0] v224_load_3_reg_724;
wire    ap_CS_fsm_state9;
reg   [31:0] v224_load_4_reg_729;
reg   [31:0] v224_load_5_reg_744;
wire    ap_CS_fsm_state10;
reg   [31:0] v224_load_6_reg_749;
wire   [15:0] mul_ln34_fu_421_p2;
reg   [15:0] mul_ln34_reg_764;
wire    ap_CS_fsm_state11;
wire   [15:0] mul_ln49_fu_426_p2;
reg   [15:0] mul_ln49_reg_769;
wire   [15:0] mul_ln62_fu_431_p2;
reg   [15:0] mul_ln62_reg_774;
wire   [15:0] mul_ln75_fu_436_p2;
reg   [15:0] mul_ln75_reg_779;
wire   [15:0] mul_ln88_fu_441_p2;
reg   [15:0] mul_ln88_reg_784;
wire   [15:0] mul_ln101_fu_446_p2;
reg   [15:0] mul_ln101_reg_789;
wire   [15:0] mul_ln114_fu_451_p2;
reg   [15:0] mul_ln114_reg_794;
wire   [15:0] mul_ln127_fu_456_p2;
reg   [15:0] mul_ln127_reg_799;
reg   [31:0] v224_load_7_reg_804;
wire   [15:0] mul_ln140_fu_461_p2;
reg   [15:0] mul_ln140_reg_809;
reg   [31:0] v224_load_8_reg_814;
wire   [31:0] v11_fu_466_p1;
reg   [31:0] v11_reg_819;
wire    ap_CS_fsm_state12;
wire   [31:0] v24_fu_470_p1;
reg   [31:0] v24_reg_824;
wire   [31:0] v35_fu_474_p1;
reg   [31:0] v35_reg_829;
wire   [31:0] v46_fu_478_p1;
reg   [31:0] v46_reg_834;
wire   [31:0] v57_fu_482_p1;
reg   [31:0] v57_reg_839;
wire   [31:0] v68_fu_486_p1;
reg   [31:0] v68_reg_844;
wire   [31:0] v79_fu_490_p1;
reg   [31:0] v79_reg_849;
wire   [31:0] v90_fu_494_p1;
reg   [31:0] v90_reg_854;
wire   [31:0] v101_fu_498_p1;
reg   [31:0] v101_reg_859;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_195_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_195_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_195_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_195_ap_ready;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_0_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_0_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_1_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_1_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_2_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_2_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_3_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_3_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_195_grp_fu_864_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_195_grp_fu_864_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_195_grp_fu_864_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_195_grp_fu_864_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_195_grp_fu_868_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_195_grp_fu_868_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_195_grp_fu_868_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_195_grp_fu_872_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_195_grp_fu_872_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_195_grp_fu_872_p_ce;
reg   [7:0] v6_reg_183;
wire   [0:0] icmp_ln31_fu_239_p2;
wire    ap_CS_fsm_state13;
reg    grp_kernel_2mm_node0_Pipeline_label_2_fu_195_ap_start_reg;
wire   [63:0] p_cast1308_fu_345_p1;
wire   [63:0] p_cast_fu_369_p1;
wire   [63:0] p_cast1309_fu_373_p1;
wire   [63:0] p_cast1310_fu_397_p1;
wire   [63:0] p_cast1311_fu_401_p1;
wire   [63:0] p_cast1312_fu_405_p1;
wire   [63:0] p_cast1313_fu_409_p1;
wire   [63:0] p_cast1314_fu_413_p1;
wire   [63:0] p_cast1315_fu_417_p1;
reg   [7:0] v5_fu_86;
wire   [0:0] icmp_ln32_fu_285_p2;
reg    ap_block_state1;
reg    v236_read_local;
reg    v224_ce0_local;
reg   [15:0] v224_address0_local;
reg    v224_ce1_local;
reg   [15:0] v224_address1_local;
wire   [5:0] lshr_ln_fu_259_p4;
wire   [5:0] mul_ln38_fu_273_p0;
wire   [8:0] mul_ln38_fu_273_p1;
wire   [7:0] empty_1627_fu_305_p2;
wire   [7:0] empty_1630_fu_315_p2;
wire   [7:0] empty_1633_fu_325_p2;
wire   [7:0] empty_1636_fu_335_p2;
wire   [15:0] grp_fu_502_p3;
wire   [7:0] empty_1639_fu_349_p2;
wire   [7:0] empty_1642_fu_359_p2;
wire   [15:0] grp_fu_510_p3;
wire   [15:0] grp_fu_518_p3;
wire   [7:0] empty_1645_fu_377_p2;
wire   [7:0] empty_1648_fu_387_p2;
wire   [15:0] grp_fu_526_p3;
wire   [15:0] grp_fu_534_p3;
wire   [15:0] grp_fu_542_p3;
wire   [15:0] grp_fu_550_p3;
wire   [15:0] grp_fu_558_p3;
wire   [15:0] grp_fu_566_p3;
wire   [7:0] mul_ln34_fu_421_p0;
wire   [8:0] mul_ln34_fu_421_p1;
wire   [7:0] mul_ln49_fu_426_p0;
wire   [8:0] mul_ln49_fu_426_p1;
wire   [7:0] mul_ln62_fu_431_p0;
wire   [8:0] mul_ln62_fu_431_p1;
wire   [7:0] mul_ln75_fu_436_p0;
wire   [8:0] mul_ln75_fu_436_p1;
wire   [7:0] mul_ln88_fu_441_p0;
wire   [8:0] mul_ln88_fu_441_p1;
wire   [7:0] mul_ln101_fu_446_p0;
wire   [8:0] mul_ln101_fu_446_p1;
wire   [7:0] mul_ln114_fu_451_p0;
wire   [8:0] mul_ln114_fu_451_p1;
wire   [7:0] mul_ln127_fu_456_p0;
wire   [8:0] mul_ln127_fu_456_p1;
wire   [7:0] mul_ln140_fu_461_p0;
wire   [8:0] mul_ln140_fu_461_p1;
wire   [7:0] grp_fu_502_p0;
wire   [7:0] grp_fu_502_p1;
wire   [7:0] grp_fu_502_p2;
wire   [7:0] grp_fu_510_p0;
wire   [7:0] grp_fu_510_p1;
wire   [7:0] grp_fu_510_p2;
wire   [7:0] grp_fu_518_p0;
wire   [7:0] grp_fu_518_p1;
wire   [7:0] grp_fu_518_p2;
wire   [7:0] grp_fu_526_p0;
wire   [7:0] grp_fu_526_p1;
wire   [7:0] grp_fu_526_p2;
wire   [7:0] grp_fu_534_p0;
wire   [7:0] grp_fu_534_p1;
wire   [7:0] grp_fu_534_p2;
wire   [7:0] grp_fu_542_p0;
wire   [7:0] grp_fu_542_p1;
wire   [7:0] grp_fu_542_p2;
wire   [7:0] grp_fu_550_p0;
wire   [7:0] grp_fu_550_p1;
wire   [7:0] grp_fu_550_p2;
wire   [7:0] grp_fu_558_p0;
wire   [7:0] grp_fu_558_p1;
wire   [7:0] grp_fu_558_p2;
wire   [7:0] grp_fu_566_p0;
wire   [7:0] grp_fu_566_p1;
wire   [7:0] grp_fu_566_p2;
reg    grp_fu_864_ce;
reg    grp_fu_868_ce;
reg    grp_fu_872_ce;
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
wire   [15:0] grp_fu_502_p00;
wire   [15:0] grp_fu_510_p00;
wire   [15:0] grp_fu_518_p00;
wire   [15:0] grp_fu_526_p00;
wire   [15:0] grp_fu_534_p00;
wire   [15:0] grp_fu_542_p00;
wire   [15:0] grp_fu_550_p00;
wire   [15:0] grp_fu_558_p00;
wire   [15:0] grp_fu_566_p00;
wire   [13:0] mul_ln38_fu_273_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 13'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_2_fu_195_ap_start_reg = 1'b0;
#0 v5_fu_86 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_2 grp_kernel_2mm_node0_Pipeline_label_2_fu_195(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_2_fu_195_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_2_fu_195_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_2_fu_195_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_2_fu_195_ap_ready),.mul_ln38(mul_ln38_reg_612),.v228_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_0_ce1),.v228_0_q1(v228_0_q1),.v228_1_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_1_ce1),.v228_1_q1(v228_1_q1),.v228_2_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_2_address0),.v228_2_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_2_ce0),.v228_2_q0(v228_2_q0),.v228_2_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_2_address1),.v228_2_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_2_ce1),.v228_2_q1(v228_2_q1),.v228_3_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_3_address0),.v228_3_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_3_ce0),.v228_3_q0(v228_3_q0),.v228_3_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_3_address1),.v228_3_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_3_ce1),.v228_3_q1(v228_3_q1),.mul_ln34(mul_ln34_reg_764),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v229_d1),.v229_q1(v229_q1),.mul_ln49(mul_ln49_reg_769),.mul_ln62(mul_ln62_reg_774),.mul_ln75(mul_ln75_reg_779),.mul_ln88(mul_ln88_reg_784),.mul_ln101(mul_ln101_reg_789),.mul_ln114(mul_ln114_reg_794),.mul_ln127(mul_ln127_reg_799),.mul_ln140(mul_ln140_reg_809),.v4(v4),.cmp11(cmp11_reg_617),.empty(trunc_ln31_reg_607),.v11(v11_reg_819),.v24(v24_reg_824),.v35(v35_reg_829),.v46(v46_reg_834),.v57(v57_reg_839),.v68(v68_reg_844),.v79(v79_reg_849),.v90(v90_reg_854),.v101(v101_reg_859),.grp_fu_864_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_195_grp_fu_864_p_din0),.grp_fu_864_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_195_grp_fu_864_p_din1),.grp_fu_864_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_195_grp_fu_864_p_opcode),.grp_fu_864_p_dout0(grp_fu_132_p_dout0),.grp_fu_864_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_195_grp_fu_864_p_ce),.grp_fu_868_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_195_grp_fu_868_p_din0),.grp_fu_868_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_195_grp_fu_868_p_din1),.grp_fu_868_p_dout0(grp_fu_136_p_dout0),.grp_fu_868_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_195_grp_fu_868_p_ce),.grp_fu_872_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_195_grp_fu_872_p_din0),.grp_fu_872_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_195_grp_fu_872_p_din1),.grp_fu_872_p_dout0(grp_fu_140_p_dout0),.grp_fu_872_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_195_grp_fu_872_p_ce));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U2717(.din0(mul_ln38_fu_273_p0),.din1(mul_ln38_fu_273_p1),.dout(mul_ln38_fu_273_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U2718(.din0(mul_ln34_fu_421_p0),.din1(mul_ln34_fu_421_p1),.dout(mul_ln34_fu_421_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U2719(.din0(mul_ln49_fu_426_p0),.din1(mul_ln49_fu_426_p1),.dout(mul_ln49_fu_426_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U2720(.din0(mul_ln62_fu_431_p0),.din1(mul_ln62_fu_431_p1),.dout(mul_ln62_fu_431_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U2721(.din0(mul_ln75_fu_436_p0),.din1(mul_ln75_fu_436_p1),.dout(mul_ln75_fu_436_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U2722(.din0(mul_ln88_fu_441_p0),.din1(mul_ln88_fu_441_p1),.dout(mul_ln88_fu_441_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U2723(.din0(mul_ln101_fu_446_p0),.din1(mul_ln101_fu_446_p1),.dout(mul_ln101_fu_446_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U2724(.din0(mul_ln114_fu_451_p0),.din1(mul_ln114_fu_451_p1),.dout(mul_ln114_fu_451_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U2725(.din0(mul_ln127_fu_456_p0),.din1(mul_ln127_fu_456_p1),.dout(mul_ln127_fu_456_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U2726(.din0(mul_ln140_fu_461_p0),.din1(mul_ln140_fu_461_p1),.dout(mul_ln140_fu_461_p2));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U2727(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_502_p0),.din1(grp_fu_502_p1),.din2(grp_fu_502_p2),.ce(1'b1),.dout(grp_fu_502_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U2728(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_510_p0),.din1(grp_fu_510_p1),.din2(grp_fu_510_p2),.ce(1'b1),.dout(grp_fu_510_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U2729(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_518_p0),.din1(grp_fu_518_p1),.din2(grp_fu_518_p2),.ce(1'b1),.dout(grp_fu_518_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U2730(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_526_p0),.din1(grp_fu_526_p1),.din2(grp_fu_526_p2),.ce(1'b1),.dout(grp_fu_526_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U2731(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_534_p0),.din1(grp_fu_534_p1),.din2(grp_fu_534_p2),.ce(1'b1),.dout(grp_fu_534_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U2732(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_542_p0),.din1(grp_fu_542_p1),.din2(grp_fu_542_p2),.ce(1'b1),.dout(grp_fu_542_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U2733(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_550_p0),.din1(grp_fu_550_p1),.din2(grp_fu_550_p2),.ce(1'b1),.dout(grp_fu_550_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U2734(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_558_p0),.din1(grp_fu_558_p1),.din2(grp_fu_558_p2),.ce(1'b1),.dout(grp_fu_558_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U2735(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_566_p0),.din1(grp_fu_566_p1),.din2(grp_fu_566_p2),.ce(1'b1),.dout(grp_fu_566_p3));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_2_fu_195_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_195_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_195_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_195_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_86 <= 8'd0;
    end else if (((icmp_ln32_fu_285_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v5_fu_86 <= add_ln31_reg_589;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_195_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        v6_reg_183 <= add_ln32_reg_631;
    end else if (((icmp_ln31_fu_239_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v6_reg_183 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln31_reg_589 <= add_ln31_fu_245_p2;
        cmp11_reg_617 <= cmp11_fu_279_p2;
        mul_ln38_reg_612 <= mul_ln38_fu_273_p2;
        trunc_ln31_reg_607 <= trunc_ln31_fu_255_p1;
        zext_ln31_reg_594[7 : 0] <= zext_ln31_fu_251_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_reg_631 <= add_ln32_fu_295_p2;
        v6_cast_reg_625[7 : 0] <= v6_cast_fu_291_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        mul_ln101_reg_789 <= mul_ln101_fu_446_p2;
        mul_ln114_reg_794 <= mul_ln114_fu_451_p2;
        mul_ln127_reg_799 <= mul_ln127_fu_456_p2;
        mul_ln140_reg_809 <= mul_ln140_fu_461_p2;
        mul_ln34_reg_764 <= mul_ln34_fu_421_p2;
        mul_ln49_reg_769 <= mul_ln49_fu_426_p2;
        mul_ln62_reg_774 <= mul_ln62_fu_431_p2;
        mul_ln75_reg_779 <= mul_ln75_fu_436_p2;
        mul_ln88_reg_784 <= mul_ln88_fu_441_p2;
        v224_load_7_reg_804 <= v224_q0;
        v224_load_8_reg_814 <= v224_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        p_cast1300_reg_636[7 : 0] <= p_cast1300_fu_311_p1[7 : 0];
        p_cast1301_reg_642[7 : 0] <= p_cast1301_fu_321_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        p_cast1302_reg_648[7 : 0] <= p_cast1302_fu_331_p1[7 : 0];
        p_cast1303_reg_654[7 : 0] <= p_cast1303_fu_341_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        p_cast1304_reg_665[7 : 0] <= p_cast1304_fu_355_p1[7 : 0];
        p_cast1305_reg_671[7 : 0] <= p_cast1305_fu_365_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        p_cast1306_reg_692[7 : 0] <= p_cast1306_fu_383_p1[7 : 0];
        p_cast1307_reg_698[7 : 0] <= p_cast1307_fu_393_p1[7 : 0];
        v224_load_reg_677 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        v101_reg_859 <= v101_fu_498_p1;
        v11_reg_819 <= v11_fu_466_p1;
        v24_reg_824 <= v24_fu_470_p1;
        v35_reg_829 <= v35_fu_474_p1;
        v46_reg_834 <= v46_fu_478_p1;
        v57_reg_839 <= v57_fu_482_p1;
        v68_reg_844 <= v68_fu_486_p1;
        v79_reg_849 <= v79_fu_490_p1;
        v90_reg_854 <= v90_fu_494_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_load_1_reg_704 <= v224_q1;
        v224_load_2_reg_709 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_load_3_reg_724 <= v224_q0;
        v224_load_4_reg_729 <= v224_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_load_5_reg_744 <= v224_q0;
        v224_load_6_reg_749 <= v224_q1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_195_ap_done == 1'b0)) begin
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
    if ((((icmp_ln31_fu_239_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((icmp_ln31_fu_239_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_864_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_195_grp_fu_864_p_ce;
    end else begin
        grp_fu_864_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_868_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_195_grp_fu_868_p_ce;
    end else begin
        grp_fu_868_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_872_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_195_grp_fu_872_p_ce;
    end else begin
        grp_fu_872_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address0_local = p_cast1314_fu_413_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address0_local = p_cast1312_fu_405_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address0_local = p_cast1310_fu_397_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address0_local = p_cast1309_fu_373_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_address0_local = p_cast1308_fu_345_p1;
    end else begin
        v224_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address1_local = p_cast1315_fu_417_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address1_local = p_cast1313_fu_409_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address1_local = p_cast1311_fu_401_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address1_local = p_cast_fu_369_p1;
    end else begin
        v224_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v224_ce0_local = 1'b1;
    end else begin
        v224_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        v224_ce1_local = 1'b1;
    end else begin
        v224_ce1_local = 1'b0;
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
            if (((icmp_ln31_fu_239_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln32_fu_285_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_195_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
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
assign add_ln31_fu_245_p2 = (v5_fu_86 + 8'd1);
assign add_ln32_fu_295_p2 = (v6_reg_183 + 8'd9);
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
assign cmp11_fu_279_p2 = ((v5_fu_86 == 8'd0) ? 1'b1 : 1'b0);
assign empty_1627_fu_305_p2 = (v6_reg_183 + 8'd1);
assign empty_1630_fu_315_p2 = (v6_reg_183 + 8'd2);
assign empty_1633_fu_325_p2 = (v6_reg_183 + 8'd3);
assign empty_1636_fu_335_p2 = (v6_reg_183 + 8'd4);
assign empty_1639_fu_349_p2 = (v6_reg_183 + 8'd5);
assign empty_1642_fu_359_p2 = (v6_reg_183 + 8'd6);
assign empty_1645_fu_377_p2 = (v6_reg_183 + 8'd7);
assign empty_1648_fu_387_p2 = (v6_reg_183 + 8'd8);
assign grp_fu_132_p_ce = grp_fu_864_ce;
assign grp_fu_132_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_195_grp_fu_864_p_din0;
assign grp_fu_132_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_195_grp_fu_864_p_din1;
assign grp_fu_132_p_opcode = 2'd0;
assign grp_fu_136_p_ce = grp_fu_868_ce;
assign grp_fu_136_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_195_grp_fu_868_p_din0;
assign grp_fu_136_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_195_grp_fu_868_p_din1;
assign grp_fu_140_p_ce = grp_fu_872_ce;
assign grp_fu_140_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_195_grp_fu_872_p_din0;
assign grp_fu_140_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_195_grp_fu_872_p_din1;
assign grp_fu_502_p0 = grp_fu_502_p00;
assign grp_fu_502_p00 = v6_reg_183;
assign grp_fu_502_p1 = 16'd190;
assign grp_fu_502_p2 = zext_ln31_reg_594;
assign grp_fu_510_p0 = grp_fu_510_p00;
assign grp_fu_510_p00 = empty_1627_fu_305_p2;
assign grp_fu_510_p1 = 16'd190;
assign grp_fu_510_p2 = zext_ln31_reg_594;
assign grp_fu_518_p0 = grp_fu_518_p00;
assign grp_fu_518_p00 = empty_1630_fu_315_p2;
assign grp_fu_518_p1 = 16'd190;
assign grp_fu_518_p2 = zext_ln31_reg_594;
assign grp_fu_526_p0 = grp_fu_526_p00;
assign grp_fu_526_p00 = empty_1633_fu_325_p2;
assign grp_fu_526_p1 = 16'd190;
assign grp_fu_526_p2 = zext_ln31_reg_594;
assign grp_fu_534_p0 = grp_fu_534_p00;
assign grp_fu_534_p00 = empty_1636_fu_335_p2;
assign grp_fu_534_p1 = 16'd190;
assign grp_fu_534_p2 = zext_ln31_reg_594;
assign grp_fu_542_p0 = grp_fu_542_p00;
assign grp_fu_542_p00 = empty_1639_fu_349_p2;
assign grp_fu_542_p1 = 16'd190;
assign grp_fu_542_p2 = zext_ln31_reg_594;
assign grp_fu_550_p0 = grp_fu_550_p00;
assign grp_fu_550_p00 = empty_1642_fu_359_p2;
assign grp_fu_550_p1 = 16'd190;
assign grp_fu_550_p2 = zext_ln31_reg_594;
assign grp_fu_558_p0 = grp_fu_558_p00;
assign grp_fu_558_p00 = empty_1645_fu_377_p2;
assign grp_fu_558_p1 = 16'd190;
assign grp_fu_558_p2 = zext_ln31_reg_594;
assign grp_fu_566_p0 = grp_fu_566_p00;
assign grp_fu_566_p00 = empty_1648_fu_387_p2;
assign grp_fu_566_p1 = 16'd190;
assign grp_fu_566_p2 = zext_ln31_reg_594;
assign grp_kernel_2mm_node0_Pipeline_label_2_fu_195_ap_start = grp_kernel_2mm_node0_Pipeline_label_2_fu_195_ap_start_reg;
assign icmp_ln31_fu_239_p2 = ((v5_fu_86 == 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_285_p2 = ((v6_reg_183 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln_fu_259_p4 = {{v5_fu_86[7:2]}};
assign mul_ln101_fu_446_p0 = p_cast1304_reg_665;
assign mul_ln101_fu_446_p1 = 16'd220;
assign mul_ln114_fu_451_p0 = p_cast1305_reg_671;
assign mul_ln114_fu_451_p1 = 16'd220;
assign mul_ln127_fu_456_p0 = p_cast1306_reg_692;
assign mul_ln127_fu_456_p1 = 16'd220;
assign mul_ln140_fu_461_p0 = p_cast1307_reg_698;
assign mul_ln140_fu_461_p1 = 16'd220;
assign mul_ln34_fu_421_p0 = v6_cast_reg_625;
assign mul_ln34_fu_421_p1 = 16'd220;
assign mul_ln38_fu_273_p0 = mul_ln38_fu_273_p00;
assign mul_ln38_fu_273_p00 = lshr_ln_fu_259_p4;
assign mul_ln38_fu_273_p1 = 14'd220;
assign mul_ln49_fu_426_p0 = p_cast1300_reg_636;
assign mul_ln49_fu_426_p1 = 16'd220;
assign mul_ln62_fu_431_p0 = p_cast1301_reg_642;
assign mul_ln62_fu_431_p1 = 16'd220;
assign mul_ln75_fu_436_p0 = p_cast1302_reg_648;
assign mul_ln75_fu_436_p1 = 16'd220;
assign mul_ln88_fu_441_p0 = p_cast1303_reg_654;
assign mul_ln88_fu_441_p1 = 16'd220;
assign p_cast1300_fu_311_p1 = empty_1627_fu_305_p2;
assign p_cast1301_fu_321_p1 = empty_1630_fu_315_p2;
assign p_cast1302_fu_331_p1 = empty_1633_fu_325_p2;
assign p_cast1303_fu_341_p1 = empty_1636_fu_335_p2;
assign p_cast1304_fu_355_p1 = empty_1639_fu_349_p2;
assign p_cast1305_fu_365_p1 = empty_1642_fu_359_p2;
assign p_cast1306_fu_383_p1 = empty_1645_fu_377_p2;
assign p_cast1307_fu_393_p1 = empty_1648_fu_387_p2;
assign p_cast1308_fu_345_p1 = grp_fu_502_p3;
assign p_cast1309_fu_373_p1 = grp_fu_518_p3;
assign p_cast1310_fu_397_p1 = grp_fu_526_p3;
assign p_cast1311_fu_401_p1 = grp_fu_534_p3;
assign p_cast1312_fu_405_p1 = grp_fu_542_p3;
assign p_cast1313_fu_409_p1 = grp_fu_550_p3;
assign p_cast1314_fu_413_p1 = grp_fu_558_p3;
assign p_cast1315_fu_417_p1 = grp_fu_566_p3;
assign p_cast_fu_369_p1 = grp_fu_510_p3;
assign trunc_ln31_fu_255_p1 = v5_fu_86[1:0];
assign v101_fu_498_p1 = v224_load_8_reg_814;
assign v11_fu_466_p1 = v224_load_reg_677;
assign v224_address0 = v224_address0_local;
assign v224_address1 = v224_address1_local;
assign v224_ce0 = v224_ce0_local;
assign v224_ce1 = v224_ce1_local;
assign v228_0_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_0_address0;
assign v228_0_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_0_address1;
assign v228_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_0_ce0;
assign v228_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_0_ce1;
assign v228_1_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_1_address0;
assign v228_1_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_1_address1;
assign v228_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_1_ce0;
assign v228_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_1_ce1;
assign v228_2_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_2_address0;
assign v228_2_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_2_address1;
assign v228_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_2_ce0;
assign v228_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_2_ce1;
assign v228_3_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_3_address0;
assign v228_3_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_3_address1;
assign v228_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_3_ce0;
assign v228_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v228_3_ce1;
assign v229_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v229_address0;
assign v229_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v229_address1;
assign v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v229_ce0;
assign v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v229_ce1;
assign v229_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v229_d0;
assign v229_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v229_d1;
assign v229_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v229_we0;
assign v229_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_195_v229_we1;
assign v236_read = v236_read_local;
assign v24_fu_470_p1 = v224_load_1_reg_704;
assign v35_fu_474_p1 = v224_load_2_reg_709;
assign v46_fu_478_p1 = v224_load_3_reg_724;
assign v57_fu_482_p1 = v224_load_4_reg_729;
assign v68_fu_486_p1 = v224_load_5_reg_744;
assign v6_cast_fu_291_p1 = v6_reg_183;
assign v79_fu_490_p1 = v224_load_6_reg_749;
assign v90_fu_494_p1 = v224_load_7_reg_804;
assign zext_ln31_fu_251_p1 = v5_fu_86;
always @ (posedge ap_clk) begin
    zext_ln31_reg_594[15:8] <= 8'b00000000;
    v6_cast_reg_625[15:8] <= 8'b00000000;
    p_cast1300_reg_636[15:8] <= 8'b00000000;
    p_cast1301_reg_642[15:8] <= 8'b00000000;
    p_cast1302_reg_648[15:8] <= 8'b00000000;
    p_cast1303_reg_654[15:8] <= 8'b00000000;
    p_cast1304_reg_665[15:8] <= 8'b00000000;
    p_cast1305_reg_671[15:8] <= 8'b00000000;
    p_cast1306_reg_692[15:8] <= 8'b00000000;
    p_cast1307_reg_698[15:8] <= 8'b00000000;
end
endmodule 