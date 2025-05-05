module sha_stream_sha_transform_Pipeline_trans_lp5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_19_reload,B_4_reload,E_18_reload,D_19_reload,E_5_reload,W_address0,W_ce0,W_q0,W_4_address0,W_4_ce0,W_4_q0,W_8_address0,W_8_ce0,W_8_q0,W_12_address0,W_12_ce0,W_12_q0,W_1_address0,W_1_ce0,W_1_q0,W_5_address0,W_5_ce0,W_5_q0,W_9_address0,W_9_ce0,W_9_q0,W_13_address0,W_13_ce0,W_13_q0,W_2_address0,W_2_ce0,W_2_q0,W_6_address0,W_6_ce0,W_6_q0,W_10_address0,W_10_ce0,W_10_q0,W_14_address0,W_14_ce0,W_14_q0,W_3_address0,W_3_ce0,W_3_q0,W_7_address0,W_7_ce0,W_7_q0,W_11_address0,W_11_ce0,W_11_q0,W_15_address0,W_15_ce0,W_15_q0,A_21_out,A_21_out_ap_vld,B_7_out,B_7_out_ap_vld,C_17_out,C_17_out_ap_vld,D_21_out,D_21_out_ap_vld,E_7_out,E_7_out_ap_vld); 
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
input  [31:0] A_19_reload;
input  [31:0] B_4_reload;
input  [31:0] E_18_reload;
input  [31:0] D_19_reload;
input  [31:0] E_5_reload;
output  [2:0] W_address0;
output   W_ce0;
input  [31:0] W_q0;
output  [2:0] W_4_address0;
output   W_4_ce0;
input  [31:0] W_4_q0;
output  [2:0] W_8_address0;
output   W_8_ce0;
input  [31:0] W_8_q0;
output  [2:0] W_12_address0;
output   W_12_ce0;
input  [31:0] W_12_q0;
output  [2:0] W_1_address0;
output   W_1_ce0;
input  [31:0] W_1_q0;
output  [2:0] W_5_address0;
output   W_5_ce0;
input  [31:0] W_5_q0;
output  [2:0] W_9_address0;
output   W_9_ce0;
input  [31:0] W_9_q0;
output  [2:0] W_13_address0;
output   W_13_ce0;
input  [31:0] W_13_q0;
output  [2:0] W_2_address0;
output   W_2_ce0;
input  [31:0] W_2_q0;
output  [2:0] W_6_address0;
output   W_6_ce0;
input  [31:0] W_6_q0;
output  [2:0] W_10_address0;
output   W_10_ce0;
input  [31:0] W_10_q0;
output  [2:0] W_14_address0;
output   W_14_ce0;
input  [31:0] W_14_q0;
output  [2:0] W_3_address0;
output   W_3_ce0;
input  [31:0] W_3_q0;
output  [2:0] W_7_address0;
output   W_7_ce0;
input  [31:0] W_7_q0;
output  [2:0] W_11_address0;
output   W_11_ce0;
input  [31:0] W_11_q0;
output  [2:0] W_15_address0;
output   W_15_ce0;
input  [31:0] W_15_q0;
output  [31:0] A_21_out;
output   A_21_out_ap_vld;
output  [31:0] B_7_out;
output   B_7_out_ap_vld;
output  [31:0] C_17_out;
output   C_17_out_ap_vld;
output  [31:0] D_21_out;
output   D_21_out_ap_vld;
output  [31:0] E_7_out;
output   E_7_out_ap_vld;
reg ap_idle;
reg A_21_out_ap_vld;
reg B_7_out_ap_vld;
reg C_17_out_ap_vld;
reg D_21_out_ap_vld;
reg E_7_out_ap_vld;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln124_reg_1047;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] i_2_reg_1041;
wire   [0:0] icmp_ln124_fu_446_p2;
reg   [31:0] E_6_load_1_reg_1131;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] add_ln126_1_fu_545_p2;
reg   [31:0] add_ln126_1_reg_1138;
wire   [31:0] add_ln126_fu_551_p2;
reg   [31:0] add_ln126_reg_1143;
wire   [1:0] trunc_ln126_1_fu_557_p1;
reg   [1:0] trunc_ln126_1_reg_1148;
reg   [29:0] lshr_ln126_1_reg_1153;
wire   [31:0] add_ln126_5_fu_595_p2;
reg   [31:0] add_ln126_5_reg_1158;
wire   [31:0] tmp_5_fu_601_p11;
reg   [31:0] tmp_5_reg_1163;
wire   [31:0] tmp_6_fu_625_p11;
reg   [31:0] tmp_6_reg_1168;
wire   [31:0] temp_4_fu_679_p2;
reg   [31:0] temp_4_reg_1173;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] C_7_fu_684_p3;
reg   [31:0] C_7_reg_1178;
wire   [31:0] add_ln126_4_fu_734_p2;
reg   [31:0] add_ln126_4_reg_1185;
wire   [1:0] trunc_ln126_3_fu_740_p1;
reg   [1:0] trunc_ln126_3_reg_1190;
reg   [29:0] lshr_ln126_3_reg_1195;
wire   [31:0] add_ln126_9_fu_754_p2;
reg   [31:0] add_ln126_9_reg_1200;
wire   [1:0] trunc_ln126_5_fu_758_p1;
reg   [1:0] trunc_ln126_5_reg_1205;
reg   [29:0] lshr_ln126_5_reg_1210;
wire   [31:0] add_ln126_8_fu_831_p2;
reg   [31:0] add_ln126_8_reg_1215;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] or_ln126_9_fu_861_p2;
reg   [31:0] or_ln126_9_reg_1220;
wire   [26:0] trunc_ln126_6_fu_914_p1;
reg   [26:0] trunc_ln126_6_reg_1225;
wire    ap_block_pp0_stage4_11001;
reg   [4:0] lshr_ln126_6_reg_1230;
wire   [31:0] add_ln126_14_fu_954_p2;
reg   [31:0] add_ln126_14_reg_1235;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln100_fu_462_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] E_fu_116;
wire   [31:0] E_9_fu_782_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [31:0] E_5_fu_120;
wire   [31:0] D_fu_837_p3;
reg   [31:0] B_fu_124;
wire   [31:0] B_9_fu_909_p2;
reg   [31:0] E_6_fu_128;
wire   [31:0] C_6_fu_881_p3;
reg   [31:0] B_5_fu_132;
wire   [31:0] A_fu_964_p2;
wire    ap_block_pp0_stage2;
reg   [5:0] i_fu_136;
wire   [5:0] add_ln124_fu_928_p2;
reg   [5:0] ap_sig_allocacmp_i_2;
wire    ap_block_pp0_stage1_01001;
reg    W_ce0_local;
reg    W_4_ce0_local;
reg    W_8_ce0_local;
reg    W_12_ce0_local;
reg    W_1_ce0_local;
reg    W_5_ce0_local;
reg    W_9_ce0_local;
reg    W_13_ce0_local;
reg    W_2_ce0_local;
reg    W_6_ce0_local;
reg    W_10_ce0_local;
reg    W_14_ce0_local;
reg    W_3_ce0_local;
reg    W_7_ce0_local;
reg    W_11_ce0_local;
reg    W_15_ce0_local;
wire   [1:0] lshr_ln100_2_fu_452_p4;
wire   [31:0] tmp_s_fu_497_p9;
wire   [3:0] trunc_ln124_fu_494_p1;
wire   [31:0] or_ln126_fu_521_p2;
wire   [31:0] and_ln126_fu_527_p2;
wire   [31:0] and_ln126_1_fu_533_p2;
wire   [31:0] tmp_s_fu_497_p11;
wire   [31:0] or_ln126_1_fu_539_p2;
wire   [31:0] tmp_4_fu_571_p9;
wire   [31:0] tmp_4_fu_571_p11;
wire   [31:0] tmp_5_fu_601_p9;
wire   [31:0] tmp_6_fu_625_p9;
wire   [26:0] trunc_ln126_fu_652_p1;
wire   [4:0] lshr_ln5_fu_656_p4;
wire   [31:0] or_ln126_2_fu_666_p3;
wire   [31:0] add_ln126_2_fu_674_p2;
wire   [31:0] or_ln126_3_fu_704_p2;
wire   [31:0] and_ln126_2_fu_709_p2;
wire   [31:0] and_ln126_3_fu_715_p2;
wire   [26:0] trunc_ln126_2_fu_690_p1;
wire   [4:0] lshr_ln126_2_fu_694_p4;
wire   [31:0] or_ln126_6_fu_726_p3;
wire   [31:0] or_ln126_4_fu_720_p2;
wire    ap_block_pp0_stage3;
wire   [31:0] add_ln126_6_fu_772_p2;
wire   [31:0] temp_5_fu_777_p2;
wire   [31:0] or_ln126_5_fu_802_p2;
wire   [31:0] and_ln126_4_fu_807_p2;
wire   [31:0] and_ln126_5_fu_812_p2;
wire   [26:0] trunc_ln126_4_fu_788_p1;
wire   [4:0] lshr_ln126_4_fu_792_p4;
wire   [31:0] or_ln126_s_fu_823_p3;
wire   [31:0] or_ln126_7_fu_817_p2;
wire   [31:0] or_ln126_8_fu_843_p2;
wire   [31:0] and_ln126_6_fu_849_p2;
wire   [31:0] and_ln126_7_fu_855_p2;
wire   [1:0] trunc_ln126_7_fu_867_p1;
wire   [29:0] lshr_ln126_7_fu_871_p4;
wire    ap_block_pp0_stage4;
wire   [31:0] add_ln126_10_fu_904_p2;
wire   [31:0] or_ln126_10_fu_943_p3;
wire   [31:0] add_ln126_13_fu_949_p2;
wire   [31:0] add_ln126_12_fu_959_p2;
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
wire   [3:0] tmp_s_fu_497_p1;
wire   [3:0] tmp_s_fu_497_p3;
wire  signed [3:0] tmp_s_fu_497_p5;
wire  signed [3:0] tmp_s_fu_497_p7;
wire   [3:0] tmp_4_fu_571_p1;
wire   [3:0] tmp_4_fu_571_p3;
wire  signed [3:0] tmp_4_fu_571_p5;
wire  signed [3:0] tmp_4_fu_571_p7;
wire   [3:0] tmp_5_fu_601_p1;
wire   [3:0] tmp_5_fu_601_p3;
wire  signed [3:0] tmp_5_fu_601_p5;
wire  signed [3:0] tmp_5_fu_601_p7;
wire   [3:0] tmp_6_fu_625_p1;
wire   [3:0] tmp_6_fu_625_p3;
wire  signed [3:0] tmp_6_fu_625_p5;
wire  signed [3:0] tmp_6_fu_625_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
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
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h4 ),.din1_WIDTH( 32 ),.CASE2( 4'h8 ),.din2_WIDTH( 32 ),.CASE3( 4'hC ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U91(.din0(W_q0),.din1(W_4_q0),.din2(W_8_q0),.din3(W_12_q0),.def(tmp_s_fu_497_p9),.sel(trunc_ln124_fu_494_p1),.dout(tmp_s_fu_497_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h4 ),.din1_WIDTH( 32 ),.CASE2( 4'h8 ),.din2_WIDTH( 32 ),.CASE3( 4'hC ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U92(.din0(W_1_q0),.din1(W_5_q0),.din2(W_9_q0),.din3(W_13_q0),.def(tmp_4_fu_571_p9),.sel(trunc_ln124_fu_494_p1),.dout(tmp_4_fu_571_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h4 ),.din1_WIDTH( 32 ),.CASE2( 4'h8 ),.din2_WIDTH( 32 ),.CASE3( 4'hC ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U93(.din0(W_2_q0),.din1(W_6_q0),.din2(W_10_q0),.din3(W_14_q0),.def(tmp_5_fu_601_p9),.sel(trunc_ln124_fu_494_p1),.dout(tmp_5_fu_601_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h4 ),.din1_WIDTH( 32 ),.CASE2( 4'h8 ),.din2_WIDTH( 32 ),.CASE3( 4'hC ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U94(.din0(W_3_q0),.din1(W_7_q0),.din2(W_11_q0),.din3(W_15_q0),.def(tmp_6_fu_625_p9),.sel(trunc_ln124_fu_494_p1),.dout(tmp_6_fu_625_p11));
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
        B_5_fu_132 <= A_19_reload;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_5_fu_132 <= A_fu_964_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_fu_124 <= B_4_reload;
    end else if (((icmp_ln124_reg_1047 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        B_fu_124 <= B_9_fu_909_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_5_fu_120 <= D_19_reload;
    end else if (((icmp_ln124_reg_1047 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        E_5_fu_120 <= D_fu_837_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_6_fu_128 <= E_18_reload;
    end else if (((icmp_ln124_reg_1047 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        E_6_fu_128 <= C_6_fu_881_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_fu_116 <= E_5_reload;
    end else if (((icmp_ln124_reg_1047 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        E_fu_116 <= E_9_fu_782_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_136 <= 6'd40;
    end else if (((icmp_ln124_reg_1047 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        i_fu_136 <= add_ln124_fu_928_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        C_7_reg_1178 <= C_7_fu_684_p3;
        add_ln126_4_reg_1185 <= add_ln126_4_fu_734_p2;
        add_ln126_9_reg_1200 <= add_ln126_9_fu_754_p2;
        lshr_ln126_3_reg_1195 <= {{B_5_fu_132[31:2]}};
        lshr_ln126_5_reg_1210 <= {{temp_4_fu_679_p2[31:2]}};
        temp_4_reg_1173 <= temp_4_fu_679_p2;
        trunc_ln126_3_reg_1190 <= trunc_ln126_3_fu_740_p1;
        trunc_ln126_5_reg_1205 <= trunc_ln126_5_fu_758_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_6_load_1_reg_1131 <= E_6_fu_128;
        add_ln126_1_reg_1138 <= add_ln126_1_fu_545_p2;
        add_ln126_5_reg_1158 <= add_ln126_5_fu_595_p2;
        add_ln126_reg_1143 <= add_ln126_fu_551_p2;
        lshr_ln126_1_reg_1153 <= {{B_fu_124[31:2]}};
        tmp_5_reg_1163 <= tmp_5_fu_601_p11;
        tmp_6_reg_1168 <= tmp_6_fu_625_p11;
        trunc_ln126_1_reg_1148 <= trunc_ln126_1_fu_557_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln126_14_reg_1235 <= add_ln126_14_fu_954_p2;
        i_2_reg_1041 <= ap_sig_allocacmp_i_2;
        icmp_ln124_reg_1047 <= icmp_ln124_fu_446_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln126_8_reg_1215 <= add_ln126_8_fu_831_p2;
        or_ln126_9_reg_1220 <= or_ln126_9_fu_861_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        lshr_ln126_6_reg_1230 <= {{B_9_fu_909_p2[31:27]}};
        trunc_ln126_6_reg_1225 <= trunc_ln126_6_fu_914_p1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_1047 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_21_out_ap_vld = 1'b1;
    end else begin
        A_21_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_1047 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_7_out_ap_vld = 1'b1;
    end else begin
        B_7_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_1047 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        C_17_out_ap_vld = 1'b1;
    end else begin
        C_17_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_1047 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        D_21_out_ap_vld = 1'b1;
    end else begin
        D_21_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_1047 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_7_out_ap_vld = 1'b1;
    end else begin
        E_7_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_10_ce0_local = 1'b1;
    end else begin
        W_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_11_ce0_local = 1'b1;
    end else begin
        W_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_12_ce0_local = 1'b1;
    end else begin
        W_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_13_ce0_local = 1'b1;
    end else begin
        W_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_14_ce0_local = 1'b1;
    end else begin
        W_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_15_ce0_local = 1'b1;
    end else begin
        W_15_ce0_local = 1'b0;
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
        W_8_ce0_local = 1'b1;
    end else begin
        W_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_9_ce0_local = 1'b1;
    end else begin
        W_9_ce0_local = 1'b0;
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
    if (((icmp_ln124_reg_1047 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_i_2 = 6'd40;
    end else begin
        ap_sig_allocacmp_i_2 = i_fu_136;
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
assign A_21_out = B_5_fu_132;
assign A_fu_964_p2 = (add_ln126_14_reg_1235 + add_ln126_12_fu_959_p2);
assign B_7_out = B_fu_124;
assign B_9_fu_909_p2 = (add_ln126_8_reg_1215 + add_ln126_10_fu_904_p2);
assign C_17_out = E_6_fu_128;
assign C_6_fu_881_p3 = {{trunc_ln126_7_fu_867_p1}, {lshr_ln126_7_fu_871_p4}};
assign C_7_fu_684_p3 = {{trunc_ln126_1_reg_1148}, {lshr_ln126_1_reg_1153}};
assign D_21_out = E_5_fu_120;
assign D_fu_837_p3 = {{trunc_ln126_5_reg_1205}, {lshr_ln126_5_reg_1210}};
assign E_7_out = E_fu_116;
assign E_9_fu_782_p3 = {{trunc_ln126_3_reg_1190}, {lshr_ln126_3_reg_1195}};
assign W_10_address0 = zext_ln100_fu_462_p1;
assign W_10_ce0 = W_10_ce0_local;
assign W_11_address0 = zext_ln100_fu_462_p1;
assign W_11_ce0 = W_11_ce0_local;
assign W_12_address0 = zext_ln100_fu_462_p1;
assign W_12_ce0 = W_12_ce0_local;
assign W_13_address0 = zext_ln100_fu_462_p1;
assign W_13_ce0 = W_13_ce0_local;
assign W_14_address0 = zext_ln100_fu_462_p1;
assign W_14_ce0 = W_14_ce0_local;
assign W_15_address0 = zext_ln100_fu_462_p1;
assign W_15_ce0 = W_15_ce0_local;
assign W_1_address0 = zext_ln100_fu_462_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_2_address0 = zext_ln100_fu_462_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_3_address0 = zext_ln100_fu_462_p1;
assign W_3_ce0 = W_3_ce0_local;
assign W_4_address0 = zext_ln100_fu_462_p1;
assign W_4_ce0 = W_4_ce0_local;
assign W_5_address0 = zext_ln100_fu_462_p1;
assign W_5_ce0 = W_5_ce0_local;
assign W_6_address0 = zext_ln100_fu_462_p1;
assign W_6_ce0 = W_6_ce0_local;
assign W_7_address0 = zext_ln100_fu_462_p1;
assign W_7_ce0 = W_7_ce0_local;
assign W_8_address0 = zext_ln100_fu_462_p1;
assign W_8_ce0 = W_8_ce0_local;
assign W_9_address0 = zext_ln100_fu_462_p1;
assign W_9_ce0 = W_9_ce0_local;
assign W_address0 = zext_ln100_fu_462_p1;
assign W_ce0 = W_ce0_local;
assign add_ln124_fu_928_p2 = (i_2_reg_1041 + 6'd4);
assign add_ln126_10_fu_904_p2 = ($signed(add_ln126_9_reg_1200) + $signed(32'd2400959708));
assign add_ln126_12_fu_959_p2 = ($signed(C_7_reg_1178) + $signed(32'd2400959708));
assign add_ln126_13_fu_949_p2 = (or_ln126_10_fu_943_p3 + tmp_6_reg_1168);
assign add_ln126_14_fu_954_p2 = (add_ln126_13_fu_949_p2 + or_ln126_9_reg_1220);
assign add_ln126_1_fu_545_p2 = ($signed(32'd2400959708) + $signed(tmp_s_fu_497_p11));
assign add_ln126_2_fu_674_p2 = (or_ln126_2_fu_666_p3 + add_ln126_1_reg_1138);
assign add_ln126_4_fu_734_p2 = (or_ln126_6_fu_726_p3 + or_ln126_4_fu_720_p2);
assign add_ln126_5_fu_595_p2 = (E_5_fu_120 + tmp_4_fu_571_p11);
assign add_ln126_6_fu_772_p2 = ($signed(add_ln126_5_reg_1158) + $signed(32'd2400959708));
assign add_ln126_8_fu_831_p2 = (or_ln126_s_fu_823_p3 + or_ln126_7_fu_817_p2);
assign add_ln126_9_fu_754_p2 = (E_6_load_1_reg_1131 + tmp_5_reg_1163);
assign add_ln126_fu_551_p2 = (or_ln126_1_fu_539_p2 + E_fu_116);
assign and_ln126_1_fu_533_p2 = (E_6_fu_128 & E_5_fu_120);
assign and_ln126_2_fu_709_p2 = (or_ln126_3_fu_704_p2 & B_5_fu_132);
assign and_ln126_3_fu_715_p2 = (E_6_load_1_reg_1131 & C_7_fu_684_p3);
assign and_ln126_4_fu_807_p2 = (temp_4_reg_1173 & or_ln126_5_fu_802_p2);
assign and_ln126_5_fu_812_p2 = (E_9_fu_782_p3 & C_7_reg_1178);
assign and_ln126_6_fu_849_p2 = (temp_5_fu_777_p2 & or_ln126_8_fu_843_p2);
assign and_ln126_7_fu_855_p2 = (E_9_fu_782_p3 & D_fu_837_p3);
assign and_ln126_fu_527_p2 = (or_ln126_fu_521_p2 & B_fu_124);
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
assign icmp_ln124_fu_446_p2 = ((ap_sig_allocacmp_i_2 == 6'd60) ? 1'b1 : 1'b0);
assign lshr_ln100_2_fu_452_p4 = {{ap_sig_allocacmp_i_2[5:4]}};
assign lshr_ln126_2_fu_694_p4 = {{temp_4_fu_679_p2[31:27]}};
assign lshr_ln126_4_fu_792_p4 = {{temp_5_fu_777_p2[31:27]}};
assign lshr_ln126_7_fu_871_p4 = {{temp_5_fu_777_p2[31:2]}};
assign lshr_ln5_fu_656_p4 = {{B_5_fu_132[31:27]}};
assign or_ln126_10_fu_943_p3 = {{trunc_ln126_6_reg_1225}, {lshr_ln126_6_reg_1230}};
assign or_ln126_1_fu_539_p2 = (and_ln126_fu_527_p2 | and_ln126_1_fu_533_p2);
assign or_ln126_2_fu_666_p3 = {{trunc_ln126_fu_652_p1}, {lshr_ln5_fu_656_p4}};
assign or_ln126_3_fu_704_p2 = (E_6_load_1_reg_1131 | C_7_fu_684_p3);
assign or_ln126_4_fu_720_p2 = (and_ln126_3_fu_715_p2 | and_ln126_2_fu_709_p2);
assign or_ln126_5_fu_802_p2 = (E_9_fu_782_p3 | C_7_reg_1178);
assign or_ln126_6_fu_726_p3 = {{trunc_ln126_2_fu_690_p1}, {lshr_ln126_2_fu_694_p4}};
assign or_ln126_7_fu_817_p2 = (and_ln126_5_fu_812_p2 | and_ln126_4_fu_807_p2);
assign or_ln126_8_fu_843_p2 = (E_9_fu_782_p3 | D_fu_837_p3);
assign or_ln126_9_fu_861_p2 = (and_ln126_7_fu_855_p2 | and_ln126_6_fu_849_p2);
assign or_ln126_fu_521_p2 = (E_6_fu_128 | E_5_fu_120);
assign or_ln126_s_fu_823_p3 = {{trunc_ln126_4_fu_788_p1}, {lshr_ln126_4_fu_792_p4}};
assign temp_4_fu_679_p2 = (add_ln126_reg_1143 + add_ln126_2_fu_674_p2);
assign temp_5_fu_777_p2 = (add_ln126_4_reg_1185 + add_ln126_6_fu_772_p2);
assign tmp_4_fu_571_p9 = 'bx;
assign tmp_5_fu_601_p9 = 'bx;
assign tmp_6_fu_625_p9 = 'bx;
assign tmp_s_fu_497_p9 = 'bx;
assign trunc_ln124_fu_494_p1 = i_2_reg_1041[3:0];
assign trunc_ln126_1_fu_557_p1 = B_fu_124[1:0];
assign trunc_ln126_2_fu_690_p1 = temp_4_fu_679_p2[26:0];
assign trunc_ln126_3_fu_740_p1 = B_5_fu_132[1:0];
assign trunc_ln126_4_fu_788_p1 = temp_5_fu_777_p2[26:0];
assign trunc_ln126_5_fu_758_p1 = temp_4_fu_679_p2[1:0];
assign trunc_ln126_6_fu_914_p1 = B_9_fu_909_p2[26:0];
assign trunc_ln126_7_fu_867_p1 = temp_5_fu_777_p2[1:0];
assign trunc_ln126_fu_652_p1 = B_5_fu_132[26:0];
assign zext_ln100_fu_462_p1 = lshr_ln100_2_fu_452_p4;
endmodule 