module backprop_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights2_address0,weights2_ce0,weights2_we0,weights2_d0,weights2_q0,weights2_address1,weights2_ce1,weights2_we1,weights2_d1,weights2_q1,norm_18); 
parameter    ap_ST_fsm_pp0_stage0 = 16'd1;
parameter    ap_ST_fsm_pp0_stage1 = 16'd2;
parameter    ap_ST_fsm_pp0_stage2 = 16'd4;
parameter    ap_ST_fsm_pp0_stage3 = 16'd8;
parameter    ap_ST_fsm_pp0_stage4 = 16'd16;
parameter    ap_ST_fsm_pp0_stage5 = 16'd32;
parameter    ap_ST_fsm_pp0_stage6 = 16'd64;
parameter    ap_ST_fsm_pp0_stage7 = 16'd128;
parameter    ap_ST_fsm_pp0_stage8 = 16'd256;
parameter    ap_ST_fsm_pp0_stage9 = 16'd512;
parameter    ap_ST_fsm_pp0_stage10 = 16'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 16'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 16'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 16'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 16'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 16'd32768;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] weights2_address0;
output   weights2_ce0;
output   weights2_we0;
output  [63:0] weights2_d0;
input  [63:0] weights2_q0;
output  [11:0] weights2_address1;
output   weights2_ce1;
output   weights2_we1;
output  [63:0] weights2_d1;
input  [63:0] weights2_q1;
input  [63:0] norm_18;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [0:0] icmp_ln166_reg_882;
reg    ap_condition_exit_pp0_iter0_stage15;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_263;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] reg_267;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] reg_272;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] reg_277;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] grp_fu_259_p2;
reg   [63:0] reg_282;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_block_pp0_stage15_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_286;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] reg_290;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] reg_294;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire   [0:0] icmp_ln166_fu_316_p2;
reg   [0:0] icmp_ln166_reg_882_pp0_iter1_reg;
reg   [0:0] icmp_ln166_reg_882_pp0_iter2_reg;
reg   [0:0] icmp_ln166_reg_882_pp0_iter3_reg;
reg   [6:0] i_6_load_reg_886;
wire   [6:0] add_ln166_1_fu_331_p2;
reg   [6:0] add_ln166_1_reg_891;
wire   [6:0] select_ln121_fu_353_p3;
reg   [6:0] select_ln121_reg_896;
wire   [5:0] empty_fu_367_p1;
reg   [5:0] empty_reg_901;
reg   [11:0] weights2_addr_reg_919;
reg   [11:0] weights2_addr_reg_919_pp0_iter1_reg;
reg   [11:0] weights2_addr_reg_919_pp0_iter2_reg;
reg   [11:0] weights2_addr_reg_919_pp0_iter3_reg;
reg   [11:0] weights2_addr_1_reg_924;
reg   [11:0] weights2_addr_1_reg_924_pp0_iter1_reg;
reg   [11:0] weights2_addr_1_reg_924_pp0_iter2_reg;
reg   [11:0] weights2_addr_1_reg_924_pp0_iter3_reg;
reg   [3:0] tmp_28_reg_930;
wire   [0:0] trunc_ln168_fu_429_p1;
reg   [0:0] trunc_ln168_reg_936;
reg   [2:0] tmp_29_reg_944;
wire   [1:0] trunc_ln168_1_fu_443_p1;
reg   [1:0] trunc_ln168_1_reg_952;
reg   [0:0] tmp_15_reg_958;
reg   [1:0] tmp_30_reg_964;
wire   [2:0] trunc_ln168_2_fu_465_p1;
reg   [2:0] trunc_ln168_2_reg_976;
reg   [1:0] tmp_31_reg_981;
reg   [0:0] tmp_16_reg_986;
reg   [11:0] weights2_addr_2_reg_992;
reg   [11:0] weights2_addr_2_reg_992_pp0_iter1_reg;
reg   [11:0] weights2_addr_2_reg_992_pp0_iter2_reg;
reg   [11:0] weights2_addr_2_reg_992_pp0_iter3_reg;
reg   [11:0] weights2_addr_3_reg_997;
reg   [11:0] weights2_addr_3_reg_997_pp0_iter1_reg;
reg   [11:0] weights2_addr_3_reg_997_pp0_iter2_reg;
reg   [11:0] weights2_addr_3_reg_997_pp0_iter3_reg;
reg   [11:0] weights2_addr_3_reg_997_pp0_iter4_reg;
wire   [63:0] bitcast_ln168_fu_519_p1;
reg   [11:0] weights2_addr_4_reg_1008;
reg   [11:0] weights2_addr_4_reg_1008_pp0_iter1_reg;
reg   [11:0] weights2_addr_4_reg_1008_pp0_iter2_reg;
reg   [11:0] weights2_addr_4_reg_1008_pp0_iter3_reg;
reg   [11:0] weights2_addr_4_reg_1008_pp0_iter4_reg;
reg   [11:0] weights2_addr_5_reg_1014;
reg   [11:0] weights2_addr_5_reg_1014_pp0_iter1_reg;
reg   [11:0] weights2_addr_5_reg_1014_pp0_iter2_reg;
reg   [11:0] weights2_addr_5_reg_1014_pp0_iter3_reg;
reg   [11:0] weights2_addr_5_reg_1014_pp0_iter4_reg;
wire   [63:0] bitcast_ln168_2_fu_554_p1;
reg   [11:0] weights2_addr_6_reg_1025;
reg   [11:0] weights2_addr_6_reg_1025_pp0_iter1_reg;
reg   [11:0] weights2_addr_6_reg_1025_pp0_iter2_reg;
reg   [11:0] weights2_addr_6_reg_1025_pp0_iter3_reg;
reg   [11:0] weights2_addr_6_reg_1025_pp0_iter4_reg;
reg   [11:0] weights2_addr_7_reg_1031;
reg   [11:0] weights2_addr_7_reg_1031_pp0_iter1_reg;
reg   [11:0] weights2_addr_7_reg_1031_pp0_iter2_reg;
reg   [11:0] weights2_addr_7_reg_1031_pp0_iter3_reg;
reg   [11:0] weights2_addr_7_reg_1031_pp0_iter4_reg;
wire   [63:0] bitcast_ln168_4_fu_586_p1;
reg   [63:0] weights2_load_7_reg_1042;
reg   [11:0] weights2_addr_8_reg_1047;
reg   [11:0] weights2_addr_8_reg_1047_pp0_iter1_reg;
reg   [11:0] weights2_addr_8_reg_1047_pp0_iter2_reg;
reg   [11:0] weights2_addr_8_reg_1047_pp0_iter3_reg;
reg   [11:0] weights2_addr_8_reg_1047_pp0_iter4_reg;
reg   [11:0] weights2_addr_9_reg_1053;
reg   [11:0] weights2_addr_9_reg_1053_pp0_iter1_reg;
reg   [11:0] weights2_addr_9_reg_1053_pp0_iter2_reg;
reg   [11:0] weights2_addr_9_reg_1053_pp0_iter3_reg;
reg   [11:0] weights2_addr_9_reg_1053_pp0_iter4_reg;
wire   [63:0] bitcast_ln168_6_fu_621_p1;
reg   [63:0] weights2_load_9_reg_1064;
reg   [11:0] weights2_addr_10_reg_1069;
reg   [11:0] weights2_addr_10_reg_1069_pp0_iter1_reg;
reg   [11:0] weights2_addr_10_reg_1069_pp0_iter2_reg;
reg   [11:0] weights2_addr_10_reg_1069_pp0_iter3_reg;
reg   [11:0] weights2_addr_10_reg_1069_pp0_iter4_reg;
reg   [11:0] weights2_addr_11_reg_1075;
reg   [11:0] weights2_addr_11_reg_1075_pp0_iter1_reg;
reg   [11:0] weights2_addr_11_reg_1075_pp0_iter2_reg;
reg   [11:0] weights2_addr_11_reg_1075_pp0_iter3_reg;
reg   [11:0] weights2_addr_11_reg_1075_pp0_iter4_reg;
wire   [63:0] bitcast_ln168_8_fu_659_p1;
reg   [63:0] weights2_load_11_reg_1086;
reg   [11:0] weights2_addr_12_reg_1091;
reg   [11:0] weights2_addr_12_reg_1091_pp0_iter1_reg;
reg   [11:0] weights2_addr_12_reg_1091_pp0_iter2_reg;
reg   [11:0] weights2_addr_12_reg_1091_pp0_iter3_reg;
reg   [11:0] weights2_addr_12_reg_1091_pp0_iter4_reg;
reg   [11:0] weights2_addr_13_reg_1097;
reg   [11:0] weights2_addr_13_reg_1097_pp0_iter1_reg;
reg   [11:0] weights2_addr_13_reg_1097_pp0_iter2_reg;
reg   [11:0] weights2_addr_13_reg_1097_pp0_iter3_reg;
reg   [11:0] weights2_addr_13_reg_1097_pp0_iter4_reg;
wire   [63:0] bitcast_ln168_10_fu_694_p1;
reg   [63:0] weights2_load_13_reg_1107;
reg   [11:0] weights2_addr_14_reg_1112;
reg   [11:0] weights2_addr_14_reg_1112_pp0_iter1_reg;
reg   [11:0] weights2_addr_14_reg_1112_pp0_iter2_reg;
reg   [11:0] weights2_addr_14_reg_1112_pp0_iter3_reg;
reg   [11:0] weights2_addr_14_reg_1112_pp0_iter4_reg;
reg   [11:0] weights2_addr_15_reg_1118;
reg   [11:0] weights2_addr_15_reg_1118_pp0_iter1_reg;
reg   [11:0] weights2_addr_15_reg_1118_pp0_iter2_reg;
reg   [11:0] weights2_addr_15_reg_1118_pp0_iter3_reg;
reg   [11:0] weights2_addr_15_reg_1118_pp0_iter4_reg;
wire   [63:0] bitcast_ln168_12_fu_726_p1;
reg   [63:0] weights2_load_15_reg_1128;
wire   [63:0] bitcast_ln168_14_fu_731_p1;
wire   [63:0] bitcast_ln168_16_fu_735_p1;
wire   [63:0] bitcast_ln168_18_fu_740_p1;
wire   [63:0] bitcast_ln168_20_fu_744_p1;
wire   [63:0] bitcast_ln168_22_fu_749_p1;
wire   [63:0] bitcast_ln168_24_fu_753_p1;
wire   [63:0] bitcast_ln168_26_fu_758_p1;
wire   [63:0] bitcast_ln168_28_fu_772_p1;
wire   [63:0] bitcast_ln168_30_fu_777_p1;
reg   [63:0] div131_7_reg_1178;
reg   [63:0] div131_8_reg_1183;
reg   [63:0] div131_9_reg_1188;
reg   [63:0] div131_s_reg_1193;
reg   [63:0] div131_10_reg_1198;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln168_fu_389_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln168_1_fu_414_p1;
wire   [63:0] zext_ln168_2_fu_501_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln168_3_fu_514_p1;
wire   [63:0] zext_ln168_4_fu_533_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln168_5_fu_549_p1;
wire   [63:0] zext_ln168_6_fu_568_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln168_7_fu_581_p1;
wire   [63:0] zext_ln168_8_fu_600_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln168_9_fu_616_p1;
wire   [63:0] zext_ln168_10_fu_638_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln168_11_fu_654_p1;
wire   [63:0] zext_ln168_12_fu_673_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln168_13_fu_689_p1;
wire   [63:0] zext_ln168_14_fu_708_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln168_15_fu_721_p1;
reg   [6:0] j_fu_104;
wire   [6:0] add_ln167_fu_762_p2;
wire    ap_loop_init;
reg   [6:0] i_6_fu_108;
wire   [6:0] select_ln166_fu_361_p3;
reg   [6:0] ap_sig_allocacmp_i_6_load;
wire    ap_block_pp0_stage0;
reg   [8:0] indvar_flatten20_fu_112;
wire   [8:0] add_ln166_fu_322_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten20_load;
reg    weights2_ce1_local;
reg   [11:0] weights2_address1_local;
reg    weights2_ce0_local;
reg   [11:0] weights2_address0_local;
reg    weights2_we1_local;
reg   [63:0] weights2_d1_local;
wire   [63:0] bitcast_ln168_1_fu_781_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] bitcast_ln168_3_fu_786_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] bitcast_ln168_5_fu_791_p1;
wire   [63:0] bitcast_ln168_7_fu_796_p1;
wire    ap_block_pp0_stage9;
reg    weights2_we0_local;
reg   [63:0] weights2_d0_local;
wire   [63:0] bitcast_ln168_9_fu_801_p1;
wire   [63:0] bitcast_ln168_11_fu_806_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] bitcast_ln168_13_fu_811_p1;
wire   [63:0] bitcast_ln168_15_fu_816_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] bitcast_ln168_17_fu_820_p1;
wire   [63:0] bitcast_ln168_19_fu_824_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] bitcast_ln168_21_fu_828_p1;
wire   [63:0] bitcast_ln168_23_fu_832_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] bitcast_ln168_25_fu_836_p1;
wire   [63:0] bitcast_ln168_27_fu_841_p1;
wire   [63:0] bitcast_ln168_29_fu_846_p1;
wire   [63:0] bitcast_ln168_31_fu_851_p1;
reg   [63:0] grp_fu_259_p0;
wire   [0:0] tmp_fu_345_p3;
wire   [11:0] zext_ln167_fu_379_p1;
wire   [11:0] tmp_s_fu_371_p3;
wire   [11:0] add_ln168_fu_383_p2;
wire   [4:0] tmp_27_fu_394_p4;
wire   [11:0] add_ln168_1_fu_404_p4;
wire   [11:0] add_ln168_2_fu_492_p5;
wire   [11:0] add_ln168_3_fu_506_p4;
wire   [11:0] add_ln168_4_fu_524_p5;
wire   [11:0] add_ln168_5_fu_538_p6;
wire   [11:0] add_ln168_6_fu_559_p5;
wire   [11:0] add_ln168_7_fu_573_p4;
wire   [11:0] add_ln168_8_fu_591_p5;
wire   [11:0] add_ln168_9_fu_605_p6;
wire   [11:0] add_ln168_s_fu_626_p7;
wire   [11:0] add_ln168_10_fu_643_p6;
wire   [11:0] add_ln168_11_fu_664_p5;
wire   [11:0] add_ln168_12_fu_678_p6;
wire   [11:0] add_ln168_13_fu_699_p5;
wire   [11:0] add_ln168_14_fu_713_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter4_stage0;
reg    ap_idle_pp0_0to3;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [15:0] ap_NS_fsm;
reg    ap_idle_pp0_1to5;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_fu_104 = 7'd0;
#0 i_6_fu_108 = 7'd0;
#0 indvar_flatten20_fu_112 = 9'd0;
#0 ap_done_reg = 1'b0;
end
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U434(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_259_p0),.din1(norm_18),.ce(1'b1),.dout(grp_fu_259_p2));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage15),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage15)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter5 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter4_stage0) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter4_stage0) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter4_stage0) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter4_stage0) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_6_fu_108 <= 7'd0;
    end else if (((icmp_ln166_reg_882 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_6_fu_108 <= select_ln166_fu_361_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln166_fu_316_p2 == 1'd0))) begin
            indvar_flatten20_fu_112 <= add_ln166_fu_322_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten20_fu_112 <= 9'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_104 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_104 <= add_ln167_fu_762_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_267 <= weights2_q1;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_267 <= weights2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            reg_272 <= weights2_q1;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_272 <= weights2_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            reg_277 <= weights2_q1;
        end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_277 <= weights2_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln166_1_reg_891 <= add_ln166_1_fu_331_p2;
        i_6_load_reg_886 <= ap_sig_allocacmp_i_6_load;
        icmp_ln166_reg_882 <= icmp_ln166_fu_316_p2;
        icmp_ln166_reg_882_pp0_iter1_reg <= icmp_ln166_reg_882;
        icmp_ln166_reg_882_pp0_iter2_reg <= icmp_ln166_reg_882_pp0_iter1_reg;
        icmp_ln166_reg_882_pp0_iter3_reg <= icmp_ln166_reg_882_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        div131_10_reg_1198 <= grp_fu_259_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        div131_7_reg_1178 <= grp_fu_259_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        div131_8_reg_1183 <= grp_fu_259_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        div131_9_reg_1188 <= grp_fu_259_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        div131_s_reg_1193 <= grp_fu_259_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        empty_reg_901 <= empty_fu_367_p1;
        select_ln121_reg_896 <= select_ln121_fu_353_p3;
        tmp_15_reg_958 <= select_ln121_fu_353_p3[32'd1];
        tmp_16_reg_986 <= select_ln121_fu_353_p3[32'd2];
        tmp_28_reg_930 <= {{select_ln121_fu_353_p3[5:2]}};
        tmp_29_reg_944 <= {{select_ln121_fu_353_p3[5:3]}};
        tmp_30_reg_964 <= {{select_ln121_fu_353_p3[5:4]}};
        tmp_31_reg_981 <= {{select_ln121_fu_353_p3[2:1]}};
        trunc_ln168_1_reg_952 <= trunc_ln168_1_fu_443_p1;
        trunc_ln168_2_reg_976 <= trunc_ln168_2_fu_465_p1;
        trunc_ln168_reg_936 <= trunc_ln168_fu_429_p1;
        weights2_addr_1_reg_924[11 : 1] <= zext_ln168_1_fu_414_p1[11 : 1];
        weights2_addr_1_reg_924_pp0_iter1_reg[11 : 1] <= weights2_addr_1_reg_924[11 : 1];
        weights2_addr_1_reg_924_pp0_iter2_reg[11 : 1] <= weights2_addr_1_reg_924_pp0_iter1_reg[11 : 1];
        weights2_addr_1_reg_924_pp0_iter3_reg[11 : 1] <= weights2_addr_1_reg_924_pp0_iter2_reg[11 : 1];
        weights2_addr_reg_919 <= zext_ln168_fu_389_p1;
        weights2_addr_reg_919_pp0_iter1_reg <= weights2_addr_reg_919;
        weights2_addr_reg_919_pp0_iter2_reg <= weights2_addr_reg_919_pp0_iter1_reg;
        weights2_addr_reg_919_pp0_iter3_reg <= weights2_addr_reg_919_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_263 <= weights2_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_282 <= grp_fu_259_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_286 <= grp_fu_259_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_290 <= grp_fu_259_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_294 <= grp_fu_259_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights2_addr_10_reg_1069[0] <= zext_ln168_10_fu_638_p1[0];
weights2_addr_10_reg_1069[2] <= zext_ln168_10_fu_638_p1[2];
weights2_addr_10_reg_1069[11 : 4] <= zext_ln168_10_fu_638_p1[11 : 4];
        weights2_addr_10_reg_1069_pp0_iter1_reg[0] <= weights2_addr_10_reg_1069[0];
weights2_addr_10_reg_1069_pp0_iter1_reg[2] <= weights2_addr_10_reg_1069[2];
weights2_addr_10_reg_1069_pp0_iter1_reg[11 : 4] <= weights2_addr_10_reg_1069[11 : 4];
        weights2_addr_10_reg_1069_pp0_iter2_reg[0] <= weights2_addr_10_reg_1069_pp0_iter1_reg[0];
weights2_addr_10_reg_1069_pp0_iter2_reg[2] <= weights2_addr_10_reg_1069_pp0_iter1_reg[2];
weights2_addr_10_reg_1069_pp0_iter2_reg[11 : 4] <= weights2_addr_10_reg_1069_pp0_iter1_reg[11 : 4];
        weights2_addr_10_reg_1069_pp0_iter3_reg[0] <= weights2_addr_10_reg_1069_pp0_iter2_reg[0];
weights2_addr_10_reg_1069_pp0_iter3_reg[2] <= weights2_addr_10_reg_1069_pp0_iter2_reg[2];
weights2_addr_10_reg_1069_pp0_iter3_reg[11 : 4] <= weights2_addr_10_reg_1069_pp0_iter2_reg[11 : 4];
        weights2_addr_10_reg_1069_pp0_iter4_reg[0] <= weights2_addr_10_reg_1069_pp0_iter3_reg[0];
weights2_addr_10_reg_1069_pp0_iter4_reg[2] <= weights2_addr_10_reg_1069_pp0_iter3_reg[2];
weights2_addr_10_reg_1069_pp0_iter4_reg[11 : 4] <= weights2_addr_10_reg_1069_pp0_iter3_reg[11 : 4];
        weights2_addr_11_reg_1075[2] <= zext_ln168_11_fu_654_p1[2];
weights2_addr_11_reg_1075[11 : 4] <= zext_ln168_11_fu_654_p1[11 : 4];
        weights2_addr_11_reg_1075_pp0_iter1_reg[2] <= weights2_addr_11_reg_1075[2];
weights2_addr_11_reg_1075_pp0_iter1_reg[11 : 4] <= weights2_addr_11_reg_1075[11 : 4];
        weights2_addr_11_reg_1075_pp0_iter2_reg[2] <= weights2_addr_11_reg_1075_pp0_iter1_reg[2];
weights2_addr_11_reg_1075_pp0_iter2_reg[11 : 4] <= weights2_addr_11_reg_1075_pp0_iter1_reg[11 : 4];
        weights2_addr_11_reg_1075_pp0_iter3_reg[2] <= weights2_addr_11_reg_1075_pp0_iter2_reg[2];
weights2_addr_11_reg_1075_pp0_iter3_reg[11 : 4] <= weights2_addr_11_reg_1075_pp0_iter2_reg[11 : 4];
        weights2_addr_11_reg_1075_pp0_iter4_reg[2] <= weights2_addr_11_reg_1075_pp0_iter3_reg[2];
weights2_addr_11_reg_1075_pp0_iter4_reg[11 : 4] <= weights2_addr_11_reg_1075_pp0_iter3_reg[11 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights2_addr_12_reg_1091[1 : 0] <= zext_ln168_12_fu_673_p1[1 : 0];
weights2_addr_12_reg_1091[11 : 4] <= zext_ln168_12_fu_673_p1[11 : 4];
        weights2_addr_12_reg_1091_pp0_iter1_reg[1 : 0] <= weights2_addr_12_reg_1091[1 : 0];
weights2_addr_12_reg_1091_pp0_iter1_reg[11 : 4] <= weights2_addr_12_reg_1091[11 : 4];
        weights2_addr_12_reg_1091_pp0_iter2_reg[1 : 0] <= weights2_addr_12_reg_1091_pp0_iter1_reg[1 : 0];
weights2_addr_12_reg_1091_pp0_iter2_reg[11 : 4] <= weights2_addr_12_reg_1091_pp0_iter1_reg[11 : 4];
        weights2_addr_12_reg_1091_pp0_iter3_reg[1 : 0] <= weights2_addr_12_reg_1091_pp0_iter2_reg[1 : 0];
weights2_addr_12_reg_1091_pp0_iter3_reg[11 : 4] <= weights2_addr_12_reg_1091_pp0_iter2_reg[11 : 4];
        weights2_addr_12_reg_1091_pp0_iter4_reg[1 : 0] <= weights2_addr_12_reg_1091_pp0_iter3_reg[1 : 0];
weights2_addr_12_reg_1091_pp0_iter4_reg[11 : 4] <= weights2_addr_12_reg_1091_pp0_iter3_reg[11 : 4];
        weights2_addr_13_reg_1097[1] <= zext_ln168_13_fu_689_p1[1];
weights2_addr_13_reg_1097[11 : 4] <= zext_ln168_13_fu_689_p1[11 : 4];
        weights2_addr_13_reg_1097_pp0_iter1_reg[1] <= weights2_addr_13_reg_1097[1];
weights2_addr_13_reg_1097_pp0_iter1_reg[11 : 4] <= weights2_addr_13_reg_1097[11 : 4];
        weights2_addr_13_reg_1097_pp0_iter2_reg[1] <= weights2_addr_13_reg_1097_pp0_iter1_reg[1];
weights2_addr_13_reg_1097_pp0_iter2_reg[11 : 4] <= weights2_addr_13_reg_1097_pp0_iter1_reg[11 : 4];
        weights2_addr_13_reg_1097_pp0_iter3_reg[1] <= weights2_addr_13_reg_1097_pp0_iter2_reg[1];
weights2_addr_13_reg_1097_pp0_iter3_reg[11 : 4] <= weights2_addr_13_reg_1097_pp0_iter2_reg[11 : 4];
        weights2_addr_13_reg_1097_pp0_iter4_reg[1] <= weights2_addr_13_reg_1097_pp0_iter3_reg[1];
weights2_addr_13_reg_1097_pp0_iter4_reg[11 : 4] <= weights2_addr_13_reg_1097_pp0_iter3_reg[11 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights2_addr_14_reg_1112[0] <= zext_ln168_14_fu_708_p1[0];
weights2_addr_14_reg_1112[11 : 4] <= zext_ln168_14_fu_708_p1[11 : 4];
        weights2_addr_14_reg_1112_pp0_iter1_reg[0] <= weights2_addr_14_reg_1112[0];
weights2_addr_14_reg_1112_pp0_iter1_reg[11 : 4] <= weights2_addr_14_reg_1112[11 : 4];
        weights2_addr_14_reg_1112_pp0_iter2_reg[0] <= weights2_addr_14_reg_1112_pp0_iter1_reg[0];
weights2_addr_14_reg_1112_pp0_iter2_reg[11 : 4] <= weights2_addr_14_reg_1112_pp0_iter1_reg[11 : 4];
        weights2_addr_14_reg_1112_pp0_iter3_reg[0] <= weights2_addr_14_reg_1112_pp0_iter2_reg[0];
weights2_addr_14_reg_1112_pp0_iter3_reg[11 : 4] <= weights2_addr_14_reg_1112_pp0_iter2_reg[11 : 4];
        weights2_addr_14_reg_1112_pp0_iter4_reg[0] <= weights2_addr_14_reg_1112_pp0_iter3_reg[0];
weights2_addr_14_reg_1112_pp0_iter4_reg[11 : 4] <= weights2_addr_14_reg_1112_pp0_iter3_reg[11 : 4];
        weights2_addr_15_reg_1118[11 : 4] <= zext_ln168_15_fu_721_p1[11 : 4];
        weights2_addr_15_reg_1118_pp0_iter1_reg[11 : 4] <= weights2_addr_15_reg_1118[11 : 4];
        weights2_addr_15_reg_1118_pp0_iter2_reg[11 : 4] <= weights2_addr_15_reg_1118_pp0_iter1_reg[11 : 4];
        weights2_addr_15_reg_1118_pp0_iter3_reg[11 : 4] <= weights2_addr_15_reg_1118_pp0_iter2_reg[11 : 4];
        weights2_addr_15_reg_1118_pp0_iter4_reg[11 : 4] <= weights2_addr_15_reg_1118_pp0_iter3_reg[11 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_addr_2_reg_992[0] <= zext_ln168_2_fu_501_p1[0];
weights2_addr_2_reg_992[11 : 2] <= zext_ln168_2_fu_501_p1[11 : 2];
        weights2_addr_2_reg_992_pp0_iter1_reg[0] <= weights2_addr_2_reg_992[0];
weights2_addr_2_reg_992_pp0_iter1_reg[11 : 2] <= weights2_addr_2_reg_992[11 : 2];
        weights2_addr_2_reg_992_pp0_iter2_reg[0] <= weights2_addr_2_reg_992_pp0_iter1_reg[0];
weights2_addr_2_reg_992_pp0_iter2_reg[11 : 2] <= weights2_addr_2_reg_992_pp0_iter1_reg[11 : 2];
        weights2_addr_2_reg_992_pp0_iter3_reg[0] <= weights2_addr_2_reg_992_pp0_iter2_reg[0];
weights2_addr_2_reg_992_pp0_iter3_reg[11 : 2] <= weights2_addr_2_reg_992_pp0_iter2_reg[11 : 2];
        weights2_addr_3_reg_997[11 : 2] <= zext_ln168_3_fu_514_p1[11 : 2];
        weights2_addr_3_reg_997_pp0_iter1_reg[11 : 2] <= weights2_addr_3_reg_997[11 : 2];
        weights2_addr_3_reg_997_pp0_iter2_reg[11 : 2] <= weights2_addr_3_reg_997_pp0_iter1_reg[11 : 2];
        weights2_addr_3_reg_997_pp0_iter3_reg[11 : 2] <= weights2_addr_3_reg_997_pp0_iter2_reg[11 : 2];
        weights2_addr_3_reg_997_pp0_iter4_reg[11 : 2] <= weights2_addr_3_reg_997_pp0_iter3_reg[11 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_addr_4_reg_1008[1 : 0] <= zext_ln168_4_fu_533_p1[1 : 0];
weights2_addr_4_reg_1008[11 : 3] <= zext_ln168_4_fu_533_p1[11 : 3];
        weights2_addr_4_reg_1008_pp0_iter1_reg[1 : 0] <= weights2_addr_4_reg_1008[1 : 0];
weights2_addr_4_reg_1008_pp0_iter1_reg[11 : 3] <= weights2_addr_4_reg_1008[11 : 3];
        weights2_addr_4_reg_1008_pp0_iter2_reg[1 : 0] <= weights2_addr_4_reg_1008_pp0_iter1_reg[1 : 0];
weights2_addr_4_reg_1008_pp0_iter2_reg[11 : 3] <= weights2_addr_4_reg_1008_pp0_iter1_reg[11 : 3];
        weights2_addr_4_reg_1008_pp0_iter3_reg[1 : 0] <= weights2_addr_4_reg_1008_pp0_iter2_reg[1 : 0];
weights2_addr_4_reg_1008_pp0_iter3_reg[11 : 3] <= weights2_addr_4_reg_1008_pp0_iter2_reg[11 : 3];
        weights2_addr_4_reg_1008_pp0_iter4_reg[1 : 0] <= weights2_addr_4_reg_1008_pp0_iter3_reg[1 : 0];
weights2_addr_4_reg_1008_pp0_iter4_reg[11 : 3] <= weights2_addr_4_reg_1008_pp0_iter3_reg[11 : 3];
        weights2_addr_5_reg_1014[1] <= zext_ln168_5_fu_549_p1[1];
weights2_addr_5_reg_1014[11 : 3] <= zext_ln168_5_fu_549_p1[11 : 3];
        weights2_addr_5_reg_1014_pp0_iter1_reg[1] <= weights2_addr_5_reg_1014[1];
weights2_addr_5_reg_1014_pp0_iter1_reg[11 : 3] <= weights2_addr_5_reg_1014[11 : 3];
        weights2_addr_5_reg_1014_pp0_iter2_reg[1] <= weights2_addr_5_reg_1014_pp0_iter1_reg[1];
weights2_addr_5_reg_1014_pp0_iter2_reg[11 : 3] <= weights2_addr_5_reg_1014_pp0_iter1_reg[11 : 3];
        weights2_addr_5_reg_1014_pp0_iter3_reg[1] <= weights2_addr_5_reg_1014_pp0_iter2_reg[1];
weights2_addr_5_reg_1014_pp0_iter3_reg[11 : 3] <= weights2_addr_5_reg_1014_pp0_iter2_reg[11 : 3];
        weights2_addr_5_reg_1014_pp0_iter4_reg[1] <= weights2_addr_5_reg_1014_pp0_iter3_reg[1];
weights2_addr_5_reg_1014_pp0_iter4_reg[11 : 3] <= weights2_addr_5_reg_1014_pp0_iter3_reg[11 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_addr_6_reg_1025[0] <= zext_ln168_6_fu_568_p1[0];
weights2_addr_6_reg_1025[11 : 3] <= zext_ln168_6_fu_568_p1[11 : 3];
        weights2_addr_6_reg_1025_pp0_iter1_reg[0] <= weights2_addr_6_reg_1025[0];
weights2_addr_6_reg_1025_pp0_iter1_reg[11 : 3] <= weights2_addr_6_reg_1025[11 : 3];
        weights2_addr_6_reg_1025_pp0_iter2_reg[0] <= weights2_addr_6_reg_1025_pp0_iter1_reg[0];
weights2_addr_6_reg_1025_pp0_iter2_reg[11 : 3] <= weights2_addr_6_reg_1025_pp0_iter1_reg[11 : 3];
        weights2_addr_6_reg_1025_pp0_iter3_reg[0] <= weights2_addr_6_reg_1025_pp0_iter2_reg[0];
weights2_addr_6_reg_1025_pp0_iter3_reg[11 : 3] <= weights2_addr_6_reg_1025_pp0_iter2_reg[11 : 3];
        weights2_addr_6_reg_1025_pp0_iter4_reg[0] <= weights2_addr_6_reg_1025_pp0_iter3_reg[0];
weights2_addr_6_reg_1025_pp0_iter4_reg[11 : 3] <= weights2_addr_6_reg_1025_pp0_iter3_reg[11 : 3];
        weights2_addr_7_reg_1031[11 : 3] <= zext_ln168_7_fu_581_p1[11 : 3];
        weights2_addr_7_reg_1031_pp0_iter1_reg[11 : 3] <= weights2_addr_7_reg_1031[11 : 3];
        weights2_addr_7_reg_1031_pp0_iter2_reg[11 : 3] <= weights2_addr_7_reg_1031_pp0_iter1_reg[11 : 3];
        weights2_addr_7_reg_1031_pp0_iter3_reg[11 : 3] <= weights2_addr_7_reg_1031_pp0_iter2_reg[11 : 3];
        weights2_addr_7_reg_1031_pp0_iter4_reg[11 : 3] <= weights2_addr_7_reg_1031_pp0_iter3_reg[11 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights2_addr_8_reg_1047[2 : 0] <= zext_ln168_8_fu_600_p1[2 : 0];
weights2_addr_8_reg_1047[11 : 4] <= zext_ln168_8_fu_600_p1[11 : 4];
        weights2_addr_8_reg_1047_pp0_iter1_reg[2 : 0] <= weights2_addr_8_reg_1047[2 : 0];
weights2_addr_8_reg_1047_pp0_iter1_reg[11 : 4] <= weights2_addr_8_reg_1047[11 : 4];
        weights2_addr_8_reg_1047_pp0_iter2_reg[2 : 0] <= weights2_addr_8_reg_1047_pp0_iter1_reg[2 : 0];
weights2_addr_8_reg_1047_pp0_iter2_reg[11 : 4] <= weights2_addr_8_reg_1047_pp0_iter1_reg[11 : 4];
        weights2_addr_8_reg_1047_pp0_iter3_reg[2 : 0] <= weights2_addr_8_reg_1047_pp0_iter2_reg[2 : 0];
weights2_addr_8_reg_1047_pp0_iter3_reg[11 : 4] <= weights2_addr_8_reg_1047_pp0_iter2_reg[11 : 4];
        weights2_addr_8_reg_1047_pp0_iter4_reg[2 : 0] <= weights2_addr_8_reg_1047_pp0_iter3_reg[2 : 0];
weights2_addr_8_reg_1047_pp0_iter4_reg[11 : 4] <= weights2_addr_8_reg_1047_pp0_iter3_reg[11 : 4];
        weights2_addr_9_reg_1053[2 : 1] <= zext_ln168_9_fu_616_p1[2 : 1];
weights2_addr_9_reg_1053[11 : 4] <= zext_ln168_9_fu_616_p1[11 : 4];
        weights2_addr_9_reg_1053_pp0_iter1_reg[2 : 1] <= weights2_addr_9_reg_1053[2 : 1];
weights2_addr_9_reg_1053_pp0_iter1_reg[11 : 4] <= weights2_addr_9_reg_1053[11 : 4];
        weights2_addr_9_reg_1053_pp0_iter2_reg[2 : 1] <= weights2_addr_9_reg_1053_pp0_iter1_reg[2 : 1];
weights2_addr_9_reg_1053_pp0_iter2_reg[11 : 4] <= weights2_addr_9_reg_1053_pp0_iter1_reg[11 : 4];
        weights2_addr_9_reg_1053_pp0_iter3_reg[2 : 1] <= weights2_addr_9_reg_1053_pp0_iter2_reg[2 : 1];
weights2_addr_9_reg_1053_pp0_iter3_reg[11 : 4] <= weights2_addr_9_reg_1053_pp0_iter2_reg[11 : 4];
        weights2_addr_9_reg_1053_pp0_iter4_reg[2 : 1] <= weights2_addr_9_reg_1053_pp0_iter3_reg[2 : 1];
weights2_addr_9_reg_1053_pp0_iter4_reg[11 : 4] <= weights2_addr_9_reg_1053_pp0_iter3_reg[11 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights2_load_11_reg_1086 <= weights2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights2_load_13_reg_1107 <= weights2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights2_load_15_reg_1128 <= weights2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights2_load_7_reg_1042 <= weights2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights2_load_9_reg_1064 <= weights2_q0;
    end
end
always @ (*) begin
    if (((icmp_ln166_reg_882 == 1'd1) & (1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (icmp_ln166_reg_882_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter4_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter4_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to3 = 1'b1;
    end else begin
        ap_idle_pp0_0to3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to5 = 1'b1;
    end else begin
        ap_idle_pp0_1to5 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_6_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_6_load = i_6_fu_108;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten20_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten20_load = indvar_flatten20_fu_112;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_259_p0 = bitcast_ln168_30_fu_777_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_259_p0 = bitcast_ln168_28_fu_772_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_259_p0 = bitcast_ln168_26_fu_758_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_259_p0 = bitcast_ln168_24_fu_753_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_259_p0 = bitcast_ln168_22_fu_749_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_259_p0 = bitcast_ln168_20_fu_744_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_259_p0 = bitcast_ln168_18_fu_740_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_259_p0 = bitcast_ln168_16_fu_735_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_259_p0 = bitcast_ln168_14_fu_731_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_259_p0 = bitcast_ln168_12_fu_726_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_259_p0 = bitcast_ln168_10_fu_694_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_259_p0 = bitcast_ln168_8_fu_659_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_259_p0 = bitcast_ln168_6_fu_621_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_259_p0 = bitcast_ln168_4_fu_586_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_259_p0 = bitcast_ln168_2_fu_554_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_259_p0 = bitcast_ln168_fu_519_p1;
    end else begin
        grp_fu_259_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_address0_local = weights2_addr_15_reg_1118_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights2_address0_local = weights2_addr_14_reg_1112_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights2_address0_local = weights2_addr_13_reg_1097_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights2_address0_local = weights2_addr_12_reg_1091_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights2_address0_local = weights2_addr_10_reg_1069_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights2_address0_local = weights2_addr_8_reg_1047_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights2_address0_local = weights2_addr_6_reg_1025_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights2_address0_local = weights2_addr_4_reg_1008_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights2_address0_local = zext_ln168_15_fu_721_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights2_address0_local = zext_ln168_13_fu_689_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights2_address0_local = zext_ln168_11_fu_654_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights2_address0_local = zext_ln168_9_fu_616_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_address0_local = zext_ln168_7_fu_581_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_address0_local = zext_ln168_5_fu_549_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_address0_local = zext_ln168_3_fu_514_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_address0_local = zext_ln168_1_fu_414_p1;
    end else begin
        weights2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights2_address1_local = weights2_addr_11_reg_1075_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights2_address1_local = weights2_addr_9_reg_1053_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights2_address1_local = weights2_addr_7_reg_1031_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights2_address1_local = weights2_addr_5_reg_1014_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights2_address1_local = weights2_addr_3_reg_997_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_address1_local = weights2_addr_2_reg_992_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights2_address1_local = weights2_addr_1_reg_924_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights2_address1_local = weights2_addr_reg_919_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights2_address1_local = zext_ln168_14_fu_708_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights2_address1_local = zext_ln168_12_fu_673_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights2_address1_local = zext_ln168_10_fu_638_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights2_address1_local = zext_ln168_8_fu_600_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_address1_local = zext_ln168_6_fu_568_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_address1_local = zext_ln168_4_fu_533_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_address1_local = zext_ln168_2_fu_501_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_address1_local = zext_ln168_fu_389_p1;
    end else begin
        weights2_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage8_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights2_ce0_local = 1'b1;
    end else begin
        weights2_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage8_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights2_ce1_local = 1'b1;
    end else begin
        weights2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_d0_local = bitcast_ln168_31_fu_851_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights2_d0_local = bitcast_ln168_29_fu_846_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights2_d0_local = bitcast_ln168_27_fu_841_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights2_d0_local = bitcast_ln168_25_fu_836_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights2_d0_local = bitcast_ln168_21_fu_828_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights2_d0_local = bitcast_ln168_17_fu_820_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights2_d0_local = bitcast_ln168_13_fu_811_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights2_d0_local = bitcast_ln168_9_fu_801_p1;
    end else begin
        weights2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights2_d1_local = bitcast_ln168_23_fu_832_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights2_d1_local = bitcast_ln168_19_fu_824_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights2_d1_local = bitcast_ln168_15_fu_816_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights2_d1_local = bitcast_ln168_11_fu_806_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights2_d1_local = bitcast_ln168_7_fu_796_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_d1_local = bitcast_ln168_5_fu_791_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights2_d1_local = bitcast_ln168_3_fu_786_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights2_d1_local = bitcast_ln168_1_fu_781_p1;
    end else begin
        weights2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        weights2_we0_local = 1'b1;
    end else begin
        weights2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        weights2_we1_local = 1'b1;
    end else begin
        weights2_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter4_stage0) & (ap_idle_pp0_0to3 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to5 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln166_1_fu_331_p2 = (ap_sig_allocacmp_i_6_load + 7'd1);
assign add_ln166_fu_322_p2 = (ap_sig_allocacmp_indvar_flatten20_load + 9'd1);
assign add_ln167_fu_762_p2 = (select_ln121_reg_896 + 7'd16);
assign add_ln168_10_fu_643_p6 = {{{{{empty_reg_901}, {tmp_30_reg_964}}, {1'd1}}, {tmp_16_reg_986}}, {2'd3}};
assign add_ln168_11_fu_664_p5 = {{{{empty_reg_901}, {tmp_30_reg_964}}, {2'd3}}, {trunc_ln168_1_reg_952}};
assign add_ln168_12_fu_678_p6 = {{{{{empty_reg_901}, {tmp_30_reg_964}}, {2'd3}}, {tmp_15_reg_958}}, {1'd1}};
assign add_ln168_13_fu_699_p5 = {{{{empty_reg_901}, {tmp_30_reg_964}}, {3'd7}}, {trunc_ln168_reg_936}};
assign add_ln168_14_fu_713_p4 = {{{empty_reg_901}, {tmp_30_reg_964}}, {4'd15}};
assign add_ln168_1_fu_404_p4 = {{{empty_fu_367_p1}, {tmp_27_fu_394_p4}}, {1'd1}};
assign add_ln168_2_fu_492_p5 = {{{{empty_reg_901}, {tmp_28_reg_930}}, {1'd1}}, {trunc_ln168_reg_936}};
assign add_ln168_3_fu_506_p4 = {{{empty_reg_901}, {tmp_28_reg_930}}, {2'd3}};
assign add_ln168_4_fu_524_p5 = {{{{empty_reg_901}, {tmp_29_reg_944}}, {1'd1}}, {trunc_ln168_1_reg_952}};
assign add_ln168_5_fu_538_p6 = {{{{{empty_reg_901}, {tmp_29_reg_944}}, {1'd1}}, {tmp_15_reg_958}}, {1'd1}};
assign add_ln168_6_fu_559_p5 = {{{{empty_reg_901}, {tmp_29_reg_944}}, {2'd3}}, {trunc_ln168_reg_936}};
assign add_ln168_7_fu_573_p4 = {{{empty_reg_901}, {tmp_29_reg_944}}, {3'd7}};
assign add_ln168_8_fu_591_p5 = {{{{empty_reg_901}, {tmp_30_reg_964}}, {1'd1}}, {trunc_ln168_2_reg_976}};
assign add_ln168_9_fu_605_p6 = {{{{{empty_reg_901}, {tmp_30_reg_964}}, {1'd1}}, {tmp_31_reg_981}}, {1'd1}};
assign add_ln168_fu_383_p2 = (zext_ln167_fu_379_p1 + tmp_s_fu_371_p3);
assign add_ln168_s_fu_626_p7 = {{{{{{empty_reg_901}, {tmp_30_reg_964}}, {1'd1}}, {tmp_16_reg_986}}, {1'd1}}, {trunc_ln168_reg_936}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage15;
assign ap_ready = ap_ready_sig;
assign bitcast_ln168_10_fu_694_p1 = reg_277;
assign bitcast_ln168_11_fu_806_p1 = reg_290;
assign bitcast_ln168_12_fu_726_p1 = reg_263;
assign bitcast_ln168_13_fu_811_p1 = reg_294;
assign bitcast_ln168_14_fu_731_p1 = weights2_load_7_reg_1042;
assign bitcast_ln168_15_fu_816_p1 = div131_7_reg_1178;
assign bitcast_ln168_16_fu_735_p1 = reg_272;
assign bitcast_ln168_17_fu_820_p1 = div131_8_reg_1183;
assign bitcast_ln168_18_fu_740_p1 = weights2_load_9_reg_1064;
assign bitcast_ln168_19_fu_824_p1 = div131_9_reg_1188;
assign bitcast_ln168_1_fu_781_p1 = reg_282;
assign bitcast_ln168_20_fu_744_p1 = reg_267;
assign bitcast_ln168_21_fu_828_p1 = div131_s_reg_1193;
assign bitcast_ln168_22_fu_749_p1 = weights2_load_11_reg_1086;
assign bitcast_ln168_23_fu_832_p1 = div131_10_reg_1198;
assign bitcast_ln168_24_fu_753_p1 = reg_277;
assign bitcast_ln168_25_fu_836_p1 = reg_282;
assign bitcast_ln168_26_fu_758_p1 = weights2_load_13_reg_1107;
assign bitcast_ln168_27_fu_841_p1 = reg_286;
assign bitcast_ln168_28_fu_772_p1 = reg_263;
assign bitcast_ln168_29_fu_846_p1 = reg_290;
assign bitcast_ln168_2_fu_554_p1 = reg_267;
assign bitcast_ln168_30_fu_777_p1 = weights2_load_15_reg_1128;
assign bitcast_ln168_31_fu_851_p1 = reg_294;
assign bitcast_ln168_3_fu_786_p1 = reg_282;
assign bitcast_ln168_4_fu_586_p1 = reg_263;
assign bitcast_ln168_5_fu_791_p1 = reg_282;
assign bitcast_ln168_6_fu_621_p1 = reg_272;
assign bitcast_ln168_7_fu_796_p1 = reg_282;
assign bitcast_ln168_8_fu_659_p1 = reg_267;
assign bitcast_ln168_9_fu_801_p1 = reg_286;
assign bitcast_ln168_fu_519_p1 = reg_263;
assign empty_fu_367_p1 = select_ln166_fu_361_p3[5:0];
assign icmp_ln166_fu_316_p2 = ((ap_sig_allocacmp_indvar_flatten20_load == 9'd256) ? 1'b1 : 1'b0);
assign select_ln121_fu_353_p3 = ((tmp_fu_345_p3[0:0] == 1'b1) ? 7'd0 : j_fu_104);
assign select_ln166_fu_361_p3 = ((tmp_fu_345_p3[0:0] == 1'b1) ? add_ln166_1_reg_891 : i_6_load_reg_886);
assign tmp_27_fu_394_p4 = {{select_ln121_fu_353_p3[5:1]}};
assign tmp_fu_345_p3 = j_fu_104[32'd6];
assign tmp_s_fu_371_p3 = {{empty_fu_367_p1}, {6'd0}};
assign trunc_ln168_1_fu_443_p1 = select_ln121_fu_353_p3[1:0];
assign trunc_ln168_2_fu_465_p1 = select_ln121_fu_353_p3[2:0];
assign trunc_ln168_fu_429_p1 = select_ln121_fu_353_p3[0:0];
assign weights2_address0 = weights2_address0_local;
assign weights2_address1 = weights2_address1_local;
assign weights2_ce0 = weights2_ce0_local;
assign weights2_ce1 = weights2_ce1_local;
assign weights2_d0 = weights2_d0_local;
assign weights2_d1 = weights2_d1_local;
assign weights2_we0 = weights2_we0_local;
assign weights2_we1 = weights2_we1_local;
assign zext_ln167_fu_379_p1 = select_ln121_fu_353_p3;
assign zext_ln168_10_fu_638_p1 = add_ln168_s_fu_626_p7;
assign zext_ln168_11_fu_654_p1 = add_ln168_10_fu_643_p6;
assign zext_ln168_12_fu_673_p1 = add_ln168_11_fu_664_p5;
assign zext_ln168_13_fu_689_p1 = add_ln168_12_fu_678_p6;
assign zext_ln168_14_fu_708_p1 = add_ln168_13_fu_699_p5;
assign zext_ln168_15_fu_721_p1 = add_ln168_14_fu_713_p4;
assign zext_ln168_1_fu_414_p1 = add_ln168_1_fu_404_p4;
assign zext_ln168_2_fu_501_p1 = add_ln168_2_fu_492_p5;
assign zext_ln168_3_fu_514_p1 = add_ln168_3_fu_506_p4;
assign zext_ln168_4_fu_533_p1 = add_ln168_4_fu_524_p5;
assign zext_ln168_5_fu_549_p1 = add_ln168_5_fu_538_p6;
assign zext_ln168_6_fu_568_p1 = add_ln168_6_fu_559_p5;
assign zext_ln168_7_fu_581_p1 = add_ln168_7_fu_573_p4;
assign zext_ln168_8_fu_600_p1 = add_ln168_8_fu_591_p5;
assign zext_ln168_9_fu_616_p1 = add_ln168_9_fu_605_p6;
assign zext_ln168_fu_389_p1 = add_ln168_fu_383_p2;
always @ (posedge ap_clk) begin
    weights2_addr_1_reg_924[0] <= 1'b1;
    weights2_addr_1_reg_924_pp0_iter1_reg[0] <= 1'b1;
    weights2_addr_1_reg_924_pp0_iter2_reg[0] <= 1'b1;
    weights2_addr_1_reg_924_pp0_iter3_reg[0] <= 1'b1;
    weights2_addr_2_reg_992[1] <= 1'b1;
    weights2_addr_2_reg_992_pp0_iter1_reg[1] <= 1'b1;
    weights2_addr_2_reg_992_pp0_iter2_reg[1] <= 1'b1;
    weights2_addr_2_reg_992_pp0_iter3_reg[1] <= 1'b1;
    weights2_addr_3_reg_997[1:0] <= 2'b11;
    weights2_addr_3_reg_997_pp0_iter1_reg[1:0] <= 2'b11;
    weights2_addr_3_reg_997_pp0_iter2_reg[1:0] <= 2'b11;
    weights2_addr_3_reg_997_pp0_iter3_reg[1:0] <= 2'b11;
    weights2_addr_3_reg_997_pp0_iter4_reg[1:0] <= 2'b11;
    weights2_addr_4_reg_1008[2] <= 1'b1;
    weights2_addr_4_reg_1008_pp0_iter1_reg[2] <= 1'b1;
    weights2_addr_4_reg_1008_pp0_iter2_reg[2] <= 1'b1;
    weights2_addr_4_reg_1008_pp0_iter3_reg[2] <= 1'b1;
    weights2_addr_4_reg_1008_pp0_iter4_reg[2] <= 1'b1;
    weights2_addr_5_reg_1014[0] <= 1'b1;
    weights2_addr_5_reg_1014[2] <= 1'b1;
    weights2_addr_5_reg_1014_pp0_iter1_reg[0] <= 1'b1;
    weights2_addr_5_reg_1014_pp0_iter1_reg[2] <= 1'b1;
    weights2_addr_5_reg_1014_pp0_iter2_reg[0] <= 1'b1;
    weights2_addr_5_reg_1014_pp0_iter2_reg[2] <= 1'b1;
    weights2_addr_5_reg_1014_pp0_iter3_reg[0] <= 1'b1;
    weights2_addr_5_reg_1014_pp0_iter3_reg[2] <= 1'b1;
    weights2_addr_5_reg_1014_pp0_iter4_reg[0] <= 1'b1;
    weights2_addr_5_reg_1014_pp0_iter4_reg[2] <= 1'b1;
    weights2_addr_6_reg_1025[2:1] <= 2'b11;
    weights2_addr_6_reg_1025_pp0_iter1_reg[2:1] <= 2'b11;
    weights2_addr_6_reg_1025_pp0_iter2_reg[2:1] <= 2'b11;
    weights2_addr_6_reg_1025_pp0_iter3_reg[2:1] <= 2'b11;
    weights2_addr_6_reg_1025_pp0_iter4_reg[2:1] <= 2'b11;
    weights2_addr_7_reg_1031[2:0] <= 3'b111;
    weights2_addr_7_reg_1031_pp0_iter1_reg[2:0] <= 3'b111;
    weights2_addr_7_reg_1031_pp0_iter2_reg[2:0] <= 3'b111;
    weights2_addr_7_reg_1031_pp0_iter3_reg[2:0] <= 3'b111;
    weights2_addr_7_reg_1031_pp0_iter4_reg[2:0] <= 3'b111;
    weights2_addr_8_reg_1047[3] <= 1'b1;
    weights2_addr_8_reg_1047_pp0_iter1_reg[3] <= 1'b1;
    weights2_addr_8_reg_1047_pp0_iter2_reg[3] <= 1'b1;
    weights2_addr_8_reg_1047_pp0_iter3_reg[3] <= 1'b1;
    weights2_addr_8_reg_1047_pp0_iter4_reg[3] <= 1'b1;
    weights2_addr_9_reg_1053[0] <= 1'b1;
    weights2_addr_9_reg_1053[3] <= 1'b1;
    weights2_addr_9_reg_1053_pp0_iter1_reg[0] <= 1'b1;
    weights2_addr_9_reg_1053_pp0_iter1_reg[3] <= 1'b1;
    weights2_addr_9_reg_1053_pp0_iter2_reg[0] <= 1'b1;
    weights2_addr_9_reg_1053_pp0_iter2_reg[3] <= 1'b1;
    weights2_addr_9_reg_1053_pp0_iter3_reg[0] <= 1'b1;
    weights2_addr_9_reg_1053_pp0_iter3_reg[3] <= 1'b1;
    weights2_addr_9_reg_1053_pp0_iter4_reg[0] <= 1'b1;
    weights2_addr_9_reg_1053_pp0_iter4_reg[3] <= 1'b1;
    weights2_addr_10_reg_1069[1] <= 1'b1;
    weights2_addr_10_reg_1069[3] <= 1'b1;
    weights2_addr_10_reg_1069_pp0_iter1_reg[1] <= 1'b1;
    weights2_addr_10_reg_1069_pp0_iter1_reg[3] <= 1'b1;
    weights2_addr_10_reg_1069_pp0_iter2_reg[1] <= 1'b1;
    weights2_addr_10_reg_1069_pp0_iter2_reg[3] <= 1'b1;
    weights2_addr_10_reg_1069_pp0_iter3_reg[1] <= 1'b1;
    weights2_addr_10_reg_1069_pp0_iter3_reg[3] <= 1'b1;
    weights2_addr_10_reg_1069_pp0_iter4_reg[1] <= 1'b1;
    weights2_addr_10_reg_1069_pp0_iter4_reg[3] <= 1'b1;
    weights2_addr_11_reg_1075[1:0] <= 2'b11;
    weights2_addr_11_reg_1075[3] <= 1'b1;
    weights2_addr_11_reg_1075_pp0_iter1_reg[1:0] <= 2'b11;
    weights2_addr_11_reg_1075_pp0_iter1_reg[3] <= 1'b1;
    weights2_addr_11_reg_1075_pp0_iter2_reg[1:0] <= 2'b11;
    weights2_addr_11_reg_1075_pp0_iter2_reg[3] <= 1'b1;
    weights2_addr_11_reg_1075_pp0_iter3_reg[1:0] <= 2'b11;
    weights2_addr_11_reg_1075_pp0_iter3_reg[3] <= 1'b1;
    weights2_addr_11_reg_1075_pp0_iter4_reg[1:0] <= 2'b11;
    weights2_addr_11_reg_1075_pp0_iter4_reg[3] <= 1'b1;
    weights2_addr_12_reg_1091[3:2] <= 2'b11;
    weights2_addr_12_reg_1091_pp0_iter1_reg[3:2] <= 2'b11;
    weights2_addr_12_reg_1091_pp0_iter2_reg[3:2] <= 2'b11;
    weights2_addr_12_reg_1091_pp0_iter3_reg[3:2] <= 2'b11;
    weights2_addr_12_reg_1091_pp0_iter4_reg[3:2] <= 2'b11;
    weights2_addr_13_reg_1097[0] <= 1'b1;
    weights2_addr_13_reg_1097[3:2] <= 2'b11;
    weights2_addr_13_reg_1097_pp0_iter1_reg[0] <= 1'b1;
    weights2_addr_13_reg_1097_pp0_iter1_reg[3:2] <= 2'b11;
    weights2_addr_13_reg_1097_pp0_iter2_reg[0] <= 1'b1;
    weights2_addr_13_reg_1097_pp0_iter2_reg[3:2] <= 2'b11;
    weights2_addr_13_reg_1097_pp0_iter3_reg[0] <= 1'b1;
    weights2_addr_13_reg_1097_pp0_iter3_reg[3:2] <= 2'b11;
    weights2_addr_13_reg_1097_pp0_iter4_reg[0] <= 1'b1;
    weights2_addr_13_reg_1097_pp0_iter4_reg[3:2] <= 2'b11;
    weights2_addr_14_reg_1112[3:1] <= 3'b111;
    weights2_addr_14_reg_1112_pp0_iter1_reg[3:1] <= 3'b111;
    weights2_addr_14_reg_1112_pp0_iter2_reg[3:1] <= 3'b111;
    weights2_addr_14_reg_1112_pp0_iter3_reg[3:1] <= 3'b111;
    weights2_addr_14_reg_1112_pp0_iter4_reg[3:1] <= 3'b111;
    weights2_addr_15_reg_1118[3:0] <= 4'b1111;
    weights2_addr_15_reg_1118_pp0_iter1_reg[3:0] <= 4'b1111;
    weights2_addr_15_reg_1118_pp0_iter2_reg[3:0] <= 4'b1111;
    weights2_addr_15_reg_1118_pp0_iter3_reg[3:0] <= 4'b1111;
    weights2_addr_15_reg_1118_pp0_iter4_reg[3:0] <= 4'b1111;
end
endmodule 