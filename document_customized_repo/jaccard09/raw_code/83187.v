module viterbi_viterbi_Pipeline_L_end (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p,llike_1_address0,llike_1_ce0,llike_1_q0,llike_address0,llike_ce0,llike_q0,min_s_2_out,min_s_2_out_ap_vld,grp_fu_996_p_din0,grp_fu_996_p_din1,grp_fu_996_p_opcode,grp_fu_996_p_dout0,grp_fu_996_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 5'd1;
parameter    ap_ST_fsm_pp0_stage1 = 5'd2;
parameter    ap_ST_fsm_pp0_stage2 = 5'd4;
parameter    ap_ST_fsm_pp0_stage3 = 5'd8;
parameter    ap_ST_fsm_pp0_stage4 = 5'd16;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] min_p;
output  [12:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [12:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [7:0] min_s_2_out;
output   min_s_2_out_ap_vld;
output  [63:0] grp_fu_996_p_din0;
output  [63:0] grp_fu_996_p_din1;
output  [4:0] grp_fu_996_p_opcode;
input  [0:0] grp_fu_996_p_dout0;
output   grp_fu_996_p_ce;
reg ap_idle;
reg min_s_2_out_ap_vld;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_subdone;
reg   [0:0] tmp_6_reg_469;
reg    ap_condition_exit_pp0_iter0_stage4;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] s_reg_452;
wire   [6:0] add_ln40_fu_166_p2;
reg   [6:0] add_ln40_reg_463;
reg   [6:0] add_ln40_reg_463_pp0_iter1_reg;
reg   [63:0] p_reg_473;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] min_p_6_reg_485;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] p_2_reg_492;
wire   [0:0] and_ln42_1_fu_294_p2;
reg   [0:0] and_ln42_1_reg_499;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [7:0] min_s_9_fu_306_p3;
reg   [7:0] min_s_9_reg_505;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] min_p_8_fu_314_p3;
reg   [63:0] min_p_8_reg_510;
reg   [0:0] tmp_5_reg_517;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln41_fu_161_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln41_2_fu_199_p1;
wire    ap_block_pp0_stage1;
reg   [63:0] min_p_1_fu_66;
wire   [63:0] min_p_10_fu_401_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage2;
reg   [7:0] min_s_fu_70;
wire   [7:0] min_s_10_fu_414_p3;
wire    ap_block_pp0_stage4;
reg   [5:0] min_s_6_fu_74;
wire   [5:0] add_ln40_1_fu_204_p2;
reg   [5:0] ap_sig_allocacmp_s;
wire    ap_block_pp0_stage4_01001;
reg    llike_1_ce0_local;
reg    llike_ce0_local;
reg   [63:0] grp_fu_117_p0;
reg   [63:0] grp_fu_117_p1;
wire   [4:0] tmp_s_fu_143_p4;
wire   [12:0] tmp_235_cast_fu_153_p3;
wire   [6:0] zext_ln10_fu_139_p1;
wire   [5:0] lshr_ln9_1_fu_180_p4;
wire   [12:0] zext_ln41_1_fu_189_p1;
wire   [12:0] add_ln41_fu_193_p2;
wire    ap_block_pp0_stage3;
wire   [63:0] bitcast_ln42_fu_218_p1;
wire   [63:0] bitcast_ln42_1_fu_235_p1;
wire   [10:0] tmp_fu_221_p4;
wire   [51:0] trunc_ln42_fu_231_p1;
wire   [0:0] icmp_ln42_1_fu_258_p2;
wire   [0:0] icmp_ln42_fu_252_p2;
wire   [10:0] tmp_1_fu_238_p4;
wire   [51:0] trunc_ln42_1_fu_248_p1;
wire   [0:0] icmp_ln42_3_fu_276_p2;
wire   [0:0] icmp_ln42_2_fu_270_p2;
wire   [0:0] or_ln42_fu_264_p2;
wire   [0:0] and_ln42_fu_288_p2;
wire   [0:0] or_ln42_1_fu_282_p2;
wire   [7:0] zext_ln42_fu_303_p1;
wire   [63:0] bitcast_ln42_2_fu_320_p1;
wire   [63:0] bitcast_ln42_3_fu_337_p1;
wire   [10:0] tmp_3_fu_323_p4;
wire   [51:0] trunc_ln42_2_fu_333_p1;
wire   [0:0] icmp_ln42_5_fu_360_p2;
wire   [0:0] icmp_ln42_4_fu_354_p2;
wire   [10:0] tmp_4_fu_340_p4;
wire   [51:0] trunc_ln42_3_fu_350_p1;
wire   [0:0] icmp_ln42_7_fu_378_p2;
wire   [0:0] icmp_ln42_6_fu_372_p2;
wire   [0:0] or_ln42_3_fu_384_p2;
wire   [0:0] or_ln42_2_fu_366_p2;
wire   [0:0] and_ln42_2_fu_390_p2;
wire   [0:0] and_ln42_3_fu_396_p2;
wire   [5:0] trunc_ln42_4_fu_407_p1;
wire   [7:0] zext_ln42_1_fu_410_p1;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage4_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [4:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_1_fu_66 = 64'd0;
#0 min_s_fu_70 = 8'd0;
#0 min_s_6_fu_74 = 6'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage4),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
        if (((1'b1 == ap_condition_exit_pp0_iter0_stage4) | ((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        min_p_1_fu_66 <= min_p;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        min_p_1_fu_66 <= min_p_10_fu_401_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        min_s_6_fu_74 <= 6'd1;
    end else if (((tmp_6_reg_469 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        min_s_6_fu_74 <= add_ln40_1_fu_204_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        min_s_fu_70 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        min_s_fu_70 <= min_s_10_fu_414_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln40_reg_463 <= add_ln40_fu_166_p2;
        add_ln40_reg_463_pp0_iter1_reg <= add_ln40_reg_463;
        s_reg_452 <= ap_sig_allocacmp_s;
        tmp_6_reg_469 <= add_ln40_fu_166_p2[32'd6];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        and_ln42_1_reg_499 <= and_ln42_1_fu_294_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        min_p_6_reg_485 <= min_p_1_fu_66;
        p_2_reg_492 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        min_p_8_reg_510 <= min_p_8_fu_314_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        min_s_9_reg_505 <= min_s_9_fu_306_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        p_reg_473 <= llike_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_5_reg_517 <= grp_fu_996_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_6_reg_469 == 1'd1) & (1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_s = 6'd1;
    end else begin
        ap_sig_allocacmp_s = min_s_6_fu_74;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_117_p0 = p_2_reg_492;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_117_p0 = p_reg_473;
        end else begin
            grp_fu_117_p0 = 'bx;
        end
    end else begin
        grp_fu_117_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_117_p1 = min_p_8_fu_314_p3;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_117_p1 = min_p_1_fu_66;
        end else begin
            grp_fu_117_p1 = 'bx;
        end
    end else begin
        grp_fu_117_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_6_reg_469 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        min_s_2_out_ap_vld = 1'b1;
    end else begin
        min_s_2_out_ap_vld = 1'b0;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln40_1_fu_204_p2 = (s_reg_452 + 6'd2);
assign add_ln40_fu_166_p2 = (zext_ln10_fu_139_p1 + 7'd1);
assign add_ln41_fu_193_p2 = ($signed(zext_ln41_1_fu_189_p1) + $signed(13'd4448));
assign and_ln42_1_fu_294_p2 = (or_ln42_1_fu_282_p2 & and_ln42_fu_288_p2);
assign and_ln42_2_fu_390_p2 = (or_ln42_3_fu_384_p2 & or_ln42_2_fu_366_p2);
assign and_ln42_3_fu_396_p2 = (tmp_5_reg_517 & and_ln42_2_fu_390_p2);
assign and_ln42_fu_288_p2 = (or_ln42_fu_264_p2 & grp_fu_996_p_dout0);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage4;
assign ap_ready = ap_ready_sig;
assign bitcast_ln42_1_fu_235_p1 = min_p_6_reg_485;
assign bitcast_ln42_2_fu_320_p1 = p_2_reg_492;
assign bitcast_ln42_3_fu_337_p1 = min_p_8_reg_510;
assign bitcast_ln42_fu_218_p1 = p_reg_473;
assign grp_fu_996_p_ce = 1'b1;
assign grp_fu_996_p_din0 = grp_fu_117_p0;
assign grp_fu_996_p_din1 = grp_fu_117_p1;
assign grp_fu_996_p_opcode = 5'd4;
assign icmp_ln42_1_fu_258_p2 = ((trunc_ln42_fu_231_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_2_fu_270_p2 = ((tmp_1_fu_238_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_3_fu_276_p2 = ((trunc_ln42_1_fu_248_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_4_fu_354_p2 = ((tmp_3_fu_323_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_5_fu_360_p2 = ((trunc_ln42_2_fu_333_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_6_fu_372_p2 = ((tmp_4_fu_340_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_7_fu_378_p2 = ((trunc_ln42_3_fu_350_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_fu_252_p2 = ((tmp_fu_221_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = zext_ln41_fu_161_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_address0 = zext_ln41_2_fu_199_p1;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln9_1_fu_180_p4 = {{add_ln40_reg_463[6:1]}};
assign min_p_10_fu_401_p3 = ((and_ln42_3_fu_396_p2[0:0] == 1'b1) ? p_2_reg_492 : min_p_8_reg_510);
assign min_p_8_fu_314_p3 = ((and_ln42_1_reg_499[0:0] == 1'b1) ? p_reg_473 : min_p_6_reg_485);
assign min_s_10_fu_414_p3 = ((and_ln42_3_fu_396_p2[0:0] == 1'b1) ? zext_ln42_1_fu_410_p1 : min_s_9_reg_505);
assign min_s_2_out = ((and_ln42_1_reg_499[0:0] == 1'b1) ? zext_ln42_fu_303_p1 : min_s_fu_70);
assign min_s_9_fu_306_p3 = ((and_ln42_1_reg_499[0:0] == 1'b1) ? zext_ln42_fu_303_p1 : min_s_fu_70);
assign or_ln42_1_fu_282_p2 = (icmp_ln42_3_fu_276_p2 | icmp_ln42_2_fu_270_p2);
assign or_ln42_2_fu_366_p2 = (icmp_ln42_5_fu_360_p2 | icmp_ln42_4_fu_354_p2);
assign or_ln42_3_fu_384_p2 = (icmp_ln42_7_fu_378_p2 | icmp_ln42_6_fu_372_p2);
assign or_ln42_fu_264_p2 = (icmp_ln42_fu_252_p2 | icmp_ln42_1_fu_258_p2);
assign tmp_1_fu_238_p4 = {{bitcast_ln42_1_fu_235_p1[62:52]}};
assign tmp_235_cast_fu_153_p3 = {{8'd139}, {tmp_s_fu_143_p4}};
assign tmp_3_fu_323_p4 = {{bitcast_ln42_2_fu_320_p1[62:52]}};
assign tmp_4_fu_340_p4 = {{bitcast_ln42_3_fu_337_p1[62:52]}};
assign tmp_fu_221_p4 = {{bitcast_ln42_fu_218_p1[62:52]}};
assign tmp_s_fu_143_p4 = {{ap_sig_allocacmp_s[5:1]}};
assign trunc_ln42_1_fu_248_p1 = bitcast_ln42_1_fu_235_p1[51:0];
assign trunc_ln42_2_fu_333_p1 = bitcast_ln42_2_fu_320_p1[51:0];
assign trunc_ln42_3_fu_350_p1 = bitcast_ln42_3_fu_337_p1[51:0];
assign trunc_ln42_4_fu_407_p1 = add_ln40_reg_463_pp0_iter1_reg[5:0];
assign trunc_ln42_fu_231_p1 = bitcast_ln42_fu_218_p1[51:0];
assign zext_ln10_fu_139_p1 = ap_sig_allocacmp_s;
assign zext_ln41_1_fu_189_p1 = lshr_ln9_1_fu_180_p4;
assign zext_ln41_2_fu_199_p1 = add_ln41_fu_193_p2;
assign zext_ln41_fu_161_p1 = tmp_235_cast_fu_153_p3;
assign zext_ln42_1_fu_410_p1 = trunc_ln42_4_fu_407_p1;
assign zext_ln42_fu_303_p1 = s_reg_452;
endmodule 