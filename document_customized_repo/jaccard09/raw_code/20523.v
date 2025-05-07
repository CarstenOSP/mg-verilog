module backprop_matrix_vector_product_with_bias_second_layer_58_59_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,biases2_0_address0,biases2_0_ce0,biases2_0_q0,biases2_1_address0,biases2_1_ce0,biases2_1_q0,weights2_0_address0,weights2_0_ce0,weights2_0_q0,weights2_0_address1,weights2_0_ce1,weights2_0_q1,weights2_1_address0,weights2_1_ce0,weights2_1_q0,weights2_1_address1,weights2_1_ce1,weights2_1_q1,activations_0_address0,activations_0_ce0,activations_0_we0,activations_0_d0,activations_0_address1,activations_0_ce1,activations_0_q1,activations_1_address0,activations_1_ce0,activations_1_we0,activations_1_d0,activations_1_address1,activations_1_ce1,activations_1_q1,input_activations_0_address0,input_activations_0_ce0,input_activations_0_q0,input_activations_0_address1,input_activations_0_ce1,input_activations_0_q1,input_activations_1_address0,input_activations_1_ce0,input_activations_1_q0,input_activations_1_address1,input_activations_1_ce1,input_activations_1_q1,grp_fu_2832_p_din0,grp_fu_2832_p_din1,grp_fu_2832_p_opcode,grp_fu_2832_p_dout0,grp_fu_2832_p_ce,grp_fu_2848_p_din0,grp_fu_2848_p_din1,grp_fu_2848_p_dout0,grp_fu_2848_p_ce); 
parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] biases2_0_address0;
output   biases2_0_ce0;
input  [63:0] biases2_0_q0;
output  [4:0] biases2_1_address0;
output   biases2_1_ce0;
input  [63:0] biases2_1_q0;
output  [10:0] weights2_0_address0;
output   weights2_0_ce0;
input  [63:0] weights2_0_q0;
output  [10:0] weights2_0_address1;
output   weights2_0_ce1;
input  [63:0] weights2_0_q1;
output  [10:0] weights2_1_address0;
output   weights2_1_ce0;
input  [63:0] weights2_1_q0;
output  [10:0] weights2_1_address1;
output   weights2_1_ce1;
input  [63:0] weights2_1_q1;
output  [4:0] activations_0_address0;
output   activations_0_ce0;
output   activations_0_we0;
output  [63:0] activations_0_d0;
output  [4:0] activations_0_address1;
output   activations_0_ce1;
input  [63:0] activations_0_q1;
output  [4:0] activations_1_address0;
output   activations_1_ce0;
output   activations_1_we0;
output  [63:0] activations_1_d0;
output  [4:0] activations_1_address1;
output   activations_1_ce1;
input  [63:0] activations_1_q1;
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
reg[4:0] activations_0_address0;
reg activations_0_ce0;
reg activations_0_we0;
reg[63:0] activations_0_d0;
reg activations_0_ce1;
reg[4:0] activations_1_address0;
reg activations_1_ce0;
reg activations_1_we0;
reg[63:0] activations_1_d0;
reg activations_1_ce1;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [6:0] add_ln44_fu_128_p2;
reg   [6:0] add_ln44_reg_183;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln44_fu_134_p1;
reg   [5:0] trunc_ln44_reg_188;
wire   [0:0] trunc_ln44_1_fu_139_p1;
reg   [0:0] trunc_ln44_1_reg_193;
reg   [4:0] lshr_ln43_1_reg_197;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_ap_start;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_ap_done;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_ap_idle;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_ap_ready;
wire   [10:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_weights2_0_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_weights2_0_ce0;
wire   [10:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_weights2_0_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_weights2_0_ce1;
wire   [4:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_input_activations_0_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_input_activations_0_ce0;
wire   [4:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_input_activations_0_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_input_activations_0_ce1;
wire   [10:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_weights2_1_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_weights2_1_ce0;
wire   [10:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_weights2_1_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_weights2_1_ce1;
wire   [4:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_input_activations_1_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_input_activations_1_ce0;
wire   [4:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_input_activations_1_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_input_activations_1_ce1;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_add114_out;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_add114_out_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_grp_fu_202_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_grp_fu_202_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_grp_fu_202_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_grp_fu_202_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_grp_fu_206_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_grp_fu_206_p_din1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_grp_fu_206_p_ce;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_ap_start;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_ap_done;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_ap_idle;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_ap_ready;
wire   [4:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_activations_1_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_activations_1_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_activations_1_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_activations_1_d0;
wire   [4:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_activations_1_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_activations_1_ce1;
wire   [4:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_activations_0_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_activations_0_ce0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_activations_0_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_activations_0_d0;
wire   [4:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_activations_0_address1;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_activations_0_ce1;
wire   [4:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_biases2_0_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_biases2_0_ce0;
wire   [4:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_biases2_1_address0;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_biases2_1_ce0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_grp_fu_202_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_grp_fu_202_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_grp_fu_202_p_opcode;
wire    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_grp_fu_202_p_ce;
reg    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_ap_start_reg;
wire   [0:0] icmp_ln44_fu_122_p2;
wire    ap_CS_fsm_state3;
reg    grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_ap_start_reg;
wire    ap_CS_fsm_state5;
wire   [63:0] zext_ln45_fu_158_p1;
wire    ap_CS_fsm_state4;
reg   [6:0] i_fu_54;
reg    activations_0_we0_local;
reg    activations_0_ce0_local;
reg    activations_1_we0_local;
reg    activations_1_ce0_local;
reg   [63:0] grp_fu_202_p0;
reg   [63:0] grp_fu_202_p1;
reg   [1:0] grp_fu_202_opcode;
reg    grp_fu_202_ce;
reg    grp_fu_206_ce;
reg   [4:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_ap_start_reg = 1'b0;
#0 grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_ap_start_reg = 1'b0;
#0 i_fu_54 = 7'd0;
end
backprop_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2 grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_ap_start),.ap_done(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_ap_ready),.i(trunc_ln44_reg_188),.weights2_0_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_weights2_0_address0),.weights2_0_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_weights2_0_ce0),.weights2_0_q0(weights2_0_q0),.weights2_0_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_weights2_0_address1),.weights2_0_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_weights2_0_ce1),.weights2_0_q1(weights2_0_q1),.input_activations_0_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_input_activations_0_address0),.input_activations_0_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_input_activations_0_ce0),.input_activations_0_q0(input_activations_0_q0),.input_activations_0_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_input_activations_0_address1),.input_activations_0_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_input_activations_0_ce1),.input_activations_0_q1(input_activations_0_q1),.weights2_1_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_weights2_1_address0),.weights2_1_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_weights2_1_ce0),.weights2_1_q0(weights2_1_q0),.weights2_1_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_weights2_1_address1),.weights2_1_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_weights2_1_ce1),.weights2_1_q1(weights2_1_q1),.input_activations_1_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_input_activations_1_address0),.input_activations_1_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_input_activations_1_ce0),.input_activations_1_q0(input_activations_1_q0),.input_activations_1_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_input_activations_1_address1),.input_activations_1_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_input_activations_1_ce1),.input_activations_1_q1(input_activations_1_q1),.add114_out(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_add114_out),.add114_out_ap_vld(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_add114_out_ap_vld),.grp_fu_202_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_grp_fu_202_p_din0),.grp_fu_202_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_grp_fu_202_p_din1),.grp_fu_202_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_grp_fu_202_p_opcode),.grp_fu_202_p_dout0(grp_fu_2832_p_dout0),.grp_fu_202_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_grp_fu_202_p_ce),.grp_fu_206_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_grp_fu_206_p_din0),.grp_fu_206_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_grp_fu_206_p_din1),.grp_fu_206_p_dout0(grp_fu_2848_p_dout0),.grp_fu_206_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_grp_fu_206_p_ce));
backprop_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1 grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_ap_start),.ap_done(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_ap_ready),.activations_1_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_activations_1_address0),.activations_1_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_activations_1_ce0),.activations_1_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_activations_1_we0),.activations_1_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_activations_1_d0),.activations_1_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_activations_1_address1),.activations_1_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_activations_1_ce1),.activations_1_q1(activations_1_q1),.activations_0_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_activations_0_address0),.activations_0_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_activations_0_ce0),.activations_0_we0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_activations_0_we0),.activations_0_d0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_activations_0_d0),.activations_0_address1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_activations_0_address1),.activations_0_ce1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_activations_0_ce1),.activations_0_q1(activations_0_q1),.biases2_0_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_biases2_0_address0),.biases2_0_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_biases2_0_ce0),.biases2_0_q0(biases2_0_q0),.biases2_1_address0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_biases2_1_address0),.biases2_1_ce0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_biases2_1_ce0),.biases2_1_q0(biases2_1_q0),.grp_fu_202_p_din0(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_grp_fu_202_p_din0),.grp_fu_202_p_din1(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_grp_fu_202_p_din1),.grp_fu_202_p_opcode(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_grp_fu_202_p_opcode),.grp_fu_202_p_dout0(grp_fu_2832_p_dout0),.grp_fu_202_p_ce(grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_grp_fu_202_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln44_fu_122_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln44_fu_122_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_54 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        i_fu_54 <= add_ln44_reg_183;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln44_reg_183 <= add_ln44_fu_128_p2;
        lshr_ln43_1_reg_197 <= {{i_fu_54[5:1]}};
        trunc_ln44_1_reg_193 <= trunc_ln44_1_fu_139_p1;
        trunc_ln44_reg_188 <= trunc_ln44_fu_134_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_0_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_activations_0_address0;
    end else begin
        activations_0_address0 = zext_ln45_fu_158_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_0_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_activations_0_ce0;
    end else begin
        activations_0_ce0 = activations_0_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_0_ce0_local = 1'b1;
    end else begin
        activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_0_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_activations_0_ce1;
    end else begin
        activations_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_0_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_activations_0_d0;
    end else begin
        activations_0_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_0_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_activations_0_we0;
    end else begin
        activations_0_we0 = activations_0_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (trunc_ln44_1_reg_193 == 1'd0))) begin
        activations_0_we0_local = 1'b1;
    end else begin
        activations_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_1_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_activations_1_address0;
    end else begin
        activations_1_address0 = zext_ln45_fu_158_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_1_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_activations_1_ce0;
    end else begin
        activations_1_ce0 = activations_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_1_ce0_local = 1'b1;
    end else begin
        activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_1_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_activations_1_ce1;
    end else begin
        activations_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_1_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_activations_1_d0;
    end else begin
        activations_1_d0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_add114_out;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        activations_1_we0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_activations_1_we0;
    end else begin
        activations_1_we0 = activations_1_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (trunc_ln44_1_reg_193 == 1'd1))) begin
        activations_1_we0_local = 1'b1;
    end else begin
        activations_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
always @ (*) begin
    if ((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end
assign ap_ST_fsm_state4_blk = 1'b0;
always @ (*) begin
    if ((grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state5) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((1'b1 == ap_CS_fsm_state5) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_202_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_grp_fu_202_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_202_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_grp_fu_202_p_ce;
    end else begin
        grp_fu_202_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_202_opcode = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_grp_fu_202_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_202_opcode = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_grp_fu_202_p_opcode;
    end else begin
        grp_fu_202_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_202_p0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_grp_fu_202_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_202_p0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_grp_fu_202_p_din0;
    end else begin
        grp_fu_202_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_202_p1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_grp_fu_202_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_202_p1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_grp_fu_202_p_din1;
    end else begin
        grp_fu_202_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_206_ce = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_grp_fu_206_p_ce;
    end else begin
        grp_fu_206_ce = 1'b1;
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
            if (((icmp_ln44_fu_122_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign activations_0_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_activations_0_address1;
assign activations_1_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_activations_1_address1;
assign add_ln44_fu_128_p2 = (i_fu_54 + 7'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign biases2_0_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_biases2_0_address0;
assign biases2_0_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_biases2_0_ce0;
assign biases2_1_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_biases2_1_address0;
assign biases2_1_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_biases2_1_ce0;
assign grp_fu_2832_p_ce = grp_fu_202_ce;
assign grp_fu_2832_p_din0 = grp_fu_202_p0;
assign grp_fu_2832_p_din1 = grp_fu_202_p1;
assign grp_fu_2832_p_opcode = grp_fu_202_opcode;
assign grp_fu_2848_p_ce = grp_fu_206_ce;
assign grp_fu_2848_p_din0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_grp_fu_206_p_din0;
assign grp_fu_2848_p_din1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_grp_fu_206_p_din1;
assign grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_ap_start = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_VITIS_LOOP_26_1_fu_102_ap_start_reg;
assign grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_ap_start = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_ap_start_reg;
assign icmp_ln44_fu_122_p2 = ((i_fu_54 == 7'd64) ? 1'b1 : 1'b0);
assign input_activations_0_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_input_activations_0_address0;
assign input_activations_0_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_input_activations_0_address1;
assign input_activations_0_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_input_activations_0_ce0;
assign input_activations_0_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_input_activations_0_ce1;
assign input_activations_1_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_input_activations_1_address0;
assign input_activations_1_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_input_activations_1_address1;
assign input_activations_1_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_input_activations_1_ce0;
assign input_activations_1_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_input_activations_1_ce1;
assign trunc_ln44_1_fu_139_p1 = i_fu_54[0:0];
assign trunc_ln44_fu_134_p1 = i_fu_54[5:0];
assign weights2_0_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_weights2_0_address0;
assign weights2_0_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_weights2_0_address1;
assign weights2_0_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_weights2_0_ce0;
assign weights2_0_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_weights2_0_ce1;
assign weights2_1_address0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_weights2_1_address0;
assign weights2_1_address1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_weights2_1_address1;
assign weights2_1_ce0 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_weights2_1_ce0;
assign weights2_1_ce1 = grp_matrix_vector_product_with_bias_second_layer_58_59_1_Pipeline_mvp_product_loop2_fu_88_weights2_1_ce1;
assign zext_ln45_fu_158_p1 = lshr_ln43_1_reg_197;
endmodule 