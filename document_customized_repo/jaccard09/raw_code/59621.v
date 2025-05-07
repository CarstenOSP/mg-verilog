module viterbi_viterbi_Pipeline_L_prev_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_10,empty_9,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,lshr_ln7,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,empty_10,tmp_s,empty,llike_address0,llike_ce0,llike_q0,min_p_18_out,min_p_18_out_ap_vld,grp_fu_629_p_din0,grp_fu_629_p_din1,grp_fu_629_p_opcode,grp_fu_629_p_dout0,grp_fu_629_p_ce,grp_fu_1368_p_din0,grp_fu_1368_p_din1,grp_fu_1368_p_opcode,grp_fu_1368_p_dout0,grp_fu_1368_p_ce); 
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
input  [63:0] min_p_10;
input  [7:0] empty_9;
output  [11:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [11:0] llike_2_address0;
output   llike_2_ce0;
input  [63:0] llike_2_q0;
output  [11:0] llike_3_address0;
output   llike_3_ce0;
input  [63:0] llike_3_q0;
input  [3:0] lshr_ln7;
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
input  [63:0] tmp_s;
input  [11:0] empty;
output  [11:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [63:0] min_p_18_out;
output   min_p_18_out_ap_vld;
output  [63:0] grp_fu_629_p_din0;
output  [63:0] grp_fu_629_p_din1;
output  [1:0] grp_fu_629_p_opcode;
input  [63:0] grp_fu_629_p_dout0;
output   grp_fu_629_p_ce;
output  [63:0] grp_fu_1368_p_din0;
output  [63:0] grp_fu_1368_p_din1;
output  [4:0] grp_fu_1368_p_opcode;
input  [0:0] grp_fu_1368_p_dout0;
output   grp_fu_1368_p_ce;
reg ap_idle;
reg min_p_18_out_ap_vld;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] tmp_16_reg_1216;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] prev_1_reg_1145;
reg   [5:0] tmp_26_reg_1205;
wire   [6:0] add_ln25_fu_511_p2;
reg   [6:0] add_ln25_reg_1210;
reg   [0:0] tmp_16_reg_1216_pp0_iter1_reg;
reg   [0:0] tmp_16_reg_1216_pp0_iter2_reg;
reg   [0:0] tmp_16_reg_1216_pp0_iter3_reg;
reg   [63:0] llike_1_load_reg_1220;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_6_fu_541_p11;
reg   [63:0] tmp_6_reg_1225;
reg   [63:0] llike_2_load_reg_1230;
wire   [63:0] tmp_8_fu_580_p11;
reg   [63:0] tmp_8_reg_1235;
reg   [63:0] llike_3_load_reg_1240;
wire   [63:0] tmp_5_fu_674_p11;
reg   [63:0] tmp_5_reg_1290;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] llike_load_reg_1295;
wire   [63:0] tmp_11_fu_713_p11;
reg   [63:0] tmp_11_reg_1300;
reg   [63:0] add1_reg_1305;
reg   [63:0] add52_1_reg_1310;
reg   [63:0] add52_2_reg_1315;
reg   [63:0] add52_3_reg_1320;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] p_reg_1325;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] min_p_11_reg_1332;
wire   [0:0] and_ln29_1_fu_826_p2;
reg   [0:0] and_ln29_1_reg_1339;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] p_4_reg_1344;
wire   [63:0] min_p_13_fu_832_p3;
reg   [63:0] min_p_13_reg_1351;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] p_5_reg_1358;
wire   [0:0] and_ln29_3_fu_914_p2;
reg   [0:0] and_ln29_3_reg_1365;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] p_6_reg_1370;
wire   [63:0] min_p_15_fu_920_p3;
reg   [63:0] min_p_15_reg_1377;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] and_ln29_5_fu_1002_p2;
reg   [0:0] and_ln29_5_reg_1384;
wire   [63:0] min_p_17_fu_1008_p3;
reg   [63:0] min_p_17_reg_1389;
reg   [0:0] tmp_32_reg_1396;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter3_stage0;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln26_fu_432_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_455_p1;
wire   [63:0] zext_ln27_1_fu_487_p1;
wire   [63:0] zext_ln27_2_fu_609_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln26_2_fu_635_p1;
wire   [63:0] zext_ln27_3_fu_650_p1;
reg   [63:0] min_p_fu_122;
wire   [63:0] min_p_19_fu_1096_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage3;
reg   [5:0] prev_fu_126;
wire   [5:0] add_ln25_1_fu_736_p2;
reg   [5:0] ap_sig_allocacmp_prev_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
wire    ap_block_pp0_stage0_01001;
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
reg    llike_2_ce0_local;
reg    llike_3_ce0_local;
reg    llike_ce0_local;
reg   [63:0] grp_fu_389_p0;
reg   [63:0] grp_fu_389_p1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
reg   [63:0] grp_fu_393_p0;
reg   [63:0] grp_fu_393_p1;
wire   [3:0] lshr_ln7_1_fu_414_p4;
wire   [11:0] tmp_18_fu_424_p3;
wire   [9:0] add_ln_fu_447_p3;
wire   [9:0] shl_ln1_fu_439_p3;
wire   [9:0] add_ln27_fu_463_p2;
wire   [5:0] tmp_22_fu_469_p4;
wire   [9:0] add_ln27_2_fu_479_p3;
wire   [9:0] add_ln27_1_fu_495_p2;
wire   [6:0] zext_ln16_fu_410_p1;
wire   [63:0] tmp_6_fu_541_p2;
wire   [63:0] tmp_6_fu_541_p4;
wire   [63:0] tmp_6_fu_541_p6;
wire   [63:0] tmp_6_fu_541_p8;
wire   [63:0] tmp_6_fu_541_p9;
wire   [63:0] tmp_8_fu_580_p2;
wire   [63:0] tmp_8_fu_580_p4;
wire   [63:0] tmp_8_fu_580_p6;
wire   [63:0] tmp_8_fu_580_p8;
wire   [63:0] tmp_8_fu_580_p9;
wire   [9:0] add_ln27_4_fu_603_p3;
wire   [4:0] lshr_ln8_1_fu_617_p4;
wire   [11:0] zext_ln26_1_fu_626_p1;
wire   [11:0] add_ln26_fu_630_p2;
wire   [5:0] trunc_ln27_fu_640_p1;
wire   [9:0] add_ln27_5_fu_643_p3;
wire   [63:0] tmp_5_fu_674_p2;
wire   [63:0] tmp_5_fu_674_p4;
wire   [63:0] tmp_5_fu_674_p6;
wire   [63:0] tmp_5_fu_674_p8;
wire   [63:0] tmp_5_fu_674_p9;
wire   [63:0] tmp_11_fu_713_p2;
wire   [63:0] tmp_11_fu_713_p4;
wire   [63:0] tmp_11_fu_713_p6;
wire   [63:0] tmp_11_fu_713_p8;
wire   [63:0] tmp_11_fu_713_p9;
wire   [63:0] bitcast_ln29_fu_750_p1;
wire   [63:0] bitcast_ln29_1_fu_767_p1;
wire   [10:0] tmp_19_fu_753_p4;
wire   [51:0] trunc_ln29_fu_763_p1;
wire   [0:0] icmp_ln29_1_fu_790_p2;
wire   [0:0] icmp_ln29_fu_784_p2;
wire   [10:0] tmp_20_fu_770_p4;
wire   [51:0] trunc_ln29_1_fu_780_p1;
wire   [0:0] icmp_ln29_3_fu_808_p2;
wire   [0:0] icmp_ln29_2_fu_802_p2;
wire   [0:0] or_ln29_fu_796_p2;
wire   [0:0] and_ln29_fu_820_p2;
wire   [0:0] or_ln29_1_fu_814_p2;
wire   [63:0] bitcast_ln29_2_fu_838_p1;
wire   [63:0] bitcast_ln29_3_fu_855_p1;
wire   [10:0] tmp_23_fu_841_p4;
wire   [51:0] trunc_ln29_2_fu_851_p1;
wire   [0:0] icmp_ln29_5_fu_878_p2;
wire   [0:0] icmp_ln29_4_fu_872_p2;
wire   [10:0] tmp_24_fu_858_p4;
wire   [51:0] trunc_ln29_3_fu_868_p1;
wire   [0:0] icmp_ln29_7_fu_896_p2;
wire   [0:0] icmp_ln29_6_fu_890_p2;
wire   [0:0] or_ln29_3_fu_902_p2;
wire   [0:0] or_ln29_2_fu_884_p2;
wire   [0:0] and_ln29_2_fu_908_p2;
wire   [63:0] bitcast_ln29_4_fu_926_p1;
wire   [63:0] bitcast_ln29_5_fu_943_p1;
wire   [10:0] tmp_27_fu_929_p4;
wire   [51:0] trunc_ln29_4_fu_939_p1;
wire   [0:0] icmp_ln29_9_fu_966_p2;
wire   [0:0] icmp_ln29_8_fu_960_p2;
wire   [10:0] tmp_28_fu_946_p4;
wire   [51:0] trunc_ln29_5_fu_956_p1;
wire   [0:0] icmp_ln29_11_fu_984_p2;
wire   [0:0] icmp_ln29_10_fu_978_p2;
wire   [0:0] or_ln29_5_fu_990_p2;
wire   [0:0] or_ln29_4_fu_972_p2;
wire   [0:0] and_ln29_4_fu_996_p2;
wire   [63:0] bitcast_ln29_6_fu_1015_p1;
wire   [63:0] bitcast_ln29_7_fu_1032_p1;
wire   [10:0] tmp_30_fu_1018_p4;
wire   [51:0] trunc_ln29_6_fu_1028_p1;
wire   [0:0] icmp_ln29_13_fu_1055_p2;
wire   [0:0] icmp_ln29_12_fu_1049_p2;
wire   [10:0] tmp_31_fu_1035_p4;
wire   [51:0] trunc_ln29_7_fu_1045_p1;
wire   [0:0] icmp_ln29_15_fu_1073_p2;
wire   [0:0] icmp_ln29_14_fu_1067_p2;
wire   [0:0] or_ln29_7_fu_1079_p2;
wire   [0:0] or_ln29_6_fu_1061_p2;
wire   [0:0] and_ln29_6_fu_1085_p2;
wire   [0:0] and_ln29_7_fu_1091_p2;
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
wire   [1:0] tmp_6_fu_541_p1;
wire   [1:0] tmp_6_fu_541_p3;
wire  signed [1:0] tmp_6_fu_541_p5;
wire  signed [1:0] tmp_6_fu_541_p7;
wire   [1:0] tmp_8_fu_580_p1;
wire   [1:0] tmp_8_fu_580_p3;
wire  signed [1:0] tmp_8_fu_580_p5;
wire  signed [1:0] tmp_8_fu_580_p7;
wire   [1:0] tmp_5_fu_674_p1;
wire   [1:0] tmp_5_fu_674_p3;
wire  signed [1:0] tmp_5_fu_674_p5;
wire  signed [1:0] tmp_5_fu_674_p7;
wire   [1:0] tmp_11_fu_713_p1;
wire   [1:0] tmp_11_fu_713_p3;
wire  signed [1:0] tmp_11_fu_713_p5;
wire  signed [1:0] tmp_11_fu_713_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_122 = 64'd0;
#0 prev_fu_126 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U26(.din0(tmp_6_fu_541_p2),.din1(tmp_6_fu_541_p4),.din2(tmp_6_fu_541_p6),.din3(tmp_6_fu_541_p8),.def(tmp_6_fu_541_p9),.sel(empty_10),.dout(tmp_6_fu_541_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U27(.din0(tmp_8_fu_580_p2),.din1(tmp_8_fu_580_p4),.din2(tmp_8_fu_580_p6),.din3(tmp_8_fu_580_p8),.def(tmp_8_fu_580_p9),.sel(empty_10),.dout(tmp_8_fu_580_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U28(.din0(tmp_5_fu_674_p2),.din1(tmp_5_fu_674_p4),.din2(tmp_5_fu_674_p6),.din3(tmp_5_fu_674_p8),.def(tmp_5_fu_674_p9),.sel(empty_10),.dout(tmp_5_fu_674_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U29(.din0(tmp_11_fu_713_p2),.din1(tmp_11_fu_713_p4),.din2(tmp_11_fu_713_p6),.din3(tmp_11_fu_713_p8),.def(tmp_11_fu_713_p9),.sel(empty_10),.dout(tmp_11_fu_713_p11));
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
        min_p_fu_122 <= min_p_10;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_16_reg_1216_pp0_iter3_reg == 1'd0))) begin
        min_p_fu_122 <= min_p_19_fu_1096_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prev_fu_126 <= 6'd1;
    end else if (((tmp_16_reg_1216 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        prev_fu_126 <= add_ln25_1_fu_736_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add1_reg_1305 <= grp_fu_629_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add52_1_reg_1310 <= grp_fu_629_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add52_2_reg_1315 <= grp_fu_629_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add52_3_reg_1320 <= grp_fu_629_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln25_reg_1210 <= add_ln25_fu_511_p2;
        prev_1_reg_1145 <= ap_sig_allocacmp_prev_1;
        tmp_16_reg_1216 <= add_ln25_fu_511_p2[32'd6];
        tmp_16_reg_1216_pp0_iter1_reg <= tmp_16_reg_1216;
        tmp_16_reg_1216_pp0_iter2_reg <= tmp_16_reg_1216_pp0_iter1_reg;
        tmp_16_reg_1216_pp0_iter3_reg <= tmp_16_reg_1216_pp0_iter2_reg;
        tmp_26_reg_1205 <= {{add_ln27_1_fu_495_p2[9:4]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln29_1_reg_1339 <= and_ln29_1_fu_826_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln29_3_reg_1365 <= and_ln29_3_fu_914_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        and_ln29_5_reg_1384 <= and_ln29_5_fu_1002_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_reg_1220 <= llike_1_q0;
        llike_2_load_reg_1230 <= llike_2_q0;
        llike_3_load_reg_1240 <= llike_3_q0;
        tmp_6_reg_1225 <= tmp_6_fu_541_p11;
        tmp_8_reg_1235 <= tmp_8_fu_580_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_load_reg_1295 <= llike_q0;
        tmp_11_reg_1300 <= tmp_11_fu_713_p11;
        tmp_5_reg_1290 <= tmp_5_fu_674_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_11_reg_1332 <= min_p_fu_122;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_13_reg_1351 <= min_p_13_fu_832_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_15_reg_1377 <= min_p_15_fu_920_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_17_reg_1389 <= min_p_17_fu_1008_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        p_4_reg_1344 <= grp_fu_629_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        p_5_reg_1358 <= grp_fu_629_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        p_6_reg_1370 <= grp_fu_629_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        p_reg_1325 <= grp_fu_629_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_32_reg_1396 <= grp_fu_1368_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_16_reg_1216 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_16_reg_1216_pp0_iter2_reg == 1'd1))) begin
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
        ap_sig_allocacmp_prev_1 = prev_fu_126;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_389_p0 = add52_3_reg_1320;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_389_p0 = add52_2_reg_1315;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_389_p0 = add52_1_reg_1310;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_389_p0 = add1_reg_1305;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_389_p0 = llike_load_reg_1295;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_389_p0 = llike_3_load_reg_1240;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_389_p0 = llike_2_load_reg_1230;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_389_p0 = llike_1_load_reg_1220;
    end else begin
        grp_fu_389_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_389_p1 = tmp_s;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_389_p1 = tmp_11_reg_1300;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_389_p1 = tmp_5_reg_1290;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_389_p1 = tmp_8_reg_1235;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_389_p1 = tmp_6_reg_1225;
    end else begin
        grp_fu_389_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_393_p0 = p_6_reg_1370;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_393_p0 = p_5_reg_1358;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_393_p0 = p_4_reg_1344;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_393_p0 = p_reg_1325;
    end else begin
        grp_fu_393_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_393_p1 = min_p_17_fu_1008_p3;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_393_p1 = min_p_15_fu_920_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_393_p1 = min_p_13_fu_832_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_393_p1 = min_p_fu_122;
    end else begin
        grp_fu_393_p1 = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_16_reg_1216_pp0_iter2_reg == 1'd1))) begin
        min_p_18_out_ap_vld = 1'b1;
    end else begin
        min_p_18_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln27_3_fu_650_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln27_1_fu_487_p1;
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
            transition_0_address1_local = zext_ln27_2_fu_609_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address1_local = zext_ln27_fu_455_p1;
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
            transition_1_address0_local = zext_ln27_3_fu_650_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln27_1_fu_487_p1;
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
            transition_1_address1_local = zext_ln27_2_fu_609_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address1_local = zext_ln27_fu_455_p1;
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
            transition_2_address0_local = zext_ln27_3_fu_650_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address0_local = zext_ln27_1_fu_487_p1;
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
            transition_2_address1_local = zext_ln27_2_fu_609_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address1_local = zext_ln27_fu_455_p1;
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
            transition_3_address0_local = zext_ln27_3_fu_650_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address0_local = zext_ln27_1_fu_487_p1;
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
            transition_3_address1_local = zext_ln27_2_fu_609_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address1_local = zext_ln27_fu_455_p1;
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
assign add_ln25_1_fu_736_p2 = (prev_1_reg_1145 + 6'd4);
assign add_ln25_fu_511_p2 = (zext_ln16_fu_410_p1 + 7'd3);
assign add_ln26_fu_630_p2 = (empty + zext_ln26_1_fu_626_p1);
assign add_ln27_1_fu_495_p2 = (shl_ln1_fu_439_p3 + 10'd32);
assign add_ln27_2_fu_479_p3 = {{tmp_22_fu_469_p4}, {lshr_ln7}};
assign add_ln27_4_fu_603_p3 = {{tmp_26_reg_1205}, {lshr_ln7}};
assign add_ln27_5_fu_643_p3 = {{trunc_ln27_fu_640_p1}, {lshr_ln7}};
assign add_ln27_fu_463_p2 = (shl_ln1_fu_439_p3 + 10'd16);
assign add_ln_fu_447_p3 = {{ap_sig_allocacmp_prev_1}, {lshr_ln7}};
assign and_ln29_1_fu_826_p2 = (or_ln29_1_fu_814_p2 & and_ln29_fu_820_p2);
assign and_ln29_2_fu_908_p2 = (or_ln29_3_fu_902_p2 & or_ln29_2_fu_884_p2);
assign and_ln29_3_fu_914_p2 = (grp_fu_1368_p_dout0 & and_ln29_2_fu_908_p2);
assign and_ln29_4_fu_996_p2 = (or_ln29_5_fu_990_p2 & or_ln29_4_fu_972_p2);
assign and_ln29_5_fu_1002_p2 = (grp_fu_1368_p_dout0 & and_ln29_4_fu_996_p2);
assign and_ln29_6_fu_1085_p2 = (or_ln29_7_fu_1079_p2 & or_ln29_6_fu_1061_p2);
assign and_ln29_7_fu_1091_p2 = (tmp_32_reg_1396 & and_ln29_6_fu_1085_p2);
assign and_ln29_fu_820_p2 = (or_ln29_fu_796_p2 & grp_fu_1368_p_dout0);
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
assign bitcast_ln29_1_fu_767_p1 = min_p_11_reg_1332;
assign bitcast_ln29_2_fu_838_p1 = p_4_reg_1344;
assign bitcast_ln29_3_fu_855_p1 = min_p_13_reg_1351;
assign bitcast_ln29_4_fu_926_p1 = p_5_reg_1358;
assign bitcast_ln29_5_fu_943_p1 = min_p_15_reg_1377;
assign bitcast_ln29_6_fu_1015_p1 = p_6_reg_1370;
assign bitcast_ln29_7_fu_1032_p1 = min_p_17_reg_1389;
assign bitcast_ln29_fu_750_p1 = p_reg_1325;
assign grp_fu_1368_p_ce = 1'b1;
assign grp_fu_1368_p_din0 = grp_fu_393_p0;
assign grp_fu_1368_p_din1 = grp_fu_393_p1;
assign grp_fu_1368_p_opcode = 5'd4;
assign grp_fu_629_p_ce = 1'b1;
assign grp_fu_629_p_din0 = grp_fu_389_p0;
assign grp_fu_629_p_din1 = grp_fu_389_p1;
assign grp_fu_629_p_opcode = 2'd0;
assign icmp_ln29_10_fu_978_p2 = ((tmp_28_fu_946_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_11_fu_984_p2 = ((trunc_ln29_5_fu_956_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_12_fu_1049_p2 = ((tmp_30_fu_1018_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_13_fu_1055_p2 = ((trunc_ln29_6_fu_1028_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_14_fu_1067_p2 = ((tmp_31_fu_1035_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_15_fu_1073_p2 = ((trunc_ln29_7_fu_1045_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_790_p2 = ((trunc_ln29_fu_763_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_802_p2 = ((tmp_20_fu_770_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_808_p2 = ((trunc_ln29_1_fu_780_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_872_p2 = ((tmp_23_fu_841_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_878_p2 = ((trunc_ln29_2_fu_851_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_890_p2 = ((tmp_24_fu_858_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_896_p2 = ((trunc_ln29_3_fu_868_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_8_fu_960_p2 = ((tmp_27_fu_929_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_9_fu_966_p2 = ((trunc_ln29_4_fu_939_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_784_p2 = ((tmp_19_fu_753_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = zext_ln26_fu_432_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_2_address0 = zext_ln26_fu_432_p1;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_3_address0 = zext_ln26_fu_432_p1;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_address0 = zext_ln26_2_fu_635_p1;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln7_1_fu_414_p4 = {{ap_sig_allocacmp_prev_1[5:2]}};
assign lshr_ln8_1_fu_617_p4 = {{add_ln25_reg_1210[6:2]}};
assign min_p_13_fu_832_p3 = ((and_ln29_1_reg_1339[0:0] == 1'b1) ? p_reg_1325 : min_p_11_reg_1332);
assign min_p_15_fu_920_p3 = ((and_ln29_3_reg_1365[0:0] == 1'b1) ? p_4_reg_1344 : min_p_13_reg_1351);
assign min_p_17_fu_1008_p3 = ((and_ln29_5_reg_1384[0:0] == 1'b1) ? p_5_reg_1358 : min_p_15_reg_1377);
assign min_p_18_out = ((and_ln29_5_reg_1384[0:0] == 1'b1) ? p_5_reg_1358 : min_p_15_reg_1377);
assign min_p_19_fu_1096_p3 = ((and_ln29_7_fu_1091_p2[0:0] == 1'b1) ? p_6_reg_1370 : min_p_17_reg_1389);
assign or_ln29_1_fu_814_p2 = (icmp_ln29_3_fu_808_p2 | icmp_ln29_2_fu_802_p2);
assign or_ln29_2_fu_884_p2 = (icmp_ln29_5_fu_878_p2 | icmp_ln29_4_fu_872_p2);
assign or_ln29_3_fu_902_p2 = (icmp_ln29_7_fu_896_p2 | icmp_ln29_6_fu_890_p2);
assign or_ln29_4_fu_972_p2 = (icmp_ln29_9_fu_966_p2 | icmp_ln29_8_fu_960_p2);
assign or_ln29_5_fu_990_p2 = (icmp_ln29_11_fu_984_p2 | icmp_ln29_10_fu_978_p2);
assign or_ln29_6_fu_1061_p2 = (icmp_ln29_13_fu_1055_p2 | icmp_ln29_12_fu_1049_p2);
assign or_ln29_7_fu_1079_p2 = (icmp_ln29_15_fu_1073_p2 | icmp_ln29_14_fu_1067_p2);
assign or_ln29_fu_796_p2 = (icmp_ln29_fu_784_p2 | icmp_ln29_1_fu_790_p2);
assign shl_ln1_fu_439_p3 = {{ap_sig_allocacmp_prev_1}, {4'd0}};
assign tmp_11_fu_713_p2 = transition_0_q0;
assign tmp_11_fu_713_p4 = transition_1_q0;
assign tmp_11_fu_713_p6 = transition_2_q0;
assign tmp_11_fu_713_p8 = transition_3_q0;
assign tmp_11_fu_713_p9 = 'bx;
assign tmp_18_fu_424_p3 = {{empty_9}, {lshr_ln7_1_fu_414_p4}};
assign tmp_19_fu_753_p4 = {{bitcast_ln29_fu_750_p1[62:52]}};
assign tmp_20_fu_770_p4 = {{bitcast_ln29_1_fu_767_p1[62:52]}};
assign tmp_22_fu_469_p4 = {{add_ln27_fu_463_p2[9:4]}};
assign tmp_23_fu_841_p4 = {{bitcast_ln29_2_fu_838_p1[62:52]}};
assign tmp_24_fu_858_p4 = {{bitcast_ln29_3_fu_855_p1[62:52]}};
assign tmp_27_fu_929_p4 = {{bitcast_ln29_4_fu_926_p1[62:52]}};
assign tmp_28_fu_946_p4 = {{bitcast_ln29_5_fu_943_p1[62:52]}};
assign tmp_30_fu_1018_p4 = {{bitcast_ln29_6_fu_1015_p1[62:52]}};
assign tmp_31_fu_1035_p4 = {{bitcast_ln29_7_fu_1032_p1[62:52]}};
assign tmp_5_fu_674_p2 = transition_0_q1;
assign tmp_5_fu_674_p4 = transition_1_q1;
assign tmp_5_fu_674_p6 = transition_2_q1;
assign tmp_5_fu_674_p8 = transition_3_q1;
assign tmp_5_fu_674_p9 = 'bx;
assign tmp_6_fu_541_p2 = transition_0_q1;
assign tmp_6_fu_541_p4 = transition_1_q1;
assign tmp_6_fu_541_p6 = transition_2_q1;
assign tmp_6_fu_541_p8 = transition_3_q1;
assign tmp_6_fu_541_p9 = 'bx;
assign tmp_8_fu_580_p2 = transition_0_q0;
assign tmp_8_fu_580_p4 = transition_1_q0;
assign tmp_8_fu_580_p6 = transition_2_q0;
assign tmp_8_fu_580_p8 = transition_3_q0;
assign tmp_8_fu_580_p9 = 'bx;
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
assign trunc_ln27_fu_640_p1 = add_ln25_reg_1210[5:0];
assign trunc_ln29_1_fu_780_p1 = bitcast_ln29_1_fu_767_p1[51:0];
assign trunc_ln29_2_fu_851_p1 = bitcast_ln29_2_fu_838_p1[51:0];
assign trunc_ln29_3_fu_868_p1 = bitcast_ln29_3_fu_855_p1[51:0];
assign trunc_ln29_4_fu_939_p1 = bitcast_ln29_4_fu_926_p1[51:0];
assign trunc_ln29_5_fu_956_p1 = bitcast_ln29_5_fu_943_p1[51:0];
assign trunc_ln29_6_fu_1028_p1 = bitcast_ln29_6_fu_1015_p1[51:0];
assign trunc_ln29_7_fu_1045_p1 = bitcast_ln29_7_fu_1032_p1[51:0];
assign trunc_ln29_fu_763_p1 = bitcast_ln29_fu_750_p1[51:0];
assign zext_ln16_fu_410_p1 = ap_sig_allocacmp_prev_1;
assign zext_ln26_1_fu_626_p1 = lshr_ln8_1_fu_617_p4;
assign zext_ln26_2_fu_635_p1 = add_ln26_fu_630_p2;
assign zext_ln26_fu_432_p1 = tmp_18_fu_424_p3;
assign zext_ln27_1_fu_487_p1 = add_ln27_2_fu_479_p3;
assign zext_ln27_2_fu_609_p1 = add_ln27_4_fu_603_p3;
assign zext_ln27_3_fu_650_p1 = add_ln27_5_fu_643_p3;
assign zext_ln27_fu_455_p1 = add_ln_fu_447_p3;
endmodule 