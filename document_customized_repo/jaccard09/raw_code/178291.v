module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_address0,v226_ce0,v226_q0,v226_address1,v226_ce1,v226_q1,v227_0_address0,v227_0_ce0,v227_0_q0,v227_0_address1,v227_0_ce1,v227_0_q1,v227_1_address0,v227_1_ce0,v227_1_q0,v227_1_address1,v227_1_ce1,v227_1_q1,v227_2_address0,v227_2_ce0,v227_2_q0,v227_2_address1,v227_2_ce1,v227_2_q1,v227_3_address0,v227_3_ce0,v227_3_q0,v227_3_address1,v227_3_ce1,v227_3_q1,v227_4_address0,v227_4_ce0,v227_4_q0,v227_4_address1,v227_4_ce1,v227_4_q1,v227_5_address0,v227_5_ce0,v227_5_q0,v227_5_address1,v227_5_ce1,v227_5_q1,v227_6_address0,v227_6_ce0,v227_6_q0,v227_6_address1,v227_6_ce1,v227_6_q1,v227_7_address0,v227_7_ce0,v227_7_q0,v227_7_address1,v227_7_ce1,v227_7_q1,v236_din,v236_full_n,v236_write,v225_address0,v225_ce0,v225_we0,v225_d0,v225_q0,v225_address1,v225_ce1,v225_we1,v225_d1,v225_q1,v113,grp_fu_152_p_din0,grp_fu_152_p_din1,grp_fu_152_p_dout0,grp_fu_152_p_ce,grp_fu_156_p_din0,grp_fu_156_p_din1,grp_fu_156_p_dout0,grp_fu_156_p_ce,grp_fu_160_p_din0,grp_fu_160_p_din1,grp_fu_160_p_opcode,grp_fu_160_p_dout0,grp_fu_160_p_ce); 
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
output  [15:0] v226_address0;
output   v226_ce0;
input  [31:0] v226_q0;
output  [15:0] v226_address1;
output   v226_ce1;
input  [31:0] v226_q1;
output  [12:0] v227_0_address0;
output   v227_0_ce0;
input  [31:0] v227_0_q0;
output  [12:0] v227_0_address1;
output   v227_0_ce1;
input  [31:0] v227_0_q1;
output  [12:0] v227_1_address0;
output   v227_1_ce0;
input  [31:0] v227_1_q0;
output  [12:0] v227_1_address1;
output   v227_1_ce1;
input  [31:0] v227_1_q1;
output  [12:0] v227_2_address0;
output   v227_2_ce0;
input  [31:0] v227_2_q0;
output  [12:0] v227_2_address1;
output   v227_2_ce1;
input  [31:0] v227_2_q1;
output  [12:0] v227_3_address0;
output   v227_3_ce0;
input  [31:0] v227_3_q0;
output  [12:0] v227_3_address1;
output   v227_3_ce1;
input  [31:0] v227_3_q1;
output  [12:0] v227_4_address0;
output   v227_4_ce0;
input  [31:0] v227_4_q0;
output  [12:0] v227_4_address1;
output   v227_4_ce1;
input  [31:0] v227_4_q1;
output  [12:0] v227_5_address0;
output   v227_5_ce0;
input  [31:0] v227_5_q0;
output  [12:0] v227_5_address1;
output   v227_5_ce1;
input  [31:0] v227_5_q1;
output  [12:0] v227_6_address0;
output   v227_6_ce0;
input  [31:0] v227_6_q0;
output  [12:0] v227_6_address1;
output   v227_6_ce1;
input  [31:0] v227_6_q1;
output  [12:0] v227_7_address0;
output   v227_7_ce0;
input  [31:0] v227_7_q0;
output  [12:0] v227_7_address1;
output   v227_7_ce1;
input  [31:0] v227_7_q1;
output  [0:0] v236_din;
input   v236_full_n;
output   v236_write;
output  [15:0] v225_address0;
output   v225_ce0;
output   v225_we0;
output  [31:0] v225_d0;
input  [31:0] v225_q0;
output  [15:0] v225_address1;
output   v225_ce1;
output   v225_we1;
output  [31:0] v225_d1;
input  [31:0] v225_q1;
input  [31:0] v113;
output  [31:0] grp_fu_152_p_din0;
output  [31:0] grp_fu_152_p_din1;
input  [31:0] grp_fu_152_p_dout0;
output   grp_fu_152_p_ce;
output  [31:0] grp_fu_156_p_din0;
output  [31:0] grp_fu_156_p_din1;
input  [31:0] grp_fu_156_p_dout0;
output   grp_fu_156_p_ce;
output  [31:0] grp_fu_160_p_din0;
output  [31:0] grp_fu_160_p_din1;
output  [1:0] grp_fu_160_p_opcode;
input  [31:0] grp_fu_160_p_dout0;
output   grp_fu_160_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_294_p2;
wire   [7:0] add_ln168_fu_300_p2;
reg   [7:0] add_ln168_reg_652;
wire   [15:0] zext_ln168_fu_306_p1;
reg   [15:0] zext_ln168_reg_657;
wire   [2:0] trunc_ln168_fu_310_p1;
reg   [2:0] trunc_ln168_reg_670;
wire   [12:0] mul_ln175_fu_328_p2;
reg   [12:0] mul_ln175_reg_675;
wire   [0:0] cmp11_fu_334_p2;
reg   [0:0] cmp11_reg_680;
wire   [15:0] v115_cast_fu_346_p1;
reg   [15:0] v115_cast_reg_688;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln169_fu_350_p2;
reg   [7:0] add_ln169_reg_694;
wire   [15:0] p_cast1684_fu_366_p1;
reg   [15:0] p_cast1684_reg_699;
wire    ap_CS_fsm_state4;
wire   [15:0] p_cast1685_fu_376_p1;
reg   [15:0] p_cast1685_reg_705;
wire   [15:0] p_cast1686_fu_386_p1;
reg   [15:0] p_cast1686_reg_711;
wire    ap_CS_fsm_state5;
wire   [15:0] p_cast1687_fu_396_p1;
reg   [15:0] p_cast1687_reg_717;
wire    ap_CS_fsm_state6;
wire   [15:0] p_cast1688_fu_410_p1;
reg   [15:0] p_cast1688_reg_728;
wire   [15:0] p_cast1689_fu_420_p1;
reg   [15:0] p_cast1689_reg_734;
reg   [31:0] v226_load_reg_740;
wire    ap_CS_fsm_state7;
wire   [15:0] p_cast1690_fu_438_p1;
reg   [15:0] p_cast1690_reg_755;
wire   [15:0] p_cast1691_fu_448_p1;
reg   [15:0] p_cast1691_reg_761;
reg   [31:0] v226_load_1_reg_767;
wire    ap_CS_fsm_state8;
reg   [31:0] v226_load_2_reg_772;
reg   [31:0] v226_load_3_reg_787;
wire    ap_CS_fsm_state9;
reg   [31:0] v226_load_4_reg_792;
reg   [31:0] v226_load_5_reg_807;
wire    ap_CS_fsm_state10;
reg   [31:0] v226_load_6_reg_812;
reg   [31:0] v226_load_7_reg_827;
wire    ap_CS_fsm_state11;
reg   [31:0] v226_load_8_reg_832;
wire   [31:0] v119_fu_476_p1;
wire    ap_CS_fsm_state12;
wire   [31:0] v132_fu_480_p1;
wire   [15:0] mul_ln171_fu_512_p2;
reg   [15:0] mul_ln171_reg_882;
wire    ap_CS_fsm_state15;
reg   [31:0] v_reg_887;
wire   [15:0] mul_ln186_fu_517_p2;
reg   [15:0] mul_ln186_reg_892;
reg   [31:0] v38_reg_897;
wire   [15:0] mul_ln199_fu_522_p2;
reg   [15:0] mul_ln199_reg_902;
wire   [31:0] grp_fu_258_p2;
reg   [31:0] v39_reg_907;
wire   [15:0] mul_ln212_fu_527_p2;
reg   [15:0] mul_ln212_reg_912;
wire   [31:0] grp_fu_262_p2;
reg   [31:0] v40_reg_917;
wire   [15:0] mul_ln225_fu_532_p2;
reg   [15:0] mul_ln225_reg_922;
wire   [31:0] grp_fu_266_p2;
reg   [31:0] v41_reg_927;
wire   [15:0] mul_ln238_fu_537_p2;
reg   [15:0] mul_ln238_reg_932;
wire   [31:0] grp_fu_270_p2;
reg   [31:0] v42_reg_937;
wire   [15:0] mul_ln251_fu_542_p2;
reg   [15:0] mul_ln251_reg_942;
wire   [31:0] grp_fu_274_p2;
reg   [31:0] v43_reg_947;
wire   [15:0] mul_ln264_fu_547_p2;
reg   [15:0] mul_ln264_reg_952;
wire   [31:0] grp_fu_278_p2;
reg   [31:0] v44_reg_957;
wire   [15:0] mul_ln277_fu_552_p2;
reg   [15:0] mul_ln277_reg_962;
wire   [31:0] grp_fu_282_p2;
reg   [31:0] v45_reg_967;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_ap_ready;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_0_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_0_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_1_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_1_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_2_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_2_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_2_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_3_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_3_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_3_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_4_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_4_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_4_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_4_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_5_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_5_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_5_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_5_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_6_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_6_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_6_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_6_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_7_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_7_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_7_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_7_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_972_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_972_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_972_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_972_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_250_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_250_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_250_p_ce;
reg   [7:0] v115_reg_195;
reg    ap_block_state2;
wire    ap_CS_fsm_state17;
reg    grp_kernel_2mm_node1_Pipeline_label_5_fu_207_ap_start_reg;
wire    ap_CS_fsm_state16;
wire   [63:0] p_cast1692_fu_400_p1;
wire   [63:0] p_cast_fu_424_p1;
wire   [63:0] p_cast1693_fu_428_p1;
wire   [63:0] p_cast1694_fu_452_p1;
wire   [63:0] p_cast1695_fu_456_p1;
wire   [63:0] p_cast1696_fu_460_p1;
wire   [63:0] p_cast1697_fu_464_p1;
wire   [63:0] p_cast1698_fu_468_p1;
wire   [63:0] p_cast1699_fu_472_p1;
reg   [7:0] v114_fu_96;
wire   [0:0] icmp_ln169_fu_340_p2;
reg    v236_write_local;
reg    v226_ce0_local;
reg   [15:0] v226_address0_local;
reg    v226_ce1_local;
reg   [15:0] v226_address1_local;
reg   [31:0] grp_fu_250_p0;
reg   [31:0] grp_fu_250_p1;
wire   [31:0] grp_fu_258_p0;
wire   [31:0] grp_fu_262_p0;
wire   [31:0] grp_fu_266_p0;
wire   [31:0] grp_fu_270_p0;
wire   [31:0] grp_fu_274_p0;
wire   [31:0] grp_fu_278_p0;
wire   [31:0] grp_fu_282_p0;
wire   [4:0] lshr_ln_fu_314_p4;
wire   [4:0] mul_ln175_fu_328_p0;
wire   [8:0] mul_ln175_fu_328_p1;
wire   [7:0] empty_15_fu_360_p2;
wire   [7:0] empty_18_fu_370_p2;
wire   [7:0] empty_21_fu_380_p2;
wire   [7:0] empty_24_fu_390_p2;
wire   [15:0] grp_fu_557_p3;
wire   [7:0] empty_27_fu_404_p2;
wire   [7:0] empty_30_fu_414_p2;
wire   [15:0] grp_fu_565_p3;
wire   [15:0] grp_fu_573_p3;
wire   [7:0] empty_33_fu_432_p2;
wire   [7:0] empty_36_fu_442_p2;
wire   [15:0] grp_fu_581_p3;
wire   [15:0] grp_fu_589_p3;
wire   [15:0] grp_fu_597_p3;
wire   [15:0] grp_fu_605_p3;
wire   [15:0] grp_fu_613_p3;
wire   [15:0] grp_fu_621_p3;
wire   [7:0] mul_ln171_fu_512_p0;
wire   [8:0] mul_ln171_fu_512_p1;
wire   [7:0] mul_ln186_fu_517_p0;
wire   [8:0] mul_ln186_fu_517_p1;
wire   [7:0] mul_ln199_fu_522_p0;
wire   [8:0] mul_ln199_fu_522_p1;
wire   [7:0] mul_ln212_fu_527_p0;
wire   [8:0] mul_ln212_fu_527_p1;
wire   [7:0] mul_ln225_fu_532_p0;
wire   [8:0] mul_ln225_fu_532_p1;
wire   [7:0] mul_ln238_fu_537_p0;
wire   [8:0] mul_ln238_fu_537_p1;
wire   [7:0] mul_ln251_fu_542_p0;
wire   [8:0] mul_ln251_fu_542_p1;
wire   [7:0] mul_ln264_fu_547_p0;
wire   [8:0] mul_ln264_fu_547_p1;
wire   [7:0] mul_ln277_fu_552_p0;
wire   [8:0] mul_ln277_fu_552_p1;
wire   [7:0] grp_fu_557_p0;
wire   [7:0] grp_fu_557_p1;
wire   [7:0] grp_fu_557_p2;
wire   [7:0] grp_fu_565_p0;
wire   [7:0] grp_fu_565_p1;
wire   [7:0] grp_fu_565_p2;
wire   [7:0] grp_fu_573_p0;
wire   [7:0] grp_fu_573_p1;
wire   [7:0] grp_fu_573_p2;
wire   [7:0] grp_fu_581_p0;
wire   [7:0] grp_fu_581_p1;
wire   [7:0] grp_fu_581_p2;
wire   [7:0] grp_fu_589_p0;
wire   [7:0] grp_fu_589_p1;
wire   [7:0] grp_fu_589_p2;
wire   [7:0] grp_fu_597_p0;
wire   [7:0] grp_fu_597_p1;
wire   [7:0] grp_fu_597_p2;
wire   [7:0] grp_fu_605_p0;
wire   [7:0] grp_fu_605_p1;
wire   [7:0] grp_fu_605_p2;
wire   [7:0] grp_fu_613_p0;
wire   [7:0] grp_fu_613_p1;
wire   [7:0] grp_fu_613_p2;
wire   [7:0] grp_fu_621_p0;
wire   [7:0] grp_fu_621_p1;
wire   [7:0] grp_fu_621_p2;
reg    grp_fu_250_ce;
reg    grp_fu_972_ce;
reg   [16:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
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
wire    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
reg    ap_ST_fsm_state17_blk;
wire   [15:0] grp_fu_557_p00;
wire   [15:0] grp_fu_565_p00;
wire   [15:0] grp_fu_573_p00;
wire   [15:0] grp_fu_581_p00;
wire   [15:0] grp_fu_589_p00;
wire   [15:0] grp_fu_597_p00;
wire   [15:0] grp_fu_605_p00;
wire   [15:0] grp_fu_613_p00;
wire   [15:0] grp_fu_621_p00;
wire   [12:0] mul_ln175_fu_328_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_5_fu_207_ap_start_reg = 1'b0;
#0 v114_fu_96 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_5 grp_kernel_2mm_node1_Pipeline_label_5_fu_207(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_ap_ready),.mul_ln175(mul_ln175_reg_675),.v227_0_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_0_address0),.v227_0_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_0_ce0),.v227_0_q0(v227_0_q0),.v227_0_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_0_address1),.v227_0_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_0_ce1),.v227_0_q1(v227_0_q1),.v227_1_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_1_address0),.v227_1_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_1_ce0),.v227_1_q0(v227_1_q0),.v227_1_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_1_address1),.v227_1_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_1_ce1),.v227_1_q1(v227_1_q1),.v227_2_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_2_address0),.v227_2_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_2_ce0),.v227_2_q0(v227_2_q0),.v227_2_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_2_address1),.v227_2_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_2_ce1),.v227_2_q1(v227_2_q1),.v227_3_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_3_address0),.v227_3_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_3_ce0),.v227_3_q0(v227_3_q0),.v227_3_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_3_address1),.v227_3_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_3_ce1),.v227_3_q1(v227_3_q1),.v227_4_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_4_address0),.v227_4_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_4_ce0),.v227_4_q0(v227_4_q0),.v227_4_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_4_address1),.v227_4_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_4_ce1),.v227_4_q1(v227_4_q1),.v227_5_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_5_address0),.v227_5_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_5_ce0),.v227_5_q0(v227_5_q0),.v227_5_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_5_address1),.v227_5_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_5_ce1),.v227_5_q1(v227_5_q1),.v227_6_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_6_address0),.v227_6_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_6_ce0),.v227_6_q0(v227_6_q0),.v227_6_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_6_address1),.v227_6_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_6_ce1),.v227_6_q1(v227_6_q1),.v227_7_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_7_address0),.v227_7_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_7_ce0),.v227_7_q0(v227_7_q0),.v227_7_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_7_address1),.v227_7_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_7_ce1),.v227_7_q1(v227_7_q1),.mul_ln171(mul_ln171_reg_882),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_d1),.v225_q1(v225_q1),.mul_ln186(mul_ln186_reg_892),.mul_ln199(mul_ln199_reg_902),.mul_ln212(mul_ln212_reg_912),.mul_ln225(mul_ln225_reg_922),.mul_ln238(mul_ln238_reg_932),.mul_ln251(mul_ln251_reg_942),.mul_ln264(mul_ln264_reg_952),.mul_ln277(mul_ln277_reg_962),.cmp11(cmp11_reg_680),.empty(trunc_ln168_reg_670),.v120(v_reg_887),.v133(v38_reg_897),.v144(v39_reg_907),.v155(v40_reg_917),.v166(v41_reg_927),.v177(v42_reg_937),.v188(v43_reg_947),.v199(v44_reg_957),.v210(v45_reg_967),.grp_fu_972_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_972_p_din0),.grp_fu_972_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_972_p_din1),.grp_fu_972_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_972_p_opcode),.grp_fu_972_p_dout0(grp_fu_160_p_dout0),.grp_fu_972_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_972_p_ce),.grp_fu_250_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_250_p_din0),.grp_fu_250_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_250_p_din1),.grp_fu_250_p_dout0(grp_fu_152_p_dout0),.grp_fu_250_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_250_p_ce));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U52(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_258_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_258_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U53(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_262_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_262_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U54(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_266_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_266_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U55(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_270_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_270_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U56(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_274_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_274_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U57(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_278_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_278_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U58(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_282_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_282_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U59(.din0(mul_ln175_fu_328_p0),.din1(mul_ln175_fu_328_p1),.dout(mul_ln175_fu_328_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U60(.din0(mul_ln171_fu_512_p0),.din1(mul_ln171_fu_512_p1),.dout(mul_ln171_fu_512_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U61(.din0(mul_ln186_fu_517_p0),.din1(mul_ln186_fu_517_p1),.dout(mul_ln186_fu_517_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U62(.din0(mul_ln199_fu_522_p0),.din1(mul_ln199_fu_522_p1),.dout(mul_ln199_fu_522_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U63(.din0(mul_ln212_fu_527_p0),.din1(mul_ln212_fu_527_p1),.dout(mul_ln212_fu_527_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U64(.din0(mul_ln225_fu_532_p0),.din1(mul_ln225_fu_532_p1),.dout(mul_ln225_fu_532_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U65(.din0(mul_ln238_fu_537_p0),.din1(mul_ln238_fu_537_p1),.dout(mul_ln238_fu_537_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U66(.din0(mul_ln251_fu_542_p0),.din1(mul_ln251_fu_542_p1),.dout(mul_ln251_fu_542_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U67(.din0(mul_ln264_fu_547_p0),.din1(mul_ln264_fu_547_p1),.dout(mul_ln264_fu_547_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U68(.din0(mul_ln277_fu_552_p0),.din1(mul_ln277_fu_552_p1),.dout(mul_ln277_fu_552_p2));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U69(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_557_p0),.din1(grp_fu_557_p1),.din2(grp_fu_557_p2),.ce(1'b1),.dout(grp_fu_557_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U70(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_565_p0),.din1(grp_fu_565_p1),.din2(grp_fu_565_p2),.ce(1'b1),.dout(grp_fu_565_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U71(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_573_p0),.din1(grp_fu_573_p1),.din2(grp_fu_573_p2),.ce(1'b1),.dout(grp_fu_573_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U72(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_581_p0),.din1(grp_fu_581_p1),.din2(grp_fu_581_p2),.ce(1'b1),.dout(grp_fu_581_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U73(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_589_p0),.din1(grp_fu_589_p1),.din2(grp_fu_589_p2),.ce(1'b1),.dout(grp_fu_589_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U74(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_597_p0),.din1(grp_fu_597_p1),.din2(grp_fu_597_p2),.ce(1'b1),.dout(grp_fu_597_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U75(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_605_p0),.din1(grp_fu_605_p1),.din2(grp_fu_605_p2),.ce(1'b1),.dout(grp_fu_605_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U76(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_613_p0),.din1(grp_fu_613_p1),.din2(grp_fu_613_p2),.ce(1'b1),.dout(grp_fu_613_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U77(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_621_p0),.din1(grp_fu_621_p1),.din2(grp_fu_621_p2),.ce(1'b1),.dout(grp_fu_621_p3));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_5_fu_207_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_207_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_207_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_207_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_96 <= 8'd0;
    end else if (((icmp_ln169_fu_340_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v114_fu_96 <= add_ln168_reg_652;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_207_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        v115_reg_195 <= add_ln169_reg_694;
    end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_294_p2 == 1'd0))) begin
        v115_reg_195 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln168_reg_652 <= add_ln168_fu_300_p2;
        cmp11_reg_680 <= cmp11_fu_334_p2;
        mul_ln175_reg_675 <= mul_ln175_fu_328_p2;
        trunc_ln168_reg_670 <= trunc_ln168_fu_310_p1;
        zext_ln168_reg_657[7 : 0] <= zext_ln168_fu_306_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln169_reg_694 <= add_ln169_fu_350_p2;
        v115_cast_reg_688[7 : 0] <= v115_cast_fu_346_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln171_reg_882 <= mul_ln171_fu_512_p2;
        mul_ln186_reg_892 <= mul_ln186_fu_517_p2;
        mul_ln199_reg_902 <= mul_ln199_fu_522_p2;
        mul_ln212_reg_912 <= mul_ln212_fu_527_p2;
        mul_ln225_reg_922 <= mul_ln225_fu_532_p2;
        mul_ln238_reg_932 <= mul_ln238_fu_537_p2;
        mul_ln251_reg_942 <= mul_ln251_fu_542_p2;
        mul_ln264_reg_952 <= mul_ln264_fu_547_p2;
        mul_ln277_reg_962 <= mul_ln277_fu_552_p2;
        v38_reg_897 <= grp_fu_156_p_dout0;
        v39_reg_907 <= grp_fu_258_p2;
        v40_reg_917 <= grp_fu_262_p2;
        v41_reg_927 <= grp_fu_266_p2;
        v42_reg_937 <= grp_fu_270_p2;
        v43_reg_947 <= grp_fu_274_p2;
        v44_reg_957 <= grp_fu_278_p2;
        v45_reg_967 <= grp_fu_282_p2;
        v_reg_887 <= grp_fu_152_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        p_cast1684_reg_699[7 : 0] <= p_cast1684_fu_366_p1[7 : 0];
        p_cast1685_reg_705[7 : 0] <= p_cast1685_fu_376_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        p_cast1686_reg_711[7 : 0] <= p_cast1686_fu_386_p1[7 : 0];
        p_cast1687_reg_717[7 : 0] <= p_cast1687_fu_396_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        p_cast1688_reg_728[7 : 0] <= p_cast1688_fu_410_p1[7 : 0];
        p_cast1689_reg_734[7 : 0] <= p_cast1689_fu_420_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        p_cast1690_reg_755[7 : 0] <= p_cast1690_fu_438_p1[7 : 0];
        p_cast1691_reg_761[7 : 0] <= p_cast1691_fu_448_p1[7 : 0];
        v226_load_reg_740 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_load_1_reg_767 <= v226_q1;
        v226_load_2_reg_772 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_load_3_reg_787 <= v226_q0;
        v226_load_4_reg_792 <= v226_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_load_5_reg_807 <= v226_q0;
        v226_load_6_reg_812 <= v226_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_load_7_reg_827 <= v226_q0;
        v226_load_8_reg_832 <= v226_q1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_207_ap_done == 1'b0)) begin
        ap_ST_fsm_state17_blk = 1'b1;
    end else begin
        ap_ST_fsm_state17_blk = 1'b0;
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state2)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_294_p2 == 1'd1)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_294_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_250_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_250_p_ce;
    end else begin
        grp_fu_250_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_250_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_250_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_250_p0 = v119_fu_476_p1;
    end else begin
        grp_fu_250_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_250_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_250_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_250_p1 = v113;
    end else begin
        grp_fu_250_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_972_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_972_p_ce;
    end else begin
        grp_fu_972_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_address0_local = p_cast1698_fu_468_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_address0_local = p_cast1696_fu_460_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_address0_local = p_cast1694_fu_452_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_address0_local = p_cast1693_fu_428_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_address0_local = p_cast1692_fu_400_p1;
    end else begin
        v226_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_address1_local = p_cast1699_fu_472_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_address1_local = p_cast1697_fu_464_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_address1_local = p_cast1695_fu_456_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_address1_local = p_cast_fu_424_p1;
    end else begin
        v226_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_ce0_local = 1'b1;
    end else begin
        v226_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        v226_ce1_local = 1'b1;
    end else begin
        v226_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_294_p2 == 1'd1))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_294_p2 == 1'd1))) begin
        v236_write_local = 1'b1;
    end else begin
        v236_write_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_294_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_294_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln169_fu_340_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            ap_NS_fsm = ap_ST_fsm_state14;
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
            if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_207_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
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
assign add_ln168_fu_300_p2 = (v114_fu_96 + 8'd1);
assign add_ln169_fu_350_p2 = (v115_reg_195 + 8'd9);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
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
    ap_block_state2 = ((icmp_ln168_fu_294_p2 == 1'd1) & (v236_full_n == 1'b0));
end
assign cmp11_fu_334_p2 = ((v114_fu_96 == 8'd0) ? 1'b1 : 1'b0);
assign empty_15_fu_360_p2 = (v115_reg_195 + 8'd1);
assign empty_18_fu_370_p2 = (v115_reg_195 + 8'd2);
assign empty_21_fu_380_p2 = (v115_reg_195 + 8'd3);
assign empty_24_fu_390_p2 = (v115_reg_195 + 8'd4);
assign empty_27_fu_404_p2 = (v115_reg_195 + 8'd5);
assign empty_30_fu_414_p2 = (v115_reg_195 + 8'd6);
assign empty_33_fu_432_p2 = (v115_reg_195 + 8'd7);
assign empty_36_fu_442_p2 = (v115_reg_195 + 8'd8);
assign grp_fu_152_p_ce = grp_fu_250_ce;
assign grp_fu_152_p_din0 = grp_fu_250_p0;
assign grp_fu_152_p_din1 = grp_fu_250_p1;
assign grp_fu_156_p_ce = 1'b1;
assign grp_fu_156_p_din0 = v132_fu_480_p1;
assign grp_fu_156_p_din1 = v113;
assign grp_fu_160_p_ce = grp_fu_972_ce;
assign grp_fu_160_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_972_p_din0;
assign grp_fu_160_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_grp_fu_972_p_din1;
assign grp_fu_160_p_opcode = 2'd0;
assign grp_fu_258_p0 = v226_load_2_reg_772;
assign grp_fu_262_p0 = v226_load_3_reg_787;
assign grp_fu_266_p0 = v226_load_4_reg_792;
assign grp_fu_270_p0 = v226_load_5_reg_807;
assign grp_fu_274_p0 = v226_load_6_reg_812;
assign grp_fu_278_p0 = v226_load_7_reg_827;
assign grp_fu_282_p0 = v226_load_8_reg_832;
assign grp_fu_557_p0 = grp_fu_557_p00;
assign grp_fu_557_p00 = v115_reg_195;
assign grp_fu_557_p1 = 16'd210;
assign grp_fu_557_p2 = zext_ln168_reg_657;
assign grp_fu_565_p0 = grp_fu_565_p00;
assign grp_fu_565_p00 = empty_15_fu_360_p2;
assign grp_fu_565_p1 = 16'd210;
assign grp_fu_565_p2 = zext_ln168_reg_657;
assign grp_fu_573_p0 = grp_fu_573_p00;
assign grp_fu_573_p00 = empty_18_fu_370_p2;
assign grp_fu_573_p1 = 16'd210;
assign grp_fu_573_p2 = zext_ln168_reg_657;
assign grp_fu_581_p0 = grp_fu_581_p00;
assign grp_fu_581_p00 = empty_21_fu_380_p2;
assign grp_fu_581_p1 = 16'd210;
assign grp_fu_581_p2 = zext_ln168_reg_657;
assign grp_fu_589_p0 = grp_fu_589_p00;
assign grp_fu_589_p00 = empty_24_fu_390_p2;
assign grp_fu_589_p1 = 16'd210;
assign grp_fu_589_p2 = zext_ln168_reg_657;
assign grp_fu_597_p0 = grp_fu_597_p00;
assign grp_fu_597_p00 = empty_27_fu_404_p2;
assign grp_fu_597_p1 = 16'd210;
assign grp_fu_597_p2 = zext_ln168_reg_657;
assign grp_fu_605_p0 = grp_fu_605_p00;
assign grp_fu_605_p00 = empty_30_fu_414_p2;
assign grp_fu_605_p1 = 16'd210;
assign grp_fu_605_p2 = zext_ln168_reg_657;
assign grp_fu_613_p0 = grp_fu_613_p00;
assign grp_fu_613_p00 = empty_33_fu_432_p2;
assign grp_fu_613_p1 = 16'd210;
assign grp_fu_613_p2 = zext_ln168_reg_657;
assign grp_fu_621_p0 = grp_fu_621_p00;
assign grp_fu_621_p00 = empty_36_fu_442_p2;
assign grp_fu_621_p1 = 16'd210;
assign grp_fu_621_p2 = zext_ln168_reg_657;
assign grp_kernel_2mm_node1_Pipeline_label_5_fu_207_ap_start = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_ap_start_reg;
assign icmp_ln168_fu_294_p2 = ((v114_fu_96 == 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln169_fu_340_p2 = ((v115_reg_195 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln_fu_314_p4 = {{v114_fu_96[7:3]}};
assign mul_ln171_fu_512_p0 = v115_cast_reg_688;
assign mul_ln171_fu_512_p1 = 16'd190;
assign mul_ln175_fu_328_p0 = mul_ln175_fu_328_p00;
assign mul_ln175_fu_328_p00 = lshr_ln_fu_314_p4;
assign mul_ln175_fu_328_p1 = 13'd190;
assign mul_ln186_fu_517_p0 = p_cast1684_reg_699;
assign mul_ln186_fu_517_p1 = 16'd190;
assign mul_ln199_fu_522_p0 = p_cast1685_reg_705;
assign mul_ln199_fu_522_p1 = 16'd190;
assign mul_ln212_fu_527_p0 = p_cast1686_reg_711;
assign mul_ln212_fu_527_p1 = 16'd190;
assign mul_ln225_fu_532_p0 = p_cast1687_reg_717;
assign mul_ln225_fu_532_p1 = 16'd190;
assign mul_ln238_fu_537_p0 = p_cast1688_reg_728;
assign mul_ln238_fu_537_p1 = 16'd190;
assign mul_ln251_fu_542_p0 = p_cast1689_reg_734;
assign mul_ln251_fu_542_p1 = 16'd190;
assign mul_ln264_fu_547_p0 = p_cast1690_reg_755;
assign mul_ln264_fu_547_p1 = 16'd190;
assign mul_ln277_fu_552_p0 = p_cast1691_reg_761;
assign mul_ln277_fu_552_p1 = 16'd190;
assign p_cast1684_fu_366_p1 = empty_15_fu_360_p2;
assign p_cast1685_fu_376_p1 = empty_18_fu_370_p2;
assign p_cast1686_fu_386_p1 = empty_21_fu_380_p2;
assign p_cast1687_fu_396_p1 = empty_24_fu_390_p2;
assign p_cast1688_fu_410_p1 = empty_27_fu_404_p2;
assign p_cast1689_fu_420_p1 = empty_30_fu_414_p2;
assign p_cast1690_fu_438_p1 = empty_33_fu_432_p2;
assign p_cast1691_fu_448_p1 = empty_36_fu_442_p2;
assign p_cast1692_fu_400_p1 = grp_fu_557_p3;
assign p_cast1693_fu_428_p1 = grp_fu_573_p3;
assign p_cast1694_fu_452_p1 = grp_fu_581_p3;
assign p_cast1695_fu_456_p1 = grp_fu_589_p3;
assign p_cast1696_fu_460_p1 = grp_fu_597_p3;
assign p_cast1697_fu_464_p1 = grp_fu_605_p3;
assign p_cast1698_fu_468_p1 = grp_fu_613_p3;
assign p_cast1699_fu_472_p1 = grp_fu_621_p3;
assign p_cast_fu_424_p1 = grp_fu_565_p3;
assign trunc_ln168_fu_310_p1 = v114_fu_96[2:0];
assign v115_cast_fu_346_p1 = v115_reg_195;
assign v119_fu_476_p1 = v226_load_reg_740;
assign v132_fu_480_p1 = v226_load_1_reg_767;
assign v225_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_address0;
assign v225_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_address1;
assign v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_ce0;
assign v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_ce1;
assign v225_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_d0;
assign v225_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_d1;
assign v225_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_we0;
assign v225_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v225_we1;
assign v226_address0 = v226_address0_local;
assign v226_address1 = v226_address1_local;
assign v226_ce0 = v226_ce0_local;
assign v226_ce1 = v226_ce1_local;
assign v227_0_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_0_address0;
assign v227_0_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_0_address1;
assign v227_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_0_ce0;
assign v227_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_0_ce1;
assign v227_1_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_1_address0;
assign v227_1_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_1_address1;
assign v227_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_1_ce0;
assign v227_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_1_ce1;
assign v227_2_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_2_address0;
assign v227_2_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_2_address1;
assign v227_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_2_ce0;
assign v227_2_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_2_ce1;
assign v227_3_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_3_address0;
assign v227_3_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_3_address1;
assign v227_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_3_ce0;
assign v227_3_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_3_ce1;
assign v227_4_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_4_address0;
assign v227_4_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_4_address1;
assign v227_4_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_4_ce0;
assign v227_4_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_4_ce1;
assign v227_5_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_5_address0;
assign v227_5_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_5_address1;
assign v227_5_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_5_ce0;
assign v227_5_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_5_ce1;
assign v227_6_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_6_address0;
assign v227_6_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_6_address1;
assign v227_6_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_6_ce0;
assign v227_6_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_6_ce1;
assign v227_7_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_7_address0;
assign v227_7_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_7_address1;
assign v227_7_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_7_ce0;
assign v227_7_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_207_v227_7_ce1;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
assign zext_ln168_fu_306_p1 = v114_fu_96;
always @ (posedge ap_clk) begin
    zext_ln168_reg_657[15:8] <= 8'b00000000;
    v115_cast_reg_688[15:8] <= 8'b00000000;
    p_cast1684_reg_699[15:8] <= 8'b00000000;
    p_cast1685_reg_705[15:8] <= 8'b00000000;
    p_cast1686_reg_711[15:8] <= 8'b00000000;
    p_cast1687_reg_717[15:8] <= 8'b00000000;
    p_cast1688_reg_728[15:8] <= 8'b00000000;
    p_cast1689_reg_734[15:8] <= 8'b00000000;
    p_cast1690_reg_755[15:8] <= 8'b00000000;
    p_cast1691_reg_761[15:8] <= 8'b00000000;
end
endmodule 