module aes256_encrypt_ecb_aes256_encrypt_ecb_Pipeline_addkey (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buf_3_address0,buf_3_ce0,buf_3_we0,buf_3_d0,buf_3_address1,buf_3_ce1,buf_3_q1,buf_2_address0,buf_2_ce0,buf_2_we0,buf_2_d0,buf_2_address1,buf_2_ce1,buf_2_q1,buf_1_address0,buf_1_ce0,buf_1_we0,buf_1_d0,buf_1_address1,buf_1_ce1,buf_1_q1,buf_0_address0,buf_0_ce0,buf_0_we0,buf_0_d0,buf_0_address1,buf_0_ce1,buf_0_q1,ctx_ret1); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [1:0] buf_3_address0;
output   buf_3_ce0;
output   buf_3_we0;
output  [7:0] buf_3_d0;
output  [1:0] buf_3_address1;
output   buf_3_ce1;
input  [7:0] buf_3_q1;
output  [1:0] buf_2_address0;
output   buf_2_ce0;
output   buf_2_we0;
output  [7:0] buf_2_d0;
output  [1:0] buf_2_address1;
output   buf_2_ce1;
input  [7:0] buf_2_q1;
output  [1:0] buf_1_address0;
output   buf_1_ce0;
output   buf_1_we0;
output  [7:0] buf_1_d0;
output  [1:0] buf_1_address1;
output   buf_1_ce1;
input  [7:0] buf_1_q1;
output  [1:0] buf_0_address0;
output   buf_0_ce0;
output   buf_0_we0;
output  [7:0] buf_0_d0;
output  [1:0] buf_0_address1;
output   buf_0_ce1;
input  [7:0] buf_0_q1;
input  [767:0] ctx_ret1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln66_fu_150_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [1:0] trunc_ln66_fu_156_p1;
reg   [1:0] trunc_ln66_reg_260;
reg   [1:0] trunc_ln66_reg_260_pp0_iter1_reg;
reg   [1:0] lshr_ln66_s_reg_265;
wire   [3:0] trunc_ln66_1_fu_176_p1;
reg   [3:0] trunc_ln66_1_reg_270;
wire   [7:0] trunc_ln66_2_fu_208_p1;
reg   [7:0] trunc_ln66_2_reg_275;
reg   [1:0] buf_0_addr_reg_280;
reg   [1:0] buf_1_addr_reg_286;
reg   [1:0] buf_2_addr_reg_292;
reg   [1:0] buf_3_addr_reg_298;
wire   [63:0] zext_ln66_1_fu_185_p1;
wire    ap_block_pp0_stage0;
reg   [4:0] i_fu_64;
wire   [4:0] add_ln66_fu_160_p2;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_i_8;
reg    buf_0_ce1_local;
reg    buf_0_we0_local;
wire   [7:0] xor_ln66_16_fu_235_p2;
reg    buf_0_ce0_local;
reg    buf_1_ce1_local;
reg    buf_1_we0_local;
reg    buf_1_ce0_local;
reg    buf_2_ce1_local;
reg    buf_2_we0_local;
reg    buf_2_ce0_local;
reg    buf_3_ce1_local;
reg    buf_3_we0_local;
reg    buf_3_ce0_local;
wire   [6:0] shl_ln3_fu_192_p3;
wire   [767:0] zext_ln66_fu_199_p1;
wire   [767:0] lshr_ln66_fu_203_p2;
wire   [7:0] tmp_2_fu_212_p9;
wire   [7:0] tmp_2_fu_212_p11;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [1:0] tmp_2_fu_212_p1;
wire  signed [1:0] tmp_2_fu_212_p3;
wire  signed [1:0] tmp_2_fu_212_p5;
wire   [1:0] tmp_2_fu_212_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 i_fu_64 = 5'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) aes256_encrypt_ecb_sparsemux_9_2_8_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_x_U99(.din0(buf_0_q1),.din1(buf_1_q1),.din2(buf_2_q1),.din3(buf_3_q1),.def(tmp_2_fu_212_p9),.sel(trunc_ln66_reg_260_pp0_iter1_reg),.dout(tmp_2_fu_212_p11));
aes256_encrypt_ecb_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln66_fu_150_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_64 <= add_ln66_fu_160_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_64 <= 5'd16;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        buf_0_addr_reg_280 <= zext_ln66_1_fu_185_p1;
        buf_1_addr_reg_286 <= zext_ln66_1_fu_185_p1;
        buf_2_addr_reg_292 <= zext_ln66_1_fu_185_p1;
        buf_3_addr_reg_298 <= zext_ln66_1_fu_185_p1;
        lshr_ln66_s_reg_265 <= {{add_ln66_fu_160_p2[3:2]}};
        trunc_ln66_1_reg_270 <= trunc_ln66_1_fu_176_p1;
        trunc_ln66_2_reg_275 <= trunc_ln66_2_fu_208_p1;
        trunc_ln66_reg_260 <= trunc_ln66_fu_156_p1;
        trunc_ln66_reg_260_pp0_iter1_reg <= trunc_ln66_reg_260;
    end
