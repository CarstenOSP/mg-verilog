
module backprop_matrix_vector_product_with_bias_input_layer_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,biases1_address0,biases1_ce0,biases1_q0,weights1_address0,weights1_ce0,weights1_q0,weights1_address1,weights1_ce1,weights1_q1,activations_address0,activations_ce0,activations_we0,activations_d0,activations_address1,activations_ce1,activations_we1,activations_d1,activations_q1,training_data_address0,training_data_ce0,training_data_q0,training_data_address1,training_data_ce1,training_data_q1,idx,grp_fu_3011_p_din0,grp_fu_3011_p_din1,grp_fu_3011_p_opcode,grp_fu_3011_p_dout0,grp_fu_3011_p_ce,grp_fu_3015_p_din0,grp_fu_3015_p_din1,grp_fu_3015_p_opcode,grp_fu_3015_p_dout0,grp_fu_3015_p_ce,grp_fu_3019_p_din0,grp_fu_3019_p_din1,grp_fu_3019_p_dout0,grp_fu_3019_p_ce,grp_fu_3023_p_din0,grp_fu_3023_p_din1,grp_fu_3023_p_dout0,grp_fu_3023_p_ce);  
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
output  [5:0] biases1_address0;
output   biases1_ce0;
input  [63:0] biases1_q0;
output  [9:0] weights1_address0;
output   weights1_ce0;
input  [63:0] weights1_q0;
output  [9:0] weights1_address1;
output   weights1_ce1;
input  [63:0] weights1_q1;
output  [5:0] activations_address0;
output   activations_ce0;
output   activations_we0;
output  [63:0] activations_d0;
output  [5:0] activations_address1;
output   activations_ce1;
output   activations_we1;
output  [63:0] activations_d1;
input  [63:0] activations_q1;
output  [11:0] training_data_address0;
output   training_data_ce0;
input  [63:0] training_data_q0;
output  [11:0] training_data_address1;
output   training_data_ce1;
input  [63:0] training_data_q1;
input  [11:0] idx;
output  [63:0] grp_fu_3011_p_din0;
output  [63:0] grp_fu_3011_p_din1;
output  [0:0] grp_fu_3011_p_opcode;
input  [63:0] grp_fu_3011_p_dout0;
output   grp_fu_3011_p_ce;
output  [63:0] grp_fu_3015_p_din0;
output  [63:0] grp_fu_3015_p_din1;
output  [0:0] grp_fu_3015_p_opcode;
input  [63:0] grp_fu_3015_p_dout0;
output   grp_fu_3015_p_ce;
output  [63:0] grp_fu_3019_p_din0;
output  [63:0] grp_fu_3019_p_din1;
input  [63:0] grp_fu_3019_p_dout0;
output   grp_fu_3019_p_ce;
output  [63:0] grp_fu_3023_p_din0;
output  [63:0] grp_fu_3023_p_din1;
input  [63:0] grp_fu_3023_p_dout0;
output   grp_fu_3023_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[5:0] activations_address0;
reg activations_ce0;
reg activations_we0;
reg[63:0] activations_d0;
reg[5:0] activations_address1;
reg activations_ce1;
reg activations_we1;
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] training_data_load_reg_400;
wire    ap_CS_fsm_state2;
reg   [63:0] training_data_load_1_reg_415;
wire    ap_CS_fsm_state3;
reg   [63:0] training_data_load_2_reg_420;
reg   [63:0] training_data_load_3_reg_435;
wire    ap_CS_fsm_state4;
reg   [63:0] training_data_load_4_reg_440;
reg   [63:0] training_data_load_5_reg_455;
wire    ap_CS_fsm_state5;
reg   [63:0] training_data_load_6_reg_460;
reg   [63:0] training_data_load_7_reg_475;
wire    ap_CS_fsm_state6;
reg   [63:0] training_data_load_8_reg_480;
reg   [63:0] training_data_load_9_reg_495;
wire    ap_CS_fsm_state7;
reg   [63:0] training_data_load_10_reg_500;
wire   [63:0] empty_fu_325_p1;
reg   [63:0] empty_reg_515;
wire    ap_CS_fsm_state8;
wire   [63:0] empty_47_fu_329_p1;
reg   [63:0] empty_47_reg_520;
wire   [63:0] empty_48_fu_333_p1;
reg   [63:0] empty_48_reg_525;
wire   [63:0] empty_49_fu_337_p1;
reg   [63:0] empty_49_reg_530;
wire   [63:0] empty_50_fu_341_p1;
reg   [63:0] empty_50_reg_535;
wire   [63:0] empty_51_fu_345_p1;
reg   [63:0] empty_51_reg_540;
wire   [63:0] empty_52_fu_349_p1;
reg   [63:0] empty_52_reg_545;
wire   [63:0] empty_53_fu_353_p1;
reg   [63:0] empty_53_reg_550;
wire   [63:0] empty_54_fu_357_p1;
reg   [63:0] empty_54_reg_555;
wire   [63:0] empty_55_fu_361_p1;
reg   [63:0] empty_55_reg_560;
wire   [63:0] empty_56_fu_365_p1;
reg   [63:0] empty_56_reg_565;
wire   [63:0] empty_57_fu_369_p1;
reg   [63:0] empty_57_reg_570;
wire   [63:0] empty_58_fu_374_p1;
reg   [63:0] empty_58_reg_575;
wire    grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_ap_start;
wire    grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_ap_done;
wire    grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_ap_idle;
wire    grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_ap_ready;
wire   [5:0] grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_activations_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_activations_ce0;
wire    grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_activations_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_activations_d0;
wire   [5:0] grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_activations_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_activations_ce1;
wire    grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_activations_we1;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_activations_d1;
wire   [9:0] grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_weights1_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_weights1_ce0;
wire   [9:0] grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_weights1_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_weights1_ce1;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_grp_fu_580_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_grp_fu_580_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_grp_fu_580_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_grp_fu_580_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_grp_fu_584_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_grp_fu_584_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_grp_fu_584_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_grp_fu_584_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_grp_fu_588_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_grp_fu_588_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_grp_fu_588_p_ce;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_grp_fu_592_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_grp_fu_592_p_din1;
wire    grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_grp_fu_592_p_ce;
wire    grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_ap_start;
wire    grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_ap_done;
wire    grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_ap_idle;
wire    grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_ap_ready;
wire   [5:0] grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_activations_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_activations_ce0;
wire    grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_activations_we0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_activations_d0;
wire   [5:0] grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_activations_address1;
wire    grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_activations_ce1;
wire   [5:0] grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_biases1_address0;
wire    grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_biases1_ce0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_grp_fu_580_p_din0;
wire   [63:0] grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_grp_fu_580_p_din1;
wire   [0:0] grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_grp_fu_580_p_opcode;
wire    grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_grp_fu_580_p_ce;
reg    grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_ap_start_reg;
wire    ap_CS_fsm_state9;
reg    grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_ap_start_reg;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state11;
wire   [63:0] idx_cast3_fu_200_p1;
wire   [63:0] p_sum_cast_fu_210_p1;
wire   [63:0] p_sum2_cast_fu_220_p1;
wire   [63:0] p_sum4_cast_fu_230_p1;
wire   [63:0] p_sum6_cast_fu_240_p1;
wire   [63:0] p_sum8_cast_fu_250_p1;
wire   [63:0] p_sum10_cast_fu_260_p1;
wire   [63:0] p_sum12_cast_fu_270_p1;
wire   [63:0] p_sum14_cast_fu_280_p1;
wire   [63:0] p_sum16_cast_fu_290_p1;
wire   [63:0] p_sum18_cast_fu_300_p1;
wire   [63:0] p_sum20_cast_fu_310_p1;
wire   [63:0] p_sum22_cast_fu_320_p1;
reg    training_data_ce0_local;
reg   [11:0] training_data_address0_local;
reg    training_data_ce1_local;
reg   [11:0] training_data_address1_local;
wire   [11:0] p_sum_fu_205_p2;
wire   [11:0] p_sum2_fu_215_p2;
wire   [11:0] p_sum4_fu_225_p2;
wire   [11:0] p_sum6_fu_235_p2;
wire   [11:0] p_sum8_fu_245_p2;
wire   [11:0] p_sum10_fu_255_p2;
wire   [11:0] p_sum12_fu_265_p2;
wire   [11:0] p_sum14_fu_275_p2;
wire   [11:0] p_sum16_fu_285_p2;
wire   [11:0] p_sum18_fu_295_p2;
wire   [11:0] p_sum20_fu_305_p2;
wire   [11:0] p_sum22_fu_315_p2;
reg   [63:0] grp_fu_580_p0;
reg   [63:0] grp_fu_580_p1;
reg   [1:0] grp_fu_580_opcode;
reg    grp_fu_580_ce;
reg    grp_fu_584_ce;
reg    grp_fu_588_ce;
reg    grp_fu_592_ce;
reg   [10:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
reg    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
reg    ap_ST_fsm_state11_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 11'd1;
#0 grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_ap_start_reg = 1'b0;
#0 grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_ap_start_reg = 1'b0;
end
backprop_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_ap_start),.ap_done(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_ap_ready),.activations_address0(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_activations_address0),.activations_ce0(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_activations_ce0),.activations_we0(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_activations_we0),.activations_d0(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_activations_d0),.activations_address1(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_activations_address1),.activations_ce1(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_activations_ce1),.activations_we1(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_activations_we1),.activations_d1(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_activations_d1),.weights1_address0(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_weights1_address0),.weights1_ce0(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_weights1_ce0),.weights1_q0(weights1_q0),.weights1_address1(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_weights1_address1),.weights1_ce1(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_weights1_ce1),.weights1_q1(weights1_q1),.empty_19(empty_reg_515),.empty_20(empty_47_reg_520),.empty_21(empty_48_reg_525),.empty_22(empty_49_reg_530),.empty_23(empty_50_reg_535),.empty_24(empty_51_reg_540),.empty_25(empty_52_reg_545),.empty_26(empty_53_reg_550),.empty_27(empty_54_reg_555),.empty_28(empty_55_reg_560),.empty_29(empty_56_reg_565),.empty_30(empty_57_reg_570),.empty(empty_58_reg_575),.grp_fu_580_p_din0(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_grp_fu_580_p_din0),.grp_fu_580_p_din1(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_grp_fu_580_p_din1),.grp_fu_580_p_opcode(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_grp_fu_580_p_opcode),.grp_fu_580_p_dout0(grp_fu_3011_p_dout0),.grp_fu_580_p_ce(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_grp_fu_580_p_ce),.grp_fu_584_p_din0(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_grp_fu_584_p_din0),.grp_fu_584_p_din1(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_grp_fu_584_p_din1),.grp_fu_584_p_opcode(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_grp_fu_584_p_opcode),.grp_fu_584_p_dout0(grp_fu_3015_p_dout0),.grp_fu_584_p_ce(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_grp_fu_584_p_ce),.grp_fu_588_p_din0(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_grp_fu_588_p_din0),.grp_fu_588_p_din1(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_grp_fu_588_p_din1),.grp_fu_588_p_dout0(grp_fu_3019_p_dout0),.grp_fu_588_p_ce(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_grp_fu_588_p_ce),.grp_fu_592_p_din0(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_grp_fu_592_p_din0),.grp_fu_592_p_din1(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_grp_fu_592_p_din1),.grp_fu_592_p_dout0(grp_fu_3023_p_dout0),.grp_fu_592_p_ce(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_grp_fu_592_p_ce));
backprop_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1 grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_ap_start),.ap_done(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_ap_done),.ap_idle(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_ap_idle),.ap_ready(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_ap_ready),.activations_address0(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_activations_address0),.activations_ce0(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_activations_ce0),.activations_we0(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_activations_we0),.activations_d0(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_activations_d0),.activations_address1(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_activations_address1),.activations_ce1(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_activations_ce1),.activations_q1(activations_q1),.biases1_address0(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_biases1_address0),.biases1_ce0(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_biases1_ce0),.biases1_q0(biases1_q0),.grp_fu_580_p_din0(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_grp_fu_580_p_din0),.grp_fu_580_p_din1(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_grp_fu_580_p_din1),.grp_fu_580_p_opcode(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_grp_fu_580_p_opcode),.grp_fu_580_p_dout0(grp_fu_3011_p_dout0),.grp_fu_580_p_ce(grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_grp_fu_580_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state8)) begin
            grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_ap_ready == 1'b1)) begin
            grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        empty_47_reg_520 <= empty_47_fu_329_p1;
        empty_48_reg_525 <= empty_48_fu_333_p1;
        empty_49_reg_530 <= empty_49_fu_337_p1;
        empty_50_reg_535 <= empty_50_fu_341_p1;
        empty_51_reg_540 <= empty_51_fu_345_p1;
        empty_52_reg_545 <= empty_52_fu_349_p1;
        empty_53_reg_550 <= empty_53_fu_353_p1;
        empty_54_reg_555 <= empty_54_fu_357_p1;
        empty_55_reg_560 <= empty_55_fu_361_p1;
        empty_56_reg_565 <= empty_56_fu_365_p1;
        empty_57_reg_570 <= empty_57_fu_369_p1;
        empty_58_reg_575 <= empty_58_fu_374_p1;
        empty_reg_515 <= empty_fu_325_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        training_data_load_10_reg_500 <= training_data_q1;
        training_data_load_9_reg_495 <= training_data_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        training_data_load_1_reg_415 <= training_data_q1;
        training_data_load_2_reg_420 <= training_data_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        training_data_load_3_reg_435 <= training_data_q0;
        training_data_load_4_reg_440 <= training_data_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        training_data_load_5_reg_455 <= training_data_q0;
        training_data_load_6_reg_460 <= training_data_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        training_data_load_7_reg_475 <= training_data_q0;
        training_data_load_8_reg_480 <= training_data_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        training_data_load_reg_400 <= training_data_q0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_address0 = grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_activations_address0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_address0 = grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_activations_address0;
    end else begin
        activations_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_address1 = grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_activations_address1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_address1 = grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_activations_address1;
    end else begin
        activations_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_ce0 = grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_activations_ce0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_ce0 = grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_activations_ce0;
    end else begin
        activations_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_ce1 = grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_activations_ce1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_ce1 = grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_activations_ce1;
    end else begin
        activations_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_d0 = grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_activations_d0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_d0 = grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_activations_d0;
    end else begin
        activations_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        activations_we0 = grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_activations_we0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_we0 = grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_activations_we0;
    end else begin
        activations_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        activations_we1 = grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_activations_we1;
    end else begin
        activations_we1 = 1'b0;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
