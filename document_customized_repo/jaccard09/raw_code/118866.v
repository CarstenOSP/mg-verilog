module mvt_mvt_Pipeline_lpwr (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,x1_out_din,x1_out_full_n,x1_out_write,x2_out_din,x2_out_full_n,x2_out_write,buff_x1_address0,buff_x1_ce0,buff_x1_q0,buff_x1_1_address0,buff_x1_1_ce0,buff_x1_1_q0,buff_x1_2_address0,buff_x1_2_ce0,buff_x1_2_q0,buff_x1_3_address0,buff_x1_3_ce0,buff_x1_3_q0,buff_x2_address0,buff_x2_ce0,buff_x2_q0,buff_x2_1_address0,buff_x2_1_ce0,buff_x2_1_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] x1_out_din;
input   x1_out_full_n;
output   x1_out_write;
output  [31:0] x2_out_din;
input   x2_out_full_n;
output   x2_out_write;
output  [3:0] buff_x1_address0;
output   buff_x1_ce0;
input  [31:0] buff_x1_q0;
output  [3:0] buff_x1_1_address0;
output   buff_x1_1_ce0;
input  [31:0] buff_x1_1_q0;
output  [3:0] buff_x1_2_address0;
output   buff_x1_2_ce0;
input  [31:0] buff_x1_2_q0;
output  [3:0] buff_x1_3_address0;
output   buff_x1_3_ce0;
input  [31:0] buff_x1_3_q0;
output  [4:0] buff_x2_address0;
output   buff_x2_ce0;
input  [31:0] buff_x2_q0;
output  [4:0] buff_x2_1_address0;
output   buff_x2_1_ce0;
input  [31:0] buff_x2_1_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
reg    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln35_fu_172_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    x1_out_blk_n;
wire    ap_block_pp0_stage0;
reg    x2_out_blk_n;
reg    ap_block_pp0_stage0_11001;
wire   [1:0] trunc_ln35_fu_184_p1;
reg   [1:0] trunc_ln35_reg_280;
wire   [0:0] trunc_ln35_1_fu_188_p1;
reg   [0:0] trunc_ln35_1_reg_285;
wire   [31:0] tmp_s_fu_231_p11;
reg   [31:0] tmp_s_reg_320;
wire   [31:0] select_ln37_fu_254_p3;
reg   [31:0] select_ln37_reg_325;
wire   [63:0] zext_ln6_1_fu_218_p1;
wire   [63:0] zext_ln6_fu_202_p1;
reg   [6:0] i_fu_68;
wire   [6:0] add_ln35_fu_178_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_1;
wire   [31:0] bitcast_ln36_fu_261_p1;
reg    ap_block_pp0_stage0_01001;
reg    x1_out_write_local;
wire   [31:0] bitcast_ln37_fu_265_p1;
reg    x2_out_write_local;
reg    buff_x1_ce0_local;
reg    buff_x1_1_ce0_local;
reg    buff_x1_2_ce0_local;
reg    buff_x1_3_ce0_local;
reg    buff_x2_ce0_local;
reg    buff_x2_1_ce0_local;
wire   [4:0] lshr_ln6_4_fu_192_p4;
wire   [3:0] lshr_ln6_5_fu_208_p4;
wire   [31:0] tmp_s_fu_231_p9;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [1:0] tmp_s_fu_231_p1;
wire   [1:0] tmp_s_fu_231_p3;
wire  signed [1:0] tmp_s_fu_231_p5;
wire  signed [1:0] tmp_s_fu_231_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 i_fu_68 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) mvt_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U13583(.din0(buff_x1_q0),.din1(buff_x1_1_q0),.din2(buff_x1_2_q0),.din3(buff_x1_3_q0),.def(tmp_s_fu_231_p9),.sel(trunc_ln35_reg_280),.dout(tmp_s_fu_231_p11));
mvt_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if (((icmp_ln35_fu_172_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_68 <= add_ln35_fu_178_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_68 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        select_ln37_reg_325 <= select_ln37_fu_254_p3;
        tmp_s_reg_320 <= tmp_s_fu_231_p11;
        trunc_ln35_1_reg_285 <= trunc_ln35_1_fu_188_p1;
        trunc_ln35_reg_280 <= trunc_ln35_fu_184_p1;
    end
end
always @ (*) begin
    if (((icmp_ln35_fu_172_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i_1 = i_fu_68;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x1_1_ce0_local = 1'b1;
    end else begin
        buff_x1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x1_2_ce0_local = 1'b1;
    end else begin
        buff_x1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x1_3_ce0_local = 1'b1;
    end else begin
        buff_x1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x1_ce0_local = 1'b1;
    end else begin
        buff_x1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x2_1_ce0_local = 1'b1;
    end else begin
        buff_x2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x2_ce0_local = 1'b1;
    end else begin
        buff_x2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        x1_out_blk_n = x1_out_full_n;
    end else begin
        x1_out_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        x1_out_write_local = 1'b1;
    end else begin
        x1_out_write_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        x2_out_blk_n = x2_out_full_n;
    end else begin
        x2_out_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        x2_out_write_local = 1'b1;
    end else begin
        x2_out_write_local = 1'b0;
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
assign add_ln35_fu_178_p2 = (ap_sig_allocacmp_i_1 + 7'd1);
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
    ap_block_state3_pp0_stage0_iter2 = ((x2_out_full_n == 1'b0) | (x1_out_full_n == 1'b0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln36_fu_261_p1 = tmp_s_reg_320;
assign bitcast_ln37_fu_265_p1 = select_ln37_reg_325;
assign buff_x1_1_address0 = zext_ln6_1_fu_218_p1;
assign buff_x1_1_ce0 = buff_x1_1_ce0_local;
assign buff_x1_2_address0 = zext_ln6_1_fu_218_p1;
assign buff_x1_2_ce0 = buff_x1_2_ce0_local;
assign buff_x1_3_address0 = zext_ln6_1_fu_218_p1;
assign buff_x1_3_ce0 = buff_x1_3_ce0_local;
assign buff_x1_address0 = zext_ln6_1_fu_218_p1;
assign buff_x1_ce0 = buff_x1_ce0_local;
assign buff_x2_1_address0 = zext_ln6_fu_202_p1;
assign buff_x2_1_ce0 = buff_x2_1_ce0_local;
assign buff_x2_address0 = zext_ln6_fu_202_p1;
assign buff_x2_ce0 = buff_x2_ce0_local;
assign icmp_ln35_fu_172_p2 = ((ap_sig_allocacmp_i_1 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln6_4_fu_192_p4 = {{ap_sig_allocacmp_i_1[5:1]}};
assign lshr_ln6_5_fu_208_p4 = {{ap_sig_allocacmp_i_1[5:2]}};
assign select_ln37_fu_254_p3 = ((trunc_ln35_1_reg_285[0:0] == 1'b1) ? buff_x2_1_q0 : buff_x2_q0);
assign tmp_s_fu_231_p9 = 'bx;
assign trunc_ln35_1_fu_188_p1 = ap_sig_allocacmp_i_1[0:0];
assign trunc_ln35_fu_184_p1 = ap_sig_allocacmp_i_1[1:0];
assign x1_out_din = bitcast_ln36_fu_261_p1;
assign x1_out_write = x1_out_write_local;
assign x2_out_din = bitcast_ln37_fu_265_p1;
assign x2_out_write = x2_out_write_local;
assign zext_ln6_1_fu_218_p1 = lshr_ln6_5_fu_208_p4;
assign zext_ln6_fu_202_p1 = lshr_ln6_4_fu_192_p4;
endmodule 