module aes256_encrypt_ecb_aes256_encrypt_ecb_Pipeline_addkey1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buf_7_address0,buf_7_ce0,buf_7_we0,buf_7_d0,buf_7_address1,buf_7_ce1,buf_7_q1,buf_6_address0,buf_6_ce0,buf_6_we0,buf_6_d0,buf_6_address1,buf_6_ce1,buf_6_q1,buf_5_address0,buf_5_ce0,buf_5_we0,buf_5_d0,buf_5_address1,buf_5_ce1,buf_5_q1,buf_4_address0,buf_4_ce0,buf_4_we0,buf_4_d0,buf_4_address1,buf_4_ce1,buf_4_q1,buf_3_address0,buf_3_ce0,buf_3_we0,buf_3_d0,buf_3_address1,buf_3_ce1,buf_3_q1,buf_2_address0,buf_2_ce0,buf_2_we0,buf_2_d0,buf_2_address1,buf_2_ce1,buf_2_q1,buf_1_address0,buf_1_ce0,buf_1_we0,buf_1_d0,buf_1_address1,buf_1_ce1,buf_1_q1,buf_0_address0,buf_0_ce0,buf_0_we0,buf_0_d0,buf_0_address1,buf_0_ce1,buf_0_q1,ctx_ret1); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [0:0] buf_7_address0;
output   buf_7_ce0;
output   buf_7_we0;
output  [7:0] buf_7_d0;
output  [0:0] buf_7_address1;
output   buf_7_ce1;
input  [7:0] buf_7_q1;
output  [0:0] buf_6_address0;
output   buf_6_ce0;
output   buf_6_we0;
output  [7:0] buf_6_d0;
output  [0:0] buf_6_address1;
output   buf_6_ce1;
input  [7:0] buf_6_q1;
output  [0:0] buf_5_address0;
output   buf_5_ce0;
output   buf_5_we0;
output  [7:0] buf_5_d0;
output  [0:0] buf_5_address1;
output   buf_5_ce1;
input  [7:0] buf_5_q1;
output  [0:0] buf_4_address0;
output   buf_4_ce0;
output   buf_4_we0;
output  [7:0] buf_4_d0;
output  [0:0] buf_4_address1;
output   buf_4_ce1;
input  [7:0] buf_4_q1;
output  [0:0] buf_3_address0;
output   buf_3_ce0;
output   buf_3_we0;
output  [7:0] buf_3_d0;
output  [0:0] buf_3_address1;
output   buf_3_ce1;
input  [7:0] buf_3_q1;
output  [0:0] buf_2_address0;
output   buf_2_ce0;
output   buf_2_we0;
output  [7:0] buf_2_d0;
output  [0:0] buf_2_address1;
output   buf_2_ce1;
input  [7:0] buf_2_q1;
output  [0:0] buf_1_address0;
output   buf_1_ce0;
output   buf_1_we0;
output  [7:0] buf_1_d0;
output  [0:0] buf_1_address1;
output   buf_1_ce1;
input  [7:0] buf_1_q1;
output  [0:0] buf_0_address0;
output   buf_0_ce0;
output   buf_0_we0;
output  [7:0] buf_0_d0;
output  [0:0] buf_0_address1;
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
wire   [0:0] icmp_ln71_1_fu_230_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [2:0] trunc_ln71_fu_236_p1;
reg   [2:0] trunc_ln71_reg_362;
reg   [2:0] trunc_ln71_reg_362_pp0_iter1_reg;
reg   [0:0] tmp_reg_367;
wire   [3:0] trunc_ln71_3_fu_254_p1;
reg   [3:0] trunc_ln71_3_reg_372;
wire   [7:0] trunc_ln71_4_fu_290_p1;
reg   [7:0] trunc_ln71_4_reg_377;
reg   [0:0] buf_0_addr_reg_382;
reg   [0:0] buf_1_addr_reg_388;
reg   [0:0] buf_2_addr_reg_394;
reg   [0:0] buf_3_addr_reg_400;
reg   [0:0] buf_4_addr_reg_406;
reg   [0:0] buf_5_addr_reg_412;
reg   [0:0] buf_6_addr_reg_418;
reg   [0:0] buf_7_addr_reg_424;
wire   [63:0] zext_ln71_fu_263_p1;
wire    ap_block_pp0_stage0;
reg   [4:0] i_fu_76;
wire   [4:0] add_ln71_fu_240_p2;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_i_10;
reg    buf_0_ce1_local;
reg    buf_0_we0_local;
wire   [7:0] xor_ln71_fu_333_p2;
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
reg    buf_4_ce1_local;
reg    buf_4_we0_local;
reg    buf_4_ce0_local;
reg    buf_5_ce1_local;
reg    buf_5_we0_local;
reg    buf_5_ce0_local;
reg    buf_6_ce1_local;
reg    buf_6_we0_local;
reg    buf_6_ce0_local;
reg    buf_7_ce1_local;
reg    buf_7_we0_local;
reg    buf_7_ce0_local;
wire   [6:0] shl_ln71_1_fu_274_p3;
wire   [767:0] zext_ln71_1_fu_281_p1;
wire   [767:0] lshr_ln71_fu_285_p2;
wire   [7:0] tmp_s_fu_294_p17;
wire   [7:0] tmp_s_fu_294_p19;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] tmp_s_fu_294_p1;
wire   [2:0] tmp_s_fu_294_p3;
wire   [2:0] tmp_s_fu_294_p5;
wire  signed [2:0] tmp_s_fu_294_p7;
wire  signed [2:0] tmp_s_fu_294_p9;
wire  signed [2:0] tmp_s_fu_294_p11;
wire  signed [2:0] tmp_s_fu_294_p13;
wire   [2:0] tmp_s_fu_294_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 i_fu_76 = 5'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) aes256_encrypt_ecb_sparsemux_17_3_8_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 8 ),.CASE1( 3'h2 ),.din1_WIDTH( 8 ),.CASE2( 3'h3 ),.din2_WIDTH( 8 ),.CASE3( 3'h4 ),.din3_WIDTH( 8 ),.CASE4( 3'h5 ),.din4_WIDTH( 8 ),.CASE5( 3'h6 ),.din5_WIDTH( 8 ),.CASE6( 3'h7 ),.din6_WIDTH( 8 ),.CASE7( 3'h0 ),.din7_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 3 ),.dout_WIDTH( 8 ))
sparsemux_17_3_8_1_1_x_U60(.din0(buf_0_q1),.din1(buf_1_q1),.din2(buf_2_q1),.din3(buf_3_q1),.din4(buf_4_q1),.din5(buf_5_q1),.din6(buf_6_q1),.din7(buf_7_q1),.def(tmp_s_fu_294_p17),.sel(trunc_ln71_reg_362_pp0_iter1_reg),.dout(tmp_s_fu_294_p19));
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
        if (((icmp_ln71_1_fu_230_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_76 <= add_ln71_fu_240_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_76 <= 5'd16;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        buf_0_addr_reg_382 <= zext_ln71_fu_263_p1;
        buf_1_addr_reg_388 <= zext_ln71_fu_263_p1;
        buf_2_addr_reg_394 <= zext_ln71_fu_263_p1;
        buf_3_addr_reg_400 <= zext_ln71_fu_263_p1;
        buf_4_addr_reg_406 <= zext_ln71_fu_263_p1;
        buf_5_addr_reg_412 <= zext_ln71_fu_263_p1;
        buf_6_addr_reg_418 <= zext_ln71_fu_263_p1;
        buf_7_addr_reg_424 <= zext_ln71_fu_263_p1;
        tmp_reg_367 <= add_ln71_fu_240_p2[32'd3];
        trunc_ln71_3_reg_372 <= trunc_ln71_3_fu_254_p1;
        trunc_ln71_4_reg_377 <= trunc_ln71_4_fu_290_p1;
        trunc_ln71_reg_362 <= trunc_ln71_fu_236_p1;
        trunc_ln71_reg_362_pp0_iter1_reg <= trunc_ln71_reg_362;
    end
end
always @ (*) begin
    if (((icmp_ln71_1_fu_230_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i_10 = 5'd16;
    end else begin
        ap_sig_allocacmp_i_10 = i_fu_76;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln71_reg_362_pp0_iter1_reg == 3'd1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln71_reg_362_pp0_iter1_reg == 3'd2))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln71_reg_362_pp0_iter1_reg == 3'd3))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln71_reg_362_pp0_iter1_reg == 3'd4))) begin
        buf_3_we0_local = 1'b1;
    end else begin
        buf_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buf_4_ce0_local = 1'b1;
    end else begin
        buf_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_4_ce1_local = 1'b1;
    end else begin
        buf_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln71_reg_362_pp0_iter1_reg == 3'd5))) begin
        buf_4_we0_local = 1'b1;
    end else begin
        buf_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buf_5_ce0_local = 1'b1;
    end else begin
        buf_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_5_ce1_local = 1'b1;
    end else begin
        buf_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln71_reg_362_pp0_iter1_reg == 3'd6))) begin
        buf_5_we0_local = 1'b1;
    end else begin
        buf_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buf_6_ce0_local = 1'b1;
    end else begin
        buf_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_6_ce1_local = 1'b1;
    end else begin
        buf_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln71_reg_362_pp0_iter1_reg == 3'd7))) begin
        buf_6_we0_local = 1'b1;
    end else begin
        buf_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buf_7_ce0_local = 1'b1;
    end else begin
        buf_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_7_ce1_local = 1'b1;
    end else begin
        buf_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln71_reg_362_pp0_iter1_reg == 3'd0))) begin
        buf_7_we0_local = 1'b1;
    end else begin
        buf_7_we0_local = 1'b0;
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
assign add_ln71_fu_240_p2 = ($signed(ap_sig_allocacmp_i_10) + $signed(5'd31));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign buf_0_address0 = buf_0_addr_reg_382;
assign buf_0_address1 = zext_ln71_fu_263_p1;
assign buf_0_ce0 = buf_0_ce0_local;
assign buf_0_ce1 = buf_0_ce1_local;
assign buf_0_d0 = xor_ln71_fu_333_p2;
assign buf_0_we0 = buf_0_we0_local;
assign buf_1_address0 = buf_1_addr_reg_388;
assign buf_1_address1 = zext_ln71_fu_263_p1;
assign buf_1_ce0 = buf_1_ce0_local;
assign buf_1_ce1 = buf_1_ce1_local;
assign buf_1_d0 = xor_ln71_fu_333_p2;
assign buf_1_we0 = buf_1_we0_local;
assign buf_2_address0 = buf_2_addr_reg_394;
assign buf_2_address1 = zext_ln71_fu_263_p1;
assign buf_2_ce0 = buf_2_ce0_local;
assign buf_2_ce1 = buf_2_ce1_local;
assign buf_2_d0 = xor_ln71_fu_333_p2;
assign buf_2_we0 = buf_2_we0_local;
assign buf_3_address0 = buf_3_addr_reg_400;
assign buf_3_address1 = zext_ln71_fu_263_p1;
assign buf_3_ce0 = buf_3_ce0_local;
assign buf_3_ce1 = buf_3_ce1_local;
assign buf_3_d0 = xor_ln71_fu_333_p2;
assign buf_3_we0 = buf_3_we0_local;
assign buf_4_address0 = buf_4_addr_reg_406;
assign buf_4_address1 = zext_ln71_fu_263_p1;
assign buf_4_ce0 = buf_4_ce0_local;
assign buf_4_ce1 = buf_4_ce1_local;
assign buf_4_d0 = xor_ln71_fu_333_p2;
assign buf_4_we0 = buf_4_we0_local;
assign buf_5_address0 = buf_5_addr_reg_412;
assign buf_5_address1 = zext_ln71_fu_263_p1;
assign buf_5_ce0 = buf_5_ce0_local;
assign buf_5_ce1 = buf_5_ce1_local;
assign buf_5_d0 = xor_ln71_fu_333_p2;
assign buf_5_we0 = buf_5_we0_local;
assign buf_6_address0 = buf_6_addr_reg_418;
assign buf_6_address1 = zext_ln71_fu_263_p1;
assign buf_6_ce0 = buf_6_ce0_local;
assign buf_6_ce1 = buf_6_ce1_local;
assign buf_6_d0 = xor_ln71_fu_333_p2;
assign buf_6_we0 = buf_6_we0_local;
assign buf_7_address0 = buf_7_addr_reg_424;
assign buf_7_address1 = zext_ln71_fu_263_p1;
assign buf_7_ce0 = buf_7_ce0_local;
assign buf_7_ce1 = buf_7_ce1_local;
assign buf_7_d0 = xor_ln71_fu_333_p2;
assign buf_7_we0 = buf_7_we0_local;
assign icmp_ln71_1_fu_230_p2 = ((ap_sig_allocacmp_i_10 == 5'd0) ? 1'b1 : 1'b0);
assign lshr_ln71_fu_285_p2 = ctx_ret1 >> zext_ln71_1_fu_281_p1;
assign shl_ln71_1_fu_274_p3 = {{trunc_ln71_3_reg_372}, {3'd0}};
assign tmp_s_fu_294_p17 = 'bx;
assign trunc_ln71_3_fu_254_p1 = add_ln71_fu_240_p2[3:0];
assign trunc_ln71_4_fu_290_p1 = lshr_ln71_fu_285_p2[7:0];
assign trunc_ln71_fu_236_p1 = ap_sig_allocacmp_i_10[2:0];
assign xor_ln71_fu_333_p2 = (trunc_ln71_4_reg_377 ^ tmp_s_fu_294_p19);
assign zext_ln71_1_fu_281_p1 = shl_ln71_1_fu_274_p3;
assign zext_ln71_fu_263_p1 = tmp_reg_367;
endmodule 