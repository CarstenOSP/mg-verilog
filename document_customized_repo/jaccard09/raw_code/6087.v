module sha_stream_sha_transform_Pipeline_trans_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A,B,C,D,E,W_address0,W_ce0,W_q0,W_4_address0,W_4_ce0,W_4_q0,W_8_address0,W_8_ce0,W_8_q0,W_12_address0,W_12_ce0,W_12_q0,W_1_address0,W_1_ce0,W_1_q0,W_5_address0,W_5_ce0,W_5_q0,W_9_address0,W_9_ce0,W_9_q0,W_13_address0,W_13_ce0,W_13_q0,W_2_address0,W_2_ce0,W_2_q0,W_6_address0,W_6_ce0,W_6_q0,W_10_address0,W_10_ce0,W_10_q0,W_14_address0,W_14_ce0,W_14_q0,W_3_address0,W_3_ce0,W_3_q0,W_7_address0,W_7_ce0,W_7_q0,W_11_address0,W_11_ce0,W_11_q0,W_15_address0,W_15_ce0,W_15_q0,A_50_out,A_50_out_ap_vld,B_1_out,B_1_out_ap_vld,C_51_out,C_51_out_ap_vld,D_51_out,D_51_out_ap_vld,E_1_out,E_1_out_ap_vld); 
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
input  [31:0] A;
input  [31:0] B;
input  [31:0] C;
input  [31:0] D;
input  [31:0] E;
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
output  [31:0] A_50_out;
output   A_50_out_ap_vld;
output  [31:0] B_1_out;
output   B_1_out_ap_vld;
output  [31:0] C_51_out;
output   C_51_out_ap_vld;
output  [31:0] D_51_out;
output   D_51_out_ap_vld;
output  [31:0] E_1_out;
output   E_1_out_ap_vld;
reg ap_idle;
reg A_50_out_ap_vld;
reg B_1_out_ap_vld;
reg C_51_out_ap_vld;
reg D_51_out_ap_vld;
reg E_1_out_ap_vld;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln116_reg_1042;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage0_11001;
reg   [4:0] i_reg_1036;
wire   [0:0] icmp_ln116_fu_444_p2;
reg   [31:0] E_5_load_reg_1126;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] E_6_load_reg_1131;
wire   [31:0] add_ln118_1_fu_541_p2;
reg   [31:0] add_ln118_1_reg_1137;
wire   [31:0] add_ln118_fu_547_p2;
reg   [31:0] add_ln118_reg_1142;
wire   [1:0] trunc_ln118_1_fu_553_p1;
reg   [1:0] trunc_ln118_1_reg_1147;
reg   [29:0] lshr_ln118_1_reg_1152;
wire   [31:0] tmp_4_fu_567_p11;
reg   [31:0] tmp_4_reg_1157;
wire   [31:0] tmp_5_fu_591_p11;
reg   [31:0] tmp_5_reg_1162;
wire   [31:0] tmp_6_fu_615_p11;
reg   [31:0] tmp_6_reg_1167;
wire   [31:0] temp_4_fu_669_p2;
reg   [31:0] temp_4_reg_1172;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] C_9_fu_674_p3;
reg   [31:0] C_9_reg_1178;
wire   [31:0] add_ln118_5_fu_725_p2;
reg   [31:0] add_ln118_5_reg_1184;
wire   [31:0] add_ln118_4_fu_730_p2;
reg   [31:0] add_ln118_4_reg_1189;
wire   [1:0] trunc_ln118_3_fu_736_p1;
reg   [1:0] trunc_ln118_3_reg_1194;
reg   [29:0] lshr_ln118_3_reg_1199;
wire   [1:0] trunc_ln118_5_fu_750_p1;
reg   [1:0] trunc_ln118_5_reg_1204;
reg   [29:0] lshr_ln118_5_reg_1209;
wire   [31:0] add_ln118_9_fu_822_p2;
reg   [31:0] add_ln118_9_reg_1214;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] add_ln118_8_fu_827_p2;
reg   [31:0] add_ln118_8_reg_1219;
wire   [31:0] or_ln118_5_fu_857_p2;
reg   [31:0] or_ln118_5_reg_1224;
wire   [26:0] trunc_ln118_6_fu_909_p1;
reg   [26:0] trunc_ln118_6_reg_1229;
wire    ap_block_pp0_stage4_11001;
reg   [4:0] lshr_ln118_6_reg_1234;
wire   [31:0] add_ln118_14_fu_949_p2;
reg   [31:0] add_ln118_14_reg_1239;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln100_fu_458_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] E_1_fu_114;
wire   [31:0] E_9_fu_773_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [31:0] E_5_fu_118;
wire   [31:0] D_5_fu_833_p3;
reg   [31:0] E_6_fu_122;
wire   [31:0] C_5_fu_877_p3;
reg   [31:0] B_1_fu_126;
wire   [31:0] B_9_fu_904_p2;
reg   [31:0] B_5_fu_130;
wire   [31:0] A_7_fu_959_p2;
wire    ap_block_pp0_stage2;
reg   [4:0] i_1_fu_134;
wire   [4:0] add_ln116_fu_923_p2;
reg   [4:0] ap_sig_allocacmp_i;
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
wire   [0:0] tmp_fu_450_p3;
wire   [31:0] tmp_s_fu_493_p9;
wire   [3:0] trunc_ln116_fu_490_p1;
wire   [31:0] xor_ln118_fu_517_p2;
wire   [31:0] and_ln118_1_fu_529_p2;
wire   [31:0] and_ln118_fu_523_p2;
wire   [31:0] tmp_s_fu_493_p11;
wire   [31:0] or_ln118_fu_535_p2;
wire   [31:0] tmp_4_fu_567_p9;
wire   [31:0] tmp_5_fu_591_p9;
wire   [31:0] tmp_6_fu_615_p9;
wire   [26:0] trunc_ln118_fu_642_p1;
wire   [4:0] lshr_ln3_fu_646_p4;
wire   [31:0] or_ln118_1_fu_656_p3;
wire   [31:0] add_ln118_2_fu_664_p2;
wire   [31:0] xor_ln118_1_fu_694_p2;
wire   [31:0] and_ln118_2_fu_700_p2;
wire   [31:0] and_ln118_3_fu_706_p2;
wire   [26:0] trunc_ln118_2_fu_680_p1;
wire   [4:0] lshr_ln118_2_fu_684_p4;
wire   [31:0] or_ln118_4_fu_717_p3;
wire   [31:0] or_ln118_2_fu_711_p2;
wire    ap_block_pp0_stage3;
wire   [31:0] add_ln118_6_fu_764_p2;
wire   [31:0] temp_5_fu_768_p2;
wire   [31:0] xor_ln118_2_fu_793_p2;
wire   [31:0] and_ln118_4_fu_798_p2;
wire   [31:0] and_ln118_5_fu_803_p2;
wire   [26:0] trunc_ln118_4_fu_779_p1;
wire   [4:0] lshr_ln118_4_fu_783_p4;
wire   [31:0] or_ln118_7_fu_814_p3;
wire   [31:0] or_ln118_3_fu_808_p2;
wire   [31:0] xor_ln118_3_fu_839_p2;
wire   [31:0] and_ln118_6_fu_845_p2;
wire   [31:0] and_ln118_7_fu_851_p2;
wire   [1:0] trunc_ln118_7_fu_863_p1;
wire   [29:0] lshr_ln118_7_fu_867_p4;
wire    ap_block_pp0_stage4;
wire   [31:0] add_ln118_10_fu_900_p2;
wire   [31:0] or_ln118_s_fu_938_p3;
wire   [31:0] add_ln118_13_fu_944_p2;
wire   [31:0] add_ln118_12_fu_955_p2;
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
wire   [3:0] tmp_s_fu_493_p1;
wire   [3:0] tmp_s_fu_493_p3;
wire  signed [3:0] tmp_s_fu_493_p5;
wire  signed [3:0] tmp_s_fu_493_p7;
wire   [3:0] tmp_4_fu_567_p1;
wire   [3:0] tmp_4_fu_567_p3;
wire  signed [3:0] tmp_4_fu_567_p5;
wire  signed [3:0] tmp_4_fu_567_p7;
wire   [3:0] tmp_5_fu_591_p1;
wire   [3:0] tmp_5_fu_591_p3;
wire  signed [3:0] tmp_5_fu_591_p5;
wire  signed [3:0] tmp_5_fu_591_p7;
wire   [3:0] tmp_6_fu_615_p1;
wire   [3:0] tmp_6_fu_615_p3;
wire  signed [3:0] tmp_6_fu_615_p5;
wire  signed [3:0] tmp_6_fu_615_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_1_fu_114 = 32'd0;
#0 E_5_fu_118 = 32'd0;
#0 E_6_fu_122 = 32'd0;
#0 B_1_fu_126 = 32'd0;
#0 B_5_fu_130 = 32'd0;
#0 i_1_fu_134 = 5'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h4 ),.din1_WIDTH( 32 ),.CASE2( 4'h8 ),.din2_WIDTH( 32 ),.CASE3( 4'hC ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U39(.din0(W_q0),.din1(W_4_q0),.din2(W_8_q0),.din3(W_12_q0),.def(tmp_s_fu_493_p9),.sel(trunc_ln116_fu_490_p1),.dout(tmp_s_fu_493_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h4 ),.din1_WIDTH( 32 ),.CASE2( 4'h8 ),.din2_WIDTH( 32 ),.CASE3( 4'hC ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U40(.din0(W_1_q0),.din1(W_5_q0),.din2(W_9_q0),.din3(W_13_q0),.def(tmp_4_fu_567_p9),.sel(trunc_ln116_fu_490_p1),.dout(tmp_4_fu_567_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h4 ),.din1_WIDTH( 32 ),.CASE2( 4'h8 ),.din2_WIDTH( 32 ),.CASE3( 4'hC ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U41(.din0(W_2_q0),.din1(W_6_q0),.din2(W_10_q0),.din3(W_14_q0),.def(tmp_5_fu_591_p9),.sel(trunc_ln116_fu_490_p1),.dout(tmp_5_fu_591_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h4 ),.din1_WIDTH( 32 ),.CASE2( 4'h8 ),.din2_WIDTH( 32 ),.CASE3( 4'hC ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_9_4_32_1_1_U42(.din0(W_3_q0),.din1(W_7_q0),.din2(W_11_q0),.din3(W_15_q0),.def(tmp_6_fu_615_p9),.sel(trunc_ln116_fu_490_p1),.dout(tmp_6_fu_615_p11));
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
        B_1_fu_126 <= B;
    end else if (((icmp_ln116_reg_1042 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        B_1_fu_126 <= B_9_fu_904_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_5_fu_130 <= A;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_5_fu_130 <= A_7_fu_959_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_1_fu_114 <= E;
    end else if (((icmp_ln116_reg_1042 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        E_1_fu_114 <= E_9_fu_773_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_5_fu_118 <= D;
    end else if (((icmp_ln116_reg_1042 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        E_5_fu_118 <= D_5_fu_833_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_6_fu_122 <= C;
    end else if (((icmp_ln116_reg_1042 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        E_6_fu_122 <= C_5_fu_877_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_1_fu_134 <= 5'd0;
    end else if (((icmp_ln116_reg_1042 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        i_1_fu_134 <= add_ln116_fu_923_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        C_9_reg_1178 <= C_9_fu_674_p3;
        add_ln118_4_reg_1189 <= add_ln118_4_fu_730_p2;
        add_ln118_5_reg_1184 <= add_ln118_5_fu_725_p2;
        lshr_ln118_3_reg_1199 <= {{B_5_fu_130[31:2]}};
        lshr_ln118_5_reg_1209 <= {{temp_4_fu_669_p2[31:2]}};
        temp_4_reg_1172 <= temp_4_fu_669_p2;
        trunc_ln118_3_reg_1194 <= trunc_ln118_3_fu_736_p1;
        trunc_ln118_5_reg_1204 <= trunc_ln118_5_fu_750_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_5_load_reg_1126 <= E_5_fu_118;
        E_6_load_reg_1131 <= E_6_fu_122;
        add_ln118_1_reg_1137 <= add_ln118_1_fu_541_p2;
        add_ln118_reg_1142 <= add_ln118_fu_547_p2;
        lshr_ln118_1_reg_1152 <= {{B_1_fu_126[31:2]}};
        tmp_4_reg_1157 <= tmp_4_fu_567_p11;
        tmp_5_reg_1162 <= tmp_5_fu_591_p11;
        tmp_6_reg_1167 <= tmp_6_fu_615_p11;
        trunc_ln118_1_reg_1147 <= trunc_ln118_1_fu_553_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln118_14_reg_1239 <= add_ln118_14_fu_949_p2;
        i_reg_1036 <= ap_sig_allocacmp_i;
        icmp_ln116_reg_1042 <= icmp_ln116_fu_444_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln118_8_reg_1219 <= add_ln118_8_fu_827_p2;
        add_ln118_9_reg_1214 <= add_ln118_9_fu_822_p2;
        or_ln118_5_reg_1224 <= or_ln118_5_fu_857_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        lshr_ln118_6_reg_1234 <= {{B_9_fu_904_p2[31:27]}};
        trunc_ln118_6_reg_1229 <= trunc_ln118_6_fu_909_p1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1042 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_50_out_ap_vld = 1'b1;
    end else begin
        A_50_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1042 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_1_out_ap_vld = 1'b1;
    end else begin
        B_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1042 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        C_51_out_ap_vld = 1'b1;
    end else begin
        C_51_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1042 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        D_51_out_ap_vld = 1'b1;
    end else begin
        D_51_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1042 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_1_out_ap_vld = 1'b1;
    end else begin
        E_1_out_ap_vld = 1'b0;
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
    if (((icmp_ln116_reg_1042 == 1'd0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_i = 5'd0;
    end else begin
        ap_sig_allocacmp_i = i_1_fu_134;
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
assign A_50_out = B_5_fu_130;
assign A_7_fu_959_p2 = (add_ln118_14_reg_1239 + add_ln118_12_fu_955_p2);
assign B_1_out = B_1_fu_126;
assign B_9_fu_904_p2 = (add_ln118_8_reg_1219 + add_ln118_10_fu_900_p2);
assign C_51_out = E_6_fu_122;
assign C_5_fu_877_p3 = {{trunc_ln118_7_fu_863_p1}, {lshr_ln118_7_fu_867_p4}};
assign C_9_fu_674_p3 = {{trunc_ln118_1_reg_1147}, {lshr_ln118_1_reg_1152}};
assign D_51_out = E_5_fu_118;
assign D_5_fu_833_p3 = {{trunc_ln118_5_reg_1204}, {lshr_ln118_5_reg_1209}};
assign E_1_out = E_1_fu_114;
assign E_9_fu_773_p3 = {{trunc_ln118_3_reg_1194}, {lshr_ln118_3_reg_1199}};
assign W_10_address0 = zext_ln100_fu_458_p1;
assign W_10_ce0 = W_10_ce0_local;
assign W_11_address0 = zext_ln100_fu_458_p1;
assign W_11_ce0 = W_11_ce0_local;
assign W_12_address0 = zext_ln100_fu_458_p1;
assign W_12_ce0 = W_12_ce0_local;
assign W_13_address0 = zext_ln100_fu_458_p1;
assign W_13_ce0 = W_13_ce0_local;
assign W_14_address0 = zext_ln100_fu_458_p1;
assign W_14_ce0 = W_14_ce0_local;
assign W_15_address0 = zext_ln100_fu_458_p1;
assign W_15_ce0 = W_15_ce0_local;
assign W_1_address0 = zext_ln100_fu_458_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_2_address0 = zext_ln100_fu_458_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_3_address0 = zext_ln100_fu_458_p1;
assign W_3_ce0 = W_3_ce0_local;
assign W_4_address0 = zext_ln100_fu_458_p1;
assign W_4_ce0 = W_4_ce0_local;
assign W_5_address0 = zext_ln100_fu_458_p1;
assign W_5_ce0 = W_5_ce0_local;
assign W_6_address0 = zext_ln100_fu_458_p1;
assign W_6_ce0 = W_6_ce0_local;
assign W_7_address0 = zext_ln100_fu_458_p1;
assign W_7_ce0 = W_7_ce0_local;
assign W_8_address0 = zext_ln100_fu_458_p1;
assign W_8_ce0 = W_8_ce0_local;
assign W_9_address0 = zext_ln100_fu_458_p1;
assign W_9_ce0 = W_9_ce0_local;
assign W_address0 = zext_ln100_fu_458_p1;
assign W_ce0 = W_ce0_local;
assign add_ln116_fu_923_p2 = (i_reg_1036 + 5'd4);
assign add_ln118_10_fu_900_p2 = (add_ln118_9_reg_1214 + E_6_load_reg_1131);
assign add_ln118_12_fu_955_p2 = (C_9_reg_1178 + or_ln118_5_reg_1224);
assign add_ln118_13_fu_944_p2 = (tmp_6_reg_1167 + 32'd1518500249);
assign add_ln118_14_fu_949_p2 = (or_ln118_s_fu_938_p3 + add_ln118_13_fu_944_p2);
assign add_ln118_1_fu_541_p2 = (tmp_s_fu_493_p11 + 32'd1518500249);
assign add_ln118_2_fu_664_p2 = (add_ln118_1_reg_1137 + or_ln118_1_fu_656_p3);
assign add_ln118_4_fu_730_p2 = (or_ln118_4_fu_717_p3 + or_ln118_2_fu_711_p2);
assign add_ln118_5_fu_725_p2 = (tmp_4_reg_1157 + 32'd1518500249);
assign add_ln118_6_fu_764_p2 = (add_ln118_5_reg_1184 + E_5_load_reg_1126);
assign add_ln118_8_fu_827_p2 = (or_ln118_7_fu_814_p3 + or_ln118_3_fu_808_p2);
assign add_ln118_9_fu_822_p2 = (tmp_5_reg_1162 + 32'd1518500249);
assign add_ln118_fu_547_p2 = (or_ln118_fu_535_p2 + E_1_fu_114);
assign and_ln118_1_fu_529_p2 = (xor_ln118_fu_517_p2 & E_5_fu_118);
assign and_ln118_2_fu_700_p2 = (C_9_fu_674_p3 & B_5_fu_130);
assign and_ln118_3_fu_706_p2 = (xor_ln118_1_fu_694_p2 & E_6_load_reg_1131);
assign and_ln118_4_fu_798_p2 = (temp_4_reg_1172 & E_9_fu_773_p3);
assign and_ln118_5_fu_803_p2 = (xor_ln118_2_fu_793_p2 & C_9_reg_1178);
assign and_ln118_6_fu_845_p2 = (temp_5_fu_768_p2 & D_5_fu_833_p3);
assign and_ln118_7_fu_851_p2 = (xor_ln118_3_fu_839_p2 & E_9_fu_773_p3);
assign and_ln118_fu_523_p2 = (E_6_fu_122 & B_1_fu_126);
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
assign icmp_ln116_fu_444_p2 = ((ap_sig_allocacmp_i < 5'd20) ? 1'b1 : 1'b0);
assign lshr_ln118_2_fu_684_p4 = {{temp_4_fu_669_p2[31:27]}};
assign lshr_ln118_4_fu_783_p4 = {{temp_5_fu_768_p2[31:27]}};
assign lshr_ln118_7_fu_867_p4 = {{temp_5_fu_768_p2[31:2]}};
assign lshr_ln3_fu_646_p4 = {{B_5_fu_130[31:27]}};
assign or_ln118_1_fu_656_p3 = {{trunc_ln118_fu_642_p1}, {lshr_ln3_fu_646_p4}};
assign or_ln118_2_fu_711_p2 = (and_ln118_3_fu_706_p2 | and_ln118_2_fu_700_p2);
assign or_ln118_3_fu_808_p2 = (and_ln118_5_fu_803_p2 | and_ln118_4_fu_798_p2);
assign or_ln118_4_fu_717_p3 = {{trunc_ln118_2_fu_680_p1}, {lshr_ln118_2_fu_684_p4}};
assign or_ln118_5_fu_857_p2 = (and_ln118_7_fu_851_p2 | and_ln118_6_fu_845_p2);
assign or_ln118_7_fu_814_p3 = {{trunc_ln118_4_fu_779_p1}, {lshr_ln118_4_fu_783_p4}};
assign or_ln118_fu_535_p2 = (and_ln118_fu_523_p2 | and_ln118_1_fu_529_p2);
assign or_ln118_s_fu_938_p3 = {{trunc_ln118_6_reg_1229}, {lshr_ln118_6_reg_1234}};
assign temp_4_fu_669_p2 = (add_ln118_reg_1142 + add_ln118_2_fu_664_p2);
assign temp_5_fu_768_p2 = (add_ln118_4_reg_1189 + add_ln118_6_fu_764_p2);
assign tmp_4_fu_567_p9 = 'bx;
assign tmp_5_fu_591_p9 = 'bx;
assign tmp_6_fu_615_p9 = 'bx;
assign tmp_fu_450_p3 = ap_sig_allocacmp_i[32'd4];
assign tmp_s_fu_493_p9 = 'bx;
assign trunc_ln116_fu_490_p1 = i_reg_1036[3:0];
assign trunc_ln118_1_fu_553_p1 = B_1_fu_126[1:0];
assign trunc_ln118_2_fu_680_p1 = temp_4_fu_669_p2[26:0];
assign trunc_ln118_3_fu_736_p1 = B_5_fu_130[1:0];
assign trunc_ln118_4_fu_779_p1 = temp_5_fu_768_p2[26:0];
assign trunc_ln118_5_fu_750_p1 = temp_4_fu_669_p2[1:0];
assign trunc_ln118_6_fu_909_p1 = B_9_fu_904_p2[26:0];
assign trunc_ln118_7_fu_863_p1 = temp_5_fu_768_p2[1:0];
assign trunc_ln118_fu_642_p1 = B_5_fu_130[26:0];
assign xor_ln118_1_fu_694_p2 = (32'd4294967295 ^ B_5_fu_130);
assign xor_ln118_2_fu_793_p2 = (temp_4_reg_1172 ^ 32'd4294967295);
assign xor_ln118_3_fu_839_p2 = (temp_5_fu_768_p2 ^ 32'd4294967295);
assign xor_ln118_fu_517_p2 = (32'd4294967295 ^ B_1_fu_126);
assign zext_ln100_fu_458_p1 = tmp_fu_450_p3;
endmodule 