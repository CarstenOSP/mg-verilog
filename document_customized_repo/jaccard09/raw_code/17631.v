module backprop_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,phi_mul,training_data_0_address0,training_data_0_ce0,training_data_0_q0,training_data_1_address0,training_data_1_ce0,training_data_1_q0,delta_weights1_1_address0,delta_weights1_1_ce0,delta_weights1_1_we0,delta_weights1_1_d0,delta_weights1_1_address1,delta_weights1_1_ce1,delta_weights1_1_we1,delta_weights1_1_d1,delta_weights1_address0,delta_weights1_ce0,delta_weights1_we0,delta_weights1_d0,delta_weights1_address1,delta_weights1_ce1,delta_weights1_we1,delta_weights1_d1,oracle_activations1_address0,oracle_activations1_ce0,oracle_activations1_q0,oracle_activations1_address1,oracle_activations1_ce1,oracle_activations1_q1,oracle_activations1_1_address0,oracle_activations1_1_ce0,oracle_activations1_1_q0,oracle_activations1_1_address1,oracle_activations1_1_ce1,oracle_activations1_1_q1,grp_fu_1780_p_din0,grp_fu_1780_p_din1,grp_fu_1780_p_dout0,grp_fu_1780_p_ce,grp_fu_3171_p_din0,grp_fu_3171_p_din1,grp_fu_3171_p_dout0,grp_fu_3171_p_ce,grp_fu_3175_p_din0,grp_fu_3175_p_din1,grp_fu_3175_p_dout0,grp_fu_3175_p_ce,grp_fu_3179_p_din0,grp_fu_3179_p_din1,grp_fu_3179_p_dout0,grp_fu_3179_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [11:0] phi_mul;
output  [10:0] training_data_0_address0;
output   training_data_0_ce0;
input  [63:0] training_data_0_q0;
output  [10:0] training_data_1_address0;
output   training_data_1_ce0;
input  [63:0] training_data_1_q0;
output  [8:0] delta_weights1_1_address0;
output   delta_weights1_1_ce0;
output   delta_weights1_1_we0;
output  [63:0] delta_weights1_1_d0;
output  [8:0] delta_weights1_1_address1;
output   delta_weights1_1_ce1;
output   delta_weights1_1_we1;
output  [63:0] delta_weights1_1_d1;
output  [8:0] delta_weights1_address0;
output   delta_weights1_ce0;
output   delta_weights1_we0;
output  [63:0] delta_weights1_d0;
output  [8:0] delta_weights1_address1;
output   delta_weights1_ce1;
output   delta_weights1_we1;
output  [63:0] delta_weights1_d1;
output  [4:0] oracle_activations1_address0;
output   oracle_activations1_ce0;
input  [63:0] oracle_activations1_q0;
output  [4:0] oracle_activations1_address1;
output   oracle_activations1_ce1;
input  [63:0] oracle_activations1_q1;
output  [4:0] oracle_activations1_1_address0;
output   oracle_activations1_1_ce0;
input  [63:0] oracle_activations1_1_q0;
output  [4:0] oracle_activations1_1_address1;
output   oracle_activations1_1_ce1;
input  [63:0] oracle_activations1_1_q1;
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
wire   [0:0] icmp_ln113_fu_256_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] select_ln113_fu_296_p3;
reg   [3:0] select_ln113_reg_459;
reg   [3:0] select_ln113_reg_459_pp0_iter1_reg;
reg   [3:0] select_ln113_reg_459_pp0_iter2_reg;
reg   [3:0] select_ln113_reg_459_pp0_iter3_reg;
reg   [3:0] select_ln113_reg_459_pp0_iter4_reg;
reg   [3:0] select_ln113_reg_459_pp0_iter5_reg;
reg   [3:0] select_ln113_reg_459_pp0_iter6_reg;
reg   [3:0] select_ln113_reg_459_pp0_iter7_reg;
reg   [3:0] select_ln113_reg_459_pp0_iter8_reg;
reg   [3:0] select_ln113_reg_459_pp0_iter9_reg;
reg   [3:0] select_ln113_reg_459_pp0_iter10_reg;
reg   [4:0] lshr_ln_reg_466;
reg   [4:0] lshr_ln_reg_466_pp0_iter1_reg;
reg   [4:0] lshr_ln_reg_466_pp0_iter2_reg;
reg   [4:0] lshr_ln_reg_466_pp0_iter3_reg;
reg   [4:0] lshr_ln_reg_466_pp0_iter4_reg;
reg   [4:0] lshr_ln_reg_466_pp0_iter5_reg;
reg   [4:0] lshr_ln_reg_466_pp0_iter6_reg;
reg   [4:0] lshr_ln_reg_466_pp0_iter7_reg;
reg   [4:0] lshr_ln_reg_466_pp0_iter8_reg;
reg   [4:0] lshr_ln_reg_466_pp0_iter9_reg;
reg   [3:0] tmp_30_reg_472;
reg   [3:0] tmp_30_reg_472_pp0_iter1_reg;
reg   [3:0] tmp_30_reg_472_pp0_iter2_reg;
reg   [3:0] tmp_30_reg_472_pp0_iter3_reg;
reg   [3:0] tmp_30_reg_472_pp0_iter4_reg;
reg   [3:0] tmp_30_reg_472_pp0_iter5_reg;
reg   [3:0] tmp_30_reg_472_pp0_iter6_reg;
reg   [3:0] tmp_30_reg_472_pp0_iter7_reg;
reg   [3:0] tmp_30_reg_472_pp0_iter8_reg;
reg   [3:0] tmp_30_reg_472_pp0_iter9_reg;
reg   [3:0] tmp_30_reg_472_pp0_iter10_reg;
wire   [0:0] empty_fu_353_p1;
reg   [0:0] empty_reg_478;
wire   [63:0] tmp_29_v_fu_378_p3;
reg   [63:0] tmp_29_v_reg_503;
reg   [63:0] oracle_activations1_load_reg_508;
reg   [63:0] oracle_activations1_1_load_reg_523;
wire   [63:0] tmp_29_fu_398_p1;
reg   [63:0] tmp_29_reg_528;
reg   [63:0] oracle_activations1_load_1_reg_536;
reg   [63:0] oracle_activations1_1_load_1_reg_541;
reg   [63:0] mul_i5_reg_546;
reg   [63:0] mul_1_i2_reg_551;
reg   [63:0] mul_2_i2_reg_556;
reg   [63:0] mul_3_i2_reg_561;
wire   [63:0] p_cast28_fu_367_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln112_fu_373_p1;
wire   [63:0] zext_ln115_1_fu_392_p1;
wire   [63:0] zext_ln115_fu_409_p1;
wire   [63:0] zext_ln115_2_fu_423_p1;
reg   [6:0] j_fu_78;
wire   [6:0] add_ln114_fu_324_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [3:0] i_fu_82;
reg   [3:0] ap_sig_allocacmp_i_load;
reg   [7:0] indvar_flatten19_fu_86;
wire   [7:0] add_ln113_fu_262_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten19_load;
reg    training_data_0_ce0_local;
reg    training_data_1_ce0_local;
reg    oracle_activations1_ce1_local;
reg    oracle_activations1_ce0_local;
reg    oracle_activations1_1_ce1_local;
reg    oracle_activations1_1_ce0_local;
reg    delta_weights1_we1_local;
reg    delta_weights1_ce1_local;
reg    delta_weights1_we0_local;
reg    delta_weights1_ce0_local;
reg    delta_weights1_1_we1_local;
reg    delta_weights1_1_ce1_local;
reg    delta_weights1_1_we0_local;
reg    delta_weights1_1_ce0_local;
wire   [0:0] tmp_fu_274_p3;
wire   [3:0] add_ln113_1_fu_290_p2;
wire   [6:0] select_ln112_fu_282_p3;
wire   [11:0] zext_ln113_fu_345_p1;
wire   [11:0] arrayidx10_sum_fu_348_p2;
wire   [10:0] tmp_s_fu_357_p4;
wire   [4:0] or_ln_fu_385_p3;
wire   [8:0] add_ln6_fu_403_p3;
wire   [8:0] add_ln115_1_fu_415_p4;
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
#0 j_fu_78 = 7'd0;
#0 i_fu_82 = 4'd0;
#0 indvar_flatten19_fu_86 = 8'd0;
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
        if (((icmp_ln113_fu_256_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_82 <= select_ln113_fu_296_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_82 <= 4'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln113_fu_256_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten19_fu_86 <= add_ln113_fu_262_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten19_fu_86 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln113_fu_256_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_fu_78 <= add_ln114_fu_324_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_78 <= 7'd0;
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
        lshr_ln_reg_466_pp0_iter2_reg <= lshr_ln_reg_466_pp0_iter1_reg;
        lshr_ln_reg_466_pp0_iter3_reg <= lshr_ln_reg_466_pp0_iter2_reg;
        lshr_ln_reg_466_pp0_iter4_reg <= lshr_ln_reg_466_pp0_iter3_reg;
        lshr_ln_reg_466_pp0_iter5_reg <= lshr_ln_reg_466_pp0_iter4_reg;
        lshr_ln_reg_466_pp0_iter6_reg <= lshr_ln_reg_466_pp0_iter5_reg;
        lshr_ln_reg_466_pp0_iter7_reg <= lshr_ln_reg_466_pp0_iter6_reg;
        lshr_ln_reg_466_pp0_iter8_reg <= lshr_ln_reg_466_pp0_iter7_reg;
        lshr_ln_reg_466_pp0_iter9_reg <= lshr_ln_reg_466_pp0_iter8_reg;
        mul_1_i2_reg_551 <= grp_fu_3171_p_dout0;
        mul_2_i2_reg_556 <= grp_fu_3175_p_dout0;
        mul_3_i2_reg_561 <= grp_fu_3179_p_dout0;
        mul_i5_reg_546 <= grp_fu_1780_p_dout0;
        select_ln113_reg_459_pp0_iter10_reg <= select_ln113_reg_459_pp0_iter9_reg;
        select_ln113_reg_459_pp0_iter2_reg <= select_ln113_reg_459_pp0_iter1_reg;
        select_ln113_reg_459_pp0_iter3_reg <= select_ln113_reg_459_pp0_iter2_reg;
        select_ln113_reg_459_pp0_iter4_reg <= select_ln113_reg_459_pp0_iter3_reg;
        select_ln113_reg_459_pp0_iter5_reg <= select_ln113_reg_459_pp0_iter4_reg;
        select_ln113_reg_459_pp0_iter6_reg <= select_ln113_reg_459_pp0_iter5_reg;
        select_ln113_reg_459_pp0_iter7_reg <= select_ln113_reg_459_pp0_iter6_reg;
        select_ln113_reg_459_pp0_iter8_reg <= select_ln113_reg_459_pp0_iter7_reg;
        select_ln113_reg_459_pp0_iter9_reg <= select_ln113_reg_459_pp0_iter8_reg;
        tmp_29_reg_528 <= tmp_29_fu_398_p1;
        tmp_29_v_reg_503 <= tmp_29_v_fu_378_p3;
        tmp_30_reg_472_pp0_iter10_reg <= tmp_30_reg_472_pp0_iter9_reg;
        tmp_30_reg_472_pp0_iter2_reg <= tmp_30_reg_472_pp0_iter1_reg;
        tmp_30_reg_472_pp0_iter3_reg <= tmp_30_reg_472_pp0_iter2_reg;
        tmp_30_reg_472_pp0_iter4_reg <= tmp_30_reg_472_pp0_iter3_reg;
        tmp_30_reg_472_pp0_iter5_reg <= tmp_30_reg_472_pp0_iter4_reg;
        tmp_30_reg_472_pp0_iter6_reg <= tmp_30_reg_472_pp0_iter5_reg;
        tmp_30_reg_472_pp0_iter7_reg <= tmp_30_reg_472_pp0_iter6_reg;
        tmp_30_reg_472_pp0_iter8_reg <= tmp_30_reg_472_pp0_iter7_reg;
        tmp_30_reg_472_pp0_iter9_reg <= tmp_30_reg_472_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_reg_478 <= empty_fu_353_p1;
        lshr_ln_reg_466 <= {{select_ln112_fu_282_p3[5:1]}};
        lshr_ln_reg_466_pp0_iter1_reg <= lshr_ln_reg_466;
        select_ln113_reg_459 <= select_ln113_fu_296_p3;
        select_ln113_reg_459_pp0_iter1_reg <= select_ln113_reg_459;
        tmp_30_reg_472 <= {{select_ln112_fu_282_p3[5:2]}};
        tmp_30_reg_472_pp0_iter1_reg <= tmp_30_reg_472;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        oracle_activations1_1_load_1_reg_541 <= oracle_activations1_1_q0;
        oracle_activations1_load_1_reg_536 <= oracle_activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations1_1_load_reg_523 <= oracle_activations1_1_q1;
        oracle_activations1_load_reg_508 <= oracle_activations1_q1;
    end
end
always @ (*) begin
    if (((icmp_ln113_fu_256_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i_load = 4'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_82;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten19_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten19_load = indvar_flatten19_fu_86;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_78;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_1_ce0_local = 1'b1;
    end else begin
        delta_weights1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_1_ce1_local = 1'b1;
    end else begin
        delta_weights1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_1_we0_local = 1'b1;
    end else begin
        delta_weights1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_1_we1_local = 1'b1;
    end else begin
        delta_weights1_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_ce0_local = 1'b1;
    end else begin
        delta_weights1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_ce1_local = 1'b1;
    end else begin
        delta_weights1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights1_we0_local = 1'b1;
    end else begin
        delta_weights1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_we1_local = 1'b1;
    end else begin
        delta_weights1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations1_1_ce0_local = 1'b1;
    end else begin
        oracle_activations1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_1_ce1_local = 1'b1;
    end else begin
        oracle_activations1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations1_ce0_local = 1'b1;
    end else begin
        oracle_activations1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_ce1_local = 1'b1;
    end else begin
        oracle_activations1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_0_ce0_local = 1'b1;
    end else begin
        training_data_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_1_ce0_local = 1'b1;
    end else begin
        training_data_1_ce0_local = 1'b0;
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
assign add_ln113_1_fu_290_p2 = (ap_sig_allocacmp_i_load + 4'd1);
assign add_ln113_fu_262_p2 = (ap_sig_allocacmp_indvar_flatten19_load + 8'd1);
assign add_ln114_fu_324_p2 = (select_ln112_fu_282_p3 + 7'd4);
assign add_ln115_1_fu_415_p4 = {{{select_ln113_reg_459_pp0_iter10_reg}, {tmp_30_reg_472_pp0_iter10_reg}}, {1'd1}};
assign add_ln6_fu_403_p3 = {{select_ln113_reg_459_pp0_iter9_reg}, {lshr_ln_reg_466_pp0_iter9_reg}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign arrayidx10_sum_fu_348_p2 = (zext_ln113_fu_345_p1 + phi_mul);
assign delta_weights1_1_address0 = zext_ln115_2_fu_423_p1;
assign delta_weights1_1_address1 = zext_ln115_fu_409_p1;
assign delta_weights1_1_ce0 = delta_weights1_1_ce0_local;
assign delta_weights1_1_ce1 = delta_weights1_1_ce1_local;
assign delta_weights1_1_d0 = mul_3_i2_reg_561;
assign delta_weights1_1_d1 = mul_1_i2_reg_551;
assign delta_weights1_1_we0 = delta_weights1_1_we0_local;
assign delta_weights1_1_we1 = delta_weights1_1_we1_local;
assign delta_weights1_address0 = zext_ln115_2_fu_423_p1;
assign delta_weights1_address1 = zext_ln115_fu_409_p1;
assign delta_weights1_ce0 = delta_weights1_ce0_local;
assign delta_weights1_ce1 = delta_weights1_ce1_local;
assign delta_weights1_d0 = mul_2_i2_reg_556;
assign delta_weights1_d1 = mul_i5_reg_546;
assign delta_weights1_we0 = delta_weights1_we0_local;
assign delta_weights1_we1 = delta_weights1_we1_local;
assign empty_fu_353_p1 = arrayidx10_sum_fu_348_p2[0:0];
assign grp_fu_1780_p_ce = 1'b1;
assign grp_fu_1780_p_din0 = tmp_29_fu_398_p1;
assign grp_fu_1780_p_din1 = oracle_activations1_load_reg_508;
assign grp_fu_3171_p_ce = 1'b1;
assign grp_fu_3171_p_din0 = tmp_29_fu_398_p1;
assign grp_fu_3171_p_din1 = oracle_activations1_1_load_reg_523;
assign grp_fu_3175_p_ce = 1'b1;
assign grp_fu_3175_p_din0 = tmp_29_reg_528;
assign grp_fu_3175_p_din1 = oracle_activations1_load_1_reg_536;
assign grp_fu_3179_p_ce = 1'b1;
assign grp_fu_3179_p_din0 = tmp_29_reg_528;
assign grp_fu_3179_p_din1 = oracle_activations1_1_load_1_reg_541;
assign icmp_ln113_fu_256_p2 = ((ap_sig_allocacmp_indvar_flatten19_load == 8'd208) ? 1'b1 : 1'b0);
assign or_ln_fu_385_p3 = {{tmp_30_reg_472_pp0_iter1_reg}, {1'd1}};
assign oracle_activations1_1_address0 = zext_ln115_1_fu_392_p1;
assign oracle_activations1_1_address1 = zext_ln112_fu_373_p1;
assign oracle_activations1_1_ce0 = oracle_activations1_1_ce0_local;
assign oracle_activations1_1_ce1 = oracle_activations1_1_ce1_local;
assign oracle_activations1_address0 = zext_ln115_1_fu_392_p1;
assign oracle_activations1_address1 = zext_ln112_fu_373_p1;
assign oracle_activations1_ce0 = oracle_activations1_ce0_local;
assign oracle_activations1_ce1 = oracle_activations1_ce1_local;
assign p_cast28_fu_367_p1 = tmp_s_fu_357_p4;
assign select_ln112_fu_282_p3 = ((tmp_fu_274_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign select_ln113_fu_296_p3 = ((tmp_fu_274_p3[0:0] == 1'b1) ? add_ln113_1_fu_290_p2 : ap_sig_allocacmp_i_load);
assign tmp_29_fu_398_p1 = tmp_29_v_reg_503;
assign tmp_29_v_fu_378_p3 = ((empty_reg_478[0:0] == 1'b1) ? training_data_1_q0 : training_data_0_q0);
assign tmp_fu_274_p3 = ap_sig_allocacmp_j_load[32'd6];
assign tmp_s_fu_357_p4 = {{arrayidx10_sum_fu_348_p2[11:1]}};
assign training_data_0_address0 = p_cast28_fu_367_p1;
assign training_data_0_ce0 = training_data_0_ce0_local;
assign training_data_1_address0 = p_cast28_fu_367_p1;
assign training_data_1_ce0 = training_data_1_ce0_local;
assign zext_ln112_fu_373_p1 = lshr_ln_reg_466;
assign zext_ln113_fu_345_p1 = select_ln113_reg_459;
assign zext_ln115_1_fu_392_p1 = or_ln_fu_385_p3;
assign zext_ln115_2_fu_423_p1 = add_ln115_1_fu_415_p4;
assign zext_ln115_fu_409_p1 = add_ln6_fu_403_p3;
endmodule 