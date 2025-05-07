module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,llike_address0,llike_ce0,llike_we0,llike_d0,llike_1_address0,llike_1_ce0,llike_1_we0,llike_1_d0,llike_2_address0,llike_2_ce0,llike_2_we0,llike_2_d0,llike_3_address0,llike_3_ce0,llike_3_we0,llike_3_d0,llike_4_address0,llike_4_ce0,llike_4_we0,llike_4_d0,llike_5_address0,llike_5_ce0,llike_5_we0,llike_5_d0,llike_6_address0,llike_6_ce0,llike_6_we0,llike_6_d0,llike_7_address0,llike_7_ce0,llike_7_we0,llike_7_d0,llike_8_address0,llike_8_ce0,llike_8_we0,llike_8_d0,llike_9_address0,llike_9_ce0,llike_9_we0,llike_9_d0,llike_10_address0,llike_10_ce0,llike_10_we0,llike_10_d0,llike_11_address0,llike_11_ce0,llike_11_we0,llike_11_d0,llike_12_address0,llike_12_ce0,llike_12_we0,llike_12_d0,llike_13_address0,llike_13_ce0,llike_13_we0,llike_13_d0,llike_14_address0,llike_14_ce0,llike_14_we0,llike_14_d0,llike_15_address0,llike_15_ce0,llike_15_we0,llike_15_d0,llike_16_address0,llike_16_ce0,llike_16_we0,llike_16_d0,llike_17_address0,llike_17_ce0,llike_17_we0,llike_17_d0,llike_18_address0,llike_18_ce0,llike_18_we0,llike_18_d0,llike_19_address0,llike_19_ce0,llike_19_we0,llike_19_d0,llike_20_address0,llike_20_ce0,llike_20_we0,llike_20_d0,llike_21_address0,llike_21_ce0,llike_21_we0,llike_21_d0,llike_22_address0,llike_22_ce0,llike_22_we0,llike_22_d0,llike_23_address0,llike_23_ce0,llike_23_we0,llike_23_d0,llike_24_address0,llike_24_ce0,llike_24_we0,llike_24_d0,llike_25_address0,llike_25_ce0,llike_25_we0,llike_25_d0,llike_26_address0,llike_26_ce0,llike_26_we0,llike_26_d0,llike_27_address0,llike_27_ce0,llike_27_we0,llike_27_d0,llike_28_address0,llike_28_ce0,llike_28_we0,llike_28_d0,llike_29_address0,llike_29_ce0,llike_29_we0,llike_29_d0,llike_30_address0,llike_30_ce0,llike_30_we0,llike_30_d0,llike_31_address0,llike_31_ce0,llike_31_we0,llike_31_d0,init_0_address0,init_0_ce0,init_0_q0,init_1_address0,init_1_ce0,init_1_q0,conv3_udiv_cast,emission_0_address0,emission_0_ce0,emission_0_q0,emission_1_address0,emission_1_ce0,emission_1_q0,empty,grp_fu_509_p_din0,grp_fu_509_p_din1,grp_fu_509_p_opcode,grp_fu_509_p_dout0,grp_fu_509_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
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
output  [4:0] init_1_address0;
output   init_1_ce0;
input  [63:0] init_1_q0;
input  [6:0] conv3_udiv_cast;
output  [10:0] emission_0_address0;
output   emission_0_ce0;
input  [63:0] emission_0_q0;
output  [10:0] emission_1_address0;
output   emission_1_ce0;
input  [63:0] emission_1_q0;
input  [0:0] empty;
output  [63:0] grp_fu_509_p_din0;
output  [63:0] grp_fu_509_p_din1;
output  [1:0] grp_fu_509_p_opcode;
input  [63:0] grp_fu_509_p_dout0;
output   grp_fu_509_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln13_fu_680_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [4:0] trunc_ln13_fu_692_p1;
reg   [4:0] trunc_ln13_reg_826;
reg   [4:0] trunc_ln13_reg_826_pp0_iter1_reg;
reg   [4:0] trunc_ln13_reg_826_pp0_iter2_reg;
reg   [4:0] trunc_ln13_reg_826_pp0_iter3_reg;
reg   [4:0] trunc_ln13_reg_826_pp0_iter4_reg;
reg   [4:0] trunc_ln13_reg_826_pp0_iter5_reg;
reg   [4:0] trunc_ln13_reg_826_pp0_iter6_reg;
reg   [4:0] trunc_ln13_reg_826_pp0_iter7_reg;
reg   [4:0] trunc_ln13_reg_826_pp0_iter8_reg;
wire   [0:0] trunc_ln13_1_fu_696_p1;
reg   [0:0] trunc_ln13_1_reg_830;
reg   [0:0] tmp_10_reg_835;
reg   [0:0] tmp_10_reg_835_pp0_iter1_reg;
reg   [0:0] tmp_10_reg_835_pp0_iter2_reg;
reg   [0:0] tmp_10_reg_835_pp0_iter3_reg;
reg   [0:0] tmp_10_reg_835_pp0_iter4_reg;
reg   [0:0] tmp_10_reg_835_pp0_iter5_reg;
reg   [0:0] tmp_10_reg_835_pp0_iter6_reg;
reg   [0:0] tmp_10_reg_835_pp0_iter7_reg;
reg   [0:0] tmp_10_reg_835_pp0_iter8_reg;
reg   [0:0] tmp_10_reg_835_pp0_iter9_reg;
wire   [63:0] select_ln14_fu_753_p3;
reg   [63:0] select_ln14_reg_860;
wire   [63:0] select_ln14_1_fu_760_p3;
reg   [63:0] select_ln14_1_reg_865;
wire   [63:0] bitcast_ln14_fu_767_p1;
wire   [63:0] bitcast_ln14_1_fu_771_p1;
reg   [63:0] add6_reg_880;
wire   [63:0] zext_ln9_fu_710_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_742_p1;
wire   [63:0] zext_ln9_1_fu_775_p1;
reg   [6:0] s_fu_180;
wire   [6:0] add_ln13_fu_686_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg    init_0_ce0_local;
reg    init_1_ce0_local;
reg    emission_0_ce0_local;
reg    emission_1_ce0_local;
reg    llike_30_we0_local;
reg    ap_predicate_pred955_state11;
reg    llike_30_ce0_local;
reg    llike_29_we0_local;
reg    ap_predicate_pred964_state11;
reg    llike_29_ce0_local;
reg    llike_28_we0_local;
reg    ap_predicate_pred973_state11;
reg    llike_28_ce0_local;
reg    llike_27_we0_local;
reg    ap_predicate_pred982_state11;
reg    llike_27_ce0_local;
reg    llike_26_we0_local;
reg    ap_predicate_pred991_state11;
reg    llike_26_ce0_local;
reg    llike_25_we0_local;
reg    ap_predicate_pred1000_state11;
reg    llike_25_ce0_local;
reg    llike_24_we0_local;
reg    ap_predicate_pred1009_state11;
reg    llike_24_ce0_local;
reg    llike_23_we0_local;
reg    ap_predicate_pred1018_state11;
reg    llike_23_ce0_local;
reg    llike_22_we0_local;
reg    ap_predicate_pred1027_state11;
reg    llike_22_ce0_local;
reg    llike_21_we0_local;
reg    ap_predicate_pred1036_state11;
reg    llike_21_ce0_local;
reg    llike_20_we0_local;
reg    ap_predicate_pred1045_state11;
reg    llike_20_ce0_local;
reg    llike_19_we0_local;
reg    ap_predicate_pred1054_state11;
reg    llike_19_ce0_local;
reg    llike_18_we0_local;
reg    ap_predicate_pred1063_state11;
reg    llike_18_ce0_local;
reg    llike_17_we0_local;
reg    ap_predicate_pred1072_state11;
reg    llike_17_ce0_local;
reg    llike_16_we0_local;
reg    ap_predicate_pred1081_state11;
reg    llike_16_ce0_local;
reg    llike_15_we0_local;
reg    ap_predicate_pred1090_state11;
reg    llike_15_ce0_local;
reg    llike_14_we0_local;
reg    ap_predicate_pred1099_state11;
reg    llike_14_ce0_local;
reg    llike_13_we0_local;
reg    ap_predicate_pred1108_state11;
reg    llike_13_ce0_local;
reg    llike_12_we0_local;
reg    ap_predicate_pred1117_state11;
reg    llike_12_ce0_local;
reg    llike_11_we0_local;
reg    ap_predicate_pred1126_state11;
reg    llike_11_ce0_local;
reg    llike_10_we0_local;
reg    ap_predicate_pred1135_state11;
reg    llike_10_ce0_local;
reg    llike_9_we0_local;
reg    ap_predicate_pred1144_state11;
reg    llike_9_ce0_local;
reg    llike_8_we0_local;
reg    ap_predicate_pred1153_state11;
reg    llike_8_ce0_local;
reg    llike_7_we0_local;
reg    ap_predicate_pred1162_state11;
reg    llike_7_ce0_local;
reg    llike_6_we0_local;
reg    ap_predicate_pred1171_state11;
reg    llike_6_ce0_local;
reg    llike_5_we0_local;
reg    ap_predicate_pred1180_state11;
reg    llike_5_ce0_local;
reg    llike_4_we0_local;
reg    ap_predicate_pred1189_state11;
reg    llike_4_ce0_local;
reg    llike_3_we0_local;
reg    ap_predicate_pred1198_state11;
reg    llike_3_ce0_local;
reg    llike_2_we0_local;
reg    ap_predicate_pred1207_state11;
reg    llike_2_ce0_local;
reg    llike_1_we0_local;
reg    ap_predicate_pred1216_state11;
reg    llike_1_ce0_local;
reg    llike_we0_local;
reg    ap_predicate_pred1225_state11;
reg    llike_ce0_local;
reg    llike_31_we0_local;
reg    ap_predicate_pred1234_state11;
reg    llike_31_ce0_local;
wire   [4:0] lshr_ln9_fu_700_p4;
wire   [5:0] trunc_ln14_fu_724_p1;
wire   [10:0] shl_ln_fu_728_p3;
wire   [10:0] conv3_udiv_cast_cast_fu_668_p1;
wire   [10:0] add_ln14_fu_736_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage0_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
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
#0 s_fu_180 = 7'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln13_fu_680_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            s_fu_180 <= add_ln13_fu_686_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            s_fu_180 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add6_reg_880 <= grp_fu_509_p_dout0;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        ap_predicate_pred1000_state11 <= (trunc_ln13_reg_826_pp0_iter8_reg == 5'd25);
        ap_predicate_pred1009_state11 <= (trunc_ln13_reg_826_pp0_iter8_reg == 5'd24);
        ap_predicate_pred1018_state11 <= (trunc_ln13_reg_826_pp0_iter8_reg == 5'd23);
        ap_predicate_pred1027_state11 <= (trunc_ln13_reg_826_pp0_iter8_reg == 5'd22);
        ap_predicate_pred1036_state11 <= (trunc_ln13_reg_826_pp0_iter8_reg == 5'd21);
        ap_predicate_pred1045_state11 <= (trunc_ln13_reg_826_pp0_iter8_reg == 5'd20);
        ap_predicate_pred1054_state11 <= (trunc_ln13_reg_826_pp0_iter8_reg == 5'd19);
        ap_predicate_pred1063_state11 <= (trunc_ln13_reg_826_pp0_iter8_reg == 5'd18);
        ap_predicate_pred1072_state11 <= (trunc_ln13_reg_826_pp0_iter8_reg == 5'd17);
        ap_predicate_pred1081_state11 <= (trunc_ln13_reg_826_pp0_iter8_reg == 5'd16);
        ap_predicate_pred1090_state11 <= (trunc_ln13_reg_826_pp0_iter8_reg == 5'd15);
        ap_predicate_pred1099_state11 <= (trunc_ln13_reg_826_pp0_iter8_reg == 5'd14);
        ap_predicate_pred1108_state11 <= (trunc_ln13_reg_826_pp0_iter8_reg == 5'd13);
        ap_predicate_pred1117_state11 <= (trunc_ln13_reg_826_pp0_iter8_reg == 5'd12);
        ap_predicate_pred1126_state11 <= (trunc_ln13_reg_826_pp0_iter8_reg == 5'd11);
        ap_predicate_pred1135_state11 <= (trunc_ln13_reg_826_pp0_iter8_reg == 5'd10);
        ap_predicate_pred1144_state11 <= (trunc_ln13_reg_826_pp0_iter8_reg == 5'd9);
        ap_predicate_pred1153_state11 <= (trunc_ln13_reg_826_pp0_iter8_reg == 5'd8);
        ap_predicate_pred1162_state11 <= (trunc_ln13_reg_826_pp0_iter8_reg == 5'd7);
        ap_predicate_pred1171_state11 <= (trunc_ln13_reg_826_pp0_iter8_reg == 5'd6);
        ap_predicate_pred1180_state11 <= (trunc_ln13_reg_826_pp0_iter8_reg == 5'd5);
        ap_predicate_pred1189_state11 <= (trunc_ln13_reg_826_pp0_iter8_reg == 5'd4);
        ap_predicate_pred1198_state11 <= (trunc_ln13_reg_826_pp0_iter8_reg == 5'd3);
        ap_predicate_pred1207_state11 <= (trunc_ln13_reg_826_pp0_iter8_reg == 5'd2);
        ap_predicate_pred1216_state11 <= (trunc_ln13_reg_826_pp0_iter8_reg == 5'd1);
        ap_predicate_pred1225_state11 <= (trunc_ln13_reg_826_pp0_iter8_reg == 5'd0);
        ap_predicate_pred1234_state11 <= (trunc_ln13_reg_826_pp0_iter8_reg == 5'd31);
        ap_predicate_pred955_state11 <= (trunc_ln13_reg_826_pp0_iter8_reg == 5'd30);
        ap_predicate_pred964_state11 <= (trunc_ln13_reg_826_pp0_iter8_reg == 5'd29);
        ap_predicate_pred973_state11 <= (trunc_ln13_reg_826_pp0_iter8_reg == 5'd28);
        ap_predicate_pred982_state11 <= (trunc_ln13_reg_826_pp0_iter8_reg == 5'd27);
        ap_predicate_pred991_state11 <= (trunc_ln13_reg_826_pp0_iter8_reg == 5'd26);
        tmp_10_reg_835_pp0_iter2_reg <= tmp_10_reg_835_pp0_iter1_reg;
        tmp_10_reg_835_pp0_iter3_reg <= tmp_10_reg_835_pp0_iter2_reg;
        tmp_10_reg_835_pp0_iter4_reg <= tmp_10_reg_835_pp0_iter3_reg;
        tmp_10_reg_835_pp0_iter5_reg <= tmp_10_reg_835_pp0_iter4_reg;
        tmp_10_reg_835_pp0_iter6_reg <= tmp_10_reg_835_pp0_iter5_reg;
        tmp_10_reg_835_pp0_iter7_reg <= tmp_10_reg_835_pp0_iter6_reg;
        tmp_10_reg_835_pp0_iter8_reg <= tmp_10_reg_835_pp0_iter7_reg;
        tmp_10_reg_835_pp0_iter9_reg <= tmp_10_reg_835_pp0_iter8_reg;
        trunc_ln13_reg_826_pp0_iter2_reg <= trunc_ln13_reg_826_pp0_iter1_reg;
        trunc_ln13_reg_826_pp0_iter3_reg <= trunc_ln13_reg_826_pp0_iter2_reg;
        trunc_ln13_reg_826_pp0_iter4_reg <= trunc_ln13_reg_826_pp0_iter3_reg;
        trunc_ln13_reg_826_pp0_iter5_reg <= trunc_ln13_reg_826_pp0_iter4_reg;
        trunc_ln13_reg_826_pp0_iter6_reg <= trunc_ln13_reg_826_pp0_iter5_reg;
        trunc_ln13_reg_826_pp0_iter7_reg <= trunc_ln13_reg_826_pp0_iter6_reg;
        trunc_ln13_reg_826_pp0_iter8_reg <= trunc_ln13_reg_826_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        select_ln14_1_reg_865 <= select_ln14_1_fu_760_p3;
        select_ln14_reg_860 <= select_ln14_fu_753_p3;
        tmp_10_reg_835 <= ap_sig_allocacmp_s_1[32'd5];
        tmp_10_reg_835_pp0_iter1_reg <= tmp_10_reg_835;
        trunc_ln13_1_reg_830 <= trunc_ln13_1_fu_696_p1;
        trunc_ln13_reg_826 <= trunc_ln13_fu_692_p1;
        trunc_ln13_reg_826_pp0_iter1_reg <= trunc_ln13_reg_826;
    end
end
always @ (*) begin
    if (((icmp_ln13_fu_680_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_s_1 = s_fu_180;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        emission_0_ce0_local = 1'b1;
    end else begin
        emission_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        emission_1_ce0_local = 1'b1;
    end else begin
        emission_1_ce0_local = 1'b0;
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
        init_1_ce0_local = 1'b1;
    end else begin
        init_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_10_ce0_local = 1'b1;
    end else begin
        llike_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1135_state11 == 1'b1))) begin
        llike_10_we0_local = 1'b1;
    end else begin
        llike_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_11_ce0_local = 1'b1;
    end else begin
        llike_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1126_state11 == 1'b1))) begin
        llike_11_we0_local = 1'b1;
    end else begin
        llike_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_12_ce0_local = 1'b1;
    end else begin
        llike_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1117_state11 == 1'b1))) begin
        llike_12_we0_local = 1'b1;
    end else begin
        llike_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_13_ce0_local = 1'b1;
    end else begin
        llike_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1108_state11 == 1'b1))) begin
        llike_13_we0_local = 1'b1;
    end else begin
        llike_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_14_ce0_local = 1'b1;
    end else begin
        llike_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1099_state11 == 1'b1))) begin
        llike_14_we0_local = 1'b1;
    end else begin
        llike_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_15_ce0_local = 1'b1;
    end else begin
        llike_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1090_state11 == 1'b1))) begin
        llike_15_we0_local = 1'b1;
    end else begin
        llike_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_16_ce0_local = 1'b1;
    end else begin
        llike_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1081_state11 == 1'b1))) begin
        llike_16_we0_local = 1'b1;
    end else begin
        llike_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_17_ce0_local = 1'b1;
    end else begin
        llike_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1072_state11 == 1'b1))) begin
        llike_17_we0_local = 1'b1;
    end else begin
        llike_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_18_ce0_local = 1'b1;
    end else begin
        llike_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1063_state11 == 1'b1))) begin
        llike_18_we0_local = 1'b1;
    end else begin
        llike_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_19_ce0_local = 1'b1;
    end else begin
        llike_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1054_state11 == 1'b1))) begin
        llike_19_we0_local = 1'b1;
    end else begin
        llike_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1216_state11 == 1'b1))) begin
        llike_1_we0_local = 1'b1;
    end else begin
        llike_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_20_ce0_local = 1'b1;
    end else begin
        llike_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1045_state11 == 1'b1))) begin
        llike_20_we0_local = 1'b1;
    end else begin
        llike_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_21_ce0_local = 1'b1;
    end else begin
        llike_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1036_state11 == 1'b1))) begin
        llike_21_we0_local = 1'b1;
    end else begin
        llike_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_22_ce0_local = 1'b1;
    end else begin
        llike_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1027_state11 == 1'b1))) begin
        llike_22_we0_local = 1'b1;
    end else begin
        llike_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_23_ce0_local = 1'b1;
    end else begin
        llike_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1018_state11 == 1'b1))) begin
        llike_23_we0_local = 1'b1;
    end else begin
        llike_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_24_ce0_local = 1'b1;
    end else begin
        llike_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1009_state11 == 1'b1))) begin
        llike_24_we0_local = 1'b1;
    end else begin
        llike_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_25_ce0_local = 1'b1;
    end else begin
        llike_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1000_state11 == 1'b1))) begin
        llike_25_we0_local = 1'b1;
    end else begin
        llike_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_26_ce0_local = 1'b1;
    end else begin
        llike_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred991_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_26_we0_local = 1'b1;
    end else begin
        llike_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_27_ce0_local = 1'b1;
    end else begin
        llike_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred982_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_27_we0_local = 1'b1;
    end else begin
        llike_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_28_ce0_local = 1'b1;
    end else begin
        llike_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred973_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_28_we0_local = 1'b1;
    end else begin
        llike_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_29_ce0_local = 1'b1;
    end else begin
        llike_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred964_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_29_we0_local = 1'b1;
    end else begin
        llike_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1207_state11 == 1'b1))) begin
        llike_2_we0_local = 1'b1;
    end else begin
        llike_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_30_ce0_local = 1'b1;
    end else begin
        llike_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred955_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_30_we0_local = 1'b1;
    end else begin
        llike_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_31_ce0_local = 1'b1;
    end else begin
        llike_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1234_state11 == 1'b1))) begin
        llike_31_we0_local = 1'b1;
    end else begin
        llike_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1198_state11 == 1'b1))) begin
        llike_3_we0_local = 1'b1;
    end else begin
        llike_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_4_ce0_local = 1'b1;
    end else begin
        llike_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1189_state11 == 1'b1))) begin
        llike_4_we0_local = 1'b1;
    end else begin
        llike_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_5_ce0_local = 1'b1;
    end else begin
        llike_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1180_state11 == 1'b1))) begin
        llike_5_we0_local = 1'b1;
    end else begin
        llike_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_6_ce0_local = 1'b1;
    end else begin
        llike_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1171_state11 == 1'b1))) begin
        llike_6_we0_local = 1'b1;
    end else begin
        llike_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_7_ce0_local = 1'b1;
    end else begin
        llike_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1162_state11 == 1'b1))) begin
        llike_7_we0_local = 1'b1;
    end else begin
        llike_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_8_ce0_local = 1'b1;
    end else begin
        llike_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1153_state11 == 1'b1))) begin
        llike_8_we0_local = 1'b1;
    end else begin
        llike_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_9_ce0_local = 1'b1;
    end else begin
        llike_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1144_state11 == 1'b1))) begin
        llike_9_we0_local = 1'b1;
    end else begin
        llike_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (ap_predicate_pred1225_state11 == 1'b1))) begin
        llike_we0_local = 1'b1;
    end else begin
        llike_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln13_fu_686_p2 = (ap_sig_allocacmp_s_1 + 7'd1);
assign add_ln14_fu_736_p2 = (shl_ln_fu_728_p3 + conv3_udiv_cast_cast_fu_668_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln14_1_fu_771_p1 = select_ln14_1_reg_865;
assign bitcast_ln14_fu_767_p1 = select_ln14_reg_860;
assign conv3_udiv_cast_cast_fu_668_p1 = conv3_udiv_cast;
assign emission_0_address0 = zext_ln14_fu_742_p1;
assign emission_0_ce0 = emission_0_ce0_local;
assign emission_1_address0 = zext_ln14_fu_742_p1;
assign emission_1_ce0 = emission_1_ce0_local;
assign grp_fu_509_p_ce = 1'b1;
assign grp_fu_509_p_din0 = bitcast_ln14_fu_767_p1;
assign grp_fu_509_p_din1 = bitcast_ln14_1_fu_771_p1;
assign grp_fu_509_p_opcode = 2'd0;
assign icmp_ln13_fu_680_p2 = ((ap_sig_allocacmp_s_1 == 7'd64) ? 1'b1 : 1'b0);
assign init_0_address0 = zext_ln9_fu_710_p1;
assign init_0_ce0 = init_0_ce0_local;
assign init_1_address0 = zext_ln9_fu_710_p1;
assign init_1_ce0 = init_1_ce0_local;
assign llike_10_address0 = zext_ln9_1_fu_775_p1;
assign llike_10_ce0 = llike_10_ce0_local;
assign llike_10_d0 = add6_reg_880;
assign llike_10_we0 = llike_10_we0_local;
assign llike_11_address0 = zext_ln9_1_fu_775_p1;
assign llike_11_ce0 = llike_11_ce0_local;
assign llike_11_d0 = add6_reg_880;
assign llike_11_we0 = llike_11_we0_local;
assign llike_12_address0 = zext_ln9_1_fu_775_p1;
assign llike_12_ce0 = llike_12_ce0_local;
assign llike_12_d0 = add6_reg_880;
assign llike_12_we0 = llike_12_we0_local;
assign llike_13_address0 = zext_ln9_1_fu_775_p1;
assign llike_13_ce0 = llike_13_ce0_local;
assign llike_13_d0 = add6_reg_880;
assign llike_13_we0 = llike_13_we0_local;
assign llike_14_address0 = zext_ln9_1_fu_775_p1;
assign llike_14_ce0 = llike_14_ce0_local;
assign llike_14_d0 = add6_reg_880;
assign llike_14_we0 = llike_14_we0_local;
assign llike_15_address0 = zext_ln9_1_fu_775_p1;
assign llike_15_ce0 = llike_15_ce0_local;
assign llike_15_d0 = add6_reg_880;
assign llike_15_we0 = llike_15_we0_local;
assign llike_16_address0 = zext_ln9_1_fu_775_p1;
assign llike_16_ce0 = llike_16_ce0_local;
assign llike_16_d0 = add6_reg_880;
assign llike_16_we0 = llike_16_we0_local;
assign llike_17_address0 = zext_ln9_1_fu_775_p1;
assign llike_17_ce0 = llike_17_ce0_local;
assign llike_17_d0 = add6_reg_880;
assign llike_17_we0 = llike_17_we0_local;
assign llike_18_address0 = zext_ln9_1_fu_775_p1;
assign llike_18_ce0 = llike_18_ce0_local;
assign llike_18_d0 = add6_reg_880;
assign llike_18_we0 = llike_18_we0_local;
assign llike_19_address0 = zext_ln9_1_fu_775_p1;
assign llike_19_ce0 = llike_19_ce0_local;
assign llike_19_d0 = add6_reg_880;
assign llike_19_we0 = llike_19_we0_local;
assign llike_1_address0 = zext_ln9_1_fu_775_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_d0 = add6_reg_880;
assign llike_1_we0 = llike_1_we0_local;
assign llike_20_address0 = zext_ln9_1_fu_775_p1;
assign llike_20_ce0 = llike_20_ce0_local;
assign llike_20_d0 = add6_reg_880;
assign llike_20_we0 = llike_20_we0_local;
assign llike_21_address0 = zext_ln9_1_fu_775_p1;
assign llike_21_ce0 = llike_21_ce0_local;
assign llike_21_d0 = add6_reg_880;
assign llike_21_we0 = llike_21_we0_local;
assign llike_22_address0 = zext_ln9_1_fu_775_p1;
assign llike_22_ce0 = llike_22_ce0_local;
assign llike_22_d0 = add6_reg_880;
assign llike_22_we0 = llike_22_we0_local;
assign llike_23_address0 = zext_ln9_1_fu_775_p1;
assign llike_23_ce0 = llike_23_ce0_local;
assign llike_23_d0 = add6_reg_880;
assign llike_23_we0 = llike_23_we0_local;
assign llike_24_address0 = zext_ln9_1_fu_775_p1;
assign llike_24_ce0 = llike_24_ce0_local;
assign llike_24_d0 = add6_reg_880;
assign llike_24_we0 = llike_24_we0_local;
assign llike_25_address0 = zext_ln9_1_fu_775_p1;
assign llike_25_ce0 = llike_25_ce0_local;
assign llike_25_d0 = add6_reg_880;
assign llike_25_we0 = llike_25_we0_local;
assign llike_26_address0 = zext_ln9_1_fu_775_p1;
assign llike_26_ce0 = llike_26_ce0_local;
assign llike_26_d0 = add6_reg_880;
assign llike_26_we0 = llike_26_we0_local;
assign llike_27_address0 = zext_ln9_1_fu_775_p1;
assign llike_27_ce0 = llike_27_ce0_local;
assign llike_27_d0 = add6_reg_880;
assign llike_27_we0 = llike_27_we0_local;
assign llike_28_address0 = zext_ln9_1_fu_775_p1;
assign llike_28_ce0 = llike_28_ce0_local;
assign llike_28_d0 = add6_reg_880;
assign llike_28_we0 = llike_28_we0_local;
assign llike_29_address0 = zext_ln9_1_fu_775_p1;
assign llike_29_ce0 = llike_29_ce0_local;
assign llike_29_d0 = add6_reg_880;
assign llike_29_we0 = llike_29_we0_local;
assign llike_2_address0 = zext_ln9_1_fu_775_p1;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_2_d0 = add6_reg_880;
assign llike_2_we0 = llike_2_we0_local;
assign llike_30_address0 = zext_ln9_1_fu_775_p1;
assign llike_30_ce0 = llike_30_ce0_local;
assign llike_30_d0 = add6_reg_880;
assign llike_30_we0 = llike_30_we0_local;
assign llike_31_address0 = zext_ln9_1_fu_775_p1;
assign llike_31_ce0 = llike_31_ce0_local;
assign llike_31_d0 = add6_reg_880;
assign llike_31_we0 = llike_31_we0_local;
assign llike_3_address0 = zext_ln9_1_fu_775_p1;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_3_d0 = add6_reg_880;
assign llike_3_we0 = llike_3_we0_local;
assign llike_4_address0 = zext_ln9_1_fu_775_p1;
assign llike_4_ce0 = llike_4_ce0_local;
assign llike_4_d0 = add6_reg_880;
assign llike_4_we0 = llike_4_we0_local;
assign llike_5_address0 = zext_ln9_1_fu_775_p1;
assign llike_5_ce0 = llike_5_ce0_local;
assign llike_5_d0 = add6_reg_880;
assign llike_5_we0 = llike_5_we0_local;
assign llike_6_address0 = zext_ln9_1_fu_775_p1;
assign llike_6_ce0 = llike_6_ce0_local;
assign llike_6_d0 = add6_reg_880;
assign llike_6_we0 = llike_6_we0_local;
assign llike_7_address0 = zext_ln9_1_fu_775_p1;
assign llike_7_ce0 = llike_7_ce0_local;
assign llike_7_d0 = add6_reg_880;
assign llike_7_we0 = llike_7_we0_local;
assign llike_8_address0 = zext_ln9_1_fu_775_p1;
assign llike_8_ce0 = llike_8_ce0_local;
assign llike_8_d0 = add6_reg_880;
assign llike_8_we0 = llike_8_we0_local;
assign llike_9_address0 = zext_ln9_1_fu_775_p1;
assign llike_9_ce0 = llike_9_ce0_local;
assign llike_9_d0 = add6_reg_880;
assign llike_9_we0 = llike_9_we0_local;
assign llike_address0 = zext_ln9_1_fu_775_p1;
assign llike_ce0 = llike_ce0_local;
assign llike_d0 = add6_reg_880;
assign llike_we0 = llike_we0_local;
assign lshr_ln9_fu_700_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign select_ln14_1_fu_760_p3 = ((empty[0:0] == 1'b1) ? emission_1_q0 : emission_0_q0);
assign select_ln14_fu_753_p3 = ((trunc_ln13_1_reg_830[0:0] == 1'b1) ? init_1_q0 : init_0_q0);
assign shl_ln_fu_728_p3 = {{trunc_ln14_fu_724_p1}, {5'd0}};
assign trunc_ln13_1_fu_696_p1 = ap_sig_allocacmp_s_1[0:0];
assign trunc_ln13_fu_692_p1 = ap_sig_allocacmp_s_1[4:0];
assign trunc_ln14_fu_724_p1 = ap_sig_allocacmp_s_1[5:0];
assign zext_ln14_fu_742_p1 = add_ln14_fu_736_p2;
assign zext_ln9_1_fu_775_p1 = tmp_10_reg_835_pp0_iter9_reg;
assign zext_ln9_fu_710_p1 = lshr_ln9_fu_700_p4;
endmodule 