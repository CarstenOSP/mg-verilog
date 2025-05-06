
module syr2k_syr2k_Pipeline_lprd_1_lprd_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_0_address0,A_0_ce0,A_0_q0,A_1_address0,A_1_ce0,A_1_q0,A_2_address0,A_2_ce0,A_2_q0,A_3_address0,A_3_ce0,A_3_q0,B_0_address0,B_0_ce0,B_0_q0,B_1_address0,B_1_ce0,B_1_q0,B_2_address0,B_2_ce0,B_2_q0,B_3_address0,B_3_ce0,B_3_q0,C_0_address0,C_0_ce0,C_0_q0,C_1_address0,C_1_ce0,C_1_q0,C_2_address0,C_2_ce0,C_2_q0,C_3_address0,C_3_ce0,C_3_q0,buff_A0_address0,buff_A0_ce0,buff_A0_we0,buff_A0_d0,buff_A0_1_address0,buff_A0_1_ce0,buff_A0_1_we0,buff_A0_1_d0,buff_A0_2_address0,buff_A0_2_ce0,buff_A0_2_we0,buff_A0_2_d0,buff_A0_3_address0,buff_A0_3_ce0,buff_A0_3_we0,buff_A0_3_d0,buff_A1_address0,buff_A1_ce0,buff_A1_we0,buff_A1_d0,buff_A1_1_address0,buff_A1_1_ce0,buff_A1_1_we0,buff_A1_1_d0,buff_A1_2_address0,buff_A1_2_ce0,buff_A1_2_we0,buff_A1_2_d0,buff_A1_3_address0,buff_A1_3_ce0,buff_A1_3_we0,buff_A1_3_d0,buff_B0_address0,buff_B0_ce0,buff_B0_we0,buff_B0_d0,buff_B0_1_address0,buff_B0_1_ce0,buff_B0_1_we0,buff_B0_1_d0,buff_B0_2_address0,buff_B0_2_ce0,buff_B0_2_we0,buff_B0_2_d0,buff_B0_3_address0,buff_B0_3_ce0,buff_B0_3_we0,buff_B0_3_d0,buff_B0_4_address0,buff_B0_4_ce0,buff_B0_4_we0,buff_B0_4_d0,buff_B0_5_address0,buff_B0_5_ce0,buff_B0_5_we0,buff_B0_5_d0,buff_B0_6_address0,buff_B0_6_ce0,buff_B0_6_we0,buff_B0_6_d0,buff_B0_7_address0,buff_B0_7_ce0,buff_B0_7_we0,buff_B0_7_d0,buff_B0_8_address0,buff_B0_8_ce0,buff_B0_8_we0,buff_B0_8_d0,buff_B0_9_address0,buff_B0_9_ce0,buff_B0_9_we0,buff_B0_9_d0,buff_B0_10_address0,buff_B0_10_ce0,buff_B0_10_we0,buff_B0_10_d0,buff_B0_11_address0,buff_B0_11_ce0,buff_B0_11_we0,buff_B0_11_d0,buff_B0_12_address0,buff_B0_12_ce0,buff_B0_12_we0,buff_B0_12_d0,buff_B0_13_address0,buff_B0_13_ce0,buff_B0_13_we0,buff_B0_13_d0,buff_B0_14_address0,buff_B0_14_ce0,buff_B0_14_we0,buff_B0_14_d0,buff_B0_15_address0,buff_B0_15_ce0,buff_B0_15_we0,buff_B0_15_d0,buff_C_address0,buff_C_ce0,buff_C_we0,buff_C_d0,buff_C_1_address0,buff_C_1_ce0,buff_C_1_we0,buff_C_1_d0,buff_C_2_address0,buff_C_2_ce0,buff_C_2_we0,buff_C_2_d0,buff_C_3_address0,buff_C_3_ce0,buff_C_3_we0,buff_C_3_d0,buff_D_out_address0,buff_D_out_ce0,buff_D_out_we0,buff_D_out_d0,buff_D_out_1_address0,buff_D_out_1_ce0,buff_D_out_1_we0,buff_D_out_1_d0,buff_D_out_2_address0,buff_D_out_2_ce0,buff_D_out_2_we0,buff_D_out_2_d0,buff_D_out_3_address0,buff_D_out_3_ce0,buff_D_out_3_we0,buff_D_out_3_d0,tmp1_address0,tmp1_ce0,tmp1_we0,tmp1_d0,tmp1_1_address0,tmp1_1_ce0,tmp1_1_we0,tmp1_1_d0,tmp1_2_address0,tmp1_2_ce0,tmp1_2_we0,tmp1_2_d0,tmp1_3_address0,tmp1_3_ce0,tmp1_3_we0,tmp1_3_d0,tmp2_address0,tmp2_ce0,tmp2_we0,tmp2_d0,tmp2_1_address0,tmp2_1_ce0,tmp2_1_we0,tmp2_1_d0,tmp2_2_address0,tmp2_2_ce0,tmp2_2_we0,tmp2_2_d0,tmp2_3_address0,tmp2_3_ce0,tmp2_3_we0,tmp2_3_d0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] A_0_address0;
output   A_0_ce0;
input  [31:0] A_0_q0;
output  [9:0] A_1_address0;
output   A_1_ce0;
input  [31:0] A_1_q0;
output  [9:0] A_2_address0;
output   A_2_ce0;
input  [31:0] A_2_q0;
output  [9:0] A_3_address0;
output   A_3_ce0;
input  [31:0] A_3_q0;
output  [9:0] B_0_address0;
output   B_0_ce0;
input  [31:0] B_0_q0;
output  [9:0] B_1_address0;
output   B_1_ce0;
input  [31:0] B_1_q0;
output  [9:0] B_2_address0;
output   B_2_ce0;
input  [31:0] B_2_q0;
output  [9:0] B_3_address0;
output   B_3_ce0;
input  [31:0] B_3_q0;
output  [9:0] C_0_address0;
output   C_0_ce0;
input  [31:0] C_0_q0;
output  [9:0] C_1_address0;
output   C_1_ce0;
input  [31:0] C_1_q0;
output  [9:0] C_2_address0;
output   C_2_ce0;
input  [31:0] C_2_q0;
output  [9:0] C_3_address0;
output   C_3_ce0;
input  [31:0] C_3_q0;
output  [9:0] buff_A0_address0;
output   buff_A0_ce0;
output   buff_A0_we0;
output  [31:0] buff_A0_d0;
output  [9:0] buff_A0_1_address0;
output   buff_A0_1_ce0;
output   buff_A0_1_we0;
output  [31:0] buff_A0_1_d0;
output  [9:0] buff_A0_2_address0;
output   buff_A0_2_ce0;
output   buff_A0_2_we0;
output  [31:0] buff_A0_2_d0;
output  [9:0] buff_A0_3_address0;
output   buff_A0_3_ce0;
output   buff_A0_3_we0;
output  [31:0] buff_A0_3_d0;
output  [9:0] buff_A1_address0;
output   buff_A1_ce0;
output   buff_A1_we0;
output  [31:0] buff_A1_d0;
output  [9:0] buff_A1_1_address0;
output   buff_A1_1_ce0;
output   buff_A1_1_we0;
output  [31:0] buff_A1_1_d0;
output  [9:0] buff_A1_2_address0;
output   buff_A1_2_ce0;
output   buff_A1_2_we0;
output  [31:0] buff_A1_2_d0;
output  [9:0] buff_A1_3_address0;
output   buff_A1_3_ce0;
output   buff_A1_3_we0;
output  [31:0] buff_A1_3_d0;
output  [7:0] buff_B0_address0;
output   buff_B0_ce0;
output   buff_B0_we0;
output  [31:0] buff_B0_d0;
output  [7:0] buff_B0_1_address0;
output   buff_B0_1_ce0;
output   buff_B0_1_we0;
output  [31:0] buff_B0_1_d0;
output  [7:0] buff_B0_2_address0;
output   buff_B0_2_ce0;
output   buff_B0_2_we0;
output  [31:0] buff_B0_2_d0;
output  [7:0] buff_B0_3_address0;
output   buff_B0_3_ce0;
output   buff_B0_3_we0;
output  [31:0] buff_B0_3_d0;
output  [7:0] buff_B0_4_address0;
output   buff_B0_4_ce0;
output   buff_B0_4_we0;
output  [31:0] buff_B0_4_d0;
output  [7:0] buff_B0_5_address0;
output   buff_B0_5_ce0;
output   buff_B0_5_we0;
output  [31:0] buff_B0_5_d0;
output  [7:0] buff_B0_6_address0;
output   buff_B0_6_ce0;
output   buff_B0_6_we0;
output  [31:0] buff_B0_6_d0;
output  [7:0] buff_B0_7_address0;
output   buff_B0_7_ce0;
output   buff_B0_7_we0;
output  [31:0] buff_B0_7_d0;
output  [7:0] buff_B0_8_address0;
output   buff_B0_8_ce0;
output   buff_B0_8_we0;
output  [31:0] buff_B0_8_d0;
output  [7:0] buff_B0_9_address0;
output   buff_B0_9_ce0;
output   buff_B0_9_we0;
output  [31:0] buff_B0_9_d0;
output  [7:0] buff_B0_10_address0;
output   buff_B0_10_ce0;
output   buff_B0_10_we0;
output  [31:0] buff_B0_10_d0;
output  [7:0] buff_B0_11_address0;
output   buff_B0_11_ce0;
output   buff_B0_11_we0;
output  [31:0] buff_B0_11_d0;
output  [7:0] buff_B0_12_address0;
output   buff_B0_12_ce0;
output   buff_B0_12_we0;
output  [31:0] buff_B0_12_d0;
output  [7:0] buff_B0_13_address0;
output   buff_B0_13_ce0;
output   buff_B0_13_we0;
output  [31:0] buff_B0_13_d0;
output  [7:0] buff_B0_14_address0;
output   buff_B0_14_ce0;
output   buff_B0_14_we0;
output  [31:0] buff_B0_14_d0;
output  [7:0] buff_B0_15_address0;
output   buff_B0_15_ce0;
output   buff_B0_15_we0;
output  [31:0] buff_B0_15_d0;
output  [9:0] buff_C_address0;
output   buff_C_ce0;
output   buff_C_we0;
output  [31:0] buff_C_d0;
output  [9:0] buff_C_1_address0;
output   buff_C_1_ce0;
output   buff_C_1_we0;
output  [31:0] buff_C_1_d0;
output  [9:0] buff_C_2_address0;
output   buff_C_2_ce0;
output   buff_C_2_we0;
output  [31:0] buff_C_2_d0;
output  [9:0] buff_C_3_address0;
output   buff_C_3_ce0;
output   buff_C_3_we0;
output  [31:0] buff_C_3_d0;
output  [9:0] buff_D_out_address0;
output   buff_D_out_ce0;
output   buff_D_out_we0;
output  [31:0] buff_D_out_d0;
output  [9:0] buff_D_out_1_address0;
output   buff_D_out_1_ce0;
output   buff_D_out_1_we0;
output  [31:0] buff_D_out_1_d0;
output  [9:0] buff_D_out_2_address0;
output   buff_D_out_2_ce0;
output   buff_D_out_2_we0;
output  [31:0] buff_D_out_2_d0;
output  [9:0] buff_D_out_3_address0;
output   buff_D_out_3_ce0;
output   buff_D_out_3_we0;
output  [31:0] buff_D_out_3_d0;
output  [9:0] tmp1_address0;
output   tmp1_ce0;
output   tmp1_we0;
output  [31:0] tmp1_d0;
output  [9:0] tmp1_1_address0;
output   tmp1_1_ce0;
output   tmp1_1_we0;
output  [31:0] tmp1_1_d0;
output  [9:0] tmp1_2_address0;
output   tmp1_2_ce0;
output   tmp1_2_we0;
output  [31:0] tmp1_2_d0;
output  [9:0] tmp1_3_address0;
output   tmp1_3_ce0;
output   tmp1_3_we0;
output  [31:0] tmp1_3_d0;
output  [9:0] tmp2_address0;
output   tmp2_ce0;
output   tmp2_we0;
output  [31:0] tmp2_d0;
output  [9:0] tmp2_1_address0;
output   tmp2_1_ce0;
output   tmp2_1_we0;
output  [31:0] tmp2_1_d0;
output  [9:0] tmp2_2_address0;
output   tmp2_2_ce0;
output   tmp2_2_we0;
output  [31:0] tmp2_2_d0;
output  [9:0] tmp2_3_address0;
output   tmp2_3_ce0;
output   tmp2_3_we0;
output  [31:0] tmp2_3_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln14_fu_880_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [1:0] trunc_ln14_1_fu_937_p1;
reg   [1:0] trunc_ln14_1_reg_1140;
wire   [3:0] lshr_ln5_1_fu_941_p4;
reg   [3:0] lshr_ln5_1_reg_1144;
wire   [63:0] zext_ln16_fu_959_p1;
reg   [63:0] zext_ln16_reg_1149;
reg   [3:0] tmp_2_reg_1225;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln18_fu_1019_p1;
reg   [6:0] j_fu_162;
wire   [6:0] add_ln15_fu_997_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_166;
wire   [6:0] select_ln14_fu_925_p3;
reg   [10:0] indvar_flatten_fu_170;
wire   [10:0] add_ln14_1_fu_886_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten_load;
reg    A_0_ce0_local;
reg    B_0_ce0_local;
reg    C_0_ce0_local;
reg    A_1_ce0_local;
reg    B_1_ce0_local;
reg    C_1_ce0_local;
reg    A_2_ce0_local;
reg    B_2_ce0_local;
reg    C_2_ce0_local;
reg    A_3_ce0_local;
reg    B_3_ce0_local;
reg    C_3_ce0_local;
reg    buff_D_out_we0_local;
reg    buff_D_out_ce0_local;
reg    buff_D_out_1_we0_local;
reg    buff_D_out_1_ce0_local;
reg    buff_D_out_2_we0_local;
reg    buff_D_out_2_ce0_local;
reg    buff_D_out_3_we0_local;
reg    buff_D_out_3_ce0_local;
reg    tmp1_we0_local;
reg    tmp1_ce0_local;
reg    tmp1_1_we0_local;
reg    tmp1_1_ce0_local;
reg    tmp1_2_we0_local;
reg    tmp1_2_ce0_local;
reg    tmp1_3_we0_local;
reg    tmp1_3_ce0_local;
reg    tmp2_we0_local;
reg    tmp2_ce0_local;
reg    tmp2_1_we0_local;
reg    tmp2_1_ce0_local;
reg    tmp2_2_we0_local;
reg    tmp2_2_ce0_local;
reg    tmp2_3_we0_local;
reg    tmp2_3_ce0_local;
reg    buff_A0_we0_local;
wire   [31:0] bitcast_ln16_fu_1039_p1;
reg    buff_A0_ce0_local;
reg    buff_A0_1_we0_local;
wire   [31:0] bitcast_ln16_1_fu_1058_p1;
reg    buff_A0_1_ce0_local;
reg    buff_A0_2_we0_local;
wire   [31:0] bitcast_ln16_2_fu_1077_p1;
reg    buff_A0_2_ce0_local;
reg    buff_A0_3_we0_local;
wire   [31:0] bitcast_ln16_3_fu_1096_p1;
reg    buff_A0_3_ce0_local;
reg    buff_A1_we0_local;
reg    buff_A1_ce0_local;
reg    buff_A1_1_we0_local;
reg    buff_A1_1_ce0_local;
reg    buff_A1_2_we0_local;
reg    buff_A1_2_ce0_local;
reg    buff_A1_3_we0_local;
reg    buff_A1_3_ce0_local;
reg    buff_B0_2_we0_local;
wire   [31:0] bitcast_ln18_fu_1045_p1;
reg    buff_B0_2_ce0_local;
reg    buff_B0_6_we0_local;
wire   [31:0] bitcast_ln18_1_fu_1064_p1;
reg    buff_B0_6_ce0_local;
reg    buff_B0_10_we0_local;
wire   [31:0] bitcast_ln18_2_fu_1083_p1;
reg    buff_B0_10_ce0_local;
reg    buff_B0_14_we0_local;
wire   [31:0] bitcast_ln18_3_fu_1102_p1;
reg    buff_B0_14_ce0_local;
reg    buff_B0_1_we0_local;
reg    buff_B0_1_ce0_local;
reg    buff_B0_5_we0_local;
reg    buff_B0_5_ce0_local;
reg    buff_B0_9_we0_local;
reg    buff_B0_9_ce0_local;
reg    buff_B0_13_we0_local;
reg    buff_B0_13_ce0_local;
reg    buff_B0_we0_local;
reg    buff_B0_ce0_local;
reg    buff_B0_4_we0_local;
reg    buff_B0_4_ce0_local;
reg    buff_B0_8_we0_local;
reg    buff_B0_8_ce0_local;
reg    buff_B0_12_we0_local;
reg    buff_B0_12_ce0_local;
reg    buff_B0_3_we0_local;
reg    buff_B0_3_ce0_local;
reg    buff_B0_7_we0_local;
reg    buff_B0_7_ce0_local;
reg    buff_B0_11_we0_local;
reg    buff_B0_11_ce0_local;
reg    buff_B0_15_we0_local;
reg    buff_B0_15_ce0_local;
reg    buff_C_we0_local;
wire   [31:0] bitcast_ln20_fu_1053_p1;
reg    buff_C_ce0_local;
reg    buff_C_1_we0_local;
wire   [31:0] bitcast_ln20_1_fu_1072_p1;
reg    buff_C_1_ce0_local;
reg    buff_C_2_we0_local;
wire   [31:0] bitcast_ln20_2_fu_1091_p1;
reg    buff_C_2_ce0_local;
reg    buff_C_3_we0_local;
wire   [31:0] bitcast_ln20_3_fu_1110_p1;
reg    buff_C_3_ce0_local;
wire   [0:0] tmp_fu_909_p3;
wire   [6:0] add_ln14_fu_903_p2;
wire   [6:0] select_ln5_fu_917_p3;
wire   [5:0] trunc_ln14_fu_933_p1;
wire   [9:0] tmp_s_fu_951_p3;
wire   [7:0] tmp_3_fu_1013_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 j_fu_162 = 7'd0;
#0 i_fu_166 = 7'd0;
#0 indvar_flatten_fu_170 = 11'd0;
#0 ap_done_reg = 1'b0;
end
syr2k_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_fu_166 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_166 <= select_ln14_fu_925_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln14_fu_880_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_170 <= add_ln14_1_fu_886_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_170 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_162 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_162 <= add_ln15_fu_997_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        lshr_ln5_1_reg_1144 <= {{select_ln5_fu_917_p3[5:2]}};
        tmp_2_reg_1225 <= {{select_ln14_fu_925_p3[5:2]}};
        trunc_ln14_1_reg_1140 <= trunc_ln14_1_fu_937_p1;
        zext_ln16_reg_1149[9 : 0] <= zext_ln16_fu_959_p1[9 : 0];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        A_0_ce0_local = 1'b1;
    end else begin
        A_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        A_1_ce0_local = 1'b1;
    end else begin
        A_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        A_2_ce0_local = 1'b1;
    end else begin
        A_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        A_3_ce0_local = 1'b1;
    end else begin
        A_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_0_ce0_local = 1'b1;
    end else begin
        B_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_1_ce0_local = 1'b1;
    end else begin
        B_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_2_ce0_local = 1'b1;
    end else begin
        B_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_3_ce0_local = 1'b1;
    end else begin
        B_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        C_0_ce0_local = 1'b1;
    end else begin
        C_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        C_1_ce0_local = 1'b1;
    end else begin
        C_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        C_2_ce0_local = 1'b1;
    end else begin
        C_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        C_3_ce0_local = 1'b1;
    end else begin
        C_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln14_fu_880_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_170;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A0_1_ce0_local = 1'b1;
    end else begin
        buff_A0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A0_1_we0_local = 1'b1;
    end else begin
        buff_A0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A0_2_ce0_local = 1'b1;
    end else begin
        buff_A0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A0_2_we0_local = 1'b1;
    end else begin
        buff_A0_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A0_3_ce0_local = 1'b1;
    end else begin
        buff_A0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A0_3_we0_local = 1'b1;
    end else begin
        buff_A0_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A0_ce0_local = 1'b1;
    end else begin
        buff_A0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A0_we0_local = 1'b1;
    end else begin
        buff_A0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_1_ce0_local = 1'b1;
    end else begin
        buff_A1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_1_we0_local = 1'b1;
    end else begin
        buff_A1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_2_ce0_local = 1'b1;
    end else begin
        buff_A1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_2_we0_local = 1'b1;
    end else begin
        buff_A1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_3_ce0_local = 1'b1;
    end else begin
        buff_A1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_3_we0_local = 1'b1;
    end else begin
        buff_A1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_ce0_local = 1'b1;
    end else begin
        buff_A1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_we0_local = 1'b1;
    end else begin
        buff_A1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B0_10_ce0_local = 1'b1;
    end else begin
        buff_B0_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln14_1_reg_1140 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B0_10_we0_local = 1'b1;
    end else begin
        buff_B0_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B0_11_ce0_local = 1'b1;
    end else begin
        buff_B0_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln14_1_reg_1140 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B0_11_we0_local = 1'b1;
    end else begin
        buff_B0_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B0_12_ce0_local = 1'b1;
    end else begin
        buff_B0_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln14_1_reg_1140 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B0_12_we0_local = 1'b1;
    end else begin
        buff_B0_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B0_13_ce0_local = 1'b1;
    end else begin
        buff_B0_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln14_1_reg_1140 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B0_13_we0_local = 1'b1;
    end else begin
        buff_B0_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B0_14_ce0_local = 1'b1;
    end else begin
        buff_B0_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln14_1_reg_1140 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B0_14_we0_local = 1'b1;
    end else begin
        buff_B0_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B0_15_ce0_local = 1'b1;
    end else begin
        buff_B0_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln14_1_reg_1140 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B0_15_we0_local = 1'b1;
    end else begin
        buff_B0_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B0_1_ce0_local = 1'b1;
    end else begin
        buff_B0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln14_1_reg_1140 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B0_1_we0_local = 1'b1;
    end else begin
        buff_B0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B0_2_ce0_local = 1'b1;
    end else begin
        buff_B0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln14_1_reg_1140 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B0_2_we0_local = 1'b1;
    end else begin
        buff_B0_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B0_3_ce0_local = 1'b1;
    end else begin
        buff_B0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln14_1_reg_1140 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B0_3_we0_local = 1'b1;
    end else begin
        buff_B0_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B0_4_ce0_local = 1'b1;
    end else begin
        buff_B0_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln14_1_reg_1140 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B0_4_we0_local = 1'b1;
    end else begin
        buff_B0_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B0_5_ce0_local = 1'b1;
    end else begin
        buff_B0_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln14_1_reg_1140 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B0_5_we0_local = 1'b1;
    end else begin
        buff_B0_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B0_6_ce0_local = 1'b1;
    end else begin
        buff_B0_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln14_1_reg_1140 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B0_6_we0_local = 1'b1;
    end else begin
        buff_B0_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B0_7_ce0_local = 1'b1;
    end else begin
        buff_B0_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln14_1_reg_1140 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B0_7_we0_local = 1'b1;
    end else begin
        buff_B0_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B0_8_ce0_local = 1'b1;
    end else begin
        buff_B0_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln14_1_reg_1140 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B0_8_we0_local = 1'b1;
    end else begin
        buff_B0_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B0_9_ce0_local = 1'b1;
    end else begin
        buff_B0_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln14_1_reg_1140 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B0_9_we0_local = 1'b1;
    end else begin
        buff_B0_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B0_ce0_local = 1'b1;
    end else begin
        buff_B0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln14_1_reg_1140 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B0_we0_local = 1'b1;
    end else begin
        buff_B0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_C_1_ce0_local = 1'b1;
    end else begin
        buff_C_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_C_1_we0_local = 1'b1;
    end else begin
        buff_C_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_C_2_ce0_local = 1'b1;
    end else begin
        buff_C_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_C_2_we0_local = 1'b1;
    end else begin
        buff_C_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_C_3_ce0_local = 1'b1;
    end else begin
        buff_C_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_C_3_we0_local = 1'b1;
    end else begin
        buff_C_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_C_ce0_local = 1'b1;
    end else begin
        buff_C_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_C_we0_local = 1'b1;
    end else begin
        buff_C_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_out_1_ce0_local = 1'b1;
    end else begin
        buff_D_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_out_1_we0_local = 1'b1;
    end else begin
        buff_D_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_out_2_ce0_local = 1'b1;
    end else begin
        buff_D_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_out_2_we0_local = 1'b1;
    end else begin
        buff_D_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_out_3_ce0_local = 1'b1;
    end else begin
        buff_D_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_out_3_we0_local = 1'b1;
    end else begin
        buff_D_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_out_ce0_local = 1'b1;
    end else begin
        buff_D_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_D_out_we0_local = 1'b1;
    end else begin
        buff_D_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_1_ce0_local = 1'b1;
    end else begin
        tmp1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_1_we0_local = 1'b1;
    end else begin
        tmp1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_2_ce0_local = 1'b1;
    end else begin
        tmp1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_2_we0_local = 1'b1;
    end else begin
        tmp1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_3_ce0_local = 1'b1;
    end else begin
        tmp1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_3_we0_local = 1'b1;
    end else begin
        tmp1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_ce0_local = 1'b1;
    end else begin
        tmp1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_we0_local = 1'b1;
    end else begin
        tmp1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_1_ce0_local = 1'b1;
    end else begin
        tmp2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_1_we0_local = 1'b1;
    end else begin
        tmp2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_2_ce0_local = 1'b1;
    end else begin
        tmp2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_2_we0_local = 1'b1;
    end else begin
        tmp2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_3_ce0_local = 1'b1;
    end else begin
        tmp2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_3_we0_local = 1'b1;
    end else begin
        tmp2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_ce0_local = 1'b1;
    end else begin
        tmp2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_we0_local = 1'b1;
    end else begin
        tmp2_we0_local = 1'b0;
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
assign A_0_address0 = zext_ln16_fu_959_p1;
assign A_0_ce0 = A_0_ce0_local;
assign A_1_address0 = zext_ln16_fu_959_p1;
assign A_1_ce0 = A_1_ce0_local;
assign A_2_address0 = zext_ln16_fu_959_p1;
assign A_2_ce0 = A_2_ce0_local;
assign A_3_address0 = zext_ln16_fu_959_p1;
assign A_3_ce0 = A_3_ce0_local;
assign B_0_address0 = zext_ln16_fu_959_p1;
assign B_0_ce0 = B_0_ce0_local;
assign B_1_address0 = zext_ln16_fu_959_p1;
assign B_1_ce0 = B_1_ce0_local;
assign B_2_address0 = zext_ln16_fu_959_p1;
assign B_2_ce0 = B_2_ce0_local;
assign B_3_address0 = zext_ln16_fu_959_p1;
assign B_3_ce0 = B_3_ce0_local;
assign C_0_address0 = zext_ln16_fu_959_p1;
assign C_0_ce0 = C_0_ce0_local;
assign C_1_address0 = zext_ln16_fu_959_p1;
assign C_1_ce0 = C_1_ce0_local;
assign C_2_address0 = zext_ln16_fu_959_p1;
assign C_2_ce0 = C_2_ce0_local;
assign C_3_address0 = zext_ln16_fu_959_p1;
assign C_3_ce0 = C_3_ce0_local;
assign add_ln14_1_fu_886_p2 = (ap_sig_allocacmp_indvar_flatten_load + 11'd1);
assign add_ln14_fu_903_p2 = (i_fu_166 + 7'd1);
assign add_ln15_fu_997_p2 = (select_ln5_fu_917_p3 + 7'd4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln16_1_fu_1058_p1 = A_1_q0;
assign bitcast_ln16_2_fu_1077_p1 = A_2_q0;
assign bitcast_ln16_3_fu_1096_p1 = A_3_q0;
assign bitcast_ln16_fu_1039_p1 = A_0_q0;
assign bitcast_ln18_1_fu_1064_p1 = B_1_q0;
assign bitcast_ln18_2_fu_1083_p1 = B_2_q0;
assign bitcast_ln18_3_fu_1102_p1 = B_3_q0;
assign bitcast_ln18_fu_1045_p1 = B_0_q0;
assign bitcast_ln20_1_fu_1072_p1 = C_1_q0;
assign bitcast_ln20_2_fu_1091_p1 = C_2_q0;
assign bitcast_ln20_3_fu_1110_p1 = C_3_q0;
assign bitcast_ln20_fu_1053_p1 = C_0_q0;
assign buff_A0_1_address0 = zext_ln16_reg_1149;
assign buff_A0_1_ce0 = buff_A0_1_ce0_local;
assign buff_A0_1_d0 = bitcast_ln16_1_fu_1058_p1;
assign buff_A0_1_we0 = buff_A0_1_we0_local;
assign buff_A0_2_address0 = zext_ln16_reg_1149;
assign buff_A0_2_ce0 = buff_A0_2_ce0_local;
assign buff_A0_2_d0 = bitcast_ln16_2_fu_1077_p1;
assign buff_A0_2_we0 = buff_A0_2_we0_local;
assign buff_A0_3_address0 = zext_ln16_reg_1149;
assign buff_A0_3_ce0 = buff_A0_3_ce0_local;
assign buff_A0_3_d0 = bitcast_ln16_3_fu_1096_p1;
assign buff_A0_3_we0 = buff_A0_3_we0_local;
assign buff_A0_address0 = zext_ln16_reg_1149;
assign buff_A0_ce0 = buff_A0_ce0_local;
assign buff_A0_d0 = bitcast_ln16_fu_1039_p1;
assign buff_A0_we0 = buff_A0_we0_local;
assign buff_A1_1_address0 = zext_ln16_reg_1149;
assign buff_A1_1_ce0 = buff_A1_1_ce0_local;
assign buff_A1_1_d0 = bitcast_ln16_1_fu_1058_p1;
assign buff_A1_1_we0 = buff_A1_1_we0_local;
assign buff_A1_2_address0 = zext_ln16_reg_1149;
assign buff_A1_2_ce0 = buff_A1_2_ce0_local;
assign buff_A1_2_d0 = bitcast_ln16_2_fu_1077_p1;
assign buff_A1_2_we0 = buff_A1_2_we0_local;
assign buff_A1_3_address0 = zext_ln16_reg_1149;
assign buff_A1_3_ce0 = buff_A1_3_ce0_local;
assign buff_A1_3_d0 = bitcast_ln16_3_fu_1096_p1;
assign buff_A1_3_we0 = buff_A1_3_we0_local;
assign buff_A1_address0 = zext_ln16_reg_1149;
assign buff_A1_ce0 = buff_A1_ce0_local;
assign buff_A1_d0 = bitcast_ln16_fu_1039_p1;
assign buff_A1_we0 = buff_A1_we0_local;
assign buff_B0_10_address0 = zext_ln18_fu_1019_p1;
assign buff_B0_10_ce0 = buff_B0_10_ce0_local;
assign buff_B0_10_d0 = bitcast_ln18_2_fu_1083_p1;
assign buff_B0_10_we0 = buff_B0_10_we0_local;
assign buff_B0_11_address0 = zext_ln18_fu_1019_p1;
assign buff_B0_11_ce0 = buff_B0_11_ce0_local;
assign buff_B0_11_d0 = bitcast_ln18_2_fu_1083_p1;
assign buff_B0_11_we0 = buff_B0_11_we0_local;
assign buff_B0_12_address0 = zext_ln18_fu_1019_p1;
assign buff_B0_12_ce0 = buff_B0_12_ce0_local;
assign buff_B0_12_d0 = bitcast_ln18_3_fu_1102_p1;
assign buff_B0_12_we0 = buff_B0_12_we0_local;
assign buff_B0_13_address0 = zext_ln18_fu_1019_p1;
assign buff_B0_13_ce0 = buff_B0_13_ce0_local;
assign buff_B0_13_d0 = bitcast_ln18_3_fu_1102_p1;
assign buff_B0_13_we0 = buff_B0_13_we0_local;
assign buff_B0_14_address0 = zext_ln18_fu_1019_p1;
assign buff_B0_14_ce0 = buff_B0_14_ce0_local;
assign buff_B0_14_d0 = bitcast_ln18_3_fu_1102_p1;
assign buff_B0_14_we0 = buff_B0_14_we0_local;
assign buff_B0_15_address0 = zext_ln18_fu_1019_p1;
assign buff_B0_15_ce0 = buff_B0_15_ce0_local;
assign buff_B0_15_d0 = bitcast_ln18_3_fu_1102_p1;
assign buff_B0_15_we0 = buff_B0_15_we0_local;
assign buff_B0_1_address0 = zext_ln18_fu_1019_p1;
assign buff_B0_1_ce0 = buff_B0_1_ce0_local;
assign buff_B0_1_d0 = bitcast_ln18_fu_1045_p1;
assign buff_B0_1_we0 = buff_B0_1_we0_local;
assign buff_B0_2_address0 = zext_ln18_fu_1019_p1;
assign buff_B0_2_ce0 = buff_B0_2_ce0_local;
assign buff_B0_2_d0 = bitcast_ln18_fu_1045_p1;
assign buff_B0_2_we0 = buff_B0_2_we0_local;
assign buff_B0_3_address0 = zext_ln18_fu_1019_p1;
assign buff_B0_3_ce0 = buff_B0_3_ce0_local;
assign buff_B0_3_d0 = bitcast_ln18_fu_1045_p1;
assign buff_B0_3_we0 = buff_B0_3_we0_local;
assign buff_B0_4_address0 = zext_ln18_fu_1019_p1;
assign buff_B0_4_ce0 = buff_B0_4_ce0_local;
assign buff_B0_4_d0 = bitcast_ln18_1_fu_1064_p1;
assign buff_B0_4_we0 = buff_B0_4_we0_local;
assign buff_B0_5_address0 = zext_ln18_fu_1019_p1;
assign buff_B0_5_ce0 = buff_B0_5_ce0_local;
assign buff_B0_5_d0 = bitcast_ln18_1_fu_1064_p1;
assign buff_B0_5_we0 = buff_B0_5_we0_local;
assign buff_B0_6_address0 = zext_ln18_fu_1019_p1;
assign buff_B0_6_ce0 = buff_B0_6_ce0_local;
assign buff_B0_6_d0 = bitcast_ln18_1_fu_1064_p1;
assign buff_B0_6_we0 = buff_B0_6_we0_local;
assign buff_B0_7_address0 = zext_ln18_fu_1019_p1;
assign buff_B0_7_ce0 = buff_B0_7_ce0_local;
assign buff_B0_7_d0 = bitcast_ln18_1_fu_1064_p1;
assign buff_B0_7_we0 = buff_B0_7_we0_local;
assign buff_B0_8_address0 = zext_ln18_fu_1019_p1;
assign buff_B0_8_ce0 = buff_B0_8_ce0_local;
assign buff_B0_8_d0 = bitcast_ln18_2_fu_1083_p1;
assign buff_B0_8_we0 = buff_B0_8_we0_local;
assign buff_B0_9_address0 = zext_ln18_fu_1019_p1;
assign buff_B0_9_ce0 = buff_B0_9_ce0_local;
assign buff_B0_9_d0 = bitcast_ln18_2_fu_1083_p1;
assign buff_B0_9_we0 = buff_B0_9_we0_local;
assign buff_B0_address0 = zext_ln18_fu_1019_p1;
assign buff_B0_ce0 = buff_B0_ce0_local;
assign buff_B0_d0 = bitcast_ln18_fu_1045_p1;
assign buff_B0_we0 = buff_B0_we0_local;
assign buff_C_1_address0 = zext_ln16_reg_1149;
assign buff_C_1_ce0 = buff_C_1_ce0_local;
assign buff_C_1_d0 = bitcast_ln20_1_fu_1072_p1;
assign buff_C_1_we0 = buff_C_1_we0_local;
assign buff_C_2_address0 = zext_ln16_reg_1149;
assign buff_C_2_ce0 = buff_C_2_ce0_local;
assign buff_C_2_d0 = bitcast_ln20_2_fu_1091_p1;
assign buff_C_2_we0 = buff_C_2_we0_local;
assign buff_C_3_address0 = zext_ln16_reg_1149;
assign buff_C_3_ce0 = buff_C_3_ce0_local;
assign buff_C_3_d0 = bitcast_ln20_3_fu_1110_p1;
assign buff_C_3_we0 = buff_C_3_we0_local;
assign buff_C_address0 = zext_ln16_reg_1149;
assign buff_C_ce0 = buff_C_ce0_local;
assign buff_C_d0 = bitcast_ln20_fu_1053_p1;
assign buff_C_we0 = buff_C_we0_local;
assign buff_D_out_1_address0 = zext_ln16_fu_959_p1;
assign buff_D_out_1_ce0 = buff_D_out_1_ce0_local;
assign buff_D_out_1_d0 = 32'd0;
assign buff_D_out_1_we0 = buff_D_out_1_we0_local;
assign buff_D_out_2_address0 = zext_ln16_fu_959_p1;
assign buff_D_out_2_ce0 = buff_D_out_2_ce0_local;
assign buff_D_out_2_d0 = 32'd0;
assign buff_D_out_2_we0 = buff_D_out_2_we0_local;
assign buff_D_out_3_address0 = zext_ln16_fu_959_p1;
assign buff_D_out_3_ce0 = buff_D_out_3_ce0_local;
assign buff_D_out_3_d0 = 32'd0;
assign buff_D_out_3_we0 = buff_D_out_3_we0_local;
assign buff_D_out_address0 = zext_ln16_fu_959_p1;
assign buff_D_out_ce0 = buff_D_out_ce0_local;
assign buff_D_out_d0 = 32'd0;
assign buff_D_out_we0 = buff_D_out_we0_local;
assign icmp_ln14_fu_880_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 11'd1024) ? 1'b1 : 1'b0);
assign lshr_ln5_1_fu_941_p4 = {{select_ln5_fu_917_p3[5:2]}};
assign select_ln14_fu_925_p3 = ((tmp_fu_909_p3[0:0] == 1'b1) ? add_ln14_fu_903_p2 : i_fu_166);
assign select_ln5_fu_917_p3 = ((tmp_fu_909_p3[0:0] == 1'b1) ? 7'd0 : j_fu_162);
assign tmp1_1_address0 = zext_ln16_fu_959_p1;
assign tmp1_1_ce0 = tmp1_1_ce0_local;
assign tmp1_1_d0 = 32'd0;
assign tmp1_1_we0 = tmp1_1_we0_local;
assign tmp1_2_address0 = zext_ln16_fu_959_p1;
assign tmp1_2_ce0 = tmp1_2_ce0_local;
assign tmp1_2_d0 = 32'd0;
assign tmp1_2_we0 = tmp1_2_we0_local;
assign tmp1_3_address0 = zext_ln16_fu_959_p1;
assign tmp1_3_ce0 = tmp1_3_ce0_local;
assign tmp1_3_d0 = 32'd0;
assign tmp1_3_we0 = tmp1_3_we0_local;
assign tmp1_address0 = zext_ln16_fu_959_p1;
assign tmp1_ce0 = tmp1_ce0_local;
assign tmp1_d0 = 32'd0;
assign tmp1_we0 = tmp1_we0_local;
assign tmp2_1_address0 = zext_ln16_fu_959_p1;
assign tmp2_1_ce0 = tmp2_1_ce0_local;
assign tmp2_1_d0 = 32'd0;
assign tmp2_1_we0 = tmp2_1_we0_local;
assign tmp2_2_address0 = zext_ln16_fu_959_p1;
assign tmp2_2_ce0 = tmp2_2_ce0_local;
assign tmp2_2_d0 = 32'd0;
assign tmp2_2_we0 = tmp2_2_we0_local;
assign tmp2_3_address0 = zext_ln16_fu_959_p1;
assign tmp2_3_ce0 = tmp2_3_ce0_local;
assign tmp2_3_d0 = 32'd0;
assign tmp2_3_we0 = tmp2_3_we0_local;
assign tmp2_address0 = zext_ln16_fu_959_p1;
assign tmp2_ce0 = tmp2_ce0_local;
assign tmp2_d0 = 32'd0;
assign tmp2_we0 = tmp2_we0_local;
assign tmp_3_fu_1013_p3 = {{tmp_2_reg_1225}, {lshr_ln5_1_reg_1144}};
assign tmp_fu_909_p3 = j_fu_162[32'd6];
assign tmp_s_fu_951_p3 = {{trunc_ln14_fu_933_p1}, {lshr_ln5_1_fu_941_p4}};
assign trunc_ln14_1_fu_937_p1 = select_ln14_fu_925_p3[1:0];
assign trunc_ln14_fu_933_p1 = select_ln14_fu_925_p3[5:0];
assign zext_ln16_fu_959_p1 = tmp_s_fu_951_p3;
assign zext_ln18_fu_1019_p1 = tmp_3_fu_1013_p3;
always @ (posedge ap_clk) begin
    zext_ln16_reg_1149[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
end
endmodule 
