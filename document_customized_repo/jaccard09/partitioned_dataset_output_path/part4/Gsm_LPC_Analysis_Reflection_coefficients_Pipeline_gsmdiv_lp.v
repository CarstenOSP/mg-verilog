
module Gsm_LPC_Analysis_Reflection_coefficients_Pipeline_gsmdiv_lp (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sext_ln129,sext_ln135,sext_ln130_1,div_6_out,div_6_out_ap_vld);  
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [15:0] sext_ln129;
input  [15:0] sext_ln135;
input  [15:0] sext_ln130_1;
output  [15:0] div_6_out;
output   div_6_out_ap_vld;
reg ap_idle;
reg div_6_out_ap_vld;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
wire   [0:0] icmp_ln146_fu_295_p2;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire  signed [62:0] sext_ln130_1_cast_fu_95_p1;
reg  signed [62:0] sext_ln130_1_cast_reg_432;
wire    ap_block_pp0_stage0_11001;
wire  signed [63:0] sext_ln135_cast_fu_99_p1;
reg  signed [63:0] sext_ln135_cast_reg_440;
wire   [13:0] select_ln151_fu_176_p3;
reg   [13:0] select_ln151_reg_448;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [62:0] select_ln151_1_fu_184_p3;
reg   [62:0] select_ln151_1_reg_454;
wire   [0:0] xor_ln151_1_fu_209_p2;
reg   [0:0] xor_ln151_1_reg_460;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [62:0] select_ln151_3_fu_220_p3;
reg   [62:0] select_ln151_3_reg_465;
wire   [15:0] div_8_fu_286_p3;
reg   [15:0] div_8_reg_471;
wire    ap_block_pp0_stage3_11001;
wire   [62:0] select_ln151_5_fu_317_p3;
reg   [62:0] select_ln151_5_reg_479;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg   [13:0] div_fu_58;
wire   [13:0] shl_ln_fu_393_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [62:0] L_num_fu_62;
wire   [62:0] L_num_10_fu_377_p3;
wire  signed [62:0] sext_ln129_cast_fu_103_p1;
reg   [3:0] k_fu_66;
wire   [3:0] k_3_fu_311_p2;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage3_01001;
wire    ap_block_pp0_stage0;
wire   [63:0] L_num_2_fu_128_p3;
wire   [0:0] icmp_ln151_fu_142_p2;
wire   [62:0] shl_ln129_fu_136_p2;
wire   [12:0] tmp_3_fu_158_p4;
wire   [0:0] xor_ln151_fu_147_p2;
wire   [13:0] div_1_fu_168_p3;
wire   [62:0] L_num_3_fu_153_p2;
wire    ap_block_pp0_stage2;
wire   [63:0] L_num_4_fu_192_p3;
wire   [0:0] icmp_ln151_1_fu_204_p2;
wire   [62:0] shl_ln129_1_fu_199_p2;
wire   [62:0] L_num_5_fu_215_p2;
wire   [14:0] div_3_fu_238_p3;
wire   [14:0] div_2_fu_231_p3;
wire   [14:0] select_ln151_2_fu_245_p3;
wire   [63:0] L_num_6_fu_260_p3;
wire   [0:0] icmp_ln151_2_fu_267_p2;
wire   [0:0] xor_ln151_2_fu_272_p2;
wire   [15:0] div_5_fu_278_p3;
wire   [15:0] div_4_fu_252_p3;
wire   [62:0] shl_ln129_2_fu_301_p2;
wire   [62:0] L_num_7_fu_306_p2;
wire   [11:0] trunc_ln148_fu_330_p1;
wire   [63:0] L_num_8_fu_341_p3;
wire   [0:0] icmp_ln151_3_fu_353_p2;
wire   [62:0] shl_ln129_3_fu_348_p2;
wire   [0:0] xor_ln151_3_fu_358_p2;
wire   [62:0] L_num_9_fu_364_p2;
wire   [12:0] or_ln2_fu_369_p3;
wire   [12:0] div_7_fu_333_p3;
wire   [12:0] select_ln151_7_fu_385_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 div_fu_58 = 14'd0;
#0 L_num_fu_62 = 63'd0;
#0 k_fu_66 = 4'd0;
#0 ap_done_reg = 1'b0;
end
Gsm_LPC_Analysis_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        if (((1'b1 == ap_condition_exit_pp0_iter0_stage3) | ((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            L_num_fu_62 <= sext_ln129_cast_fu_103_p1;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            L_num_fu_62 <= L_num_10_fu_377_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
                        div_fu_58[1] <= 1'b0;
            div_fu_58[2] <= 1'b0;
            div_fu_58[3] <= 1'b0;
            div_fu_58[4] <= 1'b0;
            div_fu_58[5] <= 1'b0;
            div_fu_58[6] <= 1'b0;
            div_fu_58[7] <= 1'b0;
            div_fu_58[8] <= 1'b0;
            div_fu_58[9] <= 1'b0;
            div_fu_58[10] <= 1'b0;
            div_fu_58[11] <= 1'b0;
            div_fu_58[12] <= 1'b0;
            div_fu_58[13] <= 1'b0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
                        div_fu_58[13 : 1] <= shl_ln_fu_393_p3[13 : 1];
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        k_fu_66 <= 4'd15;
    end else if (((icmp_ln146_fu_295_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        k_fu_66 <= k_3_fu_311_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        div_8_reg_471 <= div_8_fu_286_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        select_ln151_1_reg_454 <= select_ln151_1_fu_184_p3;
        select_ln151_reg_448 <= select_ln151_fu_176_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln151_3_reg_465 <= select_ln151_3_fu_220_p3;
        xor_ln151_1_reg_460 <= xor_ln151_1_fu_209_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        select_ln151_5_reg_479 <= select_ln151_5_fu_317_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sext_ln130_1_cast_reg_432 <= sext_ln130_1_cast_fu_95_p1;
        sext_ln135_cast_reg_440 <= sext_ln135_cast_fu_99_p1;
    end
end
always @ (*) begin
    if (((icmp_ln146_fu_295_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln146_fu_295_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        div_6_out_ap_vld = 1'b1;
    end else begin
        div_6_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign L_num_10_fu_377_p3 = ((xor_ln151_3_fu_358_p2[0:0] == 1'b1) ? L_num_9_fu_364_p2 : shl_ln129_3_fu_348_p2);
assign L_num_2_fu_128_p3 = {{L_num_fu_62}, {1'd0}};
assign L_num_3_fu_153_p2 = ($signed(shl_ln129_fu_136_p2) - $signed(sext_ln130_1_cast_reg_432));
assign L_num_4_fu_192_p3 = {{select_ln151_1_reg_454}, {1'd0}};
assign L_num_5_fu_215_p2 = ($signed(shl_ln129_1_fu_199_p2) - $signed(sext_ln130_1_cast_reg_432));
assign L_num_6_fu_260_p3 = {{select_ln151_3_reg_465}, {1'd0}};
assign L_num_7_fu_306_p2 = ($signed(shl_ln129_2_fu_301_p2) - $signed(sext_ln130_1_cast_reg_432));
assign L_num_8_fu_341_p3 = {{select_ln151_5_reg_479}, {1'd0}};
assign L_num_9_fu_364_p2 = ($signed(shl_ln129_3_fu_348_p2) - $signed(sext_ln130_1_cast_reg_432));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign div_1_fu_168_p3 = {{tmp_3_fu_158_p4}, {1'd1}};
assign div_2_fu_231_p3 = {{select_ln151_reg_448}, {1'd0}};
assign div_3_fu_238_p3 = {{select_ln151_reg_448}, {1'd1}};
assign div_4_fu_252_p3 = {{select_ln151_2_fu_245_p3}, {1'd0}};
assign div_5_fu_278_p3 = {{select_ln151_2_fu_245_p3}, {1'd1}};
assign div_6_out = ((xor_ln151_2_fu_272_p2[0:0] == 1'b1) ? div_5_fu_278_p3 : div_4_fu_252_p3);
assign div_7_fu_333_p3 = {{trunc_ln148_fu_330_p1}, {1'd0}};
assign div_8_fu_286_p3 = ((xor_ln151_2_fu_272_p2[0:0] == 1'b1) ? div_5_fu_278_p3 : div_4_fu_252_p3);
assign icmp_ln146_fu_295_p2 = ((k_fu_66 == 4'd3) ? 1'b1 : 1'b0);
assign icmp_ln151_1_fu_204_p2 = (($signed(L_num_4_fu_192_p3) < $signed(sext_ln135_cast_reg_440)) ? 1'b1 : 1'b0);
assign icmp_ln151_2_fu_267_p2 = (($signed(L_num_6_fu_260_p3) < $signed(sext_ln135_cast_reg_440)) ? 1'b1 : 1'b0);
assign icmp_ln151_3_fu_353_p2 = (($signed(L_num_8_fu_341_p3) < $signed(sext_ln135_cast_reg_440)) ? 1'b1 : 1'b0);
assign icmp_ln151_fu_142_p2 = (($signed(L_num_2_fu_128_p3) < $signed(sext_ln135_cast_reg_440)) ? 1'b1 : 1'b0);
assign k_3_fu_311_p2 = ($signed(k_fu_66) + $signed(4'd12));
assign or_ln2_fu_369_p3 = {{trunc_ln148_fu_330_p1}, {1'd1}};
assign select_ln151_1_fu_184_p3 = ((xor_ln151_fu_147_p2[0:0] == 1'b1) ? L_num_3_fu_153_p2 : shl_ln129_fu_136_p2);
assign select_ln151_2_fu_245_p3 = ((xor_ln151_1_reg_460[0:0] == 1'b1) ? div_3_fu_238_p3 : div_2_fu_231_p3);
assign select_ln151_3_fu_220_p3 = ((xor_ln151_1_fu_209_p2[0:0] == 1'b1) ? L_num_5_fu_215_p2 : shl_ln129_1_fu_199_p2);
assign select_ln151_5_fu_317_p3 = ((xor_ln151_2_fu_272_p2[0:0] == 1'b1) ? L_num_7_fu_306_p2 : shl_ln129_2_fu_301_p2);
assign select_ln151_7_fu_385_p3 = ((xor_ln151_3_fu_358_p2[0:0] == 1'b1) ? or_ln2_fu_369_p3 : div_7_fu_333_p3);
assign select_ln151_fu_176_p3 = ((xor_ln151_fu_147_p2[0:0] == 1'b1) ? div_1_fu_168_p3 : div_fu_58);
assign sext_ln129_cast_fu_103_p1 = $signed(sext_ln129);
assign sext_ln130_1_cast_fu_95_p1 = $signed(sext_ln130_1);
assign sext_ln135_cast_fu_99_p1 = $signed(sext_ln135);
assign shl_ln129_1_fu_199_p2 = select_ln151_1_reg_454 << 63'd1;
assign shl_ln129_2_fu_301_p2 = select_ln151_3_reg_465 << 63'd1;
assign shl_ln129_3_fu_348_p2 = select_ln151_5_reg_479 << 63'd1;
assign shl_ln129_fu_136_p2 = L_num_fu_62 << 63'd1;
assign shl_ln_fu_393_p3 = {{select_ln151_7_fu_385_p3}, {1'd0}};
assign tmp_3_fu_158_p4 = {{div_fu_58[13:1]}};
assign trunc_ln148_fu_330_p1 = div_8_reg_471[11:0];
assign xor_ln151_1_fu_209_p2 = (icmp_ln151_1_fu_204_p2 ^ 1'd1);
assign xor_ln151_2_fu_272_p2 = (icmp_ln151_2_fu_267_p2 ^ 1'd1);
assign xor_ln151_3_fu_358_p2 = (icmp_ln151_3_fu_353_p2 ^ 1'd1);
assign xor_ln151_fu_147_p2 = (icmp_ln151_fu_142_p2 ^ 1'd1);
always @ (posedge ap_clk) begin
    div_fu_58[0] <= 1'b0;
end
endmodule 
