module sha_stream_sha_transform_Pipeline_trans_lp5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_33_reload,B_30_reload,C_36_reload,D_33_reload,E_30_reload,W_address0,W_ce0,W_q0,W_1_address0,W_1_ce0,W_1_q0,W_2_address0,W_2_ce0,W_2_q0,W_3_address0,W_3_ce0,W_3_q0,A_29_out,A_29_out_ap_vld,B_19_out,B_19_out_ap_vld,C_28_out,C_28_out_ap_vld,D_29_out,D_29_out_ap_vld,E_19_out,E_19_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 6'd1;
parameter    ap_ST_fsm_pp0_stage1 = 6'd2;
parameter    ap_ST_fsm_pp0_stage2 = 6'd4;
parameter    ap_ST_fsm_pp0_stage3 = 6'd8;
parameter    ap_ST_fsm_pp0_stage4 = 6'd16;
parameter    ap_ST_fsm_pp0_stage5 = 6'd32;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] A_33_reload;
input  [31:0] B_30_reload;
input  [31:0] C_36_reload;
input  [31:0] D_33_reload;
input  [31:0] E_30_reload;
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
output  [31:0] A_29_out;
output   A_29_out_ap_vld;
output  [31:0] B_19_out;
output   B_19_out_ap_vld;
output  [31:0] C_28_out;
output   C_28_out_ap_vld;
output  [31:0] D_29_out;
output   D_29_out_ap_vld;
output  [31:0] E_19_out;
output   E_19_out_ap_vld;
reg ap_idle;
reg A_29_out_ap_vld;
reg B_19_out_ap_vld;
reg C_28_out_ap_vld;
reg D_29_out_ap_vld;
reg E_19_out_ap_vld;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
wire   [0:0] icmp_ln124_fu_252_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [31:0] E_5_load_1_reg_734;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] E_6_load_1_reg_739;
reg   [31:0] B_5_load_1_reg_746;
wire   [31:0] add_ln126_2_fu_340_p2;
reg   [31:0] add_ln126_2_reg_756;
wire   [1:0] trunc_ln126_1_fu_346_p1;
reg   [1:0] trunc_ln126_1_reg_761;
reg   [29:0] lshr_ln126_1_reg_766;
wire   [1:0] trunc_ln126_3_fu_360_p1;
reg   [1:0] trunc_ln126_3_reg_776;
reg   [29:0] lshr_ln126_3_reg_781;
wire   [31:0] temp_4_fu_394_p2;
reg   [31:0] temp_4_reg_796;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [26:0] trunc_ln126_2_fu_399_p1;
reg   [26:0] trunc_ln126_2_reg_801;
reg   [4:0] lshr_ln126_2_reg_806;
reg   [31:0] W_1_load_reg_811;
wire   [31:0] add_ln126_8_fu_413_p2;
reg   [31:0] add_ln126_8_reg_816;
wire   [1:0] trunc_ln126_5_fu_419_p1;
reg   [1:0] trunc_ln126_5_reg_821;
reg   [29:0] lshr_ln126_5_reg_826;
reg   [31:0] W_3_load_reg_831;
wire   [31:0] C_7_fu_433_p3;
reg   [31:0] C_7_reg_836;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] temp_5_fu_482_p2;
reg   [31:0] temp_5_reg_843;
wire   [26:0] trunc_ln126_4_fu_488_p1;
reg   [26:0] trunc_ln126_4_reg_848;
reg   [4:0] lshr_ln126_4_reg_853;
wire   [1:0] trunc_ln126_7_fu_502_p1;
reg   [1:0] trunc_ln126_7_reg_858;
reg   [29:0] lshr_ln126_7_reg_863;
wire   [31:0] B_9_fu_559_p2;
reg   [31:0] B_9_reg_868;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [26:0] trunc_ln126_6_fu_571_p1;
reg   [26:0] trunc_ln126_6_reg_873;
reg   [4:0] lshr_ln126_6_reg_878;
wire   [31:0] or_ln126_9_fu_602_p2;
reg   [31:0] or_ln126_9_reg_883;
wire   [31:0] add_ln126_14_fu_640_p2;
reg   [31:0] add_ln126_14_reg_888;
wire    ap_block_pp0_stage5_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln100_fu_280_p1;
wire    ap_block_pp0_stage1;
reg   [31:0] E_fu_78;
wire   [31:0] E_9_fu_516_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage0_11001;
wire    ap_block_pp0_stage2;
reg   [31:0] E_5_fu_82;
wire   [31:0] D_fu_565_p3;
reg   [31:0] B_fu_86;
reg   [31:0] E_6_fu_90;
wire   [31:0] C_6_fu_608_p3;
reg   [31:0] B_5_fu_94;
wire   [31:0] A_fu_654_p2;
reg   [5:0] i_fu_98;
wire   [5:0] add_ln124_fu_374_p2;
wire    ap_block_pp0_stage1_01001;
reg    W_ce0_local;
reg    W_1_ce0_local;
reg    W_2_ce0_local;
reg    W_3_ce0_local;
wire    ap_block_pp0_stage0;
wire   [3:0] lshr_ln100_2_fu_270_p4;
wire   [31:0] or_ln126_fu_302_p2;
wire   [31:0] and_ln126_fu_308_p2;
wire   [31:0] and_ln126_1_fu_314_p2;
wire   [26:0] trunc_ln126_fu_288_p1;
wire   [4:0] lshr_ln5_fu_292_p4;
wire   [31:0] or_ln126_2_fu_326_p3;
wire   [31:0] or_ln126_1_fu_320_p2;
wire   [31:0] add_ln126_1_fu_334_p2;
wire   [31:0] add_ln126_fu_388_p2;
wire    ap_block_pp0_stage3;
wire   [31:0] or_ln126_3_fu_439_p2;
wire   [31:0] and_ln126_2_fu_444_p2;
wire   [31:0] and_ln126_3_fu_449_p2;
wire   [31:0] add_ln126_4_fu_466_p2;
wire   [31:0] or_ln126_4_fu_454_p2;
wire   [31:0] or_ln126_6_fu_460_p3;
wire   [31:0] add_ln126_5_fu_477_p2;
wire   [31:0] add_ln126_6_fu_471_p2;
wire    ap_block_pp0_stage4;
wire   [31:0] or_ln126_5_fu_522_p2;
wire   [31:0] and_ln126_4_fu_527_p2;
wire   [31:0] and_ln126_5_fu_532_p2;
wire   [31:0] or_ln126_7_fu_537_p2;
wire   [31:0] or_ln126_s_fu_543_p3;
wire   [31:0] add_ln126_9_fu_554_p2;
wire   [31:0] add_ln126_10_fu_549_p2;
wire   [31:0] or_ln126_8_fu_585_p2;
wire   [31:0] and_ln126_6_fu_591_p2;
wire   [31:0] and_ln126_7_fu_596_p2;
wire    ap_block_pp0_stage5;
wire   [31:0] or_ln126_10_fu_629_p3;
wire   [31:0] add_ln126_13_fu_635_p2;
wire   [31:0] add_ln126_12_fu_650_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [5:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_fu_78 = 32'd0;
#0 E_5_fu_82 = 32'd0;
#0 B_fu_86 = 32'd0;
#0 E_6_fu_90 = 32'd0;
#0 B_5_fu_94 = 32'd0;
#0 i_fu_98 = 6'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            B_5_fu_94 <= A_33_reload;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            B_5_fu_94 <= A_fu_654_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_fu_86 <= B_30_reload;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        B_fu_86 <= B_9_reg_868;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_5_fu_82 <= D_33_reload;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        E_5_fu_82 <= D_fu_565_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_6_fu_90 <= C_36_reload;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        E_6_fu_90 <= C_6_fu_608_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_fu_78 <= E_30_reload;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        E_fu_78 <= E_9_fu_516_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_98 <= 6'd40;
    end else if (((icmp_ln124_fu_252_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_98 <= add_ln124_fu_374_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_5_load_1_reg_746 <= B_5_fu_94;
        E_5_load_1_reg_734 <= E_5_fu_82;
        E_6_load_1_reg_739 <= E_6_fu_90;
        add_ln126_2_reg_756 <= add_ln126_2_fu_340_p2;
        lshr_ln126_1_reg_766 <= {{B_fu_86[31:2]}};
        lshr_ln126_3_reg_781 <= {{B_5_fu_94[31:2]}};
        trunc_ln126_1_reg_761 <= trunc_ln126_1_fu_346_p1;
        trunc_ln126_3_reg_776 <= trunc_ln126_3_fu_360_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        B_9_reg_868 <= B_9_fu_559_p2;
        lshr_ln126_6_reg_878 <= {{B_9_fu_559_p2[31:27]}};
        or_ln126_9_reg_883 <= or_ln126_9_fu_602_p2;
        trunc_ln126_6_reg_873 <= trunc_ln126_6_fu_571_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        C_7_reg_836 <= C_7_fu_433_p3;
        lshr_ln126_4_reg_853 <= {{temp_5_fu_482_p2[31:27]}};
        lshr_ln126_7_reg_863 <= {{temp_5_fu_482_p2[31:2]}};
        temp_5_reg_843 <= temp_5_fu_482_p2;
        trunc_ln126_4_reg_848 <= trunc_ln126_4_fu_488_p1;
        trunc_ln126_7_reg_858 <= trunc_ln126_7_fu_502_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        W_1_load_reg_811 <= W_1_q0;
        W_3_load_reg_831 <= W_3_q0;
        add_ln126_8_reg_816 <= add_ln126_8_fu_413_p2;
        lshr_ln126_2_reg_806 <= {{temp_4_fu_394_p2[31:27]}};
        lshr_ln126_5_reg_826 <= {{temp_4_fu_394_p2[31:2]}};
        temp_4_reg_796 <= temp_4_fu_394_p2;
        trunc_ln126_2_reg_801 <= trunc_ln126_2_fu_399_p1;
        trunc_ln126_5_reg_821 <= trunc_ln126_5_fu_419_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln126_14_reg_888 <= add_ln126_14_fu_640_p2;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_fu_252_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_29_out_ap_vld = 1'b1;
    end else begin
        A_29_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_fu_252_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_19_out_ap_vld = 1'b1;
    end else begin
        B_19_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_fu_252_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        C_28_out_ap_vld = 1'b1;
    end else begin
        C_28_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_fu_252_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        D_29_out_ap_vld = 1'b1;
    end else begin
        D_29_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_fu_252_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_19_out_ap_vld = 1'b1;
    end else begin
        E_19_out_ap_vld = 1'b0;
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
    if (((icmp_ln124_fu_252_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_29_out = B_5_fu_94;
assign A_fu_654_p2 = (add_ln126_14_reg_888 + add_ln126_12_fu_650_p2);
assign B_19_out = B_fu_86;
assign B_9_fu_559_p2 = (add_ln126_9_fu_554_p2 + add_ln126_10_fu_549_p2);
assign C_28_out = E_6_fu_90;
assign C_6_fu_608_p3 = {{trunc_ln126_7_reg_858}, {lshr_ln126_7_reg_863}};
assign C_7_fu_433_p3 = {{trunc_ln126_1_reg_761}, {lshr_ln126_1_reg_766}};
assign D_29_out = E_5_fu_82;
assign D_fu_565_p3 = {{trunc_ln126_5_reg_821}, {lshr_ln126_5_reg_826}};
assign E_19_out = E_fu_78;
assign E_9_fu_516_p3 = {{trunc_ln126_3_reg_776}, {lshr_ln126_3_reg_781}};
assign W_1_address0 = zext_ln100_fu_280_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_2_address0 = zext_ln100_fu_280_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_3_address0 = zext_ln100_fu_280_p1;
assign W_3_ce0 = W_3_ce0_local;
assign W_address0 = zext_ln100_fu_280_p1;
assign W_ce0 = W_ce0_local;
assign add_ln124_fu_374_p2 = (i_fu_98 + 6'd4);
assign add_ln126_10_fu_549_p2 = (add_ln126_8_reg_816 + or_ln126_7_fu_537_p2);
assign add_ln126_12_fu_650_p2 = (W_3_load_reg_831 + C_7_reg_836);
assign add_ln126_13_fu_635_p2 = ($signed(32'd2400959708) + $signed(or_ln126_9_reg_883));
assign add_ln126_14_fu_640_p2 = (or_ln126_10_fu_629_p3 + add_ln126_13_fu_635_p2);
assign add_ln126_1_fu_334_p2 = ($signed(or_ln126_2_fu_326_p3) + $signed(32'd2400959708));
assign add_ln126_2_fu_340_p2 = (or_ln126_1_fu_320_p2 + add_ln126_1_fu_334_p2);
assign add_ln126_4_fu_466_p2 = ($signed(W_1_load_reg_811) + $signed(32'd2400959708));
assign add_ln126_5_fu_477_p2 = (or_ln126_6_fu_460_p3 + E_5_load_1_reg_734);
assign add_ln126_6_fu_471_p2 = (add_ln126_4_fu_466_p2 + or_ln126_4_fu_454_p2);
assign add_ln126_8_fu_413_p2 = ($signed(W_2_q0) + $signed(32'd2400959708));
assign add_ln126_9_fu_554_p2 = (or_ln126_s_fu_543_p3 + E_6_load_1_reg_739);
assign add_ln126_fu_388_p2 = (W_q0 + E_fu_78);
assign and_ln126_1_fu_314_p2 = (E_6_fu_90 & E_5_fu_82);
assign and_ln126_2_fu_444_p2 = (or_ln126_3_fu_439_p2 & B_5_load_1_reg_746);
assign and_ln126_3_fu_449_p2 = (E_6_load_1_reg_739 & C_7_fu_433_p3);
assign and_ln126_4_fu_527_p2 = (temp_4_reg_796 & or_ln126_5_fu_522_p2);
assign and_ln126_5_fu_532_p2 = (E_9_fu_516_p3 & C_7_reg_836);
assign and_ln126_6_fu_591_p2 = (temp_5_reg_843 & or_ln126_8_fu_585_p2);
assign and_ln126_7_fu_596_p2 = (E_9_fu_516_p3 & D_fu_565_p3);
assign and_ln126_fu_308_p2 = (or_ln126_fu_302_p2 & B_fu_86);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign icmp_ln124_fu_252_p2 = ((i_fu_98 == 6'd60) ? 1'b1 : 1'b0);
assign lshr_ln100_2_fu_270_p4 = {{i_fu_98[5:2]}};
assign lshr_ln5_fu_292_p4 = {{B_5_fu_94[31:27]}};
assign or_ln126_10_fu_629_p3 = {{trunc_ln126_6_reg_873}, {lshr_ln126_6_reg_878}};
assign or_ln126_1_fu_320_p2 = (and_ln126_fu_308_p2 | and_ln126_1_fu_314_p2);
assign or_ln126_2_fu_326_p3 = {{trunc_ln126_fu_288_p1}, {lshr_ln5_fu_292_p4}};
assign or_ln126_3_fu_439_p2 = (E_6_load_1_reg_739 | C_7_fu_433_p3);
assign or_ln126_4_fu_454_p2 = (and_ln126_3_fu_449_p2 | and_ln126_2_fu_444_p2);
assign or_ln126_5_fu_522_p2 = (E_9_fu_516_p3 | C_7_reg_836);
assign or_ln126_6_fu_460_p3 = {{trunc_ln126_2_reg_801}, {lshr_ln126_2_reg_806}};
assign or_ln126_7_fu_537_p2 = (and_ln126_5_fu_532_p2 | and_ln126_4_fu_527_p2);
assign or_ln126_8_fu_585_p2 = (E_9_fu_516_p3 | D_fu_565_p3);
assign or_ln126_9_fu_602_p2 = (and_ln126_7_fu_596_p2 | and_ln126_6_fu_591_p2);
assign or_ln126_fu_302_p2 = (E_6_fu_90 | E_5_fu_82);
assign or_ln126_s_fu_543_p3 = {{trunc_ln126_4_reg_848}, {lshr_ln126_4_reg_853}};
assign temp_4_fu_394_p2 = (add_ln126_2_reg_756 + add_ln126_fu_388_p2);
assign temp_5_fu_482_p2 = (add_ln126_5_fu_477_p2 + add_ln126_6_fu_471_p2);
assign trunc_ln126_1_fu_346_p1 = B_fu_86[1:0];
assign trunc_ln126_2_fu_399_p1 = temp_4_fu_394_p2[26:0];
assign trunc_ln126_3_fu_360_p1 = B_5_fu_94[1:0];
assign trunc_ln126_4_fu_488_p1 = temp_5_fu_482_p2[26:0];
assign trunc_ln126_5_fu_419_p1 = temp_4_fu_394_p2[1:0];
assign trunc_ln126_6_fu_571_p1 = B_9_fu_559_p2[26:0];
assign trunc_ln126_7_fu_502_p1 = temp_5_fu_482_p2[1:0];
assign trunc_ln126_fu_288_p1 = B_5_fu_94[26:0];
assign zext_ln100_fu_280_p1 = lshr_ln100_2_fu_270_p4;
endmodule 