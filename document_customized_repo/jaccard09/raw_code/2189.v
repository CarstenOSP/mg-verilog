module Gsm_LPC_Analysis_Reflection_coefficients_Pipeline_gsmdiv_lp (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sext_ln129,sext_ln135,sext_ln130,div_out,div_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [15:0] sext_ln129;
input  [15:0] sext_ln135;
input  [15:0] sext_ln130;
output  [15:0] div_out;
output   div_out_ap_vld;
reg ap_idle;
reg div_out_ap_vld;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln146_fu_115_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire  signed [62:0] sext_ln130_cast_fu_85_p1;
reg  signed [62:0] sext_ln130_cast_reg_237;
wire  signed [63:0] sext_ln135_cast_fu_89_p1;
reg  signed [63:0] sext_ln135_cast_reg_242;
reg   [0:0] icmp_ln146_reg_247;
wire   [0:0] xor_ln151_fu_154_p2;
reg   [0:0] xor_ln151_reg_251;
reg   [15:0] div_fu_48;
wire   [15:0] div_3_fu_199_p3;
wire    ap_block_pp0_stage0;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [62:0] L_num_fu_52;
wire   [62:0] L_num_3_fu_165_p3;
wire  signed [62:0] sext_ln129_cast_fu_93_p1;
reg   [3:0] k_fu_56;
wire   [3:0] k_3_fu_121_p2;
reg   [3:0] ap_sig_allocacmp_k_2;
wire    ap_block_pp0_stage0_01001;
wire   [63:0] L_num_1_fu_135_p3;
wire   [0:0] icmp_ln151_fu_149_p2;
wire   [62:0] shl_ln129_fu_143_p2;
wire   [62:0] L_num_2_fu_160_p2;
wire   [14:0] trunc_ln148_fu_181_p1;
wire   [15:0] div_2_fu_191_p3;
wire   [15:0] div_1_fu_185_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 div_fu_48 = 16'd0;
#0 L_num_fu_52 = 63'd0;
#0 k_fu_56 = 4'd0;
#0 ap_done_reg = 1'b0;
end
Gsm_LPC_Analysis_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            L_num_fu_52 <= sext_ln129_cast_fu_93_p1;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            L_num_fu_52 <= L_num_3_fu_165_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            div_fu_48 <= 16'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            div_fu_48 <= div_3_fu_199_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln146_fu_115_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            k_fu_56 <= k_3_fu_121_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            k_fu_56 <= 4'd15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln146_reg_247 <= icmp_ln146_fu_115_p2;
        sext_ln130_cast_reg_237 <= sext_ln130_cast_fu_85_p1;
        sext_ln135_cast_reg_242 <= sext_ln135_cast_fu_89_p1;
        xor_ln151_reg_251 <= xor_ln151_fu_154_p2;
    end
end
always @ (*) begin
    if (((icmp_ln146_fu_115_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_k_2 = 4'd15;
    end else begin
        ap_sig_allocacmp_k_2 = k_fu_56;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (icmp_ln146_reg_247 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        div_out_ap_vld = 1'b1;
    end else begin
        div_out_ap_vld = 1'b0;
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
assign L_num_1_fu_135_p3 = {{L_num_fu_52}, {1'd0}};
assign L_num_2_fu_160_p2 = ($signed(shl_ln129_fu_143_p2) - $signed(sext_ln130_cast_reg_237));
assign L_num_3_fu_165_p3 = ((xor_ln151_fu_154_p2[0:0] == 1'b1) ? L_num_2_fu_160_p2 : shl_ln129_fu_143_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign div_1_fu_185_p2 = div_fu_48 << 16'd1;
assign div_2_fu_191_p3 = {{trunc_ln148_fu_181_p1}, {1'd1}};
assign div_3_fu_199_p3 = ((xor_ln151_reg_251[0:0] == 1'b1) ? div_2_fu_191_p3 : div_1_fu_185_p2);
assign div_out = div_fu_48;
assign icmp_ln146_fu_115_p2 = ((ap_sig_allocacmp_k_2 == 4'd0) ? 1'b1 : 1'b0);
assign icmp_ln151_fu_149_p2 = (($signed(L_num_1_fu_135_p3) < $signed(sext_ln135_cast_reg_242)) ? 1'b1 : 1'b0);
assign k_3_fu_121_p2 = ($signed(ap_sig_allocacmp_k_2) + $signed(4'd15));
assign sext_ln129_cast_fu_93_p1 = $signed(sext_ln129);
assign sext_ln130_cast_fu_85_p1 = $signed(sext_ln130);
assign sext_ln135_cast_fu_89_p1 = $signed(sext_ln135);
assign shl_ln129_fu_143_p2 = L_num_fu_52 << 63'd1;
assign trunc_ln148_fu_181_p1 = div_fu_48[14:0];
assign xor_ln151_fu_154_p2 = (icmp_ln151_fu_149_p2 ^ 1'd1);
endmodule 