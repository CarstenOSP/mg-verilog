
module forward_dataflow_in_loop_VITIS_LOOP_8199_1_Loop_VITIS_LOOP_8140_1_proc159104 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v5394,v9179_address0,v9179_ce0,v9179_q0,v5402_address0,v5402_ce0,v5402_we0,v5402_d0,ap_return);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [4:0] v5394;
output  [12:0] v9179_address0;
output   v9179_ce0;
input  [7:0] v9179_q0;
output  [9:0] v5402_address0;
output   v5402_ce0;
output   v5402_we0;
output  [7:0] v5402_d0;
output  [4:0] ap_return;
reg ap_idle;
reg[4:0] ap_return;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln8140_fu_253_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
reg   [4:0] v5394_read_reg_345;
reg   [4:0] v5394_read_reg_345_pp0_iter1_reg;
wire   [6:0] mul_i163_cast_i_i_fu_171_p1;
reg   [6:0] mul_i163_cast_i_i_reg_349;
wire   [5:0] select_ln8140_fu_205_p3;
reg   [5:0] select_ln8140_reg_354;
wire   [4:0] trunc_ln8140_fu_221_p1;
reg   [4:0] trunc_ln8140_reg_360;
wire   [6:0] empty_fu_229_p2;
reg   [6:0] empty_reg_365;
wire   [0:0] icmp_ln8141_fu_247_p2;
reg   [0:0] icmp_ln8141_reg_370;
reg   [0:0] icmp_ln8140_reg_375;
wire   [9:0] add_ln8144_fu_291_p2;
reg   [9:0] add_ln8144_reg_379;
reg   [0:0] ap_phi_mux_icmp_ln814112_i_phi_fu_126_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln8144_3_fu_315_p1;
wire   [63:0] zext_ln8144_1_fu_320_p1;
reg   [9:0] indvar_flatten9_i_fu_78;
wire   [9:0] add_ln8140_1_fu_241_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten9_i_load;
reg   [5:0] v537110_i_fu_82;
wire   [5:0] select_ln8140_1_fu_213_p3;
reg   [5:0] ap_sig_allocacmp_v537110_i_load;
reg   [5:0] v537211_i_fu_86;
wire   [5:0] add_ln8141_fu_235_p2;
reg   [5:0] ap_sig_allocacmp_v537211_i_load;
reg    v9179_ce0_local;
reg    v5402_we0_local;
reg    v5402_ce0_local;
wire   [1:0] tmp_i_fu_137_p4;
wire   [5:0] v5394_cast_fu_133_p1;
wire   [0:0] tmp_fu_155_p3;
wire   [5:0] mul_i163_i_i_fu_163_p3;
wire   [5:0] add_ln8140_fu_199_p2;
wire   [6:0] mul_i146_i_i_fu_147_p3;
wire   [6:0] zext_ln8140_fu_225_p1;
wire   [9:0] tmp_43_i_fu_274_p3;
wire   [9:0] zext_ln8144_fu_288_p1;
wire   [6:0] zext_ln8141_fu_297_p1;
wire   [6:0] add_ln8143_fu_300_p2;
wire   [12:0] tmp_44_i_fu_281_p3;
wire   [12:0] zext_ln8144_2_fu_305_p1;
wire   [12:0] add_ln8144_1_fu_309_p2;
reg   [4:0] ap_return_preg;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_284;
reg    ap_condition_82;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten9_i_fu_78 = 10'd0;
#0 v537110_i_fu_82 = 6'd0;
#0 v537211_i_fu_86 = 6'd0;
#0 ap_return_preg = 5'd0;
end
forward_flow_control_loop_delay_pipe flow_control_loop_delay_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(ap_continue),.ap_loop_exit_ready_delayed(ap_loop_exit_ready_delayed));
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_return_preg <= 5'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
            ap_return_preg <= v5394_read_reg_345_pp0_iter1_reg;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_82)) begin
        indvar_flatten9_i_fu_78 <= add_ln8140_1_fu_241_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_82)) begin
    v537110_i_fu_82 <= select_ln8140_1_fu_213_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_82)) begin
    v537211_i_fu_86 <= add_ln8141_fu_235_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln8144_reg_379 <= add_ln8144_fu_291_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        empty_reg_365 <= empty_fu_229_p2;
        icmp_ln8140_reg_375 <= icmp_ln8140_fu_253_p2;
        mul_i163_cast_i_i_reg_349[5] <= mul_i163_cast_i_i_fu_171_p1[5];
        select_ln8140_reg_354 <= select_ln8140_fu_205_p3;
        trunc_ln8140_reg_360 <= trunc_ln8140_fu_221_p1;
        v5394_read_reg_345_pp0_iter1_reg <= v5394_read_reg_345;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln8141_reg_370 <= icmp_ln8141_fu_247_p2;
        v5394_read_reg_345 <= v5394;
    end
