
module SgdLR_sw_SgdLR_sw_Pipeline_label_412 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v2_1_address0,v2_1_ce0,v2_1_we0,v2_1_d0,v2_1_q0,v2_1_address1,v2_1_ce1,v2_1_we1,v2_1_d1,v2_1_q1,v2_0_address0,v2_0_ce0,v2_0_we0,v2_0_d0,v2_0_q0,v2_0_address1,v2_0_ce1,v2_0_we1,v2_0_d1,v2_0_q1,v3_address0,v3_ce0,v3_q0,v3_address1,v3_ce1,v3_q1,grp_fu_1074_p_din0,grp_fu_1074_p_din1,grp_fu_1074_p_opcode,grp_fu_1074_p_dout0,grp_fu_1074_p_ce,grp_fu_3537_p_din0,grp_fu_3537_p_din1,grp_fu_3537_p_dout0,grp_fu_3537_p_ce);  
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
output  [8:0] v2_1_address0;
output   v2_1_ce0;
output   v2_1_we0;
output  [31:0] v2_1_d0;
input  [31:0] v2_1_q0;
output  [8:0] v2_1_address1;
output   v2_1_ce1;
output   v2_1_we1;
output  [31:0] v2_1_d1;
input  [31:0] v2_1_q1;
output  [8:0] v2_0_address0;
output   v2_0_ce0;
output   v2_0_we0;
output  [31:0] v2_0_d0;
input  [31:0] v2_0_q0;
output  [8:0] v2_0_address1;
output   v2_0_ce1;
output   v2_0_we1;
output  [31:0] v2_0_d1;
input  [31:0] v2_0_q1;
output  [9:0] v3_address0;
output   v3_ce0;
input  [31:0] v3_q0;
output  [9:0] v3_address1;
output   v3_ce1;
input  [31:0] v3_q1;
output  [31:0] grp_fu_1074_p_din0;
output  [31:0] grp_fu_1074_p_din1;
output  [0:0] grp_fu_1074_p_opcode;
input  [31:0] grp_fu_1074_p_dout0;
output   grp_fu_1074_p_ce;
output  [31:0] grp_fu_3537_p_din0;
output  [31:0] grp_fu_3537_p_din1;
input  [31:0] grp_fu_3537_p_dout0;
output   grp_fu_3537_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] tmp_reg_739;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [10:0] v25_reg_728;
wire    ap_block_pp0_stage0_11001;
reg   [8:0] v2_0_addr_12_reg_748;
reg   [8:0] v2_0_addr_12_reg_748_pp0_iter1_reg;
reg   [8:0] v2_1_addr_12_reg_753;
reg   [8:0] v2_1_addr_12_reg_753_pp0_iter1_reg;
reg   [8:0] v2_0_addr_13_reg_763;
reg   [8:0] v2_0_addr_13_reg_763_pp0_iter1_reg;
reg   [8:0] v2_1_addr_13_reg_769;
reg   [8:0] v2_1_addr_13_reg_769_pp0_iter1_reg;
wire   [0:0] tmp_84_fu_408_p3;
reg   [0:0] tmp_84_reg_775;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [0:0] tmp_84_reg_775_pp0_iter1_reg;
reg   [0:0] tmp_84_reg_775_pp0_iter2_reg;
reg   [31:0] v26_reg_782;
wire   [31:0] select_ln58_8_fu_415_p3;
reg   [31:0] select_ln58_8_reg_787;
reg   [31:0] v26_99_reg_792;
wire   [31:0] select_ln58_9_fu_423_p3;
reg   [31:0] select_ln58_9_reg_797;
reg   [8:0] v2_0_addr_14_reg_807;
reg   [8:0] v2_0_addr_14_reg_807_pp0_iter1_reg;
reg   [8:0] v2_1_addr_14_reg_812;
reg   [8:0] v2_1_addr_14_reg_812_pp0_iter1_reg;
reg   [8:0] v2_0_addr_15_reg_822;
reg   [8:0] v2_0_addr_15_reg_822_pp0_iter1_reg;
reg   [8:0] v2_0_addr_15_reg_822_pp0_iter2_reg;
reg   [8:0] v2_1_addr_15_reg_828;
reg   [8:0] v2_1_addr_15_reg_828_pp0_iter1_reg;
reg   [8:0] v2_1_addr_15_reg_828_pp0_iter2_reg;
reg   [31:0] v26_100_reg_834;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] grp_fu_316_p3;
reg   [31:0] select_ln58_10_reg_839;
reg   [31:0] v26_101_reg_844;
wire   [31:0] grp_fu_323_p3;
reg   [31:0] select_ln58_11_reg_849;
wire   [6:0] tmp_42_fu_503_p4;
reg   [6:0] tmp_42_reg_854;
wire   [5:0] tmp_44_fu_525_p4;
reg   [5:0] tmp_44_reg_860;
reg   [5:0] tmp_44_reg_860_pp0_iter1_reg;
reg   [8:0] v2_0_addr_16_reg_871;
reg   [8:0] v2_0_addr_16_reg_871_pp0_iter1_reg;
reg   [8:0] v2_0_addr_16_reg_871_pp0_iter2_reg;
reg   [8:0] v2_1_addr_16_reg_877;
reg   [8:0] v2_1_addr_16_reg_877_pp0_iter1_reg;
reg   [8:0] v2_1_addr_16_reg_877_pp0_iter2_reg;
reg   [8:0] v2_0_addr_17_reg_888;
reg   [8:0] v2_0_addr_17_reg_888_pp0_iter1_reg;
reg   [8:0] v2_0_addr_17_reg_888_pp0_iter2_reg;
reg   [8:0] v2_1_addr_17_reg_893;
reg   [8:0] v2_1_addr_17_reg_893_pp0_iter1_reg;
reg   [8:0] v2_1_addr_17_reg_893_pp0_iter2_reg;
reg   [31:0] v26_102_reg_898;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] select_ln58_12_reg_903;
reg   [31:0] v26_103_reg_908;
reg   [31:0] select_ln58_13_reg_913;
reg   [8:0] v2_0_addr_18_reg_923;
reg   [8:0] v2_0_addr_18_reg_923_pp0_iter1_reg;
reg   [8:0] v2_0_addr_18_reg_923_pp0_iter2_reg;
reg   [8:0] v2_1_addr_18_reg_929;
reg   [8:0] v2_1_addr_18_reg_929_pp0_iter1_reg;
reg   [8:0] v2_1_addr_18_reg_929_pp0_iter2_reg;
reg   [31:0] v26_104_reg_940;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] select_ln58_14_reg_945;
reg   [31:0] v26_105_reg_950;
reg   [31:0] v27_8_reg_955;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [31:0] v28_fu_637_p1;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [31:0] v27_9_reg_965;
wire   [31:0] v28_99_fu_641_p1;
wire    ap_block_pp0_stage7_11001;
reg   [31:0] v27_15_reg_975;
wire   [31:0] v28_100_fu_645_p1;
reg   [31:0] v27_10_reg_985;
wire   [31:0] v28_101_fu_649_p1;
reg   [31:0] v27_11_reg_995;
wire   [31:0] v28_102_fu_653_p1;
reg   [31:0] v27_12_reg_1005;
wire   [31:0] v28_103_fu_657_p1;
reg   [31:0] v27_13_reg_1015;
reg   [8:0] v2_0_addr_19_reg_1020;
reg   [8:0] v2_0_addr_19_reg_1020_pp0_iter2_reg;
reg   [8:0] v2_1_addr_19_reg_1025;
reg   [8:0] v2_1_addr_19_reg_1025_pp0_iter2_reg;
wire   [31:0] v28_104_fu_674_p1;
reg   [31:0] v27_14_reg_1035;
wire   [31:0] select_ln58_15_fu_678_p3;
reg   [31:0] select_ln58_15_reg_1040;
wire   [31:0] bitcast_ln60_8_fu_685_p1;
reg   [31:0] bitcast_ln60_8_reg_1045;
wire   [31:0] v28_105_fu_689_p1;
wire   [31:0] bitcast_ln60_9_fu_693_p1;
reg   [31:0] bitcast_ln60_9_reg_1056;
wire   [31:0] bitcast_ln60_10_fu_697_p1;
reg   [31:0] bitcast_ln60_10_reg_1062;
wire   [31:0] bitcast_ln60_11_fu_701_p1;
reg   [31:0] bitcast_ln60_11_reg_1068;
wire   [31:0] bitcast_ln60_12_fu_705_p1;
reg   [31:0] bitcast_ln60_12_reg_1074;
wire   [31:0] bitcast_ln60_13_fu_709_p1;
reg   [31:0] bitcast_ln60_13_reg_1080;
wire   [31:0] bitcast_ln60_14_fu_713_p1;
reg   [31:0] bitcast_ln60_14_reg_1086;
wire   [31:0] bitcast_ln60_15_fu_717_p1;
reg   [31:0] bitcast_ln60_15_reg_1092;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln55_2_fu_346_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln55_3_fu_355_p1;
wire   [63:0] zext_ln56_14_fu_379_p1;
wire   [63:0] zext_ln56_15_fu_402_p1;
wire   [63:0] zext_ln56_16_fu_448_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln56_17_fu_470_p1;
wire   [63:0] zext_ln56_18_fu_484_p1;
wire   [63:0] zext_ln56_19_fu_497_p1;
wire   [63:0] zext_ln56_20_fu_520_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln56_21_fu_542_p1;
wire   [63:0] zext_ln56_22_fu_567_p1;
wire   [63:0] zext_ln56_23_fu_584_p1;
wire   [63:0] zext_ln56_24_fu_607_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln56_25_fu_619_p1;
wire   [63:0] zext_ln56_26_fu_632_p1;
wire   [63:0] zext_ln56_27_fu_668_p1;
reg   [10:0] v25_1_fu_84;
wire   [10:0] add_ln55_fu_590_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v25;
reg    v3_ce1_local;
reg   [9:0] v3_address1_local;
reg    v3_ce0_local;
reg   [9:0] v3_address0_local;
reg    v2_0_ce1_local;
reg   [8:0] v2_0_address1_local;
reg    v2_0_ce0_local;
reg   [8:0] v2_0_address0_local;
reg    v2_0_we1_local;
reg   [31:0] v2_0_d1_local;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage4;
reg    v2_0_we0_local;
reg   [31:0] v2_0_d0_local;
reg    v2_1_ce1_local;
reg   [8:0] v2_1_address1_local;
reg    v2_1_ce0_local;
reg   [8:0] v2_1_address0_local;
reg    v2_1_we1_local;
reg   [31:0] v2_1_d1_local;
reg    v2_1_we0_local;
reg   [31:0] v2_1_d0_local;
reg   [31:0] grp_fu_307_p0;
reg   [31:0] grp_fu_307_p1;
reg   [31:0] grp_fu_311_p0;
wire   [8:0] trunc_ln55_fu_351_p1;
wire   [8:0] tmp_34_fu_361_p4;
wire   [9:0] or_ln55_7_fu_371_p3;
wire   [7:0] tmp_35_fu_384_p4;
wire   [8:0] or_ln56_7_fu_394_p3;
wire   [7:0] tmp_36_fu_431_p4;
wire   [9:0] or_ln55_8_fu_440_p3;
wire   [6:0] tmp_38_fu_453_p4;
wire   [8:0] or_ln56_8_fu_462_p3;
wire   [9:0] or_ln55_9_fu_476_p3;
wire   [8:0] or_ln56_9_fu_489_p3;
wire   [9:0] or_ln55_s_fu_512_p3;
wire   [8:0] or_ln56_s_fu_534_p3;
wire   [0:0] tmp_85_fu_548_p3;
wire   [9:0] or_ln55_10_fu_555_p5;
wire   [8:0] or_ln56_10_fu_572_p5;
wire   [9:0] or_ln55_11_fu_600_p3;
wire   [8:0] or_ln56_11_fu_612_p3;
wire   [9:0] or_ln55_12_fu_625_p3;
wire   [8:0] or_ln56_12_fu_661_p3;
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
#0 v25_1_fu_84 = 11'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v25_1_fu_84 <= 11'd0;
    end else if (((tmp_reg_739 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v25_1_fu_84 <= add_ln55_fu_590_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        bitcast_ln60_11_reg_1068 <= bitcast_ln60_11_fu_701_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bitcast_ln60_10_reg_1062 <= bitcast_ln60_10_fu_697_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bitcast_ln60_12_reg_1074 <= bitcast_ln60_12_fu_705_p1;
        tmp_reg_739 <= ap_sig_allocacmp_v25[32'd10];
        v25_reg_728 <= ap_sig_allocacmp_v25;
        v2_0_addr_12_reg_748 <= zext_ln55_3_fu_355_p1;
        v2_0_addr_12_reg_748_pp0_iter1_reg <= v2_0_addr_12_reg_748;
        v2_0_addr_13_reg_763[8 : 1] <= zext_ln56_15_fu_402_p1[8 : 1];
        v2_0_addr_13_reg_763_pp0_iter1_reg[8 : 1] <= v2_0_addr_13_reg_763[8 : 1];
        v2_1_addr_12_reg_753 <= zext_ln55_3_fu_355_p1;
        v2_1_addr_12_reg_753_pp0_iter1_reg <= v2_1_addr_12_reg_753;
        v2_1_addr_13_reg_769[8 : 1] <= zext_ln56_15_fu_402_p1[8 : 1];
        v2_1_addr_13_reg_769_pp0_iter1_reg[8 : 1] <= v2_1_addr_13_reg_769[8 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bitcast_ln60_13_reg_1080 <= bitcast_ln60_13_fu_709_p1;
        select_ln58_8_reg_787 <= select_ln58_8_fu_415_p3;
        select_ln58_9_reg_797 <= select_ln58_9_fu_423_p3;
        tmp_84_reg_775 <= v25_reg_728[32'd9];
        tmp_84_reg_775_pp0_iter1_reg <= tmp_84_reg_775;
        tmp_84_reg_775_pp0_iter2_reg <= tmp_84_reg_775_pp0_iter1_reg;
        v2_0_addr_14_reg_807[8 : 2] <= zext_ln56_17_fu_470_p1[8 : 2];
        v2_0_addr_14_reg_807_pp0_iter1_reg[8 : 2] <= v2_0_addr_14_reg_807[8 : 2];
        v2_0_addr_15_reg_822[8 : 2] <= zext_ln56_19_fu_497_p1[8 : 2];
        v2_0_addr_15_reg_822_pp0_iter1_reg[8 : 2] <= v2_0_addr_15_reg_822[8 : 2];
        v2_0_addr_15_reg_822_pp0_iter2_reg[8 : 2] <= v2_0_addr_15_reg_822_pp0_iter1_reg[8 : 2];
        v2_1_addr_14_reg_812[8 : 2] <= zext_ln56_17_fu_470_p1[8 : 2];
        v2_1_addr_14_reg_812_pp0_iter1_reg[8 : 2] <= v2_1_addr_14_reg_812[8 : 2];
        v2_1_addr_15_reg_828[8 : 2] <= zext_ln56_19_fu_497_p1[8 : 2];
        v2_1_addr_15_reg_828_pp0_iter1_reg[8 : 2] <= v2_1_addr_15_reg_828[8 : 2];
        v2_1_addr_15_reg_828_pp0_iter2_reg[8 : 2] <= v2_1_addr_15_reg_828_pp0_iter1_reg[8 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bitcast_ln60_14_reg_1086 <= bitcast_ln60_14_fu_713_p1;
        tmp_42_reg_854 <= {{v25_reg_728[9:3]}};
        tmp_44_reg_860 <= {{v25_reg_728[8:3]}};
        tmp_44_reg_860_pp0_iter1_reg <= tmp_44_reg_860;
        v2_0_addr_16_reg_871[8 : 3] <= zext_ln56_21_fu_542_p1[8 : 3];
        v2_0_addr_16_reg_871_pp0_iter1_reg[8 : 3] <= v2_0_addr_16_reg_871[8 : 3];
        v2_0_addr_16_reg_871_pp0_iter2_reg[8 : 3] <= v2_0_addr_16_reg_871_pp0_iter1_reg[8 : 3];
        v2_0_addr_17_reg_888[1] <= zext_ln56_23_fu_584_p1[1];
v2_0_addr_17_reg_888[8 : 3] <= zext_ln56_23_fu_584_p1[8 : 3];
        v2_0_addr_17_reg_888_pp0_iter1_reg[1] <= v2_0_addr_17_reg_888[1];
v2_0_addr_17_reg_888_pp0_iter1_reg[8 : 3] <= v2_0_addr_17_reg_888[8 : 3];
        v2_0_addr_17_reg_888_pp0_iter2_reg[1] <= v2_0_addr_17_reg_888_pp0_iter1_reg[1];
v2_0_addr_17_reg_888_pp0_iter2_reg[8 : 3] <= v2_0_addr_17_reg_888_pp0_iter1_reg[8 : 3];
        v2_1_addr_16_reg_877[8 : 3] <= zext_ln56_21_fu_542_p1[8 : 3];
        v2_1_addr_16_reg_877_pp0_iter1_reg[8 : 3] <= v2_1_addr_16_reg_877[8 : 3];
        v2_1_addr_16_reg_877_pp0_iter2_reg[8 : 3] <= v2_1_addr_16_reg_877_pp0_iter1_reg[8 : 3];
        v2_1_addr_17_reg_893[1] <= zext_ln56_23_fu_584_p1[1];
v2_1_addr_17_reg_893[8 : 3] <= zext_ln56_23_fu_584_p1[8 : 3];
        v2_1_addr_17_reg_893_pp0_iter1_reg[1] <= v2_1_addr_17_reg_893[1];
v2_1_addr_17_reg_893_pp0_iter1_reg[8 : 3] <= v2_1_addr_17_reg_893[8 : 3];
        v2_1_addr_17_reg_893_pp0_iter2_reg[1] <= v2_1_addr_17_reg_893_pp0_iter1_reg[1];
v2_1_addr_17_reg_893_pp0_iter2_reg[8 : 3] <= v2_1_addr_17_reg_893_pp0_iter1_reg[8 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bitcast_ln60_15_reg_1092 <= bitcast_ln60_15_fu_717_p1;
        v2_0_addr_18_reg_923[8 : 3] <= zext_ln56_25_fu_619_p1[8 : 3];
        v2_0_addr_18_reg_923_pp0_iter1_reg[8 : 3] <= v2_0_addr_18_reg_923[8 : 3];
        v2_0_addr_18_reg_923_pp0_iter2_reg[8 : 3] <= v2_0_addr_18_reg_923_pp0_iter1_reg[8 : 3];
        v2_0_addr_19_reg_1020[8 : 3] <= zext_ln56_27_fu_668_p1[8 : 3];
        v2_0_addr_19_reg_1020_pp0_iter2_reg[8 : 3] <= v2_0_addr_19_reg_1020[8 : 3];
        v2_1_addr_18_reg_929[8 : 3] <= zext_ln56_25_fu_619_p1[8 : 3];
        v2_1_addr_18_reg_929_pp0_iter1_reg[8 : 3] <= v2_1_addr_18_reg_929[8 : 3];
        v2_1_addr_18_reg_929_pp0_iter2_reg[8 : 3] <= v2_1_addr_18_reg_929_pp0_iter1_reg[8 : 3];
        v2_1_addr_19_reg_1025[8 : 3] <= zext_ln56_27_fu_668_p1[8 : 3];
        v2_1_addr_19_reg_1025_pp0_iter2_reg[8 : 3] <= v2_1_addr_19_reg_1025[8 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        bitcast_ln60_8_reg_1045 <= bitcast_ln60_8_fu_685_p1;
        select_ln58_15_reg_1040 <= select_ln58_15_fu_678_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bitcast_ln60_9_reg_1056 <= bitcast_ln60_9_fu_693_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln58_10_reg_839 <= grp_fu_316_p3;
        select_ln58_11_reg_849 <= grp_fu_323_p3;
        v26_100_reg_834 <= v3_q1;
        v26_101_reg_844 <= v3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        select_ln58_12_reg_903 <= grp_fu_316_p3;
        select_ln58_13_reg_913 <= grp_fu_323_p3;
        v26_102_reg_898 <= v3_q1;
        v26_103_reg_908 <= v3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        select_ln58_14_reg_945 <= grp_fu_316_p3;
        v26_104_reg_940 <= v3_q1;
        v26_105_reg_950 <= v3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v26_99_reg_792 <= v3_q0;
        v26_reg_782 <= v3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v27_10_reg_985 <= grp_fu_3537_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v27_11_reg_995 <= grp_fu_3537_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v27_12_reg_1005 <= grp_fu_3537_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v27_13_reg_1015 <= grp_fu_3537_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v27_14_reg_1035 <= grp_fu_3537_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v27_15_reg_975 <= grp_fu_3537_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v27_8_reg_955 <= grp_fu_3537_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v27_9_reg_965 <= grp_fu_3537_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_739 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        ap_sig_allocacmp_v25 = v25_1_fu_84;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_307_p0 = v28_105_fu_689_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_307_p0 = v28_104_fu_674_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_307_p0 = v28_103_fu_657_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_307_p0 = v28_102_fu_653_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_307_p0 = v28_101_fu_649_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_307_p0 = v28_100_fu_645_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_307_p0 = v28_99_fu_641_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_307_p0 = v28_fu_637_p1;
    end else begin
        grp_fu_307_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_307_p1 = v27_14_reg_1035;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_307_p1 = v27_13_reg_1015;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_307_p1 = v27_12_reg_1005;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_307_p1 = v27_11_reg_995;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_307_p1 = v27_10_reg_985;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_307_p1 = v27_15_reg_975;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_307_p1 = v27_9_reg_965;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_307_p1 = v27_8_reg_955;
    end else begin
        grp_fu_307_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_311_p0 = v26_105_reg_950;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_311_p0 = v26_104_reg_940;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_311_p0 = v26_103_reg_908;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_311_p0 = v26_102_reg_898;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_311_p0 = v26_101_reg_844;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_311_p0 = v26_100_reg_834;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_311_p0 = v26_99_reg_792;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_311_p0 = v26_reg_782;
    end else begin
        grp_fu_311_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v2_0_address0_local = v2_0_addr_19_reg_1020_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_0_address0_local = v2_0_addr_18_reg_923_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v2_0_address0_local = v2_0_addr_17_reg_888_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_0_address0_local = v2_0_addr_16_reg_871_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_0_address0_local = zext_ln56_27_fu_668_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_0_address0_local = zext_ln56_23_fu_584_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_0_address0_local = zext_ln56_19_fu_497_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_0_address0_local = zext_ln56_15_fu_402_p1;
    end else begin
        v2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_0_address1_local = v2_0_addr_15_reg_822_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v2_0_address1_local = v2_0_addr_14_reg_807_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_0_address1_local = v2_0_addr_13_reg_763_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v2_0_address1_local = v2_0_addr_12_reg_748_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_0_address1_local = zext_ln56_25_fu_619_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_0_address1_local = zext_ln56_21_fu_542_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_0_address1_local = zext_ln56_17_fu_470_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_0_address1_local = zext_ln55_3_fu_355_p1;
    end else begin
        v2_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_0_ce0_local = 1'b1;
    end else begin
        v2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_0_ce1_local = 1'b1;
    end else begin
        v2_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v2_0_d0_local = bitcast_ln60_15_reg_1092;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v2_0_d0_local = bitcast_ln60_14_reg_1086;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v2_0_d0_local = bitcast_ln60_13_reg_1080;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v2_0_d0_local = bitcast_ln60_12_reg_1074;
        end else begin
            v2_0_d0_local = 'bx;
        end
    end else begin
        v2_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_0_d1_local = bitcast_ln60_11_reg_1068;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v2_0_d1_local = bitcast_ln60_10_reg_1062;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_0_d1_local = bitcast_ln60_9_reg_1056;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v2_0_d1_local = bitcast_ln60_8_reg_1045;
    end else begin
        v2_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (tmp_84_reg_775_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (tmp_84_reg_775_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (tmp_84_reg_775_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (tmp_84_reg_775_pp0_iter2_reg == 1'd0)))) begin
        v2_0_we0_local = 1'b1;
    end else begin
        v2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (tmp_84_reg_775_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (tmp_84_reg_775_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (tmp_84_reg_775_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (tmp_84_reg_775_pp0_iter2_reg == 1'd0)))) begin
        v2_0_we1_local = 1'b1;
    end else begin
        v2_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v2_1_address0_local = v2_1_addr_19_reg_1025_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_1_address0_local = v2_1_addr_18_reg_929_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v2_1_address0_local = v2_1_addr_17_reg_893_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_1_address0_local = v2_1_addr_16_reg_877_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_1_address0_local = zext_ln56_27_fu_668_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_1_address0_local = zext_ln56_23_fu_584_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_1_address0_local = zext_ln56_19_fu_497_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_1_address0_local = zext_ln56_15_fu_402_p1;
    end else begin
        v2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_1_address1_local = v2_1_addr_15_reg_828_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v2_1_address1_local = v2_1_addr_14_reg_812_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_1_address1_local = v2_1_addr_13_reg_769_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v2_1_address1_local = v2_1_addr_12_reg_753_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_1_address1_local = zext_ln56_25_fu_619_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_1_address1_local = zext_ln56_21_fu_542_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_1_address1_local = zext_ln56_17_fu_470_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_1_address1_local = zext_ln55_3_fu_355_p1;
    end else begin
        v2_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_1_ce0_local = 1'b1;
    end else begin
        v2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_1_ce1_local = 1'b1;
    end else begin
        v2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v2_1_d0_local = bitcast_ln60_15_reg_1092;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v2_1_d0_local = bitcast_ln60_14_reg_1086;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v2_1_d0_local = bitcast_ln60_13_reg_1080;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v2_1_d0_local = bitcast_ln60_12_reg_1074;
        end else begin
            v2_1_d0_local = 'bx;
        end
    end else begin
        v2_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_1_d1_local = bitcast_ln60_11_reg_1068;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v2_1_d1_local = bitcast_ln60_10_reg_1062;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_1_d1_local = bitcast_ln60_9_reg_1056;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v2_1_d1_local = bitcast_ln60_8_reg_1045;
    end else begin
        v2_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (tmp_84_reg_775_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (tmp_84_reg_775_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (tmp_84_reg_775_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (tmp_84_reg_775_pp0_iter2_reg == 1'd1)))) begin
        v2_1_we0_local = 1'b1;
    end else begin
        v2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (tmp_84_reg_775_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (tmp_84_reg_775_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (tmp_84_reg_775_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (tmp_84_reg_775_pp0_iter2_reg == 1'd1)))) begin
        v2_1_we1_local = 1'b1;
    end else begin
        v2_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v3_address0_local = zext_ln56_26_fu_632_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v3_address0_local = zext_ln56_22_fu_567_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_address0_local = zext_ln56_18_fu_484_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_address0_local = zext_ln56_14_fu_379_p1;
        end else begin
            v3_address0_local = 'bx;
        end
    end else begin
        v3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v3_address1_local = zext_ln56_24_fu_607_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v3_address1_local = zext_ln56_20_fu_520_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_address1_local = zext_ln56_16_fu_448_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_address1_local = zext_ln55_2_fu_346_p1;
        end else begin
            v3_address1_local = 'bx;
        end
    end else begin
        v3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
assign add_ln55_fu_590_p2 = (v25_reg_728 + 11'd8);
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
assign bitcast_ln60_10_fu_697_p1 = grp_fu_1074_p_dout0;
assign bitcast_ln60_11_fu_701_p1 = grp_fu_1074_p_dout0;
assign bitcast_ln60_12_fu_705_p1 = grp_fu_1074_p_dout0;
assign bitcast_ln60_13_fu_709_p1 = grp_fu_1074_p_dout0;
assign bitcast_ln60_14_fu_713_p1 = grp_fu_1074_p_dout0;
assign bitcast_ln60_15_fu_717_p1 = grp_fu_1074_p_dout0;
assign bitcast_ln60_8_fu_685_p1 = grp_fu_1074_p_dout0;
assign bitcast_ln60_9_fu_693_p1 = grp_fu_1074_p_dout0;
assign grp_fu_1074_p_ce = 1'b1;
assign grp_fu_1074_p_din0 = grp_fu_307_p0;
assign grp_fu_1074_p_din1 = grp_fu_307_p1;
assign grp_fu_1074_p_opcode = 2'd0;
assign grp_fu_316_p3 = ((tmp_84_reg_775[0:0] == 1'b1) ? v2_1_q1 : v2_0_q1);
assign grp_fu_323_p3 = ((tmp_84_reg_775[0:0] == 1'b1) ? v2_1_q0 : v2_0_q0);
assign grp_fu_3537_p_ce = 1'b1;
assign grp_fu_3537_p_din0 = grp_fu_311_p0;
assign grp_fu_3537_p_din1 = 32'd3345637376;
assign or_ln55_10_fu_555_p5 = {{{{tmp_42_fu_503_p4}, {1'd1}}, {tmp_85_fu_548_p3}}, {1'd1}};
assign or_ln55_11_fu_600_p3 = {{tmp_42_reg_854}, {3'd6}};
assign or_ln55_12_fu_625_p3 = {{tmp_42_reg_854}, {3'd7}};
assign or_ln55_7_fu_371_p3 = {{tmp_34_fu_361_p4}, {1'd1}};
assign or_ln55_8_fu_440_p3 = {{tmp_36_fu_431_p4}, {2'd2}};
assign or_ln55_9_fu_476_p3 = {{tmp_36_fu_431_p4}, {2'd3}};
assign or_ln55_s_fu_512_p3 = {{tmp_42_fu_503_p4}, {3'd4}};
assign or_ln56_10_fu_572_p5 = {{{{tmp_44_fu_525_p4}, {1'd1}}, {tmp_85_fu_548_p3}}, {1'd1}};
assign or_ln56_11_fu_612_p3 = {{tmp_44_reg_860}, {3'd6}};
assign or_ln56_12_fu_661_p3 = {{tmp_44_reg_860_pp0_iter1_reg}, {3'd7}};
assign or_ln56_7_fu_394_p3 = {{tmp_35_fu_384_p4}, {1'd1}};
assign or_ln56_8_fu_462_p3 = {{tmp_38_fu_453_p4}, {2'd2}};
assign or_ln56_9_fu_489_p3 = {{tmp_38_fu_453_p4}, {2'd3}};
assign or_ln56_s_fu_534_p3 = {{tmp_44_fu_525_p4}, {3'd4}};
assign select_ln58_15_fu_678_p3 = ((tmp_84_reg_775_pp0_iter1_reg[0:0] == 1'b1) ? v2_1_q0 : v2_0_q0);
assign select_ln58_8_fu_415_p3 = ((tmp_84_fu_408_p3[0:0] == 1'b1) ? v2_1_q1 : v2_0_q1);
assign select_ln58_9_fu_423_p3 = ((tmp_84_fu_408_p3[0:0] == 1'b1) ? v2_1_q0 : v2_0_q0);
assign tmp_34_fu_361_p4 = {{ap_sig_allocacmp_v25[9:1]}};
assign tmp_35_fu_384_p4 = {{ap_sig_allocacmp_v25[8:1]}};
assign tmp_36_fu_431_p4 = {{v25_reg_728[9:2]}};
assign tmp_38_fu_453_p4 = {{v25_reg_728[8:2]}};
assign tmp_42_fu_503_p4 = {{v25_reg_728[9:3]}};
assign tmp_44_fu_525_p4 = {{v25_reg_728[8:3]}};
assign tmp_84_fu_408_p3 = v25_reg_728[32'd9];
assign tmp_85_fu_548_p3 = v25_reg_728[32'd1];
assign trunc_ln55_fu_351_p1 = ap_sig_allocacmp_v25[8:0];
assign v28_100_fu_645_p1 = select_ln58_10_reg_839;
assign v28_101_fu_649_p1 = select_ln58_11_reg_849;
assign v28_102_fu_653_p1 = select_ln58_12_reg_903;
assign v28_103_fu_657_p1 = select_ln58_13_reg_913;
assign v28_104_fu_674_p1 = select_ln58_14_reg_945;
assign v28_105_fu_689_p1 = select_ln58_15_reg_1040;
assign v28_99_fu_641_p1 = select_ln58_9_reg_797;
assign v28_fu_637_p1 = select_ln58_8_reg_787;
assign v2_0_address0 = v2_0_address0_local;
assign v2_0_address1 = v2_0_address1_local;
assign v2_0_ce0 = v2_0_ce0_local;
assign v2_0_ce1 = v2_0_ce1_local;
assign v2_0_d0 = v2_0_d0_local;
assign v2_0_d1 = v2_0_d1_local;
assign v2_0_we0 = v2_0_we0_local;
assign v2_0_we1 = v2_0_we1_local;
assign v2_1_address0 = v2_1_address0_local;
assign v2_1_address1 = v2_1_address1_local;
assign v2_1_ce0 = v2_1_ce0_local;
assign v2_1_ce1 = v2_1_ce1_local;
assign v2_1_d0 = v2_1_d0_local;
assign v2_1_d1 = v2_1_d1_local;
assign v2_1_we0 = v2_1_we0_local;
assign v2_1_we1 = v2_1_we1_local;
assign v3_address0 = v3_address0_local;
assign v3_address1 = v3_address1_local;
assign v3_ce0 = v3_ce0_local;
assign v3_ce1 = v3_ce1_local;
assign zext_ln55_2_fu_346_p1 = ap_sig_allocacmp_v25;
assign zext_ln55_3_fu_355_p1 = trunc_ln55_fu_351_p1;
assign zext_ln56_14_fu_379_p1 = or_ln55_7_fu_371_p3;
assign zext_ln56_15_fu_402_p1 = or_ln56_7_fu_394_p3;
assign zext_ln56_16_fu_448_p1 = or_ln55_8_fu_440_p3;
assign zext_ln56_17_fu_470_p1 = or_ln56_8_fu_462_p3;
assign zext_ln56_18_fu_484_p1 = or_ln55_9_fu_476_p3;
assign zext_ln56_19_fu_497_p1 = or_ln56_9_fu_489_p3;
assign zext_ln56_20_fu_520_p1 = or_ln55_s_fu_512_p3;
assign zext_ln56_21_fu_542_p1 = or_ln56_s_fu_534_p3;
assign zext_ln56_22_fu_567_p1 = or_ln55_10_fu_555_p5;
assign zext_ln56_23_fu_584_p1 = or_ln56_10_fu_572_p5;
assign zext_ln56_24_fu_607_p1 = or_ln55_11_fu_600_p3;
assign zext_ln56_25_fu_619_p1 = or_ln56_11_fu_612_p3;
assign zext_ln56_26_fu_632_p1 = or_ln55_12_fu_625_p3;
assign zext_ln56_27_fu_668_p1 = or_ln56_12_fu_661_p3;
always @ (posedge ap_clk) begin
    v2_0_addr_13_reg_763[0] <= 1'b1;
    v2_0_addr_13_reg_763_pp0_iter1_reg[0] <= 1'b1;
    v2_1_addr_13_reg_769[0] <= 1'b1;
    v2_1_addr_13_reg_769_pp0_iter1_reg[0] <= 1'b1;
    v2_0_addr_14_reg_807[1:0] <= 2'b10;
    v2_0_addr_14_reg_807_pp0_iter1_reg[1:0] <= 2'b10;
    v2_1_addr_14_reg_812[1:0] <= 2'b10;
    v2_1_addr_14_reg_812_pp0_iter1_reg[1:0] <= 2'b10;
    v2_0_addr_15_reg_822[1:0] <= 2'b11;
    v2_0_addr_15_reg_822_pp0_iter1_reg[1:0] <= 2'b11;
    v2_0_addr_15_reg_822_pp0_iter2_reg[1:0] <= 2'b11;
    v2_1_addr_15_reg_828[1:0] <= 2'b11;
    v2_1_addr_15_reg_828_pp0_iter1_reg[1:0] <= 2'b11;
    v2_1_addr_15_reg_828_pp0_iter2_reg[1:0] <= 2'b11;
    v2_0_addr_16_reg_871[2:0] <= 3'b100;
    v2_0_addr_16_reg_871_pp0_iter1_reg[2:0] <= 3'b100;
    v2_0_addr_16_reg_871_pp0_iter2_reg[2:0] <= 3'b100;
    v2_1_addr_16_reg_877[2:0] <= 3'b100;
    v2_1_addr_16_reg_877_pp0_iter1_reg[2:0] <= 3'b100;
    v2_1_addr_16_reg_877_pp0_iter2_reg[2:0] <= 3'b100;
    v2_0_addr_17_reg_888[0] <= 1'b1;
    v2_0_addr_17_reg_888[2] <= 1'b1;
    v2_0_addr_17_reg_888_pp0_iter1_reg[0] <= 1'b1;
    v2_0_addr_17_reg_888_pp0_iter1_reg[2] <= 1'b1;
    v2_0_addr_17_reg_888_pp0_iter2_reg[0] <= 1'b1;
    v2_0_addr_17_reg_888_pp0_iter2_reg[2] <= 1'b1;
    v2_1_addr_17_reg_893[0] <= 1'b1;
    v2_1_addr_17_reg_893[2] <= 1'b1;
    v2_1_addr_17_reg_893_pp0_iter1_reg[0] <= 1'b1;
    v2_1_addr_17_reg_893_pp0_iter1_reg[2] <= 1'b1;
    v2_1_addr_17_reg_893_pp0_iter2_reg[0] <= 1'b1;
    v2_1_addr_17_reg_893_pp0_iter2_reg[2] <= 1'b1;
    v2_0_addr_18_reg_923[2:0] <= 3'b110;
    v2_0_addr_18_reg_923_pp0_iter1_reg[2:0] <= 3'b110;
    v2_0_addr_18_reg_923_pp0_iter2_reg[2:0] <= 3'b110;
    v2_1_addr_18_reg_929[2:0] <= 3'b110;
    v2_1_addr_18_reg_929_pp0_iter1_reg[2:0] <= 3'b110;
    v2_1_addr_18_reg_929_pp0_iter2_reg[2:0] <= 3'b110;
    v2_0_addr_19_reg_1020[2:0] <= 3'b111;
    v2_0_addr_19_reg_1020_pp0_iter2_reg[2:0] <= 3'b111;
    v2_1_addr_19_reg_1025[2:0] <= 3'b111;
    v2_1_addr_19_reg_1025_pp0_iter2_reg[2:0] <= 3'b111;
end
endmodule 
