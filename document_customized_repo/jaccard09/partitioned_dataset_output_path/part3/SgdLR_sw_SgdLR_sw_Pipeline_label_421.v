
module SgdLR_sw_SgdLR_sw_Pipeline_label_421 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v2_3_address0,v2_3_ce0,v2_3_we0,v2_3_d0,v2_3_address1,v2_3_ce1,v2_3_q1,v2_2_address0,v2_2_ce0,v2_2_we0,v2_2_d0,v2_2_address1,v2_2_ce1,v2_2_q1,v2_1_address0,v2_1_ce0,v2_1_we0,v2_1_d0,v2_1_address1,v2_1_ce1,v2_1_q1,v2_0_address0,v2_0_ce0,v2_0_we0,v2_0_d0,v2_0_address1,v2_0_ce1,v2_0_q1,v3_address0,v3_ce0,v3_q0,v3_address1,v3_ce1,v3_q1,v3_address2,v3_ce2,v3_q2,v3_address3,v3_ce3,v3_q3,grp_fu_1063_p_din0,grp_fu_1063_p_din1,grp_fu_1063_p_opcode,grp_fu_1063_p_dout0,grp_fu_1063_p_ce,grp_fu_2707_p_din0,grp_fu_2707_p_din1,grp_fu_2707_p_opcode,grp_fu_2707_p_dout0,grp_fu_2707_p_ce,grp_fu_2711_p_din0,grp_fu_2711_p_din1,grp_fu_2711_p_opcode,grp_fu_2711_p_dout0,grp_fu_2711_p_ce,grp_fu_2715_p_din0,grp_fu_2715_p_din1,grp_fu_2715_p_opcode,grp_fu_2715_p_dout0,grp_fu_2715_p_ce,grp_fu_2703_p_din0,grp_fu_2703_p_din1,grp_fu_2703_p_dout0,grp_fu_2703_p_ce,grp_fu_2719_p_din0,grp_fu_2719_p_din1,grp_fu_2719_p_dout0,grp_fu_2719_p_ce,grp_fu_2723_p_din0,grp_fu_2723_p_din1,grp_fu_2723_p_dout0,grp_fu_2723_p_ce,grp_fu_2727_p_din0,grp_fu_2727_p_din1,grp_fu_2727_p_dout0,grp_fu_2727_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] v2_3_address0;
output   v2_3_ce0;
output   v2_3_we0;
output  [31:0] v2_3_d0;
output  [7:0] v2_3_address1;
output   v2_3_ce1;
input  [31:0] v2_3_q1;
output  [7:0] v2_2_address0;
output   v2_2_ce0;
output   v2_2_we0;
output  [31:0] v2_2_d0;
output  [7:0] v2_2_address1;
output   v2_2_ce1;
input  [31:0] v2_2_q1;
output  [7:0] v2_1_address0;
output   v2_1_ce0;
output   v2_1_we0;
output  [31:0] v2_1_d0;
output  [7:0] v2_1_address1;
output   v2_1_ce1;
input  [31:0] v2_1_q1;
output  [7:0] v2_0_address0;
output   v2_0_ce0;
output   v2_0_we0;
output  [31:0] v2_0_d0;
output  [7:0] v2_0_address1;
output   v2_0_ce1;
input  [31:0] v2_0_q1;
output  [9:0] v3_address0;
output   v3_ce0;
input  [31:0] v3_q0;
output  [9:0] v3_address1;
output   v3_ce1;
input  [31:0] v3_q1;
output  [9:0] v3_address2;
output   v3_ce2;
input  [31:0] v3_q2;
output  [9:0] v3_address3;
output   v3_ce3;
input  [31:0] v3_q3;
output  [31:0] grp_fu_1063_p_din0;
output  [31:0] grp_fu_1063_p_din1;
output  [0:0] grp_fu_1063_p_opcode;
input  [31:0] grp_fu_1063_p_dout0;
output   grp_fu_1063_p_ce;
output  [31:0] grp_fu_2707_p_din0;
output  [31:0] grp_fu_2707_p_din1;
output  [1:0] grp_fu_2707_p_opcode;
input  [31:0] grp_fu_2707_p_dout0;
output   grp_fu_2707_p_ce;
output  [31:0] grp_fu_2711_p_din0;
output  [31:0] grp_fu_2711_p_din1;
output  [1:0] grp_fu_2711_p_opcode;
input  [31:0] grp_fu_2711_p_dout0;
output   grp_fu_2711_p_ce;
output  [31:0] grp_fu_2715_p_din0;
output  [31:0] grp_fu_2715_p_din1;
output  [1:0] grp_fu_2715_p_opcode;
input  [31:0] grp_fu_2715_p_dout0;
output   grp_fu_2715_p_ce;
output  [31:0] grp_fu_2703_p_din0;
output  [31:0] grp_fu_2703_p_din1;
input  [31:0] grp_fu_2703_p_dout0;
output   grp_fu_2703_p_ce;
output  [31:0] grp_fu_2719_p_din0;
output  [31:0] grp_fu_2719_p_din1;
input  [31:0] grp_fu_2719_p_dout0;
output   grp_fu_2719_p_ce;
output  [31:0] grp_fu_2723_p_din0;
output  [31:0] grp_fu_2723_p_din1;
input  [31:0] grp_fu_2723_p_dout0;
output   grp_fu_2723_p_ce;
output  [31:0] grp_fu_2727_p_din0;
output  [31:0] grp_fu_2727_p_din1;
input  [31:0] grp_fu_2727_p_dout0;
output   grp_fu_2727_p_ce;
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
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_227_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [7:0] lshr_ln55_s_fu_240_p4;
reg   [7:0] lshr_ln55_s_reg_360;
reg   [7:0] lshr_ln55_s_reg_360_pp0_iter1_reg;
reg   [7:0] lshr_ln55_s_reg_360_pp0_iter2_reg;
reg   [7:0] lshr_ln55_s_reg_360_pp0_iter3_reg;
reg   [31:0] v26_reg_385;
reg   [31:0] v26_34_reg_390;
reg   [31:0] v26_35_reg_395;
reg   [31:0] v26_36_reg_400;
reg   [7:0] v2_0_addr_reg_405;
reg   [7:0] v2_0_addr_reg_405_pp0_iter5_reg;
reg   [7:0] v2_0_addr_reg_405_pp0_iter6_reg;
reg   [7:0] v2_0_addr_reg_405_pp0_iter7_reg;
reg   [7:0] v2_0_addr_reg_405_pp0_iter8_reg;
reg   [7:0] v2_0_addr_reg_405_pp0_iter9_reg;
reg   [7:0] v2_0_addr_reg_405_pp0_iter10_reg;
reg   [7:0] v2_0_addr_reg_405_pp0_iter11_reg;
reg   [7:0] v2_0_addr_reg_405_pp0_iter12_reg;
reg   [7:0] v2_1_addr_reg_411;
reg   [7:0] v2_1_addr_reg_411_pp0_iter5_reg;
reg   [7:0] v2_1_addr_reg_411_pp0_iter6_reg;
reg   [7:0] v2_1_addr_reg_411_pp0_iter7_reg;
reg   [7:0] v2_1_addr_reg_411_pp0_iter8_reg;
reg   [7:0] v2_1_addr_reg_411_pp0_iter9_reg;
reg   [7:0] v2_1_addr_reg_411_pp0_iter10_reg;
reg   [7:0] v2_1_addr_reg_411_pp0_iter11_reg;
reg   [7:0] v2_1_addr_reg_411_pp0_iter12_reg;
reg   [7:0] v2_2_addr_reg_417;
reg   [7:0] v2_2_addr_reg_417_pp0_iter5_reg;
reg   [7:0] v2_2_addr_reg_417_pp0_iter6_reg;
reg   [7:0] v2_2_addr_reg_417_pp0_iter7_reg;
reg   [7:0] v2_2_addr_reg_417_pp0_iter8_reg;
reg   [7:0] v2_2_addr_reg_417_pp0_iter9_reg;
reg   [7:0] v2_2_addr_reg_417_pp0_iter10_reg;
reg   [7:0] v2_2_addr_reg_417_pp0_iter11_reg;
reg   [7:0] v2_2_addr_reg_417_pp0_iter12_reg;
reg   [7:0] v2_3_addr_reg_423;
reg   [7:0] v2_3_addr_reg_423_pp0_iter5_reg;
reg   [7:0] v2_3_addr_reg_423_pp0_iter6_reg;
reg   [7:0] v2_3_addr_reg_423_pp0_iter7_reg;
reg   [7:0] v2_3_addr_reg_423_pp0_iter8_reg;
reg   [7:0] v2_3_addr_reg_423_pp0_iter9_reg;
reg   [7:0] v2_3_addr_reg_423_pp0_iter10_reg;
reg   [7:0] v2_3_addr_reg_423_pp0_iter11_reg;
reg   [7:0] v2_3_addr_reg_423_pp0_iter12_reg;
reg   [31:0] v27_reg_429;
reg   [31:0] v2_0_load_reg_434;
reg   [31:0] v27_32_reg_439;
reg   [31:0] v2_1_load_reg_444;
reg   [31:0] v27_33_reg_449;
reg   [31:0] v2_2_load_reg_454;
reg   [31:0] v27_34_reg_459;
reg   [31:0] v2_3_load_reg_464;
wire   [31:0] v28_fu_317_p1;
wire   [31:0] v28_34_fu_321_p1;
wire   [31:0] v28_35_fu_325_p1;
wire   [31:0] v28_36_fu_329_p1;
reg   [31:0] v29_reg_489;
reg   [31:0] v29_32_reg_494;
reg   [31:0] v29_33_reg_499;
reg   [31:0] v29_34_reg_504;
wire   [63:0] zext_ln55_fu_235_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln56_fu_268_p1;
wire   [63:0] zext_ln56_19_fu_281_p1;
wire   [63:0] zext_ln56_20_fu_294_p1;
wire   [63:0] zext_ln55_10_fu_310_p1;
reg   [10:0] v25_fu_62;
wire   [10:0] add_ln55_fu_299_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v25_8;
reg    v3_ce3_local;
reg    v3_ce2_local;
reg    v3_ce1_local;
reg    v3_ce0_local;
reg    v2_0_ce1_local;
reg    v2_0_we0_local;
wire   [31:0] bitcast_ln60_fu_333_p1;
reg    v2_0_ce0_local;
reg    v2_1_ce1_local;
reg    v2_1_we0_local;
wire   [31:0] bitcast_ln60_27_fu_337_p1;
reg    v2_1_ce0_local;
reg    v2_2_ce1_local;
reg    v2_2_we0_local;
wire   [31:0] bitcast_ln60_28_fu_341_p1;
reg    v2_2_ce0_local;
reg    v2_3_ce1_local;
reg    v2_3_we0_local;
wire   [31:0] bitcast_ln60_29_fu_345_p1;
reg    v2_3_ce0_local;
wire   [8:0] tmp_s_fu_250_p4;
wire   [9:0] or_ln55_s_fu_260_p3;
wire   [9:0] or_ln55_19_fu_273_p3;
wire   [9:0] or_ln55_20_fu_286_p3;
wire    ap_block_pp0_stage0_00001;
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
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
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
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 v25_fu_62 = 11'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter12_reg == 1'b1))) begin
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
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
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
        if (((tmp_fu_227_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v25_fu_62 <= add_ln55_fu_299_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v25_fu_62 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        lshr_ln55_s_reg_360_pp0_iter2_reg <= lshr_ln55_s_reg_360_pp0_iter1_reg;
        lshr_ln55_s_reg_360_pp0_iter3_reg <= lshr_ln55_s_reg_360_pp0_iter2_reg;
        v27_32_reg_439 <= grp_fu_2719_p_dout0;
        v27_33_reg_449 <= grp_fu_2723_p_dout0;
        v27_34_reg_459 <= grp_fu_2727_p_dout0;
        v27_reg_429 <= grp_fu_2703_p_dout0;
        v29_32_reg_494 <= grp_fu_2707_p_dout0;
        v29_33_reg_499 <= grp_fu_2711_p_dout0;
        v29_34_reg_504 <= grp_fu_2715_p_dout0;
        v29_reg_489 <= grp_fu_1063_p_dout0;
        v2_0_addr_reg_405 <= zext_ln55_10_fu_310_p1;
        v2_0_addr_reg_405_pp0_iter10_reg <= v2_0_addr_reg_405_pp0_iter9_reg;
        v2_0_addr_reg_405_pp0_iter11_reg <= v2_0_addr_reg_405_pp0_iter10_reg;
        v2_0_addr_reg_405_pp0_iter12_reg <= v2_0_addr_reg_405_pp0_iter11_reg;
        v2_0_addr_reg_405_pp0_iter5_reg <= v2_0_addr_reg_405;
        v2_0_addr_reg_405_pp0_iter6_reg <= v2_0_addr_reg_405_pp0_iter5_reg;
        v2_0_addr_reg_405_pp0_iter7_reg <= v2_0_addr_reg_405_pp0_iter6_reg;
        v2_0_addr_reg_405_pp0_iter8_reg <= v2_0_addr_reg_405_pp0_iter7_reg;
        v2_0_addr_reg_405_pp0_iter9_reg <= v2_0_addr_reg_405_pp0_iter8_reg;
        v2_1_addr_reg_411 <= zext_ln55_10_fu_310_p1;
        v2_1_addr_reg_411_pp0_iter10_reg <= v2_1_addr_reg_411_pp0_iter9_reg;
        v2_1_addr_reg_411_pp0_iter11_reg <= v2_1_addr_reg_411_pp0_iter10_reg;
        v2_1_addr_reg_411_pp0_iter12_reg <= v2_1_addr_reg_411_pp0_iter11_reg;
        v2_1_addr_reg_411_pp0_iter5_reg <= v2_1_addr_reg_411;
        v2_1_addr_reg_411_pp0_iter6_reg <= v2_1_addr_reg_411_pp0_iter5_reg;
        v2_1_addr_reg_411_pp0_iter7_reg <= v2_1_addr_reg_411_pp0_iter6_reg;
        v2_1_addr_reg_411_pp0_iter8_reg <= v2_1_addr_reg_411_pp0_iter7_reg;
        v2_1_addr_reg_411_pp0_iter9_reg <= v2_1_addr_reg_411_pp0_iter8_reg;
        v2_2_addr_reg_417 <= zext_ln55_10_fu_310_p1;
        v2_2_addr_reg_417_pp0_iter10_reg <= v2_2_addr_reg_417_pp0_iter9_reg;
        v2_2_addr_reg_417_pp0_iter11_reg <= v2_2_addr_reg_417_pp0_iter10_reg;
        v2_2_addr_reg_417_pp0_iter12_reg <= v2_2_addr_reg_417_pp0_iter11_reg;
        v2_2_addr_reg_417_pp0_iter5_reg <= v2_2_addr_reg_417;
        v2_2_addr_reg_417_pp0_iter6_reg <= v2_2_addr_reg_417_pp0_iter5_reg;
        v2_2_addr_reg_417_pp0_iter7_reg <= v2_2_addr_reg_417_pp0_iter6_reg;
        v2_2_addr_reg_417_pp0_iter8_reg <= v2_2_addr_reg_417_pp0_iter7_reg;
        v2_2_addr_reg_417_pp0_iter9_reg <= v2_2_addr_reg_417_pp0_iter8_reg;
        v2_3_addr_reg_423 <= zext_ln55_10_fu_310_p1;
        v2_3_addr_reg_423_pp0_iter10_reg <= v2_3_addr_reg_423_pp0_iter9_reg;
        v2_3_addr_reg_423_pp0_iter11_reg <= v2_3_addr_reg_423_pp0_iter10_reg;
        v2_3_addr_reg_423_pp0_iter12_reg <= v2_3_addr_reg_423_pp0_iter11_reg;
        v2_3_addr_reg_423_pp0_iter5_reg <= v2_3_addr_reg_423;
        v2_3_addr_reg_423_pp0_iter6_reg <= v2_3_addr_reg_423_pp0_iter5_reg;
        v2_3_addr_reg_423_pp0_iter7_reg <= v2_3_addr_reg_423_pp0_iter6_reg;
        v2_3_addr_reg_423_pp0_iter8_reg <= v2_3_addr_reg_423_pp0_iter7_reg;
        v2_3_addr_reg_423_pp0_iter9_reg <= v2_3_addr_reg_423_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln55_s_reg_360 <= {{ap_sig_allocacmp_v25_8[9:2]}};
        lshr_ln55_s_reg_360_pp0_iter1_reg <= lshr_ln55_s_reg_360;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v26_34_reg_390 <= v3_q2;
        v26_35_reg_395 <= v3_q1;
        v26_36_reg_400 <= v3_q0;
        v26_reg_385 <= v3_q3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v2_0_load_reg_434 <= v2_0_q1;
        v2_1_load_reg_444 <= v2_1_q1;
        v2_2_load_reg_454 <= v2_2_q1;
        v2_3_load_reg_464 <= v2_3_q1;
    end
end
always @ (*) begin
    if (((tmp_fu_227_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter12_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_v25_8 = 11'd0;
    end else begin
        ap_sig_allocacmp_v25_8 = v25_fu_62;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_0_ce0_local = 1'b1;
    end else begin
        v2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_0_ce1_local = 1'b1;
    end else begin
        v2_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_0_we0_local = 1'b1;
    end else begin
        v2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_1_ce0_local = 1'b1;
    end else begin
        v2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_1_ce1_local = 1'b1;
    end else begin
        v2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_1_we0_local = 1'b1;
    end else begin
        v2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_2_ce0_local = 1'b1;
    end else begin
        v2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_2_ce1_local = 1'b1;
    end else begin
        v2_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_2_we0_local = 1'b1;
    end else begin
        v2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_3_ce0_local = 1'b1;
    end else begin
        v2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_3_ce1_local = 1'b1;
    end else begin
        v2_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_3_we0_local = 1'b1;
    end else begin
        v2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_ce1_local = 1'b1;
    end else begin
        v3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_ce2_local = 1'b1;
    end else begin
        v3_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_ce3_local = 1'b1;
    end else begin
        v3_ce3_local = 1'b0;
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
assign add_ln55_fu_299_p2 = (ap_sig_allocacmp_v25_8 + 11'd4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln60_27_fu_337_p1 = v29_32_reg_494;
assign bitcast_ln60_28_fu_341_p1 = v29_33_reg_499;
assign bitcast_ln60_29_fu_345_p1 = v29_34_reg_504;
assign bitcast_ln60_fu_333_p1 = v29_reg_489;
assign grp_fu_1063_p_ce = 1'b1;
assign grp_fu_1063_p_din0 = v28_fu_317_p1;
assign grp_fu_1063_p_din1 = v27_reg_429;
assign grp_fu_1063_p_opcode = 2'd0;
assign grp_fu_2703_p_ce = 1'b1;
assign grp_fu_2703_p_din0 = v26_reg_385;
assign grp_fu_2703_p_din1 = 32'd3345637376;
assign grp_fu_2707_p_ce = 1'b1;
assign grp_fu_2707_p_din0 = v28_34_fu_321_p1;
assign grp_fu_2707_p_din1 = v27_32_reg_439;
assign grp_fu_2707_p_opcode = 2'd0;
assign grp_fu_2711_p_ce = 1'b1;
assign grp_fu_2711_p_din0 = v28_35_fu_325_p1;
assign grp_fu_2711_p_din1 = v27_33_reg_449;
assign grp_fu_2711_p_opcode = 2'd0;
assign grp_fu_2715_p_ce = 1'b1;
assign grp_fu_2715_p_din0 = v28_36_fu_329_p1;
assign grp_fu_2715_p_din1 = v27_34_reg_459;
assign grp_fu_2715_p_opcode = 2'd0;
assign grp_fu_2719_p_ce = 1'b1;
assign grp_fu_2719_p_din0 = v26_34_reg_390;
assign grp_fu_2719_p_din1 = 32'd3345637376;
assign grp_fu_2723_p_ce = 1'b1;
assign grp_fu_2723_p_din0 = v26_35_reg_395;
assign grp_fu_2723_p_din1 = 32'd3345637376;
assign grp_fu_2727_p_ce = 1'b1;
assign grp_fu_2727_p_din0 = v26_36_reg_400;
assign grp_fu_2727_p_din1 = 32'd3345637376;
assign lshr_ln55_s_fu_240_p4 = {{ap_sig_allocacmp_v25_8[9:2]}};
assign or_ln55_19_fu_273_p3 = {{lshr_ln55_s_fu_240_p4}, {2'd2}};
assign or_ln55_20_fu_286_p3 = {{lshr_ln55_s_fu_240_p4}, {2'd3}};
assign or_ln55_s_fu_260_p3 = {{tmp_s_fu_250_p4}, {1'd1}};
assign tmp_fu_227_p3 = ap_sig_allocacmp_v25_8[32'd10];
assign tmp_s_fu_250_p4 = {{ap_sig_allocacmp_v25_8[9:1]}};
assign v28_34_fu_321_p1 = v2_1_load_reg_444;
assign v28_35_fu_325_p1 = v2_2_load_reg_454;
assign v28_36_fu_329_p1 = v2_3_load_reg_464;
assign v28_fu_317_p1 = v2_0_load_reg_434;
assign v2_0_address0 = v2_0_addr_reg_405_pp0_iter12_reg;
assign v2_0_address1 = zext_ln55_10_fu_310_p1;
assign v2_0_ce0 = v2_0_ce0_local;
assign v2_0_ce1 = v2_0_ce1_local;
assign v2_0_d0 = bitcast_ln60_fu_333_p1;
assign v2_0_we0 = v2_0_we0_local;
assign v2_1_address0 = v2_1_addr_reg_411_pp0_iter12_reg;
assign v2_1_address1 = zext_ln55_10_fu_310_p1;
assign v2_1_ce0 = v2_1_ce0_local;
assign v2_1_ce1 = v2_1_ce1_local;
assign v2_1_d0 = bitcast_ln60_27_fu_337_p1;
assign v2_1_we0 = v2_1_we0_local;
assign v2_2_address0 = v2_2_addr_reg_417_pp0_iter12_reg;
assign v2_2_address1 = zext_ln55_10_fu_310_p1;
assign v2_2_ce0 = v2_2_ce0_local;
assign v2_2_ce1 = v2_2_ce1_local;
assign v2_2_d0 = bitcast_ln60_28_fu_341_p1;
assign v2_2_we0 = v2_2_we0_local;
assign v2_3_address0 = v2_3_addr_reg_423_pp0_iter12_reg;
assign v2_3_address1 = zext_ln55_10_fu_310_p1;
assign v2_3_ce0 = v2_3_ce0_local;
assign v2_3_ce1 = v2_3_ce1_local;
assign v2_3_d0 = bitcast_ln60_29_fu_345_p1;
assign v2_3_we0 = v2_3_we0_local;
assign v3_address0 = zext_ln56_20_fu_294_p1;
assign v3_address1 = zext_ln56_19_fu_281_p1;
assign v3_address2 = zext_ln56_fu_268_p1;
assign v3_address3 = zext_ln55_fu_235_p1;
assign v3_ce0 = v3_ce0_local;
assign v3_ce1 = v3_ce1_local;
assign v3_ce2 = v3_ce2_local;
assign v3_ce3 = v3_ce3_local;
assign zext_ln55_10_fu_310_p1 = lshr_ln55_s_reg_360_pp0_iter3_reg;
assign zext_ln55_fu_235_p1 = ap_sig_allocacmp_v25_8;
assign zext_ln56_19_fu_281_p1 = or_ln55_19_fu_273_p3;
assign zext_ln56_20_fu_294_p1 = or_ln55_20_fu_286_p3;
assign zext_ln56_fu_268_p1 = or_ln55_s_fu_260_p3;
endmodule 
