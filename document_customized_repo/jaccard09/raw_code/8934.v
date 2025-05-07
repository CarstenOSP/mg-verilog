module sha_stream_sha_transform_Pipeline_trans_lp4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_26_reload,B_2_reload,C_20_reload,D_26_reload,E_2_reload,W_20_load_1_reload,W_21_load_1_reload,W_22_load_1_reload,W_23_load_1_reload,W_24_load_1_reload,W_25_load_1_reload,W_26_load_1_reload,W_27_load_1_reload,W_28_load_1_reload,W_29_load_1_reload,W_30_load_1_reload,W_31_load_1_reload,W_32_load_1_reload,W_33_load_1_reload,W_34_load_1_reload,W_35_load_1_reload,W_36_load_1_reload,W_37_load_1_reload,W_38_load_1_reload,W_39_load_1_reload,A_27_out,A_27_out_ap_vld,B_5_out,B_5_out_ap_vld,C_21_out,C_21_out_ap_vld,D_27_out,D_27_out_ap_vld,E_5_out,E_5_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] A_26_reload;
input  [31:0] B_2_reload;
input  [31:0] C_20_reload;
input  [31:0] D_26_reload;
input  [31:0] E_2_reload;
input  [31:0] W_20_load_1_reload;
input  [31:0] W_21_load_1_reload;
input  [31:0] W_22_load_1_reload;
input  [31:0] W_23_load_1_reload;
input  [31:0] W_24_load_1_reload;
input  [31:0] W_25_load_1_reload;
input  [31:0] W_26_load_1_reload;
input  [31:0] W_27_load_1_reload;
input  [31:0] W_28_load_1_reload;
input  [31:0] W_29_load_1_reload;
input  [31:0] W_30_load_1_reload;
input  [31:0] W_31_load_1_reload;
input  [31:0] W_32_load_1_reload;
input  [31:0] W_33_load_1_reload;
input  [31:0] W_34_load_1_reload;
input  [31:0] W_35_load_1_reload;
input  [31:0] W_36_load_1_reload;
input  [31:0] W_37_load_1_reload;
input  [31:0] W_38_load_1_reload;
input  [31:0] W_39_load_1_reload;
output  [31:0] A_27_out;
output   A_27_out_ap_vld;
output  [31:0] B_5_out;
output   B_5_out_ap_vld;
output  [31:0] C_21_out;
output   C_21_out_ap_vld;
output  [31:0] D_27_out;
output   D_27_out_ap_vld;
output  [31:0] E_5_out;
output   E_5_out_ap_vld;
reg ap_idle;
reg A_27_out_ap_vld;
reg B_5_out_ap_vld;
reg C_21_out_ap_vld;
reg D_27_out_ap_vld;
reg E_5_out_ap_vld;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln120_fu_388_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln120_reg_663;
reg   [0:0] icmp_ln120_reg_663_pp0_iter1_reg;
wire   [31:0] tmp_5_fu_394_p43;
reg   [31:0] tmp_5_reg_667;
reg   [31:0] D_7_reg_672;
reg   [31:0] C_reg_678;
wire   [31:0] add_ln122_2_fu_519_p2;
reg   [31:0] add_ln122_2_reg_683;
reg   [31:0] E_5_fu_146;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [31:0] B_5_fu_150;
reg   [31:0] ap_sig_allocacmp_B_5_load;
reg   [5:0] i_2_fu_154;
wire   [5:0] add_ln120_fu_482_p2;
reg   [5:0] ap_sig_allocacmp_i;
reg   [31:0] E_fu_158;
reg   [31:0] D_fu_162;
wire   [31:0] C_3_fu_539_p3;
reg   [31:0] B_fu_166;
wire   [31:0] temp_fu_592_p2;
wire    ap_block_pp0_stage0_01001;
wire   [31:0] tmp_5_fu_394_p41;
wire   [31:0] xor_ln122_fu_502_p2;
wire   [31:0] xor_ln122_1_fu_508_p2;
wire   [31:0] add_ln122_1_fu_514_p2;
wire   [1:0] trunc_ln122_1_fu_525_p1;
wire   [29:0] lshr_ln122_1_fu_529_p4;
wire   [26:0] trunc_ln122_fu_564_p1;
wire   [4:0] lshr_ln1_fu_568_p4;
wire   [31:0] or_ln_fu_578_p3;
wire   [31:0] add_ln122_fu_586_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [5:0] tmp_5_fu_394_p1;
wire   [5:0] tmp_5_fu_394_p3;
wire   [5:0] tmp_5_fu_394_p5;
wire   [5:0] tmp_5_fu_394_p7;
wire   [5:0] tmp_5_fu_394_p9;
wire   [5:0] tmp_5_fu_394_p11;
wire   [5:0] tmp_5_fu_394_p13;
wire   [5:0] tmp_5_fu_394_p15;
wire   [5:0] tmp_5_fu_394_p17;
wire   [5:0] tmp_5_fu_394_p19;
wire   [5:0] tmp_5_fu_394_p21;
wire   [5:0] tmp_5_fu_394_p23;
wire  signed [5:0] tmp_5_fu_394_p25;
wire  signed [5:0] tmp_5_fu_394_p27;
wire  signed [5:0] tmp_5_fu_394_p29;
wire  signed [5:0] tmp_5_fu_394_p31;
wire  signed [5:0] tmp_5_fu_394_p33;
wire  signed [5:0] tmp_5_fu_394_p35;
wire  signed [5:0] tmp_5_fu_394_p37;
wire  signed [5:0] tmp_5_fu_394_p39;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 E_5_fu_146 = 32'd0;
#0 B_5_fu_150 = 32'd0;
#0 i_2_fu_154 = 6'd0;
#0 E_fu_158 = 32'd0;
#0 D_fu_162 = 32'd0;
#0 B_fu_166 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_41_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h14 ),.din0_WIDTH( 32 ),.CASE1( 6'h15 ),.din1_WIDTH( 32 ),.CASE2( 6'h16 ),.din2_WIDTH( 32 ),.CASE3( 6'h17 ),.din3_WIDTH( 32 ),.CASE4( 6'h18 ),.din4_WIDTH( 32 ),.CASE5( 6'h19 ),.din5_WIDTH( 32 ),.CASE6( 6'h1A ),.din6_WIDTH( 32 ),.CASE7( 6'h1B ),.din7_WIDTH( 32 ),.CASE8( 6'h1C ),.din8_WIDTH( 32 ),.CASE9( 6'h1D ),.din9_WIDTH( 32 ),.CASE10( 6'h1E ),.din10_WIDTH( 32 ),.CASE11( 6'h1F ),.din11_WIDTH( 32 ),.CASE12( 6'h20 ),.din12_WIDTH( 32 ),.CASE13( 6'h21 ),.din13_WIDTH( 32 ),.CASE14( 6'h22 ),.din14_WIDTH( 32 ),.CASE15( 6'h23 ),.din15_WIDTH( 32 ),.CASE16( 6'h24 ),.din16_WIDTH( 32 ),.CASE17( 6'h25 ),.din17_WIDTH( 32 ),.CASE18( 6'h26 ),.din18_WIDTH( 32 ),.CASE19( 6'h27 ),.din19_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_41_6_32_1_1_U123(.din0(W_20_load_1_reload),.din1(W_21_load_1_reload),.din2(W_22_load_1_reload),.din3(W_23_load_1_reload),.din4(W_24_load_1_reload),.din5(W_25_load_1_reload),.din6(W_26_load_1_reload),.din7(W_27_load_1_reload),.din8(W_28_load_1_reload),.din9(W_29_load_1_reload),.din10(W_30_load_1_reload),.din11(W_31_load_1_reload),.din12(W_32_load_1_reload),.din13(W_33_load_1_reload),.din14(W_34_load_1_reload),.din15(W_35_load_1_reload),.din16(W_36_load_1_reload),.din17(W_37_load_1_reload),.din18(W_38_load_1_reload),.din19(W_39_load_1_reload),.def(tmp_5_fu_394_p41),.sel(ap_sig_allocacmp_i),.dout(tmp_5_fu_394_p43));
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
            B_5_fu_150 <= B_2_reload;
        end else if (((icmp_ln120_reg_663_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
            B_5_fu_150 <= B_fu_166;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            B_fu_166 <= A_26_reload;
        end else if (((icmp_ln120_reg_663_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
            B_fu_166 <= temp_fu_592_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            D_fu_162 <= C_20_reload;
        end else if (((icmp_ln120_reg_663 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            D_fu_162 <= C_3_fu_539_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            E_5_fu_146 <= E_2_reload;
        end else if (((icmp_ln120_reg_663_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
            E_5_fu_146 <= D_7_reg_672;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            E_fu_158 <= D_26_reload;
        end else if (((icmp_ln120_reg_663 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            E_fu_158 <= D_fu_162;
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
        if (((icmp_ln120_fu_388_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_2_fu_154 <= add_ln120_fu_482_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_2_fu_154 <= 6'd20;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        C_reg_678 <= D_fu_162;
        D_7_reg_672 <= E_fu_158;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln122_2_reg_683 <= add_ln122_2_fu_519_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln120_reg_663 <= icmp_ln120_fu_388_p2;
        icmp_ln120_reg_663_pp0_iter1_reg <= icmp_ln120_reg_663;
        tmp_5_reg_667 <= tmp_5_fu_394_p43;
    end
end
always @ (*) begin
    if (((icmp_ln120_reg_663_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        A_27_out_ap_vld = 1'b1;
    end else begin
        A_27_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln120_reg_663_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        B_5_out_ap_vld = 1'b1;
    end else begin
        B_5_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln120_reg_663_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        C_21_out_ap_vld = 1'b1;
    end else begin
        C_21_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln120_reg_663_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        D_27_out_ap_vld = 1'b1;
    end else begin
        D_27_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln120_reg_663_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        E_5_out_ap_vld = 1'b1;
    end else begin
        E_5_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln120_fu_388_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((icmp_ln120_reg_663_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_sig_allocacmp_B_5_load = B_fu_166;
    end else begin
        ap_sig_allocacmp_B_5_load = B_5_fu_150;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i = 6'd20;
    end else begin
        ap_sig_allocacmp_i = i_2_fu_154;
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
assign A_27_out = B_fu_166;
assign B_5_out = B_5_fu_150;
assign C_21_out = C_reg_678;
assign C_3_fu_539_p3 = {{trunc_ln122_1_fu_525_p1}, {lshr_ln122_1_fu_529_p4}};
assign D_27_out = D_7_reg_672;
assign E_5_out = E_5_fu_146;
assign add_ln120_fu_482_p2 = (ap_sig_allocacmp_i + 6'd1);
assign add_ln122_1_fu_514_p2 = (tmp_5_reg_667 + 32'd1859775393);
assign add_ln122_2_fu_519_p2 = (xor_ln122_1_fu_508_p2 + add_ln122_1_fu_514_p2);
assign add_ln122_fu_586_p2 = (or_ln_fu_578_p3 + E_5_fu_146);
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
assign icmp_ln120_fu_388_p2 = ((ap_sig_allocacmp_i == 6'd40) ? 1'b1 : 1'b0);
assign lshr_ln122_1_fu_529_p4 = {{ap_sig_allocacmp_B_5_load[31:2]}};
assign lshr_ln1_fu_568_p4 = {{B_fu_166[31:27]}};
assign or_ln_fu_578_p3 = {{trunc_ln122_fu_564_p1}, {lshr_ln1_fu_568_p4}};
assign temp_fu_592_p2 = (add_ln122_2_reg_683 + add_ln122_fu_586_p2);
assign tmp_5_fu_394_p41 = 'bx;
assign trunc_ln122_1_fu_525_p1 = ap_sig_allocacmp_B_5_load[1:0];
assign trunc_ln122_fu_564_p1 = B_fu_166[26:0];
assign xor_ln122_1_fu_508_p2 = (xor_ln122_fu_502_p2 ^ D_fu_162);
assign xor_ln122_fu_502_p2 = (ap_sig_allocacmp_B_5_load ^ E_fu_158);
endmodule 