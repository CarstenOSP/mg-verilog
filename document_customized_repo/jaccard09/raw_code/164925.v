module forward_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_ln12466_i,v9199_address0,v9199_ce0,v9199_q0,v7953_address0,v7953_ce0,v7953_we0,v7953_d0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [12:0] mul_ln12466_i;
output  [19:0] v9199_address0;
output   v9199_ce0;
input  [7:0] v9199_q0;
output  [13:0] v7953_address0;
output   v7953_ce0;
output   v7953_we0;
output  [7:0] v7953_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln12462_fu_197_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [6:0] select_ln12462_fu_153_p3;
reg   [6:0] select_ln12462_reg_315;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] select_ln12462_reg_315_pp0_iter1_reg;
wire   [6:0] select_ln12462_1_fu_161_p3;
reg   [6:0] select_ln12462_1_reg_321;
reg   [6:0] select_ln12462_1_reg_321_pp0_iter1_reg;
wire   [12:0] add_ln12466_fu_173_p2;
reg   [12:0] add_ln12466_reg_327;
wire   [0:0] icmp_ln12463_fu_191_p2;
reg   [0:0] icmp_ln12463_reg_333;
reg   [0:0] icmp_ln12462_reg_338;
reg   [0:0] ap_phi_mux_icmp_ln1246312_i_phi_fu_116_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln12466_5_fu_251_p1;
wire   [63:0] zext_ln12466_6_fu_289_p1;
reg   [13:0] indvar_flatten9_i_fu_68;
wire   [13:0] add_ln12462_1_fu_185_p2;
reg   [13:0] ap_sig_allocacmp_indvar_flatten9_i_load;
reg   [6:0] v794010_i_fu_72;
reg   [6:0] ap_sig_allocacmp_v794010_i_load;
reg   [6:0] v794111_i_fu_76;
wire   [6:0] add_ln12463_fu_179_p2;
reg   [6:0] ap_sig_allocacmp_v794111_i_load;
reg    v9199_ce0_local;
reg    v7953_we0_local;
reg    v7953_ce0_local;
wire   [6:0] add_ln12462_fu_147_p2;
wire   [12:0] zext_ln12466_fu_169_p1;
wire   [16:0] tmp_fu_225_p3;
wire   [19:0] p_shl12_fu_218_p3;
wire   [19:0] zext_ln12466_1_fu_232_p1;
wire   [19:0] sub_ln12466_fu_236_p2;
wire   [19:0] zext_ln12466_4_fu_242_p1;
wire   [19:0] add_ln12466_1_fu_245_p2;
wire   [10:0] tmp_383_fu_263_p3;
wire   [13:0] p_shl_fu_256_p3;
wire   [13:0] zext_ln12466_2_fu_270_p1;
wire   [13:0] sub_ln12466_1_fu_274_p2;
wire   [13:0] zext_ln12466_3_fu_280_p1;
wire   [13:0] add_ln12466_2_fu_283_p2;
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
reg    ap_condition_256;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 indvar_flatten9_i_fu_68 = 14'd0;
#0 v794010_i_fu_72 = 7'd0;
#0 v794111_i_fu_76 = 7'd0;
#0 ap_done_reg = 1'b0;
end
forward_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten9_i_fu_68 <= add_ln12462_1_fu_185_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten9_i_fu_68 <= 14'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v794010_i_fu_72 <= select_ln12462_1_fu_161_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v794010_i_fu_72 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v794111_i_fu_76 <= add_ln12463_fu_179_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v794111_i_fu_76 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln12466_reg_327 <= add_ln12466_fu_173_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln12462_reg_338 <= icmp_ln12462_fu_197_p2;
        select_ln12462_1_reg_321 <= select_ln12462_1_fu_161_p3;
        select_ln12462_1_reg_321_pp0_iter1_reg <= select_ln12462_1_reg_321;
        select_ln12462_reg_315 <= select_ln12462_fu_153_p3;
        select_ln12462_reg_315_pp0_iter1_reg <= select_ln12462_reg_315;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln12463_reg_333 <= icmp_ln12463_fu_191_p2;
    end
