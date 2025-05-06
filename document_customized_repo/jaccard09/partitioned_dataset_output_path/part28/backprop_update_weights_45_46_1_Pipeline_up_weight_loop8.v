
module backprop_update_weights_45_46_1_Pipeline_up_weight_loop8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,biases2_1_address0,biases2_1_ce0,biases2_1_we0,biases2_1_d0,biases2_1_q0,biases2_1_address1,biases2_1_ce1,biases2_1_we1,biases2_1_d1,biases2_1_q1,biases2_0_address0,biases2_0_ce0,biases2_0_we0,biases2_0_d0,biases2_0_q0,biases2_0_address1,biases2_0_ce1,biases2_0_we1,biases2_0_d1,biases2_0_q1,bias_norm_17);  
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] biases2_1_address0;
output   biases2_1_ce0;
output   biases2_1_we0;
output  [63:0] biases2_1_d0;
input  [63:0] biases2_1_q0;
output  [4:0] biases2_1_address1;
output   biases2_1_ce1;
output   biases2_1_we1;
output  [63:0] biases2_1_d1;
input  [63:0] biases2_1_q1;
output  [4:0] biases2_0_address0;
output   biases2_0_ce0;
output   biases2_0_we0;
output  [63:0] biases2_0_d0;
input  [63:0] biases2_0_q0;
output  [4:0] biases2_0_address1;
output   biases2_0_ce1;
output   biases2_0_we1;
output  [63:0] biases2_0_d1;
input  [63:0] biases2_0_q1;
input  [63:0] bias_norm_17;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] tmp_reg_375;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_162;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] reg_166;
wire   [63:0] grp_fu_154_p2;
reg   [63:0] reg_170;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] grp_fu_158_p2;
reg   [63:0] reg_174;
wire   [0:0] tmp_fu_186_p3;
reg   [4:0] biases2_0_addr_reg_379;
reg   [4:0] biases2_0_addr_reg_379_pp0_iter1_reg;
reg   [4:0] biases2_0_addr_reg_379_pp0_iter2_reg;
reg   [4:0] biases2_0_addr_reg_379_pp0_iter3_reg;
reg   [4:0] biases2_0_addr_reg_379_pp0_iter4_reg;
reg   [4:0] biases2_0_addr_reg_379_pp0_iter5_reg;
reg   [4:0] biases2_0_addr_reg_379_pp0_iter6_reg;
reg   [4:0] biases2_0_addr_reg_379_pp0_iter7_reg;
reg   [4:0] biases2_0_addr_reg_379_pp0_iter8_reg;
reg   [4:0] biases2_0_addr_reg_379_pp0_iter9_reg;
reg   [4:0] biases2_0_addr_reg_379_pp0_iter10_reg;
reg   [4:0] biases2_0_addr_reg_379_pp0_iter11_reg;
reg   [4:0] biases2_0_addr_reg_379_pp0_iter12_reg;
reg   [4:0] biases2_0_addr_reg_379_pp0_iter13_reg;
reg   [4:0] biases2_0_addr_reg_379_pp0_iter14_reg;
reg   [4:0] biases2_0_addr_reg_379_pp0_iter15_reg;
reg   [2:0] tmp_3_reg_384;
reg   [0:0] tmp_2_reg_390;
reg   [4:0] biases2_1_addr_reg_395;
reg   [4:0] biases2_1_addr_reg_395_pp0_iter1_reg;
reg   [4:0] biases2_1_addr_reg_395_pp0_iter2_reg;
reg   [4:0] biases2_1_addr_reg_395_pp0_iter3_reg;
reg   [4:0] biases2_1_addr_reg_395_pp0_iter4_reg;
reg   [4:0] biases2_1_addr_reg_395_pp0_iter5_reg;
reg   [4:0] biases2_1_addr_reg_395_pp0_iter6_reg;
reg   [4:0] biases2_1_addr_reg_395_pp0_iter7_reg;
reg   [4:0] biases2_1_addr_reg_395_pp0_iter8_reg;
reg   [4:0] biases2_1_addr_reg_395_pp0_iter9_reg;
reg   [4:0] biases2_1_addr_reg_395_pp0_iter10_reg;
reg   [4:0] biases2_1_addr_reg_395_pp0_iter11_reg;
reg   [4:0] biases2_1_addr_reg_395_pp0_iter12_reg;
reg   [4:0] biases2_1_addr_reg_395_pp0_iter13_reg;
reg   [4:0] biases2_1_addr_reg_395_pp0_iter14_reg;
reg   [4:0] biases2_1_addr_reg_395_pp0_iter15_reg;
reg   [4:0] biases2_0_addr_1_reg_400;
reg   [4:0] biases2_0_addr_1_reg_400_pp0_iter1_reg;
reg   [4:0] biases2_0_addr_1_reg_400_pp0_iter2_reg;
reg   [4:0] biases2_0_addr_1_reg_400_pp0_iter3_reg;
reg   [4:0] biases2_0_addr_1_reg_400_pp0_iter4_reg;
reg   [4:0] biases2_0_addr_1_reg_400_pp0_iter5_reg;
reg   [4:0] biases2_0_addr_1_reg_400_pp0_iter6_reg;
reg   [4:0] biases2_0_addr_1_reg_400_pp0_iter7_reg;
reg   [4:0] biases2_0_addr_1_reg_400_pp0_iter8_reg;
reg   [4:0] biases2_0_addr_1_reg_400_pp0_iter9_reg;
reg   [4:0] biases2_0_addr_1_reg_400_pp0_iter10_reg;
reg   [4:0] biases2_0_addr_1_reg_400_pp0_iter11_reg;
reg   [4:0] biases2_0_addr_1_reg_400_pp0_iter12_reg;
reg   [4:0] biases2_0_addr_1_reg_400_pp0_iter13_reg;
reg   [4:0] biases2_0_addr_1_reg_400_pp0_iter14_reg;
reg   [4:0] biases2_0_addr_1_reg_400_pp0_iter15_reg;
reg   [4:0] biases2_1_addr_1_reg_405;
reg   [4:0] biases2_1_addr_1_reg_405_pp0_iter1_reg;
reg   [4:0] biases2_1_addr_1_reg_405_pp0_iter2_reg;
reg   [4:0] biases2_1_addr_1_reg_405_pp0_iter3_reg;
reg   [4:0] biases2_1_addr_1_reg_405_pp0_iter4_reg;
reg   [4:0] biases2_1_addr_1_reg_405_pp0_iter5_reg;
reg   [4:0] biases2_1_addr_1_reg_405_pp0_iter6_reg;
reg   [4:0] biases2_1_addr_1_reg_405_pp0_iter7_reg;
reg   [4:0] biases2_1_addr_1_reg_405_pp0_iter8_reg;
reg   [4:0] biases2_1_addr_1_reg_405_pp0_iter9_reg;
reg   [4:0] biases2_1_addr_1_reg_405_pp0_iter10_reg;
reg   [4:0] biases2_1_addr_1_reg_405_pp0_iter11_reg;
reg   [4:0] biases2_1_addr_1_reg_405_pp0_iter12_reg;
reg   [4:0] biases2_1_addr_1_reg_405_pp0_iter13_reg;
reg   [4:0] biases2_1_addr_1_reg_405_pp0_iter14_reg;
reg   [4:0] biases2_1_addr_1_reg_405_pp0_iter15_reg;
reg   [63:0] biases2_0_load_1_reg_410;
reg   [63:0] biases2_1_load_1_reg_415;
reg   [4:0] biases2_0_addr_2_reg_420;
reg   [4:0] biases2_0_addr_2_reg_420_pp0_iter1_reg;
reg   [4:0] biases2_0_addr_2_reg_420_pp0_iter2_reg;
reg   [4:0] biases2_0_addr_2_reg_420_pp0_iter3_reg;
reg   [4:0] biases2_0_addr_2_reg_420_pp0_iter4_reg;
reg   [4:0] biases2_0_addr_2_reg_420_pp0_iter5_reg;
reg   [4:0] biases2_0_addr_2_reg_420_pp0_iter6_reg;
reg   [4:0] biases2_0_addr_2_reg_420_pp0_iter7_reg;
reg   [4:0] biases2_0_addr_2_reg_420_pp0_iter8_reg;
reg   [4:0] biases2_0_addr_2_reg_420_pp0_iter9_reg;
reg   [4:0] biases2_0_addr_2_reg_420_pp0_iter10_reg;
reg   [4:0] biases2_0_addr_2_reg_420_pp0_iter11_reg;
reg   [4:0] biases2_0_addr_2_reg_420_pp0_iter12_reg;
reg   [4:0] biases2_0_addr_2_reg_420_pp0_iter13_reg;
reg   [4:0] biases2_0_addr_2_reg_420_pp0_iter14_reg;
reg   [4:0] biases2_0_addr_2_reg_420_pp0_iter15_reg;
reg   [4:0] biases2_1_addr_2_reg_425;
reg   [4:0] biases2_1_addr_2_reg_425_pp0_iter1_reg;
reg   [4:0] biases2_1_addr_2_reg_425_pp0_iter2_reg;
reg   [4:0] biases2_1_addr_2_reg_425_pp0_iter3_reg;
reg   [4:0] biases2_1_addr_2_reg_425_pp0_iter4_reg;
reg   [4:0] biases2_1_addr_2_reg_425_pp0_iter5_reg;
reg   [4:0] biases2_1_addr_2_reg_425_pp0_iter6_reg;
reg   [4:0] biases2_1_addr_2_reg_425_pp0_iter7_reg;
reg   [4:0] biases2_1_addr_2_reg_425_pp0_iter8_reg;
reg   [4:0] biases2_1_addr_2_reg_425_pp0_iter9_reg;
reg   [4:0] biases2_1_addr_2_reg_425_pp0_iter10_reg;
reg   [4:0] biases2_1_addr_2_reg_425_pp0_iter11_reg;
reg   [4:0] biases2_1_addr_2_reg_425_pp0_iter12_reg;
reg   [4:0] biases2_1_addr_2_reg_425_pp0_iter13_reg;
reg   [4:0] biases2_1_addr_2_reg_425_pp0_iter14_reg;
reg   [4:0] biases2_1_addr_2_reg_425_pp0_iter15_reg;
reg   [4:0] biases2_0_addr_3_reg_430;
reg   [4:0] biases2_0_addr_3_reg_430_pp0_iter1_reg;
reg   [4:0] biases2_0_addr_3_reg_430_pp0_iter2_reg;
reg   [4:0] biases2_0_addr_3_reg_430_pp0_iter3_reg;
reg   [4:0] biases2_0_addr_3_reg_430_pp0_iter4_reg;
reg   [4:0] biases2_0_addr_3_reg_430_pp0_iter5_reg;
reg   [4:0] biases2_0_addr_3_reg_430_pp0_iter6_reg;
reg   [4:0] biases2_0_addr_3_reg_430_pp0_iter7_reg;
reg   [4:0] biases2_0_addr_3_reg_430_pp0_iter8_reg;
reg   [4:0] biases2_0_addr_3_reg_430_pp0_iter9_reg;
reg   [4:0] biases2_0_addr_3_reg_430_pp0_iter10_reg;
reg   [4:0] biases2_0_addr_3_reg_430_pp0_iter11_reg;
reg   [4:0] biases2_0_addr_3_reg_430_pp0_iter12_reg;
reg   [4:0] biases2_0_addr_3_reg_430_pp0_iter13_reg;
reg   [4:0] biases2_0_addr_3_reg_430_pp0_iter14_reg;
reg   [4:0] biases2_0_addr_3_reg_430_pp0_iter15_reg;
reg   [4:0] biases2_0_addr_3_reg_430_pp0_iter16_reg;
reg   [4:0] biases2_1_addr_3_reg_435;
reg   [4:0] biases2_1_addr_3_reg_435_pp0_iter1_reg;
reg   [4:0] biases2_1_addr_3_reg_435_pp0_iter2_reg;
reg   [4:0] biases2_1_addr_3_reg_435_pp0_iter3_reg;
reg   [4:0] biases2_1_addr_3_reg_435_pp0_iter4_reg;
reg   [4:0] biases2_1_addr_3_reg_435_pp0_iter5_reg;
reg   [4:0] biases2_1_addr_3_reg_435_pp0_iter6_reg;
reg   [4:0] biases2_1_addr_3_reg_435_pp0_iter7_reg;
reg   [4:0] biases2_1_addr_3_reg_435_pp0_iter8_reg;
reg   [4:0] biases2_1_addr_3_reg_435_pp0_iter9_reg;
reg   [4:0] biases2_1_addr_3_reg_435_pp0_iter10_reg;
reg   [4:0] biases2_1_addr_3_reg_435_pp0_iter11_reg;
reg   [4:0] biases2_1_addr_3_reg_435_pp0_iter12_reg;
reg   [4:0] biases2_1_addr_3_reg_435_pp0_iter13_reg;
reg   [4:0] biases2_1_addr_3_reg_435_pp0_iter14_reg;
reg   [4:0] biases2_1_addr_3_reg_435_pp0_iter15_reg;
reg   [4:0] biases2_1_addr_3_reg_435_pp0_iter16_reg;
wire   [63:0] bitcast_ln172_fu_290_p1;
wire   [63:0] bitcast_ln172_1_fu_295_p1;
reg   [63:0] biases2_0_load_3_reg_450;
reg   [63:0] biases2_1_load_3_reg_455;
wire   [63:0] bitcast_ln172_2_fu_300_p1;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] bitcast_ln172_3_fu_304_p1;
wire   [63:0] bitcast_ln172_4_fu_308_p1;
wire   [63:0] bitcast_ln172_5_fu_313_p1;
wire   [63:0] bitcast_ln172_6_fu_318_p1;
wire   [63:0] bitcast_ln172_7_fu_322_p1;
reg   [63:0] div147_2_reg_490;
reg   [63:0] div147_3_reg_495;
reg   [63:0] div147_6_reg_500;
reg   [63:0] div147_7_reg_505;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln121_fu_204_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln172_fu_228_p1;
wire   [63:0] zext_ln172_1_fu_271_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln172_2_fu_284_p1;
reg   [6:0] i_fu_62;
wire   [6:0] add_ln171_fu_252_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_2;
reg    biases2_0_ce1_local;
reg   [4:0] biases2_0_address1_local;
reg    biases2_0_ce0_local;
reg   [4:0] biases2_0_address0_local;
reg    biases2_0_we1_local;
reg   [63:0] biases2_0_d1_local;
wire   [63:0] bitcast_ln172_8_fu_326_p1;
wire    ap_block_pp0_stage2;
reg    biases2_0_we0_local;
reg   [63:0] biases2_0_d0_local;
wire   [63:0] bitcast_ln172_9_fu_331_p1;
wire   [63:0] bitcast_ln172_10_fu_344_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] bitcast_ln172_11_fu_354_p1;
reg    biases2_1_ce1_local;
reg   [4:0] biases2_1_address1_local;
reg    biases2_1_ce0_local;
reg   [4:0] biases2_1_address0_local;
reg    biases2_1_we1_local;
reg   [63:0] biases2_1_d1_local;
wire   [63:0] bitcast_ln172_12_fu_335_p1;
reg    biases2_1_we0_local;
reg   [63:0] biases2_1_d0_local;
wire   [63:0] bitcast_ln172_13_fu_340_p1;
wire   [63:0] bitcast_ln172_14_fu_349_p1;
wire   [63:0] bitcast_ln172_15_fu_358_p1;
reg   [63:0] grp_fu_154_p0;
reg   [63:0] grp_fu_158_p0;
wire   [4:0] lshr_ln121_3_fu_194_p4;
wire   [3:0] tmp_s_fu_210_p4;
wire   [4:0] or_ln2_fu_220_p3;
wire   [4:0] or_ln172_1_fu_263_p4;
wire   [4:0] or_ln172_2_fu_277_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg    ap_loop_exit_ready_pp0_iter15_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to16;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_62 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U267(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_154_p0),.din1(bias_norm_17),.ce(1'b1),.dout(grp_fu_154_p2));
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U268(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_158_p0),.din1(bias_norm_17),.ce(1'b1),.dout(grp_fu_158_p2));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_loop_exit_ready_pp0_iter15_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_186_p3 == 1'd0))) begin
            i_fu_62 <= add_ln171_fu_252_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_62 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_0_addr_1_reg_400[4 : 1] <= zext_ln172_fu_228_p1[4 : 1];
        biases2_0_addr_1_reg_400_pp0_iter10_reg[4 : 1] <= biases2_0_addr_1_reg_400_pp0_iter9_reg[4 : 1];
        biases2_0_addr_1_reg_400_pp0_iter11_reg[4 : 1] <= biases2_0_addr_1_reg_400_pp0_iter10_reg[4 : 1];
        biases2_0_addr_1_reg_400_pp0_iter12_reg[4 : 1] <= biases2_0_addr_1_reg_400_pp0_iter11_reg[4 : 1];
        biases2_0_addr_1_reg_400_pp0_iter13_reg[4 : 1] <= biases2_0_addr_1_reg_400_pp0_iter12_reg[4 : 1];
        biases2_0_addr_1_reg_400_pp0_iter14_reg[4 : 1] <= biases2_0_addr_1_reg_400_pp0_iter13_reg[4 : 1];
        biases2_0_addr_1_reg_400_pp0_iter15_reg[4 : 1] <= biases2_0_addr_1_reg_400_pp0_iter14_reg[4 : 1];
        biases2_0_addr_1_reg_400_pp0_iter1_reg[4 : 1] <= biases2_0_addr_1_reg_400[4 : 1];
        biases2_0_addr_1_reg_400_pp0_iter2_reg[4 : 1] <= biases2_0_addr_1_reg_400_pp0_iter1_reg[4 : 1];
        biases2_0_addr_1_reg_400_pp0_iter3_reg[4 : 1] <= biases2_0_addr_1_reg_400_pp0_iter2_reg[4 : 1];
        biases2_0_addr_1_reg_400_pp0_iter4_reg[4 : 1] <= biases2_0_addr_1_reg_400_pp0_iter3_reg[4 : 1];
        biases2_0_addr_1_reg_400_pp0_iter5_reg[4 : 1] <= biases2_0_addr_1_reg_400_pp0_iter4_reg[4 : 1];
        biases2_0_addr_1_reg_400_pp0_iter6_reg[4 : 1] <= biases2_0_addr_1_reg_400_pp0_iter5_reg[4 : 1];
        biases2_0_addr_1_reg_400_pp0_iter7_reg[4 : 1] <= biases2_0_addr_1_reg_400_pp0_iter6_reg[4 : 1];
        biases2_0_addr_1_reg_400_pp0_iter8_reg[4 : 1] <= biases2_0_addr_1_reg_400_pp0_iter7_reg[4 : 1];
        biases2_0_addr_1_reg_400_pp0_iter9_reg[4 : 1] <= biases2_0_addr_1_reg_400_pp0_iter8_reg[4 : 1];
        biases2_0_addr_reg_379 <= zext_ln121_fu_204_p1;
        biases2_0_addr_reg_379_pp0_iter10_reg <= biases2_0_addr_reg_379_pp0_iter9_reg;
        biases2_0_addr_reg_379_pp0_iter11_reg <= biases2_0_addr_reg_379_pp0_iter10_reg;
        biases2_0_addr_reg_379_pp0_iter12_reg <= biases2_0_addr_reg_379_pp0_iter11_reg;
        biases2_0_addr_reg_379_pp0_iter13_reg <= biases2_0_addr_reg_379_pp0_iter12_reg;
        biases2_0_addr_reg_379_pp0_iter14_reg <= biases2_0_addr_reg_379_pp0_iter13_reg;
        biases2_0_addr_reg_379_pp0_iter15_reg <= biases2_0_addr_reg_379_pp0_iter14_reg;
        biases2_0_addr_reg_379_pp0_iter1_reg <= biases2_0_addr_reg_379;
        biases2_0_addr_reg_379_pp0_iter2_reg <= biases2_0_addr_reg_379_pp0_iter1_reg;
        biases2_0_addr_reg_379_pp0_iter3_reg <= biases2_0_addr_reg_379_pp0_iter2_reg;
        biases2_0_addr_reg_379_pp0_iter4_reg <= biases2_0_addr_reg_379_pp0_iter3_reg;
        biases2_0_addr_reg_379_pp0_iter5_reg <= biases2_0_addr_reg_379_pp0_iter4_reg;
        biases2_0_addr_reg_379_pp0_iter6_reg <= biases2_0_addr_reg_379_pp0_iter5_reg;
        biases2_0_addr_reg_379_pp0_iter7_reg <= biases2_0_addr_reg_379_pp0_iter6_reg;
        biases2_0_addr_reg_379_pp0_iter8_reg <= biases2_0_addr_reg_379_pp0_iter7_reg;
        biases2_0_addr_reg_379_pp0_iter9_reg <= biases2_0_addr_reg_379_pp0_iter8_reg;
        biases2_1_addr_1_reg_405[4 : 1] <= zext_ln172_fu_228_p1[4 : 1];
        biases2_1_addr_1_reg_405_pp0_iter10_reg[4 : 1] <= biases2_1_addr_1_reg_405_pp0_iter9_reg[4 : 1];
        biases2_1_addr_1_reg_405_pp0_iter11_reg[4 : 1] <= biases2_1_addr_1_reg_405_pp0_iter10_reg[4 : 1];
        biases2_1_addr_1_reg_405_pp0_iter12_reg[4 : 1] <= biases2_1_addr_1_reg_405_pp0_iter11_reg[4 : 1];
        biases2_1_addr_1_reg_405_pp0_iter13_reg[4 : 1] <= biases2_1_addr_1_reg_405_pp0_iter12_reg[4 : 1];
        biases2_1_addr_1_reg_405_pp0_iter14_reg[4 : 1] <= biases2_1_addr_1_reg_405_pp0_iter13_reg[4 : 1];
        biases2_1_addr_1_reg_405_pp0_iter15_reg[4 : 1] <= biases2_1_addr_1_reg_405_pp0_iter14_reg[4 : 1];
        biases2_1_addr_1_reg_405_pp0_iter1_reg[4 : 1] <= biases2_1_addr_1_reg_405[4 : 1];
        biases2_1_addr_1_reg_405_pp0_iter2_reg[4 : 1] <= biases2_1_addr_1_reg_405_pp0_iter1_reg[4 : 1];
        biases2_1_addr_1_reg_405_pp0_iter3_reg[4 : 1] <= biases2_1_addr_1_reg_405_pp0_iter2_reg[4 : 1];
        biases2_1_addr_1_reg_405_pp0_iter4_reg[4 : 1] <= biases2_1_addr_1_reg_405_pp0_iter3_reg[4 : 1];
        biases2_1_addr_1_reg_405_pp0_iter5_reg[4 : 1] <= biases2_1_addr_1_reg_405_pp0_iter4_reg[4 : 1];
        biases2_1_addr_1_reg_405_pp0_iter6_reg[4 : 1] <= biases2_1_addr_1_reg_405_pp0_iter5_reg[4 : 1];
        biases2_1_addr_1_reg_405_pp0_iter7_reg[4 : 1] <= biases2_1_addr_1_reg_405_pp0_iter6_reg[4 : 1];
        biases2_1_addr_1_reg_405_pp0_iter8_reg[4 : 1] <= biases2_1_addr_1_reg_405_pp0_iter7_reg[4 : 1];
        biases2_1_addr_1_reg_405_pp0_iter9_reg[4 : 1] <= biases2_1_addr_1_reg_405_pp0_iter8_reg[4 : 1];
        biases2_1_addr_reg_395 <= zext_ln121_fu_204_p1;
        biases2_1_addr_reg_395_pp0_iter10_reg <= biases2_1_addr_reg_395_pp0_iter9_reg;
        biases2_1_addr_reg_395_pp0_iter11_reg <= biases2_1_addr_reg_395_pp0_iter10_reg;
        biases2_1_addr_reg_395_pp0_iter12_reg <= biases2_1_addr_reg_395_pp0_iter11_reg;
        biases2_1_addr_reg_395_pp0_iter13_reg <= biases2_1_addr_reg_395_pp0_iter12_reg;
        biases2_1_addr_reg_395_pp0_iter14_reg <= biases2_1_addr_reg_395_pp0_iter13_reg;
        biases2_1_addr_reg_395_pp0_iter15_reg <= biases2_1_addr_reg_395_pp0_iter14_reg;
        biases2_1_addr_reg_395_pp0_iter1_reg <= biases2_1_addr_reg_395;
        biases2_1_addr_reg_395_pp0_iter2_reg <= biases2_1_addr_reg_395_pp0_iter1_reg;
        biases2_1_addr_reg_395_pp0_iter3_reg <= biases2_1_addr_reg_395_pp0_iter2_reg;
        biases2_1_addr_reg_395_pp0_iter4_reg <= biases2_1_addr_reg_395_pp0_iter3_reg;
        biases2_1_addr_reg_395_pp0_iter5_reg <= biases2_1_addr_reg_395_pp0_iter4_reg;
        biases2_1_addr_reg_395_pp0_iter6_reg <= biases2_1_addr_reg_395_pp0_iter5_reg;
        biases2_1_addr_reg_395_pp0_iter7_reg <= biases2_1_addr_reg_395_pp0_iter6_reg;
        biases2_1_addr_reg_395_pp0_iter8_reg <= biases2_1_addr_reg_395_pp0_iter7_reg;
        biases2_1_addr_reg_395_pp0_iter9_reg <= biases2_1_addr_reg_395_pp0_iter8_reg;
        tmp_2_reg_390 <= ap_sig_allocacmp_i_2[32'd1];
        tmp_3_reg_384 <= {{ap_sig_allocacmp_i_2[5:3]}};
        tmp_reg_375 <= ap_sig_allocacmp_i_2[32'd6];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_0_addr_2_reg_420[0] <= zext_ln172_1_fu_271_p1[0];
biases2_0_addr_2_reg_420[4 : 2] <= zext_ln172_1_fu_271_p1[4 : 2];
        biases2_0_addr_2_reg_420_pp0_iter10_reg[0] <= biases2_0_addr_2_reg_420_pp0_iter9_reg[0];
biases2_0_addr_2_reg_420_pp0_iter10_reg[4 : 2] <= biases2_0_addr_2_reg_420_pp0_iter9_reg[4 : 2];
        biases2_0_addr_2_reg_420_pp0_iter11_reg[0] <= biases2_0_addr_2_reg_420_pp0_iter10_reg[0];
biases2_0_addr_2_reg_420_pp0_iter11_reg[4 : 2] <= biases2_0_addr_2_reg_420_pp0_iter10_reg[4 : 2];
        biases2_0_addr_2_reg_420_pp0_iter12_reg[0] <= biases2_0_addr_2_reg_420_pp0_iter11_reg[0];
biases2_0_addr_2_reg_420_pp0_iter12_reg[4 : 2] <= biases2_0_addr_2_reg_420_pp0_iter11_reg[4 : 2];
        biases2_0_addr_2_reg_420_pp0_iter13_reg[0] <= biases2_0_addr_2_reg_420_pp0_iter12_reg[0];
biases2_0_addr_2_reg_420_pp0_iter13_reg[4 : 2] <= biases2_0_addr_2_reg_420_pp0_iter12_reg[4 : 2];
        biases2_0_addr_2_reg_420_pp0_iter14_reg[0] <= biases2_0_addr_2_reg_420_pp0_iter13_reg[0];
biases2_0_addr_2_reg_420_pp0_iter14_reg[4 : 2] <= biases2_0_addr_2_reg_420_pp0_iter13_reg[4 : 2];
        biases2_0_addr_2_reg_420_pp0_iter15_reg[0] <= biases2_0_addr_2_reg_420_pp0_iter14_reg[0];
biases2_0_addr_2_reg_420_pp0_iter15_reg[4 : 2] <= biases2_0_addr_2_reg_420_pp0_iter14_reg[4 : 2];
        biases2_0_addr_2_reg_420_pp0_iter1_reg[0] <= biases2_0_addr_2_reg_420[0];
biases2_0_addr_2_reg_420_pp0_iter1_reg[4 : 2] <= biases2_0_addr_2_reg_420[4 : 2];
        biases2_0_addr_2_reg_420_pp0_iter2_reg[0] <= biases2_0_addr_2_reg_420_pp0_iter1_reg[0];
biases2_0_addr_2_reg_420_pp0_iter2_reg[4 : 2] <= biases2_0_addr_2_reg_420_pp0_iter1_reg[4 : 2];
        biases2_0_addr_2_reg_420_pp0_iter3_reg[0] <= biases2_0_addr_2_reg_420_pp0_iter2_reg[0];
biases2_0_addr_2_reg_420_pp0_iter3_reg[4 : 2] <= biases2_0_addr_2_reg_420_pp0_iter2_reg[4 : 2];
        biases2_0_addr_2_reg_420_pp0_iter4_reg[0] <= biases2_0_addr_2_reg_420_pp0_iter3_reg[0];
biases2_0_addr_2_reg_420_pp0_iter4_reg[4 : 2] <= biases2_0_addr_2_reg_420_pp0_iter3_reg[4 : 2];
        biases2_0_addr_2_reg_420_pp0_iter5_reg[0] <= biases2_0_addr_2_reg_420_pp0_iter4_reg[0];
biases2_0_addr_2_reg_420_pp0_iter5_reg[4 : 2] <= biases2_0_addr_2_reg_420_pp0_iter4_reg[4 : 2];
        biases2_0_addr_2_reg_420_pp0_iter6_reg[0] <= biases2_0_addr_2_reg_420_pp0_iter5_reg[0];
biases2_0_addr_2_reg_420_pp0_iter6_reg[4 : 2] <= biases2_0_addr_2_reg_420_pp0_iter5_reg[4 : 2];
        biases2_0_addr_2_reg_420_pp0_iter7_reg[0] <= biases2_0_addr_2_reg_420_pp0_iter6_reg[0];
biases2_0_addr_2_reg_420_pp0_iter7_reg[4 : 2] <= biases2_0_addr_2_reg_420_pp0_iter6_reg[4 : 2];
        biases2_0_addr_2_reg_420_pp0_iter8_reg[0] <= biases2_0_addr_2_reg_420_pp0_iter7_reg[0];
biases2_0_addr_2_reg_420_pp0_iter8_reg[4 : 2] <= biases2_0_addr_2_reg_420_pp0_iter7_reg[4 : 2];
        biases2_0_addr_2_reg_420_pp0_iter9_reg[0] <= biases2_0_addr_2_reg_420_pp0_iter8_reg[0];
biases2_0_addr_2_reg_420_pp0_iter9_reg[4 : 2] <= biases2_0_addr_2_reg_420_pp0_iter8_reg[4 : 2];
        biases2_0_addr_3_reg_430[4 : 2] <= zext_ln172_2_fu_284_p1[4 : 2];
        biases2_0_addr_3_reg_430_pp0_iter10_reg[4 : 2] <= biases2_0_addr_3_reg_430_pp0_iter9_reg[4 : 2];
        biases2_0_addr_3_reg_430_pp0_iter11_reg[4 : 2] <= biases2_0_addr_3_reg_430_pp0_iter10_reg[4 : 2];
        biases2_0_addr_3_reg_430_pp0_iter12_reg[4 : 2] <= biases2_0_addr_3_reg_430_pp0_iter11_reg[4 : 2];
        biases2_0_addr_3_reg_430_pp0_iter13_reg[4 : 2] <= biases2_0_addr_3_reg_430_pp0_iter12_reg[4 : 2];
        biases2_0_addr_3_reg_430_pp0_iter14_reg[4 : 2] <= biases2_0_addr_3_reg_430_pp0_iter13_reg[4 : 2];
        biases2_0_addr_3_reg_430_pp0_iter15_reg[4 : 2] <= biases2_0_addr_3_reg_430_pp0_iter14_reg[4 : 2];
        biases2_0_addr_3_reg_430_pp0_iter16_reg[4 : 2] <= biases2_0_addr_3_reg_430_pp0_iter15_reg[4 : 2];
        biases2_0_addr_3_reg_430_pp0_iter1_reg[4 : 2] <= biases2_0_addr_3_reg_430[4 : 2];
        biases2_0_addr_3_reg_430_pp0_iter2_reg[4 : 2] <= biases2_0_addr_3_reg_430_pp0_iter1_reg[4 : 2];
        biases2_0_addr_3_reg_430_pp0_iter3_reg[4 : 2] <= biases2_0_addr_3_reg_430_pp0_iter2_reg[4 : 2];
        biases2_0_addr_3_reg_430_pp0_iter4_reg[4 : 2] <= biases2_0_addr_3_reg_430_pp0_iter3_reg[4 : 2];
        biases2_0_addr_3_reg_430_pp0_iter5_reg[4 : 2] <= biases2_0_addr_3_reg_430_pp0_iter4_reg[4 : 2];
        biases2_0_addr_3_reg_430_pp0_iter6_reg[4 : 2] <= biases2_0_addr_3_reg_430_pp0_iter5_reg[4 : 2];
        biases2_0_addr_3_reg_430_pp0_iter7_reg[4 : 2] <= biases2_0_addr_3_reg_430_pp0_iter6_reg[4 : 2];
        biases2_0_addr_3_reg_430_pp0_iter8_reg[4 : 2] <= biases2_0_addr_3_reg_430_pp0_iter7_reg[4 : 2];
        biases2_0_addr_3_reg_430_pp0_iter9_reg[4 : 2] <= biases2_0_addr_3_reg_430_pp0_iter8_reg[4 : 2];
        biases2_1_addr_2_reg_425[0] <= zext_ln172_1_fu_271_p1[0];
biases2_1_addr_2_reg_425[4 : 2] <= zext_ln172_1_fu_271_p1[4 : 2];
        biases2_1_addr_2_reg_425_pp0_iter10_reg[0] <= biases2_1_addr_2_reg_425_pp0_iter9_reg[0];
biases2_1_addr_2_reg_425_pp0_iter10_reg[4 : 2] <= biases2_1_addr_2_reg_425_pp0_iter9_reg[4 : 2];
        biases2_1_addr_2_reg_425_pp0_iter11_reg[0] <= biases2_1_addr_2_reg_425_pp0_iter10_reg[0];
biases2_1_addr_2_reg_425_pp0_iter11_reg[4 : 2] <= biases2_1_addr_2_reg_425_pp0_iter10_reg[4 : 2];
        biases2_1_addr_2_reg_425_pp0_iter12_reg[0] <= biases2_1_addr_2_reg_425_pp0_iter11_reg[0];
biases2_1_addr_2_reg_425_pp0_iter12_reg[4 : 2] <= biases2_1_addr_2_reg_425_pp0_iter11_reg[4 : 2];
        biases2_1_addr_2_reg_425_pp0_iter13_reg[0] <= biases2_1_addr_2_reg_425_pp0_iter12_reg[0];
biases2_1_addr_2_reg_425_pp0_iter13_reg[4 : 2] <= biases2_1_addr_2_reg_425_pp0_iter12_reg[4 : 2];
        biases2_1_addr_2_reg_425_pp0_iter14_reg[0] <= biases2_1_addr_2_reg_425_pp0_iter13_reg[0];
biases2_1_addr_2_reg_425_pp0_iter14_reg[4 : 2] <= biases2_1_addr_2_reg_425_pp0_iter13_reg[4 : 2];
        biases2_1_addr_2_reg_425_pp0_iter15_reg[0] <= biases2_1_addr_2_reg_425_pp0_iter14_reg[0];
biases2_1_addr_2_reg_425_pp0_iter15_reg[4 : 2] <= biases2_1_addr_2_reg_425_pp0_iter14_reg[4 : 2];
        biases2_1_addr_2_reg_425_pp0_iter1_reg[0] <= biases2_1_addr_2_reg_425[0];
biases2_1_addr_2_reg_425_pp0_iter1_reg[4 : 2] <= biases2_1_addr_2_reg_425[4 : 2];
        biases2_1_addr_2_reg_425_pp0_iter2_reg[0] <= biases2_1_addr_2_reg_425_pp0_iter1_reg[0];
biases2_1_addr_2_reg_425_pp0_iter2_reg[4 : 2] <= biases2_1_addr_2_reg_425_pp0_iter1_reg[4 : 2];
        biases2_1_addr_2_reg_425_pp0_iter3_reg[0] <= biases2_1_addr_2_reg_425_pp0_iter2_reg[0];
biases2_1_addr_2_reg_425_pp0_iter3_reg[4 : 2] <= biases2_1_addr_2_reg_425_pp0_iter2_reg[4 : 2];
        biases2_1_addr_2_reg_425_pp0_iter4_reg[0] <= biases2_1_addr_2_reg_425_pp0_iter3_reg[0];
biases2_1_addr_2_reg_425_pp0_iter4_reg[4 : 2] <= biases2_1_addr_2_reg_425_pp0_iter3_reg[4 : 2];
        biases2_1_addr_2_reg_425_pp0_iter5_reg[0] <= biases2_1_addr_2_reg_425_pp0_iter4_reg[0];
biases2_1_addr_2_reg_425_pp0_iter5_reg[4 : 2] <= biases2_1_addr_2_reg_425_pp0_iter4_reg[4 : 2];
        biases2_1_addr_2_reg_425_pp0_iter6_reg[0] <= biases2_1_addr_2_reg_425_pp0_iter5_reg[0];
biases2_1_addr_2_reg_425_pp0_iter6_reg[4 : 2] <= biases2_1_addr_2_reg_425_pp0_iter5_reg[4 : 2];
        biases2_1_addr_2_reg_425_pp0_iter7_reg[0] <= biases2_1_addr_2_reg_425_pp0_iter6_reg[0];
biases2_1_addr_2_reg_425_pp0_iter7_reg[4 : 2] <= biases2_1_addr_2_reg_425_pp0_iter6_reg[4 : 2];
        biases2_1_addr_2_reg_425_pp0_iter8_reg[0] <= biases2_1_addr_2_reg_425_pp0_iter7_reg[0];
biases2_1_addr_2_reg_425_pp0_iter8_reg[4 : 2] <= biases2_1_addr_2_reg_425_pp0_iter7_reg[4 : 2];
        biases2_1_addr_2_reg_425_pp0_iter9_reg[0] <= biases2_1_addr_2_reg_425_pp0_iter8_reg[0];
biases2_1_addr_2_reg_425_pp0_iter9_reg[4 : 2] <= biases2_1_addr_2_reg_425_pp0_iter8_reg[4 : 2];
        biases2_1_addr_3_reg_435[4 : 2] <= zext_ln172_2_fu_284_p1[4 : 2];
        biases2_1_addr_3_reg_435_pp0_iter10_reg[4 : 2] <= biases2_1_addr_3_reg_435_pp0_iter9_reg[4 : 2];
        biases2_1_addr_3_reg_435_pp0_iter11_reg[4 : 2] <= biases2_1_addr_3_reg_435_pp0_iter10_reg[4 : 2];
        biases2_1_addr_3_reg_435_pp0_iter12_reg[4 : 2] <= biases2_1_addr_3_reg_435_pp0_iter11_reg[4 : 2];
        biases2_1_addr_3_reg_435_pp0_iter13_reg[4 : 2] <= biases2_1_addr_3_reg_435_pp0_iter12_reg[4 : 2];
        biases2_1_addr_3_reg_435_pp0_iter14_reg[4 : 2] <= biases2_1_addr_3_reg_435_pp0_iter13_reg[4 : 2];
        biases2_1_addr_3_reg_435_pp0_iter15_reg[4 : 2] <= biases2_1_addr_3_reg_435_pp0_iter14_reg[4 : 2];
        biases2_1_addr_3_reg_435_pp0_iter16_reg[4 : 2] <= biases2_1_addr_3_reg_435_pp0_iter15_reg[4 : 2];
        biases2_1_addr_3_reg_435_pp0_iter1_reg[4 : 2] <= biases2_1_addr_3_reg_435[4 : 2];
        biases2_1_addr_3_reg_435_pp0_iter2_reg[4 : 2] <= biases2_1_addr_3_reg_435_pp0_iter1_reg[4 : 2];
        biases2_1_addr_3_reg_435_pp0_iter3_reg[4 : 2] <= biases2_1_addr_3_reg_435_pp0_iter2_reg[4 : 2];
        biases2_1_addr_3_reg_435_pp0_iter4_reg[4 : 2] <= biases2_1_addr_3_reg_435_pp0_iter3_reg[4 : 2];
        biases2_1_addr_3_reg_435_pp0_iter5_reg[4 : 2] <= biases2_1_addr_3_reg_435_pp0_iter4_reg[4 : 2];
        biases2_1_addr_3_reg_435_pp0_iter6_reg[4 : 2] <= biases2_1_addr_3_reg_435_pp0_iter5_reg[4 : 2];
        biases2_1_addr_3_reg_435_pp0_iter7_reg[4 : 2] <= biases2_1_addr_3_reg_435_pp0_iter6_reg[4 : 2];
        biases2_1_addr_3_reg_435_pp0_iter8_reg[4 : 2] <= biases2_1_addr_3_reg_435_pp0_iter7_reg[4 : 2];
        biases2_1_addr_3_reg_435_pp0_iter9_reg[4 : 2] <= biases2_1_addr_3_reg_435_pp0_iter8_reg[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_0_load_1_reg_410 <= biases2_0_q0;
        biases2_1_load_1_reg_415 <= biases2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases2_0_load_3_reg_450 <= biases2_0_q0;
        biases2_1_load_3_reg_455 <= biases2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        div147_2_reg_490 <= grp_fu_154_p2;
        div147_3_reg_495 <= grp_fu_158_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        div147_6_reg_500 <= grp_fu_154_p2;
        div147_7_reg_505 <= grp_fu_158_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_162 <= biases2_0_q1;
        reg_166 <= biases2_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_170 <= grp_fu_154_p2;
        reg_174 <= grp_fu_158_p2;
    end
end
always @ (*) begin
    if (((tmp_reg_375 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_loop_exit_ready_pp0_iter15_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end
always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to16 = 1'b1;
    end else begin
        ap_idle_pp0_1to16 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_2 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_2 = i_fu_62;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_0_address0_local = biases2_0_addr_3_reg_430_pp0_iter16_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases2_0_address0_local = biases2_0_addr_1_reg_400_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_0_address0_local = zext_ln172_2_fu_284_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_0_address0_local = zext_ln172_fu_228_p1;
    end else begin
        biases2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_0_address1_local = biases2_0_addr_2_reg_420_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases2_0_address1_local = biases2_0_addr_reg_379_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_0_address1_local = zext_ln172_1_fu_271_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_0_address1_local = zext_ln121_fu_204_p1;
    end else begin
        biases2_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        biases2_0_ce0_local = 1'b1;
    end else begin
        biases2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        biases2_0_ce1_local = 1'b1;
    end else begin
        biases2_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_0_d0_local = bitcast_ln172_11_fu_354_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases2_0_d0_local = bitcast_ln172_9_fu_331_p1;
    end else begin
        biases2_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter15 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            biases2_0_d1_local = bitcast_ln172_10_fu_344_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            biases2_0_d1_local = bitcast_ln172_8_fu_326_p1;
        end else begin
            biases2_0_d1_local = 'bx;
        end
    end else begin
        biases2_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        biases2_0_we0_local = 1'b1;
    end else begin
        biases2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        biases2_0_we1_local = 1'b1;
    end else begin
        biases2_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_1_address0_local = biases2_1_addr_3_reg_435_pp0_iter16_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases2_1_address0_local = biases2_1_addr_1_reg_405_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_1_address0_local = zext_ln172_2_fu_284_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_1_address0_local = zext_ln172_fu_228_p1;
    end else begin
        biases2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_1_address1_local = biases2_1_addr_2_reg_425_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases2_1_address1_local = biases2_1_addr_reg_395_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases2_1_address1_local = zext_ln172_1_fu_271_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases2_1_address1_local = zext_ln121_fu_204_p1;
    end else begin
        biases2_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        biases2_1_ce0_local = 1'b1;
    end else begin
        biases2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        biases2_1_ce1_local = 1'b1;
    end else begin
        biases2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        biases2_1_d0_local = bitcast_ln172_15_fu_358_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases2_1_d0_local = bitcast_ln172_13_fu_340_p1;
    end else begin
        biases2_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter15 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            biases2_1_d1_local = bitcast_ln172_14_fu_349_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            biases2_1_d1_local = bitcast_ln172_12_fu_335_p1;
        end else begin
            biases2_1_d1_local = 'bx;
        end
    end else begin
        biases2_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        biases2_1_we0_local = 1'b1;
    end else begin
        biases2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        biases2_1_we1_local = 1'b1;
    end else begin
        biases2_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_154_p0 = bitcast_ln172_6_fu_318_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_154_p0 = bitcast_ln172_4_fu_308_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_154_p0 = bitcast_ln172_2_fu_300_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_154_p0 = bitcast_ln172_fu_290_p1;
    end else begin
        grp_fu_154_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_158_p0 = bitcast_ln172_7_fu_322_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_158_p0 = bitcast_ln172_5_fu_313_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_158_p0 = bitcast_ln172_3_fu_304_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_158_p0 = bitcast_ln172_1_fu_295_p1;
    end else begin
        grp_fu_158_p0 = 'bx;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to16 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln171_fu_252_p2 = (ap_sig_allocacmp_i_2 + 7'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign biases2_0_address0 = biases2_0_address0_local;
assign biases2_0_address1 = biases2_0_address1_local;
assign biases2_0_ce0 = biases2_0_ce0_local;
assign biases2_0_ce1 = biases2_0_ce1_local;
assign biases2_0_d0 = biases2_0_d0_local;
assign biases2_0_d1 = biases2_0_d1_local;
assign biases2_0_we0 = biases2_0_we0_local;
assign biases2_0_we1 = biases2_0_we1_local;
assign biases2_1_address0 = biases2_1_address0_local;
assign biases2_1_address1 = biases2_1_address1_local;
assign biases2_1_ce0 = biases2_1_ce0_local;
assign biases2_1_ce1 = biases2_1_ce1_local;
assign biases2_1_d0 = biases2_1_d0_local;
assign biases2_1_d1 = biases2_1_d1_local;
assign biases2_1_we0 = biases2_1_we0_local;
assign biases2_1_we1 = biases2_1_we1_local;
assign bitcast_ln172_10_fu_344_p1 = reg_170;
assign bitcast_ln172_11_fu_354_p1 = div147_6_reg_500;
assign bitcast_ln172_12_fu_335_p1 = reg_174;
assign bitcast_ln172_13_fu_340_p1 = div147_3_reg_495;
assign bitcast_ln172_14_fu_349_p1 = reg_174;
assign bitcast_ln172_15_fu_358_p1 = div147_7_reg_505;
assign bitcast_ln172_1_fu_295_p1 = reg_166;
assign bitcast_ln172_2_fu_300_p1 = biases2_0_load_1_reg_410;
assign bitcast_ln172_3_fu_304_p1 = biases2_1_load_1_reg_415;
assign bitcast_ln172_4_fu_308_p1 = reg_162;
assign bitcast_ln172_5_fu_313_p1 = reg_166;
assign bitcast_ln172_6_fu_318_p1 = biases2_0_load_3_reg_450;
assign bitcast_ln172_7_fu_322_p1 = biases2_1_load_3_reg_455;
assign bitcast_ln172_8_fu_326_p1 = reg_170;
assign bitcast_ln172_9_fu_331_p1 = div147_2_reg_490;
assign bitcast_ln172_fu_290_p1 = reg_162;
assign lshr_ln121_3_fu_194_p4 = {{ap_sig_allocacmp_i_2[5:1]}};
assign or_ln172_1_fu_263_p4 = {{{tmp_3_reg_384}, {1'd1}}, {tmp_2_reg_390}};
assign or_ln172_2_fu_277_p3 = {{tmp_3_reg_384}, {2'd3}};
assign or_ln2_fu_220_p3 = {{tmp_s_fu_210_p4}, {1'd1}};
assign tmp_fu_186_p3 = ap_sig_allocacmp_i_2[32'd6];
assign tmp_s_fu_210_p4 = {{ap_sig_allocacmp_i_2[5:2]}};
assign zext_ln121_fu_204_p1 = lshr_ln121_3_fu_194_p4;
assign zext_ln172_1_fu_271_p1 = or_ln172_1_fu_263_p4;
assign zext_ln172_2_fu_284_p1 = or_ln172_2_fu_277_p3;
assign zext_ln172_fu_228_p1 = or_ln2_fu_220_p3;
always @ (posedge ap_clk) begin
    biases2_0_addr_1_reg_400[0] <= 1'b1;
    biases2_0_addr_1_reg_400_pp0_iter1_reg[0] <= 1'b1;
    biases2_0_addr_1_reg_400_pp0_iter2_reg[0] <= 1'b1;
    biases2_0_addr_1_reg_400_pp0_iter3_reg[0] <= 1'b1;
    biases2_0_addr_1_reg_400_pp0_iter4_reg[0] <= 1'b1;
    biases2_0_addr_1_reg_400_pp0_iter5_reg[0] <= 1'b1;
    biases2_0_addr_1_reg_400_pp0_iter6_reg[0] <= 1'b1;
    biases2_0_addr_1_reg_400_pp0_iter7_reg[0] <= 1'b1;
    biases2_0_addr_1_reg_400_pp0_iter8_reg[0] <= 1'b1;
    biases2_0_addr_1_reg_400_pp0_iter9_reg[0] <= 1'b1;
    biases2_0_addr_1_reg_400_pp0_iter10_reg[0] <= 1'b1;
    biases2_0_addr_1_reg_400_pp0_iter11_reg[0] <= 1'b1;
    biases2_0_addr_1_reg_400_pp0_iter12_reg[0] <= 1'b1;
    biases2_0_addr_1_reg_400_pp0_iter13_reg[0] <= 1'b1;
    biases2_0_addr_1_reg_400_pp0_iter14_reg[0] <= 1'b1;
    biases2_0_addr_1_reg_400_pp0_iter15_reg[0] <= 1'b1;
    biases2_1_addr_1_reg_405[0] <= 1'b1;
    biases2_1_addr_1_reg_405_pp0_iter1_reg[0] <= 1'b1;
    biases2_1_addr_1_reg_405_pp0_iter2_reg[0] <= 1'b1;
    biases2_1_addr_1_reg_405_pp0_iter3_reg[0] <= 1'b1;
    biases2_1_addr_1_reg_405_pp0_iter4_reg[0] <= 1'b1;
    biases2_1_addr_1_reg_405_pp0_iter5_reg[0] <= 1'b1;
    biases2_1_addr_1_reg_405_pp0_iter6_reg[0] <= 1'b1;
    biases2_1_addr_1_reg_405_pp0_iter7_reg[0] <= 1'b1;
    biases2_1_addr_1_reg_405_pp0_iter8_reg[0] <= 1'b1;
    biases2_1_addr_1_reg_405_pp0_iter9_reg[0] <= 1'b1;
    biases2_1_addr_1_reg_405_pp0_iter10_reg[0] <= 1'b1;
    biases2_1_addr_1_reg_405_pp0_iter11_reg[0] <= 1'b1;
    biases2_1_addr_1_reg_405_pp0_iter12_reg[0] <= 1'b1;
    biases2_1_addr_1_reg_405_pp0_iter13_reg[0] <= 1'b1;
    biases2_1_addr_1_reg_405_pp0_iter14_reg[0] <= 1'b1;
    biases2_1_addr_1_reg_405_pp0_iter15_reg[0] <= 1'b1;
    biases2_0_addr_2_reg_420[1] <= 1'b1;
    biases2_0_addr_2_reg_420_pp0_iter1_reg[1] <= 1'b1;
    biases2_0_addr_2_reg_420_pp0_iter2_reg[1] <= 1'b1;
    biases2_0_addr_2_reg_420_pp0_iter3_reg[1] <= 1'b1;
    biases2_0_addr_2_reg_420_pp0_iter4_reg[1] <= 1'b1;
    biases2_0_addr_2_reg_420_pp0_iter5_reg[1] <= 1'b1;
    biases2_0_addr_2_reg_420_pp0_iter6_reg[1] <= 1'b1;
    biases2_0_addr_2_reg_420_pp0_iter7_reg[1] <= 1'b1;
    biases2_0_addr_2_reg_420_pp0_iter8_reg[1] <= 1'b1;
    biases2_0_addr_2_reg_420_pp0_iter9_reg[1] <= 1'b1;
    biases2_0_addr_2_reg_420_pp0_iter10_reg[1] <= 1'b1;
    biases2_0_addr_2_reg_420_pp0_iter11_reg[1] <= 1'b1;
    biases2_0_addr_2_reg_420_pp0_iter12_reg[1] <= 1'b1;
    biases2_0_addr_2_reg_420_pp0_iter13_reg[1] <= 1'b1;
    biases2_0_addr_2_reg_420_pp0_iter14_reg[1] <= 1'b1;
    biases2_0_addr_2_reg_420_pp0_iter15_reg[1] <= 1'b1;
    biases2_1_addr_2_reg_425[1] <= 1'b1;
    biases2_1_addr_2_reg_425_pp0_iter1_reg[1] <= 1'b1;
    biases2_1_addr_2_reg_425_pp0_iter2_reg[1] <= 1'b1;
    biases2_1_addr_2_reg_425_pp0_iter3_reg[1] <= 1'b1;
    biases2_1_addr_2_reg_425_pp0_iter4_reg[1] <= 1'b1;
    biases2_1_addr_2_reg_425_pp0_iter5_reg[1] <= 1'b1;
    biases2_1_addr_2_reg_425_pp0_iter6_reg[1] <= 1'b1;
    biases2_1_addr_2_reg_425_pp0_iter7_reg[1] <= 1'b1;
    biases2_1_addr_2_reg_425_pp0_iter8_reg[1] <= 1'b1;
    biases2_1_addr_2_reg_425_pp0_iter9_reg[1] <= 1'b1;
    biases2_1_addr_2_reg_425_pp0_iter10_reg[1] <= 1'b1;
    biases2_1_addr_2_reg_425_pp0_iter11_reg[1] <= 1'b1;
    biases2_1_addr_2_reg_425_pp0_iter12_reg[1] <= 1'b1;
    biases2_1_addr_2_reg_425_pp0_iter13_reg[1] <= 1'b1;
    biases2_1_addr_2_reg_425_pp0_iter14_reg[1] <= 1'b1;
    biases2_1_addr_2_reg_425_pp0_iter15_reg[1] <= 1'b1;
    biases2_0_addr_3_reg_430[1:0] <= 2'b11;
    biases2_0_addr_3_reg_430_pp0_iter1_reg[1:0] <= 2'b11;
    biases2_0_addr_3_reg_430_pp0_iter2_reg[1:0] <= 2'b11;
    biases2_0_addr_3_reg_430_pp0_iter3_reg[1:0] <= 2'b11;
    biases2_0_addr_3_reg_430_pp0_iter4_reg[1:0] <= 2'b11;
    biases2_0_addr_3_reg_430_pp0_iter5_reg[1:0] <= 2'b11;
    biases2_0_addr_3_reg_430_pp0_iter6_reg[1:0] <= 2'b11;
    biases2_0_addr_3_reg_430_pp0_iter7_reg[1:0] <= 2'b11;
    biases2_0_addr_3_reg_430_pp0_iter8_reg[1:0] <= 2'b11;
    biases2_0_addr_3_reg_430_pp0_iter9_reg[1:0] <= 2'b11;
    biases2_0_addr_3_reg_430_pp0_iter10_reg[1:0] <= 2'b11;
    biases2_0_addr_3_reg_430_pp0_iter11_reg[1:0] <= 2'b11;
    biases2_0_addr_3_reg_430_pp0_iter12_reg[1:0] <= 2'b11;
    biases2_0_addr_3_reg_430_pp0_iter13_reg[1:0] <= 2'b11;
    biases2_0_addr_3_reg_430_pp0_iter14_reg[1:0] <= 2'b11;
    biases2_0_addr_3_reg_430_pp0_iter15_reg[1:0] <= 2'b11;
    biases2_0_addr_3_reg_430_pp0_iter16_reg[1:0] <= 2'b11;
    biases2_1_addr_3_reg_435[1:0] <= 2'b11;
    biases2_1_addr_3_reg_435_pp0_iter1_reg[1:0] <= 2'b11;
    biases2_1_addr_3_reg_435_pp0_iter2_reg[1:0] <= 2'b11;
    biases2_1_addr_3_reg_435_pp0_iter3_reg[1:0] <= 2'b11;
    biases2_1_addr_3_reg_435_pp0_iter4_reg[1:0] <= 2'b11;
    biases2_1_addr_3_reg_435_pp0_iter5_reg[1:0] <= 2'b11;
    biases2_1_addr_3_reg_435_pp0_iter6_reg[1:0] <= 2'b11;
    biases2_1_addr_3_reg_435_pp0_iter7_reg[1:0] <= 2'b11;
    biases2_1_addr_3_reg_435_pp0_iter8_reg[1:0] <= 2'b11;
    biases2_1_addr_3_reg_435_pp0_iter9_reg[1:0] <= 2'b11;
    biases2_1_addr_3_reg_435_pp0_iter10_reg[1:0] <= 2'b11;
    biases2_1_addr_3_reg_435_pp0_iter11_reg[1:0] <= 2'b11;
    biases2_1_addr_3_reg_435_pp0_iter12_reg[1:0] <= 2'b11;
    biases2_1_addr_3_reg_435_pp0_iter13_reg[1:0] <= 2'b11;
    biases2_1_addr_3_reg_435_pp0_iter14_reg[1:0] <= 2'b11;
    biases2_1_addr_3_reg_435_pp0_iter15_reg[1:0] <= 2'b11;
    biases2_1_addr_3_reg_435_pp0_iter16_reg[1:0] <= 2'b11;
end
endmodule 
