
module fft1D_512_sin_or_cos_double_Pipeline_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,out_bits_5_reload,out_bits_4_reload,out_bits_3_reload,result,out_bits_9_out,out_bits_9_out_ap_vld,out_bits_8_out,out_bits_8_out_ap_vld,out_bits_7_out,out_bits_7_out_ap_vld);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] out_bits_5_reload;
input  [31:0] out_bits_4_reload;
input  [31:0] out_bits_3_reload;
input  [62:0] result;
output  [31:0] out_bits_9_out;
output   out_bits_9_out_ap_vld;
output  [31:0] out_bits_8_out;
output   out_bits_8_out_ap_vld;
output  [31:0] out_bits_7_out;
output   out_bits_7_out_ap_vld;
reg ap_idle;
reg out_bits_9_out_ap_vld;
reg out_bits_8_out_ap_vld;
reg out_bits_7_out_ap_vld;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln401_fu_134_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [1:0] i_2_reg_245;
wire   [5:0] sub_ln403_fu_154_p2;
reg   [5:0] sub_ln403_reg_252;
reg   [1:0] i_fu_50;
wire   [1:0] add_ln401_fu_140_p2;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_i_2;
wire    ap_block_pp0_stage0;
reg   [31:0] out_bits_fu_54;
wire   [31:0] out_bits_3_fu_177_p3;
reg   [31:0] out_bits_1_fu_58;
reg   [31:0] out_bits_2_fu_62;
wire    ap_block_pp0_stage0_01001;
wire   [5:0] shl_ln_fu_146_p3;
wire   [62:0] zext_ln403_fu_165_p1;
wire   [62:0] lshr_ln403_fu_168_p2;
wire   [15:0] trunc_ln403_fu_173_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_191;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 i_fu_50 = 2'd0;
#0 out_bits_fu_54 = 32'd0;
#0 out_bits_1_fu_58 = 32'd0;
#0 out_bits_2_fu_62 = 32'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln401_fu_134_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_50 <= add_ln401_fu_140_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_50 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            out_bits_1_fu_58 <= out_bits_4_reload;
        end else if (((i_2_reg_245 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            out_bits_1_fu_58 <= out_bits_3_fu_177_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            out_bits_2_fu_62 <= out_bits_5_reload;
        end else if ((1'b1 == ap_condition_191)) begin
            out_bits_2_fu_62 <= out_bits_3_fu_177_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            out_bits_fu_54 <= out_bits_3_reload;
        end else if (((i_2_reg_245 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            out_bits_fu_54 <= out_bits_3_fu_177_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_2_reg_245 <= ap_sig_allocacmp_i_2;
        sub_ln403_reg_252[5 : 4] <= sub_ln403_fu_154_p2[5 : 4];
    end
end
always @ (*) begin
    if (((icmp_ln401_fu_134_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_2 = 2'd0;
    end else begin
        ap_sig_allocacmp_i_2 = i_fu_50;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln401_fu_134_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_bits_7_out_ap_vld = 1'b1;
    end else begin
        out_bits_7_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln401_fu_134_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_bits_8_out_ap_vld = 1'b1;
    end else begin
        out_bits_8_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln401_fu_134_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_bits_9_out_ap_vld = 1'b1;
    end else begin
        out_bits_9_out_ap_vld = 1'b0;
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
assign add_ln401_fu_140_p2 = (ap_sig_allocacmp_i_2 + 2'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_191 = (~(i_2_reg_245 == 2'd0) & ~(i_2_reg_245 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln401_fu_134_p2 = ((ap_sig_allocacmp_i_2 == 2'd3) ? 1'b1 : 1'b0);
assign lshr_ln403_fu_168_p2 = result >> zext_ln403_fu_165_p1;
assign out_bits_3_fu_177_p3 = {{trunc_ln403_fu_173_p1}, {16'd32768}};
assign out_bits_7_out = out_bits_fu_54;
assign out_bits_8_out = out_bits_1_fu_58;
assign out_bits_9_out = out_bits_2_fu_62;
assign shl_ln_fu_146_p3 = {{ap_sig_allocacmp_i_2}, {4'd0}};
assign sub_ln403_fu_154_p2 = ($signed(6'd47) - $signed(shl_ln_fu_146_p3));
assign trunc_ln403_fu_173_p1 = lshr_ln403_fu_168_p2[15:0];
assign zext_ln403_fu_165_p1 = sub_ln403_reg_252;
always @ (posedge ap_clk) begin
    sub_ln403_reg_252[3:0] <= 4'b1111;
end
endmodule 
