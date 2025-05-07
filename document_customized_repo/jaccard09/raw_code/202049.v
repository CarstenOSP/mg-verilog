module SgdLR_sw_SgdLR_sw_Pipeline_label_43 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v2_3_address0,v2_3_ce0,v2_3_we0,v2_3_d0,v2_3_q0,v2_3_address1,v2_3_ce1,v2_3_we1,v2_3_d1,v2_3_q1,v2_2_address0,v2_2_ce0,v2_2_we0,v2_2_d0,v2_2_q0,v2_2_address1,v2_2_ce1,v2_2_we1,v2_2_d1,v2_2_q1,v2_1_address0,v2_1_ce0,v2_1_we0,v2_1_d0,v2_1_q0,v2_1_address1,v2_1_ce1,v2_1_we1,v2_1_d1,v2_1_q1,v2_0_address0,v2_0_ce0,v2_0_we0,v2_0_d0,v2_0_q0,v2_0_address1,v2_0_ce1,v2_0_we1,v2_0_d1,v2_0_q1,v3_address0,v3_ce0,v3_q0,v3_address1,v3_ce1,v3_q1,v3_1_address0,v3_1_ce0,v3_1_q0,v3_1_address1,v3_1_ce1,v3_1_q1,v3_2_address0,v3_2_ce0,v3_2_q0,v3_2_address1,v3_2_ce1,v3_2_q1,v3_3_address0,v3_3_ce0,v3_3_q0,v3_3_address1,v3_3_ce1,v3_3_q1,grp_fu_565_p_din0,grp_fu_565_p_din1,grp_fu_565_p_opcode,grp_fu_565_p_dout0,grp_fu_565_p_ce,grp_fu_1190_p_din0,grp_fu_1190_p_din1,grp_fu_1190_p_opcode,grp_fu_1190_p_dout0,grp_fu_1190_p_ce,grp_fu_1194_p_din0,grp_fu_1194_p_din1,grp_fu_1194_p_opcode,grp_fu_1194_p_dout0,grp_fu_1194_p_ce,grp_fu_1198_p_din0,grp_fu_1198_p_din1,grp_fu_1198_p_opcode,grp_fu_1198_p_dout0,grp_fu_1198_p_ce,grp_fu_1158_p_din0,grp_fu_1158_p_din1,grp_fu_1158_p_dout0,grp_fu_1158_p_ce,grp_fu_1162_p_din0,grp_fu_1162_p_din1,grp_fu_1162_p_dout0,grp_fu_1162_p_ce,grp_fu_1166_p_din0,grp_fu_1166_p_din1,grp_fu_1166_p_dout0,grp_fu_1166_p_ce,grp_fu_1170_p_din0,grp_fu_1170_p_din1,grp_fu_1170_p_dout0,grp_fu_1170_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
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
input  [31:0] v2_3_q0;
output  [7:0] v2_3_address1;
output   v2_3_ce1;
output   v2_3_we1;
output  [31:0] v2_3_d1;
input  [31:0] v2_3_q1;
output  [7:0] v2_2_address0;
output   v2_2_ce0;
output   v2_2_we0;
output  [31:0] v2_2_d0;
input  [31:0] v2_2_q0;
output  [7:0] v2_2_address1;
output   v2_2_ce1;
output   v2_2_we1;
output  [31:0] v2_2_d1;
input  [31:0] v2_2_q1;
output  [7:0] v2_1_address0;
output   v2_1_ce0;
output   v2_1_we0;
output  [31:0] v2_1_d0;
input  [31:0] v2_1_q0;
output  [7:0] v2_1_address1;
output   v2_1_ce1;
output   v2_1_we1;
output  [31:0] v2_1_d1;
input  [31:0] v2_1_q1;
output  [7:0] v2_0_address0;
output   v2_0_ce0;
output   v2_0_we0;
output  [31:0] v2_0_d0;
input  [31:0] v2_0_q0;
output  [7:0] v2_0_address1;
output   v2_0_ce1;
output   v2_0_we1;
output  [31:0] v2_0_d1;
input  [31:0] v2_0_q1;
output  [7:0] v3_address0;
output   v3_ce0;
input  [31:0] v3_q0;
output  [7:0] v3_address1;
output   v3_ce1;
input  [31:0] v3_q1;
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
output  [31:0] grp_fu_565_p_din0;
output  [31:0] grp_fu_565_p_din1;
output  [0:0] grp_fu_565_p_opcode;
input  [31:0] grp_fu_565_p_dout0;
output   grp_fu_565_p_ce;
output  [31:0] grp_fu_1190_p_din0;
output  [31:0] grp_fu_1190_p_din1;
output  [1:0] grp_fu_1190_p_opcode;
input  [31:0] grp_fu_1190_p_dout0;
output   grp_fu_1190_p_ce;
output  [31:0] grp_fu_1194_p_din0;
output  [31:0] grp_fu_1194_p_din1;
output  [1:0] grp_fu_1194_p_opcode;
input  [31:0] grp_fu_1194_p_dout0;
output   grp_fu_1194_p_ce;
output  [31:0] grp_fu_1198_p_din0;
output  [31:0] grp_fu_1198_p_din1;
output  [1:0] grp_fu_1198_p_opcode;
input  [31:0] grp_fu_1198_p_dout0;
output   grp_fu_1198_p_ce;
output  [31:0] grp_fu_1158_p_din0;
output  [31:0] grp_fu_1158_p_din1;
input  [31:0] grp_fu_1158_p_dout0;
output   grp_fu_1158_p_ce;
output  [31:0] grp_fu_1162_p_din0;
output  [31:0] grp_fu_1162_p_din1;
input  [31:0] grp_fu_1162_p_dout0;
output   grp_fu_1162_p_ce;
output  [31:0] grp_fu_1166_p_din0;
output  [31:0] grp_fu_1166_p_din1;
input  [31:0] grp_fu_1166_p_dout0;
output   grp_fu_1166_p_ce;
output  [31:0] grp_fu_1170_p_din0;
output  [31:0] grp_fu_1170_p_din1;
input  [31:0] grp_fu_1170_p_dout0;
output   grp_fu_1170_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_reg_446;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [0:0] tmp_fu_304_p3;
wire    ap_block_pp0_stage0_11001;
reg   [7:0] v2_0_addr_reg_455;
reg   [7:0] v2_0_addr_reg_455_pp0_iter1_reg;
reg   [7:0] v2_0_addr_reg_455_pp0_iter2_reg;
reg   [7:0] v2_0_addr_reg_455_pp0_iter3_reg;
reg   [7:0] v2_0_addr_reg_455_pp0_iter4_reg;
reg   [7:0] v2_0_addr_reg_455_pp0_iter5_reg;
reg   [7:0] v2_0_addr_reg_455_pp0_iter6_reg;
reg   [7:0] v2_1_addr_reg_465;
reg   [7:0] v2_1_addr_reg_465_pp0_iter1_reg;
reg   [7:0] v2_1_addr_reg_465_pp0_iter2_reg;
reg   [7:0] v2_1_addr_reg_465_pp0_iter3_reg;
reg   [7:0] v2_1_addr_reg_465_pp0_iter4_reg;
reg   [7:0] v2_1_addr_reg_465_pp0_iter5_reg;
reg   [7:0] v2_1_addr_reg_465_pp0_iter6_reg;
reg   [7:0] v2_2_addr_reg_475;
reg   [7:0] v2_2_addr_reg_475_pp0_iter1_reg;
reg   [7:0] v2_2_addr_reg_475_pp0_iter2_reg;
reg   [7:0] v2_2_addr_reg_475_pp0_iter3_reg;
reg   [7:0] v2_2_addr_reg_475_pp0_iter4_reg;
reg   [7:0] v2_2_addr_reg_475_pp0_iter5_reg;
reg   [7:0] v2_2_addr_reg_475_pp0_iter6_reg;
reg   [7:0] v2_3_addr_reg_485;
reg   [7:0] v2_3_addr_reg_485_pp0_iter1_reg;
reg   [7:0] v2_3_addr_reg_485_pp0_iter2_reg;
reg   [7:0] v2_3_addr_reg_485_pp0_iter3_reg;
reg   [7:0] v2_3_addr_reg_485_pp0_iter4_reg;
reg   [7:0] v2_3_addr_reg_485_pp0_iter5_reg;
reg   [7:0] v2_3_addr_reg_485_pp0_iter6_reg;
reg   [7:0] v2_0_addr_3_reg_495;
reg   [7:0] v2_0_addr_3_reg_495_pp0_iter1_reg;
reg   [7:0] v2_0_addr_3_reg_495_pp0_iter2_reg;
reg   [7:0] v2_0_addr_3_reg_495_pp0_iter3_reg;
reg   [7:0] v2_0_addr_3_reg_495_pp0_iter4_reg;
reg   [7:0] v2_0_addr_3_reg_495_pp0_iter5_reg;
reg   [7:0] v2_0_addr_3_reg_495_pp0_iter6_reg;
reg   [7:0] v2_0_addr_3_reg_495_pp0_iter7_reg;
reg   [7:0] v2_1_addr_3_reg_505;
reg   [7:0] v2_1_addr_3_reg_505_pp0_iter1_reg;
reg   [7:0] v2_1_addr_3_reg_505_pp0_iter2_reg;
reg   [7:0] v2_1_addr_3_reg_505_pp0_iter3_reg;
reg   [7:0] v2_1_addr_3_reg_505_pp0_iter4_reg;
reg   [7:0] v2_1_addr_3_reg_505_pp0_iter5_reg;
reg   [7:0] v2_1_addr_3_reg_505_pp0_iter6_reg;
reg   [7:0] v2_1_addr_3_reg_505_pp0_iter7_reg;
reg   [7:0] v2_2_addr_3_reg_515;
reg   [7:0] v2_2_addr_3_reg_515_pp0_iter1_reg;
reg   [7:0] v2_2_addr_3_reg_515_pp0_iter2_reg;
reg   [7:0] v2_2_addr_3_reg_515_pp0_iter3_reg;
reg   [7:0] v2_2_addr_3_reg_515_pp0_iter4_reg;
reg   [7:0] v2_2_addr_3_reg_515_pp0_iter5_reg;
reg   [7:0] v2_2_addr_3_reg_515_pp0_iter6_reg;
reg   [7:0] v2_2_addr_3_reg_515_pp0_iter7_reg;
reg   [7:0] v2_3_addr_3_reg_525;
reg   [7:0] v2_3_addr_3_reg_525_pp0_iter1_reg;
reg   [7:0] v2_3_addr_3_reg_525_pp0_iter2_reg;
reg   [7:0] v2_3_addr_3_reg_525_pp0_iter3_reg;
reg   [7:0] v2_3_addr_3_reg_525_pp0_iter4_reg;
reg   [7:0] v2_3_addr_3_reg_525_pp0_iter5_reg;
reg   [7:0] v2_3_addr_3_reg_525_pp0_iter6_reg;
reg   [7:0] v2_3_addr_3_reg_525_pp0_iter7_reg;
reg   [31:0] v26_reg_530;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] v26_16_reg_535;
reg   [31:0] v26_17_reg_540;
reg   [31:0] v26_18_reg_545;
reg   [31:0] v26_19_reg_550;
reg   [31:0] v26_20_reg_555;
reg   [31:0] v26_21_reg_560;
reg   [31:0] v26_22_reg_565;
reg   [31:0] v27_8_reg_570;
reg   [31:0] v2_0_load_reg_575;
reg   [31:0] v27_9_reg_580;
reg   [31:0] v2_1_load_reg_585;
reg   [31:0] v27_reg_590;
reg   [31:0] v2_2_load_reg_595;
reg   [31:0] v27_16_reg_600;
reg   [31:0] v2_3_load_reg_605;
reg   [31:0] v2_0_load_3_reg_610;
reg   [31:0] v2_1_load_3_reg_615;
reg   [31:0] v2_2_load_3_reg_620;
reg   [31:0] v2_3_load_3_reg_625;
wire   [31:0] v28_fu_375_p1;
wire   [31:0] v28_16_fu_379_p1;
wire   [31:0] v28_17_fu_383_p1;
wire   [31:0] v28_18_fu_387_p1;
reg   [31:0] v27_17_reg_650;
reg   [31:0] v27_18_reg_655;
reg   [31:0] v27_19_reg_660;
reg   [31:0] v27_20_reg_665;
wire   [31:0] v28_19_fu_391_p1;
wire   [31:0] v28_20_fu_395_p1;
wire   [31:0] v28_21_fu_399_p1;
wire   [31:0] v28_22_fu_403_p1;
reg   [31:0] v29_8_reg_690;
reg   [31:0] v29_9_reg_695;
reg   [31:0] v29_reg_700;
reg   [31:0] v29_16_reg_705;
reg   [31:0] v29_17_reg_710;
reg   [31:0] v29_18_reg_715;
reg   [31:0] v29_19_reg_720;
reg   [31:0] v29_20_reg_725;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln55_fu_322_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln56_fu_352_p1;
reg   [10:0] v25_1_fu_64;
wire   [10:0] add_ln55_fu_364_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v25;
reg    v3_ce1_local;
reg    v3_ce0_local;
reg    v3_1_ce1_local;
reg    v3_1_ce0_local;
reg    v3_2_ce1_local;
reg    v3_2_ce0_local;
reg    v3_3_ce1_local;
reg    v3_3_ce0_local;
reg    v2_0_ce1_local;
reg   [7:0] v2_0_address1_local;
reg    v2_0_ce0_local;
reg   [7:0] v2_0_address0_local;
reg    v2_0_we1_local;
wire   [31:0] bitcast_ln60_8_fu_407_p1;
wire    ap_block_pp0_stage1;
reg    v2_0_we0_local;
wire   [31:0] bitcast_ln60_12_fu_423_p1;
reg    v2_1_ce1_local;
reg   [7:0] v2_1_address1_local;
reg    v2_1_ce0_local;
reg   [7:0] v2_1_address0_local;
reg    v2_1_we1_local;
wire   [31:0] bitcast_ln60_9_fu_411_p1;
reg    v2_1_we0_local;
wire   [31:0] bitcast_ln60_13_fu_427_p1;
reg    v2_2_ce1_local;
reg   [7:0] v2_2_address1_local;
reg    v2_2_ce0_local;
reg   [7:0] v2_2_address0_local;
reg    v2_2_we1_local;
wire   [31:0] bitcast_ln60_10_fu_415_p1;
reg    v2_2_we0_local;
wire   [31:0] bitcast_ln60_14_fu_431_p1;
reg    v2_3_ce1_local;
reg   [7:0] v2_3_address1_local;
reg    v2_3_ce0_local;
reg   [7:0] v2_3_address0_local;
reg    v2_3_we1_local;
wire   [31:0] bitcast_ln60_11_fu_419_p1;
reg    v2_3_we0_local;
wire   [31:0] bitcast_ln60_fu_435_p1;
reg   [31:0] grp_fu_260_p0;
reg   [31:0] grp_fu_260_p1;
reg   [31:0] grp_fu_264_p0;
reg   [31:0] grp_fu_264_p1;
reg   [31:0] grp_fu_268_p0;
reg   [31:0] grp_fu_268_p1;
reg   [31:0] grp_fu_272_p0;
reg   [31:0] grp_fu_272_p1;
reg   [31:0] grp_fu_276_p0;
reg   [31:0] grp_fu_281_p0;
reg   [31:0] grp_fu_286_p0;
reg   [31:0] grp_fu_291_p0;
wire   [7:0] lshr_ln55_1_fu_312_p4;
wire   [6:0] tmp_4_fu_334_p4;
wire   [7:0] or_ln56_1_fu_344_p3;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg   [1:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to7;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v25_1_fu_64 = 11'd0;
#0 ap_done_reg = 1'b0;
end
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_304_p3 == 1'd0))) begin
            v25_1_fu_64 <= add_ln55_fu_364_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v25_1_fu_64 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_reg_446 <= ap_sig_allocacmp_v25[32'd10];
        v2_0_addr_3_reg_495[7 : 1] <= zext_ln56_fu_352_p1[7 : 1];
        v2_0_addr_3_reg_495_pp0_iter1_reg[7 : 1] <= v2_0_addr_3_reg_495[7 : 1];
        v2_0_addr_3_reg_495_pp0_iter2_reg[7 : 1] <= v2_0_addr_3_reg_495_pp0_iter1_reg[7 : 1];
        v2_0_addr_3_reg_495_pp0_iter3_reg[7 : 1] <= v2_0_addr_3_reg_495_pp0_iter2_reg[7 : 1];
        v2_0_addr_3_reg_495_pp0_iter4_reg[7 : 1] <= v2_0_addr_3_reg_495_pp0_iter3_reg[7 : 1];
        v2_0_addr_3_reg_495_pp0_iter5_reg[7 : 1] <= v2_0_addr_3_reg_495_pp0_iter4_reg[7 : 1];
        v2_0_addr_3_reg_495_pp0_iter6_reg[7 : 1] <= v2_0_addr_3_reg_495_pp0_iter5_reg[7 : 1];
        v2_0_addr_3_reg_495_pp0_iter7_reg[7 : 1] <= v2_0_addr_3_reg_495_pp0_iter6_reg[7 : 1];
        v2_0_addr_reg_455 <= zext_ln55_fu_322_p1;
        v2_0_addr_reg_455_pp0_iter1_reg <= v2_0_addr_reg_455;
        v2_0_addr_reg_455_pp0_iter2_reg <= v2_0_addr_reg_455_pp0_iter1_reg;
        v2_0_addr_reg_455_pp0_iter3_reg <= v2_0_addr_reg_455_pp0_iter2_reg;
        v2_0_addr_reg_455_pp0_iter4_reg <= v2_0_addr_reg_455_pp0_iter3_reg;
        v2_0_addr_reg_455_pp0_iter5_reg <= v2_0_addr_reg_455_pp0_iter4_reg;
        v2_0_addr_reg_455_pp0_iter6_reg <= v2_0_addr_reg_455_pp0_iter5_reg;
        v2_1_addr_3_reg_505[7 : 1] <= zext_ln56_fu_352_p1[7 : 1];
        v2_1_addr_3_reg_505_pp0_iter1_reg[7 : 1] <= v2_1_addr_3_reg_505[7 : 1];
        v2_1_addr_3_reg_505_pp0_iter2_reg[7 : 1] <= v2_1_addr_3_reg_505_pp0_iter1_reg[7 : 1];
        v2_1_addr_3_reg_505_pp0_iter3_reg[7 : 1] <= v2_1_addr_3_reg_505_pp0_iter2_reg[7 : 1];
        v2_1_addr_3_reg_505_pp0_iter4_reg[7 : 1] <= v2_1_addr_3_reg_505_pp0_iter3_reg[7 : 1];
        v2_1_addr_3_reg_505_pp0_iter5_reg[7 : 1] <= v2_1_addr_3_reg_505_pp0_iter4_reg[7 : 1];
        v2_1_addr_3_reg_505_pp0_iter6_reg[7 : 1] <= v2_1_addr_3_reg_505_pp0_iter5_reg[7 : 1];
        v2_1_addr_3_reg_505_pp0_iter7_reg[7 : 1] <= v2_1_addr_3_reg_505_pp0_iter6_reg[7 : 1];
        v2_1_addr_reg_465 <= zext_ln55_fu_322_p1;
        v2_1_addr_reg_465_pp0_iter1_reg <= v2_1_addr_reg_465;
        v2_1_addr_reg_465_pp0_iter2_reg <= v2_1_addr_reg_465_pp0_iter1_reg;
        v2_1_addr_reg_465_pp0_iter3_reg <= v2_1_addr_reg_465_pp0_iter2_reg;
        v2_1_addr_reg_465_pp0_iter4_reg <= v2_1_addr_reg_465_pp0_iter3_reg;
        v2_1_addr_reg_465_pp0_iter5_reg <= v2_1_addr_reg_465_pp0_iter4_reg;
        v2_1_addr_reg_465_pp0_iter6_reg <= v2_1_addr_reg_465_pp0_iter5_reg;
        v2_2_addr_3_reg_515[7 : 1] <= zext_ln56_fu_352_p1[7 : 1];
        v2_2_addr_3_reg_515_pp0_iter1_reg[7 : 1] <= v2_2_addr_3_reg_515[7 : 1];
        v2_2_addr_3_reg_515_pp0_iter2_reg[7 : 1] <= v2_2_addr_3_reg_515_pp0_iter1_reg[7 : 1];
        v2_2_addr_3_reg_515_pp0_iter3_reg[7 : 1] <= v2_2_addr_3_reg_515_pp0_iter2_reg[7 : 1];
        v2_2_addr_3_reg_515_pp0_iter4_reg[7 : 1] <= v2_2_addr_3_reg_515_pp0_iter3_reg[7 : 1];
        v2_2_addr_3_reg_515_pp0_iter5_reg[7 : 1] <= v2_2_addr_3_reg_515_pp0_iter4_reg[7 : 1];
        v2_2_addr_3_reg_515_pp0_iter6_reg[7 : 1] <= v2_2_addr_3_reg_515_pp0_iter5_reg[7 : 1];
        v2_2_addr_3_reg_515_pp0_iter7_reg[7 : 1] <= v2_2_addr_3_reg_515_pp0_iter6_reg[7 : 1];
        v2_2_addr_reg_475 <= zext_ln55_fu_322_p1;
        v2_2_addr_reg_475_pp0_iter1_reg <= v2_2_addr_reg_475;
        v2_2_addr_reg_475_pp0_iter2_reg <= v2_2_addr_reg_475_pp0_iter1_reg;
        v2_2_addr_reg_475_pp0_iter3_reg <= v2_2_addr_reg_475_pp0_iter2_reg;
        v2_2_addr_reg_475_pp0_iter4_reg <= v2_2_addr_reg_475_pp0_iter3_reg;
        v2_2_addr_reg_475_pp0_iter5_reg <= v2_2_addr_reg_475_pp0_iter4_reg;
        v2_2_addr_reg_475_pp0_iter6_reg <= v2_2_addr_reg_475_pp0_iter5_reg;
        v2_3_addr_3_reg_525[7 : 1] <= zext_ln56_fu_352_p1[7 : 1];
        v2_3_addr_3_reg_525_pp0_iter1_reg[7 : 1] <= v2_3_addr_3_reg_525[7 : 1];
        v2_3_addr_3_reg_525_pp0_iter2_reg[7 : 1] <= v2_3_addr_3_reg_525_pp0_iter1_reg[7 : 1];
        v2_3_addr_3_reg_525_pp0_iter3_reg[7 : 1] <= v2_3_addr_3_reg_525_pp0_iter2_reg[7 : 1];
        v2_3_addr_3_reg_525_pp0_iter4_reg[7 : 1] <= v2_3_addr_3_reg_525_pp0_iter3_reg[7 : 1];
        v2_3_addr_3_reg_525_pp0_iter5_reg[7 : 1] <= v2_3_addr_3_reg_525_pp0_iter4_reg[7 : 1];
        v2_3_addr_3_reg_525_pp0_iter6_reg[7 : 1] <= v2_3_addr_3_reg_525_pp0_iter5_reg[7 : 1];
        v2_3_addr_3_reg_525_pp0_iter7_reg[7 : 1] <= v2_3_addr_3_reg_525_pp0_iter6_reg[7 : 1];
        v2_3_addr_reg_485 <= zext_ln55_fu_322_p1;
        v2_3_addr_reg_485_pp0_iter1_reg <= v2_3_addr_reg_485;
        v2_3_addr_reg_485_pp0_iter2_reg <= v2_3_addr_reg_485_pp0_iter1_reg;
        v2_3_addr_reg_485_pp0_iter3_reg <= v2_3_addr_reg_485_pp0_iter2_reg;
        v2_3_addr_reg_485_pp0_iter4_reg <= v2_3_addr_reg_485_pp0_iter3_reg;
        v2_3_addr_reg_485_pp0_iter5_reg <= v2_3_addr_reg_485_pp0_iter4_reg;
        v2_3_addr_reg_485_pp0_iter6_reg <= v2_3_addr_reg_485_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v26_16_reg_535 <= v3_1_q1;
        v26_17_reg_540 <= v3_2_q1;
        v26_18_reg_545 <= v3_3_q1;
        v26_19_reg_550 <= v3_q0;
        v26_20_reg_555 <= v3_1_q0;
        v26_21_reg_560 <= v3_2_q0;
        v26_22_reg_565 <= v3_3_q0;
        v26_reg_530 <= v3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v27_16_reg_600 <= grp_fu_1170_p_dout0;
        v27_8_reg_570 <= grp_fu_1158_p_dout0;
        v27_9_reg_580 <= grp_fu_1162_p_dout0;
        v27_reg_590 <= grp_fu_1166_p_dout0;
        v2_0_load_3_reg_610 <= v2_0_q0;
        v2_0_load_reg_575 <= v2_0_q1;
        v2_1_load_3_reg_615 <= v2_1_q0;
        v2_1_load_reg_585 <= v2_1_q1;
        v2_2_load_3_reg_620 <= v2_2_q0;
        v2_2_load_reg_595 <= v2_2_q1;
        v2_3_load_3_reg_625 <= v2_3_q0;
        v2_3_load_reg_605 <= v2_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v27_17_reg_650 <= grp_fu_1158_p_dout0;
        v27_18_reg_655 <= grp_fu_1162_p_dout0;
        v27_19_reg_660 <= grp_fu_1166_p_dout0;
        v27_20_reg_665 <= grp_fu_1170_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v29_16_reg_705 <= grp_fu_1198_p_dout0;
        v29_8_reg_690 <= grp_fu_565_p_dout0;
        v29_9_reg_695 <= grp_fu_1190_p_dout0;
        v29_reg_700 <= grp_fu_1194_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v29_17_reg_710 <= grp_fu_565_p_dout0;
        v29_18_reg_715 <= grp_fu_1190_p_dout0;
        v29_19_reg_720 <= grp_fu_1194_p_dout0;
        v29_20_reg_725 <= grp_fu_1198_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_446 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to7 = 1'b1;
    end else begin
        ap_idle_pp0_1to7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v25 = 11'd0;
    end else begin
        ap_sig_allocacmp_v25 = v25_1_fu_64;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_260_p0 = v28_19_fu_391_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_260_p0 = v28_fu_375_p1;
        end else begin
            grp_fu_260_p0 = 'bx;
        end
    end else begin
        grp_fu_260_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_260_p1 = v27_17_reg_650;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_260_p1 = v27_8_reg_570;
        end else begin
            grp_fu_260_p1 = 'bx;
        end
    end else begin
        grp_fu_260_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_264_p0 = v28_20_fu_395_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_264_p0 = v28_16_fu_379_p1;
        end else begin
            grp_fu_264_p0 = 'bx;
        end
    end else begin
        grp_fu_264_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_264_p1 = v27_18_reg_655;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_264_p1 = v27_9_reg_580;
        end else begin
            grp_fu_264_p1 = 'bx;
        end
    end else begin
        grp_fu_264_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_268_p0 = v28_21_fu_399_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_268_p0 = v28_17_fu_383_p1;
        end else begin
            grp_fu_268_p0 = 'bx;
        end
    end else begin
        grp_fu_268_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_268_p1 = v27_19_reg_660;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_268_p1 = v27_reg_590;
        end else begin
            grp_fu_268_p1 = 'bx;
        end
    end else begin
        grp_fu_268_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_272_p0 = v28_22_fu_403_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_272_p0 = v28_18_fu_387_p1;
        end else begin
            grp_fu_272_p0 = 'bx;
        end
    end else begin
        grp_fu_272_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_272_p1 = v27_20_reg_665;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_272_p1 = v27_16_reg_600;
        end else begin
            grp_fu_272_p1 = 'bx;
        end
    end else begin
        grp_fu_272_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_276_p0 = v26_19_reg_550;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_276_p0 = v26_reg_530;
        end else begin
            grp_fu_276_p0 = 'bx;
        end
    end else begin
        grp_fu_276_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_281_p0 = v26_20_reg_555;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_281_p0 = v26_16_reg_535;
        end else begin
            grp_fu_281_p0 = 'bx;
        end
    end else begin
        grp_fu_281_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_286_p0 = v26_21_reg_560;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_286_p0 = v26_17_reg_540;
        end else begin
            grp_fu_286_p0 = 'bx;
        end
    end else begin
        grp_fu_286_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_291_p0 = v26_22_reg_565;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_291_p0 = v26_18_reg_545;
        end else begin
            grp_fu_291_p0 = 'bx;
        end
    end else begin
        grp_fu_291_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_0_address0_local = v2_0_addr_3_reg_495_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_0_address0_local = v2_0_addr_3_reg_495_pp0_iter1_reg;
    end else begin
        v2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_0_address1_local = v2_0_addr_reg_455_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_0_address1_local = v2_0_addr_reg_455_pp0_iter1_reg;
    end else begin
        v2_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_0_ce0_local = 1'b1;
    end else begin
        v2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_0_ce1_local = 1'b1;
    end else begin
        v2_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_0_we0_local = 1'b1;
    end else begin
        v2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_0_we1_local = 1'b1;
    end else begin
        v2_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_1_address0_local = v2_1_addr_3_reg_505_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_1_address0_local = v2_1_addr_3_reg_505_pp0_iter1_reg;
    end else begin
        v2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_1_address1_local = v2_1_addr_reg_465_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_1_address1_local = v2_1_addr_reg_465_pp0_iter1_reg;
    end else begin
        v2_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_1_ce0_local = 1'b1;
    end else begin
        v2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_1_ce1_local = 1'b1;
    end else begin
        v2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_1_we0_local = 1'b1;
    end else begin
        v2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_1_we1_local = 1'b1;
    end else begin
        v2_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_2_address0_local = v2_2_addr_3_reg_515_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_2_address0_local = v2_2_addr_3_reg_515_pp0_iter1_reg;
    end else begin
        v2_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_2_address1_local = v2_2_addr_reg_475_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_2_address1_local = v2_2_addr_reg_475_pp0_iter1_reg;
    end else begin
        v2_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_2_ce0_local = 1'b1;
    end else begin
        v2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_2_ce1_local = 1'b1;
    end else begin
        v2_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_2_we0_local = 1'b1;
    end else begin
        v2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_2_we1_local = 1'b1;
    end else begin
        v2_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_3_address0_local = v2_3_addr_3_reg_525_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_3_address0_local = v2_3_addr_3_reg_525_pp0_iter1_reg;
    end else begin
        v2_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_3_address1_local = v2_3_addr_reg_485_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_3_address1_local = v2_3_addr_reg_485_pp0_iter1_reg;
    end else begin
        v2_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_3_ce0_local = 1'b1;
    end else begin
        v2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_3_ce1_local = 1'b1;
    end else begin
        v2_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_3_we0_local = 1'b1;
    end else begin
        v2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_3_we1_local = 1'b1;
    end else begin
        v2_3_we1_local = 1'b0;
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
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to7 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
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
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign bitcast_ln60_10_fu_415_p1 = v29_reg_700;
assign bitcast_ln60_11_fu_419_p1 = v29_16_reg_705;
assign bitcast_ln60_12_fu_423_p1 = v29_17_reg_710;
assign bitcast_ln60_13_fu_427_p1 = v29_18_reg_715;
assign bitcast_ln60_14_fu_431_p1 = v29_19_reg_720;
assign bitcast_ln60_8_fu_407_p1 = v29_8_reg_690;
assign bitcast_ln60_9_fu_411_p1 = v29_9_reg_695;
assign bitcast_ln60_fu_435_p1 = v29_20_reg_725;
assign grp_fu_1158_p_ce = 1'b1;
assign grp_fu_1158_p_din0 = grp_fu_276_p0;
assign grp_fu_1158_p_din1 = 32'd3345637376;
assign grp_fu_1162_p_ce = 1'b1;
assign grp_fu_1162_p_din0 = grp_fu_281_p0;
assign grp_fu_1162_p_din1 = 32'd3345637376;
assign grp_fu_1166_p_ce = 1'b1;
assign grp_fu_1166_p_din0 = grp_fu_286_p0;
assign grp_fu_1166_p_din1 = 32'd3345637376;
assign grp_fu_1170_p_ce = 1'b1;
assign grp_fu_1170_p_din0 = grp_fu_291_p0;
assign grp_fu_1170_p_din1 = 32'd3345637376;
assign grp_fu_1190_p_ce = 1'b1;
assign grp_fu_1190_p_din0 = grp_fu_264_p0;
assign grp_fu_1190_p_din1 = grp_fu_264_p1;
assign grp_fu_1190_p_opcode = 2'd0;
assign grp_fu_1194_p_ce = 1'b1;
assign grp_fu_1194_p_din0 = grp_fu_268_p0;
assign grp_fu_1194_p_din1 = grp_fu_268_p1;
assign grp_fu_1194_p_opcode = 2'd0;
assign grp_fu_1198_p_ce = 1'b1;
assign grp_fu_1198_p_din0 = grp_fu_272_p0;
assign grp_fu_1198_p_din1 = grp_fu_272_p1;
assign grp_fu_1198_p_opcode = 2'd0;
assign grp_fu_565_p_ce = 1'b1;
assign grp_fu_565_p_din0 = grp_fu_260_p0;
assign grp_fu_565_p_din1 = grp_fu_260_p1;
assign grp_fu_565_p_opcode = 2'd0;
assign lshr_ln55_1_fu_312_p4 = {{ap_sig_allocacmp_v25[9:2]}};
assign or_ln56_1_fu_344_p3 = {{tmp_4_fu_334_p4}, {1'd1}};
assign tmp_4_fu_334_p4 = {{ap_sig_allocacmp_v25[9:3]}};
assign tmp_fu_304_p3 = ap_sig_allocacmp_v25[32'd10];
assign v28_16_fu_379_p1 = v2_1_load_reg_585;
assign v28_17_fu_383_p1 = v2_2_load_reg_595;
assign v28_18_fu_387_p1 = v2_3_load_reg_605;
assign v28_19_fu_391_p1 = v2_0_load_3_reg_610;
assign v28_20_fu_395_p1 = v2_1_load_3_reg_615;
assign v28_21_fu_399_p1 = v2_2_load_3_reg_620;
assign v28_22_fu_403_p1 = v2_3_load_3_reg_625;
assign v28_fu_375_p1 = v2_0_load_reg_575;
assign v2_0_address0 = v2_0_address0_local;
assign v2_0_address1 = v2_0_address1_local;
assign v2_0_ce0 = v2_0_ce0_local;
assign v2_0_ce1 = v2_0_ce1_local;
assign v2_0_d0 = bitcast_ln60_12_fu_423_p1;
assign v2_0_d1 = bitcast_ln60_8_fu_407_p1;
assign v2_0_we0 = v2_0_we0_local;
assign v2_0_we1 = v2_0_we1_local;
assign v2_1_address0 = v2_1_address0_local;
assign v2_1_address1 = v2_1_address1_local;
assign v2_1_ce0 = v2_1_ce0_local;
assign v2_1_ce1 = v2_1_ce1_local;
assign v2_1_d0 = bitcast_ln60_13_fu_427_p1;
assign v2_1_d1 = bitcast_ln60_9_fu_411_p1;
assign v2_1_we0 = v2_1_we0_local;
assign v2_1_we1 = v2_1_we1_local;
assign v2_2_address0 = v2_2_address0_local;
assign v2_2_address1 = v2_2_address1_local;
assign v2_2_ce0 = v2_2_ce0_local;
assign v2_2_ce1 = v2_2_ce1_local;
assign v2_2_d0 = bitcast_ln60_14_fu_431_p1;
assign v2_2_d1 = bitcast_ln60_10_fu_415_p1;
assign v2_2_we0 = v2_2_we0_local;
assign v2_2_we1 = v2_2_we1_local;
assign v2_3_address0 = v2_3_address0_local;
assign v2_3_address1 = v2_3_address1_local;
assign v2_3_ce0 = v2_3_ce0_local;
assign v2_3_ce1 = v2_3_ce1_local;
assign v2_3_d0 = bitcast_ln60_fu_435_p1;
assign v2_3_d1 = bitcast_ln60_11_fu_419_p1;
assign v2_3_we0 = v2_3_we0_local;
assign v2_3_we1 = v2_3_we1_local;
assign v3_1_address0 = zext_ln56_fu_352_p1;
assign v3_1_address1 = zext_ln55_fu_322_p1;
assign v3_1_ce0 = v3_1_ce0_local;
assign v3_1_ce1 = v3_1_ce1_local;
assign v3_2_address0 = zext_ln56_fu_352_p1;
assign v3_2_address1 = zext_ln55_fu_322_p1;
assign v3_2_ce0 = v3_2_ce0_local;
assign v3_2_ce1 = v3_2_ce1_local;
assign v3_3_address0 = zext_ln56_fu_352_p1;
assign v3_3_address1 = zext_ln55_fu_322_p1;
assign v3_3_ce0 = v3_3_ce0_local;
assign v3_3_ce1 = v3_3_ce1_local;
assign v3_address0 = zext_ln56_fu_352_p1;
assign v3_address1 = zext_ln55_fu_322_p1;
assign v3_ce0 = v3_ce0_local;
assign v3_ce1 = v3_ce1_local;
assign zext_ln55_fu_322_p1 = lshr_ln55_1_fu_312_p4;
assign zext_ln56_fu_352_p1 = or_ln56_1_fu_344_p3;
always @ (posedge ap_clk) begin
    v2_0_addr_3_reg_495[0] <= 1'b1;
    v2_0_addr_3_reg_495_pp0_iter1_reg[0] <= 1'b1;
    v2_0_addr_3_reg_495_pp0_iter2_reg[0] <= 1'b1;
    v2_0_addr_3_reg_495_pp0_iter3_reg[0] <= 1'b1;
    v2_0_addr_3_reg_495_pp0_iter4_reg[0] <= 1'b1;
    v2_0_addr_3_reg_495_pp0_iter5_reg[0] <= 1'b1;
    v2_0_addr_3_reg_495_pp0_iter6_reg[0] <= 1'b1;
    v2_0_addr_3_reg_495_pp0_iter7_reg[0] <= 1'b1;
    v2_1_addr_3_reg_505[0] <= 1'b1;
    v2_1_addr_3_reg_505_pp0_iter1_reg[0] <= 1'b1;
    v2_1_addr_3_reg_505_pp0_iter2_reg[0] <= 1'b1;
    v2_1_addr_3_reg_505_pp0_iter3_reg[0] <= 1'b1;
    v2_1_addr_3_reg_505_pp0_iter4_reg[0] <= 1'b1;
    v2_1_addr_3_reg_505_pp0_iter5_reg[0] <= 1'b1;
    v2_1_addr_3_reg_505_pp0_iter6_reg[0] <= 1'b1;
    v2_1_addr_3_reg_505_pp0_iter7_reg[0] <= 1'b1;
    v2_2_addr_3_reg_515[0] <= 1'b1;
    v2_2_addr_3_reg_515_pp0_iter1_reg[0] <= 1'b1;
    v2_2_addr_3_reg_515_pp0_iter2_reg[0] <= 1'b1;
    v2_2_addr_3_reg_515_pp0_iter3_reg[0] <= 1'b1;
    v2_2_addr_3_reg_515_pp0_iter4_reg[0] <= 1'b1;
    v2_2_addr_3_reg_515_pp0_iter5_reg[0] <= 1'b1;
    v2_2_addr_3_reg_515_pp0_iter6_reg[0] <= 1'b1;
    v2_2_addr_3_reg_515_pp0_iter7_reg[0] <= 1'b1;
    v2_3_addr_3_reg_525[0] <= 1'b1;
    v2_3_addr_3_reg_525_pp0_iter1_reg[0] <= 1'b1;
    v2_3_addr_3_reg_525_pp0_iter2_reg[0] <= 1'b1;
    v2_3_addr_3_reg_525_pp0_iter3_reg[0] <= 1'b1;
    v2_3_addr_3_reg_525_pp0_iter4_reg[0] <= 1'b1;
    v2_3_addr_3_reg_525_pp0_iter5_reg[0] <= 1'b1;
    v2_3_addr_3_reg_525_pp0_iter6_reg[0] <= 1'b1;
    v2_3_addr_3_reg_525_pp0_iter7_reg[0] <= 1'b1;
end
endmodule 