end
always @ (*) begin
    if (((icmp_ln66_fu_150_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_8 = 5'd16;
    end else begin
        ap_sig_allocacmp_i_8 = i_fu_64;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buf_0_ce0_local = 1'b1;
    end else begin
        buf_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_0_ce1_local = 1'b1;
    end else begin
        buf_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln66_reg_260_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buf_0_we0_local = 1'b1;
    end else begin
        buf_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buf_1_ce0_local = 1'b1;
    end else begin
        buf_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_1_ce1_local = 1'b1;
    end else begin
        buf_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln66_reg_260_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buf_1_we0_local = 1'b1;
    end else begin
        buf_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buf_2_ce0_local = 1'b1;
    end else begin
        buf_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_2_ce1_local = 1'b1;
    end else begin
        buf_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln66_reg_260_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buf_2_we0_local = 1'b1;
    end else begin
        buf_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buf_3_ce0_local = 1'b1;
    end else begin
        buf_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_3_ce1_local = 1'b1;
    end else begin
        buf_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln66_reg_260_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buf_3_we0_local = 1'b1;
    end else begin
        buf_3_we0_local = 1'b0;
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
assign add_ln66_fu_160_p2 = ($signed(ap_sig_allocacmp_i_8) + $signed(5'd31));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign buf_0_address0 = buf_0_addr_reg_280;
assign buf_0_address1 = zext_ln66_1_fu_185_p1;
assign buf_0_ce0 = buf_0_ce0_local;
assign buf_0_ce1 = buf_0_ce1_local;
assign buf_0_d0 = xor_ln66_16_fu_235_p2;
assign buf_0_we0 = buf_0_we0_local;
assign buf_1_address0 = buf_1_addr_reg_286;
assign buf_1_address1 = zext_ln66_1_fu_185_p1;
assign buf_1_ce0 = buf_1_ce0_local;
assign buf_1_ce1 = buf_1_ce1_local;
assign buf_1_d0 = xor_ln66_16_fu_235_p2;
assign buf_1_we0 = buf_1_we0_local;
assign buf_2_address0 = buf_2_addr_reg_292;
assign buf_2_address1 = zext_ln66_1_fu_185_p1;
assign buf_2_ce0 = buf_2_ce0_local;
assign buf_2_ce1 = buf_2_ce1_local;
assign buf_2_d0 = xor_ln66_16_fu_235_p2;
assign buf_2_we0 = buf_2_we0_local;
assign buf_3_address0 = buf_3_addr_reg_298;
assign buf_3_address1 = zext_ln66_1_fu_185_p1;
assign buf_3_ce0 = buf_3_ce0_local;
assign buf_3_ce1 = buf_3_ce1_local;
assign buf_3_d0 = xor_ln66_16_fu_235_p2;
assign buf_3_we0 = buf_3_we0_local;
assign icmp_ln66_fu_150_p2 = ((ap_sig_allocacmp_i_8 == 5'd0) ? 1'b1 : 1'b0);
assign lshr_ln66_fu_203_p2 = ctx_ret1 >> zext_ln66_fu_199_p1;
assign shl_ln3_fu_192_p3 = {{trunc_ln66_1_reg_270}, {3'd0}};
assign tmp_2_fu_212_p9 = 'bx;
assign trunc_ln66_1_fu_176_p1 = add_ln66_fu_160_p2[3:0];
assign trunc_ln66_2_fu_208_p1 = lshr_ln66_fu_203_p2[7:0];
assign trunc_ln66_fu_156_p1 = ap_sig_allocacmp_i_8[1:0];
assign xor_ln66_16_fu_235_p2 = (trunc_ln66_2_reg_275 ^ tmp_2_fu_212_p11);
assign zext_ln66_1_fu_185_p1 = lshr_ln66_s_reg_265;
assign zext_ln66_fu_199_p1 = shl_ln3_fu_192_p3;
endmodule 