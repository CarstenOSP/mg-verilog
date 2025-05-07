module fft1D_512_sin_or_cos_double_Pipeline_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,out_bits_5_out,out_bits_5_out_ap_vld,out_bits_4_out,out_bits_4_out_ap_vld,out_bits_3_out,out_bits_3_out_ap_vld); 
parameter    ap_ST_fsm_state1 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] out_bits_5_out;
output   out_bits_5_out_ap_vld;
output  [31:0] out_bits_4_out;
output   out_bits_4_out_ap_vld;
output  [31:0] out_bits_3_out;
output   out_bits_3_out_ap_vld;
reg ap_idle;
reg out_bits_5_out_ap_vld;
reg out_bits_4_out_ap_vld;
reg out_bits_3_out_ap_vld;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln400_fu_135_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [1:0] arrayinit_curidx_i_fu_30;
wire   [1:0] add_ln400_fu_84_p2;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_arrayinit_curidx_i_load;
reg   [31:0] out_bits_fu_34;
wire   [31:0] out_bits_3_fu_126_p3;
reg   [31:0] out_bits_1_fu_38;
wire   [31:0] out_bits_4_fu_111_p3;
reg   [31:0] out_bits_2_fu_42;
wire   [31:0] out_bits_5_fu_96_p3;
wire   [0:0] sel_tmp_fu_90_p2;
wire   [0:0] sel_tmp2_fu_105_p2;
wire   [0:0] sel_tmp4_fu_120_p2;
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
#0 arrayinit_curidx_i_fu_30 = 2'd0;
#0 out_bits_fu_34 = 32'd0;
#0 out_bits_1_fu_38 = 32'd0;
#0 out_bits_2_fu_42 = 32'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        arrayinit_curidx_i_fu_30 <= add_ln400_fu_84_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        out_bits_1_fu_38 <= out_bits_4_fu_111_p3;
        out_bits_2_fu_42 <= out_bits_5_fu_96_p3;
        out_bits_fu_34 <= out_bits_3_fu_126_p3;
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
    if (((icmp_ln400_fu_135_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
        ap_sig_allocacmp_arrayinit_curidx_i_load = 2'd0;
    end else begin
        ap_sig_allocacmp_arrayinit_curidx_i_load = arrayinit_curidx_i_fu_30;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln400_fu_135_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        out_bits_3_out_ap_vld = 1'b1;
    end else begin
        out_bits_3_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln400_fu_135_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        out_bits_4_out_ap_vld = 1'b1;
    end else begin
        out_bits_4_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln400_fu_135_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        out_bits_5_out_ap_vld = 1'b1;
    end else begin
        out_bits_5_out_ap_vld = 1'b0;
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
assign add_ln400_fu_84_p2 = (ap_sig_allocacmp_arrayinit_curidx_i_load + 2'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln400_fu_135_p2 = ((ap_sig_allocacmp_arrayinit_curidx_i_load == 2'd3) ? 1'b1 : 1'b0);
assign out_bits_3_fu_126_p3 = ((sel_tmp4_fu_120_p2[0:0] == 1'b1) ? 32'd0 : out_bits_fu_34);
assign out_bits_3_out = ((sel_tmp4_fu_120_p2[0:0] == 1'b1) ? 32'd0 : out_bits_fu_34);
assign out_bits_4_fu_111_p3 = ((sel_tmp2_fu_105_p2[0:0] == 1'b1) ? 32'd0 : out_bits_1_fu_38);
assign out_bits_4_out = ((sel_tmp2_fu_105_p2[0:0] == 1'b1) ? 32'd0 : out_bits_1_fu_38);
assign out_bits_5_fu_96_p3 = ((sel_tmp_fu_90_p2[0:0] == 1'b1) ? 32'd0 : out_bits_2_fu_42);
assign out_bits_5_out = ((sel_tmp_fu_90_p2[0:0] == 1'b1) ? 32'd0 : out_bits_2_fu_42);
assign sel_tmp2_fu_105_p2 = ((ap_sig_allocacmp_arrayinit_curidx_i_load == 2'd1) ? 1'b1 : 1'b0);
assign sel_tmp4_fu_120_p2 = ((ap_sig_allocacmp_arrayinit_curidx_i_load == 2'd0) ? 1'b1 : 1'b0);
assign sel_tmp_fu_90_p2 = ((ap_sig_allocacmp_arrayinit_curidx_i_load == 2'd2) ? 1'b1 : 1'b0);
endmodule 