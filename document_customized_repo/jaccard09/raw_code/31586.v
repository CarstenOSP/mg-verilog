module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_12,t_1,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,zext_ln52_2,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,empty,zext_ln52_3,llike_address0,llike_ce0,llike_q0,min_s_10_out,min_s_10_out_ap_vld,grp_fu_453_p_din0,grp_fu_453_p_din1,grp_fu_453_p_opcode,grp_fu_453_p_dout0,grp_fu_453_p_ce,grp_fu_1050_p_din0,grp_fu_1050_p_din1,grp_fu_1050_p_opcode,grp_fu_1050_p_dout0,grp_fu_1050_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 9'd1;
parameter    ap_ST_fsm_pp0_stage1 = 9'd2;
parameter    ap_ST_fsm_pp0_stage2 = 9'd4;
parameter    ap_ST_fsm_pp0_stage3 = 9'd8;
parameter    ap_ST_fsm_pp0_stage4 = 9'd16;
parameter    ap_ST_fsm_pp0_stage5 = 9'd32;
parameter    ap_ST_fsm_pp0_stage6 = 9'd64;
parameter    ap_ST_fsm_pp0_stage7 = 9'd128;
parameter    ap_ST_fsm_pp0_stage8 = 9'd256;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] min_p_12;
input  [7:0] t_1;
output  [11:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [11:0] llike_2_address0;
output   llike_2_ce0;
input  [63:0] llike_2_q0;
output  [11:0] llike_3_address0;
output   llike_3_ce0;
input  [63:0] llike_3_q0;
input  [6:0] zext_ln52_2;
output  [10:0] transition_0_address0;
output   transition_0_ce0;
input  [63:0] transition_0_q0;
output  [10:0] transition_0_address1;
output   transition_0_ce1;
input  [63:0] transition_0_q1;
output  [10:0] transition_1_address0;
output   transition_1_ce0;
input  [63:0] transition_1_q0;
output  [10:0] transition_1_address1;
output   transition_1_ce1;
input  [63:0] transition_1_q1;
input  [0:0] empty;
input  [11:0] zext_ln52_3;
output  [11:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [7:0] min_s_10_out;
output   min_s_10_out_ap_vld;
output  [63:0] grp_fu_453_p_din0;
output  [63:0] grp_fu_453_p_din1;
output  [1:0] grp_fu_453_p_opcode;
input  [63:0] grp_fu_453_p_dout0;
output   grp_fu_453_p_ce;
output  [63:0] grp_fu_1050_p_din0;
output  [63:0] grp_fu_1050_p_din1;
output  [4:0] grp_fu_1050_p_opcode;
input  [0:0] grp_fu_1050_p_dout0;
output   grp_fu_1050_p_ce;
reg ap_idle;
reg min_s_10_out_ap_vld;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] tmp_10_reg_1024;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] grp_fu_289_p3;
reg   [63:0] reg_303;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] grp_fu_296_p3;
reg   [63:0] reg_307;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_311;
wire    ap_block_pp0_stage0_11001;
wire   [10:0] zext_ln52_2_cast_fu_316_p1;
reg   [10:0] zext_ln52_2_cast_reg_968;
reg   [5:0] s_reg_975;
reg   [5:0] s_reg_975_pp0_iter1_reg;
wire   [5:0] add_ln53_fu_387_p2;
reg   [5:0] add_ln53_reg_1006;
reg   [5:0] add_ln53_reg_1006_pp0_iter1_reg;
wire   [5:0] add_ln53_1_fu_393_p2;
reg   [5:0] add_ln53_1_reg_1012;
reg   [5:0] add_ln53_1_reg_1012_pp0_iter1_reg;
wire   [6:0] add_ln53_2_fu_399_p2;
reg   [6:0] add_ln53_2_reg_1018;
reg   [0:0] tmp_10_reg_1024_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_1028;
reg   [63:0] llike_2_load_reg_1033;
reg   [63:0] llike_3_load_reg_1048;
wire   [63:0] bitcast_ln54_fu_472_p1;
reg   [63:0] llike_load_reg_1073;
wire   [5:0] trunc_ln54_fu_477_p1;
reg   [5:0] trunc_ln54_reg_1078;
reg   [5:0] trunc_ln54_reg_1078_pp0_iter1_reg;
wire   [63:0] bitcast_ln54_1_fu_499_p1;
wire   [63:0] bitcast_ln54_2_fu_504_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] bitcast_ln54_3_fu_509_p1;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] min_p_1_reg_1108;
reg   [63:0] p_1_reg_1115;
wire   [0:0] and_ln55_1_fu_605_p2;
reg   [0:0] and_ln55_1_reg_1122;
reg   [63:0] p_2_reg_1128;
wire   [63:0] min_p_3_fu_611_p3;
reg   [63:0] min_p_3_reg_1135;
wire   [0:0] and_ln55_3_fu_694_p2;
reg   [0:0] and_ln55_3_reg_1142;
wire   [63:0] min_p_5_fu_713_p3;
reg   [63:0] min_p_5_reg_1148;
wire   [7:0] min_s_5_fu_722_p3;
reg   [7:0] min_s_5_reg_1155;
wire   [0:0] and_ln55_5_fu_805_p2;
reg   [0:0] and_ln55_5_reg_1160;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [7:0] min_s_6_fu_814_p3;
reg   [7:0] min_s_6_reg_1166;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] min_p_7_fu_821_p3;
reg   [63:0] min_p_7_reg_1171;
reg   [0:0] tmp_13_reg_1178;
wire    ap_block_pp0_stage8_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage7_subdone;
reg    ap_condition_exit_pp0_iter1_stage7;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln54_4_fu_360_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_381_p1;
wire   [63:0] zext_ln54_1_fu_425_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_2_fu_443_p1;
wire   [63:0] zext_ln54_6_fu_467_p1;
wire   [63:0] zext_ln54_3_fu_493_p1;
wire    ap_block_pp0_stage2;
reg   [63:0] min_p_fu_98;
wire   [63:0] min_p_9_fu_909_p3;
wire    ap_loop_init;
reg   [7:0] min_s_fu_102;
wire   [7:0] min_s_7_fu_919_p3;
wire    ap_block_pp0_stage5;
reg   [5:0] min_s_1_fu_106;
wire   [5:0] add_ln53_3_fu_514_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage7_01001;
reg    llike_1_ce0_local;
reg    transition_0_ce0_local;
reg   [10:0] transition_0_address0_local;
reg    transition_0_ce1_local;
reg   [10:0] transition_0_address1_local;
reg    transition_1_ce0_local;
reg   [10:0] transition_1_address0_local;
reg    transition_1_ce1_local;
reg   [10:0] transition_1_address1_local;
reg    llike_2_ce0_local;
reg    llike_3_ce0_local;
reg    llike_ce0_local;
reg   [63:0] grp_fu_281_p0;
reg   [63:0] grp_fu_281_p1;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
reg   [63:0] grp_fu_285_p0;
reg   [63:0] grp_fu_285_p1;
wire    ap_block_pp0_stage7;
wire   [3:0] lshr_ln8_5_fu_342_p4;
wire   [11:0] tmp_s_fu_352_p3;
wire   [10:0] shl_ln2_fu_367_p3;
wire   [10:0] add_ln54_fu_375_p2;
wire   [6:0] zext_ln21_fu_338_p1;
wire   [10:0] shl_ln54_1_fu_413_p3;
wire   [10:0] add_ln54_1_fu_420_p2;
wire   [10:0] shl_ln54_2_fu_431_p3;
wire   [10:0] add_ln54_2_fu_438_p2;
wire   [4:0] lshr_ln9_3_fu_449_p4;
wire   [11:0] zext_ln54_5_fu_458_p1;
wire   [11:0] add_ln54_4_fu_462_p2;
wire   [10:0] shl_ln54_3_fu_480_p3;
wire   [10:0] add_ln54_3_fu_488_p2;
wire    ap_block_pp0_stage8;
wire   [63:0] bitcast_ln55_fu_528_p1;
wire   [63:0] bitcast_ln55_1_fu_546_p1;
wire   [10:0] tmp_1_fu_532_p4;
wire   [51:0] trunc_ln55_fu_542_p1;
wire   [0:0] icmp_ln55_1_fu_569_p2;
wire   [0:0] icmp_ln55_fu_563_p2;
wire   [10:0] tmp_2_fu_549_p4;
wire   [51:0] trunc_ln55_1_fu_559_p1;
wire   [0:0] icmp_ln55_3_fu_587_p2;
wire   [0:0] icmp_ln55_2_fu_581_p2;
wire   [0:0] or_ln55_fu_575_p2;
wire   [0:0] and_ln55_fu_599_p2;
wire   [0:0] or_ln55_1_fu_593_p2;
wire   [63:0] bitcast_ln55_2_fu_618_p1;
wire   [63:0] bitcast_ln55_3_fu_635_p1;
wire   [10:0] tmp_4_fu_621_p4;
wire   [51:0] trunc_ln55_2_fu_631_p1;
wire   [0:0] icmp_ln55_5_fu_658_p2;
wire   [0:0] icmp_ln55_4_fu_652_p2;
wire   [10:0] tmp_5_fu_638_p4;
wire   [51:0] trunc_ln55_3_fu_648_p1;
wire   [0:0] icmp_ln55_7_fu_676_p2;
wire   [0:0] icmp_ln55_6_fu_670_p2;
wire   [0:0] or_ln55_3_fu_682_p2;
wire   [0:0] or_ln55_2_fu_664_p2;
wire   [0:0] and_ln55_2_fu_688_p2;
wire   [7:0] zext_ln55_fu_703_p1;
wire   [7:0] zext_ln55_1_fu_719_p1;
wire   [7:0] min_s_4_fu_706_p3;
wire    ap_block_pp0_stage6;
wire   [63:0] bitcast_ln55_4_fu_729_p1;
wire   [63:0] bitcast_ln55_5_fu_746_p1;
wire   [10:0] tmp_7_fu_732_p4;
wire   [51:0] trunc_ln55_4_fu_742_p1;
wire   [0:0] icmp_ln55_9_fu_769_p2;
wire   [0:0] icmp_ln55_8_fu_763_p2;
wire   [10:0] tmp_8_fu_749_p4;
wire   [51:0] trunc_ln55_5_fu_759_p1;
wire   [0:0] icmp_ln55_11_fu_787_p2;
wire   [0:0] icmp_ln55_10_fu_781_p2;
wire   [0:0] or_ln55_5_fu_793_p2;
wire   [0:0] or_ln55_4_fu_775_p2;
wire   [0:0] and_ln55_4_fu_799_p2;
wire   [7:0] zext_ln55_2_fu_811_p1;
wire   [63:0] bitcast_ln55_6_fu_827_p1;
wire   [63:0] bitcast_ln55_7_fu_845_p1;
wire   [10:0] tmp_11_fu_831_p4;
wire   [51:0] trunc_ln55_6_fu_841_p1;
wire   [0:0] icmp_ln55_13_fu_868_p2;
wire   [0:0] icmp_ln55_12_fu_862_p2;
wire   [10:0] tmp_12_fu_848_p4;
wire   [51:0] trunc_ln55_7_fu_858_p1;
wire   [0:0] icmp_ln55_15_fu_886_p2;
wire   [0:0] icmp_ln55_14_fu_880_p2;
wire   [0:0] or_ln55_7_fu_892_p2;
wire   [0:0] or_ln55_6_fu_874_p2;
wire   [0:0] and_ln55_6_fu_898_p2;
wire   [0:0] and_ln55_7_fu_904_p2;
wire   [7:0] zext_ln55_3_fu_916_p1;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage7_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [8:0] ap_NS_fsm;
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
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_98 = 64'd0;
#0 min_s_fu_102 = 8'd0;
#0 min_s_1_fu_106 = 6'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage8),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage7)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            min_p_fu_98 <= min_p_12;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_p_fu_98 <= min_p_9_fu_909_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_1_fu_106 <= 6'd1;
    end else if (((tmp_10_reg_1024 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        min_s_1_fu_106 <= add_ln53_3_fu_514_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            min_s_fu_102 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_s_fu_102 <= min_s_7_fu_919_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_1_reg_1012 <= add_ln53_1_fu_393_p2;
        add_ln53_1_reg_1012_pp0_iter1_reg <= add_ln53_1_reg_1012;
        add_ln53_2_reg_1018 <= add_ln53_2_fu_399_p2;
        add_ln53_reg_1006 <= add_ln53_fu_387_p2;
        add_ln53_reg_1006_pp0_iter1_reg <= add_ln53_reg_1006;
        s_reg_975 <= ap_sig_allocacmp_s;
        s_reg_975_pp0_iter1_reg <= s_reg_975;
        tmp_10_reg_1024 <= add_ln53_2_fu_399_p2[32'd6];
        tmp_10_reg_1024_pp0_iter1_reg <= tmp_10_reg_1024;
        zext_ln52_2_cast_reg_968[6 : 0] <= zext_ln52_2_cast_fu_316_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        and_ln55_1_reg_1122 <= and_ln55_1_fu_605_p2;
        llike_load_reg_1073 <= llike_q0;
        trunc_ln54_reg_1078 <= trunc_ln54_fu_477_p1;
        trunc_ln54_reg_1078_pp0_iter1_reg <= trunc_ln54_reg_1078;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln55_3_reg_1142 <= and_ln55_3_fu_694_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln55_5_reg_1160 <= and_ln55_5_fu_805_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_reg_1028 <= llike_1_q0;
        llike_2_load_reg_1033 <= llike_2_q0;
        llike_3_load_reg_1048 <= llike_3_q0;
        min_p_1_reg_1108 <= min_p_fu_98;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_3_reg_1135 <= min_p_3_fu_611_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_5_reg_1148 <= min_p_5_fu_713_p3;
        min_s_5_reg_1155 <= min_s_5_fu_722_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_7_reg_1171 <= min_p_7_fu_821_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_6_reg_1166 <= min_s_6_fu_814_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        p_1_reg_1115 <= grp_fu_453_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        p_2_reg_1128 <= grp_fu_453_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_303 <= grp_fu_289_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_307 <= grp_fu_296_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_311 <= grp_fu_453_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_13_reg_1178 <= grp_fu_1050_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_10_reg_1024 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (tmp_10_reg_1024_pp0_iter1_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter1_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s = 6'd1;
    end else begin
        ap_sig_allocacmp_s = min_s_1_fu_106;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_281_p0 = llike_load_reg_1073;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_281_p0 = llike_3_load_reg_1048;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_281_p0 = llike_2_load_reg_1033;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_281_p0 = llike_1_load_reg_1028;
        end else begin
            grp_fu_281_p0 = 'bx;
        end
    end else begin
        grp_fu_281_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_281_p1 = bitcast_ln54_3_fu_509_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_281_p1 = bitcast_ln54_2_fu_504_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_281_p1 = bitcast_ln54_1_fu_499_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_281_p1 = bitcast_ln54_fu_472_p1;
        end else begin
            grp_fu_281_p1 = 'bx;
        end
    end else begin
        grp_fu_281_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_285_p0 = p_2_reg_1128;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_285_p0 = p_1_reg_1115;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_285_p0 = reg_311;
    end else begin
        grp_fu_285_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_285_p1 = min_p_7_fu_821_p3;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_285_p1 = min_p_5_fu_713_p3;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_285_p1 = min_p_3_fu_611_p3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_285_p1 = min_p_fu_98;
        end else begin
            grp_fu_285_p1 = 'bx;
        end
    end else begin
        grp_fu_285_p1 = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (tmp_10_reg_1024_pp0_iter1_reg == 1'd1))) begin
        min_s_10_out_ap_vld = 1'b1;
    end else begin
        min_s_10_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln54_2_fu_443_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln54_fu_381_p1;
        end else begin
            transition_0_address0_local = 'bx;
        end
    end else begin
        transition_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address1_local = zext_ln54_3_fu_493_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln54_1_fu_425_p1;
        end else begin
            transition_0_address1_local = 'bx;
        end
    end else begin
        transition_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_0_ce0_local = 1'b1;
    end else begin
        transition_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_0_ce1_local = 1'b1;
    end else begin
        transition_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln54_2_fu_443_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln54_fu_381_p1;
        end else begin
            transition_1_address0_local = 'bx;
        end
    end else begin
        transition_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address1_local = zext_ln54_3_fu_493_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln54_1_fu_425_p1;
        end else begin
            transition_1_address1_local = 'bx;
        end
    end else begin
        transition_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_1_ce0_local = 1'b1;
    end else begin
        transition_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_1_ce1_local = 1'b1;
    end else begin
        transition_1_ce1_local = 1'b0;
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
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage7))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln53_1_fu_393_p2 = (ap_sig_allocacmp_s + 6'd2);
assign add_ln53_2_fu_399_p2 = (zext_ln21_fu_338_p1 + 7'd3);
assign add_ln53_3_fu_514_p2 = (s_reg_975 + 6'd4);
assign add_ln53_fu_387_p2 = (ap_sig_allocacmp_s + 6'd1);
assign add_ln54_1_fu_420_p2 = (shl_ln54_1_fu_413_p3 + zext_ln52_2_cast_reg_968);
assign add_ln54_2_fu_438_p2 = (shl_ln54_2_fu_431_p3 + zext_ln52_2_cast_reg_968);
assign add_ln54_3_fu_488_p2 = (shl_ln54_3_fu_480_p3 + zext_ln52_2_cast_reg_968);
assign add_ln54_4_fu_462_p2 = (zext_ln52_3 + zext_ln54_5_fu_458_p1);
assign add_ln54_fu_375_p2 = (shl_ln2_fu_367_p3 + zext_ln52_2_cast_fu_316_p1);
assign and_ln55_1_fu_605_p2 = (or_ln55_1_fu_593_p2 & and_ln55_fu_599_p2);
assign and_ln55_2_fu_688_p2 = (or_ln55_3_fu_682_p2 & or_ln55_2_fu_664_p2);
assign and_ln55_3_fu_694_p2 = (grp_fu_1050_p_dout0 & and_ln55_2_fu_688_p2);
assign and_ln55_4_fu_799_p2 = (or_ln55_5_fu_793_p2 & or_ln55_4_fu_775_p2);
assign and_ln55_5_fu_805_p2 = (grp_fu_1050_p_dout0 & and_ln55_4_fu_799_p2);
assign and_ln55_6_fu_898_p2 = (or_ln55_7_fu_892_p2 & or_ln55_6_fu_874_p2);
assign and_ln55_7_fu_904_p2 = (tmp_13_reg_1178 & and_ln55_6_fu_898_p2);
assign and_ln55_fu_599_p2 = (or_ln55_fu_575_p2 & grp_fu_1050_p_dout0);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage8;
assign ap_ready = ap_ready_sig;
assign bitcast_ln54_1_fu_499_p1 = reg_307;
assign bitcast_ln54_2_fu_504_p1 = reg_303;
assign bitcast_ln54_3_fu_509_p1 = reg_307;
assign bitcast_ln54_fu_472_p1 = reg_303;
assign bitcast_ln55_1_fu_546_p1 = min_p_1_reg_1108;
assign bitcast_ln55_2_fu_618_p1 = p_1_reg_1115;
assign bitcast_ln55_3_fu_635_p1 = min_p_3_reg_1135;
assign bitcast_ln55_4_fu_729_p1 = p_2_reg_1128;
assign bitcast_ln55_5_fu_746_p1 = min_p_5_reg_1148;
assign bitcast_ln55_6_fu_827_p1 = reg_311;
assign bitcast_ln55_7_fu_845_p1 = min_p_7_reg_1171;
assign bitcast_ln55_fu_528_p1 = reg_311;
assign grp_fu_1050_p_ce = 1'b1;
assign grp_fu_1050_p_din0 = grp_fu_285_p0;
assign grp_fu_1050_p_din1 = grp_fu_285_p1;
assign grp_fu_1050_p_opcode = 5'd4;
assign grp_fu_289_p3 = ((empty[0:0] == 1'b1) ? transition_1_q0 : transition_0_q0);
assign grp_fu_296_p3 = ((empty[0:0] == 1'b1) ? transition_1_q1 : transition_0_q1);
assign grp_fu_453_p_ce = 1'b1;
assign grp_fu_453_p_din0 = grp_fu_281_p0;
assign grp_fu_453_p_din1 = grp_fu_281_p1;
assign grp_fu_453_p_opcode = 2'd0;
assign icmp_ln55_10_fu_781_p2 = ((tmp_8_fu_749_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_11_fu_787_p2 = ((trunc_ln55_5_fu_759_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_12_fu_862_p2 = ((tmp_11_fu_831_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_13_fu_868_p2 = ((trunc_ln55_6_fu_841_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_14_fu_880_p2 = ((tmp_12_fu_848_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_15_fu_886_p2 = ((trunc_ln55_7_fu_858_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_1_fu_569_p2 = ((trunc_ln55_fu_542_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_581_p2 = ((tmp_2_fu_549_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_587_p2 = ((trunc_ln55_1_fu_559_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_652_p2 = ((tmp_4_fu_621_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_658_p2 = ((trunc_ln55_2_fu_631_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_670_p2 = ((tmp_5_fu_638_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_676_p2 = ((trunc_ln55_3_fu_648_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_8_fu_763_p2 = ((tmp_7_fu_732_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_9_fu_769_p2 = ((trunc_ln55_4_fu_742_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_563_p2 = ((tmp_1_fu_532_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = zext_ln54_4_fu_360_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_2_address0 = zext_ln54_4_fu_360_p1;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_3_address0 = zext_ln54_4_fu_360_p1;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_address0 = zext_ln54_6_fu_467_p1;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln8_5_fu_342_p4 = {{ap_sig_allocacmp_s[5:2]}};
assign lshr_ln9_3_fu_449_p4 = {{add_ln53_2_reg_1018[6:2]}};
assign min_p_3_fu_611_p3 = ((and_ln55_1_reg_1122[0:0] == 1'b1) ? reg_311 : min_p_1_reg_1108);
assign min_p_5_fu_713_p3 = ((and_ln55_3_reg_1142[0:0] == 1'b1) ? p_1_reg_1115 : min_p_3_reg_1135);
assign min_p_7_fu_821_p3 = ((and_ln55_5_reg_1160[0:0] == 1'b1) ? p_2_reg_1128 : min_p_5_reg_1148);
assign min_p_9_fu_909_p3 = ((and_ln55_7_fu_904_p2[0:0] == 1'b1) ? reg_311 : min_p_7_reg_1171);
assign min_s_10_out = ((and_ln55_5_reg_1160[0:0] == 1'b1) ? zext_ln55_2_fu_811_p1 : min_s_5_reg_1155);
assign min_s_4_fu_706_p3 = ((and_ln55_1_reg_1122[0:0] == 1'b1) ? zext_ln55_fu_703_p1 : min_s_fu_102);
assign min_s_5_fu_722_p3 = ((and_ln55_3_reg_1142[0:0] == 1'b1) ? zext_ln55_1_fu_719_p1 : min_s_4_fu_706_p3);
assign min_s_6_fu_814_p3 = ((and_ln55_5_reg_1160[0:0] == 1'b1) ? zext_ln55_2_fu_811_p1 : min_s_5_reg_1155);
assign min_s_7_fu_919_p3 = ((and_ln55_7_fu_904_p2[0:0] == 1'b1) ? zext_ln55_3_fu_916_p1 : min_s_6_reg_1166);
assign or_ln55_1_fu_593_p2 = (icmp_ln55_3_fu_587_p2 | icmp_ln55_2_fu_581_p2);
assign or_ln55_2_fu_664_p2 = (icmp_ln55_5_fu_658_p2 | icmp_ln55_4_fu_652_p2);
assign or_ln55_3_fu_682_p2 = (icmp_ln55_7_fu_676_p2 | icmp_ln55_6_fu_670_p2);
assign or_ln55_4_fu_775_p2 = (icmp_ln55_9_fu_769_p2 | icmp_ln55_8_fu_763_p2);
assign or_ln55_5_fu_793_p2 = (icmp_ln55_11_fu_787_p2 | icmp_ln55_10_fu_781_p2);
assign or_ln55_6_fu_874_p2 = (icmp_ln55_13_fu_868_p2 | icmp_ln55_12_fu_862_p2);
assign or_ln55_7_fu_892_p2 = (icmp_ln55_15_fu_886_p2 | icmp_ln55_14_fu_880_p2);
assign or_ln55_fu_575_p2 = (icmp_ln55_fu_563_p2 | icmp_ln55_1_fu_569_p2);
assign shl_ln2_fu_367_p3 = {{ap_sig_allocacmp_s}, {5'd0}};
assign shl_ln54_1_fu_413_p3 = {{add_ln53_reg_1006}, {5'd0}};
assign shl_ln54_2_fu_431_p3 = {{add_ln53_1_reg_1012}, {5'd0}};
assign shl_ln54_3_fu_480_p3 = {{trunc_ln54_fu_477_p1}, {5'd0}};
assign tmp_11_fu_831_p4 = {{bitcast_ln55_6_fu_827_p1[62:52]}};
assign tmp_12_fu_848_p4 = {{bitcast_ln55_7_fu_845_p1[62:52]}};
assign tmp_1_fu_532_p4 = {{bitcast_ln55_fu_528_p1[62:52]}};
assign tmp_2_fu_549_p4 = {{bitcast_ln55_1_fu_546_p1[62:52]}};
assign tmp_4_fu_621_p4 = {{bitcast_ln55_2_fu_618_p1[62:52]}};
assign tmp_5_fu_638_p4 = {{bitcast_ln55_3_fu_635_p1[62:52]}};
assign tmp_7_fu_732_p4 = {{bitcast_ln55_4_fu_729_p1[62:52]}};
assign tmp_8_fu_749_p4 = {{bitcast_ln55_5_fu_746_p1[62:52]}};
assign tmp_s_fu_352_p3 = {{t_1}, {lshr_ln8_5_fu_342_p4}};
assign transition_0_address0 = transition_0_address0_local;
assign transition_0_address1 = transition_0_address1_local;
assign transition_0_ce0 = transition_0_ce0_local;
assign transition_0_ce1 = transition_0_ce1_local;
assign transition_1_address0 = transition_1_address0_local;
assign transition_1_address1 = transition_1_address1_local;
assign transition_1_ce0 = transition_1_ce0_local;
assign transition_1_ce1 = transition_1_ce1_local;
assign trunc_ln54_fu_477_p1 = add_ln53_2_reg_1018[5:0];
assign trunc_ln55_1_fu_559_p1 = bitcast_ln55_1_fu_546_p1[51:0];
assign trunc_ln55_2_fu_631_p1 = bitcast_ln55_2_fu_618_p1[51:0];
assign trunc_ln55_3_fu_648_p1 = bitcast_ln55_3_fu_635_p1[51:0];
assign trunc_ln55_4_fu_742_p1 = bitcast_ln55_4_fu_729_p1[51:0];
assign trunc_ln55_5_fu_759_p1 = bitcast_ln55_5_fu_746_p1[51:0];
assign trunc_ln55_6_fu_841_p1 = bitcast_ln55_6_fu_827_p1[51:0];
assign trunc_ln55_7_fu_858_p1 = bitcast_ln55_7_fu_845_p1[51:0];
assign trunc_ln55_fu_542_p1 = bitcast_ln55_fu_528_p1[51:0];
assign zext_ln21_fu_338_p1 = ap_sig_allocacmp_s;
assign zext_ln52_2_cast_fu_316_p1 = zext_ln52_2;
assign zext_ln54_1_fu_425_p1 = add_ln54_1_fu_420_p2;
assign zext_ln54_2_fu_443_p1 = add_ln54_2_fu_438_p2;
assign zext_ln54_3_fu_493_p1 = add_ln54_3_fu_488_p2;
assign zext_ln54_4_fu_360_p1 = tmp_s_fu_352_p3;
assign zext_ln54_5_fu_458_p1 = lshr_ln9_3_fu_449_p4;
assign zext_ln54_6_fu_467_p1 = add_ln54_4_fu_462_p2;
assign zext_ln54_fu_381_p1 = add_ln54_fu_375_p2;
assign zext_ln55_1_fu_719_p1 = add_ln53_reg_1006_pp0_iter1_reg;
assign zext_ln55_2_fu_811_p1 = add_ln53_1_reg_1012_pp0_iter1_reg;
assign zext_ln55_3_fu_916_p1 = trunc_ln54_reg_1078_pp0_iter1_reg;
assign zext_ln55_fu_703_p1 = s_reg_975_pp0_iter1_reg;
always @ (posedge ap_clk) begin
    zext_ln52_2_cast_reg_968[10:7] <= 4'b0000;
end
endmodule 