
module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_address0,v224_ce0,v224_q0,v224_address1,v224_ce1,v224_q1,v228_0_address0,v228_0_ce0,v228_0_q0,v228_0_address1,v228_0_ce1,v228_0_q1,v228_1_address0,v228_1_ce0,v228_1_q0,v228_1_address1,v228_1_ce1,v228_1_q1,v228_2_address0,v228_2_ce0,v228_2_q0,v228_2_address1,v228_2_ce1,v228_2_q1,v228_3_address0,v228_3_ce0,v228_3_q0,v228_3_address1,v228_3_ce1,v228_3_q1,v228_4_address0,v228_4_ce0,v228_4_q0,v228_4_address1,v228_4_ce1,v228_4_q1,v228_5_address0,v228_5_ce0,v228_5_q0,v228_5_address1,v228_5_ce1,v228_5_q1,v228_6_address0,v228_6_ce0,v228_6_q0,v228_6_address1,v228_6_ce1,v228_6_q1,v228_7_address0,v228_7_ce0,v228_7_q0,v228_7_address1,v228_7_ce1,v228_7_q1,v229_address0,v229_ce0,v229_we0,v229_d0,v229_q0,v229_address1,v229_ce1,v229_we1,v229_d1,v229_q1,v4,grp_fu_148_p_din0,grp_fu_148_p_din1,grp_fu_148_p_opcode,grp_fu_148_p_dout0,grp_fu_148_p_ce,grp_fu_152_p_din0,grp_fu_152_p_din1,grp_fu_152_p_dout0,grp_fu_152_p_ce,grp_fu_156_p_din0,grp_fu_156_p_din1,grp_fu_156_p_dout0,grp_fu_156_p_ce);  
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
output  [31:0] grp_fu_148_p_din0;
output  [31:0] grp_fu_148_p_din1;
output  [1:0] grp_fu_148_p_opcode;
input  [31:0] grp_fu_148_p_dout0;
output   grp_fu_148_p_ce;
output  [31:0] grp_fu_152_p_din0;
output  [31:0] grp_fu_152_p_din1;
input  [31:0] grp_fu_152_p_dout0;
output   grp_fu_152_p_ce;
output  [31:0] grp_fu_156_p_din0;
output  [31:0] grp_fu_156_p_din1;
input  [31:0] grp_fu_156_p_dout0;
output   grp_fu_156_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [12:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire   [7:0] add_ln31_fu_261_p2;
reg   [7:0] add_ln31_reg_605;
wire    ap_CS_fsm_state2;
wire   [15:0] zext_ln31_fu_267_p1;
reg   [15:0] zext_ln31_reg_610;
wire   [2:0] trunc_ln31_fu_271_p1;
reg   [2:0] trunc_ln31_reg_623;
wire   [12:0] mul_ln38_fu_289_p2;
reg   [12:0] mul_ln38_reg_628;
wire   [0:0] cmp11_fu_295_p2;
reg   [0:0] cmp11_reg_633;
wire   [15:0] v6_cast_fu_307_p1;
reg   [15:0] v6_cast_reg_641;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln32_fu_311_p2;
reg   [7:0] add_ln32_reg_647;
wire   [15:0] p_cast1684_fu_327_p1;
reg   [15:0] p_cast1684_reg_652;
wire    ap_CS_fsm_state4;
wire   [15:0] p_cast1685_fu_337_p1;
reg   [15:0] p_cast1685_reg_658;
wire   [15:0] p_cast1686_fu_347_p1;
reg   [15:0] p_cast1686_reg_664;
wire    ap_CS_fsm_state5;
wire   [15:0] p_cast1687_fu_357_p1;
reg   [15:0] p_cast1687_reg_670;
wire    ap_CS_fsm_state6;
wire   [15:0] p_cast1688_fu_371_p1;
reg   [15:0] p_cast1688_reg_681;
wire   [15:0] p_cast1689_fu_381_p1;
reg   [15:0] p_cast1689_reg_687;
reg   [31:0] v224_load_reg_693;
wire    ap_CS_fsm_state7;
wire   [15:0] p_cast1690_fu_399_p1;
reg   [15:0] p_cast1690_reg_708;
wire   [15:0] p_cast1691_fu_409_p1;
reg   [15:0] p_cast1691_reg_714;
reg   [31:0] v224_load_1_reg_720;
wire    ap_CS_fsm_state8;
reg   [31:0] v224_load_2_reg_725;
reg   [31:0] v224_load_3_reg_740;
wire    ap_CS_fsm_state9;
reg   [31:0] v224_load_4_reg_745;
reg   [31:0] v224_load_5_reg_760;
wire    ap_CS_fsm_state10;
reg   [31:0] v224_load_6_reg_765;
wire   [15:0] mul_ln34_fu_437_p2;
reg   [15:0] mul_ln34_reg_780;
wire    ap_CS_fsm_state11;
wire   [15:0] mul_ln49_fu_442_p2;
reg   [15:0] mul_ln49_reg_785;
wire   [15:0] mul_ln62_fu_447_p2;
reg   [15:0] mul_ln62_reg_790;
wire   [15:0] mul_ln75_fu_452_p2;
reg   [15:0] mul_ln75_reg_795;
wire   [15:0] mul_ln88_fu_457_p2;
reg   [15:0] mul_ln88_reg_800;
wire   [15:0] mul_ln101_fu_462_p2;
reg   [15:0] mul_ln101_reg_805;
wire   [15:0] mul_ln114_fu_467_p2;
reg   [15:0] mul_ln114_reg_810;
wire   [15:0] mul_ln127_fu_472_p2;
reg   [15:0] mul_ln127_reg_815;
reg   [31:0] v224_load_7_reg_820;
wire   [15:0] mul_ln140_fu_477_p2;
reg   [15:0] mul_ln140_reg_825;
reg   [31:0] v224_load_8_reg_830;
wire   [31:0] v11_fu_482_p1;
reg   [31:0] v11_reg_835;
wire    ap_CS_fsm_state12;
wire   [31:0] v24_fu_486_p1;
reg   [31:0] v24_reg_840;
wire   [31:0] v35_fu_490_p1;
reg   [31:0] v35_reg_845;
wire   [31:0] v46_fu_494_p1;
reg   [31:0] v46_reg_850;
wire   [31:0] v57_fu_498_p1;
reg   [31:0] v57_reg_855;
wire   [31:0] v68_fu_502_p1;
reg   [31:0] v68_reg_860;
wire   [31:0] v79_fu_506_p1;
reg   [31:0] v79_reg_865;
wire   [31:0] v90_fu_510_p1;
reg   [31:0] v90_reg_870;
wire   [31:0] v101_fu_514_p1;
reg   [31:0] v101_reg_875;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_ap_ready;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_0_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_0_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_1_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_1_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_2_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_2_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_3_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_3_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_4_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_4_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_4_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_4_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_5_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_5_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_5_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_5_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_6_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_6_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_6_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_6_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_7_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_7_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_7_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_7_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_880_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_880_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_880_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_880_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_884_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_884_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_884_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_888_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_888_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_888_p_ce;
reg   [7:0] v6_reg_191;
wire   [0:0] icmp_ln31_fu_255_p2;
wire    ap_CS_fsm_state13;
reg    grp_kernel_2mm_node0_Pipeline_label_2_fu_203_ap_start_reg;
wire   [63:0] p_cast1692_fu_361_p1;
wire   [63:0] p_cast_fu_385_p1;
wire   [63:0] p_cast1693_fu_389_p1;
wire   [63:0] p_cast1694_fu_413_p1;
wire   [63:0] p_cast1695_fu_417_p1;
wire   [63:0] p_cast1696_fu_421_p1;
wire   [63:0] p_cast1697_fu_425_p1;
wire   [63:0] p_cast1698_fu_429_p1;
wire   [63:0] p_cast1699_fu_433_p1;
reg   [7:0] v5_fu_94;
wire   [0:0] icmp_ln32_fu_301_p2;
reg    ap_block_state1;
reg    v236_read_local;
reg    v224_ce0_local;
reg   [15:0] v224_address0_local;
reg    v224_ce1_local;
reg   [15:0] v224_address1_local;
wire   [4:0] lshr_ln_fu_275_p4;
wire   [4:0] mul_ln38_fu_289_p0;
wire   [8:0] mul_ln38_fu_289_p1;
wire   [7:0] empty_40_fu_321_p2;
wire   [7:0] empty_43_fu_331_p2;
wire   [7:0] empty_46_fu_341_p2;
wire   [7:0] empty_49_fu_351_p2;
wire   [15:0] grp_fu_518_p3;
wire   [7:0] empty_52_fu_365_p2;
wire   [7:0] empty_55_fu_375_p2;
wire   [15:0] grp_fu_526_p3;
wire   [15:0] grp_fu_534_p3;
wire   [7:0] empty_58_fu_393_p2;
wire   [7:0] empty_61_fu_403_p2;
wire   [15:0] grp_fu_542_p3;
wire   [15:0] grp_fu_550_p3;
wire   [15:0] grp_fu_558_p3;
wire   [15:0] grp_fu_566_p3;
wire   [15:0] grp_fu_574_p3;
wire   [15:0] grp_fu_582_p3;
wire   [7:0] mul_ln34_fu_437_p0;
wire   [8:0] mul_ln34_fu_437_p1;
wire   [7:0] mul_ln49_fu_442_p0;
wire   [8:0] mul_ln49_fu_442_p1;
wire   [7:0] mul_ln62_fu_447_p0;
wire   [8:0] mul_ln62_fu_447_p1;
wire   [7:0] mul_ln75_fu_452_p0;
wire   [8:0] mul_ln75_fu_452_p1;
wire   [7:0] mul_ln88_fu_457_p0;
wire   [8:0] mul_ln88_fu_457_p1;
wire   [7:0] mul_ln101_fu_462_p0;
wire   [8:0] mul_ln101_fu_462_p1;
wire   [7:0] mul_ln114_fu_467_p0;
wire   [8:0] mul_ln114_fu_467_p1;
wire   [7:0] mul_ln127_fu_472_p0;
wire   [8:0] mul_ln127_fu_472_p1;
wire   [7:0] mul_ln140_fu_477_p0;
wire   [8:0] mul_ln140_fu_477_p1;
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
wire   [7:0] grp_fu_574_p0;
wire   [7:0] grp_fu_574_p1;
wire   [7:0] grp_fu_574_p2;
wire   [7:0] grp_fu_582_p0;
wire   [7:0] grp_fu_582_p1;
wire   [7:0] grp_fu_582_p2;
reg    grp_fu_880_ce;
reg    grp_fu_884_ce;
reg    grp_fu_888_ce;
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
wire   [15:0] grp_fu_518_p00;
wire   [15:0] grp_fu_526_p00;
wire   [15:0] grp_fu_534_p00;
wire   [15:0] grp_fu_542_p00;
wire   [15:0] grp_fu_550_p00;
wire   [15:0] grp_fu_558_p00;
wire   [15:0] grp_fu_566_p00;
wire   [15:0] grp_fu_574_p00;
wire   [15:0] grp_fu_582_p00;
wire   [12:0] mul_ln38_fu_289_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 13'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_2_fu_203_ap_start_reg = 1'b0;
#0 v5_fu_94 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_2 grp_kernel_2mm_node0_Pipeline_label_2_fu_203(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_ap_ready),.mul_ln38(mul_ln38_reg_628),.v228_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_0_ce1),.v228_0_q1(v228_0_q1),.v228_1_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_1_ce1),.v228_1_q1(v228_1_q1),.v228_2_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_2_address0),.v228_2_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_2_ce0),.v228_2_q0(v228_2_q0),.v228_2_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_2_address1),.v228_2_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_2_ce1),.v228_2_q1(v228_2_q1),.v228_3_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_3_address0),.v228_3_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_3_ce0),.v228_3_q0(v228_3_q0),.v228_3_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_3_address1),.v228_3_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_3_ce1),.v228_3_q1(v228_3_q1),.v228_4_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_4_address0),.v228_4_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_4_ce0),.v228_4_q0(v228_4_q0),.v228_4_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_4_address1),.v228_4_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_4_ce1),.v228_4_q1(v228_4_q1),.v228_5_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_5_address0),.v228_5_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_5_ce0),.v228_5_q0(v228_5_q0),.v228_5_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_5_address1),.v228_5_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_5_ce1),.v228_5_q1(v228_5_q1),.v228_6_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_6_address0),.v228_6_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_6_ce0),.v228_6_q0(v228_6_q0),.v228_6_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_6_address1),.v228_6_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_6_ce1),.v228_6_q1(v228_6_q1),.v228_7_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_7_address0),.v228_7_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_7_ce0),.v228_7_q0(v228_7_q0),.v228_7_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_7_address1),.v228_7_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_7_ce1),.v228_7_q1(v228_7_q1),.mul_ln34(mul_ln34_reg_780),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_d1),.v229_q1(v229_q1),.mul_ln49(mul_ln49_reg_785),.mul_ln62(mul_ln62_reg_790),.mul_ln75(mul_ln75_reg_795),.mul_ln88(mul_ln88_reg_800),.mul_ln101(mul_ln101_reg_805),.mul_ln114(mul_ln114_reg_810),.mul_ln127(mul_ln127_reg_815),.mul_ln140(mul_ln140_reg_825),.v4(v4),.cmp11(cmp11_reg_633),.empty(trunc_ln31_reg_623),.v11(v11_reg_835),.v24(v24_reg_840),.v35(v35_reg_845),.v46(v46_reg_850),.v57(v57_reg_855),.v68(v68_reg_860),.v79(v79_reg_865),.v90(v90_reg_870),.v101(v101_reg_875),.grp_fu_880_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_880_p_din0),.grp_fu_880_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_880_p_din1),.grp_fu_880_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_880_p_opcode),.grp_fu_880_p_dout0(grp_fu_148_p_dout0),.grp_fu_880_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_880_p_ce),.grp_fu_884_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_884_p_din0),.grp_fu_884_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_884_p_din1),.grp_fu_884_p_dout0(grp_fu_152_p_dout0),.grp_fu_884_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_884_p_ce),.grp_fu_888_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_888_p_din0),.grp_fu_888_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_888_p_din1),.grp_fu_888_p_dout0(grp_fu_156_p_dout0),.grp_fu_888_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_888_p_ce));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U90(.din0(mul_ln38_fu_289_p0),.din1(mul_ln38_fu_289_p1),.dout(mul_ln38_fu_289_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U91(.din0(mul_ln34_fu_437_p0),.din1(mul_ln34_fu_437_p1),.dout(mul_ln34_fu_437_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U92(.din0(mul_ln49_fu_442_p0),.din1(mul_ln49_fu_442_p1),.dout(mul_ln49_fu_442_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U93(.din0(mul_ln62_fu_447_p0),.din1(mul_ln62_fu_447_p1),.dout(mul_ln62_fu_447_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U94(.din0(mul_ln75_fu_452_p0),.din1(mul_ln75_fu_452_p1),.dout(mul_ln75_fu_452_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U95(.din0(mul_ln88_fu_457_p0),.din1(mul_ln88_fu_457_p1),.dout(mul_ln88_fu_457_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U96(.din0(mul_ln101_fu_462_p0),.din1(mul_ln101_fu_462_p1),.dout(mul_ln101_fu_462_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U97(.din0(mul_ln114_fu_467_p0),.din1(mul_ln114_fu_467_p1),.dout(mul_ln114_fu_467_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U98(.din0(mul_ln127_fu_472_p0),.din1(mul_ln127_fu_472_p1),.dout(mul_ln127_fu_472_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U99(.din0(mul_ln140_fu_477_p0),.din1(mul_ln140_fu_477_p1),.dout(mul_ln140_fu_477_p2));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U100(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_518_p0),.din1(grp_fu_518_p1),.din2(grp_fu_518_p2),.ce(1'b1),.dout(grp_fu_518_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U101(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_526_p0),.din1(grp_fu_526_p1),.din2(grp_fu_526_p2),.ce(1'b1),.dout(grp_fu_526_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U102(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_534_p0),.din1(grp_fu_534_p1),.din2(grp_fu_534_p2),.ce(1'b1),.dout(grp_fu_534_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U103(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_542_p0),.din1(grp_fu_542_p1),.din2(grp_fu_542_p2),.ce(1'b1),.dout(grp_fu_542_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U104(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_550_p0),.din1(grp_fu_550_p1),.din2(grp_fu_550_p2),.ce(1'b1),.dout(grp_fu_550_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U105(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_558_p0),.din1(grp_fu_558_p1),.din2(grp_fu_558_p2),.ce(1'b1),.dout(grp_fu_558_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U106(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_566_p0),.din1(grp_fu_566_p1),.din2(grp_fu_566_p2),.ce(1'b1),.dout(grp_fu_566_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U107(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_574_p0),.din1(grp_fu_574_p1),.din2(grp_fu_574_p2),.ce(1'b1),.dout(grp_fu_574_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U108(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_582_p0),.din1(grp_fu_582_p1),.din2(grp_fu_582_p2),.ce(1'b1),.dout(grp_fu_582_p3));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_2_fu_203_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_203_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_203_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_203_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_94 <= 8'd0;
    end else if (((icmp_ln32_fu_301_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v5_fu_94 <= add_ln31_reg_605;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_203_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        v6_reg_191 <= add_ln32_reg_647;
    end else if (((icmp_ln31_fu_255_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v6_reg_191 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln31_reg_605 <= add_ln31_fu_261_p2;
        cmp11_reg_633 <= cmp11_fu_295_p2;
        mul_ln38_reg_628 <= mul_ln38_fu_289_p2;
        trunc_ln31_reg_623 <= trunc_ln31_fu_271_p1;
        zext_ln31_reg_610[7 : 0] <= zext_ln31_fu_267_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_reg_647 <= add_ln32_fu_311_p2;
        v6_cast_reg_641[7 : 0] <= v6_cast_fu_307_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        mul_ln101_reg_805 <= mul_ln101_fu_462_p2;
        mul_ln114_reg_810 <= mul_ln114_fu_467_p2;
        mul_ln127_reg_815 <= mul_ln127_fu_472_p2;
        mul_ln140_reg_825 <= mul_ln140_fu_477_p2;
        mul_ln34_reg_780 <= mul_ln34_fu_437_p2;
        mul_ln49_reg_785 <= mul_ln49_fu_442_p2;
        mul_ln62_reg_790 <= mul_ln62_fu_447_p2;
        mul_ln75_reg_795 <= mul_ln75_fu_452_p2;
        mul_ln88_reg_800 <= mul_ln88_fu_457_p2;
        v224_load_7_reg_820 <= v224_q0;
        v224_load_8_reg_830 <= v224_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        p_cast1684_reg_652[7 : 0] <= p_cast1684_fu_327_p1[7 : 0];
        p_cast1685_reg_658[7 : 0] <= p_cast1685_fu_337_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        p_cast1686_reg_664[7 : 0] <= p_cast1686_fu_347_p1[7 : 0];
        p_cast1687_reg_670[7 : 0] <= p_cast1687_fu_357_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        p_cast1688_reg_681[7 : 0] <= p_cast1688_fu_371_p1[7 : 0];
        p_cast1689_reg_687[7 : 0] <= p_cast1689_fu_381_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        p_cast1690_reg_708[7 : 0] <= p_cast1690_fu_399_p1[7 : 0];
        p_cast1691_reg_714[7 : 0] <= p_cast1691_fu_409_p1[7 : 0];
        v224_load_reg_693 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        v101_reg_875 <= v101_fu_514_p1;
        v11_reg_835 <= v11_fu_482_p1;
        v24_reg_840 <= v24_fu_486_p1;
        v35_reg_845 <= v35_fu_490_p1;
        v46_reg_850 <= v46_fu_494_p1;
        v57_reg_855 <= v57_fu_498_p1;
        v68_reg_860 <= v68_fu_502_p1;
        v79_reg_865 <= v79_fu_506_p1;
        v90_reg_870 <= v90_fu_510_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_load_1_reg_720 <= v224_q1;
        v224_load_2_reg_725 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_load_3_reg_740 <= v224_q0;
        v224_load_4_reg_745 <= v224_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_load_5_reg_760 <= v224_q0;
        v224_load_6_reg_765 <= v224_q1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_203_ap_done == 1'b0)) begin
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
    if ((((icmp_ln31_fu_255_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((icmp_ln31_fu_255_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_880_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_880_p_ce;
    end else begin
        grp_fu_880_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_884_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_884_p_ce;
    end else begin
        grp_fu_884_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_888_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_888_p_ce;
    end else begin
        grp_fu_888_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address0_local = p_cast1698_fu_429_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address0_local = p_cast1696_fu_421_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address0_local = p_cast1694_fu_413_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address0_local = p_cast1693_fu_389_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_address0_local = p_cast1692_fu_361_p1;
    end else begin
        v224_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address1_local = p_cast1699_fu_433_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address1_local = p_cast1697_fu_425_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address1_local = p_cast1695_fu_417_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address1_local = p_cast_fu_385_p1;
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
            if (((icmp_ln31_fu_255_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln32_fu_301_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_203_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
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
assign add_ln31_fu_261_p2 = (v5_fu_94 + 8'd1);
assign add_ln32_fu_311_p2 = (v6_reg_191 + 8'd9);
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
assign cmp11_fu_295_p2 = ((v5_fu_94 == 8'd0) ? 1'b1 : 1'b0);
assign empty_40_fu_321_p2 = (v6_reg_191 + 8'd1);
assign empty_43_fu_331_p2 = (v6_reg_191 + 8'd2);
assign empty_46_fu_341_p2 = (v6_reg_191 + 8'd3);
assign empty_49_fu_351_p2 = (v6_reg_191 + 8'd4);
assign empty_52_fu_365_p2 = (v6_reg_191 + 8'd5);
assign empty_55_fu_375_p2 = (v6_reg_191 + 8'd6);
assign empty_58_fu_393_p2 = (v6_reg_191 + 8'd7);
assign empty_61_fu_403_p2 = (v6_reg_191 + 8'd8);
assign grp_fu_148_p_ce = grp_fu_880_ce;
assign grp_fu_148_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_880_p_din0;
assign grp_fu_148_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_880_p_din1;
assign grp_fu_148_p_opcode = 2'd0;
assign grp_fu_152_p_ce = grp_fu_884_ce;
assign grp_fu_152_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_884_p_din0;
assign grp_fu_152_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_884_p_din1;
assign grp_fu_156_p_ce = grp_fu_888_ce;
assign grp_fu_156_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_888_p_din0;
assign grp_fu_156_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_grp_fu_888_p_din1;
assign grp_fu_518_p0 = grp_fu_518_p00;
assign grp_fu_518_p00 = v6_reg_191;
assign grp_fu_518_p1 = 16'd190;
assign grp_fu_518_p2 = zext_ln31_reg_610;
assign grp_fu_526_p0 = grp_fu_526_p00;
assign grp_fu_526_p00 = empty_40_fu_321_p2;
assign grp_fu_526_p1 = 16'd190;
assign grp_fu_526_p2 = zext_ln31_reg_610;
assign grp_fu_534_p0 = grp_fu_534_p00;
assign grp_fu_534_p00 = empty_43_fu_331_p2;
assign grp_fu_534_p1 = 16'd190;
assign grp_fu_534_p2 = zext_ln31_reg_610;
assign grp_fu_542_p0 = grp_fu_542_p00;
assign grp_fu_542_p00 = empty_46_fu_341_p2;
assign grp_fu_542_p1 = 16'd190;
assign grp_fu_542_p2 = zext_ln31_reg_610;
assign grp_fu_550_p0 = grp_fu_550_p00;
assign grp_fu_550_p00 = empty_49_fu_351_p2;
assign grp_fu_550_p1 = 16'd190;
assign grp_fu_550_p2 = zext_ln31_reg_610;
assign grp_fu_558_p0 = grp_fu_558_p00;
assign grp_fu_558_p00 = empty_52_fu_365_p2;
assign grp_fu_558_p1 = 16'd190;
assign grp_fu_558_p2 = zext_ln31_reg_610;
assign grp_fu_566_p0 = grp_fu_566_p00;
assign grp_fu_566_p00 = empty_55_fu_375_p2;
assign grp_fu_566_p1 = 16'd190;
assign grp_fu_566_p2 = zext_ln31_reg_610;
assign grp_fu_574_p0 = grp_fu_574_p00;
assign grp_fu_574_p00 = empty_58_fu_393_p2;
assign grp_fu_574_p1 = 16'd190;
assign grp_fu_574_p2 = zext_ln31_reg_610;
assign grp_fu_582_p0 = grp_fu_582_p00;
assign grp_fu_582_p00 = empty_61_fu_403_p2;
assign grp_fu_582_p1 = 16'd190;
assign grp_fu_582_p2 = zext_ln31_reg_610;
assign grp_kernel_2mm_node0_Pipeline_label_2_fu_203_ap_start = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_ap_start_reg;
assign icmp_ln31_fu_255_p2 = ((v5_fu_94 == 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_301_p2 = ((v6_reg_191 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln_fu_275_p4 = {{v5_fu_94[7:3]}};
assign mul_ln101_fu_462_p0 = p_cast1688_reg_681;
assign mul_ln101_fu_462_p1 = 16'd220;
assign mul_ln114_fu_467_p0 = p_cast1689_reg_687;
assign mul_ln114_fu_467_p1 = 16'd220;
assign mul_ln127_fu_472_p0 = p_cast1690_reg_708;
assign mul_ln127_fu_472_p1 = 16'd220;
assign mul_ln140_fu_477_p0 = p_cast1691_reg_714;
assign mul_ln140_fu_477_p1 = 16'd220;
assign mul_ln34_fu_437_p0 = v6_cast_reg_641;
assign mul_ln34_fu_437_p1 = 16'd220;
assign mul_ln38_fu_289_p0 = mul_ln38_fu_289_p00;
assign mul_ln38_fu_289_p00 = lshr_ln_fu_275_p4;
assign mul_ln38_fu_289_p1 = 13'd220;
assign mul_ln49_fu_442_p0 = p_cast1684_reg_652;
assign mul_ln49_fu_442_p1 = 16'd220;
assign mul_ln62_fu_447_p0 = p_cast1685_reg_658;
assign mul_ln62_fu_447_p1 = 16'd220;
assign mul_ln75_fu_452_p0 = p_cast1686_reg_664;
assign mul_ln75_fu_452_p1 = 16'd220;
assign mul_ln88_fu_457_p0 = p_cast1687_reg_670;
assign mul_ln88_fu_457_p1 = 16'd220;
assign p_cast1684_fu_327_p1 = empty_40_fu_321_p2;
assign p_cast1685_fu_337_p1 = empty_43_fu_331_p2;
assign p_cast1686_fu_347_p1 = empty_46_fu_341_p2;
assign p_cast1687_fu_357_p1 = empty_49_fu_351_p2;
assign p_cast1688_fu_371_p1 = empty_52_fu_365_p2;
assign p_cast1689_fu_381_p1 = empty_55_fu_375_p2;
assign p_cast1690_fu_399_p1 = empty_58_fu_393_p2;
assign p_cast1691_fu_409_p1 = empty_61_fu_403_p2;
assign p_cast1692_fu_361_p1 = grp_fu_518_p3;
assign p_cast1693_fu_389_p1 = grp_fu_534_p3;
assign p_cast1694_fu_413_p1 = grp_fu_542_p3;
assign p_cast1695_fu_417_p1 = grp_fu_550_p3;
assign p_cast1696_fu_421_p1 = grp_fu_558_p3;
assign p_cast1697_fu_425_p1 = grp_fu_566_p3;
assign p_cast1698_fu_429_p1 = grp_fu_574_p3;
assign p_cast1699_fu_433_p1 = grp_fu_582_p3;
assign p_cast_fu_385_p1 = grp_fu_526_p3;
assign trunc_ln31_fu_271_p1 = v5_fu_94[2:0];
assign v101_fu_514_p1 = v224_load_8_reg_830;
assign v11_fu_482_p1 = v224_load_reg_693;
assign v224_address0 = v224_address0_local;
assign v224_address1 = v224_address1_local;
assign v224_ce0 = v224_ce0_local;
assign v224_ce1 = v224_ce1_local;
assign v228_0_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_0_address0;
assign v228_0_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_0_address1;
assign v228_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_0_ce0;
assign v228_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_0_ce1;
assign v228_1_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_1_address0;
assign v228_1_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_1_address1;
assign v228_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_1_ce0;
assign v228_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_1_ce1;
assign v228_2_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_2_address0;
assign v228_2_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_2_address1;
assign v228_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_2_ce0;
assign v228_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_2_ce1;
assign v228_3_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_3_address0;
assign v228_3_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_3_address1;
assign v228_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_3_ce0;
assign v228_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_3_ce1;
assign v228_4_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_4_address0;
assign v228_4_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_4_address1;
assign v228_4_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_4_ce0;
assign v228_4_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_4_ce1;
assign v228_5_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_5_address0;
assign v228_5_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_5_address1;
assign v228_5_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_5_ce0;
assign v228_5_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_5_ce1;
assign v228_6_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_6_address0;
assign v228_6_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_6_address1;
assign v228_6_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_6_ce0;
assign v228_6_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_6_ce1;
assign v228_7_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_7_address0;
assign v228_7_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_7_address1;
assign v228_7_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_7_ce0;
assign v228_7_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v228_7_ce1;
assign v229_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_address0;
assign v229_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_address1;
assign v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_ce0;
assign v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_ce1;
assign v229_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_d0;
assign v229_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_d1;
assign v229_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_we0;
assign v229_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_203_v229_we1;
assign v236_read = v236_read_local;
assign v24_fu_486_p1 = v224_load_1_reg_720;
assign v35_fu_490_p1 = v224_load_2_reg_725;
assign v46_fu_494_p1 = v224_load_3_reg_740;
assign v57_fu_498_p1 = v224_load_4_reg_745;
assign v68_fu_502_p1 = v224_load_5_reg_760;
assign v6_cast_fu_307_p1 = v6_reg_191;
assign v79_fu_506_p1 = v224_load_6_reg_765;
assign v90_fu_510_p1 = v224_load_7_reg_820;
assign zext_ln31_fu_267_p1 = v5_fu_94;
always @ (posedge ap_clk) begin
    zext_ln31_reg_610[15:8] <= 8'b00000000;
    v6_cast_reg_641[15:8] <= 8'b00000000;
    p_cast1684_reg_652[15:8] <= 8'b00000000;
    p_cast1685_reg_658[15:8] <= 8'b00000000;
    p_cast1686_reg_664[15:8] <= 8'b00000000;
    p_cast1687_reg_670[15:8] <= 8'b00000000;
    p_cast1688_reg_681[15:8] <= 8'b00000000;
    p_cast1689_reg_687[15:8] <= 8'b00000000;
    p_cast1690_reg_708[15:8] <= 8'b00000000;
    p_cast1691_reg_714[15:8] <= 8'b00000000;
end
endmodule 
