module sha_stream_sha_transform_Pipeline_trans_lp4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_29_reload,B_1_reload,C_25_reload,D_29_reload,E_1_reload,W_address0,W_ce0,W_q0,W_1_address0,W_1_ce0,W_1_q0,W_2_address0,W_2_ce0,W_2_q0,W_3_address0,W_3_ce0,W_3_q0,A_31_out,A_31_out_ap_vld,B_6_out,B_6_out_ap_vld,C_27_out,C_27_out_ap_vld,D_31_out,D_31_out_ap_vld,E_6_out,E_6_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] A_29_reload;
input  [31:0] B_1_reload;
input  [31:0] C_25_reload;
input  [31:0] D_29_reload;
input  [31:0] E_1_reload;
output  [4:0] W_address0;
output   W_ce0;
input  [31:0] W_q0;
output  [4:0] W_1_address0;
output   W_1_ce0;
input  [31:0] W_1_q0;
output  [4:0] W_2_address0;
output   W_2_ce0;
input  [31:0] W_2_q0;
output  [4:0] W_3_address0;
output   W_3_ce0;
input  [31:0] W_3_q0;
output  [31:0] A_31_out;
output   A_31_out_ap_vld;
output  [31:0] B_6_out;
output   B_6_out_ap_vld;
output  [31:0] C_27_out;
output   C_27_out_ap_vld;
output  [31:0] D_31_out;
output   D_31_out_ap_vld;
output  [31:0] E_6_out;
output   E_6_out_ap_vld;
reg ap_idle;
reg A_31_out_ap_vld;
reg B_6_out_ap_vld;
reg C_27_out_ap_vld;
reg D_31_out_ap_vld;
reg E_6_out_ap_vld;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
wire   [0:0] icmp_ln120_fu_252_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [31:0] B_load_reg_687;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] add_ln122_2_fu_310_p2;
reg   [31:0] add_ln122_2_reg_697;
wire   [1:0] trunc_ln122_3_fu_316_p1;
reg   [1:0] trunc_ln122_3_reg_707;
reg   [29:0] lshr_ln122_3_reg_712;
reg   [31:0] E_load_reg_727;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] E_23_load_reg_732;
wire   [31:0] temp_14_fu_368_p2;
reg   [31:0] temp_14_reg_738;
wire   [1:0] trunc_ln122_1_fu_373_p1;
reg   [1:0] trunc_ln122_1_reg_743;
reg   [29:0] lshr_ln122_1_reg_748;
wire   [26:0] trunc_ln122_2_fu_387_p1;
reg   [26:0] trunc_ln122_2_reg_753;
reg   [4:0] lshr_ln122_2_reg_758;
reg   [31:0] W_1_load_reg_763;
reg   [31:0] W_2_load_reg_768;
wire   [1:0] trunc_ln122_5_fu_401_p1;
reg   [1:0] trunc_ln122_5_reg_773;
reg   [29:0] lshr_ln122_5_reg_778;
reg   [31:0] W_3_load_reg_783;
wire   [31:0] add_ln122_6_fu_427_p2;
reg   [31:0] add_ln122_6_reg_788;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] D_fu_432_p3;
reg   [31:0] D_reg_793;
wire   [31:0] C_18_fu_443_p3;
reg   [31:0] C_18_reg_798;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [31:0] temp_15_fu_464_p2;
reg   [31:0] temp_15_reg_804;
wire   [26:0] trunc_ln122_4_fu_469_p1;
reg   [26:0] trunc_ln122_4_reg_809;
reg   [4:0] lshr_ln122_4_reg_814;
wire   [31:0] xor_ln122_5_fu_521_p2;
reg   [31:0] xor_ln122_5_reg_819;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [31:0] add_ln122_10_fu_538_p2;
reg   [31:0] add_ln122_10_reg_824;
wire   [31:0] xor_ln122_7_fu_548_p2;
reg   [31:0] xor_ln122_7_reg_829;
wire   [26:0] trunc_ln122_6_fu_567_p1;
reg   [26:0] trunc_ln122_6_reg_834;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [4:0] lshr_ln122_6_reg_839;
wire   [31:0] add_ln122_14_fu_598_p2;
reg   [31:0] add_ln122_14_reg_844;
wire    ap_block_pp0_stage7_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln100_1_fu_274_p1;
wire    ap_block_pp0_stage1;
reg   [31:0] E_6_fu_78;
wire   [31:0] E_26_fu_510_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] E_fu_82;
wire    ap_block_pp0_stage2;
reg   [31:0] B_6_fu_86;
wire   [31:0] B_25_fu_562_p2;
reg   [31:0] B_fu_90;
wire   [31:0] A_fu_607_p2;
reg   [31:0] E_23_fu_94;
wire   [31:0] C_17_fu_497_p3;
reg   [5:0] i_2_fu_98;
wire   [5:0] add_ln120_fu_330_p2;
wire    ap_block_pp0_stage1_01001;
reg    W_ce0_local;
reg    W_1_ce0_local;
reg    W_2_ce0_local;
reg    W_3_ce0_local;
wire    ap_block_pp0_stage0;
wire   [3:0] lshr_ln100_1_fu_264_p4;
wire   [26:0] trunc_ln122_fu_282_p1;
wire   [4:0] lshr_ln4_fu_286_p4;
wire   [31:0] or_ln_fu_296_p3;
wire   [31:0] add_ln122_1_fu_304_p2;
wire   [31:0] xor_ln122_fu_350_p2;
wire   [31:0] xor_ln122_1_fu_356_p2;
wire   [31:0] add_ln122_fu_362_p2;
wire    ap_block_pp0_stage3;
wire   [31:0] or_ln122_2_fu_415_p3;
wire   [31:0] add_ln122_5_fu_421_p2;
wire    ap_block_pp0_stage4;
wire   [31:0] xor_ln122_2_fu_449_p2;
wire   [31:0] xor_ln122_3_fu_454_p2;
wire   [31:0] add_ln122_4_fu_459_p2;
wire   [1:0] trunc_ln122_7_fu_483_p1;
wire   [29:0] lshr_ln122_7_fu_487_p4;
wire    ap_block_pp0_stage5;
wire   [31:0] xor_ln122_4_fu_516_p2;
wire   [31:0] or_ln122_4_fu_526_p3;
wire   [31:0] add_ln122_9_fu_532_p2;
wire   [31:0] xor_ln122_6_fu_543_p2;
wire    ap_block_pp0_stage6;
wire   [31:0] add_ln122_8_fu_558_p2;
wire    ap_block_pp0_stage7;
wire   [31:0] or_ln122_6_fu_586_p3;
wire   [31:0] add_ln122_13_fu_592_p2;
wire   [31:0] add_ln122_12_fu_603_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [7:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_6_fu_78 = 32'd0;
#0 E_fu_82 = 32'd0;
#0 B_6_fu_86 = 32'd0;
#0 B_fu_90 = 32'd0;
#0 E_23_fu_94 = 32'd0;
#0 i_2_fu_98 = 6'd0;
#0 ap_done_reg = 1'b0;
end
sha_stream_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_6_fu_86 <= B_1_reload;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        B_6_fu_86 <= B_25_fu_562_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            B_fu_90 <= A_29_reload;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            B_fu_90 <= A_fu_607_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_23_fu_94 <= C_25_reload;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        E_23_fu_94 <= C_17_fu_497_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_6_fu_78 <= E_1_reload;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        E_6_fu_78 <= E_26_fu_510_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_fu_82 <= D_29_reload;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        E_fu_82 <= D_fu_432_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_2_fu_98 <= 6'd20;
    end else if (((icmp_ln120_fu_252_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_2_fu_98 <= add_ln120_fu_330_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_load_reg_687 <= B_fu_90;
        add_ln122_2_reg_697 <= add_ln122_2_fu_310_p2;
        lshr_ln122_3_reg_712 <= {{B_fu_90[31:2]}};
        trunc_ln122_3_reg_707 <= trunc_ln122_3_fu_316_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        C_18_reg_798 <= C_18_fu_443_p3;
        lshr_ln122_4_reg_814 <= {{temp_15_fu_464_p2[31:27]}};
        temp_15_reg_804 <= temp_15_fu_464_p2;
        trunc_ln122_4_reg_809 <= trunc_ln122_4_fu_469_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        D_reg_793 <= D_fu_432_p3;
        add_ln122_6_reg_788 <= add_ln122_6_fu_427_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        E_23_load_reg_732 <= E_23_fu_94;
        E_load_reg_727 <= E_fu_82;
        W_1_load_reg_763 <= W_1_q0;
        W_2_load_reg_768 <= W_2_q0;
        W_3_load_reg_783 <= W_3_q0;
        lshr_ln122_1_reg_748 <= {{B_6_fu_86[31:2]}};
        lshr_ln122_2_reg_758 <= {{temp_14_fu_368_p2[31:27]}};
        lshr_ln122_5_reg_778 <= {{temp_14_fu_368_p2[31:2]}};
        temp_14_reg_738 <= temp_14_fu_368_p2;
        trunc_ln122_1_reg_743 <= trunc_ln122_1_fu_373_p1;
        trunc_ln122_2_reg_753 <= trunc_ln122_2_fu_387_p1;
        trunc_ln122_5_reg_773 <= trunc_ln122_5_fu_401_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln122_10_reg_824 <= add_ln122_10_fu_538_p2;
        xor_ln122_5_reg_819 <= xor_ln122_5_fu_521_p2;
        xor_ln122_7_reg_829 <= xor_ln122_7_fu_548_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln122_14_reg_844 <= add_ln122_14_fu_598_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        lshr_ln122_6_reg_839 <= {{B_25_fu_562_p2[31:27]}};
        trunc_ln122_6_reg_834 <= trunc_ln122_6_fu_567_p1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_fu_252_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_31_out_ap_vld = 1'b1;
    end else begin
        A_31_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_fu_252_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_6_out_ap_vld = 1'b1;
    end else begin
        B_6_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_fu_252_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        C_27_out_ap_vld = 1'b1;
    end else begin
        C_27_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_fu_252_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        D_31_out_ap_vld = 1'b1;
    end else begin
        D_31_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_fu_252_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_6_out_ap_vld = 1'b1;
    end else begin
        E_6_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_2_ce0_local = 1'b1;
    end else begin
        W_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_3_ce0_local = 1'b1;
    end else begin
        W_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln120_fu_252_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_31_out = B_fu_90;
assign A_fu_607_p2 = (add_ln122_14_reg_844 + add_ln122_12_fu_603_p2);
assign B_25_fu_562_p2 = (add_ln122_10_reg_824 + add_ln122_8_fu_558_p2);
assign B_6_out = B_6_fu_86;
assign C_17_fu_497_p3 = {{trunc_ln122_7_fu_483_p1}, {lshr_ln122_7_fu_487_p4}};
assign C_18_fu_443_p3 = {{trunc_ln122_1_reg_743}, {lshr_ln122_1_reg_748}};
assign C_27_out = E_23_fu_94;
assign D_31_out = E_fu_82;
assign D_fu_432_p3 = {{trunc_ln122_5_reg_773}, {lshr_ln122_5_reg_778}};
assign E_26_fu_510_p3 = {{trunc_ln122_3_reg_707}, {lshr_ln122_3_reg_712}};
assign E_6_out = E_6_fu_78;
assign W_1_address0 = zext_ln100_1_fu_274_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_2_address0 = zext_ln100_1_fu_274_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_3_address0 = zext_ln100_1_fu_274_p1;
assign W_3_ce0 = W_3_ce0_local;
assign W_address0 = zext_ln100_1_fu_274_p1;
assign W_ce0 = W_ce0_local;
assign add_ln120_fu_330_p2 = (i_2_fu_98 + 6'd4);
assign add_ln122_10_fu_538_p2 = (add_ln122_9_fu_532_p2 + E_23_load_reg_732);
assign add_ln122_12_fu_603_p2 = (W_3_load_reg_783 + C_18_reg_798);
assign add_ln122_13_fu_592_p2 = (or_ln122_6_fu_586_p3 + 32'd1859775393);
assign add_ln122_14_fu_598_p2 = (add_ln122_13_fu_592_p2 + xor_ln122_7_reg_829);
assign add_ln122_1_fu_304_p2 = (or_ln_fu_296_p3 + 32'd1859775393);
assign add_ln122_2_fu_310_p2 = (add_ln122_1_fu_304_p2 + E_6_fu_78);
assign add_ln122_4_fu_459_p2 = (W_1_load_reg_763 + xor_ln122_3_fu_454_p2);
assign add_ln122_5_fu_421_p2 = (or_ln122_2_fu_415_p3 + 32'd1859775393);
assign add_ln122_6_fu_427_p2 = (add_ln122_5_fu_421_p2 + E_load_reg_727);
assign add_ln122_8_fu_558_p2 = (W_2_load_reg_768 + xor_ln122_5_reg_819);
assign add_ln122_9_fu_532_p2 = (or_ln122_4_fu_526_p3 + 32'd1859775393);
assign add_ln122_fu_362_p2 = (W_q0 + xor_ln122_1_fu_356_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign icmp_ln120_fu_252_p2 = ((i_2_fu_98 < 6'd40) ? 1'b1 : 1'b0);
assign lshr_ln100_1_fu_264_p4 = {{i_2_fu_98[5:2]}};
assign lshr_ln122_7_fu_487_p4 = {{temp_15_fu_464_p2[31:2]}};
assign lshr_ln4_fu_286_p4 = {{B_fu_90[31:27]}};
assign or_ln122_2_fu_415_p3 = {{trunc_ln122_2_reg_753}, {lshr_ln122_2_reg_758}};
assign or_ln122_4_fu_526_p3 = {{trunc_ln122_4_reg_809}, {lshr_ln122_4_reg_814}};
assign or_ln122_6_fu_586_p3 = {{trunc_ln122_6_reg_834}, {lshr_ln122_6_reg_839}};
assign or_ln_fu_296_p3 = {{trunc_ln122_fu_282_p1}, {lshr_ln4_fu_286_p4}};
assign temp_14_fu_368_p2 = (add_ln122_2_reg_697 + add_ln122_fu_362_p2);
assign temp_15_fu_464_p2 = (add_ln122_6_reg_788 + add_ln122_4_fu_459_p2);
assign trunc_ln122_1_fu_373_p1 = B_6_fu_86[1:0];
assign trunc_ln122_2_fu_387_p1 = temp_14_fu_368_p2[26:0];
assign trunc_ln122_3_fu_316_p1 = B_fu_90[1:0];
assign trunc_ln122_4_fu_469_p1 = temp_15_fu_464_p2[26:0];
assign trunc_ln122_5_fu_401_p1 = temp_14_fu_368_p2[1:0];
assign trunc_ln122_6_fu_567_p1 = B_25_fu_562_p2[26:0];
assign trunc_ln122_7_fu_483_p1 = temp_15_fu_464_p2[1:0];
assign trunc_ln122_fu_282_p1 = B_fu_90[26:0];
assign xor_ln122_1_fu_356_p2 = (xor_ln122_fu_350_p2 ^ E_23_fu_94);
assign xor_ln122_2_fu_449_p2 = (C_18_fu_443_p3 ^ B_load_reg_687);
assign xor_ln122_3_fu_454_p2 = (xor_ln122_2_fu_449_p2 ^ E_23_load_reg_732);
assign xor_ln122_4_fu_516_p2 = (temp_14_reg_738 ^ E_26_fu_510_p3);
assign xor_ln122_5_fu_521_p2 = (xor_ln122_4_fu_516_p2 ^ C_18_reg_798);
assign xor_ln122_6_fu_543_p2 = (temp_15_reg_804 ^ E_26_fu_510_p3);
assign xor_ln122_7_fu_548_p2 = (xor_ln122_6_fu_543_p2 ^ D_reg_793);
assign xor_ln122_fu_350_p2 = (E_fu_82 ^ B_6_fu_86);
assign zext_ln100_1_fu_274_p1 = lshr_ln100_1_fu_264_p4;
endmodule 