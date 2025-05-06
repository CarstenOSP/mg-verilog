
module syrk_syrk_Pipeline_lpwr_1_lpwr_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,C_out_din,C_out_full_n,C_out_write,buff_C_out_address0,buff_C_out_ce0,buff_C_out_q0,buff_C_out_1_address0,buff_C_out_1_ce0,buff_C_out_1_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] C_out_din;
input   C_out_full_n;
output   C_out_write;
output  [10:0] buff_C_out_address0;
output   buff_C_out_ce0;
input  [31:0] buff_C_out_q0;
output  [10:0] buff_C_out_1_address0;
output   buff_C_out_1_ce0;
input  [31:0] buff_C_out_1_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
reg   [0:0] icmp_ln40_reg_270;
reg   [0:0] icmp_ln40_reg_270_pp0_iter2_reg;
reg    ap_block_state4_pp0_stage0_iter3;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln38_fu_114_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    C_out_blk_n;
wire    ap_block_pp0_stage0;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] trunc_ln39_1_fu_169_p1;
reg   [0:0] trunc_ln39_1_reg_255;
wire   [0:0] icmp_ln40_fu_197_p2;
wire   [31:0] select_ln41_fu_219_p3;
reg   [31:0] select_ln41_reg_274;
wire   [63:0] zext_ln41_fu_191_p1;
reg   [6:0] j_fu_50;
wire   [6:0] add_ln39_fu_203_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_54;
wire   [6:0] select_ln38_fu_157_p3;
reg   [12:0] indvar_flatten35_fu_58;
wire   [12:0] add_ln38_1_fu_120_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten35_load;
wire   [31:0] bitcast_ln41_fu_226_p1;
reg   [31:0] C_out_din_local;
reg    ap_block_pp0_stage0_01001;
reg    C_out_write_local;
reg    buff_C_out_ce0_local;
reg    buff_C_out_1_ce0_local;
wire   [0:0] icmp_ln39_fu_143_p2;
wire   [6:0] add_ln38_fu_137_p2;
wire   [6:0] select_ln5_fu_149_p3;
wire   [5:0] trunc_ln39_fu_165_p1;
wire   [4:0] lshr_ln5_4_fu_173_p4;
wire   [10:0] tmp_s_fu_183_p3;
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
#0 j_fu_50 = 7'd0;
#0 i_fu_54 = 7'd0;
#0 indvar_flatten35_fu_58 = 13'd0;
#0 ap_done_reg = 1'b0;
end
syrk_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
            i_fu_54 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_54 <= select_ln38_fu_157_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln38_fu_114_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten35_fu_58 <= add_ln38_1_fu_120_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten35_fu_58 <= 13'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_50 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_50 <= add_ln39_fu_203_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln40_reg_270 <= icmp_ln40_fu_197_p2;
        trunc_ln39_1_reg_255 <= trunc_ln39_1_fu_169_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        icmp_ln40_reg_270_pp0_iter2_reg <= icmp_ln40_reg_270;
        select_ln41_reg_274 <= select_ln41_fu_219_p3;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (icmp_ln40_reg_270_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0) & (icmp_ln40_reg_270_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1)))) begin
        C_out_blk_n = C_out_full_n;
    end else begin
        C_out_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((icmp_ln40_reg_270_pp0_iter2_reg == 1'd1)) begin
            C_out_din_local = 32'd0;
        end else if ((icmp_ln40_reg_270_pp0_iter2_reg == 1'd0)) begin
            C_out_din_local = bitcast_ln41_fu_226_p1;
        end else begin
            C_out_din_local = 'bx;
        end
    end else begin
        C_out_din_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln40_reg_270_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln40_reg_270_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1)))) begin
        C_out_write_local = 1'b1;
    end else begin
        C_out_write_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln38_fu_114_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_indvar_flatten35_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten35_load = indvar_flatten35_fu_58;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_1_ce0_local = 1'b1;
    end else begin
        buff_C_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_ce0_local = 1'b1;
    end else begin
        buff_C_out_ce0_local = 1'b0;
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
assign C_out_din = C_out_din_local;
assign C_out_write = C_out_write_local;
assign add_ln38_1_fu_120_p2 = (ap_sig_allocacmp_indvar_flatten35_load + 13'd1);
assign add_ln38_fu_137_p2 = (i_fu_54 + 7'd1);
assign add_ln39_fu_203_p2 = (select_ln5_fu_149_p3 + 7'd1);
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
    ap_block_state4_pp0_stage0_iter3 = (((icmp_ln40_reg_270_pp0_iter2_reg == 1'd1) & (1'b0 == C_out_full_n)) | ((icmp_ln40_reg_270_pp0_iter2_reg == 1'd0) & (1'b0 == C_out_full_n)));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln41_fu_226_p1 = select_ln41_reg_274;
assign buff_C_out_1_address0 = zext_ln41_fu_191_p1;
assign buff_C_out_1_ce0 = buff_C_out_1_ce0_local;
assign buff_C_out_address0 = zext_ln41_fu_191_p1;
assign buff_C_out_ce0 = buff_C_out_ce0_local;
assign icmp_ln38_fu_114_p2 = ((ap_sig_allocacmp_indvar_flatten35_load == 13'd4096) ? 1'b1 : 1'b0);
assign icmp_ln39_fu_143_p2 = ((j_fu_50 == 7'd64) ? 1'b1 : 1'b0);
assign icmp_ln40_fu_197_p2 = ((select_ln5_fu_149_p3 > select_ln38_fu_157_p3) ? 1'b1 : 1'b0);
assign lshr_ln5_4_fu_173_p4 = {{select_ln5_fu_149_p3[5:1]}};
assign select_ln38_fu_157_p3 = ((icmp_ln39_fu_143_p2[0:0] == 1'b1) ? add_ln38_fu_137_p2 : i_fu_54);
assign select_ln41_fu_219_p3 = ((trunc_ln39_1_reg_255[0:0] == 1'b1) ? buff_C_out_1_q0 : buff_C_out_q0);
assign select_ln5_fu_149_p3 = ((icmp_ln39_fu_143_p2[0:0] == 1'b1) ? 7'd0 : j_fu_50);
assign tmp_s_fu_183_p3 = {{trunc_ln39_fu_165_p1}, {lshr_ln5_4_fu_173_p4}};
assign trunc_ln39_1_fu_169_p1 = select_ln5_fu_149_p3[0:0];
assign trunc_ln39_fu_165_p1 = select_ln38_fu_157_p3[5:0];
assign zext_ln41_fu_191_p1 = tmp_s_fu_183_p3;
endmodule 
