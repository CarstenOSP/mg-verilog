module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,llike_address0,llike_ce0,llike_we0,llike_d0,llike_1_address0,llike_1_ce0,llike_1_we0,llike_1_d0,llike_2_address0,llike_2_ce0,llike_2_we0,llike_2_d0,llike_3_address0,llike_3_ce0,llike_3_we0,llike_3_d0,llike_4_address0,llike_4_ce0,llike_4_we0,llike_4_d0,llike_5_address0,llike_5_ce0,llike_5_we0,llike_5_d0,llike_6_address0,llike_6_ce0,llike_6_we0,llike_6_d0,llike_7_address0,llike_7_ce0,llike_7_we0,llike_7_d0,llike_8_address0,llike_8_ce0,llike_8_we0,llike_8_d0,llike_9_address0,llike_9_ce0,llike_9_we0,llike_9_d0,llike_10_address0,llike_10_ce0,llike_10_we0,llike_10_d0,llike_11_address0,llike_11_ce0,llike_11_we0,llike_11_d0,llike_12_address0,llike_12_ce0,llike_12_we0,llike_12_d0,llike_13_address0,llike_13_ce0,llike_13_we0,llike_13_d0,llike_14_address0,llike_14_ce0,llike_14_we0,llike_14_d0,llike_15_address0,llike_15_ce0,llike_15_we0,llike_15_d0,init_address0,init_ce0,init_q0,zext_ln13,emission_address0,emission_ce0,emission_q0,grp_fu_311_p_din0,grp_fu_311_p_din1,grp_fu_311_p_opcode,grp_fu_311_p_dout0,grp_fu_311_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] llike_address0;
output   llike_ce0;
output   llike_we0;
output  [63:0] llike_d0;
output  [9:0] llike_1_address0;
output   llike_1_ce0;
output   llike_1_we0;
output  [63:0] llike_1_d0;
output  [9:0] llike_2_address0;
output   llike_2_ce0;
output   llike_2_we0;
output  [63:0] llike_2_d0;
output  [9:0] llike_3_address0;
output   llike_3_ce0;
output   llike_3_we0;
output  [63:0] llike_3_d0;
output  [9:0] llike_4_address0;
output   llike_4_ce0;
output   llike_4_we0;
output  [63:0] llike_4_d0;
output  [9:0] llike_5_address0;
output   llike_5_ce0;
output   llike_5_we0;
output  [63:0] llike_5_d0;
output  [9:0] llike_6_address0;
output   llike_6_ce0;
output   llike_6_we0;
output  [63:0] llike_6_d0;
output  [9:0] llike_7_address0;
output   llike_7_ce0;
output   llike_7_we0;
output  [63:0] llike_7_d0;
output  [9:0] llike_8_address0;
output   llike_8_ce0;
output   llike_8_we0;
output  [63:0] llike_8_d0;
output  [9:0] llike_9_address0;
output   llike_9_ce0;
output   llike_9_we0;
output  [63:0] llike_9_d0;
output  [9:0] llike_10_address0;
output   llike_10_ce0;
output   llike_10_we0;
output  [63:0] llike_10_d0;
output  [9:0] llike_11_address0;
output   llike_11_ce0;
output   llike_11_we0;
output  [63:0] llike_11_d0;
output  [9:0] llike_12_address0;
output   llike_12_ce0;
output   llike_12_we0;
output  [63:0] llike_12_d0;
output  [9:0] llike_13_address0;
output   llike_13_ce0;
output   llike_13_we0;
output  [63:0] llike_13_d0;
output  [9:0] llike_14_address0;
output   llike_14_ce0;
output   llike_14_we0;
output  [63:0] llike_14_d0;
output  [9:0] llike_15_address0;
output   llike_15_ce0;
output   llike_15_we0;
output  [63:0] llike_15_d0;
output  [5:0] init_address0;
output   init_ce0;
input  [63:0] init_q0;
input  [7:0] zext_ln13;
output  [11:0] emission_address0;
output   emission_ce0;
input  [63:0] emission_q0;
output  [63:0] grp_fu_311_p_din0;
output  [63:0] grp_fu_311_p_din1;
output  [1:0] grp_fu_311_p_opcode;
input  [63:0] grp_fu_311_p_dout0;
output   grp_fu_311_p_ce;
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
wire   [0:0] icmp_ln13_fu_370_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] trunc_ln13_fu_387_p1;
reg   [3:0] trunc_ln13_reg_467;
reg   [3:0] trunc_ln13_reg_467_pp0_iter1_reg;
reg   [3:0] trunc_ln13_reg_467_pp0_iter2_reg;
reg   [3:0] trunc_ln13_reg_467_pp0_iter3_reg;
reg   [3:0] trunc_ln13_reg_467_pp0_iter4_reg;
reg   [3:0] trunc_ln13_reg_467_pp0_iter5_reg;
reg   [3:0] trunc_ln13_reg_467_pp0_iter6_reg;
reg   [3:0] trunc_ln13_reg_467_pp0_iter7_reg;
reg   [3:0] trunc_ln13_reg_467_pp0_iter8_reg;
reg   [3:0] trunc_ln13_reg_467_pp0_iter9_reg;
reg   [1:0] lshr_ln9_reg_471;
reg   [1:0] lshr_ln9_reg_471_pp0_iter1_reg;
reg   [1:0] lshr_ln9_reg_471_pp0_iter2_reg;
reg   [1:0] lshr_ln9_reg_471_pp0_iter3_reg;
reg   [1:0] lshr_ln9_reg_471_pp0_iter4_reg;
reg   [1:0] lshr_ln9_reg_471_pp0_iter5_reg;
reg   [1:0] lshr_ln9_reg_471_pp0_iter6_reg;
reg   [1:0] lshr_ln9_reg_471_pp0_iter7_reg;
reg   [1:0] lshr_ln9_reg_471_pp0_iter8_reg;
reg   [1:0] lshr_ln9_reg_471_pp0_iter9_reg;
reg   [63:0] init_load_reg_486;
reg   [63:0] emission_load_reg_491;
wire   [63:0] bitcast_ln14_fu_429_p1;
wire   [63:0] bitcast_ln14_1_fu_433_p1;
reg   [63:0] add6_reg_506;
wire   [63:0] zext_ln13_1_fu_382_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_419_p1;
wire   [63:0] zext_ln9_fu_437_p1;
reg   [6:0] s_fu_110;
wire   [6:0] add_ln13_fu_376_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg    init_ce0_local;
reg    emission_ce0_local;
reg    llike_14_we0_local;
reg    llike_14_ce0_local;
reg    llike_13_we0_local;
reg    llike_13_ce0_local;
reg    llike_12_we0_local;
reg    llike_12_ce0_local;
reg    llike_11_we0_local;
reg    llike_11_ce0_local;
reg    llike_10_we0_local;
reg    llike_10_ce0_local;
reg    llike_9_we0_local;
reg    llike_9_ce0_local;
reg    llike_8_we0_local;
reg    llike_8_ce0_local;
reg    llike_7_we0_local;
reg    llike_7_ce0_local;
reg    llike_6_we0_local;
reg    llike_6_ce0_local;
reg    llike_5_we0_local;
reg    llike_5_ce0_local;
reg    llike_4_we0_local;
reg    llike_4_ce0_local;
reg    llike_3_we0_local;
reg    llike_3_ce0_local;
reg    llike_2_we0_local;
reg    llike_2_ce0_local;
reg    llike_1_we0_local;
reg    llike_1_ce0_local;
reg    llike_we0_local;
reg    llike_ce0_local;
reg    llike_15_we0_local;
reg    llike_15_ce0_local;
wire   [5:0] trunc_ln14_fu_401_p1;
wire   [11:0] shl_ln_fu_405_p3;
wire   [11:0] zext_ln13_cast_fu_358_p1;
wire   [11:0] add_ln14_fu_413_p2;
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
wire    ap_block_pp0_stage0_00001;
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
#0 s_fu_110 = 7'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter9_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        if (((icmp_ln13_fu_370_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            s_fu_110 <= add_ln13_fu_376_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            s_fu_110 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add6_reg_506 <= grp_fu_311_p_dout0;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        lshr_ln9_reg_471_pp0_iter2_reg <= lshr_ln9_reg_471_pp0_iter1_reg;
        lshr_ln9_reg_471_pp0_iter3_reg <= lshr_ln9_reg_471_pp0_iter2_reg;
        lshr_ln9_reg_471_pp0_iter4_reg <= lshr_ln9_reg_471_pp0_iter3_reg;
        lshr_ln9_reg_471_pp0_iter5_reg <= lshr_ln9_reg_471_pp0_iter4_reg;
        lshr_ln9_reg_471_pp0_iter6_reg <= lshr_ln9_reg_471_pp0_iter5_reg;
        lshr_ln9_reg_471_pp0_iter7_reg <= lshr_ln9_reg_471_pp0_iter6_reg;
        lshr_ln9_reg_471_pp0_iter8_reg <= lshr_ln9_reg_471_pp0_iter7_reg;
        lshr_ln9_reg_471_pp0_iter9_reg <= lshr_ln9_reg_471_pp0_iter8_reg;
        trunc_ln13_reg_467_pp0_iter2_reg <= trunc_ln13_reg_467_pp0_iter1_reg;
        trunc_ln13_reg_467_pp0_iter3_reg <= trunc_ln13_reg_467_pp0_iter2_reg;
        trunc_ln13_reg_467_pp0_iter4_reg <= trunc_ln13_reg_467_pp0_iter3_reg;
        trunc_ln13_reg_467_pp0_iter5_reg <= trunc_ln13_reg_467_pp0_iter4_reg;
        trunc_ln13_reg_467_pp0_iter6_reg <= trunc_ln13_reg_467_pp0_iter5_reg;
        trunc_ln13_reg_467_pp0_iter7_reg <= trunc_ln13_reg_467_pp0_iter6_reg;
        trunc_ln13_reg_467_pp0_iter8_reg <= trunc_ln13_reg_467_pp0_iter7_reg;
        trunc_ln13_reg_467_pp0_iter9_reg <= trunc_ln13_reg_467_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        emission_load_reg_491 <= emission_q0;
        init_load_reg_486 <= init_q0;
        lshr_ln9_reg_471 <= {{ap_sig_allocacmp_s_1[5:4]}};
        lshr_ln9_reg_471_pp0_iter1_reg <= lshr_ln9_reg_471;
        trunc_ln13_reg_467 <= trunc_ln13_fu_387_p1;
        trunc_ln13_reg_467_pp0_iter1_reg <= trunc_ln13_reg_467;
    end
