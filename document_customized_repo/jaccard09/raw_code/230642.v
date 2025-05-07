module SgdLR_sw (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v0_0_address0,v0_0_ce0,v0_0_q0,v0_0_address1,v0_0_ce1,v0_0_q1,v0_1_address0,v0_1_ce0,v0_1_q0,v0_1_address1,v0_1_ce1,v0_1_q1,v0_2_address0,v0_2_ce0,v0_2_q0,v0_2_address1,v0_2_ce1,v0_2_q1,v0_3_address0,v0_3_ce0,v0_3_q0,v0_3_address1,v0_3_ce1,v0_3_q1,v1_address0,v1_ce0,v1_q0,v2_address0,v2_ce0,v2_we0,v2_d0,v2_q0,v2_address1,v2_ce1,v2_we1,v2_d1,v2_q1); 
parameter    ap_ST_fsm_state1 = 49'd1;
parameter    ap_ST_fsm_state2 = 49'd2;
parameter    ap_ST_fsm_state3 = 49'd4;
parameter    ap_ST_fsm_state4 = 49'd8;
parameter    ap_ST_fsm_state5 = 49'd16;
parameter    ap_ST_fsm_state6 = 49'd32;
parameter    ap_ST_fsm_state7 = 49'd64;
parameter    ap_ST_fsm_state8 = 49'd128;
parameter    ap_ST_fsm_state9 = 49'd256;
parameter    ap_ST_fsm_state10 = 49'd512;
parameter    ap_ST_fsm_state11 = 49'd1024;
parameter    ap_ST_fsm_state12 = 49'd2048;
parameter    ap_ST_fsm_state13 = 49'd4096;
parameter    ap_ST_fsm_state14 = 49'd8192;
parameter    ap_ST_fsm_state15 = 49'd16384;
parameter    ap_ST_fsm_state16 = 49'd32768;
parameter    ap_ST_fsm_state17 = 49'd65536;
parameter    ap_ST_fsm_state18 = 49'd131072;
parameter    ap_ST_fsm_state19 = 49'd262144;
parameter    ap_ST_fsm_state20 = 49'd524288;
parameter    ap_ST_fsm_state21 = 49'd1048576;
parameter    ap_ST_fsm_state22 = 49'd2097152;
parameter    ap_ST_fsm_state23 = 49'd4194304;
parameter    ap_ST_fsm_state24 = 49'd8388608;
parameter    ap_ST_fsm_state25 = 49'd16777216;
parameter    ap_ST_fsm_state26 = 49'd33554432;
parameter    ap_ST_fsm_state27 = 49'd67108864;
parameter    ap_ST_fsm_state28 = 49'd134217728;
parameter    ap_ST_fsm_state29 = 49'd268435456;
parameter    ap_ST_fsm_state30 = 49'd536870912;
parameter    ap_ST_fsm_state31 = 49'd1073741824;
parameter    ap_ST_fsm_state32 = 49'd2147483648;
parameter    ap_ST_fsm_state33 = 49'd4294967296;
parameter    ap_ST_fsm_state34 = 49'd8589934592;
parameter    ap_ST_fsm_state35 = 49'd17179869184;
parameter    ap_ST_fsm_state36 = 49'd34359738368;
parameter    ap_ST_fsm_state37 = 49'd68719476736;
parameter    ap_ST_fsm_state38 = 49'd137438953472;
parameter    ap_ST_fsm_state39 = 49'd274877906944;
parameter    ap_ST_fsm_state40 = 49'd549755813888;
parameter    ap_ST_fsm_state41 = 49'd1099511627776;
parameter    ap_ST_fsm_state42 = 49'd2199023255552;
parameter    ap_ST_fsm_state43 = 49'd4398046511104;
parameter    ap_ST_fsm_state44 = 49'd8796093022208;
parameter    ap_ST_fsm_state45 = 49'd17592186044416;
parameter    ap_ST_fsm_state46 = 49'd35184372088832;
parameter    ap_ST_fsm_state47 = 49'd70368744177664;
parameter    ap_ST_fsm_state48 = 49'd140737488355328;
parameter    ap_ST_fsm_state49 = 49'd281474976710656;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [20:0] v0_0_address0;
output   v0_0_ce0;
input  [31:0] v0_0_q0;
output  [20:0] v0_0_address1;
output   v0_0_ce1;
input  [31:0] v0_0_q1;
output  [20:0] v0_1_address0;
output   v0_1_ce0;
input  [31:0] v0_1_q0;
output  [20:0] v0_1_address1;
output   v0_1_ce1;
input  [31:0] v0_1_q1;
output  [20:0] v0_2_address0;
output   v0_2_ce0;
input  [31:0] v0_2_q0;
output  [20:0] v0_2_address1;
output   v0_2_ce1;
input  [31:0] v0_2_q1;
output  [20:0] v0_3_address0;
output   v0_3_ce0;
input  [31:0] v0_3_q0;
output  [20:0] v0_3_address1;
output   v0_3_ce1;
input  [31:0] v0_3_q1;
output  [12:0] v1_address0;
output   v1_ce0;
input  [31:0] v1_q0;
output  [9:0] v2_address0;
output   v2_ce0;
output   v2_we0;
output  [31:0] v2_d0;
input  [31:0] v2_q0;
output  [9:0] v2_address1;
output   v2_ce1;
output   v2_we1;
output  [31:0] v2_d1;
input  [31:0] v2_q1;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[20:0] v0_0_address0;
reg v0_0_ce0;
reg[20:0] v0_0_address1;
reg v0_0_ce1;
reg[20:0] v0_1_address0;
reg v0_1_ce0;
reg[20:0] v0_1_address1;
reg v0_1_ce1;
reg[20:0] v0_2_address0;
reg v0_2_ce0;
reg[20:0] v0_2_address1;
reg v0_2_ce1;
reg[20:0] v0_3_address0;
reg v0_3_ce0;
reg[20:0] v0_3_address1;
reg v0_3_ce1;
reg[9:0] v2_address0;
reg v2_ce0;
reg v2_we0;
reg[9:0] v2_address1;
reg v2_ce1;
reg v2_we1;
(* fsm_encoding = "none" *) reg   [48:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [31:0] grp_fu_153_p2;
reg   [31:0] reg_171;
wire    ap_CS_fsm_state22;
wire    ap_CS_fsm_state45;
wire   [2:0] v4_2_fu_191_p2;
reg   [2:0] v4_2_reg_270;
wire    ap_CS_fsm_state2;
wire   [12:0] add_ln34_fu_203_p2;
reg   [12:0] add_ln34_reg_278;
wire    ap_CS_fsm_state3;
wire   [0:0] xor_ln173_fu_228_p2;
reg   [0:0] xor_ln173_reg_283;
wire    ap_CS_fsm_state5;
wire   [30:0] trunc_ln173_fu_234_p1;
reg   [30:0] trunc_ln173_reg_288;
wire    ap_CS_fsm_state6;
wire   [31:0] grp_fu_166_p2;
reg   [31:0] v140_reg_298;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state31;
reg   [31:0] v1_load_reg_308;
wire    ap_CS_fsm_state32;
wire   [31:0] grp_fu_158_p2;
reg   [31:0] v142_reg_313;
wire    ap_CS_fsm_state38;
wire   [31:0] grp_fu_163_p1;
reg   [31:0] v_reg_318;
reg   [9:0] v3_address0;
reg    v3_ce0;
reg    v3_we0;
wire   [31:0] v3_q0;
reg   [9:0] v3_address1;
reg    v3_ce1;
reg    v3_we1;
wire   [31:0] v3_q1;
wire    grp_SgdLR_sw_Pipeline_label_2_fu_113_ap_start;
wire    grp_SgdLR_sw_Pipeline_label_2_fu_113_ap_done;
wire    grp_SgdLR_sw_Pipeline_label_2_fu_113_ap_idle;
wire    grp_SgdLR_sw_Pipeline_label_2_fu_113_ap_ready;
wire   [9:0] grp_SgdLR_sw_Pipeline_label_2_fu_113_v2_address0;
wire    grp_SgdLR_sw_Pipeline_label_2_fu_113_v2_ce0;
wire   [9:0] grp_SgdLR_sw_Pipeline_label_2_fu_113_v2_address1;
wire    grp_SgdLR_sw_Pipeline_label_2_fu_113_v2_ce1;
wire   [20:0] grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_0_address0;
wire    grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_0_ce0;
wire   [20:0] grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_0_address1;
wire    grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_0_ce1;
wire   [20:0] grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_1_address0;
wire    grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_1_ce0;
wire   [20:0] grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_1_address1;
wire    grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_1_ce1;
wire   [20:0] grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_2_address0;
wire    grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_2_ce0;
wire   [20:0] grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_2_address1;
wire    grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_2_ce1;
wire   [20:0] grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_3_address0;
wire    grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_3_ce0;
wire   [20:0] grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_3_address1;
wire    grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_3_ce1;
wire   [31:0] grp_SgdLR_sw_Pipeline_label_2_fu_113_v6_1_out;
wire    grp_SgdLR_sw_Pipeline_label_2_fu_113_v6_1_out_ap_vld;
wire   [31:0] grp_SgdLR_sw_Pipeline_label_2_fu_113_grp_fu_153_p_din0;
wire   [31:0] grp_SgdLR_sw_Pipeline_label_2_fu_113_grp_fu_153_p_din1;
wire   [0:0] grp_SgdLR_sw_Pipeline_label_2_fu_113_grp_fu_153_p_opcode;
wire    grp_SgdLR_sw_Pipeline_label_2_fu_113_grp_fu_153_p_ce;
wire   [31:0] grp_SgdLR_sw_Pipeline_label_2_fu_113_grp_fu_323_p_din0;
wire   [31:0] grp_SgdLR_sw_Pipeline_label_2_fu_113_grp_fu_323_p_din1;
wire    grp_SgdLR_sw_Pipeline_label_2_fu_113_grp_fu_323_p_ce;
wire   [31:0] grp_SgdLR_sw_Pipeline_label_2_fu_113_grp_fu_327_p_din0;
wire   [31:0] grp_SgdLR_sw_Pipeline_label_2_fu_113_grp_fu_327_p_din1;
wire    grp_SgdLR_sw_Pipeline_label_2_fu_113_grp_fu_327_p_ce;
wire    grp_SgdLR_sw_Pipeline_label_3_fu_130_ap_start;
wire    grp_SgdLR_sw_Pipeline_label_3_fu_130_ap_done;
wire    grp_SgdLR_sw_Pipeline_label_3_fu_130_ap_idle;
wire    grp_SgdLR_sw_Pipeline_label_3_fu_130_ap_ready;
wire   [20:0] grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_0_address0;
wire    grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_0_ce0;
wire   [20:0] grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_0_address1;
wire    grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_0_ce1;
wire   [20:0] grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_1_address0;
wire    grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_1_ce0;
wire   [20:0] grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_1_address1;
wire    grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_1_ce1;
wire   [20:0] grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_2_address0;
wire    grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_2_ce0;
wire   [20:0] grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_2_address1;
wire    grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_2_ce1;
wire   [20:0] grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_3_address0;
wire    grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_3_ce0;
wire   [20:0] grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_3_address1;
wire    grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_3_ce1;
wire   [9:0] grp_SgdLR_sw_Pipeline_label_3_fu_130_v3_address0;
wire    grp_SgdLR_sw_Pipeline_label_3_fu_130_v3_ce0;
wire    grp_SgdLR_sw_Pipeline_label_3_fu_130_v3_we0;
wire   [31:0] grp_SgdLR_sw_Pipeline_label_3_fu_130_v3_d0;
wire   [9:0] grp_SgdLR_sw_Pipeline_label_3_fu_130_v3_address1;
wire    grp_SgdLR_sw_Pipeline_label_3_fu_130_v3_ce1;
wire    grp_SgdLR_sw_Pipeline_label_3_fu_130_v3_we1;
wire   [31:0] grp_SgdLR_sw_Pipeline_label_3_fu_130_v3_d1;
wire   [31:0] grp_SgdLR_sw_Pipeline_label_3_fu_130_grp_fu_323_p_din0;
wire   [31:0] grp_SgdLR_sw_Pipeline_label_3_fu_130_grp_fu_323_p_din1;
wire    grp_SgdLR_sw_Pipeline_label_3_fu_130_grp_fu_323_p_ce;
wire   [31:0] grp_SgdLR_sw_Pipeline_label_3_fu_130_grp_fu_327_p_din0;
wire   [31:0] grp_SgdLR_sw_Pipeline_label_3_fu_130_grp_fu_327_p_din1;
wire    grp_SgdLR_sw_Pipeline_label_3_fu_130_grp_fu_327_p_ce;
wire    grp_SgdLR_sw_Pipeline_label_4_fu_146_ap_start;
wire    grp_SgdLR_sw_Pipeline_label_4_fu_146_ap_done;
wire    grp_SgdLR_sw_Pipeline_label_4_fu_146_ap_idle;
wire    grp_SgdLR_sw_Pipeline_label_4_fu_146_ap_ready;
wire   [9:0] grp_SgdLR_sw_Pipeline_label_4_fu_146_v3_address0;
wire    grp_SgdLR_sw_Pipeline_label_4_fu_146_v3_ce0;
wire   [9:0] grp_SgdLR_sw_Pipeline_label_4_fu_146_v3_address1;
wire    grp_SgdLR_sw_Pipeline_label_4_fu_146_v3_ce1;
wire   [9:0] grp_SgdLR_sw_Pipeline_label_4_fu_146_v2_address0;
wire    grp_SgdLR_sw_Pipeline_label_4_fu_146_v2_ce0;
wire    grp_SgdLR_sw_Pipeline_label_4_fu_146_v2_we0;
wire   [31:0] grp_SgdLR_sw_Pipeline_label_4_fu_146_v2_d0;
wire   [9:0] grp_SgdLR_sw_Pipeline_label_4_fu_146_v2_address1;
wire    grp_SgdLR_sw_Pipeline_label_4_fu_146_v2_ce1;
wire    grp_SgdLR_sw_Pipeline_label_4_fu_146_v2_we1;
wire   [31:0] grp_SgdLR_sw_Pipeline_label_4_fu_146_v2_d1;
wire   [31:0] grp_SgdLR_sw_Pipeline_label_4_fu_146_grp_fu_153_p_din0;
wire   [31:0] grp_SgdLR_sw_Pipeline_label_4_fu_146_grp_fu_153_p_din1;
wire   [0:0] grp_SgdLR_sw_Pipeline_label_4_fu_146_grp_fu_153_p_opcode;
wire    grp_SgdLR_sw_Pipeline_label_4_fu_146_grp_fu_153_p_ce;
wire   [31:0] grp_SgdLR_sw_Pipeline_label_4_fu_146_grp_fu_323_p_din0;
wire   [31:0] grp_SgdLR_sw_Pipeline_label_4_fu_146_grp_fu_323_p_din1;
wire    grp_SgdLR_sw_Pipeline_label_4_fu_146_grp_fu_323_p_ce;
reg   [12:0] v5_reg_101;
wire   [0:0] icmp_ln33_fu_185_p2;
wire    ap_CS_fsm_state49;
reg    grp_SgdLR_sw_Pipeline_label_2_fu_113_ap_start_reg;
wire   [0:0] icmp_ln34_fu_197_p2;
wire    ap_CS_fsm_state4;
reg    grp_SgdLR_sw_Pipeline_label_3_fu_130_ap_start_reg;
wire    ap_CS_fsm_state46;
wire    ap_CS_fsm_state47;
reg    grp_SgdLR_sw_Pipeline_label_4_fu_146_ap_start_reg;
wire    ap_CS_fsm_state48;
wire   [63:0] zext_ln34_fu_249_p1;
reg   [2:0] v4_fu_76;
reg    v1_ce0_local;
reg   [31:0] grp_fu_153_p0;
reg   [31:0] grp_fu_153_p1;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state39;
wire    ap_CS_fsm_state23;
wire    ap_CS_fsm_state33;
wire   [31:0] grp_fu_166_p1;
wire   [31:0] bitcast_ln173_fu_216_p1;
wire   [0:0] bit_sel_fu_220_p3;
wire   [31:0] xor_ln_fu_238_p3;
reg   [1:0] grp_fu_153_opcode;
reg    grp_fu_153_ce;
wire   [31:0] grp_fu_323_p2;
reg   [31:0] grp_fu_323_p0;
reg   [31:0] grp_fu_323_p1;
reg    grp_fu_323_ce;
wire   [31:0] grp_fu_327_p2;
reg   [31:0] grp_fu_327_p0;
reg   [31:0] grp_fu_327_p1;
reg    grp_fu_327_ce;
reg   [48:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
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
reg    ap_ST_fsm_state47_blk;
wire    ap_ST_fsm_state48_blk;
reg    ap_ST_fsm_state49_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 49'd1;
#0 grp_SgdLR_sw_Pipeline_label_2_fu_113_ap_start_reg = 1'b0;
#0 grp_SgdLR_sw_Pipeline_label_3_fu_130_ap_start_reg = 1'b0;
#0 grp_SgdLR_sw_Pipeline_label_4_fu_146_ap_start_reg = 1'b0;
#0 v4_fu_76 = 3'd0;
end
SgdLR_sw_v3_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
v3_U(.clk(ap_clk),.reset(ap_rst),.address0(v3_address0),.ce0(v3_ce0),.we0(v3_we0),.d0(grp_SgdLR_sw_Pipeline_label_3_fu_130_v3_d0),.q0(v3_q0),.address1(v3_address1),.ce1(v3_ce1),.we1(v3_we1),.d1(grp_SgdLR_sw_Pipeline_label_3_fu_130_v3_d1),.q1(v3_q1));
SgdLR_sw_SgdLR_sw_Pipeline_label_2 grp_SgdLR_sw_Pipeline_label_2_fu_113(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_SgdLR_sw_Pipeline_label_2_fu_113_ap_start),.ap_done(grp_SgdLR_sw_Pipeline_label_2_fu_113_ap_done),.ap_idle(grp_SgdLR_sw_Pipeline_label_2_fu_113_ap_idle),.ap_ready(grp_SgdLR_sw_Pipeline_label_2_fu_113_ap_ready),.v2_address0(grp_SgdLR_sw_Pipeline_label_2_fu_113_v2_address0),.v2_ce0(grp_SgdLR_sw_Pipeline_label_2_fu_113_v2_ce0),.v2_q0(v2_q0),.v2_address1(grp_SgdLR_sw_Pipeline_label_2_fu_113_v2_address1),.v2_ce1(grp_SgdLR_sw_Pipeline_label_2_fu_113_v2_ce1),.v2_q1(v2_q1),.v5(v5_reg_101),.v0_0_address0(grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_0_address0),.v0_0_ce0(grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_0_ce0),.v0_0_q0(v0_0_q0),.v0_0_address1(grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_0_address1),.v0_0_ce1(grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_0_ce1),.v0_0_q1(v0_0_q1),.v0_1_address0(grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_1_address0),.v0_1_ce0(grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_1_ce0),.v0_1_q0(v0_1_q0),.v0_1_address1(grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_1_address1),.v0_1_ce1(grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_1_ce1),.v0_1_q1(v0_1_q1),.v0_2_address0(grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_2_address0),.v0_2_ce0(grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_2_ce0),.v0_2_q0(v0_2_q0),.v0_2_address1(grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_2_address1),.v0_2_ce1(grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_2_ce1),.v0_2_q1(v0_2_q1),.v0_3_address0(grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_3_address0),.v0_3_ce0(grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_3_ce0),.v0_3_q0(v0_3_q0),.v0_3_address1(grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_3_address1),.v0_3_ce1(grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_3_ce1),.v0_3_q1(v0_3_q1),.v6_1_out(grp_SgdLR_sw_Pipeline_label_2_fu_113_v6_1_out),.v6_1_out_ap_vld(grp_SgdLR_sw_Pipeline_label_2_fu_113_v6_1_out_ap_vld),.grp_fu_153_p_din0(grp_SgdLR_sw_Pipeline_label_2_fu_113_grp_fu_153_p_din0),.grp_fu_153_p_din1(grp_SgdLR_sw_Pipeline_label_2_fu_113_grp_fu_153_p_din1),.grp_fu_153_p_opcode(grp_SgdLR_sw_Pipeline_label_2_fu_113_grp_fu_153_p_opcode),.grp_fu_153_p_dout0(grp_fu_153_p2),.grp_fu_153_p_ce(grp_SgdLR_sw_Pipeline_label_2_fu_113_grp_fu_153_p_ce),.grp_fu_323_p_din0(grp_SgdLR_sw_Pipeline_label_2_fu_113_grp_fu_323_p_din0),.grp_fu_323_p_din1(grp_SgdLR_sw_Pipeline_label_2_fu_113_grp_fu_323_p_din1),.grp_fu_323_p_dout0(grp_fu_323_p2),.grp_fu_323_p_ce(grp_SgdLR_sw_Pipeline_label_2_fu_113_grp_fu_323_p_ce),.grp_fu_327_p_din0(grp_SgdLR_sw_Pipeline_label_2_fu_113_grp_fu_327_p_din0),.grp_fu_327_p_din1(grp_SgdLR_sw_Pipeline_label_2_fu_113_grp_fu_327_p_din1),.grp_fu_327_p_dout0(grp_fu_327_p2),.grp_fu_327_p_ce(grp_SgdLR_sw_Pipeline_label_2_fu_113_grp_fu_327_p_ce));
SgdLR_sw_SgdLR_sw_Pipeline_label_3 grp_SgdLR_sw_Pipeline_label_3_fu_130(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_SgdLR_sw_Pipeline_label_3_fu_130_ap_start),.ap_done(grp_SgdLR_sw_Pipeline_label_3_fu_130_ap_done),.ap_idle(grp_SgdLR_sw_Pipeline_label_3_fu_130_ap_idle),.ap_ready(grp_SgdLR_sw_Pipeline_label_3_fu_130_ap_ready),.v5(v5_reg_101),.v0_0_address0(grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_0_address0),.v0_0_ce0(grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_0_ce0),.v0_0_q0(v0_0_q0),.v0_0_address1(grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_0_address1),.v0_0_ce1(grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_0_ce1),.v0_0_q1(v0_0_q1),.v0_1_address0(grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_1_address0),.v0_1_ce0(grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_1_ce0),.v0_1_q0(v0_1_q0),.v0_1_address1(grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_1_address1),.v0_1_ce1(grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_1_ce1),.v0_1_q1(v0_1_q1),.v0_2_address0(grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_2_address0),.v0_2_ce0(grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_2_ce0),.v0_2_q0(v0_2_q0),.v0_2_address1(grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_2_address1),.v0_2_ce1(grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_2_ce1),.v0_2_q1(v0_2_q1),.v0_3_address0(grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_3_address0),.v0_3_ce0(grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_3_ce0),.v0_3_q0(v0_3_q0),.v0_3_address1(grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_3_address1),.v0_3_ce1(grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_3_ce1),.v0_3_q1(v0_3_q1),.v146(reg_171),.v3_address0(grp_SgdLR_sw_Pipeline_label_3_fu_130_v3_address0),.v3_ce0(grp_SgdLR_sw_Pipeline_label_3_fu_130_v3_ce0),.v3_we0(grp_SgdLR_sw_Pipeline_label_3_fu_130_v3_we0),.v3_d0(grp_SgdLR_sw_Pipeline_label_3_fu_130_v3_d0),.v3_address1(grp_SgdLR_sw_Pipeline_label_3_fu_130_v3_address1),.v3_ce1(grp_SgdLR_sw_Pipeline_label_3_fu_130_v3_ce1),.v3_we1(grp_SgdLR_sw_Pipeline_label_3_fu_130_v3_we1),.v3_d1(grp_SgdLR_sw_Pipeline_label_3_fu_130_v3_d1),.grp_fu_323_p_din0(grp_SgdLR_sw_Pipeline_label_3_fu_130_grp_fu_323_p_din0),.grp_fu_323_p_din1(grp_SgdLR_sw_Pipeline_label_3_fu_130_grp_fu_323_p_din1),.grp_fu_323_p_dout0(grp_fu_323_p2),.grp_fu_323_p_ce(grp_SgdLR_sw_Pipeline_label_3_fu_130_grp_fu_323_p_ce),.grp_fu_327_p_din0(grp_SgdLR_sw_Pipeline_label_3_fu_130_grp_fu_327_p_din0),.grp_fu_327_p_din1(grp_SgdLR_sw_Pipeline_label_3_fu_130_grp_fu_327_p_din1),.grp_fu_327_p_dout0(grp_fu_327_p2),.grp_fu_327_p_ce(grp_SgdLR_sw_Pipeline_label_3_fu_130_grp_fu_327_p_ce));
SgdLR_sw_SgdLR_sw_Pipeline_label_4 grp_SgdLR_sw_Pipeline_label_4_fu_146(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_SgdLR_sw_Pipeline_label_4_fu_146_ap_start),.ap_done(grp_SgdLR_sw_Pipeline_label_4_fu_146_ap_done),.ap_idle(grp_SgdLR_sw_Pipeline_label_4_fu_146_ap_idle),.ap_ready(grp_SgdLR_sw_Pipeline_label_4_fu_146_ap_ready),.v3_address0(grp_SgdLR_sw_Pipeline_label_4_fu_146_v3_address0),.v3_ce0(grp_SgdLR_sw_Pipeline_label_4_fu_146_v3_ce0),.v3_q0(v3_q0),.v3_address1(grp_SgdLR_sw_Pipeline_label_4_fu_146_v3_address1),.v3_ce1(grp_SgdLR_sw_Pipeline_label_4_fu_146_v3_ce1),.v3_q1(v3_q1),.v2_address0(grp_SgdLR_sw_Pipeline_label_4_fu_146_v2_address0),.v2_ce0(grp_SgdLR_sw_Pipeline_label_4_fu_146_v2_ce0),.v2_we0(grp_SgdLR_sw_Pipeline_label_4_fu_146_v2_we0),.v2_d0(grp_SgdLR_sw_Pipeline_label_4_fu_146_v2_d0),.v2_q0(v2_q0),.v2_address1(grp_SgdLR_sw_Pipeline_label_4_fu_146_v2_address1),.v2_ce1(grp_SgdLR_sw_Pipeline_label_4_fu_146_v2_ce1),.v2_we1(grp_SgdLR_sw_Pipeline_label_4_fu_146_v2_we1),.v2_d1(grp_SgdLR_sw_Pipeline_label_4_fu_146_v2_d1),.v2_q1(v2_q1),.grp_fu_153_p_din0(grp_SgdLR_sw_Pipeline_label_4_fu_146_grp_fu_153_p_din0),.grp_fu_153_p_din1(grp_SgdLR_sw_Pipeline_label_4_fu_146_grp_fu_153_p_din1),.grp_fu_153_p_opcode(grp_SgdLR_sw_Pipeline_label_4_fu_146_grp_fu_153_p_opcode),.grp_fu_153_p_dout0(grp_fu_153_p2),.grp_fu_153_p_ce(grp_SgdLR_sw_Pipeline_label_4_fu_146_grp_fu_153_p_ce),.grp_fu_323_p_din0(grp_SgdLR_sw_Pipeline_label_4_fu_146_grp_fu_323_p_din0),.grp_fu_323_p_din1(grp_SgdLR_sw_Pipeline_label_4_fu_146_grp_fu_323_p_din1),.grp_fu_323_p_dout0(grp_fu_323_p2),.grp_fu_323_p_ce(grp_SgdLR_sw_Pipeline_label_4_fu_146_grp_fu_323_p_ce));
SgdLR_sw_faddfsub_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
faddfsub_32ns_32ns_32_7_full_dsp_1_U290(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_153_p0),.din1(grp_fu_153_p1),.opcode(grp_fu_153_opcode),.ce(grp_fu_153_ce),.dout(grp_fu_153_p2));
SgdLR_sw_fdiv_32ns_32ns_32_16_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 16 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fdiv_32ns_32ns_32_16_no_dsp_1_U291(.clk(ap_clk),.reset(ap_rst),.din0(32'd1065353216),.din1(reg_171),.ce(1'b1),.dout(grp_fu_158_p2));
SgdLR_sw_sitofp_32ns_32_6_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 6 ),.din0_WIDTH( 32 ),.dout_WIDTH( 32 ))
sitofp_32ns_32_6_no_dsp_1_U292(.clk(ap_clk),.reset(ap_rst),.din0(v1_load_reg_308),.ce(1'b1),.dout(grp_fu_163_p1));
SgdLR_sw_fexp_32ns_32ns_32_10_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fexp_32ns_32ns_32_10_full_dsp_1_U293(.clk(ap_clk),.reset(ap_rst),.din0(32'd0),.din1(grp_fu_166_p1),.ce(1'b1),.dout(grp_fu_166_p2));
SgdLR_sw_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U294(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_323_p0),.din1(grp_fu_323_p1),.ce(grp_fu_323_ce),.dout(grp_fu_323_p2));
SgdLR_sw_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U295(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_327_p0),.din1(grp_fu_327_p1),.ce(grp_fu_327_ce),.dout(grp_fu_327_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_SgdLR_sw_Pipeline_label_2_fu_113_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln34_fu_197_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
            grp_SgdLR_sw_Pipeline_label_2_fu_113_ap_start_reg <= 1'b1;
        end else if ((grp_SgdLR_sw_Pipeline_label_2_fu_113_ap_ready == 1'b1)) begin
            grp_SgdLR_sw_Pipeline_label_2_fu_113_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_SgdLR_sw_Pipeline_label_3_fu_130_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state46)) begin
            grp_SgdLR_sw_Pipeline_label_3_fu_130_ap_start_reg <= 1'b1;
        end else if ((grp_SgdLR_sw_Pipeline_label_3_fu_130_ap_ready == 1'b1)) begin
            grp_SgdLR_sw_Pipeline_label_3_fu_130_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_SgdLR_sw_Pipeline_label_4_fu_146_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state48)) begin
            grp_SgdLR_sw_Pipeline_label_4_fu_146_ap_start_reg <= 1'b1;
        end else if ((grp_SgdLR_sw_Pipeline_label_4_fu_146_ap_ready == 1'b1)) begin
            grp_SgdLR_sw_Pipeline_label_4_fu_146_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v4_fu_76 <= 3'd0;
    end else if (((icmp_ln34_fu_197_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        v4_fu_76 <= v4_2_reg_270;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_SgdLR_sw_Pipeline_label_4_fu_146_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state49))) begin
        v5_reg_101 <= add_ln34_reg_278;
    end else if (((icmp_ln33_fu_185_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v5_reg_101 <= 13'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln34_reg_278 <= add_ln34_fu_203_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state22))) begin
        reg_171 <= grp_fu_153_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        trunc_ln173_reg_288 <= trunc_ln173_fu_234_p1;
        xor_ln173_reg_283 <= xor_ln173_fu_228_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        v140_reg_298 <= grp_fu_166_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state38)) begin
        v142_reg_313 <= grp_fu_158_p2;
        v_reg_318 <= grp_fu_163_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v1_load_reg_308 <= v1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v4_2_reg_270 <= v4_2_fu_191_p2;
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
always @ (*) begin
    if ((grp_SgdLR_sw_Pipeline_label_3_fu_130_ap_done == 1'b0)) begin
        ap_ST_fsm_state47_blk = 1'b1;
    end else begin
        ap_ST_fsm_state47_blk = 1'b0;
    end
end
assign ap_ST_fsm_state48_blk = 1'b0;
always @ (*) begin
    if ((grp_SgdLR_sw_Pipeline_label_4_fu_146_ap_done == 1'b0)) begin
        ap_ST_fsm_state49_blk = 1'b1;
    end else begin
        ap_ST_fsm_state49_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_SgdLR_sw_Pipeline_label_2_fu_113_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((icmp_ln33_fu_185_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln33_fu_185_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_153_ce = grp_SgdLR_sw_Pipeline_label_4_fu_146_grp_fu_153_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_153_ce = grp_SgdLR_sw_Pipeline_label_2_fu_113_grp_fu_153_p_ce;
    end else begin
        grp_fu_153_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_153_opcode = grp_SgdLR_sw_Pipeline_label_4_fu_146_grp_fu_153_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_153_opcode = grp_SgdLR_sw_Pipeline_label_2_fu_113_grp_fu_153_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_153_opcode = 2'd1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_153_opcode = 2'd0;
    end else begin
        grp_fu_153_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_153_p0 = grp_SgdLR_sw_Pipeline_label_4_fu_146_grp_fu_153_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_153_p0 = grp_SgdLR_sw_Pipeline_label_2_fu_113_grp_fu_153_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_153_p0 = v142_reg_313;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_153_p0 = v140_reg_298;
    end else begin
        grp_fu_153_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_153_p1 = grp_SgdLR_sw_Pipeline_label_4_fu_146_grp_fu_153_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_153_p1 = grp_SgdLR_sw_Pipeline_label_2_fu_113_grp_fu_153_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_153_p1 = v_reg_318;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_153_p1 = 32'd1065353216;
    end else begin
        grp_fu_153_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_323_ce = grp_SgdLR_sw_Pipeline_label_4_fu_146_grp_fu_323_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        grp_fu_323_ce = grp_SgdLR_sw_Pipeline_label_3_fu_130_grp_fu_323_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_323_ce = grp_SgdLR_sw_Pipeline_label_2_fu_113_grp_fu_323_p_ce;
    end else begin
        grp_fu_323_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_323_p0 = grp_SgdLR_sw_Pipeline_label_4_fu_146_grp_fu_323_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        grp_fu_323_p0 = grp_SgdLR_sw_Pipeline_label_3_fu_130_grp_fu_323_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_323_p0 = grp_SgdLR_sw_Pipeline_label_2_fu_113_grp_fu_323_p_din0;
    end else begin
        grp_fu_323_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_323_p1 = grp_SgdLR_sw_Pipeline_label_4_fu_146_grp_fu_323_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        grp_fu_323_p1 = grp_SgdLR_sw_Pipeline_label_3_fu_130_grp_fu_323_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_323_p1 = grp_SgdLR_sw_Pipeline_label_2_fu_113_grp_fu_323_p_din1;
    end else begin
        grp_fu_323_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state47)) begin
        grp_fu_327_ce = grp_SgdLR_sw_Pipeline_label_3_fu_130_grp_fu_327_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_327_ce = grp_SgdLR_sw_Pipeline_label_2_fu_113_grp_fu_327_p_ce;
    end else begin
        grp_fu_327_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state47)) begin
        grp_fu_327_p0 = grp_SgdLR_sw_Pipeline_label_3_fu_130_grp_fu_327_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_327_p0 = grp_SgdLR_sw_Pipeline_label_2_fu_113_grp_fu_327_p_din0;
    end else begin
        grp_fu_327_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state47)) begin
        grp_fu_327_p1 = grp_SgdLR_sw_Pipeline_label_3_fu_130_grp_fu_327_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_327_p1 = grp_SgdLR_sw_Pipeline_label_2_fu_113_grp_fu_327_p_din1;
    end else begin
        grp_fu_327_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state47)) begin
        v0_0_address0 = grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v0_0_address0 = grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_0_address0;
    end else begin
        v0_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state47)) begin
        v0_0_address1 = grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v0_0_address1 = grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_0_address1;
    end else begin
        v0_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state47)) begin
        v0_0_ce0 = grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v0_0_ce0 = grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_0_ce0;
    end else begin
        v0_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state47)) begin
        v0_0_ce1 = grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v0_0_ce1 = grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_0_ce1;
    end else begin
        v0_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state47)) begin
        v0_1_address0 = grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v0_1_address0 = grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_1_address0;
    end else begin
        v0_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state47)) begin
        v0_1_address1 = grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v0_1_address1 = grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_1_address1;
    end else begin
        v0_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state47)) begin
        v0_1_ce0 = grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v0_1_ce0 = grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_1_ce0;
    end else begin
        v0_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state47)) begin
        v0_1_ce1 = grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v0_1_ce1 = grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_1_ce1;
    end else begin
        v0_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state47)) begin
        v0_2_address0 = grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v0_2_address0 = grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_2_address0;
    end else begin
        v0_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state47)) begin
        v0_2_address1 = grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v0_2_address1 = grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_2_address1;
    end else begin
        v0_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state47)) begin
        v0_2_ce0 = grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v0_2_ce0 = grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_2_ce0;
    end else begin
        v0_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state47)) begin
        v0_2_ce1 = grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v0_2_ce1 = grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_2_ce1;
    end else begin
        v0_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state47)) begin
        v0_3_address0 = grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v0_3_address0 = grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_3_address0;
    end else begin
        v0_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state47)) begin
        v0_3_address1 = grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v0_3_address1 = grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_3_address1;
    end else begin
        v0_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state47)) begin
        v0_3_ce0 = grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v0_3_ce0 = grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_3_ce0;
    end else begin
        v0_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state47)) begin
        v0_3_ce1 = grp_SgdLR_sw_Pipeline_label_3_fu_130_v0_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v0_3_ce1 = grp_SgdLR_sw_Pipeline_label_2_fu_113_v0_3_ce1;
    end else begin
        v0_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state31)) begin
        v1_ce0_local = 1'b1;
    end else begin
        v1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        v2_address0 = grp_SgdLR_sw_Pipeline_label_4_fu_146_v2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v2_address0 = grp_SgdLR_sw_Pipeline_label_2_fu_113_v2_address0;
    end else begin
        v2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        v2_address1 = grp_SgdLR_sw_Pipeline_label_4_fu_146_v2_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v2_address1 = grp_SgdLR_sw_Pipeline_label_2_fu_113_v2_address1;
    end else begin
        v2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        v2_ce0 = grp_SgdLR_sw_Pipeline_label_4_fu_146_v2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v2_ce0 = grp_SgdLR_sw_Pipeline_label_2_fu_113_v2_ce0;
    end else begin
        v2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        v2_ce1 = grp_SgdLR_sw_Pipeline_label_4_fu_146_v2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v2_ce1 = grp_SgdLR_sw_Pipeline_label_2_fu_113_v2_ce1;
    end else begin
        v2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        v2_we0 = grp_SgdLR_sw_Pipeline_label_4_fu_146_v2_we0;
    end else begin
        v2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        v2_we1 = grp_SgdLR_sw_Pipeline_label_4_fu_146_v2_we1;
    end else begin
        v2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        v3_address0 = grp_SgdLR_sw_Pipeline_label_4_fu_146_v3_address0;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        v3_address0 = grp_SgdLR_sw_Pipeline_label_3_fu_130_v3_address0;
    end else begin
        v3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        v3_address1 = grp_SgdLR_sw_Pipeline_label_4_fu_146_v3_address1;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        v3_address1 = grp_SgdLR_sw_Pipeline_label_3_fu_130_v3_address1;
    end else begin
        v3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        v3_ce0 = grp_SgdLR_sw_Pipeline_label_4_fu_146_v3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        v3_ce0 = grp_SgdLR_sw_Pipeline_label_3_fu_130_v3_ce0;
    end else begin
        v3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        v3_ce1 = grp_SgdLR_sw_Pipeline_label_4_fu_146_v3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        v3_ce1 = grp_SgdLR_sw_Pipeline_label_3_fu_130_v3_ce1;
    end else begin
        v3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state47)) begin
        v3_we0 = grp_SgdLR_sw_Pipeline_label_3_fu_130_v3_we0;
    end else begin
        v3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state47)) begin
        v3_we1 = grp_SgdLR_sw_Pipeline_label_3_fu_130_v3_we1;
    end else begin
        v3_we1 = 1'b0;
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
            if (((icmp_ln33_fu_185_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln34_fu_197_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((grp_SgdLR_sw_Pipeline_label_2_fu_113_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
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
            if (((grp_SgdLR_sw_Pipeline_label_3_fu_130_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state47))) begin
                ap_NS_fsm = ap_ST_fsm_state48;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state47;
            end
        end
        ap_ST_fsm_state48 : begin
            ap_NS_fsm = ap_ST_fsm_state49;
        end
        ap_ST_fsm_state49 : begin
            if (((grp_SgdLR_sw_Pipeline_label_4_fu_146_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state49))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state49;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln34_fu_203_p2 = (v5_reg_101 + 13'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state31 = ap_CS_fsm[32'd30];
assign ap_CS_fsm_state32 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_state33 = ap_CS_fsm[32'd32];
assign ap_CS_fsm_state38 = ap_CS_fsm[32'd37];
assign ap_CS_fsm_state39 = ap_CS_fsm[32'd38];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state45 = ap_CS_fsm[32'd44];
assign ap_CS_fsm_state46 = ap_CS_fsm[32'd45];
assign ap_CS_fsm_state47 = ap_CS_fsm[32'd46];
assign ap_CS_fsm_state48 = ap_CS_fsm[32'd47];
assign ap_CS_fsm_state49 = ap_CS_fsm[32'd48];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign bit_sel_fu_220_p3 = bitcast_ln173_fu_216_p1[32'd31];
assign bitcast_ln173_fu_216_p1 = grp_SgdLR_sw_Pipeline_label_2_fu_113_v6_1_out;
assign grp_SgdLR_sw_Pipeline_label_2_fu_113_ap_start = grp_SgdLR_sw_Pipeline_label_2_fu_113_ap_start_reg;
assign grp_SgdLR_sw_Pipeline_label_3_fu_130_ap_start = grp_SgdLR_sw_Pipeline_label_3_fu_130_ap_start_reg;
assign grp_SgdLR_sw_Pipeline_label_4_fu_146_ap_start = grp_SgdLR_sw_Pipeline_label_4_fu_146_ap_start_reg;
assign grp_fu_166_p1 = xor_ln_fu_238_p3;
assign icmp_ln33_fu_185_p2 = ((v4_fu_76 == 3'd5) ? 1'b1 : 1'b0);
assign icmp_ln34_fu_197_p2 = ((v5_reg_101 == 13'd4500) ? 1'b1 : 1'b0);
assign trunc_ln173_fu_234_p1 = bitcast_ln173_fu_216_p1[30:0];
assign v1_address0 = zext_ln34_fu_249_p1;
assign v1_ce0 = v1_ce0_local;
assign v2_d0 = grp_SgdLR_sw_Pipeline_label_4_fu_146_v2_d0;
assign v2_d1 = grp_SgdLR_sw_Pipeline_label_4_fu_146_v2_d1;
assign v4_2_fu_191_p2 = (v4_fu_76 + 3'd1);
assign xor_ln173_fu_228_p2 = (bit_sel_fu_220_p3 ^ 1'd1);
assign xor_ln_fu_238_p3 = {{xor_ln173_reg_283}, {trunc_ln173_reg_288}};
assign zext_ln34_fu_249_p1 = v5_reg_101;
endmodule 