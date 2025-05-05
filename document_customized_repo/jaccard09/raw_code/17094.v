module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_147,t_1,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,zext_ln52,transition_address0,transition_ce0,transition_q0,transition_address1,transition_ce1,transition_q1,zext_ln52_2,llike_address0,llike_ce0,llike_q0,min_s_10_out,min_s_10_out_ap_vld,grp_fu_215_p_din0,grp_fu_215_p_din1,grp_fu_215_p_opcode,grp_fu_215_p_dout0,grp_fu_215_p_ce,grp_fu_390_p_din0,grp_fu_390_p_din1,grp_fu_390_p_opcode,grp_fu_390_p_dout0,grp_fu_390_p_ce); 
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
output  [11:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [11:0] llike_2_address0;
output   llike_2_ce0;
input  [63:0] llike_2_q0;
output  [11:0] llike_3_address0;
output   llike_3_ce0;
input  [63:0] llike_3_q0;
input  [7:0] zext_ln52;
output  [11:0] transition_address0;
output   transition_ce0;
input  [63:0] transition_q0;
output  [11:0] transition_address1;
output   transition_ce1;
input  [63:0] transition_q1;
input  [11:0] zext_ln52_2;
output  [11:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [7:0] min_s_10_out;
output   min_s_10_out_ap_vld;
output  [63:0] grp_fu_215_p_din0;
output  [63:0] grp_fu_215_p_din1;
output  [1:0] grp_fu_215_p_opcode;
input  [63:0] grp_fu_215_p_dout0;
output   grp_fu_215_p_ce;
output  [63:0] grp_fu_390_p_din0;
output  [63:0] grp_fu_390_p_din1;
output  [4:0] grp_fu_390_p_opcode;
input  [0:0] grp_fu_390_p_dout0;
output   grp_fu_390_p_ce;
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
reg   [0:0] tmp_reg_936;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_234;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_239;
wire    ap_block_pp0_stage0_11001;
wire   [11:0] zext_ln52_cast_fu_244_p1;
reg   [11:0] zext_ln52_cast_reg_885;
reg   [5:0] s_reg_892;
reg   [5:0] s_reg_892_pp0_iter1_reg;
wire   [5:0] add_ln53_fu_314_p2;
reg   [5:0] add_ln53_reg_918;
reg   [5:0] add_ln53_reg_918_pp0_iter1_reg;
wire   [5:0] add_ln53_1_fu_320_p2;
reg   [5:0] add_ln53_1_reg_924;
reg   [5:0] add_ln53_1_reg_924_pp0_iter1_reg;
wire   [6:0] add_ln53_2_fu_326_p2;
reg   [6:0] add_ln53_2_reg_930;
reg   [0:0] tmp_reg_936_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_940;
reg   [63:0] llike_2_load_reg_945;
reg   [63:0] llike_3_load_reg_955;
wire   [63:0] bitcast_ln54_fu_397_p1;
reg   [63:0] transition_load_65_reg_975;
reg   [63:0] llike_load_reg_980;
wire   [5:0] trunc_ln54_fu_402_p1;
reg   [5:0] trunc_ln54_reg_985;
reg   [5:0] trunc_ln54_reg_985_pp0_iter1_reg;
wire   [63:0] bitcast_ln54_1_fu_423_p1;
wire   [63:0] bitcast_ln54_2_fu_428_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] bitcast_ln54_3_fu_432_p1;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] min_p_127_reg_1010;
reg   [63:0] p_63_reg_1017;
wire   [0:0] and_ln55_1_fu_528_p2;
reg   [0:0] and_ln55_1_reg_1024;
reg   [63:0] p_64_reg_1030;
wire   [63:0] min_p_129_fu_534_p3;
reg   [63:0] min_p_129_reg_1037;
wire   [0:0] and_ln55_3_fu_617_p2;
reg   [0:0] and_ln55_3_reg_1044;
wire   [63:0] min_p_131_fu_636_p3;
reg   [63:0] min_p_131_reg_1050;
wire   [7:0] min_s_5_fu_645_p3;
reg   [7:0] min_s_5_reg_1057;
wire   [0:0] and_ln55_5_fu_728_p2;
reg   [0:0] and_ln55_5_reg_1062;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [7:0] min_s_6_fu_737_p3;
reg   [7:0] min_s_6_reg_1068;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] min_p_133_fu_744_p3;
reg   [63:0] min_p_133_reg_1073;
reg   [0:0] tmp_211_reg_1080;
wire    ap_block_pp0_stage8_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage7_subdone;
reg    ap_condition_exit_pp0_iter1_stage7;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln54_4_fu_288_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_309_p1;
wire   [63:0] zext_ln54_1_fu_352_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_2_fu_369_p1;
wire   [63:0] zext_ln54_6_fu_392_p1;
wire   [63:0] zext_ln54_3_fu_418_p1;
wire    ap_block_pp0_stage2;
reg   [63:0] min_p_fu_90;
wire   [63:0] min_p_135_fu_832_p3;
wire    ap_loop_init;
reg   [7:0] min_s_fu_94;
wire   [7:0] min_s_7_fu_842_p3;
wire    ap_block_pp0_stage5;
reg   [5:0] min_s_1_fu_98;
wire   [5:0] add_ln53_3_fu_437_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage7_01001;
reg    llike_1_ce0_local;
reg    transition_ce0_local;
reg   [11:0] transition_address0_local;
reg    transition_ce1_local;
reg   [11:0] transition_address1_local;
reg    llike_2_ce0_local;
reg    llike_3_ce0_local;
reg    llike_ce0_local;
reg   [63:0] grp_fu_226_p0;
reg   [63:0] grp_fu_226_p1;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
reg   [63:0] grp_fu_230_p0;
reg   [63:0] grp_fu_230_p1;
wire    ap_block_pp0_stage7;
wire   [3:0] lshr_ln8_1_fu_270_p4;
wire   [11:0] tmp_s_fu_280_p3;
wire   [11:0] shl_ln2_fu_295_p3;
wire   [11:0] add_ln54_fu_303_p2;
wire   [6:0] zext_ln12_fu_266_p1;
wire   [11:0] shl_ln54_1_fu_340_p3;
wire   [11:0] add_ln54_1_fu_347_p2;
wire   [11:0] shl_ln54_2_fu_357_p3;
wire   [11:0] add_ln54_2_fu_364_p2;
wire   [4:0] lshr_ln9_2_fu_374_p4;
wire   [11:0] zext_ln54_5_fu_383_p1;
wire   [11:0] add_ln54_4_fu_387_p2;
wire   [11:0] shl_ln54_3_fu_405_p3;
wire   [11:0] add_ln54_3_fu_413_p2;
wire    ap_block_pp0_stage8;
wire   [63:0] bitcast_ln55_fu_451_p1;
wire   [63:0] bitcast_ln55_1_fu_469_p1;
wire   [10:0] tmp_200_fu_455_p4;
wire   [51:0] trunc_ln55_fu_465_p1;
wire   [0:0] icmp_ln55_1_fu_492_p2;
wire   [0:0] icmp_ln55_fu_486_p2;
wire   [10:0] tmp_201_fu_472_p4;
wire   [51:0] trunc_ln55_1_fu_482_p1;
wire   [0:0] icmp_ln55_3_fu_510_p2;
wire   [0:0] icmp_ln55_2_fu_504_p2;
wire   [0:0] or_ln55_fu_498_p2;
wire   [0:0] and_ln55_fu_522_p2;
wire   [0:0] or_ln55_1_fu_516_p2;
wire   [63:0] bitcast_ln55_2_fu_541_p1;
wire   [63:0] bitcast_ln55_3_fu_558_p1;
wire   [10:0] tmp_203_fu_544_p4;
wire   [51:0] trunc_ln55_2_fu_554_p1;
wire   [0:0] icmp_ln55_5_fu_581_p2;
wire   [0:0] icmp_ln55_4_fu_575_p2;
wire   [10:0] tmp_204_fu_561_p4;
wire   [51:0] trunc_ln55_3_fu_571_p1;
wire   [0:0] icmp_ln55_7_fu_599_p2;
wire   [0:0] icmp_ln55_6_fu_593_p2;
wire   [0:0] or_ln55_3_fu_605_p2;
wire   [0:0] or_ln55_2_fu_587_p2;
wire   [0:0] and_ln55_2_fu_611_p2;
wire   [7:0] zext_ln55_fu_626_p1;
wire   [7:0] zext_ln55_1_fu_642_p1;
wire   [7:0] min_s_4_fu_629_p3;
wire    ap_block_pp0_stage6;
wire   [63:0] bitcast_ln55_4_fu_652_p1;
wire   [63:0] bitcast_ln55_5_fu_669_p1;
wire   [10:0] tmp_206_fu_655_p4;
wire   [51:0] trunc_ln55_4_fu_665_p1;
wire   [0:0] icmp_ln55_9_fu_692_p2;
wire   [0:0] icmp_ln55_8_fu_686_p2;
wire   [10:0] tmp_207_fu_672_p4;
wire   [51:0] trunc_ln55_5_fu_682_p1;
wire   [0:0] icmp_ln55_11_fu_710_p2;
wire   [0:0] icmp_ln55_10_fu_704_p2;
wire   [0:0] or_ln55_5_fu_716_p2;
wire   [0:0] or_ln55_4_fu_698_p2;
wire   [0:0] and_ln55_4_fu_722_p2;
wire   [7:0] zext_ln55_2_fu_734_p1;
wire   [63:0] bitcast_ln55_6_fu_750_p1;
wire   [63:0] bitcast_ln55_7_fu_768_p1;
wire   [10:0] tmp_209_fu_754_p4;
wire   [51:0] trunc_ln55_6_fu_764_p1;
wire   [0:0] icmp_ln55_13_fu_791_p2;
wire   [0:0] icmp_ln55_12_fu_785_p2;
wire   [10:0] tmp_210_fu_771_p4;
wire   [51:0] trunc_ln55_7_fu_781_p1;
wire   [0:0] icmp_ln55_15_fu_809_p2;
wire   [0:0] icmp_ln55_14_fu_803_p2;
wire   [0:0] or_ln55_7_fu_815_p2;
wire   [0:0] or_ln55_6_fu_797_p2;
wire   [0:0] and_ln55_6_fu_821_p2;
wire   [0:0] and_ln55_7_fu_827_p2;
wire   [7:0] zext_ln55_3_fu_839_p1;
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
#0 min_p_fu_90 = 64'd0;
#0 min_s_fu_94 = 8'd0;
#0 min_s_1_fu_98 = 6'd0;
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
            min_p_fu_90 <= min_p_147;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_p_fu_90 <= min_p_135_fu_832_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_1_fu_98 <= 6'd1;
    end else if (((tmp_reg_936 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        min_s_1_fu_98 <= add_ln53_3_fu_437_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            min_s_fu_94 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_s_fu_94 <= min_s_7_fu_842_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_234 <= transition_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_234 <= transition_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_1_reg_924 <= add_ln53_1_fu_320_p2;
        add_ln53_1_reg_924_pp0_iter1_reg <= add_ln53_1_reg_924;
        add_ln53_2_reg_930 <= add_ln53_2_fu_326_p2;
        add_ln53_reg_918 <= add_ln53_fu_314_p2;
        add_ln53_reg_918_pp0_iter1_reg <= add_ln53_reg_918;
        s_reg_892 <= ap_sig_allocacmp_s;
        s_reg_892_pp0_iter1_reg <= s_reg_892;
        tmp_reg_936 <= add_ln53_2_fu_326_p2[32'd6];
        tmp_reg_936_pp0_iter1_reg <= tmp_reg_936;
        zext_ln52_cast_reg_885[7 : 0] <= zext_ln52_cast_fu_244_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        and_ln55_1_reg_1024 <= and_ln55_1_fu_528_p2;
        llike_load_reg_980 <= llike_q0;
        trunc_ln54_reg_985 <= trunc_ln54_fu_402_p1;
        trunc_ln54_reg_985_pp0_iter1_reg <= trunc_ln54_reg_985;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln55_3_reg_1044 <= and_ln55_3_fu_617_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln55_5_reg_1062 <= and_ln55_5_fu_728_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_reg_940 <= llike_1_q0;
        llike_2_load_reg_945 <= llike_2_q0;
        llike_3_load_reg_955 <= llike_3_q0;
        min_p_127_reg_1010 <= min_p_fu_90;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_129_reg_1037 <= min_p_129_fu_534_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_131_reg_1050 <= min_p_131_fu_636_p3;
        min_s_5_reg_1057 <= min_s_5_fu_645_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_133_reg_1073 <= min_p_133_fu_744_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_6_reg_1068 <= min_s_6_fu_737_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        p_63_reg_1017 <= grp_fu_215_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        p_64_reg_1030 <= grp_fu_215_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_239 <= grp_fu_215_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_211_reg_1080 <= grp_fu_390_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        transition_load_65_reg_975 <= transition_q0;
    end
end
always @ (*) begin
    if (((tmp_reg_936 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_reg_936_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        ap_sig_allocacmp_s = min_s_1_fu_98;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_226_p0 = llike_load_reg_980;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_226_p0 = llike_3_load_reg_955;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_226_p0 = llike_2_load_reg_945;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_226_p0 = llike_1_load_reg_940;
        end else begin
            grp_fu_226_p0 = 'bx;
        end
    end else begin
        grp_fu_226_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_226_p1 = bitcast_ln54_3_fu_432_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_226_p1 = bitcast_ln54_2_fu_428_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_226_p1 = bitcast_ln54_1_fu_423_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_226_p1 = bitcast_ln54_fu_397_p1;
        end else begin
            grp_fu_226_p1 = 'bx;
        end
    end else begin
        grp_fu_226_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_230_p0 = p_64_reg_1030;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_230_p0 = p_63_reg_1017;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_230_p0 = reg_239;
    end else begin
        grp_fu_230_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_230_p1 = min_p_133_fu_744_p3;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_230_p1 = min_p_131_fu_636_p3;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_230_p1 = min_p_129_fu_534_p3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_230_p1 = min_p_fu_90;
        end else begin
            grp_fu_230_p1 = 'bx;
        end
    end else begin
        grp_fu_230_p1 = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_936_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_10_out_ap_vld = 1'b1;
    end else begin
        min_s_10_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_address0_local = zext_ln54_2_fu_369_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_address0_local = zext_ln54_fu_309_p1;
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
            transition_address1_local = zext_ln54_3_fu_418_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_address1_local = zext_ln54_1_fu_352_p1;
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
assign add_ln53_1_fu_320_p2 = (ap_sig_allocacmp_s + 6'd2);
assign add_ln53_2_fu_326_p2 = (zext_ln12_fu_266_p1 + 7'd3);
assign add_ln53_3_fu_437_p2 = (s_reg_892 + 6'd4);
assign add_ln53_fu_314_p2 = (ap_sig_allocacmp_s + 6'd1);
assign add_ln54_1_fu_347_p2 = (shl_ln54_1_fu_340_p3 + zext_ln52_cast_reg_885);
assign add_ln54_2_fu_364_p2 = (shl_ln54_2_fu_357_p3 + zext_ln52_cast_reg_885);
assign add_ln54_3_fu_413_p2 = (shl_ln54_3_fu_405_p3 + zext_ln52_cast_reg_885);
assign add_ln54_4_fu_387_p2 = (zext_ln52_2 + zext_ln54_5_fu_383_p1);
assign add_ln54_fu_303_p2 = (shl_ln2_fu_295_p3 + zext_ln52_cast_fu_244_p1);
assign and_ln55_1_fu_528_p2 = (or_ln55_1_fu_516_p2 & and_ln55_fu_522_p2);
assign and_ln55_2_fu_611_p2 = (or_ln55_3_fu_605_p2 & or_ln55_2_fu_587_p2);
assign and_ln55_3_fu_617_p2 = (grp_fu_390_p_dout0 & and_ln55_2_fu_611_p2);
assign and_ln55_4_fu_722_p2 = (or_ln55_5_fu_716_p2 & or_ln55_4_fu_698_p2);
assign and_ln55_5_fu_728_p2 = (grp_fu_390_p_dout0 & and_ln55_4_fu_722_p2);
assign and_ln55_6_fu_821_p2 = (or_ln55_7_fu_815_p2 & or_ln55_6_fu_797_p2);
assign and_ln55_7_fu_827_p2 = (tmp_211_reg_1080 & and_ln55_6_fu_821_p2);
assign and_ln55_fu_522_p2 = (or_ln55_fu_498_p2 & grp_fu_390_p_dout0);
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
assign bitcast_ln54_1_fu_423_p1 = reg_234;
assign bitcast_ln54_2_fu_428_p1 = transition_load_65_reg_975;
assign bitcast_ln54_3_fu_432_p1 = reg_234;
assign bitcast_ln54_fu_397_p1 = reg_234;
assign bitcast_ln55_1_fu_469_p1 = min_p_127_reg_1010;
assign bitcast_ln55_2_fu_541_p1 = p_63_reg_1017;
assign bitcast_ln55_3_fu_558_p1 = min_p_129_reg_1037;
assign bitcast_ln55_4_fu_652_p1 = p_64_reg_1030;
assign bitcast_ln55_5_fu_669_p1 = min_p_131_reg_1050;
assign bitcast_ln55_6_fu_750_p1 = reg_239;
assign bitcast_ln55_7_fu_768_p1 = min_p_133_reg_1073;
assign bitcast_ln55_fu_451_p1 = reg_239;
assign grp_fu_215_p_ce = 1'b1;
assign grp_fu_215_p_din0 = grp_fu_226_p0;
assign grp_fu_215_p_din1 = grp_fu_226_p1;
assign grp_fu_215_p_opcode = 2'd0;
assign grp_fu_390_p_ce = 1'b1;
assign grp_fu_390_p_din0 = grp_fu_230_p0;
assign grp_fu_390_p_din1 = grp_fu_230_p1;
assign grp_fu_390_p_opcode = 5'd4;
assign icmp_ln55_10_fu_704_p2 = ((tmp_207_fu_672_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_11_fu_710_p2 = ((trunc_ln55_5_fu_682_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_12_fu_785_p2 = ((tmp_209_fu_754_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_13_fu_791_p2 = ((trunc_ln55_6_fu_764_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_14_fu_803_p2 = ((tmp_210_fu_771_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_15_fu_809_p2 = ((trunc_ln55_7_fu_781_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_1_fu_492_p2 = ((trunc_ln55_fu_465_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_504_p2 = ((tmp_201_fu_472_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_510_p2 = ((trunc_ln55_1_fu_482_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_575_p2 = ((tmp_203_fu_544_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_581_p2 = ((trunc_ln55_2_fu_554_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_593_p2 = ((tmp_204_fu_561_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_599_p2 = ((trunc_ln55_3_fu_571_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_8_fu_686_p2 = ((tmp_206_fu_655_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_9_fu_692_p2 = ((trunc_ln55_4_fu_665_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_486_p2 = ((tmp_200_fu_455_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = zext_ln54_4_fu_288_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_2_address0 = zext_ln54_4_fu_288_p1;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_3_address0 = zext_ln54_4_fu_288_p1;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_address0 = zext_ln54_6_fu_392_p1;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln8_1_fu_270_p4 = {{ap_sig_allocacmp_s[5:2]}};
assign lshr_ln9_2_fu_374_p4 = {{add_ln53_2_reg_930[6:2]}};
assign min_p_129_fu_534_p3 = ((and_ln55_1_reg_1024[0:0] == 1'b1) ? reg_239 : min_p_127_reg_1010);
assign min_p_131_fu_636_p3 = ((and_ln55_3_reg_1044[0:0] == 1'b1) ? p_63_reg_1017 : min_p_129_reg_1037);
assign min_p_133_fu_744_p3 = ((and_ln55_5_reg_1062[0:0] == 1'b1) ? p_64_reg_1030 : min_p_131_reg_1050);
assign min_p_135_fu_832_p3 = ((and_ln55_7_fu_827_p2[0:0] == 1'b1) ? reg_239 : min_p_133_reg_1073);
assign min_s_10_out = ((and_ln55_5_reg_1062[0:0] == 1'b1) ? zext_ln55_2_fu_734_p1 : min_s_5_reg_1057);
assign min_s_4_fu_629_p3 = ((and_ln55_1_reg_1024[0:0] == 1'b1) ? zext_ln55_fu_626_p1 : min_s_fu_94);
assign min_s_5_fu_645_p3 = ((and_ln55_3_reg_1044[0:0] == 1'b1) ? zext_ln55_1_fu_642_p1 : min_s_4_fu_629_p3);
assign min_s_6_fu_737_p3 = ((and_ln55_5_reg_1062[0:0] == 1'b1) ? zext_ln55_2_fu_734_p1 : min_s_5_reg_1057);
assign min_s_7_fu_842_p3 = ((and_ln55_7_fu_827_p2[0:0] == 1'b1) ? zext_ln55_3_fu_839_p1 : min_s_6_reg_1068);
assign or_ln55_1_fu_516_p2 = (icmp_ln55_3_fu_510_p2 | icmp_ln55_2_fu_504_p2);
assign or_ln55_2_fu_587_p2 = (icmp_ln55_5_fu_581_p2 | icmp_ln55_4_fu_575_p2);
assign or_ln55_3_fu_605_p2 = (icmp_ln55_7_fu_599_p2 | icmp_ln55_6_fu_593_p2);
assign or_ln55_4_fu_698_p2 = (icmp_ln55_9_fu_692_p2 | icmp_ln55_8_fu_686_p2);
assign or_ln55_5_fu_716_p2 = (icmp_ln55_11_fu_710_p2 | icmp_ln55_10_fu_704_p2);
assign or_ln55_6_fu_797_p2 = (icmp_ln55_13_fu_791_p2 | icmp_ln55_12_fu_785_p2);
assign or_ln55_7_fu_815_p2 = (icmp_ln55_15_fu_809_p2 | icmp_ln55_14_fu_803_p2);
assign or_ln55_fu_498_p2 = (icmp_ln55_fu_486_p2 | icmp_ln55_1_fu_492_p2);
assign shl_ln2_fu_295_p3 = {{ap_sig_allocacmp_s}, {6'd0}};
assign shl_ln54_1_fu_340_p3 = {{add_ln53_reg_918}, {6'd0}};
assign shl_ln54_2_fu_357_p3 = {{add_ln53_1_reg_924}, {6'd0}};
assign shl_ln54_3_fu_405_p3 = {{trunc_ln54_fu_402_p1}, {6'd0}};
assign tmp_200_fu_455_p4 = {{bitcast_ln55_fu_451_p1[62:52]}};
assign tmp_201_fu_472_p4 = {{bitcast_ln55_1_fu_469_p1[62:52]}};
assign tmp_203_fu_544_p4 = {{bitcast_ln55_2_fu_541_p1[62:52]}};
assign tmp_204_fu_561_p4 = {{bitcast_ln55_3_fu_558_p1[62:52]}};
assign tmp_206_fu_655_p4 = {{bitcast_ln55_4_fu_652_p1[62:52]}};
assign tmp_207_fu_672_p4 = {{bitcast_ln55_5_fu_669_p1[62:52]}};
assign tmp_209_fu_754_p4 = {{bitcast_ln55_6_fu_750_p1[62:52]}};
assign tmp_210_fu_771_p4 = {{bitcast_ln55_7_fu_768_p1[62:52]}};
assign tmp_s_fu_280_p3 = {{t_1}, {lshr_ln8_1_fu_270_p4}};
assign transition_address0 = transition_address0_local;
assign transition_address1 = transition_address1_local;
assign transition_ce0 = transition_ce0_local;
assign transition_ce1 = transition_ce1_local;
assign trunc_ln54_fu_402_p1 = add_ln53_2_reg_930[5:0];
assign trunc_ln55_1_fu_482_p1 = bitcast_ln55_1_fu_469_p1[51:0];
assign trunc_ln55_2_fu_554_p1 = bitcast_ln55_2_fu_541_p1[51:0];
assign trunc_ln55_3_fu_571_p1 = bitcast_ln55_3_fu_558_p1[51:0];
assign trunc_ln55_4_fu_665_p1 = bitcast_ln55_4_fu_652_p1[51:0];
assign trunc_ln55_5_fu_682_p1 = bitcast_ln55_5_fu_669_p1[51:0];
assign trunc_ln55_6_fu_764_p1 = bitcast_ln55_6_fu_750_p1[51:0];
assign trunc_ln55_7_fu_781_p1 = bitcast_ln55_7_fu_768_p1[51:0];
assign trunc_ln55_fu_465_p1 = bitcast_ln55_fu_451_p1[51:0];
assign zext_ln12_fu_266_p1 = ap_sig_allocacmp_s;
assign zext_ln52_cast_fu_244_p1 = zext_ln52;
assign zext_ln54_1_fu_352_p1 = add_ln54_1_fu_347_p2;
assign zext_ln54_2_fu_369_p1 = add_ln54_2_fu_364_p2;
assign zext_ln54_3_fu_418_p1 = add_ln54_3_fu_413_p2;
assign zext_ln54_4_fu_288_p1 = tmp_s_fu_280_p3;
assign zext_ln54_5_fu_383_p1 = lshr_ln9_2_fu_374_p4;
assign zext_ln54_6_fu_392_p1 = add_ln54_4_fu_387_p2;
assign zext_ln54_fu_309_p1 = add_ln54_fu_303_p2;
assign zext_ln55_1_fu_642_p1 = add_ln53_reg_918_pp0_iter1_reg;
assign zext_ln55_2_fu_734_p1 = add_ln53_1_reg_924_pp0_iter1_reg;
assign zext_ln55_3_fu_839_p1 = trunc_ln54_reg_985_pp0_iter1_reg;
assign zext_ln55_fu_626_p1 = s_reg_892_pp0_iter1_reg;
always @ (posedge ap_clk) begin
    zext_ln52_cast_reg_885[11:8] <= 4'b0000;
end
endmodule 