module viterbi_viterbi_Pipeline_L_prev_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_34,empty_9,llike_1_address0,llike_1_ce0,llike_1_q0,llike_1_address1,llike_1_ce1,llike_1_q1,lshr_ln,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,empty_10,tmp_5,llike_address0,llike_ce0,llike_q0,empty,min_p_42_out,min_p_42_out_ap_vld,grp_fu_594_p_din0,grp_fu_594_p_din1,grp_fu_594_p_opcode,grp_fu_594_p_dout0,grp_fu_594_p_ce,grp_fu_1351_p_din0,grp_fu_1351_p_din1,grp_fu_1351_p_opcode,grp_fu_1351_p_dout0,grp_fu_1351_p_ce); 
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
input  [63:0] min_p_34;
input  [7:0] empty_9;
output  [12:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [12:0] llike_1_address1;
output   llike_1_ce1;
input  [63:0] llike_1_q1;
input  [3:0] lshr_ln;
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
input  [1:0] empty_10;
input  [63:0] tmp_5;
output  [12:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
input  [12:0] empty;
output  [63:0] min_p_42_out;
output   min_p_42_out_ap_vld;
output  [63:0] grp_fu_594_p_din0;
output  [63:0] grp_fu_594_p_din1;
output  [1:0] grp_fu_594_p_opcode;
input  [63:0] grp_fu_594_p_dout0;
output   grp_fu_594_p_ce;
output  [63:0] grp_fu_1351_p_din0;
output  [63:0] grp_fu_1351_p_din1;
output  [4:0] grp_fu_1351_p_opcode;
input  [0:0] grp_fu_1351_p_dout0;
output   grp_fu_1351_p_ce;
reg ap_idle;
reg min_p_42_out_ap_vld;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] tmp_94_reg_1230;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] prev_1_reg_1163;
wire   [6:0] add_ln25_1_fu_505_p2;
reg   [6:0] add_ln25_1_reg_1224;
reg   [0:0] tmp_94_reg_1230_pp0_iter1_reg;
reg   [0:0] tmp_94_reg_1230_pp0_iter2_reg;
reg   [0:0] tmp_94_reg_1230_pp0_iter3_reg;
reg   [63:0] llike_1_load_reg_1234;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_7_fu_542_p11;
reg   [63:0] tmp_7_reg_1239;
reg   [63:0] llike_load_1_reg_1244;
wire   [63:0] tmp_9_fu_581_p11;
reg   [63:0] tmp_9_reg_1249;
reg   [63:0] llike_1_load_1_reg_1254;
wire   [63:0] tmp_6_fu_692_p11;
reg   [63:0] tmp_6_reg_1304;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] llike_load_3_reg_1309;
wire   [63:0] tmp_11_fu_731_p11;
reg   [63:0] tmp_11_reg_1314;
reg   [63:0] add1_reg_1319;
reg   [63:0] add52_1_reg_1324;
reg   [63:0] add52_2_reg_1329;
reg   [63:0] add52_3_reg_1334;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] p_reg_1339;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] min_p_35_reg_1346;
wire   [0:0] and_ln29_1_fu_844_p2;
reg   [0:0] and_ln29_1_reg_1353;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] p_16_reg_1358;
wire   [63:0] min_p_37_fu_850_p3;
reg   [63:0] min_p_37_reg_1365;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] p_17_reg_1372;
wire   [0:0] and_ln29_3_fu_932_p2;
reg   [0:0] and_ln29_3_reg_1379;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] p_18_reg_1384;
wire   [63:0] min_p_39_fu_938_p3;
reg   [63:0] min_p_39_reg_1391;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] and_ln29_5_fu_1020_p2;
reg   [0:0] and_ln29_5_reg_1398;
wire   [63:0] min_p_41_fu_1026_p3;
reg   [63:0] min_p_41_reg_1403;
reg   [0:0] tmp_92_reg_1410;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter3_stage0;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln26_fu_420_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_433_p1;
wire   [63:0] zext_ln26_1_fu_465_p1;
wire   [63:0] zext_ln27_1_fu_478_p1;
wire   [63:0] zext_ln26_2_fu_500_p1;
wire   [63:0] zext_ln27_2_fu_627_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln26_4_fu_653_p1;
wire   [63:0] zext_ln27_3_fu_668_p1;
reg   [63:0] min_p_fu_116;
wire   [63:0] min_p_43_fu_1114_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage3;
reg   [5:0] prev_fu_120;
wire   [5:0] add_ln25_2_fu_754_p2;
reg   [5:0] ap_sig_allocacmp_prev_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
wire    ap_block_pp0_stage0_01001;
reg    llike_1_ce1_local;
reg    llike_1_ce0_local;
reg    transition_0_ce1_local;
reg   [9:0] transition_0_address1_local;
reg    transition_0_ce0_local;
reg   [9:0] transition_0_address0_local;
reg    transition_1_ce1_local;
reg   [9:0] transition_1_address1_local;
reg    transition_1_ce0_local;
reg   [9:0] transition_1_address0_local;
reg    transition_2_ce1_local;
reg   [9:0] transition_2_address1_local;
reg    transition_2_ce0_local;
reg   [9:0] transition_2_address0_local;
reg    transition_3_ce1_local;
reg   [9:0] transition_3_address1_local;
reg    transition_3_ce0_local;
reg   [9:0] transition_3_address0_local;
reg    llike_ce0_local;
reg   [12:0] llike_address0_local;
reg   [63:0] grp_fu_377_p0;
reg   [63:0] grp_fu_377_p1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
reg   [63:0] grp_fu_381_p0;
reg   [63:0] grp_fu_381_p1;
wire   [4:0] lshr_ln7_1_fu_402_p4;
wire   [12:0] tmp_s_fu_412_p3;
wire   [9:0] add_ln_fu_425_p3;
wire   [5:0] add_ln25_fu_441_p2;
wire   [4:0] lshr_ln8_8_fu_447_p4;
wire   [12:0] tmp_85_fu_457_p3;
wire   [9:0] add_ln27_1_fu_470_p3;
wire   [4:0] add_ln8_fu_486_p2;
wire   [12:0] tmp_89_fu_492_p3;
wire   [6:0] zext_ln16_fu_398_p1;
wire   [63:0] tmp_7_fu_542_p2;
wire   [63:0] tmp_7_fu_542_p4;
wire   [63:0] tmp_7_fu_542_p6;
wire   [63:0] tmp_7_fu_542_p8;
wire   [63:0] tmp_7_fu_542_p9;
wire   [63:0] tmp_9_fu_581_p2;
wire   [63:0] tmp_9_fu_581_p4;
wire   [63:0] tmp_9_fu_581_p6;
wire   [63:0] tmp_9_fu_581_p8;
wire   [63:0] tmp_9_fu_581_p9;
wire   [9:0] shl_ln1_fu_519_p3;
wire   [9:0] add_ln27_fu_604_p2;
wire   [5:0] tmp_93_fu_610_p4;
wire   [9:0] add_ln27_3_fu_620_p3;
wire   [5:0] lshr_ln8_9_fu_635_p4;
wire   [12:0] zext_ln26_3_fu_644_p1;
wire   [12:0] add_ln26_fu_648_p2;
wire   [5:0] trunc_ln27_fu_658_p1;
wire   [9:0] add_ln27_4_fu_661_p3;
wire   [63:0] tmp_6_fu_692_p2;
wire   [63:0] tmp_6_fu_692_p4;
wire   [63:0] tmp_6_fu_692_p6;
wire   [63:0] tmp_6_fu_692_p8;
wire   [63:0] tmp_6_fu_692_p9;
wire   [63:0] tmp_11_fu_731_p2;
wire   [63:0] tmp_11_fu_731_p4;
wire   [63:0] tmp_11_fu_731_p6;
wire   [63:0] tmp_11_fu_731_p8;
wire   [63:0] tmp_11_fu_731_p9;
wire   [63:0] bitcast_ln29_fu_768_p1;
wire   [63:0] bitcast_ln29_1_fu_785_p1;
wire   [10:0] tmp_78_fu_771_p4;
wire   [51:0] trunc_ln29_fu_781_p1;
wire   [0:0] icmp_ln29_1_fu_808_p2;
wire   [0:0] icmp_ln29_fu_802_p2;
wire   [10:0] tmp_79_fu_788_p4;
wire   [51:0] trunc_ln29_1_fu_798_p1;
wire   [0:0] icmp_ln29_3_fu_826_p2;
wire   [0:0] icmp_ln29_2_fu_820_p2;
wire   [0:0] or_ln29_fu_814_p2;
wire   [0:0] and_ln29_fu_838_p2;
wire   [0:0] or_ln29_1_fu_832_p2;
wire   [63:0] bitcast_ln29_2_fu_856_p1;
wire   [63:0] bitcast_ln29_3_fu_873_p1;
wire   [10:0] tmp_82_fu_859_p4;
wire   [51:0] trunc_ln29_2_fu_869_p1;
wire   [0:0] icmp_ln29_5_fu_896_p2;
wire   [0:0] icmp_ln29_4_fu_890_p2;
wire   [10:0] tmp_83_fu_876_p4;
wire   [51:0] trunc_ln29_3_fu_886_p1;
wire   [0:0] icmp_ln29_7_fu_914_p2;
wire   [0:0] icmp_ln29_6_fu_908_p2;
wire   [0:0] or_ln29_3_fu_920_p2;
wire   [0:0] or_ln29_2_fu_902_p2;
wire   [0:0] and_ln29_2_fu_926_p2;
wire   [63:0] bitcast_ln29_4_fu_944_p1;
wire   [63:0] bitcast_ln29_5_fu_961_p1;
wire   [10:0] tmp_86_fu_947_p4;
wire   [51:0] trunc_ln29_4_fu_957_p1;
wire   [0:0] icmp_ln29_9_fu_984_p2;
wire   [0:0] icmp_ln29_8_fu_978_p2;
wire   [10:0] tmp_87_fu_964_p4;
wire   [51:0] trunc_ln29_5_fu_974_p1;
wire   [0:0] icmp_ln29_11_fu_1002_p2;
wire   [0:0] icmp_ln29_10_fu_996_p2;
wire   [0:0] or_ln29_5_fu_1008_p2;
wire   [0:0] or_ln29_4_fu_990_p2;
wire   [0:0] and_ln29_4_fu_1014_p2;
wire   [63:0] bitcast_ln29_6_fu_1033_p1;
wire   [63:0] bitcast_ln29_7_fu_1050_p1;
wire   [10:0] tmp_90_fu_1036_p4;
wire   [51:0] trunc_ln29_6_fu_1046_p1;
wire   [0:0] icmp_ln29_13_fu_1073_p2;
wire   [0:0] icmp_ln29_12_fu_1067_p2;
wire   [10:0] tmp_91_fu_1053_p4;
wire   [51:0] trunc_ln29_7_fu_1063_p1;
wire   [0:0] icmp_ln29_15_fu_1091_p2;
wire   [0:0] icmp_ln29_14_fu_1085_p2;
wire   [0:0] or_ln29_7_fu_1097_p2;
wire   [0:0] or_ln29_6_fu_1079_p2;
wire   [0:0] and_ln29_6_fu_1103_p2;
wire   [0:0] and_ln29_7_fu_1109_p2;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage0_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [8:0] ap_NS_fsm;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage8_00001;
wire   [1:0] tmp_7_fu_542_p1;
wire   [1:0] tmp_7_fu_542_p3;
wire  signed [1:0] tmp_7_fu_542_p5;
wire  signed [1:0] tmp_7_fu_542_p7;
wire   [1:0] tmp_9_fu_581_p1;
wire   [1:0] tmp_9_fu_581_p3;
wire  signed [1:0] tmp_9_fu_581_p5;
wire  signed [1:0] tmp_9_fu_581_p7;
wire   [1:0] tmp_6_fu_692_p1;
wire   [1:0] tmp_6_fu_692_p3;
wire  signed [1:0] tmp_6_fu_692_p5;
wire  signed [1:0] tmp_6_fu_692_p7;
wire   [1:0] tmp_11_fu_731_p1;
wire   [1:0] tmp_11_fu_731_p3;
wire  signed [1:0] tmp_11_fu_731_p5;
wire  signed [1:0] tmp_11_fu_731_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_116 = 64'd0;
#0 prev_fu_120 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U24(.din0(tmp_7_fu_542_p2),.din1(tmp_7_fu_542_p4),.din2(tmp_7_fu_542_p6),.din3(tmp_7_fu_542_p8),.def(tmp_7_fu_542_p9),.sel(empty_10),.dout(tmp_7_fu_542_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U25(.din0(tmp_9_fu_581_p2),.din1(tmp_9_fu_581_p4),.din2(tmp_9_fu_581_p6),.din3(tmp_9_fu_581_p8),.def(tmp_9_fu_581_p9),.sel(empty_10),.dout(tmp_9_fu_581_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U26(.din0(tmp_6_fu_692_p2),.din1(tmp_6_fu_692_p4),.din2(tmp_6_fu_692_p6),.din3(tmp_6_fu_692_p8),.def(tmp_6_fu_692_p9),.sel(empty_10),.dout(tmp_6_fu_692_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U27(.din0(tmp_11_fu_731_p2),.din1(tmp_11_fu_731_p4),.din2(tmp_11_fu_731_p6),.din3(tmp_11_fu_731_p8),.def(tmp_11_fu_731_p9),.sel(empty_10),.dout(tmp_11_fu_731_p11));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_exit_pp0_iter3_stage0) | ((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0)) | ((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_fu_116 <= min_p_34;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_94_reg_1230_pp0_iter3_reg == 1'd0))) begin
        min_p_fu_116 <= min_p_43_fu_1114_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prev_fu_120 <= 6'd1;
    end else if (((tmp_94_reg_1230 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        prev_fu_120 <= add_ln25_2_fu_754_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add1_reg_1319 <= grp_fu_594_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add52_1_reg_1324 <= grp_fu_594_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add52_2_reg_1329 <= grp_fu_594_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add52_3_reg_1334 <= grp_fu_594_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln25_1_reg_1224 <= add_ln25_1_fu_505_p2;
        prev_1_reg_1163 <= ap_sig_allocacmp_prev_1;
        tmp_94_reg_1230 <= add_ln25_1_fu_505_p2[32'd6];
        tmp_94_reg_1230_pp0_iter1_reg <= tmp_94_reg_1230;
        tmp_94_reg_1230_pp0_iter2_reg <= tmp_94_reg_1230_pp0_iter1_reg;
        tmp_94_reg_1230_pp0_iter3_reg <= tmp_94_reg_1230_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln29_1_reg_1353 <= and_ln29_1_fu_844_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln29_3_reg_1379 <= and_ln29_3_fu_932_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        and_ln29_5_reg_1398 <= and_ln29_5_fu_1020_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_1_reg_1254 <= llike_1_q0;
        llike_1_load_reg_1234 <= llike_1_q1;
        llike_load_1_reg_1244 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_load_3_reg_1309 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_35_reg_1346 <= min_p_fu_116;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_37_reg_1365 <= min_p_37_fu_850_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_39_reg_1391 <= min_p_39_fu_938_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_41_reg_1403 <= min_p_41_fu_1026_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        p_16_reg_1358 <= grp_fu_594_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        p_17_reg_1372 <= grp_fu_594_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        p_18_reg_1384 <= grp_fu_594_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        p_reg_1339 <= grp_fu_594_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_11_reg_1314 <= tmp_11_fu_731_p11;
        tmp_6_reg_1304 <= tmp_6_fu_692_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_7_reg_1239 <= tmp_7_fu_542_p11;
        tmp_9_reg_1249 <= tmp_9_fu_581_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_92_reg_1410 <= grp_fu_1351_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_94_reg_1230 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_94_reg_1230_pp0_iter2_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
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
        ap_sig_allocacmp_prev_1 = 6'd1;
    end else begin
        ap_sig_allocacmp_prev_1 = prev_fu_120;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_377_p0 = add52_3_reg_1334;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_377_p0 = add52_2_reg_1329;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_377_p0 = add52_1_reg_1324;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_377_p0 = add1_reg_1319;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_377_p0 = llike_load_3_reg_1309;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_377_p0 = llike_1_load_1_reg_1254;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_377_p0 = llike_load_1_reg_1244;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_377_p0 = llike_1_load_reg_1234;
    end else begin
        grp_fu_377_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_377_p1 = tmp_5;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_377_p1 = tmp_11_reg_1314;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_377_p1 = tmp_6_reg_1304;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_377_p1 = tmp_9_reg_1249;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_377_p1 = tmp_7_reg_1239;
    end else begin
        grp_fu_377_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_381_p0 = p_18_reg_1384;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_381_p0 = p_17_reg_1372;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_381_p0 = p_16_reg_1358;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_381_p0 = p_reg_1339;
    end else begin
        grp_fu_381_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_381_p1 = min_p_41_fu_1026_p3;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_381_p1 = min_p_39_fu_938_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_381_p1 = min_p_37_fu_850_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_381_p1 = min_p_fu_116;
    end else begin
        grp_fu_381_p1 = 'bx;
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
            llike_address0_local = zext_ln26_4_fu_653_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln26_1_fu_465_p1;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_94_reg_1230_pp0_iter2_reg == 1'd1))) begin
        min_p_42_out_ap_vld = 1'b1;
    end else begin
        min_p_42_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln27_3_fu_668_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln27_1_fu_478_p1;
        end else begin
            transition_0_address0_local = 'bx;
        end
    end else begin
        transition_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln27_2_fu_627_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address1_local = zext_ln27_fu_433_p1;
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
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_0_ce1_local = 1'b1;
    end else begin
        transition_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln27_3_fu_668_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln27_1_fu_478_p1;
        end else begin
            transition_1_address0_local = 'bx;
        end
    end else begin
        transition_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln27_2_fu_627_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address1_local = zext_ln27_fu_433_p1;
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
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_1_ce1_local = 1'b1;
    end else begin
        transition_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address0_local = zext_ln27_3_fu_668_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address0_local = zext_ln27_1_fu_478_p1;
        end else begin
            transition_2_address0_local = 'bx;
        end
    end else begin
        transition_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address1_local = zext_ln27_2_fu_627_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address1_local = zext_ln27_fu_433_p1;
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
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_2_ce1_local = 1'b1;
    end else begin
        transition_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address0_local = zext_ln27_3_fu_668_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address0_local = zext_ln27_1_fu_478_p1;
        end else begin
            transition_3_address0_local = 'bx;
        end
    end else begin
        transition_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address1_local = zext_ln27_2_fu_627_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address1_local = zext_ln27_fu_433_p1;
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
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_3_ce1_local = 1'b1;
    end else begin
        transition_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln25_1_fu_505_p2 = (zext_ln16_fu_398_p1 + 7'd3);
assign add_ln25_2_fu_754_p2 = (prev_1_reg_1163 + 6'd4);
assign add_ln25_fu_441_p2 = (ap_sig_allocacmp_prev_1 + 6'd1);
assign add_ln26_fu_648_p2 = (empty + zext_ln26_3_fu_644_p1);
assign add_ln27_1_fu_470_p3 = {{add_ln25_fu_441_p2}, {lshr_ln}};
assign add_ln27_3_fu_620_p3 = {{tmp_93_fu_610_p4}, {lshr_ln}};
assign add_ln27_4_fu_661_p3 = {{trunc_ln27_fu_658_p1}, {lshr_ln}};
assign add_ln27_fu_604_p2 = (shl_ln1_fu_519_p3 + 10'd32);
assign add_ln8_fu_486_p2 = (lshr_ln7_1_fu_402_p4 + 5'd1);
assign add_ln_fu_425_p3 = {{ap_sig_allocacmp_prev_1}, {lshr_ln}};
assign and_ln29_1_fu_844_p2 = (or_ln29_1_fu_832_p2 & and_ln29_fu_838_p2);
assign and_ln29_2_fu_926_p2 = (or_ln29_3_fu_920_p2 & or_ln29_2_fu_902_p2);
assign and_ln29_3_fu_932_p2 = (grp_fu_1351_p_dout0 & and_ln29_2_fu_926_p2);
assign and_ln29_4_fu_1014_p2 = (or_ln29_5_fu_1008_p2 & or_ln29_4_fu_990_p2);
assign and_ln29_5_fu_1020_p2 = (grp_fu_1351_p_dout0 & and_ln29_4_fu_1014_p2);
assign and_ln29_6_fu_1103_p2 = (or_ln29_7_fu_1097_p2 & or_ln29_6_fu_1079_p2);
assign and_ln29_7_fu_1109_p2 = (tmp_92_reg_1410 & and_ln29_6_fu_1103_p2);
assign and_ln29_fu_838_p2 = (or_ln29_fu_814_p2 & grp_fu_1351_p_dout0);
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
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage8;
assign ap_ready = ap_ready_sig;
assign bitcast_ln29_1_fu_785_p1 = min_p_35_reg_1346;
assign bitcast_ln29_2_fu_856_p1 = p_16_reg_1358;
assign bitcast_ln29_3_fu_873_p1 = min_p_37_reg_1365;
assign bitcast_ln29_4_fu_944_p1 = p_17_reg_1372;
assign bitcast_ln29_5_fu_961_p1 = min_p_39_reg_1391;
assign bitcast_ln29_6_fu_1033_p1 = p_18_reg_1384;
assign bitcast_ln29_7_fu_1050_p1 = min_p_41_reg_1403;
assign bitcast_ln29_fu_768_p1 = p_reg_1339;
assign grp_fu_1351_p_ce = 1'b1;
assign grp_fu_1351_p_din0 = grp_fu_381_p0;
assign grp_fu_1351_p_din1 = grp_fu_381_p1;
assign grp_fu_1351_p_opcode = 5'd4;
assign grp_fu_594_p_ce = 1'b1;
assign grp_fu_594_p_din0 = grp_fu_377_p0;
assign grp_fu_594_p_din1 = grp_fu_377_p1;
assign grp_fu_594_p_opcode = 2'd0;
assign icmp_ln29_10_fu_996_p2 = ((tmp_87_fu_964_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_11_fu_1002_p2 = ((trunc_ln29_5_fu_974_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_12_fu_1067_p2 = ((tmp_90_fu_1036_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_13_fu_1073_p2 = ((trunc_ln29_6_fu_1046_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_14_fu_1085_p2 = ((tmp_91_fu_1053_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_15_fu_1091_p2 = ((trunc_ln29_7_fu_1063_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_808_p2 = ((trunc_ln29_fu_781_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_820_p2 = ((tmp_79_fu_788_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_826_p2 = ((trunc_ln29_1_fu_798_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_890_p2 = ((tmp_82_fu_859_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_896_p2 = ((trunc_ln29_2_fu_869_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_908_p2 = ((tmp_83_fu_876_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_914_p2 = ((trunc_ln29_3_fu_886_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_8_fu_978_p2 = ((tmp_86_fu_947_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_9_fu_984_p2 = ((trunc_ln29_4_fu_957_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_802_p2 = ((tmp_78_fu_771_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = zext_ln26_2_fu_500_p1;
assign llike_1_address1 = zext_ln26_fu_420_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_ce1 = llike_1_ce1_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln7_1_fu_402_p4 = {{ap_sig_allocacmp_prev_1[5:1]}};
assign lshr_ln8_8_fu_447_p4 = {{add_ln25_fu_441_p2[5:1]}};
assign lshr_ln8_9_fu_635_p4 = {{add_ln25_1_reg_1224[6:1]}};
assign min_p_37_fu_850_p3 = ((and_ln29_1_reg_1353[0:0] == 1'b1) ? p_reg_1339 : min_p_35_reg_1346);
assign min_p_39_fu_938_p3 = ((and_ln29_3_reg_1379[0:0] == 1'b1) ? p_16_reg_1358 : min_p_37_reg_1365);
assign min_p_41_fu_1026_p3 = ((and_ln29_5_reg_1398[0:0] == 1'b1) ? p_17_reg_1372 : min_p_39_reg_1391);
assign min_p_42_out = ((and_ln29_5_reg_1398[0:0] == 1'b1) ? p_17_reg_1372 : min_p_39_reg_1391);
assign min_p_43_fu_1114_p3 = ((and_ln29_7_fu_1109_p2[0:0] == 1'b1) ? p_18_reg_1384 : min_p_41_reg_1403);
assign or_ln29_1_fu_832_p2 = (icmp_ln29_3_fu_826_p2 | icmp_ln29_2_fu_820_p2);
assign or_ln29_2_fu_902_p2 = (icmp_ln29_5_fu_896_p2 | icmp_ln29_4_fu_890_p2);
assign or_ln29_3_fu_920_p2 = (icmp_ln29_7_fu_914_p2 | icmp_ln29_6_fu_908_p2);
assign or_ln29_4_fu_990_p2 = (icmp_ln29_9_fu_984_p2 | icmp_ln29_8_fu_978_p2);
assign or_ln29_5_fu_1008_p2 = (icmp_ln29_11_fu_1002_p2 | icmp_ln29_10_fu_996_p2);
assign or_ln29_6_fu_1079_p2 = (icmp_ln29_13_fu_1073_p2 | icmp_ln29_12_fu_1067_p2);
assign or_ln29_7_fu_1097_p2 = (icmp_ln29_15_fu_1091_p2 | icmp_ln29_14_fu_1085_p2);
assign or_ln29_fu_814_p2 = (icmp_ln29_fu_802_p2 | icmp_ln29_1_fu_808_p2);
assign shl_ln1_fu_519_p3 = {{prev_1_reg_1163}, {4'd0}};
assign tmp_11_fu_731_p2 = transition_0_q0;
assign tmp_11_fu_731_p4 = transition_1_q0;
assign tmp_11_fu_731_p6 = transition_2_q0;
assign tmp_11_fu_731_p8 = transition_3_q0;
assign tmp_11_fu_731_p9 = 'bx;
assign tmp_6_fu_692_p2 = transition_0_q1;
assign tmp_6_fu_692_p4 = transition_1_q1;
assign tmp_6_fu_692_p6 = transition_2_q1;
assign tmp_6_fu_692_p8 = transition_3_q1;
assign tmp_6_fu_692_p9 = 'bx;
assign tmp_78_fu_771_p4 = {{bitcast_ln29_fu_768_p1[62:52]}};
assign tmp_79_fu_788_p4 = {{bitcast_ln29_1_fu_785_p1[62:52]}};
assign tmp_7_fu_542_p2 = transition_0_q1;
assign tmp_7_fu_542_p4 = transition_1_q1;
assign tmp_7_fu_542_p6 = transition_2_q1;
assign tmp_7_fu_542_p8 = transition_3_q1;
assign tmp_7_fu_542_p9 = 'bx;
assign tmp_82_fu_859_p4 = {{bitcast_ln29_2_fu_856_p1[62:52]}};
assign tmp_83_fu_876_p4 = {{bitcast_ln29_3_fu_873_p1[62:52]}};
assign tmp_85_fu_457_p3 = {{empty_9}, {lshr_ln8_8_fu_447_p4}};
assign tmp_86_fu_947_p4 = {{bitcast_ln29_4_fu_944_p1[62:52]}};
assign tmp_87_fu_964_p4 = {{bitcast_ln29_5_fu_961_p1[62:52]}};
assign tmp_89_fu_492_p3 = {{empty_9}, {add_ln8_fu_486_p2}};
assign tmp_90_fu_1036_p4 = {{bitcast_ln29_6_fu_1033_p1[62:52]}};
assign tmp_91_fu_1053_p4 = {{bitcast_ln29_7_fu_1050_p1[62:52]}};
assign tmp_93_fu_610_p4 = {{add_ln27_fu_604_p2[9:4]}};
assign tmp_9_fu_581_p2 = transition_0_q0;
assign tmp_9_fu_581_p4 = transition_1_q0;
assign tmp_9_fu_581_p6 = transition_2_q0;
assign tmp_9_fu_581_p8 = transition_3_q0;
assign tmp_9_fu_581_p9 = 'bx;
assign tmp_s_fu_412_p3 = {{empty_9}, {lshr_ln7_1_fu_402_p4}};
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
assign trunc_ln27_fu_658_p1 = add_ln25_1_reg_1224[5:0];
assign trunc_ln29_1_fu_798_p1 = bitcast_ln29_1_fu_785_p1[51:0];
assign trunc_ln29_2_fu_869_p1 = bitcast_ln29_2_fu_856_p1[51:0];
assign trunc_ln29_3_fu_886_p1 = bitcast_ln29_3_fu_873_p1[51:0];
assign trunc_ln29_4_fu_957_p1 = bitcast_ln29_4_fu_944_p1[51:0];
assign trunc_ln29_5_fu_974_p1 = bitcast_ln29_5_fu_961_p1[51:0];
assign trunc_ln29_6_fu_1046_p1 = bitcast_ln29_6_fu_1033_p1[51:0];
assign trunc_ln29_7_fu_1063_p1 = bitcast_ln29_7_fu_1050_p1[51:0];
assign trunc_ln29_fu_781_p1 = bitcast_ln29_fu_768_p1[51:0];
assign zext_ln16_fu_398_p1 = ap_sig_allocacmp_prev_1;
assign zext_ln26_1_fu_465_p1 = tmp_85_fu_457_p3;
assign zext_ln26_2_fu_500_p1 = tmp_89_fu_492_p3;
assign zext_ln26_3_fu_644_p1 = lshr_ln8_9_fu_635_p4;
assign zext_ln26_4_fu_653_p1 = add_ln26_fu_648_p2;
assign zext_ln26_fu_420_p1 = tmp_s_fu_412_p3;
assign zext_ln27_1_fu_478_p1 = add_ln27_1_fu_470_p3;
assign zext_ln27_2_fu_627_p1 = add_ln27_3_fu_620_p3;
assign zext_ln27_3_fu_668_p1 = add_ln27_4_fu_661_p3;
assign zext_ln27_fu_433_p1 = add_ln_fu_425_p3;
endmodule 