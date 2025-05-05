module backprop_backprop_Pipeline_label_222 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v11_3_address0,v11_3_ce0,v11_3_we0,v11_3_d0,v11_3_address1,v11_3_ce1,v11_3_we1,v11_3_d1,v11_2_address0,v11_2_ce0,v11_2_we0,v11_2_d0,v11_2_address1,v11_2_ce1,v11_2_we1,v11_2_d1,v11_1_address0,v11_1_ce0,v11_1_we0,v11_1_d0,v11_1_address1,v11_1_ce1,v11_1_we1,v11_1_d1,v11_address0,v11_ce0,v11_we0,v11_d0,v11_address1,v11_ce1,v11_we1,v11_d1,v8_address0,v8_ce0,v8_q0,v8_address1,v8_ce1,v8_q1,v126_1,v125,v8_1_address0,v8_1_ce0,v8_1_q0,v8_1_address1,v8_1_ce1,v8_1_q1,v8_2_address0,v8_2_ce0,v8_2_q0,v8_2_address1,v8_2_ce1,v8_2_q1,v8_3_address0,v8_3_ce0,v8_3_q0,v8_3_address1,v8_3_ce1,v8_3_q1,tmp_45,grp_fu_2891_p_din0,grp_fu_2891_p_din1,grp_fu_2891_p_dout0,grp_fu_2891_p_ce,grp_fu_2895_p_din0,grp_fu_2895_p_din1,grp_fu_2895_p_dout0,grp_fu_2895_p_ce,grp_fu_2899_p_din0,grp_fu_2899_p_din1,grp_fu_2899_p_dout0,grp_fu_2899_p_ce,grp_fu_6977_p_din0,grp_fu_6977_p_din1,grp_fu_6977_p_dout0,grp_fu_6977_p_ce,grp_fu_6981_p_din0,grp_fu_6981_p_din1,grp_fu_6981_p_dout0,grp_fu_6981_p_ce,grp_fu_6985_p_din0,grp_fu_6985_p_din1,grp_fu_6985_p_dout0,grp_fu_6985_p_ce,grp_fu_6989_p_din0,grp_fu_6989_p_din1,grp_fu_6989_p_dout0,grp_fu_6989_p_ce,grp_fu_6993_p_din0,grp_fu_6993_p_din1,grp_fu_6993_p_dout0,grp_fu_6993_p_ce); 
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
input  [63:0] v126_1;
input  [5:0] v125;
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
input  [4:0] tmp_45;
output  [63:0] grp_fu_2891_p_din0;
output  [63:0] grp_fu_2891_p_din1;
input  [63:0] grp_fu_2891_p_dout0;
output   grp_fu_2891_p_ce;
output  [63:0] grp_fu_2895_p_din0;
output  [63:0] grp_fu_2895_p_din1;
input  [63:0] grp_fu_2895_p_dout0;
output   grp_fu_2895_p_ce;
output  [63:0] grp_fu_2899_p_din0;
output  [63:0] grp_fu_2899_p_din1;
input  [63:0] grp_fu_2899_p_dout0;
output   grp_fu_2899_p_ce;
output  [63:0] grp_fu_6977_p_din0;
output  [63:0] grp_fu_6977_p_din1;
input  [63:0] grp_fu_6977_p_dout0;
output   grp_fu_6977_p_ce;
output  [63:0] grp_fu_6981_p_din0;
output  [63:0] grp_fu_6981_p_din1;
input  [63:0] grp_fu_6981_p_dout0;
output   grp_fu_6981_p_ce;
output  [63:0] grp_fu_6985_p_din0;
output  [63:0] grp_fu_6985_p_din1;
input  [63:0] grp_fu_6985_p_dout0;
output   grp_fu_6985_p_ce;
output  [63:0] grp_fu_6989_p_din0;
output  [63:0] grp_fu_6989_p_din1;
input  [63:0] grp_fu_6989_p_dout0;
output   grp_fu_6989_p_ce;
output  [63:0] grp_fu_6993_p_din0;
output  [63:0] grp_fu_6993_p_din1;
input  [63:0] grp_fu_6993_p_dout0;
output   grp_fu_6993_p_ce;
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
wire   [0:0] tmp_fu_340_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] lshr_ln212_1_fu_348_p4;
reg   [3:0] lshr_ln212_1_reg_480;
reg   [3:0] lshr_ln212_1_reg_480_pp0_iter1_reg;
reg   [3:0] lshr_ln212_1_reg_480_pp0_iter2_reg;
reg   [3:0] lshr_ln212_1_reg_480_pp0_iter3_reg;
reg   [3:0] lshr_ln212_1_reg_480_pp0_iter4_reg;
reg   [3:0] lshr_ln212_1_reg_480_pp0_iter5_reg;
reg   [3:0] lshr_ln212_1_reg_480_pp0_iter6_reg;
reg   [3:0] lshr_ln212_1_reg_480_pp0_iter7_reg;
reg   [3:0] lshr_ln212_1_reg_480_pp0_iter8_reg;
wire   [2:0] tmp_8_fu_366_p4;
reg   [2:0] tmp_8_reg_505;
reg   [2:0] tmp_8_reg_505_pp0_iter1_reg;
reg   [2:0] tmp_8_reg_505_pp0_iter2_reg;
reg   [2:0] tmp_8_reg_505_pp0_iter3_reg;
reg   [2:0] tmp_8_reg_505_pp0_iter4_reg;
reg   [2:0] tmp_8_reg_505_pp0_iter5_reg;
reg   [2:0] tmp_8_reg_505_pp0_iter6_reg;
reg   [2:0] tmp_8_reg_505_pp0_iter7_reg;
reg   [2:0] tmp_8_reg_505_pp0_iter8_reg;
reg   [63:0] v128_reg_530;
reg   [63:0] v128_80_reg_535;
reg   [63:0] v128_81_reg_540;
reg   [63:0] v128_82_reg_545;
reg   [63:0] v128_83_reg_550;
reg   [63:0] v128_84_reg_555;
reg   [63:0] v128_85_reg_560;
reg   [63:0] v128_79_reg_565;
reg   [63:0] v129_8_reg_570;
reg   [63:0] v129_9_reg_575;
reg   [63:0] v129_reg_580;
reg   [63:0] v129_10_reg_585;
reg   [63:0] v129_11_reg_590;
reg   [63:0] v129_12_reg_595;
reg   [63:0] v129_13_reg_600;
reg   [63:0] v129_15_reg_605;
wire   [63:0] zext_ln212_1_fu_358_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln213_fu_384_p1;
wire   [63:0] zext_ln215_2_fu_421_p1;
wire   [63:0] zext_ln215_3_fu_439_p1;
reg   [6:0] v127_1_fu_78;
wire   [6:0] add_ln212_fu_392_p2;
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
wire   [3:0] or_ln213_1_fu_376_p3;
wire   [3:0] tmp_s_fu_403_p4;
wire   [9:0] add_ln215_2_fu_412_p4;
wire   [9:0] add_ln215_3_fu_429_p5;
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
#0 v127_1_fu_78 = 7'd0;
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
        if (((tmp_fu_340_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v127_1_fu_78 <= add_ln212_fu_392_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v127_1_fu_78 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln212_1_reg_480 <= {{ap_sig_allocacmp_v127[5:2]}};
        lshr_ln212_1_reg_480_pp0_iter1_reg <= lshr_ln212_1_reg_480;
        tmp_8_reg_505 <= {{ap_sig_allocacmp_v127[5:3]}};
        tmp_8_reg_505_pp0_iter1_reg <= tmp_8_reg_505;
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
        lshr_ln212_1_reg_480_pp0_iter2_reg <= lshr_ln212_1_reg_480_pp0_iter1_reg;
        lshr_ln212_1_reg_480_pp0_iter3_reg <= lshr_ln212_1_reg_480_pp0_iter2_reg;
        lshr_ln212_1_reg_480_pp0_iter4_reg <= lshr_ln212_1_reg_480_pp0_iter3_reg;
        lshr_ln212_1_reg_480_pp0_iter5_reg <= lshr_ln212_1_reg_480_pp0_iter4_reg;
        lshr_ln212_1_reg_480_pp0_iter6_reg <= lshr_ln212_1_reg_480_pp0_iter5_reg;
        lshr_ln212_1_reg_480_pp0_iter7_reg <= lshr_ln212_1_reg_480_pp0_iter6_reg;
        lshr_ln212_1_reg_480_pp0_iter8_reg <= lshr_ln212_1_reg_480_pp0_iter7_reg;
        tmp_8_reg_505_pp0_iter2_reg <= tmp_8_reg_505_pp0_iter1_reg;
        tmp_8_reg_505_pp0_iter3_reg <= tmp_8_reg_505_pp0_iter2_reg;
        tmp_8_reg_505_pp0_iter4_reg <= tmp_8_reg_505_pp0_iter3_reg;
        tmp_8_reg_505_pp0_iter5_reg <= tmp_8_reg_505_pp0_iter4_reg;
        tmp_8_reg_505_pp0_iter6_reg <= tmp_8_reg_505_pp0_iter5_reg;
        tmp_8_reg_505_pp0_iter7_reg <= tmp_8_reg_505_pp0_iter6_reg;
        tmp_8_reg_505_pp0_iter8_reg <= tmp_8_reg_505_pp0_iter7_reg;
        v129_10_reg_585 <= grp_fu_6977_p_dout0;
        v129_11_reg_590 <= grp_fu_6981_p_dout0;
        v129_12_reg_595 <= grp_fu_6985_p_dout0;
        v129_13_reg_600 <= grp_fu_6989_p_dout0;
        v129_15_reg_605 <= grp_fu_6993_p_dout0;
        v129_8_reg_570 <= grp_fu_2891_p_dout0;
        v129_9_reg_575 <= grp_fu_2895_p_dout0;
        v129_reg_580 <= grp_fu_2899_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v128_79_reg_565 <= v8_3_q0;
        v128_80_reg_535 <= v8_1_q1;
        v128_81_reg_540 <= v8_2_q1;
        v128_82_reg_545 <= v8_3_q1;
        v128_83_reg_550 <= v8_q0;
        v128_84_reg_555 <= v8_1_q0;
        v128_85_reg_560 <= v8_2_q0;
        v128_reg_530 <= v8_q1;
    end
end
always @ (*) begin
    if (((tmp_fu_340_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_v127 = v127_1_fu_78;
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
assign add_ln212_fu_392_p2 = (ap_sig_allocacmp_v127 + 7'd8);
assign add_ln215_2_fu_412_p4 = {{{tmp_s_fu_403_p4}, {2'd1}}, {lshr_ln212_1_reg_480_pp0_iter8_reg}};
assign add_ln215_3_fu_429_p5 = {{{{tmp_45}, {1'd1}}, {tmp_8_reg_505_pp0_iter8_reg}}, {1'd1}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_2891_p_ce = 1'b1;
assign grp_fu_2891_p_din0 = v126_1;
assign grp_fu_2891_p_din1 = v128_reg_530;
assign grp_fu_2895_p_ce = 1'b1;
assign grp_fu_2895_p_din0 = v126_1;
assign grp_fu_2895_p_din1 = v128_80_reg_535;
assign grp_fu_2899_p_ce = 1'b1;
assign grp_fu_2899_p_din0 = v126_1;
assign grp_fu_2899_p_din1 = v128_81_reg_540;
assign grp_fu_6977_p_ce = 1'b1;
assign grp_fu_6977_p_din0 = v126_1;
assign grp_fu_6977_p_din1 = v128_82_reg_545;
assign grp_fu_6981_p_ce = 1'b1;
assign grp_fu_6981_p_din0 = v126_1;
assign grp_fu_6981_p_din1 = v128_83_reg_550;
assign grp_fu_6985_p_ce = 1'b1;
assign grp_fu_6985_p_din0 = v126_1;
assign grp_fu_6985_p_din1 = v128_84_reg_555;
assign grp_fu_6989_p_ce = 1'b1;
assign grp_fu_6989_p_din0 = v126_1;
assign grp_fu_6989_p_din1 = v128_85_reg_560;
assign grp_fu_6993_p_ce = 1'b1;
assign grp_fu_6993_p_din0 = v126_1;
assign grp_fu_6993_p_din1 = v128_79_reg_565;
assign lshr_ln212_1_fu_348_p4 = {{ap_sig_allocacmp_v127[5:2]}};
assign or_ln213_1_fu_376_p3 = {{tmp_8_fu_366_p4}, {1'd1}};
assign tmp_8_fu_366_p4 = {{ap_sig_allocacmp_v127[5:3]}};
assign tmp_fu_340_p3 = ap_sig_allocacmp_v127[32'd6];
assign tmp_s_fu_403_p4 = {{v125[5:2]}};
assign v11_1_address0 = zext_ln215_3_fu_439_p1;
assign v11_1_address1 = zext_ln215_2_fu_421_p1;
assign v11_1_ce0 = v11_1_ce0_local;
assign v11_1_ce1 = v11_1_ce1_local;
assign v11_1_d0 = v129_12_reg_595;
assign v11_1_d1 = v129_9_reg_575;
assign v11_1_we0 = v11_1_we0_local;
assign v11_1_we1 = v11_1_we1_local;
assign v11_2_address0 = zext_ln215_3_fu_439_p1;
assign v11_2_address1 = zext_ln215_2_fu_421_p1;
assign v11_2_ce0 = v11_2_ce0_local;
assign v11_2_ce1 = v11_2_ce1_local;
assign v11_2_d0 = v129_13_reg_600;
assign v11_2_d1 = v129_reg_580;
assign v11_2_we0 = v11_2_we0_local;
assign v11_2_we1 = v11_2_we1_local;
assign v11_3_address0 = zext_ln215_3_fu_439_p1;
assign v11_3_address1 = zext_ln215_2_fu_421_p1;
assign v11_3_ce0 = v11_3_ce0_local;
assign v11_3_ce1 = v11_3_ce1_local;
assign v11_3_d0 = v129_15_reg_605;
assign v11_3_d1 = v129_10_reg_585;
assign v11_3_we0 = v11_3_we0_local;
assign v11_3_we1 = v11_3_we1_local;
assign v11_address0 = zext_ln215_3_fu_439_p1;
assign v11_address1 = zext_ln215_2_fu_421_p1;
assign v11_ce0 = v11_ce0_local;
assign v11_ce1 = v11_ce1_local;
assign v11_d0 = v129_11_reg_590;
assign v11_d1 = v129_8_reg_570;
assign v11_we0 = v11_we0_local;
assign v11_we1 = v11_we1_local;
assign v8_1_address0 = zext_ln213_fu_384_p1;
assign v8_1_address1 = zext_ln212_1_fu_358_p1;
assign v8_1_ce0 = v8_1_ce0_local;
assign v8_1_ce1 = v8_1_ce1_local;
assign v8_2_address0 = zext_ln213_fu_384_p1;
assign v8_2_address1 = zext_ln212_1_fu_358_p1;
assign v8_2_ce0 = v8_2_ce0_local;
assign v8_2_ce1 = v8_2_ce1_local;
assign v8_3_address0 = zext_ln213_fu_384_p1;
assign v8_3_address1 = zext_ln212_1_fu_358_p1;
assign v8_3_ce0 = v8_3_ce0_local;
assign v8_3_ce1 = v8_3_ce1_local;
assign v8_address0 = zext_ln213_fu_384_p1;
assign v8_address1 = zext_ln212_1_fu_358_p1;
assign v8_ce0 = v8_ce0_local;
assign v8_ce1 = v8_ce1_local;
assign zext_ln212_1_fu_358_p1 = lshr_ln212_1_fu_348_p4;
assign zext_ln213_fu_384_p1 = or_ln213_1_fu_376_p3;
assign zext_ln215_2_fu_421_p1 = add_ln215_2_fu_412_p4;
assign zext_ln215_3_fu_439_p1 = add_ln215_3_fu_429_p5;
endmodule 