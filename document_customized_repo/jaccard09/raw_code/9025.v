module sha_stream_sha_transform_Pipeline_trans_lp5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_17_reload,B_6_reload,C_17_reload,D_17_reload,E_6_reload,W_56_reload,W_57_reload,W_58_reload,W_59_reload,W_60_reload,W_61_reload,W_62_reload,W_63_reload,W_64_reload,W_65_reload,W_66_reload,W_67_reload,W_68_reload,W_69_reload,W_70_reload,W_71_reload,W_72_reload,W_73_reload,W_74_reload,W_75_reload,B_17_out,B_17_out_ap_vld,B_12_out,B_12_out_ap_vld,D_19_out,D_19_out_ap_vld,E_17_out,E_17_out_ap_vld,E_12_out,E_12_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] A_17_reload;
input  [31:0] B_6_reload;
input  [31:0] C_17_reload;
input  [31:0] D_17_reload;
input  [31:0] E_6_reload;
input  [31:0] W_56_reload;
input  [31:0] W_57_reload;
input  [31:0] W_58_reload;
input  [31:0] W_59_reload;
input  [31:0] W_60_reload;
input  [31:0] W_61_reload;
input  [31:0] W_62_reload;
input  [31:0] W_63_reload;
input  [31:0] W_64_reload;
input  [31:0] W_65_reload;
input  [31:0] W_66_reload;
input  [31:0] W_67_reload;
input  [31:0] W_68_reload;
input  [31:0] W_69_reload;
input  [31:0] W_70_reload;
input  [31:0] W_71_reload;
input  [31:0] W_72_reload;
input  [31:0] W_73_reload;
input  [31:0] W_74_reload;
input  [31:0] W_75_reload;
output  [31:0] B_17_out;
output   B_17_out_ap_vld;
output  [31:0] B_12_out;
output   B_12_out_ap_vld;
output  [31:0] D_19_out;
output   D_19_out_ap_vld;
output  [31:0] E_17_out;
output   E_17_out_ap_vld;
output  [31:0] E_12_out;
output   E_12_out_ap_vld;
reg ap_idle;
reg B_17_out_ap_vld;
reg B_12_out_ap_vld;
reg D_19_out_ap_vld;
reg E_17_out_ap_vld;
reg E_12_out_ap_vld;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln124_fu_388_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln124_reg_676;
reg   [0:0] icmp_ln124_reg_676_pp0_iter1_reg;
wire   [31:0] tmp_s_fu_394_p43;
reg   [31:0] tmp_s_reg_680;
reg   [31:0] E_4_reg_685;
reg   [31:0] D_6_reg_690;
wire   [31:0] add_ln126_2_fu_534_p2;
reg   [31:0] add_ln126_2_reg_695;
reg   [31:0] E_fu_146;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [31:0] B_fu_150;
reg   [31:0] ap_sig_allocacmp_B_load_2;
reg   [5:0] i_fu_154;
wire   [5:0] add_ln124_fu_482_p2;
reg   [5:0] ap_sig_allocacmp_i_2;
reg   [31:0] D_fu_158;
reg   [31:0] C_fu_162;
wire   [31:0] C_3_fu_554_p3;
reg   [31:0] A_fu_166;
wire   [31:0] A_4_fu_609_p2;
wire    ap_block_pp0_stage0_01001;
wire   [31:0] tmp_s_fu_394_p41;
wire   [31:0] or_ln126_fu_505_p2;
wire   [31:0] and_ln126_fu_511_p2;
wire   [31:0] and_ln126_1_fu_517_p2;
wire   [31:0] or_ln126_1_fu_523_p2;
wire   [31:0] add_ln126_1_fu_529_p2;
wire   [1:0] trunc_ln126_1_fu_540_p1;
wire   [29:0] lshr_ln126_1_fu_544_p4;
wire   [26:0] trunc_ln126_fu_581_p1;
wire   [4:0] lshr_ln2_fu_585_p4;
wire   [31:0] or_ln126_2_fu_595_p3;
wire   [31:0] add_ln126_fu_603_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire  signed [5:0] tmp_s_fu_394_p1;
wire  signed [5:0] tmp_s_fu_394_p3;
wire  signed [5:0] tmp_s_fu_394_p5;
wire  signed [5:0] tmp_s_fu_394_p7;
wire  signed [5:0] tmp_s_fu_394_p9;
wire  signed [5:0] tmp_s_fu_394_p11;
wire  signed [5:0] tmp_s_fu_394_p13;
wire  signed [5:0] tmp_s_fu_394_p15;
wire  signed [5:0] tmp_s_fu_394_p17;
wire  signed [5:0] tmp_s_fu_394_p19;
wire  signed [5:0] tmp_s_fu_394_p21;
wire  signed [5:0] tmp_s_fu_394_p23;
wire  signed [5:0] tmp_s_fu_394_p25;
wire  signed [5:0] tmp_s_fu_394_p27;
wire  signed [5:0] tmp_s_fu_394_p29;
wire  signed [5:0] tmp_s_fu_394_p31;
wire  signed [5:0] tmp_s_fu_394_p33;
wire  signed [5:0] tmp_s_fu_394_p35;
wire  signed [5:0] tmp_s_fu_394_p37;
wire  signed [5:0] tmp_s_fu_394_p39;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 E_fu_146 = 32'd0;
#0 B_fu_150 = 32'd0;
#0 i_fu_154 = 6'd0;
#0 D_fu_158 = 32'd0;
#0 C_fu_162 = 32'd0;
#0 A_fu_166 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_41_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h28 ),.din0_WIDTH( 32 ),.CASE1( 6'h29 ),.din1_WIDTH( 32 ),.CASE2( 6'h2A ),.din2_WIDTH( 32 ),.CASE3( 6'h2B ),.din3_WIDTH( 32 ),.CASE4( 6'h2C ),.din4_WIDTH( 32 ),.CASE5( 6'h2D ),.din5_WIDTH( 32 ),.CASE6( 6'h2E ),.din6_WIDTH( 32 ),.CASE7( 6'h2F ),.din7_WIDTH( 32 ),.CASE8( 6'h30 ),.din8_WIDTH( 32 ),.CASE9( 6'h31 ),.din9_WIDTH( 32 ),.CASE10( 6'h32 ),.din10_WIDTH( 32 ),.CASE11( 6'h33 ),.din11_WIDTH( 32 ),.CASE12( 6'h34 ),.din12_WIDTH( 32 ),.CASE13( 6'h35 ),.din13_WIDTH( 32 ),.CASE14( 6'h36 ),.din14_WIDTH( 32 ),.CASE15( 6'h37 ),.din15_WIDTH( 32 ),.CASE16( 6'h38 ),.din16_WIDTH( 32 ),.CASE17( 6'h39 ),.din17_WIDTH( 32 ),.CASE18( 6'h3A ),.din18_WIDTH( 32 ),.CASE19( 6'h3B ),.din19_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_41_6_32_1_1_U170(.din0(W_56_reload),.din1(W_57_reload),.din2(W_58_reload),.din3(W_59_reload),.din4(W_60_reload),.din5(W_61_reload),.din6(W_62_reload),.din7(W_63_reload),.din8(W_64_reload),.din9(W_65_reload),.din10(W_66_reload),.din11(W_67_reload),.din12(W_68_reload),.din13(W_69_reload),.din14(W_70_reload),.din15(W_71_reload),.din16(W_72_reload),.din17(W_73_reload),.din18(W_74_reload),.din19(W_75_reload),.def(tmp_s_fu_394_p41),.sel(ap_sig_allocacmp_i_2),.dout(tmp_s_fu_394_p43));
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
            A_fu_166 <= A_17_reload;
        end else if (((icmp_ln124_reg_676_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
            A_fu_166 <= A_4_fu_609_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            B_fu_150 <= B_6_reload;
        end else if (((icmp_ln124_reg_676_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
            B_fu_150 <= A_fu_166;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            C_fu_162 <= C_17_reload;
        end else if (((icmp_ln124_reg_676 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            C_fu_162 <= C_3_fu_554_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            D_fu_158 <= D_17_reload;
        end else if (((icmp_ln124_reg_676 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            D_fu_158 <= C_fu_162;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            E_fu_146 <= E_6_reload;
        end else if (((icmp_ln124_reg_676 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            E_fu_146 <= D_fu_158;
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
        if (((icmp_ln124_fu_388_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_154 <= add_ln124_fu_482_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_154 <= 6'd40;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        D_6_reg_690 <= C_fu_162;
        E_4_reg_685 <= D_fu_158;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln126_2_reg_695 <= add_ln126_2_fu_534_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln124_reg_676 <= icmp_ln124_fu_388_p2;
        icmp_ln124_reg_676_pp0_iter1_reg <= icmp_ln124_reg_676;
        tmp_s_reg_680 <= tmp_s_fu_394_p43;
    end
end
always @ (*) begin
    if (((icmp_ln124_reg_676_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        B_12_out_ap_vld = 1'b1;
    end else begin
        B_12_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln124_reg_676_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        B_17_out_ap_vld = 1'b1;
    end else begin
        B_17_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln124_reg_676_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        D_19_out_ap_vld = 1'b1;
    end else begin
        D_19_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln124_reg_676_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        E_12_out_ap_vld = 1'b1;
    end else begin
        E_12_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln124_reg_676_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        E_17_out_ap_vld = 1'b1;
    end else begin
        E_17_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln124_fu_388_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((icmp_ln124_reg_676_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_sig_allocacmp_B_load_2 = A_fu_166;
    end else begin
        ap_sig_allocacmp_B_load_2 = B_fu_150;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_2 = 6'd40;
    end else begin
        ap_sig_allocacmp_i_2 = i_fu_154;
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
assign A_4_fu_609_p2 = (add_ln126_2_reg_695 + add_ln126_fu_603_p2);
assign B_12_out = B_fu_150;
assign B_17_out = A_fu_166;
assign C_3_fu_554_p3 = {{trunc_ln126_1_fu_540_p1}, {lshr_ln126_1_fu_544_p4}};
assign D_19_out = D_6_reg_690;
assign E_12_out = E_fu_146;
assign E_17_out = E_4_reg_685;
assign add_ln124_fu_482_p2 = (ap_sig_allocacmp_i_2 + 6'd1);
assign add_ln126_1_fu_529_p2 = (or_ln126_1_fu_523_p2 + tmp_s_reg_680);
assign add_ln126_2_fu_534_p2 = (add_ln126_1_fu_529_p2 + E_fu_146);
assign add_ln126_fu_603_p2 = ($signed(or_ln126_2_fu_595_p3) + $signed(32'd2400959708));
assign and_ln126_1_fu_517_p2 = (D_fu_158 & C_fu_162);
assign and_ln126_fu_511_p2 = (or_ln126_fu_505_p2 & ap_sig_allocacmp_B_load_2);
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
assign icmp_ln124_fu_388_p2 = ((ap_sig_allocacmp_i_2 == 6'd60) ? 1'b1 : 1'b0);
assign lshr_ln126_1_fu_544_p4 = {{ap_sig_allocacmp_B_load_2[31:2]}};
assign lshr_ln2_fu_585_p4 = {{A_fu_166[31:27]}};
assign or_ln126_1_fu_523_p2 = (and_ln126_fu_511_p2 | and_ln126_1_fu_517_p2);
assign or_ln126_2_fu_595_p3 = {{trunc_ln126_fu_581_p1}, {lshr_ln2_fu_585_p4}};
assign or_ln126_fu_505_p2 = (D_fu_158 | C_fu_162);
assign tmp_s_fu_394_p41 = 'bx;
assign trunc_ln126_1_fu_540_p1 = ap_sig_allocacmp_B_load_2[1:0];
assign trunc_ln126_fu_581_p1 = A_fu_166[26:0];
endmodule 