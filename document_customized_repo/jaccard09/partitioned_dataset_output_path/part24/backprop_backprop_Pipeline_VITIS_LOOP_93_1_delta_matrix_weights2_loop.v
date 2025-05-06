
module backprop_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,activations1_address0,activations1_ce0,activations1_q0,activations1_1_address0,activations1_1_ce0,activations1_1_q0,delta_weights2_1_address0,delta_weights2_1_ce0,delta_weights2_1_we0,delta_weights2_1_d0,delta_weights2_1_address1,delta_weights2_1_ce1,delta_weights2_1_we1,delta_weights2_1_d1,delta_weights2_address0,delta_weights2_ce0,delta_weights2_we0,delta_weights2_d0,delta_weights2_address1,delta_weights2_ce1,delta_weights2_we1,delta_weights2_d1,oracle_activations2_address0,oracle_activations2_ce0,oracle_activations2_q0,oracle_activations2_address1,oracle_activations2_ce1,oracle_activations2_q1,oracle_activations2_1_address0,oracle_activations2_1_ce0,oracle_activations2_1_q0,oracle_activations2_1_address1,oracle_activations2_1_ce1,oracle_activations2_1_q1,grp_fu_1780_p_din0,grp_fu_1780_p_din1,grp_fu_1780_p_dout0,grp_fu_1780_p_ce,grp_fu_3171_p_din0,grp_fu_3171_p_din1,grp_fu_3171_p_dout0,grp_fu_3171_p_ce,grp_fu_3175_p_din0,grp_fu_3175_p_din1,grp_fu_3175_p_dout0,grp_fu_3175_p_ce,grp_fu_3179_p_din0,grp_fu_3179_p_din1,grp_fu_3179_p_dout0,grp_fu_3179_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] activations1_address0;
output   activations1_ce0;
input  [63:0] activations1_q0;
output  [4:0] activations1_1_address0;
output   activations1_1_ce0;
input  [63:0] activations1_1_q0;
output  [10:0] delta_weights2_1_address0;
output   delta_weights2_1_ce0;
output   delta_weights2_1_we0;
output  [63:0] delta_weights2_1_d0;
output  [10:0] delta_weights2_1_address1;
output   delta_weights2_1_ce1;
output   delta_weights2_1_we1;
output  [63:0] delta_weights2_1_d1;
output  [10:0] delta_weights2_address0;
output   delta_weights2_ce0;
output   delta_weights2_we0;
output  [63:0] delta_weights2_d0;
output  [10:0] delta_weights2_address1;
output   delta_weights2_ce1;
output   delta_weights2_we1;
output  [63:0] delta_weights2_d1;
output  [4:0] oracle_activations2_address0;
output   oracle_activations2_ce0;
input  [63:0] oracle_activations2_q0;
output  [4:0] oracle_activations2_address1;
output   oracle_activations2_ce1;
input  [63:0] oracle_activations2_q1;
output  [4:0] oracle_activations2_1_address0;
output   oracle_activations2_1_ce0;
input  [63:0] oracle_activations2_1_q0;
output  [4:0] oracle_activations2_1_address1;
output   oracle_activations2_1_ce1;
input  [63:0] oracle_activations2_1_q1;
output  [63:0] grp_fu_1780_p_din0;
output  [63:0] grp_fu_1780_p_din1;
input  [63:0] grp_fu_1780_p_dout0;
output   grp_fu_1780_p_ce;
output  [63:0] grp_fu_3171_p_din0;
output  [63:0] grp_fu_3171_p_din1;
input  [63:0] grp_fu_3171_p_dout0;
output   grp_fu_3171_p_ce;
output  [63:0] grp_fu_3175_p_din0;
output  [63:0] grp_fu_3175_p_din1;
input  [63:0] grp_fu_3175_p_dout0;
output   grp_fu_3175_p_ce;
output  [63:0] grp_fu_3179_p_din0;
output  [63:0] grp_fu_3179_p_din1;
input  [63:0] grp_fu_3179_p_dout0;
output   grp_fu_3179_p_ce;
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
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln93_fu_236_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] trunc_ln93_fu_289_p1;
reg   [0:0] trunc_ln93_reg_426;
wire   [4:0] lshr_ln92_1_fu_309_p4;
reg   [4:0] lshr_ln92_1_reg_441;
reg   [4:0] lshr_ln92_1_reg_441_pp0_iter2_reg;
reg   [4:0] lshr_ln92_1_reg_441_pp0_iter3_reg;
reg   [4:0] lshr_ln92_1_reg_441_pp0_iter4_reg;
reg   [4:0] lshr_ln92_1_reg_441_pp0_iter5_reg;
reg   [4:0] lshr_ln92_1_reg_441_pp0_iter6_reg;
reg   [4:0] lshr_ln92_1_reg_441_pp0_iter7_reg;
reg   [4:0] lshr_ln92_1_reg_441_pp0_iter8_reg;
reg   [4:0] lshr_ln92_1_reg_441_pp0_iter9_reg;
wire   [5:0] trunc_ln95_fu_325_p1;
reg   [5:0] trunc_ln95_reg_451;
reg   [5:0] trunc_ln95_reg_451_pp0_iter2_reg;
reg   [5:0] trunc_ln95_reg_451_pp0_iter3_reg;
reg   [5:0] trunc_ln95_reg_451_pp0_iter4_reg;
reg   [5:0] trunc_ln95_reg_451_pp0_iter5_reg;
reg   [5:0] trunc_ln95_reg_451_pp0_iter6_reg;
reg   [5:0] trunc_ln95_reg_451_pp0_iter7_reg;
reg   [5:0] trunc_ln95_reg_451_pp0_iter8_reg;
reg   [5:0] trunc_ln95_reg_451_pp0_iter9_reg;
reg   [5:0] trunc_ln95_reg_451_pp0_iter10_reg;
reg   [3:0] tmp_s_reg_462;
reg   [3:0] tmp_s_reg_462_pp0_iter2_reg;
reg   [3:0] tmp_s_reg_462_pp0_iter3_reg;
reg   [3:0] tmp_s_reg_462_pp0_iter4_reg;
reg   [3:0] tmp_s_reg_462_pp0_iter5_reg;
reg   [3:0] tmp_s_reg_462_pp0_iter6_reg;
reg   [3:0] tmp_s_reg_462_pp0_iter7_reg;
reg   [3:0] tmp_s_reg_462_pp0_iter8_reg;
reg   [3:0] tmp_s_reg_462_pp0_iter9_reg;
reg   [3:0] tmp_s_reg_462_pp0_iter10_reg;
wire   [63:0] tmp_28_fu_355_p3;
reg   [63:0] tmp_28_reg_468;
reg   [63:0] tmp_28_reg_468_pp0_iter3_reg;
reg   [63:0] oracle_activations2_load_reg_476;
reg   [63:0] oracle_activations2_1_load_reg_491;
reg   [63:0] oracle_activations2_load_1_reg_496;
reg   [63:0] oracle_activations2_1_load_1_reg_501;
reg   [63:0] mul_i4_reg_506;
reg   [63:0] mul_1_i1_reg_511;
reg   [63:0] mul_2_i1_reg_516;
reg   [63:0] mul_3_i1_reg_521;
wire   [63:0] zext_ln92_fu_303_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln92_1_fu_319_p1;
wire   [63:0] zext_ln95_1_fu_369_p1;
wire   [63:0] zext_ln95_fu_381_p1;
wire   [63:0] zext_ln95_2_fu_395_p1;
reg   [6:0] j_fu_64;
wire   [6:0] add_ln94_fu_339_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_68;
wire   [6:0] select_ln93_fu_281_p3;
reg   [10:0] indvar_flatten12_fu_72;
wire   [10:0] add_ln93_fu_242_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten12_load;
reg    activations1_ce0_local;
reg    activations1_1_ce0_local;
reg    oracle_activations2_ce1_local;
reg    oracle_activations2_ce0_local;
reg    oracle_activations2_1_ce1_local;
reg    oracle_activations2_1_ce0_local;
reg    delta_weights2_we1_local;
reg    delta_weights2_ce1_local;
reg    delta_weights2_we0_local;
reg    delta_weights2_ce0_local;
reg    delta_weights2_1_we1_local;
reg    delta_weights2_1_ce1_local;
reg    delta_weights2_1_we0_local;
reg    delta_weights2_1_ce0_local;
wire   [0:0] tmp_fu_259_p3;
wire   [6:0] add_ln93_1_fu_275_p2;
wire   [4:0] lshr_ln_fu_293_p4;
wire   [6:0] select_ln92_fu_267_p3;
wire   [4:0] or_ln_fu_362_p3;
wire   [10:0] add_ln4_fu_375_p3;
wire   [10:0] add_ln95_1_fu_387_p4;
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
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 j_fu_64 = 7'd0;
#0 i_fu_68 = 7'd0;
#0 indvar_flatten12_fu_72 = 11'd0;
#0 ap_done_reg = 1'b0;
end
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter10_reg == 1'b1))) begin
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
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
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
        if ((ap_loop_init == 1'b1)) begin
            i_fu_68 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_68 <= select_ln93_fu_281_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln93_fu_236_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten12_fu_72 <= add_ln93_fu_242_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten12_fu_72 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_64 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_64 <= add_ln94_fu_339_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        lshr_ln92_1_reg_441_pp0_iter2_reg <= lshr_ln92_1_reg_441;
        lshr_ln92_1_reg_441_pp0_iter3_reg <= lshr_ln92_1_reg_441_pp0_iter2_reg;
        lshr_ln92_1_reg_441_pp0_iter4_reg <= lshr_ln92_1_reg_441_pp0_iter3_reg;
        lshr_ln92_1_reg_441_pp0_iter5_reg <= lshr_ln92_1_reg_441_pp0_iter4_reg;
        lshr_ln92_1_reg_441_pp0_iter6_reg <= lshr_ln92_1_reg_441_pp0_iter5_reg;
        lshr_ln92_1_reg_441_pp0_iter7_reg <= lshr_ln92_1_reg_441_pp0_iter6_reg;
        lshr_ln92_1_reg_441_pp0_iter8_reg <= lshr_ln92_1_reg_441_pp0_iter7_reg;
        lshr_ln92_1_reg_441_pp0_iter9_reg <= lshr_ln92_1_reg_441_pp0_iter8_reg;
        mul_1_i1_reg_511 <= grp_fu_3171_p_dout0;
        mul_2_i1_reg_516 <= grp_fu_3175_p_dout0;
        mul_3_i1_reg_521 <= grp_fu_3179_p_dout0;
        mul_i4_reg_506 <= grp_fu_1780_p_dout0;
        tmp_28_reg_468 <= tmp_28_fu_355_p3;
        tmp_28_reg_468_pp0_iter3_reg <= tmp_28_reg_468;
        tmp_s_reg_462_pp0_iter10_reg <= tmp_s_reg_462_pp0_iter9_reg;
        tmp_s_reg_462_pp0_iter2_reg <= tmp_s_reg_462;
        tmp_s_reg_462_pp0_iter3_reg <= tmp_s_reg_462_pp0_iter2_reg;
        tmp_s_reg_462_pp0_iter4_reg <= tmp_s_reg_462_pp0_iter3_reg;
        tmp_s_reg_462_pp0_iter5_reg <= tmp_s_reg_462_pp0_iter4_reg;
        tmp_s_reg_462_pp0_iter6_reg <= tmp_s_reg_462_pp0_iter5_reg;
        tmp_s_reg_462_pp0_iter7_reg <= tmp_s_reg_462_pp0_iter6_reg;
        tmp_s_reg_462_pp0_iter8_reg <= tmp_s_reg_462_pp0_iter7_reg;
        tmp_s_reg_462_pp0_iter9_reg <= tmp_s_reg_462_pp0_iter8_reg;
        trunc_ln95_reg_451_pp0_iter10_reg <= trunc_ln95_reg_451_pp0_iter9_reg;
        trunc_ln95_reg_451_pp0_iter2_reg <= trunc_ln95_reg_451;
        trunc_ln95_reg_451_pp0_iter3_reg <= trunc_ln95_reg_451_pp0_iter2_reg;
        trunc_ln95_reg_451_pp0_iter4_reg <= trunc_ln95_reg_451_pp0_iter3_reg;
        trunc_ln95_reg_451_pp0_iter5_reg <= trunc_ln95_reg_451_pp0_iter4_reg;
        trunc_ln95_reg_451_pp0_iter6_reg <= trunc_ln95_reg_451_pp0_iter5_reg;
        trunc_ln95_reg_451_pp0_iter7_reg <= trunc_ln95_reg_451_pp0_iter6_reg;
        trunc_ln95_reg_451_pp0_iter8_reg <= trunc_ln95_reg_451_pp0_iter7_reg;
        trunc_ln95_reg_451_pp0_iter9_reg <= trunc_ln95_reg_451_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln92_1_reg_441 <= {{select_ln92_fu_267_p3[5:1]}};
        tmp_s_reg_462 <= {{select_ln92_fu_267_p3[5:2]}};
        trunc_ln93_reg_426 <= trunc_ln93_fu_289_p1;
        trunc_ln95_reg_451 <= trunc_ln95_fu_325_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        oracle_activations2_1_load_1_reg_501 <= oracle_activations2_1_q0;
        oracle_activations2_load_1_reg_496 <= oracle_activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations2_1_load_reg_491 <= oracle_activations2_1_q1;
        oracle_activations2_load_reg_476 <= oracle_activations2_q1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_1_ce0_local = 1'b1;
    end else begin
        activations1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_ce0_local = 1'b1;
    end else begin
        activations1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln93_fu_236_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter10_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_indvar_flatten12_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12_load = indvar_flatten12_fu_72;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights2_1_ce0_local = 1'b1;
    end else begin
        delta_weights2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_1_ce1_local = 1'b1;
    end else begin
        delta_weights2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights2_1_we0_local = 1'b1;
    end else begin
        delta_weights2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_1_we1_local = 1'b1;
    end else begin
        delta_weights2_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights2_ce0_local = 1'b1;
    end else begin
        delta_weights2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_ce1_local = 1'b1;
    end else begin
        delta_weights2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights2_we0_local = 1'b1;
    end else begin
        delta_weights2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_we1_local = 1'b1;
    end else begin
        delta_weights2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations2_1_ce0_local = 1'b1;
    end else begin
        oracle_activations2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_1_ce1_local = 1'b1;
    end else begin
        oracle_activations2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations2_ce0_local = 1'b1;
    end else begin
        oracle_activations2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_ce1_local = 1'b1;
    end else begin
        oracle_activations2_ce1_local = 1'b0;
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
assign activations1_1_address0 = zext_ln92_fu_303_p1;
assign activations1_1_ce0 = activations1_1_ce0_local;
assign activations1_address0 = zext_ln92_fu_303_p1;
assign activations1_ce0 = activations1_ce0_local;
assign add_ln4_fu_375_p3 = {{trunc_ln95_reg_451_pp0_iter9_reg}, {lshr_ln92_1_reg_441_pp0_iter9_reg}};
assign add_ln93_1_fu_275_p2 = (i_fu_68 + 7'd1);
assign add_ln93_fu_242_p2 = (ap_sig_allocacmp_indvar_flatten12_load + 11'd1);
assign add_ln94_fu_339_p2 = (select_ln92_fu_267_p3 + 7'd4);
assign add_ln95_1_fu_387_p4 = {{{trunc_ln95_reg_451_pp0_iter10_reg}, {tmp_s_reg_462_pp0_iter10_reg}}, {1'd1}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign delta_weights2_1_address0 = zext_ln95_2_fu_395_p1;
assign delta_weights2_1_address1 = zext_ln95_fu_381_p1;
assign delta_weights2_1_ce0 = delta_weights2_1_ce0_local;
assign delta_weights2_1_ce1 = delta_weights2_1_ce1_local;
assign delta_weights2_1_d0 = mul_3_i1_reg_521;
assign delta_weights2_1_d1 = mul_1_i1_reg_511;
assign delta_weights2_1_we0 = delta_weights2_1_we0_local;
assign delta_weights2_1_we1 = delta_weights2_1_we1_local;
assign delta_weights2_address0 = zext_ln95_2_fu_395_p1;
assign delta_weights2_address1 = zext_ln95_fu_381_p1;
assign delta_weights2_ce0 = delta_weights2_ce0_local;
assign delta_weights2_ce1 = delta_weights2_ce1_local;
assign delta_weights2_d0 = mul_2_i1_reg_516;
assign delta_weights2_d1 = mul_i4_reg_506;
assign delta_weights2_we0 = delta_weights2_we0_local;
assign delta_weights2_we1 = delta_weights2_we1_local;
assign grp_fu_1780_p_ce = 1'b1;
assign grp_fu_1780_p_din0 = tmp_28_reg_468;
assign grp_fu_1780_p_din1 = oracle_activations2_load_reg_476;
assign grp_fu_3171_p_ce = 1'b1;
assign grp_fu_3171_p_din0 = tmp_28_reg_468;
assign grp_fu_3171_p_din1 = oracle_activations2_1_load_reg_491;
assign grp_fu_3175_p_ce = 1'b1;
assign grp_fu_3175_p_din0 = tmp_28_reg_468_pp0_iter3_reg;
assign grp_fu_3175_p_din1 = oracle_activations2_load_1_reg_496;
assign grp_fu_3179_p_ce = 1'b1;
assign grp_fu_3179_p_din0 = tmp_28_reg_468_pp0_iter3_reg;
assign grp_fu_3179_p_din1 = oracle_activations2_1_load_1_reg_501;
assign icmp_ln93_fu_236_p2 = ((ap_sig_allocacmp_indvar_flatten12_load == 11'd1024) ? 1'b1 : 1'b0);
assign lshr_ln92_1_fu_309_p4 = {{select_ln92_fu_267_p3[5:1]}};
assign lshr_ln_fu_293_p4 = {{select_ln93_fu_281_p3[5:1]}};
assign or_ln_fu_362_p3 = {{tmp_s_reg_462}, {1'd1}};
assign oracle_activations2_1_address0 = zext_ln95_1_fu_369_p1;
assign oracle_activations2_1_address1 = zext_ln92_1_fu_319_p1;
assign oracle_activations2_1_ce0 = oracle_activations2_1_ce0_local;
assign oracle_activations2_1_ce1 = oracle_activations2_1_ce1_local;
assign oracle_activations2_address0 = zext_ln95_1_fu_369_p1;
assign oracle_activations2_address1 = zext_ln92_1_fu_319_p1;
assign oracle_activations2_ce0 = oracle_activations2_ce0_local;
assign oracle_activations2_ce1 = oracle_activations2_ce1_local;
assign select_ln92_fu_267_p3 = ((tmp_fu_259_p3[0:0] == 1'b1) ? 7'd0 : j_fu_64);
assign select_ln93_fu_281_p3 = ((tmp_fu_259_p3[0:0] == 1'b1) ? add_ln93_1_fu_275_p2 : i_fu_68);
assign tmp_28_fu_355_p3 = ((trunc_ln93_reg_426[0:0] == 1'b1) ? activations1_1_q0 : activations1_q0);
assign tmp_fu_259_p3 = j_fu_64[32'd6];
assign trunc_ln93_fu_289_p1 = select_ln93_fu_281_p3[0:0];
assign trunc_ln95_fu_325_p1 = select_ln93_fu_281_p3[5:0];
assign zext_ln92_1_fu_319_p1 = lshr_ln92_1_fu_309_p4;
assign zext_ln92_fu_303_p1 = lshr_ln_fu_293_p4;
assign zext_ln95_1_fu_369_p1 = or_ln_fu_362_p3;
assign zext_ln95_2_fu_395_p1 = add_ln95_1_fu_387_p4;
assign zext_ln95_fu_381_p1 = add_ln4_fu_375_p3;
endmodule 
