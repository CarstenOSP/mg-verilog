module SgdLR_sw (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v0_address0,v0_ce0,v0_q0,v1_address0,v1_ce0,v1_q0,v2_address0,v2_ce0,v2_we0,v2_d0,v2_q0,v2_address1,v2_ce1,v2_q1); 
parameter    ap_ST_fsm_state1 = 39'd1;
parameter    ap_ST_fsm_state2 = 39'd2;
parameter    ap_ST_fsm_state3 = 39'd4;
parameter    ap_ST_fsm_state4 = 39'd8;
parameter    ap_ST_fsm_state5 = 39'd16;
parameter    ap_ST_fsm_state6 = 39'd32;
parameter    ap_ST_fsm_state7 = 39'd64;
parameter    ap_ST_fsm_state8 = 39'd128;
parameter    ap_ST_fsm_state9 = 39'd256;
parameter    ap_ST_fsm_state10 = 39'd512;
parameter    ap_ST_fsm_state11 = 39'd1024;
parameter    ap_ST_fsm_state12 = 39'd2048;
parameter    ap_ST_fsm_state13 = 39'd4096;
parameter    ap_ST_fsm_state14 = 39'd8192;
parameter    ap_ST_fsm_state15 = 39'd16384;
parameter    ap_ST_fsm_state16 = 39'd32768;
parameter    ap_ST_fsm_state17 = 39'd65536;
parameter    ap_ST_fsm_state18 = 39'd131072;
parameter    ap_ST_fsm_state19 = 39'd262144;
parameter    ap_ST_fsm_state20 = 39'd524288;
parameter    ap_ST_fsm_state21 = 39'd1048576;
parameter    ap_ST_fsm_state22 = 39'd2097152;
parameter    ap_ST_fsm_state23 = 39'd4194304;
parameter    ap_ST_fsm_state24 = 39'd8388608;
parameter    ap_ST_fsm_state25 = 39'd16777216;
parameter    ap_ST_fsm_state26 = 39'd33554432;
parameter    ap_ST_fsm_state27 = 39'd67108864;
parameter    ap_ST_fsm_state28 = 39'd134217728;
parameter    ap_ST_fsm_state29 = 39'd268435456;
parameter    ap_ST_fsm_state30 = 39'd536870912;
parameter    ap_ST_fsm_state31 = 39'd1073741824;
parameter    ap_ST_fsm_state32 = 39'd2147483648;
parameter    ap_ST_fsm_state33 = 39'd4294967296;
parameter    ap_ST_fsm_state34 = 39'd8589934592;
parameter    ap_ST_fsm_state35 = 39'd17179869184;
parameter    ap_ST_fsm_state36 = 39'd34359738368;
parameter    ap_ST_fsm_state37 = 39'd68719476736;
parameter    ap_ST_fsm_state38 = 39'd137438953472;
parameter    ap_ST_fsm_state39 = 39'd274877906944;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [22:0] v0_address0;
output   v0_ce0;
input  [31:0] v0_q0;
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
(* fsm_encoding = "none" *) reg   [38:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [31:0] grp_fu_145_p2;
reg   [31:0] reg_163;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state35;
wire   [2:0] v4_2_fu_183_p2;
reg   [2:0] v4_2_reg_271;
wire    ap_CS_fsm_state2;
wire   [12:0] add_ln28_fu_195_p2;
reg   [12:0] add_ln28_reg_279;
wire    ap_CS_fsm_state3;
wire   [22:0] tmp_fu_201_p3;
reg   [22:0] tmp_reg_284;
wire   [0:0] xor_ln43_fu_229_p2;
reg   [0:0] xor_ln43_reg_290;
wire    ap_CS_fsm_state5;
wire   [30:0] trunc_ln43_fu_235_p1;
reg   [30:0] trunc_ln43_reg_295;
wire    ap_CS_fsm_state6;
wire   [31:0] grp_fu_158_p2;
reg   [31:0] v16_reg_305;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state24;
reg   [31:0] v1_load_reg_315;
wire    ap_CS_fsm_state25;
wire   [31:0] grp_fu_150_p2;
reg   [31:0] v18_reg_320;
wire    ap_CS_fsm_state30;
wire   [31:0] grp_fu_155_p1;
reg   [31:0] v_reg_325;
reg   [9:0] v3_address0;
reg    v3_ce0;
reg    v3_we0;
wire   [31:0] v3_q0;
wire    grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_ap_start;
wire    grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_ap_done;
wire    grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_ap_idle;
wire    grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_ap_ready;
wire   [9:0] grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_v2_address0;
wire    grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_v2_ce0;
wire   [22:0] grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_v0_address0;
wire    grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_v0_ce0;
wire   [31:0] grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_v6_out;
wire    grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_v6_out_ap_vld;
wire   [31:0] grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_grp_fu_145_p_din0;
wire   [31:0] grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_grp_fu_145_p_din1;
wire   [0:0] grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_grp_fu_145_p_opcode;
wire    grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_grp_fu_145_p_ce;
wire   [31:0] grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_grp_fu_330_p_din0;
wire   [31:0] grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_grp_fu_330_p_din1;
wire    grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_grp_fu_330_p_ce;
wire    grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_ap_start;
wire    grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_ap_done;
wire    grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_ap_idle;
wire    grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_ap_ready;
wire   [22:0] grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_v0_address0;
wire    grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_v0_ce0;
wire   [9:0] grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_v3_address0;
wire    grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_v3_ce0;
wire    grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_v3_we0;
wire   [31:0] grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_v3_d0;
wire   [31:0] grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_grp_fu_330_p_din0;
wire   [31:0] grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_grp_fu_330_p_din1;
wire    grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_grp_fu_330_p_ce;
wire    grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_ap_start;
wire    grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_ap_done;
wire    grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_ap_idle;
wire    grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_ap_ready;
wire   [9:0] grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_v3_address0;
wire    grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_v3_ce0;
wire   [9:0] grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_v2_address0;
wire    grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_v2_ce0;
wire    grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_v2_we0;
wire   [31:0] grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_v2_d0;
wire   [9:0] grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_v2_address1;
wire    grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_v2_ce1;
wire   [31:0] grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_grp_fu_145_p_din0;
wire   [31:0] grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_grp_fu_145_p_din1;
wire   [0:0] grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_grp_fu_145_p_opcode;
wire    grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_grp_fu_145_p_ce;
wire   [31:0] grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_grp_fu_330_p_din0;
wire   [31:0] grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_grp_fu_330_p_din1;
wire    grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_grp_fu_330_p_ce;
reg   [12:0] v5_reg_107;
wire   [0:0] icmp_ln27_fu_177_p2;
wire    ap_CS_fsm_state39;
reg    grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_ap_start_reg;
wire   [0:0] icmp_ln28_fu_189_p2;
wire    ap_CS_fsm_state4;
reg    grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_ap_start_reg;
wire    ap_CS_fsm_state36;
wire    ap_CS_fsm_state37;
reg    grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_ap_start_reg;
wire    ap_CS_fsm_state38;
wire   [63:0] zext_ln28_fu_250_p1;
reg   [2:0] v4_fu_82;
reg    v1_ce0_local;
reg   [31:0] grp_fu_145_p0;
reg   [31:0] grp_fu_145_p1;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state31;
wire    ap_CS_fsm_state19;
wire    ap_CS_fsm_state26;
wire   [31:0] grp_fu_158_p1;
wire   [31:0] bitcast_ln43_fu_217_p1;
wire   [0:0] bit_sel_fu_221_p3;
wire   [31:0] xor_ln_fu_239_p3;
reg   [1:0] grp_fu_145_opcode;
reg    grp_fu_145_ce;
wire   [31:0] grp_fu_330_p2;
reg   [31:0] grp_fu_330_p0;
reg   [31:0] grp_fu_330_p1;
reg    grp_fu_330_ce;
reg   [38:0] ap_NS_fsm;
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
reg    ap_ST_fsm_state37_blk;
wire    ap_ST_fsm_state38_blk;
reg    ap_ST_fsm_state39_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 39'd1;
#0 grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_ap_start_reg = 1'b0;
#0 grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_ap_start_reg = 1'b0;
#0 grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_ap_start_reg = 1'b0;
#0 v4_fu_82 = 3'd0;
end
SgdLR_sw_v3_RAM_1P_BRAM_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
v3_U(.clk(ap_clk),.reset(ap_rst),.address0(v3_address0),.ce0(v3_ce0),.we0(v3_we0),.d0(grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_v3_d0),.q0(v3_q0));
SgdLR_sw_SgdLR_sw_Pipeline_VITIS_LOOP_33_3 grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_ap_start),.ap_done(grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_ap_done),.ap_idle(grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_ap_idle),.ap_ready(grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_ap_ready),.v2_address0(grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_v2_address0),.v2_ce0(grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_v2_ce0),.v2_q0(v2_q0),.tmp(tmp_reg_284),.v0_address0(grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_v0_address0),.v0_ce0(grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_v0_ce0),.v0_q0(v0_q0),.v6_out(grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_v6_out),.v6_out_ap_vld(grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_v6_out_ap_vld),.grp_fu_145_p_din0(grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_grp_fu_145_p_din0),.grp_fu_145_p_din1(grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_grp_fu_145_p_din1),.grp_fu_145_p_opcode(grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_grp_fu_145_p_opcode),.grp_fu_145_p_dout0(grp_fu_145_p2),.grp_fu_145_p_ce(grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_grp_fu_145_p_ce),.grp_fu_330_p_din0(grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_grp_fu_330_p_din0),.grp_fu_330_p_din1(grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_grp_fu_330_p_din1),.grp_fu_330_p_dout0(grp_fu_330_p2),.grp_fu_330_p_ce(grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_grp_fu_330_p_ce));
SgdLR_sw_SgdLR_sw_Pipeline_VITIS_LOOP_47_4 grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_ap_start),.ap_done(grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_ap_done),.ap_idle(grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_ap_idle),.ap_ready(grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_ap_ready),.tmp(tmp_reg_284),.v0_address0(grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_v0_address0),.v0_ce0(grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_v0_ce0),.v0_q0(v0_q0),.v22(reg_163),.v3_address0(grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_v3_address0),.v3_ce0(grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_v3_ce0),.v3_we0(grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_v3_we0),.v3_d0(grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_v3_d0),.grp_fu_330_p_din0(grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_grp_fu_330_p_din0),.grp_fu_330_p_din1(grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_grp_fu_330_p_din1),.grp_fu_330_p_dout0(grp_fu_330_p2),.grp_fu_330_p_ce(grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_grp_fu_330_p_ce));
SgdLR_sw_SgdLR_sw_Pipeline_VITIS_LOOP_55_5 grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_ap_start),.ap_done(grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_ap_done),.ap_idle(grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_ap_idle),.ap_ready(grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_ap_ready),.v3_address0(grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_v3_address0),.v3_ce0(grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_v3_ce0),.v3_q0(v3_q0),.v2_address0(grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_v2_address0),.v2_ce0(grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_v2_ce0),.v2_we0(grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_v2_we0),.v2_d0(grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_v2_d0),.v2_address1(grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_v2_address1),.v2_ce1(grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_v2_ce1),.v2_q1(v2_q1),.grp_fu_145_p_din0(grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_grp_fu_145_p_din0),.grp_fu_145_p_din1(grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_grp_fu_145_p_din1),.grp_fu_145_p_opcode(grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_grp_fu_145_p_opcode),.grp_fu_145_p_dout0(grp_fu_145_p2),.grp_fu_145_p_ce(grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_grp_fu_145_p_ce),.grp_fu_330_p_din0(grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_grp_fu_330_p_din0),.grp_fu_330_p_din1(grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_grp_fu_330_p_din1),.grp_fu_330_p_dout0(grp_fu_330_p2),.grp_fu_330_p_ce(grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_grp_fu_330_p_ce));
SgdLR_sw_faddfsub_32ns_32ns_32_5_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
faddfsub_32ns_32ns_32_5_full_dsp_1_U16(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_145_p0),.din1(grp_fu_145_p1),.opcode(grp_fu_145_opcode),.ce(grp_fu_145_ce),.dout(grp_fu_145_p2));
SgdLR_sw_fdiv_32ns_32ns_32_12_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 12 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fdiv_32ns_32ns_32_12_no_dsp_1_U17(.clk(ap_clk),.reset(ap_rst),.din0(32'd1065353216),.din1(reg_163),.ce(1'b1),.dout(grp_fu_150_p2));
SgdLR_sw_sitofp_32ns_32_5_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 32 ),.dout_WIDTH( 32 ))
sitofp_32ns_32_5_no_dsp_1_U18(.clk(ap_clk),.reset(ap_rst),.din0(v1_load_reg_315),.ce(1'b1),.dout(grp_fu_155_p1));
SgdLR_sw_fexp_32ns_32ns_32_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fexp_32ns_32ns_32_8_full_dsp_1_U19(.clk(ap_clk),.reset(ap_rst),.din0(32'd0),.din1(grp_fu_158_p1),.ce(1'b1),.dout(grp_fu_158_p2));
SgdLR_sw_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U20(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_330_p0),.din1(grp_fu_330_p1),.ce(grp_fu_330_ce),.dout(grp_fu_330_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln28_fu_189_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
            grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_ap_start_reg <= 1'b1;
        end else if ((grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_ap_ready == 1'b1)) begin
            grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state36)) begin
            grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_ap_start_reg <= 1'b1;
        end else if ((grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_ap_ready == 1'b1)) begin
            grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state38)) begin
            grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_ap_start_reg <= 1'b1;
        end else if ((grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_ap_ready == 1'b1)) begin
            grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v4_fu_82 <= 3'd0;
    end else if (((icmp_ln28_fu_189_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        v4_fu_82 <= v4_2_reg_271;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state39))) begin
        v5_reg_107 <= add_ln28_reg_279;
    end else if (((icmp_ln27_fu_177_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v5_reg_107 <= 13'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln28_reg_279 <= add_ln28_fu_195_p2;
        tmp_reg_284[22 : 10] <= tmp_fu_201_p3[22 : 10];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state18))) begin
        reg_163 <= grp_fu_145_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        trunc_ln43_reg_295 <= trunc_ln43_fu_235_p1;
        xor_ln43_reg_290 <= xor_ln43_fu_229_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        v16_reg_305 <= grp_fu_158_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v18_reg_320 <= grp_fu_150_p2;
        v_reg_325 <= grp_fu_155_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        v1_load_reg_315 <= v1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v4_2_reg_271 <= v4_2_fu_183_p2;
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
always @ (*) begin
    if ((grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_ap_done == 1'b0)) begin
        ap_ST_fsm_state37_blk = 1'b1;
    end else begin
        ap_ST_fsm_state37_blk = 1'b0;
    end
end
assign ap_ST_fsm_state38_blk = 1'b0;
always @ (*) begin
    if ((grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_ap_done == 1'b0)) begin
        ap_ST_fsm_state39_blk = 1'b1;
    end else begin
        ap_ST_fsm_state39_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_ap_done == 1'b0)) begin
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
    if (((icmp_ln27_fu_177_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln27_fu_177_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_145_ce = grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_grp_fu_145_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_145_ce = grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_grp_fu_145_p_ce;
    end else begin
        grp_fu_145_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_145_opcode = grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_grp_fu_145_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_145_opcode = grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_grp_fu_145_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        grp_fu_145_opcode = 2'd1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_145_opcode = 2'd0;
    end else begin
        grp_fu_145_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_145_p0 = grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_grp_fu_145_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_145_p0 = grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_grp_fu_145_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        grp_fu_145_p0 = v18_reg_320;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_145_p0 = v16_reg_305;
    end else begin
        grp_fu_145_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_145_p1 = grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_grp_fu_145_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_145_p1 = grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_grp_fu_145_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        grp_fu_145_p1 = v_reg_325;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_145_p1 = 32'd1065353216;
    end else begin
        grp_fu_145_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_330_ce = grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_grp_fu_330_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_330_ce = grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_grp_fu_330_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_330_ce = grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_grp_fu_330_p_ce;
    end else begin
        grp_fu_330_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_330_p0 = grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_grp_fu_330_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_330_p0 = grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_grp_fu_330_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_330_p0 = grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_grp_fu_330_p_din0;
    end else begin
        grp_fu_330_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_330_p1 = grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_grp_fu_330_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_330_p1 = grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_grp_fu_330_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_330_p1 = grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_grp_fu_330_p_din1;
    end else begin
        grp_fu_330_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        v0_address0 = grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_v0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v0_address0 = grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_v0_address0;
    end else begin
        v0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        v0_ce0 = grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_v0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v0_ce0 = grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_v0_ce0;
    end else begin
        v0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v1_ce0_local = 1'b1;
    end else begin
        v1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        v2_address0 = grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_v2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v2_address0 = grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_v2_address0;
    end else begin
        v2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        v2_ce0 = grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_v2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v2_ce0 = grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_v2_ce0;
    end else begin
        v2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        v2_ce1 = grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_v2_ce1;
    end else begin
        v2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        v2_we0 = grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_v2_we0;
    end else begin
        v2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        v3_address0 = grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_v3_address0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        v3_address0 = grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_v3_address0;
    end else begin
        v3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        v3_ce0 = grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_v3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        v3_ce0 = grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_v3_ce0;
    end else begin
        v3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        v3_we0 = grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_v3_we0;
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
            if (((icmp_ln27_fu_177_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln28_fu_189_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_ap_done == 1'b1))) begin
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
            if (((1'b1 == ap_CS_fsm_state37) & (grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state38;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state37;
            end
        end
        ap_ST_fsm_state38 : begin
            ap_NS_fsm = ap_ST_fsm_state39;
        end
        ap_ST_fsm_state39 : begin
            if (((grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state39))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state39;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln28_fu_195_p2 = (v5_reg_107 + 13'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_state25 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_state26 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state30 = ap_CS_fsm[32'd29];
assign ap_CS_fsm_state31 = ap_CS_fsm[32'd30];
assign ap_CS_fsm_state35 = ap_CS_fsm[32'd34];
assign ap_CS_fsm_state36 = ap_CS_fsm[32'd35];
assign ap_CS_fsm_state37 = ap_CS_fsm[32'd36];
assign ap_CS_fsm_state38 = ap_CS_fsm[32'd37];
assign ap_CS_fsm_state39 = ap_CS_fsm[32'd38];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign bit_sel_fu_221_p3 = bitcast_ln43_fu_217_p1[32'd31];
assign bitcast_ln43_fu_217_p1 = grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_v6_out;
assign grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_ap_start = grp_SgdLR_sw_Pipeline_VITIS_LOOP_33_3_fu_119_ap_start_reg;
assign grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_ap_start = grp_SgdLR_sw_Pipeline_VITIS_LOOP_47_4_fu_129_ap_start_reg;
assign grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_ap_start = grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_ap_start_reg;
assign grp_fu_158_p1 = xor_ln_fu_239_p3;
assign icmp_ln27_fu_177_p2 = ((v4_fu_82 == 3'd5) ? 1'b1 : 1'b0);
assign icmp_ln28_fu_189_p2 = ((v5_reg_107 == 13'd4500) ? 1'b1 : 1'b0);
assign tmp_fu_201_p3 = {{v5_reg_107}, {10'd0}};
assign trunc_ln43_fu_235_p1 = bitcast_ln43_fu_217_p1[30:0];
assign v1_address0 = zext_ln28_fu_250_p1;
assign v1_ce0 = v1_ce0_local;
assign v2_address1 = grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_v2_address1;
assign v2_d0 = grp_SgdLR_sw_Pipeline_VITIS_LOOP_55_5_fu_138_v2_d0;
assign v4_2_fu_183_p2 = (v4_fu_82 + 3'd1);
assign xor_ln43_fu_229_p2 = (bit_sel_fu_221_p3 ^ 1'd1);
assign xor_ln_fu_239_p3 = {{xor_ln43_reg_290}, {trunc_ln43_reg_295}};
assign zext_ln28_fu_250_p1 = v5_reg_107;
always @ (posedge ap_clk) begin
    tmp_reg_284[9:0] <= 10'b0000000000;
end
endmodule 