module forward_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_418_1_proc63 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v241_address0,v241_ce0,v241_we0,v241_d0,v241_1_address0,v241_1_ce0,v241_1_we0,v241_1_d0,v241_2_address0,v241_2_ce0,v241_2_we0,v241_2_d0,v241_3_address0,v241_3_ce0,v241_3_we0,v241_3_d0,v236,v9042_0_address0,v9042_0_ce0,v9042_0_q0,v9042_1_address0,v9042_1_ce0,v9042_1_q0,v9042_2_address0,v9042_2_ce0,v9042_2_q0,v9042_3_address0,v9042_3_ce0,v9042_3_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [2:0] v241_address0;
output   v241_ce0;
output   v241_we0;
output  [7:0] v241_d0;
output  [2:0] v241_1_address0;
output   v241_1_ce0;
output   v241_1_we0;
output  [7:0] v241_1_d0;
output  [2:0] v241_2_address0;
output   v241_2_ce0;
output   v241_2_we0;
output  [7:0] v241_2_d0;
output  [2:0] v241_3_address0;
output   v241_3_ce0;
output   v241_3_we0;
output  [7:0] v241_3_d0;
input  [6:0] v236;
output  [9:0] v9042_0_address0;
output   v9042_0_ce0;
input  [7:0] v9042_0_q0;
output  [9:0] v9042_1_address0;
output   v9042_1_ce0;
input  [7:0] v9042_1_q0;
output  [9:0] v9042_2_address0;
output   v9042_2_ce0;
input  [7:0] v9042_2_q0;
output  [9:0] v9042_3_address0;
output   v9042_3_ce0;
input  [7:0] v9042_3_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_280_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [3:0] lshr_ln_i_fu_226_p4;
reg   [3:0] lshr_ln_i_reg_307;
reg    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln421_fu_252_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln423_fu_267_p1;
wire   [63:0] zext_ln418_2_fu_293_p1;
reg   [5:0] v20345_i_fu_80;
wire   [5:0] add_ln418_fu_274_p2;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_v20345_i_load;
reg    v9042_0_ce0_local;
reg    v9042_1_ce0_local;
reg    v9042_2_ce0_local;
reg    v9042_3_ce0_local;
reg    v241_3_we0_local;
reg    v241_3_ce0_local;
reg    v241_2_we0_local;
reg    v241_2_ce0_local;
reg    v241_1_we0_local;
reg    v241_1_ce0_local;
reg    v241_we0_local;
reg    v241_ce0_local;
wire   [11:0] rem_i_i_fu_198_p3;
wire   [11:0] zext_ln418_fu_222_p1;
wire   [9:0] shl_ln_i_fu_206_p3;
wire   [9:0] zext_ln418_1_fu_236_p1;
wire   [9:0] add_ln420_1_fu_246_p2;
wire   [11:0] add_ln420_fu_240_p2;
wire   [9:0] lshr_ln19_i_fu_257_p4;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_140;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 v20345_i_fu_80 = 6'd0;
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
    if ((1'b1 == ap_condition_140)) begin
        v20345_i_fu_80 <= add_ln418_fu_274_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln_i_reg_307 <= {{ap_sig_allocacmp_v20345_i_load[5:2]}};
    end
end
always @ (*) begin
    if (((tmp_fu_280_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_v20345_i_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v20345_i_load = v20345_i_fu_80;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v241_1_ce0_local = 1'b1;
    end else begin
        v241_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v241_1_we0_local = 1'b1;
    end else begin
        v241_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v241_2_ce0_local = 1'b1;
    end else begin
        v241_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v241_2_we0_local = 1'b1;
    end else begin
        v241_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v241_3_ce0_local = 1'b1;
    end else begin
        v241_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v241_3_we0_local = 1'b1;
    end else begin
        v241_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v241_ce0_local = 1'b1;
    end else begin
        v241_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v241_we0_local = 1'b1;
    end else begin
        v241_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9042_0_ce0_local = 1'b1;
    end else begin
        v9042_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9042_1_ce0_local = 1'b1;
    end else begin
        v9042_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9042_2_ce0_local = 1'b1;
    end else begin
        v9042_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9042_3_ce0_local = 1'b1;
    end else begin
        v9042_3_ce0_local = 1'b0;
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
assign add_ln418_fu_274_p2 = (ap_sig_allocacmp_v20345_i_load + 6'd4);
assign add_ln420_1_fu_246_p2 = (shl_ln_i_fu_206_p3 + zext_ln418_1_fu_236_p1);
assign add_ln420_fu_240_p2 = (rem_i_i_fu_198_p3 + zext_ln418_fu_222_p1);
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
    ap_condition_140 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign lshr_ln19_i_fu_257_p4 = {{add_ln420_fu_240_p2[11:2]}};
assign lshr_ln_i_fu_226_p4 = {{ap_sig_allocacmp_v20345_i_load[5:2]}};
assign rem_i_i_fu_198_p3 = {{v236}, {5'd0}};
assign shl_ln_i_fu_206_p3 = {{v236}, {3'd0}};
assign tmp_fu_280_p3 = add_ln418_fu_274_p2[32'd5];
assign v241_1_address0 = zext_ln418_2_fu_293_p1;
assign v241_1_ce0 = v241_1_ce0_local;
assign v241_1_d0 = v9042_2_q0;
assign v241_1_we0 = v241_1_we0_local;
assign v241_2_address0 = zext_ln418_2_fu_293_p1;
assign v241_2_ce0 = v241_2_ce0_local;
assign v241_2_d0 = v9042_1_q0;
assign v241_2_we0 = v241_2_we0_local;
assign v241_3_address0 = zext_ln418_2_fu_293_p1;
assign v241_3_ce0 = v241_3_ce0_local;
assign v241_3_d0 = v9042_0_q0;
assign v241_3_we0 = v241_3_we0_local;
assign v241_address0 = zext_ln418_2_fu_293_p1;
assign v241_ce0 = v241_ce0_local;
assign v241_d0 = v9042_3_q0;
assign v241_we0 = v241_we0_local;
assign v9042_0_address0 = zext_ln421_fu_252_p1;
assign v9042_0_ce0 = v9042_0_ce0_local;
assign v9042_1_address0 = zext_ln423_fu_267_p1;
assign v9042_1_ce0 = v9042_1_ce0_local;
assign v9042_2_address0 = zext_ln423_fu_267_p1;
assign v9042_2_ce0 = v9042_2_ce0_local;
assign v9042_3_address0 = zext_ln423_fu_267_p1;
assign v9042_3_ce0 = v9042_3_ce0_local;
assign zext_ln418_1_fu_236_p1 = lshr_ln_i_fu_226_p4;
assign zext_ln418_2_fu_293_p1 = lshr_ln_i_reg_307;
assign zext_ln418_fu_222_p1 = ap_sig_allocacmp_v20345_i_load;
assign zext_ln421_fu_252_p1 = add_ln420_1_fu_246_p2;
assign zext_ln423_fu_267_p1 = lshr_ln19_i_fu_257_p4;
endmodule 