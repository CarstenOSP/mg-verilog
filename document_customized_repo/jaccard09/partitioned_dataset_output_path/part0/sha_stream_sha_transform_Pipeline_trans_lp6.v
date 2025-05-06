
module sha_stream_sha_transform_Pipeline_trans_lp6 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_45_reload,B_36_reload,C_44_reload,D_45_reload,E_28_reload,W_address0,W_ce0,W_q0,W_address1,W_ce1,W_q1,W_1_address0,W_1_ce0,W_1_q0,W_1_address1,W_1_ce1,W_1_q1,A_47_out,A_47_out_ap_vld,B_35_out,B_35_out_ap_vld,C_46_out,C_46_out_ap_vld,D_47_out,D_47_out_ap_vld,E_32_out,E_32_out_ap_vld);  
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
input  [31:0] A_45_reload;
input  [31:0] B_36_reload;
input  [31:0] C_44_reload;
input  [31:0] D_45_reload;
input  [31:0] E_28_reload;
output  [5:0] W_address0;
output   W_ce0;
input  [31:0] W_q0;
output  [5:0] W_address1;
output   W_ce1;
input  [31:0] W_q1;
output  [5:0] W_1_address0;
output   W_1_ce0;
input  [31:0] W_1_q0;
output  [5:0] W_1_address1;
output   W_1_ce1;
input  [31:0] W_1_q1;
output  [31:0] A_47_out;
output   A_47_out_ap_vld;
output  [31:0] B_35_out;
output   B_35_out_ap_vld;
output  [31:0] C_46_out;
output   C_46_out_ap_vld;
output  [31:0] D_47_out;
output   D_47_out_ap_vld;
output  [31:0] E_32_out;
output   E_32_out_ap_vld;
reg ap_idle;
reg A_47_out_ap_vld;
reg B_35_out_ap_vld;
reg C_46_out_ap_vld;
reg D_47_out_ap_vld;
reg E_32_out_ap_vld;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln128_fu_252_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln128_reg_706;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] B_1_load_reg_730;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] W_load_reg_735;
wire   [31:0] add_ln130_2_fu_343_p2;
reg   [31:0] add_ln130_2_reg_740;
reg   [31:0] W_1_load_reg_745;
wire   [1:0] trunc_ln130_3_fu_349_p1;
reg   [1:0] trunc_ln130_3_reg_750;
reg   [29:0] lshr_ln130_3_reg_755;
reg   [31:0] W_load_1_reg_760;
reg   [31:0] W_1_load_1_reg_765;
reg   [31:0] E_1_load_reg_770;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] E_2_load_reg_775;
wire   [31:0] temp_fu_389_p2;
reg   [31:0] temp_reg_781;
wire   [1:0] trunc_ln130_1_fu_394_p1;
reg   [1:0] trunc_ln130_1_reg_786;
reg   [29:0] lshr_ln130_1_reg_791;
wire   [26:0] trunc_ln130_2_fu_408_p1;
reg   [26:0] trunc_ln130_2_reg_796;
reg   [4:0] lshr_ln130_2_reg_801;
wire   [1:0] trunc_ln130_5_fu_422_p1;
reg   [1:0] trunc_ln130_5_reg_806;
reg   [29:0] lshr_ln130_5_reg_811;
wire   [31:0] add_ln130_6_fu_448_p2;
reg   [31:0] add_ln130_6_reg_816;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] C_fu_453_p3;
reg   [31:0] C_reg_821;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [31:0] temp_1_fu_474_p2;
reg   [31:0] temp_1_reg_827;
wire   [26:0] trunc_ln130_4_fu_479_p1;
reg   [26:0] trunc_ln130_4_reg_832;
reg   [4:0] lshr_ln130_4_reg_837;
wire   [31:0] xor_ln130_5_fu_531_p2;
reg   [31:0] xor_ln130_5_reg_842;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [31:0] add_ln130_10_fu_548_p2;
reg   [31:0] add_ln130_10_reg_847;
wire   [31:0] xor_ln130_7_fu_564_p2;
reg   [31:0] xor_ln130_7_reg_852;
wire   [26:0] trunc_ln130_6_fu_589_p1;
reg   [26:0] trunc_ln130_6_reg_857;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [4:0] lshr_ln130_6_reg_862;
wire   [31:0] add_ln130_14_fu_620_p2;
reg   [31:0] add_ln130_14_reg_867;
wire    ap_block_pp0_stage7_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln100_fu_268_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln100_1_fu_292_p1;
reg   [31:0] E_fu_80;
wire   [31:0] C_3_fu_520_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [31:0] E_1_fu_84;
wire   [31:0] C_4_fu_553_p3;
wire    ap_block_pp0_stage2;
reg   [31:0] B_fu_88;
wire   [31:0] temp_2_fu_584_p2;
reg   [31:0] B_1_fu_92;
wire   [31:0] temp_3_fu_629_p2;
reg   [31:0] E_2_fu_96;
wire   [31:0] C_2_fu_507_p3;
reg   [6:0] i_fu_100;
wire   [6:0] add_ln128_fu_298_p2;
reg   [6:0] ap_sig_allocacmp_i_1;
wire    ap_block_pp0_stage0_01001;
reg    W_ce1_local;
reg    W_ce0_local;
reg    W_1_ce1_local;
reg    W_1_ce0_local;
wire   [5:0] lshr_ln100_3_fu_258_p4;
wire   [4:0] tmp_s_fu_274_p4;
wire   [5:0] or_ln100_9_fu_284_p3;
wire   [26:0] trunc_ln130_fu_315_p1;
wire   [4:0] lshr_ln6_fu_319_p4;
wire   [31:0] or_ln4_fu_329_p3;
wire   [31:0] add_ln130_1_fu_337_p2;
wire   [31:0] xor_ln130_fu_372_p2;
wire   [31:0] xor_ln130_1_fu_378_p2;
wire   [31:0] add_ln130_fu_384_p2;
wire    ap_block_pp0_stage3;
wire   [31:0] or_ln130_2_fu_436_p3;
wire   [31:0] add_ln130_5_fu_442_p2;
wire    ap_block_pp0_stage4;
wire   [31:0] xor_ln130_2_fu_459_p2;
wire   [31:0] xor_ln130_3_fu_464_p2;
wire   [31:0] add_ln130_4_fu_469_p2;
wire   [1:0] trunc_ln130_7_fu_493_p1;
wire   [29:0] lshr_ln130_7_fu_497_p4;
wire    ap_block_pp0_stage5;
wire   [31:0] xor_ln130_4_fu_526_p2;
wire   [31:0] or_ln130_4_fu_536_p3;
wire   [31:0] add_ln130_9_fu_542_p2;
wire   [31:0] xor_ln130_6_fu_559_p2;
wire    ap_block_pp0_stage6;
wire   [31:0] add_ln130_8_fu_580_p2;
wire    ap_block_pp0_stage7;
wire   [31:0] or_ln130_6_fu_608_p3;
wire   [31:0] add_ln130_13_fu_614_p2;
wire   [31:0] add_ln130_12_fu_625_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [7:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
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
#0 E_fu_80 = 32'd0;
#0 E_1_fu_84 = 32'd0;
#0 B_fu_88 = 32'd0;
#0 B_1_fu_92 = 32'd0;
#0 E_2_fu_96 = 32'd0;
#0 i_fu_100 = 7'd0;
#0 ap_done_reg = 1'b0;
end
sha_stream_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            B_1_fu_92 <= A_45_reload;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            B_1_fu_92 <= temp_3_fu_629_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_fu_88 <= B_36_reload;
    end else if (((icmp_ln128_reg_706 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        B_fu_88 <= temp_2_fu_584_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_1_fu_84 <= D_45_reload;
    end else if (((icmp_ln128_reg_706 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        E_1_fu_84 <= C_4_fu_553_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_2_fu_96 <= C_44_reload;
    end else if (((icmp_ln128_reg_706 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        E_2_fu_96 <= C_2_fu_507_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_fu_80 <= E_28_reload;
    end else if (((icmp_ln128_reg_706 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        E_fu_80 <= C_3_fu_520_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln128_fu_252_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_100 <= add_ln128_fu_298_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_100 <= 7'd60;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_1_load_reg_730 <= B_1_fu_92;
        add_ln130_2_reg_740 <= add_ln130_2_fu_343_p2;
        lshr_ln130_3_reg_755 <= {{B_1_fu_92[31:2]}};
        trunc_ln130_3_reg_750 <= trunc_ln130_3_fu_349_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        C_reg_821 <= C_fu_453_p3;
        lshr_ln130_4_reg_837 <= {{temp_1_fu_474_p2[31:27]}};
        temp_1_reg_827 <= temp_1_fu_474_p2;
        trunc_ln130_4_reg_832 <= trunc_ln130_4_fu_479_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        E_1_load_reg_770 <= E_1_fu_84;
        E_2_load_reg_775 <= E_2_fu_96;
        lshr_ln130_1_reg_791 <= {{B_fu_88[31:2]}};
        lshr_ln130_2_reg_801 <= {{temp_fu_389_p2[31:27]}};
        lshr_ln130_5_reg_811 <= {{temp_fu_389_p2[31:2]}};
        temp_reg_781 <= temp_fu_389_p2;
        trunc_ln130_1_reg_786 <= trunc_ln130_1_fu_394_p1;
        trunc_ln130_2_reg_796 <= trunc_ln130_2_fu_408_p1;
        trunc_ln130_5_reg_806 <= trunc_ln130_5_fu_422_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_1_load_1_reg_765 <= W_1_q0;
        W_1_load_reg_745 <= W_1_q1;
        W_load_1_reg_760 <= W_q0;
        W_load_reg_735 <= W_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln130_10_reg_847 <= add_ln130_10_fu_548_p2;
        xor_ln130_5_reg_842 <= xor_ln130_5_fu_531_p2;
        xor_ln130_7_reg_852 <= xor_ln130_7_fu_564_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln130_14_reg_867 <= add_ln130_14_fu_620_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln130_6_reg_816 <= add_ln130_6_fu_448_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln128_reg_706 <= icmp_ln128_fu_252_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        lshr_ln130_6_reg_862 <= {{temp_2_fu_584_p2[31:27]}};
        trunc_ln130_6_reg_857 <= trunc_ln130_6_fu_589_p1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_fu_252_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        A_47_out_ap_vld = 1'b1;
    end else begin
        A_47_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_fu_252_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_35_out_ap_vld = 1'b1;
    end else begin
        B_35_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_fu_252_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        C_46_out_ap_vld = 1'b1;
    end else begin
        C_46_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_fu_252_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        D_47_out_ap_vld = 1'b1;
    end else begin
        D_47_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_fu_252_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_32_out_ap_vld = 1'b1;
    end else begin
        E_32_out_ap_vld = 1'b0;
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
        W_1_ce1_local = 1'b1;
    end else begin
        W_1_ce1_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_ce1_local = 1'b1;
    end else begin
        W_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln128_fu_252_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_1 = 7'd60;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_100;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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
assign A_47_out = B_1_fu_92;
assign B_35_out = B_fu_88;
assign C_2_fu_507_p3 = {{trunc_ln130_7_fu_493_p1}, {lshr_ln130_7_fu_497_p4}};
assign C_3_fu_520_p3 = {{trunc_ln130_3_reg_750}, {lshr_ln130_3_reg_755}};
assign C_46_out = E_2_fu_96;
assign C_4_fu_553_p3 = {{trunc_ln130_5_reg_806}, {lshr_ln130_5_reg_811}};
assign C_fu_453_p3 = {{trunc_ln130_1_reg_786}, {lshr_ln130_1_reg_791}};
assign D_47_out = E_1_fu_84;
assign E_32_out = E_fu_80;
assign W_1_address0 = zext_ln100_1_fu_292_p1;
assign W_1_address1 = zext_ln100_fu_268_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_1_ce1 = W_1_ce1_local;
assign W_address0 = zext_ln100_1_fu_292_p1;
assign W_address1 = zext_ln100_fu_268_p1;
assign W_ce0 = W_ce0_local;
assign W_ce1 = W_ce1_local;
assign add_ln128_fu_298_p2 = (ap_sig_allocacmp_i_1 + 7'd4);
assign add_ln130_10_fu_548_p2 = (add_ln130_9_fu_542_p2 + E_2_load_reg_775);
assign add_ln130_12_fu_625_p2 = (W_1_load_1_reg_765 + C_reg_821);
assign add_ln130_13_fu_614_p2 = ($signed(or_ln130_6_fu_608_p3) + $signed(32'd3395469782));
assign add_ln130_14_fu_620_p2 = (add_ln130_13_fu_614_p2 + xor_ln130_7_reg_852);
assign add_ln130_1_fu_337_p2 = ($signed(or_ln4_fu_329_p3) + $signed(32'd3395469782));
assign add_ln130_2_fu_343_p2 = (add_ln130_1_fu_337_p2 + E_fu_80);
assign add_ln130_4_fu_469_p2 = (W_1_load_reg_745 + xor_ln130_3_fu_464_p2);
assign add_ln130_5_fu_442_p2 = ($signed(or_ln130_2_fu_436_p3) + $signed(32'd3395469782));
assign add_ln130_6_fu_448_p2 = (add_ln130_5_fu_442_p2 + E_1_load_reg_770);
assign add_ln130_8_fu_580_p2 = (W_load_1_reg_760 + xor_ln130_5_reg_842);
assign add_ln130_9_fu_542_p2 = ($signed(or_ln130_4_fu_536_p3) + $signed(32'd3395469782));
assign add_ln130_fu_384_p2 = (W_load_reg_735 + xor_ln130_1_fu_378_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln128_fu_252_p2 = ((ap_sig_allocacmp_i_1 < 7'd80) ? 1'b1 : 1'b0);
assign lshr_ln100_3_fu_258_p4 = {{ap_sig_allocacmp_i_1[6:1]}};
assign lshr_ln130_7_fu_497_p4 = {{temp_1_fu_474_p2[31:2]}};
assign lshr_ln6_fu_319_p4 = {{B_1_fu_92[31:27]}};
assign or_ln100_9_fu_284_p3 = {{tmp_s_fu_274_p4}, {1'd1}};
assign or_ln130_2_fu_436_p3 = {{trunc_ln130_2_reg_796}, {lshr_ln130_2_reg_801}};
assign or_ln130_4_fu_536_p3 = {{trunc_ln130_4_reg_832}, {lshr_ln130_4_reg_837}};
assign or_ln130_6_fu_608_p3 = {{trunc_ln130_6_reg_857}, {lshr_ln130_6_reg_862}};
assign or_ln4_fu_329_p3 = {{trunc_ln130_fu_315_p1}, {lshr_ln6_fu_319_p4}};
assign temp_1_fu_474_p2 = (add_ln130_6_reg_816 + add_ln130_4_fu_469_p2);
assign temp_2_fu_584_p2 = (add_ln130_10_reg_847 + add_ln130_8_fu_580_p2);
assign temp_3_fu_629_p2 = (add_ln130_14_reg_867 + add_ln130_12_fu_625_p2);
assign temp_fu_389_p2 = (add_ln130_2_reg_740 + add_ln130_fu_384_p2);
assign tmp_s_fu_274_p4 = {{ap_sig_allocacmp_i_1[6:2]}};
assign trunc_ln130_1_fu_394_p1 = B_fu_88[1:0];
assign trunc_ln130_2_fu_408_p1 = temp_fu_389_p2[26:0];
assign trunc_ln130_3_fu_349_p1 = B_1_fu_92[1:0];
assign trunc_ln130_4_fu_479_p1 = temp_1_fu_474_p2[26:0];
assign trunc_ln130_5_fu_422_p1 = temp_fu_389_p2[1:0];
assign trunc_ln130_6_fu_589_p1 = temp_2_fu_584_p2[26:0];
assign trunc_ln130_7_fu_493_p1 = temp_1_fu_474_p2[1:0];
assign trunc_ln130_fu_315_p1 = B_1_fu_92[26:0];
assign xor_ln130_1_fu_378_p2 = (xor_ln130_fu_372_p2 ^ E_2_fu_96);
assign xor_ln130_2_fu_459_p2 = (C_fu_453_p3 ^ B_1_load_reg_730);
assign xor_ln130_3_fu_464_p2 = (xor_ln130_2_fu_459_p2 ^ E_2_load_reg_775);
assign xor_ln130_4_fu_526_p2 = (temp_reg_781 ^ C_3_fu_520_p3);
assign xor_ln130_5_fu_531_p2 = (xor_ln130_4_fu_526_p2 ^ C_reg_821);
assign xor_ln130_6_fu_559_p2 = (temp_1_reg_827 ^ C_3_fu_520_p3);
assign xor_ln130_7_fu_564_p2 = (xor_ln130_6_fu_559_p2 ^ C_4_fu_553_p3);
assign xor_ln130_fu_372_p2 = (E_1_fu_84 ^ B_fu_88);
assign zext_ln100_1_fu_292_p1 = or_ln100_9_fu_284_p3;
assign zext_ln100_fu_268_p1 = lshr_ln100_3_fu_258_p4;
endmodule 
