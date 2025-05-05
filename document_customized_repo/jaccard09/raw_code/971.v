module sha_stream_sha_transform_Pipeline_trans_lp5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_19_reload,B_14_reload,C_16_reload,D_19_reload,E_14_reload,W_8_load_5,W_9_load_5,W_10_load_5,W_11_load_5,W_12_load_5,W_13_load_5,W_14_load_5,W_15_load_5,W_16_load_5,W_17_load_5,W_18_load_5,W_19_load_5,W_20_load_5,W_21_load_5,W_22_load_5,W_23_load_5,W_24_load_4,W_25_load_4,W_26_load_4,W_27_load_4,B_23_out,B_23_out_ap_vld,B_20_out,B_20_out_ap_vld,D_24_out,D_24_out_ap_vld,E_23_out,E_23_out_ap_vld,E_20_out,E_20_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] A_19_reload;
input  [31:0] B_14_reload;
input  [31:0] C_16_reload;
input  [31:0] D_19_reload;
input  [31:0] E_14_reload;
input  [31:0] W_8_load_5;
input  [31:0] W_9_load_5;
input  [31:0] W_10_load_5;
input  [31:0] W_11_load_5;
input  [31:0] W_12_load_5;
input  [31:0] W_13_load_5;
input  [31:0] W_14_load_5;
input  [31:0] W_15_load_5;
input  [31:0] W_16_load_5;
input  [31:0] W_17_load_5;
input  [31:0] W_18_load_5;
input  [31:0] W_19_load_5;
input  [31:0] W_20_load_5;
input  [31:0] W_21_load_5;
input  [31:0] W_22_load_5;
input  [31:0] W_23_load_5;
input  [31:0] W_24_load_4;
input  [31:0] W_25_load_4;
input  [31:0] W_26_load_4;
input  [31:0] W_27_load_4;
output  [31:0] B_23_out;
output   B_23_out_ap_vld;
output  [31:0] B_20_out;
output   B_20_out_ap_vld;
output  [31:0] D_24_out;
output   D_24_out_ap_vld;
output  [31:0] E_23_out;
output   E_23_out_ap_vld;
output  [31:0] E_20_out;
output   E_20_out_ap_vld;
reg ap_idle;
reg B_23_out_ap_vld;
reg B_20_out_ap_vld;
reg D_24_out_ap_vld;
reg E_23_out_ap_vld;
reg E_20_out_ap_vld;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln124_fu_390_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln124_reg_682;
reg   [0:0] icmp_ln124_reg_682_pp0_iter1_reg;
wire   [31:0] tmp_s_fu_400_p43;
reg   [31:0] tmp_s_reg_686;
reg   [31:0] E_4_reg_691;
reg   [31:0] D_6_reg_696;
wire   [31:0] add_ln126_2_fu_540_p2;
reg   [31:0] add_ln126_2_reg_701;
reg   [31:0] E_fu_148;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [31:0] B_fu_152;
reg   [31:0] ap_sig_allocacmp_B_load_2;
reg   [5:0] i_fu_156;
wire   [5:0] add_ln124_fu_488_p2;
reg   [5:0] ap_sig_allocacmp_i_2;
reg   [31:0] D_fu_160;
reg   [31:0] C_fu_164;
wire   [31:0] C_3_fu_560_p3;
reg   [31:0] A_fu_168;
wire   [31:0] A_4_fu_615_p2;
wire    ap_block_pp0_stage0_01001;
wire   [31:0] tmp_s_fu_400_p41;
wire   [4:0] tmp_s_fu_400_p42;
wire   [31:0] or_ln126_fu_511_p2;
wire   [31:0] and_ln126_fu_517_p2;
wire   [31:0] and_ln126_1_fu_523_p2;
wire   [31:0] or_ln126_1_fu_529_p2;
wire   [31:0] add_ln126_1_fu_535_p2;
wire   [1:0] trunc_ln126_1_fu_546_p1;
wire   [29:0] lshr_ln126_1_fu_550_p4;
wire   [26:0] trunc_ln126_fu_587_p1;
wire   [4:0] lshr_ln5_fu_591_p4;
wire   [31:0] or_ln126_2_fu_601_p3;
wire   [31:0] add_ln126_fu_609_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [4:0] tmp_s_fu_400_p1;
wire   [4:0] tmp_s_fu_400_p3;
wire   [4:0] tmp_s_fu_400_p5;
wire   [4:0] tmp_s_fu_400_p7;
wire   [4:0] tmp_s_fu_400_p9;
wire   [4:0] tmp_s_fu_400_p11;
wire   [4:0] tmp_s_fu_400_p13;
wire   [4:0] tmp_s_fu_400_p15;
wire  signed [4:0] tmp_s_fu_400_p17;
wire  signed [4:0] tmp_s_fu_400_p19;
wire  signed [4:0] tmp_s_fu_400_p21;
wire  signed [4:0] tmp_s_fu_400_p23;
wire  signed [4:0] tmp_s_fu_400_p25;
wire  signed [4:0] tmp_s_fu_400_p27;
wire  signed [4:0] tmp_s_fu_400_p29;
wire  signed [4:0] tmp_s_fu_400_p31;
wire  signed [4:0] tmp_s_fu_400_p33;
wire  signed [4:0] tmp_s_fu_400_p35;
wire  signed [4:0] tmp_s_fu_400_p37;
wire  signed [4:0] tmp_s_fu_400_p39;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 E_fu_148 = 32'd0;
#0 B_fu_152 = 32'd0;
#0 i_fu_156 = 6'd0;
#0 D_fu_160 = 32'd0;
#0 C_fu_164 = 32'd0;
#0 A_fu_168 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_41_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h8 ),.din0_WIDTH( 32 ),.CASE1( 5'h9 ),.din1_WIDTH( 32 ),.CASE2( 5'hA ),.din2_WIDTH( 32 ),.CASE3( 5'hB ),.din3_WIDTH( 32 ),.CASE4( 5'hC ),.din4_WIDTH( 32 ),.CASE5( 5'hD ),.din5_WIDTH( 32 ),.CASE6( 5'hE ),.din6_WIDTH( 32 ),.CASE7( 5'hF ),.din7_WIDTH( 32 ),.CASE8( 5'h10 ),.din8_WIDTH( 32 ),.CASE9( 5'h11 ),.din9_WIDTH( 32 ),.CASE10( 5'h12 ),.din10_WIDTH( 32 ),.CASE11( 5'h13 ),.din11_WIDTH( 32 ),.CASE12( 5'h14 ),.din12_WIDTH( 32 ),.CASE13( 5'h15 ),.din13_WIDTH( 32 ),.CASE14( 5'h16 ),.din14_WIDTH( 32 ),.CASE15( 5'h17 ),.din15_WIDTH( 32 ),.CASE16( 5'h18 ),.din16_WIDTH( 32 ),.CASE17( 5'h19 ),.din17_WIDTH( 32 ),.CASE18( 5'h1A ),.din18_WIDTH( 32 ),.CASE19( 5'h1B ),.din19_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_41_5_32_1_1_U151(.din0(W_8_load_5),.din1(W_9_load_5),.din2(W_10_load_5),.din3(W_11_load_5),.din4(W_12_load_5),.din5(W_13_load_5),.din6(W_14_load_5),.din7(W_15_load_5),.din8(W_16_load_5),.din9(W_17_load_5),.din10(W_18_load_5),.din11(W_19_load_5),.din12(W_20_load_5),.din13(W_21_load_5),.din14(W_22_load_5),.din15(W_23_load_5),.din16(W_24_load_4),.din17(W_25_load_4),.din18(W_26_load_4),.din19(W_27_load_4),.def(tmp_s_fu_400_p41),.sel(tmp_s_fu_400_p42),.dout(tmp_s_fu_400_p43));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            A_fu_168 <= A_19_reload;
        end else if (((icmp_ln124_reg_682_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
            A_fu_168 <= A_4_fu_615_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            B_fu_152 <= B_14_reload;
        end else if (((icmp_ln124_reg_682_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
            B_fu_152 <= A_fu_168;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            C_fu_164 <= C_16_reload;
        end else if (((icmp_ln124_reg_682 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            C_fu_164 <= C_3_fu_560_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            D_fu_160 <= D_19_reload;
        end else if (((icmp_ln124_reg_682 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            D_fu_160 <= C_fu_164;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            E_fu_148 <= E_14_reload;
        end else if (((icmp_ln124_reg_682 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            E_fu_148 <= D_fu_160;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln124_fu_390_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_156 <= add_ln124_fu_488_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_156 <= 6'd40;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        D_6_reg_696 <= C_fu_164;
        E_4_reg_691 <= D_fu_160;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln126_2_reg_701 <= add_ln126_2_fu_540_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln124_reg_682 <= icmp_ln124_fu_390_p2;
        icmp_ln124_reg_682_pp0_iter1_reg <= icmp_ln124_reg_682;
        tmp_s_reg_686 <= tmp_s_fu_400_p43;
    end
end
always @ (*) begin
    if (((icmp_ln124_reg_682_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        B_20_out_ap_vld = 1'b1;
    end else begin
        B_20_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln124_reg_682_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        B_23_out_ap_vld = 1'b1;
    end else begin
        B_23_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln124_reg_682_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        D_24_out_ap_vld = 1'b1;
    end else begin
        D_24_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln124_reg_682_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        E_20_out_ap_vld = 1'b1;
    end else begin
        E_20_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln124_reg_682_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        E_23_out_ap_vld = 1'b1;
    end else begin
        E_23_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln124_fu_390_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln124_reg_682_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_sig_allocacmp_B_load_2 = A_fu_168;
    end else begin
        ap_sig_allocacmp_B_load_2 = B_fu_152;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_2 = 6'd40;
    end else begin
        ap_sig_allocacmp_i_2 = i_fu_156;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_4_fu_615_p2 = (add_ln126_2_reg_701 + add_ln126_fu_609_p2);
assign B_20_out = B_fu_152;
assign B_23_out = A_fu_168;
assign C_3_fu_560_p3 = {{trunc_ln126_1_fu_546_p1}, {lshr_ln126_1_fu_550_p4}};
assign D_24_out = D_6_reg_696;
assign E_20_out = E_fu_148;
assign E_23_out = E_4_reg_691;
assign add_ln124_fu_488_p2 = (ap_sig_allocacmp_i_2 + 6'd1);
assign add_ln126_1_fu_535_p2 = (or_ln126_1_fu_529_p2 + tmp_s_reg_686);
assign add_ln126_2_fu_540_p2 = (add_ln126_1_fu_535_p2 + E_fu_148);
assign add_ln126_fu_609_p2 = ($signed(or_ln126_2_fu_601_p3) + $signed(32'd2400959708));
assign and_ln126_1_fu_523_p2 = (D_fu_160 & C_fu_164);
assign and_ln126_fu_517_p2 = (or_ln126_fu_511_p2 & ap_sig_allocacmp_B_load_2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln124_fu_390_p2 = ((ap_sig_allocacmp_i_2 == 6'd60) ? 1'b1 : 1'b0);
assign lshr_ln126_1_fu_550_p4 = {{ap_sig_allocacmp_B_load_2[31:2]}};
assign lshr_ln5_fu_591_p4 = {{A_fu_168[31:27]}};
assign or_ln126_1_fu_529_p2 = (and_ln126_fu_517_p2 | and_ln126_1_fu_523_p2);
assign or_ln126_2_fu_601_p3 = {{trunc_ln126_fu_587_p1}, {lshr_ln5_fu_591_p4}};
assign or_ln126_fu_511_p2 = (D_fu_160 | C_fu_164);
assign tmp_s_fu_400_p41 = 'bx;
assign tmp_s_fu_400_p42 = ap_sig_allocacmp_i_2[4:0];
assign trunc_ln126_1_fu_546_p1 = ap_sig_allocacmp_B_load_2[1:0];
assign trunc_ln126_fu_587_p1 = A_fu_168[26:0];
endmodule 