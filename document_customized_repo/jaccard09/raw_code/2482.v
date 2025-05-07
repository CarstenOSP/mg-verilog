module sha_stream_sha_transform_Pipeline_trans_lp5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,temp_83,temp_82,C,C_90,C_89,W_address0,W_ce0,W_q0,W_4_address0,W_4_ce0,W_4_q0,W_1_address0,W_1_ce0,W_1_q0,W_5_address0,W_5_ce0,W_5_q0,W_2_address0,W_2_ce0,W_2_q0,W_6_address0,W_6_ce0,W_6_q0,W_3_address0,W_3_ce0,W_3_q0,W_7_address0,W_7_ce0,W_7_q0,A_out,A_out_ap_vld,B_42_out,B_42_out_ap_vld,C_91_out,C_91_out_ap_vld,D_51_out,D_51_out_ap_vld,E_28_out,E_28_out_ap_vld); 
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
input  [31:0] temp_83;
input  [31:0] temp_82;
input  [31:0] C;
input  [31:0] C_90;
input  [31:0] C_89;
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
output  [31:0] A_out;
output   A_out_ap_vld;
output  [31:0] B_42_out;
output   B_42_out_ap_vld;
output  [31:0] C_91_out;
output   C_91_out_ap_vld;
output  [31:0] D_51_out;
output   D_51_out_ap_vld;
output  [31:0] E_28_out;
output   E_28_out_ap_vld;
reg ap_idle;
reg A_out_ap_vld;
reg B_42_out_ap_vld;
reg C_91_out_ap_vld;
reg D_51_out_ap_vld;
reg E_28_out_ap_vld;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln124_reg_853;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] i_reg_847;
wire   [0:0] icmp_ln124_fu_316_p2;
reg   [31:0] E_6_load_1_reg_897;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] add_ln126_1_fu_397_p2;
reg   [31:0] add_ln126_1_reg_903;
wire   [31:0] add_ln126_fu_403_p2;
reg   [31:0] add_ln126_reg_908;
wire   [1:0] trunc_ln126_1_fu_409_p1;
reg   [1:0] trunc_ln126_1_reg_913;
reg   [29:0] lshr_ln126_1_reg_918;
wire   [31:0] add_ln126_5_fu_431_p2;
reg   [31:0] add_ln126_5_reg_923;
wire   [31:0] add_ln126_9_fu_445_p2;
reg   [31:0] add_ln126_9_reg_928;
wire   [31:0] select_ln126_3_fu_451_p3;
reg   [31:0] select_ln126_3_reg_933;
wire   [31:0] temp_4_fu_489_p2;
reg   [31:0] temp_4_reg_938;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] C_9_fu_494_p3;
reg   [31:0] C_9_reg_943;
wire   [31:0] add_ln126_4_fu_544_p2;
reg   [31:0] add_ln126_4_reg_950;
wire   [1:0] trunc_ln126_3_fu_550_p1;
reg   [1:0] trunc_ln126_3_reg_955;
reg   [29:0] lshr_ln126_3_reg_960;
wire   [1:0] trunc_ln126_5_fu_564_p1;
reg   [1:0] trunc_ln126_5_reg_965;
reg   [29:0] lshr_ln126_5_reg_970;
wire   [31:0] add_ln126_8_fu_637_p2;
reg   [31:0] add_ln126_8_reg_975;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] or_ln126_9_fu_667_p2;
reg   [31:0] or_ln126_9_reg_980;
wire   [26:0] trunc_ln126_6_fu_720_p1;
reg   [26:0] trunc_ln126_6_reg_985;
wire    ap_block_pp0_stage4_11001;
reg   [4:0] lshr_ln126_6_reg_990;
wire   [31:0] add_ln126_14_fu_760_p2;
reg   [31:0] add_ln126_14_reg_995;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln100_fu_332_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] E_fu_90;
wire   [31:0] E_9_fu_588_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [31:0] E_5_fu_94;
wire   [31:0] D_fu_643_p3;
reg   [31:0] B_fu_98;
wire   [31:0] B_9_fu_715_p2;
reg   [31:0] E_6_fu_102;
wire   [31:0] C_8_fu_687_p3;
reg   [31:0] B_5_fu_106;
wire   [31:0] A_fu_770_p2;
wire    ap_block_pp0_stage2;
reg   [5:0] i_1_fu_110;
wire   [5:0] add_ln124_fu_734_p2;
reg   [5:0] ap_sig_allocacmp_i;
wire    ap_block_pp0_stage1_01001;
reg    W_ce0_local;
reg    W_4_ce0_local;
reg    W_1_ce0_local;
reg    W_5_ce0_local;
reg    W_2_ce0_local;
reg    W_6_ce0_local;
reg    W_3_ce0_local;
reg    W_7_ce0_local;
wire   [2:0] lshr_ln5_fu_322_p4;
wire   [2:0] trunc_ln124_fu_356_p1;
wire   [0:0] icmp_ln126_fu_359_p2;
wire   [31:0] or_ln126_fu_373_p2;
wire   [31:0] and_ln126_fu_379_p2;
wire   [31:0] and_ln126_1_fu_385_p2;
wire   [31:0] select_ln126_fu_365_p3;
wire   [31:0] or_ln126_1_fu_391_p2;
wire   [31:0] select_ln126_1_fu_423_p3;
wire   [31:0] select_ln126_2_fu_437_p3;
wire   [26:0] trunc_ln126_fu_462_p1;
wire   [4:0] lshr_ln6_fu_466_p4;
wire   [31:0] or_ln126_2_fu_476_p3;
wire   [31:0] add_ln126_2_fu_484_p2;
wire   [31:0] or_ln126_3_fu_514_p2;
wire   [31:0] and_ln126_2_fu_519_p2;
wire   [31:0] and_ln126_3_fu_525_p2;
wire   [26:0] trunc_ln126_2_fu_500_p1;
wire   [4:0] lshr_ln126_2_fu_504_p4;
wire   [31:0] or_ln126_6_fu_536_p3;
wire   [31:0] or_ln126_4_fu_530_p2;
wire    ap_block_pp0_stage3;
wire   [31:0] add_ln126_6_fu_578_p2;
wire   [31:0] temp_5_fu_583_p2;
wire   [31:0] or_ln126_5_fu_608_p2;
wire   [31:0] and_ln126_4_fu_613_p2;
wire   [31:0] and_ln126_5_fu_618_p2;
wire   [26:0] trunc_ln126_4_fu_594_p1;
wire   [4:0] lshr_ln126_4_fu_598_p4;
wire   [31:0] or_ln126_s_fu_629_p3;
wire   [31:0] or_ln126_7_fu_623_p2;
wire   [31:0] or_ln126_8_fu_649_p2;
wire   [31:0] and_ln126_6_fu_655_p2;
wire   [31:0] and_ln126_7_fu_661_p2;
wire   [1:0] trunc_ln126_7_fu_673_p1;
wire   [29:0] lshr_ln126_7_fu_677_p4;
wire    ap_block_pp0_stage4;
wire   [31:0] add_ln126_10_fu_710_p2;
wire   [31:0] or_ln126_10_fu_749_p3;
wire   [31:0] add_ln126_13_fu_755_p2;
wire   [31:0] add_ln126_12_fu_765_p2;
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
#0 E_fu_90 = 32'd0;
#0 E_5_fu_94 = 32'd0;
#0 B_fu_98 = 32'd0;
#0 E_6_fu_102 = 32'd0;
#0 B_5_fu_106 = 32'd0;
#0 i_1_fu_110 = 6'd0;
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
        B_5_fu_106 <= temp_83;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_5_fu_106 <= A_fu_770_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_fu_98 <= temp_82;
    end else if (((icmp_ln124_reg_853 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        B_fu_98 <= B_9_fu_715_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_5_fu_94 <= C_90;
    end else if (((icmp_ln124_reg_853 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        E_5_fu_94 <= D_fu_643_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_6_fu_102 <= C;
    end else if (((icmp_ln124_reg_853 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        E_6_fu_102 <= C_8_fu_687_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_fu_90 <= C_89;
    end else if (((icmp_ln124_reg_853 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        E_fu_90 <= E_9_fu_588_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_1_fu_110 <= 6'd40;
    end else if (((icmp_ln124_reg_853 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        i_1_fu_110 <= add_ln124_fu_734_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        C_9_reg_943 <= C_9_fu_494_p3;
        add_ln126_4_reg_950 <= add_ln126_4_fu_544_p2;
        lshr_ln126_3_reg_960 <= {{B_5_fu_106[31:2]}};
        lshr_ln126_5_reg_970 <= {{temp_4_fu_489_p2[31:2]}};
        temp_4_reg_938 <= temp_4_fu_489_p2;
        trunc_ln126_3_reg_955 <= trunc_ln126_3_fu_550_p1;
        trunc_ln126_5_reg_965 <= trunc_ln126_5_fu_564_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_6_load_1_reg_897 <= E_6_fu_102;
        add_ln126_1_reg_903 <= add_ln126_1_fu_397_p2;
        add_ln126_5_reg_923 <= add_ln126_5_fu_431_p2;
        add_ln126_9_reg_928 <= add_ln126_9_fu_445_p2;
        add_ln126_reg_908 <= add_ln126_fu_403_p2;
        lshr_ln126_1_reg_918 <= {{B_fu_98[31:2]}};
        select_ln126_3_reg_933 <= select_ln126_3_fu_451_p3;
        trunc_ln126_1_reg_913 <= trunc_ln126_1_fu_409_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln126_14_reg_995 <= add_ln126_14_fu_760_p2;
        i_reg_847 <= ap_sig_allocacmp_i;
        icmp_ln124_reg_853 <= icmp_ln124_fu_316_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln126_8_reg_975 <= add_ln126_8_fu_637_p2;
        or_ln126_9_reg_980 <= or_ln126_9_fu_667_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        lshr_ln126_6_reg_990 <= {{B_9_fu_715_p2[31:27]}};
        trunc_ln126_6_reg_985 <= trunc_ln126_6_fu_720_p1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_853 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_out_ap_vld = 1'b1;
    end else begin
        A_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_853 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_42_out_ap_vld = 1'b1;
    end else begin
        B_42_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_853 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        C_91_out_ap_vld = 1'b1;
    end else begin
        C_91_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_853 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        D_51_out_ap_vld = 1'b1;
    end else begin
        D_51_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_853 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_28_out_ap_vld = 1'b1;
    end else begin
        E_28_out_ap_vld = 1'b0;
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
    if (((icmp_ln124_reg_853 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_i = 6'd40;
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
assign A_fu_770_p2 = (add_ln126_14_reg_995 + add_ln126_12_fu_765_p2);
assign A_out = B_5_fu_106;
assign B_42_out = B_fu_98;
assign B_9_fu_715_p2 = (add_ln126_8_reg_975 + add_ln126_10_fu_710_p2);
assign C_8_fu_687_p3 = {{trunc_ln126_7_fu_673_p1}, {lshr_ln126_7_fu_677_p4}};
assign C_91_out = E_6_fu_102;
assign C_9_fu_494_p3 = {{trunc_ln126_1_reg_913}, {lshr_ln126_1_reg_918}};
assign D_51_out = E_5_fu_94;
assign D_fu_643_p3 = {{trunc_ln126_5_reg_965}, {lshr_ln126_5_reg_970}};
assign E_28_out = E_fu_90;
assign E_9_fu_588_p3 = {{trunc_ln126_3_reg_955}, {lshr_ln126_3_reg_960}};
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
assign add_ln124_fu_734_p2 = (i_reg_847 + 6'd4);
assign add_ln126_10_fu_710_p2 = ($signed(add_ln126_9_reg_928) + $signed(32'd2400959708));
assign add_ln126_12_fu_765_p2 = ($signed(C_9_reg_943) + $signed(32'd2400959708));
assign add_ln126_13_fu_755_p2 = (or_ln126_10_fu_749_p3 + select_ln126_3_reg_933);
assign add_ln126_14_fu_760_p2 = (add_ln126_13_fu_755_p2 + or_ln126_9_reg_980);
assign add_ln126_1_fu_397_p2 = ($signed(32'd2400959708) + $signed(select_ln126_fu_365_p3));
assign add_ln126_2_fu_484_p2 = (or_ln126_2_fu_476_p3 + add_ln126_1_reg_903);
assign add_ln126_4_fu_544_p2 = (or_ln126_6_fu_536_p3 + or_ln126_4_fu_530_p2);
assign add_ln126_5_fu_431_p2 = (E_5_fu_94 + select_ln126_1_fu_423_p3);
assign add_ln126_6_fu_578_p2 = ($signed(add_ln126_5_reg_923) + $signed(32'd2400959708));
assign add_ln126_8_fu_637_p2 = (or_ln126_s_fu_629_p3 + or_ln126_7_fu_623_p2);
assign add_ln126_9_fu_445_p2 = (E_6_fu_102 + select_ln126_2_fu_437_p3);
assign add_ln126_fu_403_p2 = (or_ln126_1_fu_391_p2 + E_fu_90);
assign and_ln126_1_fu_385_p2 = (E_6_fu_102 & E_5_fu_94);
assign and_ln126_2_fu_519_p2 = (or_ln126_3_fu_514_p2 & B_5_fu_106);
assign and_ln126_3_fu_525_p2 = (E_6_load_1_reg_897 & C_9_fu_494_p3);
assign and_ln126_4_fu_613_p2 = (temp_4_reg_938 & or_ln126_5_fu_608_p2);
assign and_ln126_5_fu_618_p2 = (E_9_fu_588_p3 & C_9_reg_943);
assign and_ln126_6_fu_655_p2 = (temp_5_fu_583_p2 & or_ln126_8_fu_649_p2);
assign and_ln126_7_fu_661_p2 = (E_9_fu_588_p3 & D_fu_643_p3);
assign and_ln126_fu_379_p2 = (or_ln126_fu_373_p2 & B_fu_98);
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
assign icmp_ln124_fu_316_p2 = ((ap_sig_allocacmp_i == 6'd60) ? 1'b1 : 1'b0);
assign icmp_ln126_fu_359_p2 = ((trunc_ln124_fu_356_p1 != 3'd0) ? 1'b1 : 1'b0);
assign lshr_ln126_2_fu_504_p4 = {{temp_4_fu_489_p2[31:27]}};
assign lshr_ln126_4_fu_598_p4 = {{temp_5_fu_583_p2[31:27]}};
assign lshr_ln126_7_fu_677_p4 = {{temp_5_fu_583_p2[31:2]}};
assign lshr_ln5_fu_322_p4 = {{ap_sig_allocacmp_i[5:3]}};
assign lshr_ln6_fu_466_p4 = {{B_5_fu_106[31:27]}};
assign or_ln126_10_fu_749_p3 = {{trunc_ln126_6_reg_985}, {lshr_ln126_6_reg_990}};
assign or_ln126_1_fu_391_p2 = (and_ln126_fu_379_p2 | and_ln126_1_fu_385_p2);
assign or_ln126_2_fu_476_p3 = {{trunc_ln126_fu_462_p1}, {lshr_ln6_fu_466_p4}};
assign or_ln126_3_fu_514_p2 = (E_6_load_1_reg_897 | C_9_fu_494_p3);
assign or_ln126_4_fu_530_p2 = (and_ln126_3_fu_525_p2 | and_ln126_2_fu_519_p2);
assign or_ln126_5_fu_608_p2 = (E_9_fu_588_p3 | C_9_reg_943);
assign or_ln126_6_fu_536_p3 = {{trunc_ln126_2_fu_500_p1}, {lshr_ln126_2_fu_504_p4}};
assign or_ln126_7_fu_623_p2 = (and_ln126_5_fu_618_p2 | and_ln126_4_fu_613_p2);
assign or_ln126_8_fu_649_p2 = (E_9_fu_588_p3 | D_fu_643_p3);
assign or_ln126_9_fu_667_p2 = (and_ln126_7_fu_661_p2 | and_ln126_6_fu_655_p2);
assign or_ln126_fu_373_p2 = (E_6_fu_102 | E_5_fu_94);
assign or_ln126_s_fu_629_p3 = {{trunc_ln126_4_fu_594_p1}, {lshr_ln126_4_fu_598_p4}};
assign select_ln126_1_fu_423_p3 = ((icmp_ln126_fu_359_p2[0:0] == 1'b1) ? W_5_q0 : W_1_q0);
assign select_ln126_2_fu_437_p3 = ((icmp_ln126_fu_359_p2[0:0] == 1'b1) ? W_6_q0 : W_2_q0);
assign select_ln126_3_fu_451_p3 = ((icmp_ln126_fu_359_p2[0:0] == 1'b1) ? W_7_q0 : W_3_q0);
assign select_ln126_fu_365_p3 = ((icmp_ln126_fu_359_p2[0:0] == 1'b1) ? W_4_q0 : W_q0);
assign temp_4_fu_489_p2 = (add_ln126_reg_908 + add_ln126_2_fu_484_p2);
assign temp_5_fu_583_p2 = (add_ln126_4_reg_950 + add_ln126_6_fu_578_p2);
assign trunc_ln124_fu_356_p1 = i_reg_847[2:0];
assign trunc_ln126_1_fu_409_p1 = B_fu_98[1:0];
assign trunc_ln126_2_fu_500_p1 = temp_4_fu_489_p2[26:0];
assign trunc_ln126_3_fu_550_p1 = B_5_fu_106[1:0];
assign trunc_ln126_4_fu_594_p1 = temp_5_fu_583_p2[26:0];
assign trunc_ln126_5_fu_564_p1 = temp_4_fu_489_p2[1:0];
assign trunc_ln126_6_fu_720_p1 = B_9_fu_715_p2[26:0];
assign trunc_ln126_7_fu_673_p1 = temp_5_fu_583_p2[1:0];
assign trunc_ln126_fu_462_p1 = B_5_fu_106[26:0];
assign zext_ln100_fu_332_p1 = lshr_ln5_fu_322_p4;
endmodule 