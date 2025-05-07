module kernel_3mm_kernel_3mm_node2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v262_address0,v262_ce0,v262_q0,v262_address1,v262_ce1,v262_q1,v263_address0,v263_ce0,v263_q0,v263_address1,v263_ce1,v263_q1,v279_din,v279_full_n,v279_write,v261_0_address0,v261_0_ce0,v261_0_we0,v261_0_d0,v261_0_q0,v261_0_address1,v261_0_ce1,v261_0_we1,v261_0_d1,v261_0_q1,v261_1_address0,v261_1_ce0,v261_1_we0,v261_1_d0,v261_1_q0,v261_1_address1,v261_1_ce1,v261_1_we1,v261_1_d1,v261_1_q1,v261_2_address0,v261_2_ce0,v261_2_we0,v261_2_d0,v261_2_q0,v261_2_address1,v261_2_ce1,v261_2_we1,v261_2_d1,v261_2_q1,v261_3_address0,v261_3_ce0,v261_3_we0,v261_3_d0,v261_3_q0,v261_3_address1,v261_3_ce1,v261_3_we1,v261_3_d1,v261_3_q1,v261_4_address0,v261_4_ce0,v261_4_we0,v261_4_d0,v261_4_q0,v261_4_address1,v261_4_ce1,v261_4_we1,v261_4_d1,v261_4_q1,v261_5_address0,v261_5_ce0,v261_5_we0,v261_5_d0,v261_5_q0,v261_5_address1,v261_5_ce1,v261_5_we1,v261_5_d1,v261_5_q1,v261_6_address0,v261_6_ce0,v261_6_we0,v261_6_d0,v261_6_q0,v261_6_address1,v261_6_ce1,v261_6_we1,v261_6_d1,v261_6_q1,v261_7_address0,v261_7_ce0,v261_7_we0,v261_7_d0,v261_7_q0,v261_7_address1,v261_7_ce1,v261_7_we1,v261_7_d1,v261_7_q1); 
parameter    ap_ST_fsm_state1 = 11'd1;
parameter    ap_ST_fsm_state2 = 11'd2;
parameter    ap_ST_fsm_state3 = 11'd4;
parameter    ap_ST_fsm_state4 = 11'd8;
parameter    ap_ST_fsm_state5 = 11'd16;
parameter    ap_ST_fsm_state6 = 11'd32;
parameter    ap_ST_fsm_state7 = 11'd64;
parameter    ap_ST_fsm_state8 = 11'd128;
parameter    ap_ST_fsm_state9 = 11'd256;
parameter    ap_ST_fsm_state10 = 11'd512;
parameter    ap_ST_fsm_state11 = 11'd1024;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [15:0] v262_address0;
output   v262_ce0;
input  [31:0] v262_q0;
output  [15:0] v262_address1;
output   v262_ce1;
input  [31:0] v262_q1;
output  [15:0] v263_address0;
output   v263_ce0;
input  [31:0] v263_q0;
output  [15:0] v263_address1;
output   v263_ce1;
input  [31:0] v263_q1;
output  [0:0] v279_din;
input   v279_full_n;
output   v279_write;
output  [12:0] v261_0_address0;
output   v261_0_ce0;
output   v261_0_we0;
output  [31:0] v261_0_d0;
input  [31:0] v261_0_q0;
output  [12:0] v261_0_address1;
output   v261_0_ce1;
output   v261_0_we1;
output  [31:0] v261_0_d1;
input  [31:0] v261_0_q1;
output  [12:0] v261_1_address0;
output   v261_1_ce0;
output   v261_1_we0;
output  [31:0] v261_1_d0;
input  [31:0] v261_1_q0;
output  [12:0] v261_1_address1;
output   v261_1_ce1;
output   v261_1_we1;
output  [31:0] v261_1_d1;
input  [31:0] v261_1_q1;
output  [12:0] v261_2_address0;
output   v261_2_ce0;
output   v261_2_we0;
output  [31:0] v261_2_d0;
input  [31:0] v261_2_q0;
output  [12:0] v261_2_address1;
output   v261_2_ce1;
output   v261_2_we1;
output  [31:0] v261_2_d1;
input  [31:0] v261_2_q1;
output  [12:0] v261_3_address0;
output   v261_3_ce0;
output   v261_3_we0;
output  [31:0] v261_3_d0;
input  [31:0] v261_3_q0;
output  [12:0] v261_3_address1;
output   v261_3_ce1;
output   v261_3_we1;
output  [31:0] v261_3_d1;
input  [31:0] v261_3_q1;
output  [12:0] v261_4_address0;
output   v261_4_ce0;
output   v261_4_we0;
output  [31:0] v261_4_d0;
input  [31:0] v261_4_q0;
output  [12:0] v261_4_address1;
output   v261_4_ce1;
output   v261_4_we1;
output  [31:0] v261_4_d1;
input  [31:0] v261_4_q1;
output  [12:0] v261_5_address0;
output   v261_5_ce0;
output   v261_5_we0;
output  [31:0] v261_5_d0;
input  [31:0] v261_5_q0;
output  [12:0] v261_5_address1;
output   v261_5_ce1;
output   v261_5_we1;
output  [31:0] v261_5_d1;
input  [31:0] v261_5_q1;
output  [12:0] v261_6_address0;
output   v261_6_ce0;
output   v261_6_we0;
output  [31:0] v261_6_d0;
input  [31:0] v261_6_q0;
output  [12:0] v261_6_address1;
output   v261_6_ce1;
output   v261_6_we1;
output  [31:0] v261_6_d1;
input  [31:0] v261_6_q1;
output  [12:0] v261_7_address0;
output   v261_7_ce0;
output   v261_7_we0;
output  [31:0] v261_7_d0;
input  [31:0] v261_7_q0;
output  [12:0] v261_7_address1;
output   v261_7_ce1;
output   v261_7_we1;
output  [31:0] v261_7_d1;
input  [31:0] v261_7_q1;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v279_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln277_fu_238_p2;
reg   [15:0] phi_mul_load_reg_562;
wire   [15:0] add_ln277_1_fu_232_p2;
reg   [15:0] add_ln277_1_reg_567;
wire   [7:0] add_ln277_fu_244_p2;
reg   [7:0] add_ln277_reg_575;
wire   [15:0] zext_ln277_fu_250_p1;
reg   [15:0] zext_ln277_reg_580;
wire   [0:0] cmp11_fu_254_p2;
reg   [0:0] cmp11_reg_590;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln278_fu_292_p2;
reg   [7:0] add_ln278_reg_608;
wire    ap_CS_fsm_state4;
reg   [4:0] tmp_2_reg_618;
reg   [4:0] tmp_3_reg_628;
wire    ap_CS_fsm_state5;
reg   [4:0] tmp_4_reg_638;
reg   [4:0] tmp_5_reg_648;
wire    ap_CS_fsm_state6;
reg   [31:0] v262_load_reg_663;
wire    ap_CS_fsm_state7;
reg   [31:0] v262_load_1_reg_668;
reg   [31:0] v262_load_2_reg_683;
wire    ap_CS_fsm_state8;
reg   [31:0] v262_load_3_reg_688;
wire   [2:0] trunc_ln278_fu_410_p1;
reg   [2:0] trunc_ln278_reg_703;
wire    ap_CS_fsm_state9;
wire   [12:0] mul_ln280_fu_428_p2;
reg   [12:0] mul_ln280_reg_709;
wire   [12:0] mul_ln304_fu_437_p2;
reg   [12:0] mul_ln304_reg_714;
wire   [12:0] mul_ln315_fu_446_p2;
reg   [12:0] mul_ln315_reg_719;
wire   [12:0] mul_ln326_fu_455_p2;
reg   [12:0] mul_ln326_reg_724;
reg   [31:0] v262_load_4_reg_729;
wire   [12:0] mul_ln337_fu_464_p2;
reg   [12:0] mul_ln337_reg_734;
reg   [31:0] v262_load_5_reg_739;
wire   [31:0] v201_fu_470_p1;
reg   [31:0] v201_reg_744;
wire    ap_CS_fsm_state10;
wire   [31:0] v212_fu_474_p1;
reg   [31:0] v212_reg_749;
wire   [31:0] v221_fu_478_p1;
reg   [31:0] v221_reg_754;
wire   [31:0] v230_fu_482_p1;
reg   [31:0] v230_reg_759;
wire   [31:0] v239_fu_486_p1;
reg   [31:0] v239_reg_764;
wire   [31:0] v248_fu_490_p1;
reg   [31:0] v248_reg_769;
wire   [0:0] empty_29_fu_494_p2;
reg   [0:0] empty_29_reg_774;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_179_ap_start;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_179_ap_done;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_179_ap_idle;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_179_ap_ready;
wire   [12:0] grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_7_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_7_ce0;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_7_we0;
wire   [31:0] grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_7_d0;
wire   [12:0] grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_7_address1;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_7_ce1;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_7_we1;
wire   [31:0] grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_7_d1;
wire   [12:0] grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_6_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_6_ce0;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_6_we0;
wire   [31:0] grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_6_d0;
wire   [12:0] grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_6_address1;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_6_ce1;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_6_we1;
wire   [31:0] grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_6_d1;
wire   [12:0] grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_5_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_5_ce0;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_5_we0;
wire   [31:0] grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_5_d0;
wire   [12:0] grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_5_address1;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_5_ce1;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_5_we1;
wire   [31:0] grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_5_d1;
wire   [12:0] grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_4_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_4_ce0;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_4_we0;
wire   [31:0] grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_4_d0;
wire   [12:0] grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_4_address1;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_4_ce1;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_4_we1;
wire   [31:0] grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_4_d1;
wire   [12:0] grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_3_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_3_ce0;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_3_we0;
wire   [31:0] grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_3_d0;
wire   [12:0] grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_3_address1;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_3_ce1;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_3_we1;
wire   [31:0] grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_3_d1;
wire   [12:0] grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_2_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_2_ce0;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_2_we0;
wire   [31:0] grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_2_d0;
wire   [12:0] grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_2_address1;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_2_ce1;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_2_we1;
wire   [31:0] grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_2_d1;
wire   [12:0] grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_1_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_1_ce0;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_1_we0;
wire   [31:0] grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_1_d0;
wire   [12:0] grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_1_address1;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_1_ce1;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_1_we1;
wire   [31:0] grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_1_d1;
wire   [12:0] grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_0_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_0_ce0;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_0_we0;
wire   [31:0] grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_0_d0;
wire   [12:0] grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_0_address1;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_0_ce1;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_0_we1;
wire   [31:0] grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_0_d1;
wire   [15:0] grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v263_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v263_ce0;
wire   [15:0] grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v263_address1;
wire    grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v263_ce1;
reg   [7:0] v197_reg_167;
reg    ap_block_state2;
wire    ap_CS_fsm_state11;
reg    grp_kernel_3mm_node2_Pipeline_label_8_fu_179_ap_start_reg;
wire   [63:0] p_cast386_fu_386_p1;
wire   [63:0] p_cast_fu_390_p1;
wire   [63:0] p_cast387_fu_394_p1;
wire   [63:0] p_cast388_fu_398_p1;
wire   [63:0] p_cast389_fu_402_p1;
wire   [63:0] p_cast390_fu_406_p1;
reg   [15:0] phi_mul_fu_94;
wire   [0:0] icmp_ln278_fu_260_p2;
reg   [7:0] v196_fu_98;
reg    v279_write_local;
reg    v262_ce1_local;
reg   [15:0] v262_address1_local;
reg    v262_ce0_local;
reg   [15:0] v262_address0_local;
wire   [6:0] tmp_fu_270_p4;
wire   [7:0] tmp_1_fu_280_p3;
wire   [7:0] empty_17_fu_306_p2;
wire   [7:0] empty_20_fu_326_p2;
wire   [7:0] empty_23_fu_346_p2;
wire   [7:0] empty_26_fu_366_p2;
wire   [15:0] grp_fu_500_p3;
wire   [15:0] grp_fu_508_p3;
wire   [15:0] grp_fu_516_p3;
wire   [15:0] grp_fu_524_p3;
wire   [15:0] grp_fu_532_p3;
wire   [15:0] grp_fu_540_p3;
wire   [4:0] lshr_ln_fu_414_p4;
wire   [4:0] mul_ln280_fu_428_p0;
wire   [8:0] mul_ln280_fu_428_p1;
wire   [4:0] mul_ln304_fu_437_p0;
wire   [8:0] mul_ln304_fu_437_p1;
wire   [4:0] mul_ln315_fu_446_p0;
wire   [8:0] mul_ln315_fu_446_p1;
wire   [4:0] mul_ln326_fu_455_p0;
wire   [8:0] mul_ln326_fu_455_p1;
wire   [4:0] mul_ln337_fu_464_p0;
wire   [8:0] mul_ln337_fu_464_p1;
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
reg   [10:0] ap_NS_fsm;
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
reg    ap_ST_fsm_state11_blk;
wire   [15:0] grp_fu_500_p00;
wire   [15:0] grp_fu_508_p00;
wire   [15:0] grp_fu_516_p00;
wire   [15:0] grp_fu_524_p00;
wire   [15:0] grp_fu_532_p00;
wire   [15:0] grp_fu_540_p00;
wire   [12:0] mul_ln280_fu_428_p00;
wire   [12:0] mul_ln304_fu_437_p00;
wire   [12:0] mul_ln315_fu_446_p00;
wire   [12:0] mul_ln326_fu_455_p00;
wire   [12:0] mul_ln337_fu_464_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 11'd1;
#0 grp_kernel_3mm_node2_Pipeline_label_8_fu_179_ap_start_reg = 1'b0;
#0 phi_mul_fu_94 = 16'd0;
#0 v196_fu_98 = 8'd0;
end
kernel_3mm_kernel_3mm_node2_Pipeline_label_8 grp_kernel_3mm_node2_Pipeline_label_8_fu_179(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_ap_start),.ap_done(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_ap_done),.ap_idle(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_ap_idle),.ap_ready(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_ap_ready),.cmp11(cmp11_reg_590),.v261_7_address0(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_7_address0),.v261_7_ce0(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_7_ce0),.v261_7_we0(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_7_we0),.v261_7_d0(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_7_d0),.v261_7_q0(v261_7_q0),.v261_7_address1(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_7_address1),.v261_7_ce1(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_7_ce1),.v261_7_we1(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_7_we1),.v261_7_d1(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_7_d1),.v261_7_q1(v261_7_q1),.v261_6_address0(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_6_address0),.v261_6_ce0(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_6_ce0),.v261_6_we0(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_6_we0),.v261_6_d0(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_6_d0),.v261_6_q0(v261_6_q0),.v261_6_address1(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_6_address1),.v261_6_ce1(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_6_ce1),.v261_6_we1(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_6_we1),.v261_6_d1(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_6_d1),.v261_6_q1(v261_6_q1),.v261_5_address0(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_5_address0),.v261_5_ce0(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_5_ce0),.v261_5_we0(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_5_we0),.v261_5_d0(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_5_d0),.v261_5_q0(v261_5_q0),.v261_5_address1(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_5_address1),.v261_5_ce1(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_5_ce1),.v261_5_we1(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_5_we1),.v261_5_d1(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_5_d1),.v261_5_q1(v261_5_q1),.v261_4_address0(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_4_address0),.v261_4_ce0(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_4_ce0),.v261_4_we0(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_4_we0),.v261_4_d0(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_4_d0),.v261_4_q0(v261_4_q0),.v261_4_address1(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_4_address1),.v261_4_ce1(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_4_ce1),.v261_4_we1(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_4_we1),.v261_4_d1(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_4_d1),.v261_4_q1(v261_4_q1),.v261_3_address0(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_3_address0),.v261_3_ce0(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_3_ce0),.v261_3_we0(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_3_we0),.v261_3_d0(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_3_d0),.v261_3_q0(v261_3_q0),.v261_3_address1(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_3_address1),.v261_3_ce1(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_3_ce1),.v261_3_we1(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_3_we1),.v261_3_d1(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_3_d1),.v261_3_q1(v261_3_q1),.v261_2_address0(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_2_address0),.v261_2_ce0(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_2_ce0),.v261_2_we0(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_2_we0),.v261_2_d0(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_2_d0),.v261_2_q0(v261_2_q0),.v261_2_address1(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_2_address1),.v261_2_ce1(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_2_ce1),.v261_2_we1(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_2_we1),.v261_2_d1(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_2_d1),.v261_2_q1(v261_2_q1),.v261_1_address0(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_1_address0),.v261_1_ce0(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_1_ce0),.v261_1_we0(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_1_we0),.v261_1_d0(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_1_d0),.v261_1_q0(v261_1_q0),.v261_1_address1(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_1_address1),.v261_1_ce1(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_1_ce1),.v261_1_we1(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_1_we1),.v261_1_d1(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_1_d1),.v261_1_q1(v261_1_q1),.v261_0_address0(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_0_address0),.v261_0_ce0(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_0_ce0),.v261_0_we0(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_0_we0),.v261_0_d0(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_0_d0),.v261_0_q0(v261_0_q0),.v261_0_address1(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_0_address1),.v261_0_ce1(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_0_ce1),.v261_0_we1(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_0_we1),.v261_0_d1(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_0_d1),.v261_0_q1(v261_0_q1),.phi_mul(phi_mul_load_reg_562),.v263_address0(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v263_address0),.v263_ce0(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v263_ce0),.v263_q0(v263_q0),.v263_address1(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v263_address1),.v263_ce1(grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v263_ce1),.v263_q1(v263_q1),.mul_ln280(mul_ln280_reg_709),.mul_ln326(mul_ln326_reg_724),.mul_ln304(mul_ln304_reg_714),.mul_ln337(mul_ln337_reg_734),.mul_ln315(mul_ln315_reg_719),.empty_12(trunc_ln278_reg_703),.v201(v201_reg_744),.v212(v212_reg_749),.v221(v221_reg_754),.v230(v230_reg_759),.v239(v239_reg_764),.v248(v248_reg_769),.empty(empty_29_reg_774));
kernel_3mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U54(.din0(mul_ln280_fu_428_p0),.din1(mul_ln280_fu_428_p1),.dout(mul_ln280_fu_428_p2));
kernel_3mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U55(.din0(mul_ln304_fu_437_p0),.din1(mul_ln304_fu_437_p1),.dout(mul_ln304_fu_437_p2));
kernel_3mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U56(.din0(mul_ln315_fu_446_p0),.din1(mul_ln315_fu_446_p1),.dout(mul_ln315_fu_446_p2));
kernel_3mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U57(.din0(mul_ln326_fu_455_p0),.din1(mul_ln326_fu_455_p1),.dout(mul_ln326_fu_455_p2));
kernel_3mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U58(.din0(mul_ln337_fu_464_p0),.din1(mul_ln337_fu_464_p1),.dout(mul_ln337_fu_464_p2));
kernel_3mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U59(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_500_p0),.din1(grp_fu_500_p1),.din2(grp_fu_500_p2),.ce(1'b1),.dout(grp_fu_500_p3));
kernel_3mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U60(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_508_p0),.din1(grp_fu_508_p1),.din2(grp_fu_508_p2),.ce(1'b1),.dout(grp_fu_508_p3));
kernel_3mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U61(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_516_p0),.din1(grp_fu_516_p1),.din2(grp_fu_516_p2),.ce(1'b1),.dout(grp_fu_516_p3));
kernel_3mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U62(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_524_p0),.din1(grp_fu_524_p1),.din2(grp_fu_524_p2),.ce(1'b1),.dout(grp_fu_524_p3));
kernel_3mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U63(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_532_p0),.din1(grp_fu_532_p1),.din2(grp_fu_532_p2),.ce(1'b1),.dout(grp_fu_532_p3));
kernel_3mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U64(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_540_p0),.din1(grp_fu_540_p1),.din2(grp_fu_540_p2),.ce(1'b1),.dout(grp_fu_540_p3));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_3mm_node2_Pipeline_label_8_fu_179_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            grp_kernel_3mm_node2_Pipeline_label_8_fu_179_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_3mm_node2_Pipeline_label_8_fu_179_ap_ready == 1'b1)) begin
            grp_kernel_3mm_node2_Pipeline_label_8_fu_179_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        phi_mul_fu_94 <= 16'd0;
    end else if (((icmp_ln278_fu_260_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_mul_fu_94 <= add_ln277_1_reg_567;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        v196_fu_98 <= 8'd0;
    end else if (((icmp_ln278_fu_260_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v196_fu_98 <= add_ln277_reg_575;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_3mm_node2_Pipeline_label_8_fu_179_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
        v197_reg_167 <= add_ln278_reg_608;
    end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln277_fu_238_p2 == 1'd0))) begin
        v197_reg_167 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln277_1_reg_567 <= add_ln277_1_fu_232_p2;
        add_ln277_reg_575 <= add_ln277_fu_244_p2;
        cmp11_reg_590 <= cmp11_fu_254_p2;
        phi_mul_load_reg_562 <= phi_mul_fu_94;
        zext_ln277_reg_580[7 : 0] <= zext_ln277_fu_250_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln278_reg_608 <= add_ln278_fu_292_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        empty_29_reg_774 <= empty_29_fu_494_p2;
        v201_reg_744 <= v201_fu_470_p1;
        v212_reg_749 <= v212_fu_474_p1;
        v221_reg_754 <= v221_fu_478_p1;
        v230_reg_759 <= v230_fu_482_p1;
        v239_reg_764 <= v239_fu_486_p1;
        v248_reg_769 <= v248_fu_490_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        mul_ln280_reg_709 <= mul_ln280_fu_428_p2;
        mul_ln304_reg_714 <= mul_ln304_fu_437_p2;
        mul_ln315_reg_719 <= mul_ln315_fu_446_p2;
        mul_ln326_reg_724 <= mul_ln326_fu_455_p2;
        mul_ln337_reg_734 <= mul_ln337_fu_464_p2;
        trunc_ln278_reg_703 <= trunc_ln278_fu_410_p1;
        v262_load_4_reg_729 <= v262_q1;
        v262_load_5_reg_739 <= v262_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_2_reg_618 <= {{empty_17_fu_306_p2[7:3]}};
        tmp_3_reg_628 <= {{empty_20_fu_326_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_4_reg_638 <= {{empty_23_fu_346_p2[7:3]}};
        tmp_5_reg_648 <= {{empty_26_fu_366_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v262_load_1_reg_668 <= v262_q0;
        v262_load_reg_663 <= v262_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v262_load_2_reg_683 <= v262_q1;
        v262_load_3_reg_688 <= v262_q0;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_3mm_node2_Pipeline_label_8_fu_179_ap_done == 1'b0)) begin
        ap_ST_fsm_state11_blk = 1'b1;
    end else begin
        ap_ST_fsm_state11_blk = 1'b0;
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
    if ((((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln277_fu_238_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln277_fu_238_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v262_address0_local = p_cast390_fu_406_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v262_address0_local = p_cast388_fu_398_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v262_address0_local = p_cast_fu_390_p1;
    end else begin
        v262_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v262_address1_local = p_cast389_fu_402_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v262_address1_local = p_cast387_fu_394_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v262_address1_local = p_cast386_fu_386_p1;
    end else begin
        v262_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v262_ce0_local = 1'b1;
    end else begin
        v262_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v262_ce1_local = 1'b1;
    end else begin
        v262_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln277_fu_238_p2 == 1'd1))) begin
        v279_blk_n = v279_full_n;
    end else begin
        v279_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln277_fu_238_p2 == 1'd1))) begin
        v279_write_local = 1'b1;
    end else begin
        v279_write_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln277_fu_238_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln277_fu_238_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln278_fu_260_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_3mm_node2_Pipeline_label_8_fu_179_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln277_1_fu_232_p2 = (phi_mul_fu_94 + 16'd190);
assign add_ln277_fu_244_p2 = (v196_fu_98 + 8'd1);
assign add_ln278_fu_292_p2 = (v197_reg_167 + 8'd6);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state2 = ((v279_full_n == 1'b0) & (icmp_ln277_fu_238_p2 == 1'd1));
end
assign cmp11_fu_254_p2 = ((v196_fu_98 == 8'd0) ? 1'b1 : 1'b0);
assign empty_17_fu_306_p2 = (v197_reg_167 + 8'd2);
assign empty_20_fu_326_p2 = (v197_reg_167 + 8'd3);
assign empty_23_fu_346_p2 = (v197_reg_167 + 8'd4);
assign empty_26_fu_366_p2 = (v197_reg_167 + 8'd5);
assign empty_29_fu_494_p2 = ((trunc_ln278_reg_703 == 3'd6) ? 1'b1 : 1'b0);
assign grp_fu_500_p0 = grp_fu_500_p00;
assign grp_fu_500_p00 = v197_reg_167;
assign grp_fu_500_p1 = 16'd200;
assign grp_fu_500_p2 = zext_ln277_reg_580;
assign grp_fu_508_p0 = grp_fu_508_p00;
assign grp_fu_508_p00 = tmp_1_fu_280_p3;
assign grp_fu_508_p1 = 16'd200;
assign grp_fu_508_p2 = zext_ln277_reg_580;
assign grp_fu_516_p0 = grp_fu_516_p00;
assign grp_fu_516_p00 = empty_17_fu_306_p2;
assign grp_fu_516_p1 = 16'd200;
assign grp_fu_516_p2 = zext_ln277_reg_580;
assign grp_fu_524_p0 = grp_fu_524_p00;
assign grp_fu_524_p00 = empty_20_fu_326_p2;
assign grp_fu_524_p1 = 16'd200;
assign grp_fu_524_p2 = zext_ln277_reg_580;
assign grp_fu_532_p0 = grp_fu_532_p00;
assign grp_fu_532_p00 = empty_23_fu_346_p2;
assign grp_fu_532_p1 = 16'd200;
assign grp_fu_532_p2 = zext_ln277_reg_580;
assign grp_fu_540_p0 = grp_fu_540_p00;
assign grp_fu_540_p00 = empty_26_fu_366_p2;
assign grp_fu_540_p1 = 16'd200;
assign grp_fu_540_p2 = zext_ln277_reg_580;
assign grp_kernel_3mm_node2_Pipeline_label_8_fu_179_ap_start = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_ap_start_reg;
assign icmp_ln277_fu_238_p2 = ((v196_fu_98 == 8'd200) ? 1'b1 : 1'b0);
assign icmp_ln278_fu_260_p2 = ((v197_reg_167 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln_fu_414_p4 = {{v197_reg_167[7:3]}};
assign mul_ln280_fu_428_p0 = mul_ln280_fu_428_p00;
assign mul_ln280_fu_428_p00 = lshr_ln_fu_414_p4;
assign mul_ln280_fu_428_p1 = 13'd190;
assign mul_ln304_fu_437_p0 = mul_ln304_fu_437_p00;
assign mul_ln304_fu_437_p00 = tmp_2_reg_618;
assign mul_ln304_fu_437_p1 = 13'd190;
assign mul_ln315_fu_446_p0 = mul_ln315_fu_446_p00;
assign mul_ln315_fu_446_p00 = tmp_3_reg_628;
assign mul_ln315_fu_446_p1 = 13'd190;
assign mul_ln326_fu_455_p0 = mul_ln326_fu_455_p00;
assign mul_ln326_fu_455_p00 = tmp_4_reg_638;
assign mul_ln326_fu_455_p1 = 13'd190;
assign mul_ln337_fu_464_p0 = mul_ln337_fu_464_p00;
assign mul_ln337_fu_464_p00 = tmp_5_reg_648;
assign mul_ln337_fu_464_p1 = 13'd190;
assign p_cast386_fu_386_p1 = grp_fu_500_p3;
assign p_cast387_fu_394_p1 = grp_fu_516_p3;
assign p_cast388_fu_398_p1 = grp_fu_524_p3;
assign p_cast389_fu_402_p1 = grp_fu_532_p3;
assign p_cast390_fu_406_p1 = grp_fu_540_p3;
assign p_cast_fu_390_p1 = grp_fu_508_p3;
assign tmp_1_fu_280_p3 = {{tmp_fu_270_p4}, {1'd1}};
assign tmp_fu_270_p4 = {{v197_reg_167[7:1]}};
assign trunc_ln278_fu_410_p1 = v197_reg_167[2:0];
assign v201_fu_470_p1 = v262_load_reg_663;
assign v212_fu_474_p1 = v262_load_1_reg_668;
assign v221_fu_478_p1 = v262_load_2_reg_683;
assign v230_fu_482_p1 = v262_load_3_reg_688;
assign v239_fu_486_p1 = v262_load_4_reg_729;
assign v248_fu_490_p1 = v262_load_5_reg_739;
assign v261_0_address0 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_0_address0;
assign v261_0_address1 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_0_address1;
assign v261_0_ce0 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_0_ce0;
assign v261_0_ce1 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_0_ce1;
assign v261_0_d0 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_0_d0;
assign v261_0_d1 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_0_d1;
assign v261_0_we0 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_0_we0;
assign v261_0_we1 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_0_we1;
assign v261_1_address0 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_1_address0;
assign v261_1_address1 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_1_address1;
assign v261_1_ce0 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_1_ce0;
assign v261_1_ce1 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_1_ce1;
assign v261_1_d0 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_1_d0;
assign v261_1_d1 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_1_d1;
assign v261_1_we0 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_1_we0;
assign v261_1_we1 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_1_we1;
assign v261_2_address0 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_2_address0;
assign v261_2_address1 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_2_address1;
assign v261_2_ce0 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_2_ce0;
assign v261_2_ce1 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_2_ce1;
assign v261_2_d0 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_2_d0;
assign v261_2_d1 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_2_d1;
assign v261_2_we0 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_2_we0;
assign v261_2_we1 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_2_we1;
assign v261_3_address0 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_3_address0;
assign v261_3_address1 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_3_address1;
assign v261_3_ce0 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_3_ce0;
assign v261_3_ce1 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_3_ce1;
assign v261_3_d0 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_3_d0;
assign v261_3_d1 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_3_d1;
assign v261_3_we0 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_3_we0;
assign v261_3_we1 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_3_we1;
assign v261_4_address0 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_4_address0;
assign v261_4_address1 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_4_address1;
assign v261_4_ce0 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_4_ce0;
assign v261_4_ce1 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_4_ce1;
assign v261_4_d0 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_4_d0;
assign v261_4_d1 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_4_d1;
assign v261_4_we0 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_4_we0;
assign v261_4_we1 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_4_we1;
assign v261_5_address0 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_5_address0;
assign v261_5_address1 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_5_address1;
assign v261_5_ce0 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_5_ce0;
assign v261_5_ce1 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_5_ce1;
assign v261_5_d0 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_5_d0;
assign v261_5_d1 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_5_d1;
assign v261_5_we0 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_5_we0;
assign v261_5_we1 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_5_we1;
assign v261_6_address0 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_6_address0;
assign v261_6_address1 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_6_address1;
assign v261_6_ce0 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_6_ce0;
assign v261_6_ce1 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_6_ce1;
assign v261_6_d0 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_6_d0;
assign v261_6_d1 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_6_d1;
assign v261_6_we0 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_6_we0;
assign v261_6_we1 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_6_we1;
assign v261_7_address0 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_7_address0;
assign v261_7_address1 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_7_address1;
assign v261_7_ce0 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_7_ce0;
assign v261_7_ce1 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_7_ce1;
assign v261_7_d0 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_7_d0;
assign v261_7_d1 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_7_d1;
assign v261_7_we0 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_7_we0;
assign v261_7_we1 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v261_7_we1;
assign v262_address0 = v262_address0_local;
assign v262_address1 = v262_address1_local;
assign v262_ce0 = v262_ce0_local;
assign v262_ce1 = v262_ce1_local;
assign v263_address0 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v263_address0;
assign v263_address1 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v263_address1;
assign v263_ce0 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v263_ce0;
assign v263_ce1 = grp_kernel_3mm_node2_Pipeline_label_8_fu_179_v263_ce1;
assign v279_din = 1'd1;
assign v279_write = v279_write_local;
assign zext_ln277_fu_250_p1 = v196_fu_98;
always @ (posedge ap_clk) begin
    zext_ln277_reg_580[15:8] <= 8'b00000000;
end
endmodule 