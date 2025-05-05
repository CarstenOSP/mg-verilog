module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,llike_address0,llike_ce0,llike_we0,llike_d0,llike_1_address0,llike_1_ce0,llike_1_we0,llike_1_d0,llike_2_address0,llike_2_ce0,llike_2_we0,llike_2_d0,llike_3_address0,llike_3_ce0,llike_3_we0,llike_3_d0,llike_4_address0,llike_4_ce0,llike_4_we0,llike_4_d0,llike_5_address0,llike_5_ce0,llike_5_we0,llike_5_d0,llike_6_address0,llike_6_ce0,llike_6_we0,llike_6_d0,llike_7_address0,llike_7_ce0,llike_7_we0,llike_7_d0,llike_8_address0,llike_8_ce0,llike_8_we0,llike_8_d0,llike_9_address0,llike_9_ce0,llike_9_we0,llike_9_d0,llike_10_address0,llike_10_ce0,llike_10_we0,llike_10_d0,llike_11_address0,llike_11_ce0,llike_11_we0,llike_11_d0,llike_12_address0,llike_12_ce0,llike_12_we0,llike_12_d0,llike_13_address0,llike_13_ce0,llike_13_we0,llike_13_d0,llike_14_address0,llike_14_ce0,llike_14_we0,llike_14_d0,llike_15_address0,llike_15_ce0,llike_15_we0,llike_15_d0,llike_16_address0,llike_16_ce0,llike_16_we0,llike_16_d0,llike_17_address0,llike_17_ce0,llike_17_we0,llike_17_d0,llike_18_address0,llike_18_ce0,llike_18_we0,llike_18_d0,llike_19_address0,llike_19_ce0,llike_19_we0,llike_19_d0,llike_20_address0,llike_20_ce0,llike_20_we0,llike_20_d0,llike_21_address0,llike_21_ce0,llike_21_we0,llike_21_d0,llike_22_address0,llike_22_ce0,llike_22_we0,llike_22_d0,llike_23_address0,llike_23_ce0,llike_23_we0,llike_23_d0,llike_24_address0,llike_24_ce0,llike_24_we0,llike_24_d0,llike_25_address0,llike_25_ce0,llike_25_we0,llike_25_d0,llike_26_address0,llike_26_ce0,llike_26_we0,llike_26_d0,llike_27_address0,llike_27_ce0,llike_27_we0,llike_27_d0,llike_28_address0,llike_28_ce0,llike_28_we0,llike_28_d0,llike_29_address0,llike_29_ce0,llike_29_we0,llike_29_d0,llike_30_address0,llike_30_ce0,llike_30_we0,llike_30_d0,llike_31_address0,llike_31_ce0,llike_31_we0,llike_31_d0,init_0_address0,init_0_ce0,init_0_q0,init_0_address1,init_0_ce1,init_0_q1,conv3_udiv,emission_0_address0,emission_0_ce0,emission_0_q0,emission_0_address1,emission_0_ce1,emission_0_q1,emission_1_address0,emission_1_ce0,emission_1_q0,emission_1_address1,emission_1_ce1,emission_1_q1,empty,conv3_udiv_cast,init_1_address0,init_1_ce0,init_1_q0,init_1_address1,init_1_ce1,init_1_q1,grp_fu_1066_p_din0,grp_fu_1066_p_din1,grp_fu_1066_p_opcode,grp_fu_1066_p_dout0,grp_fu_1066_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] llike_address0;
output   llike_ce0;
output   llike_we0;
output  [63:0] llike_d0;
output  [8:0] llike_1_address0;
output   llike_1_ce0;
output   llike_1_we0;
output  [63:0] llike_1_d0;
output  [8:0] llike_2_address0;
output   llike_2_ce0;
output   llike_2_we0;
output  [63:0] llike_2_d0;
output  [8:0] llike_3_address0;
output   llike_3_ce0;
output   llike_3_we0;
output  [63:0] llike_3_d0;
output  [8:0] llike_4_address0;
output   llike_4_ce0;
output   llike_4_we0;
output  [63:0] llike_4_d0;
output  [8:0] llike_5_address0;
output   llike_5_ce0;
output   llike_5_we0;
output  [63:0] llike_5_d0;
output  [8:0] llike_6_address0;
output   llike_6_ce0;
output   llike_6_we0;
output  [63:0] llike_6_d0;
output  [8:0] llike_7_address0;
output   llike_7_ce0;
output   llike_7_we0;
output  [63:0] llike_7_d0;
output  [8:0] llike_8_address0;
output   llike_8_ce0;
output   llike_8_we0;
output  [63:0] llike_8_d0;
output  [8:0] llike_9_address0;
output   llike_9_ce0;
output   llike_9_we0;
output  [63:0] llike_9_d0;
output  [8:0] llike_10_address0;
output   llike_10_ce0;
output   llike_10_we0;
output  [63:0] llike_10_d0;
output  [8:0] llike_11_address0;
output   llike_11_ce0;
output   llike_11_we0;
output  [63:0] llike_11_d0;
output  [8:0] llike_12_address0;
output   llike_12_ce0;
output   llike_12_we0;
output  [63:0] llike_12_d0;
output  [8:0] llike_13_address0;
output   llike_13_ce0;
output   llike_13_we0;
output  [63:0] llike_13_d0;
output  [8:0] llike_14_address0;
output   llike_14_ce0;
output   llike_14_we0;
output  [63:0] llike_14_d0;
output  [8:0] llike_15_address0;
output   llike_15_ce0;
output   llike_15_we0;
output  [63:0] llike_15_d0;
output  [8:0] llike_16_address0;
output   llike_16_ce0;
output   llike_16_we0;
output  [63:0] llike_16_d0;
output  [8:0] llike_17_address0;
output   llike_17_ce0;
output   llike_17_we0;
output  [63:0] llike_17_d0;
output  [8:0] llike_18_address0;
output   llike_18_ce0;
output   llike_18_we0;
output  [63:0] llike_18_d0;
output  [8:0] llike_19_address0;
output   llike_19_ce0;
output   llike_19_we0;
output  [63:0] llike_19_d0;
output  [8:0] llike_20_address0;
output   llike_20_ce0;
output   llike_20_we0;
output  [63:0] llike_20_d0;
output  [8:0] llike_21_address0;
output   llike_21_ce0;
output   llike_21_we0;
output  [63:0] llike_21_d0;
output  [8:0] llike_22_address0;
output   llike_22_ce0;
output   llike_22_we0;
output  [63:0] llike_22_d0;
output  [8:0] llike_23_address0;
output   llike_23_ce0;
output   llike_23_we0;
output  [63:0] llike_23_d0;
output  [8:0] llike_24_address0;
output   llike_24_ce0;
output   llike_24_we0;
output  [63:0] llike_24_d0;
output  [8:0] llike_25_address0;
output   llike_25_ce0;
output   llike_25_we0;
output  [63:0] llike_25_d0;
output  [8:0] llike_26_address0;
output   llike_26_ce0;
output   llike_26_we0;
output  [63:0] llike_26_d0;
output  [8:0] llike_27_address0;
output   llike_27_ce0;
output   llike_27_we0;
output  [63:0] llike_27_d0;
output  [8:0] llike_28_address0;
output   llike_28_ce0;
output   llike_28_we0;
output  [63:0] llike_28_d0;
output  [8:0] llike_29_address0;
output   llike_29_ce0;
output   llike_29_we0;
output  [63:0] llike_29_d0;
output  [8:0] llike_30_address0;
output   llike_30_ce0;
output   llike_30_we0;
output  [63:0] llike_30_d0;
output  [8:0] llike_31_address0;
output   llike_31_ce0;
output   llike_31_we0;
output  [63:0] llike_31_d0;
output  [4:0] init_0_address0;
output   init_0_ce0;
input  [63:0] init_0_q0;
output  [4:0] init_0_address1;
output   init_0_ce1;
input  [63:0] init_0_q1;
input  [6:0] conv3_udiv;
output  [10:0] emission_0_address0;
output   emission_0_ce0;
input  [63:0] emission_0_q0;
output  [10:0] emission_0_address1;
output   emission_0_ce1;
input  [63:0] emission_0_q1;
output  [10:0] emission_1_address0;
output   emission_1_ce0;
input  [63:0] emission_1_q0;
output  [10:0] emission_1_address1;
output   emission_1_ce1;
input  [63:0] emission_1_q1;
input  [0:0] empty;
input  [6:0] conv3_udiv_cast;
output  [4:0] init_1_address0;
output   init_1_ce0;
input  [63:0] init_1_q0;
output  [4:0] init_1_address1;
output   init_1_ce1;
input  [63:0] init_1_q1;
output  [63:0] grp_fu_1066_p_din0;
output  [63:0] grp_fu_1066_p_din1;
output  [1:0] grp_fu_1066_p_opcode;
input  [63:0] grp_fu_1066_p_dout0;
output   grp_fu_1066_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_32_reg_1025;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_728;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] grp_fu_724_p2;
reg   [63:0] reg_748;
wire   [10:0] conv3_udiv_cast_cast_fu_768_p1;
reg   [10:0] conv3_udiv_cast_cast_reg_1013;
reg   [6:0] s_1_reg_1019;
wire   [4:0] trunc_ln13_fu_788_p1;
reg   [4:0] trunc_ln13_reg_1029;
reg   [4:0] trunc_ln13_reg_1029_pp0_iter1_reg;
reg   [4:0] trunc_ln13_reg_1029_pp0_iter2_reg;
reg   [4:0] trunc_ln13_reg_1029_pp0_iter3_reg;
reg   [4:0] trunc_ln13_reg_1029_pp0_iter4_reg;
wire   [3:0] tmp_22_fu_808_p4;
reg   [3:0] tmp_22_reg_1038;
reg   [0:0] tmp_33_reg_1079;
reg   [0:0] tmp_33_reg_1079_pp0_iter1_reg;
reg   [0:0] tmp_33_reg_1079_pp0_iter2_reg;
reg   [0:0] tmp_33_reg_1079_pp0_iter3_reg;
reg   [0:0] tmp_33_reg_1079_pp0_iter4_reg;
reg   [63:0] init_0_load_reg_1084;
wire   [63:0] select_ln14_fu_873_p3;
reg   [63:0] select_ln14_reg_1089;
wire   [63:0] select_ln14_1_fu_880_p3;
reg   [63:0] select_ln14_1_reg_1094;
reg   [63:0] init_1_load_reg_1109;
reg   [63:0] init_0_load_1_reg_1114;
reg   [63:0] init_1_load_1_reg_1119;
wire   [63:0] bitcast_ln14_fu_933_p1;
wire   [63:0] bitcast_ln14_1_fu_937_p1;
wire   [63:0] bitcast_ln14_2_fu_941_p1;
wire   [63:0] select_ln14_2_fu_945_p3;
reg   [63:0] select_ln14_2_reg_1149;
wire   [63:0] bitcast_ln14_4_fu_952_p1;
wire   [63:0] select_ln14_3_fu_956_p3;
reg   [63:0] select_ln14_3_reg_1159;
wire   [63:0] bitcast_ln14_3_fu_963_p1;
wire   [63:0] bitcast_ln14_5_fu_967_p1;
wire   [63:0] bitcast_ln14_6_fu_971_p1;
wire   [63:0] bitcast_ln14_7_fu_975_p1;
wire   [63:0] zext_ln9_1_fu_979_p1;
reg   [63:0] zext_ln9_1_reg_1184;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln9_fu_802_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_826_p1;
wire   [63:0] zext_ln14_1_fu_846_p1;
wire   [63:0] zext_ln14_4_fu_860_p1;
wire   [63:0] zext_ln14_2_fu_899_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_3_fu_917_p1;
reg   [6:0] s_fu_150;
wire   [6:0] add_ln13_fu_923_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg    init_0_ce1_local;
reg    init_0_ce0_local;
reg    emission_0_ce1_local;
reg   [10:0] emission_0_address1_local;
reg    emission_0_ce0_local;
reg   [10:0] emission_0_address0_local;
reg    emission_1_ce1_local;
reg   [10:0] emission_1_address1_local;
reg    emission_1_ce0_local;
reg   [10:0] emission_1_address0_local;
reg    init_1_ce1_local;
reg    init_1_ce0_local;
reg    llike_24_we0_local;
reg    ap_predicate_pred569_state11;
reg    llike_24_ce0_local;
reg    llike_25_we0_local;
reg    llike_25_ce0_local;
reg    llike_20_we0_local;
reg    ap_predicate_pred582_state11;
reg    llike_20_ce0_local;
reg    llike_21_we0_local;
reg    llike_21_ce0_local;
reg    llike_16_we0_local;
reg    ap_predicate_pred595_state11;
reg    llike_16_ce0_local;
reg    llike_17_we0_local;
reg    llike_17_ce0_local;
reg    llike_12_we0_local;
reg    ap_predicate_pred608_state11;
reg    llike_12_ce0_local;
reg    llike_13_we0_local;
reg    llike_13_ce0_local;
reg    llike_8_we0_local;
reg    ap_predicate_pred621_state11;
reg    llike_8_ce0_local;
reg    llike_9_we0_local;
reg    llike_9_ce0_local;
reg    llike_4_we0_local;
reg    ap_predicate_pred634_state11;
reg    llike_4_ce0_local;
reg    llike_5_we0_local;
reg    llike_5_ce0_local;
reg    llike_we0_local;
reg    ap_predicate_pred647_state11;
reg    llike_ce0_local;
reg    llike_1_we0_local;
reg    llike_1_ce0_local;
reg    llike_28_we0_local;
reg    ap_predicate_pred671_state11;
reg    llike_28_ce0_local;
reg    llike_29_we0_local;
reg    llike_29_ce0_local;
reg    llike_26_we0_local;
reg    ap_predicate_pred569_state12;
reg    llike_26_ce0_local;
reg    llike_27_we0_local;
reg    llike_27_ce0_local;
reg    llike_22_we0_local;
reg    ap_predicate_pred582_state12;
reg    llike_22_ce0_local;
reg    llike_23_we0_local;
reg    llike_23_ce0_local;
reg    llike_18_we0_local;
reg    ap_predicate_pred595_state12;
reg    llike_18_ce0_local;
reg    llike_19_we0_local;
reg    llike_19_ce0_local;
reg    llike_14_we0_local;
reg    ap_predicate_pred608_state12;
reg    llike_14_ce0_local;
reg    llike_15_we0_local;
reg    llike_15_ce0_local;
reg    llike_10_we0_local;
reg    ap_predicate_pred621_state12;
reg    llike_10_ce0_local;
reg    llike_11_we0_local;
reg    llike_11_ce0_local;
reg    llike_6_we0_local;
reg    ap_predicate_pred634_state12;
reg    llike_6_ce0_local;
reg    llike_7_we0_local;
reg    llike_7_ce0_local;
reg    llike_2_we0_local;
reg    ap_predicate_pred647_state12;
reg    llike_2_ce0_local;
reg    llike_3_we0_local;
reg    llike_3_ce0_local;
reg    llike_30_we0_local;
reg    ap_predicate_pred671_state12;
reg    llike_30_ce0_local;
reg    llike_31_we0_local;
reg    llike_31_ce0_local;
reg   [63:0] grp_fu_720_p0;
reg   [63:0] grp_fu_720_p1;
reg   [63:0] grp_fu_724_p0;
reg   [63:0] grp_fu_724_p1;
wire   [4:0] lshr_ln9_fu_792_p4;
wire   [10:0] or_ln_fu_818_p3;
wire   [10:0] or_ln14_1_fu_832_p3;
wire   [10:0] add_ln14_fu_840_p2;
wire   [4:0] or_ln14_2_fu_852_p3;
wire   [10:0] or_ln14_3_fu_887_p3;
wire   [10:0] add_ln14_1_fu_894_p2;
wire   [10:0] or_ln14_4_fu_905_p3;
wire   [10:0] add_ln14_2_fu_912_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [1:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to5;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 s_fu_150 = 7'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_724_p0),.din1(grp_fu_724_p1),.ce(1'b1),.dout(grp_fu_724_p2));
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_fu_150 <= 7'd0;
    end else if (((tmp_32_reg_1025 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        s_fu_150 <= add_ln13_fu_923_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_predicate_pred569_state11 <= (trunc_ln13_reg_1029_pp0_iter4_reg == 5'd24);
        ap_predicate_pred582_state11 <= (trunc_ln13_reg_1029_pp0_iter4_reg == 5'd20);
        ap_predicate_pred595_state11 <= (trunc_ln13_reg_1029_pp0_iter4_reg == 5'd16);
        ap_predicate_pred608_state11 <= (trunc_ln13_reg_1029_pp0_iter4_reg == 5'd12);
        ap_predicate_pred621_state11 <= (trunc_ln13_reg_1029_pp0_iter4_reg == 5'd8);
        ap_predicate_pred634_state11 <= (trunc_ln13_reg_1029_pp0_iter4_reg == 5'd4);
        ap_predicate_pred647_state11 <= (trunc_ln13_reg_1029_pp0_iter4_reg == 5'd0);
        ap_predicate_pred671_state11 <= (~(trunc_ln13_reg_1029_pp0_iter4_reg == 5'd0) & ~(trunc_ln13_reg_1029_pp0_iter4_reg == 5'd4) & ~(trunc_ln13_reg_1029_pp0_iter4_reg == 5'd8) & ~(trunc_ln13_reg_1029_pp0_iter4_reg == 5'd12) & ~(trunc_ln13_reg_1029_pp0_iter4_reg == 5'd16) & ~(trunc_ln13_reg_1029_pp0_iter4_reg == 5'd20) & ~(trunc_ln13_reg_1029_pp0_iter4_reg == 5'd24));
        select_ln14_1_reg_1094 <= select_ln14_1_fu_880_p3;
        select_ln14_reg_1089 <= select_ln14_fu_873_p3;
        tmp_33_reg_1079 <= s_1_reg_1019[32'd5];
        tmp_33_reg_1079_pp0_iter1_reg <= tmp_33_reg_1079;
        tmp_33_reg_1079_pp0_iter2_reg <= tmp_33_reg_1079_pp0_iter1_reg;
        tmp_33_reg_1079_pp0_iter3_reg <= tmp_33_reg_1079_pp0_iter2_reg;
        tmp_33_reg_1079_pp0_iter4_reg <= tmp_33_reg_1079_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_predicate_pred569_state12 <= (trunc_ln13_reg_1029_pp0_iter4_reg == 5'd24);
        ap_predicate_pred582_state12 <= (trunc_ln13_reg_1029_pp0_iter4_reg == 5'd20);
        ap_predicate_pred595_state12 <= (trunc_ln13_reg_1029_pp0_iter4_reg == 5'd16);
        ap_predicate_pred608_state12 <= (trunc_ln13_reg_1029_pp0_iter4_reg == 5'd12);
        ap_predicate_pred621_state12 <= (trunc_ln13_reg_1029_pp0_iter4_reg == 5'd8);
        ap_predicate_pred634_state12 <= (trunc_ln13_reg_1029_pp0_iter4_reg == 5'd4);
        ap_predicate_pred647_state12 <= (trunc_ln13_reg_1029_pp0_iter4_reg == 5'd0);
        ap_predicate_pred671_state12 <= (~(trunc_ln13_reg_1029_pp0_iter4_reg == 5'd0) & ~(trunc_ln13_reg_1029_pp0_iter4_reg == 5'd4) & ~(trunc_ln13_reg_1029_pp0_iter4_reg == 5'd8) & ~(trunc_ln13_reg_1029_pp0_iter4_reg == 5'd12) & ~(trunc_ln13_reg_1029_pp0_iter4_reg == 5'd16) & ~(trunc_ln13_reg_1029_pp0_iter4_reg == 5'd20) & ~(trunc_ln13_reg_1029_pp0_iter4_reg == 5'd24));
        conv3_udiv_cast_cast_reg_1013[6 : 0] <= conv3_udiv_cast_cast_fu_768_p1[6 : 0];
        s_1_reg_1019 <= ap_sig_allocacmp_s_1;
        select_ln14_2_reg_1149 <= select_ln14_2_fu_945_p3;
        select_ln14_3_reg_1159 <= select_ln14_3_fu_956_p3;
        tmp_22_reg_1038 <= {{ap_sig_allocacmp_s_1[5:2]}};
        tmp_32_reg_1025 <= ap_sig_allocacmp_s_1[32'd6];
        trunc_ln13_reg_1029 <= trunc_ln13_fu_788_p1;
        trunc_ln13_reg_1029_pp0_iter1_reg <= trunc_ln13_reg_1029;
        trunc_ln13_reg_1029_pp0_iter2_reg <= trunc_ln13_reg_1029_pp0_iter1_reg;
        trunc_ln13_reg_1029_pp0_iter3_reg <= trunc_ln13_reg_1029_pp0_iter2_reg;
        trunc_ln13_reg_1029_pp0_iter4_reg <= trunc_ln13_reg_1029_pp0_iter3_reg;
        zext_ln9_1_reg_1184[0] <= zext_ln9_1_fu_979_p1[0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        init_0_load_1_reg_1114 <= init_0_q0;
        init_0_load_reg_1084 <= init_0_q1;
        init_1_load_1_reg_1119 <= init_1_q0;
        init_1_load_reg_1109 <= init_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_728 <= grp_fu_1066_p_dout0;
        reg_748 <= grp_fu_724_p2;
    end
end
always @ (*) begin
    if (((tmp_32_reg_1025 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_s_1 = s_fu_150;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address0_local = zext_ln14_3_fu_917_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address0_local = zext_ln14_1_fu_846_p1;
        end else begin
            emission_0_address0_local = 'bx;
        end
    end else begin
        emission_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address1_local = zext_ln14_2_fu_899_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address1_local = zext_ln14_fu_826_p1;
        end else begin
            emission_0_address1_local = 'bx;
        end
    end else begin
        emission_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_0_ce0_local = 1'b1;
    end else begin
        emission_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_0_ce1_local = 1'b1;
    end else begin
        emission_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address0_local = zext_ln14_3_fu_917_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address0_local = zext_ln14_1_fu_846_p1;
        end else begin
            emission_1_address0_local = 'bx;
        end
    end else begin
        emission_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address1_local = zext_ln14_2_fu_899_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address1_local = zext_ln14_fu_826_p1;
        end else begin
            emission_1_address1_local = 'bx;
        end
    end else begin
        emission_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_1_ce0_local = 1'b1;
    end else begin
        emission_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_1_ce1_local = 1'b1;
    end else begin
        emission_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_720_p0 = bitcast_ln14_5_fu_967_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_720_p0 = bitcast_ln14_fu_933_p1;
        end else begin
            grp_fu_720_p0 = 'bx;
        end
    end else begin
        grp_fu_720_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_720_p1 = bitcast_ln14_3_fu_963_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_720_p1 = bitcast_ln14_1_fu_937_p1;
        end else begin
            grp_fu_720_p1 = 'bx;
        end
    end else begin
        grp_fu_720_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_724_p0 = bitcast_ln14_6_fu_971_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_724_p0 = bitcast_ln14_4_fu_952_p1;
        end else begin
            grp_fu_724_p0 = 'bx;
        end
    end else begin
        grp_fu_724_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_724_p1 = bitcast_ln14_7_fu_975_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_724_p1 = bitcast_ln14_2_fu_941_p1;
        end else begin
            grp_fu_724_p1 = 'bx;
        end
    end else begin
        grp_fu_724_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_0_ce0_local = 1'b1;
    end else begin
        init_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_0_ce1_local = 1'b1;
    end else begin
        init_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_1_ce0_local = 1'b1;
    end else begin
        init_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_1_ce1_local = 1'b1;
    end else begin
        init_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_10_ce0_local = 1'b1;
    end else begin
        llike_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred621_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_10_we0_local = 1'b1;
    end else begin
        llike_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_11_ce0_local = 1'b1;
    end else begin
        llike_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred621_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_11_we0_local = 1'b1;
    end else begin
        llike_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_12_ce0_local = 1'b1;
    end else begin
        llike_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred608_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_12_we0_local = 1'b1;
    end else begin
        llike_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_13_ce0_local = 1'b1;
    end else begin
        llike_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred608_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_13_we0_local = 1'b1;
    end else begin
        llike_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_14_ce0_local = 1'b1;
    end else begin
        llike_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred608_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_14_we0_local = 1'b1;
    end else begin
        llike_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_15_ce0_local = 1'b1;
    end else begin
        llike_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred608_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_15_we0_local = 1'b1;
    end else begin
        llike_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_16_ce0_local = 1'b1;
    end else begin
        llike_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred595_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_16_we0_local = 1'b1;
    end else begin
        llike_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_17_ce0_local = 1'b1;
    end else begin
        llike_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred595_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_17_we0_local = 1'b1;
    end else begin
        llike_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_18_ce0_local = 1'b1;
    end else begin
        llike_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred595_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_18_we0_local = 1'b1;
    end else begin
        llike_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_19_ce0_local = 1'b1;
    end else begin
        llike_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred595_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_19_we0_local = 1'b1;
    end else begin
        llike_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred647_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_1_we0_local = 1'b1;
    end else begin
        llike_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_20_ce0_local = 1'b1;
    end else begin
        llike_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred582_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_20_we0_local = 1'b1;
    end else begin
        llike_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_21_ce0_local = 1'b1;
    end else begin
        llike_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred582_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_21_we0_local = 1'b1;
    end else begin
        llike_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_22_ce0_local = 1'b1;
    end else begin
        llike_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred582_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_22_we0_local = 1'b1;
    end else begin
        llike_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_23_ce0_local = 1'b1;
    end else begin
        llike_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred582_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_23_we0_local = 1'b1;
    end else begin
        llike_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_24_ce0_local = 1'b1;
    end else begin
        llike_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred569_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_24_we0_local = 1'b1;
    end else begin
        llike_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_25_ce0_local = 1'b1;
    end else begin
        llike_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred569_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_25_we0_local = 1'b1;
    end else begin
        llike_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_26_ce0_local = 1'b1;
    end else begin
        llike_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred569_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_26_we0_local = 1'b1;
    end else begin
        llike_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_27_ce0_local = 1'b1;
    end else begin
        llike_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred569_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_27_we0_local = 1'b1;
    end else begin
        llike_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_28_ce0_local = 1'b1;
    end else begin
        llike_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred671_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_28_we0_local = 1'b1;
    end else begin
        llike_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_29_ce0_local = 1'b1;
    end else begin
        llike_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred671_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_29_we0_local = 1'b1;
    end else begin
        llike_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred647_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_2_we0_local = 1'b1;
    end else begin
        llike_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_30_ce0_local = 1'b1;
    end else begin
        llike_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred671_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_30_we0_local = 1'b1;
    end else begin
        llike_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_31_ce0_local = 1'b1;
    end else begin
        llike_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred671_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_31_we0_local = 1'b1;
    end else begin
        llike_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred647_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_3_we0_local = 1'b1;
    end else begin
        llike_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_4_ce0_local = 1'b1;
    end else begin
        llike_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred634_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_4_we0_local = 1'b1;
    end else begin
        llike_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_5_ce0_local = 1'b1;
    end else begin
        llike_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred634_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_5_we0_local = 1'b1;
    end else begin
        llike_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_6_ce0_local = 1'b1;
    end else begin
        llike_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred634_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_6_we0_local = 1'b1;
    end else begin
        llike_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_7_ce0_local = 1'b1;
    end else begin
        llike_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred634_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_7_we0_local = 1'b1;
    end else begin
        llike_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_8_ce0_local = 1'b1;
    end else begin
        llike_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred621_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_8_we0_local = 1'b1;
    end else begin
        llike_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_9_ce0_local = 1'b1;
    end else begin
        llike_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred621_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_9_we0_local = 1'b1;
    end else begin
        llike_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred647_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_we0_local = 1'b1;
    end else begin
        llike_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to5 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln13_fu_923_p2 = (s_1_reg_1019 + 7'd4);
assign add_ln14_1_fu_894_p2 = (or_ln14_3_fu_887_p3 + conv3_udiv_cast_cast_reg_1013);
assign add_ln14_2_fu_912_p2 = (or_ln14_4_fu_905_p3 + conv3_udiv_cast_cast_reg_1013);
assign add_ln14_fu_840_p2 = (or_ln14_1_fu_832_p3 + conv3_udiv_cast_cast_fu_768_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign bitcast_ln14_1_fu_937_p1 = select_ln14_reg_1089;
assign bitcast_ln14_2_fu_941_p1 = select_ln14_1_reg_1094;
assign bitcast_ln14_3_fu_963_p1 = select_ln14_2_reg_1149;
assign bitcast_ln14_4_fu_952_p1 = init_1_load_reg_1109;
assign bitcast_ln14_5_fu_967_p1 = init_0_load_1_reg_1114;
assign bitcast_ln14_6_fu_971_p1 = init_1_load_1_reg_1119;
assign bitcast_ln14_7_fu_975_p1 = select_ln14_3_reg_1159;
assign bitcast_ln14_fu_933_p1 = init_0_load_reg_1084;
assign conv3_udiv_cast_cast_fu_768_p1 = conv3_udiv_cast;
assign emission_0_address0 = emission_0_address0_local;
assign emission_0_address1 = emission_0_address1_local;
assign emission_0_ce0 = emission_0_ce0_local;
assign emission_0_ce1 = emission_0_ce1_local;
assign emission_1_address0 = emission_1_address0_local;
assign emission_1_address1 = emission_1_address1_local;
assign emission_1_ce0 = emission_1_ce0_local;
assign emission_1_ce1 = emission_1_ce1_local;
assign grp_fu_1066_p_ce = 1'b1;
assign grp_fu_1066_p_din0 = grp_fu_720_p0;
assign grp_fu_1066_p_din1 = grp_fu_720_p1;
assign grp_fu_1066_p_opcode = 2'd0;
assign init_0_address0 = zext_ln14_4_fu_860_p1;
assign init_0_address1 = zext_ln9_fu_802_p1;
assign init_0_ce0 = init_0_ce0_local;
assign init_0_ce1 = init_0_ce1_local;
assign init_1_address0 = zext_ln14_4_fu_860_p1;
assign init_1_address1 = zext_ln9_fu_802_p1;
assign init_1_ce0 = init_1_ce0_local;
assign init_1_ce1 = init_1_ce1_local;
assign llike_10_address0 = zext_ln9_1_reg_1184;
assign llike_10_ce0 = llike_10_ce0_local;
assign llike_10_d0 = reg_728;
assign llike_10_we0 = llike_10_we0_local;
assign llike_11_address0 = zext_ln9_1_reg_1184;
assign llike_11_ce0 = llike_11_ce0_local;
assign llike_11_d0 = reg_748;
assign llike_11_we0 = llike_11_we0_local;
assign llike_12_address0 = zext_ln9_1_fu_979_p1;
assign llike_12_ce0 = llike_12_ce0_local;
assign llike_12_d0 = reg_728;
assign llike_12_we0 = llike_12_we0_local;
assign llike_13_address0 = zext_ln9_1_fu_979_p1;
assign llike_13_ce0 = llike_13_ce0_local;
assign llike_13_d0 = reg_748;
assign llike_13_we0 = llike_13_we0_local;
assign llike_14_address0 = zext_ln9_1_reg_1184;
assign llike_14_ce0 = llike_14_ce0_local;
assign llike_14_d0 = reg_728;
assign llike_14_we0 = llike_14_we0_local;
assign llike_15_address0 = zext_ln9_1_reg_1184;
assign llike_15_ce0 = llike_15_ce0_local;
assign llike_15_d0 = reg_748;
assign llike_15_we0 = llike_15_we0_local;
assign llike_16_address0 = zext_ln9_1_fu_979_p1;
assign llike_16_ce0 = llike_16_ce0_local;
assign llike_16_d0 = reg_728;
assign llike_16_we0 = llike_16_we0_local;
assign llike_17_address0 = zext_ln9_1_fu_979_p1;
assign llike_17_ce0 = llike_17_ce0_local;
assign llike_17_d0 = reg_748;
assign llike_17_we0 = llike_17_we0_local;
assign llike_18_address0 = zext_ln9_1_reg_1184;
assign llike_18_ce0 = llike_18_ce0_local;
assign llike_18_d0 = reg_728;
assign llike_18_we0 = llike_18_we0_local;
assign llike_19_address0 = zext_ln9_1_reg_1184;
assign llike_19_ce0 = llike_19_ce0_local;
assign llike_19_d0 = reg_748;
assign llike_19_we0 = llike_19_we0_local;
assign llike_1_address0 = zext_ln9_1_fu_979_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_d0 = reg_748;
assign llike_1_we0 = llike_1_we0_local;
assign llike_20_address0 = zext_ln9_1_fu_979_p1;
assign llike_20_ce0 = llike_20_ce0_local;
assign llike_20_d0 = reg_728;
assign llike_20_we0 = llike_20_we0_local;
assign llike_21_address0 = zext_ln9_1_fu_979_p1;
assign llike_21_ce0 = llike_21_ce0_local;
assign llike_21_d0 = reg_748;
assign llike_21_we0 = llike_21_we0_local;
assign llike_22_address0 = zext_ln9_1_reg_1184;
assign llike_22_ce0 = llike_22_ce0_local;
assign llike_22_d0 = reg_728;
assign llike_22_we0 = llike_22_we0_local;
assign llike_23_address0 = zext_ln9_1_reg_1184;
assign llike_23_ce0 = llike_23_ce0_local;
assign llike_23_d0 = reg_748;
assign llike_23_we0 = llike_23_we0_local;
assign llike_24_address0 = zext_ln9_1_fu_979_p1;
assign llike_24_ce0 = llike_24_ce0_local;
assign llike_24_d0 = reg_728;
assign llike_24_we0 = llike_24_we0_local;
assign llike_25_address0 = zext_ln9_1_fu_979_p1;
assign llike_25_ce0 = llike_25_ce0_local;
assign llike_25_d0 = reg_748;
assign llike_25_we0 = llike_25_we0_local;
assign llike_26_address0 = zext_ln9_1_reg_1184;
assign llike_26_ce0 = llike_26_ce0_local;
assign llike_26_d0 = reg_728;
assign llike_26_we0 = llike_26_we0_local;
assign llike_27_address0 = zext_ln9_1_reg_1184;
assign llike_27_ce0 = llike_27_ce0_local;
assign llike_27_d0 = reg_748;
assign llike_27_we0 = llike_27_we0_local;
assign llike_28_address0 = zext_ln9_1_fu_979_p1;
assign llike_28_ce0 = llike_28_ce0_local;
assign llike_28_d0 = reg_728;
assign llike_28_we0 = llike_28_we0_local;
assign llike_29_address0 = zext_ln9_1_fu_979_p1;
assign llike_29_ce0 = llike_29_ce0_local;
assign llike_29_d0 = reg_748;
assign llike_29_we0 = llike_29_we0_local;
assign llike_2_address0 = zext_ln9_1_reg_1184;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_2_d0 = reg_728;
assign llike_2_we0 = llike_2_we0_local;
assign llike_30_address0 = zext_ln9_1_reg_1184;
assign llike_30_ce0 = llike_30_ce0_local;
assign llike_30_d0 = reg_728;
assign llike_30_we0 = llike_30_we0_local;
assign llike_31_address0 = zext_ln9_1_reg_1184;
assign llike_31_ce0 = llike_31_ce0_local;
assign llike_31_d0 = reg_748;
assign llike_31_we0 = llike_31_we0_local;
assign llike_3_address0 = zext_ln9_1_reg_1184;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_3_d0 = reg_748;
assign llike_3_we0 = llike_3_we0_local;
assign llike_4_address0 = zext_ln9_1_fu_979_p1;
assign llike_4_ce0 = llike_4_ce0_local;
assign llike_4_d0 = reg_728;
assign llike_4_we0 = llike_4_we0_local;
assign llike_5_address0 = zext_ln9_1_fu_979_p1;
assign llike_5_ce0 = llike_5_ce0_local;
assign llike_5_d0 = reg_748;
assign llike_5_we0 = llike_5_we0_local;
assign llike_6_address0 = zext_ln9_1_reg_1184;
assign llike_6_ce0 = llike_6_ce0_local;
assign llike_6_d0 = reg_728;
assign llike_6_we0 = llike_6_we0_local;
assign llike_7_address0 = zext_ln9_1_reg_1184;
assign llike_7_ce0 = llike_7_ce0_local;
assign llike_7_d0 = reg_748;
assign llike_7_we0 = llike_7_we0_local;
assign llike_8_address0 = zext_ln9_1_fu_979_p1;
assign llike_8_ce0 = llike_8_ce0_local;
assign llike_8_d0 = reg_728;
assign llike_8_we0 = llike_8_we0_local;
assign llike_9_address0 = zext_ln9_1_fu_979_p1;
assign llike_9_ce0 = llike_9_ce0_local;
assign llike_9_d0 = reg_748;
assign llike_9_we0 = llike_9_we0_local;
assign llike_address0 = zext_ln9_1_fu_979_p1;
assign llike_ce0 = llike_ce0_local;
assign llike_d0 = reg_728;
assign llike_we0 = llike_we0_local;
assign lshr_ln9_fu_792_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign or_ln14_1_fu_832_p3 = {{lshr_ln9_fu_792_p4}, {6'd32}};
assign or_ln14_2_fu_852_p3 = {{tmp_22_fu_808_p4}, {1'd1}};
assign or_ln14_3_fu_887_p3 = {{tmp_22_reg_1038}, {7'd64}};
assign or_ln14_4_fu_905_p3 = {{tmp_22_reg_1038}, {7'd96}};
assign or_ln_fu_818_p3 = {{tmp_22_fu_808_p4}, {conv3_udiv}};
assign select_ln14_1_fu_880_p3 = ((empty[0:0] == 1'b1) ? emission_1_q0 : emission_0_q0);
assign select_ln14_2_fu_945_p3 = ((empty[0:0] == 1'b1) ? emission_1_q1 : emission_0_q1);
assign select_ln14_3_fu_956_p3 = ((empty[0:0] == 1'b1) ? emission_1_q0 : emission_0_q0);
assign select_ln14_fu_873_p3 = ((empty[0:0] == 1'b1) ? emission_1_q1 : emission_0_q1);
assign tmp_22_fu_808_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign trunc_ln13_fu_788_p1 = ap_sig_allocacmp_s_1[4:0];
assign zext_ln14_1_fu_846_p1 = add_ln14_fu_840_p2;
assign zext_ln14_2_fu_899_p1 = add_ln14_1_fu_894_p2;
assign zext_ln14_3_fu_917_p1 = add_ln14_2_fu_912_p2;
assign zext_ln14_4_fu_860_p1 = or_ln14_2_fu_852_p3;
assign zext_ln14_fu_826_p1 = or_ln_fu_818_p3;
assign zext_ln9_1_fu_979_p1 = tmp_33_reg_1079_pp0_iter4_reg;
assign zext_ln9_fu_802_p1 = lshr_ln9_fu_792_p4;
always @ (posedge ap_clk) begin
    conv3_udiv_cast_cast_reg_1013[10:7] <= 4'b0000;
    zext_ln9_1_reg_1184[63:1] <= 63'b000000000000000000000000000000000000000000000000000000000000000;
end
endmodule 