
module aes256_encrypt_ecb_aes_subBytes_Pipeline_glog (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,x_assign,i_3_out,i_3_out_ap_vld,ap_return);  
parameter    ap_ST_fsm_state1 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] x_assign;
output  [7:0] i_3_out;
output   i_3_out_ap_vld;
output  [0:0] ap_return;
reg ap_idle;
reg[7:0] i_3_out;
reg i_3_out_ap_vld;
reg[0:0] ap_return;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln28_fu_136_p2;
wire   [0:0] icmp_ln26_fu_90_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [7:0] i_reg_60;
wire   [7:0] i_2_fu_96_p2;
reg   [7:0] ap_phi_mux_i_phi_fu_63_p4;
wire    ap_loop_init;
reg   [0:0] ap_phi_mux_UnifiedRetVal_phi_fu_74_p4;
reg   [7:0] z_fu_42;
wire   [7:0] atb_7_fu_130_p2;
reg   [7:0] ap_sig_allocacmp_atb_8;
wire   [7:0] atb_fu_102_p2;
wire   [0:0] tmp_fu_108_p3;
wire   [7:0] xor_ln27_fu_116_p2;
wire   [7:0] atb_6_fu_122_p3;
reg   [0:0] ap_return_preg;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_109;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 z_fu_42 = 8'd0;
#0 ap_return_preg = 1'd0;
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
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 1'd0;
    end else begin
        if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_return_preg <= ap_phi_mux_UnifiedRetVal_phi_fu_74_p4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        if ((icmp_ln26_fu_90_p2 == 1'd0)) begin
            z_fu_42 <= atb_7_fu_130_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            z_fu_42 <= 8'd1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln26_fu_90_p2 == 1'd0) & (icmp_ln28_fu_136_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        i_reg_60 <= i_2_fu_96_p2;
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
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & ((icmp_ln26_fu_90_p2 == 1'd1) | (icmp_ln28_fu_136_p2 == 1'd1)))) begin
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
    if ((1'b1 == ap_CS_fsm_state1)) begin
        if (((icmp_ln26_fu_90_p2 == 1'd0) & (icmp_ln28_fu_136_p2 == 1'd1))) begin
            ap_phi_mux_UnifiedRetVal_phi_fu_74_p4 = 1'd0;
        end else if ((icmp_ln26_fu_90_p2 == 1'd1)) begin
            ap_phi_mux_UnifiedRetVal_phi_fu_74_p4 = 1'd1;
        end else begin
            ap_phi_mux_UnifiedRetVal_phi_fu_74_p4 = 'bx;
        end
    end else begin
        ap_phi_mux_UnifiedRetVal_phi_fu_74_p4 = 'bx;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_phi_mux_i_phi_fu_63_p4 = 8'd0;
    end else begin
        ap_phi_mux_i_phi_fu_63_p4 = i_reg_60;
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
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_return = ap_phi_mux_UnifiedRetVal_phi_fu_74_p4;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_atb_8 = 8'd1;
    end else begin
        ap_sig_allocacmp_atb_8 = z_fu_42;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_109)) begin
        if ((icmp_ln26_fu_90_p2 == 1'd1)) begin
            i_3_out = ap_phi_mux_i_phi_fu_63_p4;
        end else if (((icmp_ln26_fu_90_p2 == 1'd0) & (icmp_ln28_fu_136_p2 == 1'd1))) begin
            i_3_out = 8'd255;
        end else begin
            i_3_out = 'bx;
        end
    end else begin
        i_3_out = 'bx;
    end
end
always @ (*) begin
    if ((((ap_loop_exit_ready == 1'b1) & (icmp_ln26_fu_90_p2 == 1'd0) & (icmp_ln28_fu_136_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)) | ((ap_loop_exit_ready == 1'b1) & (icmp_ln26_fu_90_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        i_3_out_ap_vld = 1'b1;
    end else begin
        i_3_out_ap_vld = 1'b0;
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
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
always @ (*) begin
    ap_condition_109 = ((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1));
end
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign atb_6_fu_122_p3 = ((tmp_fu_108_p3[0:0] == 1'b1) ? xor_ln27_fu_116_p2 : atb_fu_102_p2);
assign atb_7_fu_130_p2 = (atb_6_fu_122_p3 ^ ap_sig_allocacmp_atb_8);
assign atb_fu_102_p2 = ap_sig_allocacmp_atb_8 << 8'd1;
assign i_2_fu_96_p2 = (ap_phi_mux_i_phi_fu_63_p4 + 8'd1);
assign icmp_ln26_fu_90_p2 = ((ap_sig_allocacmp_atb_8 == x_assign) ? 1'b1 : 1'b0);
assign icmp_ln28_fu_136_p2 = ((ap_phi_mux_i_phi_fu_63_p4 == 8'd255) ? 1'b1 : 1'b0);
assign tmp_fu_108_p3 = ap_sig_allocacmp_atb_8[32'd7];
assign xor_ln27_fu_116_p2 = (atb_fu_102_p2 ^ 8'd27);
endmodule 
