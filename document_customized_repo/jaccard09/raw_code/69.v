module sha_stream_sha_transform_Pipeline_trans_lp6 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_21_reload,B_7_reload,C_17_reload,D_21_reload,E_7_reload,W_address0,W_ce0,W_q0,W_4_address0,W_4_ce0,W_4_q0,W_8_address0,W_8_ce0,W_8_q0,W_12_address0,W_12_ce0,W_12_q0,W_1_address0,W_1_ce0,W_1_q0,W_5_address0,W_5_ce0,W_5_q0,W_9_address0,W_9_ce0,W_9_q0,W_13_address0,W_13_ce0,W_13_q0,W_2_address0,W_2_ce0,W_2_q0,W_6_address0,W_6_ce0,W_6_q0,W_10_address0,W_10_ce0,W_10_q0,W_14_address0,W_14_ce0,W_14_q0,W_3_address0,W_3_ce0,W_3_q0,W_7_address0,W_7_ce0,W_7_q0,W_11_address0,W_11_ce0,W_11_q0,W_15_address0,W_15_ce0,W_15_q0,A_23_out,A_23_out_ap_vld,B_12_out,B_12_out_ap_vld,C_19_out,C_19_out_ap_vld,D_23_out,D_23_out_ap_vld,E_12_out,E_12_out_ap_vld); 
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
input  [31:0] A_21_reload;
input  [31:0] B_7_reload;
input  [31:0] C_17_reload;
input  [31:0] D_21_reload;
input  [31:0] E_7_reload;
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
output  [31:0] A_23_out;
output   A_23_out_ap_vld;
output  [31:0] B_12_out;
output   B_12_out_ap_vld;
output  [31:0] C_19_out;
output   C_19_out_ap_vld;
output  [31:0] D_23_out;
output   D_23_out_ap_vld;
output  [31:0] E_12_out;
output   E_12_out_ap_vld;
reg ap_idle;
reg A_23_out_ap_vld;
reg B_12_out_ap_vld;
reg C_19_out_ap_vld;
reg D_23_out_ap_vld;
reg E_12_out_ap_vld;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln128_reg_997;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] i_1_reg_991;
wire   [0:0] icmp_ln128_fu_446_p2;
reg   [31:0] E_1_load_reg_1081;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] E_2_load_reg_1086;
wire   [31:0] add_ln130_1_fu_533_p2;
reg   [31:0] add_ln130_1_reg_1092;
wire   [31:0] add_ln130_fu_539_p2;
reg   [31:0] add_ln130_reg_1097;
wire   [1:0] trunc_ln130_1_fu_545_p1;
reg   [1:0] trunc_ln130_1_reg_1102;
reg   [29:0] lshr_ln130_1_reg_1107;
wire   [31:0] tmp_1_fu_559_p11;
reg   [31:0] tmp_1_reg_1112;
wire   [31:0] tmp_2_fu_583_p11;
reg   [31:0] tmp_2_reg_1117;
wire   [31:0] tmp_3_fu_607_p11;
reg   [31:0] tmp_3_reg_1122;
wire   [31:0] temp_fu_661_p2;
reg   [31:0] temp_reg_1127;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] C_fu_666_p3;
reg   [31:0] C_reg_1132;
wire   [31:0] add_ln130_5_fu_705_p2;
reg   [31:0] add_ln130_5_reg_1138;
wire   [31:0] add_ln130_4_fu_710_p2;
reg   [31:0] add_ln130_4_reg_1143;
wire   [1:0] trunc_ln130_3_fu_716_p1;
reg   [1:0] trunc_ln130_3_reg_1148;
reg   [29:0] lshr_ln130_3_reg_1153;
wire   [31:0] add_ln130_10_fu_735_p2;
reg   [31:0] add_ln130_10_reg_1158;
wire   [1:0] trunc_ln130_5_fu_740_p1;
reg   [1:0] trunc_ln130_5_reg_1163;
reg   [29:0] lshr_ln130_5_reg_1168;
wire   [26:0] trunc_ln130_4_fu_769_p1;
reg   [26:0] trunc_ln130_4_reg_1173;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [4:0] lshr_ln130_4_reg_1178;
wire   [31:0] xor_ln130_5_fu_788_p2;
reg   [31:0] xor_ln130_5_reg_1183;
wire   [31:0] xor_ln130_7_fu_805_p2;
reg   [31:0] xor_ln130_7_reg_1188;
wire   [26:0] trunc_ln130_6_fu_864_p1;
reg   [26:0] trunc_ln130_6_reg_1193;
wire    ap_block_pp0_stage4_11001;
reg   [4:0] lshr_ln130_6_reg_1198;
wire   [31:0] add_ln130_14_fu_904_p2;
reg   [31:0] add_ln130_14_reg_1203;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln100_fu_462_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] E_fu_116;
wire   [31:0] C_3_fu_763_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [31:0] E_1_fu_120;
wire   [31:0] C_4_fu_793_p3;
reg   [31:0] B_fu_124;
wire   [31:0] temp_2_fu_858_p2;
reg   [31:0] B_1_fu_128;
wire   [31:0] temp_3_fu_914_p2;
wire    ap_block_pp0_stage2;
reg   [31:0] E_2_fu_132;
wire   [31:0] C_2_fu_825_p3;
reg   [6:0] i_fu_136;
wire   [6:0] add_ln128_fu_878_p2;
reg   [6:0] ap_sig_allocacmp_i_1;
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
wire   [2:0] lshr_ln100_3_fu_452_p4;
wire   [31:0] tmp_s_fu_497_p9;
wire   [3:0] trunc_ln128_fu_494_p1;
wire   [31:0] xor_ln130_fu_521_p2;
wire   [31:0] tmp_s_fu_497_p11;
wire   [31:0] xor_ln130_1_fu_527_p2;
wire   [31:0] tmp_1_fu_559_p9;
wire   [31:0] tmp_2_fu_583_p9;
wire   [31:0] tmp_3_fu_607_p9;
wire   [26:0] trunc_ln130_fu_634_p1;
wire   [4:0] lshr_ln6_fu_638_p4;
wire   [31:0] or_ln1_fu_648_p3;
wire   [31:0] add_ln130_2_fu_656_p2;
wire   [31:0] xor_ln130_2_fu_686_p2;
wire   [26:0] trunc_ln130_2_fu_672_p1;
wire   [4:0] lshr_ln130_2_fu_676_p4;
wire   [31:0] or_ln130_2_fu_697_p3;
wire   [31:0] xor_ln130_3_fu_692_p2;
wire   [31:0] add_ln130_9_fu_730_p2;
wire    ap_block_pp0_stage3;
wire   [31:0] add_ln130_6_fu_754_p2;
wire   [31:0] temp_1_fu_758_p2;
wire   [31:0] xor_ln130_4_fu_783_p2;
wire   [31:0] xor_ln130_6_fu_799_p2;
wire   [1:0] trunc_ln130_7_fu_811_p1;
wire   [29:0] lshr_ln130_7_fu_815_p4;
wire    ap_block_pp0_stage4;
wire   [31:0] add_ln130_8_fu_854_p2;
wire   [31:0] or_ln130_4_fu_848_p3;
wire   [31:0] or_ln130_6_fu_893_p3;
wire   [31:0] add_ln130_13_fu_899_p2;
wire   [31:0] add_ln130_12_fu_910_p2;
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
wire   [3:0] tmp_1_fu_559_p1;
wire   [3:0] tmp_1_fu_559_p3;
wire  signed [3:0] tmp_1_fu_559_p5;
wire  signed [3:0] tmp_1_fu_559_p7;
wire   [3:0] tmp_2_fu_583_p1;
wire   [3:0] tmp_2_fu_583_p3;
wire  signed [3:0] tmp_2_fu_583_p5;
wire  signed [3:0] tmp_2_fu_583_p7;
wire   [3:0] tmp_3_fu_607_p1;
wire   [3:0] tmp_3_fu_607_p3;
wire  signed [3:0] tmp_3_fu_607_p5;
wire  signed [3:0] tmp_3_fu_607_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_fu_116 = 32'd0;
#0 E_1_fu_120 = 32'd0;
#0 B_fu_124 = 32'd0;
#0 B_1_fu_128 = 32'd0;
#0 E_2_fu_132 = 32'd0;
#0 i_fu_136 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h4 ),.din1_WIDTH( 32 ),.CASE2( 4'h8 ),.din2_WIDTH( 32 ),.CASE3( 4'hC ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U122(.din0(W_q0),.din1(W_4_q0),.din2(W_8_q0),.din3(W_12_q0),.def(tmp_s_fu_497_p9),.sel(trunc_ln128_fu_494_p1),.dout(tmp_s_fu_497_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h4 ),.din1_WIDTH( 32 ),.CASE2( 4'h8 ),.din2_WIDTH( 32 ),.CASE3( 4'hC ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U123(.din0(W_1_q0),.din1(W_5_q0),.din2(W_9_q0),.din3(W_13_q0),.def(tmp_1_fu_559_p9),.sel(trunc_ln128_fu_494_p1),.dout(tmp_1_fu_559_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h4 ),.din1_WIDTH( 32 ),.CASE2( 4'h8 ),.din2_WIDTH( 32 ),.CASE3( 4'hC ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U124(.din0(W_2_q0),.din1(W_6_q0),.din2(W_10_q0),.din3(W_14_q0),.def(tmp_2_fu_583_p9),.sel(trunc_ln128_fu_494_p1),.dout(tmp_2_fu_583_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h4 ),.din1_WIDTH( 32 ),.CASE2( 4'h8 ),.din2_WIDTH( 32 ),.CASE3( 4'hC ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U125(.din0(W_3_q0),.din1(W_7_q0),.din2(W_11_q0),.din3(W_15_q0),.def(tmp_3_fu_607_p9),.sel(trunc_ln128_fu_494_p1),.dout(tmp_3_fu_607_p11));
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
        B_1_fu_128 <= A_21_reload;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_1_fu_128 <= temp_3_fu_914_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_fu_124 <= B_7_reload;
    end else if (((icmp_ln128_reg_997 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        B_fu_124 <= temp_2_fu_858_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_1_fu_120 <= D_21_reload;
    end else if (((icmp_ln128_reg_997 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        E_1_fu_120 <= C_4_fu_793_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_2_fu_132 <= C_17_reload;
    end else if (((icmp_ln128_reg_997 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        E_2_fu_132 <= C_2_fu_825_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_fu_116 <= E_7_reload;
    end else if (((icmp_ln128_reg_997 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        E_fu_116 <= C_3_fu_763_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_136 <= 7'd60;
    end else if (((icmp_ln128_reg_997 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        i_fu_136 <= add_ln128_fu_878_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        C_reg_1132 <= C_fu_666_p3;
        add_ln130_10_reg_1158 <= add_ln130_10_fu_735_p2;
        add_ln130_4_reg_1143 <= add_ln130_4_fu_710_p2;
        add_ln130_5_reg_1138 <= add_ln130_5_fu_705_p2;
        lshr_ln130_3_reg_1153 <= {{B_1_fu_128[31:2]}};
        lshr_ln130_5_reg_1168 <= {{temp_fu_661_p2[31:2]}};
        temp_reg_1127 <= temp_fu_661_p2;
        trunc_ln130_3_reg_1148 <= trunc_ln130_3_fu_716_p1;
        trunc_ln130_5_reg_1163 <= trunc_ln130_5_fu_740_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_1_load_reg_1081 <= E_1_fu_120;
        E_2_load_reg_1086 <= E_2_fu_132;
        add_ln130_1_reg_1092 <= add_ln130_1_fu_533_p2;
        add_ln130_reg_1097 <= add_ln130_fu_539_p2;
        lshr_ln130_1_reg_1107 <= {{B_fu_124[31:2]}};
        tmp_1_reg_1112 <= tmp_1_fu_559_p11;
        tmp_2_reg_1117 <= tmp_2_fu_583_p11;
        tmp_3_reg_1122 <= tmp_3_fu_607_p11;
        trunc_ln130_1_reg_1102 <= trunc_ln130_1_fu_545_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln130_14_reg_1203 <= add_ln130_14_fu_904_p2;
        i_1_reg_991 <= ap_sig_allocacmp_i_1;
        icmp_ln128_reg_997 <= icmp_ln128_fu_446_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        lshr_ln130_4_reg_1178 <= {{temp_1_fu_758_p2[31:27]}};
        trunc_ln130_4_reg_1173 <= trunc_ln130_4_fu_769_p1;
        xor_ln130_5_reg_1183 <= xor_ln130_5_fu_788_p2;
        xor_ln130_7_reg_1188 <= xor_ln130_7_fu_805_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        lshr_ln130_6_reg_1198 <= {{temp_2_fu_858_p2[31:27]}};
        trunc_ln130_6_reg_1193 <= trunc_ln130_6_fu_864_p1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_997 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_23_out_ap_vld = 1'b1;
    end else begin
        A_23_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_997 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_12_out_ap_vld = 1'b1;
    end else begin
        B_12_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_997 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        C_19_out_ap_vld = 1'b1;
    end else begin
        C_19_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_997 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        D_23_out_ap_vld = 1'b1;
    end else begin
        D_23_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_997 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_12_out_ap_vld = 1'b1;
    end else begin
        E_12_out_ap_vld = 1'b0;
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
    if (((icmp_ln128_reg_997 == 1'd0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_i_1 = 7'd60;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_136;
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
assign A_23_out = B_1_fu_128;
assign B_12_out = B_fu_124;
assign C_19_out = E_2_fu_132;
assign C_2_fu_825_p3 = {{trunc_ln130_7_fu_811_p1}, {lshr_ln130_7_fu_815_p4}};
assign C_3_fu_763_p3 = {{trunc_ln130_3_reg_1148}, {lshr_ln130_3_reg_1153}};
assign C_4_fu_793_p3 = {{trunc_ln130_5_reg_1163}, {lshr_ln130_5_reg_1168}};
assign C_fu_666_p3 = {{trunc_ln130_1_reg_1102}, {lshr_ln130_1_reg_1107}};
assign D_23_out = E_1_fu_120;
assign E_12_out = E_fu_116;
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
assign add_ln128_fu_878_p2 = (i_1_reg_991 + 7'd4);
assign add_ln130_10_fu_735_p2 = (add_ln130_9_fu_730_p2 + E_2_load_reg_1086);
assign add_ln130_12_fu_910_p2 = (C_reg_1132 + xor_ln130_7_reg_1188);
assign add_ln130_13_fu_899_p2 = ($signed(tmp_3_reg_1122) + $signed(32'd3395469782));
assign add_ln130_14_fu_904_p2 = (or_ln130_6_fu_893_p3 + add_ln130_13_fu_899_p2);
assign add_ln130_1_fu_533_p2 = ($signed(tmp_s_fu_497_p11) + $signed(32'd3395469782));
assign add_ln130_2_fu_656_p2 = (add_ln130_1_reg_1092 + or_ln1_fu_648_p3);
assign add_ln130_4_fu_710_p2 = (or_ln130_2_fu_697_p3 + xor_ln130_3_fu_692_p2);
assign add_ln130_5_fu_705_p2 = ($signed(tmp_1_reg_1112) + $signed(32'd3395469782));
assign add_ln130_6_fu_754_p2 = (add_ln130_5_reg_1138 + E_1_load_reg_1081);
assign add_ln130_8_fu_854_p2 = (add_ln130_10_reg_1158 + xor_ln130_5_reg_1183);
assign add_ln130_9_fu_730_p2 = ($signed(tmp_2_reg_1117) + $signed(32'd3395469782));
assign add_ln130_fu_539_p2 = (xor_ln130_1_fu_527_p2 + E_fu_116);
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
assign icmp_ln128_fu_446_p2 = ((ap_sig_allocacmp_i_1 < 7'd80) ? 1'b1 : 1'b0);
assign lshr_ln100_3_fu_452_p4 = {{ap_sig_allocacmp_i_1[6:4]}};
assign lshr_ln130_2_fu_676_p4 = {{temp_fu_661_p2[31:27]}};
assign lshr_ln130_7_fu_815_p4 = {{temp_1_fu_758_p2[31:2]}};
assign lshr_ln6_fu_638_p4 = {{B_1_fu_128[31:27]}};
assign or_ln130_2_fu_697_p3 = {{trunc_ln130_2_fu_672_p1}, {lshr_ln130_2_fu_676_p4}};
assign or_ln130_4_fu_848_p3 = {{trunc_ln130_4_reg_1173}, {lshr_ln130_4_reg_1178}};
assign or_ln130_6_fu_893_p3 = {{trunc_ln130_6_reg_1193}, {lshr_ln130_6_reg_1198}};
assign or_ln1_fu_648_p3 = {{trunc_ln130_fu_634_p1}, {lshr_ln6_fu_638_p4}};
assign temp_1_fu_758_p2 = (add_ln130_4_reg_1143 + add_ln130_6_fu_754_p2);
assign temp_2_fu_858_p2 = (add_ln130_8_fu_854_p2 + or_ln130_4_fu_848_p3);
assign temp_3_fu_914_p2 = (add_ln130_14_reg_1203 + add_ln130_12_fu_910_p2);
assign temp_fu_661_p2 = (add_ln130_reg_1097 + add_ln130_2_fu_656_p2);
assign tmp_1_fu_559_p9 = 'bx;
assign tmp_2_fu_583_p9 = 'bx;
assign tmp_3_fu_607_p9 = 'bx;
assign tmp_s_fu_497_p9 = 'bx;
assign trunc_ln128_fu_494_p1 = i_1_reg_991[3:0];
assign trunc_ln130_1_fu_545_p1 = B_fu_124[1:0];
assign trunc_ln130_2_fu_672_p1 = temp_fu_661_p2[26:0];
assign trunc_ln130_3_fu_716_p1 = B_1_fu_128[1:0];
assign trunc_ln130_4_fu_769_p1 = temp_1_fu_758_p2[26:0];
assign trunc_ln130_5_fu_740_p1 = temp_fu_661_p2[1:0];
assign trunc_ln130_6_fu_864_p1 = temp_2_fu_858_p2[26:0];
assign trunc_ln130_7_fu_811_p1 = temp_1_fu_758_p2[1:0];
assign trunc_ln130_fu_634_p1 = B_1_fu_128[26:0];
assign xor_ln130_1_fu_527_p2 = (xor_ln130_fu_521_p2 ^ E_2_fu_132);
assign xor_ln130_2_fu_686_p2 = (C_fu_666_p3 ^ B_1_fu_128);
assign xor_ln130_3_fu_692_p2 = (xor_ln130_2_fu_686_p2 ^ E_2_load_reg_1086);
assign xor_ln130_4_fu_783_p2 = (temp_reg_1127 ^ C_3_fu_763_p3);
assign xor_ln130_5_fu_788_p2 = (xor_ln130_4_fu_783_p2 ^ C_reg_1132);
assign xor_ln130_6_fu_799_p2 = (temp_1_fu_758_p2 ^ C_3_fu_763_p3);
assign xor_ln130_7_fu_805_p2 = (xor_ln130_6_fu_799_p2 ^ C_4_fu_793_p3);
assign xor_ln130_fu_521_p2 = (E_1_fu_120 ^ B_fu_124);
assign zext_ln100_fu_462_p1 = lshr_ln100_3_fu_452_p4;
endmodule 