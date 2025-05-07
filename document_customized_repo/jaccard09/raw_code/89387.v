module syr2k_syr2k_Pipeline_lpwr_1_lpwr_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,D_out_0_din,D_out_0_full_n,D_out_0_write,D_out_1_din,D_out_1_full_n,D_out_1_write,buff_D_out_address0,buff_D_out_ce0,buff_D_out_q0,buff_D_out_1_address0,buff_D_out_1_ce0,buff_D_out_1_q0,buff_D_out_2_address0,buff_D_out_2_ce0,buff_D_out_2_q0,buff_D_out_3_address0,buff_D_out_3_ce0,buff_D_out_3_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] D_out_0_din;
input   D_out_0_full_n;
output   D_out_0_write;
output  [31:0] D_out_1_din;
input   D_out_1_full_n;
output   D_out_1_write;
output  [9:0] buff_D_out_address0;
output   buff_D_out_ce0;
input  [31:0] buff_D_out_q0;
output  [9:0] buff_D_out_1_address0;
output   buff_D_out_1_ce0;
input  [31:0] buff_D_out_1_q0;
output  [9:0] buff_D_out_2_address0;
output   buff_D_out_2_ce0;
input  [31:0] buff_D_out_2_q0;
output  [9:0] buff_D_out_3_address0;
output   buff_D_out_3_ce0;
input  [31:0] buff_D_out_3_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
reg   [0:0] icmp_ln54_reg_368;
reg   [0:0] icmp_ln54_reg_368_pp0_iter2_reg;
reg   [0:0] icmp_ln54_1_reg_372;
reg   [0:0] icmp_ln54_1_reg_372_pp0_iter2_reg;
reg    ap_block_state4_pp0_stage0_iter3;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln52_fu_162_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    D_out_1_blk_n;
wire    ap_block_pp0_stage0;
reg    D_out_0_blk_n;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] trunc_ln52_fu_215_p1;
reg   [0:0] trunc_ln52_reg_342;
wire   [0:0] icmp_ln54_fu_255_p2;
wire   [0:0] icmp_ln54_1_fu_273_p2;
wire   [31:0] select_ln55_fu_295_p3;
reg   [31:0] select_ln55_reg_376;
wire   [31:0] select_ln55_1_fu_302_p3;
reg   [31:0] select_ln55_1_reg_381;
wire   [63:0] zext_ln55_fu_247_p1;
reg   [6:0] j_fu_64;
wire   [6:0] add_ln53_fu_279_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_68;
wire   [6:0] select_ln52_fu_207_p3;
reg   [11:0] indvar_flatten35_fu_72;
wire   [11:0] add_ln52_1_fu_168_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten35_load;
wire   [31:0] bitcast_ln55_fu_309_p1;
reg   [31:0] D_out_0_din_local;
reg    ap_block_pp0_stage0_01001;
reg    D_out_0_write_local;
wire   [31:0] bitcast_ln55_1_fu_313_p1;
reg   [31:0] D_out_1_din_local;
reg    D_out_1_write_local;
reg    buff_D_out_ce0_local;
reg    buff_D_out_1_ce0_local;
reg    buff_D_out_2_ce0_local;
reg    buff_D_out_3_ce0_local;
wire   [0:0] tmp_fu_191_p3;
wire   [6:0] add_ln52_fu_185_p2;
wire   [6:0] select_ln5_fu_199_p3;
wire   [4:0] tmp_s_fu_229_p4;
wire   [4:0] lshr_ln5_9_fu_219_p4;
wire   [9:0] tmp_1_fu_239_p3;
wire   [5:0] or_ln_fu_261_p3;
wire   [6:0] zext_ln54_fu_269_p1;
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
#0 indvar_flatten35_fu_72 = 12'd0;
#0 ap_done_reg = 1'b0;
end
syr2k_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
            i_fu_68 <= select_ln52_fu_207_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln52_fu_162_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten35_fu_72 <= add_ln52_1_fu_168_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten35_fu_72 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_64 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_64 <= add_ln53_fu_279_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln54_1_reg_372 <= icmp_ln54_1_fu_273_p2;
        icmp_ln54_reg_368 <= icmp_ln54_fu_255_p2;
        trunc_ln52_reg_342 <= trunc_ln52_fu_215_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        icmp_ln54_1_reg_372_pp0_iter2_reg <= icmp_ln54_1_reg_372;
        icmp_ln54_reg_368_pp0_iter2_reg <= icmp_ln54_reg_368;
        select_ln55_1_reg_381 <= select_ln55_1_fu_302_p3;
        select_ln55_reg_376 <= select_ln55_fu_295_p3;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (icmp_ln54_reg_368_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0) & (icmp_ln54_reg_368_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1)))) begin
        D_out_0_blk_n = D_out_0_full_n;
    end else begin
        D_out_0_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((icmp_ln54_reg_368_pp0_iter2_reg == 1'd1)) begin
            D_out_0_din_local = 32'd0;
        end else if ((icmp_ln54_reg_368_pp0_iter2_reg == 1'd0)) begin
            D_out_0_din_local = bitcast_ln55_fu_309_p1;
        end else begin
            D_out_0_din_local = 'bx;
        end
    end else begin
        D_out_0_din_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln54_reg_368_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln54_reg_368_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1)))) begin
        D_out_0_write_local = 1'b1;
    end else begin
        D_out_0_write_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (icmp_ln54_1_reg_372_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0) & (icmp_ln54_1_reg_372_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1)))) begin
        D_out_1_blk_n = D_out_1_full_n;
    end else begin
        D_out_1_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((icmp_ln54_1_reg_372_pp0_iter2_reg == 1'd1)) begin
            D_out_1_din_local = 32'd0;
        end else if ((icmp_ln54_1_reg_372_pp0_iter2_reg == 1'd0)) begin
            D_out_1_din_local = bitcast_ln55_1_fu_313_p1;
        end else begin
            D_out_1_din_local = 'bx;
        end
    end else begin
        D_out_1_din_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln54_1_reg_372_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln54_1_reg_372_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1)))) begin
        D_out_1_write_local = 1'b1;
    end else begin
        D_out_1_write_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln52_fu_162_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_indvar_flatten35_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten35_load = indvar_flatten35_fu_72;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_out_1_ce0_local = 1'b1;
    end else begin
        buff_D_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_out_2_ce0_local = 1'b1;
    end else begin
        buff_D_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_out_3_ce0_local = 1'b1;
    end else begin
        buff_D_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_out_ce0_local = 1'b1;
    end else begin
        buff_D_out_ce0_local = 1'b0;
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
assign D_out_0_din = D_out_0_din_local;
assign D_out_0_write = D_out_0_write_local;
assign D_out_1_din = D_out_1_din_local;
assign D_out_1_write = D_out_1_write_local;
assign add_ln52_1_fu_168_p2 = (ap_sig_allocacmp_indvar_flatten35_load + 12'd1);
assign add_ln52_fu_185_p2 = (i_fu_68 + 7'd1);
assign add_ln53_fu_279_p2 = (select_ln5_fu_199_p3 + 7'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_block_state4_pp0_stage0_iter3));
end
always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_block_state4_pp0_stage0_iter3));
end
always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_block_state4_pp0_stage0_iter3));
end
always @ (*) begin
    ap_block_state4_pp0_stage0_iter3 = (((icmp_ln54_1_reg_372_pp0_iter2_reg == 1'd1) & (1'b0 == D_out_1_full_n)) | ((icmp_ln54_1_reg_372_pp0_iter2_reg == 1'd0) & (1'b0 == D_out_1_full_n)) | ((icmp_ln54_reg_368_pp0_iter2_reg == 1'd1) & (1'b0 == D_out_0_full_n)) | ((icmp_ln54_reg_368_pp0_iter2_reg == 1'd0) & (1'b0 == D_out_0_full_n)));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln55_1_fu_313_p1 = select_ln55_1_reg_381;
