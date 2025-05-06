
module backprop_get_delta_matrix_weights3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights3_0_address0,delta_weights3_0_ce0,delta_weights3_0_we0,delta_weights3_0_d0,delta_weights3_1_address0,delta_weights3_1_ce0,delta_weights3_1_we0,delta_weights3_1_d0,delta_weights3_2_address0,delta_weights3_2_ce0,delta_weights3_2_we0,delta_weights3_2_d0,delta_weights3_3_address0,delta_weights3_3_ce0,delta_weights3_3_we0,delta_weights3_3_d0,output_difference_0_0_val,output_difference_0_1_val,output_difference_0_2_val,last_activations_0_address0,last_activations_0_ce0,last_activations_0_q0,last_activations_1_address0,last_activations_1_ce0,last_activations_1_q0,last_activations_2_address0,last_activations_2_ce0,last_activations_2_q0,last_activations_3_address0,last_activations_3_ce0,last_activations_3_q0,grp_fu_3096_p_din0,grp_fu_3096_p_din1,grp_fu_3096_p_dout0,grp_fu_3096_p_ce,grp_fu_3100_p_din0,grp_fu_3100_p_din1,grp_fu_3100_p_dout0,grp_fu_3100_p_ce,grp_fu_3104_p_din0,grp_fu_3104_p_din1,grp_fu_3104_p_dout0,grp_fu_3104_p_ce,grp_fu_3108_p_din0,grp_fu_3108_p_din1,grp_fu_3108_p_dout0,grp_fu_3108_p_ce,grp_fu_3112_p_din0,grp_fu_3112_p_din1,grp_fu_3112_p_dout0,grp_fu_3112_p_ce);  
parameter    ap_ST_fsm_state1 = 57'd1;
parameter    ap_ST_fsm_state2 = 57'd2;
parameter    ap_ST_fsm_state3 = 57'd4;
parameter    ap_ST_fsm_state4 = 57'd8;
parameter    ap_ST_fsm_state5 = 57'd16;
parameter    ap_ST_fsm_state6 = 57'd32;
parameter    ap_ST_fsm_state7 = 57'd64;
parameter    ap_ST_fsm_state8 = 57'd128;
parameter    ap_ST_fsm_state9 = 57'd256;
parameter    ap_ST_fsm_state10 = 57'd512;
parameter    ap_ST_fsm_state11 = 57'd1024;
parameter    ap_ST_fsm_state12 = 57'd2048;
parameter    ap_ST_fsm_state13 = 57'd4096;
parameter    ap_ST_fsm_state14 = 57'd8192;
parameter    ap_ST_fsm_state15 = 57'd16384;
parameter    ap_ST_fsm_state16 = 57'd32768;
parameter    ap_ST_fsm_state17 = 57'd65536;
parameter    ap_ST_fsm_state18 = 57'd131072;
parameter    ap_ST_fsm_state19 = 57'd262144;
parameter    ap_ST_fsm_state20 = 57'd524288;
parameter    ap_ST_fsm_state21 = 57'd1048576;
parameter    ap_ST_fsm_state22 = 57'd2097152;
parameter    ap_ST_fsm_state23 = 57'd4194304;
parameter    ap_ST_fsm_state24 = 57'd8388608;
parameter    ap_ST_fsm_state25 = 57'd16777216;
parameter    ap_ST_fsm_state26 = 57'd33554432;
parameter    ap_ST_fsm_state27 = 57'd67108864;
parameter    ap_ST_fsm_state28 = 57'd134217728;
parameter    ap_ST_fsm_state29 = 57'd268435456;
parameter    ap_ST_fsm_state30 = 57'd536870912;
parameter    ap_ST_fsm_state31 = 57'd1073741824;
parameter    ap_ST_fsm_state32 = 57'd2147483648;
parameter    ap_ST_fsm_state33 = 57'd4294967296;
parameter    ap_ST_fsm_state34 = 57'd8589934592;
parameter    ap_ST_fsm_state35 = 57'd17179869184;
parameter    ap_ST_fsm_state36 = 57'd34359738368;
parameter    ap_ST_fsm_state37 = 57'd68719476736;
parameter    ap_ST_fsm_state38 = 57'd137438953472;
parameter    ap_ST_fsm_state39 = 57'd274877906944;
parameter    ap_ST_fsm_state40 = 57'd549755813888;
parameter    ap_ST_fsm_state41 = 57'd1099511627776;
parameter    ap_ST_fsm_state42 = 57'd2199023255552;
parameter    ap_ST_fsm_state43 = 57'd4398046511104;
parameter    ap_ST_fsm_state44 = 57'd8796093022208;
parameter    ap_ST_fsm_state45 = 57'd17592186044416;
parameter    ap_ST_fsm_state46 = 57'd35184372088832;
parameter    ap_ST_fsm_state47 = 57'd70368744177664;
parameter    ap_ST_fsm_state48 = 57'd140737488355328;
parameter    ap_ST_fsm_state49 = 57'd281474976710656;
parameter    ap_ST_fsm_state50 = 57'd562949953421312;
parameter    ap_ST_fsm_state51 = 57'd1125899906842624;
parameter    ap_ST_fsm_state52 = 57'd2251799813685248;
parameter    ap_ST_fsm_state53 = 57'd4503599627370496;
parameter    ap_ST_fsm_state54 = 57'd9007199254740992;
parameter    ap_ST_fsm_state55 = 57'd18014398509481984;
parameter    ap_ST_fsm_state56 = 57'd36028797018963968;
parameter    ap_ST_fsm_state57 = 57'd72057594037927936;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] delta_weights3_0_address0;
output   delta_weights3_0_ce0;
output   delta_weights3_0_we0;
output  [63:0] delta_weights3_0_d0;
output  [5:0] delta_weights3_1_address0;
output   delta_weights3_1_ce0;
output   delta_weights3_1_we0;
output  [63:0] delta_weights3_1_d0;
output  [5:0] delta_weights3_2_address0;
output   delta_weights3_2_ce0;
output   delta_weights3_2_we0;
output  [63:0] delta_weights3_2_d0;
output  [5:0] delta_weights3_3_address0;
output   delta_weights3_3_ce0;
output   delta_weights3_3_we0;
output  [63:0] delta_weights3_3_d0;
input  [63:0] output_difference_0_0_val;
input  [63:0] output_difference_0_1_val;
input  [63:0] output_difference_0_2_val;
output  [3:0] last_activations_0_address0;
output   last_activations_0_ce0;
input  [63:0] last_activations_0_q0;
output  [3:0] last_activations_1_address0;
output   last_activations_1_ce0;
input  [63:0] last_activations_1_q0;
output  [3:0] last_activations_2_address0;
output   last_activations_2_ce0;
input  [63:0] last_activations_2_q0;
output  [3:0] last_activations_3_address0;
output   last_activations_3_ce0;
input  [63:0] last_activations_3_q0;
output  [63:0] grp_fu_3096_p_din0;
output  [63:0] grp_fu_3096_p_din1;
input  [63:0] grp_fu_3096_p_dout0;
output   grp_fu_3096_p_ce;
output  [63:0] grp_fu_3100_p_din0;
output  [63:0] grp_fu_3100_p_din1;
input  [63:0] grp_fu_3100_p_dout0;
output   grp_fu_3100_p_ce;
output  [63:0] grp_fu_3104_p_din0;
output  [63:0] grp_fu_3104_p_din1;
input  [63:0] grp_fu_3104_p_dout0;
output   grp_fu_3104_p_ce;
output  [63:0] grp_fu_3108_p_din0;
output  [63:0] grp_fu_3108_p_din1;
input  [63:0] grp_fu_3108_p_dout0;
output   grp_fu_3108_p_ce;
output  [63:0] grp_fu_3112_p_din0;
output  [63:0] grp_fu_3112_p_din1;
input  [63:0] grp_fu_3112_p_dout0;
output   grp_fu_3112_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [56:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] reg_2506;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state20;
wire    ap_CS_fsm_state29;
wire    ap_CS_fsm_state38;
wire    ap_CS_fsm_state47;
reg   [63:0] reg_2513;
reg   [63:0] reg_2520;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state21;
wire    ap_CS_fsm_state30;
wire    ap_CS_fsm_state39;
wire    ap_CS_fsm_state48;
reg   [63:0] reg_2528;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state22;
wire    ap_CS_fsm_state31;
wire    ap_CS_fsm_state40;
wire    ap_CS_fsm_state49;
reg   [63:0] reg_2536;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state23;
wire    ap_CS_fsm_state32;
wire    ap_CS_fsm_state41;
reg   [63:0] reg_2543;
reg   [63:0] reg_2550;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state24;
wire    ap_CS_fsm_state33;
wire    ap_CS_fsm_state42;
reg   [63:0] reg_2558;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state25;
wire    ap_CS_fsm_state34;
wire    ap_CS_fsm_state43;
reg   [63:0] reg_2566;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state26;
wire    ap_CS_fsm_state35;
wire    ap_CS_fsm_state44;
reg   [63:0] reg_2573;
reg   [63:0] reg_2580;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state19;
wire    ap_CS_fsm_state27;
wire    ap_CS_fsm_state28;
wire    ap_CS_fsm_state36;
wire    ap_CS_fsm_state37;
wire    ap_CS_fsm_state45;
wire    ap_CS_fsm_state46;
wire    ap_CS_fsm_state50;
wire    ap_CS_fsm_state51;
wire    ap_CS_fsm_state52;
wire    ap_CS_fsm_state53;
wire    ap_CS_fsm_state54;
wire    ap_CS_fsm_state55;
wire    ap_CS_fsm_state56;
reg   [63:0] reg_2586;
reg   [63:0] reg_2592;
reg   [63:0] reg_2598;
reg   [63:0] reg_2603;
reg   [63:0] reg_2611;
reg   [63:0] reg_2619;
wire    ap_CS_fsm_state57;
reg    last_activations_0_ce0_local;
reg   [3:0] last_activations_0_address0_local;
reg    last_activations_1_ce0_local;
reg   [3:0] last_activations_1_address0_local;
reg    last_activations_2_ce0_local;
reg   [3:0] last_activations_2_address0_local;
reg    last_activations_3_ce0_local;
reg   [3:0] last_activations_3_address0_local;
reg    delta_weights3_0_we0_local;
reg   [63:0] delta_weights3_0_d0_local;
reg    delta_weights3_0_ce0_local;
reg   [5:0] delta_weights3_0_address0_local;
reg    delta_weights3_1_we0_local;
reg   [63:0] delta_weights3_1_d0_local;
reg    delta_weights3_1_ce0_local;
reg   [5:0] delta_weights3_1_address0_local;
reg    delta_weights3_2_we0_local;
reg   [63:0] delta_weights3_2_d0_local;
reg    delta_weights3_2_ce0_local;
reg   [5:0] delta_weights3_2_address0_local;
reg    delta_weights3_3_we0_local;
reg   [63:0] delta_weights3_3_d0_local;
reg    delta_weights3_3_ce0_local;
reg   [5:0] delta_weights3_3_address0_local;
reg   [63:0] grp_fu_2482_p0;
reg   [63:0] grp_fu_2482_p1;
reg   [63:0] grp_fu_2487_p0;
reg   [63:0] grp_fu_2487_p1;
reg   [63:0] grp_fu_2492_p0;
reg   [63:0] grp_fu_2492_p1;
reg   [63:0] grp_fu_2497_p0;
reg   [63:0] grp_fu_2497_p1;
reg   [63:0] grp_fu_2502_p0;
reg   [56:0] ap_NS_fsm;
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
wire    ap_ST_fsm_state48_blk;
wire    ap_ST_fsm_state49_blk;
wire    ap_ST_fsm_state50_blk;
wire    ap_ST_fsm_state51_blk;
wire    ap_ST_fsm_state52_blk;
wire    ap_ST_fsm_state53_blk;
wire    ap_ST_fsm_state54_blk;
wire    ap_ST_fsm_state55_blk;
wire    ap_ST_fsm_state56_blk;
wire    ap_ST_fsm_state57_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 57'd1;
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state2))) begin
        reg_2506 <= last_activations_0_q0;
        reg_2513 <= last_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        reg_2520 <= last_activations_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        reg_2528 <= last_activations_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5))) begin
        reg_2536 <= last_activations_0_q0;
        reg_2543 <= last_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6))) begin
        reg_2550 <= last_activations_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7))) begin
        reg_2558 <= last_activations_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_2566 <= last_activations_0_q0;
        reg_2573 <= last_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state49) | (1'b1== ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        reg_2580 <= grp_fu_3096_p_dout0;
        reg_2586 <= grp_fu_3100_p_dout0;
        reg_2592 <= grp_fu_3104_p_dout0;
    end
end
always @ (posedge ap_clk) begin
if (((1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1== ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        reg_2598 <= grp_fu_3108_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state9))) begin
        reg_2603 <= last_activations_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state10))) begin
        reg_2611 <= last_activations_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state13))) begin
        reg_2619 <= grp_fu_3112_p_dout0;
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
assign ap_ST_fsm_state48_blk = 1'b0;
assign ap_ST_fsm_state49_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state50_blk = 1'b0;
assign ap_ST_fsm_state51_blk = 1'b0;
assign ap_ST_fsm_state52_blk = 1'b0;
assign ap_ST_fsm_state53_blk = 1'b0;
assign ap_ST_fsm_state54_blk = 1'b0;
assign ap_ST_fsm_state55_blk = 1'b0;
assign ap_ST_fsm_state56_blk = 1'b0;
assign ap_ST_fsm_state57_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state57) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if ((1'b1 == ap_CS_fsm_state57)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights3_0_address0_local = 64'd47;
    end else if ((1'b1 == ap_CS_fsm_state56)) begin
        delta_weights3_0_address0_local = 64'd46;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        delta_weights3_0_address0_local = 64'd45;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        delta_weights3_0_address0_local = 64'd44;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        delta_weights3_0_address0_local = 64'd43;
    end else if ((1'b1 == ap_CS_fsm_state52)) begin
        delta_weights3_0_address0_local = 64'd42;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        delta_weights3_0_address0_local = 64'd41;
    end else if ((1'b1 == ap_CS_fsm_state50)) begin
        delta_weights3_0_address0_local = 64'd40;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        delta_weights3_0_address0_local = 64'd39;
    end else if ((1'b1 == ap_CS_fsm_state48)) begin
        delta_weights3_0_address0_local = 64'd38;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        delta_weights3_0_address0_local = 64'd37;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        delta_weights3_0_address0_local = 64'd36;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        delta_weights3_0_address0_local = 64'd35;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        delta_weights3_0_address0_local = 64'd34;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        delta_weights3_0_address0_local = 64'd33;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        delta_weights3_0_address0_local = 64'd32;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        delta_weights3_0_address0_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        delta_weights3_0_address0_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        delta_weights3_0_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        delta_weights3_0_address0_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        delta_weights3_0_address0_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        delta_weights3_0_address0_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        delta_weights3_0_address0_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        delta_weights3_0_address0_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        delta_weights3_0_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        delta_weights3_0_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        delta_weights3_0_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        delta_weights3_0_address0_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        delta_weights3_0_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        delta_weights3_0_address0_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        delta_weights3_0_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        delta_weights3_0_address0_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        delta_weights3_0_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        delta_weights3_0_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        delta_weights3_0_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        delta_weights3_0_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_0_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_0_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_0_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_0_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_0_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_0_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_0_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_0_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_0_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_0_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_0_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_0_address0_local = 64'd0;
    end else begin
        delta_weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
if (((1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state49) | (1'b1== ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_0_ce0_local = 1'b1;
    end else begin
        delta_weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state15))) begin
        delta_weights3_0_d0_local = reg_2619;
end else if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1== ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_0_d0_local = reg_2580;
    end else begin
        delta_weights3_0_d0_local = 'bx;
    end
end
always @ (*) begin
if (((1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state49) | (1'b1== ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_0_we0_local = 1'b1;
    end else begin
        delta_weights3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights3_1_address0_local = 64'd47;
    end else if ((1'b1 == ap_CS_fsm_state56)) begin
        delta_weights3_1_address0_local = 64'd46;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        delta_weights3_1_address0_local = 64'd45;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        delta_weights3_1_address0_local = 64'd44;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        delta_weights3_1_address0_local = 64'd43;
    end else if ((1'b1 == ap_CS_fsm_state52)) begin
        delta_weights3_1_address0_local = 64'd42;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        delta_weights3_1_address0_local = 64'd41;
    end else if ((1'b1 == ap_CS_fsm_state50)) begin
        delta_weights3_1_address0_local = 64'd40;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        delta_weights3_1_address0_local = 64'd39;
    end else if ((1'b1 == ap_CS_fsm_state48)) begin
        delta_weights3_1_address0_local = 64'd38;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        delta_weights3_1_address0_local = 64'd37;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        delta_weights3_1_address0_local = 64'd36;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        delta_weights3_1_address0_local = 64'd35;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        delta_weights3_1_address0_local = 64'd34;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        delta_weights3_1_address0_local = 64'd33;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        delta_weights3_1_address0_local = 64'd32;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        delta_weights3_1_address0_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        delta_weights3_1_address0_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        delta_weights3_1_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        delta_weights3_1_address0_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        delta_weights3_1_address0_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        delta_weights3_1_address0_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        delta_weights3_1_address0_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        delta_weights3_1_address0_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        delta_weights3_1_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        delta_weights3_1_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        delta_weights3_1_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        delta_weights3_1_address0_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        delta_weights3_1_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        delta_weights3_1_address0_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        delta_weights3_1_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        delta_weights3_1_address0_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        delta_weights3_1_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        delta_weights3_1_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        delta_weights3_1_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        delta_weights3_1_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_1_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_1_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_1_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_1_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_1_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_1_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_1_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_1_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_1_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_1_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_1_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_1_address0_local = 64'd0;
    end else begin
        delta_weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
if (((1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state49) | (1'b1== ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_1_ce0_local = 1'b1;
    end else begin
        delta_weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state15))) begin
        delta_weights3_1_d0_local = reg_2580;
end else if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1== ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_1_d0_local = reg_2586;
    end else begin
        delta_weights3_1_d0_local = 'bx;
    end
end
always @ (*) begin
if (((1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state49) | (1'b1== ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_1_we0_local = 1'b1;
    end else begin
        delta_weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights3_2_address0_local = 64'd47;
    end else if ((1'b1 == ap_CS_fsm_state56)) begin
        delta_weights3_2_address0_local = 64'd46;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        delta_weights3_2_address0_local = 64'd45;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        delta_weights3_2_address0_local = 64'd44;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        delta_weights3_2_address0_local = 64'd43;
    end else if ((1'b1 == ap_CS_fsm_state52)) begin
        delta_weights3_2_address0_local = 64'd42;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        delta_weights3_2_address0_local = 64'd41;
    end else if ((1'b1 == ap_CS_fsm_state50)) begin
        delta_weights3_2_address0_local = 64'd40;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        delta_weights3_2_address0_local = 64'd39;
    end else if ((1'b1 == ap_CS_fsm_state48)) begin
        delta_weights3_2_address0_local = 64'd38;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        delta_weights3_2_address0_local = 64'd37;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        delta_weights3_2_address0_local = 64'd36;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        delta_weights3_2_address0_local = 64'd35;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        delta_weights3_2_address0_local = 64'd34;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        delta_weights3_2_address0_local = 64'd33;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        delta_weights3_2_address0_local = 64'd32;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        delta_weights3_2_address0_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        delta_weights3_2_address0_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        delta_weights3_2_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        delta_weights3_2_address0_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        delta_weights3_2_address0_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        delta_weights3_2_address0_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        delta_weights3_2_address0_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        delta_weights3_2_address0_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        delta_weights3_2_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        delta_weights3_2_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        delta_weights3_2_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        delta_weights3_2_address0_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        delta_weights3_2_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        delta_weights3_2_address0_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        delta_weights3_2_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        delta_weights3_2_address0_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        delta_weights3_2_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        delta_weights3_2_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        delta_weights3_2_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        delta_weights3_2_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_2_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_2_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_2_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_2_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_2_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_2_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_2_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_2_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_2_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_2_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_2_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_2_address0_local = 64'd0;
    end else begin
        delta_weights3_2_address0_local = 'bx;
    end
end
always @ (*) begin
if (((1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state49) | (1'b1== ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_2_ce0_local = 1'b1;
    end else begin
        delta_weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state15))) begin
        delta_weights3_2_d0_local = reg_2586;
end else if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1== ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_2_d0_local = reg_2592;
    end else begin
        delta_weights3_2_d0_local = 'bx;
    end
end
always @ (*) begin
if (((1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state49) | (1'b1== ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_2_we0_local = 1'b1;
    end else begin
        delta_weights3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        delta_weights3_3_address0_local = 64'd47;
    end else if ((1'b1 == ap_CS_fsm_state56)) begin
        delta_weights3_3_address0_local = 64'd46;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        delta_weights3_3_address0_local = 64'd45;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        delta_weights3_3_address0_local = 64'd44;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        delta_weights3_3_address0_local = 64'd43;
    end else if ((1'b1 == ap_CS_fsm_state52)) begin
        delta_weights3_3_address0_local = 64'd42;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        delta_weights3_3_address0_local = 64'd41;
    end else if ((1'b1 == ap_CS_fsm_state50)) begin
        delta_weights3_3_address0_local = 64'd40;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        delta_weights3_3_address0_local = 64'd39;
    end else if ((1'b1 == ap_CS_fsm_state48)) begin
        delta_weights3_3_address0_local = 64'd38;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        delta_weights3_3_address0_local = 64'd37;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        delta_weights3_3_address0_local = 64'd36;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        delta_weights3_3_address0_local = 64'd35;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        delta_weights3_3_address0_local = 64'd34;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        delta_weights3_3_address0_local = 64'd33;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        delta_weights3_3_address0_local = 64'd32;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        delta_weights3_3_address0_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        delta_weights3_3_address0_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        delta_weights3_3_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        delta_weights3_3_address0_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        delta_weights3_3_address0_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        delta_weights3_3_address0_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        delta_weights3_3_address0_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        delta_weights3_3_address0_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        delta_weights3_3_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        delta_weights3_3_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        delta_weights3_3_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        delta_weights3_3_address0_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        delta_weights3_3_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        delta_weights3_3_address0_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        delta_weights3_3_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        delta_weights3_3_address0_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        delta_weights3_3_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        delta_weights3_3_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        delta_weights3_3_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        delta_weights3_3_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_3_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_3_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_3_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_3_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_3_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_3_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_3_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_3_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_3_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_3_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_3_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_3_address0_local = 64'd0;
    end else begin
        delta_weights3_3_address0_local = 'bx;
    end
end
always @ (*) begin
if (((1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state49) | (1'b1== ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_3_ce0_local = 1'b1;
    end else begin
        delta_weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state15))) begin
        delta_weights3_3_d0_local = reg_2592;
end else if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1== ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_3_d0_local = reg_2598;
    end else begin
        delta_weights3_3_d0_local = 'bx;
    end
end
always @ (*) begin
if (((1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state49) | (1'b1== ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_3_we0_local = 1'b1;
    end else begin
        delta_weights3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state50)) begin
        grp_fu_2482_p0 = reg_2528;
    end else if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_fu_2482_p0 = reg_2603;
    end else if (((1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state17))) begin
        grp_fu_2482_p0 = reg_2550;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_2482_p0 = reg_2611;
    end else if (((1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2482_p0 = reg_2573;
    end else if (((1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2482_p0 = reg_2566;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2482_p0 = reg_2558;
    end else if (((1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7))) begin
        grp_fu_2482_p0 = reg_2543;
    end else if (((1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2482_p0 = reg_2536;
    end else if (((1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2482_p0 = reg_2520;
    end else if (((1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2482_p0 = reg_2513;
    end else if (((1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2482_p0 = reg_2506;
    end else begin
        grp_fu_2482_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_fu_2482_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2482_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2482_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2482_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2487_p0 = reg_2611;
    end else if (((1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2487_p0 = reg_2573;
    end else if (((1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2487_p0 = reg_2566;
    end else if (((1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2487_p0 = reg_2558;
    end else if (((1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7))) begin
        grp_fu_2487_p0 = reg_2543;
    end else if (((1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2487_p0 = reg_2536;
    end else if (((1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2487_p0 = reg_2528;
    end else if (((1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2487_p0 = reg_2513;
    end else if (((1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2487_p0 = reg_2506;
    end else begin
        grp_fu_2487_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_fu_2487_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2487_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2487_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2487_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2492_p0 = reg_2611;
    end else if (((1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2492_p0 = reg_2603;
    end else if (((1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2492_p0 = reg_2566;
    end else if (((1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2492_p0 = reg_2558;
    end else if (((1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7))) begin
        grp_fu_2492_p0 = reg_2550;
    end else if (((1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2492_p0 = reg_2536;
    end else if (((1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2492_p0 = reg_2528;
    end else if (((1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2492_p0 = reg_2520;
    end else if (((1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2492_p0 = reg_2506;
    end else begin
        grp_fu_2492_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_fu_2492_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2492_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2492_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2492_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_fu_2497_p0 = reg_2611;
    end else if (((1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state17))) begin
        grp_fu_2497_p0 = reg_2558;
    end else if (((1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2497_p0 = reg_2603;
    end else if (((1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2497_p0 = reg_2573;
    end else if (((1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7))) begin
        grp_fu_2497_p0 = reg_2550;
    end else if (((1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2497_p0 = reg_2543;
    end else if (((1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2497_p0 = reg_2528;
    end else if (((1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2497_p0 = reg_2520;
    end else if (((1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2497_p0 = reg_2513;
    end else begin
        grp_fu_2497_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_fu_2497_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2497_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2497_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2497_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_2502_p0 = reg_2520;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2502_p0 = reg_2603;
    end else if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state7))) begin
        grp_fu_2502_p0 = reg_2550;
    end else begin
        grp_fu_2502_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state46)) begin
        last_activations_0_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        last_activations_0_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        last_activations_0_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        last_activations_0_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        last_activations_0_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        last_activations_0_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        last_activations_0_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        last_activations_0_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        last_activations_0_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        last_activations_0_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        last_activations_0_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        last_activations_0_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        last_activations_0_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        last_activations_0_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        last_activations_0_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        last_activations_0_address0_local = 64'd0;
    end else begin
        last_activations_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        last_activations_0_ce0_local = 1'b1;
    end else begin
        last_activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state46)) begin
        last_activations_1_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        last_activations_1_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        last_activations_1_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        last_activations_1_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        last_activations_1_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        last_activations_1_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        last_activations_1_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        last_activations_1_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        last_activations_1_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        last_activations_1_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        last_activations_1_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        last_activations_1_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        last_activations_1_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        last_activations_1_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        last_activations_1_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        last_activations_1_address0_local = 64'd0;
    end else begin
        last_activations_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        last_activations_1_ce0_local = 1'b1;
    end else begin
        last_activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state47)) begin
        last_activations_2_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        last_activations_2_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        last_activations_2_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        last_activations_2_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        last_activations_2_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        last_activations_2_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        last_activations_2_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        last_activations_2_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        last_activations_2_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        last_activations_2_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        last_activations_2_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        last_activations_2_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        last_activations_2_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        last_activations_2_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        last_activations_2_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        last_activations_2_address0_local = 64'd0;
    end else begin
        last_activations_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state2))) begin
        last_activations_2_ce0_local = 1'b1;
    end else begin
        last_activations_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state48)) begin
        last_activations_3_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        last_activations_3_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        last_activations_3_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        last_activations_3_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        last_activations_3_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        last_activations_3_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        last_activations_3_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        last_activations_3_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        last_activations_3_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        last_activations_3_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        last_activations_3_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        last_activations_3_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        last_activations_3_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        last_activations_3_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        last_activations_3_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        last_activations_3_address0_local = 64'd0;
    end else begin
        last_activations_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        last_activations_3_ce0_local = 1'b1;
    end else begin
        last_activations_3_ce0_local = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
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
            ap_NS_fsm = ap_ST_fsm_state49;
        end
        ap_ST_fsm_state49 : begin
            ap_NS_fsm = ap_ST_fsm_state50;
        end
        ap_ST_fsm_state50 : begin
            ap_NS_fsm = ap_ST_fsm_state51;
        end
        ap_ST_fsm_state51 : begin
            ap_NS_fsm = ap_ST_fsm_state52;
        end
        ap_ST_fsm_state52 : begin
            ap_NS_fsm = ap_ST_fsm_state53;
        end
        ap_ST_fsm_state53 : begin
            ap_NS_fsm = ap_ST_fsm_state54;
        end
        ap_ST_fsm_state54 : begin
            ap_NS_fsm = ap_ST_fsm_state55;
        end
        ap_ST_fsm_state55 : begin
            ap_NS_fsm = ap_ST_fsm_state56;
        end
        ap_ST_fsm_state56 : begin
            ap_NS_fsm = ap_ST_fsm_state57;
        end
        ap_ST_fsm_state57 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_state25 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_state26 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_state27 = ap_CS_fsm[32'd26];
assign ap_CS_fsm_state28 = ap_CS_fsm[32'd27];
assign ap_CS_fsm_state29 = ap_CS_fsm[32'd28];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state30 = ap_CS_fsm[32'd29];
assign ap_CS_fsm_state31 = ap_CS_fsm[32'd30];
assign ap_CS_fsm_state32 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_state33 = ap_CS_fsm[32'd32];
assign ap_CS_fsm_state34 = ap_CS_fsm[32'd33];
assign ap_CS_fsm_state35 = ap_CS_fsm[32'd34];
assign ap_CS_fsm_state36 = ap_CS_fsm[32'd35];
assign ap_CS_fsm_state37 = ap_CS_fsm[32'd36];
assign ap_CS_fsm_state38 = ap_CS_fsm[32'd37];
assign ap_CS_fsm_state39 = ap_CS_fsm[32'd38];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state40 = ap_CS_fsm[32'd39];
assign ap_CS_fsm_state41 = ap_CS_fsm[32'd40];
assign ap_CS_fsm_state42 = ap_CS_fsm[32'd41];
assign ap_CS_fsm_state43 = ap_CS_fsm[32'd42];
assign ap_CS_fsm_state44 = ap_CS_fsm[32'd43];
assign ap_CS_fsm_state45 = ap_CS_fsm[32'd44];
assign ap_CS_fsm_state46 = ap_CS_fsm[32'd45];
assign ap_CS_fsm_state47 = ap_CS_fsm[32'd46];
assign ap_CS_fsm_state48 = ap_CS_fsm[32'd47];
assign ap_CS_fsm_state49 = ap_CS_fsm[32'd48];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state50 = ap_CS_fsm[32'd49];
assign ap_CS_fsm_state51 = ap_CS_fsm[32'd50];
assign ap_CS_fsm_state52 = ap_CS_fsm[32'd51];
assign ap_CS_fsm_state53 = ap_CS_fsm[32'd52];
assign ap_CS_fsm_state54 = ap_CS_fsm[32'd53];
assign ap_CS_fsm_state55 = ap_CS_fsm[32'd54];
assign ap_CS_fsm_state56 = ap_CS_fsm[32'd55];
assign ap_CS_fsm_state57 = ap_CS_fsm[32'd56];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign delta_weights3_0_address0 = delta_weights3_0_address0_local;
assign delta_weights3_0_ce0 = delta_weights3_0_ce0_local;
assign delta_weights3_0_d0 = delta_weights3_0_d0_local;
assign delta_weights3_0_we0 = delta_weights3_0_we0_local;
assign delta_weights3_1_address0 = delta_weights3_1_address0_local;
assign delta_weights3_1_ce0 = delta_weights3_1_ce0_local;
assign delta_weights3_1_d0 = delta_weights3_1_d0_local;
assign delta_weights3_1_we0 = delta_weights3_1_we0_local;
assign delta_weights3_2_address0 = delta_weights3_2_address0_local;
assign delta_weights3_2_ce0 = delta_weights3_2_ce0_local;
assign delta_weights3_2_d0 = delta_weights3_2_d0_local;
assign delta_weights3_2_we0 = delta_weights3_2_we0_local;
assign delta_weights3_3_address0 = delta_weights3_3_address0_local;
assign delta_weights3_3_ce0 = delta_weights3_3_ce0_local;
assign delta_weights3_3_d0 = delta_weights3_3_d0_local;
assign delta_weights3_3_we0 = delta_weights3_3_we0_local;
assign grp_fu_3096_p_ce = 1'b1;
assign grp_fu_3096_p_din0 = grp_fu_2482_p0;
assign grp_fu_3096_p_din1 = grp_fu_2482_p1;
assign grp_fu_3100_p_ce = 1'b1;
assign grp_fu_3100_p_din0 = grp_fu_2487_p0;
assign grp_fu_3100_p_din1 = grp_fu_2487_p1;
assign grp_fu_3104_p_ce = 1'b1;
assign grp_fu_3104_p_din0 = grp_fu_2492_p0;
assign grp_fu_3104_p_din1 = grp_fu_2492_p1;
assign grp_fu_3108_p_ce = 1'b1;
assign grp_fu_3108_p_din0 = grp_fu_2497_p0;
assign grp_fu_3108_p_din1 = grp_fu_2497_p1;
assign grp_fu_3112_p_ce = 1'b1;
assign grp_fu_3112_p_din0 = grp_fu_2502_p0;
assign grp_fu_3112_p_din1 = output_difference_0_2_val;
assign last_activations_0_address0 = last_activations_0_address0_local;
assign last_activations_0_ce0 = last_activations_0_ce0_local;
assign last_activations_1_address0 = last_activations_1_address0_local;
assign last_activations_1_ce0 = last_activations_1_ce0_local;
assign last_activations_2_address0 = last_activations_2_address0_local;
assign last_activations_2_ce0 = last_activations_2_ce0_local;
assign last_activations_3_address0 = last_activations_3_address0_local;
assign last_activations_3_ce0 = last_activations_3_ce0_local;
endmodule 
