module backprop_backprop_Pipeline_delta_matrix_weights3_loop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights3_5_address0,delta_weights3_5_ce0,delta_weights3_5_we0,delta_weights3_5_d0,delta_weights3_5_address1,delta_weights3_5_ce1,delta_weights3_5_we1,delta_weights3_5_d1,delta_weights3_4_address0,delta_weights3_4_ce0,delta_weights3_4_we0,delta_weights3_4_d0,delta_weights3_4_address1,delta_weights3_4_ce1,delta_weights3_4_we1,delta_weights3_4_d1,delta_weights3_3_address0,delta_weights3_3_ce0,delta_weights3_3_we0,delta_weights3_3_d0,delta_weights3_3_address1,delta_weights3_3_ce1,delta_weights3_3_we1,delta_weights3_3_d1,delta_weights3_2_address0,delta_weights3_2_ce0,delta_weights3_2_we0,delta_weights3_2_d0,delta_weights3_2_address1,delta_weights3_2_ce1,delta_weights3_2_we1,delta_weights3_2_d1,delta_weights3_1_address0,delta_weights3_1_ce0,delta_weights3_1_we0,delta_weights3_1_d0,delta_weights3_1_address1,delta_weights3_1_ce1,delta_weights3_1_we1,delta_weights3_1_d1,delta_weights3_address0,delta_weights3_ce0,delta_weights3_we0,delta_weights3_d0,delta_weights3_address1,delta_weights3_ce1,delta_weights3_we1,delta_weights3_d1,activations2_address0,activations2_ce0,activations2_q0,activations2_address1,activations2_ce1,activations2_q1,p_reload114,p_reload113,p_reload,activations2_1_address0,activations2_1_ce0,activations2_1_q0,activations2_1_address1,activations2_1_ce1,activations2_1_q1,grp_fu_2905_p_din0,grp_fu_2905_p_din1,grp_fu_2905_p_dout0,grp_fu_2905_p_ce,grp_fu_2909_p_din0,grp_fu_2909_p_din1,grp_fu_2909_p_dout0,grp_fu_2909_p_ce,grp_fu_2913_p_din0,grp_fu_2913_p_din1,grp_fu_2913_p_dout0,grp_fu_2913_p_ce,grp_fu_2917_p_din0,grp_fu_2917_p_din1,grp_fu_2917_p_dout0,grp_fu_2917_p_ce,grp_fu_2921_p_din0,grp_fu_2921_p_din1,grp_fu_2921_p_dout0,grp_fu_2921_p_ce,grp_fu_2925_p_din0,grp_fu_2925_p_din1,grp_fu_2925_p_dout0,grp_fu_2925_p_ce,grp_fu_2929_p_din0,grp_fu_2929_p_din1,grp_fu_2929_p_dout0,grp_fu_2929_p_ce,grp_fu_2933_p_din0,grp_fu_2933_p_din1,grp_fu_2933_p_dout0,grp_fu_2933_p_ce,grp_fu_2937_p_din0,grp_fu_2937_p_din1,grp_fu_2937_p_dout0,grp_fu_2937_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] delta_weights3_5_address0;
output   delta_weights3_5_ce0;
output   delta_weights3_5_we0;
output  [63:0] delta_weights3_5_d0;
output  [4:0] delta_weights3_5_address1;
output   delta_weights3_5_ce1;
output   delta_weights3_5_we1;
output  [63:0] delta_weights3_5_d1;
output  [4:0] delta_weights3_4_address0;
output   delta_weights3_4_ce0;
output   delta_weights3_4_we0;
output  [63:0] delta_weights3_4_d0;
output  [4:0] delta_weights3_4_address1;
output   delta_weights3_4_ce1;
output   delta_weights3_4_we1;
output  [63:0] delta_weights3_4_d1;
output  [4:0] delta_weights3_3_address0;
output   delta_weights3_3_ce0;
output   delta_weights3_3_we0;
output  [63:0] delta_weights3_3_d0;
output  [4:0] delta_weights3_3_address1;
output   delta_weights3_3_ce1;
output   delta_weights3_3_we1;
output  [63:0] delta_weights3_3_d1;
output  [4:0] delta_weights3_2_address0;
output   delta_weights3_2_ce0;
output   delta_weights3_2_we0;
output  [63:0] delta_weights3_2_d0;
output  [4:0] delta_weights3_2_address1;
output   delta_weights3_2_ce1;
output   delta_weights3_2_we1;
output  [63:0] delta_weights3_2_d1;
output  [4:0] delta_weights3_1_address0;
output   delta_weights3_1_ce0;
output   delta_weights3_1_we0;
output  [63:0] delta_weights3_1_d0;
output  [4:0] delta_weights3_1_address1;
output   delta_weights3_1_ce1;
output   delta_weights3_1_we1;
output  [63:0] delta_weights3_1_d1;
output  [4:0] delta_weights3_address0;
output   delta_weights3_ce0;
output   delta_weights3_we0;
output  [63:0] delta_weights3_d0;
output  [4:0] delta_weights3_address1;
output   delta_weights3_ce1;
output   delta_weights3_we1;
output  [63:0] delta_weights3_d1;
output  [4:0] activations2_address0;
output   activations2_ce0;
input  [63:0] activations2_q0;
output  [4:0] activations2_address1;
output   activations2_ce1;
input  [63:0] activations2_q1;
input  [63:0] p_reload114;
input  [63:0] p_reload113;
input  [63:0] p_reload;
output  [4:0] activations2_1_address0;
output   activations2_1_ce0;
input  [63:0] activations2_1_q0;
output  [4:0] activations2_1_address1;
output   activations2_1_ce1;
input  [63:0] activations2_1_q1;
output  [63:0] grp_fu_2905_p_din0;
output  [63:0] grp_fu_2905_p_din1;
input  [63:0] grp_fu_2905_p_dout0;
output   grp_fu_2905_p_ce;
output  [63:0] grp_fu_2909_p_din0;
output  [63:0] grp_fu_2909_p_din1;
input  [63:0] grp_fu_2909_p_dout0;
output   grp_fu_2909_p_ce;
output  [63:0] grp_fu_2913_p_din0;
output  [63:0] grp_fu_2913_p_din1;
input  [63:0] grp_fu_2913_p_dout0;
output   grp_fu_2913_p_ce;
output  [63:0] grp_fu_2917_p_din0;
output  [63:0] grp_fu_2917_p_din1;
input  [63:0] grp_fu_2917_p_dout0;
output   grp_fu_2917_p_ce;
output  [63:0] grp_fu_2921_p_din0;
output  [63:0] grp_fu_2921_p_din1;
input  [63:0] grp_fu_2921_p_dout0;
output   grp_fu_2921_p_ce;
output  [63:0] grp_fu_2925_p_din0;
output  [63:0] grp_fu_2925_p_din1;
input  [63:0] grp_fu_2925_p_dout0;
output   grp_fu_2925_p_ce;
output  [63:0] grp_fu_2929_p_din0;
output  [63:0] grp_fu_2929_p_din1;
input  [63:0] grp_fu_2929_p_dout0;
output   grp_fu_2929_p_ce;
output  [63:0] grp_fu_2933_p_din0;
output  [63:0] grp_fu_2933_p_din1;
input  [63:0] grp_fu_2933_p_dout0;
output   grp_fu_2933_p_ce;
output  [63:0] grp_fu_2937_p_din0;
output  [63:0] grp_fu_2937_p_din1;
input  [63:0] grp_fu_2937_p_dout0;
output   grp_fu_2937_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_342_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln72_fu_360_p1;
reg   [63:0] zext_ln72_reg_436;
reg   [63:0] zext_ln72_reg_436_pp0_iter1_reg;
reg   [63:0] zext_ln72_reg_436_pp0_iter2_reg;
reg   [63:0] zext_ln72_reg_436_pp0_iter3_reg;
reg   [63:0] zext_ln72_reg_436_pp0_iter4_reg;
reg   [63:0] zext_ln72_reg_436_pp0_iter5_reg;
reg   [63:0] zext_ln72_reg_436_pp0_iter6_reg;
reg   [63:0] zext_ln72_reg_436_pp0_iter7_reg;
reg   [63:0] zext_ln72_reg_436_pp0_iter8_reg;
wire   [63:0] p_cast27_fu_384_p1;
reg   [63:0] p_cast27_reg_456;
reg   [63:0] p_cast27_reg_456_pp0_iter1_reg;
reg   [63:0] p_cast27_reg_456_pp0_iter2_reg;
reg   [63:0] p_cast27_reg_456_pp0_iter3_reg;
reg   [63:0] p_cast27_reg_456_pp0_iter4_reg;
reg   [63:0] p_cast27_reg_456_pp0_iter5_reg;
reg   [63:0] p_cast27_reg_456_pp0_iter6_reg;
reg   [63:0] p_cast27_reg_456_pp0_iter7_reg;
reg   [63:0] p_cast27_reg_456_pp0_iter8_reg;
reg   [63:0] activations2_load_reg_476;
reg   [63:0] activations2_1_load_reg_483;
reg   [63:0] activations2_load_1_reg_490;
reg   [63:0] activations2_1_load_1_reg_497;
reg   [63:0] mul_i3_reg_504;
reg   [63:0] mul_16_i_reg_509;
reg   [63:0] mul_216_i_reg_514;
reg   [63:0] mul_1_i_reg_519;
reg   [63:0] mul_1_1_i_reg_524;
reg   [63:0] mul_1_2_i_reg_529;
reg   [63:0] mul_2_i_reg_534;
reg   [63:0] mul_2_1_i_reg_539;
reg   [63:0] mul_2_2_i_reg_544;
wire   [63:0] grp_fu_322_p2;
reg   [63:0] mul_3_i_reg_549;
wire   [63:0] grp_fu_326_p2;
reg   [63:0] mul_3_1_i_reg_554;
wire   [63:0] grp_fu_330_p2;
reg   [63:0] mul_3_2_i_reg_559;
wire    ap_block_pp0_stage0;
reg   [6:0] i_fu_64;
wire   [6:0] add_ln73_fu_390_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_8;
reg    activations2_ce1_local;
reg    activations2_ce0_local;
reg    activations2_1_ce1_local;
reg    activations2_1_ce0_local;
reg    delta_weights3_we1_local;
reg    delta_weights3_ce1_local;
reg    delta_weights3_we0_local;
reg    delta_weights3_ce0_local;
reg    delta_weights3_1_we1_local;
reg    delta_weights3_1_ce1_local;
reg    delta_weights3_1_we0_local;
reg    delta_weights3_1_ce0_local;
reg    delta_weights3_2_we1_local;
reg    delta_weights3_2_ce1_local;
reg    delta_weights3_2_we0_local;
reg    delta_weights3_2_ce0_local;
reg    delta_weights3_3_we1_local;
reg    delta_weights3_3_ce1_local;
reg    delta_weights3_3_we0_local;
reg    delta_weights3_3_ce0_local;
reg    delta_weights3_4_we1_local;
reg    delta_weights3_4_ce1_local;
reg    delta_weights3_4_we0_local;
reg    delta_weights3_4_ce0_local;
reg    delta_weights3_5_we1_local;
reg    delta_weights3_5_ce1_local;
reg    delta_weights3_5_we0_local;
reg    delta_weights3_5_ce0_local;
wire   [4:0] lshr_ln7_fu_350_p4;
wire   [3:0] tmp_s_fu_366_p4;
wire   [4:0] tmp_54_fu_376_p3;
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
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 i_fu_64 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U145(.clk(ap_clk),.reset(ap_rst),.din0(activations2_1_load_1_reg_497),.din1(p_reload114),.ce(1'b1),.dout(grp_fu_322_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U146(.clk(ap_clk),.reset(ap_rst),.din0(activations2_1_load_1_reg_497),.din1(p_reload113),.ce(1'b1),.dout(grp_fu_326_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U147(.clk(ap_clk),.reset(ap_rst),.din0(activations2_1_load_1_reg_497),.din1(p_reload),.ce(1'b1),.dout(grp_fu_330_p2));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((tmp_fu_342_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_64 <= add_ln73_fu_390_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_64 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_1_load_1_reg_497 <= activations2_1_q0;
        activations2_1_load_reg_483 <= activations2_1_q1;
        activations2_load_1_reg_490 <= activations2_q0;
        activations2_load_reg_476 <= activations2_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        p_cast27_reg_456[4 : 1] <= p_cast27_fu_384_p1[4 : 1];
        p_cast27_reg_456_pp0_iter1_reg[4 : 1] <= p_cast27_reg_456[4 : 1];
        zext_ln72_reg_436[4 : 0] <= zext_ln72_fu_360_p1[4 : 0];
        zext_ln72_reg_436_pp0_iter1_reg[4 : 0] <= zext_ln72_reg_436[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        mul_16_i_reg_509 <= grp_fu_2909_p_dout0;
        mul_1_1_i_reg_524 <= grp_fu_2921_p_dout0;
        mul_1_2_i_reg_529 <= grp_fu_2925_p_dout0;
        mul_1_i_reg_519 <= grp_fu_2917_p_dout0;
        mul_216_i_reg_514 <= grp_fu_2913_p_dout0;
        mul_2_1_i_reg_539 <= grp_fu_2933_p_dout0;
        mul_2_2_i_reg_544 <= grp_fu_2937_p_dout0;
        mul_2_i_reg_534 <= grp_fu_2929_p_dout0;
        mul_3_1_i_reg_554 <= grp_fu_326_p2;
        mul_3_2_i_reg_559 <= grp_fu_330_p2;
        mul_3_i_reg_549 <= grp_fu_322_p2;
        mul_i3_reg_504 <= grp_fu_2905_p_dout0;
        p_cast27_reg_456_pp0_iter2_reg[4 : 1] <= p_cast27_reg_456_pp0_iter1_reg[4 : 1];
        p_cast27_reg_456_pp0_iter3_reg[4 : 1] <= p_cast27_reg_456_pp0_iter2_reg[4 : 1];
        p_cast27_reg_456_pp0_iter4_reg[4 : 1] <= p_cast27_reg_456_pp0_iter3_reg[4 : 1];
        p_cast27_reg_456_pp0_iter5_reg[4 : 1] <= p_cast27_reg_456_pp0_iter4_reg[4 : 1];
        p_cast27_reg_456_pp0_iter6_reg[4 : 1] <= p_cast27_reg_456_pp0_iter5_reg[4 : 1];
        p_cast27_reg_456_pp0_iter7_reg[4 : 1] <= p_cast27_reg_456_pp0_iter6_reg[4 : 1];
        p_cast27_reg_456_pp0_iter8_reg[4 : 1] <= p_cast27_reg_456_pp0_iter7_reg[4 : 1];
        zext_ln72_reg_436_pp0_iter2_reg[4 : 0] <= zext_ln72_reg_436_pp0_iter1_reg[4 : 0];
        zext_ln72_reg_436_pp0_iter3_reg[4 : 0] <= zext_ln72_reg_436_pp0_iter2_reg[4 : 0];
        zext_ln72_reg_436_pp0_iter4_reg[4 : 0] <= zext_ln72_reg_436_pp0_iter3_reg[4 : 0];
        zext_ln72_reg_436_pp0_iter5_reg[4 : 0] <= zext_ln72_reg_436_pp0_iter4_reg[4 : 0];
        zext_ln72_reg_436_pp0_iter6_reg[4 : 0] <= zext_ln72_reg_436_pp0_iter5_reg[4 : 0];
        zext_ln72_reg_436_pp0_iter7_reg[4 : 0] <= zext_ln72_reg_436_pp0_iter6_reg[4 : 0];
        zext_ln72_reg_436_pp0_iter8_reg[4 : 0] <= zext_ln72_reg_436_pp0_iter7_reg[4 : 0];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_1_ce0_local = 1'b1;
    end else begin
        activations2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_1_ce1_local = 1'b1;
    end else begin
        activations2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_ce0_local = 1'b1;
    end else begin
        activations2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_ce1_local = 1'b1;
    end else begin
        activations2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_fu_342_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_8 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_8 = i_fu_64;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_1_ce0_local = 1'b1;
    end else begin
        delta_weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_1_ce1_local = 1'b1;
    end else begin
        delta_weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_1_we0_local = 1'b1;
    end else begin
        delta_weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_1_we1_local = 1'b1;
    end else begin
        delta_weights3_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_2_ce0_local = 1'b1;
    end else begin
        delta_weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_2_ce1_local = 1'b1;
    end else begin
        delta_weights3_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_2_we0_local = 1'b1;
    end else begin
        delta_weights3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_2_we1_local = 1'b1;
    end else begin
        delta_weights3_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_3_ce0_local = 1'b1;
    end else begin
        delta_weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_3_ce1_local = 1'b1;
    end else begin
        delta_weights3_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_3_we0_local = 1'b1;
    end else begin
        delta_weights3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_3_we1_local = 1'b1;
    end else begin
        delta_weights3_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_4_ce0_local = 1'b1;
    end else begin
        delta_weights3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_4_ce1_local = 1'b1;
    end else begin
        delta_weights3_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_4_we0_local = 1'b1;
    end else begin
        delta_weights3_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_4_we1_local = 1'b1;
    end else begin
        delta_weights3_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_5_ce0_local = 1'b1;
    end else begin
        delta_weights3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_5_ce1_local = 1'b1;
    end else begin
        delta_weights3_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_5_we0_local = 1'b1;
    end else begin
        delta_weights3_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_5_we1_local = 1'b1;
    end else begin
        delta_weights3_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_ce0_local = 1'b1;
    end else begin
        delta_weights3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_ce1_local = 1'b1;
    end else begin
        delta_weights3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_we0_local = 1'b1;
    end else begin
        delta_weights3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_we1_local = 1'b1;
    end else begin
        delta_weights3_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign activations2_1_address0 = p_cast27_fu_384_p1;
assign activations2_1_address1 = zext_ln72_fu_360_p1;
assign activations2_1_ce0 = activations2_1_ce0_local;
assign activations2_1_ce1 = activations2_1_ce1_local;
assign activations2_address0 = p_cast27_fu_384_p1;
assign activations2_address1 = zext_ln72_fu_360_p1;
assign activations2_ce0 = activations2_ce0_local;
assign activations2_ce1 = activations2_ce1_local;
assign add_ln73_fu_390_p2 = (ap_sig_allocacmp_i_8 + 7'd4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign delta_weights3_1_address0 = p_cast27_reg_456_pp0_iter8_reg;
assign delta_weights3_1_address1 = zext_ln72_reg_436_pp0_iter8_reg;
assign delta_weights3_1_ce0 = delta_weights3_1_ce0_local;
assign delta_weights3_1_ce1 = delta_weights3_1_ce1_local;
assign delta_weights3_1_d0 = mul_2_1_i_reg_539;
assign delta_weights3_1_d1 = mul_16_i_reg_509;
assign delta_weights3_1_we0 = delta_weights3_1_we0_local;
assign delta_weights3_1_we1 = delta_weights3_1_we1_local;
assign delta_weights3_2_address0 = p_cast27_reg_456_pp0_iter8_reg;
assign delta_weights3_2_address1 = zext_ln72_reg_436_pp0_iter8_reg;
assign delta_weights3_2_ce0 = delta_weights3_2_ce0_local;
assign delta_weights3_2_ce1 = delta_weights3_2_ce1_local;
assign delta_weights3_2_d0 = mul_2_2_i_reg_544;
assign delta_weights3_2_d1 = mul_216_i_reg_514;
assign delta_weights3_2_we0 = delta_weights3_2_we0_local;
assign delta_weights3_2_we1 = delta_weights3_2_we1_local;
assign delta_weights3_3_address0 = p_cast27_reg_456_pp0_iter8_reg;
assign delta_weights3_3_address1 = zext_ln72_reg_436_pp0_iter8_reg;
assign delta_weights3_3_ce0 = delta_weights3_3_ce0_local;
assign delta_weights3_3_ce1 = delta_weights3_3_ce1_local;
assign delta_weights3_3_d0 = mul_3_i_reg_549;
assign delta_weights3_3_d1 = mul_1_i_reg_519;
assign delta_weights3_3_we0 = delta_weights3_3_we0_local;
assign delta_weights3_3_we1 = delta_weights3_3_we1_local;
assign delta_weights3_4_address0 = p_cast27_reg_456_pp0_iter8_reg;
assign delta_weights3_4_address1 = zext_ln72_reg_436_pp0_iter8_reg;
assign delta_weights3_4_ce0 = delta_weights3_4_ce0_local;
assign delta_weights3_4_ce1 = delta_weights3_4_ce1_local;
assign delta_weights3_4_d0 = mul_3_1_i_reg_554;
assign delta_weights3_4_d1 = mul_1_1_i_reg_524;
assign delta_weights3_4_we0 = delta_weights3_4_we0_local;
assign delta_weights3_4_we1 = delta_weights3_4_we1_local;
assign delta_weights3_5_address0 = p_cast27_reg_456_pp0_iter8_reg;
assign delta_weights3_5_address1 = zext_ln72_reg_436_pp0_iter8_reg;
assign delta_weights3_5_ce0 = delta_weights3_5_ce0_local;
assign delta_weights3_5_ce1 = delta_weights3_5_ce1_local;
assign delta_weights3_5_d0 = mul_3_2_i_reg_559;
assign delta_weights3_5_d1 = mul_1_2_i_reg_529;
assign delta_weights3_5_we0 = delta_weights3_5_we0_local;
assign delta_weights3_5_we1 = delta_weights3_5_we1_local;
assign delta_weights3_address0 = p_cast27_reg_456_pp0_iter8_reg;
assign delta_weights3_address1 = zext_ln72_reg_436_pp0_iter8_reg;
assign delta_weights3_ce0 = delta_weights3_ce0_local;
assign delta_weights3_ce1 = delta_weights3_ce1_local;
assign delta_weights3_d0 = mul_2_i_reg_534;
assign delta_weights3_d1 = mul_i3_reg_504;
assign delta_weights3_we0 = delta_weights3_we0_local;
assign delta_weights3_we1 = delta_weights3_we1_local;
assign grp_fu_2905_p_ce = 1'b1;
assign grp_fu_2905_p_din0 = activations2_load_reg_476;
assign grp_fu_2905_p_din1 = p_reload114;
assign grp_fu_2909_p_ce = 1'b1;
assign grp_fu_2909_p_din0 = activations2_load_reg_476;
assign grp_fu_2909_p_din1 = p_reload113;
assign grp_fu_2913_p_ce = 1'b1;
assign grp_fu_2913_p_din0 = activations2_load_reg_476;
assign grp_fu_2913_p_din1 = p_reload;
assign grp_fu_2917_p_ce = 1'b1;
assign grp_fu_2917_p_din0 = activations2_1_load_reg_483;
assign grp_fu_2917_p_din1 = p_reload114;
assign grp_fu_2921_p_ce = 1'b1;
assign grp_fu_2921_p_din0 = activations2_1_load_reg_483;
assign grp_fu_2921_p_din1 = p_reload113;
assign grp_fu_2925_p_ce = 1'b1;
assign grp_fu_2925_p_din0 = activations2_1_load_reg_483;
assign grp_fu_2925_p_din1 = p_reload;
assign grp_fu_2929_p_ce = 1'b1;
assign grp_fu_2929_p_din0 = activations2_load_1_reg_490;
assign grp_fu_2929_p_din1 = p_reload114;
assign grp_fu_2933_p_ce = 1'b1;
assign grp_fu_2933_p_din0 = activations2_load_1_reg_490;
assign grp_fu_2933_p_din1 = p_reload113;
assign grp_fu_2937_p_ce = 1'b1;
assign grp_fu_2937_p_din0 = activations2_load_1_reg_490;
assign grp_fu_2937_p_din1 = p_reload;
assign lshr_ln7_fu_350_p4 = {{ap_sig_allocacmp_i_8[5:1]}};
assign p_cast27_fu_384_p1 = tmp_54_fu_376_p3;
assign tmp_54_fu_376_p3 = {{tmp_s_fu_366_p4}, {1'd1}};
assign tmp_fu_342_p3 = ap_sig_allocacmp_i_8[32'd6];
assign tmp_s_fu_366_p4 = {{ap_sig_allocacmp_i_8[5:2]}};
assign zext_ln72_fu_360_p1 = lshr_ln7_fu_350_p4;
always @ (posedge ap_clk) begin
    zext_ln72_reg_436[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln72_reg_436_pp0_iter1_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln72_reg_436_pp0_iter2_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln72_reg_436_pp0_iter3_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln72_reg_436_pp0_iter4_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln72_reg_436_pp0_iter5_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln72_reg_436_pp0_iter6_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln72_reg_436_pp0_iter7_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln72_reg_436_pp0_iter8_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    p_cast27_reg_456[0] <= 1'b1;
    p_cast27_reg_456[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    p_cast27_reg_456_pp0_iter1_reg[0] <= 1'b1;
    p_cast27_reg_456_pp0_iter1_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    p_cast27_reg_456_pp0_iter2_reg[0] <= 1'b1;
    p_cast27_reg_456_pp0_iter2_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    p_cast27_reg_456_pp0_iter3_reg[0] <= 1'b1;
    p_cast27_reg_456_pp0_iter3_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    p_cast27_reg_456_pp0_iter4_reg[0] <= 1'b1;
    p_cast27_reg_456_pp0_iter4_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    p_cast27_reg_456_pp0_iter5_reg[0] <= 1'b1;
    p_cast27_reg_456_pp0_iter5_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    p_cast27_reg_456_pp0_iter6_reg[0] <= 1'b1;
    p_cast27_reg_456_pp0_iter6_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    p_cast27_reg_456_pp0_iter7_reg[0] <= 1'b1;
    p_cast27_reg_456_pp0_iter7_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    p_cast27_reg_456_pp0_iter8_reg[0] <= 1'b1;
    p_cast27_reg_456_pp0_iter8_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
end
endmodule 