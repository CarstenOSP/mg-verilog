module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_147,t_1,llike_1_address0,llike_1_ce0,llike_1_q0,llike_1_address1,llike_1_ce1,llike_1_q1,zext_ln52,transition_address0,transition_ce0,transition_q0,transition_address1,transition_ce1,transition_q1,llike_address0,llike_ce0,llike_q0,zext_ln52_2,min_s_10_out,min_s_10_out_ap_vld,grp_fu_199_p_din0,grp_fu_199_p_din1,grp_fu_199_p_opcode,grp_fu_199_p_dout0,grp_fu_199_p_ce,grp_fu_374_p_din0,grp_fu_374_p_din1,grp_fu_374_p_opcode,grp_fu_374_p_dout0,grp_fu_374_p_ce); 
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
input  [63:0] min_p_147;
input  [7:0] t_1;
output  [12:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [12:0] llike_1_address1;
output   llike_1_ce1;
input  [63:0] llike_1_q1;
input  [7:0] zext_ln52;
output  [11:0] transition_address0;
output   transition_ce0;
input  [63:0] transition_q0;
output  [11:0] transition_address1;
output   transition_ce1;
input  [63:0] transition_q1;
output  [12:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
input  [12:0] zext_ln52_2;
output  [7:0] min_s_10_out;
output   min_s_10_out_ap_vld;
output  [63:0] grp_fu_199_p_din0;
output  [63:0] grp_fu_199_p_din1;
output  [1:0] grp_fu_199_p_opcode;
input  [63:0] grp_fu_199_p_dout0;
output   grp_fu_199_p_ce;
output  [63:0] grp_fu_374_p_din0;
output  [63:0] grp_fu_374_p_din1;
output  [4:0] grp_fu_374_p_opcode;
input  [0:0] grp_fu_374_p_dout0;
output   grp_fu_374_p_ce;
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
reg   [0:0] tmp_reg_966;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_224;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_229;
wire    ap_block_pp0_stage0_11001;
wire   [11:0] zext_ln52_cast_fu_234_p1;
reg   [11:0] zext_ln52_cast_reg_915;
reg   [5:0] s_reg_922;
reg   [5:0] s_reg_922_pp0_iter1_reg;
wire   [5:0] add_ln53_fu_302_p2;
reg   [5:0] add_ln53_reg_938;
reg   [5:0] add_ln53_reg_938_pp0_iter1_reg;
wire   [5:0] add_ln53_1_fu_331_p2;
reg   [5:0] add_ln53_1_reg_949;
reg   [5:0] add_ln53_1_reg_949_pp0_iter1_reg;
wire   [6:0] add_ln53_2_fu_356_p2;
reg   [6:0] add_ln53_2_reg_960;
reg   [0:0] tmp_reg_966_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_970;
reg   [63:0] llike_load_reg_975;
reg   [63:0] llike_1_load_32_reg_985;
wire   [63:0] bitcast_ln54_fu_427_p1;
reg   [63:0] transition_load_65_reg_1005;
reg   [63:0] llike_load_32_reg_1010;
wire   [5:0] trunc_ln54_fu_432_p1;
reg   [5:0] trunc_ln54_reg_1015;
reg   [5:0] trunc_ln54_reg_1015_pp0_iter1_reg;
wire   [63:0] bitcast_ln54_1_fu_453_p1;
wire   [63:0] bitcast_ln54_2_fu_458_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] bitcast_ln54_3_fu_462_p1;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] min_p_127_reg_1040;
reg   [63:0] p_63_reg_1047;
wire   [0:0] and_ln55_1_fu_558_p2;
reg   [0:0] and_ln55_1_reg_1054;
reg   [63:0] p_64_reg_1060;
wire   [63:0] min_p_129_fu_564_p3;
reg   [63:0] min_p_129_reg_1067;
wire   [0:0] and_ln55_3_fu_647_p2;
reg   [0:0] and_ln55_3_reg_1074;
wire   [63:0] min_p_131_fu_666_p3;
reg   [63:0] min_p_131_reg_1080;
wire   [7:0] min_s_5_fu_675_p3;
reg   [7:0] min_s_5_reg_1087;
wire   [0:0] and_ln55_5_fu_758_p2;
reg   [0:0] and_ln55_5_reg_1092;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [7:0] min_s_6_fu_767_p3;
reg   [7:0] min_s_6_reg_1098;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] min_p_133_fu_774_p3;
reg   [63:0] min_p_133_reg_1103;
reg   [0:0] tmp_211_reg_1110;
wire    ap_block_pp0_stage8_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage7_subdone;
reg    ap_condition_exit_pp0_iter1_stage7;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln54_4_fu_278_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_297_p1;
wire   [63:0] zext_ln54_5_fu_326_p1;
wire   [63:0] zext_ln54_6_fu_351_p1;
wire   [63:0] zext_ln54_1_fu_382_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_2_fu_399_p1;
wire   [63:0] zext_ln54_8_fu_422_p1;
wire   [63:0] zext_ln54_3_fu_448_p1;
wire    ap_block_pp0_stage2;
reg   [63:0] min_p_fu_86;
wire   [63:0] min_p_135_fu_862_p3;
wire    ap_loop_init;
reg   [7:0] min_s_fu_90;
wire   [7:0] min_s_7_fu_872_p3;
wire    ap_block_pp0_stage5;
reg   [5:0] min_s_1_fu_94;
wire   [5:0] add_ln53_3_fu_467_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage7_01001;
reg    llike_1_ce1_local;
reg    llike_1_ce0_local;
reg    transition_ce0_local;
reg   [11:0] transition_address0_local;
reg    transition_ce1_local;
reg   [11:0] transition_address1_local;
reg    llike_ce0_local;
reg   [12:0] llike_address0_local;
reg   [63:0] grp_fu_216_p0;
reg   [63:0] grp_fu_216_p1;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
reg   [63:0] grp_fu_220_p0;
reg   [63:0] grp_fu_220_p1;
wire    ap_block_pp0_stage7;
wire   [4:0] lshr_ln8_2_fu_260_p4;
wire   [12:0] tmp_s_fu_270_p3;
wire   [11:0] shl_ln2_fu_283_p3;
wire   [11:0] add_ln54_fu_291_p2;
wire   [4:0] lshr_ln8_3_fu_308_p4;
wire   [12:0] tmp_222_fu_318_p3;
wire   [4:0] add_ln8_fu_337_p2;
wire   [12:0] tmp_223_fu_343_p3;
wire   [6:0] zext_ln12_fu_256_p1;
wire   [11:0] shl_ln54_1_fu_370_p3;
wire   [11:0] add_ln54_1_fu_377_p2;
wire   [11:0] shl_ln54_2_fu_387_p3;
wire   [11:0] add_ln54_2_fu_394_p2;
wire   [5:0] lshr_ln9_2_fu_404_p4;
wire   [12:0] zext_ln54_7_fu_413_p1;
wire   [12:0] add_ln54_4_fu_417_p2;
wire   [11:0] shl_ln54_3_fu_435_p3;
wire   [11:0] add_ln54_3_fu_443_p2;
wire    ap_block_pp0_stage8;
wire   [63:0] bitcast_ln55_fu_481_p1;
wire   [63:0] bitcast_ln55_1_fu_499_p1;
wire   [10:0] tmp_200_fu_485_p4;
wire   [51:0] trunc_ln55_fu_495_p1;
wire   [0:0] icmp_ln55_1_fu_522_p2;
wire   [0:0] icmp_ln55_fu_516_p2;
wire   [10:0] tmp_201_fu_502_p4;
wire   [51:0] trunc_ln55_1_fu_512_p1;
wire   [0:0] icmp_ln55_3_fu_540_p2;
wire   [0:0] icmp_ln55_2_fu_534_p2;
wire   [0:0] or_ln55_fu_528_p2;
wire   [0:0] and_ln55_fu_552_p2;
wire   [0:0] or_ln55_1_fu_546_p2;
wire   [63:0] bitcast_ln55_2_fu_571_p1;
wire   [63:0] bitcast_ln55_3_fu_588_p1;
wire   [10:0] tmp_203_fu_574_p4;
wire   [51:0] trunc_ln55_2_fu_584_p1;
wire   [0:0] icmp_ln55_5_fu_611_p2;
wire   [0:0] icmp_ln55_4_fu_605_p2;
wire   [10:0] tmp_204_fu_591_p4;
wire   [51:0] trunc_ln55_3_fu_601_p1;
wire   [0:0] icmp_ln55_7_fu_629_p2;
wire   [0:0] icmp_ln55_6_fu_623_p2;
wire   [0:0] or_ln55_3_fu_635_p2;
wire   [0:0] or_ln55_2_fu_617_p2;
wire   [0:0] and_ln55_2_fu_641_p2;
wire   [7:0] zext_ln55_fu_656_p1;
wire   [7:0] zext_ln55_1_fu_672_p1;
wire   [7:0] min_s_4_fu_659_p3;
wire    ap_block_pp0_stage6;
wire   [63:0] bitcast_ln55_4_fu_682_p1;
wire   [63:0] bitcast_ln55_5_fu_699_p1;
wire   [10:0] tmp_206_fu_685_p4;
wire   [51:0] trunc_ln55_4_fu_695_p1;
wire   [0:0] icmp_ln55_9_fu_722_p2;
wire   [0:0] icmp_ln55_8_fu_716_p2;
wire   [10:0] tmp_207_fu_702_p4;
wire   [51:0] trunc_ln55_5_fu_712_p1;
wire   [0:0] icmp_ln55_11_fu_740_p2;
wire   [0:0] icmp_ln55_10_fu_734_p2;
wire   [0:0] or_ln55_5_fu_746_p2;
wire   [0:0] or_ln55_4_fu_728_p2;
wire   [0:0] and_ln55_4_fu_752_p2;
wire   [7:0] zext_ln55_2_fu_764_p1;
wire   [63:0] bitcast_ln55_6_fu_780_p1;
wire   [63:0] bitcast_ln55_7_fu_798_p1;
wire   [10:0] tmp_209_fu_784_p4;
wire   [51:0] trunc_ln55_6_fu_794_p1;
wire   [0:0] icmp_ln55_13_fu_821_p2;
wire   [0:0] icmp_ln55_12_fu_815_p2;
wire   [10:0] tmp_210_fu_801_p4;
wire   [51:0] trunc_ln55_7_fu_811_p1;
wire   [0:0] icmp_ln55_15_fu_839_p2;
wire   [0:0] icmp_ln55_14_fu_833_p2;
wire   [0:0] or_ln55_7_fu_845_p2;
wire   [0:0] or_ln55_6_fu_827_p2;
wire   [0:0] and_ln55_6_fu_851_p2;
wire   [0:0] and_ln55_7_fu_857_p2;
wire   [7:0] zext_ln55_3_fu_869_p1;
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
#0 min_p_fu_86 = 64'd0;
#0 min_s_fu_90 = 8'd0;
#0 min_s_1_fu_94 = 6'd0;
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
            min_p_fu_86 <= min_p_147;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_p_fu_86 <= min_p_135_fu_862_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_1_fu_94 <= 6'd1;
    end else if (((tmp_reg_966 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        min_s_1_fu_94 <= add_ln53_3_fu_467_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            min_s_fu_90 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_s_fu_90 <= min_s_7_fu_872_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_224 <= transition_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_224 <= transition_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_1_reg_949 <= add_ln53_1_fu_331_p2;
        add_ln53_1_reg_949_pp0_iter1_reg <= add_ln53_1_reg_949;
        add_ln53_2_reg_960 <= add_ln53_2_fu_356_p2;
        add_ln53_reg_938 <= add_ln53_fu_302_p2;
        add_ln53_reg_938_pp0_iter1_reg <= add_ln53_reg_938;
        s_reg_922 <= ap_sig_allocacmp_s;
        s_reg_922_pp0_iter1_reg <= s_reg_922;
        tmp_reg_966 <= add_ln53_2_fu_356_p2[32'd6];
        tmp_reg_966_pp0_iter1_reg <= tmp_reg_966;
        zext_ln52_cast_reg_915[7 : 0] <= zext_ln52_cast_fu_234_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        and_ln55_1_reg_1054 <= and_ln55_1_fu_558_p2;
        trunc_ln54_reg_1015 <= trunc_ln54_fu_432_p1;
        trunc_ln54_reg_1015_pp0_iter1_reg <= trunc_ln54_reg_1015;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln55_3_reg_1074 <= and_ln55_3_fu_647_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln55_5_reg_1092 <= and_ln55_5_fu_758_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_32_reg_985 <= llike_1_q0;
        llike_1_load_reg_970 <= llike_1_q1;
        llike_load_reg_975 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_load_32_reg_1010 <= llike_q0;
        transition_load_65_reg_1005 <= transition_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        min_p_127_reg_1040 <= min_p_fu_86;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_129_reg_1067 <= min_p_129_fu_564_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_131_reg_1080 <= min_p_131_fu_666_p3;
        min_s_5_reg_1087 <= min_s_5_fu_675_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_133_reg_1103 <= min_p_133_fu_774_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_6_reg_1098 <= min_s_6_fu_767_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        p_63_reg_1047 <= grp_fu_199_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        p_64_reg_1060 <= grp_fu_199_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_229 <= grp_fu_199_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_211_reg_1110 <= grp_fu_374_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_966 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (tmp_reg_966_pp0_iter1_reg == 1'd1))) begin
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
        ap_sig_allocacmp_s = min_s_1_fu_94;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_216_p0 = llike_load_32_reg_1010;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_216_p0 = llike_1_load_32_reg_985;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_216_p0 = llike_load_reg_975;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_216_p0 = llike_1_load_reg_970;
        end else begin
            grp_fu_216_p0 = 'bx;
        end
    end else begin
        grp_fu_216_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_216_p1 = bitcast_ln54_3_fu_462_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_216_p1 = bitcast_ln54_2_fu_458_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_216_p1 = bitcast_ln54_1_fu_453_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_216_p1 = bitcast_ln54_fu_427_p1;
        end else begin
            grp_fu_216_p1 = 'bx;
        end
    end else begin
        grp_fu_216_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_220_p0 = p_64_reg_1060;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_220_p0 = p_63_reg_1047;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_220_p0 = reg_229;
    end else begin
        grp_fu_220_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_220_p1 = min_p_133_fu_774_p3;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_220_p1 = min_p_131_fu_666_p3;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_220_p1 = min_p_129_fu_564_p3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_220_p1 = min_p_fu_86;
        end else begin
            grp_fu_220_p1 = 'bx;
        end
    end else begin
        grp_fu_220_p1 = 'bx;
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
        llike_1_ce1_local = 1'b1;
    end else begin
        llike_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln54_8_fu_422_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln54_5_fu_326_p1;
        end else begin
            llike_address0_local = 'bx;
        end
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (tmp_reg_966_pp0_iter1_reg == 1'd1))) begin
        min_s_10_out_ap_vld = 1'b1;
    end else begin
        min_s_10_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_address0_local = zext_ln54_2_fu_399_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_address0_local = zext_ln54_fu_297_p1;
        end else begin
            transition_address0_local = 'bx;
        end
    end else begin
        transition_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_address1_local = zext_ln54_3_fu_448_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_address1_local = zext_ln54_1_fu_382_p1;
        end else begin
            transition_address1_local = 'bx;
        end
    end else begin
        transition_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_ce1_local = 1'b1;
    end else begin
        transition_ce1_local = 1'b0;
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
assign add_ln53_1_fu_331_p2 = (ap_sig_allocacmp_s + 6'd2);
assign add_ln53_2_fu_356_p2 = (zext_ln12_fu_256_p1 + 7'd3);
assign add_ln53_3_fu_467_p2 = (s_reg_922 + 6'd4);
assign add_ln53_fu_302_p2 = (ap_sig_allocacmp_s + 6'd1);
assign add_ln54_1_fu_377_p2 = (shl_ln54_1_fu_370_p3 + zext_ln52_cast_reg_915);
assign add_ln54_2_fu_394_p2 = (shl_ln54_2_fu_387_p3 + zext_ln52_cast_reg_915);
assign add_ln54_3_fu_443_p2 = (shl_ln54_3_fu_435_p3 + zext_ln52_cast_reg_915);
assign add_ln54_4_fu_417_p2 = (zext_ln52_2 + zext_ln54_7_fu_413_p1);
assign add_ln54_fu_291_p2 = (shl_ln2_fu_283_p3 + zext_ln52_cast_fu_234_p1);
assign add_ln8_fu_337_p2 = (lshr_ln8_2_fu_260_p4 + 5'd1);
assign and_ln55_1_fu_558_p2 = (or_ln55_1_fu_546_p2 & and_ln55_fu_552_p2);
assign and_ln55_2_fu_641_p2 = (or_ln55_3_fu_635_p2 & or_ln55_2_fu_617_p2);
assign and_ln55_3_fu_647_p2 = (grp_fu_374_p_dout0 & and_ln55_2_fu_641_p2);
assign and_ln55_4_fu_752_p2 = (or_ln55_5_fu_746_p2 & or_ln55_4_fu_728_p2);
assign and_ln55_5_fu_758_p2 = (grp_fu_374_p_dout0 & and_ln55_4_fu_752_p2);
assign and_ln55_6_fu_851_p2 = (or_ln55_7_fu_845_p2 & or_ln55_6_fu_827_p2);
assign and_ln55_7_fu_857_p2 = (tmp_211_reg_1110 & and_ln55_6_fu_851_p2);
assign and_ln55_fu_552_p2 = (or_ln55_fu_528_p2 & grp_fu_374_p_dout0);
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
assign bitcast_ln54_1_fu_453_p1 = reg_224;
assign bitcast_ln54_2_fu_458_p1 = transition_load_65_reg_1005;
assign bitcast_ln54_3_fu_462_p1 = reg_224;
assign bitcast_ln54_fu_427_p1 = reg_224;
assign bitcast_ln55_1_fu_499_p1 = min_p_127_reg_1040;
assign bitcast_ln55_2_fu_571_p1 = p_63_reg_1047;
assign bitcast_ln55_3_fu_588_p1 = min_p_129_reg_1067;
assign bitcast_ln55_4_fu_682_p1 = p_64_reg_1060;
assign bitcast_ln55_5_fu_699_p1 = min_p_131_reg_1080;
assign bitcast_ln55_6_fu_780_p1 = reg_229;
assign bitcast_ln55_7_fu_798_p1 = min_p_133_reg_1103;
assign bitcast_ln55_fu_481_p1 = reg_229;
assign grp_fu_199_p_ce = 1'b1;
assign grp_fu_199_p_din0 = grp_fu_216_p0;
assign grp_fu_199_p_din1 = grp_fu_216_p1;
assign grp_fu_199_p_opcode = 2'd0;
assign grp_fu_374_p_ce = 1'b1;
assign grp_fu_374_p_din0 = grp_fu_220_p0;
assign grp_fu_374_p_din1 = grp_fu_220_p1;
assign grp_fu_374_p_opcode = 5'd4;
assign icmp_ln55_10_fu_734_p2 = ((tmp_207_fu_702_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_11_fu_740_p2 = ((trunc_ln55_5_fu_712_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_12_fu_815_p2 = ((tmp_209_fu_784_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_13_fu_821_p2 = ((trunc_ln55_6_fu_794_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_14_fu_833_p2 = ((tmp_210_fu_801_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_15_fu_839_p2 = ((trunc_ln55_7_fu_811_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_1_fu_522_p2 = ((trunc_ln55_fu_495_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_534_p2 = ((tmp_201_fu_502_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_540_p2 = ((trunc_ln55_1_fu_512_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_605_p2 = ((tmp_203_fu_574_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_611_p2 = ((trunc_ln55_2_fu_584_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_623_p2 = ((tmp_204_fu_591_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_629_p2 = ((trunc_ln55_3_fu_601_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_8_fu_716_p2 = ((tmp_206_fu_685_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_9_fu_722_p2 = ((trunc_ln55_4_fu_695_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_516_p2 = ((tmp_200_fu_485_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = zext_ln54_6_fu_351_p1;
assign llike_1_address1 = zext_ln54_4_fu_278_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_ce1 = llike_1_ce1_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln8_2_fu_260_p4 = {{ap_sig_allocacmp_s[5:1]}};
assign lshr_ln8_3_fu_308_p4 = {{add_ln53_fu_302_p2[5:1]}};
assign lshr_ln9_2_fu_404_p4 = {{add_ln53_2_reg_960[6:1]}};
assign min_p_129_fu_564_p3 = ((and_ln55_1_reg_1054[0:0] == 1'b1) ? reg_229 : min_p_127_reg_1040);
assign min_p_131_fu_666_p3 = ((and_ln55_3_reg_1074[0:0] == 1'b1) ? p_63_reg_1047 : min_p_129_reg_1067);
assign min_p_133_fu_774_p3 = ((and_ln55_5_reg_1092[0:0] == 1'b1) ? p_64_reg_1060 : min_p_131_reg_1080);
assign min_p_135_fu_862_p3 = ((and_ln55_7_fu_857_p2[0:0] == 1'b1) ? reg_229 : min_p_133_reg_1103);
assign min_s_10_out = ((and_ln55_5_reg_1092[0:0] == 1'b1) ? zext_ln55_2_fu_764_p1 : min_s_5_reg_1087);
assign min_s_4_fu_659_p3 = ((and_ln55_1_reg_1054[0:0] == 1'b1) ? zext_ln55_fu_656_p1 : min_s_fu_90);
assign min_s_5_fu_675_p3 = ((and_ln55_3_reg_1074[0:0] == 1'b1) ? zext_ln55_1_fu_672_p1 : min_s_4_fu_659_p3);
assign min_s_6_fu_767_p3 = ((and_ln55_5_reg_1092[0:0] == 1'b1) ? zext_ln55_2_fu_764_p1 : min_s_5_reg_1087);
assign min_s_7_fu_872_p3 = ((and_ln55_7_fu_857_p2[0:0] == 1'b1) ? zext_ln55_3_fu_869_p1 : min_s_6_reg_1098);
assign or_ln55_1_fu_546_p2 = (icmp_ln55_3_fu_540_p2 | icmp_ln55_2_fu_534_p2);
assign or_ln55_2_fu_617_p2 = (icmp_ln55_5_fu_611_p2 | icmp_ln55_4_fu_605_p2);
assign or_ln55_3_fu_635_p2 = (icmp_ln55_7_fu_629_p2 | icmp_ln55_6_fu_623_p2);
assign or_ln55_4_fu_728_p2 = (icmp_ln55_9_fu_722_p2 | icmp_ln55_8_fu_716_p2);
assign or_ln55_5_fu_746_p2 = (icmp_ln55_11_fu_740_p2 | icmp_ln55_10_fu_734_p2);
assign or_ln55_6_fu_827_p2 = (icmp_ln55_13_fu_821_p2 | icmp_ln55_12_fu_815_p2);
assign or_ln55_7_fu_845_p2 = (icmp_ln55_15_fu_839_p2 | icmp_ln55_14_fu_833_p2);
assign or_ln55_fu_528_p2 = (icmp_ln55_fu_516_p2 | icmp_ln55_1_fu_522_p2);
assign shl_ln2_fu_283_p3 = {{ap_sig_allocacmp_s}, {6'd0}};
assign shl_ln54_1_fu_370_p3 = {{add_ln53_reg_938}, {6'd0}};
assign shl_ln54_2_fu_387_p3 = {{add_ln53_1_reg_949}, {6'd0}};
assign shl_ln54_3_fu_435_p3 = {{trunc_ln54_fu_432_p1}, {6'd0}};
assign tmp_200_fu_485_p4 = {{bitcast_ln55_fu_481_p1[62:52]}};
assign tmp_201_fu_502_p4 = {{bitcast_ln55_1_fu_499_p1[62:52]}};
assign tmp_203_fu_574_p4 = {{bitcast_ln55_2_fu_571_p1[62:52]}};
assign tmp_204_fu_591_p4 = {{bitcast_ln55_3_fu_588_p1[62:52]}};
assign tmp_206_fu_685_p4 = {{bitcast_ln55_4_fu_682_p1[62:52]}};
assign tmp_207_fu_702_p4 = {{bitcast_ln55_5_fu_699_p1[62:52]}};
assign tmp_209_fu_784_p4 = {{bitcast_ln55_6_fu_780_p1[62:52]}};
assign tmp_210_fu_801_p4 = {{bitcast_ln55_7_fu_798_p1[62:52]}};
assign tmp_222_fu_318_p3 = {{t_1}, {lshr_ln8_3_fu_308_p4}};
assign tmp_223_fu_343_p3 = {{t_1}, {add_ln8_fu_337_p2}};
assign tmp_s_fu_270_p3 = {{t_1}, {lshr_ln8_2_fu_260_p4}};
assign transition_address0 = transition_address0_local;
assign transition_address1 = transition_address1_local;
assign transition_ce0 = transition_ce0_local;
assign transition_ce1 = transition_ce1_local;
assign trunc_ln54_fu_432_p1 = add_ln53_2_reg_960[5:0];
assign trunc_ln55_1_fu_512_p1 = bitcast_ln55_1_fu_499_p1[51:0];
assign trunc_ln55_2_fu_584_p1 = bitcast_ln55_2_fu_571_p1[51:0];
assign trunc_ln55_3_fu_601_p1 = bitcast_ln55_3_fu_588_p1[51:0];
assign trunc_ln55_4_fu_695_p1 = bitcast_ln55_4_fu_682_p1[51:0];
assign trunc_ln55_5_fu_712_p1 = bitcast_ln55_5_fu_699_p1[51:0];
assign trunc_ln55_6_fu_794_p1 = bitcast_ln55_6_fu_780_p1[51:0];
assign trunc_ln55_7_fu_811_p1 = bitcast_ln55_7_fu_798_p1[51:0];
assign trunc_ln55_fu_495_p1 = bitcast_ln55_fu_481_p1[51:0];
assign zext_ln12_fu_256_p1 = ap_sig_allocacmp_s;
assign zext_ln52_cast_fu_234_p1 = zext_ln52;
assign zext_ln54_1_fu_382_p1 = add_ln54_1_fu_377_p2;
assign zext_ln54_2_fu_399_p1 = add_ln54_2_fu_394_p2;
assign zext_ln54_3_fu_448_p1 = add_ln54_3_fu_443_p2;
assign zext_ln54_4_fu_278_p1 = tmp_s_fu_270_p3;
assign zext_ln54_5_fu_326_p1 = tmp_222_fu_318_p3;
assign zext_ln54_6_fu_351_p1 = tmp_223_fu_343_p3;
assign zext_ln54_7_fu_413_p1 = lshr_ln9_2_fu_404_p4;
assign zext_ln54_8_fu_422_p1 = add_ln54_4_fu_417_p2;
assign zext_ln54_fu_297_p1 = add_ln54_fu_291_p2;
assign zext_ln55_1_fu_672_p1 = add_ln53_reg_938_pp0_iter1_reg;
assign zext_ln55_2_fu_764_p1 = add_ln53_1_reg_949_pp0_iter1_reg;
assign zext_ln55_3_fu_869_p1 = trunc_ln54_reg_1015_pp0_iter1_reg;
assign zext_ln55_fu_656_p1 = s_reg_922_pp0_iter1_reg;
always @ (posedge ap_clk) begin
    zext_ln52_cast_reg_915[11:8] <= 4'b0000;
end
endmodule 