assign bitcast_ln55_fu_309_p1 = select_ln55_reg_376;
assign buff_D_out_1_address0 = zext_ln55_fu_247_p1;
assign buff_D_out_1_ce0 = buff_D_out_1_ce0_local;
assign buff_D_out_2_address0 = zext_ln55_fu_247_p1;
assign buff_D_out_2_ce0 = buff_D_out_2_ce0_local;
assign buff_D_out_3_address0 = zext_ln55_fu_247_p1;
assign buff_D_out_3_ce0 = buff_D_out_3_ce0_local;
assign buff_D_out_address0 = zext_ln55_fu_247_p1;
assign buff_D_out_ce0 = buff_D_out_ce0_local;
assign icmp_ln52_fu_162_p2 = ((ap_sig_allocacmp_indvar_flatten35_load == 12'd2048) ? 1'b1 : 1'b0);
assign icmp_ln54_1_fu_273_p2 = ((zext_ln54_fu_269_p1 > select_ln52_fu_207_p3) ? 1'b1 : 1'b0);
assign icmp_ln54_fu_255_p2 = ((select_ln5_fu_199_p3 > select_ln52_fu_207_p3) ? 1'b1 : 1'b0);
assign lshr_ln5_9_fu_219_p4 = {{select_ln5_fu_199_p3[5:1]}};
assign or_ln_fu_261_p3 = {{lshr_ln5_9_fu_219_p4}, {1'd1}};
assign select_ln52_fu_207_p3 = ((tmp_fu_191_p3[0:0] == 1'b1) ? add_ln52_fu_185_p2 : i_fu_68);
assign select_ln55_1_fu_302_p3 = ((trunc_ln52_reg_342[0:0] == 1'b1) ? buff_D_out_3_q0 : buff_D_out_2_q0);
assign select_ln55_fu_295_p3 = ((trunc_ln52_reg_342[0:0] == 1'b1) ? buff_D_out_1_q0 : buff_D_out_q0);
assign select_ln5_fu_199_p3 = ((tmp_fu_191_p3[0:0] == 1'b1) ? 7'd0 : j_fu_64);
assign tmp_1_fu_239_p3 = {{tmp_s_fu_229_p4}, {lshr_ln5_9_fu_219_p4}};
assign tmp_fu_191_p3 = j_fu_64[32'd6];
assign tmp_s_fu_229_p4 = {{select_ln52_fu_207_p3[5:1]}};
assign trunc_ln52_fu_215_p1 = select_ln52_fu_207_p3[0:0];
assign zext_ln54_fu_269_p1 = or_ln_fu_261_p3;
assign zext_ln55_fu_247_p1 = tmp_1_fu_239_p3;
endmodule 