module backprop_backprop_Pipeline_label_222 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v11_3_address0,v11_3_ce0,v11_3_we0,v11_3_d0,v11_3_address1,v11_3_ce1,v11_3_we1,v11_3_d1,v11_2_address0,v11_2_ce0,v11_2_we0,v11_2_d0,v11_2_address1,v11_2_ce1,v11_2_we1,v11_2_d1,v11_1_address0,v11_1_ce0,v11_1_we0,v11_1_d0,v11_1_address1,v11_1_ce1,v11_1_we1,v11_1_d1,v11_address0,v11_ce0,v11_we0,v11_d0,v11_address1,v11_ce1,v11_we1,v11_d1,v8_address0,v8_ce0,v8_q0,v8_address1,v8_ce1,v8_q1,v126_2,p_udiv219,v8_1_address0,v8_1_ce0,v8_1_q0,v8_1_address1,v8_1_ce1,v8_1_q1,v8_2_address0,v8_2_ce0,v8_2_q0,v8_2_address1,v8_2_ce1,v8_2_q1,v8_3_address0,v8_3_ce0,v8_3_q0,v8_3_address1,v8_3_ce1,v8_3_q1,grp_fu_3697_p_din0,grp_fu_3697_p_din1,grp_fu_3697_p_dout0,grp_fu_3697_p_ce,grp_fu_3701_p_din0,grp_fu_3701_p_din1,grp_fu_3701_p_dout0,grp_fu_3701_p_ce,grp_fu_3705_p_din0,grp_fu_3705_p_din1,grp_fu_3705_p_dout0,grp_fu_3705_p_ce,grp_fu_8471_p_din0,grp_fu_8471_p_din1,grp_fu_8471_p_dout0,grp_fu_8471_p_ce,grp_fu_8475_p_din0,grp_fu_8475_p_din1,grp_fu_8475_p_dout0,grp_fu_8475_p_ce,grp_fu_8479_p_din0,grp_fu_8479_p_din1,grp_fu_8479_p_dout0,grp_fu_8479_p_ce,grp_fu_8483_p_din0,grp_fu_8483_p_din1,grp_fu_8483_p_dout0,grp_fu_8483_p_ce,grp_fu_8487_p_din0,grp_fu_8487_p_din1,grp_fu_8487_p_dout0,grp_fu_8487_p_ce); 
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
input  [63:0] v126_2;
input  [9:0] p_udiv219;
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
output  [63:0] grp_fu_3697_p_din0;
output  [63:0] grp_fu_3697_p_din1;
input  [63:0] grp_fu_3697_p_dout0;
output   grp_fu_3697_p_ce;
output  [63:0] grp_fu_3701_p_din0;
output  [63:0] grp_fu_3701_p_din1;
input  [63:0] grp_fu_3701_p_dout0;
output   grp_fu_3701_p_ce;
output  [63:0] grp_fu_3705_p_din0;
output  [63:0] grp_fu_3705_p_din1;
input  [63:0] grp_fu_3705_p_dout0;
output   grp_fu_3705_p_ce;
output  [63:0] grp_fu_8471_p_din0;
output  [63:0] grp_fu_8471_p_din1;
input  [63:0] grp_fu_8471_p_dout0;
output   grp_fu_8471_p_ce;
output  [63:0] grp_fu_8475_p_din0;
output  [63:0] grp_fu_8475_p_din1;
input  [63:0] grp_fu_8475_p_dout0;
output   grp_fu_8475_p_ce;
output  [63:0] grp_fu_8479_p_din0;
output  [63:0] grp_fu_8479_p_din1;
input  [63:0] grp_fu_8479_p_dout0;
output   grp_fu_8479_p_ce;
output  [63:0] grp_fu_8483_p_din0;
output  [63:0] grp_fu_8483_p_din1;
input  [63:0] grp_fu_8483_p_dout0;
output   grp_fu_8483_p_ce;
output  [63:0] grp_fu_8487_p_din0;
output  [63:0] grp_fu_8487_p_din1;
input  [63:0] grp_fu_8487_p_dout0;
output   grp_fu_8487_p_ce;
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
reg    ap_enable_reg_pp0_iter10;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_332_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] lshr_ln212_2_fu_340_p4;
reg   [3:0] lshr_ln212_2_reg_462;
reg   [3:0] lshr_ln212_2_reg_462_pp0_iter1_reg;
reg   [3:0] lshr_ln212_2_reg_462_pp0_iter2_reg;
reg   [3:0] lshr_ln212_2_reg_462_pp0_iter3_reg;
reg   [3:0] lshr_ln212_2_reg_462_pp0_iter4_reg;
reg   [3:0] lshr_ln212_2_reg_462_pp0_iter5_reg;
reg   [3:0] lshr_ln212_2_reg_462_pp0_iter6_reg;
reg   [3:0] lshr_ln212_2_reg_462_pp0_iter7_reg;
reg   [3:0] lshr_ln212_2_reg_462_pp0_iter8_reg;
reg   [2:0] tmp_4_reg_487;
reg   [2:0] tmp_4_reg_487_pp0_iter1_reg;
reg   [2:0] tmp_4_reg_487_pp0_iter2_reg;
reg   [2:0] tmp_4_reg_487_pp0_iter3_reg;
reg   [2:0] tmp_4_reg_487_pp0_iter4_reg;
reg   [2:0] tmp_4_reg_487_pp0_iter5_reg;
reg   [2:0] tmp_4_reg_487_pp0_iter6_reg;
reg   [2:0] tmp_4_reg_487_pp0_iter7_reg;
reg   [2:0] tmp_4_reg_487_pp0_iter8_reg;
reg   [2:0] tmp_4_reg_487_pp0_iter9_reg;
reg   [63:0] v128_reg_493;
reg   [63:0] v128_73_reg_518;
reg   [63:0] v128_74_reg_523;
reg   [63:0] v128_75_reg_528;
reg   [63:0] v128_76_reg_533;
reg   [63:0] v128_77_reg_538;
reg   [63:0] v128_78_reg_543;
reg   [63:0] v128_72_reg_548;
reg   [63:0] v129_16_reg_553;
reg   [63:0] v129_14_reg_558;
reg   [63:0] v129_17_reg_563;
reg   [63:0] v129_18_reg_568;
wire   [5:0] tmp_s_fu_394_p4;
reg   [5:0] tmp_s_reg_573;
reg   [63:0] v129_19_reg_578;
reg   [63:0] v129_20_reg_583;
reg   [63:0] v129_21_reg_588;
reg   [63:0] v129_reg_593;
wire   [63:0] zext_ln212_fu_350_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln213_fu_386_p1;
wire   [63:0] zext_ln215_4_fu_410_p1;
wire   [63:0] zext_ln215_5_fu_426_p1;
reg   [6:0] v127_2_fu_76;
wire   [6:0] add_ln212_fu_368_p2;
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
wire   [3:0] or_ln213_2_fu_379_p3;
wire   [9:0] add_ln215_4_fu_403_p3;
wire   [9:0] add_ln215_5_fu_418_p4;
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
reg    ap_loop_exit_ready_pp0_iter9_reg;
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
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 v127_2_fu_76 = 7'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
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
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
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
        if (((tmp_fu_332_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v127_2_fu_76 <= add_ln212_fu_368_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v127_2_fu_76 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln212_2_reg_462 <= {{ap_sig_allocacmp_v127[5:2]}};
        lshr_ln212_2_reg_462_pp0_iter1_reg <= lshr_ln212_2_reg_462;
        tmp_4_reg_487 <= {{ap_sig_allocacmp_v127[5:3]}};
        tmp_4_reg_487_pp0_iter1_reg <= tmp_4_reg_487;
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
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        lshr_ln212_2_reg_462_pp0_iter2_reg <= lshr_ln212_2_reg_462_pp0_iter1_reg;
        lshr_ln212_2_reg_462_pp0_iter3_reg <= lshr_ln212_2_reg_462_pp0_iter2_reg;
        lshr_ln212_2_reg_462_pp0_iter4_reg <= lshr_ln212_2_reg_462_pp0_iter3_reg;
        lshr_ln212_2_reg_462_pp0_iter5_reg <= lshr_ln212_2_reg_462_pp0_iter4_reg;
        lshr_ln212_2_reg_462_pp0_iter6_reg <= lshr_ln212_2_reg_462_pp0_iter5_reg;
        lshr_ln212_2_reg_462_pp0_iter7_reg <= lshr_ln212_2_reg_462_pp0_iter6_reg;
        lshr_ln212_2_reg_462_pp0_iter8_reg <= lshr_ln212_2_reg_462_pp0_iter7_reg;
        tmp_4_reg_487_pp0_iter2_reg <= tmp_4_reg_487_pp0_iter1_reg;
        tmp_4_reg_487_pp0_iter3_reg <= tmp_4_reg_487_pp0_iter2_reg;
        tmp_4_reg_487_pp0_iter4_reg <= tmp_4_reg_487_pp0_iter3_reg;
        tmp_4_reg_487_pp0_iter5_reg <= tmp_4_reg_487_pp0_iter4_reg;
        tmp_4_reg_487_pp0_iter6_reg <= tmp_4_reg_487_pp0_iter5_reg;
        tmp_4_reg_487_pp0_iter7_reg <= tmp_4_reg_487_pp0_iter6_reg;
        tmp_4_reg_487_pp0_iter8_reg <= tmp_4_reg_487_pp0_iter7_reg;
        tmp_4_reg_487_pp0_iter9_reg <= tmp_4_reg_487_pp0_iter8_reg;
        tmp_s_reg_573 <= {{p_udiv219[9:4]}};
        v129_14_reg_558 <= grp_fu_3701_p_dout0;
        v129_16_reg_553 <= grp_fu_3697_p_dout0;
        v129_17_reg_563 <= grp_fu_3705_p_dout0;
        v129_18_reg_568 <= grp_fu_8471_p_dout0;
        v129_19_reg_578 <= grp_fu_8475_p_dout0;
        v129_20_reg_583 <= grp_fu_8479_p_dout0;
        v129_21_reg_588 <= grp_fu_8483_p_dout0;
        v129_reg_593 <= grp_fu_8487_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v128_72_reg_548 <= v8_3_q0;
        v128_76_reg_533 <= v8_q0;
        v128_77_reg_538 <= v8_1_q0;
        v128_78_reg_543 <= v8_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v128_73_reg_518 <= v8_1_q1;
        v128_74_reg_523 <= v8_2_q1;
        v128_75_reg_528 <= v8_3_q1;
        v128_reg_493 <= v8_q1;
    end
end
always @ (*) begin
    if (((tmp_fu_332_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_v127 = v127_2_fu_76;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
assign add_ln212_fu_368_p2 = (ap_sig_allocacmp_v127 + 7'd8);
assign add_ln215_4_fu_403_p3 = {{tmp_s_fu_394_p4}, {lshr_ln212_2_reg_462_pp0_iter8_reg}};
assign add_ln215_5_fu_418_p4 = {{{tmp_s_reg_573}, {tmp_4_reg_487_pp0_iter9_reg}}, {1'd1}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_3697_p_ce = 1'b1;
assign grp_fu_3697_p_din0 = v126_2;
assign grp_fu_3697_p_din1 = v128_reg_493;
assign grp_fu_3701_p_ce = 1'b1;
assign grp_fu_3701_p_din0 = v126_2;
assign grp_fu_3701_p_din1 = v128_73_reg_518;
assign grp_fu_3705_p_ce = 1'b1;
assign grp_fu_3705_p_din0 = v126_2;
assign grp_fu_3705_p_din1 = v128_74_reg_523;
assign grp_fu_8471_p_ce = 1'b1;
assign grp_fu_8471_p_din0 = v126_2;
assign grp_fu_8471_p_din1 = v128_75_reg_528;
assign grp_fu_8475_p_ce = 1'b1;
assign grp_fu_8475_p_din0 = v126_2;
assign grp_fu_8475_p_din1 = v128_76_reg_533;
assign grp_fu_8479_p_ce = 1'b1;
assign grp_fu_8479_p_din0 = v126_2;
assign grp_fu_8479_p_din1 = v128_77_reg_538;
assign grp_fu_8483_p_ce = 1'b1;
assign grp_fu_8483_p_din0 = v126_2;
assign grp_fu_8483_p_din1 = v128_78_reg_543;
assign grp_fu_8487_p_ce = 1'b1;
assign grp_fu_8487_p_din0 = v126_2;
assign grp_fu_8487_p_din1 = v128_72_reg_548;
assign lshr_ln212_2_fu_340_p4 = {{ap_sig_allocacmp_v127[5:2]}};
assign or_ln213_2_fu_379_p3 = {{tmp_4_reg_487}, {1'd1}};
assign tmp_fu_332_p3 = ap_sig_allocacmp_v127[32'd6];
assign tmp_s_fu_394_p4 = {{p_udiv219[9:4]}};
assign v11_1_address0 = zext_ln215_5_fu_426_p1;
assign v11_1_address1 = zext_ln215_4_fu_410_p1;
assign v11_1_ce0 = v11_1_ce0_local;
assign v11_1_ce1 = v11_1_ce1_local;
assign v11_1_d0 = v129_20_reg_583;
assign v11_1_d1 = v129_14_reg_558;
assign v11_1_we0 = v11_1_we0_local;
assign v11_1_we1 = v11_1_we1_local;
assign v11_2_address0 = zext_ln215_5_fu_426_p1;
assign v11_2_address1 = zext_ln215_4_fu_410_p1;
assign v11_2_ce0 = v11_2_ce0_local;
assign v11_2_ce1 = v11_2_ce1_local;
assign v11_2_d0 = v129_21_reg_588;
assign v11_2_d1 = v129_17_reg_563;
assign v11_2_we0 = v11_2_we0_local;
assign v11_2_we1 = v11_2_we1_local;
assign v11_3_address0 = zext_ln215_5_fu_426_p1;
assign v11_3_address1 = zext_ln215_4_fu_410_p1;
assign v11_3_ce0 = v11_3_ce0_local;
assign v11_3_ce1 = v11_3_ce1_local;
assign v11_3_d0 = v129_reg_593;
assign v11_3_d1 = v129_18_reg_568;
assign v11_3_we0 = v11_3_we0_local;
assign v11_3_we1 = v11_3_we1_local;
assign v11_address0 = zext_ln215_5_fu_426_p1;
assign v11_address1 = zext_ln215_4_fu_410_p1;
assign v11_ce0 = v11_ce0_local;
assign v11_ce1 = v11_ce1_local;
assign v11_d0 = v129_19_reg_578;
assign v11_d1 = v129_16_reg_553;
assign v11_we0 = v11_we0_local;
assign v11_we1 = v11_we1_local;
assign v8_1_address0 = zext_ln213_fu_386_p1;
assign v8_1_address1 = zext_ln212_fu_350_p1;
assign v8_1_ce0 = v8_1_ce0_local;
assign v8_1_ce1 = v8_1_ce1_local;
assign v8_2_address0 = zext_ln213_fu_386_p1;
assign v8_2_address1 = zext_ln212_fu_350_p1;
assign v8_2_ce0 = v8_2_ce0_local;
assign v8_2_ce1 = v8_2_ce1_local;
assign v8_3_address0 = zext_ln213_fu_386_p1;
assign v8_3_address1 = zext_ln212_fu_350_p1;
assign v8_3_ce0 = v8_3_ce0_local;
assign v8_3_ce1 = v8_3_ce1_local;
assign v8_address0 = zext_ln213_fu_386_p1;
assign v8_address1 = zext_ln212_fu_350_p1;
assign v8_ce0 = v8_ce0_local;
assign v8_ce1 = v8_ce1_local;
assign zext_ln212_fu_350_p1 = lshr_ln212_2_fu_340_p4;
assign zext_ln213_fu_386_p1 = or_ln213_2_fu_379_p3;
assign zext_ln215_4_fu_410_p1 = add_ln215_4_fu_403_p3;
assign zext_ln215_5_fu_426_p1 = add_ln215_5_fu_418_p4;
endmodule 