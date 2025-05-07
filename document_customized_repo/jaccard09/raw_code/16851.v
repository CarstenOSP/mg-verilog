module aes256_encrypt_ecb_aes_subBytes_Pipeline_alog (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,xor_ln37,atb_18_out,atb_18_out_ap_vld); 
parameter    ap_ST_fsm_state1 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] xor_ln37;
output  [7:0] atb_18_out;
output   atb_18_out_ap_vld;
reg ap_idle;
reg atb_18_out_ap_vld;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln15_fu_76_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [7:0] z_fu_42;
wire   [7:0] atb_10_fu_119_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_z_load_2;
reg   [7:0] x_assign_4_fu_46;
wire   [7:0] add_ln15_fu_85_p2;
reg   [7:0] ap_sig_allocacmp_x_assign_4_load;
wire   [7:0] atb_fu_91_p2;
wire   [0:0] tmp_fu_97_p3;
wire   [7:0] xor_ln15_fu_105_p2;
wire   [7:0] atb_9_fu_111_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 z_fu_42 = 8'd0;
#0 x_assign_4_fu_46 = 8'd0;
#0 ap_done_reg = 1'b0;
end
aes256_encrypt_ecb_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        if ((icmp_ln15_fu_76_p2 == 1'd0)) begin
            x_assign_4_fu_46 <= add_ln15_fu_85_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            x_assign_4_fu_46 <= xor_ln37;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        if ((icmp_ln15_fu_76_p2 == 1'd0)) begin
            z_fu_42 <= atb_10_fu_119_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            z_fu_42 <= 8'd1;
        end
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state1_pp0_stage0_iter0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln15_fu_76_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_x_assign_4_load = xor_ln37;
    end else begin
        ap_sig_allocacmp_x_assign_4_load = x_assign_4_fu_46;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_z_load_2 = 8'd1;
    end else begin
        ap_sig_allocacmp_z_load_2 = z_fu_42;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln15_fu_76_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        atb_18_out_ap_vld = 1'b1;
    end else begin
        atb_18_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln15_fu_85_p2 = ($signed(ap_sig_allocacmp_x_assign_4_load) + $signed(8'd255));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign atb_10_fu_119_p2 = (atb_9_fu_111_p3 ^ ap_sig_allocacmp_z_load_2);
assign atb_18_out = z_fu_42;
assign atb_9_fu_111_p3 = ((tmp_fu_97_p3[0:0] == 1'b1) ? xor_ln15_fu_105_p2 : atb_fu_91_p2);
assign atb_fu_91_p2 = ap_sig_allocacmp_z_load_2 << 8'd1;
assign icmp_ln15_fu_76_p2 = ((ap_sig_allocacmp_x_assign_4_load == 8'd0) ? 1'b1 : 1'b0);
assign tmp_fu_97_p3 = ap_sig_allocacmp_z_load_2[32'd7];
assign xor_ln15_fu_105_p2 = (atb_fu_91_p2 ^ 8'd27);
endmodule 