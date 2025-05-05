module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_147,t_1,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,zext_ln52_2,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,empty,zext_ln52_3,llike_address0,llike_ce0,llike_q0,min_s_10_out,min_s_10_out_ap_vld,grp_fu_417_p_din0,grp_fu_417_p_din1,grp_fu_417_p_opcode,grp_fu_417_p_dout0,grp_fu_417_p_ce,grp_fu_749_p_din0,grp_fu_749_p_din1,grp_fu_749_p_opcode,grp_fu_749_p_dout0,grp_fu_749_p_ce); 
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
input  [5:0] zext_ln52_2;
output  [9:0] transition_0_address0;
output   transition_0_ce0;
input  [63:0] transition_0_q0;
output  [9:0] transition_0_address1;
output   transition_0_ce1;
input  [63:0] transition_0_q1;
output  [9:0] transition_1_address0;
output   transition_1_ce0;
input  [63:0] transition_1_q0;
output  [9:0] transition_1_address1;
output   transition_1_ce1;
input  [63:0] transition_1_q1;
output  [9:0] transition_2_address0;
output   transition_2_ce0;
input  [63:0] transition_2_q0;
output  [9:0] transition_2_address1;
output   transition_2_ce1;
input  [63:0] transition_2_q1;
output  [9:0] transition_3_address0;
output   transition_3_ce0;
input  [63:0] transition_3_q0;
output  [9:0] transition_3_address1;
output   transition_3_ce1;
input  [63:0] transition_3_q1;
input  [1:0] empty;
input  [11:0] zext_ln52_3;
output  [11:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [7:0] min_s_10_out;
output   min_s_10_out_ap_vld;
output  [63:0] grp_fu_417_p_din0;
output  [63:0] grp_fu_417_p_din1;
output  [1:0] grp_fu_417_p_opcode;
input  [63:0] grp_fu_417_p_dout0;
output   grp_fu_417_p_ce;
output  [63:0] grp_fu_749_p_din0;
output  [63:0] grp_fu_749_p_din1;
output  [4:0] grp_fu_749_p_opcode;
input  [0:0] grp_fu_749_p_dout0;
output   grp_fu_749_p_ce;
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
reg   [0:0] tmp_1_reg_1256;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_387;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [9:0] zext_ln52_2_cast_fu_392_p1;
reg   [9:0] zext_ln52_2_cast_reg_1190;
reg   [5:0] s_reg_1197;
reg   [5:0] s_reg_1197_pp0_iter1_reg;
wire   [5:0] add_ln53_fu_465_p2;
reg   [5:0] add_ln53_reg_1238;
reg   [5:0] add_ln53_reg_1238_pp0_iter1_reg;
wire   [5:0] add_ln53_1_fu_471_p2;
reg   [5:0] add_ln53_1_reg_1244;
reg   [5:0] add_ln53_1_reg_1244_pp0_iter1_reg;
wire   [6:0] add_ln53_2_fu_477_p2;
reg   [6:0] add_ln53_2_reg_1250;
reg   [0:0] tmp_1_reg_1256_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_1260;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_69_fu_507_p11;
reg   [63:0] tmp_69_reg_1265;
reg   [63:0] llike_2_load_reg_1270;
reg   [63:0] llike_3_load_reg_1295;
wire   [63:0] tmp_70_fu_609_p11;
reg   [63:0] tmp_70_reg_1325;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_71_fu_648_p11;
reg   [63:0] tmp_71_reg_1330;
reg   [63:0] llike_load_reg_1335;
wire   [5:0] trunc_ln54_fu_671_p1;
reg   [5:0] trunc_ln54_reg_1340;
reg   [5:0] trunc_ln54_reg_1340_pp0_iter1_reg;
wire   [63:0] tmp_72_fu_711_p11;
reg   [63:0] tmp_72_reg_1365;
reg   [63:0] min_p_127_reg_1370;
reg   [63:0] p_63_reg_1377;
wire   [0:0] and_ln55_1_fu_825_p2;
reg   [0:0] and_ln55_1_reg_1384;
reg   [63:0] p_64_reg_1390;
wire   [63:0] min_p_129_fu_831_p3;
reg   [63:0] min_p_129_reg_1397;
wire   [0:0] and_ln55_3_fu_914_p2;
reg   [0:0] and_ln55_3_reg_1404;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] min_p_131_fu_933_p3;
reg   [63:0] min_p_131_reg_1410;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [7:0] min_s_5_fu_942_p3;
reg   [7:0] min_s_5_reg_1417;
wire   [0:0] and_ln55_5_fu_1025_p2;
reg   [0:0] and_ln55_5_reg_1422;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [7:0] min_s_6_fu_1034_p3;
reg   [7:0] min_s_6_reg_1428;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] min_p_133_fu_1041_p3;
reg   [63:0] min_p_133_reg_1433;
reg   [0:0] tmp_283_reg_1440;
wire    ap_block_pp0_stage8_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage7_subdone;
reg    ap_condition_exit_pp0_iter1_stage7;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln54_4_fu_436_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_457_p1;
wire   [63:0] zext_ln54_1_fu_542_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_2_fu_562_p1;
wire   [63:0] zext_ln54_6_fu_588_p1;
wire   [63:0] zext_ln54_3_fu_687_p1;
wire    ap_block_pp0_stage2;
reg   [63:0] min_p_fu_114;
wire   [63:0] min_p_135_fu_1129_p3;
wire    ap_loop_init;
reg   [7:0] min_s_fu_118;
wire   [7:0] min_s_7_fu_1139_p3;
wire    ap_block_pp0_stage5;
reg   [5:0] min_s_1_fu_122;
wire   [5:0] add_ln53_3_fu_734_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage7_01001;
reg    llike_1_ce0_local;
reg    transition_0_ce0_local;
reg   [9:0] transition_0_address0_local;
reg    transition_0_ce1_local;
reg   [9:0] transition_0_address1_local;
reg    transition_1_ce0_local;
reg   [9:0] transition_1_address0_local;
reg    transition_1_ce1_local;
reg   [9:0] transition_1_address1_local;
reg    transition_2_ce0_local;
reg   [9:0] transition_2_address0_local;
reg    transition_2_ce1_local;
reg   [9:0] transition_2_address1_local;
reg    transition_3_ce0_local;
reg   [9:0] transition_3_address0_local;
reg    transition_3_ce1_local;
reg   [9:0] transition_3_address1_local;
reg    llike_2_ce0_local;
reg    llike_3_ce0_local;
reg    llike_ce0_local;
reg   [63:0] grp_fu_379_p0;
reg   [63:0] grp_fu_379_p1;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
reg   [63:0] grp_fu_383_p0;
reg   [63:0] grp_fu_383_p1;
wire    ap_block_pp0_stage7;
wire   [3:0] lshr_ln8_1_fu_418_p4;
wire   [11:0] tmp_s_fu_428_p3;
wire   [9:0] shl_ln2_fu_443_p3;
wire   [9:0] add_ln54_fu_451_p2;
wire   [6:0] zext_ln17_fu_414_p1;
wire   [63:0] tmp_69_fu_507_p2;
wire   [63:0] tmp_69_fu_507_p4;
wire   [63:0] tmp_69_fu_507_p6;
wire   [63:0] tmp_69_fu_507_p8;
wire   [63:0] tmp_69_fu_507_p9;
wire   [9:0] shl_ln54_1_fu_530_p3;
wire   [9:0] add_ln54_1_fu_537_p2;
wire   [9:0] shl_ln54_2_fu_550_p3;
wire   [9:0] add_ln54_2_fu_557_p2;
wire   [4:0] lshr_ln9_2_fu_570_p4;
wire   [11:0] zext_ln54_5_fu_579_p1;
wire   [11:0] add_ln54_4_fu_583_p2;
wire   [63:0] tmp_70_fu_609_p2;
wire   [63:0] tmp_70_fu_609_p4;
wire   [63:0] tmp_70_fu_609_p6;
wire   [63:0] tmp_70_fu_609_p8;
wire   [63:0] tmp_70_fu_609_p9;
wire   [63:0] tmp_71_fu_648_p2;
wire   [63:0] tmp_71_fu_648_p4;
wire   [63:0] tmp_71_fu_648_p6;
wire   [63:0] tmp_71_fu_648_p8;
wire   [63:0] tmp_71_fu_648_p9;
wire   [9:0] shl_ln54_3_fu_674_p3;
wire   [9:0] add_ln54_3_fu_682_p2;
wire   [63:0] tmp_72_fu_711_p2;
wire   [63:0] tmp_72_fu_711_p4;
wire   [63:0] tmp_72_fu_711_p6;
wire   [63:0] tmp_72_fu_711_p8;
wire   [63:0] tmp_72_fu_711_p9;
wire    ap_block_pp0_stage8;
wire   [63:0] bitcast_ln55_fu_748_p1;
wire   [63:0] bitcast_ln55_1_fu_766_p1;
wire   [10:0] tmp_272_fu_752_p4;
wire   [51:0] trunc_ln55_fu_762_p1;
wire   [0:0] icmp_ln55_1_fu_789_p2;
wire   [0:0] icmp_ln55_fu_783_p2;
wire   [10:0] tmp_273_fu_769_p4;
wire   [51:0] trunc_ln55_1_fu_779_p1;
wire   [0:0] icmp_ln55_3_fu_807_p2;
wire   [0:0] icmp_ln55_2_fu_801_p2;
wire   [0:0] or_ln55_fu_795_p2;
wire   [0:0] and_ln55_fu_819_p2;
wire   [0:0] or_ln55_1_fu_813_p2;
wire   [63:0] bitcast_ln55_2_fu_838_p1;
wire   [63:0] bitcast_ln55_3_fu_855_p1;
wire   [10:0] tmp_275_fu_841_p4;
wire   [51:0] trunc_ln55_2_fu_851_p1;
wire   [0:0] icmp_ln55_5_fu_878_p2;
wire   [0:0] icmp_ln55_4_fu_872_p2;
wire   [10:0] tmp_276_fu_858_p4;
wire   [51:0] trunc_ln55_3_fu_868_p1;
wire   [0:0] icmp_ln55_7_fu_896_p2;
wire   [0:0] icmp_ln55_6_fu_890_p2;
wire   [0:0] or_ln55_3_fu_902_p2;
wire   [0:0] or_ln55_2_fu_884_p2;
wire   [0:0] and_ln55_2_fu_908_p2;
wire   [7:0] zext_ln55_fu_923_p1;
wire   [7:0] zext_ln55_1_fu_939_p1;
wire   [7:0] min_s_4_fu_926_p3;
wire    ap_block_pp0_stage6;
wire   [63:0] bitcast_ln55_4_fu_949_p1;
wire   [63:0] bitcast_ln55_5_fu_966_p1;
wire   [10:0] tmp_278_fu_952_p4;
wire   [51:0] trunc_ln55_4_fu_962_p1;
wire   [0:0] icmp_ln55_9_fu_989_p2;
wire   [0:0] icmp_ln55_8_fu_983_p2;
wire   [10:0] tmp_279_fu_969_p4;
wire   [51:0] trunc_ln55_5_fu_979_p1;
wire   [0:0] icmp_ln55_11_fu_1007_p2;
wire   [0:0] icmp_ln55_10_fu_1001_p2;
wire   [0:0] or_ln55_5_fu_1013_p2;
wire   [0:0] or_ln55_4_fu_995_p2;
wire   [0:0] and_ln55_4_fu_1019_p2;
wire   [7:0] zext_ln55_2_fu_1031_p1;
wire   [63:0] bitcast_ln55_6_fu_1047_p1;
wire   [63:0] bitcast_ln55_7_fu_1065_p1;
wire   [10:0] tmp_281_fu_1051_p4;
wire   [51:0] trunc_ln55_6_fu_1061_p1;
wire   [0:0] icmp_ln55_13_fu_1088_p2;
wire   [0:0] icmp_ln55_12_fu_1082_p2;
wire   [10:0] tmp_282_fu_1068_p4;
wire   [51:0] trunc_ln55_7_fu_1078_p1;
wire   [0:0] icmp_ln55_15_fu_1106_p2;
wire   [0:0] icmp_ln55_14_fu_1100_p2;
wire   [0:0] or_ln55_7_fu_1112_p2;
wire   [0:0] or_ln55_6_fu_1094_p2;
wire   [0:0] and_ln55_6_fu_1118_p2;
wire   [0:0] and_ln55_7_fu_1124_p2;
wire   [7:0] zext_ln55_3_fu_1136_p1;
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
wire   [1:0] tmp_69_fu_507_p1;
wire   [1:0] tmp_69_fu_507_p3;
wire  signed [1:0] tmp_69_fu_507_p5;
wire  signed [1:0] tmp_69_fu_507_p7;
wire   [1:0] tmp_70_fu_609_p1;
wire   [1:0] tmp_70_fu_609_p3;
wire  signed [1:0] tmp_70_fu_609_p5;
wire  signed [1:0] tmp_70_fu_609_p7;
wire   [1:0] tmp_71_fu_648_p1;
wire   [1:0] tmp_71_fu_648_p3;
wire  signed [1:0] tmp_71_fu_648_p5;
wire  signed [1:0] tmp_71_fu_648_p7;
wire   [1:0] tmp_72_fu_711_p1;
wire   [1:0] tmp_72_fu_711_p3;
wire  signed [1:0] tmp_72_fu_711_p5;
wire  signed [1:0] tmp_72_fu_711_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_114 = 64'd0;
#0 min_s_fu_118 = 8'd0;
#0 min_s_1_fu_122 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U118(.din0(tmp_69_fu_507_p2),.din1(tmp_69_fu_507_p4),.din2(tmp_69_fu_507_p6),.din3(tmp_69_fu_507_p8),.def(tmp_69_fu_507_p9),.sel(empty),.dout(tmp_69_fu_507_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U119(.din0(tmp_70_fu_609_p2),.din1(tmp_70_fu_609_p4),.din2(tmp_70_fu_609_p6),.din3(tmp_70_fu_609_p8),.def(tmp_70_fu_609_p9),.sel(empty),.dout(tmp_70_fu_609_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U120(.din0(tmp_71_fu_648_p2),.din1(tmp_71_fu_648_p4),.din2(tmp_71_fu_648_p6),.din3(tmp_71_fu_648_p8),.def(tmp_71_fu_648_p9),.sel(empty),.dout(tmp_71_fu_648_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U121(.din0(tmp_72_fu_711_p2),.din1(tmp_72_fu_711_p4),.din2(tmp_72_fu_711_p6),.din3(tmp_72_fu_711_p8),.def(tmp_72_fu_711_p9),.sel(empty),.dout(tmp_72_fu_711_p11));
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
            min_p_fu_114 <= min_p_147;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_p_fu_114 <= min_p_135_fu_1129_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_1_fu_122 <= 6'd1;
    end else if (((tmp_1_reg_1256 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        min_s_1_fu_122 <= add_ln53_3_fu_734_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            min_s_fu_118 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_s_fu_118 <= min_s_7_fu_1139_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_1_reg_1244 <= add_ln53_1_fu_471_p2;
        add_ln53_1_reg_1244_pp0_iter1_reg <= add_ln53_1_reg_1244;
        add_ln53_2_reg_1250 <= add_ln53_2_fu_477_p2;
        add_ln53_reg_1238 <= add_ln53_fu_465_p2;
        add_ln53_reg_1238_pp0_iter1_reg <= add_ln53_reg_1238;
        s_reg_1197 <= ap_sig_allocacmp_s;
        s_reg_1197_pp0_iter1_reg <= s_reg_1197;
        tmp_1_reg_1256 <= add_ln53_2_fu_477_p2[32'd6];
        tmp_1_reg_1256_pp0_iter1_reg <= tmp_1_reg_1256;
        zext_ln52_2_cast_reg_1190[5 : 0] <= zext_ln52_2_cast_fu_392_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        and_ln55_1_reg_1384 <= and_ln55_1_fu_825_p2;
        llike_load_reg_1335 <= llike_q0;
        tmp_70_reg_1325 <= tmp_70_fu_609_p11;
        tmp_71_reg_1330 <= tmp_71_fu_648_p11;
        trunc_ln54_reg_1340 <= trunc_ln54_fu_671_p1;
        trunc_ln54_reg_1340_pp0_iter1_reg <= trunc_ln54_reg_1340;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln55_3_reg_1404 <= and_ln55_3_fu_914_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln55_5_reg_1422 <= and_ln55_5_fu_1025_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_reg_1260 <= llike_1_q0;
        llike_2_load_reg_1270 <= llike_2_q0;
        llike_3_load_reg_1295 <= llike_3_q0;
        min_p_127_reg_1370 <= min_p_fu_114;
        tmp_69_reg_1265 <= tmp_69_fu_507_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_129_reg_1397 <= min_p_129_fu_831_p3;
        tmp_72_reg_1365 <= tmp_72_fu_711_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_131_reg_1410 <= min_p_131_fu_933_p3;
        min_s_5_reg_1417 <= min_s_5_fu_942_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_133_reg_1433 <= min_p_133_fu_1041_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_6_reg_1428 <= min_s_6_fu_1034_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        p_63_reg_1377 <= grp_fu_417_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        p_64_reg_1390 <= grp_fu_417_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_387 <= grp_fu_417_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_283_reg_1440 <= grp_fu_749_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_1_reg_1256 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_1256_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter1_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage7 = 1'b0;
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
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
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
        ap_sig_allocacmp_s = min_s_1_fu_122;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_379_p0 = llike_load_reg_1335;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_379_p0 = llike_3_load_reg_1295;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_379_p0 = llike_2_load_reg_1270;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_379_p0 = llike_1_load_reg_1260;
        end else begin
            grp_fu_379_p0 = 'bx;
        end
    end else begin
        grp_fu_379_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_379_p1 = tmp_72_reg_1365;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_379_p1 = tmp_71_reg_1330;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_379_p1 = tmp_70_reg_1325;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_379_p1 = tmp_69_reg_1265;
        end else begin
            grp_fu_379_p1 = 'bx;
        end
    end else begin
        grp_fu_379_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_383_p0 = p_64_reg_1390;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_383_p0 = p_63_reg_1377;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_383_p0 = reg_387;
    end else begin
        grp_fu_383_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_383_p1 = min_p_133_fu_1041_p3;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_383_p1 = min_p_131_fu_933_p3;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_383_p1 = min_p_129_fu_831_p3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_383_p1 = min_p_fu_114;
        end else begin
            grp_fu_383_p1 = 'bx;
        end
    end else begin
        grp_fu_383_p1 = 'bx;
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
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_11001) & (tmp_1_reg_1256_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_10_out_ap_vld = 1'b1;
    end else begin
        min_s_10_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln54_2_fu_562_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln54_fu_457_p1;
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
            transition_0_address1_local = zext_ln54_3_fu_687_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln54_1_fu_542_p1;
        end else begin
            transition_0_address1_local = 'bx;
        end
    end else begin
        transition_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
            transition_1_address0_local = zext_ln54_2_fu_562_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln54_fu_457_p1;
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
            transition_1_address1_local = zext_ln54_3_fu_687_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln54_1_fu_542_p1;
        end else begin
            transition_1_address1_local = 'bx;
        end
    end else begin
        transition_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address0_local = zext_ln54_2_fu_562_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address0_local = zext_ln54_fu_457_p1;
        end else begin
            transition_2_address0_local = 'bx;
        end
    end else begin
        transition_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_2_address1_local = zext_ln54_3_fu_687_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address1_local = zext_ln54_1_fu_542_p1;
        end else begin
            transition_2_address1_local = 'bx;
        end
    end else begin
        transition_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_2_ce0_local = 1'b1;
    end else begin
        transition_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_2_ce1_local = 1'b1;
    end else begin
        transition_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address0_local = zext_ln54_2_fu_562_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address0_local = zext_ln54_fu_457_p1;
        end else begin
            transition_3_address0_local = 'bx;
        end
    end else begin
        transition_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_3_address1_local = zext_ln54_3_fu_687_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address1_local = zext_ln54_1_fu_542_p1;
        end else begin
            transition_3_address1_local = 'bx;
        end
    end else begin
        transition_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_3_ce0_local = 1'b1;
    end else begin
        transition_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_3_ce1_local = 1'b1;
    end else begin
        transition_3_ce1_local = 1'b0;
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
assign add_ln53_1_fu_471_p2 = (ap_sig_allocacmp_s + 6'd2);
assign add_ln53_2_fu_477_p2 = (zext_ln17_fu_414_p1 + 7'd3);
assign add_ln53_3_fu_734_p2 = (s_reg_1197 + 6'd4);
assign add_ln53_fu_465_p2 = (ap_sig_allocacmp_s + 6'd1);
assign add_ln54_1_fu_537_p2 = (shl_ln54_1_fu_530_p3 + zext_ln52_2_cast_reg_1190);
assign add_ln54_2_fu_557_p2 = (shl_ln54_2_fu_550_p3 + zext_ln52_2_cast_reg_1190);
assign add_ln54_3_fu_682_p2 = (shl_ln54_3_fu_674_p3 + zext_ln52_2_cast_reg_1190);
assign add_ln54_4_fu_583_p2 = (zext_ln52_3 + zext_ln54_5_fu_579_p1);
assign add_ln54_fu_451_p2 = (shl_ln2_fu_443_p3 + zext_ln52_2_cast_fu_392_p1);
assign and_ln55_1_fu_825_p2 = (or_ln55_1_fu_813_p2 & and_ln55_fu_819_p2);
assign and_ln55_2_fu_908_p2 = (or_ln55_3_fu_902_p2 & or_ln55_2_fu_884_p2);
assign and_ln55_3_fu_914_p2 = (grp_fu_749_p_dout0 & and_ln55_2_fu_908_p2);
assign and_ln55_4_fu_1019_p2 = (or_ln55_5_fu_1013_p2 & or_ln55_4_fu_995_p2);
assign and_ln55_5_fu_1025_p2 = (grp_fu_749_p_dout0 & and_ln55_4_fu_1019_p2);
assign and_ln55_6_fu_1118_p2 = (or_ln55_7_fu_1112_p2 & or_ln55_6_fu_1094_p2);
assign and_ln55_7_fu_1124_p2 = (tmp_283_reg_1440 & and_ln55_6_fu_1118_p2);
assign and_ln55_fu_819_p2 = (or_ln55_fu_795_p2 & grp_fu_749_p_dout0);
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
assign bitcast_ln55_1_fu_766_p1 = min_p_127_reg_1370;
assign bitcast_ln55_2_fu_838_p1 = p_63_reg_1377;
assign bitcast_ln55_3_fu_855_p1 = min_p_129_reg_1397;
assign bitcast_ln55_4_fu_949_p1 = p_64_reg_1390;
assign bitcast_ln55_5_fu_966_p1 = min_p_131_reg_1410;
assign bitcast_ln55_6_fu_1047_p1 = reg_387;
assign bitcast_ln55_7_fu_1065_p1 = min_p_133_reg_1433;
assign bitcast_ln55_fu_748_p1 = reg_387;
assign grp_fu_417_p_ce = 1'b1;
assign grp_fu_417_p_din0 = grp_fu_379_p0;
assign grp_fu_417_p_din1 = grp_fu_379_p1;
assign grp_fu_417_p_opcode = 2'd0;
assign grp_fu_749_p_ce = 1'b1;
assign grp_fu_749_p_din0 = grp_fu_383_p0;
assign grp_fu_749_p_din1 = grp_fu_383_p1;
assign grp_fu_749_p_opcode = 5'd4;
assign icmp_ln55_10_fu_1001_p2 = ((tmp_279_fu_969_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_11_fu_1007_p2 = ((trunc_ln55_5_fu_979_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_12_fu_1082_p2 = ((tmp_281_fu_1051_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_13_fu_1088_p2 = ((trunc_ln55_6_fu_1061_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_14_fu_1100_p2 = ((tmp_282_fu_1068_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_15_fu_1106_p2 = ((trunc_ln55_7_fu_1078_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_1_fu_789_p2 = ((trunc_ln55_fu_762_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_801_p2 = ((tmp_273_fu_769_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_807_p2 = ((trunc_ln55_1_fu_779_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_872_p2 = ((tmp_275_fu_841_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_878_p2 = ((trunc_ln55_2_fu_851_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_890_p2 = ((tmp_276_fu_858_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_896_p2 = ((trunc_ln55_3_fu_868_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_8_fu_983_p2 = ((tmp_278_fu_952_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_9_fu_989_p2 = ((trunc_ln55_4_fu_962_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_783_p2 = ((tmp_272_fu_752_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = zext_ln54_4_fu_436_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_2_address0 = zext_ln54_4_fu_436_p1;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_3_address0 = zext_ln54_4_fu_436_p1;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_address0 = zext_ln54_6_fu_588_p1;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln8_1_fu_418_p4 = {{ap_sig_allocacmp_s[5:2]}};
assign lshr_ln9_2_fu_570_p4 = {{add_ln53_2_reg_1250[6:2]}};
assign min_p_129_fu_831_p3 = ((and_ln55_1_reg_1384[0:0] == 1'b1) ? reg_387 : min_p_127_reg_1370);
assign min_p_131_fu_933_p3 = ((and_ln55_3_reg_1404[0:0] == 1'b1) ? p_63_reg_1377 : min_p_129_reg_1397);
assign min_p_133_fu_1041_p3 = ((and_ln55_5_reg_1422[0:0] == 1'b1) ? p_64_reg_1390 : min_p_131_reg_1410);
assign min_p_135_fu_1129_p3 = ((and_ln55_7_fu_1124_p2[0:0] == 1'b1) ? reg_387 : min_p_133_reg_1433);
assign min_s_10_out = ((and_ln55_5_reg_1422[0:0] == 1'b1) ? zext_ln55_2_fu_1031_p1 : min_s_5_reg_1417);
assign min_s_4_fu_926_p3 = ((and_ln55_1_reg_1384[0:0] == 1'b1) ? zext_ln55_fu_923_p1 : min_s_fu_118);
assign min_s_5_fu_942_p3 = ((and_ln55_3_reg_1404[0:0] == 1'b1) ? zext_ln55_1_fu_939_p1 : min_s_4_fu_926_p3);
assign min_s_6_fu_1034_p3 = ((and_ln55_5_reg_1422[0:0] == 1'b1) ? zext_ln55_2_fu_1031_p1 : min_s_5_reg_1417);
assign min_s_7_fu_1139_p3 = ((and_ln55_7_fu_1124_p2[0:0] == 1'b1) ? zext_ln55_3_fu_1136_p1 : min_s_6_reg_1428);
assign or_ln55_1_fu_813_p2 = (icmp_ln55_3_fu_807_p2 | icmp_ln55_2_fu_801_p2);
assign or_ln55_2_fu_884_p2 = (icmp_ln55_5_fu_878_p2 | icmp_ln55_4_fu_872_p2);
assign or_ln55_3_fu_902_p2 = (icmp_ln55_7_fu_896_p2 | icmp_ln55_6_fu_890_p2);
assign or_ln55_4_fu_995_p2 = (icmp_ln55_9_fu_989_p2 | icmp_ln55_8_fu_983_p2);
assign or_ln55_5_fu_1013_p2 = (icmp_ln55_11_fu_1007_p2 | icmp_ln55_10_fu_1001_p2);
assign or_ln55_6_fu_1094_p2 = (icmp_ln55_13_fu_1088_p2 | icmp_ln55_12_fu_1082_p2);
assign or_ln55_7_fu_1112_p2 = (icmp_ln55_15_fu_1106_p2 | icmp_ln55_14_fu_1100_p2);
assign or_ln55_fu_795_p2 = (icmp_ln55_fu_783_p2 | icmp_ln55_1_fu_789_p2);
assign shl_ln2_fu_443_p3 = {{ap_sig_allocacmp_s}, {4'd0}};
assign shl_ln54_1_fu_530_p3 = {{add_ln53_reg_1238}, {4'd0}};
assign shl_ln54_2_fu_550_p3 = {{add_ln53_1_reg_1244}, {4'd0}};
assign shl_ln54_3_fu_674_p3 = {{trunc_ln54_fu_671_p1}, {4'd0}};
assign tmp_272_fu_752_p4 = {{bitcast_ln55_fu_748_p1[62:52]}};
assign tmp_273_fu_769_p4 = {{bitcast_ln55_1_fu_766_p1[62:52]}};
assign tmp_275_fu_841_p4 = {{bitcast_ln55_2_fu_838_p1[62:52]}};
assign tmp_276_fu_858_p4 = {{bitcast_ln55_3_fu_855_p1[62:52]}};
assign tmp_278_fu_952_p4 = {{bitcast_ln55_4_fu_949_p1[62:52]}};
assign tmp_279_fu_969_p4 = {{bitcast_ln55_5_fu_966_p1[62:52]}};
assign tmp_281_fu_1051_p4 = {{bitcast_ln55_6_fu_1047_p1[62:52]}};
assign tmp_282_fu_1068_p4 = {{bitcast_ln55_7_fu_1065_p1[62:52]}};
assign tmp_69_fu_507_p2 = transition_0_q0;
assign tmp_69_fu_507_p4 = transition_1_q0;
assign tmp_69_fu_507_p6 = transition_2_q0;
assign tmp_69_fu_507_p8 = transition_3_q0;
assign tmp_69_fu_507_p9 = 'bx;
assign tmp_70_fu_609_p2 = transition_0_q1;
assign tmp_70_fu_609_p4 = transition_1_q1;
assign tmp_70_fu_609_p6 = transition_2_q1;
assign tmp_70_fu_609_p8 = transition_3_q1;
assign tmp_70_fu_609_p9 = 'bx;
assign tmp_71_fu_648_p2 = transition_0_q0;
assign tmp_71_fu_648_p4 = transition_1_q0;
assign tmp_71_fu_648_p6 = transition_2_q0;
assign tmp_71_fu_648_p8 = transition_3_q0;
assign tmp_71_fu_648_p9 = 'bx;
assign tmp_72_fu_711_p2 = transition_0_q1;
assign tmp_72_fu_711_p4 = transition_1_q1;
assign tmp_72_fu_711_p6 = transition_2_q1;
assign tmp_72_fu_711_p8 = transition_3_q1;
assign tmp_72_fu_711_p9 = 'bx;
assign tmp_s_fu_428_p3 = {{t_1}, {lshr_ln8_1_fu_418_p4}};
assign transition_0_address0 = transition_0_address0_local;
assign transition_0_address1 = transition_0_address1_local;
assign transition_0_ce0 = transition_0_ce0_local;
assign transition_0_ce1 = transition_0_ce1_local;
assign transition_1_address0 = transition_1_address0_local;
assign transition_1_address1 = transition_1_address1_local;
assign transition_1_ce0 = transition_1_ce0_local;
assign transition_1_ce1 = transition_1_ce1_local;
assign transition_2_address0 = transition_2_address0_local;
assign transition_2_address1 = transition_2_address1_local;
assign transition_2_ce0 = transition_2_ce0_local;
assign transition_2_ce1 = transition_2_ce1_local;
assign transition_3_address0 = transition_3_address0_local;
assign transition_3_address1 = transition_3_address1_local;
assign transition_3_ce0 = transition_3_ce0_local;
assign transition_3_ce1 = transition_3_ce1_local;
assign trunc_ln54_fu_671_p1 = add_ln53_2_reg_1250[5:0];
assign trunc_ln55_1_fu_779_p1 = bitcast_ln55_1_fu_766_p1[51:0];
assign trunc_ln55_2_fu_851_p1 = bitcast_ln55_2_fu_838_p1[51:0];
assign trunc_ln55_3_fu_868_p1 = bitcast_ln55_3_fu_855_p1[51:0];
assign trunc_ln55_4_fu_962_p1 = bitcast_ln55_4_fu_949_p1[51:0];
assign trunc_ln55_5_fu_979_p1 = bitcast_ln55_5_fu_966_p1[51:0];
assign trunc_ln55_6_fu_1061_p1 = bitcast_ln55_6_fu_1047_p1[51:0];
assign trunc_ln55_7_fu_1078_p1 = bitcast_ln55_7_fu_1065_p1[51:0];
assign trunc_ln55_fu_762_p1 = bitcast_ln55_fu_748_p1[51:0];
assign zext_ln17_fu_414_p1 = ap_sig_allocacmp_s;
assign zext_ln52_2_cast_fu_392_p1 = zext_ln52_2;
assign zext_ln54_1_fu_542_p1 = add_ln54_1_fu_537_p2;
assign zext_ln54_2_fu_562_p1 = add_ln54_2_fu_557_p2;
assign zext_ln54_3_fu_687_p1 = add_ln54_3_fu_682_p2;
assign zext_ln54_4_fu_436_p1 = tmp_s_fu_428_p3;
assign zext_ln54_5_fu_579_p1 = lshr_ln9_2_fu_570_p4;
assign zext_ln54_6_fu_588_p1 = add_ln54_4_fu_583_p2;
assign zext_ln54_fu_457_p1 = add_ln54_fu_451_p2;
assign zext_ln55_1_fu_939_p1 = add_ln53_reg_1238_pp0_iter1_reg;
assign zext_ln55_2_fu_1031_p1 = add_ln53_1_reg_1244_pp0_iter1_reg;
assign zext_ln55_3_fu_1136_p1 = trunc_ln54_reg_1340_pp0_iter1_reg;
assign zext_ln55_fu_923_p1 = s_reg_1197_pp0_iter1_reg;
always @ (posedge ap_clk) begin
    zext_ln52_2_cast_reg_1190[9:6] <= 4'b0000;
end
endmodule 