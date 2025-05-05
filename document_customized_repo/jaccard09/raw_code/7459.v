module sha_stream_sha_transform_Pipeline_trans_lp6 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,B_45_reload,B_43_reload,D_45_reload,E_45_reload,E_28_reload,W_76_reload,W_77_reload,W_78_reload,W_79_reload,W_31_reload,W_30_reload,W_29_reload,W_28_reload,W_27_reload,W_26_reload,W_25_reload,W_24_reload,W_23_reload,W_22_reload,W_21_reload,W_20_reload,W_151,W_150,W_149,W_148,A_46_out,A_46_out_ap_vld,B_35_out,B_35_out_ap_vld,C_85_out,C_85_out_ap_vld,D_46_out,D_46_out_ap_vld,E_32_out,E_32_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] B_45_reload;
input  [31:0] B_43_reload;
input  [31:0] D_45_reload;
input  [31:0] E_45_reload;
input  [31:0] E_28_reload;
input  [31:0] W_76_reload;
input  [31:0] W_77_reload;
input  [31:0] W_78_reload;
input  [31:0] W_79_reload;
input  [31:0] W_31_reload;
input  [31:0] W_30_reload;
input  [31:0] W_29_reload;
input  [31:0] W_28_reload;
input  [31:0] W_27_reload;
input  [31:0] W_26_reload;
input  [31:0] W_25_reload;
input  [31:0] W_24_reload;
input  [31:0] W_23_reload;
input  [31:0] W_22_reload;
input  [31:0] W_21_reload;
input  [31:0] W_20_reload;
input  [31:0] W_151;
input  [31:0] W_150;
input  [31:0] W_149;
input  [31:0] W_148;
output  [31:0] A_46_out;
output   A_46_out_ap_vld;
output  [31:0] B_35_out;
output   B_35_out_ap_vld;
output  [31:0] C_85_out;
output   C_85_out_ap_vld;
output  [31:0] D_46_out;
output   D_46_out_ap_vld;
output  [31:0] E_32_out;
output   E_32_out_ap_vld;
reg ap_idle;
reg A_46_out_ap_vld;
reg B_35_out_ap_vld;
reg C_85_out_ap_vld;
reg D_46_out_ap_vld;
reg E_32_out_ap_vld;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln128_fu_388_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln128_reg_663;
reg   [0:0] icmp_ln128_reg_663_pp0_iter1_reg;
wire   [31:0] tmp_s_fu_394_p43;
reg   [31:0] tmp_s_reg_667;
reg   [31:0] D_3_reg_672;
reg   [31:0] C_reg_678;
wire   [31:0] add_ln130_2_fu_519_p2;
reg   [31:0] add_ln130_2_reg_683;
reg   [31:0] E_fu_146;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [31:0] B_fu_150;
reg   [31:0] ap_sig_allocacmp_B_load_1;
reg   [6:0] i_fu_154;
wire   [6:0] add_ln128_fu_482_p2;
reg   [6:0] ap_sig_allocacmp_i_1;
reg   [31:0] E_1_fu_158;
reg   [31:0] D_fu_162;
wire   [31:0] C_1_fu_539_p3;
reg   [31:0] B_1_fu_166;
wire   [31:0] temp_fu_592_p2;
wire    ap_block_pp0_stage0_01001;
wire   [31:0] tmp_s_fu_394_p41;
wire   [31:0] xor_ln130_fu_502_p2;
wire   [31:0] xor_ln130_1_fu_508_p2;
wire   [31:0] add_ln130_1_fu_514_p2;
wire   [1:0] trunc_ln130_1_fu_525_p1;
wire   [29:0] lshr_ln130_1_fu_529_p4;
wire   [26:0] trunc_ln130_fu_564_p1;
wire   [4:0] lshr_ln3_fu_568_p4;
wire   [31:0] or_ln2_fu_578_p3;
wire   [31:0] add_ln130_fu_586_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [6:0] tmp_s_fu_394_p1;
wire   [6:0] tmp_s_fu_394_p3;
wire   [6:0] tmp_s_fu_394_p5;
wire   [6:0] tmp_s_fu_394_p7;
wire  signed [6:0] tmp_s_fu_394_p9;
wire  signed [6:0] tmp_s_fu_394_p11;
wire  signed [6:0] tmp_s_fu_394_p13;
wire  signed [6:0] tmp_s_fu_394_p15;
wire  signed [6:0] tmp_s_fu_394_p17;
wire  signed [6:0] tmp_s_fu_394_p19;
wire  signed [6:0] tmp_s_fu_394_p21;
wire  signed [6:0] tmp_s_fu_394_p23;
wire  signed [6:0] tmp_s_fu_394_p25;
wire  signed [6:0] tmp_s_fu_394_p27;
wire  signed [6:0] tmp_s_fu_394_p29;
wire  signed [6:0] tmp_s_fu_394_p31;
wire  signed [6:0] tmp_s_fu_394_p33;
wire  signed [6:0] tmp_s_fu_394_p35;
wire  signed [6:0] tmp_s_fu_394_p37;
wire  signed [6:0] tmp_s_fu_394_p39;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 E_fu_146 = 32'd0;
#0 B_fu_150 = 32'd0;
#0 i_fu_154 = 7'd0;
#0 E_1_fu_158 = 32'd0;
#0 D_fu_162 = 32'd0;
#0 B_1_fu_166 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_41_7_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 7'h3C ),.din0_WIDTH( 32 ),.CASE1( 7'h3D ),.din1_WIDTH( 32 ),.CASE2( 7'h3E ),.din2_WIDTH( 32 ),.CASE3( 7'h3F ),.din3_WIDTH( 32 ),.CASE4( 7'h40 ),.din4_WIDTH( 32 ),.CASE5( 7'h41 ),.din5_WIDTH( 32 ),.CASE6( 7'h42 ),.din6_WIDTH( 32 ),.CASE7( 7'h43 ),.din7_WIDTH( 32 ),.CASE8( 7'h44 ),.din8_WIDTH( 32 ),.CASE9( 7'h45 ),.din9_WIDTH( 32 ),.CASE10( 7'h46 ),.din10_WIDTH( 32 ),.CASE11( 7'h47 ),.din11_WIDTH( 32 ),.CASE12( 7'h48 ),.din12_WIDTH( 32 ),.CASE13( 7'h49 ),.din13_WIDTH( 32 ),.CASE14( 7'h4A ),.din14_WIDTH( 32 ),.CASE15( 7'h4B ),.din15_WIDTH( 32 ),.CASE16( 7'h4C ),.din16_WIDTH( 32 ),.CASE17( 7'h4D ),.din17_WIDTH( 32 ),.CASE18( 7'h4E ),.din18_WIDTH( 32 ),.CASE19( 7'h4F ),.din19_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 7 ),.dout_WIDTH( 32 ))
sparsemux_41_7_32_1_1_U139(.din0(W_76_reload),.din1(W_77_reload),.din2(W_78_reload),.din3(W_79_reload),.din4(W_31_reload),.din5(W_30_reload),.din6(W_29_reload),.din7(W_28_reload),.din8(W_27_reload),.din9(W_26_reload),.din10(W_25_reload),.din11(W_24_reload),.din12(W_23_reload),.din13(W_22_reload),.din14(W_21_reload),.din15(W_20_reload),.din16(W_151),.din17(W_150),.din18(W_149),.din19(W_148),.def(tmp_s_fu_394_p41),.sel(ap_sig_allocacmp_i_1),.dout(tmp_s_fu_394_p43));
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
            B_1_fu_166 <= B_45_reload;
        end else if (((icmp_ln128_reg_663_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
            B_1_fu_166 <= temp_fu_592_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            B_fu_150 <= B_43_reload;
        end else if (((icmp_ln128_reg_663_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
            B_fu_150 <= B_1_fu_166;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            D_fu_162 <= D_45_reload;
        end else if (((icmp_ln128_reg_663 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            D_fu_162 <= C_1_fu_539_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            E_1_fu_158 <= E_45_reload;
        end else if (((icmp_ln128_reg_663 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            E_1_fu_158 <= D_fu_162;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            E_fu_146 <= E_28_reload;
        end else if (((icmp_ln128_reg_663_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
            E_fu_146 <= D_3_reg_672;
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
        if (((icmp_ln128_fu_388_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_154 <= add_ln128_fu_482_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_154 <= 7'd60;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        C_reg_678 <= D_fu_162;
        D_3_reg_672 <= E_1_fu_158;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln130_2_reg_683 <= add_ln130_2_fu_519_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln128_reg_663 <= icmp_ln128_fu_388_p2;
        icmp_ln128_reg_663_pp0_iter1_reg <= icmp_ln128_reg_663;
        tmp_s_reg_667 <= tmp_s_fu_394_p43;
    end
end
always @ (*) begin
    if (((icmp_ln128_reg_663_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        A_46_out_ap_vld = 1'b1;
    end else begin
        A_46_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln128_reg_663_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        B_35_out_ap_vld = 1'b1;
    end else begin
        B_35_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln128_reg_663_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        C_85_out_ap_vld = 1'b1;
    end else begin
        C_85_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln128_reg_663_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        D_46_out_ap_vld = 1'b1;
    end else begin
        D_46_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln128_reg_663_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        E_32_out_ap_vld = 1'b1;
    end else begin
        E_32_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln128_fu_388_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((icmp_ln128_reg_663_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_sig_allocacmp_B_load_1 = B_1_fu_166;
    end else begin
        ap_sig_allocacmp_B_load_1 = B_fu_150;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_1 = 7'd60;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_154;
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
assign A_46_out = B_1_fu_166;
assign B_35_out = B_fu_150;
assign C_1_fu_539_p3 = {{trunc_ln130_1_fu_525_p1}, {lshr_ln130_1_fu_529_p4}};
assign C_85_out = C_reg_678;
assign D_46_out = D_3_reg_672;
assign E_32_out = E_fu_146;
assign add_ln128_fu_482_p2 = (ap_sig_allocacmp_i_1 + 7'd1);
assign add_ln130_1_fu_514_p2 = ($signed(tmp_s_reg_667) + $signed(32'd3395469782));
assign add_ln130_2_fu_519_p2 = (xor_ln130_1_fu_508_p2 + add_ln130_1_fu_514_p2);
assign add_ln130_fu_586_p2 = (or_ln2_fu_578_p3 + E_fu_146);
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
assign icmp_ln128_fu_388_p2 = ((ap_sig_allocacmp_i_1 == 7'd80) ? 1'b1 : 1'b0);
assign lshr_ln130_1_fu_529_p4 = {{ap_sig_allocacmp_B_load_1[31:2]}};
assign lshr_ln3_fu_568_p4 = {{B_1_fu_166[31:27]}};
assign or_ln2_fu_578_p3 = {{trunc_ln130_fu_564_p1}, {lshr_ln3_fu_568_p4}};
assign temp_fu_592_p2 = (add_ln130_2_reg_683 + add_ln130_fu_586_p2);
assign tmp_s_fu_394_p41 = 'bx;
assign trunc_ln130_1_fu_525_p1 = ap_sig_allocacmp_B_load_1[1:0];
assign trunc_ln130_fu_564_p1 = B_1_fu_166[26:0];
assign xor_ln130_1_fu_508_p2 = (xor_ln130_fu_502_p2 ^ D_fu_162);
assign xor_ln130_fu_502_p2 = (ap_sig_allocacmp_B_load_1 ^ E_1_fu_158);
endmodule 