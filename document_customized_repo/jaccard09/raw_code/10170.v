module sha_stream_sha_transform_Pipeline_trans_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A,B,C,D,E,W_address0,W_ce0,W_q0,W_4_address0,W_4_ce0,W_4_q0,W_1_address0,W_1_ce0,W_1_q0,W_5_address0,W_5_ce0,W_5_q0,W_2_address0,W_2_ce0,W_2_q0,W_6_address0,W_6_ce0,W_6_q0,W_3_address0,W_3_ce0,W_3_q0,W_7_address0,W_7_ce0,W_7_q0,A_17_out,A_17_out_ap_vld,B_1_out,B_1_out_ap_vld,C_17_out,C_17_out_ap_vld,D_17_out,D_17_out_ap_vld,E_1_out,E_1_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 5'd1;
parameter    ap_ST_fsm_pp0_stage1 = 5'd2;
parameter    ap_ST_fsm_pp0_stage2 = 5'd4;
parameter    ap_ST_fsm_pp0_stage3 = 5'd8;
parameter    ap_ST_fsm_pp0_stage4 = 5'd16;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] A;
input  [31:0] B;
input  [31:0] C;
input  [31:0] D;
input  [31:0] E;
output  [3:0] W_address0;
output   W_ce0;
input  [31:0] W_q0;
output  [3:0] W_4_address0;
output   W_4_ce0;
input  [31:0] W_4_q0;
output  [3:0] W_1_address0;
output   W_1_ce0;
input  [31:0] W_1_q0;
output  [3:0] W_5_address0;
output   W_5_ce0;
input  [31:0] W_5_q0;
output  [3:0] W_2_address0;
output   W_2_ce0;
input  [31:0] W_2_q0;
output  [3:0] W_6_address0;
output   W_6_ce0;
input  [31:0] W_6_q0;
output  [3:0] W_3_address0;
output   W_3_ce0;
input  [31:0] W_3_q0;
output  [3:0] W_7_address0;
output   W_7_ce0;
input  [31:0] W_7_q0;
output  [31:0] A_17_out;
output   A_17_out_ap_vld;
output  [31:0] B_1_out;
output   B_1_out_ap_vld;
output  [31:0] C_17_out;
output   C_17_out_ap_vld;
output  [31:0] D_17_out;
output   D_17_out_ap_vld;
output  [31:0] E_1_out;
output   E_1_out_ap_vld;
reg ap_idle;
reg A_17_out_ap_vld;
reg B_1_out_ap_vld;
reg C_17_out_ap_vld;
reg D_17_out_ap_vld;
reg E_1_out_ap_vld;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln116_reg_852;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage0_11001;
reg   [4:0] i_reg_846;
wire   [0:0] icmp_ln116_fu_316_p2;
reg   [31:0] E_11_load_reg_896;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] E_12_load_reg_901;
wire   [31:0] add_ln118_1_fu_397_p2;
reg   [31:0] add_ln118_1_reg_907;
wire   [31:0] add_ln118_fu_403_p2;
reg   [31:0] add_ln118_reg_912;
wire   [1:0] trunc_ln118_1_fu_409_p1;
reg   [1:0] trunc_ln118_1_reg_917;
reg   [29:0] lshr_ln118_1_reg_922;
wire   [31:0] add_ln118_5_fu_431_p2;
reg   [31:0] add_ln118_5_reg_927;
wire   [31:0] add_ln118_9_fu_445_p2;
reg   [31:0] add_ln118_9_reg_932;
wire   [31:0] select_ln118_3_fu_451_p3;
reg   [31:0] select_ln118_3_reg_937;
wire   [31:0] temp_4_fu_489_p2;
reg   [31:0] temp_4_reg_942;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] C_11_fu_494_p3;
reg   [31:0] C_11_reg_948;
wire   [31:0] add_ln118_4_fu_545_p2;
reg   [31:0] add_ln118_4_reg_954;
wire   [1:0] trunc_ln118_3_fu_551_p1;
reg   [1:0] trunc_ln118_3_reg_959;
reg   [29:0] lshr_ln118_3_reg_964;
wire   [1:0] trunc_ln118_5_fu_565_p1;
reg   [1:0] trunc_ln118_5_reg_969;
reg   [29:0] lshr_ln118_5_reg_974;
wire   [31:0] add_ln118_8_fu_637_p2;
reg   [31:0] add_ln118_8_reg_979;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] or_ln118_5_fu_667_p2;
reg   [31:0] or_ln118_5_reg_984;
wire   [26:0] trunc_ln118_6_fu_719_p1;
reg   [26:0] trunc_ln118_6_reg_989;
wire    ap_block_pp0_stage4_11001;
reg   [4:0] lshr_ln118_6_reg_994;
wire   [31:0] add_ln118_14_fu_759_p2;
reg   [31:0] add_ln118_14_reg_999;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln100_fu_332_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] E_1_fu_90;
wire   [31:0] E_15_fu_588_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [31:0] E_11_fu_94;
wire   [31:0] D_10_fu_643_p3;
reg   [31:0] E_12_fu_98;
wire   [31:0] C_5_fu_687_p3;
reg   [31:0] B_1_fu_102;
wire   [31:0] B_15_fu_714_p2;
reg   [31:0] B_11_fu_106;
wire   [31:0] A_9_fu_769_p2;
wire    ap_block_pp0_stage2;
reg   [4:0] i_1_fu_110;
wire   [4:0] add_ln116_fu_733_p2;
reg   [4:0] ap_sig_allocacmp_i;
wire    ap_block_pp0_stage1_01001;
reg    W_ce0_local;
reg    W_4_ce0_local;
reg    W_1_ce0_local;
reg    W_5_ce0_local;
reg    W_2_ce0_local;
reg    W_6_ce0_local;
reg    W_3_ce0_local;
reg    W_7_ce0_local;
wire   [1:0] lshr_ln2_fu_322_p4;
wire   [2:0] trunc_ln116_fu_356_p1;
wire   [0:0] icmp_ln118_fu_359_p2;
wire   [31:0] xor_ln118_fu_373_p2;
wire   [31:0] and_ln118_1_fu_385_p2;
wire   [31:0] and_ln118_fu_379_p2;
wire   [31:0] select_ln118_fu_365_p3;
wire   [31:0] or_ln118_fu_391_p2;
wire   [31:0] select_ln118_1_fu_423_p3;
wire   [31:0] select_ln118_2_fu_437_p3;
wire   [26:0] trunc_ln118_fu_462_p1;
wire   [4:0] lshr_ln3_fu_466_p4;
wire   [31:0] or_ln118_1_fu_476_p3;
wire   [31:0] add_ln118_2_fu_484_p2;
wire   [31:0] xor_ln118_1_fu_514_p2;
wire   [31:0] and_ln118_2_fu_520_p2;
wire   [31:0] and_ln118_3_fu_526_p2;
wire   [26:0] trunc_ln118_2_fu_500_p1;
wire   [4:0] lshr_ln118_2_fu_504_p4;
wire   [31:0] or_ln118_4_fu_537_p3;
wire   [31:0] or_ln118_2_fu_531_p2;
wire    ap_block_pp0_stage3;
wire   [31:0] add_ln118_6_fu_579_p2;
wire   [31:0] temp_5_fu_583_p2;
wire   [31:0] xor_ln118_2_fu_608_p2;
wire   [31:0] and_ln118_4_fu_613_p2;
wire   [31:0] and_ln118_5_fu_618_p2;
wire   [26:0] trunc_ln118_4_fu_594_p1;
wire   [4:0] lshr_ln118_4_fu_598_p4;
wire   [31:0] or_ln118_7_fu_629_p3;
wire   [31:0] or_ln118_3_fu_623_p2;
wire   [31:0] xor_ln118_3_fu_649_p2;
wire   [31:0] and_ln118_6_fu_655_p2;
wire   [31:0] and_ln118_7_fu_661_p2;
wire   [1:0] trunc_ln118_7_fu_673_p1;
wire   [29:0] lshr_ln118_7_fu_677_p4;
wire    ap_block_pp0_stage4;
wire   [31:0] add_ln118_10_fu_710_p2;
wire   [31:0] or_ln118_s_fu_748_p3;
wire   [31:0] add_ln118_13_fu_754_p2;
wire   [31:0] add_ln118_12_fu_765_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [4:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_1_fu_90 = 32'd0;
#0 E_11_fu_94 = 32'd0;
#0 E_12_fu_98 = 32'd0;
#0 B_1_fu_102 = 32'd0;
#0 B_11_fu_106 = 32'd0;
#0 i_1_fu_110 = 5'd0;
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_11_fu_106 <= A;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_11_fu_106 <= A_9_fu_769_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_1_fu_102 <= B;
    end else if (((icmp_ln116_reg_852 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        B_1_fu_102 <= B_15_fu_714_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_11_fu_94 <= D;
    end else if (((icmp_ln116_reg_852 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        E_11_fu_94 <= D_10_fu_643_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_12_fu_98 <= C;
    end else if (((icmp_ln116_reg_852 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        E_12_fu_98 <= C_5_fu_687_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_1_fu_90 <= E;
    end else if (((icmp_ln116_reg_852 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        E_1_fu_90 <= E_15_fu_588_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_1_fu_110 <= 5'd0;
    end else if (((icmp_ln116_reg_852 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        i_1_fu_110 <= add_ln116_fu_733_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        C_11_reg_948 <= C_11_fu_494_p3;
        add_ln118_4_reg_954 <= add_ln118_4_fu_545_p2;
        lshr_ln118_3_reg_964 <= {{B_11_fu_106[31:2]}};
        lshr_ln118_5_reg_974 <= {{temp_4_fu_489_p2[31:2]}};
        temp_4_reg_942 <= temp_4_fu_489_p2;
        trunc_ln118_3_reg_959 <= trunc_ln118_3_fu_551_p1;
        trunc_ln118_5_reg_969 <= trunc_ln118_5_fu_565_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_11_load_reg_896 <= E_11_fu_94;
        E_12_load_reg_901 <= E_12_fu_98;
        add_ln118_1_reg_907 <= add_ln118_1_fu_397_p2;
        add_ln118_5_reg_927 <= add_ln118_5_fu_431_p2;
        add_ln118_9_reg_932 <= add_ln118_9_fu_445_p2;
        add_ln118_reg_912 <= add_ln118_fu_403_p2;
        lshr_ln118_1_reg_922 <= {{B_1_fu_102[31:2]}};
        select_ln118_3_reg_937 <= select_ln118_3_fu_451_p3;
        trunc_ln118_1_reg_917 <= trunc_ln118_1_fu_409_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln118_14_reg_999 <= add_ln118_14_fu_759_p2;
        i_reg_846 <= ap_sig_allocacmp_i;
        icmp_ln116_reg_852 <= icmp_ln116_fu_316_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln118_8_reg_979 <= add_ln118_8_fu_637_p2;
        or_ln118_5_reg_984 <= or_ln118_5_fu_667_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        lshr_ln118_6_reg_994 <= {{B_15_fu_714_p2[31:27]}};
        trunc_ln118_6_reg_989 <= trunc_ln118_6_fu_719_p1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_852 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_17_out_ap_vld = 1'b1;
    end else begin
        A_17_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_852 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_1_out_ap_vld = 1'b1;
    end else begin
        B_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_852 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        C_17_out_ap_vld = 1'b1;
    end else begin
        C_17_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_852 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        D_17_out_ap_vld = 1'b1;
    end else begin
        D_17_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_852 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_1_out_ap_vld = 1'b1;
    end else begin
        E_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_2_ce0_local = 1'b1;
    end else begin
        W_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_3_ce0_local = 1'b1;
    end else begin
        W_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_4_ce0_local = 1'b1;
    end else begin
        W_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_5_ce0_local = 1'b1;
    end else begin
        W_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_6_ce0_local = 1'b1;
    end else begin
        W_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_7_ce0_local = 1'b1;
    end else begin
        W_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln116_reg_852 == 1'd0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i = 5'd0;
    end else begin
        ap_sig_allocacmp_i = i_1_fu_110;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_17_out = B_11_fu_106;
assign A_9_fu_769_p2 = (add_ln118_14_reg_999 + add_ln118_12_fu_765_p2);
assign B_15_fu_714_p2 = (add_ln118_8_reg_979 + add_ln118_10_fu_710_p2);
assign B_1_out = B_1_fu_102;
assign C_11_fu_494_p3 = {{trunc_ln118_1_reg_917}, {lshr_ln118_1_reg_922}};
assign C_17_out = E_12_fu_98;
assign C_5_fu_687_p3 = {{trunc_ln118_7_fu_673_p1}, {lshr_ln118_7_fu_677_p4}};
assign D_10_fu_643_p3 = {{trunc_ln118_5_reg_969}, {lshr_ln118_5_reg_974}};
assign D_17_out = E_11_fu_94;
assign E_15_fu_588_p3 = {{trunc_ln118_3_reg_959}, {lshr_ln118_3_reg_964}};
assign E_1_out = E_1_fu_90;
assign W_1_address0 = zext_ln100_fu_332_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_2_address0 = zext_ln100_fu_332_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_3_address0 = zext_ln100_fu_332_p1;
assign W_3_ce0 = W_3_ce0_local;
assign W_4_address0 = zext_ln100_fu_332_p1;
assign W_4_ce0 = W_4_ce0_local;
assign W_5_address0 = zext_ln100_fu_332_p1;
assign W_5_ce0 = W_5_ce0_local;
assign W_6_address0 = zext_ln100_fu_332_p1;
assign W_6_ce0 = W_6_ce0_local;
assign W_7_address0 = zext_ln100_fu_332_p1;
assign W_7_ce0 = W_7_ce0_local;
assign W_address0 = zext_ln100_fu_332_p1;
assign W_ce0 = W_ce0_local;
assign add_ln116_fu_733_p2 = (i_reg_846 + 5'd4);
assign add_ln118_10_fu_710_p2 = (add_ln118_9_reg_932 + E_12_load_reg_901);
assign add_ln118_12_fu_765_p2 = (C_11_reg_948 + or_ln118_5_reg_984);
assign add_ln118_13_fu_754_p2 = (select_ln118_3_reg_937 + 32'd1518500249);
assign add_ln118_14_fu_759_p2 = (or_ln118_s_fu_748_p3 + add_ln118_13_fu_754_p2);
assign add_ln118_1_fu_397_p2 = (select_ln118_fu_365_p3 + 32'd1518500249);
assign add_ln118_2_fu_484_p2 = (add_ln118_1_reg_907 + or_ln118_1_fu_476_p3);
assign add_ln118_4_fu_545_p2 = (or_ln118_4_fu_537_p3 + or_ln118_2_fu_531_p2);
assign add_ln118_5_fu_431_p2 = (select_ln118_1_fu_423_p3 + 32'd1518500249);
assign add_ln118_6_fu_579_p2 = (add_ln118_5_reg_927 + E_11_load_reg_896);
assign add_ln118_8_fu_637_p2 = (or_ln118_7_fu_629_p3 + or_ln118_3_fu_623_p2);
assign add_ln118_9_fu_445_p2 = (select_ln118_2_fu_437_p3 + 32'd1518500249);
assign add_ln118_fu_403_p2 = (or_ln118_fu_391_p2 + E_1_fu_90);
assign and_ln118_1_fu_385_p2 = (xor_ln118_fu_373_p2 & E_11_fu_94);
assign and_ln118_2_fu_520_p2 = (C_11_fu_494_p3 & B_11_fu_106);
assign and_ln118_3_fu_526_p2 = (xor_ln118_1_fu_514_p2 & E_12_load_reg_901);
assign and_ln118_4_fu_613_p2 = (temp_4_reg_942 & E_15_fu_588_p3);
assign and_ln118_5_fu_618_p2 = (xor_ln118_2_fu_608_p2 & C_11_reg_948);
assign and_ln118_6_fu_655_p2 = (temp_5_fu_583_p2 & D_10_fu_643_p3);
assign and_ln118_7_fu_661_p2 = (xor_ln118_3_fu_649_p2 & E_15_fu_588_p3);
assign and_ln118_fu_379_p2 = (E_12_fu_98 & B_1_fu_102);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign icmp_ln116_fu_316_p2 = ((ap_sig_allocacmp_i < 5'd20) ? 1'b1 : 1'b0);
assign icmp_ln118_fu_359_p2 = ((trunc_ln116_fu_356_p1 != 3'd0) ? 1'b1 : 1'b0);
assign lshr_ln118_2_fu_504_p4 = {{temp_4_fu_489_p2[31:27]}};
assign lshr_ln118_4_fu_598_p4 = {{temp_5_fu_583_p2[31:27]}};
assign lshr_ln118_7_fu_677_p4 = {{temp_5_fu_583_p2[31:2]}};
assign lshr_ln2_fu_322_p4 = {{ap_sig_allocacmp_i[4:3]}};
assign lshr_ln3_fu_466_p4 = {{B_11_fu_106[31:27]}};
assign or_ln118_1_fu_476_p3 = {{trunc_ln118_fu_462_p1}, {lshr_ln3_fu_466_p4}};
assign or_ln118_2_fu_531_p2 = (and_ln118_3_fu_526_p2 | and_ln118_2_fu_520_p2);
assign or_ln118_3_fu_623_p2 = (and_ln118_5_fu_618_p2 | and_ln118_4_fu_613_p2);
assign or_ln118_4_fu_537_p3 = {{trunc_ln118_2_fu_500_p1}, {lshr_ln118_2_fu_504_p4}};
assign or_ln118_5_fu_667_p2 = (and_ln118_7_fu_661_p2 | and_ln118_6_fu_655_p2);
assign or_ln118_7_fu_629_p3 = {{trunc_ln118_4_fu_594_p1}, {lshr_ln118_4_fu_598_p4}};
assign or_ln118_fu_391_p2 = (and_ln118_fu_379_p2 | and_ln118_1_fu_385_p2);
assign or_ln118_s_fu_748_p3 = {{trunc_ln118_6_reg_989}, {lshr_ln118_6_reg_994}};
assign select_ln118_1_fu_423_p3 = ((icmp_ln118_fu_359_p2[0:0] == 1'b1) ? W_5_q0 : W_1_q0);
assign select_ln118_2_fu_437_p3 = ((icmp_ln118_fu_359_p2[0:0] == 1'b1) ? W_6_q0 : W_2_q0);
assign select_ln118_3_fu_451_p3 = ((icmp_ln118_fu_359_p2[0:0] == 1'b1) ? W_7_q0 : W_3_q0);
assign select_ln118_fu_365_p3 = ((icmp_ln118_fu_359_p2[0:0] == 1'b1) ? W_4_q0 : W_q0);
assign temp_4_fu_489_p2 = (add_ln118_reg_912 + add_ln118_2_fu_484_p2);
assign temp_5_fu_583_p2 = (add_ln118_4_reg_954 + add_ln118_6_fu_579_p2);
assign trunc_ln116_fu_356_p1 = i_reg_846[2:0];
assign trunc_ln118_1_fu_409_p1 = B_1_fu_102[1:0];
assign trunc_ln118_2_fu_500_p1 = temp_4_fu_489_p2[26:0];
assign trunc_ln118_3_fu_551_p1 = B_11_fu_106[1:0];
assign trunc_ln118_4_fu_594_p1 = temp_5_fu_583_p2[26:0];
assign trunc_ln118_5_fu_565_p1 = temp_4_fu_489_p2[1:0];
assign trunc_ln118_6_fu_719_p1 = B_15_fu_714_p2[26:0];
assign trunc_ln118_7_fu_673_p1 = temp_5_fu_583_p2[1:0];
assign trunc_ln118_fu_462_p1 = B_11_fu_106[26:0];
assign xor_ln118_1_fu_514_p2 = (32'd4294967295 ^ B_11_fu_106);
assign xor_ln118_2_fu_608_p2 = (temp_4_reg_942 ^ 32'd4294967295);
assign xor_ln118_3_fu_649_p2 = (temp_5_fu_583_p2 ^ 32'd4294967295);
assign xor_ln118_fu_373_p2 = (32'd4294967295 ^ B_1_fu_102);
assign zext_ln100_fu_332_p1 = lshr_ln2_fu_322_p4;
endmodule 