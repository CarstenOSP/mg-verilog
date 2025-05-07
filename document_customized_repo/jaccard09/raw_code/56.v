module Gsm_LPC_Analysis_Reflection_coefficients_Pipeline_gsmdiv_lp (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sext_ln129,sext_ln135,sext_ln130_1,div_2_out,div_2_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [15:0] sext_ln129;
input  [15:0] sext_ln135;
input  [15:0] sext_ln130_1;
output  [15:0] div_2_out;
output   div_2_out_ap_vld;
reg ap_idle;
reg div_2_out_ap_vld;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
wire   [0:0] icmp_ln146_fu_143_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire  signed [62:0] sext_ln130_1_cast_fu_91_p1;
reg  signed [62:0] sext_ln130_1_cast_reg_311;
wire    ap_block_pp0_stage0_11001;
wire  signed [63:0] sext_ln135_cast_fu_95_p1;
reg  signed [63:0] sext_ln135_cast_reg_317;
wire   [0:0] xor_ln151_fu_137_p2;
reg   [0:0] xor_ln151_reg_323;
wire    ap_block_pp0_stage1_11001;
reg   [0:0] icmp_ln146_reg_328;
wire   [62:0] select_ln151_fu_166_p3;
reg   [62:0] select_ln151_reg_332;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg   [15:0] div_fu_54;
wire   [15:0] shl_ln_fu_272_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [62:0] L_num_fu_58;
wire   [62:0] L_num_6_fu_256_p3;
wire  signed [62:0] sext_ln129_cast_fu_99_p1;
wire    ap_block_pp0_stage1;
reg   [3:0] k_fu_62;
wire   [3:0] k_3_fu_160_p2;
wire   [15:0] div_4_fu_200_p3;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage0;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage0_01001;
wire   [63:0] L_num_2_fu_124_p3;
wire   [0:0] icmp_ln151_fu_132_p2;
wire   [62:0] shl_ln129_fu_149_p2;
wire   [62:0] L_num_3_fu_155_p2;
wire   [14:0] tmp_9_fu_182_p4;
wire   [15:0] div_1_fu_192_p3;
wire   [13:0] trunc_ln148_fu_208_p1;
wire   [63:0] L_num_4_fu_220_p3;
wire   [0:0] icmp_ln151_1_fu_232_p2;
wire   [62:0] shl_ln129_1_fu_227_p2;
wire   [0:0] xor_ln151_1_fu_237_p2;
wire   [62:0] L_num_5_fu_243_p2;
wire   [14:0] or_ln2_fu_248_p3;
wire   [14:0] div_3_fu_212_p3;
wire   [14:0] select_ln151_2_fu_264_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 div_fu_54 = 16'd0;
#0 L_num_fu_58 = 63'd0;
#0 k_fu_62 = 4'd0;
#0 ap_done_reg = 1'b0;
end
Gsm_LPC_Analysis_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            L_num_fu_58 <= sext_ln129_cast_fu_99_p1;
        end else if (((icmp_ln146_reg_328 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            L_num_fu_58 <= L_num_6_fu_256_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b1 == ap_condition_exit_pp0_iter1_stage0) & (ap_idle_pp0_0to0 == 1'b1)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
                        div_fu_54[1] <= 1'b0;
            div_fu_54[2] <= 1'b0;
            div_fu_54[3] <= 1'b0;
            div_fu_54[4] <= 1'b0;
            div_fu_54[5] <= 1'b0;
            div_fu_54[6] <= 1'b0;
            div_fu_54[7] <= 1'b0;
            div_fu_54[8] <= 1'b0;
            div_fu_54[9] <= 1'b0;
            div_fu_54[10] <= 1'b0;
            div_fu_54[11] <= 1'b0;
            div_fu_54[12] <= 1'b0;
            div_fu_54[13] <= 1'b0;
            div_fu_54[14] <= 1'b0;
            div_fu_54[15] <= 1'b0;
        end else if (((icmp_ln146_reg_328 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
                        div_fu_54[15 : 1] <= shl_ln_fu_272_p3[15 : 1];
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_62 <= 4'd15;
    end else if (((icmp_ln146_fu_143_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        k_fu_62 <= k_3_fu_160_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln146_reg_328 <= icmp_ln146_fu_143_p2;
        select_ln151_reg_332 <= select_ln151_fu_166_p3;
        xor_ln151_reg_323 <= xor_ln151_fu_137_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sext_ln130_1_cast_reg_311 <= sext_ln130_1_cast_fu_91_p1;
        sext_ln135_cast_reg_317 <= sext_ln135_cast_fu_95_p1;
    end
end
always @ (*) begin
    if (((icmp_ln146_fu_143_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln146_reg_328 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
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
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln146_reg_328 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
        div_2_out_ap_vld = 1'b1;
    end else begin
        div_2_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter1_stage0) & (ap_idle_pp0_0to0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign L_num_2_fu_124_p3 = {{L_num_fu_58}, {1'd0}};
assign L_num_3_fu_155_p2 = ($signed(shl_ln129_fu_149_p2) - $signed(sext_ln130_1_cast_reg_311));
assign L_num_4_fu_220_p3 = {{select_ln151_reg_332}, {1'd0}};
assign L_num_5_fu_243_p2 = ($signed(shl_ln129_1_fu_227_p2) - $signed(sext_ln130_1_cast_reg_311));
assign L_num_6_fu_256_p3 = ((xor_ln151_1_fu_237_p2[0:0] == 1'b1) ? L_num_5_fu_243_p2 : shl_ln129_1_fu_227_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign div_1_fu_192_p3 = {{tmp_9_fu_182_p4}, {1'd1}};
assign div_2_out = div_4_fu_200_p3;
assign div_3_fu_212_p3 = {{trunc_ln148_fu_208_p1}, {1'd0}};
assign div_4_fu_200_p3 = ((xor_ln151_reg_323[0:0] == 1'b1) ? div_1_fu_192_p3 : div_fu_54);
assign icmp_ln146_fu_143_p2 = ((k_fu_62 == 4'd1) ? 1'b1 : 1'b0);
assign icmp_ln151_1_fu_232_p2 = (($signed(L_num_4_fu_220_p3) < $signed(sext_ln135_cast_reg_317)) ? 1'b1 : 1'b0);
assign icmp_ln151_fu_132_p2 = (($signed(L_num_2_fu_124_p3) < $signed(sext_ln135_cast_reg_317)) ? 1'b1 : 1'b0);
assign k_3_fu_160_p2 = ($signed(k_fu_62) + $signed(4'd14));
assign or_ln2_fu_248_p3 = {{trunc_ln148_fu_208_p1}, {1'd1}};
assign select_ln151_2_fu_264_p3 = ((xor_ln151_1_fu_237_p2[0:0] == 1'b1) ? or_ln2_fu_248_p3 : div_3_fu_212_p3);
assign select_ln151_fu_166_p3 = ((xor_ln151_fu_137_p2[0:0] == 1'b1) ? L_num_3_fu_155_p2 : shl_ln129_fu_149_p2);
assign sext_ln129_cast_fu_99_p1 = $signed(sext_ln129);
assign sext_ln130_1_cast_fu_91_p1 = $signed(sext_ln130_1);
assign sext_ln135_cast_fu_95_p1 = $signed(sext_ln135);
assign shl_ln129_1_fu_227_p2 = select_ln151_reg_332 << 63'd1;
assign shl_ln129_fu_149_p2 = L_num_fu_58 << 63'd1;
assign shl_ln_fu_272_p3 = {{select_ln151_2_fu_264_p3}, {1'd0}};
assign tmp_9_fu_182_p4 = {{div_fu_54[15:1]}};
assign trunc_ln148_fu_208_p1 = div_4_fu_200_p3[13:0];
assign xor_ln151_1_fu_237_p2 = (icmp_ln151_1_fu_232_p2 ^ 1'd1);
assign xor_ln151_fu_137_p2 = (icmp_ln151_fu_132_p2 ^ 1'd1);
always @ (posedge ap_clk) begin
    div_fu_54[0] <= 1'b0;
end
endmodule 