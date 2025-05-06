
module forward_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_198_1_proc67 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v9039_3_address0,v9039_3_ce0,v9039_3_we0,v9039_3_d0,v9039_2_address0,v9039_2_ce0,v9039_2_we0,v9039_2_d0,v9039_1_address0,v9039_1_ce0,v9039_1_we0,v9039_1_d0,v9039_0_address0,v9039_0_ce0,v9039_0_we0,v9039_0_d0,v239_3_i_address0,v239_3_i_ce0,v239_3_i_q0,p_read,v239_2_i_address0,v239_2_i_ce0,v239_2_i_q0,v239_1_i_address0,v239_1_i_ce0,v239_1_i_q0,v239_i_address0,v239_i_ce0,v239_i_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [9:0] v9039_3_address0;
output   v9039_3_ce0;
output   v9039_3_we0;
output  [7:0] v9039_3_d0;
output  [9:0] v9039_2_address0;
output   v9039_2_ce0;
output   v9039_2_we0;
output  [7:0] v9039_2_d0;
output  [9:0] v9039_1_address0;
output   v9039_1_ce0;
output   v9039_1_we0;
output  [7:0] v9039_1_d0;
output  [9:0] v9039_0_address0;
output   v9039_0_ce0;
output   v9039_0_we0;
output  [7:0] v9039_0_d0;
output  [2:0] v239_3_i_address0;
output   v239_3_i_ce0;
input  [6:0] v239_3_i_q0;
input  [14:0] p_read;
output  [2:0] v239_2_i_address0;
output   v239_2_i_ce0;
input  [6:0] v239_2_i_q0;
output  [2:0] v239_1_i_address0;
output   v239_1_i_ce0;
input  [6:0] v239_1_i_q0;
output  [2:0] v239_i_address0;
output   v239_i_ce0;
input  [6:0] v239_i_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_246_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [11:0] rem_i_fu_198_p3;
reg   [11:0] rem_i_reg_324;
reg    ap_block_pp0_stage0_11001;
wire   [9:0] shl_ln_fu_206_p3;
reg   [9:0] shl_ln_reg_329;
reg   [5:0] v7545_load_reg_334;
wire   [3:0] lshr_ln_fu_222_p4;
reg   [3:0] lshr_ln_reg_339;
wire   [63:0] zext_ln198_2_fu_232_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln201_fu_275_p1;
wire   [63:0] zext_ln203_fu_295_p1;
reg   [5:0] v7545_fu_80;
wire   [5:0] v75_fu_240_p2;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_v7545_load;
reg    v239_3_i_ce0_local;
reg    v239_2_i_ce0_local;
reg    v239_1_i_ce0_local;
reg    v239_i_ce0_local;
reg    v9039_0_we0_local;
wire   [7:0] v93_3_load_cast_i_i_fu_280_p1;
reg    v9039_0_ce0_local;
reg    v9039_1_we0_local;
wire   [7:0] v93_2_load_cast_i_i_fu_302_p1;
reg    v9039_1_ce0_local;
reg    v9039_2_we0_local;
wire   [7:0] v93_1_load_cast_i_i_fu_307_p1;
reg    v9039_2_ce0_local;
reg    v9039_3_we0_local;
wire   [7:0] v93_load_cast_i_i_fu_312_p1;
reg    v9039_3_ce0_local;
wire   [6:0] empty_fu_194_p1;
wire   [11:0] zext_ln198_fu_259_p1;
wire   [9:0] zext_ln198_1_fu_262_p1;
wire   [9:0] add_ln201_1_fu_270_p2;
wire   [11:0] add_ln201_fu_265_p2;
wire   [9:0] lshr_ln9_fu_285_p4;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_146;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 v7545_fu_80 = 6'd0;
end
forward_flow_control_loop_pipe flow_control_loop_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(ap_continue));
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if (((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
            ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_146)) begin
        v7545_fu_80 <= v75_fu_240_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln_reg_339 <= {{ap_sig_allocacmp_v7545_load[5:2]}};
        rem_i_reg_324[11 : 5] <= rem_i_fu_198_p3[11 : 5];
        shl_ln_reg_329[9 : 3] <= shl_ln_fu_206_p3[9 : 3];
        v7545_load_reg_334 <= ap_sig_allocacmp_v7545_load;
    end
end
always @ (*) begin
    if (((tmp_fu_246_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v7545_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v7545_load = v7545_fu_80;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v239_1_i_ce0_local = 1'b1;
    end else begin
        v239_1_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v239_2_i_ce0_local = 1'b1;
    end else begin
        v239_2_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v239_3_i_ce0_local = 1'b1;
    end else begin
        v239_3_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v239_i_ce0_local = 1'b1;
    end else begin
        v239_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9039_0_ce0_local = 1'b1;
    end else begin
        v9039_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9039_0_we0_local = 1'b1;
    end else begin
        v9039_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9039_1_ce0_local = 1'b1;
    end else begin
        v9039_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9039_1_we0_local = 1'b1;
    end else begin
        v9039_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9039_2_ce0_local = 1'b1;
    end else begin
        v9039_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9039_2_we0_local = 1'b1;
    end else begin
        v9039_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9039_3_ce0_local = 1'b1;
    end else begin
        v9039_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9039_3_we0_local = 1'b1;
    end else begin
        v9039_3_we0_local = 1'b0;
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
assign add_ln201_1_fu_270_p2 = (shl_ln_reg_329 + zext_ln198_1_fu_262_p1);
assign add_ln201_fu_265_p2 = (rem_i_reg_324 + zext_ln198_fu_259_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end
always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_done_reg == 1'b1);
end
always @ (*) begin
    ap_condition_146 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_194_p1 = p_read[6:0];
assign lshr_ln9_fu_285_p4 = {{add_ln201_fu_265_p2[11:2]}};
assign lshr_ln_fu_222_p4 = {{ap_sig_allocacmp_v7545_load[5:2]}};
assign rem_i_fu_198_p3 = {{empty_fu_194_p1}, {5'd0}};
assign shl_ln_fu_206_p3 = {{empty_fu_194_p1}, {3'd0}};
assign tmp_fu_246_p3 = v75_fu_240_p2[32'd5];
assign v239_1_i_address0 = zext_ln198_2_fu_232_p1;
assign v239_1_i_ce0 = v239_1_i_ce0_local;
assign v239_2_i_address0 = zext_ln198_2_fu_232_p1;
assign v239_2_i_ce0 = v239_2_i_ce0_local;
assign v239_3_i_address0 = zext_ln198_2_fu_232_p1;
assign v239_3_i_ce0 = v239_3_i_ce0_local;
assign v239_i_address0 = zext_ln198_2_fu_232_p1;
assign v239_i_ce0 = v239_i_ce0_local;
assign v75_fu_240_p2 = (ap_sig_allocacmp_v7545_load + 6'd4);
assign v9039_0_address0 = zext_ln201_fu_275_p1;
assign v9039_0_ce0 = v9039_0_ce0_local;
assign v9039_0_d0 = v93_3_load_cast_i_i_fu_280_p1;
assign v9039_0_we0 = v9039_0_we0_local;
assign v9039_1_address0 = zext_ln203_fu_295_p1;
assign v9039_1_ce0 = v9039_1_ce0_local;
assign v9039_1_d0 = v93_2_load_cast_i_i_fu_302_p1;
assign v9039_1_we0 = v9039_1_we0_local;
assign v9039_2_address0 = zext_ln203_fu_295_p1;
assign v9039_2_ce0 = v9039_2_ce0_local;
assign v9039_2_d0 = v93_1_load_cast_i_i_fu_307_p1;
assign v9039_2_we0 = v9039_2_we0_local;
assign v9039_3_address0 = zext_ln203_fu_295_p1;
assign v9039_3_ce0 = v9039_3_ce0_local;
assign v9039_3_d0 = v93_load_cast_i_i_fu_312_p1;
assign v9039_3_we0 = v9039_3_we0_local;
assign v93_1_load_cast_i_i_fu_307_p1 = v239_1_i_q0;
assign v93_2_load_cast_i_i_fu_302_p1 = v239_2_i_q0;
assign v93_3_load_cast_i_i_fu_280_p1 = v239_3_i_q0;
assign v93_load_cast_i_i_fu_312_p1 = v239_i_q0;
assign zext_ln198_1_fu_262_p1 = lshr_ln_reg_339;
assign zext_ln198_2_fu_232_p1 = lshr_ln_fu_222_p4;
assign zext_ln198_fu_259_p1 = v7545_load_reg_334;
assign zext_ln201_fu_275_p1 = add_ln201_1_fu_270_p2;
assign zext_ln203_fu_295_p1 = lshr_ln9_fu_285_p4;
always @ (posedge ap_clk) begin
    rem_i_reg_324[4:0] <= 5'b00000;
    shl_ln_reg_329[2:0] <= 3'b000;
end
endmodule 
