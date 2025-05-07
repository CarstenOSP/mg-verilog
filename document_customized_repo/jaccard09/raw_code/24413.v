module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_147,t_1,llike_1_address0,llike_1_ce0,llike_1_q0,llike_1_address1,llike_1_ce1,llike_1_q1,zext_ln52_2,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,empty,llike_address0,llike_ce0,llike_q0,zext_ln52_3,min_s_10_out,min_s_10_out_ap_vld,grp_fu_401_p_din0,grp_fu_401_p_din1,grp_fu_401_p_opcode,grp_fu_401_p_dout0,grp_fu_401_p_ce,grp_fu_733_p_din0,grp_fu_733_p_din1,grp_fu_733_p_opcode,grp_fu_733_p_dout0,grp_fu_733_p_ce); 
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
output  [12:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
input  [12:0] zext_ln52_3;
output  [7:0] min_s_10_out;
output   min_s_10_out_ap_vld;
output  [63:0] grp_fu_401_p_din0;
output  [63:0] grp_fu_401_p_din1;
output  [1:0] grp_fu_401_p_opcode;
input  [63:0] grp_fu_401_p_dout0;
output   grp_fu_401_p_ce;
output  [63:0] grp_fu_733_p_din0;
output  [63:0] grp_fu_733_p_din1;
output  [4:0] grp_fu_733_p_opcode;
input  [0:0] grp_fu_733_p_dout0;
output   grp_fu_733_p_ce;
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
reg   [0:0] tmp_1_reg_1286;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_377;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [9:0] zext_ln52_2_cast_fu_382_p1;
reg   [9:0] zext_ln52_2_cast_reg_1220;
reg   [5:0] s_reg_1227;
reg   [5:0] s_reg_1227_pp0_iter1_reg;
wire   [5:0] add_ln53_fu_453_p2;
reg   [5:0] add_ln53_reg_1258;
reg   [5:0] add_ln53_reg_1258_pp0_iter1_reg;
wire   [5:0] add_ln53_1_fu_482_p2;
reg   [5:0] add_ln53_1_reg_1269;
reg   [5:0] add_ln53_1_reg_1269_pp0_iter1_reg;
wire   [6:0] add_ln53_2_fu_507_p2;
reg   [6:0] add_ln53_2_reg_1280;
reg   [0:0] tmp_1_reg_1286_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_1290;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_69_fu_537_p11;
reg   [63:0] tmp_69_reg_1295;
reg   [63:0] llike_load_reg_1300;
reg   [63:0] llike_1_load_32_reg_1325;
wire   [63:0] tmp_70_fu_639_p11;
reg   [63:0] tmp_70_reg_1355;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_71_fu_678_p11;
reg   [63:0] tmp_71_reg_1360;
reg   [63:0] llike_load_32_reg_1365;
wire   [5:0] trunc_ln54_fu_701_p1;
reg   [5:0] trunc_ln54_reg_1370;
reg   [5:0] trunc_ln54_reg_1370_pp0_iter1_reg;
wire   [63:0] tmp_72_fu_741_p11;
reg   [63:0] tmp_72_reg_1395;
reg   [63:0] min_p_127_reg_1400;
reg   [63:0] p_63_reg_1407;
wire   [0:0] and_ln55_1_fu_855_p2;
reg   [0:0] and_ln55_1_reg_1414;
reg   [63:0] p_64_reg_1420;
wire   [63:0] min_p_129_fu_861_p3;
reg   [63:0] min_p_129_reg_1427;
wire   [0:0] and_ln55_3_fu_944_p2;
reg   [0:0] and_ln55_3_reg_1434;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] min_p_131_fu_963_p3;
reg   [63:0] min_p_131_reg_1440;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [7:0] min_s_5_fu_972_p3;
reg   [7:0] min_s_5_reg_1447;
wire   [0:0] and_ln55_5_fu_1055_p2;
reg   [0:0] and_ln55_5_reg_1452;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [7:0] min_s_6_fu_1064_p3;
reg   [7:0] min_s_6_reg_1458;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] min_p_133_fu_1071_p3;
reg   [63:0] min_p_133_reg_1463;
reg   [0:0] tmp_285_reg_1470;
wire    ap_block_pp0_stage8_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage7_subdone;
reg    ap_condition_exit_pp0_iter1_stage7;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln54_4_fu_426_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_445_p1;
wire   [63:0] zext_ln54_5_fu_477_p1;
wire   [63:0] zext_ln54_6_fu_502_p1;
wire   [63:0] zext_ln54_1_fu_572_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_2_fu_592_p1;
wire   [63:0] zext_ln54_8_fu_618_p1;
wire   [63:0] zext_ln54_3_fu_717_p1;
wire    ap_block_pp0_stage2;
reg   [63:0] min_p_fu_110;
wire   [63:0] min_p_135_fu_1159_p3;
wire    ap_loop_init;
reg   [7:0] min_s_fu_114;
wire   [7:0] min_s_7_fu_1169_p3;
wire    ap_block_pp0_stage5;
reg   [5:0] min_s_1_fu_118;
wire   [5:0] add_ln53_3_fu_764_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage7_01001;
reg    llike_1_ce1_local;
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
reg    llike_ce0_local;
reg   [12:0] llike_address0_local;
reg   [63:0] grp_fu_369_p0;
reg   [63:0] grp_fu_369_p1;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
reg   [63:0] grp_fu_373_p0;
reg   [63:0] grp_fu_373_p1;
wire    ap_block_pp0_stage7;
wire   [4:0] lshr_ln8_2_fu_408_p4;
wire   [12:0] tmp_s_fu_418_p3;
wire   [9:0] shl_ln2_fu_431_p3;
wire   [9:0] add_ln54_fu_439_p2;
wire   [4:0] lshr_ln8_3_fu_459_p4;
wire   [12:0] tmp_288_fu_469_p3;
wire   [4:0] add_ln8_fu_488_p2;
wire   [12:0] tmp_289_fu_494_p3;
wire   [6:0] zext_ln17_fu_404_p1;
wire   [63:0] tmp_69_fu_537_p2;
wire   [63:0] tmp_69_fu_537_p4;
wire   [63:0] tmp_69_fu_537_p6;
wire   [63:0] tmp_69_fu_537_p8;
wire   [63:0] tmp_69_fu_537_p9;
wire   [9:0] shl_ln54_1_fu_560_p3;
wire   [9:0] add_ln54_1_fu_567_p2;
wire   [9:0] shl_ln54_2_fu_580_p3;
wire   [9:0] add_ln54_2_fu_587_p2;
wire   [5:0] lshr_ln9_3_fu_600_p4;
wire   [12:0] zext_ln54_7_fu_609_p1;
wire   [12:0] add_ln54_4_fu_613_p2;
wire   [63:0] tmp_70_fu_639_p2;
wire   [63:0] tmp_70_fu_639_p4;
wire   [63:0] tmp_70_fu_639_p6;
wire   [63:0] tmp_70_fu_639_p8;
wire   [63:0] tmp_70_fu_639_p9;
wire   [63:0] tmp_71_fu_678_p2;
wire   [63:0] tmp_71_fu_678_p4;
wire   [63:0] tmp_71_fu_678_p6;
wire   [63:0] tmp_71_fu_678_p8;
wire   [63:0] tmp_71_fu_678_p9;
wire   [9:0] shl_ln54_3_fu_704_p3;
wire   [9:0] add_ln54_3_fu_712_p2;
wire   [63:0] tmp_72_fu_741_p2;
wire   [63:0] tmp_72_fu_741_p4;
wire   [63:0] tmp_72_fu_741_p6;
wire   [63:0] tmp_72_fu_741_p8;
wire   [63:0] tmp_72_fu_741_p9;
wire    ap_block_pp0_stage8;
wire   [63:0] bitcast_ln55_fu_778_p1;
wire   [63:0] bitcast_ln55_1_fu_796_p1;
wire   [10:0] tmp_274_fu_782_p4;
wire   [51:0] trunc_ln55_fu_792_p1;
wire   [0:0] icmp_ln55_1_fu_819_p2;
wire   [0:0] icmp_ln55_fu_813_p2;
wire   [10:0] tmp_275_fu_799_p4;
wire   [51:0] trunc_ln55_1_fu_809_p1;
wire   [0:0] icmp_ln55_3_fu_837_p2;
wire   [0:0] icmp_ln55_2_fu_831_p2;
wire   [0:0] or_ln55_fu_825_p2;
wire   [0:0] and_ln55_fu_849_p2;
wire   [0:0] or_ln55_1_fu_843_p2;
wire   [63:0] bitcast_ln55_2_fu_868_p1;
wire   [63:0] bitcast_ln55_3_fu_885_p1;
wire   [10:0] tmp_277_fu_871_p4;
wire   [51:0] trunc_ln55_2_fu_881_p1;
wire   [0:0] icmp_ln55_5_fu_908_p2;
wire   [0:0] icmp_ln55_4_fu_902_p2;
wire   [10:0] tmp_278_fu_888_p4;
wire   [51:0] trunc_ln55_3_fu_898_p1;
wire   [0:0] icmp_ln55_7_fu_926_p2;
wire   [0:0] icmp_ln55_6_fu_920_p2;
wire   [0:0] or_ln55_3_fu_932_p2;
wire   [0:0] or_ln55_2_fu_914_p2;
wire   [0:0] and_ln55_2_fu_938_p2;
wire   [7:0] zext_ln55_fu_953_p1;
wire   [7:0] zext_ln55_1_fu_969_p1;
wire   [7:0] min_s_4_fu_956_p3;
wire    ap_block_pp0_stage6;
wire   [63:0] bitcast_ln55_4_fu_979_p1;
wire   [63:0] bitcast_ln55_5_fu_996_p1;
wire   [10:0] tmp_280_fu_982_p4;
wire   [51:0] trunc_ln55_4_fu_992_p1;
wire   [0:0] icmp_ln55_9_fu_1019_p2;
wire   [0:0] icmp_ln55_8_fu_1013_p2;
wire   [10:0] tmp_281_fu_999_p4;
wire   [51:0] trunc_ln55_5_fu_1009_p1;
wire   [0:0] icmp_ln55_11_fu_1037_p2;
wire   [0:0] icmp_ln55_10_fu_1031_p2;
wire   [0:0] or_ln55_5_fu_1043_p2;
wire   [0:0] or_ln55_4_fu_1025_p2;
wire   [0:0] and_ln55_4_fu_1049_p2;
wire   [7:0] zext_ln55_2_fu_1061_p1;
wire   [63:0] bitcast_ln55_6_fu_1077_p1;
wire   [63:0] bitcast_ln55_7_fu_1095_p1;
wire   [10:0] tmp_283_fu_1081_p4;
wire   [51:0] trunc_ln55_6_fu_1091_p1;
wire   [0:0] icmp_ln55_13_fu_1118_p2;
wire   [0:0] icmp_ln55_12_fu_1112_p2;
wire   [10:0] tmp_284_fu_1098_p4;
wire   [51:0] trunc_ln55_7_fu_1108_p1;
wire   [0:0] icmp_ln55_15_fu_1136_p2;
wire   [0:0] icmp_ln55_14_fu_1130_p2;
wire   [0:0] or_ln55_7_fu_1142_p2;
wire   [0:0] or_ln55_6_fu_1124_p2;
wire   [0:0] and_ln55_6_fu_1148_p2;
wire   [0:0] and_ln55_7_fu_1154_p2;
wire   [7:0] zext_ln55_3_fu_1166_p1;
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
wire   [1:0] tmp_69_fu_537_p1;
wire   [1:0] tmp_69_fu_537_p3;
wire  signed [1:0] tmp_69_fu_537_p5;
wire  signed [1:0] tmp_69_fu_537_p7;
wire   [1:0] tmp_70_fu_639_p1;
wire   [1:0] tmp_70_fu_639_p3;
wire  signed [1:0] tmp_70_fu_639_p5;
wire  signed [1:0] tmp_70_fu_639_p7;
wire   [1:0] tmp_71_fu_678_p1;
wire   [1:0] tmp_71_fu_678_p3;
wire  signed [1:0] tmp_71_fu_678_p5;
wire  signed [1:0] tmp_71_fu_678_p7;
wire   [1:0] tmp_72_fu_741_p1;
wire   [1:0] tmp_72_fu_741_p3;
wire  signed [1:0] tmp_72_fu_741_p5;
wire  signed [1:0] tmp_72_fu_741_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_110 = 64'd0;
#0 min_s_fu_114 = 8'd0;
#0 min_s_1_fu_118 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U112(.din0(tmp_69_fu_537_p2),.din1(tmp_69_fu_537_p4),.din2(tmp_69_fu_537_p6),.din3(tmp_69_fu_537_p8),.def(tmp_69_fu_537_p9),.sel(empty),.dout(tmp_69_fu_537_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U113(.din0(tmp_70_fu_639_p2),.din1(tmp_70_fu_639_p4),.din2(tmp_70_fu_639_p6),.din3(tmp_70_fu_639_p8),.def(tmp_70_fu_639_p9),.sel(empty),.dout(tmp_70_fu_639_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U114(.din0(tmp_71_fu_678_p2),.din1(tmp_71_fu_678_p4),.din2(tmp_71_fu_678_p6),.din3(tmp_71_fu_678_p8),.def(tmp_71_fu_678_p9),.sel(empty),.dout(tmp_71_fu_678_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U115(.din0(tmp_72_fu_741_p2),.din1(tmp_72_fu_741_p4),.din2(tmp_72_fu_741_p6),.din3(tmp_72_fu_741_p8),.def(tmp_72_fu_741_p9),.sel(empty),.dout(tmp_72_fu_741_p11));
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
            min_p_fu_110 <= min_p_147;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_p_fu_110 <= min_p_135_fu_1159_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_1_fu_118 <= 6'd1;
    end else if (((tmp_1_reg_1286 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        min_s_1_fu_118 <= add_ln53_3_fu_764_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            min_s_fu_114 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_s_fu_114 <= min_s_7_fu_1169_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_1_reg_1269 <= add_ln53_1_fu_482_p2;
        add_ln53_1_reg_1269_pp0_iter1_reg <= add_ln53_1_reg_1269;
        add_ln53_2_reg_1280 <= add_ln53_2_fu_507_p2;
        add_ln53_reg_1258 <= add_ln53_fu_453_p2;
        add_ln53_reg_1258_pp0_iter1_reg <= add_ln53_reg_1258;
        s_reg_1227 <= ap_sig_allocacmp_s;
        s_reg_1227_pp0_iter1_reg <= s_reg_1227;
        tmp_1_reg_1286 <= add_ln53_2_fu_507_p2[32'd6];
        tmp_1_reg_1286_pp0_iter1_reg <= tmp_1_reg_1286;
        zext_ln52_2_cast_reg_1220[5 : 0] <= zext_ln52_2_cast_fu_382_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        and_ln55_1_reg_1414 <= and_ln55_1_fu_855_p2;
        tmp_70_reg_1355 <= tmp_70_fu_639_p11;
        tmp_71_reg_1360 <= tmp_71_fu_678_p11;
        trunc_ln54_reg_1370 <= trunc_ln54_fu_701_p1;
        trunc_ln54_reg_1370_pp0_iter1_reg <= trunc_ln54_reg_1370;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln55_3_reg_1434 <= and_ln55_3_fu_944_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln55_5_reg_1452 <= and_ln55_5_fu_1055_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_32_reg_1325 <= llike_1_q0;
        llike_1_load_reg_1290 <= llike_1_q1;
        llike_load_reg_1300 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_load_32_reg_1365 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        min_p_127_reg_1400 <= min_p_fu_110;
        tmp_69_reg_1295 <= tmp_69_fu_537_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_129_reg_1427 <= min_p_129_fu_861_p3;
        tmp_72_reg_1395 <= tmp_72_fu_741_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_131_reg_1440 <= min_p_131_fu_963_p3;
        min_s_5_reg_1447 <= min_s_5_fu_972_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_133_reg_1463 <= min_p_133_fu_1071_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_6_reg_1458 <= min_s_6_fu_1064_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        p_63_reg_1407 <= grp_fu_401_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        p_64_reg_1420 <= grp_fu_401_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_377 <= grp_fu_401_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_285_reg_1470 <= grp_fu_733_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_1_reg_1286 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_1286_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        ap_sig_allocacmp_s = min_s_1_fu_118;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_369_p0 = llike_load_32_reg_1365;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_369_p0 = llike_1_load_32_reg_1325;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_369_p0 = llike_load_reg_1300;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_369_p0 = llike_1_load_reg_1290;
        end else begin
            grp_fu_369_p0 = 'bx;
        end
    end else begin
        grp_fu_369_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_369_p1 = tmp_72_reg_1395;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_369_p1 = tmp_71_reg_1360;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_369_p1 = tmp_70_reg_1355;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_369_p1 = tmp_69_reg_1295;
        end else begin
            grp_fu_369_p1 = 'bx;
        end
    end else begin
        grp_fu_369_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_373_p0 = p_64_reg_1420;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_373_p0 = p_63_reg_1407;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_373_p0 = reg_377;
    end else begin
        grp_fu_373_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_373_p1 = min_p_133_fu_1071_p3;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_373_p1 = min_p_131_fu_963_p3;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_373_p1 = min_p_129_fu_861_p3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_373_p1 = min_p_fu_110;
        end else begin
            grp_fu_373_p1 = 'bx;
        end
    end else begin
        grp_fu_373_p1 = 'bx;
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
            llike_address0_local = zext_ln54_8_fu_618_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln54_5_fu_477_p1;
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
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_1_reg_1286_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_10_out_ap_vld = 1'b1;
    end else begin
        min_s_10_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln54_2_fu_592_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln54_fu_445_p1;
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
            transition_0_address1_local = zext_ln54_3_fu_717_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln54_1_fu_572_p1;
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
            transition_1_address0_local = zext_ln54_2_fu_592_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln54_fu_445_p1;
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
            transition_1_address1_local = zext_ln54_3_fu_717_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln54_1_fu_572_p1;
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
            transition_2_address0_local = zext_ln54_2_fu_592_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address0_local = zext_ln54_fu_445_p1;
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
            transition_2_address1_local = zext_ln54_3_fu_717_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address1_local = zext_ln54_1_fu_572_p1;
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
            transition_3_address0_local = zext_ln54_2_fu_592_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address0_local = zext_ln54_fu_445_p1;
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
            transition_3_address1_local = zext_ln54_3_fu_717_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address1_local = zext_ln54_1_fu_572_p1;
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
assign add_ln53_1_fu_482_p2 = (ap_sig_allocacmp_s + 6'd2);
assign add_ln53_2_fu_507_p2 = (zext_ln17_fu_404_p1 + 7'd3);
assign add_ln53_3_fu_764_p2 = (s_reg_1227 + 6'd4);
assign add_ln53_fu_453_p2 = (ap_sig_allocacmp_s + 6'd1);
assign add_ln54_1_fu_567_p2 = (shl_ln54_1_fu_560_p3 + zext_ln52_2_cast_reg_1220);
assign add_ln54_2_fu_587_p2 = (shl_ln54_2_fu_580_p3 + zext_ln52_2_cast_reg_1220);
assign add_ln54_3_fu_712_p2 = (shl_ln54_3_fu_704_p3 + zext_ln52_2_cast_reg_1220);
assign add_ln54_4_fu_613_p2 = (zext_ln52_3 + zext_ln54_7_fu_609_p1);
assign add_ln54_fu_439_p2 = (shl_ln2_fu_431_p3 + zext_ln52_2_cast_fu_382_p1);
assign add_ln8_fu_488_p2 = (lshr_ln8_2_fu_408_p4 + 5'd1);
assign and_ln55_1_fu_855_p2 = (or_ln55_1_fu_843_p2 & and_ln55_fu_849_p2);
assign and_ln55_2_fu_938_p2 = (or_ln55_3_fu_932_p2 & or_ln55_2_fu_914_p2);
assign and_ln55_3_fu_944_p2 = (grp_fu_733_p_dout0 & and_ln55_2_fu_938_p2);
assign and_ln55_4_fu_1049_p2 = (or_ln55_5_fu_1043_p2 & or_ln55_4_fu_1025_p2);
assign and_ln55_5_fu_1055_p2 = (grp_fu_733_p_dout0 & and_ln55_4_fu_1049_p2);
assign and_ln55_6_fu_1148_p2 = (or_ln55_7_fu_1142_p2 & or_ln55_6_fu_1124_p2);
assign and_ln55_7_fu_1154_p2 = (tmp_285_reg_1470 & and_ln55_6_fu_1148_p2);
assign and_ln55_fu_849_p2 = (or_ln55_fu_825_p2 & grp_fu_733_p_dout0);
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
assign bitcast_ln55_1_fu_796_p1 = min_p_127_reg_1400;
assign bitcast_ln55_2_fu_868_p1 = p_63_reg_1407;
assign bitcast_ln55_3_fu_885_p1 = min_p_129_reg_1427;
assign bitcast_ln55_4_fu_979_p1 = p_64_reg_1420;
assign bitcast_ln55_5_fu_996_p1 = min_p_131_reg_1440;
assign bitcast_ln55_6_fu_1077_p1 = reg_377;
assign bitcast_ln55_7_fu_1095_p1 = min_p_133_reg_1463;
assign bitcast_ln55_fu_778_p1 = reg_377;
assign grp_fu_401_p_ce = 1'b1;
assign grp_fu_401_p_din0 = grp_fu_369_p0;
assign grp_fu_401_p_din1 = grp_fu_369_p1;
assign grp_fu_401_p_opcode = 2'd0;
assign grp_fu_733_p_ce = 1'b1;
assign grp_fu_733_p_din0 = grp_fu_373_p0;
assign grp_fu_733_p_din1 = grp_fu_373_p1;
assign grp_fu_733_p_opcode = 5'd4;
assign icmp_ln55_10_fu_1031_p2 = ((tmp_281_fu_999_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_11_fu_1037_p2 = ((trunc_ln55_5_fu_1009_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_12_fu_1112_p2 = ((tmp_283_fu_1081_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_13_fu_1118_p2 = ((trunc_ln55_6_fu_1091_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_14_fu_1130_p2 = ((tmp_284_fu_1098_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_15_fu_1136_p2 = ((trunc_ln55_7_fu_1108_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_1_fu_819_p2 = ((trunc_ln55_fu_792_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_831_p2 = ((tmp_275_fu_799_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_837_p2 = ((trunc_ln55_1_fu_809_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_902_p2 = ((tmp_277_fu_871_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_908_p2 = ((trunc_ln55_2_fu_881_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_920_p2 = ((tmp_278_fu_888_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_926_p2 = ((trunc_ln55_3_fu_898_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_8_fu_1013_p2 = ((tmp_280_fu_982_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_9_fu_1019_p2 = ((trunc_ln55_4_fu_992_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_813_p2 = ((tmp_274_fu_782_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = zext_ln54_6_fu_502_p1;
assign llike_1_address1 = zext_ln54_4_fu_426_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_ce1 = llike_1_ce1_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln8_2_fu_408_p4 = {{ap_sig_allocacmp_s[5:1]}};
assign lshr_ln8_3_fu_459_p4 = {{add_ln53_fu_453_p2[5:1]}};
assign lshr_ln9_3_fu_600_p4 = {{add_ln53_2_reg_1280[6:1]}};
assign min_p_129_fu_861_p3 = ((and_ln55_1_reg_1414[0:0] == 1'b1) ? reg_377 : min_p_127_reg_1400);
assign min_p_131_fu_963_p3 = ((and_ln55_3_reg_1434[0:0] == 1'b1) ? p_63_reg_1407 : min_p_129_reg_1427);
assign min_p_133_fu_1071_p3 = ((and_ln55_5_reg_1452[0:0] == 1'b1) ? p_64_reg_1420 : min_p_131_reg_1440);
assign min_p_135_fu_1159_p3 = ((and_ln55_7_fu_1154_p2[0:0] == 1'b1) ? reg_377 : min_p_133_reg_1463);
assign min_s_10_out = ((and_ln55_5_reg_1452[0:0] == 1'b1) ? zext_ln55_2_fu_1061_p1 : min_s_5_reg_1447);
assign min_s_4_fu_956_p3 = ((and_ln55_1_reg_1414[0:0] == 1'b1) ? zext_ln55_fu_953_p1 : min_s_fu_114);
assign min_s_5_fu_972_p3 = ((and_ln55_3_reg_1434[0:0] == 1'b1) ? zext_ln55_1_fu_969_p1 : min_s_4_fu_956_p3);
assign min_s_6_fu_1064_p3 = ((and_ln55_5_reg_1452[0:0] == 1'b1) ? zext_ln55_2_fu_1061_p1 : min_s_5_reg_1447);
assign min_s_7_fu_1169_p3 = ((and_ln55_7_fu_1154_p2[0:0] == 1'b1) ? zext_ln55_3_fu_1166_p1 : min_s_6_reg_1458);
assign or_ln55_1_fu_843_p2 = (icmp_ln55_3_fu_837_p2 | icmp_ln55_2_fu_831_p2);
assign or_ln55_2_fu_914_p2 = (icmp_ln55_5_fu_908_p2 | icmp_ln55_4_fu_902_p2);
assign or_ln55_3_fu_932_p2 = (icmp_ln55_7_fu_926_p2 | icmp_ln55_6_fu_920_p2);
assign or_ln55_4_fu_1025_p2 = (icmp_ln55_9_fu_1019_p2 | icmp_ln55_8_fu_1013_p2);
assign or_ln55_5_fu_1043_p2 = (icmp_ln55_11_fu_1037_p2 | icmp_ln55_10_fu_1031_p2);
assign or_ln55_6_fu_1124_p2 = (icmp_ln55_13_fu_1118_p2 | icmp_ln55_12_fu_1112_p2);
assign or_ln55_7_fu_1142_p2 = (icmp_ln55_15_fu_1136_p2 | icmp_ln55_14_fu_1130_p2);
assign or_ln55_fu_825_p2 = (icmp_ln55_fu_813_p2 | icmp_ln55_1_fu_819_p2);
assign shl_ln2_fu_431_p3 = {{ap_sig_allocacmp_s}, {4'd0}};
assign shl_ln54_1_fu_560_p3 = {{add_ln53_reg_1258}, {4'd0}};
assign shl_ln54_2_fu_580_p3 = {{add_ln53_1_reg_1269}, {4'd0}};
assign shl_ln54_3_fu_704_p3 = {{trunc_ln54_fu_701_p1}, {4'd0}};
assign tmp_274_fu_782_p4 = {{bitcast_ln55_fu_778_p1[62:52]}};
assign tmp_275_fu_799_p4 = {{bitcast_ln55_1_fu_796_p1[62:52]}};
assign tmp_277_fu_871_p4 = {{bitcast_ln55_2_fu_868_p1[62:52]}};
assign tmp_278_fu_888_p4 = {{bitcast_ln55_3_fu_885_p1[62:52]}};
assign tmp_280_fu_982_p4 = {{bitcast_ln55_4_fu_979_p1[62:52]}};
assign tmp_281_fu_999_p4 = {{bitcast_ln55_5_fu_996_p1[62:52]}};
assign tmp_283_fu_1081_p4 = {{bitcast_ln55_6_fu_1077_p1[62:52]}};
assign tmp_284_fu_1098_p4 = {{bitcast_ln55_7_fu_1095_p1[62:52]}};
assign tmp_288_fu_469_p3 = {{t_1}, {lshr_ln8_3_fu_459_p4}};
assign tmp_289_fu_494_p3 = {{t_1}, {add_ln8_fu_488_p2}};
assign tmp_69_fu_537_p2 = transition_0_q0;
assign tmp_69_fu_537_p4 = transition_1_q0;
assign tmp_69_fu_537_p6 = transition_2_q0;
assign tmp_69_fu_537_p8 = transition_3_q0;
assign tmp_69_fu_537_p9 = 'bx;
assign tmp_70_fu_639_p2 = transition_0_q1;
assign tmp_70_fu_639_p4 = transition_1_q1;
assign tmp_70_fu_639_p6 = transition_2_q1;
assign tmp_70_fu_639_p8 = transition_3_q1;
assign tmp_70_fu_639_p9 = 'bx;
assign tmp_71_fu_678_p2 = transition_0_q0;
assign tmp_71_fu_678_p4 = transition_1_q0;
assign tmp_71_fu_678_p6 = transition_2_q0;
assign tmp_71_fu_678_p8 = transition_3_q0;
assign tmp_71_fu_678_p9 = 'bx;
assign tmp_72_fu_741_p2 = transition_0_q1;
assign tmp_72_fu_741_p4 = transition_1_q1;
assign tmp_72_fu_741_p6 = transition_2_q1;
assign tmp_72_fu_741_p8 = transition_3_q1;
assign tmp_72_fu_741_p9 = 'bx;
assign tmp_s_fu_418_p3 = {{t_1}, {lshr_ln8_2_fu_408_p4}};
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
assign trunc_ln54_fu_701_p1 = add_ln53_2_reg_1280[5:0];
assign trunc_ln55_1_fu_809_p1 = bitcast_ln55_1_fu_796_p1[51:0];
assign trunc_ln55_2_fu_881_p1 = bitcast_ln55_2_fu_868_p1[51:0];
assign trunc_ln55_3_fu_898_p1 = bitcast_ln55_3_fu_885_p1[51:0];
assign trunc_ln55_4_fu_992_p1 = bitcast_ln55_4_fu_979_p1[51:0];
assign trunc_ln55_5_fu_1009_p1 = bitcast_ln55_5_fu_996_p1[51:0];
assign trunc_ln55_6_fu_1091_p1 = bitcast_ln55_6_fu_1077_p1[51:0];
assign trunc_ln55_7_fu_1108_p1 = bitcast_ln55_7_fu_1095_p1[51:0];
assign trunc_ln55_fu_792_p1 = bitcast_ln55_fu_778_p1[51:0];
assign zext_ln17_fu_404_p1 = ap_sig_allocacmp_s;
assign zext_ln52_2_cast_fu_382_p1 = zext_ln52_2;
assign zext_ln54_1_fu_572_p1 = add_ln54_1_fu_567_p2;
assign zext_ln54_2_fu_592_p1 = add_ln54_2_fu_587_p2;
assign zext_ln54_3_fu_717_p1 = add_ln54_3_fu_712_p2;
assign zext_ln54_4_fu_426_p1 = tmp_s_fu_418_p3;
assign zext_ln54_5_fu_477_p1 = tmp_288_fu_469_p3;
assign zext_ln54_6_fu_502_p1 = tmp_289_fu_494_p3;
assign zext_ln54_7_fu_609_p1 = lshr_ln9_3_fu_600_p4;
assign zext_ln54_8_fu_618_p1 = add_ln54_4_fu_613_p2;
assign zext_ln54_fu_445_p1 = add_ln54_fu_439_p2;
assign zext_ln55_1_fu_969_p1 = add_ln53_reg_1258_pp0_iter1_reg;
assign zext_ln55_2_fu_1061_p1 = add_ln53_1_reg_1269_pp0_iter1_reg;
assign zext_ln55_3_fu_1166_p1 = trunc_ln54_reg_1370_pp0_iter1_reg;
assign zext_ln55_fu_953_p1 = s_reg_1227_pp0_iter1_reg;
always @ (posedge ap_clk) begin
    zext_ln52_2_cast_reg_1220[9:6] <= 4'b0000;
end
endmodule 