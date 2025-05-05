module Gsm_LPC_Analysis_Autocorrelation_17_18_Pipeline_VITIS_LOOP_85_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,L_ACF_0,L_ACF_0_ap_vld,L_ACF_8,L_ACF_8_ap_vld,L_ACF_7,L_ACF_7_ap_vld,L_ACF_6,L_ACF_6_ap_vld,L_ACF_5,L_ACF_5_ap_vld,L_ACF_4,L_ACF_4_ap_vld,L_ACF_3,L_ACF_3_ap_vld,L_ACF_2,L_ACF_2_ap_vld,L_ACF_1,L_ACF_1_ap_vld); 
parameter    ap_ST_fsm_state1 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [63:0] L_ACF_0;
output   L_ACF_0_ap_vld;
output  [63:0] L_ACF_8;
output   L_ACF_8_ap_vld;
output  [63:0] L_ACF_7;
output   L_ACF_7_ap_vld;
output  [63:0] L_ACF_6;
output   L_ACF_6_ap_vld;
output  [63:0] L_ACF_5;
output   L_ACF_5_ap_vld;
output  [63:0] L_ACF_4;
output   L_ACF_4_ap_vld;
output  [63:0] L_ACF_3;
output   L_ACF_3_ap_vld;
output  [63:0] L_ACF_2;
output   L_ACF_2_ap_vld;
output  [63:0] L_ACF_1;
output   L_ACF_1_ap_vld;
reg ap_idle;
reg L_ACF_0_ap_vld;
reg L_ACF_8_ap_vld;
reg L_ACF_7_ap_vld;
reg L_ACF_6_ap_vld;
reg L_ACF_5_ap_vld;
reg L_ACF_4_ap_vld;
reg L_ACF_3_ap_vld;
reg L_ACF_2_ap_vld;
reg L_ACF_1_ap_vld;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] tmp_fu_148_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [4:0] k_3_fu_64;
wire   [4:0] add_ln85_fu_160_p2;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_k;
wire   [3:0] trunc_ln85_fu_156_p1;
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
#0 k_3_fu_64 = 5'd0;
#0 ap_done_reg = 1'b0;
end
Gsm_LPC_Analysis_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if ((tmp_fu_148_p3 == 1'd0)) begin
            k_3_fu_64 <= add_ln85_fu_160_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            k_3_fu_64 <= 5'd8;
        end
    end
end
always @ (*) begin
    if (((trunc_ln85_fu_156_p1 == 4'd0) & (tmp_fu_148_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        L_ACF_0_ap_vld = 1'b1;
    end else begin
        L_ACF_0_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln85_fu_156_p1 == 4'd1) & (tmp_fu_148_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        L_ACF_1_ap_vld = 1'b1;
    end else begin
        L_ACF_1_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln85_fu_156_p1 == 4'd2) & (tmp_fu_148_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        L_ACF_2_ap_vld = 1'b1;
    end else begin
        L_ACF_2_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln85_fu_156_p1 == 4'd3) & (tmp_fu_148_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        L_ACF_3_ap_vld = 1'b1;
    end else begin
        L_ACF_3_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln85_fu_156_p1 == 4'd4) & (tmp_fu_148_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        L_ACF_4_ap_vld = 1'b1;
    end else begin
        L_ACF_4_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln85_fu_156_p1 == 4'd5) & (tmp_fu_148_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        L_ACF_5_ap_vld = 1'b1;
    end else begin
        L_ACF_5_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln85_fu_156_p1 == 4'd6) & (tmp_fu_148_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        L_ACF_6_ap_vld = 1'b1;
    end else begin
        L_ACF_6_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln85_fu_156_p1 == 4'd7) & (tmp_fu_148_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        L_ACF_7_ap_vld = 1'b1;
    end else begin
        L_ACF_7_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln85_fu_156_p1 == 4'd0) & ~(trunc_ln85_fu_156_p1 == 4'd1) & ~(trunc_ln85_fu_156_p1 == 4'd2) & ~(trunc_ln85_fu_156_p1 == 4'd3) & ~(trunc_ln85_fu_156_p1 == 4'd4) & ~(trunc_ln85_fu_156_p1 == 4'd5) & ~(trunc_ln85_fu_156_p1 == 4'd6) & ~(trunc_ln85_fu_156_p1 == 4'd7) & (tmp_fu_148_p3 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        L_ACF_8_ap_vld = 1'b1;
    end else begin
        L_ACF_8_ap_vld = 1'b0;
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
    if (((tmp_fu_148_p3 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
        ap_sig_allocacmp_k = 5'd8;
    end else begin
        ap_sig_allocacmp_k = k_3_fu_64;
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
assign L_ACF_0 = 64'd0;
assign L_ACF_1 = 64'd0;
assign L_ACF_2 = 64'd0;
assign L_ACF_3 = 64'd0;
assign L_ACF_4 = 64'd0;
assign L_ACF_5 = 64'd0;
assign L_ACF_6 = 64'd0;
assign L_ACF_7 = 64'd0;
assign L_ACF_8 = 64'd0;
assign add_ln85_fu_160_p2 = ($signed(ap_sig_allocacmp_k) + $signed(5'd31));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign tmp_fu_148_p3 = ap_sig_allocacmp_k[32'd4];
assign trunc_ln85_fu_156_p1 = ap_sig_allocacmp_k[3:0];
endmodule 