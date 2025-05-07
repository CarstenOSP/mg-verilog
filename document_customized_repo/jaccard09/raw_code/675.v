module sha_stream_sha_transform_Pipeline_trans_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A,B,C,D,E,W_address0,W_ce0,W_q0,W_address1,W_ce1,W_q1,W_1_address0,W_1_ce0,W_1_q0,W_1_address1,W_1_ce1,W_1_q1,A_45_out,A_45_out_ap_vld,B_1_out,B_1_out_ap_vld,C_41_out,C_41_out_ap_vld,D_45_out,D_45_out_ap_vld,E_1_out,E_1_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 7'd1;
parameter    ap_ST_fsm_pp0_stage1 = 7'd2;
parameter    ap_ST_fsm_pp0_stage2 = 7'd4;
parameter    ap_ST_fsm_pp0_stage3 = 7'd8;
parameter    ap_ST_fsm_pp0_stage4 = 7'd16;
parameter    ap_ST_fsm_pp0_stage5 = 7'd32;
parameter    ap_ST_fsm_pp0_stage6 = 7'd64;
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
output  [31:0] A_45_out;
output   A_45_out_ap_vld;
output  [31:0] B_1_out;
output   B_1_out_ap_vld;
output  [31:0] C_41_out;
output   C_41_out_ap_vld;
output  [31:0] D_45_out;
output   D_45_out_ap_vld;
output  [31:0] E_1_out;
output   E_1_out_ap_vld;
reg ap_idle;
reg A_45_out_ap_vld;
reg B_1_out_ap_vld;
reg C_41_out_ap_vld;
reg D_45_out_ap_vld;
reg E_1_out_ap_vld;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln116_reg_754;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln116_fu_252_p2;
reg   [31:0] W_load_6_reg_778;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] W_1_load_7_reg_783;
reg   [31:0] W_load_7_reg_788;
reg   [31:0] W_1_load_8_reg_793;
reg   [31:0] E_43_load_reg_798;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] E_44_load_reg_803;
reg   [31:0] B_41_load_reg_809;
wire   [31:0] temp_32_fu_387_p2;
reg   [31:0] temp_32_reg_815;
wire   [1:0] trunc_ln118_1_fu_393_p1;
reg   [1:0] trunc_ln118_1_reg_821;
reg   [29:0] lshr_ln118_1_reg_826;
wire   [26:0] trunc_ln118_2_fu_407_p1;
reg   [26:0] trunc_ln118_2_reg_831;
reg   [4:0] lshr_ln118_2_reg_836;
wire   [1:0] trunc_ln118_3_fu_421_p1;
reg   [1:0] trunc_ln118_3_reg_841;
reg   [29:0] lshr_ln118_3_reg_846;
wire   [1:0] trunc_ln118_5_fu_435_p1;
reg   [1:0] trunc_ln118_5_reg_851;
reg   [29:0] lshr_ln118_5_reg_856;
wire   [31:0] add_ln118_6_fu_461_p2;
reg   [31:0] add_ln118_6_reg_861;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] C_38_fu_466_p3;
reg   [31:0] C_38_reg_866;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [31:0] E_47_fu_503_p3;
reg   [31:0] E_47_reg_872;
wire   [26:0] trunc_ln118_4_fu_509_p1;
reg   [26:0] trunc_ln118_4_reg_877;
reg   [4:0] lshr_ln118_4_reg_882;
wire   [31:0] or_ln118_5_fu_547_p2;
reg   [31:0] or_ln118_5_reg_887;
wire   [31:0] add_ln118_10_fu_602_p2;
reg   [31:0] add_ln118_10_reg_892;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [26:0] trunc_ln118_6_fu_637_p1;
reg   [26:0] trunc_ln118_6_reg_897;
wire    ap_block_pp0_stage6_11001;
reg   [4:0] lshr_ln118_6_reg_902;
wire   [31:0] add_ln118_14_fu_668_p2;
reg   [31:0] add_ln118_14_reg_907;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln100_fu_268_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln100_1_fu_292_p1;
reg   [31:0] E_1_fu_80;
wire    ap_loop_init;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage1;
reg   [31:0] E_43_fu_84;
wire   [31:0] D_22_fu_523_p3;
reg   [31:0] E_44_fu_88;
wire   [31:0] C_5_fu_567_p3;
reg   [31:0] B_1_fu_92;
wire   [31:0] B_45_fu_632_p2;
reg   [31:0] B_41_fu_96;
wire   [31:0] A_23_fu_677_p2;
reg   [4:0] i_1_fu_100;
wire   [4:0] add_ln116_fu_298_p2;
reg   [4:0] ap_sig_allocacmp_i;
wire    ap_block_pp0_stage1_01001;
reg    W_ce1_local;
reg    W_ce0_local;
reg    W_1_ce1_local;
reg    W_1_ce0_local;
wire   [3:0] lshr_ln2_fu_258_p4;
wire   [2:0] tmp_5_fu_274_p4;
wire   [3:0] or_ln1_fu_284_p3;
wire   [31:0] xor_ln118_fu_338_p2;
wire   [31:0] and_ln118_1_fu_350_p2;
wire   [31:0] and_ln118_fu_344_p2;
wire   [26:0] trunc_ln118_fu_324_p1;
wire   [4:0] lshr_ln3_fu_328_p4;
wire   [31:0] or_ln118_1_fu_362_p3;
wire   [31:0] add_ln118_1_fu_370_p2;
wire   [31:0] or_ln118_fu_356_p2;
wire   [31:0] add_ln118_fu_382_p2;
wire   [31:0] add_ln118_2_fu_376_p2;
wire    ap_block_pp0_stage3;
wire   [31:0] or_ln118_4_fu_449_p3;
wire   [31:0] add_ln118_5_fu_455_p2;
wire    ap_block_pp0_stage4;
wire   [31:0] xor_ln118_1_fu_472_p2;
wire   [31:0] and_ln118_2_fu_477_p2;
wire   [31:0] and_ln118_3_fu_482_p2;
wire   [31:0] or_ln118_2_fu_487_p2;
wire   [31:0] add_ln118_4_fu_493_p2;
wire   [31:0] temp_33_fu_498_p2;
wire   [31:0] xor_ln118_3_fu_529_p2;
wire   [31:0] and_ln118_6_fu_535_p2;
wire   [31:0] and_ln118_7_fu_541_p2;
wire   [1:0] trunc_ln118_7_fu_553_p1;
wire   [29:0] lshr_ln118_7_fu_557_p4;
wire    ap_block_pp0_stage5;
wire   [31:0] or_ln118_7_fu_590_p3;
wire   [31:0] add_ln118_9_fu_596_p2;
wire    ap_block_pp0_stage6;
wire   [31:0] xor_ln118_2_fu_607_p2;
wire   [31:0] and_ln118_4_fu_612_p2;
wire   [31:0] and_ln118_5_fu_616_p2;
wire   [31:0] or_ln118_3_fu_621_p2;
wire   [31:0] add_ln118_8_fu_627_p2;
wire   [31:0] or_ln118_s_fu_656_p3;
wire   [31:0] add_ln118_13_fu_662_p2;
wire   [31:0] add_ln118_12_fu_673_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [6:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_1_fu_80 = 32'd0;
#0 E_43_fu_84 = 32'd0;
#0 E_44_fu_88 = 32'd0;
#0 B_1_fu_92 = 32'd0;
#0 B_41_fu_96 = 32'd0;
#0 i_1_fu_100 = 5'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_1_fu_92 <= B;
    end else if (((icmp_ln116_reg_754 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        B_1_fu_92 <= B_45_fu_632_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_41_fu_96 <= A;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_41_fu_96 <= A_23_fu_677_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_1_fu_80 <= E;
    end else if (((icmp_ln116_reg_754 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        E_1_fu_80 <= E_47_fu_503_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_43_fu_84 <= D;
    end else if (((icmp_ln116_reg_754 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        E_43_fu_84 <= D_22_fu_523_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_44_fu_88 <= C;
    end else if (((icmp_ln116_reg_754 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        E_44_fu_88 <= C_5_fu_567_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln116_fu_252_p2 == 1'd1))) begin
            i_1_fu_100 <= add_ln116_fu_298_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_1_fu_100 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        B_41_load_reg_809 <= B_41_fu_96;
        E_43_load_reg_798 <= E_43_fu_84;
        E_44_load_reg_803 <= E_44_fu_88;
        lshr_ln118_1_reg_826 <= {{B_1_fu_92[31:2]}};
        lshr_ln118_2_reg_836 <= {{temp_32_fu_387_p2[31:27]}};
        lshr_ln118_3_reg_846 <= {{B_41_fu_96[31:2]}};
        lshr_ln118_5_reg_856 <= {{temp_32_fu_387_p2[31:2]}};
        temp_32_reg_815 <= temp_32_fu_387_p2;
        trunc_ln118_1_reg_821 <= trunc_ln118_1_fu_393_p1;
        trunc_ln118_2_reg_831 <= trunc_ln118_2_fu_407_p1;
        trunc_ln118_3_reg_841 <= trunc_ln118_3_fu_421_p1;
        trunc_ln118_5_reg_851 <= trunc_ln118_5_fu_435_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        C_38_reg_866 <= C_38_fu_466_p3;
        E_47_reg_872 <= E_47_fu_503_p3;
        lshr_ln118_4_reg_882 <= {{temp_33_fu_498_p2[31:27]}};
        or_ln118_5_reg_887 <= or_ln118_5_fu_547_p2;
        trunc_ln118_4_reg_877 <= trunc_ln118_4_fu_509_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_1_load_7_reg_783 <= W_1_q1;
        W_1_load_8_reg_793 <= W_1_q0;
        W_load_6_reg_778 <= W_q1;
        W_load_7_reg_788 <= W_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln118_10_reg_892 <= add_ln118_10_fu_602_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln118_14_reg_907 <= add_ln118_14_fu_668_p2;
        icmp_ln116_reg_754 <= icmp_ln116_fu_252_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln118_6_reg_861 <= add_ln118_6_fu_461_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        lshr_ln118_6_reg_902 <= {{B_45_fu_632_p2[31:27]}};
        trunc_ln118_6_reg_897 <= trunc_ln118_6_fu_637_p1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_754 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_45_out_ap_vld = 1'b1;
    end else begin
        A_45_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_754 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_1_out_ap_vld = 1'b1;
    end else begin
        B_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_754 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        C_41_out_ap_vld = 1'b1;
    end else begin
        C_41_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_754 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        D_45_out_ap_vld = 1'b1;
    end else begin
        D_45_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_754 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((icmp_ln116_reg_754 == 1'd0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i = 5'd0;
    end else begin
        ap_sig_allocacmp_i = i_1_fu_100;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_23_fu_677_p2 = (add_ln118_14_reg_907 + add_ln118_12_fu_673_p2);
assign A_45_out = B_41_fu_96;
assign B_1_out = B_1_fu_92;
assign B_45_fu_632_p2 = (add_ln118_10_reg_892 + add_ln118_8_fu_627_p2);
assign C_38_fu_466_p3 = {{trunc_ln118_1_reg_821}, {lshr_ln118_1_reg_826}};
assign C_41_out = E_44_fu_88;
assign C_5_fu_567_p3 = {{trunc_ln118_7_fu_553_p1}, {lshr_ln118_7_fu_557_p4}};
assign D_22_fu_523_p3 = {{trunc_ln118_5_reg_851}, {lshr_ln118_5_reg_856}};
assign D_45_out = E_43_fu_84;
assign E_1_out = E_1_fu_80;
assign E_47_fu_503_p3 = {{trunc_ln118_3_reg_841}, {lshr_ln118_3_reg_846}};
assign W_1_address0 = zext_ln100_1_fu_292_p1;
assign W_1_address1 = zext_ln100_fu_268_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_1_ce1 = W_1_ce1_local;
assign W_address0 = zext_ln100_1_fu_292_p1;
assign W_address1 = zext_ln100_fu_268_p1;
assign W_ce0 = W_ce0_local;
assign W_ce1 = W_ce1_local;
assign add_ln116_fu_298_p2 = (ap_sig_allocacmp_i + 5'd4);
assign add_ln118_10_fu_602_p2 = (add_ln118_9_fu_596_p2 + E_44_load_reg_803);
assign add_ln118_12_fu_673_p2 = (W_1_load_8_reg_793 + C_38_reg_866);
assign add_ln118_13_fu_662_p2 = (or_ln118_s_fu_656_p3 + 32'd1518500249);
assign add_ln118_14_fu_668_p2 = (add_ln118_13_fu_662_p2 + or_ln118_5_reg_887);
assign add_ln118_1_fu_370_p2 = (or_ln118_1_fu_362_p3 + 32'd1518500249);
assign add_ln118_2_fu_376_p2 = (add_ln118_1_fu_370_p2 + E_1_fu_80);
assign add_ln118_4_fu_493_p2 = (W_1_load_7_reg_783 + or_ln118_2_fu_487_p2);
assign add_ln118_5_fu_455_p2 = (or_ln118_4_fu_449_p3 + 32'd1518500249);
assign add_ln118_6_fu_461_p2 = (add_ln118_5_fu_455_p2 + E_43_load_reg_798);
assign add_ln118_8_fu_627_p2 = (W_load_7_reg_788 + or_ln118_3_fu_621_p2);
assign add_ln118_9_fu_596_p2 = (or_ln118_7_fu_590_p3 + 32'd1518500249);
assign add_ln118_fu_382_p2 = (or_ln118_fu_356_p2 + W_load_6_reg_778);
assign and_ln118_1_fu_350_p2 = (xor_ln118_fu_338_p2 & E_43_fu_84);
assign and_ln118_2_fu_477_p2 = (C_38_fu_466_p3 & B_41_load_reg_809);
assign and_ln118_3_fu_482_p2 = (xor_ln118_1_fu_472_p2 & E_44_load_reg_803);
assign and_ln118_4_fu_612_p2 = (temp_32_reg_815 & E_47_reg_872);
assign and_ln118_5_fu_616_p2 = (xor_ln118_2_fu_607_p2 & C_38_reg_866);
assign and_ln118_6_fu_535_p2 = (temp_33_fu_498_p2 & D_22_fu_523_p3);
assign and_ln118_7_fu_541_p2 = (xor_ln118_3_fu_529_p2 & E_47_fu_503_p3);
assign and_ln118_fu_344_p2 = (E_44_fu_88 & B_1_fu_92);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign icmp_ln116_fu_252_p2 = ((ap_sig_allocacmp_i < 5'd20) ? 1'b1 : 1'b0);
assign lshr_ln118_7_fu_557_p4 = {{temp_33_fu_498_p2[31:2]}};
assign lshr_ln2_fu_258_p4 = {{ap_sig_allocacmp_i[4:1]}};
assign lshr_ln3_fu_328_p4 = {{B_41_fu_96[31:27]}};
assign or_ln118_1_fu_362_p3 = {{trunc_ln118_fu_324_p1}, {lshr_ln3_fu_328_p4}};
assign or_ln118_2_fu_487_p2 = (and_ln118_3_fu_482_p2 | and_ln118_2_fu_477_p2);
assign or_ln118_3_fu_621_p2 = (and_ln118_5_fu_616_p2 | and_ln118_4_fu_612_p2);
assign or_ln118_4_fu_449_p3 = {{trunc_ln118_2_reg_831}, {lshr_ln118_2_reg_836}};
assign or_ln118_5_fu_547_p2 = (and_ln118_7_fu_541_p2 | and_ln118_6_fu_535_p2);
assign or_ln118_7_fu_590_p3 = {{trunc_ln118_4_reg_877}, {lshr_ln118_4_reg_882}};
assign or_ln118_fu_356_p2 = (and_ln118_fu_344_p2 | and_ln118_1_fu_350_p2);
assign or_ln118_s_fu_656_p3 = {{trunc_ln118_6_reg_897}, {lshr_ln118_6_reg_902}};
assign or_ln1_fu_284_p3 = {{tmp_5_fu_274_p4}, {1'd1}};
assign temp_32_fu_387_p2 = (add_ln118_fu_382_p2 + add_ln118_2_fu_376_p2);
assign temp_33_fu_498_p2 = (add_ln118_6_reg_861 + add_ln118_4_fu_493_p2);
assign tmp_5_fu_274_p4 = {{ap_sig_allocacmp_i[4:2]}};
assign trunc_ln118_1_fu_393_p1 = B_1_fu_92[1:0];
assign trunc_ln118_2_fu_407_p1 = temp_32_fu_387_p2[26:0];
assign trunc_ln118_3_fu_421_p1 = B_41_fu_96[1:0];
assign trunc_ln118_4_fu_509_p1 = temp_33_fu_498_p2[26:0];
assign trunc_ln118_5_fu_435_p1 = temp_32_fu_387_p2[1:0];
assign trunc_ln118_6_fu_637_p1 = B_45_fu_632_p2[26:0];
assign trunc_ln118_7_fu_553_p1 = temp_33_fu_498_p2[1:0];
assign trunc_ln118_fu_324_p1 = B_41_fu_96[26:0];
assign xor_ln118_1_fu_472_p2 = (32'd4294967295 ^ B_41_load_reg_809);
assign xor_ln118_2_fu_607_p2 = (temp_32_reg_815 ^ 32'd4294967295);
assign xor_ln118_3_fu_529_p2 = (temp_33_fu_498_p2 ^ 32'd4294967295);
assign xor_ln118_fu_338_p2 = (32'd4294967295 ^ B_1_fu_92);
assign zext_ln100_1_fu_292_p1 = or_ln1_fu_284_p3;
assign zext_ln100_fu_268_p1 = lshr_ln2_fu_258_p4;
endmodule 