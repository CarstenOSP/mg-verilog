module sha_stream_sha_transform_Pipeline_trans_lp4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_50_reload,B_1_reload,C_51_reload,D_51_reload,E_1_reload,W_20_load_3,W_24_load_3,W_28_load_3,W_32_load_3,W_36_load_3,W_21_load_4,W_25_load_4,W_29_load_4,W_33_load_4,W_37_load_4,W_22_load_3,W_26_load_3,W_30_load_3,W_34_load_3,W_38_load_3,W_23_load_3,W_27_load_3,W_31_load_3,W_35_load_3,W_39_load_3,A_51_out,A_51_out_ap_vld,B_6_out,B_6_out_ap_vld,C_55_out,C_55_out_ap_vld,D_52_out,D_52_out_ap_vld,E_6_out,E_6_out_ap_vld); 
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
input  [31:0] A_50_reload;
input  [31:0] B_1_reload;
input  [31:0] C_51_reload;
input  [31:0] D_51_reload;
input  [31:0] E_1_reload;
input  [31:0] W_20_load_3;
input  [31:0] W_24_load_3;
input  [31:0] W_28_load_3;
input  [31:0] W_32_load_3;
input  [31:0] W_36_load_3;
input  [31:0] W_21_load_4;
input  [31:0] W_25_load_4;
input  [31:0] W_29_load_4;
input  [31:0] W_33_load_4;
input  [31:0] W_37_load_4;
input  [31:0] W_22_load_3;
input  [31:0] W_26_load_3;
input  [31:0] W_30_load_3;
input  [31:0] W_34_load_3;
input  [31:0] W_38_load_3;
input  [31:0] W_23_load_3;
input  [31:0] W_27_load_3;
input  [31:0] W_31_load_3;
input  [31:0] W_35_load_3;
input  [31:0] W_39_load_3;
output  [31:0] A_51_out;
output   A_51_out_ap_vld;
output  [31:0] B_6_out;
output   B_6_out_ap_vld;
output  [31:0] C_55_out;
output   C_55_out_ap_vld;
output  [31:0] D_52_out;
output   D_52_out_ap_vld;
output  [31:0] E_6_out;
output   E_6_out_ap_vld;
reg ap_idle;
reg A_51_out_ap_vld;
reg B_6_out_ap_vld;
reg C_55_out_ap_vld;
reg D_52_out_ap_vld;
reg E_6_out_ap_vld;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln120_fu_358_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [5:0] i_1_reg_885;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln120_reg_890;
wire   [31:0] tmp_s_fu_364_p13;
reg   [31:0] tmp_s_reg_894;
wire   [31:0] tmp_1_fu_392_p13;
reg   [31:0] tmp_1_reg_899;
wire   [31:0] tmp_2_fu_420_p13;
reg   [31:0] tmp_2_reg_904;
wire   [31:0] tmp_3_fu_448_p13;
reg   [31:0] tmp_3_reg_909;
reg   [31:0] E_1_load_reg_914;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] B_1_load_reg_919;
reg   [31:0] E_2_load_reg_924;
wire   [31:0] temp_fu_542_p2;
reg   [31:0] temp_reg_930;
wire   [1:0] trunc_ln122_1_fu_548_p1;
reg   [1:0] trunc_ln122_1_reg_935;
reg   [29:0] lshr_ln122_1_reg_940;
wire   [26:0] trunc_ln122_2_fu_562_p1;
reg   [26:0] trunc_ln122_2_reg_945;
reg   [4:0] lshr_ln122_2_reg_950;
wire   [1:0] trunc_ln122_3_fu_576_p1;
reg   [1:0] trunc_ln122_3_reg_955;
reg   [29:0] lshr_ln122_3_reg_960;
wire   [1:0] trunc_ln122_5_fu_590_p1;
reg   [1:0] trunc_ln122_5_reg_965;
reg   [29:0] lshr_ln122_5_reg_970;
wire   [31:0] add_ln122_6_fu_616_p2;
reg   [31:0] add_ln122_6_reg_975;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] C_fu_621_p3;
reg   [31:0] C_reg_980;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] C_3_fu_647_p3;
reg   [31:0] C_3_reg_986;
wire   [26:0] trunc_ln122_4_fu_653_p1;
reg   [26:0] trunc_ln122_4_reg_991;
reg   [4:0] lshr_ln122_4_reg_996;
wire   [31:0] xor_ln122_7_fu_679_p2;
reg   [31:0] xor_ln122_7_reg_1001;
wire   [31:0] add_ln122_10_fu_734_p2;
reg   [31:0] add_ln122_10_reg_1006;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [26:0] trunc_ln122_6_fu_758_p1;
reg   [26:0] trunc_ln122_6_reg_1011;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [4:0] lshr_ln122_6_reg_1016;
wire   [31:0] add_ln122_14_fu_789_p2;
reg   [31:0] add_ln122_14_reg_1021;
wire    ap_block_pp0_stage6_11001;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [31:0] E_fu_116;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
reg   [31:0] E_1_fu_120;
wire   [31:0] C_4_fu_667_p3;
reg   [31:0] B_fu_124;
wire   [31:0] temp_2_fu_753_p2;
reg   [31:0] B_1_fu_128;
wire   [31:0] temp_3_fu_808_p2;
reg   [31:0] E_2_fu_132;
wire   [31:0] C_2_fu_699_p3;
reg   [5:0] i_fu_136;
wire   [5:0] add_ln120_fu_794_p2;
reg   [5:0] ap_sig_allocacmp_i_1;
wire    ap_block_pp0_stage0_01001;
wire   [31:0] tmp_s_fu_364_p11;
wire   [31:0] tmp_1_fu_392_p11;
wire   [31:0] tmp_2_fu_420_p11;
wire   [31:0] tmp_3_fu_448_p11;
wire   [31:0] xor_ln122_fu_505_p2;
wire   [26:0] trunc_ln122_fu_491_p1;
wire   [4:0] lshr_ln3_fu_495_p4;
wire   [31:0] add_ln122_1_fu_525_p2;
wire   [31:0] or_ln_fu_517_p3;
wire   [31:0] xor_ln122_1_fu_511_p2;
wire   [31:0] add_ln122_fu_536_p2;
wire   [31:0] add_ln122_2_fu_530_p2;
wire    ap_block_pp0_stage2;
wire   [31:0] or_ln122_2_fu_604_p3;
wire   [31:0] add_ln122_5_fu_610_p2;
wire    ap_block_pp0_stage3;
wire   [31:0] xor_ln122_2_fu_627_p2;
wire   [31:0] xor_ln122_3_fu_632_p2;
wire   [31:0] add_ln122_4_fu_637_p2;
wire   [31:0] temp_1_fu_642_p2;
wire   [31:0] xor_ln122_6_fu_673_p2;
wire   [1:0] trunc_ln122_7_fu_685_p1;
wire   [29:0] lshr_ln122_7_fu_689_p4;
wire    ap_block_pp0_stage4;
wire   [31:0] or_ln122_4_fu_722_p3;
wire   [31:0] add_ln122_9_fu_728_p2;
wire    ap_block_pp0_stage5;
wire   [31:0] xor_ln122_4_fu_739_p2;
wire   [31:0] xor_ln122_5_fu_743_p2;
wire   [31:0] add_ln122_8_fu_748_p2;
wire    ap_block_pp0_stage6;
wire   [31:0] or_ln122_6_fu_777_p3;
wire   [31:0] add_ln122_13_fu_783_p2;
wire   [31:0] add_ln122_12_fu_804_p2;
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
wire   [5:0] tmp_s_fu_364_p1;
wire   [5:0] tmp_s_fu_364_p3;
wire   [5:0] tmp_s_fu_364_p5;
wire  signed [5:0] tmp_s_fu_364_p7;
wire  signed [5:0] tmp_s_fu_364_p9;
wire   [5:0] tmp_1_fu_392_p1;
wire   [5:0] tmp_1_fu_392_p3;
wire   [5:0] tmp_1_fu_392_p5;
wire  signed [5:0] tmp_1_fu_392_p7;
wire  signed [5:0] tmp_1_fu_392_p9;
wire   [5:0] tmp_2_fu_420_p1;
wire   [5:0] tmp_2_fu_420_p3;
wire   [5:0] tmp_2_fu_420_p5;
wire  signed [5:0] tmp_2_fu_420_p7;
wire  signed [5:0] tmp_2_fu_420_p9;
wire   [5:0] tmp_3_fu_448_p1;
wire   [5:0] tmp_3_fu_448_p3;
wire   [5:0] tmp_3_fu_448_p5;
wire  signed [5:0] tmp_3_fu_448_p7;
wire  signed [5:0] tmp_3_fu_448_p9;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_fu_116 = 32'd0;
#0 E_1_fu_120 = 32'd0;
#0 B_fu_124 = 32'd0;
#0 B_1_fu_128 = 32'd0;
#0 E_2_fu_132 = 32'd0;
#0 i_fu_136 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h14 ),.din0_WIDTH( 32 ),.CASE1( 6'h18 ),.din1_WIDTH( 32 ),.CASE2( 6'h1C ),.din2_WIDTH( 32 ),.CASE3( 6'h20 ),.din3_WIDTH( 32 ),.CASE4( 6'h24 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_11_6_32_1_1_U122(.din0(W_20_load_3),.din1(W_24_load_3),.din2(W_28_load_3),.din3(W_32_load_3),.din4(W_36_load_3),.def(tmp_s_fu_364_p11),.sel(ap_sig_allocacmp_i_1),.dout(tmp_s_fu_364_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h14 ),.din0_WIDTH( 32 ),.CASE1( 6'h18 ),.din1_WIDTH( 32 ),.CASE2( 6'h1C ),.din2_WIDTH( 32 ),.CASE3( 6'h20 ),.din3_WIDTH( 32 ),.CASE4( 6'h24 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_11_6_32_1_1_U123(.din0(W_21_load_4),.din1(W_25_load_4),.din2(W_29_load_4),.din3(W_33_load_4),.din4(W_37_load_4),.def(tmp_1_fu_392_p11),.sel(ap_sig_allocacmp_i_1),.dout(tmp_1_fu_392_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h14 ),.din0_WIDTH( 32 ),.CASE1( 6'h18 ),.din1_WIDTH( 32 ),.CASE2( 6'h1C ),.din2_WIDTH( 32 ),.CASE3( 6'h20 ),.din3_WIDTH( 32 ),.CASE4( 6'h24 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_11_6_32_1_1_U124(.din0(W_22_load_3),.din1(W_26_load_3),.din2(W_30_load_3),.din3(W_34_load_3),.din4(W_38_load_3),.def(tmp_2_fu_420_p11),.sel(ap_sig_allocacmp_i_1),.dout(tmp_2_fu_420_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h14 ),.din0_WIDTH( 32 ),.CASE1( 6'h18 ),.din1_WIDTH( 32 ),.CASE2( 6'h1C ),.din2_WIDTH( 32 ),.CASE3( 6'h20 ),.din3_WIDTH( 32 ),.CASE4( 6'h24 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_11_6_32_1_1_U125(.din0(W_23_load_3),.din1(W_27_load_3),.din2(W_31_load_3),.din3(W_35_load_3),.din4(W_39_load_3),.def(tmp_3_fu_448_p11),.sel(ap_sig_allocacmp_i_1),.dout(tmp_3_fu_448_p13));
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
            B_1_fu_128 <= A_50_reload;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            B_1_fu_128 <= temp_3_fu_808_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_fu_124 <= B_1_reload;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln120_reg_890 == 1'd1))) begin
        B_fu_124 <= temp_2_fu_753_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_1_fu_120 <= D_51_reload;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln120_reg_890 == 1'd1))) begin
        E_1_fu_120 <= C_4_fu_667_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_2_fu_132 <= C_51_reload;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln120_reg_890 == 1'd1))) begin
        E_2_fu_132 <= C_2_fu_699_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_fu_116 <= E_1_reload;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln120_reg_890 == 1'd1))) begin
        E_fu_116 <= C_3_fu_647_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_136 <= 6'd20;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (icmp_ln120_reg_890 == 1'd1))) begin
        i_fu_136 <= add_ln120_fu_794_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_1_load_reg_919 <= B_1_fu_128;
        E_1_load_reg_914 <= E_1_fu_120;
        E_2_load_reg_924 <= E_2_fu_132;
        lshr_ln122_1_reg_940 <= {{B_fu_124[31:2]}};
        lshr_ln122_2_reg_950 <= {{temp_fu_542_p2[31:27]}};
        lshr_ln122_3_reg_960 <= {{B_1_fu_128[31:2]}};
        lshr_ln122_5_reg_970 <= {{temp_fu_542_p2[31:2]}};
        temp_reg_930 <= temp_fu_542_p2;
        trunc_ln122_1_reg_935 <= trunc_ln122_1_fu_548_p1;
        trunc_ln122_2_reg_945 <= trunc_ln122_2_fu_562_p1;
        trunc_ln122_3_reg_955 <= trunc_ln122_3_fu_576_p1;
        trunc_ln122_5_reg_965 <= trunc_ln122_5_fu_590_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        C_3_reg_986 <= C_3_fu_647_p3;
        C_reg_980 <= C_fu_621_p3;
        lshr_ln122_4_reg_996 <= {{temp_1_fu_642_p2[31:27]}};
        trunc_ln122_4_reg_991 <= trunc_ln122_4_fu_653_p1;
        xor_ln122_7_reg_1001 <= xor_ln122_7_fu_679_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln122_10_reg_1006 <= add_ln122_10_fu_734_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln122_14_reg_1021 <= add_ln122_14_fu_789_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln122_6_reg_975 <= add_ln122_6_fu_616_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_1_reg_885 <= ap_sig_allocacmp_i_1;
        icmp_ln120_reg_890 <= icmp_ln120_fu_358_p2;
        tmp_1_reg_899 <= tmp_1_fu_392_p13;
        tmp_2_reg_904 <= tmp_2_fu_420_p13;
        tmp_3_reg_909 <= tmp_3_fu_448_p13;
        tmp_s_reg_894 <= tmp_s_fu_364_p13;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        lshr_ln122_6_reg_1016 <= {{temp_2_fu_753_p2[31:27]}};
        trunc_ln122_6_reg_1011 <= trunc_ln122_6_fu_758_p1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_fu_358_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        A_51_out_ap_vld = 1'b1;
    end else begin
        A_51_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_fu_358_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_6_out_ap_vld = 1'b1;
    end else begin
        B_6_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_fu_358_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        C_55_out_ap_vld = 1'b1;
    end else begin
        C_55_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_fu_358_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        D_52_out_ap_vld = 1'b1;
    end else begin
        D_52_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_fu_358_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_6_out_ap_vld = 1'b1;
    end else begin
        E_6_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln120_fu_358_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i_1 = 6'd20;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_136;
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
assign A_51_out = B_1_fu_128;
assign B_6_out = B_fu_124;
assign C_2_fu_699_p3 = {{trunc_ln122_7_fu_685_p1}, {lshr_ln122_7_fu_689_p4}};
assign C_3_fu_647_p3 = {{trunc_ln122_3_reg_955}, {lshr_ln122_3_reg_960}};
assign C_4_fu_667_p3 = {{trunc_ln122_5_reg_965}, {lshr_ln122_5_reg_970}};
assign C_55_out = E_2_fu_132;
assign C_fu_621_p3 = {{trunc_ln122_1_reg_935}, {lshr_ln122_1_reg_940}};
assign D_52_out = E_1_fu_120;
assign E_6_out = E_fu_116;
assign add_ln120_fu_794_p2 = (i_1_reg_885 + 6'd4);
assign add_ln122_10_fu_734_p2 = (add_ln122_9_fu_728_p2 + E_2_load_reg_924);
assign add_ln122_12_fu_804_p2 = (C_reg_980 + tmp_3_reg_909);
assign add_ln122_13_fu_783_p2 = (or_ln122_6_fu_777_p3 + 32'd1859775393);
assign add_ln122_14_fu_789_p2 = (add_ln122_13_fu_783_p2 + xor_ln122_7_reg_1001);
assign add_ln122_1_fu_525_p2 = (tmp_s_reg_894 + 32'd1859775393);
assign add_ln122_2_fu_530_p2 = (add_ln122_1_fu_525_p2 + or_ln_fu_517_p3);
assign add_ln122_4_fu_637_p2 = (tmp_1_reg_899 + xor_ln122_3_fu_632_p2);
assign add_ln122_5_fu_610_p2 = (or_ln122_2_fu_604_p3 + 32'd1859775393);
assign add_ln122_6_fu_616_p2 = (add_ln122_5_fu_610_p2 + E_1_load_reg_914);
assign add_ln122_8_fu_748_p2 = (xor_ln122_5_fu_743_p2 + tmp_2_reg_904);
assign add_ln122_9_fu_728_p2 = (or_ln122_4_fu_722_p3 + 32'd1859775393);
assign add_ln122_fu_536_p2 = (xor_ln122_1_fu_511_p2 + E_fu_116);
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
assign icmp_ln120_fu_358_p2 = ((ap_sig_allocacmp_i_1 < 6'd40) ? 1'b1 : 1'b0);
assign lshr_ln122_7_fu_689_p4 = {{temp_1_fu_642_p2[31:2]}};
assign lshr_ln3_fu_495_p4 = {{B_1_fu_128[31:27]}};
assign or_ln122_2_fu_604_p3 = {{trunc_ln122_2_reg_945}, {lshr_ln122_2_reg_950}};
assign or_ln122_4_fu_722_p3 = {{trunc_ln122_4_reg_991}, {lshr_ln122_4_reg_996}};
assign or_ln122_6_fu_777_p3 = {{trunc_ln122_6_reg_1011}, {lshr_ln122_6_reg_1016}};
assign or_ln_fu_517_p3 = {{trunc_ln122_fu_491_p1}, {lshr_ln3_fu_495_p4}};
assign temp_1_fu_642_p2 = (add_ln122_6_reg_975 + add_ln122_4_fu_637_p2);
assign temp_2_fu_753_p2 = (add_ln122_10_reg_1006 + add_ln122_8_fu_748_p2);
assign temp_3_fu_808_p2 = (add_ln122_14_reg_1021 + add_ln122_12_fu_804_p2);
assign temp_fu_542_p2 = (add_ln122_fu_536_p2 + add_ln122_2_fu_530_p2);
assign tmp_1_fu_392_p11 = 'bx;
assign tmp_2_fu_420_p11 = 'bx;
assign tmp_3_fu_448_p11 = 'bx;
assign tmp_s_fu_364_p11 = 'bx;
assign trunc_ln122_1_fu_548_p1 = B_fu_124[1:0];
assign trunc_ln122_2_fu_562_p1 = temp_fu_542_p2[26:0];
assign trunc_ln122_3_fu_576_p1 = B_1_fu_128[1:0];
assign trunc_ln122_4_fu_653_p1 = temp_1_fu_642_p2[26:0];
assign trunc_ln122_5_fu_590_p1 = temp_fu_542_p2[1:0];
assign trunc_ln122_6_fu_758_p1 = temp_2_fu_753_p2[26:0];
assign trunc_ln122_7_fu_685_p1 = temp_1_fu_642_p2[1:0];
assign trunc_ln122_fu_491_p1 = B_1_fu_128[26:0];
assign xor_ln122_1_fu_511_p2 = (xor_ln122_fu_505_p2 ^ E_2_fu_132);
assign xor_ln122_2_fu_627_p2 = (C_fu_621_p3 ^ B_1_load_reg_919);
assign xor_ln122_3_fu_632_p2 = (xor_ln122_2_fu_627_p2 ^ E_2_load_reg_924);
assign xor_ln122_4_fu_739_p2 = (temp_reg_930 ^ C_3_reg_986);
assign xor_ln122_5_fu_743_p2 = (xor_ln122_4_fu_739_p2 ^ C_reg_980);
assign xor_ln122_6_fu_673_p2 = (temp_1_fu_642_p2 ^ C_3_fu_647_p3);
assign xor_ln122_7_fu_679_p2 = (xor_ln122_6_fu_673_p2 ^ C_4_fu_667_p3);
assign xor_ln122_fu_505_p2 = (E_1_fu_120 ^ B_fu_124);
endmodule 