end
always @ (*) begin
    if (((icmp_ln12462_fu_197_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_256)) begin
            ap_phi_mux_icmp_ln1246312_i_phi_fu_116_p4 = icmp_ln12463_reg_333;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1246312_i_phi_fu_116_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1246312_i_phi_fu_116_p4 = icmp_ln12463_reg_333;
        end
    end else begin
        ap_phi_mux_icmp_ln1246312_i_phi_fu_116_p4 = icmp_ln12463_reg_333;
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten9_i_load = 14'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten9_i_load = indvar_flatten9_i_fu_68;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v794010_i_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v794010_i_load = v794010_i_fu_72;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v794111_i_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v794111_i_load = v794111_i_fu_76;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7953_ce0_local = 1'b1;
    end else begin
        v7953_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7953_we0_local = 1'b1;
    end else begin
        v7953_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9199_ce0_local = 1'b1;
    end else begin
        v9199_ce0_local = 1'b0;
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
assign add_ln12462_1_fu_185_p2 = (ap_sig_allocacmp_indvar_flatten9_i_load + 14'd1);
assign add_ln12462_fu_147_p2 = (ap_sig_allocacmp_v794010_i_load + 7'd1);
assign add_ln12463_fu_179_p2 = (select_ln12462_fu_153_p3 + 7'd1);
assign add_ln12466_1_fu_245_p2 = (sub_ln12466_fu_236_p2 + zext_ln12466_4_fu_242_p1);
assign add_ln12466_2_fu_283_p2 = (sub_ln12466_1_fu_274_p2 + zext_ln12466_3_fu_280_p1);
assign add_ln12466_fu_173_p2 = (mul_ln12466_i + zext_ln12466_fu_169_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_256 = ((icmp_ln12462_reg_338 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln12462_fu_197_p2 = ((ap_sig_allocacmp_indvar_flatten9_i_load == 14'd12543) ? 1'b1 : 1'b0);
assign icmp_ln12463_fu_191_p2 = ((add_ln12463_fu_179_p2 == 7'd112) ? 1'b1 : 1'b0);
assign p_shl12_fu_218_p3 = {{add_ln12466_reg_327}, {7'd0}};
assign p_shl_fu_256_p3 = {{select_ln12462_1_reg_321_pp0_iter1_reg}, {7'd0}};
assign select_ln12462_1_fu_161_p3 = ((ap_phi_mux_icmp_ln1246312_i_phi_fu_116_p4[0:0] == 1'b1) ? add_ln12462_fu_147_p2 : ap_sig_allocacmp_v794010_i_load);
assign select_ln12462_fu_153_p3 = ((ap_phi_mux_icmp_ln1246312_i_phi_fu_116_p4[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_v794111_i_load);
assign sub_ln12466_1_fu_274_p2 = (p_shl_fu_256_p3 - zext_ln12466_2_fu_270_p1);
assign sub_ln12466_fu_236_p2 = (p_shl12_fu_218_p3 - zext_ln12466_1_fu_232_p1);
assign tmp_383_fu_263_p3 = {{select_ln12462_1_reg_321_pp0_iter1_reg}, {4'd0}};
assign tmp_fu_225_p3 = {{add_ln12466_reg_327}, {4'd0}};
assign v7953_address0 = zext_ln12466_6_fu_289_p1;
assign v7953_ce0 = v7953_ce0_local;
assign v7953_d0 = v9199_q0;
assign v7953_we0 = v7953_we0_local;
assign v9199_address0 = zext_ln12466_5_fu_251_p1;
assign v9199_ce0 = v9199_ce0_local;
assign zext_ln12466_1_fu_232_p1 = tmp_fu_225_p3;
assign zext_ln12466_2_fu_270_p1 = tmp_383_fu_263_p3;
assign zext_ln12466_3_fu_280_p1 = select_ln12462_reg_315_pp0_iter1_reg;
assign zext_ln12466_4_fu_242_p1 = select_ln12462_reg_315;
assign zext_ln12466_5_fu_251_p1 = add_ln12466_1_fu_245_p2;
assign zext_ln12466_6_fu_289_p1 = add_ln12466_2_fu_283_p2;
assign zext_ln12466_fu_169_p1 = select_ln12462_1_fu_161_p3;
endmodule 