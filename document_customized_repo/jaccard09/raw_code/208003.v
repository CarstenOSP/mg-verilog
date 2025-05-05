module SgdLR_sw (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v0_address0,v0_ce0,v0_q0,v1_0_address0,v1_0_ce0,v1_0_q0,v1_1_address0,v1_1_ce0,v1_1_q0,v1_2_address0,v1_2_ce0,v1_2_q0,v1_3_address0,v1_3_ce0,v1_3_q0,v1_4_address0,v1_4_ce0,v1_4_q0,v1_5_address0,v1_5_ce0,v1_5_q0,v1_6_address0,v1_6_ce0,v1_6_q0,v1_7_address0,v1_7_ce0,v1_7_q0,v2_address0,v2_ce0,v2_we0,v2_d0,v2_q0,v2_address1,v2_ce1,v2_q1); 
parameter    ap_ST_fsm_state1 = 50'd1;
parameter    ap_ST_fsm_state2 = 50'd2;
parameter    ap_ST_fsm_state3 = 50'd4;
parameter    ap_ST_fsm_state4 = 50'd8;
parameter    ap_ST_fsm_state5 = 50'd16;
parameter    ap_ST_fsm_state6 = 50'd32;
parameter    ap_ST_fsm_state7 = 50'd64;
parameter    ap_ST_fsm_state8 = 50'd128;
parameter    ap_ST_fsm_state9 = 50'd256;
parameter    ap_ST_fsm_state10 = 50'd512;
parameter    ap_ST_fsm_state11 = 50'd1024;
parameter    ap_ST_fsm_state12 = 50'd2048;
parameter    ap_ST_fsm_state13 = 50'd4096;
parameter    ap_ST_fsm_state14 = 50'd8192;
parameter    ap_ST_fsm_state15 = 50'd16384;
parameter    ap_ST_fsm_state16 = 50'd32768;
parameter    ap_ST_fsm_state17 = 50'd65536;
parameter    ap_ST_fsm_state18 = 50'd131072;
parameter    ap_ST_fsm_state19 = 50'd262144;
parameter    ap_ST_fsm_state20 = 50'd524288;
parameter    ap_ST_fsm_state21 = 50'd1048576;
parameter    ap_ST_fsm_state22 = 50'd2097152;
parameter    ap_ST_fsm_state23 = 50'd4194304;
parameter    ap_ST_fsm_state24 = 50'd8388608;
parameter    ap_ST_fsm_state25 = 50'd16777216;
parameter    ap_ST_fsm_state26 = 50'd33554432;
parameter    ap_ST_fsm_state27 = 50'd67108864;
parameter    ap_ST_fsm_state28 = 50'd134217728;
parameter    ap_ST_fsm_state29 = 50'd268435456;
parameter    ap_ST_fsm_state30 = 50'd536870912;
parameter    ap_ST_fsm_state31 = 50'd1073741824;
parameter    ap_ST_fsm_state32 = 50'd2147483648;
parameter    ap_ST_fsm_state33 = 50'd4294967296;
parameter    ap_ST_fsm_state34 = 50'd8589934592;
parameter    ap_ST_fsm_state35 = 50'd17179869184;
parameter    ap_ST_fsm_state36 = 50'd34359738368;
parameter    ap_ST_fsm_state37 = 50'd68719476736;
parameter    ap_ST_fsm_state38 = 50'd137438953472;
parameter    ap_ST_fsm_state39 = 50'd274877906944;
parameter    ap_ST_fsm_state40 = 50'd549755813888;
parameter    ap_ST_fsm_state41 = 50'd1099511627776;
parameter    ap_ST_fsm_state42 = 50'd2199023255552;
parameter    ap_ST_fsm_state43 = 50'd4398046511104;
parameter    ap_ST_fsm_state44 = 50'd8796093022208;
parameter    ap_ST_fsm_state45 = 50'd17592186044416;
parameter    ap_ST_fsm_state46 = 50'd35184372088832;
parameter    ap_ST_fsm_state47 = 50'd70368744177664;
parameter    ap_ST_fsm_state48 = 50'd140737488355328;
parameter    ap_ST_fsm_state49 = 50'd281474976710656;
parameter    ap_ST_fsm_state50 = 50'd562949953421312;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [22:0] v0_address0;
output   v0_ce0;
input  [31:0] v0_q0;
output  [9:0] v1_0_address0;
output   v1_0_ce0;
input  [31:0] v1_0_q0;
output  [9:0] v1_1_address0;
output   v1_1_ce0;
input  [31:0] v1_1_q0;
output  [9:0] v1_2_address0;
output   v1_2_ce0;
input  [31:0] v1_2_q0;
output  [9:0] v1_3_address0;
output   v1_3_ce0;
input  [31:0] v1_3_q0;
output  [9:0] v1_4_address0;
output   v1_4_ce0;
input  [31:0] v1_4_q0;
output  [9:0] v1_5_address0;
output   v1_5_ce0;
input  [31:0] v1_5_q0;
output  [9:0] v1_6_address0;
output   v1_6_ce0;
input  [31:0] v1_6_q0;
output  [9:0] v1_7_address0;
output   v1_7_ce0;
input  [31:0] v1_7_q0;
output  [9:0] v2_address0;
output   v2_ce0;
output   v2_we0;
output  [31:0] v2_d0;
input  [31:0] v2_q0;
output  [9:0] v2_address1;
output   v2_ce1;
input  [31:0] v2_q1;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[22:0] v0_address0;
reg v0_ce0;
reg[9:0] v2_address0;
reg v2_ce0;
reg v2_we0;
reg v2_ce1;
(* fsm_encoding = "none" *) reg   [49:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [31:0] grp_fu_291_p2;
reg   [31:0] reg_309;
wire    ap_CS_fsm_state23;
wire    ap_CS_fsm_state46;
wire   [2:0] v4_2_fu_329_p2;
reg   [2:0] v4_2_reg_499;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln28_fu_335_p2;
reg   [0:0] icmp_ln28_reg_504;
wire    ap_CS_fsm_state3;
wire   [12:0] add_ln28_fu_341_p2;
reg   [12:0] add_ln28_reg_508;
wire   [25:0] add_ln28_1_fu_347_p2;
reg   [25:0] add_ln28_1_reg_513;
wire    ap_CS_fsm_state4;
wire   [22:0] tmp_fu_353_p3;
reg   [22:0] tmp_reg_518;
reg   [2:0] trunc_ln_reg_524;
wire   [12:0] select_ln28_fu_384_p3;
reg   [12:0] select_ln28_reg_529;
wire   [0:0] xor_ln43_fu_411_p2;
reg   [0:0] xor_ln43_reg_534;
wire    ap_CS_fsm_state6;
wire   [30:0] trunc_ln43_fu_417_p1;
reg   [30:0] trunc_ln43_reg_539;
wire    ap_CS_fsm_state7;
wire   [31:0] grp_fu_304_p2;
reg   [31:0] v16_reg_549;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state32;
wire   [31:0] v_fu_444_p19;
reg   [31:0] v_reg_594;
wire    ap_CS_fsm_state33;
wire   [31:0] grp_fu_296_p2;
reg   [31:0] v18_reg_599;
wire    ap_CS_fsm_state39;
wire   [31:0] grp_fu_301_p1;
reg   [31:0] v1_reg_604;
reg   [9:0] v3_address0;
reg    v3_ce0;
reg    v3_we0;
wire   [31:0] v3_q0;
wire    grp_SgdLR_sw_Pipeline_label_2_fu_265_ap_start;
wire    grp_SgdLR_sw_Pipeline_label_2_fu_265_ap_done;
wire    grp_SgdLR_sw_Pipeline_label_2_fu_265_ap_idle;
wire    grp_SgdLR_sw_Pipeline_label_2_fu_265_ap_ready;
wire   [9:0] grp_SgdLR_sw_Pipeline_label_2_fu_265_v2_address0;
wire    grp_SgdLR_sw_Pipeline_label_2_fu_265_v2_ce0;
wire   [22:0] grp_SgdLR_sw_Pipeline_label_2_fu_265_v0_address0;
wire    grp_SgdLR_sw_Pipeline_label_2_fu_265_v0_ce0;
wire   [31:0] grp_SgdLR_sw_Pipeline_label_2_fu_265_v6_out;
wire    grp_SgdLR_sw_Pipeline_label_2_fu_265_v6_out_ap_vld;
wire   [31:0] grp_SgdLR_sw_Pipeline_label_2_fu_265_grp_fu_291_p_din0;
wire   [31:0] grp_SgdLR_sw_Pipeline_label_2_fu_265_grp_fu_291_p_din1;
wire   [0:0] grp_SgdLR_sw_Pipeline_label_2_fu_265_grp_fu_291_p_opcode;
wire    grp_SgdLR_sw_Pipeline_label_2_fu_265_grp_fu_291_p_ce;
wire   [31:0] grp_SgdLR_sw_Pipeline_label_2_fu_265_grp_fu_609_p_din0;
wire   [31:0] grp_SgdLR_sw_Pipeline_label_2_fu_265_grp_fu_609_p_din1;
wire    grp_SgdLR_sw_Pipeline_label_2_fu_265_grp_fu_609_p_ce;
wire    grp_SgdLR_sw_Pipeline_label_3_fu_275_ap_start;
wire    grp_SgdLR_sw_Pipeline_label_3_fu_275_ap_done;
wire    grp_SgdLR_sw_Pipeline_label_3_fu_275_ap_idle;
wire    grp_SgdLR_sw_Pipeline_label_3_fu_275_ap_ready;
wire   [22:0] grp_SgdLR_sw_Pipeline_label_3_fu_275_v0_address0;
wire    grp_SgdLR_sw_Pipeline_label_3_fu_275_v0_ce0;
wire   [9:0] grp_SgdLR_sw_Pipeline_label_3_fu_275_v3_address0;
wire    grp_SgdLR_sw_Pipeline_label_3_fu_275_v3_ce0;
wire    grp_SgdLR_sw_Pipeline_label_3_fu_275_v3_we0;
wire   [31:0] grp_SgdLR_sw_Pipeline_label_3_fu_275_v3_d0;
wire   [31:0] grp_SgdLR_sw_Pipeline_label_3_fu_275_grp_fu_609_p_din0;
wire   [31:0] grp_SgdLR_sw_Pipeline_label_3_fu_275_grp_fu_609_p_din1;
wire    grp_SgdLR_sw_Pipeline_label_3_fu_275_grp_fu_609_p_ce;
wire    grp_SgdLR_sw_Pipeline_label_4_fu_284_ap_start;
wire    grp_SgdLR_sw_Pipeline_label_4_fu_284_ap_done;
wire    grp_SgdLR_sw_Pipeline_label_4_fu_284_ap_idle;
wire    grp_SgdLR_sw_Pipeline_label_4_fu_284_ap_ready;
wire   [9:0] grp_SgdLR_sw_Pipeline_label_4_fu_284_v3_address0;
wire    grp_SgdLR_sw_Pipeline_label_4_fu_284_v3_ce0;
wire   [9:0] grp_SgdLR_sw_Pipeline_label_4_fu_284_v2_address0;
wire    grp_SgdLR_sw_Pipeline_label_4_fu_284_v2_ce0;
wire    grp_SgdLR_sw_Pipeline_label_4_fu_284_v2_we0;
wire   [31:0] grp_SgdLR_sw_Pipeline_label_4_fu_284_v2_d0;
wire   [9:0] grp_SgdLR_sw_Pipeline_label_4_fu_284_v2_address1;
wire    grp_SgdLR_sw_Pipeline_label_4_fu_284_v2_ce1;
wire   [31:0] grp_SgdLR_sw_Pipeline_label_4_fu_284_grp_fu_291_p_din0;
wire   [31:0] grp_SgdLR_sw_Pipeline_label_4_fu_284_grp_fu_291_p_din1;
wire   [0:0] grp_SgdLR_sw_Pipeline_label_4_fu_284_grp_fu_291_p_opcode;
wire    grp_SgdLR_sw_Pipeline_label_4_fu_284_grp_fu_291_p_ce;
wire   [31:0] grp_SgdLR_sw_Pipeline_label_4_fu_284_grp_fu_609_p_din0;
wire   [31:0] grp_SgdLR_sw_Pipeline_label_4_fu_284_grp_fu_609_p_din1;
wire    grp_SgdLR_sw_Pipeline_label_4_fu_284_grp_fu_609_p_ce;
reg   [12:0] v5_reg_230;
wire   [0:0] icmp_ln27_fu_323_p2;
wire    ap_CS_fsm_state50;
reg   [25:0] phi_mul_reg_242;
reg   [12:0] phi_urem_reg_253;
reg    grp_SgdLR_sw_Pipeline_label_2_fu_265_ap_start_reg;
wire    ap_CS_fsm_state5;
reg    grp_SgdLR_sw_Pipeline_label_3_fu_275_ap_start_reg;
wire    ap_CS_fsm_state47;
wire    ap_CS_fsm_state48;
reg    grp_SgdLR_sw_Pipeline_label_4_fu_284_ap_start_reg;
wire    ap_CS_fsm_state49;
wire   [63:0] zext_ln28_fu_432_p1;
reg   [2:0] v4_fu_114;
reg    v1_0_ce0_local;
reg    v1_1_ce0_local;
reg    v1_2_ce0_local;
reg    v1_3_ce0_local;
reg    v1_4_ce0_local;
reg    v1_5_ce0_local;
reg    v1_6_ce0_local;
reg    v1_7_ce0_local;
reg   [31:0] grp_fu_291_p0;
reg   [31:0] grp_fu_291_p1;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state40;
wire    ap_CS_fsm_state24;
wire    ap_CS_fsm_state34;
wire   [31:0] grp_fu_304_p1;
wire   [12:0] add_ln28_2_fu_372_p2;
wire   [0:0] icmp_ln28_1_fu_378_p2;
wire   [31:0] bitcast_ln43_fu_399_p1;
wire   [0:0] bit_sel_fu_403_p3;
wire   [31:0] xor_ln_fu_421_p3;
wire   [31:0] v_fu_444_p17;
reg   [1:0] grp_fu_291_opcode;
reg    grp_fu_291_ce;
wire   [31:0] grp_fu_609_p2;
reg   [31:0] grp_fu_609_p0;
reg   [31:0] grp_fu_609_p1;
reg    grp_fu_609_ce;
reg   [49:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
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
wire    ap_ST_fsm_state17_blk;
wire    ap_ST_fsm_state18_blk;
wire    ap_ST_fsm_state19_blk;
wire    ap_ST_fsm_state20_blk;
wire    ap_ST_fsm_state21_blk;
wire    ap_ST_fsm_state22_blk;
wire    ap_ST_fsm_state23_blk;
wire    ap_ST_fsm_state24_blk;
wire    ap_ST_fsm_state25_blk;
wire    ap_ST_fsm_state26_blk;
wire    ap_ST_fsm_state27_blk;
wire    ap_ST_fsm_state28_blk;
wire    ap_ST_fsm_state29_blk;
wire    ap_ST_fsm_state30_blk;
wire    ap_ST_fsm_state31_blk;
wire    ap_ST_fsm_state32_blk;
wire    ap_ST_fsm_state33_blk;
wire    ap_ST_fsm_state34_blk;
wire    ap_ST_fsm_state35_blk;
wire    ap_ST_fsm_state36_blk;
wire    ap_ST_fsm_state37_blk;
wire    ap_ST_fsm_state38_blk;
wire    ap_ST_fsm_state39_blk;
wire    ap_ST_fsm_state40_blk;
wire    ap_ST_fsm_state41_blk;
wire    ap_ST_fsm_state42_blk;
wire    ap_ST_fsm_state43_blk;
wire    ap_ST_fsm_state44_blk;
wire    ap_ST_fsm_state45_blk;
wire    ap_ST_fsm_state46_blk;
wire    ap_ST_fsm_state47_blk;
reg    ap_ST_fsm_state48_blk;
wire    ap_ST_fsm_state49_blk;
reg    ap_ST_fsm_state50_blk;
wire   [2:0] v_fu_444_p1;
wire   [2:0] v_fu_444_p3;
wire   [2:0] v_fu_444_p5;
wire   [2:0] v_fu_444_p7;
wire  signed [2:0] v_fu_444_p9;
wire  signed [2:0] v_fu_444_p11;
wire  signed [2:0] v_fu_444_p13;
wire  signed [2:0] v_fu_444_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 50'd1;
#0 grp_SgdLR_sw_Pipeline_label_2_fu_265_ap_start_reg = 1'b0;
#0 grp_SgdLR_sw_Pipeline_label_3_fu_275_ap_start_reg = 1'b0;
#0 grp_SgdLR_sw_Pipeline_label_4_fu_284_ap_start_reg = 1'b0;
#0 v4_fu_114 = 3'd0;
end
SgdLR_sw_v3_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
v3_U(.clk(ap_clk),.reset(ap_rst),.address0(v3_address0),.ce0(v3_ce0),.we0(v3_we0),.d0(grp_SgdLR_sw_Pipeline_label_3_fu_275_v3_d0),.q0(v3_q0));
SgdLR_sw_SgdLR_sw_Pipeline_label_2 grp_SgdLR_sw_Pipeline_label_2_fu_265(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_SgdLR_sw_Pipeline_label_2_fu_265_ap_start),.ap_done(grp_SgdLR_sw_Pipeline_label_2_fu_265_ap_done),.ap_idle(grp_SgdLR_sw_Pipeline_label_2_fu_265_ap_idle),.ap_ready(grp_SgdLR_sw_Pipeline_label_2_fu_265_ap_ready),.v2_address0(grp_SgdLR_sw_Pipeline_label_2_fu_265_v2_address0),.v2_ce0(grp_SgdLR_sw_Pipeline_label_2_fu_265_v2_ce0),.v2_q0(v2_q0),.tmp(tmp_reg_518),.v0_address0(grp_SgdLR_sw_Pipeline_label_2_fu_265_v0_address0),.v0_ce0(grp_SgdLR_sw_Pipeline_label_2_fu_265_v0_ce0),.v0_q0(v0_q0),.v6_out(grp_SgdLR_sw_Pipeline_label_2_fu_265_v6_out),.v6_out_ap_vld(grp_SgdLR_sw_Pipeline_label_2_fu_265_v6_out_ap_vld),.grp_fu_291_p_din0(grp_SgdLR_sw_Pipeline_label_2_fu_265_grp_fu_291_p_din0),.grp_fu_291_p_din1(grp_SgdLR_sw_Pipeline_label_2_fu_265_grp_fu_291_p_din1),.grp_fu_291_p_opcode(grp_SgdLR_sw_Pipeline_label_2_fu_265_grp_fu_291_p_opcode),.grp_fu_291_p_dout0(grp_fu_291_p2),.grp_fu_291_p_ce(grp_SgdLR_sw_Pipeline_label_2_fu_265_grp_fu_291_p_ce),.grp_fu_609_p_din0(grp_SgdLR_sw_Pipeline_label_2_fu_265_grp_fu_609_p_din0),.grp_fu_609_p_din1(grp_SgdLR_sw_Pipeline_label_2_fu_265_grp_fu_609_p_din1),.grp_fu_609_p_dout0(grp_fu_609_p2),.grp_fu_609_p_ce(grp_SgdLR_sw_Pipeline_label_2_fu_265_grp_fu_609_p_ce));
SgdLR_sw_SgdLR_sw_Pipeline_label_3 grp_SgdLR_sw_Pipeline_label_3_fu_275(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_SgdLR_sw_Pipeline_label_3_fu_275_ap_start),.ap_done(grp_SgdLR_sw_Pipeline_label_3_fu_275_ap_done),.ap_idle(grp_SgdLR_sw_Pipeline_label_3_fu_275_ap_idle),.ap_ready(grp_SgdLR_sw_Pipeline_label_3_fu_275_ap_ready),.tmp(tmp_reg_518),.v0_address0(grp_SgdLR_sw_Pipeline_label_3_fu_275_v0_address0),.v0_ce0(grp_SgdLR_sw_Pipeline_label_3_fu_275_v0_ce0),.v0_q0(v0_q0),.v22(reg_309),.v3_address0(grp_SgdLR_sw_Pipeline_label_3_fu_275_v3_address0),.v3_ce0(grp_SgdLR_sw_Pipeline_label_3_fu_275_v3_ce0),.v3_we0(grp_SgdLR_sw_Pipeline_label_3_fu_275_v3_we0),.v3_d0(grp_SgdLR_sw_Pipeline_label_3_fu_275_v3_d0),.grp_fu_609_p_din0(grp_SgdLR_sw_Pipeline_label_3_fu_275_grp_fu_609_p_din0),.grp_fu_609_p_din1(grp_SgdLR_sw_Pipeline_label_3_fu_275_grp_fu_609_p_din1),.grp_fu_609_p_dout0(grp_fu_609_p2),.grp_fu_609_p_ce(grp_SgdLR_sw_Pipeline_label_3_fu_275_grp_fu_609_p_ce));
SgdLR_sw_SgdLR_sw_Pipeline_label_4 grp_SgdLR_sw_Pipeline_label_4_fu_284(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_SgdLR_sw_Pipeline_label_4_fu_284_ap_start),.ap_done(grp_SgdLR_sw_Pipeline_label_4_fu_284_ap_done),.ap_idle(grp_SgdLR_sw_Pipeline_label_4_fu_284_ap_idle),.ap_ready(grp_SgdLR_sw_Pipeline_label_4_fu_284_ap_ready),.v3_address0(grp_SgdLR_sw_Pipeline_label_4_fu_284_v3_address0),.v3_ce0(grp_SgdLR_sw_Pipeline_label_4_fu_284_v3_ce0),.v3_q0(v3_q0),.v2_address0(grp_SgdLR_sw_Pipeline_label_4_fu_284_v2_address0),.v2_ce0(grp_SgdLR_sw_Pipeline_label_4_fu_284_v2_ce0),.v2_we0(grp_SgdLR_sw_Pipeline_label_4_fu_284_v2_we0),.v2_d0(grp_SgdLR_sw_Pipeline_label_4_fu_284_v2_d0),.v2_address1(grp_SgdLR_sw_Pipeline_label_4_fu_284_v2_address1),.v2_ce1(grp_SgdLR_sw_Pipeline_label_4_fu_284_v2_ce1),.v2_q1(v2_q1),.grp_fu_291_p_din0(grp_SgdLR_sw_Pipeline_label_4_fu_284_grp_fu_291_p_din0),.grp_fu_291_p_din1(grp_SgdLR_sw_Pipeline_label_4_fu_284_grp_fu_291_p_din1),.grp_fu_291_p_opcode(grp_SgdLR_sw_Pipeline_label_4_fu_284_grp_fu_291_p_opcode),.grp_fu_291_p_dout0(grp_fu_291_p2),.grp_fu_291_p_ce(grp_SgdLR_sw_Pipeline_label_4_fu_284_grp_fu_291_p_ce),.grp_fu_609_p_din0(grp_SgdLR_sw_Pipeline_label_4_fu_284_grp_fu_609_p_din0),.grp_fu_609_p_din1(grp_SgdLR_sw_Pipeline_label_4_fu_284_grp_fu_609_p_din1),.grp_fu_609_p_dout0(grp_fu_609_p2),.grp_fu_609_p_ce(grp_SgdLR_sw_Pipeline_label_4_fu_284_grp_fu_609_p_ce));
SgdLR_sw_faddfsub_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
faddfsub_32ns_32ns_32_7_full_dsp_1_U16(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_291_p0),.din1(grp_fu_291_p1),.opcode(grp_fu_291_opcode),.ce(grp_fu_291_ce),.dout(grp_fu_291_p2));
SgdLR_sw_fdiv_32ns_32ns_32_16_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 16 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fdiv_32ns_32ns_32_16_no_dsp_1_U17(.clk(ap_clk),.reset(ap_rst),.din0(32'd1065353216),.din1(reg_309),.ce(1'b1),.dout(grp_fu_296_p2));
SgdLR_sw_sitofp_32ns_32_6_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 6 ),.din0_WIDTH( 32 ),.dout_WIDTH( 32 ))
sitofp_32ns_32_6_no_dsp_1_U18(.clk(ap_clk),.reset(ap_rst),.din0(v_reg_594),.ce(1'b1),.dout(grp_fu_301_p1));
SgdLR_sw_fexp_32ns_32ns_32_10_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fexp_32ns_32ns_32_10_full_dsp_1_U19(.clk(ap_clk),.reset(ap_rst),.din0(32'd0),.din1(grp_fu_304_p1),.ce(1'b1),.dout(grp_fu_304_p2));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U20(.din0(v1_0_q0),.din1(v1_1_q0),.din2(v1_2_q0),.din3(v1_3_q0),.din4(v1_4_q0),.din5(v1_5_q0),.din6(v1_6_q0),.din7(v1_7_q0),.def(v_fu_444_p17),.sel(trunc_ln_reg_524),.dout(v_fu_444_p19));
SgdLR_sw_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U21(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_609_p0),.din1(grp_fu_609_p1),.ce(grp_fu_609_ce),.dout(grp_fu_609_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_SgdLR_sw_Pipeline_label_2_fu_265_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln28_reg_504 == 1'd0))) begin
            grp_SgdLR_sw_Pipeline_label_2_fu_265_ap_start_reg <= 1'b1;
        end else if ((grp_SgdLR_sw_Pipeline_label_2_fu_265_ap_ready == 1'b1)) begin
            grp_SgdLR_sw_Pipeline_label_2_fu_265_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_SgdLR_sw_Pipeline_label_3_fu_275_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state47)) begin
            grp_SgdLR_sw_Pipeline_label_3_fu_275_ap_start_reg <= 1'b1;
        end else if ((grp_SgdLR_sw_Pipeline_label_3_fu_275_ap_ready == 1'b1)) begin
            grp_SgdLR_sw_Pipeline_label_3_fu_275_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_SgdLR_sw_Pipeline_label_4_fu_284_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state49)) begin
            grp_SgdLR_sw_Pipeline_label_4_fu_284_ap_start_reg <= 1'b1;
        end else if ((grp_SgdLR_sw_Pipeline_label_4_fu_284_ap_ready == 1'b1)) begin
            grp_SgdLR_sw_Pipeline_label_4_fu_284_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((grp_SgdLR_sw_Pipeline_label_4_fu_284_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state50))) begin
        phi_mul_reg_242 <= add_ln28_1_reg_513;
    end else if (((icmp_ln27_fu_323_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        phi_mul_reg_242 <= 26'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_SgdLR_sw_Pipeline_label_4_fu_284_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state50))) begin
        phi_urem_reg_253 <= select_ln28_reg_529;
    end else if (((icmp_ln27_fu_323_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        phi_urem_reg_253 <= 13'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v4_fu_114 <= 3'd0;
    end else if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln28_reg_504 == 1'd1))) begin
        v4_fu_114 <= v4_2_reg_499;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_SgdLR_sw_Pipeline_label_4_fu_284_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state50))) begin
        v5_reg_230 <= add_ln28_reg_508;
    end else if (((icmp_ln27_fu_323_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v5_reg_230 <= 13'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add_ln28_1_reg_513 <= add_ln28_1_fu_347_p2;
        select_ln28_reg_529 <= select_ln28_fu_384_p3;
        tmp_reg_518[22 : 10] <= tmp_fu_353_p3[22 : 10];
        trunc_ln_reg_524 <= {{phi_mul_reg_242[25:23]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln28_reg_508 <= add_ln28_fu_341_p2;
        icmp_ln28_reg_504 <= icmp_ln28_fu_335_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state23))) begin
        reg_309 <= grp_fu_291_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        trunc_ln43_reg_539 <= trunc_ln43_fu_417_p1;
        xor_ln43_reg_534 <= xor_ln43_fu_411_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        v16_reg_549 <= grp_fu_304_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        v18_reg_599 <= grp_fu_296_p2;
        v1_reg_604 <= grp_fu_301_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v4_2_reg_499 <= v4_2_fu_329_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        v_reg_594 <= v_fu_444_p19;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
assign ap_ST_fsm_state17_blk = 1'b0;
assign ap_ST_fsm_state18_blk = 1'b0;
assign ap_ST_fsm_state19_blk = 1'b0;
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state20_blk = 1'b0;
assign ap_ST_fsm_state21_blk = 1'b0;
assign ap_ST_fsm_state22_blk = 1'b0;
assign ap_ST_fsm_state23_blk = 1'b0;
assign ap_ST_fsm_state24_blk = 1'b0;
assign ap_ST_fsm_state25_blk = 1'b0;
assign ap_ST_fsm_state26_blk = 1'b0;
assign ap_ST_fsm_state27_blk = 1'b0;
assign ap_ST_fsm_state28_blk = 1'b0;
assign ap_ST_fsm_state29_blk = 1'b0;
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state30_blk = 1'b0;
assign ap_ST_fsm_state31_blk = 1'b0;
assign ap_ST_fsm_state32_blk = 1'b0;
assign ap_ST_fsm_state33_blk = 1'b0;
assign ap_ST_fsm_state34_blk = 1'b0;
assign ap_ST_fsm_state35_blk = 1'b0;
assign ap_ST_fsm_state36_blk = 1'b0;
assign ap_ST_fsm_state37_blk = 1'b0;
assign ap_ST_fsm_state38_blk = 1'b0;
assign ap_ST_fsm_state39_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state40_blk = 1'b0;
assign ap_ST_fsm_state41_blk = 1'b0;
assign ap_ST_fsm_state42_blk = 1'b0;
assign ap_ST_fsm_state43_blk = 1'b0;
assign ap_ST_fsm_state44_blk = 1'b0;
assign ap_ST_fsm_state45_blk = 1'b0;
assign ap_ST_fsm_state46_blk = 1'b0;
assign ap_ST_fsm_state47_blk = 1'b0;
always @ (*) begin
    if ((grp_SgdLR_sw_Pipeline_label_3_fu_275_ap_done == 1'b0)) begin
        ap_ST_fsm_state48_blk = 1'b1;
    end else begin
        ap_ST_fsm_state48_blk = 1'b0;
    end
end
assign ap_ST_fsm_state49_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
always @ (*) begin
    if ((grp_SgdLR_sw_Pipeline_label_4_fu_284_ap_done == 1'b0)) begin
        ap_ST_fsm_state50_blk = 1'b1;
    end else begin
        ap_ST_fsm_state50_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_SgdLR_sw_Pipeline_label_2_fu_265_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((icmp_ln27_fu_323_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln27_fu_323_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state50)) begin
        grp_fu_291_ce = grp_SgdLR_sw_Pipeline_label_4_fu_284_grp_fu_291_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_291_ce = grp_SgdLR_sw_Pipeline_label_2_fu_265_grp_fu_291_p_ce;
    end else begin
        grp_fu_291_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state50)) begin
        grp_fu_291_opcode = grp_SgdLR_sw_Pipeline_label_4_fu_284_grp_fu_291_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_291_opcode = grp_SgdLR_sw_Pipeline_label_2_fu_265_grp_fu_291_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_291_opcode = 2'd1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_291_opcode = 2'd0;
    end else begin
        grp_fu_291_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state50)) begin
        grp_fu_291_p0 = grp_SgdLR_sw_Pipeline_label_4_fu_284_grp_fu_291_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_291_p0 = grp_SgdLR_sw_Pipeline_label_2_fu_265_grp_fu_291_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_291_p0 = v18_reg_599;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_291_p0 = v16_reg_549;
    end else begin
        grp_fu_291_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state50)) begin
        grp_fu_291_p1 = grp_SgdLR_sw_Pipeline_label_4_fu_284_grp_fu_291_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_291_p1 = grp_SgdLR_sw_Pipeline_label_2_fu_265_grp_fu_291_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_291_p1 = v1_reg_604;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_291_p1 = 32'd1065353216;
    end else begin
        grp_fu_291_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state50)) begin
        grp_fu_609_ce = grp_SgdLR_sw_Pipeline_label_4_fu_284_grp_fu_609_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state48)) begin
        grp_fu_609_ce = grp_SgdLR_sw_Pipeline_label_3_fu_275_grp_fu_609_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_609_ce = grp_SgdLR_sw_Pipeline_label_2_fu_265_grp_fu_609_p_ce;
    end else begin
        grp_fu_609_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state50)) begin
        grp_fu_609_p0 = grp_SgdLR_sw_Pipeline_label_4_fu_284_grp_fu_609_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state48)) begin
        grp_fu_609_p0 = grp_SgdLR_sw_Pipeline_label_3_fu_275_grp_fu_609_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_609_p0 = grp_SgdLR_sw_Pipeline_label_2_fu_265_grp_fu_609_p_din0;
    end else begin
        grp_fu_609_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state50)) begin
        grp_fu_609_p1 = grp_SgdLR_sw_Pipeline_label_4_fu_284_grp_fu_609_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state48)) begin
        grp_fu_609_p1 = grp_SgdLR_sw_Pipeline_label_3_fu_275_grp_fu_609_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_609_p1 = grp_SgdLR_sw_Pipeline_label_2_fu_265_grp_fu_609_p_din1;
    end else begin
        grp_fu_609_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state48)) begin
        v0_address0 = grp_SgdLR_sw_Pipeline_label_3_fu_275_v0_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v0_address0 = grp_SgdLR_sw_Pipeline_label_2_fu_265_v0_address0;
    end else begin
        v0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state48)) begin
        v0_ce0 = grp_SgdLR_sw_Pipeline_label_3_fu_275_v0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v0_ce0 = grp_SgdLR_sw_Pipeline_label_2_fu_265_v0_ce0;
    end else begin
        v0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v1_0_ce0_local = 1'b1;
    end else begin
        v1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v1_1_ce0_local = 1'b1;
    end else begin
        v1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v1_2_ce0_local = 1'b1;
    end else begin
        v1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v1_3_ce0_local = 1'b1;
    end else begin
        v1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v1_4_ce0_local = 1'b1;
    end else begin
        v1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v1_5_ce0_local = 1'b1;
    end else begin
        v1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v1_6_ce0_local = 1'b1;
    end else begin
        v1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v1_7_ce0_local = 1'b1;
    end else begin
        v1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state50)) begin
        v2_address0 = grp_SgdLR_sw_Pipeline_label_4_fu_284_v2_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v2_address0 = grp_SgdLR_sw_Pipeline_label_2_fu_265_v2_address0;
    end else begin
        v2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state50)) begin
        v2_ce0 = grp_SgdLR_sw_Pipeline_label_4_fu_284_v2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v2_ce0 = grp_SgdLR_sw_Pipeline_label_2_fu_265_v2_ce0;
    end else begin
        v2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state50)) begin
        v2_ce1 = grp_SgdLR_sw_Pipeline_label_4_fu_284_v2_ce1;
    end else begin
        v2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state50)) begin
        v2_we0 = grp_SgdLR_sw_Pipeline_label_4_fu_284_v2_we0;
    end else begin
        v2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state50)) begin
        v3_address0 = grp_SgdLR_sw_Pipeline_label_4_fu_284_v3_address0;
    end else if ((1'b1 == ap_CS_fsm_state48)) begin
        v3_address0 = grp_SgdLR_sw_Pipeline_label_3_fu_275_v3_address0;
    end else begin
        v3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state50)) begin
        v3_ce0 = grp_SgdLR_sw_Pipeline_label_4_fu_284_v3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state48)) begin
        v3_ce0 = grp_SgdLR_sw_Pipeline_label_3_fu_275_v3_ce0;
    end else begin
        v3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state48)) begin
        v3_we0 = grp_SgdLR_sw_Pipeline_label_3_fu_275_v3_we0;
    end else begin
        v3_we0 = 1'b0;
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
            if (((icmp_ln27_fu_323_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln28_reg_504 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((grp_SgdLR_sw_Pipeline_label_2_fu_265_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
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
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state30;
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state31;
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        ap_ST_fsm_state32 : begin
            ap_NS_fsm = ap_ST_fsm_state33;
        end
        ap_ST_fsm_state33 : begin
            ap_NS_fsm = ap_ST_fsm_state34;
        end
        ap_ST_fsm_state34 : begin
            ap_NS_fsm = ap_ST_fsm_state35;
        end
        ap_ST_fsm_state35 : begin
            ap_NS_fsm = ap_ST_fsm_state36;
        end
        ap_ST_fsm_state36 : begin
            ap_NS_fsm = ap_ST_fsm_state37;
        end
        ap_ST_fsm_state37 : begin
            ap_NS_fsm = ap_ST_fsm_state38;
        end
        ap_ST_fsm_state38 : begin
            ap_NS_fsm = ap_ST_fsm_state39;
        end
        ap_ST_fsm_state39 : begin
            ap_NS_fsm = ap_ST_fsm_state40;
        end
        ap_ST_fsm_state40 : begin
            ap_NS_fsm = ap_ST_fsm_state41;
        end
        ap_ST_fsm_state41 : begin
            ap_NS_fsm = ap_ST_fsm_state42;
        end
        ap_ST_fsm_state42 : begin
            ap_NS_fsm = ap_ST_fsm_state43;
        end
        ap_ST_fsm_state43 : begin
            ap_NS_fsm = ap_ST_fsm_state44;
        end
        ap_ST_fsm_state44 : begin
            ap_NS_fsm = ap_ST_fsm_state45;
        end
        ap_ST_fsm_state45 : begin
            ap_NS_fsm = ap_ST_fsm_state46;
        end
        ap_ST_fsm_state46 : begin
            ap_NS_fsm = ap_ST_fsm_state47;
        end
        ap_ST_fsm_state47 : begin
            ap_NS_fsm = ap_ST_fsm_state48;
        end
        ap_ST_fsm_state48 : begin
            if (((grp_SgdLR_sw_Pipeline_label_3_fu_275_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state48))) begin
                ap_NS_fsm = ap_ST_fsm_state49;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state48;
            end
        end
        ap_ST_fsm_state49 : begin
            ap_NS_fsm = ap_ST_fsm_state50;
        end
        ap_ST_fsm_state50 : begin
            if (((grp_SgdLR_sw_Pipeline_label_4_fu_284_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state50))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state50;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln28_1_fu_347_p2 = (phi_mul_reg_242 + 26'd14900);
assign add_ln28_2_fu_372_p2 = (phi_urem_reg_253 + 13'd1);
assign add_ln28_fu_341_p2 = (v5_reg_230 + 13'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state32 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_state33 = ap_CS_fsm[32'd32];
assign ap_CS_fsm_state34 = ap_CS_fsm[32'd33];
assign ap_CS_fsm_state39 = ap_CS_fsm[32'd38];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state40 = ap_CS_fsm[32'd39];
assign ap_CS_fsm_state46 = ap_CS_fsm[32'd45];
assign ap_CS_fsm_state47 = ap_CS_fsm[32'd46];
assign ap_CS_fsm_state48 = ap_CS_fsm[32'd47];
assign ap_CS_fsm_state49 = ap_CS_fsm[32'd48];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state50 = ap_CS_fsm[32'd49];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign bit_sel_fu_403_p3 = bitcast_ln43_fu_399_p1[32'd31];
assign bitcast_ln43_fu_399_p1 = grp_SgdLR_sw_Pipeline_label_2_fu_265_v6_out;
assign grp_SgdLR_sw_Pipeline_label_2_fu_265_ap_start = grp_SgdLR_sw_Pipeline_label_2_fu_265_ap_start_reg;
assign grp_SgdLR_sw_Pipeline_label_3_fu_275_ap_start = grp_SgdLR_sw_Pipeline_label_3_fu_275_ap_start_reg;
assign grp_SgdLR_sw_Pipeline_label_4_fu_284_ap_start = grp_SgdLR_sw_Pipeline_label_4_fu_284_ap_start_reg;
assign grp_fu_304_p1 = xor_ln_fu_421_p3;
assign icmp_ln27_fu_323_p2 = ((v4_fu_114 == 3'd5) ? 1'b1 : 1'b0);
assign icmp_ln28_1_fu_378_p2 = ((add_ln28_2_fu_372_p2 < 13'd563) ? 1'b1 : 1'b0);
assign icmp_ln28_fu_335_p2 = ((v5_reg_230 == 13'd4500) ? 1'b1 : 1'b0);
assign select_ln28_fu_384_p3 = ((icmp_ln28_1_fu_378_p2[0:0] == 1'b1) ? add_ln28_2_fu_372_p2 : 13'd0);
assign tmp_fu_353_p3 = {{v5_reg_230}, {10'd0}};
assign trunc_ln43_fu_417_p1 = bitcast_ln43_fu_399_p1[30:0];
assign v1_0_address0 = zext_ln28_fu_432_p1;
assign v1_0_ce0 = v1_0_ce0_local;
assign v1_1_address0 = zext_ln28_fu_432_p1;
assign v1_1_ce0 = v1_1_ce0_local;
assign v1_2_address0 = zext_ln28_fu_432_p1;
assign v1_2_ce0 = v1_2_ce0_local;
assign v1_3_address0 = zext_ln28_fu_432_p1;
assign v1_3_ce0 = v1_3_ce0_local;
assign v1_4_address0 = zext_ln28_fu_432_p1;
assign v1_4_ce0 = v1_4_ce0_local;
assign v1_5_address0 = zext_ln28_fu_432_p1;
assign v1_5_ce0 = v1_5_ce0_local;
assign v1_6_address0 = zext_ln28_fu_432_p1;
assign v1_6_ce0 = v1_6_ce0_local;
assign v1_7_address0 = zext_ln28_fu_432_p1;
assign v1_7_ce0 = v1_7_ce0_local;
assign v2_address1 = grp_SgdLR_sw_Pipeline_label_4_fu_284_v2_address1;
assign v2_d0 = grp_SgdLR_sw_Pipeline_label_4_fu_284_v2_d0;
assign v4_2_fu_329_p2 = (v4_fu_114 + 3'd1);
assign v_fu_444_p17 = 'bx;
assign xor_ln43_fu_411_p2 = (bit_sel_fu_403_p3 ^ 1'd1);
assign xor_ln_fu_421_p3 = {{xor_ln43_reg_534}, {trunc_ln43_reg_539}};
assign zext_ln28_fu_432_p1 = phi_urem_reg_253;
always @ (posedge ap_clk) begin
    tmp_reg_518[9:0] <= 10'b0000000000;
end
endmodule 