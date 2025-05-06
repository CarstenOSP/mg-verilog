
module SgdLR_sw_SgdLR_sw_Pipeline_label_383 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v3_7_address0,v3_7_ce0,v3_7_we0,v3_7_d0,v3_6_address0,v3_6_ce0,v3_6_we0,v3_6_d0,v3_5_address0,v3_5_ce0,v3_5_we0,v3_5_d0,v3_4_address0,v3_4_ce0,v3_4_we0,v3_4_d0,v3_3_address0,v3_3_ce0,v3_3_we0,v3_3_d0,v3_2_address0,v3_2_ce0,v3_2_we0,v3_2_d0,v3_1_address0,v3_1_ce0,v3_1_we0,v3_1_d0,v3_address0,v3_ce0,v3_we0,v3_d0,v5_3,tmp_1057,v0_address0,v0_ce0,v0_q0,v0_address1,v0_ce1,v0_q1,v22_28,grp_fu_7297_p_din0,grp_fu_7297_p_din1,grp_fu_7297_p_dout0,grp_fu_7297_p_ce,grp_fu_7301_p_din0,grp_fu_7301_p_din1,grp_fu_7301_p_dout0,grp_fu_7301_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] v3_7_address0;
output   v3_7_ce0;
output   v3_7_we0;
output  [31:0] v3_7_d0;
output  [6:0] v3_6_address0;
output   v3_6_ce0;
output   v3_6_we0;
output  [31:0] v3_6_d0;
output  [6:0] v3_5_address0;
output   v3_5_ce0;
output   v3_5_we0;
output  [31:0] v3_5_d0;
output  [6:0] v3_4_address0;
output   v3_4_ce0;
output   v3_4_we0;
output  [31:0] v3_4_d0;
output  [6:0] v3_3_address0;
output   v3_3_ce0;
output   v3_3_we0;
output  [31:0] v3_3_d0;
output  [6:0] v3_2_address0;
output   v3_2_ce0;
output   v3_2_we0;
output  [31:0] v3_2_d0;
output  [6:0] v3_1_address0;
output   v3_1_ce0;
output   v3_1_we0;
output  [31:0] v3_1_d0;
output  [6:0] v3_address0;
output   v3_ce0;
output   v3_we0;
output  [31:0] v3_d0;
input  [1:0] v5_3;
input  [9:0] tmp_1057;
output  [22:0] v0_address0;
output   v0_ce0;
input  [31:0] v0_q0;
output  [22:0] v0_address1;
output   v0_ce1;
input  [31:0] v0_q1;
input  [31:0] v22_28;
output  [31:0] grp_fu_7297_p_din0;
output  [31:0] grp_fu_7297_p_din1;
input  [31:0] grp_fu_7297_p_dout0;
output   grp_fu_7297_p_ce;
output  [31:0] grp_fu_7301_p_din0;
output  [31:0] grp_fu_7301_p_din1;
input  [31:0] grp_fu_7301_p_dout0;
output   grp_fu_7301_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_255_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [2:0] trunc_ln47_fu_263_p1;
reg   [2:0] trunc_ln47_reg_376;
reg   [2:0] trunc_ln47_reg_376_pp0_iter1_reg;
reg   [2:0] trunc_ln47_reg_376_pp0_iter2_reg;
reg   [2:0] trunc_ln47_reg_376_pp0_iter3_reg;
reg   [2:0] trunc_ln47_reg_376_pp0_iter4_reg;
reg   [2:0] trunc_ln47_reg_376_pp0_iter5_reg;
reg   [6:0] lshr_ln48_s_reg_380;
reg   [6:0] lshr_ln48_s_reg_380_pp0_iter1_reg;
reg   [6:0] lshr_ln48_s_reg_380_pp0_iter2_reg;
reg   [6:0] lshr_ln48_s_reg_380_pp0_iter3_reg;
reg   [6:0] lshr_ln48_s_reg_380_pp0_iter4_reg;
reg   [6:0] lshr_ln48_s_reg_380_pp0_iter5_reg;
reg   [31:0] v0_load_reg_395;
reg   [31:0] v0_load_4_reg_400;
wire   [31:0] v23_fu_340_p1;
wire   [31:0] v23_4_fu_344_p1;
reg   [31:0] v24_reg_415;
reg   [31:0] v24_4_reg_423;
wire   [63:0] zext_ln51_fu_297_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln51_4_fu_324_p1;
wire   [63:0] zext_ln48_fu_348_p1;
reg   [10:0] v19_fu_84;
wire   [10:0] add_ln47_fu_329_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v19_4;
reg    v0_ce1_local;
reg    v0_ce0_local;
reg    v3_4_we0_local;
reg    v3_4_ce0_local;
reg    v3_5_we0_local;
reg    v3_5_ce0_local;
reg    v3_2_we0_local;
reg    v3_2_ce0_local;
reg    v3_3_we0_local;
reg    v3_3_ce0_local;
reg    v3_we0_local;
reg    v3_ce0_local;
reg    v3_1_we0_local;
reg    v3_1_ce0_local;
reg    v3_6_we0_local;
reg    v3_6_ce0_local;
reg    v3_7_we0_local;
reg    v3_7_ce0_local;
wire   [63:0] v5_3_cast_fu_243_p1;
wire   [0:0] tmp_91_fu_277_p3;
wire   [22:0] add_ln51_s_fu_285_p5;
wire   [8:0] tmp_s_fu_302_p4;
wire   [22:0] add_ln51_2_fu_312_p5;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
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
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 v19_fu_84 = 11'd0;
#0 ap_done_reg = 1'b0;
end
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((tmp_fu_255_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v19_fu_84 <= add_ln47_fu_329_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v19_fu_84 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln48_s_reg_380 <= {{ap_sig_allocacmp_v19_4[9:3]}};
        lshr_ln48_s_reg_380_pp0_iter1_reg <= lshr_ln48_s_reg_380;
        trunc_ln47_reg_376 <= trunc_ln47_fu_263_p1;
        trunc_ln47_reg_376_pp0_iter1_reg <= trunc_ln47_reg_376;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        lshr_ln48_s_reg_380_pp0_iter2_reg <= lshr_ln48_s_reg_380_pp0_iter1_reg;
        lshr_ln48_s_reg_380_pp0_iter3_reg <= lshr_ln48_s_reg_380_pp0_iter2_reg;
        lshr_ln48_s_reg_380_pp0_iter4_reg <= lshr_ln48_s_reg_380_pp0_iter3_reg;
        lshr_ln48_s_reg_380_pp0_iter5_reg <= lshr_ln48_s_reg_380_pp0_iter4_reg;
        trunc_ln47_reg_376_pp0_iter2_reg <= trunc_ln47_reg_376_pp0_iter1_reg;
        trunc_ln47_reg_376_pp0_iter3_reg <= trunc_ln47_reg_376_pp0_iter2_reg;
        trunc_ln47_reg_376_pp0_iter4_reg <= trunc_ln47_reg_376_pp0_iter3_reg;
        trunc_ln47_reg_376_pp0_iter5_reg <= trunc_ln47_reg_376_pp0_iter4_reg;
        v24_4_reg_423 <= grp_fu_7301_p_dout0;
        v24_reg_415 <= grp_fu_7297_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_load_4_reg_400 <= v0_q0;
        v0_load_reg_395 <= v0_q1;
    end
end
always @ (*) begin
    if (((tmp_fu_255_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v19_4 = 11'd0;
    end else begin
        ap_sig_allocacmp_v19_4 = v19_fu_84;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_ce0_local = 1'b1;
    end else begin
        v0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_ce1_local = 1'b1;
    end else begin
        v0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v3_1_ce0_local = 1'b1;
    end else begin
        v3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln47_reg_376_pp0_iter5_reg == 3'd0))) begin
        v3_1_we0_local = 1'b1;
    end else begin
        v3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v3_2_ce0_local = 1'b1;
    end else begin
        v3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln47_reg_376_pp0_iter5_reg == 3'd2))) begin
        v3_2_we0_local = 1'b1;
    end else begin
        v3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v3_3_ce0_local = 1'b1;
    end else begin
        v3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln47_reg_376_pp0_iter5_reg == 3'd2))) begin
        v3_3_we0_local = 1'b1;
    end else begin
        v3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v3_4_ce0_local = 1'b1;
    end else begin
        v3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln47_reg_376_pp0_iter5_reg == 3'd4))) begin
        v3_4_we0_local = 1'b1;
    end else begin
        v3_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v3_5_ce0_local = 1'b1;
    end else begin
        v3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln47_reg_376_pp0_iter5_reg == 3'd4))) begin
        v3_5_we0_local = 1'b1;
    end else begin
        v3_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v3_6_ce0_local = 1'b1;
    end else begin
        v3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln47_reg_376_pp0_iter5_reg == 3'd0) & ~(trunc_ln47_reg_376_pp0_iter5_reg == 3'd2) & ~(trunc_ln47_reg_376_pp0_iter5_reg == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v3_6_we0_local = 1'b1;
    end else begin
        v3_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v3_7_ce0_local = 1'b1;
    end else begin
        v3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln47_reg_376_pp0_iter5_reg == 3'd0) & ~(trunc_ln47_reg_376_pp0_iter5_reg == 3'd2) & ~(trunc_ln47_reg_376_pp0_iter5_reg == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v3_7_we0_local = 1'b1;
    end else begin
        v3_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (trunc_ln47_reg_376_pp0_iter5_reg == 3'd0))) begin
        v3_we0_local = 1'b1;
    end else begin
        v3_we0_local = 1'b0;
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
assign add_ln47_fu_329_p2 = (ap_sig_allocacmp_v19_4 + 11'd2);
assign add_ln51_2_fu_312_p5 = {{{{tmp_1057}, {3'd4}}, {tmp_s_fu_302_p4}}, {1'd1}};
assign add_ln51_s_fu_285_p5 = {{{{tmp_1057}, {1'd1}}, {tmp_91_fu_277_p3}}, {ap_sig_allocacmp_v19_4}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_7297_p_ce = 1'b1;
assign grp_fu_7297_p_din0 = v22_28;
assign grp_fu_7297_p_din1 = v23_fu_340_p1;
assign grp_fu_7301_p_ce = 1'b1;
assign grp_fu_7301_p_din0 = v22_28;
assign grp_fu_7301_p_din1 = v23_4_fu_344_p1;
assign tmp_91_fu_277_p3 = v5_3_cast_fu_243_p1[32'd1];
assign tmp_fu_255_p3 = ap_sig_allocacmp_v19_4[32'd10];
assign tmp_s_fu_302_p4 = {{ap_sig_allocacmp_v19_4[9:1]}};
assign trunc_ln47_fu_263_p1 = ap_sig_allocacmp_v19_4[2:0];
assign v0_address0 = zext_ln51_4_fu_324_p1;
assign v0_address1 = zext_ln51_fu_297_p1;
assign v0_ce0 = v0_ce0_local;
assign v0_ce1 = v0_ce1_local;
assign v23_4_fu_344_p1 = v0_load_4_reg_400;
assign v23_fu_340_p1 = v0_load_reg_395;
assign v3_1_address0 = zext_ln48_fu_348_p1;
assign v3_1_ce0 = v3_1_ce0_local;
assign v3_1_d0 = v24_4_reg_423;
assign v3_1_we0 = v3_1_we0_local;
assign v3_2_address0 = zext_ln48_fu_348_p1;
assign v3_2_ce0 = v3_2_ce0_local;
assign v3_2_d0 = v24_reg_415;
assign v3_2_we0 = v3_2_we0_local;
assign v3_3_address0 = zext_ln48_fu_348_p1;
assign v3_3_ce0 = v3_3_ce0_local;
assign v3_3_d0 = v24_4_reg_423;
assign v3_3_we0 = v3_3_we0_local;
assign v3_4_address0 = zext_ln48_fu_348_p1;
assign v3_4_ce0 = v3_4_ce0_local;
assign v3_4_d0 = v24_reg_415;
assign v3_4_we0 = v3_4_we0_local;
assign v3_5_address0 = zext_ln48_fu_348_p1;
assign v3_5_ce0 = v3_5_ce0_local;
assign v3_5_d0 = v24_4_reg_423;
assign v3_5_we0 = v3_5_we0_local;
assign v3_6_address0 = zext_ln48_fu_348_p1;
assign v3_6_ce0 = v3_6_ce0_local;
assign v3_6_d0 = v24_reg_415;
assign v3_6_we0 = v3_6_we0_local;
assign v3_7_address0 = zext_ln48_fu_348_p1;
assign v3_7_ce0 = v3_7_ce0_local;
assign v3_7_d0 = v24_4_reg_423;
assign v3_7_we0 = v3_7_we0_local;
assign v3_address0 = zext_ln48_fu_348_p1;
assign v3_ce0 = v3_ce0_local;
assign v3_d0 = v24_reg_415;
assign v3_we0 = v3_we0_local;
assign v5_3_cast_fu_243_p1 = v5_3;
assign zext_ln48_fu_348_p1 = lshr_ln48_s_reg_380_pp0_iter5_reg;
assign zext_ln51_4_fu_324_p1 = add_ln51_2_fu_312_p5;
assign zext_ln51_fu_297_p1 = add_ln51_s_fu_285_p5;
endmodule 
