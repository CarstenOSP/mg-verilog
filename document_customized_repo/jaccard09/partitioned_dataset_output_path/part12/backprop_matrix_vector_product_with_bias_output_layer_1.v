
module backprop_matrix_vector_product_with_bias_output_layer_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,biases3_address0,biases3_ce0,biases3_q0,weights3_address0,weights3_ce0,weights3_q0,weights3_address1,weights3_ce1,weights3_q1,activations_0_i,activations_0_o,activations_0_o_ap_vld,activations_1_i,activations_1_o,activations_1_o_ap_vld,activations_2_i,activations_2_o,activations_2_o_ap_vld,p_read,p_read1,p_read2,p_read3,p_read4,p_read5,p_read6,p_read7,p_read8,p_read9,p_read10,p_read11,p_read12,p_read13,p_read14,p_read15,p_read16,p_read17,p_read18,p_read19,p_read20,p_read21,p_read22,p_read23,p_read24,p_read25,p_read26,p_read27,p_read28,p_read29,p_read30,p_read31,p_read32,p_read33,p_read34,p_read35,p_read36,p_read37,p_read38,p_read39,p_read40,p_read41,p_read42,p_read43,p_read44,p_read45,p_read46,p_read47,p_read48,p_read49,p_read50,p_read51,p_read52,p_read53,p_read54,p_read55,p_read56,p_read57,p_read58,p_read59,p_read60,p_read61,p_read62,p_read63,grp_fu_10475_p_din0,grp_fu_10475_p_din1,grp_fu_10475_p_opcode,grp_fu_10475_p_dout0,grp_fu_10475_p_ce,grp_fu_10483_p_din0,grp_fu_10483_p_din1,grp_fu_10483_p_dout0,grp_fu_10483_p_ce);  
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
output  [7:0] weights3_address0;
output   weights3_ce0;
input  [63:0] weights3_q0;
output  [7:0] weights3_address1;
output   weights3_ce1;
input  [63:0] weights3_q1;
input  [63:0] activations_0_i;
output  [63:0] activations_0_o;
output   activations_0_o_ap_vld;
input  [63:0] activations_1_i;
output  [63:0] activations_1_o;
output   activations_1_o_ap_vld;
input  [63:0] activations_2_i;
output  [63:0] activations_2_o;
output   activations_2_o_ap_vld;
input  [63:0] p_read;
input  [63:0] p_read1;
input  [63:0] p_read2;
input  [63:0] p_read3;
input  [63:0] p_read4;
input  [63:0] p_read5;
input  [63:0] p_read6;
input  [63:0] p_read7;
input  [63:0] p_read8;
input  [63:0] p_read9;
input  [63:0] p_read10;
input  [63:0] p_read11;
input  [63:0] p_read12;
input  [63:0] p_read13;
input  [63:0] p_read14;
input  [63:0] p_read15;
input  [63:0] p_read16;
input  [63:0] p_read17;
input  [63:0] p_read18;
input  [63:0] p_read19;
input  [63:0] p_read20;
input  [63:0] p_read21;
input  [63:0] p_read22;
input  [63:0] p_read23;
input  [63:0] p_read24;
input  [63:0] p_read25;
input  [63:0] p_read26;
input  [63:0] p_read27;
input  [63:0] p_read28;
input  [63:0] p_read29;
input  [63:0] p_read30;
input  [63:0] p_read31;
input  [63:0] p_read32;
input  [63:0] p_read33;
input  [63:0] p_read34;
input  [63:0] p_read35;
input  [63:0] p_read36;
input  [63:0] p_read37;
input  [63:0] p_read38;
input  [63:0] p_read39;
input  [63:0] p_read40;
input  [63:0] p_read41;
input  [63:0] p_read42;
input  [63:0] p_read43;
input  [63:0] p_read44;
input  [63:0] p_read45;
input  [63:0] p_read46;
input  [63:0] p_read47;
input  [63:0] p_read48;
input  [63:0] p_read49;
input  [63:0] p_read50;
input  [63:0] p_read51;
input  [63:0] p_read52;
input  [63:0] p_read53;
input  [63:0] p_read54;
input  [63:0] p_read55;
input  [63:0] p_read56;
input  [63:0] p_read57;
input  [63:0] p_read58;
input  [63:0] p_read59;
input  [63:0] p_read60;
input  [63:0] p_read61;
input  [63:0] p_read62;
input  [63:0] p_read63;
output  [63:0] grp_fu_10475_p_din0;
output  [63:0] grp_fu_10475_p_din1;
output  [0:0] grp_fu_10475_p_opcode;
input  [63:0] grp_fu_10475_p_dout0;
output   grp_fu_10475_p_ce;
output  [63:0] grp_fu_10483_p_din0;
output  [63:0] grp_fu_10483_p_din1;
input  [63:0] grp_fu_10483_p_dout0;
output   grp_fu_10483_p_ce;
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
wire    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_ap_start;
wire    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_ap_done;
wire    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_ap_idle;
wire    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_ap_ready;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_activations_0;
wire    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_activations_0_ap_vld;
wire   [7:0] grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_weights3_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_weights3_ce0;
wire   [7:0] grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_weights3_address1;
wire    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_weights3_ce1;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_activations_1;
wire    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_activations_1_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_activations_2;
wire    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_activations_2_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_grp_fu_1010_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_grp_fu_1010_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_grp_fu_1010_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_grp_fu_1010_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_grp_fu_1014_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_grp_fu_1014_p_din1;
wire    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_grp_fu_1014_p_ce;
wire    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_ap_start;
wire    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_ap_done;
wire    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_ap_idle;
wire    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_ap_ready;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_activations_0_o;
wire    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_activations_0_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_activations_2_o;
wire    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_activations_2_o_ap_vld;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_activations_1_o;
wire    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_activations_1_o_ap_vld;
wire   [1:0] grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_biases3_address0;
wire    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_biases3_ce0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_grp_fu_1010_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_grp_fu_1010_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_grp_fu_1010_p_opcode;
wire    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_grp_fu_1010_p_ce;
reg    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_ap_start_reg;
wire    ap_CS_fsm_state2;
reg    grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg   [63:0] grp_fu_1010_p0;
reg   [63:0] grp_fu_1010_p1;
reg   [1:0] grp_fu_1010_opcode;
reg    grp_fu_1010_ce;
reg    grp_fu_1014_ce;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_ap_start_reg = 1'b0;
#0 grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_ap_start_reg = 1'b0;
end
backprop_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_ap_start),.ap_done(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_ap_ready),.activations_0(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_activations_0),.activations_0_ap_vld(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_activations_0_ap_vld),.weights3_address0(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_weights3_address0),.weights3_ce0(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_weights3_ce0),.weights3_q0(weights3_q0),.weights3_address1(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_weights3_address1),.weights3_ce1(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_weights3_ce1),.weights3_q1(weights3_q1),.p_read32(p_read32),.p_read(p_read),.p_read33(p_read33),.p_read1(p_read1),.p_read34(p_read34),.p_read2(p_read2),.p_read35(p_read35),.p_read3(p_read3),.p_read36(p_read36),.p_read4(p_read4),.p_read37(p_read37),.p_read5(p_read5),.p_read38(p_read38),.p_read6(p_read6),.p_read39(p_read39),.p_read7(p_read7),.p_read40(p_read40),.p_read8(p_read8),.p_read41(p_read41),.p_read9(p_read9),.p_read42(p_read42),.p_read10(p_read10),.p_read43(p_read43),.p_read11(p_read11),.p_read44(p_read44),.p_read12(p_read12),.p_read45(p_read45),.p_read13(p_read13),.p_read46(p_read46),.p_read14(p_read14),.p_read47(p_read47),.p_read15(p_read15),.p_read48(p_read48),.p_read16(p_read16),.p_read49(p_read49),.p_read17(p_read17),.p_read50(p_read50),.p_read18(p_read18),.p_read51(p_read51),.p_read19(p_read19),.p_read52(p_read52),.p_read20(p_read20),.p_read53(p_read53),.p_read21(p_read21),.p_read54(p_read54),.p_read22(p_read22),.p_read55(p_read55),.p_read23(p_read23),.p_read56(p_read56),.p_read24(p_read24),.p_read57(p_read57),.p_read25(p_read25),.p_read58(p_read58),.p_read26(p_read26),.p_read59(p_read59),.p_read27(p_read27),.p_read60(p_read60),.p_read28(p_read28),.p_read61(p_read61),.p_read29(p_read29),.p_read62(p_read62),.p_read30(p_read30),.p_read63(p_read63),.p_read31(p_read31),.activations_1(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_activations_1),.activations_1_ap_vld(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_activations_1_ap_vld),.activations_2(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_activations_2),.activations_2_ap_vld(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_activations_2_ap_vld),.grp_fu_1010_p_din0(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_grp_fu_1010_p_din0),.grp_fu_1010_p_din1(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_grp_fu_1010_p_din1),.grp_fu_1010_p_opcode(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_grp_fu_1010_p_opcode),.grp_fu_1010_p_dout0(grp_fu_10475_p_dout0),.grp_fu_1010_p_ce(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_grp_fu_1010_p_ce),.grp_fu_1014_p_din0(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_grp_fu_1014_p_din0),.grp_fu_1014_p_din1(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_grp_fu_1014_p_din1),.grp_fu_1014_p_dout0(grp_fu_10483_p_dout0),.grp_fu_1014_p_ce(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_grp_fu_1014_p_ce));
backprop_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1 grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_ap_start),.ap_done(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_ap_ready),.activations_0_i(activations_0_i),.activations_0_o(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_activations_0_o),.activations_0_o_ap_vld(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_activations_0_o_ap_vld),.activations_2_i(activations_2_i),.activations_2_o(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_activations_2_o),.activations_2_o_ap_vld(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_activations_2_o_ap_vld),.activations_1_i(activations_1_i),.activations_1_o(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_activations_1_o),.activations_1_o_ap_vld(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_activations_1_o_ap_vld),.biases3_address0(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_biases3_address0),.biases3_ce0(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_biases3_ce0),.biases3_q0(biases3_q0),.grp_fu_1010_p_din0(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_grp_fu_1010_p_din0),.grp_fu_1010_p_din1(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_grp_fu_1010_p_din1),.grp_fu_1010_p_opcode(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_grp_fu_1010_p_opcode),.grp_fu_1010_p_dout0(grp_fu_10475_p_dout0),.grp_fu_1010_p_ce(grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_grp_fu_1010_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_ap_start_reg <= 1'b0;
        end
    end
end
always @ (*) begin
    if (((grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_activations_0_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        activations_0_o = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_activations_0_o;
    end else if (((grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_activations_0_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        activations_0_o = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_activations_0;
    end else begin
        activations_0_o = activations_0_i;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_0_o_ap_vld = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_activations_0_o_ap_vld;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        activations_0_o_ap_vld = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_activations_0_ap_vld;
    end else begin
        activations_0_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_activations_1_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        activations_1_o = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_activations_1_o;
    end else if (((grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_activations_1_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        activations_1_o = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_activations_1;
    end else begin
        activations_1_o = activations_1_i;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_1_o_ap_vld = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_activations_1_o_ap_vld;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        activations_1_o_ap_vld = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_activations_1_ap_vld;
    end else begin
        activations_1_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_activations_2_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        activations_2_o = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_activations_2_o;
    end else if (((grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_activations_2_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        activations_2_o = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_activations_2;
    end else begin
        activations_2_o = activations_2_i;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        activations_2_o_ap_vld = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_activations_2_o_ap_vld;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        activations_2_o_ap_vld = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_activations_2_ap_vld;
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
    if ((grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1010_ce = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_grp_fu_1010_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1010_ce = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_grp_fu_1010_p_ce;
    end else begin
        grp_fu_1010_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1010_opcode = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_grp_fu_1010_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1010_opcode = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_grp_fu_1010_p_opcode;
    end else begin
        grp_fu_1010_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1010_p0 = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_grp_fu_1010_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1010_p0 = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_grp_fu_1010_p_din0;
    end else begin
        grp_fu_1010_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1010_p1 = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_grp_fu_1010_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1010_p1 = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_grp_fu_1010_p_din1;
    end else begin
        grp_fu_1010_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_1014_ce = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_grp_fu_1014_p_ce;
    end else begin
        grp_fu_1014_ce = 1'b1;
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
            if (((grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
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
assign biases3_address0 = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_biases3_address0;
assign biases3_ce0 = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_biases3_ce0;
assign grp_fu_10475_p_ce = grp_fu_1010_ce;
assign grp_fu_10475_p_din0 = grp_fu_1010_p0;
assign grp_fu_10475_p_din1 = grp_fu_1010_p1;
assign grp_fu_10475_p_opcode = grp_fu_1010_opcode;
assign grp_fu_10483_p_ce = grp_fu_1014_ce;
assign grp_fu_10483_p_din0 = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_grp_fu_1014_p_din0;
assign grp_fu_10483_p_din1 = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_grp_fu_1014_p_din1;
assign grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_ap_start = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_26_1_fu_678_ap_start_reg;
assign grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_ap_start = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_ap_start_reg;
assign weights3_address0 = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_weights3_address0;
assign weights3_address1 = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_weights3_address1;
assign weights3_ce0 = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_weights3_ce0;
assign weights3_ce1 = grp_matrix_vector_product_with_bias_output_layer_1_Pipeline_VITIS_LOOP_55_1_mvp_prod_fu_538_weights3_ce1;
endmodule 
