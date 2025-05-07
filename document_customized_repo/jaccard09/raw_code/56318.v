module backprop_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,phi_mul,training_data_address0,training_data_ce0,training_data_q0,oracle_activations1_address0,oracle_activations1_ce0,oracle_activations1_q0,oracle_activations1_address1,oracle_activations1_ce1,oracle_activations1_q1,delta_weights1_address0,delta_weights1_ce0,delta_weights1_we0,delta_weights1_d0,delta_weights1_address1,delta_weights1_ce1,delta_weights1_we1,delta_weights1_d1,grp_fu_2824_p_din0,grp_fu_2824_p_din1,grp_fu_2824_p_dout0,grp_fu_2824_p_ce,grp_fu_2828_p_din0,grp_fu_2828_p_din1,grp_fu_2828_p_dout0,grp_fu_2828_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [11:0] phi_mul;
output  [11:0] training_data_address0;
output   training_data_ce0;
input  [63:0] training_data_q0;
output  [5:0] oracle_activations1_address0;
output   oracle_activations1_ce0;
input  [63:0] oracle_activations1_q0;
output  [5:0] oracle_activations1_address1;
output   oracle_activations1_ce1;
input  [63:0] oracle_activations1_q1;
output  [9:0] delta_weights1_address0;
output   delta_weights1_ce0;
output   delta_weights1_we0;
output  [63:0] delta_weights1_d0;
output  [9:0] delta_weights1_address1;
output   delta_weights1_ce1;
output   delta_weights1_we1;
output  [63:0] delta_weights1_d1;
output  [63:0] grp_fu_2824_p_din0;
output  [63:0] grp_fu_2824_p_din1;
input  [63:0] grp_fu_2824_p_dout0;
output   grp_fu_2824_p_ce;
output  [63:0] grp_fu_2828_p_din0;
output  [63:0] grp_fu_2828_p_din1;
input  [63:0] grp_fu_2828_p_dout0;
output   grp_fu_2828_p_ce;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln113_fu_173_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [6:0] select_ln112_fu_199_p3;
reg   [6:0] select_ln112_reg_349;
reg   [6:0] select_ln112_reg_349_pp0_iter1_reg;
reg   [6:0] select_ln112_reg_349_pp0_iter2_reg;
reg   [6:0] select_ln112_reg_349_pp0_iter3_reg;
reg   [6:0] select_ln112_reg_349_pp0_iter4_reg;
reg   [6:0] select_ln112_reg_349_pp0_iter5_reg;
reg   [6:0] select_ln112_reg_349_pp0_iter6_reg;
reg   [6:0] select_ln112_reg_349_pp0_iter7_reg;
reg   [6:0] select_ln112_reg_349_pp0_iter8_reg;
reg   [6:0] select_ln112_reg_349_pp0_iter9_reg;
wire   [3:0] select_ln113_fu_213_p3;
reg   [3:0] select_ln113_reg_355;
reg   [3:0] select_ln113_reg_355_pp0_iter1_reg;
reg   [3:0] select_ln113_reg_355_pp0_iter2_reg;
reg   [3:0] select_ln113_reg_355_pp0_iter3_reg;
reg   [3:0] select_ln113_reg_355_pp0_iter4_reg;
reg   [3:0] select_ln113_reg_355_pp0_iter5_reg;
reg   [3:0] select_ln113_reg_355_pp0_iter6_reg;
reg   [3:0] select_ln113_reg_355_pp0_iter7_reg;
reg   [3:0] select_ln113_reg_355_pp0_iter8_reg;
reg   [3:0] select_ln113_reg_355_pp0_iter9_reg;
reg   [4:0] tmp_8_reg_362;
reg   [4:0] tmp_8_reg_362_pp0_iter1_reg;
reg   [4:0] tmp_8_reg_362_pp0_iter2_reg;
reg   [4:0] tmp_8_reg_362_pp0_iter3_reg;
reg   [4:0] tmp_8_reg_362_pp0_iter4_reg;
reg   [4:0] tmp_8_reg_362_pp0_iter5_reg;
reg   [4:0] tmp_8_reg_362_pp0_iter6_reg;
reg   [4:0] tmp_8_reg_362_pp0_iter7_reg;
reg   [4:0] tmp_8_reg_362_pp0_iter8_reg;
reg   [4:0] tmp_8_reg_362_pp0_iter9_reg;
wire   [63:0] empty_fu_281_p1;
reg   [63:0] empty_reg_383;
reg   [63:0] oracle_activations1_load_reg_389;
reg   [63:0] oracle_activations1_load_1_reg_394;
reg   [63:0] mul_i5_reg_399;
reg   [63:0] mul_1_i2_reg_404;
wire   [63:0] arrayidx10_sum_cast_fu_260_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln114_fu_265_p1;
wire   [63:0] zext_ln115_1_fu_276_p1;
wire   [63:0] zext_ln115_fu_301_p1;
wire   [63:0] zext_ln115_2_fu_314_p1;
reg   [6:0] j_fu_66;
wire   [6:0] add_ln114_fu_231_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [3:0] i_fu_70;
reg   [3:0] ap_sig_allocacmp_i_load;
reg   [8:0] indvar_flatten33_fu_74;
wire   [8:0] add_ln113_fu_179_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten33_load;
reg    training_data_ce0_local;
reg    oracle_activations1_ce1_local;
reg    oracle_activations1_ce0_local;
reg    delta_weights1_we1_local;
reg    delta_weights1_ce1_local;
reg    delta_weights1_we0_local;
reg    delta_weights1_ce0_local;
wire   [0:0] tmp_fu_191_p3;
wire   [3:0] add_ln113_1_fu_207_p2;
wire   [11:0] zext_ln113_fu_252_p1;
wire   [11:0] arrayidx10_sum_fu_255_p2;
wire   [5:0] or_ln_fu_269_p3;
wire   [9:0] zext_ln114_1_fu_292_p1;
wire   [9:0] tmp_s_fu_285_p3;
wire   [9:0] add_ln115_fu_295_p2;
wire   [9:0] add_ln115_1_fu_306_p4;
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
#0 j_fu_66 = 7'd0;
#0 i_fu_70 = 4'd0;
#0 indvar_flatten33_fu_74 = 9'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
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
        if (((icmp_ln113_fu_173_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_70 <= select_ln113_fu_213_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_70 <= 4'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln113_fu_173_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten33_fu_74 <= add_ln113_fu_179_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten33_fu_74 <= 9'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln113_fu_173_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_fu_66 <= add_ln114_fu_231_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_66 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        select_ln112_reg_349 <= select_ln112_fu_199_p3;
        select_ln112_reg_349_pp0_iter1_reg <= select_ln112_reg_349;
        select_ln113_reg_355 <= select_ln113_fu_213_p3;
        select_ln113_reg_355_pp0_iter1_reg <= select_ln113_reg_355;
        tmp_8_reg_362 <= {{select_ln112_fu_199_p3[5:1]}};
        tmp_8_reg_362_pp0_iter1_reg <= tmp_8_reg_362;
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
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        empty_reg_383 <= empty_fu_281_p1;
        mul_1_i2_reg_404 <= grp_fu_2828_p_dout0;
        mul_i5_reg_399 <= grp_fu_2824_p_dout0;
        select_ln112_reg_349_pp0_iter2_reg <= select_ln112_reg_349_pp0_iter1_reg;
        select_ln112_reg_349_pp0_iter3_reg <= select_ln112_reg_349_pp0_iter2_reg;
        select_ln112_reg_349_pp0_iter4_reg <= select_ln112_reg_349_pp0_iter3_reg;
        select_ln112_reg_349_pp0_iter5_reg <= select_ln112_reg_349_pp0_iter4_reg;
        select_ln112_reg_349_pp0_iter6_reg <= select_ln112_reg_349_pp0_iter5_reg;
        select_ln112_reg_349_pp0_iter7_reg <= select_ln112_reg_349_pp0_iter6_reg;
        select_ln112_reg_349_pp0_iter8_reg <= select_ln112_reg_349_pp0_iter7_reg;
        select_ln112_reg_349_pp0_iter9_reg <= select_ln112_reg_349_pp0_iter8_reg;
        select_ln113_reg_355_pp0_iter2_reg <= select_ln113_reg_355_pp0_iter1_reg;
        select_ln113_reg_355_pp0_iter3_reg <= select_ln113_reg_355_pp0_iter2_reg;
        select_ln113_reg_355_pp0_iter4_reg <= select_ln113_reg_355_pp0_iter3_reg;
        select_ln113_reg_355_pp0_iter5_reg <= select_ln113_reg_355_pp0_iter4_reg;
        select_ln113_reg_355_pp0_iter6_reg <= select_ln113_reg_355_pp0_iter5_reg;
        select_ln113_reg_355_pp0_iter7_reg <= select_ln113_reg_355_pp0_iter6_reg;
        select_ln113_reg_355_pp0_iter8_reg <= select_ln113_reg_355_pp0_iter7_reg;
        select_ln113_reg_355_pp0_iter9_reg <= select_ln113_reg_355_pp0_iter8_reg;
        tmp_8_reg_362_pp0_iter2_reg <= tmp_8_reg_362_pp0_iter1_reg;
        tmp_8_reg_362_pp0_iter3_reg <= tmp_8_reg_362_pp0_iter2_reg;
        tmp_8_reg_362_pp0_iter4_reg <= tmp_8_reg_362_pp0_iter3_reg;
        tmp_8_reg_362_pp0_iter5_reg <= tmp_8_reg_362_pp0_iter4_reg;
        tmp_8_reg_362_pp0_iter6_reg <= tmp_8_reg_362_pp0_iter5_reg;
        tmp_8_reg_362_pp0_iter7_reg <= tmp_8_reg_362_pp0_iter6_reg;
        tmp_8_reg_362_pp0_iter8_reg <= tmp_8_reg_362_pp0_iter7_reg;
        tmp_8_reg_362_pp0_iter9_reg <= tmp_8_reg_362_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        oracle_activations1_load_1_reg_394 <= oracle_activations1_q0;
        oracle_activations1_load_reg_389 <= oracle_activations1_q1;
    end
end
always @ (*) begin
    if (((icmp_ln113_fu_173_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_i_load = i_fu_70;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten33_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten33_load = indvar_flatten33_fu_74;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_66;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        training_data_ce0_local = 1'b1;
    end else begin
        training_data_ce0_local = 1'b0;
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
assign add_ln113_1_fu_207_p2 = (ap_sig_allocacmp_i_load + 4'd1);
assign add_ln113_fu_179_p2 = (ap_sig_allocacmp_indvar_flatten33_load + 9'd1);
assign add_ln114_fu_231_p2 = (select_ln112_fu_199_p3 + 7'd2);
assign add_ln115_1_fu_306_p4 = {{{select_ln113_reg_355_pp0_iter9_reg}, {tmp_8_reg_362_pp0_iter9_reg}}, {1'd1}};
assign add_ln115_fu_295_p2 = (zext_ln114_1_fu_292_p1 + tmp_s_fu_285_p3);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign arrayidx10_sum_cast_fu_260_p1 = arrayidx10_sum_fu_255_p2;
assign arrayidx10_sum_fu_255_p2 = (zext_ln113_fu_252_p1 + phi_mul);
assign delta_weights1_address0 = zext_ln115_2_fu_314_p1;
assign delta_weights1_address1 = zext_ln115_fu_301_p1;
assign delta_weights1_ce0 = delta_weights1_ce0_local;
assign delta_weights1_ce1 = delta_weights1_ce1_local;
assign delta_weights1_d0 = mul_1_i2_reg_404;
assign delta_weights1_d1 = mul_i5_reg_399;
assign delta_weights1_we0 = delta_weights1_we0_local;
assign delta_weights1_we1 = delta_weights1_we1_local;
assign empty_fu_281_p1 = training_data_q0;
assign grp_fu_2824_p_ce = 1'b1;
assign grp_fu_2824_p_din0 = empty_reg_383;
assign grp_fu_2824_p_din1 = oracle_activations1_load_reg_389;
assign grp_fu_2828_p_ce = 1'b1;
assign grp_fu_2828_p_din0 = empty_reg_383;
assign grp_fu_2828_p_din1 = oracle_activations1_load_1_reg_394;
assign icmp_ln113_fu_173_p2 = ((ap_sig_allocacmp_indvar_flatten33_load == 9'd416) ? 1'b1 : 1'b0);
assign or_ln_fu_269_p3 = {{tmp_8_reg_362}, {1'd1}};
assign oracle_activations1_address0 = zext_ln115_1_fu_276_p1;
assign oracle_activations1_address1 = zext_ln114_fu_265_p1;
assign oracle_activations1_ce0 = oracle_activations1_ce0_local;
assign oracle_activations1_ce1 = oracle_activations1_ce1_local;
assign select_ln112_fu_199_p3 = ((tmp_fu_191_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign select_ln113_fu_213_p3 = ((tmp_fu_191_p3[0:0] == 1'b1) ? add_ln113_1_fu_207_p2 : ap_sig_allocacmp_i_load);
assign tmp_fu_191_p3 = ap_sig_allocacmp_j_load[32'd6];
assign tmp_s_fu_285_p3 = {{select_ln113_reg_355_pp0_iter9_reg}, {6'd0}};
assign training_data_address0 = arrayidx10_sum_cast_fu_260_p1;
assign training_data_ce0 = training_data_ce0_local;
assign zext_ln113_fu_252_p1 = select_ln113_reg_355;
assign zext_ln114_1_fu_292_p1 = select_ln112_reg_349_pp0_iter9_reg;
assign zext_ln114_fu_265_p1 = select_ln112_reg_349;
assign zext_ln115_1_fu_276_p1 = or_ln_fu_269_p3;
assign zext_ln115_2_fu_314_p1 = add_ln115_1_fu_306_p4;
assign zext_ln115_fu_301_p1 = add_ln115_fu_295_p2;
endmodule 