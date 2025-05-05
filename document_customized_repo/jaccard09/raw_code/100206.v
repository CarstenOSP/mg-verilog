module atax_atax_Pipeline_lpwr_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,y_out_din,y_out_full_n,y_out_write,buff_y_out_address0,buff_y_out_ce0,buff_y_out_q0,buff_y_out_1_address0,buff_y_out_1_ce0,buff_y_out_1_q0,buff_y_out_2_address0,buff_y_out_2_ce0,buff_y_out_2_q0,buff_y_out_3_address0,buff_y_out_3_ce0,buff_y_out_3_q0,buff_y_out_4_address0,buff_y_out_4_ce0,buff_y_out_4_q0,buff_y_out_5_address0,buff_y_out_5_ce0,buff_y_out_5_q0,buff_y_out_6_address0,buff_y_out_6_ce0,buff_y_out_6_q0,buff_y_out_7_address0,buff_y_out_7_ce0,buff_y_out_7_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] y_out_din;
input   y_out_full_n;
output   y_out_write;
output  [2:0] buff_y_out_address0;
output   buff_y_out_ce0;
input  [31:0] buff_y_out_q0;
output  [2:0] buff_y_out_1_address0;
output   buff_y_out_1_ce0;
input  [31:0] buff_y_out_1_q0;
output  [2:0] buff_y_out_2_address0;
output   buff_y_out_2_ce0;
input  [31:0] buff_y_out_2_q0;
output  [2:0] buff_y_out_3_address0;
output   buff_y_out_3_ce0;
input  [31:0] buff_y_out_3_q0;
output  [2:0] buff_y_out_4_address0;
output   buff_y_out_4_ce0;
input  [31:0] buff_y_out_4_q0;
output  [2:0] buff_y_out_5_address0;
output   buff_y_out_5_ce0;
input  [31:0] buff_y_out_5_q0;
output  [2:0] buff_y_out_6_address0;
output   buff_y_out_6_ce0;
input  [31:0] buff_y_out_6_q0;
output  [2:0] buff_y_out_7_address0;
output   buff_y_out_7_ce0;
input  [31:0] buff_y_out_7_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
reg    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln32_fu_199_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    y_out_blk_n;
wire    ap_block_pp0_stage0;
reg    ap_block_pp0_stage0_11001;
wire   [2:0] trunc_ln32_fu_211_p1;
reg   [2:0] trunc_ln32_reg_296;
wire   [31:0] tmp_1_fu_242_p19;
reg   [31:0] tmp_1_reg_341;
wire   [63:0] zext_ln5_fu_225_p1;
reg   [6:0] i_fu_76;
wire   [6:0] add_ln32_fu_205_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_1;
wire   [31:0] bitcast_ln33_fu_281_p1;
reg    ap_block_pp0_stage0_01001;
reg    y_out_write_local;
reg    buff_y_out_ce0_local;
reg    buff_y_out_1_ce0_local;
reg    buff_y_out_2_ce0_local;
reg    buff_y_out_3_ce0_local;
reg    buff_y_out_4_ce0_local;
reg    buff_y_out_5_ce0_local;
reg    buff_y_out_6_ce0_local;
reg    buff_y_out_7_ce0_local;
wire   [2:0] lshr_ln5_6_fu_215_p4;
wire   [31:0] tmp_1_fu_242_p17;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] tmp_1_fu_242_p1;
wire   [2:0] tmp_1_fu_242_p3;
wire   [2:0] tmp_1_fu_242_p5;
wire   [2:0] tmp_1_fu_242_p7;
wire  signed [2:0] tmp_1_fu_242_p9;
wire  signed [2:0] tmp_1_fu_242_p11;
wire  signed [2:0] tmp_1_fu_242_p13;
wire  signed [2:0] tmp_1_fu_242_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 i_fu_76 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) atax_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1954(.din0(buff_y_out_q0),.din1(buff_y_out_1_q0),.din2(buff_y_out_2_q0),.din3(buff_y_out_3_q0),.din4(buff_y_out_4_q0),.din5(buff_y_out_5_q0),.din6(buff_y_out_6_q0),.din7(buff_y_out_7_q0),.def(tmp_1_fu_242_p17),.sel(trunc_ln32_reg_296),.dout(tmp_1_fu_242_p19));
atax_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if (((icmp_ln32_fu_199_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_76 <= add_ln32_fu_205_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_76 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        tmp_1_reg_341 <= tmp_1_fu_242_p19;
        trunc_ln32_reg_296 <= trunc_ln32_fu_211_p1;
    end
end
always @ (*) begin
    if (((icmp_ln32_fu_199_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_76;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_1_ce0_local = 1'b1;
    end else begin
        buff_y_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_2_ce0_local = 1'b1;
    end else begin
        buff_y_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_3_ce0_local = 1'b1;
    end else begin
        buff_y_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_4_ce0_local = 1'b1;
    end else begin
        buff_y_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_5_ce0_local = 1'b1;
    end else begin
        buff_y_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_6_ce0_local = 1'b1;
    end else begin
        buff_y_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_7_ce0_local = 1'b1;
    end else begin
        buff_y_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_ce0_local = 1'b1;
    end else begin
        buff_y_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        y_out_blk_n = y_out_full_n;
    end else begin
        y_out_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        y_out_write_local = 1'b1;
    end else begin
        y_out_write_local = 1'b0;
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
assign add_ln32_fu_205_p2 = (ap_sig_allocacmp_i_1 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_block_state3_pp0_stage0_iter2));
end
always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_block_state3_pp0_stage0_iter2));
end
always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_block_state3_pp0_stage0_iter2));
end
always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = (y_out_full_n == 1'b0);
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln33_fu_281_p1 = tmp_1_reg_341;
assign buff_y_out_1_address0 = zext_ln5_fu_225_p1;
assign buff_y_out_1_ce0 = buff_y_out_1_ce0_local;
assign buff_y_out_2_address0 = zext_ln5_fu_225_p1;
assign buff_y_out_2_ce0 = buff_y_out_2_ce0_local;
assign buff_y_out_3_address0 = zext_ln5_fu_225_p1;
assign buff_y_out_3_ce0 = buff_y_out_3_ce0_local;
assign buff_y_out_4_address0 = zext_ln5_fu_225_p1;
assign buff_y_out_4_ce0 = buff_y_out_4_ce0_local;
assign buff_y_out_5_address0 = zext_ln5_fu_225_p1;
assign buff_y_out_5_ce0 = buff_y_out_5_ce0_local;
assign buff_y_out_6_address0 = zext_ln5_fu_225_p1;
assign buff_y_out_6_ce0 = buff_y_out_6_ce0_local;
assign buff_y_out_7_address0 = zext_ln5_fu_225_p1;
assign buff_y_out_7_ce0 = buff_y_out_7_ce0_local;
assign buff_y_out_address0 = zext_ln5_fu_225_p1;
assign buff_y_out_ce0 = buff_y_out_ce0_local;
assign icmp_ln32_fu_199_p2 = ((ap_sig_allocacmp_i_1 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln5_6_fu_215_p4 = {{ap_sig_allocacmp_i_1[5:3]}};
assign tmp_1_fu_242_p17 = 'bx;
assign trunc_ln32_fu_211_p1 = ap_sig_allocacmp_i_1[2:0];
assign y_out_din = bitcast_ln33_fu_281_p1;
assign y_out_write = y_out_write_local;
assign zext_ln5_fu_225_p1 = lshr_ln5_6_fu_215_p4;
endmodule 