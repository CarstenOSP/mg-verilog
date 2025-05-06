
module backprop_update_weights_68_69_1_Pipeline_up_weight_loop2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,biases1_3_address0,biases1_3_ce0,biases1_3_we0,biases1_3_d0,biases1_3_q0,biases1_2_address0,biases1_2_ce0,biases1_2_we0,biases1_2_d0,biases1_2_q0,biases1_1_address0,biases1_1_ce0,biases1_1_we0,biases1_1_d0,biases1_1_q0,biases1_0_address0,biases1_0_ce0,biases1_0_we0,biases1_0_d0,biases1_0_q0,d_biases1_0_address0,d_biases1_0_ce0,d_biases1_0_q0,d_biases1_2_address0,d_biases1_2_ce0,d_biases1_2_q0,d_biases1_1_address0,d_biases1_1_ce0,d_biases1_1_q0,d_biases1_3_address0,d_biases1_3_ce0,d_biases1_3_q0,bias_norm_out,bias_norm_out_ap_vld,grp_fu_527_p_din0,grp_fu_527_p_din1,grp_fu_527_p_opcode,grp_fu_527_p_dout0,grp_fu_527_p_ce,grp_fu_531_p_din0,grp_fu_531_p_din1,grp_fu_531_p_dout0,grp_fu_531_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 16'd1;
parameter    ap_ST_fsm_pp0_stage1 = 16'd2;
parameter    ap_ST_fsm_pp0_stage2 = 16'd4;
parameter    ap_ST_fsm_pp0_stage3 = 16'd8;
parameter    ap_ST_fsm_pp0_stage4 = 16'd16;
parameter    ap_ST_fsm_pp0_stage5 = 16'd32;
parameter    ap_ST_fsm_pp0_stage6 = 16'd64;
parameter    ap_ST_fsm_pp0_stage7 = 16'd128;
parameter    ap_ST_fsm_pp0_stage8 = 16'd256;
parameter    ap_ST_fsm_pp0_stage9 = 16'd512;
parameter    ap_ST_fsm_pp0_stage10 = 16'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 16'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 16'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 16'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 16'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 16'd32768;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] biases1_3_address0;
output   biases1_3_ce0;
output   biases1_3_we0;
output  [63:0] biases1_3_d0;
input  [63:0] biases1_3_q0;
output  [3:0] biases1_2_address0;
output   biases1_2_ce0;
output   biases1_2_we0;
output  [63:0] biases1_2_d0;
input  [63:0] biases1_2_q0;
output  [3:0] biases1_1_address0;
output   biases1_1_ce0;
output   biases1_1_we0;
output  [63:0] biases1_1_d0;
input  [63:0] biases1_1_q0;
output  [3:0] biases1_0_address0;
output   biases1_0_ce0;
output   biases1_0_we0;
output  [63:0] biases1_0_d0;
input  [63:0] biases1_0_q0;
output  [3:0] d_biases1_0_address0;
output   d_biases1_0_ce0;
input  [63:0] d_biases1_0_q0;
output  [3:0] d_biases1_2_address0;
output   d_biases1_2_ce0;
input  [63:0] d_biases1_2_q0;
output  [3:0] d_biases1_1_address0;
output   d_biases1_1_ce0;
input  [63:0] d_biases1_1_q0;
output  [3:0] d_biases1_3_address0;
output   d_biases1_3_ce0;
input  [63:0] d_biases1_3_q0;
output  [63:0] bias_norm_out;
output   bias_norm_out_ap_vld;
output  [63:0] grp_fu_527_p_din0;
output  [63:0] grp_fu_527_p_din1;
output  [1:0] grp_fu_527_p_opcode;
input  [63:0] grp_fu_527_p_dout0;
output   grp_fu_527_p_ce;
output  [63:0] grp_fu_531_p_din0;
output  [63:0] grp_fu_531_p_din1;
input  [63:0] grp_fu_531_p_dout0;
output   grp_fu_531_p_ce;
reg ap_idle;
reg bias_norm_out_ap_vld;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [0:0] tmp_reg_344;
reg    ap_condition_exit_pp0_iter0_stage15;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] i_reg_338;
reg   [0:0] tmp_reg_344_pp0_iter1_reg;
reg   [3:0] biases1_0_addr_reg_358;
reg   [3:0] biases1_0_addr_reg_358_pp0_iter1_reg;
reg   [3:0] biases1_2_addr_reg_363;
reg   [3:0] biases1_2_addr_reg_363_pp0_iter1_reg;
reg   [3:0] biases1_1_addr_reg_378;
reg   [3:0] biases1_1_addr_reg_378_pp0_iter1_reg;
reg   [3:0] biases1_3_addr_reg_383;
reg   [3:0] biases1_3_addr_reg_383_pp0_iter1_reg;
wire   [63:0] select_ln133_fu_244_p3;
reg   [63:0] select_ln133_reg_388;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] select_ln133_1_fu_252_p3;
reg   [63:0] select_ln133_1_reg_393;
wire   [63:0] select_ln133_2_fu_260_p3;
reg   [63:0] select_ln133_2_reg_398;
wire   [63:0] select_ln133_3_fu_268_p3;
reg   [63:0] select_ln133_3_reg_403;
wire   [0:0] icmp_ln133_fu_276_p2;
reg   [0:0] icmp_ln133_reg_408;
reg   [0:0] icmp_ln133_reg_408_pp0_iter1_reg;
reg   [63:0] mul_reg_412;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] bitcast_ln133_fu_282_p1;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] mul27_1_reg_422;
wire   [63:0] bitcast_ln133_1_fu_286_p1;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] sub1_reg_432;
reg   [63:0] sub30_1_reg_439;
reg   [63:0] mul1_reg_446;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] mul35_1_reg_456;
reg   [63:0] bias_norm_1_reg_461;
wire    ap_block_pp0_stage15_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage7_subdone;
wire   [63:0] zext_ln121_fu_223_p1;
wire    ap_block_pp0_stage0;
reg   [63:0] bias_norm_fu_64;
wire    ap_block_pp0_stage7;
wire    ap_loop_init;
wire    ap_block_pp0_stage8;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage7;
reg    ap_idle_pp0_0to0;
reg   [6:0] i_1_fu_68;
wire   [6:0] add_ln132_fu_290_p2;
reg   [6:0] ap_sig_allocacmp_i;
wire    ap_block_pp0_stage7_01001;
reg    d_biases1_0_ce0_local;
reg    d_biases1_2_ce0_local;
reg    biases1_0_ce0_local;
reg   [3:0] biases1_0_address0_local;
reg    biases1_0_we0_local;
wire   [63:0] bitcast_ln133_2_fu_300_p1;
wire    ap_block_pp0_stage1;
reg    biases1_2_ce0_local;
reg   [3:0] biases1_2_address0_local;
reg    biases1_2_we0_local;
reg    d_biases1_1_ce0_local;
reg    d_biases1_3_ce0_local;
reg    biases1_1_ce0_local;
reg   [3:0] biases1_1_address0_local;
reg    biases1_1_we0_local;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] bitcast_ln133_3_fu_305_p1;
wire    ap_block_pp0_stage2;
reg    biases1_3_ce0_local;
reg   [3:0] biases1_3_address0_local;
reg    biases1_3_we0_local;
reg   [63:0] grp_fu_183_p0;
reg   [63:0] grp_fu_183_p1;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage10;
reg   [63:0] grp_fu_187_p0;
reg   [63:0] grp_fu_187_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire   [3:0] lshr_ln1_fu_213_p4;
wire   [1:0] trunc_ln132_fu_235_p1;
wire   [0:0] icmp_ln133_1_fu_238_p2;
wire    ap_block_pp0_stage15;
reg   [1:0] grp_fu_183_opcode;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage10_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [15:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 bias_norm_fu_64 = 64'd0;
#0 i_1_fu_68 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage15),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage15)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bias_norm_fu_64 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        bias_norm_fu_64 <= grp_fu_527_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_1_fu_68 <= 7'd0;
    end else if (((tmp_reg_344 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        i_1_fu_68 <= add_ln132_fu_290_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        bias_norm_1_reg_461 <= grp_fu_527_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_0_addr_reg_358 <= zext_ln121_fu_223_p1;
        biases1_0_addr_reg_358_pp0_iter1_reg <= biases1_0_addr_reg_358;
        biases1_1_addr_reg_378 <= zext_ln121_fu_223_p1;
        biases1_1_addr_reg_378_pp0_iter1_reg <= biases1_1_addr_reg_378;
        biases1_2_addr_reg_363 <= zext_ln121_fu_223_p1;
        biases1_2_addr_reg_363_pp0_iter1_reg <= biases1_2_addr_reg_363;
        biases1_3_addr_reg_383 <= zext_ln121_fu_223_p1;
        biases1_3_addr_reg_383_pp0_iter1_reg <= biases1_3_addr_reg_383;
        i_reg_338 <= ap_sig_allocacmp_i;
        tmp_reg_344 <= ap_sig_allocacmp_i[32'd6];
        tmp_reg_344_pp0_iter1_reg <= tmp_reg_344;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln133_reg_408 <= icmp_ln133_fu_276_p2;
        icmp_ln133_reg_408_pp0_iter1_reg <= icmp_ln133_reg_408;
        select_ln133_1_reg_393 <= select_ln133_1_fu_252_p3;
        select_ln133_2_reg_398 <= select_ln133_2_fu_260_p3;
        select_ln133_3_reg_403 <= select_ln133_3_fu_268_p3;
        select_ln133_reg_388 <= select_ln133_fu_244_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul1_reg_446 <= grp_fu_531_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul27_1_reg_422 <= grp_fu_531_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        mul35_1_reg_456 <= grp_fu_531_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul_reg_412 <= grp_fu_531_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sub1_reg_432 <= grp_fu_527_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sub30_1_reg_439 <= grp_fu_527_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_344 == 1'd1) & (1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (tmp_reg_344_pp0_iter1_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter1_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i = 7'd0;
    end else begin
        ap_sig_allocacmp_i = i_1_fu_68;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (tmp_reg_344_pp0_iter1_reg == 1'd1))) begin
        bias_norm_out_ap_vld = 1'b1;
    end else begin
        bias_norm_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases1_0_address0_local = biases1_0_addr_reg_358_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_0_address0_local = zext_ln121_fu_223_p1;
    end else begin
        biases1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases1_0_ce0_local = 1'b1;
    end else begin
        biases1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln133_reg_408 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases1_0_we0_local = 1'b1;
    end else begin
        biases1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases1_1_address0_local = biases1_1_addr_reg_378_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_1_address0_local = zext_ln121_fu_223_p1;
    end else begin
        biases1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases1_1_ce0_local = 1'b1;
    end else begin
        biases1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln133_reg_408_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases1_1_we0_local = 1'b1;
    end else begin
        biases1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases1_2_address0_local = biases1_2_addr_reg_363_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_2_address0_local = zext_ln121_fu_223_p1;
    end else begin
        biases1_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases1_2_ce0_local = 1'b1;
    end else begin
        biases1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln133_reg_408 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        biases1_2_we0_local = 1'b1;
    end else begin
        biases1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases1_3_address0_local = biases1_3_addr_reg_383_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        biases1_3_address0_local = zext_ln121_fu_223_p1;
    end else begin
        biases1_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        biases1_3_ce0_local = 1'b1;
    end else begin
        biases1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln133_reg_408_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        biases1_3_we0_local = 1'b1;
    end else begin
        biases1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases1_0_ce0_local = 1'b1;
    end else begin
        d_biases1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases1_1_ce0_local = 1'b1;
    end else begin
        d_biases1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases1_2_ce0_local = 1'b1;
    end else begin
        d_biases1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        d_biases1_3_ce0_local = 1'b1;
    end else begin
        d_biases1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_344 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_344 == 1'd0) & (1'b0 == ap_block_pp0_stage9_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        grp_fu_183_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        grp_fu_183_opcode = 2'd0;
    end else begin
        grp_fu_183_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_183_p0 = bias_norm_1_reg_461;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_183_p0 = bias_norm_fu_64;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_183_p0 = bitcast_ln133_1_fu_286_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_183_p0 = bitcast_ln133_fu_282_p1;
    end else begin
        grp_fu_183_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_183_p1 = mul35_1_reg_456;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_183_p1 = mul1_reg_446;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_183_p1 = mul27_1_reg_422;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_183_p1 = mul_reg_412;
    end else begin
        grp_fu_183_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_187_p0 = sub30_1_reg_439;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_187_p0 = sub1_reg_432;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_187_p0 = select_ln133_2_reg_398;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_187_p0 = select_ln133_reg_388;
    end else begin
        grp_fu_187_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_187_p1 = sub30_1_reg_439;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_187_p1 = sub1_reg_432;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_187_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_187_p1 = 'bx;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage7))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln132_fu_290_p2 = (i_reg_338 + 7'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage15;
assign ap_ready = ap_ready_sig;
assign bias_norm_out = bias_norm_fu_64;
assign biases1_0_address0 = biases1_0_address0_local;
assign biases1_0_ce0 = biases1_0_ce0_local;
assign biases1_0_d0 = bitcast_ln133_2_fu_300_p1;
assign biases1_0_we0 = biases1_0_we0_local;
assign biases1_1_address0 = biases1_1_address0_local;
assign biases1_1_ce0 = biases1_1_ce0_local;
assign biases1_1_d0 = bitcast_ln133_3_fu_305_p1;
assign biases1_1_we0 = biases1_1_we0_local;
assign biases1_2_address0 = biases1_2_address0_local;
assign biases1_2_ce0 = biases1_2_ce0_local;
assign biases1_2_d0 = bitcast_ln133_2_fu_300_p1;
assign biases1_2_we0 = biases1_2_we0_local;
assign biases1_3_address0 = biases1_3_address0_local;
assign biases1_3_ce0 = biases1_3_ce0_local;
assign biases1_3_d0 = bitcast_ln133_3_fu_305_p1;
assign biases1_3_we0 = biases1_3_we0_local;
assign bitcast_ln133_1_fu_286_p1 = select_ln133_3_reg_403;
assign bitcast_ln133_2_fu_300_p1 = sub1_reg_432;
assign bitcast_ln133_3_fu_305_p1 = sub30_1_reg_439;
assign bitcast_ln133_fu_282_p1 = select_ln133_1_reg_393;
assign d_biases1_0_address0 = zext_ln121_fu_223_p1;
assign d_biases1_0_ce0 = d_biases1_0_ce0_local;
assign d_biases1_1_address0 = zext_ln121_fu_223_p1;
assign d_biases1_1_ce0 = d_biases1_1_ce0_local;
assign d_biases1_2_address0 = zext_ln121_fu_223_p1;
assign d_biases1_2_ce0 = d_biases1_2_ce0_local;
assign d_biases1_3_address0 = zext_ln121_fu_223_p1;
assign d_biases1_3_ce0 = d_biases1_3_ce0_local;
assign grp_fu_527_p_ce = 1'b1;
assign grp_fu_527_p_din0 = grp_fu_183_p0;
assign grp_fu_527_p_din1 = grp_fu_183_p1;
assign grp_fu_527_p_opcode = grp_fu_183_opcode;
assign grp_fu_531_p_ce = 1'b1;
assign grp_fu_531_p_din0 = grp_fu_187_p0;
assign grp_fu_531_p_din1 = grp_fu_187_p1;
assign icmp_ln133_1_fu_238_p2 = ((trunc_ln132_fu_235_p1 != 2'd0) ? 1'b1 : 1'b0);
assign icmp_ln133_fu_276_p2 = ((trunc_ln132_fu_235_p1 == 2'd0) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_213_p4 = {{ap_sig_allocacmp_i[5:2]}};
assign select_ln133_1_fu_252_p3 = ((icmp_ln133_1_fu_238_p2[0:0] == 1'b1) ? biases1_2_q0 : biases1_0_q0);
assign select_ln133_2_fu_260_p3 = ((icmp_ln133_1_fu_238_p2[0:0] == 1'b1) ? d_biases1_3_q0 : d_biases1_1_q0);
assign select_ln133_3_fu_268_p3 = ((icmp_ln133_1_fu_238_p2[0:0] == 1'b1) ? biases1_3_q0 : biases1_1_q0);
assign select_ln133_fu_244_p3 = ((icmp_ln133_1_fu_238_p2[0:0] == 1'b1) ? d_biases1_2_q0 : d_biases1_0_q0);
assign trunc_ln132_fu_235_p1 = i_reg_338[1:0];
assign zext_ln121_fu_223_p1 = lshr_ln1_fu_213_p4;
endmodule 
