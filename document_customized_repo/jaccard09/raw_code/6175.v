module sha_stream_sha_transform_Pipeline_trans_lp6 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,B_17_reload,B_12_reload,D_19_reload,E_17_reload,E_12_reload,W_address0,W_ce0,W_q0,W_1_address0,W_1_ce0,W_1_q0,W_2_address0,W_2_ce0,W_2_q0,W_3_address0,W_3_ce0,W_3_q0,A_20_out,A_20_out_ap_vld,B_13_out,B_13_out_ap_vld,C_19_out,C_19_out_ap_vld,D_20_out,D_20_out_ap_vld,E_13_out,E_13_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] B_17_reload;
input  [31:0] B_12_reload;
input  [31:0] D_19_reload;
input  [31:0] E_17_reload;
input  [31:0] E_12_reload;
output  [4:0] W_address0;
output   W_ce0;
input  [31:0] W_q0;
output  [4:0] W_1_address0;
output   W_1_ce0;
input  [31:0] W_1_q0;
output  [4:0] W_2_address0;
output   W_2_ce0;
input  [31:0] W_2_q0;
output  [4:0] W_3_address0;
output   W_3_ce0;
input  [31:0] W_3_q0;
output  [31:0] A_20_out;
output   A_20_out_ap_vld;
output  [31:0] B_13_out;
output   B_13_out_ap_vld;
output  [31:0] C_19_out;
output   C_19_out_ap_vld;
output  [31:0] D_20_out;
output   D_20_out_ap_vld;
output  [31:0] E_13_out;
output   E_13_out_ap_vld;
reg ap_idle;
reg A_20_out_ap_vld;
reg B_13_out_ap_vld;
reg C_19_out_ap_vld;
reg D_20_out_ap_vld;
reg E_13_out_ap_vld;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln128_fu_264_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln128_reg_496;
reg   [0:0] icmp_ln128_reg_496_pp0_iter1_reg;
reg   [0:0] icmp_ln128_reg_496_pp0_iter2_reg;
wire   [1:0] trunc_ln128_fu_270_p1;
reg   [1:0] trunc_ln128_reg_500;
wire   [31:0] tmp_1_fu_303_p11;
reg   [31:0] tmp_1_reg_525;
reg   [31:0] D_3_reg_530;
reg   [31:0] C_reg_536;
wire   [31:0] add_ln130_2_fu_352_p2;
reg   [31:0] add_ln130_2_reg_541;
wire   [63:0] zext_ln100_fu_284_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] E_fu_90;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [31:0] B_fu_94;
reg   [31:0] ap_sig_allocacmp_B_load_1;
reg   [6:0] i_fu_98;
wire   [6:0] add_ln128_fu_292_p2;
reg   [6:0] ap_sig_allocacmp_i_1;
reg   [31:0] E_1_fu_102;
reg   [31:0] D_fu_106;
wire   [31:0] C_1_fu_372_p3;
reg   [31:0] B_1_fu_110;
wire   [31:0] temp_fu_425_p2;
wire    ap_block_pp0_stage0_01001;
reg    W_ce0_local;
reg    W_1_ce0_local;
reg    W_2_ce0_local;
reg    W_3_ce0_local;
wire   [4:0] lshr_ln100_3_fu_274_p4;
wire   [31:0] tmp_1_fu_303_p9;
wire   [31:0] xor_ln130_fu_335_p2;
wire   [31:0] add_ln130_1_fu_347_p2;
wire   [31:0] xor_ln130_1_fu_341_p2;
wire   [1:0] trunc_ln130_1_fu_358_p1;
wire   [29:0] lshr_ln130_1_fu_362_p4;
wire   [26:0] trunc_ln130_fu_397_p1;
wire   [4:0] lshr_ln6_fu_401_p4;
wire   [31:0] or_ln1_fu_411_p3;
wire   [31:0] add_ln130_fu_419_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [1:0] tmp_1_fu_303_p1;
wire   [1:0] tmp_1_fu_303_p3;
wire  signed [1:0] tmp_1_fu_303_p5;
wire  signed [1:0] tmp_1_fu_303_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 E_fu_90 = 32'd0;
#0 B_fu_94 = 32'd0;
#0 i_fu_98 = 7'd0;
#0 E_1_fu_102 = 32'd0;
#0 D_fu_106 = 32'd0;
#0 B_1_fu_110 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U57(.din0(W_q0),.din1(W_1_q0),.din2(W_2_q0),.din3(W_3_q0),.def(tmp_1_fu_303_p9),.sel(trunc_ln128_reg_500),.dout(tmp_1_fu_303_p11));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            B_1_fu_110 <= B_17_reload;
        end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln128_reg_496_pp0_iter2_reg == 1'd0))) begin
            B_1_fu_110 <= temp_fu_425_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            B_fu_94 <= B_12_reload;
        end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln128_reg_496_pp0_iter2_reg == 1'd0))) begin
            B_fu_94 <= B_1_fu_110;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            D_fu_106 <= D_19_reload;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln128_reg_496_pp0_iter1_reg == 1'd0))) begin
            D_fu_106 <= C_1_fu_372_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            E_1_fu_102 <= E_17_reload;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln128_reg_496_pp0_iter1_reg == 1'd0))) begin
            E_1_fu_102 <= D_fu_106;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            E_fu_90 <= E_12_reload;
        end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln128_reg_496_pp0_iter2_reg == 1'd0))) begin
            E_fu_90 <= D_3_reg_530;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln128_fu_264_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_98 <= add_ln128_fu_292_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_98 <= 7'd60;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        C_reg_536 <= D_fu_106;
        D_3_reg_530 <= E_1_fu_102;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln130_2_reg_541 <= add_ln130_2_fu_352_p2;
        icmp_ln128_reg_496_pp0_iter2_reg <= icmp_ln128_reg_496_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln128_reg_496 <= icmp_ln128_fu_264_p2;
        icmp_ln128_reg_496_pp0_iter1_reg <= icmp_ln128_reg_496;
        tmp_1_reg_525 <= tmp_1_fu_303_p11;
        trunc_ln128_reg_500 <= trunc_ln128_fu_270_p1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (icmp_ln128_reg_496_pp0_iter2_reg == 1'd1))) begin
        A_20_out_ap_vld = 1'b1;
    end else begin
        A_20_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (icmp_ln128_reg_496_pp0_iter2_reg == 1'd1))) begin
        B_13_out_ap_vld = 1'b1;
    end else begin
        B_13_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (icmp_ln128_reg_496_pp0_iter2_reg == 1'd1))) begin
        C_19_out_ap_vld = 1'b1;
    end else begin
        C_19_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (icmp_ln128_reg_496_pp0_iter2_reg == 1'd1))) begin
        D_20_out_ap_vld = 1'b1;
    end else begin
        D_20_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (icmp_ln128_reg_496_pp0_iter2_reg == 1'd1))) begin
        E_13_out_ap_vld = 1'b1;
    end else begin
        E_13_out_ap_vld = 1'b0;
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
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln128_fu_264_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln128_reg_496_pp0_iter2_reg == 1'd0))) begin
        ap_sig_allocacmp_B_load_1 = B_1_fu_110;
    end else begin
        ap_sig_allocacmp_B_load_1 = B_fu_94;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_1 = 7'd60;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_98;
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
assign A_20_out = B_1_fu_110;
assign B_13_out = B_fu_94;
assign C_19_out = C_reg_536;
assign C_1_fu_372_p3 = {{trunc_ln130_1_fu_358_p1}, {lshr_ln130_1_fu_362_p4}};
assign D_20_out = D_3_reg_530;
assign E_13_out = E_fu_90;
assign W_1_address0 = zext_ln100_fu_284_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_2_address0 = zext_ln100_fu_284_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_3_address0 = zext_ln100_fu_284_p1;
assign W_3_ce0 = W_3_ce0_local;
assign W_address0 = zext_ln100_fu_284_p1;
assign W_ce0 = W_ce0_local;
assign add_ln128_fu_292_p2 = (ap_sig_allocacmp_i_1 + 7'd1);
assign add_ln130_1_fu_347_p2 = ($signed(tmp_1_reg_525) + $signed(32'd3395469782));
assign add_ln130_2_fu_352_p2 = (add_ln130_1_fu_347_p2 + xor_ln130_1_fu_341_p2);
assign add_ln130_fu_419_p2 = (or_ln1_fu_411_p3 + E_fu_90);
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
assign icmp_ln128_fu_264_p2 = ((ap_sig_allocacmp_i_1 == 7'd80) ? 1'b1 : 1'b0);
assign lshr_ln100_3_fu_274_p4 = {{ap_sig_allocacmp_i_1[6:2]}};
assign lshr_ln130_1_fu_362_p4 = {{ap_sig_allocacmp_B_load_1[31:2]}};
assign lshr_ln6_fu_401_p4 = {{B_1_fu_110[31:27]}};
assign or_ln1_fu_411_p3 = {{trunc_ln130_fu_397_p1}, {lshr_ln6_fu_401_p4}};
assign temp_fu_425_p2 = (add_ln130_2_reg_541 + add_ln130_fu_419_p2);
assign tmp_1_fu_303_p9 = 'bx;
assign trunc_ln128_fu_270_p1 = ap_sig_allocacmp_i_1[1:0];
assign trunc_ln130_1_fu_358_p1 = ap_sig_allocacmp_B_load_1[1:0];
assign trunc_ln130_fu_397_p1 = B_1_fu_110[26:0];
assign xor_ln130_1_fu_341_p2 = (xor_ln130_fu_335_p2 ^ D_fu_106);
assign xor_ln130_fu_335_p2 = (ap_sig_allocacmp_B_load_1 ^ E_1_fu_102);
assign zext_ln100_fu_284_p1 = lshr_ln100_3_fu_274_p4;
endmodule 