module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_133,t_1,llike_1_address0,llike_1_ce0,llike_1_q0,zext_ln52,transition_address0,transition_ce0,transition_q0,zext_ln52_2,llike_address0,llike_ce0,llike_q0,min_s_6_out,min_s_6_out_ap_vld,grp_fu_312_p_din0,grp_fu_312_p_din1,grp_fu_312_p_opcode,grp_fu_312_p_dout0,grp_fu_312_p_ce,grp_fu_996_p_din0,grp_fu_996_p_din1,grp_fu_996_p_opcode,grp_fu_996_p_dout0,grp_fu_996_p_ce); 
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
input  [63:0] min_p_133;
input  [7:0] t_1;
output  [12:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
input  [7:0] zext_ln52;
output  [11:0] transition_address0;
output   transition_ce0;
input  [63:0] transition_q0;
input  [12:0] zext_ln52_2;
output  [12:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [7:0] min_s_6_out;
output   min_s_6_out_ap_vld;
output  [63:0] grp_fu_312_p_din0;
output  [63:0] grp_fu_312_p_din1;
output  [1:0] grp_fu_312_p_opcode;
input  [63:0] grp_fu_312_p_dout0;
output   grp_fu_312_p_ce;
output  [63:0] grp_fu_996_p_din0;
output  [63:0] grp_fu_996_p_din1;
output  [4:0] grp_fu_996_p_opcode;
input  [0:0] grp_fu_996_p_dout0;
output   grp_fu_996_p_ce;
reg ap_idle;
reg min_s_6_out_ap_vld;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_subdone;
reg   [0:0] tmp_reg_596;
reg    ap_condition_exit_pp0_iter0_stage4;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_180;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage0_11001;
wire   [11:0] zext_ln52_cast_fu_184_p1;
reg   [11:0] zext_ln52_cast_reg_569;
reg   [5:0] s_reg_574;
reg   [5:0] s_reg_574_pp0_iter1_reg;
reg   [5:0] s_reg_574_pp0_iter2_reg;
wire   [6:0] add_ln53_fu_252_p2;
reg   [6:0] add_ln53_reg_590;
reg   [0:0] tmp_reg_596_pp0_iter1_reg;
reg   [0:0] tmp_reg_596_pp0_iter2_reg;
reg   [63:0] llike_1_load_reg_600;
wire   [5:0] trunc_ln54_fu_289_p1;
reg   [5:0] trunc_ln54_reg_610;
reg   [5:0] trunc_ln54_reg_610_pp0_iter1_reg;
reg   [5:0] trunc_ln54_reg_610_pp0_iter2_reg;
wire   [63:0] bitcast_ln54_fu_310_p1;
reg   [63:0] llike_load_reg_625;
wire   [63:0] bitcast_ln54_1_fu_315_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] p_reg_635;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] min_p_1_reg_642;
reg   [63:0] p_1_reg_649;
wire   [0:0] and_ln55_1_fu_410_p2;
reg   [0:0] and_ln55_1_reg_656;
wire   [7:0] min_s_4_fu_422_p3;
reg   [7:0] min_s_4_reg_662;
wire   [63:0] min_p_3_fu_430_p3;
reg   [63:0] min_p_3_reg_667;
reg   [0:0] tmp_6_reg_674;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
reg    ap_condition_exit_pp0_iter2_stage2;
wire   [63:0] zext_ln54_2_fu_228_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_247_p1;
wire   [63:0] zext_ln54_4_fu_284_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_1_fu_305_p1;
reg   [63:0] min_p_fu_82;
wire   [63:0] min_p_5_fu_517_p3;
wire    ap_loop_init;
reg   [7:0] min_s_fu_86;
wire   [7:0] min_s_5_fu_526_p3;
wire    ap_block_pp0_stage2;
reg   [5:0] min_s_1_fu_90;
wire   [5:0] add_ln53_1_fu_320_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
wire    ap_block_pp0_stage2_01001;
reg    llike_1_ce0_local;
reg    transition_ce0_local;
reg   [11:0] transition_address0_local;
reg    llike_ce0_local;
reg   [63:0] grp_fu_172_p0;
reg   [63:0] grp_fu_172_p1;
wire    ap_block_pp0_stage3;
reg   [63:0] grp_fu_176_p0;
reg   [63:0] grp_fu_176_p1;
wire   [4:0] lshr_ln8_1_fu_210_p4;
wire   [12:0] tmp_s_fu_220_p3;
wire   [11:0] shl_ln2_fu_233_p3;
wire   [11:0] add_ln54_fu_241_p2;
wire   [6:0] zext_ln11_fu_206_p1;
wire   [5:0] lshr_ln9_2_fu_266_p4;
wire   [12:0] zext_ln54_3_fu_275_p1;
wire   [12:0] add_ln54_2_fu_279_p2;
wire   [11:0] shl_ln54_1_fu_292_p3;
wire   [11:0] add_ln54_1_fu_300_p2;
wire    ap_block_pp0_stage4;
wire   [63:0] bitcast_ln55_fu_334_p1;
wire   [63:0] bitcast_ln55_1_fu_351_p1;
wire   [10:0] tmp_1_fu_337_p4;
wire   [51:0] trunc_ln55_fu_347_p1;
wire   [0:0] icmp_ln55_1_fu_374_p2;
wire   [0:0] icmp_ln55_fu_368_p2;
wire   [10:0] tmp_2_fu_354_p4;
wire   [51:0] trunc_ln55_1_fu_364_p1;
wire   [0:0] icmp_ln55_3_fu_392_p2;
wire   [0:0] icmp_ln55_2_fu_386_p2;
wire   [0:0] or_ln55_fu_380_p2;
wire   [0:0] and_ln55_fu_404_p2;
wire   [0:0] or_ln55_1_fu_398_p2;
wire   [7:0] zext_ln55_fu_419_p1;
wire   [63:0] bitcast_ln55_2_fu_436_p1;
wire   [63:0] bitcast_ln55_3_fu_453_p1;
wire   [10:0] tmp_4_fu_439_p4;
wire   [51:0] trunc_ln55_2_fu_449_p1;
wire   [0:0] icmp_ln55_5_fu_476_p2;
wire   [0:0] icmp_ln55_4_fu_470_p2;
wire   [10:0] tmp_5_fu_456_p4;
wire   [51:0] trunc_ln55_3_fu_466_p1;
wire   [0:0] icmp_ln55_7_fu_494_p2;
wire   [0:0] icmp_ln55_6_fu_488_p2;
wire   [0:0] or_ln55_3_fu_500_p2;
wire   [0:0] or_ln55_2_fu_482_p2;
wire   [0:0] and_ln55_2_fu_506_p2;
wire   [0:0] and_ln55_3_fu_512_p2;
wire   [7:0] zext_ln55_1_fu_523_p1;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage2_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [4:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage3_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_82 = 64'd0;
#0 min_s_fu_86 = 8'd0;
#0 min_s_1_fu_90 = 6'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter2_stage2)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage2)))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_fu_82 <= min_p_133;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (tmp_reg_596_pp0_iter2_reg == 1'd0))) begin
        min_p_fu_82 <= min_p_5_fu_517_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_1_fu_90 <= 6'd1;
    end else if (((tmp_reg_596 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        min_s_1_fu_90 <= add_ln53_1_fu_320_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_fu_86 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (tmp_reg_596_pp0_iter2_reg == 1'd0))) begin
        min_s_fu_86 <= min_s_5_fu_526_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_reg_590 <= add_ln53_fu_252_p2;
        min_p_1_reg_642 <= min_p_fu_82;
        s_reg_574 <= ap_sig_allocacmp_s;
        s_reg_574_pp0_iter1_reg <= s_reg_574;
        s_reg_574_pp0_iter2_reg <= s_reg_574_pp0_iter1_reg;
        tmp_reg_596 <= add_ln53_fu_252_p2[32'd6];
        tmp_reg_596_pp0_iter1_reg <= tmp_reg_596;
        tmp_reg_596_pp0_iter2_reg <= tmp_reg_596_pp0_iter1_reg;
        zext_ln52_cast_reg_569[7 : 0] <= zext_ln52_cast_fu_184_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        and_ln55_1_reg_656 <= and_ln55_1_fu_410_p2;
        llike_1_load_reg_600 <= llike_1_q0;
        trunc_ln54_reg_610 <= trunc_ln54_fu_289_p1;
        trunc_ln54_reg_610_pp0_iter1_reg <= trunc_ln54_reg_610;
        trunc_ln54_reg_610_pp0_iter2_reg <= trunc_ln54_reg_610_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_load_reg_625 <= llike_q0;
        min_p_3_reg_667 <= min_p_3_fu_430_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        min_s_4_reg_662 <= min_s_4_fu_422_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_1_reg_649 <= grp_fu_312_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        p_reg_635 <= grp_fu_312_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_180 <= transition_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_6_reg_674 <= grp_fu_996_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_596 == 1'd1) & (1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_reg_596_pp0_iter2_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter2_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s = 6'd1;
    end else begin
        ap_sig_allocacmp_s = min_s_1_fu_90;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_172_p0 = llike_load_reg_625;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_172_p0 = llike_1_load_reg_600;
        end else begin
            grp_fu_172_p0 = 'bx;
        end
    end else begin
        grp_fu_172_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_172_p1 = bitcast_ln54_1_fu_315_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_172_p1 = bitcast_ln54_fu_310_p1;
        end else begin
            grp_fu_172_p1 = 'bx;
        end
    end else begin
        grp_fu_172_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_176_p0 = p_1_reg_649;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_176_p0 = p_reg_635;
        end else begin
            grp_fu_176_p0 = 'bx;
        end
    end else begin
        grp_fu_176_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_176_p1 = min_p_3_fu_430_p3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_176_p1 = min_p_fu_82;
        end else begin
            grp_fu_176_p1 = 'bx;
        end
    end else begin
        grp_fu_176_p1 = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_reg_596_pp0_iter2_reg == 1'd1))) begin
        min_s_6_out_ap_vld = 1'b1;
    end else begin
        min_s_6_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_address0_local = zext_ln54_1_fu_305_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_address0_local = zext_ln54_fu_247_p1;
        end else begin
            transition_address0_local = 'bx;
        end
    end else begin
        transition_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_ce0_local = 1'b1;
    end else begin
        transition_ce0_local = 1'b0;
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
            if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
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
assign add_ln53_1_fu_320_p2 = (s_reg_574 + 6'd2);
assign add_ln53_fu_252_p2 = (zext_ln11_fu_206_p1 + 7'd1);
assign add_ln54_1_fu_300_p2 = (shl_ln54_1_fu_292_p3 + zext_ln52_cast_reg_569);
assign add_ln54_2_fu_279_p2 = (zext_ln52_2 + zext_ln54_3_fu_275_p1);
assign add_ln54_fu_241_p2 = (shl_ln2_fu_233_p3 + zext_ln52_cast_fu_184_p1);
assign and_ln55_1_fu_410_p2 = (or_ln55_1_fu_398_p2 & and_ln55_fu_404_p2);
assign and_ln55_2_fu_506_p2 = (or_ln55_3_fu_500_p2 & or_ln55_2_fu_482_p2);
assign and_ln55_3_fu_512_p2 = (tmp_6_reg_674 & and_ln55_2_fu_506_p2);
assign and_ln55_fu_404_p2 = (or_ln55_fu_380_p2 & grp_fu_996_p_dout0);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage4;
assign ap_ready = ap_ready_sig;
assign bitcast_ln54_1_fu_315_p1 = reg_180;
assign bitcast_ln54_fu_310_p1 = reg_180;
assign bitcast_ln55_1_fu_351_p1 = min_p_1_reg_642;
assign bitcast_ln55_2_fu_436_p1 = p_1_reg_649;
assign bitcast_ln55_3_fu_453_p1 = min_p_3_reg_667;
assign bitcast_ln55_fu_334_p1 = p_reg_635;
assign grp_fu_312_p_ce = 1'b1;
assign grp_fu_312_p_din0 = grp_fu_172_p0;
assign grp_fu_312_p_din1 = grp_fu_172_p1;
assign grp_fu_312_p_opcode = 2'd0;
assign grp_fu_996_p_ce = 1'b1;
assign grp_fu_996_p_din0 = grp_fu_176_p0;
assign grp_fu_996_p_din1 = grp_fu_176_p1;
assign grp_fu_996_p_opcode = 5'd4;
assign icmp_ln55_1_fu_374_p2 = ((trunc_ln55_fu_347_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_386_p2 = ((tmp_2_fu_354_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_392_p2 = ((trunc_ln55_1_fu_364_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_470_p2 = ((tmp_4_fu_439_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_476_p2 = ((trunc_ln55_2_fu_449_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_488_p2 = ((tmp_5_fu_456_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_494_p2 = ((trunc_ln55_3_fu_466_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_368_p2 = ((tmp_1_fu_337_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = zext_ln54_2_fu_228_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_address0 = zext_ln54_4_fu_284_p1;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln8_1_fu_210_p4 = {{ap_sig_allocacmp_s[5:1]}};
assign lshr_ln9_2_fu_266_p4 = {{add_ln53_reg_590[6:1]}};
assign min_p_3_fu_430_p3 = ((and_ln55_1_reg_656[0:0] == 1'b1) ? p_reg_635 : min_p_1_reg_642);
assign min_p_5_fu_517_p3 = ((and_ln55_3_fu_512_p2[0:0] == 1'b1) ? p_1_reg_649 : min_p_3_reg_667);
assign min_s_4_fu_422_p3 = ((and_ln55_1_reg_656[0:0] == 1'b1) ? zext_ln55_fu_419_p1 : min_s_fu_86);
assign min_s_5_fu_526_p3 = ((and_ln55_3_fu_512_p2[0:0] == 1'b1) ? zext_ln55_1_fu_523_p1 : min_s_4_reg_662);
assign min_s_6_out = ((and_ln55_1_reg_656[0:0] == 1'b1) ? zext_ln55_fu_419_p1 : min_s_fu_86);
assign or_ln55_1_fu_398_p2 = (icmp_ln55_3_fu_392_p2 | icmp_ln55_2_fu_386_p2);
assign or_ln55_2_fu_482_p2 = (icmp_ln55_5_fu_476_p2 | icmp_ln55_4_fu_470_p2);
assign or_ln55_3_fu_500_p2 = (icmp_ln55_7_fu_494_p2 | icmp_ln55_6_fu_488_p2);
assign or_ln55_fu_380_p2 = (icmp_ln55_fu_368_p2 | icmp_ln55_1_fu_374_p2);
assign shl_ln2_fu_233_p3 = {{ap_sig_allocacmp_s}, {6'd0}};
assign shl_ln54_1_fu_292_p3 = {{trunc_ln54_fu_289_p1}, {6'd0}};
assign tmp_1_fu_337_p4 = {{bitcast_ln55_fu_334_p1[62:52]}};
assign tmp_2_fu_354_p4 = {{bitcast_ln55_1_fu_351_p1[62:52]}};
assign tmp_4_fu_439_p4 = {{bitcast_ln55_2_fu_436_p1[62:52]}};
assign tmp_5_fu_456_p4 = {{bitcast_ln55_3_fu_453_p1[62:52]}};
assign tmp_s_fu_220_p3 = {{t_1}, {lshr_ln8_1_fu_210_p4}};
assign transition_address0 = transition_address0_local;
assign transition_ce0 = transition_ce0_local;
assign trunc_ln54_fu_289_p1 = add_ln53_reg_590[5:0];
assign trunc_ln55_1_fu_364_p1 = bitcast_ln55_1_fu_351_p1[51:0];
assign trunc_ln55_2_fu_449_p1 = bitcast_ln55_2_fu_436_p1[51:0];
assign trunc_ln55_3_fu_466_p1 = bitcast_ln55_3_fu_453_p1[51:0];
assign trunc_ln55_fu_347_p1 = bitcast_ln55_fu_334_p1[51:0];
assign zext_ln11_fu_206_p1 = ap_sig_allocacmp_s;
assign zext_ln52_cast_fu_184_p1 = zext_ln52;
assign zext_ln54_1_fu_305_p1 = add_ln54_1_fu_300_p2;
assign zext_ln54_2_fu_228_p1 = tmp_s_fu_220_p3;
assign zext_ln54_3_fu_275_p1 = lshr_ln9_2_fu_266_p4;
assign zext_ln54_4_fu_284_p1 = add_ln54_2_fu_279_p2;
assign zext_ln54_fu_247_p1 = add_ln54_fu_241_p2;
assign zext_ln55_1_fu_523_p1 = trunc_ln54_reg_610_pp0_iter2_reg;
assign zext_ln55_fu_419_p1 = s_reg_574_pp0_iter2_reg;
always @ (posedge ap_clk) begin
    zext_ln52_cast_reg_569[11:8] <= 4'b0000;
end
endmodule 