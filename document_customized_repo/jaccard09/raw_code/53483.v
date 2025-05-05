module backprop_get_delta_matrix_weights3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights3_0_address0,delta_weights3_0_ce0,delta_weights3_0_we0,delta_weights3_0_d0,delta_weights3_0_address1,delta_weights3_0_ce1,delta_weights3_0_we1,delta_weights3_0_d1,delta_weights3_1_address0,delta_weights3_1_ce0,delta_weights3_1_we0,delta_weights3_1_d0,delta_weights3_1_address1,delta_weights3_1_ce1,delta_weights3_1_we1,delta_weights3_1_d1,delta_weights3_2_address0,delta_weights3_2_ce0,delta_weights3_2_we0,delta_weights3_2_d0,delta_weights3_2_address1,delta_weights3_2_ce1,delta_weights3_2_we1,delta_weights3_2_d1,delta_weights3_3_address0,delta_weights3_3_ce0,delta_weights3_3_we0,delta_weights3_3_d0,delta_weights3_3_address1,delta_weights3_3_ce1,delta_weights3_3_we1,delta_weights3_3_d1,output_difference_0_0_val,output_difference_0_1_val,output_difference_0_2_val,last_activations_0_address0,last_activations_0_ce0,last_activations_0_q0,last_activations_1_address0,last_activations_1_ce0,last_activations_1_q0,last_activations_2_address0,last_activations_2_ce0,last_activations_2_q0,last_activations_3_address0,last_activations_3_ce0,last_activations_3_q0,grp_fu_3096_p_din0,grp_fu_3096_p_din1,grp_fu_3096_p_dout0,grp_fu_3096_p_ce,grp_fu_3100_p_din0,grp_fu_3100_p_din1,grp_fu_3100_p_dout0,grp_fu_3100_p_ce,grp_fu_3104_p_din0,grp_fu_3104_p_din1,grp_fu_3104_p_dout0,grp_fu_3104_p_ce,grp_fu_3108_p_din0,grp_fu_3108_p_din1,grp_fu_3108_p_dout0,grp_fu_3108_p_ce,grp_fu_3112_p_din0,grp_fu_3112_p_din1,grp_fu_3112_p_dout0,grp_fu_3112_p_ce,grp_fu_3116_p_din0,grp_fu_3116_p_din1,grp_fu_3116_p_dout0,grp_fu_3116_p_ce,grp_fu_3120_p_din0,grp_fu_3120_p_din1,grp_fu_3120_p_dout0,grp_fu_3120_p_ce,grp_fu_3124_p_din0,grp_fu_3124_p_din1,grp_fu_3124_p_dout0,grp_fu_3124_p_ce,grp_fu_3136_p_din0,grp_fu_3136_p_din1,grp_fu_3136_p_dout0,grp_fu_3136_p_ce); 
parameter    ap_ST_fsm_state1 = 33'd1;
parameter    ap_ST_fsm_state2 = 33'd2;
parameter    ap_ST_fsm_state3 = 33'd4;
parameter    ap_ST_fsm_state4 = 33'd8;
parameter    ap_ST_fsm_state5 = 33'd16;
parameter    ap_ST_fsm_state6 = 33'd32;
parameter    ap_ST_fsm_state7 = 33'd64;
parameter    ap_ST_fsm_state8 = 33'd128;
parameter    ap_ST_fsm_state9 = 33'd256;
parameter    ap_ST_fsm_state10 = 33'd512;
parameter    ap_ST_fsm_state11 = 33'd1024;
parameter    ap_ST_fsm_state12 = 33'd2048;
parameter    ap_ST_fsm_state13 = 33'd4096;
parameter    ap_ST_fsm_state14 = 33'd8192;
parameter    ap_ST_fsm_state15 = 33'd16384;
parameter    ap_ST_fsm_state16 = 33'd32768;
parameter    ap_ST_fsm_state17 = 33'd65536;
parameter    ap_ST_fsm_state18 = 33'd131072;
parameter    ap_ST_fsm_state19 = 33'd262144;
parameter    ap_ST_fsm_state20 = 33'd524288;
parameter    ap_ST_fsm_state21 = 33'd1048576;
parameter    ap_ST_fsm_state22 = 33'd2097152;
parameter    ap_ST_fsm_state23 = 33'd4194304;
parameter    ap_ST_fsm_state24 = 33'd8388608;
parameter    ap_ST_fsm_state25 = 33'd16777216;
parameter    ap_ST_fsm_state26 = 33'd33554432;
parameter    ap_ST_fsm_state27 = 33'd67108864;
parameter    ap_ST_fsm_state28 = 33'd134217728;
parameter    ap_ST_fsm_state29 = 33'd268435456;
parameter    ap_ST_fsm_state30 = 33'd536870912;
parameter    ap_ST_fsm_state31 = 33'd1073741824;
parameter    ap_ST_fsm_state32 = 33'd2147483648;
parameter    ap_ST_fsm_state33 = 33'd4294967296;
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
output  [5:0] delta_weights3_0_address1;
output   delta_weights3_0_ce1;
output   delta_weights3_0_we1;
output  [63:0] delta_weights3_0_d1;
output  [5:0] delta_weights3_1_address0;
output   delta_weights3_1_ce0;
output   delta_weights3_1_we0;
output  [63:0] delta_weights3_1_d0;
output  [5:0] delta_weights3_1_address1;
output   delta_weights3_1_ce1;
output   delta_weights3_1_we1;
output  [63:0] delta_weights3_1_d1;
output  [5:0] delta_weights3_2_address0;
output   delta_weights3_2_ce0;
output   delta_weights3_2_we0;
output  [63:0] delta_weights3_2_d0;
output  [5:0] delta_weights3_2_address1;
output   delta_weights3_2_ce1;
output   delta_weights3_2_we1;
output  [63:0] delta_weights3_2_d1;
output  [5:0] delta_weights3_3_address0;
output   delta_weights3_3_ce0;
output   delta_weights3_3_we0;
output  [63:0] delta_weights3_3_d0;
output  [5:0] delta_weights3_3_address1;
output   delta_weights3_3_ce1;
output   delta_weights3_3_we1;
output  [63:0] delta_weights3_3_d1;
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
output  [63:0] grp_fu_3116_p_din0;
output  [63:0] grp_fu_3116_p_din1;
input  [63:0] grp_fu_3116_p_dout0;
output   grp_fu_3116_p_ce;
output  [63:0] grp_fu_3120_p_din0;
output  [63:0] grp_fu_3120_p_din1;
input  [63:0] grp_fu_3120_p_dout0;
output   grp_fu_3120_p_ce;
output  [63:0] grp_fu_3124_p_din0;
output  [63:0] grp_fu_3124_p_din1;
input  [63:0] grp_fu_3124_p_dout0;
output   grp_fu_3124_p_ce;
output  [63:0] grp_fu_3136_p_din0;
output  [63:0] grp_fu_3136_p_din1;
input  [63:0] grp_fu_3136_p_dout0;
output   grp_fu_3136_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [32:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] reg_2543;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state24;
reg   [63:0] reg_2553;
reg   [63:0] reg_2563;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state25;
reg   [63:0] reg_2574;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state18;
reg   [63:0] reg_2585;
wire    ap_CS_fsm_state11;
reg   [63:0] reg_2596;
reg   [63:0] reg_2607;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state19;
reg   [63:0] reg_2617;
wire    ap_CS_fsm_state12;
reg   [63:0] reg_2627;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state20;
reg   [63:0] reg_2637;
reg   [63:0] reg_2647;
wire    ap_CS_fsm_state13;
reg   [63:0] reg_2658;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state21;
reg   [63:0] reg_2669;
wire    ap_CS_fsm_state14;
reg   [63:0] reg_2680;
reg   [63:0] reg_2691;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state22;
reg   [63:0] reg_2701;
wire    ap_CS_fsm_state15;
reg   [63:0] reg_2711;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state23;
reg   [63:0] reg_2721;
reg   [63:0] reg_2731;
wire    ap_CS_fsm_state16;
reg   [63:0] reg_2741;
wire    ap_CS_fsm_state26;
wire    ap_CS_fsm_state27;
wire    ap_CS_fsm_state28;
wire    ap_CS_fsm_state29;
wire    ap_CS_fsm_state30;
wire    ap_CS_fsm_state31;
wire    ap_CS_fsm_state32;
reg   [63:0] reg_2747;
reg   [63:0] reg_2753;
reg   [63:0] reg_2759;
reg   [63:0] reg_2765;
reg   [63:0] reg_2771;
reg   [63:0] reg_2777;
reg   [63:0] reg_2783;
reg   [63:0] reg_2788;
reg   [63:0] reg_2793;
wire    ap_CS_fsm_state33;
reg    last_activations_0_ce0_local;
reg   [3:0] last_activations_0_address0_local;
reg    last_activations_1_ce0_local;
reg   [3:0] last_activations_1_address0_local;
reg    last_activations_2_ce0_local;
reg   [3:0] last_activations_2_address0_local;
reg    last_activations_3_ce0_local;
reg   [3:0] last_activations_3_address0_local;
reg    delta_weights3_0_we1_local;
reg   [63:0] delta_weights3_0_d1_local;
reg    delta_weights3_0_ce1_local;
reg   [5:0] delta_weights3_0_address1_local;
reg    delta_weights3_0_we0_local;
reg   [63:0] delta_weights3_0_d0_local;
reg    delta_weights3_0_ce0_local;
reg   [5:0] delta_weights3_0_address0_local;
reg    delta_weights3_1_we1_local;
reg   [63:0] delta_weights3_1_d1_local;
reg    delta_weights3_1_ce1_local;
reg   [5:0] delta_weights3_1_address1_local;
reg    delta_weights3_1_we0_local;
reg   [63:0] delta_weights3_1_d0_local;
reg    delta_weights3_1_ce0_local;
reg   [5:0] delta_weights3_1_address0_local;
reg    delta_weights3_2_we1_local;
reg   [63:0] delta_weights3_2_d1_local;
reg    delta_weights3_2_ce1_local;
reg   [5:0] delta_weights3_2_address1_local;
reg    delta_weights3_2_we0_local;
reg   [63:0] delta_weights3_2_d0_local;
reg    delta_weights3_2_ce0_local;
reg   [5:0] delta_weights3_2_address0_local;
reg    delta_weights3_3_we1_local;
reg   [63:0] delta_weights3_3_d1_local;
reg    delta_weights3_3_ce1_local;
reg   [5:0] delta_weights3_3_address1_local;
reg    delta_weights3_3_we0_local;
reg   [63:0] delta_weights3_3_d0_local;
reg    delta_weights3_3_ce0_local;
reg   [5:0] delta_weights3_3_address0_local;
reg   [63:0] grp_fu_2498_p0;
reg   [63:0] grp_fu_2498_p1;
reg   [63:0] grp_fu_2503_p0;
reg   [63:0] grp_fu_2503_p1;
reg   [63:0] grp_fu_2508_p0;
reg   [63:0] grp_fu_2508_p1;
reg   [63:0] grp_fu_2513_p0;
reg   [63:0] grp_fu_2513_p1;
reg   [63:0] grp_fu_2518_p0;
reg   [63:0] grp_fu_2518_p1;
reg   [63:0] grp_fu_2523_p0;
reg   [63:0] grp_fu_2523_p1;
reg   [63:0] grp_fu_2528_p0;
reg   [63:0] grp_fu_2528_p1;
reg   [63:0] grp_fu_2533_p0;
reg   [63:0] grp_fu_2533_p1;
reg   [63:0] grp_fu_2538_p0;
reg   [32:0] ap_NS_fsm;
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
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 33'd1;
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state2))) begin
        reg_2543 <= last_activations_0_q0;
        reg_2553 <= last_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state2))) begin
        reg_2563 <= last_activations_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10))) begin
        reg_2574 <= last_activations_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state3))) begin
        reg_2585 <= last_activations_0_q0;
        reg_2596 <= last_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state11))) begin
        reg_2607 <= last_activations_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state4))) begin
        reg_2617 <= last_activations_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state12))) begin
        reg_2627 <= last_activations_0_q0;
        reg_2637 <= last_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state5))) begin
        reg_2647 <= last_activations_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state13))) begin
        reg_2658 <= last_activations_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state6))) begin
        reg_2669 <= last_activations_0_q0;
        reg_2680 <= last_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state14))) begin
        reg_2691 <= last_activations_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state7))) begin
        reg_2701 <= last_activations_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state15))) begin
        reg_2711 <= last_activations_0_q0;
        reg_2721 <= last_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_2731 <= last_activations_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state9))) begin
        reg_2741 <= grp_fu_3096_p_dout0;
        reg_2747 <= grp_fu_3100_p_dout0;
        reg_2753 <= grp_fu_3104_p_dout0;
        reg_2759 <= grp_fu_3108_p_dout0;
        reg_2765 <= grp_fu_3112_p_dout0;
        reg_2771 <= grp_fu_3116_p_dout0;
        reg_2777 <= grp_fu_3120_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state9))) begin
        reg_2783 <= grp_fu_3124_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state9))) begin
        reg_2788 <= grp_fu_3136_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state9))) begin
        reg_2793 <= last_activations_3_q0;
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
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if ((1'b1 == ap_CS_fsm_state33)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        delta_weights3_0_address0_local = 64'd47;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        delta_weights3_0_address0_local = 64'd45;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        delta_weights3_0_address0_local = 64'd43;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        delta_weights3_0_address0_local = 64'd41;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        delta_weights3_0_address0_local = 64'd39;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        delta_weights3_0_address0_local = 64'd37;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        delta_weights3_0_address0_local = 64'd35;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        delta_weights3_0_address0_local = 64'd33;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        delta_weights3_0_address0_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        delta_weights3_0_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        delta_weights3_0_address0_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        delta_weights3_0_address0_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_0_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_0_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_0_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_0_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_0_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_0_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_0_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_0_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_0_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_0_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_0_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_0_address0_local = 64'd1;
    end else begin
        delta_weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        delta_weights3_0_address1_local = 64'd46;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        delta_weights3_0_address1_local = 64'd44;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        delta_weights3_0_address1_local = 64'd42;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        delta_weights3_0_address1_local = 64'd40;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        delta_weights3_0_address1_local = 64'd38;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        delta_weights3_0_address1_local = 64'd36;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        delta_weights3_0_address1_local = 64'd34;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        delta_weights3_0_address1_local = 64'd32;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        delta_weights3_0_address1_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        delta_weights3_0_address1_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        delta_weights3_0_address1_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        delta_weights3_0_address1_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_0_address1_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_0_address1_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_0_address1_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_0_address1_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_0_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_0_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_0_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_0_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_0_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_0_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_0_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_0_address1_local = 64'd0;
    end else begin
        delta_weights3_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state17))) begin
        delta_weights3_0_ce0_local = 1'b1;
    end else begin
        delta_weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state17))) begin
        delta_weights3_0_ce1_local = 1'b1;
    end else begin
        delta_weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_0_d0_local = reg_2759;
    end else if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state17))) begin
        delta_weights3_0_d0_local = reg_2765;
    end else begin
        delta_weights3_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_0_d1_local = reg_2788;
    end else if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state17))) begin
        delta_weights3_0_d1_local = reg_2741;
    end else begin
        delta_weights3_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state17))) begin
        delta_weights3_0_we0_local = 1'b1;
    end else begin
        delta_weights3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state17))) begin
        delta_weights3_0_we1_local = 1'b1;
    end else begin
        delta_weights3_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        delta_weights3_1_address0_local = 64'd47;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        delta_weights3_1_address0_local = 64'd45;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        delta_weights3_1_address0_local = 64'd43;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        delta_weights3_1_address0_local = 64'd41;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        delta_weights3_1_address0_local = 64'd39;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        delta_weights3_1_address0_local = 64'd37;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        delta_weights3_1_address0_local = 64'd35;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        delta_weights3_1_address0_local = 64'd33;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        delta_weights3_1_address0_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        delta_weights3_1_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        delta_weights3_1_address0_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        delta_weights3_1_address0_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_1_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_1_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_1_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_1_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_1_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_1_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_1_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_1_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_1_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_1_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_1_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_1_address0_local = 64'd1;
    end else begin
        delta_weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        delta_weights3_1_address1_local = 64'd46;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        delta_weights3_1_address1_local = 64'd44;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        delta_weights3_1_address1_local = 64'd42;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        delta_weights3_1_address1_local = 64'd40;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        delta_weights3_1_address1_local = 64'd38;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        delta_weights3_1_address1_local = 64'd36;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        delta_weights3_1_address1_local = 64'd34;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        delta_weights3_1_address1_local = 64'd32;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        delta_weights3_1_address1_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        delta_weights3_1_address1_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        delta_weights3_1_address1_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        delta_weights3_1_address1_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_1_address1_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_1_address1_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_1_address1_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_1_address1_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_1_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_1_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_1_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_1_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_1_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_1_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_1_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_1_address1_local = 64'd0;
    end else begin
        delta_weights3_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state17))) begin
        delta_weights3_1_ce0_local = 1'b1;
    end else begin
        delta_weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state17))) begin
        delta_weights3_1_ce1_local = 1'b1;
    end else begin
        delta_weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_1_d0_local = reg_2765;
    end else if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state17))) begin
        delta_weights3_1_d0_local = reg_2771;
    end else begin
        delta_weights3_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_1_d1_local = reg_2741;
    end else if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state17))) begin
        delta_weights3_1_d1_local = reg_2747;
    end else begin
        delta_weights3_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state17))) begin
        delta_weights3_1_we0_local = 1'b1;
    end else begin
        delta_weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state17))) begin
        delta_weights3_1_we1_local = 1'b1;
    end else begin
        delta_weights3_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        delta_weights3_2_address0_local = 64'd47;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        delta_weights3_2_address0_local = 64'd45;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        delta_weights3_2_address0_local = 64'd43;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        delta_weights3_2_address0_local = 64'd41;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        delta_weights3_2_address0_local = 64'd39;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        delta_weights3_2_address0_local = 64'd37;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        delta_weights3_2_address0_local = 64'd35;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        delta_weights3_2_address0_local = 64'd33;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        delta_weights3_2_address0_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        delta_weights3_2_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        delta_weights3_2_address0_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        delta_weights3_2_address0_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_2_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_2_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_2_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_2_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_2_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_2_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_2_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_2_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_2_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_2_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_2_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_2_address0_local = 64'd1;
    end else begin
        delta_weights3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        delta_weights3_2_address1_local = 64'd46;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        delta_weights3_2_address1_local = 64'd44;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        delta_weights3_2_address1_local = 64'd42;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        delta_weights3_2_address1_local = 64'd40;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        delta_weights3_2_address1_local = 64'd38;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        delta_weights3_2_address1_local = 64'd36;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        delta_weights3_2_address1_local = 64'd34;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        delta_weights3_2_address1_local = 64'd32;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        delta_weights3_2_address1_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        delta_weights3_2_address1_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        delta_weights3_2_address1_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        delta_weights3_2_address1_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_2_address1_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_2_address1_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_2_address1_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_2_address1_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_2_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_2_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_2_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_2_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_2_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_2_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_2_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_2_address1_local = 64'd0;
    end else begin
        delta_weights3_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state17))) begin
        delta_weights3_2_ce0_local = 1'b1;
    end else begin
        delta_weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state17))) begin
        delta_weights3_2_ce1_local = 1'b1;
    end else begin
        delta_weights3_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_2_d0_local = reg_2771;
    end else if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state17))) begin
        delta_weights3_2_d0_local = reg_2777;
    end else begin
        delta_weights3_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_2_d1_local = reg_2747;
    end else if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state17))) begin
        delta_weights3_2_d1_local = reg_2753;
    end else begin
        delta_weights3_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state17))) begin
        delta_weights3_2_we0_local = 1'b1;
    end else begin
        delta_weights3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state17))) begin
        delta_weights3_2_we1_local = 1'b1;
    end else begin
        delta_weights3_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        delta_weights3_3_address0_local = 64'd47;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        delta_weights3_3_address0_local = 64'd45;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        delta_weights3_3_address0_local = 64'd43;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        delta_weights3_3_address0_local = 64'd41;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        delta_weights3_3_address0_local = 64'd39;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        delta_weights3_3_address0_local = 64'd37;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        delta_weights3_3_address0_local = 64'd35;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        delta_weights3_3_address0_local = 64'd33;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        delta_weights3_3_address0_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        delta_weights3_3_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        delta_weights3_3_address0_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        delta_weights3_3_address0_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_3_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_3_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_3_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_3_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_3_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_3_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_3_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_3_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_3_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_3_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_3_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_3_address0_local = 64'd1;
    end else begin
        delta_weights3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        delta_weights3_3_address1_local = 64'd46;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        delta_weights3_3_address1_local = 64'd44;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        delta_weights3_3_address1_local = 64'd42;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        delta_weights3_3_address1_local = 64'd40;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        delta_weights3_3_address1_local = 64'd38;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        delta_weights3_3_address1_local = 64'd36;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        delta_weights3_3_address1_local = 64'd34;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        delta_weights3_3_address1_local = 64'd32;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        delta_weights3_3_address1_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        delta_weights3_3_address1_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        delta_weights3_3_address1_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        delta_weights3_3_address1_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_3_address1_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_3_address1_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_3_address1_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_3_address1_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_3_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_3_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_3_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_3_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_3_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_3_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_3_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_3_address1_local = 64'd0;
    end else begin
        delta_weights3_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state17))) begin
        delta_weights3_3_ce0_local = 1'b1;
    end else begin
        delta_weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state17))) begin
        delta_weights3_3_ce1_local = 1'b1;
    end else begin
        delta_weights3_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_3_d0_local = reg_2777;
    end else if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state17))) begin
        delta_weights3_3_d0_local = reg_2783;
    end else begin
        delta_weights3_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_3_d1_local = reg_2753;
    end else if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state17))) begin
        delta_weights3_3_d1_local = reg_2759;
    end else begin
        delta_weights3_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state17))) begin
        delta_weights3_3_we0_local = 1'b1;
    end else begin
        delta_weights3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state17))) begin
        delta_weights3_3_we1_local = 1'b1;
    end else begin
        delta_weights3_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2498_p0 = reg_2647;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_2498_p0 = reg_2563;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2498_p0 = reg_2721;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_2498_p0 = reg_2691;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_2498_p0 = reg_2669;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_2498_p0 = reg_2637;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2498_p0 = reg_2607;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_2498_p0 = reg_2585;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2498_p0 = reg_2553;
    end else if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2498_p0 = reg_2731;
    end else if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2498_p0 = reg_2711;
    end else if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2498_p0 = reg_2680;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2498_p0 = reg_2658;
    end else if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2498_p0 = reg_2627;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2498_p0 = reg_2596;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2498_p0 = reg_2574;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2498_p0 = reg_2543;
    end else begin
        grp_fu_2498_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2498_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state17))) begin
        grp_fu_2498_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2498_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2498_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2503_p0 = reg_2721;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_2503_p0 = reg_2701;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_2503_p0 = reg_2669;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_2503_p0 = reg_2637;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2503_p0 = reg_2617;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_2503_p0 = reg_2585;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2503_p0 = reg_2553;
    end else if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2503_p0 = reg_2793;
    end else if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2503_p0 = reg_2711;
    end else if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2503_p0 = reg_2680;
    end else if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state7))) begin
        grp_fu_2503_p0 = reg_2658;
    end else if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2503_p0 = reg_2627;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2503_p0 = reg_2596;
    end else if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2503_p0 = reg_2574;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2503_p0 = reg_2543;
    end else begin
        grp_fu_2503_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2503_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state17))) begin
        grp_fu_2503_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2503_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2503_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2508_p0 = reg_2731;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_2508_p0 = reg_2701;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_2508_p0 = reg_2669;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_2508_p0 = reg_2647;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2508_p0 = reg_2617;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_2508_p0 = reg_2585;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2508_p0 = reg_2563;
    end else if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2508_p0 = reg_2793;
    end else if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2508_p0 = reg_2711;
    end else if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2508_p0 = reg_2691;
    end else if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state7))) begin
        grp_fu_2508_p0 = reg_2658;
    end else if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2508_p0 = reg_2627;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2508_p0 = reg_2607;
    end else if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2508_p0 = reg_2574;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2508_p0 = reg_2543;
    end else begin
        grp_fu_2508_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2508_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state17))) begin
        grp_fu_2508_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2508_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2508_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2513_p0 = reg_2658;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_2513_p0 = reg_2574;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2513_p0 = reg_2731;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_2513_p0 = reg_2701;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_2513_p0 = reg_2680;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_2513_p0 = reg_2647;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2513_p0 = reg_2617;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_2513_p0 = reg_2596;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2513_p0 = reg_2563;
    end else if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2513_p0 = reg_2793;
    end else if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2513_p0 = reg_2721;
    end else if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2513_p0 = reg_2691;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2513_p0 = reg_2669;
    end else if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2513_p0 = reg_2637;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2513_p0 = reg_2607;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2513_p0 = reg_2585;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2513_p0 = reg_2553;
    end else begin
        grp_fu_2513_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2513_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state17))) begin
        grp_fu_2513_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2513_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2513_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2518_p0 = reg_2731;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_2518_p0 = reg_2711;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_2518_p0 = reg_2680;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_2518_p0 = reg_2647;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2518_p0 = reg_2627;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_2518_p0 = reg_2596;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2518_p0 = reg_2563;
    end else if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2518_p0 = reg_2543;
    end else if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2518_p0 = reg_2721;
    end else if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2518_p0 = reg_2691;
    end else if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state7))) begin
        grp_fu_2518_p0 = reg_2669;
    end else if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2518_p0 = reg_2637;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2518_p0 = reg_2607;
    end else if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2518_p0 = reg_2585;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2518_p0 = reg_2553;
    end else begin
        grp_fu_2518_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2518_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state17))) begin
        grp_fu_2518_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2518_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2518_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2523_p0 = reg_2793;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_2523_p0 = reg_2711;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_2523_p0 = reg_2680;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_2523_p0 = reg_2658;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2523_p0 = reg_2627;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_2523_p0 = reg_2596;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2523_p0 = reg_2574;
    end else if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2523_p0 = reg_2543;
    end else if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2523_p0 = reg_2721;
    end else if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2523_p0 = reg_2701;
    end else if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state7))) begin
        grp_fu_2523_p0 = reg_2669;
    end else if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2523_p0 = reg_2637;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2523_p0 = reg_2617;
    end else if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2523_p0 = reg_2585;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2523_p0 = reg_2553;
    end else begin
        grp_fu_2523_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2523_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state17))) begin
        grp_fu_2523_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2523_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2523_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2528_p0 = reg_2669;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_2528_p0 = reg_2585;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2528_p0 = reg_2793;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_2528_p0 = reg_2711;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_2528_p0 = reg_2691;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_2528_p0 = reg_2658;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2528_p0 = reg_2627;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_2528_p0 = reg_2607;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2528_p0 = reg_2574;
    end else if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2528_p0 = reg_2543;
    end else if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2528_p0 = reg_2731;
    end else if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2528_p0 = reg_2701;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_2528_p0 = reg_2680;
    end else if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2528_p0 = reg_2647;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2528_p0 = reg_2617;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_2528_p0 = reg_2596;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2528_p0 = reg_2563;
    end else begin
        grp_fu_2528_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2528_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state17))) begin
        grp_fu_2528_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2528_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2528_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2533_p0 = reg_2680;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_2533_p0 = reg_2596;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2533_p0 = reg_2793;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_2533_p0 = reg_2721;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_2533_p0 = reg_2691;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_2533_p0 = reg_2658;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2533_p0 = reg_2637;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_2533_p0 = reg_2607;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2533_p0 = reg_2574;
    end else if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2533_p0 = reg_2553;
    end else if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2533_p0 = reg_2731;
    end else if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2533_p0 = reg_2701;
    end else if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2533_p0 = reg_2647;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2533_p0 = reg_2617;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2533_p0 = reg_2563;
    end else begin
        grp_fu_2533_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2533_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state17))) begin
        grp_fu_2533_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2533_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2533_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_2538_p0 = reg_2647;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_2538_p0 = reg_2563;
    end else begin
        grp_fu_2538_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        last_activations_0_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        last_activations_0_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        last_activations_0_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        last_activations_0_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        last_activations_0_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        last_activations_0_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        last_activations_0_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        last_activations_0_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        last_activations_0_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        last_activations_0_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        last_activations_0_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        last_activations_0_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        last_activations_0_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        last_activations_0_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        last_activations_0_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        last_activations_0_address0_local = 64'd0;
    end else begin
        last_activations_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        last_activations_0_ce0_local = 1'b1;
    end else begin
        last_activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        last_activations_1_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        last_activations_1_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        last_activations_1_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        last_activations_1_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        last_activations_1_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        last_activations_1_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        last_activations_1_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        last_activations_1_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        last_activations_1_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        last_activations_1_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        last_activations_1_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        last_activations_1_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        last_activations_1_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        last_activations_1_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        last_activations_1_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        last_activations_1_address0_local = 64'd0;
    end else begin
        last_activations_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        last_activations_1_ce0_local = 1'b1;
    end else begin
        last_activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        last_activations_2_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        last_activations_2_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        last_activations_2_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        last_activations_2_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        last_activations_2_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        last_activations_2_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        last_activations_2_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        last_activations_2_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        last_activations_2_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        last_activations_2_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        last_activations_2_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        last_activations_2_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        last_activations_2_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        last_activations_2_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        last_activations_2_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        last_activations_2_address0_local = 64'd0;
    end else begin
        last_activations_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state9) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        last_activations_2_ce0_local = 1'b1;
    end else begin
        last_activations_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        last_activations_3_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        last_activations_3_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        last_activations_3_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        last_activations_3_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        last_activations_3_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        last_activations_3_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        last_activations_3_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        last_activations_3_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        last_activations_3_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        last_activations_3_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        last_activations_3_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        last_activations_3_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        last_activations_3_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        last_activations_3_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        last_activations_3_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        last_activations_3_address0_local = 64'd0;
    end else begin
        last_activations_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state2))) begin
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
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign delta_weights3_0_address0 = delta_weights3_0_address0_local;
assign delta_weights3_0_address1 = delta_weights3_0_address1_local;
assign delta_weights3_0_ce0 = delta_weights3_0_ce0_local;
assign delta_weights3_0_ce1 = delta_weights3_0_ce1_local;
assign delta_weights3_0_d0 = delta_weights3_0_d0_local;
assign delta_weights3_0_d1 = delta_weights3_0_d1_local;
assign delta_weights3_0_we0 = delta_weights3_0_we0_local;
assign delta_weights3_0_we1 = delta_weights3_0_we1_local;
assign delta_weights3_1_address0 = delta_weights3_1_address0_local;
assign delta_weights3_1_address1 = delta_weights3_1_address1_local;
assign delta_weights3_1_ce0 = delta_weights3_1_ce0_local;
assign delta_weights3_1_ce1 = delta_weights3_1_ce1_local;
assign delta_weights3_1_d0 = delta_weights3_1_d0_local;
assign delta_weights3_1_d1 = delta_weights3_1_d1_local;
assign delta_weights3_1_we0 = delta_weights3_1_we0_local;
assign delta_weights3_1_we1 = delta_weights3_1_we1_local;
assign delta_weights3_2_address0 = delta_weights3_2_address0_local;
assign delta_weights3_2_address1 = delta_weights3_2_address1_local;
assign delta_weights3_2_ce0 = delta_weights3_2_ce0_local;
assign delta_weights3_2_ce1 = delta_weights3_2_ce1_local;
assign delta_weights3_2_d0 = delta_weights3_2_d0_local;
assign delta_weights3_2_d1 = delta_weights3_2_d1_local;
assign delta_weights3_2_we0 = delta_weights3_2_we0_local;
assign delta_weights3_2_we1 = delta_weights3_2_we1_local;
assign delta_weights3_3_address0 = delta_weights3_3_address0_local;
assign delta_weights3_3_address1 = delta_weights3_3_address1_local;
assign delta_weights3_3_ce0 = delta_weights3_3_ce0_local;
assign delta_weights3_3_ce1 = delta_weights3_3_ce1_local;
assign delta_weights3_3_d0 = delta_weights3_3_d0_local;
assign delta_weights3_3_d1 = delta_weights3_3_d1_local;
assign delta_weights3_3_we0 = delta_weights3_3_we0_local;
assign delta_weights3_3_we1 = delta_weights3_3_we1_local;
assign grp_fu_3096_p_ce = 1'b1;
assign grp_fu_3096_p_din0 = grp_fu_2498_p0;
assign grp_fu_3096_p_din1 = grp_fu_2498_p1;
assign grp_fu_3100_p_ce = 1'b1;
assign grp_fu_3100_p_din0 = grp_fu_2503_p0;
assign grp_fu_3100_p_din1 = grp_fu_2503_p1;
assign grp_fu_3104_p_ce = 1'b1;
assign grp_fu_3104_p_din0 = grp_fu_2508_p0;
assign grp_fu_3104_p_din1 = grp_fu_2508_p1;
assign grp_fu_3108_p_ce = 1'b1;
assign grp_fu_3108_p_din0 = grp_fu_2513_p0;
assign grp_fu_3108_p_din1 = grp_fu_2513_p1;
assign grp_fu_3112_p_ce = 1'b1;
assign grp_fu_3112_p_din0 = grp_fu_2518_p0;
assign grp_fu_3112_p_din1 = grp_fu_2518_p1;
assign grp_fu_3116_p_ce = 1'b1;
assign grp_fu_3116_p_din0 = grp_fu_2523_p0;
assign grp_fu_3116_p_din1 = grp_fu_2523_p1;
assign grp_fu_3120_p_ce = 1'b1;
assign grp_fu_3120_p_din0 = grp_fu_2528_p0;
assign grp_fu_3120_p_din1 = grp_fu_2528_p1;
assign grp_fu_3124_p_ce = 1'b1;
assign grp_fu_3124_p_din0 = grp_fu_2533_p0;
assign grp_fu_3124_p_din1 = grp_fu_2533_p1;
assign grp_fu_3136_p_ce = 1'b1;
assign grp_fu_3136_p_din0 = grp_fu_2538_p0;
assign grp_fu_3136_p_din1 = output_difference_0_2_val;
assign last_activations_0_address0 = last_activations_0_address0_local;
assign last_activations_0_ce0 = last_activations_0_ce0_local;
assign last_activations_1_address0 = last_activations_1_address0_local;
assign last_activations_1_ce0 = last_activations_1_ce0_local;
assign last_activations_2_address0 = last_activations_2_address0_local;
assign last_activations_2_ce0 = last_activations_2_ce0_local;
assign last_activations_3_address0 = last_activations_3_address0_local;
assign last_activations_3_ce0 = last_activations_3_ce0_local;
endmodule 