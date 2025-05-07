module sha_stream_sha_transform_Pipeline_trans_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A,B,C,D,E,zext_ln104,zext_ln104_4,zext_ln104_8,zext_ln104_12,W_32_reload,zext_ln104_1,zext_ln104_5,zext_ln104_9,zext_ln104_13,W_33_reload,zext_ln104_2,zext_ln104_6,zext_ln104_10,zext_ln104_14,W_34_reload,zext_ln104_3,zext_ln104_7,zext_ln104_11,zext_ln100,W_35_reload,A_45_out,A_45_out_ap_vld,B_1_out,B_1_out_ap_vld,C_41_out,C_41_out_ap_vld,D_45_out,D_45_out_ap_vld,E_1_out,E_1_out_ap_vld); 
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
input  [30:0] zext_ln104;
input  [30:0] zext_ln104_4;
input  [30:0] zext_ln104_8;
input  [30:0] zext_ln104_12;
input  [31:0] W_32_reload;
input  [30:0] zext_ln104_1;
input  [30:0] zext_ln104_5;
input  [30:0] zext_ln104_9;
input  [30:0] zext_ln104_13;
input  [31:0] W_33_reload;
input  [30:0] zext_ln104_2;
input  [30:0] zext_ln104_6;
input  [30:0] zext_ln104_10;
input  [30:0] zext_ln104_14;
input  [31:0] W_34_reload;
input  [30:0] zext_ln104_3;
input  [30:0] zext_ln104_7;
input  [30:0] zext_ln104_11;
input  [30:0] zext_ln100;
input  [31:0] W_35_reload;
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
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln116_fu_422_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [4:0] i_reg_995;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln116_reg_1000;
wire   [31:0] tmp_12_fu_428_p13;
reg   [31:0] tmp_12_reg_1004;
wire   [31:0] tmp_13_fu_456_p13;
reg   [31:0] tmp_13_reg_1009;
wire   [31:0] tmp_14_fu_484_p13;
reg   [31:0] tmp_14_reg_1014;
wire   [31:0] tmp_15_fu_512_p13;
reg   [31:0] tmp_15_reg_1019;
reg   [31:0] E_43_load_reg_1024;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] E_44_load_reg_1029;
reg   [31:0] B_41_load_reg_1035;
wire   [31:0] temp_32_fu_618_p2;
reg   [31:0] temp_32_reg_1041;
wire   [1:0] trunc_ln118_1_fu_624_p1;
reg   [1:0] trunc_ln118_1_reg_1047;
reg   [29:0] lshr_ln118_1_reg_1052;
wire   [26:0] trunc_ln118_2_fu_638_p1;
reg   [26:0] trunc_ln118_2_reg_1057;
reg   [4:0] lshr_ln118_2_reg_1062;
wire   [1:0] trunc_ln118_3_fu_652_p1;
reg   [1:0] trunc_ln118_3_reg_1067;
reg   [29:0] lshr_ln118_3_reg_1072;
wire   [1:0] trunc_ln118_5_fu_666_p1;
reg   [1:0] trunc_ln118_5_reg_1077;
reg   [29:0] lshr_ln118_5_reg_1082;
wire   [31:0] add_ln118_6_fu_692_p2;
reg   [31:0] add_ln118_6_reg_1087;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] C_38_fu_697_p3;
reg   [31:0] C_38_reg_1092;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] E_47_fu_734_p3;
reg   [31:0] E_47_reg_1098;
wire   [26:0] trunc_ln118_4_fu_740_p1;
reg   [26:0] trunc_ln118_4_reg_1103;
reg   [4:0] lshr_ln118_4_reg_1108;
wire   [31:0] or_ln118_5_fu_778_p2;
reg   [31:0] or_ln118_5_reg_1113;
wire   [31:0] add_ln118_10_fu_833_p2;
reg   [31:0] add_ln118_10_reg_1118;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [26:0] trunc_ln118_6_fu_868_p1;
reg   [26:0] trunc_ln118_6_reg_1123;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [4:0] lshr_ln118_6_reg_1128;
wire   [31:0] add_ln118_14_fu_899_p2;
reg   [31:0] add_ln118_14_reg_1133;
wire    ap_block_pp0_stage6_11001;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [31:0] E_1_fu_116;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
reg   [31:0] E_43_fu_120;
wire   [31:0] D_22_fu_754_p3;
reg   [31:0] E_44_fu_124;
wire   [31:0] C_5_fu_798_p3;
reg   [31:0] B_1_fu_128;
wire   [31:0] B_45_fu_863_p2;
reg   [31:0] B_41_fu_132;
wire   [31:0] A_23_fu_918_p2;
reg   [4:0] i_1_fu_136;
wire   [4:0] add_ln116_fu_904_p2;
reg   [4:0] ap_sig_allocacmp_i;
wire    ap_block_pp0_stage0_01001;
wire   [31:0] tmp_12_fu_428_p2;
wire   [31:0] tmp_12_fu_428_p4;
wire   [31:0] tmp_12_fu_428_p6;
wire   [31:0] tmp_12_fu_428_p8;
wire   [31:0] tmp_12_fu_428_p11;
wire   [31:0] tmp_13_fu_456_p2;
wire   [31:0] tmp_13_fu_456_p4;
wire   [31:0] tmp_13_fu_456_p6;
wire   [31:0] tmp_13_fu_456_p8;
wire   [31:0] tmp_13_fu_456_p11;
wire   [31:0] tmp_14_fu_484_p2;
wire   [31:0] tmp_14_fu_484_p4;
wire   [31:0] tmp_14_fu_484_p6;
wire   [31:0] tmp_14_fu_484_p8;
wire   [31:0] tmp_14_fu_484_p11;
wire   [31:0] tmp_15_fu_512_p2;
wire   [31:0] tmp_15_fu_512_p4;
wire   [31:0] tmp_15_fu_512_p6;
wire   [31:0] tmp_15_fu_512_p8;
wire   [31:0] tmp_15_fu_512_p11;
wire   [31:0] xor_ln118_fu_569_p2;
wire   [31:0] and_ln118_1_fu_581_p2;
wire   [31:0] and_ln118_fu_575_p2;
wire   [26:0] trunc_ln118_fu_555_p1;
wire   [4:0] lshr_ln_fu_559_p4;
wire   [31:0] add_ln118_1_fu_601_p2;
wire   [31:0] or_ln118_1_fu_593_p3;
wire   [31:0] or_ln118_fu_587_p2;
wire   [31:0] add_ln118_fu_612_p2;
wire   [31:0] add_ln118_2_fu_606_p2;
wire    ap_block_pp0_stage2;
wire   [31:0] or_ln118_4_fu_680_p3;
wire   [31:0] add_ln118_5_fu_686_p2;
wire    ap_block_pp0_stage3;
wire   [31:0] xor_ln118_1_fu_703_p2;
wire   [31:0] and_ln118_2_fu_708_p2;
wire   [31:0] and_ln118_3_fu_713_p2;
wire   [31:0] or_ln118_2_fu_718_p2;
wire   [31:0] add_ln118_4_fu_724_p2;
wire   [31:0] temp_33_fu_729_p2;
wire   [31:0] xor_ln118_3_fu_760_p2;
wire   [31:0] and_ln118_6_fu_766_p2;
wire   [31:0] and_ln118_7_fu_772_p2;
wire   [1:0] trunc_ln118_7_fu_784_p1;
wire   [29:0] lshr_ln118_7_fu_788_p4;
wire    ap_block_pp0_stage4;
wire   [31:0] or_ln118_7_fu_821_p3;
wire   [31:0] add_ln118_9_fu_827_p2;
wire    ap_block_pp0_stage5;
wire   [31:0] xor_ln118_2_fu_838_p2;
wire   [31:0] and_ln118_4_fu_843_p2;
wire   [31:0] and_ln118_5_fu_847_p2;
wire   [31:0] or_ln118_3_fu_852_p2;
wire   [31:0] add_ln118_8_fu_858_p2;
wire    ap_block_pp0_stage6;
wire   [31:0] or_ln118_s_fu_887_p3;
wire   [31:0] add_ln118_13_fu_893_p2;
wire   [31:0] add_ln118_12_fu_914_p2;
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
wire   [4:0] tmp_12_fu_428_p1;
wire   [4:0] tmp_12_fu_428_p3;
wire   [4:0] tmp_12_fu_428_p5;
wire   [4:0] tmp_12_fu_428_p7;
wire  signed [4:0] tmp_12_fu_428_p9;
wire   [4:0] tmp_13_fu_456_p1;
wire   [4:0] tmp_13_fu_456_p3;
wire   [4:0] tmp_13_fu_456_p5;
wire   [4:0] tmp_13_fu_456_p7;
wire  signed [4:0] tmp_13_fu_456_p9;
wire   [4:0] tmp_14_fu_484_p1;
wire   [4:0] tmp_14_fu_484_p3;
wire   [4:0] tmp_14_fu_484_p5;
wire   [4:0] tmp_14_fu_484_p7;
wire  signed [4:0] tmp_14_fu_484_p9;
wire   [4:0] tmp_15_fu_512_p1;
wire   [4:0] tmp_15_fu_512_p3;
wire   [4:0] tmp_15_fu_512_p5;
wire   [4:0] tmp_15_fu_512_p7;
wire  signed [4:0] tmp_15_fu_512_p9;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_1_fu_116 = 32'd0;
#0 E_43_fu_120 = 32'd0;
#0 E_44_fu_124 = 32'd0;
#0 B_1_fu_128 = 32'd0;
#0 B_41_fu_132 = 32'd0;
#0 i_1_fu_136 = 5'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h4 ),.din1_WIDTH( 32 ),.CASE2( 5'h8 ),.din2_WIDTH( 32 ),.CASE3( 5'hC ),.din3_WIDTH( 32 ),.CASE4( 5'h10 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_11_5_32_1_1_U100(.din0(tmp_12_fu_428_p2),.din1(tmp_12_fu_428_p4),.din2(tmp_12_fu_428_p6),.din3(tmp_12_fu_428_p8),.din4(W_32_reload),.def(tmp_12_fu_428_p11),.sel(ap_sig_allocacmp_i),.dout(tmp_12_fu_428_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h4 ),.din1_WIDTH( 32 ),.CASE2( 5'h8 ),.din2_WIDTH( 32 ),.CASE3( 5'hC ),.din3_WIDTH( 32 ),.CASE4( 5'h10 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_11_5_32_1_1_U101(.din0(tmp_13_fu_456_p2),.din1(tmp_13_fu_456_p4),.din2(tmp_13_fu_456_p6),.din3(tmp_13_fu_456_p8),.din4(W_33_reload),.def(tmp_13_fu_456_p11),.sel(ap_sig_allocacmp_i),.dout(tmp_13_fu_456_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h4 ),.din1_WIDTH( 32 ),.CASE2( 5'h8 ),.din2_WIDTH( 32 ),.CASE3( 5'hC ),.din3_WIDTH( 32 ),.CASE4( 5'h10 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_11_5_32_1_1_U102(.din0(tmp_14_fu_484_p2),.din1(tmp_14_fu_484_p4),.din2(tmp_14_fu_484_p6),.din3(tmp_14_fu_484_p8),.din4(W_34_reload),.def(tmp_14_fu_484_p11),.sel(ap_sig_allocacmp_i),.dout(tmp_14_fu_484_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h4 ),.din1_WIDTH( 32 ),.CASE2( 5'h8 ),.din2_WIDTH( 32 ),.CASE3( 5'hC ),.din3_WIDTH( 32 ),.CASE4( 5'h10 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_11_5_32_1_1_U103(.din0(tmp_15_fu_512_p2),.din1(tmp_15_fu_512_p4),.din2(tmp_15_fu_512_p6),.din3(tmp_15_fu_512_p8),.din4(W_35_reload),.def(tmp_15_fu_512_p11),.sel(ap_sig_allocacmp_i),.dout(tmp_15_fu_512_p13));
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_1_fu_128 <= B;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln116_reg_1000 == 1'd1))) begin
        B_1_fu_128 <= B_45_fu_863_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            B_41_fu_132 <= A;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            B_41_fu_132 <= A_23_fu_918_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_1_fu_116 <= E;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln116_reg_1000 == 1'd1))) begin
        E_1_fu_116 <= E_47_fu_734_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_43_fu_120 <= D;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln116_reg_1000 == 1'd1))) begin
        E_43_fu_120 <= D_22_fu_754_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_44_fu_124 <= C;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln116_reg_1000 == 1'd1))) begin
        E_44_fu_124 <= C_5_fu_798_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_1_fu_136 <= 5'd0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (icmp_ln116_reg_1000 == 1'd1))) begin
        i_1_fu_136 <= add_ln116_fu_904_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_41_load_reg_1035 <= B_41_fu_132;
        E_43_load_reg_1024 <= E_43_fu_120;
        E_44_load_reg_1029 <= E_44_fu_124;
        lshr_ln118_1_reg_1052 <= {{B_1_fu_128[31:2]}};
        lshr_ln118_2_reg_1062 <= {{temp_32_fu_618_p2[31:27]}};
        lshr_ln118_3_reg_1072 <= {{B_41_fu_132[31:2]}};
        lshr_ln118_5_reg_1082 <= {{temp_32_fu_618_p2[31:2]}};
        temp_32_reg_1041 <= temp_32_fu_618_p2;
        trunc_ln118_1_reg_1047 <= trunc_ln118_1_fu_624_p1;
        trunc_ln118_2_reg_1057 <= trunc_ln118_2_fu_638_p1;
        trunc_ln118_3_reg_1067 <= trunc_ln118_3_fu_652_p1;
        trunc_ln118_5_reg_1077 <= trunc_ln118_5_fu_666_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        C_38_reg_1092 <= C_38_fu_697_p3;
        E_47_reg_1098 <= E_47_fu_734_p3;
        lshr_ln118_4_reg_1108 <= {{temp_33_fu_729_p2[31:27]}};
        or_ln118_5_reg_1113 <= or_ln118_5_fu_778_p2;
        trunc_ln118_4_reg_1103 <= trunc_ln118_4_fu_740_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln118_10_reg_1118 <= add_ln118_10_fu_833_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln118_14_reg_1133 <= add_ln118_14_fu_899_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln118_6_reg_1087 <= add_ln118_6_fu_692_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_reg_995 <= ap_sig_allocacmp_i;
        icmp_ln116_reg_1000 <= icmp_ln116_fu_422_p2;
        tmp_12_reg_1004 <= tmp_12_fu_428_p13;
        tmp_13_reg_1009 <= tmp_13_fu_456_p13;
        tmp_14_reg_1014 <= tmp_14_fu_484_p13;
        tmp_15_reg_1019 <= tmp_15_fu_512_p13;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        lshr_ln118_6_reg_1128 <= {{B_45_fu_863_p2[31:27]}};
        trunc_ln118_6_reg_1123 <= trunc_ln118_6_fu_868_p1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_fu_422_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        A_45_out_ap_vld = 1'b1;
    end else begin
        A_45_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_fu_422_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_1_out_ap_vld = 1'b1;
    end else begin
        B_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_fu_422_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        C_41_out_ap_vld = 1'b1;
    end else begin
        C_41_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_fu_422_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        D_45_out_ap_vld = 1'b1;
    end else begin
        D_45_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_fu_422_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_1_out_ap_vld = 1'b1;
    end else begin
        E_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln116_fu_422_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i = i_1_fu_136;
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
assign A_23_fu_918_p2 = (add_ln118_14_reg_1133 + add_ln118_12_fu_914_p2);
assign A_45_out = B_41_fu_132;
assign B_1_out = B_1_fu_128;
assign B_45_fu_863_p2 = (add_ln118_10_reg_1118 + add_ln118_8_fu_858_p2);
assign C_38_fu_697_p3 = {{trunc_ln118_1_reg_1047}, {lshr_ln118_1_reg_1052}};
assign C_41_out = E_44_fu_124;
assign C_5_fu_798_p3 = {{trunc_ln118_7_fu_784_p1}, {lshr_ln118_7_fu_788_p4}};
assign D_22_fu_754_p3 = {{trunc_ln118_5_reg_1077}, {lshr_ln118_5_reg_1082}};
assign D_45_out = E_43_fu_120;
assign E_1_out = E_1_fu_116;
assign E_47_fu_734_p3 = {{trunc_ln118_3_reg_1067}, {lshr_ln118_3_reg_1072}};
assign add_ln116_fu_904_p2 = (i_reg_995 + 5'd4);
assign add_ln118_10_fu_833_p2 = (add_ln118_9_fu_827_p2 + E_44_load_reg_1029);
assign add_ln118_12_fu_914_p2 = (C_38_reg_1092 + tmp_15_reg_1019);
assign add_ln118_13_fu_893_p2 = (or_ln118_s_fu_887_p3 + 32'd1518500249);
assign add_ln118_14_fu_899_p2 = (add_ln118_13_fu_893_p2 + or_ln118_5_reg_1113);
assign add_ln118_1_fu_601_p2 = (tmp_12_reg_1004 + 32'd1518500249);
assign add_ln118_2_fu_606_p2 = (add_ln118_1_fu_601_p2 + or_ln118_1_fu_593_p3);
assign add_ln118_4_fu_724_p2 = (tmp_13_reg_1009 + or_ln118_2_fu_718_p2);
assign add_ln118_5_fu_686_p2 = (or_ln118_4_fu_680_p3 + 32'd1518500249);
assign add_ln118_6_fu_692_p2 = (add_ln118_5_fu_686_p2 + E_43_load_reg_1024);
assign add_ln118_8_fu_858_p2 = (or_ln118_3_fu_852_p2 + tmp_14_reg_1014);
assign add_ln118_9_fu_827_p2 = (or_ln118_7_fu_821_p3 + 32'd1518500249);
assign add_ln118_fu_612_p2 = (or_ln118_fu_587_p2 + E_1_fu_116);
assign and_ln118_1_fu_581_p2 = (xor_ln118_fu_569_p2 & E_43_fu_120);
assign and_ln118_2_fu_708_p2 = (C_38_fu_697_p3 & B_41_load_reg_1035);
assign and_ln118_3_fu_713_p2 = (xor_ln118_1_fu_703_p2 & E_44_load_reg_1029);
assign and_ln118_4_fu_843_p2 = (temp_32_reg_1041 & E_47_reg_1098);
assign and_ln118_5_fu_847_p2 = (xor_ln118_2_fu_838_p2 & C_38_reg_1092);
assign and_ln118_6_fu_766_p2 = (temp_33_fu_729_p2 & D_22_fu_754_p3);
assign and_ln118_7_fu_772_p2 = (xor_ln118_3_fu_760_p2 & E_47_fu_734_p3);
assign and_ln118_fu_575_p2 = (E_44_fu_124 & B_1_fu_128);
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
assign icmp_ln116_fu_422_p2 = ((ap_sig_allocacmp_i < 5'd20) ? 1'b1 : 1'b0);
assign lshr_ln118_7_fu_788_p4 = {{temp_33_fu_729_p2[31:2]}};
assign lshr_ln_fu_559_p4 = {{B_41_fu_132[31:27]}};
assign or_ln118_1_fu_593_p3 = {{trunc_ln118_fu_555_p1}, {lshr_ln_fu_559_p4}};
assign or_ln118_2_fu_718_p2 = (and_ln118_3_fu_713_p2 | and_ln118_2_fu_708_p2);
assign or_ln118_3_fu_852_p2 = (and_ln118_5_fu_847_p2 | and_ln118_4_fu_843_p2);
assign or_ln118_4_fu_680_p3 = {{trunc_ln118_2_reg_1057}, {lshr_ln118_2_reg_1062}};
assign or_ln118_5_fu_778_p2 = (and_ln118_7_fu_772_p2 | and_ln118_6_fu_766_p2);
assign or_ln118_7_fu_821_p3 = {{trunc_ln118_4_reg_1103}, {lshr_ln118_4_reg_1108}};
assign or_ln118_fu_587_p2 = (and_ln118_fu_575_p2 | and_ln118_1_fu_581_p2);
assign or_ln118_s_fu_887_p3 = {{trunc_ln118_6_reg_1123}, {lshr_ln118_6_reg_1128}};
assign temp_32_fu_618_p2 = (add_ln118_fu_612_p2 + add_ln118_2_fu_606_p2);
assign temp_33_fu_729_p2 = (add_ln118_6_reg_1087 + add_ln118_4_fu_724_p2);
assign tmp_12_fu_428_p11 = 'bx;
assign tmp_12_fu_428_p2 = zext_ln104;
assign tmp_12_fu_428_p4 = zext_ln104_4;
assign tmp_12_fu_428_p6 = zext_ln104_8;
assign tmp_12_fu_428_p8 = zext_ln104_12;
assign tmp_13_fu_456_p11 = 'bx;
assign tmp_13_fu_456_p2 = zext_ln104_1;
assign tmp_13_fu_456_p4 = zext_ln104_5;
assign tmp_13_fu_456_p6 = zext_ln104_9;
assign tmp_13_fu_456_p8 = zext_ln104_13;
assign tmp_14_fu_484_p11 = 'bx;
assign tmp_14_fu_484_p2 = zext_ln104_2;
assign tmp_14_fu_484_p4 = zext_ln104_6;
assign tmp_14_fu_484_p6 = zext_ln104_10;
assign tmp_14_fu_484_p8 = zext_ln104_14;
assign tmp_15_fu_512_p11 = 'bx;
assign tmp_15_fu_512_p2 = zext_ln104_3;
assign tmp_15_fu_512_p4 = zext_ln104_7;
assign tmp_15_fu_512_p6 = zext_ln104_11;
assign tmp_15_fu_512_p8 = zext_ln100;
assign trunc_ln118_1_fu_624_p1 = B_1_fu_128[1:0];
assign trunc_ln118_2_fu_638_p1 = temp_32_fu_618_p2[26:0];
assign trunc_ln118_3_fu_652_p1 = B_41_fu_132[1:0];
assign trunc_ln118_4_fu_740_p1 = temp_33_fu_729_p2[26:0];
assign trunc_ln118_5_fu_666_p1 = temp_32_fu_618_p2[1:0];
assign trunc_ln118_6_fu_868_p1 = B_45_fu_863_p2[26:0];
assign trunc_ln118_7_fu_784_p1 = temp_33_fu_729_p2[1:0];
assign trunc_ln118_fu_555_p1 = B_41_fu_132[26:0];
assign xor_ln118_1_fu_703_p2 = (32'd4294967295 ^ B_41_load_reg_1035);
assign xor_ln118_2_fu_838_p2 = (temp_32_reg_1041 ^ 32'd4294967295);
assign xor_ln118_3_fu_760_p2 = (temp_33_fu_729_p2 ^ 32'd4294967295);
assign xor_ln118_fu_569_p2 = (32'd4294967295 ^ B_1_fu_128);
endmodule 