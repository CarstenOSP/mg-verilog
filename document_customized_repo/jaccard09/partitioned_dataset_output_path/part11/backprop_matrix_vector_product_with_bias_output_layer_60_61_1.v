
module backprop_matrix_vector_product_with_bias_output_layer_60_61_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,biases3_address0,biases3_ce0,biases3_q0,weights3_0_address0,weights3_0_ce0,weights3_0_q0,weights3_0_address1,weights3_0_ce1,weights3_0_q1,weights3_1_address0,weights3_1_ce0,weights3_1_q0,weights3_1_address1,weights3_1_ce1,weights3_1_q1,activations_0_i,activations_0_o,activations_0_o_ap_vld,activations_1_i,activations_1_o,activations_1_o_ap_vld,activations_2_i,activations_2_o,activations_2_o_ap_vld,input_activations_0_address0,input_activations_0_ce0,input_activations_0_q0,input_activations_0_address1,input_activations_0_ce1,input_activations_0_q1,input_activations_1_address0,input_activations_1_ce0,input_activations_1_q0,input_activations_1_address1,input_activations_1_ce1,input_activations_1_q1,grp_fu_2832_p_din0,grp_fu_2832_p_din1,grp_fu_2832_p_opcode,grp_fu_2832_p_dout0,grp_fu_2832_p_ce,grp_fu_2848_p_din0,grp_fu_2848_p_din1,grp_fu_2848_p_dout0,grp_fu_2848_p_ce);  
parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [1:0] biases3_address0;
output   biases3_ce0;
input  [63:0] biases3_q0;
output  [6:0] weights3_0_address0;
output   weights3_0_ce0;
input  [63:0] weights3_0_q0;
output  [6:0] weights3_0_address1;
output   weights3_0_ce1;
input  [63:0] weights3_0_q1;
output  [6:0] weights3_1_address0;
output   weights3_1_ce0;
input  [63:0] weights3_1_q0;
output  [6:0] weights3_1_address1;
output   weights3_1_ce1;
input  [63:0] weights3_1_q1;
input  [63:0] activations_0_i;
output  [63:0] activations_0_o;
output   activations_0_o_ap_vld;
input  [63:0] activations_1_i;
output  [63:0] activations_1_o;
output   activations_1_o_ap_vld;
input  [63:0] activations_2_i;
output  [63:0] activations_2_o;
output   activations_2_o_ap_vld;
output  [4:0] input_activations_0_address0;
output   input_activations_0_ce0;
input  [63:0] input_activations_0_q0;
output  [4:0] input_activations_0_address1;
output   input_activations_0_ce1;
input  [63:0] input_activations_0_q1;
output  [4:0] input_activations_1_address0;
output   input_activations_1_ce0;
input  [63:0] input_activations_1_q0;
output  [4:0] input_activations_1_address1;
output   input_activations_1_ce1;
input  [63:0] input_activations_1_q1;
output  [63:0] grp_fu_2832_p_din0;
output  [63:0] grp_fu_2832_p_din1;
output  [0:0] grp_fu_2832_p_opcode;
input  [63:0] grp_fu_2832_p_dout0;
output   grp_fu_2832_p_ce;
output  [63:0] grp_fu_2848_p_din0;
output  [63:0] grp_fu_2848_p_din1;
input  [63:0] grp_fu_2848_p_dout0;
output   grp_fu_2848_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[63:0] activations_0_o;
reg activations_0_o_ap_vld;
reg[63:0] activations_1_o;
reg activations_1_o_ap_vld;
reg[63:0] activations_2_o;
reg activations_2_o_ap_vld;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_ap_start;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_ap_done;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_ap_idle;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_ap_ready;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_activations_0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_activations_0_ap_vld;
wire   [6:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_weights3_0_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_weights3_0_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_weights3_0_address1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_weights3_0_ce1;
wire   [4:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_input_activations_0_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_input_activations_0_ce0;
wire   [4:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_input_activations_0_address1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_input_activations_0_ce1;
wire   [6:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_weights3_1_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_weights3_1_ce0;
wire   [6:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_weights3_1_address1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_weights3_1_ce1;
wire   [4:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_input_activations_1_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_input_activations_1_ce0;
wire   [4:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_input_activations_1_address1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_input_activations_1_ce1;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_activations_1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_activations_1_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_activations_2;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_activations_2_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_grp_fu_60_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_grp_fu_60_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_grp_fu_60_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_grp_fu_60_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_grp_fu_64_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_grp_fu_64_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_grp_fu_64_p_ce;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_ap_start;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_ap_done;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_ap_idle;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_ap_ready;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_activations_0_o;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_activations_0_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_activations_2_o;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_activations_2_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_activations_1_o;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_activations_1_o_ap_vld;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_biases3_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_biases3_ce0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_grp_fu_60_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_grp_fu_60_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_grp_fu_60_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_grp_fu_60_p_ce;
reg    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_ap_start_reg;
wire    ap_CS_fsm_state2;
reg    grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg   [63:0] grp_fu_60_p0;
reg   [63:0] grp_fu_60_p1;
reg   [1:0] grp_fu_60_opcode;
reg    grp_fu_60_ce;
reg    grp_fu_64_ce;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_ap_start_reg = 1'b0;
#0 grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_ap_start_reg = 1'b0;
end
backprop_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_ap_start),.ap_done(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_ap_ready),.activations_0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_activations_0),.activations_0_ap_vld(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_activations_0_ap_vld),.weights3_0_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_weights3_0_address0),.weights3_0_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_weights3_0_ce0),.weights3_0_q0(weights3_0_q0),.weights3_0_address1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_weights3_0_address1),.weights3_0_ce1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_weights3_0_ce1),.weights3_0_q1(weights3_0_q1),.input_activations_0_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_input_activations_0_address0),.input_activations_0_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_input_activations_0_ce0),.input_activations_0_q0(input_activations_0_q0),.input_activations_0_address1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_input_activations_0_address1),.input_activations_0_ce1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_input_activations_0_ce1),.input_activations_0_q1(input_activations_0_q1),.weights3_1_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_weights3_1_address0),.weights3_1_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_weights3_1_ce0),.weights3_1_q0(weights3_1_q0),.weights3_1_address1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_weights3_1_address1),.weights3_1_ce1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_weights3_1_ce1),.weights3_1_q1(weights3_1_q1),.input_activations_1_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_input_activations_1_address0),.input_activations_1_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_input_activations_1_ce0),.input_activations_1_q0(input_activations_1_q0),.input_activations_1_address1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_input_activations_1_address1),.input_activations_1_ce1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_input_activations_1_ce1),.input_activations_1_q1(input_activations_1_q1),.activations_1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_activations_1),.activations_1_ap_vld(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_activations_1_ap_vld),.activations_2(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_activations_2),.activations_2_ap_vld(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_activations_2_ap_vld),.grp_fu_60_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_grp_fu_60_p_din0),.grp_fu_60_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_grp_fu_60_p_din1),.grp_fu_60_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_grp_fu_60_p_opcode),.grp_fu_60_p_dout0(grp_fu_2832_p_dout0),.grp_fu_60_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_grp_fu_60_p_ce),.grp_fu_64_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_grp_fu_64_p_din0),.grp_fu_64_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_grp_fu_64_p_din1),.grp_fu_64_p_dout0(grp_fu_2848_p_dout0),.grp_fu_64_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_grp_fu_64_p_ce));
backprop_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1 grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_ap_start),.ap_done(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_ap_ready),.activations_0_i(activations_0_i),.activations_0_o(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_activations_0_o),.activations_0_o_ap_vld(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_activations_0_o_ap_vld),.activations_2_i(activations_2_i),.activations_2_o(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_activations_2_o),.activations_2_o_ap_vld(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_activations_2_o_ap_vld),.activations_1_i(activations_1_i),.activations_1_o(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_activations_1_o),.activations_1_o_ap_vld(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_activations_1_o_ap_vld),.biases3_address0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_biases3_address0),.biases3_ce0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_biases3_ce0),.biases3_q0(biases3_q0),.grp_fu_60_p_din0(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_grp_fu_60_p_din0),.grp_fu_60_p_din1(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_grp_fu_60_p_din1),.grp_fu_60_p_opcode(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_grp_fu_60_p_opcode),.grp_fu_60_p_dout0(grp_fu_2832_p_dout0),.grp_fu_60_p_ce(grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_grp_fu_60_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_ap_start_reg <= 1'b0;
        end
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_activations_0_o_ap_vld == 1'b1))) begin
        activations_0_o = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_activations_0_o;
    end else if (((1'b1 == ap_CS_fsm_state2) & (grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_activations_0_ap_vld == 1'b1))) begin
        activations_0_o = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_activations_0;
    end else begin
        activations_0_o = activations_0_i;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_0_o_ap_vld = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_activations_0_o_ap_vld;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        activations_0_o_ap_vld = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_activations_0_ap_vld;
    end else begin
        activations_0_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_activations_1_o_ap_vld == 1'b1))) begin
        activations_1_o = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_activations_1_o;
    end else if (((1'b1 == ap_CS_fsm_state2) & (grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_activations_1_ap_vld == 1'b1))) begin
        activations_1_o = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_activations_1;
    end else begin
        activations_1_o = activations_1_i;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_1_o_ap_vld = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_activations_1_o_ap_vld;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        activations_1_o_ap_vld = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_activations_1_ap_vld;
    end else begin
        activations_1_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_activations_2_o_ap_vld == 1'b1))) begin
        activations_2_o = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_activations_2_o;
    end else if (((1'b1 == ap_CS_fsm_state2) & (grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_activations_2_ap_vld == 1'b1))) begin
        activations_2_o = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_activations_2;
    end else begin
        activations_2_o = activations_2_i;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_2_o_ap_vld = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_activations_2_o_ap_vld;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        activations_2_o_ap_vld = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_activations_2_ap_vld;
    end else begin
        activations_2_o_ap_vld = 1'b0;
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
    if ((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state4) & (grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_ap_done == 1'b1)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state4) & (grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_60_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_grp_fu_60_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_60_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_grp_fu_60_p_ce;
    end else begin
        grp_fu_60_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_60_opcode = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_grp_fu_60_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_60_opcode = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_grp_fu_60_p_opcode;
    end else begin
        grp_fu_60_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_60_p0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_grp_fu_60_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_60_p0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_grp_fu_60_p_din0;
    end else begin
        grp_fu_60_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_60_p1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_grp_fu_60_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_60_p1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_grp_fu_60_p_din1;
    end else begin
        grp_fu_60_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_64_ce = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_grp_fu_64_p_ce;
    end else begin
        grp_fu_64_ce = 1'b1;
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
            if (((1'b1 == ap_CS_fsm_state2) & (grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign biases3_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_biases3_address0;
assign biases3_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_biases3_ce0;
assign grp_fu_2832_p_ce = grp_fu_60_ce;
assign grp_fu_2832_p_din0 = grp_fu_60_p0;
assign grp_fu_2832_p_din1 = grp_fu_60_p1;
assign grp_fu_2832_p_opcode = grp_fu_60_opcode;
assign grp_fu_2848_p_ce = grp_fu_64_ce;
assign grp_fu_2848_p_din0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_grp_fu_64_p_din0;
assign grp_fu_2848_p_din1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_grp_fu_64_p_din1;
assign grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_ap_start = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_26_1_fu_48_ap_start_reg;
assign grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_ap_start = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_ap_start_reg;
assign input_activations_0_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_input_activations_0_address0;
assign input_activations_0_address1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_input_activations_0_address1;
assign input_activations_0_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_input_activations_0_ce0;
assign input_activations_0_ce1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_input_activations_0_ce1;
assign input_activations_1_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_input_activations_1_address0;
assign input_activations_1_address1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_input_activations_1_address1;
assign input_activations_1_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_input_activations_1_ce0;
assign input_activations_1_ce1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_input_activations_1_ce1;
assign weights3_0_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_weights3_0_address0;
assign weights3_0_address1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_weights3_0_address1;
assign weights3_0_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_weights3_0_ce0;
assign weights3_0_ce1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_weights3_0_ce1;
assign weights3_1_address0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_weights3_1_address0;
assign weights3_1_address1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_weights3_1_address1;
assign weights3_1_ce0 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_weights3_1_ce0;
assign weights3_1_ce1 = grp_matrix_vector_product_with_bias_output_layer_60_61_1_Pipeline_VITIS_LOOP_55_1_mv_fu_30_weights3_1_ce1;
endmodule 
