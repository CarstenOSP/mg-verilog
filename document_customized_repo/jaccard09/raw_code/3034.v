module sha_stream_sha_transform_Pipeline_trans_lp5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_23_reload,B_6_reload,C_23_reload,D_23_reload,E_6_reload,W_8_load_5,W_12_load_5,W_16_load_5,W_20_load_4,W_24_load_4,W_9_load_6,W_13_load_6,W_17_load_6,W_21_load_5,W_25_load_5,W_10_load_5,W_14_load_5,W_18_load_5,W_22_load_4,W_26_load_4,W_11_load_5,W_15_load_5,W_19_load_5,W_23_load_4,W_27_load_4,A_24_out,A_24_out_ap_vld,B_11_out,B_11_out_ap_vld,C_27_out,C_27_out_ap_vld,D_24_out,D_24_out_ap_vld,E_11_out,E_11_out_ap_vld); 
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
input  [31:0] A_23_reload;
input  [31:0] B_6_reload;
input  [31:0] C_23_reload;
input  [31:0] D_23_reload;
input  [31:0] E_6_reload;
input  [31:0] W_8_load_5;
input  [31:0] W_12_load_5;
input  [31:0] W_16_load_5;
input  [31:0] W_20_load_4;
input  [31:0] W_24_load_4;
input  [31:0] W_9_load_6;
input  [31:0] W_13_load_6;
input  [31:0] W_17_load_6;
input  [31:0] W_21_load_5;
input  [31:0] W_25_load_5;
input  [31:0] W_10_load_5;
input  [31:0] W_14_load_5;
input  [31:0] W_18_load_5;
input  [31:0] W_22_load_4;
input  [31:0] W_26_load_4;
input  [31:0] W_11_load_5;
input  [31:0] W_15_load_5;
input  [31:0] W_19_load_5;
input  [31:0] W_23_load_4;
input  [31:0] W_27_load_4;
output  [31:0] A_24_out;
output   A_24_out_ap_vld;
output  [31:0] B_11_out;
output   B_11_out_ap_vld;
output  [31:0] C_27_out;
output   C_27_out_ap_vld;
output  [31:0] D_24_out;
output   D_24_out_ap_vld;
output  [31:0] E_11_out;
output   E_11_out_ap_vld;
reg ap_idle;
reg A_24_out_ap_vld;
reg B_11_out_ap_vld;
reg C_27_out_ap_vld;
reg D_24_out_ap_vld;
reg E_11_out_ap_vld;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln124_fu_360_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [5:0] i_2_reg_936;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln124_reg_941;
wire   [31:0] tmp_s_fu_370_p13;
reg   [31:0] tmp_s_reg_945;
wire   [31:0] tmp_4_fu_398_p13;
reg   [31:0] tmp_4_reg_950;
wire   [31:0] tmp_5_fu_426_p13;
reg   [31:0] tmp_5_reg_955;
wire   [31:0] tmp_6_fu_454_p13;
reg   [31:0] tmp_6_reg_960;
reg   [31:0] E_5_load_1_reg_965;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] E_6_load_1_reg_970;
reg   [31:0] B_5_load_1_reg_977;
wire   [31:0] temp_4_fu_560_p2;
reg   [31:0] temp_4_reg_982;
wire   [1:0] trunc_ln126_1_fu_566_p1;
reg   [1:0] trunc_ln126_1_reg_987;
reg   [29:0] lshr_ln126_1_reg_992;
wire   [26:0] trunc_ln126_2_fu_580_p1;
reg   [26:0] trunc_ln126_2_reg_997;
reg   [4:0] lshr_ln126_2_reg_1002;
wire   [1:0] trunc_ln126_3_fu_594_p1;
reg   [1:0] trunc_ln126_3_reg_1007;
reg   [29:0] lshr_ln126_3_reg_1012;
wire   [1:0] trunc_ln126_5_fu_608_p1;
reg   [1:0] trunc_ln126_5_reg_1017;
reg   [29:0] lshr_ln126_5_reg_1022;
wire   [31:0] add_ln126_6_fu_633_p2;
reg   [31:0] add_ln126_6_reg_1027;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] C_7_fu_639_p3;
reg   [31:0] C_7_reg_1032;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] E_9_fu_676_p3;
reg   [31:0] E_9_reg_1039;
wire   [26:0] trunc_ln126_4_fu_682_p1;
reg   [26:0] trunc_ln126_4_reg_1045;
reg   [4:0] lshr_ln126_4_reg_1050;
wire   [31:0] or_ln126_9_fu_720_p2;
reg   [31:0] or_ln126_9_reg_1055;
wire   [31:0] add_ln126_10_fu_774_p2;
reg   [31:0] add_ln126_10_reg_1060;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [26:0] trunc_ln126_6_fu_809_p1;
reg   [26:0] trunc_ln126_6_reg_1065;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [4:0] lshr_ln126_6_reg_1070;
wire   [31:0] add_ln126_14_fu_838_p2;
reg   [31:0] add_ln126_14_reg_1075;
wire    ap_block_pp0_stage6_11001;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [31:0] E_fu_118;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
reg   [31:0] E_5_fu_122;
wire   [31:0] D_fu_696_p3;
reg   [31:0] B_fu_126;
wire   [31:0] B_9_fu_804_p2;
reg   [31:0] E_6_fu_130;
wire   [31:0] C_6_fu_740_p3;
reg   [31:0] B_5_fu_134;
wire   [31:0] A_fu_859_p2;
reg   [5:0] i_fu_138;
wire   [5:0] add_ln124_fu_844_p2;
reg   [5:0] ap_sig_allocacmp_i_2;
wire    ap_block_pp0_stage0_01001;
wire   [31:0] tmp_s_fu_370_p11;
wire   [4:0] trunc_ln124_fu_366_p1;
wire   [31:0] tmp_4_fu_398_p11;
wire   [31:0] tmp_5_fu_426_p11;
wire   [31:0] tmp_6_fu_454_p11;
wire   [31:0] or_ln126_fu_511_p2;
wire   [31:0] and_ln126_fu_517_p2;
wire   [31:0] and_ln126_1_fu_523_p2;
wire   [26:0] trunc_ln126_fu_497_p1;
wire   [4:0] lshr_ln5_fu_501_p4;
wire   [31:0] or_ln126_2_fu_535_p3;
wire   [31:0] add_ln126_1_fu_543_p2;
wire   [31:0] or_ln126_1_fu_529_p2;
wire   [31:0] add_ln126_fu_554_p2;
wire   [31:0] add_ln126_2_fu_548_p2;
wire    ap_block_pp0_stage2;
wire   [31:0] or_ln126_6_fu_622_p3;
wire   [31:0] add_ln126_5_fu_628_p2;
wire    ap_block_pp0_stage3;
wire   [31:0] or_ln126_3_fu_645_p2;
wire   [31:0] and_ln126_2_fu_650_p2;
wire   [31:0] and_ln126_3_fu_655_p2;
wire   [31:0] or_ln126_4_fu_660_p2;
wire   [31:0] add_ln126_4_fu_666_p2;
wire   [31:0] temp_5_fu_671_p2;
wire   [31:0] or_ln126_8_fu_702_p2;
wire   [31:0] and_ln126_6_fu_708_p2;
wire   [31:0] and_ln126_7_fu_714_p2;
wire   [1:0] trunc_ln126_7_fu_726_p1;
wire   [29:0] lshr_ln126_7_fu_730_p4;
wire    ap_block_pp0_stage4;
wire   [31:0] or_ln126_s_fu_763_p3;
wire   [31:0] add_ln126_9_fu_769_p2;
wire    ap_block_pp0_stage5;
wire   [31:0] or_ln126_5_fu_780_p2;
wire   [31:0] and_ln126_4_fu_784_p2;
wire   [31:0] and_ln126_5_fu_789_p2;
wire   [31:0] or_ln126_7_fu_793_p2;
wire   [31:0] add_ln126_8_fu_799_p2;
wire    ap_block_pp0_stage6;
wire   [31:0] or_ln126_10_fu_828_p3;
wire   [31:0] add_ln126_13_fu_834_p2;
wire   [31:0] add_ln126_12_fu_854_p2;
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
wire   [4:0] tmp_s_fu_370_p1;
wire   [4:0] tmp_s_fu_370_p3;
wire  signed [4:0] tmp_s_fu_370_p5;
wire  signed [4:0] tmp_s_fu_370_p7;
wire  signed [4:0] tmp_s_fu_370_p9;
wire   [4:0] tmp_4_fu_398_p1;
wire   [4:0] tmp_4_fu_398_p3;
wire  signed [4:0] tmp_4_fu_398_p5;
wire  signed [4:0] tmp_4_fu_398_p7;
wire  signed [4:0] tmp_4_fu_398_p9;
wire   [4:0] tmp_5_fu_426_p1;
wire   [4:0] tmp_5_fu_426_p3;
wire  signed [4:0] tmp_5_fu_426_p5;
wire  signed [4:0] tmp_5_fu_426_p7;
wire  signed [4:0] tmp_5_fu_426_p9;
wire   [4:0] tmp_6_fu_454_p1;
wire   [4:0] tmp_6_fu_454_p3;
wire  signed [4:0] tmp_6_fu_454_p5;
wire  signed [4:0] tmp_6_fu_454_p7;
wire  signed [4:0] tmp_6_fu_454_p9;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_fu_118 = 32'd0;
#0 E_5_fu_122 = 32'd0;
#0 B_fu_126 = 32'd0;
#0 E_6_fu_130 = 32'd0;
#0 B_5_fu_134 = 32'd0;
#0 i_fu_138 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_5_32_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h8 ),.din0_WIDTH( 32 ),.CASE1( 5'hC ),.din1_WIDTH( 32 ),.CASE2( 5'h10 ),.din2_WIDTH( 32 ),.CASE3( 5'h14 ),.din3_WIDTH( 32 ),.CASE4( 5'h18 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_11_5_32_1_1_x_U137(.din0(W_8_load_5),.din1(W_12_load_5),.din2(W_16_load_5),.din3(W_20_load_4),.din4(W_24_load_4),.def(tmp_s_fu_370_p11),.sel(trunc_ln124_fu_366_p1),.dout(tmp_s_fu_370_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_5_32_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h8 ),.din0_WIDTH( 32 ),.CASE1( 5'hC ),.din1_WIDTH( 32 ),.CASE2( 5'h10 ),.din2_WIDTH( 32 ),.CASE3( 5'h14 ),.din3_WIDTH( 32 ),.CASE4( 5'h18 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_11_5_32_1_1_x_U138(.din0(W_9_load_6),.din1(W_13_load_6),.din2(W_17_load_6),.din3(W_21_load_5),.din4(W_25_load_5),.def(tmp_4_fu_398_p11),.sel(trunc_ln124_fu_366_p1),.dout(tmp_4_fu_398_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_5_32_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h8 ),.din0_WIDTH( 32 ),.CASE1( 5'hC ),.din1_WIDTH( 32 ),.CASE2( 5'h10 ),.din2_WIDTH( 32 ),.CASE3( 5'h14 ),.din3_WIDTH( 32 ),.CASE4( 5'h18 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_11_5_32_1_1_x_U139(.din0(W_10_load_5),.din1(W_14_load_5),.din2(W_18_load_5),.din3(W_22_load_4),.din4(W_26_load_4),.def(tmp_5_fu_426_p11),.sel(trunc_ln124_fu_366_p1),.dout(tmp_5_fu_426_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_5_32_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h8 ),.din0_WIDTH( 32 ),.CASE1( 5'hC ),.din1_WIDTH( 32 ),.CASE2( 5'h10 ),.din2_WIDTH( 32 ),.CASE3( 5'h14 ),.din3_WIDTH( 32 ),.CASE4( 5'h18 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_11_5_32_1_1_x_U140(.din0(W_11_load_5),.din1(W_15_load_5),.din2(W_19_load_5),.din3(W_23_load_4),.din4(W_27_load_4),.def(tmp_6_fu_454_p11),.sel(trunc_ln124_fu_366_p1),.dout(tmp_6_fu_454_p13));
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
            B_5_fu_134 <= A_23_reload;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            B_5_fu_134 <= A_fu_859_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_fu_126 <= B_6_reload;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln124_reg_941 == 1'd0))) begin
        B_fu_126 <= B_9_fu_804_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_5_fu_122 <= D_23_reload;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln124_reg_941 == 1'd0))) begin
        E_5_fu_122 <= D_fu_696_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_6_fu_130 <= C_23_reload;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln124_reg_941 == 1'd0))) begin
        E_6_fu_130 <= C_6_fu_740_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_fu_118 <= E_6_reload;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln124_reg_941 == 1'd0))) begin
        E_fu_118 <= E_9_fu_676_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_138 <= 6'd40;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (icmp_ln124_reg_941 == 1'd0))) begin
        i_fu_138 <= add_ln124_fu_844_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_5_load_1_reg_977 <= B_5_fu_134;
        E_5_load_1_reg_965 <= E_5_fu_122;
        E_6_load_1_reg_970 <= E_6_fu_130;
        lshr_ln126_1_reg_992 <= {{B_fu_126[31:2]}};
        lshr_ln126_2_reg_1002 <= {{temp_4_fu_560_p2[31:27]}};
        lshr_ln126_3_reg_1012 <= {{B_5_fu_134[31:2]}};
        lshr_ln126_5_reg_1022 <= {{temp_4_fu_560_p2[31:2]}};
        temp_4_reg_982 <= temp_4_fu_560_p2;
        trunc_ln126_1_reg_987 <= trunc_ln126_1_fu_566_p1;
        trunc_ln126_2_reg_997 <= trunc_ln126_2_fu_580_p1;
        trunc_ln126_3_reg_1007 <= trunc_ln126_3_fu_594_p1;
        trunc_ln126_5_reg_1017 <= trunc_ln126_5_fu_608_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        C_7_reg_1032 <= C_7_fu_639_p3;
        E_9_reg_1039 <= E_9_fu_676_p3;
        lshr_ln126_4_reg_1050 <= {{temp_5_fu_671_p2[31:27]}};
        or_ln126_9_reg_1055 <= or_ln126_9_fu_720_p2;
        trunc_ln126_4_reg_1045 <= trunc_ln126_4_fu_682_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln126_10_reg_1060 <= add_ln126_10_fu_774_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln126_14_reg_1075 <= add_ln126_14_fu_838_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln126_6_reg_1027 <= add_ln126_6_fu_633_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_2_reg_936 <= ap_sig_allocacmp_i_2;
        icmp_ln124_reg_941 <= icmp_ln124_fu_360_p2;
        tmp_4_reg_950 <= tmp_4_fu_398_p13;
        tmp_5_reg_955 <= tmp_5_fu_426_p13;
        tmp_6_reg_960 <= tmp_6_fu_454_p13;
        tmp_s_reg_945 <= tmp_s_fu_370_p13;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        lshr_ln126_6_reg_1070 <= {{B_9_fu_804_p2[31:27]}};
        trunc_ln126_6_reg_1065 <= trunc_ln126_6_fu_809_p1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_fu_360_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        A_24_out_ap_vld = 1'b1;
    end else begin
        A_24_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_fu_360_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_11_out_ap_vld = 1'b1;
    end else begin
        B_11_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_fu_360_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        C_27_out_ap_vld = 1'b1;
    end else begin
        C_27_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_fu_360_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        D_24_out_ap_vld = 1'b1;
    end else begin
        D_24_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_fu_360_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_11_out_ap_vld = 1'b1;
    end else begin
        E_11_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln124_fu_360_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i_2 = i_fu_138;
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
assign A_24_out = B_5_fu_134;
assign A_fu_859_p2 = (add_ln126_14_reg_1075 + add_ln126_12_fu_854_p2);
assign B_11_out = B_fu_126;
assign B_9_fu_804_p2 = (add_ln126_10_reg_1060 + add_ln126_8_fu_799_p2);
assign C_27_out = E_6_fu_130;
assign C_6_fu_740_p3 = {{trunc_ln126_7_fu_726_p1}, {lshr_ln126_7_fu_730_p4}};
assign C_7_fu_639_p3 = {{trunc_ln126_1_reg_987}, {lshr_ln126_1_reg_992}};
assign D_24_out = E_5_fu_122;
assign D_fu_696_p3 = {{trunc_ln126_5_reg_1017}, {lshr_ln126_5_reg_1022}};
assign E_11_out = E_fu_118;
assign E_9_fu_676_p3 = {{trunc_ln126_3_reg_1007}, {lshr_ln126_3_reg_1012}};
assign add_ln124_fu_844_p2 = (i_2_reg_936 + 6'd4);
assign add_ln126_10_fu_774_p2 = (or_ln126_s_fu_763_p3 + add_ln126_9_fu_769_p2);
assign add_ln126_12_fu_854_p2 = ($signed(C_7_reg_1032) + $signed(32'd2400959708));
assign add_ln126_13_fu_834_p2 = (tmp_6_reg_960 + or_ln126_9_reg_1055);
assign add_ln126_14_fu_838_p2 = (or_ln126_10_fu_828_p3 + add_ln126_13_fu_834_p2);
assign add_ln126_1_fu_543_p2 = ($signed(32'd2400959708) + $signed(tmp_s_reg_945));
assign add_ln126_2_fu_548_p2 = (or_ln126_2_fu_535_p3 + add_ln126_1_fu_543_p2);
assign add_ln126_4_fu_666_p2 = (or_ln126_4_fu_660_p2 + tmp_4_reg_950);
assign add_ln126_5_fu_628_p2 = ($signed(32'd2400959708) + $signed(E_5_load_1_reg_965));
assign add_ln126_6_fu_633_p2 = (or_ln126_6_fu_622_p3 + add_ln126_5_fu_628_p2);
assign add_ln126_8_fu_799_p2 = (tmp_5_reg_955 + or_ln126_7_fu_793_p2);
assign add_ln126_9_fu_769_p2 = ($signed(32'd2400959708) + $signed(E_6_load_1_reg_970));
assign add_ln126_fu_554_p2 = (or_ln126_1_fu_529_p2 + E_fu_118);
assign and_ln126_1_fu_523_p2 = (E_6_fu_130 & E_5_fu_122);
assign and_ln126_2_fu_650_p2 = (or_ln126_3_fu_645_p2 & B_5_load_1_reg_977);
assign and_ln126_3_fu_655_p2 = (E_6_load_1_reg_970 & C_7_fu_639_p3);
assign and_ln126_4_fu_784_p2 = (temp_4_reg_982 & or_ln126_5_fu_780_p2);
assign and_ln126_5_fu_789_p2 = (E_9_reg_1039 & C_7_reg_1032);
assign and_ln126_6_fu_708_p2 = (temp_5_fu_671_p2 & or_ln126_8_fu_702_p2);
assign and_ln126_7_fu_714_p2 = (E_9_fu_676_p3 & D_fu_696_p3);
assign and_ln126_fu_517_p2 = (or_ln126_fu_511_p2 & B_fu_126);
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
assign icmp_ln124_fu_360_p2 = ((ap_sig_allocacmp_i_2 == 6'd60) ? 1'b1 : 1'b0);
assign lshr_ln126_7_fu_730_p4 = {{temp_5_fu_671_p2[31:2]}};
assign lshr_ln5_fu_501_p4 = {{B_5_fu_134[31:27]}};
assign or_ln126_10_fu_828_p3 = {{trunc_ln126_6_reg_1065}, {lshr_ln126_6_reg_1070}};
assign or_ln126_1_fu_529_p2 = (and_ln126_fu_517_p2 | and_ln126_1_fu_523_p2);
assign or_ln126_2_fu_535_p3 = {{trunc_ln126_fu_497_p1}, {lshr_ln5_fu_501_p4}};
assign or_ln126_3_fu_645_p2 = (E_6_load_1_reg_970 | C_7_fu_639_p3);
assign or_ln126_4_fu_660_p2 = (and_ln126_3_fu_655_p2 | and_ln126_2_fu_650_p2);
assign or_ln126_5_fu_780_p2 = (E_9_reg_1039 | C_7_reg_1032);
assign or_ln126_6_fu_622_p3 = {{trunc_ln126_2_reg_997}, {lshr_ln126_2_reg_1002}};
assign or_ln126_7_fu_793_p2 = (and_ln126_5_fu_789_p2 | and_ln126_4_fu_784_p2);
assign or_ln126_8_fu_702_p2 = (E_9_fu_676_p3 | D_fu_696_p3);
assign or_ln126_9_fu_720_p2 = (and_ln126_7_fu_714_p2 | and_ln126_6_fu_708_p2);
assign or_ln126_fu_511_p2 = (E_6_fu_130 | E_5_fu_122);
assign or_ln126_s_fu_763_p3 = {{trunc_ln126_4_reg_1045}, {lshr_ln126_4_reg_1050}};
assign temp_4_fu_560_p2 = (add_ln126_fu_554_p2 + add_ln126_2_fu_548_p2);
assign temp_5_fu_671_p2 = (add_ln126_6_reg_1027 + add_ln126_4_fu_666_p2);
assign tmp_4_fu_398_p11 = 'bx;
assign tmp_5_fu_426_p11 = 'bx;
assign tmp_6_fu_454_p11 = 'bx;
assign tmp_s_fu_370_p11 = 'bx;
assign trunc_ln124_fu_366_p1 = ap_sig_allocacmp_i_2[4:0];
assign trunc_ln126_1_fu_566_p1 = B_fu_126[1:0];
assign trunc_ln126_2_fu_580_p1 = temp_4_fu_560_p2[26:0];
assign trunc_ln126_3_fu_594_p1 = B_5_fu_134[1:0];
assign trunc_ln126_4_fu_682_p1 = temp_5_fu_671_p2[26:0];
assign trunc_ln126_5_fu_608_p1 = temp_4_fu_560_p2[1:0];
assign trunc_ln126_6_fu_809_p1 = B_9_fu_804_p2[26:0];
assign trunc_ln126_7_fu_726_p1 = temp_5_fu_671_p2[1:0];
assign trunc_ln126_fu_497_p1 = B_5_fu_134[26:0];
endmodule 