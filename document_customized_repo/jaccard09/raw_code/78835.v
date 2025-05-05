module backprop_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,phi_mul,training_data_0_address0,training_data_0_ce0,training_data_0_q0,training_data_1_address0,training_data_1_ce0,training_data_1_q0,training_data_2_address0,training_data_2_ce0,training_data_2_q0,training_data_3_address0,training_data_3_ce0,training_data_3_q0,delta_weights1_3_address0,delta_weights1_3_ce0,delta_weights1_3_we0,delta_weights1_3_d0,delta_weights1_2_address0,delta_weights1_2_ce0,delta_weights1_2_we0,delta_weights1_2_d0,delta_weights1_1_address0,delta_weights1_1_ce0,delta_weights1_1_we0,delta_weights1_1_d0,delta_weights1_address0,delta_weights1_ce0,delta_weights1_we0,delta_weights1_d0,oracle_activations1_address0,oracle_activations1_ce0,oracle_activations1_q0,oracle_activations1_2_address0,oracle_activations1_2_ce0,oracle_activations1_2_q0,oracle_activations1_1_address0,oracle_activations1_1_ce0,oracle_activations1_1_q0,oracle_activations1_3_address0,oracle_activations1_3_ce0,oracle_activations1_3_q0,grp_fu_2070_p_din0,grp_fu_2070_p_din1,grp_fu_2070_p_dout0,grp_fu_2070_p_ce,grp_fu_3515_p_din0,grp_fu_3515_p_din1,grp_fu_3515_p_dout0,grp_fu_3515_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [11:0] phi_mul;
output  [9:0] training_data_0_address0;
output   training_data_0_ce0;
input  [63:0] training_data_0_q0;
output  [9:0] training_data_1_address0;
output   training_data_1_ce0;
input  [63:0] training_data_1_q0;
output  [9:0] training_data_2_address0;
output   training_data_2_ce0;
input  [63:0] training_data_2_q0;
output  [9:0] training_data_3_address0;
output   training_data_3_ce0;
input  [63:0] training_data_3_q0;
output  [7:0] delta_weights1_3_address0;
output   delta_weights1_3_ce0;
output   delta_weights1_3_we0;
output  [63:0] delta_weights1_3_d0;
output  [7:0] delta_weights1_2_address0;
output   delta_weights1_2_ce0;
output   delta_weights1_2_we0;
output  [63:0] delta_weights1_2_d0;
output  [7:0] delta_weights1_1_address0;
output   delta_weights1_1_ce0;
output   delta_weights1_1_we0;
output  [63:0] delta_weights1_1_d0;
output  [7:0] delta_weights1_address0;
output   delta_weights1_ce0;
output   delta_weights1_we0;
output  [63:0] delta_weights1_d0;
output  [3:0] oracle_activations1_address0;
output   oracle_activations1_ce0;
input  [63:0] oracle_activations1_q0;
output  [3:0] oracle_activations1_2_address0;
output   oracle_activations1_2_ce0;
input  [63:0] oracle_activations1_2_q0;
output  [3:0] oracle_activations1_1_address0;
output   oracle_activations1_1_ce0;
input  [63:0] oracle_activations1_1_q0;
output  [3:0] oracle_activations1_3_address0;
output   oracle_activations1_3_ce0;
input  [63:0] oracle_activations1_3_q0;
output  [63:0] grp_fu_2070_p_din0;
output  [63:0] grp_fu_2070_p_din1;
input  [63:0] grp_fu_2070_p_dout0;
output   grp_fu_2070_p_ce;
output  [63:0] grp_fu_3515_p_din0;
output  [63:0] grp_fu_3515_p_din1;
input  [63:0] grp_fu_3515_p_dout0;
output   grp_fu_3515_p_ce;
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
wire   [0:0] icmp_ln113_fu_294_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] select_ln113_fu_334_p3;
reg   [3:0] select_ln113_reg_523;
reg   [3:0] select_ln113_reg_523_pp0_iter1_reg;
reg   [3:0] select_ln113_reg_523_pp0_iter2_reg;
reg   [3:0] select_ln113_reg_523_pp0_iter3_reg;
reg   [3:0] select_ln113_reg_523_pp0_iter4_reg;
reg   [3:0] select_ln113_reg_523_pp0_iter5_reg;
reg   [3:0] select_ln113_reg_523_pp0_iter6_reg;
reg   [3:0] select_ln113_reg_523_pp0_iter7_reg;
reg   [3:0] select_ln113_reg_523_pp0_iter8_reg;
reg   [3:0] select_ln113_reg_523_pp0_iter9_reg;
reg   [3:0] lshr_ln_reg_529;
reg   [3:0] lshr_ln_reg_529_pp0_iter1_reg;
reg   [3:0] lshr_ln_reg_529_pp0_iter2_reg;
reg   [3:0] lshr_ln_reg_529_pp0_iter3_reg;
reg   [3:0] lshr_ln_reg_529_pp0_iter4_reg;
reg   [3:0] lshr_ln_reg_529_pp0_iter5_reg;
reg   [3:0] lshr_ln_reg_529_pp0_iter6_reg;
reg   [3:0] lshr_ln_reg_529_pp0_iter7_reg;
reg   [3:0] lshr_ln_reg_529_pp0_iter8_reg;
reg   [3:0] lshr_ln_reg_529_pp0_iter9_reg;
wire   [0:0] icmp_ln115_1_fu_356_p2;
reg   [0:0] icmp_ln115_1_reg_535;
reg   [0:0] icmp_ln115_1_reg_535_pp0_iter1_reg;
wire   [0:0] icmp_ln115_fu_362_p2;
reg   [0:0] icmp_ln115_reg_541;
reg   [0:0] icmp_ln115_reg_541_pp0_iter1_reg;
reg   [0:0] icmp_ln115_reg_541_pp0_iter2_reg;
reg   [0:0] icmp_ln115_reg_541_pp0_iter3_reg;
reg   [0:0] icmp_ln115_reg_541_pp0_iter4_reg;
reg   [0:0] icmp_ln115_reg_541_pp0_iter5_reg;
reg   [0:0] icmp_ln115_reg_541_pp0_iter6_reg;
reg   [0:0] icmp_ln115_reg_541_pp0_iter7_reg;
reg   [0:0] icmp_ln115_reg_541_pp0_iter8_reg;
reg   [0:0] icmp_ln115_reg_541_pp0_iter9_reg;
wire   [1:0] empty_fu_397_p1;
reg   [1:0] empty_reg_545;
wire   [63:0] tmp_32_fu_442_p11;
reg   [63:0] tmp_32_reg_590;
wire   [63:0] select_ln115_fu_465_p3;
reg   [63:0] select_ln115_reg_596;
wire   [63:0] select_ln115_1_fu_472_p3;
reg   [63:0] select_ln115_1_reg_601;
reg   [63:0] mul_i5_reg_606;
reg   [63:0] mul_1_i2_reg_612;
wire   [63:0] p_cast26_fu_411_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln112_fu_419_p1;
wire   [63:0] zext_ln115_fu_485_p1;
reg   [6:0] j_fu_94;
wire   [6:0] add_ln114_fu_368_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [3:0] i_fu_98;
reg   [3:0] ap_sig_allocacmp_i_load;
reg   [8:0] indvar_flatten19_fu_102;
wire   [8:0] add_ln113_fu_300_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten19_load;
reg    training_data_0_ce0_local;
reg    training_data_1_ce0_local;
reg    training_data_2_ce0_local;
reg    training_data_3_ce0_local;
reg    oracle_activations1_ce0_local;
reg    oracle_activations1_2_ce0_local;
reg    oracle_activations1_1_ce0_local;
reg    oracle_activations1_3_ce0_local;
reg    delta_weights1_2_we0_local;
reg    delta_weights1_2_ce0_local;
reg    delta_weights1_3_we0_local;
reg    delta_weights1_3_ce0_local;
reg    delta_weights1_we0_local;
reg    delta_weights1_ce0_local;
reg    delta_weights1_1_we0_local;
reg    delta_weights1_1_ce0_local;
wire   [0:0] tmp_fu_312_p3;
wire   [3:0] add_ln113_1_fu_328_p2;
wire   [6:0] select_ln112_fu_320_p3;
wire   [1:0] trunc_ln114_fu_342_p1;
wire   [11:0] zext_ln113_fu_389_p1;
wire   [11:0] arrayidx10_sum_fu_392_p2;
wire   [9:0] tmp_s_fu_401_p4;
wire   [63:0] tmp_32_fu_442_p2;
wire   [63:0] tmp_32_fu_442_p4;
wire   [63:0] tmp_32_fu_442_p6;
wire   [63:0] tmp_32_fu_442_p8;
wire   [63:0] tmp_32_fu_442_p9;
wire   [7:0] add_ln6_fu_479_p3;
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
wire   [1:0] tmp_32_fu_442_p1;
wire   [1:0] tmp_32_fu_442_p3;
wire  signed [1:0] tmp_32_fu_442_p5;
wire  signed [1:0] tmp_32_fu_442_p7;
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
#0 j_fu_94 = 7'd0;
#0 i_fu_98 = 4'd0;
#0 indvar_flatten19_fu_102 = 9'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U309(.din0(tmp_32_fu_442_p2),.din1(tmp_32_fu_442_p4),.din2(tmp_32_fu_442_p6),.din3(tmp_32_fu_442_p8),.def(tmp_32_fu_442_p9),.sel(empty_reg_545),.dout(tmp_32_fu_442_p11));
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
        if (((icmp_ln113_fu_294_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_98 <= select_ln113_fu_334_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_98 <= 4'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln113_fu_294_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten19_fu_102 <= add_ln113_fu_300_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten19_fu_102 <= 9'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln113_fu_294_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_fu_94 <= add_ln114_fu_368_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_94 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_reg_545 <= empty_fu_397_p1;
        icmp_ln115_1_reg_535 <= icmp_ln115_1_fu_356_p2;
        icmp_ln115_1_reg_535_pp0_iter1_reg <= icmp_ln115_1_reg_535;
        icmp_ln115_reg_541 <= icmp_ln115_fu_362_p2;
        icmp_ln115_reg_541_pp0_iter1_reg <= icmp_ln115_reg_541;
        lshr_ln_reg_529 <= {{select_ln112_fu_320_p3[5:2]}};
        lshr_ln_reg_529_pp0_iter1_reg <= lshr_ln_reg_529;
        select_ln113_reg_523 <= select_ln113_fu_334_p3;
        select_ln113_reg_523_pp0_iter1_reg <= select_ln113_reg_523;
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
        icmp_ln115_reg_541_pp0_iter2_reg <= icmp_ln115_reg_541_pp0_iter1_reg;
        icmp_ln115_reg_541_pp0_iter3_reg <= icmp_ln115_reg_541_pp0_iter2_reg;
        icmp_ln115_reg_541_pp0_iter4_reg <= icmp_ln115_reg_541_pp0_iter3_reg;
        icmp_ln115_reg_541_pp0_iter5_reg <= icmp_ln115_reg_541_pp0_iter4_reg;
        icmp_ln115_reg_541_pp0_iter6_reg <= icmp_ln115_reg_541_pp0_iter5_reg;
        icmp_ln115_reg_541_pp0_iter7_reg <= icmp_ln115_reg_541_pp0_iter6_reg;
        icmp_ln115_reg_541_pp0_iter8_reg <= icmp_ln115_reg_541_pp0_iter7_reg;
        icmp_ln115_reg_541_pp0_iter9_reg <= icmp_ln115_reg_541_pp0_iter8_reg;
        lshr_ln_reg_529_pp0_iter2_reg <= lshr_ln_reg_529_pp0_iter1_reg;
        lshr_ln_reg_529_pp0_iter3_reg <= lshr_ln_reg_529_pp0_iter2_reg;
        lshr_ln_reg_529_pp0_iter4_reg <= lshr_ln_reg_529_pp0_iter3_reg;
        lshr_ln_reg_529_pp0_iter5_reg <= lshr_ln_reg_529_pp0_iter4_reg;
        lshr_ln_reg_529_pp0_iter6_reg <= lshr_ln_reg_529_pp0_iter5_reg;
        lshr_ln_reg_529_pp0_iter7_reg <= lshr_ln_reg_529_pp0_iter6_reg;
        lshr_ln_reg_529_pp0_iter8_reg <= lshr_ln_reg_529_pp0_iter7_reg;
        lshr_ln_reg_529_pp0_iter9_reg <= lshr_ln_reg_529_pp0_iter8_reg;
        mul_1_i2_reg_612 <= grp_fu_3515_p_dout0;
        mul_i5_reg_606 <= grp_fu_2070_p_dout0;
        select_ln113_reg_523_pp0_iter2_reg <= select_ln113_reg_523_pp0_iter1_reg;
        select_ln113_reg_523_pp0_iter3_reg <= select_ln113_reg_523_pp0_iter2_reg;
        select_ln113_reg_523_pp0_iter4_reg <= select_ln113_reg_523_pp0_iter3_reg;
        select_ln113_reg_523_pp0_iter5_reg <= select_ln113_reg_523_pp0_iter4_reg;
        select_ln113_reg_523_pp0_iter6_reg <= select_ln113_reg_523_pp0_iter5_reg;
        select_ln113_reg_523_pp0_iter7_reg <= select_ln113_reg_523_pp0_iter6_reg;
        select_ln113_reg_523_pp0_iter8_reg <= select_ln113_reg_523_pp0_iter7_reg;
        select_ln113_reg_523_pp0_iter9_reg <= select_ln113_reg_523_pp0_iter8_reg;
        select_ln115_1_reg_601 <= select_ln115_1_fu_472_p3;
        select_ln115_reg_596 <= select_ln115_fu_465_p3;
        tmp_32_reg_590 <= tmp_32_fu_442_p11;
    end
end
always @ (*) begin
    if (((icmp_ln113_fu_294_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i_load = i_fu_98;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten19_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten19_load = indvar_flatten19_fu_102;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_94;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_1_ce0_local = 1'b1;
    end else begin
        delta_weights1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln115_reg_541_pp0_iter9_reg == 1'd1))) begin
        delta_weights1_1_we0_local = 1'b1;
    end else begin
        delta_weights1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_2_ce0_local = 1'b1;
    end else begin
        delta_weights1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln115_reg_541_pp0_iter9_reg == 1'd0))) begin
        delta_weights1_2_we0_local = 1'b1;
    end else begin
        delta_weights1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_3_ce0_local = 1'b1;
    end else begin
        delta_weights1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln115_reg_541_pp0_iter9_reg == 1'd0))) begin
        delta_weights1_3_we0_local = 1'b1;
    end else begin
        delta_weights1_3_we0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln115_reg_541_pp0_iter9_reg == 1'd1))) begin
        delta_weights1_we0_local = 1'b1;
    end else begin
        delta_weights1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_1_ce0_local = 1'b1;
    end else begin
        oracle_activations1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_2_ce0_local = 1'b1;
    end else begin
        oracle_activations1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_3_ce0_local = 1'b1;
    end else begin
        oracle_activations1_3_ce0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_2_ce0_local = 1'b1;
    end else begin
        training_data_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_3_ce0_local = 1'b1;
    end else begin
        training_data_3_ce0_local = 1'b0;
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
assign add_ln113_1_fu_328_p2 = (ap_sig_allocacmp_i_load + 4'd1);
assign add_ln113_fu_300_p2 = (ap_sig_allocacmp_indvar_flatten19_load + 9'd1);
assign add_ln114_fu_368_p2 = (select_ln112_fu_320_p3 + 7'd2);
assign add_ln6_fu_479_p3 = {{select_ln113_reg_523_pp0_iter9_reg}, {lshr_ln_reg_529_pp0_iter9_reg}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign arrayidx10_sum_fu_392_p2 = (zext_ln113_fu_389_p1 + phi_mul);
assign delta_weights1_1_address0 = zext_ln115_fu_485_p1;
assign delta_weights1_1_ce0 = delta_weights1_1_ce0_local;
assign delta_weights1_1_d0 = mul_1_i2_reg_612;
assign delta_weights1_1_we0 = delta_weights1_1_we0_local;
assign delta_weights1_2_address0 = zext_ln115_fu_485_p1;
assign delta_weights1_2_ce0 = delta_weights1_2_ce0_local;
assign delta_weights1_2_d0 = mul_i5_reg_606;
assign delta_weights1_2_we0 = delta_weights1_2_we0_local;
assign delta_weights1_3_address0 = zext_ln115_fu_485_p1;
assign delta_weights1_3_ce0 = delta_weights1_3_ce0_local;
assign delta_weights1_3_d0 = mul_1_i2_reg_612;
assign delta_weights1_3_we0 = delta_weights1_3_we0_local;
assign delta_weights1_address0 = zext_ln115_fu_485_p1;
assign delta_weights1_ce0 = delta_weights1_ce0_local;
assign delta_weights1_d0 = mul_i5_reg_606;
assign delta_weights1_we0 = delta_weights1_we0_local;
assign empty_fu_397_p1 = arrayidx10_sum_fu_392_p2[1:0];
assign grp_fu_2070_p_ce = 1'b1;
assign grp_fu_2070_p_din0 = tmp_32_reg_590;
assign grp_fu_2070_p_din1 = select_ln115_reg_596;
assign grp_fu_3515_p_ce = 1'b1;
assign grp_fu_3515_p_din0 = tmp_32_reg_590;
assign grp_fu_3515_p_din1 = select_ln115_1_reg_601;
assign icmp_ln113_fu_294_p2 = ((ap_sig_allocacmp_indvar_flatten19_load == 9'd416) ? 1'b1 : 1'b0);
assign icmp_ln115_1_fu_356_p2 = ((trunc_ln114_fu_342_p1 != 2'd0) ? 1'b1 : 1'b0);
assign icmp_ln115_fu_362_p2 = ((trunc_ln114_fu_342_p1 == 2'd0) ? 1'b1 : 1'b0);
assign oracle_activations1_1_address0 = zext_ln112_fu_419_p1;
assign oracle_activations1_1_ce0 = oracle_activations1_1_ce0_local;
assign oracle_activations1_2_address0 = zext_ln112_fu_419_p1;
assign oracle_activations1_2_ce0 = oracle_activations1_2_ce0_local;
assign oracle_activations1_3_address0 = zext_ln112_fu_419_p1;
assign oracle_activations1_3_ce0 = oracle_activations1_3_ce0_local;
assign oracle_activations1_address0 = zext_ln112_fu_419_p1;
assign oracle_activations1_ce0 = oracle_activations1_ce0_local;
assign p_cast26_fu_411_p1 = tmp_s_fu_401_p4;
assign select_ln112_fu_320_p3 = ((tmp_fu_312_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign select_ln113_fu_334_p3 = ((tmp_fu_312_p3[0:0] == 1'b1) ? add_ln113_1_fu_328_p2 : ap_sig_allocacmp_i_load);
assign select_ln115_1_fu_472_p3 = ((icmp_ln115_1_reg_535_pp0_iter1_reg[0:0] == 1'b1) ? oracle_activations1_3_q0 : oracle_activations1_1_q0);
assign select_ln115_fu_465_p3 = ((icmp_ln115_1_reg_535_pp0_iter1_reg[0:0] == 1'b1) ? oracle_activations1_2_q0 : oracle_activations1_q0);
assign tmp_32_fu_442_p2 = training_data_0_q0;
assign tmp_32_fu_442_p4 = training_data_1_q0;
assign tmp_32_fu_442_p6 = training_data_2_q0;
assign tmp_32_fu_442_p8 = training_data_3_q0;
assign tmp_32_fu_442_p9 = 'bx;
assign tmp_fu_312_p3 = ap_sig_allocacmp_j_load[32'd6];
assign tmp_s_fu_401_p4 = {{arrayidx10_sum_fu_392_p2[11:2]}};
assign training_data_0_address0 = p_cast26_fu_411_p1;
assign training_data_0_ce0 = training_data_0_ce0_local;
assign training_data_1_address0 = p_cast26_fu_411_p1;
assign training_data_1_ce0 = training_data_1_ce0_local;
assign training_data_2_address0 = p_cast26_fu_411_p1;
assign training_data_2_ce0 = training_data_2_ce0_local;
assign training_data_3_address0 = p_cast26_fu_411_p1;
assign training_data_3_ce0 = training_data_3_ce0_local;
assign trunc_ln114_fu_342_p1 = select_ln112_fu_320_p3[1:0];
assign zext_ln112_fu_419_p1 = lshr_ln_reg_529;
assign zext_ln113_fu_389_p1 = select_ln113_reg_523;
assign zext_ln115_fu_485_p1 = add_ln6_fu_479_p3;
endmodule 