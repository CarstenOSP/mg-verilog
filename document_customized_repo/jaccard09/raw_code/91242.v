module mvt_mvt_Pipeline_lpwr (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,x1_out_din,x1_out_full_n,x1_out_write,x2_out_din,x2_out_full_n,x2_out_write,buff_x1_address0,buff_x1_ce0,buff_x1_q0,buff_x2_address0,buff_x2_ce0,buff_x2_q0,buff_x2_1_address0,buff_x2_1_ce0,buff_x2_1_q0,buff_x2_2_address0,buff_x2_2_ce0,buff_x2_2_q0,buff_x2_3_address0,buff_x2_3_ce0,buff_x2_3_q0,buff_x2_4_address0,buff_x2_4_ce0,buff_x2_4_q0,buff_x2_5_address0,buff_x2_5_ce0,buff_x2_5_q0,buff_x2_6_address0,buff_x2_6_ce0,buff_x2_6_q0,buff_x2_7_address0,buff_x2_7_ce0,buff_x2_7_q0); 
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
output  [5:0] buff_x1_address0;
output   buff_x1_ce0;
input  [31:0] buff_x1_q0;
output  [2:0] buff_x2_address0;
output   buff_x2_ce0;
input  [31:0] buff_x2_q0;
output  [2:0] buff_x2_1_address0;
output   buff_x2_1_ce0;
input  [31:0] buff_x2_1_q0;
output  [2:0] buff_x2_2_address0;
output   buff_x2_2_ce0;
input  [31:0] buff_x2_2_q0;
output  [2:0] buff_x2_3_address0;
output   buff_x2_3_ce0;
input  [31:0] buff_x2_3_q0;
output  [2:0] buff_x2_4_address0;
output   buff_x2_4_ce0;
input  [31:0] buff_x2_4_q0;
output  [2:0] buff_x2_5_address0;
output   buff_x2_5_ce0;
input  [31:0] buff_x2_5_q0;
output  [2:0] buff_x2_6_address0;
output   buff_x2_6_ce0;
input  [31:0] buff_x2_6_q0;
output  [2:0] buff_x2_7_address0;
output   buff_x2_7_ce0;
input  [31:0] buff_x2_7_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
reg    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln35_fu_223_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    x1_out_blk_n;
wire    ap_block_pp0_stage0;
reg    x2_out_blk_n;
reg   [6:0] i_1_reg_325;
reg    ap_block_pp0_stage0_11001;
wire   [31:0] tmp_8_fu_269_p19;
reg   [31:0] tmp_8_reg_380;
wire   [63:0] zext_ln6_fu_245_p1;
wire   [63:0] zext_ln35_fu_262_p1;
reg   [6:0] i_fu_80;
wire   [6:0] add_ln35_fu_229_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_1;
wire   [31:0] bitcast_ln36_fu_309_p1;
reg    ap_block_pp0_stage0_01001;
reg    x1_out_write_local;
wire   [31:0] bitcast_ln37_fu_314_p1;
reg    x2_out_write_local;
reg    buff_x2_ce0_local;
reg    buff_x2_1_ce0_local;
reg    buff_x2_2_ce0_local;
reg    buff_x2_3_ce0_local;
reg    buff_x2_4_ce0_local;
reg    buff_x2_5_ce0_local;
reg    buff_x2_6_ce0_local;
reg    buff_x2_7_ce0_local;
reg    buff_x1_ce0_local;
wire   [2:0] lshr_ln6_5_fu_235_p4;
wire   [31:0] tmp_8_fu_269_p17;
wire   [2:0] tmp_8_fu_269_p18;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] tmp_8_fu_269_p1;
wire   [2:0] tmp_8_fu_269_p3;
wire   [2:0] tmp_8_fu_269_p5;
wire   [2:0] tmp_8_fu_269_p7;
wire  signed [2:0] tmp_8_fu_269_p9;
wire  signed [2:0] tmp_8_fu_269_p11;
wire  signed [2:0] tmp_8_fu_269_p13;
wire  signed [2:0] tmp_8_fu_269_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 i_fu_80 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) mvt_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1900(.din0(buff_x2_q0),.din1(buff_x2_1_q0),.din2(buff_x2_2_q0),.din3(buff_x2_3_q0),.din4(buff_x2_4_q0),.din5(buff_x2_5_q0),.din6(buff_x2_6_q0),.din7(buff_x2_7_q0),.def(tmp_8_fu_269_p17),.sel(tmp_8_fu_269_p18),.dout(tmp_8_fu_269_p19));
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
        if (((icmp_ln35_fu_223_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_80 <= add_ln35_fu_229_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_80 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        i_1_reg_325 <= ap_sig_allocacmp_i_1;
        tmp_8_reg_380 <= tmp_8_fu_269_p19;
    end
end
always @ (*) begin
    if (((icmp_ln35_fu_223_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_80;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        buff_x2_2_ce0_local = 1'b1;
    end else begin
        buff_x2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x2_3_ce0_local = 1'b1;
    end else begin
        buff_x2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x2_4_ce0_local = 1'b1;
    end else begin
        buff_x2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x2_5_ce0_local = 1'b1;
    end else begin
        buff_x2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x2_6_ce0_local = 1'b1;
    end else begin
        buff_x2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_x2_7_ce0_local = 1'b1;
    end else begin
        buff_x2_7_ce0_local = 1'b0;
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
assign add_ln35_fu_229_p2 = (ap_sig_allocacmp_i_1 + 7'd1);
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
assign bitcast_ln36_fu_309_p1 = buff_x1_q0;
assign bitcast_ln37_fu_314_p1 = tmp_8_reg_380;
assign buff_x1_address0 = zext_ln35_fu_262_p1;
assign buff_x1_ce0 = buff_x1_ce0_local;
assign buff_x2_1_address0 = zext_ln6_fu_245_p1;
assign buff_x2_1_ce0 = buff_x2_1_ce0_local;
assign buff_x2_2_address0 = zext_ln6_fu_245_p1;
assign buff_x2_2_ce0 = buff_x2_2_ce0_local;
assign buff_x2_3_address0 = zext_ln6_fu_245_p1;
assign buff_x2_3_ce0 = buff_x2_3_ce0_local;
assign buff_x2_4_address0 = zext_ln6_fu_245_p1;
assign buff_x2_4_ce0 = buff_x2_4_ce0_local;
assign buff_x2_5_address0 = zext_ln6_fu_245_p1;
assign buff_x2_5_ce0 = buff_x2_5_ce0_local;
assign buff_x2_6_address0 = zext_ln6_fu_245_p1;
assign buff_x2_6_ce0 = buff_x2_6_ce0_local;
assign buff_x2_7_address0 = zext_ln6_fu_245_p1;
assign buff_x2_7_ce0 = buff_x2_7_ce0_local;
assign buff_x2_address0 = zext_ln6_fu_245_p1;
assign buff_x2_ce0 = buff_x2_ce0_local;
assign icmp_ln35_fu_223_p2 = ((ap_sig_allocacmp_i_1 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln6_5_fu_235_p4 = {{ap_sig_allocacmp_i_1[5:3]}};
assign tmp_8_fu_269_p17 = 'bx;
assign tmp_8_fu_269_p18 = i_1_reg_325[2:0];
assign x1_out_din = bitcast_ln36_fu_309_p1;
assign x1_out_write = x1_out_write_local;
assign x2_out_din = bitcast_ln37_fu_314_p1;
assign x2_out_write = x2_out_write_local;
assign zext_ln35_fu_262_p1 = i_1_reg_325;
assign zext_ln6_fu_245_p1 = lshr_ln6_5_fu_235_p4;
endmodule 