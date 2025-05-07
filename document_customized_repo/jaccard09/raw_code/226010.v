module SgdLR_sw_SgdLR_sw_Pipeline_label_43 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v3_address0,v3_ce0,v3_q0,v3_address1,v3_ce1,v3_q1,v2_address0,v2_ce0,v2_we0,v2_d0,v2_q0,v2_address1,v2_ce1,v2_we1,v2_d1,v2_q1,v3_1_address0,v3_1_ce0,v3_1_q0,v3_1_address1,v3_1_ce1,v3_1_q1,v3_2_address0,v3_2_ce0,v3_2_q0,v3_2_address1,v3_2_ce1,v3_2_q1,v3_3_address0,v3_3_ce0,v3_3_q0,v3_3_address1,v3_3_ce1,v3_3_q1,grp_fu_550_p_din0,grp_fu_550_p_din1,grp_fu_550_p_opcode,grp_fu_550_p_dout0,grp_fu_550_p_ce,grp_fu_1423_p_din0,grp_fu_1423_p_din1,grp_fu_1423_p_dout0,grp_fu_1423_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] v3_address0;
output   v3_ce0;
input  [31:0] v3_q0;
output  [7:0] v3_address1;
output   v3_ce1;
input  [31:0] v3_q1;
output  [9:0] v2_address0;
output   v2_ce0;
output   v2_we0;
output  [31:0] v2_d0;
input  [31:0] v2_q0;
output  [9:0] v2_address1;
output   v2_ce1;
output   v2_we1;
output  [31:0] v2_d1;
input  [31:0] v2_q1;
output  [7:0] v3_1_address0;
output   v3_1_ce0;
input  [31:0] v3_1_q0;
output  [7:0] v3_1_address1;
output   v3_1_ce1;
input  [31:0] v3_1_q1;
output  [7:0] v3_2_address0;
output   v3_2_ce0;
input  [31:0] v3_2_q0;
output  [7:0] v3_2_address1;
output   v3_2_ce1;
input  [31:0] v3_2_q1;
output  [7:0] v3_3_address0;
output   v3_3_ce0;
input  [31:0] v3_3_q0;
output  [7:0] v3_3_address1;
output   v3_3_ce1;
input  [31:0] v3_3_q1;
output  [31:0] grp_fu_550_p_din0;
output  [31:0] grp_fu_550_p_din1;
output  [0:0] grp_fu_550_p_opcode;
input  [31:0] grp_fu_550_p_dout0;
output   grp_fu_550_p_ce;
output  [31:0] grp_fu_1423_p_din0;
output  [31:0] grp_fu_1423_p_din1;
input  [31:0] grp_fu_1423_p_dout0;
output   grp_fu_1423_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] tmp_reg_525;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_264;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] tmp_fu_276_p3;
wire    ap_block_pp0_stage0_11001;
wire   [7:0] lshr_ln55_1_fu_289_p4;
reg   [7:0] lshr_ln55_1_reg_529;
reg   [9:0] v2_addr_reg_540;
reg   [9:0] v2_addr_reg_540_pp0_iter1_reg;
reg   [9:0] v2_addr_15_reg_550;
reg   [9:0] v2_addr_15_reg_550_pp0_iter1_reg;
wire   [6:0] tmp_3_fu_330_p4;
reg   [6:0] tmp_3_reg_566;
reg   [6:0] tmp_3_reg_566_pp0_iter1_reg;
reg   [0:0] tmp_4_reg_579;
reg   [31:0] v26_reg_599;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] v2_load_reg_604;
reg   [31:0] v26_16_reg_609;
reg   [31:0] v2_load_15_reg_614;
reg   [31:0] v26_17_reg_619;
reg   [9:0] v2_addr_16_reg_624;
reg   [9:0] v2_addr_16_reg_624_pp0_iter1_reg;
reg   [31:0] v26_18_reg_629;
reg   [9:0] v2_addr_17_reg_634;
reg   [9:0] v2_addr_17_reg_634_pp0_iter1_reg;
reg   [9:0] v2_addr_17_reg_634_pp0_iter2_reg;
reg   [31:0] v26_19_reg_640;
reg   [31:0] v26_20_reg_645;
reg   [31:0] v26_21_reg_650;
reg   [31:0] v26_22_reg_655;
reg   [31:0] v2_load_16_reg_660;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] v2_load_17_reg_665;
reg   [9:0] v2_addr_18_reg_670;
reg   [9:0] v2_addr_18_reg_670_pp0_iter1_reg;
reg   [9:0] v2_addr_18_reg_670_pp0_iter2_reg;
reg   [9:0] v2_addr_19_reg_676;
reg   [9:0] v2_addr_19_reg_676_pp0_iter1_reg;
reg   [9:0] v2_addr_19_reg_676_pp0_iter2_reg;
reg   [31:0] v2_load_18_reg_681;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] v2_load_19_reg_686;
reg   [9:0] v2_addr_20_reg_691;
reg   [9:0] v2_addr_20_reg_691_pp0_iter1_reg;
reg   [9:0] v2_addr_20_reg_691_pp0_iter2_reg;
reg   [31:0] v2_load_20_reg_697;
reg   [31:0] v27_8_reg_702;
wire   [31:0] v28_fu_438_p1;
reg   [31:0] v27_9_reg_712;
wire   [31:0] v28_16_fu_442_p1;
reg   [31:0] v27_reg_722;
wire   [31:0] v28_17_fu_446_p1;
reg   [31:0] v27_16_reg_732;
wire   [31:0] v28_18_fu_450_p1;
reg   [31:0] v27_17_reg_742;
wire   [31:0] v28_19_fu_454_p1;
reg   [31:0] v27_18_reg_752;
wire   [31:0] v28_20_fu_458_p1;
reg   [31:0] v27_19_reg_762;
reg   [9:0] v2_addr_21_reg_767;
reg   [9:0] v2_addr_21_reg_767_pp0_iter2_reg;
wire   [31:0] v28_21_fu_474_p1;
reg   [31:0] v27_20_reg_777;
reg   [31:0] v2_load_21_reg_782;
wire   [31:0] v28_22_fu_483_p1;
reg   [31:0] v29_17_reg_792;
reg   [31:0] v29_18_reg_797;
reg   [31:0] v29_19_reg_802;
reg   [31:0] v29_20_reg_807;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln55_fu_299_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln55_2_fu_284_p1;
wire   [63:0] zext_ln56_8_fu_325_p1;
wire   [63:0] zext_ln56_12_fu_348_p1;
wire   [63:0] zext_ln56_9_fu_382_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln56_10_fu_394_p1;
wire   [63:0] zext_ln56_11_fu_406_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln56_13_fu_421_p1;
wire   [63:0] zext_ln56_14_fu_433_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln56_fu_469_p1;
reg   [10:0] v25_1_fu_78;
wire   [10:0] add_ln55_fu_364_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v25;
reg    v3_ce1_local;
reg    v3_ce0_local;
reg    v2_ce1_local;
reg   [9:0] v2_address1_local;
reg    v2_ce0_local;
reg   [9:0] v2_address0_local;
reg    v2_we1_local;
reg   [31:0] v2_d1_local;
wire   [31:0] bitcast_ln60_8_fu_478_p1;
wire    ap_block_pp0_stage5;
wire   [31:0] bitcast_ln60_9_fu_487_p1;
wire    ap_block_pp0_stage6;
wire   [31:0] bitcast_ln60_10_fu_492_p1;
wire    ap_block_pp0_stage7;
wire   [31:0] bitcast_ln60_11_fu_497_p1;
wire    ap_block_pp0_stage4;
reg    v2_we0_local;
reg   [31:0] v2_d0_local;
wire   [31:0] bitcast_ln60_12_fu_502_p1;
wire   [31:0] bitcast_ln60_13_fu_506_p1;
wire   [31:0] bitcast_ln60_14_fu_510_p1;
wire   [31:0] bitcast_ln60_fu_514_p1;
reg    v3_1_ce1_local;
reg    v3_1_ce0_local;
reg    v3_2_ce1_local;
reg    v3_2_ce0_local;
reg    v3_3_ce1_local;
reg    v3_3_ce0_local;
reg   [31:0] grp_fu_255_p0;
reg   [31:0] grp_fu_255_p1;
reg   [31:0] grp_fu_259_p0;
wire   [8:0] tmp_s_fu_307_p4;
wire   [9:0] or_ln55_7_fu_317_p3;
wire   [7:0] or_ln56_1_fu_340_p3;
wire   [9:0] or_ln55_8_fu_375_p3;
wire   [9:0] or_ln55_9_fu_387_p3;
wire   [9:0] or_ln55_s_fu_399_p3;
wire   [9:0] or_ln55_10_fu_411_p5;
wire   [9:0] or_ln55_11_fu_426_p3;
wire   [9:0] or_ln55_12_fu_462_p3;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v25_1_fu_78 = 11'd0;
#0 ap_done_reg = 1'b0;
end
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage7)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_276_p3 == 1'd0))) begin
            v25_1_fu_78 <= add_ln55_fu_364_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v25_1_fu_78 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln55_1_reg_529 <= {{ap_sig_allocacmp_v25[9:2]}};
        tmp_3_reg_566 <= {{ap_sig_allocacmp_v25[9:3]}};
        tmp_3_reg_566_pp0_iter1_reg <= tmp_3_reg_566;
        tmp_4_reg_579 <= ap_sig_allocacmp_v25[32'd1];
        tmp_reg_525 <= ap_sig_allocacmp_v25[32'd10];
        v2_addr_15_reg_550[9 : 1] <= zext_ln56_8_fu_325_p1[9 : 1];
        v2_addr_15_reg_550_pp0_iter1_reg[9 : 1] <= v2_addr_15_reg_550[9 : 1];
        v2_addr_reg_540 <= zext_ln55_2_fu_284_p1;
        v2_addr_reg_540_pp0_iter1_reg <= v2_addr_reg_540;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_264 <= grp_fu_550_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v26_16_reg_609 <= v3_1_q1;
        v26_17_reg_619 <= v3_2_q1;
        v26_18_reg_629 <= v3_3_q1;
        v26_19_reg_640 <= v3_q0;
        v26_20_reg_645 <= v3_1_q0;
        v26_21_reg_650 <= v3_2_q0;
        v26_22_reg_655 <= v3_3_q0;
        v26_reg_599 <= v3_q1;
        v2_load_15_reg_614 <= v2_q0;
        v2_load_reg_604 <= v2_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v27_16_reg_732 <= grp_fu_1423_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v27_17_reg_742 <= grp_fu_1423_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v27_18_reg_752 <= grp_fu_1423_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v27_19_reg_762 <= grp_fu_1423_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v27_20_reg_777 <= grp_fu_1423_p_dout0;
        v2_load_21_reg_782 <= v2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v27_8_reg_702 <= grp_fu_1423_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v27_9_reg_712 <= grp_fu_1423_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v27_reg_722 <= grp_fu_1423_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v29_17_reg_792 <= grp_fu_550_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v29_18_reg_797 <= grp_fu_550_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v29_19_reg_802 <= grp_fu_550_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v29_20_reg_807 <= grp_fu_550_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_addr_16_reg_624[9 : 2] <= zext_ln56_9_fu_382_p1[9 : 2];
        v2_addr_16_reg_624_pp0_iter1_reg[9 : 2] <= v2_addr_16_reg_624[9 : 2];
        v2_addr_17_reg_634[9 : 2] <= zext_ln56_10_fu_394_p1[9 : 2];
        v2_addr_17_reg_634_pp0_iter1_reg[9 : 2] <= v2_addr_17_reg_634[9 : 2];
        v2_addr_17_reg_634_pp0_iter2_reg[9 : 2] <= v2_addr_17_reg_634_pp0_iter1_reg[9 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_addr_18_reg_670[9 : 3] <= zext_ln56_11_fu_406_p1[9 : 3];
        v2_addr_18_reg_670_pp0_iter1_reg[9 : 3] <= v2_addr_18_reg_670[9 : 3];
        v2_addr_18_reg_670_pp0_iter2_reg[9 : 3] <= v2_addr_18_reg_670_pp0_iter1_reg[9 : 3];
        v2_addr_19_reg_676[1] <= zext_ln56_13_fu_421_p1[1];
v2_addr_19_reg_676[9 : 3] <= zext_ln56_13_fu_421_p1[9 : 3];
        v2_addr_19_reg_676_pp0_iter1_reg[1] <= v2_addr_19_reg_676[1];
v2_addr_19_reg_676_pp0_iter1_reg[9 : 3] <= v2_addr_19_reg_676[9 : 3];
        v2_addr_19_reg_676_pp0_iter2_reg[1] <= v2_addr_19_reg_676_pp0_iter1_reg[1];
v2_addr_19_reg_676_pp0_iter2_reg[9 : 3] <= v2_addr_19_reg_676_pp0_iter1_reg[9 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_addr_20_reg_691[9 : 3] <= zext_ln56_14_fu_433_p1[9 : 3];
        v2_addr_20_reg_691_pp0_iter1_reg[9 : 3] <= v2_addr_20_reg_691[9 : 3];
        v2_addr_20_reg_691_pp0_iter2_reg[9 : 3] <= v2_addr_20_reg_691_pp0_iter1_reg[9 : 3];
        v2_addr_21_reg_767[9 : 3] <= zext_ln56_fu_469_p1[9 : 3];
        v2_addr_21_reg_767_pp0_iter2_reg[9 : 3] <= v2_addr_21_reg_767[9 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_load_16_reg_660 <= v2_q1;
        v2_load_17_reg_665 <= v2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_load_18_reg_681 <= v2_q1;
        v2_load_19_reg_686 <= v2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_load_20_reg_697 <= v2_q1;
    end
end
always @ (*) begin
    if (((tmp_reg_525 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v25 = 11'd0;
    end else begin
        ap_sig_allocacmp_v25 = v25_1_fu_78;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_255_p0 = v28_22_fu_483_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_255_p0 = v28_21_fu_474_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_255_p0 = v28_20_fu_458_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_255_p0 = v28_19_fu_454_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_255_p0 = v28_18_fu_450_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_255_p0 = v28_17_fu_446_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_255_p0 = v28_16_fu_442_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_255_p0 = v28_fu_438_p1;
    end else begin
        grp_fu_255_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_255_p1 = v27_20_reg_777;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_255_p1 = v27_19_reg_762;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_255_p1 = v27_18_reg_752;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_255_p1 = v27_17_reg_742;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_255_p1 = v27_16_reg_732;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_255_p1 = v27_reg_722;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_255_p1 = v27_9_reg_712;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_255_p1 = v27_8_reg_702;
    end else begin
        grp_fu_255_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_259_p0 = v26_22_reg_655;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_259_p0 = v26_21_reg_650;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_259_p0 = v26_20_reg_645;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_259_p0 = v26_19_reg_640;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_259_p0 = v26_18_reg_629;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_259_p0 = v26_17_reg_619;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_259_p0 = v26_16_reg_609;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_259_p0 = v26_reg_599;
    end else begin
        grp_fu_259_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v2_address0_local = v2_addr_21_reg_767_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_address0_local = v2_addr_20_reg_691_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v2_address0_local = v2_addr_19_reg_676_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_address0_local = v2_addr_18_reg_670_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_address0_local = zext_ln56_fu_469_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_address0_local = zext_ln56_13_fu_421_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_address0_local = zext_ln56_10_fu_394_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_address0_local = zext_ln56_8_fu_325_p1;
    end else begin
        v2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_address1_local = v2_addr_17_reg_634_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v2_address1_local = v2_addr_16_reg_624_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_address1_local = v2_addr_15_reg_550_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v2_address1_local = v2_addr_reg_540_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_address1_local = zext_ln56_14_fu_433_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_address1_local = zext_ln56_11_fu_406_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_address1_local = zext_ln56_9_fu_382_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_address1_local = zext_ln55_2_fu_284_p1;
    end else begin
        v2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v2_ce0_local = 1'b1;
    end else begin
        v2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v2_ce1_local = 1'b1;
    end else begin
        v2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v2_d0_local = bitcast_ln60_fu_514_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v2_d0_local = bitcast_ln60_14_fu_510_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v2_d0_local = bitcast_ln60_13_fu_506_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v2_d0_local = bitcast_ln60_12_fu_502_p1;
        end else begin
            v2_d0_local = 'bx;
        end
    end else begin
        v2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_d1_local = bitcast_ln60_11_fu_497_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v2_d1_local = bitcast_ln60_10_fu_492_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_d1_local = bitcast_ln60_9_fu_487_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v2_d1_local = bitcast_ln60_8_fu_478_p1;
    end else begin
        v2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v2_we0_local = 1'b1;
    end else begin
        v2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v2_we1_local = 1'b1;
    end else begin
        v2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_1_ce0_local = 1'b1;
    end else begin
        v3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_1_ce1_local = 1'b1;
    end else begin
        v3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_2_ce0_local = 1'b1;
    end else begin
        v3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_2_ce1_local = 1'b1;
    end else begin
        v3_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_3_ce0_local = 1'b1;
    end else begin
        v3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_3_ce1_local = 1'b1;
    end else begin
        v3_3_ce1_local = 1'b0;
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
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln55_fu_364_p2 = (ap_sig_allocacmp_v25 + 11'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign bitcast_ln60_10_fu_492_p1 = reg_264;
assign bitcast_ln60_11_fu_497_p1 = reg_264;
assign bitcast_ln60_12_fu_502_p1 = v29_17_reg_792;
assign bitcast_ln60_13_fu_506_p1 = v29_18_reg_797;
assign bitcast_ln60_14_fu_510_p1 = v29_19_reg_802;
assign bitcast_ln60_8_fu_478_p1 = reg_264;
assign bitcast_ln60_9_fu_487_p1 = reg_264;
assign bitcast_ln60_fu_514_p1 = v29_20_reg_807;
assign grp_fu_1423_p_ce = 1'b1;
assign grp_fu_1423_p_din0 = grp_fu_259_p0;
assign grp_fu_1423_p_din1 = 32'd3345637376;
assign grp_fu_550_p_ce = 1'b1;
assign grp_fu_550_p_din0 = grp_fu_255_p0;
assign grp_fu_550_p_din1 = grp_fu_255_p1;
assign grp_fu_550_p_opcode = 2'd0;
assign lshr_ln55_1_fu_289_p4 = {{ap_sig_allocacmp_v25[9:2]}};
assign or_ln55_10_fu_411_p5 = {{{{tmp_3_reg_566}, {1'd1}}, {tmp_4_reg_579}}, {1'd1}};
assign or_ln55_11_fu_426_p3 = {{tmp_3_reg_566}, {3'd6}};
assign or_ln55_12_fu_462_p3 = {{tmp_3_reg_566_pp0_iter1_reg}, {3'd7}};
assign or_ln55_7_fu_317_p3 = {{tmp_s_fu_307_p4}, {1'd1}};
assign or_ln55_8_fu_375_p3 = {{lshr_ln55_1_reg_529}, {2'd2}};
assign or_ln55_9_fu_387_p3 = {{lshr_ln55_1_reg_529}, {2'd3}};
assign or_ln55_s_fu_399_p3 = {{tmp_3_reg_566}, {3'd4}};
assign or_ln56_1_fu_340_p3 = {{tmp_3_fu_330_p4}, {1'd1}};
assign tmp_3_fu_330_p4 = {{ap_sig_allocacmp_v25[9:3]}};
assign tmp_fu_276_p3 = ap_sig_allocacmp_v25[32'd10];
assign tmp_s_fu_307_p4 = {{ap_sig_allocacmp_v25[9:1]}};
assign v28_16_fu_442_p1 = v2_load_15_reg_614;
assign v28_17_fu_446_p1 = v2_load_16_reg_660;
assign v28_18_fu_450_p1 = v2_load_17_reg_665;
assign v28_19_fu_454_p1 = v2_load_18_reg_681;
assign v28_20_fu_458_p1 = v2_load_19_reg_686;
assign v28_21_fu_474_p1 = v2_load_20_reg_697;
assign v28_22_fu_483_p1 = v2_load_21_reg_782;
assign v28_fu_438_p1 = v2_load_reg_604;
assign v2_address0 = v2_address0_local;
assign v2_address1 = v2_address1_local;
assign v2_ce0 = v2_ce0_local;
assign v2_ce1 = v2_ce1_local;
assign v2_d0 = v2_d0_local;
assign v2_d1 = v2_d1_local;
assign v2_we0 = v2_we0_local;
assign v2_we1 = v2_we1_local;
assign v3_1_address0 = zext_ln56_12_fu_348_p1;
assign v3_1_address1 = zext_ln55_fu_299_p1;
assign v3_1_ce0 = v3_1_ce0_local;
assign v3_1_ce1 = v3_1_ce1_local;
assign v3_2_address0 = zext_ln56_12_fu_348_p1;
assign v3_2_address1 = zext_ln55_fu_299_p1;
assign v3_2_ce0 = v3_2_ce0_local;
assign v3_2_ce1 = v3_2_ce1_local;
assign v3_3_address0 = zext_ln56_12_fu_348_p1;
assign v3_3_address1 = zext_ln55_fu_299_p1;
assign v3_3_ce0 = v3_3_ce0_local;
assign v3_3_ce1 = v3_3_ce1_local;
assign v3_address0 = zext_ln56_12_fu_348_p1;
assign v3_address1 = zext_ln55_fu_299_p1;
assign v3_ce0 = v3_ce0_local;
assign v3_ce1 = v3_ce1_local;
assign zext_ln55_2_fu_284_p1 = ap_sig_allocacmp_v25;
assign zext_ln55_fu_299_p1 = lshr_ln55_1_fu_289_p4;
assign zext_ln56_10_fu_394_p1 = or_ln55_9_fu_387_p3;
assign zext_ln56_11_fu_406_p1 = or_ln55_s_fu_399_p3;
assign zext_ln56_12_fu_348_p1 = or_ln56_1_fu_340_p3;
assign zext_ln56_13_fu_421_p1 = or_ln55_10_fu_411_p5;
assign zext_ln56_14_fu_433_p1 = or_ln55_11_fu_426_p3;
assign zext_ln56_8_fu_325_p1 = or_ln55_7_fu_317_p3;
assign zext_ln56_9_fu_382_p1 = or_ln55_8_fu_375_p3;
assign zext_ln56_fu_469_p1 = or_ln55_12_fu_462_p3;
always @ (posedge ap_clk) begin
    v2_addr_15_reg_550[0] <= 1'b1;
    v2_addr_15_reg_550_pp0_iter1_reg[0] <= 1'b1;
    v2_addr_16_reg_624[1:0] <= 2'b10;
    v2_addr_16_reg_624_pp0_iter1_reg[1:0] <= 2'b10;
    v2_addr_17_reg_634[1:0] <= 2'b11;
    v2_addr_17_reg_634_pp0_iter1_reg[1:0] <= 2'b11;
    v2_addr_17_reg_634_pp0_iter2_reg[1:0] <= 2'b11;
    v2_addr_18_reg_670[2:0] <= 3'b100;
    v2_addr_18_reg_670_pp0_iter1_reg[2:0] <= 3'b100;
    v2_addr_18_reg_670_pp0_iter2_reg[2:0] <= 3'b100;
    v2_addr_19_reg_676[0] <= 1'b1;
    v2_addr_19_reg_676[2] <= 1'b1;
    v2_addr_19_reg_676_pp0_iter1_reg[0] <= 1'b1;
    v2_addr_19_reg_676_pp0_iter1_reg[2] <= 1'b1;
    v2_addr_19_reg_676_pp0_iter2_reg[0] <= 1'b1;
    v2_addr_19_reg_676_pp0_iter2_reg[2] <= 1'b1;
    v2_addr_20_reg_691[2:0] <= 3'b110;
    v2_addr_20_reg_691_pp0_iter1_reg[2:0] <= 3'b110;
    v2_addr_20_reg_691_pp0_iter2_reg[2:0] <= 3'b110;
    v2_addr_21_reg_767[2:0] <= 3'b111;
    v2_addr_21_reg_767_pp0_iter2_reg[2:0] <= 3'b111;
end
endmodule 