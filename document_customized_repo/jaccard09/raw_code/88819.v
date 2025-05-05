module gesummv_gesummv_Pipeline_lprd_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,i,A_0_address0,A_0_ce0,A_0_q0,A_1_address0,A_1_ce0,A_1_q0,A_2_address0,A_2_ce0,A_2_q0,A_3_address0,A_3_ce0,A_3_q0,A_4_address0,A_4_ce0,A_4_q0,A_5_address0,A_5_ce0,A_5_q0,A_6_address0,A_6_ce0,A_6_q0,A_7_address0,A_7_ce0,A_7_q0,B_0_address0,B_0_ce0,B_0_q0,B_1_address0,B_1_ce0,B_1_q0,B_2_address0,B_2_ce0,B_2_q0,B_3_address0,B_3_ce0,B_3_q0,B_4_address0,B_4_ce0,B_4_q0,B_5_address0,B_5_ce0,B_5_q0,B_6_address0,B_6_ce0,B_6_q0,B_7_address0,B_7_ce0,B_7_q0,buff_A_address0,buff_A_ce0,buff_A_we0,buff_A_d0,buff_A_1_address0,buff_A_1_ce0,buff_A_1_we0,buff_A_1_d0,buff_A_2_address0,buff_A_2_ce0,buff_A_2_we0,buff_A_2_d0,buff_A_3_address0,buff_A_3_ce0,buff_A_3_we0,buff_A_3_d0,buff_A_4_address0,buff_A_4_ce0,buff_A_4_we0,buff_A_4_d0,buff_A_5_address0,buff_A_5_ce0,buff_A_5_we0,buff_A_5_d0,buff_A_6_address0,buff_A_6_ce0,buff_A_6_we0,buff_A_6_d0,buff_A_7_address0,buff_A_7_ce0,buff_A_7_we0,buff_A_7_d0,buff_B_address0,buff_B_ce0,buff_B_we0,buff_B_d0,buff_B_1_address0,buff_B_1_ce0,buff_B_1_we0,buff_B_1_d0,buff_B_2_address0,buff_B_2_ce0,buff_B_2_we0,buff_B_2_d0,buff_B_3_address0,buff_B_3_ce0,buff_B_3_we0,buff_B_3_d0,buff_B_4_address0,buff_B_4_ce0,buff_B_4_we0,buff_B_4_d0,buff_B_5_address0,buff_B_5_ce0,buff_B_5_we0,buff_B_5_d0,buff_B_6_address0,buff_B_6_ce0,buff_B_6_we0,buff_B_6_d0,buff_B_7_address0,buff_B_7_ce0,buff_B_7_we0,buff_B_7_d0,buff_B_8_address0,buff_B_8_ce0,buff_B_8_we0,buff_B_8_d0,buff_B_9_address0,buff_B_9_ce0,buff_B_9_we0,buff_B_9_d0,buff_B_10_address0,buff_B_10_ce0,buff_B_10_we0,buff_B_10_d0,buff_B_11_address0,buff_B_11_ce0,buff_B_11_we0,buff_B_11_d0,buff_B_12_address0,buff_B_12_ce0,buff_B_12_we0,buff_B_12_d0,buff_B_13_address0,buff_B_13_ce0,buff_B_13_we0,buff_B_13_d0,buff_B_14_address0,buff_B_14_ce0,buff_B_14_we0,buff_B_14_d0,buff_B_15_address0,buff_B_15_ce0,buff_B_15_we0,buff_B_15_d0,buff_B_16_address0,buff_B_16_ce0,buff_B_16_we0,buff_B_16_d0,buff_B_17_address0,buff_B_17_ce0,buff_B_17_we0,buff_B_17_d0,buff_B_18_address0,buff_B_18_ce0,buff_B_18_we0,buff_B_18_d0,buff_B_19_address0,buff_B_19_ce0,buff_B_19_we0,buff_B_19_d0,buff_B_20_address0,buff_B_20_ce0,buff_B_20_we0,buff_B_20_d0,buff_B_21_address0,buff_B_21_ce0,buff_B_21_we0,buff_B_21_d0,buff_B_22_address0,buff_B_22_ce0,buff_B_22_we0,buff_B_22_d0,buff_B_23_address0,buff_B_23_ce0,buff_B_23_we0,buff_B_23_d0,buff_B_24_address0,buff_B_24_ce0,buff_B_24_we0,buff_B_24_d0,buff_B_25_address0,buff_B_25_ce0,buff_B_25_we0,buff_B_25_d0,buff_B_26_address0,buff_B_26_ce0,buff_B_26_we0,buff_B_26_d0,buff_B_27_address0,buff_B_27_ce0,buff_B_27_we0,buff_B_27_d0,buff_B_28_address0,buff_B_28_ce0,buff_B_28_we0,buff_B_28_d0,buff_B_29_address0,buff_B_29_ce0,buff_B_29_we0,buff_B_29_d0,buff_B_30_address0,buff_B_30_ce0,buff_B_30_we0,buff_B_30_d0,buff_B_31_address0,buff_B_31_ce0,buff_B_31_we0,buff_B_31_d0,empty_17,empty); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [5:0] i;
output  [8:0] A_0_address0;
output   A_0_ce0;
input  [31:0] A_0_q0;
output  [8:0] A_1_address0;
output   A_1_ce0;
input  [31:0] A_1_q0;
output  [8:0] A_2_address0;
output   A_2_ce0;
input  [31:0] A_2_q0;
output  [8:0] A_3_address0;
output   A_3_ce0;
input  [31:0] A_3_q0;
output  [8:0] A_4_address0;
output   A_4_ce0;
input  [31:0] A_4_q0;
output  [8:0] A_5_address0;
output   A_5_ce0;
input  [31:0] A_5_q0;
output  [8:0] A_6_address0;
output   A_6_ce0;
input  [31:0] A_6_q0;
output  [8:0] A_7_address0;
output   A_7_ce0;
input  [31:0] A_7_q0;
output  [8:0] B_0_address0;
output   B_0_ce0;
input  [31:0] B_0_q0;
output  [8:0] B_1_address0;
output   B_1_ce0;
input  [31:0] B_1_q0;
output  [8:0] B_2_address0;
output   B_2_ce0;
input  [31:0] B_2_q0;
output  [8:0] B_3_address0;
output   B_3_ce0;
input  [31:0] B_3_q0;
output  [8:0] B_4_address0;
output   B_4_ce0;
input  [31:0] B_4_q0;
output  [8:0] B_5_address0;
output   B_5_ce0;
input  [31:0] B_5_q0;
output  [8:0] B_6_address0;
output   B_6_ce0;
input  [31:0] B_6_q0;
output  [8:0] B_7_address0;
output   B_7_ce0;
input  [31:0] B_7_q0;
output  [8:0] buff_A_address0;
output   buff_A_ce0;
output   buff_A_we0;
output  [31:0] buff_A_d0;
output  [8:0] buff_A_1_address0;
output   buff_A_1_ce0;
output   buff_A_1_we0;
output  [31:0] buff_A_1_d0;
output  [8:0] buff_A_2_address0;
output   buff_A_2_ce0;
output   buff_A_2_we0;
output  [31:0] buff_A_2_d0;
output  [8:0] buff_A_3_address0;
output   buff_A_3_ce0;
output   buff_A_3_we0;
output  [31:0] buff_A_3_d0;
output  [8:0] buff_A_4_address0;
output   buff_A_4_ce0;
output   buff_A_4_we0;
output  [31:0] buff_A_4_d0;
output  [8:0] buff_A_5_address0;
output   buff_A_5_ce0;
output   buff_A_5_we0;
output  [31:0] buff_A_5_d0;
output  [8:0] buff_A_6_address0;
output   buff_A_6_ce0;
output   buff_A_6_we0;
output  [31:0] buff_A_6_d0;
output  [8:0] buff_A_7_address0;
output   buff_A_7_ce0;
output   buff_A_7_we0;
output  [31:0] buff_A_7_d0;
output  [6:0] buff_B_address0;
output   buff_B_ce0;
output   buff_B_we0;
output  [31:0] buff_B_d0;
output  [6:0] buff_B_1_address0;
output   buff_B_1_ce0;
output   buff_B_1_we0;
output  [31:0] buff_B_1_d0;
output  [6:0] buff_B_2_address0;
output   buff_B_2_ce0;
output   buff_B_2_we0;
output  [31:0] buff_B_2_d0;
output  [6:0] buff_B_3_address0;
output   buff_B_3_ce0;
output   buff_B_3_we0;
output  [31:0] buff_B_3_d0;
output  [6:0] buff_B_4_address0;
output   buff_B_4_ce0;
output   buff_B_4_we0;
output  [31:0] buff_B_4_d0;
output  [6:0] buff_B_5_address0;
output   buff_B_5_ce0;
output   buff_B_5_we0;
output  [31:0] buff_B_5_d0;
output  [6:0] buff_B_6_address0;
output   buff_B_6_ce0;
output   buff_B_6_we0;
output  [31:0] buff_B_6_d0;
output  [6:0] buff_B_7_address0;
output   buff_B_7_ce0;
output   buff_B_7_we0;
output  [31:0] buff_B_7_d0;
output  [6:0] buff_B_8_address0;
output   buff_B_8_ce0;
output   buff_B_8_we0;
output  [31:0] buff_B_8_d0;
output  [6:0] buff_B_9_address0;
output   buff_B_9_ce0;
output   buff_B_9_we0;
output  [31:0] buff_B_9_d0;
output  [6:0] buff_B_10_address0;
output   buff_B_10_ce0;
output   buff_B_10_we0;
output  [31:0] buff_B_10_d0;
output  [6:0] buff_B_11_address0;
output   buff_B_11_ce0;
output   buff_B_11_we0;
output  [31:0] buff_B_11_d0;
output  [6:0] buff_B_12_address0;
output   buff_B_12_ce0;
output   buff_B_12_we0;
output  [31:0] buff_B_12_d0;
output  [6:0] buff_B_13_address0;
output   buff_B_13_ce0;
output   buff_B_13_we0;
output  [31:0] buff_B_13_d0;
output  [6:0] buff_B_14_address0;
output   buff_B_14_ce0;
output   buff_B_14_we0;
output  [31:0] buff_B_14_d0;
output  [6:0] buff_B_15_address0;
output   buff_B_15_ce0;
output   buff_B_15_we0;
output  [31:0] buff_B_15_d0;
output  [6:0] buff_B_16_address0;
output   buff_B_16_ce0;
output   buff_B_16_we0;
output  [31:0] buff_B_16_d0;
output  [6:0] buff_B_17_address0;
output   buff_B_17_ce0;
output   buff_B_17_we0;
output  [31:0] buff_B_17_d0;
output  [6:0] buff_B_18_address0;
output   buff_B_18_ce0;
output   buff_B_18_we0;
output  [31:0] buff_B_18_d0;
output  [6:0] buff_B_19_address0;
output   buff_B_19_ce0;
output   buff_B_19_we0;
output  [31:0] buff_B_19_d0;
output  [6:0] buff_B_20_address0;
output   buff_B_20_ce0;
output   buff_B_20_we0;
output  [31:0] buff_B_20_d0;
output  [6:0] buff_B_21_address0;
output   buff_B_21_ce0;
output   buff_B_21_we0;
output  [31:0] buff_B_21_d0;
output  [6:0] buff_B_22_address0;
output   buff_B_22_ce0;
output   buff_B_22_we0;
output  [31:0] buff_B_22_d0;
output  [6:0] buff_B_23_address0;
output   buff_B_23_ce0;
output   buff_B_23_we0;
output  [31:0] buff_B_23_d0;
output  [6:0] buff_B_24_address0;
output   buff_B_24_ce0;
output   buff_B_24_we0;
output  [31:0] buff_B_24_d0;
output  [6:0] buff_B_25_address0;
output   buff_B_25_ce0;
output   buff_B_25_we0;
output  [31:0] buff_B_25_d0;
output  [6:0] buff_B_26_address0;
output   buff_B_26_ce0;
output   buff_B_26_we0;
output  [31:0] buff_B_26_d0;
output  [6:0] buff_B_27_address0;
output   buff_B_27_ce0;
output   buff_B_27_we0;
output  [31:0] buff_B_27_d0;
output  [6:0] buff_B_28_address0;
output   buff_B_28_ce0;
output   buff_B_28_we0;
output  [31:0] buff_B_28_d0;
output  [6:0] buff_B_29_address0;
output   buff_B_29_ce0;
output   buff_B_29_we0;
output  [31:0] buff_B_29_d0;
output  [6:0] buff_B_30_address0;
output   buff_B_30_ce0;
output   buff_B_30_we0;
output  [31:0] buff_B_30_d0;
output  [6:0] buff_B_31_address0;
output   buff_B_31_ce0;
output   buff_B_31_we0;
output  [31:0] buff_B_31_d0;
input  [1:0] empty_17;
input  [0:0] empty;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_2_fu_934_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [1:0] tmp_1_reg_1154;
wire    ap_block_pp0_stage0_11001;
wire   [2:0] lshr_ln6_5_fu_942_p4;
reg   [2:0] lshr_ln6_5_reg_1166;
wire   [63:0] zext_ln20_fu_960_p1;
reg   [63:0] zext_ln20_reg_1171;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln21_fu_1007_p1;
reg   [6:0] j_fu_176;
wire   [6:0] add_ln19_fu_980_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_1;
reg    A_0_ce0_local;
reg    B_0_ce0_local;
reg    A_1_ce0_local;
reg    B_1_ce0_local;
reg    A_2_ce0_local;
reg    B_2_ce0_local;
reg    A_3_ce0_local;
reg    B_3_ce0_local;
reg    A_4_ce0_local;
reg    B_4_ce0_local;
reg    A_5_ce0_local;
reg    B_5_ce0_local;
reg    A_6_ce0_local;
reg    B_6_ce0_local;
reg    A_7_ce0_local;
reg    B_7_ce0_local;
reg    buff_A_we0_local;
wire   [31:0] bitcast_ln20_fu_1043_p1;
reg    buff_A_ce0_local;
reg    buff_A_1_we0_local;
wire   [31:0] bitcast_ln20_1_fu_1056_p1;
reg    buff_A_1_ce0_local;
reg    buff_A_2_we0_local;
wire   [31:0] bitcast_ln20_2_fu_1069_p1;
reg    buff_A_2_ce0_local;
reg    buff_A_3_we0_local;
wire   [31:0] bitcast_ln20_3_fu_1082_p1;
reg    buff_A_3_ce0_local;
reg    buff_A_4_we0_local;
wire   [31:0] bitcast_ln20_4_fu_1095_p1;
reg    buff_A_4_ce0_local;
reg    buff_A_5_we0_local;
wire   [31:0] bitcast_ln20_5_fu_1108_p1;
reg    buff_A_5_ce0_local;
reg    buff_A_6_we0_local;
wire   [31:0] bitcast_ln20_6_fu_1121_p1;
reg    buff_A_6_ce0_local;
reg    buff_A_7_we0_local;
wire   [31:0] bitcast_ln20_7_fu_1134_p1;
reg    buff_A_7_ce0_local;
reg    buff_B_2_we0_local;
wire   [31:0] bitcast_ln21_fu_1048_p1;
reg    buff_B_2_ce0_local;
reg    buff_B_6_we0_local;
wire   [31:0] bitcast_ln21_1_fu_1061_p1;
reg    buff_B_6_ce0_local;
reg    buff_B_10_we0_local;
wire   [31:0] bitcast_ln21_2_fu_1074_p1;
reg    buff_B_10_ce0_local;
reg    buff_B_14_we0_local;
wire   [31:0] bitcast_ln21_3_fu_1087_p1;
reg    buff_B_14_ce0_local;
reg    buff_B_18_we0_local;
wire   [31:0] bitcast_ln21_4_fu_1100_p1;
reg    buff_B_18_ce0_local;
reg    buff_B_22_we0_local;
wire   [31:0] bitcast_ln21_5_fu_1113_p1;
reg    buff_B_22_ce0_local;
reg    buff_B_26_we0_local;
wire   [31:0] bitcast_ln21_6_fu_1126_p1;
reg    buff_B_26_ce0_local;
reg    buff_B_30_we0_local;
wire   [31:0] bitcast_ln21_7_fu_1139_p1;
reg    buff_B_30_ce0_local;
reg    buff_B_1_we0_local;
reg    buff_B_1_ce0_local;
reg    buff_B_5_we0_local;
reg    buff_B_5_ce0_local;
reg    buff_B_9_we0_local;
reg    buff_B_9_ce0_local;
reg    buff_B_13_we0_local;
reg    buff_B_13_ce0_local;
reg    buff_B_17_we0_local;
reg    buff_B_17_ce0_local;
reg    buff_B_21_we0_local;
reg    buff_B_21_ce0_local;
reg    buff_B_25_we0_local;
reg    buff_B_25_ce0_local;
reg    buff_B_29_we0_local;
reg    buff_B_29_ce0_local;
reg    buff_B_we0_local;
reg    buff_B_ce0_local;
reg    buff_B_4_we0_local;
reg    buff_B_4_ce0_local;
reg    buff_B_8_we0_local;
reg    buff_B_8_ce0_local;
reg    buff_B_12_we0_local;
reg    buff_B_12_ce0_local;
reg    buff_B_16_we0_local;
reg    buff_B_16_ce0_local;
reg    buff_B_20_we0_local;
reg    buff_B_20_ce0_local;
reg    buff_B_24_we0_local;
reg    buff_B_24_ce0_local;
reg    buff_B_28_we0_local;
reg    buff_B_28_ce0_local;
reg    buff_B_3_we0_local;
reg    buff_B_3_ce0_local;
reg    buff_B_7_we0_local;
reg    buff_B_7_ce0_local;
reg    buff_B_11_we0_local;
reg    buff_B_11_ce0_local;
reg    buff_B_15_we0_local;
reg    buff_B_15_ce0_local;
reg    buff_B_19_we0_local;
reg    buff_B_19_ce0_local;
reg    buff_B_23_we0_local;
reg    buff_B_23_ce0_local;
reg    buff_B_27_we0_local;
reg    buff_B_27_ce0_local;
reg    buff_B_31_we0_local;
reg    buff_B_31_ce0_local;
wire   [8:0] tmp_s_fu_952_p3;
wire   [3:0] tmp_3_fu_991_p4;
wire   [6:0] tmp_4_fu_1000_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 j_fu_176 = 7'd0;
#0 ap_done_reg = 1'b0;
end
gesummv_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((tmp_2_fu_934_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_fu_176 <= add_ln19_fu_980_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_176 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln6_5_reg_1166 <= {{ap_sig_allocacmp_j_1[5:3]}};
        zext_ln20_reg_1171[8 : 0] <= zext_ln20_fu_960_p1[8 : 0];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        A_0_ce0_local = 1'b1;
    end else begin
        A_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        A_1_ce0_local = 1'b1;
    end else begin
        A_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        A_2_ce0_local = 1'b1;
    end else begin
        A_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        A_3_ce0_local = 1'b1;
    end else begin
        A_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        A_4_ce0_local = 1'b1;
    end else begin
        A_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        A_5_ce0_local = 1'b1;
    end else begin
        A_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        A_6_ce0_local = 1'b1;
    end else begin
        A_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        A_7_ce0_local = 1'b1;
    end else begin
        A_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_0_ce0_local = 1'b1;
    end else begin
        B_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_1_ce0_local = 1'b1;
    end else begin
        B_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_2_ce0_local = 1'b1;
    end else begin
        B_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_3_ce0_local = 1'b1;
    end else begin
        B_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_4_ce0_local = 1'b1;
    end else begin
        B_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_5_ce0_local = 1'b1;
    end else begin
        B_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_6_ce0_local = 1'b1;
    end else begin
        B_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_7_ce0_local = 1'b1;
    end else begin
        B_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_2_fu_934_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_j_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_j_1 = j_fu_176;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_1_ce0_local = 1'b1;
    end else begin
        buff_A_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_1_we0_local = 1'b1;
    end else begin
        buff_A_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_2_ce0_local = 1'b1;
    end else begin
        buff_A_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_2_we0_local = 1'b1;
    end else begin
        buff_A_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_3_ce0_local = 1'b1;
    end else begin
        buff_A_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_3_we0_local = 1'b1;
    end else begin
        buff_A_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_4_ce0_local = 1'b1;
    end else begin
        buff_A_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_4_we0_local = 1'b1;
    end else begin
        buff_A_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_5_ce0_local = 1'b1;
    end else begin
        buff_A_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_5_we0_local = 1'b1;
    end else begin
        buff_A_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_6_ce0_local = 1'b1;
    end else begin
        buff_A_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_6_we0_local = 1'b1;
    end else begin
        buff_A_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_7_ce0_local = 1'b1;
    end else begin
        buff_A_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_7_we0_local = 1'b1;
    end else begin
        buff_A_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_ce0_local = 1'b1;
    end else begin
        buff_A_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_we0_local = 1'b1;
    end else begin
        buff_A_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_10_ce0_local = 1'b1;
    end else begin
        buff_B_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_1_reg_1154 == 2'd2))) begin
        buff_B_10_we0_local = 1'b1;
    end else begin
        buff_B_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_11_ce0_local = 1'b1;
    end else begin
        buff_B_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_1_reg_1154 == 2'd3))) begin
        buff_B_11_we0_local = 1'b1;
    end else begin
        buff_B_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_12_ce0_local = 1'b1;
    end else begin
        buff_B_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_1_reg_1154 == 2'd0))) begin
        buff_B_12_we0_local = 1'b1;
    end else begin
        buff_B_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_13_ce0_local = 1'b1;
    end else begin
        buff_B_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_1_reg_1154 == 2'd1))) begin
        buff_B_13_we0_local = 1'b1;
    end else begin
        buff_B_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_14_ce0_local = 1'b1;
    end else begin
        buff_B_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_1_reg_1154 == 2'd2))) begin
        buff_B_14_we0_local = 1'b1;
    end else begin
        buff_B_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_15_ce0_local = 1'b1;
    end else begin
        buff_B_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_1_reg_1154 == 2'd3))) begin
        buff_B_15_we0_local = 1'b1;
    end else begin
        buff_B_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_16_ce0_local = 1'b1;
    end else begin
        buff_B_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_1_reg_1154 == 2'd0))) begin
        buff_B_16_we0_local = 1'b1;
    end else begin
        buff_B_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_17_ce0_local = 1'b1;
    end else begin
        buff_B_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_1_reg_1154 == 2'd1))) begin
        buff_B_17_we0_local = 1'b1;
    end else begin
        buff_B_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_18_ce0_local = 1'b1;
    end else begin
        buff_B_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_1_reg_1154 == 2'd2))) begin
        buff_B_18_we0_local = 1'b1;
    end else begin
        buff_B_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_19_ce0_local = 1'b1;
    end else begin
        buff_B_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_1_reg_1154 == 2'd3))) begin
        buff_B_19_we0_local = 1'b1;
    end else begin
        buff_B_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_1_ce0_local = 1'b1;
    end else begin
        buff_B_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_1_reg_1154 == 2'd1))) begin
        buff_B_1_we0_local = 1'b1;
    end else begin
        buff_B_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_20_ce0_local = 1'b1;
    end else begin
        buff_B_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_1_reg_1154 == 2'd0))) begin
        buff_B_20_we0_local = 1'b1;
    end else begin
        buff_B_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_21_ce0_local = 1'b1;
    end else begin
        buff_B_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_1_reg_1154 == 2'd1))) begin
        buff_B_21_we0_local = 1'b1;
    end else begin
        buff_B_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_22_ce0_local = 1'b1;
    end else begin
        buff_B_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_1_reg_1154 == 2'd2))) begin
        buff_B_22_we0_local = 1'b1;
    end else begin
        buff_B_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_23_ce0_local = 1'b1;
    end else begin
        buff_B_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_1_reg_1154 == 2'd3))) begin
        buff_B_23_we0_local = 1'b1;
    end else begin
        buff_B_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_24_ce0_local = 1'b1;
    end else begin
        buff_B_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_1_reg_1154 == 2'd0))) begin
        buff_B_24_we0_local = 1'b1;
    end else begin
        buff_B_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_25_ce0_local = 1'b1;
    end else begin
        buff_B_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_1_reg_1154 == 2'd1))) begin
        buff_B_25_we0_local = 1'b1;
    end else begin
        buff_B_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_26_ce0_local = 1'b1;
    end else begin
        buff_B_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_1_reg_1154 == 2'd2))) begin
        buff_B_26_we0_local = 1'b1;
    end else begin
        buff_B_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_27_ce0_local = 1'b1;
    end else begin
        buff_B_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_1_reg_1154 == 2'd3))) begin
        buff_B_27_we0_local = 1'b1;
    end else begin
        buff_B_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_28_ce0_local = 1'b1;
    end else begin
        buff_B_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_1_reg_1154 == 2'd0))) begin
        buff_B_28_we0_local = 1'b1;
    end else begin
        buff_B_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_29_ce0_local = 1'b1;
    end else begin
        buff_B_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_1_reg_1154 == 2'd1))) begin
        buff_B_29_we0_local = 1'b1;
    end else begin
        buff_B_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_2_ce0_local = 1'b1;
    end else begin
        buff_B_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_1_reg_1154 == 2'd2))) begin
        buff_B_2_we0_local = 1'b1;
    end else begin
        buff_B_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_30_ce0_local = 1'b1;
    end else begin
        buff_B_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_1_reg_1154 == 2'd2))) begin
        buff_B_30_we0_local = 1'b1;
    end else begin
        buff_B_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_31_ce0_local = 1'b1;
    end else begin
        buff_B_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_1_reg_1154 == 2'd3))) begin
        buff_B_31_we0_local = 1'b1;
    end else begin
        buff_B_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_3_ce0_local = 1'b1;
    end else begin
        buff_B_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_1_reg_1154 == 2'd3))) begin
        buff_B_3_we0_local = 1'b1;
    end else begin
        buff_B_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_4_ce0_local = 1'b1;
    end else begin
        buff_B_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_1_reg_1154 == 2'd0))) begin
        buff_B_4_we0_local = 1'b1;
    end else begin
        buff_B_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_5_ce0_local = 1'b1;
    end else begin
        buff_B_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_1_reg_1154 == 2'd1))) begin
        buff_B_5_we0_local = 1'b1;
    end else begin
        buff_B_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_6_ce0_local = 1'b1;
    end else begin
        buff_B_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_1_reg_1154 == 2'd2))) begin
        buff_B_6_we0_local = 1'b1;
    end else begin
        buff_B_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_7_ce0_local = 1'b1;
    end else begin
        buff_B_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_1_reg_1154 == 2'd3))) begin
        buff_B_7_we0_local = 1'b1;
    end else begin
        buff_B_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_8_ce0_local = 1'b1;
    end else begin
        buff_B_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_1_reg_1154 == 2'd0))) begin
        buff_B_8_we0_local = 1'b1;
    end else begin
        buff_B_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_9_ce0_local = 1'b1;
    end else begin
        buff_B_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_1_reg_1154 == 2'd1))) begin
        buff_B_9_we0_local = 1'b1;
    end else begin
        buff_B_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_ce0_local = 1'b1;
    end else begin
        buff_B_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_1_reg_1154 == 2'd0))) begin
        buff_B_we0_local = 1'b1;
    end else begin
        buff_B_we0_local = 1'b0;
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
assign A_0_address0 = zext_ln20_fu_960_p1;
assign A_0_ce0 = A_0_ce0_local;
assign A_1_address0 = zext_ln20_fu_960_p1;
assign A_1_ce0 = A_1_ce0_local;
assign A_2_address0 = zext_ln20_fu_960_p1;
assign A_2_ce0 = A_2_ce0_local;
assign A_3_address0 = zext_ln20_fu_960_p1;
assign A_3_ce0 = A_3_ce0_local;
assign A_4_address0 = zext_ln20_fu_960_p1;
assign A_4_ce0 = A_4_ce0_local;
assign A_5_address0 = zext_ln20_fu_960_p1;
assign A_5_ce0 = A_5_ce0_local;
assign A_6_address0 = zext_ln20_fu_960_p1;
assign A_6_ce0 = A_6_ce0_local;
assign A_7_address0 = zext_ln20_fu_960_p1;
assign A_7_ce0 = A_7_ce0_local;
assign B_0_address0 = zext_ln20_fu_960_p1;
assign B_0_ce0 = B_0_ce0_local;
assign B_1_address0 = zext_ln20_fu_960_p1;
assign B_1_ce0 = B_1_ce0_local;
assign B_2_address0 = zext_ln20_fu_960_p1;
assign B_2_ce0 = B_2_ce0_local;
assign B_3_address0 = zext_ln20_fu_960_p1;
assign B_3_ce0 = B_3_ce0_local;
assign B_4_address0 = zext_ln20_fu_960_p1;
assign B_4_ce0 = B_4_ce0_local;
assign B_5_address0 = zext_ln20_fu_960_p1;
assign B_5_ce0 = B_5_ce0_local;
assign B_6_address0 = zext_ln20_fu_960_p1;
assign B_6_ce0 = B_6_ce0_local;
assign B_7_address0 = zext_ln20_fu_960_p1;
assign B_7_ce0 = B_7_ce0_local;
assign add_ln19_fu_980_p2 = (ap_sig_allocacmp_j_1 + 7'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln20_1_fu_1056_p1 = A_1_q0;
assign bitcast_ln20_2_fu_1069_p1 = A_2_q0;
assign bitcast_ln20_3_fu_1082_p1 = A_3_q0;
assign bitcast_ln20_4_fu_1095_p1 = A_4_q0;
assign bitcast_ln20_5_fu_1108_p1 = A_5_q0;
assign bitcast_ln20_6_fu_1121_p1 = A_6_q0;
assign bitcast_ln20_7_fu_1134_p1 = A_7_q0;
assign bitcast_ln20_fu_1043_p1 = A_0_q0;
assign bitcast_ln21_1_fu_1061_p1 = B_1_q0;
assign bitcast_ln21_2_fu_1074_p1 = B_2_q0;
assign bitcast_ln21_3_fu_1087_p1 = B_3_q0;
assign bitcast_ln21_4_fu_1100_p1 = B_4_q0;
assign bitcast_ln21_5_fu_1113_p1 = B_5_q0;
assign bitcast_ln21_6_fu_1126_p1 = B_6_q0;
assign bitcast_ln21_7_fu_1139_p1 = B_7_q0;
assign bitcast_ln21_fu_1048_p1 = B_0_q0;
assign buff_A_1_address0 = zext_ln20_reg_1171;
assign buff_A_1_ce0 = buff_A_1_ce0_local;
assign buff_A_1_d0 = bitcast_ln20_1_fu_1056_p1;
assign buff_A_1_we0 = buff_A_1_we0_local;
assign buff_A_2_address0 = zext_ln20_reg_1171;
assign buff_A_2_ce0 = buff_A_2_ce0_local;
assign buff_A_2_d0 = bitcast_ln20_2_fu_1069_p1;
assign buff_A_2_we0 = buff_A_2_we0_local;
assign buff_A_3_address0 = zext_ln20_reg_1171;
assign buff_A_3_ce0 = buff_A_3_ce0_local;
assign buff_A_3_d0 = bitcast_ln20_3_fu_1082_p1;
assign buff_A_3_we0 = buff_A_3_we0_local;
assign buff_A_4_address0 = zext_ln20_reg_1171;
assign buff_A_4_ce0 = buff_A_4_ce0_local;
assign buff_A_4_d0 = bitcast_ln20_4_fu_1095_p1;
assign buff_A_4_we0 = buff_A_4_we0_local;
assign buff_A_5_address0 = zext_ln20_reg_1171;
assign buff_A_5_ce0 = buff_A_5_ce0_local;
assign buff_A_5_d0 = bitcast_ln20_5_fu_1108_p1;
assign buff_A_5_we0 = buff_A_5_we0_local;
assign buff_A_6_address0 = zext_ln20_reg_1171;
assign buff_A_6_ce0 = buff_A_6_ce0_local;
assign buff_A_6_d0 = bitcast_ln20_6_fu_1121_p1;
assign buff_A_6_we0 = buff_A_6_we0_local;
assign buff_A_7_address0 = zext_ln20_reg_1171;
assign buff_A_7_ce0 = buff_A_7_ce0_local;
assign buff_A_7_d0 = bitcast_ln20_7_fu_1134_p1;
assign buff_A_7_we0 = buff_A_7_we0_local;
assign buff_A_address0 = zext_ln20_reg_1171;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_A_d0 = bitcast_ln20_fu_1043_p1;
assign buff_A_we0 = buff_A_we0_local;
assign buff_B_10_address0 = zext_ln21_fu_1007_p1;
assign buff_B_10_ce0 = buff_B_10_ce0_local;
assign buff_B_10_d0 = bitcast_ln21_2_fu_1074_p1;
assign buff_B_10_we0 = buff_B_10_we0_local;
assign buff_B_11_address0 = zext_ln21_fu_1007_p1;
assign buff_B_11_ce0 = buff_B_11_ce0_local;
assign buff_B_11_d0 = bitcast_ln21_2_fu_1074_p1;
assign buff_B_11_we0 = buff_B_11_we0_local;
assign buff_B_12_address0 = zext_ln21_fu_1007_p1;
assign buff_B_12_ce0 = buff_B_12_ce0_local;
assign buff_B_12_d0 = bitcast_ln21_3_fu_1087_p1;
assign buff_B_12_we0 = buff_B_12_we0_local;
assign buff_B_13_address0 = zext_ln21_fu_1007_p1;
assign buff_B_13_ce0 = buff_B_13_ce0_local;
assign buff_B_13_d0 = bitcast_ln21_3_fu_1087_p1;
assign buff_B_13_we0 = buff_B_13_we0_local;
assign buff_B_14_address0 = zext_ln21_fu_1007_p1;
assign buff_B_14_ce0 = buff_B_14_ce0_local;
assign buff_B_14_d0 = bitcast_ln21_3_fu_1087_p1;
assign buff_B_14_we0 = buff_B_14_we0_local;
assign buff_B_15_address0 = zext_ln21_fu_1007_p1;
assign buff_B_15_ce0 = buff_B_15_ce0_local;
assign buff_B_15_d0 = bitcast_ln21_3_fu_1087_p1;
assign buff_B_15_we0 = buff_B_15_we0_local;
assign buff_B_16_address0 = zext_ln21_fu_1007_p1;
assign buff_B_16_ce0 = buff_B_16_ce0_local;
assign buff_B_16_d0 = bitcast_ln21_4_fu_1100_p1;
assign buff_B_16_we0 = buff_B_16_we0_local;
assign buff_B_17_address0 = zext_ln21_fu_1007_p1;
assign buff_B_17_ce0 = buff_B_17_ce0_local;
assign buff_B_17_d0 = bitcast_ln21_4_fu_1100_p1;
assign buff_B_17_we0 = buff_B_17_we0_local;
assign buff_B_18_address0 = zext_ln21_fu_1007_p1;
assign buff_B_18_ce0 = buff_B_18_ce0_local;
assign buff_B_18_d0 = bitcast_ln21_4_fu_1100_p1;
assign buff_B_18_we0 = buff_B_18_we0_local;
assign buff_B_19_address0 = zext_ln21_fu_1007_p1;
assign buff_B_19_ce0 = buff_B_19_ce0_local;
assign buff_B_19_d0 = bitcast_ln21_4_fu_1100_p1;
assign buff_B_19_we0 = buff_B_19_we0_local;
assign buff_B_1_address0 = zext_ln21_fu_1007_p1;
assign buff_B_1_ce0 = buff_B_1_ce0_local;
assign buff_B_1_d0 = bitcast_ln21_fu_1048_p1;
assign buff_B_1_we0 = buff_B_1_we0_local;
assign buff_B_20_address0 = zext_ln21_fu_1007_p1;
assign buff_B_20_ce0 = buff_B_20_ce0_local;
assign buff_B_20_d0 = bitcast_ln21_5_fu_1113_p1;
assign buff_B_20_we0 = buff_B_20_we0_local;
assign buff_B_21_address0 = zext_ln21_fu_1007_p1;
assign buff_B_21_ce0 = buff_B_21_ce0_local;
assign buff_B_21_d0 = bitcast_ln21_5_fu_1113_p1;
assign buff_B_21_we0 = buff_B_21_we0_local;
assign buff_B_22_address0 = zext_ln21_fu_1007_p1;
assign buff_B_22_ce0 = buff_B_22_ce0_local;
assign buff_B_22_d0 = bitcast_ln21_5_fu_1113_p1;
assign buff_B_22_we0 = buff_B_22_we0_local;
assign buff_B_23_address0 = zext_ln21_fu_1007_p1;
assign buff_B_23_ce0 = buff_B_23_ce0_local;
assign buff_B_23_d0 = bitcast_ln21_5_fu_1113_p1;
assign buff_B_23_we0 = buff_B_23_we0_local;
assign buff_B_24_address0 = zext_ln21_fu_1007_p1;
assign buff_B_24_ce0 = buff_B_24_ce0_local;
assign buff_B_24_d0 = bitcast_ln21_6_fu_1126_p1;
assign buff_B_24_we0 = buff_B_24_we0_local;
assign buff_B_25_address0 = zext_ln21_fu_1007_p1;
assign buff_B_25_ce0 = buff_B_25_ce0_local;
assign buff_B_25_d0 = bitcast_ln21_6_fu_1126_p1;
assign buff_B_25_we0 = buff_B_25_we0_local;
assign buff_B_26_address0 = zext_ln21_fu_1007_p1;
assign buff_B_26_ce0 = buff_B_26_ce0_local;
assign buff_B_26_d0 = bitcast_ln21_6_fu_1126_p1;
assign buff_B_26_we0 = buff_B_26_we0_local;
assign buff_B_27_address0 = zext_ln21_fu_1007_p1;
assign buff_B_27_ce0 = buff_B_27_ce0_local;
assign buff_B_27_d0 = bitcast_ln21_6_fu_1126_p1;
assign buff_B_27_we0 = buff_B_27_we0_local;
assign buff_B_28_address0 = zext_ln21_fu_1007_p1;
assign buff_B_28_ce0 = buff_B_28_ce0_local;
assign buff_B_28_d0 = bitcast_ln21_7_fu_1139_p1;
assign buff_B_28_we0 = buff_B_28_we0_local;
assign buff_B_29_address0 = zext_ln21_fu_1007_p1;
assign buff_B_29_ce0 = buff_B_29_ce0_local;
assign buff_B_29_d0 = bitcast_ln21_7_fu_1139_p1;
assign buff_B_29_we0 = buff_B_29_we0_local;
assign buff_B_2_address0 = zext_ln21_fu_1007_p1;
assign buff_B_2_ce0 = buff_B_2_ce0_local;
assign buff_B_2_d0 = bitcast_ln21_fu_1048_p1;
assign buff_B_2_we0 = buff_B_2_we0_local;
assign buff_B_30_address0 = zext_ln21_fu_1007_p1;
assign buff_B_30_ce0 = buff_B_30_ce0_local;
assign buff_B_30_d0 = bitcast_ln21_7_fu_1139_p1;
assign buff_B_30_we0 = buff_B_30_we0_local;
assign buff_B_31_address0 = zext_ln21_fu_1007_p1;
assign buff_B_31_ce0 = buff_B_31_ce0_local;
assign buff_B_31_d0 = bitcast_ln21_7_fu_1139_p1;
assign buff_B_31_we0 = buff_B_31_we0_local;
assign buff_B_3_address0 = zext_ln21_fu_1007_p1;
assign buff_B_3_ce0 = buff_B_3_ce0_local;
assign buff_B_3_d0 = bitcast_ln21_fu_1048_p1;
assign buff_B_3_we0 = buff_B_3_we0_local;
assign buff_B_4_address0 = zext_ln21_fu_1007_p1;
assign buff_B_4_ce0 = buff_B_4_ce0_local;
assign buff_B_4_d0 = bitcast_ln21_1_fu_1061_p1;
assign buff_B_4_we0 = buff_B_4_we0_local;
assign buff_B_5_address0 = zext_ln21_fu_1007_p1;
assign buff_B_5_ce0 = buff_B_5_ce0_local;
assign buff_B_5_d0 = bitcast_ln21_1_fu_1061_p1;
assign buff_B_5_we0 = buff_B_5_we0_local;
assign buff_B_6_address0 = zext_ln21_fu_1007_p1;
assign buff_B_6_ce0 = buff_B_6_ce0_local;
assign buff_B_6_d0 = bitcast_ln21_1_fu_1061_p1;
assign buff_B_6_we0 = buff_B_6_we0_local;
assign buff_B_7_address0 = zext_ln21_fu_1007_p1;
assign buff_B_7_ce0 = buff_B_7_ce0_local;
assign buff_B_7_d0 = bitcast_ln21_1_fu_1061_p1;
assign buff_B_7_we0 = buff_B_7_we0_local;
assign buff_B_8_address0 = zext_ln21_fu_1007_p1;
assign buff_B_8_ce0 = buff_B_8_ce0_local;
assign buff_B_8_d0 = bitcast_ln21_2_fu_1074_p1;
assign buff_B_8_we0 = buff_B_8_we0_local;
assign buff_B_9_address0 = zext_ln21_fu_1007_p1;
assign buff_B_9_ce0 = buff_B_9_ce0_local;
assign buff_B_9_d0 = bitcast_ln21_2_fu_1074_p1;
assign buff_B_9_we0 = buff_B_9_we0_local;
assign buff_B_address0 = zext_ln21_fu_1007_p1;
assign buff_B_ce0 = buff_B_ce0_local;
assign buff_B_d0 = bitcast_ln21_fu_1048_p1;
assign buff_B_we0 = buff_B_we0_local;
assign lshr_ln6_5_fu_942_p4 = {{ap_sig_allocacmp_j_1[5:3]}};
assign tmp_1_reg_1154 = empty_17;
assign tmp_2_fu_934_p3 = ap_sig_allocacmp_j_1[32'd6];
assign tmp_3_fu_991_p4 = {{i[5:2]}};
assign tmp_4_fu_1000_p3 = {{tmp_3_fu_991_p4}, {lshr_ln6_5_reg_1166}};
assign tmp_s_fu_952_p3 = {{i}, {lshr_ln6_5_fu_942_p4}};
assign zext_ln20_fu_960_p1 = tmp_s_fu_952_p3;
assign zext_ln21_fu_1007_p1 = tmp_4_fu_1000_p3;
always @ (posedge ap_clk) begin
    zext_ln20_reg_1171[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
end
endmodule 