module sha_stream_sha_transform_Pipeline_trans_lp5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,B_16_reload,B_4_reload,D_16_reload,E_16_reload,E_4_reload,W_address0,W_ce0,W_q0,W_address1,W_ce1,W_q1,W_1_address0,W_1_ce0,W_1_q0,W_1_address1,W_1_ce1,W_1_q1,A_17_out,A_17_out_ap_vld,B_5_out,B_5_out_ap_vld,C_15_out,C_15_out_ap_vld,D_17_out,D_17_out_ap_vld,E_5_out,E_5_out_ap_vld); 
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
input  [31:0] B_16_reload;
input  [31:0] B_4_reload;
input  [31:0] D_16_reload;
input  [31:0] E_16_reload;
input  [31:0] E_4_reload;
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
output  [31:0] A_17_out;
output   A_17_out_ap_vld;
output  [31:0] B_5_out;
output   B_5_out_ap_vld;
output  [31:0] C_15_out;
output   C_15_out_ap_vld;
output  [31:0] D_17_out;
output   D_17_out_ap_vld;
output  [31:0] E_5_out;
output   E_5_out_ap_vld;
reg ap_idle;
reg A_17_out_ap_vld;
reg B_5_out_ap_vld;
reg C_15_out_ap_vld;
reg D_17_out_ap_vld;
reg E_5_out_ap_vld;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln124_fu_252_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] icmp_ln124_reg_756;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] E_5_load_reg_780;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] E_6_load_1_reg_785;
reg   [31:0] B_5_load_reg_792;
reg   [31:0] W_load_reg_797;
wire   [31:0] add_ln126_2_fu_373_p2;
reg   [31:0] add_ln126_2_reg_802;
wire   [1:0] trunc_ln126_1_fu_379_p1;
reg   [1:0] trunc_ln126_1_reg_807;
reg   [29:0] lshr_ln126_1_reg_812;
wire   [31:0] add_ln126_4_fu_393_p2;
reg   [31:0] add_ln126_4_reg_817;
wire   [1:0] trunc_ln126_3_fu_399_p1;
reg   [1:0] trunc_ln126_3_reg_822;
reg   [29:0] lshr_ln126_3_reg_827;
wire   [31:0] add_ln126_8_fu_413_p2;
reg   [31:0] add_ln126_8_reg_832;
reg   [31:0] W_1_load_2_reg_837;
wire   [31:0] temp_4_fu_427_p2;
reg   [31:0] temp_4_reg_842;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] C_7_fu_432_p3;
reg   [31:0] C_7_reg_847;
wire   [31:0] or_ln126_4_fu_467_p2;
reg   [31:0] or_ln126_4_reg_854;
wire   [31:0] add_ln126_5_fu_481_p2;
reg   [31:0] add_ln126_5_reg_859;
wire   [1:0] trunc_ln126_5_fu_486_p1;
reg   [1:0] trunc_ln126_5_reg_864;
reg   [29:0] lshr_ln126_5_reg_869;
wire   [31:0] temp_5_fu_504_p2;
reg   [31:0] temp_5_reg_874;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] add_ln126_9_fu_531_p2;
reg   [31:0] add_ln126_9_reg_879;
wire   [26:0] trunc_ln126_6_fu_606_p1;
reg   [26:0] trunc_ln126_6_reg_884;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [4:0] lshr_ln126_6_reg_889;
wire   [31:0] or_ln126_9_fu_637_p2;
reg   [31:0] or_ln126_9_reg_894;
wire   [31:0] add_ln126_14_fu_669_p2;
reg   [31:0] add_ln126_14_reg_899;
wire    ap_block_pp0_stage5_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln100_fu_268_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln100_2_fu_292_p1;
reg   [31:0] E_fu_80;
wire   [31:0] E_9_fu_563_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage2;
reg   [31:0] E_5_fu_84;
wire   [31:0] D_fu_600_p3;
wire    ap_block_pp0_stage1;
reg   [31:0] B_fu_88;
wire   [31:0] B_9_fu_595_p2;
reg   [31:0] E_6_fu_92;
wire   [31:0] C_6_fu_550_p3;
reg   [31:0] B_5_fu_96;
wire   [31:0] A_fu_679_p2;
reg   [5:0] i_fu_100;
wire   [5:0] add_ln124_fu_298_p2;
reg   [5:0] ap_sig_allocacmp_i_2;
wire    ap_block_pp0_stage0_01001;
reg    W_ce1_local;
reg    W_ce0_local;
reg    W_1_ce1_local;
reg    W_1_ce0_local;
wire   [4:0] lshr_ln100_2_fu_258_p4;
wire   [3:0] tmp_s_fu_274_p4;
wire   [4:0] or_ln1_fu_284_p3;
wire   [31:0] or_ln126_fu_335_p2;
wire   [31:0] and_ln126_fu_341_p2;
wire   [31:0] and_ln126_1_fu_347_p2;
wire   [26:0] trunc_ln126_fu_321_p1;
wire   [4:0] lshr_ln5_fu_325_p4;
wire   [31:0] or_ln126_2_fu_359_p3;
wire   [31:0] or_ln126_1_fu_353_p2;
wire   [31:0] add_ln126_1_fu_367_p2;
wire   [31:0] add_ln126_fu_422_p2;
wire   [31:0] or_ln126_3_fu_452_p2;
wire   [31:0] and_ln126_2_fu_457_p2;
wire   [31:0] and_ln126_3_fu_462_p2;
wire   [26:0] trunc_ln126_2_fu_438_p1;
wire   [4:0] lshr_ln126_2_fu_442_p4;
wire   [31:0] or_ln126_6_fu_473_p3;
wire    ap_block_pp0_stage3;
wire   [31:0] add_ln126_6_fu_500_p2;
wire   [26:0] trunc_ln126_4_fu_509_p1;
wire   [4:0] lshr_ln126_4_fu_513_p4;
wire   [31:0] or_ln126_s_fu_523_p3;
wire   [1:0] trunc_ln126_7_fu_536_p1;
wire   [29:0] lshr_ln126_7_fu_540_p4;
wire    ap_block_pp0_stage4;
wire   [31:0] or_ln126_5_fu_569_p2;
wire   [31:0] and_ln126_4_fu_574_p2;
wire   [31:0] and_ln126_5_fu_579_p2;
wire   [31:0] or_ln126_7_fu_584_p2;
wire   [31:0] add_ln126_10_fu_590_p2;
wire   [31:0] or_ln126_8_fu_620_p2;
wire   [31:0] and_ln126_6_fu_626_p2;
wire   [31:0] and_ln126_7_fu_631_p2;
wire    ap_block_pp0_stage5;
wire   [31:0] or_ln126_10_fu_658_p3;
wire   [31:0] add_ln126_13_fu_664_p2;
wire   [31:0] add_ln126_12_fu_675_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [5:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
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
#0 E_fu_80 = 32'd0;
#0 E_5_fu_84 = 32'd0;
#0 B_fu_88 = 32'd0;
#0 E_6_fu_92 = 32'd0;
#0 B_5_fu_96 = 32'd0;
#0 i_fu_100 = 6'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            B_5_fu_96 <= B_16_reload;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            B_5_fu_96 <= A_fu_679_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_fu_88 <= B_4_reload;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln124_reg_756 == 1'd0))) begin
        B_fu_88 <= B_9_fu_595_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_5_fu_84 <= E_16_reload;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln124_reg_756 == 1'd0))) begin
        E_5_fu_84 <= D_fu_600_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_6_fu_92 <= D_16_reload;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln124_reg_756 == 1'd0))) begin
        E_6_fu_92 <= C_6_fu_550_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_fu_80 <= E_4_reload;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln124_reg_756 == 1'd0))) begin
        E_fu_80 <= E_9_fu_563_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln124_fu_252_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_100 <= add_ln124_fu_298_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_100 <= 6'd40;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_5_load_reg_792 <= B_5_fu_96;
        E_5_load_reg_780 <= E_5_fu_84;
        E_6_load_1_reg_785 <= E_6_fu_92;
        add_ln126_2_reg_802 <= add_ln126_2_fu_373_p2;
        add_ln126_4_reg_817 <= add_ln126_4_fu_393_p2;
        add_ln126_8_reg_832 <= add_ln126_8_fu_413_p2;
        lshr_ln126_1_reg_812 <= {{B_fu_88[31:2]}};
        lshr_ln126_3_reg_827 <= {{B_5_fu_96[31:2]}};
        trunc_ln126_1_reg_807 <= trunc_ln126_1_fu_379_p1;
        trunc_ln126_3_reg_822 <= trunc_ln126_3_fu_399_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        C_7_reg_847 <= C_7_fu_432_p3;
        add_ln126_5_reg_859 <= add_ln126_5_fu_481_p2;
        lshr_ln126_5_reg_869 <= {{temp_4_fu_427_p2[31:2]}};
        or_ln126_4_reg_854 <= or_ln126_4_fu_467_p2;
        temp_4_reg_842 <= temp_4_fu_427_p2;
        trunc_ln126_5_reg_864 <= trunc_ln126_5_fu_486_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_1_load_2_reg_837 <= W_1_q0;
        W_load_reg_797 <= W_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln126_14_reg_899 <= add_ln126_14_fu_669_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln126_9_reg_879 <= add_ln126_9_fu_531_p2;
        temp_5_reg_874 <= temp_5_fu_504_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln124_reg_756 <= icmp_ln124_fu_252_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        lshr_ln126_6_reg_889 <= {{B_9_fu_595_p2[31:27]}};
        or_ln126_9_reg_894 <= or_ln126_9_fu_637_p2;
        trunc_ln126_6_reg_884 <= trunc_ln126_6_fu_606_p1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_fu_252_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        A_17_out_ap_vld = 1'b1;
    end else begin
        A_17_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_fu_252_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_5_out_ap_vld = 1'b1;
    end else begin
        B_5_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_fu_252_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        C_15_out_ap_vld = 1'b1;
    end else begin
        C_15_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_fu_252_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        D_17_out_ap_vld = 1'b1;
    end else begin
        D_17_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_fu_252_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_5_out_ap_vld = 1'b1;
    end else begin
        E_5_out_ap_vld = 1'b0;
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
    if (((icmp_ln124_fu_252_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_2 = 6'd40;
    end else begin
        ap_sig_allocacmp_i_2 = i_fu_100;
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
assign A_17_out = B_5_fu_96;
assign A_fu_679_p2 = (add_ln126_14_reg_899 + add_ln126_12_fu_675_p2);
assign B_5_out = B_fu_88;
assign B_9_fu_595_p2 = (add_ln126_9_reg_879 + add_ln126_10_fu_590_p2);
assign C_15_out = E_6_fu_92;
assign C_6_fu_550_p3 = {{trunc_ln126_7_fu_536_p1}, {lshr_ln126_7_fu_540_p4}};
assign C_7_fu_432_p3 = {{trunc_ln126_1_reg_807}, {lshr_ln126_1_reg_812}};
assign D_17_out = E_5_fu_84;
assign D_fu_600_p3 = {{trunc_ln126_5_reg_864}, {lshr_ln126_5_reg_869}};
assign E_5_out = E_fu_80;
assign E_9_fu_563_p3 = {{trunc_ln126_3_reg_822}, {lshr_ln126_3_reg_827}};
assign W_1_address0 = zext_ln100_2_fu_292_p1;
assign W_1_address1 = zext_ln100_fu_268_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_1_ce1 = W_1_ce1_local;
assign W_address0 = zext_ln100_2_fu_292_p1;
assign W_address1 = zext_ln100_fu_268_p1;
assign W_ce0 = W_ce0_local;
assign W_ce1 = W_ce1_local;
assign add_ln124_fu_298_p2 = (ap_sig_allocacmp_i_2 + 6'd4);
assign add_ln126_10_fu_590_p2 = (add_ln126_8_reg_832 + or_ln126_7_fu_584_p2);
assign add_ln126_12_fu_675_p2 = (W_1_load_2_reg_837 + C_7_reg_847);
assign add_ln126_13_fu_664_p2 = ($signed(32'd2400959708) + $signed(or_ln126_9_reg_894));
assign add_ln126_14_fu_669_p2 = (or_ln126_10_fu_658_p3 + add_ln126_13_fu_664_p2);
assign add_ln126_1_fu_367_p2 = ($signed(or_ln126_2_fu_359_p3) + $signed(32'd2400959708));
assign add_ln126_2_fu_373_p2 = (or_ln126_1_fu_353_p2 + add_ln126_1_fu_367_p2);
assign add_ln126_4_fu_393_p2 = ($signed(W_1_q1) + $signed(32'd2400959708));
assign add_ln126_5_fu_481_p2 = (or_ln126_6_fu_473_p3 + E_5_load_reg_780);
assign add_ln126_6_fu_500_p2 = (add_ln126_4_reg_817 + or_ln126_4_reg_854);
assign add_ln126_8_fu_413_p2 = ($signed(W_q0) + $signed(32'd2400959708));
assign add_ln126_9_fu_531_p2 = (or_ln126_s_fu_523_p3 + E_6_load_1_reg_785);
assign add_ln126_fu_422_p2 = (W_load_reg_797 + E_fu_80);
assign and_ln126_1_fu_347_p2 = (E_6_fu_92 & E_5_fu_84);
assign and_ln126_2_fu_457_p2 = (or_ln126_3_fu_452_p2 & B_5_load_reg_792);
assign and_ln126_3_fu_462_p2 = (E_6_load_1_reg_785 & C_7_fu_432_p3);
assign and_ln126_4_fu_574_p2 = (temp_4_reg_842 & or_ln126_5_fu_569_p2);
assign and_ln126_5_fu_579_p2 = (E_9_fu_563_p3 & C_7_reg_847);
assign and_ln126_6_fu_626_p2 = (temp_5_reg_874 & or_ln126_8_fu_620_p2);
assign and_ln126_7_fu_631_p2 = (E_9_fu_563_p3 & D_fu_600_p3);
assign and_ln126_fu_341_p2 = (or_ln126_fu_335_p2 & B_fu_88);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln124_fu_252_p2 = ((ap_sig_allocacmp_i_2 == 6'd60) ? 1'b1 : 1'b0);
assign lshr_ln100_2_fu_258_p4 = {{ap_sig_allocacmp_i_2[5:1]}};
assign lshr_ln126_2_fu_442_p4 = {{temp_4_fu_427_p2[31:27]}};
assign lshr_ln126_4_fu_513_p4 = {{temp_5_fu_504_p2[31:27]}};
assign lshr_ln126_7_fu_540_p4 = {{temp_5_fu_504_p2[31:2]}};
assign lshr_ln5_fu_325_p4 = {{B_5_fu_96[31:27]}};
assign or_ln126_10_fu_658_p3 = {{trunc_ln126_6_reg_884}, {lshr_ln126_6_reg_889}};
assign or_ln126_1_fu_353_p2 = (and_ln126_fu_341_p2 | and_ln126_1_fu_347_p2);
assign or_ln126_2_fu_359_p3 = {{trunc_ln126_fu_321_p1}, {lshr_ln5_fu_325_p4}};
assign or_ln126_3_fu_452_p2 = (E_6_load_1_reg_785 | C_7_fu_432_p3);
assign or_ln126_4_fu_467_p2 = (and_ln126_3_fu_462_p2 | and_ln126_2_fu_457_p2);
assign or_ln126_5_fu_569_p2 = (E_9_fu_563_p3 | C_7_reg_847);
assign or_ln126_6_fu_473_p3 = {{trunc_ln126_2_fu_438_p1}, {lshr_ln126_2_fu_442_p4}};
assign or_ln126_7_fu_584_p2 = (and_ln126_5_fu_579_p2 | and_ln126_4_fu_574_p2);
assign or_ln126_8_fu_620_p2 = (E_9_fu_563_p3 | D_fu_600_p3);
assign or_ln126_9_fu_637_p2 = (and_ln126_7_fu_631_p2 | and_ln126_6_fu_626_p2);
assign or_ln126_fu_335_p2 = (E_6_fu_92 | E_5_fu_84);
assign or_ln126_s_fu_523_p3 = {{trunc_ln126_4_fu_509_p1}, {lshr_ln126_4_fu_513_p4}};
assign or_ln1_fu_284_p3 = {{tmp_s_fu_274_p4}, {1'd1}};
assign temp_4_fu_427_p2 = (add_ln126_2_reg_802 + add_ln126_fu_422_p2);
assign temp_5_fu_504_p2 = (add_ln126_5_reg_859 + add_ln126_6_fu_500_p2);
assign tmp_s_fu_274_p4 = {{ap_sig_allocacmp_i_2[5:2]}};
assign trunc_ln126_1_fu_379_p1 = B_fu_88[1:0];
assign trunc_ln126_2_fu_438_p1 = temp_4_fu_427_p2[26:0];
assign trunc_ln126_3_fu_399_p1 = B_5_fu_96[1:0];
assign trunc_ln126_4_fu_509_p1 = temp_5_fu_504_p2[26:0];
assign trunc_ln126_5_fu_486_p1 = temp_4_fu_427_p2[1:0];
assign trunc_ln126_6_fu_606_p1 = B_9_fu_595_p2[26:0];
assign trunc_ln126_7_fu_536_p1 = temp_5_fu_504_p2[1:0];
assign trunc_ln126_fu_321_p1 = B_5_fu_96[26:0];
assign zext_ln100_2_fu_292_p1 = or_ln1_fu_284_p3;
assign zext_ln100_fu_268_p1 = lshr_ln100_2_fu_258_p4;
endmodule 