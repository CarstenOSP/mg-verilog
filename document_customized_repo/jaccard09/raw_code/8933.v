module sha_stream_sha_transform_Pipeline_trans_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A,B,C,D,E,zext_ln104,zext_ln104_1,zext_ln104_2,zext_ln104_3,zext_ln104_4,zext_ln104_5,zext_ln104_6,zext_ln104_7,zext_ln104_8,zext_ln104_9,zext_ln104_10,zext_ln104_11,zext_ln104_12,zext_ln104_13,zext_ln104_14,zext_ln106,W_16_load_reload,W_17_load_reload,W_18_load_reload,W_19_load_reload,A_26_out,A_26_out_ap_vld,B_2_out,B_2_out_ap_vld,C_20_out,C_20_out_ap_vld,D_26_out,D_26_out_ap_vld,E_2_out,E_2_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
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
input  [30:0] zext_ln104;
input  [30:0] zext_ln104_1;
input  [30:0] zext_ln104_2;
input  [30:0] zext_ln104_3;
input  [30:0] zext_ln104_4;
input  [30:0] zext_ln104_5;
input  [30:0] zext_ln104_6;
input  [30:0] zext_ln104_7;
input  [30:0] zext_ln104_8;
input  [30:0] zext_ln104_9;
input  [30:0] zext_ln104_10;
input  [30:0] zext_ln104_11;
input  [30:0] zext_ln104_12;
input  [30:0] zext_ln104_13;
input  [30:0] zext_ln104_14;
input  [30:0] zext_ln106;
input  [31:0] W_16_load_reload;
input  [31:0] W_17_load_reload;
input  [31:0] W_18_load_reload;
input  [31:0] W_19_load_reload;
output  [31:0] A_26_out;
output   A_26_out_ap_vld;
output  [31:0] B_2_out;
output   B_2_out_ap_vld;
output  [31:0] C_20_out;
output   C_20_out_ap_vld;
output  [31:0] D_26_out;
output   D_26_out_ap_vld;
output  [31:0] E_2_out;
output   E_2_out_ap_vld;
reg ap_idle;
reg A_26_out_ap_vld;
reg B_2_out_ap_vld;
reg C_20_out_ap_vld;
reg D_26_out_ap_vld;
reg E_2_out_ap_vld;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln116_fu_452_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln116_reg_739;
reg   [0:0] icmp_ln116_reg_739_pp0_iter1_reg;
wire   [31:0] tmp_4_fu_464_p43;
reg   [31:0] tmp_4_reg_743;
reg   [31:0] D_11_reg_748;
reg   [31:0] C_19_reg_754;
wire   [31:0] add_ln118_2_fu_595_p2;
reg   [31:0] add_ln118_2_reg_759;
reg   [31:0] E_2_fu_146;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [31:0] B_2_fu_150;
reg   [31:0] ap_sig_allocacmp_B_2_load;
reg   [4:0] i_1_fu_154;
wire   [4:0] add_ln116_fu_458_p2;
reg   [4:0] ap_sig_allocacmp_i;
reg   [31:0] E_24_fu_158;
reg   [31:0] D_8_fu_162;
wire   [31:0] C_1_fu_615_p3;
reg   [31:0] B_21_fu_166;
wire   [31:0] temp_fu_668_p2;
wire    ap_block_pp0_stage0_01001;
wire   [31:0] tmp_4_fu_464_p2;
wire   [31:0] tmp_4_fu_464_p4;
wire   [31:0] tmp_4_fu_464_p6;
wire   [31:0] tmp_4_fu_464_p8;
wire   [31:0] tmp_4_fu_464_p10;
wire   [31:0] tmp_4_fu_464_p12;
wire   [31:0] tmp_4_fu_464_p14;
wire   [31:0] tmp_4_fu_464_p16;
wire   [31:0] tmp_4_fu_464_p18;
wire   [31:0] tmp_4_fu_464_p20;
wire   [31:0] tmp_4_fu_464_p22;
wire   [31:0] tmp_4_fu_464_p24;
wire   [31:0] tmp_4_fu_464_p26;
wire   [31:0] tmp_4_fu_464_p28;
wire   [31:0] tmp_4_fu_464_p30;
wire   [31:0] tmp_4_fu_464_p32;
wire   [31:0] tmp_4_fu_464_p41;
wire   [31:0] xor_ln118_fu_566_p2;
wire   [31:0] and_ln118_1_fu_578_p2;
wire   [31:0] and_ln118_fu_572_p2;
wire   [31:0] or_ln118_fu_584_p2;
wire   [31:0] add_ln118_1_fu_590_p2;
wire   [1:0] trunc_ln118_1_fu_601_p1;
wire   [29:0] lshr_ln118_1_fu_605_p4;
wire   [26:0] trunc_ln118_fu_640_p1;
wire   [4:0] lshr_ln_fu_644_p4;
wire   [31:0] or_ln118_1_fu_654_p3;
wire   [31:0] add_ln118_fu_662_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [4:0] tmp_4_fu_464_p1;
wire   [4:0] tmp_4_fu_464_p3;
wire   [4:0] tmp_4_fu_464_p5;
wire   [4:0] tmp_4_fu_464_p7;
wire   [4:0] tmp_4_fu_464_p9;
wire   [4:0] tmp_4_fu_464_p11;
wire   [4:0] tmp_4_fu_464_p13;
wire   [4:0] tmp_4_fu_464_p15;
wire   [4:0] tmp_4_fu_464_p17;
wire   [4:0] tmp_4_fu_464_p19;
wire   [4:0] tmp_4_fu_464_p21;
wire   [4:0] tmp_4_fu_464_p23;
wire   [4:0] tmp_4_fu_464_p25;
wire   [4:0] tmp_4_fu_464_p27;
wire   [4:0] tmp_4_fu_464_p29;
wire   [4:0] tmp_4_fu_464_p31;
wire  signed [4:0] tmp_4_fu_464_p33;
wire  signed [4:0] tmp_4_fu_464_p35;
wire  signed [4:0] tmp_4_fu_464_p37;
wire  signed [4:0] tmp_4_fu_464_p39;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 E_2_fu_146 = 32'd0;
#0 B_2_fu_150 = 32'd0;
#0 i_1_fu_154 = 5'd0;
#0 E_24_fu_158 = 32'd0;
#0 D_8_fu_162 = 32'd0;
#0 B_21_fu_166 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_41_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h1 ),.din1_WIDTH( 32 ),.CASE2( 5'h2 ),.din2_WIDTH( 32 ),.CASE3( 5'h3 ),.din3_WIDTH( 32 ),.CASE4( 5'h4 ),.din4_WIDTH( 32 ),.CASE5( 5'h5 ),.din5_WIDTH( 32 ),.CASE6( 5'h6 ),.din6_WIDTH( 32 ),.CASE7( 5'h7 ),.din7_WIDTH( 32 ),.CASE8( 5'h8 ),.din8_WIDTH( 32 ),.CASE9( 5'h9 ),.din9_WIDTH( 32 ),.CASE10( 5'hA ),.din10_WIDTH( 32 ),.CASE11( 5'hB ),.din11_WIDTH( 32 ),.CASE12( 5'hC ),.din12_WIDTH( 32 ),.CASE13( 5'hD ),.din13_WIDTH( 32 ),.CASE14( 5'hE ),.din14_WIDTH( 32 ),.CASE15( 5'hF ),.din15_WIDTH( 32 ),.CASE16( 5'h10 ),.din16_WIDTH( 32 ),.CASE17( 5'h11 ),.din17_WIDTH( 32 ),.CASE18( 5'h12 ),.din18_WIDTH( 32 ),.CASE19( 5'h13 ),.din19_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_41_5_32_1_1_U91(.din0(tmp_4_fu_464_p2),.din1(tmp_4_fu_464_p4),.din2(tmp_4_fu_464_p6),.din3(tmp_4_fu_464_p8),.din4(tmp_4_fu_464_p10),.din5(tmp_4_fu_464_p12),.din6(tmp_4_fu_464_p14),.din7(tmp_4_fu_464_p16),.din8(tmp_4_fu_464_p18),.din9(tmp_4_fu_464_p20),.din10(tmp_4_fu_464_p22),.din11(tmp_4_fu_464_p24),.din12(tmp_4_fu_464_p26),.din13(tmp_4_fu_464_p28),.din14(tmp_4_fu_464_p30),.din15(tmp_4_fu_464_p32),.din16(W_16_load_reload),.din17(W_17_load_reload),.din18(W_18_load_reload),.din19(W_19_load_reload),.def(tmp_4_fu_464_p41),.sel(ap_sig_allocacmp_i),.dout(tmp_4_fu_464_p43));
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
            B_21_fu_166 <= A;
        end else if (((icmp_ln116_reg_739_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
            B_21_fu_166 <= temp_fu_668_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            B_2_fu_150 <= B;
        end else if (((icmp_ln116_reg_739_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
            B_2_fu_150 <= B_21_fu_166;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            D_8_fu_162 <= C;
        end else if (((icmp_ln116_reg_739 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            D_8_fu_162 <= C_1_fu_615_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            E_24_fu_158 <= D;
        end else if (((icmp_ln116_reg_739 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            E_24_fu_158 <= D_8_fu_162;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            E_2_fu_146 <= E;
        end else if (((icmp_ln116_reg_739_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
            E_2_fu_146 <= D_11_reg_748;
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
        if (((icmp_ln116_fu_452_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_1_fu_154 <= add_ln116_fu_458_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_1_fu_154 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        C_19_reg_754 <= D_8_fu_162;
        D_11_reg_748 <= E_24_fu_158;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln118_2_reg_759 <= add_ln118_2_fu_595_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln116_reg_739 <= icmp_ln116_fu_452_p2;
        icmp_ln116_reg_739_pp0_iter1_reg <= icmp_ln116_reg_739;
        tmp_4_reg_743 <= tmp_4_fu_464_p43;
    end
end
always @ (*) begin
    if (((icmp_ln116_reg_739_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        A_26_out_ap_vld = 1'b1;
    end else begin
        A_26_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln116_reg_739_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        B_2_out_ap_vld = 1'b1;
    end else begin
        B_2_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln116_reg_739_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        C_20_out_ap_vld = 1'b1;
    end else begin
        C_20_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln116_reg_739_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        D_26_out_ap_vld = 1'b1;
    end else begin
        D_26_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln116_reg_739_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        E_2_out_ap_vld = 1'b1;
    end else begin
        E_2_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln116_fu_452_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((icmp_ln116_reg_739_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_sig_allocacmp_B_2_load = B_21_fu_166;
    end else begin
        ap_sig_allocacmp_B_2_load = B_2_fu_150;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i = 5'd0;
    end else begin
        ap_sig_allocacmp_i = i_1_fu_154;
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
assign A_26_out = B_21_fu_166;
assign B_2_out = B_2_fu_150;
assign C_1_fu_615_p3 = {{trunc_ln118_1_fu_601_p1}, {lshr_ln118_1_fu_605_p4}};
assign C_20_out = C_19_reg_754;
assign D_26_out = D_11_reg_748;
assign E_2_out = E_2_fu_146;
assign add_ln116_fu_458_p2 = (ap_sig_allocacmp_i + 5'd1);
assign add_ln118_1_fu_590_p2 = (tmp_4_reg_743 + 32'd1518500249);
assign add_ln118_2_fu_595_p2 = (or_ln118_fu_584_p2 + add_ln118_1_fu_590_p2);
assign add_ln118_fu_662_p2 = (or_ln118_1_fu_654_p3 + E_2_fu_146);
assign and_ln118_1_fu_578_p2 = (xor_ln118_fu_566_p2 & E_24_fu_158);
assign and_ln118_fu_572_p2 = (ap_sig_allocacmp_B_2_load & D_8_fu_162);
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
assign icmp_ln116_fu_452_p2 = ((ap_sig_allocacmp_i == 5'd20) ? 1'b1 : 1'b0);
assign lshr_ln118_1_fu_605_p4 = {{ap_sig_allocacmp_B_2_load[31:2]}};
assign lshr_ln_fu_644_p4 = {{B_21_fu_166[31:27]}};
assign or_ln118_1_fu_654_p3 = {{trunc_ln118_fu_640_p1}, {lshr_ln_fu_644_p4}};
assign or_ln118_fu_584_p2 = (and_ln118_fu_572_p2 | and_ln118_1_fu_578_p2);
assign temp_fu_668_p2 = (add_ln118_2_reg_759 + add_ln118_fu_662_p2);
assign tmp_4_fu_464_p10 = zext_ln104_4;
assign tmp_4_fu_464_p12 = zext_ln104_5;
assign tmp_4_fu_464_p14 = zext_ln104_6;
assign tmp_4_fu_464_p16 = zext_ln104_7;
assign tmp_4_fu_464_p18 = zext_ln104_8;
assign tmp_4_fu_464_p2 = zext_ln104;
assign tmp_4_fu_464_p20 = zext_ln104_9;
assign tmp_4_fu_464_p22 = zext_ln104_10;
assign tmp_4_fu_464_p24 = zext_ln104_11;
assign tmp_4_fu_464_p26 = zext_ln104_12;
assign tmp_4_fu_464_p28 = zext_ln104_13;
assign tmp_4_fu_464_p30 = zext_ln104_14;
assign tmp_4_fu_464_p32 = zext_ln106;
assign tmp_4_fu_464_p4 = zext_ln104_1;
assign tmp_4_fu_464_p41 = 'bx;
assign tmp_4_fu_464_p6 = zext_ln104_2;
assign tmp_4_fu_464_p8 = zext_ln104_3;
assign trunc_ln118_1_fu_601_p1 = ap_sig_allocacmp_B_2_load[1:0];
assign trunc_ln118_fu_640_p1 = B_21_fu_166[26:0];
assign xor_ln118_fu_566_p2 = (ap_sig_allocacmp_B_2_load ^ 32'd4294967295);
endmodule 