module ellpack (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,nzval_address0,nzval_ce0,nzval_q0,nzval_address1,nzval_ce1,nzval_q1,cols_address0,cols_ce0,cols_q0,cols_address1,cols_ce1,cols_q1,vec_address0,vec_ce0,vec_q0,vec_address1,vec_ce1,vec_q1,out_r_address0,out_r_ce0,out_r_we0,out_r_d0,out_r_address1,out_r_ce1,out_r_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 5'd1;
parameter    ap_ST_fsm_pp0_stage1 = 5'd2;
parameter    ap_ST_fsm_pp0_stage2 = 5'd4;
parameter    ap_ST_fsm_pp0_stage3 = 5'd8;
parameter    ap_ST_fsm_pp0_stage4 = 5'd16;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] nzval_address0;
output   nzval_ce0;
input  [63:0] nzval_q0;
output  [12:0] nzval_address1;
output   nzval_ce1;
input  [63:0] nzval_q1;
output  [12:0] cols_address0;
output   cols_ce0;
input  [31:0] cols_q0;
output  [12:0] cols_address1;
output   cols_ce1;
input  [31:0] cols_q1;
output  [8:0] vec_address0;
output   vec_ce0;
input  [63:0] vec_q0;
output  [8:0] vec_address1;
output   vec_ce1;
input  [63:0] vec_q1;
output  [8:0] out_r_address0;
output   out_r_ce0;
output   out_r_we0;
output  [63:0] out_r_d0;
output  [8:0] out_r_address1;
output   out_r_ce1;
input  [63:0] out_r_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
reg    ap_enable_reg_pp0_iter17;
reg    ap_enable_reg_pp0_iter18;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_subdone;
reg   [0:0] icmp_ln13_reg_781;
reg    ap_condition_exit_pp0_iter0_stage4;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_380;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_384;
reg   [63:0] reg_388;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage4_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_392;
reg   [63:0] reg_396;
reg   [63:0] reg_400;
reg   [8:0] i1_load_reg_743;
wire   [12:0] empty_fu_436_p2;
reg   [12:0] empty_reg_749;
wire   [0:0] icmp_ln13_fu_472_p2;
reg   [0:0] icmp_ln13_reg_781_pp0_iter1_reg;
reg   [0:0] icmp_ln13_reg_781_pp0_iter2_reg;
reg   [0:0] icmp_ln13_reg_781_pp0_iter3_reg;
reg   [0:0] icmp_ln13_reg_781_pp0_iter4_reg;
reg   [0:0] icmp_ln13_reg_781_pp0_iter5_reg;
reg   [0:0] icmp_ln13_reg_781_pp0_iter6_reg;
reg   [0:0] icmp_ln13_reg_781_pp0_iter7_reg;
reg   [0:0] icmp_ln13_reg_781_pp0_iter8_reg;
reg   [0:0] icmp_ln13_reg_781_pp0_iter9_reg;
reg   [0:0] icmp_ln13_reg_781_pp0_iter10_reg;
reg   [0:0] icmp_ln13_reg_781_pp0_iter11_reg;
reg   [0:0] icmp_ln13_reg_781_pp0_iter12_reg;
reg   [0:0] icmp_ln13_reg_781_pp0_iter13_reg;
reg   [0:0] icmp_ln13_reg_781_pp0_iter14_reg;
reg   [0:0] icmp_ln13_reg_781_pp0_iter15_reg;
reg   [0:0] icmp_ln13_reg_781_pp0_iter16_reg;
reg   [0:0] icmp_ln13_reg_781_pp0_iter17_reg;
wire   [63:0] bitcast_ln16_fu_542_p1;
wire   [63:0] bitcast_ln16_1_fu_547_p1;
wire   [63:0] bitcast_ln16_2_fu_552_p1;
wire   [63:0] bitcast_ln16_3_fu_557_p1;
wire   [63:0] bitcast_ln16_4_fu_594_p1;
wire   [63:0] bitcast_ln16_5_fu_599_p1;
wire   [63:0] bitcast_ln16_6_fu_604_p1;
wire   [63:0] bitcast_ln16_7_fu_609_p1;
reg   [8:0] out_r_addr_reg_945;
reg   [8:0] out_r_addr_reg_945_pp0_iter2_reg;
reg   [8:0] out_r_addr_reg_945_pp0_iter3_reg;
reg   [8:0] out_r_addr_reg_945_pp0_iter4_reg;
reg   [8:0] out_r_addr_reg_945_pp0_iter5_reg;
reg   [8:0] out_r_addr_reg_945_pp0_iter6_reg;
reg   [8:0] out_r_addr_reg_945_pp0_iter7_reg;
reg   [8:0] out_r_addr_reg_945_pp0_iter8_reg;
reg   [8:0] out_r_addr_reg_945_pp0_iter9_reg;
reg   [8:0] out_r_addr_reg_945_pp0_iter10_reg;
reg   [8:0] out_r_addr_reg_945_pp0_iter11_reg;
reg   [8:0] out_r_addr_reg_945_pp0_iter12_reg;
reg   [8:0] out_r_addr_reg_945_pp0_iter13_reg;
reg   [8:0] out_r_addr_reg_945_pp0_iter14_reg;
reg   [8:0] out_r_addr_reg_945_pp0_iter15_reg;
reg   [8:0] out_r_addr_reg_945_pp0_iter16_reg;
reg   [8:0] out_r_addr_reg_945_pp0_iter17_reg;
wire   [63:0] bitcast_ln16_8_fu_660_p1;
wire   [63:0] bitcast_ln16_9_fu_665_p1;
wire   [63:0] bitcast_ln16_10_fu_670_p1;
wire   [63:0] bitcast_ln16_11_fu_675_p1;
reg   [63:0] nzval_load_8_reg_971;
reg   [63:0] nzval_load_9_reg_981;
reg   [63:0] out_r_load_reg_991;
wire   [63:0] bitcast_ln16_12_fu_690_p1;
wire   [63:0] bitcast_ln16_13_fu_695_p1;
wire   [63:0] bitcast_ln16_14_fu_700_p1;
wire   [63:0] bitcast_ln16_15_fu_705_p1;
wire   [63:0] bitcast_ln16_16_fu_710_p1;
wire   [63:0] bitcast_ln16_17_fu_714_p1;
wire   [63:0] bitcast_ln16_18_fu_719_p1;
wire   [63:0] bitcast_ln16_19_fu_723_p1;
wire   [63:0] grp_fu_372_p2;
reg   [63:0] Si_reg_1036;
wire   [63:0] grp_fu_376_p2;
reg   [63:0] Si_1_reg_1041;
reg   [63:0] Si_1_reg_1041_pp0_iter2_reg;
wire   [63:0] sum_fu_728_p1;
reg   [63:0] Si_2_reg_1051;
reg   [63:0] Si_2_reg_1051_pp0_iter3_reg;
reg   [63:0] Si_2_reg_1051_pp0_iter4_reg;
reg   [63:0] Si_2_reg_1051_pp0_iter5_reg;
reg   [63:0] Si_3_reg_1056;
reg   [63:0] Si_3_reg_1056_pp0_iter3_reg;
reg   [63:0] Si_3_reg_1056_pp0_iter4_reg;
reg   [63:0] Si_3_reg_1056_pp0_iter5_reg;
reg   [63:0] Si_3_reg_1056_pp0_iter6_reg;
reg   [63:0] Si_4_reg_1061;
reg   [63:0] Si_4_reg_1061_pp0_iter3_reg;
reg   [63:0] Si_4_reg_1061_pp0_iter4_reg;
reg   [63:0] Si_4_reg_1061_pp0_iter5_reg;
reg   [63:0] Si_4_reg_1061_pp0_iter6_reg;
reg   [63:0] Si_4_reg_1061_pp0_iter7_reg;
reg   [63:0] Si_4_reg_1061_pp0_iter8_reg;
reg   [63:0] Si_5_reg_1066;
reg   [63:0] Si_5_reg_1066_pp0_iter3_reg;
reg   [63:0] Si_5_reg_1066_pp0_iter4_reg;
reg   [63:0] Si_5_reg_1066_pp0_iter5_reg;
reg   [63:0] Si_5_reg_1066_pp0_iter6_reg;
reg   [63:0] Si_5_reg_1066_pp0_iter7_reg;
reg   [63:0] Si_5_reg_1066_pp0_iter8_reg;
reg   [63:0] Si_5_reg_1066_pp0_iter9_reg;
reg   [63:0] Si_6_reg_1071;
reg   [63:0] Si_6_reg_1071_pp0_iter3_reg;
reg   [63:0] Si_6_reg_1071_pp0_iter4_reg;
reg   [63:0] Si_6_reg_1071_pp0_iter5_reg;
reg   [63:0] Si_6_reg_1071_pp0_iter6_reg;
reg   [63:0] Si_6_reg_1071_pp0_iter7_reg;
reg   [63:0] Si_6_reg_1071_pp0_iter8_reg;
reg   [63:0] Si_6_reg_1071_pp0_iter9_reg;
reg   [63:0] Si_6_reg_1071_pp0_iter10_reg;
reg   [63:0] Si_6_reg_1071_pp0_iter11_reg;
reg   [63:0] Si_7_reg_1076;
reg   [63:0] Si_7_reg_1076_pp0_iter3_reg;
reg   [63:0] Si_7_reg_1076_pp0_iter4_reg;
reg   [63:0] Si_7_reg_1076_pp0_iter5_reg;
reg   [63:0] Si_7_reg_1076_pp0_iter6_reg;
reg   [63:0] Si_7_reg_1076_pp0_iter7_reg;
reg   [63:0] Si_7_reg_1076_pp0_iter8_reg;
reg   [63:0] Si_7_reg_1076_pp0_iter9_reg;
reg   [63:0] Si_7_reg_1076_pp0_iter10_reg;
reg   [63:0] Si_7_reg_1076_pp0_iter11_reg;
reg   [63:0] Si_7_reg_1076_pp0_iter12_reg;
reg   [63:0] Si_8_reg_1081;
reg   [63:0] Si_8_reg_1081_pp0_iter3_reg;
reg   [63:0] Si_8_reg_1081_pp0_iter4_reg;
reg   [63:0] Si_8_reg_1081_pp0_iter5_reg;
reg   [63:0] Si_8_reg_1081_pp0_iter6_reg;
reg   [63:0] Si_8_reg_1081_pp0_iter7_reg;
reg   [63:0] Si_8_reg_1081_pp0_iter8_reg;
reg   [63:0] Si_8_reg_1081_pp0_iter9_reg;
reg   [63:0] Si_8_reg_1081_pp0_iter10_reg;
reg   [63:0] Si_8_reg_1081_pp0_iter11_reg;
reg   [63:0] Si_8_reg_1081_pp0_iter12_reg;
reg   [63:0] Si_8_reg_1081_pp0_iter13_reg;
reg   [63:0] Si_8_reg_1081_pp0_iter14_reg;
reg   [63:0] Si_9_reg_1086;
reg   [63:0] Si_9_reg_1086_pp0_iter3_reg;
reg   [63:0] Si_9_reg_1086_pp0_iter4_reg;
reg   [63:0] Si_9_reg_1086_pp0_iter5_reg;
reg   [63:0] Si_9_reg_1086_pp0_iter6_reg;
reg   [63:0] Si_9_reg_1086_pp0_iter7_reg;
reg   [63:0] Si_9_reg_1086_pp0_iter8_reg;
reg   [63:0] Si_9_reg_1086_pp0_iter9_reg;
reg   [63:0] Si_9_reg_1086_pp0_iter10_reg;
reg   [63:0] Si_9_reg_1086_pp0_iter11_reg;
reg   [63:0] Si_9_reg_1086_pp0_iter12_reg;
reg   [63:0] Si_9_reg_1086_pp0_iter13_reg;
reg   [63:0] Si_9_reg_1086_pp0_iter14_reg;
reg   [63:0] Si_9_reg_1086_pp0_iter15_reg;
wire   [63:0] grp_fu_364_p2;
reg   [63:0] sum_1_reg_1091;
reg   [63:0] sum_2_reg_1096;
reg   [63:0] sum_3_reg_1101;
reg   [63:0] sum_4_reg_1106;
reg   [63:0] sum_5_reg_1111;
wire   [63:0] grp_fu_368_p2;
reg   [63:0] sum_6_reg_1116;
reg   [63:0] sum_7_reg_1121;
reg   [63:0] sum_8_reg_1126;
reg   [63:0] sum_9_reg_1131;
reg   [63:0] sum_10_reg_1136;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln16_fu_442_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln16_2_fu_466_p1;
wire   [63:0] zext_ln16_1_fu_478_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln16_3_fu_483_p1;
wire   [63:0] zext_ln16_4_fu_493_p1;
wire   [63:0] zext_ln16_6_fu_504_p1;
wire   [63:0] zext_ln16_5_fu_510_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln16_7_fu_515_p1;
wire   [63:0] zext_ln16_8_fu_525_p1;
wire   [63:0] zext_ln16_10_fu_536_p1;
wire   [63:0] zext_ln16_9_fu_562_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln16_11_fu_567_p1;
wire   [63:0] zext_ln16_12_fu_577_p1;
wire   [63:0] zext_ln16_14_fu_588_p1;
wire   [63:0] zext_ln16_13_fu_614_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln16_15_fu_619_p1;
wire   [63:0] zext_ln16_16_fu_629_p1;
wire   [63:0] zext_ln16_18_fu_640_p1;
wire   [63:0] zext_ln13_fu_656_p1;
wire   [63:0] zext_ln16_17_fu_680_p1;
wire   [63:0] zext_ln16_19_fu_685_p1;
reg   [8:0] i1_fu_76;
wire   [8:0] i_fu_646_p2;
wire    ap_loop_init;
reg   [8:0] ap_sig_allocacmp_i1_load;
reg    nzval_ce1_local;
reg   [12:0] nzval_address1_local;
reg    nzval_ce0_local;
reg   [12:0] nzval_address0_local;
reg    cols_ce1_local;
reg   [12:0] cols_address1_local;
reg    cols_ce0_local;
reg   [12:0] cols_address0_local;
reg    vec_ce1_local;
reg   [8:0] vec_address1_local;
reg    vec_ce0_local;
reg   [8:0] vec_address0_local;
reg    out_r_ce1_local;
reg    out_r_we0_local;
wire   [63:0] bitcast_ln19_fu_732_p1;
reg    out_r_ce0_local;
reg   [63:0] grp_fu_364_p0;
reg   [63:0] grp_fu_364_p1;
reg   [63:0] grp_fu_368_p0;
reg   [63:0] grp_fu_368_p1;
reg   [63:0] grp_fu_372_p0;
reg   [63:0] grp_fu_372_p1;
reg   [63:0] grp_fu_376_p0;
reg   [63:0] grp_fu_376_p1;
wire   [11:0] tmp_1_fu_412_p3;
wire   [9:0] tmp_2_fu_424_p3;
wire   [12:0] p_shl_fu_420_p1;
wire   [12:0] p_shl2_fu_432_p1;
wire   [11:0] tmp_fu_448_p4;
wire   [12:0] or_ln_fu_458_p3;
wire   [12:0] add_ln16_fu_488_p2;
wire   [12:0] add_ln16_1_fu_499_p2;
wire   [12:0] add_ln16_2_fu_520_p2;
wire   [12:0] add_ln16_3_fu_531_p2;
wire   [12:0] add_ln16_4_fu_572_p2;
wire   [12:0] add_ln16_5_fu_583_p2;
wire   [12:0] add_ln16_6_fu_624_p2;
wire   [12:0] add_ln16_7_fu_635_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter18_stage0;
reg    ap_idle_pp0_0to17;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg    ap_loop_exit_ready_pp0_iter15_reg;
reg    ap_loop_exit_ready_pp0_iter16_reg;
reg    ap_loop_exit_ready_pp0_iter17_reg;
reg    ap_loop_exit_ready_pp0_iter18_reg;
reg   [4:0] ap_NS_fsm;
reg    ap_idle_pp0_1to18;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_985;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_enable_reg_pp0_iter17 = 1'b0;
#0 ap_enable_reg_pp0_iter18 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i1_fu_76 = 9'd0;
#0 ap_done_reg = 1'b0;
end
ellpack_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_364_p0),.din1(grp_fu_364_p1),.ce(1'b1),.dout(grp_fu_364_p2));
ellpack_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_368_p0),.din1(grp_fu_368_p1),.ce(1'b1),.dout(grp_fu_368_p2));
ellpack_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_372_p0),.din1(grp_fu_372_p1),.ce(1'b1),.dout(grp_fu_372_p2));
ellpack_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_376_p0),.din1(grp_fu_376_p1),.ce(1'b1),.dout(grp_fu_376_p2));
ellpack_flow_control_loop_pipe flow_control_loop_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage4),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(1'b1));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter18_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter18 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter18 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter18 <= ap_enable_reg_pp0_iter17;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to17 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter18_stage0))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to17 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter18_stage0))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to17 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter18_stage0))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to17 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter18_stage0))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to17 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter18_stage0))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to17 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter18_stage0))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to17 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter18_stage0))) begin
        ap_loop_exit_ready_pp0_iter16_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to17 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter18_stage0))) begin
        ap_loop_exit_ready_pp0_iter17_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter17_reg <= ap_loop_exit_ready_pp0_iter16_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_idle_pp0_0to17 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter18_stage0)) | ((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter17_reg == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ap_loop_exit_ready_pp0_iter18_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter18_reg <= ap_loop_exit_ready_pp0_iter17_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to17 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter18_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to17 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter18_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to17 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter18_stage0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to17 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter18_stage0))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to17 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter18_stage0))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to17 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter18_stage0))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to17 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter18_stage0))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to17 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter18_stage0))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to17 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter18_stage0))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_985)) begin
            i1_fu_76 <= 9'd0;
        end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            i1_fu_76 <= i_fu_646_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        Si_1_reg_1041 <= grp_fu_376_p2;
        Si_reg_1036 <= grp_fu_372_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        Si_1_reg_1041_pp0_iter2_reg <= Si_1_reg_1041;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        Si_2_reg_1051 <= grp_fu_372_p2;
        Si_3_reg_1056 <= grp_fu_376_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        Si_2_reg_1051_pp0_iter3_reg <= Si_2_reg_1051;
        Si_2_reg_1051_pp0_iter4_reg <= Si_2_reg_1051_pp0_iter3_reg;
        Si_2_reg_1051_pp0_iter5_reg <= Si_2_reg_1051_pp0_iter4_reg;
        Si_3_reg_1056_pp0_iter3_reg <= Si_3_reg_1056;
        Si_3_reg_1056_pp0_iter4_reg <= Si_3_reg_1056_pp0_iter3_reg;
        Si_3_reg_1056_pp0_iter5_reg <= Si_3_reg_1056_pp0_iter4_reg;
        Si_3_reg_1056_pp0_iter6_reg <= Si_3_reg_1056_pp0_iter5_reg;
        empty_reg_749[12 : 1] <= empty_fu_436_p2[12 : 1];
        i1_load_reg_743 <= ap_sig_allocacmp_i1_load;
        icmp_ln13_reg_781 <= icmp_ln13_fu_472_p2;
        icmp_ln13_reg_781_pp0_iter10_reg <= icmp_ln13_reg_781_pp0_iter9_reg;
        icmp_ln13_reg_781_pp0_iter11_reg <= icmp_ln13_reg_781_pp0_iter10_reg;
        icmp_ln13_reg_781_pp0_iter12_reg <= icmp_ln13_reg_781_pp0_iter11_reg;
        icmp_ln13_reg_781_pp0_iter13_reg <= icmp_ln13_reg_781_pp0_iter12_reg;
        icmp_ln13_reg_781_pp0_iter14_reg <= icmp_ln13_reg_781_pp0_iter13_reg;
        icmp_ln13_reg_781_pp0_iter15_reg <= icmp_ln13_reg_781_pp0_iter14_reg;
        icmp_ln13_reg_781_pp0_iter16_reg <= icmp_ln13_reg_781_pp0_iter15_reg;
        icmp_ln13_reg_781_pp0_iter17_reg <= icmp_ln13_reg_781_pp0_iter16_reg;
        icmp_ln13_reg_781_pp0_iter1_reg <= icmp_ln13_reg_781;
        icmp_ln13_reg_781_pp0_iter2_reg <= icmp_ln13_reg_781_pp0_iter1_reg;
        icmp_ln13_reg_781_pp0_iter3_reg <= icmp_ln13_reg_781_pp0_iter2_reg;
        icmp_ln13_reg_781_pp0_iter4_reg <= icmp_ln13_reg_781_pp0_iter3_reg;
        icmp_ln13_reg_781_pp0_iter5_reg <= icmp_ln13_reg_781_pp0_iter4_reg;
        icmp_ln13_reg_781_pp0_iter6_reg <= icmp_ln13_reg_781_pp0_iter5_reg;
        icmp_ln13_reg_781_pp0_iter7_reg <= icmp_ln13_reg_781_pp0_iter6_reg;
        icmp_ln13_reg_781_pp0_iter8_reg <= icmp_ln13_reg_781_pp0_iter7_reg;
        icmp_ln13_reg_781_pp0_iter9_reg <= icmp_ln13_reg_781_pp0_iter8_reg;
        out_r_addr_reg_945 <= zext_ln13_fu_656_p1;
        out_r_addr_reg_945_pp0_iter10_reg <= out_r_addr_reg_945_pp0_iter9_reg;
        out_r_addr_reg_945_pp0_iter11_reg <= out_r_addr_reg_945_pp0_iter10_reg;
        out_r_addr_reg_945_pp0_iter12_reg <= out_r_addr_reg_945_pp0_iter11_reg;
        out_r_addr_reg_945_pp0_iter13_reg <= out_r_addr_reg_945_pp0_iter12_reg;
        out_r_addr_reg_945_pp0_iter14_reg <= out_r_addr_reg_945_pp0_iter13_reg;
        out_r_addr_reg_945_pp0_iter15_reg <= out_r_addr_reg_945_pp0_iter14_reg;
        out_r_addr_reg_945_pp0_iter16_reg <= out_r_addr_reg_945_pp0_iter15_reg;
        out_r_addr_reg_945_pp0_iter17_reg <= out_r_addr_reg_945_pp0_iter16_reg;
        out_r_addr_reg_945_pp0_iter2_reg <= out_r_addr_reg_945;
        out_r_addr_reg_945_pp0_iter3_reg <= out_r_addr_reg_945_pp0_iter2_reg;
        out_r_addr_reg_945_pp0_iter4_reg <= out_r_addr_reg_945_pp0_iter3_reg;
        out_r_addr_reg_945_pp0_iter5_reg <= out_r_addr_reg_945_pp0_iter4_reg;
        out_r_addr_reg_945_pp0_iter6_reg <= out_r_addr_reg_945_pp0_iter5_reg;
        out_r_addr_reg_945_pp0_iter7_reg <= out_r_addr_reg_945_pp0_iter6_reg;
        out_r_addr_reg_945_pp0_iter8_reg <= out_r_addr_reg_945_pp0_iter7_reg;
        out_r_addr_reg_945_pp0_iter9_reg <= out_r_addr_reg_945_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        Si_4_reg_1061 <= grp_fu_372_p2;
        Si_5_reg_1066 <= grp_fu_376_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        Si_4_reg_1061_pp0_iter3_reg <= Si_4_reg_1061;
        Si_4_reg_1061_pp0_iter4_reg <= Si_4_reg_1061_pp0_iter3_reg;
        Si_4_reg_1061_pp0_iter5_reg <= Si_4_reg_1061_pp0_iter4_reg;
        Si_4_reg_1061_pp0_iter6_reg <= Si_4_reg_1061_pp0_iter5_reg;
        Si_4_reg_1061_pp0_iter7_reg <= Si_4_reg_1061_pp0_iter6_reg;
        Si_4_reg_1061_pp0_iter8_reg <= Si_4_reg_1061_pp0_iter7_reg;
        Si_5_reg_1066_pp0_iter3_reg <= Si_5_reg_1066;
        Si_5_reg_1066_pp0_iter4_reg <= Si_5_reg_1066_pp0_iter3_reg;
        Si_5_reg_1066_pp0_iter5_reg <= Si_5_reg_1066_pp0_iter4_reg;
        Si_5_reg_1066_pp0_iter6_reg <= Si_5_reg_1066_pp0_iter5_reg;
        Si_5_reg_1066_pp0_iter7_reg <= Si_5_reg_1066_pp0_iter6_reg;
        Si_5_reg_1066_pp0_iter8_reg <= Si_5_reg_1066_pp0_iter7_reg;
        Si_5_reg_1066_pp0_iter9_reg <= Si_5_reg_1066_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        Si_6_reg_1071 <= grp_fu_372_p2;
        Si_7_reg_1076 <= grp_fu_376_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        Si_6_reg_1071_pp0_iter10_reg <= Si_6_reg_1071_pp0_iter9_reg;
        Si_6_reg_1071_pp0_iter11_reg <= Si_6_reg_1071_pp0_iter10_reg;
        Si_6_reg_1071_pp0_iter3_reg <= Si_6_reg_1071;
        Si_6_reg_1071_pp0_iter4_reg <= Si_6_reg_1071_pp0_iter3_reg;
        Si_6_reg_1071_pp0_iter5_reg <= Si_6_reg_1071_pp0_iter4_reg;
        Si_6_reg_1071_pp0_iter6_reg <= Si_6_reg_1071_pp0_iter5_reg;
        Si_6_reg_1071_pp0_iter7_reg <= Si_6_reg_1071_pp0_iter6_reg;
        Si_6_reg_1071_pp0_iter8_reg <= Si_6_reg_1071_pp0_iter7_reg;
        Si_6_reg_1071_pp0_iter9_reg <= Si_6_reg_1071_pp0_iter8_reg;
        Si_7_reg_1076_pp0_iter10_reg <= Si_7_reg_1076_pp0_iter9_reg;
        Si_7_reg_1076_pp0_iter11_reg <= Si_7_reg_1076_pp0_iter10_reg;
        Si_7_reg_1076_pp0_iter12_reg <= Si_7_reg_1076_pp0_iter11_reg;
        Si_7_reg_1076_pp0_iter3_reg <= Si_7_reg_1076;
        Si_7_reg_1076_pp0_iter4_reg <= Si_7_reg_1076_pp0_iter3_reg;
        Si_7_reg_1076_pp0_iter5_reg <= Si_7_reg_1076_pp0_iter4_reg;
        Si_7_reg_1076_pp0_iter6_reg <= Si_7_reg_1076_pp0_iter5_reg;
        Si_7_reg_1076_pp0_iter7_reg <= Si_7_reg_1076_pp0_iter6_reg;
        Si_7_reg_1076_pp0_iter8_reg <= Si_7_reg_1076_pp0_iter7_reg;
        Si_7_reg_1076_pp0_iter9_reg <= Si_7_reg_1076_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        Si_8_reg_1081 <= grp_fu_372_p2;
        Si_9_reg_1086 <= grp_fu_376_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        Si_8_reg_1081_pp0_iter10_reg <= Si_8_reg_1081_pp0_iter9_reg;
        Si_8_reg_1081_pp0_iter11_reg <= Si_8_reg_1081_pp0_iter10_reg;
        Si_8_reg_1081_pp0_iter12_reg <= Si_8_reg_1081_pp0_iter11_reg;
        Si_8_reg_1081_pp0_iter13_reg <= Si_8_reg_1081_pp0_iter12_reg;
        Si_8_reg_1081_pp0_iter14_reg <= Si_8_reg_1081_pp0_iter13_reg;
        Si_8_reg_1081_pp0_iter3_reg <= Si_8_reg_1081;
        Si_8_reg_1081_pp0_iter4_reg <= Si_8_reg_1081_pp0_iter3_reg;
        Si_8_reg_1081_pp0_iter5_reg <= Si_8_reg_1081_pp0_iter4_reg;
        Si_8_reg_1081_pp0_iter6_reg <= Si_8_reg_1081_pp0_iter5_reg;
        Si_8_reg_1081_pp0_iter7_reg <= Si_8_reg_1081_pp0_iter6_reg;
        Si_8_reg_1081_pp0_iter8_reg <= Si_8_reg_1081_pp0_iter7_reg;
        Si_8_reg_1081_pp0_iter9_reg <= Si_8_reg_1081_pp0_iter8_reg;
        Si_9_reg_1086_pp0_iter10_reg <= Si_9_reg_1086_pp0_iter9_reg;
        Si_9_reg_1086_pp0_iter11_reg <= Si_9_reg_1086_pp0_iter10_reg;
        Si_9_reg_1086_pp0_iter12_reg <= Si_9_reg_1086_pp0_iter11_reg;
        Si_9_reg_1086_pp0_iter13_reg <= Si_9_reg_1086_pp0_iter12_reg;
        Si_9_reg_1086_pp0_iter14_reg <= Si_9_reg_1086_pp0_iter13_reg;
        Si_9_reg_1086_pp0_iter15_reg <= Si_9_reg_1086_pp0_iter14_reg;
        Si_9_reg_1086_pp0_iter3_reg <= Si_9_reg_1086;
        Si_9_reg_1086_pp0_iter4_reg <= Si_9_reg_1086_pp0_iter3_reg;
        Si_9_reg_1086_pp0_iter5_reg <= Si_9_reg_1086_pp0_iter4_reg;
        Si_9_reg_1086_pp0_iter6_reg <= Si_9_reg_1086_pp0_iter5_reg;
        Si_9_reg_1086_pp0_iter7_reg <= Si_9_reg_1086_pp0_iter6_reg;
        Si_9_reg_1086_pp0_iter8_reg <= Si_9_reg_1086_pp0_iter7_reg;
        Si_9_reg_1086_pp0_iter9_reg <= Si_9_reg_1086_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        nzval_load_8_reg_971 <= nzval_q1;
        nzval_load_9_reg_981 <= nzval_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        out_r_load_reg_991 <= out_r_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_380 <= nzval_q1;
        reg_384 <= nzval_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_388 <= vec_q1;
        reg_392 <= vec_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_396 <= nzval_q1;
        reg_400 <= nzval_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        sum_10_reg_1136 <= grp_fu_368_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sum_1_reg_1091 <= grp_fu_364_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sum_2_reg_1096 <= grp_fu_364_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sum_3_reg_1101 <= grp_fu_364_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sum_4_reg_1106 <= grp_fu_364_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        sum_5_reg_1111 <= grp_fu_364_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sum_6_reg_1116 <= grp_fu_368_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sum_7_reg_1121 <= grp_fu_368_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sum_8_reg_1126 <= grp_fu_368_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sum_9_reg_1131 <= grp_fu_368_p2;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_781 == 1'd1) & (1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter18 == 1'b1) & (icmp_ln13_reg_781_pp0_iter17_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter18_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter18_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter18_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to17 = 1'b1;
    end else begin
        ap_idle_pp0_0to17 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to18 = 1'b1;
    end else begin
        ap_idle_pp0_1to18 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i1_load = 9'd0;
    end else begin
        ap_sig_allocacmp_i1_load = i1_fu_76;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            cols_address0_local = zext_ln16_18_fu_640_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            cols_address0_local = zext_ln16_14_fu_588_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            cols_address0_local = zext_ln16_10_fu_536_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            cols_address0_local = zext_ln16_6_fu_504_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            cols_address0_local = zext_ln16_2_fu_466_p1;
        end else begin
            cols_address0_local = 'bx;
        end
    end else begin
        cols_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            cols_address1_local = zext_ln16_16_fu_629_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            cols_address1_local = zext_ln16_12_fu_577_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            cols_address1_local = zext_ln16_8_fu_525_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            cols_address1_local = zext_ln16_4_fu_493_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            cols_address1_local = zext_ln16_fu_442_p1;
        end else begin
            cols_address1_local = 'bx;
        end
    end else begin
        cols_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        cols_ce0_local = 1'b1;
    end else begin
        cols_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        cols_ce1_local = 1'b1;
    end else begin
        cols_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_364_p0 = sum_4_reg_1106;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_364_p0 = sum_3_reg_1101;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_364_p0 = sum_2_reg_1096;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_364_p0 = sum_1_reg_1091;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_364_p0 = sum_fu_728_p1;
    end else begin
        grp_fu_364_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_364_p1 = Si_4_reg_1061_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_364_p1 = Si_3_reg_1056_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_364_p1 = Si_2_reg_1051_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_364_p1 = Si_1_reg_1041_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_364_p1 = Si_reg_1036;
    end else begin
        grp_fu_364_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_368_p0 = sum_9_reg_1131;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_368_p0 = sum_8_reg_1126;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_368_p0 = sum_7_reg_1121;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_368_p0 = sum_6_reg_1116;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_368_p0 = sum_5_reg_1111;
    end else begin
        grp_fu_368_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_368_p1 = Si_9_reg_1086_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_368_p1 = Si_8_reg_1081_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_368_p1 = Si_7_reg_1076_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_368_p1 = Si_6_reg_1071_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_368_p1 = Si_5_reg_1066_pp0_iter9_reg;
    end else begin
        grp_fu_368_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_372_p0 = bitcast_ln16_16_fu_710_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_372_p0 = bitcast_ln16_12_fu_690_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_372_p0 = bitcast_ln16_8_fu_660_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_372_p0 = bitcast_ln16_4_fu_594_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_372_p0 = bitcast_ln16_fu_542_p1;
    end else begin
        grp_fu_372_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_372_p1 = bitcast_ln16_17_fu_714_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_372_p1 = bitcast_ln16_13_fu_695_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_372_p1 = bitcast_ln16_9_fu_665_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_372_p1 = bitcast_ln16_5_fu_599_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_372_p1 = bitcast_ln16_1_fu_547_p1;
    end else begin
        grp_fu_372_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_376_p0 = bitcast_ln16_18_fu_719_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_376_p0 = bitcast_ln16_14_fu_700_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_376_p0 = bitcast_ln16_10_fu_670_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_376_p0 = bitcast_ln16_6_fu_604_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_376_p0 = bitcast_ln16_2_fu_552_p1;
    end else begin
        grp_fu_376_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_376_p1 = bitcast_ln16_19_fu_723_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_376_p1 = bitcast_ln16_15_fu_705_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_376_p1 = bitcast_ln16_11_fu_675_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_376_p1 = bitcast_ln16_7_fu_609_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_376_p1 = bitcast_ln16_3_fu_557_p1;
    end else begin
        grp_fu_376_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            nzval_address0_local = zext_ln16_18_fu_640_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            nzval_address0_local = zext_ln16_14_fu_588_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            nzval_address0_local = zext_ln16_10_fu_536_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            nzval_address0_local = zext_ln16_6_fu_504_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            nzval_address0_local = zext_ln16_2_fu_466_p1;
        end else begin
            nzval_address0_local = 'bx;
        end
    end else begin
        nzval_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            nzval_address1_local = zext_ln16_16_fu_629_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            nzval_address1_local = zext_ln16_12_fu_577_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            nzval_address1_local = zext_ln16_8_fu_525_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            nzval_address1_local = zext_ln16_4_fu_493_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            nzval_address1_local = zext_ln16_fu_442_p1;
        end else begin
            nzval_address1_local = 'bx;
        end
    end else begin
        nzval_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        nzval_ce0_local = 1'b1;
    end else begin
        nzval_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        nzval_ce1_local = 1'b1;
    end else begin
        nzval_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_r_ce0_local = 1'b1;
    end else begin
        out_r_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_r_ce1_local = 1'b1;
    end else begin
        out_r_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_r_we0_local = 1'b1;
    end else begin
        out_r_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        vec_address0_local = zext_ln16_19_fu_685_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        vec_address0_local = zext_ln16_15_fu_619_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        vec_address0_local = zext_ln16_11_fu_567_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        vec_address0_local = zext_ln16_7_fu_515_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        vec_address0_local = zext_ln16_3_fu_483_p1;
    end else begin
        vec_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        vec_address1_local = zext_ln16_17_fu_680_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        vec_address1_local = zext_ln16_13_fu_614_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        vec_address1_local = zext_ln16_9_fu_562_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        vec_address1_local = zext_ln16_5_fu_510_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        vec_address1_local = zext_ln16_1_fu_478_p1;
    end else begin
        vec_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        vec_ce0_local = 1'b1;
    end else begin
        vec_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        vec_ce1_local = 1'b1;
    end else begin
        vec_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to17 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter18_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to18 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln16_1_fu_499_p2 = (empty_reg_749 + 13'd3);
assign add_ln16_2_fu_520_p2 = (empty_reg_749 + 13'd4);
assign add_ln16_3_fu_531_p2 = (empty_reg_749 + 13'd5);
assign add_ln16_4_fu_572_p2 = (empty_reg_749 + 13'd6);
assign add_ln16_5_fu_583_p2 = (empty_reg_749 + 13'd7);
assign add_ln16_6_fu_624_p2 = (empty_reg_749 + 13'd8);
assign add_ln16_7_fu_635_p2 = (empty_reg_749 + 13'd9);
assign add_ln16_fu_488_p2 = (empty_reg_749 + 13'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
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
always @ (*) begin
    ap_condition_985 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage4;
assign ap_ready = ap_ready_sig;
assign bitcast_ln16_10_fu_670_p1 = reg_384;
assign bitcast_ln16_11_fu_675_p1 = reg_392;
assign bitcast_ln16_12_fu_690_p1 = reg_396;
assign bitcast_ln16_13_fu_695_p1 = reg_388;
assign bitcast_ln16_14_fu_700_p1 = reg_400;
assign bitcast_ln16_15_fu_705_p1 = reg_392;
assign bitcast_ln16_16_fu_710_p1 = nzval_load_8_reg_971;
assign bitcast_ln16_17_fu_714_p1 = reg_388;
assign bitcast_ln16_18_fu_719_p1 = nzval_load_9_reg_981;
assign bitcast_ln16_19_fu_723_p1 = reg_392;
assign bitcast_ln16_1_fu_547_p1 = reg_388;
assign bitcast_ln16_2_fu_552_p1 = reg_384;
assign bitcast_ln16_3_fu_557_p1 = reg_392;
assign bitcast_ln16_4_fu_594_p1 = reg_396;
assign bitcast_ln16_5_fu_599_p1 = reg_388;
assign bitcast_ln16_6_fu_604_p1 = reg_400;
assign bitcast_ln16_7_fu_609_p1 = reg_392;
assign bitcast_ln16_8_fu_660_p1 = reg_380;
assign bitcast_ln16_9_fu_665_p1 = reg_388;
assign bitcast_ln16_fu_542_p1 = reg_380;
assign bitcast_ln19_fu_732_p1 = sum_10_reg_1136;
assign cols_address0 = cols_address0_local;
assign cols_address1 = cols_address1_local;
assign cols_ce0 = cols_ce0_local;
assign cols_ce1 = cols_ce1_local;
assign empty_fu_436_p2 = (p_shl_fu_420_p1 + p_shl2_fu_432_p1);
assign i_fu_646_p2 = (i1_load_reg_743 + 9'd1);
assign icmp_ln13_fu_472_p2 = ((ap_sig_allocacmp_i1_load == 9'd493) ? 1'b1 : 1'b0);
assign nzval_address0 = nzval_address0_local;
assign nzval_address1 = nzval_address1_local;
assign nzval_ce0 = nzval_ce0_local;
assign nzval_ce1 = nzval_ce1_local;
assign or_ln_fu_458_p3 = {{tmp_fu_448_p4}, {1'd1}};
assign out_r_address0 = out_r_addr_reg_945_pp0_iter17_reg;
assign out_r_address1 = zext_ln13_fu_656_p1;
assign out_r_ce0 = out_r_ce0_local;
assign out_r_ce1 = out_r_ce1_local;
assign out_r_d0 = bitcast_ln19_fu_732_p1;
assign out_r_we0 = out_r_we0_local;
assign p_shl2_fu_432_p1 = tmp_2_fu_424_p3;
assign p_shl_fu_420_p1 = tmp_1_fu_412_p3;
assign sum_fu_728_p1 = out_r_load_reg_991;
assign tmp_1_fu_412_p3 = {{ap_sig_allocacmp_i1_load}, {3'd0}};
assign tmp_2_fu_424_p3 = {{ap_sig_allocacmp_i1_load}, {1'd0}};
assign tmp_fu_448_p4 = {{empty_fu_436_p2[12:1]}};
assign vec_address0 = vec_address0_local;
assign vec_address1 = vec_address1_local;
assign vec_ce0 = vec_ce0_local;
assign vec_ce1 = vec_ce1_local;
assign zext_ln13_fu_656_p1 = i1_load_reg_743;
assign zext_ln16_10_fu_536_p1 = add_ln16_3_fu_531_p2;
assign zext_ln16_11_fu_567_p1 = cols_q0;
assign zext_ln16_12_fu_577_p1 = add_ln16_4_fu_572_p2;
assign zext_ln16_13_fu_614_p1 = cols_q1;
assign zext_ln16_14_fu_588_p1 = add_ln16_5_fu_583_p2;
assign zext_ln16_15_fu_619_p1 = cols_q0;
assign zext_ln16_16_fu_629_p1 = add_ln16_6_fu_624_p2;
assign zext_ln16_17_fu_680_p1 = cols_q1;
assign zext_ln16_18_fu_640_p1 = add_ln16_7_fu_635_p2;
assign zext_ln16_19_fu_685_p1 = cols_q0;
assign zext_ln16_1_fu_478_p1 = cols_q1;
assign zext_ln16_2_fu_466_p1 = or_ln_fu_458_p3;
assign zext_ln16_3_fu_483_p1 = cols_q0;
assign zext_ln16_4_fu_493_p1 = add_ln16_fu_488_p2;
assign zext_ln16_5_fu_510_p1 = cols_q1;
assign zext_ln16_6_fu_504_p1 = add_ln16_1_fu_499_p2;
assign zext_ln16_7_fu_515_p1 = cols_q0;
assign zext_ln16_8_fu_525_p1 = add_ln16_2_fu_520_p2;
assign zext_ln16_9_fu_562_p1 = cols_q1;
assign zext_ln16_fu_442_p1 = empty_fu_436_p2;
always @ (posedge ap_clk) begin
    empty_reg_749[0] <= 1'b0;
end
endmodule 