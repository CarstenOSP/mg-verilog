module viterbi_viterbi_Pipeline_L_end (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p,llike_address0,llike_ce0,llike_q0,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,llike_4_address0,llike_4_ce0,llike_4_q0,llike_5_address0,llike_5_ce0,llike_5_q0,llike_6_address0,llike_6_ce0,llike_6_q0,llike_7_address0,llike_7_ce0,llike_7_q0,min_s_4_out,min_s_4_out_ap_vld,grp_fu_852_p_din0,grp_fu_852_p_din1,grp_fu_852_p_opcode,grp_fu_852_p_dout0,grp_fu_852_p_ce); 
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
input  [63:0] min_p;
output  [10:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [10:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [10:0] llike_2_address0;
output   llike_2_ce0;
input  [63:0] llike_2_q0;
output  [10:0] llike_3_address0;
output   llike_3_ce0;
input  [63:0] llike_3_q0;
output  [10:0] llike_4_address0;
output   llike_4_ce0;
input  [63:0] llike_4_q0;
output  [10:0] llike_5_address0;
output   llike_5_ce0;
input  [63:0] llike_5_q0;
output  [10:0] llike_6_address0;
output   llike_6_ce0;
input  [63:0] llike_6_q0;
output  [10:0] llike_7_address0;
output   llike_7_ce0;
input  [63:0] llike_7_q0;
output  [7:0] min_s_4_out;
output   min_s_4_out_ap_vld;
output  [63:0] grp_fu_852_p_din0;
output  [63:0] grp_fu_852_p_din1;
output  [4:0] grp_fu_852_p_opcode;
input  [0:0] grp_fu_852_p_dout0;
output   grp_fu_852_p_ce;
reg ap_idle;
reg min_s_4_out_ap_vld;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] tmp_6_reg_1074;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] s_reg_1012;
wire   [2:0] trunc_ln15_fu_321_p1;
reg   [2:0] trunc_ln15_reg_1020;
wire   [6:0] add_ln40_fu_355_p2;
reg   [6:0] add_ln40_reg_1068;
reg   [6:0] add_ln40_reg_1068_pp0_iter1_reg;
wire   [63:0] p_fu_369_p19;
reg   [63:0] p_reg_1078;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] p_19_fu_408_p19;
reg   [63:0] p_19_reg_1085;
wire   [63:0] p_20_fu_447_p19;
reg   [63:0] p_20_reg_1092;
reg   [63:0] min_p_44_reg_1139;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] p_21_fu_521_p19;
reg   [63:0] p_21_reg_1146;
wire   [0:0] and_ln42_1_fu_636_p2;
reg   [0:0] and_ln42_1_reg_1153;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] min_p_46_fu_642_p3;
reg   [63:0] min_p_46_reg_1159;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [0:0] and_ln42_3_fu_724_p2;
reg   [0:0] and_ln42_3_reg_1166;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] min_p_48_fu_730_p3;
reg   [63:0] min_p_48_reg_1172;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [0:0] and_ln42_5_fu_812_p2;
reg   [0:0] and_ln42_5_reg_1179;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [7:0] min_s_13_fu_856_p3;
reg   [7:0] min_s_13_reg_1185;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] min_p_50_fu_864_p3;
reg   [63:0] min_p_50_reg_1190;
reg   [0:0] tmp_14_reg_1197;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln41_fu_343_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln41_2_fu_505_p1;
wire    ap_block_pp0_stage1;
reg   [63:0] min_p_1_fu_102;
wire   [63:0] min_p_52_fu_961_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage2;
reg   [7:0] min_s_fu_106;
wire   [7:0] min_s_14_fu_974_p3;
wire    ap_block_pp0_stage8;
reg   [5:0] min_s_8_fu_110;
wire   [5:0] add_ln40_1_fu_870_p2;
reg   [5:0] ap_sig_allocacmp_s;
wire    ap_block_pp0_stage8_01001;
reg    llike_ce0_local;
reg   [10:0] llike_address0_local;
reg    llike_1_ce0_local;
reg   [10:0] llike_1_address0_local;
reg    llike_2_ce0_local;
reg   [10:0] llike_2_address0_local;
reg    llike_3_ce0_local;
reg   [10:0] llike_3_address0_local;
reg    llike_4_ce0_local;
reg   [10:0] llike_4_address0_local;
reg    llike_5_ce0_local;
reg   [10:0] llike_5_address0_local;
reg    llike_6_ce0_local;
reg   [10:0] llike_6_address0_local;
reg    llike_7_ce0_local;
reg   [10:0] llike_7_address0_local;
reg   [63:0] grp_fu_295_p0;
reg   [63:0] grp_fu_295_p1;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage6;
wire   [2:0] tmp_s_fu_325_p4;
wire   [10:0] tmp_113_cast_fu_335_p3;
wire   [6:0] zext_ln15_fu_317_p1;
wire   [63:0] p_fu_369_p17;
wire   [63:0] p_19_fu_408_p17;
wire   [63:0] p_20_fu_447_p17;
wire   [3:0] lshr_ln9_1_fu_486_p4;
wire   [10:0] zext_ln41_1_fu_495_p1;
wire   [10:0] add_ln41_fu_499_p2;
wire   [63:0] p_21_fu_521_p17;
wire    ap_block_pp0_stage3;
wire   [63:0] bitcast_ln42_fu_560_p1;
wire   [63:0] bitcast_ln42_1_fu_577_p1;
wire   [10:0] tmp_fu_563_p4;
wire   [51:0] trunc_ln42_fu_573_p1;
wire   [0:0] icmp_ln42_1_fu_600_p2;
wire   [0:0] icmp_ln42_fu_594_p2;
wire   [10:0] tmp_1_fu_580_p4;
wire   [51:0] trunc_ln42_1_fu_590_p1;
wire   [0:0] icmp_ln42_3_fu_618_p2;
wire   [0:0] icmp_ln42_2_fu_612_p2;
wire   [0:0] or_ln42_fu_606_p2;
wire   [0:0] and_ln42_fu_630_p2;
wire   [0:0] or_ln42_1_fu_624_p2;
wire    ap_block_pp0_stage5;
wire   [63:0] bitcast_ln42_2_fu_648_p1;
wire   [63:0] bitcast_ln42_3_fu_665_p1;
wire   [10:0] tmp_3_fu_651_p4;
wire   [51:0] trunc_ln42_2_fu_661_p1;
wire   [0:0] icmp_ln42_5_fu_688_p2;
wire   [0:0] icmp_ln42_4_fu_682_p2;
wire   [10:0] tmp_7_fu_668_p4;
wire   [51:0] trunc_ln42_3_fu_678_p1;
wire   [0:0] icmp_ln42_7_fu_706_p2;
wire   [0:0] icmp_ln42_6_fu_700_p2;
wire   [0:0] or_ln42_3_fu_712_p2;
wire   [0:0] or_ln42_2_fu_694_p2;
wire   [0:0] and_ln42_2_fu_718_p2;
wire    ap_block_pp0_stage7;
wire   [63:0] bitcast_ln42_4_fu_736_p1;
wire   [63:0] bitcast_ln42_5_fu_753_p1;
wire   [10:0] tmp_9_fu_739_p4;
wire   [51:0] trunc_ln42_4_fu_749_p1;
wire   [0:0] icmp_ln42_9_fu_776_p2;
wire   [0:0] icmp_ln42_8_fu_770_p2;
wire   [10:0] tmp_10_fu_756_p4;
wire   [51:0] trunc_ln42_5_fu_766_p1;
wire   [0:0] icmp_ln42_11_fu_794_p2;
wire   [0:0] icmp_ln42_10_fu_788_p2;
wire   [0:0] or_ln42_5_fu_800_p2;
wire   [0:0] or_ln42_4_fu_782_p2;
wire   [0:0] and_ln42_4_fu_806_p2;
wire   [7:0] zext_ln42_fu_821_p1;
wire   [5:0] add_ln42_fu_831_p2;
wire   [7:0] zext_ln42_1_fu_836_p1;
wire   [7:0] min_s_11_fu_824_p3;
wire   [5:0] add_ln42_1_fu_847_p2;
wire   [7:0] zext_ln42_2_fu_852_p1;
wire   [7:0] min_s_12_fu_840_p3;
wire   [63:0] bitcast_ln42_6_fu_880_p1;
wire   [63:0] bitcast_ln42_7_fu_897_p1;
wire   [10:0] tmp_12_fu_883_p4;
wire   [51:0] trunc_ln42_6_fu_893_p1;
wire   [0:0] icmp_ln42_13_fu_920_p2;
wire   [0:0] icmp_ln42_12_fu_914_p2;
wire   [10:0] tmp_13_fu_900_p4;
wire   [51:0] trunc_ln42_7_fu_910_p1;
wire   [0:0] icmp_ln42_15_fu_938_p2;
wire   [0:0] icmp_ln42_14_fu_932_p2;
wire   [0:0] or_ln42_7_fu_944_p2;
wire   [0:0] or_ln42_6_fu_926_p2;
wire   [0:0] and_ln42_6_fu_950_p2;
wire   [0:0] and_ln42_7_fu_956_p2;
wire   [5:0] trunc_ln42_8_fu_967_p1;
wire   [7:0] zext_ln42_3_fu_970_p1;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage8_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [8:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] p_fu_369_p1;
wire   [2:0] p_fu_369_p3;
wire   [2:0] p_fu_369_p5;
wire   [2:0] p_fu_369_p7;
wire  signed [2:0] p_fu_369_p9;
wire  signed [2:0] p_fu_369_p11;
wire  signed [2:0] p_fu_369_p13;
wire  signed [2:0] p_fu_369_p15;
wire  signed [2:0] p_19_fu_408_p1;
wire   [2:0] p_19_fu_408_p3;
wire   [2:0] p_19_fu_408_p5;
wire   [2:0] p_19_fu_408_p7;
wire   [2:0] p_19_fu_408_p9;
wire  signed [2:0] p_19_fu_408_p11;
wire  signed [2:0] p_19_fu_408_p13;
wire  signed [2:0] p_19_fu_408_p15;
wire  signed [2:0] p_20_fu_447_p1;
wire  signed [2:0] p_20_fu_447_p3;
wire   [2:0] p_20_fu_447_p5;
wire   [2:0] p_20_fu_447_p7;
wire   [2:0] p_20_fu_447_p9;
wire   [2:0] p_20_fu_447_p11;
wire  signed [2:0] p_20_fu_447_p13;
wire  signed [2:0] p_20_fu_447_p15;
wire  signed [2:0] p_21_fu_521_p1;
wire  signed [2:0] p_21_fu_521_p3;
wire  signed [2:0] p_21_fu_521_p5;
wire   [2:0] p_21_fu_521_p7;
wire   [2:0] p_21_fu_521_p9;
wire   [2:0] p_21_fu_521_p11;
wire   [2:0] p_21_fu_521_p13;
wire  signed [2:0] p_21_fu_521_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_1_fu_102 = 64'd0;
#0 min_s_fu_106 = 8'd0;
#0 min_s_8_fu_110 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U34(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.def(p_fu_369_p17),.sel(trunc_ln15_reg_1020),.dout(p_fu_369_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.CASE7( 3'h6 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U35(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.def(p_19_fu_408_p17),.sel(trunc_ln15_reg_1020),.dout(p_19_fu_408_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 64 ),.CASE1( 3'h7 ),.din1_WIDTH( 64 ),.CASE2( 3'h0 ),.din2_WIDTH( 64 ),.CASE3( 3'h1 ),.din3_WIDTH( 64 ),.CASE4( 3'h2 ),.din4_WIDTH( 64 ),.CASE5( 3'h3 ),.din5_WIDTH( 64 ),.CASE6( 3'h4 ),.din6_WIDTH( 64 ),.CASE7( 3'h5 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U36(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.def(p_20_fu_447_p17),.sel(trunc_ln15_reg_1020),.dout(p_20_fu_447_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h5 ),.din0_WIDTH( 64 ),.CASE1( 3'h6 ),.din1_WIDTH( 64 ),.CASE2( 3'h7 ),.din2_WIDTH( 64 ),.CASE3( 3'h0 ),.din3_WIDTH( 64 ),.CASE4( 3'h1 ),.din4_WIDTH( 64 ),.CASE5( 3'h2 ),.din5_WIDTH( 64 ),.CASE6( 3'h3 ),.din6_WIDTH( 64 ),.CASE7( 3'h4 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U37(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.def(p_21_fu_521_p17),.sel(trunc_ln15_reg_1020),.dout(p_21_fu_521_p19));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
        if (((1'b1 == ap_condition_exit_pp0_iter0_stage8) | ((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_1_fu_102 <= min_p;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        min_p_1_fu_102 <= min_p_52_fu_961_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_8_fu_110 <= 6'd1;
    end else if (((tmp_6_reg_1074 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        min_s_8_fu_110 <= add_ln40_1_fu_870_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_fu_106 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        min_s_fu_106 <= min_s_14_fu_974_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln40_reg_1068 <= add_ln40_fu_355_p2;
        add_ln40_reg_1068_pp0_iter1_reg <= add_ln40_reg_1068;
        s_reg_1012 <= ap_sig_allocacmp_s;
        tmp_6_reg_1074 <= add_ln40_fu_355_p2[32'd6];
        trunc_ln15_reg_1020 <= trunc_ln15_fu_321_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        and_ln42_1_reg_1153 <= and_ln42_1_fu_636_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        and_ln42_3_reg_1166 <= and_ln42_3_fu_724_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        and_ln42_5_reg_1179 <= and_ln42_5_fu_812_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        min_p_44_reg_1139 <= min_p_1_fu_102;
        p_21_reg_1146 <= p_21_fu_521_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        min_p_46_reg_1159 <= min_p_46_fu_642_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        min_p_48_reg_1172 <= min_p_48_fu_730_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        min_p_50_reg_1190 <= min_p_50_fu_864_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        min_s_13_reg_1185 <= min_s_13_fu_856_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        p_19_reg_1085 <= p_19_fu_408_p19;
        p_20_reg_1092 <= p_20_fu_447_p19;
        p_reg_1078 <= p_fu_369_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_14_reg_1197 <= grp_fu_852_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_6_reg_1074 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
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
        ap_sig_allocacmp_s = min_s_8_fu_110;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_295_p0 = p_21_reg_1146;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_295_p0 = p_20_reg_1092;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_295_p0 = p_19_reg_1085;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_295_p0 = p_reg_1078;
        end else begin
            grp_fu_295_p0 = 'bx;
        end
    end else begin
        grp_fu_295_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_295_p1 = min_p_50_fu_864_p3;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_295_p1 = min_p_48_fu_730_p3;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_295_p1 = min_p_46_fu_642_p3;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_295_p1 = min_p_1_fu_102;
        end else begin
            grp_fu_295_p1 = 'bx;
        end
    end else begin
        grp_fu_295_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address0_local = zext_ln41_2_fu_505_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln41_fu_343_p1;
        end else begin
            llike_1_address0_local = 'bx;
        end
    end else begin
        llike_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_2_address0_local = zext_ln41_2_fu_505_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_2_address0_local = zext_ln41_fu_343_p1;
        end else begin
            llike_2_address0_local = 'bx;
        end
    end else begin
        llike_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_3_address0_local = zext_ln41_2_fu_505_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_3_address0_local = zext_ln41_fu_343_p1;
        end else begin
            llike_3_address0_local = 'bx;
        end
    end else begin
        llike_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_4_address0_local = zext_ln41_2_fu_505_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_4_address0_local = zext_ln41_fu_343_p1;
        end else begin
            llike_4_address0_local = 'bx;
        end
    end else begin
        llike_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_4_ce0_local = 1'b1;
    end else begin
        llike_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_5_address0_local = zext_ln41_2_fu_505_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_5_address0_local = zext_ln41_fu_343_p1;
        end else begin
            llike_5_address0_local = 'bx;
        end
    end else begin
        llike_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_5_ce0_local = 1'b1;
    end else begin
        llike_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_6_address0_local = zext_ln41_2_fu_505_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_6_address0_local = zext_ln41_fu_343_p1;
        end else begin
            llike_6_address0_local = 'bx;
        end
    end else begin
        llike_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_6_ce0_local = 1'b1;
    end else begin
        llike_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_7_address0_local = zext_ln41_2_fu_505_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_7_address0_local = zext_ln41_fu_343_p1;
        end else begin
            llike_7_address0_local = 'bx;
        end
    end else begin
        llike_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_7_ce0_local = 1'b1;
    end else begin
        llike_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln41_2_fu_505_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln41_fu_343_p1;
        end else begin
            llike_address0_local = 'bx;
        end
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_6_reg_1074 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        min_s_4_out_ap_vld = 1'b1;
    end else begin
        min_s_4_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln40_1_fu_870_p2 = (s_reg_1012 + 6'd4);
assign add_ln40_fu_355_p2 = (zext_ln15_fu_317_p1 + 7'd3);
assign add_ln41_fu_499_p2 = ($signed(zext_ln41_1_fu_495_p1) + $signed(11'd1112));
assign add_ln42_1_fu_847_p2 = (s_reg_1012 + 6'd2);
assign add_ln42_fu_831_p2 = (s_reg_1012 + 6'd1);
assign and_ln42_1_fu_636_p2 = (or_ln42_1_fu_624_p2 & and_ln42_fu_630_p2);
assign and_ln42_2_fu_718_p2 = (or_ln42_3_fu_712_p2 & or_ln42_2_fu_694_p2);
assign and_ln42_3_fu_724_p2 = (grp_fu_852_p_dout0 & and_ln42_2_fu_718_p2);
assign and_ln42_4_fu_806_p2 = (or_ln42_5_fu_800_p2 & or_ln42_4_fu_782_p2);
assign and_ln42_5_fu_812_p2 = (grp_fu_852_p_dout0 & and_ln42_4_fu_806_p2);
assign and_ln42_6_fu_950_p2 = (or_ln42_7_fu_944_p2 & or_ln42_6_fu_926_p2);
assign and_ln42_7_fu_956_p2 = (tmp_14_reg_1197 & and_ln42_6_fu_950_p2);
assign and_ln42_fu_630_p2 = (or_ln42_fu_606_p2 & grp_fu_852_p_dout0);
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
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage8;
assign ap_ready = ap_ready_sig;
assign bitcast_ln42_1_fu_577_p1 = min_p_44_reg_1139;
assign bitcast_ln42_2_fu_648_p1 = p_19_reg_1085;
assign bitcast_ln42_3_fu_665_p1 = min_p_46_reg_1159;
assign bitcast_ln42_4_fu_736_p1 = p_20_reg_1092;
assign bitcast_ln42_5_fu_753_p1 = min_p_48_reg_1172;
assign bitcast_ln42_6_fu_880_p1 = p_21_reg_1146;
assign bitcast_ln42_7_fu_897_p1 = min_p_50_reg_1190;
assign bitcast_ln42_fu_560_p1 = p_reg_1078;
assign grp_fu_852_p_ce = 1'b1;
assign grp_fu_852_p_din0 = grp_fu_295_p0;
assign grp_fu_852_p_din1 = grp_fu_295_p1;
assign grp_fu_852_p_opcode = 5'd4;
assign icmp_ln42_10_fu_788_p2 = ((tmp_10_fu_756_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_11_fu_794_p2 = ((trunc_ln42_5_fu_766_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_12_fu_914_p2 = ((tmp_12_fu_883_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_13_fu_920_p2 = ((trunc_ln42_6_fu_893_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_14_fu_932_p2 = ((tmp_13_fu_900_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_15_fu_938_p2 = ((trunc_ln42_7_fu_910_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_1_fu_600_p2 = ((trunc_ln42_fu_573_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_2_fu_612_p2 = ((tmp_1_fu_580_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_3_fu_618_p2 = ((trunc_ln42_1_fu_590_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_4_fu_682_p2 = ((tmp_3_fu_651_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_5_fu_688_p2 = ((trunc_ln42_2_fu_661_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_6_fu_700_p2 = ((tmp_7_fu_668_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_7_fu_706_p2 = ((trunc_ln42_3_fu_678_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_8_fu_770_p2 = ((tmp_9_fu_739_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_9_fu_776_p2 = ((trunc_ln42_4_fu_749_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_fu_594_p2 = ((tmp_fu_563_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = llike_1_address0_local;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_2_address0 = llike_2_address0_local;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_3_address0 = llike_3_address0_local;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_4_address0 = llike_4_address0_local;
assign llike_4_ce0 = llike_4_ce0_local;
assign llike_5_address0 = llike_5_address0_local;
assign llike_5_ce0 = llike_5_ce0_local;
assign llike_6_address0 = llike_6_address0_local;
assign llike_6_ce0 = llike_6_ce0_local;
assign llike_7_address0 = llike_7_address0_local;
assign llike_7_ce0 = llike_7_ce0_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln9_1_fu_486_p4 = {{add_ln40_reg_1068[6:3]}};
assign min_p_46_fu_642_p3 = ((and_ln42_1_reg_1153[0:0] == 1'b1) ? p_reg_1078 : min_p_44_reg_1139);
assign min_p_48_fu_730_p3 = ((and_ln42_3_reg_1166[0:0] == 1'b1) ? p_19_reg_1085 : min_p_46_reg_1159);
assign min_p_50_fu_864_p3 = ((and_ln42_5_reg_1179[0:0] == 1'b1) ? p_20_reg_1092 : min_p_48_reg_1172);
assign min_p_52_fu_961_p3 = ((and_ln42_7_fu_956_p2[0:0] == 1'b1) ? p_21_reg_1146 : min_p_50_reg_1190);
assign min_s_11_fu_824_p3 = ((and_ln42_1_reg_1153[0:0] == 1'b1) ? zext_ln42_fu_821_p1 : min_s_fu_106);
assign min_s_12_fu_840_p3 = ((and_ln42_3_reg_1166[0:0] == 1'b1) ? zext_ln42_1_fu_836_p1 : min_s_11_fu_824_p3);
assign min_s_13_fu_856_p3 = ((and_ln42_5_reg_1179[0:0] == 1'b1) ? zext_ln42_2_fu_852_p1 : min_s_12_fu_840_p3);
assign min_s_14_fu_974_p3 = ((and_ln42_7_fu_956_p2[0:0] == 1'b1) ? zext_ln42_3_fu_970_p1 : min_s_13_reg_1185);
assign min_s_4_out = ((and_ln42_5_reg_1179[0:0] == 1'b1) ? zext_ln42_2_fu_852_p1 : min_s_12_fu_840_p3);
assign or_ln42_1_fu_624_p2 = (icmp_ln42_3_fu_618_p2 | icmp_ln42_2_fu_612_p2);
assign or_ln42_2_fu_694_p2 = (icmp_ln42_5_fu_688_p2 | icmp_ln42_4_fu_682_p2);
assign or_ln42_3_fu_712_p2 = (icmp_ln42_7_fu_706_p2 | icmp_ln42_6_fu_700_p2);
assign or_ln42_4_fu_782_p2 = (icmp_ln42_9_fu_776_p2 | icmp_ln42_8_fu_770_p2);
assign or_ln42_5_fu_800_p2 = (icmp_ln42_11_fu_794_p2 | icmp_ln42_10_fu_788_p2);
assign or_ln42_6_fu_926_p2 = (icmp_ln42_13_fu_920_p2 | icmp_ln42_12_fu_914_p2);
assign or_ln42_7_fu_944_p2 = (icmp_ln42_15_fu_938_p2 | icmp_ln42_14_fu_932_p2);
assign or_ln42_fu_606_p2 = (icmp_ln42_fu_594_p2 | icmp_ln42_1_fu_600_p2);
assign p_19_fu_408_p17 = 'bx;
assign p_20_fu_447_p17 = 'bx;
assign p_21_fu_521_p17 = 'bx;
assign p_fu_369_p17 = 'bx;
assign tmp_10_fu_756_p4 = {{bitcast_ln42_5_fu_753_p1[62:52]}};
assign tmp_113_cast_fu_335_p3 = {{8'd139}, {tmp_s_fu_325_p4}};
assign tmp_12_fu_883_p4 = {{bitcast_ln42_6_fu_880_p1[62:52]}};
assign tmp_13_fu_900_p4 = {{bitcast_ln42_7_fu_897_p1[62:52]}};
assign tmp_1_fu_580_p4 = {{bitcast_ln42_1_fu_577_p1[62:52]}};
assign tmp_3_fu_651_p4 = {{bitcast_ln42_2_fu_648_p1[62:52]}};
assign tmp_7_fu_668_p4 = {{bitcast_ln42_3_fu_665_p1[62:52]}};
assign tmp_9_fu_739_p4 = {{bitcast_ln42_4_fu_736_p1[62:52]}};
assign tmp_fu_563_p4 = {{bitcast_ln42_fu_560_p1[62:52]}};
assign tmp_s_fu_325_p4 = {{ap_sig_allocacmp_s[5:3]}};
assign trunc_ln15_fu_321_p1 = ap_sig_allocacmp_s[2:0];
assign trunc_ln42_1_fu_590_p1 = bitcast_ln42_1_fu_577_p1[51:0];
assign trunc_ln42_2_fu_661_p1 = bitcast_ln42_2_fu_648_p1[51:0];
assign trunc_ln42_3_fu_678_p1 = bitcast_ln42_3_fu_665_p1[51:0];
assign trunc_ln42_4_fu_749_p1 = bitcast_ln42_4_fu_736_p1[51:0];
assign trunc_ln42_5_fu_766_p1 = bitcast_ln42_5_fu_753_p1[51:0];
assign trunc_ln42_6_fu_893_p1 = bitcast_ln42_6_fu_880_p1[51:0];
assign trunc_ln42_7_fu_910_p1 = bitcast_ln42_7_fu_897_p1[51:0];
assign trunc_ln42_8_fu_967_p1 = add_ln40_reg_1068_pp0_iter1_reg[5:0];
assign trunc_ln42_fu_573_p1 = bitcast_ln42_fu_560_p1[51:0];
assign zext_ln15_fu_317_p1 = ap_sig_allocacmp_s;
assign zext_ln41_1_fu_495_p1 = lshr_ln9_1_fu_486_p4;
assign zext_ln41_2_fu_505_p1 = add_ln41_fu_499_p2;
assign zext_ln41_fu_343_p1 = tmp_113_cast_fu_335_p3;
assign zext_ln42_1_fu_836_p1 = add_ln42_fu_831_p2;
assign zext_ln42_2_fu_852_p1 = add_ln42_1_fu_847_p2;
assign zext_ln42_3_fu_970_p1 = trunc_ln42_8_fu_967_p1;
assign zext_ln42_fu_821_p1 = s_reg_1012;
endmodule 