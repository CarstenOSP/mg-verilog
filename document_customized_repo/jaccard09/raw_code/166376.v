module forward_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v13742_1_address0,v13742_1_ce0,v13742_1_we0,v13742_1_d0,v13742_0_address0,v13742_0_ce0,v13742_0_we0,v13742_0_d0,v175_1_i_address0,v175_1_i_ce0,v175_1_i_q0,p_read,v175_i_address0,v175_i_ce0,v175_i_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [10:0] v13742_1_address0;
output   v13742_1_ce0;
output   v13742_1_we0;
output  [7:0] v13742_1_d0;
output  [10:0] v13742_0_address0;
output   v13742_0_ce0;
output   v13742_0_we0;
output  [7:0] v13742_0_d0;
output  [3:0] v175_1_i_address0;
output   v175_1_i_ce0;
input  [6:0] v175_1_i_q0;
input  [10:0] p_read;
output  [3:0] v175_i_address0;
output   v175_i_ce0;
input  [6:0] v175_i_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_178_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [11:0] rem_i_fu_134_p3;
reg   [11:0] rem_i_reg_244;
reg    ap_block_pp0_stage0_11001;
wire   [10:0] shl_ln436_fu_142_p2;
reg   [10:0] shl_ln436_reg_249;
reg   [5:0] v9421_load_reg_254;
wire   [4:0] lshr_ln_fu_156_p4;
reg   [4:0] lshr_ln_reg_259;
wire   [63:0] zext_ln278_2_fu_166_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln281_fu_207_p1;
wire   [63:0] zext_ln283_fu_227_p1;
reg   [5:0] v9421_fu_68;
wire   [5:0] v94_fu_172_p2;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_v9421_load;
reg    v175_1_i_ce0_local;
reg    v175_i_ce0_local;
reg    v13742_0_we0_local;
wire   [7:0] v175_1_load_cast_i_i_fu_212_p1;
reg    v13742_0_ce0_local;
reg    v13742_1_we0_local;
wire   [7:0] v175_load_cast_i_i_fu_232_p1;
reg    v13742_1_ce0_local;
wire   [6:0] empty_fu_130_p1;
wire   [11:0] zext_ln278_fu_191_p1;
wire   [10:0] zext_ln278_1_fu_194_p1;
wire   [10:0] add_ln281_1_fu_202_p2;
wire   [11:0] add_ln281_fu_197_p2;
wire   [10:0] lshr_ln23_fu_217_p4;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_114;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 v9421_fu_68 = 6'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
    if ((1'b1 == ap_condition_114)) begin
        v9421_fu_68 <= v94_fu_172_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln_reg_259 <= {{ap_sig_allocacmp_v9421_load[5:1]}};
        rem_i_reg_244[11 : 5] <= rem_i_fu_134_p3[11 : 5];
        shl_ln436_reg_249[10 : 4] <= shl_ln436_fu_142_p2[10 : 4];
        v9421_load_reg_254 <= ap_sig_allocacmp_v9421_load;
    end
end
always @ (*) begin
    if (((tmp_fu_178_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
        ap_sig_allocacmp_v9421_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v9421_load = v9421_fu_68;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13742_0_ce0_local = 1'b1;
    end else begin
        v13742_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13742_0_we0_local = 1'b1;
    end else begin
        v13742_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13742_1_ce0_local = 1'b1;
    end else begin
        v13742_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13742_1_we0_local = 1'b1;
    end else begin
        v13742_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v175_1_i_ce0_local = 1'b1;
    end else begin
        v175_1_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v175_i_ce0_local = 1'b1;
    end else begin
        v175_i_ce0_local = 1'b0;
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
assign add_ln281_1_fu_202_p2 = (shl_ln436_reg_249 + zext_ln278_1_fu_194_p1);
assign add_ln281_fu_197_p2 = (rem_i_reg_244 + zext_ln278_fu_191_p1);
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
    ap_condition_114 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_130_p1 = p_read[6:0];
assign lshr_ln23_fu_217_p4 = {{add_ln281_fu_197_p2[11:1]}};
assign lshr_ln_fu_156_p4 = {{ap_sig_allocacmp_v9421_load[5:1]}};
assign rem_i_fu_134_p3 = {{empty_fu_130_p1}, {5'd0}};
assign shl_ln436_fu_142_p2 = p_read << 11'd4;
assign tmp_fu_178_p3 = v94_fu_172_p2[32'd5];
assign v13742_0_address0 = zext_ln281_fu_207_p1;
assign v13742_0_ce0 = v13742_0_ce0_local;
assign v13742_0_d0 = v175_1_load_cast_i_i_fu_212_p1;
assign v13742_0_we0 = v13742_0_we0_local;
assign v13742_1_address0 = zext_ln283_fu_227_p1;
assign v13742_1_ce0 = v13742_1_ce0_local;
assign v13742_1_d0 = v175_load_cast_i_i_fu_232_p1;
assign v13742_1_we0 = v13742_1_we0_local;
assign v175_1_i_address0 = zext_ln278_2_fu_166_p1;
assign v175_1_i_ce0 = v175_1_i_ce0_local;
assign v175_1_load_cast_i_i_fu_212_p1 = v175_1_i_q0;
assign v175_i_address0 = zext_ln278_2_fu_166_p1;
assign v175_i_ce0 = v175_i_ce0_local;
assign v175_load_cast_i_i_fu_232_p1 = v175_i_q0;
assign v94_fu_172_p2 = (ap_sig_allocacmp_v9421_load + 6'd2);
assign zext_ln278_1_fu_194_p1 = lshr_ln_reg_259;
assign zext_ln278_2_fu_166_p1 = lshr_ln_fu_156_p4;
assign zext_ln278_fu_191_p1 = v9421_load_reg_254;
assign zext_ln281_fu_207_p1 = add_ln281_1_fu_202_p2;
assign zext_ln283_fu_227_p1 = lshr_ln23_fu_217_p4;
always @ (posedge ap_clk) begin
    rem_i_reg_244[4:0] <= 5'b00000;
    shl_ln436_reg_249[3:0] <= 4'b0000;
end
endmodule 