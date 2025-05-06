
module backprop_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,activations1_address0,activations1_ce0,activations1_q0,activations1_1_address0,activations1_1_ce0,activations1_1_q0,delta_weights2_1_address0,delta_weights2_1_ce0,delta_weights2_1_we0,delta_weights2_1_d0,delta_weights2_1_address1,delta_weights2_1_ce1,delta_weights2_1_we1,delta_weights2_1_d1,delta_weights2_address0,delta_weights2_ce0,delta_weights2_we0,delta_weights2_d0,delta_weights2_address1,delta_weights2_ce1,delta_weights2_we1,delta_weights2_d1,oracle_activations2_address0,oracle_activations2_ce0,oracle_activations2_q0,oracle_activations2_address1,oracle_activations2_ce1,oracle_activations2_q1,oracle_activations2_1_address0,oracle_activations2_1_ce0,oracle_activations2_1_q0,oracle_activations2_1_address1,oracle_activations2_1_ce1,oracle_activations2_1_q1,grp_fu_1770_p_din0,grp_fu_1770_p_din1,grp_fu_1770_p_dout0,grp_fu_1770_p_ce,grp_fu_3161_p_din0,grp_fu_3161_p_din1,grp_fu_3161_p_dout0,grp_fu_3161_p_ce,grp_fu_3165_p_din0,grp_fu_3165_p_din1,grp_fu_3165_p_dout0,grp_fu_3165_p_ce,grp_fu_3169_p_din0,grp_fu_3169_p_din1,grp_fu_3169_p_dout0,grp_fu_3169_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
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
output  [63:0] grp_fu_1770_p_din0;
output  [63:0] grp_fu_1770_p_din1;
input  [63:0] grp_fu_1770_p_dout0;
output   grp_fu_1770_p_ce;
output  [63:0] grp_fu_3161_p_din0;
output  [63:0] grp_fu_3161_p_din1;
input  [63:0] grp_fu_3161_p_dout0;
output   grp_fu_3161_p_ce;
output  [63:0] grp_fu_3165_p_din0;
output  [63:0] grp_fu_3165_p_din1;
input  [63:0] grp_fu_3165_p_dout0;
output   grp_fu_3165_p_ce;
output  [63:0] grp_fu_3169_p_din0;
output  [63:0] grp_fu_3169_p_din1;
input  [63:0] grp_fu_3169_p_dout0;
output   grp_fu_3169_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln93_reg_585;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_296;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_302;
wire   [0:0] icmp_ln93_fu_326_p2;
reg   [0:0] icmp_ln93_reg_585_pp0_iter1_reg;
reg   [0:0] icmp_ln93_reg_585_pp0_iter2_reg;
reg   [0:0] icmp_ln93_reg_585_pp0_iter3_reg;
reg   [0:0] icmp_ln93_reg_585_pp0_iter4_reg;
wire   [0:0] tmp_fu_341_p3;
reg   [0:0] tmp_reg_589;
wire   [6:0] select_ln92_fu_349_p3;
reg   [6:0] select_ln92_reg_594;
wire   [4:0] lshr_ln92_1_fu_357_p4;
reg   [4:0] lshr_ln92_1_reg_599;
reg   [4:0] lshr_ln92_1_reg_599_pp0_iter1_reg;
reg   [4:0] lshr_ln92_1_reg_599_pp0_iter2_reg;
reg   [4:0] lshr_ln92_1_reg_599_pp0_iter3_reg;
reg   [4:0] lshr_ln92_1_reg_599_pp0_iter4_reg;
wire   [3:0] tmp_s_fu_373_p4;
reg   [3:0] tmp_s_reg_614;
reg   [3:0] tmp_s_reg_614_pp0_iter1_reg;
reg   [3:0] tmp_s_reg_614_pp0_iter2_reg;
reg   [3:0] tmp_s_reg_614_pp0_iter3_reg;
reg   [3:0] tmp_s_reg_614_pp0_iter4_reg;
reg   [3:0] tmp_s_reg_614_pp0_iter5_reg;
reg   [2:0] tmp_33_reg_629;
reg   [2:0] tmp_33_reg_629_pp0_iter1_reg;
reg   [2:0] tmp_33_reg_629_pp0_iter2_reg;
reg   [2:0] tmp_33_reg_629_pp0_iter3_reg;
reg   [2:0] tmp_33_reg_629_pp0_iter4_reg;
reg   [2:0] tmp_33_reg_629_pp0_iter5_reg;
reg   [0:0] tmp_26_reg_637;
reg   [0:0] tmp_26_reg_637_pp0_iter1_reg;
reg   [0:0] tmp_26_reg_637_pp0_iter2_reg;
reg   [0:0] tmp_26_reg_637_pp0_iter3_reg;
reg   [0:0] tmp_26_reg_637_pp0_iter4_reg;
reg   [0:0] tmp_26_reg_637_pp0_iter5_reg;
wire   [0:0] trunc_ln93_fu_436_p1;
reg   [0:0] trunc_ln93_reg_643;
reg   [63:0] oracle_activations2_load_reg_658;
wire   [5:0] trunc_ln95_fu_456_p1;
reg   [5:0] trunc_ln95_reg_663;
reg   [5:0] trunc_ln95_reg_663_pp0_iter1_reg;
reg   [5:0] trunc_ln95_reg_663_pp0_iter2_reg;
reg   [5:0] trunc_ln95_reg_663_pp0_iter3_reg;
reg   [5:0] trunc_ln95_reg_663_pp0_iter4_reg;
reg   [5:0] trunc_ln95_reg_663_pp0_iter5_reg;
reg   [63:0] oracle_activations2_1_load_reg_691;
reg   [63:0] oracle_activations2_load_1_reg_696;
reg   [63:0] oracle_activations2_1_load_1_reg_701;
wire   [63:0] tmp_28_fu_502_p3;
reg   [63:0] tmp_28_reg_706;
reg   [63:0] oracle_activations2_load_2_reg_714;
reg   [63:0] oracle_activations2_1_load_2_reg_719;
reg   [63:0] oracle_activations2_load_3_reg_724;
reg   [63:0] oracle_activations2_1_load_3_reg_729;
reg   [63:0] mul_2_i_reg_734;
reg   [63:0] mul_3_i_reg_739;
reg   [63:0] mul_6_i_reg_744;
reg   [63:0] mul_7_i_reg_749;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln92_1_fu_367_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln95_1_fu_391_p1;
wire   [63:0] zext_ln92_fu_450_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln95_3_fu_468_p1;
wire   [63:0] zext_ln95_5_fu_481_p1;
wire   [63:0] zext_ln95_fu_515_p1;
wire   [63:0] zext_ln95_2_fu_529_p1;
wire   [63:0] zext_ln95_4_fu_544_p1;
wire   [63:0] zext_ln95_6_fu_558_p1;
reg   [6:0] j_fu_78;
wire   [6:0] add_ln94_fu_487_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [6:0] i_fu_82;
wire   [6:0] select_ln93_fu_429_p3;
reg   [9:0] indvar_flatten12_fu_86;
wire   [9:0] add_ln93_fu_332_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten12_load;
reg    oracle_activations2_ce1_local;
reg   [4:0] oracle_activations2_address1_local;
reg    oracle_activations2_ce0_local;
reg   [4:0] oracle_activations2_address0_local;
reg    oracle_activations2_1_ce1_local;
reg   [4:0] oracle_activations2_1_address1_local;
reg    oracle_activations2_1_ce0_local;
reg   [4:0] oracle_activations2_1_address0_local;
reg    activations1_ce0_local;
reg    activations1_1_ce0_local;
reg    delta_weights2_we1_local;
reg   [63:0] delta_weights2_d1_local;
reg    delta_weights2_ce1_local;
reg   [10:0] delta_weights2_address1_local;
reg    delta_weights2_we0_local;
reg   [63:0] delta_weights2_d0_local;
reg    delta_weights2_ce0_local;
reg   [10:0] delta_weights2_address0_local;
reg    delta_weights2_1_we1_local;
reg   [63:0] delta_weights2_1_d1_local;
reg    delta_weights2_1_ce1_local;
reg   [10:0] delta_weights2_1_address1_local;
reg    delta_weights2_1_we0_local;
reg   [63:0] delta_weights2_1_d0_local;
reg    delta_weights2_1_ce0_local;
reg   [10:0] delta_weights2_1_address0_local;
reg   [63:0] grp_fu_280_p1;
reg   [63:0] grp_fu_284_p1;
reg   [63:0] grp_fu_288_p1;
reg   [63:0] grp_fu_292_p1;
wire   [4:0] or_ln8_fu_383_p3;
wire   [6:0] add_ln93_1_fu_423_p2;
wire   [4:0] lshr_ln_fu_440_p4;
wire   [4:0] or_ln95_1_fu_460_p4;
wire   [4:0] or_ln95_2_fu_474_p3;
wire   [10:0] add_ln4_fu_509_p3;
wire   [10:0] add_ln95_1_fu_521_p4;
wire   [10:0] add_ln95_2_fu_535_p5;
wire   [10:0] add_ln95_3_fu_550_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter5_stage0;
reg    ap_idle_pp0_0to4;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to6;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_fu_78 = 7'd0;
#0 i_fu_82 = 7'd0;
#0 indvar_flatten12_fu_86 = 10'd0;
#0 ap_done_reg = 1'b0;
end
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter5_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter6 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage0))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage0))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_82 <= 7'd0;
    end else if (((icmp_ln93_reg_585 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_82 <= select_ln93_fu_429_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln93_fu_326_p2 == 1'd0))) begin
            indvar_flatten12_fu_86 <= add_ln93_fu_332_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten12_fu_86 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_78 <= 7'd0;
    end else if (((icmp_ln93_reg_585 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_78 <= add_ln94_fu_487_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln93_reg_585 <= icmp_ln93_fu_326_p2;
        icmp_ln93_reg_585_pp0_iter1_reg <= icmp_ln93_reg_585;
        icmp_ln93_reg_585_pp0_iter2_reg <= icmp_ln93_reg_585_pp0_iter1_reg;
        icmp_ln93_reg_585_pp0_iter3_reg <= icmp_ln93_reg_585_pp0_iter2_reg;
        icmp_ln93_reg_585_pp0_iter4_reg <= icmp_ln93_reg_585_pp0_iter3_reg;
        lshr_ln92_1_reg_599 <= {{select_ln92_fu_349_p3[5:1]}};
        lshr_ln92_1_reg_599_pp0_iter1_reg <= lshr_ln92_1_reg_599;
        lshr_ln92_1_reg_599_pp0_iter2_reg <= lshr_ln92_1_reg_599_pp0_iter1_reg;
        lshr_ln92_1_reg_599_pp0_iter3_reg <= lshr_ln92_1_reg_599_pp0_iter2_reg;
        lshr_ln92_1_reg_599_pp0_iter4_reg <= lshr_ln92_1_reg_599_pp0_iter3_reg;
        select_ln92_reg_594 <= select_ln92_fu_349_p3;
        tmp_26_reg_637 <= select_ln92_fu_349_p3[32'd1];
        tmp_26_reg_637_pp0_iter1_reg <= tmp_26_reg_637;
        tmp_26_reg_637_pp0_iter2_reg <= tmp_26_reg_637_pp0_iter1_reg;
        tmp_26_reg_637_pp0_iter3_reg <= tmp_26_reg_637_pp0_iter2_reg;
        tmp_26_reg_637_pp0_iter4_reg <= tmp_26_reg_637_pp0_iter3_reg;
        tmp_26_reg_637_pp0_iter5_reg <= tmp_26_reg_637_pp0_iter4_reg;
        tmp_28_reg_706 <= tmp_28_fu_502_p3;
        tmp_33_reg_629 <= {{select_ln92_fu_349_p3[5:3]}};
        tmp_33_reg_629_pp0_iter1_reg <= tmp_33_reg_629;
        tmp_33_reg_629_pp0_iter2_reg <= tmp_33_reg_629_pp0_iter1_reg;
        tmp_33_reg_629_pp0_iter3_reg <= tmp_33_reg_629_pp0_iter2_reg;
        tmp_33_reg_629_pp0_iter4_reg <= tmp_33_reg_629_pp0_iter3_reg;
        tmp_33_reg_629_pp0_iter5_reg <= tmp_33_reg_629_pp0_iter4_reg;
        tmp_reg_589 <= ap_sig_allocacmp_j_load[32'd6];
        tmp_s_reg_614 <= {{select_ln92_fu_349_p3[5:2]}};
        tmp_s_reg_614_pp0_iter1_reg <= tmp_s_reg_614;
        tmp_s_reg_614_pp0_iter2_reg <= tmp_s_reg_614_pp0_iter1_reg;
        tmp_s_reg_614_pp0_iter3_reg <= tmp_s_reg_614_pp0_iter2_reg;
        tmp_s_reg_614_pp0_iter4_reg <= tmp_s_reg_614_pp0_iter3_reg;
        tmp_s_reg_614_pp0_iter5_reg <= tmp_s_reg_614_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_2_i_reg_734 <= grp_fu_3165_p_dout0;
        mul_3_i_reg_739 <= grp_fu_3169_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_6_i_reg_744 <= grp_fu_3165_p_dout0;
        mul_7_i_reg_749 <= grp_fu_3169_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations2_1_load_1_reg_701 <= oracle_activations2_1_q0;
        oracle_activations2_1_load_reg_691 <= oracle_activations2_1_q1;
        oracle_activations2_load_1_reg_696 <= oracle_activations2_q0;
        oracle_activations2_load_reg_658 <= oracle_activations2_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_1_load_2_reg_719 <= oracle_activations2_1_q1;
        oracle_activations2_1_load_3_reg_729 <= oracle_activations2_1_q0;
        oracle_activations2_load_2_reg_714 <= oracle_activations2_q1;
        oracle_activations2_load_3_reg_724 <= oracle_activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_296 <= grp_fu_1770_p_dout0;
        reg_302 <= grp_fu_3161_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        trunc_ln93_reg_643 <= trunc_ln93_fu_436_p1;
        trunc_ln95_reg_663 <= trunc_ln95_fu_456_p1;
        trunc_ln95_reg_663_pp0_iter1_reg <= trunc_ln95_reg_663;
        trunc_ln95_reg_663_pp0_iter2_reg <= trunc_ln95_reg_663_pp0_iter1_reg;
        trunc_ln95_reg_663_pp0_iter3_reg <= trunc_ln95_reg_663_pp0_iter2_reg;
        trunc_ln95_reg_663_pp0_iter4_reg <= trunc_ln95_reg_663_pp0_iter3_reg;
        trunc_ln95_reg_663_pp0_iter5_reg <= trunc_ln95_reg_663_pp0_iter4_reg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        activations1_1_ce0_local = 1'b1;
    end else begin
        activations1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        activations1_ce0_local = 1'b1;
    end else begin
        activations1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln93_reg_585 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln93_reg_585_pp0_iter4_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter5_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter5_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter5_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to4 = 1'b1;
    end else begin
        ap_idle_pp0_0to4 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to6 = 1'b1;
    end else begin
        ap_idle_pp0_1to6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten12_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12_load = indvar_flatten12_fu_86;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_1_address0_local = zext_ln95_6_fu_558_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_1_address0_local = zext_ln95_4_fu_544_p1;
    end else begin
        delta_weights2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights2_1_address1_local = zext_ln95_2_fu_529_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights2_1_address1_local = zext_ln95_fu_515_p1;
        end else begin
            delta_weights2_1_address1_local = 'bx;
        end
    end else begin
        delta_weights2_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_1_ce0_local = 1'b1;
    end else begin
        delta_weights2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_1_ce1_local = 1'b1;
    end else begin
        delta_weights2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_1_d0_local = mul_7_i_reg_749;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_1_d0_local = reg_302;
    end else begin
        delta_weights2_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights2_1_d1_local = mul_3_i_reg_739;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights2_1_d1_local = reg_302;
        end else begin
            delta_weights2_1_d1_local = 'bx;
        end
    end else begin
        delta_weights2_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_1_we0_local = 1'b1;
    end else begin
        delta_weights2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_1_we1_local = 1'b1;
    end else begin
        delta_weights2_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_address0_local = zext_ln95_6_fu_558_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_address0_local = zext_ln95_4_fu_544_p1;
    end else begin
        delta_weights2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights2_address1_local = zext_ln95_2_fu_529_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights2_address1_local = zext_ln95_fu_515_p1;
        end else begin
            delta_weights2_address1_local = 'bx;
        end
    end else begin
        delta_weights2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_ce0_local = 1'b1;
    end else begin
        delta_weights2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_ce1_local = 1'b1;
    end else begin
        delta_weights2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_d0_local = mul_6_i_reg_744;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_d0_local = reg_296;
    end else begin
        delta_weights2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights2_d1_local = mul_2_i_reg_734;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights2_d1_local = reg_296;
        end else begin
            delta_weights2_d1_local = 'bx;
        end
    end else begin
        delta_weights2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_we0_local = 1'b1;
    end else begin
        delta_weights2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_we1_local = 1'b1;
    end else begin
        delta_weights2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_280_p1 = oracle_activations2_load_2_reg_714;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_280_p1 = oracle_activations2_load_reg_658;
    end else begin
        grp_fu_280_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_284_p1 = oracle_activations2_1_load_2_reg_719;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_284_p1 = oracle_activations2_1_load_reg_691;
    end else begin
        grp_fu_284_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_288_p1 = oracle_activations2_load_3_reg_724;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_288_p1 = oracle_activations2_load_1_reg_696;
    end else begin
        grp_fu_288_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_292_p1 = oracle_activations2_1_load_3_reg_729;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_292_p1 = oracle_activations2_1_load_1_reg_701;
    end else begin
        grp_fu_292_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            oracle_activations2_1_address0_local = zext_ln95_5_fu_481_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            oracle_activations2_1_address0_local = zext_ln95_1_fu_391_p1;
        end else begin
            oracle_activations2_1_address0_local = 'bx;
        end
    end else begin
        oracle_activations2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            oracle_activations2_1_address1_local = zext_ln95_3_fu_468_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            oracle_activations2_1_address1_local = zext_ln92_1_fu_367_p1;
        end else begin
            oracle_activations2_1_address1_local = 'bx;
        end
    end else begin
        oracle_activations2_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        oracle_activations2_1_ce0_local = 1'b1;
    end else begin
        oracle_activations2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        oracle_activations2_1_ce1_local = 1'b1;
    end else begin
        oracle_activations2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            oracle_activations2_address0_local = zext_ln95_5_fu_481_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            oracle_activations2_address0_local = zext_ln95_1_fu_391_p1;
        end else begin
            oracle_activations2_address0_local = 'bx;
        end
    end else begin
        oracle_activations2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            oracle_activations2_address1_local = zext_ln95_3_fu_468_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            oracle_activations2_address1_local = zext_ln92_1_fu_367_p1;
        end else begin
            oracle_activations2_address1_local = 'bx;
        end
    end else begin
        oracle_activations2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        oracle_activations2_ce0_local = 1'b1;
    end else begin
        oracle_activations2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        oracle_activations2_ce1_local = 1'b1;
    end else begin
        oracle_activations2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to6 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign activations1_1_address0 = zext_ln92_fu_450_p1;
assign activations1_1_ce0 = activations1_1_ce0_local;
assign activations1_address0 = zext_ln92_fu_450_p1;
assign activations1_ce0 = activations1_ce0_local;
assign add_ln4_fu_509_p3 = {{trunc_ln95_reg_663_pp0_iter4_reg}, {lshr_ln92_1_reg_599_pp0_iter4_reg}};
assign add_ln93_1_fu_423_p2 = (i_fu_82 + 7'd1);
assign add_ln93_fu_332_p2 = (ap_sig_allocacmp_indvar_flatten12_load + 10'd1);
assign add_ln94_fu_487_p2 = (select_ln92_reg_594 + 7'd8);
assign add_ln95_1_fu_521_p4 = {{{trunc_ln95_reg_663_pp0_iter4_reg}, {tmp_s_reg_614_pp0_iter5_reg}}, {1'd1}};
assign add_ln95_2_fu_535_p5 = {{{{trunc_ln95_reg_663_pp0_iter4_reg}, {tmp_33_reg_629_pp0_iter5_reg}}, {1'd1}}, {tmp_26_reg_637_pp0_iter5_reg}};
assign add_ln95_3_fu_550_p4 = {{{trunc_ln95_reg_663_pp0_iter5_reg}, {tmp_33_reg_629_pp0_iter5_reg}}, {2'd3}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign delta_weights2_1_address0 = delta_weights2_1_address0_local;
assign delta_weights2_1_address1 = delta_weights2_1_address1_local;
assign delta_weights2_1_ce0 = delta_weights2_1_ce0_local;
assign delta_weights2_1_ce1 = delta_weights2_1_ce1_local;
assign delta_weights2_1_d0 = delta_weights2_1_d0_local;
assign delta_weights2_1_d1 = delta_weights2_1_d1_local;
assign delta_weights2_1_we0 = delta_weights2_1_we0_local;
assign delta_weights2_1_we1 = delta_weights2_1_we1_local;
assign delta_weights2_address0 = delta_weights2_address0_local;
assign delta_weights2_address1 = delta_weights2_address1_local;
assign delta_weights2_ce0 = delta_weights2_ce0_local;
assign delta_weights2_ce1 = delta_weights2_ce1_local;
assign delta_weights2_d0 = delta_weights2_d0_local;
assign delta_weights2_d1 = delta_weights2_d1_local;
assign delta_weights2_we0 = delta_weights2_we0_local;
assign delta_weights2_we1 = delta_weights2_we1_local;
assign grp_fu_1770_p_ce = 1'b1;
assign grp_fu_1770_p_din0 = tmp_28_reg_706;
assign grp_fu_1770_p_din1 = grp_fu_280_p1;
assign grp_fu_3161_p_ce = 1'b1;
assign grp_fu_3161_p_din0 = tmp_28_reg_706;
assign grp_fu_3161_p_din1 = grp_fu_284_p1;
assign grp_fu_3165_p_ce = 1'b1;
assign grp_fu_3165_p_din0 = tmp_28_reg_706;
assign grp_fu_3165_p_din1 = grp_fu_288_p1;
assign grp_fu_3169_p_ce = 1'b1;
assign grp_fu_3169_p_din0 = tmp_28_reg_706;
assign grp_fu_3169_p_din1 = grp_fu_292_p1;
assign icmp_ln93_fu_326_p2 = ((ap_sig_allocacmp_indvar_flatten12_load == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln92_1_fu_357_p4 = {{select_ln92_fu_349_p3[5:1]}};
assign lshr_ln_fu_440_p4 = {{select_ln93_fu_429_p3[5:1]}};
assign or_ln8_fu_383_p3 = {{tmp_s_fu_373_p4}, {1'd1}};
assign or_ln95_1_fu_460_p4 = {{{tmp_33_reg_629}, {1'd1}}, {tmp_26_reg_637}};
assign or_ln95_2_fu_474_p3 = {{tmp_33_reg_629}, {2'd3}};
assign oracle_activations2_1_address0 = oracle_activations2_1_address0_local;
assign oracle_activations2_1_address1 = oracle_activations2_1_address1_local;
assign oracle_activations2_1_ce0 = oracle_activations2_1_ce0_local;
assign oracle_activations2_1_ce1 = oracle_activations2_1_ce1_local;
assign oracle_activations2_address0 = oracle_activations2_address0_local;
assign oracle_activations2_address1 = oracle_activations2_address1_local;
assign oracle_activations2_ce0 = oracle_activations2_ce0_local;
assign oracle_activations2_ce1 = oracle_activations2_ce1_local;
assign select_ln92_fu_349_p3 = ((tmp_fu_341_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign select_ln93_fu_429_p3 = ((tmp_reg_589[0:0] == 1'b1) ? add_ln93_1_fu_423_p2 : i_fu_82);
assign tmp_28_fu_502_p3 = ((trunc_ln93_reg_643[0:0] == 1'b1) ? activations1_1_q0 : activations1_q0);
assign tmp_fu_341_p3 = ap_sig_allocacmp_j_load[32'd6];
assign tmp_s_fu_373_p4 = {{select_ln92_fu_349_p3[5:2]}};
assign trunc_ln93_fu_436_p1 = select_ln93_fu_429_p3[0:0];
assign trunc_ln95_fu_456_p1 = select_ln93_fu_429_p3[5:0];
assign zext_ln92_1_fu_367_p1 = lshr_ln92_1_fu_357_p4;
assign zext_ln92_fu_450_p1 = lshr_ln_fu_440_p4;
assign zext_ln95_1_fu_391_p1 = or_ln8_fu_383_p3;
assign zext_ln95_2_fu_529_p1 = add_ln95_1_fu_521_p4;
assign zext_ln95_3_fu_468_p1 = or_ln95_1_fu_460_p4;
assign zext_ln95_4_fu_544_p1 = add_ln95_2_fu_535_p5;
assign zext_ln95_5_fu_481_p1 = or_ln95_2_fu_474_p3;
assign zext_ln95_6_fu_558_p1 = add_ln95_3_fu_550_p4;
assign zext_ln95_fu_515_p1 = add_ln4_fu_509_p3;
endmodule 
