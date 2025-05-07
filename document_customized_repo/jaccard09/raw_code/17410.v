module aes256_encrypt_ecb_aes256_encrypt_ecb_Pipeline_sub (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buf_3_address0,buf_3_ce0,buf_3_we0,buf_3_d0,buf_3_address1,buf_3_ce1,buf_3_q1,buf_2_address0,buf_2_ce0,buf_2_we0,buf_2_d0,buf_2_address1,buf_2_ce1,buf_2_q1,buf_1_address0,buf_1_ce0,buf_1_we0,buf_1_d0,buf_1_address1,buf_1_ce1,buf_1_q1,buf_0_address0,buf_0_ce0,buf_0_we0,buf_0_d0,buf_0_address1,buf_0_ce1,buf_0_q1,sbox_0_address0,sbox_0_ce0,sbox_0_q0,sbox_1_address0,sbox_1_ce0,sbox_1_q0,sbox_2_address0,sbox_2_ce0,sbox_2_q0,sbox_3_address0,sbox_3_ce0,sbox_3_q0); 
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
output  [5:0] sbox_0_address0;
output   sbox_0_ce0;
input  [7:0] sbox_0_q0;
output  [5:0] sbox_1_address0;
output   sbox_1_ce0;
input  [7:0] sbox_1_q0;
output  [5:0] sbox_2_address0;
output   sbox_2_ce0;
input  [7:0] sbox_2_q0;
output  [5:0] sbox_3_address0;
output   sbox_3_ce0;
input  [7:0] sbox_3_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln58_fu_208_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [1:0] trunc_ln58_fu_214_p1;
reg   [1:0] trunc_ln58_reg_330;
reg   [1:0] trunc_ln58_reg_330_pp0_iter1_reg;
reg   [1:0] buf_0_addr_reg_335;
reg   [1:0] buf_0_addr_reg_335_pp0_iter1_reg;
reg   [1:0] buf_1_addr_reg_341;
reg   [1:0] buf_1_addr_reg_341_pp0_iter1_reg;
reg   [1:0] buf_2_addr_reg_347;
reg   [1:0] buf_2_addr_reg_347_pp0_iter1_reg;
reg   [1:0] buf_3_addr_reg_353;
reg   [1:0] buf_3_addr_reg_353_pp0_iter1_reg;
wire   [1:0] trunc_ln58_1_fu_270_p1;
reg   [1:0] trunc_ln58_1_reg_359;
wire   [63:0] zext_ln58_fu_234_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln58_1_fu_284_p1;
reg   [4:0] i_fu_76;
wire   [4:0] add_ln58_fu_218_p2;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_i_1;
reg    buf_0_ce1_local;
reg    buf_0_we0_local;
wire   [7:0] tmp_14_fu_292_p11;
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
reg    sbox_0_ce0_local;
reg    sbox_1_ce0_local;
reg    sbox_2_ce0_local;
reg    sbox_3_ce0_local;
wire   [1:0] lshr_ln58_s_fu_224_p4;
wire   [7:0] tmp_13_fu_247_p9;
wire   [7:0] tmp_13_fu_247_p11;
wire   [5:0] lshr_ln58_1_fu_274_p4;
wire   [7:0] tmp_14_fu_292_p9;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [1:0] tmp_13_fu_247_p1;
wire  signed [1:0] tmp_13_fu_247_p3;
wire  signed [1:0] tmp_13_fu_247_p5;
wire   [1:0] tmp_13_fu_247_p7;
wire   [1:0] tmp_14_fu_292_p1;
wire   [1:0] tmp_14_fu_292_p3;
wire  signed [1:0] tmp_14_fu_292_p5;
wire  signed [1:0] tmp_14_fu_292_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 i_fu_76 = 5'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) aes256_encrypt_ecb_sparsemux_9_2_8_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_x_U65(.din0(buf_0_q1),.din1(buf_1_q1),.din2(buf_2_q1),.din3(buf_3_q1),.def(tmp_13_fu_247_p9),.sel(trunc_ln58_reg_330),.dout(tmp_13_fu_247_p11));
(* dissolve_hierarchy = "yes" *) aes256_encrypt_ecb_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 8 ),.CASE1( 2'h1 ),.din1_WIDTH( 8 ),.CASE2( 2'h2 ),.din2_WIDTH( 8 ),.CASE3( 2'h3 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U66(.din0(sbox_0_q0),.din1(sbox_1_q0),.din2(sbox_2_q0),.din3(sbox_3_q0),.def(tmp_14_fu_292_p9),.sel(trunc_ln58_1_reg_359),.dout(tmp_14_fu_292_p11));
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
        if (((icmp_ln58_fu_208_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_76 <= add_ln58_fu_218_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_76 <= 5'd16;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        buf_0_addr_reg_335 <= zext_ln58_fu_234_p1;
        buf_0_addr_reg_335_pp0_iter1_reg <= buf_0_addr_reg_335;
        buf_1_addr_reg_341 <= zext_ln58_fu_234_p1;
        buf_1_addr_reg_341_pp0_iter1_reg <= buf_1_addr_reg_341;
        buf_2_addr_reg_347 <= zext_ln58_fu_234_p1;
        buf_2_addr_reg_347_pp0_iter1_reg <= buf_2_addr_reg_347;
        buf_3_addr_reg_353 <= zext_ln58_fu_234_p1;
        buf_3_addr_reg_353_pp0_iter1_reg <= buf_3_addr_reg_353;
        trunc_ln58_1_reg_359 <= trunc_ln58_1_fu_270_p1;
        trunc_ln58_reg_330 <= trunc_ln58_fu_214_p1;
        trunc_ln58_reg_330_pp0_iter1_reg <= trunc_ln58_reg_330;
    end
end
always @ (*) begin
    if (((icmp_ln58_fu_208_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_1 = 5'd16;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_76;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_0_ce1_local = 1'b1;
    end else begin
        buf_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln58_reg_330_pp0_iter1_reg == 2'd1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_1_ce1_local = 1'b1;
    end else begin
        buf_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln58_reg_330_pp0_iter1_reg == 2'd2))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_2_ce1_local = 1'b1;
    end else begin
        buf_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln58_reg_330_pp0_iter1_reg == 2'd3))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_3_ce1_local = 1'b1;
    end else begin
        buf_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln58_reg_330_pp0_iter1_reg == 2'd0))) begin
        buf_3_we0_local = 1'b1;
    end else begin
        buf_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sbox_0_ce0_local = 1'b1;
    end else begin
        sbox_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sbox_1_ce0_local = 1'b1;
    end else begin
        sbox_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sbox_2_ce0_local = 1'b1;
    end else begin
        sbox_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sbox_3_ce0_local = 1'b1;
    end else begin
        sbox_3_ce0_local = 1'b0;
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
assign add_ln58_fu_218_p2 = ($signed(ap_sig_allocacmp_i_1) + $signed(5'd31));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign buf_0_address0 = buf_0_addr_reg_335_pp0_iter1_reg;
assign buf_0_address1 = zext_ln58_fu_234_p1;
assign buf_0_ce0 = buf_0_ce0_local;
assign buf_0_ce1 = buf_0_ce1_local;
assign buf_0_d0 = tmp_14_fu_292_p11;
assign buf_0_we0 = buf_0_we0_local;
assign buf_1_address0 = buf_1_addr_reg_341_pp0_iter1_reg;
assign buf_1_address1 = zext_ln58_fu_234_p1;
assign buf_1_ce0 = buf_1_ce0_local;
assign buf_1_ce1 = buf_1_ce1_local;
assign buf_1_d0 = tmp_14_fu_292_p11;
assign buf_1_we0 = buf_1_we0_local;
assign buf_2_address0 = buf_2_addr_reg_347_pp0_iter1_reg;
assign buf_2_address1 = zext_ln58_fu_234_p1;
assign buf_2_ce0 = buf_2_ce0_local;
assign buf_2_ce1 = buf_2_ce1_local;
assign buf_2_d0 = tmp_14_fu_292_p11;
assign buf_2_we0 = buf_2_we0_local;
assign buf_3_address0 = buf_3_addr_reg_353_pp0_iter1_reg;
assign buf_3_address1 = zext_ln58_fu_234_p1;
assign buf_3_ce0 = buf_3_ce0_local;
assign buf_3_ce1 = buf_3_ce1_local;
assign buf_3_d0 = tmp_14_fu_292_p11;
assign buf_3_we0 = buf_3_we0_local;
assign icmp_ln58_fu_208_p2 = ((ap_sig_allocacmp_i_1 == 5'd0) ? 1'b1 : 1'b0);
assign lshr_ln58_1_fu_274_p4 = {{tmp_13_fu_247_p11[7:2]}};
assign lshr_ln58_s_fu_224_p4 = {{add_ln58_fu_218_p2[3:2]}};
assign sbox_0_address0 = zext_ln58_1_fu_284_p1;
assign sbox_0_ce0 = sbox_0_ce0_local;
assign sbox_1_address0 = zext_ln58_1_fu_284_p1;
assign sbox_1_ce0 = sbox_1_ce0_local;
assign sbox_2_address0 = zext_ln58_1_fu_284_p1;
assign sbox_2_ce0 = sbox_2_ce0_local;
assign sbox_3_address0 = zext_ln58_1_fu_284_p1;
assign sbox_3_ce0 = sbox_3_ce0_local;
assign tmp_13_fu_247_p9 = 'bx;
assign tmp_14_fu_292_p9 = 'bx;
assign trunc_ln58_1_fu_270_p1 = tmp_13_fu_247_p11[1:0];
assign trunc_ln58_fu_214_p1 = ap_sig_allocacmp_i_1[1:0];
assign zext_ln58_1_fu_284_p1 = lshr_ln58_1_fu_274_p4;
assign zext_ln58_fu_234_p1 = lshr_ln58_s_fu_224_p4;
endmodule 