end
always @ (*) begin
    if (((icmp_ln8140_fu_253_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_284)) begin
            ap_phi_mux_icmp_ln814112_i_phi_fu_126_p4 = icmp_ln8141_reg_370;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln814112_i_phi_fu_126_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln814112_i_phi_fu_126_p4 = icmp_ln8141_reg_370;
        end
    end else begin
        ap_phi_mux_icmp_ln814112_i_phi_fu_126_p4 = icmp_ln8141_reg_370;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        ap_return = v5394_read_reg_345_pp0_iter1_reg;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten9_i_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten9_i_load = indvar_flatten9_i_fu_78;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v537110_i_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v537110_i_load = v537110_i_fu_82;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v537211_i_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v537211_i_load = v537211_i_fu_86;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5402_ce0_local = 1'b1;
    end else begin
        v5402_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5402_we0_local = 1'b1;
    end else begin
        v5402_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9179_ce0_local = 1'b1;
    end else begin
        v9179_ce0_local = 1'b0;
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
assign add_ln8140_1_fu_241_p2 = (ap_sig_allocacmp_indvar_flatten9_i_load + 10'd1);
assign add_ln8140_fu_199_p2 = (ap_sig_allocacmp_v537110_i_load + 6'd1);
assign add_ln8141_fu_235_p2 = (select_ln8140_fu_205_p3 + 6'd1);
assign add_ln8143_fu_300_p2 = (zext_ln8141_fu_297_p1 + mul_i163_cast_i_i_reg_349);
assign add_ln8144_1_fu_309_p2 = (tmp_44_i_fu_281_p3 + zext_ln8144_2_fu_305_p1);
assign add_ln8144_fu_291_p2 = (tmp_43_i_fu_274_p3 + zext_ln8144_fu_288_p1);
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
    ap_condition_284 = ((icmp_ln8140_reg_375 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_82 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_229_p2 = (mul_i146_i_i_fu_147_p3 + zext_ln8140_fu_225_p1);
assign icmp_ln8140_fu_253_p2 = ((ap_sig_allocacmp_indvar_flatten9_i_load == 10'd1023) ? 1'b1 : 1'b0);
assign icmp_ln8141_fu_247_p2 = ((add_ln8141_fu_235_p2 == 6'd32) ? 1'b1 : 1'b0);
assign mul_i146_i_i_fu_147_p3 = {{tmp_i_fu_137_p4}, {5'd0}};
assign mul_i163_cast_i_i_fu_171_p1 = mul_i163_i_i_fu_163_p3;
assign mul_i163_i_i_fu_163_p3 = {{tmp_fu_155_p3}, {5'd0}};
assign select_ln8140_1_fu_213_p3 = ((ap_phi_mux_icmp_ln814112_i_phi_fu_126_p4[0:0] == 1'b1) ? add_ln8140_fu_199_p2 : ap_sig_allocacmp_v537110_i_load);
assign select_ln8140_fu_205_p3 = ((ap_phi_mux_icmp_ln814112_i_phi_fu_126_p4[0:0] == 1'b1) ? 6'd0 : ap_sig_allocacmp_v537211_i_load);
assign tmp_43_i_fu_274_p3 = {{trunc_ln8140_reg_360}, {5'd0}};
assign tmp_44_i_fu_281_p3 = {{empty_reg_365}, {6'd0}};
assign tmp_fu_155_p3 = v5394_cast_fu_133_p1[32'd4];
assign tmp_i_fu_137_p4 = {{v5394[3:2]}};
assign trunc_ln8140_fu_221_p1 = select_ln8140_1_fu_213_p3[4:0];
assign v5394_cast_fu_133_p1 = v5394;
assign v5402_address0 = zext_ln8144_1_fu_320_p1;
assign v5402_ce0 = v5402_ce0_local;
assign v5402_d0 = v9179_q0;
assign v5402_we0 = v5402_we0_local;
assign v9179_address0 = zext_ln8144_3_fu_315_p1;
assign v9179_ce0 = v9179_ce0_local;
assign zext_ln8140_fu_225_p1 = select_ln8140_1_fu_213_p3;
assign zext_ln8141_fu_297_p1 = select_ln8140_reg_354;
assign zext_ln8144_1_fu_320_p1 = add_ln8144_reg_379;
assign zext_ln8144_2_fu_305_p1 = add_ln8143_fu_300_p2;
assign zext_ln8144_3_fu_315_p1 = add_ln8144_1_fu_309_p2;
assign zext_ln8144_fu_288_p1 = select_ln8140_reg_354;
always @ (posedge ap_clk) begin
    mul_i163_cast_i_i_reg_349[4:0] <= 5'b00000;
    mul_i163_cast_i_i_reg_349[6] <= 1'b0;
end
endmodule 
