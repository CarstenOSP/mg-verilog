module Gsm_LPC_Analysis_Reflection_coefficients_Pipeline_Reflc_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,ACF_8_reload,ACF_reload,P_9_out,P_9_out_ap_vld,select_ln191_out,select_ln191_out_ap_vld); 
parameter    ap_ST_fsm_state1 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [15:0] ACF_8_reload;
input  [15:0] ACF_reload;
output  [15:0] P_9_out;
output   P_9_out_ap_vld;
output  [15:0] select_ln191_out;
output   select_ln191_out_ap_vld;
reg ap_idle;
reg[15:0] P_9_out;
reg P_9_out_ap_vld;
reg select_ln191_out_ap_vld;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln191_fu_98_p2;
wire   [0:0] icmp_ln190_fu_122_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [15:0] select_ln191_fu_89_p3;
wire    ap_loop_init;
reg   [3:0] i_2_fu_46;
reg   [3:0] ap_sig_allocacmp_i;
wire   [0:0] icmp_ln191_1_fu_83_p2;
wire   [2:0] tmp_8_fu_104_p4;
wire   [3:0] or_ln1_fu_114_p3;
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
#0 i_2_fu_46 = 4'd0;
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
        if (((icmp_ln190_fu_122_p2 == 1'd0) | (icmp_ln191_fu_98_p2 == 1'd1))) begin
                        i_2_fu_46[3] <= 1'b1;
        end else if ((ap_loop_init == 1'b1)) begin
                        i_2_fu_46[3] <= 1'b0;
        end
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        if ((icmp_ln191_fu_98_p2 == 1'd1)) begin
            P_9_out = select_ln191_fu_89_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            P_9_out = 'bx;
        end else begin
            P_9_out = 'bx;
        end
    end else begin
        P_9_out = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln191_fu_98_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)) | ((ap_loop_init == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        P_9_out_ap_vld = 1'b1;
    end else begin
        P_9_out_ap_vld = 1'b0;
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
    if (((icmp_ln190_fu_122_p2 == 1'd1) & (icmp_ln191_fu_98_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
        ap_sig_allocacmp_i = 4'd0;
    end else begin
        ap_sig_allocacmp_i = i_2_fu_46;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln190_fu_122_p2 == 1'd1) & (icmp_ln191_fu_98_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        select_ln191_out_ap_vld = 1'b1;
    end else begin
        select_ln191_out_ap_vld = 1'b0;
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
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln190_fu_122_p2 = ((or_ln1_fu_114_p3 == 4'd9) ? 1'b1 : 1'b0);
assign icmp_ln191_1_fu_83_p2 = ((ap_sig_allocacmp_i == 4'd8) ? 1'b1 : 1'b0);
assign icmp_ln191_fu_98_p2 = ((ap_sig_allocacmp_i == 4'd0) ? 1'b1 : 1'b0);
assign or_ln1_fu_114_p3 = {{tmp_8_fu_104_p4}, {1'd1}};
assign select_ln191_fu_89_p3 = ((icmp_ln191_1_fu_83_p2[0:0] == 1'b1) ? ACF_8_reload : ACF_reload);
assign select_ln191_out = ((icmp_ln191_1_fu_83_p2[0:0] == 1'b1) ? ACF_8_reload : ACF_reload);
assign tmp_8_fu_104_p4 = {{ap_sig_allocacmp_i[3:1]}};
always @ (posedge ap_clk) begin
    i_2_fu_46[2:0] <= 3'b000;
end
endmodule 