end
always @ (*) begin
    if (((icmp_ln13_fu_370_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter9_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
        ap_sig_allocacmp_s_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_s_1 = s_fu_110;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        emission_ce0_local = 1'b1;
    end else begin
        emission_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_ce0_local = 1'b1;
    end else begin
        init_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_10_ce0_local = 1'b1;
    end else begin
        llike_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln13_reg_467_pp0_iter9_reg == 4'd10))) begin
        llike_10_we0_local = 1'b1;
    end else begin
        llike_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_11_ce0_local = 1'b1;
    end else begin
        llike_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln13_reg_467_pp0_iter9_reg == 4'd11))) begin
        llike_11_we0_local = 1'b1;
    end else begin
        llike_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_12_ce0_local = 1'b1;
    end else begin
        llike_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln13_reg_467_pp0_iter9_reg == 4'd12))) begin
        llike_12_we0_local = 1'b1;
    end else begin
        llike_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_13_ce0_local = 1'b1;
    end else begin
        llike_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln13_reg_467_pp0_iter9_reg == 4'd13))) begin
        llike_13_we0_local = 1'b1;
    end else begin
        llike_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_14_ce0_local = 1'b1;
    end else begin
        llike_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln13_reg_467_pp0_iter9_reg == 4'd14))) begin
        llike_14_we0_local = 1'b1;
    end else begin
        llike_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_15_ce0_local = 1'b1;
    end else begin
        llike_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln13_reg_467_pp0_iter9_reg == 4'd15))) begin
        llike_15_we0_local = 1'b1;
    end else begin
        llike_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln13_reg_467_pp0_iter9_reg == 4'd1))) begin
        llike_1_we0_local = 1'b1;
    end else begin
        llike_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln13_reg_467_pp0_iter9_reg == 4'd2))) begin
        llike_2_we0_local = 1'b1;
    end else begin
        llike_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln13_reg_467_pp0_iter9_reg == 4'd3))) begin
        llike_3_we0_local = 1'b1;
    end else begin
        llike_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_4_ce0_local = 1'b1;
    end else begin
        llike_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln13_reg_467_pp0_iter9_reg == 4'd4))) begin
        llike_4_we0_local = 1'b1;
    end else begin
        llike_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_5_ce0_local = 1'b1;
    end else begin
        llike_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln13_reg_467_pp0_iter9_reg == 4'd5))) begin
        llike_5_we0_local = 1'b1;
    end else begin
        llike_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_6_ce0_local = 1'b1;
    end else begin
        llike_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln13_reg_467_pp0_iter9_reg == 4'd6))) begin
        llike_6_we0_local = 1'b1;
    end else begin
        llike_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_7_ce0_local = 1'b1;
    end else begin
        llike_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln13_reg_467_pp0_iter9_reg == 4'd7))) begin
        llike_7_we0_local = 1'b1;
    end else begin
        llike_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_8_ce0_local = 1'b1;
    end else begin
        llike_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln13_reg_467_pp0_iter9_reg == 4'd8))) begin
        llike_8_we0_local = 1'b1;
    end else begin
        llike_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_9_ce0_local = 1'b1;
    end else begin
        llike_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln13_reg_467_pp0_iter9_reg == 4'd9))) begin
        llike_9_we0_local = 1'b1;
    end else begin
        llike_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln13_reg_467_pp0_iter9_reg == 4'd0))) begin
        llike_we0_local = 1'b1;
    end else begin
        llike_we0_local = 1'b0;
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
assign add_ln13_fu_376_p2 = (ap_sig_allocacmp_s_1 + 7'd1);
assign add_ln14_fu_413_p2 = (shl_ln_fu_405_p3 + zext_ln13_cast_fu_358_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln14_1_fu_433_p1 = emission_load_reg_491;
assign bitcast_ln14_fu_429_p1 = init_load_reg_486;
assign emission_address0 = zext_ln14_fu_419_p1;
assign emission_ce0 = emission_ce0_local;
assign grp_fu_311_p_ce = 1'b1;
assign grp_fu_311_p_din0 = bitcast_ln14_fu_429_p1;
assign grp_fu_311_p_din1 = bitcast_ln14_1_fu_433_p1;
assign grp_fu_311_p_opcode = 2'd0;
assign icmp_ln13_fu_370_p2 = ((ap_sig_allocacmp_s_1 == 7'd64) ? 1'b1 : 1'b0);
assign init_address0 = zext_ln13_1_fu_382_p1;
assign init_ce0 = init_ce0_local;
assign llike_10_address0 = zext_ln9_fu_437_p1;
assign llike_10_ce0 = llike_10_ce0_local;
assign llike_10_d0 = add6_reg_506;
assign llike_10_we0 = llike_10_we0_local;
assign llike_11_address0 = zext_ln9_fu_437_p1;
assign llike_11_ce0 = llike_11_ce0_local;
assign llike_11_d0 = add6_reg_506;
assign llike_11_we0 = llike_11_we0_local;
assign llike_12_address0 = zext_ln9_fu_437_p1;
assign llike_12_ce0 = llike_12_ce0_local;
assign llike_12_d0 = add6_reg_506;
assign llike_12_we0 = llike_12_we0_local;
assign llike_13_address0 = zext_ln9_fu_437_p1;
assign llike_13_ce0 = llike_13_ce0_local;
assign llike_13_d0 = add6_reg_506;
assign llike_13_we0 = llike_13_we0_local;
assign llike_14_address0 = zext_ln9_fu_437_p1;
assign llike_14_ce0 = llike_14_ce0_local;
assign llike_14_d0 = add6_reg_506;
assign llike_14_we0 = llike_14_we0_local;
assign llike_15_address0 = zext_ln9_fu_437_p1;
assign llike_15_ce0 = llike_15_ce0_local;
assign llike_15_d0 = add6_reg_506;
assign llike_15_we0 = llike_15_we0_local;
assign llike_1_address0 = zext_ln9_fu_437_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_d0 = add6_reg_506;
assign llike_1_we0 = llike_1_we0_local;
assign llike_2_address0 = zext_ln9_fu_437_p1;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_2_d0 = add6_reg_506;
assign llike_2_we0 = llike_2_we0_local;
assign llike_3_address0 = zext_ln9_fu_437_p1;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_3_d0 = add6_reg_506;
assign llike_3_we0 = llike_3_we0_local;
assign llike_4_address0 = zext_ln9_fu_437_p1;
assign llike_4_ce0 = llike_4_ce0_local;
assign llike_4_d0 = add6_reg_506;
assign llike_4_we0 = llike_4_we0_local;
assign llike_5_address0 = zext_ln9_fu_437_p1;
assign llike_5_ce0 = llike_5_ce0_local;
assign llike_5_d0 = add6_reg_506;
assign llike_5_we0 = llike_5_we0_local;
assign llike_6_address0 = zext_ln9_fu_437_p1;
assign llike_6_ce0 = llike_6_ce0_local;
assign llike_6_d0 = add6_reg_506;
assign llike_6_we0 = llike_6_we0_local;
assign llike_7_address0 = zext_ln9_fu_437_p1;
assign llike_7_ce0 = llike_7_ce0_local;
assign llike_7_d0 = add6_reg_506;
assign llike_7_we0 = llike_7_we0_local;
assign llike_8_address0 = zext_ln9_fu_437_p1;
assign llike_8_ce0 = llike_8_ce0_local;
assign llike_8_d0 = add6_reg_506;
assign llike_8_we0 = llike_8_we0_local;
assign llike_9_address0 = zext_ln9_fu_437_p1;
assign llike_9_ce0 = llike_9_ce0_local;
assign llike_9_d0 = add6_reg_506;
assign llike_9_we0 = llike_9_we0_local;
assign llike_address0 = zext_ln9_fu_437_p1;
assign llike_ce0 = llike_ce0_local;
assign llike_d0 = add6_reg_506;
assign llike_we0 = llike_we0_local;
assign shl_ln_fu_405_p3 = {{trunc_ln14_fu_401_p1}, {6'd0}};
assign trunc_ln13_fu_387_p1 = ap_sig_allocacmp_s_1[3:0];
assign trunc_ln14_fu_401_p1 = ap_sig_allocacmp_s_1[5:0];
assign zext_ln13_1_fu_382_p1 = ap_sig_allocacmp_s_1;
assign zext_ln13_cast_fu_358_p1 = zext_ln13;
assign zext_ln14_fu_419_p1 = add_ln14_fu_413_p2;
assign zext_ln9_fu_437_p1 = lshr_ln9_reg_471_pp0_iter9_reg;
endmodule 