
module sha_stream_sha_transform_Pipeline_trans_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A,B,C,D,E,W_load_3,W_4_load_3,W_8_load_3,W_12_load_3,W_16_load_3,W_1_load_4,W_5_load_4,W_9_load_4,W_13_load_4,W_17_load_4,W_2_load_3,W_6_load_3,W_10_load_3,W_14_load_3,W_18_load_3,W_3_load_3,W_7_load_3,W_11_load_3,W_15_load_3,W_19_load_3,A_17_out,A_17_out_ap_vld,B_1_out,B_1_out_ap_vld,C_17_out,C_17_out_ap_vld,D_17_out,D_17_out_ap_vld,E_1_out,E_1_out_ap_vld);  
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
input  [31:0] W_load_3;
input  [31:0] W_4_load_3;
input  [31:0] W_8_load_3;
input  [31:0] W_12_load_3;
input  [31:0] W_16_load_3;
input  [31:0] W_1_load_4;
input  [31:0] W_5_load_4;
input  [31:0] W_9_load_4;
input  [31:0] W_13_load_4;
input  [31:0] W_17_load_4;
input  [31:0] W_2_load_3;
input  [31:0] W_6_load_3;
input  [31:0] W_10_load_3;
input  [31:0] W_14_load_3;
input  [31:0] W_18_load_3;
input  [31:0] W_3_load_3;
input  [31:0] W_7_load_3;
input  [31:0] W_11_load_3;
input  [31:0] W_15_load_3;
input  [31:0] W_19_load_3;
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
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln116_fu_356_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [4:0] i_reg_929;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln116_reg_934;
wire   [31:0] tmp_s_fu_362_p13;
reg   [31:0] tmp_s_reg_938;
wire   [31:0] tmp_6_fu_390_p13;
reg   [31:0] tmp_6_reg_943;
wire   [31:0] tmp_7_fu_418_p13;
reg   [31:0] tmp_7_reg_948;
wire   [31:0] tmp_8_fu_446_p13;
reg   [31:0] tmp_8_reg_953;
reg   [31:0] E_10_load_reg_958;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] E_11_load_reg_963;
reg   [31:0] B_10_load_reg_969;
wire   [31:0] temp_fu_552_p2;
reg   [31:0] temp_reg_975;
wire   [1:0] trunc_ln118_1_fu_558_p1;
reg   [1:0] trunc_ln118_1_reg_981;
reg   [29:0] lshr_ln118_1_reg_986;
wire   [26:0] trunc_ln118_2_fu_572_p1;
reg   [26:0] trunc_ln118_2_reg_991;
reg   [4:0] lshr_ln118_2_reg_996;
wire   [1:0] trunc_ln118_3_fu_586_p1;
reg   [1:0] trunc_ln118_3_reg_1001;
reg   [29:0] lshr_ln118_3_reg_1006;
wire   [1:0] trunc_ln118_5_fu_600_p1;
reg   [1:0] trunc_ln118_5_reg_1011;
reg   [29:0] lshr_ln118_5_reg_1016;
wire   [31:0] add_ln118_6_fu_626_p2;
reg   [31:0] add_ln118_6_reg_1021;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] C_12_fu_631_p3;
reg   [31:0] C_12_reg_1026;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] C_13_fu_668_p3;
reg   [31:0] C_13_reg_1032;
wire   [26:0] trunc_ln118_4_fu_674_p1;
reg   [26:0] trunc_ln118_4_reg_1037;
reg   [4:0] lshr_ln118_4_reg_1042;
wire   [31:0] or_ln118_5_fu_712_p2;
reg   [31:0] or_ln118_5_reg_1047;
wire   [31:0] add_ln118_10_fu_767_p2;
reg   [31:0] add_ln118_10_reg_1052;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [26:0] trunc_ln118_6_fu_802_p1;
reg   [26:0] trunc_ln118_6_reg_1057;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [4:0] lshr_ln118_6_reg_1062;
wire   [31:0] add_ln118_14_fu_833_p2;
reg   [31:0] add_ln118_14_reg_1067;
wire    ap_block_pp0_stage6_11001;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [31:0] E_1_fu_114;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
reg   [31:0] E_10_fu_118;
wire   [31:0] C_14_fu_688_p3;
reg   [31:0] E_11_fu_122;
wire   [31:0] C_5_fu_732_p3;
reg   [31:0] B_1_fu_126;
wire   [31:0] temp_6_fu_797_p2;
reg   [31:0] B_10_fu_130;
wire   [31:0] temp_7_fu_852_p2;
reg   [4:0] i_1_fu_134;
wire   [4:0] add_ln116_fu_838_p2;
reg   [4:0] ap_sig_allocacmp_i;
wire    ap_block_pp0_stage0_01001;
wire   [31:0] tmp_s_fu_362_p11;
wire   [31:0] tmp_6_fu_390_p11;
wire   [31:0] tmp_7_fu_418_p11;
wire   [31:0] tmp_8_fu_446_p11;
wire   [31:0] xor_ln118_fu_503_p2;
wire   [31:0] and_ln118_1_fu_515_p2;
wire   [31:0] and_ln118_fu_509_p2;
wire   [26:0] trunc_ln118_fu_489_p1;
wire   [4:0] lshr_ln2_fu_493_p4;
wire   [31:0] add_ln118_1_fu_535_p2;
wire   [31:0] or_ln118_1_fu_527_p3;
wire   [31:0] or_ln118_fu_521_p2;
wire   [31:0] add_ln118_fu_546_p2;
wire   [31:0] add_ln118_2_fu_540_p2;
wire    ap_block_pp0_stage2;
wire   [31:0] or_ln118_4_fu_614_p3;
wire   [31:0] add_ln118_5_fu_620_p2;
wire    ap_block_pp0_stage3;
wire   [31:0] xor_ln118_1_fu_637_p2;
wire   [31:0] and_ln118_2_fu_642_p2;
wire   [31:0] and_ln118_3_fu_647_p2;
wire   [31:0] or_ln118_2_fu_652_p2;
wire   [31:0] add_ln118_4_fu_658_p2;
wire   [31:0] temp_5_fu_663_p2;
wire   [31:0] xor_ln118_3_fu_694_p2;
wire   [31:0] and_ln118_6_fu_700_p2;
wire   [31:0] and_ln118_7_fu_706_p2;
wire   [1:0] trunc_ln118_7_fu_718_p1;
wire   [29:0] lshr_ln118_7_fu_722_p4;
wire    ap_block_pp0_stage4;
wire   [31:0] or_ln118_7_fu_755_p3;
wire   [31:0] add_ln118_9_fu_761_p2;
wire    ap_block_pp0_stage5;
wire   [31:0] xor_ln118_2_fu_772_p2;
wire   [31:0] and_ln118_4_fu_777_p2;
wire   [31:0] and_ln118_5_fu_781_p2;
wire   [31:0] or_ln118_3_fu_786_p2;
wire   [31:0] add_ln118_8_fu_792_p2;
wire    ap_block_pp0_stage6;
wire   [31:0] or_ln118_s_fu_821_p3;
wire   [31:0] add_ln118_13_fu_827_p2;
wire   [31:0] add_ln118_12_fu_848_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [6:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [4:0] tmp_s_fu_362_p1;
wire   [4:0] tmp_s_fu_362_p3;
wire   [4:0] tmp_s_fu_362_p5;
wire   [4:0] tmp_s_fu_362_p7;
wire  signed [4:0] tmp_s_fu_362_p9;
wire   [4:0] tmp_6_fu_390_p1;
wire   [4:0] tmp_6_fu_390_p3;
wire   [4:0] tmp_6_fu_390_p5;
wire   [4:0] tmp_6_fu_390_p7;
wire  signed [4:0] tmp_6_fu_390_p9;
wire   [4:0] tmp_7_fu_418_p1;
wire   [4:0] tmp_7_fu_418_p3;
wire   [4:0] tmp_7_fu_418_p5;
wire   [4:0] tmp_7_fu_418_p7;
wire  signed [4:0] tmp_7_fu_418_p9;
wire   [4:0] tmp_8_fu_446_p1;
wire   [4:0] tmp_8_fu_446_p3;
wire   [4:0] tmp_8_fu_446_p5;
wire   [4:0] tmp_8_fu_446_p7;
wire  signed [4:0] tmp_8_fu_446_p9;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_1_fu_114 = 32'd0;
#0 E_10_fu_118 = 32'd0;
#0 E_11_fu_122 = 32'd0;
#0 B_1_fu_126 = 32'd0;
#0 B_10_fu_130 = 32'd0;
#0 i_1_fu_134 = 5'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h4 ),.din1_WIDTH( 32 ),.CASE2( 5'h8 ),.din2_WIDTH( 32 ),.CASE3( 5'hC ),.din3_WIDTH( 32 ),.CASE4( 5'h10 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_11_5_32_1_1_U87(.din0(W_load_3),.din1(W_4_load_3),.din2(W_8_load_3),.din3(W_12_load_3),.din4(W_16_load_3),.def(tmp_s_fu_362_p11),.sel(ap_sig_allocacmp_i),.dout(tmp_s_fu_362_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h4 ),.din1_WIDTH( 32 ),.CASE2( 5'h8 ),.din2_WIDTH( 32 ),.CASE3( 5'hC ),.din3_WIDTH( 32 ),.CASE4( 5'h10 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_11_5_32_1_1_U88(.din0(W_1_load_4),.din1(W_5_load_4),.din2(W_9_load_4),.din3(W_13_load_4),.din4(W_17_load_4),.def(tmp_6_fu_390_p11),.sel(ap_sig_allocacmp_i),.dout(tmp_6_fu_390_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h4 ),.din1_WIDTH( 32 ),.CASE2( 5'h8 ),.din2_WIDTH( 32 ),.CASE3( 5'hC ),.din3_WIDTH( 32 ),.CASE4( 5'h10 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_11_5_32_1_1_U89(.din0(W_2_load_3),.din1(W_6_load_3),.din2(W_10_load_3),.din3(W_14_load_3),.din4(W_18_load_3),.def(tmp_7_fu_418_p11),.sel(ap_sig_allocacmp_i),.dout(tmp_7_fu_418_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h4 ),.din1_WIDTH( 32 ),.CASE2( 5'h8 ),.din2_WIDTH( 32 ),.CASE3( 5'hC ),.din3_WIDTH( 32 ),.CASE4( 5'h10 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_11_5_32_1_1_U90(.din0(W_3_load_3),.din1(W_7_load_3),.din2(W_11_load_3),.din3(W_15_load_3),.din4(W_19_load_3),.def(tmp_8_fu_446_p11),.sel(ap_sig_allocacmp_i),.dout(tmp_8_fu_446_p13));
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
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            B_10_fu_130 <= A;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            B_10_fu_130 <= temp_7_fu_852_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_1_fu_126 <= B;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln116_reg_934 == 1'd1))) begin
        B_1_fu_126 <= temp_6_fu_797_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_10_fu_118 <= D;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln116_reg_934 == 1'd1))) begin
        E_10_fu_118 <= C_14_fu_688_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_11_fu_122 <= C;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln116_reg_934 == 1'd1))) begin
        E_11_fu_122 <= C_5_fu_732_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_1_fu_114 <= E;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln116_reg_934 == 1'd1))) begin
        E_1_fu_114 <= C_13_fu_668_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_1_fu_134 <= 5'd0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (icmp_ln116_reg_934 == 1'd1))) begin
        i_1_fu_134 <= add_ln116_fu_838_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_10_load_reg_969 <= B_10_fu_130;
        E_10_load_reg_958 <= E_10_fu_118;
        E_11_load_reg_963 <= E_11_fu_122;
        lshr_ln118_1_reg_986 <= {{B_1_fu_126[31:2]}};
        lshr_ln118_2_reg_996 <= {{temp_fu_552_p2[31:27]}};
        lshr_ln118_3_reg_1006 <= {{B_10_fu_130[31:2]}};
        lshr_ln118_5_reg_1016 <= {{temp_fu_552_p2[31:2]}};
        temp_reg_975 <= temp_fu_552_p2;
        trunc_ln118_1_reg_981 <= trunc_ln118_1_fu_558_p1;
        trunc_ln118_2_reg_991 <= trunc_ln118_2_fu_572_p1;
        trunc_ln118_3_reg_1001 <= trunc_ln118_3_fu_586_p1;
        trunc_ln118_5_reg_1011 <= trunc_ln118_5_fu_600_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        C_12_reg_1026 <= C_12_fu_631_p3;
        C_13_reg_1032 <= C_13_fu_668_p3;
        lshr_ln118_4_reg_1042 <= {{temp_5_fu_663_p2[31:27]}};
        or_ln118_5_reg_1047 <= or_ln118_5_fu_712_p2;
        trunc_ln118_4_reg_1037 <= trunc_ln118_4_fu_674_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln118_10_reg_1052 <= add_ln118_10_fu_767_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln118_14_reg_1067 <= add_ln118_14_fu_833_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln118_6_reg_1021 <= add_ln118_6_fu_626_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_reg_929 <= ap_sig_allocacmp_i;
        icmp_ln116_reg_934 <= icmp_ln116_fu_356_p2;
        tmp_6_reg_943 <= tmp_6_fu_390_p13;
        tmp_7_reg_948 <= tmp_7_fu_418_p13;
        tmp_8_reg_953 <= tmp_8_fu_446_p13;
        tmp_s_reg_938 <= tmp_s_fu_362_p13;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        lshr_ln118_6_reg_1062 <= {{temp_6_fu_797_p2[31:27]}};
        trunc_ln118_6_reg_1057 <= trunc_ln118_6_fu_802_p1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_fu_356_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        A_17_out_ap_vld = 1'b1;
    end else begin
        A_17_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_fu_356_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_1_out_ap_vld = 1'b1;
    end else begin
        B_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_fu_356_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        C_17_out_ap_vld = 1'b1;
    end else begin
        C_17_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_fu_356_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        D_17_out_ap_vld = 1'b1;
    end else begin
        D_17_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_fu_356_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_1_out_ap_vld = 1'b1;
    end else begin
        E_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln116_fu_356_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i = i_1_fu_134;
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
assign A_17_out = B_10_fu_130;
assign B_1_out = B_1_fu_126;
assign C_12_fu_631_p3 = {{trunc_ln118_1_reg_981}, {lshr_ln118_1_reg_986}};
assign C_13_fu_668_p3 = {{trunc_ln118_3_reg_1001}, {lshr_ln118_3_reg_1006}};
assign C_14_fu_688_p3 = {{trunc_ln118_5_reg_1011}, {lshr_ln118_5_reg_1016}};
assign C_17_out = E_11_fu_122;
assign C_5_fu_732_p3 = {{trunc_ln118_7_fu_718_p1}, {lshr_ln118_7_fu_722_p4}};
assign D_17_out = E_10_fu_118;
assign E_1_out = E_1_fu_114;
assign add_ln116_fu_838_p2 = (i_reg_929 + 5'd4);
assign add_ln118_10_fu_767_p2 = (add_ln118_9_fu_761_p2 + E_11_load_reg_963);
assign add_ln118_12_fu_848_p2 = (C_12_reg_1026 + tmp_8_reg_953);
assign add_ln118_13_fu_827_p2 = (or_ln118_s_fu_821_p3 + 32'd1518500249);
assign add_ln118_14_fu_833_p2 = (add_ln118_13_fu_827_p2 + or_ln118_5_reg_1047);
assign add_ln118_1_fu_535_p2 = (tmp_s_reg_938 + 32'd1518500249);
assign add_ln118_2_fu_540_p2 = (add_ln118_1_fu_535_p2 + or_ln118_1_fu_527_p3);
assign add_ln118_4_fu_658_p2 = (tmp_6_reg_943 + or_ln118_2_fu_652_p2);
assign add_ln118_5_fu_620_p2 = (or_ln118_4_fu_614_p3 + 32'd1518500249);
assign add_ln118_6_fu_626_p2 = (add_ln118_5_fu_620_p2 + E_10_load_reg_958);
assign add_ln118_8_fu_792_p2 = (or_ln118_3_fu_786_p2 + tmp_7_reg_948);
assign add_ln118_9_fu_761_p2 = (or_ln118_7_fu_755_p3 + 32'd1518500249);
assign add_ln118_fu_546_p2 = (or_ln118_fu_521_p2 + E_1_fu_114);
assign and_ln118_1_fu_515_p2 = (xor_ln118_fu_503_p2 & E_10_fu_118);
assign and_ln118_2_fu_642_p2 = (C_12_fu_631_p3 & B_10_load_reg_969);
assign and_ln118_3_fu_647_p2 = (xor_ln118_1_fu_637_p2 & E_11_load_reg_963);
assign and_ln118_4_fu_777_p2 = (temp_reg_975 & C_13_reg_1032);
assign and_ln118_5_fu_781_p2 = (xor_ln118_2_fu_772_p2 & C_12_reg_1026);
assign and_ln118_6_fu_700_p2 = (temp_5_fu_663_p2 & C_14_fu_688_p3);
assign and_ln118_7_fu_706_p2 = (xor_ln118_3_fu_694_p2 & C_13_fu_668_p3);
assign and_ln118_fu_509_p2 = (E_11_fu_122 & B_1_fu_126);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln116_fu_356_p2 = ((ap_sig_allocacmp_i < 5'd20) ? 1'b1 : 1'b0);
assign lshr_ln118_7_fu_722_p4 = {{temp_5_fu_663_p2[31:2]}};
assign lshr_ln2_fu_493_p4 = {{B_10_fu_130[31:27]}};
assign or_ln118_1_fu_527_p3 = {{trunc_ln118_fu_489_p1}, {lshr_ln2_fu_493_p4}};
assign or_ln118_2_fu_652_p2 = (and_ln118_3_fu_647_p2 | and_ln118_2_fu_642_p2);
assign or_ln118_3_fu_786_p2 = (and_ln118_5_fu_781_p2 | and_ln118_4_fu_777_p2);
assign or_ln118_4_fu_614_p3 = {{trunc_ln118_2_reg_991}, {lshr_ln118_2_reg_996}};
assign or_ln118_5_fu_712_p2 = (and_ln118_7_fu_706_p2 | and_ln118_6_fu_700_p2);
assign or_ln118_7_fu_755_p3 = {{trunc_ln118_4_reg_1037}, {lshr_ln118_4_reg_1042}};
assign or_ln118_fu_521_p2 = (and_ln118_fu_509_p2 | and_ln118_1_fu_515_p2);
assign or_ln118_s_fu_821_p3 = {{trunc_ln118_6_reg_1057}, {lshr_ln118_6_reg_1062}};
assign temp_5_fu_663_p2 = (add_ln118_6_reg_1021 + add_ln118_4_fu_658_p2);
assign temp_6_fu_797_p2 = (add_ln118_10_reg_1052 + add_ln118_8_fu_792_p2);
assign temp_7_fu_852_p2 = (add_ln118_14_reg_1067 + add_ln118_12_fu_848_p2);
assign temp_fu_552_p2 = (add_ln118_fu_546_p2 + add_ln118_2_fu_540_p2);
assign tmp_6_fu_390_p11 = 'bx;
assign tmp_7_fu_418_p11 = 'bx;
assign tmp_8_fu_446_p11 = 'bx;
assign tmp_s_fu_362_p11 = 'bx;
assign trunc_ln118_1_fu_558_p1 = B_1_fu_126[1:0];
assign trunc_ln118_2_fu_572_p1 = temp_fu_552_p2[26:0];
assign trunc_ln118_3_fu_586_p1 = B_10_fu_130[1:0];
assign trunc_ln118_4_fu_674_p1 = temp_5_fu_663_p2[26:0];
assign trunc_ln118_5_fu_600_p1 = temp_fu_552_p2[1:0];
assign trunc_ln118_6_fu_802_p1 = temp_6_fu_797_p2[26:0];
assign trunc_ln118_7_fu_718_p1 = temp_5_fu_663_p2[1:0];
assign trunc_ln118_fu_489_p1 = B_10_fu_130[26:0];
assign xor_ln118_1_fu_637_p2 = (32'd4294967295 ^ B_10_load_reg_969);
assign xor_ln118_2_fu_772_p2 = (temp_reg_975 ^ 32'd4294967295);
assign xor_ln118_3_fu_694_p2 = (temp_5_fu_663_p2 ^ 32'd4294967295);
assign xor_ln118_fu_503_p2 = (32'd4294967295 ^ B_1_fu_126);
endmodule 
