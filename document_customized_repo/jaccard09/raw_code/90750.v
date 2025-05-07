module mvt_mvt_Pipeline_lprd_1_lprd_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,y2_dout,y2_empty_n,y2_read,A_address0,A_ce0,A_q0,buff_A_address0,buff_A_ce0,buff_A_we0,buff_A_d0,x1_address0,x1_ce0,x1_q0,buff_x1_address0,buff_x1_ce0,buff_x1_we0,buff_x1_d0,x2_address0,x2_ce0,x2_q0,buff_x2_address0,buff_x2_ce0,buff_x2_we0,buff_x2_d0,y1_address0,y1_ce0,y1_q0,buff_y1_address0,buff_y1_ce0,buff_y1_we0,buff_y1_d0,buff_y2_address0,buff_y2_ce0,buff_y2_we0,buff_y2_d0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] y2_dout;
input   y2_empty_n;
output   y2_read;
output  [11:0] A_address0;
output   A_ce0;
input  [31:0] A_q0;
output  [11:0] buff_A_address0;
output   buff_A_ce0;
output   buff_A_we0;
output  [31:0] buff_A_d0;
output  [5:0] x1_address0;
output   x1_ce0;
input  [31:0] x1_q0;
output  [5:0] buff_x1_address0;
output   buff_x1_ce0;
output   buff_x1_we0;
output  [31:0] buff_x1_d0;
output  [5:0] x2_address0;
output   x2_ce0;
input  [31:0] x2_q0;
output  [5:0] buff_x2_address0;
output   buff_x2_ce0;
output   buff_x2_we0;
output  [31:0] buff_x2_d0;
output  [5:0] y1_address0;
output   y1_ce0;
input  [31:0] y1_q0;
output  [5:0] buff_y1_address0;
output   buff_y1_ce0;
output   buff_y1_we0;
output  [31:0] buff_y1_d0;
output  [5:0] buff_y2_address0;
output   buff_y2_ce0;
output   buff_y2_we0;
output  [31:0] buff_y2_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
reg   [0:0] first_iter_0_reg_373;
reg    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln13_fu_213_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    y2_blk_n;
wire    ap_block_pp0_stage0;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] first_iter_0_fu_268_p2;
reg   [5:0] buff_x1_addr_reg_382;
reg   [5:0] buff_x2_addr_reg_392;
reg   [5:0] buff_y1_addr_reg_402;
reg   [5:0] buff_y2_addr_reg_407;
wire   [11:0] add_ln19_fu_297_p2;
reg   [11:0] add_ln19_reg_412;
wire   [63:0] zext_ln19_1_fu_339_p1;
reg   [63:0] zext_ln19_1_reg_417;
wire   [63:0] zext_ln13_fu_274_p1;
reg   [6:0] j_fu_64;
wire   [6:0] add_ln18_fu_303_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_68;
wire   [6:0] select_ln13_fu_256_p3;
reg   [12:0] indvar_flatten_fu_72;
wire   [12:0] add_ln13_1_fu_219_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten_load;
reg    y2_read_local;
reg    x1_ce0_local;
reg    x2_ce0_local;
reg    y1_ce0_local;
reg    buff_x1_we0_local;
wire   [31:0] bitcast_ln14_fu_319_p1;
reg    buff_x1_ce0_local;
reg    buff_x2_we0_local;
wire   [31:0] bitcast_ln15_fu_324_p1;
reg    buff_x2_ce0_local;
reg    buff_y1_we0_local;
wire   [31:0] bitcast_ln16_fu_329_p1;
reg    buff_y1_ce0_local;
reg    buff_y2_we0_local;
wire   [31:0] bitcast_ln17_fu_334_p1;
reg    buff_y2_ce0_local;
reg    A_ce0_local;
reg    buff_A_we0_local;
wire   [31:0] bitcast_ln19_fu_343_p1;
reg    buff_A_ce0_local;
wire   [0:0] icmp_ln18_fu_242_p2;
wire   [6:0] add_ln13_fu_236_p2;
wire   [6:0] select_ln6_fu_248_p3;
wire   [5:0] empty_fu_264_p1;
wire   [11:0] tmp_fu_285_p3;
wire   [11:0] zext_ln19_fu_293_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 j_fu_64 = 7'd0;
#0 i_fu_68 = 7'd0;
#0 indvar_flatten_fu_72 = 13'd0;
#0 ap_done_reg = 1'b0;
end
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_fu_68 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_68 <= select_ln13_fu_256_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln13_fu_213_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_72 <= add_ln13_1_fu_219_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_72 <= 13'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_64 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_64 <= add_ln18_fu_303_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln19_reg_412 <= add_ln19_fu_297_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        buff_x1_addr_reg_382 <= zext_ln13_fu_274_p1;
        buff_x2_addr_reg_392 <= zext_ln13_fu_274_p1;
        buff_y1_addr_reg_402 <= zext_ln13_fu_274_p1;
        buff_y2_addr_reg_407 <= zext_ln13_fu_274_p1;
        first_iter_0_reg_373 <= first_iter_0_fu_268_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        zext_ln19_1_reg_417[11 : 0] <= zext_ln19_1_fu_339_p1[11 : 0];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        A_ce0_local = 1'b1;
    end else begin
        A_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_fu_213_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_72;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_ce0_local = 1'b1;
    end else begin
        buff_A_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_we0_local = 1'b1;
    end else begin
        buff_A_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_x1_ce0_local = 1'b1;
    end else begin
        buff_x1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (first_iter_0_reg_373 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_x1_we0_local = 1'b1;
    end else begin
        buff_x1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_x2_ce0_local = 1'b1;
    end else begin
        buff_x2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (first_iter_0_reg_373 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_x2_we0_local = 1'b1;
    end else begin
        buff_x2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_y1_ce0_local = 1'b1;
    end else begin
        buff_y1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (first_iter_0_reg_373 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_y1_we0_local = 1'b1;
    end else begin
        buff_y1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_y2_ce0_local = 1'b1;
    end else begin
        buff_y2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (first_iter_0_reg_373 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_y2_we0_local = 1'b1;
    end else begin
        buff_y2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x1_ce0_local = 1'b1;
    end else begin
        x1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x2_ce0_local = 1'b1;
    end else begin
        x2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        y1_ce0_local = 1'b1;
    end else begin
        y1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (first_iter_0_reg_373 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        y2_blk_n = y2_empty_n;
    end else begin
        y2_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (first_iter_0_reg_373 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        y2_read_local = 1'b1;
    end else begin
        y2_read_local = 1'b0;
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
assign A_address0 = zext_ln19_1_fu_339_p1;
assign A_ce0 = A_ce0_local;
assign add_ln13_1_fu_219_p2 = (ap_sig_allocacmp_indvar_flatten_load + 13'd1);
assign add_ln13_fu_236_p2 = (i_fu_68 + 7'd1);
assign add_ln18_fu_303_p2 = (select_ln6_fu_248_p3 + 7'd1);
assign add_ln19_fu_297_p2 = (tmp_fu_285_p3 + zext_ln19_fu_293_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_block_state3_pp0_stage0_iter2));
end
always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_block_state3_pp0_stage0_iter2));
end
always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = ((first_iter_0_reg_373 == 1'd1) & (y2_empty_n == 1'b0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln14_fu_319_p1 = x1_q0;
assign bitcast_ln15_fu_324_p1 = x2_q0;
assign bitcast_ln16_fu_329_p1 = y1_q0;
assign bitcast_ln17_fu_334_p1 = y2_dout;
assign bitcast_ln19_fu_343_p1 = A_q0;
assign buff_A_address0 = zext_ln19_1_reg_417;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_A_d0 = bitcast_ln19_fu_343_p1;
assign buff_A_we0 = buff_A_we0_local;
assign buff_x1_address0 = buff_x1_addr_reg_382;
assign buff_x1_ce0 = buff_x1_ce0_local;
assign buff_x1_d0 = bitcast_ln14_fu_319_p1;
assign buff_x1_we0 = buff_x1_we0_local;
assign buff_x2_address0 = buff_x2_addr_reg_392;
assign buff_x2_ce0 = buff_x2_ce0_local;
assign buff_x2_d0 = bitcast_ln15_fu_324_p1;
assign buff_x2_we0 = buff_x2_we0_local;
assign buff_y1_address0 = buff_y1_addr_reg_402;
assign buff_y1_ce0 = buff_y1_ce0_local;
assign buff_y1_d0 = bitcast_ln16_fu_329_p1;
assign buff_y1_we0 = buff_y1_we0_local;
assign buff_y2_address0 = buff_y2_addr_reg_407;
assign buff_y2_ce0 = buff_y2_ce0_local;
assign buff_y2_d0 = bitcast_ln17_fu_334_p1;
assign buff_y2_we0 = buff_y2_we0_local;
assign empty_fu_264_p1 = select_ln13_fu_256_p3[5:0];
assign first_iter_0_fu_268_p2 = ((select_ln6_fu_248_p3 == 7'd0) ? 1'b1 : 1'b0);
assign icmp_ln13_fu_213_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 13'd4096) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_242_p2 = ((j_fu_64 == 7'd64) ? 1'b1 : 1'b0);
assign select_ln13_fu_256_p3 = ((icmp_ln18_fu_242_p2[0:0] == 1'b1) ? add_ln13_fu_236_p2 : i_fu_68);
assign select_ln6_fu_248_p3 = ((icmp_ln18_fu_242_p2[0:0] == 1'b1) ? 7'd0 : j_fu_64);
assign tmp_fu_285_p3 = {{empty_fu_264_p1}, {6'd0}};
assign x1_address0 = zext_ln13_fu_274_p1;
assign x1_ce0 = x1_ce0_local;
assign x2_address0 = zext_ln13_fu_274_p1;
assign x2_ce0 = x2_ce0_local;
assign y1_address0 = zext_ln13_fu_274_p1;
assign y1_ce0 = y1_ce0_local;
assign y2_read = y2_read_local;
assign zext_ln13_fu_274_p1 = select_ln13_fu_256_p3;
assign zext_ln19_1_fu_339_p1 = add_ln19_reg_412;
assign zext_ln19_fu_293_p1 = select_ln6_fu_248_p3;
always @ (posedge ap_clk) begin
    zext_ln19_1_reg_417[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
end
endmodule 