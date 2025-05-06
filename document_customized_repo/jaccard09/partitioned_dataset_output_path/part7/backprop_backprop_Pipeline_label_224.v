
module backprop_backprop_Pipeline_label_224 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v11_3_address0,v11_3_ce0,v11_3_we0,v11_3_d0,v11_3_address1,v11_3_ce1,v11_3_we1,v11_3_d1,v11_2_address0,v11_2_ce0,v11_2_we0,v11_2_d0,v11_2_address1,v11_2_ce1,v11_2_we1,v11_2_d1,v11_1_address0,v11_1_ce0,v11_1_we0,v11_1_d0,v11_1_address1,v11_1_ce1,v11_1_we1,v11_1_d1,v11_address0,v11_ce0,v11_we0,v11_d0,v11_address1,v11_ce1,v11_we1,v11_d1,v8_address0,v8_ce0,v8_q0,v8_address1,v8_ce1,v8_q1,v126_3,tmp_44,v8_1_address0,v8_1_ce0,v8_1_q0,v8_1_address1,v8_1_ce1,v8_1_q1,v8_2_address0,v8_2_ce0,v8_2_q0,v8_2_address1,v8_2_ce1,v8_2_q1,v8_3_address0,v8_3_ce0,v8_3_q0,v8_3_address1,v8_3_ce1,v8_3_q1,grp_fu_3442_p_din0,grp_fu_3442_p_din1,grp_fu_3442_p_dout0,grp_fu_3442_p_ce,grp_fu_3446_p_din0,grp_fu_3446_p_din1,grp_fu_3446_p_dout0,grp_fu_3446_p_ce,grp_fu_3450_p_din0,grp_fu_3450_p_din1,grp_fu_3450_p_dout0,grp_fu_3450_p_ce,grp_fu_8394_p_din0,grp_fu_8394_p_din1,grp_fu_8394_p_dout0,grp_fu_8394_p_ce,grp_fu_8398_p_din0,grp_fu_8398_p_din1,grp_fu_8398_p_dout0,grp_fu_8398_p_ce,grp_fu_8402_p_din0,grp_fu_8402_p_din1,grp_fu_8402_p_dout0,grp_fu_8402_p_ce,grp_fu_8406_p_din0,grp_fu_8406_p_din1,grp_fu_8406_p_dout0,grp_fu_8406_p_ce,grp_fu_8410_p_din0,grp_fu_8410_p_din1,grp_fu_8410_p_dout0,grp_fu_8410_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] v11_3_address0;
output   v11_3_ce0;
output   v11_3_we0;
output  [63:0] v11_3_d0;
output  [9:0] v11_3_address1;
output   v11_3_ce1;
output   v11_3_we1;
output  [63:0] v11_3_d1;
output  [9:0] v11_2_address0;
output   v11_2_ce0;
output   v11_2_we0;
output  [63:0] v11_2_d0;
output  [9:0] v11_2_address1;
output   v11_2_ce1;
output   v11_2_we1;
output  [63:0] v11_2_d1;
output  [9:0] v11_1_address0;
output   v11_1_ce0;
output   v11_1_we0;
output  [63:0] v11_1_d0;
output  [9:0] v11_1_address1;
output   v11_1_ce1;
output   v11_1_we1;
output  [63:0] v11_1_d1;
output  [9:0] v11_address0;
output   v11_ce0;
output   v11_we0;
output  [63:0] v11_d0;
output  [9:0] v11_address1;
output   v11_ce1;
output   v11_we1;
output  [63:0] v11_d1;
output  [3:0] v8_address0;
output   v8_ce0;
input  [63:0] v8_q0;
output  [3:0] v8_address1;
output   v8_ce1;
input  [63:0] v8_q1;
input  [63:0] v126_3;
input  [3:0] tmp_44;
output  [3:0] v8_1_address0;
output   v8_1_ce0;
input  [63:0] v8_1_q0;
output  [3:0] v8_1_address1;
output   v8_1_ce1;
input  [63:0] v8_1_q1;
output  [3:0] v8_2_address0;
output   v8_2_ce0;
input  [63:0] v8_2_q0;
output  [3:0] v8_2_address1;
output   v8_2_ce1;
input  [63:0] v8_2_q1;
output  [3:0] v8_3_address0;
output   v8_3_ce0;
input  [63:0] v8_3_q0;
output  [3:0] v8_3_address1;
output   v8_3_ce1;
input  [63:0] v8_3_q1;
output  [63:0] grp_fu_3442_p_din0;
output  [63:0] grp_fu_3442_p_din1;
input  [63:0] grp_fu_3442_p_dout0;
output   grp_fu_3442_p_ce;
output  [63:0] grp_fu_3446_p_din0;
output  [63:0] grp_fu_3446_p_din1;
input  [63:0] grp_fu_3446_p_dout0;
output   grp_fu_3446_p_ce;
output  [63:0] grp_fu_3450_p_din0;
output  [63:0] grp_fu_3450_p_din1;
input  [63:0] grp_fu_3450_p_dout0;
output   grp_fu_3450_p_ce;
output  [63:0] grp_fu_8394_p_din0;
output  [63:0] grp_fu_8394_p_din1;
input  [63:0] grp_fu_8394_p_dout0;
output   grp_fu_8394_p_ce;
output  [63:0] grp_fu_8398_p_din0;
output  [63:0] grp_fu_8398_p_din1;
input  [63:0] grp_fu_8398_p_dout0;
output   grp_fu_8398_p_ce;
output  [63:0] grp_fu_8402_p_din0;
output  [63:0] grp_fu_8402_p_din1;
input  [63:0] grp_fu_8402_p_dout0;
output   grp_fu_8402_p_ce;
output  [63:0] grp_fu_8406_p_din0;
output  [63:0] grp_fu_8406_p_din1;
input  [63:0] grp_fu_8406_p_dout0;
output   grp_fu_8406_p_ce;
output  [63:0] grp_fu_8410_p_din0;
output  [63:0] grp_fu_8410_p_din1;
input  [63:0] grp_fu_8410_p_dout0;
output   grp_fu_8410_p_ce;
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
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_328_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] lshr_ln212_3_fu_336_p4;
reg   [3:0] lshr_ln212_3_reg_454;
reg   [3:0] lshr_ln212_3_reg_454_pp0_iter1_reg;
reg   [3:0] lshr_ln212_3_reg_454_pp0_iter2_reg;
reg   [3:0] lshr_ln212_3_reg_454_pp0_iter3_reg;
reg   [3:0] lshr_ln212_3_reg_454_pp0_iter4_reg;
reg   [3:0] lshr_ln212_3_reg_454_pp0_iter5_reg;
reg   [3:0] lshr_ln212_3_reg_454_pp0_iter6_reg;
reg   [3:0] lshr_ln212_3_reg_454_pp0_iter7_reg;
reg   [3:0] lshr_ln212_3_reg_454_pp0_iter8_reg;
wire   [2:0] tmp_s_fu_354_p4;
reg   [2:0] tmp_s_reg_479;
reg   [2:0] tmp_s_reg_479_pp0_iter1_reg;
reg   [2:0] tmp_s_reg_479_pp0_iter2_reg;
reg   [2:0] tmp_s_reg_479_pp0_iter3_reg;
reg   [2:0] tmp_s_reg_479_pp0_iter4_reg;
reg   [2:0] tmp_s_reg_479_pp0_iter5_reg;
reg   [2:0] tmp_s_reg_479_pp0_iter6_reg;
reg   [2:0] tmp_s_reg_479_pp0_iter7_reg;
reg   [2:0] tmp_s_reg_479_pp0_iter8_reg;
reg   [63:0] v128_reg_504;
reg   [63:0] v128_60_reg_509;
reg   [63:0] v128_61_reg_514;
reg   [63:0] v128_62_reg_519;
reg   [63:0] v128_63_reg_524;
reg   [63:0] v128_64_reg_529;
reg   [63:0] v128_65_reg_534;
reg   [63:0] v128_59_reg_539;
reg   [63:0] v129_reg_544;
reg   [63:0] v129_30_reg_549;
reg   [63:0] v129_17_reg_554;
reg   [63:0] v129_18_reg_559;
reg   [63:0] v129_19_reg_564;
reg   [63:0] v129_20_reg_569;
reg   [63:0] v129_21_reg_574;
reg   [63:0] v129_22_reg_579;
wire   [63:0] zext_ln212_fu_346_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln213_fu_372_p1;
wire   [63:0] zext_ln215_fu_399_p1;
wire   [63:0] zext_ln215_5_fu_417_p1;
reg   [6:0] v127_3_fu_72;
wire   [6:0] add_ln212_fu_380_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v127;
reg    v8_ce1_local;
reg    v8_ce0_local;
reg    v8_1_ce1_local;
reg    v8_1_ce0_local;
reg    v8_2_ce1_local;
reg    v8_2_ce0_local;
reg    v8_3_ce1_local;
reg    v8_3_ce0_local;
reg    v11_we1_local;
reg    v11_ce1_local;
reg    v11_we0_local;
reg    v11_ce0_local;
reg    v11_1_we1_local;
reg    v11_1_ce1_local;
reg    v11_1_we0_local;
reg    v11_1_ce0_local;
reg    v11_2_we1_local;
reg    v11_2_ce1_local;
reg    v11_2_we0_local;
reg    v11_2_ce0_local;
reg    v11_3_we1_local;
reg    v11_3_ce1_local;
reg    v11_3_we0_local;
reg    v11_3_ce0_local;
wire   [3:0] or_ln213_3_fu_364_p3;
wire   [9:0] add_ln215_6_fu_391_p4;
wire   [9:0] add_ln215_7_fu_407_p5;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
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
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 v127_3_fu_72 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((tmp_fu_328_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v127_3_fu_72 <= add_ln212_fu_380_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v127_3_fu_72 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln212_3_reg_454 <= {{ap_sig_allocacmp_v127[5:2]}};
        lshr_ln212_3_reg_454_pp0_iter1_reg <= lshr_ln212_3_reg_454;
        tmp_s_reg_479 <= {{ap_sig_allocacmp_v127[5:3]}};
        tmp_s_reg_479_pp0_iter1_reg <= tmp_s_reg_479;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        lshr_ln212_3_reg_454_pp0_iter2_reg <= lshr_ln212_3_reg_454_pp0_iter1_reg;
        lshr_ln212_3_reg_454_pp0_iter3_reg <= lshr_ln212_3_reg_454_pp0_iter2_reg;
        lshr_ln212_3_reg_454_pp0_iter4_reg <= lshr_ln212_3_reg_454_pp0_iter3_reg;
        lshr_ln212_3_reg_454_pp0_iter5_reg <= lshr_ln212_3_reg_454_pp0_iter4_reg;
        lshr_ln212_3_reg_454_pp0_iter6_reg <= lshr_ln212_3_reg_454_pp0_iter5_reg;
        lshr_ln212_3_reg_454_pp0_iter7_reg <= lshr_ln212_3_reg_454_pp0_iter6_reg;
        lshr_ln212_3_reg_454_pp0_iter8_reg <= lshr_ln212_3_reg_454_pp0_iter7_reg;
        tmp_s_reg_479_pp0_iter2_reg <= tmp_s_reg_479_pp0_iter1_reg;
        tmp_s_reg_479_pp0_iter3_reg <= tmp_s_reg_479_pp0_iter2_reg;
        tmp_s_reg_479_pp0_iter4_reg <= tmp_s_reg_479_pp0_iter3_reg;
        tmp_s_reg_479_pp0_iter5_reg <= tmp_s_reg_479_pp0_iter4_reg;
        tmp_s_reg_479_pp0_iter6_reg <= tmp_s_reg_479_pp0_iter5_reg;
        tmp_s_reg_479_pp0_iter7_reg <= tmp_s_reg_479_pp0_iter6_reg;
        tmp_s_reg_479_pp0_iter8_reg <= tmp_s_reg_479_pp0_iter7_reg;
        v129_17_reg_554 <= grp_fu_3450_p_dout0;
        v129_18_reg_559 <= grp_fu_8394_p_dout0;
        v129_19_reg_564 <= grp_fu_8398_p_dout0;
        v129_20_reg_569 <= grp_fu_8402_p_dout0;
        v129_21_reg_574 <= grp_fu_8406_p_dout0;
        v129_22_reg_579 <= grp_fu_8410_p_dout0;
        v129_30_reg_549 <= grp_fu_3446_p_dout0;
        v129_reg_544 <= grp_fu_3442_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v128_59_reg_539 <= v8_3_q0;
        v128_60_reg_509 <= v8_1_q1;
        v128_61_reg_514 <= v8_2_q1;
        v128_62_reg_519 <= v8_3_q1;
        v128_63_reg_524 <= v8_q0;
        v128_64_reg_529 <= v8_1_q0;
        v128_65_reg_534 <= v8_2_q0;
        v128_reg_504 <= v8_q1;
    end
end
always @ (*) begin
    if (((tmp_fu_328_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_v127 = 7'd0;
    end else begin
        ap_sig_allocacmp_v127 = v127_3_fu_72;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v11_1_ce0_local = 1'b1;
    end else begin
        v11_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v11_1_ce1_local = 1'b1;
    end else begin
        v11_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v11_1_we0_local = 1'b1;
    end else begin
        v11_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v11_1_we1_local = 1'b1;
    end else begin
        v11_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v11_2_ce0_local = 1'b1;
    end else begin
        v11_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v11_2_ce1_local = 1'b1;
    end else begin
        v11_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v11_2_we0_local = 1'b1;
    end else begin
        v11_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v11_2_we1_local = 1'b1;
    end else begin
        v11_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v11_3_ce0_local = 1'b1;
    end else begin
        v11_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v11_3_ce1_local = 1'b1;
    end else begin
        v11_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v11_3_we0_local = 1'b1;
    end else begin
        v11_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v11_3_we1_local = 1'b1;
    end else begin
        v11_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v11_ce0_local = 1'b1;
    end else begin
        v11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v11_ce1_local = 1'b1;
    end else begin
        v11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v11_we0_local = 1'b1;
    end else begin
        v11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v11_we1_local = 1'b1;
    end else begin
        v11_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_1_ce0_local = 1'b1;
    end else begin
        v8_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_1_ce1_local = 1'b1;
    end else begin
        v8_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_2_ce0_local = 1'b1;
    end else begin
        v8_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_2_ce1_local = 1'b1;
    end else begin
        v8_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_3_ce0_local = 1'b1;
    end else begin
        v8_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_3_ce1_local = 1'b1;
    end else begin
        v8_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_ce0_local = 1'b1;
    end else begin
        v8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_ce1_local = 1'b1;
    end else begin
        v8_ce1_local = 1'b0;
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
assign add_ln212_fu_380_p2 = (ap_sig_allocacmp_v127 + 7'd8);
assign add_ln215_6_fu_391_p4 = {{{tmp_44}, {2'd3}}, {lshr_ln212_3_reg_454_pp0_iter8_reg}};
assign add_ln215_7_fu_407_p5 = {{{{tmp_44}, {2'd3}}, {tmp_s_reg_479_pp0_iter8_reg}}, {1'd1}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_3442_p_ce = 1'b1;
assign grp_fu_3442_p_din0 = v126_3;
assign grp_fu_3442_p_din1 = v128_reg_504;
assign grp_fu_3446_p_ce = 1'b1;
assign grp_fu_3446_p_din0 = v126_3;
assign grp_fu_3446_p_din1 = v128_60_reg_509;
assign grp_fu_3450_p_ce = 1'b1;
assign grp_fu_3450_p_din0 = v126_3;
assign grp_fu_3450_p_din1 = v128_61_reg_514;
assign grp_fu_8394_p_ce = 1'b1;
assign grp_fu_8394_p_din0 = v126_3;
assign grp_fu_8394_p_din1 = v128_62_reg_519;
assign grp_fu_8398_p_ce = 1'b1;
assign grp_fu_8398_p_din0 = v126_3;
assign grp_fu_8398_p_din1 = v128_63_reg_524;
assign grp_fu_8402_p_ce = 1'b1;
assign grp_fu_8402_p_din0 = v126_3;
assign grp_fu_8402_p_din1 = v128_64_reg_529;
assign grp_fu_8406_p_ce = 1'b1;
assign grp_fu_8406_p_din0 = v126_3;
assign grp_fu_8406_p_din1 = v128_65_reg_534;
assign grp_fu_8410_p_ce = 1'b1;
assign grp_fu_8410_p_din0 = v126_3;
assign grp_fu_8410_p_din1 = v128_59_reg_539;
assign lshr_ln212_3_fu_336_p4 = {{ap_sig_allocacmp_v127[5:2]}};
assign or_ln213_3_fu_364_p3 = {{tmp_s_fu_354_p4}, {1'd1}};
assign tmp_fu_328_p3 = ap_sig_allocacmp_v127[32'd6];
assign tmp_s_fu_354_p4 = {{ap_sig_allocacmp_v127[5:3]}};
assign v11_1_address0 = zext_ln215_5_fu_417_p1;
assign v11_1_address1 = zext_ln215_fu_399_p1;
assign v11_1_ce0 = v11_1_ce0_local;
assign v11_1_ce1 = v11_1_ce1_local;
assign v11_1_d0 = v129_20_reg_569;
assign v11_1_d1 = v129_30_reg_549;
assign v11_1_we0 = v11_1_we0_local;
assign v11_1_we1 = v11_1_we1_local;
assign v11_2_address0 = zext_ln215_5_fu_417_p1;
assign v11_2_address1 = zext_ln215_fu_399_p1;
assign v11_2_ce0 = v11_2_ce0_local;
assign v11_2_ce1 = v11_2_ce1_local;
assign v11_2_d0 = v129_21_reg_574;
assign v11_2_d1 = v129_17_reg_554;
assign v11_2_we0 = v11_2_we0_local;
assign v11_2_we1 = v11_2_we1_local;
assign v11_3_address0 = zext_ln215_5_fu_417_p1;
assign v11_3_address1 = zext_ln215_fu_399_p1;
assign v11_3_ce0 = v11_3_ce0_local;
assign v11_3_ce1 = v11_3_ce1_local;
assign v11_3_d0 = v129_22_reg_579;
assign v11_3_d1 = v129_18_reg_559;
assign v11_3_we0 = v11_3_we0_local;
assign v11_3_we1 = v11_3_we1_local;
assign v11_address0 = zext_ln215_5_fu_417_p1;
assign v11_address1 = zext_ln215_fu_399_p1;
assign v11_ce0 = v11_ce0_local;
assign v11_ce1 = v11_ce1_local;
assign v11_d0 = v129_19_reg_564;
assign v11_d1 = v129_reg_544;
assign v11_we0 = v11_we0_local;
assign v11_we1 = v11_we1_local;
assign v8_1_address0 = zext_ln213_fu_372_p1;
assign v8_1_address1 = zext_ln212_fu_346_p1;
assign v8_1_ce0 = v8_1_ce0_local;
assign v8_1_ce1 = v8_1_ce1_local;
assign v8_2_address0 = zext_ln213_fu_372_p1;
assign v8_2_address1 = zext_ln212_fu_346_p1;
assign v8_2_ce0 = v8_2_ce0_local;
assign v8_2_ce1 = v8_2_ce1_local;
assign v8_3_address0 = zext_ln213_fu_372_p1;
assign v8_3_address1 = zext_ln212_fu_346_p1;
assign v8_3_ce0 = v8_3_ce0_local;
assign v8_3_ce1 = v8_3_ce1_local;
assign v8_address0 = zext_ln213_fu_372_p1;
assign v8_address1 = zext_ln212_fu_346_p1;
assign v8_ce0 = v8_ce0_local;
assign v8_ce1 = v8_ce1_local;
assign zext_ln212_fu_346_p1 = lshr_ln212_3_fu_336_p4;
assign zext_ln213_fu_372_p1 = or_ln213_3_fu_364_p3;
assign zext_ln215_5_fu_417_p1 = add_ln215_7_fu_407_p5;
assign zext_ln215_fu_399_p1 = add_ln215_6_fu_391_p4;
endmodule 
