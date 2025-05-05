module sha_stream_sha_transform_Pipeline_trans_lp5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_20_reload,B_14_reload,C_17_reload,D_20_reload,E_14_reload,W_40_load_2,W_44_load_2,W_48_load_2,W_52_load_2,W_56_load_2,W_41_load_2,W_45_load_2,W_49_load_2,W_53_load_2,W_57_load_2,W_42_load_2,W_46_load_2,W_50_load_2,W_54_load_2,W_58_load_2,W_43_load_2,W_47_load_2,W_51_load_2,W_55_load_2,W_59_load_2,A_31_out,A_31_out_ap_vld,B_19_out,B_19_out_ap_vld,C_28_out,C_28_out_ap_vld,D_31_out,D_31_out_ap_vld,E_19_out,E_19_out_ap_vld); 
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
input  [31:0] A_20_reload;
input  [31:0] B_14_reload;
input  [31:0] C_17_reload;
input  [31:0] D_20_reload;
input  [31:0] E_14_reload;
input  [31:0] W_40_load_2;
input  [31:0] W_44_load_2;
input  [31:0] W_48_load_2;
input  [31:0] W_52_load_2;
input  [31:0] W_56_load_2;
input  [31:0] W_41_load_2;
input  [31:0] W_45_load_2;
input  [31:0] W_49_load_2;
input  [31:0] W_53_load_2;
input  [31:0] W_57_load_2;
input  [31:0] W_42_load_2;
input  [31:0] W_46_load_2;
input  [31:0] W_50_load_2;
input  [31:0] W_54_load_2;
input  [31:0] W_58_load_2;
input  [31:0] W_43_load_2;
input  [31:0] W_47_load_2;
input  [31:0] W_51_load_2;
input  [31:0] W_55_load_2;
input  [31:0] W_59_load_2;
output  [31:0] A_31_out;
output   A_31_out_ap_vld;
output  [31:0] B_19_out;
output   B_19_out_ap_vld;
output  [31:0] C_28_out;
output   C_28_out_ap_vld;
output  [31:0] D_31_out;
output   D_31_out_ap_vld;
output  [31:0] E_19_out;
output   E_19_out_ap_vld;
reg ap_idle;
reg A_31_out_ap_vld;
reg B_19_out_ap_vld;
reg C_28_out_ap_vld;
reg D_31_out_ap_vld;
reg E_19_out_ap_vld;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln124_fu_358_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [5:0] i_2_reg_930;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln124_reg_935;
wire   [31:0] tmp_s_fu_364_p13;
reg   [31:0] tmp_s_reg_939;
wire   [31:0] tmp_4_fu_392_p13;
reg   [31:0] tmp_4_reg_944;
wire   [31:0] tmp_5_fu_420_p13;
reg   [31:0] tmp_5_reg_949;
wire   [31:0] tmp_6_fu_448_p13;
reg   [31:0] tmp_6_reg_954;
reg   [31:0] E_5_load_1_reg_959;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] E_6_load_1_reg_964;
reg   [31:0] B_5_load_1_reg_971;
wire   [31:0] temp_4_fu_554_p2;
reg   [31:0] temp_4_reg_976;
wire   [1:0] trunc_ln126_1_fu_560_p1;
reg   [1:0] trunc_ln126_1_reg_981;
reg   [29:0] lshr_ln126_1_reg_986;
wire   [26:0] trunc_ln126_2_fu_574_p1;
reg   [26:0] trunc_ln126_2_reg_991;
reg   [4:0] lshr_ln126_2_reg_996;
wire   [1:0] trunc_ln126_3_fu_588_p1;
reg   [1:0] trunc_ln126_3_reg_1001;
reg   [29:0] lshr_ln126_3_reg_1006;
wire   [1:0] trunc_ln126_5_fu_602_p1;
reg   [1:0] trunc_ln126_5_reg_1011;
reg   [29:0] lshr_ln126_5_reg_1016;
wire   [31:0] add_ln126_6_fu_627_p2;
reg   [31:0] add_ln126_6_reg_1021;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] C_7_fu_633_p3;
reg   [31:0] C_7_reg_1026;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] E_9_fu_670_p3;
reg   [31:0] E_9_reg_1033;
wire   [26:0] trunc_ln126_4_fu_676_p1;
reg   [26:0] trunc_ln126_4_reg_1039;
reg   [4:0] lshr_ln126_4_reg_1044;
wire   [31:0] or_ln126_9_fu_714_p2;
reg   [31:0] or_ln126_9_reg_1049;
wire   [31:0] add_ln126_10_fu_768_p2;
reg   [31:0] add_ln126_10_reg_1054;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [26:0] trunc_ln126_6_fu_803_p1;
reg   [26:0] trunc_ln126_6_reg_1059;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [4:0] lshr_ln126_6_reg_1064;
wire   [31:0] add_ln126_14_fu_832_p2;
reg   [31:0] add_ln126_14_reg_1069;
wire    ap_block_pp0_stage6_11001;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [31:0] E_fu_116;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
reg   [31:0] E_5_fu_120;
wire   [31:0] D_fu_690_p3;
reg   [31:0] B_fu_124;
wire   [31:0] B_9_fu_798_p2;
reg   [31:0] E_6_fu_128;
wire   [31:0] C_6_fu_734_p3;
reg   [31:0] B_5_fu_132;
wire   [31:0] A_fu_853_p2;
reg   [5:0] i_fu_136;
wire   [5:0] add_ln124_fu_838_p2;
reg   [5:0] ap_sig_allocacmp_i_2;
wire    ap_block_pp0_stage0_01001;
wire   [31:0] tmp_s_fu_364_p11;
wire   [31:0] tmp_4_fu_392_p11;
wire   [31:0] tmp_5_fu_420_p11;
wire   [31:0] tmp_6_fu_448_p11;
wire   [31:0] or_ln126_fu_505_p2;
wire   [31:0] and_ln126_fu_511_p2;
wire   [31:0] and_ln126_1_fu_517_p2;
wire   [26:0] trunc_ln126_fu_491_p1;
wire   [4:0] lshr_ln4_fu_495_p4;
wire   [31:0] or_ln126_2_fu_529_p3;
wire   [31:0] add_ln126_1_fu_537_p2;
wire   [31:0] or_ln126_1_fu_523_p2;
wire   [31:0] add_ln126_fu_548_p2;
wire   [31:0] add_ln126_2_fu_542_p2;
wire    ap_block_pp0_stage2;
wire   [31:0] or_ln126_6_fu_616_p3;
wire   [31:0] add_ln126_5_fu_622_p2;
wire    ap_block_pp0_stage3;
wire   [31:0] or_ln126_3_fu_639_p2;
wire   [31:0] and_ln126_2_fu_644_p2;
wire   [31:0] and_ln126_3_fu_649_p2;
wire   [31:0] or_ln126_4_fu_654_p2;
wire   [31:0] add_ln126_4_fu_660_p2;
wire   [31:0] temp_5_fu_665_p2;
wire   [31:0] or_ln126_8_fu_696_p2;
wire   [31:0] and_ln126_6_fu_702_p2;
wire   [31:0] and_ln126_7_fu_708_p2;
wire   [1:0] trunc_ln126_7_fu_720_p1;
wire   [29:0] lshr_ln126_7_fu_724_p4;
wire    ap_block_pp0_stage4;
wire   [31:0] or_ln126_s_fu_757_p3;
wire   [31:0] add_ln126_9_fu_763_p2;
wire    ap_block_pp0_stage5;
wire   [31:0] or_ln126_5_fu_774_p2;
wire   [31:0] and_ln126_4_fu_778_p2;
wire   [31:0] and_ln126_5_fu_783_p2;
wire   [31:0] or_ln126_7_fu_787_p2;
wire   [31:0] add_ln126_8_fu_793_p2;
wire    ap_block_pp0_stage6;
wire   [31:0] or_ln126_10_fu_822_p3;
wire   [31:0] add_ln126_13_fu_828_p2;
wire   [31:0] add_ln126_12_fu_848_p2;
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
wire  signed [5:0] tmp_s_fu_364_p1;
wire  signed [5:0] tmp_s_fu_364_p3;
wire  signed [5:0] tmp_s_fu_364_p5;
wire  signed [5:0] tmp_s_fu_364_p7;
wire  signed [5:0] tmp_s_fu_364_p9;
wire  signed [5:0] tmp_4_fu_392_p1;
wire  signed [5:0] tmp_4_fu_392_p3;
wire  signed [5:0] tmp_4_fu_392_p5;
wire  signed [5:0] tmp_4_fu_392_p7;
wire  signed [5:0] tmp_4_fu_392_p9;
wire  signed [5:0] tmp_5_fu_420_p1;
wire  signed [5:0] tmp_5_fu_420_p3;
wire  signed [5:0] tmp_5_fu_420_p5;
wire  signed [5:0] tmp_5_fu_420_p7;
wire  signed [5:0] tmp_5_fu_420_p9;
wire  signed [5:0] tmp_6_fu_448_p1;
wire  signed [5:0] tmp_6_fu_448_p3;
wire  signed [5:0] tmp_6_fu_448_p5;
wire  signed [5:0] tmp_6_fu_448_p7;
wire  signed [5:0] tmp_6_fu_448_p9;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_fu_116 = 32'd0;
#0 E_5_fu_120 = 32'd0;
#0 B_fu_124 = 32'd0;
#0 E_6_fu_128 = 32'd0;
#0 B_5_fu_132 = 32'd0;
#0 i_fu_136 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_6_32_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h28 ),.din0_WIDTH( 32 ),.CASE1( 6'h2C ),.din1_WIDTH( 32 ),.CASE2( 6'h30 ),.din2_WIDTH( 32 ),.CASE3( 6'h34 ),.din3_WIDTH( 32 ),.CASE4( 6'h38 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_11_6_32_1_1_x_U174(.din0(W_40_load_2),.din1(W_44_load_2),.din2(W_48_load_2),.din3(W_52_load_2),.din4(W_56_load_2),.def(tmp_s_fu_364_p11),.sel(ap_sig_allocacmp_i_2),.dout(tmp_s_fu_364_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_6_32_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h28 ),.din0_WIDTH( 32 ),.CASE1( 6'h2C ),.din1_WIDTH( 32 ),.CASE2( 6'h30 ),.din2_WIDTH( 32 ),.CASE3( 6'h34 ),.din3_WIDTH( 32 ),.CASE4( 6'h38 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_11_6_32_1_1_x_U175(.din0(W_41_load_2),.din1(W_45_load_2),.din2(W_49_load_2),.din3(W_53_load_2),.din4(W_57_load_2),.def(tmp_4_fu_392_p11),.sel(ap_sig_allocacmp_i_2),.dout(tmp_4_fu_392_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_6_32_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h28 ),.din0_WIDTH( 32 ),.CASE1( 6'h2C ),.din1_WIDTH( 32 ),.CASE2( 6'h30 ),.din2_WIDTH( 32 ),.CASE3( 6'h34 ),.din3_WIDTH( 32 ),.CASE4( 6'h38 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_11_6_32_1_1_x_U176(.din0(W_42_load_2),.din1(W_46_load_2),.din2(W_50_load_2),.din3(W_54_load_2),.din4(W_58_load_2),.def(tmp_5_fu_420_p11),.sel(ap_sig_allocacmp_i_2),.dout(tmp_5_fu_420_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_6_32_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h28 ),.din0_WIDTH( 32 ),.CASE1( 6'h2C ),.din1_WIDTH( 32 ),.CASE2( 6'h30 ),.din2_WIDTH( 32 ),.CASE3( 6'h34 ),.din3_WIDTH( 32 ),.CASE4( 6'h38 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_11_6_32_1_1_x_U177(.din0(W_43_load_2),.din1(W_47_load_2),.din2(W_51_load_2),.din3(W_55_load_2),.din4(W_59_load_2),.def(tmp_6_fu_448_p11),.sel(ap_sig_allocacmp_i_2),.dout(tmp_6_fu_448_p13));
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
            B_5_fu_132 <= A_20_reload;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            B_5_fu_132 <= A_fu_853_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_fu_124 <= B_14_reload;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln124_reg_935 == 1'd0))) begin
        B_fu_124 <= B_9_fu_798_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_5_fu_120 <= D_20_reload;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln124_reg_935 == 1'd0))) begin
        E_5_fu_120 <= D_fu_690_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_6_fu_128 <= C_17_reload;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln124_reg_935 == 1'd0))) begin
        E_6_fu_128 <= C_6_fu_734_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_fu_116 <= E_14_reload;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln124_reg_935 == 1'd0))) begin
        E_fu_116 <= E_9_fu_670_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_136 <= 6'd40;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (icmp_ln124_reg_935 == 1'd0))) begin
        i_fu_136 <= add_ln124_fu_838_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_5_load_1_reg_971 <= B_5_fu_132;
        E_5_load_1_reg_959 <= E_5_fu_120;
        E_6_load_1_reg_964 <= E_6_fu_128;
        lshr_ln126_1_reg_986 <= {{B_fu_124[31:2]}};
        lshr_ln126_2_reg_996 <= {{temp_4_fu_554_p2[31:27]}};
        lshr_ln126_3_reg_1006 <= {{B_5_fu_132[31:2]}};
        lshr_ln126_5_reg_1016 <= {{temp_4_fu_554_p2[31:2]}};
        temp_4_reg_976 <= temp_4_fu_554_p2;
        trunc_ln126_1_reg_981 <= trunc_ln126_1_fu_560_p1;
        trunc_ln126_2_reg_991 <= trunc_ln126_2_fu_574_p1;
        trunc_ln126_3_reg_1001 <= trunc_ln126_3_fu_588_p1;
        trunc_ln126_5_reg_1011 <= trunc_ln126_5_fu_602_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        C_7_reg_1026 <= C_7_fu_633_p3;
        E_9_reg_1033 <= E_9_fu_670_p3;
        lshr_ln126_4_reg_1044 <= {{temp_5_fu_665_p2[31:27]}};
        or_ln126_9_reg_1049 <= or_ln126_9_fu_714_p2;
        trunc_ln126_4_reg_1039 <= trunc_ln126_4_fu_676_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln126_10_reg_1054 <= add_ln126_10_fu_768_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln126_14_reg_1069 <= add_ln126_14_fu_832_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln126_6_reg_1021 <= add_ln126_6_fu_627_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_2_reg_930 <= ap_sig_allocacmp_i_2;
        icmp_ln124_reg_935 <= icmp_ln124_fu_358_p2;
        tmp_4_reg_944 <= tmp_4_fu_392_p13;
        tmp_5_reg_949 <= tmp_5_fu_420_p13;
        tmp_6_reg_954 <= tmp_6_fu_448_p13;
        tmp_s_reg_939 <= tmp_s_fu_364_p13;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        lshr_ln126_6_reg_1064 <= {{B_9_fu_798_p2[31:27]}};
        trunc_ln126_6_reg_1059 <= trunc_ln126_6_fu_803_p1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_fu_358_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        A_31_out_ap_vld = 1'b1;
    end else begin
        A_31_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_fu_358_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_19_out_ap_vld = 1'b1;
    end else begin
        B_19_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_fu_358_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        C_28_out_ap_vld = 1'b1;
    end else begin
        C_28_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_fu_358_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        D_31_out_ap_vld = 1'b1;
    end else begin
        D_31_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_fu_358_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_19_out_ap_vld = 1'b1;
    end else begin
        E_19_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln124_fu_358_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i_2 = 6'd40;
    end else begin
        ap_sig_allocacmp_i_2 = i_fu_136;
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
assign A_31_out = B_5_fu_132;
assign A_fu_853_p2 = (add_ln126_14_reg_1069 + add_ln126_12_fu_848_p2);
assign B_19_out = B_fu_124;
assign B_9_fu_798_p2 = (add_ln126_10_reg_1054 + add_ln126_8_fu_793_p2);
assign C_28_out = E_6_fu_128;
assign C_6_fu_734_p3 = {{trunc_ln126_7_fu_720_p1}, {lshr_ln126_7_fu_724_p4}};
assign C_7_fu_633_p3 = {{trunc_ln126_1_reg_981}, {lshr_ln126_1_reg_986}};
assign D_31_out = E_5_fu_120;
assign D_fu_690_p3 = {{trunc_ln126_5_reg_1011}, {lshr_ln126_5_reg_1016}};
assign E_19_out = E_fu_116;
assign E_9_fu_670_p3 = {{trunc_ln126_3_reg_1001}, {lshr_ln126_3_reg_1006}};
assign add_ln124_fu_838_p2 = (i_2_reg_930 + 6'd4);
assign add_ln126_10_fu_768_p2 = (or_ln126_s_fu_757_p3 + add_ln126_9_fu_763_p2);
assign add_ln126_12_fu_848_p2 = ($signed(C_7_reg_1026) + $signed(32'd2400959708));
assign add_ln126_13_fu_828_p2 = (tmp_6_reg_954 + or_ln126_9_reg_1049);
assign add_ln126_14_fu_832_p2 = (or_ln126_10_fu_822_p3 + add_ln126_13_fu_828_p2);
assign add_ln126_1_fu_537_p2 = ($signed(32'd2400959708) + $signed(tmp_s_reg_939));
assign add_ln126_2_fu_542_p2 = (or_ln126_2_fu_529_p3 + add_ln126_1_fu_537_p2);
assign add_ln126_4_fu_660_p2 = (or_ln126_4_fu_654_p2 + tmp_4_reg_944);
assign add_ln126_5_fu_622_p2 = ($signed(32'd2400959708) + $signed(E_5_load_1_reg_959));
assign add_ln126_6_fu_627_p2 = (or_ln126_6_fu_616_p3 + add_ln126_5_fu_622_p2);
assign add_ln126_8_fu_793_p2 = (tmp_5_reg_949 + or_ln126_7_fu_787_p2);
assign add_ln126_9_fu_763_p2 = ($signed(32'd2400959708) + $signed(E_6_load_1_reg_964));
assign add_ln126_fu_548_p2 = (or_ln126_1_fu_523_p2 + E_fu_116);
assign and_ln126_1_fu_517_p2 = (E_6_fu_128 & E_5_fu_120);
assign and_ln126_2_fu_644_p2 = (or_ln126_3_fu_639_p2 & B_5_load_1_reg_971);
assign and_ln126_3_fu_649_p2 = (E_6_load_1_reg_964 & C_7_fu_633_p3);
assign and_ln126_4_fu_778_p2 = (temp_4_reg_976 & or_ln126_5_fu_774_p2);
assign and_ln126_5_fu_783_p2 = (E_9_reg_1033 & C_7_reg_1026);
assign and_ln126_6_fu_702_p2 = (temp_5_fu_665_p2 & or_ln126_8_fu_696_p2);
assign and_ln126_7_fu_708_p2 = (E_9_fu_670_p3 & D_fu_690_p3);
assign and_ln126_fu_511_p2 = (or_ln126_fu_505_p2 & B_fu_124);
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
assign icmp_ln124_fu_358_p2 = ((ap_sig_allocacmp_i_2 == 6'd60) ? 1'b1 : 1'b0);
assign lshr_ln126_7_fu_724_p4 = {{temp_5_fu_665_p2[31:2]}};
assign lshr_ln4_fu_495_p4 = {{B_5_fu_132[31:27]}};
assign or_ln126_10_fu_822_p3 = {{trunc_ln126_6_reg_1059}, {lshr_ln126_6_reg_1064}};
assign or_ln126_1_fu_523_p2 = (and_ln126_fu_511_p2 | and_ln126_1_fu_517_p2);
assign or_ln126_2_fu_529_p3 = {{trunc_ln126_fu_491_p1}, {lshr_ln4_fu_495_p4}};
assign or_ln126_3_fu_639_p2 = (E_6_load_1_reg_964 | C_7_fu_633_p3);
assign or_ln126_4_fu_654_p2 = (and_ln126_3_fu_649_p2 | and_ln126_2_fu_644_p2);
assign or_ln126_5_fu_774_p2 = (E_9_reg_1033 | C_7_reg_1026);
assign or_ln126_6_fu_616_p3 = {{trunc_ln126_2_reg_991}, {lshr_ln126_2_reg_996}};
assign or_ln126_7_fu_787_p2 = (and_ln126_5_fu_783_p2 | and_ln126_4_fu_778_p2);
assign or_ln126_8_fu_696_p2 = (E_9_fu_670_p3 | D_fu_690_p3);
assign or_ln126_9_fu_714_p2 = (and_ln126_7_fu_708_p2 | and_ln126_6_fu_702_p2);
assign or_ln126_fu_505_p2 = (E_6_fu_128 | E_5_fu_120);
assign or_ln126_s_fu_757_p3 = {{trunc_ln126_4_reg_1039}, {lshr_ln126_4_reg_1044}};
assign temp_4_fu_554_p2 = (add_ln126_fu_548_p2 + add_ln126_2_fu_542_p2);
assign temp_5_fu_665_p2 = (add_ln126_6_reg_1021 + add_ln126_4_fu_660_p2);
assign tmp_4_fu_392_p11 = 'bx;
assign tmp_5_fu_420_p11 = 'bx;
assign tmp_6_fu_448_p11 = 'bx;
assign tmp_s_fu_364_p11 = 'bx;
assign trunc_ln126_1_fu_560_p1 = B_fu_124[1:0];
assign trunc_ln126_2_fu_574_p1 = temp_4_fu_554_p2[26:0];
assign trunc_ln126_3_fu_588_p1 = B_5_fu_132[1:0];
assign trunc_ln126_4_fu_676_p1 = temp_5_fu_665_p2[26:0];
assign trunc_ln126_5_fu_602_p1 = temp_4_fu_554_p2[1:0];
assign trunc_ln126_6_fu_803_p1 = B_9_fu_798_p2[26:0];
assign trunc_ln126_7_fu_720_p1 = temp_5_fu_665_p2[1:0];
assign trunc_ln126_fu_491_p1 = B_5_fu_132[26:0];
endmodule 