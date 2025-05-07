module backprop_get_delta_matrix_weights3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights3_0_address0,delta_weights3_0_ce0,delta_weights3_0_we0,delta_weights3_0_d0,delta_weights3_1_address0,delta_weights3_1_ce0,delta_weights3_1_we0,delta_weights3_1_d0,delta_weights3_2_address0,delta_weights3_2_ce0,delta_weights3_2_we0,delta_weights3_2_d0,delta_weights3_3_address0,delta_weights3_3_ce0,delta_weights3_3_we0,delta_weights3_3_d0,delta_weights3_4_address0,delta_weights3_4_ce0,delta_weights3_4_we0,delta_weights3_4_d0,delta_weights3_5_address0,delta_weights3_5_ce0,delta_weights3_5_we0,delta_weights3_5_d0,delta_weights3_6_address0,delta_weights3_6_ce0,delta_weights3_6_we0,delta_weights3_6_d0,delta_weights3_7_address0,delta_weights3_7_ce0,delta_weights3_7_we0,delta_weights3_7_d0,output_difference_0_0_val,output_difference_0_1_val,output_difference_0_2_val,last_activations_0_address0,last_activations_0_ce0,last_activations_0_q0,last_activations_1_address0,last_activations_1_ce0,last_activations_1_q0,last_activations_2_address0,last_activations_2_ce0,last_activations_2_q0,last_activations_3_address0,last_activations_3_ce0,last_activations_3_q0,last_activations_4_address0,last_activations_4_ce0,last_activations_4_q0,last_activations_5_address0,last_activations_5_ce0,last_activations_5_q0,last_activations_6_address0,last_activations_6_ce0,last_activations_6_q0,last_activations_7_address0,last_activations_7_ce0,last_activations_7_q0,grp_fu_3620_p_din0,grp_fu_3620_p_din1,grp_fu_3620_p_dout0,grp_fu_3620_p_ce,grp_fu_3624_p_din0,grp_fu_3624_p_din1,grp_fu_3624_p_dout0,grp_fu_3624_p_ce,grp_fu_3628_p_din0,grp_fu_3628_p_din1,grp_fu_3628_p_dout0,grp_fu_3628_p_ce,grp_fu_3632_p_din0,grp_fu_3632_p_din1,grp_fu_3632_p_dout0,grp_fu_3632_p_ce,grp_fu_3636_p_din0,grp_fu_3636_p_din1,grp_fu_3636_p_dout0,grp_fu_3636_p_ce,grp_fu_3640_p_din0,grp_fu_3640_p_din1,grp_fu_3640_p_dout0,grp_fu_3640_p_ce,grp_fu_3644_p_din0,grp_fu_3644_p_din1,grp_fu_3644_p_dout0,grp_fu_3644_p_ce,grp_fu_3648_p_din0,grp_fu_3648_p_din1,grp_fu_3648_p_dout0,grp_fu_3648_p_ce); 
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
output  [4:0] delta_weights3_0_address0;
output   delta_weights3_0_ce0;
output   delta_weights3_0_we0;
output  [63:0] delta_weights3_0_d0;
output  [4:0] delta_weights3_1_address0;
output   delta_weights3_1_ce0;
output   delta_weights3_1_we0;
output  [63:0] delta_weights3_1_d0;
output  [4:0] delta_weights3_2_address0;
output   delta_weights3_2_ce0;
output   delta_weights3_2_we0;
output  [63:0] delta_weights3_2_d0;
output  [4:0] delta_weights3_3_address0;
output   delta_weights3_3_ce0;
output   delta_weights3_3_we0;
output  [63:0] delta_weights3_3_d0;
output  [4:0] delta_weights3_4_address0;
output   delta_weights3_4_ce0;
output   delta_weights3_4_we0;
output  [63:0] delta_weights3_4_d0;
output  [4:0] delta_weights3_5_address0;
output   delta_weights3_5_ce0;
output   delta_weights3_5_we0;
output  [63:0] delta_weights3_5_d0;
output  [4:0] delta_weights3_6_address0;
output   delta_weights3_6_ce0;
output   delta_weights3_6_we0;
output  [63:0] delta_weights3_6_d0;
output  [4:0] delta_weights3_7_address0;
output   delta_weights3_7_ce0;
output   delta_weights3_7_we0;
output  [63:0] delta_weights3_7_d0;
input  [63:0] output_difference_0_0_val;
input  [63:0] output_difference_0_1_val;
input  [63:0] output_difference_0_2_val;
output  [2:0] last_activations_0_address0;
output   last_activations_0_ce0;
input  [63:0] last_activations_0_q0;
output  [2:0] last_activations_1_address0;
output   last_activations_1_ce0;
input  [63:0] last_activations_1_q0;
output  [2:0] last_activations_2_address0;
output   last_activations_2_ce0;
input  [63:0] last_activations_2_q0;
output  [2:0] last_activations_3_address0;
output   last_activations_3_ce0;
input  [63:0] last_activations_3_q0;
output  [2:0] last_activations_4_address0;
output   last_activations_4_ce0;
input  [63:0] last_activations_4_q0;
output  [2:0] last_activations_5_address0;
output   last_activations_5_ce0;
input  [63:0] last_activations_5_q0;
output  [2:0] last_activations_6_address0;
output   last_activations_6_ce0;
input  [63:0] last_activations_6_q0;
output  [2:0] last_activations_7_address0;
output   last_activations_7_ce0;
input  [63:0] last_activations_7_q0;
output  [63:0] grp_fu_3620_p_din0;
output  [63:0] grp_fu_3620_p_din1;
input  [63:0] grp_fu_3620_p_dout0;
output   grp_fu_3620_p_ce;
output  [63:0] grp_fu_3624_p_din0;
output  [63:0] grp_fu_3624_p_din1;
input  [63:0] grp_fu_3624_p_dout0;
output   grp_fu_3624_p_ce;
output  [63:0] grp_fu_3628_p_din0;
output  [63:0] grp_fu_3628_p_din1;
input  [63:0] grp_fu_3628_p_dout0;
output   grp_fu_3628_p_ce;
output  [63:0] grp_fu_3632_p_din0;
output  [63:0] grp_fu_3632_p_din1;
input  [63:0] grp_fu_3632_p_dout0;
output   grp_fu_3632_p_ce;
output  [63:0] grp_fu_3636_p_din0;
output  [63:0] grp_fu_3636_p_din1;
input  [63:0] grp_fu_3636_p_dout0;
output   grp_fu_3636_p_ce;
output  [63:0] grp_fu_3640_p_din0;
output  [63:0] grp_fu_3640_p_din1;
input  [63:0] grp_fu_3640_p_dout0;
output   grp_fu_3640_p_ce;
output  [63:0] grp_fu_3644_p_din0;
output  [63:0] grp_fu_3644_p_din1;
input  [63:0] grp_fu_3644_p_dout0;
output   grp_fu_3644_p_ce;
output  [63:0] grp_fu_3648_p_din0;
output  [63:0] grp_fu_3648_p_din1;
input  [63:0] grp_fu_3648_p_dout0;
output   grp_fu_3648_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [32:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] reg_2530;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state20;
reg   [63:0] reg_2537;
reg   [63:0] reg_2544;
reg   [63:0] reg_2551;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state21;
reg   [63:0] reg_2558;
reg   [63:0] reg_2565;
reg   [63:0] reg_2572;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state22;
reg   [63:0] reg_2579;
reg   [63:0] reg_2586;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state23;
reg   [63:0] reg_2593;
reg   [63:0] reg_2600;
reg   [63:0] reg_2607;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state24;
reg   [63:0] reg_2614;
reg   [63:0] reg_2621;
reg   [63:0] reg_2628;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state25;
reg   [63:0] reg_2635;
reg   [63:0] reg_2642;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state17;
reg   [63:0] reg_2649;
reg   [63:0] reg_2656;
reg   [63:0] reg_2663;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state19;
wire    ap_CS_fsm_state26;
wire    ap_CS_fsm_state27;
wire    ap_CS_fsm_state28;
wire    ap_CS_fsm_state29;
wire    ap_CS_fsm_state30;
wire    ap_CS_fsm_state31;
wire    ap_CS_fsm_state32;
reg   [63:0] reg_2668;
reg   [63:0] reg_2673;
reg   [63:0] reg_2678;
reg   [63:0] reg_2683;
reg   [63:0] reg_2688;
reg   [63:0] reg_2693;
reg   [63:0] reg_2698;
reg   [63:0] reg_2703;
reg   [63:0] reg_2710;
reg   [63:0] reg_2717;
reg   [63:0] reg_2724;
reg   [63:0] reg_2731;
wire    ap_CS_fsm_state33;
reg    last_activations_0_ce0_local;
reg   [2:0] last_activations_0_address0_local;
reg    last_activations_1_ce0_local;
reg   [2:0] last_activations_1_address0_local;
reg    last_activations_2_ce0_local;
reg   [2:0] last_activations_2_address0_local;
reg    last_activations_3_ce0_local;
reg   [2:0] last_activations_3_address0_local;
reg    last_activations_4_ce0_local;
reg   [2:0] last_activations_4_address0_local;
reg    last_activations_5_ce0_local;
reg   [2:0] last_activations_5_address0_local;
reg    last_activations_6_ce0_local;
reg   [2:0] last_activations_6_address0_local;
reg    last_activations_7_ce0_local;
reg   [2:0] last_activations_7_address0_local;
reg    delta_weights3_0_we0_local;
reg    delta_weights3_0_ce0_local;
reg   [4:0] delta_weights3_0_address0_local;
reg    delta_weights3_1_we0_local;
reg    delta_weights3_1_ce0_local;
reg   [4:0] delta_weights3_1_address0_local;
reg    delta_weights3_2_we0_local;
reg    delta_weights3_2_ce0_local;
reg   [4:0] delta_weights3_2_address0_local;
reg    delta_weights3_3_we0_local;
reg    delta_weights3_3_ce0_local;
reg   [4:0] delta_weights3_3_address0_local;
reg    delta_weights3_4_we0_local;
reg    delta_weights3_4_ce0_local;
reg   [4:0] delta_weights3_4_address0_local;
reg    delta_weights3_5_we0_local;
reg    delta_weights3_5_ce0_local;
reg   [4:0] delta_weights3_5_address0_local;
reg    delta_weights3_6_we0_local;
reg    delta_weights3_6_ce0_local;
reg   [4:0] delta_weights3_6_address0_local;
reg    delta_weights3_7_we0_local;
reg    delta_weights3_7_ce0_local;
reg   [4:0] delta_weights3_7_address0_local;
reg   [63:0] grp_fu_2490_p0;
reg   [63:0] grp_fu_2490_p1;
reg   [63:0] grp_fu_2495_p0;
reg   [63:0] grp_fu_2495_p1;
reg   [63:0] grp_fu_2500_p0;
reg   [63:0] grp_fu_2500_p1;
reg   [63:0] grp_fu_2505_p0;
reg   [63:0] grp_fu_2505_p1;
reg   [63:0] grp_fu_2510_p0;
reg   [63:0] grp_fu_2510_p1;
reg   [63:0] grp_fu_2515_p0;
reg   [63:0] grp_fu_2515_p1;
reg   [63:0] grp_fu_2520_p0;
reg   [63:0] grp_fu_2520_p1;
reg   [63:0] grp_fu_2525_p0;
reg   [63:0] grp_fu_2525_p1;
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
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state2))) begin
        reg_2530 <= last_activations_0_q0;
        reg_2537 <= last_activations_1_q0;
        reg_2544 <= last_activations_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        reg_2551 <= last_activations_3_q0;
        reg_2558 <= last_activations_4_q0;
        reg_2565 <= last_activations_5_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        reg_2572 <= last_activations_6_q0;
        reg_2579 <= last_activations_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5))) begin
        reg_2586 <= last_activations_0_q0;
        reg_2593 <= last_activations_1_q0;
        reg_2600 <= last_activations_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6))) begin
        reg_2607 <= last_activations_3_q0;
        reg_2614 <= last_activations_4_q0;
        reg_2621 <= last_activations_5_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7))) begin
        reg_2628 <= last_activations_6_q0;
        reg_2635 <= last_activations_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_2642 <= last_activations_0_q0;
        reg_2649 <= last_activations_1_q0;
        reg_2656 <= last_activations_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        reg_2663 <= grp_fu_3620_p_dout0;
        reg_2668 <= grp_fu_3624_p_dout0;
        reg_2673 <= grp_fu_3628_p_dout0;
        reg_2678 <= grp_fu_3632_p_dout0;
        reg_2683 <= grp_fu_3636_p_dout0;
        reg_2688 <= grp_fu_3640_p_dout0;
        reg_2693 <= grp_fu_3644_p_dout0;
        reg_2698 <= grp_fu_3648_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state9))) begin
        reg_2703 <= last_activations_3_q0;
        reg_2710 <= last_activations_4_q0;
        reg_2717 <= last_activations_5_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state10))) begin
        reg_2724 <= last_activations_6_q0;
        reg_2731 <= last_activations_7_q0;
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
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_0_ce0_local = 1'b1;
    end else begin
        delta_weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_0_we0_local = 1'b1;
    end else begin
        delta_weights3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
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
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_1_ce0_local = 1'b1;
    end else begin
        delta_weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_1_we0_local = 1'b1;
    end else begin
        delta_weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
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
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_2_ce0_local = 1'b1;
    end else begin
        delta_weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_2_we0_local = 1'b1;
    end else begin
        delta_weights3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
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
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_3_ce0_local = 1'b1;
    end else begin
        delta_weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_3_we0_local = 1'b1;
    end else begin
        delta_weights3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        delta_weights3_4_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        delta_weights3_4_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        delta_weights3_4_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        delta_weights3_4_address0_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        delta_weights3_4_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        delta_weights3_4_address0_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        delta_weights3_4_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        delta_weights3_4_address0_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        delta_weights3_4_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        delta_weights3_4_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        delta_weights3_4_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        delta_weights3_4_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_4_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_4_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_4_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_4_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_4_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_4_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_4_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_4_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_4_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_4_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_4_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_4_address0_local = 64'd0;
    end else begin
        delta_weights3_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_4_ce0_local = 1'b1;
    end else begin
        delta_weights3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_4_we0_local = 1'b1;
    end else begin
        delta_weights3_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        delta_weights3_5_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        delta_weights3_5_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        delta_weights3_5_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        delta_weights3_5_address0_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        delta_weights3_5_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        delta_weights3_5_address0_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        delta_weights3_5_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        delta_weights3_5_address0_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        delta_weights3_5_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        delta_weights3_5_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        delta_weights3_5_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        delta_weights3_5_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_5_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_5_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_5_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_5_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_5_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_5_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_5_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_5_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_5_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_5_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_5_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_5_address0_local = 64'd0;
    end else begin
        delta_weights3_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_5_ce0_local = 1'b1;
    end else begin
        delta_weights3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_5_we0_local = 1'b1;
    end else begin
        delta_weights3_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        delta_weights3_6_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        delta_weights3_6_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        delta_weights3_6_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        delta_weights3_6_address0_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        delta_weights3_6_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        delta_weights3_6_address0_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        delta_weights3_6_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        delta_weights3_6_address0_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        delta_weights3_6_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        delta_weights3_6_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        delta_weights3_6_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        delta_weights3_6_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_6_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_6_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_6_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_6_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_6_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_6_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_6_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_6_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_6_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_6_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_6_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_6_address0_local = 64'd0;
    end else begin
        delta_weights3_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_6_ce0_local = 1'b1;
    end else begin
        delta_weights3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_6_we0_local = 1'b1;
    end else begin
        delta_weights3_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        delta_weights3_7_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        delta_weights3_7_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        delta_weights3_7_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        delta_weights3_7_address0_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        delta_weights3_7_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        delta_weights3_7_address0_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        delta_weights3_7_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        delta_weights3_7_address0_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        delta_weights3_7_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        delta_weights3_7_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        delta_weights3_7_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        delta_weights3_7_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        delta_weights3_7_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        delta_weights3_7_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        delta_weights3_7_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        delta_weights3_7_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        delta_weights3_7_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        delta_weights3_7_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        delta_weights3_7_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        delta_weights3_7_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        delta_weights3_7_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        delta_weights3_7_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        delta_weights3_7_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        delta_weights3_7_address0_local = 64'd0;
    end else begin
        delta_weights3_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_7_ce0_local = 1'b1;
    end else begin
        delta_weights3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        delta_weights3_7_we0_local = 1'b1;
    end else begin
        delta_weights3_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2490_p0 = reg_2717;
    end else if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2490_p0 = reg_2656;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2490_p0 = reg_2642;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2490_p0 = reg_2621;
    end else if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7))) begin
        grp_fu_2490_p0 = reg_2600;
    end else if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2490_p0 = reg_2586;
    end else if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2490_p0 = reg_2565;
    end else if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2490_p0 = reg_2544;
    end else if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2490_p0 = reg_2530;
    end else begin
        grp_fu_2490_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2490_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2490_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2490_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2490_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2495_p0 = reg_2717;
    end else if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2495_p0 = reg_2703;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2495_p0 = reg_2642;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2495_p0 = reg_2621;
    end else if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7))) begin
        grp_fu_2495_p0 = reg_2607;
    end else if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2495_p0 = reg_2586;
    end else if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2495_p0 = reg_2565;
    end else if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2495_p0 = reg_2551;
    end else if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2495_p0 = reg_2530;
    end else begin
        grp_fu_2495_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2495_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2495_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2495_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2495_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2500_p0 = reg_2724;
    end else if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2500_p0 = reg_2703;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2500_p0 = reg_2642;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2500_p0 = reg_2628;
    end else if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7))) begin
        grp_fu_2500_p0 = reg_2607;
    end else if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2500_p0 = reg_2586;
    end else if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2500_p0 = reg_2572;
    end else if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2500_p0 = reg_2551;
    end else if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2500_p0 = reg_2530;
    end else begin
        grp_fu_2500_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2500_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2500_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2500_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2500_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2505_p0 = reg_2724;
    end else if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2505_p0 = reg_2703;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2505_p0 = reg_2649;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2505_p0 = reg_2628;
    end else if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7))) begin
        grp_fu_2505_p0 = reg_2607;
    end else if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2505_p0 = reg_2593;
    end else if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2505_p0 = reg_2572;
    end else if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2505_p0 = reg_2551;
    end else if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2505_p0 = reg_2537;
    end else begin
        grp_fu_2505_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2505_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2505_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2505_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2505_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2510_p0 = reg_2724;
    end else if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2510_p0 = reg_2710;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2510_p0 = reg_2649;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2510_p0 = reg_2628;
    end else if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7))) begin
        grp_fu_2510_p0 = reg_2614;
    end else if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2510_p0 = reg_2593;
    end else if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2510_p0 = reg_2572;
    end else if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2510_p0 = reg_2558;
    end else if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2510_p0 = reg_2537;
    end else begin
        grp_fu_2510_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2510_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2510_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2510_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2510_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2515_p0 = reg_2731;
    end else if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2515_p0 = reg_2710;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2515_p0 = reg_2649;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2515_p0 = reg_2635;
    end else if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7))) begin
        grp_fu_2515_p0 = reg_2614;
    end else if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2515_p0 = reg_2593;
    end else if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2515_p0 = reg_2579;
    end else if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2515_p0 = reg_2558;
    end else if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2515_p0 = reg_2537;
    end else begin
        grp_fu_2515_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2515_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2515_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2515_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_2515_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2520_p0 = reg_2731;
    end else if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2520_p0 = reg_2710;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2520_p0 = reg_2656;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2520_p0 = reg_2635;
    end else if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7))) begin
        grp_fu_2520_p0 = reg_2614;
    end else if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2520_p0 = reg_2600;
    end else if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2520_p0 = reg_2579;
    end else if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2520_p0 = reg_2558;
    end else if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2520_p0 = reg_2544;
    end else begin
        grp_fu_2520_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2520_p1 = output_difference_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2520_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2520_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_2520_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2525_p0 = reg_2731;
    end else if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_2525_p0 = reg_2717;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_2525_p0 = reg_2656;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_2525_p0 = reg_2635;
    end else if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7))) begin
        grp_fu_2525_p0 = reg_2621;
    end else if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_2525_p0 = reg_2600;
    end else if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5))) begin
        grp_fu_2525_p0 = reg_2579;
    end else if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2525_p0 = reg_2565;
    end else if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2525_p0 = reg_2544;
    end else begin
        grp_fu_2525_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_2525_p1 = output_difference_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_2525_p1 = output_difference_0_0_val;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_2525_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_2525_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
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
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        last_activations_0_ce0_local = 1'b1;
    end else begin
        last_activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
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
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        last_activations_1_ce0_local = 1'b1;
    end else begin
        last_activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        last_activations_2_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        last_activations_2_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        last_activations_2_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        last_activations_2_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        last_activations_2_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        last_activations_2_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        last_activations_2_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        last_activations_2_address0_local = 64'd0;
    end else begin
        last_activations_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        last_activations_2_ce0_local = 1'b1;
    end else begin
        last_activations_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        last_activations_3_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        last_activations_3_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        last_activations_3_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        last_activations_3_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        last_activations_3_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        last_activations_3_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        last_activations_3_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        last_activations_3_address0_local = 64'd0;
    end else begin
        last_activations_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state2))) begin
        last_activations_3_ce0_local = 1'b1;
    end else begin
        last_activations_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        last_activations_4_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        last_activations_4_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        last_activations_4_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        last_activations_4_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        last_activations_4_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        last_activations_4_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        last_activations_4_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        last_activations_4_address0_local = 64'd0;
    end else begin
        last_activations_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state2))) begin
        last_activations_4_ce0_local = 1'b1;
    end else begin
        last_activations_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        last_activations_5_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        last_activations_5_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        last_activations_5_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        last_activations_5_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        last_activations_5_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        last_activations_5_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        last_activations_5_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        last_activations_5_address0_local = 64'd0;
    end else begin
        last_activations_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state2))) begin
        last_activations_5_ce0_local = 1'b1;
    end else begin
        last_activations_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        last_activations_6_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        last_activations_6_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        last_activations_6_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        last_activations_6_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        last_activations_6_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        last_activations_6_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        last_activations_6_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        last_activations_6_address0_local = 64'd0;
    end else begin
        last_activations_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        last_activations_6_ce0_local = 1'b1;
    end else begin
        last_activations_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        last_activations_7_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        last_activations_7_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        last_activations_7_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        last_activations_7_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        last_activations_7_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        last_activations_7_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        last_activations_7_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        last_activations_7_address0_local = 64'd0;
    end else begin
        last_activations_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3))) begin
        last_activations_7_ce0_local = 1'b1;
    end else begin
        last_activations_7_ce0_local = 1'b0;
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
assign delta_weights3_0_ce0 = delta_weights3_0_ce0_local;
assign delta_weights3_0_d0 = reg_2663;
assign delta_weights3_0_we0 = delta_weights3_0_we0_local;
assign delta_weights3_1_address0 = delta_weights3_1_address0_local;
assign delta_weights3_1_ce0 = delta_weights3_1_ce0_local;
assign delta_weights3_1_d0 = reg_2668;
assign delta_weights3_1_we0 = delta_weights3_1_we0_local;
assign delta_weights3_2_address0 = delta_weights3_2_address0_local;
assign delta_weights3_2_ce0 = delta_weights3_2_ce0_local;
assign delta_weights3_2_d0 = reg_2673;
assign delta_weights3_2_we0 = delta_weights3_2_we0_local;
assign delta_weights3_3_address0 = delta_weights3_3_address0_local;
assign delta_weights3_3_ce0 = delta_weights3_3_ce0_local;
assign delta_weights3_3_d0 = reg_2678;
assign delta_weights3_3_we0 = delta_weights3_3_we0_local;
assign delta_weights3_4_address0 = delta_weights3_4_address0_local;
assign delta_weights3_4_ce0 = delta_weights3_4_ce0_local;
assign delta_weights3_4_d0 = reg_2683;
assign delta_weights3_4_we0 = delta_weights3_4_we0_local;
assign delta_weights3_5_address0 = delta_weights3_5_address0_local;
assign delta_weights3_5_ce0 = delta_weights3_5_ce0_local;
assign delta_weights3_5_d0 = reg_2688;
assign delta_weights3_5_we0 = delta_weights3_5_we0_local;
assign delta_weights3_6_address0 = delta_weights3_6_address0_local;
assign delta_weights3_6_ce0 = delta_weights3_6_ce0_local;
assign delta_weights3_6_d0 = reg_2693;
assign delta_weights3_6_we0 = delta_weights3_6_we0_local;
assign delta_weights3_7_address0 = delta_weights3_7_address0_local;
assign delta_weights3_7_ce0 = delta_weights3_7_ce0_local;
assign delta_weights3_7_d0 = reg_2698;
assign delta_weights3_7_we0 = delta_weights3_7_we0_local;
assign grp_fu_3620_p_ce = 1'b1;
assign grp_fu_3620_p_din0 = grp_fu_2490_p0;
assign grp_fu_3620_p_din1 = grp_fu_2490_p1;
assign grp_fu_3624_p_ce = 1'b1;
assign grp_fu_3624_p_din0 = grp_fu_2495_p0;
assign grp_fu_3624_p_din1 = grp_fu_2495_p1;
assign grp_fu_3628_p_ce = 1'b1;
assign grp_fu_3628_p_din0 = grp_fu_2500_p0;
assign grp_fu_3628_p_din1 = grp_fu_2500_p1;
assign grp_fu_3632_p_ce = 1'b1;
assign grp_fu_3632_p_din0 = grp_fu_2505_p0;
assign grp_fu_3632_p_din1 = grp_fu_2505_p1;
assign grp_fu_3636_p_ce = 1'b1;
assign grp_fu_3636_p_din0 = grp_fu_2510_p0;
assign grp_fu_3636_p_din1 = grp_fu_2510_p1;
assign grp_fu_3640_p_ce = 1'b1;
assign grp_fu_3640_p_din0 = grp_fu_2515_p0;
assign grp_fu_3640_p_din1 = grp_fu_2515_p1;
assign grp_fu_3644_p_ce = 1'b1;
assign grp_fu_3644_p_din0 = grp_fu_2520_p0;
assign grp_fu_3644_p_din1 = grp_fu_2520_p1;
assign grp_fu_3648_p_ce = 1'b1;
assign grp_fu_3648_p_din0 = grp_fu_2525_p0;
assign grp_fu_3648_p_din1 = grp_fu_2525_p1;
assign last_activations_0_address0 = last_activations_0_address0_local;
assign last_activations_0_ce0 = last_activations_0_ce0_local;
assign last_activations_1_address0 = last_activations_1_address0_local;
assign last_activations_1_ce0 = last_activations_1_ce0_local;
assign last_activations_2_address0 = last_activations_2_address0_local;
assign last_activations_2_ce0 = last_activations_2_ce0_local;
assign last_activations_3_address0 = last_activations_3_address0_local;
assign last_activations_3_ce0 = last_activations_3_ce0_local;
assign last_activations_4_address0 = last_activations_4_address0_local;
assign last_activations_4_ce0 = last_activations_4_ce0_local;
assign last_activations_5_address0 = last_activations_5_address0_local;
assign last_activations_5_ce0 = last_activations_5_ce0_local;
assign last_activations_6_address0 = last_activations_6_address0_local;
assign last_activations_6_ce0 = last_activations_6_ce0_local;
assign last_activations_7_address0 = last_activations_7_address0_local;
assign last_activations_7_ce0 = last_activations_7_ce0_local;
endmodule 