module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_address0,v224_ce0,v224_q0,v224_address1,v224_ce1,v224_q1,v228_0_address0,v228_0_ce0,v228_0_q0,v228_0_address1,v228_0_ce1,v228_0_q1,v228_1_address0,v228_1_ce0,v228_1_q0,v228_1_address1,v228_1_ce1,v228_1_q1,v229_address0,v229_ce0,v229_we0,v229_d0,v229_q0,v229_address1,v229_ce1,v229_we1,v229_d1,v229_q1,v4,grp_fu_136_p_din0,grp_fu_136_p_din1,grp_fu_136_p_opcode,grp_fu_136_p_dout0,grp_fu_136_p_ce,grp_fu_140_p_din0,grp_fu_140_p_din1,grp_fu_140_p_dout0,grp_fu_140_p_ce,grp_fu_144_p_din0,grp_fu_144_p_din1,grp_fu_144_p_dout0,grp_fu_144_p_ce); 
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
wire   [7:0] add_ln31_fu_235_p2;
reg   [7:0] add_ln31_reg_579;
wire    ap_CS_fsm_state2;
wire   [15:0] zext_ln31_fu_241_p1;
reg   [15:0] zext_ln31_reg_584;
wire   [0:0] trunc_ln31_fu_245_p1;
reg   [0:0] trunc_ln31_reg_597;
wire   [14:0] mul_ln38_fu_263_p2;
reg   [14:0] mul_ln38_reg_602;
wire   [0:0] cmp11_fu_269_p2;
reg   [0:0] cmp11_reg_607;
wire   [15:0] v6_cast_fu_281_p1;
reg   [15:0] v6_cast_reg_615;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln32_fu_285_p2;
reg   [7:0] add_ln32_reg_621;
wire   [15:0] p_cast1108_fu_301_p1;
reg   [15:0] p_cast1108_reg_626;
wire    ap_CS_fsm_state4;
wire   [15:0] p_cast1109_fu_311_p1;
reg   [15:0] p_cast1109_reg_632;
wire   [15:0] p_cast1110_fu_321_p1;
reg   [15:0] p_cast1110_reg_638;
wire    ap_CS_fsm_state5;
wire   [15:0] p_cast1111_fu_331_p1;
reg   [15:0] p_cast1111_reg_644;
wire    ap_CS_fsm_state6;
wire   [15:0] p_cast1112_fu_345_p1;
reg   [15:0] p_cast1112_reg_655;
wire   [15:0] p_cast1113_fu_355_p1;
reg   [15:0] p_cast1113_reg_661;
reg   [31:0] v224_load_reg_667;
wire    ap_CS_fsm_state7;
wire   [15:0] p_cast1114_fu_373_p1;
reg   [15:0] p_cast1114_reg_682;
wire   [15:0] p_cast1115_fu_383_p1;
reg   [15:0] p_cast1115_reg_688;
reg   [31:0] v224_load_1_reg_694;
wire    ap_CS_fsm_state8;
reg   [31:0] v224_load_2_reg_699;
reg   [31:0] v224_load_3_reg_714;
wire    ap_CS_fsm_state9;
reg   [31:0] v224_load_4_reg_719;
reg   [31:0] v224_load_5_reg_734;
wire    ap_CS_fsm_state10;
reg   [31:0] v224_load_6_reg_739;
wire   [15:0] mul_ln34_fu_411_p2;
reg   [15:0] mul_ln34_reg_754;
wire    ap_CS_fsm_state11;
wire   [15:0] mul_ln49_fu_416_p2;
reg   [15:0] mul_ln49_reg_759;
wire   [15:0] mul_ln62_fu_421_p2;
reg   [15:0] mul_ln62_reg_764;
wire   [15:0] mul_ln75_fu_426_p2;
reg   [15:0] mul_ln75_reg_769;
wire   [15:0] mul_ln88_fu_431_p2;
reg   [15:0] mul_ln88_reg_774;
wire   [15:0] mul_ln101_fu_436_p2;
reg   [15:0] mul_ln101_reg_779;
wire   [15:0] mul_ln114_fu_441_p2;
reg   [15:0] mul_ln114_reg_784;
wire   [15:0] mul_ln127_fu_446_p2;
reg   [15:0] mul_ln127_reg_789;
reg   [31:0] v224_load_7_reg_794;
wire   [15:0] mul_ln140_fu_451_p2;
reg   [15:0] mul_ln140_reg_799;
reg   [31:0] v224_load_8_reg_804;
wire   [31:0] v11_fu_456_p1;
reg   [31:0] v11_reg_809;
wire    ap_CS_fsm_state12;
wire   [31:0] v24_fu_460_p1;
reg   [31:0] v24_reg_814;
wire   [31:0] v35_fu_464_p1;
reg   [31:0] v35_reg_819;
wire   [31:0] v46_fu_468_p1;
reg   [31:0] v46_reg_824;
wire   [31:0] v57_fu_472_p1;
reg   [31:0] v57_reg_829;
wire   [31:0] v68_fu_476_p1;
reg   [31:0] v68_reg_834;
wire   [31:0] v79_fu_480_p1;
reg   [31:0] v79_reg_839;
wire   [31:0] v90_fu_484_p1;
reg   [31:0] v90_reg_844;
wire   [31:0] v101_fu_488_p1;
reg   [31:0] v101_reg_849;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_189_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_189_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_189_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_189_ap_ready;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v228_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v228_0_ce0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v228_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v228_0_ce1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v228_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v228_1_ce0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v228_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v228_1_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_189_grp_fu_854_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_189_grp_fu_854_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_189_grp_fu_854_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_189_grp_fu_854_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_189_grp_fu_858_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_189_grp_fu_858_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_189_grp_fu_858_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_189_grp_fu_862_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_189_grp_fu_862_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_189_grp_fu_862_p_ce;
reg   [7:0] v6_reg_177;
wire   [0:0] icmp_ln31_fu_229_p2;
wire    ap_CS_fsm_state13;
reg    grp_kernel_2mm_node0_Pipeline_label_2_fu_189_ap_start_reg;
wire   [63:0] p_cast1116_fu_335_p1;
wire   [63:0] p_cast_fu_359_p1;
wire   [63:0] p_cast1117_fu_363_p1;
wire   [63:0] p_cast1118_fu_387_p1;
wire   [63:0] p_cast1119_fu_391_p1;
wire   [63:0] p_cast1120_fu_395_p1;
wire   [63:0] p_cast1121_fu_399_p1;
wire   [63:0] p_cast1122_fu_403_p1;
wire   [63:0] p_cast1123_fu_407_p1;
reg   [7:0] v5_fu_80;
wire   [0:0] icmp_ln32_fu_275_p2;
reg    ap_block_state1;
reg    v236_read_local;
reg    v224_ce0_local;
reg   [15:0] v224_address0_local;
reg    v224_ce1_local;
reg   [15:0] v224_address1_local;
wire   [6:0] lshr_ln_fu_249_p4;
wire   [6:0] mul_ln38_fu_263_p0;
wire   [8:0] mul_ln38_fu_263_p1;
wire   [7:0] empty_882_fu_295_p2;
wire   [7:0] empty_885_fu_305_p2;
wire   [7:0] empty_888_fu_315_p2;
wire   [7:0] empty_891_fu_325_p2;
wire   [15:0] grp_fu_492_p3;
wire   [7:0] empty_894_fu_339_p2;
wire   [7:0] empty_897_fu_349_p2;
wire   [15:0] grp_fu_500_p3;
wire   [15:0] grp_fu_508_p3;
wire   [7:0] empty_900_fu_367_p2;
wire   [7:0] empty_903_fu_377_p2;
wire   [15:0] grp_fu_516_p3;
wire   [15:0] grp_fu_524_p3;
wire   [15:0] grp_fu_532_p3;
wire   [15:0] grp_fu_540_p3;
wire   [15:0] grp_fu_548_p3;
wire   [15:0] grp_fu_556_p3;
wire   [7:0] mul_ln34_fu_411_p0;
wire   [8:0] mul_ln34_fu_411_p1;
wire   [7:0] mul_ln49_fu_416_p0;
wire   [8:0] mul_ln49_fu_416_p1;
wire   [7:0] mul_ln62_fu_421_p0;
wire   [8:0] mul_ln62_fu_421_p1;
wire   [7:0] mul_ln75_fu_426_p0;
wire   [8:0] mul_ln75_fu_426_p1;
wire   [7:0] mul_ln88_fu_431_p0;
wire   [8:0] mul_ln88_fu_431_p1;
wire   [7:0] mul_ln101_fu_436_p0;
wire   [8:0] mul_ln101_fu_436_p1;
wire   [7:0] mul_ln114_fu_441_p0;
wire   [8:0] mul_ln114_fu_441_p1;
wire   [7:0] mul_ln127_fu_446_p0;
wire   [8:0] mul_ln127_fu_446_p1;
wire   [7:0] mul_ln140_fu_451_p0;
wire   [8:0] mul_ln140_fu_451_p1;
wire   [7:0] grp_fu_492_p0;
wire   [7:0] grp_fu_492_p1;
wire   [7:0] grp_fu_492_p2;
wire   [7:0] grp_fu_500_p0;
wire   [7:0] grp_fu_500_p1;
wire   [7:0] grp_fu_500_p2;
wire   [7:0] grp_fu_508_p0;
wire   [7:0] grp_fu_508_p1;
wire   [7:0] grp_fu_508_p2;
wire   [7:0] grp_fu_516_p0;
wire   [7:0] grp_fu_516_p1;
wire   [7:0] grp_fu_516_p2;
wire   [7:0] grp_fu_524_p0;
wire   [7:0] grp_fu_524_p1;
wire   [7:0] grp_fu_524_p2;
wire   [7:0] grp_fu_532_p0;
wire   [7:0] grp_fu_532_p1;
wire   [7:0] grp_fu_532_p2;
wire   [7:0] grp_fu_540_p0;
wire   [7:0] grp_fu_540_p1;
wire   [7:0] grp_fu_540_p2;
wire   [7:0] grp_fu_548_p0;
wire   [7:0] grp_fu_548_p1;
wire   [7:0] grp_fu_548_p2;
wire   [7:0] grp_fu_556_p0;
wire   [7:0] grp_fu_556_p1;
wire   [7:0] grp_fu_556_p2;
reg    grp_fu_854_ce;
reg    grp_fu_858_ce;
reg    grp_fu_862_ce;
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
wire   [15:0] grp_fu_492_p00;
wire   [15:0] grp_fu_500_p00;
wire   [15:0] grp_fu_508_p00;
wire   [15:0] grp_fu_516_p00;
wire   [15:0] grp_fu_524_p00;
wire   [15:0] grp_fu_532_p00;
wire   [15:0] grp_fu_540_p00;
wire   [15:0] grp_fu_548_p00;
wire   [15:0] grp_fu_556_p00;
wire   [14:0] mul_ln38_fu_263_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 13'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_2_fu_189_ap_start_reg = 1'b0;
#0 v5_fu_80 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_2 grp_kernel_2mm_node0_Pipeline_label_2_fu_189(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_2_fu_189_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_2_fu_189_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_2_fu_189_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_2_fu_189_ap_ready),.mul_ln38(mul_ln38_reg_602),.v228_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v228_0_ce1),.v228_0_q1(v228_0_q1),.v228_1_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v228_1_ce1),.v228_1_q1(v228_1_q1),.mul_ln34(mul_ln34_reg_754),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v229_d1),.v229_q1(v229_q1),.mul_ln49(mul_ln49_reg_759),.mul_ln62(mul_ln62_reg_764),.mul_ln75(mul_ln75_reg_769),.mul_ln88(mul_ln88_reg_774),.mul_ln101(mul_ln101_reg_779),.mul_ln114(mul_ln114_reg_784),.mul_ln127(mul_ln127_reg_789),.mul_ln140(mul_ln140_reg_799),.v4(v4),.cmp11(cmp11_reg_607),.empty(trunc_ln31_reg_597),.v11(v11_reg_809),.v24(v24_reg_814),.v35(v35_reg_819),.v46(v46_reg_824),.v57(v57_reg_829),.v68(v68_reg_834),.v79(v79_reg_839),.v90(v90_reg_844),.v101(v101_reg_849),.grp_fu_854_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_189_grp_fu_854_p_din0),.grp_fu_854_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_189_grp_fu_854_p_din1),.grp_fu_854_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_189_grp_fu_854_p_opcode),.grp_fu_854_p_dout0(grp_fu_136_p_dout0),.grp_fu_854_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_189_grp_fu_854_p_ce),.grp_fu_858_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_189_grp_fu_858_p_din0),.grp_fu_858_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_189_grp_fu_858_p_din1),.grp_fu_858_p_dout0(grp_fu_140_p_dout0),.grp_fu_858_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_189_grp_fu_858_p_ce),.grp_fu_862_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_189_grp_fu_862_p_din0),.grp_fu_862_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_189_grp_fu_862_p_din1),.grp_fu_862_p_dout0(grp_fu_144_p_dout0),.grp_fu_862_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_189_grp_fu_862_p_ce));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U1210(.din0(mul_ln38_fu_263_p0),.din1(mul_ln38_fu_263_p1),.dout(mul_ln38_fu_263_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1211(.din0(mul_ln34_fu_411_p0),.din1(mul_ln34_fu_411_p1),.dout(mul_ln34_fu_411_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1212(.din0(mul_ln49_fu_416_p0),.din1(mul_ln49_fu_416_p1),.dout(mul_ln49_fu_416_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1213(.din0(mul_ln62_fu_421_p0),.din1(mul_ln62_fu_421_p1),.dout(mul_ln62_fu_421_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1214(.din0(mul_ln75_fu_426_p0),.din1(mul_ln75_fu_426_p1),.dout(mul_ln75_fu_426_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1215(.din0(mul_ln88_fu_431_p0),.din1(mul_ln88_fu_431_p1),.dout(mul_ln88_fu_431_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1216(.din0(mul_ln101_fu_436_p0),.din1(mul_ln101_fu_436_p1),.dout(mul_ln101_fu_436_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1217(.din0(mul_ln114_fu_441_p0),.din1(mul_ln114_fu_441_p1),.dout(mul_ln114_fu_441_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1218(.din0(mul_ln127_fu_446_p0),.din1(mul_ln127_fu_446_p1),.dout(mul_ln127_fu_446_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1219(.din0(mul_ln140_fu_451_p0),.din1(mul_ln140_fu_451_p1),.dout(mul_ln140_fu_451_p2));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U1220(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_492_p0),.din1(grp_fu_492_p1),.din2(grp_fu_492_p2),.ce(1'b1),.dout(grp_fu_492_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U1221(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_500_p0),.din1(grp_fu_500_p1),.din2(grp_fu_500_p2),.ce(1'b1),.dout(grp_fu_500_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U1222(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_508_p0),.din1(grp_fu_508_p1),.din2(grp_fu_508_p2),.ce(1'b1),.dout(grp_fu_508_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U1223(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_516_p0),.din1(grp_fu_516_p1),.din2(grp_fu_516_p2),.ce(1'b1),.dout(grp_fu_516_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U1224(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_524_p0),.din1(grp_fu_524_p1),.din2(grp_fu_524_p2),.ce(1'b1),.dout(grp_fu_524_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U1225(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_532_p0),.din1(grp_fu_532_p1),.din2(grp_fu_532_p2),.ce(1'b1),.dout(grp_fu_532_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U1226(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_540_p0),.din1(grp_fu_540_p1),.din2(grp_fu_540_p2),.ce(1'b1),.dout(grp_fu_540_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U1227(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_548_p0),.din1(grp_fu_548_p1),.din2(grp_fu_548_p2),.ce(1'b1),.dout(grp_fu_548_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U1228(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_556_p0),.din1(grp_fu_556_p1),.din2(grp_fu_556_p2),.ce(1'b1),.dout(grp_fu_556_p3));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_2_fu_189_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_189_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_189_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_189_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_80 <= 8'd0;
    end else if (((icmp_ln32_fu_275_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v5_fu_80 <= add_ln31_reg_579;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_189_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        v6_reg_177 <= add_ln32_reg_621;
    end else if (((icmp_ln31_fu_229_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v6_reg_177 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln31_reg_579 <= add_ln31_fu_235_p2;
        cmp11_reg_607 <= cmp11_fu_269_p2;
        mul_ln38_reg_602 <= mul_ln38_fu_263_p2;
        trunc_ln31_reg_597 <= trunc_ln31_fu_245_p1;
        zext_ln31_reg_584[7 : 0] <= zext_ln31_fu_241_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_reg_621 <= add_ln32_fu_285_p2;
        v6_cast_reg_615[7 : 0] <= v6_cast_fu_281_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        mul_ln101_reg_779 <= mul_ln101_fu_436_p2;
        mul_ln114_reg_784 <= mul_ln114_fu_441_p2;
        mul_ln127_reg_789 <= mul_ln127_fu_446_p2;
        mul_ln140_reg_799 <= mul_ln140_fu_451_p2;
        mul_ln34_reg_754 <= mul_ln34_fu_411_p2;
        mul_ln49_reg_759 <= mul_ln49_fu_416_p2;
        mul_ln62_reg_764 <= mul_ln62_fu_421_p2;
        mul_ln75_reg_769 <= mul_ln75_fu_426_p2;
        mul_ln88_reg_774 <= mul_ln88_fu_431_p2;
        v224_load_7_reg_794 <= v224_q0;
        v224_load_8_reg_804 <= v224_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        p_cast1108_reg_626[7 : 0] <= p_cast1108_fu_301_p1[7 : 0];
        p_cast1109_reg_632[7 : 0] <= p_cast1109_fu_311_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        p_cast1110_reg_638[7 : 0] <= p_cast1110_fu_321_p1[7 : 0];
        p_cast1111_reg_644[7 : 0] <= p_cast1111_fu_331_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        p_cast1112_reg_655[7 : 0] <= p_cast1112_fu_345_p1[7 : 0];
        p_cast1113_reg_661[7 : 0] <= p_cast1113_fu_355_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        p_cast1114_reg_682[7 : 0] <= p_cast1114_fu_373_p1[7 : 0];
        p_cast1115_reg_688[7 : 0] <= p_cast1115_fu_383_p1[7 : 0];
        v224_load_reg_667 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        v101_reg_849 <= v101_fu_488_p1;
        v11_reg_809 <= v11_fu_456_p1;
        v24_reg_814 <= v24_fu_460_p1;
        v35_reg_819 <= v35_fu_464_p1;
        v46_reg_824 <= v46_fu_468_p1;
        v57_reg_829 <= v57_fu_472_p1;
        v68_reg_834 <= v68_fu_476_p1;
        v79_reg_839 <= v79_fu_480_p1;
        v90_reg_844 <= v90_fu_484_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_load_1_reg_694 <= v224_q1;
        v224_load_2_reg_699 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_load_3_reg_714 <= v224_q0;
        v224_load_4_reg_719 <= v224_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_load_5_reg_734 <= v224_q0;
        v224_load_6_reg_739 <= v224_q1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_189_ap_done == 1'b0)) begin
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
    if ((((icmp_ln31_fu_229_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((icmp_ln31_fu_229_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_854_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_189_grp_fu_854_p_ce;
    end else begin
        grp_fu_854_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_858_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_189_grp_fu_858_p_ce;
    end else begin
        grp_fu_858_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_862_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_189_grp_fu_862_p_ce;
    end else begin
        grp_fu_862_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address0_local = p_cast1122_fu_403_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address0_local = p_cast1120_fu_395_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address0_local = p_cast1118_fu_387_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address0_local = p_cast1117_fu_363_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_address0_local = p_cast1116_fu_335_p1;
    end else begin
        v224_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address1_local = p_cast1123_fu_407_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address1_local = p_cast1121_fu_399_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address1_local = p_cast1119_fu_391_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address1_local = p_cast_fu_359_p1;
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
            if (((icmp_ln31_fu_229_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln32_fu_275_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_189_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
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
assign add_ln31_fu_235_p2 = (v5_fu_80 + 8'd1);
assign add_ln32_fu_285_p2 = (v6_reg_177 + 8'd9);
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
assign cmp11_fu_269_p2 = ((v5_fu_80 == 8'd0) ? 1'b1 : 1'b0);
assign empty_882_fu_295_p2 = (v6_reg_177 + 8'd1);
assign empty_885_fu_305_p2 = (v6_reg_177 + 8'd2);
assign empty_888_fu_315_p2 = (v6_reg_177 + 8'd3);
assign empty_891_fu_325_p2 = (v6_reg_177 + 8'd4);
assign empty_894_fu_339_p2 = (v6_reg_177 + 8'd5);
assign empty_897_fu_349_p2 = (v6_reg_177 + 8'd6);
assign empty_900_fu_367_p2 = (v6_reg_177 + 8'd7);
assign empty_903_fu_377_p2 = (v6_reg_177 + 8'd8);
assign grp_fu_136_p_ce = grp_fu_854_ce;
assign grp_fu_136_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_189_grp_fu_854_p_din0;
assign grp_fu_136_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_189_grp_fu_854_p_din1;
assign grp_fu_136_p_opcode = 2'd0;
assign grp_fu_140_p_ce = grp_fu_858_ce;
assign grp_fu_140_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_189_grp_fu_858_p_din0;
assign grp_fu_140_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_189_grp_fu_858_p_din1;
assign grp_fu_144_p_ce = grp_fu_862_ce;
assign grp_fu_144_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_189_grp_fu_862_p_din0;
assign grp_fu_144_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_189_grp_fu_862_p_din1;
assign grp_fu_492_p0 = grp_fu_492_p00;
assign grp_fu_492_p00 = v6_reg_177;
assign grp_fu_492_p1 = 16'd190;
assign grp_fu_492_p2 = zext_ln31_reg_584;
assign grp_fu_500_p0 = grp_fu_500_p00;
assign grp_fu_500_p00 = empty_882_fu_295_p2;
assign grp_fu_500_p1 = 16'd190;
assign grp_fu_500_p2 = zext_ln31_reg_584;
assign grp_fu_508_p0 = grp_fu_508_p00;
assign grp_fu_508_p00 = empty_885_fu_305_p2;
assign grp_fu_508_p1 = 16'd190;
assign grp_fu_508_p2 = zext_ln31_reg_584;
assign grp_fu_516_p0 = grp_fu_516_p00;
assign grp_fu_516_p00 = empty_888_fu_315_p2;
assign grp_fu_516_p1 = 16'd190;
assign grp_fu_516_p2 = zext_ln31_reg_584;
assign grp_fu_524_p0 = grp_fu_524_p00;
assign grp_fu_524_p00 = empty_891_fu_325_p2;
assign grp_fu_524_p1 = 16'd190;
assign grp_fu_524_p2 = zext_ln31_reg_584;
assign grp_fu_532_p0 = grp_fu_532_p00;
assign grp_fu_532_p00 = empty_894_fu_339_p2;
assign grp_fu_532_p1 = 16'd190;
assign grp_fu_532_p2 = zext_ln31_reg_584;
assign grp_fu_540_p0 = grp_fu_540_p00;
assign grp_fu_540_p00 = empty_897_fu_349_p2;
assign grp_fu_540_p1 = 16'd190;
assign grp_fu_540_p2 = zext_ln31_reg_584;
assign grp_fu_548_p0 = grp_fu_548_p00;
assign grp_fu_548_p00 = empty_900_fu_367_p2;
assign grp_fu_548_p1 = 16'd190;
assign grp_fu_548_p2 = zext_ln31_reg_584;
assign grp_fu_556_p0 = grp_fu_556_p00;
assign grp_fu_556_p00 = empty_903_fu_377_p2;
assign grp_fu_556_p1 = 16'd190;
assign grp_fu_556_p2 = zext_ln31_reg_584;
assign grp_kernel_2mm_node0_Pipeline_label_2_fu_189_ap_start = grp_kernel_2mm_node0_Pipeline_label_2_fu_189_ap_start_reg;
assign icmp_ln31_fu_229_p2 = ((v5_fu_80 == 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_275_p2 = ((v6_reg_177 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln_fu_249_p4 = {{v5_fu_80[7:1]}};
assign mul_ln101_fu_436_p0 = p_cast1112_reg_655;
assign mul_ln101_fu_436_p1 = 16'd220;
assign mul_ln114_fu_441_p0 = p_cast1113_reg_661;
assign mul_ln114_fu_441_p1 = 16'd220;
assign mul_ln127_fu_446_p0 = p_cast1114_reg_682;
assign mul_ln127_fu_446_p1 = 16'd220;
assign mul_ln140_fu_451_p0 = p_cast1115_reg_688;
assign mul_ln140_fu_451_p1 = 16'd220;
assign mul_ln34_fu_411_p0 = v6_cast_reg_615;
assign mul_ln34_fu_411_p1 = 16'd220;
assign mul_ln38_fu_263_p0 = mul_ln38_fu_263_p00;
assign mul_ln38_fu_263_p00 = lshr_ln_fu_249_p4;
assign mul_ln38_fu_263_p1 = 15'd220;
assign mul_ln49_fu_416_p0 = p_cast1108_reg_626;
assign mul_ln49_fu_416_p1 = 16'd220;
assign mul_ln62_fu_421_p0 = p_cast1109_reg_632;
assign mul_ln62_fu_421_p1 = 16'd220;
assign mul_ln75_fu_426_p0 = p_cast1110_reg_638;
assign mul_ln75_fu_426_p1 = 16'd220;
assign mul_ln88_fu_431_p0 = p_cast1111_reg_644;
assign mul_ln88_fu_431_p1 = 16'd220;
assign p_cast1108_fu_301_p1 = empty_882_fu_295_p2;
assign p_cast1109_fu_311_p1 = empty_885_fu_305_p2;
assign p_cast1110_fu_321_p1 = empty_888_fu_315_p2;
assign p_cast1111_fu_331_p1 = empty_891_fu_325_p2;
assign p_cast1112_fu_345_p1 = empty_894_fu_339_p2;
assign p_cast1113_fu_355_p1 = empty_897_fu_349_p2;
assign p_cast1114_fu_373_p1 = empty_900_fu_367_p2;
assign p_cast1115_fu_383_p1 = empty_903_fu_377_p2;
assign p_cast1116_fu_335_p1 = grp_fu_492_p3;
assign p_cast1117_fu_363_p1 = grp_fu_508_p3;
assign p_cast1118_fu_387_p1 = grp_fu_516_p3;
assign p_cast1119_fu_391_p1 = grp_fu_524_p3;
assign p_cast1120_fu_395_p1 = grp_fu_532_p3;
assign p_cast1121_fu_399_p1 = grp_fu_540_p3;
assign p_cast1122_fu_403_p1 = grp_fu_548_p3;
assign p_cast1123_fu_407_p1 = grp_fu_556_p3;
assign p_cast_fu_359_p1 = grp_fu_500_p3;
assign trunc_ln31_fu_245_p1 = v5_fu_80[0:0];
assign v101_fu_488_p1 = v224_load_8_reg_804;
assign v11_fu_456_p1 = v224_load_reg_667;
assign v224_address0 = v224_address0_local;
assign v224_address1 = v224_address1_local;
assign v224_ce0 = v224_ce0_local;
assign v224_ce1 = v224_ce1_local;
assign v228_0_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v228_0_address0;
assign v228_0_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v228_0_address1;
assign v228_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v228_0_ce0;
assign v228_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v228_0_ce1;
assign v228_1_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v228_1_address0;
assign v228_1_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v228_1_address1;
assign v228_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v228_1_ce0;
assign v228_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v228_1_ce1;
assign v229_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v229_address0;
assign v229_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v229_address1;
assign v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v229_ce0;
assign v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v229_ce1;
assign v229_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v229_d0;
assign v229_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v229_d1;
assign v229_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v229_we0;
assign v229_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_189_v229_we1;
assign v236_read = v236_read_local;
assign v24_fu_460_p1 = v224_load_1_reg_694;
assign v35_fu_464_p1 = v224_load_2_reg_699;
assign v46_fu_468_p1 = v224_load_3_reg_714;
assign v57_fu_472_p1 = v224_load_4_reg_719;
assign v68_fu_476_p1 = v224_load_5_reg_734;
assign v6_cast_fu_281_p1 = v6_reg_177;
assign v79_fu_480_p1 = v224_load_6_reg_739;
assign v90_fu_484_p1 = v224_load_7_reg_794;
assign zext_ln31_fu_241_p1 = v5_fu_80;
always @ (posedge ap_clk) begin
    zext_ln31_reg_584[15:8] <= 8'b00000000;
    v6_cast_reg_615[15:8] <= 8'b00000000;
    p_cast1108_reg_626[15:8] <= 8'b00000000;
    p_cast1109_reg_632[15:8] <= 8'b00000000;
    p_cast1110_reg_638[15:8] <= 8'b00000000;
    p_cast1111_reg_644[15:8] <= 8'b00000000;
    p_cast1112_reg_655[15:8] <= 8'b00000000;
    p_cast1113_reg_661[15:8] <= 8'b00000000;
    p_cast1114_reg_682[15:8] <= 8'b00000000;
    p_cast1115_reg_688[15:8] <= 8'b00000000;
end
endmodule 