always @ (*) begin
    if ((grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_ap_done == 1'b0)) begin
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
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
always @ (*) begin
    if ((grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_ap_done == 1'b0)) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_580_ce = grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_grp_fu_580_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_580_ce = grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_grp_fu_580_p_ce;
    end else begin
        grp_fu_580_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_580_opcode = grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_grp_fu_580_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_580_opcode = grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_grp_fu_580_p_opcode;
    end else begin
        grp_fu_580_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_580_p0 = grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_grp_fu_580_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_580_p0 = grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_grp_fu_580_p_din0;
    end else begin
        grp_fu_580_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_580_p1 = grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_grp_fu_580_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_580_p1 = grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_grp_fu_580_p_din1;
    end else begin
        grp_fu_580_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_584_ce = grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_grp_fu_584_p_ce;
    end else begin
        grp_fu_584_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_588_ce = grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_grp_fu_588_p_ce;
    end else begin
        grp_fu_588_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_592_ce = grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_grp_fu_592_p_ce;
    end else begin
        grp_fu_592_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        training_data_address0_local = p_sum20_cast_fu_310_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        training_data_address0_local = p_sum16_cast_fu_290_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        training_data_address0_local = p_sum12_cast_fu_270_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        training_data_address0_local = p_sum8_cast_fu_250_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        training_data_address0_local = p_sum4_cast_fu_230_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        training_data_address0_local = p_sum2_cast_fu_220_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        training_data_address0_local = idx_cast3_fu_200_p1;
    end else begin
        training_data_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        training_data_address1_local = p_sum22_cast_fu_320_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        training_data_address1_local = p_sum18_cast_fu_300_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        training_data_address1_local = p_sum14_cast_fu_280_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        training_data_address1_local = p_sum10_cast_fu_260_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        training_data_address1_local = p_sum6_cast_fu_240_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        training_data_address1_local = p_sum_cast_fu_210_p1;
    end else begin
        training_data_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        training_data_ce0_local = 1'b1;
    end else begin
        training_data_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        training_data_ce1_local = 1'b1;
    end else begin
        training_data_ce1_local = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state9) & (grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            if (((grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign activations_d1 = grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_activations_d1;
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
assign biases1_address0 = grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_biases1_address0;
assign biases1_ce0 = grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_biases1_ce0;
assign empty_47_fu_329_p1 = training_data_load_1_reg_415;
assign empty_48_fu_333_p1 = training_data_load_2_reg_420;
assign empty_49_fu_337_p1 = training_data_load_3_reg_435;
assign empty_50_fu_341_p1 = training_data_load_4_reg_440;
assign empty_51_fu_345_p1 = training_data_load_5_reg_455;
assign empty_52_fu_349_p1 = training_data_load_6_reg_460;
assign empty_53_fu_353_p1 = training_data_load_7_reg_475;
assign empty_54_fu_357_p1 = training_data_load_8_reg_480;
assign empty_55_fu_361_p1 = training_data_load_9_reg_495;
assign empty_56_fu_365_p1 = training_data_load_10_reg_500;
assign empty_57_fu_369_p1 = training_data_q0;
assign empty_58_fu_374_p1 = training_data_q1;
assign empty_fu_325_p1 = training_data_load_reg_400;
assign grp_fu_3011_p_ce = grp_fu_580_ce;
assign grp_fu_3011_p_din0 = grp_fu_580_p0;
assign grp_fu_3011_p_din1 = grp_fu_580_p1;
assign grp_fu_3011_p_opcode = grp_fu_580_opcode;
assign grp_fu_3015_p_ce = grp_fu_584_ce;
assign grp_fu_3015_p_din0 = grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_grp_fu_584_p_din0;
assign grp_fu_3015_p_din1 = grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_grp_fu_584_p_din1;
assign grp_fu_3015_p_opcode = grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_grp_fu_584_p_opcode;
assign grp_fu_3019_p_ce = grp_fu_588_ce;
assign grp_fu_3019_p_din0 = grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_grp_fu_588_p_din0;
assign grp_fu_3019_p_din1 = grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_grp_fu_588_p_din1;
assign grp_fu_3023_p_ce = grp_fu_592_ce;
assign grp_fu_3023_p_din0 = grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_grp_fu_592_p_din0;
assign grp_fu_3023_p_din1 = grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_grp_fu_592_p_din1;
assign grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_ap_start = grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_VITIS_LOOP_26_1_fu_192_ap_start_reg;
assign grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_ap_start = grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_ap_start_reg;
assign idx_cast3_fu_200_p1 = idx;
assign p_sum10_cast_fu_260_p1 = p_sum10_fu_255_p2;
assign p_sum10_fu_255_p2 = (idx + 12'd6);
assign p_sum12_cast_fu_270_p1 = p_sum12_fu_265_p2;
assign p_sum12_fu_265_p2 = (idx + 12'd7);
assign p_sum14_cast_fu_280_p1 = p_sum14_fu_275_p2;
assign p_sum14_fu_275_p2 = (idx + 12'd8);
assign p_sum16_cast_fu_290_p1 = p_sum16_fu_285_p2;
assign p_sum16_fu_285_p2 = (idx + 12'd9);
assign p_sum18_cast_fu_300_p1 = p_sum18_fu_295_p2;
assign p_sum18_fu_295_p2 = (idx + 12'd10);
assign p_sum20_cast_fu_310_p1 = p_sum20_fu_305_p2;
assign p_sum20_fu_305_p2 = (idx + 12'd11);
assign p_sum22_cast_fu_320_p1 = p_sum22_fu_315_p2;
assign p_sum22_fu_315_p2 = (idx + 12'd12);
assign p_sum2_cast_fu_220_p1 = p_sum2_fu_215_p2;
assign p_sum2_fu_215_p2 = (idx + 12'd2);
assign p_sum4_cast_fu_230_p1 = p_sum4_fu_225_p2;
assign p_sum4_fu_225_p2 = (idx + 12'd3);
assign p_sum6_cast_fu_240_p1 = p_sum6_fu_235_p2;
assign p_sum6_fu_235_p2 = (idx + 12'd4);
assign p_sum8_cast_fu_250_p1 = p_sum8_fu_245_p2;
assign p_sum8_fu_245_p2 = (idx + 12'd5);
assign p_sum_cast_fu_210_p1 = p_sum_fu_205_p2;
assign p_sum_fu_205_p2 = (idx + 12'd1);
assign training_data_address0 = training_data_address0_local;
assign training_data_address1 = training_data_address1_local;
assign training_data_ce0 = training_data_ce0_local;
assign training_data_ce1 = training_data_ce1_local;
assign weights1_address0 = grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_weights1_address0;
assign weights1_address1 = grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_weights1_address1;
assign weights1_ce0 = grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_weights1_ce0;
assign weights1_ce1 = grp_matrix_vector_product_with_bias_input_layer_1_Pipeline_mvp_product_input_loop_fu_171_weights1_ce1;
endmodule 
